#include "global.h"
#include "code_08046B6C.h"
#include "eeprom.h"
#include "util.h"
#include "structs/variables.h"

extern u16 gUnk_08117688[4];
extern u8 gUnk_08117690[9]; // "K_KLONOA"

// 46B6C
void sub_08046B6C(void)
{
    u32 var_sb;
    u32 var_r4;
    u32 var_r5;
    u8 subroutine_arg0[9];

    var_sb = 0;
    subroutine_arg0[8] = 0;

    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    m4aSoundVSyncOff();

    gUnk_0300520C = REG_DMA0CNT_H;
    gUnk_03005208 = REG_DMA1CNT_H;
    gUnk_0300465C = REG_DMA2CNT_H;
    gUnk_030008E4 = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    for (var_r5 = 0; var_r5 < 0x2F; var_r5 += 0x10, var_sb += 1)
    {
        ReadEepromDword(var_r5, (u16 *) subroutine_arg0);
        if (StringCompare((u8 *) subroutine_arg0, gUnk_08117690) != 0)
        {
            for (var_r4 = var_r5; var_r4 < var_r5 + 0xF; var_r4++)
            {
                ProgramEepromDwordEx(var_r4, (u16 *) gUnk_08117688);
            }
            gUnk_030047FC->unk26[var_sb] = 0;
        }
        else
        {
            gUnk_030047FC->unk26[var_sb] = 4;

            ReadEepromDword(var_r5 + 1, (u16 *) subroutine_arg0);
            gUnk_030047FC->unk14[var_sb] = subroutine_arg0[0];
            gUnk_030047FC->unk17[var_sb] = subroutine_arg0[1];
            gUnk_030047FC->unk1A[var_sb] = subroutine_arg0[2];
            gUnk_030047FC->unk1D[var_sb] = subroutine_arg0[3];
            gUnk_030047FC->unk20[var_sb] = subroutine_arg0[4];

            if (gUnk_030047FC->unk14[var_sb] >= 100)
            {
                gUnk_030047FC->unk14[var_sb] = 3;
            }

            ReadEepromDword(var_r5 + 6, (u16 *) subroutine_arg0);
            gUnk_030047FC->unk23[var_sb] = subroutine_arg0[0];

            ReadEepromDword(var_r5 + 0xC, (u16 *) subroutine_arg0);
            gUnk_030047FC->unk29[var_sb] = subroutine_arg0[7];
        }
    }

    ReadEepromDword(0x30, (u16 *) subroutine_arg0);
    if (((gUnk_030047FC->unk26[0] | gUnk_030047FC->unk26[1] | gUnk_030047FC->unk26[2]) != 0) && (subroutine_arg0[0] < 3))
    {
        gUnk_030047FC->unk12 = subroutine_arg0[0];
    }
    else
    {
        gUnk_030047FC->unk12 = 1;
        ProgramEepromDwordEx(0x30, (u16 *) &gUnk_030047FC->unk12);
    }

    REG_DMA0CNT_H = gUnk_0300520C;
    REG_DMA1CNT_H = gUnk_03005208;
    REG_DMA2CNT_H = gUnk_0300465C;
    REG_DMA3CNT_H = gUnk_030008E4;

    asm("nop");
    asm("nop");
    asm("nop");

    REG_IE |= 1;
    REG_DISPSTAT |= 8;
    m4aSoundVSyncOn();
}

// 46DB8
u16 sub_08046DB8(u32 arg0, u8 arg1)
{
    u8 *var_r6;
    u8 *var_r4;
    u16 var_r2;
    u32 var_r7;
    u32 var_sb;

    var_sb = 0;

    gUnk_0300520C = REG_DMA0CNT_H;
    gUnk_03005208 = REG_DMA1CNT_H;
    gUnk_0300465C = REG_DMA2CNT_H;
    gUnk_030008E4 = REG_DMA3CNT_H;

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
        gUnk_03005284->unk20 = gUnk_03005284->unk21 = 0;

        for (var_r7 = 0; var_r7 < 0x20; var_r7++)
        {
            gUnk_03005284->unk20 += var_r4[0];
            gUnk_03005284->unk21 ^= var_r4[0];
            var_r4 += 1;
        }

        var_r4 = (u8*) gUnk_03005284;
        for (var_r7 = 1; var_r7 < 6; var_r7++)
        {
            var_r2 = ProgramEepromDwordEx(gUnk_030047FC->unk11 + var_r7, (u16 *) var_r4);
            var_r4 += 8;
        }
    }
    else
    {
        var_r6 = (u8*) gUnk_03004670;
        StringCopy(gUnk_030047FC->unk0, gUnk_08117690);
        ProgramEepromDwordEx(gUnk_030047FC->unk11, (u16 *) gUnk_030047FC);
        gUnk_03004670->unk3C = gUnk_03004670->unk3D = 0;

        
        for (var_r7 = 0; var_r7 < 0x3C; var_r7++)
        {
            gUnk_03004670->unk3C += var_r6[0];
            gUnk_03004670->unk3D ^= var_r6[0];
            var_r6 += 1;
        }

        var_r6 = (u8*) gUnk_03004670;
        for (var_r7 = 6; var_r7 <= 0xE; var_r7++)
        {
            var_r2 = ProgramEepromDwordEx(gUnk_030047FC->unk11 + var_r7, (u16 *) var_r6);
            var_r6 += 8;
        }
    }

    if (var_r2 != 0)
    {
        if (var_sb++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gUnk_0300520C;
    REG_DMA1CNT_H = gUnk_03005208;
    REG_DMA2CNT_H = gUnk_0300465C;
    REG_DMA3CNT_H = gUnk_030008E4;
    return var_r2;
}

// 46F6C
u16 sub_08046F6C(s32 arg0)
{
    u8 *var_r5;
    u8 *var_r5_2;
    u16 var_r2;
    u32 var_r4;
    u32 var_sb;
    u8 var_r7;
    u8 var_r8;

    var_r8 = 0;
    var_r7 = 0;
    var_sb = 0;

    gUnk_0300520C = REG_DMA0CNT_H;
    gUnk_03005208 = REG_DMA1CNT_H;
    gUnk_0300465C = REG_DMA2CNT_H;
    gUnk_030008E4 = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    loop_1:
    if (arg0 == 0)
    {
        var_r5 = (u8*) gUnk_03005284;
        for (var_r4 = 1; var_r4 < 6; var_r4++)
        {
            var_r2 = ReadEepromDword(gUnk_030047FC->unk11 + var_r4, (u16 *) var_r5);
            var_r5 += 8;
        }

        var_r5 = (u8*) gUnk_03005284;
        for (var_r4 = 0; var_r4 < 0x20; var_r4++)
        {
            var_r8 += var_r5[0];
            var_r7 ^= var_r5[0];
            var_r5 += 1;
        }

        if ((var_r8 != gUnk_03005284->unk20) || (var_r7 != gUnk_03005284->unk21))
        {
            var_r2 = 2;
        }

        if (gUnk_03005284->unk0 >= 100)
        {
            gUnk_03005284->unk0 = 3;
        }
    }
    else
    {
        var_r5_2 = (u8*) gUnk_03004670;
        ReadEepromDword((u16) gUnk_030047FC->unk11, (u16 *) gUnk_030047FC);
        if (StringCompare(gUnk_030047FC->unk0, gUnk_08117690) != 0)
        {
            var_r2 = 1;
        }
        else
        {
            for (var_r4 = 6; var_r4 < 0xF; var_r4++)
            {
                var_r2 = ReadEepromDword(gUnk_030047FC->unk11 + var_r4, (u16 *) var_r5_2);
                var_r5_2 += 8;
            }

            var_r5_2 = (u8*) gUnk_03004670;
            for (var_r4 = 0; var_r4 < 0x3C; var_r4++)
            {
                var_r8 += var_r5_2[0];
                var_r7 ^= var_r5_2[0];
                var_r5_2 += 1;
            }

            if ((var_r8 != gUnk_03004670->unk3C) || (var_r7 != gUnk_03004670->unk3D))
            {
                var_r2 = 2;
            }
        }
    }

    if (var_r2 != 0)
    {
        if (var_sb++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gUnk_0300520C;
    REG_DMA1CNT_H = gUnk_03005208;
    REG_DMA2CNT_H = gUnk_0300465C;
    REG_DMA3CNT_H = gUnk_030008E4;
    return var_r2;
}

// 4713C
u16 sub_0804713C(void)
{
    u16 temp_r2;
    u32 var_r4;
    u32 var_r7;

    var_r7 = 0;

    gUnk_0300520C = REG_DMA0CNT_H;
    gUnk_03005208 = REG_DMA1CNT_H;
    gUnk_0300465C = REG_DMA2CNT_H;
    gUnk_030008E4 = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    loop_1:
    for (var_r4 = 0; var_r4 < 0x40; var_r4++)
    {
        temp_r2 = ProgramEepromDwordEx(var_r4, gUnk_08117688);
    }

    if (temp_r2 != 0)
    {
        if (var_r7++ < 10)
        {
            goto loop_1;
        }
    }

    REG_DMA0CNT_H = gUnk_0300520C;
    REG_DMA1CNT_H = gUnk_03005208;
    REG_DMA2CNT_H = gUnk_0300465C;
    REG_DMA3CNT_H = gUnk_030008E4;
    return temp_r2;
}

// 471F4
void sub_080471F4(void)
{
    gUnk_0300520C = REG_DMA0CNT_H;
    gUnk_03005208 = REG_DMA1CNT_H;
    gUnk_0300465C = REG_DMA2CNT_H;
    gUnk_030008E4 = REG_DMA3CNT_H;

    REG_DMA0CNT_H &= ~DMA_ENABLE;
    REG_DMA1CNT_H &= ~DMA_ENABLE;
    REG_DMA2CNT_H &= ~DMA_ENABLE;
    REG_DMA3CNT_H &= ~DMA_ENABLE;

    gUnk_030047FC->unk12 = gUnk_030047FC->unk10;
    ProgramEepromDwordEx(0x30, (u16 *) &gUnk_030047FC->unk12);

    REG_DMA0CNT_H = gUnk_0300520C;
    REG_DMA1CNT_H = gUnk_03005208;
    REG_DMA2CNT_H = gUnk_0300465C;
    REG_DMA3CNT_H = gUnk_030008E4;
}
