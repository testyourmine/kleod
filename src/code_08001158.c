#include "global.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "code_0800BFF4.h"
#include "code_08014184.h"
#include "code_080240F4.h"
#include "code_0802688C.h"
#include "code_08039D8C.h"
#include "code_08043BA4.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "main.h"
#include "math.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

extern void sub_08048028();

extern u8 gUnk_08051BD4[6][9][3]; // BG bpp (0 = 16 color mode, 0x80 = 256 color mode)
extern u16 gUnk_08051C76[6][9][3];
extern u16 gUnk_08051DBA[6][9][3];
extern u16 gUnk_08051EFE[6][9][3]; // BG tile length y?
extern u8 gUnk_08051FE8[][8][0x1C]; // TODO: seems to be in the middle of gUnk_08051EFE data?
extern u8 gUnk_08052042[6][9][3]; // BG tile length x?
extern u8 gUnk_08052624[6][9];
extern u16 gUnk_0805265A[6];
extern u16 gUnk_08052666[6];
extern u16 gUnk_08052672[6];
extern u8 gUnk_0805267E[6];
extern void gUnk_0805553C;
extern void gUnk_080555A8;

extern struct CurrentRoomBg2Bounds gUnk_080D2E88[6][0x7][0x14];

struct Unk_080D48C8 {
    u16 unk0;
    u16 unk2;
    u8 unk4_0:2;
    u8 unk4_2:6;
    u8 pad5[0x8 - 0x5];
};
extern struct Unk_080D48C8 gUnk_080D48C8[6][7][0x15];

extern u16 gUnk_080D927C[BG_PLTT_SIZE/2]; // TODO: type
extern u16 gUnk_080D947C[0x9600/2]; // TODO: type

extern void (*gUnk_08116620[6][9])(void); // pointers to "load level" functions

extern void* gUnk_08188F5C[6][9];   // pointers to BG palettes (level)
extern u32 *gUnk_08189034[6][9][3]; // pointers to BG tiles (level)
extern u32 *gUnk_081892BC[6][9][3]; // pointers to BG tilemaps (level)

extern u32 *gUnk_08189544[6]; // pointers to BG palettes (overworld)
extern u32 *gUnk_0818955C[6]; // pointers to BG1 tiles (overworld)
extern u32 *gUnk_08189574[6]; // pointers to BG1 tilemaps (overworld)

extern void *gUnk_08189A24[6][9];
extern u32 *gUnk_0818B7AC[6*2];
extern struct Unk_0300466C *gUnk_0818B8E0[6][9];

// 1158
void sub_08001158(void)
{
    s32 sp0;
    s32 temp_r1;
    u8 temp_r2;
    u32 temp_r3;
    u32 temp_r4;
    u32 var_r4;

    sp0 = 0;
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();
    gUnk_03004660 = 0;

    if (gUnk_03004C20.level == 0)
    {
        sp0 = 1;
        for (var_r4 = 0; var_r4 < 8; var_r4++)
        {
            if (!(gUnk_03004670->unk8[gUnk_03004C20.world - 1][var_r4] & 0x80))
            {
                sp0 = 0;
            }
        }
    }

    if (gUnk_03003410.unk9 == 0)
    {
        if ((gUnk_03004C20.level == 8) || (gUnk_03004C20.level == 0))
        {
            gUnk_03005290 = DecompressAlloc(gUnk_0818B7AC[((gUnk_03004C20.level >> 3) * 6) + (gUnk_03004C20.world - 1)]) + 4;
        }

        gBgDataPtrs.pBufBg2Tiles = thunk_HeapAlloc(*gUnk_08189034[gUnk_03004C20.world - 1][gUnk_03004C20.level][2] & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg2Tilemap = thunk_HeapAlloc(*gUnk_081892BC[gUnk_03004C20.world - 1][gUnk_03004C20.level][2] & 0x7FFFFFFF, 0);
        if ((sp0 == 1) && (gUnk_03004C20.level == 0))
        {
            gBgDataPtrs.pBufBg1Tiles = thunk_HeapAlloc(*gUnk_0818955C[gUnk_03004C20.world - 1] & 0x7FFFFFFF, 0);
            gBgDataPtrs.pBufBg1Tilemap = thunk_HeapAlloc(*gUnk_08189574[gUnk_03004C20.world - 1] & 0x7FFFFFFF, 0);
        }
        else
        {
            gBgDataPtrs.pBufBg1Tiles = thunk_HeapAlloc(*gUnk_08189034[gUnk_03004C20.world - 1][gUnk_03004C20.level][1] & 0x7FFFFFFF, 0);
            gBgDataPtrs.pBufBg1Tilemap = thunk_HeapAlloc(*gUnk_081892BC[gUnk_03004C20.world - 1][gUnk_03004C20.level][1] & 0x7FFFFFFF, 0);
        }
        gBgDataPtrs.pBufBg0Tiles = thunk_HeapAlloc(*gUnk_08189034[gUnk_03004C20.world - 1][gUnk_03004C20.level][0] & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg0Tilemap = thunk_HeapAlloc(*gUnk_081892BC[gUnk_03004C20.world - 1][gUnk_03004C20.level][0] & 0x7FFFFFFF, 0);

        Decompress(gBgDataPtrs.pBufBg0Tiles, gUnk_08189034[gUnk_03004C20.world - 1][gUnk_03004C20.level][0]);
        Decompress(gBgDataPtrs.pBufBg0Tilemap, gUnk_081892BC[gUnk_03004C20.world - 1][gUnk_03004C20.level][0]);
        if ((sp0 == 1) && (gUnk_03004C20.level == 0))
        {
            Decompress(gBgDataPtrs.pBufBg1Tiles, gUnk_0818955C[gUnk_03004C20.world - 1]);
            Decompress(gBgDataPtrs.pBufBg1Tilemap, gUnk_08189574[gUnk_03004C20.world - 1]);
        }
        else
        {
            Decompress(gBgDataPtrs.pBufBg1Tiles, gUnk_08189034[gUnk_03004C20.world - 1][gUnk_03004C20.level][1]);
            Decompress(gBgDataPtrs.pBufBg1Tilemap, gUnk_081892BC[gUnk_03004C20.world - 1][gUnk_03004C20.level][1]);
        }
        Decompress(gBgDataPtrs.pBufBg2Tiles, gUnk_08189034[gUnk_03004C20.world - 1][gUnk_03004C20.level][2]);
        Decompress(gBgDataPtrs.pBufBg2Tilemap, gUnk_081892BC[gUnk_03004C20.world - 1][gUnk_03004C20.level][2]);

        gBgDataPtrs.pBufBg0Tiles += 4;
        gBgDataPtrs.pBufBg0Tilemap += 2;
        gBgDataPtrs.pBufBg1Tiles += 4;
        gBgDataPtrs.pBufBg1Tilemap += 2;
        gBgDataPtrs.pBufBg2Tiles += 4;
        gBgDataPtrs.pBufBg2Tilemap += 4;
    }

    if ((gUnk_03004C20.level == 0) && (sp0 == 1))
    {
        DecompressDma(gUnk_08189544[gUnk_03004C20.world - 1], BG_PLTT, BG_PLTT_SIZE);
    }
    else
    {
        DecompressDma(gUnk_08188F5C[gUnk_03004C20.world - 1][gUnk_03004C20.level], BG_PLTT, BG_PLTT_SIZE);
    }

    gBgInfo[0].hOfs = 0;
    gBgInfo[0].vOfs = 0;
    gBgInfo[0].unk14 = 0;
    gBgInfo[0].pTiles = VRAM;
    gBgInfo[0].pTilemap = VRAM + 0xE000;
    gBgInfo[0].hLength = gUnk_08051C76[gUnk_03004C20.world - 1][gUnk_03004C20.level][0];
    gBgInfo[0].vLength = gUnk_08051DBA[gUnk_03004C20.world - 1][gUnk_03004C20.level][0];
    gBgInfo[0].unk16 = gUnk_08051EFE[gUnk_03004C20.world - 1][gUnk_03004C20.level][0];
    gBgInfo[0].unk18 = gUnk_08052042[gUnk_03004C20.world - 1][gUnk_03004C20.level][0];
    gBgInfo[1].hOfs = 0;
    gBgInfo[1].vOfs = 0;
    gBgInfo[1].unk14 = 0;
    gBgInfo[1].pTiles = VRAM + 0x4000;
    gBgInfo[1].pTilemap = VRAM + 0xE800;

    if ((gUnk_03004C20.level == 0) && (sp0 == 1))
    {
        gBgInfo[1].hLength = gUnk_0805265A[gUnk_03004C20.world - 1];
        gBgInfo[1].vLength = gUnk_08052666[gUnk_03004C20.world - 1];
        gBgInfo[1].unk16 = gUnk_08052672[gUnk_03004C20.world - 1];
        gBgInfo[1].unk18 = gUnk_0805267E[gUnk_03004C20.world - 1];
    }
    else
    {
        gBgInfo[1].hLength = gUnk_08051C76[gUnk_03004C20.world - 1][gUnk_03004C20.level][1];
        gBgInfo[1].vLength = gUnk_08051DBA[gUnk_03004C20.world - 1][gUnk_03004C20.level][1];
        gBgInfo[1].unk16 = gUnk_08051EFE[gUnk_03004C20.world - 1][gUnk_03004C20.level][1];
        gBgInfo[1].unk18 = gUnk_08052042[gUnk_03004C20.world - 1][gUnk_03004C20.level][1];
    }

    gBgInfo[2].unk14 = 0;
    gBgInfo[2].pTiles = VRAM + 0x8000;
    gBgInfo[2].pTilemap = VRAM + 0xF000;
    gBgInfo[2].hLength = gUnk_08051C76[gUnk_03004C20.world - 1][gUnk_03004C20.level][2];
    gBgInfo[2].vLength = gUnk_08051DBA[gUnk_03004C20.world - 1][gUnk_03004C20.level][2];
    gBgInfo[2].unk16 = gUnk_08051EFE[gUnk_03004C20.world - 1][gUnk_03004C20.level][2];
    gBgInfo[2].unk18 = gUnk_08052042[gUnk_03004C20.world - 1][gUnk_03004C20.level][2];
    gUnk_030052A0 = 0xFE;

    if (gUnk_03004C20.level >= 1 && gUnk_03004C20.level <= 7)
    {
        if (gUnk_03004C20.room == 0xFF)
        {
            for (gUnk_03004C20.room = 1; gUnk_03004C20.room < 6; gUnk_03004C20.room++)
            {
                gCurrentRoomBg2Bounds.left = gUnk_080D2E88[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_03004C20.room - 1].left;
                gCurrentRoomBg2Bounds.top = gUnk_080D2E88[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_03004C20.room - 1].top;
                gCurrentRoomBg2Bounds.right = gUnk_080D2E88[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_03004C20.room - 1].right;
                gCurrentRoomBg2Bounds.bottom = gUnk_080D2E88[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_03004C20.room - 1].bottom;

                temp_r4 = (gUnk_03004C20.unk8 >> ((gUnk_03004C20.room - 1) * 2)) & 3;
                temp_r3 = (gUnk_03005284->unk16 >> ((gUnk_03004C20.room - 1) * 2)) & 3;
                if (temp_r4 != temp_r3)
                {
                    sub_0804517C(((u8)(temp_r3 + 4) - temp_r4) & 3);
                    temp_r2 = (gUnk_03004C20.room - 1) * 2;
                    temp_r1 = ((gUnk_03004C20.unk8 >> temp_r2) + 1) & 3;
                    gUnk_03004C20.unk8 = (gUnk_03004C20.unk8 & ~(3 << temp_r2)) | (temp_r1 << temp_r2);
                }
            }

            gUnk_03004C20.room = 0xFF;
        }
        else if (gUnk_03003410.unk9 == 1)
        {
            temp_r4 = (gUnk_03004C20.unk8 >> ((gUnk_03004C20.room - 1) * 2)) & 3;
            temp_r3 = (gUnk_03005284->unk16 >> ((gUnk_03004C20.room - 1) * 2)) & 3;
            if (temp_r4 != temp_r3)
            {
                sub_0804517C(((u8)(temp_r3 + 4) - temp_r4) & 3);
                gUnk_03004C20.unk8 = gUnk_03005284->unk16;
            }
        }
    }
    else
    {
        gUnk_03005284->unk16 = 0;
        gUnk_03004C20.unk8 = 0;
    }
    sub_08002FD0();

    DmaCopy16Wait(3, gBgDataPtrs.pBufBg0Tiles, gBgInfo[0].pTiles, gBgInfo[0].unk18 * gBgInfo[0].unk16);
    DmaCopy16Wait(3, gBgDataPtrs.pBufBg1Tiles, gBgInfo[1].pTiles, gBgInfo[1].unk18 * gBgInfo[1].unk16);
    DmaCopy16Wait(3, gBgDataPtrs.pBufBg2Tiles, gBgInfo[2].pTiles, gBgInfo[2].unk18 * gBgInfo[2].unk16);

    for (var_r4 = 0; var_r4 < 0x400; var_r4++)
    {
        gBgTilemapBufs[1][var_r4] = gBgDataPtrs.pBufBg1Tilemap[var_r4];
        gBgTilemapBufs[0][var_r4] = gBgDataPtrs.pBufBg0Tilemap[var_r4];
    }

    DmaCopy16Wait(3, &gBgTilemapBufs[0], gBgInfo[0].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[1], gBgInfo[1].pTilemap, 0x800);

    REG_BG0CNT = gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][0] | BGCNT_PRIORITY(3) | BGCNT_SCREENBASE(28) | BGCNT_MOSAIC | BGCNT_CHARBASE(0);
    REG_BG1CNT = gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][1] | BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(29) | BGCNT_MOSAIC | BGCNT_CHARBASE(1);

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 4) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 7) & 0x1FF;
    REG_BG1HOFS = gBgInfo[1].hOfs & 0x1FF;
    REG_BG1VOFS = gBgInfo[1].vOfs & 0x1FF;

    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));

    REG_BG2X_L = gBgInfo[2].hOfs << 8;
    REG_BG2X_H = gBgInfo[2].hOfs >> 0x10; // evaluates to 0
    REG_BG2Y_L = gBgInfo[2].vOfs << 8;
    REG_BG2Y_H = gBgInfo[2].vOfs >> 0x10; // evaluates to 0

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    gBg2YMag = 0x100;
    gBg2XMag = 0x100;
    gBg2Alpha = 0;

    REG_WIN0H = WIN_RANGE(0, DISPLAY_WIDTH);
    REG_WIN0V = WIN_RANGE((s32)(DISPLAY_HEIGHT * 0.9f), DISPLAY_HEIGHT);
    REG_WININ = WININ_WIN0_CLR | WININ_WIN0_BG0;
    REG_WINOUT = WINOUT_WIN01_CLR | WINOUT_WIN01_OBJ | WINOUT_WIN01_BG_ALL;

    if ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3)))
    {
        REG_WIN1H = WIN_RANGE((s32)(DISPLAY_WIDTH * 2.f / 3.f), DISPLAY_WIDTH);
        REG_WIN1V = WIN_RANGE(0, (s32)(DISPLAY_HEIGHT * 0.1f));
        REG_WININ = WININ_WIN1_CLR | WININ_WIN1_BG0 | WININ_WIN0_CLR | WININ_WIN0_BG0;
        REG_WINOUT = WINOUT_WIN01_CLR | WINOUT_WIN01_OBJ | WINOUT_WIN01_BG_ALL;
        REG_DISPCNT = DISPCNT_WIN1_ON | DISPCNT_WIN0_ON | DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_BG1_ON | DISPCNT_BG0_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
        gUnk_03004C20.unk10 = 1;
        sub_08026128();
    }
    else
    {
        REG_DISPCNT = DISPCNT_WIN0_ON | DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_BG1_ON | DISPCNT_BG0_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
        gUnk_03004C20.unk10 = 0;
    }

    if (gUnk_03004C20.level != 8)
    {
        // TODO: use affine for BGCNT size?
        REG_BG2CNT = gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][2] | BGCNT_TXT512x256 | BGCNT_WRAP | BGCNT_SCREENBASE(30) | BGCNT_MOSAIC | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(1);
        gIntrTable.vBlank = sub_080009D8;
    }
    else
    {
        var_r4 = (u32)REG_ADDR_BG2CNT; // FAKE!
        REG_BG2CNT = gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][2] | BGCNT_TXT256x512 | BGCNT_SCREENBASE(30) | BGCNT_MOSAIC | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(1);
        gIntrTable.vBlank = sub_08000CE0;
        gUnk_03004C20.room = 1;
    }

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
}

// 1CD0
/**
 * @brief 1CD0 | Scroll and update BG2 level data
 * 
 * @param scrollFlags 0x10 scrolls right, 0x20 scrolls left, 0x40 scrolls up, 0x80 scrolls down
 */
void ScrollBg2LevelData(u8 scrollFlags, struct ScrollOffset scrollOffset)
{
    u32 newTileOffset;
    u32 dest;
    u32 src;
    u32 tile;
    u32 i;

    // Scroll right
    if (scrollFlags & SCROLL_RIGHT)
    {
        gBgInfo[2].hOfs += scrollOffset.x;
        if (gBgInfo[2].hOfs > (gCurrentRoomBg2Bounds.right - DISPLAY_WIDTH))
        {
            gBgInfo[2].hOfs = gCurrentRoomBg2Bounds.right - DISPLAY_WIDTH;
        }

        newTileOffset = gBgInfo[2].hOfs / 8;
        if (newTileOffset != gBgInfo[2].tileCol)
        {
            gBgInfo[2].tileCol = newTileOffset;
            dest = (newTileOffset + (DISPLAY_WIDTH / 8)) % 0x20;
            src = (newTileOffset + (DISPLAY_WIDTH / 8)) % gBgInfo[2].hLength;
            tile = gBgInfo[2].vOfs >> 3;
            for (i = 0; i < (DISPLAY_HEIGHT / 8) + 1; i++)
            {
                gUnk_03004DB0[(((i + tile) % 0x20) << 5) + dest] = gBgDataPtrs.pBufBg2Tilemap[((i + tile) * gBgInfo[2].hLength) + src];
            }
        }
    }
    // Scroll left
    else if (scrollFlags & SCROLL_LEFT)
    {
        gBgInfo[2].hOfs += scrollOffset.x;
        if (((u16)(gBgInfo[2].hOfs - gCurrentRoomBg2Bounds.left)) > (u16)-0x100)
        {
            gBgInfo[2].hOfs = gCurrentRoomBg2Bounds.left;
        }

        newTileOffset = gBgInfo[2].hOfs / 8;
        if (newTileOffset != gBgInfo[2].tileCol)
        {
            gBgInfo[2].tileCol = newTileOffset;
            dest = newTileOffset % 0x20;
            src = (newTileOffset + gBgInfo[2].hLength) % gBgInfo[2].hLength;
            tile = gBgInfo[2].vOfs / 8;
            for (i = 0; i < (DISPLAY_HEIGHT / 8) + 1; i++)
            {
                gUnk_03004DB0[(((i + tile) % 0x20) << 5) + dest] = gBgDataPtrs.pBufBg2Tilemap[((i + tile) * gBgInfo[2].hLength) + src];
            }
        }
    }

    // Scroll up
    if (scrollFlags & SCROLL_UP)
    {
        gBgInfo[2].vOfs += scrollOffset.y;
        if (((u16)(gBgInfo[2].vOfs - gCurrentRoomBg2Bounds.top)) > (u16)-0x100)
        {
            gBgInfo[2].vOfs = gCurrentRoomBg2Bounds.top;
        }

        newTileOffset = gBgInfo[2].vOfs / 8;
        if (newTileOffset != gBgInfo[2].tileRow)
        {
            gBgInfo[2].tileRow = newTileOffset;
            tile = gBgInfo[2].hOfs / 8;
            dest = (newTileOffset % 0x20) << 5;
            src = (((newTileOffset + gBgInfo[2].vLength) % gBgInfo[2].vLength) * gBgInfo[2].hLength) + tile;
            for (i = 0; i < (DISPLAY_WIDTH / 8) + 1; i++)
            {
                gUnk_03004DB0[dest + ((i + tile) % 0x20)] = gBgDataPtrs.pBufBg2Tilemap[src + i];
            }
        }
    }
    // Scroll down
    else if (scrollFlags & SCROLL_DOWN)
    {
        if (gBgInfo[2].vOfs == 0)
        {
            gBgInfo[2].tileRow = 0xF000;
        }

        gBgInfo[2].vOfs += scrollOffset.y;
        if (gBgInfo[2].vOfs >= (gCurrentRoomBg2Bounds.bottom - DISPLAY_HEIGHT))
        {
            gBgInfo[2].vOfs = gCurrentRoomBg2Bounds.bottom - DISPLAY_HEIGHT;
        }

        newTileOffset = gBgInfo[2].vOfs / 8;
        if (newTileOffset != gBgInfo[2].tileRow)
        {
            gBgInfo[2].tileRow = newTileOffset;
            tile = gBgInfo[2].hOfs / 8;
            dest = ((newTileOffset + (DISPLAY_HEIGHT / 8)) % 0x20) << 5;
            src = (((newTileOffset + (DISPLAY_HEIGHT / 8)) % gBgInfo[2].vLength) * gBgInfo[2].hLength) + tile;
            for (i = 0; i < (DISPLAY_WIDTH / 8) + 1; i++)
            {
                gUnk_03004DB0[dest + ((i + tile) % 0x20)] = gBgDataPtrs.pBufBg2Tilemap[src + i];
            }
        }
    }
}

// 1F58
void sub_08001F58(void)
{
    u16 sp0;
    struct Unk_0300542C *var_r2;
    u16 var_ip;
    struct ScrollOffset scrollOffset;
    u16 var_r8;
    u8 scrollFlags;

    sp0 = 0;
    scrollFlags = SCROLL_NONE;
    var_r8 = 0;
    var_ip = 0;

    if (gUnk_030052A0 == 0xFE)
    {
        if (gUnk_0300542C != NULL)
        {
            for (var_r2 = gUnk_0300542C; var_r2->unk0 != 0xFFFF; )
            {
                if ((var_r2->unk4 >= gEntityInfo[0].xPosBg2) && (var_r2->unk0 < gEntityInfo[0].xPosBg2) && (var_r2->unk2 < gEntityInfo[0].yPosBg2) && (gEntityInfo[0].yPosBg2 < var_r2->unk6))
                {
                    gUnk_030008E8 = 1;
                    gUnk_0300358C = 1;
                    var_r8 = var_r2->unk8;
                    var_ip = var_r2->unk9;
                    break;
                }
                var_r2++;
                // TODO: what?
                if (var_r2 == (struct Unk_0300542C *)0xC)
                {
                    break;
                }
            }
        }

        if ((s16)(var_r8 + gEntityInfo[0].xPosBg2) > (s16)(gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER))
        {
            scrollFlags = SCROLL_RIGHT;
            if (gUnk_0300358C != 0)
            {
                scrollOffset.x = 1;
                if ((s16)(gEntityInfo[0].xPosBg2) > (s16)(gBgInfo[2].hOfs + 0xD8))
                {
                    gUnk_0300358C = 0;
                }
            }
            else
            {
                if ((gEntityInfo[0].xPosBg2 - (gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER)) > 5)
                {
                    scrollOffset.x = 2;
                }
                else
                {
                    scrollOffset.x = 1;
                }
            }
            if (gHeldKeys & DPAD_LEFT)
            {
                scrollFlags = SCROLL_NONE;
                scrollOffset.x = 0;
            }
        }
        else if ((s16)(var_r8 + gEntityInfo[0].xPosBg2) < (s16)(gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER))
        {
            scrollFlags = SCROLL_LEFT;
            if (gUnk_0300358C != 0)
            {
                scrollOffset.x = -1;
                if ((s16)(gEntityInfo[0].xPosBg2) < (s16)(gBgInfo[2].hOfs + 0x18))
                {
                    gUnk_0300358C = 0;
                }
            }
            else
            {
                if ((((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) - gEntityInfo[0].xPosBg2) > 5) && ((var_r8 | gUnk_0300358C) == 0))
                {
                    scrollOffset.x = -2;
                }
                else
                {
                    scrollOffset.x = -1;
                }
            }
            if (gHeldKeys & DPAD_RIGHT)
            {
                scrollFlags = SCROLL_NONE;
                scrollOffset.x = 0;
            }
        }
        else
        {
            gUnk_0300358C = 0;
        }

        if (gEntityInfo[0].yPosScreen > DISPLAY_HEIGHT)
        {
            sp0 = 0x44;
        }
        if ((u16)(sp0 + gEntityInfo[0].yPosScreen + var_ip) > 0x63)
        {
            s32 flag;
            scrollFlags |= SCROLL_DOWN;
            if (gUnk_030008E8 == 0)
            {
                flag = 1;
            }
            else
            {
                scrollOffset.y = 1;
                if ((s16)gEntityInfo[0].yPosBg2 <= (s16)(gBgInfo[2].vOfs + 0x90))
                {
                    flag = 0;
                }
                else
                {
                    gUnk_030008E8 = 0;
                    var_ip = 0;
                    flag = 1;
                }
            }
            if (flag != 0)
            {
                if (((s16)(sp0 + gEntityInfo[0].yPosScreen) < 0x64 || (s16)(sp0 + gEntityInfo[0].yPosScreen) > 0x82) && (var_ip == 0))
                {
                    scrollOffset.y = 3;
                }
                else
                {
                    scrollOffset.y = 1;
                }
            }
        }
        else if ((u16)(sp0 + gEntityInfo[0].yPosScreen + var_ip) <= 0x46)
        {
            s32 flag;
            scrollFlags |= SCROLL_UP;
            if (gUnk_030008E8 == 0)
            {
                flag = 1;
            }
            else
            {
                scrollOffset.y = -1;
                if ((s16)gEntityInfo[0].yPosBg2 >= (s16) (gBgInfo[2].vOfs + 0x18))
                {
                    flag = 0;
                }
                else
                {
                    var_ip = 0;
                    gUnk_030008E8 = 0;
                    flag = 1;
                }
            }
            if (flag)
            {
                if ((u16)(sp0 - (gEntityInfo[0].yPosScreen - 0x46)) > 0x19)
                {
                    scrollOffset.y = -3;
                }
                else
                {
                    scrollOffset.y = -1;
                }
            }
        }
        else
        {
            gUnk_030008E8 = 0;
        }

        if (gEntityInfo[0].xPosScreen > 0xE0)
        {
            if ((gUnk_03005220.unk35 | gUnk_030034E4) == 0)
            {
                scrollFlags = SCROLL_RIGHT;
                scrollOffset.x = 3;
            }
        }
        else if ((gEntityInfo[0].xPosScreen <= 0xF) && ((gUnk_03005220.unk35 | gUnk_030034E4) == 0))
        {
            scrollFlags = SCROLL_LEFT;
            scrollOffset.x = -3;
        }
        if (gEntityInfo[0].yPosScreen <= 0x1F)
        {
            if ((gUnk_03005220.unk35 | gUnk_030034E4) == 0)
            {
                scrollFlags &= SCROLL_VERTICAL;
                scrollFlags |= SCROLL_UP;
                scrollOffset.y = -2;
                if (gEntityInfo[0].yPosScreen <= 0x17)
                {
                    scrollOffset.y = -4;
                }
            }
        }
        else if ((gEntityInfo[0].yPosScreen > 0x90) && ((gUnk_03005220.unk35 | gUnk_030034E4) == 0))
        {
            scrollFlags &= SCROLL_VERTICAL;
            scrollFlags |= SCROLL_DOWN;
            scrollOffset.y = 3;
        }

        if (scrollFlags != SCROLL_NONE)
        {
            ScrollBg2LevelData(scrollFlags, scrollOffset);
        }
    }

    gBgInfo[1].hOfs = (gBgInfo[2].hOfs >> 1);
    if (gBgInfo[2].vOfs >= gUnk_03005474)
    {
        gBgInfo[1].vOfs += (gBgInfo[2].vOfs - gUnk_03005474) & 1;
    }
    else
    {
        gBgInfo[1].vOfs -= (gUnk_03005474 - gBgInfo[2].vOfs) & 1;
    }

    if (gBgInfo[1].vOfs & 0x8000)
    {
        gBgInfo[1].vOfs = 0;
    }
    else if (gBgInfo[1].vOfs > DISPLAY_HEIGHT_CENTER)
    {
        gBgInfo[1].vOfs = DISPLAY_HEIGHT_CENTER;
    }

    gUnk_03005474 = gBgInfo[2].vOfs;
    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2X = (((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) << 8) - (gBg2PA * DISPLAY_WIDTH_CENTER)) - (gBg2PB * DISPLAY_HEIGHT_CENTER);
    gBg2Y = (((gBgInfo[2].vOfs + DISPLAY_HEIGHT_CENTER) << 8) - (gBg2PC * DISPLAY_WIDTH_CENTER)) - (gBg2PD * DISPLAY_HEIGHT_CENTER);
}

// 247C
void sub_0800247C(void)
{
    s32 temp_r2;
    s32 temp_r3_2;
    u16 var_r8;
    struct ScrollOffset scrollOffset;
    u8 scrollFlags;

    var_r8 = 0;
    scrollFlags = SCROLL_NONE;
    scrollOffset.y = scrollOffset.x = 0;

    if (!(gUnk_030051B8 & SCROLL_HORIZONTAL))
    {
        if ((s16) gEntityInfo[0].xPosBg2 > (s16) (gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER))
        {
            scrollFlags = SCROLL_RIGHT;
            if ((gEntityInfo[0].xPosBg2 - (gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER)) > 5)
            {
                scrollOffset.x = 2;
            }
            else
            {
                scrollOffset.x = 1;
            }

            if (gHeldKeys & DPAD_LEFT)
            {
                scrollFlags = SCROLL_NONE;
                scrollOffset.x = 0;
            }
        }

        else if ((s16) gEntityInfo[0].xPosBg2 < (s16) (gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER))
        {
            scrollFlags = SCROLL_LEFT;
            if (((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) - gEntityInfo[0].xPosBg2) > 5)
            {
                scrollOffset.x = -2;
            }
            else
            {
                scrollOffset.x = -1;
            }

            if (gHeldKeys & DPAD_RIGHT)
            {
                scrollFlags = SCROLL_NONE;
                scrollOffset.x = 0;
            }
        }
    }
    if (!(gUnk_030051B8 & SCROLL_VERTICAL))
    {
        if (gEntityInfo[0].yPosScreen > 0xA0)
        {
            var_r8 = 0x44;
        }

        if ((u16) (var_r8 + gEntityInfo[0].yPosScreen) > 0x63)
        {
            scrollFlags |= SCROLL_DOWN;
            if ((u16) ((var_r8 + gEntityInfo[0].yPosScreen) - 0x64) > 0x1E)
            {
                scrollOffset.y = 3;
            }
            else
            {
                scrollOffset.y = 1;
            }
            
        }

        else if ((u16) (var_r8 + gEntityInfo[0].yPosScreen) <= 0x46)
        {
            scrollFlags |= SCROLL_UP;
            if ((u16) (var_r8 - (gEntityInfo[0].yPosScreen - 0x46)) > 0x19U)
            {
                scrollOffset.y = -3;
            }
            else
            {
                scrollOffset.y = -1;
            }
        }
    }

    scrollFlags |= gUnk_030051B8;
    temp_r3_2 = gUnk_03005480 + gUnk_030034E8.unk0;
    temp_r2 = gUnk_030007C0 + gUnk_030034E8.unk4;
    scrollOffset.x += (temp_r3_2 >> 0x10);
    scrollOffset.y += (temp_r2 >> 0x10);
    gUnk_03005480 = temp_r3_2 & 0xFFFF;
    gUnk_030007C0 = temp_r2 & 0xFFFF;

    if (gUnk_03005220.unk46 != 0)
    {
        scrollFlags &= SCROLL_HORIZONTAL;
        scrollOffset.x = 0;
        scrollOffset.y = 0;
    }

    if (scrollFlags != SCROLL_NONE)
    {
        ScrollBg2LevelData(scrollFlags, scrollOffset);
    }

    gBgInfo[1].hOfs = (gBgInfo[2].hOfs >> 1);
    if ((gUnk_03004C20.globalFrameCounter % 4) == 0 && (gUnk_03004660 == 0))
    {
        if (gBgInfo[2].vOfs >= gUnk_03005474)
        {
            gBgInfo[1].vOfs += ((gBgInfo[2].vOfs - gUnk_03005474) & 1);
        }
        else
        {
            gBgInfo[1].vOfs -= ((gUnk_03005474 - gBgInfo[2].vOfs) & 1);
        }

        if (gBgInfo[1].vOfs & 0x8000)
        {
            gBgInfo[1].vOfs = 0;
        }
        else if (gBgInfo[1].vOfs > 0x50)
        {
            gBgInfo[1].vOfs = 0x50;
        }
    }

    gUnk_03005474 = gBgInfo[2].vOfs;
    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2X = (((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) << 8) - (gBg2PA * DISPLAY_WIDTH_CENTER)) - (gBg2PB * DISPLAY_HEIGHT_CENTER);
    gBg2Y = (((gBgInfo[2].vOfs + DISPLAY_HEIGHT_CENTER) << 8) - (gBg2PC * DISPLAY_WIDTH_CENTER)) - (gBg2PD * DISPLAY_HEIGHT_CENTER);
}

// 27C4
void sub_080027C4(void)
{
    struct ScrollOffset scrollOffset;
    u8 scrollFlags;

    scrollFlags = SCROLL_NONE;
    if (gUnk_03005220.unk46 == 0)
    {
        scrollFlags = SCROLL_RIGHT;
        if ((gEntityInfo[0].xPosBg2 - (gBgInfo[2].hOfs + 0x28)) > 0)
        {
            scrollOffset.x = gEntityInfo[0].xPosBg2 - (gBgInfo[2].hOfs + 0x28);
        }
        else
        {
            scrollOffset.x = 1;
        }
    }

    gEntityInfo[0].yPosBg2 = gEntityInfo[0].yPosBg2; // FAKE!
    if ((gUnk_03005220.unk2F == 0) || (gUnk_03005220.unk31 == 0))
    {
        if (gEntityInfo[0].yPosBg2 > (gBgInfo[2].vOfs + 0x6E))
        {
            scrollFlags |= SCROLL_DOWN;
            if (gEntityInfo[0].yPosBg2 > (gBgInfo[2].vOfs + 0xA))
            {
                scrollOffset.y = 3;
            }
            else
            {
                scrollOffset.y = 1;
            }
        }

        else if (gEntityInfo[0].yPosBg2 < (gBgInfo[2].vOfs + 0x6E))
        {
            scrollFlags |= SCROLL_UP;
            if (gEntityInfo[0].yPosBg2 < (gBgInfo[2].vOfs + 0x64))
            {
                scrollOffset.y = -3;
            }
            else
            {
                scrollOffset.y = -1;
            }
        }
    }

    else if (gUnk_03005220.unk2F > 0)
    {
        if ((gEntityInfo[0].yPosBg2 - 0x28) > gBgInfo[2].vOfs)
        {
            scrollFlags |= SCROLL_DOWN;
            if (gEntityInfo[0].yPosBg2 > (gBgInfo[2].vOfs + 0x32))
            {
                scrollOffset.y = 3;
            }
            else
            {
                scrollOffset.y = 2;
            }
        }
    }

    else if (gEntityInfo[0].yPosBg2 < (gBgInfo[2].vOfs + 0x82))
    {
        scrollFlags |= SCROLL_UP;
        if (gEntityInfo[0].yPosBg2 < (gBgInfo[2].vOfs + 0x78))
        {
            scrollOffset.y = -3;
        }
        else
        {
            scrollOffset.y = -2;
        }
    }

    if (scrollFlags != SCROLL_NONE)
    {
        ScrollBg2LevelData(scrollFlags, scrollOffset);
    }

    gBgInfo[1].hOfs = (gBgInfo[2].hOfs >> 1);
    if ((gUnk_03004C20.globalFrameCounter % 4) == 0)
    {
        if (gBgInfo[2].vOfs >= gUnk_03005474)
        {
            gBgInfo[1].vOfs += ((gBgInfo[2].vOfs - gUnk_03005474) & 1);
        }
        else
        {
            gBgInfo[1].vOfs -= ((gUnk_03005474 - gBgInfo[2].vOfs) & 1);
        }

        if (gBgInfo[1].vOfs & 0x8000)
        {
            gBgInfo[1].vOfs = 0;
        }
        else if (gBgInfo[1].vOfs > 0x50)
        {
            gBgInfo[1].vOfs = 0x50;
        }
    }

    gUnk_03005474 = gBgInfo[2].vOfs;
    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2X = (((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) << 8) - (gBg2PA * DISPLAY_WIDTH_CENTER)) - (gBg2PB * DISPLAY_HEIGHT_CENTER);
    gBg2Y = (((gBgInfo[2].vOfs + 0x50) << 8) - (gBg2PC * DISPLAY_WIDTH_CENTER)) - (gBg2PD * DISPLAY_HEIGHT_CENTER);
}

// 2AC4
void sub_08002AC4(void)
{
    s16 var_r1;
    s16 var_r5;

    switch (gUnk_030007E0.unkC_0)
    {
        case 0:
            break;

        case 1:
            gUnk_030007E0.unk6 = gEntityInfo[0].xPosBg2 - 0x78;
            gUnk_030007E0.unk8 = gEntityInfo[0].yPosBg2 - 0x8C;
            break;

        case 2:
            gUnk_030007E0.unk6 = (gEntityInfo[0].xPosBg2 + ((gEntityInfo[0x12].xPosBg2 - gEntityInfo[0].xPosBg2) / 2)) - 0x78;
            gUnk_030007E0.unk8 = (gEntityInfo[0].yPosBg2 + (((gEntityInfo[0x12].yPosBg2 - 0x40) - (gEntityInfo[0].yPosBg2)) / 2)) - 0x50;
            break;

        case 3:
            gUnk_030007E0.unk6 = gEntityInfo[0].xPosBg2 - 0x78;
            break;

        case 4:
            gUnk_030007E0.unk6 = 0x1E0 - gEntityInfo[0].xPosBg2;
            gUnk_030007E0.unk8 = 0x140 - gEntityInfo[0].yPosBg2;
            break;

        case 5:
            gUnk_030007E0.unk6 = (gEntityInfo[0].xPosBg2 + ((gEntityInfo[0x12].xPosBg2 - gEntityInfo[0].xPosBg2) / 2)) - 0x78;
            gUnk_030007E0.unk8 = 0x94;
            break;

        case 6:
            gUnk_030007E0.unk6 = gEntityInfo[0].xPosBg2 - 0x78;
            gUnk_030007E0.unk8 = 0x5C;
            break;

        case 7:
            gUnk_030007E0.unk6 = gEntityInfo[0].xPosBg2 - 0x78;
            if (gEntityInfo[0].yPosBg2 <= 0xA9)
            {
                gUnk_030007E0.unk8 = 0x3C;
            }
            else
            {
                gUnk_030007E0.unk8 = 0xA0;
            }
            break;
    }

    if (gUnk_030007E0.unk0 > gUnk_030007E0.unk6)
    {
        gUnk_030007E0.unk0 -= 1;
    }
    if (gUnk_030007E0.unk0 < gUnk_030007E0.unk6)
    {
        gUnk_030007E0.unk0 += 1;
    }

    if (gUnk_030007E0.unk2 > gUnk_030007E0.unk8)
    {
        gUnk_030007E0.unk2 -= 1;
    }
    if (gUnk_030007E0.unk2 < gUnk_030007E0.unk8)
    {
        gUnk_030007E0.unk2 += 1;
    }

    if (gUnk_030007E0.unk0 < 0)
    {
        gUnk_030007E0.unk0 = 0;
    }
    if (gUnk_030007E0.unk2 < 0x3C)
    {
        gUnk_030007E0.unk2 = 0x3C;
    }

    if (gUnk_030007E0.unk0 > 0xF0)
    {
        gUnk_030007E0.unk0 = 0xF0;
    }
    if (gUnk_030007E0.unk2 > 0xA0)
    {
        gUnk_030007E0.unk2 = 0xA0;
    }

    gBgInfo[2].hOfs = (u16) gUnk_030007E0.unk0;
    if (gBg2Alpha == 0)
    {
        gBgInfo[2].vOfs = (u16) gUnk_030007E0.unk2 + 0x10;
    }
    else
    {
        gBgInfo[2].vOfs = (u16) gUnk_030007E0.unk2;
    }
    gBgInfo[1].hOfs = ((s16) gUnk_030007E0.unk0 / 15);

    switch (gUnk_030007E0.unkC_4)
    {
        case 0:
            break;

        case 1:
            var_r5 = Abs(gEntityInfo[0].xPosBg2 - gEntityInfo[0x12].xPosBg2) - 0xA0;
            if (var_r5 < 0)
            {
                var_r5 = 0;
            }

            var_r1 = Abs(gEntityInfo[0].yPosBg2 - gEntityInfo[0x12].yPosBg2);
            if (var_r1 < 0)
            {
                var_r1 = 0;
            }

            if (var_r5 > var_r1)
            {
                gUnk_030007E0.unkA = var_r5 & 0xFE;
            }
            else
            {
                gUnk_030007E0.unkA = var_r1 & 0xFE;
            }
            break;
    }

    if ((u16) gUnk_030007E0.unk4 > (u16) gUnk_030007E0.unkA)
    {
        gUnk_030007E0.unk4 -= 2;
    }
    if ((u16) gUnk_030007E0.unk4 < (u16) gUnk_030007E0.unkA)
    {
        gUnk_030007E0.unk4 += 2;
    }

    if (gUnk_030007E0.unkC_4)
    {
        if ((u16) gUnk_030007E0.unk4 > 0x60U)
        {
            gUnk_030007E0.unk4 = 0x60;
        }
        if ((u16) gUnk_030007E0.unk4 == 0)
        {
            gUnk_030007E0.unk4 = 0;
        }
    }

    gBg2XMag = 0x100 - gUnk_030007E0.unk4;
    gBg2YMag = 0x100 - gUnk_030007E0.unk4;

    if (gUnk_03004C20.world == 4)
    {
        if (gUnk_03005400.unkE_2 == 0)
        {
            gUnk_03005400.unk16 = gBg2Alpha;
            gUnk_03005400.unk14 = 0;
        }
        else if (gUnk_03004C20.sceneFrameCounter & 2)
        {
            if (Abs(gUnk_03005400.unk16) <= 4)
            {
                gBg2Alpha = ((gUnk_03005400.unk16 * COS(gUnk_03005400.unk14)) >> 8);
                if (gUnk_03004C20.sceneFrameCounter & 4)
                {
                    gUnk_03005400.unk14 += 4;
                }
            }
            else
            {
                gBg2Alpha = ((gUnk_03005400.unk16 * COS(gUnk_03005400.unk14)) >> 8);
                gUnk_03005400.unk14 += 4;
                if (!(gUnk_03005400.unk14 % 0x40))
                {
                    if (gUnk_03005400.unk16 > 0)
                    {
                        gUnk_03005400.unk16 -= 1;
                    }
                    else
                    {
                        gUnk_03005400.unk16 += 1;
                    }
                }
            }
        }

        gUnk_03005440.unk0 = -((COS(gBg2Alpha) * 0xF) >> 5);
        gUnk_03005440.unk4 = ((COS(gBg2Alpha) * 0xF) >> 5);
        gUnk_03005440.unk2 = -((SIN(gBg2Alpha) * 0xF) >> 5);
        gUnk_03005440.unk6 = ((SIN(gBg2Alpha) * 0xF) >> 5);

        if (((gUnk_03004C20.sceneFrameCounter % (10 - Abs((s8)gBg2Alpha / 2))) == 0) && (gUnk_03005400.unkC != 0) && (gUnk_03005220.unk31 != 0) && (((s8) gBg2Alpha < -2) || ((s8) gBg2Alpha > 2)))
        {
            if ((s8) gBg2Alpha > 0)
            {
                gEntityInfo[0].xPosBg2 += 3;
            }
            if ((s8) gBg2Alpha < 0)
            {
                gEntityInfo[0].xPosBg2 -= 3;
            }
        }

        if ((s8) gBg2Alpha > 0x14)
        {
            gBg2Alpha = 0x14;
        }
        if ((s8) gBg2Alpha < -0x14)
        {
            gBg2Alpha = -0x14;
        }

        gBgInfo[2].vOfs = 0x58;
        gUnk_03005440.unk0 += 0xF0;
        gUnk_03005440.unk4 += 0xF0;
        gUnk_03005440.unk2 += 0xDC;
        gUnk_03005440.unk6 += 0xDC;
    }

    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));

    sub_0803D15C();
    if (gUnk_03004C20.world == 1)
    {
        gBgInfo[1].vOfs = (gBg2YMag / 3) - 0x28;
    }
}

// 2FD0
void sub_08002FD0(void)
{
    u32 var_r6;

    var_r6 = 0;

    // gUnk_03004654 = gUnk_08051FE8[gUnk_03004C20.world - 1][gUnk_03004C20.level + 8]; // TODO: offsets required to match, fake?
    gUnk_03004654 = ((u8 (*)[8][0x1C])((u8 *)gUnk_08051EFE + 0xEA))[gUnk_03004C20.world - 1][gUnk_03004C20.level + 8]; // TODO: cleanup
    gUnk_03000800 = gUnk_08052624[gUnk_03004C20.world - 1][gUnk_03004C20.level];

    if (gUnk_03004C20.level == 0)
    {
        gSoundVolume = 0xFFFF;
        gUnk_03004C20.room = 1;
        gCurrentRoomBg2Bounds.left = 0;
        gCurrentRoomBg2Bounds.top = 0;
        gCurrentRoomBg2Bounds.right = 0x100;
        gCurrentRoomBg2Bounds.bottom = 0x100;
    }
    else if (gUnk_03004C20.level == 8)
    {
        gSoundVolume = 0xFFFF;
        gUnk_03004C20.room = 1;
        gCurrentRoomBg2Bounds.left = 0;
        gCurrentRoomBg2Bounds.top = 0;
        gCurrentRoomBg2Bounds.right = 0x200;
        gCurrentRoomBg2Bounds.bottom = 0x200;
    }
    else
    {
        if (gUnk_03004C20.room == 0)
        {
            gUnk_030051C8 = gUnk_03004654[1] - 1;
            gSoundVolume = 0xFFFF;
            gUnk_03004C20.unk8 = 0;
            gUnk_03005284->unk6 = 0;
            gUnk_03005284->unk18 = gUnk_03005220.unk4 = 0;
        }
        else if (gUnk_03004C20.room == 0xFF)
        {
            gSoundVolume = 0xFFFF;
            if ((gUnk_03005284->unk6 == 0) || ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3))))
            {
                gUnk_030051C8 = gUnk_03004654[1] - 1;
                gUnk_03004C20.unk8 = 0;
            }
            else
            {
                gUnk_030051C8 = gUnk_03005284->unk6;
                var_r6 = 1;
            }
        }
        else
        {
            var_r6 = 2;
        }

        gUnk_03004C20.room = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk4_2;

        gCurrentRoomBg2Bounds.left = gUnk_080D2E88[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_03004C20.room - 1].left;
        gCurrentRoomBg2Bounds.top = gUnk_080D2E88[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_03004C20.room - 1].top;
        gCurrentRoomBg2Bounds.right = gUnk_080D2E88[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_03004C20.room - 1].right;
        gCurrentRoomBg2Bounds.bottom = gUnk_080D2E88[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_03004C20.room - 1].bottom;

        gUnk_030051CC.unk0 = gCurrentRoomBg2Bounds.left + ((gCurrentRoomBg2Bounds.right - gCurrentRoomBg2Bounds.left) >> 1);
        gUnk_030051CC.unk2 = gCurrentRoomBg2Bounds.top + ((gCurrentRoomBg2Bounds.bottom - gCurrentRoomBg2Bounds.top) >> 1);
    }

    gUnk_03004C20.unkA = 0;
    gUnk_03004C20.unkB = 0;
    gUnk_03004C20.sceneFrameCounter = 0;
    sub_080144C4();

    if (gUnk_03004C20.level != 0)
    {
        sub_0800CA0C(var_r6);
    }
    else
    {
        gUnk_030034E4 = 1;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = sub_080453F0;
        gCallbackQueue.next[2] = sub_0800C45C;
        gUnk_03003410.unk5 = 0;
        gCallbackQueue.next[3] = sub_08048028;
        gCallbackQueue.next[4] = sub_080242C0;
        gCallbackQueue.next[5] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = 0;
        gCallbackQueue.nextCount = 6;
    }

    if (gEntityInfo[0].xPosBg2 < (gCurrentRoomBg2Bounds.left + DISPLAY_WIDTH_CENTER))
    {
        gBgInfo[2].hOfs = gCurrentRoomBg2Bounds.left;
    }
    else if ((gCurrentRoomBg2Bounds.right - DISPLAY_WIDTH_CENTER) < gEntityInfo[0].xPosBg2)
    {
        gBgInfo[2].hOfs = gCurrentRoomBg2Bounds.right - DISPLAY_WIDTH;
    }
    else
    {
        gBgInfo[2].hOfs = gEntityInfo[0].xPosBg2 - DISPLAY_WIDTH_CENTER;
    }

    if (gEntityInfo[0].yPosBg2 < (gCurrentRoomBg2Bounds.top + DISPLAY_WIDTH_CENTER))
    {
        gBgInfo[2].vOfs = gCurrentRoomBg2Bounds.top;
    }
    else if ((gCurrentRoomBg2Bounds.bottom - (DISPLAY_HEIGHT / 4)) < gEntityInfo[0].yPosBg2)
    {
        gBgInfo[2].vOfs = gCurrentRoomBg2Bounds.bottom - DISPLAY_HEIGHT;
    }
    else
    {
        gBgInfo[2].vOfs = gEntityInfo[0].yPosBg2 - DISPLAY_WIDTH_CENTER;
    }

    if ((gUnk_03004C20.level == 6) && (gUnk_030034E8.unk0 == 0) && (gUnk_030034E8.unk4 != 0))
    {
        gBgInfo[2].vOfs += 0x30;
    }

    if (gUnk_03004C20.level != 8)
    {
        sub_0800343C(0);
        DmaCopy16Wait(3, &gUnk_03004DB0, gBgInfo[2].pTilemap, 0x400);
    }
    else
    {
        DmaFill16(3, 0, &gUnk_03003650, 0x1000);
        for (var_r6 = 0; var_r6 < 0x28; var_r6++)
        {
            DmaCopy16Wait(3, &gBgDataPtrs.pBufBg2Tilemap[var_r6 * gBgInfo[2].hLength], &gUnk_03003650[var_r6], 0x3C);
        }
        DmaCopy16Wait(3, &gUnk_03003650, gBgInfo[2].pTilemap, 0x1000);
    }

    if (gUnk_03004C20.level == 8)
    {
        gBgInfo[1].vOfs = 0;
    }
    else
    {
        gBgInfo[1].vOfs = DISPLAY_HEIGHT_CENTER;
    }
}

// 343C
void sub_0800343C(u8 arg0)
{
    u32 destIdx;
    u32 temp_r2;
    u32 srcIdx;

    gBgInfo[2].vOfs -= arg0 * 8;

    for (srcIdx = 0; srcIdx < 0x400; srcIdx++)
    {
        // (gBgInfo[2].hOfs / 8) is tile column
        // (gBgInfo[2].vOfs / 8) is tile row
        // (srcIdx % 0x20) is src buffer column
        // (srcIdx / 0x20) is src buffer row

        temp_r2 = ((gBgInfo[2].hOfs / 8) + (srcIdx % 0x20)) / 0x20;
        destIdx = (((gBgInfo[2].vOfs / 8) % 0x20) * 0x20) + srcIdx;
        if (temp_r2 != 0)
        {
            destIdx += (gBgInfo[2].hOfs / 8) - (temp_r2 * 0x20);
        }
        else
        {
            destIdx += gBgInfo[2].hOfs / 8;
        }
        gUnk_03004DB0[destIdx % 0x400] = gBgDataPtrs.pBufBg2Tilemap[(gBgInfo[2].hLength * (srcIdx / 0x20)) + (srcIdx % 0x20) + ((gBgInfo[2].vOfs / 8) * gBgInfo[2].hLength) + (gBgInfo[2].hOfs / 8)];
    }

    gBgInfo[2].vOfs += arg0 * 8;
}

// 350C
void sub_0800350C(void)
{
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    REG_DISPCNT = DISPCNT_BG2_ON | DISPCNT_BG1_ON | DISPCNT_BG0_ON | DISPCNT_MODE_4;

    REG_WININ = REG_WINOUT = REG_WIN0H = REG_WIN0V = REG_WIN1H = REG_WIN1V = 0;
    REG_BG2CNT = BGCNT_PRIORITY(1);

    gBgInfo[2].vOfs = 0;
    gBgInfo[2].hOfs = 0;
    gBgInfo[1].vOfs = 0;
    gBgInfo[1].hOfs = 0;
    gBgInfo[0].vOfs = 0;
    gBgInfo[0].hOfs = 0;
    gBg2Alpha = 0;

    gBg2XMag = gBg2YMag = 0x500;

    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));

    gBg2X = (((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) << 8) - (gBg2PA * DISPLAY_WIDTH_CENTER)) - (gBg2PB * DISPLAY_HEIGHT_CENTER);
    gBg2Y = (((gBgInfo[2].vOfs + DISPLAY_HEIGHT_CENTER) << 8) - (gBg2PC * DISPLAY_WIDTH_CENTER)) - (gBg2PD * DISPLAY_HEIGHT_CENTER);

    DmaCopy16(3, &gUnk_080D927C, BG_PLTT, BG_PLTT_SIZE);
    DmaCopy16(3, &gUnk_080D947C, VRAM, 0x9600);

    gUnk_03004C20.sceneFrameCounter = 0;
    gCallbackQueue.current[1] = sub_08003750;
    gIntrTable.vBlank = sub_08000DC0;
    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aMPlayAllStop();
}

// 3750
void sub_08003750(void)
{
    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));

    gBg2X = (((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) << 8) - (gBg2PA * DISPLAY_WIDTH_CENTER)) - (gBg2PB * DISPLAY_HEIGHT_CENTER);
    gBg2Y = (((gBgInfo[2].vOfs + DISPLAY_HEIGHT_CENTER) << 8) - (gBg2PC * DISPLAY_WIDTH_CENTER)) - (gBg2PD * DISPLAY_HEIGHT_CENTER);

    if (gBg2XMag != 0x100)
    {
        gBg2Alpha += 8;
        gBg2XMag -= 0x10;
        gBg2YMag -= 0x10;
        gUnk_03004C20.sceneFrameCounter = 0;
    }
    else if ((gUnk_03004C20.sceneFrameCounter == (10 * 60)) || (gNewKeys & (START_BUTTON | B_BUTTON | A_BUTTON)))
    {
        gMosaicSize = 0;
        gUnk_03003410.unk7 = 1;
        gUnk_03004C20.world = 6;
        gUnk_03004C20.level = 3;
        gCallbackQueue.current[1] = sub_080245E8;
    }
}

// 3904
void sub_08003904(void)
{
    u32 tileColOffset;
    u32 var_r2;
    u32 collectedItems;
    u32 item;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;

    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    for (var_r2 = 0; var_r2 < 0x2D; var_r2++)
    {
        gEntityAnimationInfo[var_r2].state = -1;
        gEntityAnimationInfo[var_r2].timer = -1;
    }

    if (gUnk_03003410.unk8 == 0)
    {
        gUnk_03004C20.level = 0;
    }
    gUnk_030051DC = gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level];

    gObjPalRamPtr = OBJ_PLTT;
    gObjVramPtr = OBJ_VRAM0;

    sub_08003D80();
    sub_08003DC0(0, 0, gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 0, 0, gEntityInfo[0].unkC_2, 0, 0x6E);
    sub_08003DC0(1, 1, 0, 0, 0, 0, 0, 0x1C, 0x34);
    sub_08003DC0(2, 2, 0, 0, 0, 0, 0, 0x1C, 0x34);
    sub_08003DC0(3, 3, 0, 0, 0, 0, 0, 0x1C, 0x34);
    sub_08003DC0(4, 4, 0, 0, 0, 0, 0, 0x1C, 0x34);
    sub_08003DC0(5, 5, 0, 0, 0, 0, 0, 0x1C, 0x34);
    sub_08003DC0(6, 6, 0, 0, 0, 0, 0, 0x1C, 0x34);
    sub_08003DC0(7, 7, 0, 0, 0, 0, 0, 0x1C, 0x34);
    sub_08003DC0(8, 8, 0, 0, 0, 0, 0, 0x1C, 0x34);
    sub_08003DC0(9, 9, 0, 0, 0, 0, 0, 0, 0);
    sub_08003DC0(0xA, 0xA, 0, 0, 0, 0, 0, 0, 0);
    sub_08003DC0(0xB, 0xB, 0xFFE0, 0x3C, 0, 0, 0, 0, 0);
    sub_08003DC0(0xC, 0xC, 0xFFE0, 0x74, 0, 0, 0, 0, 0);
    sub_08039920();

    if (gUnk_03003410.unk8 == 1)
    {
        if (gUnk_03004C20.level != 0)
        {
            sub_08025F94();
            sub_08025DD4();
            if ((gUnk_03004C20.level != 8) && (gUnk_03004C20.world != 0x6 || gUnk_03004C20.level != 0x3))
            {
                sub_08025E68();
            }
        }
        else
        {
            sub_08026090();
        }

        tileColOffset = -1;

        // draw collected stars
        collectedItems = gUnk_03005220.stars;
        for (item = 0; item < 3; item++)
        {
            if (collectedItems & 1)
            {
                tileColOffset += 1;
                collectedItems &= ~1;
            }
            else if (collectedItems & 2)
            {
                tileColOffset += 1;
                collectedItems &= ~2;
            }
            else if (collectedItems & 4)
            {
                tileColOffset += 1;
                collectedItems &= ~4;
            }
            else
            {
                break;
            }

            gBgTilemapBufs[0][(tileColOffset * 2) + 0x24D] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x28C];
            gBgTilemapBufs[0][(tileColOffset * 2) + 0x24E] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x28D];
            gBgTilemapBufs[0][(tileColOffset * 2) + 0x26D] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x2AC];
            gBgTilemapBufs[0][(tileColOffset * 2) + 0x26E] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x2AD];
        }

        // draw collected keys
        collectedItems = gUnk_03005220.keys;
        for (item = 0; item < 3; item++)
        {
            if (collectedItems & 1)
            {
                tileColOffset = 0;
                collectedItems &= ~1;
            }
            else if (collectedItems & 2)
            {
                tileColOffset = 2;
                collectedItems &= ~2;
            }
            else if (collectedItems & 4)
            {
                tileColOffset = 4;
                collectedItems &= ~4;
            }
            else
            {
                break;
            }

            gBgTilemapBufs[0][tileColOffset + 0x247] = gBgTilemapBufs[0][tileColOffset + 0x286];
            gBgTilemapBufs[0][tileColOffset + 0x248] = gBgTilemapBufs[0][tileColOffset + 0x287];
            gBgTilemapBufs[0][tileColOffset + 0x267] = gBgTilemapBufs[0][tileColOffset + 0x2A6];
            gBgTilemapBufs[0][tileColOffset + 0x268] = gBgTilemapBufs[0][tileColOffset + 0x2A7];
        }
    }

    gUnk_08116620[gUnk_03004C20.world - 1][gUnk_03004C20.level]();

    // Redundant if-else statement required to match
    if (gUnk_03004C20.level)
    {
        gUnk_030007C4 = 0xD;
    }
    else
    {
        gUnk_030007C4 = 0xD;
    }
    gUnk_0300363C = gUnk_030007C4 - 9;

    if (gUnk_03004C20.level == 0)
    {
        sub_0804575C();
    }
    else
    {
        sub_0800B3C0();
    }

    if ((gUnk_03004C20.unkA == 0) || (gUnk_03004C20.level == 8))
    {
        gUnk_03005418 = &gUnk_0805553C;
    }
    else
    {
        gUnk_03005418 = &gUnk_080555A8;
    }
    gUnk_03005294 = gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level];

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
}
