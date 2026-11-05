#include "global.h"
#include "vision.h"
#include "code_08003D58.h"
#include "wait_for_next_frame.h"
#include "transitions.h"
#include "anim.h"
#include "boot.h"
#include "save.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "main.h"
#include "math.h"
#include "data/data_0818BBBC.h"
#include "data/trig.h"
#include "structs/variables.h"

extern const u8 gUnk_0805769C[0x18];
extern const u8 gUnk_080576B4[0x20];
extern const u8 gUnk_080576D4[0x20][2]; // bpp (0 = 16 color mode, 0x80 = 256 color mode)
extern const u16 gUnk_08057714[0x20][2]; // hLength
extern const u16 gUnk_08057794[0x20][2]; // vLength
extern const u16 gUnk_08057814[0x20][2]; // nbrTiles
extern const u8 gUnk_08057894[0x20][2]; // tileSize
extern const u8 gUnk_080578D4[0x20][2]; // character base block
extern const u8 gUnk_08057914[0x20][2]; // screen base block

extern const struct Unk_08057954 gUnk_08057954[];

extern const u8 gUnk_08057ACC[0x20][2][2]; // pair values of {unk, bgNbr}

extern const u16 gUnk_08057B4C[0x10]; // REG_BLDCNT

// 0x1177c4
// TODO: actual size?
const u16 gUnk_081177C4[16] = {
    0x40,
    0x340,
    0x1C40,
    0x1F40,
    0x140,
    0x240,
    0x1340,
    0x1740,
    0x1B40,
    0x1E40,
    0x240,
    0x1040,
    0x0,
    0x0,
    0x0,
    0x0
};

extern u32* gUnk_08189AFC[20];
extern u32* gUnk_08189B4C[32];

extern u32* gUnk_08189BCC[32][2];
extern u32* gUnk_08189CCC[32][2];

extern const u8* gUnk_08189DCC[46];

extern struct Unk_0300466C *gUnk_08189E84[0x20];

struct Unk_08189F04 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u8 padA[0xC - 0xA];
};
extern const struct Unk_08189F04 gUnk_08189F04[0x20][0x10];

void sub_0804BFD0(void);
void sub_0804C0D4(void);
void CutsceneHandler(void);
void sub_0804ED68(u32 arg0, void (*arg1)(), u8 arg2, u8 arg3);
void sub_0804EE14(void);
void sub_0804EF50(void);
void sub_0804EFA0(void);
void sub_0804EFDC(void);
void sub_0804F034(void);
void sub_0804F004(void);
void sub_0804F050(void);
void sub_0804F074(void);
void sub_0804F0D0(void);
void sub_0804F114(void);
void sub_0804F13C(void);
void sub_0804F160(void);
void sub_0804F180(void);
void sub_0804F1B4(void);
s32 sub_0804F248(u8 arg0);

// 4B254
u16 ReadU16(u8 *ptr)
{
    return ptr[0] + (ptr[1] << 8);
}

// 4B260
s16 ReadS16(u8 *ptr)
{
    return ptr[0] + (ptr[1] << 8);
}

// 4B270
u32 ReadU32(u8 *ptr)
{
    return ptr[0] + (ptr[1] << 8) + (ptr[2] << 0x10) + (ptr[3] << 0x18);
}

// 4B288
s32 ReadS32(u8 *ptr)
{
    return ptr[0] + (ptr[1] << 8) + (ptr[2] << 0x10) + (ptr[3] << 0x18);
}

// 4B2A0
s32 CutsceneCalculateBgCntScreenSize(u8 bgMode, u16 hLength, u16 vLength)
{
    s32 bgScreenSize;
    s32 hSize;

    if (bgMode != 0)
    {
        if ((hLength > 0x10) || (vLength > 0x10))
        {
            if ((hLength > 0x20) || (vLength > 0x20))
            {
                if ((hLength <= 0x40) && (vLength <= 0x40))
                {
                    bgScreenSize = 2;
                }
                else
                {
                    bgScreenSize = 3;
                }
            }
            else
            {
                bgScreenSize = 1;
            }
        }
        else
        {
            bgScreenSize = 0;
        }
    }
    else
    {
        if (hLength > 0x20)
        {
            hSize = 1;
        }
        else
        {
            hSize = 0;
        }
    
        if (vLength > 0x20)
        {
            bgScreenSize = hSize | 2;
        }
        else
        {
            bgScreenSize = hSize;
        }
    }
    return bgScreenSize;
}

// 4B2EC
void CutsceneSetWindowDimensions(void)
{
    REG_WIN0H = ((gUnk_030034A0->winX1Y1[WIN_0][WIN_H] << 4) & ~0xFF) | ((gUnk_030034A0->winX2Y2[WIN_0][WIN_H] >> 4) & 0xFF);
    REG_WIN0V = ((gUnk_030034A0->winX1Y1[WIN_0][WIN_V] << 4) & ~0xFF) | ((gUnk_030034A0->winX2Y2[WIN_0][WIN_V] >> 4) & 0xFF);
    REG_WIN1H = ((gUnk_030034A0->winX1Y1[WIN_1][WIN_H] << 4) & ~0xFF) | ((gUnk_030034A0->winX2Y2[WIN_1][WIN_H] >> 4) & 0xFF);
    REG_WIN1V = ((gUnk_030034A0->winX1Y1[WIN_1][WIN_V] << 4) & ~0xFF) | ((gUnk_030034A0->winX2Y2[WIN_1][WIN_V] >> 4) & 0xFF);
}

// 4B35C
void sub_0804B35C(void)
{
    if (gHeldKeys & SELECT_BUTTON)
    {
        if (gHeldKeys & DPAD_UP)
        {
            gBg2YMag += 0x10;
            if (gBg2YMag > 0x4000)
            {
                gBg2YMag = 0x4000;
            }
        }

        if (gHeldKeys & DPAD_DOWN)
        {
            gBg2YMag -= 8;
            if (gBg2YMag > 0xF000)
            {
                gBg2YMag = 3;
            }
        }

        if (gHeldKeys & DPAD_LEFT)
        {
            gBg2XMag -= 8;
            if (gBg2XMag > 0xF000)
            {
                gBg2XMag = 3;
            }
        }

        if (gHeldKeys & DPAD_RIGHT)
        {
            gBg2XMag += 0x10;
            if (gBg2XMag > 0x4000)
            {
                gBg2XMag = 0x4000;
            }
        }

        if (gHeldKeys & R_BUTTON)
        {
            gBg2Alpha += 1;
        }

        if (gHeldKeys & L_BUTTON)
        {
            gBg2Alpha += -1;
        }
    }
}

// 4B424
void sub_0804B424(void *src, void *dest, u32 size)
{
    void *heapPtr;

    heapPtr = DecompressAlloc(src);
    Decompress(heapPtr, src);
    DmaCopy16Wait(3, heapPtr + 4, dest, size);
    thunk_HeapFree(heapPtr);
}

// 4B464
void sub_0804B464(s32 arg0, s32 arg1)
{
    sub_0804B424(gUnk_08189BCC[gUnk_08057ACC[arg0][arg1][0]][gUnk_08057ACC[arg0][arg1][1] - 2], gBgInfo[gUnk_08057ACC[arg0][arg1][1]].pTiles, gBgInfo[gUnk_08057ACC[arg0][arg1][1]].nbrTiles * gBgInfo[gUnk_08057ACC[arg0][arg1][1]].tileSize);
}

// 4B4B0
void sub_0804B4B0(s32 arg0, s32 arg1)
{
    s32 sp4;
    u8 *sp8;
    s32 bgCntScreenSize;
    u32 sp10;
    u32 sp14;
    u32 sp18;
    u8 *temp_r8;
    s32 var_r3; // Can also just use arg1, removes first fake statement
    s32 var_r7;
    u32 var_sl;
    u32 var_r8;
    u32 bgNbr;

    var_r3 = arg1; // FAKE?
    bgNbr = gUnk_08057ACC[arg0][arg1][1];
    do {} while(0); // Fake
    var_r3 = gUnk_08057ACC[arg0][arg1][0]; // Can also use separate s32 temp_r3; variable for this
    bgCntScreenSize = gUnk_030034A0->unk3[bgNbr - 2];

    if ((gUnk_030034A0->unk1_0 != 0) && (bgNbr == 2))
    {
        var_sl = 0x10 << bgCntScreenSize;
        if (gBgInfo); // FAKE?
        temp_r8 = DecompressAlloc(gUnk_08189CCC[var_r3][bgNbr - 2]);
        temp_r8 += 4;
        
        for (var_r3 = 0; var_r3 < gBgInfo[2].vLength; var_r3++)
        {
            for (var_r7 = 0; var_r7 < gBgInfo[2].hLength; var_r7++)
            {
                gBg2TilemapData[var_r7] = temp_r8[var_r7 + (var_r3 * gBgInfo[2].hLength)];
            }
            
            for (var_r7 = gBgInfo[2].hLength; var_r7 < var_sl; var_r7++)
            {
                gBg2TilemapData[var_r7] = 0;
            }

            DmaCopy16Wait(3, gBg2TilemapData, gBgInfo[2].pTilemap + (var_r3 * var_sl), var_sl);
        }

        for (var_r3 = gBgInfo[2].vLength; var_r3 < var_sl; var_r3++)
        {
            DmaFill16(3, 0, gBgInfo[2].pTilemap + (var_r3 * var_sl), var_sl);
        }

        thunk_HeapFree(temp_r8 - 4);
    }
    else
    {
        sp8 = DecompressAlloc(gUnk_08189CCC[var_r3][bgNbr - 2]);
        sp8 += 4;

        switch (bgCntScreenSize)
        {
            case 3:
                sp4 = 4;
                break;

            default:
                sp4 = 2;
                break;

            case 0:
                sp4 = 1;
                break;
        }

        for (var_r7 = 0; var_r7 < sp4; var_r7++)
        {
            switch (bgCntScreenSize)
            {
                case 0:
                    var_sl = min(gBgInfo[bgNbr].hLength, 0x20);
                    var_r8 = min(0x20 - var_sl, 0x20);
                    sp10 = min(gBgInfo[bgNbr].vLength, 0x20);
                    sp14 = 0;
                    sp18 = 0;
                    break;

                case 1:
                    var_sl = (var_r7 != 0) ? min(gBgInfo[bgNbr].hLength, 0x20) : 0x20;
                    var_r8 = (var_r7 != 0) ? min(0x20 - var_sl, 0x20) : 0;
                    sp10 = min(gBgInfo[bgNbr].vLength, 0x20);
                    sp14 = var_r7 * 0x20;
                    sp18 = 0;
                    break;

                case 2:
                    var_sl = min(gBgInfo[bgNbr].hLength, 0x20);
                    var_r8 = min(0x20 - var_sl, 0x20);
                    sp10 = (var_r7 != 0) ? min(gBgInfo[bgNbr].vLength, 0x20) : 0x20;
                    sp14 = 0;
                    sp18 = var_r7 * gBgInfo[bgNbr].vLength;
                    break;

                case 3:
                    var_sl = (var_r7 != 0) ? min(gBgInfo[bgNbr].hLength, 0x20) : 0x20;
                    var_r8 = (var_r7 != 0) ? min(0x20 - var_sl, 0x20) : 0x20;
                    sp10 = (var_r7 != 0) ? min(gBgInfo[bgNbr].vLength, 0x20) : 0x20;
                    sp14 = (var_r7 & 2) ? 0x20 : 0;
                    sp18 = (var_r7 & 1) ? 0x20 : 0;
                    break;
            }

            for (var_r3 = 0; var_r3 < sp10; var_r3++)
            {
                if (var_r8 != 0)
                {
                    DmaFill16(3, 0, gBgInfo[bgNbr].pTilemap + (var_r3 * 0x40) + (var_r7 * 0x800) + (var_sl * 2), var_r8 * 2);
                }

                DmaCopy16Wait(3, sp8 + ((var_r3 + sp18) * gBgInfo[bgNbr].hLength) * 2 + (sp14 * 2), gBgInfo[bgNbr].pTilemap + (var_r3 * 0x40) + (var_r7 * 0x800), var_sl * 2);
            }

            for (var_r3 = sp10; var_r3 < 0x20; var_r3++)
            {
                if (var_r3) var_r3++,var_r3--; // Fake
                DmaFill16(3, 0, gBgInfo[bgNbr].pTilemap + (var_r7 * 0x800) + (var_r3 * 0x40), 0x40);
            }
        }

        thunk_HeapFree(sp8 - 4);
    }
}

// 4B920
void sub_0804B920(s32 arg0, s32 arg1)
{
    u32 temp_r5;
    u32 bgNbr;

    bgNbr = gUnk_08057ACC[arg0][arg1][1];
    temp_r5 = gUnk_08057ACC[arg0][arg1][0];

    gBgInfo[bgNbr].pTiles = BG_VRAM + gUnk_080578D4[temp_r5][bgNbr - 2] * BG_CHAR_SIZE;
    gBgInfo[bgNbr].pTilemap = BG_VRAM + gUnk_08057914[temp_r5][bgNbr - 2] * BG_SCREEN_SIZE;

    gBgInfo[bgNbr].hOfs = 0;
    gBgInfo[bgNbr].vOfs = 0;

    gBgInfo[bgNbr].hLength = gUnk_08057714[temp_r5][bgNbr - 2];
    gBgInfo[bgNbr].vLength = gUnk_08057794[temp_r5][bgNbr - 2];

    gBgInfo[bgNbr].nbrTiles = gUnk_08057814[temp_r5][bgNbr - 2];
    gBgInfo[bgNbr].tileSize = gUnk_08057894[temp_r5][bgNbr - 2];
    gBgInfo[bgNbr].unk14 = 0;

    gUnk_030034A0->unk1_0 = (gUnk_080576D4[temp_r5][bgNbr - 2] == 0x80) ? 1 : 0;
    REG_DISPCNT = (REG_DISPCNT & ~7) | gUnk_030034A0->unk1_0;
    gUnk_030034A0->unk3[bgNbr - 2] = CutsceneCalculateBgCntScreenSize(gUnk_030034A0->unk1_0, gBgInfo[bgNbr].hLength, gBgInfo[bgNbr].vLength);

    switch (bgNbr)
    {
        case 2:
            REG_BG2CNT = BGCNT_PRIORITY(2) | gUnk_080576D4[temp_r5][bgNbr - 2] | (gUnk_030034A0->unk3[bgNbr - 2] << 14) | BGCNT_MOSAIC | BGCNT_WRAP | (gUnk_08057914[temp_r5][bgNbr - 2] << 8) | (gUnk_080578D4[temp_r5][bgNbr - 2] << 2);
            break;

        case 3:
            REG_BG3CNT = BGCNT_PRIORITY(2) | gUnk_080576D4[temp_r5][bgNbr - 2] | (gUnk_030034A0->unk3[bgNbr - 2] << 14) | BGCNT_MOSAIC | BGCNT_WRAP | (gUnk_08057914[temp_r5][bgNbr - 2] << 8) | (gUnk_080578D4[temp_r5][bgNbr - 2] << 2);
            break;
    }
}

// 4BAB4
void sub_0804BAB4(u8 arg0)
{
    DecompressDma(gUnk_08189B4C[arg0], BG_PLTT, 0x1C0);
}

// 4BAD4
void sub_0804BAD4(s32 cutsceneId)
{
    gUnk_030007D0 = DecompressAlloc(gUnk_08189AFC[cutsceneId]);
    gUnk_03004D84 = gUnk_030007D0 + 4;
}

// 4BAFC
void sub_0804BAFC(void)
{
    thunk_HeapFree(gUnk_030007D0);
}

// 4BB10
void sub_0804BB10(void)
{
    DmaFill16(3, 0xF000, &gBgTilemapBufs[1], sizeof(gBgTilemapBufs[1]));
}

// 4BB3C
void sub_0804BB3C(void)
{
    gUnk_030034A0 = thunk_HeapAlloc(sizeof(*gUnk_030034A0), 0);
    DmaFill16(3, 0, gUnk_030034A0, sizeof(*gUnk_030034A0));
}

// 4BB74
void sub_0804BB74(void)
{
    thunk_HeapFree(gUnk_030034A0);
}

// 4BB88
void sub_0804BB88(void)
{
    gUnk_030052A4 = thunk_HeapAlloc(0x20 * sizeof(*gUnk_030052A4), 0);
    DmaFill16(3, 0, gUnk_030052A4, 0x20 * sizeof(*gUnk_030052A4));
}

// 4BBC0
void sub_0804BBC0(void)
{
    thunk_HeapFree(gUnk_030052A4);
}

// 4BBD4
void sub_0804BBD4(void)
{
    s32 i;

    gBgInfo[0].pTiles = VRAM;
    gBgInfo[0].pTilemap = VRAM + 0x3000;

    gBgInfo[0].hOfs = 8;
    gBgInfo[0].vOfs = 0;

    gBgInfo[0].hLength = 0x20;
    gBgInfo[0].vLength = 0x20;

    gBgInfo[0].tileSize = 0x20;
    gBgInfo[0].nbrTiles = 0x1C;
    gBgInfo[0].unk14 = 0;

    DmaFill16(3, 0, gBgInfo[0].pTiles, 0x400);
    sub_0804B424(&gUnk_082EA584, gBgInfo[0].pTiles + 0x400, 0x380);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(gUnk_082EA730[0] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, &gUnk_082EA730);
    gBgDataPtrs.pBufBg0Tilemap += 2;

    for (i = 0; i < 0x400; i++)
    {
        gBgTilemapBufs[0][i] = ((gBgDataPtrs.pBufBg0Tilemap[i] & 0xFFF) + 0x20) | ~0x1FFF;
    }

    DmaCopy16Wait(3, &gBgTilemapBufs[0], gBgInfo[0].pTilemap, sizeof(gBgTilemapBufs[0]));
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);

    REG_BG0CNT = BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(6);
    gBgInfo[0].vOfs = 0;
    gBgInfo[0].hOfs = 0;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    DecompressDma(&gUnk_082EA7F0, BG_PLTT + 0x1C0, 0x20);
}

// 4BD10
void sub_0804BD10(void)
{
    sub_0804ED68(gBgInfo[0].nbrTiles + 0x20, sub_0804BB10, 0x1D, 0x10);

    gBgInfo[1].pTiles = VRAM;
    gBgInfo[1].pTilemap = VRAM + 0x3800;

    gBgInfo[1].hOfs = 0;
    gBgInfo[1].vOfs = 0;

    gBgInfo[1].tileSize = 0x20;
    gBgInfo[1].unk14 = gBgInfo[0].nbrTiles;

    DmaCopy16(3, &gUnk_080576B4, BG_PLTT + 0x1E0, 0x40); // TODO: wrong DMA size?

    REG_BG1CNT = BGCNT_SCREENBASE(7);
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
}

// 4BD88
void sub_0804BD88(void)
{
    DmaFill16(3, 0xF000, &gBgTilemapBufs[1], sizeof(gBgTilemapBufs[1]));
}

// 4BDB4
void CutsceneSetUpWindow(void)
{
    gUnk_030034A0->winX1Y1[WIN_0][WIN_H] = 0;
    gUnk_030034A0->winX2Y2[WIN_0][WIN_H] = 0xE8 << 4;
    gUnk_030034A0->winX1Y1[WIN_0][WIN_V] = 0x70 << 4;
    gUnk_030034A0->winX2Y2[WIN_0][WIN_V] = 0xA0 << 4;

    gUnk_030034A0->winX1Y1[WIN_1][WIN_H] = 0x70 << 4;
    gUnk_030034A0->winX2Y2[WIN_1][WIN_V] = 0xA0 << 4;

    CutsceneSetWindowDimensions();
    REG_WININ = WININ_WIN0_BG0 | WININ_WIN0_BG1 | WININ_WIN0_CLR | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ;
    REG_WINOUT = WINOUT_WIN01_BG0 | WINOUT_WIN01_BG2 | WINOUT_WIN01_BG3 | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;
    REG_DISPCNT &= ~DISPCNT_WIN1_ON;
}

// 4BE08
void CutsceneSetUpCallbacks(void)
{
    gIntrTable.vBlank = VBlankIntr_Cutscene;
    gIntrTable.hBlank = sub_0800107C;
    gCallbackQueue.next[0] = InputHandler_Normal;
    gCallbackQueue.next[1] = CutsceneHandler;
    gCallbackQueue.next[2] = CutsceneWaitForNextFrame;
    gCallbackQueue.next[3] = NULL + 1;
    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    gCallbackQueue.nextCount = 4;
}

// 4BE58
void CutsceneInit(void)
{
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    if (gUnk_03004C20.world > gFileSaveData->nbrUnlockedWorlds)
    {
        gFileSaveData->nbrUnlockedWorlds = gUnk_03004C20.world;
    }
    WriteSaveFile(SAVE_DATA_TYPE_FILE, 0);
    gSceneSaveData->world = gUnk_03004C20.world;
    WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_CUTSCENE);

    sub_0804BAD4(gSceneSaveData->cutsceneId);
    sub_0804BB3C();
    sub_0804BB88();
    sub_0804BBD4();
    sub_0804BD10();
    sub_0804BFD0();
    CutsceneSetUpWindow();
    CutsceneSetUpCallbacks();

    gBlendValue = 0x10;
    gUnk_030034A0->unk2_1 = 2;
    gUnk_030034A0->unk1C_6 = 0;
    gUnk_030034A0->unk1C_5 = 0;
    gUnk_030034A0->unk18 = 0x100;
    gUnk_030034A0->unk1C_4 = 1;    
    gMosaicSize = gBg2Alpha = 0;

    REG_IE &= ~INTR_FLAG_HBLANK;
    REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;

    gUnk_03004C20.unkA = 0;
    gUnk_03004C20.isHoverBoardLevel = 0;
    gVisionSelectInfo.currentVision = 1;

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
}

// 4BF7C
void sub_0804BF7C(void)
{
    gUnk_03000814 = gUnk_03004C20.globalFrameCounter;
    REG_IE &= ~INTR_FLAG_HBLANK;
    REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
    sub_0804C0D4();
    sub_0804EE14();
    sub_0804BBC0();
    sub_0804BB74();
    sub_0804BAFC();
    m4aMPlayAllStop();
}

// 4BFD0
void sub_0804BFD0(void)
{
    gUnk_030007C8 = thunk_HeapAlloc(0x20 * sizeof(*gUnk_030007C8), 0);
    DmaFill16(3, 0, gUnk_030007C8, 0x20 * sizeof(*gUnk_030007C8));
    sub_08003D58();
    DmaCopy32(3, &gOamBuffer, OAM, sizeof(gOamBuffer));
    gEntitySlotCount = 0xD;
    gObjPalRamPtr = gUnk_030034F4;
    gObjVramPtr = gUnk_030052AC;
}

// 4C050
void sub_0804C050(void)
{
    s32 var_r5;

    for (var_r5 = 0x20; var_r5 > 0; var_r5--)
    {
        if (gUnk_030007C8[var_r5 - 1].unk6 != 0)
        {
            thunk_HeapFree(gUnk_030007C8[var_r5 - 1].unk0 - 4);
            gUnk_030007C8[var_r5 - 1].unk6 = 0;
            gUnk_030007C8[var_r5 - 1].unk0 = 0;
            gUnk_030007C8[var_r5 - 1].unk4 = 0;
        }
    }

    sub_08003D58();
    gEntitySlotCount = 0xD;
    gObjPalRamPtr = gUnk_030034F4;
    gObjVramPtr = gUnk_030052AC;
}

// 4C0BC
void sub_0804C0BC(void)
{
    sub_0804C050();
    gUnk_03004D84 += 2;
}

// 4C0D4
void sub_0804C0D4(void)
{
    sub_0804C050();
    thunk_HeapFree(gUnk_030007C8);
}

// 4C0EC
void sub_0804C0EC(s32 arg0, s32 arg1)
{
    s32 var_r6;
    u16 var_r5;

    var_r6 = 0;
    var_r5 = (gUnk_030052AC - (uintptr_t)OBJ_VRAM0) >> 5;
    while (gUnk_030007C8[var_r6].unk6 != 0)
    {
        var_r5 += gUnk_030007C8[var_r6].unk6;
        var_r6 += 1;
    }

    gUnk_030007C8[var_r6].unk0 = DecompressAlloc(gUnk_08057954[arg0].unk0) + 4;
    gUnk_030007C8[var_r6].unk6 = gUnk_08057954[arg0].unk6;
    gUnk_030007C8[var_r6].unk4 = var_r5;

    if (arg1 != 0)
    {
        DmaCopy16Wait(3, gUnk_08189DCC[arg0], gObjPalRamPtr, 0x20);
        gObjPalRamPtr += 0x20;
    }
}

// 4C1A0
void sub_0804C1A0(void)
{
    u32 temp_r0;
    u32 temp_r1_2;

    temp_r0 = gUnk_03004D84[2] & 0x7F;
    temp_r1_2 = gUnk_03004D84[2] >> 7;
    gUnk_03004D84 += 3;
    sub_0804C0EC(temp_r0, temp_r1_2);
}

// 4C1C0
void sub_0804C1C0(s32 arg0, s32 arg1)
{
    DmaCopy16(3, gUnk_030007C8[arg0].unk0 + (gUnk_030007C8[arg0].unk6 * (arg1 << 5)), OBJ_VRAM0 + (gUnk_030007C8[arg0].unk4 * 0x20), gUnk_030007C8[arg0].unk6 * 0x20);
}

// 4C1FC
void sub_0804C1FC(void)
{
    u32 temp_r0;
    u32 temp_r1;

    temp_r0 = gUnk_03004D84[2];
    temp_r1 = gUnk_03004D84[3];
    gUnk_03004D84 += 4;
    sub_0804C1C0(temp_r0, temp_r1);
}

// 4C218
void sub_0804C218(s32 arg0)
{
    gUnk_030051DC = gUnk_08189E84[arg0];
}

// 4C230
void sub_0804C230(void)
{
    sub_0804C218(gUnk_03004D84[2]);
    gUnk_03004D84 += 3;
}

// 4C24C
void sub_0804C24C(void)
{
    gEntityInfo[(gUnk_03004D84[2] & 0x7F) + 0xD].visible = gUnk_03004D84[2] >> 7;
    gEntityInfo[(gUnk_03004D84[2] & 0x7F) + 0xD].unkF = ((gUnk_03004D84[2] >> 7) == 0) ? (0x1C) : (0);

    gEntityInfo[(gUnk_03004D84[2] & 0x7F) + 0xD].xPosScreen = ReadU16(gUnk_03004D84 + 3);
    gEntityInfo[(gUnk_03004D84[2] & 0x7F) + 0xD].yPosScreen = ReadU16(gUnk_03004D84 + 5);

    gEntityInfo[(gUnk_03004D84[2] & 0x7F) + 0xD].xPosBg2 = gEntityInfo[(gUnk_03004D84[2] & 0x7F) + 0xD].xPosScreen * 0x10;
    gEntityInfo[(gUnk_03004D84[2] & 0x7F) + 0xD].yPosBg2 = gEntityInfo[(gUnk_03004D84[2] & 0x7F) + 0xD].yPosScreen * 0x10;

    gUnk_03004D84 += 7;
}

// 4C300
void sub_0804C300(void)
{
    s32 var_r8;
    u16 var_sb;

    var_sb = ReadU16(gUnk_03004D84 + 2);
    for (var_r8 = 0; gUnk_08189F04[var_sb][var_r8].unk0 != 0xFFFF; var_r8++)
    {
        EntityCreate(gEntitySlotCount++, gUnk_08189F04[var_sb][var_r8].unk7, gUnk_08189F04[var_sb][var_r8].unk0, gUnk_08189F04[var_sb][var_r8].unk2, gUnk_08189F04[var_sb][var_r8].unk4, gUnk_08189F04[var_sb][var_r8].unk9, gUnk_08189F04[var_sb][var_r8].unk5, gUnk_08189F04[var_sb][var_r8].unk6, gUnk_08189F04[var_sb][var_r8].unk8);
    }
    gUnk_03004D84 += 4;
}

// 4C3A4
void sub_0804C3A4(void)
{
    gEntityInfo[gUnk_03004D84[2]].unkF = ((gUnk_03004D84[3] & 1) == 0) ? (0x1C) : (0);
    gEntityInfo[gUnk_03004D84[2]].priority = (gUnk_03004D84[3] >> 1) & 3;
    gEntityInfo[gUnk_03004D84[2]].affineEnable = (gUnk_03004D84[3] >> 3) & 1;
    gEntityInfo[gUnk_03004D84[2]].affineDouble = (gUnk_03004D84[3] >> 4) & 1;
    gEntityInfo[gUnk_03004D84[2]].unkC_4 = gUnk_03004D84[4] & 0xF;
    gEntityInfo[gUnk_03004D84[2]].objMode =( gUnk_03004D84[4] >> 6) & 1;
    gUnk_03004D84 += 5;
}

// 4C484
void sub_0804C484(void)
{
    s32 temp_r4;
    gEntityInfo[gUnk_03004D84[2] + 0xD].affineHFlip_matrixNum = (gUnk_03004D84[3] & 0x1F);
    gEntityInfo[gUnk_03004D84[2] + 0xD].affineEnable = (gUnk_03004D84[3] >> 5) & 1;
    gEntityInfo[gUnk_03004D84[2] + 0xD].affineDouble = (gUnk_03004D84[3] >> 7);

    temp_r4 = ReadS16(gUnk_03004D84 + 4);
    gOamAffineBuffer[gUnk_03004D84[3] & 0x1F].pa = MultiplyQ8(0x100, ReciprocalQ8(temp_r4));
    gOamAffineBuffer[gUnk_03004D84[3] & 0x1F].pb = 0;
    gOamAffineBuffer[gUnk_03004D84[3] & 0x1F].pc = 0;
    gOamAffineBuffer[gUnk_03004D84[3] & 0x1F].pd = MultiplyQ8(0x100, ReciprocalQ8(temp_r4));

    gUnk_03004D84 += 6;
}

// 4C598
void sub_0804C598(void)
{
    switch (gUnk_03004D84[2] & 3)
    {
        case 0:
            REG_BG0CNT = (REG_BG0CNT & ~BGCNT_PRIORITY_MASK) | (gUnk_03004D84[2] >> 4);
            break;

        case 1:
            REG_BG1CNT = (REG_BG1CNT & ~BGCNT_PRIORITY_MASK) | (gUnk_03004D84[2] >> 4);
            break;

        case 2:
            REG_BG2CNT = (REG_BG2CNT & ~BGCNT_PRIORITY_MASK) | (gUnk_03004D84[2] >> 4);
            break;

        case 3:
            REG_BG3CNT = (REG_BG3CNT & ~BGCNT_PRIORITY_MASK) | (gUnk_03004D84[2] >> 4);
            break;
    }

    gUnk_03004D84 += 3;
}

// 4C60C
void sub_0804C60C(void)
{
    u32 temp_r1;

    DmaFill32(3, ReadU32(gUnk_03004D84 + 3), gBgInfo[gUnk_03004D84[2]].pTiles + 0x40, 0x20);

    temp_r1 = 0xF002;
    switch (gUnk_03004D84[2])
    {
        case 0:
        case 1:
            DmaFill16(3, temp_r1, gBgTilemapBufs[gUnk_03004D84[2]], 0x800);
            break;

        case 2:
        case 3:
            DmaFill16(3, temp_r1, gBgInfo[gUnk_03004D84[2]].pTilemap, 0x800);
            break;
    }

    gUnk_03004D84 += 7;
}

// 4C6A8
void sub_0804C6A8(void)
{
    REG_BG2CNT |= BGCNT_MOSAIC;
    REG_BG3CNT |= BGCNT_MOSAIC;
    gMosaicSize = gUnk_03004D84[2] & 0xF;
    gUnk_03004D84 += 3;
}

// 4C6E0
void sub_0804C6E0(void)
{
    gEntityInfo[gUnk_03004D84[2] + 0xD].visible = gUnk_03004D84[3] >> 7;
    gEntityInfo[gUnk_03004D84[2] + 0xD].unkF = ((gUnk_03004D84[3] & 0x80) != 0) ? 0 : 0x1C;
    gEntityInfo[gUnk_03004D84[2] + 0xD].hvFlip = (gUnk_03004D84[3] >> 4) & 3;
    gEntityInfo[gUnk_03004D84[2] + 0xD].priority = gUnk_03004D84[3] & 3;

    gUnk_03004D84 += 4;
}

// 4C774
void sub_0804C774(void)
{
    gUnk_030034A0->unk0_0 = 2;
    gUnk_03004D84 += 2;
}

// 4C798
void sub_0804C798(void)
{
    s32 var_r5;
    s32 temp_r4;

    temp_r4 = gUnk_03004D84[2];
    gUnk_03004D84 += 3;

    for (var_r5 = 0; var_r5 < 2; var_r5++)
    {
        if (gUnk_08057ACC[temp_r4][var_r5][0] == 0xFF)
        {
            break;
        }

        sub_0804B920(temp_r4, var_r5);
        sub_0804B464(temp_r4, var_r5);
        sub_0804B4B0(temp_r4, var_r5);
    }

    sub_0804BAB4(gUnk_08057ACC[temp_r4][0][0]);
}

// 4C7FC
void sub_0804C7FC(void)
{
    gBgInfo[gUnk_03004D84[2]].hOfs = ReadU16(gUnk_03004D84 + 3) * 0x10;
    gBgInfo[gUnk_03004D84[2]].vOfs = ReadU16(gUnk_03004D84 + 5) * 0x10;
    gUnk_03004D84 += 7;
}

// 4C844
void sub_0804C844(void)
{
    ((u16*)PLTT)[gUnk_03004D84[2]] = ReadU16(gUnk_03004D84 + 3);
    gUnk_03004D84 += 5;
}

// 4C86C
void sub_0804C86C(void)
{
    gBg2XMag = gBg2YMag = ReadU16(gUnk_03004D84 + 2);
    gUnk_03004D84 += 4;
}

// 4C898
void sub_0804C898(void)
{
    // 0x1177e4
    u8 subroutine_arg0[0x10] = {
        0,  1,  2,  4,  6,  4,  2,  1,
        0, -1, -2, -4, -6, -4, -2, -1
    };

    if (gUnk_0300081C->unk17_1 != 0)
    {
        gEntityInfo[0xD].visible = (gUnk_03004C20.globalFrameCounter / 0x20) % 2;
    }
    else
    {
        gEntityInfo[0xD].visible = 0;
    }
}

// 4C8F4
s32 sub_0804C8F4(struct Unk_030052A4 *arg0)
{
    s32 var_r5;
    s32 var_r8;

    var_r8 = 0;

    for (var_r5 = 0; var_r5 < 0x10; var_r5++)
    {
        if (arg0[var_r5].unk0_0 != 0)
        {
            if (gUnk_030034A0->unk0_6 != 0)
            {
                arg0[var_r5].unk0_0 |= 4;
            }

            arg0[var_r5].unk0_0 = arg0[var_r5].unk20(var_r5);
            if (arg0[var_r5].unk0_0 != 0)
            {
                var_r8 += 1;
            }
        }
    }

    for (var_r5 = 0x10; var_r5 < 0x20; var_r5++)
    {
        if (arg0[var_r5].unk0_0 != 0)
        {
            arg0[var_r5].unk0_0 = arg0[var_r5].unk20(var_r5);
        }
    }

    return (gUnk_030034A0->unk0_6 != 0) ? var_r8 : 0;
}

struct Unk_0804C9A8 {
    u16 unk0;
    u16 unk2;
};
// 4C9A8
s32 sub_0804C9A8(struct Unk_030052A4 *arg0, struct Unk_0804C9A8 *arg1)
{
    if (arg0->unk4 > 0)
    {
        if ((arg0->unkC + arg0->unk8) > arg0->unk4)
        {
            arg0->unk8 = arg0->unk4 - arg0->unkC;
            arg1->unk0 = arg0->unk8;
            arg0->unk8 = 0;
        }
        else
        {
            arg1->unk0 = arg0->unk8;
        }
    }

    if (arg0->unk4 < 0)
    {
        if ((arg0->unkC + arg0->unk8) < arg0->unk4)
        {
            arg0->unk8 = arg0->unkC - arg0->unk4;
            arg1->unk0 = arg0->unk8;
            arg0->unk8 = 0;
        }
        else
        {
            arg1->unk0 = arg0->unk8;
        }
    }

    if (arg0->unk6 > 0)
    {
        if ((arg0->unkE + arg0->unkA) > arg0->unk6)
        {
            arg0->unkA = arg0->unk6 - arg0->unkE;
            arg1->unk2 = arg0->unkA;
            arg0->unkA = 0;
        }
        else
        {
            arg1->unk2 = arg0->unkA;
        }
    }

    if (arg0->unk6 < 0)
    {
        if ((arg0->unkE + arg0->unkA) < arg0->unk6)
        {
            arg0->unkA = arg0->unkE - arg0->unk6;
            arg1->unk2 = arg0->unkA;
            arg0->unkA = 0;
        }
        else
        {
            arg1->unk2 = arg0->unkA;
        }
    }

    return (arg0->unk8 == 0) && (arg0->unkA == 0);
}

struct Unk_0804CA6C {
    u16 unk0;
    u16 unk2;
};
// 4CA6C
s32 sub_0804CA6C(struct Unk_030052A4 *arg0, struct Unk_0804CA6C *arg1)
{
    arg1->unk0 = (arg0->unk8 * SIN((arg0->unk14 * arg0->unk10[0xE]) % 0x100u)) >> 8;
    arg1->unk2 = (arg0->unkA * SIN((arg0->unk14 * arg0->unk10[0xE]) % 0x100u)) >> 8;

    if (arg0->unk14 <= 0)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

// 4CAC4
void sub_0804CAC4(void)
{
    return;
}

// 4CAC8
s32 sub_0804CAC8(s32 arg0)
{
    struct Unk_0804CA6C subroutine_arg0 = {
        .unk0 = 0,
        .unk2 = 0
    };

    if (sub_0804CA6C(&gUnk_030052A4[arg0], &subroutine_arg0) != 0)
    {
        return 0;
    }

    switch (gUnk_030052A4[arg0].unk0_3)
    {
        case 0:
            gBgInfo[gUnk_030052A4[arg0].unk1_3].hOfs += subroutine_arg0.unk0;
            gBgInfo[gUnk_030052A4[arg0].unk1_3].vOfs += subroutine_arg0.unk2;
            break;

        case 2:
            gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].xPosBg2 += subroutine_arg0.unk0;
            gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosBg2 += subroutine_arg0.unk2;

            gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].xPosScreen = gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].xPosBg2 >> 4;
            gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosScreen = gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosBg2 >> 4;
            break;

        case 4:
            if (gUnk_030052A4[arg0].unk1_3 & 2)
            {
                gUnk_030034A0->winX1Y1[gUnk_030052A4[arg0].unk1_3 & 1][WIN_H] += subroutine_arg0.unk0;
                gUnk_030034A0->winX1Y1[gUnk_030052A4[arg0].unk1_3 & 1][WIN_V] += subroutine_arg0.unk2;
            }
            else
            {
                gUnk_030034A0->winX2Y2[gUnk_030052A4[arg0].unk1_3 & 1][WIN_H] += subroutine_arg0.unk0;
                gUnk_030034A0->winX2Y2[gUnk_030052A4[arg0].unk1_3 & 1][WIN_V] += subroutine_arg0.unk0;
            }

            CutsceneSetWindowDimensions();
            break;
    }

    gUnk_030052A4[arg0].unk14 -= 1;
    return 1;
}

// 4CC4C
s32 sub_0804CC4C(s32 arg0)
{
    struct Unk_0804C9A8 subroutine_arg0 = {
        .unk0 = 0,
        .unk2 = 0
    };

    if (sub_0804C9A8(&gUnk_030052A4[arg0], &subroutine_arg0) != 0)
    {
        return 0;
    }

    gUnk_030052A4[arg0].unkC += subroutine_arg0.unk0;
    gUnk_030052A4[arg0].unkE += subroutine_arg0.unk2;

    switch (gUnk_030052A4[arg0].unk0_3)
    {
        case 0:
            gBgInfo[gUnk_030052A4[arg0].unk1_3].hOfs += subroutine_arg0.unk0;
            gBgInfo[gUnk_030052A4[arg0].unk1_3].vOfs += subroutine_arg0.unk2;
            break;

        case 1:
            gBg2XMag += subroutine_arg0.unk0;
            gBg2YMag += subroutine_arg0.unk2;
            break;

        case 2:
            gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].xPosBg2 += subroutine_arg0.unk0;
            gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosBg2 += subroutine_arg0.unk2;

            gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].xPosScreen = gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].xPosBg2 >> 4;
            gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosScreen = gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosBg2 >> 4;
            break;

        case 3:
            gUnk_030052A4[arg0].unk16 += subroutine_arg0.unk0;
            gUnk_030052A4[arg0].unk18 += subroutine_arg0.unk2;

            gOamAffineBuffer[gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].affineHFlip_matrixNum].pa = MultiplyQ8(COS(0), ReciprocalQ8(gUnk_030052A4[arg0].unk16));
            gOamAffineBuffer[gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].affineHFlip_matrixNum].pb = 0;
            gOamAffineBuffer[gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].affineHFlip_matrixNum].pc = 0;
            gOamAffineBuffer[gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].affineHFlip_matrixNum].pd = MultiplyQ8(COS(0), ReciprocalQ8(gUnk_030052A4[arg0].unk18));
            break;

        case 4:
            if (gUnk_030052A4[arg0].unk1_3 & 2)
            {
                gUnk_030034A0->winX1Y1[gUnk_030052A4[arg0].unk1_3 & 1][WIN_H] += subroutine_arg0.unk0;
                gUnk_030034A0->winX1Y1[gUnk_030052A4[arg0].unk1_3 & 1][WIN_V] += subroutine_arg0.unk2;
            }
            else
            {
                gUnk_030034A0->winX2Y2[gUnk_030052A4[arg0].unk1_3 & 1][WIN_H] += subroutine_arg0.unk0;
                gUnk_030034A0->winX2Y2[gUnk_030052A4[arg0].unk1_3 & 1][WIN_V] += subroutine_arg0.unk2;
            }
            break;
    }

    return 1;
}

// 4CF28
s32 sub_0804CF28(s32 arg0)
{
    if (gUnk_030052A4[arg0].unk0_3 == 0)
    {
        gBgInfo[gUnk_030052A4[arg0].unk1_3].hOfs += gUnk_030052A4[arg0].unk8;
        gBgInfo[gUnk_030052A4[arg0].unk1_3].vOfs += gUnk_030052A4[arg0].unkA;
    }
    return 1;
}

// 4CF80
s32 sub_0804CF80(s32 arg0)
{

    gUnk_030052A4[arg0].unk14 -= 1;
    if (gUnk_030052A4[arg0].unk14 <= 0)
    {
        sub_0804C1C0(gUnk_030052A4[arg0].unk4, gUnk_030052A4[arg0].unkC);
        gUnk_030052A4[arg0].unk14 = gUnk_030052A4[arg0].unk8;

        gUnk_030052A4[arg0].unkC += 1;
        if (gUnk_030052A4[arg0].unkC >= (gUnk_030052A4[arg0].unk1F + gUnk_030052A4[arg0].unk1E))
        {
            gUnk_030052A4[arg0].unkC = gUnk_030052A4[arg0].unk1E;
        }
    }

    return 1;
}

// 4CFD0
s32 sub_0804CFD0(s32 arg0)
{
    // 0x1177f4
    s8 subroutine_arg0[4][0x10] = {
        [0] = {
            1, 1, 2, -2, -1, -1, 0, 0,
            1, 1, 2, -2, -1, -1, 0, 0
        },
        [1] = {
            -1, -1, -2, -2, -1, -1, 0, 0,
             1,  1,  2,  2,  1,  1, 0, 0
        },
        [2] = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0
        },
        [3] = {
            0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0
        }
    };

    gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosBg2 += subroutine_arg0[gUnk_030052A4[arg0].unk1F][(gUnk_030052A4[arg0].unkE >> gUnk_030052A4[arg0].unk1A) % 0x10u] * gUnk_030052A4[arg0].unk1C;
    gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosScreen = gEntityInfo[gUnk_030052A4[arg0].unk1_7 + 0xD].yPosBg2 >> 4;

    gUnk_030052A4[arg0].unkE += 1;
    if ((gUnk_030052A4[arg0].unkE >= gUnk_030052A4[arg0].unk14) && (gUnk_030052A4[arg0].unk1E != 0))
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

// 4D074
s32 sub_0804D074(s32 arg0)
{
    if (gNewKeys & A_BUTTON)
    {
        return 0;
    }

    gUnk_030052A4[arg0].unk14 -= 1;
    if ((gUnk_030052A4[arg0].unk1E != 0) || (gUnk_030052A4[arg0].unk14 >= 0))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

// 4D0B0
s32 sub_0804D0B0(s32 arg0)
{
    s32 var_r4;
    u8 temp_r5;

    // 0x117834
    s8 sp0[8 * 2] = {
        32, 36,
        -24, -8,
        8, 14,
        20, 8,
        40, -20,
        -30, 32,
        46, 24,
        64, 48
    };
    // 0x117844
    u8 sp10[8 * 2] = {
        130, 96,
        100, 92,
        107, 76,
        120, 77,
        130, 80,
        128, 70,
        124, 82,
        112, 70
    };

    switch (gUnk_030052A4[arg0].unk3_3)
    {
        case 0:
            if (gUnk_030052A4[arg0].unkC <= 0)
            {
                break;
            }
            
            for (var_r4 = 0xD; var_r4 < gEntitySlotCount; var_r4++)
            {
                temp_r5 = var_r4 % 8;

                if (gEntityInfo[var_r4].id != ENTITY_ID_50)
                {
                    gEntityInfo[var_r4].visible = 0;
                    continue;
                }

                gEntityInfo[var_r4].visible = 1;

                gEntityInfo[var_r4].affineEnable = 1;
                gEntityInfo[var_r4].affineHFlip_matrixNum = temp_r5;
                gEntityInfo[var_r4].affineDouble = 1;

                gEntityInfo[var_r4].xPosBg2 = sp10[(temp_r5 * 2) + 0] * 0x10;
                gEntityInfo[var_r4].yPosBg2 = sp10[(temp_r5 * 2) + 1] * 0x10;

                gOamAffineBuffer[temp_r5].pa = 0x100 + ((temp_r5 + 1) * 0x30);
                gOamAffineBuffer[temp_r5].pb = 0;
                gOamAffineBuffer[temp_r5].pc = 0;
                gOamAffineBuffer[temp_r5].pd = 0x100 + ((temp_r5 + 1) * 0x30);

                gEntityInfo[var_r4].xPosScreen = gEntityInfo[var_r4].xPosBg2 >> 4;
                gEntityInfo[var_r4].yPosScreen = gEntityInfo[var_r4].yPosBg2 >> 4;
            }

            gUnk_030052A4[arg0].unk3_3 = 1;
            break;

        case 1:
            for (var_r4 = 0xD; var_r4 < gEntitySlotCount; var_r4++)
            {
                if (gEntityInfo[var_r4].id != ENTITY_ID_50)
                {
                    continue;
                }

                temp_r5 = var_r4 % 8;
                gEntityInfo[var_r4].xPosBg2 += sp0[(temp_r5 * 2) + 0];
                gEntityInfo[var_r4].yPosBg2 += sp0[(temp_r5 * 2) + 1];

                gEntityInfo[var_r4].xPosScreen = gEntityInfo[var_r4].xPosBg2 >> 0x4;
                gEntityInfo[var_r4].yPosScreen = gEntityInfo[var_r4].yPosBg2 >> 0x4;
            }

            if (gUnk_030052A4[arg0].unkC > 0x3C)
            {
                gUnk_030052A4[arg0].unk3_3 = 2;
            }
            else if (gUnk_030052A4[arg0].unkC > 0x14)
            {
                for (var_r4 = 0xD; var_r4 < gEntitySlotCount; var_r4++)
                {
                    temp_r5 = var_r4 % 8;
                    gOamAffineBuffer[temp_r5].pa = 0x60;
                    gOamAffineBuffer[temp_r5].pb = 0;
                    gOamAffineBuffer[temp_r5].pc = 0;
                    gOamAffineBuffer[temp_r5].pd = 0x60;
                }
            }
            break;

        case 2:
            for (var_r4 = 0xD; var_r4 < gEntitySlotCount; var_r4++)
            {
                gEntityInfo[var_r4].visible = 0;
            }
            return 0;
    }

    gUnk_030052A4[arg0].unkE -= gUnk_030052A4[arg0].unkA;
    gUnk_030052A4[arg0].unkC += 1;
    return 1;
}

// 4D32C
void sub_0804D32C(void)
{
    gBlendValue = 0x10;
    REG_BLDCNT = BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_DARKEN;
    REG_DISPCNT = (gUnk_081177C4[3]) | (gUnk_030034A0->unk1_0) | (gUnk_030034A0->unk1_7 << 13);

    gUnk_030052A4[gUnk_03004D84[2]].unkA = ReadS16(gUnk_03004D84 + 3);
    gUnk_030052A4[gUnk_03004D84[2]].unkA = 3;
    gUnk_030052A4[gUnk_03004D84[2]].unkE = 0x120;
    gUnk_030052A4[gUnk_03004D84[2]].unkC = 0;
    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804D0B0;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;
    gUnk_030052A4[gUnk_03004D84[2]].unk3_3 = 0;

    gUnk_03004D84 += 5;
}

// 4D408
void sub_0804D408(void)
{
    s32 temp_r5;
    u32 temp_r1;

    temp_r1 = gUnk_03004D84[2];

    gUnk_030052A4[temp_r1 % 0x40].unk1_3 = temp_r1 >> 6;
    gUnk_030052A4[temp_r1 % 0x40].unk4 = ReadS16(gUnk_03004D84 + 3) << 4;
    gUnk_030052A4[temp_r1 % 0x40].unk6 = ReadS16(gUnk_03004D84 + 5) << 4;

    temp_r5 = ReadS16(gUnk_03004D84 + 7);
    gUnk_030052A4[temp_r1 % 0x40].unk8 = DivideQ4(gUnk_030052A4[temp_r1 % 0x40].unk4, temp_r5 << 4);
    gUnk_030052A4[temp_r1 % 0x40].unkA = DivideQ4(gUnk_030052A4[temp_r1 % 0x40].unk6, temp_r5 << 4);

    gUnk_030052A4[temp_r1 % 0x40].unkE = 0;
    gUnk_030052A4[temp_r1 % 0x40].unkC = 0;
    gUnk_030052A4[temp_r1 % 0x40].unk0_3 = 0;
    gUnk_030052A4[temp_r1 % 0x40].unk20 = sub_0804CC4C;
    gUnk_030052A4[temp_r1 % 0x40].unk0_0 = 1;

    gUnk_03004D84 += 9;
}

// 4D4D8
void sub_0804D4D8(void)
{
    s32 temp_r4;

    gUnk_030052A4[gUnk_03004D84[2]].unk1_7 = gUnk_03004D84[3];
    gUnk_030052A4[gUnk_03004D84[2]].unk4 = ReadS16(gUnk_03004D84 + 4) << 4;
    gUnk_030052A4[gUnk_03004D84[2]].unk6 = ReadS16(gUnk_03004D84 + 6) << 4;

    temp_r4 = ReadS16(gUnk_03004D84 + 8);
    gUnk_030052A4[gUnk_03004D84[2]].unk8 = DivideQ4(gUnk_030052A4[gUnk_03004D84[2]].unk4, temp_r4 << 4);
    gUnk_030052A4[gUnk_03004D84[2]].unkA = DivideQ4(gUnk_030052A4[gUnk_03004D84[2]].unk6, temp_r4 << 4);

    gUnk_030052A4[gUnk_03004D84[2]].unkC = gUnk_030052A4[gUnk_03004D84[2]].unkE = 0;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_3 = 2;
    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CC4C;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;

    gEntityInfo[gUnk_03004D84[3] + 0xD].xPosBg2 = gEntityInfo[gUnk_03004D84[3] + 0xD].xPosScreen * 0x10;
    gEntityInfo[gUnk_03004D84[3] + 0xD].yPosBg2 = gEntityInfo[gUnk_03004D84[3] + 0xD].yPosScreen * 0x10;

    gUnk_03004D84 += 0xA;
}

// 4D63C
void sub_0804D63C(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk4 = gUnk_030052A4[gUnk_03004D84[2]].unk6 = ReadS16(gUnk_03004D84 + 4);
    gUnk_030052A4[gUnk_03004D84[2]].unk8 = gUnk_030052A4[gUnk_03004D84[2]].unkA = DivideQ8(gUnk_030052A4[gUnk_03004D84[2]].unk6, ReadS16(gUnk_03004D84 + 6) << 8);

    gUnk_030052A4[gUnk_03004D84[2]].unk1_7 = gUnk_03004D84[3];
    gUnk_030052A4[gUnk_03004D84[2]].unk16 = ReciprocalQ8(gOamAffineBuffer[gEntityInfo[gUnk_03004D84[3] + 0xD].affineHFlip_matrixNum].pa);
    gUnk_030052A4[gUnk_03004D84[2]].unk18 = ReciprocalQ8(gOamAffineBuffer[gEntityInfo[gUnk_03004D84[3] + 0xD].affineHFlip_matrixNum].pd);

    gUnk_030052A4[gUnk_03004D84[2]].unkC = gUnk_030052A4[gUnk_03004D84[2]].unkE = 0;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_3 = 3;
    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CC4C;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;

    gUnk_03004D84 += 8;
}

// 4D798
void sub_0804D798(void)
{
    s32 temp_r4;

    gUnk_030052A4[gUnk_03004D84[2]].unk4 = ReadS16(gUnk_03004D84 + 4) << 4;
    gUnk_030052A4[gUnk_03004D84[2]].unk6 = ReadS16(gUnk_03004D84 + 6) << 4;

    temp_r4 = ReadS16(gUnk_03004D84 + 8);
    gUnk_030052A4[gUnk_03004D84[2]].unk8 = DivideQ4(gUnk_030052A4[gUnk_03004D84[2]].unk4, temp_r4 << 4);
    gUnk_030052A4[gUnk_03004D84[2]].unkA = DivideQ4(gUnk_030052A4[gUnk_03004D84[2]].unk6, temp_r4 << 4);

    gUnk_030052A4[gUnk_03004D84[2]].unkC = gUnk_030052A4[gUnk_03004D84[2]].unkE = 0;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_3 = 4;
    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CC4C;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;
    gUnk_030052A4[gUnk_03004D84[2]].unk1_3 = gUnk_03004D84[3];

    gUnk_03004D84 += 0xA;
}

// 4D8D4
void sub_0804D8D4(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk4 = gUnk_030052A4[gUnk_03004D84[2]].unk6 = ReadS16(gUnk_03004D84 + 3);
    gUnk_030052A4[gUnk_03004D84[2]].unk8 = gUnk_030052A4[gUnk_03004D84[2]].unkA = DivideQ8(gUnk_030052A4[gUnk_03004D84[2]].unk6, ReadS16(gUnk_03004D84 + 5) << 8);

    gUnk_030052A4[gUnk_03004D84[2]].unkC = gUnk_030052A4[gUnk_03004D84[2]].unkE = 0;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_3 = 1;
    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CC4C;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;

    gUnk_03004D84 += 7;
}

// 4D99C
void sub_0804D99C(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk1_3 = gUnk_03004D84[3];
    gUnk_030052A4[gUnk_03004D84[2]].unk8 = gUnk_03004D84[4];
    gUnk_030052A4[gUnk_03004D84[2]].unkA = gUnk_03004D84[5];
    gUnk_030052A4[gUnk_03004D84[2]].unk14 = ReadS16(gUnk_03004D84 + 6);
    gUnk_030052A4[gUnk_03004D84[2]].unk1E = gUnk_03004D84[8];

    gUnk_030052A4[gUnk_03004D84[2]].unk0_3 = 0;
    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CAC8;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;

    gUnk_03004D84 += 9;
}

// 4DA60
void sub_0804DA60(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk1_7 = gUnk_03004D84[3];
    gUnk_030052A4[gUnk_03004D84[2]].unk8 = gUnk_03004D84[4];
    gUnk_030052A4[gUnk_03004D84[2]].unkA = gUnk_03004D84[5];
    gUnk_030052A4[gUnk_03004D84[2]].unk14 = ReadS16(gUnk_03004D84 + 6);
    gUnk_030052A4[gUnk_03004D84[2]].unk1E = gUnk_03004D84[8];

    gUnk_030052A4[gUnk_03004D84[2]].unk0_3 = 2;
    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CAC8;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;

    gUnk_03004D84 += 9;
}

// 4DB38
void sub_0804DB38(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk8 = gUnk_03004D84[4];
    gUnk_030052A4[gUnk_03004D84[2]].unkA = gUnk_03004D84[5];
    gUnk_030052A4[gUnk_03004D84[2]].unk1_3 = gUnk_03004D84[3];

    gUnk_030052A4[gUnk_03004D84[2]].unk0_3 = 0;
    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CF28;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;

    gUnk_03004D84 += 6;
}

// 4DBD4
void sub_0804DBD4(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk4 = gUnk_03004D84[3];
    gUnk_030052A4[gUnk_03004D84[2]].unkC = gUnk_030052A4[gUnk_03004D84[2]].unk1E = gUnk_03004D84[4];

    gUnk_030052A4[gUnk_03004D84[2]].unk1F = gUnk_03004D84[5];
    gUnk_030052A4[gUnk_03004D84[2]].unk14 = gUnk_030052A4[gUnk_03004D84[2]].unk8 = gUnk_03004D84[6];

    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CF80;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;

    gUnk_03004D84 += 7;
}

// 4DC64
s32 sub_0804DC64(s32 arg0)
{
    REG_IE |= INTR_FLAG_HBLANK;
    REG_DISPSTAT |= DISPSTAT_HBLANK_INTR;

    if (gUnk_030052A4[arg0].unk3_7 != 0)
    {
        return 1;
    }

    gUnk_030052A4[arg0].unk14 -= 1;
    if (gUnk_030052A4[arg0].unk14 < 0)
    {
        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
        return 0;
    }

    return 1;
}

// 4DCCC
void sub_0804DCCC(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk14 = ReadS16(gUnk_03004D84 + 3);
    gUnk_030052A4[gUnk_03004D84[2]].unk3_7 = (gUnk_030052A4[gUnk_03004D84[2]].unk14 < 0) ? 1 : 0;

    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804DC64;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;
    gUnk_03004D84 += 5;
}

// 4DD48
void sub_0804DD48(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk1_7 = gUnk_03004D84[3];
    gUnk_030052A4[gUnk_03004D84[2]].unk1F = gUnk_03004D84[4] >> 4;
    gUnk_030052A4[gUnk_03004D84[2]].unk1A = gUnk_03004D84[4] & 0xF;
    gUnk_030052A4[gUnk_03004D84[2]].unk1C = gUnk_03004D84[5];
    gUnk_030052A4[gUnk_03004D84[2]].unk14 = ReadS16(gUnk_03004D84 + 6);

    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804CFD0;
    gUnk_030052A4[gUnk_03004D84[2]].unkE = 0;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;
    gUnk_030052A4[gUnk_03004D84[2]].unk1E = (~gUnk_030052A4[gUnk_03004D84[2]].unk14 != 0);

    gUnk_03004D84 += 8;
}

// 4DE34
void sub_0804DE34(void)
{
    gUnk_030052A4[gUnk_03004D84[2]].unk14 = ReadS16(gUnk_03004D84 + 3);
    gUnk_030052A4[gUnk_03004D84[2]].unk1E = (gUnk_030052A4[gUnk_03004D84[2]].unk14 < 0) ? 1 : 0;

    gUnk_030052A4[gUnk_03004D84[2]].unk20 = sub_0804D074;
    gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 1;
    gUnk_030034A0->unk0_0 = 2;

    gUnk_03004D84 += 5;
}

// 4DEBC
void sub_0804DEBC(void)
{
    s32 var_r3;

    if (gUnk_03004D84[2] == 0xFF)
    {
        for (var_r3 = 0; var_r3 < 0x20; var_r3++)
        {
            gUnk_030052A4[var_r3].unk0_0 = 0;
        }

        REG_IE &= ~INTR_FLAG_HBLANK;
        REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
    }
    else
    {
        if (gUnk_030052A4[gUnk_03004D84[2]].unk20 == sub_0804DC64)
        {
            REG_IE &= ~INTR_FLAG_HBLANK;
            REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
        }

        gUnk_030052A4[gUnk_03004D84[2]].unk0_0 = 0;
    }

    gUnk_03004D84 += 3;
}

// 4DF80
s32 sub_0804DF80(void)
{
    gTransitioning = TRUE;

    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        REG_BLDCNT = gUnk_08057B4C[gUnk_030034A0->unk5];

        if (gUnk_030034A0->unk1_6 != 0)
        {
            gBlendValue -= 1;
            if (gBlendValue <= gUnk_030034A0->unk6)
            {
                gTransitioning = FALSE;
                gBlendValue = gUnk_030034A0->unk6;
                return 0;
            }
        }
        else
        {
            gBlendValue += 1;
            if (gBlendValue >= gUnk_030034A0->unk6)
            {
                gTransitioning = FALSE;
                gBlendValue = gUnk_030034A0->unk6;
                return 0;
            }
        }
    }

    return 1;
}

// 4E008
void sub_0804E008(void)
{
    if (gUnk_030034A0->unk1C_3)
    {
        gUnk_030034A0->unk18 += 0x10;
        if (gUnk_030034A0->unk18 > gUnk_030034A0->unkA)
        {
            gUnk_030034A0->unk1C_3 = 0;
            gUnk_030034A0->unk1C_2 = 0;
            gUnk_030034A0->unk18 = gUnk_030034A0->unkA;
            return;
        }
    }
    else
    {
        gUnk_030034A0->unk18 -= 0x10;
        if (gUnk_030034A0->unk18 < gUnk_030034A0->unkA)
        {
            gUnk_030034A0->unk1C_2 = 0;
            gUnk_030034A0->unk18 = gUnk_030034A0->unkA;
            return;
        }
    }

    switch (gUnk_030034A0->unk1C_0)
    {
        case 0:
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_030034A0->unk18);
            break;

        case 1:
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_030034A0->unk18);
            break;

        case 3:
            gSoundVolume = gUnk_030034A0->unk18;
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);
            break;
    }
}

// 4E0E8
void sub_0804E0E8(void)
{
    gTransitioning = TRUE;

    if ((gUnk_03004C20.globalFrameCounter % 2) != 0)
    {
        return;
    }

    if (gUnk_030034A0->unk1C_5 != 0)
    {
        gBlendValue -= 1;
        if ((gBlendValue & 0x80) != 0)
        {
            REG_DISPCNT &= ~DISPCNT_BG2_ON;
            gUnk_030034A0->unk1C_5 = 0;
        }
        return;
    }

    REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;

    gBlendValue += 1;
    if (gBlendValue >= 0x10)
    {
        gBlendValue = 0x10;

        gTransitioning = FALSE;
        sub_0804BF7C();
        EntityResetOamBuffer();

        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        m4aMPlayAllStop();
        gSoundVolume = 0x100;

        if ((gUnk_0805769C[gSceneSaveData->cutsceneId] & 0xF0) != 0)
        {
            gUnk_03004C20.world = gUnk_0805769C[gSceneSaveData->cutsceneId] >> 4;
            switch (gUnk_0805769C[gSceneSaveData->cutsceneId] & 0xF)
            {
                case 2:
                    if (gUnk_03004C20.world == 5)
                    {
                        gMosaicSize = 0xF;
                        gUnk_03004C20.level = 8;
                        gUnk_03004C20.world = 6;
                        gUnk_03003410.unk9 = 0;
                        gUnk_03003410.unkA = 0;

                        gCallbackQueue.next[0] = VisionAndVisionSelectInit;
                        gUnk_03003410.unk8 = 1;
                        gCallbackQueue.next[1] = EntityInit;
                        gCallbackQueue.next[2] = NULL + 1;
                        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                        gCallbackQueue.nextCount = 3;

                        gIntrTable.vBlank = VBlankIntr_Common;
                    }
                    return;
        
                case 0:
                case 8:
                    if (gUnk_03004C20.world != 0)
                    {
                        gMosaicSize = 0xF;
                        gUnk_03004C20.level = gUnk_0805769C[gSceneSaveData->cutsceneId] & 0xF;
                        gUnk_03003410.unk9 = 0;
                        gUnk_03003410.unkA = 0;

                        gCallbackQueue.next[0] = VisionAndVisionSelectInit;
                        gUnk_03003410.unk8 = 1;
                        gCallbackQueue.next[1] = EntityInit;
                        gCallbackQueue.next[2] = NULL + 1;
                        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                        gCallbackQueue.nextCount = 3;

                        gIntrTable.vBlank = VBlankIntr_Common;
                    }
                    break;
        
                case 4:
                    gUnk_03004C20.level = gUnk_0805769C[gSceneSaveData->cutsceneId] & 0xF;
                    gCallbackQueue.next[0] = InputHandler_Normal;
                    gCallbackQueue.next[1] = TransitionFromVisionSelectToWorldMap_FadeOut;
                    gCallbackQueue.next[2] = CommonWaitForNextFrame;
                    gCallbackQueue.next[3] = NULL + 1;
                    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                    gCallbackQueue.nextCount = 4;

                    gUnk_03004C20.sceneFrameCounter = -1;
                    gMosaicSize = 0xF;
                    gBlendValue = 0xF;
                    return;

                case 5:
                    gCallbackQueue.next[0] = InputHandler_Normal;
                    gCallbackQueue.next[1] = NamcoScreenHandler;
                    gCallbackQueue.next[2] = CommonWaitForNextFrame;
                    gCallbackQueue.next[3] = NULL + 1;
                    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                    gCallbackQueue.nextCount = 4;

                    sub_08003D58();
                    gTitleScreenStage = 0;
                    gUnk_03004C20.sceneFrameCounter = -1;
                    return;
            }
        }
    }
    else
    {
        gMosaicSize += 1;
    }

    sub_0804E008();
}

// 4E3D4
void sub_0804E3D4(void)
{
    gUnk_030034A0->unk0_0 = 0;
    gUnk_03004D84 += 2;
    gUnk_030034A0->unk2_1 = 1;
}

// 4E404
void sub_0804E404(void)
{
    gUnk_030034A0->unk0_0 = 2;
    gUnk_03004D84 += 2;
}

// 4E428
void sub_0804E428(void)
{
    gUnk_030034A0->unk0_0 = 0;
    gUnk_03004D84 += 2;
}

// 4E448
void sub_0804E448(void)
{
    gUnk_03000814 = ReadU16(gUnk_03004D84 + 2) + gUnk_03004C20.globalFrameCounter;
    gUnk_030034A0->unk0_0 = 2;
    gUnk_03004D84 += 4;
}

// 4E490
void sub_0804E490(void)
{
    REG_DISPCNT = gUnk_081177C4[gUnk_03004D84[2]] | (gUnk_030034A0->unk1_0) | (gUnk_030034A0->unk1_7 << 13);
    gUnk_03004D84 += 3;
}

// 4E4D4
void sub_0804E4D4(void)
{
    gTransitioning = TRUE;

    gUnk_030034A0->unk1_6 = 0;
    gUnk_030034A0->unk5 = gUnk_03004D84[2];
    gUnk_030034A0->unk6 = gUnk_03004D84[3];

    gUnk_030034A0->unk0_0 = 2;
    gUnk_03004D84 += 4;
}

// 4E520
void sub_0804E520(void)
{
    gTransitioning = TRUE;

    gUnk_030034A0->unk1_6 = 1;
    gUnk_030034A0->unk5 = gUnk_03004D84[2];
    gUnk_030034A0->unk6 = gUnk_03004D84[3];

    gUnk_030034A0->unk0_0 = 2;
    gUnk_03004D84 += 4;
}

// 4E568
void sub_0804E568(void)
{
    if (gUnk_03004D84[2] == 0)
    {
        gUnk_030034A0->unk2_1 ^= 2;
    }
    else
    {
        gUnk_030034A0->unk1C_6 ^= 1;
    }

    gUnk_03004D84 += 3;
}

// 4E5C4
void sub_0804E5C4(void)
{
    gUnk_030034A0->unk1C_5 ^= 1;
    gUnk_03004D84 += 2;
}

// 4E5F0
void sub_0804E5F0(void)
{
    gUnk_030034A0->unk5 = gUnk_03004D84[2];
    REG_BLDCNT = gUnk_08057B4C[gUnk_030034A0->unk5];
    gBlendValue = gUnk_03004D84[3];
    gUnk_03004D84 += 4;
}

// 4E634
void sub_0804E634(void)
{
    if (gUnk_03004D84[2] & 2)
    {
        gUnk_030034A0->winX1Y1[gUnk_03004D84[2] & 1][WIN_H] = gUnk_03004D84[3] << 4;
        gUnk_030034A0->winX1Y1[gUnk_03004D84[2] & 1][WIN_V] = gUnk_03004D84[4] << 4;
    }
    else
    {
        gUnk_030034A0->winX2Y2[gUnk_03004D84[2] & 1][WIN_H] = gUnk_03004D84[3] << 4;
        gUnk_030034A0->winX2Y2[gUnk_03004D84[2] & 1][WIN_V] = gUnk_03004D84[4] << 4;
    }
    
    CutsceneSetWindowDimensions();
    gUnk_03004D84 += 5;
}

// 4E6B4
void sub_0804E6B4(void)
{
    gUnk_030034A0->unk1_7 = gUnk_03004D84[2] & 3;
    REG_DISPCNT = (REG_DISPCNT & ~(7 | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON | DISPCNT_OBJWIN_ON)) | gUnk_030034A0->unk1_0 | (gUnk_030034A0->unk1_7 << 13);
    gUnk_03004D84 += 3;
}

// 4E708
void sub_0804E708(void)
{
    REG_WININ = gUnk_03004D84[2] | (gUnk_03004D84[3] << 8);
    REG_WINOUT = gUnk_03004D84[4] | (gUnk_03004D84[5] << 8);
    gUnk_03004D84 += 6;
}

// 4E738
void sub_0804E738(void)
{
    gUnk_030034A0->unk0_6 = 1;
    gUnk_030034A0->unk0_0 = 2;
    gUnk_03004D84 += 2;
}

// 4E76C
void sub_0804E76C(void)
{
    m4aMPlayAllStop();
    gUnk_03004D84 += 2;
}

// 4E784
void sub_0804E784(void)
{
    m4aSongNumStop(gUnk_03004D84[2]);
    gUnk_03004D84 += 3;
}

// 4E7A0
void sub_0804E7A0(void)
{
    if (gUnk_03004D84[2] < 0x23)
    {
        m4aSongNumStart(gUnk_03004D84[2]);
    }
    else
    {
        m4aSongNumStart(gUnk_03004D84[2]);
    }

    gUnk_03004D84 += 3;
}

// 4E7D0
void sub_0804E7D0(void)
{
    m4aMPlayAllContinue();
    gUnk_03004D84 += 2;
}

// 4E7E8
void sub_0804E7E8(void)
{
    gUnk_03004D84 += 3;
}

// 4E7F8
void sub_0804E7F8(void)
{
    m4aMPlayAllStop();
    m4aSoundVSyncOff();
    gUnk_03004D84 += 2;
}

// 4E814
void sub_0804E814(void)
{
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    gUnk_03004D84 += 2;
}

// 4E850
void sub_0804E850(void)
{
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    gUnk_03004D84 += 2;
}

// 4E884
void sub_0804E884(void)
{
    if (gUnk_03004D84[2] < 0x23)
    {
        REG_IE |= INTR_FLAG_VBLANK;
        REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOn();
        m4aSongNumStart(gUnk_03004D84[2]);
    }
    else
    {
        REG_IE |= INTR_FLAG_VBLANK;
        REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOn();
        m4aSongNumStart(gUnk_03004D84[2]);
    }

    gUnk_03004D84 += 3;
}

// 4E8FC
void sub_0804E8FC(void)
{
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    gUnk_03004D84 += 2;
}

// 4E93C
void sub_0804E93C(void)
{
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
    m4aMPlayAllContinue();

    gUnk_03004D84 += 2;
}

// 4E974
void sub_0804E974(void)
{
    gUnk_030034A0->unk18 = ReadU16(gUnk_03004D84 + 2);
    gSoundVolume = gUnk_030034A0->unk18;
    m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gSoundVolume);
    m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gSoundVolume);
    m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gSoundVolume);
    m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gSoundVolume);

    gUnk_03004D84 += 4;
}

// 4E9DC
void sub_0804E9DC(void)
{
    gUnk_030034A0->unk1C_0 = gUnk_03004D84[2];

    gUnk_030034A0->unkA = ReadU16(gUnk_03004D84 + 3);
    if (gUnk_030034A0->unkA & 0x8000)
    {
        gUnk_030034A0->unk1C_3 = 1;
    }
    gUnk_030034A0->unkA &= 0x1FF;
    gUnk_030034A0->unk1C_2 = 1;

    gUnk_03004D84 += 5;
}

// 4EA44
void sub_0804EA44(void)
{
    if (gUnk_030034A0->unk1C_4)
    {
        gIntrTable.vBlank = VBlankIntr_CutsceneTransition;
        gUnk_030034A0->unk1C_4 = 0;
    }
    else
    {
        gIntrTable.vBlank = VBlankIntr_Cutscene;
        gUnk_030034A0->unk1C_4 = 1;
    }

    gUnk_03004D84 += 2;
}

// 0x117854
void (*const gUnk_08117854[0xA])(void) = {
    sub_0804C774,
    sub_0804C1A0,
    sub_0804C1FC,
    sub_0804C230,
    sub_0804C300,
    sub_0804C0BC,
    sub_0804C24C,
    sub_0804C3A4,
    sub_0804C484,
    sub_0804C6E0
};

// 0x11787c
void (*const gUnk_0811787C[0xF])(void) = {
    sub_0804E738,
    sub_0804D408,
    sub_0804D4D8,
    sub_0804D63C,
    sub_0804D798,
    sub_0804D32C,
    sub_0804D8D4,
    sub_0804D99C,
    sub_0804DA60,
    sub_0804DB38,
    sub_0804DEBC,
    sub_0804DBD4,
    sub_0804DD48,
    sub_0804DE34,
    sub_0804DCCC
};

// 0x1178b8
void (*const gUnk_081178B8[0x8])(void) = {
    sub_0804C774,
    sub_0804C798,
    sub_0804C7FC,
    sub_0804C844,
    sub_0804C86C,
    sub_0804C598,
    sub_0804C60C,
    sub_0804C6A8
};

// 0x1178d8
void (*const gUnk_081178D8[0xD])(void) = {
    sub_0804E3D4,
    sub_0804E404,
    sub_0804E428,
    sub_0804E448,
    sub_0804E490,
    sub_0804E4D4,
    sub_0804E520,
    sub_0804E568,
    sub_0804E5F0,
    sub_0804E634,
    sub_0804E6B4,
    sub_0804E708,
    sub_0804E5C4
};

// 0x11790c
void (*const gUnk_0811790C[0xE])(void) = {
    sub_0804E76C,
    sub_0804E784,
    sub_0804E7A0,
    sub_0804E7D0,
    sub_0804E7E8,
    sub_0804E7F8,
    sub_0804E814,
    sub_0804E850,
    sub_0804E884,
    sub_0804E8FC,
    sub_0804E93C,
    sub_0804E974,
    sub_0804E9DC,
    sub_0804EA44
};

// 0x117944
// TODO: unused? possibly autogenerated and could indicate split
const void* const gUnk_08117944[28] = {
    (void*)0x6000000,
    (void*)0x6003000,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x6004000,
    (void*)0x6003800,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x6008000,
    (void*)0x600E000,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x600C000,
    (void*)0x600E800,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0,
    (void*)0x0
};

// 0x1179b4
void (*const gUnk_081179B4[0xC])(void) = {
    sub_0804F160,
    sub_0804EFDC,
    sub_0804F050,
    sub_0804F034,
    sub_0804F004,
    sub_0804F074,
    sub_0804F0D0,
    sub_0804F114,
    sub_0804EFA0,
    sub_0804F13C,
    sub_0804F180,
    sub_0804F1B4
};

// 4EA94
void sub_0804EA94(void)
{
    gUnk_030034A0->unk0_0 = 3;

    do
    {
        if (gUnk_03004D84[0] == 0xFF)
        {
            if (gUnk_03004D84[1] & 0x80)
            {
                gUnk_081179B4[gUnk_03004D84[1] & 0xF]();
            }
            else if (gUnk_03004D84[1] & 0x40)
            {
                gUnk_0811787C[gUnk_03004D84[1] & 0x3F]();
            }
            else if (gUnk_03004D84[1] & 0x20)
            {
                if (gUnk_03004D84[1] & 0x10)
                {
                    gUnk_081178B8[gUnk_03004D84[1] & 0xF]();
                }
                else
                {
                    gUnk_08117854[gUnk_03004D84[1] & 0xF]();
                }
            }
            else if (gUnk_03004D84[1] & 0x10)
            {
                gUnk_0811790C[gUnk_03004D84[1] & 0xF]();
            }
            else
            {
                gUnk_081178D8[gUnk_03004D84[1] & 0xF]();
            }
        }
        else
        {
            if (sub_0804F248(gUnk_03004D84[0]) != 0)
            {
                gUnk_03004D84 += 1;
            }

            gUnk_030034A0->unk0_0 = 2;
        }
    }
    while (gUnk_030034A0->unk0_0 & 1);
}

// 4EB64
void CutsceneHandler(void)
{
    if (gUnk_030034A0->unk2_1 & 1)
    {
        gUnk_030034A0->unk1C_3 = 0;
        gUnk_030034A0->unkA = 0;

        if (gUnk_030034A0->unk1C_6)
        {
            REG_WININ = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR;
            REG_WINOUT = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;
            gBlendValue = BLEND_MAX - 1;
        }

        sub_0804E0E8();
        return;
    }

    sub_0804C898();

    if ((gUnk_030034A0->unk2_1 & 2) && (gNewKeys & START_BUTTON))
    {
        gUnk_030034A0->unk0_0 = 0;
        gUnk_030034A0->unk2_1 = 1;
        REG_DISPCNT &= ~DISPCNT_WIN1_ON;
        return;
    }

    if (gUnk_030034A0->unk1C_2)
    {
        sub_0804E008();
    }

    if (sub_0804C8F4(gUnk_030052A4) != 0)
    {
        return;
    }

    gUnk_030034A0->unk0_6 = 0;
    if ((gTransitioning != 0) && (sub_0804DF80() != 0))
    {
        return;
    }

    if (gUnk_0300081C->unk16_7)
    {
        sub_0804EF50();
        return;
    }

    if (gUnk_0300081C->unk16_4 & 1)
    {
        if (((s32) (gUnk_03000814 - gUnk_03004C20.globalFrameCounter) < 0xE0C) && (gNewKeys & A_BUTTON))
        {
            if (gUnk_0300081C->unk17_1)
            {
                gUnk_0300081C->unk17_1 = 0;
                gUnk_03000814 = gUnk_03004C20.globalFrameCounter;
            }
        }
    }
    else if ((gUnk_0300081C->unk16_4 == 4) && (gNewKeys & A_BUTTON))
    {
        gUnk_0300081C->unk16_4 |= 2;
    }

    if (!(gUnk_0300081C->unk16_4 & 2) || (gUnk_0300081C->unk16_4 & 1))
    {
        if ((s32) (gUnk_03000814 - gUnk_03004C20.globalFrameCounter) > 0)
        {
            return;
        }
    }
    else
    {
        gUnk_03000814 = gUnk_03004C20.globalFrameCounter;
    }

    if (gUnk_0300081C->unk17_1 == 0)
    {
        if ((gUnk_03004D84[0] == 0xFF) && (gUnk_03004D84[1] == 1))
        {
            sub_0804E404();
        }
        if (gUnk_030034A0->unk0_0 & 2)
        {
            sub_0804EA94();
        }
    }
}

// 4ED68
void sub_0804ED68(u32 arg0, void (*arg1)(), u8 arg2, u8 arg3)
{
    gUnk_0300081C = thunk_HeapAlloc(sizeof(*gUnk_0300081C), 0);
    DmaFill16(3, 0, gUnk_0300081C, sizeof(*gUnk_0300081C));

    gUnk_0300081C->unk0 = thunk_HeapAlloc(gUnk_082EA854[0] & 0x7FFFFFFF, 0);
    Decompress(gUnk_0300081C->unk0, &gUnk_082EA854);

    gUnk_0300081C->unk0 += 4;
    gUnk_0300081C->unkB = arg2;
    gUnk_0300081C->unkA = arg3;
    gUnk_0300081C->unk1C = BG_VRAM + (arg0 * 0x20);
    gUnk_0300081C->unk20 = BG_VRAM + (arg0 * 0x20);
    gUnk_0300081C->unk18 = arg0;
    gUnk_0300081C->unk1A = arg0;
    gUnk_0300081C->unk24 = arg1;
    gUnk_0300081C->unkE = 0x40;

    gUnk_0300081C->unk24();
}

// 4EE14
void sub_0804EE14(void)
{
    thunk_HeapFree(gUnk_0300081C->unk0 - 4);
    thunk_HeapFree(gUnk_0300081C);
}

// 4EE34
void sub_0804EE34(s16 arg0, s16 arg1, u16 arg2)
{
    gBgTilemapBufs[1][arg0 + (arg1 * 0x20)] = arg2 | 0xF000;
}

// 4EE60
void sub_0804EE60(void)
{
    s32 sp0;
    s32 var_r5;
    s32 var_r6;
    void* var_r7;
    u32 *var_ip;
    u32 var_r2;

    var_ip = gUnk_0300081C->unk0 + (gUnk_0300081C->unkE * gUnk_0300081C->unkD);
    var_r7 = BG_VRAM + (gUnk_0300081C->unk1A * 0x20);

    for (var_r6 = 0; var_r6 < 0x10; var_r6++, var_r7 += 4)
    {
        sp0 = 0;
        var_r2 = var_ip[var_r6];

        for (var_r5 = 0; var_r5 < 8; var_r5++)
        {
            if ((var_r2 & 0xF) == 2)
            {
                sp0 += ((gUnk_0300081C->unk16_0 * 2) + 2) << (var_r5 * 4);
            }

            if ((var_r2 & 0xF) == 1)
            {
                sp0 += ((gUnk_0300081C->unk16_0 * 2) + 1) << (var_r5 * 4);
            }

            var_r2 >>= 4;
        }

        DmaCopy16Wait(3, &sp0, var_r7, sizeof(sp0));
    }

    for (var_r6 = 0; var_r6 < 2; var_r6++)
    {
        sub_0804EE34(gUnk_0300081C->unk9, (gUnk_0300081C->unk8 * 2) + var_r6, gUnk_0300081C->unk1A + var_r6);
    }

    gUnk_0300081C->unk1A += 2;
}

// 4EF50
void sub_0804EF50(void)
{
    if (gUnk_0300081C->unk14 <= 0)
    {
        gUnk_0300081C->unk14 = 0;
        gUnk_0300081C->unk16_7 = 0;
    }
    else if ((gUnk_0300081C->unk14 > 0) && (gUnk_0300081C->unk14 < 0x10))
    {
        gBgInfo[1].vOfs += 1;
        gUnk_0300081C->unk14 -= 1;
    }
    else
    {
        gBgInfo[1].vOfs += 2;
        gUnk_0300081C->unk14 -= 2;
    }
}

// 4EFA0
void sub_0804EFA0(void)
{
    gUnk_0300081C->unk14 = 0x10;
    gUnk_0300081C->unk16_7 = 1;
    gUnk_03004D84 += 2;
}

// 4EFC4
void sub_0804EFC4(u8 arg0)
{
    gUnk_0300081C->unkD = arg0;
    gUnk_03004D84 += 2;
}

// 4EFDC
void sub_0804EFDC(void)
{
    gUnk_0300081C->unk24();
    gUnk_0300081C->unk1A = gUnk_0300081C->unk18;
    gUnk_03004D84 += 2;
}

// 4F004
void sub_0804F004(void)
{
    gUnk_0300081C->unk16_0 = gUnk_03004D84[2];
    gUnk_03004D84 += 3;
}

// 4F034
void sub_0804F034(void)
{
    gUnk_0300081C->unk5 = gUnk_03004D84[2];
    gUnk_03004D84 += 3;
}

// 4F050
void sub_0804F050(void)
{
    gUnk_0300081C->unk9 = 0;
    gUnk_0300081C->unk8 += 1;
    gUnk_03004D84 += 2;
}

// 4F074
void sub_0804F074(void)
{
    gUnk_0300081C->unk16_4 = 1;
    gUnk_03000814 = gUnk_03004C20.globalFrameCounter + 0x1E;
    gUnk_0300081C->unk17_1 = 1;
    gUnk_030034A0->unk0_0 ^= 1;
    gUnk_03004D84 += 2;
}

// 4F0D0
void sub_0804F0D0(void)
{
    gUnk_0300081C->unk24();
    gUnk_0300081C->unk9 = 0;
    gUnk_0300081C->unk8 = 0;
    gBgInfo[1].hOfs = gUnk_0300081C->unk10;
    gBgInfo[1].vOfs = gUnk_0300081C->unk12;
    gUnk_0300081C->unk1C = gUnk_0300081C->unk20;
    gUnk_0300081C->unk1A = gUnk_0300081C->unk18;
    gUnk_03004D84 += 2;
}

// 4F114
void sub_0804F114(void)
{
    gUnk_0300081C->unk16_4 = 0;
    gUnk_03004D84 += 2;
    gUnk_0300081C->unk1A = gUnk_0300081C->unk18;
}

// 4F13C
void sub_0804F13C(void)
{
    gUnk_0300081C->unk16_4 = 4;
    gUnk_03004D84 += 2;
}

// 4F160
void sub_0804F160(void)
{
    gUnk_0300081C->unk17_0 = 0;
    gUnk_03004D84 += 2;
}

// 4F180
void sub_0804F180(void)
{
    gUnk_0300081C->unk10 = ReadU16(gUnk_03004D84 + 2);
    gUnk_0300081C->unk12 = ReadU16(gUnk_03004D84 + 4);
    gUnk_03004D84 += 6;
}

// 4F1B4
void sub_0804F1B4(void)
{
    gUnk_03004D84 += 3;
}

// 4F1C4
s32 sub_0804F1C4(void)
{
    if ((gUnk_0300081C->unk16_4 & 2) != 0)
    {
        gUnk_0300081C->unk4 = 0;
    }
    else
    {
        if (gUnk_0300081C->unk4 != 0)
        {
            if (gUnk_0300081C->unk4-- <= 0)
            {
                gUnk_0300081C->unk4 = 0;
            }
            return 0;
        }
        else
        {
            gUnk_0300081C->unk4 = gUnk_0300081C->unk5;
        }
    }

    if (gUnk_0300081C->unk9 >= gUnk_0300081C->unkB)
    {
        gUnk_0300081C->unk9 = 0;
        gUnk_0300081C->unk8 += 1;
    }

    if (gUnk_0300081C->unk8 >= gUnk_0300081C->unkA)
    {
        return 0;
    }
    else
    {
        sub_0804EE60();
        gUnk_0300081C->unk9 += 1;
        return 1;
    }
}

// 4F248
s32 sub_0804F248(u8 arg0)
{
    gUnk_0300081C->unkD = arg0;
    return sub_0804F1C4();
}

// 4F25C
void sub_0804F25C(void)
{
    DmaFill16(3, 0, &gBgTilemapBufs[1], sizeof(gBgTilemapBufs[1]));
}
