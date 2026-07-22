#include "global.h"
#include "code_08014184.h"
#include "code_08003D58.h"
#include "code_080240F4.h"
#include "code_08039D8C.h"
#include "code_08043BA4.h"
#include "main.h"
#include "math.h"
#include "rand.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

extern const s8 gUnk_080E2AB4[7][6];
extern const u8 gUnk_080E2ADE[][2];
extern const u8 gUnk_080E2AF2[3];
extern const s8 gUnk_080E2AF5[][6];

extern const u8 gUnk_080E2B49[3];
extern const s8 gUnk_080E2B4C[][2];
extern const u8 gUnk_080E2B52[];
extern const u8 gUnk_080E2B5E[3];

struct Unk_080E2B64_0 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u16 unk6;
};
struct Unk_080E2B64 {
    struct Unk_080E2B64_0 unk0[5];
    u8 unk28;
    u8 unk29;
    u8 pad2A[0x2C - 0x2A];
};
extern struct Unk_080E2B64 gUnk_080E2B64[6][8][0x64];

extern u8 gUnk_080D8E10[3];

struct Unk_080D90D0 {
    u8 unk0;
    s8 unk1_0:4;
    s8 unk1_4:4;
    u8 pad2[0x4 - 0x2];
};
extern struct Unk_080D90D0 gUnk_080D90D0[];

extern const s8 gUnk_081168AC[][4];
extern const s8 gUnk_081168C4[][4];
extern const u8 gUnk_08116A26[][4];
extern const u8 gUnk_08116A36[][4];

extern const s8 gUnk_0818B8D0[8][2];

extern void *gUnk_0818B7DC[];
extern struct Unk_0300466C *gUnk_0818B8E0[6][9];

extern u8 gUnk_08061FC8[0x80];
extern u8 gUnk_08062148[0x100];
extern u8 gUnk_080635E8[0x80];
extern u8 gUnk_08063368[0x80];
extern u8 gUnk_08063FE8[0x80];
extern u8 gUnk_08064A68[0x200];

extern u8 gUnk_08078328[0x20];
extern u8 gUnk_08078648[0x20];
extern u8 gUnk_08078968[0x20];
extern u8 gUnk_08078988[0x20];

extern u8 gUnk_080B8F68[0x80];
extern u8 gUnk_080B8FE8[0x80];
extern u8 gUnk_080B9068[0x80];
extern u8 gUnk_080B9268[0x80];
extern u8 gUnk_080B92E8[0x80];
extern u8 gUnk_080B9368[0x100];
extern u8 gUnk_080B9668[0x200];

// 14184
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

static inline struct Unk_08014184 Call_sub_08014184(u16 arg1, u16 arg2, u8 arg3)
{
    struct Unk_08014184 sp;

    sub_08014184(&sp, arg1, arg2, arg3);
    return sp;
}

// 14230
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

static inline struct Unk_08014184 Call_sub_08014230(u16 arg1, u16 arg2, u8 arg3)
{
    struct Unk_08014184 sp;

    sub_08014230(&sp, arg1, arg2, arg3);
    return sp;
}

/*
    ODDITY: this function matches in this file, but alone doesn't
    https://decomp.me/scratch/jnG3R
*/

#define	MAX(a,b) (((a) >= (b)) ? (a) : (b))

// 14318
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

// 144C4
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

// 145A8
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

// 14624
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

// 14760
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

// 16EEC
void sub_08016EEC(u8 arg0)
{
    struct Unk_08014184 sp0;
    struct Unk_08014184 sp4;
    struct Unk_08014184 spC;
    struct Unk_08014184 sp14;
    struct Unk_08014184 sp1C;
    u32 sp28;
    s32 sp2C;
    s32 sp30;
    u8 sp34;
    s32 sp38;
    s32 var_ip;
    s32 var_sb;
    s32 var_sb_4;
    u16 temp_r1_52;
    u16 temp_r1_84;
    u16 temp_r5_22;
    u16 temp_r5_44;
    u32 temp_r6_4;

    sp2C = gEntityInfo[arg0].xPosBg2;
    sp30 = gEntityInfo[arg0].yPosBg2;
    sp34 = 0;

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 -= 1;
                if (gEntityInfo[arg0].unk8.split.unk8 == 0)
                {
                    gEntityInfo[arg0].unk10 = 1;
                    if ((gEntityInfo[arg0].unk11 == 0x76) || (gEntityInfo[arg0].unk11 == 0x7B))
                    {
                        sub_08025B78(arg0, 1);
                    }
                    else
                    {
                        sub_08025B78(arg0, 0);
                    }
                    gEntityInfo[arg0].unkF = 0;
                }
            }
            else
            {
                if (gUnk_03004C20.level == 8)
                {
                    if (gUnk_03005400.unkC == 0)
                    {
                        gEntityInfo[arg0].unkF = 0x1C;
                        return;
                    }
                    else if (gUnk_03004C20.world == 2)
                    {
                        gEntityInfo[arg0].unkF = 0x1C;
                        return;
                    }
                    else if (gUnk_03004C20.world == 4)
                    {
                        gEntityInfo[arg0].unkF = 0x1C;
                        return;
                    }

                    if (gUnk_03004C20.world == 1)
                    {
                        gUnk_03004C20.room = (gEntityInfo[0].xPosBg2 / 240) + 1;
                    }
                    if ((gUnk_03004C20.world == 3) && (gUnk_03005400.unkC != 0))
                    {
                        gUnk_03004C20.room = gUnk_03005400.unkC;
                    }
                }

                gEntityInfo[arg0].xPosScreen = gEntityInfo[arg0].xPosBg2 - gBgInfo[2].hOfs;
                gEntityInfo[arg0].yPosScreen = gEntityInfo[arg0].yPosBg2 - gBgInfo[2].vOfs;
                if ((gUnk_03004C20.level == 8) || (((u16) (gEntityInfo[arg0].xPosScreen - 0x113) > (u16)(-0x137)) && ((u16) (gEntityInfo[arg0].yPosScreen - 0xE0) > (u16)(-0x104))))
                {
                    sub_0801E664(sp2C, sp30, 1, arg0);
                    gEntityInfo[arg0].unk8.split.unk8 = 0x5A;
                }
            }
            break;

        case 0:
            if (gEntityInfo[arg0].unk11 == 0x76 || gEntityInfo[arg0].unk11 == 0x7B)
            {
                if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                {
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 += 1;
                        sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 0xC) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 -= 1;
                        sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0xC) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                    }
                    
                    if (gEntityInfo[arg0].unk8.split.unk9 == 2)
                    {
                        if (gEntityInfo[arg0].unkC_2 == 0)
                        {
                            if (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 4) >> 3) + (((gEntityInfo[arg0].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)] < gUnk_03004654[0])
                            {
                                gEntityInfo[arg0].unk8.split.unk9 = 3;
                                sub_08025B78(arg0, 0);
                                return;
                            }
                        }
                        else
                        {
                            if (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 4) >> 3) + (((gEntityInfo[arg0].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)] < gUnk_03004654[0])
                            {
                                gEntityInfo[arg0].unk8.split.unk9 = 3;
                                sub_08025B78(arg0, 0);
                                return;
                            }
                        }
                    }
                    else if (gEntityInfo[arg0].unk8.split.unk9 == 3)
                    {
                        if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0)
                        {
                            gEntityInfo[arg0].xPosBg2 = (u16) sp2C;
                        }
                        else
                        {
                            gEntityInfo[arg0].unkC_2 ^= 1;
                            gEntityInfo[arg0].unk8.split.unk9 = 2;
                        }
                    }
                }
            }
            else if (gEntityInfo[arg0].unk11 == 0x77 || gEntityInfo[arg0].unk11 == 0x6 || gEntityInfo[arg0].unk11 == 0x7C)
            {
                if (gEntityInfo[arg0].unkD_6 == 0)
                {
                    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                    {
                        if ((gEntityInfo[arg0].unk11 == 0x77) || (gEntityInfo[arg0].unk11 == 0x7C))
                        {
                            if (gEntityInfo[arg0].unkC_2 == 0)
                            {
                                gEntityInfo[arg0].xPosBg2 += 1;
                            }
                            else
                            {
                                gEntityInfo[arg0].xPosBg2 -= 1;
                            }
                        }
                        else
                        {
                            if (gEntityInfo[arg0].unkC_4 == 0)
                            {
                                gEntityInfo[arg0].xPosBg2 += 1;
                            }
                            else
                            {
                                gEntityInfo[arg0].xPosBg2 -= 1;
                            }
                        }
                    }

                    gEntityInfo[arg0].unk8.split.unk9 -= 1;
                    if (gEntityInfo[arg0].unk8.split.unk9 == 0)
                    {
                        if ((gEntityInfo[arg0].unk11 == 0x77) || (gEntityInfo[arg0].unk11 == 0x7C))
                        {
                            gEntityInfo[arg0].unkC_2 ^= 1;
                        }
                        else
                        {
                            gEntityInfo[arg0].unkC_4 ^= 1;
                        }
                        gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                    }
                }
            }
            else if (gEntityInfo[arg0].unk11 == 0x79)
            {
                gEntityInfo[arg0].yPosBg2 += 2;
                sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 4) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)];
                if (gUnk_03004654[0x1A] <= sp34)
                {
                    gEntityInfo[arg0].yPosBg2 = (sp30 + 3);
                    gEntityInfo[arg0].yPosBg2 &= 0xFFF8;
                    if (gEntityInfo[arg0].unk8.split.unk8 == 0)
                    {
                        gEntityInfo[arg0].unk8.split.unk8 = 0xC8;
                    }
                    else
                    {
                        if ((gEntityInfo[arg0].unkC_4 == 2) && (gEntityInfo[arg0].unk8.split.unk8 > 0x64))
                        {
                            if (gEntityInfo[0].xPosBg2 < gEntityInfo[arg0].xPosBg2)
                            {
                                gEntityInfo[arg0].unkC_2 = 1;
                            }
                            else
                            {
                                gEntityInfo[arg0].unkC_2 = 0;
                            }
                        }

                        if (((u16) (gEntityInfo[arg0].xPosScreen - 0x113) > (u16)-0x137) && ((u16) (gEntityInfo[arg0].yPosScreen - 0xE0) > (u16)-0x104))
                        {
                            var_sb = 0;
                            for (sp28 = 1; sp28 <= gEntityInfo[arg0].unk8.split.unk9; sp28 += 1)
                            {
                                if (gEntityInfo[arg0 + sp28].unk8.split.unk8 == gEntityInfo[arg0].unk8.split.unk8)
                                {
                                    sub_08025B78(arg0, 2);
                                    if (gEntityInfo[arg0].unkC_2 == 0)
                                    {
                                        gEntityInfo[arg0 + sp28].xPosBg2 = gEntityInfo[arg0].xPosBg2 + 0xA;
                                    }
                                    else
                                    {
                                        gEntityInfo[arg0 + sp28].xPosBg2 = gEntityInfo[arg0].xPosBg2 - 0xA;
                                    }

                                    gEntityInfo[arg0 + sp28].yPosBg2 = gEntityInfo[arg0].yPosBg2 - 2;
                                    gEntityInfo[arg0 + sp28].unkF = 0;
                                    gEntityInfo[arg0 + sp28].unk10 = 1;
                                    gEntityInfo[arg0 + sp28].unkC_2 = gEntityInfo[arg0].unkC_2;
                                    m4aSongNumStart(0x58);
                                }
                                if (gEntityInfo[arg0 + sp28].unk10 == 1)
                                {
                                    var_sb = 1;
                                }
                            }

                            gEntityInfo[arg0].unk8.split.unk8 -= 1;
                            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
                            {

                            }
                            else if (var_sb != 0)
                            {
                                gEntityInfo[arg0].unk8.split.unk8 = 1;
                            }
                        }
                    }
                }
            }
            else if (gEntityInfo[arg0].unk11 != 0xB)
            {
                if (gEntityInfo[arg0].unkD_6 == 0)
                {
                    if ((gEntityInfo[arg0].unk11 == 0x78) || (gEntityInfo[arg0].unk11 == 0x7A) || (gEntityInfo[arg0].unk11 == 0x7D))
                    {
                        if (gEntityInfo[0].xPosBg2 < gEntityInfo[arg0].xPosBg2)
                        {
                            gEntityInfo[arg0].unkC_2 = 1;
                        }
                        else
                        {
                            gEntityInfo[arg0].unkC_2 = 0;
                        }
                    }

                    if (gEntityInfo[arg0].unk8.split.unk9 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + (gSineTable[((gUnk_03004C20.sceneFrameCounter % 0x80) * 2) + 0x40] >> 6);
                        gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + (gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x80) * 2] >> 6);
                    }
                    else
                    {
                        if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                        {
                            if (gEntityInfo[arg0].unkC_4 == 0)
                            {
                                gEntityInfo[arg0].yPosBg2 -= 1;
                            }
                            else
                            {
                                gEntityInfo[arg0].yPosBg2 += 1;
                            }
                        }

                        gEntityInfo[arg0].unk8.split.unk9 -= 1;
                        if (gEntityInfo[arg0].unk8.split.unk9 != 0)
                        {

                        }
                        else
                        {
                            gEntityInfo[arg0].unkC_4 ^= 1;
                            gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                        }
                    }
                }
            }
            else
            {
                if ((gEntityInfo[arg0].xPosBg2 - 0xDC) < gEntityInfo[0].xPosBg2)
                {
                    if (gUnk_03004C20.level != 8)
                    {
                        if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                        {
                            if (gEntityInfo[arg0].unkC_2 == 0)
                            {
                                gEntityInfo[arg0].xPosBg2 += 1;
                            }
                            else
                            {
                                gEntityInfo[arg0].xPosBg2 -= 1;
                            }
                            gEntityInfo[arg0].yPosBg2 += 1;
                        }

                        sp0 = Call_sub_08014184(gEntityInfo[arg0].xPosBg2 + 8, gEntityInfo[arg0].yPosBg2, 0x18);
                        if (sp0.unk0 != 0xFFFF)
                        {
                            sp34 = gUnk_03004654[0x1B];
                        }
                        else
                        {
                            sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 4) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                        }

                        sp4 = Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18);
                        if (sp4.unk0 != 0xFFFF)
                        {
                            sp30 = gEntityInfo[arg0].yPosBg2 = sp4.unk0;
                        }
                    }
                    else
                    {
                        goto block_128;
                    }
                }
                else if (gUnk_03004C20.level == 8)
                {
block_128:
                    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                    {
                        if (gEntityInfo[arg0].unkC_2 == 0)
                        {
                            gEntityInfo[arg0].xPosBg2 += 1;
                        }
                        else
                        {
                            gEntityInfo[arg0].xPosBg2 -= 1;
                        }
                        gEntityInfo[arg0].yPosBg2 += 1;
                    }

                    sp0 = Call_sub_08014184(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18);
                    if (sp0.unk0 != 0xFFFF)
                    {
                        sp34 = gUnk_03004654[0x1B];
                    }
                    else
                    {
                        sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 4) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                    }

                    spC = Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18);
                    if (spC.unk0 != 0xFFFF)
                    {
                        sp30 = gEntityInfo[arg0].yPosBg2 = spC.unk0;
                    }
                }
            }

            if (gEntityInfo[arg0].unkD_6 == 1)
            {
                gEntityInfo[arg0].unkD_6 = 2;
            }
            /* fallthrough */
        case 20:
            for (sp28 = gUnk_030034CC; sp28 <= gUnk_0300529C; sp28++)
            {
                if (gEntityInfo[sp28].unkF > 0x1A)
                {
                    continue;
                }

                if (gEntityInfo[sp28].unkF == 0x19)
                {
                    continue;
                }

                switch (gEntityInfo[sp28].unk11 - 5)
                {
                    case 0x20:
                    case 0x6A:
                        if (((gEntityInfo[arg0].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[arg0].xPosBg2 + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) && ((gEntityInfo[arg0].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x17)))
                        {
                            if ((gEntityInfo[arg0].unk11 != 6) && (gEntityInfo[arg0].unk11 != 8))
                            {
                                if (((sp2C - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((sp2C + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) && ((sp30 - 0x18) < gEntityInfo[sp28].yPosBg2) && (sp30 > (gEntityInfo[sp28].yPosBg2 - 0x17)))
                                {
                                    m4aSongNumStart(0x2B);
                                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                                    return;
                                }
                            }

                            if (gEntityInfo[arg0].unk11 == 8)
                            {
                                if (gEntityInfo[arg0].unkC_4 == 1)
                                {
                                    if (gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[sp28].yPosBg2 - 0x16))
                                    {
                                        sp34 = gUnk_03004654[0x1B];
                                    }
                                }
                                else if ((gEntityInfo[arg0].yPosBg2 - 0x16) >= gEntityInfo[sp28].yPosBg2)
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            else
                            {
                                sp34 = gUnk_03004654[0x1B];
                            }
                        }

                        if ((gEntityInfo[arg0].unk11 == 6) || (gEntityInfo[arg0].unk11 == 8))
                        {
                            if (gEntityInfo[sp28].unkF == 0)
                            {
                                if (((gEntityInfo[arg0].xPosBg2 - 0xB) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[arg0].xPosBg2 + 0xB) > (gEntityInfo[sp28].xPosBg2 - 0xF)) && ((gEntityInfo[arg0].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && ((gEntityInfo[arg0].yPosBg2 - 0x14) > gEntityInfo[sp28].yPosBg2))
                                {
                                    gEntityInfo[arg0].unkD_6 = 1;
                                }
                            }
                        }
                        break;

                    case 0x3C:   
                        if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[arg0].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0)
                            {
                                sp34 = gUnk_03004654[0x1B];
                            }
                        }
                        break;

                    case 0x37:
                        if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((gEntityInfo[arg0].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 8)) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654[0x1B];
                        }
                        break;

                    case 0x0:
                        if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[arg0].xPosBg2 + 8) > ((gEntityInfo[sp28].xPosBg2 - 0x10))) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654[0x1B];
                        }
                        break;

                    case 0x36:
                        if (gEntityInfo[sp28].unkC_2 == 1)
                        {
                            var_sb = 8;
                        }
                        else
                        {
                            var_sb = 0;
                        }
                        if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + var_sb)) && ((gEntityInfo[arg0].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 8 + var_sb)) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654[0x1B];
                        }
                        break;

                    case 0x3A:
                        if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((gEntityInfo[arg0].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xC)) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                        {
                            sp34 = gUnk_03004654[0x1B];
                        }
                        break;

                    case 0x33:
                        if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x20)) && ((gEntityInfo[arg0].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x20)) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x16)))
                        {
                            sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                            return;
                        }
                        break;

                    case 0x30:
                    case 0x6B:
                        if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xF)) && ((gEntityInfo[arg0].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xF)) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654[0x1B];
                        }
                        break;

                    case 0x19:
                        if (((gEntityInfo[arg0].xPosBg2 - 4) < (gEntityInfo[sp28].xPosBg2 + 0x1E)) && ((gEntityInfo[arg0].xPosBg2 + 4) > (gEntityInfo[sp28].xPosBg2 - 0x1E)))
                        {
                            if (gEntityInfo[sp28].unkF == 0)
                            {
                                gEntityInfo[arg0].unkF = 0x1C;
                                gEntityInfo[arg0].unk10 = 0;
                                gEntityInfo[arg0 + 3].xPosBg2 = gEntityInfo[arg0].xPosBg2;
                                gEntityInfo[arg0 + 3].yPosBg2 = gEntityInfo[arg0].yPosBg2;
                                gEntityInfo[arg0 + 3].unkC_2 = gEntityInfo[arg0].unkC_2;
                                gEntityInfo[arg0 + 3].unkF = 0x11;
                            }
                        }
                        break;
                }                        
            }

            if ((gUnk_03004654[0x1A] <= sp34) || ((gUnk_03004654[0x1] <= sp34) && (gUnk_03004654[0x14] >= sp34) && (gUnk_03004C20.unk11 == 0)))
            {
                if (gEntityInfo[arg0].unkF != 0x14)
                {
                    if (gEntityInfo[arg0].unk11 == 0x76 || gEntityInfo[arg0].unk11 == 0x7B)
                    {
                        gEntityInfo[arg0].xPosBg2 = sp2C;
                        gEntityInfo[arg0].unkC_2 ^= 1;
                    }
                    else if (gEntityInfo[arg0].unk11 == 0xB)
                    {
                        gEntityInfo[arg0].xPosBg2 = sp2C;
                        gEntityInfo[arg0].unkC_2 ^= 1;
                    }
                    else if (gEntityInfo[arg0].unk11 == 0x77 || gEntityInfo[arg0].unk11 == 0x6 || gEntityInfo[arg0].unk11 == 0x7C)
                    {
                        temp_r6_4 = gEntityInfo[arg0].unk8.split.unk9;
                        if (gEntityInfo[arg0].unk8.split.unk9 < (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - 1))
                        {
                            gEntityInfo[arg0].unk8.split.unk9 = (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - gEntityInfo[arg0].unk8.split.unk9) - 1;

                            if (gEntityInfo[arg0].unk11 == 6)
                            {
                                gEntityInfo[arg0].unkC_4 ^= 1;
                                gEntityInfo[arg0].xPosBg2 = sp2C;
                            }
                            else if (gEntityInfo[arg0].unk8.split.unk9 > 5)
                            {
                                gEntityInfo[arg0].unkC_2 ^= 1;
                                gEntityInfo[arg0].xPosBg2 = sp2C;
                            }
                            else
                            {
                                gEntityInfo[arg0].unk8.split.unk9 = temp_r6_4;
                                break;
                            }
                        }
                    }
                    else
                    {
                        if (gEntityInfo[arg0].unk8.split.unk9 < (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - 1))
                        {
                            gEntityInfo[arg0].yPosBg2 = sp30;
                            gEntityInfo[arg0].unkC_4 ^= 1;
                            gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4 + ~gEntityInfo[arg0].unk8.split.unk9;
                        }
                    }
                }
            }
            else
            {
                if ((gUnk_03004654[0x18] == sp34) || (gUnk_03004654[0x19] == sp34))
                {
                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                    break;
                }
            }

            if ((gEntityInfo[arg0].unk11 == 0x76) || (gEntityInfo[arg0].unk11 == 0x7B) || (gEntityInfo[arg0].unkF == 0x14) || (gEntityInfo[arg0].unkD_6 != 0))
            {
                if (gEntityInfo[arg0].unkD_6 == 1)
                {
                    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                    {
                        gEntityInfo[arg0].yPosBg2 += 1;
                    }
                }
                else if (gEntityInfo[arg0].unkD_6 == 2)
                {
                    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                    {
                        gEntityInfo[arg0].yPosBg2 -= 1;
                        if (gEntityInfo[arg0].yPosBg2 <= gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2)
                        {
                            if (gEntityInfo[arg0].unk11 == 8)
                            {
                                gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                                gEntityInfo[arg0].unkC_4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5;
                            }
                            gEntityInfo[arg0].unkD_6 = 0;
                        }
                    }
                }
                else
                {
                    gEntityInfo[arg0].yPosBg2 += 2;
                }

                sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)];

                sp34 = MAX(sp34, gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)]);

                sp34 = MAX(sp34, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)]);

                for (sp28 = gUnk_03000804; sp28 <= gUnk_0300082C; sp28++)
                {
                    if (gEntityInfo[sp28].unkF > 0x1A)
                    {
                        continue;
                    }

                    if (gEntityInfo[sp28].unkF == 0x19)
                    {
                        continue;
                    }

                    switch (gEntityInfo[sp28].unk11 - 0x25)
                    {
                        case 0x0:
                        case 0x4A:
                            if (((gEntityInfo[arg0].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[arg0].xPosBg2 + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                            {
                                if (gEntityInfo[arg0].unk11 > 0x75)
                                {
                                    gEntityInfo[arg0].yPosBg2 = gEntityInfo[sp28].yPosBg2 - 0x19;
                                    return;
                                }

                                if (gEntityInfo[arg0].yPosBg2 < (gEntityInfo[sp28].yPosBg2 - 0x17))
                                {
                                    gEntityInfo[arg0].yPosBg2 = gEntityInfo[sp28].yPosBg2 - 0x19;
                                }
                            }
                            break;

                        case 0x1C:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[arg0].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) && ((gEntityInfo[arg0].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                            {
                                if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0)
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x1A:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0xC))
                            {
    
                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0xC) - 0x18))
                            {
    
                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {
    
                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x10))
                                {
    
                                }
                                else
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x2:
                        case 0x3:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) >= (gEntityInfo[sp28].xPosBg2 + 0x10))
                            {
    
                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 7) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0x10) - 0x20))
                            {
    
                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {
    
                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x10))
                                {
    
                                }
                                else
                                {
                                    gEntityInfo[arg0].yPosBg2 = (u16) (gEntityInfo[sp28].yPosBg2 + 0xFFF0);
                                }
                            }
                            break;

                        case 0x13:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x20)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0x20) - 0x40)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x16)))
                                {
                                    sp34 = gUnk_03004654[0x18];
                                }
                            }
                            break;

                        case 0x10:
                        case 0x4B:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xF)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0xF) - 0x1E)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x20)))
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x19:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0xC) - 0x18)))
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (s32) gEntityInfo[sp28 + 1].yPosBg2)
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 8))
                                    {
                                        if ((u32) gEntityInfo[arg0].unk11 <= 0x7A)
                                        {
                                            sp34 = gUnk_03004654[0x1B];
                                        }
                                        else
                                        {
                                            gEntityInfo[arg0].yPosBg2 = (u16) (gEntityInfo[sp28].yPosBg2 + 0xFFF8);
                                            return;
                                        }
                                    }
                                }
                            }
                            break;
                    }
                }

                if ((gUnk_03004654[0x18] == sp34) || (gUnk_03004654[0x19] == sp34))
                {
                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                    return;
                }
                if ((u32) gUnk_03004654[0x1A] <= sp34)
                {
                    if (gEntityInfo[arg0].unk8.split.unk9 == 1)
                    {
                        gEntityInfo[arg0].unk8.split.unk9 = 2U;
                    }
                    gEntityInfo[arg0].yPosBg2 = sp30 + 3;
                    gEntityInfo[arg0].yPosBg2 &= 0xFFF8;
                    return;
                }
            }
            break;

        case 19:
            if (gUnk_03004C20.unkB == 0)
            {
                if (gEntityInfo[arg0].unk11 == 0x7A)
                {
                    if (!(gUnk_03004C20.globalFrameCounter & 0xF))
                    {
                        m4aSongNumStart(0x9E);
                    }
                    if (gUnk_03005220.unk38 != 0)
                    {
                        gEntityInfo[arg0].unk8.split.unk9 -= 1;
                        if (gEntityInfo[arg0].unk8.split.unk9 == 0)
                        {
                            sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                            m4aSongNumStart(0x2B);
                            return;
                        }
                    }
                    else
                    {
                        gUnk_03005220.unk3C = 0;
                        gUnk_03005220.unk38 = 1;
                        sub_08025B78(0, 0xE);
                        gEntityInfo[arg0].unk8.split.unk9 = 0x87;
                        gUnk_03005220.unk3D = 0;
                    }
                }
                if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[arg0].xPosBg2) <= 7)
                {
                    gEntityInfo[arg0].xPosBg2 = gEntityInfo[0].xPosBg2;
                    if (Abs(gEntityInfo[0].yPosBg2 - gEntityInfo[arg0].yPosBg2) <= 0x18)
                    {
                        sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x1A) >> 3) * gBgInfo[2].hLength)];

                        sp34 = MAX(sp34, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x1A) >> 3) * gBgInfo[2].hLength)]);
                    }
                    if (sp34 <= gUnk_03004654[0x1A])
                    {
                        gOamAffineBuffer[gOamAffineMatrixNum].pd = ReciprocalQ8(gBg2YMag);
                        if (Abs((gEntityInfo[0].yPosBg2 - gEntityInfo[arg0].yPosBg2) - 0x18) <= 7)
                        {
                            gUnk_03005220.unk43 = 1;
                        }
                        gEntityInfo[arg0].yPosBg2 += ((gEntityInfo[0].yPosBg2 - 0x18 - gEntityInfo[arg0].yPosBg2) >> 1);
                    }
                    else
                    {
                        if (Abs((gEntityInfo[0].yPosBg2 - gEntityInfo[arg0].yPosBg2) - 0x18) <= 3)
                        {
                            gUnk_03005220.unk43 = 1;
                        }
                        else
                        {
                            gUnk_03005220.unk43 = 2;
                        }
                        gOamAffineBuffer[gOamAffineMatrixNum].pd = ReciprocalQ8(gBg2YMag) + (Abs((gEntityInfo[0].yPosBg2 - gEntityInfo[arg0].yPosBg2) - 0x18) * 0x10);
                    }
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 += ((gEntityInfo[0].xPosBg2 - gEntityInfo[arg0].xPosBg2) >> 2);
                }
            }
            else
            {
                if (Abs(gEntityInfo[0].xPosBg2 - 0x14 - gEntityInfo[arg0].xPosBg2) <= 9)
                {
                    gEntityInfo[arg0].yPosBg2 = gUnk_030034FC[(gUnk_030034FC[0] & 0xF) + 1];
                    if ((gEntityInfo[0].yPosBg2 + 0x10) < (s32) gEntityInfo[arg0].yPosBg2)
                    {
                        gEntityInfo[arg0].yPosBg2 = (u16) (gEntityInfo[0].yPosBg2 + 0x10);
                    }
                    else
                    {
                        if ((gEntityInfo[0].yPosBg2 - 0x10) > (s32) gEntityInfo[arg0].yPosBg2)
                        {
                            gEntityInfo[arg0].yPosBg2 = (u16) (gEntityInfo[0].yPosBg2 - 0x10);
                        }
                    }
                    gEntityInfo[arg0].xPosBg2 = gEntityInfo[0].xPosBg2 - 0x14;
                    gUnk_03005220.unk43 = 1;
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 += ((gEntityInfo[0].xPosBg2 - 0x14 - gEntityInfo[arg0].xPosBg2) >> 2);
                }
            }

            for (sp28 = gUnk_030047B4; sp28 <= gUnk_03003640; sp28++)
            {
                if (gEntityInfo[sp28].unkF > 0x1A)
                {
                    continue;
                }

                if (gEntityInfo[sp28].unkF == 0x19)
                {
                    continue;
                }

                switch (gEntityInfo[sp28].unk11 - 6)
                {
                    case 0x1F:
                    case 0x69:
                        if ((u32) gEntityInfo[0].yPosBg2 < (u32) gEntityInfo[arg0].yPosBg2)
                        {

                        }
                        else
                        {
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[sp28].xPosBg2 + 7))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[sp28].xPosBg2 - 0xF))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x18))
                                {

                                }
                                else
                                {
                                    gUnk_03005220.unk43 = 2;
                                    gEntityInfo[arg0].yPosBg2 = gEntityInfo[sp28].yPosBg2 + 0x14;
                                    gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x1F0 - ((gEntityInfo[0].yPosBg2 - (gEntityInfo[sp28].yPosBg2 + 0x18)) * 8);
                                }
                            }
                        }
                        break;

                    case 0x0:
                    case 0x2:
                    case 0x5:
                    case 0x70:
                    case 0x71:
                    case 0x72:
                    case 0x73:
                    case 0x74:
                    case 0x75:
                    case 0x76:
                    case 0x77:
                        if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 8))
                        {
                            break;
                        }
                        if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 8) - 0x10))
                        {
                            break;
                        }
                        if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                        {
                            break;
                        }
                        if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x14))
                        {
                            break;
                        }
                        if (arg0 == sp28)
                        {
                            break;
                        }
                        m4aSongNumStart(0x2B);
                        if (gEntityInfo[sp28].unk11 != 6)
                        {
                            if (gEntityInfo[sp28].unk11 != 8)
                            {
                                sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, (u8) sp28);
                                sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                                
                            }
                            else
                            {
                                sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                            }
                        }
                        else
                        {
                            sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                        }                        
                        return;

                    case 0x21:
                    case 0x23:
                    case 0x24:
                    case 0x25:
                        if ((u32) gEntityInfo[0].yPosBg2 < (u32) gEntityInfo[arg0].yPosBg2)
                        {

                        }
                        else
                        {
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xB) >= (s32) (gEntityInfo[sp28].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 0xB) <= (s32) (gEntityInfo[sp28].xPosBg2 - 0x10))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[sp28].yPosBg2 - 0x10))
                                    {

                                    }
                                    else
                                    {
                                        gUnk_03005220.unk43 = 2;
                                        gEntityInfo[arg0].yPosBg2 = gEntityInfo[sp28].yPosBg2 + 0x18;
                                        gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x1F0 - ((gEntityInfo[0].yPosBg2 - (gEntityInfo[sp28].yPosBg2 + 0x18)) * 8);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x2F:
                    case 0x6A:
                        if ((u32) gEntityInfo[0].yPosBg2 < (u32) gEntityInfo[arg0].yPosBg2)
                        {

                        }
                        else
                        {
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[sp28].xPosBg2 + 0xF))
                            {

                            }
                            else if ((s32) (gEntityInfo[arg0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[sp28].xPosBg2 - 0xF))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[sp28].yPosBg2 - 0x20))
                                    {

                                    }
                                    else
                                    {
                                        gUnk_03005220.unk43 = 2;
                                        gEntityInfo[arg0].yPosBg2 = gEntityInfo[sp28].yPosBg2 + 0x18;
                                        gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x1F0 - ((gEntityInfo[0].yPosBg2 - (gEntityInfo[sp28].yPosBg2 + 0x18)) * 8);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x39:
                        if (gUnk_03003610[0].unk2 != arg0)
                        {

                        }
                        else
                        {
                            sub_08025B78(sp28, 0);
                            gUnk_03003610[0].unk2 = 0;
                        }
                        break;

                    case 0x12:
                        if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0x14))
                        {

                        }
                        else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0x14) - 0x28))
                        {

                        }
                        else
                        {
                            if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 0xC)) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) ((gEntityInfo[sp28].yPosBg2 - 0xC) - 0x28)) && ((gEntityInfo[sp28].unkF == 0xE) || (gEntityInfo[sp28].unkF == 0)))
                            {
                                temp_r5_22 = Abs(gEntityInfo[sp28].xPosBg2 - gEntityInfo[arg0].xPosBg2);
                                temp_r1_52 = Abs(gEntityInfo[sp28].yPosBg2 - (gEntityInfo[arg0].yPosBg2 - 0x20));
                                if (temp_r5_22 > temp_r1_52)
                                {
                                    gEntityInfo[sp28].unk8.split.unk8 = 0xFF;
                                    gEntityInfo[sp28].unk8.split.unk9 = (temp_r1_52 * 0xFF) / temp_r5_22;
                                }
                                else
                                {
                                    gEntityInfo[sp28].unk8.split.unk8 = (temp_r5_22 * 0xC0) / temp_r1_52;
                                    gEntityInfo[sp28].unk8.split.unk9 = 0xFF;
                                }
                                if ((u32) gEntityInfo[arg0].xPosBg2 > (u32) gEntityInfo[sp28].xPosBg2)
                                {
                                    gEntityInfo[sp28].unkC_4 = 1;
                                }
                                else
                                {
                                    gEntityInfo[sp28].unkC_4 = 0;
                                }
                                if ((u32) gEntityInfo[arg0].yPosBg2 > (u32) gEntityInfo[sp28].yPosBg2)
                                {
                                    gEntityInfo[sp28].unkC_4 |= 2;
                                }
                                else
                                {
                                    gEntityInfo[sp28].unkC_4 &= 1;
                                }
                                gEntityInfo[sp28].unkF = 0;
                                sub_080145A8(1);
                                sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                            }
                        }
                        break;
                }
            }
            break;

        case 16:
        case 17:
            if (((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[0].xPosBg2 + 0xC)) || ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[0].xPosBg2 + 0xC) - 0x18)) || ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[0].yPosBg2) || ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[0].yPosBg2 - 0x18)))
            {
            case 21:
            case 22:
                if ((gEntityInfo[arg0].unkF == 0x15) || (gEntityInfo[arg0].unkF == 0x10))
                {
                    gEntityInfo[arg0].xPosBg2 += gUnk_03003508;
                    if (gUnk_03004C20.unkA == 1)
                    {
                        sp4 = Call_sub_08014184(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18);
                        if (sp4.unk0 != 0xFFFF)
                        {
                            sp34 = gUnk_03004654[0x1B];
                        }
                        else
                        {
                            sp14 = Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18);
                            if (sp14.unk0 == sp4.unk0)
                            {
                                goto block_472;
                            }
                            gEntityInfo[arg0].yPosBg2 = sp14.unk0;
                        }
                    }
                    else
                    {
    block_472:
                        sp34 = MAX(sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)], gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]);
                    }
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 -= gUnk_03003508;
                    if (gUnk_03004C20.unkA == 1)
                    {
                        sp14 = Call_sub_08014184(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18);
                        if (sp14.unk0 == 0xFFFF)
                        {
                            sp1C = Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18);
                            if (sp1C.unk0 != sp14.unk0)
                            {
                                gEntityInfo[arg0].yPosBg2 = sp1C.unk0;
                            }
                            else
                            {
                                goto block_478;
                            }
                        }
                        else
                        {
                            sp34 = gUnk_03004654[0x1B];
                        }
                    }
                    else
                    {
    block_478:
                        sp34 = MAX(sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)], gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]);
                    }
                }
                
                for (sp28 = gUnk_030008F4; sp28 <= gUnk_030008F0; sp28++)
                {
                    if (gEntityInfo[sp28].unkF > 0x1A)
                    {
                        continue;
                    }

                    if (gEntityInfo[sp28].unkF == 0x19)
                    {
                        continue;
                    }

                    switch (gEntityInfo[sp28].unk11 - 5)
                    {
                        case 0x20:
                        case 0x6A:
                            if (((gEntityInfo[arg0].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 0xC) + 0x18) > (s32) ((gEntityInfo[sp28].xPosBg2 + 7) - 0x16)))
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2)
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18))
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 >= (s32) ((gEntityInfo[sp28].yPosBg2 - 0x18) + 4))
                                        {
                                            sp34 = gUnk_03004654[0x1B];
                                        }
                                        else
                                        {
                                            gEntityInfo[arg0].yPosBg2 = (u16) (gEntityInfo[sp28].yPosBg2 + 0xFFE8);
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x1:
                        case 0x3:
                        case 0x6:
                        case 0x71:
                        case 0x72:
                        case 0x73:
                        case 0x74:
                        case 0x75:
                        case 0x76:
                        case 0x77:
                        case 0x78:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 8) - 0x10)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x18)) && (arg0 != sp28) && (gEntityInfo[sp28].unkF != 0x13))
                                {
                                    sp34 = 0xFF;
                                    if ((gEntityInfo[sp28].unk11 != 6) && (gEntityInfo[sp28].unk11 != 8))
                                    {
                                        sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, (u8) sp28);
                                    }
                                    else
                                    {
                                        sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, 0);
                                    }
                                }
                            }
                            break;

                        case 0x3C:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0x10) - 0x20)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x20)) && (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0))
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x6C:
                        case 0x6D:
                        case 0x6E:
                        case 0x6F:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (s32) (gEntityInfo[sp28].xPosBg2 + 2)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) (gEntityInfo[sp28].xPosBg2 - 2)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x10)))
                                {
                                    sp34 = 0xFF;
                                    sub_0801EAA4((u8) sp28);
                                }
                            }
                            break;

                        case 0x37:
                            if ((s32) (gEntityInfo[arg0].xPosBg2 - 0xB) < (gEntityInfo[sp28].xPosBg2 + 8))
                            {
                                if ((s32) (gEntityInfo[arg0].xPosBg2 + 0xA) > (gEntityInfo[sp28].xPosBg2 - 8))
                                {
                                    if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2)
                                    {
                                        if (((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)) && (((s32) (sp2C - 0xB) >= (gEntityInfo[sp28].xPosBg2 + 8)) || ((s32) (sp2C + 0xA) <= (gEntityInfo[sp28].xPosBg2 - 8)) || ((s32) (sp30 - 0x18) >= (s32) gEntityInfo[sp28].yPosBg2) || (sp30 <= (gEntityInfo[sp28].yPosBg2 - 0x20))))
                                        {
                                            sp34 = gUnk_03004654[0x1B];
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x0:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0x10) - 0x20)))
                            {
                                if ((gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x20))
                                {

                                }
                                else
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x36:
                            if (gEntityInfo[sp28].unkC_2 == 1)
                            {
                                var_sb = 8;
                            }
                            else
                            {
                                var_sb = 0;
                            }
                            if (((s32) (gEntityInfo[arg0].xPosBg2 - 0xF) < (s32) (gEntityInfo[sp28].xPosBg2 + var_sb)) && ((s32) (gEntityInfo[arg0].xPosBg2 + 7) > (s32) (gEntityInfo[sp28].xPosBg2 - 8 + var_sb)) && ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x20)))
                            {
                                if (gEntityInfo[sp28].unkC_4 == 0)
                                {
                                    if (((gEntityInfo[arg0].unkF == 0x15) && (gEntityInfo[sp28].unkC_2 == 0)) || ((gEntityInfo[arg0].unkF == 0x16) && (gEntityInfo[sp28].unkC_2 == 1)))
                                    {
                                        DmaCopy16(3, &gUnk_080B9368, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[sp28 - 0xD].tileNum * 0x20), 0x100);
                                        gEntityInfo[sp28].unkC_4 = 1;
                                        m4aSongNumStart(0x7D);
                                    }
                                    else
                                    {
                                        sp34 = gUnk_03004654[0x1B];
                                        m4aSongNumStart(0x2B);
                                    }
                                }
                            }
                            else
                            {
                                if ((((u8) gEntityInfo[sp28].unkC_4) == 1) && (((u8) gUnk_03005220.unk3_7) == 0))
                                {
                                    DmaCopy16(3, &gUnk_08062148, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[sp28 - 0xD].tileNum * 0x20), 0x100);
                                    gEntityInfo[sp28].unkC_4 = 0;
                                }
                            }
                            break;

                        case 0x3A:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0xC) - 0x18)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x18)) && (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0))
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x22:
                        case 0x23:
                        case 0x24:
                        case 0x25:
                        case 0x26:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0x10) - 0x20)))
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2)
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x10))
                                    {
                                        if ((s32) gEntityInfo[arg0].yPosBg2 >= (s32) ((gEntityInfo[sp28].yPosBg2 - 0x10) + 6))
                                        {
                                            sp34 = gUnk_03004654[0x1B];
                                        }
                                        else
                                        {
                                            gEntityInfo[arg0].yPosBg2 = (u16) (gEntityInfo[sp28].yPosBg2 + 0xFFF0);
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x35:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0x10) - 0x20)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x40)))
                                {
                                    sp34 = 0xFF;
                                }
                            }
                            break;

                        case 0x31:
                        case 0x70:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (s32) (gEntityInfo[sp28].xPosBg2 + 3))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) (gEntityInfo[sp28].xPosBg2 - 3))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (gEntityInfo[sp28].yPosBg2 - 0xC))
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[sp28].yPosBg2 - 0xC) - 8))
                                {

                                }
                                else
                                {
                                    if (gEntityInfo[sp28].unkC_4 == 3)
                                    {
                                        gEntityInfo[arg0].unkF = 0x10;
                                    }
                                    else if (gEntityInfo[sp28].unkC_4 == 1)
                                    {
                                        gEntityInfo[arg0].unkF = 0x11;
                                    }
                                    else if (gEntityInfo[sp28].unkC_4 == 0)
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
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0xC) - 0x18))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[sp28 + 1].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 8))
                                {

                                }
                                else
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x30:
                        case 0x6B:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0xF))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0xF) - 0x1E))
                            {

                            }
                            else
                            {
                                if ((gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x20))
                                {

                                }
                                else
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x1D:
                            sp38 = 0;
                            if (gUnk_03005400.unkC == 0)
                            {

                            }
                            else if (gUnk_03005400.unk8_0 != 0)
                            {

                            }
                            else
                            {
                                s8 var_0, var_1, var_2, var_3;
                                if (gUnk_03004C20.world == 2)
                                {
                                    var_0 = gUnk_08116A36[gUnk_03005400.unkC][0];
                                    var_1 = gUnk_08116A36[gUnk_03005400.unkC][1];
                                    var_2 = gUnk_08116A36[gUnk_03005400.unkC][2];
                                    var_3 = gUnk_08116A36[gUnk_03005400.unkC][3];
                                }
                                else
                                {
                                    var_0 = gUnk_081168C4[gUnk_03004C20.world - 1][0];
                                    var_1 = gUnk_081168C4[gUnk_03004C20.world - 1][1];
                                    var_2 = gUnk_081168C4[gUnk_03004C20.world - 1][2];
                                    var_3 = gUnk_081168C4[gUnk_03004C20.world - 1][3];
                                }
                                if (gEntityInfo[sp28].unkC_2 == 0)
                                {
                                    if ((gEntityInfo[sp28].xPosBg2 - - var_0) < (gEntityInfo[arg0].xPosBg2 + 4))
                                    {
                                        if ((gEntityInfo[sp28].xPosBg2 + var_1) > (gEntityInfo[arg0].xPosBg2 - 4))
                                        {
                                            if (((gEntityInfo[sp28].yPosBg2 + var_2) < gEntityInfo[arg0].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + var_3) > (gEntityInfo[arg0].yPosBg2 - 0x14)))
                                            {
                                                sp38 = 1;
                                            }
                                        }
                                    }
                                }
                                else
                                {
                                    if ((gEntityInfo[sp28].xPosBg2 - var_1) < (gEntityInfo[arg0].xPosBg2 + 4))
                                    {
                                        if ((gEntityInfo[sp28].xPosBg2 - var_0) > (gEntityInfo[arg0].xPosBg2 - 4))
                                        {
                                            if (((s32) (gEntityInfo[sp28].yPosBg2 + var_2) < gEntityInfo[arg0].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + var_3) > (gEntityInfo[arg0].yPosBg2 - 0x14)))
                                            {
                                                sp38 = 1;
                                            }
                                        }
                                    }
                                }
                                if ((sp38 == 1) && (gUnk_03005400.unk8_6 == 0))
                                {
                                    gUnk_03005400.unkC -= 1;
                                    if (gUnk_03005400.unkC != 0)
                                    {
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x11;
                                    }
                                    else
                                    {
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x1C;
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].unk10 = 0;
                                    }
                                    if (gUnk_03005400.unkC == 2)
                                    {
                                        sub_08025B78(0xD, 1);
                                    }
                                    gEntityInfo[0x11].unkF = 0x19;
                                    gEntityInfo[0x11].xPosBg2 = gEntityInfo[arg0].xPosBg2;
                                    gEntityInfo[0x11].yPosBg2 = gEntityInfo[arg0].yPosBg2 + 0x10;
                                    gUnk_03005400.unk9 = 1;
                                    sub_0803D140(1);
                                    gUnk_03005400.unk0 = 0;
                                    sub_08025B78(sp28, 1);
                                    m4aSongNumStart(0x63);
                                    gUnk_03005400.unkA = 1;
                                    gUnk_03005400.unk10 = 0;
                                    gUnk_03005400.unk8_6 = 1;
                                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                                }
                                else
                                {
                                    s8 var_0, var_1, var_2, var_3;
                                    if (gUnk_03004C20.world == 2)
                                    {
                                        var_0 = gUnk_08116A26[gUnk_03005400.unkC][0];
                                        var_1 = gUnk_08116A26[gUnk_03005400.unkC][1];
                                        var_2 = gUnk_08116A26[gUnk_03005400.unkC][2];
                                        var_3 = gUnk_08116A26[gUnk_03005400.unkC][3];
                                    }
                                    else
                                    {
                                        var_0 = gUnk_081168AC[gUnk_03004C20.world - 1][0];
                                        var_1 = gUnk_081168AC[gUnk_03004C20.world - 1][1];
                                        var_2 = gUnk_081168AC[gUnk_03004C20.world - 1][2];
                                        var_3 = gUnk_081168AC[gUnk_03004C20.world - 1][3];
                                    }
                                    if ((gEntityInfo[sp28].xPosBg2 + var_0) >= (gEntityInfo[arg0].xPosBg2 + 4))
                                    {

                                    }
                                    else if ((gEntityInfo[sp28].xPosBg2 + var_1) <= (gEntityInfo[arg0].xPosBg2 - 4))
                                    {

                                    }
                                    else
                                    {
                                        if ((gEntityInfo[sp28].yPosBg2 + var_2) >= gEntityInfo[arg0].yPosBg2)
                                        {

                                        }
                                        else if ((gEntityInfo[sp28].yPosBg2 + var_3) <= (gEntityInfo[arg0].yPosBg2 - 0x14))
                                        {

                                        }
                                        else
                                        {
                                            m4aSongNumStart(0x2B);
                                            sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                                            if (gUnk_03005400.unk8_6 != 0)
                                            {

                                            }
                                            else if (gUnk_03004C20.world != 1)
                                            {

                                            }
                                            else if ((gUnk_03005400.unkA >= 4) && (gUnk_03005400.unkA <= 8))
                                            {

                                            }
                                            else
                                            {
                                                gUnk_03005400.unkA = 0xE;
                                                sub_08025B78(sp28, 0x11);
                                            }
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x12:
                            var_sb_4 = 0;
                            if ((gEntityInfo[sp28].unkF != 0) && (gEntityInfo[sp28].unkF != 3) && (gEntityInfo[sp28].unkF != 4))
                            {
                                if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 4)
                                {

                                }
                                else
                                {
                                    if (sp28 == 0x15)
                                    {
                                        var_sb_4 = 0x10;
                                    }
                                    if ((gEntityInfo[arg0].xPosBg2 - 8) >= (s32) (gEntityInfo[sp28].xPosBg2 + 0x14 + var_sb_4))
                                    {

                                    }
                                    else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) (gEntityInfo[sp28].xPosBg2 - 0x14 - var_sb_4))
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) (gEntityInfo[sp28].yPosBg2 - 0xA + var_sb_4))
                                        {

                                        }
                                        else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x36 - var_sb_4))
                                        {

                                        }
                                        else
                                        {
                                            sp34 = gUnk_03004654[0x1B];
                                            gEntityInfo[sp28].unk8.split.unk8 = 1;
                                            gEntityInfo[sp28].unk8.split.unk9 |= 1;
                                            gEntityInfo[sp28].unkF = 0x13;
                                            sub_08025B78(sp28, 4);
                                            gEntityInfo[0x11].unkF = 0x19;
                                            gEntityInfo[0x11].xPosBg2 = (u16) gEntityInfo[sp28].xPosBg2;
                                            gEntityInfo[0x11].yPosBg2 = (u16) gEntityInfo[sp28].yPosBg2;
                                            if (gEntityAnimationInfo[0x15 - gUnk_0300363C].state != 4)
                                            {

                                            }
                                            else
                                            {
                                                gUnk_03005400.unkC -= 1;
                                                if (gUnk_03005400.unkC != 0)
                                                {
                                                    gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x11;
                                                }
                                                else
                                                {
                                                    gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x1C;
                                                    gEntityInfo[gUnk_03005400.unkC + 0xD].unk10 = 0;
                                                }
                                                if (gUnk_03005400.unkC != 2)
                                                {

                                                }
                                                else
                                                {
                                                    sub_08025B78(0xD, 1);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x13:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0x14))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0x14) - 0x28))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (gEntityInfo[sp28].yPosBg2 - 0xC))
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[sp28].yPosBg2 - 0xC) - 0x28))
                                {

                                }
                                else if (gEntityInfo[sp28].unkF != 0xE)
                                {

                                }
                                else
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                    temp_r5_44 = Abs(gEntityInfo[sp28].xPosBg2 - gEntityInfo[arg0].xPosBg2);
                                    temp_r1_84 = Abs(gEntityInfo[sp28].yPosBg2 - (gEntityInfo[arg0].yPosBg2 - 0x20));
                                    if (temp_r5_44 > temp_r1_84)
                                    {
                                        gEntityInfo[sp28].unk8.split.unk8 = 0xFF;
                                        gEntityInfo[sp28].unk8.split.unk9 = (temp_r1_84 * 0xFF) / temp_r5_44;
                                    }
                                    else
                                    {
                                        gEntityInfo[sp28].unk8.split.unk8 = (temp_r5_44 * 0xC0) / temp_r1_84;
                                        gEntityInfo[sp28].unk8.split.unk9 = 0xFF;
                                    }
                                    if (gEntityInfo[arg0].xPosBg2 > gEntityInfo[sp28].xPosBg2)
                                    {
                                        gEntityInfo[sp28].unkC_4 = 1;
                                    }
                                    else
                                    {
                                        gEntityInfo[sp28].unkC_4 = 0;
                                    }
                                    if (gEntityInfo[arg0].yPosBg2 > gEntityInfo[sp28].yPosBg2)
                                    {
                                        gEntityInfo[sp28].unkC_4 |= 2;
                                    }
                                    else
                                    {
                                        gEntityInfo[sp28].unkC_4 &= 1;
                                    }
                                    gEntityInfo[sp28].unkF = 0;
                                }
                            }
                            break;

                        case 0x16:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0x14))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0x14) - 0x28))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 8)) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) ((gEntityInfo[sp28].yPosBg2 - 8) - 0x20)) && (gEntityInfo[sp28].unkF == 0xF))
                                {
                                    gEntityInfo[sp28].unk8.split.unk8 = 8;
                                    gUnk_03005400.unkA = 4;
                                    if (gEntityInfo[arg0].unk8.split.unk9 == gEntityInfo[sp28].unk8.split.unk9)
                                    {
                                        gEntityInfo[sp28].unkF = 0x14;
                                    }
                                    else
                                    {
                                        gEntityInfo[sp28].unkF = 0x13;
                                    }
                                    if (gEntityInfo[arg0].xPosBg2 < gEntityInfo[sp28].xPosBg2)
                                    {
                                        gEntityInfo[sp28].unkC_2 = 0;
                                    }
                                    else
                                    {
                                        gEntityInfo[sp28].unkC_2 = 1;
                                    }
                                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                                    gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                                    gEntityInfo[arg0].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
                                }
                            }
                            break;
                    }
                }

                if ((gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 & 1) && (((u16) ((gEntityInfo[arg0].xPosScreen - 0x113)) <= (u16)-0x137) || ((u16) ((gEntityInfo[arg0].yPosScreen - 0xB3)) <= (u16)-0xD7)))
                {
                    sp34 = gUnk_03004654[0x1B];
                }
                if ((u32) gUnk_03004654[0x1A] > sp34)
                {
                    if ((u32) gUnk_03004654[1] > sp34)
                    {
                        goto block_716;
                    }
                    if ((u32) gUnk_03004654[0x14] < sp34)
                    {
                        goto block_716;
                    }
                    if (gUnk_03004C20.unk11 != 0)
                    {
                        goto block_716;

                    }
                    else
                    {
                        goto block_709;
                    }
                }
                else
                {
block_709:
                    m4aSongNumStart(0x2B);
                    if (((u32) gEntityInfo[arg0].unk11 > 0x7A) && (sp34 != 0xFF))
                    {
                        gEntityInfo[arg0].xPosBg2 = (u16) sp2C;
                        gEntityInfo[arg0].unkF = 0x14;
                        return;
                    }
                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                    gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                    if ((gEntityInfo[arg0].unk11 == 0x78) || (gEntityInfo[arg0].unk11 == 0x7A) || (gEntityInfo[arg0].unk11 == 0x7D))
                    {
                        gEntityInfo[arg0].unkC_4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5;
                    }
                    else
                    {
                        gEntityInfo[arg0].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
                    }
                    return;


                }
block_716:
                if ((gUnk_03004654[0x18] == sp34) || (gUnk_03004654[0x19] == sp34))
                {
                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                    return;
                }
            }
            else
            {
                sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                m4aSongNumStart(0x2B);
                return;
            }
            break;

        case 14:
        case 15:
            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[0].xPosBg2 + 0xC) - 0x18)))
            {
                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (s32) gEntityInfo[0].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[0].yPosBg2 - 0x18)))
                {
                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                    m4aSongNumStart(0x2B);
                    return;
                }
            }
            /* fallthrough */
        case 23:
            if (gEntityInfo[arg0].unkF == 0xE)
            {
                gEntityInfo[arg0].yPosBg2 -= 3;
                if ((gUnk_03004C20.unkA == 1) && (Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18).unk0 != 0xFFFF))
                {
                    sp34 = gUnk_03004654[0x1B];
                }
                else
                {
                    sp34 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 + 4) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)];
                }
            }
            else
            {
                gEntityInfo[arg0].yPosBg2 += 3;
                if ((gUnk_03004C20.unkA == 1) && (Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x18).unk0 != 0xFFFF))
                {
                    sp34 = gUnk_03004654[0x1B];
                }
                else
                {
                    sp34 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)];

                    sp34 = MAX(sp34, gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)]);

                    sp34 = MAX(sp34, gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[arg0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[arg0].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)]);
                }
            }
            
            for (sp28 = gUnk_030007F0; sp28 <= gUnk_03004C04; sp28++)
            {
                if ((gEntityInfo[sp28].unkF <= 0x1A) && (gEntityInfo[sp28].unkF != 0x19))
                {
                    switch (gEntityInfo[sp28].unk11 - 6)
                    {
                        case 0x1F:
                        case 0x69:
                            if (((gEntityInfo[arg0].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 0xC) + 0x18) > (s32) ((gEntityInfo[sp28].xPosBg2 + 7) - 0x16)))
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (s32) gEntityInfo[sp28].yPosBg2)
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= gEntityInfo[sp28].yPosBg2 - 0x18)
                                    {

                                    }
                                    else
                                    {
                                        sp34 = gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;

                        case 0x0:
                        case 0x2:
                        case 0x5:
                        case 0x70:
                        case 0x71:
                        case 0x72:
                        case 0x73:
                        case 0x74:
                        case 0x75:
                        case 0x76:
                        case 0x77:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 8) - 0x10)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (s32) gEntityInfo[sp28].yPosBg2) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) (gEntityInfo[sp28].yPosBg2 - 0x14)) && (arg0 != sp28) && (gEntityInfo[sp28].unkF != 0x13))
                                {
                                    sp34 = 0xFF;
                                    if ((gEntityInfo[sp28].unk11 != 6) && (gEntityInfo[sp28].unk11 != 8))
                                    {
                                        sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, (u8) sp28);
                                    }
                                    else
                                    {
                                        sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, 0);
                                    }
                                }
                            }
                            break;

                        case 0x3B:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0x10) - 0x20)))
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (s32) gEntityInfo[sp28].yPosBg2)
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x20))
                                    {

                                    }
                                    else if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state != 0)
                                    {

                                    }
                                    else
                                    {
                                        sp34 = gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;

                        case 0x6B:
                        case 0x6C:
                        case 0x6D:
                        case 0x6E:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (s32) (gEntityInfo[sp28].xPosBg2 + 2))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) (gEntityInfo[sp28].xPosBg2 - 2))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x18) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x10))
                                {

                                }
                                else
                                {
                                    sp34 = 0xFF;
                                    sub_0801EAA4((u8) sp28);
                                }
                            }
                            break;

                        case 0x39:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0xC) - 0x18))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) (gEntityInfo[sp28].yPosBg2 - 0x19))
                                {

                                }
                                else
                                {
                                    sp34 = gUnk_03004654[0x1B];
                                    if ((u32) gEntityInfo[arg0].unk11 <= 0x7A)
                                    {

                                    }
                                    else
                                    {
                                        sp30 = gEntityInfo[arg0].yPosBg2 = gEntityInfo[sp28].yPosBg2 + -0x10;
                                        m4aSongNumStart(0x2B);
                                        sub_08025B78(sp28, 2);
                                        gUnk_03003610[0].unk2 = arg0;
                                        gUnk_03003610[0].unk3 = sp28;
                                    }
                                }
                            }
                            break;

                        case 0x21:
                        case 0x22:
                        case 0x23:
                        case 0x24:
                        case 0x25:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0x10) - 0x20))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[sp28].yPosBg2 - 0x10))
                                    {

                                    }
                                    else
                                    {
                                        sp34 = gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;

                        case 0x30:
                        case 0x6F:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (s32) (gEntityInfo[sp28].xPosBg2 + 3))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) (gEntityInfo[sp28].xPosBg2 - 3))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (gEntityInfo[sp28].yPosBg2 - 0xC))
                                {

                                }
                                else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[sp28].yPosBg2 - 0xC) - 8))
                                {

                                }
                                else
                                {
                                    if (gEntityInfo[sp28].unkC_4 == 3)
                                    {
                                        gEntityInfo[arg0].unkF = 0x10;
                                    }
                                    else if (gEntityInfo[sp28].unkC_4 == 1)
                                    {
                                        gEntityInfo[arg0].unkF = 0x11;
                                    }
                                    else if (gEntityInfo[sp28].unkC_4 == 0)
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
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0x20))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0x20) - 0x40))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[sp28].yPosBg2 - 0x16))
                                    {

                                    }
                                    else
                                    {
                                        sp34 = gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;

                        case 0x38:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0xC) - 0x18))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[sp28].yPosBg2 - 8))
                                    {

                                    }
                                    else
                                    {
                                        sp34 = gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;

                        case 0x2F:
                        case 0x6A:
                            if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0xF))
                            {

                            }
                            else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0xF) - 0x1E))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (s32) gEntityInfo[sp28].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) gEntityInfo[arg0].yPosBg2 <= (gEntityInfo[sp28].yPosBg2 - 0x20))
                                    {

                                    }
                                    else
                                    {
                                        sp34 = gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;

                        case 0x1C:
                            var_ip = 0;
                            if (gUnk_03005400.unkC == 0)
                            {

                            }
                            else if (gUnk_03005400.unk8_0)
                            {

                            }
                            else
                            {
                                if (gEntityInfo[sp28].unkC_2 == 0)
                                {
                                    if (((gEntityInfo[sp28].xPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][0]) < (gEntityInfo[arg0].xPosBg2 + 4)) && ((gEntityInfo[sp28].xPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][1]) > (gEntityInfo[arg0].xPosBg2 - 4)))
                                    {
                                        if (((gEntityInfo[sp28].yPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][2]) < gEntityInfo[arg0].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][3]) > (gEntityInfo[arg0].yPosBg2 - 0x14)))
                                        {
                                            var_ip = 1;
                                        }
                                    }
                                }
                                else
                                {
                                    if (((gEntityInfo[sp28].xPosBg2 - gUnk_081168C4[gUnk_03004C20.world - 1][1]) < (gEntityInfo[arg0].xPosBg2 + 4)) && ((gEntityInfo[sp28].xPosBg2 - gUnk_081168C4[gUnk_03004C20.world - 1][0]) > (gEntityInfo[arg0].xPosBg2 - 4)))
                                    {
                                        if (((gEntityInfo[sp28].yPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][2]) < gEntityInfo[arg0].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][3]) > (gEntityInfo[arg0].yPosBg2 - 0x14)))
                                        {
                                            var_ip = 1;
                                        }
                                    }
                                }
                                if ((var_ip == 1) && !(gUnk_03005400.unk8_6))
                                {
                                    gUnk_03005400.unkC -= 1;
                                    if (gUnk_03005400.unkC != 0)
                                    {
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x11;
                                    }
                                    else
                                    {
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x1C;
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].unk10 = 0;
                                    }
                                    if (gUnk_03005400.unkC == 2)
                                    {
                                        sub_08025B78(0xD, 1);
                                    }
                                    gEntityInfo[0x11].unkF = 0x19;
                                    gEntityInfo[0x11].xPosBg2 = gEntityInfo[arg0].xPosBg2;
                                    gEntityInfo[0x11].yPosBg2 = gEntityInfo[arg0].yPosBg2 + 0x10;
                                    gUnk_03005400.unk9 = 1;
                                    sub_0803D140(1);
                                    gUnk_03005400.unk0 = 0;
                                    sub_08025B78(sp28, 1);
                                    m4aSongNumStart(0x63);
                                    gUnk_03005400.unkA = 1;
                                    gUnk_03005400.unk10 = 0;
                                    gUnk_03005400.unk8_6 = 1;
                                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                                }
                                else
                                {
                                    if ((gEntityInfo[sp28].xPosBg2 + gUnk_081168AC[gUnk_03004C20.world - 1][0]) >= (gEntityInfo[arg0].xPosBg2 + 4))
                                    {

                                    }
                                    else if ((gEntityInfo[sp28].xPosBg2 + gUnk_081168AC[gUnk_03004C20.world - 1][1]) <= (gEntityInfo[arg0].xPosBg2 - 4))
                                    {

                                    }
                                    else
                                    {
                                        if ((gEntityInfo[sp28].yPosBg2 + gUnk_081168AC[gUnk_03004C20.world - 1][2]) >= gEntityInfo[arg0].yPosBg2)
                                        {

                                        }
                                        else if ((gEntityInfo[sp28].yPosBg2 + gUnk_081168AC[gUnk_03004C20.world - 1][3]) <= (gEntityInfo[arg0].yPosBg2 - 0x14))
                                        {

                                        }
                                        else
                                        {
                                            m4aSongNumStart(0x2B);
                                            sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                                            if (gUnk_03005400.unk8_6)
                                            {

                                            }
                                            else if (gUnk_03004C20.world != 1)
                                            {

                                            }
                                            else
                                            {
                                                gUnk_03005400.unkA = 0xE;
                                                sub_08025B78(sp28, 0x11);
                                            }
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x11:
                            if ((gEntityInfo[sp28].unkF != 0) && (gEntityInfo[sp28].unkF != 3) && (gEntityInfo[sp28].unkF != 4))
                            {
                                if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 4)
                                {

                                }
                                else
                                {
                                    if ((gEntityInfo[arg0].xPosBg2 - 8) >= (gEntityInfo[sp28].xPosBg2 + 0x14))
                                    {

                                    }
                                    else if ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) <= (s32) ((gEntityInfo[sp28].xPosBg2 + 0x14) - 0x28))
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) >= (gEntityInfo[sp28].yPosBg2 - 0xA))
                                        {

                                        }
                                        else if ((s32) gEntityInfo[arg0].yPosBg2 <= (s32) ((gEntityInfo[sp28].yPosBg2 - 0xA) - 0x2C))
                                        {

                                        }
                                        else
                                        {
                                            sp34 = gUnk_03004654[0x1B];
                                            gEntityInfo[sp28].unk8.split.unk8 = 1;
                                            gEntityInfo[sp28].unk8.split.unk9 |= 1;
                                            gEntityInfo[sp28].unkF = 0x13;
                                            sub_08025B78(sp28, 4);
                                            gEntityInfo[0x11].unkF = 0x19;
                                            gEntityInfo[0x11].xPosBg2 = gEntityInfo[sp28].xPosBg2;
                                            gEntityInfo[0x11].yPosBg2 = gEntityInfo[sp28].yPosBg2;
                                            if (gEntityAnimationInfo[0x15 - gUnk_0300363C].state != 4)
                                            {

                                            }
                                            else
                                            {
                                                gUnk_03005400.unkC -= 1;
                                                if (gUnk_03005400.unkC != 0)
                                                {
                                                    gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x11;
                                                }
                                                else
                                                {
                                                    gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x1C;
                                                    gEntityInfo[gUnk_03005400.unkC + 0xD].unk10 = 0;
                                                }
                                                if (gUnk_03005400.unkC != 2)
                                                {

                                                }
                                                else
                                                {
                                                    sub_08025B78(0xD, 1);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x15:
                            if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x14)) && ((s32) ((gEntityInfo[arg0].xPosBg2 - 8) + 0x10) > (s32) ((gEntityInfo[sp28].xPosBg2 + 0x14) - 0x28)))
                            {
                                if (((s32) (gEntityInfo[arg0].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 8)) && ((s32) gEntityInfo[arg0].yPosBg2 > (s32) ((gEntityInfo[sp28].yPosBg2 - 8) - 0x20)) && (gEntityInfo[sp28].unkF == 0xF))
                                {
                                    gEntityInfo[sp28].unk8.split.unk8 = 8;
                                    gUnk_03005400.unkA = 4;
                                    if (gEntityInfo[arg0].unk8.split.unk9 == gEntityInfo[sp28].unk8.split.unk9)
                                    {
                                        gEntityInfo[sp28].unkF = 0x14;
                                    }
                                    else
                                    {
                                        gEntityInfo[sp28].unkF = 0x13;
                                    }
                                    gEntityInfo[sp28].unkC_2 = 2;
                                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                                    gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                                    gEntityInfo[arg0].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
                                }
                            }
                            break;
                    }
                }
            }

            if ((gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 & 1) && (((u16)(gEntityInfo[arg0].xPosScreen - 0x113) <= (u16)-0x137) || ((u16) ((gEntityInfo[arg0].yPosScreen - 0xB3)) <= (u16)-0xD7)))
            {
                sp34 = gUnk_03004654[0x1B];
            }
            if (gUnk_03004654[0x1A] <= sp34)
            {
                m4aSongNumStart(0x2B);
                if ((gEntityInfo[arg0].unk11 > 0x7A) && (sp34 != 0xFF))
                {
                    gEntityInfo[arg0].yPosBg2 = sp30 + 3;
                    gEntityInfo[arg0].yPosBg2 &= 0xFFF8;
                    gEntityInfo[arg0].unkF = 0x14;
                    return;
                }
                sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                if ((gEntityInfo[arg0].unk11 == 0x78) || (gEntityInfo[arg0].unk11 == 0x7A) || (gEntityInfo[arg0].unk11 == 0x7D))
                {
                    gEntityInfo[arg0].unkC_4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5;
                }
                else
                {
                    gEntityInfo[arg0].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
                }
            }
            else
            {
                if ((gUnk_03004654[0x18] == sp34) || (gUnk_03004654[0x19] == sp34))
                {
                    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, arg0);
                    return;
                }
            }
            break;

        case 27:
            if ((gUnk_03004C20.globalFrameCounter % 8) == 0)
            {
                if (gEntityInfo[arg0].unk8.split.unk8 > 0xD)
                {
                    gEntityInfo[arg0].unk8.split.unk8 = 0;
                    gEntityInfo[arg0].unkF = 0x19;
                    sub_08044F6C(arg0);
                    return;
                }
                sub_0801E664(gUnk_0818B8D0[(gEntityInfo[arg0].unk8.split.unk8 + 4) & 7][0] + gEntityInfo[arg0].xPosBg2, gUnk_0818B8D0[(gEntityInfo[arg0].unk8.split.unk8 + 4) & 7][1] + gEntityInfo[arg0].yPosBg2, 6, 0);
                sub_0801E664(gUnk_0818B8D0[(gEntityInfo[arg0].unk8.split.unk8 & 7)][0] + gEntityInfo[arg0].xPosBg2, gUnk_0818B8D0[(gEntityInfo[arg0].unk8.split.unk8++ & 7)][1] + gEntityInfo[arg0].yPosBg2, 6, 0);
                m4aSongNumStart(0x57);
            }
            break;
    }
}

// 1B044
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

// 1B688
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

// 1BB6C
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

// 1BCC0
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

// 1BD48
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

// 1C150
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

// 1C6EC
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

// Need to fix fakematches https://decomp.me/scratch/113rN
// 1C82C
void sub_0801C82C(u8 arg0)
{
    u32 var_r6;
    u8 var_r1;
    u32 sp0;
    u32 tmp;

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
        tmp = gUnk_03003610[var_r1].unk1;
    }
    else
    {
        tmp = gUnk_03003610[var_r1].unk0;
    }
    sp0 = tmp;
    
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
            if (gUnk_03005220.unk3F == (arg0 - 1))
            {
                gUnk_03005220.unk57 = 0;
            }
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
            goto block_96;
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

            // TODO: fix this mess
            goto skip;
            block_96:
            if (gUnk_03005220.unk3F == (arg0 - 1))
            {
                gUnk_03005220.unk57 = 0;
            }
            goto exit;
            skip:
            
            gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd = MultiplyQ8(0x100, ReciprocalQ8(gEntityInfo[arg0].unk8.split.unk8));
        }
    }

    exit:
    if (sp0 < arg0)
    {
        gEntityInfo[arg0].unk8.split.unk8 = -gEntityInfo[sp0].unk8.split.unk8;
    }
}

// 1CE38
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

// 1D0D8
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

// 1D4AC
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

extern s32 gUnk_030034D0;
extern s32 gUnk_03003628;
extern s32 gUnk_03004D88;

// 1D6B0
void sub_0801D6B0(u8 arg0)
{
    u8 sp0;
    s32 sp8;
    s32 spC;
    u32 var_ip;
    u8 temp_r3_6;

    sp0 = arg0 + gUnk_03004C38;
    sp8 = gEntityInfo[sp0].xPosBg2;
    spC = gEntityInfo[sp0].yPosBg2;
    if (gUnk_03005220.unk59 != 0)
    {
        gUnk_03005220.unk59 -= 1;
        goto block_46;
    }
    if (gEntityInfo[sp0].unkF < 10)
    {
        goto block_46;
    }
    if ((gEntityInfo[sp0].unkF == 0x13) && (gUnk_03005220.unk43 == 0))
    {
        goto block_46;
    }

    for (var_ip = gUnk_030007F4; var_ip <= gUnk_0300290C; var_ip++)
    {
        if (gEntityInfo[var_ip].unkF > 0x1A)
        {
            continue;
        }
        if (gEntityInfo[var_ip].unkF == 0x13)
        {
            continue;
        }
        if (var_ip == sp0)
        {
            continue;
        }
        if (gEntityInfo[var_ip].unk17 == 1)
        {
            continue;
        }

        if (((gEntityInfo[sp0].xPosBg2 - 0xD) < (gEntityInfo[var_ip].xPosBg2 + 7)) && ((gEntityInfo[sp0].xPosBg2 + 5) > (gEntityInfo[var_ip].xPosBg2 - 0xF)))
        {
            if (((gEntityInfo[sp0].yPosBg2 - 0x30) < gEntityInfo[var_ip].yPosBg2) && ((gEntityInfo[sp0].yPosBg2 - 0x18) > (gEntityInfo[var_ip].yPosBg2 - 0x18)))
            {
                if (gEntityInfo[sp0].unk8.split.unk9 != 0)
                {
                    continue;
                }
                gEntityInfo[arg0].unkC_4 = 1;
block_25:
                gEntityInfo[sp0].unk16 = 0;
                gEntityInfo[sp0].unk8.split.unk9 = var_ip;
                gEntityInfo[sp0].unkF = 0xA;
                sub_08025B78(arg0, 0);
                m4aSongNumStart(0x5F);
                if (gUnk_03005220.unk42 == sp0)
                {
                    gUnk_03005220.unk3C = 0;
                    gUnk_03005220.unk39 = 1;
                    gUnk_03005220.unk26 = 0;
                    gUnk_03005220.unk28 = 0;
                    gUnk_03005220.unk45 = 0;
                    gUnk_03005220.unk3F = sp0;
                    sub_08025B78(0, 0xE);
                    if (gEntityInfo[arg0].unkC_4 == 1)
                    {
                        gEntityInfo[0].xPosBg2 = gEntityInfo[sp0].xPosBg2 - 4;
                    }
                    else if (gEntityInfo[arg0].unkC_4 == 2)
                    {
                        gEntityInfo[0].xPosBg2 = gEntityInfo[sp0].xPosBg2 - 6;
                    }
                    else
                    {
                        gEntityInfo[0].xPosBg2 = gEntityInfo[sp0].xPosBg2 - 2;
                    }
                    gEntityInfo[0].yPosBg2 = gEntityInfo[sp0].yPosBg2 + 0x18;
                }
                break;
                
            }
        }
        if (((gEntityInfo[sp0].xPosBg2 - 0x1F) < (gEntityInfo[var_ip].xPosBg2 + 7)) && ((gEntityInfo[sp0].xPosBg2 + 0x17) > (s32) (gEntityInfo[var_ip].xPosBg2 - 0xF)))
        {
            if (((gEntityInfo[sp0].yPosBg2 - 0x18) < (gEntityInfo[var_ip].yPosBg2 - 2)) && ((gEntityInfo[sp0].yPosBg2 - 2) > (gEntityInfo[var_ip].yPosBg2 - 0x18)))
            {
                if (gEntityInfo[sp0].unk8.split.unk9 == 0)
                {
                    if (gEntityInfo[sp0].xPosBg2 < gEntityInfo[var_ip].xPosBg2)
                    {
                        gEntityInfo[arg0].unkC_4 = 2;
                    }
                    else
                    {
                        gEntityInfo[arg0].unkC_4 = 3;
                    }
                    goto block_25;
                }
                else
                {
                    continue;
                }
            }
        }
        if (gEntityInfo[sp0].unk8.split.unk9 == var_ip)
        {
            goto block_82;
        }
    }

block_46:
    if (gEntityInfo[sp0].unk8.split.unk9 != 0)
    {
        // Must be declared here to match
        s32 sp20;
        s32 sp24;
        if (gEntityInfo[arg0].unkC_4 == 1)
        {
            if (gEntityInfo[sp0].xPosBg2 < (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2 - 1))
            {
                gEntityInfo[sp0].xPosBg2 += 1;
                sp20 = 1;
            }
            else if (gEntityInfo[sp0].xPosBg2 > (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2 + 1))
            {
                gEntityInfo[sp0].xPosBg2 -= 1;
                sp20 = 0xFF;
            }
            else
            {
                sp20 = 0;
            }
            if (gEntityInfo[sp0].yPosBg2 > (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2 + 0x18))
            {
                gEntityInfo[sp0].yPosBg2 -= 1;
                sp24 = 0xFF;
            }
            else
            {
                sp24 = 0;
            }
        }
        else if (gEntityInfo[arg0].unkC_4 == 2)
        {
            if (gEntityInfo[sp0].xPosBg2 < (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2 - 0x18))
            {
                gEntityInfo[sp0].xPosBg2 += 1;
                sp20 = 1;
            }
            else
            {
                sp20 = 0;
            }
            if (gEntityInfo[sp0].yPosBg2 > (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2 + 1))
            {
                gEntityInfo[sp0].yPosBg2 -= 1;
                sp24 = 0xFF;
            }
            else
            {
                if (gEntityInfo[sp0].yPosBg2 < (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2 - 1))
                {
                    gEntityInfo[sp0].yPosBg2 += 1;
                    sp24 = 1;
                }
                else
                {
                    sp24 = 0;
                }
            }
        }
        else if (gEntityInfo[arg0].unkC_4 == 3)
        {
            if (gEntityInfo[sp0].xPosBg2 > (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2 + 0x18))
            {
                gEntityInfo[sp0].xPosBg2 -= 1;
                sp20 = 0xFF;
            }
            else
            {
                sp20 = 0;
            }
            if (gEntityInfo[sp0].yPosBg2 > (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2 + 1))
            {
                gEntityInfo[sp0].yPosBg2 -= 1;
                sp24 = 0xFF;
            }
            else if (gEntityInfo[sp0].yPosBg2 < (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2 - 1))
            {
                gEntityInfo[sp0].yPosBg2 += 1;
                sp24 = 1;
            }
            else
            {
                sp24 = 0;
            }
        }

        temp_r3_6 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[sp0].xPosBg2 + 6) >> 3) + (((gEntityInfo[sp0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
        temp_r3_6 = MAX(temp_r3_6, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[sp0].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[sp0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)]);
        temp_r3_6 = MAX(temp_r3_6, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[sp0].xPosBg2 + 6) >> 3) + (((gEntityInfo[sp0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)]);
        temp_r3_6 = MAX(temp_r3_6, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[sp0].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[sp0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)]);
        if ((gUnk_03004654[0x1A] <= temp_r3_6) || (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].unkF == 0x13))
        {
block_82:
            gEntityInfo[sp0].unk8.split.unk9 = 0;
            gEntityInfo[arg0].unkC_4 = 0;
            gEntityInfo[sp0].xPosBg2 = sp8;
            gEntityInfo[sp0].yPosBg2 = spC;
            if (gUnk_03005220.unk3F == sp0)
            {
                gUnk_03005220.unk39 = 0;
                gUnk_03005220.unk57 = 0;
                gUnk_03005220.unk56 = 0;
                gUnk_03005220.unk3F = 0;
                gEntityInfo[sp0].unkF = 0x13;
                gUnk_03005220.unk59 = 0x3C;
            }
            else
            {
                gEntityInfo[sp0].unkF = 0;
            }
            return;
        }
        if (((sp24 | sp20) << 0x18) == 0)
        {
            gEntityInfo[sp0].unkF = gEntityInfo[arg0].unkC_4 + 6;
            gEntityInfo[sp0].yPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2;
            if (gEntityInfo[arg0].unkC_4 == 1)
            {
               gEntityInfo[sp0].xPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2;
               gEntityInfo[sp0].yPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2 + 0x18;
            }
            else if (gEntityInfo[arg0].unkC_4 == 2)
            {
                gEntityInfo[sp0].xPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2 - 0x18;
            }
            else
            {
                gEntityInfo[sp0].xPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2 + 0x18;
            }
            gEntityInfo[sp0].unk8.split.unk8 = gEntityInfo[sp0].unk8.split.unk9;
            gEntityInfo[sp0].unk8.split.unk9 = 0;
            gEntityInfo[arg0].unkC_4 = 0;
            if (gUnk_03005220.unk3F == sp0)
            {
                gUnk_03005220.unk57 = 0;
                gUnk_03005220.unk56 = 0;
                gUnk_03005220.unk3F = 0;
            }
        }
        if (gUnk_03005220.unk42 == sp0)
        {
            gUnk_03005220.unk56 = sp20;
            gUnk_03005220.unk57 = sp24;
        }
    }

    switch (gEntityInfo[arg0].unkC_4)
    {
        case 2:
            if ((s8) gEntityInfo[arg0].unk8.split.unk9 == 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 += 4;
                if ((s8) gEntityInfo[arg0].unk8.split.unk8 > 0x18)
                {
                    gEntityInfo[arg0].unk8.split.unk8 = 0x18;
                }
            }
            else
            {
                goto check_unk9;
                // if ((s8) gEntityInfo[arg0].unk8.split.unk9 < 0)
                // {
                //     gEntityInfo[arg0].unk8.split.unk9 += 4;
                // }
            }
            break;

        case 3:
            if ((s8) gEntityInfo[arg0].unk8.split.unk9 == 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 -= 4;
                if ((s8) gEntityInfo[arg0].unk8.split.unk8 < -0x18)
                {
                    gEntityInfo[arg0].unk8.split.unk8 = -0x18;
                }
            }
            else
            {
                goto check_unk9;
                // if ((s8) gEntityInfo[arg0].unk8.split.unk9 < 0)
                // {
                //     gEntityInfo[arg0].unk8.split.unk9 += 4;
                // }
            }
            break;

        case 1:
            if ((s8) gEntityInfo[arg0].unk8.split.unk8 == 0)
            {
                gEntityInfo[arg0].unk8.split.unk9 -= 4;
                if ((s8) gEntityInfo[arg0].unk8.split.unk9 < -0x18)
                {
                    gEntityInfo[arg0].unk8.split.unk9 = -0x18;
                }
                break;
            }
            /* fallthrough */
        case 0:
            if ((s8) gEntityInfo[arg0].unk8.split.unk8 > 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 -= 4;
            }
            else if ((s8) gEntityInfo[arg0].unk8.split.unk8 < 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 += 4;
            }
            if (gEntityInfo[arg0].unkC_4 == 0)
            {
check_unk9: // TODO: get rid of gotos with this label
                if ((s8) gEntityInfo[arg0].unk8.split.unk9 < 0)
                {
                    gEntityInfo[arg0].unk8.split.unk9 += 4;
                }
            }
            break;
    }

    if ((s8) gEntityInfo[arg0].unk8.split.unk8 > 0)
    {        
        gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd = 0x280 - ((s8)gEntityInfo[arg0].unk8.split.unk8 * 0x10);        
        gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pb = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pc = 0;
    }
    else if ((s8) gEntityInfo[arg0].unk8.split.unk8 < 0)
    {        
        gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd = -0x280 + (-(s8)gEntityInfo[arg0].unk8.split.unk8 * 0x10);        
        gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pb = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pc = 0;
    }
    else if ((s8) gEntityInfo[arg0].unk8.split.unk9 < 0)
    {        
        gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pd = 0;        
        gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pb = gOamAffineBuffer[gEntityInfo[arg0].affineHFlip_matrixNum].pc = -0x280 + (-(s8)gEntityInfo[arg0].unk8.split.unk9 * 0x10);
    }

    if (((s8) gEntityInfo[arg0].unk8.split.unk8 | (s8) gEntityInfo[arg0].unk8.split.unk9) != 0)
    {
        gEntityInfo[arg0].xPosBg2 = gEntityInfo[arg0 + gUnk_03004C38].xPosBg2 + ((s8) gEntityInfo[arg0].unk8.split.unk8 - 4);
        gEntityInfo[arg0].yPosBg2 = gEntityInfo[arg0 + gUnk_03004C38].yPosBg2 + ((s8) gEntityInfo[arg0].unk8.split.unk9 + 4);
    }
    else
    {
        gEntityInfo[arg0].xPosBg2 = -0x20;
        gUnk_03004D88 = gUnk_03003628 = gUnk_030034D0 = 0x64;
    }
}

// 1DE44
void sub_0801DE44(u8 arg0)
{
    if (--gEntityInfo[arg0].unk8.split.unk9 == 0xFF)
    {
        gEntityInfo[arg0].unk8.split.unk9 = 0x19;
        if (gEntityInfo[arg0].unk8.split.unk8 < 6)
        {
            sub_0801E664(gEntityInfo[arg0 - gUnk_0300528C].xPosBg2, gEntityInfo[arg0 - gUnk_0300528C].yPosBg2, gEntityInfo[arg0].unk8.split.unk8 + 0xC, 0);
        }

        if (--gEntityInfo[arg0].unk8.split.unk8 == 0)
        {
            sub_0801E664(gEntityInfo[arg0 - gUnk_0300528C].xPosBg2, gEntityInfo[arg0 - gUnk_0300528C].yPosBg2, 2, arg0 - gUnk_0300528C);
        }
        else
        {
            m4aSongNumStart(0x56);
            if (gEntityInfo[arg0].unk8.split.unk8 > 9)
            {
                gEntityInfo[arg0 + gUnk_0300528C].unkF = 0;
                sub_0800087C(arg0 + gUnk_0300528C, gEntityInfo[arg0].unk8.split.unk8 / 10);
            }

            sub_0800087C(arg0, gEntityInfo[arg0].unk8.split.unk8 % 10);
            if (gEntityInfo[arg0].unk8.split.unk8 == 9)
            {
                gEntityInfo[arg0 + gUnk_0300528C].unkF = 0x1C;
                gEntityInfo[arg0 + gUnk_0300528C].unk10 = 0;
            }
        }
    }

    gEntityInfo[arg0].xPosBg2 = gEntityInfo[arg0 - gUnk_0300528C].xPosBg2;
    gEntityInfo[arg0].yPosBg2 = gEntityInfo[arg0 - gUnk_0300528C].yPosBg2 - 0x20;

    if (gEntityInfo[arg0].unk8.split.unk8 > 9)
    {
        gEntityInfo[arg0 + gUnk_0300528C].xPosBg2 = gEntityInfo[arg0 - gUnk_0300528C].xPosBg2 - 3;
        gEntityInfo[arg0 + gUnk_0300528C].yPosBg2 = gEntityInfo[arg0 - gUnk_0300528C].yPosBg2 - 0x20;
        gEntityInfo[arg0].xPosBg2 += 3;
    }
}

// 1DFC4
void sub_0801DFC4(u8 arg0)
{
    u32 var_r6;

    if (gEntityInfo[arg0].unkC_2 == 0)
    {
        gEntityInfo[arg0].xPosBg2 += 1;
    }
    else
    {
        gEntityInfo[arg0].xPosBg2 -= 1;
    }

    if (gUnk_03004654[0x1A] <= gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + ((gEntityInfo[arg0].yPosBg2 >> 3) * gBgInfo[2].hLength)])
    {
        block_4:
        sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, 0);
        gEntityInfo[arg0].unkF = 0x1C;
        gEntityInfo[arg0].unk10 = 0;
        m4aSongNumStart(0x93);
        return;
    }

    for (var_r6 = 0; var_r6 <= gUnk_03002908; var_r6++)
    {
        if (gEntityInfo[var_r6].unkF == 0x19)
        {
            continue;
        }
        if (gEntityInfo[var_r6].unkF > 0x1A)
        {
            continue;
        }

        switch (gEntityInfo[var_r6].unk11)
        {
            case 0x6F:
            case 0x25:
                if (((gEntityInfo[arg0].xPosBg2 - 8) < (gEntityInfo[var_r6].xPosBg2 + 7)) && ((gEntityInfo[arg0].xPosBg2 + 8) > (gEntityInfo[var_r6].xPosBg2 - 0xF)))
                {
                    if ((gEntityInfo[arg0].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2)
                    {
                        if (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18))
                        {
                            goto block_4;
                        }
                    }
                }
                break;

            case 0x6E:
            case 0x76:
            case 0x77:
            case 0x78:
            case 0x79:
            case 0x7A:
            case 0x7B:
            case 0x7C:
            case 0x7D:
                if (((gEntityInfo[arg0].xPosBg2 - 4) < (gEntityInfo[var_r6].xPosBg2 + 4)) && ((gEntityInfo[arg0].xPosBg2 + 4) > (gEntityInfo[var_r6].xPosBg2 - 4)))
                {
                    if (((gEntityInfo[arg0].yPosBg2 - 0xC) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x14)))
                    {
                        if (var_r6 == 0)
                        {
                            var_r6 = gUnk_03003638 - 1;
                            if (gUnk_03005220.unk3E != 0)
                            {
                                continue;
                            }
                            sub_08014624(1);
                        }
                        else
                        {
                            sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 2, var_r6);
                        }
                        goto block_4;
                    }
                }
                break;

            case 0x35:
                if (((gEntityInfo[arg0].xPosBg2 - 4) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((gEntityInfo[arg0].xPosBg2 + 4) > (gEntityInfo[var_r6].xPosBg2 - 0xF)))
                {
                    if ((gEntityInfo[arg0].yPosBg2 - 0xC) < gEntityInfo[var_r6].yPosBg2)
                    {
                        if (gEntityInfo[arg0].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20))
                        {
                            goto block_4;
                        }
                    }
                }
                break;
        }

        if (var_r6 == 0)
        {
            var_r6 = gUnk_03003638 - 1;
        }
    }
}

// 1E1A8
void sub_0801E1A8(u8 arg0)
{
    s32 var_r2;

    if ((gUnk_030034E4 == 0) && (gUnk_03005220.stars == 7))
    {
        if (((gUnk_03004C20.globalFrameCounter % 4) == 0) && (gUnk_03005220.unk5D == 1) && (gBlendValue != 0))
        {
            gBlendValue -= 1;
        }

        if (gUnk_03005220.unk5D == 0)
        {
            gUnk_03005220.unk5D = 1;
            gBlendValue = 0x10;
            REG_BLDCNT = 0xA7;
        }
    }

    if (gEntityInfo[arg0].yPosScreen > 0x8B)
    {
        var_r2 = -1;

        gEntityInfo[arg0].yPosBg2 = -8;
        gEntityInfo[arg0].xPosBg2 = -8;

        if ((gUnk_030034E4 == 0) && (gUnk_03005220.unk5D == 1))
        {
            if (gBlendValue != 0)
            {
                return;
            }
            gBlendValue = 9;
            REG_BLDCNT = 0x340;
        }

        if (gUnk_03005220.stars & 1)
        {
            var_r2 += 1;
        }
        if (gUnk_03005220.stars & 2)
        {
            var_r2 += 1;
        }
        if (gUnk_03005220.stars & 4)
        {
            var_r2 += 1;
        }

        gBgTilemapBufs[0][(var_r2 * 2) + 0x24D] = gBgTilemapBufs[0][(var_r2 * 2) + 0x28C];
        gBgTilemapBufs[0][(var_r2 * 2) + 0x24E] = gBgTilemapBufs[0][(var_r2 * 2) + 0x28D];
        gBgTilemapBufs[0][(var_r2 * 2) + 0x26D] = gBgTilemapBufs[0][(var_r2 * 2) + 0x2AC];
        gBgTilemapBufs[0][(var_r2 * 2) + 0x26E] = gBgTilemapBufs[0][(var_r2 * 2) + 0x2AD];

        gEntityInfo[arg0].unk10 = 0;
        gEntityInfo[arg0].unkF = 0x1C;
    }
    else
    {
        gEntityInfo[arg0].unk8.split.unk9 += 1;

        if (gEntityInfo[arg0].xPosScreen > 0x82)
        {
            gEntityInfo[arg0].xPosBg2 -= ((gEntityInfo[arg0].xPosBg2 - 0x82 - gBgInfo[2].hOfs) >> 4);
        }
        else
        {
            gEntityInfo[arg0].xPosBg2 += ((gBgInfo[2].hOfs + 0x82 - gEntityInfo[arg0].xPosBg2) >> 4);
        }
        gEntityInfo[arg0].yPosBg2 += (gEntityInfo[arg0].unk8.split.unk9 - 0xC) >> 2;
    }
}

// 1E354
void sub_0801E354(u8 arg0)
{
    if (gEntityInfo[arg0].yPosScreen >= 0x90)
    {
        if ((gEntityInfo[arg0].yPosScreen & 0x8000) == 0)
        {
            gUnk_03005220.unk4 |= 1 << gEntityInfo[arg0].unk8.split.unk8;

            if ((u8)gUnk_03005220.lives < 99)
            {
                gUnk_03005220.lives += 1;
                sub_08025F94();
            }

            gEntityInfo[arg0].unk10 = 0;
            gEntityInfo[arg0].unkF = 0x1C;
            return;
        }
    }

    gEntityInfo[arg0].unk8.split.unk9 += 1;
    if (gEntityInfo[arg0].yPosScreen & 0x8000)
    {
        gEntityInfo[arg0].yPosBg2 = gEntityInfo[arg0].yPosBg2 + 3;
    }
    else
    {
        gEntityInfo[arg0].yPosBg2 += ((gEntityInfo[arg0].unk8.split.unk9 - 0xC) >> 1);
    }
    gEntityInfo[arg0].xPosBg2 += ((gBgInfo[2].hOfs + 0xEC - gEntityInfo[arg0].xPosBg2) / 12);
}

// 1E3FC
void sub_0801E3FC(void)
{
    u16 var_r1;
    u16 var_r5;
    u32 var_sb;
    u32 var_r8;

    for (var_sb = 1; var_sb < 9; var_sb++)
    {
        if (gEntityInfo[var_sb].unkF == 0x1C)
        {
            continue;
        }
        if (gEntityAnimationInfo[var_sb].state != 6)
        {
            continue;
        }

        for (var_r8 = 0; var_r8 <= gUnk_030051C4; var_r8++)
        {
            if (gEntityInfo[var_r8].unkF > 0x1A)
            {
                continue;
            }
            if (gEntityInfo[var_r8].unkF == 0x19)
            {
                continue;
            }

            if (gEntityInfo[var_r8].unk11 > 0x6D)
            {
                if (gEntityInfo[var_r8].unk11 == 0x70)
                {
                    var_r5 = -0xF;
                    var_r1 = -0xF;
                }
                else if (gEntityInfo[var_r8].unk11 == 0x6F)
                {
                    var_r1 = -0xF;
                    var_r5 = -0x7;
                }
                else
                {
                    var_r5 = -0xC;
                    var_r1 = -0xC;
                }
                if ((u16) (var_r1 + gEntityInfo[var_r8].xPosBg2) >= (gEntityInfo[var_sb].xPosBg2 + 0xC))
                {
                    
                }
                else if ((u16) (gEntityInfo[var_r8].xPosBg2 - var_r5) <= (gEntityInfo[var_sb].xPosBg2 - 0xC))
                {
                    
                }
                else if ((gEntityInfo[var_r8].yPosBg2 - 0x18) >= gEntityInfo[var_sb].yPosBg2)
                {
                    
                }
                else if (gEntityInfo[var_r8].yPosBg2 <= (gEntityInfo[var_sb].yPosBg2 - 0x18))
                {
                    
                }
                else
                {
                    switch (gEntityInfo[var_r8].unk11 - 0x6E)
                    {
                        case 0:
                            if ((gUnk_03005220.unk3E == 0) || (gUnk_03005220.unk5B == 0))
                            {
                                sub_08014624(1);
                                break;
                            }
                            continue;

                        case 2:
                            if (gEntityInfo[var_r8].unk8.split.unk9 == 0)
                            {
                                gEntityInfo[var_r8].unk8.split.unk9 = 0x64;
                                gUnk_03005220.unk2E |= 1 << gEntityInfo[var_r8].unk8.split.unk8;
                            }
                            break;

                        case 1:
                            if (gEntityInfo[var_r8].unk8.split.unk8 > 1)
                            {
                                if (gEntityInfo[var_r8].unk8.split.unk9 == 0)
                                {
                                    gEntityInfo[var_r8].unkF = 0x1B;
                                    gEntityInfo[var_r8].unk10 = 0;
                                    gEntityInfo[var_r8].unk8.split.unk9 = 0x46;

                                    if (var_r8 == gUnk_03003610[1].unk2)
                                    {
                                        sub_08025B78(gUnk_03003610[1].unk3, 0);
                                        gUnk_03003610[1].unk2 = 0;
                                    }

                                    if (gUnk_03005220.unk3F == var_r8)
                                    {
                                        gUnk_03005220.unk3F = 0;
                                    }
                                    if (gUnk_03005220.unk42 == var_r8)
                                    {
                                        sub_080145A8(1);
                                    }
                                }
                            }
                            break;

                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            if (gEntityInfo[var_r8].unk8.split.unk8 == 0)
                            {
                                sub_0801EAA4(var_r8);
                                gEntityInfo[var_r8].unk8.split.unk8 = 0x87;
                            }
                            break;

                        case 7:
                            if (gEntityInfo[var_r8].unk8.split.unk8 == 0)
                            {
                                sub_0801EF5C(var_r8);
                                gEntityInfo[var_r8].unk8.split.unk8 = 0xC8;
                            }
                            break;

                        default:
                            sub_0801E664(gEntityInfo[var_r8].xPosBg2, gEntityInfo[var_r8].yPosBg2, 2, var_r8);
                            break;
                    }
                }
            }

            if (var_r8 == 0)
            {
                var_r8 = gUnk_030052B4 - 1;
            }
        }
    }
}

// 1E664
void sub_0801E664(u16 arg0, u16 arg1, u8 arg2, u8 arg3)
{
    u32 var_r2;
    u32 var_r3;
    u32 var_r6;

    var_r6 = 1;

    if ((((s16) (arg0 - gBgInfo[2].hOfs - 0x113) > -0x137u) && ((s16) (arg1 - gBgInfo[2].vOfs - 0xE0) > -0x104u)) || (gUnk_03004C20.level == 8) || (gEntityInfo[arg3].unk11 > 0x7A) || (arg2 == 6))
    {
        var_r3 = 0;
        for (var_r2 = 1; var_r2 < 9; var_r2++)
        {
            if (gEntityInfo[var_r2].unkF == 0x1C)
            {
                var_r6 = var_r2;
                break;
            }

            if ((var_r3 <= gEntityAnimationInfo[var_r2].frame) && (gEntityAnimationInfo[var_r2].state != 6))
            {
                var_r3 = gEntityAnimationInfo[var_r2].frame;
                var_r6 = var_r2;
            }
        }

        gEntityInfo[var_r6].unk10 = 1;
        gEntityInfo[var_r6].unkF = 0;
        gEntityInfo[var_r6].xPosBg2 = arg0;
        gEntityInfo[var_r6].yPosBg2 = arg1;

        if ((arg2 == 2) && (gEntityInfo[arg3].unk11 > 0x7A))
        {
            sub_08025B78(var_r6, 6);
        }
        else
        {
            sub_08025B78(var_r6, arg2);
        }

        gEntityInfo[var_r6].priority = 0;
    }

    if (arg2 == 1)
    {
        gEntityInfo[var_r6].priority = 1;
        gEntityInfo[var_r6].unk8.split.unk8 = arg3;
        sub_08044F6C(arg3);
        gEntityInfo[var_r6].xPosBg2 = gEntityInfo[arg3].xPosBg2;
        gEntityInfo[var_r6].yPosBg2 = gEntityInfo[arg3].yPosBg2;
        return;
    }
    else if ((arg2 == 2) && (arg3 != 0))
    {
        gEntityInfo[arg3].unk10 = 0;
        if (gEntityInfo[arg3].unk11 != 0x70)
        {
            if (gUnk_03005220.unk42 == arg3)
            {
                sub_080145A8(1);
            }

            if (gUnk_03004C20.unkA == 1)
            {
                gEntityInfo[arg3].unkF = 0x1C;
                return;
            }

            gEntityInfo[arg3].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg3 - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
            gEntityInfo[arg3].unk8.split.unk8 = 0;

            if ((gEntityInfo[arg3].unk11 == 0x78) || (gEntityInfo[arg3].unk11 == 0x7A) || (gEntityInfo[arg3].unk11 == 0x7D))
            {
                gEntityInfo[arg3].unkC_4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg3 - 0xD].unk0[gUnk_03004C20.room - 1].unk5;
            }
            else
            {
                gEntityInfo[arg3].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg3 - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
            }
        }

        if (gEntityInfo[arg3].unk11 > 0x7A)
        {
            if (arg3 == gUnk_03003610->unk2)
            {
                sub_08025B78(gUnk_03003610->unk3, 0);
                gUnk_03003610->unk2 = 0;
            }

            if (gEntityInfo[arg3 + gUnk_0300528C].unk8.split.unk8 > 9)
            {
                gEntityInfo[arg3 + (gUnk_0300528C * 2)].unkF = 0x1C;
                gEntityInfo[arg3 + (gUnk_0300528C * 2)].unk10 = 0;
            }

            gEntityInfo[arg3 + gUnk_0300528C].unkF = 0x1C;
            gEntityInfo[arg3 + gUnk_0300528C].unk10 = 0;
            gEntityInfo[arg3 + gUnk_0300528C].unk8.split.unk8 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg3 + gUnk_0300528C - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
            gEntityInfo[arg3 + gUnk_0300528C].unk8.split.unk9 = 0;
            gEntityInfo[arg3].unkF = 0x1B;
        }
        else
        {
            if (gEntityInfo[arg3].unk11 == 0x70)
            {
                gEntityInfo[arg3].unkF = 0x1C;
            }
            else
            {
                gEntityInfo[arg3].unkF = 0x19;
            }
            sub_08044F6C(arg3);
        }
    }
    else if (arg2 == 3 || arg2 == 4 || arg2 == 5)
    {
        if (arg3 != 0)
        {
            if (gEntityInfo[arg3].unkF != 2)
            {
                gEntityInfo[arg3].unk10 = 0;
                gEntityInfo[arg3].unkF = 0x1C;
            }
        }
    }
    else if (arg2 == 7)
    {
        gEntityInfo[var_r6].priority = 1;
        gEntityInfo[var_r6].unkC_2 = gEntityInfo[0].unkC_2;
        
        if (gEntityInfo[0].unkC_2 == 0)
        {
            gEntityInfo[var_r6].xPosBg2 += 6;
        }
        else
        {
            gEntityInfo[var_r6].xPosBg2 -= 6;
        }
    }
    else if (arg2 == 11)
    {
        gEntityInfo[var_r6].unkC_2 = gEntityInfo[0].unkC_2;
    }
}

// 1EAA4
void sub_0801EAA4(u8 arg0)
{
    u32 var_r0_4;
    u32 var_r3;

    if (gEntityInfo[arg0].unk8.split.unk8 != 0)
    {
        return;
    }

    if (gEntityInfo[arg0].unk11 == 0x71)
    {
        if (gEntityInfo[arg0 + 1].unk8.split.unk8 != 0)
        {
            return;
        }
    }
    else if (gEntityInfo[arg0].unk11 == 0x72)
    {
        if (gEntityInfo[arg0].unkC_4 == 1)
        {
            return;
        }
    }
    else if (gEntityInfo[arg0].unk11 == 0x74)
    {
        if (gEntityInfo[arg0].unk8.split.unk9 != 0)
        {
            return;
        }
    }

    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2 + 8, 3, 0);
    gEntityInfo[arg0].unkC_4 ^= 1;

    if (gEntityInfo[arg0].unk11 == 0x71)
    {
        gEntityInfo[arg0 + 1].unkC_4 ^= 1;
        if (gEntityInfo[arg0 + 1].unkC_4 == 0)
        {
            gUnk_03005220.unk58 ^= (1 << gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4);
        }
        else
        {
            gUnk_03005220.unk58 |= (1 << gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk4);
        }

        gEntityInfo[arg0 + 1].unk8.split.unk8 = 0x1A;
        if (gEntityInfo[arg0].unkC_4 == 0)
        {
            DmaCopy16(3, &gUnk_08063FE8, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x80);
        }
        else
        {
            DmaCopy16(3, &gUnk_080B9268, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x80);
        }
        m4aSongNumStart(0x5C);
    }
    else if (gEntityInfo[arg0].unk11 == 0x72)
    {
        if ((gEntityInfo[arg0].yPosBg2 & 1) != 0)
        {
            m4aSongNumStart(0xA2);
        }

        if (gEntityInfo[arg0].unkC_4 == 0)
        {
            gUnk_030034E0 -= 1;
        }
        else
        {
            gUnk_030034E0 += 1;
            if (gUnk_030034E0 == gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk5)
            {
                gEntityInfo[arg0 + gEntityInfo[arg0].unk8.split.unk9].unk8.split.unk8 = gEntityInfo[arg0 + gEntityInfo[arg0].unk8.split.unk9].unk8.split.unk9;
                m4aSongNumStart(0x5A);
            }
        }

        if ((gEntityInfo[arg0].yPosBg2 & 1) == 0)
        {
            DmaCopy16(3, &gUnk_080B8F68, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x80);
        }
        else
        {
            DmaCopy16(3, &gUnk_080B8FE8, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x80);
            gEntityInfo[arg0].unk14 = 1;
        }
    }
    else if (gEntityInfo[arg0].unk11 == 0x74)
    {
        gEntityInfo[arg0].unk8.split.unk9 = 0x64;                    
        gEntityInfo[arg0].unkC_4 = gUnk_03005220.unk3_6 ^= 1;
        m4aSongNumStart(0x5B);

        if ((u8) (gUnk_030047B8 - 1) <= (u8) (gUnk_03005470 - 1))
        {
            var_r0_4 = gUnk_030047B8;
        }
        else
        {
            var_r0_4 = gUnk_03005470;
        }

        for (var_r3 = var_r0_4; (var_r3 < gUnk_03005428) && (gEntityInfo[var_r3].unk11 == 0x35); var_r3++)
        {
            if (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_r3 - 0xD].unk0[gUnk_03004C20.room - 1].unk6 == 0)
            {
                gEntityInfo[var_r3].unk10 = 1;
                gEntityInfo[var_r3].unkF = 0;
            }
        }

        if (gEntityInfo[arg0].unkC_4 == 0)
        {
            DmaCopy16(3, gUnk_08063368, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x80);
        }
        else
        {
            DmaCopy16(3, gUnk_080B92E8, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x80);
        }
    }
    else
    {
        if (gUnk_030052A0 == 0xFE)
        {
            gUnk_030052A0 = 0x41;
            gCallbackQueue.current[1] = sub_08044BB8;
            m4aSongNumStart(0x61);
        }
    }
}

// 1EF5C
void sub_0801EF5C(u8 arg0)
{
    gEntityInfo[arg0].unkC_4 = (gEntityInfo[arg0].unkC_4 + 1) & 3;
    sub_0801E664(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 3, 0);

    if ((gEntityInfo[arg0].unkC_4 == 3) || (gEntityInfo[arg0].unkC_4 == 1))
    {
        DmaCopy16(3, gUnk_08064A68, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x200);
    }
    else
    {
        DmaCopy16(3, gUnk_080B9668, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20), 0x200);
    }
    
    if (gEntityInfo[arg0].unkC_4 == 3)
    {
        gEntityInfo[arg0].unkC_2 = 0;
    }
    else
    {
        gEntityInfo[arg0].unkC_2 = gEntityInfo[arg0].unkC_4;
    }
}

// 1F02C
void sub_0801F02C(u8 arg0)
{
    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gEntityInfo[arg0].unk8.split.unk8].unk0;
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gEntityInfo[arg0].unk8.split.unk8].unk2;
            gEntityInfo[arg0].unkF = 0xE;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].unk8.split.unk8 += 1;
            gEntityInfo[arg0].unk8.split.unk9 = 0x80;

            gUnk_03003590[1].unk2 = 0;
            gUnk_03003590[1].unk0 = 0;
            break;

        case 14:
            gUnk_03003590[1].unk0 = (gEntityInfo[arg0].unk8.split.unk9 * gSineTable[((gUnk_03004C20.sceneFrameCounter * 0x10) % 255) + 0x40]) >> 8;
            gUnk_03003590[1].unk2 = -(gEntityInfo[arg0].unk8.split.unk9 * gSineTable[((gUnk_03004C20.sceneFrameCounter * 0x10) % 255) + 0x40]) >> 8;

            if (gEntityInfo[arg0].unk8.split.unk9 != 0)
            {
                gEntityInfo[arg0].unk8.split.unk9 -= 2;
                break;
            }

            gUnk_03003590[1].unk2 = 0x10;
            gUnk_03003590[1].unk0 = 0x10;
            gEntityInfo[arg0].unkF = 0;
            break;

        // Any value between 0 and 13, needed to match
        case 13:
            break;
    }
}

// 1F128
void sub_0801F128(u8 arg0)
{
    u32 var_r6;

    gEntityInfo[arg0].xPosBg2 += 0; // Required to match

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            gEntityInfo[arg0].unkF = 0xE;
            sub_08025B78(arg0, 0);
            break;

        case 14:
            if ((gUnk_03004C20.sceneFrameCounter % 8) == 0)
            {
                if (gEntityInfo[arg0].unkC_2 == 0)
                {
                    gEntityInfo[arg0].xPosBg2 += 1;
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 -= 1;
                }
            }

            if (((gEntityInfo[arg0].xPosBg2 + gUnk_080E2AB4[5 - gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][2]) < (gEntityInfo->xPosBg2 + 0xC)) && ((gEntityInfo[arg0].xPosBg2 + gUnk_080E2AB4[5 - gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][3]) > (gEntityInfo->xPosBg2 - 0xC)))
            {
                if (((gEntityInfo[arg0].yPosBg2 + gUnk_080E2AB4[5 - gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][4]) < gEntityInfo->yPosBg2) && ((gEntityInfo[arg0].yPosBg2 + gUnk_080E2AB4[5 - gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][5]) > (gEntityInfo->yPosBg2 - 0x18)) && (gUnk_03005220.unk3E == 0) && (gUnk_03005400.unkC != 0))
                {
                    sub_08014624(1);
                }
            }

            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
            {
                gEntityInfo[arg0].unkF = 0;
                sub_08025B78(arg0, 1);
            }
            break;

        case 0:
            if (gEntityInfo[arg0].unkC_2 == 0)
            {
                if ((gUnk_03004C20.globalFrameCounter & gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][0]) == gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][0])
                {
                    gEntityInfo[arg0].xPosBg2 += gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][1];
                }

                var_r6 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 4) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)];
                if (gEntityInfo[arg0].xPosBg2 > 0x1C0)
                {
                    var_r6 = gUnk_03004654[0x1B];
                }
            }
            else
            {
                if ((gUnk_03004C20.globalFrameCounter & gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][0]) == gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][0])
                {
                    gEntityInfo[arg0].xPosBg2 -= gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame][1];
                }

                var_r6 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0xC) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)];
                if (gEntityInfo[arg0].xPosBg2 <= 0x1F)
                {
                    var_r6 = gUnk_03004654[0x1B];
                }
            }

            if (((gEntityInfo[arg0].xPosBg2 + gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame + 1][2]) < (gEntityInfo->xPosBg2 + 0xC)) && ((gEntityInfo[arg0].xPosBg2 + gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame + 1][3]) > (gEntityInfo->xPosBg2 - 0xC)))
            {
                if (((gEntityInfo[arg0].yPosBg2 + gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame + 1][4]) < gEntityInfo->yPosBg2) && ((gEntityInfo[arg0].yPosBg2 + gUnk_080E2AB4[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame + 1][5]) > (gEntityInfo->yPosBg2 - 0x18)) && (gUnk_03005220.unk3E == 0) && (gUnk_03005400.unkC != 0))
                {
                    sub_08014624(1);
                }
            }

            if (gUnk_03004654[0x1B] <= var_r6)
            {
                gEntityInfo[arg0].unk10 = 0;
                gEntityInfo[arg0].unkF = 0x1C;
            }
            break;
    }
}

// 1F4D0
void sub_0801F4D0(u8 arg0)
{
    u8 temp_r5;

    temp_r5 = arg0 + 0xE4;

    if (gUnk_03005400.unkA == 1)
    {
        gEntityInfo[arg0].unkF = 0x1C;
        gEntityInfo[arg0].unk10 = 0;
        return;
    }

    switch (gEntityInfo[arg0].unkF)
    {
        case 3:
            gEntityInfo[arg0].unkF = 0;
            gEntityInfo[arg0].unk14 = 0;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].priority = 0;
            if (gEntityInfo[0x12].unkC_2 == 0)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x10;
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 - 0x10;
            }
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2;
            gEntityInfo[arg0].unk8.split.unk8 = gUnk_080E2ADE[temp_r5][0];
            gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2ADE[temp_r5][1];
            gEntityInfo[arg0].unk16 = 4;
            break;

        case 4:
            gEntityInfo[arg0].unkF = 0;
            gEntityInfo[arg0].unk14 = 0;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].priority = 0;
            if (gEntityInfo[0x12].unkC_2 == 0)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x10;
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 - 0x10;
            }
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2;
            gEntityInfo[arg0].unk8.split.unk8 = gUnk_080E2ADE[temp_r5][0xA];
            gEntityInfo[arg0].unk8.split.unk9 = gUnk_080E2ADE[temp_r5][0xB];
            gEntityInfo[arg0].unk16 = 2;
            break;

        case 0:
            gEntityInfo[arg0].yPosBg2 = 0x10C - (((s8) gEntityInfo[arg0].unk8.split.unk9 * gSineTable[gEntityInfo[arg0].unk14]) >> 8);
            gEntityInfo[arg0].xPosBg2 += (s8) gEntityInfo[arg0].unk8.split.unk8;
            gEntityInfo[arg0].unk14 += gEntityInfo[arg0].unk16;
            if (gEntityInfo[arg0].unk14 == 0x88)
            {
                gEntityInfo[arg0].unkF = 0x1C;
                gEntityInfo[arg0].unk10 = 0;
            }
            break;
    }
}

// 1F648
void sub_0801F648(u8 arg0)
{
    u8 var_r5;
    u8 var_r1;

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            sub_08025B78(arg0, 0);
            gEntityInfo[arg0].priority = 1;
            gEntityInfo[arg0].unkF = 0xE;
            DmaCopy16Wait(3, &gUnk_08078648, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
            break;

        case 14:
            if (gEntityInfo[arg0].yPosBg2 > 0x10)
            {
                gEntityInfo[arg0].yPosBg2 -= 5;
            }
            else
            {
                gEntityInfo[arg0].unkF = 0xF;
            }

            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                break;
            }

            if (gEntityInfo[arg0].unkC_2 == 0)
            {
                gEntityInfo[arg0].xPosBg2 += 1;
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 -= 1;
            }
            break;

        case 15:
            gEntityInfo[arg0].yPosBg2 += 1;
            if (gUnk_03004C20.sceneFrameCounter & 2)
            {
                if (gEntityInfo[arg0].unkC_2 == 0)
                {
                    gEntityInfo[arg0].xPosBg2 = 0xA0 + (gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100) + 0x40] >> 0x2);
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 = 0x140 - (gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100) + 0x40] >> 0x2);
                }
            }

            if (gEntityInfo[arg0].yPosBg2 < 0x100)
            {
                return;
            }

            for (var_r1 = 0; var_r1 < 2; var_r1++)
            {
                if (gEntityInfo[var_r1 + 0x13].unkF == 0x1C)
                {
                    gEntityInfo[var_r1 + 0x13].priority = 1;
                    gEntityInfo[var_r1 + 0x13].xPosBg2 = gEntityInfo[arg0].xPosBg2;
                    gEntityInfo[var_r1 + 0x13].yPosBg2 = gEntityInfo[arg0].yPosBg2;
                    gEntityInfo[var_r1 + 0x13].unkF = 0;
                    sub_08025B78(var_r1 + 0x13, 1);
                    sub_08025B78(arg0, 1);
                    gEntityInfo[arg0].unkF = 0;
                    break;
                }
            }
            break;

        case 0:
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
            {
                break;
            }

            gEntityInfo[arg0 - 2].priority = 0;
            gEntityInfo[arg0].unkF = 0x1C;
            gEntityInfo[arg0].unk10 = 0;
            break;

        case 3:
            gEntityInfo[arg0].priority = 2;
            if (arg0 == 0x15)
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0x60;
                gEntityInfo[arg0].unk8.split.unk9 = 0x80;
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0x20;
                gEntityInfo[arg0].unk8.split.unk9 = 0x80;
            }

            gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + ((gEntityInfo[arg0].unk8.split.unk9 * gSineTable[gEntityInfo[arg0].unk8.split.unk8 + 0x40]) >> 8);
            gEntityInfo[arg0].yPosBg2 = (gEntityInfo[0x12].yPosBg2 - gUnk_080E2AF2[gUnk_03005400.unkC - 1]) + ((gEntityInfo[arg0].unk8.split.unk9 * gSineTable[gEntityInfo[arg0].unk8.split.unk8]) >> 8);

            DmaCopy16Wait(3, &gUnk_08078328, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
            sub_08025B78(arg0, 2);
            gEntityInfo[arg0].unkF = 4;
            m4aSongNumStart(0x9C);
            break;

        case 4:
            gEntityInfo[arg0].xPosBg2 = (gEntityInfo[0x12].xPosBg2 + ((gEntityInfo[arg0].unk8.split.unk9 * gSineTable[gEntityInfo[arg0].unk8.split.unk8 + 0x40]) >> 8)) + (thunk_GetRandomValue() % 4);
            gEntityInfo[arg0].yPosBg2 = ((gEntityInfo[0x12].yPosBg2 - gUnk_080E2AF2[gUnk_03005400.unkC - 1]) + ((gEntityInfo[arg0].unk8.split.unk9 * gSineTable[gEntityInfo[arg0].unk8.split.unk8]) >> 8)) + (thunk_GetRandomValue() % 4);

            if ((gEntityInfo[arg0].unk8.split.unk8 == 0x80) || (gEntityInfo[arg0].unk8.split.unk8 == 0))
            {
                gEntityInfo[arg0].priority = 1;
            }
            
            if (gEntityInfo[arg0].unk8.split.unk9 > 0x60)
            {
                var_r5 = 1;
            }
            else if (gEntityInfo[arg0].unk8.split.unk9 > 0x20)
            {
                var_r5 = 2;
            }
            else
            {
                var_r5 = 4;
            }

            gEntityInfo[arg0].unk8.split.unk9 -= var_r5;
            if (arg0 == 0x15)
            {
                gEntityInfo[arg0].unk8.split.unk8 += var_r5;
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk8 -= var_r5;
            }
            
            if (gEntityInfo[arg0].unk8.split.unk9 == 0)
            {
                gEntityInfo[arg0].unkF = 0x1C;
                gEntityInfo[arg0].unk10 = 0;
            }
            break;
    }
}

// 1FADC
void sub_0801FADC(u8 arg0)
{
    u8 temp_r0;
    u32 var_r1;
    u8 var_r3;

    temp_r0 = arg0 - 0x14;
    gEntityInfo[arg0].affineHFlip_matrixNum = temp_r0 + 3;

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + gUnk_080E2AF5[arg0 - 0x16][0];
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2 + gUnk_080E2AF5[arg0 - 0x16][1] - 0x20;
            gEntityInfo[arg0].unk8.split.unk8 = 0x20;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].unkF = 0;

            gUnk_03003590[temp_r0].unk4 = 0;
            gUnk_03003590[temp_r0].unk2 = 0;
            gUnk_03003590[temp_r0].unk0 = 0;
            break;

        case 0:
            if ((gUnk_03004C20.sceneFrameCounter & gUnk_080E2AF5[arg0 - 0x16][2]) == gUnk_080E2AF5[arg0 - 0x16][2])
            {
                gEntityInfo[arg0].xPosBg2 += gUnk_080E2AF5[arg0 - 0x16][4];
            }
            if ((gUnk_03004C20.sceneFrameCounter & gUnk_080E2AF5[arg0 - 0x16][3]) == gUnk_080E2AF5[arg0 - 0x16][3])
            {
                gEntityInfo[arg0].yPosBg2 += gUnk_080E2AF5[arg0 - 0x16][5];
            }

            gEntityInfo[arg0].unk8.split.unk8 -= 1;
            if (gEntityInfo[arg0].unk8.split.unk8 != 0xFF)
            {
                break;
            }
            gEntityInfo[arg0].unkF = 0x1C;
            gEntityInfo[arg0].unk10 = 0;
            break;

        case 24:
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2AF5[arg0 - 0x16][0] - (((8 - gBgInfo[1].hOfs) * 4) - 0xF0);
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2AF5[arg0 - 0x16][1] + 0xD0;
            gEntityInfo[arg0].priority = 2;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].unkC_2 = 2;

            gUnk_03003590[temp_r0].unk2 = 0xFFC0;
            gUnk_03003590[temp_r0].unk0 = 0xFFC0;
            gUnk_03003590[temp_r0].unk4 = 0x80;

            gEntityInfo[arg0].unkF = 0xE;
            var_r1 = (thunk_GetRandomValue() % 10) * 10;
            if (arg0 > 0x1B)
            {
                var_r1 += 100;
            }
            gEntityInfo[arg0].unk8.split.unk8 = var_r1;

            sub_08025B78(arg0, 0);
            m4aSongNumStart(0x6C);
            break;

        case 14:
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                if (gEntityInfo[arg0].unk8.split.unk8 == 1)
                {
                    gUnk_03005400.unkE_1 = 1;
                }
                gUnk_03005400.unkD = 3;
                gEntityInfo[arg0].unk8.split.unk8 -= 1;
                gEntityInfo[arg0].xPosBg2 = gUnk_080E2AF5[arg0 - 0x16][0] - (((8 - gBgInfo[1].hOfs) * 4) - 0xF0);
                break;
            }

            if ((gUnk_03004C20.sceneFrameCounter % gUnk_080E2AF5[arg0 - 0x16][2]) == 0)
            {
                gEntityInfo[arg0].xPosBg2 += gUnk_080E2AF5[arg0 - 0x16][4];
            }
            if ((gUnk_03004C20.sceneFrameCounter % gUnk_080E2AF5[arg0 - 0x16][3]) == 0)
            {
                gEntityInfo[arg0].yPosBg2 += gUnk_080E2AF5[arg0 - 0x16][5];
            }
            if (gEntityInfo[arg0].yPosBg2 > 0x28)
            {
                return;
            }

            gEntityInfo[arg0].unkF = 0xF;
            gEntityInfo[arg0].unkC_2 = 0;
            if (arg0 <= 0x1B)
            {
                gEntityInfo[arg0].xPosBg2 = ((arg0 - 0x16) << 6) + 0x50;
            }
            else
            {
                var_r3 = thunk_GetRandomValue() % 5;
                while (1)
                {
                    if (((gUnk_03005400.unk16 >> var_r3) & 1) != 0)
                    {
                        var_r3 = (var_r3 + 1) % 5;
                        gUnk_03005400.unk16 += 0;
                    }
                    else
                    {
                        break;
                    }
                }
                gUnk_03005400.unk16 |= (1 << var_r3);
                gEntityInfo[arg0].xPosBg2 = (var_r3 << 6) + 0x70;
            }
            gEntityInfo[arg0].priority = 0;

            gUnk_03003590[temp_r0].unk2 = 0;
            gUnk_03003590[temp_r0].unk0 = 0;
            gUnk_03003590[temp_r0].unk4 = 0;
            break;

        case 15:
            gEntityInfo[arg0].yPosBg2 += 2;
            if (gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)]); // Required to match
            if ((gUnk_03004654[0x1B] <= gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)]) && (gEntityInfo[arg0].yPosBg2 > 0x64))
            {
                m4aSongNumStart(0x43);
                gEntityInfo[arg0].unk8.split.unk9 = 0;
                gEntityInfo[arg0].unkF = 0x10;
            }
            else if (gEntityInfo[arg0].yPosBg2 > 0x167)
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0x46;
                gEntityInfo[arg0].unkF = 0x1C;
                gEntityInfo[arg0].unk10 = 0;
            }
            break;

        case 16:
            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                if ((s16) gUnk_03003590[temp_r0].unk0 < 0x80)
                {
                    gUnk_03003590[temp_r0].unk0 += 4;
                    gUnk_03003590[temp_r0].unk2 += 4;
                }
                else
                {
                    gEntityInfo[arg0].unkF = 0x11;
                }
            }
            gEntityInfo[arg0].yPosBg2 -= 1;
            break;

        case 17:
            if ((s16) gUnk_03003590[temp_r0].unk0 < 0xA0)
            {
                gUnk_03003590[temp_r0].unk0 += 4;
                gUnk_03003590[temp_r0].unk2 += 4;
            }

            gEntityInfo[arg0].yPosBg2 += 2;
            if (gEntityInfo[arg0].yPosBg2 > 0x167)
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0x46;
                gEntityInfo[arg0].unkF = 0x1C;
                gEntityInfo[arg0].unk10 = 0;
            }
            break;
    }
}

// 1FFF0
void sub_0801FFF0(u8 arg0)
{
    u16 temp_r1;
    u16 temp_r5;

    if ((gUnk_03004C20.sceneFrameCounter & 8) != 0)
    {
        if (gEntityInfo[arg0].unk8.split.unk8 != 0)
        {
            gEntityInfo[arg0].unk8.split.unk8 -= 1;
        }
        if (gEntityInfo[arg0].unk8.split.unk9 != 0)
        {
            gEntityInfo[arg0].unk8.split.unk9 -= 1;
        }
    }

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            sub_08025B78(arg0, 0);
            gEntityInfo[arg0].unk8.split.unk9 = 0;
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            gEntityInfo[arg0].unkC_2 = gEntityInfo[0x12].unkC_2;

            if (arg0 == 0x15)
            {
                gEntityInfo[arg0].unkF = 0xE;
            }
            else
            {
                gEntityInfo[arg0].unkF = 0xF;
            }

            if (gEntityInfo[arg0].unkC_2 == 0)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x30;
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 - 0x30;
            }
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2;
            break;

        case 19:
            if (gEntityInfo[arg0].unk8.split.unk8 > 0x1C)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x16 - (gEntityInfo[0x12].unkC_2 * 0x2C);
                gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2;
                break;
            }

            if (gEntityInfo[arg0].unk8.split.unk8 > 0x18)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x17 - (gEntityInfo[0x12].unkC_2 * 0x2E);
                gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2 - 0x20;
                break;
            }

            if (gEntityInfo[arg0].unk8.split.unk8 > 0x11)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 6 - (((u32) (gEntityInfo[0x12].unkC_2)) * 0xC);
                gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2 - 0x34;
                break;
            }

            temp_r5 = Abs(gEntityInfo->xPosBg2 - gEntityInfo[arg0].xPosBg2);
            temp_r1 = Abs(gEntityInfo->yPosBg2 - gEntityInfo[arg0].yPosBg2);
            if (temp_r5 > temp_r1)
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0xFF;
                gEntityInfo[arg0].unk8.split.unk9 = (temp_r1 * 0xFF) / temp_r5;
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk8 = (temp_r5 * 0xC0) / temp_r1;
                gEntityInfo[arg0].unk8.split.unk9 = 0xFF;
            }

            gEntityInfo[arg0].unkC_2 = gEntityInfo[0x12].unkC_2;
            gEntityInfo[arg0].unkF = 0xF;
            break;

        case 14:
            gEntityInfo[arg0].yPosBg2 -= ((gEntityInfo[arg0].unk8.split.unk9 >> 6) + 1);
            if (gEntityInfo[arg0].yPosBg2 < 0x40)
            {
                gEntityInfo[arg0].unkF = 0xF;
            }
            goto block_36;

        case 15:
            gEntityInfo[arg0].yPosBg2 += ((gEntityInfo[arg0].unk8.split.unk9 >> 6) + 1);
            if (gEntityInfo[arg0].yPosBg2 > 0xE2)
            {
                gEntityInfo[arg0].unkF = 0xE;
            }

block_36:
            if (gEntityInfo[arg0].unkC_2 == 0)
            {
                gEntityInfo[arg0].xPosBg2 += ((gEntityInfo[arg0].unk8.split.unk8 >> 6) + 1);
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 -= ((gEntityInfo[arg0].unk8.split.unk8 >> 6) + 1);
            }

            if (gEntityInfo[arg0].xPosBg2 > 0x1A0)
            {
                gEntityInfo[arg0].unkC_2 = 1;
                gEntityInfo[arg0].xPosBg2 = 0x1A0;
            }
            if (gEntityInfo[arg0].xPosBg2 < 0x40)
            {
                gEntityInfo[arg0].unkC_2 = 0;
                gEntityInfo[arg0].xPosBg2 = 0x40;
            }

            if (((gEntityInfo[0x12].xPosBg2 - 0xE) < (gEntityInfo[arg0].xPosBg2 + 0xC)) && ((gEntityInfo[0x12].xPosBg2 + 0xE) > (gEntityInfo[arg0].xPosBg2 - 0xC)))
            {
                if (((gEntityInfo[0x12].yPosBg2 - 0x14) < gEntityInfo[arg0].yPosBg2) && (gEntityInfo[0x12].yPosBg2 > (gEntityInfo[arg0].yPosBg2 - 0x18)) && (gEntityInfo[arg0].unk8.split.unk8 == 0) && (gEntityInfo[arg0].unk8.split.unk9 == 0) && (gUnk_03005400.unkA == 5))
                {
                    gUnk_03005400.unkB = 8;
                    gUnk_03005400.unkA = 6;
                    gEntityInfo[arg0].unk8.split.unk8 = 0x1F;
                    gEntityInfo[arg0].unkF = 0x13;
                }
            }
            break;
    }
}

// https://decomp.me/scratch/TBZiC
// 202D4
NONMATCH("asm/nonmatching/sub_080202D4.inc", void sub_080202D4(u8 arg0))
{
    struct Unk_0800BEF0 sp0;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    u8 sp20;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r2;
    u32 temp_r5;
    s8 var_r3;

    if (arg0 == 0x15)
    {
        sp20 = 0;
    }
    else
    {
        sp20 = arg0 + 0xEC;
    }
    gEntityInfo[arg0].affineHFlip_matrixNum = sp20 + 3;

    switch (gEntityInfo[arg0].unkF)
    {
        case 3:
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x15].xPosBg2 + ((gSineTable[(gEntityInfo[0].xPosBg2 >> 2) + 0xC0] << 0x10) >> 0x15);
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x15].yPosBg2 - ((gSineTable[(gEntityInfo[0].xPosBg2 >> 2) + 0x80] << 0x10) >> 0x15);
            break;

        case 4:
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x15].xPosBg2;
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x15].yPosBg2;
            break;

        case 0:
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
            {
                sub_08025B78(arg0, 0);
            }
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + ((gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100) + 0x40] << 0x10) >> 0x16);
            break;

        case 14:
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 5)
            {
                sub_08025B78(0x15, 5);
            }
            else
            {
                if (gEntityInfo[arg0].yPosBg2 > 0x77)
                {
                    gEntityInfo[arg0].yPosBg2 -= 1;
                }
                else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[0x17].unk8.split.unk9 = 0;
                    gEntityInfo[0x16].unk8.split.unk9 = 0;
                    gEntityInfo[0x15].unk8.split.unk9 = 0;
                    gEntityInfo[arg0].unk8.split.unk8 = 0x80;
                    gEntityInfo[0x15].unkC_2 = 1;
                    sub_08025B78(arg0, 6);
                    gEntityInfo[arg0].unkF = 0xF;
                }
            }
            break;

        case 15:
            switch (gEntityInfo[arg0].unk8.split.unk8)
            {
                case 0x74:
                    gEntityInfo[0x1B].unkF = 0x19;
                    gEntityInfo[0x1B].unk8.split.unk8 = arg0;
                    break;

                case 0x6E:
                    gEntityInfo[0x19].unkF = 0x19;
                    gEntityInfo[0x19].unk8.split.unk8 = arg0;
                    break;

                case 0x68:
                    gEntityInfo[0x1A].unkF = 0x19;
                    gEntityInfo[0x1A].unk8.split.unk8 = arg0;
                    break;
            }

            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 6)
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[0x15].unkC_2 = 0;
                    sub_08025B78(arg0, 7);
                }
            }
            else if ((gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 7) && (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF))
            {
                sub_08025B78(arg0, 3);
            }

            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 -= 1;
            }
            else
            {
                gEntityInfo[0x17].xPosBg2 = gEntityInfo[0x15].xPosBg2;
                gEntityInfo[0x16].xPosBg2 = gEntityInfo[0x15].xPosBg2;
                gEntityInfo[0x17].yPosBg2 = gEntityInfo[0x15].yPosBg2;
                gEntityInfo[0x16].yPosBg2 = gEntityInfo[0x15].yPosBg2;

                sub_08025B78(0x16, 3);
                sub_08025B78(0x17, 3);

                gEntityInfo[0x15].unkF = 0x12;
                gEntityInfo[0x17].unkF = 0x10;
                gEntityInfo[0x16].unkF = 0x10;
            }
            break;

        case 16:
            if (gEntityInfo[arg0].unk8.split.unk9 & 1)
            {
                gEntityInfo[arg0].unkF = 0x1A;
            }
            else
            {
                gEntityInfo[arg0].unk10 = 1;
                if (gEntityInfo[arg0].yPosBg2 <= 0xB0)
                {
                    gEntityInfo[arg0].yPosBg2 += 1;
                    if (arg0 == 0x16)
                    {
                        gEntityInfo[arg0].xPosBg2 -= 2;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 += 2;
                    }
                }
                else
                {
                    gEntityInfo[arg0].unk8.split.unk8 = 0x1E;
                    gUnk_03005400.unk13 = thunk_GetRandomValue() % 2;
                    gEntityInfo[arg0].unkF = 0x12;
                }
            }
            break;

        case 18:
            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                if (gEntityInfo[arg0].unk8.split.unk8 != 0)
                {
                    gEntityInfo[arg0].unk8.split.unk8 -= 1;
                }
            }

            switch (arg0)
            {
                case 21:
                    if ((gUnk_03004C20.sceneFrameCounter % 0x200) == 0)
                    {
                        sub_08025B78(arg0, 3);
                    }
                    gEntityInfo[arg0].yPosBg2 = (gSineTable[gUnk_03004C20.sceneFrameCounter % 0x100] >> 0x6) + 0x78;

                    if ((gEntityInfo[arg0].unk8.split.unk8 == 0) && (gEntityInfo[0x16].unkF == 0x1C) && (gEntityInfo[0x17].unkF == 0x1C))
                    {
                        gUnk_03005400.unk4 = gEntityInfo[0].xPosBg2;
                        gUnk_03005400.unk6 = 0xF0;
                        gUnk_03005400.unk15 = 0x28;
                        gEntityInfo[arg0].unkC_2 = gUnk_03005400.unk13;
                        gEntityInfo[arg0].unkF = 5;
                    }
                    break;

                case 22:
                    if ((gUnk_03004C20.sceneFrameCounter % 0x80) == 0)
                    {
                        sub_08025B78(arg0, 3);
                    }

                    gEntityInfo[arg0].yPosBg2 = (gSineTable[gUnk_03004C20.sceneFrameCounter % 0x100] >> 0x6) + 0xB0;
                    if (((gEntityInfo[arg0].unk8.split.unk8 == 0) && (gUnk_03005400.unk13 == 0)) || (gEntityInfo[0x17].unkF == 0x1C))
                    {
                        gUnk_03005400.unk4 = gEntityInfo[0].xPosBg2;
                        gUnk_03005400.unk6 = 0x118;
                        gUnk_03005400.unk15 = 0x78;
                        gEntityInfo[arg0].unkC_2 = 0;
                        gEntityInfo[arg0].unkF = 5;
                    }
                    break;

                case 23:
                    if ((gUnk_03004C20.sceneFrameCounter % 0x100) == 0)
                    {
                        sub_08025B78(0x17, 3);
                    }

                    gEntityInfo[arg0].yPosBg2 = (gSineTable[gUnk_03004C20.sceneFrameCounter % 0x100] >> 0x6) + 0xB0;
                    if (((gEntityInfo[arg0].unk8.split.unk8 == 0) && (gUnk_03005400.unk13 == 1)) || (gEntityInfo[0x16].unkF == 0x1C))
                    {
                        gUnk_03005400.unk4 = gEntityInfo[0].xPosBg2;
                        gUnk_03005400.unk6 = 0x118;
                        gUnk_03005400.unk15 = 0x78;
                        gEntityInfo[arg0].unkC_2 = 1;
                        gEntityInfo[arg0].unkF = 5;
                    }
                    break;
            }
            break;

        case 5:
            switch (gEntityInfo[arg0].unk8.split.unk9 & 0xFE)
            {
                case 0:
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        var_r3 = -gUnk_03005400.unk15;
                    }
                    else
                    {
                        var_r3 = gUnk_03005400.unk15;
                    }
                    sp0.unk0 = gEntityInfo[arg0].xPosBg2;
                    sp0.unk2 = gEntityInfo[arg0].yPosBg2;
                    sp0.unk4 = (gUnk_03005400.unk4 + var_r3) & ~3;
                    sp0.unk6 = gUnk_03005400.unk6;
                    if (arg0 == 0x15)
                    {                        
                        sp0.unk8 = sp0.unk9 = 2;
                    }
                    else
                    {                        
                        sp0.unk8 = sp0.unk9 = 3;
                    }
                    sub_0800BEF0(&sp10, sp0);
                    temp_r5 = sp10;
                    gEntityInfo[arg0].xPosBg2 = temp_r5;
                    gEntityInfo[arg0].yPosBg2 = temp_r5 >> 0x10;
                    do {} while(0); // FAKE

                    if (((gEntityInfo[arg0].xPosBg2 & 0xF8) == ((gUnk_03005400.unk4 + var_r3) & 0xF8)) && (((gEntityInfo[arg0].yPosBg2 & 0xF8) == (gUnk_03005400.unk6 & 0xF8))))
                    {
                        if ((s16) gEntityInfo[arg0].xPosBg2 < gEntityInfo[0].xPosBg2)
                        {
                            gEntityInfo[arg0].unkC_2 = 0;
                            gUnk_03005400.unk4 = gEntityInfo[arg0].xPosBg2 + (s8) gUnk_03005400.unk15;
                        }
                        else
                        {
                            gEntityInfo[arg0].unkC_2 = 1;
                            gUnk_03005400.unk4 = gEntityInfo[arg0].xPosBg2 - (s8) gUnk_03005400.unk15;
                        }
                        gEntityInfo[arg0].unk8.split.unk8 = ((gEntityInfo[arg0].unkC_2 + 1) & 1) << 7;
                        gEntityInfo[arg0].unk8.split.unk9 |= 2;
                    }
                    break;

                case 2:
                    gEntityInfo[arg0].xPosBg2 = (((s8) gUnk_03005400.unk15 * gSineTable[gEntityInfo[arg0].unk8.split.unk8 + 0x40]) >> 8) + gUnk_03005400.unk4;
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].yPosBg2 = ((-(gSineTable[gEntityInfo[arg0].unk8.split.unk8] << 5)) >> 8) + gUnk_03005400.unk6;
                    }
                    else
                    {
                        gEntityInfo[arg0].yPosBg2 = ((gSineTable[gEntityInfo[arg0].unk8.split.unk8] << 0x10) >> 0x13) + gUnk_03005400.unk6;
                    }

                    if (arg0 == 0x15)
                    {
                        gEntityInfo[arg0].unk8.split.unk8 += 2;
                    }
                    else
                    {
                        gEntityInfo[arg0].unk8.split.unk8 += 1;
                    }
                    if ((gEntityInfo[arg0].unk8.split.unk8 % 0x80) == 0)
                    {
                        gUnk_030034DC = 0;
                        gEntityInfo[arg0].unk8.split.unk9 |= 4;
                    }
                    break;

                case 6:
                    sp0.unk0 = gEntityInfo[arg0].xPosBg2;
                    sp0.unk2 = gEntityInfo[arg0].yPosBg2;
                    sp0.unk4 = 0xF0;
                    sp0.unk6 = 0x78;
                    sp0.unk8 = sp0.unk9 = 4;
                    sub_0800BEF0(&sp14, sp0);
                    temp_r0_2 = sp14;
                    gEntityInfo[arg0].xPosBg2 = temp_r0_2;
                    gEntityInfo[arg0].yPosBg2 = temp_r0_2 >> 0x10;

                    if ((gEntityInfo[arg0].xPosBg2 >> 3) == 0x1E)
                    {
                        if ((gEntityInfo[arg0].yPosBg2 >> 3) == 0xF)
                        {
                            gEntityInfo[arg0].unk8.split.unk9 &= 1;
                            if (arg0 == 0x15)
                            {
                                if (gUnk_03005400.unk0 == 0)
                                {
                                    sub_080145A8(1);
                                    sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2, 0x13);
                                    sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2, 0x14);
                                    gEntityInfo[0x14].unkF = 0x1C;
                                    gEntityInfo[0x13].unkF = 0x1C;
                                    gEntityInfo[arg0].unkF = 0x11;
                                }
                                else
                                {
                                    gEntityInfo[arg0].unk8.split.unk8 = 0x80;
                                    gEntityInfo[0x15].unkC_2 = 1;
                                    sub_08025B78(0x15, 6);
                                    gEntityInfo[arg0].unkF = 0xF;
                                }
                            }
                            else
                            {
                                gEntityInfo[arg0].unkF = 0x1A;
                                break;
                            }
                        }
                    }
                    break;
            }
            break;

        case 19:
            sp0.unk0 = gEntityInfo[arg0].xPosBg2;
            sp0.unk2 = gEntityInfo[arg0].yPosBg2;
            sp0.unk4 = 0xF0;
            sp0.unk6 = 0x78;
            sp0.unk8 = sp0.unk9 = 2;
            sub_0800BEF0(&sp18, sp0);
            temp_r0 = sp18;
            gEntityInfo[arg0].xPosBg2 = temp_r0;
            gEntityInfo[arg0].yPosBg2 = temp_r0 >> 0x10;

            if (gEntityInfo[arg0].unk8.split.unk8 == 1)
            {
                m4aSongNumStart(0x63);
                gEntityInfo[arg0].unk8.split.unk8 = 0;
            }

            if (((gEntityInfo[arg0].xPosBg2 >> 3) == 0x1E) && ((gEntityInfo[arg0].yPosBg2 >> 3) == 0xF))
            {
                gEntityInfo[arg0].unk8.split.unk9 &= 1;
                if (arg0 == 0x15)
                {
                    DmaCopy16Wait(3, &gUnk_08078968, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    gEntityInfo[arg0].unkF = 0x11;
                    sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2, 0x13);
                    sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2, 0x14);
                    gEntityInfo[0x14].unkF = 0x1C;
                    gEntityInfo[0x13].unkF = 0x1C;
                }
                else
                {
                    gUnk_03003590[sp20].unk0 = 0;
                    gUnk_03003590[sp20].unk2 = 0;
                    gEntityInfo[arg0].unkF = 0x1A;
                }
            }
            else if (arg0 == 0x15)
            {
                if ((gUnk_03004C20.sceneFrameCounter % 10) == 5)
                {
                    DmaCopy16Wait(3, &gUnk_08078968, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                }

                if ((gUnk_03004C20.sceneFrameCounter % 10) == 0)
                {
                    DmaFill16(3, 0xFFFF, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                }
            }
            else
            {
                gUnk_03003590[sp20].unk0 = (gSineTable[((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) + 0x40] << 0x10) >> 0x12;
                gUnk_03003590[sp20].unk2 = (gSineTable[(gUnk_03004C20.sceneFrameCounter * 8) % 0x100] << 0x10) >> 0x13;
            }
            break;

        case 17:
            sp0.unk0 = gEntityInfo[arg0].xPosBg2;
            sp0.unk2 = gEntityInfo[arg0].yPosBg2;
            sp0.unk4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
            sp0.unk6 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
            sp0.unk8 = sp0.unk9 = 2;
            sub_0800BEF0(&sp1C, sp0);
            temp_r2 = sp1C;
            gEntityInfo[arg0].xPosBg2 = temp_r2;
            gEntityInfo[arg0].yPosBg2 = temp_r2 >> 0x10;

            if (((gEntityInfo[arg0].xPosBg2 >> 0x3) == (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 >> 3)) && ((gEntityInfo[arg0].yPosBg2 >> 3) == (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 >> 3)))
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 4)
                {
                    sub_08025B78(arg0, 4);
                }
                else
                {
                    gEntityInfo[arg0].unkC_2 = 0;
                    gUnk_03005400.unkA = 9;
                    gEntityInfo[arg0].unkF = 0xFF;
                }
            }
            break;

        case 6:
            if (gEntityAnimationInfo[0x15 - gUnk_0300363C].timer == 0xFF)
            {
                gEntityInfo[0x15].unk8.split.unk8 += 1;
                gEntityInfo[0x15].xPosBg2 += 4;
                gEntityInfo[0x15].yPosBg2 -= (gSineTable[gEntityInfo[0x15].unk8.split.unk8] >> 0x6);
                if (gEntityInfo[0x15].xPosBg2 > 0x200)
                {
                    gUnk_03005400.unkA = 0xB;
                }
            }
            break;

        case 26:
            gEntityInfo[arg0].unkF = 0x1C;
            gEntityInfo[arg0].unk10 = 0;
            break;
    }

    if (gEntityInfo[arg0].unkF == 0xF)
    {
        gUnk_03003590[sp20].unk5_0 = gEntityInfo[arg0].unkC_2;
    }
}
END_NONMATCH

// 20FB8
void sub_08020FB8(u8 arg0)
{
    switch (arg0)
    {
        case 0x19:
            gEntityInfo[arg0].affineHFlip_matrixNum = 7;
            gUnk_03003590[4].unk4 = 0;
            break;

        case 0x1A:
            gEntityInfo[arg0].affineHFlip_matrixNum = 8;
            gUnk_03003590[5].unk4 = 0x20;
            break;

        case 0x1B:
            gEntityInfo[arg0].affineHFlip_matrixNum = 9;
            gUnk_03003590[6].unk4 = 0xE0;
            break;
    }

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].xPosBg2 = gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].xPosBg2;
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[gEntityInfo[arg0].unk8.split.unk8].yPosBg2 + 0x20;
            sub_08025B78(arg0, 0x11);
            gEntityInfo[arg0].unkF = 0;
            m4aSongNumStart(0x74);

            switch (arg0)
            {
                case 25:
                    gEntityInfo[arg0].unk8.split.unk8 = 0;
                    gEntityInfo[arg0].unk8.split.unk9 = 2;
                    break;

                case 26:
                    gEntityInfo[arg0].unk8.split.unk8 = 0xFF;
                    gEntityInfo[arg0].unk8.split.unk9 = 1;
                    gEntityInfo[arg0].unkC_2 = 1;
                    break;

                case 27:
                    gEntityInfo[arg0].unk8.split.unk8 = 1;
                    gEntityInfo[arg0].unk8.split.unk9 = 1;
                    gEntityInfo[arg0].unkC_2 = 0;
                    break;
            }
            break;

        case 0:
            gEntityInfo[arg0].xPosBg2 = (s8) gEntityInfo[arg0].unk8.split.unk8 + gEntityInfo[arg0].xPosBg2;
            gEntityInfo[arg0].yPosBg2 += (s8) gEntityInfo[arg0].unk8.split.unk9;

            if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
            {
                gEntityInfo[arg0].xPosBg2 += (s8) gEntityInfo[arg0].unk8.split.unk8;
            }

            if (gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)]); // Required to match
            if (gUnk_03004654[0x1B] <= gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)])
            {
                gEntityInfo[arg0].unkF = 0x1C;
                gEntityInfo[arg0].unk10 = 0;
                gEntityAnimationInfo[arg0 - gUnk_0300363C].timer = 0xFF;
            }
            break;
    }
}

extern s32 gUnk_03000004; // TODO: should be static variable inside sub_08021194 (?)

// 21194
void sub_08021194(u8 arg0)
{
    struct Unk_0800BEF0 sp0;
    s32 spC;
    u32 temp_r0;
    u16 var_r8;
    u16 var_sl;
    u8 temp_r5;

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            sub_08025B78(arg0, 0xE);
            gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2;
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2 - 0x40;
            gEntityInfo[arg0].unkF = 0x10;
            gEntityInfo[arg0].priority = 0;
            gUnk_03005400.unk14 = 5;
            DmaCopy16Wait(3, &gUnk_08078988, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
            break;

        case 16:
            if (gEntityAnimationInfo[0x12 - gUnk_0300363C].state == 9)
            {
                return;
            }

            var_r8 = Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[arg0].xPosBg2);
            var_sl = Abs(gEntityInfo[0].yPosBg2 - gEntityInfo[arg0].yPosBg2);

            if (var_r8 > var_sl)
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0xFF;
                gEntityInfo[arg0].unk8.split.unk9 = (var_sl * 0xFF) / var_r8;
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk8 = (var_r8 * 0xFF) / var_sl;
                gEntityInfo[arg0].unk8.split.unk9 = 0xFF;
            }

            if (gEntityInfo[arg0].xPosBg2 > gEntityInfo[0].xPosBg2)
            {
                gEntityInfo[arg0].unkC_4 = 1;
            }
            else
            {
                gEntityInfo[arg0].unkC_4 = 0;
            }

            if (gEntityInfo[arg0].yPosBg2 > gEntityInfo[0].yPosBg2)
            {
                gEntityInfo[arg0].unkC_4 |= 2;
            }
            else
            {
                gEntityInfo[arg0].unkC_4 &= 1;
            }

            m4aSongNumStart(0x70);
            gEntityInfo[arg0].unkF = 0xE;
            break;

        case 0:
            var_r8 = gEntityInfo[arg0].xPosBg2;
            var_sl = gEntityInfo[arg0].yPosBg2;

            if (((gEntityInfo[arg0].xPosBg2 - 0x14) < (gEntityInfo[0x15].xPosBg2 + 0x14)) && ((gEntityInfo[arg0].xPosBg2 + 0x14) > (gEntityInfo[0x15].xPosBg2 - 0x14)))
            {
                if (((gEntityInfo[arg0].yPosBg2 - 0x34) < (gEntityInfo[0x15].yPosBg2 - 0xA)) && ((gEntityInfo[arg0].yPosBg2 - 0xC) > (gEntityInfo[0x15].yPosBg2 - 0x36)))
                {
                    gUnk_03005400.unkA = 1;
                    gEntityAnimationInfo[arg0 - gUnk_0300363C].timer = 0xFF;
                    gEntityInfo[arg0].unk8.split.unk8 = 0;
                    gEntityInfo[arg0].unk8.split.unk9 = 0;
                    gEntityInfo[arg0].unkF = 0x1C;
                    gEntityInfo[arg0].unk10 = 0;
                    sub_08025B78(0x15, 4);
                    gEntityInfo[0x15].unkF = 8;
                    gEntityInfo[0x1D].unkF = 0x1C;
                    gEntityInfo[0x1C].unkF = 0x1C;
                    gEntityInfo[0x1D].unk10 = 0;
                    gEntityInfo[0x1C].unk10 = 0;
                    gEntityInfo[0x11].unkF = 0x19;
                    gEntityInfo[0x11].xPosBg2 = gEntityInfo[0x15].xPosBg2;
                    gEntityInfo[0x11].yPosBg2 = gEntityInfo[0x15].yPosBg2;
                    sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2, 0x13);
                    sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2, 0x14);
                    gEntityInfo[0x14].unkF = 0x1C;
                    gEntityInfo[0x13].unkF = 0x1C;
                    m4aSongNumStart(0x71);
                    break;
                }
            }

            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                if (gEntityInfo[arg0].unkC_4 & 2)
                {
                    gEntityInfo[arg0].yPosBg2 -= (gEntityInfo[arg0].unk8.split.unk9 >> 6);
                }
                else
                {
                    gEntityInfo[arg0].yPosBg2 += (gEntityInfo[arg0].unk8.split.unk9 >> 6);
                }

                if (gEntityInfo[arg0].unkC_4 & 1)
                {
                    gEntityInfo[arg0].xPosBg2 -= (gEntityInfo[arg0].unk8.split.unk8 >> 6);
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 += (gEntityInfo[arg0].unk8.split.unk8 >> 6);
                }
            }
            goto block_33;

        case 14:
            var_r8 = gEntityInfo[arg0].xPosBg2;
            var_sl = gEntityInfo[arg0].yPosBg2;
            goto block_33;

block_33:
            if (gEntityInfo[arg0].unkC_4 & 2)
            {
                gEntityInfo[arg0].yPosBg2 -= (gEntityInfo[arg0].unk8.split.unk9 >> 6);
            }
            else
            {
                gEntityInfo[arg0].yPosBg2 += (gEntityInfo[arg0].unk8.split.unk9 >> 6);
            }

            if (gEntityInfo[arg0].unkC_4 & 1)
            {
                gEntityInfo[arg0].xPosBg2 -= (gEntityInfo[arg0].unk8.split.unk8 >> 6);
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 += (gEntityInfo[arg0].unk8.split.unk8 >> 6);
            }

block_40:
            temp_r5 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - 0x14) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x1A) >> 3) * gBgInfo[2].hLength)];
            temp_r5 = MAX(temp_r5, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + 0x14) >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x1A) >> 3) * gBgInfo[2].hLength)]);
            if (gUnk_03004654[0x1B] <= temp_r5)
            {
                gEntityInfo[arg0].xPosBg2 = var_r8;
                gEntityInfo[arg0].unkC_4 ^= 1;

                if (gUnk_03005400.unk14 != 0)
                {
                    gUnk_03005400.unk14 -= 1;
                }

                if ((gEntityInfo[arg0].unk8.split.unk9 >> 6) == 0)
                {
                    gEntityInfo[arg0].unk8.split.unk9 = ((thunk_GetRandomValue() % 4) + 1) << 6;
                }

                m4aSongNumStart(0x70);
            }

            temp_r5 = gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)];
            temp_r5 = MAX(temp_r5, gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 0x34) >> 3) * gBgInfo[2].hLength)]);
            if (gUnk_03004654[0x1B] <= temp_r5)
            {
                gEntityInfo[arg0].yPosBg2 = var_sl;
                gEntityInfo[arg0].unkC_4 ^= 2;

                if (gUnk_03005400.unk14 != 0)
                {
                    gUnk_03005400.unk14 -= 1;
                }

                if ((gEntityInfo[arg0].unk8.split.unk8 >> 6) == 0)
                {
                    gEntityInfo[arg0].unk8.split.unk8 = ((thunk_GetRandomValue() % 4) + 1) << 6;
                }

                m4aSongNumStart(0x70);
            }

            if (gUnk_03005400.unk14 != 0)
            {
                return;
            }

            var_r8 = Abs(gEntityInfo[0x12].xPosBg2 - gEntityInfo[arg0].xPosBg2);
            var_sl = Abs(gEntityInfo[0x12].yPosBg2 - 0x40 - gEntityInfo[arg0].yPosBg2);

            if (var_r8 > var_sl)
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0xFF;
                gEntityInfo[arg0].unk8.split.unk9 = (var_sl * 0xFF) / var_r8;
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk8 = (var_r8 * 0xC0) / var_sl;
                gEntityInfo[arg0].unk8.split.unk9 = 0xFF;
            }

            if (gEntityInfo[arg0].xPosBg2 > gEntityInfo[0x12].xPosBg2)
            {
                gEntityInfo[arg0].unkC_4 = 1;
            }
            else
            {
                gEntityInfo[arg0].unkC_4 = 0;
            }

            if (gEntityInfo[arg0].yPosBg2 > gEntityInfo[0x12].yPosBg2)
            {
                gEntityInfo[arg0].unkC_4 |= 2;
            }
            else
            {
                gEntityInfo[arg0].unkC_4 &= 1;
            }

            gEntityInfo[arg0].unkF = 0xF;
            gUnk_030034DC = 0;
            sub_08025B78(0x12, 0xA);
            gUnk_03000004 = 0;
            break;

        case 15:
            sp0.unk0 = gEntityInfo[arg0].xPosBg2;
            sp0.unk2 = gEntityInfo[arg0].yPosBg2;
            sp0.unk4 = gEntityInfo[0x12].xPosBg2;
            sp0.unk6 = gEntityInfo[0x12].yPosBg2 - 0x40;
            sp0.unk8 = sp0.unk9 = 8;
            sub_0800BEF0(&spC, sp0);
            temp_r0 = spC;
            gEntityInfo[arg0].xPosBg2 = temp_r0;
            gEntityInfo[arg0].yPosBg2 = temp_r0 >> 0x10;

            if ((gEntityInfo[0x12].xPosBg2 - 0xC) >= (gEntityInfo[arg0].xPosBg2 + 0x14))
            {
                goto block_40;
            }
            if ((gEntityInfo[0x12].xPosBg2 + 0xC) <= (gEntityInfo[arg0].xPosBg2 - 0x14))
            {
                goto block_40;
            }
            if ((gEntityInfo[0x12].yPosBg2 - 0x40) <= (gEntityInfo[arg0].yPosBg2 - 0xC))
            {
                goto block_40;
            }

            gEntityInfo[arg0].unkF = 1;
            gEntityInfo[arg0].unk8.split.unk8 = 0x20;
            break;

        case 1:
            if (gEntityAnimationInfo[0x12 - gUnk_0300363C].state == 0xA)
            {
                gEntityInfo[arg0].unk8.split.unk8 -= 1;
                if (gEntityInfo[arg0].unk8.split.unk8 == 0xFF)
                {
                    sub_08025B78(0x12, 0xB);
                    gEntityInfo[arg0].unk8.split.unk8 = 0;
                    gEntityInfo[arg0].unk8.split.unk9 = 0;
                    gEntityInfo[arg0].unkF = 0x1A;
                    gEntityInfo[arg0].unk10 = 0;
                }
            }
            break;

        case 26:
            if (gEntityAnimationInfo[0x12 - gUnk_0300363C].timer == 0xFF)
            {
                gUnk_03005400.unkA = 2;
                sub_08025B78(0x12, 8);
                gEntityAnimationInfo[arg0 - gUnk_0300363C].timer = 0xFF;
                gEntityInfo[arg0].unkF = 0x1C;
            }
            break;
    }
}

// 2192C
void sub_0802192C(u8 arg0)
{
    u8 *var_r5;
    u8 var_r8;
    u8 var_r6;
    void *var_r1;
    u32 temp_r1;

    if (gEntityInfo[arg0].unk8.split.unk8 != 0)
    {
        gEntityInfo[arg0].unk8.split.unk8 -= 1;
    }

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                break;
            }

            gEntityInfo[arg0].yPosBg2 = 0x68;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].priority = 1;
            gEntityInfo[arg0].unk8.split.unk8 = 0x40;
            gEntityInfo[arg0].unkF = 0xE;
            sub_08025B78(arg0, 0xF);
            m4aSongNumStart(0x71);
            break;

        case 14:
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                break;
            }

            gEntityInfo[arg0].yPosBg2 = 0x118;
            gEntityInfo[arg0].unk8.split.unk8 = 0x20;
            gEntityInfo[arg0].unkF = 0x1A;
            gEntityInfo[arg0].unk10 = 0;
            break;

        case 0:
            var_r8 = ((gEntityInfo[arg0].xPosBg2 / 8) - 3) & ~1;

            temp_r1 = (gUnk_03004C20.sceneFrameCounter & 4) >> 2;
            var_r5 = &gUnk_03003790[0][var_r8];
            var_r1 = gBgDataPtrs.pBufBg2Tilemap + ((temp_r1 * 6) + 0x3C);
            for (var_r6 = 0; var_r6 < 30; var_r6++)
            {
                DmaCopy16(3, var_r1, var_r5, 0x6);
                var_r1 += gBgInfo[2].hLength;
                var_r5 += 0x40;
            }

            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                break;
            }

            gEntityInfo[arg0].unkF = 0x1C;
            gEntityInfo[arg0].unk10 = 0;

            switch (arg0)
            {
                case 0x18:
                    gEntityInfo[arg0].unk11 = 0x18;
                    break;

                case 0x19:
                case 0x1A:
                case 0x1B:
                    gEntityInfo[arg0].unk11 = 0x19;
                    break;
            }

            var_r5 = &gUnk_03003790[0][var_r8];
            var_r1 = gBgDataPtrs.pBufBg2Tilemap + ((gBgInfo[2].hLength * 0x1F) + 0x3C);
            for (var_r6 = 0; var_r6 < 30; var_r6++)
            {
                DmaCopy16(3, var_r1, var_r5, 0x6);
                var_r5 += 0x40;
            }
            break;

        case 26:
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                break;
            }

            gEntityInfo[arg0].unk8.split.unk8 = 0x80;
            gEntityInfo[arg0].unk10 = 1;
            sub_08025B78(arg0, 0x10);
            gEntityInfo[arg0].unkF = 0;
            m4aSongNumStart(0x72);
            break;
    }
}

// 21AD4
void sub_08021AD4(u8 arg0)
{
    u8 temp_r3;

    temp_r3 = arg0 + 0xDE;

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            if (gEntityInfo[arg0].unk8.split.unk8 == 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 = (thunk_GetRandomValue() % 0x10) + 8;
            }
            else if (gEntityInfo[arg0].unk8.split.unk8 == 1)
            {
                gEntityInfo[arg0].unk10 = 1;
                gEntityInfo[arg0].unkF = 0;
                gEntityInfo[arg0].unk8.split.unk8 = 0xF0;
                gEntityInfo[arg0].unk8.split.unk9 = ((thunk_GetRandomValue() % 6) * 0x24) + (thunk_GetRandomValue() % 0x20);
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk8 -= 1;
            }
            break;

        case 0:
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][0x6].unk0[0].unk0 + ((gEntityInfo[arg0].unk8.split.unk8 * gSineTable[gEntityInfo[arg0].unk8.split.unk9 + 0x40]) >> 8);
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][0x6].unk0[0].unk2 - 0x20 + ((gEntityInfo[arg0].unk8.split.unk8 * gSineTable[gEntityInfo[arg0].unk8.split.unk9]) >> 8);

            gEntityInfo[arg0].unk8.split.unk8 -= gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0;
            if (gEntityInfo[arg0].unk8.split.unk8 == 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 = 1;
                gEntityInfo[arg0].unkF = 0x19;
            }
            break;

        case 24:
            switch (temp_r3)
            {
                case 0:
                    gEntityInfo[arg0].xPosBg2 = 0x44;
                    break;

                case 1:
                    gEntityInfo[arg0].xPosBg2 = 0x110;
                    break;

                case 2:
                    gEntityInfo[arg0].xPosBg2 = 0xCC;
                    break;

                case 3:
                    gEntityInfo[arg0].xPosBg2 = 0x154;
                    break;

                case 4:
                    gEntityInfo[arg0].xPosBg2 = 0x88;
                    break;

                case 5:
                    gEntityInfo[arg0].xPosBg2 = 0x198;
                    break;
            }

            gEntityInfo[arg0].yPosBg2 = ((thunk_GetRandomValue() % 6) * 10) + 300;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].unkF = 0xE;
            break;

        case 14:
            gEntityInfo[arg0].yPosBg2 -= 4;
            if (gEntityInfo[arg0].yPosBg2 < 0x60)
            {
                gEntityInfo[arg0].unkF = 0x18;
            }
            break;

        case 26:
            gEntityInfo[arg0].unkF = 0x1C;
            gEntityInfo[arg0].unk10 = 0;
            break;
    }
}

// 21DAC
void sub_08021DAC(u8 arg0)
{
    u8 sp4;
    s32 var_r1;
    s32 var_r3;

    if (gEntityInfo[arg0].unkF != 3)
    {
        gEntityInfo[arg0].affineHFlip_matrixNum = 7;
    }

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0;
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2;

            gUnk_03005400.unk6 = -gBg2XMag + 0x10;
            gUnk_03005400.unk4 = -gBg2XMag + 0x10;
            gUnk_03003590[4].unk4 = 0;
            gEntityInfo[arg0].unkF = 0;
            sub_08025B78(arg0, 6);
            DmaCopy16Wait(3, gUnk_0818B7DC[0], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);

            gEntityInfo[0x27].unkF = 0x19;
            gEntityInfo[0x26].unkF = 0x19;
            gEntityInfo[0x25].unkF = 0x19;
            gEntityInfo[0x24].unkF = 0x19;
            gEntityInfo[0x23].unkF = 0x19;
            gEntityInfo[0x22].unkF = 0x19;
            gEntityInfo[0x28].unkF = 3;
            break;

        case 0:
            if ((s16) gUnk_03003590[4].unk0 == 0)
            {
                m4aSongNumStart(0x83);
                gEntityInfo[arg0].unkF = 1;
                gUnk_03003590[4].unk2 = 0;
                gUnk_03003590[4].unk0 = 0;
                gEntityInfo[0x27].unkF = 0x1A;
                gEntityInfo[0x26].unkF = 0x1A;
                gEntityInfo[0x25].unkF = 0x1A;
                gEntityInfo[0x24].unkF = 0x1A;
                gEntityInfo[0x23].unkF = 0x1A;
                gEntityInfo[0x22].unkF = 0x1A;
                sub_08025B78(arg0, 3);
                gEntityInfo[0x28].unkF = 0x1C;
                gEntityInfo[0x28].unk10 = 0;
                gEntityInfo[0x28].yPosBg2 = 0;

                if (gUnk_03005400.unkB == 0)
                {
                    gEntityInfo[arg0].unk8.split.unk9 |= 0x40;
                }
                else
                {
                    gEntityInfo[arg0].unk8.split.unk9 |= 0x20;
                }
                gUnk_03005400.unkB = 1;
            }
            else
            {
                if (gUnk_03005400.unkB == 0)
                {
                    var_r1 = 1;
                }
                else
                {
                    var_r1 = 4;
                }
                gUnk_03003590[4].unk0 += var_r1;
                gUnk_03003590[4].unk2 += var_r1;

                if ((gUnk_03004C20.sceneFrameCounter % 30) == 0)
                {
                    m4aSongNumStart(0x82);
                }
            }
            break;

        case 19:
        case 20:
            var_r3 = 0;
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 -= 1;
                break;
            }

            if (gEntityInfo[0x14].unkF == 0x1C)
            {
                var_r3 = 1;
            }
            if (gEntityInfo[0x15].unkF == 0x1C)
            {
                var_r3 = 2;
            }
            if ((var_r3 != 0) && (gEntityInfo[0x17].unkF == 0x1C) && (gEntityInfo[0x18].unkF == 0x1C))
            {
                gEntityInfo[0x17].unkF = 0x19;
            }

            if (gEntityInfo[arg0].unkF == 0x14)
            {
                m4aSongNumStart(0x76);
                gEntityInfo[arg0].unkF = 4;
                gUnk_03005400.unkA = 5;
            }
            else
            {
                m4aSongNumStart(0x83);
                gEntityInfo[arg0].unkF = 1;
                sub_08025B78(arg0, 3);
                gEntityInfo[arg0].unk8.split.unk9 |= 0x40;
            }
            break;

        case 4:
            if (gEntityInfo[arg0].unkC_2 & 2)
            {
                gEntityInfo[arg0].yPosBg2 += 1;
                gUnk_03003590[4].unk4 = 0x20;
            }
            else
            {
                if ((gUnk_03004C20.sceneFrameCounter % 3) == 0)
                {
                    if (gEntityInfo[arg0].unkC_2 == 1)
                    {
                        gEntityInfo[arg0].xPosBg2 -= 4;
                        gEntityInfo[arg0].yPosBg2 -= 2;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 += 4;
                        gEntityInfo[arg0].yPosBg2 -= 2;
                    }
                    
                }
                gUnk_03003590[4].unk4 += 8;
            }

            if (gBlendValue == 0x10)
            {
                gEntityInfo[arg0].unkF = 0x1C;
                gEntityInfo[arg0].unk10 = 0;
            }
            break;

        case 1:
            if (gUnk_03005400.unkA == 3)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2;
                gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2 + 0x10;
            }

            gUnk_03003590[4].unk0 = gSineTable[((gUnk_03004C20.sceneFrameCounter * 4) % 0x100)] >> 0x2;
            gUnk_03003590[4].unk2 = gSineTable[((gUnk_03004C20.sceneFrameCounter * 4) % 0x100) + 0x40] >> 0x2;

            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 3)
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[arg0].unkC_2 ^= 1;

                    if (!(gEntityInfo[arg0].unk8.split.unk9 & 0xF0))
                    {
                        gEntityInfo[arg0].unk8.split.unk9 = (gEntityInfo[arg0].unk8.split.unk9 + 1) % 3;
                        gUnk_03005400.unk14 = 2 - gEntityInfo[arg0].unk8.split.unk9;
                        DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[arg0].unk8.split.unk9], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                        sub_08025B78(arg0, 5);
                    }
                    else
                    {
                        sub_08025B78(arg0, 4);
                    }
                }
                else
                {
                    switch (gEntityAnimationInfo[arg0 - gUnk_0300363C].frame)
                    {
                        case 0:
                            DmaCopy16Wait(3, gUnk_0818B7DC[1], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 1:
                            DmaCopy16Wait(3, gUnk_0818B7DC[2], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 2:
                            DmaCopy16Wait(3, gUnk_0818B7DC[0], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;
                    }
                }
            }
            else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 4)
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[arg0].unkC_2 ^= 1;
                    gEntityInfo[arg0].unk8.split.unk9 -= 0x10;
                    sub_08025B78(arg0, 3);
                }
                else
                {
                    switch (gEntityAnimationInfo[arg0 - gUnk_0300363C].frame)
                    {
                        case 0:
                            DmaCopy16Wait(3, gUnk_0818B7DC[2], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 1:
                            DmaCopy16Wait(3, gUnk_0818B7DC[1], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 2:
                            DmaCopy16Wait(3, gUnk_0818B7DC[2], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;
                    }
                }
            }
            else
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    if (gUnk_03005400.unkA == 0)
                    {
                        gEntityInfo[arg0].unk8.split.unk8 = 0;
                        gEntityInfo[arg0].unkF = 0xE;
                        gEntityInfo[0x1F].unkF = 0x19;
                    }
                    else
                    {
                        gEntityInfo[arg0].unkF = 0xF;
                        gUnk_03005400.unkA = 3;
                    }

                    m4aSongNumStop(0x83);
                    DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[arg0].unk8.split.unk9], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    sub_08025B78(arg0, gEntityInfo[arg0].unk8.split.unk9 & 0xF);
                    gUnk_03003590[4].unk2 = 0;
                    gUnk_03003590[4].unk0 = 0;
                }
                else
                {
                    switch (gEntityAnimationInfo[arg0 - gUnk_0300363C].frame)
                    {
                        case 0:
                            DmaCopy16Wait(3, gUnk_0818B7DC[2], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 1:
                            DmaCopy16Wait(3, gUnk_0818B7DC[1], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;
                    }
                }
            }
            break;

        case 14:
            gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 - ((gSineTable[gEntityInfo[arg0].unk8.split.unk8++] << 0x10) >> 0x14);
            if (gBlendValue == 0x10)
            {
                gEntityInfo[arg0].unkF = 0xF;
            }
            break;

        case 15:
            gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2;
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2 + 0x10;
            break;

        case 16:
            gEntityInfo[arg0].affineDouble = 1;
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0x1A)
            {
                gEntityInfo[arg0].xPosBg2 = 0xF0;
                gEntityInfo[arg0].yPosBg2 = 0xE0;
                sub_08025B78(arg0, 0x1A);
                gUnk_03003590[4].unk4 = 0;
                DmaCopy16Wait(3, gUnk_0818B7DC[0], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
            }
            else
            {
                gUnk_03003590[4].unk0 = (gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100)] >> 0x3) + 0x100;
                gUnk_03003590[4].unk2 = (gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100) + 0x40] >> 0x3) + 0x100;
            }
            break;

        case 3:
            sp4 = Abs((s16) gUnk_03003590[4].unk0) / 2;
            switch (gUnk_03004C20.sceneFrameCounter % 6)
            {
                case 0:
                case 1:
                    DmaCopy16Wait(3, gUnk_0818B7DC[0], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    sub_08025B78(arg0, 0);
                    gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0 + ((gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100)] * sp4) >> 0x8);
                    gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + ((gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100) + 0x40] * sp4) >> 0x8);
                    break;

                case 2:
                case 3:
                    DmaCopy16Wait(3, gUnk_0818B7DC[1], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    sub_08025B78(arg0, 1);
                    gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0 + ((gSineTable[((gUnk_03004C20.sceneFrameCounter + 0x56) % 0x100)] * sp4) >> 0x8);
                    gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + ((gSineTable[((gUnk_03004C20.sceneFrameCounter + 0x56) % 0x100) + 0x40] * sp4) >> 0x8);
                    break;

                case 4:
                case 5:
                    DmaCopy16Wait(3, gUnk_0818B7DC[2], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    sub_08025B78(arg0, 2);
                    gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0 + ((gSineTable[((gUnk_03004C20.sceneFrameCounter + 0xAA) % 0x100)] * sp4) >> 0x8);
                    gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + ((gSineTable[((gUnk_03004C20.sceneFrameCounter + 0xAA) % 0x100) + 0x40] * sp4) >> 0x8);
                    break;
            }
            break;
    }

    gUnk_03003590[4].unk5_0 = gEntityInfo[arg0].unkC_2;
}

// 22CA0
void sub_08022CA0(u8 arg0)
{
    struct Unk_08014184 temp_r2;
    s32 var_r5;
    s8 temp_r5;
    u8 temp_r6;
    s8 temp_r0_11;
    u8 temp_sl;
    s8 var_sb;

    temp_r6 = arg0 + 0xE1;
    temp_sl = gUnk_03005400.unkC - 1;
    gUnk_03003590[2].unk5_0 = gUnk_03005400.unk8_5;

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            gUnk_03003590[2].unk0 = 0;
            gUnk_03003590[2].unk2 = 0;
            gUnk_03003590[2].unk4 = 0;
            sub_08025B78(arg0, 0xD);

            gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2;
            gEntityInfo[arg0].yPosBg2 = 0x120;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].unkF = 0xE;
            gBlendValue = 0;
            m4aSongNumStart(0x84);

            gEntityInfo[0x27].unkF = 0x18;
            gEntityInfo[0x26].unkF = 0x18;
            gEntityInfo[0x25].unkF = 0x18;
            gEntityInfo[0x24].unkF = 0x18;
            gEntityInfo[0x23].unkF = 0x18;
            gEntityInfo[0x22].unkF = 0x18;
            break;

        case 3:
            if (REG_BLDCNT == 0xBF)
            {
                if (arg0 == 0x1F)
                {
                    if (gBlendValue != 0)
                    {
                        if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
                        {
                            gBlendValue -= 1;
                        }
                    }
                    else
                    {
                        REG_IE |= 2;
                        REG_DISPSTAT |= 0x10;
                        REG_BLDCNT = 0;
                        gBlendValue = 0x10;
                    }
                }
            }
            else if (arg0 == 0x1F)
            {
                REG_BLDCNT = 0x142;
                if (gBlendValue > 8)
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 4) == 0)
                    {
                        gBlendValue -= 1;
                    }
                }
                else
                {
                    gEntityInfo[arg0].unkF = 0;
                }
            }
            /* fallthrough */
        case 0:
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != (temp_r6 + 7))
            {
                sub_08025B78(arg0, temp_r6 + 7);
                break;
            }

            if (gUnk_03005400.unk8_5 == 0)
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 + gUnk_080E2B4C[temp_r6][0] - ((gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100) + 0x40] << 0x10) >> 0x15) + gUnk_080E2B4C[temp_r6][0];
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2 - gUnk_080E2B4C[temp_r6][0] + ((gSineTable[(gUnk_03004C20.sceneFrameCounter % 0x100) + 0x40] << 0x10) >> 0x15) - gUnk_080E2B4C[temp_r6][0];
            }
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2 + 8 + ((gUnk_080E2B4C[temp_r6][1] * (s16) gUnk_03003590[2].unk2) >> 8) + (u8)gUnk_080E2B4C[temp_r6][1];
            break;

        case 14:
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0xE)
            {
                if (gBlendValue == 0x10)
                {
                    if (gEntityInfo[arg0].unk8.split.unk8 != 0)
                    {
                        gEntityInfo[arg0].unk8.split.unk8 -= 1;
                    }
                    else
                    {
                        gUnk_03005400.unkD = 5;
                        gUnk_03005400.unkE_1 = 1;

                        gEntityInfo[0x21].unkF = 3;
                        gEntityInfo[0x20].unkF = 3;
                        gEntityInfo[0x1F].unkF = 3;

                        gEntityInfo[0x21].unk10 = 1;
                        gEntityInfo[0x20].unk10 = 1;
                        gEntityInfo[0x1F].unk10 = 1;

                        gUnk_03003590[2].unk0 = 0x100;
                        gUnk_03003590[2].unk2 = 0x100;

                        gEntityInfo[0x27].unkF = 0x1A;
                        gEntityInfo[0x26].unkF = 0x1A;
                        gEntityInfo[0x25].unkF = 0x1A;
                        gEntityInfo[0x24].unkF = 0x1A;
                        gEntityInfo[0x23].unkF = 0x1A;
                        gEntityInfo[0x22].unkF = 0x1A;
                    }
                }
                if ((gBlendValue < 0x10) && ((gUnk_03004C20.sceneFrameCounter % 4) == 0))
                {
                    gBlendValue += 1;
                    gUnk_03005400.unkD = 2;
                    gUnk_03005400.unkE_1 = 1;
                }
            }
            else
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[arg0].yPosBg2 -= 1;
                    if ((s16) gUnk_03003590[2].unk2 <= 0x80)
                    {
                        gUnk_03003590[2].unk0 += 4;
                        gUnk_03003590[2].unk2 += 4;
                        break;
                    }

                    REG_BLDCNT = 0xBF;
                    gEntityInfo[arg0].unk8.split.unk8 = 0x10;
                    sub_08025B78(arg0, 0xE);
                }
            }
            break;

        case 16:
            var_r5 = 0;

            gUnk_03003590[2].unk5_0 = 0;
            if ((s16) gUnk_03003590[2].unk0 < 0)
            {
                gUnk_03003590[2].unk0 += 1;
                gUnk_03003590[2].unk2 += 1;
                break;
            }
            gUnk_03003590[2].unk0 = 0;
            gUnk_03003590[2].unk2 = 0;

            gEntityInfo[arg0].priority = 1;
            gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x12].xPosBg2;
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0x10)
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[arg0].unk8.split.unk9 = (thunk_GetRandomValue() % 8) * 10 + 0x28;
                    gEntityInfo[arg0].unk8.split.unk8 = gUnk_080E2B49[temp_sl];
                    gEntityInfo[arg0].unkF = 0x11;
                    if (gEntityInfo[arg0].xPosBg2 < gEntityInfo[0].xPosBg2)
                    {
                        gEntityInfo[arg0].unkC_2 = 0;
                    }
                    else
                    {
                        gEntityInfo[arg0].unkC_2 = 1;
                    }
                    break;
                }
            }
            else
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0xF)
                {
                    sub_08025B78(arg0, 0xF);
                    break;
                }

                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
                {
                    break;
                }

                gEntityInfo[arg0].yPosBg2 += 1;
                temp_r2 = Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2 - 4, 0x10);
                if (temp_r2.unk0 != 0xFFFF)
                {
                    gEntityInfo[arg0].yPosBg2 = temp_r2.unk0 + 4;
                    gUnk_03003590[2].unk4 = temp_r2.unk2;
                    var_r5 = 1;
                }
                if (var_r5 == 1)
                {
                    sub_08025B78(arg0, 0x10);
                }
            }
            break;

        case 17:
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0x11)
            {
                sub_08025B78(arg0, 0x11);
            }

            gUnk_03003590[2].unk5_0 = 0;
            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                if (gEntityInfo[arg0].unk8.split.unk8 == 0)
                {
                    gEntityInfo[arg0].unkF = 0x12;
                    break;
                }
                gEntityInfo[arg0].unk8.split.unk8 -= 1;
            }

            if (gEntityInfo[arg0].unk8.split.unk9 != 0)
            {
                gEntityInfo[arg0].unk8.split.unk9 -= 1;
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk9 = ((thunk_GetRandomValue() % 8) * 10) + 0x14;
                gEntityInfo[arg0].unkC_2 ^= 1;
            }

            if ((gUnk_03004C20.sceneFrameCounter % 3) == 0)
            {
                if (gEntityInfo[arg0].unkC_2 == 0)
                {
                    gEntityInfo[arg0].xPosBg2 += 4;
                    gEntityInfo[arg0].xPosBg2 += -temp_sl;
                }
                else
                {
                    gEntityInfo[arg0].xPosBg2 += -4;
                    gEntityInfo[arg0].xPosBg2 += temp_sl;
                }
            }

            temp_r2 = Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2 - 4, 0x10);
            if (temp_r2.unk0 != 0xFFFF)
            {
                gEntityInfo[arg0].yPosBg2 = temp_r2.unk0 + 4;
                gUnk_03003590[2].unk4 = temp_r2.unk2;
            }

            if (gEntityInfo[arg0].unkC_2 & 1)
            {
                temp_r5 = -0x10;
            }
            else
            {
                temp_r5 = 0x10;
            }
            temp_r2 = Call_sub_08014184(gEntityInfo[arg0].xPosBg2 + temp_r5, gEntityInfo[arg0].yPosBg2, 0x18);
            if (temp_r2.unk0 != 0xFFFF)
            {
                gEntityInfo[arg0].xPosBg2 = temp_r2.unk0 - temp_r5;
                temp_r2.unk2 += 0; // FAKE
                gEntityInfo[arg0].unkC_2 ^= 1;
            }
            break;

        case 18:
            gUnk_03003590[2].unk5_0 = 0;
            gUnk_03003590[2].unk0 -= 8;
            if ((s16) gUnk_03003590[2].unk0 > -gBg2XMag)
            {
                break;
            }

            gEntityInfo[arg0].unkF = 0x1A;
            gUnk_03003590[2].unk2 = 0;
            gUnk_03003590[2].unk0 = 0;
            gUnk_03003590[2].unk4 = 0;
            break;

        case 15:
            var_sb = 0;
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != (temp_r6 + 0xA))
            {
                sub_08025B78(arg0, temp_r6 + 0xA);
            }

            if ((arg0 == 0x1F) || (arg0 == 0x20))
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].frame != 0xFF)
                {
                    var_sb = -gUnk_080E2B52[gEntityAnimationInfo[arg0 - gUnk_0300363C].frame + (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 1)];
                }
            }

            if (gUnk_03005400.unk8_5 == 0)
            {
                gEntityInfo[arg0].xPosBg2 = ((gEntityInfo[0x12].xPosBg2 + gUnk_080E2B4C[temp_r6][0]) + var_sb) + gUnk_080E2B4C[temp_r6][0];
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 = ((gEntityInfo[0x12].xPosBg2 - gUnk_080E2B4C[temp_r6][0]) - var_sb) - gUnk_080E2B4C[temp_r6][0];
            }
            // TODO: clean up
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2 - ((gSineTable[gUnk_03004C20.sceneFrameCounter % 0x100] << 0x10) >> 0x15) + 8 + ((u8)gUnk_080E2B4C[temp_r6][1]);
            gEntityInfo[arg0].yPosBg2 = (u8)gUnk_080E2B4C[temp_r6][1] + gEntityInfo[arg0].yPosBg2;

            if ((gEntityAnimationInfo[arg0 - gUnk_0300363C].frame == 5) && (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0x30) && (arg0 == 0x1F))
            {
                gEntityInfo[0x16].unkC_2 = gUnk_03005400.unk8_5 ^ 1;
                gEntityInfo[0x16].unkF = 0x19;
            }

            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
            {
                break;
            }

            gEntityInfo[arg0].unkF = 0;
            if (arg0 == 0x21)
            {            
                gUnk_03005400.unk8_5 ^= 1;
                if (gUnk_03005400.unkA != 5)
                {
                    gUnk_03005400.unkA = 3;
                }
            }
            break;

        case 7:
            gUnk_03003590[2].unk5_0 = 0;

            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0xD)
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0x12)
                {
                    if (gEntityInfo[arg0].unk8.split.unk8 != 0)
                    {
                        gEntityInfo[arg0].unk8.split.unk8 -= 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 = (gEntityInfo[arg0].unk8.split.unk9 * 0x68) + 0x20;
                        gEntityInfo[arg0].yPosBg2 = 0x10;
                        gEntityInfo[arg0].unk8.split.unk8 = 0;
                        gUnk_03003590[2].unk2 = -0x80;
                        gUnk_03003590[2].unk0 = -0x80;
                        gEntityInfo[arg0].unkF = 0xA;
                    }
                }
            }
            else
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    if (gEntityInfo[0x1F].yPosBg2 == 0xF4)
                    {
                        m4aSongNumStart(0x85);
                    }

                    gEntityInfo[arg0].yPosBg2 -= 6;
                    if (gEntityInfo[arg0].yPosBg2 < 0x10)
                    {
                        gEntityInfo[arg0].unk8.split.unk8 = 0x1E;
                        sub_08025B78(arg0, 0x12);
                    }
                }
            }
            if (gEntityInfo[arg0].unk16 == 0)
            {
                break;
            }

            gEntityInfo[arg0].unk16 = 0;
            gEntityInfo[arg0].unk8.split.unk9 = thunk_GetRandomValue() % 5;
            gUnk_03003590[2].unk4 = 0;
            gUnk_03003590[2].unk2 = -0x20;
            gUnk_03003590[2].unk0 = -0x20;

            gEntityInfo[0x1F].yPosBg2 = 0xF4;
            temp_r0_11 = (gBgInfo[2].hOfs - 0x78) / 3;
            if (gEntityInfo[arg0].unk8.split.unk9 == 2)
            {
                gEntityInfo[arg0].xPosBg2 = temp_r0_11 + 0xF0;
            }
            else if ((gEntityInfo[arg0].unk8.split.unk9 == 0) || (gEntityInfo[arg0].unk8.split.unk9 == 1))
            {
                gEntityInfo[arg0].xPosBg2 = temp_r0_11 + 0xC8;
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 = temp_r0_11 + 0x118;
            }
            sub_08025B78(arg0, 0xD);
            break;

        case 10:
            switch (gEntityInfo[arg0].unk8.split.unk9)
            {
                case 0:
                    if (gEntityInfo[arg0].unk8.split.unk8 < 0x40)
                    {
                        gEntityInfo[arg0].xPosBg2 += 6;
                    }
                    gEntityInfo[arg0].yPosBg2 = ((gSineTable[gEntityInfo[arg0].unk8.split.unk8++] * 0xC8) >> 8) + 0x10;
                    break;

                case 1:
                    if (gEntityInfo[arg0].unk8.split.unk8 < 0x40)
                    {
                        gEntityInfo[arg0].xPosBg2 += 3;
                    }
                    gEntityInfo[arg0].yPosBg2 = ((gSineTable[gEntityInfo[arg0].unk8.split.unk8++] * 2) >> 1) + 0x10;
                    break;

                case 2:
                    gEntityInfo[arg0].yPosBg2 = ((gSineTable[gEntityInfo[arg0].unk8.split.unk8++] * 0x23) >> 5) + 0x10;
                    break;

                case 3:
                    if (gEntityInfo[arg0].unk8.split.unk8 < 0x40)
                    {
                        gEntityInfo[arg0].xPosBg2 -= 3;
                    }
                    gEntityInfo[arg0].yPosBg2 = ((gSineTable[gEntityInfo[arg0].unk8.split.unk8++] * 2) >> 1) + 0x10;
                    break;

                case 4:
                    if (gEntityInfo[arg0].unk8.split.unk8 < 0x40)
                    {
                        gEntityInfo[arg0].xPosBg2 -= 6;
                    }
                    gEntityInfo[arg0].yPosBg2 = ((gSineTable[gEntityInfo[arg0].unk8.split.unk8++] * 0xC8) >> 8) + 0x10;
                    break;
            }
            if (gEntityInfo[arg0].unk8.split.unk8 >= 0x20)
            {
                if (gEntityInfo[arg0].unk8.split.unk8 == 0x20)
                {
                    m4aSongNumStart(0x6F);
                }
                else if (gEntityInfo[arg0].unk8.split.unk8 < 0x40)
                {
                    if (gUnk_03004C20.sceneFrameCounter & 2)
                    {
                        gUnk_03005400.unkE_1 = 1;
                        gUnk_03005400.unkD = 1;
                    }
                    gUnk_03003590[2].unk0 += 1;
                    gUnk_03003590[2].unk2 += 1;
                }
                else
                {
                    if (gUnk_03004C20.sceneFrameCounter & 2)
                    {
                        gUnk_03005400.unkE_1 |= 1;
                        gUnk_03005400.unkD = 3;
                    }
                    gEntityInfo[arg0].priority = 1;
                    gUnk_03003590[2].unk0 += 10;
                    gUnk_03003590[2].unk2 += 10;
                }
            }
            if (gEntityInfo[arg0].unk8.split.unk8 == 0x70)
            {
                gUnk_03003590[2].unk2 = 0;
                gUnk_03003590[2].unk0 = 0;
                gEntityInfo[arg0].yPosBg2 = 0x20;

                gUnk_03005400.unk13 -= 1;
                if (gUnk_03005400.unk13 == 0)
                {
                    gUnk_03005400.unkA = 0;
                    gEntityInfo[arg0].unkF = 0x1A;
                }
                else
                {
                    sub_08025B78(arg0, 0);
                    gEntityInfo[arg0].unk16 = 1;
                    sub_08025B78(arg0, 0x11);
                    gEntityInfo[arg0].unkF = 7;
                }
            }

            if (gUnk_03003590[2].unk0 > 0x80 && gUnk_03003590[2].unk0 < 0xA0)
            {
                if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[arg0].xPosBg2 + 0x30)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[arg0].xPosBg2 - 0x30)))
                {
                    if (((gEntityInfo[0].yPosBg2 - 0x18) < gEntityInfo[arg0].yPosBg2) && (gEntityInfo[0].yPosBg2 > (gEntityInfo[arg0].yPosBg2 - 0x60)) && (gUnk_03005220.unk3E == 0))
                    {
                        sub_08014624(1);
                    }
                }
            }
            break;

        case 26:
            gEntityInfo[arg0].unkF = 0x1C;
            gEntityInfo[arg0].unk10 = 0;
            sub_08025B78(arg0, 0);
            break;
    }
}

// 23988
void sub_08023988(u8 arg0)
{
    struct Unk_08014184 var_r2;

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            gEntityInfo[arg0].unk10 = 1;
            if (gEntityInfo[arg0].unkC_2 == 0)
            {
                gEntityInfo[arg0].xPosBg2 = 0x20;
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 = 0x1C0;
            }
            gEntityInfo[arg0].yPosBg2 = 0xC8;
            gEntityInfo[arg0].unk8.split.unk8 = 0x20;
            sub_08025B78(arg0, 0x13);
        
            gEntityInfo[arg0].unkF = 0;
            gEntityInfo[arg0].unk8.split.unk9 = ((gEntityInfo[0x13].unk8.split.unk9 & 0xF) + 1) % 3;
            DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[arg0].unk8.split.unk9 + 6], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
            m4aSongNumStart(0x77);
            break;
        
        case 0:
            if ((gUnk_03004C20.sceneFrameCounter % 70) == 0)
            {
                m4aSongNumStart(0x77);
            }

            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 -= 1;

                var_r2 = Call_sub_08014230(gEntityInfo[arg0].xPosBg2 + 4, gEntityInfo[arg0].yPosBg2 - 8, 0x10);
                if (var_r2.unk0 != 0xFFFF)
                {
                    gEntityInfo[arg0].yPosBg2 = var_r2.unk0;
                    gUnk_03003590[3].unk4 = var_r2.unk2;
                }
                break;
            }

            if (gEntityInfo[arg0].unkC_2 == 0)
            {
                gEntityInfo[arg0].xPosBg2 += gUnk_080E2B5E[gUnk_03005400.unkC - 1];
            }
            else
            {
                gEntityInfo[arg0].xPosBg2 -= gUnk_080E2B5E[gUnk_03005400.unkC - 1];
            }
            gEntityInfo[arg0].yPosBg2 += 4;

            var_r2 = Call_sub_08014230(gEntityInfo[arg0].xPosBg2 + 4, gEntityInfo[arg0].yPosBg2 - 0x10, 0x10);
            if (var_r2.unk0 != 0xFFFF)
            {
                gEntityInfo[arg0].yPosBg2 = var_r2.unk0 + 0x10;
                gUnk_03003590[3].unk4 = var_r2.unk2;
            }

            if (gEntityInfo[arg0].unkC_2 & 1)
            {
                var_r2 = Call_sub_08014184(gEntityInfo[arg0].xPosBg2 - 8, gEntityInfo[arg0].yPosBg2, 0x18);
            }
            else
            {
                var_r2 = Call_sub_08014184(gEntityInfo[arg0].xPosBg2 + 8, gEntityInfo[arg0].yPosBg2, 0x18);
            }

            if (var_r2.unk0 != 0xFFFF)
            {
                gEntityInfo[arg0].unkF = 0x1C;
                gEntityInfo[arg0].unk10 = 0;
                gUnk_03005400.unk16 = 0;
                m4aSongNumStop(0x77);
            }
            break;
    }
}

// 23BC0
void sub_08023BC0(u8 arg0)
{
    struct Unk_08014184 temp_r2;
    u8 temp_r0_6;
    u8 var_r0;
    u32 var_ip;

    if (arg0 > 0x18)
    {
        var_r0 = 7;
    }
    else
    {
        var_r0 = arg0 - 0x12;
    }
    gUnk_03003590[var_r0].unk5_0 = gEntityInfo[arg0].unkC_2;

    switch (gEntityInfo[arg0].unkF)
    {
        case 25:
            gEntityInfo[arg0].priority = 0;
            gEntityInfo[arg0].unkF = 1;
            gEntityInfo[arg0].unk10 = 1;
            gEntityInfo[arg0].unk8.split.unk8 = 0x40;
            if (gEntityInfo[0x12].xPosBg2 < gEntityInfo[0].xPosBg2)
            {
                gEntityInfo[arg0].unkC_2 = 0;
                gEntityInfo[arg0].unk8.split.unk9 = 0xF8;
            }
            else
            {
                gEntityInfo[arg0].unkC_2 = 1;
                gEntityInfo[arg0].unk8.split.unk9 = 8;
            }
            gEntityInfo[arg0].xPosBg2 = (s8) gEntityInfo[arg0].unk8.split.unk9 + gEntityInfo[0x13].xPosBg2;
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x13].yPosBg2;
            sub_08025B78(arg0, 0x15);
            break;

        case 1:
            gEntityInfo[arg0].xPosBg2 = (s8) gEntityInfo[arg0].unk8.split.unk9 + gEntityInfo[0x12].xPosBg2;
            gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x12].yPosBg2;
            gEntityInfo[arg0].unk8.split.unk8 -= 1;
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                break;
            }
            gEntityInfo[arg0].unkF = 0;
            break;

        case 0:
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0x16)
            {
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
                {
                    break;
                }

                if (gEntityInfo[arg0].unk8.split.unk8 != 0)
                {
                    gEntityInfo[arg0].unk8.split.unk8 -= 1;

                    gUnk_03003590[var_r0].unk0 = gSineTable[(gUnk_03004C20.sceneFrameCounter * 8) % 0x100] >> 0x3;
                    gUnk_03003590[var_r0].unk2 = gSineTable[((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) + 0x40] >> 0x3;
                    break;
                }

                if (gEntityInfo[0x14].unkF == 0x1C)
                {
                    var_ip = 0x14;
                }
                if (gEntityInfo[0x15].unkF == 0x1C)
                {
                    var_ip = 0x15;
                }

                gUnk_03003590[var_r0].unk2 = 0;
                gUnk_03003590[var_r0].unk0 = 0;

                gEntityInfo[var_ip].unkF = 0;
                gEntityInfo[var_ip].xPosBg2 = gEntityInfo[arg0].xPosBg2;
                gEntityInfo[var_ip].yPosBg2 = gEntityInfo[arg0].yPosBg2;
                gEntityInfo[var_ip].unkC_2 = gEntityInfo[arg0].unkC_2;
                sub_08025B78(var_ip, 1);
                gEntityInfo[arg0].unkF = 0x1A;
                gEntityInfo[arg0].priority = 1;
                gUnk_03005400.unk16 = 0;
                gEntityInfo[var_ip].unk8.split.unk9 = gUnk_080D8E10[gUnk_03005400.unk14];
                DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[var_ip].unk8.split.unk9 + 3], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_ip - 0xC].bpp_paletteNum * 0x20), 0x20);
                gUnk_03005400.unk14 = (gUnk_03005400.unk14 + 1) % 3;
            }
            else
            {
                gEntityInfo[arg0].yPosBg2 += 1;
                temp_r2 = Call_sub_08014230(gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2, 0x10U);
                if (temp_r2.unk0 != 0xFFFF)
                {
                    gEntityInfo[arg0].yPosBg2 = temp_r2.unk0;
                    gEntityInfo[arg0].unk8.split.unk8 = 0x78;
                    sub_08025B78(arg0, 0x16);
                }
            }
            break;

        case 17:
            if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0x17)
            {
                if (gEntityInfo[arg0].unk8.split.unk8 != 0)
                {
                    gEntityInfo[arg0].unk8.split.unk8 -= 1;

                    gUnk_03003590[var_r0].unk0 = gSineTable[(gUnk_03004C20.sceneFrameCounter * 8) % 0x100] >> 0x3;
                    gUnk_03003590[var_r0].unk2 = gSineTable[((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) + 0x40] >> 0x3;
                    break;
                }

                temp_r0_6 = arg0 - 3;

                gUnk_03003590[var_r0].unk2 = 0;
                gUnk_03003590[var_r0].unk0 = 0;

                gEntityInfo[temp_r0_6].unkF = 0;
                gEntityInfo[temp_r0_6].xPosBg2 = gEntityInfo[arg0].xPosBg2;
                gEntityInfo[temp_r0_6].yPosBg2 = gEntityInfo[arg0].yPosBg2;
                gEntityInfo[temp_r0_6].unkC_2 = gEntityInfo[arg0].unkC_2;
                sub_08025B78(temp_r0_6, 1);
                gEntityInfo[arg0].unkF = 0x1A;
                gEntityInfo[temp_r0_6].unk8.split.unk9 = gEntityInfo[0x16].unk8.split.unk9;
                DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[temp_r0_6].unk8.split.unk9 + 3], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[temp_r0_6 - 0xC].bpp_paletteNum * 0x20), 0x20);
            }
            else
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0x78;
                sub_08025B78(arg0, 0x17);
            }
            break;

        case 14:
            gEntityInfo[arg0].yPosBg2 = 0x178;
            gEntityInfo[arg0].unk10 = 1;
            sub_08025B78(0x19, 0x14);
            gEntityInfo[arg0].unk8.split.unk8 = ((thunk_GetRandomValue() % 20) * 8) + 0x32;

            gUnk_03003590[var_r0].unk2 = 0x100;
            gUnk_03003590[var_r0].unk0 = 0x100;

            gEntityInfo[arg0].unkF = 0xF;
            break;

        case 15:
            gEntityInfo[arg0].affineDouble = 1;
            if (gEntityInfo[arg0].unk8.split.unk8 != 0)
            {
                if (gEntityInfo[arg0].unk8.split.unk8 == 1)
                {
                    m4aSongNumStart(0x75);
                }
                gEntityInfo[arg0].unk8.split.unk8 -= 1;
                break;
            }

            gEntityInfo[arg0].yPosBg2 = gEntityInfo[arg0].yPosBg2 - 3;
            if ((s16) gEntityInfo[arg0].yPosBg2 <= 0x8B)
            {
                gEntityInfo[arg0].unkF = 0x1C;
                gEntityInfo[arg0].unk10 = 0;
            }
            break;

        case 16:
            gEntityInfo[arg0].yPosBg2 = 0x168;
            gEntityInfo[arg0].unk10 = 1;
            sub_08025B78(0x19, 0x14);
            gEntityInfo[arg0].unk8.split.unk8 = ((thunk_GetRandomValue() % 20) * 8) + 0x28;

            gUnk_03003590[var_r0].unk2 = 0x100;
            gUnk_03003590[var_r0].unk0 = 0x100;

            gEntityInfo[arg0].unkF = 0xF;
            break;

        case 26:
            gEntityInfo[arg0].unkF = 0x1C;
            gEntityInfo[arg0].unk10 = 0;
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            sub_08025B78(arg0, 0);
            break;
    }
}
