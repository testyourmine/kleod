#include "global.h"
#include "code_08025B78.h"
#include "transitions.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "wait_for_next_frame.h"
#include "code_08039D8C.h"
#include "save.h"
#include "code_080472B0.h"
#include "interrupts.h"
#include "main.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern u16 gUnk_08057C70;
extern u8 gUnk_080A5088[0x800];

// 25B78
void SetEntityAnimationInfoState(s32 slot, u8 state)
{
    if (slot >= 9)
    {
        slot += (9 - gUnk_030007C4);
    }

    gEntityAnimationInfo[slot].state = state;
    gEntityAnimationInfo[slot].timer = 1;
    gEntityAnimationInfo[slot].frame = 0xFF;
}

// 25BA4
void UpdateEntityAnimationInfoEntries(void)
{
    vu32 i;
    struct EntityAnimationData *pAnimData;
    struct EntityAnimationFrameData **pFrames;
    struct EntityAnimationFrameData *pFrameData;

    for (i = 0; i < 0x2D; i++)
    {
        if (i < 9)
        {
            pAnimData = &gUnk_03005418[i];
        }
        else
        {
            pAnimData = &gUnk_03005294[i] - 9;
        }
        if (pAnimData->pFrames == NULL)
        {
            break;
        }
        if (pAnimData->pFrames == NULL + 1)
        {
            continue;
        }

        if (gEntityAnimationInfo[i].timer == 0xFF)
        {
            continue;
        }

        if (--gEntityAnimationInfo[i].timer != 0)
        {
            continue;
        }

        pFrames = pAnimData->pFrames;
        pFrameData = pFrames[gEntityAnimationInfo[i].state];
        if (pFrameData[++gEntityAnimationInfo[i].frame].src == -1)
        {
            gEntityAnimationInfo[i].frame = 0;
        }
        else if (pFrameData[gEntityAnimationInfo[i].frame].src == -2)
        {
            gEntityAnimationInfo[i].timer = 0xFF;
            gEntityInfo[pAnimData->entityInfoEntry].visible = 0;
            gEntityInfo[pAnimData->entityInfoEntry].unkF = 0x1C;
            gEntityInfo[pAnimData->entityInfoEntry].unk8.split.unk8 = 0;
            continue;
        }
        else if (pFrameData[gEntityAnimationInfo[i].frame].src > 9999)
        {
            if (pFrameData[gEntityAnimationInfo[i].frame].src == -3)
            {
                gEntityAnimationInfo[i].timer = 0xFF;
                continue;
            }
        }
        else
        {
            gEntityAnimationInfo[i].state = pFrameData[gEntityAnimationInfo[i].frame].src;
            gEntityAnimationInfo[i].frame = 0;
            pFrameData = pFrames[gEntityAnimationInfo[i].state];
        }

        gEntityAnimationInfo[i].timer = pFrameData[gEntityAnimationInfo[i].frame].timer;
        DmaCopy16(3, pFrameData[gEntityAnimationInfo[i].frame].src, pAnimData->dest, pAnimData->size);
        gEntityInfo[pAnimData->entityInfoEntry].unkB_0 = pFrameData[gEntityAnimationInfo[i].frame].unk5_0;
        gEntityInfo[pAnimData->entityInfoEntry].unkB_4 = pFrameData[gEntityAnimationInfo[i].frame].unk5_4;
    }
}

// 25DD4
void DrawLevelHud_Hearts(void)
{
    u32 emptyHeart;
    u32 i;

    for (i = 0; i < 3; i++)
    {
        // Draw empty hearts when past number of hearts
        if (i < gUnk_03005220.hearts)
        {
            emptyHeart = 0;
        }
        else
        {
            emptyHeart = 2;
        }

        // Draw heart
        gBgTilemapBufs[0][(i * 2) + 0x241] = gBgTilemapBufs[0][(i * 2 + 0) + ((emptyHeart + 0x14) * 0x20)];
        gBgTilemapBufs[0][(i * 2) + 0x242] = gBgTilemapBufs[0][(i * 2 + 1) + ((emptyHeart + 0x14) * 0x20)];
        gBgTilemapBufs[0][(i * 2) + 0x261] = gBgTilemapBufs[0][(i * 2 + 0) + ((emptyHeart + 0x15) * 0x20)];
        gBgTilemapBufs[0][(i * 2) + 0x262] = gBgTilemapBufs[0][(i * 2 + 1) + ((emptyHeart + 0x15) * 0x20)];
    }
}

// 25E68
s32 DrawLevelHud_DreamStones(void)
{
    s32 maxDreamStones;
    s32 reachedMax;

    reachedMax = 0;

    if ((gUnk_03004C20.unkA == 1) || (gUnk_03004C20.level == 6))
    {
        // Hoverboard levels
        maxDreamStones = 100;
    }
    else
    {
        // Normal levels
        maxDreamStones = 30;
    }

    if (maxDreamStones == gUnk_03005220.dreamStones)
    {
        reachedMax = 1;
    }

    if ((gUnk_03004C20.unkA == 1) || (gUnk_03004C20.level == 6))
    {
        // maxDreamStones must be reused to match, here it is a boolean for max dream stones being over 99
        // This causes tens/ones to shift left by one
        maxDreamStones = 1;

        if (gUnk_03005220.dreamStones >= 100)
        {
            // Hundreds digit
            gBgTilemapBufs[0][0x252] += 0;
            gBgTilemapBufs[0][0x252] = gBgTilemapBufs[0][0x293];
            gBgTilemapBufs[0][0x272] += 0;
            gBgTilemapBufs[0][0x272] = gBgTilemapBufs[0][0x2B3];
        }
    }
    else
    {
        maxDreamStones = 0;
    }

    if (gUnk_03005220.dreamStones >= 10)
    {
        // Tens digit
        gBgTilemapBufs[0][0x254 - maxDreamStones] = gBgTilemapBufs[0][(gUnk_03005220.dreamStones / 10) + 0x292];
        gBgTilemapBufs[0][0x274 - maxDreamStones] = gBgTilemapBufs[0][(gUnk_03005220.dreamStones / 10) + 0x2B2];
    }

    // Ones digit
    gBgTilemapBufs[0][0x255 - maxDreamStones] = gBgTilemapBufs[0][(gUnk_03005220.dreamStones % 10) + 0x292];
    gBgTilemapBufs[0][0x275 - maxDreamStones] = gBgTilemapBufs[0][(gUnk_03005220.dreamStones % 10) + 0x2B2];

    return reachedMax;
}

// 25F94
void DrawLevelHud_Lives(void)
{
    if (gUnk_03005220.lives >= 10)
    {
        // Tens digit
        gBgTilemapBufs[0][0x25B] = gBgTilemapBufs[0][(gUnk_03005220.lives / 10) + 0x292];
        gBgTilemapBufs[0][0x27B] = gBgTilemapBufs[0][(gUnk_03005220.lives / 10) + 0x2B2];
    }
    else if (gUnk_03005220.lives == 9)
    {
        // Overwrite tens digit with empty space
        gBgTilemapBufs[0][0x25B] = gBgTilemapBufs[0][(gUnk_03005220.lives / 10) + 0x25E];
        gBgTilemapBufs[0][0x27B] = gBgTilemapBufs[0][(gUnk_03005220.lives / 10) + 0x27E];
    }

    // Ones digit
    gBgTilemapBufs[0][0x25C] = gBgTilemapBufs[0][(gUnk_03005220.lives % 10) + 0x292];
    gBgTilemapBufs[0][0x27C] = gBgTilemapBufs[0][(gUnk_03005220.lives % 10) + 0x2B2];
}

// 26090
void DrawLevelSelectHud_Lives(void)
{
    if (gUnk_03005220.lives >= 10)
    {
        // Tens digit
        gBgTilemapBufs[0][0x25B] = gBgTilemapBufs[0][(gUnk_03005220.lives / 10) + 0x293];
        gBgTilemapBufs[0][0x27B] = gBgTilemapBufs[0][(gUnk_03005220.lives / 10) + 0x2B3];
    }

    // Ones digit
    gBgTilemapBufs[0][0x25C] = gBgTilemapBufs[0][(gUnk_03005220.lives % 10) + 0x293];
    gBgTilemapBufs[0][0x27C] = gBgTilemapBufs[0][(gUnk_03005220.lives % 10) + 0x2B3];
}

// 26128
void DrawLevelTimer(void)
{
    u32 i;

    // Copy timer template
    for (i = 0; i < 2; i++)
    {
        DmaCopy16(3, &gBgTilemapBufs[0][(0x16 + i) * 0x20 + 0x12], &gBgTilemapBufs[0][i * 0x20 + 0x14], 0x14);
    }

    if (gUnk_03004C20.level == 1)
    {
        // EX-1

        // If no best time, draw 99:59:99
        if ((gUnk_03004670->bestEx1TimeMinutes | gUnk_03004670->bestEx1TimeSeconds | gUnk_03004670->bestEx1TimeCentiseconds) == 0)
        {
            gUnk_03004670->bestEx1TimeMinutes = gUnk_03004670->bestEx1TimeCentiseconds = 99;
            gUnk_03004670->bestEx1TimeSeconds = 59;
        }

        // Draw best time
        gBgTilemapBufs[0][0x15] = gBgTilemapBufs[0][(gUnk_03004670->bestEx1TimeMinutes / 10) + 0x312];
        gBgTilemapBufs[0][0x16] = gBgTilemapBufs[0][(gUnk_03004670->bestEx1TimeMinutes % 10) + 0x312];
        gBgTilemapBufs[0][0x18] = gBgTilemapBufs[0][(gUnk_03004670->bestEx1TimeSeconds / 10) + 0x312];
        gBgTilemapBufs[0][0x19] = gBgTilemapBufs[0][(gUnk_03004670->bestEx1TimeSeconds % 10) + 0x312];
        gBgTilemapBufs[0][0x1B] = gBgTilemapBufs[0][(gUnk_03004670->bestEx1TimeCentiseconds / 10) + 0x312];
        gBgTilemapBufs[0][0x1C] = gBgTilemapBufs[0][(gUnk_03004670->bestEx1TimeCentiseconds % 10) + 0x312];
    }
    else
    {
        // EX-3

        // If no best time, draw 99:59:99
        if ((gUnk_03004670->bestEx3TimeMinutes | gUnk_03004670->bestEx3TimeSeconds | gUnk_03004670->bestEx3TimeCentiseconds) == 0)
        {
            // TODO: possible bug from copy/paste error
            gUnk_03004670->bestEx1TimeMinutes = gUnk_03004670->bestEx1TimeCentiseconds = 99;
            gUnk_03004670->bestEx1TimeSeconds = 59;
        }

        // Draw best time
        gBgTilemapBufs[0][0x15] = gBgTilemapBufs[0][(gUnk_03004670->bestEx3TimeMinutes / 10) + 0x312];
        gBgTilemapBufs[0][0x16] = gBgTilemapBufs[0][(gUnk_03004670->bestEx3TimeMinutes % 10) + 0x312];
        gBgTilemapBufs[0][0x18] = gBgTilemapBufs[0][(gUnk_03004670->bestEx3TimeSeconds / 10) + 0x312];
        gBgTilemapBufs[0][0x19] = gBgTilemapBufs[0][(gUnk_03004670->bestEx3TimeSeconds % 10) + 0x312];
        gBgTilemapBufs[0][0x1B] = gBgTilemapBufs[0][(gUnk_03004670->bestEx3TimeCentiseconds / 10) + 0x312];
        gBgTilemapBufs[0][0x1C] = gBgTilemapBufs[0][(gUnk_03004670->bestEx3TimeCentiseconds % 10) + 0x312];
    }

    // Draw current time
    gBgTilemapBufs[0][0x35] = gBgTilemapBufs[0][(gUnk_03005220.levelTimeMinutes / 10) + 0x332];
    gBgTilemapBufs[0][0x36] = gBgTilemapBufs[0][(gUnk_03005220.levelTimeMinutes % 10) + 0x332];
    gBgTilemapBufs[0][0x38] = gBgTilemapBufs[0][(gUnk_03005220.levelTimeSeconds / 10) + 0x332];
    gBgTilemapBufs[0][0x39] = gBgTilemapBufs[0][(gUnk_03005220.levelTimeSeconds % 10) + 0x332];
    gBgTilemapBufs[0][0x3B] = gBgTilemapBufs[0][(gUnk_03005220.levelTimeCentiseconds / 10) + 0x332];
    gBgTilemapBufs[0][0x3C] = gBgTilemapBufs[0][(gUnk_03005220.levelTimeCentiseconds % 10) + 0x332];
}

// 26374
void DrawVisionStart(void)
{
    u32 removed;
    u32 i;

    if (gCallbackQueue.current[4] == DrawVisionEnd)
    {
        return;
    }

    if (gUnk_03004C20.sceneFrameCounter <= 75)
    {
        // Move "VISION" graphic to center of screen rightwards
        gEntityInfo[0xB].xPosScreen += 2;
    }
    else if (gUnk_03004C20.sceneFrameCounter > 216)
    {
        // "VISION" graphic done
        gEntityInfo[0xB].visible = 0;
    }
    else if (gUnk_03004C20.sceneFrameCounter > 176)
    {
        // Move "VISION" graphic off the screen rightwards
        gEntityInfo[0xB].xPosScreen += 4;
    }

    if (gUnk_03004C20.sceneFrameCounter > 20 && gUnk_03004C20.sceneFrameCounter <= 95)
    {
        // Move vision number graphic to center of screen rightwards
        gEntityInfo[0xC].xPosScreen += 2;
    }
    else if (gUnk_03004C20.sceneFrameCounter > 236)
    {
        // Vision number graphic done
        gEntityInfo[0xC].visible = 0;
        if (gUnk_030034E4 == 0)
        {
            // remove DrawVisionStart from callback queue
            removed = FALSE;
            for (i = 0; i < (gCallbackQueue.currentCount - 1); i++)
            {
                if ((gCallbackQueue.current[i] == DrawVisionStart) || (removed == TRUE))
                {
                    gCallbackQueue.next[i] = gCallbackQueue.current[i + 1];
                    removed = TRUE;
                }
                else
                {
                    gCallbackQueue.next[i] = gCallbackQueue.current[i];
                }
            }
            if (removed == TRUE)
            {
                gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            }
        }
    }
    else if (gUnk_03004C20.sceneFrameCounter > 196)
    {
        // Move vision number graphic off the screen rightwards
        gEntityInfo[0xC].xPosScreen += 4;
    }
}

// 264A4
void DrawVisionEnd(void)
{
    u32 i;
    u32 j;

    if (gCallbackQueue.current[5] == TransitionFromDemoToTitleScreen_FadeOut)
    {
        return;
    }

    if (gUnk_03003410.unkB == 2)
    {
        gUnk_03003410.unkB = 3;
        gUnk_03004C20.sceneFrameCounter = 0;
        gEntityInfo[0xC].visible = 1;
        gEntityInfo[0xB].visible = 1;
        gEntityInfo[0xC].xPosScreen = DISPLAY_WIDTH_CENTER;
        gEntityInfo[0xB].xPosScreen = DISPLAY_WIDTH_CENTER;
        gEntityInfo[0xC].yPosScreen = 0;
        gEntityInfo[0xB].yPosScreen = 0;
        DmaCopy16(3, &gUnk_080A5088, OBJ_VRAM0 + (gUnk_08057C70 << 5), 0x800);
        m4aSongNumStart(MUS_VISION_CLEAR);
    }

    if (gUnk_03004C20.sceneFrameCounter <= 25)
    {
        // Move "VISION" graphic to center of screen downwards
        gEntityInfo[0xB].yPosScreen += 2;
    }

    if (gUnk_03004C20.sceneFrameCounter > 20 && gUnk_03004C20.sceneFrameCounter <= 80)
    {
        // Move "CLEAR" graphic to center of screen downwards
        gEntityInfo[0xC].yPosScreen += 2;
        return;
    }

    if (gUnk_03004C20.sceneFrameCounter <= 146)
    {
        return;
    }

    gUnk_030034B0.unk6_4 = gUnk_03004C20.level;
    if (gUnk_03004C20.level == 8)
    {
        if (gBlendValue != 0)
        {
            return;
        }

        for (i = 0xD; i < gUnk_03005428; i++)
        {
            gEntityInfo[i].unkF = 0x1A;
        }

        sub_080008DC();
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        if (gUnk_03004C20.world == 6)
        {
            gUnk_03005284->unk4 = 1;
        }
        else
        {
            gUnk_03005284->unk4 = (gUnk_03004C20.world * 3) + 1;
        }

        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = TransitionFromWorldMapToLevelSelect_FadeOut;
        gCallbackQueue.next[2] = sub_08002AC4;
        gCallbackQueue.next[3] = BossWaitForNextFrame;
        gCallbackQueue.next[4] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 5;
    }
    else if ((gUnk_03004C20.world == 6) && (gUnk_03004C20.level == 3))
    {
        gBlendValue = 0;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = TransitionFromLevelToClearedAllVisionsScreen_FadeOut;
        gCallbackQueue.next[2] = CommonWaitForNextFrame;
        gCallbackQueue.next[3] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 4;
        gCallbackQueue.currentCount = 1;
        gCallbackQueue.current[0] = NULL;
    }
    else
    {
        gBlendValue = 0;
        gUnk_03003410.unk7 = 1;

        // add TransitionFromDemoToTitleScreen_FadeOut to index 5 of callback queue
        for (j = 0; j < (gCallbackQueue.currentCount + 1); j++)
        {
            if (j == 5)
            {
                gCallbackQueue.next[j] = TransitionFromDemoToTitleScreen_FadeOut;
            }
            else if (j > 5)
            {
                gCallbackQueue.next[j] = gCallbackQueue.current[j - 1];
            }
            else
            {
                gCallbackQueue.next[j] = gCallbackQueue.current[j];
            }
        }
        
        if (j >= 5)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        gCallbackQueue.currentCount = 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    }
    gUnk_03005284->unk0 = gUnk_03005220.lives;

    if ((gUnk_03005220.dreamStones > (gUnk_03004670->levelInfo[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] & LEVEL_INFO_DREAM_STONES_MASK)) || (gUnk_03004670->levelInfo[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] == 0))
    {
        // Required to match
        do {
        gUnk_03004670->levelInfo[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] = gUnk_03005220.dreamStones;
        } while(0);
    }
    gUnk_03004670->levelInfo[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] |= LEVEL_INFO_BEATEN_FLAG;

    if (gUnk_03004C20.levelHasTimer == 1)
    {
        // i must be reused to match, here it is a boolean for new best time
        i = 0;

        if (gUnk_03004C20.level == 1)
        {
            // Update best time in EX-1
            if (gUnk_03005220.levelTimeMinutes < gUnk_03004670->bestEx1TimeMinutes)
            {
                i = 1;
            }
            else if (gUnk_03005220.levelTimeMinutes == gUnk_03004670->bestEx1TimeMinutes)
            {
                if (gUnk_03005220.levelTimeSeconds < gUnk_03004670->bestEx1TimeSeconds)
                {
                    i = 1;
                }
                else if (gUnk_03005220.levelTimeSeconds == gUnk_03004670->bestEx1TimeSeconds)
                {
                    if (gUnk_03005220.levelTimeCentiseconds < gUnk_03004670->bestEx1TimeCentiseconds)
                    {
                        i = 1;
                    }
                }
            }

            if (i != 0)
            {
                gUnk_03004670->bestEx1TimeMinutes = gUnk_03005220.levelTimeMinutes;
                gUnk_03004670->bestEx1TimeSeconds = gUnk_03005220.levelTimeSeconds;
                gUnk_03004670->bestEx1TimeCentiseconds = gUnk_03005220.levelTimeCentiseconds;
            }
        }
        else
        {
            // Update best time in EX-3
            if (gUnk_03005220.levelTimeMinutes < gUnk_03004670->bestEx3TimeMinutes)
            {
                i = 1;
            }
            else if (gUnk_03005220.levelTimeMinutes == gUnk_03004670->bestEx3TimeMinutes)
            {
                if (gUnk_03005220.levelTimeSeconds < gUnk_03004670->bestEx3TimeSeconds)
                {
                    i = 1;
                }
                else if (gUnk_03005220.levelTimeSeconds == gUnk_03004670->bestEx3TimeSeconds)
                {
                    if (gUnk_03005220.levelTimeCentiseconds < gUnk_03004670->bestEx3TimeCentiseconds)
                    {
                        i = 1;
                    }
                }
            }

            if (i != 0)
            {
                gUnk_03004670->bestEx3TimeMinutes = gUnk_03005220.levelTimeMinutes;
                gUnk_03004670->bestEx3TimeSeconds = gUnk_03005220.levelTimeSeconds;
                gUnk_03004670->bestEx3TimeCentiseconds = gUnk_03005220.levelTimeCentiseconds;
            }
        }
    }
}
