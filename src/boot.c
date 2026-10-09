#include "global.h"
#include "boot.h"
#include "code_08003D58.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "save.h"
#include "title_screen.h"
#include "wait_for_next_frame.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern u32 gUnk_082F43C4[];
extern u32 gUnk_082F47A8[];
extern u32 gUnk_082F48BC[];

// 4832C
void BootScreenInit(void)
{
    // Boot screen, called once at start
    s32 i;
    s32 j;

    gEntitySlotCount = 1;
    sub_08003D58();

    DmaCopy32(3, gOamBuffer, OAM, 0x400);
    gBgInfo[0].pTiles = VRAM;
    gBgInfo[0].pTilemap = VRAM + 0x7800;

    DmaFill16(3, 0x7FFF, PLTT + 0x20, 0x4);
    DmaFill16(3, 0x1111, gBgInfo[0].pTiles + 0x20, 0x20);

    for (i = 0, j = 0; i < 600; i++)
    {
        if (((i % 30) == 0) && (i != 0))
        {
            j += 2;
        }
        gBgTilemapBufs[0][j++] = (1 << 12) | 1; // 0x1001
    }

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 4) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 7) & 0x1FF;
    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;
    gBlendValue = 0;
    REG_BG0CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_MOSAIC | BGCNT_SCREENBASE(15);

    DmaCopy16Wait(3, gBgTilemapBufs, gBgInfo[0].pTilemap, 0x800);
    LoadGlobalSaveData();
    gTitleScreenStage = 0;
}

// 48498
void NamcoScreenInit(void)
{
    // Namco screen init
    u16 i;
    u16 j;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP;
    gBgInfo[0].pTiles = BG_VRAM;
    gBgInfo[0].pTilemap = BG_VRAM + 0x7000;
    gBgInfo[1].pTiles = BG_VRAM + 0x4000;
    gBgInfo[1].pTilemap = BG_VRAM + 0x7800;
    REG_BG0CNT = BGCNT_PRIORITY(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(14);
    REG_BG1CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(15);

    gEntitySlotCount = 1;
    sub_08003D58();

    DmaCopy32(3, gOamBuffer, OAM, 0x400);

    gBgDataPtrs.pBufBg0Tiles = thunk_HeapAlloc(*gUnk_082F43C4 & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(*gUnk_082F47A8 & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg0Tiles, (void*)gUnk_082F43C4);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, (void*)gUnk_082F47A8);
    gBgDataPtrs.pBufBg0Tiles += 4;
    gBgDataPtrs.pBufBg0Tilemap += 2;

    DecompressDma((void*)gUnk_082F48BC, PLTT, 0x200);

    DmaFill16(3, 0, PLTT + 0x20, 0x4);
    DmaFill16(3, 0x1111, gBgInfo[1].pTiles + 0x20, 0x20);
    DmaFill16(3, 0, gBgInfo[2].pTiles + 0x20, 0x20);

    for (i = 0, j = 0; i < 600; i++)
    {
        if (((i % 30) == 0) && (i != 0))
        {
            j += 2;
        }

        gBgTilemapBufs[1][j] = (1 << 12) | 1; // 0x1001
        gBgTilemapBufs[0][j++] = gBgDataPtrs.pBufBg0Tilemap[i];
    }

    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tiles - 4);
    DmaCopy16(3, gBgDataPtrs.pBufBg0Tiles, gBgInfo[0].pTiles, 0xC40);

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 4) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 7) & 0x1FF;

    DmaCopy16Wait(3, &gBgTilemapBufs[0], gBgInfo[0].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[1], gBgInfo[1].pTilemap, 0x800);

    REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;
    gBlendValue = 0x10;
    gMosaicSize = 0;
    gBgInfo[0].hOfs = 0;
    gBgInfo[0].vOfs = 0;
    gBgInfo[1].hOfs = 0;
    gBgInfo[1].vOfs = 0;
    gBgInfo[2].hOfs = 0;
    gBgInfo[2].vOfs = 0;
    gIntrTable.vBlank = VBlankIntr_Common;

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;
}

// 48768
void BootScreenHandler(void)
{
    // Boot screen
    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        BootScreenInit();
    }

    if (gUnk_03004C20.sceneFrameCounter >= 0x10)
    {
        gBlendValue = (gUnk_03004C20.sceneFrameCounter - 0x10) / 2;
    }

    if (gBlendValue >= 0x10)
    {
        gUnk_03004C20.sceneFrameCounter = -1;
        gCallbackQueue.current[1] = NamcoScreenHandler;
    }

    m4aSoundVSyncOff();
    m4aMPlayAllStop();
}

// 487B4
void NamcoScreenHandler(void)
{
    // Namco screen
    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        NamcoScreenInit();
    }

    if (gUnk_03004C20.sceneFrameCounter == 0x20)
    {
        REG_IE |= INTR_FLAG_VBLANK;
        REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOn();
        m4aSongNumStart(MUS_NAMCO);
    }

    if ((gUnk_03004C20.sceneFrameCounter > 0x10) && (gUnk_03004C20.sceneFrameCounter < 0x30))
    {
        gBlendValue = (0x30 - gUnk_03004C20.sceneFrameCounter) / 2;
    }

    if ((gUnk_03004C20.sceneFrameCounter > 0x100) && (gUnk_03004C20.sceneFrameCounter < 0x140))
    {
        gBlendValue = (gUnk_03004C20.sceneFrameCounter - 0x100) / 4;
    }

    if (gUnk_03004C20.sceneFrameCounter >= 0x140)
    {
        gUnk_03004C20.sceneFrameCounter = -1;
        gCallbackQueue.current[1] = TitleScreenHandler;
        gCallbackQueue.current[2] = TitleScreenWaitForNextFrame;
        gTitleScreenStage = 0;
        gBlendValue = 0x10;
        REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;
    }
}
