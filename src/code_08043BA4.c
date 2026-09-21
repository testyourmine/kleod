#include "global.h"
#include "code_08043BA4.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "wait_for_next_frame.h"
#include "transitions.h"
#include "code_08025B78.h"
#include "code_08039D8C.h"
#include "save.h"
#include "code_080472B0.h"
#include "heap.h"
#include "interrupts.h"
#include "main.h"
#include "math.h"
#include "util.h"
#include "data/trig.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern u8 gVisionBgColorMode[6][9][3]; // BG bpp (0 = 16 color mode, 0x80 = 256 color mode)

extern u8 gUnk_080627C8[0x80];

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

extern u8 gUnk_080B90E8[0x80];
extern u8 gUnk_080B9168[0x80];
extern u8 gUnk_080B91E8[0x80];

struct Unk_080D48C8 {
    u16 unk0;
    u16 unk2;
    u8 unk4_0:2;
    u8 unk4_2:6;
    u8 pad5[0x8 - 0x5];
};
extern struct Unk_080D48C8 gUnk_080D48C8[6][7][0x15];

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
extern const u8 gUnk_0811717C[6][40][5];
extern const u8 gUnk_0811762C[6][8];
extern const u8 gUnk_0811765C[6][7];

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
    gUnk_03005428 = 0xD;

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
        EntityCreate(gUnk_03005428++, gUnk_08116464[i].unk7, gUnk_08116464[i].unk0, gUnk_08116464[i].unk2, gUnk_08116464[i].unk4, 0, gUnk_08116464[i].unk5, gUnk_08116464[i].unk6, gUnk_08116464[i].unk8);
    }
    gUnk_03005428 += 0xC;
    
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

            gUnk_03005284->lives = gUnk_03005220.lives = gUnk_03005284->prevLives;
            WriteSaveFile(0, 1);

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

            gUnk_03005284->lives = gUnk_03005220.lives = gUnk_03005284->prevLives;
            WriteSaveFile(0, 1);

            REG_IE |= INTR_FLAG_VBLANK;
            REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;

            LoadAllSaveData();
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

// 44BB8
void sub_08044BB8(void)
{
    u32 i;
    struct ScrollOffset scrollOffset;
    u8 scrollFlags;

    scrollFlags = SCROLL_NONE;

    if (gUnk_030052A0 == 0x41)
    {
        scrollOffset.x = 0;
        scrollOffset.y = 0;

        if ((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) < gUnk_030051CC.unk0)
        {
            scrollFlags = SCROLL_RIGHT;
            scrollOffset.x = 1;
        }
        else if ((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) > gUnk_030051CC.unk0)
        {
            scrollFlags = SCROLL_LEFT;
            scrollOffset.x = -1;
        }

        if ((gBgInfo[2].vOfs + DISPLAY_HEIGHT_CENTER) < gUnk_030051CC.unk2)
        {
            scrollFlags |= SCROLL_DOWN;
            scrollOffset.y = 1;
        }
        else if ((gBgInfo[2].vOfs + DISPLAY_HEIGHT_CENTER) > gUnk_030051CC.unk2)
        {
            scrollFlags |= SCROLL_UP;
            scrollOffset.y = -1;
        }

        if (scrollFlags != 0)
        {
            ScrollBg2LevelData(scrollFlags, scrollOffset);
            return;
        }

        LoadBg2TilemapData(6);
        gUnk_030052A0 = 0x40;
    }

    if (gUnk_030052A0 == 0x40)
    {
        i = 1;
    }
    else if (gUnk_030052A0 > 0x35)
    {
        i = 4;
    }
    else if (gUnk_030052A0 > 0xC)
    {
        i = 0;
    }
    else if (gUnk_030052A0 == 0xC)
    {
        i = -3;
    }
    else if (gUnk_030052A0 > 2)
    {
        i = -4;
    }
    else
    {
        i = -1;
    }
    gBg2XMag = gBg2YMag += i;

    if (gUnk_030052A0 == 0x40)
    {
        gUnk_030034D4 = thunk_HeapAlloc(gUnk_03005428, 2);

        for (i = 0; i < gUnk_03005428; i++)
        {
            if (gEntityInfo[i].unkF <= 0x1A)
            {
                gUnk_030034D4[i].unk0 = gEntityInfo[i].xPosBg2;
                gUnk_030034D4[i].unk2 = gEntityInfo[i].yPosBg2;

                if ((i == 0) || (gEntityInfo[i].id == 0x34) || (gEntityInfo[i].id == ENTITY_ID_BOX) || (gEntityInfo[i].id >= ENTITY_ID_MOO))
                {
                    gUnk_030034D4[i].unk2 = gEntityInfo[i].yPosBg2 - 0xE;
                    if (gEntityInfo[i].id == ENTITY_ID_BOX)
                    {
                        gUnk_030034D4[i].unk0 = gEntityInfo[i].xPosBg2 - 4;
                    }
                }
                else if ((gEntityInfo[i].id == ENTITY_ID_ROTATION_SWITCH) || (gEntityInfo[i].id == ENTITY_ID_CIRCLE_KEY))
                {
                    gUnk_030034D4[i].unk2 = gEntityInfo[i].yPosBg2 - 8;
                }
            }
        }
    }

    for (i = 0; i < gUnk_03005428; i++)
    {
        if (gEntityInfo[i].unkF <= 0x1A)
        {
            gEntityInfo[i].xPosBg2 = gUnk_030051CC.unk0 + ((((gUnk_030034D4[i].unk0 - gUnk_030051CC.unk0) * SIN(PI - gUnk_030052A0)) - ((gUnk_030034D4[i].unk2 - gUnk_030051CC.unk2) * SIN(PI_2 - gUnk_030052A0))) >> 8);
            gEntityInfo[i].yPosBg2 = gUnk_030051CC.unk2 + ((((gUnk_030034D4[i].unk0 - gUnk_030051CC.unk0) * SIN(PI_2 - gUnk_030052A0)) + ((gUnk_030034D4[i].unk2 - gUnk_030051CC.unk2) * SIN(PI - gUnk_030052A0))) >> 8);

            if ((i == 0) || (gEntityInfo[i].id == 0x34) || (gEntityInfo[i].id == ENTITY_ID_BOX) || (gEntityInfo[i].id >= ENTITY_ID_MOO))
            {
                gEntityInfo[i].yPosBg2 += 0xE;
                if (gEntityInfo[i].id == ENTITY_ID_BOX)
                {
                    gEntityInfo[i].xPosBg2 += 4;
                }
            }
            else if ((gEntityInfo[i].id == ENTITY_ID_ROTATION_SWITCH) || (gEntityInfo[i].id == ENTITY_ID_CIRCLE_KEY))
            {
                gEntityInfo[i].yPosBg2 = gEntityInfo[i].yPosBg2 + 8;
            }

            if (i == 8)
            {
                i = 0xD;
            }
        }
    }

    gUnk_030052A0 -= 2;
    gBg2Alpha += 2;
    if (gUnk_030052A0 != 0xFE)
    {
        return;
    }

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    sub_0804517C(1);
    gBg2Alpha = 0;
    LoadBg2TilemapData(6);
    gUnk_03005220.unk3C = 0;
    thunk_HeapFree(gUnk_030034D4);

    scrollFlags = (gUnk_03004C20.room - 1) * 2;
    i = (gUnk_03004C20.roomsRotationBits >> scrollFlags) + 1;
    i = i % 4;
    gUnk_03004C20.roomsRotationBits = (gUnk_03004C20.roomsRotationBits & ~(3 << scrollFlags)) | (i << scrollFlags);

    if (i == 0)
    {
        DmaCopy16(3, gUnk_080627C8, gUnk_03004C10, 0x80);
    }
    else if (i == 1)
    {
        DmaCopy16(3, gUnk_080B90E8, gUnk_03004C10, 0x80);
    }
    else if (i == 2)
    {
        DmaCopy16(3, gUnk_080B9168, gUnk_03004C10, 0x80);
    }
    else
    {
        DmaCopy16(3, gUnk_080B91E8, gUnk_03004C10, 0x80);
    }

    gCallbackQueue.current[1] = sub_0800A804;
    while (REG_VCOUNT_L != 0);

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    m4aSongNumStart(SE_ROTATE_ROOM);
}

// 44F6C
void sub_08044F6C(u8 arg0)
{
    u16 var_r9;
    u16 var_ip;
    u16 var_sl;
    u16 var_r8;

    if (arg0 == 0)
    {
        gEntityInfo[0].xPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk0;
        gEntityInfo[0].yPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk2;
        gEntityInfo[0].unkC_2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk4_0;
    }
    else
    {
        gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
        gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
    }

    var_r9 = ((gUnk_03004C20.roomsRotationBits >> ((gUnk_03004C20.room - 1) * 2)) & 3) * 0x40;
    if (var_r9 != 0)
    {
        var_r8 = gEntityInfo[arg0].xPosBg2;

        var_sl = 0;
        var_ip = 0;
        if ((arg0 == 0) || (gEntityInfo[arg0].id == ENTITY_ID_BOX) || (gEntityInfo[arg0].id >= ENTITY_ID_MOO))
        {
            var_ip = -14;
            if (gEntityInfo[arg0].id == ENTITY_ID_BOX)
            {
                var_sl = -4;
            }
        }
        else if ((gEntityInfo[arg0].id == ENTITY_ID_ROTATION_SWITCH) || (gEntityInfo[arg0].id == ENTITY_ID_CIRCLE_KEY))
        {
            var_ip = -8;
        }

        gEntityInfo[arg0].xPosBg2 = gUnk_030051CC.unk0 + ((((var_r8 - gUnk_030051CC.unk0 + var_sl) * COS(var_r9)) - ((gEntityInfo[arg0].yPosBg2 - gUnk_030051CC.unk2 + var_ip) * SIN(var_r9))) >> 8) - var_sl;
        gEntityInfo[arg0].yPosBg2 = gUnk_030051CC.unk2 + ((((var_r8 - gUnk_030051CC.unk0 + var_sl) * SIN(var_r9)) + ((gEntityInfo[arg0].yPosBg2 - gUnk_030051CC.unk2 + var_ip) * COS(var_r9))) >> 8) - var_ip;
    }
}

// 4517C
void sub_0804517C(u8 arg0)
{
    u32 sp4;
    u32 temp_ip;
    u32 temp_r6;
    u32 var_r7;
    u32 var_sb;
    u32 var_r1;
    u32 var_r3;
    u32 var_r5;
    u32 var_r4;

    for (var_r1 = 0; var_r1 < arg0; var_r1++)
    {
        var_r7 = (gCurrentRoomBg2Bounds.left + 0x18) >> 3;
        var_sb = (gCurrentRoomBg2Bounds.top + 0x18) >> 3;
        var_r5 = (((gCurrentRoomBg2Bounds.right - 0x18) >> 3) - var_r7) - 1;
        sp4 = ((gCurrentRoomBg2Bounds.bottom - 0x18) >> 3) - 1;

        while (1)
        {
            temp_ip = (gBgInfo[2].hLength * var_sb) + var_r7;
            temp_r6 = (gBgInfo[2].hLength * var_sb) + var_r7 + var_r5;
            for (var_r3 = 0; var_r3 < var_r5; var_r3++)
            {
                var_r4 = gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3];
                gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3] = gBgDataPtrs.pBufBg2Tilemap[(var_r3 * gBgInfo[2].hLength) + temp_r6];
                gBgDataPtrs.pBufBg2Tilemap[(var_r3 * gBgInfo[2].hLength) + temp_r6] = var_r4;
            }
    
            temp_ip = (gBgInfo[2].hLength * var_sb) + var_r7;
            temp_r6 = (gBgInfo[2].hLength * sp4) + var_r7 + var_r5;
            for (var_r3 = 0; var_r3 < var_r5; var_r3++)
            {
                var_r4 = gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3];
                gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3] = gBgDataPtrs.pBufBg2Tilemap[temp_r6 - var_r3];
                gBgDataPtrs.pBufBg2Tilemap[temp_r6 - var_r3] = var_r4;
            }
    
            temp_ip = (gBgInfo[2].hLength * var_sb) + var_r7;
            temp_r6 = (gBgInfo[2].hLength * sp4) + var_r7;
            for (var_r3 = 0; var_r3 < var_r5; var_r3++)
            {
                var_r4 = gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3];
                gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3] = gBgDataPtrs.pBufBg2Tilemap[temp_r6 - (var_r3 * gBgInfo[2].hLength)];
                gBgDataPtrs.pBufBg2Tilemap[temp_r6 - (var_r3 * gBgInfo[2].hLength)] = var_r4;
            }
    
            var_r7 += 1;
            var_sb += 1;

            if (var_r5 < 2)
                break;

            var_r5 -= 2;
            sp4 -= 1;
        }
    }
}

// 452E8
void sub_080452E8(void)
{
    if ((gBossStageScroll.currXPos == gBossStageScroll.targetXPos) && (gBossStageScroll.currYPos == gBossStageScroll.targetYPos) && (gBossStageScroll.currAlpha == gBossStageScroll.targetAlpha))
    {
        gBg2Alpha = gUnk_030052A0 += 1;
        if ((gUnk_030052A0 % 0x80) == 0)
        {
            if (gBg2Alpha == 0x80)
            {
                gBossStageScroll.targetAlpha = 0x7E;
            }
            else
            {
                gBossStageScroll.unkC_0 = 1;
                gBossStageScroll.targetAlpha = 0x60;
            }
            gCallbackQueue.current[2] = sub_0800AC34;
        }

        gUnk_03003590[0].unk4 = -gUnk_030052A0;
        if (gUnk_030052A0 < 0x80)
        {
            if (gUnk_030007CC < 0x50)
            {
                gUnk_030007CC += 1;
            }
        }
        else if (gUnk_030007CC != 0)
        {
            gUnk_030007CC -= 1;
        }
    }
}

// 45398
void VisionSelectBeginTransitionToVision(void)
{
    if (!gVisionSelectInfo.startedTransitionToVision)
    {
        m4aSongNumStart(SE_KLONOA_WAHOO);
        gVisionSelectInfo.startedTransitionToVision = TRUE;
        gUnk_03004C20.sceneFrameCounter = 0;
    }
    else if (gUnk_03004C20.sceneFrameCounter > 30)
    {
        gCallbackQueue.current[1] = TransitionFromVisionSelectToLevel_FadeOut;
        gVisionSelectInfo.startedTransitionToVision = FALSE;
    }
}

// 453F0
void VisionSelectInit(void)
{
    // initialize vision select screen
    u16 i;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    m4aMPlayAllStop();
    if (gUnk_03004C20.world == 1)
    {
        gVisionSelectInfo.unk0_1 = 6;
    }
    else
    {
        gVisionSelectInfo.unk0_1 = 0;
    }
    gUnk_03005284->world = gUnk_03004C20.world;
    gUnk_03005284->level = gVisionSelectInfo.currentVision;
    WriteSaveFile(0, 0);
    WriteSaveFile(1, 0);
    gVisionSelectInfo.unk0_0 = 1;
    
    for (i = 0; i < 8; i++)
    {
        if (!(gFileProgressData->levelInfo[gUnk_03004C20.world - 1][i] & LEVEL_INFO_BEATEN_FLAG))
        {
            gVisionSelectInfo.unk0_0 = 0;
        }
    }

    if ((gUnk_03004C20.world == 5) && !(gFileProgressData->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG))
    {
        gVisionSelectInfo.unk0_0 = 0;
    }

    // TODO: BGCNT_TXT or BGCNT_AFF size?
    REG_BG2CNT = 0x4000 | gVisionBgColorMode[(gUnk_03004C20.world - 1)][gUnk_03004C20.level][2] | BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC;
    gBgInfo[2].hOfs = 0;
    gBgInfo[2].vOfs = 0;
    
    for (i = 0; i < 0x400; i++)
    {
        gBg2TilemapData[i] = gBgDataPtrs.pBufBg2Tilemap[(((gBgInfo[2].vOfs >> 3) + (i >> 5)) * gBgInfo[2].hLength) + (i & 0x1F) + (gBgInfo[2].hOfs >> 3)];
    }

    for (i = 1; i <= 0xC; i++)
    {
        gEntityInfo[i].visible = 0;
    }

    if (gVisionSelectInfo.currentVision == 0)
    {
        gVisionSelectInfo.currentVision = 1;
    }

    gVisionSelectInfo.unk2 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.currentVision - 1]][0];
    gVisionSelectInfo.alpha = 0x40;
    gBg2Alpha = -gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.currentVision - 1]][1];
    gVisionSelectInfo.moveDirection = 0;
    gVisionSelectInfo.unlockedVision = 0;

    for (i = 0; i < 7; i++)
    {
        if (gFileProgressData->levelInfo[gUnk_03004C20.world - 1][i] & LEVEL_INFO_BEATEN_FLAG)
        {
            gVisionSelectInfo.unk7_4 = i;
            gVisionSelectInfo.unlockedVision = VisionSelectGetUnlockedVision();
            if (gVisionSelectInfo.unlockedVision != 0)
            {
                break;
            }
        }
    }

    gBgInfo[1].hOfs = gBg2Alpha;
    gBgInfo[1].vOfs = 0x10;
    gCallbackQueue.current[1] = VisionSelectHandler;
    if ((gFileProgressData->levelInfo[gUnk_03004C20.world - 1][0] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK)
    {
        gFileProgressData->levelInfo[gUnk_03004C20.world - 1][0] = 0;
    }

    gVisionSelectInfo.drawStage = 0x10;
    VisionSelectDrawVisionInfo();
    SetEntityAnimationInfoState(0, 0x22);
    VisionSelectUpdateRotationAndEntities();
    VisionSelectDrawVisionIcons();
    UpdateEntityAnimationInfoEntries();

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    REG_IE |= INTR_FLAG_HBLANK;
    REG_DISPSTAT |= DISPSTAT_HBLANK_INTR;
    gIntrTable.hBlank = HBlankIntr_VisionSelect;
}

// 45734
void VisionSelectHandler(void)
{
    // vision select screen updater
    if (gTransitioning == FALSE)
    {
        VisionSelectUpdateUnlockVisionSequence();
        VisionSelectInputAndMovement();
        VisionSelectUpdateRotationAndEntities();
        VisionSelectDrawVisionInfo();
    }
    UpdateEntityAnimationInfoEntries();
}

// 4575C
void VisionSelectCreateEntities(void)
{
    u8 i;

    gUnk_03005428 = 0xD;
    
    for (i = 0; gUnk_0811717C[gUnk_03004C20.world - 1][i][0] != 0xFF; i++)
    {
        EntityCreate(gUnk_03005428, gUnk_0811717C[gUnk_03004C20.world - 1][i][3], gUnk_0811717C[gUnk_03004C20.world - 1][i][0], gUnk_0811717C[gUnk_03004C20.world - 1][i][1], gUnk_0811717C[gUnk_03004C20.world - 1][i][2], 1, 0, 0x1C, gUnk_0811717C[gUnk_03004C20.world - 1][i][4]);
        gEntityInfo[gUnk_03005428].xPosBg2 = gUnk_0811717C[gUnk_03004C20.world - 1][i][0];
        gEntityInfo[gUnk_03005428].yPosBg2 = gUnk_0811717C[gUnk_03004C20.world - 1][i][1];
        gUnk_03005428 += 1;
    }
}

// 45874
void VisionSelectInputAndMovement(void)
{
    u8 sp0;
    u32 textboxRequested;
    u32 visionGoingTo;
    s8 temp_r1;
    u32 i;
    u8 temp_r0;

    if (gCallbackQueue.current[3] == &sub_08048028)
    {
        return;
    }

    if (gVisionSelectInfo.moveDirection == 0)
    {
        if (!(gHeldKeys & (L_BUTTON | R_BUTTON)))
        {
            if (gVisionSelectInfo.alpha != 0x40)
            {
                if ((gVisionSelectInfo.alpha > 0x40) && (gVisionSelectInfo.alpha < 0xC0))
                {
                    gBg2Alpha -= 1;
                    gVisionSelectInfo.alpha -= 1;
                }
                else
                {
                    gBg2Alpha += 1;
                    gVisionSelectInfo.alpha += 1;
                }

                if (gVisionSelectInfo.alpha != 0x40)
                {
                    if ((gVisionSelectInfo.alpha > 0x40) && (gVisionSelectInfo.alpha < 0xC0))
                    {
                        gBg2Alpha -= 1;
                        gVisionSelectInfo.alpha -= 1;
                    }
                    else
                    {
                        gBg2Alpha += 1;
                        gVisionSelectInfo.alpha += 1;
                    }
                }

                gBgInfo[1].hOfs = gBg2Alpha;
                return;
            }
        }
        else
        {
            if (gHeldKeys & R_BUTTON)
            {
                gBg2Alpha += 1;
                gVisionSelectInfo.alpha += 1;
            }

            if (gHeldKeys & L_BUTTON)
            {
                gBg2Alpha -= 1;
                gVisionSelectInfo.alpha -= 1;
            }

            gBgInfo[1].hOfs = gBg2Alpha;
            return;
        }

        if (gNewKeys & START_BUTTON)
        {
            for (i = 0; i < 10; i++)
            {
                gCallbackQueue.previous[i] = gCallbackQueue.current[i];
            }
            gCallbackQueue.previousCount = gCallbackQueue.currentCount;

            gUnk_030034BC = 0;
            gUnk_03003410.unk4 = 1;
            gCallbackQueue.next[0] = PauseMenuScreenInit;
            gCallbackQueue.next[1] = VisionSelectWaitForNextFrame;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }
        else if (gNewKeys & A_BUTTON)
        {
            gBlendValue = 0;
            gUnk_03004C20.room = 0;
            gUnk_03004C20.level = gVisionSelectInfo.currentVision;
            SetEntityAnimationInfoState(0, 0x22);
            gCallbackQueue.current[1] = VisionSelectBeginTransitionToVision;
            gUnk_03005284->prevLives = gUnk_03005284->lives = gUnk_03005220.lives;

            if (gUnk_03004C20.world == 1)
            {
                textboxRequested = FALSE;
                if ((gUnk_03004C20.level == 1) && !(gFileProgressData->levelInfo[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] & LEVEL_INFO_BEATEN_FLAG))
                {
                    gTextBoxInfo.visionSelectTextBoxIdOffset = 1;
                    textboxRequested = TRUE;
                }
                else if ((gUnk_03004C20.level == 4) && !(gFileProgressData->levelInfo[0][3] & LEVEL_INFO_BEATEN_FLAG))
                {
                    gTextBoxInfo.visionSelectTextBoxIdOffset = 2;
                    textboxRequested = TRUE;
                }
                else if ((gUnk_03004C20.level == 6) && !(gFileProgressData->levelInfo[0][5] & LEVEL_INFO_BEATEN_FLAG))
                {
                    gTextBoxInfo.visionSelectTextBoxIdOffset = 5;
                    textboxRequested = TRUE;
                }

                if (textboxRequested)
                {
                    for (i = 0; i < 10; i++)
                    {
                        gCallbackQueue.previous[i] = gCallbackQueue.current[i];
                    }
                    gCallbackQueue.previousCount = gCallbackQueue.currentCount;

                    gDisplayBackup.blendValue = gBlendValue;
                    gDisplayBackup.bldCnt = REG_BLDCNT;
                    gDisplayBackup.bg0Cnt = REG_BG0CNT;
                    gDisplayBackup.bg1Cnt = REG_BG1CNT;
                    gDisplayBackup.bg2Cnt = REG_BG2CNT;
                    gDisplayBackup.bg3Cnt = REG_BG3CNT;
                    gDisplayBackup.sceneFrameCounter = gUnk_03004C20.sceneFrameCounter;

                    gUnk_030034BC = 0;
                    gTextBoxInfo.stage = TEXT_BOX_INFO_STAGE_REQUESTED;
                    gCallbackQueue.next[0] = TextBoxInit;
                    gCallbackQueue.next[1] = VisionSelectWaitForNextFrame;
                    gCallbackQueue.next[2] = NULL + 1;
                    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                    gCallbackQueue.nextCount = 3;
                    return;
                }
            }
        }
        else if ((gHeldKeys & DPAD_RIGHT) && (gVisionSelectInfo.drawStage == 0))
        {
            switch (gVisionSelectInfo.currentVision)
            {
                case 1:
                    visionGoingTo = 2;
                    break;

                case 2:
                    visionGoingTo = 3;
                    break;

                case 3:
                    visionGoingTo = 4;
                    break;

                case 4:
                    visionGoingTo = 5;
                    break;

                case 5:
                    visionGoingTo = 6;
                    break;

                case 6:
                    visionGoingTo = 7;
                    break;

                case 7:
                    visionGoingTo = 8;
                    break;

                case 8:
                    visionGoingTo = 1;
                    break;

                default:
                    visionGoingTo = 1;
                    break;
            }

            if (gFileProgressData->levelInfo[gUnk_03004C20.world - 1][visionGoingTo - 1] != LEVEL_INFO_DREAM_STONES_MASK)
            {
                m4aSongNumStart(SE_CURSOR_MOVE);
                gUnk_03004C20.sceneFrameCounter = 0;
                gVisionSelectInfo.moveDirection = 1;
                gVisionSelectInfo.visionLeftFrom = gVisionSelectInfo.currentVision;
                gVisionSelectInfo.visionGoingTo = visionGoingTo;
                gVisionSelectInfo.drawStage = 0x20;
                SetEntityAnimationInfoState(0, 1);
            }

            gEntityInfo[0].unkC_2 = 0;
        }
        else if ((gHeldKeys & DPAD_LEFT))
        {
            if (gVisionSelectInfo.drawStage == 0)
            {
                switch (gVisionSelectInfo.currentVision)
                {
                    case 1:
                        visionGoingTo = 8;
                        break;
                    
                    case 2:
                        visionGoingTo = 1;
                        break;

                    case 3:
                        visionGoingTo = 2;
                        break;

                    case 4:
                        visionGoingTo = 3;
                        break;

                    case 5:
                        visionGoingTo = 4;
                        break;

                    case 6:
                        visionGoingTo = 5;
                        break;

                    case 7:
                        visionGoingTo = 6;
                        break;

                    case 8:
                        visionGoingTo = 7;
                        break;

                    default:
                        visionGoingTo = 1;
                        break;
                }

                if (gFileProgressData->levelInfo[gUnk_03004C20.world - 1][visionGoingTo - 1] != LEVEL_INFO_DREAM_STONES_MASK)
                {
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    gUnk_03004C20.sceneFrameCounter = 0;
                    gVisionSelectInfo.moveDirection = 2;
                    gVisionSelectInfo.visionLeftFrom = gVisionSelectInfo.currentVision;
                    gVisionSelectInfo.visionGoingTo = visionGoingTo;
                    gVisionSelectInfo.drawStage = 0x20;
                    SetEntityAnimationInfoState(0, 1);
                }

                gEntityInfo[0].unkC_2 = 1;
            }
        }
    }
    else
    {
        if (gVisionSelectInfo.visionLeftFrom == 1 && gVisionSelectInfo.visionGoingTo == 8)
        {
            sp0 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][7]][1];
            temp_r0 = Abs((u8)-gBg2Alpha) + 1;
        }
        else if (gVisionSelectInfo.visionLeftFrom == 8 && gVisionSelectInfo.visionGoingTo == 1)
        {
            sp0 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][7]][1];
            temp_r0 = Abs((u8)-gBg2Alpha - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][1]);
        }
        else
        {
            sp0 = Abs(gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionGoingTo - 1]][1] - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][1]);
            temp_r0 = Abs((u8)-gBg2Alpha - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][1]);
        }

        temp_r1 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionGoingTo - 1]][0] - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][0];
        if ((temp_r1 != 0) && (temp_r0 != 0))
        {
            gVisionSelectInfo.unk2 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][0] + ((temp_r1 * temp_r0) / sp0);
        }

        if (gVisionSelectInfo.moveDirection & 2)
        {
            gBg2Alpha -= 1;
        }
        else
        {
            gBg2Alpha += 1;
        }

        if ((sp0 - temp_r0) == 0xA)
        {
            gVisionSelectInfo.drawStage = 0x30;
        }

        if ((u8)-gBg2Alpha == gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionGoingTo - 1]][1])
        {
            gVisionSelectInfo.moveDirection = 0;
            gVisionSelectInfo.currentVision = gVisionSelectInfo.visionGoingTo;
            SetEntityAnimationInfoState(0, 0);
        }
    }

    gBgInfo[1].hOfs = gBg2Alpha;
}

// 45F68
void VisionSelectUpdateRotationAndEntities(void)
{
    s16 pd;
    s16 pc;
    s16 pa;
    s16 pb;
    u32 i;
    u8 alpha;

    gEntityInfo[0].affineEnable = 1;
    gEntityInfo[0].affineHFlip_matrixNum = 0;

    pa = MultiplyQ8(COS(0), ReciprocalQ8(0xA0));
    pb = MultiplyQ8(SIN(0), ReciprocalQ8(0));
    pc = MultiplyQ8(-SIN(0), ReciprocalQ8(0));
    pd = MultiplyQ8(COS(0), ReciprocalQ8(0xA0));

    if (gEntityInfo[0].unkC_2 == 0)
    {
        gOamAffineBuffer->pa = pa;
    }
    else
    {
        gOamAffineBuffer->pa = -pa;
    }
    gOamAffineBuffer->pb = pb;
    gOamAffineBuffer->pc = pc;
    gOamAffineBuffer->pd = pd;

    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));

    gBg2X = (0x7800 - (gBg2PA * 0x78)) - (gBg2PB * 0x78);
    gBg2Y = (0x7800 - (gBg2PC * 0x78)) - (gBg2PD * 0x78);

    gEntityInfo[0].xPosScreen = ((COS(gVisionSelectInfo.alpha) * gVisionSelectInfo.unk2) >> 8) + 0x78;
    gEntityInfo[0].yPosScreen = (((SIN(gVisionSelectInfo.alpha) * gVisionSelectInfo.unk2) >> 8) / 3) + 0x6E;
    gEntityInfo[0].priority = 1;

    for (i = gVisionSelectInfo.unk0_1 + 0xD; i < gUnk_03005428; i++)
    {
        alpha = gBg2Alpha + 0x40 + gEntityInfo[i].yPosBg2;
        gEntityInfo[i].xPosScreen = ((COS(alpha) * gEntityInfo[i].xPosBg2) >> 8) + 0x78;
        gEntityInfo[i].yPosScreen = (((SIN(alpha) * gEntityInfo[i].xPosBg2) >> 8) / 3) + 0x66;
    }

    sub_08046A64(gUnk_03005428 - (gVisionSelectInfo.unk0_1 + 0xD));

    for (i = gVisionSelectInfo.unk0_1 + 0xD; i < gUnk_03005428; i++)
    {
        if ((gEntityInfo[i].id <= 0x50) || (gEntityInfo[i].id >= 0x54))
        {
            gEntityInfo[i].visible = 0;
        }
        else if ((gVisionSelectInfo.unk0_0 != 0) && (gEntityInfo[i].id == 0x53))
        {
            gEntityInfo[i].visible = 0;
        }
        else
        {
            gEntityInfo[i].visible = 1;
            gEntityInfo[i].yPosScreen -= gEntityInfo[i].unk8.split.unk8;
        }
    }

    gEntityInfo[0].yPosScreen -= 0xA;
}

// 46288
void VisionSelectDrawVisionInfo(void)
{
    u32 row;
    u8 nbrCollectedStones;
    u16 *bg0TilemapBuf;

    bg0TilemapBuf = &gBgTilemapBufs[0][0];

    if (gVisionSelectInfo.drawStage == 0)
    {
        return;
    }

    if (gVisionSelectInfo.drawStageTimer != 0)
    {
        gVisionSelectInfo.drawStageTimer -= 1;
    }

    switch (gVisionSelectInfo.drawStage & 0xF0)
    {
        case 0x30:
            switch (gVisionSelectInfo.drawStage & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x2C0], &bg0TilemapBuf[0x243], 0x24);
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x2E0], &bg0TilemapBuf[0x263], 0x24);
                    gVisionSelectInfo.drawStageTimer = 5;
                    gVisionSelectInfo.drawStage += 1;
                    break;

                case 1:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x300], &bg0TilemapBuf[0x243], 0x24);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x320], &bg0TilemapBuf[0x263], 0x24);
                        gVisionSelectInfo.drawStageTimer = 5;
                        gVisionSelectInfo.drawStage += 1;
                    }
                    break;

                case 2:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        gVisionSelectInfo.drawStage = 0x10;
                    }
                    break;
            }
            break;

        case 0x20:
            switch (gVisionSelectInfo.drawStage & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x300], &bg0TilemapBuf[0x243], 0x24);
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x320], &bg0TilemapBuf[0x263], 0x24)
                    gVisionSelectInfo.drawStageTimer = 5;
                    gVisionSelectInfo.drawStage += 1;
                    break;

                case 1:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x2C0], &bg0TilemapBuf[0x243], 0x24);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x2E0], &bg0TilemapBuf[0x263], 0x24);
                        gVisionSelectInfo.drawStageTimer = 5;
                        gVisionSelectInfo.drawStage += 1;
                    }
                    break;

                case 2:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x280], &bg0TilemapBuf[0x243], 0x24);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x2A0], &bg0TilemapBuf[0x263], 0x24);
                        gVisionSelectInfo.drawStage = 0;
                    }
                    break;
            }
            break;

        case 0x10:
            switch (gVisionSelectInfo.drawStage & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x340], &bg0TilemapBuf[0x243], 0x24);
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x360], &bg0TilemapBuf[0x263], 0x24);
                    if (gVisionSelectInfo.currentVision == 8)
                    {
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x38B], &bg0TilemapBuf[0x248], 0x10);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x3AB], &bg0TilemapBuf[0x268], 0x10);
                    }
                    else
                    {
                        nbrCollectedStones = gFileProgressData->levelInfo[gUnk_03004C20.world - 1][gVisionSelectInfo.currentVision - 1] & LEVEL_INFO_DREAM_STONES_MASK;
                        if (nbrCollectedStones == LEVEL_INFO_DREAM_STONES_MASK)
                        {
                            nbrCollectedStones = 0;
                        }
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x385], &bg0TilemapBuf[0x244], 0xC);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x3A5], &bg0TilemapBuf[0x264], 0xC);

                        for (row = 0; row < 2; row++)
                        {
                            // TODO: ugly pointer arithmetic required to match, likely used macros
                            bg0TilemapBuf[0x24A + row * 0x20] = *(bg0TilemapBuf + 0x13 + gUnk_03004C20.world + (0x16 + row) * 0x20);
                            bg0TilemapBuf[0x24B + row * 0x20] = bg0TilemapBuf[0x2DE + row * 0x20];
                            bg0TilemapBuf[0x24C + row * 0x20] = *(bg0TilemapBuf + 0x13 + gVisionSelectInfo.currentVision + (0x16 + row) * 0x20);
                            bg0TilemapBuf[0x24D + row * 0x20] = bg0TilemapBuf[0x2DF + row * 0x20];

                            if ((gVisionSelectInfo.currentVision == 0x4) || (gVisionSelectInfo.currentVision == 0x6))
                            {
                                if ((nbrCollectedStones / 100) != 0)
                                {
                                    bg0TilemapBuf[0x24E + row * 0x20] = *(bg0TilemapBuf + 0x13 + (nbrCollectedStones / 100) + (0x16 + row) * 0x20);
                                    bg0TilemapBuf[0x24F + row * 0x20] = *(bg0TilemapBuf + 0x13 + ((nbrCollectedStones / 10) % 10) + (0x16 + row) * 0x20);
                                }
                                else if (((nbrCollectedStones / 10) % 10) != 0)
                                {
                                    bg0TilemapBuf[0x24F + row * 0x20] = *(bg0TilemapBuf + 0x13 + ((nbrCollectedStones / 10) % 10) + (0x16 + row) * 0x20);
                                }

                                bg0TilemapBuf[0x250 + row * 0x20] = *(bg0TilemapBuf + 0x13 + (nbrCollectedStones % 10) + (0x16 + row) * 0x20);
                                bg0TilemapBuf[0x251 + row * 0x20] = bg0TilemapBuf[0x382 + row * 0x20];
                                bg0TilemapBuf[0x252 + row * 0x20] = bg0TilemapBuf[0x383 + row * 0x20];
                                bg0TilemapBuf[0x253 + row * 0x20] = bg0TilemapBuf[0x384 + row * 0x20];
                            }
                            else
                            {
                                if (((nbrCollectedStones / 10) % 10) != 0)
                                {
                                    bg0TilemapBuf[0x24F + row * 0x20] = *(bg0TilemapBuf + 0x13 + ((nbrCollectedStones / 10) % 10) + (0x16 + row) * 0x20);
                                }

                                bg0TilemapBuf[0x250 + row * 0x20] = *(bg0TilemapBuf + 0x13 + (nbrCollectedStones % 10) + (0x16 + row) * 0x20);
                                bg0TilemapBuf[0x251 + row * 0x20] = bg0TilemapBuf[0x380 + row * 0x20];
                                bg0TilemapBuf[0x252 + row * 0x20] = bg0TilemapBuf[0x381 + row * 0x20];
                            }
                        }
                    }

                    gVisionSelectInfo.drawStageTimer = 4;
                    gVisionSelectInfo.drawStage += 1;
                    break;

                case 1:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        gVisionSelectInfo.drawStage = 0;
                    }
                    break;
            }
            break;
    }
}

// 467F4
void VisionSelectDrawVisionIcons(void)
{
    u8 state;
    u8 level;

    for (level = 0; level < 8; level++)
    {
        if (gFileProgressData->levelInfo[gUnk_03004C20.world - 1][level] == LEVEL_INFO_DREAM_STONES_MASK)
        {
            // If the level has not been unlocked, don't draw it
            state = 0;
        }
        else
        {
            if (level == 7)
            {
                // Draw boss stage icon
                state = 5;
            }
            else if ((level == 3) || (level == 5))
            {
                // Draw action stage icon
                state = 3;
            }
            else
            {
                // Draw puzzle stage icon
                state = 1;
            }
            if (gFileProgressData->levelInfo[gUnk_03004C20.world - 1][level] & LEVEL_INFO_BEATEN_FLAG)
            {
                // Set icon as beaten
                state += 1;
                if ((level == 7) && (gUnk_03004C20.world == 5) && !(gFileProgressData->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG))
                {
                    state -= 1;
                }
            }
        }

        SetEntityAnimationInfoState(gUnk_0811762C[gUnk_03004C20.world - 1][level] + 0xD, state);
    }
}

// 468B0
void VisionSelectUpdateUnlockVisionSequence(void)
{
    if (gVisionSelectInfo.unlockedVision == 0)
    {
        return;
    }

    if (gVisionSelectInfo.visionUnlockTimer != 0)
    {
        gVisionSelectInfo.visionUnlockTimer -= 1;
    }

    if (gBg2Alpha == (u8)-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.unlockedVision - 1]][1])
    {
        gHeldKeys = L_BUTTON | R_BUTTON;
        if (gVisionSelectInfo.visionUnlockTimer == 0)
        {
            gVisionSelectInfo.visionUnlockTimer = 0x80;
        }

        if (gVisionSelectInfo.visionUnlockTimer == 0x40)
        {
            m4aSongNumStart(SE_LEVEL_UNLOCKED);
            gFileProgressData->levelInfo[gUnk_03004C20.world - 1][gVisionSelectInfo.unlockedVision - 1] &= LEVEL_INFO_BEATEN_FLAG;
            VisionSelectDrawVisionIcons();
        }

        if (gVisionSelectInfo.visionUnlockTimer == 1)
        {
            gVisionSelectInfo.unlockedVision = VisionSelectGetUnlockedVision();
        }
    }
    else
    {
        if ((s8)(-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.unlockedVision - 1]][1] - gBg2Alpha) < 0)
        {
            gHeldKeys = L_BUTTON;
        }
        else if ((s8)(-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.unlockedVision - 1]][1] - gBg2Alpha) > 0)
        {
            gHeldKeys = R_BUTTON;
        }
    }
}

// 469FC
u8 VisionSelectGetUnlockedVision(void)
{
    u8 level;

    for (level = 0; level < 8; level++)
    {
        if ((((gUnk_0811765C[gUnk_03004C20.world][gVisionSelectInfo.unk7_4] >> level) & 1) != 0) && (gFileProgressData->levelInfo[gUnk_03004C20.world - 1][level] == LEVEL_INFO_DREAM_STONES_MASK))
        {
            return level + 1;
        }
    }
    return 0;
}

// 46A64
void sub_08046A64(u8 arg0)
{
    // Seems to switch around entities
    struct EntityInfo *var_sl;
    u8 var_r4;
    u8 var_r1;
    u8 var_r3;
    struct EntityInfo subroutine_arg0;

    var_sl = &gEntityInfo[0xD + gVisionSelectInfo.unk0_1];

    var_r4 = 1;
    while (var_r4 < (arg0 / 9))
    {
        var_r4 = (var_r4 * 3) + 1;
    }

    while (var_r4 != 0)
    {
        for (var_r1 = var_r4; var_r1 < arg0; var_r1++)
        {
            for (var_r3 = var_r1; var_r3 >= var_r4 && ((((*(var_sl + var_r3 - var_r4)).yPosScreen < (*(var_sl + var_r3)).yPosScreen))); var_r3 -= var_r4)
            {
                subroutine_arg0 = *(var_sl + var_r3);
                *(var_sl + var_r3) = *(var_sl + var_r3 - var_r4);
                *(var_sl + var_r3 - var_r4) = subroutine_arg0;
            }
        }

        var_r4 /= 3;
    }
}
