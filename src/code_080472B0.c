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
u8 HeldUp(void)
{
    if (gHeldKeys & DPAD_UP)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

// 472C8
void DeleteAllSaveDataScreenInit(void)
{
    u32 i;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    REG_IE &= ~INTR_FLAG_HBLANK;
    REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
    m4aSoundVSyncOff();

    gDeleteAllSaveDataMinigameUnlocked = HeldUp();
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

    for (i = 0; i < gUnk_03005428; i++)
    {
        gEntityInfo[i].priority = 3;
        gEntityInfo[i].visible = 0;
        gEntityInfo[i].unkF = 0x1C;
    }

    gBgInfo[0].pTiles = BG_VRAM;
    gBgInfo[0].pTilemap = BG_VRAM + 0x3000;
    gBgInfo[1].pTiles = BG_VRAM + 0x4000;
    gBgInfo[1].pTilemap = BG_VRAM + 0x7000;

    gBg2XMag = 0x200;
    gBg2YMag = 0x200;

    DecompressDma(&gUnk_082ECEA8, BG_PLTT, BG_PLTT_SIZE);

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
    REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_MOSAIC | BGCNT_SCREENBASE(6);
    REG_BG1CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(14);
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
    gBg2YMag = 0x100;
    gBg2XMag = 0x100;
    gBg2Alpha = 0;
    REG_DISPCNT = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON;
    gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_FIRST_YES_NO;
    gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO;
    REG_BLDCNT = BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BD;
    gEntityInfo[0].unk8.split.unk8 = 5; // unk8 acts as a timer here

    gIntrTable.hBlank = HBlankIntr_DeleteAllSaveDataScreen;
    gIntrTable.vBlank = VBlankIntr_Common;

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
void DeleteAllSaveDataMinigameHandler(void)
{
    u32 i;

    // If up was held while entering "Delete all save data" screen, and then the select button is pressed, spawn Klonoa
    // Will also respawn Klonoa in center once minigame is started
    if ((gNewKeys & SELECT_BUTTON) && (gDeleteAllSaveDataMinigameUnlocked == TRUE))
    {
        gEntityInfo[0].visible = 1;
        gEntityInfo[0].xPosBg2 = DISPLAY_WIDTH_CENTER;
        gEntityInfo[0].yPosBg2 = DISPLAY_HEIGHT - 4;
        sub_08025B78(0, 0x22);
    }

    // If Klonoa is spawned and not stunned
    if ((gEntityInfo[0].visible == 1) && (gEntityAnimationInfo[0].state != 0xC))
    {
        if (gHeldKeys & R_BUTTON)
        {
            // Move Right
            gEntityInfo[0].unkC_2 = 0;
            if (gEntityAnimationInfo[0].state != 1)
            {
                // Set Klonoa to moving
                sub_08025B78(0, 1);
            }

            if (gEntityInfo[0].xPosBg2 < (DISPLAY_WIDTH - 0x10))
            {
                gEntityInfo[0].xPosBg2 += 2;
            }
        }
        else if (gHeldKeys & L_BUTTON)
        {
            // Move left
            gEntityInfo[0].unkC_2 = 1;
            if (gEntityAnimationInfo[0].state != 1)
            {
                // Set Klonoa to moving
                sub_08025B78(0, 1);
            }

            if (gEntityInfo[0].xPosBg2 > 0x10)
            {
                gEntityInfo[0].xPosBg2 -= 2;
            }
        }
        else if (gEntityAnimationInfo[0].state != 0x22)
        {
            // Set Klonoa to standing still 
            sub_08025B78(0, 0x22);
        }
    }

    // Falling Moos
    for (i = 14; i <= 19; i++)
    {
        switch (gEntityInfo[i].unkF)
        {
            // Update
            case 0:
                // Move Moo down until offscreen, then spawn new Moo
                gEntityInfo[i].yPosBg2 += gEntityInfo[i].unk8.split.unk9;
                if (gEntityInfo[i].yPosBg2 > (DISPLAY_HEIGHT + 0x20))
                {
                    gEntityInfo[i].unkF = 28;
                }

                // If Klonoa collides with Moo, set to stun state
                if (((gEntityInfo[0].xPosBg2 - 0xC) < (gEntityInfo[i].xPosBg2 + 0xA)) && ((gEntityInfo[0].xPosBg2 + 0xC) > (gEntityInfo[i].xPosBg2 - 0xA)))
                {
                    if (((gEntityInfo[0].yPosBg2 - 0x18) < (gEntityInfo[i].yPosBg2 - 8)) && (gEntityInfo[0].yPosBg2 > (gEntityInfo[i].yPosBg2 - 0x14)))
                    {
                        sub_08025B78(0, 0xC);
                    }
                }
                break;

            // Init
            case 28:
                gEntityInfo[i].xPosBg2 = ((thunk_GetRandomValue() % 6) * 40) + (thunk_GetRandomValue() % 40); // Random spawn position
                gEntityInfo[i].yPosBg2 = 0;
                gEntityInfo[i].unk8.split.unk9 = (thunk_GetRandomValue() % 3) + 2; // Set random velocity between 2 and 4
                gEntityInfo[i].unkF = 0;
                gEntityInfo[i].unkC_2 = thunk_GetRandomValue() % 4; // Random orientation

                // First four Moos are red, next two are green
                if (i <= 17)
                {
                    sub_08025B78(i, 2);
                }
                else
                {
                    sub_08025B78(i, 1);
                }
                break;
        }
    }
}

// 477A8
void DeleteAllSaveDataScreenHandler(void)
{
    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        DeleteAllSaveDataScreenInit();
    }

    DeleteAllSaveDataMinigameHandler();
    sub_08025BA4();

    switch (gDeleteAllSaveDataScreenStage)
    {
        case DELETE_ALL_SAVE_DATA_SCREEN_STAGE_FIRST_YES_NO:
            if (gNewKeys & DPAD_LEFT)
            {
                // Copy "YES" highlighted tiles
                DmaCopy16(3, &gBgTilemapBufs[1][0x380], &gBgTilemapBufs[1][0xE0], 0x80);
                if (gDeleteAllSaveDataScreenCursor != DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_YES)
                {
                    m4aSongNumStart(0x51);
                }
                gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_YES;
            }
            else if (gNewKeys & DPAD_RIGHT)
            {
                // Copy "NO" highlighted tiles
                DmaCopy16(3, &gBgTilemapBufs[1][0x340], &gBgTilemapBufs[1][0xE0], 0x80);
                if (gDeleteAllSaveDataScreenCursor != DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO)
                {
                    m4aSongNumStart(0x51);
                }
                gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO;
            }
            else if (gNewKeys & A_BUTTON)
            {
                if (gDeleteAllSaveDataScreenCursor == DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO)
                {
                    // Exit screen
                    gUnk_03004C20.sceneFrameCounter = 0;
                    m4aSongNumStart(0x54);
                    gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_NOT_DELETED;
                }
                else
                {
                    // Set up second stage
                    m4aSongNumStart(0x52);
                    gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_SECOND_YES_NO;
                    DmaCopy16(3, &gBgTilemapBufs[1][0x2C0], &gBgTilemapBufs[1][0x140], 0x80);
                    DmaCopy16(3, &gBgTilemapBufs[1][0x340], &gBgTilemapBufs[1][0x1A0], 0x80);
                    gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO;
                }
            }
            else if (gNewKeys & B_BUTTON)
            {
                // Exit screen
                gUnk_03004C20.sceneFrameCounter = 0;
                m4aSongNumStart(0x54);
                gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_NOT_DELETED;
            }
            break;

        case DELETE_ALL_SAVE_DATA_SCREEN_STAGE_SECOND_YES_NO:
            // Wait 5 frames
            if (gEntityInfo[0].unk8.split.unk8 < 10)
            {
                gEntityInfo[0].unk8.split.unk8 += 1;
                return;
            }

            if (gNewKeys & DPAD_LEFT)
            {
                // Copy "YES" highlighted tiles
                DmaCopy16(3, &gBgTilemapBufs[1][0x380], &gBgTilemapBufs[1][0x1A0], 0x80);
                if (gDeleteAllSaveDataScreenCursor != DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_YES)
                {
                    m4aSongNumStart(0x51);
                }
                gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_YES;
            }
            else if (gNewKeys & DPAD_RIGHT)
            {
                // Copy "NO" highlighted tiles
                DmaCopy16(3, &gBgTilemapBufs[1][0x340], &gBgTilemapBufs[1][0x1A0], 0x80);
                if (gDeleteAllSaveDataScreenCursor != DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO)
                {
                    m4aSongNumStart(0x51);
                }
                gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO;
            }
            else if (gNewKeys & A_BUTTON)
            {
                DmaFill16(3, 0, &gBgTilemapBufs[1][0], 0x500);
                if (gDeleteAllSaveDataScreenCursor == DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO)
                {
                    // Exit screen
                    gUnk_03004C20.sceneFrameCounter = 0;
                    m4aSongNumStart(0x54);
                    gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_NOT_DELETED;
                    gUnk_03004C20.sceneFrameCounter = 0;
                }
                else
                {
                    m4aSongNumStart(0x52);
                    gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DELETE_DATA;
                }
            }
            else if (gNewKeys & B_BUTTON)
            {
                // Exit screen
                gUnk_03004C20.sceneFrameCounter = 0;
                m4aSongNumStart(0x54);
                gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_NOT_DELETED;
            }
            break;

        case DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DELETE_DATA:
            // Wait half a second
            if (gEntityInfo[0].unk8.split.unk8 < 160)
            {
                gEntityInfo[0].unk8.split.unk8 += 5;
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
            gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_DELETED;
            break;

        case DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_DELETED:
            // Copy "All data deleted" tiles
            DmaCopy16(3, &gBgTilemapBufs[1][0x300], &gBgTilemapBufs[1][0x120], 0x80);
            if (gNewKeys & A_BUTTON)
            {
                gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_EXIT;
            }
            break;

        case DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_NOT_DELETED:
            if (gUnk_03004C20.sceneFrameCounter == 40)
            {
                gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_EXIT;
            }
            break;

        case DELETE_ALL_SAVE_DATA_SCREEN_STAGE_EXIT:
            SoftResetRom(RESET_ALL);
            break;
    }

    REG_BLDALPHA = 0;
}

// 47ABC
void sub_08047ABC(void)
{
    // Unused
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
    // Called when text box appears
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
    REG_WIN1H = gUnk_03004D90.unk4 = WIN_RANGE(DISPLAY_WIDTH_CENTER, DISPLAY_WIDTH_CENTER);
    REG_WIN1V = gUnk_03004D90.unk6 = WIN_RANGE(DISPLAY_HEIGHT_CENTER - 4, DISPLAY_HEIGHT_CENTER - 4);
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
            if ((gUnk_03004C20.world == gUnk_0811769C[var_r4][0]) && (gUnk_03004C20.level == gUnk_0811769C[var_r4][1]) && (((gEntityInfo[0].yPosBg2 - 0x10) >> 3) == gUnk_0811769C[var_r4][3]) && (((gEntityInfo[0].xPosBg2 + 8) >> 3) >= gUnk_0811769C[var_r4][2]) && (((gEntityInfo[0].xPosBg2 - 8) >> 3) <= (gUnk_0811769C[var_r4][2] + 3)))
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
        gCallbackQueue.next[2] = CommonWaitForNextFrame;
    }
    else
    {
        gCallbackQueue.next[2] = LevelSelectWaitForNextFrame;
    }
    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    gCallbackQueue.nextCount = 4;
}

// 47EC8
void sub_08047EC8(void)
{
    // Text box, probably for growing/shrinking effect
    u32 tmp;
    u32 tmp2;

    tmp = WIN_RANGE(2, (u8)-3); // 0x2FD, Required for matching, possibly another tmp for 0x4FB, or used inlines

    if (gUnk_03004D90.unk8 == 1)
    {
        if (gUnk_03004D90.unk4 == WIN_RANGE(0, DISPLAY_WIDTH))
        {
            gUnk_03004D90.unk8 = 0;
            return;
        }

        gUnk_03004D90.unk4 -= WIN_RANGE(4, (u8)-5); // 0x4FB
        gUnk_03004D90.unk6 -= tmp;
        REG_WIN1H = gUnk_03004D90.unk4;
        REG_WIN1V = gUnk_03004D90.unk6;
    }

    if (gUnk_03004D90.unk8 == 2)
    {
        if (gUnk_03004D90.unk4 == WIN_RANGE(DISPLAY_WIDTH_CENTER, DISPLAY_WIDTH_CENTER))
        {
            PauseMenuScreenRestoreGfx();
            m4aSoundVSyncOn();
            m4aMPlayAllContinue();
            gCallbackQueue.current[1] = sub_08047F80;
            REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
            return;
        }

        gUnk_03004D90.unk4 += WIN_RANGE(4, (u8)-5); // 0x4FB
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
    // Text box, fade back to gameplay
    u32 i;

    if (gBlendValue == 0)
    {
        REG_WININ |= WININ_WIN0_CLR;
        gBlendValue = gDisplayBackup.blendValue;
        REG_BLDCNT = gDisplayBackup.bldCnt;
        REG_BG0CNT = gDisplayBackup.bg0Cnt;
        REG_BG1CNT = gDisplayBackup.bg1Cnt;
        REG_BG2CNT = gDisplayBackup.bg2Cnt;
        REG_BG3CNT = gDisplayBackup.bg3Cnt;
        gUnk_03004C20.sceneFrameCounter = gDisplayBackup.sceneFrameCounter;
        
        for (i = 0; i < 10; i++)
        {
            gCallbackQueue.next[i] = gCallbackQueue.previous[i];
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
    // Called on transition to level select
    u8 nbrExStagesAllStones;
    u32 removed;
    u32 world;
    u32 j;
    u32 i;
    u32 level;
    u8 nbrStagesBeaten;
    u8 nbrActionStagesAllStones;
    u8 nbrPuzzleStagesAllStones;

    if (gUnk_030034E4 == 1)
    {
        return;
    }

    gNewKeys = 0;

    if (gUnk_03004670->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG)
    {
        nbrActionStagesAllStones = 0;
        nbrPuzzleStagesAllStones = 0;
        nbrStagesBeaten = 0;
        nbrExStagesAllStones = 0;

        for (world = 0; world < 5; world++)
        {
            for (level = 0; level < 7; level++)
            {
                if (((level == 3) || (level == 5)) && ((gUnk_03004670->levelInfo[world][level] & LEVEL_INFO_DREAM_STONES_MASK) == 100))
                {
                    nbrActionStagesAllStones += 1;
                }
                else if ((level != 7) && ((gUnk_03004670->levelInfo[world][level] & LEVEL_INFO_DREAM_STONES_MASK) == 30))
                {
                    nbrPuzzleStagesAllStones += 1;
                }

                if (gUnk_03004670->levelInfo[world][level] & LEVEL_INFO_BEATEN_FLAG)
                {
                    nbrStagesBeaten += 1;
                }
            }
        }
    
        if ((gUnk_03004670->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            nbrExStagesAllStones += 1;
        }
    
        if ((gUnk_03004670->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            nbrExStagesAllStones += 1;
        }

        // Unlock EX-1 when 35 stages are beaten
        if (!(gUnk_03004670->levelInfo[5][0] & LEVEL_INFO_BEATEN_FLAG) && (nbrStagesBeaten == 35))
        {
            gUnk_03004670->levelInfo[5][0] |= LEVEL_INFO_BEATEN_FLAG;
    
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

            gUnk_03004D90.unk8 = 1;
            gUnk_03004D90.unk9 = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = sub_08047B1C;
            gCallbackQueue.next[1] = LevelSelectWaitForNextFrame;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }

        // Unlock EX-2 when 25 puzzle and action stages are beaten with all stones collected
        if (!(gUnk_03004670->levelInfo[5][1] & LEVEL_INFO_BEATEN_FLAG) && ((nbrPuzzleStagesAllStones + nbrActionStagesAllStones) >= 25))
        {
            gUnk_03004670->levelInfo[5][1] |= LEVEL_INFO_BEATEN_FLAG;
    
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

            gUnk_03004D90.unk8 = 1;
            gUnk_03004D90.unk9 = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = sub_08047B1C;
            gCallbackQueue.next[1] = LevelSelectWaitForNextFrame;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }

        // Unlock EX-3 when all stages are beaten with all stones collected
        if (!(gUnk_03004670->levelInfo[5][2] & LEVEL_INFO_BEATEN_FLAG) && ((nbrExStagesAllStones + nbrActionStagesAllStones + nbrPuzzleStagesAllStones) == 37))
        {
            gUnk_03004670->levelInfo[5][2] |= LEVEL_INFO_BEATEN_FLAG;
    
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

            gUnk_03004D90.unk8 = 1;
            gUnk_03004D90.unk9 = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = sub_08047B1C;
            gCallbackQueue.next[1] = LevelSelectWaitForNextFrame;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }
    }

    // remove sub_08048028 from callback queue
    removed = 0;
    for (j = 0; j < (gCallbackQueue.currentCount - 1); j++)
    {
        if ((gCallbackQueue.current[j] == sub_08048028) || (removed == 1))
        {
            gCallbackQueue.next[j] = gCallbackQueue.current[j + 1];
            removed = 1;
        }
        else
        {
            gCallbackQueue.next[j] = gCallbackQueue.current[j];
        }
    }
    if (removed == 1)
    {
        gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    }
}

// 4832C
void BootScreenInit(void)
{
    // Boot screen, called once at start
    s32 i;
    s32 j;

    gUnk_03005428 = 1;
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
    LoadAllSaveData();
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
        gCallbackQueue.current[1] = TitleScreenHandler;
        gCallbackQueue.current[2] = TitleScreenWaitForNextFrame;
        gTitleScreenStage = 0;
        gBlendValue = 0x10;
        REG_BLDCNT = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;
    }
}

// 4886C
void TitleScreenInit(void)
{
    // Init title screen
    u16 i;
    void *heapPtr;

    gUnk_03005284->shootButtonConfig = 2;
    gUnk_03005284->jumpButtonConfig = 1;
    gUnk_03004C20.unkA = 0;
    gUnk_03004C20.isHoverBoardLevel = 0;

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

    gUnk_03005428 = 0xD;
    for (i = 0; gUnk_08116590[i].unk0 != 0xFFFF; i++)
    {
        sub_08003DC0(gUnk_03005428++, gUnk_08116590[i].unk7, gUnk_08116590[i].unk0, gUnk_08116590[i].unk2, gUnk_08116590[i].unk4, 0, gUnk_08116590[i].unk5, gUnk_08116590[i].unk6, gUnk_08116590[i].unk8);
    }
    gUnk_03005428 += 0xA;

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
    gSaveFilesStarted = gSaveData->startedFile[0] | gSaveData->startedFile[1] | gSaveData->startedFile[2];

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
    m4aSongNumStart(0);
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
            gUnk_03004658->cursorIndex = 0;
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

        // Go to demo
        case TITLE_SCREEN_STAGE_GO_TO_DEMO:
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
                    m4aSongNumStart(0x52);
                }

                if ((gUnk_03004C20.sceneFrameCounter >= 0x400) && (gBlendValue == 0))
                {
                    gTitleScreenStage = TITLE_SCREEN_STAGE_GO_TO_DEMO;
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
                        m4aSongNumStart(0x51);
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
                        m4aSongNumStart(0x51);
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
                m4aSongNumStart(0x54);
                gBlendValue = 0;
            }

            if ((gNewKeys & START_BUTTON) || (gNewKeys & A_BUTTON))
            {
                gTitleScreenStage = TITLE_SCREEN_STAGE_GO_TO_FILE_SELECT;
                TitleScreenStageSetup(gTitleScreenStage);
                m4aSongNumStart(0x52);
            }

            DmaCopy16Wait(3, &gBgTilemapBufs[0][0], gBgInfo[0].pTilemap, 0x800);
            break;

        // Go to demo
        case TITLE_SCREEN_STAGE_GO_TO_DEMO:
            gBlendValue = gUnk_03004C20.sceneFrameCounter / 4;
            if (gUnk_03004C20.sceneFrameCounter < 0x40)
            {
                break;
            }

            m4aMPlayAllStop();
            gUnk_03004C20.sceneFrameCounter = -1;
            gTitleScreenStage = 0;
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

// 49BFC
void FileSelectScreenInit(void)
{
    // Init file select
    u8 i;

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
    gEntityInfo[0xD].visible = 1;

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
    
    for (i = 0; i < 20; i++)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg2Tilemap + (i * 0x1E), gUnk_03004DB0 + (i * 0x20), 0x1E);
        DmaFill16(3, 0, &gBgTilemapBufs[1][0] + (i * 0x20), 0x3C);
        DmaFill16(3, 0, &gBgTilemapBufs[0][0] + (i * 0x20), 0x3C);
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
    REG_BG0CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_MOSAIC | BGCNT_SCREENBASE(28);
    REG_BG1CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(29);
    REG_BG2CNT = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC | BGCNT_256COLOR | BGCNT_SCREENBASE(30) | BGCNT_WRAP | BGCNT_TXT512x256;

    gIntrTable.vBlank = VBlankIntr_Common;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    gFileSelectScreenTransitionDelay = 0;
}

// 49EFC
void FileSelectScreenUpdateCursor(u8 fileSelectStage)
{
    if (fileSelectStage == FILE_SELECT_STAGE_SELECT)
    {
        if (gNewKeys & SELECT_BUTTON)
        {
            gUnk_03004658->cursorIndex = (gUnk_03004658->cursorIndex + 1) % 3;
            m4aSongNumStart(0x51);
        }
        else if ((gNewKeys & DPAD_LEFT) && (gUnk_03004658->cursorIndex != 0))
        {
            gUnk_03004658->cursorIndex -= 1;
            m4aSongNumStart(0x51);
        }
        else if ((gNewKeys & DPAD_RIGHT) && (gUnk_03004658->cursorIndex != 2))
        {
            gUnk_03004658->cursorIndex += 1;
            m4aSongNumStart(0x51);
        }

        gEntityInfo[0xD].xPosBg2 = gUnk_0811717C[0][0][0] + (gUnk_03004658->cursorIndex * 0x50);
        gEntityInfo[0xD].yPosBg2 = gUnk_0811717C[0][0][1];
        REG_WIN0H = WIN_RANGE((gUnk_03004658->cursorIndex * 0x50) + 8, (gUnk_03004658->cursorIndex * 0x50) + 0x48);
    }
    else
    {
        // FILE_SELECT_STAGE_CONFIRM
        if (gNewKeys & SELECT_BUTTON)
        {
            gUnk_03004658->cursorIndex = (gUnk_03004658->cursorIndex + 1) % 2;
            m4aSongNumStart(0x51);
        }
        else if ((gNewKeys & DPAD_LEFT) && (gUnk_03004658->cursorIndex == 1))
        {
            gUnk_03004658->cursorIndex -= 1;
            m4aSongNumStart(0x51);
        }
        else if ((gNewKeys & DPAD_RIGHT) && (gUnk_03004658->cursorIndex == 0))
        {
            gUnk_03004658->cursorIndex += 1;
            m4aSongNumStart(0x51);
        }
    
        gEntityInfo[0xD].xPosBg2 = gUnk_0811717C[0][0][0] + ((gUnk_03004658->cursorIndex * 0x68) + 3);
        gEntityInfo[0xD].yPosBg2 = gUnk_0811717C[0][0][1] + 0x53;
        REG_WIN0H = WIN_RANGE(DISPLAY_WIDTH_CENTER - 0x20, DISPLAY_WIDTH_CENTER + 0x20);
    }
}

// 4A070
void FileSelectScreenDrawInfo(u8 arg0)
{
    // file select info gfx and stuff
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
            if (gSaveData->completedFile[gUnk_03004658->selectedSaveFile] & 0x80)
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
                if (gSaveData->startedFile[gUnk_03004658->selectedSaveFile] == 0)
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
        file = gUnk_03004658->selectedSaveFile;
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

        if ((gSaveData->sceneType[file] == SCENE_TYPE_LEVEL_SELECT) || (gSaveData->sceneType[file] == SCENE_TYPE_WORLD_MAP) || ((gSaveData->sceneType[file] == SCENE_TYPE_CUTSCENE) && ((gSaveData->unk20[file] % 3) != 0) && (gSaveData->unk20[file] != 1)))
        {
            if (gSaveData->world[file] == 6)
            {
                for (row = 0; row <= 1; row++)
                {
                    // Copy "EX-"
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
        else if (((gSaveData->sceneType[file] == SCENE_TYPE_LEVEL) && (gSaveData->level[file] == 8)) || ((gSaveData->sceneType[file] == SCENE_TYPE_CUTSCENE) && ((gSaveData->unk20[file] % 3) == 0) && (gSaveData->unk20[file] != 0)))
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
        else if (gSaveData->sceneType[file] == SCENE_TYPE_CUTSCENE)
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
void FileSelectScreenHandler(void)
{
    // File select
    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        FileSelectScreenInit();
        FileSelectScreenDrawInfo(0);

        if (gUnk_03003410.unk6 == 0)
        {
            gUnk_03004658->cursorIndex = 1;
        }
        else
        {
            gUnk_03004658->cursorIndex = gSaveData->lastLoadedSaveFile;
        }

        gUnk_03004658->fileSelectStage = FILE_SELECT_STAGE_SELECT;
        sub_08025B78(7, 0);
        gEntityInfo[0xD].unkF = 0;
        m4aSongNumStart(2);
    }

    sub_08025BA4();
    FileSelectScreenUpdateCursor(gUnk_03004658->fileSelectStage);

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
        if (gUnk_03004658->fileSelectStage == FILE_SELECT_STAGE_SELECT)
        {
            m4aSongNumStart(0x52);

            if ((gUnk_03003410.unk6 != 1) || (gSaveData->startedFile[gUnk_03004658->cursorIndex] != 0))
            {
                gUnk_03004658->fileSelectStage += 1; // FILE_SELECT_STAGE_CONFIRM
                gUnk_03004658->selectedSaveFile = gUnk_03004658->cursorIndex;

                if ((gUnk_03003410.unk6 == 0) && (gSaveData->startedFile[gUnk_03004658->cursorIndex] != 0))
                {
                    gUnk_03004658->cursorIndex = 1;
                }
                else
                {
                    gUnk_03004658->cursorIndex = 0;
                }

                FileSelectScreenDrawInfo(0x12);
            }
        }
        else
        {
            // FILE_SELECT_STAGE_CONFIRM
            if (gFileSelectScreenTransitionDelay == 0)
            {
                if (gUnk_03004658->cursorIndex == 0)
                {
                    m4aSongNumStart(0x52);
                    gFileSelectScreenTransitionDelay = 1;
                }
                else
                {
                    m4aSongNumStart(0x54);
                    gUnk_03004658->fileSelectStage = FILE_SELECT_STAGE_SELECT;
                    gUnk_03004658->cursorIndex = gUnk_03004658->selectedSaveFile;
                    FileSelectScreenDrawInfo(0);
                }
            }
        }
    }

    if (gFileSelectScreenTransitionDelay != 0)
    {
        gFileSelectScreenTransitionDelay += 1;
        if (gFileSelectScreenTransitionDelay == 20)
        {
            gUnk_03004C20.sceneFrameCounter = -1;
            gUnk_03004C20.world = gSaveData->world[gUnk_03004658->selectedSaveFile] + 1;
            gUnk_03004C20.level = gSaveData->world[gUnk_03004658->selectedSaveFile] + 1;

            gSaveData->currentSaveFile = gUnk_03004658->selectedSaveFile;
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
                gUnk_03005284->shootButtonConfig = 2;
                gUnk_03005284->jumpButtonConfig = 1;
                DmaFill16(3, 0x7F7F, &gUnk_03004670->levelInfo[0][0], 0x30);
                gUnk_03005284->unk4 = 0;
                gUnk_03003410.unkC = 1;
                gCallbackQueue.current[1] = TransitionFromWorldMapToLevelSelect_FadeOut;
            }
            else
            {
                gCallbackQueue.current[1] = TransitionFromFileSelectToLevel_FadeOut;
            }
        }
    }

    if (gNewKeys & B_BUTTON)
    {
        if (gUnk_03004658->fileSelectStage == FILE_SELECT_STAGE_SELECT)
        {
            gBlendValue = 0x10;
            gTitleScreenStage = 0;
            gUnk_03004C20.sceneFrameCounter = -1;

            gIntrTable.vBlank = VBlankIntr_Common;
            gCallbackQueue.current[1] = TitleScreenHandler;
            gCallbackQueue.current[2] = TitleScreenWaitForNextFrame;
            sub_080008DC();
        }
        else
        {
            // FILE_SELECT_STAGE_CONFIRM
            gUnk_03004658->fileSelectStage = FILE_SELECT_STAGE_SELECT;
            gUnk_03004658->cursorIndex = gUnk_03004658->selectedSaveFile;
            FileSelectScreenDrawInfo(0);
            m4aSongNumStart(0x54);
        }
    }
}
