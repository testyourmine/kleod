#include "global.h"
#include "pause_menu.h"
#include "anim.h"
#include "code_08003D58.h"
#include "decompress.h"
#include "heap.h"
#include "main.h"
#include "transitions.h"
#include "wait_for_next_frame.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern const u8 gUnk_081166F8[4][4];

extern u32 gUnk_082EAF8C;
extern u32 gUnk_082EB488;
extern u32 gUnk_082EB5B8;
extern u32 gUnk_082EBB20;
extern u32 gUnk_082EBC68;
extern u32 gUnk_082EC1A4;
extern u32 gUnk_082EC2E4;
extern u32 gUnk_082EC7C8;
extern u32 gUnk_082EC8F4;
extern u32 gUnk_082ECD74;

// 39D8C
void PauseMenuScreenInit(void)
{
    // Pause menu init
    s32 srcCol;
    s32 i;
    s32 dstCol;
    s32 var_sl;

    if (gUnk_030034BC == 0)
    {
        var_sl = gUnk_03000800;
    }
    else
    {
        var_sl = 0;
    }

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    if (gUnk_03003410.unk4 != 0)
    {
        if (gUnk_03004C20.level == 8)
        {
            gPauseMenuType = PAUSE_MENU_TYPE_BOSS;
        }
        else if (gUnk_03004C20.level == 0)
        {
            gPauseMenuType = PAUSE_MENU_TYPE_LEVEL_SELECT;
        }
        else if (gUnk_03004C20.world == 6)
        {
            gPauseMenuType = PAUSE_MENU_TYPE_EX_LEVEL;
        }
        else
        {
            gPauseMenuType = PAUSE_MENU_TYPE_NORMAL_LEVEL;
        }
    }

    if (gPauseMenuType == PAUSE_MENU_TYPE_BOSS)
    {
        gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EAF8C & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082EB488 & 0x7FFFFFFF, 0);
        Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EAF8C);
        Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082EB488);
    }
    else if (gPauseMenuType == PAUSE_MENU_TYPE_NORMAL_LEVEL)
    {
        gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EB5B8 & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082EBB20 & 0x7FFFFFFF, 0);
        Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EB5B8);
        Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082EBB20);
    }
    else if (gPauseMenuType == PAUSE_MENU_TYPE_EX_LEVEL)
    {
        gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EBC68 & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082EC1A4 & 0x7FFFFFFF, 0);
        Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EBC68);
        Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082EC1A4);
    }
    else
    {
        // PAUSE_MENU_TYPE_LEVEL_SELECT
        gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EC2E4 & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082EC7C8 & 0x7FFFFFFF, 0);
        Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EC2E4);
        Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082EC7C8);
    }

    REG_DISPSTAT &= 0xFF; // Clear VCount setting

    for (srcCol = 0, dstCol = 0; srcCol <= 0x21B; dstCol++, srcCol++)
    {
        if (((srcCol % 30) == 0) && (srcCol != 0))
        {
            dstCol += 2;
        }
        gBgTilemapBufs[gUnk_030034BC][dstCol] = gBgDataPtrs.pBufBg3Tilemap[srcCol + 2] + var_sl;
    }

    DmaCopy16(3, &gBgTilemapBufs[gUnk_030034BC], gBgInfo[gUnk_030034BC].pTilemap, 0x800);

    REG_DISPCNT &= ~DISPCNT_WIN1_ON;

    if (gUnk_03003410.unk4 != 0)
    {
        gDisplayBackup.blendValue = gBlendValue;
        gDisplayBackup.bldCnt = REG_BLDCNT;
        gDisplayBackup.bg0Cnt = REG_BG0CNT;
        gDisplayBackup.bg1Cnt = REG_BG1CNT;
        gDisplayBackup.bg2Cnt = REG_BG2CNT;
        gDisplayBackup.bg3Cnt = REG_BG3CNT;
        gDisplayBackup.sceneFrameCounter = gUnk_03004C20.sceneFrameCounter;

        for (i = 0; i < gEntitySlotCount; i++)
        {
            gEntityInfo[i].priority += 1;
        }
        gBgInfo[gUnk_030034BC].hOfs = 0;
    }

    gBlendValue = 9;
    gMenuInfo->cursorIndex = 0;
    gCallbackQueue.next[0] = InputHandler_Normal;
    gCallbackQueue.next[1] = PauseMenuScreenHandler;
    gCallbackQueue.next[3] = NULL + 1;
    if (gUnk_03004C20.level == 8)
    {
        gCallbackQueue.next[2] = BossWaitForNextFrame;
    }
    else if (gUnk_03004C20.level == 0)
    {
        gCallbackQueue.next[2] = VisionSelectWaitForNextFrame;
    }
    else
    {
        gCallbackQueue.next[2] = CommonWaitForNextFrame;
    }
    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    gCallbackQueue.nextCount = 4;

    if (gPauseMenuType == PAUSE_MENU_TYPE_LEVEL_SELECT)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg3Tiles + 4, BG_VRAM + (var_sl * 0x20), 0xB60);
    }
    else if (gPauseMenuType == PAUSE_MENU_TYPE_EX_LEVEL)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg3Tiles + 4, gBgInfo[gUnk_030034BC].pTiles + (var_sl * 0x20), 0xC60);
    }
    else
    {
        // PAUSE_MENU_TYPE_NORMAL_LEVEL or PAUSE_MENU_TYPE_BOSS
        DmaCopy16(3, gBgDataPtrs.pBufBg3Tiles + 4, gBgInfo[gUnk_030034BC].pTiles + (var_sl * 0x20), 0xCE0);
    }

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
    m4aSongNumStart(SE_PAUSE_MENU);

    if (gUnk_03004C20.level == 8)
    {
        BossWaitForNextFrame();
    }
    else if (gUnk_03004C20.level == 0)
    {
        VisionSelectWaitForNextFrame();
    }
    else
    {
        CommonWaitForNextFrame();
    }

    if (gUnk_03003410.unk4 != 0)
    {
        if (gUnk_030034BC == 0)
        {
            REG_BG0CNT &= ~BGCNT_PRIORITY_MASK; // set priority to 0
            REG_BG0CNT += 0;
            REG_BG1CNT += 1; // increment priority
            REG_BG2CNT += 1; // increment priority
            REG_BG3CNT += 1; // increment priority
            REG_BLDCNT = BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
        }
        else
        {
            REG_BG1CNT &= ~BGCNT_PRIORITY_MASK; // set priority to 0
            REG_BG1CNT += 0;
            REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
        }
    }
}

// 3A22C
void PauseMenuScreenRestoreGfx(void)
{
    // Pause menu, handle drawing stuff after selecting option
    s32 i;

    for (i = 0; i < gEntitySlotCount; i++)
    {
        gEntityInfo[i].priority -= 1;
    }

    EntityCommonTransferToOamBuffer();

    VBlankIntrWait();
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    thunk_HeapFree(gBgDataPtrs.pBufBg3Tilemap);
    thunk_HeapFree(gBgDataPtrs.pBufBg3Tiles);

    if (gUnk_030034BC == 0)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tiles, gBgInfo[0].pTiles, gBgInfo[0].tileSize * gBgInfo[0].nbrTiles);
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap, &gBgTilemapBufs[0], 0x480);
    }
    else
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg1Tiles, gBgInfo[1].pTiles, gBgInfo[1].tileSize * gBgInfo[1].nbrTiles);
        DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap, &gBgTilemapBufs[1], 0x480);
    }

    gBlendValue = gDisplayBackup.blendValue;
    REG_BLDCNT = gDisplayBackup.bldCnt;
    REG_BG0CNT = gDisplayBackup.bg0Cnt;
    REG_BG1CNT = gDisplayBackup.bg1Cnt;
    REG_BG2CNT = gDisplayBackup.bg2Cnt;
    REG_BG3CNT = gDisplayBackup.bg3Cnt;
    gUnk_03004C20.sceneFrameCounter = gDisplayBackup.sceneFrameCounter;

    if ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3)))
    {
        REG_WIN1H = WIN_RANGE(DISPLAY_HEIGHT, DISPLAY_WIDTH);
        REG_WIN1V = WIN_RANGE(0, 0x10);
        REG_WININ = WININ_WIN0_BG0 | WININ_WIN0_CLR | WININ_WIN1_BG0 | WININ_WIN1_CLR;
        REG_WINOUT = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;
        REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
        DrawLevelTimer();
    }

    DmaCopy16(3, &gBgTilemapBufs[gUnk_030034BC], gBgInfo[gUnk_030034BC].pTilemap, 0x800);

    if (gUnk_03004C20.levelHasTimer == 1)
    {
        DrawLevelTimer();
    }

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
}

enum PauseMenuOption {
    PAUSE_MENU_OPTION_NONE,
    PAUSE_MENU_OPTION_CONTINUE_GAME,
    PAUSE_MENU_OPTION_RETRY,
    PAUSE_MENU_OPTION_SELECT_VISION,
    PAUSE_MENU_OPTION_BUTTON_CONFIGURATION,
    PAUSE_MENU_OPTION_WORLD_MAP,
    PAUSE_MENU_OPTION_RETURN_TO_TITLE_SCREEN
};

// 3A410
void PauseMenuScreenHandler(void)
{
    // Pause menu handler
    u8 option;
    u32 i;
    u8 col;
    u8 row;

    option = (gNewKeys & (START_BUTTON | B_BUTTON)) != 0;
    if (gNewKeys & A_BUTTON)
    {
        option = gMenuInfo->cursorIndex + 1;
    }

    if (gNewKeys & (DPAD_DOWN | DPAD_UP))
    {
        for (row = 0; row < 2; row++)
        {
            DmaFill16(3, 0, &gBgTilemapBufs[gUnk_030034BC][((row + (gMenuInfo->cursorIndex * 3)) * 0x20) + 0xA5], 0x4);
            DmaFill16(3, 0, &gBgTilemapBufs[gUnk_030034BC][((row + (gMenuInfo->cursorIndex * 3)) * 0x20) + 0xB7], 0x4);
        }

        if ((gPauseMenuType == PAUSE_MENU_TYPE_NORMAL_LEVEL) || (gPauseMenuType == PAUSE_MENU_TYPE_EX_LEVEL))
        {
            if (gNewKeys & DPAD_DOWN)
            {
                m4aSongNumStart(SE_CURSOR_MOVE);
                gMenuInfo->cursorIndex += 1;
                if (gMenuInfo->cursorIndex > 3)
                {
                    gMenuInfo->cursorIndex = 0;
                }
            }

            if (gNewKeys & DPAD_UP)
            {
                m4aSongNumStart(SE_CURSOR_MOVE);
                gMenuInfo->cursorIndex -= 1;
                if (gMenuInfo->cursorIndex & 0x80)
                {
                    gMenuInfo->cursorIndex = 3;
                }
            }
        }
        else
        {
            // PAUSE_MENU_TYPE_LEVEL_SELECT or PAUSE_MENU_TYPE_BOSS
            if (gNewKeys & DPAD_DOWN)
            {
                m4aSongNumStart(SE_CURSOR_MOVE);
                gMenuInfo->cursorIndex += 1;
                if (gMenuInfo->cursorIndex > 2)
                {
                    gMenuInfo->cursorIndex = 0;
                }
            }

            if (gNewKeys & DPAD_UP)
            {
                m4aSongNumStart(SE_CURSOR_MOVE);
                gMenuInfo->cursorIndex -= 1;
                if (gMenuInfo->cursorIndex & 0x80)
                {
                    gMenuInfo->cursorIndex = 2;
                }
            }
        }

        for (row = 0; row < 2; row++)
        {
            for (col = 0; col < 2; col++)
            {
                if (gUnk_030034BC == 0)
                {
                    gBgTilemapBufs[gUnk_030034BC][((row + (gMenuInfo->cursorIndex * 3)) * 0x20) + 0xA5 + col] = gBgDataPtrs.pBufBg3Tilemap[(row * 0x1E) + 0x9D + col] + gUnk_03000800;
                    gBgTilemapBufs[gUnk_030034BC][((row + (gMenuInfo->cursorIndex * 3)) * 0x20) + 0xB7 + col] = gBgDataPtrs.pBufBg3Tilemap[(row * 0x1E) + 0xAF + col] + gUnk_03000800;
                }
                else
                {
                    gBgTilemapBufs[gUnk_030034BC][((row + (gMenuInfo->cursorIndex * 3)) * 0x20) + 0xA5 + col] = gBgDataPtrs.pBufBg3Tilemap[(row * 0x1E) + 0x9D + col];
                    gBgTilemapBufs[gUnk_030034BC][((row + (gMenuInfo->cursorIndex * 3)) * 0x20) + 0xB7 + col] = gBgDataPtrs.pBufBg3Tilemap[(row * 0x1E) + 0xAF + col];
                }
            }
        }
    }

    if (option >= 1)
    {
        option = gUnk_081166F8[gPauseMenuType][option - 1];
    }

    switch (option)
    {
        case PAUSE_MENU_OPTION_CONTINUE_GAME:
            gCallbackQueue.next[0] = InputHandler_Normal; // Redundant, immediately overwritten by loop
            for (i = 0; i < 10; i++)
            {
                gCallbackQueue.next[i] = gCallbackQueue.previous[i];
            }
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = gCallbackQueue.previousCount;

            PauseMenuScreenRestoreGfx();
            m4aSoundVSyncOn();
            m4aMPlayAllContinue();
            break;

        case PAUSE_MENU_OPTION_RETRY:
            PauseMenuScreenRestoreGfx();
            gCallbackQueue.current[1] = TransitionFromDeathToLevel_FadeOut;
            gUnk_03005220.collected1Ups = gSceneSaveData->collected1Ups;
            gUnk_03005220.lives = gSceneSaveData->lives;
            gUnk_03005220.hearts = gSceneSaveData->hearts;
            REG_BLDCNT = 0;
            gBlendValue = 0;
            break;

        case PAUSE_MENU_OPTION_SELECT_VISION:
            gSceneSaveData->lives = gUnk_03005220.lives = gSceneSaveData->prevLives;
            PauseMenuScreenRestoreGfx();
            gBlendValue = 0;
            if (gUnk_03004C20.world == 6 && gUnk_03004C20.level == 8)
            {
                gUnk_03004C20.world = 5;
            }
            gVisionSelectInfo.currentVision = gUnk_03004C20.level;
            gUnk_03004C20.level = 0;
            gCallbackQueue.current[1] = TransitionFromVisionSelectToLevel_FadeOut;
            break;

        case PAUSE_MENU_OPTION_BUTTON_CONFIGURATION:
            gCallbackQueue.current[1] = ButtonConfigurationScreenInit;
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tilemap);
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tiles);
            break;

        case PAUSE_MENU_OPTION_WORLD_MAP:
            if (gUnk_03004C20.level != 0)
            {
                gSceneSaveData->lives = gUnk_03005220.lives = gSceneSaveData->prevLives;
            }
            PauseMenuScreenRestoreGfx();
            REG_BLDCNT = 0;
            gBlendValue = 0;
            sub_080008DC();
            gCallbackQueue.current[1] = TransitionFromVisionSelectToWorldMap_FadeOut;
            break;

        case PAUSE_MENU_OPTION_RETURN_TO_TITLE_SCREEN:
            gBlendValue = 0;
            gUnk_03004C20.level = 9;
            gTitleScreenStage = 0;
            EntityResetOamBuffer();
            gCallbackQueue.current[1] = TransitionFromVisionSelectToBootScreen_FadeOut;
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tilemap);
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tiles);
            break;
    }
}

// 3A8B8
void ButtonConfigurationScreenInit(void)
{
    // Button Configuration menu init
    s32 srcCol;
    s32 dstCol;
    s32 var_r7;

    if (gUnk_030034BC == 0)
    {
        var_r7 = gUnk_03000800;
    }
    else
    {
        var_r7 = 0;
    }

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EC8F4 & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082ECD74 & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EC8F4);
    Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082ECD74);

    for (srcCol = 0, dstCol = 0; srcCol < 0x21C; dstCol++, srcCol++)
    {
        if (((srcCol % 30) == 0) && (srcCol != 0))
        {
            dstCol += 2;
        }
        gBgTilemapBufs[gUnk_030034BC][dstCol] = gBgDataPtrs.pBufBg3Tilemap[srcCol + 2] + var_r7;
    }

    REG_WIN1H = WIN_RANGE(0, DISPLAY_WIDTH);
    REG_WIN1V = WIN_RANGE(30, DISPLAY_HEIGHT - 0x10);

    if (gUnk_030034BC == 0)
    {
        REG_WININ = WININ_WIN0_BG0 | WININ_WIN0_CLR | WININ_WIN1_BG1 | WININ_WIN1_BG2 | WININ_WIN1_OBJ | WININ_WIN1_CLR;
    }
    else
    {
        REG_WININ = WININ_WIN0_BG0 | WININ_WIN0_CLR | WININ_WIN1_BG0 | WININ_WIN1_BG2 | WININ_WIN1_OBJ | WININ_WIN1_CLR;
    }

    if (gUnk_03004C20.level == 8)
    {
        gCallbackQueue.next[2] = BossWaitForNextFrame;
    }
    else
    {
        gCallbackQueue.next[2] = CommonWaitForNextFrame;
    }
    gCallbackQueue.next[0] = InputHandler_Normal;
    gCallbackQueue.next[1] = ButtonConfigurationScreenHandler;
    gCallbackQueue.next[3] = NULL + 1;
    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    gCallbackQueue.nextCount = 4;

    DmaCopy16(3, gBgDataPtrs.pBufBg3Tiles + 4, gBgInfo[gUnk_030034BC].pTiles + (var_r7 << 5), 0xB80);

    REG_DISPCNT |= DISPCNT_WIN1_ON;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    gUnk_03004C20.sceneFrameCounter = 0;
}

// 3AAA0
void ButtonConfigurationScreenHandler(void)
{
    // Button Configuration menu handler
    gUnk_03004C20.sceneFrameCounter += 5;
    if (gUnk_03004C20.sceneFrameCounter > 96)
    {
        if (gUnk_03004C20.sceneFrameCounter < 200)
        {
            // Keeps menu from going back
            gUnk_03004C20.sceneFrameCounter = 96;

            if (gNewKeys & DPAD_RIGHT)
            {
                gSceneSaveData->shootButtonConfig = 1;
                m4aSongNumStart(SE_CURSOR_MOVE);
                gUnk_03004C20.sceneFrameCounter = 0;
            }
            else if (gNewKeys & DPAD_LEFT)
            {
                gSceneSaveData->shootButtonConfig = 2;
                m4aSongNumStart(SE_CURSOR_MOVE);
                gUnk_03004C20.sceneFrameCounter = 0;
            }

            if (gNewKeys & (B_BUTTON | A_BUTTON))
            {
                if (gNewKeys & A_BUTTON)
                {
                    m4aSongNumStart(SE_CURSOR_CONFIRM);
                }
                else
                {
                    m4aSongNumStart(SE_EXIT_MENU);
                }

                // No longer enter this conditional, so essentially exits menu
                gUnk_03004C20.sceneFrameCounter = 200;

                // Subtraction and exclusive or seem to have the same effect here
                if ((gNewKeys & A_BUTTON) && (gSceneSaveData->shootButtonConfig == gSceneSaveData->jumpButtonConfig))
                {
                    gSceneSaveData->jumpButtonConfig = 3 ^ gSceneSaveData->jumpButtonConfig; // Effectively changes 1 to 2, or 2 to 1
                }
                else
                {
                    gSceneSaveData->shootButtonConfig = 3 - gSceneSaveData->jumpButtonConfig; // Effectively changes 1 to 2, or 2 to 1
                }
            }
        }
        else if (gUnk_03004C20.sceneFrameCounter > 350)
        {
            gUnk_03003410.unk4 = 0;

            if (gUnk_03004C20.level == 8)
            {
                gCallbackQueue.next[2] = BossWaitForNextFrame;
            }
            else
            {
                gCallbackQueue.next[2] = CommonWaitForNextFrame;
            }
            gCallbackQueue.next[0] = InputHandler_Normal;
            gCallbackQueue.next[1] = PauseMenuScreenInit;
            gCallbackQueue.next[3] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 4;

            thunk_HeapFree(gBgDataPtrs.pBufBg3Tilemap);
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tiles);
        }
    }

    if (gUnk_03004C20.sceneFrameCounter < 200)
    {
        if (gSceneSaveData->shootButtonConfig == 1)
        {
            REG_WIN1H = WIN_RANGE(0, (DISPLAY_WIDTH - 0x10) - gUnk_03004C20.sceneFrameCounter);
        }
        else
        {
            REG_WIN1H = WIN_RANGE(gUnk_03004C20.sceneFrameCounter + 0x18, DISPLAY_WIDTH - 0x10);
        }
    }
}
