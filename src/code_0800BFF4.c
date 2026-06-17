#include "global.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "main.h"
#include "math.h"
#include "rand.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

struct Unk_080D48C8 {
    u16 unk0;
    u16 unk2;
    u8 unk4_0:2;
    u8 unk4_2:6;
    u8 pad5[0x8 - 0x5];
};
extern struct Unk_080D48C8 gUnk_080D48C8[6][7][0x15];

struct Unk_080D6458 {
    u16 unk0;
    u16 unk2;
    u8 unk4_0:2;
    u8 pad5[0x8 - 0x5];
};
extern struct Unk_080D6458 gUnk_080D6458[6];

extern struct Unk_080D821C gUnk_080D821C[0xD];

struct Unk_080D89A8 {
    s32 unk0;
    s32 unk4;
};
extern struct Unk_080D89A8 gUnk_080D89A8[6][5];

extern struct Unk_0300542C *gUnk_0818B704[6][7];

extern void sub_080242C0();
extern void sub_08026374();
extern void sub_0803C808();
extern void sub_08046DB8(s32, s32);

extern void sub_08039D8C();
extern void sub_0803A410();
extern void sub_0803A8B8();
extern void sub_0803AAA0();

// BFF4
void sub_0800BFF4(void)
{
    sub_0800A49C();
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = (gUnk_03003430.bg0HOfs >> 2) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.bg0VOfs >> 5) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.bg1HOfs & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.bg1VOfs & 0x1FF;
    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// TODO: should be static variables inside sub_0800C108
extern u8 gUnk_03000000;
extern u8 gUnk_03000001;
extern u8 gUnk_03000002;
extern u8 gUnk_03000003;

// C108
void sub_0800C108(void)
{
    s8 sp0;
    s8 sp4;
    s32 temp_r0_2;
    s32 var_r3_2;
    s32 var_r8;
    s32 var_sb;
    u16 var_r2_2;
    u32 var_r5_2;
    u32 var_r6;
    u8 temp_r4;

    if (gUnk_03005400.unkE_1)
    {
        gUnk_03000001 = gUnk_03005400.unkD * 2;
        gUnk_03000003 = 0x20;
        gUnk_03005400.unkE_1 = 0;
    }

    if (gUnk_03005400.unkE_0)
    {
        gUnk_03000000 = gUnk_03005400.unkD * 2;
        gUnk_03000002 = 0x20;
        gUnk_03005400.unkE_0 = 0;
    }

    if (gUnk_03000000 != 0)
    {
        gUnk_03000002 += 0x20;
        gUnk_03000002 %= 0x100;
        if ((gUnk_03000002 % 0x80) == 0)
        {
            gUnk_03000000 -= 1;
        }
    }
    if (gUnk_03000001 != 0)
    {
        gUnk_03000003 += 0x20;
        gUnk_03000003 %= 0x100;
        if ((gUnk_03000003 % 0x80) == 0)
        {
            gUnk_03000001 -= 1;
        }
    }

    sp0 = ((s16)(gUnk_03000000 * gSineTable[gUnk_03000002]) >> 0x8) * 2;
    sp4 = ((s16)(-gUnk_03000001 * gSineTable[gUnk_03000003]) >> 0x8) * 2;
    sub_0800A71C(sp0, sp4);
    sub_080070A0();

    if (gUnk_03004C20.world == 0x5 || gUnk_03004C20.world == 0x6)
    {
        if ((gUnk_03003510.unk0[1] == &sub_0803A410) || (gUnk_03003510.unk0[0] == &sub_08039D8C) || (gUnk_03003510.unk0[1] == &sub_08039D8C) || (gUnk_03003510.unk0[1] == &sub_0803AAA0) || (gUnk_03003510.unk0[1] == &sub_0803A8B8))
        {
            if (gUnk_030034BC == 0)
            {
                var_sb = 0;
                var_r8 = 1;
            }
            else
            {
                var_sb = 1;
                var_r8 = 0;
            }
            temp_r4 = (8 - Abs(8 - gUnk_030051F0.unkE)) * 8;
            var_r5_2 = gUnk_030051F0.unk0;
        }
        else
        {
            var_sb = 1;
            var_r8 = 1;
            temp_r4 = (8 - Abs(8 - gUnk_03005498)) * 8;
            var_r5_2 = gUnk_03004C20.unk0;
        }

        for (var_r6 = 0; var_r6 < 0xA0; var_r6++)
        {
            if (var_r6 < 0x90)
            {
                temp_r0_2 = (temp_r4 * gSineTable[(u8)(var_r5_2 * 4 + var_r6 * 4) + 0x40]) >> 8;
                gUnk_03004C40[var_r6] = temp_r0_2 * var_sb;
                gUnk_030052C0[var_r6] = -temp_r0_2 * var_r8;
            }
            else
            {
                gUnk_03004C40[var_r6] = 0;
                gUnk_030052C0[var_r6] = 0;
            }
        }
    }

    var_r3_2 = gUnk_03003430.bg2HOfs;
    var_r2_2 = gUnk_03003430.bg2VOfs;
    if (gUnk_03004C20.world == 0x4 && gUnk_03004C20.level == 0x8)
    {
        var_r2_2 += 0x20;
    }
    gBg2X = (((var_r3_2 << 8) - (var_r3_2 * gBg2PA)) - (var_r2_2 * gBg2PB)) + ((gUnk_03003430.bg2HOfs + sp0) << 8);
    gBg2Y = (((var_r2_2 << 8) - (var_r3_2 * gBg2PC)) - (var_r2_2 * gBg2PD)) + ((gUnk_03003430.bg2VOfs + sp4) << 8);

    VBlankIntrWait();

    REG_BG0HOFS = (gUnk_03003430.bg0HOfs >> 4) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.bg0VOfs >> 7) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.bg1HOfs & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.bg1VOfs & 0x1FF;
    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// C45C
void sub_0800C45C(void)
{
    sub_080098C8();
    gUnk_03004678 = SIN(gBg2Alpha);
    gUnk_030051B0 = COS(gBg2Alpha);

    VBlankIntrWait();

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, 0, 0);

    REG_BG0HOFS = (gUnk_03003430.bg0HOfs >> 2) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.bg0VOfs >> 5) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.bg1HOfs & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.bg1VOfs & 0x1FF;

    REG_BG2PA = gBg2PA;
    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// C564
void sub_0800C564(void)
{
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = gUnk_03003430.bg0HOfs & 0x1FF;
    REG_BG0VOFS = gUnk_03003430.bg0VOfs & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.bg1HOfs & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.bg1VOfs & 0x1FF;
    REG_BG2HOFS = (gUnk_03003430.bg2HOfs >> 4) & 0x1FF;
    REG_BG2VOFS = (gUnk_03003430.bg2VOfs >> 4) & 0x1FF;
    REG_BG3HOFS = (gUnk_03003430.bg3HOfs >> 4) & 0x1FF;
    REG_BG3VOFS = (gUnk_03003430.bg3VOfs >> 4) & 0x1FF;

    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    gUnk_030034F8 = MultiplyQ8(SIN((gUnk_03004C20.unk0 * 0x10) & 0xFF), MultiplyQ8(0x200, SIN((gUnk_03004C20.unk0 * 4) & 0x7F)));
    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));

    gBg2X = ((gUnk_03003430.bg2HOfs * 0x10) - (gBg2PA * DISPLAY_WIDTH_CENTER)) - (gBg2PB * 0x78);
    gBg2Y = ((gUnk_03003430.bg2VOfs * 0x10) - (gBg2PC * 0x28)) - (gBg2PD * 0x28);

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// C7EC
void sub_0800C7EC(void)
{
    sub_0800A49C();
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = (gUnk_03003430.bg0HOfs >> 2) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.bg0VOfs >> 5) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.bg1HOfs & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.bg1VOfs & 0x1FF;
    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// C900
void sub_0800C900(void)
{
    VBlankIntrWait();

    REG_BG0HOFS = (gUnk_03003430.bg0HOfs >> 2) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.bg0VOfs >> 5) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.bg1HOfs & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.bg1VOfs & 0x1FF;
    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// CA0C
void sub_0800CA0C(u32 arg0)
{
    u32 var_r4;

    gUnk_03003508 = 3;
    gUnk_03004C20.unkB = 0;
    gUnk_03004C20.unkA = 0;

    for (var_r4 = 0; var_r4 < 0xD; var_r4++)
    {
        if ((gUnk_03004C20.world == gUnk_080D821C[var_r4].unk8) && (gUnk_03004C20.level == gUnk_080D821C[var_r4].unk9))
        {
            gUnk_03004D80 = &gUnk_080D821C[var_r4];
            gUnk_03004C20.unkA = 1;
            if (gUnk_03004C20.level != 8)
            {
                gUnk_03004C20.unkB = 1;
                gUnk_03003508 = 6;
            }
            break;
        }
    }

    gUnk_03000810 = 0;
    if (gUnk_03004C20.level == 8)
    {
        gUnk_03002920->xPosBg2 = gUnk_080D6458[gUnk_03004C20.world - 1].unk0;
        gUnk_03002920->yPosBg2 = gUnk_080D6458[gUnk_03004C20.world - 1].unk2;
        gUnk_03002920->unkC_2 = gUnk_080D6458[gUnk_03004C20.world - 1].unk4_0;
    }
    else
    {
        gUnk_03002920->xPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk0;
        gUnk_03002920->yPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk2;
        gUnk_03002920->unkC_2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk4_0;
    }

    if (arg0 == 0)
    {
        gUnk_03005284->unk6 = 0;
        gUnk_03005284->unk1 = gUnk_03004C20.world;
        gUnk_03005284->unk2 = gUnk_03004C20.level;
        gUnk_03005284->unk16 = 0;
        if (gUnk_03003410.unkA == 0)
        {
            sub_08046DB8(0, 1);
            sub_08046DB8(1, 0);
        }
        gUnk_03005220.unk0_2 = 0;
        gUnk_03005220.unk0_5 = 0;
        gUnk_03005220.unk0_0 = 3;
        gUnk_03005220.unk1_4 = 0;
        gUnk_03005220.unk14 = 0;
        gUnk_03005220.unk3_6 = gUnk_03005220.unk3_5 = 0;
        if ((gUnk_03004C20.unkB != 0) || ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3))))
        {
            gUnk_03005220.unk4 = gUnk_03005284->unk18;
        }
        else
        {
            gUnk_03005220.unk4 = 0;
        }
        gUnk_03005220.unk8 = 0;
        gUnk_03005220.unkC = 0;
        gUnk_03005220.unk2_7 = 0;
        gUnk_03005220.unk2E = 0;
        gUnk_03005220.unk58 = 0;
        gUnk_03005220.unk1_7 = 0;
        gUnk_03005220.unk60 = 0;
        gUnk_03005220.unk4F = 0;
        gUnk_03005220.unk4E = 0;
        gUnk_03005220.unk4D = 0;
        gUnk_03004C20.unk8 = 0;
        gUnk_03005220.unk1C = 0;
        gUnk_03005220.unk5E = 0;
    }

    if (arg0 == 1)
    {
        gUnk_03005220.unk4C = gUnk_03005284->unk0;
        gUnk_03005220.unk0_0 = gUnk_03005284->unk8_0;
        gUnk_03005220.unk0_2 = gUnk_03005284->unk8_2;
        gUnk_03005220.unk0_5 = gUnk_03005284->unk8_5;
        gUnk_03005220.unk1_4 = gUnk_03005284->unk9_4;
        gUnk_03005220.unk4 = gUnk_03005284->unk18;
        gUnk_03005220.unk2_7 = gUnk_03005284->unkA_7;
        gUnk_03005220.unk3_5 = gUnk_03005284->unkB_5;
        gUnk_03005220.unk3_6 = gUnk_03005284->unkB_6;
        gUnk_03005220.unk8 = gUnk_03005284->unkC;
        gUnk_03005220.unkC = gUnk_03005284->unk10;
        gUnk_03005220.unk14 = gUnk_03005284->unk14;
        gUnk_03005220.unk2E = gUnk_03005284->unk5;
        gUnk_03005220.unk58 = gUnk_03005284->unk7;
        // FAKE
        do
        {
            gUnk_03005220.unk1_7 = gUnk_03005284->unk9_7;
            gUnk_03004C20.unk8 = gUnk_03005284->unk16;
            gUnk_03005220.unk60 = 0;
            gUnk_03005220.unk4F = 0;
            gUnk_03005220.unk4E = 0;
            gUnk_03005220.unk4D = 0;
        }
        while(0);
    }
    else
    {
        gUnk_03005284->unk0 = gUnk_03005220.unk4C;
        gUnk_03005284->unk1 = gUnk_03004C20.world;
        gUnk_03005284->unk2 = gUnk_03004C20.level;
        gUnk_03005284->unk8_0 = gUnk_03005220.unk0_0;
        gUnk_03005284->unk16 = gUnk_03004C20.unk8;
        gUnk_03005284->unk8_2 = gUnk_03005220.unk0_2;
        gUnk_03005284->unk9_4 = gUnk_03005220.unk1_4;
        gUnk_03005284->unk14 = gUnk_03005220.unk14;
        gUnk_03005284->unkB_5 = gUnk_03005220.unk3_5;
        gUnk_03005284->unkB_6 = gUnk_03005220.unk3_6;
        gUnk_03005284->unk5 = gUnk_03005220.unk2E;
        gUnk_03005284->unk7 = gUnk_03005220.unk58;
        gUnk_03005284->unk9_7 = gUnk_03005220.unk1_7;
        gUnk_03005284->unk18 = gUnk_03005220.unk4;
        if (gUnk_03004C20.unkB == 0)
        {
            gUnk_03005284->unk8_5 = gUnk_03005220.unk0_5;
            gUnk_03005284->unkC = gUnk_03005220.unk8;
            gUnk_03005284->unk10 = gUnk_03005220.unkC;
            gUnk_03005284->unkA_7 = gUnk_03005220.unk2_7;
        }
        else
        {
            gUnk_03005284->unk8_5 = 0;
            gUnk_03005284->unkC = 0;
            gUnk_03005284->unk10 = 0;
            gUnk_03005284->unkA_7 = 0;
        }
    }

    if (gUnk_03003410.unkA == 0)
    {
        gUnk_03003510.unk28[0] = InputHandler_Normal;
    }
    else
    {
        gUnk_03003510.unk28[0] = InputHandler_AttractMode;
    }

    gUnk_03003410.unk5 = 0;
    gUnk_03003410.unk0 = 0;
    gUnk_03003410.unkB = 0;
    gUnk_030051E0 = 0;
    gUnk_030034C4 = 0xFE;
    gUnk_03003430.unk46 = 0;
    gUnk_03003430.unk44 = 0;

    if (gUnk_03004C20.level == 8)
    {
        gUnk_03003510.unk28[1] = sub_0803C808;
        gUnk_03003510.unk28[2] = sub_08002AC4;
        gUnk_03003510.unk34 = sub_0800AC34;
        gUnk_03003510.unk38 = sub_080242C0;
        gUnk_03003510.unk3C = (u32) sub_08026374;
        gUnk_03003510.unk40 = sub_0800C108;
        gUnk_03003510.unk44 = 1;
        gUnk_03003510.unk0[gUnk_03003510.unk78 - 1] = NULL;
        gUnk_03003510.unk79 = 8;
    }
    else
    {
        gUnk_03003510.unk28[1] = sub_0800A804;
        if (gUnk_03004C20.unkB == 1)
        {
            gUnk_03003510.unk28[2] = sub_080027C4;
        }
        else if (gUnk_03004C20.level == 6)
        {
            gUnk_03003510.unk28[2] = sub_0800247C;
        }
        else
        {
            gUnk_03003510.unk28[2] = sub_08001F58;
        }
        gUnk_03003510.unk34 = sub_080242C0;

        if (arg0 < 2)
        {
            if (gUnk_03003410.unkA == 0)
            {
                gUnk_03003510.unk38 = sub_08026374;
                gUnk_03003510.unk3C = (u32) sub_0800BFF4;
                gUnk_03003510.unk40 = (void (*)())1;
                gUnk_03003510.unk0[gUnk_03003510.unk78 - 1] = NULL;
                gUnk_03003510.unk79 = 7;
            }
            else
            {
                gUnk_03003510.unk38 = sub_0800BFF4;
                gUnk_03003510.unk3C = 1;
                gUnk_03003510.unk0[gUnk_03003510.unk78 - 1] = NULL;
                gUnk_03003510.unk79 = 6;
            }
        }
        else
        {
            gUnk_03003410.unk5 = 1;
            gUnk_03003510.unk38 = sub_0800BFF4;
            gUnk_03003510.unk3C = 1;
            gUnk_03003510.unk0[gUnk_03003510.unk78 - 1] = NULL;
            gUnk_03003510.unk79 = 6;
        }
        
    }
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.level == 6)
    {
        gUnk_030034E8.unk0 = gUnk_080D89A8[gUnk_03004C20.world - 1][gUnk_03004C20.room - 1].unk0;
        gUnk_030034E8.unk4 = gUnk_080D89A8[gUnk_03004C20.world - 1][gUnk_03004C20.room - 1].unk4;
        gUnk_030051B8 = 0;

        if (gUnk_030034E8.unk0 > 0)
        {
            gUnk_030051B8 = 0x10;
        }
        else if (gUnk_030034E8.unk0 < 0)
        {
            gUnk_030051B8 = 0x20;
        }

        if (gUnk_030034E8.unk4 > 0)
        {
            gUnk_030051B8 |= 0x80;
        }
        else if (gUnk_030034E8.unk4 < 0)
        {
            gUnk_030051B8 |= 0x40;
        }

        gUnk_03005480 = 0;
        gUnk_030007C0 = 0;
    }

    if ((gUnk_03004C20.world == 5) && (gUnk_03004C20.level == 2 || gUnk_03004C20.level == 3))
    {
        gUnk_03004C20.unk11 = 1;
    }
    else
    {
        gUnk_03004C20.unk11 = 0;
    }
    gUnk_0300542C = gUnk_0818B704[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1];
}

// D0C4
void sub_0800D0C4(void)
{
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = gUnk_03003430.bg0HOfs & 0x1FF;
    REG_BG0VOFS = gUnk_03003430.bg0VOfs & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.bg1HOfs & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.bg1VOfs & 0x1FF;
    REG_BG2HOFS = gUnk_03003430.bg2HOfs & 0x1FF;
    REG_BG2VOFS = gUnk_03003430.bg2VOfs & 0x1FF;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}
