#include "global.h"
#include "save.h"
#include "eeprom.h"
#include "util.h"
#include "structs/variables.h"

extern const u16 sEmptyEepromData[4];
extern const u8 sSaveFileString[9]; // "K_KLONOA"

// 46B6C
void LoadAllSaveData(void)
{
    // Called on boot, and exit to title screen
    u32 saveFile;
    u32 i;
    u32 j;
    u8 buf[9];

    saveFile = 0;
    buf[8] = '\0';

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    for (i = 0; i < 0x2F; i += 0x10, saveFile += 1)
    {
        ReadEepromDword(i, (u16 *) buf);
        if (StringCompare((u8 *) buf, (u8 *) sSaveFileString) != 0)
        {
            // If save string not found, clear save file
            for (j = i; j < i + 0xF; j++)
            {
                ProgramEepromDwordEx(j, (u16 *) sEmptyEepromData);
            }
            gSaveData->startedFile[saveFile] = 0;
            continue;
        }

        gSaveData->startedFile[saveFile] = 4;

        // Load saved data from EEPROM
        ReadEepromDword(i + 1, (u16 *) buf);
        gSaveData->lives[saveFile] = buf[0];
        gSaveData->world[saveFile] = buf[1];
        gSaveData->level[saveFile] = buf[2];
        gSaveData->sceneType[saveFile] = buf[3];
        gSaveData->unk20[saveFile] = buf[4];

        if (gSaveData->lives[saveFile] >= 100)
        {
            gSaveData->lives[saveFile] = 3;
        }

        ReadEepromDword(i + 6, (u16 *) buf);
        gSaveData->unk23[saveFile] = buf[0];

        ReadEepromDword(i + 0xC, (u16 *) buf);
        gSaveData->completedFile[saveFile] = buf[7];
    }

    // Update last loaded save file
    ReadEepromDword(0x30, (u16 *) buf);
    if (((gSaveData->startedFile[0] | gSaveData->startedFile[1] | gSaveData->startedFile[2]) != 0) && (buf[0] < 3))
    {
        gSaveData->lastLoadedSaveFile = buf[0];
    }
    else
    {
        gSaveData->lastLoadedSaveFile = 1;
        ProgramEepromDwordEx(0x30, (u16 *) &gSaveData->lastLoadedSaveFile);
    }

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;

    asm("nop");
    asm("nop");
    asm("nop");

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
}

// 46DB8
u16 WriteSaveFile(u32 arg0, u8 arg1)
{
    // Called when loading save file, and world/level/room/etc transitions
    u8 *var_r6;
    u8 *var_r4;
    u16 retval;
    u32 i;
    u32 j;

    i = 0;

    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    // Yes, they really used a goto loop instead of a while loop
    loop_1:
    if (arg0 == 0)
    {
        var_r4 = (u8*) gUnk_03005284;
        gUnk_03005284->unk3 = arg1;
        gUnk_03005284->addChecksum = gUnk_03005284->xorChecksum = 0;

        // update gUnk_03005284 checksum
        for (j = 0; j < OFFSET_OF(struct Unk_03005284, addChecksum); j++)
        {
            gUnk_03005284->addChecksum += var_r4[0];
            gUnk_03005284->xorChecksum ^= var_r4[0];
            var_r4 += 1;
        }

        // Save gUnk_03005284 to EEPROM addresses 1-5
        var_r4 = (u8*) gUnk_03005284;
        for (j = 1; j <= 5; j++)
        {
            retval = ProgramEepromDwordEx(gSaveData->currentSaveFileAddress + j, (u16 *) var_r4);
            var_r4 += 8;
        }
    }
    else
    {
        var_r6 = (u8*) gUnk_03004670;
        StringCopy((u8 *) gSaveData->saveFileString, (u8 *) sSaveFileString);
        ProgramEepromDwordEx(gSaveData->currentSaveFileAddress, (u16 *) gSaveData);
        gUnk_03004670->addChecksum = gUnk_03004670->xorChecksum = 0;

        // update gUnk_03004670 checksum
        for (j = 0; j < OFFSET_OF(struct Unk_03004670, addChecksum); j++)
        {
            gUnk_03004670->addChecksum += var_r6[0];
            gUnk_03004670->xorChecksum ^= var_r6[0];
            var_r6 += 1;
        }

        // Save gUnk_03004670 to EEPROM addresses 6-0xE
        var_r6 = (u8*) gUnk_03004670;
        for (j = 6; j <= 0xE; j++)
        {
            retval = ProgramEepromDwordEx(gSaveData->currentSaveFileAddress + j, (u16 *) var_r6);
            var_r6 += 8;
        }
    }

    if (retval != 0)
    {
        if (i++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;
    return retval;
}

// 46F6C
u16 LoadSaveFile(s32 arg0)
{
    // Called when loading save file
    u8 *var_r5;
    u8 *var_r5_2;
    u16 retval;
    u32 j;
    u32 i;
    u8 xorChecksum;
    u8 addChecksum;

    addChecksum = 0;
    xorChecksum = 0;
    i = 0;

    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    loop_1:
    if (arg0 == 0)
    {
        // Load EEPROM addresses 1-5 to gUnk_03005284
        var_r5 = (u8*) gUnk_03005284;
        for (j = 1; j <= 5; j++)
        {
            retval = ReadEepromDword(gSaveData->currentSaveFileAddress + j, (u16 *) var_r5);
            var_r5 += 8;
        }

        // calculate gUnk_03005284 checksum
        var_r5 = (u8*) gUnk_03005284;
        for (j = 0; j < OFFSET_OF(struct Unk_03005284, addChecksum); j++)
        {
            addChecksum += var_r5[0];
            xorChecksum ^= var_r5[0];
            var_r5 += 1;
        }

        // verify gUnk_03005284 checksum matches
        if ((addChecksum != gUnk_03005284->addChecksum) || (xorChecksum != gUnk_03005284->xorChecksum))
        {
            retval = 2;
        }

        if (gUnk_03005284->unk0 >= 100)
        {
            gUnk_03005284->unk0 = 3;
        }
    }
    else
    {
        var_r5_2 = (u8*) gUnk_03004670;
        ReadEepromDword(gSaveData->currentSaveFileAddress, (u16 *) gSaveData);
        if (StringCompare(gSaveData->saveFileString, (u8 *) sSaveFileString) != 0)
        {
            retval = 1;
        }
        else
        {
            // Load EEPROM addresses 6-0xE to gSaveData
            for (j = 6; j <= 0xE; j++)
            {
                retval = ReadEepromDword(gSaveData->currentSaveFileAddress + j, (u16 *) var_r5_2);
                var_r5_2 += 8;
            }

            // calculate gUnk_03004670 checksum
            var_r5_2 = (u8*) gUnk_03004670;
            for (j = 0; j < OFFSET_OF(struct Unk_03004670, addChecksum); j++)
            {
                addChecksum += var_r5_2[0];
                xorChecksum ^= var_r5_2[0];
                var_r5_2 += 1;
            }

            // verify gUnk_03004670 checksum matches
            if ((addChecksum != gUnk_03004670->addChecksum) || (xorChecksum != gUnk_03004670->xorChecksum))
            {
                retval = 2;
            }
        }
    }

    if (retval != 0)
    {
        if (i++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;
    return retval;
}

// 4713C
u16 DeleteAllSaveData(void)
{
    // Called when deleting all save data
    u16 retval;
    u32 j;
    u32 i;

    i = 0;

    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    loop_1:
    // Delete all data in EEPROM
    for (j = 0; j < 0x40; j++)
    {
        retval = ProgramEepromDwordEx(j, (u16 *) sEmptyEepromData);
    }

    if (retval != 0)
    {
        if (i++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;
    return retval;
}

// 471F4
void WriteCurrentSaveFile(void)
{
    // Called when loading save file
    gDma0CntHBackup = REG_DMA0CNT_H;
    gDma1CntHBackup = REG_DMA1CNT_H;
    gDma2CntHBackup = REG_DMA2CNT_H;
    gDma3CntHBackup = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    gSaveData->lastLoadedSaveFile = gSaveData->currentSaveFile;
    ProgramEepromDwordEx(0x30, (u16 *) &gSaveData->lastLoadedSaveFile);

    REG_DMA0CNT_H = gDma0CntHBackup;
    REG_DMA1CNT_H = gDma1CntHBackup;
    REG_DMA2CNT_H = gDma2CntHBackup;
    REG_DMA3CNT_H = gDma3CntHBackup;
}
