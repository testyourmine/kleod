#include "global.h"
#include "transitions.h"
#include "anim.h"
#include "vision.h"
#include "code_08003D58.h"
#include "wait_for_next_frame.h"
#include "code_08039D8C.h"
#include "save.h"
#include "code_080472B0.h"
#include "interrupts.h"
#include "main.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern void sub_0804BE58();                                /* extern */

// 240F4
void sub_080240F4(void)
{
    // Unused, possibly a template
    u32 removed;
    u32 i;

    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue -= 1;
    if (gBlendValue == 0)
    {
        // Remove sub_080240F4 from callback queue
        removed = FALSE;
        for (i = 0; i < (gCallbackQueue.currentCount - 1); i++)
        {
            if ((gCallbackQueue.current[i] == sub_080240F4) || (removed == TRUE))
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

        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
        gTransitioning = FALSE;
    }
    else
    {
        gMosaicSize -= 1;
    }
}

// 241EC
void sub_080241EC(void)
{
    // Unused, possibly a template
    u32 removed;
    u32 i;

    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL;

    gBlendValue -= 1;
    if (gBlendValue == 0)
    {
        // Remove sub_080241EC from callback queue
        removed = FALSE;
        for (i = 0; i < (gCallbackQueue.currentCount - 1); i++)
        {
            if ((gCallbackQueue.current[i] == sub_080241EC) || (removed == TRUE))
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

        gTransitioning = FALSE;
    }
    else
    {
        gMosaicSize -= 1;
    }
}

// 242C0
void TransitionToVisionSelectOrLevelGameplay_FadeIn(void)
{
    // fade in, when transitioning into vision select or level gameplay
    u32 removed;
    u32 i;

    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    if (gBlendValue == BLEND_MAX)
    {
        if (gUnk_03003410.unkA == 0)
        {
            m4aSoundVSyncOn();
            m4aSongNumContinue(gSongToResume);
        }

        if (gSoundVolume == 0xFFFF)
        {
            gSoundVolume = 0;
            if (gUnk_03004C20.level == 8)
            {
                if (gUnk_03004C20.world == 6)
                {
                    gSongToResume = MUS_FINAL_BOSS;
                }
                else
                {
                    gSongToResume = MUS_BOSS;
                }
            }
            else if (gUnk_03004C20.level == 0)
            {
                gSongToResume = MUS_VISION_SELECT;
            }
            else if (gUnk_03004C20.unkA == 1)
            {
                gSongToResume = MUS_SURFBOARDING;
            }
            else if (gUnk_03004C20.level == 6)
            {
                gSongToResume = MUS_AUTO_SCROLL_VISION;
            }
            else
            {
                gSongToResume = gUnk_03004C20.world + MUS_WORLD_MAP;
            }

            if (gUnk_03003410.unkA == 0)
            {
                m4aSongNumStart(gSongToResume);
            }
        }
    }

    if (gBlendValue != 0)
    {
        if (gUnk_03003410.unk5 == 1)
        {
            gSoundVolume += 0x10;
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);
        }
        else
        {
            gSoundVolume = 0x100;
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);
        }
    }

    REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL;

    if (gBlendValue-- == 0)
    {
        gMosaicSize = 0;
        gBlendValue = 0;

        // Remove TransitionToVisionSelectOrLevelGameplay_FadeIn from callback queue
        removed = FALSE;
        for (i = 0; i < (gCallbackQueue.currentCount - 1); i++)
        {
                if ((gCallbackQueue.current[i] == TransitionToVisionSelectOrLevelGameplay_FadeIn) || (removed == TRUE))
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

        gTransitioning = FALSE;
        gSoundVolume = 0x100;
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);

        gBlendValue = 9;
        REG_BLDCNT = BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1;
    }
    else
    {
        if (gMosaicSize != 0)
        {
            gMosaicSize -= 1;
        }
    }
}

// 24560
void TransitionFromTitleScreenToFileSelect_FadeOut(void)
{
    // init fade out, when transitioning from title screen to file select
    // Note: idea seems to not work exactly as intended, entering this function, gBlendValue is already BLEND_MAX-1
    // So on first call the transition is already finished
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        EntityResetOamBuffer();
        gUnk_03004C20.sceneFrameCounter = -1;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = FileSelectScreenHandler;
        gCallbackQueue.next[2] = TransitionFromTitleScreenToFileSelect_FadeIn;
        gCallbackQueue.next[3] = CommonWaitForNextFrame;
        gCallbackQueue.next[4] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 5;
    }
}

// 245E8
void TransitionFromDemoToTitleScreen_FadeOut(void)
{
    // fade out, when transitioning from demo to title screen
    // also called when transitioning from cleared all visions screen to world map
    // also called when transitioning from vision to vision select
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        gTransitioning = FALSE;
        sub_080008DC();
        gUnk_03004C20.sceneFrameCounter = -1;
        gCallbackQueue.next[0] = InputHandler_Normal;
        if (gUnk_03003410.unk7 == 1)
        {
            gCallbackQueue.next[0] = InputHandler_Normal; // Redundant, required to match
            if (gUnk_03004C20.world == 6)
            {
                gCallbackQueue.next[1] = WorldMapScreenInit;
                gCallbackQueue.next[2] = TransitionFromVisionSelectToWorldMap_FadeIn;
                gCallbackQueue.next[3] = CommonWaitForNextFrame;
                gCallbackQueue.next[4] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 5;
            }
            else
            {
                gUnk_03004C20.level = 0;
                gUnk_03003410.unk9 = 0;
                gUnk_03003410.unkA = 0;
                gCallbackQueue.next[0] = VisionAndVisionSelectInit;
                gUnk_03003410.unk8 = 1;
                gCallbackQueue.next[1] = EntityInit;
                gCallbackQueue.next[2] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 3;
            }
            gUnk_03004C20.sceneFrameCounter = -1;
        }
        else
        {
            gEntityInfo[0xB].visible = 0;
            gMosaicSize = 0;
            gCallbackQueue.next[1] = TitleScreenHandler;
            gCallbackQueue.next[2] = TitleScreenWaitForNextFrame;
            gCallbackQueue.next[3] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 4;
            gUnk_03004C20.sceneFrameCounter = -1;
            gTitleScreenStage = 0;
        }
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 24718
void TransitionFromRoomToRoom_FadeOut(void)
{
    // fade out, when transitioning from one room to another
    u32 removed;
    u32 i;

    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    if (gBlendValue != BLEND_MAX)
    {
        gSoundVolume -= 0x10;
        if (gSoundVolume > 0x10)
        {
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);
        }
        else
        {
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, 0x10);
        }
    }

    REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL;

    if (gBlendValue++ == BLEND_MAX)
    {
        gBlendValue = BLEND_MAX;
        gMosaicSize = 0xF;
        gTransitioning = FALSE;
        EntityResetOamBuffer();

        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;
        
        gEntityInfo[0xC].visible = 0;
        gEntityInfo[0xB].visible = 0;

        // Remove DrawVisionStart from callback queue
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

        m4aMPlayAllStop();
        gSoundVolume = 0;
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);

        REG_IE &= ~INTR_FLAG_VBLANK;
        REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOff();

        SetUpRoomVisuals();
        sub_0800B3C0();
        if (gUnk_03004C20.isHoverBoardLevel == 1)
        {
            gUnk_030051C8 = gUnk_03004654->unk1 - 1;
            gSceneSaveData->hearts = 3;
        }
        else
        {
            gSceneSaveData->unk6 = gUnk_030051C8;
        }
        WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_VISION);

        REG_IE |= INTR_FLAG_VBLANK;
        REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOn();
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 249A4
void TransitionFromTitleScreenToFileSelect_FadeIn(void)
{
    // fade in, when transitioning from title screen to file select
    u32 removed;
    u32 i;

    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue -= 1;
    if (gBlendValue == 0)
    {
        // remove TransitionFromTitleScreenToFileSelect_FadeIn from callback queue
        // TODO: do while required to match, callback removal possibly a macro
        do {
        removed = FALSE;
        for (i = 0; i < (gCallbackQueue.currentCount - 1); i++)
        {
            if ((gCallbackQueue.current[i] == TransitionFromTitleScreenToFileSelect_FadeIn) || (removed == TRUE))
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
        } while (0);

        gUnk_03004C20.sceneFrameCounter = 0;
        gTransitioning = FALSE;
    }
}

// 24A78
void sub_08024A78(void)
{
    // Unused
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        gTransitioning = FALSE;
        sub_080008DC();
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;

        gMenuInfo->cursorIndex = 0;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = NamcoScreenHandler;
        gCallbackQueue.next[2] = CommonWaitForNextFrame;
        gCallbackQueue.next[3] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 4;
        gUnk_03004C20.sceneFrameCounter = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 24B54
void sub_08024B54(void)
{
    // Unused
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        gTransitioning = FALSE;
        sub_080008DC();
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;

        gMenuInfo->cursorIndex = 0;
        gCallbackQueue.next[0] += 0; // FAKE
        gUnk_03003410.unk9 = 0;
        gUnk_03003410.unkA = 0;
        gCallbackQueue.next[0] = VisionAndVisionSelectInit;
        gUnk_03003410.unk8 = 1;
        gCallbackQueue.next[1] = EntityInit;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gUnk_03004C20.sceneFrameCounter = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 24C34
void TransitionFromVisionSelectToLevel_FadeOut(void)
{
    // fade out, when transitioning from vision select to level
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        gTransitioning = FALSE;
        sub_080008DC();
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
        gMenuInfo->cursorIndex = 0;

        if (gUnk_03005220.unk37 == 0)
        {
            if ((gUnk_03004C20.world != 6) && (gUnk_03004C20.level == 8))
            {
                gSceneSaveData->cutsceneId = gUnk_03004C20.world * 3;
                gBlendValue = BLEND_MAX;
                gCallbackQueue.next[0] = sub_0804BE58;
                gCallbackQueue.next[1] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 2;
            }
            else
            {
                sub_08003D58();
                gUnk_03003410.unk9 = 0;
                gUnk_03003410.unkA = 0;
                gCallbackQueue.next[0] = VisionAndVisionSelectInit;
                gUnk_03003410.unk8 = 1;
                gCallbackQueue.next[1] = EntityInit;
                gCallbackQueue.next[2] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 3;
            }
        }
        gUnk_03004C20.sceneFrameCounter = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 24D84
void TransitionFromLevelToDeath_FadeOut(void)
{
    // fade out, when transitioning from level to death
    u32 i;

    gTransitioning = TRUE;
    if (gBlendValue == 0)
    {
        for (i = 1; i < gUnk_03005428; i++)
        {
            gEntityInfo[i].visible = 0;
            gEntityInfo[i].unkF = 0x1C;
        }

        gEntityInfo[0].visible = 1;
        goto block_9;
    }

    if ((gUnk_03004C20.globalFrameCounter % 8) != 0)
    {

    }
    else if (gBlendValue < BLEND_MAX)
    {
block_9:
        if (gBlendValue == 1)
        {
            REG_DISPSTAT = (REG_DISPSTAT & 0xFF) | ({143 << 8;});
            gIntrTable.vCount = VCountIntr_DeathScreen;
            REG_IE |= INTR_FLAG_VCOUNT;
            REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
            REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BD;
            if ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3)))
            {
                REG_WININ = WININ_WIN0_BG0 | WININ_WIN0_CLR | WININ_WIN1_BG0;
            }
        }

        gSoundVolume -= 0x10;
        if (gSoundVolume > 0x10)
        {
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);
        }
        else
        {
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, 0x10);
        }

        gBlendValue += 1;
        if (gBlendValue == BLEND_MAX)
        {
            m4aMPlayAllStop();
            gSoundVolume = 0x100;
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);
            m4aSongNumStart(SE_LIFE_LOST);
            DrawLevelHud_Lives();
        }
        else if (gBlendValue == ((BLEND_MAX / 2) + 1))
        {
            gEntityInfo[0].priority = 0;
        }
    }

    if (((gNewKeys & (START_BUTTON | A_BUTTON)) || (gUnk_03003410.unk0 > 0xFA)) && (gUnk_03003410.unk0 != 0))
    {
        gUnk_03005220.hearts = 3;
        m4aMPlayAllStop();
        VBlankIntrWait();

        if ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3)))
        {
            REG_WININ = WININ_WIN0_BG0 | WININ_WIN0_CLR | WININ_WIN1_BG0 | WININ_WIN1_CLR;
        }
        REG_WINOUT = WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;

        gSoundVolume = 0x100;
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);

        gCallbackQueue.current[1] = TransitionFromDeathToLevel_FadeOut;
        gBlendValue = gMosaicSize = 0;
    }
    else
    {
        gUnk_03003410.unk0 += 1;
    }
}

// 2502C
void TransitionFromDeathToLevel_FadeOut(void)
{
    // fade out, when transitioning from death to level gameplay
    // also called when transitioning during retry
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    if (gBlendValue == 0)
    {
        REG_IE &= ~INTR_FLAG_VCOUNT;
        REG_DISPSTAT &= ~DISPSTAT_VCOUNT_INTR;
    }
    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue != BLEND_MAX)
    {
        return;
    }
    gTransitioning = FALSE;
    
    gBg2XMag = gBg2YMag = 0x100;
    gBg2Alpha = 0;
    gBlendValue = BLEND_MAX;
    gMosaicSize = 0xF;

    if (gUnk_03005220.unk37 == 0)
    {
        REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
        *(vu16 *)PLTT = 0;
        gUnk_03003410.unk9 = 1;
        gUnk_03003410.unkA = 0;
        gCallbackQueue.next[0] = VisionAndVisionSelectInit;
        gUnk_03003410.unk8 = 1;
        gCallbackQueue.next[1] = EntityInit;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gSoundVolume = 0xFFFF;

        gUnk_03005220.stars = gSceneSaveData->stars;
        gUnk_03005220.dreamStones = gSceneSaveData->dreamStones;
        gUnk_03005220.keys = gSceneSaveData->keys;
        gUnk_03005220.keyDoorsUnlocked = gSceneSaveData->keyDoorsUnlocked;
        gUnk_03005220.moonDoorOpen = gSceneSaveData->moonDoorOpen;
        gUnk_03005220.pressedGrowingShrinkingBlockSwitch = gSceneSaveData->pressedGrowingShrinkingBlockSwitch;
        gUnk_03005220.collectedDreamStones0 = gSceneSaveData->collectedDreamStones0;
        gUnk_03005220.collectedDreamStones1 = gSceneSaveData->collectedDreamStones1;
        gUnk_03005220.collectedHearts = gSceneSaveData->collectedHearts;
        gUnk_03005220.explodedBlocks = gSceneSaveData->explodedBlocks;
        gUnk_03005220.pressedWaterSwitches = gSceneSaveData->pressedWaterSwitches;
        gUnk_03005220.unk1_7 = gSceneSaveData->unk9_7;
        gSceneSaveData->lives = gUnk_03005220.lives;

        REG_IE &= ~INTR_FLAG_VBLANK;
        REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOff();

        if (gSceneSaveData->unk6 == 0)
        {
            gSceneSaveData->unk6 = gUnk_03004654->unk1 - 1;
        }
        WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_VISION);

        REG_IE |= INTR_FLAG_VBLANK;
        REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOn();
    }
    gUnk_03004C20.sceneFrameCounter = -1;
}

// 2528C
void TransitionFromWorldMapToVisionSelect_FadeOut(void)
{
    // fade out, when transitioning from world map to vision select
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    if (gUnk_03003410.unkC == 1)
    {
        REG_WININ = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR;
        REG_WINOUT = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR;
    }

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        gTransitioning = FALSE;

        if (gUnk_03003410.unkC == 1)
        {
            WriteCurrentSaveFile();
            WriteSaveFile(SAVE_DATA_TYPE_FILE, 0);
            gSceneSaveData->world = gUnk_03004C20.world;
            WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_CUTSCENE);
        }

        gCallbackQueue.next[0] = sub_0804BE58;
        gCallbackQueue.next[1] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 2;
        gUnk_03004C20.sceneFrameCounter = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 2534C
void TransitionFromFileSelectToLevel_FadeOut(void)
{
    // fade out, when transitioning from file select to gameplay
    s32 error;

    gTransitioning = TRUE;
    gSoundVolume -= 0x10;
    if (gSoundVolume > 0x10)
    {
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);
    }
    else
    {
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, 0x10);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, 0x10);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, 0x10);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, 0x10);
    }

    REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL;
    REG_WININ = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR;
    REG_WINOUT = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ | WINOUT_WINOBJ_CLR;
    REG_DISPCNT &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        m4aMPlayAllStop();
        REG_IE &= ~INTR_FLAG_VBLANK;
        REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOff();

        gTransitioning = FALSE;
        if (LoadSaveFile(SAVE_DATA_TYPE_FILE) != 0)
        {
            // If issue loading file data, reset it
            DmaFill32(3, 0, &gFileSaveData->nbrUnlockedWorlds, 0x40);
            DmaFill16(3, 0x7F7F, &gFileSaveData->levelInfo, 0x30);
            error = 1;
        }
        else if (LoadSaveFile(SAVE_DATA_TYPE_SCENE) != 0)
        {
            error = 1;
        }
        else
        {
            error = 0;
        }

        if (error)
        {
            // If issue loading save data, reset scene save data
            DmaFill32(3, 0, &gSceneSaveData->lives, 0x24);
            gUnk_03004C20.world = 1;
            gSceneSaveData->world = 1;
            gSceneSaveData->lives = gUnk_03005220.lives = 3;
            gSceneSaveData->shootButtonConfig = 2;
            gSceneSaveData->jumpButtonConfig = 1;
        }
        WriteCurrentSaveFile();
        gFileSaveData->unk38 += 1;

        REG_IE |= INTR_FLAG_VBLANK;
        REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOn();

        gUnk_03005220.lives = gSceneSaveData->lives;
        gUnk_03004C20.world = gSceneSaveData->world;
        gUnk_03004C20.level = gSceneSaveData->level;

        if (gSceneSaveData->sceneType == SCENE_TYPE_VISION)
        {
            gUnk_03004C20.room = 0xFF;
        }
        else if (gSceneSaveData->sceneType == SCENE_TYPE_VISION_SELECT)
        {
            gVisionSelectInfo.currentVision = gUnk_03004C20.level;
            gUnk_03004C20.level = 0;
        }
        else if (gSceneSaveData->sceneType == SCENE_TYPE_CUTSCENE)
        {
            gCallbackQueue.next[0] = sub_0804BE58;
            gCallbackQueue.next[1] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 2;
            return;
        }
        else if (gSceneSaveData->sceneType == SCENE_TYPE_WORLD_MAP)
        {
            gCallbackQueue.next[0] = InputHandler_Normal;
            gCallbackQueue.next[1] = WorldMapScreenInit;
            gCallbackQueue.next[2] = TransitionFromVisionSelectToWorldMap_FadeIn;
            gCallbackQueue.next[3] = CommonWaitForNextFrame;
            gCallbackQueue.next[4] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 5;
            gUnk_03004C20.sceneFrameCounter = -1;
            return;
        }

        gUnk_03003410.unk9 = 0;
        gUnk_03003410.unkA = 0;
        gCallbackQueue.next[0] = VisionAndVisionSelectInit;
        gUnk_03003410.unk8 = 1;
        gCallbackQueue.next[1] = EntityInit;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 25634
void TransitionFromWorldMapToLevel_FadeOut(void)
{
    // fade out, when transitioning from world map to level gameplay
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        gTransitioning = FALSE;
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;

        gMenuInfo->cursorIndex = 0;
        gUnk_03004C20.sceneFrameCounter = -1;
        sub_08003D58();
        gUnk_03003410.unk9 = 0;
        gUnk_03003410.unkA = 0;
        gCallbackQueue.next[0] = VisionAndVisionSelectInit;
        gUnk_03003410.unk8 = 1;
        gCallbackQueue.next[1] = EntityInit;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gUnk_03004C20.sceneFrameCounter = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 25718
void TransitionFromVisionSelectToWorldMap_FadeIn(void)
{
    // fade in, when transitioning from vision select to world map
    u32 removed;
    u32 i;

    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL;

    gBlendValue -= 1;
    if (gBlendValue == 0)
    {
        // remove TransitionFromVisionSelectToWorldMap_FadeIn from callback queue
        // TODO: do while required to match, callback removal possibly a macro
        do {
        removed = FALSE;
        for (i = 0; i < (gCallbackQueue.currentCount - 1); i++)
        {
            if ((gCallbackQueue.current[i] == TransitionFromVisionSelectToWorldMap_FadeIn) || (removed == TRUE))
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
        } while(0);

        gUnk_03004C20.sceneFrameCounter = 0;
        gTransitioning = FALSE;
        REG_WININ = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR;
        REG_WINOUT = WINOUT_WIN01_BG0 | WINOUT_WIN01_BG1 | WINOUT_WIN01_BG3 | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;
        REG_BLDCNT = BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG3 | BLDCNT_TGT2_OBJ | BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG2;
    }
    else
    {
        gMosaicSize -= 1;
    }
}

// 25818
void TransitionFromVisionSelectToWorldMap_FadeOut(void)
{
    // fade out, when transitioning from vision select to world map
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        gTransitioning = FALSE;
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;

        gMenuInfo->cursorIndex = 0;
        gUnk_03004C20.sceneFrameCounter = -1;
        EntityResetOamBuffer();
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = WorldMapScreenInit;
        gCallbackQueue.next[2] = TransitionFromVisionSelectToWorldMap_FadeIn;
        gCallbackQueue.next[3] = CommonWaitForNextFrame;
        gCallbackQueue.next[4] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 5;
        gUnk_03004C20.sceneFrameCounter = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 25900
void TransitionFromVisionSelectToBootScreen_FadeOut(void)
{
    // fade out, when transitioning from vision select to boot screen
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        SoftResetRom(RESET_ALL);
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 25954
void TransitionFromLevelToClearedAllVisionsScreen_FadeIn(void)
{
    // fade in, when transitioning from EX-3 to cleared all visions screen
    u32 removed;
    u32 i;

    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue -= 1;
    if (gBlendValue == 0)
    {
        // remove TransitionFromVisionSelectToWorldMap_FadeIn from callback queue
        removed = FALSE;
        for (i = 0; i < (gCallbackQueue.currentCount - 1); i++)
        {
            if ((gCallbackQueue.current[i] == TransitionFromLevelToClearedAllVisionsScreen_FadeIn) || (removed == TRUE))
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

        gTransitioning = FALSE;
    }
    else
    {
        gMosaicSize -= 1;
    }
}

// 25A28
void TransitionFromLevelToClearedAllVisionsScreen_FadeOut(void)
{
    // fade out, when transitioning from EX-3 to cleared all visions screen
    gTransitioning = TRUE;
    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    REG_BLDCNT = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL;

    gBlendValue += 1;
    if (gBlendValue == BLEND_MAX)
    {
        REG_IE &= ~INTR_FLAG_VBLANK;
        REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOff();

        m4aMPlayAllStop();
        gSceneSaveData->world = 6;
        WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_WORLD_MAP);
        WriteSaveFile(SAVE_DATA_TYPE_FILE, 0);
        gTransitioning = FALSE;
        sub_08003D58();
        sub_080008DC();
        gUnk_03004C20.sceneFrameCounter = -1;

        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;

        gMenuInfo->cursorIndex = 0;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = ClearedAllVisionsScreenInit;
        gCallbackQueue.next[2] = TransitionFromLevelToClearedAllVisionsScreen_FadeIn;
        gCallbackQueue.next[3] = ClearedAllVisionsScreenWaitForNextFrame;
        gCallbackQueue.next[4] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 5;

        REG_IE |= INTR_FLAG_VBLANK;
        REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOn();
    }
    else
    {
        gMosaicSize += 1;
    }
}
