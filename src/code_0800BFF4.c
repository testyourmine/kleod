#include "global.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "main.h"
#include "math.h"
#include "rand.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

void sub_0800BFF4(void)
{
    sub_0800A49C();
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = (gUnk_03003430.unk8 >> 2) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.unkA >> 5) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.unk24 & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.unk26 & 0x1FF;
    REG_BG2X_L = gUnk_030007FC;
    REG_BG2X_H = (gUnk_030007FC & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gUnk_030051D0;
    REG_BG2Y_H = (gUnk_030051D0 & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gUnk_030047B0;
    REG_BG2PB = gUnk_03005464;
    REG_BG2PC = gUnk_030051BC;
    REG_BG2PD = gUnk_03000808;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = (gUnk_030007D8 << 0xC) | (gUnk_030007D8 << 8) | (gUnk_030007D8 << 4) | gUnk_030007D8;

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

extern u8 gUnk_03000000;
extern u8 gUnk_03000001;
extern u8 gUnk_03000002;
extern u8 gUnk_03000003;

extern void sub_08039D8C();
extern void sub_0803A410();
extern void sub_0803A8B8();
extern void sub_0803AAA0();

// https://decomp.me/scratch/Q7319
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

    if (gUnk_03005400.unkE & 2)
    {
        gUnk_03000001 = gUnk_03005400.unkD * 2;
        gUnk_03000003 = 0x20;
        gUnk_03005400.unkE = (s8)gUnk_03005400.unkE & -3;
    }

    if (gUnk_03005400.unkE & 1)
    {
        gUnk_03000000 = gUnk_03005400.unkD * 2;
        gUnk_03000002 = 0x20;
        gUnk_03005400.unkE = (s8)gUnk_03005400.unkE & -2;
    }

    if (gUnk_03000000 != 0)
    {
        gUnk_03000002 += 0x20;
        gUnk_03000002 = gUnk_03000002;
        if (!(gUnk_03000002 & 0x7F))
        {
            gUnk_03000000 -= 1;
        }
    }
    if (gUnk_03000001 != 0)
    {
        gUnk_03000003 += 0x20;
        gUnk_03000003 = gUnk_03000003;
        if (!(gUnk_03000003 & 0x7F))
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

    var_r3_2 = gUnk_03003430.unk40;
    var_r2_2 = gUnk_03003430.unk42;
    if (gUnk_03004C20.world == 0x4 && gUnk_03004C20.level == 0x8)
    {
        var_r2_2 += 0x20;
    }
    gUnk_030007FC = (((var_r3_2 << 8) - (var_r3_2 * gUnk_030047B0)) - (var_r2_2 * gUnk_03005464)) + ((gUnk_03003430.unk40 + sp0) << 8);
    gUnk_030051D0 = (((var_r2_2 << 8) - (var_r3_2 * gUnk_030051BC)) - (var_r2_2 * gUnk_03000808)) + ((gUnk_03003430.unk42 + sp4) << 8);

    VBlankIntrWait();

    REG_BG0HOFS = (gUnk_03003430.unk8 >> 4) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.unkA >> 7) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.unk24 & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.unk26 & 0x1FF;
    REG_BG2X_L = gUnk_030007FC;
    REG_BG2X_H = (gUnk_030007FC & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gUnk_030051D0;
    REG_BG2Y_H = (gUnk_030051D0 & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gUnk_030047B0;
    REG_BG2PB = gUnk_03005464;
    REG_BG2PC = gUnk_030051BC;
    REG_BG2PD = gUnk_03000808;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = (gUnk_030007D8 << 0xC) | (gUnk_030007D8 << 8) | (gUnk_030007D8 << 4) | gUnk_030007D8;

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

void sub_0800C45C(void)
{
    sub_080098C8();
    gUnk_03004678 = gSineTable[gUnk_03002910];
    gUnk_030051B0 = gSineTable[gUnk_03002910 + 0x40];

    VBlankIntrWait();

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = (gUnk_030007D8 << 4) | gUnk_030007D8;

    REG_BG0HOFS = (gUnk_03003430.unk8 >> 2) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.unkA >> 5) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.unk24 & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.unk26 & 0x1FF;

    REG_BG2PA = gUnk_030047B0;
    REG_BG2PA = gUnk_030047B0;
    REG_BG2PB = gUnk_03005464;
    REG_BG2PC = gUnk_030051BC;
    REG_BG2PD = gUnk_03000808;

    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

void sub_0800C564(void)
{
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = gUnk_03003430.unk8 & 0x1FF;
    REG_BG0VOFS = gUnk_03003430.unkA & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.unk24 & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.unk26 & 0x1FF;
    REG_BG2HOFS = (gUnk_03003430.unk40 >> 4) & 0x1FF;
    REG_BG2VOFS = (gUnk_03003430.unk42 >> 4) & 0x1FF;
    REG_BG3HOFS = (gUnk_03003430.unk5C >> 4) & 0x1FF;
    REG_BG3VOFS = (gUnk_03003430.unk5E >> 4) & 0x1FF;

    REG_BG2X_L = gUnk_030007FC;
    REG_BG2X_H = (gUnk_030007FC & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gUnk_030051D0;
    REG_BG2Y_H = (gUnk_030051D0 & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gUnk_030047B0;
    REG_BG2PB = gUnk_03005464;
    REG_BG2PC = gUnk_030051BC;
    REG_BG2PD = gUnk_03000808;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = (gUnk_030007D8 << 0xC) | (gUnk_030007D8 << 8) | (gUnk_030007D8 * 0x10) | gUnk_030007D8;

    gUnk_030034F8 = MultiplyQ8(gSineTable[(gUnk_03004C20.unk0 * 0x10) & 0xFF], MultiplyQ8(0x200, gSineTable[(gUnk_03004C20.unk0 * 4) & 0x7F]));
    gUnk_030047B0 = MultiplyQ8(gSineTable[gUnk_03002910 + 0x40], ReciprocalQ8(gUnk_030034AC));
    gUnk_03005464 = MultiplyQ8(gSineTable[gUnk_03002910], ReciprocalQ8(gUnk_030034AC));
    gUnk_030051BC = MultiplyQ8(-gSineTable[gUnk_03002910], ReciprocalQ8(gUnk_03005420));
    gUnk_03000808 = MultiplyQ8(gSineTable[gUnk_03002910 + 0x40], ReciprocalQ8(gUnk_03005420));

    gUnk_030007FC = ((gUnk_03003430.unk40 * 0x10) - (gUnk_030047B0 * 0x78)) - (gUnk_03005464 * 0x78);
    gUnk_030051D0 = ((gUnk_03003430.unk42 * 0x10) - (gUnk_030051BC * 0x28)) - (gUnk_03000808 * 0x28);

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

void sub_0800C7EC(void)
{
    sub_0800A49C();
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = (gUnk_03003430.unk8 >> 2) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.unkA >> 5) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.unk24 & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.unk26 & 0x1FF;
    REG_BG2X_L = gUnk_030007FC;
    REG_BG2X_H = (gUnk_030007FC & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gUnk_030051D0;
    REG_BG2Y_H = (gUnk_030051D0 & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gUnk_030047B0;
    REG_BG2PB = gUnk_03005464;
    REG_BG2PC = gUnk_030051BC;
    REG_BG2PD = gUnk_03000808;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = (gUnk_030007D8 << 0xC) | (gUnk_030007D8 << 8) | (gUnk_030007D8 * 0x10) | gUnk_030007D8;

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

void sub_0800C900(void)
{
    VBlankIntrWait();

    REG_BG0HOFS = (gUnk_03003430.unk8 >> 2) & 0x1FF;
    REG_BG0VOFS = (gUnk_03003430.unkA >> 5) & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.unk24 & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.unk26 & 0x1FF;
    REG_BG2X_L = gUnk_030007FC;
    REG_BG2X_H = (gUnk_030007FC & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gUnk_030051D0;
    REG_BG2Y_H = (gUnk_030051D0 & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gUnk_030047B0;
    REG_BG2PB = gUnk_03005464;
    REG_BG2PC = gUnk_030051BC;
    REG_BG2PD = gUnk_03000808;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = (gUnk_030007D8 << 0xC) | (gUnk_030007D8 << 8) | (gUnk_030007D8 * 0x10) | gUnk_030007D8;

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

extern void sub_080242C0();
extern void sub_08026374();
extern void sub_0803C808();
extern void sub_08046DB8(s32, s32);

extern u8 gUnk_03000810;
extern u8 gUnk_030034C4;
extern u16 gUnk_03003508;
extern struct Unk_080D821C *gUnk_03004D80;
extern u16 gUnk_030051E0;

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
extern struct Unk_080D6458 gUnk_080D6458[];

struct Unk_080D821C {
    u8 pad0[0x8 - 0x0];
    u8 unk8;
    u8 unk9;
    u8 padA[0xC - 0xA];
};
extern struct Unk_080D821C gUnk_080D821C[];

struct Unk_080D89A8 {
    s32 unk0;
    s32 unk4;
};
extern struct Unk_080D89A8 gUnk_080D89A8[][5];
extern struct Unk_0300542C *gUnk_0818B704[][7];

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
        gUnk_03002920->unk0 = gUnk_080D6458[gUnk_03004C20.world - 1].unk0;
        gUnk_03002920->unk2 = gUnk_080D6458[gUnk_03004C20.world - 1].unk2;
        gUnk_03002920->unkC_2 = gUnk_080D6458[gUnk_03004C20.world - 1].unk4_0;
    }
    else
    {
        gUnk_03002920->unk0 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk0;
        gUnk_03002920->unk2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk2;
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
        gUnk_03004C20.pad11[0] = 1;
    }
    else
    {
        gUnk_03004C20.pad11[0] = 0;
    }
    gUnk_0300542C = gUnk_0818B704[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1];
}

void sub_0800D0C4(void)
{
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = gUnk_03003430.unk8 & 0x1FF;
    REG_BG0VOFS = gUnk_03003430.unkA & 0x1FF;
    REG_BG1HOFS = gUnk_03003430.unk24 & 0x1FF;
    REG_BG1VOFS = gUnk_03003430.unk26 & 0x1FF;
    REG_BG2HOFS = gUnk_03003430.unk40 & 0x1FF;
    REG_BG2VOFS = gUnk_03003430.unk42 & 0x1FF;

    REG_BLDALPHA = gUnk_03005498 | ((0x10 - gUnk_03005498) << 8);
    REG_BLDY = gUnk_03005498;
    REG_MOSAIC = (gUnk_030007D8 << 0xC) | (gUnk_030007D8 << 8) | (gUnk_030007D8 * 0x10) | gUnk_030007D8;

    thunk_UpdateRng();
    gUnk_03004C20.unk4 += 1;
    gUnk_03004C20.unk0 += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}
