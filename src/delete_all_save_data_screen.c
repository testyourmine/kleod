#include "global.h"
#include "delete_all_save_data_screen.h"
#include "anim.h"
#include "code_08003D58.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "rand.h"
#include "save.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern u32 gUnk_082ECEA8[];
extern u32 gUnk_082ECEF8[];
extern u32 gUnk_082ED1FC[];

extern u32 gUnk_08312A58[];
extern u32 gUnk_08312B70[];

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
    gEntitySlotCount = 1;
    sub_08003D58();
    DmaCopy32(3, gOamBuffer, OAM, 0x400);

    gUnk_03003410.unk8 = 1;
    gUnk_03004C20.level = 1;
    gUnk_03004C20.world = 1;
    EntityInit();

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    for (i = 0; i < gEntitySlotCount; i++)
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
        SetEntityAnimationInfoState(0, 0x22);
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
                SetEntityAnimationInfoState(0, 1);
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
                SetEntityAnimationInfoState(0, 1);
            }

            if (gEntityInfo[0].xPosBg2 > 0x10)
            {
                gEntityInfo[0].xPosBg2 -= 2;
            }
        }
        else if (gEntityAnimationInfo[0].state != 0x22)
        {
            // Set Klonoa to standing still 
            SetEntityAnimationInfoState(0, 0x22);
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
                        SetEntityAnimationInfoState(0, 0xC);
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
                    SetEntityAnimationInfoState(i, 2);
                }
                else
                {
                    SetEntityAnimationInfoState(i, 1);
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
    UpdateEntityAnimationInfoEntries();

    switch (gDeleteAllSaveDataScreenStage)
    {
        case DELETE_ALL_SAVE_DATA_SCREEN_STAGE_FIRST_YES_NO:
            if (gNewKeys & DPAD_LEFT)
            {
                // Copy "YES" highlighted tiles
                DmaCopy16(3, &gBgTilemapBufs[1][0x380], &gBgTilemapBufs[1][0xE0], 0x80);
                if (gDeleteAllSaveDataScreenCursor != DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_YES)
                {
                    m4aSongNumStart(SE_CURSOR_MOVE);
                }
                gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_YES;
            }
            else if (gNewKeys & DPAD_RIGHT)
            {
                // Copy "NO" highlighted tiles
                DmaCopy16(3, &gBgTilemapBufs[1][0x340], &gBgTilemapBufs[1][0xE0], 0x80);
                if (gDeleteAllSaveDataScreenCursor != DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO)
                {
                    m4aSongNumStart(SE_CURSOR_MOVE);
                }
                gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO;
            }
            else if (gNewKeys & A_BUTTON)
            {
                if (gDeleteAllSaveDataScreenCursor == DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO)
                {
                    // Exit screen
                    gUnk_03004C20.sceneFrameCounter = 0;
                    m4aSongNumStart(SE_EXIT_MENU);
                    gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_NOT_DELETED;
                }
                else
                {
                    // Set up second stage
                    m4aSongNumStart(SE_CURSOR_CONFIRM);
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
                m4aSongNumStart(SE_EXIT_MENU);
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
                    m4aSongNumStart(SE_CURSOR_MOVE);
                }
                gDeleteAllSaveDataScreenCursor = DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_YES;
            }
            else if (gNewKeys & DPAD_RIGHT)
            {
                // Copy "NO" highlighted tiles
                DmaCopy16(3, &gBgTilemapBufs[1][0x340], &gBgTilemapBufs[1][0x1A0], 0x80);
                if (gDeleteAllSaveDataScreenCursor != DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO)
                {
                    m4aSongNumStart(SE_CURSOR_MOVE);
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
                    m4aSongNumStart(SE_EXIT_MENU);
                    gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_NOT_DELETED;
                    gUnk_03004C20.sceneFrameCounter = 0;
                }
                else
                {
                    m4aSongNumStart(SE_CURSOR_CONFIRM);
                    gDeleteAllSaveDataScreenStage = DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DELETE_DATA;
                }
            }
            else if (gNewKeys & B_BUTTON)
            {
                // Exit screen
                gUnk_03004C20.sceneFrameCounter = 0;
                m4aSongNumStart(SE_EXIT_MENU);
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
