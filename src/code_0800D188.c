#include "global.h"
#include "code_08003D58.h"
#include "code_0800BFF4.h"
#include "code_08014184.h"
#include "code_080240F4.h"
#include "main.h"
#include "rand.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

/*

    This function is HUGE, about 0x7000 bytes.
    Currently, it's about 96% matching, so still needs a lot of work before it can be cleaned up
    https://decomp.me/scratch/Cdry3

*/

void sub_080446F8();                                /* extern */
void sub_08047B1C();                                /* extern */

extern struct Unk_0300466C *gUnk_0818B8E0[6][9];

extern void gUnk_08055614;
extern u16 gUnk_08057C50;
extern u16 gUnk_08057C58;
extern void gUnk_0805C8E8;
extern void gUnk_0805C968;
extern void gUnk_08062148;
extern void gUnk_0809AC08;
extern void gUnk_0809AC88;
extern void gUnk_080B9368;
extern void gUnk_080D8A70;
extern void gUnk_080D8AF0;
extern void gUnk_080D8B30;

extern u8 gUnk_080D8E10[];
extern s8 gUnk_080D90B8[];
extern s8 gUnk_080D9110[];
extern u8 gUnk_08116894[][4];
extern u8 gUnk_08116A16[][4];
extern void *gUnk_0818B7DC[];
extern void *gUnk_0818B9B8[][4];

void sub_0800D188(void)
{
    struct Unk_08014184 sp0;
    struct Unk_08014184 sp4;
    struct Unk_08014184 sp8;
    struct Unk_08014184 spC;
    struct Unk_08014184 sp10;
    struct Unk_08014184 sp14;
    u32 sp18;
    u16 sp1C;
    u8 sp20;
    u32 sp24;
    s32 sp38;
    s32 temp_r5_26;
    struct Unk_08014184 temp_r0;
    struct Unk_08014184 temp_r1;
    struct Unk_08014184 temp_r1_1;
    s32 var_r6;
    s32 var_r7;
    s32 var_r7_15;
    s32 var_r7_2;
    s32 var_r7_3;
    s32 var_r7_5;
    s32 var_r7_7;
    s32 var_r7_8;
    s32 var_r7_9;
    u16 var_r7_10;
    u16 var_r7_11;
    u16 var_r7_12;
    u16 var_r7_13;
    u16 var_r7_6;
    u32 temp_r7_3;
    u32 var_r2_13;
    u32 var_r3;
    u32 var_r3_2;
    u32 var_r3_3;
    u32 var_r3_4;
    u32 var_sb;
    u32 temp_r0_132;
    u8 var_r1_24;
    u8 var_r1_25;
    u8 var_r1_26;
    u8 var_r1_27;
    u32 var_r4_2;
    u8 var_r5_3;
    u8 var_r7_14;

    sp18 = gEntityInfo[0].xPosBg2;
    sp1C = gEntityInfo[0].yPosBg2;
    sp20 = 0;

    if (gUnk_03005220.unk46 != 0)
    {
        if (gUnk_03005220.unk46 <= 0x41)
        {
            if (gUnk_03005220.unk46 == 0x41)
            {
                gBlendValue = 0x10;
                REG_BLDALPHA = 0x10;
                REG_BLDY = 0x10;
                REG_BLDCNT = BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG0 | BLDCNT_EFFECT_BLEND;

                for (var_sb = 1; var_sb < gUnk_03005428; var_sb++)
                {
                    gEntityInfo[var_sb].objMode = 1;
                }
            }

            if (!(gUnk_03004C20.globalFrameCounter & 3) && (gBlendValue != 0))
            {
                gBlendValue -= 1;
            }
        }

        gNewKeys = 0;
        gHeldKeys = 0;
        if (gUnk_03005220.unk46 == 1)
        {
            gCallbackQueue.next[0] = InputHandler_Normal;
            if (gUnk_03004C20.level == 8)
            {
                gCallbackQueue.next[2] = sub_0800C108;
            }
            else
            {
                gCallbackQueue.next[2] = sub_0800BFF4;
            }

            gCallbackQueue.next[3] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 4;
            if (gUnk_03004C20.level == 8)
            {
                gEntityInfo[0x12].unkF = 0x1C;
                gEntityInfo[0x12].unk10 = 0;
                sub_08003D80();
            }

            gUnk_03005220.lives -= 1;
            if ((gUnk_03005220.lives < 1) || (gUnk_03005220.lives >= 0x64))
            {
                gUnk_03005220.unk37 = 1;
                sub_080008DC();
                m4aMPlayAllStop();
                gCallbackQueue.next[1] = sub_080446F8;
                gCallbackQueue.next[2] = sub_0800C7EC;
                gUnk_03004C20.sceneFrameCounter = 0;
                gCallbackQueue.currentCount = 1;
                gCallbackQueue.current[0] = NULL;
            }
            else
            {
                gUnk_03004C20.unkF = 0;
                gCallbackQueue.next[1] = sub_08024D84;
            }
        }
        else
        {
            if (((gUnk_03005220.unk31 | gUnk_03005220.unk35) == 0) && (gUnk_03005220.unk47 <= 0x63))
            {
                gUnk_03005220.unk47 += 1;
                if (gEntityInfo[0].yPosScreen <= 0xB7)
                {
                    gUnk_03005220.unk46 = 0x46;
                }
                else
                {
                    gUnk_03005220.unk28 = 0;
                }
            }
        }
    }

    if (gUnk_03005220.unk3E != 0)
    {
        gUnk_03005220.unk3E -= 1;
        if (gUnk_03005220.unk3E > 0x43)
        {
            if ((gUnk_03005220.unk5B != 0) && (gUnk_03005220.unk3E & 1))
            {
                gEntityInfo[0].unk10 ^= 1;
            }
        }
        else if ((gUnk_03005220.unk5B != 0) && !(gUnk_03005220.unk3E & 7))
        {
            gEntityInfo[0].unk10 ^= 1;
        }

        if ((gUnk_03005220.unk39 == 0) && (gUnk_03005220.unk3E > 0x78))
        {
            if (gUnk_03005220.unk44 == 0)
            {
                gEntityInfo[0].xPosBg2 -= 1;
            }
            else
            {
                gEntityInfo[0].xPosBg2 += 1;
            }
            gEntityInfo[0].yPosBg2 -= 1;
        }

        if ((gEntityAnimationInfo[0].state == 0xC) && (gUnk_03005220.unk3E <= 0x6C))
        {
            if ((gUnk_03005220.unk34 | gUnk_03005220.unk39 | gUnk_03005220.unk38) != 0)
            {
                sub_08025B78(0, 0xF);
            }
            else if (gUnk_03005220.unk42 == 0)
            {
                sub_08025B78(0, 0);
            }
            else
            {
                sub_08025B78(0, 0x16);
            }
        }

        if (gUnk_03005220.unk3E == 0)
        {
            gUnk_03005220.unk5B = 0;
        }
    }

    if (gUnk_03004C20.unkA == 0)
    {
        if (gUnk_03003410.unkB > 1)
        {
            *(vu8*)&gUnk_03004C20.level; // fake?
            gNewKeys &= START_BUTTON;
            gHeldKeys &= START_BUTTON;
            return;
        }

        if (gEntityAnimationInfo[0].state == 0xC)
        {
    
        }
        else if (gHeldKeys & DPAD_RIGHT)
        {
            gEntityInfo[0].unkC_2 = 0;
            if ((gUnk_03005220.unk34 | gUnk_03005220.unk39) != 0)
            {
    
            }
            else if ((gUnk_03005220.unk3A != 0) && (gUnk_03005220.unk3B == 0) && (gEntityInfo[gUnk_03005220.unk42].unk11 != 0x6F) && (gEntityInfo[gUnk_03005220.unk42].unk11 != 0x25))
            {
    
            }
            else
            {
                gUnk_03005220.unk26 += 0x150;
                if (gUnk_03005220.unk26 > 0x1800)
                {
                    gUnk_03005220.unk26 = 0x1800;
                }
                else if (gUnk_03005220.unk26 < 0)
                {
                    gUnk_03005220.unk26 = 0;
                }

                if (gUnk_03005220.unk3D <= 1)
                {
                    if (gUnk_03004C20.globalFrameCounter & 1)
                    {
                        gEntityInfo[0].xPosBg2 += 1;
                    }
                    gEntityInfo[0].xPosBg2 += 1;
                }
                else if (gUnk_03004C20.globalFrameCounter & 1)
                {
    
                }
                else
                {
                    gEntityInfo[0].xPosBg2 += 1;
                }
            }
        }
        else
        {
            if (gHeldKeys & DPAD_LEFT)
            {
                gEntityInfo[0].unkC_2 = 1;
                if ((gUnk_03005220.unk34 | gUnk_03005220.unk39) != 0)
                {
    
                }
                else if ((gUnk_03005220.unk3A == 0) || (gUnk_03005220.unk3B != 0) || (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25))
                {
                    gUnk_03005220.unk26 -= 0x150;
                    if (gUnk_03005220.unk26 < -0x1800)
                    {
                        gUnk_03005220.unk26 = -0x1800;
                    }
                    else if (gUnk_03005220.unk26 > 0)
                    {
                        gUnk_03005220.unk26 = 0;
                    }

                    if (gUnk_03005220.unk3D <= 1)
                    {
                        if (gUnk_03004C20.globalFrameCounter & 1)
                        {
                            gEntityInfo[0].xPosBg2 -= 1;
                        }
                        gEntityInfo[0].xPosBg2 -= 1;
                    }
                    else if (!(gUnk_03004C20.globalFrameCounter & 1))
                    {
                        gEntityInfo[0].xPosBg2 -= 1;
                    }
                }
            }
            else if (gUnk_03005220.unk26 > 0xD20)
            {
                gEntityInfo[0].xPosBg2 += 1;
                gUnk_03005220.unk26 -= 0x150;
            }
            else if (gUnk_03005220.unk26 < -0xD20)
            {
                gEntityInfo[0].xPosBg2 += -1;
                gUnk_03005220.unk26 += 0x150;
            }
            else
            {
                gUnk_03005220.unk26 = 0;
            }
        }

        if (gUnk_03004C20.level == 6)
        {
            if ((gEntityInfo[0].xPosBg2 < (gBgInfo[2].hOfs + 8)) && (gUnk_030034E4 == 0))
            {
                gUnk_03005220.hearts = 1;
                sub_08014624(1);
            }

            if (gEntityInfo[0].xPosBg2 < (gBgInfo[2].hOfs + 0x10))
            {
                gEntityInfo[0].xPosBg2 = gBgInfo[2].hOfs + 0x10;
                if (gUnk_03005220.unk34 == 1)
                {
                    sub_08025B78(0, 0);
                    sub_08025B78(gUnk_03005220.unk3F, 0);
                    gUnk_03005220.unk57 = 0;
                    gUnk_03005220.unk56 = 0;
                    gUnk_03005220.unk3F = 0;
                    gUnk_03005220.unk34 = 0;
                    gUnk_03005220.unk28 = 0;
                }
            }
            else
            {
                if (gEntityInfo[0].xPosBg2 > (gBgInfo[2].hOfs + 0xF0))
                {
                    gEntityInfo[0].xPosBg2 = gBgInfo[2].hOfs + 0xF0;
                }
            }
        }

        if (sp18 < gEntityInfo[0].xPosBg2)
        {
            gUnk_03005220.unk4A = 0;

            sp20 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)];

            sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)]) : sp20;

            sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) : sp20;

            if ((gUnk_03005220.unk43 != 1) && (gEntityInfo[gUnk_03005220.unk42].unk11 != 0x6F) && (gEntityInfo[gUnk_03005220.unk42].unk11 != 0x25))
            {
    
            }
            else
            {
                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x1B) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x1B) >> 3) * gBgInfo[2].hLength)]) : sp20;

                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x24) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x24) >> 3) * gBgInfo[2].hLength)]) : sp20;

                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2C) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2C) >> 3) * gBgInfo[2].hLength)]) : sp20;
            }
        }
        else if (sp18 > gEntityInfo[0].xPosBg2)
        {
            sp20 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)];

            sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)]) : sp20;

            sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) : sp20;

            if ((gUnk_03005220.unk43 != 1) && (gEntityInfo[gUnk_03005220.unk42].unk11 != 0x6F) && (gEntityInfo[gUnk_03005220.unk42].unk11 != 0x25))
            {
    
            }
            else
            {
                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x1B) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x1B) >> 3) * gBgInfo[2].hLength)]) : sp20;

                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x24) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x24) >> 3) * gBgInfo[2].hLength)]) : sp20;

                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2C) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2C) >> 3) * gBgInfo[2].hLength)]) : sp20;
            }
        }
    }
    else
    {
        if (gUnk_03004C20.level == 8)
        {
            if (gHeldKeys & DPAD_RIGHT)
            {
                gEntityInfo[0].unkC_2 = 0;
                if (gUnk_03004C20.globalFrameCounter & 1)
                {
                    gEntityInfo[0].xPosBg2 += 1;
                }
                if (gUnk_03005220.unk3D <= 1)
                {
                    gEntityInfo[0].xPosBg2 += 1;
                }
            }
            else if (gHeldKeys & DPAD_LEFT)
            {
                gEntityInfo[0].unkC_2 = 1;
                if (gUnk_03004C20.globalFrameCounter & 1)
                {
                    gEntityInfo[0].xPosBg2 -= 1;
                }
                if (gUnk_03005220.unk3D <= 1)
                {
                    gEntityInfo[0].xPosBg2 -= 1;
                }
            }
        }
        else
        {
            if (gUnk_03005220.unk34 == 0)
            {
                if (gUnk_03003410.unkB != 0)
                {
                    gNewKeys &= START_BUTTON;
                    gHeldKeys &= START_BUTTON;
                    if (gUnk_03005220.unk16 > 0x100)
                    {
                        gUnk_03005220.unk16 -= 0xC;
                    }
                    else
                    {
                        gUnk_03005220.unk16 += 0xC;
                    }

                    if (gUnk_03005220.unk18 > 6)
                    {
                        gUnk_03005220.unk18 -= 6;
                    }
                }
                else
                {
                    if (gUnk_03005220.unk3D > 1)
                    {
                        if (gUnk_03005220.unk16 > 0x200)
                        {
                            gUnk_03005220.unk16 -= 0x1E;
                        }
                    }
                    else if (gUnk_03005220.unk16 > 0x22F)
                    {
                        if (gUnk_03005220.unk16 > 0x230)
                        {
                            gUnk_03005220.unk16 -= 6;
                        }
                    }

                    if (gUnk_03005220.unk31 == 1)
                    {
                        if (gUnk_03005220.unk2F > 0x14)
                        {
                            if (gUnk_03005220.unk18 <= 0x34F)
                            {
                                gUnk_03005220.unk18 += 8;
                            }
                        }
                        else if (gUnk_03005220.unk2F > 0)
                        {
                            if (gUnk_03005220.unk18 <= 0x31F)
                            {
                                gUnk_03005220.unk18 += 4;
                            }
                            else
                            {
                                gUnk_03005220.unk18 -= 2;
                            }
                        }
                        else if (gUnk_03005220.unk2F < -0x14)
                        {
                            if (gUnk_03005220.unk18 > 0xA0)
                            {
                                gUnk_03005220.unk18 -= 0x50;
                            }
                        }
                        else if ((gUnk_03005220.unk2F < 0) && (gUnk_03005220.unk18 > 0x60))
                        {
                            gUnk_03005220.unk18 -= 0x30;
                        }
                    }
                    else if (gUnk_03005220.unk16 > 0x230)
                    {
                        gUnk_03005220.unk16 -= 5;
                    }
                }

                gUnk_03005220.unk10 = gUnk_03005220.unk10 + ((gEntityInfo[0].xPosBg2 - gUnk_03005220.unk1A) << 0x10) + ((gUnk_03005220.unk16 + gUnk_03005220.unk18) << 8);
                gEntityInfo[0].xPosBg2 = gUnk_03005220.unk10 >> 0x10;
                gUnk_03005220.unk1A = gUnk_03005220.unk10 >> 0x10;
                if ((gEntityInfo[0].xPosBg2 < (gBgInfo[2].hOfs + 0x10)) && (gUnk_030034E4 == 0))
                {
                    gUnk_03005220.hearts = 1;
                    sub_08014624(1);
                }
            }

            if (gEntityInfo[0].xPosBg2 <= (gBgInfo[2].hOfs + 0x11))
            {
                gEntityInfo[0].xPosBg2 = gBgInfo[2].hOfs + 0x11;
            }
        }

        if (gUnk_03004C20.level == 8)
        {
            if (gEntityInfo[0].unkC_2 & 1)
            {
                sub_08014184(&sp0, (u16) (gEntityInfo[0].xPosBg2 - 0x10), gEntityInfo[0].yPosBg2, 0x18);
                temp_r1 = sp0;
            }
            else
            {
                sub_08014184(&sp4, (u16) (gEntityInfo[0].xPosBg2 + 0x10), gEntityInfo[0].yPosBg2, 0x18);
                temp_r1 = sp4;
            }
        }
        else
        {
            sub_08014184(&sp8, (u16) (gEntityInfo[0].xPosBg2 + 8), gEntityInfo[0].yPosBg2, 0x18);
            temp_r1 = sp8;
        }

        if (temp_r1.unk0 != 0xFFFF)
        {
            sp20 = gUnk_03004654[0x1B];
            if (gUnk_03003410.unkB == 1)
            {
                gUnk_03003410.unkB = 2;

                for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount + 1); var_r3++)
                {
                    if (var_r3 == 4)
                    {
                        gCallbackQueue.next[4] = &sub_080264A4;
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

                sub_08025B78(0, 0x13);
                if (gUnk_03005220.unk43 != 0)
                {
                    sub_0801E664(gEntityInfo[gUnk_03005220.unk42].xPosBg2, gEntityInfo[gUnk_03005220.unk42].yPosBg2, 2, gUnk_03005220.unk42);
                    gUnk_03005220.unk38 = 0;
                    gUnk_03005220.unk43 = 0;
                    gUnk_03005220.unk42 = 0;
                }
            }
        }
        else
        {
            sp20 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
        }

        gUnk_030034FC[gUnk_030034FC[0] + 1] = gEntityInfo[0].yPosBg2;
        gUnk_030034FC[0] = (gUnk_030034FC[0] + 1) & 0xF;
    }

    if (gUnk_03004654[0x1A] <= sp20)
    {
        gEntityInfo[0].xPosBg2 = sp18;
    }
    else
    {
        if (sp20 == gUnk_03004654[0x18])
        {
            gEntityInfo[0].xPosBg2 = sp18;
            if (gUnk_03005220.unk3E != 0)
            {
                if (gUnk_03005220.unk5B == 0)
                {
                    sub_08014624(1);
                }
            }
            else
            {
                sub_08014624(1);
            }
        }
        else if (sp20 == gUnk_03004654[0x19])
        {
            if ((gUnk_03005220.unk3E == 0) || (gUnk_03005220.unk5B == 0))
            {
                gUnk_03005220.hearts = 1;
                sub_08014624(1);
            }
        }
        else if ((gUnk_03004654[1] <= sp20) && (sp20 <= gUnk_03004654[0x14]))
        {
            if (gUnk_030034E4 == 1)
            {
                gEntityInfo[0].xPosBg2 = sp18;
            }
            else
            {
                if (gUnk_03004C20.unk11 != 0)
                {
                    if (gNewKeys & DPAD_UP)
                    {
                        m4aSongNumStart(0x60);
                        sub_08025B78(0, 0x25);
                        goto block_223;
                    }
                    goto block_236;
                }
    block_223:
                if (gUnk_03005220.unk46 == 0)
                {
                    gUnk_030051C8 = sp20;
                    gUnk_030034E4 = 1;

                    for (var_r3_2 = 0; var_r3_2 < (gCallbackQueue.currentCount + 1); var_r3_2++)
                    {
                        if (var_r3_2 == 4)
                        {
                            gCallbackQueue.next[4] = &sub_08024718;
                        }
                        else if (var_r3_2 > 4)
                        {
                            gCallbackQueue.next[var_r3_2] = gCallbackQueue.current[var_r3_2 - 1];
                        }
                        else
                        {
                            gCallbackQueue.next[var_r3_2] = gCallbackQueue.current[var_r3_2];
                        }
                    }
                    if (var_r3_2 > 3)
                    {
                        gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
                        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                    }

                    gBlendValue = 0;
                    return;
                }
            }
        }
    }

block_236:
    if ((gEntityInfo[0].xPosBg2 != sp18) || ((s8) gUnk_03005220.unk56 != 0))
    {
        for (var_sb = 0xD; var_sb < gUnk_03005428; var_sb++)
        {
            if ((gEntityInfo[var_sb].unkF == 0x1A) || (((gEntityInfo[var_sb].unk10 != 0)) && ((u32) gEntityInfo[var_sb].unkF <= 0x12)))
            {
                switch (gEntityInfo[var_sb].unk11 - 3)
                {
                    case 0x22:
                    case 0x6C:
                        if (gEntityInfo[var_sb].unk16 != 0)
                        {
                            if (gEntityInfo[var_sb].unkF <= 1)
                            {
                                gEntityInfo[gUnk_03005220.unk42].unk16 = 0;
                                goto block_247;
                            }
                        }
                        else
                        {
block_247:
                            if (gUnk_03005220.unk34 == 0)
                            {
                                if (((s32)((sp18 + gUnk_03005220.unk56) - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 7)) && ((s32) (((sp18 + gUnk_03005220.unk56) - 0xC) + 0x18) > (s32) ((gEntityInfo[var_sb].xPosBg2 + 7) - 0x16)) && ((s32) (sp1C - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && (sp1C > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x18)))
                                {
                                    if (gUnk_03005220.unk39 != 0)
                                    {
                                        if (gUnk_03005220.unk42 != var_sb)
                                        {
                                            gUnk_03005220.unk57 = 0;
                                            gUnk_03005220.unk56 = 0;
                                            gUnk_03005220.unk39 = 0;
                                            gUnk_03005220.unk3F = 0;
                                            sp1C -= 1;
                                            sub_080145A8(1);
                                            goto block_255;
                                        }
                                    }
                                    else
                                    {
block_255:
                                        if (gEntityInfo[var_sb].unkF > 0xF)
                                        {
                                            gEntityInfo[var_sb].unkF = 0;
                                        }
                                        gUnk_03005220.unk40 = (u8) var_sb;
                                    }
                                }
                                else
                                {
                                    if ((((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 7)) && ((s32) (((gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xC) + 0x18) > (s32) ((gEntityInfo[var_sb].xPosBg2 + 7) - 0x16)) && ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x18)))
                                    {
                                        if (gEntityInfo[var_sb].unkF > 0xF)
                                        {
                                            gEntityInfo[var_sb].unkF = 0;
                                        }
                                        gEntityInfo[0].xPosBg2 = sp18;
                                    }
                                    else if (gUnk_03005220.unk40 == var_sb)
                                    {
                                        gUnk_03005220.unk40 = 0;
                                    }

                                    if ((gUnk_03005220.unk43 == 1) && (gUnk_03005220.unk39 == 0))
                                    {
                                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 7)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)) && ((s32) (gEntityInfo[0].yPosBg2 - 0x30) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) (gEntityInfo[0].yPosBg2 - 0x18) > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x18)))
                                        {
                                            if (gEntityInfo[var_sb].unkF > 0xF)
                                            {
                                                gEntityInfo[var_sb].unkF = gUnk_03005220.unk39;
                                            }
                                            sp18 = gEntityInfo[0].xPosBg2 = sp18 - gUnk_03005220.unk56;
                                        }
                                        else
                                        {
                                            if (gUnk_03005220.unk40 == var_sb)
                                            {
                                                gUnk_03005220.unk40 = 0;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        break;

                    case 0x3:
                    case 0x5:
                    case 0x8:
                    case 0x73:
                    case 0x74:
                    case 0x75:
                    case 0x76:
                    case 0x77:
                    case 0x78:
                    case 0x79:
                    case 0x7A:
                        if (gEntityInfo[var_sb].unkF <= 0xD)
                        {
                            if (((gEntityInfo[var_sb].affineEnable) == 0) || (gUnk_03004C20.level == 8))
                            {
                                var_r7 = 0;
                            }
                            else
                            {
                                var_r7 = 0xC;
                            }

                            if ((gUnk_03005220.unk3E == 0) || (gUnk_03005220.unk5B == 0))
                            {
                                if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) ((gEntityInfo[var_sb].xPosBg2) + (var_r7 - 2))) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) ((gEntityInfo[var_sb].xPosBg2) - (var_r7 - 2))))
                                {
                                    if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) (gEntityInfo[var_sb].yPosBg2 + (var_r7 - 8))) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - (var_r7 + 0xC))))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }

                            if ((gUnk_03005220.unk43 == 1) && ((gEntityInfo[var_sb].unk11 == 6) || (gEntityInfo[var_sb].unk11 == 8)) && ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25)))
                            {
                                if ((gEntityInfo[0].xPosBg2 - 0xC) < ((gEntityInfo[var_sb].xPosBg2) + (var_r7 + 0xC)))
                                {
                                    if ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) > ((gEntityInfo[var_sb].xPosBg2) - (var_r7 + 0xC)))
                                    {
                                        if ((s32) (gEntityInfo[0].yPosBg2 - 0x30) < ((gEntityInfo[var_sb].yPosBg2) + var_r7))
                                        {
                                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) > ((gEntityInfo[var_sb].yPosBg2) - (var_r7 + 0x18))) && (((s32) (sp18 - 0xB) >= ((gEntityInfo[var_sb].xPosBg2) + (var_r7 + 0xC))) || ((s32) (sp18 + 0xB) <= ((gEntityInfo[var_sb].xPosBg2) - (var_r7 + 0xC))) || ((s32) (sp1C - 0x30) >= ((gEntityInfo[var_sb].yPosBg2) + var_r7)) || ((s32) (sp1C - 0x18) <= ((gEntityInfo[var_sb].yPosBg2) - (var_r7 + 0x18)))))
                                            {
                                                sp18 = gEntityInfo[0].xPosBg2 = sp18 - gUnk_03005220.unk56;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        break;

                    case 0x29:
                    case 0x2A:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) gEntityInfo[var_sb].xPosBg2) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) gEntityInfo[var_sb].xPosBg2))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 8)))
                            {
                                if (gEntityInfo[var_sb].unk8.split.unk8 < 0x20)
                                {
                                    gUnk_03005220.unk8 |= 1 << gEntityInfo[var_sb].unk8.split.unk8;
                                }
                                else
                                {
                                    gUnk_03005220.unkC |= 1 << (gEntityInfo[var_sb].unk8.split.unk8 - 0x20);
                                }

                                if (gEntityInfo[var_sb].unk11 == 0x2C)
                                {
                                    gUnk_03005220.dreamStones += 1;
                                }
                                else
                                {
                                    gUnk_03005220.dreamStones += 5;
                                }

                                if (gEntityInfo[var_sb].unk11 == 0x2C)
                                {
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 0xC), 3, (u8) var_sb);
                                }
                                else
                                {
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 6), 3, (u8) var_sb);
                                }

                                if (sub_08025E68() != 0)
                                {
                                    m4aSongNumStart(0x91);
                                }
                                else if (gEntityInfo[var_sb].unk11 == 0x2C)
                                {
                                    m4aSongNumStart(0x31);
                                }
                                else
                                {
                                    m4aSongNumStart(0x7B);
                                }
                            }
                        }
                        break;

                    case 0x4:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) gEntityInfo[var_sb].xPosBg2) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) gEntityInfo[var_sb].xPosBg2))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0xC)))
                            {
                                if (gUnk_03005220.hearts != 0)
                                {
                                    gUnk_03005220.unk2_7 |= 1 << gEntityInfo[var_sb].unk8.split.unk8;
                                    if (gUnk_03005220.hearts <= 2)
                                    {
                                        gUnk_03005220.hearts += 1;
                                        sub_08025DD4();
                                    }
                                    m4aSongNumStart(0x62);
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 6), 5, (u8) var_sb);
                                }
                            }
                        }
                        break;

                    case 0x0:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) gEntityInfo[var_sb].xPosBg2) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) gEntityInfo[var_sb].xPosBg2))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0xC)))
                            {
                                if ((gEntityInfo[var_sb].unkF != 2) && (gEntityInfo[var_sb].unkF != 0x1C))
                                {
                                    gUnk_03005220.stars |= 1 << gEntityInfo[var_sb].unk8.split.unk8;
                                    if (gUnk_03005220.stars == 7)
                                    {
                                        m4aSongNumStart(0x92);
                                    }
                                    else
                                    {
                                        m4aSongNumStart(0x33);
                                    }

                                    gEntityInfo[var_sb].unkF = 2;
                                    gEntityInfo[var_sb].unk8.split.unk9 = 0;
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 8), 3, 0);
                                }
                            }
                        }
                        break;

                    case 0x2B:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) gEntityInfo[var_sb].xPosBg2) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) gEntityInfo[var_sb].xPosBg2))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0xC)) && (gEntityInfo[var_sb].unkF != 2))
                            {
                                m4aSongNumStart(0x87);
                                gEntityInfo[var_sb].unkF = 2;
                                gEntityInfo[var_sb].unk8.split.unk9 = 0;
                                sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 4), 4, (u8) var_sb);
                            }
                        }
                        break;

                    case 0x3E:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10)))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x1E)) && (gEntityAnimationInfo[var_sb - gUnk_0300363C].state == 0))
                            {
                                gEntityInfo[0].xPosBg2 = sp18;
                                if (gUnk_03005220.stars == 7)
                                {
                                    m4aSongNumStart(0x35);
                                    sub_08025B78(var_sb, 1);
                                    gUnk_03005220.unk3_5 = 1;
                                }
                            }
                        }
                        break;

                    case 0x2:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10)))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20)))
                            {
                                if (gEntityInfo[var_sb].unk8.split.unk9 & gUnk_03005220.keys)
                                {
                                    m4aSongNumStart(0x34);
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, gEntityInfo[var_sb].yPosBg2, 3, (u8) var_sb);
                                    gUnk_03005220.unk14 |= 1 << gEntityInfo[var_sb].unk8.split.unk8;
                                }
                                else
                                {
                                    gEntityInfo[0].xPosBg2 = sp18;
                                }
                            }
                        }
                        break;

                    case 0x38:
                        sp24 = gEntityInfo[var_sb].unkC_2;
                        if (sp24 == 1)
                        {
                            var_r7_2 = 8;
                        }
                        else
                        {
                            var_r7_2 = 0;
                        }
                        if (((gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + var_r7_2)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 + (var_r7_2 - 8))) && ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20)))
                        {
                            if (gEntityInfo[var_sb].unkC_4 == 0)
                            {
                                if (sp24 == 0)
                                {
                                    if ((gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 - 8))
                                    {
                                        gEntityInfo[0].xPosBg2 = sp18;
                                    }
                                    else
                                    {
                                        goto block_372;
                                    }
                                }
                                else if ((gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 + 8))
                                {
                                    gEntityInfo[0].xPosBg2 = sp18;
                                }
                                else
                                {
block_372:
                                    gUnk_03005220.unk3_7 = 1;
                                    gEntityInfo[var_sb].unkC_4 = 1;
                                    DmaCopy16(3, &gUnk_080B9368, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x100);
                                    m4aSongNumStart(0x7D);
                                }
                            }
                        }
                        else
                        {
                            if (gEntityInfo[var_sb].unkC_4 == 1)
                            {
                                gUnk_03005220.unk3_7 = 0;
                                DmaCopy16(3, &gUnk_08062148, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x100);
                                gEntityInfo[var_sb].unkC_4 = 0;
                            }
                        }
                        break;

                    case 0x39:
                        if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 7))
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[var_sb].xPosBg2 - 7))
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    if (((s32) gEntityInfo[0].yPosBg2 > (gEntityInfo[var_sb].yPosBg2 - 0x20)) && (((s32) (sp18 - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + 7)) || ((s32) (sp18 + 0xC) <= (gEntityInfo[var_sb].xPosBg2 - 7)) || ((s32) (sp1C - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2) || (sp1C <= (gEntityInfo[var_sb].yPosBg2 - 0x20))))
                                    {
                                        gEntityInfo[0].xPosBg2 = sp18;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x3C:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xC)) && ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x1A)))
                        {
                            if ((gUnk_03005220.unk3F != var_sb) && ((gEntityAnimationInfo[var_sb - gUnk_0300363C].state != 2) || ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x10))))
                            {
                                gEntityInfo[0].xPosBg2 = sp18;
                            }
                        }
                        else
                        {
                            if ((gUnk_03005220.unk3F == var_sb) && (gEntityInfo[var_sb].unk8.split.unk9 <= 3))
                            {
                                gUnk_03005220.unk45 = 0;
                                gUnk_03005220.unk57 = 0;
                                gUnk_03005220.unk56 = 0;
                                gUnk_03005220.unk3F = 0;
                                sub_08025B78(var_sb, 0);
                            }
                        }
                        break;

                    case 0x24:
                    case 0x25:
                    case 0x26:
                    case 0x27:
                    case 0x28:
                        var_r7_3 = 0;
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10)))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x10)))
                            {
                                goto block_410;
                            }
                        }
                        if (gUnk_03005220.unk43 == 1)
                        {
                            if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10)))
                            {
                                if (((s32) (gEntityInfo[0].yPosBg2 - 0x2E) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) (gEntityInfo[0].yPosBg2 - 0x16) > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x10)))
                                {
                                    var_r7_3 = 1;
                                }
                            }
                        }
                        if (var_r7_3 != 0)
                        {
block_410:
                            if (gUnk_03005220.unk34 == 0)
                            {
                                if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[var_sb].xPosBg2) > 0x17)
                                {
                                    gEntityInfo[0].xPosBg2 = sp18;
                                }

                                if ((gEntityInfo[var_sb].unk11 != 0x29) && (gEntityInfo[var_sb].unk11 != 0x2A))
                                {

                                }
                                else if (gEntityInfo[var_sb].unk8.split.unk8 >= (gEntityInfo[var_sb].unk8.split.unk9 - 0xA))
                                {

                                }
                                else if (gEntityInfo[0].xPosBg2 < gEntityInfo[var_sb].xPosBg2)
                                {
                                    if ((gEntityInfo[var_sb].unkC_4) != 0)
                                    {
                                        gEntityInfo[var_sb].unkC_4 = 0;
                                        gEntityInfo[var_sb].unk8.split.unk8 = -(gEntityInfo[var_sb].unk8.split.unk8 + 0xA) + gEntityInfo[var_sb].unk8.split.unk9;
                                    }
                                }
                                else
                                {
                                    if (gEntityInfo[var_sb].unkC_4 != 1)
                                    {
                                        gEntityInfo[var_sb].unkC_4 = 1;
                                        gEntityInfo[var_sb].unk8.split.unk8 = -(gEntityInfo[var_sb].unk8.split.unk8 + 0xA) + gEntityInfo[var_sb].unk8.split.unk9;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x3B:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xC)) && ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb + 1].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 8)))
                        {
                            gUnk_03005220.unk26 = 0;
                            if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[var_sb].xPosBg2) > 0x15)
                            {
                                gEntityInfo[0].xPosBg2 = sp18;
                            }
                        }
                        else if (gUnk_03005220.unk43 == 1)
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0xC))
                            {

                            }
                            else
                            {
                                if ((gEntityInfo[0].yPosBg2 - 0x30) >= (s32) gEntityInfo[var_sb + 1].yPosBg2)
                                {

                                }
                                else if ((s32) ((gEntityInfo[0].yPosBg2 - 0x30) + 0x18) <= (s32) (gEntityInfo[var_sb].yPosBg2 - 8))
                                {

                                }
                                else
                                {
                                    gUnk_03005220.unk26 = 0;
                                    if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[var_sb].xPosBg2) > 0x15)
                                    {
                                        gEntityInfo[0].xPosBg2 = sp18;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x36:
                        if (gUnk_03005220.unk43 == 0)
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 8))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 8))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x40))
                                {

                                }
                                else
                                {
                                    gEntityInfo[0].xPosBg2 = sp18;
                                    if (gUnk_03005220.unk3E != 0)
                                    {
                                        if (!(gUnk_03004C20.globalFrameCounter & 7))
                                        {
                                            sub_0801E664(gEntityInfo[0].xPosBg2, (u16) (gEntityInfo[0].yPosBg2 + 4), 0xB, 0);
                                        }
                                    }
                                    else
                                    {
                                        sub_08014624(0);
                                        sub_0801E664(gEntityInfo[0].xPosBg2, (u16) (gEntityInfo[0].yPosBg2 + 4), 0xB, 0);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x37:
                        if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10))
                        {

                        }
                        else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10))
                        {

                        }
                        else
                        {
                            if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                            {

                            }
                            else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x40))
                            {

                            }
                            else
                            {
                                gEntityInfo[0].xPosBg2 = sp18;
                                if (gUnk_03005220.unk3E != 0)
                                {
                                    if (!(gUnk_03004C20.globalFrameCounter & 7))
                                    {
                                        sub_0801E664(gEntityInfo[0].xPosBg2, (u16) (gEntityInfo[0].yPosBg2 + 4), 0xB, 0);
                                    }
                                }
                                else
                                {
                                    sub_08014624(0);
                                    sub_0801E664(gEntityInfo[0].xPosBg2, (u16) (gEntityInfo[0].yPosBg2 + 4), 0xB, 0);
                                }
                            }
                        }
                        break;

                    case 0x32:
                    case 0x6D:
                        if (((s32) (sp18 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) && ((s32) (sp18 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)) && ((s32) (sp1C - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && (sp1C > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20)))
                        {

                        }
                        else
                        {
                            if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)))
                            {
                                if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20)))
                                {
                                    gEntityInfo[0].xPosBg2 = sp18;
                                }
                            }

                            if (gUnk_03005220.unk43 == 1)
                            {
                                if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF))
                                {

                                }
                                else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[0].yPosBg2 - 0x30) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                    {

                                    }
                                    else if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20))
                                    {

                                    }
                                    else if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[var_sb].xPosBg2) <= 0x15)
                                    {

                                    }
                                    else
                                    {
                                        gEntityInfo[0].xPosBg2 = sp18;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x1F:
                        if (gUnk_03005220.unk3E != 0)
                        {

                        }
                        else if (gUnk_03005400.unkC == 0)
                        {

                        }
                        else if (gUnk_03005400.unk8_0)
                        {

                        }
                        else
                        {
                            s8 var_0, var_1, var_2, var_3;
                            if (gUnk_03004C20.world == 2)
                            {
                                var_0 = gUnk_08116A16[gUnk_03005400.unkC][0];
                                var_1 = gUnk_08116A16[gUnk_03005400.unkC][1];
                                var_2 = gUnk_08116A16[gUnk_03005400.unkC][2];
                                var_3 = gUnk_08116A16[gUnk_03005400.unkC][3];
                            }
                            else
                            {
                                var_0 = gUnk_08116894[gUnk_03004C20.world - 1][0];
                                var_1 = gUnk_08116894[gUnk_03004C20.world - 1][1];
                                var_2 = gUnk_08116894[gUnk_03004C20.world - 1][2];
                                var_3 = gUnk_08116894[gUnk_03004C20.world - 1][3];
                            }
                            
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + var_1))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 + var_0))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) (gEntityInfo[var_sb].yPosBg2 + var_3))
                                {

                                }
                                else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 + var_2))
                                {

                                }
                                else
                                {
                                    sub_08014624(1);
                                }
                            }
                        }
                        break;

                    case 0x13:
                        if (gUnk_03005400.unkC != 0)
                        {
                            if (gEntityInfo[var_sb].unkF == 0xE || gEntityInfo[var_sb].unkF == 0xF)
                            {
                                if ((gEntityInfo[0].xPosBg2 - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + 8))
                                {

                                }
                                else if ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) <= (s32) ((gEntityInfo[var_sb].xPosBg2 + 8) - 0x10))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (gEntityInfo[var_sb].yPosBg2 - 6))
                                    {

                                    }
                                    else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) ((gEntityInfo[var_sb].yPosBg2 - 6) - 0x10))
                                    {

                                    }
                                    else
                                    {
                                        if (gUnk_03005220.unk3E == 0)
                                        {
                                            sub_08014624(1);
                                        }
                                        sub_08025B78(var_sb, 1);
                                        gEntityInfo[var_sb].unkF = 0;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x14:
                        if (gUnk_03005220.unk3E != 0)
                        {

                        }
                        else if (gUnk_03005400.unk8_0)
                        {

                        }
                        else if (gEntityAnimationInfo[var_sb - gUnk_0300363C].state == 4)
                        {

                        }
                        else
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x14))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x14))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (gEntityInfo[var_sb].yPosBg2 - 0xA))
                                {

                                }
                                else
                                {
                                    if ((s32) gEntityInfo[0].yPosBg2 > ((gEntityInfo[var_sb].yPosBg2 - 0xA) - 0x2C))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x15:
                    case 0x16:
                        if (gUnk_03005220.unk3E == 0)
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x14))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x14))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_sb].yPosBg2 - 0xC))
                                {
                                    if ((s32) gEntityInfo[0].yPosBg2 > ((gEntityInfo[var_sb].yPosBg2 - 0xC) - 0x28))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x17:
                        if (gUnk_03005220.unk3E == 0)
                        {
                            if (gEntityInfo[var_sb].unkF == 0)
                            {
                                if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 0x18)) && ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) > (s32) ((gEntityInfo[var_sb].xPosBg2 + 0x18) - 0x30)) && ((u32) gEntityInfo[0].yPosBg2 <= 0x11C) && ((u32) gEntityInfo[0].yPosBg2 > 0x67))
                                {
                                    sub_08014624(1);
                                }
                            }
                        }
                        break;

                    case 0x1B:
                        if (gUnk_03005220.unk3E == 0)
                        {
                            if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x1E)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x1E)))
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    if ((s32) gEntityInfo[0].yPosBg2 > (gEntityInfo[var_sb].yPosBg2 - 0x1E))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x1C:
                        if (gUnk_03005220.unk3E == 0)
                        {
                            if (gEntityInfo[var_sb].unkF == 0xF)
                            {
                                if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 0x12)) && ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) > (s32) ((gEntityInfo[var_sb].xPosBg2 + 0x12) - 0x24)))
                                {
                                    if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_sb].yPosBg2 - 8)) && ((s32) gEntityInfo[0].yPosBg2 > (s32) ((gEntityInfo[var_sb].yPosBg2 - 8) - 0x30)))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }
                        }
                        break;
                }
            }
        }
    }

    if (!(gNewKeys & gUnk_03005284->unk1D))
    {

    }
    else if ((gUnk_03005220.unk3C != 0) && (gUnk_03005220.unk42 == 0))
    {

    }
    else if (gUnk_03005220.unk38 != 0)
    {

    }
    else
    {
        if ((gUnk_03005220.unk33 == 0) && (gUnk_03005220.unk42 != 0) && ((gUnk_03005220.unk3C | gUnk_03005220.unk30 | gUnk_03005220.unk39 | gUnk_03005220.unk45) != 0))
        {
            if (gUnk_03005220.unk39 == 0)
            {
                gEntityInfo[gUnk_03005220.unk42].unkF = 0x17;
            }
            gUnk_03005220.unk41 = 1;
            gUnk_03005220.unk55 = 0;
            gUnk_03005220.unk54 = 0;
            gUnk_03005220.unk33 = 0xC;
            sub_080145A8(0);
            sp20 = gUnk_03004654[0x1B];
            sub_08025B78(0, 0xB);
            gUnk_03005220.unk3B = 0;
            goto block_680;
        }
        if (gUnk_03005220.unk31 == 1)
        {
            if (gUnk_03004C20.unkA == 0)
            {
                sp20 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((u16) gEntityInfo[0].yPosBg2 >> 3) * gBgInfo[2].hLength)];

                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((u16) gEntityInfo[0].yPosBg2 >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((u16) gEntityInfo[0].yPosBg2 >> 3) * gBgInfo[2].hLength)]) : sp20;

                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((u16) gEntityInfo[0].yPosBg2 >> 3) * gBgInfo[2].hLength)]) ? gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((u16) gEntityInfo[0].yPosBg2 >> 3) * gBgInfo[2].hLength)] : sp20;
            }
            else
            {
                sub_08014230(&spC, gEntityInfo[0].xPosBg2, (u16) (gEntityInfo[0].yPosBg2 + 1), 0x18);
                temp_r0 = spC;
                if (temp_r0.unk0 != 0xFFFF)
                {
                    sp20 = gUnk_03004654[0x1B];
                }
                else
                {
                    sp20 = 0;
                }
            }
        }
        else
        {
            sp20 = 0;
        }

        if (gUnk_03005220.unk34 == 1)
        {
            if (Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[gUnk_03005220.unk3F].xPosBg2) > 6)
            {

            }
            else if (Abs(gEntityInfo[0].yPosBg2 - (gEntityInfo[gUnk_03005220.unk3F].yPosBg2 + 0x18)) > 6)
            {

            }
            else
            {
                sub_08025B78(gUnk_03005220.unk3F, 0);
                sp20 = gUnk_03004654[0x1B];
                gUnk_03005220.unk57 = 0;
                gUnk_03005220.unk56 = 0;
                gUnk_03005220.unk3F = 0;
                gUnk_03005220.unk16 = 0x15;
                gUnk_03005220.unk18 = 0;
                goto block_606;
            }
        }
        else
        {
block_606:
            for (var_sb = gUnk_030051D4; var_sb <= gUnk_030034C8; var_sb++)
            {
                if (gEntityInfo[var_sb].unkF != 0x1A)
                {
                    if (gEntityInfo[var_sb].unk10 == 0)
                    {

                    }
                    else if (gEntityInfo[var_sb].unkF > 0x12)
                    {

                    }
                    else
                    {
                        goto block_612;
                    }
                }
                else
                {
block_612:
                    switch (gEntityInfo[var_sb].unk11 - 0x25)
                    {
                        case 0x0:
                        case 0x4A:
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 7))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[0].yPosBg2 + 2) <= (gEntityInfo[var_sb].yPosBg2 - 0x18))
                                    {

                                    }
                                    else if (gUnk_03005220.unk31 != 1)
                                    {

                                    }
                                    else if ((s32) gEntityInfo[0].yPosBg2 > (gEntityInfo[var_sb].yPosBg2 - 0x18))
                                    {

                                    }
                                    else
                                    {
                                        sp20 = (u32) gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;

                        case 0x1C:
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {

                                }
                                else if ((s32) (gEntityInfo[0].yPosBg2 + 2) <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20))
                                {

                                }
                                else if (gEntityAnimationInfo[var_sb - gUnk_0300363C].state != 0)
                                {

                                }
                                else
                                {
                                    sp20 = (u32) gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x1A:
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0xC))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0xC))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x18))
                                {

                                }
                                else if (gEntityAnimationInfo[var_sb - gUnk_0300363C].state != 2)
                                {

                                }
                                else
                                {
                                    sp20 = (u32) gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x2:
                        case 0x3:
                        case 0x4:
                        case 0x5:
                        case 0x6:
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {

                                }
                                else if ((s32) (gEntityInfo[0].yPosBg2 + 2) <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x10))
                                {

                                }
                                else if (gUnk_03005220.unk31 != 1)
                                {

                                }
                                else
                                {
                                    sp20 = (u32) gUnk_03004654[0x1B];
                                }
                            }
                            break;

                        case 0x19:
                            if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xC)))
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    if ((gEntityInfo[0].yPosBg2 + 2) > (gEntityInfo[var_sb].yPosBg2 - 8))
                                    {
                                        sp20 = (u32) gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;

                        case 0x13:
                            if (gUnk_03005220.unk3E != 0)
                            {
                                if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x20)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x20)))
                                {
                                    if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) (gEntityInfo[0].yPosBg2 + 3) > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x16)))
                                    {
                                        sp20 = (u32) gUnk_03004654[0x1B];
                                        sub_0801E664(gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 0xC, 0);
                                    }
                                }
                            }
                            break;

                        case 0x10:
                        case 0x4B:
                            if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)))
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    if ((gEntityInfo[0].yPosBg2 + 2) > (gEntityInfo[var_sb].yPosBg2 - 0x20))
                                    {
                                        sp20 = (u32) gUnk_03004654[0x1B];
                                    }
                                }
                            }
                            break;
                    }
                }
            }
block_680:
            if (gUnk_03004C20.unkA == 0)
            {
                sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x18) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x18) >> 3) * gBgInfo[2].hLength)]) : (sp20);
            }

            if ((u32) gUnk_03004654[0x16] <= sp20)
            {
                gUnk_03005220.unk1C = 0;
                if (gUnk_03005220.unk34 == 1)
                {
                    gUnk_03005220.unk34 = 0;
                    gUnk_03005220.unk3C = 3;
                    gUnk_03005220.unk28 = 0xFDB0;
                    sub_08025B78(0, 0xB);
                    m4aSongNumStart(0x26);
                }
                else if (gEntityAnimationInfo[0].state == 0xB)
                {
                    if (gUnk_03005220.unk39 != 0)
                    {
                        gUnk_03005220.unk39 = 0;
                        gUnk_03005220.unk28 = 0xFC60;
                        gUnk_03005220.unk3C = 1;
                        sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[0].yPosBg2 - 8;
                    }
                    else
                    {
                        gUnk_03005220.unk3C = 2;
                        gUnk_03005220.unk28 = 0xFFA0;
                    }
                }
                else
                {
                    gUnk_03005220.unk3C = 1;
                    if (gUnk_03004C20.unkA == 0)
                    {
                        gUnk_03005220.unk28 = 0xFCB0;
                    }
                    else
                    {
                        gUnk_03005220.unk28 = 0xFCB0;
                        gEntityInfo[0].yPosBg2 -= 4;
                    }
                }

                gUnk_03005220.unk3D = 0;
                gUnk_03005220.unk30 = 0;
                if (gEntityAnimationInfo[0].state != 0xB)
                {
                    if (gUnk_03004C20.unkB == 0)
                    {
                        m4aSongNumStart(0x2D);
                    }
                    else
                    {
                        m4aSongNumStart(0x9F);
                    }
                    if (gUnk_03005220.unk42 == 0)
                    {
                        sub_08025B78(0, 2);
                    }
                    else
                    {
                        sub_08025B78(0, 0x18);
                    }
                }
                else
                {
                    m4aSongNumStart(0x26);
                }
            }
        }
    }

    if ((gHeldKeys & gUnk_03005284->unk1D) && ((gUnk_03005220.unk3D | gUnk_03005220.unk3C | gUnk_03005220.unk42 | gUnk_03005220.unk31 | gUnk_03005220.unk3A | gUnk_03005220.unk34) == 0))
    {
        gUnk_03005220.unk3D = 2;
        gUnk_03005220.unk30 = 0;
        gUnk_03005220.unk28 = 0x180;
        if (gUnk_03005220.unk45 == 0)
        {
            m4aSongNumStart(0x2F);
        }
    }
    else if (gUnk_03005220.unk35 != 0)
    {
        if (gHeldKeys & DPAD_UP)
        {
            gEntityInfo[0].yPosBg2 -= 1;
        }
        else if (gHeldKeys & DPAD_DOWN)
        {
            gEntityInfo[0].yPosBg2 += 1;
            if (gUnk_03005220.unk36 == 0)
            {

            }
            else if (gUnk_03004C20.globalFrameCounter & 1)
            {
                gEntityInfo[0].yPosBg2 += 2;
            }
            else
            {
                gEntityInfo[0].yPosBg2 += 1;
            }
        }
    }
    else
    {
        if (((gUnk_03005220.unk3A | gUnk_03005220.unk3B) != 0) && (gUnk_03005220.unk3C == 0))
        {
            gUnk_03005220.unk49 = gUnk_03005220.unk3C;
            if (gUnk_03005220.unk3B != 0)
            {
                gEntityInfo[0].yPosBg2 += gUnk_080D9110[gUnk_03005220.unk3B++ & 0x3F];
                if (gUnk_03005220.unk3B == 0)
                {
                    gUnk_03005220.unk3B += 1;
                }
                if ((gUnk_03005220.unk48 != 0) && (gUnk_03005220.unk3B == 0x36))
                {
                    gUnk_03005220.unk3B = 1;
                    gUnk_03005220.unk48 = 0;
                    gUnk_03005220.unk28 = 0x100;
                }
                if (gUnk_03005220.unk24 != gUnk_03000790[gUnk_03005220.unk3A - 1].unk4)
                {
                    gUnk_03005220.unk3B = 0;
                }
            }
            else
            {
                if ((gUnk_03005220.unk28 > 0) && (gUnk_03005220.unk31 == 0))
                {
                    gEntityInfo[0].yPosBg2 = (gUnk_03005220.unk28 >> 0x8) + gEntityInfo[0].yPosBg2;
                    gUnk_03005220.unk28 -= 0x17;
                }
                else
                {
                    gUnk_03005220.unk28 = 0;
                    gEntityInfo[0].yPosBg2 -= 3;
                    if ((s32) gEntityInfo[0].yPosBg2 < (s32) (gUnk_03000790[gUnk_03005220.unk3A - 1].unk4 + 0x20))
                    {
                        gUnk_03005220.unk3B = 1;
                        gUnk_03005220.unk24 = gUnk_03000790[gUnk_03005220.unk3A - 1].unk4;
                    }
                }
            }
        }
        else if (gUnk_03005220.unk38 == 1)
        {
            if (gUnk_03005220.unk28 > 0)
            {
                gEntityInfo[0].yPosBg2 = (gUnk_03005220.unk28 >> 0x8) + gEntityInfo[0].yPosBg2;
                gUnk_03005220.unk28 = (u16) (gUnk_03005220.unk28 - 0x17);
            }
            else
            {
                gUnk_03005220.unk28 = 0;
                gEntityInfo[0].yPosBg2 -= 1;
            }
        }
        else if ((u32) gUnk_03005220.unk3E > 0x78)
        {

        }
        else if ((gUnk_03005220.unk34 | gUnk_03005220.unk39) != 0)
        {

        }
        else
        {
            if (gUnk_03005220.unk31 != 0)
            {

            }
            else if ((u32) gUnk_03005220.unk3D > 1)
            {
                if (!(gHeldKeys & gUnk_03005284->unk1D))
                {
                    gUnk_03005220.unk3D = 1;
                    m4aSongNumStart(0x8E);
                    if (gUnk_03005220.unk42 == 0)
                    {
                        sub_08025B78(0, 3);
                    }
                    else
                    {
                        sub_08025B78(0, 0x19);
                    }
                }

                gUnk_03005220.unk28 -= 8;
                if (gUnk_03005220.unk28 < -0x90)
                {
                    gUnk_03005220.unk3D = 1;
                    gUnk_03005220.unk28 = 0x160;
                    if (gUnk_03005220.unk42 == 0)
                    {
                        sub_08025B78(0, 3);
                    }
                    else
                    {
                        sub_08025B78(0, 0x19);
                    }
                }
            }
            else
            {
                gUnk_03005220.unk28 += 0x2E;
                if (gUnk_03005220.unk3C > 1)
                {
                    if (gUnk_03005220.unk3C == 2)
                    {
                        if (gUnk_03004C20.level != 6)
                        {
                            gEntityInfo[0].xPosBg2 = sp18;
                        }
                        else if ((s32) gEntityInfo[0].xPosBg2 > (s32) (gBgInfo[2].hOfs + 0x10))
                        {
                            gEntityInfo[0].xPosBg2 = sp18;
                        }

                        if (gUnk_03005220.unk28 > 0x180)
                        {
                            gUnk_03005220.unk28 = 0xFC60;
                            gUnk_03005220.unk3C = 1;
                        }
                    }
                    else
                    {
                        if (gUnk_03004C20.level != 6)
                        {
                            gEntityInfo[0].xPosBg2 = sp18;
                        }
                        else if ((s32) gEntityInfo[0].xPosBg2 > (s32) (gBgInfo[2].hOfs + 0x10))
                        {
                            gEntityInfo[0].xPosBg2 = sp18;
                        }

                        if (gUnk_03005220.unk28 > 0)
                        {
                            gUnk_03005220.unk28 = 0xFC60;
                            gUnk_03005220.unk3C = 1;
                        }
                    }
                }
                else if (gUnk_03005220.unk28 > 0)
                {
                    if ((gUnk_03005220.unk30 | gUnk_03005220.unk5C) == 0)
                    {
                        if (gUnk_03005220.unk42 == 0)
                        {
                            sub_08025B78(0, 3);
                        }
                        else
                        {
                            sub_08025B78(0, 0x19);
                        }
                    }
                    gUnk_03005220.unk30 = 1;
                    if ((gUnk_03005220.unk3C != 0) && (gHeldKeys & gUnk_03005284->unk1D))
                    {
                        if ((gUnk_03005220.unk3D | gUnk_03005220.unk42 | gUnk_03005220.unk34) == 0)
                        {
                            gUnk_03005220.unk3D = 2;
                            gUnk_03005220.unk30 = 0;
                            gUnk_03005220.unk28 = 0x180;
                            if (gUnk_03005220.unk45 == 0)
                            {
                                m4aSongNumStart(0x2F);
                            }
                        }
                    }
                    gUnk_03005220.unk3C = 0;
                }
            }

            if (gUnk_03005220.unk28 > 0x300)
            {
                gUnk_03005220.unk28 = 0x300;
            }

            if (gUnk_03005220.unk53 != 0)
            {
                if (gUnk_03005220.unk31 != 1)
                {
                    if (gUnk_03005220.unk28 > 0x100)
                    {
                        gUnk_03005220.unk28 = 0x100;
                    }
                }
                else
                {
                    gUnk_03005220.unk53 = 0;
                    goto l_2771;
                    if (gUnk_03005220.unk28 > 0x300)
                    {
                        gUnk_03005220.unk28 = 0x300;
                    }
                }
            }
            else
            {
                l_2771:
                if (gUnk_03005220.unk28 > 0x300)
                {
                    gUnk_03005220.unk28 = 0x300;
                }
            }

            gEntityInfo[0].yPosBg2 += (gUnk_03005220.unk28 >> 0x8);
        }
    }

    if ((gEntityInfo[0].yPosBg2 != sp1C) || ((gUnk_03005220.unk35 | gUnk_03005220.unk57 | gUnk_03005220.unk3D) != 0))
    {
        if (gUnk_03004C20.unkA == 0)
        {
            gUnk_03005220.unk4A = 0;
            gUnk_03005220.unk4B = 0;

            sp20 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)];

            sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)]) : sp20;

            sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)]) : sp20;

            if (gUnk_03004654[0x18] <= sp20)
            {
                gUnk_03005220.unk4B = 1;
            }

            var_r5_3 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)];

            var_r5_3 = (var_r5_3 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)]) : var_r5_3;

            var_r5_3 = (var_r5_3 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x16) >> 3) * gBgInfo[2].hLength)]) : var_r5_3;

            if ((gUnk_03005220.unk43 == 1) && (gEntityInfo[gUnk_03005220.unk42].unk11 <= 0x6F))
            {
                var_r5_3 = (var_r5_3 < gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2E) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2E) >> 3) * gBgInfo[2].hLength)]) : var_r5_3;

                var_r5_3 = (var_r5_3 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2E) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xA) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2E) >> 3) * gBgInfo[2].hLength)]) : var_r5_3;

                var_r5_3 = (var_r5_3 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2E) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0xB) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x2E) >> 3) * gBgInfo[2].hLength)]) : var_r5_3;
            }

            if ((u32) var_r5_3 >= (u32) gUnk_03004654[0x1B])
            {
                gUnk_03005220.unk4A = 1;
            }

            sp20 = (sp20 < var_r5_3) ? (var_r5_3) : sp20;
            if (gUnk_03004C20.level != 6)
            {

            }
            else if ((u32) gEntityInfo[0].yPosBg2 < (u32) gBgInfo[2].vOfs)
            {
                gEntityInfo[0].yPosBg2 = gBgInfo[2].vOfs;
                gUnk_03005220.unk3C = 0;
            }
            else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gBgInfo[2].vOfs + 0xC8))
            {

            }
            else if (gUnk_030034E4 == 0)
            {
                gUnk_03005220.hearts = 1;
                sub_08014624(1);
            }
        }
        else
        {
            sp20 = 0;
            if (gUnk_03004C20.world != 8)
            {
                var_r6 = 4;
            }
            else if (gEntityInfo[0].unkC_2 == 0)
            {
                var_r6 = 4;
            }
            else
            {
                var_r6 = 0xFFFC;
            }
            sub_08014230(&sp10, (u16) (gEntityInfo[0].xPosBg2 + var_r6), gEntityInfo[0].yPosBg2, 0x18);
            temp_r1_1 = sp10;
            if (temp_r1_1.unk0 != 0xFFFF)
            {
                sp1C = gEntityInfo[0].yPosBg2 = temp_r1_1.unk0;
                gUnk_03005220.unk2F = temp_r1_1.unk2;
                sp20 = gUnk_03004654[0x1B];
            }
            else
            {
                sub_08014230(&sp14, (u16) (gEntityInfo[0].xPosBg2 + var_r6), (u16) (gEntityInfo[0].yPosBg2 - 0x18), 0x14);
                temp_r1_1 = sp14;
                if (temp_r1_1.unk0 != 0xFFFF)
                {
                    sp1C = gEntityInfo[0].yPosBg2 += 3;
                    gUnk_03005220.unk28 = 0x60;
                    if (gUnk_03005220.unk3D > 1)
                    {
                        gUnk_03005220.unk3D = 1;
                        m4aSongNumStart(0x8E);
                    }
                }
                else
                {
                    sp20 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
                }
            }
        }

        for (var_sb = 0xD; var_sb < gUnk_03005428; var_sb++)
        {
            if ((gEntityInfo[var_sb].unkF == 0x1A) || (((gEntityInfo[var_sb].unk10 != 0)) && ((u32) gEntityInfo[var_sb].unkF <= 0x12)))
            {
                switch (gEntityInfo[var_sb].unk11 - 1)
                {
                    case 0x24:
                    case 0x6E:
                        if (gEntityInfo[var_sb].unk16 != 0)
                        {
                            if (gEntityInfo[var_sb].unkF <= 1)
                            {
                                gEntityInfo[gUnk_03005220.unk42].unk16 = 0;
                                goto block_848;
                            }
                        }
                        else
                        {
block_848:
                            if (gEntityInfo[gUnk_03005220.unk3F].unk11 != 0x3E)
                            {
                                if ((s32) ((sp18 + (s8) gUnk_03005220.unk56) - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + 7))
                                {
                                    goto block_869;
                                }
                                if ((s32) (((sp18 + (s8) gUnk_03005220.unk56) - 0xC) + 0x18) <= (s32) ((gEntityInfo[var_sb].xPosBg2 + 7) - 0x16))
                                {
                                    goto block_869;
                                }
                                if (((s32) (sp1C - 0x18) < (gEntityInfo[var_sb].yPosBg2 - 1)) && (sp1C > (s32) ((gEntityInfo[var_sb].yPosBg2 - 1) - 0x16)) && (gEntityInfo[var_sb].unkF != 0xE))
                                {
                                    if (gUnk_03005220.unk34 != 1)
                                    {
                                        if (gUnk_03005220.unk39 != 0)
                                        {
                                            if (gUnk_03005220.unk42 != var_sb)
                                            {
                                                gUnk_03005220.unk57 = 0;
                                                gUnk_03005220.unk56 = 0;
                                                gUnk_03005220.unk39 = 0;
                                                gUnk_03005220.unk3F = 0;
                                                sub_080145A8(1);
                                                sp1C -= 1;
                                                goto block_860;
                                            }
                                        }
                                        else
                                        {
block_860:
                                            if ((gEntityInfo[var_sb].unkF == 1) && (gEntityInfo[gEntityInfo[var_sb].unk18].unk11 != 0x38) && (gUnk_03005220.unk31 == 0))
                                            {
                                                if ((s32) sp18 <= (gEntityInfo[var_sb].xPosBg2 - 0xF))
                                                {
                                                    gEntityInfo[0].xPosBg2 = (gEntityInfo[var_sb].xPosBg2 - 0xF) - 0xC;
                                                }
                                                else
                                                {
                                                    if ((s32) sp18 >= (gEntityInfo[var_sb].xPosBg2 + 7))
                                                    {
                                                        gEntityInfo[0].xPosBg2 = (gEntityInfo[var_sb].xPosBg2 + 7) + 0xC;
                                                    }
                                                }
                                            }
                                            else
                                            {
                                                gUnk_03005220.unk40 = (u8) var_sb;
                                                if (gUnk_03005220.unk3F == var_sb)
                                                {
                                                    gUnk_03005220.unk57 = 0;
                                                    gUnk_03005220.unk56 = 0;
                                                    gUnk_03005220.unk3F = 0;
                                                }
                                            }
                                        }
                                    }
                                }
                                else
                                {
block_869:
                                    if ((gUnk_03005220.unk34 | gUnk_03005220.unk39) == 0)
                                    {
                                        if (((((s8) gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 7)) && ((s32) ((((s8) gUnk_03005220.unk56 + gEntityInfo[0].xPosBg2) - 0xC) + 0x18) > (s32) ((gEntityInfo[var_sb].xPosBg2 + 7) - 0x16)) && ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (gEntityInfo[var_sb].yPosBg2 - 0x18)))
                                        {
                                            if ((s32) gEntityInfo[0].yPosBg2 > (s32) ((gEntityInfo[var_sb].yPosBg2 - 0x18) + 0x2A))
                                            {
                                                gEntityInfo[0].yPosBg2 = sp1C;
                                                if (gUnk_03005220.unk40 == var_sb)
                                                {
                                                    gUnk_03005220.unk40 = 0;
                                                }
                                                if (gUnk_03005220.unk30 == 0)
                                                {
                                                    gUnk_03005220.unk48 = 1;
                                                }
                                                if (gUnk_03005220.unk3A != 0)
                                                {
                                                    gUnk_03005220.unk28 = 0x150;
                                                }
                                                else
                                                {
                                                    goto l_2900;
                                                    sp20 = gUnk_03004654[0x1B];
                                                }
                                            }
                                            else
                                            {
                                                gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFE8;
                                                if (gUnk_03005220.unk3D > 1)
                                                {
                                                    gUnk_03005220.unk3D = 1;
                                                }
                                                if (gUnk_03005220.unk3C != 0)
                                                {
                                                    gUnk_03005220.unk3C = 0;
                                                    if (gUnk_03005220.unk42 == 0)
                                                    {
                                                        sub_08025B78(0, 5);
                                                    }
                                                    else
                                                    {
                                                        sub_08025B78(0, 0x1B);
                                                    }
                                                }
                                                gUnk_03005220.unk3F = var_sb;
                                                if (gUnk_03005220.unk40 == var_sb)
                                                {
                                                    gUnk_03005220.unk40 = 0;
                                                }
                                                l_2900:
                                                sp20 = gUnk_03004654[0x1B];
                                            }
                                        }
                                        else
                                        {
                                            if (gUnk_03005220.unk3F == var_sb)
                                            {
                                                gUnk_03005220.unk57 = 0;
                                                gUnk_03005220.unk56 = 0;
                                                gUnk_03005220.unk3F = 0;
                                            }
                                            if (gUnk_03005220.unk40 == var_sb)
                                            {
                                                gUnk_03005220.unk40 = 0;
                                            }
                                            if ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25)))
                                            {
                                                if ((s32) ((gEntityInfo[0].xPosBg2 + gUnk_03005220.unk56) - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 7))
                                                {
                                                    if ((s32) ((gEntityInfo[0].xPosBg2 + gUnk_03005220.unk56) + 0xC) > (gEntityInfo[var_sb].xPosBg2 - 0xF))
                                                    {
                                                        if ((gEntityInfo[0].yPosBg2 - 0x30) < (s32) gEntityInfo[var_sb].yPosBg2)
                                                        {
                                                            if (((s32) ((gEntityInfo[0].yPosBg2 - 0x30) + 0x18) > (gEntityInfo[var_sb].yPosBg2 - 0x18)) && (((s32)((sp18 + gUnk_03005220.unk56) - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + 7)) || ((s32) (((sp18 + gUnk_03005220.unk56) - 0xC) + 0x18) <= (gEntityInfo[var_sb].xPosBg2 - 0xF)) || ((s32) (sp1C - 0x30) >= (s32) gEntityInfo[var_sb].yPosBg2) || ((s32) (sp1C - 0x18) <= (gEntityInfo[var_sb].yPosBg2 - 0x18))))
                                                            {
                                                                gUnk_03005220.unk48 = 1;
                                                                sp20 = gUnk_03004654[0x1B];
                                                                gEntityInfo[0].yPosBg2 = sp1C;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        break;

                    case 0x5:
                    case 0x7:
                    case 0xA:
                    case 0x75:
                    case 0x76:
                    case 0x77:
                    case 0x78:
                    case 0x79:
                    case 0x7A:
                    case 0x7B:
                    case 0x7C:
                        if ((u32) gEntityInfo[var_sb].unkF <= 0xD)
                        {
                            if (((gEntityInfo[var_sb].affineEnable) == 0) || (gUnk_03004C20.level == 8))
                            {
                                var_r7_5 = 0;
                            }
                            else
                            {
                                var_r7_5 = 0xC;
                            }

                            if ((gUnk_03005220.unk3E == 0) || (gUnk_03005220.unk5B == 0))
                            {
                                if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + (var_r7_5 - 2))) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - (var_r7_5 - 2))))
                                {
                                    if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) (gEntityInfo[var_sb].yPosBg2 + (var_r7_5 - 8))) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - (var_r7_5 + 0xC))))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }

                            if ((gUnk_03005220.unk43 == 1) && ((gEntityInfo[var_sb].unk11 == 6) || (gEntityInfo[var_sb].unk11 == 8)) && ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25))))
                            {
                                if ((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[var_sb].xPosBg2 + (var_r7_5 + 0xC)))
                                {
                                    if ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) > (gEntityInfo[var_sb].xPosBg2 - (var_r7_5 + 0xC)))
                                    {
                                        if ((s32) (gEntityInfo[0].yPosBg2 - 0x2F) < (gEntityInfo[var_sb].yPosBg2 + var_r7_5))
                                        {
                                            if (((s32) gEntityInfo[0].yPosBg2 > (gEntityInfo[var_sb].yPosBg2 - (var_r7_5 + 0x18))) && (((s32) (sp18 - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + (var_r7_5 + 0xC))) || ((s32) (sp18 + 0xC) <= (gEntityInfo[var_sb].xPosBg2 - (var_r7_5 + 0xC))) || ((s32) (sp1C - 0x2E) >= (gEntityInfo[var_sb].yPosBg2 + var_r7_5)) || (sp1C <= (gEntityInfo[var_sb].yPosBg2 - (var_r7_5 + 0x18)))))
                                            {
                                                if (gUnk_03005220.unk30 == 0)
                                                {
                                                    if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                                    {
                                                        sp20 = (u32) gUnk_03004654[0x1B];
                                                        gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0x18;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        break;

                    case 0x2B:
                    case 0x2C:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) gEntityInfo[var_sb].xPosBg2) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) gEntityInfo[var_sb].xPosBg2))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 8)))
                            {
                                if ((u32) gEntityInfo[var_sb].unk8.split.unk8 <= 0x1F)
                                {
                                    gUnk_03005220.unk8 |= 1 << gEntityInfo[var_sb].unk8.split.unk8;
                                }
                                else
                                {
                                    gUnk_03005220.unkC |= 1 << (gEntityInfo[var_sb].unk8.split.unk8 - 0x20);
                                }

                                if (gEntityInfo[var_sb].unk11 == 0x2C)
                                {
                                    gUnk_03005220.dreamStones += 1;
                                }
                                else
                                {
                                    gUnk_03005220.dreamStones += 5;
                                }

                                if (gEntityInfo[var_sb].unk11 == 0x2C)
                                {
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 0xC), 3, (u8) var_sb);
                                }
                                else
                                {
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 6), 3, (u8) var_sb);
                                }

                                if (sub_08025E68() != 0)
                                {
                                    m4aSongNumStart(0x91);
                                }
                                else if (gEntityInfo[var_sb].unk11 == 0x2C)
                                {
                                    m4aSongNumStart(0x31);
                                }
                                else
                                {
                                    m4aSongNumStart(0x7B);
                                }
                            }
                        }
                        break;

                    case 0x6:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) gEntityInfo[var_sb].xPosBg2) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) gEntityInfo[var_sb].xPosBg2))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0xC)))
                            {
                                if (gUnk_03005220.hearts != 0)
                                {
                                    gUnk_03005220.unk2_7 |= 1 << gEntityInfo[var_sb].unk8.split.unk8;
                                    if (gUnk_03005220.hearts <= 2)
                                    {
                                        gUnk_03005220.hearts += 1;
                                        sub_08025DD4();
                                    }
                                    m4aSongNumStart(0x62);
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 6), 5, (u8) var_sb);
                                }
                            }
                        }
                        break;

                    case 0x2:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) gEntityInfo[var_sb].xPosBg2) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) gEntityInfo[var_sb].xPosBg2))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0xC)))
                            {
                                if ((gEntityInfo[var_sb].unkF != 2) && (gEntityInfo[var_sb].unkF != 0x1C))
                                {
                                    gUnk_03005220.stars |= 1 << gEntityInfo[var_sb].unk8.split.unk8;
                                    if (gUnk_03005220.stars == 7)
                                    {
                                        m4aSongNumStart(0x92);
                                    }
                                    else
                                    {
                                        m4aSongNumStart(0x33);
                                    }
                                    gEntityInfo[var_sb].unkF = 2;
                                    gEntityInfo[var_sb].unk8.split.unk9 = 0;
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, gEntityInfo[var_sb].yPosBg2 + 8, 3, 0);
                                }
                            }
                        }
                        break;

                    case 0x2D:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) gEntityInfo[var_sb].xPosBg2) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) gEntityInfo[var_sb].xPosBg2))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0xC)) && (gEntityInfo[var_sb].unkF != 2))
                            {
                                m4aSongNumStart(0x87);
                                gEntityInfo[var_sb].unk8.split.unk9 = 0;
                                gEntityInfo[var_sb].unkF = 2;
                                sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 4), 4, (u8) var_sb);
                            }
                        }
                        break;

                    case 0x40:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10)))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20)) && (gEntityAnimationInfo[var_sb - gUnk_0300363C].state == 0))
                            {
                                if ((s32) gEntityInfo[0].yPosBg2 < (s32) (gEntityInfo[var_sb].yPosBg2 - 0xC))
                                {
                                    sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFE0;
                                }
                                sp20 = (u32) gUnk_03004654[0x1B];
                                if (gUnk_03005220.stars == 7)
                                {
                                    m4aSongNumStart(0x35);
                                    sub_08025B78(var_sb, 1);
                                    gUnk_03005220.unk3_5 = 1;
                                }
                            }
                        }
                        break;

                    case 0x41:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10)))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_sb].yPosBg2 + 0x10)) && ((s32) gEntityInfo[0].yPosBg2 > (s32) ((gEntityInfo[var_sb].yPosBg2 + 0x10) - 0x40)) && (gUnk_03003410.unkB == 0))
                            {
                                gUnk_03003410.unkB = 2;
                                gEntityInfo[var_sb].unk8.split.unk8 = 1;
                                // gEntityInfo[var_sb].unk9 = 0;
                                gEntityInfo[0x9].unk10 = 0;
                                gEntityInfo[0xA].unk10 = 0;
                                if (gUnk_03005220.unk42 != 0)
                                {
                                    sub_0801E664(gEntityInfo[gUnk_03005220.unk42].xPosBg2, gEntityInfo[gUnk_03005220.unk42].yPosBg2, 2U, gUnk_03005220.unk42);
                                    sub_080145A8(1);
                                }
                                gUnk_03005220.unk2A = 0x340;
                                gUnk_03005220.unk2C = 0x320;
                                gUnk_03005220.unk50 = 0;
                                gUnk_03005220.unk51 = 0;
                                gEntityInfo[0].affineEnable = 1;
                                gEntityInfo[0].affineHFlip_matrixNum = gOamAffineMatrixNum;
                                if (gEntityInfo[0].unkC_2 == 0)
                                {
                                    gOamAffineBuffer[gOamAffineMatrixNum].pa = 0x100;
                                }
                                else
                                {
                                    gOamAffineBuffer[gOamAffineMatrixNum].pa = 0xFF00;
                                }
                                gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x100;
                                gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                                gEntityInfo[var_sb].affineEnable = 1;
                                gEntityInfo[var_sb].affineHFlip_matrixNum = gOamAffineMatrixNum + 1;
                                gOamAffineBuffer[gOamAffineMatrixNum + 1].pa = gSineTable[0x40];
                                gOamAffineBuffer[gOamAffineMatrixNum + 1].pd = gSineTable[0x40];
                                gOamAffineBuffer[gOamAffineMatrixNum + 1].pb = -gSineTable[0x0];
                                gOamAffineBuffer[gOamAffineMatrixNum + 1].pc = gSineTable[0x0];
                                gUnk_03004660 = 1;
                            }
                        }
                        break;

                    case 0x0:
                    case 0x1:
                    case 0x3:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 4)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 4)))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_sb].yPosBg2 - 4)) && ((s32) gEntityInfo[0].yPosBg2 > (s32) ((gEntityInfo[var_sb].yPosBg2 - 4) - 8)))
                            {
                                if (!(gEntityInfo[var_sb].unk11 & gUnk_03005220.keys))
                                {
                                    gUnk_03005220.keys |= gEntityInfo[var_sb].unk11;
                                    m4aSongNumStart(0x32);
                                    sub_0801E664(gEntityInfo[var_sb].xPosBg2, (u16) (gEntityInfo[var_sb].yPosBg2 + 8), 3, 0);
                                    if (gEntityInfo[var_sb].unk8.split.unk8 == 0)
                                    {
                                        gEntityInfo[var_sb].unkF = 0x12;
                                        gEntityInfo[var_sb].unk8.split.unk9 = 4;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x3E:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xC)))
                        {
                            if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x18)) && ((gUnk_03005220.unk3C | gUnk_03005220.unk46) == 0))
                            {
                                if (gEntityAnimationInfo[var_sb - gUnk_0300363C].state == 0)
                                {
                                    sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFE8;
                                }
                                else
                                {
                                    if (gEntityAnimationInfo[var_sb - gUnk_0300363C].state == 1)
                                    {
                                        gEntityInfo[0].yPosBg2 = sp1C;
                                    }
                                    else
                                    {
                                        sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFF0;
                                    }
                                }
                                sp20 = (u32) gUnk_03004654[0x1B];

//                                 var_r7_6 = gUnk_030047BC;
//                                 if ((u32) var_r7_6 <= (u32) gUnk_030007D4)
//                                 {
// loop_1016:
//                                     if ((u32) gEntityInfo[var_r7_6].unkF <= 0x18)
//                                     {
//                                         if (gEntityInfo[var_r7_6].unk11 != 0x6F)
//                                         {
//                                             if ((s32) gEntityInfo[var_r7_6].unk11 <= 0x6F)
//                                             {
//                                                 if (gEntityInfo[var_r7_6].unk11 != 0x25)
//                                                 {
//                                                     goto block_1033;
//                                                 }
//                                                 goto block_1027;
//                                             }
//                                             if (((s32) gEntityInfo[var_r7_6].unk11 <= 0x7D) && ((s32) gEntityInfo[var_r7_6].unk11 >= 0x7B) && ((s32) (gEntityInfo[var_sb].xPosBg2 - 8) < (s32) (gEntityInfo[var_r7_6].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[var_sb].xPosBg2 + 8) > (s32) (gEntityInfo[var_r7_6].xPosBg2 - 0xC)) && ((s32) (gEntityInfo[var_sb].yPosBg2 - 0x14) < (s32) gEntityInfo[var_r7_6].yPosBg2))
//                                             {
//                                                 if ((s32) gEntityInfo[var_sb].yPosBg2 <= (s32) (gEntityInfo[var_r7_6].yPosBg2 - 0x18))
//                                                 {
//                                                     goto block_1033;
//                                                 }
//                                             }
//                                             else
//                                             {
//                                                 goto block_1033;
//                                             }
//                                         }
//                                         else
//                                         {
// block_1027:
//                                             if (((s32) (gEntityInfo[var_sb].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_r7_6].xPosBg2 + 7)) && ((s32) (gEntityInfo[var_sb].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_r7_6].xPosBg2 - 0xF)) && ((s32) (gEntityInfo[var_sb].yPosBg2 - 0x18) < (gEntityInfo[var_r7_6].yPosBg2 + 2)))
//                                             {
//                                                 if ((s32) gEntityInfo[var_sb].yPosBg2 <= (s32) ((gEntityInfo[var_r7_6].yPosBg2 + 2) - 0x18))
//                                                 {
//                                                     goto block_1033;
//                                                 }
//                                             }
//                                             else
//                                             {
//                                                 goto block_1033;
//                                             }
//                                         }
//                                     }
//                                     else
//                                     {
// block_1033:
//                                         var_r7_6 += 1;
//                                         if ((u32) var_r7_6 > (u32) gUnk_030007D4)
//                                         {
//                                             goto block_1034;
//                                         }
//                                         goto loop_1016;
//                                     }
//                                 }
//                                 else
//                                 {
// block_1034:
//                                     if (gEntityAnimationInfo[var_sb - gUnk_0300363C].unk0 != 1)
//                                     {
//                                         sub_08025B78((u8) var_sb, 1);
//                                         gEntityInfo[var_sb].unk9 = 0;
//                                         gEntityInfo[var_sb].unk8 = 0;
//                                         gUnk_03005220.unk3F = (u8) var_sb;
//                                     }
//                                 }

                                for (var_r7_6 = gUnk_030047BC; var_r7_6 <= gUnk_030007D4; var_r7_6++)
                                {
                                    if ((u32) gEntityInfo[var_r7_6].unkF > 0x18)
                                    {
                                        continue;
                                    }
                                    switch (gEntityInfo[var_r7_6].unk11)
                                    {
                                        case 0x7B:
                                        case 0x7C:
                                        case 0x7D:
                                            if (((s32) (gEntityInfo[var_sb].xPosBg2 - 8) < (s32) (gEntityInfo[var_r7_6].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[var_sb].xPosBg2 + 8) > (s32) (gEntityInfo[var_r7_6].xPosBg2 - 0xC)) && ((s32) (gEntityInfo[var_sb].yPosBg2 - 0x14) < (s32) gEntityInfo[var_r7_6].yPosBg2))
                                            {
                                                if ((s32) gEntityInfo[var_sb].yPosBg2 > (s32) (gEntityInfo[var_r7_6].yPosBg2 - 0x18))
                                                {
                                                    goto exit_loop;
                                                }
                                            }
                                            break;
                                        case 0x25:
                                        case 0x6F:
                                            if (((s32) (gEntityInfo[var_sb].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_r7_6].xPosBg2 + 7)) && ((s32) (gEntityInfo[var_sb].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_r7_6].xPosBg2 - 0xF)) && ((s32) (gEntityInfo[var_sb].yPosBg2 - 0x18) < (gEntityInfo[var_r7_6].yPosBg2 + 2)))
                                            {
                                                if ((s32) gEntityInfo[var_sb].yPosBg2 > (s32) ((gEntityInfo[var_r7_6].yPosBg2 + 2) - 0x18))
                                                {
                                                    goto exit_loop;
                                                }
                                            }
                                            break;
                                            
                                    }
                                }
                                if (gEntityAnimationInfo[var_sb - gUnk_0300363C].state != 1)
                                {
                                    sub_08025B78(var_sb, 1);
                                    gEntityInfo[var_sb].unk8.split.unk9 = 0;
                                    gEntityInfo[var_sb].unk8.split.unk8 = 0;
                                    gUnk_03005220.unk3F = var_sb;
                                }
                                exit_loop:

                            }
                        }
                        break;

                    case 0x2A:
                        if ((((s32) (sp18 - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + 0xF)) || ((s32) (sp18 + 0xC) <= (s32) ((gEntityInfo[var_sb].xPosBg2 + 0xF) - 0x1E)) || ((s32) (sp1C - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2) || ((sp1C <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x10)))) && (((gEntityInfo[gUnk_03005220.unk42].unk11 != 0x6F) && (gEntityInfo[gUnk_03005220.unk42].unk11 != 0x25)) || ((s32) (sp18 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) || ((s32) (sp18 + 0xC) <= (s32) ((gEntityInfo[var_sb].xPosBg2 + 0xF) - 0x1E)) || ((s32) (sp1C - 0x2D) >= (s32) gEntityInfo[var_sb].yPosBg2) || (((s32) (sp1C - 0x15) <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x10)))))
                        {
                            if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)) && ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (gEntityInfo[var_sb].yPosBg2 - 0x10)))
                            {
                                if ((u32) gEntityInfo[0].yPosBg2 > (u32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    gEntityInfo[0].yPosBg2 = (gEntityInfo[var_sb].yPosBg2 - 0x10) + 0x28;
                                    sp20 = gUnk_03004654[0x1B];
                                    gUnk_03005220.unk3C = 0;
                                    gUnk_03005220.unk48 = 1;
                                }
                                else
                                {
                                    sp20 = gUnk_03004654[0x1B];
                                    gUnk_03005220.unk3F = (u8) var_sb;
                                    gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFF0;
                                    gUnk_03005220.unk49 = 1;
                                    if (gEntityInfo[var_sb].unk8.split.unk8 == 0)
                                    {
                                        gEntityInfo[var_sb].unk8.split.unk8 = 1;
                                    }
                                }
                            }
                            else
                            {
                                if (gUnk_03005220.unk3F == var_sb)
                                {
                                    gUnk_03005220.unk57 = 0;
                                    gUnk_03005220.unk3F = 0;
                                }
                                else if (((gUnk_03005220.unk43 == 1) && (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F)) || ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25)))
                                {
                                    if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)))
                                    {
                                        if ((s32) (gEntityInfo[0].yPosBg2 - 0x2D) < (s32) gEntityInfo[var_sb].yPosBg2)
                                        {
                                            if ((s32) (gEntityInfo[0].yPosBg2 - 0x15) > (gEntityInfo[var_sb].yPosBg2 - 0x10))
                                            {
                                                sp1C = gEntityInfo[0].yPosBg2 = (gEntityInfo[var_sb].yPosBg2 - 0x10) + 0x3D;
                                                gUnk_03005220.unk3C = 0;
                                                gUnk_03005220.unk28 = 0;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        break;

                    case 0x26:
                    case 0x27:
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)) && ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_sb].yPosBg2 + 2)) && ((s32) gEntityInfo[0].yPosBg2 > (s32) ((gEntityInfo[var_sb].yPosBg2 + 2) - 0x12)))
                        {
                            if (gUnk_03005220.unk34 == 0)
                            {
                                if ((u32) gEntityInfo[0].yPosBg2 > (u32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    if (gUnk_03005220.unk31 == 0)
                                    {
                                        gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0x1B;
                                    }
                                    else
                                    {
                                        gEntityInfo[0].yPosBg2 = sp1C;
                                    }
                                    gUnk_03005220.unk3C = 0;
                                    sp20 = gUnk_03004654[0x1B];
                                    gUnk_03005220.unk48 = 1;
                                    if ((gEntityInfo[var_sb].unkC_4 == 1) && ((s32) gEntityInfo[var_sb].unk8.split.unk8 < (s32) (gEntityInfo[var_sb].unk8.split.unk9 - 0xA)))
                                    {
                                        gEntityInfo[var_sb].unkC_4 = 0;
                                        gEntityInfo[var_sb].unk8.split.unk8 += 0xA;
                                        gEntityInfo[var_sb].unk8.split.unk8 = gEntityInfo[var_sb].unk8.split.unk9 - gEntityInfo[var_sb].unk8.split.unk8;
                                    }
                                }
                                else
                                {
                                    sp20 = gUnk_03004654[0x1B];
                                    gUnk_03005220.unk3F = var_sb;
                                    gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFF0;
                                    gUnk_03005220.unk49 = 1;
                                }
                            }
                        }
                        else if (gUnk_03005220.unk3F == var_sb)
                        {
                            gUnk_03005220.unk57 = 0;
                            gUnk_03005220.unk3F = 0;
                        }
                        else
                        {
                            if ((gUnk_03005220.unk43 == 1) && ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25)))
                            {
                                if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)))
                                {
                                    if ((s32) (gEntityInfo[0].yPosBg2 - 0x30) < (s32) gEntityInfo[var_sb].yPosBg2)
                                    {
                                        if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) > (gEntityInfo[var_sb].yPosBg2 - 0x10))
                                        {
                                            sp1C = gEntityInfo[0].yPosBg2 = (gEntityInfo[var_sb].yPosBg2 - 0x10) + 0x40;
                                            gUnk_03005220.unk3C = 0;
                                            gUnk_03005220.unk28 = 0;
                                            if (gEntityInfo[var_sb].unkC_4 == 1)
                                            {
                                                gEntityInfo[var_sb].unkC_4 = 0;
                                                gEntityInfo[var_sb].unk8.split.unk8 += 0xA;
                                                gEntityInfo[var_sb].unk8.split.unk8 = gEntityInfo[var_sb].unk8.split.unk9 - gEntityInfo[var_sb].unk8.split.unk8;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        break;

                    case 0x29:
                        if (gUnk_03005220.unk5A == 1)
                        {
                            if ((gEntityInfo[var_sb].unk8.split.unk9 != 0) && (((gEntityInfo[0].xPosBg2 - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + 0x10)) || ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) <= (s32) ((gEntityInfo[var_sb].xPosBg2 + 0x10) - 0x20)) || ((s32) (gEntityInfo[0].yPosBg2 - 0x38) >= (s32) gEntityInfo[var_sb].yPosBg2) || ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x10))))
                            {
                                gUnk_03005220.unk3B = 0;
                                gUnk_03005220.unk28 = 0;
                                gUnk_03005220.unk5A = 0;
                            }
                        }
                        /* fallthrough */

                    case 0x28:
                        if ((gUnk_03005220.unk43 == 1) && ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25)))
                        {
                            var_r7_7 = 0x16;
                        }
                        else
                        {
                            var_r7_7 = 0;
                        }
                        if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10))
                        {
                            goto block_1129;
                        }
                        if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10))
                        {
                            goto block_1129;
                        }
                        if ((s32) (gEntityInfo[0].yPosBg2 - (var_r7_7 + 0x18)) >= (s32) gEntityInfo[var_sb].yPosBg2)
                        {
                            goto block_1129;
                        }
                        if ((s32) gEntityInfo[0].yPosBg2 <= (gEntityInfo[var_sb].yPosBg2 - 0x10))
                        {
block_1129:
                            if (gUnk_03005220.unk3F == var_sb)
                            {
                                gUnk_03005220.unk56 = 0;
                                gUnk_03005220.unk3F = 0;
                            }
                        }
                        else
                        {
                            if ((s32) gEntityInfo[0].yPosBg2 <= (s32) ((gEntityInfo[var_sb].yPosBg2 - 0x10) + 4))
                            {
                                sp20 = gUnk_03004654[0x1B];
                                gUnk_03005220.unk3F = var_sb;
                                gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFF0;
                                gUnk_03005220.unk49 = 1;
                                gUnk_03005220.unk3C = 0;
                            }
                            else if (gEntityInfo[var_sb].unk11 == 0x2A)
                            {
                                if (gUnk_03005220.unk3B == 0)
                                {
                                    if (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >= (s32) gEntityInfo[var_sb].yPosBg2) && (gUnk_03005220.unk3A != 0))
                                    {
                                        gUnk_03005220.unk5A = 1;
                                        sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[0].yPosBg2 + 2;
                                        gUnk_03005220.unk3B = 1;
                                        gUnk_03005220.unk24 = gUnk_03000790[gUnk_03005220.unk3A - 1].unk4;
                                        gUnk_03005220.unk48 = 1;
                                        gUnk_03005220.unk3C = 0;
                                    }
                                    else
                                    {
                                        goto block_1115;
                                    }
                                }
                            }
                            else
                            {
block_1115:
                                if (((s32) ((gEntityInfo[0].yPosBg2 - (var_r7_7 + 0x18)) + 4) >= (s32) gEntityInfo[var_sb].yPosBg2) && (gUnk_03005220.unk30 == 0))
                                {
                                    sp20 = gUnk_03004654[0x1B];
                                    gUnk_03005220.unk48 = 1;
                                    sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + var_r7_7 + 0x1B;
                                    break;
                                }
                                gEntityInfo[0].xPosBg2 = sp18;
                                if ((s32) gEntityInfo[var_sb].unk8.split.unk8 >= (s32) (gEntityInfo[var_sb].unk8.split.unk9 - 0xA))
                                {

                                }
                                else if (sp18 < (u32) gEntityInfo[var_sb].xPosBg2)
                                {
                                    if (gEntityInfo[var_sb].unkC_4 != 0)
                                    {
                                        gEntityInfo[var_sb].unkC_4 = 0;
                                        gEntityInfo[var_sb].unk8.split.unk8 += 0xA;
                                        gEntityInfo[var_sb].unk8.split.unk8 = gEntityInfo[var_sb].unk8.split.unk9 - gEntityInfo[var_sb].unk8.split.unk8;
                                    }
                                }
                                else
                                {
                                    if (gEntityInfo[var_sb].unkC_4 != 1)
                                    {
                                        gEntityInfo[var_sb].unkC_4 = 1;
                                        gEntityInfo[var_sb].unk8.split.unk8 += 0xA;
                                        gEntityInfo[var_sb].unk8.split.unk8 = gEntityInfo[var_sb].unk8.split.unk9 - gEntityInfo[var_sb].unk8.split.unk8;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x3D:
                        if ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25))
                        {
                            var_r7_8 = 0x18;
                        }
                        else
                        {
                            var_r7_8 = 0;
                        }
                        if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xC)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xC)) && ((s32) (gEntityInfo[0].yPosBg2 - (var_r7_8 + 0x18)) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 8)))
                        {
                            if ((u32) gEntityInfo[var_sb].yPosBg2 < (u32) gEntityInfo[0].yPosBg2)
                            {
                                gUnk_03005220.unk3C = 0;
                                gUnk_03005220.unk28 = 0;
                                gEntityInfo[0].yPosBg2 = sp1C;
                                if (gUnk_03005220.unk3D > 1)
                                {
                                    gUnk_03005220.unk3D = 1;
                                }
                            }
                            else
                            {
                                if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 4))
                                {
                                    sp20 = (u32) gUnk_03004654[0x1B];
                                    gUnk_03005220.unk3F = (u8) var_sb;
                                    gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFF8;
                                }
                            }
                        }
                        else
                        {
                            if (gUnk_03005220.unk3F == var_sb)
                            {
                                gUnk_03005220.unk57 = 0;
                                gUnk_03005220.unk3F = 0;
                            }
                        }
                        break;

                    case 0x37:
                        if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x20))
                        {

                        }
                        else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x20))
                        {

                        }
                        else
                        {
                            if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                            {

                            }
                            else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x16))
                            {

                            }
                            else if (((u32) gUnk_03004654[0x18] <= sp20) && (gEntityInfo[var_sb].unk8.split.unk8 == 0))
                            {

                            }
                            else
                            {
                                if (Abs(gUnk_030051E0 - gEntityInfo[0].xPosBg2) > 8)
                                {
                                    sub_0801E664(gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 0xC, 0);
                                    gUnk_030051E0 = gEntityInfo[0].xPosBg2;
                                }
                                sp20 = gUnk_03004654[0x1B];
                                sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFEA;
                                if ((gUnk_03005220.unk3E != 0) && ((gUnk_03005220.unk5B != 0)))
                                {

                                }
                                else
                                {
                                    sub_08014624(1);
                                }
                            }
                        }
                        break;

                    case 0x38:
                        if (gUnk_03005220.unk43 == 0)
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 8))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 8))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x40))
                                {

                                }
                                else
                                {
                                    if (gEntityInfo[0].unkC_2 == 0)
                                    {
                                        gEntityInfo[0].xPosBg2 = gEntityInfo[var_sb].xPosBg2 - 0x13;
                                    }
                                    else
                                    {
                                        gEntityInfo[0].xPosBg2 = gEntityInfo[var_sb].xPosBg2 + 0x13;
                                    }
                                    if (gUnk_03005220.unk3E != 0)
                                    {
                                        if (gUnk_03004C20.globalFrameCounter & 7) // fake?
                                        if (gUnk_03004C20.globalFrameCounter & 7)
                                        {
                                            break;
                                        }
                                    }
                                    else
                                    {
                                        sub_08014624(0);
                                    }
                                    sub_0801E664(gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2 + 4, 0xB, 0);
                                }
                            }
                        }
                        break;

                    case 0x34:
                    case 0x6F:
                        if ((gEntityInfo[gUnk_03005220.unk42].unk11 == 0x6F) || (gEntityInfo[gUnk_03005220.unk42].unk11 == 0x25))
                        {
                            var_r7_9 = 0x18;
                        }
                        else
                        {
                            var_r7_9 = 0;
                        }
                        if (((s32) (sp18 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF)) && ((s32) (sp18 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF)) && ((s32) (sp1C - (var_r7_9 + 0x18)) < (s32) gEntityInfo[var_sb].yPosBg2) && ((sp1C > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x1E))))
                        {

                        }
                        else
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0xF))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - (var_r7_9 + 0x18)) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {

                                }
                                else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20))
                                {

                                }
                                else
                                {
                                    sp20 = gUnk_03004654[0x1B];
                                    if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x1D))
                                    {
                                        sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[var_sb].yPosBg2 + 0xFFE0;
                                    }
                                    else
                                    {
                                        gEntityInfo[0].yPosBg2 = sp1C;
                                        gUnk_03005220.unk48 = 1;
                                    }
                                }
                            }
                        }
                        break;
                    case 0x21:
                        if (gUnk_03005220.unk3E != 0)
                        {

                        }
                        else if (gUnk_03005400.unkC == 0)
                        {

                        }
                        else if (gUnk_03005400.unk8_0)
                        {

                        }
                        else
                        {
                            s8 var_0, var_1, var_2, var_3;
                            if (gUnk_03004C20.world == 2)
                            {
                                var_0 = gUnk_08116A16[gUnk_03005400.unkC][0];
                                var_1 = gUnk_08116A16[gUnk_03005400.unkC][1];
                                var_2 = gUnk_08116A16[gUnk_03005400.unkC][2];
                                var_3 = gUnk_08116A16[gUnk_03005400.unkC][3];
                            }
                            else
                            {
                                var_0 = gUnk_08116894[gUnk_03004C20.world - 1][0];
                                var_1 = gUnk_08116894[gUnk_03004C20.world - 1][1];
                                var_2 = gUnk_08116894[gUnk_03004C20.world - 1][2];
                                var_3 = gUnk_08116894[gUnk_03004C20.world - 1][3];
                            }
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + var_1))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 + var_0))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (s32) (gEntityInfo[var_sb].yPosBg2 + var_3))
                                {

                                }
                                else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 + var_2))
                                {

                                }
                                else
                                {
                                    sub_08014624(1);
                                }
                            }
                        }
                        break;

                    case 0x13:
                        if (gEntityInfo[var_sb].unkF != 0xF)
                        {

                        }
                        else if (gUnk_03005220.unk3E != 0)
                        {

                        }
                        else
                        {
                            if ((gEntityInfo[0].xPosBg2 - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + 8))
                            {

                            }
                            else if ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) <= (s32) ((gEntityInfo[var_sb].xPosBg2 + 8) - 0x10))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (gEntityInfo[var_sb].yPosBg2 - 4))
                                {

                                }
                                else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) ((gEntityInfo[var_sb].yPosBg2 - 4) - 0x18))
                                {

                                }
                                else
                                {
                                    sub_08014624(1);
                                }
                            }
                        }
                        break;

                    case 0x15:
                        if (gUnk_03005400.unkC != 0)
                        {
                            // if (gEntityInfo[var_sb].unkF == 0xE || gEntityInfo[var_sb].unkF == 0xF)
                            if (gEntityInfo[var_sb].unkF >= 0xE && gEntityInfo[var_sb].unkF <= 0xF)
                            {
                                if ((gEntityInfo[0].xPosBg2 - 0xC) >= (gEntityInfo[var_sb].xPosBg2 + 8))
                                {

                                }
                                else if ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) <= (s32) ((gEntityInfo[var_sb].xPosBg2 + 8) - 0x10))
                                {

                                }
                                else
                                {
                                    if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) >= (gEntityInfo[var_sb].yPosBg2 - 6))
                                    {

                                    }
                                    else if ((s32) gEntityInfo[0].yPosBg2 <= (s32) ((gEntityInfo[var_sb].yPosBg2 - 6) - 0x10))
                                    {

                                    }
                                    else
                                    {
                                        if (gUnk_03005220.unk3E == 0)
                                        {
                                            sub_08014624(1);
                                        }
                                        sub_08025B78(var_sb, 1);
                                        gEntityInfo[var_sb].unkF = 0;
                                    }
                                }
                            }
                        }
                        break;

                    case 0x16:
                        if (gUnk_03005220.unk3E != 0)
                        {

                        }
                        else if (gUnk_03005400.unk8_0)
                        {

                        }
                        else if (gEntityAnimationInfo[var_sb - gUnk_0300363C].state == 4)
                        {

                        }
                        else
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x14))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x14))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_sb].yPosBg2 - 0xA))
                                {
                                    if ((s32) gEntityInfo[0].yPosBg2 > ((gEntityInfo[var_sb].yPosBg2 - 0xA) - 0x2C))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x17:
                    case 0x18:
                        if (gUnk_03005220.unk3E == 0)
                        {
                            if ((s32) (gEntityInfo[0].xPosBg2 - 0xC) >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x14))
                            {

                            }
                            else if ((s32) (gEntityInfo[0].xPosBg2 + 0xC) <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x14))
                            {

                            }
                            else
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_sb].yPosBg2 - 0xC))
                                {
                                    if ((s32) gEntityInfo[0].yPosBg2 > ((gEntityInfo[var_sb].yPosBg2 - 0xC) - 0x28))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x19:
                        if (gUnk_03005220.unk3E == 0)
                        {
                            if (gEntityInfo[var_sb].unkF == 0)
                            {
                                if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 0x18)) && ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) > (s32) ((gEntityInfo[var_sb].xPosBg2 + 0x18) - 0x30)) && ((u32) gEntityInfo[0].yPosBg2 <= 0x11C) && ((u32) gEntityInfo[0].yPosBg2 > 0x67))
                                {
                                    sub_08014624(1);
                                }
                            }
                        }
                        break;

                    case 0x1D:
                        if (gUnk_03005220.unk3E == 0)
                        {
                            if (((s32) (gEntityInfo[0].xPosBg2 - 0xC) < (s32) (gEntityInfo[var_sb].xPosBg2 + 0x1E)) && ((s32) (gEntityInfo[0].xPosBg2 + 0xC) > (s32) (gEntityInfo[var_sb].xPosBg2 - 0x1E)))
                            {
                                if ((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    if ((s32) gEntityInfo[0].yPosBg2 > (gEntityInfo[var_sb].yPosBg2 - 0x1E))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }
                        }
                        break;

                    case 0x1E:
                        if (gUnk_03005220.unk3E == 0)
                        {
                            if (gEntityInfo[var_sb].unkF == 0xF)
                            {
                                if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[var_sb].xPosBg2 + 0x12)) && ((s32) ((gEntityInfo[0].xPosBg2 - 0xC) + 0x18) > (s32) ((gEntityInfo[var_sb].xPosBg2 + 0x12) - 0x24)))
                                {
                                    if (((s32) (gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_sb].yPosBg2 - 8)) && ((s32) gEntityInfo[0].yPosBg2 > (s32) ((gEntityInfo[var_sb].yPosBg2 - 8) - 0x30)))
                                    {
                                        sub_08014624(1);
                                    }
                                }
                            }
                        }
                        break;
                }
            }
        }

        if ((u32) gUnk_03004654[0x18] <= sp20)
        {
            if ((gUnk_03005220.unk4A | gUnk_03005220.unk48) == 0)
            {
                gUnk_03005220.unk31 = 1;
                gUnk_03005220.unk3D = 0;
                gUnk_03005220.unk30 = 0;
                if (gUnk_03005220.unk38 == 1)
                {
                    gEntityInfo[0].yPosBg2 = sp1C;
                }
                else
                {
                    gUnk_03005220.unk28 = 0x300;
                    if (gEntityAnimationInfo[0].state == 2)
                    {
                        sub_08025B78(0, 1);
                    }
                    else if (gEntityAnimationInfo[0].state == 0x18)
                    {
                        sub_08025B78(0, 0x17);
                    }
                }
                goto block_1317;
            }
            if (gUnk_03005220.unk31 == 0)
            {
                if (gUnk_03005220.unk3D > 1)
                {
                    gUnk_03005220.unk3D = 1;
                    m4aSongNumStart(0x8E);
                }
                if (gUnk_03005220.unk38 == 1)
                {
                    gEntityInfo[0].yPosBg2 = sp1C;
                }
                else
                {
                    gUnk_03005220.unk28 = 0x60;
                    goto block_1317;
                }
            }
            else
            {
                gUnk_03005220.unk28 = 0x300;
block_1317:
                gUnk_03005220.unk3C = 0;
                if (((gUnk_03005220.unk3F | gUnk_03005220.unk48) == 0) || (gUnk_03005220.unk4B != 0))
                {
                    gEntityInfo[0].yPosBg2 = sp1C;
                    if (gUnk_03004C20.unkA == 0)
                    {
                        gEntityInfo[0].yPosBg2 += 4;
                        sp1C = gEntityInfo[0].yPosBg2 = gEntityInfo[0].yPosBg2 & 0xFFF8;
                    }
                }
                gUnk_03005220.unk48 = 0;
            }

            if ((gUnk_03005220.unk33 != 0) && (gUnk_03005220.unk41 == 0) && ((gUnk_03004C20.unkA == 0) || (gUnk_03004C20.level == 8)))
            {
                if (gUnk_03004C20.level != 6)
                {
                    gEntityInfo[0].xPosBg2 = sp18;
                }
                else if ((s32) gEntityInfo[0].xPosBg2 > (s32) (gBgInfo[2].hOfs + 0x10))
                {
                    gEntityInfo[0].xPosBg2 = sp18;
                }
            }
            if (gUnk_03004654[0x18] == sp20)
            {
                if (gUnk_03005220.unk3E != 0)
                {
                    if (gUnk_03005220.unk5B == 0)
                    {
                        sub_08014624(1);
                    }
                }
                else
                {
                    sub_08014624(1);
                }
            }
            else if ((gUnk_03004654[0x19] == sp20) && ((gUnk_03005220.unk3E == 0) || (gUnk_03005220.unk5B == 0)))
            {
                gUnk_03005220.hearts = 1;
                sub_08014624(1);
            }
        }
        else
        {
            if ((gUnk_03005220.unk31 != 0) && (gUnk_03005220.unk3C == 0))
            {
                gUnk_03005220.unk28 = 0x80;
            }
            gUnk_03005220.unk31 = 0;
        }

        sp20 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)];

        sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)]) : sp20;

        if (((u32) gUnk_03004654[1] <= sp20) && (sp20 <= (u32) gUnk_03004654[0x14]))
        {
            if (gUnk_030034E4 == 1)
            {
                gEntityInfo[0].yPosBg2 = sp1C;
                goto block_1365;
            }
            if (gUnk_03004C20.unk11 != 0)
            {
                if (gNewKeys & DPAD_UP)
                {
                    m4aSongNumStart(0x60);
                    sub_08025B78(0, 0x25);
                    goto block_1352;
                }
                goto block_1365;
            }
block_1352:
            if (gUnk_03005220.unk46 == 0)
            {
                gUnk_030051C8 = sp20;
                gUnk_030034E4 = 1;

                for (var_r3_3 = 0; var_r3_3 < (gCallbackQueue.currentCount + 1); var_r3_3++)
                {
                    if (var_r3_3 == 4)
                    {
                        gCallbackQueue.next[4] = &sub_08024718;
                    }
                    else if (var_r3_3 > 4)
                    {
                        gCallbackQueue.next[var_r3_3] = gCallbackQueue.current[var_r3_3 - 1];
                    }
                    else
                    {
                        gCallbackQueue.next[var_r3_3] = gCallbackQueue.current[var_r3_3];
                    }
                }
                if (var_r3_3 > 3)
                {
                    gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
                    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                }
                gBlendValue = 0;
                return;
            }
        }

block_1365:
        if ((gUnk_03005220.unk42 | gUnk_03005220.unk46) == 0)
        {
            if (gUnk_03004654[0x16] != sp20)
            {
                goto block_1397;
            }
            if (gUnk_03005220.unk28 >= -0x1B0)
            {
                if (gUnk_03005220.unk35 != 1)
                {
                    goto block_1390;
                }
                if (gNewKeys & DPAD_RIGHT)
                {
                    sp20 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xC) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)];

                    sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xC) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xC) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)]) : sp20;

                    var_r1_25 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xC) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 + 0xC) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) : sp20;
                    if ((u32) gUnk_03004654[0x18] > (u32) var_r1_25)
                    {
                        gUnk_03005220.unk28 = 0;
                        gEntityInfo[0].xPosBg2 += 3;
                        if (gUnk_03005220.unk3C != 0)
                        {
                            sub_08025B78(0, 2);
                        }
                        else
                        {
                            sub_08025B78(0, 0);
                        }
                        goto block_1433;
                    }
                    goto block_1390;
                }
                if (gNewKeys & DPAD_LEFT)
                {
                    sp20 = gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0x13) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 3) >> 3) * gBgInfo[2].hLength)];

                    sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0x13) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0x13) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0xC) >> 3) * gBgInfo[2].hLength)]) : sp20;

                    var_r1_26 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0x13) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((s32) (gEntityInfo[0].xPosBg2 - 0x13) >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) : sp20;
                    if ((u32) gUnk_03004654[0x18] > (u32) var_r1_26)
                    {
                        gUnk_03005220.unk28 = 0;
                        gEntityInfo[0].xPosBg2 -= 3;
                        if (gUnk_03005220.unk3C != 0)
                        {
                            sub_08025B78(0, 2);
                        }
                        else
                        {
                            sub_08025B78(0, 0);
                        }
                        goto block_1433;
                    }
                    else
                    {
                        goto block_1390;
                    }
                }
                else
                {
block_1390:
                    gUnk_03005220.unk28 = 0x80;
                    gUnk_03005220.unk35 = 1;
                    gUnk_03005220.unk5C = 0;
                    if (gUnk_03005220.unk33 != 0)
                    {
                        gUnk_03005220.unk33 = 0;
                        gUnk_03005220.unk41 = 0;
                        gEntityInfo[0x9].unk10 = 0;
                        gEntityInfo[0xA].unk10 = 0;
                    }
                    m4aSongNumStart(0x8E);
                    if (gHeldKeys & (DPAD_DOWN | DPAD_UP))
                    {
                        if (gEntityAnimationInfo[0].state != 0x11)
                        {
                            sub_08025B78(0, 0x11);
                        }
                    }
                    else
                    {
                        sub_08025B78(0, 0x10);
                    }
                    gEntityInfo[0].xPosBg2 = (gEntityInfo[0].xPosBg2 & 0xFFF8) + 4;
                    gUnk_03005220.unk3D = 1;
                    gUnk_03005220.unk3C = 0;
                }
            }
            else
            {
block_1397:
                if (gUnk_03004654[0x17] != sp20)
                {
                    goto block_1429;
                }
                if (gUnk_03005220.unk28 >= -0x1B0)
                {
                    if (gUnk_03005220.unk35 == 0)
                    {
                        gUnk_03005220.unk28 = 0x80;
                        gUnk_03005220.unk35 = 1;
                        m4aSongNumStart(0x8E);
                    }
                    if (gUnk_03005220.unk33 != 0)
                    {
                        gUnk_03005220.unk33 = 0;
                        gUnk_03005220.unk41 = 0;
                        gEntityInfo[0x9].unk10 = 0;
                        gEntityInfo[0xA].unk10 = 0;
                    }
                    if (gHeldKeys & DPAD_UP)
                    {
                        if (gUnk_03005220.unk36 != 0)
                        {
                            gUnk_03005220.unk36 = 0;
                            m4aSongNumStart(0x90);
                        }
                        if (gEntityAnimationInfo[0].state != 0x13)
                        {
                            sub_08025B78(0, 0x13);
                        }
                    }
                    else
                    {
                        if (gHeldKeys & DPAD_DOWN)
                        {
                            if (gUnk_03005220.unk36 == 0)
                            {
                                m4aSongNumStart(0x94);
                                gUnk_03005220.unk36 = 1;
                            }
                            if (gEntityAnimationInfo[0].state != 0x14)
                            {
                                sub_08025B78(0, 0x14);
                            }
                        }
                        else if (gEntityAnimationInfo[0].state != 0x12)
                        {
                            if (gUnk_03005220.unk36 != 0)
                            {
                                gUnk_03005220.unk36 = 0;
                                m4aSongNumStart(0x90);
                            }
                            sub_08025B78(0, 0x12);
                        }
                    }
                    if (gNewKeys & (DPAD_LEFT | DPAD_RIGHT))
                    {
                        sp20 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x24) >> 3) * gBgInfo[2].hLength)];

                        sp20 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x1C) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x1C) >> 3) * gBgInfo[2].hLength)]) : sp20;

                        var_r1_24 = (sp20 < gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) ? (gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x14) >> 3) * gBgInfo[2].hLength)]) : sp20;
                        if ((u32) gUnk_03004654[0x17] < (u32) var_r1_24)
                        {
                            if (gNewKeys & DPAD_RIGHT)
                            {
                                gEntityInfo[0].xPosBg2 += 3;
                            }
                            else
                            {
                                gEntityInfo[0].xPosBg2 -= 3;
                            }
                            goto block_1433;
                        }
                    }

                    gEntityInfo[0].xPosBg2 = (gEntityInfo[0].xPosBg2 & 0xFFF8) + 4;
                    gUnk_03005220.unk3D = 1;
                    gUnk_03005220.unk3C = 0;
                }
                else
                {
block_1429:
                    if ((gUnk_03005220.unk3D == 2) && (gEntityAnimationInfo[0].state != 7))
                    {
                        sub_08025B78(0, 7);
                    }
                    else if (gUnk_03005220.unk35 != 0)
                    {
block_1433:
                        gUnk_03005220.unk3D = 0;
                        gUnk_03005220.unk35 = 0;
                        if (gUnk_03005220.unk36 != 0)
                        {
                            gUnk_03005220.unk36 = 0;
                            m4aSongNumStart(0x90);
                        }
                    }
                }
            }

        }
    }

block_1435:
    if (gNewKeys & (gUnk_03005284->unk1C | R_BUTTON))
    {
        if ((gUnk_03005220.unk33 | gUnk_03005220.unk40 | gUnk_03005220.unk41 | gUnk_03005220.unk34 | gUnk_03005220.unk35) != 0)
        {

        }
        else if ((gUnk_03005220.hearts) == 0)
        {

        }
        else if (gUnk_03005220.unk42 == 0)
        {
            if (gUnk_03005220.unk3D == 2)
            {
                gUnk_03005220.unk3D = 1;
                gUnk_03005220.unk28 = 0;
            }
            gEntityInfo[0x9].unk10 = 1;
            gUnk_03005220.unk33 = 0x16;
            gUnk_03005220.unk22 = (u16) (gEntityInfo[0].yPosBg2 - 4);
            sub_08025B78(0, 8);
            m4aSongNumStart(0x28);
            gUnk_03005200 = 0;
            sub_0801E664(gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 7, 0);
            if ((gUnk_03004C20.unkA == 0) || (gUnk_03004C20.level == 8))
            {
                gUnk_03005220.unk32 = gEntityInfo[0].unkC_2;
            }
            else
            {
                gUnk_03005220.unk32 = 0;
            }
        }
        else if (gUnk_03005220.unk43 == 0)
        {

        }
        else
        {
            if (gUnk_03005220.unk39 == 0)
            {
                if (gUnk_03004C20.unkA == 0)
                {
                    gEntityInfo[gUnk_03005220.unk42].yPosBg2 = gEntityInfo[0].yPosBg2 - 2;
                    if (gEntityInfo[0].unkC_2 == 1)
                    {
                        gEntityInfo[gUnk_03005220.unk42].xPosBg2 = gEntityInfo[0].xPosBg2 + 8;
                    }
                    gEntityInfo[gUnk_03005220.unk42].unk16 = 6;
                }
                else
                {
                    gEntityInfo[gUnk_03005220.unk42].yPosBg2 = gEntityInfo[0].yPosBg2 - 4;
                    gEntityInfo[gUnk_03005220.unk42].xPosBg2 = gEntityInfo[0].xPosBg2;
                }
                if ((gUnk_03004C20.unkA == 0) || (gUnk_03004C20.level == 8))
                {
                    if (gEntityInfo[0].unkC_2 == 0)
                    {
                        gEntityInfo[gUnk_03005220.unk42].unkF = 0x15;
                    }
                    else
                    {
                        gEntityInfo[gUnk_03005220.unk42].unkF = 0x16;
                    }
                }
                else if (gHeldKeys & DPAD_LEFT)
                {
                    gEntityInfo[gUnk_03005220.unk42].unkF = 0x16;
                }
                else
                {
                    gEntityInfo[gUnk_03005220.unk42].unkF = 0x15;
                }
            }
            else
            {
                gUnk_03005220.unk31 = 0;
                gUnk_03005220.unk39 = 0;
            }
            if (gUnk_03005220.unk31 != 0)
            {
                sub_08025B78(0, 9);
            }
            else
            {
                sub_08025B78(0, 0xA);
            }
            m4aSongNumStart(0x2A);
            gUnk_03005220.unk41 = 1;
            gUnk_03005220.unk55 = 0;
            gUnk_03005220.unk54 = 0;
            gUnk_03005220.unk33 = 0xD;
            sub_080145A8(0);
        }
    }

    if (gUnk_03005220.unk33 != 0)
    {
        if (gUnk_03005220.unk41 == 0)
        {
            sp38 = 1;

            if ((gUnk_03004C20.globalFrameCounter & 3) == 0)
            {
                DmaCopy16(3, &gUnk_0805C8E8, (void*)0x06010000 + (gUnk_08057C50 << 5), 0x80);
            }
            else if ((gUnk_03004C20.globalFrameCounter & 3) == 1)
            {
                DmaCopy16(3, &gUnk_0805C968, (void*)0x06010000 + (gUnk_08057C58 << 5), 0x80);
            }
            else if ((gUnk_03004C20.globalFrameCounter & 3) == 2)
            {
                DmaCopy16(3, &gUnk_0809AC08, (void*)0x06010000 + (gUnk_08057C50 << 5), 0x80);
            }
            else
            {
                DmaCopy16(3, &gUnk_0809AC88, (void*)0x06010000 + (gUnk_08057C58 << 5), 0x80);
            }

            if (gUnk_03005220.unk33 == 0x12)
            {
                gEntityInfo[0xA].unk10 = 1;
            }
            if (gUnk_03005220.unk32 == 0)
            {
                gEntityInfo[0x9].xPosBg2 = gEntityInfo[0].xPosBg2 + (gUnk_080D90B8[0x16 - gUnk_03005220.unk33] + 7);
                gEntityInfo[0xA].xPosBg2 = gEntityInfo[0].xPosBg2 + (gUnk_080D90B8[0x12 - gUnk_03005220.unk33] + 7);
            }
            else
            {
                gEntityInfo[0x9].xPosBg2 = gEntityInfo[0].xPosBg2 - (gUnk_080D90B8[0x16 - gUnk_03005220.unk33] + 7);
                gEntityInfo[0xA].xPosBg2 = gEntityInfo[0].xPosBg2 - (gUnk_080D90B8[0x12 - gUnk_03005220.unk33] + 7);
            }

            if (gUnk_03004C20.unkB == 0)
            {
                if (gUnk_03005220.unk33 > 0xA)
                {
                    gEntityInfo[0x9].yPosBg2 = gUnk_03005220.unk22;
                    gEntityInfo[0xA].yPosBg2 = gUnk_03005220.unk22;
                }
                else
                {
                    if ((s32) gEntityInfo[0x9].yPosBg2 > (s32) (gEntityInfo[0].yPosBg2 - 3))
                    {
                        gEntityInfo[0x9].yPosBg2 -= 3;
                    }
                    else if ((s32) gEntityInfo[0x9].yPosBg2 > (gEntityInfo[0].yPosBg2 - 4))
                    {
                        gEntityInfo[0x9].yPosBg2 -= 2;
                    }
                    else if ((s32) gEntityInfo[0x9].yPosBg2 < (s32) (gEntityInfo[0].yPosBg2 - 5))
                    {
                        gEntityInfo[0x9].yPosBg2 += 3;
                    }
                    else if ((s32) gEntityInfo[0x9].yPosBg2 < (gEntityInfo[0].yPosBg2 - 4))
                    {
                        gEntityInfo[0x9].yPosBg2 += 2;
                    }
                    if ((s32) gEntityInfo[0xA].yPosBg2 > (s32) (gEntityInfo[0].yPosBg2 - 3))
                    {
                        gEntityInfo[0xA].yPosBg2 -= 2;
                    }
                    else if ((s32) gEntityInfo[0xA].yPosBg2 < (s32) (gEntityInfo[0].yPosBg2 - 5))
                    {
                        gEntityInfo[0xA].yPosBg2 += 2;
                    }
                }
            }
            else
            {
                gEntityInfo[0x9].yPosBg2 = gEntityInfo[0].yPosBg2 - 4;
                gEntityInfo[0xA].yPosBg2 = gEntityInfo[0].yPosBg2 - 4;
            }

            if (gUnk_03005220.unk33 > 0xA)
            {
                if (gUnk_03005220.unk32 == 0)
                {
                    gUnk_03005220.unk1E = gEntityInfo[0].xPosBg2;
                    gUnk_03005220.unk20 = gEntityInfo[0].xPosBg2 + 0x21;
                }
                else
                {
                    gUnk_03005220.unk1E = gEntityInfo[0].xPosBg2 - 0x21;
                    gUnk_03005220.unk20 = gEntityInfo[0].xPosBg2;
                }
                if (gUnk_03005220.unk33 == 0x16)
                {
                    gUnk_03005220.unk33 -= 1;
                }
                else
                {
                    goto block_1513;
                }
            }
            else
            {
                gUnk_03005220.unk1E = (u16) (gEntityInfo[0x9].xPosBg2 + 0xFFF6);
                gUnk_03005220.unk20 = (u16) (gEntityInfo[0x9].xPosBg2 + 0xA);
block_1513:
                sp20 = 0;
                for (var_sb = gUnk_030051D8; var_sb <= gUnk_03004788; var_sb++)
                {
// loop_1514:
                    if (((u32) gEntityInfo[var_sb].unkF <= 0x1A) && ((gEntityInfo[var_sb].unk10 != 0) || (gEntityInfo[var_sb].unkF == 0x19)) && ((u32) (u8) (gEntityInfo[var_sb].unkF - 0x15) > 2))
                    {
                        switch (gEntityInfo[var_sb].unk11 - 0xB)
                        {
                            case 0x1A:
                            case 0x64:
                                if (gUnk_03005220.unk33 > 0x14)
                                {
                                    goto block_1672;
                                }
                                if (gUnk_03005220.unk3F == var_sb)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk1E >= (s32) (gEntityInfo[var_sb].xPosBg2 + 7))
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk20 <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0xF))
                                {
                                    goto block_1672;
                                }
                                if ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gEntityInfo[0x9].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x18))
                                {
                                    goto block_1672;
                                }
                                gUnk_03005220.unk33 = 1;
                                if (gEntityInfo[var_sb].unk11 == 0x25)
                                {
                                    if (gEntityInfo[var_sb].unk8.split.unk8 == 1)
                                    {
                                        goto block_1672;
                                    }
                                    gEntityInfo[var_sb].unk8.split.unk9 = 0;
                                    gEntityInfo[var_sb - gUnk_03004C38].unkC_4 = 0;
                                    goto block_1536;
                                }
block_1536:
                                if (gEntityInfo[var_sb].unkF != 0)
                                {
                                    gUnk_03005220.unk59 = 0x3C;
                                }

                                for (var_r7_10 = gUnk_03003500; var_r7_10 <= gUnk_03004664; var_r7_10++)
                                {
                                    if ((var_sb != var_r7_10) && ((u32) gEntityInfo[var_r7_10].unkF <= 0x1A) && ((gEntityInfo[var_r7_10].unk11 == 0x25) || (gEntityInfo[var_r7_10].unk11 == 0x6F)) && ((s32) (gEntityInfo[var_sb].xPosBg2 - 0xF) < (gEntityInfo[var_r7_10].xPosBg2 + 7)) && ((s32) (gEntityInfo[var_sb].xPosBg2 + 7) > (s32) ((gEntityInfo[var_r7_10].xPosBg2 + 7) - 0x16)) && ((s32) (gEntityInfo[var_sb].yPosBg2 - 0x2F) < (s32) gEntityInfo[var_r7_10].yPosBg2) && ((s32) (gEntityInfo[var_sb].yPosBg2 - 0x17) > (s32) (gEntityInfo[var_r7_10].yPosBg2 - 0x18)))
                                    {
                                        sp20 = 1;
                                        if (gEntityInfo[var_r7_10].unk11 == 0x25)
                                        {
                                            gEntityInfo[var_sb].unkF = 0;
                                        }
                                        sp38 = 0;
                                        sub_0801E664((u16) (gEntityInfo[var_sb].xPosBg2 - 4), (u16) (gEntityInfo[var_sb].yPosBg2 - 0x10), 9, 0);
                                        m4aSongNumStart(0xA4);
                                        goto block_1551;
                                        break;
                                    }
                                }
                                gEntityInfo[var_sb].unk12 = 0;
                                gEntityInfo[var_sb].unkF = 0x13;
                                gUnk_03005220.unk42 = var_sb;
                                m4aSongNumStart(0x29);
                                gUnk_03005220.unk40 = 0;
block_1551:
                                break;

                            case 0x0:
                            case 0x6B:
                            case 0x6C:
                            case 0x6D:
                            case 0x6E:
                            case 0x6F:
                            case 0x70:
                            case 0x71:
                            case 0x72:
                                if ((u32) gUnk_03005220.unk33 > 0x13)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk1E >= (s32) (gEntityInfo[var_sb].xPosBg2 + 4))
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk20 <= (s32) (gEntityInfo[var_sb].xPosBg2 - 4))
                                {
                                    goto block_1672;
                                }
                                if ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gEntityInfo[0x9].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x14))
                                {
                                    goto block_1672;
                                }

                                for (var_r7_11 = 1; var_r7_11 < 8; var_r7_11++)
                                {
                                    if (gEntityInfo[var_r7_11].unk8.split.unk8 == var_sb)
                                    {
                                        gEntityInfo[var_r7_11].unk10 = 0;
                                        gEntityInfo[var_r7_11].unkF = 0x1C;
                                        gEntityInfo[var_r7_11].unk8.split.unk8 = 0;
                                        break;
                                    }
                                }

                                gEntityInfo[var_sb].unk8.split.unk8 = 0;
                                gEntityInfo[var_sb].unkF = 0x13;
                                if (gEntityInfo[var_sb].unk11 > 0x7A)
                                {
                                    gEntityInfo[gUnk_0300528C + var_sb].unkF = 0;
                                    gEntityInfo[gUnk_0300528C + var_sb].unk8.split.unk9 = 0;
                                }
                                gUnk_03005220.unk42 = var_sb;
                                gUnk_03005220.unk33 = 1;
                                if ((gEntityInfo[var_sb].unk11 == 0x76) || (gEntityInfo[var_sb].unk11 == 0xB) || (gEntityInfo[var_sb].unk11 == 0x7B))
                                {
                                    sub_08025B78(var_sb, 2);
                                }
                                else
                                {
                                    sub_08025B78(var_sb, 1);
                                }
                                m4aSongNumStart(0x29);
                                if (gUnk_03004C20.level != 8)
                                {
                                    gEntityInfo[var_sb].affineEnable = 1;
                                    gEntityInfo[var_sb].affineHFlip_matrixNum = gOamAffineMatrixNum;

                                    gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x100;                                    
                                    gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                                }
                                break;

                            case 0x8:
                            case 0xB:
                                if ((u32) (u8) (gEntityInfo[var_sb].unkF - 0xE) > 1)
                                {
                                    goto block_1672;
                                }
                                if (gUnk_03005400.unkC == 0)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk1E >= (gEntityInfo[var_sb].xPosBg2 + 0xE))
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk20 <= (s32) ((gEntityInfo[var_sb].xPosBg2 + 0xE) - 0x1C))
                                {
                                    goto block_1672;
                                }
                                if ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) >= (gEntityInfo[var_sb].yPosBg2 + 2))
                                {
                                    goto block_1672;
                                }
                                if ((s32) gEntityInfo[0x9].yPosBg2 <= (s32) ((gEntityInfo[var_sb].yPosBg2 + 2) - 0x20))
                                {
                                    goto block_1672;
                                }

                                for (var_r7_12 = 1; var_r7_12 < 8; var_r7_12++)
                                {
                                    if (gEntityInfo[var_r7_12].unk8.split.unk8 == var_sb)
                                    {
                                        gEntityInfo[var_r7_12].unk10 = 0;
                                        gEntityInfo[var_r7_12].unkF = 0x1C;
                                        gEntityInfo[var_r7_12].unk8.split.unk8 = 0;
                                        break;
                                    }
                                }

                                for (var_r1_27 = 0; var_r1_27 < 2; var_r1_27++)
                                {
                                    if (gEntityInfo[var_r1_27 + 0x13].unkF == 0x1C)
                                    {
                                        gEntityInfo[var_r1_27 + 0x13].xPosBg2 = gEntityInfo[var_sb].xPosBg2;
                                        gEntityInfo[var_r1_27 + 0x13].yPosBg2 = gEntityInfo[var_sb].yPosBg2;
                                        gEntityInfo[var_r1_27 + 0x13].unkF = 0x13;
                                        gEntityInfo[var_r1_27 + 0x13].unk8.split.unk8 = 0;
                                        gUnk_03005220.unk42 = var_r1_27 + 0x13;
                                        gUnk_03005220.unk43 = 1;
                                        gUnk_03005220.unk33 = 1;
                                        sub_08025B78(var_r1_27 + 0x13, 2);
                                        sub_08025B78(var_sb, 1);
                                        gEntityInfo[var_sb].unkF = 0;
                                        m4aSongNumStart(0x29);
                                        break;
                                    }
                                }
                                break;

                            case 0x14:
                                if (gEntityInfo[var_sb].unk8.split.unk8 == 0)
                                {
                                    goto block_1672;
                                }
                                if ((gEntityInfo[var_sb].unkF != 0) && (gEntityInfo[var_sb].unkF != 0x11))
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk1E >= (s32) (gEntityInfo[var_sb].xPosBg2 + 4))
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk20 <= (s32) (gEntityInfo[var_sb].xPosBg2 - 4))
                                {
                                    goto block_1672;
                                }
                                if ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gEntityInfo[0x9].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x14))
                                {
                                    goto block_1672;
                                }

                                for (var_r7_13 = 1; var_r7_13 < 8; var_r7_13++)
                                {
                                    if (gEntityInfo[var_r7_13].unk8.split.unk8 == var_sb)
                                    {
                                        gEntityInfo[var_r7_13].unk10 = 0;
                                        gEntityInfo[var_r7_13].unkF = 0x1C;
                                        gEntityInfo[var_r7_13].unk8.split.unk8 = 0;
                                        break;
                                    }
                                }


                                for (var_r7_14 = 0; var_r7_14 < 2; var_r7_14++)
                                {
                                    if (gEntityInfo[var_r7_14 + 0x14].unkF == 0x1C)
                                    {
                                        break;
                                    }
                                }
                                gEntityInfo[var_r7_14 + 0x14].xPosBg2 = gEntityInfo[var_sb].xPosBg2;
                                gEntityInfo[var_r7_14 + 0x14].yPosBg2 = gEntityInfo[var_sb].yPosBg2;
                                gEntityInfo[var_r7_14 + 0x14].unkF = 0x13;
                                gEntityInfo[var_r7_14 + 0x14].unk8.split.unk8 = 0;
                                gUnk_03005220.unk42 = var_r7_14 + 0x14;
                                gUnk_03005220.unk43 = 1;
                                gUnk_03005220.unk33 = 1;
                                sub_08025B78(var_r7_14 + 0x14, 2);
                                m4aSongNumStart(0x29);
                                if (gEntityInfo[var_sb].unkF == 0)
                                {
                                    gEntityInfo[var_sb].priority = 1;
                                    gUnk_03005400.unk16 = 0;
                                    gEntityInfo[var_r7_14 + 0x14].unk8.split.unk9 = gUnk_080D8E10[gUnk_03005400.unk14];
                                    // (void *)0x040000D4->unk0 = (void *) gUnk_0818B7DC[gEntityInfo[var_r7_14 + 0x14].unk9 + 3];
                                    // (void *)0x040000D4->unk4 = (s32) ((((var_r7_14 * 8) + (*gUnk_0818B8E0)[((gUnk_03004C20.world - 1) * 9) + gUnk_03004C20.level]->unk4 + 0x40)->unk2 << 5) + 0x05000200);
                                    // (void *)0x040000D4->unk8 = 0x80000010;
                                    // if ((s32) (void *)0x040000D4->unk8 < 0)
                                    // {
                                    //     do
                                    //     {

                                    //     } while ((void *)0x040000D4->unk8 & 0x80000000);
                                    // }
                                    DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[var_r7_14 + 0x14].unk8.split.unk9 + 3], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_r7_14 + 0x8].bpp_paletteNum << 5), 0x20);
                                    gUnk_03005400.unk14 = (gUnk_03005400.unk14 + 1) % 3;
                                }
                                else
                                {
                                    gEntityInfo[var_r7_14 + 0x14].unk8.split.unk9 = gEntityInfo[0x16].unk8.split.unk9;
                                    // (void *)0x040000D4->unk0 = (void *) gUnk_0818B7DC[gEntityInfo[var_r7_14 + 0x14].unk9 + 3];
                                    // (void *)0x040000D4->unk4 = (s32) ((((var_r7_14 * 8) + (*gUnk_0818B8E0)[((gUnk_03004C20.world - 1) * 9) + gUnk_03004C20.level]->unk4 + 0x40)->unk2 << 5) + 0x05000200);
                                    // (void *)0x040000D4->unk8 = 0x80000010;
                                    // if ((s32) (void *)0x040000D4->unk8 < 0)
                                    // {
                                    //     do
                                    //     {

                                    //     } while ((void *)0x040000D4->unk8 & 0x80000000);
                                    // }
                                    DmaCopy16Wait(3, gUnk_0818B7DC[gEntityInfo[var_r7_14 + 0x14].unk8.split.unk9 + 3], (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_r7_14 + 0x8].bpp_paletteNum << 5), 0x20);
                                }
                                gEntityInfo[var_sb].unkF = 0x1A;
                                break;

                            case 0x24:
                            case 0x25:
                            case 0x26:
                            case 0x27:
                            case 0x28:
                                if ((s32) gUnk_03005220.unk1E >= (s32) (gEntityInfo[var_sb].xPosBg2 + 0x10))
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk20 <= (s32) (gEntityInfo[var_sb].xPosBg2 - 0x10))
                                {
                                    goto block_1672;
                                }
                                if ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gEntityInfo[0x9].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x18))
                                {
                                    goto block_1672;
                                }
                                sub_08025B78(0, 0xE);
                                sub_08025B78(var_sb, 1);
                                gUnk_03005220.unk34 = 1;
                                gUnk_03005220.unk3C = 0;
                                gUnk_03005220.unk3A = 0;
                                gUnk_03005220.unk3B = 0;
                                gUnk_03005220.unk49 = 0;
                                gUnk_03005220.unk48 = 0;
                                gUnk_03005220.unk3F = 0;
                                gUnk_03005220.unk33 = 0;
                                if (gUnk_03005220.unk3D == 2)
                                {
                                    m4aSongNumStart(0x8E);
                                }
                                gUnk_03005220.unk3D = 1;
                                m4aSongNumStart(0x2C);
                                break;

                            case 0x67:
                                if (((u8) gEntityInfo[var_sb].unkC_4) == 1)
                                {
                                    goto block_1672;
                                }
                                goto block_1643;

                            case 0x66:
                                if (gEntityInfo[var_sb + 1].unk8.split.unk8 != 0)
                                {
                                    goto block_1672;
                                }
                                goto block_1643;
                            case 0x68:              /* switch 5 */
                            case 0x69:              /* switch 5 */
block_1643:
                                if ((u32) gUnk_03005220.unk33 > 0x14)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk1E >= (s32) (gEntityInfo[var_sb].xPosBg2 + 2))
                                {
                                    goto block_1672;
                                }
                                if ((s32) gUnk_03005220.unk20 <= (s32) (gEntityInfo[var_sb].xPosBg2 - 2))
                                {
                                    goto block_1672;
                                }
                                if ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) >= (s32) gEntityInfo[var_sb].yPosBg2)
                                {
                                    goto block_1672;
                                }
                                if ((s32) gEntityInfo[0x9].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x10))
                                {
                                    goto block_1672;
                                }
                                gUnk_03005220.unk33 = 1;
                                sub_0801EAA4(var_sb);
                                break;
                            case 0x6A:
                                if (((u32) gUnk_03005220.unk33 <= 0x14) && ((s32) gUnk_03005220.unk1E < (s32) (gEntityInfo[var_sb].xPosBg2 + 4)) && ((s32) gUnk_03005220.unk20 > (s32) (gEntityInfo[var_sb].xPosBg2 - 4)) && ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) < (gEntityInfo[var_sb].yPosBg2 - 0xC)) && ((s32) gEntityInfo[0x9].yPosBg2 > (s32) ((gEntityInfo[var_sb].yPosBg2 - 0xC) - 8)))
                                {
                                    gUnk_03005220.unk33 = 1;
                                    sub_0801EF5C(var_sb);
                                    m4aSongNumStart(0x5E);
                                }
                                else
                                {
                                    goto block_1672;
                                }
                                break;

                            case 0x31:
                                if (((s32) gUnk_03005220.unk1E < (s32) (gEntityInfo[var_sb].xPosBg2 + 8)) && ((s32) gUnk_03005220.unk20 > (s32) (gEntityInfo[var_sb].xPosBg2 - 8)) && ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) < (s32) gEntityInfo[var_sb].yPosBg2) && ((s32) gEntityInfo[0x9].yPosBg2 > (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20)))
                                {
                                    gUnk_03005220.unk33 = 1;
                                    sp20 = 1;
                                }
                                else
                                {
                                    goto block_1672;
                                }
                                break;

                            case 0x30:
                                if (gEntityInfo[var_sb].unkC_2 == 1)
                                {
                                    var_r7_15 = 8;
                                }
                                else
                                {
                                    var_r7_15 = 0;
                                }
                                if (((s32) gUnk_03005220.unk1E >= (s32) (gEntityInfo[var_sb].xPosBg2 + var_r7_15)) || ((s32) gUnk_03005220.unk20 <= (s32) (gEntityInfo[var_sb].xPosBg2 + (var_r7_15 - 8))) || ((s32) (gEntityInfo[0x9].yPosBg2 - 0x10) >= (s32) gEntityInfo[var_sb].yPosBg2) || ((s32) gEntityInfo[0x9].yPosBg2 <= (s32) (gEntityInfo[var_sb].yPosBg2 - 0x20)) || (gEntityInfo[var_sb].unkC_4 != 0))
                                {
                                    goto block_1672;
                                }
                                gUnk_03005220.unk33 = 1;
                                sp20 = 1;
                                break;
                        }
                    }
                    else
                    {
block_1672:
                        // var_sb += 1;
                        // if ((u32) var_sb <= (u32) gUnk_03004788)
                        // {
                        //     goto loop_1514;
                        // }
                    }
                }

                if ((gUnk_03005220.unk42 != 0) || (sp20 == 1))
                {
                    gUnk_03005220.unk3D = 1;
                    sub_0801E664(gEntityInfo[0x9].xPosBg2, gEntityInfo[0x9].yPosBg2, 0, 0);
                }
                gUnk_03005220.unk33 -= 1;
                if (gUnk_03005220.unk33 == 0)
                {
                    gEntityInfo[0x9].unk10 = 0;
                    gEntityInfo[0xA].unk10 = 0;
                    if ((gUnk_03005220.unk34 == 0) && (sp38 == 1))
                    {
                        if (gUnk_03005220.unk3C != 0)
                        {
                            if (gUnk_03005220.unk42 == 0)
                            {
                                sub_08025B78(0, 2);
                            }
                            else
                            {
                                sub_08025B78(0, 0x18);
                            }
                        }
                        else if (gUnk_03005220.unk3D <= 1)
                        {
                            if (gUnk_03005220.unk42 == 0)
                            {
                                sub_08025B78(0, 0);
                            }
                            else
                            {
                                sub_08025B78(0, 0x16);
                            }
                        }
                    }
                }
            }
        }
        else
        {
            gUnk_03005220.unk33 -= 1;
            if (gUnk_03005220.unk33 == 0)
            {
                gUnk_03005220.unk41 = 0;
            }
        }
    }
    if (gUnk_03004C20.unkA == 0)
    {
        if (gUnk_03005220.unk31 != 1)
        {
            goto block_1722;
        }
        if (gUnk_030034E4 != 0)
        {
            goto block_1722;
        }
        if (!(gNewKeys & DPAD_UP))
        {
            goto block_1722;
        }
    }
block_1696:
    temp_r7_3 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)];
    if (gUnk_03004654[0] == temp_r7_3)
    {
        if (gUnk_03003410.unkB == 0)
        {
            gEntityInfo[0x9].unk10 = 0;
            gEntityInfo[0xA].unk10 = 0;
            gUnk_03005220.unk33 = 0;
            if (gUnk_03004C20.unkB == 1)
            {
                gUnk_03005418 = &gUnk_08055614;
                sub_08025B78(0, 0xF);
                gUnk_03003410.unkB = 1;
                return;
            }

            for (var_r3_4 = 0; var_r3_4 < (gCallbackQueue.currentCount + 1); var_r3_4++)
            {
                if (var_r3_4 == 4)
                {
                    gCallbackQueue.next[4] = &sub_080264A4;
                }
                else if (var_r3_4 > 4)
                {
                    gCallbackQueue.next[var_r3_4] = gCallbackQueue.current[var_r3_4 - 1];
                }
                else
                {
                    gCallbackQueue.next[var_r3_4] = gCallbackQueue.current[var_r3_4];
                }
            }
            if (var_r3_4 > 3)
            {
                gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            }
            gUnk_03003410.unkB = 2;
            sub_08025B78(0, 0x25);
        }
    }
    else
    {
        sp20 = gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 0x10) >> 3) * gBgInfo[2].hLength)];
        if (gUnk_03004654[0x15] > sp20)
        {
            goto block_1722;
        }
        if ((s32) (gUnk_03004654[0x15] + 3) >= (s32) sp20)
        {
            for (var_r2_13 = 0; var_r2_13 < 10; var_r2_13++)
            {
                gCallbackQueue.previous[var_r2_13] = gCallbackQueue.current[var_r2_13];
            }
            gCallbackQueue.previousCount = gCallbackQueue.currentCount;
            gUnk_030051F0.unkE = gBlendValue;
            gUnk_030051F0.unk4 = REG_BLDCNT;
            gUnk_030051F0.unk6 = REG_BG0CNT;
            gUnk_030051F0.unk8 = REG_BG1CNT;
            gUnk_030051F0.unkA = REG_BG2CNT;
            gUnk_030051F0.unkC = REG_BG3CNT;
            gUnk_030051F0.unk0 = gUnk_03004C20.sceneFrameCounter;
            gUnk_03004D90.unk8 = 1;
            gUnk_03004D90.unk9 = 0;
            gBlendValue = 0;
            gCallbackQueue.next[0] = sub_08047B1C;
            gCallbackQueue.next[1] = sub_0800BFF4;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            if ((gUnk_03005220.unk42 == 0) && ((u32) gUnk_03005220.unk3E <= 0x78))
            {
                sub_08025B78(0, 0x23);
            }
            REG_BLDALPHA = gBlendValue | ((0x10 - gBlendValue) << 8);
            REG_BLDY = gBlendValue;
            gCallbackQueue.currentCount = 1;
            gCallbackQueue.current[0] = NULL;
        }
        else
        {
block_1722:
            if (gEntityAnimationInfo[0].state == 0xC)
            {

            }
            else if ((gUnk_03005220.unk34 | gUnk_03005220.unk35 | gUnk_03005220.unk38 | gUnk_03005220.unk39) != 0)
            {

            }
            else if ((gUnk_03005220.unk30 == 1) && (gEntityAnimationInfo[0].state != 4) && (gEntityAnimationInfo[0].state != 0x1A) && (gEntityAnimationInfo[0].state != 8) && (gEntityAnimationInfo[0].state != 0xB) && (gEntityAnimationInfo[0].state != 9) && (gEntityAnimationInfo[0].state != 0xA))
            {
                if (gEntityAnimationInfo[0].state == 3)
                {

                }
                else if (gEntityAnimationInfo[0].state == 0x19)
                {

                }
                else if (gUnk_03005220.unk42 == 0)
                {
                    sub_08025B78(0, 4);
                }
                else
                {
                    sub_08025B78(0, 0x1A);
                }
            }
            else if (gHeldKeys & (DPAD_LEFT | DPAD_RIGHT))
            {
                if ((gEntityAnimationInfo[0].state == 0) || (gEntityAnimationInfo[0].state == 0x16) || ((u32) gEntityAnimationInfo[0].state > 0x1B))
                {
                    if ((gUnk_03004C20.unkB != 0) && (gEntityAnimationInfo[0].state != 0x1E) && (gEntityAnimationInfo[0].state != 0x21))
                    {

                    }
                    else
                    {
                        if (gUnk_03005220.unk42 == 0)
                        {
                            goto block_1773;
                        }
                        goto block_1774;
                    }
                }
                else
                {
                    goto block_1756;
                }
            }
            else if ((gEntityAnimationInfo[0].state == 1) || (gEntityAnimationInfo[0].state == 0x17))
            {
                if (gUnk_03005220.unk42 == 0)
                {
                    sub_08025B78(0, 0);
                }
                else
                {
                    sub_08025B78(0, 0x16);
                }
            }
            else
            {
block_1756:
                if (gUnk_03005220.unk31 != 1)
                {

                }
                else if ((gEntityAnimationInfo[0].state == 4) || (gEntityAnimationInfo[0].state == 0x1A) || (gEntityAnimationInfo[0].state == 7) || (gEntityAnimationInfo[0].state == 0xA))
                {
                    if (gUnk_03005220.unk5C == 0)
                    {
                        if (gUnk_03004C20.unkB == 0)
                        {
                            m4aSongNumStart(0x2E);
                        }
                        else
                        {
                            m4aSongNumStart(0xA0);
                        }
                        goto block_1770;
                    }
                    gUnk_03005220.unk5C = 0;
                    if ((gUnk_03004C20.unk11 != 0) && (sp20 = (u32) gBgDataPtrs.pBufBg2Tilemap[((u16) gEntityInfo[0].xPosBg2 >> 3) + (((s32) (gEntityInfo[0].yPosBg2 - 4) >> 3) * gBgInfo[2].hLength)], ((u32) gUnk_03004654[1] <= sp20)) && (sp20 <= (u32) gUnk_03004654[0x14]))
                    {
                        sub_08025B78(0, 0x22);
                    }
                    else
                    {
block_1770:
                        if ((gUnk_03005220.unk48 | gUnk_03005220.unk4A) == 0)
                        {
                            if (gHeldKeys & (DPAD_LEFT | DPAD_RIGHT))
                            {
                                if (gUnk_03005220.unk42 == 0)
                                {
block_1773:
                                    sub_08025B78(0, 1);
                                }
                                else
                                {
block_1774:
                                    sub_08025B78(0, 0x17);
                                }
                            }
                            else if (gUnk_03005220.unk42 == 0)
                            {
                                sub_08025B78(0, 5);
                            }
                            else
                            {
                                sub_08025B78(0, 0x1B);
                            }
                        }
                    }
                }
            }
            if (gUnk_03004C20.unkB == 1)
            {
                if ((gUnk_03005220.unk31 == 1) && (gUnk_03003410.unkB <= 1) && (gUnk_03005220.unk46 == 0))
                {
                    gEntityInfo[0xD].xPosBg2 = gEntityInfo[0].xPosBg2 - 0x1C;
                    gEntityInfo[0xD].yPosBg2 = gEntityInfo[0].yPosBg2 + 2;
                    gEntityInfo[0xD].unkF = 0;
                    gEntityInfo[0xD].unk10 = 1;
                }
                else
                {
                    gEntityInfo[0xD].unkF = 0x1C;
                    gEntityInfo[0xD].unk10 = 0;
                }
                if (gUnk_03005220.unk31 == 1)
                {
                    if (gEntityAnimationInfo[0].state != 8 && gEntityAnimationInfo[0].state != 12 && gEntityAnimationInfo[0].state != 5
                       && gEntityAnimationInfo[0].state != 27 && gEntityAnimationInfo[0].state != 19 && gEntityAnimationInfo[0].state != 15)
                    {
                        if (gUnk_03005220.unk2F >= -0x14 && gUnk_03005220.unk2F <= 0x14)
                        {
                            if (gHeldKeys & DPAD_RIGHT)
                            {
                                if (gEntityAnimationInfo[0].state != 0x1C)
                                {
                                    sub_08025B78(0, 0x1C);
                                }
                            }
                            else if (gHeldKeys & DPAD_LEFT)
                            {
                                if (gEntityAnimationInfo[0].state != 0x1D)
                                {
                                    sub_08025B78(0, 0x1D);
                                }
                            }
                            else if (gEntityAnimationInfo[0].state != 0)
                            {
                                sub_08025B78(0, 0);
                            }
                        }
                        else
                        {
                            if (gUnk_03005220.unk2F <= 0x13)
                            {
                                if (gHeldKeys & DPAD_RIGHT)
                                {
                                    if (gEntityAnimationInfo[0].state != 0x1F)
                                    {
                                        sub_08025B78(0, 0x1F);
                                    }
                                }
                                else if (gHeldKeys & DPAD_LEFT)
                                {
                                    if (gEntityAnimationInfo[0].state != 0x20)
                                    {
                                        sub_08025B78(0, 0x20);
                                    }
                                }
                                else if (gEntityAnimationInfo[0].state != 0x1E)
                                {
                                    sub_08025B78(0, 0x1E);
                                }
                            }
                            else if (gUnk_03005220.unk2F > 0x14)
                            {
                                if (gHeldKeys & DPAD_RIGHT)
                                {
                                    if (gEntityAnimationInfo[0].state != 0x22)
                                    {
                                        sub_08025B78(0, 0x22);
                                    }
                                }
                                else if (gHeldKeys & DPAD_LEFT)
                                {
                                    if (gEntityAnimationInfo[0].state != 0x23)
                                    {
                                        sub_08025B78(0, 0x23);
                                    }
                                }
                                else if (gEntityAnimationInfo[0].state != 0x21)
                                {
                                    sub_08025B78(0, 0x21);
                                }
                            }
                        }
                    }
                }
                if (gUnk_03004C20.world != 5)
                {

                }
                else if (!(gUnk_03004C20.globalFrameCounter & 1))
                {

                }
                else
                {
                    DmaCopy16(3, &gUnk_080D8AF0 + ((((u32) gUnk_03004C20.globalFrameCounter >> 2) & 1) << 5), (void*)0x050000E0, 0x20);
                    DmaCopy16(3, &gUnk_080D8A70 + ((((u32) gUnk_03004C20.globalFrameCounter >> 4) & 3) << 5), (void*)0x05000080, 0x20);
                }
            }
            else
            {
                if (gUnk_03005220.unk31 == 1)
                {
                    if (gHeldKeys == 0)
                    {
                        if ((gEntityAnimationInfo[0].state == 0) || ((gEntityAnimationInfo[0].state > 0x21) && (gUnk_03005220.unk42 == 0)))
                        {
                            gUnk_03005220.unk1C += 1;
                            if ((gUnk_03005220.unk1C == 0x04B0) && (gUnk_03004C20.level != 8))
                            {
                                temp_r0_132 = thunk_GetRandomValue();
                                var_r4_2 = 0x20;
                                if (temp_r0_132 <= 0x3F)
                                {
                                    var_r4_2 = 0x1C;
                                }
                                else if (temp_r0_132 <= 0x7F)
                                {
                                    var_r4_2 = 0x1E;
                                }
                                else if (temp_r0_132 <= 0xEA)
                                {
                                    var_r4_2 = 0x1F;
                                }
                                if (var_r4_2 == gUnk_03005220.unk5E)
                                {
                                    var_r4_2 += 1;
                                    if (var_r4_2 == 0x21)
                                    {
                                        var_r4_2 = 0x1C;
                                    }
                                }
                                sub_08025B78(0, var_r4_2);
                                gUnk_03005220.unk5E = var_r4_2;
                            }
                        }
                        else if (gEntityAnimationInfo[0].state == 0x21)
                        {
                            if (gEntityAnimationInfo[0].timer == 0x30)
                            {
                                gEntityAnimationInfo[0].frame &= 1;
                                if (gEntityAnimationInfo[0].frame != 0)
                                {
                                    m4aSongNumStart(0x8C);
                                    gUnk_03005200 = 1;
                                }
                            }
                        }
                    }
                    else
                    {
                        gUnk_03005220.unk1C = 0;
                        if (gUnk_03005200 != 0)
                        {
                            m4aSongNumStart(0x90);
                            gUnk_03005200 = 0;
                        }
                    }
                    if ((gUnk_03005220.unk42 == 0) && ((gEntityAnimationInfo[0].state == 0) || (gEntityAnimationInfo[0].state == 0x16) || ((u32) gEntityAnimationInfo[0].state > 0x1B)))
                    {
                        if (gHeldKeys & DPAD_UP)
                        {
                            if (gEntityAnimationInfo[0].state != 0x25)
                            {
                                sub_08025B78(0, 0x25);
                            }
                        }
                        else if (gEntityAnimationInfo[0].state == 0x25)
                        {
                            sub_08025B78(0, 0x23);
                        }
                        if (gHeldKeys & DPAD_DOWN)
                        {
                            if (gEntityAnimationInfo[0].state != 0x24)
                            {
                                sub_08025B78(0, 0x24);
                            }
                        }
                        else if (gEntityAnimationInfo[0].state == 0x24)
                        {
                            sub_08025B78(0, 0x22);
                        }
                    }
                }
            }

            if (gUnk_03005220.unk46 != 0)
            {
                if (gEntityAnimationInfo[0].state != 0xD)
                {
                    sub_08025B78(0, 0xD);
                }
                if (gUnk_03005220.unk46 > 1)
                {
                    gUnk_03005220.unk46 -= 1;
                }
                gEntityInfo[0].xPosBg2 = sp18;
            }

            if (gUnk_03004C20.unk10 != 1)
            {

            }
            else if (gUnk_03003410.unkB > 1)
            {

            }
            else if ((gUnk_03005220.unk4D == 0x63) && (gUnk_03005220.unk4E == 0x3B) && (gUnk_03005220.unk4F == 0x63))
            {

            }
            else
            {
                gUnk_03005220.unk60 += 0xA7;
                if (gUnk_03005220.unk60 > 0x2679)
                {
                    gUnk_03005220.unk4F = 0;
                    gUnk_03005220.unk60 = 0;

                    if (gUnk_03005220.unk4E++ > 0x3A)
                    {
                        gUnk_03005220.unk4E = 0;
                        if (gUnk_03005220.unk4D++ > 0x62)
                        {
                            gUnk_03005220.unk4D = 0x63;
                        }
                        gBgTilemapBufs[0][0x35] = gBgTilemapBufs[0][(gUnk_03005220.unk4D / 10) + 0x332];
                        gBgTilemapBufs[0][0x36] = gBgTilemapBufs[0][(gUnk_03005220.unk4D % 10) + 0x332];
                    }

                    gBgTilemapBufs[0][0x38] = gBgTilemapBufs[0][(gUnk_03005220.unk4E / 10) + 0x332];
                    gBgTilemapBufs[0][0x39] = gBgTilemapBufs[0][(gUnk_03005220.unk4E % 10) + 0x332];
                }

                gUnk_03005220.unk4F = gUnk_03005220.unk60 / 100;
                gBgTilemapBufs[0][0x3B] = gBgTilemapBufs[0][(gUnk_03005220.unk4F / 10) + 0x332];
                gBgTilemapBufs[0][0x3C] = gBgTilemapBufs[0][(gUnk_03005220.unk4F % 10) + 0x332];
            }

            if ((gUnk_03004C20.globalFrameCounter & 7) == 0)
            {
                temp_r5_26 = ((u32) gUnk_03004C20.globalFrameCounter >> 3) & 3;
                if (gUnk_0300547C != 0)
                {
                    DmaCopy16(3, gUnk_0818B9B8[0][temp_r5_26], (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[gUnk_0300547C - 0xD].tileNum << 5), 0x20);
                }
                if (gUnk_03000818 != 0)
                {
                    DmaCopy16(3, gUnk_0818B9B8[1][temp_r5_26], (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[gUnk_03000818 - 0xD].tileNum << 5), 0x80);
                }
                if (gUnk_030051B4 != 0)
                {
                    DmaCopy16(3, gUnk_0818B9B8[2][temp_r5_26], (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[gUnk_030051B4 - 0xD].tileNum << 5), 0x80);
                }
                if (gUnk_030008EC != 0)
                {
                    DmaCopy16(3, gUnk_0818B9B8[3][temp_r5_26], (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[gUnk_030008EC - 0xD].tileNum << 5), 0x80);
                }
            }
            else
            {
                if (!(gUnk_03004C20.globalFrameCounter & 0x21))
                {
                    DmaCopy16(3, &gUnk_080D8B30 + ((((u32) gUnk_03004C20.globalFrameCounter >> 2) & 7) << 5), (void*)0x05000180, 0x20);
                }
            }
        }
    }
}

