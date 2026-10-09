#include "global.h"
#include "file_select_screen.h"
#include "anim.h"
#include "code_08003D58.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "main.h"
#include "title_screen.h"
#include "transitions.h"
#include "wait_for_next_frame.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern const u8 gUnk_0811717C[6][40][5];

extern u32 gUnk_082F8BF8[];
extern u32 gUnk_082FA784[];
extern u32 gUnk_082FA8C0[];
extern u32 gUnk_082FB0E0[];
extern u32 gUnk_082FB280[];
extern u32 gUnk_082FBB9C[];
extern u32 gUnk_082FBE10[];

// 49BFC
void FileSelectScreenInit(void)
{
    // Init file select
    u8 i;

    sub_08003D58();

    DmaCopy32(3, gOamBuffer, OAM, 0x400);

    gUnk_03004C20.world = 1;
    gUnk_03003410.unk8 = 0;
    EntityInit();

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
        DmaCopy16(3, gBgDataPtrs.pBufBg2Tilemap + (i * 0x1E), gBg2TilemapData + (i * 0x20), 0x1E);
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
            gMenuInfo->cursorIndex = (gMenuInfo->cursorIndex + 1) % 3;
            m4aSongNumStart(SE_CURSOR_MOVE);
        }
        else if ((gNewKeys & DPAD_LEFT) && (gMenuInfo->cursorIndex != 0))
        {
            gMenuInfo->cursorIndex -= 1;
            m4aSongNumStart(SE_CURSOR_MOVE);
        }
        else if ((gNewKeys & DPAD_RIGHT) && (gMenuInfo->cursorIndex != 2))
        {
            gMenuInfo->cursorIndex += 1;
            m4aSongNumStart(SE_CURSOR_MOVE);
        }

        gEntityInfo[0xD].xPosBg2 = gUnk_0811717C[0][0][0] + (gMenuInfo->cursorIndex * 0x50);
        gEntityInfo[0xD].yPosBg2 = gUnk_0811717C[0][0][1];
        REG_WIN0H = WIN_RANGE((gMenuInfo->cursorIndex * 0x50) + 8, (gMenuInfo->cursorIndex * 0x50) + 0x48);
    }
    else
    {
        // FILE_SELECT_STAGE_CONFIRM
        if (gNewKeys & SELECT_BUTTON)
        {
            gMenuInfo->cursorIndex = (gMenuInfo->cursorIndex + 1) % 2;
            m4aSongNumStart(SE_CURSOR_MOVE);
        }
        else if ((gNewKeys & DPAD_LEFT) && (gMenuInfo->cursorIndex == 1))
        {
            gMenuInfo->cursorIndex -= 1;
            m4aSongNumStart(SE_CURSOR_MOVE);
        }
        else if ((gNewKeys & DPAD_RIGHT) && (gMenuInfo->cursorIndex == 0))
        {
            gMenuInfo->cursorIndex += 1;
            m4aSongNumStart(SE_CURSOR_MOVE);
        }
    
        gEntityInfo[0xD].xPosBg2 = gUnk_0811717C[0][0][0] + ((gMenuInfo->cursorIndex * 0x68) + 3);
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
                    if (gGlobalSaveData->completedFile[file] & 0x80)
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
            if (gGlobalSaveData->completedFile[gMenuInfo->selectedSaveFile] & 0x80)
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
                if (gGlobalSaveData->startedFile[gMenuInfo->selectedSaveFile] == 0)
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
        file = gMenuInfo->selectedSaveFile;
        start = 1;
        end = 1;
    }
    
    for (col = start; col <= end; col++, file++)
    {
        if (!gGlobalSaveData->startedFile[file])
        {
            // Copy "NO"
            DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0x168, &gBgTilemapBufs[0][0x124 + (col * 0xA)], 0x4);
            // Copy "DATA"
            DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0x16A, &gBgTilemapBufs[0][0x143 + (col * 0xA)], 0x8);
            continue;
        }

        if ((gGlobalSaveData->sceneType[file] == SCENE_TYPE_VISION_SELECT) || (gGlobalSaveData->sceneType[file] == SCENE_TYPE_WORLD_MAP) || ((gGlobalSaveData->sceneType[file] == SCENE_TYPE_CUTSCENE) && ((gGlobalSaveData->cutsceneId[file] % 3) != 0) && (gGlobalSaveData->cutsceneId[file] != 1)))
        {
            if (gGlobalSaveData->world[file] == 6)
            {
                for (row = 0; row <= 1; row++)
                {
                    // Copy "EX-"
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0x10) * 0x1E) + 0xC), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0x8);
                    // Copy level number
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xE) * 0x1E) + gGlobalSaveData->level[file] * 2), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 5], 0x4);
                }
            }
            else if ((gGlobalSaveData->world[file] == 1) || (gGlobalSaveData->world[file] == 2) || (gGlobalSaveData->world[file] == 3) || (gGlobalSaveData->world[file] == 4))
            {
                // Copy "World X" (x is current world)
                // TODO: investigate what each DmaCopy actually does
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((7 - (gGlobalSaveData->world[file] % 2)) * 0x1E) + ((gGlobalSaveData->world[file] / 3) * 6) + 0xC), &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((((gGlobalSaveData->world[file] - 1) * 2) + 0xA + row) * 0x1E) + 0x12), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
            else if (gGlobalSaveData->world[file] == 5)
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
                gGlobalSaveData->world[file] = 1;
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((gGlobalSaveData->world[file] / 3) * 0x6) + 0xC0), &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xA) * 0x1E) + 0x12), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + ((col * 0xA)) + 1], 0xC);
                }

                gGlobalSaveData->level[file] = 1;

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((row + 0xE) * 0x1E) + gGlobalSaveData->level[file] * 2)), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + ((col * 0xA)) + 5], 0x4);
                }
            }
        }
        else if (((gGlobalSaveData->sceneType[file] == SCENE_TYPE_VISION) && (gGlobalSaveData->level[file] == 8)) || ((gGlobalSaveData->sceneType[file] == SCENE_TYPE_CUTSCENE) && ((gGlobalSaveData->cutsceneId[file] % 3) == 0) && (gGlobalSaveData->cutsceneId[file] != 0)))
        {
            if ((gGlobalSaveData->world[file] == 1) || (gGlobalSaveData->world[file] == 2) || (gGlobalSaveData->world[file] == 3) || (gGlobalSaveData->world[file] == 4))
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((7 - (gGlobalSaveData->world[file] % 2)) * 0x1E) + ((gGlobalSaveData->world[file] / 3) * 6) + 0xC), &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xC) * 0x1E) + 0x18), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
            else if ((gGlobalSaveData->world[file] == 5) || (gGlobalSaveData->world[file] == 6))
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0xCC, &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xC) * 0x1E) + 0x18), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
            else
            {
                gGlobalSaveData->world[file] = 1;
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0xC0, &gBgTilemapBufs[0][0x102 + (col * 0xA)], 0xC);
                gGlobalSaveData->level[file] = 1;

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((row + 0xE) * 0x1E) + gGlobalSaveData->level[file] * 2)), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 5], 0x4);
                }
            }
        }
        else if (gGlobalSaveData->sceneType[file] == SCENE_TYPE_CUTSCENE)
        {
            if (gGlobalSaveData->cutsceneId[file] == 0)
            {
                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0xE) * 0x1E) + 0x18), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0xC);
                }
            }
            if (gGlobalSaveData->cutsceneId[file] == 1)
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

            if (gGlobalSaveData->world[file] == 6)
            {
                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + (((row + 0x10) * 0x1E) + 0xC), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0x8);
                }
            }
            else
            {
                if (gGlobalSaveData->world[file] > 5)
                {
                    gGlobalSaveData->world[file] = 1;
                }

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((row + 0xE) * 0x1E) + gGlobalSaveData->world[file] * 2)), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 1], 0x4);
                }

                for (row = 0; row <= 1; row++)
                {
                    DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((row + 0xE) * 0x1E), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 3], 0x4);
                }
            }

            if (gGlobalSaveData->level[file] > 7)
            {
                gGlobalSaveData->level[file] = 1;
            }

            for (row = 0; row <= 1; row++)
            {
                DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((row + 0xE) * 0x1E) + gGlobalSaveData->level[file] * 2)), &gBgTilemapBufs[0][1 + ((row + 9) * 0x20) + (col * 0xA) + 5], 0x4);
            }
        }

        if (gGlobalSaveData->nbrUnlockedWorlds[file] < 7)
        {
            // Draw world dots
            DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + ((((gGlobalSaveData->nbrUnlockedWorlds[file] % 3) + 0xA) * 0x1E) + (((gGlobalSaveData->nbrUnlockedWorlds[file] - 1) / 3) * 6) + 0x6), &gBgTilemapBufs[0][0x162 + ((0xA * col))], 0xC);
        }

        // Copy "KLONOA"
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap + 0x12C, &gBgTilemapBufs[0][0x182 + ((col * 0xA))], 0xC);
        // Copy "x"
        gBgTilemapBufs[0][0x1A4 + (0xA * col)] = gBgDataPtrs.pBufBg0Tilemap[0x190];
        // Copy tens digit of lives
        gBgTilemapBufs[0][0x1A5 + (0xA * col)] = gBgDataPtrs.pBufBg0Tilemap[0x186 + (gGlobalSaveData->lives[file] / 10)];
        // Copy ones digit of lives
        gBgTilemapBufs[0][0x1A6 + (0xA * col)] = gBgDataPtrs.pBufBg0Tilemap[0x186 + (gGlobalSaveData->lives[file] % 10)];
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
            gMenuInfo->cursorIndex = 1;
        }
        else
        {
            gMenuInfo->cursorIndex = gGlobalSaveData->lastLoadedSaveFile;
        }

        gMenuInfo->fileSelectStage = FILE_SELECT_STAGE_SELECT;
        SetEntityAnimationInfoState(7, 0);
        gEntityInfo[0xD].unkF = 0;
        m4aSongNumStart(MUS_FILE_SELECT);
    }

    UpdateEntityAnimationInfoEntries();
    FileSelectScreenUpdateCursor(gMenuInfo->fileSelectStage);

    if (gTransitioning == TRUE)
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
        if (gMenuInfo->fileSelectStage == FILE_SELECT_STAGE_SELECT)
        {
            m4aSongNumStart(SE_CURSOR_CONFIRM);

            if ((gUnk_03003410.unk6 != 1) || (gGlobalSaveData->startedFile[gMenuInfo->cursorIndex] != 0))
            {
                gMenuInfo->fileSelectStage += 1; // FILE_SELECT_STAGE_CONFIRM
                gMenuInfo->selectedSaveFile = gMenuInfo->cursorIndex;

                if ((gUnk_03003410.unk6 == 0) && (gGlobalSaveData->startedFile[gMenuInfo->cursorIndex] != 0))
                {
                    gMenuInfo->cursorIndex = 1;
                }
                else
                {
                    gMenuInfo->cursorIndex = 0;
                }

                FileSelectScreenDrawInfo(0x12);
            }
        }
        else
        {
            // FILE_SELECT_STAGE_CONFIRM
            if (gFileSelectScreenTransitionDelay == 0)
            {
                if (gMenuInfo->cursorIndex == 0)
                {
                    m4aSongNumStart(SE_CURSOR_CONFIRM);
                    gFileSelectScreenTransitionDelay = 1;
                }
                else
                {
                    m4aSongNumStart(SE_EXIT_MENU);
                    gMenuInfo->fileSelectStage = FILE_SELECT_STAGE_SELECT;
                    gMenuInfo->cursorIndex = gMenuInfo->selectedSaveFile;
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
            gUnk_03004C20.world = gGlobalSaveData->world[gMenuInfo->selectedSaveFile] + 1;
            gUnk_03004C20.level = gGlobalSaveData->world[gMenuInfo->selectedSaveFile] + 1;

            gGlobalSaveData->currentSaveFile = gMenuInfo->selectedSaveFile;
            gGlobalSaveData->currentSaveFileAddress = gGlobalSaveData->currentSaveFile * 0x10;
            gBlendValue = 0;
            sub_080008DC();

            if (gUnk_03003410.unk6 == 0)
            {
                DmaFill32(3, 0, gSceneSaveData, 0x24);
                DmaFill32(3, 0, gFileSaveData, 0x40);
                gUnk_03004C20.world = 1;
                gSceneSaveData->world = 1;
                gSceneSaveData->lives = gUnk_03005220.lives = 3;
                gSceneSaveData->shootButtonConfig = 2;
                gSceneSaveData->jumpButtonConfig = 1;
                DmaFill16(3, 0x7F7F, &gFileSaveData->levelInfo[0][0], 0x30);
                gSceneSaveData->cutsceneId = 0;
                gUnk_03003410.unkC = 1;
                gCallbackQueue.current[1] = TransitionFromWorldMapToVisionSelect_FadeOut;
            }
            else
            {
                gCallbackQueue.current[1] = TransitionFromFileSelectToLevel_FadeOut;
            }
        }
    }

    if (gNewKeys & B_BUTTON)
    {
        if (gMenuInfo->fileSelectStage == FILE_SELECT_STAGE_SELECT)
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
            gMenuInfo->fileSelectStage = FILE_SELECT_STAGE_SELECT;
            gMenuInfo->cursorIndex = gMenuInfo->selectedSaveFile;
            FileSelectScreenDrawInfo(0);
            m4aSongNumStart(SE_EXIT_MENU);
        }
    }
}
