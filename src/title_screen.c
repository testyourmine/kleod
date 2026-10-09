#include "global.h"
#include "title_screen.h"
#include "code_08003D58.h"
#include "code_08014184.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "transitions.h"
#include "vision.h"
#include "wait_for_next_frame.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern const u8 gUnk_08078F88[0x20];
extern const u8 gUnk_08078FA8[0x20];

extern struct Unk_0300466C gUnk_0807D7B0[];

struct Unk_08116590 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 pad9[0xC - 0x9];
};
extern const struct Unk_08116590 gUnk_08116590[12];

extern const u8 gUnk_0811779C[8];
extern const u16 gUnk_081177A4[8][2];

extern u32 gUnk_082F4934[];
extern u32 gUnk_082F49E4[];
extern u32 gUnk_082F4B10[];
extern u32 gUnk_082F4D3C[];
extern u32 gUnk_082F518C[];
extern u32 gUnk_082F5920[];
extern u32 gUnk_082F5D0C[];
extern u32 gUnk_082F7D64[];

extern u32 gUnk_08366214[];
extern u32 gUnk_08367468[];

// 4886C
void TitleScreenInit(void)
{
    // Init title screen
    u16 i;
    void *heapPtr;

    gSceneSaveData->shootButtonConfig = 2;
    gSceneSaveData->jumpButtonConfig = 1;
    gUnk_03004C20.unkA = 0;
    gUnk_03004C20.isHoverBoardLevel = 0;

    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP;
    gBlendValue = 0x10;
    gMosaicSize = 0;
    sub_08003D58();

    DmaCopy32(3, gOamBuffer, OAM, 0x400);

    gUnk_03004C20.world = 1;
    gUnk_03003410.unk8 = 0;
    EntityInit();

    gObjPalRamPtr = gUnk_030034F4;
    gObjVramPtr = gUnk_030052AC;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    heapPtr = DecompressAlloc(&gUnk_08366214) + 4;

    DmaCopy16Wait(3, &gUnk_08078F88, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, heapPtr, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, heapPtr + 0x800, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, heapPtr + 0x1000, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, heapPtr + 0x1800, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, heapPtr + 0x2000, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, heapPtr + 0x2800, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, heapPtr + 0x3000, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, heapPtr + 0x3800, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    thunk_HeapFree(heapPtr - 4);
    heapPtr = DecompressAlloc(&gUnk_08367468) + 4;

    DmaCopy16Wait(3, &gUnk_08078FA8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, heapPtr, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, heapPtr + 0x100, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, heapPtr + 0x200, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    thunk_HeapFree(heapPtr - 4);
    gUnk_030051DC = gUnk_0807D7B0;

    gEntitySlotCount = 0xD;
    for (i = 0; gUnk_08116590[i].unk0 != 0xFFFF; i++)
    {
        EntityCreate(gEntitySlotCount++, gUnk_08116590[i].unk7, gUnk_08116590[i].unk0, gUnk_08116590[i].unk2, gUnk_08116590[i].unk4, 0, gUnk_08116590[i].unk5, gUnk_08116590[i].unk6, gUnk_08116590[i].unk8);
    }
    gEntitySlotCount += 0xA;

    for (i = 0; i < 0xE; i++)
    {
        gEntityInfo[i].id = 0x1C;
        gEntityInfo[i].visible = 0;
    }

    for (i = 0; i < 8; i++)
    {
        gEntityInfo[i + 0xD].unkF = 0;
        gEntityInfo[i + 0xD].priority = 2;
        gEntityInfo[i + 0xD].affineEnable = 0;
        gEntityInfo[i + 0xD].affineDouble = 0;
        gEntityInfo[i + 0xD].unkC_4 = 0;
        gEntityInfo[i + 0xD].objMode = 0;
    }

    for (i = 0; i < 8; i++)
    {
        gEntityInfo[i + 0xD].visible = 1;
        gEntityInfo[i + 0xD].unkF = 0;
    }

    for (i = 0; i < 6; i++)
    {
        gEntityInfo[i + 0xD].xPosScreen = 0xFFE0;
        gEntityInfo[i + 0xD].affineHFlip_matrixNum = i;
        gOamAffineBuffer[i].pa = 0x60;
        gOamAffineBuffer[i].pb = 0x60;
        gOamAffineBuffer[i].pc = 0xFFA0;
        gOamAffineBuffer[i].pd = 0x100;
        gEntityInfo[i + 0xD].affineEnable = 1;
        gEntityInfo[i + 0xD].affineDouble = 0;
    }

    gEntityInfo[0x13].xPosScreen = 0xC1;
    gEntityInfo[0x14].xPosScreen = 0x101;
    gEntityInfo[0xD].yPosScreen = 0x53;
    gEntityInfo[0xE].yPosScreen = 0x53;
    gEntityInfo[0xF].yPosScreen = 0x53;
    gEntityInfo[0x10].yPosScreen = 0x53;
    gEntityInfo[0x11].yPosScreen = 0x53;
    gEntityInfo[0x12].yPosScreen = 0x53;
    gEntityInfo[0x13].yPosScreen = 0;
    gEntityInfo[0x14].yPosScreen = 0;

    for (i = 8; i < 0xB; i++)
    {
        gEntityInfo[i + 0xD].visible = 0;
        gEntityInfo[i + 0xD].id = 0x1C;
        gEntityInfo[i + 0xD].unkF = 0;
    }

    DecompressDma(&gUnk_082F4934, PLTT, 0x200);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(gUnk_082F49E4[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tilemap = thunk_HeapAlloc(gUnk_082F4B10[0] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, &gUnk_082F49E4);
    Decompress(gBgDataPtrs.pBufBg1Tilemap, &gUnk_082F4B10);
    gBgDataPtrs.pBufBg0Tilemap += 2;
    gBgDataPtrs.pBufBg1Tilemap += 2;

    for (i = 0; i < 0x20; i++)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap + (i * 0x20), &gBgTilemapBufs[1][i * 0x20], 0x40);
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (i * 0x20), &gBgTilemapBufs[0][i * 0x20], 0x40);
    }

    thunk_HeapFree(gBgDataPtrs.pBufBg1Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);

    gBgDataPtrs.pBufBg0Tiles = thunk_HeapAlloc(gUnk_082F4D3C[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tiles = thunk_HeapAlloc(gUnk_082F518C[0] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg0Tiles, &gUnk_082F4D3C);
    Decompress(gBgDataPtrs.pBufBg1Tiles, &gUnk_082F518C);
    gBgDataPtrs.pBufBg0Tiles += 4;
    gBgDataPtrs.pBufBg1Tiles += 4;
    DmaCopy16(3, gBgDataPtrs.pBufBg0Tiles, VRAM, 0x8A0);
    DmaCopy16(3, gBgDataPtrs.pBufBg1Tiles, VRAM + 0x4000, 0x1600);
    thunk_HeapFree(gBgDataPtrs.pBufBg1Tiles - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tiles - 4);

    gBgDataPtrs.pBufBg2Tilemap = thunk_HeapAlloc(gUnk_082F5920[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(gUnk_082F5920[0] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg2Tilemap, &gUnk_082F5920);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, &gUnk_082F5920);
    gBgDataPtrs.pBufBg0Tilemap += 2;
    gBgDataPtrs.pBufBg2Tilemap += 4;

    for (i = 0; i < 0x20; i++)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + i * 0x20, &gBgTilemapBufs[2][i * 0x20], 0x40);
    }

    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg2Tilemap - 4);

    gBgDataPtrs.pBufBg0Tiles = thunk_HeapAlloc(gUnk_082F5D0C[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tiles = thunk_HeapAlloc(gUnk_082F7D64[0] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg0Tiles, &gUnk_082F5D0C);
    Decompress(gBgDataPtrs.pBufBg1Tiles, &gUnk_082F7D64);
    gBgDataPtrs.pBufBg0Tiles += 4;
    gBgDataPtrs.pBufBg1Tiles += 4;
    DmaCopy16(3, gBgDataPtrs.pBufBg0Tiles, VRAM + 0x8000, 0x3940);
    DmaCopy16(3, gBgDataPtrs.pBufBg1Tiles, VRAM + 0xC000, 0x1660);
    thunk_HeapFree(gBgDataPtrs.pBufBg1Tiles - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tiles - 4);

    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_MOSAIC | BGCNT_SCREENBASE(28);
    REG_BG1CNT = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(29);
    REG_BG2CNT = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC | BGCNT_SCREENBASE(30);

    gBgInfo[0].pTilemap = VRAM + 0xE000;
    gBgInfo[1].pTilemap = VRAM + 0xE800;
    gBgInfo[2].pTilemap = VRAM + 0xF000;
    gIntrTable.vBlank = VBlankIntr_TitleScreenAndWorldMap;

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    gBlendValue = 0;
    gSaveFilesStarted = gGlobalSaveData->startedFile[0] | gGlobalSaveData->startedFile[1] | gGlobalSaveData->startedFile[2];

    DmaCopy16Wait(3, &gBgTilemapBufs[0][0], gBgInfo[0].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[1][0], gBgInfo[1].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[2][0], gBgInfo[2].pTilemap, 0x800);

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 4) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 7) & 0x1FF;
    REG_BG1HOFS = (gBgInfo[1].hOfs >> 4) & 0x1FF;
    REG_BG1VOFS = (gBgInfo[1].vOfs >> 7) & 0x1FF;
    REG_BG2HOFS = (gBgInfo[2].hOfs >> 4) & 0x1FF;
    REG_BG2VOFS = (gBgInfo[2].vOfs >> 7) & 0x1FF;

    gUnk_03005220.hearts = 3;
    gEntityInfo[0].id = 0x1C;
    gEntityInfo[0].xPosBg2 = 0xFF;
    gEntityInfo[0].xPosScreen = 0xFF;
    gEntityInfo[0].yPosBg2 = 0xFF;
    gEntityInfo[0].yPosScreen = 0xFF;
    sub_080144C4();

    gBgInfo[0].hOfs = 0;
    gBgInfo[0].vOfs = -0x10;
    gBgInfo[1].hOfs = 0;
    gBgInfo[1].vOfs = 0;
    gBgInfo[2].hOfs = 0;
    gBgInfo[2].vOfs = 0;
    gBg2X = gBg2Y = 0;
    m4aSongNumStart(MUS_TITLE);
}

// 491C0
void TitleScreenLogoAnimationUpdate(void)
{
    // Title screen logo intro
    u8 i;

    if (gUnk_03004C20.sceneFrameCounter < 0x62)
    {
        // Letters coming in from side
        for (i = 0; i < 8; i++)
        {
            if ((gUnk_03004C20.sceneFrameCounter >= gUnk_081177A4[i][0]) && (i < 6))
            {
                gEntityInfo[i + 0xD].xPosScreen += 0x1E;
                if (((gEntityInfo[i + 0xD].xPosScreen + 0x20) & 0xFFFF) >= (gUnk_0811779C[i] + 0x22))
                {
                    gEntityInfo[i + 0xD].xPosScreen = gUnk_0811779C[i] + 2;
                    gOamAffineBuffer[i].pc = 0;
                    gOamAffineBuffer[i].pb = 0;
                    if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
                    {
                        if (gOamAffineBuffer[i].pa < 0x100)
                        {
                            gOamAffineBuffer[i].pa = gOamAffineBuffer[i].pa + 0x40;
                        }
                        else
                        {
                            if (i == 1)
                            {
                                gEntityInfo[0xE].priority = 1;
                            }
                            gOamAffineBuffer[i].pa = 0x100;
                        }
                    }
                }
            }
        }
    }
    else
    {
        // Letters get shadow and put into final placement
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
        
        for (i = 0; i < 6; i++)
        {
            if ((gEntityInfo[0xF].xPosScreen >= gUnk_0811779C[2]) && (gUnk_03004C20.sceneFrameCounter >= gUnk_081177A4[i][1]))
            {
                if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
                {
                    gEntityInfo[i + 0xD].xPosScreen -= 1;
                    gEntityInfo[i + 0xD].yPosScreen -= 1;
                }

                gOamAffineBuffer[i].pa -= 0x10;
                gOamAffineBuffer[i].pd -= 0x10;
                if ((gEntityInfo[i + 0xD].xPosScreen <= gUnk_0811779C[i]))
                {
                    gEntityInfo[i + 0xD].xPosScreen = gUnk_0811779C[i];
                    gOamAffineBuffer[i].pa = 0x100;
                    gOamAffineBuffer[i].pd = 0x100;
                    if (i < 2)
                    {
                        gEntityInfo[i + 0xD].yPosScreen = DISPLAY_HEIGHT_CENTER;
                    }
                    else if (i < 6)
                    {
                        gEntityInfo[i + 0xD].yPosScreen = DISPLAY_HEIGHT_CENTER;
                    }
                }
            }
        }
    }
}

// 49348
void TitleScreenStageSetup(u8 titleScreenStage)
{
    u8 i;

    gUnk_03004C20.sceneFrameCounter = 0;

    switch (titleScreenStage)
    {
        // Title intro
        case TITLE_SCREEN_STAGE_INTRO_LOGO_ANIMATION:
            gBlendValue = 0;
            break;

        // Press start
        case TITLE_SCREEN_STAGE_PRESS_START:
            gMenuInfo->cursorIndex = 0;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;

            for (i = 0; i < 8; i++)
            {
                gEntityInfo[i + 0xD].visible = 1;
                gEntityInfo[i + 0xD].id = 0x54;
                gEntityInfo[i + 0xD].xPosScreen = gUnk_0811779C[i];
                gEntityInfo[0xE].priority = 1;

                gOamAffineBuffer[i].pc = 0;
                gOamAffineBuffer[i].pb = 0;
                gOamAffineBuffer[i].pa = 0x100;

                if (i < 2)
                {
                    gEntityInfo[i + 0xD].yPosScreen = 0x50;
                }
                else if (i < 6)
                {
                    gEntityInfo[i + 0xD].yPosScreen = 0x50;
                }
                else
                {
                    gEntityInfo[i + 0xD].yPosScreen = 0;
                }
            }

            for (i = 8; i < 0xB; i++)
            {
                gEntityInfo[i + 0xD].visible = 1;
                gEntityInfo[i + 0xD].id = 0x54;
                gEntityInfo[i + 0xD].unkF = 0;
                // TODO: some sort of addition required to match
                gEntityInfo[i + 0xD].yPosScreen = 0x83;
                gEntityInfo[i + 0xD].yPosScreen += 1;
                gEntityInfo[i + 0xD].xPosScreen = (i * 0x20) - 0xA8;
            }

            // Draw "Empire of Dreams" tiles
            for (i = 0x14; i < 0x18; i++)
            {
                DmaCopy16(3, &gBgTilemapBufs[1][i * 0x20], &gBgTilemapBufs[1][(i - 0xB) * 0x20], 0x3C);
            }

            DmaCopy16Wait(3, &gBgTilemapBufs[1][0], gBgInfo[1].pTilemap, 0x800);
            break;

        // Select New Game or Continue
        case TITLE_SCREEN_STAGE_NEW_GAME_OR_CONTINUE:
            if (gSaveFilesStarted != 0)
            {
                // Erase copyright tiles
                for (i = 0x12; i < 0x14; i++)
                {
                    DmaFill16(3, 0, &gBgTilemapBufs[0][i * 0x20], 0x40);
                }

                // Draw "New Game" and "Continue" tiles
                for (i = 0x16; i < 0x18; i++)
                {
                    DmaCopy16(3, &gBgTilemapBufs[0][(i + 2) * 0x20], &gBgTilemapBufs[0][(i - 7) * 0x20], 0x40);
                    DmaCopy16(3, &gBgTilemapBufs[0][i * 0x20], &gBgTilemapBufs[0][(i - 5) * 0x20], 0x40);
                }

                gUnk_03003410.unk6 = 1;
            }
            else
            {
                // Draw "New Game" tiles
                for (i = 0x14; i < 0x16; i++)
                {
                    DmaCopy16(3, &gBgTilemapBufs[0][i * 0x20], &gBgTilemapBufs[0][(i - 5) * 0x20], 0x40);
                }

                gUnk_03003410.unk6 = 0;
            }

            // Draw "Empire of Dreams" tiles
            for (i = 0x14; i < 0x18; i++)
            {
                DmaCopy16(3, &gBgTilemapBufs[1][i * 0x20], &gBgTilemapBufs[1][(i - 0xB) * 0x20], 0x3C);
            }

            DmaCopy16Wait(3, &gBgTilemapBufs[0][0], gBgInfo[0].pTilemap, 0x800);
            DmaCopy16Wait(3, &gBgTilemapBufs[1][0], gBgInfo[1].pTilemap, 0x800);
            gBgInfo[0].vOfs = 0;

            for (i = 8; i < 0xB; i++)
            {
                gEntityInfo[i + 0xD].visible = 0;
                gEntityInfo[i + 0xD].id = 0x1C;
                gEntityInfo[i + 0xD].unkF = 0;
                gEntityInfo[i + 0xD].xPosScreen = 0;
                gEntityInfo[i + 0xD].yPosScreen = 0;
            }

            
            for (i = 0; i < 8; i++)
            {
                gEntityInfo[i + 0xD].visible = 1;
                gEntityInfo[i + 0xD].id = 0x54;
                gEntityInfo[i + 0xD].xPosScreen = gUnk_0811779C[i];
                gEntityInfo[0xE].priority = 1;

                gOamAffineBuffer[i].pc = 0;
                gOamAffineBuffer[i].pb = 0;

                if (i < 2)
                {
                    gEntityInfo[i + 0xD].yPosScreen = 0x50;
                }
                else if (i < 6)
                {
                    gEntityInfo[i + 0xD].yPosScreen = 0x50;
                }
                else
                {
                    gEntityInfo[i + 0xD].yPosScreen = 0;
                }
            }

            REG_BLDCNT = BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
            gBlendValue = 5;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
            break;

        // Begin demo
        case TITLE_SCREEN_STAGE_BEGIN_DEMO:
            REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
            break;

        // Go to file select
        case TITLE_SCREEN_STAGE_GO_TO_FILE_SELECT:
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
            REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
            gBlendValue = 5;
            break;
    }
}

// 49724
void TitleScreenHandler(void)
{
    // Title screen and menu
    u8 i;

    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        gUnk_03004C20.room = 1;
        TitleScreenInit();
        TitleScreenStageSetup(gTitleScreenStage);
    }

    if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
    {
        gBgInfo[2].hOfs += 1;
    }

    switch (gTitleScreenStage)
    {
        // Title intro
        case 0:
            TitleScreenLogoAnimationUpdate();
            if (gBlendValue == 0)
            {
                if ((gNewKeys & START_BUTTON) || (gNewKeys & A_BUTTON))
                {
                    gBlendValue = 1;
                    m4aSongNumStart(SE_CURSOR_CONFIRM);
                    break;
                }
                if (gUnk_03004C20.sceneFrameCounter > 0xAA)
                {
                    gBlendValue = 1;
                }
                break;
            }

            gBlendValue += 1;
            if (gBlendValue != 0x10)
            {
                REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
            }
            else
            {
                gTitleScreenStage = TITLE_SCREEN_STAGE_PRESS_START;
                TitleScreenStageSetup(gTitleScreenStage);
            }
            break;

        // Press start
        case TITLE_SCREEN_STAGE_PRESS_START:
            if (gBlendValue != 0)
            {
                gBlendValue -= 1;
                REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
            }
            else
            {
                if (gBgInfo[0].vOfs != 0)
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
                    {
                        gBgInfo[0].vOfs += 1;
                    }
                }
                else
                {
                    gBgInfo[0].vOfs = 0;
                }

                if (gNewKeys & (START_BUTTON | A_BUTTON))
                {
                    gTitleScreenStage = TITLE_SCREEN_STAGE_NEW_GAME_OR_CONTINUE;
                    TitleScreenStageSetup(gTitleScreenStage);
                    m4aSongNumStart(SE_CURSOR_CONFIRM);
                }

                if ((gUnk_03004C20.sceneFrameCounter >= 0x400) && (gBlendValue == 0))
                {
                    gTitleScreenStage = TITLE_SCREEN_STAGE_BEGIN_DEMO;
                    TitleScreenStageSetup(gTitleScreenStage);
                }
            }

            if ((gUnk_03004C20.sceneFrameCounter & 0x30) != 0)
            {
                for (i = 8; i < 0xB; i++)
                {
                    gEntityInfo[i + 0xD].visible = 1;
                    gEntityInfo[i + 0xD].id = 0x54;
                }
            }
            else
            {
                for (i = 8; i < 0xB; i++)
                {
                    gEntityInfo[i + 0xD].visible = 0;
                    gEntityInfo[i + 0xD].id = 0x1C;
                }
            }
            break;

        // Select New Game or Continue
        case TITLE_SCREEN_STAGE_NEW_GAME_OR_CONTINUE:
            if (gSaveFilesStarted != 0)
            {
                if (gNewKeys & DPAD_UP)
                {
                    for (i = 0x14; i < 0x16; i++)
                    {
                        DmaCopy16(3, &gBgTilemapBufs[0][i * 0x20], &gBgTilemapBufs[0][(i - 5) * 0x20], 0x3C);
                        DmaCopy16(3, &gBgTilemapBufs[0][(i + 6) * 0x20], &gBgTilemapBufs[0][(i - 3) * 0x20], 0x3C);
                    }

                    if (gUnk_03003410.unk6 != 0)
                    {
                        m4aSongNumStart(SE_CURSOR_MOVE);
                    }
                    gUnk_03003410.unk6 = 0;
                }

                if (gNewKeys & DPAD_DOWN)
                {
                    for (i = 0x16; i < 0x18; i++)
                    {
                        DmaCopy16(3, &gBgTilemapBufs[0][(i + 2) * 0x20], &gBgTilemapBufs[0][(i - 7) * 0x20], 0x3C);
                        DmaCopy16(3, &gBgTilemapBufs[0][i * 0x20], &gBgTilemapBufs[0][(i - 5) * 0x20], 0x3C);
                    }

                    if (gUnk_03003410.unk6 != 1)
                    {
                        m4aSongNumStart(SE_CURSOR_MOVE);
                    }
                    gUnk_03003410.unk6 = 1;
                }
            }
            else
            {
                gUnk_03003410.unk6 = 0;
            }

            if (gNewKeys & B_BUTTON)
            {
                for (i = 0xF; i < 0x13; i++)
                {
                    DmaFill16(3, 0, &gBgTilemapBufs[0][i * 0x20], 0x3C);
                }

                for (i = 0x1C; i < 0x1E; i++)
                {
                    DmaCopy16(3, &gBgTilemapBufs[0][i * 0x20], &gBgTilemapBufs[0][(i - 0xA) * 0x20], 0x3C);
                }

                gTitleScreenStage = TITLE_SCREEN_STAGE_PRESS_START;
                TitleScreenStageSetup(gTitleScreenStage);
                m4aSongNumStart(SE_EXIT_MENU);
                gBlendValue = 0;
            }

            if ((gNewKeys & START_BUTTON) || (gNewKeys & A_BUTTON))
            {
                gTitleScreenStage = TITLE_SCREEN_STAGE_GO_TO_FILE_SELECT;
                TitleScreenStageSetup(gTitleScreenStage);
                m4aSongNumStart(SE_CURSOR_CONFIRM);
            }

            DmaCopy16Wait(3, &gBgTilemapBufs[0][0], gBgInfo[0].pTilemap, 0x800);
            break;

        // Begin demo
        case TITLE_SCREEN_STAGE_BEGIN_DEMO:
            gBlendValue = gUnk_03004C20.sceneFrameCounter / 4;
            if (gUnk_03004C20.sceneFrameCounter < 0x40)
            {
                break;
            }

            m4aMPlayAllStop();
            gUnk_03004C20.sceneFrameCounter = -1;
            gTitleScreenStage = 0;
            gMosaicSize = 0xF;
            gBlendValue = BLEND_MAX;

            gUnk_03004C20.demoInputIndex = -2;
            gUnk_03004C20.demoNextInputTimer = 0;
            gUnk_03004C20.demoNumber += 1;
            if (gUnk_03004C20.demoNumber > 2)
            {
                gUnk_03004C20.demoNumber = 0;
            }
            if (gUnk_03004C20.demoNumber == 0)
            {
                gUnk_03005220.lives = 3;
                gUnk_03004C20.world = 2;
                gUnk_03004C20.level = 1;
            }
            else if (gUnk_03004C20.demoNumber == 1)
            {
                gUnk_03005220.lives = 7;
                gUnk_03004C20.world = 1;
                gUnk_03004C20.level = 7;
            }
            else
            {
                gUnk_03005220.lives = 99;
                gUnk_03004C20.world = 2;
                gUnk_03004C20.level = 5;
            }
            gUnk_03004C20.room = 0;

            gUnk_03003410.unk9 = 0;
            gUnk_03003410.unkA = 1;
            gCallbackQueue.next[0] = VisionAndVisionSelectInit;
            gUnk_03003410.unk8 = 1;
            gCallbackQueue.next[1] = EntityInit;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            break;

        // Go to file select
        case TITLE_SCREEN_STAGE_GO_TO_FILE_SELECT:
            if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
            {
                gBlendValue += 1;
            }

            if ((gBlendValue == 0x10) && (gUnk_03004C20.sceneFrameCounter >= (gUnk_03004C20.sceneFrameCounter / 4)))
            {
                m4aMPlayAllStop();
                gUnk_03004C20.sceneFrameCounter = -1;
                gTitleScreenStage = 0;
                gBlendValue = 0xF;
                gCallbackQueue.current[1] = TransitionFromTitleScreenToFileSelect_FadeOut;
                gCallbackQueue.current[2] = CommonWaitForNextFrame;
                gUnk_03003410.unkA = 0;
            }
            break;
    }
}
