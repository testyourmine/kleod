#include "global.h"
#include "world_map.h"
#include "anim.h"
#include "code_08003D58.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "rand.h"
#include "save.h"
#include "transitions.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern const u8 gUnk_08116708[8][4];
extern const u16 gUnk_08116728[8][2];
extern const u8 gUnk_08116748[7][8];
extern const u8 gUnk_08116780[8][0x20];
extern const u8 gUnk_08116880[8];

extern u32 gUnk_083128F8;
extern u32 gUnk_08312A58;
extern u32 gUnk_08312B70;
extern u32 gUnk_08312BD8;
extern u32 gUnk_08313C34;
extern u32 gUnk_08313F24;
extern u32 gUnk_083141F0;
extern u32 gUnk_083142EC;
extern u32 gUnk_083155C4;

// 3AC18
u8 WorldMapScreenIsValidPath(u8 mapIndex)
{
    // Called on transition to world map, check if able to go to world
    u32 world;
    u32 level;
    u8 nbrExStagesAllStones;
    u8 nbrPuzzleStagesAllStones;
    u8 nbrStagesBeaten;
    u8 nbrActionStagesAllStones;

    if (mapIndex < 4)
    {
        if ((gFileSaveData->levelInfo[mapIndex][7] & LEVEL_INFO_BEATEN_FLAG) && ((gFileSaveData->levelInfo[mapIndex + 1][0] & LEVEL_INFO_DREAM_STONES_MASK) != LEVEL_INFO_DREAM_STONES_MASK))
        {
            return 1;
        }
    }
    else if (gFileSaveData->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG)
    {
        nbrActionStagesAllStones = 0;
        nbrPuzzleStagesAllStones = 0;
        nbrStagesBeaten = 0;
        nbrExStagesAllStones = 0;

        for (world = 0; world < 5; world++)
        {
            for (level = 0; level < 7; level++)
            {
                if (((level == 3) || (level == 5)) && ((gFileSaveData->levelInfo[world][level] & LEVEL_INFO_DREAM_STONES_MASK) == 100))
                {
                    nbrActionStagesAllStones += 1;
                }
                else if ((level != 7) && ((gFileSaveData->levelInfo[world][level] & LEVEL_INFO_DREAM_STONES_MASK) == 30))
                {
                    nbrPuzzleStagesAllStones += 1;
                }

                if (gFileSaveData->levelInfo[world][level] & LEVEL_INFO_BEATEN_FLAG)
                {
                    nbrStagesBeaten += 1;
                }
            }
        }

        if ((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            nbrExStagesAllStones += 1;
        }
        if ((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            nbrExStagesAllStones += 1;
        }
    
        if ((mapIndex == 4) && ((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) != LEVEL_INFO_DREAM_STONES_MASK) && (nbrStagesBeaten == 35))
        {
            return 1;
        }
        if ((mapIndex == 5) && ((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) != LEVEL_INFO_DREAM_STONES_MASK) && ((nbrPuzzleStagesAllStones + nbrActionStagesAllStones) >= 25))
        {
            return 1;
        }
        if ((mapIndex == 6) && ((gFileSaveData->levelInfo[5][2] & LEVEL_INFO_DREAM_STONES_MASK) != LEVEL_INFO_DREAM_STONES_MASK) && ((nbrPuzzleStagesAllStones + nbrActionStagesAllStones + nbrExStagesAllStones) == 37))
        {
            return 1;
        }
    }

    return 0;
}

// 3AD94
void WorldMapScreenDrawWorld(u8 mapIndex)
{
    u8 row;
    u8 col;

    mapIndex += 1;
    if (mapIndex < 5)
    {
        // Variables must be declared in this scope to match
        u16 *dst = &gBgTilemapBufs[1][gUnk_08116708[mapIndex][2] + (gUnk_08116708[mapIndex][3] * 0x20)];
        u16 *src = &gBgTilemapBufs[1][mapIndex * 0x5 + 0x280];
        for (row = 0; row < 4; row++)
        {
            for (col = 0; col < 5; col++)
            {
                dst[col] = src[col];
            }
            dst += 0x20;
            src += 0x20;
        }
    }
    else
    {
        gBgTilemapBufs[1][gUnk_08116708[mapIndex][2] + ((gUnk_08116708[mapIndex][3] + 0) * 0x20) + 0] = gBgTilemapBufs[1][((mapIndex - 5) * 2) + 0x340];
        gBgTilemapBufs[1][gUnk_08116708[mapIndex][2] + ((gUnk_08116708[mapIndex][3] + 0) * 0x20) + 1] = gBgTilemapBufs[1][((mapIndex - 5) * 2) + 0x341];
        gBgTilemapBufs[1][gUnk_08116708[mapIndex][2] + ((gUnk_08116708[mapIndex][3] + 1) * 0x20) + 0] = gBgTilemapBufs[1][((mapIndex - 5) * 2) + 0x360];
        gBgTilemapBufs[1][gUnk_08116708[mapIndex][2] + ((gUnk_08116708[mapIndex][3] + 1) * 0x20) + 1] = gBgTilemapBufs[1][((mapIndex - 5) * 2) + 0x361];
    }
}

// 3AE88
void WorldMapScreenSetPalette(u8 mapIndex, u8 palNbr)
{
    u16 pathTile;
    u8 row;
    u8 col;
    u16 *dst; // Must be declared last to match

    mapIndex += 1;
    dst = &gBgTilemapBufs[1][gUnk_08116708[mapIndex][2] + (gUnk_08116708[mapIndex][3] * 0x20)];
    pathTile = dst[0x20];
    for (row = 0; row < 4; row++)
    {
        for (col = 0; col < 5; col++)
        {
            dst[col] = (dst[col] & 0xFFF) | (palNbr << 0xC);
        }
        dst += 0x20;
    }

    if (mapIndex == 4)
    {
        // When unlocking world 5, don't flash the path tile
        gBgTilemapBufs[1][gUnk_08116708[mapIndex][2] + (gUnk_08116708[mapIndex][3] * 0x20) + 0x20] = pathTile;
    }
}

// 3AF38
void WorldMapScreenDrawPath(u8 mapIndex)
{
    vu32 a; // Required to match
    if (mapIndex < 4)
    {
        gBgTilemapBufs[1][gUnk_08116748[mapIndex][0] + (gUnk_08116748[mapIndex][1] * 0x20)] = gBgTilemapBufs[1][((gUnk_08116880[mapIndex] + 0x1C) * 0x20) + 0];
        gBgTilemapBufs[1][gUnk_08116748[mapIndex][2] + (gUnk_08116748[mapIndex][3] * 0x20)] = gBgTilemapBufs[1][((gUnk_08116880[mapIndex] + 0x1C) * 0x20) + 1];
        gBgTilemapBufs[1][gUnk_08116748[mapIndex][4] + (gUnk_08116748[mapIndex][5] * 0x20)] = gBgTilemapBufs[1][((gUnk_08116880[mapIndex] + 0x1C) * 0x20) + 2];
        gBgTilemapBufs[1][gUnk_08116748[mapIndex][6] + (gUnk_08116748[mapIndex][7] * 0x20)] = gBgTilemapBufs[1][((gUnk_08116880[mapIndex] + 0x1C) * 0x20) + 3];
    }
    else
    {
        gBgTilemapBufs[1][gUnk_08116748[mapIndex][0] + (gUnk_08116748[mapIndex][1] * 0x20)] = gBgTilemapBufs[1][((gUnk_08116880[mapIndex] + 0x1C) * 0x20) + 4];
        gBgTilemapBufs[1][gUnk_08116748[mapIndex][2] + (gUnk_08116748[mapIndex][3] * 0x20)] = gBgTilemapBufs[1][((gUnk_08116880[mapIndex] + 0x1C) * 0x20) + 5];
        gBgTilemapBufs[1][gUnk_08116748[mapIndex][4] + (gUnk_08116748[mapIndex][5] * 0x20)] = gBgTilemapBufs[1][((gUnk_08116880[mapIndex] + 0x1C) * 0x20) + 6];
        gBgTilemapBufs[1][gUnk_08116748[mapIndex][6] + (gUnk_08116748[mapIndex][7] * 0x20)] = gBgTilemapBufs[1][((gUnk_08116880[mapIndex] + 0x1C) * 0x20) + 7];
    }
}

// 3B074
void WorldMapScreenDrawUnlockedWorlds(void)
{
    u8 mapIndex;

    for (mapIndex = 0; mapIndex < 7; mapIndex++)
    {
        if (WorldMapScreenIsValidPath(mapIndex) != 0)
        {
            WorldMapScreenDrawWorld(mapIndex);
            WorldMapScreenDrawPath(mapIndex);
        }
    }
}

// 3B0A0
void WorldMapScreenCheckNewWorldUnlocked(void)
{
    // Called on transition to world map (once), checks/sets new world unlock callback
    u8 nbrExStagesAllStones;
    u8 nbrActionStagesAllStones;
    u8 world;
    u8 level;
    u8 nbrStagesBeaten;
    u8 nbrPuzzleStagesAllStones;

    if (gFileSaveData->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG)
    {
        nbrActionStagesAllStones = 0;
        nbrPuzzleStagesAllStones = 0;
        nbrStagesBeaten = 0;
        nbrExStagesAllStones = 0;

        for (world = 0; world < 5; world++)
        {
            for (level = 0; level < 7; level++)
            {
                if (((level == 3) || (level == 5)) && ((gFileSaveData->levelInfo[world][level] & LEVEL_INFO_DREAM_STONES_MASK) == 100))
                {
                    nbrActionStagesAllStones += 1;
                }
                else if ((level != 7) && ((gFileSaveData->levelInfo[world][level] & LEVEL_INFO_DREAM_STONES_MASK) == 30))
                {
                    nbrPuzzleStagesAllStones += 1;
                }

                if (gFileSaveData->levelInfo[world][level] & LEVEL_INFO_BEATEN_FLAG)
                {
                    nbrStagesBeaten += 1;
                }
            }
        }

        if ((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            nbrExStagesAllStones += 1;
        }
        if ((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            nbrExStagesAllStones += 1;
        }

        if (((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK) && (nbrStagesBeaten == 35))
        {
            gWorldMapInfo.beatenIndex = 4;
            gWorldMapInfo.unlockTimer = 0;
            gFileSaveData->levelInfo[5][0] = LEVEL_INFO_BEATEN_FLAG;
            gCallbackQueue.current[1] = WorldMapScreenUnlockNewWorld;
            return;
        }
        else if (((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK) && ((nbrPuzzleStagesAllStones + nbrActionStagesAllStones) >= 25))
        {
            gWorldMapInfo.beatenIndex = 5;
            gWorldMapInfo.unlockTimer = 0;
            gFileSaveData->levelInfo[5][1] = LEVEL_INFO_BEATEN_FLAG;
            gCallbackQueue.current[1] = WorldMapScreenUnlockNewWorld;
            return;
        }
        else if (((gFileSaveData->levelInfo[5][2] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK) && ((nbrExStagesAllStones + nbrActionStagesAllStones + nbrPuzzleStagesAllStones) == 37))
        {
            gWorldMapInfo.beatenIndex = 6;
            gWorldMapInfo.unlockTimer = 0;
            gFileSaveData->levelInfo[5][2] = LEVEL_INFO_BEATEN_FLAG;
            gCallbackQueue.current[1] = WorldMapScreenUnlockNewWorld;
            return;
        }
    }
    else
    {
        if ((gFileSaveData->levelInfo[0][7] & LEVEL_INFO_BEATEN_FLAG) && ((gFileSaveData->levelInfo[1][0] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK))
        {
            gWorldMapInfo.beatenIndex = 0;
            gWorldMapInfo.unlockTimer = 0;
            gFileSaveData->levelInfo[1][0] &= LEVEL_INFO_BEATEN_FLAG;
            gCallbackQueue.current[1] = WorldMapScreenUnlockNewWorld;
            return;
        }
        else if ((gFileSaveData->levelInfo[1][7] & LEVEL_INFO_BEATEN_FLAG) && ((gFileSaveData->levelInfo[2][0] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK))
        {
            gWorldMapInfo.beatenIndex = 1;
            gWorldMapInfo.unlockTimer = 0;
            gFileSaveData->levelInfo[2][0] &= LEVEL_INFO_BEATEN_FLAG;
            gCallbackQueue.current[1] = WorldMapScreenUnlockNewWorld;
            return;
        }
        else if ((gFileSaveData->levelInfo[2][7] & LEVEL_INFO_BEATEN_FLAG) && ((gFileSaveData->levelInfo[3][0] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK))
        {
            gWorldMapInfo.beatenIndex = 2;
            gWorldMapInfo.unlockTimer = 0;
            gFileSaveData->levelInfo[3][0] &= LEVEL_INFO_BEATEN_FLAG;
            gCallbackQueue.current[1] = WorldMapScreenUnlockNewWorld;
            return;
        }
        else if ((gFileSaveData->levelInfo[3][7] & LEVEL_INFO_BEATEN_FLAG) && ((gFileSaveData->levelInfo[4][0] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK))
        {
            gWorldMapInfo.beatenIndex = 3;
            gWorldMapInfo.unlockTimer = 0;
            gFileSaveData->levelInfo[4][0] &= LEVEL_INFO_BEATEN_FLAG;
            gCallbackQueue.current[1] = WorldMapScreenUnlockNewWorld;
            return;
        }
    }

    gCallbackQueue.current[1] = WorldMapScreenHandler;
}

// 3B378
void WorldMapScreenUnlockNewWorld(void)
{
    // Handle animation for unlocking new world on World Map
    s32 var_r7;
    s32 temp_r6;

    if (gWorldMapInfo.beatenIndex < 4)
    {
        var_r7 = 0;
        temp_r6 = gUnk_08116880[gWorldMapInfo.beatenIndex];
    }
    else
    {
        var_r7 = 4;
        temp_r6 = gUnk_08116880[gWorldMapInfo.beatenIndex];
    }

    switch (gWorldMapInfo.unlockTimer / 30)
    {
        // After 30 frames, draw a dot
        case 1:
            if ((gWorldMapInfo.unlockTimer % 30) == 0)
            {
                m4aSongNumStart(SE_WORLD_UNLOCKED_DOT);
            }
            gBgTilemapBufs[1][gUnk_08116748[gWorldMapInfo.beatenIndex][0] + (gUnk_08116748[gWorldMapInfo.beatenIndex][1] << 5)] = gBgTilemapBufs[1][0 + var_r7 + ((temp_r6 + 0x1C) << 5)];
            break;

        // After 60 frames, draw next dot
        case 2:
            if ((gWorldMapInfo.unlockTimer % 30) == 0)
            {
                m4aSongNumStart(SE_WORLD_UNLOCKED_DOT);
            }
            gBgTilemapBufs[1][gUnk_08116748[gWorldMapInfo.beatenIndex][2] + (gUnk_08116748[gWorldMapInfo.beatenIndex][3] << 5)] = gBgTilemapBufs[1][1 + var_r7 + ((temp_r6 + 0x1C) << 5)];
            break;

        // After 90 frames, draw next dot
        case 3:
            if (gWorldMapInfo.beatenIndex == 6)
            {
                // Only draw two dots if unlocking EX-3
                gWorldMapInfo.unlockTimer = 150 - 1;
            }
            else
            {
                if ((gWorldMapInfo.unlockTimer % 30) == 0)
                {
                    m4aSongNumStart(SE_WORLD_UNLOCKED_DOT);
                }
                gBgTilemapBufs[1][gUnk_08116748[gWorldMapInfo.beatenIndex][4] + (gUnk_08116748[gWorldMapInfo.beatenIndex][5] << 5)] = gBgTilemapBufs[1][2 + var_r7 + ((temp_r6 + 0x1C) << 5)];
            }
            break;

        // After 120 frames, draw next dot
        case 4:
            if ((gWorldMapInfo.beatenIndex != 4) && (gWorldMapInfo.beatenIndex != 6))
            {
                if ((gWorldMapInfo.unlockTimer % 30) == 0)
                {
                    m4aSongNumStart(SE_WORLD_UNLOCKED_DOT);
                }
                gBgTilemapBufs[1][gUnk_08116748[gWorldMapInfo.beatenIndex][6] + (gUnk_08116748[gWorldMapInfo.beatenIndex][7] << 5)] = gBgTilemapBufs[1][3 + var_r7 + ((temp_r6 + 0x1C) << 5)];
            }
            break;

        // After 150 frames, play world unlocked sound effect and flash new world
        case 5:
            if ((gWorldMapInfo.unlockTimer % 30) == 0)
            {
                m4aSongNumStart(SE_WORLD_UNLOCKED);
            }
            /* fallthrough */
        // After 180 and 210 frames, flash new world
        case 6:
        case 7:
            if (gWorldMapInfo.beatenIndex < 4)
            {
                if ((gUnk_03004C20.sceneFrameCounter % 4) == 0)
                {
                    DmaCopy16(3, &gUnk_08116780[thunk_GetRandomValue() % 8], BG_PLTT + 0x160, 0x20);
                    WorldMapScreenSetPalette(gWorldMapInfo.beatenIndex, 0xB); // 0x160 / 0x20 = 0xB
                }
            }
            else
            {
                WorldMapScreenDrawWorld(gWorldMapInfo.beatenIndex);
            }
            break;

        // After 240 frames, finished
        case 8:
            WorldMapScreenDrawWorld(gWorldMapInfo.beatenIndex);
            gCallbackQueue.current[1] = WorldMapScreenCheckNewWorldUnlocked;
            break;
    }

    gWorldMapInfo.unlockTimer += 1;
}

// 3B600
void WorldMapScreenInit(void)
{
    // Init World Map
    s32 i;
    s32 j;
    s32 world;
    s32 level;

    if (gUnk_03004C20.world == 6)
    {
        gWorldMapInfo.currentIndex = (gUnk_03004C20.world - 1) + (gUnk_03004C20.level - 1);
    }
    else
    {
        gWorldMapInfo.currentIndex = gUnk_03004C20.world - 1;
    }
    gWorldMapInfo.nextIndexOffset = 0;

    world = gUnk_03004C20.world;
    level = gUnk_03004C20.level;

    sub_08003D58();
    DmaCopy32(3, gOamBuffer, OAM, OAM_SIZE);
    gUnk_03003410.unk8 = 0;
    gUnk_03004C20.world = 1;
    gUnk_03004C20.level = 1;
    gUnk_03004C20.unkA = 0;
    EntityInit();

    gUnk_03004C20.world = world;
    gUnk_03004C20.level = level;

    gOamAffineBuffer[0].pa = 0x100;
    gOamAffineBuffer[0].pb = 0;
    gOamAffineBuffer[0].pc = 0;
    gOamAffineBuffer[0].pd = 0x100;

    gEntityInfo[0].visible = 1;
    for (i = 1; i < 0x13; i++)
    {
        gEntityInfo[i].visible = 0;
    }

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    REG_IE &= ~INTR_FLAG_HBLANK;
    REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();
    REG_DISPCNT = 0;

    gBgInfo[0].pTiles = BG_VRAM;
    gBgInfo[1].pTiles = BG_VRAM + 0x4000;
    gBgInfo[2].pTiles = BG_VRAM + 0x8000;
    gBgInfo[3].pTiles = BG_VRAM + 0xC000;
    gBgInfo[0].pTilemap = BG_VRAM + 0xE000;
    gBgInfo[1].pTilemap = BG_VRAM + 0xE800;
    gBgInfo[2].pTilemap = BG_VRAM + 0xF000;
    gBgInfo[3].pTilemap = BG_VRAM + 0xF800;
    DecompressDma(&gUnk_083128F8, BG_PLTT, BG_PLTT_SIZE);

    gBgDataPtrs.pBufBg0Tiles = thunk_HeapAlloc(gUnk_08312A58 & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(gUnk_08312B70 & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tiles = thunk_HeapAlloc(gUnk_08312BD8 & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tilemap = thunk_HeapAlloc(gUnk_08313C34 & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg0Tiles, &gUnk_08312A58);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, &gUnk_08312B70);
    Decompress(gBgDataPtrs.pBufBg1Tiles, &gUnk_08312BD8);
    Decompress(gBgDataPtrs.pBufBg1Tilemap, &gUnk_08313C34);
    gBgDataPtrs.pBufBg0Tiles += 4;
    gBgDataPtrs.pBufBg0Tilemap += 2;
    gBgDataPtrs.pBufBg1Tiles += 4;
    gBgDataPtrs.pBufBg1Tilemap += 2;
    DmaCopy16Wait(3, gBgDataPtrs.pBufBg0Tiles, gBgInfo[0].pTiles, 0x260);
    DmaCopy16Wait(3, gBgDataPtrs.pBufBg1Tiles, gBgInfo[1].pTiles, 0x1BC0);
    DmaFill16(3, 0, &gBgTilemapBufs[0], 0x800);

    for (i = 0, j = 0; i < (20 * 30); j++, i++)
    {
        if (((i % 30) == 0) && (i != 0))
        {
            j += 2;
        }
        gBgTilemapBufs[0][j] = gBgDataPtrs.pBufBg0Tilemap[i];
    }

    for (i = 0; i < 0x400; i++)
    {
        gBgTilemapBufs[1][i] = gBgDataPtrs.pBufBg1Tilemap[i];
    }

    thunk_HeapFree(gBgDataPtrs.pBufBg1Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg1Tiles - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tiles - 4);

    gBgDataPtrs.pBufBg0Tiles = thunk_HeapAlloc(gUnk_08313F24 & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(gUnk_083141F0 & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tiles = thunk_HeapAlloc(gUnk_083142EC & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg1Tilemap = thunk_HeapAlloc(gUnk_083155C4 & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg0Tiles, &gUnk_08313F24);
    Decompress(gBgDataPtrs.pBufBg0Tilemap, &gUnk_083141F0);
    Decompress(gBgDataPtrs.pBufBg1Tiles, &gUnk_083142EC);
    Decompress(gBgDataPtrs.pBufBg1Tilemap, &gUnk_083155C4);
    gBgDataPtrs.pBufBg0Tiles += 4;
    gBgDataPtrs.pBufBg0Tilemap += 2;
    gBgDataPtrs.pBufBg1Tiles += 4;
    gBgDataPtrs.pBufBg1Tilemap += 2;
    DmaCopy16Wait(3, gBgDataPtrs.pBufBg0Tiles, gBgInfo[2].pTiles, 0x820);
    DmaCopy16Wait(3, gBgDataPtrs.pBufBg1Tiles, gBgInfo[3].pTiles, 0x1A80);

    for (i = 0, j = 0; i < (20 * 30); j++, i++)
    {
        if (((i % 30) == 0) && (i != 0))
        {
            j += 2;
        }
        gBgTilemapBufs[2][j] = gBgDataPtrs.pBufBg0Tilemap[i];
        gBgTilemapBufs[3][j] = gBgDataPtrs.pBufBg1Tilemap[i];
    }

    thunk_HeapFree(gBgDataPtrs.pBufBg1Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg1Tiles - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tiles - 4);

    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON;
    REG_BG0CNT = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_MOSAIC | BGCNT_SCREENBASE(28);
    REG_BG1CNT = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_MOSAIC | BGCNT_SCREENBASE(29);
    REG_BG2CNT = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC | BGCNT_SCREENBASE(30);
    REG_BG3CNT = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(3) | BGCNT_MOSAIC | BGCNT_SCREENBASE(31);

    REG_WININ = WININ_WIN0_BG0 | WININ_WIN0_BG1 | WININ_WIN0_BG3 | WININ_WIN0_OBJ | WININ_WIN0_CLR;
    REG_WINOUT = WINOUT_WIN01_BG0 | WINOUT_WIN01_BG1 | WINOUT_WIN01_BG3 | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;

    REG_WIN0H = gUnk_08116728[gWorldMapInfo.currentIndex][0];
    REG_WIN0V = gUnk_08116728[gWorldMapInfo.currentIndex][1];

    gEntityInfo[0].xPosBg2 = gUnk_08116708[gWorldMapInfo.currentIndex][0];
    gEntityInfo[0].yPosBg2 = gUnk_08116708[gWorldMapInfo.currentIndex][1];

    gBgInfo[3].vOfs = 0;
    gBgInfo[3].hOfs = 0;
    gBgInfo[2].hOfs = 0;
    gBgInfo[1].vOfs = 0;
    gBgInfo[1].hOfs = 0;
    gBgInfo[0].hOfs = 0;
    gBgInfo[2].vOfs = 4;
    gBgInfo[0].vOfs = 0x400;

    // Set best EX-1 time to 99:59:99 if no best time
    if ((gFileSaveData->bestEx1TimeMinutes == 0) && (gFileSaveData->bestEx1TimeSeconds == 0) && (gFileSaveData->bestEx1TimeCentiseconds == 0))
    {
        gFileSaveData->bestEx1TimeMinutes = 99;
        gFileSaveData->bestEx1TimeSeconds = 59;
        gFileSaveData->bestEx1TimeCentiseconds = 99;
    }

    // Set best EX-3 time to 99:59:99 if no best time
    if ((gFileSaveData->bestEx3TimeMinutes == 0) && (gFileSaveData->bestEx3TimeSeconds == 0) && (gFileSaveData->bestEx3TimeCentiseconds == 0))
    {
        gFileSaveData->bestEx3TimeMinutes = 99;
        gFileSaveData->bestEx3TimeSeconds = 59;
        gFileSaveData->bestEx3TimeCentiseconds = 99;
    }

    if (gWorldMapInfo.currentIndex == 5)
    {
        // Draw "BEST/"
        gBgTilemapBufs[0][0x4C] = (10 << 12) | 0xC;
        gBgTilemapBufs[0][0x4D] = (10 << 12) | 0xD;
        gBgTilemapBufs[0][0x4E] = (10 << 12) | 0xE;
        gBgTilemapBufs[0][0x4F] = (10 << 12) | 0xF;
        gBgTilemapBufs[0][0x50] = (10 << 12) | 0x10;

        // Draw best time
        gBgTilemapBufs[0][0x6D] = (10 << 12) | ((gFileSaveData->bestEx1TimeMinutes / 10) + 1);
        gBgTilemapBufs[0][0x6E] = (10 << 12) | ((gFileSaveData->bestEx1TimeMinutes % 10) + 1);
        gBgTilemapBufs[0][0x6F] = (10 << 12) | 0xB;
        gBgTilemapBufs[0][0x70] = (10 << 12) | ((gFileSaveData->bestEx1TimeSeconds / 10) + 1);
        gBgTilemapBufs[0][0x71] = (10 << 12) | ((gFileSaveData->bestEx1TimeSeconds % 10) + 1);
        gBgTilemapBufs[0][0x72] = (10 << 12) | 0xB;
        gBgTilemapBufs[0][0x73] = (10 << 12) | ((gFileSaveData->bestEx1TimeCentiseconds / 10) + 1);
        gBgTilemapBufs[0][0x74] = (10 << 12) | ((gFileSaveData->bestEx1TimeCentiseconds % 10) + 1);

        // Draw dream stone icon
        gBgTilemapBufs[0][0x2C] = (10 << 12) | 0x11;

        // Draw "/30"
        gBgTilemapBufs[0][0x30] = (10 << 12) | 0x10;
        gBgTilemapBufs[0][0x31] = (10 << 12) | 0x4;
        gBgTilemapBufs[0][0x32] = (10 << 12) | 0x1;

        // Draw collected dream stone amount
        gBgTilemapBufs[0][0x2E] = (10 << 12) | (((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) / 10) + 1);
        gBgTilemapBufs[0][0x2F] = (10 << 12) | (((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) % 10) + 1);
    }
    else if (gWorldMapInfo.currentIndex == 6)
    {
        // Erase "BEST/" tiles
        gBgTilemapBufs[0][0x4C] = (10 << 12);
        gBgTilemapBufs[0][0x4D] = (10 << 12);
        gBgTilemapBufs[0][0x4E] = (10 << 12);
        gBgTilemapBufs[0][0x4F] = (10 << 12);
        gBgTilemapBufs[0][0x50] = (10 << 12);

        // Erase best time tiles
        gBgTilemapBufs[0][0x6D] = (10 << 12);
        gBgTilemapBufs[0][0x6E] = (10 << 12);
        gBgTilemapBufs[0][0x6F] = (10 << 12);
        gBgTilemapBufs[0][0x70] = (10 << 12);
        gBgTilemapBufs[0][0x71] = (10 << 12);
        gBgTilemapBufs[0][0x72] = (10 << 12);
        gBgTilemapBufs[0][0x73] = (10 << 12);
        gBgTilemapBufs[0][0x74] = (10 << 12);

        // Draw dream stone icon
        gBgTilemapBufs[0][0x2C] = (10 << 12) | 0x11;

        // Draw "/30"
        gBgTilemapBufs[0][0x30] = (10 << 12) | 0x10;
        gBgTilemapBufs[0][0x31] = (10 << 12) | 0x4;
        gBgTilemapBufs[0][0x32] = (10 << 12) | 0x1;

        // Draw collected dream stone amount
        gBgTilemapBufs[0][0x2E] = (10 << 12) | (((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) / 10) + 1);
        gBgTilemapBufs[0][0x2F] = (10 << 12) | (((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) % 10) + 1);
    }
    else if (gWorldMapInfo.currentIndex == 7)
    {
        // Draw "BEST/"
        gBgTilemapBufs[0][0x4C] = (10 << 12) | 0xC;
        gBgTilemapBufs[0][0x4D] = (10 << 12) | 0xD;
        gBgTilemapBufs[0][0x4E] = (10 << 12) | 0xE;
        gBgTilemapBufs[0][0x4F] = (10 << 12) | 0xF;
        gBgTilemapBufs[0][0x50] = (10 << 12) | 0x10;

        // Draw best time
        gBgTilemapBufs[0][0x6D] = (10 << 12) | ((gFileSaveData->bestEx3TimeMinutes / 10) + 1);
        gBgTilemapBufs[0][0x6E] = (10 << 12) | ((gFileSaveData->bestEx3TimeMinutes % 10) + 1);
        gBgTilemapBufs[0][0x6F] = (10 << 12) | 0xB;
        gBgTilemapBufs[0][0x70] = (10 << 12) | ((gFileSaveData->bestEx3TimeSeconds / 10) + 1);
        gBgTilemapBufs[0][0x71] = (10 << 12) | ((gFileSaveData->bestEx3TimeSeconds % 10) + 1);
        gBgTilemapBufs[0][0x72] = (10 << 12) | 0xB;
        gBgTilemapBufs[0][0x73] = (10 << 12) | ((gFileSaveData->bestEx3TimeCentiseconds / 10) + 1);
        gBgTilemapBufs[0][0x74] = (10 << 12) | ((gFileSaveData->bestEx3TimeCentiseconds % 10) + 1);

        // Erase dream stone icon tile
        gBgTilemapBufs[0][0x2C] = (10 << 12);

        // Erase "/30" tiles
        gBgTilemapBufs[0][0x30] = (10 << 12);
        gBgTilemapBufs[0][0x31] = (10 << 12);
        gBgTilemapBufs[0][0x32] = (10 << 12);

        // Erase collected dream stone amount tile
        gBgTilemapBufs[0][0x2E] = (10 << 12);
        gBgTilemapBufs[0][0x2F] = (10 << 12);
    }

    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    REG_BG1HOFS = 0;
    REG_BG1VOFS = 0;
    REG_BG2HOFS = 0;
    REG_BG2VOFS = 0;
    REG_BG3HOFS = 0;
    REG_BG3VOFS = 0;
    
    gBg2X = gBg2Y = 0;
    SetEntityAnimationInfoState(0, 0);
    UpdateEntityAnimationInfoEntries();
    gIntrTable.vBlank = VBlankIntr_TitleScreenAndWorldMap;
    gCallbackQueue.current[1] = WorldMapScreenCheckNewWorldUnlocked;
    WorldMapScreenDrawUnlockedWorlds();
    gSceneSaveData->world = gUnk_03004C20.world;
    WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_WORLD_MAP);
    WriteSaveFile(SAVE_DATA_TYPE_FILE, 0);

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
    m4aSongNumStart(MUS_WORLD_MAP);
}

// 3BF84
void WorldMapScreenHandler(void)
{
    // Update World Map
    struct Unk_0800BEF0 sp0;
    struct Unk_0800BEF0_2 spC;
    u8 var_r4;

    if (gTransitioning == TRUE)
    {
        return;
    }

    if ((gBlendValue < BLEND_MAX) && ((gUnk_03004C20.sceneFrameCounter % 2) != 0))
    {
        gBlendValue += 1;
    }

    UpdateEntityAnimationInfoEntries();

    if (gWorldMapInfo.nextIndexOffset == 0)
    {
        if (gWorldMapInfo.currentIndex > 4)
        {
            if (gBgInfo[0].vOfs != 0)
            {
                gBgInfo[0].vOfs -= 0x80;
            }
        }
        else if (gBgInfo[0].vOfs < 0x400)
        {
            gBgInfo[0].vOfs += 0x80;
        }

        if (gNewKeys & (START_BUTTON | A_BUTTON))
        {
            gBlendValue = 0;
            gUnk_03004C20.world = gWorldMapInfo.currentIndex + 1;
            gUnk_03004C20.level = 0;
            gVisionSelectInfo.currentVision = 1;
            m4aSongNumStart(SE_CURSOR_CONFIRM);
            gSceneSaveData->prevLives = gSceneSaveData->lives = gUnk_03005220.lives;

            if (gWorldMapInfo.currentIndex >= 5)
            {
                gUnk_03004C20.room = 0;
                if (gWorldMapInfo.currentIndex == 5)
                {
                    gUnk_03004C20.world = 6;
                    gUnk_03004C20.level = 1;
                }
                else if (gWorldMapInfo.currentIndex == 6)
                {
                    gUnk_03004C20.world = 6;
                    gUnk_03004C20.level = 2;
                }
                else if (gWorldMapInfo.currentIndex == 7)
                {
                    gUnk_03004C20.world = 6;
                    gUnk_03004C20.level = 3;
                }
                gCallbackQueue.current[1] = TransitionFromWorldMapToLevel_FadeOut;
            }
            else
            {
                gSceneSaveData->cutsceneId = (gUnk_03004C20.world * 3) - 1;
                gUnk_03003410.unkC = 0;
                gCallbackQueue.current[1] = TransitionFromWorldMapToVisionSelect_FadeOut;
            }
            return;
        }

        switch (gWorldMapInfo.currentIndex)
        {
            // World 1
            case 0:
                if ((gHeldKeys & (DPAD_DOWN | DPAD_RIGHT)) && (WorldMapScreenIsValidPath(gWorldMapInfo.currentIndex) != 0))
                {
                    gWorldMapInfo.nextIndexOffset = 1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 1);
                }

                if ((gHeldKeys & DPAD_UP) && (WorldMapScreenIsValidPath(6) != 0))
                {
                    gWorldMapInfo.nextIndexOffset = 7;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 0x25);

                    // Draw "BEST/"
                    gBgTilemapBufs[0][0x4C] = (10 << 12) | 0xC;
                    gBgTilemapBufs[0][0x4D] = (10 << 12) | 0xD;
                    gBgTilemapBufs[0][0x4E] = (10 << 12) | 0xE;
                    gBgTilemapBufs[0][0x4F] = (10 << 12) | 0xF;
                    gBgTilemapBufs[0][0x50] = (10 << 12) | 0x10;

                    // Draw best time
                    gBgTilemapBufs[0][0x6D] = (10 << 12) | ((gFileSaveData->bestEx3TimeMinutes / 10) + 1);
                    gBgTilemapBufs[0][0x6E] = (10 << 12) | ((gFileSaveData->bestEx3TimeMinutes % 10) + 1);
                    gBgTilemapBufs[0][0x6F] = (10 << 12) | 0xB;
                    gBgTilemapBufs[0][0x70] = (10 << 12) | ((gFileSaveData->bestEx3TimeSeconds / 10) + 1);
                    gBgTilemapBufs[0][0x71] = (10 << 12) | ((gFileSaveData->bestEx3TimeSeconds % 10) + 1);
                    gBgTilemapBufs[0][0x72] = (10 << 12) | 0xB;
                    gBgTilemapBufs[0][0x73] = (10 << 12) | ((gFileSaveData->bestEx3TimeCentiseconds / 10) + 1);
                    gBgTilemapBufs[0][0x74] = (10 << 12) | ((gFileSaveData->bestEx3TimeCentiseconds % 10) + 1);

                    // Erase dream stone icon tile
                    gBgTilemapBufs[0][0x2C] = (10 << 12);

                    // Erase "/30" tiles
                    gBgTilemapBufs[0][0x30] = (10 << 12);
                    gBgTilemapBufs[0][0x31] = (10 << 12);
                    gBgTilemapBufs[0][0x32] = (10 << 12);

                    // Erase collected dream stone amount tile
                    gBgTilemapBufs[0][0x2E] = (10 << 12);
                    gBgTilemapBufs[0][0x2F] = (10 << 12);
                }
                break;

            // World 2
            case 1:
                if ((gHeldKeys & DPAD_UP) && (WorldMapScreenIsValidPath(gWorldMapInfo.currentIndex) != 0))
                {
                    gWorldMapInfo.nextIndexOffset = 1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 0x25);
                }

                if (gHeldKeys & DPAD_LEFT)
                {
                    gWorldMapInfo.nextIndexOffset = -1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 1);
                }
                break;

            // World 3
            case 2:
                if ((gHeldKeys & DPAD_RIGHT) && (WorldMapScreenIsValidPath(gWorldMapInfo.currentIndex) != 0))
                {
                    gWorldMapInfo.nextIndexOffset = 1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 1);
                }

                if (gHeldKeys & DPAD_DOWN)
                {
                    gWorldMapInfo.nextIndexOffset = -1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 0x24);
                }
                break;

            // World 4
            case 3:
                if ((gHeldKeys & (DPAD_DOWN | DPAD_RIGHT)) && (WorldMapScreenIsValidPath(gWorldMapInfo.currentIndex) != 0))
                {
                    gWorldMapInfo.nextIndexOffset = 1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 1);
                }

                if (gHeldKeys & DPAD_LEFT)
                {
                    gWorldMapInfo.nextIndexOffset = -1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 1);
                }
                break;

            // World 5
            case 4:
                if ((gHeldKeys & DPAD_UP) && (WorldMapScreenIsValidPath(gWorldMapInfo.currentIndex + 1) != 0))
                {
                    gWorldMapInfo.nextIndexOffset = 2;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 0x25);

                    // Erase "BEST/" tiles
                    gBgTilemapBufs[0][0x4C] = (10 << 12);
                    gBgTilemapBufs[0][0x4D] = (10 << 12);
                    gBgTilemapBufs[0][0x4E] = (10 << 12);
                    gBgTilemapBufs[0][0x4F] = (10 << 12);
                    gBgTilemapBufs[0][0x50] = (10 << 12);

                    // Erase best time tiles
                    gBgTilemapBufs[0][0x6D] = (10 << 12);
                    gBgTilemapBufs[0][0x6E] = (10 << 12);
                    gBgTilemapBufs[0][0x6F] = (10 << 12);
                    gBgTilemapBufs[0][0x70] = (10 << 12);
                    gBgTilemapBufs[0][0x71] = (10 << 12);
                    gBgTilemapBufs[0][0x72] = (10 << 12);
                    gBgTilemapBufs[0][0x73] = (10 << 12);
                    gBgTilemapBufs[0][0x74] = (10 << 12);

                    // Draw dream stone icon
                    gBgTilemapBufs[0][0x2C] = (10 << 12) | 0x11;

                    // Draw "/30"
                    gBgTilemapBufs[0][0x30] = (10 << 12) | 0x10;
                    gBgTilemapBufs[0][0x31] = (10 << 12) | 0x4;
                    gBgTilemapBufs[0][0x32] = (10 << 12) | 0x1;

                    // Draw collected dream stone amount
                    gBgTilemapBufs[0][0x2E] = (10 << 12) | (((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) / 10) + 1);
                    gBgTilemapBufs[0][0x2F] = (10 << 12) | (((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) % 10) + 1);
                }

                if ((gHeldKeys & DPAD_DOWN) && (WorldMapScreenIsValidPath(gWorldMapInfo.currentIndex) != 0))
                {
                    gWorldMapInfo.nextIndexOffset = 1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 0x24);

                    // Draw "BEST/"
                    gBgTilemapBufs[0][0x4C] = (10 << 12) | 0xC;
                    gBgTilemapBufs[0][0x4D] = (10 << 12) | 0xD;
                    gBgTilemapBufs[0][0x4E] = (10 << 12) | 0xE;
                    gBgTilemapBufs[0][0x4F] = (10 << 12) | 0xF;
                    gBgTilemapBufs[0][0x50] = (10 << 12) | 0x10;

                    // Draw best time
                    gBgTilemapBufs[0][0x6D] = (10 << 12) | ((gFileSaveData->bestEx1TimeMinutes / 10) + 1);
                    gBgTilemapBufs[0][0x6E] = (10 << 12) | ((gFileSaveData->bestEx1TimeMinutes % 10) + 1);
                    gBgTilemapBufs[0][0x6F] = (10 << 12) | 0xB;
                    gBgTilemapBufs[0][0x70] = (10 << 12) | ((gFileSaveData->bestEx1TimeSeconds / 10) + 1);
                    gBgTilemapBufs[0][0x71] = (10 << 12) | ((gFileSaveData->bestEx1TimeSeconds % 10) + 1);
                    gBgTilemapBufs[0][0x72] = (10 << 12) | 0xB;
                    gBgTilemapBufs[0][0x73] = (10 << 12) | ((gFileSaveData->bestEx1TimeCentiseconds / 10) + 1);
                    gBgTilemapBufs[0][0x74] = (10 << 12) | ((gFileSaveData->bestEx1TimeCentiseconds % 10) + 1);

                    // Draw dream stone icon
                    gBgTilemapBufs[0][0x2C] = (10 << 12) | 0x11;

                    // Draw "/30"
                    gBgTilemapBufs[0][0x30] = (10 << 12) | 0x10;
                    gBgTilemapBufs[0][0x31] = (10 << 12) | 0x4;
                    gBgTilemapBufs[0][0x32] = (10 << 12) | 0x1;

                    // Draw collected dream stone amount
                    gBgTilemapBufs[0][0x2E] = (10 << 12) | (((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) / 10) + 1);
                    gBgTilemapBufs[0][0x2F] = (10 << 12) | (((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) % 10) + 1);
                }

                if (gHeldKeys & DPAD_LEFT)
                {
                    gWorldMapInfo.nextIndexOffset = -1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 1);
                }
                break;

            // EX-1
            case 5:
                if (gHeldKeys & (DPAD_UP | DPAD_RIGHT))
                {
                    gWorldMapInfo.nextIndexOffset = -1;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 0x25);
                }
                break;

            // EX-2
            case 6:
                if (gHeldKeys & DPAD_DOWN)
                {
                    gWorldMapInfo.nextIndexOffset = -2;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 0x24);
                }
                break;

            // EX-3
            case 7:
                if (gHeldKeys & DPAD_DOWN)
                {
                    gWorldMapInfo.nextIndexOffset = -7;
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    SetEntityAnimationInfoState(0, 0x24);
                }
                break;
        }

        if (gWorldMapInfo.nextIndexOffset != 0)
        {
            if (gUnk_08116708[gWorldMapInfo.currentIndex][0] >= gUnk_08116708[gWorldMapInfo.currentIndex + gWorldMapInfo.nextIndexOffset][0])
            {
                gEntityInfo[0].unkC_2 = 1;
            }
            else
            {
                gEntityInfo[0].unkC_2 = 0;
            }
            gUnk_030034DC = 0;
        }
    }
    else
    {
        sp0.unk0 = gEntityInfo[0].xPosBg2;
        sp0.unk2 = gEntityInfo[0].yPosBg2;
        sp0.unk4 = gUnk_08116708[gWorldMapInfo.currentIndex + gWorldMapInfo.nextIndexOffset][0];
        sp0.unk6 = gUnk_08116708[gWorldMapInfo.currentIndex + gWorldMapInfo.nextIndexOffset][1];
        sp0.unk8 = sp0.unk9 = 2;
        spC = sub_0800BEF0(sp0);
        gEntityInfo[0].xPosBg2 = spC.unk0;
        gEntityInfo[0].yPosBg2 = spC.unk2;

        if ((gWorldMapInfo.currentIndex + gWorldMapInfo.nextIndexOffset) > 4)
        {
            if (gBgInfo[0].vOfs != 0)
            {
                gBgInfo[0].vOfs -= 0x80;
            }
        }
        else if (gBgInfo[0].vOfs < 0x400)
        {
            gBgInfo[0].vOfs += 0x80;
        }

        if ((gEntityInfo[0].xPosBg2 == gUnk_08116708[gWorldMapInfo.currentIndex + gWorldMapInfo.nextIndexOffset][0]) && (gEntityInfo[0].yPosBg2 == gUnk_08116708[gWorldMapInfo.currentIndex + gWorldMapInfo.nextIndexOffset][1]))
        {
            gWorldMapInfo.currentIndex += gWorldMapInfo.nextIndexOffset;
            gWorldMapInfo.nextIndexOffset = 0;
            if (gEntityAnimationInfo[0].state == 1)
            {
                SetEntityAnimationInfoState(0, 0);
            }
            if (gEntityAnimationInfo[0].state == 0x25)
            {
                SetEntityAnimationInfoState(0, 0x23);
            }
            if (gEntityAnimationInfo[0].state == 0x24)
            {
                SetEntityAnimationInfoState(0, 0x22);
            }
        }

        for (var_r4 = 0; var_r4 < 8; var_r4++)
        {
            if ((gEntityInfo[0].xPosBg2 >= (gUnk_08116708[var_r4][0] - 0x10)) && (gEntityInfo[0].xPosBg2 <= (gUnk_08116708[var_r4][0] + 0x10)) && (gEntityInfo[0].yPosBg2 >= (gUnk_08116708[var_r4][1] - 0x10)) && (gEntityInfo[0].yPosBg2 <= (gUnk_08116708[var_r4][1] + 0x10)))
            {
                REG_WIN0H = gUnk_08116728[var_r4][0];
                REG_WIN0V = gUnk_08116728[var_r4][1];
                break;
            }
        }
    }
}
