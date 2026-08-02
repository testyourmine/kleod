#include "global.h"
#include "eeprom.h"

static const char EEPROM_V121[] = "EEPROM_V121";

extern const EepromConfig* gEepromConfig;

static u8 timer_No;
static u16 timer_Count;
static u8 timeoutFlag;
static vu16* timerReg;
static u16 shelt_ime;

const EepromConfig gEepromConfig4k = {
    .size = 0x200, // 1 << 6
    .nbrAddresses = 0x40, // 0x200 / 8
    .waitcnt = WAITCNT_WS2_N_8,
    .addressWidth = 6
};

const EepromConfig gEepromConfig64k = {
    .size = 0x2000, // 1 << 14
    .nbrAddresses = 0x400, // 0x2000 / 8
    .waitcnt = WAITCNT_WS2_N_8,
    .addressWidth = 14
};

const u16 gEepromTimerConfig[] = {
    0xA,                                            // timer_Count
    0xFFBD,                                         // TMCNT_L
    TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK // TMCNT_H
};

/**
 * @brief 5146C | Sets the EEPROM configuration
 * 
 * @param sizeInKbit The size of the EEPROM in kilobits
 * @return u16 bool, invalid size
 */
u16 IdentifyEeprom(u16 sizeInKbit)
{
    u16 ret;

    ret = 0;

    if (sizeInKbit == 4)
    {
        gEepromConfig = &gEepromConfig4k;
    }
    else if (sizeInKbit == 64)
    {
        gEepromConfig = &gEepromConfig64k;
    }
    else
    {
        gEepromConfig = &gEepromConfig4k;
        ret = 1;
    }

    return ret;
}

/**
 * @brief 514B0 | EEPROM timer interrupt
 * 
 */
/*static*/ void EepromTimerIntr(void)
{
    if (timer_Count != 0)
    {
        if (--timer_Count == 0)
        {
            timeoutFlag = 1;
        }
    }
}

/**
 * @brief 514D4 | Sets the EEPROM timer and the interrupt function
 * 
 * @param timerNo Timer number
 * @param timerPtr Pointer to timer interrupt address
 * @return u16 bool, invalid timer number
 */
u16 SetEepromTimerIntr(u8 timerNo, u32 *timerPtr)
{
    u16 ret;

    if (timerNo <= 3)
    {
        timer_No = timerNo;
        timerReg = (vu16*)&REG_TMCNT(timer_No);
        *timerPtr = (u32)EepromTimerIntr;
        ret = 0;
    }
    else
    {
        ret = 1;
    }

    return ret;
}

/**
 * @brief 5150C | Start the EEPROM timer
 * 
 * @param timerConfig Pointer to timer configuration values
 */
/*static*/ void StartEepromTimer(const u16* timerConfig)
{
    shelt_ime = REG_IME;

    REG_IME = 0;
    REG_IE |= (8 << timer_No);
    REG_IME = 1;

    timeoutFlag = 0;
    timer_Count = *timerConfig++;
    *timerReg++ = *timerConfig++;
    *timerReg-- = *timerConfig++;
    
}

/**
 * @brief 51570 | Stop the EEPROM timer
 * 
 */
/*static*/ void StopEepromTimer(void)
{
    *timerReg++ = 0;
    *timerReg-- = 0;

    REG_IME = 0;
    REG_IE &= ~(8 << timer_No);
    REG_IME = shelt_ime;
}

/**
 * @brief 515B4 | Send data using DMA3
 * 
 * @param src Source address
 * @param dest Destination address
 * @param size Size of data in halfwords
 */
/*static*/ void Dma3Transmit(void *src, void *dest, u16 size)
{
    u16 ime = REG_IME;
    REG_IME = 0;
    REG_WAITCNT = (REG_WAITCNT & ~(WAITCNT_WS2_N_MASK | WAITCNT_WS2_S_MASK)) | gEepromConfig->waitcnt;
    REG_DMA3SAD = (u32)src;
    REG_DMA3DAD = (u32)dest;
    REG_DMA3CNT = (DMA_ENABLE << 0x10) | size;
    while (REG_DMA3CNT_H & DMA_ENABLE);
    REG_IME = ime;
}

/**
 * @brief 51634 | Read 8 bytes from EEPROM
 * 
 * @param address EEPROM address
 * @param dest Destination address
 * @return u16 0 for success, else error
 */
u16 ReadEepromDword(u16 address, u16 *dest)
{
    u16 buffer[0x44];
    u16* ptr;
    u8* p;
    u8 t1;
    u8 t2;
    u16 value;

    if (address >= gEepromConfig->nbrAddresses)
        return EEPROM_OUT_OF_RANGE;

    ptr = buffer;
    // setup address
    p = (u8*)ptr;
    p += (gEepromConfig->addressWidth << 1) + 1;
    ptr = (u16*)p++;
    ptr = (u16*)p++;
    for (t1 = 0; t1 < gEepromConfig->addressWidth; t1++)
    {
        *(ptr--) = address;
        address >>= 1;
    }

    // read request
    *(ptr--) = 1;
    *ptr = 1;
    Dma3Transmit(&buffer, REG_ADDR_EEPROM, (gEepromConfig->addressWidth + 3));
    Dma3Transmit(REG_ADDR_EEPROM, &buffer, 0x44);

    // 4 bit junk
    ptr = buffer + 4;
    dest += 3;

    // copy data into output buffer
    for (t1 = 0; t1 < 4; t1++)
    {
        value = 0;
        for (t2 = 0; t2 < 0x10; t2++)
        {
            value <<= 1;
            value |= (*ptr++) & 1;
        }
        *(dest--) = value;
    }

    return 0;
}

/**
 * @brief 516EC | Write 8 bytes to EEPROM
 * 
 * @param address EEPROM address
 * @param src Source address
 * @return u16 0 for success, else error
 */
u16 ProgramEepromDword(u16 address, u16 *src)
{
    u16 buffer[0x52]; // this is one too large?
    u16 *ptr;
    u8 i;
    u8 j;
    u16 retval;

    if (address >= gEepromConfig->nbrAddresses)
        return EEPROM_OUT_OF_RANGE;
    
    // ugly ptr math required for OK
    ptr = (u16 *)(0x42 + (u32)&buffer + (u32)(gEepromConfig->addressWidth << 1) + 0x42);
    *(ptr)-- = 0;

    // copy data into buffer
    for (i = 0; i < 4; i++)
    {
        u16 r2 = *src++;
        for (j = 0; j < 16; j++)
        {
            *ptr-- = r2;
            r2 = r2 >> 1;
        }
    }

    // copy address to buffer
    for (i = 0; i < gEepromConfig->addressWidth; i++)
    {
        *ptr--= address;
        address = address >> 1;
    }
    *ptr-- = 0;
    *ptr-- = 1;

    Dma3Transmit(&buffer, REG_ADDR_EEPROM, (gEepromConfig->addressWidth + 0x43));
    StartEepromTimer(gEepromTimerConfig);

    retval = 0;

    while (1)
    {
        if (REG_EEPROM & 1)
        {
            break;
        }

        if (timeoutFlag)
        {
            if (!(REG_EEPROM & 1))
            {
                retval = EEPROM_WRITE_FAIL;
            }
            break;
        }
    }

    StopEepromTimer();
    return retval;
}

/**
 * @brief 517D0 | Verify that 8 bytes of data are consistent between EEPROM and source
 * 
 * @param address EEPROM address
 * @param src Source address
 * @return u16 0 for success, else error
 */
u16 VerifyEepromDword(u16 address, u16 *src)
{
    u16 buffer[4];
    u16 *ptr;
    u8 i;
    u16 retvar;

    retvar = 0;
    if (address >= gEepromConfig->nbrAddresses)
        return EEPROM_OUT_OF_RANGE;

    ReadEepromDword(address, buffer);
    ptr = buffer;
    for (i = 0; i < 4; i++)
    {
        if(*src++ != *ptr++)
        {
            retvar = EEPROM_VERIFY_FAIL;
            break;
        }
    }

    return retvar;
}

/**
 * @brief 51828 | Write 8 bytes to EEPROM and verify data is correct
 * 
 * @param address EEPROM address
 * @param src Source address
 * @return u16 0 for success, else error
 */
u16 ProgramEepromDwordEx(u16 address, u16 *src)
{
    u8 i;
    u16 retvar;

    for (i = 0; i < 3; i++)
    {
        retvar = ProgramEepromDword(address, src);
        if (retvar == 0)
        {
            retvar = VerifyEepromDword(address, src);
            if (retvar == 0)
                break;
        }
    }

    return retvar;
}
