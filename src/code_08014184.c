#include "global.h"
#include "code_08014184.h"
#include "code_08003D58.h"
#include "transitions.h"
#include "anim.h"
#include "code_0803C808.h"
#include "main.h"
#include "math.h"
#include "rand.h"
#include "rotation.h"
#include "util.h"
#include "data/trig.h"
#include "constants/songs.h"
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
struct Unk_08014184 sub_08014184(u16 arg1, u16 arg2, u8 arg3)
{
    u32 var_r3;
    struct Unk_08014184 var_r4;

    for (var_r3 = gUnk_03004D80->unk2; var_r3 < gUnk_03004D80->unk0; var_r3++)
    {
        if ((arg2 >= gUnk_03004D80->unk4[var_r3].unk2) && (gUnk_03004D80->unk4[var_r3].unk6 >= (arg2 - arg3)) && (arg1 < (gUnk_03004D80->unk4[var_r3].unk0 + 3)) && ((gUnk_03004D80->unk4[var_r3].unk0 - 3) < arg1))
        {
            var_r4.unk0 = gUnk_03004D80->unk4[var_r3].unk0 - 3;
            var_r4.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
            return var_r4;
        }
    }

    var_r4.unk0 = -1;
    return var_r4;
}

// 14230
struct Unk_08014184 sub_08014230(u16 arg1, u16 arg2, u8 arg3)
{
    s32 temp_r1_2;
    struct Unk_08014184 var_r5;
    u32 var_r3;

    var_r5.unk0 = -1;

    for (var_r3 = 0; var_r3 < gUnk_03004D80->unk2; var_r3++)
    {
        if (gUnk_03004D80->unk4[var_r3].unk4 < arg1)
        {
            continue;
        }

        if (arg1 < gUnk_03004D80->unk4[var_r3].unk0)
        {
            return var_r5;
        }

        if (gUnk_03004D80->unk4[var_r3].unk2 == gUnk_03004D80->unk4[var_r3].unk6)
        {
            if (((arg2 - arg3) <= gUnk_03004D80->unk4[var_r3].unk2) && (gUnk_03004D80->unk4[var_r3].unk2 <= arg2))
            {
                var_r5.unk0 = gUnk_03004D80->unk4[var_r3].unk2;
                var_r5.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
                return var_r5;
            }
        }
        else
        {
            temp_r1_2 = (((gUnk_03004D80->unk4[var_r3].unk6 - gUnk_03004D80->unk4[var_r3].unk2) * (arg1 - gUnk_03004D80->unk4[var_r3].unk0)) / (gUnk_03004D80->unk4[var_r3].unk4 - gUnk_03004D80->unk4[var_r3].unk0)) + gUnk_03004D80->unk4[var_r3].unk2;
            if ((temp_r1_2 >= (arg2 - arg3)) && (temp_r1_2 <= (arg2 + 3)))
            {
                var_r5.unk0 = temp_r1_2;
                var_r5.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
                return var_r5;
            }
        }
    }

    return var_r5;
}

/*
    ODDITY: this function matches in this file, but alone doesn't
    https://decomp.me/scratch/jnG3R
*/

// 14318
void sub_08014318(void)
{
    u8 var_r3;

    var_r3 = 0;
    if (gUnk_03005220.unk56 > 0)
    {
        var_r3 = gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 4) >> 3) * gBgInfo[2].hLength)];

        var_r3 = max(var_r3, gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0xC) >> 3) * gBgInfo[2].hLength)]);

        var_r3 = max(var_r3, gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2 + 0xC) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x14) >> 3) * gBgInfo[2].hLength)]);
    }
    else if (gUnk_03005220.unk56 < 0)
    {
        var_r3 = gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 4) >> 3) * gBgInfo[2].hLength)];

        var_r3 = max(var_r3, gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0xC) >> 3) * gBgInfo[2].hLength)]);

        var_r3 = max(var_r3, gBgDataPtrs.pBufBg2Tilemap[(((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xD) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x14) >> 3) * gBgInfo[2].hLength)]);
    }

    if (gUnk_03005220.unk57 != 0)
    {
        var_r3 = max(var_r3, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + gUnk_03005220.unk56) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 0x1A) >> 3) * gBgInfo[2].hLength)]);

        var_r3 = max(var_r3, gBgDataPtrs.pBufBg2Tilemap[((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) >> 3) + ((((gUnk_03005220.unk57 + gEntityInfo[0].yPosBg2) - 4) >> 3) * gBgInfo[2].hLength)]);
    }

    if (var_r3 < gUnk_03004654->unk1A)
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
        SetEntityAnimationInfoState(0, 0);
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
    // gUnk_03005220.allStarsCollected = 0;
    gUnk_03005220.allStarsCollected = gEntityInfo[0x9].visible = gEntityInfo[0xA].visible = 0;
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
    gUnk_03005220.windBulletDisableTimer = 0;
    gUnk_03005220.unk41 = 0;
    gUnk_03005220.unk40 = 0;
    gUnk_03005220.unk3F = 0;
    gUnk_03005220.klonoaInvulnerabilityTimer = 0;
    gUnk_03005220.unk3C = 0;
    gUnk_03005220.unk55 = 0;
    gUnk_03005220.unk54 = 0;
    gUnk_03005220.unk57 = 0;
    gUnk_03005220.unk56 = 0;
    gUnk_03005220.klonoaCannonYVel = 0;
    gUnk_03005220.klonoaCannonXVel = 0;
    gUnk_03005220.klonoaYVel = 0;
    gUnk_03005220.klonoaXVel = 0;
    gUnk_03005220.unk5C = 1;
    gUnk_03005220.unk3D = 1;
    gEntityInfo[0].visible = 1;
    gUnk_03005220.unk16 = 0x230;
    gUnk_03005220.unk18 = 0;
    gEntityInfo[0].affineEnable = 0;

    SetEntityAnimationInfoState(0, 0);
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

        if ((arg0 == 1) && (gEntityAnimationInfo[0].state >= 0x16))
        {
            SetEntityAnimationInfoState(0, gEntityAnimationInfo[0].state - 0x16);
        }
    }
}

// 14624
void ReceiveDamage(s32 damageTaken)
{
    if ((gUnk_03005220.unk46 | gUnk_03003410.unkB | gTransitioning) != 0)
    {
        return;
    }

    gUnk_03005220.unk5B = 0;
    if (damageTaken == 1)
    {
        gUnk_03005220.hearts -= damageTaken;
        DrawLevelHud_Hearts();
        gUnk_03005220.unk5B = 1;
    }

    if (gUnk_03005220.hearts == 0)
    {
        m4aSongNumStart(SE_KLONOA_DEATH);

        gUnk_03005220.unk46 = 0x46;
        gEntityInfo[0x9].visible = 0;
        gEntityInfo[0xA].visible = 0;
        gUnk_03005220.unk57 = 0;
        gUnk_03005220.unk56 = 0;
        gUnk_03005220.unk3F = 0;
        gUnk_03005220.unk3B = 0;
        gUnk_03005220.unk3A = 0;
        gUnk_03005220.unk39 = 0;
        gUnk_03005220.unk34 = 0;

        if (gUnk_03005220.unk42 != 0)
        {
            if ((gEntityInfo[gUnk_03005220.unk42].id != ENTITY_ID_BOX) && (gEntityInfo[gUnk_03005220.unk42].id != ENTITY_ID_MAGNET_BLOCK))
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
        m4aSongNumStart(SE_KLONOA_HURT);
        gUnk_03005220.unk3C = 0;
        SetEntityAnimationInfoState(0, 0xC);
    }

    gUnk_03005220.klonoaIdleTimer = 0;
    gUnk_03005220.klonoaInvulnerabilityTimer = 120 + 15; // 135 frames, 2.25 seconds
    if (gUnk_03005220.unk3D > 1)
    {
        gUnk_03005220.unk3D = 1;
        m4aSongNumStart(SE_SILENCE_1);
    }

    gUnk_03005220.unk44 = gEntityInfo[0].unkC_2;
    gUnk_03005220.unk3C = 0;
    gUnk_03005220.klonoaXVel = 0;
    gUnk_03005220.klonoaYVel = 0;
}

// 14760
void sub_08014760(u8 slot)
{
    // Called by ENTITY_ID_MAGNET_BLOCK, ENTITY_ID_BOX
    u16 sp0;
    u16 sp4;
    u16 sp8;
    s32 temp_r1_52;
    s32 var_r4_2;
    s32 var_r5_2;
    u32 var_r6;
    s32 var_r7_3;
    u8 var_r7;

    sp0 = gEntityInfo[slot].xPosBg2;
    sp4 = gEntityInfo[slot].yPosBg2;

    switch (gEntityInfo[slot].unkF)
    {
        case 0:
        case 1:
            if (gEntityInfo[slot].unk12 == 0)
            {
                gEntityInfo[slot].yPosBg2 += 2;
            }
            else
            {
                gEntityInfo[slot].yPosBg2 += 1;
            }

            gEntityInfo[slot].unk17 = 1;

            var_r7 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 6) >> 3) + ((gEntityInfo[slot].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength];

            var_r7 = max(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xF) >> 3) + ((gEntityInfo[slot].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength]);

            if ((gUnk_03004654->unk18 <= var_r7) && (gEntityInfo[slot].unkF == 0))
            {
                gEntityInfo[slot].unk17 = 0;
                if (gEntityInfo[slot].unk12 == 0)
                {
                    gEntityInfo[slot].yPosBg2 = sp4 + 3;
                    gEntityInfo[slot].yPosBg2 &= ~0x7;
                }
                else
                {
                    gEntityInfo[slot].yPosBg2 = sp4;
                }

                if (gUnk_03005220.unk3F == slot)
                {
                    gUnk_03005220.unk57 = 0;
                    gUnk_03005220.unk56 = 0;
                }
            }
            else
            {
                sp8 = gEntityInfo[slot].yPosBg2;
                for (var_r6 = gUnk_03003630; var_r6 <= gUnk_03004674; var_r6++)
                {
                    if (gEntityInfo[var_r6].unkF > 0x1A)
                    {
                        continue;
                    }
                    if (gEntityInfo[var_r6].unkF == 0x19)
                    {
                        continue;
                    }

                    switch (gEntityInfo[var_r6].id)
                    {
                        case ENTITY_ID_MAGNET_BLOCK:
                        case ENTITY_ID_BOX:
                            if (((gEntityInfo[slot].xPosBg2 - 0x10) < (gEntityInfo[var_r6].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                            {
                                if (slot != var_r6)
                                {
                                    if (gEntityInfo[slot].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0x14))
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 + -0x18;
                                    }
                                    gEntityInfo[slot].unkF = 0;
                                    gEntityInfo[slot].unk17 = 0;
                                }
                            }
                            break;

                        case ENTITY_ID_SPIKER_HORIZONTAL:
                        case ENTITY_ID_SPIKER_VERTICAL:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                            {
                                if (gEntityInfo[slot].yPosBg2 < (gEntityInfo[var_r6].yPosBg2 - 0x13))
                                {
                                    sp8 = gEntityInfo[var_r6].yPosBg2 + -0x17;
                                    gEntityInfo[slot].unk17 = 0;
                                }
                            }
                            break;

                        case ENTITY_ID_MOON_DOOR:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                            {
                                if (gEntityAnimationInfo[var_r6 - gUnk_0300363C].state == 0)
                                {
                                    sp8 = gEntityInfo[var_r6].yPosBg2 - 0x21;
                                    gEntityInfo[slot].unk17 = 0;
                                }
                            }
                            break;

                        case ENTITY_ID_WATER_SWITCH:
                        case ENTITY_ID_GATE_SWITCH:
                            if (gEntityInfo[var_r6 + 1].unk8.split.unk8 != 0)
                            {
                                break;
                            }
                        /* fallthrough */
                        case ENTITY_ID_ROTATION_SWITCH:
                        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                            {
                                if (((sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) &&
                                    ((sp4 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                                {
                                    break;
                                }
                                sub_0801EAA4(var_r6);
                            }
                            break;

                        case ENTITY_ID_SPRING:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                            {
                                sp8 = gEntityInfo[var_r6].yPosBg2 + -0x10;
                                gEntityInfo[slot].unk17 = 0;
                                SetEntityAnimationInfoState(var_r6, 2);
                                gUnk_03003610[1].unk2 = slot;
                                gUnk_03003610[1].unk3 = var_r6;
                            }
                            break;

                        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
                        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                        case ENTITY_ID_GRATED_PLATFORM:
                        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x11)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x11)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                            {
                                if (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0xD))
                                {
                                    break;
                                }

                                sp8 = gEntityInfo[var_r6].yPosBg2 + -0x10;
                                gEntityInfo[slot].unk17 = 0;
                                gEntityInfo[slot].unk12 = 0;
                                // if (gEntityInfo[var_r6].id == ENTITY_ID_MOVING_PLATFORM_HORIZONTAL && gEntityInfo[var_r6].id == ENTITY_ID_GRATED_PLATFORM)
                                if (gEntityInfo[var_r6].id >= ENTITY_ID_MOVING_PLATFORM_HORIZONTAL && gEntityInfo[var_r6].id <= ENTITY_ID_GRATED_PLATFORM)
                                {
                                    if ((gEntityInfo[var_r6].unk8.split.unk8 < (gEntityInfo[var_r6].unk8.split.unk9 - 0xA)) && (gEntityInfo[var_r6].unk8.split.unk8 != 0))
                                    {
                                        if (gEntityInfo[var_r6].unkC_4 == 0)
                                        {
                                            gEntityInfo[slot].xPosBg2 += 1;
                                            if (gUnk_03005220.unk3F == slot)
                                            {
                                                gUnk_03005220.unk56 = 1;
                                            }
                                        }
                                        else
                                        {
                                            gEntityInfo[slot].xPosBg2 -= 1;
                                            if (gUnk_03005220.unk3F == slot)
                                            {
                                                gUnk_03005220.unk56 = -1;
                                            }
                                        }
                                    }
                                    else
                                    {
                                        if (gUnk_03005220.unk3F == slot)
                                        {
                                            gUnk_03005220.unk56 = 0;
                                        }
                                    }
                                }
                                if (gEntityInfo[var_r6].id == ENTITY_ID_BLUE_DISAPPEARING_PLATFORM)
                                {
                                    gEntityInfo[slot].unkF = 0;
                                }
                                else
                                {
                                    gEntityInfo[slot].unkF = 1;
                                    gEntityInfo[slot].unk18 = var_r6;
                                }
                            }
                            else
                            {
                                if (gEntityInfo[slot].unkF == 1)
                                {
                                    if (gEntityInfo[slot].unk18 == var_r6)
                                    {
                                        gEntityInfo[slot].unkF = 0;
                                    }
                                }
                            }
                            break;

                        case ENTITY_ID_RED_ARROW:
                        case ENTITY_ID_BLUE_ARROW:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 3)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 3)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < (gEntityInfo[var_r6].yPosBg2 - 0xC)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x14)))
                            {
                                if (gEntityInfo[var_r6].unkC_4 == 3)
                                {
                                    gEntityInfo[slot].unkF = 0x10;
                                }
                                else if (gEntityInfo[var_r6].unkC_4 == 1)
                                {
                                    gEntityInfo[slot].unkF = 0x11;
                                }
                                else if (gEntityInfo[var_r6].unkC_4 == 0)
                                {
                                    gEntityInfo[slot].unkF = 0xF;
                                }
                                else
                                {
                                    gEntityInfo[slot].unkF = 0xE;
                                }
                                m4aSongNumStart(SE_ARROW_BOUNCE);
                            }
                            break;

                        case ENTITY_ID_WATER:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x20)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x20)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1B)))
                            {
                                sp8 = gEntityInfo[var_r6].yPosBg2 - 0x18;
                                gEntityInfo[slot].unkF = 1;
                                gEntityInfo[slot].unk18 = var_r6;
                                gEntityInfo[slot].unk17 = 0;
                            }
                            break;

                        case ENTITY_ID_SCALE_2:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > ((gEntityInfo[var_r6].xPosBg2 + 0xC) - 0x18)))
                            {
                                if (((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 8)))
                                {
                                    sp8 = gEntityInfo[var_r6].yPosBg2 + -0x8;
                                    gEntityInfo[slot].unkF = 1;
                                    gEntityInfo[slot].unk18 = var_r6;
                                    gEntityInfo[slot].unk17 = 0;
                                }
                            }
                            break;

                        case ENTITY_ID_GROWN_BLOCK:
                        case ENTITY_ID_EXPLODABLE_BLOCK:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && ((gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20))))
                            {
                                if (((sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                    ((sp4 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                                {
                                    break;
                                }
                                sp8 = gEntityInfo[var_r6].yPosBg2 + -0x20;
                                gEntityInfo[slot].unkF = 0;
                                gEntityInfo[slot].unk17 = 0;
                            }
                            break;
                    }
                }

                gEntityInfo[slot].yPosBg2 = sp8;
                if (gUnk_03005220.unk3F == slot)
                {
                    gUnk_03005220.unk57 = gEntityInfo[slot].yPosBg2 - sp4;
                }

                if (sp4 != gEntityInfo[slot].yPosBg2)
                {
                    if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[0].xPosBg2 - 0xC)) &&
                        ((gEntityInfo[slot].yPosBg2 - 4) < (gEntityInfo[0].yPosBg2 - 0x14)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[0].yPosBg2 - 0x18)))
                    {
                        if ((gUnk_03005220.unk39 == 0) && (gEntityInfo[slot].unk12 == 0) && (gEntityInfo[slot].unkF != 1))
                        {
                            gEntityInfo[slot].yPosBg2 = gEntityInfo[0].yPosBg2 - 0x18;
                            gEntityInfo[slot].unk17 = 0;
                        }
                    }
                }
            }
            break;

        case 19:
            if (Abs(gEntityInfo[0].xPosBg2 - (gEntityInfo[slot].xPosBg2 - 4)) <= 7)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0].xPosBg2 + 4;
                if (Abs((gEntityInfo[0].yPosBg2 - gEntityInfo[slot].yPosBg2) - 0x18) <= 7)
                {
                    gUnk_03005220.unk43 = 1;
                    gUnk_03005220.unk55 = 0;
                    gUnk_03005220.unk54 = 0;
                    gEntityInfo[slot].yPosBg2 = gEntityInfo[0].yPosBg2 - 0x18;
                }
                else
                {
                    gEntityInfo[slot].yPosBg2 = gEntityInfo[slot].yPosBg2 + (((gEntityInfo[0].yPosBg2 - 0x18) - gEntityInfo[slot].yPosBg2) >> 1);
                }
            }
            else
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[slot].xPosBg2 + (((gEntityInfo[0].xPosBg2) - (gEntityInfo[slot].xPosBg2 - 4)) >> 2);
            }

            if (gUnk_03005220.unk43 == 0)
            {
                gUnk_03005220.unk54 += gEntityInfo[slot].xPosBg2 - sp0;
                gUnk_03005220.unk55 += gEntityInfo[slot].yPosBg2 - sp4;

                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 6) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x1E) >> 3) * gBgInfo[2].hLength)];

                var_r7 = max(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x1E) >> 3) * gBgInfo[2].hLength)]);

                for (var_r6 = gUnk_03003634; var_r6 <= gUnk_03005430; var_r6++)
                {
                    if (gEntityInfo[var_r6].unkF > 0x1A)
                    {
                        continue;
                    }
                    else if (gEntityInfo[var_r6].unkF == 0x19)
                    {
                        continue;
                    }

                    switch (gEntityInfo[var_r6].id)
                    {
                        case ENTITY_ID_MAGNET_BLOCK:
                        case ENTITY_ID_BOX:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                            {
                                if (slot != var_r6)
                                {
                                    var_r7 = gUnk_03004654->unk1A;
                                }
                            }
                            break;

                        case ENTITY_ID_SPIKER_HORIZONTAL:
                        case ENTITY_ID_SPIKER_VERTICAL:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && ((gEntityInfo[slot].yPosBg2 - 8) > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                            {
                                var_r7 = gUnk_03004654->unk1A;
                            }
                            break;

                        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                        case ENTITY_ID_GRATED_PLATFORM:
                        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
                            if (((gEntityInfo[slot].xPosBg2 - 0x12) < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 0xA) > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x1A) < (gEntityInfo[var_r6].yPosBg2 + 8)) && ((gEntityInfo[slot].yPosBg2 - 0x8) > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                            {
                                var_r7 = gUnk_03004654->unk1A;
                            }
                            break;

                        case ENTITY_ID_SCALE_2:
                                if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                    ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6 + 1].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 8)))
                                {
                                    var_r7 = gUnk_03004654->unk1A;
                                }
                            break;

                        case ENTITY_ID_SPRING:
                            if (gUnk_03003610[1].unk2 == slot)
                            {
                                SetEntityAnimationInfoState(var_r6, 0);
                                gUnk_03003610[1].unk2 = 0;
                            }
                            break;

                        case ENTITY_ID_GROWN_BLOCK:
                        case ENTITY_ID_EXPLODABLE_BLOCK:
                                if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                    ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                                {
                                    var_r7 = gUnk_03004654->unk1A;
                                }
                            break;
                    }
                }

                if (gUnk_03004654->unk1A <= var_r7)
                {
                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 9, 0);
                    gEntityInfo[slot].xPosBg2 -= gUnk_03005220.unk54;
                    gEntityInfo[slot].yPosBg2 -= gUnk_03005220.unk55;
                    gUnk_03005220.unk55 = 0;
                    gUnk_03005220.unk54 = 0;
                    gEntityInfo[slot].unkF = 0;
                    m4aSongNumStart(0xA4);
                    sub_080145A8(1);

                    if ((gUnk_03000824 != 0) && (gUnk_03005424 != 0))
                    {
                        for (var_r6 = gUnk_03000824; var_r6 <= gUnk_03005424; var_r6++)
                        {
                            if (gEntityInfo[var_r6].unkF <= 0x1A)
                            {
                                if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x20)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x20)) &&
                                    ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1B)))
                                {
                                    gEntityInfo[slot].yPosBg2 = gEntityInfo[var_r6].yPosBg2 - 0x1B;
                                    gEntityInfo[slot].yPosBg2 = gEntityInfo[slot].yPosBg2 + 3;
                                    gEntityInfo[slot].unkF = 1;
                                    gEntityInfo[slot].unk18 = var_r6;
                                    gEntityInfo[slot].unk17 = 0;
                                }
                            }
                        }
                    }
                }
            }
            break;

        case 16:
        case 17:
            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > ((gEntityInfo[0].xPosBg2 + 0xC) - 0x18)) &&
                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[0].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[0].yPosBg2 - 0x14)))
            {
                if (gEntityInfo[slot].unk16 == 0)
                {
                    gEntityInfo[slot].unkF = 0;
                    m4aSongNumStart(SE_OBJECT_LANDS);
                    break;
                }
            }
            else
            {
                if (gEntityInfo[slot].unk16 != 0)
                {
                    gEntityInfo[slot].unk16 -= 1;
                }
            }
        case 21:
        case 22:
            if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
            {
                if (gEntityInfo[slot].unkF == 0x10)
                {
                    sp8 = 2;
                }
                else
                {
                    sp8 = 3;
                }
                gEntityInfo[slot].xPosBg2 += sp8;
                if (gUnk_03005220.unk3F == slot)
                {
                    gUnk_03005220.unk56 = sp8;
                    gUnk_03005220.unk57 = 0;
                }
                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 8) >> 3) + (((gEntityInfo[slot].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];

                var_r7 = max(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 8) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)]);

                var_r7 = max(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 8) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x1C) >> 3) * gBgInfo[2].hLength)]);
            }
            else
            {
                if (gEntityInfo[slot].unkF == 0x11)
                {
                    sp8 = 2;
                }
                else
                {
                    sp8 = 3;
                }
                gEntityInfo[slot].xPosBg2 -= sp8;
                if (gUnk_03005220.unk3F == slot)
                {
                    gUnk_03005220.unk56 = -sp8;
                    gUnk_03005220.unk57 = 0;
                }
                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0x10) >> 3) + (((gEntityInfo[slot].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];

                var_r7 = max(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0x10) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)]);

                var_r7 = max(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0x10) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x1C) >> 3) * gBgInfo[2].hLength)]);
            }

            if ((gUnk_03004654->unk18 <= var_r7) || ((gUnk_03004654->unk1 <= var_r7) && (gUnk_03004654->unk14 >= var_r7) && (gUnk_03004C20.levelHasWarpDoors == 0)))
            {
                gEntityInfo[slot].xPosBg2 = sp0;
                if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                {
                    gEntityInfo[slot].xPosBg2 = (sp0 + 4) & ~7;
                }
                else
                {
                    gEntityInfo[slot].xPosBg2 = sp0 & ~7;
                }
                gEntityInfo[slot].unkF = 0;
                m4aSongNumStart(SE_OBJECT_LANDS);
                break;
            }

            sp8 = gEntityInfo[slot].xPosBg2;

            for (var_r6 = gUnk_030034D8; var_r6 <= gUnk_0300541C; var_r6++)
            {
                if ((gEntityInfo[var_r6].unkF <= 0x1A) && (gEntityInfo[var_r6].unkF != 0x19))
                {
                    switch (gEntityInfo[var_r6].id)
                    {
                        case ENTITY_ID_MAGNET_BLOCK:
                        case ENTITY_ID_BOX:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 -0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                            {
                                if (slot != var_r6)
                                {
                                    if (gEntityInfo[slot].unkF == 21 || gEntityInfo[slot].unkF == 16)
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 - 0x18;
                                    }
                                    else if (gEntityInfo[slot].unkF == 22 || gEntityInfo[slot].unkF == 17)
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x18;
                                    }
                                    gEntityInfo[slot].unkF = 0;
                                    m4aSongNumStart(SE_OBJECT_LANDS);
                                }
                            }
                            break;

                        case ENTITY_ID_SPIKER_HORIZONTAL:
                        case ENTITY_ID_SPIKER_VERTICAL:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                            {
                                if (gEntityInfo[slot].yPosBg2 < (gEntityInfo[var_r6].yPosBg2 - 0x16))
                                {
                                    gEntityInfo[slot].yPosBg2 = gEntityInfo[var_r6].yPosBg2 - 0x19;
                                }
                                else
                                {
                                    if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                                    {
                                        if ((gEntityInfo[slot].xPosBg2 + 4) <= (gEntityInfo[var_r6].xPosBg2 - 0xC))
                                        {
                                            sp8 = gEntityInfo[var_r6].xPosBg2 + -0x14;
                                            gEntityInfo[slot].unkF = 0;
                                            m4aSongNumStart(SE_OBJECT_LANDS);
                                        }
                                    }
                                    else if ((gEntityInfo[slot].xPosBg2 - 0xC) >= (gEntityInfo[var_r6].xPosBg2 + 0xC))
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x1C;
                                        gEntityInfo[slot].unkF = 0;
                                        m4aSongNumStart(SE_OBJECT_LANDS);
                                    }
                                }
                            }
                            break;

                        case ENTITY_ID_MOON_DOOR:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                            {
                                if (gEntityAnimationInfo[var_r6 - gUnk_0300363C].state == 0)
                                {
                                    if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + -0x18;
                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x20;
                                    }
                                    gEntityInfo[slot].unkF = 0;
                                    m4aSongNumStart(SE_OBJECT_LANDS);
                                }
                            }
                            break;

                        case ENTITY_ID_WATER_SWITCH:
                        case ENTITY_ID_GATE_SWITCH:
                            if (gEntityInfo[var_r6 + 1].unk8.split.unk8 != 0)
                            {
                                break;
                            }
                            /* fallthrough */
                        case ENTITY_ID_ROTATION_SWITCH:
                        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                            {
                                if (((sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) &&
                                    ((sp4 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                                {
                                    break;
                                }
                                sub_0801EAA4(var_r6);
                            }
                            break;

                        case ENTITY_ID_GATE:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 8)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 8)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                            {
                                if (((sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 8)) && ((sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 8)) &&
                                    ((sp4 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                                {
                                    break;
                                }

                                if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                                {
                                    sp8 = gEntityInfo[var_r6].xPosBg2 - 0x10;
                                }
                                else
                                {
                                    sp8 = gEntityInfo[var_r6].xPosBg2 + 0x18;
                                }
                                gEntityInfo[slot].unkF = 0;
                                m4aSongNumStart(SE_OBJECT_LANDS);
                            }
                            break;

                        case ENTITY_ID_KEY_DOOR:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                            {
                                if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                                {
                                    sp8 = gEntityInfo[var_r6].xPosBg2 - 0x18;
                                }
                                else
                                {
                                    sp8 = gEntityInfo[var_r6].xPosBg2 + 0x20;
                                }
                                gEntityInfo[slot].unkF = 0;
                                m4aSongNumStart(SE_OBJECT_LANDS);
                            }
                            break;

                        case ENTITY_ID_ONE_WAY_GATE:
                            if (gEntityInfo[var_r6].unkC_2 == 1)
                            {
                                var_r7_3 = 8;
                            }
                            else
                            {
                                var_r7_3 = 0;
                            }
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + var_r7_3)) && ((gEntityInfo[slot].xPosBg2 + 7) > ((gEntityInfo[var_r6].xPosBg2 - 8) + var_r7_3)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                            {
                                if (gEntityInfo[var_r6].unkC_4 == 0)
                                {
                                    if (((gEntityInfo[slot].unkF == 0x15) && (gEntityInfo[var_r6].unkC_2 == 0)) || ((gEntityInfo[slot].unkF == 0x16) && (gEntityInfo[var_r6].unkC_2 == 1)))
                                    {
                                        DmaCopy16(3, &gUnk_080B9368, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_r6 - 0xD].tileNum * 0x20), 0x100);
                                        gEntityInfo[var_r6].unkC_4 = 1;
                                        m4aSongNumStart(SE_ONE_WAY_GATE_OPEN);
                                    }
                                    else
                                    {
                                        if (gEntityInfo[slot].unkF == 0x15)
                                        {
                                            sp8 = gEntityInfo[var_r6].xPosBg2 + -0x8;
                                        }
                                        else
                                        {
                                            sp8 = gEntityInfo[var_r6].xPosBg2 + 0x10;
                                        }
                                        gEntityInfo[slot].unkF = 0;
                                        m4aSongNumStart(SE_OBJECT_LANDS);
                                    }
                                }
                            }
                            else
                            {
                                if (gEntityInfo[var_r6].unkC_4 == 1)
                                {
                                    if (gUnk_03005220.oneWayGateOpen == 0)
                                    {
                                        DmaCopy16(3, &gUnk_08062148, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_r6 - 0xD].tileNum << 5), 0x100);
                                        gEntityInfo[var_r6].unkC_4 = 0;
                                    }
                                }
                            }
                            break;

                        case ENTITY_ID_SPRING:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                            {
                                if (gEntityAnimationInfo[var_r6 - gUnk_0300363C].state == 0)
                                {
                                    if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + -0x14;
                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x1C;
                                    }
                                    gEntityInfo[slot].unkF = 0;
                                    m4aSongNumStart(SE_OBJECT_LANDS);
                                }
                            }
                            break;

                        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
                        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                        case ENTITY_ID_GRATED_PLATFORM:
                        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                            {
                                if (gEntityInfo[slot].yPosBg2 < (gEntityInfo[var_r6].yPosBg2 - 0xA))
                                {
                                    gEntityInfo[slot].yPosBg2 = gEntityInfo[var_r6].yPosBg2 - 0x10;
                                }
                                else if ((gEntityInfo[slot].yPosBg2 - 0x16) > gEntityInfo[var_r6].yPosBg2)
                                {
                                    gEntityInfo[slot].unkF = 0;
                                    m4aSongNumStart(SE_OBJECT_LANDS);
                                }
                                else
                                {
                                    if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + -0x18;
                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].xPosBg2 + 0x20;
                                    }
                                    gEntityInfo[slot].unkF = 0;
                                    m4aSongNumStart(SE_OBJECT_LANDS);
                                }
                            }
                            break;

                        case ENTITY_ID_RED_ARROW:
                        case ENTITY_ID_BLUE_ARROW:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 3)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 3)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < (gEntityInfo[var_r6].yPosBg2 - 0xC)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x14)))
                            {
                                if (gEntityInfo[var_r6].unkC_4 == 3)
                                {
                                    gEntityInfo[slot].unkF = 0x10;
                                }
                                else if (gEntityInfo[var_r6].unkC_4 == 1)
                                {
                                    gEntityInfo[slot].unkF = 0x11;
                                }
                                else if (gEntityInfo[var_r6].unkC_4 == 0)
                                {
                                    gEntityInfo[slot].unkF = 0xF;
                                }
                                else
                                {
                                    gEntityInfo[slot].unkF = 0xE;
                                }
                                m4aSongNumStart(SE_ARROW_BOUNCE);
                            }
                            break;

                        case ENTITY_ID_SCALE_2:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6 + 1].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 8)))
                            {
                                if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                                {
                                    sp8 = gEntityInfo[var_r6].xPosBg2 + -0x14;
                                }
                                else
                                {
                                    sp8 = gEntityInfo[var_r6].xPosBg2 + 0x1C;
                                }
                                gEntityInfo[slot].unkF = 0;
                                m4aSongNumStart(SE_OBJECT_LANDS);
                            }
                            break;

                        case ENTITY_ID_GROWN_BLOCK:
                        case ENTITY_ID_EXPLODABLE_BLOCK:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                            {
                                if (((sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                    ((sp4 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                                {
                                    break;
                                }

                                if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
                                {
                                    sp8 = gEntityInfo[var_r6].xPosBg2 + -0x18;
                                }
                                else
                                {
                                    sp8 = gEntityInfo[var_r6].xPosBg2 + 0x20;
                                }
                                gEntityInfo[slot].unkF = 0;
                                m4aSongNumStart(SE_OBJECT_LANDS);
                            }
                            break;
                    }
                }
            }

            gEntityInfo[slot].xPosBg2 = sp8;
            break;

        case 15:
            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[0].xPosBg2 - 0xC)) &&
                ((gEntityInfo[slot].yPosBg2 - 0x18) < (gEntityInfo[0].yPosBg2 - 0x10)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[0].yPosBg2 - 0x1B)))
            {
                gEntityInfo[slot].yPosBg2 = gEntityInfo[0].yPosBg2 - 0x18;
                gEntityInfo[slot].unkF = 0;
                m4aSongNumStart(SE_OBJECT_LANDS);
                break;
            }
            /* fallthrough */
        case 14:
        case 23:
            gEntityInfo[slot].unk16 = 0;
            if (gEntityInfo[slot].unkF == 0xE)
            {
                gEntityInfo[slot].yPosBg2 -= 2;
                if (gUnk_03005220.unk3F == slot)
                {
                    gUnk_03005220.unk57 = -2;
                    gUnk_03005220.unk56 = 0;
                }
                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 6) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x18) >> 3) * gBgInfo[2].hLength)];

                var_r7 = max(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x18) >> 3) * gBgInfo[2].hLength)]);
            }
            else
            {
                if (gEntityInfo[slot].unkF == 0xF)
                {
                    sp8 = 2;
                }
                else
                {
                    if (gEntityInfo[slot].unk12 == 0)
                    {
                        sp8 = 3;
                    }
                    else
                    {
                        sp8 = 1;
                    }
                }
                gEntityInfo[slot].yPosBg2 += sp8;
                if (gUnk_03005220.unk3F == slot)
                {
                    gUnk_03005220.unk57 = sp8;
                    gUnk_03005220.unk56 = 0;
                }
                var_r7 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 6) >> 3) + (((gEntityInfo[slot].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)];

                var_r7 = max(var_r7, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[slot].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)]);
            }

            if ((gUnk_03004654->unk18 <= var_r7) || ((gUnk_03004654->unk1 <= var_r7) && (gUnk_03004654->unk14 >= var_r7) && (gUnk_03004C20.levelHasWarpDoors == 0)))
            {
                if ((gUnk_03000824 != 0) && (gUnk_03005424 != 0))
                {
                    for (var_r6 = gUnk_03000824; var_r6 <= gUnk_03005424; var_r6++)
                    {
                        if ((gEntityInfo[var_r6].unkF <= 0x1A))
                        {
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x20)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x20)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1B)))
                            {
                                gEntityInfo[slot].yPosBg2 = gEntityInfo[var_r6].yPosBg2 - 0x18;
                                gEntityInfo[slot].unkF = 1;
                                gEntityInfo[slot].unk18 = var_r6;
                                return;
                            }
                        }
                    }
                }
                gEntityInfo[slot].yPosBg2 = sp4 + 3;
                gEntityInfo[slot].yPosBg2 &= ~0x7;
                gEntityInfo[slot].unkF = 0;
                m4aSongNumStart(SE_OBJECT_LANDS);
                if (gUnk_03005220.unk3F == slot)
                {
                    gEntityInfo[gUnk_03005220.unk3F].yPosBg2 += 3;
                }
            }
            else
            {
                sp8 = gEntityInfo[slot].yPosBg2;

                for (var_r6 = gUnk_03003630; var_r6 <= gUnk_03004674; var_r6++)
                {
                    if (gEntityInfo[var_r6].unkF > 0x1A)
                    {
                        continue;
                    }
                    else if (gEntityInfo[var_r6].unkF == 0x19)
                    {
                        continue;
                    }

                    switch (gEntityInfo[var_r6].id)
                    {
                        case ENTITY_ID_MAGNET_BLOCK:
                        case ENTITY_ID_BOX:
                            if (((gEntityInfo[slot].xPosBg2 - 0x10) < (gEntityInfo[var_r6].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0x8) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1B)))
                            {
                                if (slot != var_r6)
                                {
                                    if (gEntityInfo[slot].unkF == 0xE)
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 + 0x18;
                                    }
                                    else
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 - 0x18;
                                    }
                                    gEntityInfo[slot].unkF = 0;
                                    m4aSongNumStart(SE_OBJECT_LANDS);
                                }
                            }
                            break;

                        case ENTITY_ID_SPIKER_HORIZONTAL:
                        case ENTITY_ID_SPIKER_VERTICAL:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1B)))
                            {
                                if (gEntityInfo[slot].unkF == 0xE)
                                {
                                    sp8 = gEntityInfo[var_r6].yPosBg2 + 0x18;
                                }
                                else
                                {
                                    sp8 = gEntityInfo[var_r6].yPosBg2 + -0x17;
                                }
                                gEntityInfo[slot].unkF = 0;
                                m4aSongNumStart(SE_OBJECT_LANDS);
                            }
                            break;

                        case ENTITY_ID_MOON_DOOR:
                                if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                                    ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                                {
                                    if (gEntityAnimationInfo[var_r6 - gUnk_0300363C].state == 0)
                                    {
                                        if (gEntityInfo[slot].unkF == 0xE)
                                        {
                                            sp8 = gEntityInfo[var_r6].yPosBg2 + 0x20;
                                        }
                                        else
                                        {
                                            sp8 = gEntityInfo[var_r6].yPosBg2 - 0x20;
                                        }
                                        gEntityInfo[slot].unkF = 0;
                                        m4aSongNumStart(SE_OBJECT_LANDS);
                                    }
                                }
                            break;

                        case ENTITY_ID_WATER_SWITCH:
                        case ENTITY_ID_GATE_SWITCH:
                            if (gEntityInfo[var_r6 + 1].unk8.split.unk8 != 0)
                            {
                                break;
                            }
                            /* fallthrough */
                        case ENTITY_ID_ROTATION_SWITCH:
                        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                            {
                                if (((sp0 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 2)) && ((sp0 + 7) > (gEntityInfo[var_r6].xPosBg2 - 2)) &&
                                    ((sp4 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (sp4 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                                {
                                    break;
                                }
                                else
                                {
                                    sub_0801EAA4(var_r6);
                                }
                            }
                            break;

                        case ENTITY_ID_SPRING:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x19)))
                            {
                                sp8 = gEntityInfo[var_r6].yPosBg2 + -0x10;
                                gEntityInfo[slot].unkF = 0;
                                m4aSongNumStart(SE_OBJECT_LANDS);
                                SetEntityAnimationInfoState(var_r6, 2);
                                gUnk_03003610[1].unk2 = slot;
                            }
                            break;

                        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
                        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                        case ENTITY_ID_GRATED_PLATFORM:
                        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
                                if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                                    ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                                {
                                    if (gEntityInfo[slot].yPosBg2 <= (gEntityInfo[var_r6].yPosBg2 - 0xC))
                                    {
                                        sp8 = gEntityInfo[var_r6].yPosBg2 - 0x11;
                                        m4aSongNumStart(SE_OBJECT_LANDS);
                                        gEntityInfo[slot].unkF = 1;
                                        gEntityInfo[slot].unk18 = var_r6;
                                    }
                                }
                            break;

                        case ENTITY_ID_RED_ARROW:
                        case ENTITY_ID_BLUE_ARROW:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 3)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 3)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < (gEntityInfo[var_r6].yPosBg2 - 0xC)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x14)))
                            {
                                if (gEntityInfo[var_r6].unkC_4 == 3)
                                {
                                    gEntityInfo[slot].unkF = 0x10;
                                }
                                else if (gEntityInfo[var_r6].unkC_4 == 1)
                                {
                                    gEntityInfo[slot].unkF = 0x11;
                                }
                                else if (gEntityInfo[var_r6].unkC_4 == 0)
                                {
                                    gEntityInfo[slot].unkF = 0xF;
                                }
                                else
                                {
                                    gEntityInfo[slot].unkF = 0xE;
                                }
                                m4aSongNumStart(SE_ARROW_BOUNCE);
                            }
                            break;

                        case ENTITY_ID_SCALE_2:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 8)))
                            {
                                sp8 = gEntityInfo[var_r6].yPosBg2 - 9;
                                m4aSongNumStart(SE_OBJECT_LANDS);
                                // if (gEntityInfo[var_r6].id == ENTITY_ID_MOVING_PLATFORM_HORIZONTAL && gEntityInfo[var_r6].id == ENTITY_ID_GRATED_PLATFORM)
                                if (gEntityInfo[var_r6].id >= ENTITY_ID_MOVING_PLATFORM_HORIZONTAL && gEntityInfo[var_r6].id <= ENTITY_ID_GRATED_PLATFORM)
                                {
                                    gEntityInfo[slot].unkF = 0;
                                }
                                else
                                {
                                    gEntityInfo[slot].unkF = 1;
                                    gEntityInfo[slot].unk18 = var_r6;
                                }
                            }
                            break;

                        case ENTITY_ID_WATER:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0x20)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0x20)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x1D)))
                            {
                                sp8 = gEntityInfo[var_r6].yPosBg2 - 0x19;
                                gEntityInfo[slot].unkF = 1;
                                gEntityInfo[slot].unk18 = var_r6;
                            }
                            break;

                        case ENTITY_ID_GROWN_BLOCK:
                        case ENTITY_ID_EXPLODABLE_BLOCK:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                            {
                                sp8 = gEntityInfo[var_r6].yPosBg2 + -0x20;
                                gEntityInfo[slot].unkF = 0;
                                m4aSongNumStart(SE_OBJECT_LANDS);
                            }
                            break;
                    }
                }
                gEntityInfo[slot].yPosBg2 = sp8;
            }
            break;

        case 27:
            if (!(gUnk_03004C20.globalFrameCounter & 7))
            {
                temp_r1_52 = 0x46 - gEntityInfo[slot].unk8.split.unk9;
                var_r5_2 = 0;
                var_r4_2 = 0;
                if (gEntityInfo[slot].unk8.split.unk8 == 2)
                {
                    sp0 = gEntityInfo[slot].xPosBg2 - 4;
                    sp4 = gEntityInfo[slot].yPosBg2 - temp_r1_52;
                    var_r5_2 = 5;
                }
                else if (gEntityInfo[slot].unk8.split.unk8 == 3)
                {
                    sp0 = gEntityInfo[slot].xPosBg2;
                    sp4 = gEntityInfo[slot].yPosBg2 + temp_r1_52;
                    var_r5_2 = 5;
                }
                else if (gEntityInfo[slot].unk8.split.unk8 == 4)
                {
                    sp0 = gEntityInfo[slot].xPosBg2 + temp_r1_52;
                    sp4 = gEntityInfo[slot].yPosBg2;
                    var_r4_2 = 5;
                }
                else if (gEntityInfo[slot].unk8.split.unk8 == 5)
                {
                    sp0 = gEntityInfo[slot].xPosBg2 - temp_r1_52;
                    sp4 = gEntityInfo[slot].yPosBg2;
                    var_r4_2 = 5;
                }
                sub_0801E664(sp0 - var_r4_2, sp4 - var_r5_2 + 4, 6, 0);
                sub_0801E664(sp0 + var_r4_2, sp4 + var_r5_2 + 4, 6, 0);
            }
            gEntityInfo[slot].unk8.split.unk9 -= 1;
            if (gEntityInfo[slot].unk8.split.unk9 == 0)
            {
                gEntityInfo[slot].unkF = 0x1C;
            }
            break;

        case 11:
        case 12:
        case 13:
            sp4 = 0;
            if (gEntityInfo[slot].unkF == 0xB)
            {
                sp0 = 0xC;
            }
            else if (gEntityInfo[slot].unkF == 0xC)
            {
                sp0 = -0xC;
            }
            else
            {
                sp0 = 0;
                sp4 = 0x14;
            }
            
            if (((u16) (gEntityInfo[slot].xPosBg2 + sp0 - 0xF) < (gEntityInfo[gEntityInfo[slot].unk8.split.unk8].xPosBg2 + 7)) && ((u16) (gEntityInfo[slot].xPosBg2 + sp0 + 7) > (gEntityInfo[gEntityInfo[slot].unk8.split.unk8].xPosBg2 - 0xF)) &&
                ((u16) (gEntityInfo[slot].yPosBg2 + sp4 - 0x18) < gEntityInfo[gEntityInfo[slot].unk8.split.unk8].yPosBg2) && ((u16) (gEntityInfo[slot].yPosBg2 + sp4 + 0) > (gEntityInfo[gEntityInfo[slot].unk8.split.unk8].yPosBg2 - 0x18)))
            {
                break;
            }
            gEntityInfo[slot].unkF = 0;
            break;

        case 7:
        case 8:
        case 9:
            sp4 = 0;
            if (gEntityInfo[slot].unkF == 8)
            {
                sp0 = 0xC;
            }
            else if (gEntityInfo[slot].unkF == 9)
            {
                sp0 = -0xC;
            }
            else
            {
                sp0 = 0;
                sp4 = -0x18;
            }

            if (((u16) (gEntityInfo[slot].xPosBg2 + sp0 - 0xE) < (gEntityInfo[gEntityInfo[slot].unk8.split.unk8].xPosBg2 + 7)) && ((u16) (gEntityInfo[slot].xPosBg2 + sp0 + 6) > (gEntityInfo[gEntityInfo[slot].unk8.split.unk8].xPosBg2 - 0xF)) &&
                ((u16) (gEntityInfo[slot].yPosBg2 + sp4 - 0x17) < gEntityInfo[gEntityInfo[slot].unk8.split.unk8].yPosBg2) && ((u16) (gEntityInfo[slot].yPosBg2 + sp4 - 1) > (gEntityInfo[gEntityInfo[slot].unk8.split.unk8].yPosBg2 - 0x18)))
            {
                break;
            }
            gEntityInfo[slot].unkF = 0;
            break;
    }
}

// 16EEC
void sub_08016EEC(u8 slot)
{
    // Called by ENTITY_ID_SPIKER_HORIZONTAL, ENTITY_ID_SPIKER_VERTICAL, ENTITY_ID_MOO_BOARDER, ENTITY_ID_MOO, ENTITY_ID_FLYING_MOO_HORIZONTAL, ENTITY_ID_FLYING_MOO_VERTICAL,
    // ENTITY_ID_GLIBZ_QUAD_CANNON, ENTITY_ID_TETON, ENTITY_ID_BOOMIE, ENTITY_ID_FLYING_BOOMIE_HORIZONTAL, ENTITY_ID_FLYING_BOOMIE_VERTICAL
    // Seemingly, common/normal enemies
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

    sp2C = gEntityInfo[slot].xPosBg2;
    sp30 = gEntityInfo[slot].yPosBg2;
    sp34 = 0;

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                gEntityInfo[slot].unk8.split.unk8 -= 1;
                if (gEntityInfo[slot].unk8.split.unk8 == 0)
                {
                    gEntityInfo[slot].visible = 1;
                    if ((gEntityInfo[slot].id == ENTITY_ID_MOO) || (gEntityInfo[slot].id == ENTITY_ID_BOOMIE))
                    {
                        SetEntityAnimationInfoState(slot, 1);
                    }
                    else
                    {
                        SetEntityAnimationInfoState(slot, 0);
                    }
                    gEntityInfo[slot].unkF = 0;
                }
            }
            else
            {
                if (gUnk_03004C20.level == 8)
                {
                    if (gUnk_03005400.unkC == 0)
                    {
                        gEntityInfo[slot].unkF = 0x1C;
                        return;
                    }
                    else if (gUnk_03004C20.world == 2)
                    {
                        gEntityInfo[slot].unkF = 0x1C;
                        return;
                    }
                    else if (gUnk_03004C20.world == 4)
                    {
                        gEntityInfo[slot].unkF = 0x1C;
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

                gEntityInfo[slot].xPosScreen = gEntityInfo[slot].xPosBg2 - gBgInfo[2].hOfs;
                gEntityInfo[slot].yPosScreen = gEntityInfo[slot].yPosBg2 - gBgInfo[2].vOfs;
                if ((gUnk_03004C20.level == 8) || (((u16) (gEntityInfo[slot].xPosScreen - 0x113) > (u16)(-0x137)) && ((u16) (gEntityInfo[slot].yPosScreen - 0xE0) > (u16)(-0x104))))
                {
                    sub_0801E664(sp2C, sp30, 1, slot);
                    gEntityInfo[slot].unk8.split.unk8 = 0x5A;
                }
            }
            break;

        case 0:
            if ((gEntityInfo[slot].id == ENTITY_ID_MOO) || (gEntityInfo[slot].id == ENTITY_ID_BOOMIE))
            {
                if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                {
                    if (gEntityInfo[slot].unkC_2 == 0)
                    {
                        gEntityInfo[slot].xPosBg2 += 1;
                        sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 0xC) >> 3) + (((gEntityInfo[slot].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                    }
                    else
                    {
                        gEntityInfo[slot].xPosBg2 -= 1;
                        sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xC) >> 3) + (((gEntityInfo[slot].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                    }
                    
                    if (gEntityInfo[slot].unk8.split.unk9 == 2)
                    {
                        if (gEntityInfo[slot].unkC_2 == 0)
                        {
                            if (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 4) >> 3) + (((gEntityInfo[slot].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)] < gUnk_03004654->unk0)
                            {
                                gEntityInfo[slot].unk8.split.unk9 = 3;
                                SetEntityAnimationInfoState(slot, 0);
                                return;
                            }
                        }
                        else
                        {
                            if (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 4) >> 3) + (((gEntityInfo[slot].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)] < gUnk_03004654->unk0)
                            {
                                gEntityInfo[slot].unk8.split.unk9 = 3;
                                SetEntityAnimationInfoState(slot, 0);
                                return;
                            }
                        }
                    }
                    else if (gEntityInfo[slot].unk8.split.unk9 == 3)
                    {
                        if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 0)
                        {
                            gEntityInfo[slot].xPosBg2 = sp2C;
                        }
                        else
                        {
                            gEntityInfo[slot].unkC_2 ^= 1;
                            gEntityInfo[slot].unk8.split.unk9 = 2;
                        }
                    }
                }
            }
            else if (gEntityInfo[slot].id == ENTITY_ID_FLYING_MOO_HORIZONTAL || gEntityInfo[slot].id == ENTITY_ID_SPIKER_HORIZONTAL || gEntityInfo[slot].id == ENTITY_ID_FLYING_BOOMIE_HORIZONTAL)
            {
                if (gEntityInfo[slot].unkD_6 == 0)
                {
                    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                    {
                        if ((gEntityInfo[slot].id == ENTITY_ID_FLYING_MOO_HORIZONTAL) || (gEntityInfo[slot].id == ENTITY_ID_FLYING_BOOMIE_HORIZONTAL))
                        {
                            if (gEntityInfo[slot].unkC_2 == 0)
                            {
                                gEntityInfo[slot].xPosBg2 += 1;
                            }
                            else
                            {
                                gEntityInfo[slot].xPosBg2 -= 1;
                            }
                        }
                        else
                        {
                            if (gEntityInfo[slot].unkC_4 == 0)
                            {
                                gEntityInfo[slot].xPosBg2 += 1;
                            }
                            else
                            {
                                gEntityInfo[slot].xPosBg2 -= 1;
                            }
                        }
                    }

                    gEntityInfo[slot].unk8.split.unk9 -= 1;
                    if (gEntityInfo[slot].unk8.split.unk9 == 0)
                    {
                        if ((gEntityInfo[slot].id == ENTITY_ID_FLYING_MOO_HORIZONTAL) || (gEntityInfo[slot].id == ENTITY_ID_FLYING_BOOMIE_HORIZONTAL))
                        {
                            gEntityInfo[slot].unkC_2 ^= 1;
                        }
                        else
                        {
                            gEntityInfo[slot].unkC_4 ^= 1;
                        }
                        gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                    }
                }
            }
            else if (gEntityInfo[slot].id == ENTITY_ID_GLIBZ_QUAD_CANNON)
            {
                gEntityInfo[slot].yPosBg2 += 2;
                sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 4) >> 3) + (((gEntityInfo[slot].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)];
                if (gUnk_03004654->unk1A <= sp34)
                {
                    gEntityInfo[slot].yPosBg2 = (sp30 + 3);
                    gEntityInfo[slot].yPosBg2 &= ~0x7;
                    if (gEntityInfo[slot].unk8.split.unk8 == 0)
                    {
                        gEntityInfo[slot].unk8.split.unk8 = 0xC8;
                    }
                    else
                    {
                        if ((gEntityInfo[slot].unkC_4 == 2) && (gEntityInfo[slot].unk8.split.unk8 > 0x64))
                        {
                            if (gEntityInfo[0].xPosBg2 < gEntityInfo[slot].xPosBg2)
                            {
                                gEntityInfo[slot].unkC_2 = 1;
                            }
                            else
                            {
                                gEntityInfo[slot].unkC_2 = 0;
                            }
                        }

                        if (((u16) (gEntityInfo[slot].xPosScreen - 0x113) > (u16)-0x137) && ((u16) (gEntityInfo[slot].yPosScreen - 0xE0) > (u16)-0x104))
                        {
                            var_sb = 0;
                            for (sp28 = 1; sp28 <= gEntityInfo[slot].unk8.split.unk9; sp28 += 1)
                            {
                                if (gEntityInfo[slot + sp28].unk8.split.unk8 == gEntityInfo[slot].unk8.split.unk8)
                                {
                                    SetEntityAnimationInfoState(slot, 2);
                                    if (gEntityInfo[slot].unkC_2 == 0)
                                    {
                                        gEntityInfo[slot + sp28].xPosBg2 = gEntityInfo[slot].xPosBg2 + 0xA;
                                    }
                                    else
                                    {
                                        gEntityInfo[slot + sp28].xPosBg2 = gEntityInfo[slot].xPosBg2 - 0xA;
                                    }

                                    gEntityInfo[slot + sp28].yPosBg2 = gEntityInfo[slot].yPosBg2 - 2;
                                    gEntityInfo[slot + sp28].unkF = 0;
                                    gEntityInfo[slot + sp28].visible = 1;
                                    gEntityInfo[slot + sp28].unkC_2 = gEntityInfo[slot].unkC_2;
                                    m4aSongNumStart(SE_GLIBZ_QUAD_CANNON_SHOT);
                                }
                                if (gEntityInfo[slot + sp28].visible == 1)
                                {
                                    var_sb = 1;
                                }
                            }

                            gEntityInfo[slot].unk8.split.unk8 -= 1;
                            if (gEntityInfo[slot].unk8.split.unk8 == 0)
                            {
                                if (var_sb != 0)
                                {
                                    gEntityInfo[slot].unk8.split.unk8 = 1;
                                }
                            }
                        }
                    }
                }
            }
            else if (gEntityInfo[slot].id != ENTITY_ID_MOO_BOARDER)
            {
                if (gEntityInfo[slot].unkD_6 == 0)
                {
                    if ((gEntityInfo[slot].id == ENTITY_ID_FLYING_MOO_VERTICAL) || (gEntityInfo[slot].id == ENTITY_ID_TETON) || (gEntityInfo[slot].id == ENTITY_ID_FLYING_BOOMIE_VERTICAL))
                    {
                        if (gEntityInfo[0].xPosBg2 < gEntityInfo[slot].xPosBg2)
                        {
                            gEntityInfo[slot].unkC_2 = 1;
                        }
                        else
                        {
                            gEntityInfo[slot].unkC_2 = 0;
                        }
                    }

                    if (gEntityInfo[slot].unk8.split.unk9 == 0)
                    {
                        gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + (COS((gUnk_03004C20.sceneFrameCounter % 0x80) * 2) >> 6);
                        gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + (SIN((gUnk_03004C20.sceneFrameCounter % 0x80) * 2) >> 6);
                    }
                    else
                    {
                        if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                        {
                            if (gEntityInfo[slot].unkC_4 == 0)
                            {
                                gEntityInfo[slot].yPosBg2 -= 1;
                            }
                            else
                            {
                                gEntityInfo[slot].yPosBg2 += 1;
                            }
                        }

                        gEntityInfo[slot].unk8.split.unk9 -= 1;
                        if (gEntityInfo[slot].unk8.split.unk9 == 0)
                        {
                            gEntityInfo[slot].unkC_4 ^= 1;
                            gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                        }
                    }
                }
            }
            else
            {
                if ((gEntityInfo[slot].xPosBg2 - 0xDC) < gEntityInfo[0].xPosBg2)
                {
                    if (gUnk_03004C20.level != 8)
                    {
                        if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                        {
                            if (gEntityInfo[slot].unkC_2 == 0)
                            {
                                gEntityInfo[slot].xPosBg2 += 1;
                            }
                            else
                            {
                                gEntityInfo[slot].xPosBg2 -= 1;
                            }
                            gEntityInfo[slot].yPosBg2 += 1;
                        }

                        sp0 = sub_08014184(gEntityInfo[slot].xPosBg2 + 8, gEntityInfo[slot].yPosBg2, 0x18);
                        if (sp0.unk0 != 0xFFFF)
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        else
                        {
                            sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 4) >> 3) + (((gEntityInfo[slot].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                        }

                        sp4 = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18);
                        if (sp4.unk0 != 0xFFFF)
                        {
                            sp30 = gEntityInfo[slot].yPosBg2 = sp4.unk0;
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
                        if (gEntityInfo[slot].unkC_2 == 0)
                        {
                            gEntityInfo[slot].xPosBg2 += 1;
                        }
                        else
                        {
                            gEntityInfo[slot].xPosBg2 -= 1;
                        }
                        gEntityInfo[slot].yPosBg2 += 1;
                    }

                    sp0 = sub_08014184(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18);
                    if (sp0.unk0 != 0xFFFF)
                    {
                        sp34 = gUnk_03004654->unk1B;
                    }
                    else
                    {
                        sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 4) >> 3) + (((gEntityInfo[slot].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                    }

                    spC = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18);
                    if (spC.unk0 != 0xFFFF)
                    {
                        sp30 = gEntityInfo[slot].yPosBg2 = spC.unk0;
                    }
                }
            }

            if (gEntityInfo[slot].unkD_6 == 1)
            {
                gEntityInfo[slot].unkD_6 = 2;
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

                switch (gEntityInfo[sp28].id)
                {
                    case ENTITY_ID_MAGNET_BLOCK:
                    case ENTITY_ID_BOX:
                        if (((gEntityInfo[slot].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x17)))
                        {
                            if ((gEntityInfo[slot].id != ENTITY_ID_SPIKER_HORIZONTAL) && (gEntityInfo[slot].id != ENTITY_ID_SPIKER_VERTICAL))
                            {
                                if (((sp2C - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((sp2C + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                                    ((sp30 - 0x18) < gEntityInfo[sp28].yPosBg2) && (sp30 > (gEntityInfo[sp28].yPosBg2 - 0x17)))
                                {
                                    m4aSongNumStart(SE_ENEMY_DEATH);
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                                    return;
                                }
                            }

                            if (gEntityInfo[slot].id == ENTITY_ID_SPIKER_VERTICAL)
                            {
                                if (gEntityInfo[slot].unkC_4 == 1)
                                {
                                    if (gEntityInfo[slot].yPosBg2 <= (gEntityInfo[sp28].yPosBg2 - 0x16))
                                    {
                                        sp34 = gUnk_03004654->unk1B;
                                    }
                                }
                                else
                                {
                                    if ((gEntityInfo[slot].yPosBg2 - 0x16) >= gEntityInfo[sp28].yPosBg2)
                                    {
                                        sp34 = gUnk_03004654->unk1B;
                                    }
                                }
                            }
                            else
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                        }

                        if ((gEntityInfo[slot].id == ENTITY_ID_SPIKER_HORIZONTAL) || (gEntityInfo[slot].id == ENTITY_ID_SPIKER_VERTICAL))
                        {
                            if (gEntityInfo[sp28].unkF == 0)
                            {
                                if (((gEntityInfo[slot].xPosBg2 - 0xB) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0xB) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                                    ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && ((gEntityInfo[slot].yPosBg2 - 0x14) > gEntityInfo[sp28].yPosBg2))
                                {
                                    gEntityInfo[slot].unkD_6 = 1;
                                }
                            }
                        }
                        break;

                    case ENTITY_ID_MOON_DOOR:   
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0)
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                        }
                        break;

                    case ENTITY_ID_GATE:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 8)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case ENTITY_ID_KEY_DOOR:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > ((gEntityInfo[sp28].xPosBg2 - 0x10))) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case ENTITY_ID_ONE_WAY_GATE:
                        if (gEntityInfo[sp28].unkC_2 == 1)
                        {
                            var_sb = 8;
                        }
                        else
                        {
                            var_sb = 0;
                        }
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + var_sb)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 8 + var_sb)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case ENTITY_ID_SPRING:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xC)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case ENTITY_ID_WATER:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x20)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x20)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x16)))
                        {
                            sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                            return;
                        }
                        break;

                    case ENTITY_ID_GROWN_BLOCK:
                    case ENTITY_ID_EXPLODABLE_BLOCK:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case 0x1E:
                        if (((gEntityInfo[slot].xPosBg2 - 4) < (gEntityInfo[sp28].xPosBg2 + 0x1E)) && ((gEntityInfo[slot].xPosBg2 + 4) > (gEntityInfo[sp28].xPosBg2 - 0x1E)))
                        {
                            if (gEntityInfo[sp28].unkF == 0)
                            {
                                gEntityInfo[slot].unkF = 0x1C;
                                gEntityInfo[slot].visible = 0;
                                gEntityInfo[slot + 3].xPosBg2 = gEntityInfo[slot].xPosBg2;
                                gEntityInfo[slot + 3].yPosBg2 = gEntityInfo[slot].yPosBg2;
                                gEntityInfo[slot + 3].unkC_2 = gEntityInfo[slot].unkC_2;
                                gEntityInfo[slot + 3].unkF = 0x11;
                            }
                        }
                        break;
                }                        
            }

            if ((gUnk_03004654->unk1A <= sp34) || ((gUnk_03004654->unk1 <= sp34) && (gUnk_03004654->unk14 >= sp34) && (gUnk_03004C20.levelHasWarpDoors == 0)))
            {
                if (gEntityInfo[slot].unkF != 0x14)
                {
                    if (gEntityInfo[slot].id == ENTITY_ID_MOO || gEntityInfo[slot].id == ENTITY_ID_BOOMIE)
                    {
                        gEntityInfo[slot].xPosBg2 = sp2C;
                        gEntityInfo[slot].unkC_2 ^= 1;
                    }
                    else if (gEntityInfo[slot].id == ENTITY_ID_MOO_BOARDER)
                    {
                        gEntityInfo[slot].xPosBg2 = sp2C;
                        gEntityInfo[slot].unkC_2 ^= 1;
                    }
                    else if (gEntityInfo[slot].id == ENTITY_ID_FLYING_MOO_HORIZONTAL || gEntityInfo[slot].id == ENTITY_ID_SPIKER_HORIZONTAL || gEntityInfo[slot].id == ENTITY_ID_FLYING_BOOMIE_HORIZONTAL)
                    {
                        temp_r6_4 = gEntityInfo[slot].unk8.split.unk9;
                        if (gEntityInfo[slot].unk8.split.unk9 < (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - 1))
                        {
                            gEntityInfo[slot].unk8.split.unk9 = (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - gEntityInfo[slot].unk8.split.unk9) - 1;

                            if (gEntityInfo[slot].id == ENTITY_ID_SPIKER_HORIZONTAL)
                            {
                                gEntityInfo[slot].unkC_4 ^= 1;
                                gEntityInfo[slot].xPosBg2 = sp2C;
                            }
                            else if (gEntityInfo[slot].unk8.split.unk9 > 5)
                            {
                                gEntityInfo[slot].unkC_2 ^= 1;
                                gEntityInfo[slot].xPosBg2 = sp2C;
                            }
                            else
                            {
                                gEntityInfo[slot].unk8.split.unk9 = temp_r6_4;
                                break;
                            }
                        }
                    }
                    else
                    {
                        if (gEntityInfo[slot].unk8.split.unk9 < (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - 1))
                        {
                            gEntityInfo[slot].yPosBg2 = sp30;
                            gEntityInfo[slot].unkC_4 ^= 1;
                            gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4 + ~gEntityInfo[slot].unk8.split.unk9;
                        }
                    }
                }
            }
            else
            {
                if ((gUnk_03004654->unk18 == sp34) || (gUnk_03004654->unk19 == sp34))
                {
                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                    break;
                }
            }

            if ((gEntityInfo[slot].id == ENTITY_ID_MOO) || (gEntityInfo[slot].id == ENTITY_ID_BOOMIE) || (gEntityInfo[slot].unkF == 0x14) || (gEntityInfo[slot].unkD_6 != 0))
            {
                if (gEntityInfo[slot].unkD_6 == 1)
                {
                    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                    {
                        gEntityInfo[slot].yPosBg2 += 1;
                    }
                }
                else if (gEntityInfo[slot].unkD_6 == 2)
                {
                    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
                    {
                        gEntityInfo[slot].yPosBg2 -= 1;
                        if (gEntityInfo[slot].yPosBg2 <= gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2)
                        {
                            if (gEntityInfo[slot].id == ENTITY_ID_SPIKER_VERTICAL)
                            {
                                gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                                gEntityInfo[slot].unkC_4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5;
                            }
                            gEntityInfo[slot].unkD_6 = 0;
                        }
                    }
                }
                else
                {
                    gEntityInfo[slot].yPosBg2 += 2;
                }

                sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[slot].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)];

                sp34 = max(sp34, gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + (((gEntityInfo[slot].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)]);

                sp34 = max(sp34, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[slot].yPosBg2 - 2) >> 3) * gBgInfo[2].hLength)]);

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

                    switch (gEntityInfo[sp28].id)
                    {
                        case ENTITY_ID_MAGNET_BLOCK:
                        case ENTITY_ID_BOX:
                            if (((gEntityInfo[slot].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                            {
                                if (gEntityInfo[slot].id >= ENTITY_ID_MOO)
                                {
                                    gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 - 0x19;
                                    return;
                                }

                                if (gEntityInfo[slot].yPosBg2 < (gEntityInfo[sp28].yPosBg2 - 0x17))
                                {
                                    gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 - 0x19;
                                }
                            }
                            break;

                        case ENTITY_ID_MOON_DOOR:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) && 
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                            {
                                if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0)
                                {
                                    sp34 = gUnk_03004654->unk1B;
                                }
                            }
                            break;

                        case ENTITY_ID_SPRING:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x10)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            break;

                        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
                            if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x10)))
                            {
                                gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 + -0x10;
                            }
                            break;

                        case ENTITY_ID_WATER:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x20)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x20)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x16)))
                            {
                                sp34 = gUnk_03004654->unk18;
                            }
                            break;

                        case ENTITY_ID_GROWN_BLOCK:
                        case ENTITY_ID_EXPLODABLE_BLOCK:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            break;

                        case ENTITY_ID_SCALE_2:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xC)) &&
                                (gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28 + 1].yPosBg2 && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 8)))
                            {
                                if (gEntityInfo[slot].id <= ENTITY_ID_TETON)
                                {
                                    sp34 = gUnk_03004654->unk1B;
                                }
                                else
                                {
                                    gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 + -8;
                                    return;
                                }
                            }
                            break;
                    }
                }

                if ((gUnk_03004654->unk18 == sp34) || (gUnk_03004654->unk19 == sp34))
                {
                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                    return;
                }
                if (gUnk_03004654->unk1A <= sp34)
                {
                    if (gEntityInfo[slot].unk8.split.unk9 == 1)
                    {
                        gEntityInfo[slot].unk8.split.unk9 = 2;
                    }
                    gEntityInfo[slot].yPosBg2 = sp30 + 3;
                    gEntityInfo[slot].yPosBg2 &= ~0x7;
                    return;
                }
            }
            break;

        case 19:
            if (gUnk_03004C20.isHoverBoardLevel == 0)
            {
                if (gEntityInfo[slot].id == ENTITY_ID_TETON)
                {
                    if ((gUnk_03004C20.globalFrameCounter % 0x10) == 0)
                    {
                        m4aSongNumStart(SE_TETON_RISING);
                    }

                    if (gUnk_03005220.unk38 != 0)
                    {
                        gEntityInfo[slot].unk8.split.unk9 -= 1;
                        if (gEntityInfo[slot].unk8.split.unk9 == 0)
                        {
                            sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                            m4aSongNumStart(SE_ENEMY_DEATH);
                            return;
                        }
                    }
                    else
                    {
                        gUnk_03005220.unk3C = 0;
                        gUnk_03005220.unk38 = 1;
                        SetEntityAnimationInfoState(0, 0xE);
                        gEntityInfo[slot].unk8.split.unk9 = 0x87;
                        gUnk_03005220.unk3D = 0;
                    }
                }

                if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[slot].xPosBg2) <= 7)
                {
                    gEntityInfo[slot].xPosBg2 = gEntityInfo[0].xPosBg2;
                    if (Abs(gEntityInfo[0].yPosBg2 - gEntityInfo[slot].yPosBg2) <= 0x18)
                    {
                        sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x1A) >> 3) * gBgInfo[2].hLength)];

                        sp34 = max(sp34, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x1A) >> 3) * gBgInfo[2].hLength)]);
                    }
                    if (sp34 <= gUnk_03004654->unk1A)
                    {
                        gOamAffineBuffer[gOamAffineMatrixNum].pd = ReciprocalQ8(gBg2YMag);
                        if (Abs((gEntityInfo[0].yPosBg2 - gEntityInfo[slot].yPosBg2) - 0x18) <= 7)
                        {
                            gUnk_03005220.unk43 = 1;
                        }
                        gEntityInfo[slot].yPosBg2 += ((gEntityInfo[0].yPosBg2 - 0x18 - gEntityInfo[slot].yPosBg2) >> 1);
                    }
                    else
                    {
                        if (Abs((gEntityInfo[0].yPosBg2 - gEntityInfo[slot].yPosBg2) - 0x18) <= 3)
                        {
                            gUnk_03005220.unk43 = 1;
                        }
                        else
                        {
                            gUnk_03005220.unk43 = 2;
                        }
                        gOamAffineBuffer[gOamAffineMatrixNum].pd = ReciprocalQ8(gBg2YMag) + (Abs((gEntityInfo[0].yPosBg2 - gEntityInfo[slot].yPosBg2) - 0x18) * 0x10);
                    }
                }
                else
                {
                    gEntityInfo[slot].xPosBg2 += ((gEntityInfo[0].xPosBg2 - gEntityInfo[slot].xPosBg2) >> 2);
                }
            }
            else
            {
                if (Abs(gEntityInfo[0].xPosBg2 - 0x14 - gEntityInfo[slot].xPosBg2) <= 9)
                {
                    gEntityInfo[slot].yPosBg2 = gUnk_030034FC[(gUnk_030034FC[0] & 0xF) + 1];
                    if ((gEntityInfo[0].yPosBg2 + 0x10) < gEntityInfo[slot].yPosBg2)
                    {
                        gEntityInfo[slot].yPosBg2 = gEntityInfo[0].yPosBg2 + 0x10;
                    }
                    else
                    {
                        if ((gEntityInfo[0].yPosBg2 - 0x10) > gEntityInfo[slot].yPosBg2)
                        {
                            gEntityInfo[slot].yPosBg2 = gEntityInfo[0].yPosBg2 - 0x10;
                        }
                    }
                    gEntityInfo[slot].xPosBg2 = gEntityInfo[0].xPosBg2 - 0x14;
                    gUnk_03005220.unk43 = 1;
                }
                else
                {
                    gEntityInfo[slot].xPosBg2 += ((gEntityInfo[0].xPosBg2 - 0x14 - gEntityInfo[slot].xPosBg2) >> 2);
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

                switch (gEntityInfo[sp28].id)
                {
                    case ENTITY_ID_MAGNET_BLOCK:
                    case ENTITY_ID_BOX:
                        if (gEntityInfo[0].yPosBg2 < gEntityInfo[slot].yPosBg2)
                        {
                            break;
                        }

                        if (((gEntityInfo[slot].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                        {
                            gUnk_03005220.unk43 = 2;
                            gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 + 0x14;
                            gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x1F0 - ((gEntityInfo[0].yPosBg2 - (gEntityInfo[sp28].yPosBg2 + 0x18)) * 8);
                        }
                        break;

                    case ENTITY_ID_SPIKER_HORIZONTAL:
                    case ENTITY_ID_SPIKER_VERTICAL:
                    case ENTITY_ID_MOO_BOARDER:
                    case ENTITY_ID_MOO:
                    case ENTITY_ID_FLYING_MOO_HORIZONTAL:
                    case ENTITY_ID_FLYING_MOO_VERTICAL:
                    case ENTITY_ID_GLIBZ_QUAD_CANNON:
                    case ENTITY_ID_TETON:
                    case ENTITY_ID_BOOMIE:
                    case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
                    case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 8)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x14)))
                        {
                            if (slot != sp28)
                            {
                                m4aSongNumStart(SE_ENEMY_DEATH);
                                if ((gEntityInfo[sp28].id != ENTITY_ID_SPIKER_HORIZONTAL) && (gEntityInfo[sp28].id != ENTITY_ID_SPIKER_VERTICAL))
                                {
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, sp28);
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                                }
                                else
                                {
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                                }
                                return;
                            }
                        }
                        break;

                    case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                    case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                    case ENTITY_ID_GRATED_PLATFORM:
                    case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
                        if (gEntityInfo[0].yPosBg2 < gEntityInfo[slot].yPosBg2)
                        {
                            break;
                        }

                        if (((gEntityInfo[slot].xPosBg2 - 0xB) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 0xB) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x10)))
                        {
                            gUnk_03005220.unk43 = 2;
                            gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 + 0x18;
                            gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x1F0 - ((gEntityInfo[0].yPosBg2 - (gEntityInfo[sp28].yPosBg2 + 0x18)) * 8);
                        }
                        break;

                    case ENTITY_ID_GROWN_BLOCK:
                    case ENTITY_ID_EXPLODABLE_BLOCK:
                        if (gEntityInfo[0].yPosBg2 < gEntityInfo[slot].yPosBg2)
                        {
                            break;
                        }

                        if (((gEntityInfo[slot].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            gUnk_03005220.unk43 = 2;
                            gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 + 0x18;
                            gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x1F0 - ((gEntityInfo[0].yPosBg2 - (gEntityInfo[sp28].yPosBg2 + 0x18)) * 8);
                        }
                        break;

                    case ENTITY_ID_SPRING:
                        if (gUnk_03003610[0].unk2 == slot)
                        {
                            SetEntityAnimationInfoState(sp28, 0);
                            gUnk_03003610[0].unk2 = 0;
                        }
                        break;

                    case 0x18:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x14)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x14)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 0xC)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x34)))
                        {
                            if ((gEntityInfo[sp28].unkF == 0xE) || (gEntityInfo[sp28].unkF == 0))
                            {
                                temp_r5_22 = Abs(gEntityInfo[sp28].xPosBg2 - gEntityInfo[slot].xPosBg2);
                                temp_r1_52 = Abs(gEntityInfo[sp28].yPosBg2 - (gEntityInfo[slot].yPosBg2 - 0x20));
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

                                if (gEntityInfo[slot].xPosBg2 > gEntityInfo[sp28].xPosBg2)
                                {
                                    gEntityInfo[sp28].unkC_4 = 1;
                                }
                                else
                                {
                                    gEntityInfo[sp28].unkC_4 = 0;
                                }

                                if (gEntityInfo[slot].yPosBg2 > gEntityInfo[sp28].yPosBg2)
                                {
                                    gEntityInfo[sp28].unkC_4 |= 2;
                                }
                                else
                                {
                                    gEntityInfo[sp28].unkC_4 &= 1;
                                }

                                gEntityInfo[sp28].unkF = 0;
                                sub_080145A8(1);
                                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                            }
                        }
                        break;
                }
            }
            break;

        case 16:
        case 17:
            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[0].xPosBg2 - 0xC)) &&
                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[0].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[0].yPosBg2 - 0x18)))
            {
                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                m4aSongNumStart(SE_ENEMY_DEATH);
                return;
            }
            /* fallthrough */
        case 21:
        case 22:
            if ((gEntityInfo[slot].unkF == 0x15) || (gEntityInfo[slot].unkF == 0x10))
            {
                s32 flag;
                gEntityInfo[slot].xPosBg2 += gUnk_03003508;
                if (gUnk_03004C20.unkA == 1)
                {
                    sp4 = sub_08014184(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18);
                    if (sp4.unk0 != 0xFFFF)
                    {
                        sp34 = gUnk_03004654->unk1B;
                        flag = 0;
                    }
                    else
                    {
                        sp14 = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18);
                        if (sp14.unk0 == sp4.unk0)
                        {
                            flag = 1;
                        }
                        else
                        {
                            gEntityInfo[slot].yPosBg2 = sp14.unk0;
                            flag = 0;
                        }
                    }
                }
                else
                {
                    flag = 1;
                }

                if (flag)
                {
                    sp34 = max(sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[slot].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)], gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]);
                }
            }
            else
            {
                s32 flag;
                gEntityInfo[slot].xPosBg2 -= gUnk_03003508;
                if (gUnk_03004C20.unkA == 1)
                {
                    sp14 = sub_08014184(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18);
                    if (sp14.unk0 != 0xFFFF)
                    {
                        sp34 = gUnk_03004654->unk1B;
                        flag = 0;
                    }
                    else
                    {
                        sp1C = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18);
                        if (sp1C.unk0 == sp14.unk0)
                        {
                            flag = 1;
                        }
                        else
                        {
                            gEntityInfo[slot].yPosBg2 = sp1C.unk0;
                            flag = 0;
                        }
                    }
                }
                else
                {
                    flag = 1;
                }

                if (flag)
                {
                    sp34 = max(sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[slot].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)], gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]);
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

                switch (gEntityInfo[sp28].id)
                {
                    case ENTITY_ID_MAGNET_BLOCK:
                    case ENTITY_ID_BOX:
                        if (((gEntityInfo[slot].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                        {
                            if (gEntityInfo[slot].yPosBg2 >= (gEntityInfo[sp28].yPosBg2 - 0x14))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            else
                            {
                                gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 + -0x18;
                            }
                        }
                        break;

                    case ENTITY_ID_SPIKER_HORIZONTAL:
                    case ENTITY_ID_SPIKER_VERTICAL:
                    case ENTITY_ID_MOO_BOARDER:
                    case ENTITY_ID_MOO:
                    case ENTITY_ID_FLYING_MOO_HORIZONTAL:
                    case ENTITY_ID_FLYING_MOO_VERTICAL:
                    case ENTITY_ID_GLIBZ_QUAD_CANNON:
                    case ENTITY_ID_TETON:
                    case ENTITY_ID_BOOMIE:
                    case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
                    case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 8)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                        {
                            if ((slot != sp28) && (gEntityInfo[sp28].unkF != 0x13))
                            {
                                sp34 = 0xFF;
                                if ((gEntityInfo[sp28].id != ENTITY_ID_SPIKER_HORIZONTAL) && (gEntityInfo[sp28].id != ENTITY_ID_SPIKER_VERTICAL))
                                {
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, sp28);
                                }
                                else
                                {
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, 0);
                                }
                            }
                        }
                        break;

                    case ENTITY_ID_MOON_DOOR:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0)
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                        }
                        break;

                    case ENTITY_ID_WATER_SWITCH:
                    case ENTITY_ID_GATE_SWITCH:
                    case ENTITY_ID_ROTATION_SWITCH:
                    case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 2)) && (((gEntityInfo[slot].xPosBg2 - 8) + 0x10) > (gEntityInfo[sp28].xPosBg2 - 2)))
                        {
                            if (((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x10)))
                            {
                                sp34 = 0xFF;
                                sub_0801EAA4(sp28);
                            }
                        }
                        break;

                    case ENTITY_ID_GATE:
                        if (((gEntityInfo[slot].xPosBg2 - 0xB) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((gEntityInfo[slot].xPosBg2 + 0xA) > (gEntityInfo[sp28].xPosBg2 - 8)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            if (((sp2C - 0xB) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((sp2C + 0xA) > (gEntityInfo[sp28].xPosBg2 - 8)) &&
                                ((sp30 - 0x18) < gEntityInfo[sp28].yPosBg2) && (sp30 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                            {
                                break;
                            }
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case ENTITY_ID_KEY_DOOR:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case ENTITY_ID_ONE_WAY_GATE:
                        if (gEntityInfo[sp28].unkC_2 == 1)
                        {
                            var_sb = 8;
                        }
                        else
                        {
                            var_sb = 0;
                        }
                        if (((gEntityInfo[slot].xPosBg2 - 0xF) < (gEntityInfo[sp28].xPosBg2 + var_sb)) && ((gEntityInfo[slot].xPosBg2 + 7) > (gEntityInfo[sp28].xPosBg2 - 8 + var_sb)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            if (gEntityInfo[sp28].unkC_4 == 0)
                            {
                                if (((gEntityInfo[slot].unkF == 0x15) && (gEntityInfo[sp28].unkC_2 == 0)) || ((gEntityInfo[slot].unkF == 0x16) && (gEntityInfo[sp28].unkC_2 == 1)))
                                {
                                    DmaCopy16(3, &gUnk_080B9368, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[sp28 - 0xD].tileNum * 0x20), 0x100);
                                    gEntityInfo[sp28].unkC_4 = 1;
                                    m4aSongNumStart(SE_ONE_WAY_GATE_OPEN);
                                }
                                else
                                {
                                    sp34 = gUnk_03004654->unk1B;
                                    m4aSongNumStart(SE_ENEMY_DEATH);
                                }
                            }
                        }
                        else
                        {
                            if (gEntityInfo[sp28].unkC_4 == 1)
                            {
                                if (gUnk_03005220.oneWayGateOpen == 0)
                                {
                                    DmaCopy16(3, &gUnk_08062148, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[sp28 - 0xD].tileNum * 0x20), 0x100);
                                    gEntityInfo[sp28].unkC_4 = 0;
                                }
                            }
                        }
                        break;

                    case ENTITY_ID_SPRING:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xC)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                        {
                            if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0)
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                        }
                        break;

                    case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                    case ENTITY_ID_FOUNTAIN_FOOTHOLD:
                    case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                    case ENTITY_ID_GRATED_PLATFORM:
                    case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x10)))
                        {
                            if (gEntityInfo[slot].yPosBg2 >= (gEntityInfo[sp28].yPosBg2 - 0xA))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            else
                            {
                                gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 + -0x10;
                            }
                        }
                        break;

                    case ENTITY_ID_GEYSER:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x40)))
                        {
                            sp34 = 0xFF;
                        }
                        break;

                    case ENTITY_ID_RED_ARROW:
                    case ENTITY_ID_BLUE_ARROW:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 3)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 3)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < (gEntityInfo[sp28].yPosBg2 - 0xC)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x14)))
                        {
                            if (gEntityInfo[sp28].unkC_4 == 3)
                            {
                                gEntityInfo[slot].unkF = 0x10;
                            }
                            else if (gEntityInfo[sp28].unkC_4 == 1)
                            {
                                gEntityInfo[slot].unkF = 0x11;
                            }
                            else if (gEntityInfo[sp28].unkC_4 == 0)
                            {
                                gEntityInfo[slot].unkF = 0xF;
                            }
                            else
                            {
                                gEntityInfo[slot].unkF = 0xE;
                            }
                            m4aSongNumStart(SE_ARROW_BOUNCE);
                        }
                        break;

                    case ENTITY_ID_SCALE_2:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xC)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28 + 1].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 8)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case ENTITY_ID_GROWN_BLOCK:
                    case ENTITY_ID_EXPLODABLE_BLOCK:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                        }
                        break;

                    case 0x22:
                        sp38 = 0;
                        if ((gUnk_03005400.unkC != 0) && (gUnk_03005400.unk8_0 == 0))
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
                                if (((gEntityInfo[sp28].xPosBg2 - - var_0) < (gEntityInfo[slot].xPosBg2 + 4)) && ((gEntityInfo[sp28].xPosBg2 + var_1) > (gEntityInfo[slot].xPosBg2 - 4)) &&
                                    ((gEntityInfo[sp28].yPosBg2 + var_2) < gEntityInfo[slot].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + var_3) > (gEntityInfo[slot].yPosBg2 - 0x14)))
                                {
                                    sp38 = 1;
                                }
                            }
                            else
                            {
                                if (((gEntityInfo[sp28].xPosBg2 - var_1) < (gEntityInfo[slot].xPosBg2 + 4)) && ((gEntityInfo[sp28].xPosBg2 - var_0) > (gEntityInfo[slot].xPosBg2 - 4)) &&
                                    ((gEntityInfo[sp28].yPosBg2 + var_2) < gEntityInfo[slot].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + var_3) > (gEntityInfo[slot].yPosBg2 - 0x14)))
                                {
                                    sp38 = 1;
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
                                    gEntityInfo[gUnk_03005400.unkC + 0xD].visible = 0;
                                }
                                if (gUnk_03005400.unkC == 2)
                                {
                                    SetEntityAnimationInfoState(0xD, 1);
                                }
                                gEntityInfo[0x11].unkF = 0x19;
                                gEntityInfo[0x11].xPosBg2 = gEntityInfo[slot].xPosBg2;
                                gEntityInfo[0x11].yPosBg2 = gEntityInfo[slot].yPosBg2 + 0x10;
                                gUnk_03005400.unk9 = 1;
                                sub_0803D140(1);
                                gUnk_03005400.unk0 = 0;
                                SetEntityAnimationInfoState(sp28, 1);
                                m4aSongNumStart(0x63);
                                gUnk_03005400.unkA = 1;
                                gUnk_03005400.unk10 = 0;
                                gUnk_03005400.unk8_6 = 1;
                                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                            }
                            else
                            {
                                s8 var_0_1, var_1_1, var_2_1, var_3_1;
                                if (gUnk_03004C20.world == 2)
                                {
                                    var_0_1 = gUnk_08116A26[gUnk_03005400.unkC][0];
                                    var_1_1 = gUnk_08116A26[gUnk_03005400.unkC][1];
                                    var_2_1 = gUnk_08116A26[gUnk_03005400.unkC][2];
                                    var_3_1 = gUnk_08116A26[gUnk_03005400.unkC][3];
                                }
                                else
                                {
                                    var_0_1 = gUnk_081168AC[gUnk_03004C20.world - 1][0];
                                    var_1_1 = gUnk_081168AC[gUnk_03004C20.world - 1][1];
                                    var_2_1 = gUnk_081168AC[gUnk_03004C20.world - 1][2];
                                    var_3_1 = gUnk_081168AC[gUnk_03004C20.world - 1][3];
                                }

                                if (((gEntityInfo[sp28].xPosBg2 + var_0_1) < (gEntityInfo[slot].xPosBg2 + 4)) && ((gEntityInfo[sp28].xPosBg2 + var_1_1) > (gEntityInfo[slot].xPosBg2 - 4)) &&
                                    ((gEntityInfo[sp28].yPosBg2 + var_2_1) < gEntityInfo[slot].yPosBg2) && (gEntityInfo[sp28].yPosBg2 + var_3_1) > (gEntityInfo[slot].yPosBg2 - 0x14))
                                {
                                    m4aSongNumStart(SE_ENEMY_DEATH);
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                                    if ((gUnk_03005400.unk8_6 == 0) && (gUnk_03004C20.world == 1))
                                    {
                                        if ((gUnk_03005400.unkA < 4) || (gUnk_03005400.unkA > 8))
                                        {
                                            gUnk_03005400.unkA = 0xE;
                                            SetEntityAnimationInfoState(sp28, 0x11);
                                        }
                                    }
                                }
                            }
                        }
                        break;

                    case 0x17:
                        var_sb_4 = 0;
                        if (gEntityInfo[sp28].unkF == 0)
                        {
                            break;
                        }
                        if (gEntityInfo[sp28].unkF == 3)
                        {
                            break;
                        }
                        if (gEntityInfo[sp28].unkF == 4)
                        {
                            break;
                        }
                        if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 4)
                        {
                            break;
                        }

                        if (sp28 == 0x15)
                        {
                            var_sb_4 = 0x10;
                        }

                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x14 + var_sb_4)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x14 - var_sb_4)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 0xA + var_sb_4)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x36 - var_sb_4)))
                        {
                            sp34 = gUnk_03004654->unk1B;
                            gEntityInfo[sp28].unk8.split.unk8 = 1;
                            gEntityInfo[sp28].unk8.split.unk9 |= 1;
                            gEntityInfo[sp28].unkF = 0x13;
                            SetEntityAnimationInfoState(sp28, 4);
                            gEntityInfo[0x11].unkF = 0x19;
                            gEntityInfo[0x11].xPosBg2 = gEntityInfo[sp28].xPosBg2;
                            gEntityInfo[0x11].yPosBg2 = gEntityInfo[sp28].yPosBg2;
                            if (gEntityAnimationInfo[0x15 - gUnk_0300363C].state == 4)
                            {
                                gUnk_03005400.unkC -= 1;
                                if (gUnk_03005400.unkC != 0)
                                {
                                    gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x11;
                                }
                                else
                                {
                                    gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x1C;
                                    gEntityInfo[gUnk_03005400.unkC + 0xD].visible = 0;
                                }
                                if (gUnk_03005400.unkC == 2)
                                {
                                    SetEntityAnimationInfoState(0xD, 1);
                                }
                            }
                        }
                        break;

                    case 0x18:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x14)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x14)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 0xC)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x34)))
                        {
                            if (gEntityInfo[sp28].unkF == 0xE)
                            {
                                sp34 = gUnk_03004654->unk1B;
                                temp_r5_44 = Abs(gEntityInfo[sp28].xPosBg2 - gEntityInfo[slot].xPosBg2);
                                temp_r1_84 = Abs(gEntityInfo[sp28].yPosBg2 - (gEntityInfo[slot].yPosBg2 - 0x20));
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

                                if (gEntityInfo[slot].xPosBg2 > gEntityInfo[sp28].xPosBg2)
                                {
                                    gEntityInfo[sp28].unkC_4 = 1;
                                }
                                else
                                {
                                    gEntityInfo[sp28].unkC_4 = 0;
                                }

                                if (gEntityInfo[slot].yPosBg2 > gEntityInfo[sp28].yPosBg2)
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

                    case 0x1B:
                        if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x14)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x14)) &&
                            ((gEntityInfo[slot].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 8)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x28)))
                        {
                            if (gEntityInfo[sp28].unkF == 0xF)
                            {
                                gEntityInfo[sp28].unk8.split.unk8 = 8;
                                gUnk_03005400.unkA = 4;

                                if (gEntityInfo[slot].unk8.split.unk9 == gEntityInfo[sp28].unk8.split.unk9)
                                {
                                    gEntityInfo[sp28].unkF = 0x14;
                                }
                                else
                                {
                                    gEntityInfo[sp28].unkF = 0x13;
                                }

                                if (gEntityInfo[slot].xPosBg2 < gEntityInfo[sp28].xPosBg2)
                                {
                                    gEntityInfo[sp28].unkC_2 = 0;
                                }
                                else
                                {
                                    gEntityInfo[sp28].unkC_2 = 1;
                                }

                                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                                gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                                gEntityInfo[slot].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
                            }
                        }
                        break;
                }
            }

            if ((gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 & 1) &&
                (((u16) (gEntityInfo[slot].xPosScreen - 0x113) <= (u16)-0x137) || ((u16) (gEntityInfo[slot].yPosScreen - 0xB3) <= (u16)-0xD7)))
            {
                sp34 = gUnk_03004654->unk1B;
            }

            if (gUnk_03004654->unk1A <= sp34 || ((gUnk_03004654->unk1 <= sp34) && (gUnk_03004654->unk14 >= sp34) && (gUnk_03004C20.levelHasWarpDoors == 0)))
            {
                m4aSongNumStart(SE_ENEMY_DEATH);
                if ((gEntityInfo[slot].id >= ENTITY_ID_BOOMIE) && (sp34 != 0xFF))
                {
                    gEntityInfo[slot].xPosBg2 = sp2C;
                    gEntityInfo[slot].unkF = 0x14;
                    return;
                }
                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                if ((gEntityInfo[slot].id == ENTITY_ID_FLYING_MOO_VERTICAL) || (gEntityInfo[slot].id == ENTITY_ID_TETON) || (gEntityInfo[slot].id == ENTITY_ID_FLYING_BOOMIE_VERTICAL))
                {
                    gEntityInfo[slot].unkC_4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5;
                }
                else
                {
                    gEntityInfo[slot].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
                }
                return;
            }

            if ((gUnk_03004654->unk18 == sp34) || (gUnk_03004654->unk19 == sp34))
            {
                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                return;
            }
            break;

        case 14:
        case 15:
            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[0].xPosBg2 - 0xC)) &&
                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[0].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[0].yPosBg2 - 0x18)))
            {
                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                m4aSongNumStart(SE_ENEMY_DEATH);
                return;
            }
            /* fallthrough */
        case 23:
            if (gEntityInfo[slot].unkF == 0xE)
            {
                struct Unk_08014184 sp;
                gEntityInfo[slot].yPosBg2 -= 3;
                if ((gUnk_03004C20.unkA == 1) && (sp = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18), sp.unk0 != 0xFFFF))
                {
                    sp34 = gUnk_03004654->unk1B;
                }
                else
                {
                    sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 4) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)];
                }
            }
            else
            {
                struct Unk_08014184 sp;
                gEntityInfo[slot].yPosBg2 += 3;
                if ((gUnk_03004C20.unkA == 1) && (sp = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x18), sp.unk0 != 0xFFFF))
                {
                    sp34 = gUnk_03004654->unk1B;
                }
                else
                {
                    sp34 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[slot].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)];

                    sp34 = max(sp34, gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + (((gEntityInfo[slot].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)]);

                    sp34 = max(sp34, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[slot].yPosBg2 + 4) >> 3) * gBgInfo[2].hLength)]);
                }
            }
            
            for (sp28 = gUnk_030007F0; sp28 <= gUnk_03004C04; sp28++)
            {
                if ((gEntityInfo[sp28].unkF <= 0x1A) && (gEntityInfo[sp28].unkF != 0x19))
                {
                    switch (gEntityInfo[sp28].id)
                    {
                        case ENTITY_ID_MAGNET_BLOCK:
                        case ENTITY_ID_BOX:
                            if (((gEntityInfo[slot].xPosBg2 - 0xC) < (gEntityInfo[sp28].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0xC) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x18)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            break;

                        case ENTITY_ID_SPIKER_HORIZONTAL:
                        case ENTITY_ID_SPIKER_VERTICAL:
                        case ENTITY_ID_MOO_BOARDER:
                        case ENTITY_ID_MOO:
                        case ENTITY_ID_FLYING_MOO_HORIZONTAL:
                        case ENTITY_ID_FLYING_MOO_VERTICAL:
                        case ENTITY_ID_GLIBZ_QUAD_CANNON:
                        case ENTITY_ID_TETON:
                        case ENTITY_ID_BOOMIE:
                        case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
                        case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 8)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 8)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x14)))
                            {
                                if ((slot != sp28) && (gEntityInfo[sp28].unkF != 0x13))
                                {
                                    sp34 = 0xFF;
                                    if ((gEntityInfo[sp28].id != ENTITY_ID_SPIKER_HORIZONTAL) && (gEntityInfo[sp28].id != ENTITY_ID_SPIKER_VERTICAL))
                                    {
                                        sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, sp28);
                                    }
                                    else
                                    {
                                        sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, 0);
                                    }
                                }
                            }
                            break;

                        case ENTITY_ID_MOON_DOOR:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                            {
                                if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 0)
                                {
                                    sp34 = gUnk_03004654->unk1B;
                                }
                            }
                            break;

                        case ENTITY_ID_WATER_SWITCH:
                        case ENTITY_ID_GATE_SWITCH:
                        case ENTITY_ID_ROTATION_SWITCH:
                        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 2)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 2)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x10)))
                            {
                                sp34 = 0xFF;
                                sub_0801EAA4(sp28);
                            }
                            break;

                        case ENTITY_ID_SPRING:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x19)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                                if (gEntityInfo[slot].id >= ENTITY_ID_BOOMIE)
                                {
                                    sp30 = gEntityInfo[slot].yPosBg2 = gEntityInfo[sp28].yPosBg2 + -0x10;
                                    m4aSongNumStart(SE_ENEMY_DEATH);
                                    SetEntityAnimationInfoState(sp28, 2);
                                    gUnk_03003610[0].unk2 = slot;
                                    gUnk_03003610[0].unk3 = sp28;
                                }
                            }
                            break;

                        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
                        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                        case ENTITY_ID_GRATED_PLATFORM:
                        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x10)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x10)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x10)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            break;

                        case ENTITY_ID_RED_ARROW:
                        case ENTITY_ID_BLUE_ARROW:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 3)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 3)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 0xC)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x14)))
                            {
                                if (gEntityInfo[sp28].unkC_4 == 3)
                                {
                                    gEntityInfo[slot].unkF = 0x10;
                                }
                                else if (gEntityInfo[sp28].unkC_4 == 1)
                                {
                                    gEntityInfo[slot].unkF = 0x11;
                                }
                                else if (gEntityInfo[sp28].unkC_4 == 0)
                                {
                                    gEntityInfo[slot].unkF = 0xF;
                                }
                                else
                                {
                                    gEntityInfo[slot].unkF = 0xE;
                                }
                                m4aSongNumStart(SE_ARROW_BOUNCE);
                            }
                            break;

                        case ENTITY_ID_WATER:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x20)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x20)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x16)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            break;

                        case ENTITY_ID_SCALE_2:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xC)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 8)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            break;

                        case ENTITY_ID_GROWN_BLOCK:
                        case ENTITY_ID_EXPLODABLE_BLOCK:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0xF)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < gEntityInfo[sp28].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x20)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                            }
                            break;

                        case 0x22:
                            var_ip = 0;
                            if (gUnk_03005400.unkC == 0)
                            {
                                break;
                            }
                            else if (gUnk_03005400.unk8_0)
                            {
                                break;
                            }

                            if (gEntityInfo[sp28].unkC_2 == 0)
                            {
                                if (((gEntityInfo[sp28].xPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][0]) < (gEntityInfo[slot].xPosBg2 + 4)) && ((gEntityInfo[sp28].xPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][1]) > (gEntityInfo[slot].xPosBg2 - 4)) &&
                                    ((gEntityInfo[sp28].yPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][2]) < gEntityInfo[slot].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][3]) > (gEntityInfo[slot].yPosBg2 - 0x14)))
                                {
                                    var_ip = 1;
                                }
                            }
                            else
                            {
                                if (((gEntityInfo[sp28].xPosBg2 - gUnk_081168C4[gUnk_03004C20.world - 1][1]) < (gEntityInfo[slot].xPosBg2 + 4)) && ((gEntityInfo[sp28].xPosBg2 - gUnk_081168C4[gUnk_03004C20.world - 1][0]) > (gEntityInfo[slot].xPosBg2 - 4)) &&
                                    ((gEntityInfo[sp28].yPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][2]) < gEntityInfo[slot].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + gUnk_081168C4[gUnk_03004C20.world - 1][3]) > (gEntityInfo[slot].yPosBg2 - 0x14)))
                                {
                                    var_ip = 1;
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
                                    gEntityInfo[gUnk_03005400.unkC + 0xD].visible = 0;
                                }
                                if (gUnk_03005400.unkC == 2)
                                {
                                    SetEntityAnimationInfoState(0xD, 1);
                                }

                                gEntityInfo[0x11].unkF = 0x19;
                                gEntityInfo[0x11].xPosBg2 = gEntityInfo[slot].xPosBg2;
                                gEntityInfo[0x11].yPosBg2 = gEntityInfo[slot].yPosBg2 + 0x10;
                                gUnk_03005400.unk9 = 1;
                                sub_0803D140(1);
                                gUnk_03005400.unk0 = 0;
                                SetEntityAnimationInfoState(sp28, 1);
                                m4aSongNumStart(0x63);
                                gUnk_03005400.unkA = 1;
                                gUnk_03005400.unk10 = 0;
                                gUnk_03005400.unk8_6 = 1;
                                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                            }
                            else
                            {
                                if (((gEntityInfo[sp28].xPosBg2 + gUnk_081168AC[gUnk_03004C20.world - 1][0]) < (gEntityInfo[slot].xPosBg2 + 4)) && ((gEntityInfo[sp28].xPosBg2 + gUnk_081168AC[gUnk_03004C20.world - 1][1]) > (gEntityInfo[slot].xPosBg2 - 4)) &&
                                    ((gEntityInfo[sp28].yPosBg2 + gUnk_081168AC[gUnk_03004C20.world - 1][2]) < gEntityInfo[slot].yPosBg2) && ((gEntityInfo[sp28].yPosBg2 + gUnk_081168AC[gUnk_03004C20.world - 1][3]) > (gEntityInfo[slot].yPosBg2 - 0x14)))
                                {
                                    m4aSongNumStart(SE_ENEMY_DEATH);
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                                    if ((gUnk_03005400.unk8_6 == 0) && (gUnk_03004C20.world == 1))
                                    {
                                        gUnk_03005400.unkA = 0xE;
                                        SetEntityAnimationInfoState(sp28, 0x11);
                                    }
                                }
                            }
                            break;

                        case 0x17:
                            if (gEntityInfo[sp28].unkF == 0)
                            {
                                break;
                            }
                            if (gEntityInfo[sp28].unkF == 3)
                            {
                                break;
                            }
                            if (gEntityInfo[sp28].unkF == 4)
                            {
                                break;
                            }
                            if (gEntityAnimationInfo[sp28 - gUnk_0300363C].state == 4)
                            {
                                break;
                            }

                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x14)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x14)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 0xA)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x36)))
                            {
                                sp34 = gUnk_03004654->unk1B;
                                gEntityInfo[sp28].unk8.split.unk8 = 1;
                                gEntityInfo[sp28].unk8.split.unk9 |= 1;
                                gEntityInfo[sp28].unkF = 0x13;
                                SetEntityAnimationInfoState(sp28, 4);
                                gEntityInfo[0x11].unkF = 0x19;
                                gEntityInfo[0x11].xPosBg2 = gEntityInfo[sp28].xPosBg2;
                                gEntityInfo[0x11].yPosBg2 = gEntityInfo[sp28].yPosBg2;
                                if (gEntityAnimationInfo[0x15 - gUnk_0300363C].state == 4)
                                {
                                    gUnk_03005400.unkC -= 1;
                                    if (gUnk_03005400.unkC != 0)
                                    {
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x11;
                                    }
                                    else
                                    {
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].unkF = 0x1C;
                                        gEntityInfo[gUnk_03005400.unkC + 0xD].visible = 0;
                                    }
                                    if (gUnk_03005400.unkC == 2)
                                    {
                                        SetEntityAnimationInfoState(0xD, 1);
                                    }
                                }
                            }
                            break;

                        case 0x1B:
                            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[sp28].xPosBg2 + 0x14)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[sp28].xPosBg2 - 0x14)) &&
                                ((gEntityInfo[slot].yPosBg2 - 0x14) < (gEntityInfo[sp28].yPosBg2 - 8)) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[sp28].yPosBg2 - 0x28)))
                            {
                                if ((gEntityInfo[sp28].unkF == 0xF))
                                {
                                    gEntityInfo[sp28].unk8.split.unk8 = 8;
                                    gUnk_03005400.unkA = 4;
                                    if (gEntityInfo[slot].unk8.split.unk9 == gEntityInfo[sp28].unk8.split.unk9)
                                    {
                                        gEntityInfo[sp28].unkF = 0x14;
                                    }
                                    else
                                    {
                                        gEntityInfo[sp28].unkF = 0x13;
                                    }
                                    gEntityInfo[sp28].unkC_2 = 2;
                                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                                    gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                                    gEntityInfo[slot].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
                                }
                            }
                            break;
                    }
                }
            }

            if ((gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 & 1) &&
                (((u16) (gEntityInfo[slot].xPosScreen - 0x113) <= (u16)-0x137) || ((u16) (gEntityInfo[slot].yPosScreen - 0xB3) <= (u16)-0xD7)))
            {
                sp34 = gUnk_03004654->unk1B;
            }
            if (gUnk_03004654->unk1A <= sp34)
            {
                m4aSongNumStart(SE_ENEMY_DEATH);
                if ((gEntityInfo[slot].id >= ENTITY_ID_BOOMIE) && (sp34 != 0xFF))
                {
                    gEntityInfo[slot].yPosBg2 = sp30 + 3;
                    gEntityInfo[slot].yPosBg2 &= ~0x7;
                    gEntityInfo[slot].unkF = 0x14;
                    return;
                }
                sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
                if ((gEntityInfo[slot].id == ENTITY_ID_FLYING_MOO_VERTICAL) || (gEntityInfo[slot].id == ENTITY_ID_TETON) || (gEntityInfo[slot].id == ENTITY_ID_FLYING_BOOMIE_VERTICAL))
                {
                    gEntityInfo[slot].unkC_4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5;
                }
                else
                {
                    gEntityInfo[slot].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
                }
            }
            else
            {
                if ((gUnk_03004654->unk18 == sp34) || (gUnk_03004654->unk19 == sp34))
                {
                    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
                    return;
                }
            }
            break;

        case 27:
            if ((gUnk_03004C20.globalFrameCounter % 8) == 0)
            {
                if (gEntityInfo[slot].unk8.split.unk8 > 0xD)
                {
                    gEntityInfo[slot].unk8.split.unk8 = 0;
                    gEntityInfo[slot].unkF = 0x19;
                    RoomRotationUpdateEntityPosition(slot);
                    return;
                }
                sub_0801E664(gUnk_0818B8D0[(gEntityInfo[slot].unk8.split.unk8 + 4) & 7][0] + gEntityInfo[slot].xPosBg2, gUnk_0818B8D0[(gEntityInfo[slot].unk8.split.unk8 + 4) & 7][1] + gEntityInfo[slot].yPosBg2, 6, 0);
                sub_0801E664(gUnk_0818B8D0[(gEntityInfo[slot].unk8.split.unk8 & 7)][0] + gEntityInfo[slot].xPosBg2, gUnk_0818B8D0[(gEntityInfo[slot].unk8.split.unk8++ & 7)][1] + gEntityInfo[slot].yPosBg2, 6, 0);
                m4aSongNumStart(SE_BOOMIE_EXPLOSION);
            }
            break;
    }
}

// 1B044
void sub_0801B044(u8 slot)
{
    // Called by ENTITY_ID_CANNON_GOAL
    u32 i;

    if (gEntityInfo[slot].unk8.all == 1)
    {
        m4aSongNumStart(SE_KLONOA_ENTERS_CANNON_GOAL);
    }

    if (gEntityInfo[slot].unk8.all++ < 0xF0)
    {
        if (!(gEntityInfo[slot].unk8.all & 7) && (gEntityInfo[slot].unk8.all <= 0x95))
        {
            sub_0801E664(gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 0xA, 0);
        }

        if (gUnk_03005220.unk50 == 0)
        {
            if (gUnk_03005220.klonoaCannonXVel > -0x110)
            {
                gUnk_03005220.klonoaCannonXVel -= 0x10;
            }
            else
            {
                gUnk_03005220.unk50 = 1;
                gUnk_03005220.klonoaCannonXVel = 0;
            }
        }

        if (gUnk_03005220.unk51 == 0)
        {
            if (gUnk_03005220.klonoaCannonYVel > -0x100)
            {
                gUnk_03005220.klonoaCannonYVel -= 0x14;
            }
            else
            {
                gUnk_03005220.unk51 = 1;
                gUnk_03005220.klonoaCannonYVel = 0;
            }
        }

        if (gUnk_03005220.klonoaCannonXVel > 0)
        {
            if (gEntityInfo[0].unkC_2 == 0)
            {
                gEntityInfo[0].xPosBg2 += (gUnk_03005220.klonoaCannonXVel >> 0x8);
            }
            else
            {
                gEntityInfo[0].xPosBg2 -= (gUnk_03005220.klonoaCannonXVel >> 0x8);
            }

            if (gUnk_03005220.unk52 == 0x80)
            {
                gEntityInfo[0].yPosBg2 += (gUnk_03005220.klonoaCannonYVel >> 0x8);
            }
            else
            {
                gEntityInfo[0].yPosBg2 -= (gUnk_03005220.klonoaCannonYVel >> 0x8);
            }

            if ((gEntityInfo[0].yPosBg2 - 0x10) < (gEntityInfo[slot].yPosBg2 - 0x20))
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
            if (gEntityInfo[slot].unk8.all <= 0xB3)
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

                if (gEntityInfo[slot].unkC_2 == 0)
                {
                    if (gEntityInfo[0].unkC_2 == 0)
                    {
                        s32 tmp0 = gEntityInfo[slot].xPosBg2;
                        s32 tmp1 = gEntityInfo[0].xPosBg2 + 0x1A;
                        gEntityInfo[0].xPosBg2 += (tmp0 - (tmp1)) >> 5;
                    }
                    else
                    {
                        s32 tmp0 = gEntityInfo[0].xPosBg2 + 0x1A;
                        s32 tmp1 = gEntityInfo[slot].xPosBg2;
                        gEntityInfo[0].xPosBg2 -= ((tmp0) - tmp1) >> 5;
                    }
                }
                else
                {
                    if (gEntityInfo[0].unkC_2 == 0)
                    {
                        s32 tmp0 = gEntityInfo[slot].xPosBg2;
                        s32 tmp1 = gEntityInfo[0].xPosBg2 - 0x1A;
                        gEntityInfo[0].xPosBg2 += (tmp0 - (tmp1)) >> 5;
                    }
                    else
                    {
                        s32 tmp0 = gEntityInfo[0].xPosBg2 - 0x1A;
                        s32 tmp1 = gEntityInfo[slot].xPosBg2;
                        gEntityInfo[0].xPosBg2 -= ((tmp0) - tmp1) >> 5;
                    }
                }

                if (gUnk_03005220.unk52 == 0x80)
                {
                    gEntityInfo[0].yPosBg2 += (((gEntityInfo[slot].yPosBg2 - gEntityInfo[0].yPosBg2) - 0x10) >> 3);
                }
                else
                {
                    gEntityInfo[0].yPosBg2 -= (((gEntityInfo[0].yPosBg2 - gEntityInfo[slot].yPosBg2) + 0x18) >> 3);
                }
            }
        }

        if (gEntityAnimationInfo[0].state != 4)
        {
            SetEntityAnimationInfoState(0, 4);
        }

        if (gEntityInfo[slot].unk8.all == 0xB4)
        {
            m4aSongNumStart(SE_CANNON_GOAL_ROTATING);
            SetEntityAnimationInfoState(slot, 0);
            gUnk_03005220.klonoaCannonYVel = 2;
            gUnk_03005220.klonoaCannonXVel = 2;
            gEntityInfo[0].visible = 0;
            gEntityInfo[0].unkF = 0x1C;
        }

        if ((u16) (gEntityInfo[slot].unk8.all - 0xBF) <= 8)
        {
            if (gUnk_03005220.klonoaCannonXVel >= -2)
            {
                gEntityInfo[slot].xPosBg2 += gUnk_03005220.klonoaCannonXVel;
            }
            gUnk_03005220.klonoaCannonXVel -= 1;
            gUnk_03005220.klonoaCannonYVel -= 1;
        }

        if ((u16) (gEntityInfo[slot].unk8.all - 0xC4) <= 0x1C)
        {
            if (gEntityInfo[slot].unk8.all & 1)
            {
                if (gEntityInfo[slot].unkC_2 == 0)
                {
                    gOamAffineBuffer[gOamAffineMatrixNum + 1].pa = COS((u8) (gEntityInfo[slot].unk8.all + 0x3D));
                    gOamAffineBuffer[gOamAffineMatrixNum + 1].pd = COS((u8) (gEntityInfo[slot].unk8.all + 0x3D));
                    gOamAffineBuffer[gOamAffineMatrixNum + 1].pb = -SIN((u8) (gEntityInfo[slot].unk8.all + 0x3D));
                    gOamAffineBuffer[gOamAffineMatrixNum + 1].pc = SIN((u8) (gEntityInfo[slot].unk8.all + 0x3D));
                }
                else
                {
                    gOamAffineBuffer[gOamAffineMatrixNum + 1].pa = COS((u8) (0xC3 - gEntityInfo[slot].unk8.all));
                    gOamAffineBuffer[gOamAffineMatrixNum + 1].pd = COS((u8) (0xC3 - gEntityInfo[slot].unk8.all));
                    gOamAffineBuffer[gOamAffineMatrixNum + 1].pb = -SIN((u8) (0xC3 - gEntityInfo[slot].unk8.all));
                    gOamAffineBuffer[gOamAffineMatrixNum + 1].pc = SIN((u8) (0xC3 - gEntityInfo[slot].unk8.all));
                }
            }
        }
    }
    else if ((u16) (gEntityInfo[slot].unk8.all - 0xF1) <= 0x3A)
    {
        if (gEntityInfo[slot].unk8.all == 0xF1)
        {
            m4aSongNumStart(SE_CANNON_GOAL_REVVING_UP);
            SetEntityAnimationInfoState(slot, 1);
        }

        if (gEntityInfo[slot].unk8.all & 1)
        {
            gEntityInfo[slot].xPosBg2 -= 1;
            gEntityInfo[slot].yPosBg2 += 1;
            gBgInfo[2].hOfs += 1;
            gBgInfo[2].vOfs -= 1;
        }
        else
        {
            gEntityInfo[slot].xPosBg2 += 1;
            gEntityInfo[slot].yPosBg2 -= 1;
            gBgInfo[2].hOfs -= 1;
            gBgInfo[2].vOfs += 1;
        }
    }
    else if ((u16) (gEntityInfo[slot].unk8.all - 0x12D) <= 0x80)
    {
        if ((gEntityInfo[slot].unk8.all) == 0x12D)
        {
            gEntityInfo[0].visible = 1;
            gEntityInfo[0].unkF = 0;
            if (gEntityInfo[slot].unkC_2 == 0)
            {
                gEntityInfo[0].xPosBg2 = gEntityInfo[slot].xPosBg2 + 0x20;
            }
            else
            {
                gEntityInfo[0].xPosBg2 = gEntityInfo[slot].xPosBg2 - 0x20;
            }
            gEntityInfo[0].yPosBg2 = gEntityInfo[slot].yPosBg2 - 0x20;
            gEntityInfo[0].affineEnable = 0;
            gOamAffineBuffer[gOamAffineMatrixNum].pa = 0x100;
            gEntityInfo[0].unkC_2 = gEntityInfo[slot].unkC_2;
            gUnk_03005220.klonoaCannonYVel = 0xFFFA;
            gUnk_03005220.klonoaCannonXVel = 0xFFFA;
            SetEntityAnimationInfoState(slot, 2);
            m4aSongNumStart(SE_CANNON_GOAL_SHOOTING);
            m4aSongNumStart(SE_KLONOA_WAHOO);
        }

        if ((u16) (gEntityInfo[slot].unk8.all - 0x12D) <= 0x12)
        {
            gUnk_03005220.klonoaCannonXVel += 1;
            gUnk_03005220.klonoaCannonYVel += 1;

            if (gUnk_03005220.klonoaCannonXVel <= 5)
            {
                gEntityInfo[slot].xPosBg2 += gUnk_03005220.klonoaCannonXVel;
                gEntityInfo[slot].yPosBg2 -= gUnk_03005220.klonoaCannonXVel;

                if (gEntityInfo[slot].unk8.all & 4)
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

        if (gEntityInfo[slot].unkC_2 == 0)
        {
            if ((gEntityInfo[0].xPosBg2 + 3) < (gCurrentRoomBg2Bounds.right + 0x18))
            {
                gEntityInfo[0].xPosBg2 += 3;
            }
        }
        else
        {
            if ((gEntityInfo[0].xPosBg2 - 3) > (gCurrentRoomBg2Bounds.left - 0x18))
            {
                gEntityInfo[0].xPosBg2 -= 3;
            }
        }

        if ((gEntityInfo[0].yPosBg2 - 3) > (gCurrentRoomBg2Bounds.top - 0x18))
        {
            gEntityInfo[0].yPosBg2 -= 3;
        }

        if (!(gEntityInfo[slot].unk8.all & 7))
        {
            sub_0801E664(gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 8, 0);
        }

        if (gEntityAnimationInfo[0].state != 2)
        {
            SetEntityAnimationInfoState(0, 2);
        }

        if (gEntityInfo[slot].unk8.all == 0x154)
        {
            for (i = 0; i < (gCallbackQueue.currentCount + 1); i++)
            {
                if (i == 4)
                {
                    gCallbackQueue.next[4] = DrawVisionEnd;
                }
                else if (i > 4)
                {
                    gCallbackQueue.next[i] = gCallbackQueue.current[i - 1];
                }
                else
                {
                    gCallbackQueue.next[i] = gCallbackQueue.current[i];
                }
            }

            if (i > 3)
            {
                gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            }
        }
    }
    gUnk_03005220.klonoaYVel = 0;
}

// 1B688
void sub_0801B688(u8 slot)
{
    // Called by ENTITY_ID_GOOMI (and associated direction)
    s32 var_r2;
    u8 var_r1;

    var_r2 = 1;
    if (gUnk_03005220.unk3F == slot)
    {
        if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[slot].xPosBg2) > 4)
        {
            var_r2 = 3;
        }
        else
        {
            // var_r2 = 1;
        }

        if (gEntityInfo[0].xPosBg2 < gEntityInfo[slot].xPosBg2)
        {
            gUnk_03005220.unk56 = var_r2;
        }
        else if (gEntityInfo[0].xPosBg2 > gEntityInfo[slot].xPosBg2)
        {
            gUnk_03005220.unk56 = -var_r2;
        }
        else
        {
            gUnk_03005220.unk56 = 0;
        }

        var_r1 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[0].yPosBg2 + 8) >> 3) * gBgInfo[2].hLength)];

        var_r1 = max(var_r1, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((gEntityInfo[0].yPosBg2 + 8) >> 3) * gBgInfo[2].hLength)]);

        if (gUnk_03004654->unk1A > var_r1)
        {
            if (Abs(-(gEntityInfo[slot].yPosBg2 + 0x18) + gEntityInfo[0].yPosBg2) > 4)
            {
                var_r2 = 3;
            }
            else
            {
                var_r2 = 1;
            }

            if ((gEntityInfo[0].yPosBg2 - 0x18) > gEntityInfo[slot].yPosBg2)
            {
                gUnk_03005220.unk57 = -var_r2;
            }
            else if ((gEntityInfo[0].yPosBg2 - 0x18) < gEntityInfo[slot].yPosBg2)
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
        if (gEntityAnimationInfo[slot - gUnk_0300363C].state != 2)
        {
            if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[slot].xPosBg2 + 0xD)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[slot].xPosBg2 - 0xD)) &&
                ((gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[slot].yPosBg2 - 3)) && (gEntityInfo[0].yPosBg2 > (gEntityInfo[slot].yPosBg2 - 0x15)))
            {
                SetEntityAnimationInfoState(slot, 2);
            }
        }
    }

    if (gEntityInfo[slot].unkC_4 == 0)
    {
        if (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4 <= ++gEntityInfo[slot].unk8.split.unk8)
        {
            gEntityInfo[slot].unkC_4 = 1;
            gEntityInfo[slot].unk8.split.unk8 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - 0x14;
        }
        else if ((gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4 - 0x14) < gEntityInfo[slot].unk8.split.unk8)
        {
            return;
        }
    }
    else
    {
        if (--gEntityInfo[slot].unk8.split.unk8 == 0)
        {
            gEntityInfo[slot].unkC_4 = 0;
            gEntityInfo[slot].unk8.split.unk8 = 0x14;
        }
        else if (gEntityInfo[slot].unk8.split.unk8 <= 0x13)
        {
            return;
        }
    }

    switch (gEntityInfo[slot].id)
    {
        case ENTITY_ID_GOOMI:
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
            break;

        case ENTITY_ID_GOOMI_HORIZONTAL:
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + gEntityInfo[slot].unk8.split.unk8;
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
            break;

        case ENTITY_ID_GOOMI_VERTICAL:
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + gEntityInfo[slot].unk8.split.unk8;
            break;

        case ENTITY_ID_GOOMI_DIAGONAL_1:
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + gEntityInfo[slot].unk8.split.unk8;
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + gEntityInfo[slot].unk8.split.unk8;
            break;

        case ENTITY_ID_GOOMI_DIAGONAL_2:
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + gEntityInfo[slot].unk8.split.unk8;
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 - gEntityInfo[slot].unk8.split.unk8;
            break;
    }
}

// 1BB6C
void sub_0801BB6C(u8 slot)
{
    // Called by ENTITY_ID_SPRING
    if (gUnk_03005220.unk46 != 0)
    {
        return;
    }

    if (gUnk_03005220.unk3F != slot)
    {
        return;
    }

    if ((gHeldKeys & gSceneSaveData->jumpButtonConfig) && (gUnk_030034F0 < 30))
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

    if (gEntityInfo[slot].unk8.split.unk8 == 0)
    {
        gEntityInfo[slot].unk8.split.unk8 = gUnk_080D90D0[gEntityInfo[slot].unk8.split.unk9].unk0;
        gUnk_03005220.unk56 = gUnk_080D90D0[gEntityInfo[slot].unk8.split.unk9].unk1_0;
        gUnk_03005220.unk57 = gUnk_080D90D0[gEntityInfo[slot].unk8.split.unk9++].unk1_4;
        if ((gUnk_03005220.unk45 == 0) && (gEntityInfo[slot].unk8.split.unk9 > 6))
        {
            gEntityInfo[slot].unk8.split.unk8 = 0;
        }

        if (gEntityInfo[slot].unk8.split.unk8 == 0)
        {
            gUnk_03005220.unk57 = 0;
            gUnk_03005220.unk56 = 0;
            gUnk_03005220.unk3D = 0;
            gUnk_03005220.unk3F = 0;
            gUnk_03005220.unk45 = 0;
            gUnk_03005220.unk3C = 1;
            gUnk_03005220.klonoaYVel = -0x350;
            gUnk_03005220.unk30 = 0;

            if (gUnk_03005220.unk42 == 0)
            {
                SetEntityAnimationInfoState(0, 2);
            }
            else
            {
                SetEntityAnimationInfoState(0, 0x18);
            }
            m4aSongNumStart(SE_SPRING);
        }
    }
    else
    {
        gUnk_03005220.unk57 = 0;
        gUnk_03005220.unk56 = 0;
    }

    gEntityInfo[slot].unk8.split.unk8 -= 1;
}

// 1BCC0
void sub_0801BCC0(u8 slot)
{
    // Called by ENTITY_ID_HOVER_BOARD_SPRING
    if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[slot].xPosBg2 + 0x27)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[slot].xPosBg2 - 7)) &&
        ((gEntityInfo[0].yPosBg2 - 0x18) < gEntityInfo[slot].yPosBg2) && (gEntityInfo[0].yPosBg2 > (gEntityInfo[slot].yPosBg2 - 0xA)))
    {
        gUnk_03005220.unk16 = 0x400;
        gUnk_03005220.unk18 = 0;
        gUnk_03005220.unk3D = 0;
        gUnk_03005220.unk31 = 0;
        m4aSongNumStart(SE_KLONOA_WAHOO);
        m4aSongNumStart(SE_ARROW_BOUNCE);
        SetEntityAnimationInfoState(0, 2);
        gUnk_03005220.klonoaYVel = -0x600;
        gUnk_03005220.unk3C = 1;
    }
}

// 1BD48
void sub_0801BD48(u8 slot)
{
    // Called by ENTITY_ID_MOVING_PLATFORM_VERTICAL, ENTITY_ID_FOUNTAIN_FOOTHOLD, ENTITY_ID_MOVING_PLATFORM_HORIZONTAL, ENTITY_ID_GRATED_PLATFORM, ENTITY_ID_BLUE_DISAPPEARING_PLATFORM
    u32 var_r7;

    switch (gEntityInfo[slot].id)
    {
        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
            if (gEntityInfo[slot].unk8.split.unk8 < (gEntityInfo[slot].unk8.split.unk9 - 0xA))
            {
                if (gEntityInfo[slot].unkC_4 == 0)
                {
                    gEntityInfo[slot].yPosBg2 -= 1;

                    if (gUnk_03005220.unk3F == slot)
                    {
                        gUnk_03005220.unk57 = -1;
                    }
                }
                else
                {
                    gEntityInfo[slot].yPosBg2 += 1;

                    if (gUnk_03005220.unk3F == slot)
                    {
                        gUnk_03005220.unk57 = 1;
                    }
                }
            }
            else if (gUnk_03005220.unk3F == slot)
            {
                gUnk_03005220.unk57 = 0;
            }

            gEntityInfo[slot].unk8.split.unk8 += 1;
            if (gEntityInfo[slot].unk8.split.unk9 < gEntityInfo[slot].unk8.split.unk8)
            {
                gEntityInfo[slot].unkC_4 ^= 1;
                gEntityInfo[slot].unk8.split.unk8 = 0;
            }

            if (gEntityInfo[slot].unkC_4 != 1)
            {
                break;
            }

            for (var_r7 = gUnk_03003500; var_r7 <= gUnk_03004664; var_r7++)
            {
                if ((gEntityInfo[var_r7].unkF <= 0x1A) && ((gEntityInfo[var_r7].id == ENTITY_ID_MAGNET_BLOCK) || (gEntityInfo[var_r7].id == ENTITY_ID_BOX)))
                {
                    if (((gEntityInfo[slot].xPosBg2 - 0x10) < (gEntityInfo[var_r7].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0x10) > (gEntityInfo[var_r7].xPosBg2 - 0xF)) &&
                        ((gEntityInfo[slot].yPosBg2 - 0x10) < gEntityInfo[var_r7].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r7].yPosBg2 - 0x18)))
                    {
                        gEntityInfo[slot].unkC_4 = 0;
                        gEntityInfo[slot].unk8.split.unk8 = (gEntityInfo[slot].unk8.split.unk9 - 0xA) - gEntityInfo[slot].unk8.split.unk8;
                        break;
                    }
                }
            }
            break;

        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
        case ENTITY_ID_GRATED_PLATFORM:
            if (++gEntityInfo[slot].unk8.split.unk8 < (gEntityInfo[slot].unk8.split.unk9 - 0xA))
            {
                if (gEntityInfo[slot].unkC_4 == 0)
                {
                    gEntityInfo[slot].xPosBg2 += 1;

                    if (gUnk_03005220.unk3F == slot)
                    {
                        gUnk_03005220.unk56 = 1;
                    }
                }
                else
                {
                    gEntityInfo[slot].xPosBg2 -= 1;

                    if (gUnk_03005220.unk3F == slot)
                    {
                        gUnk_03005220.unk56 |= -1;
                    }
                }
            }
            else if (gUnk_03005220.unk3F == slot)
            {
                gUnk_03005220.unk56 = 0;
            }

            if (gEntityInfo[slot].unk8.split.unk9 < gEntityInfo[slot].unk8.split.unk8)
            {
                gEntityInfo[slot].unkC_4 ^= 1;
                gEntityInfo[slot].unk8.split.unk8 = 0;
            }

            if (gEntityInfo[slot].unk8.split.unk8 >= (gEntityInfo[slot].unk8.split.unk9 - 0xA))
            {
                break;
            }

            for (var_r7 = gUnk_03003500; var_r7 <= gUnk_03004664; var_r7++)
            {
                if ((gEntityInfo[var_r7].unkF <= 0x1A) && ((gEntityInfo[var_r7].id == ENTITY_ID_MAGNET_BLOCK) || (gEntityInfo[var_r7].id == ENTITY_ID_BOX)))
                {
                    if (((gEntityInfo[slot].xPosBg2 - 0x12) < (gEntityInfo[var_r7].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 0x12) > (gEntityInfo[var_r7].xPosBg2 - 0xF)) &&
                        ((gEntityInfo[slot].yPosBg2 - 0x10) < gEntityInfo[var_r7].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r7].yPosBg2 - 0x18)))
                    {
                        if (gEntityInfo[slot].xPosBg2 > gEntityInfo[var_r7].xPosBg2)
                        {
                            if (gEntityInfo[slot].unkC_4 != 0)
                            {
                                gEntityInfo[slot].unkC_4 = 0;
                                gEntityInfo[slot].unk8.split.unk8 = ((gEntityInfo[slot].unk8.split.unk9 - 0xA) - gEntityInfo[slot].unk8.split.unk8) - 1;
                            }
                        }
                        else
                        {
                            if (gEntityInfo[slot].unkC_4 != 1)
                            {
                                gEntityInfo[slot].unkC_4 = 1;
                                gEntityInfo[slot].unk8.split.unk8 = ((gEntityInfo[slot].unk8.split.unk9 - 0xA) - gEntityInfo[slot].unk8.split.unk8) - 1;
                            }
                        }
                        break;
                    }
                }
            }
            break;

        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
            if (gEntityInfo[slot].unk8.split.unk8 < (gEntityInfo[slot].unk8.split.unk9 - 0x28))
            {
                if (gEntityInfo[slot].unkC_4 == 0)
                {
                    gEntityInfo[slot].yPosBg2 -= 1;
                    gEntityInfo[slot + 1].yPosBg2 -= 1;

                    if (gUnk_03005220.unk3F == slot)
                    {
                        gUnk_03005220.unk57 = -1;
                    }
                }
                else
                {
                    gEntityInfo[slot].yPosBg2 += 1;
                    gEntityInfo[slot + 1].yPosBg2 += 1;

                    if (gUnk_03005220.unk3F == slot)
                    {
                        gUnk_03005220.unk57 = 1;
                    }
                }
            }
            else if (gUnk_03005220.unk3F == slot)
            {
                gUnk_03005220.unk57 = 0;
            }

            gEntityInfo[slot].unk8.split.unk8 += 1;
            if (gEntityInfo[slot].unk8.split.unk9 < gEntityInfo[slot].unk8.split.unk8)
            {
                gEntityInfo[slot].unkC_4 ^= 1;
                gEntityInfo[slot].unk8.split.unk8 = 0;
            }
            break;

        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                if (gEntityInfo[slot].unkF != 0x19)
                {
                    if (gEntityInfo[slot].unk8.split.unk8 < 40)
                    {
                        var_r7 = 4;
                    }
                    else if (gEntityInfo[slot].unk8.split.unk8 < 80)
                    {
                        var_r7 = 2;
                    }
                    else if (gEntityInfo[slot].unk8.split.unk8 > 200)
                    {
                        var_r7 = 2;
                    }
                    else if (gEntityInfo[slot].unk8.split.unk8 > 231)
                    {
                        var_r7 = 4;
                    }
                    else
                    {
                        var_r7 = 1;
                    }

                    if ((gEntityInfo[slot].unk8.split.unk8 & var_r7) == 0)
                    {
                        gEntityInfo[slot].unkF = 0x1A;
                        gEntityInfo[slot].visible = 0;
                    }
                    else
                    {
                        gEntityInfo[slot].unkF = 0;
                        gEntityInfo[slot].visible = 1;
                    }
                }

                if (++gEntityInfo[slot].unk8.split.unk8 == 0x65)
                {
                    if (gUnk_03005220.unk3F == slot)
                    {
                        gUnk_03005220.unk3F = 0;
                    }

                    gEntityInfo[slot].unkF = 0x19;
                    gEntityInfo[slot].visible = 0;
                }
                else if (gEntityInfo[slot].unk8.split.unk8 == 0xE7)
                {
                    gEntityInfo[slot].unkF = 0x1A;
                    gEntityInfo[slot].visible = 0;
                }
            }
            break;
    }
}

// 1C150
void sub_0801C150(u8 slot)
{
    // Called by ENTITY_ID_PRESSURE_SWITCH, ENTITY_ID_WATER_SWITCH, ENTITY_ID_GATE_SWITCH, ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH
    s32 var_r4;
    s32 var_r5;
    u16 var_r8;
    u16 var_sb;
    u32 var_r6;

    if (gEntityInfo[slot].unk8.split.unk8 != 0)
    {
        gEntityInfo[slot].unk8.split.unk8 -= 1;
    }

    switch (gEntityInfo[slot].id)
    {
        case ENTITY_ID_WATER_SWITCH:
            if (gEntityInfo[slot + 1].unk8.split.unk8 == 0)
            {
                break;
            }

            gEntityInfo[slot + 1].unk8.split.unk8 -= 1;
            gEntityInfo[slot + 3].unk8.split.unk8 = gEntityInfo[slot + 2].unk8.split.unk8 = gEntityInfo[slot + 1].unk8.split.unk8;

            if (gEntityInfo[slot + 1].unkC_4 == 0)
            {
                gEntityInfo[slot + 1].yPosBg2 -= 1;
                gEntityInfo[slot + 2].yPosBg2 -= 1;
                gEntityInfo[slot + 3].yPosBg2 -= 1;
            }
            else
            {
                gEntityInfo[slot + 1].yPosBg2 += 1;
                gEntityInfo[slot + 2].yPosBg2 += 1;
                gEntityInfo[slot + 3].yPosBg2 += 1;
            }
            break;

        case ENTITY_ID_GATE_SWITCH:
            if (gEntityInfo[slot].yPosBg2 & 1)
            {
                if (gEntityInfo[slot].unk14 != 0)
                {
                    gEntityInfo[slot].unk14 += 1;
                    if (gEntityInfo[slot].unk14 > 0x87)
                    {
                        DmaCopy16(3, &gUnk_080635E8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x80);
                        gEntityInfo[slot].unkC_4 = 0;
                        gUnk_030034E0 -= 1;
                        gEntityInfo[slot].unk14 = 0;
                        gEntityInfo[slot].unk8.split.unk8 = 0;
                        m4aSongNumStart(SE_MULTI_SWITCH_RESET);
                        break;
                    }
                }
            }

            if (gEntityInfo[slot].unk8.split.unk9 != 1)
            {
                break;
            }

            if ((gEntityInfo[slot].yPosBg2 & 1) && (gEntityInfo[slot + 1].unk8.split.unk8 == 0xFF))
            {
                DmaCopy16(3, &gUnk_080B9068, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x80);
                DmaCopy16(3, &gUnk_080B9068, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xE].tileNum * 0x20), 0x80);
                DmaCopy16(3, &gUnk_080B9068, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xF].tileNum * 0x20), 0x80);

                gEntityInfo[slot - 1].unk14 = gEntityInfo[slot - 2].unk14 = 0;
                gEntityInfo[slot].unk14 = 0;
            }

            if (gEntityInfo[slot + 1].unk8.split.unk8 == 0)
            {
                break;
            }
            gEntityInfo[slot + 1].unk8.split.unk8 -= 1;

            if (gEntityInfo[slot + 1].unkC_4 == 0)
            {
                gEntityInfo[slot + 1].yPosBg2 -= 1;
            }
            else if (gEntityInfo[slot + 1].unkC_4 == 1)
            {
                gEntityInfo[slot + 1].yPosBg2 += 1;
            }

            if (gEntityInfo[slot + 1].unk8.split.unk8 == (gEntityInfo[slot + 1].unk8.split.unk9 - 0x20))
            {
                gEntityInfo[slot + 1].unkC_4 = 2;
                if (gEntityInfo[slot + 1].unk8.split.unk9 == 0xFF)
                {
                    gEntityInfo[slot + 1].unkF = 0x1C;
                    gEntityInfo[slot + 1].visible = 0;
                    gUnk_03005220.unk1_7 |= 1 << gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xC].unk0[gUnk_03004C20.room - 1].unk5;
                }
                break;
            }

            if (gEntityInfo[slot + 1].unk8.split.unk9 == 0xFF)
            {
                break;
            }

            if (gEntityInfo[slot + 1].unk8.split.unk8 == 32)
            {
                gEntityInfo[slot + 1].unkC_4 = 1;
                m4aSongNumStart(SE_GATE_OPEN_CLOSE);
            }
            else if (gEntityInfo[slot + 1].unk8.split.unk8 == 0)
            {
                gEntityInfo[slot + 1].unkC_4 = 0;
                gUnk_030034E0 = 0;
                var_r5 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5 - 1;
                while (var_r5 >= 0)
                {
                    gEntityInfo[slot - var_r5].unkC_4 = 0;
                    DmaCopy16(3, &gUnk_08061FC8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - var_r5 - 0xD].tileNum * 0x20), 0x80);
                    var_r5 -= 1;
                }
            }
            break;

        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
            if (gEntityInfo[slot].unk8.split.unk9 != 0)
            {
                gEntityInfo[slot].unk8.split.unk9 -= 1;
            }
            break;

        case ENTITY_ID_PRESSURE_SWITCH:
            // Can get rid of goto, but much doing so is much uglier
            for (var_r6 = 0; var_r6 <= gUnk_030008FC; var_r6++)
            {
                s32 flag;
                loop:
                if ((gEntityInfo[var_r6].unkF > 0x1A) || (gEntityInfo[var_r6].unkF == 0x19))
                {
                    if (gEntityInfo[slot].unk8.split.unk9 == var_r6)
                    {
                        gEntityInfo[slot].unk8.split.unk9 = 0xFF;
                        gEntityInfo[slot].yPosBg2 -= 4;
                    }
                    continue;
                }

                if ((gEntityInfo[var_r6].id == ENTITY_ID_BOX) || (gEntityInfo[var_r6].id == ENTITY_ID_MAGNET_BLOCK))
                {
                    var_sb = -0xF;
                    var_r8 = -0x7;
                }
                else
                {
                    var_r8 = -0xC;
                    var_sb = -0xC;
                }

                if (gEntityInfo[slot].unk8.split.unk9 == 0xFF)
                {
                    var_r4 = 0;
                }
                else
                {
                    var_r4 = 4;
                }

                if (((u16) (var_sb + gEntityInfo[var_r6].xPosBg2) < (gEntityInfo[slot].xPosBg2 + 0x10)) && ((u16) (gEntityInfo[var_r6].xPosBg2 - var_r8) > (gEntityInfo[slot].xPosBg2 - 0x10)))
                {
                    if (((gEntityInfo[var_r6].yPosBg2 - 0x18) < gEntityInfo[slot].yPosBg2) && (gEntityInfo[var_r6].yPosBg2 > (gEntityInfo[slot].yPosBg2 - 4 - var_r4)))
                    {
                        if (gEntityInfo[slot].unk8.split.unk9 == 0xFF)
                        {
                            gEntityInfo[slot].yPosBg2 += 4;
                            gEntityInfo[slot].unk8.split.unk9 = var_r6;
                            return;
                        }
                        flag = 0;
                    }
                    else
                    {
                        flag = 1;
                    }
                }
                else
                {
                    flag = 1;
                }

                if (flag)
                {
                    if (gEntityInfo[slot].unk8.split.unk9 == var_r6)
                    {
                        gEntityInfo[slot].unk8.split.unk9 = 0xFF;
                        gEntityInfo[slot].yPosBg2 -= 4;
                        var_r6 = 0;
                        goto loop;
                    }
                }

                if (var_r6 == 0)
                {
                    var_r6 = gUnk_03002904 - 1;
                }
            }

            if (gEntityInfo[slot].unk8.split.unk9 != 0xFF)
            {
                if (gEntityInfo[slot + 1].unk8.split.unk8 < 0x20)
                {
                    if (gEntityInfo[slot + 1].unk8.split.unk8 == 0)
                    {
                        m4aSongNumStart(SE_GATE_OPEN_CLOSE);
                    }
                    gEntityInfo[slot + 1].unk8.split.unk8 += 1;
                    gEntityInfo[slot + 1].yPosBg2 -= 1;
                }
            }
            else
            {
                if (gEntityInfo[slot + 1].unk8.split.unk8 != 0)
                {
                    if (gEntityInfo[slot + 1].unk8.split.unk8 == 0x20)
                    {
                        m4aSongNumStart(SE_GATE_OPEN_CLOSE);
                    }
                    gEntityInfo[slot + 1].unk8.split.unk8 -= 1;
                    gEntityInfo[slot + 1].yPosBg2 += 1;
                }
            }
            break;
    }
}

// 1C6EC
void sub_0801C6EC(u8 slot)
{
    // Called by ENTITY_ID_WATERFALL
    u32 var_r7;

    for (var_r7 = gUnk_030034A4; var_r7 <= gUnk_030052B0; var_r7++)
    {
        if ((gEntityInfo[var_r7].unkF <= 0x1A) && ((gEntityInfo[var_r7].id == ENTITY_ID_BOX) || (gEntityInfo[var_r7].id == ENTITY_ID_MAGNET_BLOCK) || (gEntityInfo[var_r7].id >= ENTITY_ID_MOO)))
        {
            if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[var_r7].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[var_r7].xPosBg2 - 0xF)) &&
                ((gEntityInfo[slot].yPosBg2 - 0x40) < gEntityInfo[var_r7].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r7].yPosBg2 - 0x18)))
            {
                gEntityInfo[slot].yPosBg2 = gEntityInfo[var_r7].yPosBg2 + -0x17;
                gEntityInfo[slot].unk8.split.unk8 = 1;
                if ((gEntityInfo[var_r7].unkF == 0x13) && (gUnk_03000810 == 0))
                {
                    m4aSongNumStart(SE_WATERFALL_HITTING_OBJECT);
                    gUnk_03000810 = 1;
                }
                break;
            }
        }
    }

    if (gEntityInfo[slot].unk8.split.unk8 != 0)
    {
        gEntityInfo[slot].yPosBg2 += 1;
        if (gEntityInfo[slot].yPosBg2 == gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2)
        {
            gEntityInfo[slot].unk8.split.unk8 = 0;
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
void sub_0801C82C(u8 slot)
{
    // Called by ENTITY_ID_SCALE_1
    u32 var_r6;
    u8 var_r1;
    u32 sp0;
    u32 tmp;
    s32 flag;

    gEntityInfo[slot].unkC_4 = 0;

    for (var_r1 = 0; var_r1 < 3; var_r1++)
    {
        if (slot == gUnk_03003610[var_r1].unk0)
        {
            break;
        }
        else if (slot == gUnk_03003610[var_r1].unk1)
        {
            break;
        }
    }

    if (slot == gUnk_03003610[var_r1].unk0)
    {
        tmp = gUnk_03003610[var_r1].unk1;
    }
    else
    {
        tmp = gUnk_03003610[var_r1].unk0;
    }
    sp0 = tmp;
    
    if (((gEntityInfo[slot - 1].xPosBg2 - 0xC) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((gEntityInfo[slot - 1].xPosBg2 + 0xC) > (gEntityInfo[0].xPosBg2 - 0xC)) &&
        ((gEntityInfo[slot - 1].yPosBg2 - 8) < (gEntityInfo[0].yPosBg2 + 1)) && ((gEntityInfo[slot - 1].yPosBg2 - 8) > (gEntityInfo[0].yPosBg2 - 0x18)))
    {
        gEntityInfo[slot].unkC_4 += 1;
    }

    for (var_r6 = gUnk_030047BC; var_r6 <= gUnk_030007D4; var_r6++)
    {
        if (gEntityInfo[var_r6].unkF <= 0x1A)
        {
            switch (gEntityInfo[var_r6].id)
            {
                case ENTITY_ID_BOX:
                case ENTITY_ID_MAGNET_BLOCK:
                    if (((gEntityInfo[slot - 1].xPosBg2 - 0xC) < (gEntityInfo[var_r6].xPosBg2 + 7)) && ((gEntityInfo[slot - 1].xPosBg2 + 0xC) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                        ((gEntityInfo[slot - 1].yPosBg2 - 8) < (gEntityInfo[var_r6].yPosBg2 + 1)) && ((gEntityInfo[slot - 1].yPosBg2 - 8) > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                    {
                        gEntityInfo[slot].unkC_4 += 2;
                    }
                    break;

                case ENTITY_ID_BOOMIE:
                case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
                case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
                    if (((gEntityInfo[slot - 1].xPosBg2 - 0xC) < (gEntityInfo[var_r6].xPosBg2 + 4)) && (gEntityInfo[slot - 1].xPosBg2 + 0xC) > (gEntityInfo[var_r6].xPosBg2 - 4) &&
                        ((gEntityInfo[slot - 1].yPosBg2 - 8) < (gEntityInfo[var_r6].yPosBg2 + 1)) && ((gEntityInfo[slot - 1].yPosBg2 - 8) > (gEntityInfo[var_r6].yPosBg2 - 0x14)))
                    {
                            gEntityInfo[slot].unkC_4 += 1;
                    }
                    break;
            }
        }
    }

    if (gEntityInfo[slot].unkC_4 != 0)
    {
        if (((gEntityInfo[slot - 1].xPosBg2 - 0xC) < (gEntityInfo[0].xPosBg2 + 0x14)) && ((gEntityInfo[slot - 1].xPosBg2 + 0xC) > (gEntityInfo[0].xPosBg2 - 0x14)) &&
            ((gEntityInfo[slot - 1].yPosBg2 - 8) < (gEntityInfo[0].yPosBg2 + 0x1A)) && ((gEntityInfo[slot - 1].yPosBg2 - 8) > (gEntityInfo[0].yPosBg2 + 1)))
        {
            gEntityInfo[slot].unkC_4 += 1;
        }

        for (var_r6 = gUnk_030047F8; var_r6 <= gUnk_03003504; var_r6++)
        {
            if (gEntityInfo[var_r6].unkF <= 0x1A)
            {
                switch (gEntityInfo[var_r6].id)
                {
                    case ENTITY_ID_MAGNET_BLOCK:
                    case ENTITY_ID_BOX:
                        if (((gEntityInfo[slot - 1].xPosBg2 - 0xC) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((gEntityInfo[slot - 1].xPosBg2 + 0xC) > (gEntityInfo[var_r6].xPosBg2 - 0x17)) &&
                            ((gEntityInfo[slot - 1].yPosBg2 - 8) < (gEntityInfo[var_r6].yPosBg2 + 0x1A)) && ((gEntityInfo[slot - 1].yPosBg2 - 8) > (gEntityInfo[var_r6].yPosBg2 + 1)))
                        {
                            gEntityInfo[slot].unkC_4 += 2;
                        }
                        break;

                    case ENTITY_ID_MOO:
                    case ENTITY_ID_FLYING_MOO_HORIZONTAL:
                    case ENTITY_ID_FLYING_MOO_VERTICAL:
                    case ENTITY_ID_BOOMIE:
                    case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
                    case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
                        if (((gEntityInfo[slot - 1].xPosBg2 - 0xC) < (gEntityInfo[var_r6].xPosBg2 + 0xC)) && ((gEntityInfo[slot - 1].xPosBg2 + 0xC) > (gEntityInfo[var_r6].xPosBg2 - 0xC)) &&
                            ((gEntityInfo[slot - 1].yPosBg2 - 8) < (gEntityInfo[var_r6].yPosBg2 + 0x1A)) && ((gEntityInfo[slot - 1].yPosBg2 - 8) > (gEntityInfo[var_r6].yPosBg2 + 5)))
                        {
                            gEntityInfo[slot].unkC_4 += 1;
                        }
                        break;
                }
            }
        }
    }

    if (gEntityInfo[slot].unkC_4 == gEntityInfo[sp0].unkC_4)
    {
        s32 flag1;
        if (gUnk_03003610[var_r1].unk2 == 1)
        {
            gUnk_03003610[var_r1].unk3 += 1;
            if (gUnk_03003610[var_r1].unk3 >= 0x32)
            {
                gUnk_03003610[var_r1].unk3 = 0x32;
                flag1 = 1;
            }
            else
            {
                flag1 = 0;
            }
        }
        else
        {
            flag1 = 1;
        }
        if (flag1)
        {
            gUnk_03003610[var_r1].unk2 = 1;
            if (gEntityInfo[slot].unk8.split.unk8 > (gEntityInfo[sp0].unk8.split.unk8 + 1))
            {
                gEntityInfo[slot].unkC_4 = 0xF;
            }
            else if (gEntityInfo[slot].unk8.split.unk8 < (gEntityInfo[sp0].unk8.split.unk8 - 1))
            {
                gEntityInfo[sp0].unkC_4 = 0xF;
            }
            flag = 1;
        }
        else
        {
            flag = 0;
        }
    }
    else
    {
        gUnk_03003610[var_r1].unk3 = 0;
        gUnk_03003610[var_r1].unk2 = 0;
        flag = 1;
    }
    if (flag)
    {
        s32 flag1;
        if (gEntityInfo[gUnk_03003610[var_r1].unk0].unkC_4 == gEntityInfo[gUnk_03003610[var_r1].unk1].unkC_4)
        {
            if (gUnk_03005220.unk3F == (slot - 1))
            {
                gUnk_03005220.unk57 = 0;
            }
            flag1 = 0;
        }
        else if (gEntityInfo[slot].unkC_4 < gEntityInfo[sp0].unkC_4)
        {
            if (gEntityInfo[slot].unk8.split.unk8 == 0xFE)
            {
                gEntityInfo[sp0].unk8.split.unk8 = 2;
                goto block_96;
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk8 += 1;
                flag1 = 1;
            }
        }
        else if (gEntityInfo[slot].unk8.split.unk8 == 2)
        {
            gEntityInfo[sp0].unk8.split.unk8 = 0xFE;
            goto block_96;
        }
        else
        {
            gEntityInfo[slot].unk8.split.unk8 -= 1;
            flag1 = 1;
        }
        if (flag1)
        {
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + ((u8)-gEntityInfo[slot].unk8.split.unk8 >> 3);
            if (gUnk_03005220.unk3F == slot - 1)
            {
                if (gEntityInfo[slot - 1].yPosBg2 != (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xE].unk0[gUnk_03004C20.room - 1].unk2 + ((u8)-gEntityInfo[slot].unk8.split.unk8 >> 2)))
                {
                    if (gEntityInfo[slot].unkC_4 > gEntityInfo[sp0].unkC_4)
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
            gEntityInfo[slot - 1].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xE].unk0[gUnk_03004C20.room - 1].unk2 + ((u8)-gEntityInfo[slot].unk8.split.unk8 >> 2);
            if (gUnk_03003610[var_r1].unk0 == slot)
            {
                gEntityInfo[gUnk_03003610[var_r1].unk1].unkC_4 = gEntityInfo[slot].unkC_4 ^ 1;
            }
            else
            {
                gEntityInfo[gUnk_03003610[var_r1].unk0].unkC_4 = gEntityInfo[slot].unkC_4 ^ 1;
            }

            // TODO: fix this mess
            goto skip;
            block_96:
            if (gUnk_03005220.unk3F == (slot - 1))
            {
                gUnk_03005220.unk57 = 0;
            }
            goto exit;
            skip:
            
            gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd = MultiplyQ8(0x100, ReciprocalQ8(gEntityInfo[slot].unk8.split.unk8));
        }
    }

    exit:
    if (sp0 < slot)
    {
        gEntityInfo[slot].unk8.split.unk8 = -gEntityInfo[sp0].unk8.split.unk8;
    }
}

// 1CE38
void sub_0801CE38(u8 slot)
{
    // Called by ENTITY_ID_CIRCLE_KEY, ENTITY_ID_TRIANGLE_KEY, ENTITY_ID_HEART_KEY
    s32 var_r3;

    if (gEntityInfo[slot].unkF == 0)
    {
        if ((gUnk_03004C20.roomsRotationBits >> ((gUnk_03004C20.room - 1) * 2)) & 3)
        {
            RoomRotationUpdateEntityPosition(slot);
            gEntityInfo[slot].xPosBg2 += SIN((gUnk_03004C20.sceneFrameCounter % 0x80) * 2) >> 0x6;
            gEntityInfo[slot].yPosBg2 += COS((gUnk_03004C20.sceneFrameCounter % 0x80) * 2) >> 0x6;
        }
        else
        {
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0 + (SIN((gUnk_03004C20.sceneFrameCounter % 0x80) * 2) >> 6);
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + (COS((gUnk_03004C20.sceneFrameCounter % 0x80) * 2) >> 6);
        }
    }
    else if (gEntityInfo[slot].unkF == 0x12)
    {
        if (gEntityInfo[slot].unk8.split.unk9 == 1)
        {
            gEntityInfo[slot].unkF = 0x1C;
            gEntityInfo[slot].visible = 0;
            return;
        }

        gEntityInfo[slot].unk8.split.unk8 += 0x10;
        if (gEntityInfo[slot].unk8.split.unk8 == 0)
        {
            gEntityInfo[slot].unk8.split.unk9 -= 1;
            if (gEntityInfo[slot].unk8.split.unk9 == 1)
            {
                if (gEntityInfo[slot].id == ENTITY_ID_CIRCLE_KEY)
                {
                    var_r3 = 0;
                }
                else if (gEntityInfo[slot].id == ENTITY_ID_TRIANGLE_KEY)
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

        if ((gUnk_03004C20.roomsRotationBits >> ((gUnk_03004C20.room - 1) * 2)) & 3)
        {
            RoomRotationUpdateEntityPosition(slot);
            gEntityInfo[slot].xPosBg2 -= SIN(gEntityInfo[slot].unk8.split.unk8) >> gEntityInfo[slot].unk8.split.unk9;
            gEntityInfo[slot].yPosBg2 += COS(gEntityInfo[slot].unk8.split.unk8) >> gEntityInfo[slot].unk8.split.unk9;
        }
        else
        {
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0 - (SIN(gEntityInfo[slot].unk8.split.unk8) >> gEntityInfo[slot].unk8.split.unk9);
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + (COS(gEntityInfo[slot].unk8.split.unk8) >> gEntityInfo[slot].unk8.split.unk9);
        }
    }
}

// 1D0D8
void sub_0801D0D8(u8 slot)
{
    // Called by ENTITY_ID_LEAF_1, ENTITY_ID_LEAF_2
    u32 var_r6;
    u32 var_sb;

    if (gUnk_03004C20.level != 8)
    {
        if (gEntityInfo[slot].xPosBg2 < (gBgInfo[2].hOfs - 8))
        {
            return;
        }
        if ((gBgInfo[2].hOfs + 0xF8) < gEntityInfo[slot].xPosBg2)
        {
            return;
        }
    }

    gEntityInfo[slot].yPosBg2 -= gEntityInfo[slot].unk8.split.unk9;
    if (gEntityInfo[slot].id == ENTITY_ID_LEAF_1)
    {
        var_sb = 0;

        if ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk0 < (gEntityInfo[0].xPosBg2 + 0xC)) && (gUnk_03000790[gEntityInfo[slot].unkC_4].unk2 > (gEntityInfo[0].xPosBg2 - 0xC)) &&
            ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 + 0x10) < gEntityInfo[0].yPosBg2) && (gUnk_03000790[gEntityInfo[slot].unkC_4].unk6 > (gEntityInfo[0].yPosBg2 - 0x18)) &&
            ((gUnk_03005220.unk34 | gUnk_03005220.unk39) == 0))
        {
            gUnk_030034C4 += 1;
            if (gUnk_030034C4 >= 0x32)
            {
                gUnk_030034C4 = 0x32;
                if (thunk_GetRandomValue() <= 8)
                {
                    if ((gUnk_03004C20.globalFrameCounter % 4) == 0)
                    {
                        m4aSongNumStart(SE_WIND_GUST_3);
                        gUnk_030034C4 = 0;
                    }
                    else if ((gUnk_03004C20.globalFrameCounter % 4) == 1)
                    {
                        m4aSongNumStart(SE_WIND_GUST_2);
                        gUnk_030034C4 = 0;
                    }
                    else
                    {
                        m4aSongNumStart(SE_WIND_GUST_1);
                        gUnk_030034C4 = 0;
                    }
                }
            }

            if ((gEntityInfo[gUnk_03005220.unk42].id == ENTITY_ID_BOX) || (gEntityInfo[gUnk_03005220.unk42].id == ENTITY_ID_MAGNET_BLOCK))
            {
                gUnk_03005220.unk3A = 0;
                gUnk_03005220.unk53 = 1;
            }
            else
            {
                gUnk_03005220.unk30 = 1;

                if ((gUnk_03005220.unk3B | gUnk_03005220.unk46) == 0)
                {
                    gUnk_03005220.unk3A = gEntityInfo[slot].unkC_4 + 1;

                    if (gUnk_03005220.unk3D != 0)
                    {
                        m4aSongNumStart(SE_SILENCE_1);
                        gUnk_03005220.unk3D = 0;
                    }

                    if ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk0 + 0x10) > gEntityInfo[0].xPosBg2)
                    {
                        gEntityInfo[0].xPosBg2 += 1;
                    }
                    else if ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk0 + 0x10) < gEntityInfo[0].xPosBg2)
                    {
                        gEntityInfo[0].xPosBg2 -= 1;
                    }
                }
            }
        }
        else
        {
            gUnk_03005220.unk53 = 0;
            if (gUnk_03005220.unk3A == (gEntityInfo[slot].unkC_4 + 1))
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
                switch (gEntityInfo[var_r6].id)
                {
                    case ENTITY_ID_BOX:
                    case ENTITY_ID_MAGNET_BLOCK:
                        if ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk0 < (gEntityInfo[var_r6].xPosBg2 + 8)) && (gUnk_03000790[gEntityInfo[slot].unkC_4].unk2 > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                            ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 - 8) < gEntityInfo[var_r6].yPosBg2) && (gUnk_03000790[gEntityInfo[slot].unkC_4].unk6 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                        {
                            if (gEntityInfo[var_r6].yPosBg2 > (gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 - 8))
                            {
                                gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 = gEntityInfo[var_r6].yPosBg2;

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

                    case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                        if ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk0 < (gEntityInfo[var_r6].xPosBg2 + 0x10)) && (gUnk_03000790[gEntityInfo[slot].unkC_4].unk2 > (gEntityInfo[var_r6].xPosBg2 - 0x10)) &&
                            ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 - 8) < gEntityInfo[var_r6].yPosBg2) && (gUnk_03000790[gEntityInfo[slot].unkC_4].unk6 > (gEntityInfo[var_r6].yPosBg2 - 0x10)))
                        {
                            if ((gEntityInfo[var_r6].yPosBg2 > (gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 - 8)))
                            {
                                gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 = gEntityInfo[var_r6].yPosBg2;
                                var_sb = 1;
                            }
                        }
                        break;

                    case ENTITY_ID_GROWN_BLOCK:
                    case ENTITY_ID_EXPLODABLE_BLOCK:
                        if ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk0 < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && (gUnk_03000790[gEntityInfo[slot].unkC_4].unk2 > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                            ((gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 - 8) < gEntityInfo[var_r6].yPosBg2) && (gUnk_03000790[gEntityInfo[slot].unkC_4].unk6 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                        {
                            if ((gEntityInfo[var_r6].yPosBg2 > (gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 - 8)))
                            {
                                gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 = gEntityInfo[var_r6].yPosBg2;
                                var_sb = 1;
                            }
                        }
                        break;
                }
            }
        }

        if (var_sb == 0)
        {
            gUnk_03000790[gEntityInfo[slot].unkC_4].unk4 = gUnk_03000790[gEntityInfo[slot].unkC_4].unk8;
        }
    }

    if ((gEntityInfo[slot].yPosBg2 <= gUnk_03000790[gEntityInfo[slot].unkC_4].unk4) || ((gEntityInfo[slot].yPosBg2 <= gBgInfo[2].vOfs) && (gUnk_03004C20.level != 8)))
    {
        gEntityInfo[slot].unk8.split.unk8 = thunk_GetRandomValueEx() & 7;
        gEntityInfo[slot].yPosBg2 = gUnk_03000790[gEntityInfo[slot].unkC_4].unk6;

        if (gEntityInfo[slot].unk8.split.unk8 == 4)
        {
            gEntityInfo[slot].unk8.split.unk9 = 0x14;
        }
        else
        {
            gEntityInfo[slot].unk8.split.unk9 = gEntityInfo[slot].unk8.split.unk8 + 4;
        }
    }
}

// 1D4AC
void sub_0801D4AC(u8 slot)
{
    // Called by ENTITY_ID_GROWN_BLOCK, ENTITY_ID_EXPLODABLE_BLOCK
    u8 var_r1;
    u32 var_r3;

    if (gEntityInfo[slot].id == ENTITY_ID_EXPLODABLE_BLOCK)
    {
        if (gEntityInfo[slot].unk8.split.unk9 == 0)
        {
            return;
        }

        if (gUnk_03004C20.globalFrameCounter & 2)
        {
            gEntityInfo[slot].unkF = 0x1A;
            gEntityInfo[slot].visible = 0;
        }
        else
        {
            gEntityInfo[slot].unkF = 0;
            gEntityInfo[slot].visible = 1;
        }

        if (gEntityInfo[slot].unk8.split.unk9 <= 0x13)
        {
            gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd += 0x46;
            gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pb += 0x23;
            gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa -= 0x14;
        }
        else if (gEntityInfo[slot].unk8.split.unk9 <= 0x27)
        {
            gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa += 0x23;
            gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pc += 0x14;
        }
        else
        {
            gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd - 1;
        }

        gEntityInfo[slot].unk8.split.unk9 -= 1;
        if (gEntityInfo[slot].unk8.split.unk9 == 0)
        {
            sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, slot);
        }
        return;
    }
    
    if (slot == gUnk_030047B8)
    {
        var_r1 = 1;
    }
    else
    {
        var_r1 = 0;
    }

    var_r1 ^= gSceneSaveData->pressedGrowingShrinkingBlockSwitch;
    if (gUnk_03005220.pressedGrowingShrinkingBlockSwitch != (var_r1 ^ gEntityInfo[slot].unkC_4))
    {
        if (gEntityInfo[slot].unkC_4 == 1)
        {
            if (gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa < 0x200)
            {
                gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd + 8;
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

            for (var_r3 = var_r1; (var_r3 < gEntitySlotCount) && (gEntityInfo[var_r3].id == ENTITY_ID_GROWN_BLOCK); var_r3++)
            {
                if (gEntityInfo[slot].affineHFlip_matrixNum == gEntityInfo[var_r3].affineHFlip_matrixNum)
                {
                    gEntityInfo[var_r3].unkC_4 = 0;
                    gEntityInfo[var_r3].visible = 0;
                    gEntityInfo[var_r3].unkF = 0x1C;
                }
            }
        }
        else
        {
            if (gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa > 0x100)
            {
                gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd - 8;
            }
            else
            {
                gEntityInfo[slot].unkC_4 = 1;
            }
        }
    }
}

// These are set but never read
extern s32 gUnk_030034D0;
extern s32 gUnk_03003628;
extern s32 gUnk_03004D88;

// 1D6B0
void sub_0801D6B0(u8 slot)
{
    // Called by ENTITY_ID_MAGNET_BLOCK_HAND
    u8 sp0;
    s32 sp8;
    s32 spC;
    u32 var_ip;
    u8 temp_r3_6;

    sp0 = slot + gUnk_03004C38;
    sp8 = gEntityInfo[sp0].xPosBg2;
    spC = gEntityInfo[sp0].yPosBg2;
    if (gUnk_03005220.unk59 != 0)
    {
        gUnk_03005220.unk59 -= 1;
    }
    else
    {
        if ((gEntityInfo[sp0].unkF >= 10) && ((gEntityInfo[sp0].unkF != 0x13) || (gUnk_03005220.unk43 != 0)))
        {
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

                if (((gEntityInfo[sp0].xPosBg2 - 0xD) < (gEntityInfo[var_ip].xPosBg2 + 7)) && ((gEntityInfo[sp0].xPosBg2 + 5) > (gEntityInfo[var_ip].xPosBg2 - 0xF)) &&
                    ((gEntityInfo[sp0].yPosBg2 - 0x30) < gEntityInfo[var_ip].yPosBg2) && ((gEntityInfo[sp0].yPosBg2 - 0x18) > (gEntityInfo[var_ip].yPosBg2 - 0x18)))
                {
                    if (gEntityInfo[sp0].unk8.split.unk9 != 0)
                    {
                        continue;
                    }
                    gEntityInfo[slot].unkC_4 = 1;
    block_25:
                    gEntityInfo[sp0].unk16 = 0;
                    gEntityInfo[sp0].unk8.split.unk9 = var_ip;
                    gEntityInfo[sp0].unkF = 0xA;
                    SetEntityAnimationInfoState(slot, 0);
                    m4aSongNumStart(SE_MAGNET_BLOCK_HAND_GRAB);
                    if (gUnk_03005220.unk42 == sp0)
                    {
                        gUnk_03005220.unk3C = 0;
                        gUnk_03005220.unk39 = 1;
                        gUnk_03005220.klonoaXVel = 0;
                        gUnk_03005220.klonoaYVel = 0;
                        gUnk_03005220.unk45 = 0;
                        gUnk_03005220.unk3F = sp0;
                        SetEntityAnimationInfoState(0, 0xE);
                        if (gEntityInfo[slot].unkC_4 == 1)
                        {
                            gEntityInfo[0].xPosBg2 = gEntityInfo[sp0].xPosBg2 - 4;
                        }
                        else if (gEntityInfo[slot].unkC_4 == 2)
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

                if (((gEntityInfo[sp0].xPosBg2 - 0x1F) < (gEntityInfo[var_ip].xPosBg2 + 7)) && ((gEntityInfo[sp0].xPosBg2 + 0x17) > (gEntityInfo[var_ip].xPosBg2 - 0xF)) &&
                    ((gEntityInfo[sp0].yPosBg2 - 0x18) < (gEntityInfo[var_ip].yPosBg2 - 2)) && ((gEntityInfo[sp0].yPosBg2 - 2) > (gEntityInfo[var_ip].yPosBg2 - 0x18)))
                {
                    if (gEntityInfo[sp0].unk8.split.unk9 == 0)
                    {
                        if (gEntityInfo[sp0].xPosBg2 < gEntityInfo[var_ip].xPosBg2)
                        {
                            gEntityInfo[slot].unkC_4 = 2;
                        }
                        else
                        {
                            gEntityInfo[slot].unkC_4 = 3;
                        }
                        goto block_25;
                    }
                    else
                    {
                        continue;
                    }
                }

                if (gEntityInfo[sp0].unk8.split.unk9 == var_ip)
                {
                    goto block_82;
                }
            }
        }
    }

    if (gEntityInfo[sp0].unk8.split.unk9 != 0)
    {
        // Must be declared here to match
        s32 sp20;
        s32 sp24;
        if (gEntityInfo[slot].unkC_4 == 1)
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
        else if (gEntityInfo[slot].unkC_4 == 2)
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
        else if (gEntityInfo[slot].unkC_4 == 3)
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
        temp_r3_6 = max(temp_r3_6, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[sp0].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[sp0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)]);
        temp_r3_6 = max(temp_r3_6, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[sp0].xPosBg2 + 6) >> 3) + (((gEntityInfo[sp0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)]);
        temp_r3_6 = max(temp_r3_6, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[sp0].xPosBg2 - 0xF) >> 3) + (((gEntityInfo[sp0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)]);
        if ((gUnk_03004654->unk1A <= temp_r3_6) || (gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].unkF == 0x13))
        {
block_82:
            gEntityInfo[sp0].unk8.split.unk9 = 0;
            gEntityInfo[slot].unkC_4 = 0;
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
            gEntityInfo[sp0].unkF = gEntityInfo[slot].unkC_4 + 6;
            gEntityInfo[sp0].yPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2;
            if (gEntityInfo[slot].unkC_4 == 1)
            {
               gEntityInfo[sp0].xPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2;
               gEntityInfo[sp0].yPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].yPosBg2 + 0x18;
            }
            else if (gEntityInfo[slot].unkC_4 == 2)
            {
                gEntityInfo[sp0].xPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2 - 0x18;
            }
            else
            {
                gEntityInfo[sp0].xPosBg2 = gEntityInfo[gEntityInfo[sp0].unk8.split.unk9].xPosBg2 + 0x18;
            }
            gEntityInfo[sp0].unk8.split.unk8 = gEntityInfo[sp0].unk8.split.unk9;
            gEntityInfo[sp0].unk8.split.unk9 = 0;
            gEntityInfo[slot].unkC_4 = 0;
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

    switch (gEntityInfo[slot].unkC_4)
    {
        case 2:
            if ((s8) gEntityInfo[slot].unk8.split.unk9 == 0)
            {
                gEntityInfo[slot].unk8.split.unk8 += 4;
                if ((s8) gEntityInfo[slot].unk8.split.unk8 > 0x18)
                {
                    gEntityInfo[slot].unk8.split.unk8 = 0x18;
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
            if ((s8) gEntityInfo[slot].unk8.split.unk9 == 0)
            {
                gEntityInfo[slot].unk8.split.unk8 -= 4;
                if ((s8) gEntityInfo[slot].unk8.split.unk8 < -0x18)
                {
                    gEntityInfo[slot].unk8.split.unk8 = -0x18;
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
            if ((s8) gEntityInfo[slot].unk8.split.unk8 == 0)
            {
                gEntityInfo[slot].unk8.split.unk9 -= 4;
                if ((s8) gEntityInfo[slot].unk8.split.unk9 < -0x18)
                {
                    gEntityInfo[slot].unk8.split.unk9 = -0x18;
                }
                break;
            }
            /* fallthrough */
        case 0:
            if ((s8) gEntityInfo[slot].unk8.split.unk8 > 0)
            {
                gEntityInfo[slot].unk8.split.unk8 -= 4;
            }
            else if ((s8) gEntityInfo[slot].unk8.split.unk8 < 0)
            {
                gEntityInfo[slot].unk8.split.unk8 += 4;
            }
            if (gEntityInfo[slot].unkC_4 == 0)
            {
check_unk9: // TODO: get rid of gotos with this label
                if ((s8) gEntityInfo[slot].unk8.split.unk9 < 0)
                {
                    gEntityInfo[slot].unk8.split.unk9 += 4;
                }
            }
            break;
    }

    if ((s8) gEntityInfo[slot].unk8.split.unk8 > 0)
    {        
        gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd = 0x280 - ((s8)gEntityInfo[slot].unk8.split.unk8 * 0x10);        
        gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pb = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pc = 0;
    }
    else if ((s8) gEntityInfo[slot].unk8.split.unk8 < 0)
    {        
        gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd = -0x280 + (-(s8)gEntityInfo[slot].unk8.split.unk8 * 0x10);        
        gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pb = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pc = 0;
    }
    else if ((s8) gEntityInfo[slot].unk8.split.unk9 < 0)
    {        
        gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pa = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pd = 0;        
        gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pb = gOamAffineBuffer[gEntityInfo[slot].affineHFlip_matrixNum].pc = -0x280 + (-(s8)gEntityInfo[slot].unk8.split.unk9 * 0x10);
    }

    if (((s8) gEntityInfo[slot].unk8.split.unk8 | (s8) gEntityInfo[slot].unk8.split.unk9) != 0)
    {
        gEntityInfo[slot].xPosBg2 = gEntityInfo[slot + gUnk_03004C38].xPosBg2 + ((s8) gEntityInfo[slot].unk8.split.unk8 - 4);
        gEntityInfo[slot].yPosBg2 = gEntityInfo[slot + gUnk_03004C38].yPosBg2 + ((s8) gEntityInfo[slot].unk8.split.unk9 + 4);
    }
    else
    {
        gEntityInfo[slot].xPosBg2 = -0x20;
        gUnk_03004D88 = gUnk_03003628 = gUnk_030034D0 = 0x64;
    }
}

// 1DE44
void sub_0801DE44(u8 slot)
{
    // Called by entity id 0xC
    if (--gEntityInfo[slot].unk8.split.unk9 == 0xFF)
    {
        gEntityInfo[slot].unk8.split.unk9 = 0x19;
        if (gEntityInfo[slot].unk8.split.unk8 < 6)
        {
            sub_0801E664(gEntityInfo[slot - gUnk_0300528C].xPosBg2, gEntityInfo[slot - gUnk_0300528C].yPosBg2, gEntityInfo[slot].unk8.split.unk8 + 0xC, 0);
        }

        if (--gEntityInfo[slot].unk8.split.unk8 == 0)
        {
            sub_0801E664(gEntityInfo[slot - gUnk_0300528C].xPosBg2, gEntityInfo[slot - gUnk_0300528C].yPosBg2, 2, slot - gUnk_0300528C);
        }
        else
        {
            m4aSongNumStart(SE_BOOMIE_COUNTDOWN);
            if (gEntityInfo[slot].unk8.split.unk8 > 9)
            {
                gEntityInfo[slot + gUnk_0300528C].unkF = 0;
                sub_0800087C(slot + gUnk_0300528C, gEntityInfo[slot].unk8.split.unk8 / 10);
            }

            sub_0800087C(slot, gEntityInfo[slot].unk8.split.unk8 % 10);
            if (gEntityInfo[slot].unk8.split.unk8 == 9)
            {
                gEntityInfo[slot + gUnk_0300528C].unkF = 0x1C;
                gEntityInfo[slot + gUnk_0300528C].visible = 0;
            }
        }
    }

    gEntityInfo[slot].xPosBg2 = gEntityInfo[slot - gUnk_0300528C].xPosBg2;
    gEntityInfo[slot].yPosBg2 = gEntityInfo[slot - gUnk_0300528C].yPosBg2 - 0x20;

    if (gEntityInfo[slot].unk8.split.unk8 > 9)
    {
        gEntityInfo[slot + gUnk_0300528C].xPosBg2 = gEntityInfo[slot - gUnk_0300528C].xPosBg2 - 3;
        gEntityInfo[slot + gUnk_0300528C].yPosBg2 = gEntityInfo[slot - gUnk_0300528C].yPosBg2 - 0x20;
        gEntityInfo[slot].xPosBg2 += 3;
    }
}

// 1DFC4
void sub_0801DFC4(u8 slot)
{
    // Called by ENTITY_ID_GLIBZ_QUAD_CANNON_BULLET
    u32 var_r6;

    if (gEntityInfo[slot].unkC_2 == 0)
    {
        gEntityInfo[slot].xPosBg2 += 1;
    }
    else
    {
        gEntityInfo[slot].xPosBg2 -= 1;
    }

    if (gUnk_03004654->unk1A <= gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + ((gEntityInfo[slot].yPosBg2 >> 3) * gBgInfo[2].hLength)])
    {
        block_4:
        sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, 0);
        gEntityInfo[slot].unkF = 0x1C;
        gEntityInfo[slot].visible = 0;
        m4aSongNumStart(SE_GLIBZ_QUAD_CANNON_BULLET_HIT);
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

        switch (gEntityInfo[var_r6].id)
        {
            case ENTITY_ID_BOX:
            case ENTITY_ID_MAGNET_BLOCK:
                if (((gEntityInfo[slot].xPosBg2 - 8) < (gEntityInfo[var_r6].xPosBg2 + 7)) && ((gEntityInfo[slot].xPosBg2 + 8) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                    ((gEntityInfo[slot].yPosBg2 - 0x18) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x18)))
                {
                    goto block_4;
                }
                break;

            case ENTITY_ID_KLONOA:
            case ENTITY_ID_MOO:
            case ENTITY_ID_FLYING_MOO_HORIZONTAL:
            case ENTITY_ID_FLYING_MOO_VERTICAL:
            case ENTITY_ID_GLIBZ_QUAD_CANNON:
            case ENTITY_ID_TETON:
            case ENTITY_ID_BOOMIE:
            case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
            case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
                if (((gEntityInfo[slot].xPosBg2 - 4) < (gEntityInfo[var_r6].xPosBg2 + 4)) && ((gEntityInfo[slot].xPosBg2 + 4) > (gEntityInfo[var_r6].xPosBg2 - 4)) &&
                    ((gEntityInfo[slot].yPosBg2 - 0xC) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x14)))
                {
                    if (var_r6 == 0)
                    {
                        var_r6 = gUnk_03003638 - 1;
                        if (gUnk_03005220.klonoaInvulnerabilityTimer != 0)
                        {
                            continue;
                        }
                        ReceiveDamage(1);
                    }
                    else
                    {
                        sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 2, var_r6);
                    }
                    goto block_4;
                }
                break;

            case ENTITY_ID_GROWN_BLOCK:
                if (((gEntityInfo[slot].xPosBg2 - 4) < (gEntityInfo[var_r6].xPosBg2 + 0xF)) && ((gEntityInfo[slot].xPosBg2 + 4) > (gEntityInfo[var_r6].xPosBg2 - 0xF)) &&
                    ((gEntityInfo[slot].yPosBg2 - 0xC) < gEntityInfo[var_r6].yPosBg2) && (gEntityInfo[slot].yPosBg2 > (gEntityInfo[var_r6].yPosBg2 - 0x20)))
                {
                    goto block_4;
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
void sub_0801E1A8(u8 slot)
{
    // Called by ENTITY_ID_STAR
    s32 tileColOffset;

    if ((gTransitioning == FALSE) && (gUnk_03005220.stars == 7))
    {
        if (((gUnk_03004C20.globalFrameCounter % 4) == 0) && (gUnk_03005220.allStarsCollected == 1) && (gBlendValue != 0))
        {
            gBlendValue -= 1;
        }

        if (gUnk_03005220.allStarsCollected == 0)
        {
            gUnk_03005220.allStarsCollected = 1;
            gBlendValue = 0x10;
            REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_LIGHTEN;
        }
    }

    if (gEntityInfo[slot].yPosScreen >= 0x8C)
    {
        tileColOffset = -1;

        gEntityInfo[slot].yPosBg2 = -8;
        gEntityInfo[slot].xPosBg2 = -8;

        if ((gTransitioning == FALSE) && (gUnk_03005220.allStarsCollected == 1))
        {
            if (gBlendValue != 0)
            {
                return;
            }
            gBlendValue = 9;
            REG_BLDCNT = BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1;
        }

        if (gUnk_03005220.stars & 1)
        {
            tileColOffset += 1;
        }
        if (gUnk_03005220.stars & 2)
        {
            tileColOffset += 1;
        }
        if (gUnk_03005220.stars & 4)
        {
            tileColOffset += 1;
        }

        // Fill in collected star tiles
        gBgTilemapBufs[0][(tileColOffset * 2) + 0x24D] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x28C];
        gBgTilemapBufs[0][(tileColOffset * 2) + 0x24E] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x28D];
        gBgTilemapBufs[0][(tileColOffset * 2) + 0x26D] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x2AC];
        gBgTilemapBufs[0][(tileColOffset * 2) + 0x26E] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x2AD];

        gEntityInfo[slot].visible = 0;
        gEntityInfo[slot].unkF = 0x1C;
    }
    else
    {
        gEntityInfo[slot].unk8.split.unk9 += 1;

        if (gEntityInfo[slot].xPosScreen > 0x82)
        {
            gEntityInfo[slot].xPosBg2 -= ((gEntityInfo[slot].xPosBg2 - 0x82 - gBgInfo[2].hOfs) >> 4);
        }
        else
        {
            gEntityInfo[slot].xPosBg2 += ((gBgInfo[2].hOfs + 0x82 - gEntityInfo[slot].xPosBg2) >> 4);
        }
        gEntityInfo[slot].yPosBg2 += (gEntityInfo[slot].unk8.split.unk9 - 0xC) >> 2;
    }
}

// 1E354
void sub_0801E354(u8 slot)
{
    // Called by ENTITY_ID_1_UP
    if (gEntityInfo[slot].yPosScreen >= 0x90)
    {
        if ((gEntityInfo[slot].yPosScreen & 0x8000) == 0)
        {
            gUnk_03005220.collected1Ups |= 1 << gEntityInfo[slot].unk8.split.unk8;

            if (gUnk_03005220.lives < 99)
            {
                gUnk_03005220.lives += 1;
                DrawLevelHud_Lives();
            }

            gEntityInfo[slot].visible = 0;
            gEntityInfo[slot].unkF = 0x1C;
            return;
        }
    }

    gEntityInfo[slot].unk8.split.unk9 += 1;
    if (gEntityInfo[slot].yPosScreen & 0x8000)
    {
        gEntityInfo[slot].yPosBg2 += 3;
    }
    else
    {
        gEntityInfo[slot].yPosBg2 += ((gEntityInfo[slot].unk8.split.unk9 - 0xC) >> 1);
    }
    gEntityInfo[slot].xPosBg2 += ((gBgInfo[2].hOfs + 0xEC - gEntityInfo[slot].xPosBg2) / 12);
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

            if (gEntityInfo[var_r8].id >= ENTITY_ID_KLONOA)
            {
                if (gEntityInfo[var_r8].id == ENTITY_ID_EXPLODABLE_BLOCK)
                {
                    var_r5 = -0xF;
                    var_r1 = -0xF;
                }
                else if (gEntityInfo[var_r8].id == ENTITY_ID_BOX)
                {
                    var_r1 = -0xF;
                    var_r5 = -0x7;
                }
                else
                {
                    var_r5 = -0xC;
                    var_r1 = -0xC;
                }

                if (((u16) (var_r1 + gEntityInfo[var_r8].xPosBg2) < (gEntityInfo[var_sb].xPosBg2 + 0xC)) && ((u16) (gEntityInfo[var_r8].xPosBg2 - var_r5) > (gEntityInfo[var_sb].xPosBg2 - 0xC)) &&
                    ((gEntityInfo[var_r8].yPosBg2 - 0x18) < gEntityInfo[var_sb].yPosBg2) && (gEntityInfo[var_r8].yPosBg2 > (gEntityInfo[var_sb].yPosBg2 - 0x18)))
                {
                    switch (gEntityInfo[var_r8].id)
                    {
                        case ENTITY_ID_KLONOA:
                            if ((gUnk_03005220.klonoaInvulnerabilityTimer == 0) || (gUnk_03005220.unk5B == 0))
                            {
                                ReceiveDamage(1);
                                break;
                            }
                            continue;

                        case ENTITY_ID_EXPLODABLE_BLOCK:
                            if (gEntityInfo[var_r8].unk8.split.unk9 == 0)
                            {
                                gEntityInfo[var_r8].unk8.split.unk9 = 0x64;
                                gUnk_03005220.explodedBlocks |= 1 << gEntityInfo[var_r8].unk8.split.unk8;
                            }
                            break;

                        case ENTITY_ID_BOX:
                            if (gEntityInfo[var_r8].unk8.split.unk8 > 1)
                            {
                                if (gEntityInfo[var_r8].unk8.split.unk9 == 0)
                                {
                                    gEntityInfo[var_r8].unkF = 0x1B;
                                    gEntityInfo[var_r8].visible = 0;
                                    gEntityInfo[var_r8].unk8.split.unk9 = 0x46;

                                    if (var_r8 == gUnk_03003610[1].unk2)
                                    {
                                        SetEntityAnimationInfoState(gUnk_03003610[1].unk3, 0);
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

                        case ENTITY_ID_WATER_SWITCH:
                        case ENTITY_ID_GATE_SWITCH:
                        case ENTITY_ID_ROTATION_SWITCH:
                        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
                            if (gEntityInfo[var_r8].unk8.split.unk8 == 0)
                            {
                                sub_0801EAA4(var_r8);
                                gEntityInfo[var_r8].unk8.split.unk8 = 0x87;
                            }
                            break;

                        case ENTITY_ID_BLUE_ARROW:
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

    if ((((s16) (arg0 - gBgInfo[2].hOfs - 0x113) > -0x137u) && ((s16) (arg1 - gBgInfo[2].vOfs - 0xE0) > -0x104u)) || (gUnk_03004C20.level == 8) || (gEntityInfo[arg3].id >= ENTITY_ID_BOOMIE) || (arg2 == 6))
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

        gEntityInfo[var_r6].visible = 1;
        gEntityInfo[var_r6].unkF = 0;
        gEntityInfo[var_r6].xPosBg2 = arg0;
        gEntityInfo[var_r6].yPosBg2 = arg1;

        if ((arg2 == 2) && (gEntityInfo[arg3].id >= ENTITY_ID_BOOMIE))
        {
            SetEntityAnimationInfoState(var_r6, 6);
        }
        else
        {
            SetEntityAnimationInfoState(var_r6, arg2);
        }

        gEntityInfo[var_r6].priority = 0;
    }

    if (arg2 == 1)
    {
        gEntityInfo[var_r6].priority = 1;
        gEntityInfo[var_r6].unk8.split.unk8 = arg3;
        RoomRotationUpdateEntityPosition(arg3);
        gEntityInfo[var_r6].xPosBg2 = gEntityInfo[arg3].xPosBg2;
        gEntityInfo[var_r6].yPosBg2 = gEntityInfo[arg3].yPosBg2;
        return;
    }
    else if ((arg2 == 2) && (arg3 != 0))
    {
        gEntityInfo[arg3].visible = 0;
        if (gEntityInfo[arg3].id != ENTITY_ID_EXPLODABLE_BLOCK)
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

            if ((gEntityInfo[arg3].id == ENTITY_ID_FLYING_MOO_VERTICAL) || (gEntityInfo[arg3].id == ENTITY_ID_TETON) || (gEntityInfo[arg3].id == ENTITY_ID_FLYING_BOOMIE_VERTICAL))
            {
                gEntityInfo[arg3].unkC_4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg3 - 0xD].unk0[gUnk_03004C20.room - 1].unk5;
            }
            else
            {
                gEntityInfo[arg3].unkC_2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg3 - 0xD].unk0[gUnk_03004C20.room - 1].unk5 & 1;
            }
        }

        if (gEntityInfo[arg3].id >= ENTITY_ID_BOOMIE)
        {
            if (arg3 == gUnk_03003610->unk2)
            {
                SetEntityAnimationInfoState(gUnk_03003610->unk3, 0);
                gUnk_03003610->unk2 = 0;
            }

            if (gEntityInfo[arg3 + gUnk_0300528C].unk8.split.unk8 > 9)
            {
                gEntityInfo[arg3 + (gUnk_0300528C * 2)].unkF = 0x1C;
                gEntityInfo[arg3 + (gUnk_0300528C * 2)].visible = 0;
            }

            gEntityInfo[arg3 + gUnk_0300528C].unkF = 0x1C;
            gEntityInfo[arg3 + gUnk_0300528C].visible = 0;
            gEntityInfo[arg3 + gUnk_0300528C].unk8.split.unk8 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg3 + gUnk_0300528C - 0xD].unk0[gUnk_03004C20.room - 1].unk4;
            gEntityInfo[arg3 + gUnk_0300528C].unk8.split.unk9 = 0;
            gEntityInfo[arg3].unkF = 0x1B;
        }
        else
        {
            if (gEntityInfo[arg3].id == ENTITY_ID_EXPLODABLE_BLOCK)
            {
                gEntityInfo[arg3].unkF = 0x1C;
            }
            else
            {
                gEntityInfo[arg3].unkF = 0x19;
            }
            RoomRotationUpdateEntityPosition(arg3);
        }
    }
    else if (arg2 == 3 || arg2 == 4 || arg2 == 5)
    {
        if (arg3 != 0)
        {
            if (gEntityInfo[arg3].unkF != 2)
            {
                gEntityInfo[arg3].visible = 0;
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
void sub_0801EAA4(u8 slot)
{
    // Called by ENTITY_ID_WATER_SWITCH, ENTITY_ID_GATE_SWITCH, ENTITY_ID_ROTATION_SWITCH, ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH
    u32 var_r0_4;
    u32 var_r3;

    if (gEntityInfo[slot].unk8.split.unk8 != 0)
    {
        return;
    }

    if (gEntityInfo[slot].id == ENTITY_ID_WATER_SWITCH)
    {
        if (gEntityInfo[slot + 1].unk8.split.unk8 != 0)
        {
            return;
        }
    }
    else if (gEntityInfo[slot].id == ENTITY_ID_GATE_SWITCH)
    {
        if (gEntityInfo[slot].unkC_4 == 1)
        {
            return;
        }
    }
    else if (gEntityInfo[slot].id == ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH)
    {
        if (gEntityInfo[slot].unk8.split.unk9 != 0)
        {
            return;
        }
    }

    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2 + 8, 3, 0);
    gEntityInfo[slot].unkC_4 ^= 1;

    if (gEntityInfo[slot].id == ENTITY_ID_WATER_SWITCH)
    {
        gEntityInfo[slot + 1].unkC_4 ^= 1;
        if (gEntityInfo[slot + 1].unkC_4 == 0)
        {
            gUnk_03005220.pressedWaterSwitches ^= (1 << gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4);
        }
        else
        {
            gUnk_03005220.pressedWaterSwitches |= (1 << gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk4);
        }

        gEntityInfo[slot + 1].unk8.split.unk8 = 0x1A;
        if (gEntityInfo[slot].unkC_4 == 0)
        {
            DmaCopy16(3, &gUnk_08063FE8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x80);
        }
        else
        {
            DmaCopy16(3, &gUnk_080B9268, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x80);
        }
        m4aSongNumStart(SE_WATER_SWITCH_HIT);
    }
    else if (gEntityInfo[slot].id == ENTITY_ID_GATE_SWITCH)
    {
        if ((gEntityInfo[slot].yPosBg2 & 1) != 0)
        {
            m4aSongNumStart(SE_MULTI_SWITCH_HIT);
        }

        if (gEntityInfo[slot].unkC_4 == 0)
        {
            gUnk_030034E0 -= 1;
        }
        else
        {
            gUnk_030034E0 += 1;
            if (gUnk_030034E0 == gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk5)
            {
                gEntityInfo[slot + gEntityInfo[slot].unk8.split.unk9].unk8.split.unk8 = gEntityInfo[slot + gEntityInfo[slot].unk8.split.unk9].unk8.split.unk9;
                m4aSongNumStart(SE_GATE_OPEN_CLOSE);
            }
        }

        if ((gEntityInfo[slot].yPosBg2 & 1) == 0)
        {
            DmaCopy16(3, &gUnk_080B8F68, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x80);
        }
        else
        {
            DmaCopy16(3, &gUnk_080B8FE8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x80);
            gEntityInfo[slot].unk14 = 1;
        }
    }
    else if (gEntityInfo[slot].id == ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH)
    {
        gEntityInfo[slot].unk8.split.unk9 = 0x64;                    
        gEntityInfo[slot].unkC_4 = gUnk_03005220.pressedGrowingShrinkingBlockSwitch ^= 1;
        m4aSongNumStart(SE_GROWING_SHRINKING_BLOCK_SWITCH_HIT);

        if ((u8) (gUnk_030047B8 - 1) <= (u8) (gUnk_03005470 - 1))
        {
            var_r0_4 = gUnk_030047B8;
        }
        else
        {
            var_r0_4 = gUnk_03005470;
        }

        for (var_r3 = var_r0_4; (var_r3 < gEntitySlotCount) && (gEntityInfo[var_r3].id == ENTITY_ID_GROWN_BLOCK); var_r3++)
        {
            if (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_r3 - 0xD].unk0[gUnk_03004C20.room - 1].unk6 == 0)
            {
                gEntityInfo[var_r3].visible = 1;
                gEntityInfo[var_r3].unkF = 0;
            }
        }

        if (gEntityInfo[slot].unkC_4 == 0)
        {
            DmaCopy16(3, gUnk_08063368, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x80);
        }
        else
        {
            DmaCopy16(3, gUnk_080B92E8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x80);
        }
    }
    else
    {
        if (gRoomRotationAlpha == 0xFE)
        {
            gRoomRotationAlpha = 0x41;
            gCallbackQueue.current[1] = RoomRotationHandler;
            m4aSongNumStart(SE_ROTATE_ROOM);
        }
    }
}

// 1EF5C
void sub_0801EF5C(u8 slot)
{
    // Called by ENTITY_ID_BLUE_ARROW
    gEntityInfo[slot].unkC_4 = (gEntityInfo[slot].unkC_4 + 1) & 3;
    sub_0801E664(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 3, 0);

    if ((gEntityInfo[slot].unkC_4 == 3) || (gEntityInfo[slot].unkC_4 == 1))
    {
        DmaCopy16(3, gUnk_08064A68, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x200);
    }
    else
    {
        DmaCopy16(3, gUnk_080B9668, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xD].tileNum * 0x20), 0x200);
    }
    
    if (gEntityInfo[slot].unkC_4 == 3)
    {
        gEntityInfo[slot].unkC_2 = 0;
    }
    else
    {
        gEntityInfo[slot].unkC_2 = gEntityInfo[slot].unkC_4;
    }
}

// 1F02C
void sub_0801F02C(u8 slot)
{
    // Called by ENTITY_ID_HEART
    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gEntityInfo[slot].unk8.split.unk8].unk0;
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gEntityInfo[slot].unk8.split.unk8].unk2;
            gEntityInfo[slot].unkF = 0xE;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].unk8.split.unk8 += 1;
            gEntityInfo[slot].unk8.split.unk9 = 0x80;

            gUnk_03003590[1].unk2 = 0;
            gUnk_03003590[1].unk0 = 0;
            break;

        case 14:
            gUnk_03003590[1].unk0 = (gEntityInfo[slot].unk8.split.unk9 * COS((gUnk_03004C20.sceneFrameCounter * 0x10) % 255)) >> 8;
            gUnk_03003590[1].unk2 = -(gEntityInfo[slot].unk8.split.unk9 * COS((gUnk_03004C20.sceneFrameCounter * 0x10) % 255)) >> 8;

            if (gEntityInfo[slot].unk8.split.unk9 != 0)
            {
                gEntityInfo[slot].unk8.split.unk9 -= 2;
                break;
            }

            gUnk_03003590[1].unk2 = 0x10;
            gUnk_03003590[1].unk0 = 0x10;
            gEntityInfo[slot].unkF = 0;
            break;

        case 0:
            break;
    }
}

// 1F128
void sub_0801F128(u8 slot)
{
    // Called by entity id 0x11
    u32 var_r6;

    gEntityInfo[slot].xPosBg2 += 0; // Required to match

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            gEntityInfo[slot].unkF = 0xE;
            SetEntityAnimationInfoState(slot, 0);
            break;

        case 14:
            if ((gUnk_03004C20.sceneFrameCounter % 8) == 0)
            {
                if (gEntityInfo[slot].unkC_2 == 0)
                {
                    gEntityInfo[slot].xPosBg2 += 1;
                }
                else
                {
                    gEntityInfo[slot].xPosBg2 -= 1;
                }
            }

            if (((gEntityInfo[slot].xPosBg2 + gUnk_080E2AB4[5 - gEntityAnimationInfo[slot - gUnk_0300363C].frame][2]) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + gUnk_080E2AB4[5 - gEntityAnimationInfo[slot - gUnk_0300363C].frame][3]) > (gEntityInfo[0].xPosBg2 - 0xC)) &&
                ((gEntityInfo[slot].yPosBg2 + gUnk_080E2AB4[5 - gEntityAnimationInfo[slot - gUnk_0300363C].frame][4]) < gEntityInfo[0].yPosBg2) && ((gEntityInfo[slot].yPosBg2 + gUnk_080E2AB4[5 - gEntityAnimationInfo[slot - gUnk_0300363C].frame][5]) > (gEntityInfo[0].yPosBg2 - 0x18)))
            {
                if ((gUnk_03005220.klonoaInvulnerabilityTimer == 0) && (gUnk_03005400.unkC != 0))
                {
                    ReceiveDamage(1);
                }
            }

            if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
            {
                gEntityInfo[slot].unkF = 0;
                SetEntityAnimationInfoState(slot, 1);
            }
            break;

        case 0:
            if (gEntityInfo[slot].unkC_2 == 0)
            {
                if ((gUnk_03004C20.globalFrameCounter & gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame][0]) == gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame][0])
                {
                    gEntityInfo[slot].xPosBg2 += gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame][1];
                }

                var_r6 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 4) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)];
                if (gEntityInfo[slot].xPosBg2 > 0x1C0)
                {
                    var_r6 = gUnk_03004654->unk1B;
                }
            }
            else
            {
                if ((gUnk_03004C20.globalFrameCounter & gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame][0]) == gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame][0])
                {
                    gEntityInfo[slot].xPosBg2 -= gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame][1];
                }

                var_r6 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0xC) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)];
                if (gEntityInfo[slot].xPosBg2 <= 0x1F)
                {
                    var_r6 = gUnk_03004654->unk1B;
                }
            }

            if (((gEntityInfo[slot].xPosBg2 + gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame + 1][2]) < (gEntityInfo[0].xPosBg2 + 0xC)) && ((gEntityInfo[slot].xPosBg2 + gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame + 1][3]) > (gEntityInfo[0].xPosBg2 - 0xC)))
            {
                if (((gEntityInfo[slot].yPosBg2 + gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame + 1][4]) < gEntityInfo[0].yPosBg2) && ((gEntityInfo[slot].yPosBg2 + gUnk_080E2AB4[gEntityAnimationInfo[slot - gUnk_0300363C].frame + 1][5]) > (gEntityInfo[0].yPosBg2 - 0x18)) && (gUnk_03005220.klonoaInvulnerabilityTimer == 0) && (gUnk_03005400.unkC != 0))
                {
                    ReceiveDamage(1);
                }
            }

            if (gUnk_03004654->unk1B <= var_r6)
            {
                gEntityInfo[slot].visible = 0;
                gEntityInfo[slot].unkF = 0x1C;
            }
            break;
    }
}

// 1F4D0
void sub_0801F4D0(u8 slot)
{
    // Called by entity id 0x12
    u8 temp_r5;

    temp_r5 = slot + 0xE4;

    if (gUnk_03005400.unkA == 1)
    {
        gEntityInfo[slot].unkF = 0x1C;
        gEntityInfo[slot].visible = 0;
        return;
    }

    switch (gEntityInfo[slot].unkF)
    {
        case 3:
            gEntityInfo[slot].unkF = 0;
            gEntityInfo[slot].unk14 = 0;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].priority = 0;
            if (gEntityInfo[0x12].unkC_2 == 0)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x10;
            }
            else
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 - 0x10;
            }
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2;
            gEntityInfo[slot].unk8.split.unk8 = gUnk_080E2ADE[temp_r5][0];
            gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2ADE[temp_r5][1];
            gEntityInfo[slot].unk16 = 4;
            break;

        case 4:
            gEntityInfo[slot].unkF = 0;
            gEntityInfo[slot].unk14 = 0;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].priority = 0;
            if (gEntityInfo[0x12].unkC_2 == 0)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x10;
            }
            else
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 - 0x10;
            }
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2;
            gEntityInfo[slot].unk8.split.unk8 = gUnk_080E2ADE[temp_r5][0xA];
            gEntityInfo[slot].unk8.split.unk9 = gUnk_080E2ADE[temp_r5][0xB];
            gEntityInfo[slot].unk16 = 2;
            break;

        case 0:
            gEntityInfo[slot].yPosBg2 = 0x10C - (((s8) gEntityInfo[slot].unk8.split.unk9 * SIN(gEntityInfo[slot].unk14)) >> 8);
            gEntityInfo[slot].xPosBg2 += (s8) gEntityInfo[slot].unk8.split.unk8;
            gEntityInfo[slot].unk14 += gEntityInfo[slot].unk16;
            if (gEntityInfo[slot].unk14 == 0x88)
            {
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
            }
            break;
    }
}

// 1F648
void sub_0801F648(u8 slot)
{
    // Called by entity id 0x13
    u8 var_r5;
    u8 var_r1;

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            SetEntityAnimationInfoState(slot, 0);
            gEntityInfo[slot].priority = 1;
            gEntityInfo[slot].unkF = 0xE;
            DmaCopy16Wait(3, &gUnk_08078648, OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
            break;

        case 14:
            if (gEntityInfo[slot].yPosBg2 > 0x10)
            {
                gEntityInfo[slot].yPosBg2 -= 5;
            }
            else
            {
                gEntityInfo[slot].unkF = 0xF;
            }

            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                break;
            }

            if (gEntityInfo[slot].unkC_2 == 0)
            {
                gEntityInfo[slot].xPosBg2 += 1;
            }
            else
            {
                gEntityInfo[slot].xPosBg2 -= 1;
            }
            break;

        case 15:
            gEntityInfo[slot].yPosBg2 += 1;
            if (gUnk_03004C20.sceneFrameCounter & 2)
            {
                if (gEntityInfo[slot].unkC_2 == 0)
                {
                    gEntityInfo[slot].xPosBg2 = 0xA0 + (COS(gUnk_03004C20.sceneFrameCounter % 0x100) >> 0x2);
                }
                else
                {
                    gEntityInfo[slot].xPosBg2 = 0x140 - (COS(gUnk_03004C20.sceneFrameCounter % 0x100) >> 0x2);
                }
            }

            if (gEntityInfo[slot].yPosBg2 < 0x100)
            {
                return;
            }

            for (var_r1 = 0; var_r1 < 2; var_r1++)
            {
                if (gEntityInfo[var_r1 + 0x13].unkF == 0x1C)
                {
                    gEntityInfo[var_r1 + 0x13].priority = 1;
                    gEntityInfo[var_r1 + 0x13].xPosBg2 = gEntityInfo[slot].xPosBg2;
                    gEntityInfo[var_r1 + 0x13].yPosBg2 = gEntityInfo[slot].yPosBg2;
                    gEntityInfo[var_r1 + 0x13].unkF = 0;
                    SetEntityAnimationInfoState(var_r1 + 0x13, 1);
                    SetEntityAnimationInfoState(slot, 1);
                    gEntityInfo[slot].unkF = 0;
                    break;
                }
            }
            break;

        case 0:
            if (gEntityAnimationInfo[slot - gUnk_0300363C].timer != 0xFF)
            {
                break;
            }

            gEntityInfo[slot - 2].priority = 0;
            gEntityInfo[slot].unkF = 0x1C;
            gEntityInfo[slot].visible = 0;
            break;

        case 3:
            gEntityInfo[slot].priority = 2;
            if (slot == 0x15)
            {
                gEntityInfo[slot].unk8.split.unk8 = 0x60;
                gEntityInfo[slot].unk8.split.unk9 = 0x80;
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk8 = 0x20;
                gEntityInfo[slot].unk8.split.unk9 = 0x80;
            }

            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + ((gEntityInfo[slot].unk8.split.unk9 * COS(gEntityInfo[slot].unk8.split.unk8)) >> 8);
            gEntityInfo[slot].yPosBg2 = (gEntityInfo[0x12].yPosBg2 - gUnk_080E2AF2[gUnk_03005400.unkC - 1]) + ((gEntityInfo[slot].unk8.split.unk9 * SIN(gEntityInfo[slot].unk8.split.unk8)) >> 8);

            DmaCopy16Wait(3, &gUnk_08078328, OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
            SetEntityAnimationInfoState(slot, 2);
            gEntityInfo[slot].unkF = 4;
            m4aSongNumStart(0x9C);
            break;

        case 4:
            gEntityInfo[slot].xPosBg2 = (gEntityInfo[0x12].xPosBg2 + ((gEntityInfo[slot].unk8.split.unk9 * COS(gEntityInfo[slot].unk8.split.unk8)) >> 8)) + (thunk_GetRandomValue() % 4);
            gEntityInfo[slot].yPosBg2 = ((gEntityInfo[0x12].yPosBg2 - gUnk_080E2AF2[gUnk_03005400.unkC - 1]) + ((gEntityInfo[slot].unk8.split.unk9 * SIN(gEntityInfo[slot].unk8.split.unk8)) >> 8)) + (thunk_GetRandomValue() % 4);

            if ((gEntityInfo[slot].unk8.split.unk8 == 0x80) || (gEntityInfo[slot].unk8.split.unk8 == 0))
            {
                gEntityInfo[slot].priority = 1;
            }
            
            if (gEntityInfo[slot].unk8.split.unk9 > 0x60)
            {
                var_r5 = 1;
            }
            else if (gEntityInfo[slot].unk8.split.unk9 > 0x20)
            {
                var_r5 = 2;
            }
            else
            {
                var_r5 = 4;
            }

            gEntityInfo[slot].unk8.split.unk9 -= var_r5;
            if (slot == 0x15)
            {
                gEntityInfo[slot].unk8.split.unk8 += var_r5;
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk8 -= var_r5;
            }
            
            if (gEntityInfo[slot].unk8.split.unk9 == 0)
            {
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
            }
            break;
    }
}

// 1FADC
void sub_0801FADC(u8 slot)
{
    // Called by entity id 0x14
    u8 temp_r0;
    u32 var_r1;
    u8 var_r3;

    temp_r0 = slot - 0x14;
    gEntityInfo[slot].affineHFlip_matrixNum = temp_r0 + 3;

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + gUnk_080E2AF5[slot - 0x16][0];
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 + gUnk_080E2AF5[slot - 0x16][1] - 0x20;
            gEntityInfo[slot].unk8.split.unk8 = 0x20;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].unkF = 0;

            gUnk_03003590[temp_r0].unk4 = 0;
            gUnk_03003590[temp_r0].unk2 = 0;
            gUnk_03003590[temp_r0].unk0 = 0;
            break;

        case 0:
            if ((gUnk_03004C20.sceneFrameCounter & gUnk_080E2AF5[slot - 0x16][2]) == gUnk_080E2AF5[slot - 0x16][2])
            {
                gEntityInfo[slot].xPosBg2 += gUnk_080E2AF5[slot - 0x16][4];
            }
            if ((gUnk_03004C20.sceneFrameCounter & gUnk_080E2AF5[slot - 0x16][3]) == gUnk_080E2AF5[slot - 0x16][3])
            {
                gEntityInfo[slot].yPosBg2 += gUnk_080E2AF5[slot - 0x16][5];
            }

            gEntityInfo[slot].unk8.split.unk8 -= 1;
            if (gEntityInfo[slot].unk8.split.unk8 != 0xFF)
            {
                break;
            }
            gEntityInfo[slot].unkF = 0x1C;
            gEntityInfo[slot].visible = 0;
            break;

        case 24:
            gEntityInfo[slot].xPosBg2 = gUnk_080E2AF5[slot - 0x16][0] - (((8 - gBgInfo[1].hOfs) * 4) - 0xF0);
            gEntityInfo[slot].yPosBg2 = gUnk_080E2AF5[slot - 0x16][1] + 0xD0;
            gEntityInfo[slot].priority = 2;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].unkC_2 = 2;

            gUnk_03003590[temp_r0].unk2 = 0xFFC0;
            gUnk_03003590[temp_r0].unk0 = 0xFFC0;
            gUnk_03003590[temp_r0].unk4 = 0x80;

            gEntityInfo[slot].unkF = 0xE;
            var_r1 = (thunk_GetRandomValue() % 10) * 10;
            if (slot > 0x1B)
            {
                var_r1 += 100;
            }
            gEntityInfo[slot].unk8.split.unk8 = var_r1;

            SetEntityAnimationInfoState(slot, 0);
            m4aSongNumStart(0x6C);
            break;

        case 14:
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                if (gEntityInfo[slot].unk8.split.unk8 == 1)
                {
                    gUnk_03005400.unkE_1 = 1;
                }
                gUnk_03005400.unkD = 3;
                gEntityInfo[slot].unk8.split.unk8 -= 1;
                gEntityInfo[slot].xPosBg2 = gUnk_080E2AF5[slot - 0x16][0] - (((8 - gBgInfo[1].hOfs) * 4) - 0xF0);
                break;
            }

            if ((gUnk_03004C20.sceneFrameCounter % gUnk_080E2AF5[slot - 0x16][2]) == 0)
            {
                gEntityInfo[slot].xPosBg2 += gUnk_080E2AF5[slot - 0x16][4];
            }
            if ((gUnk_03004C20.sceneFrameCounter % gUnk_080E2AF5[slot - 0x16][3]) == 0)
            {
                gEntityInfo[slot].yPosBg2 += gUnk_080E2AF5[slot - 0x16][5];
            }
            if (gEntityInfo[slot].yPosBg2 > 0x28)
            {
                return;
            }

            gEntityInfo[slot].unkF = 0xF;
            gEntityInfo[slot].unkC_2 = 0;
            if (slot <= 0x1B)
            {
                gEntityInfo[slot].xPosBg2 = ((slot - 0x16) << 6) + 0x50;
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
                gEntityInfo[slot].xPosBg2 = (var_r3 << 6) + 0x70;
            }
            gEntityInfo[slot].priority = 0;

            gUnk_03003590[temp_r0].unk2 = 0;
            gUnk_03003590[temp_r0].unk0 = 0;
            gUnk_03003590[temp_r0].unk4 = 0;
            break;

        case 15:
            gEntityInfo[slot].yPosBg2 += 2;
            if (gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + (((gEntityInfo[slot].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)]); // Required to match
            if ((gUnk_03004654->unk1B <= gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + (((gEntityInfo[slot].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)]) && (gEntityInfo[slot].yPosBg2 > 0x64))
            {
                m4aSongNumStart(0x43);
                gEntityInfo[slot].unk8.split.unk9 = 0;
                gEntityInfo[slot].unkF = 0x10;
            }
            else if (gEntityInfo[slot].yPosBg2 > 0x167)
            {
                gEntityInfo[slot].unk8.split.unk8 = 0x46;
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
            }
            break;

        case 16:
            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                if (gUnk_03003590[temp_r0].unk0 < 0x80)
                {
                    gUnk_03003590[temp_r0].unk0 += 4;
                    gUnk_03003590[temp_r0].unk2 += 4;
                }
                else
                {
                    gEntityInfo[slot].unkF = 0x11;
                }
            }
            gEntityInfo[slot].yPosBg2 -= 1;
            break;

        case 17:
            if (gUnk_03003590[temp_r0].unk0 < 0xA0)
            {
                gUnk_03003590[temp_r0].unk0 += 4;
                gUnk_03003590[temp_r0].unk2 += 4;
            }

            gEntityInfo[slot].yPosBg2 += 2;
            if (gEntityInfo[slot].yPosBg2 > 0x167)
            {
                gEntityInfo[slot].unk8.split.unk8 = 0x46;
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
            }
            break;
    }
}

// 1FFF0
void sub_0801FFF0(u8 slot)
{
    // Called by entity id 0x16
    u16 temp_r1;
    u16 temp_r5;

    if ((gUnk_03004C20.sceneFrameCounter & 8) != 0)
    {
        if (gEntityInfo[slot].unk8.split.unk8 != 0)
        {
            gEntityInfo[slot].unk8.split.unk8 -= 1;
        }
        if (gEntityInfo[slot].unk8.split.unk9 != 0)
        {
            gEntityInfo[slot].unk8.split.unk9 -= 1;
        }
    }

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            SetEntityAnimationInfoState(slot, 0);
            gEntityInfo[slot].unk8.split.unk9 = 0;
            gEntityInfo[slot].unk8.split.unk8 = 0;
            gEntityInfo[slot].unkC_2 = gEntityInfo[0x12].unkC_2;

            if (slot == 0x15)
            {
                gEntityInfo[slot].unkF = 0xE;
            }
            else
            {
                gEntityInfo[slot].unkF = 0xF;
            }

            if (gEntityInfo[slot].unkC_2 == 0)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x30;
            }
            else
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 - 0x30;
            }
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2;
            break;

        case 19:
            if (gEntityInfo[slot].unk8.split.unk8 > 0x1C)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x16 - (gEntityInfo[0x12].unkC_2 * 0x2C);
                gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2;
                break;
            }

            if (gEntityInfo[slot].unk8.split.unk8 > 0x18)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 0x17 - (gEntityInfo[0x12].unkC_2 * 0x2E);
                gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 - 0x20;
                break;
            }

            if (gEntityInfo[slot].unk8.split.unk8 > 0x11)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + 6 - (((gEntityInfo[0x12].unkC_2)) * 0xC);
                gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 - 0x34;
                break;
            }

            temp_r5 = Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[slot].xPosBg2);
            temp_r1 = Abs(gEntityInfo[0].yPosBg2 - gEntityInfo[slot].yPosBg2);
            if (temp_r5 > temp_r1)
            {
                gEntityInfo[slot].unk8.split.unk8 = 0xFF;
                gEntityInfo[slot].unk8.split.unk9 = (temp_r1 * 0xFF) / temp_r5;
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk8 = (temp_r5 * 0xC0) / temp_r1;
                gEntityInfo[slot].unk8.split.unk9 = 0xFF;
            }

            gEntityInfo[slot].unkC_2 = gEntityInfo[0x12].unkC_2;
            gEntityInfo[slot].unkF = 0xF;
            break;

        case 14:
            gEntityInfo[slot].yPosBg2 -= ((gEntityInfo[slot].unk8.split.unk9 >> 6) + 1);
            if (gEntityInfo[slot].yPosBg2 < 0x40)
            {
                gEntityInfo[slot].unkF = 0xF;
            }
            goto block_36;

        case 15:
            gEntityInfo[slot].yPosBg2 += ((gEntityInfo[slot].unk8.split.unk9 >> 6) + 1);
            if (gEntityInfo[slot].yPosBg2 > 0xE2)
            {
                gEntityInfo[slot].unkF = 0xE;
            }

block_36:
            if (gEntityInfo[slot].unkC_2 == 0)
            {
                gEntityInfo[slot].xPosBg2 += ((gEntityInfo[slot].unk8.split.unk8 >> 6) + 1);
            }
            else
            {
                gEntityInfo[slot].xPosBg2 -= ((gEntityInfo[slot].unk8.split.unk8 >> 6) + 1);
            }

            if (gEntityInfo[slot].xPosBg2 > 0x1A0)
            {
                gEntityInfo[slot].unkC_2 = 1;
                gEntityInfo[slot].xPosBg2 = 0x1A0;
            }
            if (gEntityInfo[slot].xPosBg2 < 0x40)
            {
                gEntityInfo[slot].unkC_2 = 0;
                gEntityInfo[slot].xPosBg2 = 0x40;
            }

            if (((gEntityInfo[0x12].xPosBg2 - 0xE) < (gEntityInfo[slot].xPosBg2 + 0xC)) && ((gEntityInfo[0x12].xPosBg2 + 0xE) > (gEntityInfo[slot].xPosBg2 - 0xC)))
            {
                if (((gEntityInfo[0x12].yPosBg2 - 0x14) < gEntityInfo[slot].yPosBg2) && (gEntityInfo[0x12].yPosBg2 > (gEntityInfo[slot].yPosBg2 - 0x18)) && (gEntityInfo[slot].unk8.split.unk8 == 0) && (gEntityInfo[slot].unk8.split.unk9 == 0) && (gUnk_03005400.unkA == 5))
                {
                    gUnk_03005400.unkB = 8;
                    gUnk_03005400.unkA = 6;
                    gEntityInfo[slot].unk8.split.unk8 = 0x1F;
                    gEntityInfo[slot].unkF = 0x13;
                }
            }
            break;
    }
}

// 202D4
void sub_080202D4(u8 slot)
{
    // Called by entity id 0x17
    struct Unk_0800BEF0 sp0;
    struct Unk_0800BEF0_2 sp10;
    struct Unk_0800BEF0_2 sp14;
    struct Unk_0800BEF0_2 sp18;
    struct Unk_0800BEF0_2 sp1C;
    u8 sp20;
    s8 var_r3;

    if (slot == 0x15)
    {
        sp20 = 0;
    }
    else
    {
        sp20 = slot + 0xEC;
    }
    gEntityInfo[slot].affineHFlip_matrixNum = sp20 + 3;

    switch (gEntityInfo[slot].unkF)
    {
        case 3:
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x15].xPosBg2 + ((COS((gEntityInfo[0].xPosBg2 >> 2) + PI) << 0x10) >> 0x15);
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x15].yPosBg2 - ((SIN((gEntityInfo[0].xPosBg2 >> 2) + PI) << 0x10) >> 0x15);
            break;

        case 4:
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x15].xPosBg2;
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x15].yPosBg2;
            break;

        case 0:
            if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
            {
                SetEntityAnimationInfoState(slot, 0);
            }
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 + ((COS(gUnk_03004C20.sceneFrameCounter % 0x100) << 0x10) >> 0x16);
            break;

        case 14:
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state != 5)
            {
                SetEntityAnimationInfoState(0x15, 5);
            }
            else
            {
                if (gEntityInfo[slot].yPosBg2 > 0x77)
                {
                    gEntityInfo[slot].yPosBg2 -= 1;
                }
                else if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[0x17].unk8.split.unk9 = 0;
                    gEntityInfo[0x16].unk8.split.unk9 = 0;
                    gEntityInfo[0x15].unk8.split.unk9 = 0;
                    gEntityInfo[slot].unk8.split.unk8 = 0x80;
                    gEntityInfo[0x15].unkC_2 = 1;
                    SetEntityAnimationInfoState(slot, 6);
                    gEntityInfo[slot].unkF = 0xF;
                }
            }
            break;

        case 15:
            switch (gEntityInfo[slot].unk8.split.unk8)
            {
                case 0x74:
                    gEntityInfo[0x1B].unkF = 0x19;
                    gEntityInfo[0x1B].unk8.split.unk8 = slot;
                    break;

                case 0x6E:
                    gEntityInfo[0x19].unkF = 0x19;
                    gEntityInfo[0x19].unk8.split.unk8 = slot;
                    break;

                case 0x68:
                    gEntityInfo[0x1A].unkF = 0x19;
                    gEntityInfo[0x1A].unk8.split.unk8 = slot;
                    break;
            }

            if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 6)
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[0x15].unkC_2 = 0;
                    SetEntityAnimationInfoState(slot, 7);
                }
            }
            else if ((gEntityAnimationInfo[slot - gUnk_0300363C].state == 7) && (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF))
            {
                SetEntityAnimationInfoState(slot, 3);
            }

            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                gEntityInfo[slot].unk8.split.unk8 -= 1;
            }
            else
            {
                gEntityInfo[0x17].xPosBg2 = gEntityInfo[0x15].xPosBg2;
                gEntityInfo[0x16].xPosBg2 = gEntityInfo[0x15].xPosBg2;
                gEntityInfo[0x17].yPosBg2 = gEntityInfo[0x15].yPosBg2;
                gEntityInfo[0x16].yPosBg2 = gEntityInfo[0x15].yPosBg2;

                SetEntityAnimationInfoState(0x16, 3);
                SetEntityAnimationInfoState(0x17, 3);

                gEntityInfo[0x15].unkF = 0x12;
                gEntityInfo[0x17].unkF = 0x10;
                gEntityInfo[0x16].unkF = 0x10;
            }
            break;

        case 16:
            if (gEntityInfo[slot].unk8.split.unk9 & 1)
            {
                gEntityInfo[slot].unkF = 0x1A;
            }
            else
            {
                gEntityInfo[slot].visible = 1;
                if (gEntityInfo[slot].yPosBg2 <= 0xB0)
                {
                    gEntityInfo[slot].yPosBg2 += 1;
                    if (slot == 0x16)
                    {
                        gEntityInfo[slot].xPosBg2 -= 2;
                    }
                    else
                    {
                        gEntityInfo[slot].xPosBg2 += 2;
                    }
                }
                else
                {
                    gEntityInfo[slot].unk8.split.unk8 = 0x1E;
                    gUnk_03005400.unk13 = thunk_GetRandomValue() % 2;
                    gEntityInfo[slot].unkF = 0x12;
                }
            }
            break;

        case 18:
            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                if (gEntityInfo[slot].unk8.split.unk8 != 0)
                {
                    gEntityInfo[slot].unk8.split.unk8 -= 1;
                }
            }

            switch (slot)
            {
                case 21:
                    if ((gUnk_03004C20.sceneFrameCounter % 0x200) == 0)
                    {
                        SetEntityAnimationInfoState(slot, 3);
                    }
                    gEntityInfo[slot].yPosBg2 = (SIN(gUnk_03004C20.sceneFrameCounter % 0x100) >> 0x6) + 0x78;

                    if ((gEntityInfo[slot].unk8.split.unk8 == 0) && (gEntityInfo[0x16].unkF == 0x1C) && (gEntityInfo[0x17].unkF == 0x1C))
                    {
                        gUnk_03005400.unk4 = gEntityInfo[0].xPosBg2;
                        gUnk_03005400.unk6 = 0xF0;
                        gUnk_03005400.unk15 = 0x28;
                        gEntityInfo[slot].unkC_2 = gUnk_03005400.unk13;
                        gEntityInfo[slot].unkF = 5;
                    }
                    break;

                case 22:
                    if ((gUnk_03004C20.sceneFrameCounter % 0x80) == 0)
                    {
                        SetEntityAnimationInfoState(slot, 3);
                    }

                    gEntityInfo[slot].yPosBg2 = (SIN(gUnk_03004C20.sceneFrameCounter % 0x100) >> 0x6) + 0xB0;
                    if (((gEntityInfo[slot].unk8.split.unk8 == 0) && (gUnk_03005400.unk13 == 0)) || (gEntityInfo[0x17].unkF == 0x1C))
                    {
                        gUnk_03005400.unk4 = gEntityInfo[0].xPosBg2;
                        gUnk_03005400.unk6 = 0x118;
                        gUnk_03005400.unk15 = 0x78;
                        gEntityInfo[slot].unkC_2 = 0;
                        gEntityInfo[slot].unkF = 5;
                    }
                    break;

                case 23:
                    if ((gUnk_03004C20.sceneFrameCounter % 0x100) == 0)
                    {
                        SetEntityAnimationInfoState(0x17, 3);
                    }

                    gEntityInfo[slot].yPosBg2 = (SIN(gUnk_03004C20.sceneFrameCounter % 0x100) >> 0x6) + 0xB0;
                    if (((gEntityInfo[slot].unk8.split.unk8 == 0) && (gUnk_03005400.unk13 == 1)) || (gEntityInfo[0x16].unkF == 0x1C))
                    {
                        gUnk_03005400.unk4 = gEntityInfo[0].xPosBg2;
                        gUnk_03005400.unk6 = 0x118;
                        gUnk_03005400.unk15 = 0x78;
                        gEntityInfo[slot].unkC_2 = 1;
                        gEntityInfo[slot].unkF = 5;
                    }
                    break;
            }
            break;

        case 5:
            switch (gEntityInfo[slot].unk8.split.unk9 & 0xFE)
            {
                case 0:
                    if (gEntityInfo[slot].unkC_2 == 0)
                    {
                        var_r3 = -gUnk_03005400.unk15;
                    }
                    else
                    {
                        var_r3 = gUnk_03005400.unk15;
                    }
                    sp0.unk0 = gEntityInfo[slot].xPosBg2;
                    sp0.unk2 = gEntityInfo[slot].yPosBg2;
                    sp0.unk4 = (gUnk_03005400.unk4 + var_r3) & ~3;
                    sp0.unk6 = gUnk_03005400.unk6;
                    if (slot == 0x15)
                    {                        
                        sp0.unk8 = sp0.unk9 = 2;
                    }
                    else
                    {                        
                        sp0.unk8 = sp0.unk9 = 3;
                    }
                    sp10 = sub_0800BEF0(sp0);
                    gEntityInfo[slot].xPosBg2 = sp10.unk0;
                    gEntityInfo[slot].yPosBg2 = sp10.unk2;

                    if (((gEntityInfo[slot].xPosBg2 & 0xF8) == ((gUnk_03005400.unk4 + var_r3) & 0xF8)) && (((gEntityInfo[slot].yPosBg2 & 0xF8) == (gUnk_03005400.unk6 & 0xF8))))
                    {
                        if ((s16) gEntityInfo[slot].xPosBg2 < gEntityInfo[0].xPosBg2)
                        {
                            gEntityInfo[slot].unkC_2 = 0;
                            gUnk_03005400.unk4 = gEntityInfo[slot].xPosBg2 + (s8) gUnk_03005400.unk15;
                        }
                        else
                        {
                            gEntityInfo[slot].unkC_2 = 1;
                            gUnk_03005400.unk4 = gEntityInfo[slot].xPosBg2 - (s8) gUnk_03005400.unk15;
                        }
                        gEntityInfo[slot].unk8.split.unk8 = ((gEntityInfo[slot].unkC_2 + 1) & 1) << 7;
                        gEntityInfo[slot].unk8.split.unk9 |= 2;
                    }
                    break;

                case 2:
                    gEntityInfo[slot].xPosBg2 = (((s8) gUnk_03005400.unk15 * COS(gEntityInfo[slot].unk8.split.unk8)) >> 8) + gUnk_03005400.unk4;
                    if (gEntityInfo[slot].unkC_2 == 0)
                    {
                        gEntityInfo[slot].yPosBg2 = ((-(SIN(gEntityInfo[slot].unk8.split.unk8) << 5)) >> 8) + gUnk_03005400.unk6;
                    }
                    else
                    {
                        gEntityInfo[slot].yPosBg2 = ((SIN(gEntityInfo[slot].unk8.split.unk8) << 0x10) >> 0x13) + gUnk_03005400.unk6;
                    }

                    if (slot == 0x15)
                    {
                        gEntityInfo[slot].unk8.split.unk8 += 2;
                    }
                    else
                    {
                        gEntityInfo[slot].unk8.split.unk8 += 1;
                    }
                    if ((gEntityInfo[slot].unk8.split.unk8 % 0x80) == 0)
                    {
                        gUnk_030034DC = 0;
                        gEntityInfo[slot].unk8.split.unk9 |= 4;
                    }
                    break;

                case 6:
                    sp0.unk0 = gEntityInfo[slot].xPosBg2;
                    sp0.unk2 = gEntityInfo[slot].yPosBg2;
                    sp0.unk4 = 0xF0;
                    sp0.unk6 = 0x78;
                    sp0.unk8 = sp0.unk9 = 4;
                    sp14 = sub_0800BEF0(sp0);
                    gEntityInfo[slot].xPosBg2 = sp14.unk0;
                    gEntityInfo[slot].yPosBg2 = sp14.unk2;

                    if ((gEntityInfo[slot].xPosBg2 >> 3) == 0x1E)
                    {
                        if ((gEntityInfo[slot].yPosBg2 >> 3) == 0xF)
                        {
                            gEntityInfo[slot].unk8.split.unk9 &= 1;
                            if (slot == 0x15)
                            {
                                if (gUnk_03005400.unk0 == 0)
                                {
                                    sub_080145A8(1);
                                    sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2, 0x13);
                                    sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2, 0x14);
                                    gEntityInfo[0x14].unkF = 0x1C;
                                    gEntityInfo[0x13].unkF = 0x1C;
                                    gEntityInfo[slot].unkF = 0x11;
                                }
                                else
                                {
                                    gEntityInfo[slot].unk8.split.unk8 = 0x80;
                                    gEntityInfo[0x15].unkC_2 = 1;
                                    SetEntityAnimationInfoState(0x15, 6);
                                    gEntityInfo[slot].unkF = 0xF;
                                }
                            }
                            else
                            {
                                gEntityInfo[slot].unkF = 0x1A;
                                break;
                            }
                        }
                    }
                    break;
            }
            break;

        case 19:
            sp0.unk0 = gEntityInfo[slot].xPosBg2;
            sp0.unk2 = gEntityInfo[slot].yPosBg2;
            sp0.unk4 = 0xF0;
            sp0.unk6 = 0x78;
            sp0.unk8 = sp0.unk9 = 2;
            sp18 = sub_0800BEF0(sp0);
            gEntityInfo[slot].xPosBg2 = sp18.unk0;
            gEntityInfo[slot].yPosBg2 = sp18.unk2;

            if (gEntityInfo[slot].unk8.split.unk8 == 1)
            {
                m4aSongNumStart(0x63);
                gEntityInfo[slot].unk8.split.unk8 = 0;
            }

            if (((gEntityInfo[slot].xPosBg2 >> 3) == 0x1E) && ((gEntityInfo[slot].yPosBg2 >> 3) == 0xF))
            {
                gEntityInfo[slot].unk8.split.unk9 &= 1;
                if (slot == 0x15)
                {
                    DmaCopy16Wait(3, &gUnk_08078968, OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                    gEntityInfo[slot].unkF = 0x11;
                    sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2, 0x13);
                    sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2, 0x14);
                    gEntityInfo[0x14].unkF = 0x1C;
                    gEntityInfo[0x13].unkF = 0x1C;
                }
                else
                {
                    gUnk_03003590[sp20].unk0 = 0;
                    gUnk_03003590[sp20].unk2 = 0;
                    gEntityInfo[slot].unkF = 0x1A;
                }
            }
            else if (slot == 0x15)
            {
                if ((gUnk_03004C20.sceneFrameCounter % 10) == 5)
                {
                    DmaCopy16Wait(3, &gUnk_08078968, OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                }

                if ((gUnk_03004C20.sceneFrameCounter % 10) == 0)
                {
                    DmaFill16(3, 0xFFFF, OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                }
            }
            else
            {
                gUnk_03003590[sp20].unk0 = (COS((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) << 0x10) >> 0x12;
                gUnk_03003590[sp20].unk2 = (SIN((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) << 0x10) >> 0x13;
            }
            break;

        case 17:
            sp0.unk0 = gEntityInfo[slot].xPosBg2;
            sp0.unk2 = gEntityInfo[slot].yPosBg2;
            sp0.unk4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
            sp0.unk6 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
            sp0.unk8 = sp0.unk9 = 2;
            sp1C = sub_0800BEF0(sp0);
            gEntityInfo[slot].xPosBg2 = sp1C.unk0;
            gEntityInfo[slot].yPosBg2 = sp1C.unk2;

            if (((gEntityInfo[slot].xPosBg2 >> 3) == (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0 >> 3)) &&
                ((gEntityInfo[slot].yPosBg2 >> 3) == (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2 >> 3)))
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].state != 4)
                {
                    SetEntityAnimationInfoState(slot, 4);
                }
                else
                {
                    gEntityInfo[slot].unkC_2 = 0;
                    gUnk_03005400.unkA = 9;
                    gEntityInfo[slot].unkF = 0xFF;
                }
            }
            break;

        case 6:
            if (gEntityAnimationInfo[0x15 - gUnk_0300363C].timer == 0xFF)
            {
                gEntityInfo[0x15].unk8.split.unk8 += 1;
                gEntityInfo[0x15].xPosBg2 += 4;
                gEntityInfo[0x15].yPosBg2 -= (SIN(gEntityInfo[0x15].unk8.split.unk8) >> 0x6);
                if (gEntityInfo[0x15].xPosBg2 > 0x200)
                {
                    gUnk_03005400.unkA = 0xB;
                }
            }
            break;

        case 26:
            gEntityInfo[slot].unkF = 0x1C;
            gEntityInfo[slot].visible = 0;
            break;
    }

    if (gEntityInfo[slot].unkF == 0xF)
    {
        gUnk_03003590[sp20].unk5_0 = gEntityInfo[slot].unkC_2;
    }
}

// 20FB8
void sub_08020FB8(u8 slot)
{
    // Called by entity id 0x19
    switch (slot)
    {
        case 0x19:
            gEntityInfo[slot].affineHFlip_matrixNum = 7;
            gUnk_03003590[4].unk4 = 0;
            break;

        case 0x1A:
            gEntityInfo[slot].affineHFlip_matrixNum = 8;
            gUnk_03003590[5].unk4 = 0x20;
            break;

        case 0x1B:
            gEntityInfo[slot].affineHFlip_matrixNum = 9;
            gUnk_03003590[6].unk4 = 0xE0;
            break;
    }

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].xPosBg2 = gEntityInfo[gEntityInfo[slot].unk8.split.unk8].xPosBg2;
            gEntityInfo[slot].yPosBg2 = gEntityInfo[gEntityInfo[slot].unk8.split.unk8].yPosBg2 + 0x20;
            SetEntityAnimationInfoState(slot, 0x11);
            gEntityInfo[slot].unkF = 0;
            m4aSongNumStart(0x74);

            switch (slot)
            {
                case 25:
                    gEntityInfo[slot].unk8.split.unk8 = 0;
                    gEntityInfo[slot].unk8.split.unk9 = 2;
                    break;

                case 26:
                    gEntityInfo[slot].unk8.split.unk8 = 0xFF;
                    gEntityInfo[slot].unk8.split.unk9 = 1;
                    gEntityInfo[slot].unkC_2 = 1;
                    break;

                case 27:
                    gEntityInfo[slot].unk8.split.unk8 = 1;
                    gEntityInfo[slot].unk8.split.unk9 = 1;
                    gEntityInfo[slot].unkC_2 = 0;
                    break;
            }
            break;

        case 0:
            gEntityInfo[slot].xPosBg2 = (s8) gEntityInfo[slot].unk8.split.unk8 + gEntityInfo[slot].xPosBg2;
            gEntityInfo[slot].yPosBg2 += (s8) gEntityInfo[slot].unk8.split.unk9;

            if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
            {
                gEntityInfo[slot].xPosBg2 += (s8) gEntityInfo[slot].unk8.split.unk8;
            }

            if (gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + (((gEntityInfo[slot].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)]); // Required to match
            if (gUnk_03004654->unk1B <= gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + (((gEntityInfo[slot].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)])
            {
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
                gEntityAnimationInfo[slot - gUnk_0300363C].timer = 0xFF;
            }
            break;
    }
}

extern s32 gUnk_03000004; // TODO: should be static variable inside sub_08021194 (?)

// 21194
void sub_08021194(u8 slot)
{
    // Called by entity id 0x18
    struct Unk_0800BEF0 sp0;
    struct Unk_0800BEF0_2 spC;
    u16 var_r8;
    u16 var_sl;
    u8 temp_r5;

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            SetEntityAnimationInfoState(slot, 0xE);
            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2;
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 - 0x40;
            gEntityInfo[slot].unkF = 0x10;
            gEntityInfo[slot].priority = 0;
            gUnk_03005400.unk14 = 5;
            DmaCopy16Wait(3, &gUnk_08078988, OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
            break;

        case 16:
            if (gEntityAnimationInfo[0x12 - gUnk_0300363C].state == 9)
            {
                return;
            }

            var_r8 = Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[slot].xPosBg2);
            var_sl = Abs(gEntityInfo[0].yPosBg2 - gEntityInfo[slot].yPosBg2);

            if (var_r8 > var_sl)
            {
                gEntityInfo[slot].unk8.split.unk8 = 0xFF;
                gEntityInfo[slot].unk8.split.unk9 = (var_sl * 0xFF) / var_r8;
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk8 = (var_r8 * 0xFF) / var_sl;
                gEntityInfo[slot].unk8.split.unk9 = 0xFF;
            }

            if (gEntityInfo[slot].xPosBg2 > gEntityInfo[0].xPosBg2)
            {
                gEntityInfo[slot].unkC_4 = 1;
            }
            else
            {
                gEntityInfo[slot].unkC_4 = 0;
            }

            if (gEntityInfo[slot].yPosBg2 > gEntityInfo[0].yPosBg2)
            {
                gEntityInfo[slot].unkC_4 |= 2;
            }
            else
            {
                gEntityInfo[slot].unkC_4 &= 1;
            }

            m4aSongNumStart(0x70);
            gEntityInfo[slot].unkF = 0xE;
            break;

        case 0:
            var_r8 = gEntityInfo[slot].xPosBg2;
            var_sl = gEntityInfo[slot].yPosBg2;

            if (((gEntityInfo[slot].xPosBg2 - 0x14) < (gEntityInfo[0x15].xPosBg2 + 0x14)) && ((gEntityInfo[slot].xPosBg2 + 0x14) > (gEntityInfo[0x15].xPosBg2 - 0x14)) &&
                ((gEntityInfo[slot].yPosBg2 - 0x34) < (gEntityInfo[0x15].yPosBg2 - 0xA)) && ((gEntityInfo[slot].yPosBg2 - 0xC) > (gEntityInfo[0x15].yPosBg2 - 0x36)))
            {
                gUnk_03005400.unkA = 1;
                gEntityAnimationInfo[slot - gUnk_0300363C].timer = 0xFF;
                gEntityInfo[slot].unk8.split.unk8 = 0;
                gEntityInfo[slot].unk8.split.unk9 = 0;
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
                SetEntityAnimationInfoState(0x15, 4);
                gEntityInfo[0x15].unkF = 8;
                gEntityInfo[0x1D].unkF = 0x1C;
                gEntityInfo[0x1C].unkF = 0x1C;
                gEntityInfo[0x1D].visible = 0;
                gEntityInfo[0x1C].visible = 0;
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

            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                if (gEntityInfo[slot].unkC_4 & 2)
                {
                    gEntityInfo[slot].yPosBg2 -= (gEntityInfo[slot].unk8.split.unk9 >> 6);
                }
                else
                {
                    gEntityInfo[slot].yPosBg2 += (gEntityInfo[slot].unk8.split.unk9 >> 6);
                }

                if (gEntityInfo[slot].unkC_4 & 1)
                {
                    gEntityInfo[slot].xPosBg2 -= (gEntityInfo[slot].unk8.split.unk8 >> 6);
                }
                else
                {
                    gEntityInfo[slot].xPosBg2 += (gEntityInfo[slot].unk8.split.unk8 >> 6);
                }
            }
            goto block_33;

        case 14:
            var_r8 = gEntityInfo[slot].xPosBg2;
            var_sl = gEntityInfo[slot].yPosBg2;
            goto block_33;

block_33:
            if (gEntityInfo[slot].unkC_4 & 2)
            {
                gEntityInfo[slot].yPosBg2 -= (gEntityInfo[slot].unk8.split.unk9 >> 6);
            }
            else
            {
                gEntityInfo[slot].yPosBg2 += (gEntityInfo[slot].unk8.split.unk9 >> 6);
            }

            if (gEntityInfo[slot].unkC_4 & 1)
            {
                gEntityInfo[slot].xPosBg2 -= (gEntityInfo[slot].unk8.split.unk8 >> 6);
            }
            else
            {
                gEntityInfo[slot].xPosBg2 += (gEntityInfo[slot].unk8.split.unk8 >> 6);
            }

block_40:
            temp_r5 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 - 0x14) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x1A) >> 3) * gBgInfo[2].hLength)];
            temp_r5 = max(temp_r5, gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[slot].xPosBg2 + 0x14) >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x1A) >> 3) * gBgInfo[2].hLength)]);
            if (gUnk_03004654->unk1B <= temp_r5)
            {
                gEntityInfo[slot].xPosBg2 = var_r8;
                gEntityInfo[slot].unkC_4 ^= 1;

                if (gUnk_03005400.unk14 != 0)
                {
                    gUnk_03005400.unk14 -= 1;
                }

                if ((gEntityInfo[slot].unk8.split.unk9 >> 6) == 0)
                {
                    gEntityInfo[slot].unk8.split.unk9 = ((thunk_GetRandomValue() % 4) + 1) << 6;
                }

                m4aSongNumStart(0x70);
            }

            temp_r5 = gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + (((gEntityInfo[slot].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)];
            temp_r5 = max(temp_r5, gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + (((gEntityInfo[slot].yPosBg2 - 0x34) >> 3) * gBgInfo[2].hLength)]);
            if (gUnk_03004654->unk1B <= temp_r5)
            {
                gEntityInfo[slot].yPosBg2 = var_sl;
                gEntityInfo[slot].unkC_4 ^= 2;

                if (gUnk_03005400.unk14 != 0)
                {
                    gUnk_03005400.unk14 -= 1;
                }

                if ((gEntityInfo[slot].unk8.split.unk8 >> 6) == 0)
                {
                    gEntityInfo[slot].unk8.split.unk8 = ((thunk_GetRandomValue() % 4) + 1) << 6;
                }

                m4aSongNumStart(0x70);
            }

            if (gUnk_03005400.unk14 != 0)
            {
                return;
            }

            var_r8 = Abs(gEntityInfo[0x12].xPosBg2 - gEntityInfo[slot].xPosBg2);
            var_sl = Abs(gEntityInfo[0x12].yPosBg2 - 0x40 - gEntityInfo[slot].yPosBg2);

            if (var_r8 > var_sl)
            {
                gEntityInfo[slot].unk8.split.unk8 = 0xFF;
                gEntityInfo[slot].unk8.split.unk9 = (var_sl * 0xFF) / var_r8;
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk8 = (var_r8 * 0xC0) / var_sl;
                gEntityInfo[slot].unk8.split.unk9 = 0xFF;
            }

            if (gEntityInfo[slot].xPosBg2 > gEntityInfo[0x12].xPosBg2)
            {
                gEntityInfo[slot].unkC_4 = 1;
            }
            else
            {
                gEntityInfo[slot].unkC_4 = 0;
            }

            if (gEntityInfo[slot].yPosBg2 > gEntityInfo[0x12].yPosBg2)
            {
                gEntityInfo[slot].unkC_4 |= 2;
            }
            else
            {
                gEntityInfo[slot].unkC_4 &= 1;
            }

            gEntityInfo[slot].unkF = 0xF;
            gUnk_030034DC = 0;
            SetEntityAnimationInfoState(0x12, 0xA);
            gUnk_03000004 = 0;
            break;

        case 15:
            sp0.unk0 = gEntityInfo[slot].xPosBg2;
            sp0.unk2 = gEntityInfo[slot].yPosBg2;
            sp0.unk4 = gEntityInfo[0x12].xPosBg2;
            sp0.unk6 = gEntityInfo[0x12].yPosBg2 - 0x40;
            sp0.unk8 = sp0.unk9 = 8;
            spC = sub_0800BEF0(sp0);
            gEntityInfo[slot].xPosBg2 = spC.unk0;
            gEntityInfo[slot].yPosBg2 = spC.unk2;

            if (((gEntityInfo[0x12].xPosBg2 - 0xC) < (gEntityInfo[slot].xPosBg2 + 0x14)) && ((gEntityInfo[0x12].xPosBg2 + 0xC) > (gEntityInfo[slot].xPosBg2 - 0x14)) &&
                ((gEntityInfo[0x12].yPosBg2 - 0x40) > (gEntityInfo[slot].yPosBg2 - 0xC)))
            {
                gEntityInfo[slot].unkF = 1;
                gEntityInfo[slot].unk8.split.unk8 = 0x20;
            }
            else
            {
                goto block_40;
            }
            break;

        case 1:
            if (gEntityAnimationInfo[0x12 - gUnk_0300363C].state == 0xA)
            {
                gEntityInfo[slot].unk8.split.unk8 -= 1;
                if (gEntityInfo[slot].unk8.split.unk8 == 0xFF)
                {
                    SetEntityAnimationInfoState(0x12, 0xB);
                    gEntityInfo[slot].unk8.split.unk8 = 0;
                    gEntityInfo[slot].unk8.split.unk9 = 0;
                    gEntityInfo[slot].unkF = 0x1A;
                    gEntityInfo[slot].visible = 0;
                }
            }
            break;

        case 26:
            if (gEntityAnimationInfo[0x12 - gUnk_0300363C].timer == 0xFF)
            {
                gUnk_03005400.unkA = 2;
                SetEntityAnimationInfoState(0x12, 8);
                gEntityAnimationInfo[slot - gUnk_0300363C].timer = 0xFF;
                gEntityInfo[slot].unkF = 0x1C;
            }
            break;
    }
}

// 2192C
void sub_0802192C(u8 slot)
{
    // Called by entity id 0x1A
    u8 *var_r5;
    u8 var_r8;
    u8 var_r6;
    void *var_r1;
    u32 temp_r1;

    if (gEntityInfo[slot].unk8.split.unk8 != 0)
    {
        gEntityInfo[slot].unk8.split.unk8 -= 1;
    }

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                break;
            }

            gEntityInfo[slot].yPosBg2 = 0x68;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].priority = 1;
            gEntityInfo[slot].unk8.split.unk8 = 0x40;
            gEntityInfo[slot].unkF = 0xE;
            SetEntityAnimationInfoState(slot, 0xF);
            m4aSongNumStart(0x71);
            break;

        case 14:
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                break;
            }

            gEntityInfo[slot].yPosBg2 = 0x118;
            gEntityInfo[slot].unk8.split.unk8 = 0x20;
            gEntityInfo[slot].unkF = 0x1A;
            gEntityInfo[slot].visible = 0;
            break;

        case 0:
            var_r8 = ((gEntityInfo[slot].xPosBg2 / 8) - 3) & ~1;

            temp_r1 = (gUnk_03004C20.sceneFrameCounter & 4) >> 2;
            var_r5 = &gUnk_03003790[0][var_r8];
            var_r1 = gBgDataPtrs.pBufBg2Tilemap + ((temp_r1 * 6) + 0x3C);
            for (var_r6 = 0; var_r6 < 30; var_r6++)
            {
                DmaCopy16(3, var_r1, var_r5, 0x6);
                var_r1 += gBgInfo[2].hLength;
                var_r5 += 0x40;
            }

            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                break;
            }

            gEntityInfo[slot].unkF = 0x1C;
            gEntityInfo[slot].visible = 0;

            switch (slot)
            {
                case 0x18:
                    gEntityInfo[slot].id = 0x18;
                    break;

                case 0x19:
                case 0x1A:
                case 0x1B:
                    gEntityInfo[slot].id = 0x19;
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
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                break;
            }

            gEntityInfo[slot].unk8.split.unk8 = 0x80;
            gEntityInfo[slot].visible = 1;
            SetEntityAnimationInfoState(slot, 0x10);
            gEntityInfo[slot].unkF = 0;
            m4aSongNumStart(0x72);
            break;
    }
}

// 21AD4
void sub_08021AD4(u8 slot)
{
    // Called by 0x1D
    u8 temp_r3;

    temp_r3 = slot + 0xDE;

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            if (gEntityInfo[slot].unk8.split.unk8 == 0)
            {
                gEntityInfo[slot].unk8.split.unk8 = (thunk_GetRandomValue() % 0x10) + 8;
            }
            else if (gEntityInfo[slot].unk8.split.unk8 == 1)
            {
                gEntityInfo[slot].visible = 1;
                gEntityInfo[slot].unkF = 0;
                gEntityInfo[slot].unk8.split.unk8 = 0xF0;
                gEntityInfo[slot].unk8.split.unk9 = ((thunk_GetRandomValue() % 6) * 0x24) + (thunk_GetRandomValue() % 0x20);
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk8 -= 1;
            }
            break;

        case 0:
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][0x6].unk0[0].unk0 + ((gEntityInfo[slot].unk8.split.unk8 * COS(gEntityInfo[slot].unk8.split.unk9)) >> 8);
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][0x6].unk0[0].unk2 - 0x20 + ((gEntityInfo[slot].unk8.split.unk8 * SIN(gEntityInfo[slot].unk8.split.unk9)) >> 8);

            gEntityInfo[slot].unk8.split.unk8 -= gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk0;
            if (gEntityInfo[slot].unk8.split.unk8 == 0)
            {
                gEntityInfo[slot].unk8.split.unk8 = 1;
                gEntityInfo[slot].unkF = 0x19;
            }
            break;

        case 24:
            switch (temp_r3)
            {
                case 0:
                    gEntityInfo[slot].xPosBg2 = 0x44;
                    break;

                case 1:
                    gEntityInfo[slot].xPosBg2 = 0x110;
                    break;

                case 2:
                    gEntityInfo[slot].xPosBg2 = 0xCC;
                    break;

                case 3:
                    gEntityInfo[slot].xPosBg2 = 0x154;
                    break;

                case 4:
                    gEntityInfo[slot].xPosBg2 = 0x88;
                    break;

                case 5:
                    gEntityInfo[slot].xPosBg2 = 0x198;
                    break;
            }

            gEntityInfo[slot].yPosBg2 = ((thunk_GetRandomValue() % 6) * 10) + 300;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].unkF = 0xE;
            break;

        case 14:
            gEntityInfo[slot].yPosBg2 -= 4;
            if (gEntityInfo[slot].yPosBg2 < 0x60)
            {
                gEntityInfo[slot].unkF = 0x18;
            }
            break;

        case 26:
            gEntityInfo[slot].unkF = 0x1C;
            gEntityInfo[slot].visible = 0;
            break;
    }
}

// 21DAC
void sub_08021DAC(u8 slot)
{
    // Called by entity id 0x1B
    u8 sp4;
    s32 var_r1;
    s32 var_r3;

    if (gEntityInfo[slot].unkF != 3)
    {
        gEntityInfo[slot].affineHFlip_matrixNum = 7;
    }

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk0;
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk2;

            gUnk_03005400.unk6 = -gBg2XMag + 0x10;
            gUnk_03005400.unk4 = -gBg2XMag + 0x10;
            gUnk_03003590[4].unk4 = 0;
            gEntityInfo[slot].unkF = 0;
            SetEntityAnimationInfoState(slot, 6);
            DmaCopy16Wait(3, gUnk_0818B7DC[0], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);

            gEntityInfo[0x27].unkF = 0x19;
            gEntityInfo[0x26].unkF = 0x19;
            gEntityInfo[0x25].unkF = 0x19;
            gEntityInfo[0x24].unkF = 0x19;
            gEntityInfo[0x23].unkF = 0x19;
            gEntityInfo[0x22].unkF = 0x19;
            gEntityInfo[0x28].unkF = 3;
            break;

        case 0:
            if (gUnk_03003590[4].unk0 == 0)
            {
                m4aSongNumStart(0x83);
                gEntityInfo[slot].unkF = 1;
                gUnk_03003590[4].unk2 = 0;
                gUnk_03003590[4].unk0 = 0;
                gEntityInfo[0x27].unkF = 0x1A;
                gEntityInfo[0x26].unkF = 0x1A;
                gEntityInfo[0x25].unkF = 0x1A;
                gEntityInfo[0x24].unkF = 0x1A;
                gEntityInfo[0x23].unkF = 0x1A;
                gEntityInfo[0x22].unkF = 0x1A;
                SetEntityAnimationInfoState(slot, 3);
                gEntityInfo[0x28].unkF = 0x1C;
                gEntityInfo[0x28].visible = 0;
                gEntityInfo[0x28].yPosBg2 = 0;

                if (gUnk_03005400.unkB == 0)
                {
                    gEntityInfo[slot].unk8.split.unk9 |= 0x40;
                }
                else
                {
                    gEntityInfo[slot].unk8.split.unk9 |= 0x20;
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
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                gEntityInfo[slot].unk8.split.unk8 -= 1;
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

            if (gEntityInfo[slot].unkF == 0x14)
            {
                m4aSongNumStart(0x76);
                gEntityInfo[slot].unkF = 4;
                gUnk_03005400.unkA = 5;
            }
            else
            {
                m4aSongNumStart(0x83);
                gEntityInfo[slot].unkF = 1;
                SetEntityAnimationInfoState(slot, 3);
                gEntityInfo[slot].unk8.split.unk9 |= 0x40;
            }
            break;

        case 4:
            if (gEntityInfo[slot].unkC_2 & 2)
            {
                gEntityInfo[slot].yPosBg2 += 1;
                gUnk_03003590[4].unk4 = 0x20;
            }
            else
            {
                if ((gUnk_03004C20.sceneFrameCounter % 3) == 0)
                {
                    if (gEntityInfo[slot].unkC_2 == 1)
                    {
                        gEntityInfo[slot].xPosBg2 -= 4;
                        gEntityInfo[slot].yPosBg2 -= 2;
                    }
                    else
                    {
                        gEntityInfo[slot].xPosBg2 += 4;
                        gEntityInfo[slot].yPosBg2 -= 2;
                    }
                    
                }
                gUnk_03003590[4].unk4 += 8;
            }

            if (gBlendValue == 0x10)
            {
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
            }
            break;

        case 1:
            if (gUnk_03005400.unkA == 3)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2;
                gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 + 0x10;
            }

            gUnk_03003590[4].unk0 = SIN((gUnk_03004C20.sceneFrameCounter * 4) % 0x100) >> 0x2;
            gUnk_03003590[4].unk2 = COS((gUnk_03004C20.sceneFrameCounter * 4) % 0x100) >> 0x2;

            if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 3)
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[slot].unkC_2 ^= 1;

                    if (!(gEntityInfo[slot].unk8.split.unk9 & 0xF0))
                    {
                        gEntityInfo[slot].unk8.split.unk9 = (gEntityInfo[slot].unk8.split.unk9 + 1) % 3;
                        gUnk_03005400.unk14 = 2 - gEntityInfo[slot].unk8.split.unk9;
                        DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[slot].unk8.split.unk9], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                        SetEntityAnimationInfoState(slot, 5);
                    }
                    else
                    {
                        SetEntityAnimationInfoState(slot, 4);
                    }
                }
                else
                {
                    switch (gEntityAnimationInfo[slot - gUnk_0300363C].frame)
                    {
                        case 0:
                            DmaCopy16Wait(3, gUnk_0818B7DC[1], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 1:
                            DmaCopy16Wait(3, gUnk_0818B7DC[2], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 2:
                            DmaCopy16Wait(3, gUnk_0818B7DC[0], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;
                    }
                }
            }
            else if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 4)
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[slot].unkC_2 ^= 1;
                    gEntityInfo[slot].unk8.split.unk9 -= 0x10;
                    SetEntityAnimationInfoState(slot, 3);
                }
                else
                {
                    switch (gEntityAnimationInfo[slot - gUnk_0300363C].frame)
                    {
                        case 0:
                            DmaCopy16Wait(3, gUnk_0818B7DC[2], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 1:
                            DmaCopy16Wait(3, gUnk_0818B7DC[1], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 2:
                            DmaCopy16Wait(3, gUnk_0818B7DC[2], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;
                    }
                }
            }
            else
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
                {
                    if (gUnk_03005400.unkA == 0)
                    {
                        gEntityInfo[slot].unk8.split.unk8 = 0;
                        gEntityInfo[slot].unkF = 0xE;
                        gEntityInfo[0x1F].unkF = 0x19;
                    }
                    else
                    {
                        gEntityInfo[slot].unkF = 0xF;
                        gUnk_03005400.unkA = 3;
                    }

                    m4aSongNumStop(0x83);
                    DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[slot].unk8.split.unk9], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                    SetEntityAnimationInfoState(slot, gEntityInfo[slot].unk8.split.unk9 & 0xF);
                    gUnk_03003590[4].unk2 = 0;
                    gUnk_03003590[4].unk0 = 0;
                }
                else
                {
                    switch (gEntityAnimationInfo[slot - gUnk_0300363C].frame)
                    {
                        case 0:
                            DmaCopy16Wait(3, gUnk_0818B7DC[2], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;

                        case 1:
                            DmaCopy16Wait(3, gUnk_0818B7DC[1], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                            break;
                    }
                }
            }
            break;

        case 14:
            gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk2 - ((SIN(gEntityInfo[slot].unk8.split.unk8++) << 0x10) >> 0x14);
            if (gBlendValue == 0x10)
            {
                gEntityInfo[slot].unkF = 0xF;
            }
            break;

        case 15:
            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2;
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 + 0x10;
            break;

        case 16:
            gEntityInfo[slot].affineDouble = 1;
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state != 0x1A)
            {
                gEntityInfo[slot].xPosBg2 = 0xF0;
                gEntityInfo[slot].yPosBg2 = 0xE0;
                SetEntityAnimationInfoState(slot, 0x1A);
                gUnk_03003590[4].unk4 = 0;
                DmaCopy16Wait(3, gUnk_0818B7DC[0], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
            }
            else
            {
                gUnk_03003590[4].unk0 = (SIN(gUnk_03004C20.sceneFrameCounter % 0x100) >> 0x3) + 0x100;
                gUnk_03003590[4].unk2 = (COS(gUnk_03004C20.sceneFrameCounter % 0x100) >> 0x3) + 0x100;
            }
            break;

        case 3:
            sp4 = Abs(gUnk_03003590[4].unk0) / 2;
            switch (gUnk_03004C20.sceneFrameCounter % 6)
            {
                case 0:
                case 1:
                    DmaCopy16Wait(3, gUnk_0818B7DC[0], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                    SetEntityAnimationInfoState(slot, 0);
                    gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk0 + ((SIN(gUnk_03004C20.sceneFrameCounter % 0x100) * sp4) >> 0x8);
                    gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk2 + ((COS(gUnk_03004C20.sceneFrameCounter % 0x100) * sp4) >> 0x8);
                    break;

                case 2:
                case 3:
                    DmaCopy16Wait(3, gUnk_0818B7DC[1], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                    SetEntityAnimationInfoState(slot, 1);
                    gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk0 + ((SIN((gUnk_03004C20.sceneFrameCounter + 0x56) % 0x100) * sp4) >> 0x8);
                    gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk2 + ((COS((gUnk_03004C20.sceneFrameCounter + 0x56) % 0x100) * sp4) >> 0x8);
                    break;

                case 4:
                case 5:
                    DmaCopy16Wait(3, gUnk_0818B7DC[2], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
                    SetEntityAnimationInfoState(slot, 2);
                    gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk0 + ((SIN((gUnk_03004C20.sceneFrameCounter + 0xAA) % 0x100) * sp4) >> 0x8);
                    gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[0].unk2 + ((COS((gUnk_03004C20.sceneFrameCounter + 0xAA) % 0x100) * sp4) >> 0x8);
                    break;
            }
            break;
    }

    gUnk_03003590[4].unk5_0 = gEntityInfo[slot].unkC_2;
}

// 22CA0
void sub_08022CA0(u8 slot)
{
    // Called by entity id 0x1C
    struct Unk_08014184 temp_r2;
    s32 var_r5;
    s8 temp_r5;
    u8 temp_r6;
    s8 temp_r0_11;
    u8 temp_sl;
    s8 var_sb;

    temp_r6 = slot + 0xE1;
    temp_sl = gUnk_03005400.unkC - 1;
    gUnk_03003590[2].unk5_0 = gUnk_03005400.unk8_5;

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            gUnk_03003590[2].unk0 = 0;
            gUnk_03003590[2].unk2 = 0;
            gUnk_03003590[2].unk4 = 0;
            SetEntityAnimationInfoState(slot, 0xD);

            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2;
            gEntityInfo[slot].yPosBg2 = 0x120;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].unkF = 0xE;
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
            if (REG_BLDCNT == (BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN))
            {
                if (slot == 0x1F)
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
                        REG_IE |= INTR_FLAG_HBLANK;
                        REG_DISPSTAT |= DISPSTAT_HBLANK_INTR;
                        REG_BLDCNT = 0;
                        gBlendValue = 0x10;
                    }
                }
            }
            else if (slot == 0x1F)
            {
                REG_BLDCNT = BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0;
                if (gBlendValue > 8)
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 4) == 0)
                    {
                        gBlendValue -= 1;
                    }
                }
                else
                {
                    gEntityInfo[slot].unkF = 0;
                }
            }
            /* fallthrough */
        case 0:
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state != (temp_r6 + 7))
            {
                SetEntityAnimationInfoState(slot, temp_r6 + 7);
                break;
            }

            if (gUnk_03005400.unk8_5 == 0)
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 + gUnk_080E2B4C[temp_r6][0] - ((COS(gUnk_03004C20.sceneFrameCounter % 0x100) << 0x10) >> 0x15) + gUnk_080E2B4C[temp_r6][0];
            }
            else
            {
                gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2 - gUnk_080E2B4C[temp_r6][0] + ((COS(gUnk_03004C20.sceneFrameCounter % 0x100) << 0x10) >> 0x15) - gUnk_080E2B4C[temp_r6][0];
            }
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 + 8 + ((gUnk_080E2B4C[temp_r6][1] * gUnk_03003590[2].unk2) >> 8) + (u8)gUnk_080E2B4C[temp_r6][1];
            break;

        case 14:
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 0xE)
            {
                if (gBlendValue == 0x10)
                {
                    if (gEntityInfo[slot].unk8.split.unk8 != 0)
                    {
                        gEntityInfo[slot].unk8.split.unk8 -= 1;
                    }
                    else
                    {
                        gUnk_03005400.unkD = 5;
                        gUnk_03005400.unkE_1 = 1;

                        gEntityInfo[0x21].unkF = 3;
                        gEntityInfo[0x20].unkF = 3;
                        gEntityInfo[0x1F].unkF = 3;

                        gEntityInfo[0x21].visible = 1;
                        gEntityInfo[0x20].visible = 1;
                        gEntityInfo[0x1F].visible = 1;

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
                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[slot].yPosBg2 -= 1;
                    if (gUnk_03003590[2].unk2 <= 0x80)
                    {
                        gUnk_03003590[2].unk0 += 4;
                        gUnk_03003590[2].unk2 += 4;
                        break;
                    }

                    REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
                    gEntityInfo[slot].unk8.split.unk8 = 0x10;
                    SetEntityAnimationInfoState(slot, 0xE);
                }
            }
            break;

        case 16:
            var_r5 = 0;

            gUnk_03003590[2].unk5_0 = 0;
            if (gUnk_03003590[2].unk0 < 0)
            {
                gUnk_03003590[2].unk0 += 1;
                gUnk_03003590[2].unk2 += 1;
                break;
            }
            gUnk_03003590[2].unk0 = 0;
            gUnk_03003590[2].unk2 = 0;

            gEntityInfo[slot].priority = 1;
            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2;
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 0x10)
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[slot].unk8.split.unk9 = (thunk_GetRandomValue() % 8) * 10 + 0x28;
                    gEntityInfo[slot].unk8.split.unk8 = gUnk_080E2B49[temp_sl];
                    gEntityInfo[slot].unkF = 0x11;
                    if (gEntityInfo[slot].xPosBg2 < gEntityInfo[0].xPosBg2)
                    {
                        gEntityInfo[slot].unkC_2 = 0;
                    }
                    else
                    {
                        gEntityInfo[slot].unkC_2 = 1;
                    }
                    break;
                }
            }
            else
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].state != 0xF)
                {
                    SetEntityAnimationInfoState(slot, 0xF);
                    break;
                }

                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer != 0xFF)
                {
                    break;
                }

                gEntityInfo[slot].yPosBg2 += 1;
                temp_r2 = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2 - 4, 0x10);
                if (temp_r2.unk0 != 0xFFFF)
                {
                    gEntityInfo[slot].yPosBg2 = temp_r2.unk0 + 4;
                    gUnk_03003590[2].unk4 = temp_r2.unk2;
                    var_r5 = 1;
                }
                if (var_r5 == 1)
                {
                    SetEntityAnimationInfoState(slot, 0x10);
                }
            }
            break;

        case 17:
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state != 0x11)
            {
                SetEntityAnimationInfoState(slot, 0x11);
            }

            gUnk_03003590[2].unk5_0 = 0;
            if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
            {
                if (gEntityInfo[slot].unk8.split.unk8 == 0)
                {
                    gEntityInfo[slot].unkF = 0x12;
                    break;
                }
                gEntityInfo[slot].unk8.split.unk8 -= 1;
            }

            if (gEntityInfo[slot].unk8.split.unk9 != 0)
            {
                gEntityInfo[slot].unk8.split.unk9 -= 1;
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk9 = ((thunk_GetRandomValue() % 8) * 10) + 0x14;
                gEntityInfo[slot].unkC_2 ^= 1;
            }

            if ((gUnk_03004C20.sceneFrameCounter % 3) == 0)
            {
                if (gEntityInfo[slot].unkC_2 == 0)
                {
                    gEntityInfo[slot].xPosBg2 += 4;
                    gEntityInfo[slot].xPosBg2 += -temp_sl;
                }
                else
                {
                    gEntityInfo[slot].xPosBg2 += -4;
                    gEntityInfo[slot].xPosBg2 += temp_sl;
                }
            }

            temp_r2 = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2 - 4, 0x10);
            if (temp_r2.unk0 != 0xFFFF)
            {
                gEntityInfo[slot].yPosBg2 = temp_r2.unk0 + 4;
                gUnk_03003590[2].unk4 = temp_r2.unk2;
            }

            if (gEntityInfo[slot].unkC_2 & 1)
            {
                temp_r5 = -0x10;
            }
            else
            {
                temp_r5 = 0x10;
            }
            temp_r2 = sub_08014184(gEntityInfo[slot].xPosBg2 + temp_r5, gEntityInfo[slot].yPosBg2, 0x18);
            if (temp_r2.unk0 != 0xFFFF)
            {
                gEntityInfo[slot].xPosBg2 = temp_r2.unk0 - temp_r5;
                temp_r2.unk2 += 0; // FAKE
                gEntityInfo[slot].unkC_2 ^= 1;
            }
            break;

        case 18:
            gUnk_03003590[2].unk5_0 = 0;
            gUnk_03003590[2].unk0 -= 8;
            if (gUnk_03003590[2].unk0 > -gBg2XMag)
            {
                break;
            }

            gEntityInfo[slot].unkF = 0x1A;
            gUnk_03003590[2].unk2 = 0;
            gUnk_03003590[2].unk0 = 0;
            gUnk_03003590[2].unk4 = 0;
            break;

        case 15:
            var_sb = 0;
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state != (temp_r6 + 0xA))
            {
                SetEntityAnimationInfoState(slot, temp_r6 + 0xA);
            }

            if ((slot == 0x1F) || (slot == 0x20))
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].frame != 0xFF)
                {
                    var_sb = -gUnk_080E2B52[gEntityAnimationInfo[slot - gUnk_0300363C].frame + (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 1)];
                }
            }

            if (gUnk_03005400.unk8_5 == 0)
            {
                gEntityInfo[slot].xPosBg2 = ((gEntityInfo[0x12].xPosBg2 + gUnk_080E2B4C[temp_r6][0]) + var_sb) + gUnk_080E2B4C[temp_r6][0];
            }
            else
            {
                gEntityInfo[slot].xPosBg2 = ((gEntityInfo[0x12].xPosBg2 - gUnk_080E2B4C[temp_r6][0]) - var_sb) - gUnk_080E2B4C[temp_r6][0];
            }
            // TODO: clean up
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 - ((SIN(gUnk_03004C20.sceneFrameCounter % 0x100) << 0x10) >> 0x15) + 8 + ((u8)gUnk_080E2B4C[temp_r6][1]);
            gEntityInfo[slot].yPosBg2 = (u8)gUnk_080E2B4C[temp_r6][1] + gEntityInfo[slot].yPosBg2;

            if ((gEntityAnimationInfo[slot - gUnk_0300363C].frame == 5) && (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0x30) && (slot == 0x1F))
            {
                gEntityInfo[0x16].unkC_2 = gUnk_03005400.unk8_5 ^ 1;
                gEntityInfo[0x16].unkF = 0x19;
            }

            if (gEntityAnimationInfo[slot - gUnk_0300363C].timer != 0xFF)
            {
                break;
            }

            gEntityInfo[slot].unkF = 0;
            if (slot == 0x21)
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

            if (gEntityAnimationInfo[slot - gUnk_0300363C].state != 0xD)
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 0x12)
                {
                    if (gEntityInfo[slot].unk8.split.unk8 != 0)
                    {
                        gEntityInfo[slot].unk8.split.unk8 -= 1;
                    }
                    else
                    {
                        gEntityInfo[slot].xPosBg2 = (gEntityInfo[slot].unk8.split.unk9 * 0x68) + 0x20;
                        gEntityInfo[slot].yPosBg2 = 0x10;
                        gEntityInfo[slot].unk8.split.unk8 = 0;
                        gUnk_03003590[2].unk2 = -0x80;
                        gUnk_03003590[2].unk0 = -0x80;
                        gEntityInfo[slot].unkF = 0xA;
                    }
                }
            }
            else
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer == 0xFF)
                {
                    if (gEntityInfo[0x1F].yPosBg2 == 0xF4)
                    {
                        m4aSongNumStart(0x85);
                    }

                    gEntityInfo[slot].yPosBg2 -= 6;
                    if (gEntityInfo[slot].yPosBg2 < 0x10)
                    {
                        gEntityInfo[slot].unk8.split.unk8 = 0x1E;
                        SetEntityAnimationInfoState(slot, 0x12);
                    }
                }
            }
            if (gEntityInfo[slot].unk16 == 0)
            {
                break;
            }

            gEntityInfo[slot].unk16 = 0;
            gEntityInfo[slot].unk8.split.unk9 = thunk_GetRandomValue() % 5;
            gUnk_03003590[2].unk4 = 0;
            gUnk_03003590[2].unk2 = -0x20;
            gUnk_03003590[2].unk0 = -0x20;

            gEntityInfo[0x1F].yPosBg2 = 0xF4;
            temp_r0_11 = (gBgInfo[2].hOfs - 0x78) / 3;
            if (gEntityInfo[slot].unk8.split.unk9 == 2)
            {
                gEntityInfo[slot].xPosBg2 = temp_r0_11 + 0xF0;
            }
            else if ((gEntityInfo[slot].unk8.split.unk9 == 0) || (gEntityInfo[slot].unk8.split.unk9 == 1))
            {
                gEntityInfo[slot].xPosBg2 = temp_r0_11 + 0xC8;
            }
            else
            {
                gEntityInfo[slot].xPosBg2 = temp_r0_11 + 0x118;
            }
            SetEntityAnimationInfoState(slot, 0xD);
            break;

        case 10:
            switch (gEntityInfo[slot].unk8.split.unk9)
            {
                case 0:
                    if (gEntityInfo[slot].unk8.split.unk8 < 0x40)
                    {
                        gEntityInfo[slot].xPosBg2 += 6;
                    }
                    gEntityInfo[slot].yPosBg2 = ((SIN(gEntityInfo[slot].unk8.split.unk8++) * 0xC8) >> 8) + 0x10;
                    break;

                case 1:
                    if (gEntityInfo[slot].unk8.split.unk8 < 0x40)
                    {
                        gEntityInfo[slot].xPosBg2 += 3;
                    }
                    gEntityInfo[slot].yPosBg2 = ((SIN(gEntityInfo[slot].unk8.split.unk8++) * 2) >> 1) + 0x10;
                    break;

                case 2:
                    gEntityInfo[slot].yPosBg2 = ((SIN(gEntityInfo[slot].unk8.split.unk8++) * 0x23) >> 5) + 0x10;
                    break;

                case 3:
                    if (gEntityInfo[slot].unk8.split.unk8 < 0x40)
                    {
                        gEntityInfo[slot].xPosBg2 -= 3;
                    }
                    gEntityInfo[slot].yPosBg2 = ((SIN(gEntityInfo[slot].unk8.split.unk8++) * 2) >> 1) + 0x10;
                    break;

                case 4:
                    if (gEntityInfo[slot].unk8.split.unk8 < 0x40)
                    {
                        gEntityInfo[slot].xPosBg2 -= 6;
                    }
                    gEntityInfo[slot].yPosBg2 = ((SIN(gEntityInfo[slot].unk8.split.unk8++) * 0xC8) >> 8) + 0x10;
                    break;
            }
            if (gEntityInfo[slot].unk8.split.unk8 >= 0x20)
            {
                if (gEntityInfo[slot].unk8.split.unk8 == 0x20)
                {
                    m4aSongNumStart(0x6F);
                }
                else if (gEntityInfo[slot].unk8.split.unk8 < 0x40)
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
                    gEntityInfo[slot].priority = 1;
                    gUnk_03003590[2].unk0 += 10;
                    gUnk_03003590[2].unk2 += 10;
                }
            }
            if (gEntityInfo[slot].unk8.split.unk8 == 0x70)
            {
                gUnk_03003590[2].unk2 = 0;
                gUnk_03003590[2].unk0 = 0;
                gEntityInfo[slot].yPosBg2 = 0x20;

                gUnk_03005400.unk13 -= 1;
                if (gUnk_03005400.unk13 == 0)
                {
                    gUnk_03005400.unkA = 0;
                    gEntityInfo[slot].unkF = 0x1A;
                }
                else
                {
                    SetEntityAnimationInfoState(slot, 0);
                    gEntityInfo[slot].unk16 = 1;
                    SetEntityAnimationInfoState(slot, 0x11);
                    gEntityInfo[slot].unkF = 7;
                }
            }

            if (gUnk_03003590[2].unk0 > 0x80 && gUnk_03003590[2].unk0 < 0xA0)
            {
                if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[slot].xPosBg2 + 0x30)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[slot].xPosBg2 - 0x30)) &&
                    ((gEntityInfo[0].yPosBg2 - 0x18) < gEntityInfo[slot].yPosBg2) && (gEntityInfo[0].yPosBg2 > (gEntityInfo[slot].yPosBg2 - 0x60)))
                {
                    if ((gUnk_03005220.klonoaInvulnerabilityTimer == 0))
                    {
                        ReceiveDamage(1);
                    }
                }
            }
            break;

        case 26:
            gEntityInfo[slot].unkF = 0x1C;
            gEntityInfo[slot].visible = 0;
            SetEntityAnimationInfoState(slot, 0);
            break;
    }
}

// 23988
void sub_08023988(u8 slot)
{
    // Called by entity id 0x1E
    struct Unk_08014184 var_r2;

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            gEntityInfo[slot].visible = 1;
            if (gEntityInfo[slot].unkC_2 == 0)
            {
                gEntityInfo[slot].xPosBg2 = 0x20;
            }
            else
            {
                gEntityInfo[slot].xPosBg2 = 0x1C0;
            }
            gEntityInfo[slot].yPosBg2 = 0xC8;
            gEntityInfo[slot].unk8.split.unk8 = 0x20;
            SetEntityAnimationInfoState(slot, 0x13);
        
            gEntityInfo[slot].unkF = 0;
            gEntityInfo[slot].unk8.split.unk9 = ((gEntityInfo[0x13].unk8.split.unk9 & 0xF) + 1) % 3;
            DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[slot].unk8.split.unk9 + 6], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[slot - 0xC].bpp_paletteNum * 0x20), 0x20);
            m4aSongNumStart(0x77);
            break;
        
        case 0:
            if ((gUnk_03004C20.sceneFrameCounter % 70) == 0)
            {
                m4aSongNumStart(0x77);
            }

            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                gEntityInfo[slot].unk8.split.unk8 -= 1;

                var_r2 = sub_08014230(gEntityInfo[slot].xPosBg2 + 4, gEntityInfo[slot].yPosBg2 - 8, 0x10);
                if (var_r2.unk0 != 0xFFFF)
                {
                    gEntityInfo[slot].yPosBg2 = var_r2.unk0;
                    gUnk_03003590[3].unk4 = var_r2.unk2;
                }
                break;
            }

            if (gEntityInfo[slot].unkC_2 == 0)
            {
                gEntityInfo[slot].xPosBg2 += gUnk_080E2B5E[gUnk_03005400.unkC - 1];
            }
            else
            {
                gEntityInfo[slot].xPosBg2 -= gUnk_080E2B5E[gUnk_03005400.unkC - 1];
            }
            gEntityInfo[slot].yPosBg2 += 4;

            var_r2 = sub_08014230(gEntityInfo[slot].xPosBg2 + 4, gEntityInfo[slot].yPosBg2 - 0x10, 0x10);
            if (var_r2.unk0 != 0xFFFF)
            {
                gEntityInfo[slot].yPosBg2 = var_r2.unk0 + 0x10;
                gUnk_03003590[3].unk4 = var_r2.unk2;
            }

            if (gEntityInfo[slot].unkC_2 & 1)
            {
                var_r2 = sub_08014184(gEntityInfo[slot].xPosBg2 - 8, gEntityInfo[slot].yPosBg2, 0x18);
            }
            else
            {
                var_r2 = sub_08014184(gEntityInfo[slot].xPosBg2 + 8, gEntityInfo[slot].yPosBg2, 0x18);
            }

            if (var_r2.unk0 != 0xFFFF)
            {
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
                gUnk_03005400.unk16 = 0;
                m4aSongNumStop(0x77);
            }
            break;
    }
}

// 23BC0
void sub_08023BC0(u8 slot)
{
    // Called by entity id 0x1F
    struct Unk_08014184 temp_r2;
    u8 temp_r0_6;
    u8 var_r0;
    u32 var_ip;

    if (slot > 0x18)
    {
        var_r0 = 7;
    }
    else
    {
        var_r0 = slot - 0x12;
    }
    gUnk_03003590[var_r0].unk5_0 = gEntityInfo[slot].unkC_2;

    switch (gEntityInfo[slot].unkF)
    {
        case 25:
            gEntityInfo[slot].priority = 0;
            gEntityInfo[slot].unkF = 1;
            gEntityInfo[slot].visible = 1;
            gEntityInfo[slot].unk8.split.unk8 = 0x40;
            if (gEntityInfo[0x12].xPosBg2 < gEntityInfo[0].xPosBg2)
            {
                gEntityInfo[slot].unkC_2 = 0;
                gEntityInfo[slot].unk8.split.unk9 = 0xF8;
            }
            else
            {
                gEntityInfo[slot].unkC_2 = 1;
                gEntityInfo[slot].unk8.split.unk9 = 8;
            }
            gEntityInfo[slot].xPosBg2 = (s8) gEntityInfo[slot].unk8.split.unk9 + gEntityInfo[0x13].xPosBg2;
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x13].yPosBg2;
            SetEntityAnimationInfoState(slot, 0x15);
            break;

        case 1:
            gEntityInfo[slot].xPosBg2 = (s8) gEntityInfo[slot].unk8.split.unk9 + gEntityInfo[0x12].xPosBg2;
            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2;
            gEntityInfo[slot].unk8.split.unk8 -= 1;
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                break;
            }
            gEntityInfo[slot].unkF = 0;
            break;

        case 0:
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 0x16)
            {
                if (gEntityAnimationInfo[slot - gUnk_0300363C].timer != 0xFF)
                {
                    break;
                }

                if (gEntityInfo[slot].unk8.split.unk8 != 0)
                {
                    gEntityInfo[slot].unk8.split.unk8 -= 1;

                    gUnk_03003590[var_r0].unk0 = SIN((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) >> 0x3;
                    gUnk_03003590[var_r0].unk2 = COS((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) >> 0x3;
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
                gEntityInfo[var_ip].xPosBg2 = gEntityInfo[slot].xPosBg2;
                gEntityInfo[var_ip].yPosBg2 = gEntityInfo[slot].yPosBg2;
                gEntityInfo[var_ip].unkC_2 = gEntityInfo[slot].unkC_2;
                SetEntityAnimationInfoState(var_ip, 1);
                gEntityInfo[slot].unkF = 0x1A;
                gEntityInfo[slot].priority = 1;
                gUnk_03005400.unk16 = 0;
                gEntityInfo[var_ip].unk8.split.unk9 = gUnk_080D8E10[gUnk_03005400.unk14];
                DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[var_ip].unk8.split.unk9 + 3], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_ip - 0xC].bpp_paletteNum * 0x20), 0x20);
                gUnk_03005400.unk14 = (gUnk_03005400.unk14 + 1) % 3;
            }
            else
            {
                gEntityInfo[slot].yPosBg2 += 1;
                temp_r2 = sub_08014230(gEntityInfo[slot].xPosBg2, gEntityInfo[slot].yPosBg2, 0x10U);
                if (temp_r2.unk0 != 0xFFFF)
                {
                    gEntityInfo[slot].yPosBg2 = temp_r2.unk0;
                    gEntityInfo[slot].unk8.split.unk8 = 0x78;
                    SetEntityAnimationInfoState(slot, 0x16);
                }
            }
            break;

        case 17:
            if (gEntityAnimationInfo[slot - gUnk_0300363C].state == 0x17)
            {
                if (gEntityInfo[slot].unk8.split.unk8 != 0)
                {
                    gEntityInfo[slot].unk8.split.unk8 -= 1;

                    gUnk_03003590[var_r0].unk0 = SIN((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) >> 0x3; PI;
                    gUnk_03003590[var_r0].unk2 = COS((gUnk_03004C20.sceneFrameCounter * 8) % 0x100) >> 0x3;
                    break;
                }

                temp_r0_6 = slot - 3;

                gUnk_03003590[var_r0].unk2 = 0;
                gUnk_03003590[var_r0].unk0 = 0;

                gEntityInfo[temp_r0_6].unkF = 0;
                gEntityInfo[temp_r0_6].xPosBg2 = gEntityInfo[slot].xPosBg2;
                gEntityInfo[temp_r0_6].yPosBg2 = gEntityInfo[slot].yPosBg2;
                gEntityInfo[temp_r0_6].unkC_2 = gEntityInfo[slot].unkC_2;
                SetEntityAnimationInfoState(temp_r0_6, 1);
                gEntityInfo[slot].unkF = 0x1A;
                gEntityInfo[temp_r0_6].unk8.split.unk9 = gEntityInfo[0x16].unk8.split.unk9;
                DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[temp_r0_6].unk8.split.unk9 + 3], OBJ_PLTT + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[temp_r0_6 - 0xC].bpp_paletteNum * 0x20), 0x20);
            }
            else
            {
                gEntityInfo[slot].unk8.split.unk8 = 0x78;
                SetEntityAnimationInfoState(slot, 0x17);
            }
            break;

        case 14:
            gEntityInfo[slot].yPosBg2 = 0x178;
            gEntityInfo[slot].visible = 1;
            SetEntityAnimationInfoState(0x19, 0x14);
            gEntityInfo[slot].unk8.split.unk8 = ((thunk_GetRandomValue() % 20) * 8) + 0x32;

            gUnk_03003590[var_r0].unk2 = 0x100;
            gUnk_03003590[var_r0].unk0 = 0x100;

            gEntityInfo[slot].unkF = 0xF;
            break;

        case 15:
            gEntityInfo[slot].affineDouble = 1;
            if (gEntityInfo[slot].unk8.split.unk8 != 0)
            {
                if (gEntityInfo[slot].unk8.split.unk8 == 1)
                {
                    m4aSongNumStart(0x75);
                }
                gEntityInfo[slot].unk8.split.unk8 -= 1;
                break;
            }

            gEntityInfo[slot].yPosBg2 = gEntityInfo[slot].yPosBg2 - 3;
            if ((s16) gEntityInfo[slot].yPosBg2 <= 0x8B)
            {
                gEntityInfo[slot].unkF = 0x1C;
                gEntityInfo[slot].visible = 0;
            }
            break;

        case 16:
            gEntityInfo[slot].yPosBg2 = 0x168;
            gEntityInfo[slot].visible = 1;
            SetEntityAnimationInfoState(0x19, 0x14);
            gEntityInfo[slot].unk8.split.unk8 = ((thunk_GetRandomValue() % 20) * 8) + 0x28;

            gUnk_03003590[var_r0].unk2 = 0x100;
            gUnk_03003590[var_r0].unk0 = 0x100;

            gEntityInfo[slot].unkF = 0xF;
            break;

        case 26:
            gEntityInfo[slot].unkF = 0x1C;
            gEntityInfo[slot].visible = 0;
            gEntityInfo[slot].unk8.split.unk8 = 0;
            SetEntityAnimationInfoState(slot, 0);
            break;
    }
}
