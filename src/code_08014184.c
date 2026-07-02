#include "global.h"
#include "code_080240F4.h"
#include "math.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

extern u8 thunk_GetRandomValue();                          /* extern */
extern u8 thunk_GetRandomValueEx();                       /* extern */

extern void sub_080145A8(s32);
extern void sub_0801E664(u16, u16, u8, u8);
extern void sub_0801EAA4(u8);
extern void sub_08044F6C(u8);

struct Unk_080E2B64_0 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 pad7[0x8 - 0x7];
};
struct Unk_080E2B64 {
    struct Unk_080E2B64_0 unk0[5];
    u8 unk28;
    u8 unk29;
    u8 pad2A[0x2C - 0x2A];
};
extern struct Unk_080E2B64 gUnk_080E2B64[6][8][0x64];

struct Unk_080D90D0 {
    u8 unk0;
    s8 unk1_0:4;
    s8 unk1_4:4;
    u8 pad2[0x4 - 0x2];
};
extern struct Unk_080D90D0 gUnk_080D90D0[];

extern struct Unk_0300466C *gUnk_0818B8E0[6][9];

extern u8 gUnk_08061FC8[0x80];
extern u8 gUnk_080635E8[0x80];
extern u8 gUnk_080B9068[0x80];

struct Unk_08014184 {
    u16 unk0;
    u8 unk2;
    u8 pad3[0x4 - 0x3];
};

struct Unk_08014184 *sub_08014184(struct Unk_08014184 *arg0, u16 arg1, u16 arg2, u8 arg3)
{
    u32 var_r3;
    struct Unk_08014184 var_r4;

    for (var_r3 = gUnk_03004D80->unk2; var_r3 < gUnk_03004D80->unk0; var_r3++)
    {
        if ((arg2 >= gUnk_03004D80->unk4[var_r3].unk2) && (gUnk_03004D80->unk4[var_r3].unk6 >= (arg2 - arg3)) && (arg1 < (gUnk_03004D80->unk4[var_r3].unk0 + 3)) && ((gUnk_03004D80->unk4[var_r3].unk0 - 3) < arg1))
        {
            var_r4.unk0 = gUnk_03004D80->unk4[var_r3].unk0 - 3;
            var_r4.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
            *arg0 = var_r4;
            goto exit; // FAKE
            return arg0;
        }
    }

    var_r4.unk0 = -1;
    *arg0 = var_r4;
    exit:
    return arg0;
}

struct Unk_08014184 *sub_08014230(struct Unk_08014184 *arg0, u16 arg1, u16 arg2, u8 arg3)
{
    s32 temp_r1_2;
    struct Unk_08014184 var_r5;
    u32 var_r3;

    var_r5.unk0 = -1;

    for (var_r3 = 0; var_r3 < gUnk_03004D80->unk2; var_r3++)
    {
        if (gUnk_03004D80->unk4[var_r3].unk4 >= arg1)
        {
            if (arg1 >= gUnk_03004D80->unk4[var_r3].unk0)
            {
                if (gUnk_03004D80->unk4[var_r3].unk2 == gUnk_03004D80->unk4[var_r3].unk6)
                {
                    if (((arg2 - arg3) <= gUnk_03004D80->unk4[var_r3].unk2) && (gUnk_03004D80->unk4[var_r3].unk2 <= arg2))
                    {
                        var_r5.unk0 = gUnk_03004D80->unk4[var_r3].unk2;
                        var_r5.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
                        // Fake?
                        *arg0 = var_r5;
                        goto exit;
                        return arg0;
                    }
                    else
                    {
                        continue;
                    }
                }
                else
                {
                    temp_r1_2 = (((gUnk_03004D80->unk4[var_r3].unk6 - gUnk_03004D80->unk4[var_r3].unk2) * (arg1 - gUnk_03004D80->unk4[var_r3].unk0)) / (gUnk_03004D80->unk4[var_r3].unk4 - gUnk_03004D80->unk4[var_r3].unk0)) + gUnk_03004D80->unk4[var_r3].unk2;
                    if ((temp_r1_2 >= (arg2 - arg3)) && (temp_r1_2 <= (arg2 + 3)))
                    {
                        var_r5.unk0 = temp_r1_2;
                        var_r5.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
                    }
                    else
                    {
                        continue;
                    }
                }
            }

            *arg0 = var_r5;
            exit:
            return arg0;
        }
    }

    *arg0 = var_r5;
    return arg0;
}

/*
    ODDITY: this function matches in this file, but alone doesn't
    https://decomp.me/scratch/jnG3R
*/

#define	MAX(a,b) (((a) >= (b)) ? (a) : (b))

void sub_08014318(void)
{
    u8 var_r3;

    var_r3 = 0;
    if (gUnk_03005220.unk56 > 0)
    {
        var_r3 = gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 4) >> 3) * gBgInfo[2].hLength)];

        // var_r3 = (var_r3 < gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0xC) >> 3) * gBgInfo.unk48)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0xC) >> 3) * gBgInfo.unk48)]) : var_r3;
        // var_r3 = (var_r3 < gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x14) >> 3) * gBgInfo.unk48)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x14) >> 3) * gBgInfo.unk48)]) : var_r3;

        var_r3 = MAX(var_r3, gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0xC) >> 3) * gBgInfo[2].hLength)]);
        var_r3 = MAX(var_r3, gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x14) >> 3) * gBgInfo[2].hLength)]);
    }
    else if (gUnk_03005220.unk56 < 0)
    {
        var_r3 = gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 4) >> 3) * gBgInfo[2].hLength)];

        // var_r3 = (var_r3 < gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0xC) >> 3) * gBgInfo.unk48)]) ? (gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0xC) >> 3) * gBgInfo.unk48)]) : var_r3;
        // var_r3 = (var_r3 < gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x14) >> 3) * gBgInfo.unk48)]) ? (gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x14) >> 3) * gBgInfo.unk48)]) : var_r3;

        var_r3 = MAX(var_r3, gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0xC) >> 3) * gBgInfo[2].hLength)]);
        var_r3 = MAX(var_r3, gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x14) >> 3) * gBgInfo[2].hLength)]);
    }

    if (gUnk_03005220.unk57 != 0)
    {
        // var_r3 = (var_r3 < gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x1A) >> 3) * gBgInfo.unk48)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x1A) >> 3) * gBgInfo.unk48)]) : var_r3;
        // var_r3 = (var_r3 < gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 4) >> 3) * gBgInfo.unk48)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 4) >> 3) * gBgInfo.unk48)]) : var_r3;

        var_r3 = MAX(var_r3, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + gUnk_03005220.unk56) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x1A) >> 3) * gBgInfo[2].hLength)]);
        var_r3 = MAX(var_r3, gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 4) >> 3) * gBgInfo[2].hLength)]);
    }

    if (var_r3 < gUnk_03004654[0x1A])
    {
        gEntityInfo[0].xPosBg2 += gUnk_03005220.unk56;
        gEntityInfo[0].yPosBg2 += gUnk_03005220.unk57;
        gEntityInfo[0].unkB_0 = gEntityInfo[gUnk_03005220.unk3F].unkB_0;
        gEntityInfo[0].unkB_4 = gEntityInfo[gUnk_03005220.unk3F].unkB_4;
        return;
    }

    gUnk_03005220.unk57 = 0;
    gUnk_03005220.unk56 = 0;
    gUnk_03005220.unk3F = 0;
    sub_080145A8(1);
    if ((gUnk_03005220.unk34 | gUnk_03005220.unk39) != 0)
    {
        sub_08025B78(0, 0);
        gUnk_03005220.unk39 = 0;
        gUnk_03005220.unk34 = 0;
    }
}

void sub_080144C4(void)
{
    sub_080145A8(1);

    // Can also use pointer to gUnk_03005220 to match
    // gEntityInfo[0xA].unk10 = 0;
    // gEntityInfo[0x9].unk10 = 0;
    // gUnk_03005220.unk5D = 0;
    gUnk_03005220.unk5D = gEntityInfo[0x9].unk10 = gEntityInfo[0xA].unk10 = 0;
    gUnk_03005220.unk47 = 0;
    gUnk_03005220.unk46 = 0;
    gUnk_03005220.unk38 = 0;
    gUnk_03005220.unk43 = 0;
    gUnk_03005220.unk42 = 0;
    gUnk_03005220.unk48 = 0;
    gUnk_03005220.unk49 = 0;
    gUnk_03005220.unk4A = 0;
    gUnk_03005220.unk4B = 0;
    gUnk_03005220.unk59 = 0;
    gUnk_03005220.unk39 = 0;
    gUnk_03005220.unk5A = 0;
    gUnk_03005220.unk53 = 0;
    gUnk_03005220.unk3B = 0;
    gUnk_03005220.unk3A = 0;
    gUnk_03005220.unk45 = 0;
    gUnk_03005220.unk37 = 0;
    gUnk_03005220.unk36 = 0;
    gUnk_03005220.unk35 = 0;
    gUnk_03005220.unk34 = 0;
    gUnk_03005220.unk31 = 0;
    gUnk_03005220.unk30 = 0;
    gUnk_03005220.unk33 = 0;
    gUnk_03005220.unk41 = 0;
    gUnk_03005220.unk40 = 0;
    gUnk_03005220.unk3F = 0;
    gUnk_03005220.unk3E = 0;
    gUnk_03005220.unk3C = 0;
    gUnk_03005220.unk55 = 0;
    gUnk_03005220.unk54 = 0;
    gUnk_03005220.unk57 = 0;
    gUnk_03005220.unk56 = 0;
    gUnk_03005220.unk2C = 0;
    gUnk_03005220.unk2A = 0;
    gUnk_03005220.unk28 = 0;
    gUnk_03005220.unk26 = 0;
    gUnk_03005220.unk5C = 1;
    gUnk_03005220.unk3D = 1;
    gEntityInfo[0].unk10 = 1;
    gUnk_03005220.unk16 = 0x230;
    gUnk_03005220.unk18 = 0;
    gEntityInfo[0].affineEnable = 0;

    sub_08025B78(0, 0);
}

void sub_080145A8(s32 arg0)
{
    if (gUnk_03003410.unkB == 0)
    {
        if (gUnk_03004C20.level != 8)
        {
            if (gEntityInfo[gUnk_03005220.unk42].affineEnable != 0)
            {
                gEntityInfo[gUnk_03005220.unk42].affineEnable = 0;
            }
        }

        gUnk_03005220.unk38 = 0;
        gUnk_03005220.unk43 = 0;
        gUnk_03005220.unk42 = 0;

        if ((arg0 == 1) && (gEntityAnimationInfo->state >= 0x16))
        {
            sub_08025B78(0, gEntityAnimationInfo->state - 0x16);
        }
    }
}

void sub_08014624(s32 arg0)
{
    if ((gUnk_03005220.unk46 | gUnk_03003410.unkB | gUnk_030034E4) != 0)
    {
        return;
    }

    gUnk_03005220.unk5B = 0;
    if (arg0 == 1)
    {
        gUnk_03005220.hearts -= 1;
        sub_08025DD4();
        gUnk_03005220.unk5B = 1;
    }

    if (gUnk_03005220.hearts == 0)
    {
        m4aSongNumStart(0x27);

        gUnk_03005220.unk46 = 0x46;
        gEntityInfo[0x9].unk10 = 0;
        gEntityInfo[0xA].unk10 = 0;
        gUnk_03005220.unk57 = 0;
        gUnk_03005220.unk56 = 0;
        gUnk_03005220.unk3F = 0;
        gUnk_03005220.unk3B = 0;
        gUnk_03005220.unk3A = 0;
        gUnk_03005220.unk39 = 0;
        gUnk_03005220.unk34 = 0;

        if (gUnk_03005220.unk42 != 0)
        {
            if ((gEntityInfo[gUnk_03005220.unk42].unk11 != 0x6F) && (gEntityInfo[gUnk_03005220.unk42].unk11 != 0x25))
            {
                sub_0801E664(gEntityInfo[gUnk_03005220.unk42].xPosBg2, gEntityInfo[gUnk_03005220.unk42].yPosBg2, 2, gUnk_03005220.unk42);
            }
        }

        gUnk_03005220.unk38 = 0;
        gUnk_03005220.unk43 = 0;
        gUnk_03005220.unk42 = 0;
    }
    else
    {
        m4aSongNumStart(0x25);
        gUnk_03005220.unk3C = 0;
        sub_08025B78(0, 0xC);
    }

    gUnk_03005220.unk1C = 0;
    gUnk_03005220.unk3E = 0x87;
    if (gUnk_03005220.unk3D > 1)
    {
        gUnk_03005220.unk3D = 1;
        m4aSongNumStart(0x8E);
    }

    gUnk_03005220.unk44 = gEntityInfo[0].unkC_2;
    gUnk_03005220.unk3C = 0;
    gUnk_03005220.unk26 = 0;
    gUnk_03005220.unk28 = 0;
}

extern void gUnk_08062148;
extern void gUnk_080B9368;

void sub_08014760(u8 arg0)
{
    u16 sp0;
    u16 sp4;
    u16 sp8;
    s32 temp_r1_52;
    s32 var_r4_2;
    s32 var_r5_2;
    u32 var_r6;
    s32 var_r7_3;
    u8 temp_r0_93;
    u8 temp_r0_94;
    u8 var_r7;

    sp0 = gEntityInfo[arg0].xPosBg2;
    sp4 = gEntityInfo[arg0].yPosBg2;

    switch (gEntityInfo[arg0].unkF)
    {
        case 0:
        case 1:
            if (gEntityInfo[arg0].unk12 == 0)
            {
                gEntityInfo[arg0].yPosBg2 += 2;
            }
            else
            {
                gEntityInfo[arg0].yPosBg2 += 1;
            }

            gEntityInfo[arg0].unk17 = 1;

            var_r7 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 + 6) >> 3) + ((s32) (gEntityInfo[arg0].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength];

            var_r7 = MAX(var_r7, gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >> 3) + ((s32) (gEntityInfo[arg0].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength]);

            if ((gUnk_03004654[0x18] <= var_r7) && (gEntityInfo[arg0].unkF == 0))
            {
                gEntityInfo[arg0].unk17 = 0;
                if (gEntityInfo[arg0].unk12 == 0)
                {
                    gEntityInfo[arg0].yPosBg2 = sp4 + 3;
                    gEntityInfo[arg0].yPosBg2 &= 0xFFF8;
                }
                else
                {
                    gEntityInfo[arg0].yPosBg2 = sp4;
                }

                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk57 = 0;
                    gUnk_03005220.unk56 = 0;
                }
            }
            else
            {
                sp8 = gEntityInfo[arg0].yPosBg2;
                for (var_r6 = gUnk_03003630; var_r6 <= gUnk_03004674; var_r6++)
                {
                    if (gEntityInfo[var_r6].unkF > 0x1A)
                    {

                    }
                    else if (gEntityInfo[var_r6].unkF == 0x19)
                    {

                    }
                    else
                    {
                        switch (gEntityInfo[var_r6].unk11 - 6)
                        {
                            case 0x1F:
                            case 0x69:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0x10) >= (gEntityInfo[var_r6].xPosBg2 + 7))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 8) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 7) - 0x16))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x18))
                                        {

                                        }
                                        else if (arg0 != var_r6)
                                        {
                                            if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[var_r6].yPosBg2 - 0x18) + 4))
                                            {
                                                sp8 = gEntityInfo[var_r6].yPosBg2 + -0x18;
                                            }
                                            gEntityInfo[arg0].unkF = 0;
                                            gEntityInfo[arg0].unk17 = 0;
                                        }
                                    }
                                }
                                break;

                            case 0x0:
                            case 0x2:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x18))
                                        {

                                        }
                                        else if ((s32) gEntityInfo[arg0].yPosBg2 >= (s32) ((gEntityInfo[var_r6].yPosBg2 - 0x18) + 5))
                                        {

                                        }
                                        else
                                        {
                                            sp8 = gEntityInfo[var_r6].yPosBg2 + -0x17;
                                            gEntityInfo[arg0].unk17 = 0;
                                        }
                                    }
                                }
                                break;

                            case 0x3B:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0x10))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x10) - 0x20))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x20))
                                    {

                                    }
                                    else
                                    {
                                        if (gEntityAnimationInfo[var_r6 - gUnk_0300363C].state == 0)
                                        {
                                            sp8 = gEntityInfo[var_r6].yPosBg2 - 0x21;
                                            gEntityInfo[arg0].unk17 = 0;
                                        }
                                    }
                                }
                                break;

                            case 0x6B:
                            case 0x6C:
                                if (gEntityInfo[var_r6 + 1].unk8.split.unk8 != 0)
                                    break;
                            /* fallthrough */
                            case 0x6D:
                            case 0x6E:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2))
                                {
                                    if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2))
                                    {
                                        if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                        {
                                            if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x10))
                                            {

                                            }
                                            else if (((s32) (sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((s32) (sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) && ((s32) (sp4 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                                            {

                                            }
                                            else
                                            {
                                                sub_0801EAA4(var_r6);
                                            }
                                        }
                                    }
                                }
                                break;

                            case 0x39:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x18))
                                    {

                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 + -0x10;
                                        gEntityInfo[arg0].unk17 = 0;
                                        sub_08025B78(var_r6, 2);
                                        gUnk_03003610[1].unk2 = arg0;
                                        gUnk_03003610[1].unk3 = var_r6;
                                    }
                                }
                                break;

                            case 0x21:
                            case 0x22:
                            case 0x23:
                            case 0x24:
                            case 0x25:
                                if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x11)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x11) - 0x22)) && ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[var_r6].yPosBg2 - 0x10) + 3))
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 + -0x10;
                                        gEntityInfo[arg0].unk17 = 0;
                                        gEntityInfo[arg0].unk12 = 0;
                                        // if (gEntityInfo[var_r6].unk11 == 0x29 || gEntityInfo[var_r6].unk11 == 0x2A)
                                        if (gEntityInfo[var_r6].unk11 >= 0x29 && gEntityInfo[var_r6].unk11 <= 0x2A)
                                        {
                                            if (((s32) gEntityInfo[var_r6].unk8.split.unk8 < (s32) (gEntityInfo[var_r6].unk8.split.unk9 - 0xA)) && (gEntityInfo[var_r6].unk8.split.unk8 != 0))
                                            {
                                                if (gEntityInfo[var_r6].unkC_4 == 0)
                                                {
                                                    gEntityInfo[arg0].xPosBg2 += 1;
                                                    if (gUnk_03005220.unk3F == arg0)
                                                    {
                                                        gUnk_03005220.unk56 = 1;
                                                    }
                                                }
                                                else
                                                {
                                                    gEntityInfo[arg0].xPosBg2 -= 1;
                                                    if (gUnk_03005220.unk3F == arg0)
                                                    {
                                                        gUnk_03005220.unk56 = -1;
                                                    }
                                                }
                                            }
                                            else if (gUnk_03005220.unk3F == arg0)
                                            {
                                                gUnk_03005220.unk56 = 0;
                                            }
                                        }
                                        if (gEntityInfo[var_r6].unk11 == 0x2B)
                                        {
                                            gEntityInfo[arg0].unkF = 0;
                                        }
                                        else
                                        {
                                            gEntityInfo[arg0].unkF = 1;
                                            gEntityInfo[arg0].unk18 = var_r6;
                                        }
                                    }
                                }
                                else
                                {
                                    if (gEntityInfo[arg0].unkF != 1)
                                    {

                                    }
                                    else if (gEntityInfo[arg0].unk18 != var_r6)
                                    {

                                    }
                                    else
                                    {
                                        gEntityInfo[arg0].unkF = 0;
                                    }
                                }
                                break;

                            case 0x30:
                            case 0x6F:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (s32) (gEntityInfo[var_r6].xPosBg2 + 3))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) (gEntityInfo[var_r6].xPosBg2 - 3))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (gEntityInfo[var_r6].yPosBg2 - 0xC))
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[var_r6].yPosBg2 - 0xC) - 8))
                                    {

                                    }
                                    else
                                    {
                                        if (gEntityInfo[var_r6].unkC_4 == 3)
                                        {
                                            gEntityInfo[arg0].unkF = 0x10;
                                        }
                                        else if (gEntityInfo[var_r6].unkC_4 == 1)
                                        {
                                            gEntityInfo[arg0].unkF = 0x11;
                                        }
                                        else if (gEntityInfo[var_r6].unkC_4 == 0)
                                        {
                                            gEntityInfo[arg0].unkF = 0xF;
                                        }
                                        else
                                        {
                                            gEntityInfo[arg0].unkF = 0xE;
                                        }
                                        m4aSongNumStart(0xA1);
                                    }
                                }
                                break;

                            case 0x32:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0x20))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x20) - 0x40))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1B))
                                        {
                                            sp8 = (gEntityInfo[var_r6].yPosBg2 - 0x1B) - - 3;
                                            gEntityInfo[arg0].unkF = 1;
                                            gEntityInfo[arg0].unk18 = var_r6;
                                            gEntityInfo[arg0].unk17 = 0;
                                        }
                                    }
                                }
                                break;

                            case 0x38:
                                if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18)))
                                {
                                    if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[var_r6].yPosBg2 - 8)))
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 + -0x8;
                                        gEntityInfo[arg0].unkF = 1;
                                        gEntityInfo[arg0].unk18 = var_r6;
                                        gEntityInfo[arg0].unk17 = 0;
                                    }
                                }
                                break;

                            case 0x2F:
                            case 0x6A:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF))
                                {
                                    if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF))
                                    {
                                        if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                        {
                                            if (((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)) && (((s32) (sp0 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xF)) || ((s32) (sp0 + 7) <= (gEntityInfo[var_r6].xPosBg2 - 0xF)) || ((s32) (sp4 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2) || (sp4 <= (gEntityInfo[var_r6].yPosBg2 - 0x20))))
                                            {
                                                sp8 = gEntityInfo[var_r6].yPosBg2 + -0x20;
                                                gEntityInfo[arg0].unkF = 0;
                                                gEntityInfo[arg0].unk17 = 0;
                                            }
                                        }
                                    }
                                }
                                break;
                        }
                    }
                }

                gEntityInfo[arg0].yPosBg2 = sp8;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk57 = gEntityInfo[arg0].yPosBg2 - sp4;
                }

                if (sp4 != gEntityInfo[arg0].yPosBg2)
                {
                    if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[0].xPosBg2 + 0xC) - 0x18)))
                    {
                        if ((s32) (gEntityInfo[arg0].yPosBg2 - 4) < (s32) (gEntityInfo[0].yPosBg2 - 0x14))
                        {
                            if (((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[0].yPosBg2 - 0x18)) && (gUnk_03005220.unk39 == 0) && (gEntityInfo[arg0].unk12 == 0) && (gEntityInfo[arg0].unkF != 1))
                            {
                                gEntityInfo[arg0].yPosBg2 = gEntityInfo[0].yPosBg2 - 0x18;
                                gEntityInfo[arg0].unk17 = 0;
                            }
                        }
                    }
                }
            }
            break;

        case 19:
            if (Abs((gEntityInfo[0].xPosBg2) - (gEntityInfo[arg0].xPosBg2 - 4)) <= 7)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0].xPosBg2 + 4;
                if (Abs((gEntityInfo[0].yPosBg2 - gEntityInfo[arg0].yPosBg2) - 0x18) <= 7)
                {
                    gUnk_03005220.unk43 = 1;
                    gUnk_03005220.unk55 = 0;
                    gUnk_03005220.unk54 = 0;
                    gEntityInfo[arg0].yPosBg2 = gEntityInfo[0].yPosBg2 - 0x18;
                }
                else
                {
                    gEntityInfo[arg0].yPosBg2 = gEntityInfo[arg0].yPosBg2 + ((s32) ((gEntityInfo[0].yPosBg2 - 0x18) - gEntityInfo[arg0].yPosBg2) >> 1);
                }
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[arg0].xPosBg2 + ((s32) ((gEntityInfo[0].xPosBg2) - (gEntityInfo[arg0].xPosBg2 - 4)) >> 2);
            }

            if (gUnk_03005220.unk43 == 0)
            {
                gUnk_03005220.unk54 += gEntityInfo[arg0].xPosBg2 - sp0;
                gUnk_03005220.unk55 += gEntityInfo[arg0].yPosBg2 - sp4;

                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 + 6) >> 3) + (((s32) ((u16) gEntityInfo[arg0].yPosBg2 - 0x1E) >> 3) * gBgInfo[2].hLength)];

                var_r7 = MAX(var_r7, gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >> 3) + (((s32) ((u16) gEntityInfo[arg0].yPosBg2 - 0x1E) >> 3) * gBgInfo[2].hLength)]);

                for (var_r6 = gUnk_03003634; var_r6 <= gUnk_03005430; var_r6++)
                {
                    if (gEntityInfo[var_r6].unkF > 0x1A)
                    {

                    }
                    else if (gEntityInfo[var_r6].unkF == 0x19)
                    {

                    }
                    else
                    {
                        switch (gEntityInfo[var_r6].unk11 - 6)
                        {
                            case 0x1F:
                            case 0x69:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 7))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 7) - 0x16))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x18))
                                    {

                                    }
                                    else if (arg0 == var_r6)
                                    {

                                    }
                                    else
                                    {
                                        var_r7 = gUnk_03004654[0x1A];
                                    }
                                }
                                break;

                            case 0x0:
                            case 0x2:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) (gEntityInfo[arg0].yPosBg2 - 8) <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x18))
                                    {

                                    }
                                    else
                                    {
                                        var_r7 = gUnk_03004654[0x1A];
                                    }
                                }
                                break;

                            case 0x21:
                            case 0x23:
                            case 0x24:
                            case 0x25:
                                if (((gEntityInfo[arg0].xPosBg2 - 0x12) < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 0x12) + 0x1C) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x10) - 0x20)))
                                {
                                    if (((gEntityInfo[arg0].yPosBg2 - 0x1A) < (gEntityInfo[var_r6].yPosBg2 + 8)) && ((s32) ((gEntityInfo[arg0].yPosBg2 - 0x1A) + 0x12) > (s32) ((gEntityInfo[var_r6].yPosBg2 + 8) - 0x18)))
                                    {
                                        var_r7 = gUnk_03004654[0x1A];
                                    }
                                }
                                break;

                            case 0x38:
                                if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18)))
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6 + 1].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 8))
                                        {
                                            var_r7 = gUnk_03004654[0x1A];
                                        }
                                    }
                                }
                                break;

                            case 0x39:
                                if (gUnk_03003610[1].unk2 == arg0)
                                {
                                    sub_08025B78(var_r6, 0);
                                    gUnk_03003610[1].unk2 = 0;
                                }
                                break;

                            case 0x2F:
                            case 0x6A:
                                if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xF) - 0x1E)))
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20))
                                        {
                                            var_r7 = gUnk_03004654[0x1A];
                                        }
                                    }
                                }
                                break;
                        }
                    }
                }

                if (gUnk_03004654[0x1A] <= var_r7)
                {
                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 9, 0);
                    gEntityInfo[arg0].xPosBg2 -= gUnk_03005220.unk54;
                    gEntityInfo[arg0].yPosBg2 -= gUnk_03005220.unk55;
                    gUnk_03005220.unk55 = 0;
                    gUnk_03005220.unk54 = 0;
                    gEntityInfo[arg0].unkF = 0;
                    m4aSongNumStart(0xA4);
                    sub_080145A8(1);

                    if ((gUnk_03000824 != 0) && (gUnk_03005424 != 0))
                    {
                        for (var_r6 = gUnk_03000824; var_r6 <= gUnk_03005424; var_r6++)
                        {
                            if (gEntityInfo[var_r6].unkF <= 0x1A)
                            {
                                if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x20)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x20) - 0x40)))
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1B))
                                        {
                                            gEntityInfo[arg0].yPosBg2 = gEntityInfo[var_r6].yPosBg2 - 0x1B;
                                            gEntityInfo[arg0].yPosBg2 = gEntityInfo[arg0].yPosBg2 + 3;
                                            gEntityInfo[arg0].unkF = 1;
                                            gEntityInfo[arg0].unk18 = var_r6;
                                            gEntityInfo[arg0].unk17 = 0;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            break;

        case 16:
        case 17:
            if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[0].xPosBg2 + 0xC) - 0x18)))
            {
                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[0].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[0].yPosBg2 - 0x14)))
                {
                    if (gEntityInfo[arg0].unk16 == 0)
                    {
                        gEntityInfo[arg0].unkF = 0;
                        m4aSongNumStart(0x9D);
                        break;
                    }
                    goto block_240;
                }
            }
            if (gEntityInfo[arg0].unk16 != 0)
            {
                gEntityInfo[arg0].unk16 -= 1;
            }
        case 21:
        case 22:
block_240:
            if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
            {
                if (gEntityInfo[arg0].unkF == 0x10)
                {
                    sp8 = 2;
                }
                else
                {
                    sp8 = 3;
                }
                gEntityInfo[arg0].xPosBg2 += sp8;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk56 = sp8;
                    gUnk_03005220.unk57 = 0;
                }
                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 8) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];

                var_r7 = MAX(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 8) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)]);

                var_r7 = MAX(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 8) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 0x1C) >> 3) * gBgInfo[2].hLength)]);
            }
            else
            {
                if (gEntityInfo[arg0].unkF == 0x11)
                {
                    sp8 = 2;
                }
                else
                {
                    sp8 = 3;
                }
                gEntityInfo[arg0].xPosBg2 -= sp8;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk56 = -sp8;
                    gUnk_03005220.unk57 = 0;
                }
                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0x10) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];

                var_r7 = MAX(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0x10) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)]);

                var_r7 = MAX(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0x10) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 0x1C) >> 3) * gBgInfo[2].hLength)]);
            }

            if (((u32) gUnk_03004654[0x18] <= (u32) var_r7) || (((u32) gUnk_03004654[0x1] <= (u32) var_r7) && ((u32) gUnk_03004654[0x14] >= (u32) var_r7) && (gUnk_03004C20.unk11 == 0)))
            {
                gEntityInfo[arg0].xPosBg2 = sp0;
                if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                {
                    gEntityInfo[arg0].xPosBg2 = (sp0 + 4) & ~7;
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 = sp0 & ~7;
                }
                gEntityInfo[arg0].unkF = 0;
                m4aSongNumStart(0x9D);
                break;
            }

            sp8 = gEntityInfo[arg0].xPosBg2;

            for (var_r6 = gUnk_030034D8; var_r6 <= gUnk_0300541C; var_r6++)
            {
                if ((gEntityInfo[var_r6].unkF <= 0x1A) && (gEntityInfo[var_r6].unkF != 0x19))
                {
                    switch (gEntityInfo[var_r6].unk11 - 5)
                    {
                        case 0x20:
                        case 0x6A:
                            if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 7)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 7) - 0x16)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[var_r6].yPosBg2 - 0x18)) && (arg0 != var_r6))
                                {
                                    if (gEntityInfo[arg0].unkF == 21 || gEntityInfo[arg0].unkF == 16)
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 - 0x18;
                                    }
                                    else if (gEntityInfo[arg0].unkF == 22 || gEntityInfo[arg0].unkF == 17)
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x18;
                                    }
                                    gEntityInfo[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                }
                            }
                            break;

                        case 0x1:
                        case 0x3:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC))
                            {
                                if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC))
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18))
                                        {
                                            if ((s32) gEntityInfo[arg0].yPosBg2 < ((gEntityInfo[var_r6].yPosBg2 - 0x18) + 2))
                                            {
                                                gEntityInfo[arg0].yPosBg2 = ((gEntityInfo[var_r6].yPosBg2 - 0x18) + 2) - 3;
                                            }
                                            else
                                            {
                                                if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                                                {
                                                    if ((s32) (gEntityInfo[arg0].xPosBg2 + 4) <= (gEntityInfo[var_r6].xPosBg2 - 0xC))
                                                    {
                                                        sp8 = gEntityInfo[var_r6].xPosBg2 + -0x14;
                                                        gEntityInfo[arg0].unkF = 0;
                                                        m4aSongNumStart(0x9D);
                                                    }
                                                }
                                                else if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xC) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                                                {
                                                    sp8 = gEntityInfo[var_r6].xPosBg2 + 0x1C;
                                                    gEntityInfo[arg0].unkF = 0;
                                                    m4aSongNumStart(0x9D);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x3C:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x10) - 0x20))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x20))
                                {

                                }
                                else if (gEntityAnimationInfo[var_r6 - gUnk_0300363C].state != 0)
                                {

                                }
                                else
                                {
                                    if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + -0x18;
                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x20;
                                    }
                                    gEntityInfo[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                    break;
                                }
                            }
                            break;

                        case 0x6C:
                        case 0x6D:
                            if (gEntityInfo[var_r6 + 1].unk8.split.unk8 != 0)
                            {
                                break;
                            }
                            /* fallthrough */
                        case 0x6E:
                        case 0x6F:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 2))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (gEntityInfo[var_r6].xPosBg2 - 2))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x10))
                                        {

                                        }
                                        else if (((s32) (sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((s32) (sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) && ((s32) (sp4 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                                        {

                                        }
                                        else
                                        {
                                            sub_0801EAA4(var_r6);
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x37:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 8))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (gEntityInfo[var_r6].xPosBg2 - 8))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x20))
                                        {

                                        }
                                        else if (((s32) (sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 8)) && ((s32) (sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 8)) && ((s32) (sp4 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                                        {

                                        }
                                        else
                                        {
                                            if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                                            {
                                                sp8 = gEntityInfo[var_r6].xPosBg2 - 0x10;
                                            }
                                            else
                                            {
                                                sp8 = gEntityInfo[var_r6].xPosBg2 + 0x18;
                                            }
                                            gEntityInfo[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                            break;
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x0:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x10) - 0x20))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x20))
                                {

                                }
                                else
                                {
                                    if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 - 0x18;
                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x20;
                                    }
                                    gEntityInfo[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                }
                            }
                            break;

                        case 0x36:
                            if (gEntityInfo[var_r6].unkC_2 == 1)
                            {
                                var_r7_3 = 8;
                            }
                            else
                            {
                                var_r7_3 = 0;
                            }
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (s32) (gEntityInfo[var_r6].xPosBg2 + var_r7_3))
                            {
                                goto block_379;
                            }
                            if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 - 8) + var_r7_3))
                            {
                                goto block_379;
                            }
                            if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                            {
                                goto block_379;
                            }
                            if ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[var_r6].yPosBg2 - 0x20))
                            {
                                if (gEntityInfo[var_r6].unkC_4 == 0)
                                {
                                    if (((gEntityInfo[arg0].unkF == 0x15) && (gEntityInfo[var_r6].unkC_2 == 0)) || ((gEntityInfo[arg0].unkF == 0x16) && (gEntityInfo[var_r6].unkC_2 == 1)))
                                    {
                                        DmaCopy16(3, &gUnk_080B9368, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_r6 - 0xD].tileNum << 5), 0x100);
                                        gEntityInfo[var_r6].unkC_4 = 1;
                                        m4aSongNumStart(0x7D);
                                    }
                                    else
                                    {
                                        if (gEntityInfo[arg0].unkF == 0x15)
                                        {
                                            sp8 = gEntityInfo[var_r6].xPosBg2 + -0x8;
                                        }
                                        else
                                        {
                                            sp8 = gEntityInfo[var_r6].xPosBg2 + 0x10;
                                        }
                                        gEntityInfo[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                    }
                                }
                            }
                            else
                            {
block_379:
                                if (gEntityInfo[var_r6].unkC_4 != 1)
                                {

                                }
                                else if (gUnk_03005220.unk3_7 != 0)
                                {

                                }
                                else
                                {
                                    DmaCopy16(3, &gUnk_08062148, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_r6 - 0xD].tileNum << 5), 0x100);
                                    gEntityInfo[var_r6].unkC_4 = 0;
                                }
                            }
                            break;

                        case 0x3A:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x18))
                                {

                                }
                                else if (gEntityAnimationInfo[var_r6 - gUnk_0300363C].state != 0)
                                {

                                }
                                else
                                {
                                    if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + -0x14;
                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x1C;
                                    }
                                    gEntityInfo[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                }
                            }
                            break;

                        case 0x22:
                        case 0x23:
                        case 0x24:
                        case 0x25:
                        case 0x26:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x10) - 0x20))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x10))
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 < (s32) (gEntityInfo[var_r6].yPosBg2 - 0xA))
                                    {
                                        gEntityInfo[arg0].yPosBg2 = gEntityInfo[var_r6].yPosBg2 - 0x10;
                                    }
                                    else
                                    {
                                        if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x16) > (s32) gEntityInfo[var_r6].yPosBg2)
                                        {
                                            gEntityInfo[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                        }
                                        else
                                        {
                                            if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                                            {
                                                sp8 = gEntityInfo[var_r6].xPosBg2 + -0x18;
                                            }
                                            else
                                            {
                                                sp8 = gEntityInfo[var_r6].xPosBg2 + 0x20;
                                            }
                                            gEntityInfo[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x31:
                        case 0x70:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (s32) (gEntityInfo[var_r6].xPosBg2 + 3))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) (gEntityInfo[var_r6].xPosBg2 - 3))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (gEntityInfo[var_r6].yPosBg2 - 0xC))
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[var_r6].yPosBg2 - 0xC) - 8))
                                {

                                }
                                else
                                {
                                    if (gEntityInfo[var_r6].unkC_4 == 3)
                                    {
                                        gEntityInfo[arg0].unkF = 0x10;
                                    }
                                    else if (gEntityInfo[var_r6].unkC_4 == 1)
                                    {
                                        gEntityInfo[arg0].unkF = 0x11;
                                    }
                                    else if (gEntityInfo[var_r6].unkC_4 == 0)
                                    {
                                        gEntityInfo[arg0].unkF = 0xF;
                                    }
                                    else
                                    {
                                        gEntityInfo[arg0].unkF = 0xE;
                                    }
                                    m4aSongNumStart(0xA1);
                                }
                            }
                            break;

                        case 0x39:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6 + 1].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 8))
                                {

                                }
                                else
                                {
                                    if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0xFFEC;
                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x1C;
                                    }
                                    gEntityInfo[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                }
                            }
                            break;

                        case 0x30:
                        case 0x6B:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF))
                            {
                                if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF))
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if (((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)) && (((s32) (sp0 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xF)) || ((s32) (sp0 + 7) <= (gEntityInfo[var_r6].xPosBg2 - 0xF)) || ((s32) (sp4 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2) || (sp4 <= (gEntityInfo[var_r6].yPosBg2 - 0x20))))
                                        {
                                            if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                                            {
                                                sp8 = gEntityInfo[var_r6].xPosBg2 + -0x18;
                                            }
                                            else
                                            {
                                                sp8 = gEntityInfo[var_r6].xPosBg2 + 0x20;
                                            }
                                            gEntityInfo[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                        }
                                    }
                                }
                            }
                            break;
                    }
                }
            }

            gEntityInfo[arg0].xPosBg2 = sp8;
            break;

        case 15:
            if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[0].xPosBg2 + 0xC) - 0x18)))
            {
                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (gEntityInfo[0].yPosBg2 - 0x10))
                {
                    if ((s32) gEntityInfo[arg0].yPosBg2 > ((gEntityInfo[0].yPosBg2 - 0x10) - 0xB))
                    {
                        gEntityInfo[arg0].yPosBg2 = ((gEntityInfo[0].yPosBg2 - 0x10) - 0xB) - -3;
                        gEntityInfo[arg0].unkF = 0;
                        m4aSongNumStart(0x9D);
                        break;
                    }
                }
            }
        case 14:
        case 23:
            gEntityInfo[arg0].unk16 = 0;
            if (gEntityInfo[arg0].unkF == 0xE)
            {
                gEntityInfo[arg0].yPosBg2 -= 2;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk57 = -2;
                    gUnk_03005220.unk56 = 0;
                }
                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 + 6) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x18) >> 3) * gBgInfo[2].hLength)];

                var_r7 = MAX(var_r7, gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x18) >> 3) * gBgInfo[2].hLength)]);
            }
            else
            {
                if (gEntityInfo[arg0].unkF == 0xF)
                {
                    sp8 = 2;
                }
                else
                {
                    if (gEntityInfo[arg0].unk12 == 0)
                    {
                        sp8 = 3;
                    }
                    else
                    {
                        sp8 = 1;
                    }
                }
                gEntityInfo[arg0].yPosBg2 += sp8;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk57 = sp8;
                    gUnk_03005220.unk56 = 0;
                }
                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 + 6) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)];

                var_r7 = MAX(var_r7, gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)]);
            }

            if (((u32) gUnk_03004654[0x18] <= (u32) var_r7) || (((u32) gUnk_03004654[0x1] <= (u32) var_r7) && ((u32) gUnk_03004654[0x14] >= (u32) var_r7) && (gUnk_03004C20.unk11 == 0)))
            {
                if ((gUnk_03000824 != 0) && (gUnk_03005424 != 0))
                {
                    for (var_r6 = gUnk_03000824; var_r6 <= gUnk_03005424; var_r6++)
                    {
                        if (!(((u32) gEntityInfo[var_r6].unkF > 0x1A) || ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0x20)) || ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x20) - 0x40)) || ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2) || ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x1B))))
                        {
                            gEntityInfo[arg0].yPosBg2 = gEntityInfo[var_r6].yPosBg2 - 0x18;
                            gEntityInfo[arg0].unkF = 1;
                            gEntityInfo[arg0].unk18 = var_r6;
                            return;
                        }
                    }
                }
                gEntityInfo[arg0].yPosBg2 = sp4 + 3;
                gEntityInfo[arg0].yPosBg2 = gEntityInfo[arg0].yPosBg2 & 0xFFF8;
                gEntityInfo[arg0].unkF = 0;
                m4aSongNumStart(0x9D);
                if (gUnk_03005220.unk3F == arg0)
                {
                    gEntityInfo[gUnk_03005220.unk3F].yPosBg2 += 3;
                }
            }
            else
            {
                sp8 = gEntityInfo[arg0].yPosBg2;

                for (var_r6 = gUnk_03003630; var_r6 <= gUnk_03004674; var_r6++)
                {
                    if (gEntityInfo[var_r6].unkF > 0x1A)
                    {

                    }
                    else if (gEntityInfo[var_r6].unkF == 0x19)
                    {

                    }
                    else
                    {
                        switch (gEntityInfo[var_r6].unk11 - 6)
                        {
                            case 0x1F:
                            case 0x69:
                                if ((gEntityInfo[arg0].xPosBg2 - 0x10) >= (gEntityInfo[var_r6].xPosBg2 + 7))
                                {

                                }
                                else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 0x10) + 0x18) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 7) - 0x16))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x1B))
                                    {

                                    }
                                    else if (arg0 == var_r6)
                                    {

                                    }
                                    else
                                    {
                                        if (gEntityInfo[arg0].unkF == 0xE)
                                        {
                                            sp8 = gEntityInfo[var_r6].yPosBg2 + 0x18;
                                        }
                                        else
                                        {
                                            sp8 = gEntityInfo[var_r6].yPosBg2 - 0x18;
                                        }
                                        gEntityInfo[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                    }
                                }
                                break;

                            case 0x0:
                            case 0x2:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x1B))
                                    {

                                    }
                                    else
                                    {
                                        if (gEntityInfo[arg0].unkF == 0xE)
                                        {
                                            sp8 = gEntityInfo[var_r6].yPosBg2 + 0x18;
                                        }
                                        else
                                        {
                                            sp8 = gEntityInfo[var_r6].yPosBg2 + -0x17;
                                        }
                                        gEntityInfo[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                    }
                                }
                                break;

                            case 0x3B:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0x10))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x10) - 0x20))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x20))
                                        {

                                        }
                                        else if (gEntityAnimationInfo[var_r6 - gUnk_0300363C].state != 0)
                                        {

                                        }
                                        else
                                        {
                                            if (gEntityInfo[arg0].unkF == 0xE)
                                            {
                                                sp8 = gEntityInfo[var_r6].yPosBg2 + 0x20;
                                            }
                                            else
                                            {
                                                sp8 = gEntityInfo[var_r6].yPosBg2 - 0x20;
                                            }
                                            gEntityInfo[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                        }
                                    }
                                }
                                break;

                            case 0x6B:
                            case 0x6C:
                                if (gEntityInfo[var_r6 + 1].unk8.split.unk8 != 0)
                                {

                                }
                                else
                                {
                                case 0x6D:
                                case 0x6E:
                                    if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 2))
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (gEntityInfo[var_r6].xPosBg2 - 2))
                                        {

                                        }
                                        else
                                        {
                                            if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                            {

                                            }
                                            else
                                            {
                                                if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x10))
                                                {

                                                }
                                                else if (((s32) (sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((s32) (sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) && ((s32) (sp4 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                                                {

                                                }
                                                else
                                                {
                                                    sub_0801EAA4(var_r6);
                                                }
                                            }
                                        }
                                    }
                                }
                                break;

                            case 0x39:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[var_r6].yPosBg2 - 0x19))
                                    {

                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 + -0x10;
                                        gEntityInfo[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                        sub_08025B78(var_r6, 2);
                                        gUnk_03003610[1].unk2 = arg0;
                                    }
                                }
                                break;

                            case 0x21:
                            case 0x22:
                            case 0x23:
                            case 0x24:
                            case 0x25:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0x10))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x10) - 0x20))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_r6].yPosBg2)
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x10))
                                        {

                                        }
                                        else
                                        {
                                            if ((s32) gEntityInfo[arg0].yPosBg2 > ((gEntityInfo[var_r6].yPosBg2 - 0x10) + 4))
                                            {

                                            }
                                            else
                                            {
                                                sp8 = ((gEntityInfo[var_r6].yPosBg2 - 0x10) + 4) - 5;
                                                m4aSongNumStart(0x9D);
                                                gEntityInfo[arg0].unkF = 1;
                                                gEntityInfo[arg0].unk18 = var_r6;
                                            }
                                        }
                                    }
                                }
                                break;

                            case 0x30:
                            case 0x6F:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (s32) (gEntityInfo[var_r6].xPosBg2 + 3))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) (gEntityInfo[var_r6].xPosBg2 - 3))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (gEntityInfo[var_r6].yPosBg2 - 0xC))
                                    {

                                    }
                                    else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[var_r6].yPosBg2 - 0xC) - 8))
                                    {

                                    }
                                    else
                                    {
                                        if (gEntityInfo[var_r6].unkC_4 == 3)
                                        {
                                            gEntityInfo[arg0].unkF = 0x10;
                                        }
                                        else if (gEntityInfo[var_r6].unkC_4 == 1)
                                        {
                                            gEntityInfo[arg0].unkF = 0x11;
                                        }
                                        else if (gEntityInfo[var_r6].unkC_4 == 0)
                                        {
                                            gEntityInfo[arg0].unkF = 0xF;
                                        }
                                        else
                                        {
                                            gEntityInfo[arg0].unkF = 0xE;
                                        }
                                        m4aSongNumStart(0xA1);
                                    }
                                }
                                break;

                            case 0x38:
                                if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18))
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 8))
                                        {
                                            sp8 = (gEntityInfo[var_r6].yPosBg2 - 8) - 1;
                                            m4aSongNumStart(0x9D);
                                            // if (gEntityInfo[var_r6].unk11 == 0x29 || gEntityInfo[var_r6].unk11 == 0x2A)
                                            if (gEntityInfo[var_r6].unk11 >= 0x29 && gEntityInfo[var_r6].unk11 <= 0x2A)
                                            {
                                                gEntityInfo[arg0].unkF = 0;
                                            }
                                            else
                                            {
                                                gEntityInfo[arg0].unkF = 1;
                                                gEntityInfo[arg0].unk18 = var_r6;
                                            }
                                        }
                                    }
                                }
                                break;

                            case 0x32:
                                if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x20)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0x20) - 0x40)))
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2)
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1D))
                                        {
                                            sp8 = (gEntityInfo[var_r6].yPosBg2 - 0x1D) - -4;
                                            gEntityInfo[arg0].unkF = 1;
                                            gEntityInfo[arg0].unk18 = var_r6;
                                        }
                                    }
                                }
                                break;

                            case 0x2F:
                            case 0x6A:
                                if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r6].xPosBg2 + 0xF) - 0x1E)))
                                {
                                    if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_r6].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 + -0x20;
                                        gEntityInfo[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                    }
                                }
                                break;
                        }
                    }
                }
                gEntityInfo[arg0].yPosBg2 = sp8;
            }
            break;

        case 27:
            if (!(gUnk_03004C20.globalFrameCounter & 7))
            {
                temp_r1_52 = 0x46 - gEntityInfo[arg0].unk8.split.unk9;
                var_r5_2 = 0;
                var_r4_2 = 0;
                if (gEntityInfo[arg0].unk8.split.unk8 == 2)
                {
                    sp0 = gEntityInfo[arg0].xPosBg2 - 4;
                    sp4 = gEntityInfo[arg0].yPosBg2 - temp_r1_52;
                    var_r5_2 = 5;
                }
                else if (gEntityInfo[arg0].unk8.split.unk8 == 3)
                {
                    sp0 = gEntityInfo[arg0].xPosBg2;
                    sp4 = gEntityInfo[arg0].yPosBg2 + temp_r1_52;
                    var_r5_2 = 5;
                }
                else if (gEntityInfo[arg0].unk8.split.unk8 == 4)
                {
                    sp0 = gEntityInfo[arg0].xPosBg2 + temp_r1_52;
                    sp4 = gEntityInfo[arg0].yPosBg2;
                    var_r4_2 = 5;
                }
                else if (gEntityInfo[arg0].unk8.split.unk8 == 5)
                {
                    sp0 = gEntityInfo[arg0].xPosBg2 - temp_r1_52;
                    sp4 = gEntityInfo[arg0].yPosBg2;
                    var_r4_2 = 5;
                }
                sub_0801E664(sp0 - var_r4_2, (sp4 - var_r5_2) + 4, 6, 0);
                sub_0801E664(sp0 + var_r4_2, sp4 + var_r5_2 + 4, 6, 0);
            }
            gEntityInfo[arg0].unk8.split.unk9 -= 1;
            if (gEntityInfo[arg0].unk8.split.unk9 == 0)
            {
                gEntityInfo[arg0].unkF = 0x1C;
            }
            break;

        case 11:
        case 12:
        case 13:
            sp4 = 0;
            temp_r0_93 = gEntityInfo[arg0].unkF;
            sp0 = 0xC;
            if (temp_r0_93 != 0xB)
            {
                sp0 = -0xC;
                if (temp_r0_93 != 0xC)
                {
                    sp0 = 0;
                    sp4 = 0x14;
                }
            }
            if (((s32) (u16) ((sp0 + gEntityInfo[arg0].xPosBg2) - 0xF) >= (s32) (gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].xPosBg2 + 7)) || ((s32) (u16) ((sp0 + gEntityInfo[arg0].xPosBg2) + 7) <= (s32) (gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].xPosBg2 - 0xF)) || ((u32) (u16) ((sp4 + gEntityInfo[arg0].yPosBg2) - 0x18) >= (u32) gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].yPosBg2) || ((s32) (u16) ((gEntityInfo[arg0].yPosBg2 + sp4) + 0) <= (s32) (gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].yPosBg2 - 0x18)))
            {
                gEntityInfo[arg0].unkF = 0;
            }
            break;

        case 7:
        case 8:
        case 9:
            sp4 = 0;
            temp_r0_94 = gEntityInfo[arg0].unkF;
            sp0 = 0xC;
            if (temp_r0_94 != 8)
            {
                sp0 = -0xC;
                if (temp_r0_94 != 9)
                {
                    sp0 = 0;
                    sp4 = 0xFFE8;
                }
            }
            if (((s32) (u16) ((sp0 + gEntityInfo[arg0].xPosBg2) - 0xE) >= (s32) (gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].xPosBg2 + 7)) || ((s32) (u16) ((sp0 + gEntityInfo[arg0].xPosBg2) + 6) <= (s32) (gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].xPosBg2 - 0xF)) || ((u32) (u16) ((sp4 + gEntityInfo[arg0].yPosBg2) - 0x17) >= (u32) gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].yPosBg2) || ((s32) (u16) ((sp4 + gEntityInfo[arg0].yPosBg2) - 1) <= (s32) (gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].yPosBg2 - 0x18)))
            {
                gEntityInfo[arg0].unkF = 0;
            }
            break;
    }
}

// TODO: sub_08016EEC

void sub_0801B044(u8 arg0)
{
    u32 var_r3;

    if (gEntityInfo[arg0].unk8.all == 1)
    {
        m4aSongNumStart(0x98);
    }

    if (gEntityInfo[arg0].unk8.all++ < 0xF0)
    {
        if (!(gEntityInfo[arg0].unk8.all & 7) && (gEntityInfo[arg0].unk8.all <= 0x95))
        {
            sub_0801E664(gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 0xA, 0);
        }

        if (gUnk_03005220.unk50 == 0)
        {
            if (gUnk_03005220.unk2A > -0x110)
            {
                gUnk_03005220.unk2A -= 0x10;
            }
            else
            {
                gUnk_03005220.unk50 = 1;
                gUnk_03005220.unk2A = 0;
            }
        }

        if (gUnk_03005220.unk51 == 0)
        {
            if (gUnk_03005220.unk2C > -0x100)
            {
                gUnk_03005220.unk2C -= 0x14;
            }
            else
            {
                gUnk_03005220.unk51 = 1;
                gUnk_03005220.unk2C = 0;
            }
        }

        if (gUnk_03005220.unk2A > 0)
        {
            if (gEntityInfo[0].unkC_2 == 0)
            {
                gEntityInfo[0].xPosBg2 += (gUnk_03005220.unk2A >> 0x8);
            }
            else
            {
                gEntityInfo[0].xPosBg2 -= (gUnk_03005220.unk2A >> 0x8);
            }

            if (gUnk_03005220.unk52 == 0x80)
            {
                gEntityInfo[0].yPosBg2 += (gUnk_03005220.unk2C >> 0x8);
            }
            else
            {
                gEntityInfo[0].yPosBg2 -= (gUnk_03005220.unk2C >> 0x8);
            }

            if ((gEntityInfo[0].yPosBg2 - 0x10) < (gEntityInfo[arg0].yPosBg2 - 0x20))
            {
                gUnk_03005220.unk52 = 0x80;
            }
            else
            {
                gUnk_03005220.unk52 = 0x40;
            }
        }
        else
        {
            if (gEntityInfo[arg0].unk8.all <= 0xB3)
            {
                if (gEntityInfo[0].unkC_2 == 0)
                {
                    gOamAffineBuffer[gOamAffineMatrixNum].pa += 0xA;
                }
                else
                {
                    gOamAffineBuffer[gOamAffineMatrixNum].pa -= 0xA;
                }
                gOamAffineBuffer[gOamAffineMatrixNum].pd += 0xA;

                if (gEntityInfo[arg0].unkC_2 == 0)
                {
                    if (gEntityInfo[0].unkC_2 == 0)
                    {
                        s32 tmp0 = gEntityInfo[arg0].xPosBg2;
                        s32 tmp1 = gEntityInfo[0].xPosBg2 + 0x1A;
                        gEntityInfo[0].xPosBg2 += (tmp0 - (tmp1)) >> 5;
                    }
                    else
                    {
                        s32 tmp0 = gEntityInfo[0].xPosBg2 + 0x1A;
                        s32 tmp1 = gEntityInfo[arg0].xPosBg2;
                        gEntityInfo[0].xPosBg2 -= ((tmp0) - tmp1) >> 5;
                    }
                }
                else
                {
                    if (gEntityInfo[0].unkC_2 == 0)
                    {
                        s32 tmp0 = gEntityInfo[arg0].xPosBg2;
                        s32 tmp1 = gEntityInfo[0].xPosBg2 - 0x1A;
                        gEntityInfo[0].xPosBg2 += (tmp0 - (tmp1)) >> 5;
                    }
                    else
                    {
                        s32 tmp0 = gEntityInfo[0].xPosBg2 - 0x1A;
                        s32 tmp1 = gEntityInfo[arg0].xPosBg2;
                        gEntityInfo[0].xPosBg2 -= ((tmp0) - tmp1) >> 5;
                    }
                }

                if (gUnk_03005220.unk52 == 0x80)
                {
                    gEntityInfo[0].yPosBg2 += (((gEntityInfo[arg0].yPosBg2 - gEntityInfo[0].yPosBg2) - 0x10) >> 3);
                }
                else
                {
                    gEntityInfo[0].yPosBg2 -= (((gEntityInfo[0].yPosBg2 - gEntityInfo[arg0].yPosBg2) + 0x18) >> 3);
                }
            }
        }

        if (gEntityAnimationInfo->state != 4)
        {
            sub_08025B78(0, 4);
        }

        if (gEntityInfo[arg0].unk8.all == 0xB4)
        {
            m4aSongNumStart(0x99);
            sub_08025B78(arg0, 0);
            gUnk_03005220.unk2C = 2;
            gUnk_03005220.unk2A = 2;
            gEntityInfo[0].unk10 = 0;
            gEntityInfo[0].unkF = 0x1C;
        }

        if ((u32) (u16) (gEntityInfo[arg0].unk8.all - 0xBF) <= 8)
        {
            if (gUnk_03005220.unk2A >= -2)
            {
                gEntityInfo[arg0].xPosBg2 += gUnk_03005220.unk2A;
            }
            gUnk_03005220.unk2A -= 1;
            gUnk_03005220.unk2C -= 1;
        }

        if ((u32) (u16) (gEntityInfo[arg0].unk8.all - 0xC4) > 0x1C)
        {

        }
        else if (!(gEntityInfo[arg0].unk8.all & 1))
        {

        }
        else if (gEntityInfo[arg0].unkC_2 == 0)
        {
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pa = gSineTable[(u8) (gEntityInfo[arg0].unk8.all + 0x3D) + 0x40];
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pd = gSineTable[(u8) (gEntityInfo[arg0].unk8.all + 0x3D) + 0x40];
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pb = -gSineTable[(u8) (gEntityInfo[arg0].unk8.all + 0x3D)];
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pc = gSineTable[(u8) (gEntityInfo[arg0].unk8.all + 0x3D)];
        }
        else
        {
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pa = gSineTable[(u8) (0xC3 - gEntityInfo[arg0].unk8.all) + 0x40];
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pd = gSineTable[(u8) (0xC3 - gEntityInfo[arg0].unk8.all) + 0x40];
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pb = -gSineTable[(u8) (0xC3 - gEntityInfo[arg0].unk8.all)];
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pc = gSineTable[(u8) (0xC3 - gEntityInfo[arg0].unk8.all)];
        }
    }
    else if ((u32) (u16) (gEntityInfo[arg0].unk8.all - 0xF1) <= 0x3A)
    {
        if (gEntityInfo[arg0].unk8.all == 0xF1)
        {
            m4aSongNumStart(0x9A);
            sub_08025B78(arg0, 1);
        }

        if (gEntityInfo[arg0].unk8.all & 1)
        {
            gEntityInfo[arg0].xPosBg2 -= 1;
            gEntityInfo[arg0].yPosBg2 += 1;
            gBgInfo[2].hOfs += 1;
            gBgInfo[2].vOfs -= 1;
        }
        else
        {
            gEntityInfo[arg0].xPosBg2 += 1;
            gEntityInfo[arg0].yPosBg2 -= 1;
            gBgInfo[2].hOfs -= 1;
            gBgInfo[2].vOfs += 1;
        }
    }
    else if ((u32) (u16) (gEntityInfo[arg0].unk8.all - 0x12D) <= 0x80)
    {
        if ((gEntityInfo[arg0].unk8.all) == 0x12D)
        {
            gEntityInfo[0].unk10 = 1;
            gEntityInfo[0].unkF = 0;
            if (gEntityInfo[arg0].unkC_2 == 0)
            {
                gEntityInfo[0].xPosBg2 = gEntityInfo[arg0].xPosBg2 + 0x20;
            }
            else
            {
                gEntityInfo[0].xPosBg2 = gEntityInfo[arg0].xPosBg2 - 0x20;
            }
            gEntityInfo[0].yPosBg2 = gEntityInfo[arg0].yPosBg2 - 0x20;
            gEntityInfo[0].affineEnable = 0;
            gOamAffineBuffer[gOamAffineMatrixNum].pa = 0x100;
            gEntityInfo[0].unkC_2 = gEntityInfo[arg0].unkC_2;
            gUnk_03005220.unk2C = 0xFFFA;
            gUnk_03005220.unk2A = 0xFFFA;
            sub_08025B78(arg0, 2);
            m4aSongNumStart(0x9B);
            m4aSongNumStart(0x26);
        }

        if ((u32) (u16) (gEntityInfo[arg0].unk8.all - 0x12D) <= 0x12)
        {
            gUnk_03005220.unk2A += 1;
            gUnk_03005220.unk2C += 1;

            if (gUnk_03005220.unk2A <= 5)
            {
                gEntityInfo[arg0].xPosBg2 += gUnk_03005220.unk2A;
                gEntityInfo[arg0].yPosBg2 -= gUnk_03005220.unk2A;

                if (gEntityInfo[arg0].unk8.all & 4)
                {
                    gBgInfo[2].hOfs += 3;
                    gBgInfo[2].vOfs -= 1;
                }
                else
                {
                    gBgInfo[2].hOfs -= 3;
                    gBgInfo[2].vOfs += 1;
                }
            }
        }

        if (gEntityInfo[arg0].unkC_2 == 0)
        {
            if ((gEntityInfo[0].xPosBg2 + 3) < (s32) (gCurrentRoomBg2Bounds.right + 0x18))
            {
                gEntityInfo[0].xPosBg2 += 3;
            }
        }
        else
        {
            if ((gEntityInfo[0].xPosBg2 - 3) > (s32) (gCurrentRoomBg2Bounds.left - 0x18))
            {
                gEntityInfo[0].xPosBg2 -= 3;
            }
        }

        if ((gEntityInfo[0].yPosBg2 - 3) > (s32) (gCurrentRoomBg2Bounds.top - 0x18))
        {
            gEntityInfo[0].yPosBg2 -= 3;
        }

        if (!(gEntityInfo[arg0].unk8.all & 7))
        {
            sub_0801E664(gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 8, 0);
        }

        if (gEntityAnimationInfo->state != 2)
        {
            sub_08025B78(0, 2);
        }

        if (gEntityInfo[arg0].unk8.all == 0x154)
        {
            for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount + 1); var_r3++)
            {
                if (var_r3 == 4)
                {
                    gCallbackQueue.next[4] = sub_080264A4;
                }
                else if (var_r3 > 4)
                {
                    gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3 - 1];
                }
                else
                {
                    gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3];
                }
            }

            if (var_r3 > 3)
            {
                gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            }
        }
    }
    gUnk_03005220.unk28 = 0;
}

void sub_0801B688(u8 arg0)
{
    s32 var_r2;
    u8 var_r1;

    var_r2 = 1;
    if (gUnk_03005220.unk3F == arg0)
    {
        if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[arg0].xPosBg2) > 4)
        {
            var_r2 = 3;
        }
        else
        {
            // var_r2 = 1;
        }

        if (gEntityInfo[0].xPosBg2 < gEntityInfo[arg0].xPosBg2)
        {
            gUnk_03005220.unk56 = var_r2;
        }
        else if (gEntityInfo[0].xPosBg2 > gEntityInfo[arg0].xPosBg2)
        {
            gUnk_03005220.unk56 = -var_r2;
        }
        else
        {
            gUnk_03005220.unk56 = 0;
        }

        var_r1 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[0].yPosBg2 + 8) >> 3) * gBgInfo[2].hLength)];

        var_r1 = MAX(var_r1, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[0].yPosBg2 + 8) >> 3) * gBgInfo[2].hLength)]);

        if (gUnk_03004654[0x1A] > var_r1)
        {
            if (Abs(-(gEntityInfo[arg0].yPosBg2 + 0x18) + gEntityInfo[0].yPosBg2) > 4)
            {
                var_r2 = 3;
            }
            else
            {
                var_r2 = 1;
            }

            if ((gEntityInfo[0].yPosBg2 - 0x18) > gEntityInfo[arg0].yPosBg2)
            {
                gUnk_03005220.unk57 = -var_r2;
            }
            else if ((gEntityInfo[0].yPosBg2 - 0x18) < gEntityInfo[arg0].yPosBg2)
            {
                gUnk_03005220.unk57 = var_r2;
            }
            else
            {
                gUnk_03005220.unk57 = 0;
            }
        }
        else
        {
            gUnk_03005220.unk57 = -1;
        }
    }
    else
    {
        if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 2)
        {
            if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[arg0].xPosBg2 + 0xD)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[arg0].xPosBg2 - 0xD)))
            {
                if (((gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[arg0].yPosBg2 - 3)) && (gEntityInfo[0].yPosBg2 > ((gEntityInfo[arg0].yPosBg2 - 3) - 0x12)))
                {
                    sub_08025B78(arg0, 2);
                }
            }
        }
    }

    if (gEntityInfo[arg0].unkC_4 == 0)
    {
        if (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4 <= ++gEntityInfo[arg0].unk8.split.unk8)
        {
            gEntityInfo[arg0].unkC_4 = 1;
            gEntityInfo[arg0].unk8.split.unk8 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - 0x14;
        }
        else if ((gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - 0x14) < gEntityInfo[arg0].unk8.split.unk8)
        {
            return;
        }
    }
    else
    {
        if (--gEntityInfo[arg0].unk8.split.unk8 == 0)
        {
            gEntityInfo[arg0].unkC_4 = 0;
            gEntityInfo[arg0].unk8.split.unk8 = 0x14;
        }
        else if (gEntityInfo[arg0].unk8.split.unk8 <= 0x13)
        {
            return;
        }
    }

    switch (gEntityInfo[arg0].unk11 - 0x2F)
    {
        case 0:
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
            break;

        case 1:
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + gEntityInfo[arg0].unk8.split.unk8;
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
            break;

        case 2:
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + gEntityInfo[arg0].unk8.split.unk8;
            break;

        case 3:
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + gEntityInfo[arg0].unk8.split.unk8;
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + gEntityInfo[arg0].unk8.split.unk8;
            break;

        case 4:
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + gEntityInfo[arg0].unk8.split.unk8;
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 - gEntityInfo[arg0].unk8.split.unk8;
            break;
    }
}

void sub_0801BB6C(u8 arg0)
{
    if (gUnk_03005220.unk46 != 0)
    {
        return;
    }

    if (gUnk_03005220.unk3F != arg0)
    {
        return;
    }

    if ((gHeldKeys & gUnk_03005284->unk1D) && (gUnk_030034F0 <= 0x1D))
    {
        if (gUnk_03005220.unk3C == 2)
        {
            gUnk_03005220.unk45 = 0;
            gUnk_03005220.unk57 = 0;
            gUnk_03005220.unk56 = 0;
            gUnk_03005220.unk3F = 0;
            return;
        }
        gUnk_03005220.unk45 = 1;
    }

    if (gEntityInfo[arg0].unk8.split.unk8 == 0)
    {
        gEntityInfo[arg0].unk8.split.unk8 = gUnk_080D90D0[gEntityInfo[arg0].unk8.split.unk9].unk0;
        gUnk_03005220.unk56 = gUnk_080D90D0[gEntityInfo[arg0].unk8.split.unk9].unk1_0;
        gUnk_03005220.unk57 = gUnk_080D90D0[gEntityInfo[arg0].unk8.split.unk9++].unk1_4;
        if ((gUnk_03005220.unk45 == 0) && (gEntityInfo[arg0].unk8.split.unk9 > 6))
        {
            gEntityInfo[arg0].unk8.split.unk8 = 0;
        }

        if (gEntityInfo[arg0].unk8.split.unk8 == 0)
        {
            gUnk_03005220.unk57 = 0;
            gUnk_03005220.unk56 = 0;
            gUnk_03005220.unk3D = 0;
            gUnk_03005220.unk3F = 0;
            gUnk_03005220.unk45 = 0;
            gUnk_03005220.unk3C = 1;
            gUnk_03005220.unk28 = -0x350;
            gUnk_03005220.unk30 = 0;

            if (gUnk_03005220.unk42 == 0)
            {
                sub_08025B78(0, 2);
            }
            else
            {
                sub_08025B78(0, 0x18);
            }
            m4aSongNumStart(0x59);
        }
    }
    else
    {
        gUnk_03005220.unk57 = 0;
        gUnk_03005220.unk56 = 0;
    }

    gEntityInfo[arg0].unk8.split.unk8 -= 1;
}

void sub_0801BCC0(u8 arg0)
{
    if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[arg0].xPosBg2 + 0x27)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[arg0].xPosBg2 - 7)))
    {
        if (((gEntityInfo[0].yPosBg2 - 0x18) < gEntityInfo[arg0].yPosBg2) && (gEntityInfo[0].yPosBg2 > (gEntityInfo[arg0].yPosBg2 - 0xA)))
        {
            gUnk_03005220.unk16 = 0x400;
            gUnk_03005220.unk18 = 0;
            gUnk_03005220.unk3D = 0;
            gUnk_03005220.unk31 = 0;
            m4aSongNumStart(0x26);
            m4aSongNumStart(0xA1);
            sub_08025B78(0, 2);
            gUnk_03005220.unk28 = -0x600;
            gUnk_03005220.unk3C = 1;
        }
    }
}

void sub_0801BD48(u8 arg0)
{
    u32 var_r7;

    switch (gEntityInfo[arg0].unk11 - 0x27)
    {
        case 0:
            if (gEntityInfo[arg0].unk8.split.unk8 < (gEntityInfo[arg0].unk8.split.unk9 - 0xA))
            {
                if (gEntityInfo[arg0].unkC_4 == 0)
                {
                    gEntityInfo[arg0].yPosBg2 -= 1;

                    if (gUnk_03005220.unk3F == arg0)
                    {
                        gUnk_03005220.unk57 = -1;
                    }
                }
                else
                {
                    gEntityInfo[arg0].yPosBg2 += 1;

                    if (gUnk_03005220.unk3F == arg0)
                    {
                        gUnk_03005220.unk57 = 1;
                    }
                }
            }
            else if (gUnk_03005220.unk3F == arg0)
            {
                gUnk_03005220.unk57 = 0;
            }

            gEntityInfo[arg0].unk8.split.unk8 += 1;
            if (gEntityInfo[arg0].unk8.split.unk9 < gEntityInfo[arg0].unk8.split.unk8)
            {
                gEntityInfo[arg0].unkC_4 ^= 1;
                gEntityInfo[arg0].unk8.split.unk8 = 0;
            }

            if (gEntityInfo[arg0].unkC_4 != 1)
            {
                break;
            }

            for (var_r7 = gUnk_03003500; var_r7 <= gUnk_03004664; var_r7++)
            {
                if ((gEntityInfo[var_r7].unkF <= 0x1AU) && ((gEntityInfo[var_r7].unk11 == 0x25) || (gEntityInfo[var_r7].unk11 == 0x6F)))
                {
                    if (((gEntityInfo[arg0].xPosBg2 - 0x10) < (gEntityInfo[var_r7].xPosBg2 + 7)) && (((gEntityInfo[arg0].xPosBg2 - 0x10) + 0x20) > ((gEntityInfo[var_r7].xPosBg2 + 7) - 0x16)))
                    {
                        if (((gEntityInfo[arg0].yPosBg2 - 0x10) < gEntityInfo[var_r7].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r7].yPosBg2 - 0x18)))
                        {
                            gEntityInfo[arg0].unkC_4 = 0;
                            gEntityInfo[arg0].unk8.split.unk8 = (gEntityInfo[arg0].unk8.split.unk9 - 0xA) - gEntityInfo[arg0].unk8.split.unk8;
                            break;
                        }
                    }
                }
            }
            break;

        case 2:
        case 3:
            if (++gEntityInfo[arg0].unk8.split.unk8 < (gEntityInfo[arg0].unk8.split.unk9 - 0xA))
            {
                if (gEntityInfo[arg0].unkC_4 == 0)
                {
                    gEntityInfo[arg0].xPosBg2 += 1;

                    if (gUnk_03005220.unk3F == arg0)
                    {
                        gUnk_03005220.unk56 = 1;
                    }
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 -= 1;

                    if (gUnk_03005220.unk3F == arg0)
                    {
                        gUnk_03005220.unk56 |= -1;
                    }
                }
            }
            else if (gUnk_03005220.unk3F == arg0)
            {
                gUnk_03005220.unk56 = 0;
            }

            if (gEntityInfo[arg0].unk8.split.unk9 < gEntityInfo[arg0].unk8.split.unk8)
            {
                gEntityInfo[arg0].unkC_4 ^= 1;
                gEntityInfo[arg0].unk8.split.unk8 = 0;
            }

            if (gEntityInfo[arg0].unk8.split.unk8 >= (gEntityInfo[arg0].unk8.split.unk9 - 0xA))
            {
                break;
            }

            for (var_r7 = gUnk_03003500; var_r7 <= gUnk_03004664; var_r7++)
            {
                if ((gEntityInfo[var_r7].unkF <= 0x1A) && ((gEntityInfo[var_r7].unk11 == 0x25) || (gEntityInfo[var_r7].unk11 == 0x6F)))
                {
                    if (((gEntityInfo[arg0].xPosBg2 - 0x12) < (gEntityInfo[var_r7].xPosBg2 + 7)) && (((gEntityInfo[arg0].xPosBg2 - 0x12) + 0x24) > ((gEntityInfo[var_r7].xPosBg2 + 7) - 0x16)))
                    {
                        if (((gEntityInfo[arg0].yPosBg2 - 0x10) < gEntityInfo[var_r7].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r7].yPosBg2 - 0x18)))
                        {
                            if (gEntityInfo[arg0].xPosBg2 > gEntityInfo[var_r7].xPosBg2)
                            {
                                if (gEntityInfo[arg0].unkC_4 != 0)
                                {
                                    gEntityInfo[arg0].unkC_4 = 0;
                                    gEntityInfo[arg0].unk8.split.unk8 = ((gEntityInfo[arg0].unk8.split.unk9 - 0xA) - gEntityInfo[arg0].unk8.split.unk8) - 1;
                                }
                            }
                            else
                            {
                                if (gEntityInfo[arg0].unkC_4 != 1)
                                {
                                    gEntityInfo[arg0].unkC_4 = 1;
                                    gEntityInfo[arg0].unk8.split.unk8 = ((gEntityInfo[arg0].unk8.split.unk9 - 0xA) - gEntityInfo[arg0].unk8.split.unk8) - 1;
                                }
                            }
                            break;
                        }
                    }
                }
            }
            break;

        case 1:
            if (gEntityInfo[arg0].unk8.split.unk8 < (gEntityInfo[arg0].unk8.split.unk9 - 0x28))
            {
                if (gEntityInfo[arg0].unkC_4 == 0)
                {
                    gEntityInfo[arg0].yPosBg2 -= 1;
                    gEntityInfo[arg0 + 1].yPosBg2 -= 1;

                    if (gUnk_03005220.unk3F == arg0)
                    {
                        gUnk_03005220.unk57 = -1;
                    }
                }
                else
                {
                    gEntityInfo[arg0].yPosBg2 += 1;
                    gEntityInfo[arg0 + 1].yPosBg2 += 1;

                    if (gUnk_03005220.unk3F == arg0)
                    {
                        gUnk_03005220.unk57 = 1;
                    }
                }
            }
            else if (gUnk_03005220.unk3F == arg0)
            {
                gUnk_03005220.unk57 = 0;
            }

            gEntityInfo[arg0].unk8.split.unk8 += 1;
            if (gEntityInfo[arg0].unk8.split.unk9 < gEntityInfo[arg0].unk8.split.unk8)
            {
                gEntityInfo[arg0].unkC_4 ^= 1;
                gEntityInfo[arg0].unk8.split.unk8 = 0;
            }
            break;

        case 4:
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                if (gEntityInfo[arg0].unkF != 0x19)
                {
                    var_r7 = 4;
                    if (gEntityInfo[arg0].unk8.split.unk8 > 0x27)
                    {
                        var_r7 = 2;
                        if (gEntityInfo[arg0].unk8.split.unk8 > 0x4F)
                        {
                            if (gEntityInfo[arg0].unk8.split.unk8 <= 0xC8)
                            {
                                var_r7 = 1;
                                if (gEntityInfo[arg0].unk8.split.unk8 > 0xE7)
                                {
                                    var_r7 = 4;
                                }
                            }
                        }
                    }

                    if ((gEntityInfo[arg0].unk8.split.unk8 & var_r7) == 0)
                    {
                        gEntityInfo[arg0].unkF = 0x1A;
                        gEntityInfo[arg0].unk10 = 0;
                    }
                    else
                    {
                        gEntityInfo[arg0].unkF = 0;
                        gEntityInfo[arg0].unk10 = 1;
                    }
                }

                if (++gEntityInfo[arg0].unk8.split.unk8 == 0x65)
                {
                    if (gUnk_03005220.unk3F == arg0)
                    {
                        gUnk_03005220.unk3F = 0;
                    }

                    gEntityInfo[arg0].unkF = 0x19;
                    gEntityInfo[arg0].unk10 = 0;
                }
                else if (gEntityInfo[arg0].unk8.split.unk8 == 0xE7)
                {
                    gEntityInfo[arg0].unkF = 0x1A;
                    gEntityInfo[arg0].unk10 = 0;
                }
            }
            break;
    }
}

void sub_0801C150(u8 arg0)
{
    s32 var_r4;
    s32 var_r5;
    u16 var_r8;
    u16 var_sb;
    u32 var_r6;

    if (gEntityInfo[arg0].unk8.split.unk8 != 0)
    {
        gEntityInfo[arg0].unk8.split.unk8 -= 1;
    }

    switch (gEntityInfo[arg0].unk11)
    {
        case 0x71:
            if (gEntityInfo[arg0 + 1].unk8.split.unk8 == 0)
            {
                break;
            }

            gEntityInfo[arg0 + 1].unk8.split.unk8 -= 1;
            gEntityInfo[arg0 + 3].unk8.split.unk8 = gEntityInfo[arg0 + 2].unk8.split.unk8 = gEntityInfo[arg0 + 1].unk8.split.unk8;

            if (gEntityInfo[arg0 + 1].unkC_4 == 0)
            {
                gEntityInfo[arg0 + 1].yPosBg2 -= 1;
                gEntityInfo[arg0 + 2].yPosBg2 -= 1;
                gEntityInfo[arg0 + 3].yPosBg2 -= 1;
            }
            else
            {
                gEntityInfo[arg0 + 1].yPosBg2 += 1;
                gEntityInfo[arg0 + 2].yPosBg2 += 1;
                gEntityInfo[arg0 + 3].yPosBg2 += 1;
            }
            break;

        case 0x72:
            if (gEntityInfo[arg0].yPosBg2 & 1)
            {
                if (gEntityInfo[arg0].unk14 != 0)
                {
                    gEntityInfo[arg0].unk14 += 1;
                    if (gEntityInfo[arg0].unk14 > 0x87)
                    {
                        DmaCopy16(3, &gUnk_080635E8, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x80);
                        gEntityInfo[arg0].unkC_4 = 0;
                        gUnk_030034E0 -= 1;
                        gEntityInfo[arg0].unk14 = 0;
                        gEntityInfo[arg0].unk8.split.unk8 = 0;
                        m4aSongNumStart(0xA3);
                        break;
                    }
                }
            }

            if (gEntityInfo[arg0].unk8.split.unk9 != 1)
            {
                break;
            }

            if ((gEntityInfo[arg0].yPosBg2 & 1) && (gEntityInfo[arg0 + 1].unk8.split.unk8 == 0xFF))
            {
                DmaCopy16(3, &gUnk_080B9068, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x80);
                DmaCopy16(3, &gUnk_080B9068, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xE].tileNum * 0x20), 0x80);
                DmaCopy16(3, &gUnk_080B9068, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xF].tileNum * 0x20), 0x80);

                gEntityInfo[arg0 - 1].unk14 = gEntityInfo[arg0 - 2].unk14 = 0;
                gEntityInfo[arg0].unk14 = 0;
            }

            if (gEntityInfo[arg0 + 1].unk8.split.unk8 == 0)
            {
                break;
            }
            gEntityInfo[arg0 + 1].unk8.split.unk8 -= 1;

            if (gEntityInfo[arg0 + 1].unkC_4 == 0)
            {
                gEntityInfo[arg0 + 1].yPosBg2 -= 1;
            }
            else if (gEntityInfo[arg0 + 1].unkC_4 == 1)
            {
                gEntityInfo[arg0 + 1].yPosBg2 += 1;
            }

            if (gEntityInfo[arg0 + 1].unk8.split.unk8 == (gEntityInfo[arg0 + 1].unk8.split.unk9 - 0x20))
            {
                gEntityInfo[arg0 + 1].unkC_4 = 2;
                if (gEntityInfo[arg0 + 1].unk8.split.unk9 == 0xFF)
                {
                    gEntityInfo[arg0 + 1].unkF = 0x1C;
                    gEntityInfo[arg0 + 1].unk10 = 0;
                    gUnk_03005220.unk1_7 |= 1 << gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xC].unk0[gUnk_03004C20.room - 1].unk5;
                }
                break;
            }

            if (gEntityInfo[arg0 + 1].unk8.split.unk9 == 0xFF)
            {
                break;
            }

            if (gEntityInfo[arg0 + 1].unk8.split.unk8 == 32)
            {
                gEntityInfo[arg0 + 1].unkC_4 = 1;
                m4aSongNumStart(0x5A);
            }
            else if (gEntityInfo[arg0 + 1].unk8.split.unk8 == 0)
            {
                gEntityInfo[arg0 + 1].unkC_4 = 0;
                gUnk_030034E0 = 0;
                var_r5 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5 - 1;
                while (var_r5 >= 0)
                {
                    gEntityInfo[arg0 - var_r5].unkC_4 = 0;
                    DmaCopy16(3, &gUnk_08061FC8, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - var_r5 - 0xD].tileNum * 0x20), 0x80);
                    var_r5 -= 1;
                }
            }
            break;

        case 0x74:
            if (gEntityInfo[arg0].unk8.split.unk9 != 0)
            {
                gEntityInfo[arg0].unk8.split.unk9 -= 1;
            }
            break;

        case 0x37:
            // TODO: get rid of gotos
            for (var_r6 = 0; var_r6 <= gUnk_030008FC; var_r6++)
            {
                loop:
                if ((gEntityInfo[var_r6].unkF > 0x1A) || (gEntityInfo[var_r6].unkF == 0x19))
                {
                    if (gEntityInfo[arg0].unk8.split.unk9 == var_r6)
                    {
                        gEntityInfo[arg0].unk8.split.unk9 |= 0xFF;
                        gEntityInfo[arg0].yPosBg2 -= 4;
                    }
                    continue;
                }

                if ((gEntityInfo[var_r6].unk11 == 0x6F) || (gEntityInfo[var_r6].unk11 == 0x25))
                {
                    var_sb = -0xF;
                    var_r8 = -0x7;
                }
                else
                {
                    var_r8 = -0xC;
                    var_sb = -0xC;
                }

                if (gEntityInfo[arg0].unk8.split.unk9 == 0xFF)
                {
                    var_r4 = 0;
                }
                else
                {
                    var_r4 = 4;
                }

                if (((u16) (var_sb + gEntityInfo[var_r6].xPosBg2) < (gEntityInfo[arg0].xPosBg2 + 0x10)) && ((u16) (gEntityInfo[var_r6].xPosBg2 - var_r8) > (gEntityInfo[arg0].xPosBg2 - 0x10)))
                {
                    if (((gEntityInfo[var_r6].yPosBg2 - 0x18) < gEntityInfo[arg0].yPosBg2) && (gEntityInfo[var_r6].yPosBg2 > (gEntityInfo[arg0].yPosBg2 - 4 - var_r4)))
                    {
                        if (gEntityInfo[arg0].unk8.split.unk9 == 0xFF)
                        {
                            gEntityInfo[arg0].yPosBg2 += 4;
                            gEntityInfo[arg0].unk8.split.unk9 = var_r6;
                            return;
                        }
                        goto skip;
                    }
                }

                if (gEntityInfo[arg0].unk8.split.unk9 == var_r6)
                {
                    gEntityInfo[arg0].unk8.split.unk9 |= 0xFF;
                    gEntityInfo[arg0].yPosBg2 -= 4;
                    var_r6 = 0;
                    goto loop;
                }

                skip:
                if (var_r6 == 0)
                {
                    var_r6 = gUnk_03002904 - 1;
                }
            }

            if (gEntityInfo[arg0].unk8.split.unk9 != 0xFF)
            {
                if (gEntityInfo[arg0 + 1].unk8.split.unk8 < 0x20)
                {
                    if (gEntityInfo[arg0 + 1].unk8.split.unk8 == 0)
                    {
                        m4aSongNumStart(0x5A);
                    }
                    gEntityInfo[arg0 + 1].unk8.split.unk8 += 1;
                    gEntityInfo[arg0 + 1].yPosBg2 -= 1;
                }
            }
            else
            {
                if (gEntityInfo[arg0 + 1].unk8.split.unk8 != 0)
                {
                    if (gEntityInfo[arg0 + 1].unk8.split.unk8 == 0x20)
                    {
                        m4aSongNumStart(0x5A);
                    }
                    gEntityInfo[arg0 + 1].unk8.split.unk8 -= 1;
                    gEntityInfo[arg0 + 1].yPosBg2 += 1;
                }
            }
            break;
    }
}

void sub_0801C6EC(u8 arg0)
{
    u32 var_r7;

    for (var_r7 = gUnk_030034A4; var_r7 <= gUnk_030052B0; var_r7++)
    {
        if ((gEntityInfo[var_r7].unkF <= 0x1A) && ((gEntityInfo[var_r7].unk11 == 0x6F) || (gEntityInfo[var_r7].unk11 == 0x25) || (gEntityInfo[var_r7].unk11 > 0x75)) && ((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[var_r7].xPosBg2 + 7)) && (((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > ((gEntityInfo[var_r7].xPosBg2 + 7) - 0x16)) && ((gEntityInfo[arg0].yPosBg2 - 0x40) < gEntityInfo[var_r7].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r7].yPosBg2 - 0x18)))
        {
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[var_r7].yPosBg2 + -0x17;
            gEntityInfo[arg0].unk8.split.unk8 = 1;
            if ((gEntityInfo[var_r7].unkF == 0x13) && (gUnk_03000810 == 0))
            {
                m4aSongNumStart(0x5D);
                gUnk_03000810 = 1;
            }
            break;
        }
    }

    if (gEntityInfo[arg0].unk8.split.unk8 != 0)
    {
        gEntityInfo[arg0].yPosBg2 += 1;
        if (gEntityInfo[arg0].yPosBg2 == gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2)
        {
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            if (gUnk_03000810 == 1)
            {
                gUnk_03000810 = 0;
                m4aSongNumStop(0x5D);
            }
        }
    }
}

// https://decomp.me/scratch/113rN
void sub_0801C82C(u8 arg0)
{
    u32 var_r6;
    u8 var_r1;
    u32 sp0;

    gEntityInfo[arg0].unkC_4 = 0;

    for (var_r1 = 0; var_r1 < 3; var_r1++)
    {
        if (arg0 == gUnk_03003610[var_r1].unk0)
        {
            break;
        }
        else if (arg0 == gUnk_03003610[var_r1].unk1)
        {
            break;
        }
    }
    if (arg0 == gUnk_03003610[var_r1].unk0)
    {
        sp0 = gUnk_03003610[var_r1].unk1;
    }
    else
    {
        sp0 = gUnk_03003610[var_r1].unk0;
    }
    
    if (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) < (gEntityInfo[0].xPosBg2 + 0xC)) && (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) + 0x18) > ((gEntityInfo[0].xPosBg2 + 0xC) - 0x18)))
    {
        if (((gEntityInfo[arg0 - 1].yPosBg2 - 8) < (gEntityInfo[0].yPosBg2 + 1)) && ((gEntityInfo[arg0 - 1].yPosBg2 - 8) > ((gEntityInfo[0].yPosBg2 + 1) - 0x19)))
        {
            gEntityInfo[arg0].unkC_4 += 1;
        }
    }

    for (var_r6 = gUnk_030047BC; var_r6 <= gUnk_030007D4; var_r6++)
    {
        if (gEntityInfo[var_r6].unkF <= 0x1A)
        {
            switch (gEntityInfo[var_r6].unk11)
            {
                case 0x6F:
                case 0x25:
                    if (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) < (gEntityInfo[var_r6].xPosBg2 + 7)) && (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) + 0x18) > ((gEntityInfo[var_r6].xPosBg2 + 7) - 0x16)))
                    {
                        if (((gEntityInfo[arg0 - 1].yPosBg2 - 8) < (gEntityInfo[var_r6].yPosBg2 + 1)) && ((gEntityInfo[arg0 - 1].yPosBg2 - 8) > ((gEntityInfo[var_r6].yPosBg2 + 1) - 0x19)))
                        {
                            gEntityInfo[arg0].unkC_4 += 2;
                        }
                    }
                    break;

                case 0x7B:
                case 0x7C:
                case 0x7D:
                    if (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) < (gEntityInfo[var_r6].xPosBg2 + 4)))
                    {
                        if ((gEntityInfo[arg0 - 1].xPosBg2 + 0xC) > (gEntityInfo[var_r6].xPosBg2 - 4))
                        {
                            if (((gEntityInfo[arg0 - 1].yPosBg2 - 8) < (gEntityInfo[var_r6].yPosBg2 + 1)) && ((gEntityInfo[arg0 - 1].yPosBg2 - 8) > ((gEntityInfo[var_r6].yPosBg2 + 1) - 0x15)))
                            {
                                gEntityInfo[arg0].unkC_4 += 1;
                            }
                        }
                    }
                    break;
            }
        }
    }

    if (gEntityInfo[arg0].unkC_4 != 0)
    {
        if (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) < (gEntityInfo[0].xPosBg2 + 0x14)) && (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) + 0x18) > ((gEntityInfo[0].xPosBg2 + 0x14) - 0x28)))
        {
            if (((gEntityInfo[arg0 - 1].yPosBg2 - 8) < (gEntityInfo[0].yPosBg2 + 0x1A)) && ((gEntityInfo[arg0 - 1].yPosBg2 - 8) > (gEntityInfo[0].yPosBg2 + 1)))
            {
                gEntityInfo[arg0].unkC_4 += 1;
            }
        }

        for (var_r6 = gUnk_030047F8; var_r6 <= gUnk_03003504; var_r6++)
        {
            if (gEntityInfo[var_r6].unkF <= 0x1A)
            {
                switch (gEntityInfo[var_r6].unk11)
                {
                    case 0x25:
                    case 0x6F:
                        if (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) + 0x18) > ((gEntityInfo[var_r6].xPosBg2 + 0xF) - 0x26)))
                        {
                            if (((gEntityInfo[arg0 - 1].yPosBg2 - 8) < (gEntityInfo[var_r6].yPosBg2 + 0x1A)) && ((gEntityInfo[arg0 - 1].yPosBg2 - 8) > (gEntityInfo[var_r6].yPosBg2 + 1)))
                            {
                                gEntityInfo[arg0].unkC_4 += 2;
                            }
                        }
                        break;

                    case 0x76:
                    case 0x77:
                    case 0x78:
                    case 0x7B:
                    case 0x7C:
                    case 0x7D:
                        if (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && (((gEntityInfo[arg0 - 1].xPosBg2 - 0xC) + 0x18) > ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18)))
                        {
                            if (((gEntityInfo[arg0 - 1].yPosBg2 - 8) < (gEntityInfo[var_r6].yPosBg2 + 0x1A)) && ((gEntityInfo[arg0 - 1].yPosBg2 - 8) > (gEntityInfo[var_r6].yPosBg2 + 5)))
                            {
                                gEntityInfo[arg0].unkC_4 += 1;
                            }
                        }
                        break;
                }
            }
        }
    }

    if (gEntityInfo[arg0].unkC_4 == gEntityInfo[sp0].unkC_4)
    {
        if (gUnk_03003610[var_r1].unk2 == 1)
        {
            gUnk_03003610[var_r1].unk3 += 1;
            if (gUnk_03003610[var_r1].unk3 >= 0x32)
            {
                gUnk_03003610[var_r1].unk3 = 0x32;
                goto block_71;
            }
        }
        else
        {
block_71:
            gUnk_03003610[var_r1].unk2 = 1;
            if (gEntityInfo[arg0].unk8.split.unk8 > (gEntityInfo[sp0].unk8.split.unk8 + 1))
            {
                gEntityInfo[arg0].unkC_4 = 0xF;
            }
            else if (gEntityInfo[arg0].unk8.split.unk8 < (gEntityInfo[sp0].unk8.split.unk8 - 1))
            {
                gEntityInfo[sp0].unkC_4 = 0xF;
            }
            goto block_76;
        }
    }
    else
    {
        gUnk_03003610[var_r1].unk3 = 0;
        gUnk_03003610[var_r1].unk2 = 0;
block_76:
        if (gEntityInfo[gUnk_03003610[var_r1].unk0].unkC_4 == gEntityInfo[gUnk_03003610[var_r1].unk1].unkC_4)
        {
            goto block_96;
        }
        else if (gEntityInfo[arg0].unkC_4 < gEntityInfo[sp0].unkC_4)
        {
            if (gEntityInfo[arg0].unk8.split.unk8 == 0xFE)
            {
                gEntityInfo[sp0].unk8.split.unk8 = 2;
                goto block_96;
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk8 += 1;
                goto block_85;
            }
        }
        else if (gEntityInfo[arg0].unk8.split.unk8 == 2)
        {
            gEntityInfo[sp0].unk8.split.unk8 = 0xFE;
block_96:
            if (gUnk_03005220.unk3F == arg0 - 1)
            {
                gUnk_03005220.unk57 = 0;
            }
        }
        else
        {
            gEntityInfo[arg0].unk8.split.unk8 -= 1;
block_85:
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + ((u8)-gEntityInfo[arg0].unk8.split.unk8 >> 3);
            if (gUnk_03005220.unk3F == arg0 - 1)
            {
                if (gEntityInfo[arg0 - 1].yPosBg2 != (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xE].unk0[gUnk_03004C20.room - 1].unk2 + ((u8)-gEntityInfo[arg0].unk8.split.unk8 >> 2)))
                {
                    if (gEntityInfo[arg0].unkC_4 > gEntityInfo[sp0].unkC_4)
                    {
                        gUnk_03005220.unk57 = 1;
                    }
                    else
                    {
                        gUnk_03005220.unk57 = -1;
                    }
                }
                else
                {
                    gUnk_03005220.unk57 = 0;
                }
            }
            gEntityInfo[arg0 - 1].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xE].unk0[gUnk_03004C20.room - 1].unk2 + ((u8)-gEntityInfo[arg0].unk8.split.unk8 >> 2);
            if (gUnk_03003610[var_r1].unk0 == arg0)
            {
                gEntityInfo[gUnk_03003610[var_r1].unk1].unkC_4 = gEntityInfo[arg0].unkC_4 ^ 1;
            }
            else
            {
                gEntityInfo[gUnk_03003610[var_r1].unk0].unkC_4 = gEntityInfo[arg0].unkC_4 ^ 1;
            }
            
            gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd = MultiplyQ8(0x100, ReciprocalQ8(gEntityInfo[arg0].unk8.split.unk8));
        }
    }

    if (sp0 < arg0)
    {
        gEntityInfo[arg0].unk8.split.unk8 = -gEntityInfo[sp0].unk8.split.unk8;
    }
}

void sub_0801CE38(u8 arg0)
{
    s32 var_r3;

    if (gEntityInfo[arg0].unkF == 0)
    {
        if ((gUnk_03004C20.unk8 >> ((gUnk_03004C20.room - 1) * 2)) & 3)
        {
            sub_08044F6C(arg0);
            gEntityInfo[arg0].xPosBg2 += gSineTable[(gUnk_03004C20.sceneFrameCounter & 0x7F) * 2] >> 0x6;
            gEntityInfo[arg0].yPosBg2 += gSineTable[(gUnk_03004C20.sceneFrameCounter & 0x7F) * 2 + 0x40] >> 0x6;
        }
        else
        {
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + (gSineTable[(gUnk_03004C20.sceneFrameCounter & 0x7F) * 2] >> 6);
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + (gSineTable[(gUnk_03004C20.sceneFrameCounter & 0x7F) * 2 + 0x40] >> 6);
        }
    }
    else if (gEntityInfo[arg0].unkF == 0x12)
    {
        if (gEntityInfo[arg0].unk8.split.unk9 == 1)
        {
            gEntityInfo[arg0].unkF = 0x1C;
            gEntityInfo[arg0].unk10 = 0;
            return;
        }

        gEntityInfo[arg0].unk8.split.unk8 += 0x10;
        if (gEntityInfo[arg0].unk8.split.unk8 == 0)
        {
            gEntityInfo[arg0].unk8.split.unk9 -= 1;
            if (gEntityInfo[arg0].unk8.split.unk9 == 1)
            {
                if (gEntityInfo[arg0].unk11 == 1)
                {
                    var_r3 = 0;
                }
                else if (gEntityInfo[arg0].unk11 == 2)
                {
                    var_r3 = 2;
                }
                else
                {
                    var_r3 = 4;
                }

                gBgTilemapBufs[0][var_r3 + 0x247] = gBgTilemapBufs[0][var_r3 + 0x286];
                gBgTilemapBufs[0][var_r3 + 0x248] = gBgTilemapBufs[0][var_r3 + 0x287];
                gBgTilemapBufs[0][var_r3 + 0x267] = gBgTilemapBufs[0][var_r3 + 0x2A6];
                gBgTilemapBufs[0][var_r3 + 0x268] = gBgTilemapBufs[0][var_r3 + 0x2A7];
                return;
            }
        }

        if ((gUnk_03004C20.unk8 >> ((gUnk_03004C20.room - 1) * 2)) & 3)
        {
            sub_08044F6C(arg0);
            gEntityInfo[arg0].xPosBg2 -= gSineTable[gEntityInfo[arg0].unk8.split.unk8] >> gEntityInfo[arg0].unk8.split.unk9;
            gEntityInfo[arg0].yPosBg2 += gSineTable[gEntityInfo[arg0].unk8.split.unk8 + 0x40] >> gEntityInfo[arg0].unk8.split.unk9;
        }
        else
        {
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 - (gSineTable[gEntityInfo[arg0].unk8.split.unk8] >> gEntityInfo[arg0].unk8.split.unk9);
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + (gSineTable[gEntityInfo[arg0].unk8.split.unk8 + 0x40] >> gEntityInfo[arg0].unk8.split.unk9);
        }
    }
}

void sub_0801D0D8(u8 arg0)
{
    u32 var_r6;
    u32 var_sb;

    if (gUnk_03004C20.level != 8)
    {
        if (gEntityInfo[arg0].xPosBg2 < (gBgInfo[2].hOfs - 8))
        {
            return;
        }
        if ((gBgInfo[2].hOfs + 0xF8) < gEntityInfo[arg0].xPosBg2)
        {
            return;
        }
    }

    gEntityInfo[arg0].yPosBg2 -= gEntityInfo[arg0].unk8.split.unk9;
    if (gEntityInfo[arg0].unk11 == 9)
    {
        var_sb = 0;
        if (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk0 >= (gEntityInfo[0].xPosBg2 + 0xC))
        {
            goto block_35;
        }
        if (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk2 <= ((gEntityInfo[0].xPosBg2 + 0xC) - 0x18))
        {
            goto block_35;
        }
        if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 + 0x10) >= gEntityInfo[0].yPosBg2)
        {
            goto block_35;
        }
        if (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk6 <= (gEntityInfo[0].yPosBg2 - 0x18))
        {
            goto block_35;
        }
        if ((gUnk_03005220.unk34 | gUnk_03005220.unk39) == 0)
        {
            gUnk_030034C4 += 1;
            if (gUnk_030034C4 >= 0x32)
            {
                gUnk_030034C4 = 0x32;
                if (thunk_GetRandomValue() <= 8)
                {
                    if ((gUnk_03004C20.globalFrameCounter & 3) == 0)
                    {
                        m4aSongNumStart(0x97);
                        gUnk_030034C4 = 0;
                    }
                    else if ((gUnk_03004C20.globalFrameCounter & 3) == 1)
                    {
                        m4aSongNumStart(0x96);
                        gUnk_030034C4 = 0;
                    }
                    else
                    {
                        m4aSongNumStart(0x95);
                        gUnk_030034C4 = 0;
                    }
                }
            }

            if ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25))
            {
                gUnk_03005220.unk3A = 0;
                gUnk_03005220.unk53 = 1;
            }
            else
            {
                gUnk_03005220.unk30 = 1;

                if ((gUnk_03005220.unk3B | gUnk_03005220.unk46) == 0)
                {
                    gUnk_03005220.unk3A = gEntityInfo[arg0].unkC_4 + 1;

                    if (gUnk_03005220.unk3D != 0)
                    {
                        m4aSongNumStart(0x8E);
                        gUnk_03005220.unk3D = 0;
                    }

                    if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk0 + 0x10) > gEntityInfo[0].xPosBg2)
                    {
                        gEntityInfo[0].xPosBg2 += 1;
                    }
                    else if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk0 + 0x10) < gEntityInfo[0].xPosBg2)
                    {
                        gEntityInfo[0].xPosBg2 -= 1;
                    }
                }
            }
        }
        else
        {
block_35:
            gUnk_03005220.unk53 = 0;
            if (gUnk_03005220.unk3A == (gEntityInfo[arg0].unkC_4 + 1))
            {
                gUnk_03005220.unk53 = 0;
                gUnk_03005220.unk30 = 0;
                gUnk_03005220.unk3B = 0;
                gUnk_03005220.unk3A = 0;
                gUnk_03005220.unk48 = 0;

                gUnk_030034C4 = 0x32;
            }
        }

        for (var_r6 = gUnk_03005484; var_r6 <= gUnk_03004650; var_r6++)
        {
            if (gEntityInfo[var_r6].unkF <= 0x1A)
            {
                switch (gEntityInfo[var_r6].unk11)
                {
                    case 0x6F:
                    case 0x25:
                        if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk0 < (gEntityInfo[var_r6].xPosBg2 + 8)) && (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk2 > ((gEntityInfo[var_r6].xPosBg2 + 8) - 0x18)))
                        {
                            if (((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 - 8) < gEntityInfo[var_r6].yPosBg2) && (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk6 > (gEntityInfo[var_r6].yPosBg2 - 0x18)) && (gEntityInfo[var_r6].yPosBg2 > (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 - 8)))
                            {
                                gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 = gEntityInfo[var_r6].yPosBg2;

                                var_sb = 1;
                                if (gEntityInfo[var_r6].unkF == 0)
                                {
                                    gEntityInfo[var_r6].unk12 = 1;
                                }
                                if (gEntityInfo[var_r6].unkF == 0x17)
                                {
                                    gEntityInfo[var_r6].unk12 += 1;
                                    if (gEntityInfo[var_r6].unk12 > 0x1A)
                                    {
                                        gEntityInfo[var_r6].unkF = 0;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x29:
                        if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk0 < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk2 > ((gEntityInfo[var_r6].xPosBg2 + 0x10) - 0x20)))
                        {
                            if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 - 8) < gEntityInfo[var_r6].yPosBg2)
                            {
                                if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk6 > (gEntityInfo[var_r6].yPosBg2 - 0x10)) && (gEntityInfo[var_r6].yPosBg2 > (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 - 8)))
                                {
                                    gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 = gEntityInfo[var_r6].yPosBg2;
                                    var_sb = 1;
                                }
                            }
                        }
                        break;

                    case 0x35:
                    case 0x70:
                        if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk0 < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk2 > ((gEntityInfo[var_r6].xPosBg2 + 0xF) - 0x1E)))
                        {
                            if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 - 8) < gEntityInfo[var_r6].yPosBg2)
                            {
                                if ((gUnk_03000790[gEntityInfo[arg0].unkC_4].unk6 > (gEntityInfo[var_r6].yPosBg2 - 0x20)) && (gEntityInfo[var_r6].yPosBg2 > (gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 - 8)))
                                {
                                    gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 = gEntityInfo[var_r6].yPosBg2;
                                    var_sb = 1;
                                }
                            }
                        }
                        break;
                }
            }
        }

        if (var_sb == 0)
        {
            gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4 = gUnk_03000790[gEntityInfo[arg0].unkC_4].unk8;
        }
    }

    if ((gEntityInfo[arg0].yPosBg2 <= gUnk_03000790[gEntityInfo[arg0].unkC_4].unk4) || ((gEntityInfo[arg0].yPosBg2 <= gBgInfo[2].vOfs) && (gUnk_03004C20.level != 8)))
    {
        gEntityInfo[arg0].unk8.split.unk8 = thunk_GetRandomValueEx() & 7;
        gEntityInfo[arg0].yPosBg2 = gUnk_03000790[gEntityInfo[arg0].unkC_4].unk6;

        if (gEntityInfo[arg0].unk8.split.unk8 == 4)
        {
            gEntityInfo[arg0].unk8.split.unk9 = 0x14;
        }
        else
        {
            gEntityInfo[arg0].unk8.split.unk9 = gEntityInfo[arg0].unk8.split.unk8 + 4;
        }
    }
}

void sub_0801D4AC(u8 arg0)
{
    u8 var_r1;
    u32 var_r3;

    if (gEntityInfo[arg0].unk11 == 0x70)
    {
        if (gEntityInfo[arg0].unk8.split.unk9 == 0)
        {
            return;
        }

        if (gUnk_03004C20.globalFrameCounter & 2)
        {
            gEntityInfo[arg0].unkF = 0x1A;
            gEntityInfo[arg0].unk10 = 0;
        }
        else
        {
            gEntityInfo[arg0].unkF = 0;
            gEntityInfo[arg0].unk10 = 1;
        }

        if (gEntityInfo[arg0].unk8.split.unk9 <= 0x13)
        {
            gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd += 0x46;
            gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pb += 0x23;
            gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa -= 0x14;
        }
        else if (gEntityInfo[arg0].unk8.split.unk9 <= 0x27)
        {
            gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa += 0x23;
            gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pc += 0x14;
        }
        else
        {
            gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd - 1;
        }

        gEntityInfo[arg0].unk8.split.unk9 -= 1;
        if (gEntityInfo[arg0].unk8.split.unk9 == 0)
        {
            sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
        }
        return;
    }
    
    if (arg0 == gUnk_030047B8)
    {
        var_r1 = 1;
    }
    else
    {
        var_r1 = 0;
    }

    var_r1 ^= gUnk_03005284->unkB_6;
    if (gUnk_03005220.unk3_6 != (var_r1 ^ gEntityInfo[arg0].unkC_4))
    {
        if (gEntityInfo[arg0].unkC_4 == 1)
        {
            if (gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa < 0x200)
            {
                gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd + 8;
                return;
            }

            if ((u8)(gUnk_030047B8 - 1) <= (u8)(gUnk_03005470 - 1))
            {
                var_r1 = gUnk_030047B8;
            }
            else
            {
                var_r1 = gUnk_03005470;
            }

            for (var_r3 = var_r1; (var_r3 < gUnk_03005428) && (gEntityInfo[var_r3].unk11 == 0x35); var_r3++)
            {
                if (gEntityInfo[arg0].affineHFlip_matrixNum == gEntityInfo[var_r3].affineHFlip_matrixNum)
                {
                    gEntityInfo[var_r3].unkC_4 = 0;
                    gEntityInfo[var_r3].unk10 = 0;
                    gEntityInfo[var_r3].unkF = 0x1C;
                }
            }
        }
        else
        {
            if (gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa > 0x100)
            {
                gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd - 8;
            }
            else
            {
                gEntityInfo[arg0].unkC_4 = 1;
            }
        }
    }
}
