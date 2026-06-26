#include "global.h"
#include "util.h"
#include "structs/variables.h"

extern void sub_080145A8(s32);
extern void sub_0801E664(u16, u16, u8, u8);
extern void sub_0801EAA4(u8);
extern void sub_08025B78(u32, u8);
extern void sub_08025DD4(void);

extern struct Unk_0300466C *gUnk_0818B8E0[6][9];

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
        var_r3 = gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 4) >> 3) * gUnk_03003430.bg2HLength)];

        // var_r3 = (var_r3 < gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0xC) >> 3) * gUnk_03003430.unk48)]) ? (gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0xC) >> 3) * gUnk_03003430.unk48)]) : var_r3;
        // var_r3 = (var_r3 < gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x14) >> 3) * gUnk_03003430.unk48)]) ? (gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x14) >> 3) * gUnk_03003430.unk48)]) : var_r3;

        var_r3 = MAX(var_r3, gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0xC) >> 3) * gUnk_03003430.bg2HLength)]);
        var_r3 = MAX(var_r3, gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x14) >> 3) * gUnk_03003430.bg2HLength)]);
    }
    else if (gUnk_03005220.unk56 < 0)
    {
        var_r3 = gUnk_03004790.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 4) >> 3) * gUnk_03003430.bg2HLength)];

        // var_r3 = (var_r3 < gUnk_03004790.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0xC) >> 3) * gUnk_03003430.unk48)]) ? (gUnk_03004790.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0xC) >> 3) * gUnk_03003430.unk48)]) : var_r3;
        // var_r3 = (var_r3 < gUnk_03004790.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x14) >> 3) * gUnk_03003430.unk48)]) ? (gUnk_03004790.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x14) >> 3) * gUnk_03003430.unk48)]) : var_r3;

        var_r3 = MAX(var_r3, gUnk_03004790.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0xC) >> 3) * gUnk_03003430.bg2HLength)]);
        var_r3 = MAX(var_r3, gUnk_03004790.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x14) >> 3) * gUnk_03003430.bg2HLength)]);
    }

    if (gUnk_03005220.unk57 != 0)
    {
        // var_r3 = (var_r3 < gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x1A) >> 3) * gUnk_03003430.unk48)]) ? (gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x1A) >> 3) * gUnk_03003430.unk48)]) : var_r3;
        // var_r3 = (var_r3 < gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 4) >> 3) * gUnk_03003430.unk48)]) ? (gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 4) >> 3) * gUnk_03003430.unk48)]) : var_r3;

        var_r3 = MAX(var_r3, gUnk_03004790.pBufBg2Tilemap[((gUnk_03002920[0].xPosBg2 + gUnk_03005220.unk56) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 0x1A) >> 3) * gUnk_03003430.bg2HLength)]);
        var_r3 = MAX(var_r3, gUnk_03004790.pBufBg2Tilemap[((gUnk_03005220.unk56 + gUnk_03002920[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gUnk_03002920[0].yPosBg2) - 4) >> 3) * gUnk_03003430.bg2HLength)]);
    }

    if (var_r3 < gUnk_03004654[0x1A])
    {
        gUnk_03002920[0].xPosBg2 += gUnk_03005220.unk56;
        gUnk_03002920[0].yPosBg2 += gUnk_03005220.unk57;
        gUnk_03002920[0].unkB_0 = gUnk_03002920[gUnk_03005220.unk3F].unkB_0;
        gUnk_03002920[0].unkB_4 = gUnk_03002920[gUnk_03005220.unk3F].unkB_4;
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
    // gUnk_03002920[0xA].unk10 = 0;
    // gUnk_03002920[0x9].unk10 = 0;
    // gUnk_03005220.unk5D = 0;
    gUnk_03005220.unk5D = gUnk_03002920[0x9].unk10 = gUnk_03002920[0xA].unk10 = 0;
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
    gUnk_03002920[0].unk10 = 1;
    gUnk_03005220.unk16 = 0x230;
    gUnk_03005220.unk18 = 0;
    gUnk_03002920[0].affineEnable = 0;

    sub_08025B78(0, 0);
}

void sub_080145A8(s32 arg0)
{
    if (gUnk_03003410.unkB == 0)
    {
        if (gUnk_03004C20.level != 8)
        {
            if (gUnk_03002920[gUnk_03005220.unk42].affineEnable != 0)
            {
                gUnk_03002920[gUnk_03005220.unk42].affineEnable = 0;
            }
        }

        gUnk_03005220.unk38 = 0;
        gUnk_03005220.unk43 = 0;
        gUnk_03005220.unk42 = 0;

        if ((arg0 == 1) && (gUnk_03000830->unk0 >= 0x16))
        {
            sub_08025B78(0, gUnk_03000830->unk0 - 0x16);
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
        gUnk_03005220.unk0_0 -= 1;
        sub_08025DD4();
        gUnk_03005220.unk5B = 1;
    }

    if (gUnk_03005220.unk0_0 == 0)
    {
        m4aSongNumStart(0x27);

        gUnk_03005220.unk46 = 0x46;
        gUnk_03002920[0x9].unk10 = 0;
        gUnk_03002920[0xA].unk10 = 0;
        gUnk_03005220.unk57 = 0;
        gUnk_03005220.unk56 = 0;
        gUnk_03005220.unk3F = 0;
        gUnk_03005220.unk3B = 0;
        gUnk_03005220.unk3A = 0;
        gUnk_03005220.unk39 = 0;
        gUnk_03005220.unk34 = 0;

        if (gUnk_03005220.unk42 != 0)
        {
            if ((gUnk_03002920[gUnk_03005220.unk42].unk11 != 0x6F) && (gUnk_03002920[gUnk_03005220.unk42].unk11 != 0x25))
            {
                sub_0801E664(gUnk_03002920[gUnk_03005220.unk42].xPosBg2, gUnk_03002920[gUnk_03005220.unk42].yPosBg2, 2, gUnk_03005220.unk42);
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

    gUnk_03005220.unk44 = gUnk_03002920[0].unkC_2;
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

    sp0 = gUnk_03002920[arg0].xPosBg2;
    sp4 = gUnk_03002920[arg0].yPosBg2;

    switch (gUnk_03002920[arg0].unkF)
    {
        case 0:
        case 1:
            if (gUnk_03002920[arg0].unk12 == 0)
            {
                gUnk_03002920[arg0].yPosBg2 += 2;
            }
            else
            {
                gUnk_03002920[arg0].yPosBg2 += 1;
            }

            gUnk_03002920[arg0].unk17 = 1;

            var_r7 = gUnk_03004790.pBufBg2Tilemap[((s32) (gUnk_03002920[arg0].xPosBg2 + 6) >> 3) + ((s32) (gUnk_03002920[arg0].yPosBg2 - 2) >> 3) * gUnk_03003430.bg2HLength];

            var_r7 = MAX(var_r7, gUnk_03004790.pBufBg2Tilemap[((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >> 3) + ((s32) (gUnk_03002920[arg0].yPosBg2 - 2) >> 3) * gUnk_03003430.bg2HLength]);

            if ((gUnk_03004654[0x18] <= var_r7) && (gUnk_03002920[arg0].unkF == 0))
            {
                gUnk_03002920[arg0].unk17 = 0;
                if (gUnk_03002920[arg0].unk12 == 0)
                {
                    gUnk_03002920[arg0].yPosBg2 = sp4 + 3;
                    gUnk_03002920[arg0].yPosBg2 &= 0xFFF8;
                }
                else
                {
                    gUnk_03002920[arg0].yPosBg2 = sp4;
                }

                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk57 = 0;
                    gUnk_03005220.unk56 = 0;
                }
            }
            else
            {
                sp8 = gUnk_03002920[arg0].yPosBg2;
                for (var_r6 = gUnk_03003630; var_r6 <= gUnk_03004674; var_r6++)
                {
                    if (gUnk_03002920[var_r6].unkF > 0x1A)
                    {

                    }
                    else if (gUnk_03002920[var_r6].unkF == 0x19)
                    {

                    }
                    else
                    {
                        switch (gUnk_03002920[var_r6].unk11 - 6)
                        {
                            case 0x1F:
                            case 0x69:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0x10) >= (gUnk_03002920[var_r6].xPosBg2 + 7))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 8) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 7) - 0x16))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x18))
                                        {

                                        }
                                        else if (arg0 != var_r6)
                                        {
                                            if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) ((gUnk_03002920[var_r6].yPosBg2 - 0x18) + 4))
                                            {
                                                sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x18;
                                            }
                                            gUnk_03002920[arg0].unkF = 0;
                                            gUnk_03002920[arg0].unk17 = 0;
                                        }
                                    }
                                }
                                break;

                            case 0x0:
                            case 0x2:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x18))
                                        {

                                        }
                                        else if ((s32) gUnk_03002920[arg0].yPosBg2 >= (s32) ((gUnk_03002920[var_r6].yPosBg2 - 0x18) + 5))
                                        {

                                        }
                                        else
                                        {
                                            sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x17;
                                            gUnk_03002920[arg0].unk17 = 0;
                                        }
                                    }
                                }
                                break;

                            case 0x3B:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0x10))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x10) - 0x20))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x20))
                                    {

                                    }
                                    else
                                    {
                                        if (gUnk_03000830[var_r6 - gUnk_0300363C].unk0 == 0)
                                        {
                                            sp8 = gUnk_03002920[var_r6].yPosBg2 - 0x21;
                                            gUnk_03002920[arg0].unk17 = 0;
                                        }
                                    }
                                }
                                break;

                            case 0x6B:
                            case 0x6C:
                                if (gUnk_03002920[var_r6 + 1].unk8 != 0)
                                    break;
                            /* fallthrough */
                            case 0x6D:
                            case 0x6E:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 2))
                                {
                                    if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (gUnk_03002920[var_r6].xPosBg2 - 2))
                                    {
                                        if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                        {
                                            if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x10))
                                            {

                                            }
                                            else if (((s32) (sp0 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 2)) && ((s32) (sp0 + 7) > (gUnk_03002920[var_r6].xPosBg2 - 2)) && ((s32) (sp4 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2) && (sp4 > (gUnk_03002920[var_r6].yPosBg2 - 0x10)))
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
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x18))
                                    {

                                    }
                                    else
                                    {
                                        sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x10;
                                        gUnk_03002920[arg0].unk17 = 0;
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
                                if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0x11)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x11) - 0x22)) && ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2) && ((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 0x10)))
                                {
                                    if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) ((gUnk_03002920[var_r6].yPosBg2 - 0x10) + 3))
                                    {
                                        sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x10;
                                        gUnk_03002920[arg0].unk17 = 0;
                                        gUnk_03002920[arg0].unk12 = 0;
                                        // if (gUnk_03002920[var_r6].unk11 == 0x29 || gUnk_03002920[var_r6].unk11 == 0x2A)
                                        if (gUnk_03002920[var_r6].unk11 >= 0x29 && gUnk_03002920[var_r6].unk11 <= 0x2A)
                                        {
                                            if (((s32) gUnk_03002920[var_r6].unk8 < (s32) (gUnk_03002920[var_r6].unk9 - 0xA)) && (gUnk_03002920[var_r6].unk8 != 0))
                                            {
                                                if (gUnk_03002920[var_r6].unkC_4 == 0)
                                                {
                                                    gUnk_03002920[arg0].xPosBg2 += 1;
                                                    if (gUnk_03005220.unk3F == arg0)
                                                    {
                                                        gUnk_03005220.unk56 = 1;
                                                    }
                                                }
                                                else
                                                {
                                                    gUnk_03002920[arg0].xPosBg2 -= 1;
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
                                        if (gUnk_03002920[var_r6].unk11 == 0x2B)
                                        {
                                            gUnk_03002920[arg0].unkF = 0;
                                        }
                                        else
                                        {
                                            gUnk_03002920[arg0].unkF = 1;
                                            gUnk_03002920[arg0].unk18 = var_r6;
                                        }
                                    }
                                }
                                else
                                {
                                    if (gUnk_03002920[arg0].unkF != 1)
                                    {

                                    }
                                    else if (gUnk_03002920[arg0].unk18 != var_r6)
                                    {

                                    }
                                    else
                                    {
                                        gUnk_03002920[arg0].unkF = 0;
                                    }
                                }
                                break;

                            case 0x30:
                            case 0x6F:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (s32) (gUnk_03002920[var_r6].xPosBg2 + 3))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) (gUnk_03002920[var_r6].xPosBg2 - 3))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (gUnk_03002920[var_r6].yPosBg2 - 0xC))
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) ((gUnk_03002920[var_r6].yPosBg2 - 0xC) - 8))
                                    {

                                    }
                                    else
                                    {
                                        if (gUnk_03002920[var_r6].unkC_4 == 3)
                                        {
                                            gUnk_03002920[arg0].unkF = 0x10;
                                        }
                                        else if (gUnk_03002920[var_r6].unkC_4 == 1)
                                        {
                                            gUnk_03002920[arg0].unkF = 0x11;
                                        }
                                        else if (gUnk_03002920[var_r6].unkC_4 == 0)
                                        {
                                            gUnk_03002920[arg0].unkF = 0xF;
                                        }
                                        else
                                        {
                                            gUnk_03002920[arg0].unkF = 0xE;
                                        }
                                        m4aSongNumStart(0xA1);
                                    }
                                }
                                break;

                            case 0x32:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0x20))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x20) - 0x40))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 0x1B))
                                        {
                                            sp8 = (gUnk_03002920[var_r6].yPosBg2 - 0x1B) - - 3;
                                            gUnk_03002920[arg0].unkF = 1;
                                            gUnk_03002920[arg0].unk18 = var_r6;
                                            gUnk_03002920[arg0].unk17 = 0;
                                        }
                                    }
                                }
                                break;

                            case 0x38:
                                if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0xC)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18)))
                                {
                                    if (((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2) && ((s32) gUnk_03002920[arg0].yPosBg2 > (s32) (gUnk_03002920[var_r6].yPosBg2 - 8)))
                                    {
                                        sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x8;
                                        gUnk_03002920[arg0].unkF = 1;
                                        gUnk_03002920[arg0].unk18 = var_r6;
                                        gUnk_03002920[arg0].unk17 = 0;
                                    }
                                }
                                break;

                            case 0x2F:
                            case 0x6A:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0xF))
                                {
                                    if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (gUnk_03002920[var_r6].xPosBg2 - 0xF))
                                    {
                                        if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                        {
                                            if (((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 0x20)) && (((s32) (sp0 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xF)) || ((s32) (sp0 + 7) <= (gUnk_03002920[var_r6].xPosBg2 - 0xF)) || ((s32) (sp4 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2) || (sp4 <= (gUnk_03002920[var_r6].yPosBg2 - 0x20))))
                                            {
                                                sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x20;
                                                gUnk_03002920[arg0].unkF = 0;
                                                gUnk_03002920[arg0].unk17 = 0;
                                            }
                                        }
                                    }
                                }
                                break;
                        }
                    }
                }

                gUnk_03002920[arg0].yPosBg2 = sp8;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk57 = gUnk_03002920[arg0].yPosBg2 - sp4;
                }

                if (sp4 != gUnk_03002920[arg0].yPosBg2)
                {
                    if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[0].xPosBg2 + 0xC)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[0].xPosBg2 + 0xC) - 0x18)))
                    {
                        if ((s32) (gUnk_03002920[arg0].yPosBg2 - 4) < (s32) (gUnk_03002920[0].yPosBg2 - 0x14))
                        {
                            if (((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[0].yPosBg2 - 0x18)) && (gUnk_03005220.unk39 == 0) && (gUnk_03002920[arg0].unk12 == 0) && (gUnk_03002920[arg0].unkF != 1))
                            {
                                gUnk_03002920[arg0].yPosBg2 = gUnk_03002920[0].yPosBg2 - 0x18;
                                gUnk_03002920[arg0].unk17 = 0;
                            }
                        }
                    }
                }
            }
            break;

        case 19:
            if (Abs((gUnk_03002920[0].xPosBg2) - (gUnk_03002920[arg0].xPosBg2 - 4)) <= 7)
            {
                gUnk_03002920[arg0].xPosBg2 = gUnk_03002920[0].xPosBg2 + 4;
                if (Abs((gUnk_03002920[0].yPosBg2 - gUnk_03002920[arg0].yPosBg2) - 0x18) <= 7)
                {
                    gUnk_03005220.unk43 = 1;
                    gUnk_03005220.unk55 = 0;
                    gUnk_03005220.unk54 = 0;
                    gUnk_03002920[arg0].yPosBg2 = gUnk_03002920[0].yPosBg2 - 0x18;
                }
                else
                {
                    gUnk_03002920[arg0].yPosBg2 = gUnk_03002920[arg0].yPosBg2 + ((s32) ((gUnk_03002920[0].yPosBg2 - 0x18) - gUnk_03002920[arg0].yPosBg2) >> 1);
                }
            }
            else
            {
                gUnk_03002920[arg0].xPosBg2 = gUnk_03002920[arg0].xPosBg2 + ((s32) ((gUnk_03002920[0].xPosBg2) - (gUnk_03002920[arg0].xPosBg2 - 4)) >> 2);
            }

            if (gUnk_03005220.unk43 == 0)
            {
                gUnk_03005220.unk54 += gUnk_03002920[arg0].xPosBg2 - sp0;
                gUnk_03005220.unk55 += gUnk_03002920[arg0].yPosBg2 - sp4;

                var_r7 = gUnk_03004790.pBufBg2Tilemap[((s32) (gUnk_03002920[arg0].xPosBg2 + 6) >> 3) + (((s32) ((u16) gUnk_03002920[arg0].yPosBg2 - 0x1E) >> 3) * gUnk_03003430.bg2HLength)];

                var_r7 = MAX(var_r7, gUnk_03004790.pBufBg2Tilemap[((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >> 3) + (((s32) ((u16) gUnk_03002920[arg0].yPosBg2 - 0x1E) >> 3) * gUnk_03003430.bg2HLength)]);

                for (var_r6 = gUnk_03003634; var_r6 <= gUnk_03005430; var_r6++)
                {
                    if (gUnk_03002920[var_r6].unkF > 0x1A)
                    {

                    }
                    else if (gUnk_03002920[var_r6].unkF == 0x19)
                    {

                    }
                    else
                    {
                        switch (gUnk_03002920[var_r6].unk11 - 6)
                        {
                            case 0x1F:
                            case 0x69:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 7))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 7) - 0x16))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x18))
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
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) (gUnk_03002920[arg0].yPosBg2 - 8) <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x18))
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
                                if (((gUnk_03002920[arg0].xPosBg2 - 0x12) < (gUnk_03002920[var_r6].xPosBg2 + 0x10)) && ((s32) ((gUnk_03002920[arg0].xPosBg2 - 0x12) + 0x1C) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x10) - 0x20)))
                                {
                                    if (((gUnk_03002920[arg0].yPosBg2 - 0x1A) < (gUnk_03002920[var_r6].yPosBg2 + 8)) && ((s32) ((gUnk_03002920[arg0].yPosBg2 - 0x1A) + 0x12) > (s32) ((gUnk_03002920[var_r6].yPosBg2 + 8) - 0x18)))
                                    {
                                        var_r7 = gUnk_03004654[0x1A];
                                    }
                                }
                                break;

                            case 0x38:
                                if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0xC)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18)))
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6 + 1].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 8))
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
                                if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0xF)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xF) - 0x1E)))
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 0x20))
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
                    sub_0801E664(gUnk_03002920[arg0].xPosBg2, gUnk_03002920[arg0].yPosBg2, 9, 0);
                    gUnk_03002920[arg0].xPosBg2 -= gUnk_03005220.unk54;
                    gUnk_03002920[arg0].yPosBg2 -= gUnk_03005220.unk55;
                    gUnk_03005220.unk55 = 0;
                    gUnk_03005220.unk54 = 0;
                    gUnk_03002920[arg0].unkF = 0;
                    m4aSongNumStart(0xA4);
                    sub_080145A8(1);

                    if ((gUnk_03000824 != 0) && (gUnk_03005424 != 0))
                    {
                        for (var_r6 = gUnk_03000824; var_r6 <= gUnk_03005424; var_r6++)
                        {
                            if (gUnk_03002920[var_r6].unkF <= 0x1A)
                            {
                                if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0x20)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x20) - 0x40)))
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 0x1B))
                                        {
                                            gUnk_03002920[arg0].yPosBg2 = gUnk_03002920[var_r6].yPosBg2 - 0x1B;
                                            gUnk_03002920[arg0].yPosBg2 = gUnk_03002920[arg0].yPosBg2 + 3;
                                            gUnk_03002920[arg0].unkF = 1;
                                            gUnk_03002920[arg0].unk18 = var_r6;
                                            gUnk_03002920[arg0].unk17 = 0;
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
            if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[0].xPosBg2 + 0xC)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[0].xPosBg2 + 0xC) - 0x18)))
            {
                if (((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[0].yPosBg2) && ((s32) gUnk_03002920[arg0].yPosBg2 > (s32) (gUnk_03002920[0].yPosBg2 - 0x14)))
                {
                    if (gUnk_03002920[arg0].unk16 == 0)
                    {
                        gUnk_03002920[arg0].unkF = 0;
                        m4aSongNumStart(0x9D);
                        break;
                    }
                    goto block_240;
                }
            }
            if (gUnk_03002920[arg0].unk16 != 0)
            {
                gUnk_03002920[arg0].unk16 -= 1;
            }
        case 21:
        case 22:
block_240:
            if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
            {
                if (gUnk_03002920[arg0].unkF == 0x10)
                {
                    sp8 = 2;
                }
                else
                {
                    sp8 = 3;
                }
                gUnk_03002920[arg0].xPosBg2 += sp8;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk56 = sp8;
                    gUnk_03005220.unk57 = 0;
                }
                var_r7 = gUnk_03004790.pBufBg2Tilemap[((gUnk_03002920[arg0].xPosBg2 + 8) >> 3) + (((s32) (gUnk_03002920[arg0].yPosBg2 - 4) >> 3) * gUnk_03003430.bg2HLength)];

                var_r7 = MAX(var_r7, gUnk_03004790.pBufBg2Tilemap[((gUnk_03002920[arg0].xPosBg2 + 8) >> 3) + (((s32) (gUnk_03002920[arg0].yPosBg2 - 0x10) >> 3) * gUnk_03003430.bg2HLength)]);

                var_r7 = MAX(var_r7, gUnk_03004790.pBufBg2Tilemap[((gUnk_03002920[arg0].xPosBg2 + 8) >> 3) + (((s32) (gUnk_03002920[arg0].yPosBg2 - 0x1C) >> 3) * gUnk_03003430.bg2HLength)]);
            }
            else
            {
                if (gUnk_03002920[arg0].unkF == 0x11)
                {
                    sp8 = 2;
                }
                else
                {
                    sp8 = 3;
                }
                gUnk_03002920[arg0].xPosBg2 -= sp8;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk56 = -sp8;
                    gUnk_03005220.unk57 = 0;
                }
                var_r7 = gUnk_03004790.pBufBg2Tilemap[((gUnk_03002920[arg0].xPosBg2 - 0x10) >> 3) + (((s32) (gUnk_03002920[arg0].yPosBg2 - 4) >> 3) * gUnk_03003430.bg2HLength)];

                var_r7 = MAX(var_r7, gUnk_03004790.pBufBg2Tilemap[((gUnk_03002920[arg0].xPosBg2 - 0x10) >> 3) + (((s32) (gUnk_03002920[arg0].yPosBg2 - 0x10) >> 3) * gUnk_03003430.bg2HLength)]);

                var_r7 = MAX(var_r7, gUnk_03004790.pBufBg2Tilemap[((gUnk_03002920[arg0].xPosBg2 - 0x10) >> 3) + (((s32) (gUnk_03002920[arg0].yPosBg2 - 0x1C) >> 3) * gUnk_03003430.bg2HLength)]);
            }

            if (((u32) gUnk_03004654[0x18] <= (u32) var_r7) || (((u32) gUnk_03004654[0x1] <= (u32) var_r7) && ((u32) gUnk_03004654[0x14] >= (u32) var_r7) && (gUnk_03004C20.unk11 == 0)))
            {
                gUnk_03002920[arg0].xPosBg2 = sp0;
                if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                {
                    gUnk_03002920[arg0].xPosBg2 = (sp0 + 4) & ~7;
                }
                else
                {
                    gUnk_03002920[arg0].xPosBg2 = sp0 & ~7;
                }
                gUnk_03002920[arg0].unkF = 0;
                m4aSongNumStart(0x9D);
                break;
            }

            sp8 = gUnk_03002920[arg0].xPosBg2;

            for (var_r6 = gUnk_030034D8; var_r6 <= gUnk_0300541C; var_r6++)
            {
                if ((gUnk_03002920[var_r6].unkF <= 0x1A) && (gUnk_03002920[var_r6].unkF != 0x19))
                {
                    switch (gUnk_03002920[var_r6].unk11 - 5)
                    {
                        case 0x20:
                        case 0x6A:
                            if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 7)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 7) - 0x16)))
                            {
                                if (((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2) && ((s32) gUnk_03002920[arg0].yPosBg2 > (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x18)) && (arg0 != var_r6))
                                {
                                    if (gUnk_03002920[arg0].unkF == 21 || gUnk_03002920[arg0].unkF == 16)
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 - 0x18;
                                    }
                                    else if (gUnk_03002920[arg0].unkF == 22 || gUnk_03002920[arg0].unkF == 17)
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x18;
                                    }
                                    gUnk_03002920[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                }
                            }
                            break;

                        case 0x1:
                        case 0x3:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                            {
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (gUnk_03002920[var_r6].xPosBg2 - 0xC))
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 0x18))
                                        {
                                            if ((s32) gUnk_03002920[arg0].yPosBg2 < ((gUnk_03002920[var_r6].yPosBg2 - 0x18) + 2))
                                            {
                                                gUnk_03002920[arg0].yPosBg2 = ((gUnk_03002920[var_r6].yPosBg2 - 0x18) + 2) - 3;
                                            }
                                            else
                                            {
                                                if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                                                {
                                                    if ((s32) (gUnk_03002920[arg0].xPosBg2 + 4) <= (gUnk_03002920[var_r6].xPosBg2 - 0xC))
                                                    {
                                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + -0x14;
                                                        gUnk_03002920[arg0].unkF = 0;
                                                        m4aSongNumStart(0x9D);
                                                    }
                                                }
                                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xC) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                                                {
                                                    sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x1C;
                                                    gUnk_03002920[arg0].unkF = 0;
                                                    m4aSongNumStart(0x9D);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x3C:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x10) - 0x20))
                            {

                            }
                            else
                            {
                                if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                {

                                }
                                else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x20))
                                {

                                }
                                else if (gUnk_03000830[var_r6 - gUnk_0300363C].unk0 != 0)
                                {

                                }
                                else
                                {
                                    if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + -0x18;
                                    }
                                    else
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x20;
                                    }
                                    gUnk_03002920[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                    break;
                                }
                            }
                            break;

                        case 0x6C:
                        case 0x6D:
                            if (gUnk_03002920[var_r6 + 1].unk8 != 0)
                            {
                                break;
                            }
                            /* fallthrough */
                        case 0x6E:
                        case 0x6F:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 2))
                            {

                            }
                            else
                            {
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (gUnk_03002920[var_r6].xPosBg2 - 2))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x10))
                                        {

                                        }
                                        else if (((s32) (sp0 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 2)) && ((s32) (sp0 + 7) > (gUnk_03002920[var_r6].xPosBg2 - 2)) && ((s32) (sp4 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2) && (sp4 > (gUnk_03002920[var_r6].yPosBg2 - 0x10)))
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
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 8))
                            {

                            }
                            else
                            {
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (gUnk_03002920[var_r6].xPosBg2 - 8))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x20))
                                        {

                                        }
                                        else if (((s32) (sp0 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 8)) && ((s32) (sp0 + 7) > (gUnk_03002920[var_r6].xPosBg2 - 8)) && ((s32) (sp4 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2) && (sp4 > (gUnk_03002920[var_r6].yPosBg2 - 0x20)))
                                        {

                                        }
                                        else
                                        {
                                            if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                                            {
                                                sp8 = gUnk_03002920[var_r6].xPosBg2 - 0x10;
                                            }
                                            else
                                            {
                                                sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x18;
                                            }
                                            gUnk_03002920[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                            break;
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x0:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x10) - 0x20))
                            {

                            }
                            else
                            {
                                if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                {

                                }
                                else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x20))
                                {

                                }
                                else
                                {
                                    if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 - 0x18;
                                    }
                                    else
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x20;
                                    }
                                    gUnk_03002920[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                }
                            }
                            break;

                        case 0x36:
                            if (gUnk_03002920[var_r6].unkC_2 == 1)
                            {
                                var_r7_3 = 8;
                            }
                            else
                            {
                                var_r7_3 = 0;
                            }
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (s32) (gUnk_03002920[var_r6].xPosBg2 + var_r7_3))
                            {
                                goto block_379;
                            }
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 - 8) + var_r7_3))
                            {
                                goto block_379;
                            }
                            if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                            {
                                goto block_379;
                            }
                            if ((s32) gUnk_03002920[arg0].yPosBg2 > (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x20))
                            {
                                if (gUnk_03002920[var_r6].unkC_4 == 0)
                                {
                                    if (((gUnk_03002920[arg0].unkF == 0x15) && (gUnk_03002920[var_r6].unkC_2 == 0)) || ((gUnk_03002920[arg0].unkF == 0x16) && (gUnk_03002920[var_r6].unkC_2 == 1)))
                                    {
                                        DmaCopy16(3, &gUnk_080B9368, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_r6 - 0xD].tileNum << 5), 0x100);
                                        gUnk_03002920[var_r6].unkC_4 = 1;
                                        m4aSongNumStart(0x7D);
                                    }
                                    else
                                    {
                                        if (gUnk_03002920[arg0].unkF == 0x15)
                                        {
                                            sp8 = gUnk_03002920[var_r6].xPosBg2 + -0x8;
                                        }
                                        else
                                        {
                                            sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x10;
                                        }
                                        gUnk_03002920[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                    }
                                }
                            }
                            else
                            {
block_379:
                                if (gUnk_03002920[var_r6].unkC_4 != 1)
                                {

                                }
                                else if (gUnk_03005220.unk3_7 != 0)
                                {

                                }
                                else
                                {
                                    DmaCopy16(3, &gUnk_08062148, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_r6 - 0xD].tileNum << 5), 0x100);
                                    gUnk_03002920[var_r6].unkC_4 = 0;
                                }
                            }
                            break;

                        case 0x3A:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18))
                            {

                            }
                            else
                            {
                                if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                {

                                }
                                else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x18))
                                {

                                }
                                else if (gUnk_03000830[var_r6 - gUnk_0300363C].unk0 != 0)
                                {

                                }
                                else
                                {
                                    if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + -0x14;
                                    }
                                    else
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x1C;
                                    }
                                    gUnk_03002920[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                }
                            }
                            break;

                        case 0x22:
                        case 0x23:
                        case 0x24:
                        case 0x25:
                        case 0x26:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x10) - 0x20))
                            {

                            }
                            else
                            {
                                if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x10))
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 < (s32) (gUnk_03002920[var_r6].yPosBg2 - 0xA))
                                    {
                                        gUnk_03002920[arg0].yPosBg2 = gUnk_03002920[var_r6].yPosBg2 - 0x10;
                                    }
                                    else
                                    {
                                        if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x16) > (s32) gUnk_03002920[var_r6].yPosBg2)
                                        {
                                            gUnk_03002920[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                        }
                                        else
                                        {
                                            if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                                            {
                                                sp8 = gUnk_03002920[var_r6].xPosBg2 + -0x18;
                                            }
                                            else
                                            {
                                                sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x20;
                                            }
                                            gUnk_03002920[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                        }
                                    }
                                }
                            }
                            break;

                        case 0x31:
                        case 0x70:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (s32) (gUnk_03002920[var_r6].xPosBg2 + 3))
                            {

                            }
                            else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) (gUnk_03002920[var_r6].xPosBg2 - 3))
                            {

                            }
                            else
                            {
                                if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (gUnk_03002920[var_r6].yPosBg2 - 0xC))
                                {

                                }
                                else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) ((gUnk_03002920[var_r6].yPosBg2 - 0xC) - 8))
                                {

                                }
                                else
                                {
                                    if (gUnk_03002920[var_r6].unkC_4 == 3)
                                    {
                                        gUnk_03002920[arg0].unkF = 0x10;
                                    }
                                    else if (gUnk_03002920[var_r6].unkC_4 == 1)
                                    {
                                        gUnk_03002920[arg0].unkF = 0x11;
                                    }
                                    else if (gUnk_03002920[var_r6].unkC_4 == 0)
                                    {
                                        gUnk_03002920[arg0].unkF = 0xF;
                                    }
                                    else
                                    {
                                        gUnk_03002920[arg0].unkF = 0xE;
                                    }
                                    m4aSongNumStart(0xA1);
                                }
                            }
                            break;

                        case 0x39:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18))
                            {

                            }
                            else
                            {
                                if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6 + 1].yPosBg2)
                                {

                                }
                                else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 8))
                                {

                                }
                                else
                                {
                                    if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + 0xFFEC;
                                    }
                                    else
                                    {
                                        sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x1C;
                                    }
                                    gUnk_03002920[arg0].unkF = 0;
                                    m4aSongNumStart(0x9D);
                                }
                            }
                            break;

                        case 0x30:
                        case 0x6B:
                            if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0xF))
                            {
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (gUnk_03002920[var_r6].xPosBg2 - 0xF))
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if (((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 0x20)) && (((s32) (sp0 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xF)) || ((s32) (sp0 + 7) <= (gUnk_03002920[var_r6].xPosBg2 - 0xF)) || ((s32) (sp4 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2) || (sp4 <= (gUnk_03002920[var_r6].yPosBg2 - 0x20))))
                                        {
                                            if ((gUnk_03002920[arg0].unkF == 0x15) || (gUnk_03002920[arg0].unkF == 0x10))
                                            {
                                                sp8 = gUnk_03002920[var_r6].xPosBg2 + -0x18;
                                            }
                                            else
                                            {
                                                sp8 = gUnk_03002920[var_r6].xPosBg2 + 0x20;
                                            }
                                            gUnk_03002920[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                        }
                                    }
                                }
                            }
                            break;
                    }
                }
            }

            gUnk_03002920[arg0].xPosBg2 = sp8;
            break;

        case 15:
            if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[0].xPosBg2 + 0xC)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[0].xPosBg2 + 0xC) - 0x18)))
            {
                if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (gUnk_03002920[0].yPosBg2 - 0x10))
                {
                    if ((s32) gUnk_03002920[arg0].yPosBg2 > ((gUnk_03002920[0].yPosBg2 - 0x10) - 0xB))
                    {
                        gUnk_03002920[arg0].yPosBg2 = ((gUnk_03002920[0].yPosBg2 - 0x10) - 0xB) - -3;
                        gUnk_03002920[arg0].unkF = 0;
                        m4aSongNumStart(0x9D);
                        break;
                    }
                }
            }
        case 14:
        case 23:
            gUnk_03002920[arg0].unk16 = 0;
            if (gUnk_03002920[arg0].unkF == 0xE)
            {
                gUnk_03002920[arg0].yPosBg2 -= 2;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk57 = -2;
                    gUnk_03005220.unk56 = 0;
                }
                var_r7 = gUnk_03004790.pBufBg2Tilemap[((s32) (gUnk_03002920[arg0].xPosBg2 + 6) >> 3) + (((gUnk_03002920[arg0].yPosBg2 - 0x18) >> 3) * gUnk_03003430.bg2HLength)];

                var_r7 = MAX(var_r7, gUnk_03004790.pBufBg2Tilemap[((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >> 3) + (((gUnk_03002920[arg0].yPosBg2 - 0x18) >> 3) * gUnk_03003430.bg2HLength)]);
            }
            else
            {
                if (gUnk_03002920[arg0].unkF == 0xF)
                {
                    sp8 = 2;
                }
                else
                {
                    if (gUnk_03002920[arg0].unk12 == 0)
                    {
                        sp8 = 3;
                    }
                    else
                    {
                        sp8 = 1;
                    }
                }
                gUnk_03002920[arg0].yPosBg2 += sp8;
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03005220.unk57 = sp8;
                    gUnk_03005220.unk56 = 0;
                }
                var_r7 = gUnk_03004790.pBufBg2Tilemap[((s32) (gUnk_03002920[arg0].xPosBg2 + 6) >> 3) + (((gUnk_03002920[arg0].yPosBg2 - 2) >> 3) * gUnk_03003430.bg2HLength)];

                var_r7 = MAX(var_r7, gUnk_03004790.pBufBg2Tilemap[((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >> 3) + (((gUnk_03002920[arg0].yPosBg2 - 2) >> 3) * gUnk_03003430.bg2HLength)]);
            }

            if (((u32) gUnk_03004654[0x18] <= (u32) var_r7) || (((u32) gUnk_03004654[0x1] <= (u32) var_r7) && ((u32) gUnk_03004654[0x14] >= (u32) var_r7) && (gUnk_03004C20.unk11 == 0)))
            {
                if ((gUnk_03000824 != 0) && (gUnk_03005424 != 0))
                {
                    for (var_r6 = gUnk_03000824; var_r6 <= gUnk_03005424; var_r6++)
                    {
                        if (!(((u32) gUnk_03002920[var_r6].unkF > 0x1A) || ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0x20)) || ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x20) - 0x40)) || ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2) || ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x1B))))
                        {
                            gUnk_03002920[arg0].yPosBg2 = gUnk_03002920[var_r6].yPosBg2 - 0x18;
                            gUnk_03002920[arg0].unkF = 1;
                            gUnk_03002920[arg0].unk18 = var_r6;
                            return;
                        }
                    }
                }
                gUnk_03002920[arg0].yPosBg2 = sp4 + 3;
                gUnk_03002920[arg0].yPosBg2 = gUnk_03002920[arg0].yPosBg2 & 0xFFF8;
                gUnk_03002920[arg0].unkF = 0;
                m4aSongNumStart(0x9D);
                if (gUnk_03005220.unk3F == arg0)
                {
                    gUnk_03002920[gUnk_03005220.unk3F].yPosBg2 += 3;
                }
            }
            else
            {
                sp8 = gUnk_03002920[arg0].yPosBg2;

                for (var_r6 = gUnk_03003630; var_r6 <= gUnk_03004674; var_r6++)
                {
                    if (gUnk_03002920[var_r6].unkF > 0x1A)
                    {

                    }
                    else if (gUnk_03002920[var_r6].unkF == 0x19)
                    {

                    }
                    else
                    {
                        switch (gUnk_03002920[var_r6].unk11 - 6)
                        {
                            case 0x1F:
                            case 0x69:
                                if ((gUnk_03002920[arg0].xPosBg2 - 0x10) >= (gUnk_03002920[var_r6].xPosBg2 + 7))
                                {

                                }
                                else if ((s32) ((gUnk_03002920[arg0].xPosBg2 - 0x10) + 0x18) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 7) - 0x16))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x1B))
                                    {

                                    }
                                    else if (arg0 == var_r6)
                                    {

                                    }
                                    else
                                    {
                                        if (gUnk_03002920[arg0].unkF == 0xE)
                                        {
                                            sp8 = gUnk_03002920[var_r6].yPosBg2 + 0x18;
                                        }
                                        else
                                        {
                                            sp8 = gUnk_03002920[var_r6].yPosBg2 - 0x18;
                                        }
                                        gUnk_03002920[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                    }
                                }
                                break;

                            case 0x0:
                            case 0x2:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x1B))
                                    {

                                    }
                                    else
                                    {
                                        if (gUnk_03002920[arg0].unkF == 0xE)
                                        {
                                            sp8 = gUnk_03002920[var_r6].yPosBg2 + 0x18;
                                        }
                                        else
                                        {
                                            sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x17;
                                        }
                                        gUnk_03002920[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                    }
                                }
                                break;

                            case 0x3B:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0x10))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x10) - 0x20))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x20))
                                        {

                                        }
                                        else if (gUnk_03000830[var_r6 - gUnk_0300363C].unk0 != 0)
                                        {

                                        }
                                        else
                                        {
                                            if (gUnk_03002920[arg0].unkF == 0xE)
                                            {
                                                sp8 = gUnk_03002920[var_r6].yPosBg2 + 0x20;
                                            }
                                            else
                                            {
                                                sp8 = gUnk_03002920[var_r6].yPosBg2 - 0x20;
                                            }
                                            gUnk_03002920[arg0].unkF = 0;
                                            m4aSongNumStart(0x9D);
                                        }
                                    }
                                }
                                break;

                            case 0x6B:
                            case 0x6C:
                                if (gUnk_03002920[var_r6 + 1].unk8 != 0)
                                {

                                }
                                else
                                {
                                case 0x6D:
                                case 0x6E:
                                    if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 2))
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (gUnk_03002920[var_r6].xPosBg2 - 2))
                                        {

                                        }
                                        else
                                        {
                                            if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                            {

                                            }
                                            else
                                            {
                                                if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x10))
                                                {

                                                }
                                                else if (((s32) (sp0 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 2)) && ((s32) (sp0 + 7) > (gUnk_03002920[var_r6].xPosBg2 - 2)) && ((s32) (sp4 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2) && (sp4 > (gUnk_03002920[var_r6].yPosBg2 - 0x10)))
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
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x19))
                                    {

                                    }
                                    else
                                    {
                                        sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x10;
                                        gUnk_03002920[arg0].unkF = 0;
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
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0x10))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x10) - 0x20))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {

                                    }
                                    else
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 <= (gUnk_03002920[var_r6].yPosBg2 - 0x10))
                                        {

                                        }
                                        else
                                        {
                                            if ((s32) gUnk_03002920[arg0].yPosBg2 > ((gUnk_03002920[var_r6].yPosBg2 - 0x10) + 4))
                                            {

                                            }
                                            else
                                            {
                                                sp8 = ((gUnk_03002920[var_r6].yPosBg2 - 0x10) + 4) - 5;
                                                m4aSongNumStart(0x9D);
                                                gUnk_03002920[arg0].unkF = 1;
                                                gUnk_03002920[arg0].unk18 = var_r6;
                                            }
                                        }
                                    }
                                }
                                break;

                            case 0x30:
                            case 0x6F:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (s32) (gUnk_03002920[var_r6].xPosBg2 + 3))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) <= (s32) (gUnk_03002920[var_r6].xPosBg2 - 3))
                                {

                                }
                                else
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) >= (gUnk_03002920[var_r6].yPosBg2 - 0xC))
                                    {

                                    }
                                    else if ((s32) gUnk_03002920[arg0].yPosBg2 <= (s32) ((gUnk_03002920[var_r6].yPosBg2 - 0xC) - 8))
                                    {

                                    }
                                    else
                                    {
                                        if (gUnk_03002920[var_r6].unkC_4 == 3)
                                        {
                                            gUnk_03002920[arg0].unkF = 0x10;
                                        }
                                        else if (gUnk_03002920[var_r6].unkC_4 == 1)
                                        {
                                            gUnk_03002920[arg0].unkF = 0x11;
                                        }
                                        else if (gUnk_03002920[var_r6].unkC_4 == 0)
                                        {
                                            gUnk_03002920[arg0].unkF = 0xF;
                                        }
                                        else
                                        {
                                            gUnk_03002920[arg0].unkF = 0xE;
                                        }
                                        m4aSongNumStart(0xA1);
                                    }
                                }
                                break;

                            case 0x38:
                                if ((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) >= (gUnk_03002920[var_r6].xPosBg2 + 0xC))
                                {

                                }
                                else if ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xC) - 0x18))
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 8))
                                        {
                                            sp8 = (gUnk_03002920[var_r6].yPosBg2 - 8) - 1;
                                            m4aSongNumStart(0x9D);
                                            // if (gUnk_03002920[var_r6].unk11 == 0x29 || gUnk_03002920[var_r6].unk11 == 0x2A)
                                            if (gUnk_03002920[var_r6].unk11 >= 0x29 && gUnk_03002920[var_r6].unk11 <= 0x2A)
                                            {
                                                gUnk_03002920[arg0].unkF = 0;
                                            }
                                            else
                                            {
                                                gUnk_03002920[arg0].unkF = 1;
                                                gUnk_03002920[arg0].unk18 = var_r6;
                                            }
                                        }
                                    }
                                }
                                break;

                            case 0x32:
                                if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0x20)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0x20) - 0x40)))
                                {
                                    if ((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2)
                                    {
                                        if ((s32) gUnk_03002920[arg0].yPosBg2 > (gUnk_03002920[var_r6].yPosBg2 - 0x1D))
                                        {
                                            sp8 = (gUnk_03002920[var_r6].yPosBg2 - 0x1D) - -4;
                                            gUnk_03002920[arg0].unkF = 1;
                                            gUnk_03002920[arg0].unk18 = var_r6;
                                        }
                                    }
                                }
                                break;

                            case 0x2F:
                            case 0x6A:
                                if (((s32) (gUnk_03002920[arg0].xPosBg2 - 0xF) < (gUnk_03002920[var_r6].xPosBg2 + 0xF)) && ((s32) (gUnk_03002920[arg0].xPosBg2 + 7) > (s32) ((gUnk_03002920[var_r6].xPosBg2 + 0xF) - 0x1E)))
                                {
                                    if (((s32) (gUnk_03002920[arg0].yPosBg2 - 0x18) < (s32) gUnk_03002920[var_r6].yPosBg2) && ((s32) gUnk_03002920[arg0].yPosBg2 > (s32) (gUnk_03002920[var_r6].yPosBg2 - 0x20)))
                                    {
                                        sp8 = gUnk_03002920[var_r6].yPosBg2 + -0x20;
                                        gUnk_03002920[arg0].unkF = 0;
                                        m4aSongNumStart(0x9D);
                                    }
                                }
                                break;
                        }
                    }
                }
                gUnk_03002920[arg0].yPosBg2 = sp8;
            }
            break;

        case 27:
            if (!(gUnk_03004C20.unk4 & 7))
            {
                temp_r1_52 = 0x46 - gUnk_03002920[arg0].unk9;
                var_r5_2 = 0;
                var_r4_2 = 0;
                if (gUnk_03002920[arg0].unk8 == 2)
                {
                    sp0 = gUnk_03002920[arg0].xPosBg2 - 4;
                    sp4 = gUnk_03002920[arg0].yPosBg2 - temp_r1_52;
                    var_r5_2 = 5;
                }
                else if (gUnk_03002920[arg0].unk8 == 3)
                {
                    sp0 = gUnk_03002920[arg0].xPosBg2;
                    sp4 = gUnk_03002920[arg0].yPosBg2 + temp_r1_52;
                    var_r5_2 = 5;
                }
                else if (gUnk_03002920[arg0].unk8 == 4)
                {
                    sp0 = gUnk_03002920[arg0].xPosBg2 + temp_r1_52;
                    sp4 = gUnk_03002920[arg0].yPosBg2;
                    var_r4_2 = 5;
                }
                else if (gUnk_03002920[arg0].unk8 == 5)
                {
                    sp0 = gUnk_03002920[arg0].xPosBg2 - temp_r1_52;
                    sp4 = gUnk_03002920[arg0].yPosBg2;
                    var_r4_2 = 5;
                }
                sub_0801E664(sp0 - var_r4_2, (sp4 - var_r5_2) + 4, 6, 0);
                sub_0801E664(sp0 + var_r4_2, sp4 + var_r5_2 + 4, 6, 0);
            }
            gUnk_03002920[arg0].unk9 -= 1;
            if (gUnk_03002920[arg0].unk9 == 0)
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            break;

        case 11:
        case 12:
        case 13:
            sp4 = 0;
            temp_r0_93 = gUnk_03002920[arg0].unkF;
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
            if (((s32) (u16) ((sp0 + gUnk_03002920[arg0].xPosBg2) - 0xF) >= (s32) (gUnk_03002920[gUnk_03002920[arg0].unk8].xPosBg2 + 7)) || ((s32) (u16) ((sp0 + gUnk_03002920[arg0].xPosBg2) + 7) <= (s32) (gUnk_03002920[gUnk_03002920[arg0].unk8].xPosBg2 - 0xF)) || ((u32) (u16) ((sp4 + gUnk_03002920[arg0].yPosBg2) - 0x18) >= (u32) gUnk_03002920[gUnk_03002920[arg0].unk8].yPosBg2) || ((s32) (u16) ((gUnk_03002920[arg0].yPosBg2 + sp4) + 0) <= (s32) (gUnk_03002920[gUnk_03002920[arg0].unk8].yPosBg2 - 0x18)))
            {
                gUnk_03002920[arg0].unkF = 0;
            }
            break;

        case 7:
        case 8:
        case 9:
            sp4 = 0;
            temp_r0_94 = gUnk_03002920[arg0].unkF;
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
            if (((s32) (u16) ((sp0 + gUnk_03002920[arg0].xPosBg2) - 0xE) >= (s32) (gUnk_03002920[gUnk_03002920[arg0].unk8].xPosBg2 + 7)) || ((s32) (u16) ((sp0 + gUnk_03002920[arg0].xPosBg2) + 6) <= (s32) (gUnk_03002920[gUnk_03002920[arg0].unk8].xPosBg2 - 0xF)) || ((u32) (u16) ((sp4 + gUnk_03002920[arg0].yPosBg2) - 0x17) >= (u32) gUnk_03002920[gUnk_03002920[arg0].unk8].yPosBg2) || ((s32) (u16) ((sp4 + gUnk_03002920[arg0].yPosBg2) - 1) <= (s32) (gUnk_03002920[gUnk_03002920[arg0].unk8].yPosBg2 - 0x18)))
            {
                gUnk_03002920[arg0].unkF = 0;
            }
            break;
    }
}
