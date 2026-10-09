#include "global.h"
#include "game_over.h"
#include "anim.h"
#include "boot.h"
#include "code_08003D58.h"
#include "interrupts.h"
#include "main.h"
#include "save.h"
#include "vision.h"
#include "wait_for_next_frame.h"
#include "data/trig.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern u8 gUnk_080657C8[0x400];
extern u8 gUnk_08065BC8[0x400];
extern u8 gUnk_08065FC8[0x400];
extern u8 gUnk_080663C8[0x80];
extern u8 gUnk_08066448[0x40];
extern u8 gUnk_08066488[0x80];
extern u8 gUnk_08066508[0x80];
extern u8 gUnk_08066588[0x80];
extern u8 gUnk_08066608[0x80];
extern u8 gUnk_08066688[0x80];
extern u8 gUnk_08066708[0x80];
extern u8 gUnk_08066788[0x80];
extern u8 gUnk_08066808[0x80];
extern u8 gUnk_08066888[0x80];
extern u8 gUnk_08066908[0x80];
extern u8 gUnk_08066988[0x80];
extern u8 gUnk_08066A08[0x80];
extern u8 gUnk_08066A88[0x80];

extern u8 gUnk_08078A88[0x20];
extern u8 gUnk_08078AA8[0x20];
extern u8 gUnk_08078AC8[0x20];
extern u8 gUnk_08078AE8[0x20];

extern struct Unk_0300466C gUnk_0807D248[];

struct Unk_08116464 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 pad9[0xC - 0x9];
};
extern struct Unk_08116464 gUnk_08116464[];

extern const u8 gUnk_08117120[0xA];
extern const u8 gUnk_0811712A[0x10];
extern const u16 gUnk_0811713A[0x20];

// 43BA4
void GameOverScreenInit(void)
{
    u32 i;

    gBlendValue = gMosaicSize = 0;

    VBlankIntrWait();
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    sub_08003D58();
    EntityResetOamBuffer();
    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG_ALL_ON | DISPCNT_WIN0_ON;
    gUnk_03005488 = 0;
    REG_WININ = WININ_WIN0_BG0 | WININ_WIN1_BG0 | WININ_WIN1_BG1 | WININ_WIN1_BG2 | WININ_WIN1_CLR;
    REG_WIN1H = WIN_RANGE(0, DISPLAY_WIDTH);
    REG_WIN1V = WIN_RANGE(0x1, 0x8F);
    gIntrTable.hBlank = HBlankIntr_GameOverCircleShrinkEffect;
    gUnk_030051DC = gUnk_0807D248;
    gEntitySlotCount = 0xD;

    gObjPalRamPtr = gUnk_030034F4;
    gObjVramPtr = gUnk_030052AC;

    DmaCopy16Wait(3, &gUnk_08078A88, gUnk_030034F4, 0x20);
    DmaCopy16Wait(3, &gUnk_080657C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08065BC8, gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08078AA8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08065FC8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08078AC8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080663C8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066448, gObjVramPtr, 0x40);
    gObjVramPtr += 0x40;

    DmaCopy16Wait(3, &gUnk_08066488, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066508, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066588, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066608, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066688, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078AE8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08066708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066808, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066888, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066908, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066988, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066A08, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066A88, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    for (i = 0; gUnk_08116464[i].unk0 != 0xFFFF; i++)
    {
        EntityCreate(gEntitySlotCount++, gUnk_08116464[i].unk7, gUnk_08116464[i].unk0, gUnk_08116464[i].unk2, gUnk_08116464[i].unk4, 0, gUnk_08116464[i].unk5, gUnk_08116464[i].unk6, gUnk_08116464[i].unk8);
    }
    gEntitySlotCount += 0xC;
    
    for (i = 0xD; i <= 0x24; i++)
    {
        gEntityInfo[i].unk8.split.unk8 = 0;
        gEntityInfo[i].visible = 0;
        gEntityInfo[i].unkF = 0x1C;
        gEntityInfo[i].objMode = 0;
        gEntityInfo[i].priority = 0;
    }

    for (i = 0; i <= 0xD; i++)
    {
        gEntityInfo[i].visible = 0;
        gEntityInfo[i].unkF = 0x1C;
    }

    gEntityInfo[0].visible = 1;
    gEntityInfo[0].priority = 1;
    gEntityInfo[0].xPosBg2 = gBgInfo[2].hOfs + 0x78;
    gEntityInfo[0].yPosBg2 = gBgInfo[2].vOfs + 0x78;
    gEntityInfo[0].xPosScreen = 0x78;
    gEntityInfo[0].yPosScreen = 0x78;
    gEntityInfo[0].affineEnable = 0;
    gEntityInfo[0].id = ENTITY_ID_NONE;

    for (i = 0; i <= 0x2C; i++)
    {
        gEntityAnimationInfo[i].state = 0xFF;
        gEntityAnimationInfo[i].timer = 0xFF;
    }

    SetEntityAnimationInfoState(0, 0x15);

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_IE |= INTR_FLAG_HBLANK;
    REG_DISPSTAT |= DISPSTAT_HBLANK_INTR;
    m4aSoundVSyncOn();

    m4aSongNumStart(SE_VISION_OVER);
}

// 441C8
void GameOverScreenStageSetup(s32 gameOverScreenStage)
{
    u8 i;

    switch (gGameOverScreenStage)
    {
        case GAME_OVER_SCREEN_STAGE_TRANSITION_ANIMATION:
            gEntityInfo[0x10].xPosBg2 = gBgInfo[2].hOfs + 0x40;
            gEntityInfo[0x11].xPosBg2 = gBgInfo[2].hOfs + 0x4C;
            gEntityInfo[0x12].xPosBg2 = gBgInfo[2].hOfs + 0x56;
            gEntityInfo[0x13].xPosBg2 = gBgInfo[2].hOfs + 0x60;
            gEntityInfo[0x14].xPosBg2 = gBgInfo[2].hOfs + 0x6B;
            gEntityInfo[0x15].xPosBg2 = gBgInfo[2].hOfs + 0x78;
            gEntityInfo[0x16].xPosBg2 = gBgInfo[2].hOfs + 0x8E;
            gEntityInfo[0x17].xPosBg2 = gBgInfo[2].hOfs + 0x9B;
            gEntityInfo[0x18].xPosBg2 = gBgInfo[2].hOfs + 0xA9;
            gEntityInfo[0x19].xPosBg2 = gBgInfo[2].hOfs + 0xB6;

            for (i = 0x10; i <= 0x19; i++)
            {
                gEntityInfo[i].yPosBg2 = gBgInfo[2].vOfs + 0x3A;
                gEntityInfo[i].affineEnable = 0;
                gEntityInfo[i].objMode = 0;
                gEntityInfo[i].visible = 1;
                gEntityInfo[i].unkF = 0;
                gEntityInfo[i].priority = 0;
                gEntityInfo[i].xPosScreen = gEntityInfo[i].xPosBg2 - gBgInfo[2].hOfs;
                gEntityInfo[i].yPosScreen = gEntityInfo[i].yPosBg2 - gBgInfo[2].vOfs;
            }

            gMenuInfo->cursorIndex = 0;

            for (i = 0xD; i <= 0xE; i++)
            {
                gEntityInfo[i].visible = 1;
                gEntityInfo[i].unkF = 0;
                gEntityInfo[i].objMode = 0;
                gEntityInfo[i].priority = 0;
                gEntityInfo[i].xPosBg2 = gBgInfo[2].hOfs + 0x3C + ((i - 0xD) * 0x78);
                gEntityInfo[i].yPosBg2 = gBgInfo[2].vOfs + 0x91;
                gEntityInfo[i].xPosScreen = gEntityInfo[i].xPosBg2 - gBgInfo[2].hOfs;
                gEntityInfo[i].yPosScreen = gEntityInfo[i].yPosBg2 - gBgInfo[2].vOfs;
                gEntityInfo[i].affineEnable = 1;
                gEntityInfo[i].affineHFlip_matrixNum = i - 0xC;
                gOamAffineBuffer[i - 0xC].pa = 0x600;
                gOamAffineBuffer[i - 0xC].pb = 0;
                gOamAffineBuffer[i - 0xC].pc = 0;
                gOamAffineBuffer[i - 0xC].pd = 0x600;
            }
            break;

        case GAME_OVER_SCREEN_STAGE_SELECT_OPTION:
            gUnk_03005488 = 0;
            break;

        case GAME_OVER_SCREEN_STAGE_CONTINUE_PLAYING:
            REG_WIN0V = 0;
            REG_WIN1V = 0;
            REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
            REG_DISPCNT &= ~DISPCNT_OBJ_ON;
            gMosaicSize = 0xF;
            gBlendValue = 0x10;
            REG_BLDY = BLDY_MAX;

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
            gUnk_03004C20.room = 0;

            REG_IE &= ~INTR_FLAG_VBLANK;
            REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
            m4aSoundVSyncOff();

            gSceneSaveData->lives = gUnk_03005220.lives = gSceneSaveData->prevLives;
            WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_VISION);

            REG_IE |= INTR_FLAG_VBLANK;
            REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
            break;

        case GAME_OVER_SCREEN_STAGE_GOOD_NIGHT:
            gUnk_03004C20.sceneFrameCounter = 0;
            gUnk_03005488 = 0;
            REG_WIN0V = 0;
            REG_WIN1V = 0;
            REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON;
            gBlendValue = 0;

            for (i = 0; i <= 0x19; i++)
            {
                gEntityInfo[i].visible = 0;
                gEntityInfo[i].unkF = 0x1C;
            }

            for (i = 0x1A; i <= 0x24; i++)
            {
                gEntityInfo[i].priority = 1;
                gEntityInfo[i].affineEnable = 1;
                gEntityInfo[i].affineHFlip_matrixNum = i - 0x1A;
                gEntityInfo[i].xPosBg2 = gBgInfo[2].hOfs + gUnk_08117120[i - 0x1A];
                gEntityInfo[i].yPosBg2 = gBgInfo[2].vOfs + 0x58;
                gEntityInfo[i].xPosScreen = gEntityInfo[i].xPosBg2 - gBgInfo[2].hOfs;
                gEntityInfo[i].yPosScreen = 0x58;
                gOamAffineBuffer[i - 0x1A].pa = 0x100;
                gOamAffineBuffer[i - 0x1A].pb = 0;
                gOamAffineBuffer[i - 0x1A].pc = 0;
                gOamAffineBuffer[i - 0x1A].pd = gUnk_0811713A[0];
                gEntityInfo[i].visible = 0;
                gEntityInfo[i].unkF = 0x1C;
            }

            gMenuInfo->cursorIndex = 0xD;

            for (i = 0x23; i <= 0x24; i++)
            {
                gEntityInfo[i].visible = 1;
                gEntityInfo[i].unkF = 0;
                gEntityInfo[i].priority = 0;
                gEntityInfo[i].yPosScreen = 0x58;
                gOamAffineBuffer[i - 0x1A].pd = 0x100;
            }

            gEntityInfo[0x23].xPosBg2 = gBgInfo[2].hOfs - 4;
            gEntityInfo[0x23].xPosScreen = gEntityInfo[0x23].xPosBg2 - gBgInfo[2].hOfs;
            gEntityInfo[0x24].xPosBg2 = gBgInfo[2].hOfs - 6;
            gEntityInfo[0x24].xPosScreen = gEntityInfo[0x24].xPosBg2 - gBgInfo[2].hOfs;
            REG_BLDCNT = BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_OBJ | BLDCNT_TGT2_BD;
            gEntityInfo[0x24].objMode = 1;
            gBlendValue = 9;
            m4aSongNumStart(MUS_GOOD_NIGHT);
            break;

        case GAME_OVER_SCREEN_STAGE_EXIT_TO_TITLE_SCREEN:
            REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;
            gBlendValue = 0x10;
            gTitleScreenStage = 0;

            gCallbackQueue.next[0] = InputHandler_Normal;
            gCallbackQueue.next[1] = NamcoScreenHandler;
            gCallbackQueue.next[2] = CommonWaitForNextFrame;
            gCallbackQueue.next[3] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 4;

            sub_08003D58();
            gUnk_03004C20.sceneFrameCounter = -1;

            REG_IE &= ~INTR_FLAG_VBLANK;
            REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
            m4aSoundVSyncOff();

            gSceneSaveData->lives = gUnk_03005220.lives = gSceneSaveData->prevLives;
            WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_VISION);

            REG_IE |= INTR_FLAG_VBLANK;
            REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;

            LoadGlobalSaveData();
            return;
    }
}

// 446F8
void GameOverScreenHandler(void)
{
    u8 i;

    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        GameOverScreenInit();
        gGameOverScreenStage = GAME_OVER_SCREEN_STAGE_TRANSITION_ANIMATION;
        GameOverScreenStageSetup(gGameOverScreenStage);
    }

    if (gUnk_03004C20.sceneFrameCounter == 1)
    {
        REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
        REG_WINOUT = WINOUT_WIN01_OBJ;
    }

    UpdateEntityAnimationInfoEntries();

    for (i = 0; i < 10; i++)
    {
        gEntityInfo[i + 0x10].yPosBg2 = gBgInfo[2].vOfs + 0x3A + (SIN((((gUnk_03004C20.sceneFrameCounter / 8) + i) * 0x18) % 0x100) >> 0x5);
        gEntityInfo[i + 0x10].yPosScreen = gEntityInfo[i + 0x10].yPosBg2 - gBgInfo[2].vOfs;
    }

    switch (gGameOverScreenStage)
    {
        case GAME_OVER_SCREEN_STAGE_TRANSITION_ANIMATION:
            gUnk_03005488 += 8;
            if (gUnk_03005488 == 0xF0)
            {
                REG_WIN1V = 0;
                REG_IE &= ~INTR_FLAG_HBLANK;
                REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
                gUnk_03005488 = 0xF8;
            }
            else if (gUnk_03005488 == 0x1E0)
            {
                gUnk_03005220.lives = 0;
                DrawLevelHud_Lives();
                m4aSongNumStart(SE_LIFE_LOST);
            }
            else if (gUnk_03005488 == 0x300)
            {
                gGameOverScreenStage = GAME_OVER_SCREEN_STAGE_SELECT_OPTION;
                GameOverScreenStageSetup(gGameOverScreenStage);
            }
            else
            {
                if (gOamAffineBuffer[1].pa > 0x100)
                {
                    gOamAffineBuffer[1].pa = gOamAffineBuffer[1].pd = gOamAffineBuffer[2].pa = gOamAffineBuffer[2].pd = gOamAffineBuffer[2].pd - 0x40;
                }
            }
            break;

        case GAME_OVER_SCREEN_STAGE_SELECT_OPTION:
            if ((gNewKeys & A_BUTTON) || (gNewKeys & START_BUTTON))
            {
                if (gMenuInfo->cursorIndex != 0)
                {
                    gBlendValue = 0x10;
                    gGameOverScreenStage = GAME_OVER_SCREEN_STAGE_GOOD_NIGHT;
                    gUnk_03005488 = 0;
                    GameOverScreenStageSetup(gGameOverScreenStage);
                }
                else if (gUnk_03005488 == 0)
                {
                    m4aSongNumStart(SE_CURSOR_CONFIRM);
                    gUnk_03005488 = 1;
                }
            }

            if (gUnk_03005488 != 0)
            {
                gUnk_03005488 += 1;
                if (gUnk_03005488 == 0x1E)
                {
                    gGameOverScreenStage = GAME_OVER_SCREEN_STAGE_CONTINUE_PLAYING;
                    GameOverScreenStageSetup(gGameOverScreenStage);
                }
            }

            if (gNewKeys & DPAD_LEFT)
            {
                if (gMenuInfo->cursorIndex != 0)
                {
                    m4aSongNumStart(SE_CURSOR_MOVE);
                }
                gMenuInfo->cursorIndex = 0;
            }
            else if (gNewKeys & DPAD_RIGHT)
            {
                if (gMenuInfo->cursorIndex == 0)
                {
                    m4aSongNumStart(SE_CURSOR_MOVE);
                }
                gMenuInfo->cursorIndex = 1;
            }

            gOamAffineBuffer[gMenuInfo->cursorIndex + 1].pa = COS(gUnk_0811712A[(gUnk_03004C20.sceneFrameCounter >> 1) % 0x10]);
            gOamAffineBuffer[gMenuInfo->cursorIndex + 1].pb = -((SIN(gUnk_0811712A[(gUnk_03004C20.sceneFrameCounter >> 1) % 0x10]) << 1) >> 1);
            gOamAffineBuffer[gMenuInfo->cursorIndex + 1].pc = SIN(gUnk_0811712A[(gUnk_03004C20.sceneFrameCounter >> 1) % 0x10]);
            gOamAffineBuffer[gMenuInfo->cursorIndex + 1].pd = COS(gUnk_0811712A[(gUnk_03004C20.sceneFrameCounter >> 1) % 0x10]);

            gOamAffineBuffer[!gMenuInfo->cursorIndex + 1].pa = gOamAffineBuffer[!gMenuInfo->cursorIndex + 1].pd = 0x100;
            gOamAffineBuffer[!gMenuInfo->cursorIndex + 1].pb = gOamAffineBuffer[!gMenuInfo->cursorIndex + 1].pc = 0;
            break;

        case GAME_OVER_SCREEN_STAGE_GOOD_NIGHT:
            for (i = 0x1A; i <= 0x22; i++)
            {
                if (((gEntityInfo[0x23].xPosScreen + 6) & 0xFF) >= (gUnk_08117120[i - 0x1A] + 6))
                {
                    gEntityInfo[i].visible = 1;
                    gEntityInfo[i].unkF = 0;

                    if (gOamAffineBuffer[i - 0x1A].pd != 0x114)
                    {
                        gOamAffineBuffer[i - 0x1A].pd = gUnk_0811713A[((gEntityInfo[0x23].xPosScreen - gUnk_08117120[i - 0x1A]) >> 1) % 0x20] + 0x14;
                    }
                    else
                    {
                        gOamAffineBuffer[i - 0x1A].pd = gOamAffineBuffer[i - 0x1A].pd;
                    }
                }
            }

            gUnk_03005488 += 1;

            for (i = 0x23; i <= 0x24; i++)
            {
                gEntityInfo[i].yPosBg2 = gBgInfo[2].vOfs + 0x58 + (SIN((((gUnk_03005488 - ((i + 9) * 4)) >> 2) * 0x14) % 0x100) >> 0x4);
                gEntityInfo[i].yPosScreen = gEntityInfo[i].yPosBg2 - gBgInfo[2].vOfs;

                gEntityInfo[i].xPosBg2 += 1;
                gEntityInfo[i].xPosScreen = gEntityInfo[i].xPosBg2 - gBgInfo[2].hOfs;

                if (gEntityInfo[i].xPosScreen == 0xFA)
                {
                    gEntityInfo[i].visible = 0;
                    gEntityInfo[i].unkF = 0x1C;
                }

                if (gEntityInfo[0x23].yPosScreen <= 0x48)
                {
                    gEntityInfo[0x24].priority = 0;
                    gEntityInfo[0x23].priority = 0;

                    gEntityInfo[i].priority = 0;
                    gOamAffineBuffer[i - 0x1A].pd = 0xF0;
                    gOamAffineBuffer[i - 0x1A].pa = 0xF0;
                }
                else if (gEntityInfo[0x23].yPosScreen > 0x66)
                {
                    gEntityInfo[i].priority = 1;
                    gOamAffineBuffer[i - 0x1A].pd = 0x120;
                    gOamAffineBuffer[i - 0x1A].pa = 0x120;
                }
            }

            if ((gUnk_03005488 > 0x2FC) || (gNewKeys & A_BUTTON) || (gNewKeys & START_BUTTON))
            {
                gGameOverScreenStage = GAME_OVER_SCREEN_STAGE_EXIT_TO_TITLE_SCREEN;
                GameOverScreenStageSetup(gGameOverScreenStage);
            }
            break;
    }
}
