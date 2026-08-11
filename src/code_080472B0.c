#include "global.h"
#include "code_080472B0.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "code_0800BFF4.h"
#include "code_08014184.h"
#include "code_080240F4.h"
#include "code_08039D8C.h"
#include "save.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "main.h"
#include "rand.h"
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

extern const u8 gUnk_0811717C[6][40][5];

extern const u16 gUnk_0811769C[0x20][4];
extern const u8 gUnk_0811779C[8];
extern const u16 gUnk_081177A4[8][2];

extern const u32 *gUnk_0818BA3C[0x20];
extern const u32 *gUnk_0818BABC[0x20];
extern const u32 *gUnk_0818BB3C[0x20];

extern u32 gUnk_082ECEA8[];
extern u32 gUnk_082ECEF8[];
extern u32 gUnk_082ED1FC[];

extern u32 gUnk_082F3B2C[];

extern u32 gUnk_082F43C4[];
extern u32 gUnk_082F47A8[];
extern u32 gUnk_082F48BC[];

extern u32 gUnk_082F4934[];
extern u32 gUnk_082F49E4[];
extern u32 gUnk_082F4B10[];
extern u32 gUnk_082F4D3C[];
extern u32 gUnk_082F518C[];
extern u32 gUnk_082F5920[];
extern u32 gUnk_082F5D0C[];
extern u32 gUnk_082F7D64[];

extern u32 gUnk_082F8BF8[];
extern u32 gUnk_082FA784[];
extern u32 gUnk_082FA8C0[];
extern u32 gUnk_082FB0E0[];
extern u32 gUnk_082FB280[];
extern u32 gUnk_082FBB9C[];
extern u32 gUnk_082FBE10[];

extern u32 gUnk_08312A58[];
extern u32 gUnk_08312B70[];

extern u32 gUnk_08366214[];
extern u32 gUnk_08367468[];

// 472B0
s8 sub_080472B0(void)
{
    if (gHeldKeys & DPAD_UP)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

// 472C8
void sub_080472C8(void)
{
    u32 var_r2;
    u32 tmp;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    REG_IE &= ~INTR_FLAG_HBLANK;
    REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
    m4aSoundVSyncOff();

    tmp = sub_080472B0();
    gUnk_0300549C = tmp;
    gUnk_03005428 = 1;
    sub_08003D58();
    DmaCopy32(3, gOamBuffer, OAM, 0x400);

    gUnk_03003410.unk8 = 1;
    gUnk_03004C20.level = 1;
    gUnk_03004C20.world = 1;
    sub_08003904();

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    for (var_r2 = 0; var_r2 < gUnk_03005428; var_r2++)
    {
        gEntityInfo[var_r2].priority = 3;
        gEntityInfo[var_r2].unk10 = 0;
        gEntityInfo[var_r2].unkF = 0x1C;
    }

    gBgInfo[0].pTiles = BG_VRAM;
    gBgInfo[0].pTilemap = BG_VRAM + 0x3000;
    gBgInfo[1].pTiles = BG_VRAM + 0x4000;
    gBgInfo[1].pTilemap = BG_VRAM + 0x7000;

    gBg2XMag = 0x200;
    gBg2YMag = 0x200;

    DecompressDma(&gUnk_082ECEA8, PLTT, 0x200);

    gBgDataPtrs.pBufBg0Tiles = thunk_HeapAlloc(gUnk_08312A58[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(gUnk_08312B70[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tiles = thunk_HeapAlloc(gUnk_082ECEF8[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tilemap = thunk_HeapAlloc(gUnk_082ED1FC[0] & 0x7FFFFFFF, 0);

    Decompress(gBgDataPtrs.pBufBg0Tiles, &gUnk_08312A58);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, &gUnk_08312B70);
    Decompress(gBgDataPtrs.pBufBg1Tiles, &gUnk_082ECEF8);
    Decompress(gBgDataPtrs.pBufBg1Tilemap, &gUnk_082ED1FC);

    gBgDataPtrs.pBufBg0Tiles += 4;
    gBgDataPtrs.pBufBg0Tilemap += 2;
    gBgDataPtrs.pBufBg1Tiles += 4;
    gBgDataPtrs.pBufBg1Tilemap += 2;

    DmaCopy16(3, gBgDataPtrs.pBufBg0Tiles, gBgInfo[0].pTiles, 0x260);
    DmaCopy16(3, gBgDataPtrs.pBufBg1Tiles, gBgInfo[1].pTiles, 0xCA0);
    DmaFill16(3, 0, gBgTilemapBufs, 0x800);
    DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap, &gBgTilemapBufs[0][0x400], 0x800);

    thunk_HeapFree(gBgDataPtrs.pBufBg1Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg1Tiles - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tiles - 4);

    gBgInfo[1].hOfs = 0;
    gBgInfo[1].vOfs = 0;
    REG_BG0CNT = BGCNT_MOSAIC | BGCNT_SCREENBASE(6);
    REG_BG1CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(14);
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
    gBg2YMag = 0x100;
    gBg2XMag = 0x100;
    gBg2Alpha = 0;
    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON;
    gUnk_030007F8 = 0;
    gUnk_030008F8 = 1;
    REG_BLDCNT = BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BD;
    gEntityInfo[0].unk8.split.unk8 = 5;

    gIntrTable.hBlank = sub_08000F70;
    gIntrTable.vBlank = sub_080009D8;

    REG_IE |= INTR_FLAG_HBLANK;
    REG_DISPSTAT |= DISPSTAT_HBLANK_INTR;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_IE |= INTR_FLAG_HBLANK;
    REG_DISPSTAT |= DISPSTAT_HBLANK_INTR;
    m4aSoundVSyncOn();
}

// 475DC
void sub_080475DC(void)
{
    u32 var_r7;

    if ((gNewKeys & SELECT_BUTTON) && (gUnk_0300549C == 1))
    {
        gEntityInfo[0].unk10 = 1;
        gEntityInfo[0].xPosBg2 = 0x78;
        gEntityInfo[0].yPosBg2 = 0x9C;
        sub_08025B78(0, 0x22);
    }

    if ((gEntityInfo[0].unk10 == 1) && (gEntityAnimationInfo->state != 0xC))
    {
        if (gHeldKeys & R_BUTTON)
        {
            gEntityInfo[0].unkC_2 = 0;
            if (gEntityAnimationInfo->state != 1)
            {
                sub_08025B78(0, 1);
            }

            if (gEntityInfo[0].xPosBg2 < 0xE0)
            {
                gEntityInfo[0].xPosBg2 += 2;
            }
        }
        else if (gHeldKeys & L_BUTTON)
        {
            gEntityInfo[0].unkC_2 = 1;
            if (gEntityAnimationInfo->state != 1)
            {
                sub_08025B78(0, 1);
            }

            if (gEntityInfo[0].xPosBg2 > 0x10)
            {
                gEntityInfo[0].xPosBg2 -= 2;
            }
        }
        else if (gEntityAnimationInfo->state != 0x22)
        {
            sub_08025B78(0, 0x22);
        }
    }

    for (var_r7 = 0xE; var_r7 <= 0x13; var_r7++)
    {
        switch (gEntityInfo[var_r7].unkF)
        {
            case 0:
                gEntityInfo[var_r7].yPosBg2 += gEntityInfo[var_r7].unk8.split.unk9;
                if (gEntityInfo[var_r7].yPosBg2 > 0xC0)
                {
                    gEntityInfo[var_r7].unkF = 0x1C;
                }

                if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[var_r7].xPosBg2 + 0xA)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[var_r7].xPosBg2 - 0xA)))
                {
                    if (((gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[var_r7].yPosBg2 - 8)) && (gEntityInfo[0].yPosBg2 > (gEntityInfo[var_r7].yPosBg2 - 0x14)))
                    {
                        sub_08025B78(0, 0xC);
                    }
                }
                break;

            case 28:
                gEntityInfo[var_r7].xPosBg2 = ((thunk_GetRandomValue() % 6) * 0x28) + (thunk_GetRandomValue() % 0x28);
                gEntityInfo[var_r7].yPosBg2 = 0;
                gEntityInfo[var_r7].unk8.split.unk9 = (thunk_GetRandomValue() % 3) + 2;
                gEntityInfo[var_r7].unkF = 0;
                gEntityInfo[var_r7].unkC_2 = thunk_GetRandomValue() % 4;

                if (var_r7 <= 0x11)
                {
                    sub_08025B78(var_r7, 2);
                }
                else
                {
                    sub_08025B78(var_r7, 1);
                }
                break;
        }
    }
}

// 477A8
void sub_080477A8(void)
{
    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        sub_080472C8();
    }

    sub_080475DC();
    sub_08025BA4();

    switch (gUnk_030007F8)
    {
        case 0:
            if (gNewKeys & DPAD_LEFT)
            {
                DmaCopy16(3, &gBgTilemapBufs[1][0x380], &gBgTilemapBufs[1][0xE0], 0x80);
                if (gUnk_030008F8 != 0)
                {
                    m4aSongNumStart(0x51);
                }
                gUnk_030008F8 = 0;
            }
            else if (gNewKeys & DPAD_RIGHT)
            {
                DmaCopy16(3, &gBgTilemapBufs[1][0x340], &gBgTilemapBufs[1][0xE0], 0x80);
                if (gUnk_030008F8 != 1)
                {
                    m4aSongNumStart(0x51);
                }
                gUnk_030008F8 = 1;
            }
            else if (gNewKeys & A_BUTTON)
            {
                if (gUnk_030008F8 == 1)
                {
                    gUnk_03004C20.sceneFrameCounter = 0;
                    m4aSongNumStart(0x54);
                    gUnk_030007F8 = 4;
                }
                else
                {
                    m4aSongNumStart(0x52);
                    gUnk_030007F8 = 1;
                    DmaCopy16(3, &gBgTilemapBufs[1][0x2C0], &gBgTilemapBufs[1][0x140], 0x80);
                    DmaCopy16(3, &gBgTilemapBufs[1][0x2C0] + 0x80, &gBgTilemapBufs[1][0x1A0], 0x80);
                    gUnk_030008F8 = 1;
                }
            }
            else if (gNewKeys & B_BUTTON)
            {
                gUnk_03004C20.sceneFrameCounter = 0;
                m4aSongNumStart(0x54);
                gUnk_030007F8 = 4;
            }
            break;

        case 1:
            if (gEntityInfo->unk8.split.unk8 < 10)
            {
                gEntityInfo->unk8.split.unk8 += 1;
                return;
            }

            if (gNewKeys & DPAD_LEFT)
            {
                DmaCopy16(3, &gBgTilemapBufs[1][0x380], &gBgTilemapBufs[1][0x1A0], 0x80);
                if (gUnk_030008F8 != 0)
                {
                    m4aSongNumStart(0x51);
                }
                gUnk_030008F8 = 0;
            }
            else if (gNewKeys & DPAD_RIGHT)
            {
                DmaCopy16(3, &gBgTilemapBufs[1][0x340], &gBgTilemapBufs[1][0x1A0], 0x80);
                if (gUnk_030008F8 != 1)
                {
                    m4aSongNumStart(0x51);
                }
                gUnk_030008F8 = 1;
            }
            else if (gNewKeys & A_BUTTON)
            {
                DmaFill16(3, 0, &gBgTilemapBufs[1][0], 0x500);
                if (gUnk_030008F8 == 1)
                {
                    gUnk_03004C20.sceneFrameCounter = 0;
                    m4aSongNumStart(0x54);
                    gUnk_030007F8 = 4;
                    gUnk_03004C20.sceneFrameCounter = 0;
                }
                else
                {
                    m4aSongNumStart(0x52);
                    gUnk_030007F8 = 2;
                }
            }
            else if (gNewKeys & B_BUTTON)
            {
                gUnk_03004C20.sceneFrameCounter = 0;
                m4aSongNumStart(0x54);
                gUnk_030007F8 = 4;
            }
            break;

        case 2:
            if (gEntityInfo->unk8.split.unk8 < 0xA0)
            {
                gEntityInfo->unk8.split.unk8 += 5;
                return;
            }

            REG_IE &= ~INTR_FLAG_VBLANK;
            REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
            REG_IE &= ~INTR_FLAG_HBLANK;
            REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
            m4aSoundVSyncOff();
            DeleteAllSaveData();
            REG_IE |= INTR_FLAG_VBLANK;
            REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
            gUnk_030007F8 = 3;
            break;

        case 3:
            DmaCopy16(3, &gBgTilemapBufs[1][0x300], &gBgTilemapBufs[1][0x120], 0x80);
            if (gNewKeys & A_BUTTON)
            {
                gUnk_030007F8 = 5;
            }
            break;

        case 4:
            if (gUnk_03004C20.sceneFrameCounter == 0x28)
            {
                gUnk_030007F8 = 5;
            }
            break;

        case 5:
            SoftResetRom(0xFF);
            break;
    }

    REG_BLDALPHA = 0;
}

// 47ABC
void sub_08047ABC(void)
{
    if (gUnk_03004D90.unk8 != 0)
    {
        gUnk_03004D90.unk8 = 0;
        REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
        REG_WININ &= ~WININ_WIN0_CLR;
    }

    if (gBlendValue > 8)
    {
        gCallbackQueue.current[0] = sub_08047B1C;
        return;
    }

    if ((gUnk_03004C20.globalFrameCounter % 4) == 0)
    {
        gBlendValue += 1;
    }
}

// 47B1C
void sub_08047B1C(void)
{
    u8 sp0;
    void *sp4;
    u16 *sp8;
    s32 var_r4;
    s32 var_r6;

    sp0 = 0;

    m4aMPlayAllStop();
    m4aSoundVSyncOff();

    REG_BLDCNT = BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
    gBlendValue = 9;
    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, 0x7);
    REG_BLDY = gBlendValue;
    REG_WININ = WININ_WIN0_BG0 | WININ_WIN1_BG0 | WININ_WIN1_BG1 | WININ_WIN1_BG2 | WININ_WIN1_OBJ | WININ_WIN1_CLR;
    REG_WINOUT = WINOUT_WIN01_BG1 | WINOUT_WIN01_BG2 | WINOUT_WIN01_BG3 | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;
    REG_WIN1H = gUnk_03004D90.unk4 = WIN_RANGE(0x78, 0x78);
    REG_WIN1V = gUnk_03004D90.unk6 = WIN_RANGE(0x4C, 0x4C);
    REG_DISPCNT |= DISPCNT_WIN1_ON;

    for (var_r4 = 0; var_r4 < gUnk_03005428; var_r4++)
    {
        gEntityInfo[var_r4].priority += 1;
    }

    if (gUnk_03004D90.unk9 == 0)
    {
        sub_08005CF4();
        VBlankIntrWait();
    }

    REG_BG0CNT &= ~BGCNT_PRIORITY_MASK;
    REG_BG0CNT += 0;
    REG_BG1CNT += 1;
    REG_BG2CNT += 1;
    REG_BG3CNT += 1;

    if (gUnk_03004D90.unk9 == 0)
    {
        for (var_r4 = 0; var_r4 < 0x20; var_r4++)
        {
            if ((gUnk_03004C20.world == gUnk_0811769C[var_r4][0]) && (gUnk_03004C20.level == gUnk_0811769C[var_r4][1]) && (((gEntityInfo->yPosBg2 - 0x10) >> 3) == gUnk_0811769C[var_r4][3]) && (((gEntityInfo->xPosBg2 + 8) >> 3) >= gUnk_0811769C[var_r4][2]) && (((gEntityInfo->xPosBg2 - 8) >> 3) <= (gUnk_0811769C[var_r4][2] + 3)))
            {
                sp0 = var_r4;
                break;
            }
        }
    }
    else
    {
        sp0 = gUnk_03004D90.unk9 + 0x1A;
    }

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082F3B2C[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(*gUnk_0818BA3C[sp0] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082F3B2C);
    Decompress(gBgDataPtrs.pBufBg3Tilemap, (void*)gUnk_0818BA3C[sp0]);

    for (var_r4 = 0, var_r6 = 0; var_r4 < 0x21C; var_r6++, var_r4++)
    {
        if (((var_r4 % 30) == 0) && (var_r4 != 0))
        {
            var_r6 += 2;
        }
        gBgTilemapBufs[0][var_r6] = gBgDataPtrs.pBufBg3Tilemap[var_r4 + 2] + gUnk_03000800;
    }

    if (sp0 != 0x1D)
    {
        sp4 = thunk_HeapAlloc(*gUnk_0818BB3C[sp0] & 0x7FFFFFFF, 0);
        sp8 = thunk_HeapAlloc(*gUnk_0818BABC[sp0] & 0x7FFFFFFF, 0);
        Decompress(sp4, (void*)gUnk_0818BB3C[sp0]);
        Decompress(sp8, (void*)gUnk_0818BABC[sp0]);

        for (var_r4 = 0, var_r6 = 0; var_r4 < 0x40; var_r6++, var_r4++)
        {
            if (((var_r4 % 0x10) == 0) && (var_r4 != 0))
            {
                var_r6 += 0x10;
            }
            gBgTilemapBufs[0][0x1A8 + var_r6] = sp8[var_r4 + 2] + gUnk_03000800 + 0x132;
        }
    }

    DmaCopy16Wait(3, gBgDataPtrs.pBufBg3Tiles + 4, BG_VRAM + (gUnk_03000800 * 0x20), 0x2640);
    if (sp0 != 0x1D)
    {
        DmaCopy16Wait(3, sp4 + 4, VRAM + 0x2640 + (gUnk_03000800 * 0x20), (*gUnk_0818BB3C[sp0] & 0x7FFFFFFF) - 4);
    }

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
    m4aSongNumStart(0x33);

    thunk_HeapFree(sp8);
    thunk_HeapFree(sp4);

    gCallbackQueue.next[0] = InputHandler_Normal;
    gCallbackQueue.next[1] = sub_08047EC8;
    gCallbackQueue.next[3] = NULL + 1;
    if (gUnk_03004D90.unk9 == 0)
    {
        gCallbackQueue.next[2] = sub_0800BFF4;
    }
    else
    {
        gCallbackQueue.next[2] = sub_0800C45C;
    }
    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    gCallbackQueue.nextCount = 4;
}

// 47EC8
void sub_08047EC8(void)
{
    u32 tmp;

    tmp = 0x2FD; // Required for matching, possibly another tmp for 0x4FB, or used inlines

    if (gUnk_03004D90.unk8 == 1)
    {
        if (gUnk_03004D90.unk4 == 0xF0)
        {
            gUnk_03004D90.unk8 = 0;
            return;
        }

        gUnk_03004D90.unk4 -= 0x4FB;
        gUnk_03004D90.unk6 -= tmp;
        REG_WIN1H = gUnk_03004D90.unk4;
        REG_WIN1V = gUnk_03004D90.unk6;
    }

    if (gUnk_03004D90.unk8 == 2)
    {
        if (gUnk_03004D90.unk4 == 0x7878)
        {
            sub_0803A22C();
            m4aSoundVSyncOn();
            m4aMPlayAllContinue();
            gCallbackQueue.current[1] = sub_08047F80;
            REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
            return;
        }

        gUnk_03004D90.unk4 += 0x4FB;
        gUnk_03004D90.unk6 += tmp;
        REG_WIN1H = gUnk_03004D90.unk4;
        REG_WIN1V = gUnk_03004D90.unk6;
    }

    if ((gNewKeys & BUTTON_MASK) && (gUnk_03004D90.unk8 == 0))
    {
        gUnk_03004D90.unk8 = 2;
    }
}

// 47F80
void sub_08047F80(void)
{
    u32 var_r1;

    if (gBlendValue == 0)
    {
        REG_WININ |= WININ_WIN0_CLR;
        gBlendValue = gUnk_030051F0.unkE;
        REG_BLDCNT = gUnk_030051F0.unk4;
        REG_BG0CNT = gUnk_030051F0.unk6;
        REG_BG1CNT = gUnk_030051F0.unk8;
        REG_BG2CNT = gUnk_030051F0.unkA;
        REG_BG3CNT = gUnk_030051F0.unkC;
        gUnk_03004C20.sceneFrameCounter = gUnk_030051F0.unk0;
        
        for (var_r1 = 0; var_r1 < 10; var_r1++)
        {
            gCallbackQueue.next[var_r1] = gCallbackQueue.previous[var_r1];
        }
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = gCallbackQueue.previousCount;
        return;
    }

    REG_WININ = WININ_WIN0_BG0;
    REG_WINOUT = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;
    if ((gUnk_03004C20.globalFrameCounter % 4) == 0)
    {
        gBlendValue -= 1;
    }
}

// 48028
void sub_08048028(void)
{
    u8 sp0;
    u32 var_r4_2;
    u32 var_r0;
    u32 var_r1;
    u32 var_r2;
    u32 var_r4;
    u8 var_r7;
    u8 var_sb;
    u8 var_sl;

    if (gUnk_030034E4 == 1)
    {
        return;
    }

    gNewKeys = 0;

    if (gUnk_03004670->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG)
    {
        var_sb = 0;
        var_sl = 0;
        var_r7 = 0;
        sp0 = 0;

        for (var_r0 = 0; var_r0 < 5; var_r0++)
        {
            for (var_r4 = 0; var_r4 < 7; var_r4++)
            {
                if (((var_r4 == 3) || (var_r4 == 5)) && ((gUnk_03004670->levelInfo[var_r0][var_r4] & LEVEL_INFO_DREAM_STONES_MASK) == 100))
                {
                    var_sb += 1;
                }
                else if ((var_r4 != 7) && ((gUnk_03004670->levelInfo[var_r0][var_r4] & LEVEL_INFO_DREAM_STONES_MASK) == 30))
                {
                    var_sl += 1;
                }

                if (gUnk_03004670->levelInfo[var_r0][var_r4] & LEVEL_INFO_BEATEN_FLAG)
                {
                    var_r7 += 1;
                }
            }
        }
    
        if ((gUnk_03004670->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            sp0 += 1;
        }
    
        if ((gUnk_03004670->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            sp0 += 1;
        }
    
        if (!(gUnk_03004670->levelInfo[5][0] & LEVEL_INFO_BEATEN_FLAG) && (var_r7 == 0x23))
        {
            gUnk_03004670->levelInfo[5][0] |= LEVEL_INFO_BEATEN_FLAG;
    
            for (var_r2 = 0; var_r2 < 10; var_r2++)
            {
                gCallbackQueue.previous[var_r2] = gCallbackQueue.current[var_r2];
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
            gUnk_03004D90.unk9 = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = sub_08047B1C;
            gCallbackQueue.next[1] = sub_0800C45C;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }
    
        if (!(gUnk_03004670->levelInfo[5][1] & LEVEL_INFO_BEATEN_FLAG) && ((var_sl + var_sb) > 0x18))
        {
            gUnk_03004670->levelInfo[5][1] |= LEVEL_INFO_BEATEN_FLAG;
    
            for (var_r2 = 0; var_r2 < 10; var_r2++)
            {
                gCallbackQueue.previous[var_r2] = gCallbackQueue.current[var_r2];
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
            gUnk_03004D90.unk9 = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = sub_08047B1C;
            gCallbackQueue.next[1] = sub_0800C45C;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }
    
        if (!(gUnk_03004670->levelInfo[5][2] & LEVEL_INFO_BEATEN_FLAG) && ((sp0 + var_sb + var_sl) == 0x25))
        {
            gUnk_03004670->levelInfo[5][2] |= LEVEL_INFO_BEATEN_FLAG;
    
            for (var_r2 = 0; var_r2 < 10; var_r2++)
            {
                gCallbackQueue.previous[var_r2] = gCallbackQueue.current[var_r2];
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
            gUnk_03004D90.unk9 = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = sub_08047B1C;
            gCallbackQueue.next[1] = sub_0800C45C;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }
    }

    var_r4_2 = 0;
    for (var_r1 = 0; var_r1 < (gCallbackQueue.currentCount - 1); var_r1++)
    {
        if ((gCallbackQueue.current[var_r1] == sub_08048028) || (var_r4_2 == 1))
        {
            gCallbackQueue.next[var_r1] = gCallbackQueue.current[var_r1 + 1];
            var_r4_2 = 1;
        }
        else
        {
            gCallbackQueue.next[var_r1] = gCallbackQueue.current[var_r1];
        }
    }

    if (var_r4_2 == 1)
    {
        gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    }
}

// 4832C
void sub_0804832C(void)
{
    s32 var_r4;
    s32 var_r5;

    gUnk_03005428 = 1;
    sub_08003D58();

    DmaCopy32(3, gOamBuffer, OAM, 0x400);
    gBgInfo[0].pTiles = VRAM;
    gBgInfo[0].pTilemap = VRAM + 0x7800;

    DmaFill16(3, 0x7FFF, PLTT + 0x20, 0x4);
    DmaFill16(3, 0x1111, gBgInfo[0].pTiles + 0x20, 0x20);

    for (var_r4 = 0, var_r5 = 0; var_r4 < 0x258; var_r5++, var_r4++)
    {
        if (((var_r4 % 30) == 0) && (var_r4 != 0))
        {
            var_r5 += 2;
        }
        gBgTilemapBufs[0][var_r5] = 0x1001;
    }

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 4) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 7) & 0x1FF;
    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;
    gBlendValue = 0;
    REG_BG0CNT = BGCNT_PRIORITY(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(15);

    DmaCopy16Wait(3, gBgTilemapBufs, gBgInfo[0].pTilemap, 0x800);
    LoadAllSaveData();
    gUnk_03004D9C = 0;
}

// 48498
void sub_08048498(void)
{
    u16 var_r4;
    u16 var_r5;

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

    gUnk_03005428 = 1;
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

    for (var_r4 = 0, var_r5 = 0; var_r4 < 0x258; var_r4++)
    {
        if (((var_r4 % 30) == 0) && (var_r4 != 0))
        {
            var_r5 += 2;
        }

        gBgTilemapBufs[1][var_r5] = 0x1001;
        gBgTilemapBufs[0][var_r5++] = gBgDataPtrs.pBufBg0Tilemap[var_r4];
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
    gIntrTable.vBlank = sub_080009D8;

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON;
}

// 48768
void sub_08048768(void)
{
    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        sub_0804832C();
    }

    if (gUnk_03004C20.sceneFrameCounter >= 0x10)
    {
        gBlendValue = (gUnk_03004C20.sceneFrameCounter - 0x10) / 2;
    }

    if (gBlendValue >= 0x10)
    {
        gUnk_03004C20.sceneFrameCounter = -1;
        gCallbackQueue.current[1] = sub_080487B4;
    }

    m4aSoundVSyncOff();
    m4aMPlayAllStop();
}

// 487B4
void sub_080487B4(void)
{
    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        sub_08048498();
    }

    if (gUnk_03004C20.sceneFrameCounter == 0x20)
    {
        REG_IE |= INTR_FLAG_VBLANK;
        REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
        m4aSoundVSyncOn();
        m4aSongNumStart(0x21);
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
        gCallbackQueue.current[1] = sub_08049724;
        gCallbackQueue.current[2] = sub_0800D0C4;
        gUnk_03004D9C = 0;
        gBlendValue = 0x10;
        REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;
    }
}

// 4886C
void sub_0804886C(void)
{
    u16 var_r6;
    void *temp_r5;

    gUnk_03005284->unk1C = 2;
    gUnk_03005284->unk1D = 1;
    gUnk_03004C20.unkA = 0;
    gUnk_03004C20.unkB = 0;

    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP;
    gBlendValue = 0x10;
    gMosaicSize = 0;
    sub_08003D58();

    DmaCopy32(3, gOamBuffer, OAM, 0x400);

    gUnk_03004C20.world = 1;
    gUnk_03003410.unk8 = 0;
    sub_08003904();

    gObjPalRamPtr = gUnk_030034F4;
    gObjVramPtr = gUnk_030052AC;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    temp_r5 = DecompressAlloc(&gUnk_08366214) + 4;

    DmaCopy16Wait(3, &gUnk_08078F88, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, temp_r5, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, temp_r5 + 0x800, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, temp_r5 + 0x1000, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, temp_r5 + 0x1800, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, temp_r5 + 0x2000, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, temp_r5 + 0x2800, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, temp_r5 + 0x3000, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, temp_r5 + 0x3800, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    thunk_HeapFree(temp_r5 - 4);
    temp_r5 = DecompressAlloc(&gUnk_08367468) + 4;

    DmaCopy16Wait(3, &gUnk_08078FA8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, temp_r5, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, temp_r5 + 0x100, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, temp_r5 + 0x200, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    thunk_HeapFree(temp_r5 - 4);
    gUnk_030051DC = gUnk_0807D7B0;

    gUnk_03005428 = 0xD;
    for (var_r6 = 0; gUnk_08116590[var_r6].unk0 != 0xFFFF; var_r6++)
    {
        sub_08003DC0(gUnk_03005428++, gUnk_08116590[var_r6].unk7, gUnk_08116590[var_r6].unk0, gUnk_08116590[var_r6].unk2, gUnk_08116590[var_r6].unk4, 0, gUnk_08116590[var_r6].unk5, gUnk_08116590[var_r6].unk6, gUnk_08116590[var_r6].unk8);
    }
    gUnk_03005428 += 0xA;

    for (var_r6 = 0; var_r6 < 0xE; var_r6++)
    {
        gEntityInfo[var_r6].unk11 = 0x1C;
        gEntityInfo[var_r6].unk10 = 0;
    }

    for (var_r6 = 0; var_r6 < 8; var_r6++)
    {
        gEntityInfo[var_r6 + 0xD].unkF = 0;
        gEntityInfo[var_r6 + 0xD].priority = 2;
        gEntityInfo[var_r6 + 0xD].affineEnable = 0;
        gEntityInfo[var_r6 + 0xD].affineDouble = 0;
        gEntityInfo[var_r6 + 0xD].unkC_4 = 0;
        gEntityInfo[var_r6 + 0xD].objMode = 0;
    }

    for (var_r6 = 0; var_r6 < 8; var_r6++)
    {
        gEntityInfo[var_r6 + 0xD].unk10 = 1;
        gEntityInfo[var_r6 + 0xD].unkF = 0;
    }

    for (var_r6 = 0; var_r6 < 6; var_r6++)
    {
        gEntityInfo[var_r6 + 0xD].xPosScreen = 0xFFE0;
        gEntityInfo[var_r6 + 0xD].affineHFlip_matrixNum = var_r6;
        gOamAffineBuffer[var_r6].pa = 0x60;
        gOamAffineBuffer[var_r6].pb = 0x60;
        gOamAffineBuffer[var_r6].pc = 0xFFA0;
        gOamAffineBuffer[var_r6].pd = 0x100;
        gEntityInfo[var_r6 + 0xD].affineEnable = 1;
        gEntityInfo[var_r6 + 0xD].affineDouble = 0;
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

    for (var_r6 = 8; var_r6 < 0xB; var_r6++)
    {
        gEntityInfo[var_r6 + 0xD].unk10 = 0;
        gEntityInfo[var_r6 + 0xD].unk11 = 0x1C;
        gEntityInfo[var_r6 + 0xD].unkF = 0;
    }

    DecompressDma(&gUnk_082F4934, PLTT, 0x200);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(gUnk_082F49E4[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tilemap = thunk_HeapAlloc(gUnk_082F4B10[0] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, &gUnk_082F49E4);
    Decompress(gBgDataPtrs.pBufBg1Tilemap, &gUnk_082F4B10);
    gBgDataPtrs.pBufBg0Tilemap += 2;
    gBgDataPtrs.pBufBg1Tilemap += 2;

    for (var_r6 = 0; var_r6 < 0x20; var_r6++)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap + (var_r6 * 0x20), &gBgTilemapBufs[1][var_r6 * 0x20], 0x40);
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (var_r6 * 0x20), &gBgTilemapBufs[0][var_r6 * 0x20], 0x40);
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

    for (var_r6 = 0; var_r6 < 0x20; var_r6++)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + var_r6 * 0x20, &gBgTilemapBufs[2][var_r6 * 0x20], 0x40);
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
    gIntrTable.vBlank = sub_08000BD4;

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    gBlendValue = 0;
    gUnk_03000828 = gSaveData->startedFile[0] | gSaveData->startedFile[1] | gSaveData->startedFile[2];

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
    gEntityInfo[0].unk11 = 0x1C;
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
    m4aSongNumStart(0);
}

// 491C0
void sub_080491C0(void)
{
    u8 var_r4;

    if (gUnk_03004C20.sceneFrameCounter < 0x62)
    {
        for (var_r4 = 0; var_r4 < 8; var_r4++)
        {
            if ((gUnk_03004C20.sceneFrameCounter >= gUnk_081177A4[var_r4][0]) && (var_r4 < 6))
            {
                gEntityInfo[var_r4 + 0xD].xPosScreen += 0x1E;
                if (((gEntityInfo[var_r4 + 0xD].xPosScreen + 0x20) & 0xFFFF) >= (gUnk_0811779C[var_r4] + 0x22))
                {
                    gEntityInfo[var_r4 + 0xD].xPosScreen = gUnk_0811779C[var_r4] + 2;
                    gOamAffineBuffer[var_r4].pc = 0;
                    gOamAffineBuffer[var_r4].pb = 0;
                    if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
                    {
                        if (gOamAffineBuffer[var_r4].pa < 0x100)
                        {
                            gOamAffineBuffer[var_r4].pa = gOamAffineBuffer[var_r4].pa + 0x40;
                        }
                        else
                        {
                            if (var_r4 == 1)
                            {
                                gEntityInfo[0xE].priority = 1;
                            }
                            gOamAffineBuffer[var_r4].pa = 0x100;
                        }
                    }
                }
            }
        }
    }
    else
    {
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
        
        for (var_r4 = 0; var_r4 < 6; var_r4++)
        {
            if ((gEntityInfo[0xF].xPosScreen >= gUnk_0811779C[2]) && (gUnk_03004C20.sceneFrameCounter >= gUnk_081177A4[var_r4][1]))
            {
                if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
                {
                    gEntityInfo[var_r4 + 0xD].xPosScreen -= 1;
                    gEntityInfo[var_r4 + 0xD].yPosScreen -= 1;
                }

                gOamAffineBuffer[var_r4].pa -= 0x10;
                gOamAffineBuffer[var_r4].pd -= 0x10;
                if ((gEntityInfo[var_r4 + 0xD].xPosScreen <= gUnk_0811779C[var_r4]))
                {
                    gEntityInfo[var_r4 + 0xD].xPosScreen = gUnk_0811779C[var_r4];
                    gOamAffineBuffer[var_r4].pa = 0x100;
                    gOamAffineBuffer[var_r4].pd = 0x100;
                    if (var_r4 < 2)
                    {
                        gEntityInfo[var_r4 + 0xD].yPosScreen = 0x50;
                    }
                    else if (var_r4 < 6)
                    {
                        gEntityInfo[var_r4 + 0xD].yPosScreen = 0x50;
                    }
                }
            }
        }
    }
}

// 49348
void sub_08049348(u8 arg0)
{
    u8 var_r3;

    gUnk_03004C20.sceneFrameCounter = 0;
    switch (arg0)
    {
        case 0:
            gBlendValue = 0;
            break;

        case 1:
            gUnk_03004658[0xC] = 0;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;

            for (var_r3 = 0; var_r3 < 8; var_r3++)
            {
                gEntityInfo[var_r3 + 0xD].unk10 = 1;
                gEntityInfo[var_r3 + 0xD].unk11 = 0x54;
                gEntityInfo[var_r3 + 0xD].xPosScreen = gUnk_0811779C[var_r3];
                gEntityInfo[0xE].priority = 1;

                gOamAffineBuffer[var_r3].pc = 0;
                gOamAffineBuffer[var_r3].pb = 0;
                gOamAffineBuffer[var_r3].pa = 0x100;

                if (var_r3 < 2)
                {
                    gEntityInfo[var_r3 + 0xD].yPosScreen = 0x50;
                }
                else if (var_r3 < 6)
                {
                    gEntityInfo[var_r3 + 0xD].yPosScreen = 0x50;
                }
                else
                {
                    gEntityInfo[var_r3 + 0xD].yPosScreen = 0;
                }
            }

            for (var_r3 = 8; var_r3 < 0xB; var_r3++)
            {
                gEntityInfo[var_r3 + 0xD].unk10 = 1;
                gEntityInfo[var_r3 + 0xD].unk11 = 0x54;
                gEntityInfo[var_r3 + 0xD].unkF = 0;
                // TODO: some sort of addition required to match
                gEntityInfo[var_r3 + 0xD].yPosScreen = 0x83;
                gEntityInfo[var_r3 + 0xD].yPosScreen += 1;
                gEntityInfo[var_r3 + 0xD].xPosScreen = (var_r3 * 0x20) - 0xA8;
            }

            for (var_r3 = 0x14; var_r3 < 0x18; var_r3++)
            {
                DmaCopy16(3, &gBgTilemapBufs[1][var_r3 * 0x20], &gBgTilemapBufs[1][(var_r3 - 0xB) * 0x20], 0x3C);
            }

            DmaCopy16Wait(3, &gBgTilemapBufs[1][0], gBgInfo[1].pTilemap, 0x800);
            break;

        case 5:
            if (gUnk_03000828 != 0)
            {
                for (var_r3 = 0x12; var_r3 < 0x14; var_r3++)
                {
                    DmaFill16(3, 0, &gBgTilemapBufs[0][var_r3 * 0x20], 0x40);
                }

                for (var_r3 = 0x16; var_r3 < 0x18; var_r3++)
                {
                    DmaCopy16(3, &gBgTilemapBufs[0][(var_r3 + 2) * 0x20], &gBgTilemapBufs[0][(var_r3 - 7) * 0x20], 0x40);
                    DmaCopy16(3, &gBgTilemapBufs[0][var_r3 * 0x20], &gBgTilemapBufs[0][(var_r3 - 5) * 0x20], 0x40);
                }

                gUnk_03003410.unk6 = 1;
            }
            else
            {
                for (var_r3 = 0x14; var_r3 < 0x16; var_r3++)
                {
                    DmaCopy16(3, &gBgTilemapBufs[0][var_r3 * 0x20], &gBgTilemapBufs[0][(var_r3 - 5) * 0x20], 0x40);
                }

                gUnk_03003410.unk6 = 0;
            }

            for (var_r3 = 0x14; var_r3 < 0x18; var_r3++)
            {
                DmaCopy16(3, &gBgTilemapBufs[1][var_r3 * 0x20], &gBgTilemapBufs[1][(var_r3 - 0xB) * 0x20], 0x3C);
            }

            DmaCopy16Wait(3, &gBgTilemapBufs[0][0], gBgInfo[0].pTilemap, 0x800);
            DmaCopy16Wait(3, &gBgTilemapBufs[1][0], gBgInfo[1].pTilemap, 0x800);
            gBgInfo[0].vOfs = 0;

            for (var_r3 = 8; var_r3 < 0xB; var_r3++)
            {
                gEntityInfo[var_r3 + 0xD].unk10 = 0;
                gEntityInfo[var_r3 + 0xD].unk11 = 0x1C;
                gEntityInfo[var_r3 + 0xD].unkF = 0;
                gEntityInfo[var_r3 + 0xD].xPosScreen = 0;
                gEntityInfo[var_r3 + 0xD].yPosScreen = 0;
            }

            
            for (var_r3 = 0; var_r3 < 8; var_r3++)
            {
                gEntityInfo[var_r3 + 0xD].unk10 = 1;
                gEntityInfo[var_r3 + 0xD].unk11 = 0x54;
                gEntityInfo[var_r3 + 0xD].xPosScreen = gUnk_0811779C[var_r3];
                gEntityInfo[0xE].priority = 1;

                gOamAffineBuffer[var_r3].pc = 0;
                gOamAffineBuffer[var_r3].pb = 0;

                if (var_r3 < 2)
                {
                    gEntityInfo[var_r3 + 0xD].yPosScreen = 0x50;
                }
                else if (var_r3 < 6)
                {
                    gEntityInfo[var_r3 + 0xD].yPosScreen = 0x50;
                }
                else
                {
                    gEntityInfo[var_r3 + 0xD].yPosScreen = 0;
                }
            }

            REG_BLDCNT = BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
            gBlendValue = 5;
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
            break;

        case 6:
            REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
            break;

        case 7:
            REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
            REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
            gBlendValue = 5;
            break;
    }
}

// 49724
void sub_08049724(void)
{
    u8 var_r2;

    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        gUnk_03004C20.room = 1;
        sub_0804886C();
        sub_08049348(gUnk_03004D9C);
    }

    if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
    {
        gBgInfo[2].hOfs += 1;
    }

    switch (gUnk_03004D9C)
    {
        case 0:
            sub_080491C0();
            if (gBlendValue == 0)
            {
                if ((gNewKeys & START_BUTTON) || (gNewKeys & A_BUTTON))
                {
                    gBlendValue = 1;
                    m4aSongNumStart(0x52);
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
                gUnk_03004D9C = 1;
                sub_08049348(1);
            }
            break;

        case 1:
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
                    gUnk_03004D9C = 5;
                    sub_08049348(5);
                    m4aSongNumStart(0x52);
                }

                if ((gUnk_03004C20.sceneFrameCounter >= 0x400) && (gBlendValue == 0))
                {
                    gUnk_03004D9C = 6;
                    sub_08049348(6);
                }
            }

            if ((gUnk_03004C20.sceneFrameCounter & 0x30) != 0)
            {
                for (var_r2 = 8; var_r2 < 0xB; var_r2++)
                {
                    gEntityInfo[var_r2 + 0xD].unk10 = 1;
                    gEntityInfo[var_r2 + 0xD].unk11 = 0x54;
                }
            }
            else
            {
                for (var_r2 = 8; var_r2 < 0xB; var_r2++)
                {
                    gEntityInfo[var_r2 + 0xD].unk10 = 0;
                    gEntityInfo[var_r2 + 0xD].unk11 = 0x1C;
                }
            }
            break;

        case 5:
            if (gUnk_03000828 != 0)
            {
                if (gNewKeys & DPAD_UP)
                {
                    for (var_r2 = 0x14; var_r2 < 0x16; var_r2++)
                    {
                        DmaCopy16(3, &gBgTilemapBufs[0][var_r2 * 0x20], &gBgTilemapBufs[0][(var_r2 - 5) * 0x20], 0x3C);
                        DmaCopy16(3, &gBgTilemapBufs[0][(var_r2 + 6) * 0x20], &gBgTilemapBufs[0][(var_r2 - 3) * 0x20], 0x3C);
                    }

                    if (gUnk_03003410.unk6 != 0)
                    {
                        m4aSongNumStart(0x51);
                    }
                    gUnk_03003410.unk6 = 0;
                }

                if (gNewKeys & DPAD_DOWN)
                {
                    for (var_r2 = 0x16; var_r2 < 0x18; var_r2++)
                    {
                        DmaCopy16(3, &gBgTilemapBufs[0][(var_r2 + 2) * 0x20], &gBgTilemapBufs[0][(var_r2 - 7) * 0x20], 0x3C);
                        DmaCopy16(3, &gBgTilemapBufs[0][var_r2 * 0x20], &gBgTilemapBufs[0][(var_r2 - 5) * 0x20], 0x3C);
                    }

                    if (gUnk_03003410.unk6 != 1)
                    {
                        m4aSongNumStart(0x51);
                    }
                    gUnk_03003410.unk6 = 1;
                }
            }
            else
            {
                gUnk_03003410.unk6 = gUnk_03000828;
            }

            if (gNewKeys & B_BUTTON)
            {
                for (var_r2 = 0xF; var_r2 < 0x13; var_r2++)
                {
                    DmaFill16(3, 0, &gBgTilemapBufs[0][var_r2 * 0x20], 0x3C);
                }

                for (var_r2 = 0x1C; var_r2 < 0x1E; var_r2++)
                {
                    DmaCopy16(3, &gBgTilemapBufs[0][var_r2 * 0x20], &gBgTilemapBufs[0][(var_r2 - 0xA) * 0x20], 0x3C);
                }

                gUnk_03004D9C = 1;
                sub_08049348(1);
                m4aSongNumStart(0x54);
                gBlendValue = 0;
            }

            if ((gNewKeys & START_BUTTON) || (gNewKeys & A_BUTTON))
            {
                gUnk_03004D9C = 7;
                sub_08049348(7);
                m4aSongNumStart(0x52);
            }

            DmaCopy16Wait(3, &gBgTilemapBufs[0][0], gBgInfo[0].pTilemap, 0x800);
            break;

        case 6:
            gBlendValue = gUnk_03004C20.sceneFrameCounter / 4;
            if (gUnk_03004C20.sceneFrameCounter < 0x40)
            {
                break;
            }

            m4aMPlayAllStop();
            gUnk_03004C20.sceneFrameCounter = -1;
            gUnk_03004D9C = 0;
            gMosaicSize = 0xF;
            gBlendValue = 0x10;

            gUnk_03004C20.demoInputIndex = 0xFE;
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
                gUnk_03005220.lives = 0x63;
                gUnk_03004C20.world = 2;
                gUnk_03004C20.level = 5;
            }
            gUnk_03004C20.room = 0;

            gUnk_03003410.unk9 = 0;
            gUnk_03003410.unkA = 1;
            gCallbackQueue.next[0] = sub_08001158;
            gUnk_03003410.unk8 = 1;
            gCallbackQueue.next[1] = sub_08003904;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            break;

        case 7:
            if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
            {
                gBlendValue += 1;
            }

            if ((gBlendValue == 0x10) && (gUnk_03004C20.sceneFrameCounter >= (gUnk_03004C20.sceneFrameCounter / 4)))
            {
                m4aMPlayAllStop();
                gUnk_03004C20.sceneFrameCounter = -1;
                gUnk_03004D9C = 0;
                gBlendValue = 0xF;
                gCallbackQueue.current[1] = sub_08024560;
                gCallbackQueue.current[2] = sub_0800BFF4;
                gUnk_03003410.unkA = 0;
            }
            break;
    }
}

// 49BFC
void sub_08049BFC(void)
{
    u8 var_r2;

    sub_08003D58();

    DmaCopy32(3, gOamBuffer, OAM, 0x400);

    gUnk_03004C20.world = 1;
    gUnk_03003410.unk8 = 0;
    sub_08003904();

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    gOamAffineBuffer[0].pd = 0x100;
    gOamAffineBuffer[0].pa = 0x100;
    gOamAffineBuffer[0].pc = 0;
    gOamAffineBuffer[0].pb = 0;
    gEntityInfo[0xD].unk10 = 1;

    gBgDataPtrs.pBufBg2Tiles = thunk_HeapAlloc(gUnk_082F8BF8[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg2Tilemap = thunk_HeapAlloc(gUnk_082FA784[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tiles = thunk_HeapAlloc(gUnk_082FA8C0[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tilemap = thunk_HeapAlloc(gUnk_082FB0E0[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg0Tiles = thunk_HeapAlloc(gUnk_082FB280[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(gUnk_082FBB9C[0] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg2Tiles, &gUnk_082F8BF8);
    Decompress(gBgDataPtrs.pBufBg2Tilemap, &gUnk_082FA784);
    Decompress(gBgDataPtrs.pBufBg1Tiles, &gUnk_082FA8C0);
    Decompress(gBgDataPtrs.pBufBg1Tilemap, &gUnk_082FB0E0);
    Decompress(gBgDataPtrs.pBufBg0Tiles, &gUnk_082FB280);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, &gUnk_082FBB9C);
    gBgDataPtrs.pBufBg2Tiles += 4;
    gBgDataPtrs.pBufBg2Tilemap += 4;
    gBgDataPtrs.pBufBg1Tiles += 4;
    gBgDataPtrs.pBufBg1Tilemap += 2;
    gBgDataPtrs.pBufBg0Tiles += 4;
    gBgDataPtrs.pBufBg0Tilemap += 2;

    gBgInfo[2].pTiles = VRAM + 0x8000;
    gBgInfo[2].pTilemap = VRAM + 0xF000;
    gBgInfo[1].pTiles = VRAM + 0x4000;
    gBgInfo[1].pTilemap = VRAM + 0xE800;
    gBgInfo[0].pTiles = VRAM;
    gBgInfo[0].pTilemap = VRAM + 0xE000;
    DecompressDma(&gUnk_082FBE10, PLTT, 0x200);
    DmaCopy16(3, gBgDataPtrs.pBufBg2Tiles, gBgInfo[2].pTiles, 0x2900);
    DmaCopy16(3, gBgDataPtrs.pBufBg1Tiles, gBgInfo[1].pTiles, 0x1040);
    DmaCopy16(3, gBgDataPtrs.pBufBg0Tiles, gBgInfo[0].pTiles, 0x2080);
    
    for (var_r2 = 0; var_r2 < 0x14; var_r2++)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg2Tilemap + (var_r2 * 0x1E), gUnk_03004DB0 + (var_r2 * 0x20), 0x1E);
        DmaFill16(3, 0, &gBgTilemapBufs[1][0] + (var_r2 * 0x20), 0x3C);
        DmaFill16(3, 0, &gBgTilemapBufs[0][0] + (var_r2 * 0x20), 0x3C);
    }

    gBgInfo[2].vOfs = 0;
    gBgInfo[2].hOfs = 0;
    gBgInfo[1].vOfs = 0;
    gBgInfo[1].hOfs = 0;
    gBgInfo[0].vOfs = 0;
    gBgInfo[0].hOfs = 0;

    gBg2X = gBg2Y = 0;
    gBg2PA = gBg2PD = 0x100;
    gBg2PB = gBg2PC = 0;
    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_MOSAIC | BGCNT_SCREENBASE(28);
    REG_BG1CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(29);
    REG_BG2CNT = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_SCREENBASE(30) | BGCNT_WRAP | BGCNT_TXT512x256;

    gIntrTable.vBlank = sub_080009D8;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    gUnk_03002900 = 0;
}

// 49EFC
void sub_08049EFC(u8 arg0)
{
    if (arg0 == 0)
    {
        if (gNewKeys & SELECT_BUTTON)
        {
            gUnk_03004658[0xC] = (gUnk_03004658[0xC] + 1) % 3;
            m4aSongNumStart(0x51);
        }
        else if ((gNewKeys & DPAD_LEFT) && (gUnk_03004658[0xC] != 0))
        {
            gUnk_03004658[0xC] -= 1;
            m4aSongNumStart(0x51);
        }
        else if ((gNewKeys & DPAD_RIGHT) && (gUnk_03004658[0xC] != 2))
        {
            gUnk_03004658[0xC] += 1;
            m4aSongNumStart(0x51);
        }

        gEntityInfo[0xD].xPosBg2 = gUnk_0811717C[0][0][0] + (gUnk_03004658[0xC] * 0x50);
        gEntityInfo[0xD].yPosBg2 = gUnk_0811717C[0][0][1];
        REG_WIN0H = WIN_RANGE((gUnk_03004658[0xC] * 0x50) + 8, (gUnk_03004658[0xC] * 0x50) + 0x48);
    }
    else
    {
        if (gNewKeys & SELECT_BUTTON)
        {
            gUnk_03004658[0xC] = (gUnk_03004658[0xC] + 1) % 2;
            m4aSongNumStart(0x51);
        }
        else if ((gNewKeys & DPAD_LEFT) && (gUnk_03004658[0xC] == 1))
        {
            gUnk_03004658[0xC] -= 1;
            m4aSongNumStart(0x51);
        }
        else if ((gNewKeys & DPAD_RIGHT) && (gUnk_03004658[0xC] == 0))
        {
            gUnk_03004658[0xC] += 1;
            m4aSongNumStart(0x51);
        }
    
        gEntityInfo[0xD].xPosBg2 = gUnk_0811717C[0][0][0] + ((gUnk_03004658[0xC] * 0x68) + 3);
        gEntityInfo[0xD].yPosBg2 = gUnk_0811717C[0][0][1] + 0x53;
        REG_WIN0H = WIN_RANGE(0x58, 0x98);
    }
}

// 4A070
void sub_0804A070(u8 arg0)
{
    u32 end;
    u32 start;
    u8 row;
    u8 col;
    u8 file;

    DmaFill16(3, 0, &gBgTilemapBufs[0][0], 0x800);
    DmaFill16(3, 0, &gBgTilemapBufs[1][0], 0x800);

    for (row = 1; row <= 4; row++)
    {
        // Copy top banner tiles
        DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap + (row * 0x1E), &gBgTilemapBufs[1][row * 0x20], 0x3C);
    }

    switch (arg0 & 0xF0)
    {
        // Display all 3 save files
        case 0:
            for (row = 6; row <= 14; row++)
            {
                // Copy file tiles
                DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap + (row * 0x1E), &gBgTilemapBufs[1][row * 0x20], 0x3C);

                for (file = 0; file < 3; file++)
                {
                    if (gSaveData->completedFile[file] & 0x80)
                    {
                        // Make file red if file completed
                        for (col = 0; col <= 9; col++)
                        {
                            gBgTilemapBufs[1][(row * 0x20) + (file * 0xA) + col] |= (6 << 12);
                        }
                    }
                }
            }
            break;

        // Display selected save file
        case 0x10:
            if (gSaveData->completedFile[gUnk_03004658[0xD]] & 0x80)
            {
                // Copy selected file tiles and make file red for completion
                for (row = 6; row <= 14; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap + 0xA + (row * 0x1E), &gBgTilemapBufs[1][0xA + (row * 0x20)], 0x14);
                    
                    for (col = 0; col <= 9; col++)
                    {
                        gBgTilemapBufs[1][(row * 0x20) + 0xA + col] |= (6 << 12);
                    }
                }
            }
            else
            {
                // Copy selected file tiles
                for (row = 6; row <= 14; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap + 0xB + (row * 0x1E), &gBgTilemapBufs[1][0xB + (row * 0x20)], 0x12);
                }
            }

            // Copy YES/NO background prompt tiles
            for (row = 15; row <= 18; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap + (row * 0x1E), &gBgTilemapBufs[1][row * 0x20], 0x3C);
            }

            // Copy YES tiles
            for (row = 0; row <= 1; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((row + 8) * 0x1E), &gBgTilemapBufs[0][8 + ((row + 0x10) * 0x20)], 0x6);
            }

            // Copy NO tiles
            for (row = 0; row <= 1; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 3 + ((row + 8) * 0x1E), &gBgTilemapBufs[0][0x15 + ((row + 0x10) * 0x20)], 0xA);
            }
            break;
    }

    switch (arg0 & 0xF)
    {
        case 0x0:
            // Copy "Select a Save file"
            for (row = 0; row <= 1; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (row * 0x1E), &gBgTilemapBufs[0][5 + ((row + 0x2) * 0x20)], 0x28);
            }
            break;

        case 0x1:
            for (row = 0; row <= 1; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (row * 0x1E), &gBgTilemapBufs[0][6 + ((row + 0x2) * 0x20)], 0x26);
            }
            break;

        case 0x2:
            if (gUnk_03003410.unk6 == 0)
            {
                // New Game mode
                if (gSaveData->startedFile[gUnk_03004658[0xD]] == 0)
                {
                    // Copy "Is this OK?"
                    for (row = 0; row <= 1; row++)
                    {
                        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((row + 6) * 0x1E), &gBgTilemapBufs[0][9 + ((row + 0x2) * 0x20)], 0x18);
                    }
                }
                else
                {
                    // Copy "Old data will be lost"
                    for (row = 0; row <= 1; row++)
                    {
                        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0x8 + ((row + 8) * 0x1E), &gBgTilemapBufs[0][4 + ((row + 0x2) * 0x20)], 0x2A);
                    }
                }
            }
            else
            {
                // Continue mode
                // Copy "Is this OK?"
                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((row + 6) * 0x1E), &gBgTilemapBufs[0][9 + ((row + 0x2) * 0x20)], 0x18);
                }
            }
            break;

        case 0x4:
            for (row = 0; row <= 1; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((row + 2) * 0x1E), &gBgTilemapBufs[0][7 + ((row + 0x2) * 0x20)], 0x24);
            }
            break;

        case 0x8:
            for (row = 0; row <= 1; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0xC + ((row + 6) * 0x1E), &gBgTilemapBufs[0][9 + ((row + 0x2) * 0x20)], 0x1C);
            }
            break;
    }

    if ((arg0 & 0xF0) == 0)
    {
        file = 0;
        start = 0;
        end = 2;
    }
    else
    {
        file = gUnk_03004658[0xD];
        start = 1;
        end = 1;
    }
    
    for (col = start; col <= end; col++, file++)
    {
        if (!gSaveData->startedFile[file])
        {
            // Copy "NO"
            DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0x168, &gBgTilemapBufs[0][0x124 + (col * 0xA)], 0x4);
            // Copy "DATA"
            DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0x16A, &gBgTilemapBufs[0][0x143 + (col * 0xA)], 0x8);
            continue;
        }

        if ((gSaveData->unk1D[file] == 0) || (gSaveData->unk1D[file] == 7) || ((gSaveData->unk1D[file] == 2) && ((gSaveData->unk20[file] % 3) != 0) && (gSaveData->unk20[file] != 1)))
        {
            if (gSaveData->world[file] == 6)
            {
                for (row = 0; row <= 1; row++)
                {
                    // Copy "EX"
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0x10) * 0x1E) + 0xC), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0x8);
                    // Copy level number
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xE) * 0x1E) + gSaveData->level[file] * 2), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 5], 0x4);
                }
            }
            else if ((gSaveData->world[file] == 1) || (gSaveData->world[file] == 2) || (gSaveData->world[file] == 3) || (gSaveData->world[file] == 4))
            {
                // Copy "World X" (x is current world)
                // TODO: investigate what each DmaCopy actually does
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((7 - (gSaveData->world[file] % 2)) * 0x1E) + ((gSaveData->world[file] / 3) * 6) + 0xC), &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((((gSaveData->world[file] - 1) * 2) + 0xA + row) * 0x1E) + 0x12), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
            else if (gSaveData->world[file] == 5)
            {
                // Copy "World 5"
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0xCC, &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                // Copy "Leljimba"
                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xA) * 0x1E) + 0x18), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + ((col * 0xA)) + 1], 0xC);
                }
            }
            else
            {
                gSaveData->world[file] = 1;
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((gSaveData->world[file] / 3) * 0x6) + 0xC0), &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xA) * 0x1E) + 0x12), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + ((col * 0xA)) + 1], 0xC);
                }

                gSaveData->level[file] = 1;

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((row + 0xE) * 0x1E) + gSaveData->level[file] * 2)), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + ((col * 0xA)) + 5], 0x4);
                }
            }
        }
        else if (((gSaveData->unk1D[file] == 1) && (gSaveData->level[file] == 8)) || ((gSaveData->unk1D[file] == 2) && ((gSaveData->unk20[file] % 3) == 0) && (gSaveData->unk20[file] != 0)))
        {
            if ((gSaveData->world[file] == 1) || (gSaveData->world[file] == 2) || (gSaveData->world[file] == 3) || (gSaveData->world[file] == 4))
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((7 - (gSaveData->world[file] % 2)) * 0x1E) + ((gSaveData->world[file] / 3) * 6) + 0xC), &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xC) * 0x1E) + 0x18), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
            else if ((gSaveData->world[file] == 5) || (gSaveData->world[file] == 6))
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0xCC, &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xC) * 0x1E) + 0x18), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
            else
            {
                gSaveData->world[file] = 1;
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0xC0, &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);
                gSaveData->level[file] = 1;

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((row + 0xE) * 0x1E) + gSaveData->level[file] * 2)), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 5], 0x4);
                }
            }
        }
        else if (gSaveData->unk1D[file] == 2)
        {
            if (gSaveData->unk20[file] == 0)
            {
                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xE) * 0x1E) + 0x18), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
            if (gSaveData->unk20[file] == 1)
            {
                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0x10) * 0x1E) + 0x18), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
        }
        else
        {
            DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0x14A, &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

            if (gSaveData->world[file] == 6)
            {
                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0x10) * 0x1E) + 0xC), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0x8);
                }
            }
            else
            {
                if (gSaveData->world[file] > 5)
                {
                    gSaveData->world[file] = 1;
                }

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((row + 0xE) * 0x1E) + gSaveData->world[file] * 2)), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0x4);
                }

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((row + 0xE) * 0x1E), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 3], 0x4);
                }
            }

            if (gSaveData->level[file] > 7)
            {
                gSaveData->level[file] = 1;
            }

            for (row = 0; row <= 1; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((row + 0xE) * 0x1E) + gSaveData->level[file] * 2)), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 5], 0x4);
            }
        }

        if (gSaveData->unk23[file] < 7)
        {
            // Draw world dots
            DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((gSaveData->unk23[file] % 3) + 0xA) * 0x1E) + (((gSaveData->unk23[file] - 1) / 3) * 6) + 0x6), &gBgTilemapBufs[0][0x162 + ((0xA * col))], 0xC);
        }

        // Copy "KLONOA"
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0x12C, &gBgTilemapBufs[0][0x182 + ((col * 0xA))], 0xC);
        // Copy "x"
        gBgTilemapBufs[0][0x1A4 + (0xA * col)] = gBgDataPtrs.pBufBg0Tilemap[0x190];
        // Copy tens digit of lives
        gBgTilemapBufs[0][0x1A5 + (0xA * col)] = gBgDataPtrs.pBufBg0Tilemap[0x186 + (gSaveData->lives[file] / 10)];
        // Copy ones digit of lives
        gBgTilemapBufs[0][0x1A6 + (0xA * col)] = gBgDataPtrs.pBufBg0Tilemap[0x186 + (gSaveData->lives[file] % 10)];
    }
}

// 4AF00
void sub_0804AF00(void)
{
    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        s8 tmp; // FAKE?
        sub_08049BFC();
        sub_0804A070(0);

        if (gUnk_03003410.unk6 == 0)
        {
            gUnk_03004658[0xC] = 1;
        }
        else
        {
            gUnk_03004658[0xC] = gSaveData->lastLoadedSaveFile;
        }

        gUnk_03004658[0xF] = tmp = 0;
        sub_08025B78(7, 0);
        gEntityInfo[0xD].unkF = tmp;
        m4aSongNumStart(2);
    }

    sub_08025BA4();
    sub_08049EFC(gUnk_03004658[0xF]);

    if (gUnk_030034E4 == 1)
    {
        return;
    }

    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
    REG_WININ = WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ | WININ_WIN1_CLR;
    REG_WINOUT = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WINOBJ_BG_ALL | WINOUT_WINOBJ_OBJ;
    REG_WIN1H = WIN_RANGE(0x8, DISPLAY_WIDTH);
    REG_WIN1V = WIN_RANGE(0x30, DISPLAY_WIDTH_CENTER);
    REG_WIN0V = WIN_RANGE(0x30, DISPLAY_WIDTH_CENTER);
    gBlendValue = 6;
    REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG1;

    if ((gNewKeys & A_BUTTON) || (gNewKeys & START_BUTTON))
    {
        s8 tmp = gUnk_03004658[0xF]; // FAKE?
        if (tmp == 0)
        {
            m4aSongNumStart(0x52);

            if ((gUnk_03003410.unk6 != 1) || (gSaveData->startedFile[gUnk_03004658[0xC]] != 0))
            {
                gUnk_03004658[0xF] += 1;
                gUnk_03004658[0xD] = gUnk_03004658[0xC];

                if ((gUnk_03003410.unk6 == 0) && (gSaveData->startedFile[gUnk_03004658[0xC]] != 0))
                {
                    gUnk_03004658[0xC] = 1;
                }
                else
                {
                    gUnk_03004658[0xC] = 0;
                }

                sub_0804A070(0x12);
            }
        }
        else if (gUnk_03002900 == 0)
        {
            if (gUnk_03004658[0xC] == 0)
            {
                m4aSongNumStart(0x52);
                gUnk_03002900 = 1;
            }
            else
            {
                m4aSongNumStart(0x54);
                gUnk_03004658[0xF] = 0;
                gUnk_03004658[0xC] = gUnk_03004658[0xD];
                sub_0804A070(0);
            }
        }
    }

    if (gUnk_03002900 != 0)
    {
        gUnk_03002900 += 1;
        if (gUnk_03002900 == 0x14)
        {
            gUnk_03004C20.sceneFrameCounter = -1;
            gUnk_03004C20.world = gSaveData->world[gUnk_03004658[0xD]] + 1;
            gUnk_03004C20.level = gSaveData->world[gUnk_03004658[0xD]] + 1;

            gSaveData->currentSaveFile = gUnk_03004658[0xD];
            gSaveData->currentSaveFileAddress = gSaveData->currentSaveFile * 0x10;
            gBlendValue = 0;
            sub_080008DC();

            if (gUnk_03003410.unk6 == 0)
            {
                DmaFill32(3, 0, gUnk_03005284, 0x24);
                DmaFill32(3, 0, gUnk_03004670, 0x40);
                gUnk_03004C20.world = 1;
                gUnk_03005284->unk1 = 1;
                gUnk_03005284->unk0 = gUnk_03005220.lives = 3;
                gUnk_03005284->unk1C = 2;
                gUnk_03005284->unk1D = 1;
                DmaFill16(3, 0x7F7F, &gUnk_03004670->levelInfo[0][0], 0x30);
                gUnk_03005284->unk4 = 0;
                gUnk_03003410.unkC = 1;
                gCallbackQueue.current[1] = sub_0802528C;
            }
            else
            {
                gCallbackQueue.current[1] = sub_0802534C;
            }
        }
    }

    if (gNewKeys & B_BUTTON)
    {
        s8 tmp = gUnk_03004658[0xF]; // FAKE??
        if (tmp == 0)
        {
            gBlendValue = 0x10;
            gUnk_03004D9C = 0;
            gUnk_03004C20.sceneFrameCounter = -1;

            gIntrTable.vBlank = sub_080009D8;
            gCallbackQueue.current[1] = sub_08049724;
            gCallbackQueue.current[2] = sub_0800D0C4;
            sub_080008DC();
        }
        else
        {
            gUnk_03004658[0xF] = 0;
            gUnk_03004658[0xC] = gUnk_03004658[0xD];
            sub_0804A070(0);
            m4aSongNumStart(0x54);
        }
    }
}
