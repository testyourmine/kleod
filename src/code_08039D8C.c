#include "global.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "code_0800BFF4.h"
#include "code_080240F4.h"
#include "decompress.h"
#include "heap.h"
#include "interrupts.h"
#include "main.h"
#include "math.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

extern u8 thunk_GetRandomValue();                          /* extern */
struct Unk_08014184 {
    u16 unk0;
    u8 unk2;
    u8 pad3[0x4 - 0x3];
};
extern struct Unk_08014184 *sub_08014230(struct Unk_08014184 *arg0, u16 arg1, u16 arg2, u8 arg3);
extern void sub_08014624(s32 arg0);
extern void sub_0801E664(u16, u16, u8, u8);
extern void sub_0803A410(void);
extern void sub_0803A8B8(void);
extern void sub_0803AAA0(void);
extern void sub_0803B378(void);
extern void sub_0803BF84(void);
extern void sub_0803D90C(u8);                              /* extern */
extern void sub_0803E904(u8);                              /* extern */
extern void sub_0803F68C(u8, u8, u8);
extern void sub_0803F9EC(u8);                              /* extern */
extern void sub_08040F1C(u8);                              /* extern */
extern void sub_08042024(u8);                              /* extern */
extern void sub_08042E64(u8);                              /* extern */
extern void sub_080452E8();                                /* extern */
extern void sub_08046DB8(s32, s32);

extern const u8 gUnk_08051BD4[6][9][3]; // BG bpp (0 = 16 color mode, 1 = 256 color mode)

struct Unk_080E2B64_0 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 pad7[0x8 - 0x7];
};
struct Unk_080E2B64 {
    struct Unk_080E2B64_0 unk0[5];
    u8 unk28;
    u8 unk29;
    u8 pad2A[0x2C - 0x2A];
};
extern struct Unk_080E2B64 gUnk_080E2B64[6][8][0x64];

extern const u8 gUnk_08116A02[][5];
extern const u8 gUnk_081166F8[][4];
extern const u8 gUnk_08116708[][4];
extern const u16 gUnk_08116728[][2];
extern const u8 gUnk_08116748[][8];
extern const void gUnk_08116780;
extern const u8 gUnk_08116880[];
extern const s8 gUnk_08116888[][2];
extern const u8 gUnk_081168DC[];
extern const u8 gUnk_081168E2[];
extern struct Unk_0803D4AC gUnk_081168E8[];
extern u8 gUnk_08116A46[][2];
extern u16 gUnk_08116A4E[][4];
extern const u8 gUnk_0811710A[];
extern u16 gUnk_08117110[];

extern const void *gUnk_0818B9F8[];

extern u8 gUnk_08078628[0x20];
extern u8 gUnk_08078728[0x20];
extern u8 gUnk_08078768[0x20];

extern u8 gUnk_08064868[0x200];
extern u8 gUnk_080B9468[0x200];

extern void gUnk_080D8C30;

extern u8 gUnk_080789C8[0x20];
// TODO: is AA7 part of AA4?
extern const u8 gUnk_08116AA4[];
extern const u8 gUnk_08116AA7[];

extern const u8 gUnk_08116A86[][6];

extern const u8 gUnk_08116A6E[][6];

extern const void gUnk_08078508;
extern struct Unk_0300466C *gUnk_0818B8E0[6][9];
extern const u8 gUnk_081169F9[][3];

extern u32 gUnk_082EAF8C;
extern u32 gUnk_082EB488;
extern u32 gUnk_082EB5B8;
extern u32 gUnk_082EBB20;
extern u32 gUnk_082EBC68;
extern u32 gUnk_082EC1A4;
extern u32 gUnk_082EC2E4;
extern u32 gUnk_082EC7C8;
extern s32 gUnk_082EC8F4;
extern s32 gUnk_082ECD74;

extern void gUnk_083128F8;
extern s32 gUnk_08312A58;
extern s32 gUnk_08312B70;
extern s32 gUnk_08312BD8;
extern s32 gUnk_08313C34;
extern s32 gUnk_08313F24;
extern s32 gUnk_083141F0;
extern s32 gUnk_083142EC;
extern s32 gUnk_083155C4;

void sub_08039D8C(void)
{
    s32 var_r4;
    s32 var_r4_2; // TODO: can be merged with var_r4
    s32 var_r5;
    s32 var_sl;

    if (gUnk_030034BC == 0)
    {
        var_sl = gUnk_03000800;
    }
    else
    {
        var_sl = 0;
    }

    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    if (gUnk_03003410.unk4 != 0)
    {
        if (gUnk_03004C20.level == 8)
        {
            gUnk_030034C0 = 3;
        }
        else if (gUnk_03004C20.level == 0)
        {
            gUnk_030034C0 = 1;
        }
        else if (gUnk_03004C20.world == 6)
        {
            gUnk_030034C0 = 2;
        }
        else
        {
            gUnk_030034C0 = 0;
        }
    }

    if (gUnk_030034C0 == 3)
    {
        gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EAF8C & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082EB488 & 0x7FFFFFFF, 0);
        Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EAF8C);
        Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082EB488);
    }
    else if (gUnk_030034C0 == 0)
    {
        gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EB5B8 & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082EBB20 & 0x7FFFFFFF, 0);
        Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EB5B8);
        Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082EBB20);
    }
    else if (gUnk_030034C0 == 2)
    {
        gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EBC68 & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082EC1A4 & 0x7FFFFFFF, 0);
        Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EBC68);
        Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082EC1A4);
    }
    else
    {
        gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EC2E4 & 0x7FFFFFFF, 0);
        gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082EC7C8 & 0x7FFFFFFF, 0);
        Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EC2E4);
        Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082EC7C8);
    }

    REG_DISPSTAT &= 0xFF;

    for (var_r4 = 0, var_r5 = 0; var_r4 <= 0x21B; var_r5++, var_r4++)
    {
        if (((var_r4 % 30) == 0) && (var_r4 != 0))
        {
            var_r5 += 2;
        }
        gBgTilemapBufs[gUnk_030034BC][var_r5] = gBgDataPtrs.pBufBg3Tilemap[var_r4 + 2] + var_sl;
    }

    DmaCopy16(3, &gBgTilemapBufs[gUnk_030034BC], gBgInfo[gUnk_030034BC].pTilemap, 0x800);

    REG_DISPCNT &= ~0x4000;

    if (gUnk_03003410.unk4 != 0)
    {
        gUnk_030051F0.unkE = gBlendValue;
        gUnk_030051F0.unk4 = REG_BLDCNT;
        gUnk_030051F0.unk6 = REG_BG0CNT;
        gUnk_030051F0.unk8 = REG_BG1CNT;
        gUnk_030051F0.unkA = REG_BG2CNT;
        gUnk_030051F0.unkC = REG_BG3CNT;
        gUnk_030051F0.unk0 = gUnk_03004C20.sceneFrameCounter;

        for (var_r4_2 = 0; var_r4_2 < gUnk_03005428; var_r4_2++)
        {
            gEntityInfo[var_r4_2].priority += 1;
        }
        gBgInfo[gUnk_030034BC].hOfs = 0;
    }

    gBlendValue = 9;
    gUnk_03004658[0xC] = 0;
    gCallbackQueue.next[0] = InputHandler_Normal;
    gCallbackQueue.next[1] = sub_0803A410;
    gCallbackQueue.next[3] = NULL + 1;
    if (gUnk_03004C20.level == 8)
    {
        gCallbackQueue.next[2] = sub_0800C108;
    }
    else if (gUnk_03004C20.level == 0)
    {
        gCallbackQueue.next[2] = sub_0800C45C;
    }
    else
    {
        gCallbackQueue.next[2] = sub_0800BFF4;
    }
    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    gCallbackQueue.nextCount = 4;

    if (gUnk_030034C0 == 1)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg3Tiles + 4, (void*)0x06000000 + (var_sl * 0x20), 0xB60);
    }
    else if (gUnk_030034C0 == 2)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg3Tiles + 4, gBgInfo[gUnk_030034BC].pTiles + (var_sl * 0x20), 0xC60);
    }
    else
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg3Tiles + 4, gBgInfo[gUnk_030034BC].pTiles + (var_sl * 0x20), 0xCE0);
    }

    REG_IE |= 1;
    REG_DISPSTAT |= 8;
    m4aSoundVSyncOn();
    m4aSongNumStart(0x55);

    if (gUnk_03004C20.level == 8)
    {
        sub_0800C108();
    }
    else if (gUnk_03004C20.level == 0)
    {
        sub_0800C45C();
    }
    else
    {
        sub_0800BFF4();
    }

    if (gUnk_03003410.unk4 != 0)
    {
        if (gUnk_030034BC == 0)
        {
            REG_BG0CNT &= ~3;
            REG_BG0CNT = REG_BG0CNT;
            REG_BG1CNT += 1;
            REG_BG2CNT += 1;
            REG_BG3CNT += 1;
            REG_BLDCNT = 0xD6;
        }
        else
        {
            REG_BG1CNT &= ~3;
            REG_BG1CNT = REG_BG1CNT;
            REG_BLDCNT = 0xD5;
        }
    }
}

void sub_0803A22C(void)
{
    s32 var_r4;

    for (var_r4 = 0; var_r4 < gUnk_03005428; var_r4++)
    {
        gEntityInfo[var_r4].priority -= 1;
    }

    sub_08005CF4();

    VBlankIntrWait();
    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    thunk_HeapFree(gBgDataPtrs.pBufBg3Tilemap);
    thunk_HeapFree(gBgDataPtrs.pBufBg3Tiles);
    if (gUnk_030034BC == 0)
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tiles, gBgInfo[0].pTiles, gBgInfo->unk18 * gBgInfo->unk16);
        DmaCopy16(3, gBgDataPtrs.pBufBg0Tilemap, &gBgTilemapBufs[0], 0x480);
    }
    else
    {
        DmaCopy16(3, gBgDataPtrs.pBufBg1Tiles, gBgInfo[1].pTiles, gBgInfo[1].unk18 * gBgInfo[1].unk16);
        DmaCopy16(3, gBgDataPtrs.pBufBg1Tilemap, &gBgTilemapBufs[1], 0x480);
    }

    gBlendValue = gUnk_030051F0.unkE;
    REG_BLDCNT = gUnk_030051F0.unk4;
    REG_BG0CNT = gUnk_030051F0.unk6;
    REG_BG1CNT = gUnk_030051F0.unk8;
    REG_BG2CNT = gUnk_030051F0.unkA;
    REG_BG3CNT = gUnk_030051F0.unkC;
    gUnk_03004C20.sceneFrameCounter = gUnk_030051F0.unk0;

    if ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3)))
    {
        REG_WIN1H = 0xA0F0;
        REG_WIN1V = 0x10;
        REG_WININ = 0x2121;
        REG_WINOUT = 0x3F;
        REG_DISPCNT = 0x7741;
        sub_08026128();
    }

    DmaCopy16(3, &gBgTilemapBufs[gUnk_030034BC], gBgInfo[gUnk_030034BC].pTilemap, 0x800);

    if (gUnk_03004C20.unk10 == 1)
    {
        sub_08026128();
    }

    REG_IE |= 1;
    REG_DISPSTAT |= 8;
}

void sub_0803A410(void)
{
    u8 sp4;
    u32 var_r1;
    u8 var_r4;
    u8 var_r5;

    sp4 = (gNewKeys & (START_BUTTON | B_BUTTON)) != 0;
    if (gNewKeys & A_BUTTON)
    {
        sp4 = gUnk_03004658[0xC] + 1;
    }

    if (gNewKeys & (DPAD_DOWN | DPAD_UP))
    {
        for (var_r5 = 0; var_r5 < 2; var_r5++)
        {
            DmaFill16(3, 0, &gBgTilemapBufs[gUnk_030034BC][((var_r5 + (gUnk_03004658[0xC] * 3)) << 5) + 0xA5], 0x4);
            DmaFill16(3, 0, &gBgTilemapBufs[gUnk_030034BC][((var_r5 + (gUnk_03004658[0xC] * 3)) << 5) + 0xB7], 0x4);
        }

        if ((gUnk_030034C0 == 0) || (gUnk_030034C0 == 2))
        {
            if (gNewKeys & DPAD_DOWN)
            {
                m4aSongNumStart(0x51);
                gUnk_03004658[0xC] += 1;
                if (gUnk_03004658[0xC] > 3)
                {
                    gUnk_03004658[0xC] = 0;
                }
            }

            if (gNewKeys & DPAD_UP)
            {
                m4aSongNumStart(0x51);
                gUnk_03004658[0xC] -= 1;
                if (gUnk_03004658[0xC] & 0x80)
                {
                    gUnk_03004658[0xC] = 3;
                }
            }
        }
        else
        {
            if (gNewKeys & DPAD_DOWN)
            {
                m4aSongNumStart(0x51);
                gUnk_03004658[0xC] += 1;
                if (gUnk_03004658[0xC] > 2)
                {
                    gUnk_03004658[0xC] = 0;
                }
            }

            if (gNewKeys & DPAD_UP)
            {
                m4aSongNumStart(0x51);
                gUnk_03004658[0xC] -= 1;
                if (gUnk_03004658[0xC] & 0x80)
                {
                    gUnk_03004658[0xC] = 2;
                }
            }
        }

        for (var_r5 = 0; var_r5 < 2; var_r5++)
        {
            for (var_r4 = 0; var_r4 < 2; var_r4++)
            {
                if (gUnk_030034BC == 0)
                {
                    gBgTilemapBufs[gUnk_030034BC][((var_r5 + (gUnk_03004658[0xC] * 3)) << 5) + 0xA5 + var_r4] = gBgDataPtrs.pBufBg3Tilemap[(var_r5 * 0x1E) + 0x9D + var_r4] + gUnk_03000800;
                    gBgTilemapBufs[gUnk_030034BC][((var_r5 + (gUnk_03004658[0xC] * 3)) << 5) + 0xB7 + var_r4] = gBgDataPtrs.pBufBg3Tilemap[(var_r5 * 0x1E) + 0xAF + var_r4] + gUnk_03000800;
                }
                else
                {
                    gBgTilemapBufs[gUnk_030034BC][((var_r5 + (gUnk_03004658[0xC] * 3)) << 5) + 0xA5 + var_r4] = gBgDataPtrs.pBufBg3Tilemap[(var_r5 * 0x1E) + 0x9D + var_r4];
                    gBgTilemapBufs[gUnk_030034BC][((var_r5 + (gUnk_03004658[0xC] * 3)) << 5) + 0xB7 + var_r4] = gBgDataPtrs.pBufBg3Tilemap[(var_r5 * 0x1E) + 0xAF + var_r4];
                }
            }
        }
    }

    if (sp4 > 0)
    {
        sp4 = gUnk_081166F8[gUnk_030034C0][sp4 - 1];
    }

    switch (sp4 - 1)
    {
        case 0:
            gCallbackQueue.next[0] = InputHandler_Normal;
            for (var_r1 = 0; var_r1 < 10; var_r1++)
            {
                gCallbackQueue.next[var_r1] = gCallbackQueue.previous[var_r1];
            }
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = gCallbackQueue.previousCount;

            sub_0803A22C();
            m4aSoundVSyncOn();
            m4aMPlayAllContinue();
            break;

        case 1:
            sub_0803A22C();
            gCallbackQueue.current[1] = sub_0802502C;
            gUnk_03005220.unk4 = gUnk_03005284->unk18;
            gUnk_03005220.lives = gUnk_03005284->unk0;
            gUnk_03005220.hearts = gUnk_03005284->unk8_0;
            REG_BLDCNT = 0;
            gBlendValue = 0;
            break;

        case 2:
            gUnk_03005284->unk0 = gUnk_03005220.lives = gUnk_03005284->unk1E;
            sub_0803A22C();
            gBlendValue = 0;
            if (gUnk_03004C20.world == 6 && gUnk_03004C20.level == 8)
            {
                gUnk_03004C20.world = 5;
            }
            gUnk_030034B0.unk6_4 = gUnk_03004C20.level;
            gUnk_03004C20.level = 0;
            gCallbackQueue.current[1] = sub_08024C34;
            break;

        case 3:
            gCallbackQueue.current[1] = sub_0803A8B8;
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tilemap);
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tiles);
            break;

        case 4:
            if (gUnk_03004C20.level != 0)
            {
                gUnk_03005284->unk0 = gUnk_03005220.lives = gUnk_03005284->unk1E;
            }
            sub_0803A22C();
            REG_BLDCNT = 0;
            gBlendValue = 0;
            sub_080008DC();
            gCallbackQueue.current[1] = sub_08025818;
            break;

        case 5:
            gBlendValue = 0;
            gUnk_03004C20.level = 9;
            gUnk_03004D9C = 0;
            sub_0800A468();
            gCallbackQueue.current[1] = sub_08025900;
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tilemap);
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tiles);
            break;
    }
}

void sub_0803A8B8(void)
{
    s32 var_r5;
    s32 var_r6;
    s32 var_r7;

    if (gUnk_030034BC == 0)
    {
        var_r7 = gUnk_03000800;
    }
    else
    {
        var_r7 = 0;
    }

    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    m4aSoundVSyncOff();

    gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082EC8F4 & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(gUnk_082ECD74 & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082EC8F4);
    Decompress(gBgDataPtrs.pBufBg3Tilemap, &gUnk_082ECD74);

    for (var_r5 = 0, var_r6 = 0; var_r5 < 0x21C; var_r6++, var_r5++)
    {
        if (((var_r5 % 30) == 0) && (var_r5 != 0))
        {
            var_r6 += 2;
        }
        gBgTilemapBufs[gUnk_030034BC][var_r6] = gBgDataPtrs.pBufBg3Tilemap[var_r5 + 2] + var_r7;
    }

    REG_WIN1H = 0xF0;
    REG_WIN1V = 0x1E90;

    if (gUnk_030034BC == 0)
    {
        REG_WININ = 0x3621;
    }
    else
    {
        REG_WININ = 0x3521;
    }

    if (gUnk_03004C20.level == 8)
    {
        gCallbackQueue.next[2] = sub_0800C108;
    }
    else
    {
        gCallbackQueue.next[2] = sub_0800BFF4;
    }
    gCallbackQueue.next[0] = InputHandler_Normal;
    gCallbackQueue.next[1] = sub_0803AAA0;
    gCallbackQueue.next[3] = NULL + 1;
    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    gCallbackQueue.nextCount = 4;

    DmaCopy16(3, gBgDataPtrs.pBufBg3Tiles + 4, gBgInfo[gUnk_030034BC].pTiles + (var_r7 << 5), 0xB80);

    REG_DISPCNT |= 0x4000;
    REG_IE |= 1;
    REG_DISPSTAT |= 8;
    m4aSoundVSyncOn();

    gUnk_03004C20.sceneFrameCounter = 0;
}

void sub_0803AAA0(void)
{
    gUnk_03004C20.sceneFrameCounter += 5;
    if (gUnk_03004C20.sceneFrameCounter > 96)
    {
        if (gUnk_03004C20.sceneFrameCounter < 200)
        {
            gUnk_03004C20.sceneFrameCounter = 96;
            if (gNewKeys & DPAD_RIGHT)
            {
                gUnk_03005284->unk1C = 1;
                m4aSongNumStart(0x51);
                gUnk_03004C20.sceneFrameCounter = 0;
            }
            else if (gNewKeys & DPAD_LEFT)
            {
                gUnk_03005284->unk1C = 2;
                m4aSongNumStart(0x51);
                gUnk_03004C20.sceneFrameCounter = 0;
            }
    
            if (gNewKeys & (B_BUTTON | A_BUTTON))
            {
                if (gNewKeys & A_BUTTON)
                {
                    m4aSongNumStart(0x52);
                }
                else
                {
                    m4aSongNumStart(0x54);
                }

                gUnk_03004C20.sceneFrameCounter = 200;
                if ((gNewKeys & A_BUTTON) && (gUnk_03005284->unk1C == gUnk_03005284->unk1D))
                {
                    gUnk_03005284->unk1D = 3 ^ gUnk_03005284->unk1D;
                }
                else
                {
                    gUnk_03005284->unk1C = 3 - gUnk_03005284->unk1D;
                }
            }
        }
        else if (gUnk_03004C20.sceneFrameCounter > 350)
        {
            gUnk_03003410.unk4 = 0;
    
            if (gUnk_03004C20.level == 8)
            {
                gCallbackQueue.next[2] = sub_0800C108;
            }
            else
            {
                gCallbackQueue.next[2] = sub_0800BFF4;
            }
            gCallbackQueue.next[0] = InputHandler_Normal;
            gCallbackQueue.next[1] = sub_08039D8C;
            gCallbackQueue.next[3] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 4;
    
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tilemap);
            thunk_HeapFree(gBgDataPtrs.pBufBg3Tiles);
        }
    }

    if (gUnk_03004C20.sceneFrameCounter < 200)
    {
        if (gUnk_03005284->unk1C == 1)
        {
            REG_WIN1H = 0xE0 - gUnk_03004C20.sceneFrameCounter;
        }
        else
        {
            REG_WIN1H = ((gUnk_03004C20.sceneFrameCounter + 0x18) << 8) | 0xE0;
        }
    }
}

u8 sub_0803AC18(u8 arg0)
{
    u32 var_r0;
    u32 var_r2;
    u8 var_sl;
    u8 var_ip;
    u8 var_r6;
    u8 var_r8;

    if (arg0 < 4)
    {
        if (((gUnk_03004670->unk8[arg0][7] & 0x80) != 0) && ((gUnk_03004670->unk8[arg0 + 1][0] & 0x7F) != 0x7F))
        {
            return 1;
        }
    }
    else if ((gUnk_03004670->unk8[5][7] & 0x80) != 0)
    {
        var_r8 = 0;
        var_ip = 0;
        var_r6 = 0;
        var_sl = 0;
        for (var_r0 = 0; var_r0 < 5; var_r0++)
        {
            for (var_r2 = 0; var_r2 < 7; var_r2++)
            {
                if ((var_r2 == 3 || var_r2 == 5) && (gUnk_03004670->unk8[var_r0][var_r2] & 0x7F) == 0x64)
                {
                    var_r8 += 1;
                }
                else if ((var_r2 != 7) && ((gUnk_03004670->unk8[var_r0][var_r2] & 0x7F) == 0x1E))
                {
                    var_ip += 1;
                }
                if (gUnk_03004670->unk8[var_r0][var_r2] & 0x80)
                {
                    var_r6 += 1;
                }
            }
        }

        if ((gUnk_03004670->unk8[5][0] & 0x7F) == 0x1E)
        {
            var_sl += 1;
        }
        if ((gUnk_03004670->unk8[5][1] & 0x7F) == 0x1E)
        {
            var_sl += 1;
        }
    
        if ((arg0 == 4) && ((gUnk_03004670->unk8[5][0] & 0x7F) != 0x7F) && (var_r6 == 0x23))
        {
            return 1;
        }
        if ((arg0 == 5) && ((gUnk_03004670->unk8[5][1] & 0x7F) != 0x7F) && ((var_ip + var_r8) > 0x18))
        {
            return 1;
        }
        if ((arg0 == 6) && ((gUnk_03004670->unk8[5][2] & 0x7F) != 0x7F) && ((var_ip + var_r8 + var_sl) == 0x25))
        {
            return 1;
        }
    }

    return 0;
}

void sub_0803AD94(u8 arg0)
{
    u8 var_r0;
    u8 var_r3;

    arg0 += 1;
    if (arg0 < 5)
    {
        // Variables must be declared in this scope to match
        u16 *var_r4 = &gBgTilemapBufs[1][gUnk_08116708[arg0][2] + (gUnk_08116708[arg0][3] << 5)];
        u16 *var_r2 = &gBgTilemapBufs[1][arg0 * 0x5 + 0x280];
        for (var_r0 = 0; var_r0 < 4; var_r0++)
        {
            for (var_r3 = 0; var_r3 < 5; var_r3++)
            {
                var_r4[var_r3] = var_r2[var_r3];
            }
            var_r4 += 0x20;
            var_r2 += 0x20;
        }
    }
    else
    {
        gBgTilemapBufs[1][gUnk_08116708[arg0][2] + ((gUnk_08116708[arg0][3] + 0) << 5) + 0] = gBgTilemapBufs[1][((arg0 - 5) * 2) + 0x340];
        gBgTilemapBufs[1][gUnk_08116708[arg0][2] + ((gUnk_08116708[arg0][3] + 0) << 5) + 1] = gBgTilemapBufs[1][((arg0 - 5) * 2) + 0x341];
        gBgTilemapBufs[1][gUnk_08116708[arg0][2] + ((gUnk_08116708[arg0][3] + 1) << 5) + 0] = gBgTilemapBufs[1][((arg0 - 5) * 2) + 0x360];
        gBgTilemapBufs[1][gUnk_08116708[arg0][2] + ((gUnk_08116708[arg0][3] + 1) << 5) + 1] = gBgTilemapBufs[1][((arg0 - 5) * 2) + 0x361];
    }
}

void sub_0803AE88(u8 arg0, u8 arg1)
{
    u16 temp_sl;
    u8 var_r0;
    u8 var_r3;
    u16 *var_r5; // Must be declared last to match

    arg0 += 1;
    var_r5 = &gBgTilemapBufs[1][gUnk_08116708[arg0][2] + (gUnk_08116708[arg0][3] << 5)];
    temp_sl = var_r5[0x20];
    for (var_r0 = 0; var_r0 < 4; var_r0++)
    {
        for (var_r3 = 0; var_r3 < 5; var_r3++)
        {
            var_r5[var_r3] = (var_r5[var_r3] & 0xFFF) | (arg1 << 0xC);
        }
        var_r5 += 0x20;
    }

    if (arg0 == 4)
    {
        gBgTilemapBufs[1][gUnk_08116708[4][2] + (gUnk_08116708[4][3] << 5) + 0x20] = temp_sl;
    }
}

void sub_0803AF38(u8 arg0)
{
    vu32 a; // Required to match
    if (arg0 < 4)
    {
        gBgTilemapBufs[1][gUnk_08116748[arg0][0] + (gUnk_08116748[arg0][1] << 5)] = gBgTilemapBufs[1][((gUnk_08116880[arg0] + 0x1C) * 0x20) + 0];
        gBgTilemapBufs[1][gUnk_08116748[arg0][2] + (gUnk_08116748[arg0][3] << 5)] = gBgTilemapBufs[1][((gUnk_08116880[arg0] + 0x1C) * 0x20) + 1];
        gBgTilemapBufs[1][gUnk_08116748[arg0][4] + (gUnk_08116748[arg0][5] << 5)] = gBgTilemapBufs[1][((gUnk_08116880[arg0] + 0x1C) * 0x20) + 2];
        gBgTilemapBufs[1][gUnk_08116748[arg0][6] + (gUnk_08116748[arg0][7] << 5)] = gBgTilemapBufs[1][((gUnk_08116880[arg0] + 0x1C) * 0x20) + 3];
    }
    else
    {
        gBgTilemapBufs[1][gUnk_08116748[arg0][0] + (gUnk_08116748[arg0][1] << 5)] = gBgTilemapBufs[1][((gUnk_08116880[arg0] + 0x1C) * 0x20) + 4];
        gBgTilemapBufs[1][gUnk_08116748[arg0][2] + (gUnk_08116748[arg0][3] << 5)] = gBgTilemapBufs[1][((gUnk_08116880[arg0] + 0x1C) * 0x20) + 5];
        gBgTilemapBufs[1][gUnk_08116748[arg0][4] + (gUnk_08116748[arg0][5] << 5)] = gBgTilemapBufs[1][((gUnk_08116880[arg0] + 0x1C) * 0x20) + 6];
        gBgTilemapBufs[1][gUnk_08116748[arg0][6] + (gUnk_08116748[arg0][7] << 5)] = gBgTilemapBufs[1][((gUnk_08116880[arg0] + 0x1C) * 0x20) + 7];
    }
}

void sub_0803B074(void)
{
    u8 var_r4;

    for (var_r4 = 0; var_r4 < 7; var_r4++)
    {
        if (sub_0803AC18(var_r4) != 0)
        {
            sub_0803AD94(var_r4);
            sub_0803AF38(var_r4);
        }
    }
}

void sub_0803B0A0(void)
{
    u8 sp0;
    u8 var_ip;
    u8 var_r0;
    u8 var_r3;
    u8 var_r6;
    u8 var_r8;

    if ((gUnk_03004670->unk8[5][7] & 0x80) != 0)
    {
        var_ip = 0;
        var_r8 = 0;
        var_r6 = 0;
        sp0 = 0;
        for (var_r0 = 0; var_r0 < 5; var_r0++)
        {
            for (var_r3 = 0; var_r3 < 7; var_r3++)
            {
                if ((var_r3 == 3 || var_r3 == 5) && (gUnk_03004670->unk8[var_r0][var_r3] & 0x7F) == 0x64)
                {
                    var_ip += 1;
                }
                else if ((var_r3 != 7) && ((gUnk_03004670->unk8[var_r0][var_r3] & 0x7F) == 0x1E))
                {
                    var_r8 += 1;
                }
                if (gUnk_03004670->unk8[var_r0][var_r3] & 0x80)
                {
                    var_r6 += 1;
                }
            }
        }

        if ((gUnk_03004670->unk8[5][0] & 0x7F) == 0x1E)
        {
            sp0 += 1;
        }
        if ((gUnk_03004670->unk8[5][1] & 0x7F) == 0x1E)
        {
            sp0 += 1;
        }

        if (((gUnk_03004670->unk8[5][0] & 0x7F) == 0x7F) && (var_r6 == 0x23))
        {
            gUnk_03004C08.unk0_0 = 4;
            gUnk_03004C08.unk2 = 0;
            gUnk_03004670->unk8[5][0] = 0x80;
            gCallbackQueue.current[1] = sub_0803B378;
            return;
        }
        else if (((gUnk_03004670->unk8[5][1] & 0x7F) == 0x7F) && ((var_r8 + var_ip) > 0x18))
        {
            gUnk_03004C08.unk0_0 = 5;
            gUnk_03004C08.unk2 = 0;
            gUnk_03004670->unk8[5][1] = 0x80;
            gCallbackQueue.current[1] = sub_0803B378;
            return;
        }
        else if (((gUnk_03004670->unk8[5][2] & 0x7F) == 0x7F) && ((sp0 + var_ip + var_r8) == 0x25))
        {
            gUnk_03004C08.unk0_0 = 6;
            gUnk_03004C08.unk2 = 0;
            gUnk_03004670->unk8[5][2] = 0x80;
            gCallbackQueue.current[1] = sub_0803B378;
            return;
        }
        else
        {
            // gCallbackQueue.current[1] = sub_0803BF84;
        }
    }
    else
    {
        if (((gUnk_03004670->unk8[0][7] & 0x80) != 0) && ((gUnk_03004670->unk8[1][0] & 0x7F) == 0x7F))
        {
            gUnk_03004C08.unk0_0 = 0;
            gUnk_03004C08.unk2 = 0;
            gUnk_03004670->unk8[1][0] &= 0x80;
            gCallbackQueue.current[1] = sub_0803B378;
            return;
        }
        else if (((gUnk_03004670->unk8[1][7] & 0x80) != 0) && ((gUnk_03004670->unk8[2][0] & 0x7F) == 0x7F))
        {
            gUnk_03004C08.unk0_0 = 1;
            gUnk_03004C08.unk2 = 0;
            gUnk_03004670->unk8[2][0] &= 0x80;
            gCallbackQueue.current[1] = sub_0803B378;
            return;
        }
        else if (((gUnk_03004670->unk8[2][7] & 0x80) != 0) && ((gUnk_03004670->unk8[3][0] & 0x7F) == 0x7F))
        {
            gUnk_03004C08.unk0_0 = 2;
            gUnk_03004C08.unk2 = 0;
            gUnk_03004670->unk8[3][0] &= 0x80;
            gCallbackQueue.current[1] = sub_0803B378;
            return;
        }
        else if (((gUnk_03004670->unk8[3][7] & 0x80) != 0) && ((gUnk_03004670->unk8[4][0] & 0x7F) == 0x7F))
        {
            gUnk_03004C08.unk0_0 = 3;
            gUnk_03004C08.unk2 = 0;
            gUnk_03004670->unk8[4][0] &= 0x80;
            gCallbackQueue.current[1] = sub_0803B378;
            return;
        }
        else
        {
            // gCallbackQueue.current[1] = sub_0803BF84;
        }
    }
    gCallbackQueue.current[1] = sub_0803BF84;
}

void sub_0803B378(void)
{
    s32 var_r7;
    s32 temp_r6;

    if (gUnk_03004C08.unk0_0 < 4)
    {
        var_r7 = 0;
        temp_r6 = gUnk_08116880[gUnk_03004C08.unk0_0];
    }
    else
    {
        var_r7 = 4;
        temp_r6 = gUnk_08116880[gUnk_03004C08.unk0_0];
    }

    switch ((gUnk_03004C08.unk2 / 30) - 1)
    {
        case 0:
            if ((gUnk_03004C08.unk2 % 30) == 0)
            {
                m4aSongNumStart(0x89);
            }
            gBgTilemapBufs[1][gUnk_08116748[gUnk_03004C08.unk0_0][0] + (gUnk_08116748[gUnk_03004C08.unk0_0][1] << 5)] = gBgTilemapBufs[1][0 + var_r7 + ((temp_r6 + 0x1C) << 5)];
            break;

        case 1:
            if ((gUnk_03004C08.unk2 % 30) == 0)
            {
                m4aSongNumStart(0x89);
            }
            gBgTilemapBufs[1][gUnk_08116748[gUnk_03004C08.unk0_0][2] + (gUnk_08116748[gUnk_03004C08.unk0_0][3] << 5)] = gBgTilemapBufs[1][1 + var_r7 + ((temp_r6 + 0x1C) << 5)];
            break;

        case 2:
            if (gUnk_03004C08.unk0_0 == 6)
            {
                gUnk_03004C08.unk2 = 0x95;
            }
            else
            {
                if ((gUnk_03004C08.unk2 % 30) == 0)
                {
                    m4aSongNumStart(0x89);
                }
                gBgTilemapBufs[1][gUnk_08116748[gUnk_03004C08.unk0_0][4] + (gUnk_08116748[gUnk_03004C08.unk0_0][5] << 5)] = gBgTilemapBufs[1][2 + var_r7 + ((temp_r6 + 0x1C) << 5)];
            }
            break;

        case 3:
            if ((gUnk_03004C08.unk0_0 != 4) && (gUnk_03004C08.unk0_0 != 6))
            {
                if ((gUnk_03004C08.unk2 % 30) == 0)
                {
                    m4aSongNumStart(0x89);
                }
                gBgTilemapBufs[1][gUnk_08116748[gUnk_03004C08.unk0_0][6] + (gUnk_08116748[gUnk_03004C08.unk0_0][7] << 5)] = gBgTilemapBufs[1][3 + var_r7 + ((temp_r6 + 0x1C) << 5)];
            }
            break;

        case 4:
            if ((gUnk_03004C08.unk2 % 30) == 0)
            {
                m4aSongNumStart(0x8A);
            }
            /* fallthrough */
        case 5:
        case 6:
            if (gUnk_03004C08.unk0_0 < 4)
            {
                if ((gUnk_03004C20.sceneFrameCounter % 4) == 0)
                {
                    DmaCopy16(3, &gUnk_08116780 + ((thunk_GetRandomValue() % 8) * 0x20), (void*)0x05000160, 0x20);
                    sub_0803AE88(gUnk_03004C08.unk0_0, 0xB);
                }
            }
            else
            {
                sub_0803AD94(gUnk_03004C08.unk0_0);
            }
            break;

        case 7:
            sub_0803AD94(gUnk_03004C08.unk0_0);
            gCallbackQueue.current[1] = sub_0803B0A0;
            break;
    }

    gUnk_03004C08.unk2 += 1;
}

void sub_0803B600(void)
{
    s32 var_r4;
    s32 var_r5;
    s32 temp_r6;
    s32 temp_r8;

    if (gUnk_03004C20.world == 6)
    {
        gUnk_03004C08.unk0_4 = (gUnk_03004C20.world - 1) + (gUnk_03004C20.level - 1);
    }
    else
    {
        gUnk_03004C08.unk0_4 = gUnk_03004C20.world - 1;
    }
    gUnk_03004C08.unk1 = 0;

    temp_r6 = gUnk_03004C20.world;
    temp_r8 = gUnk_03004C20.level;
    sub_08003D58();
    DmaCopy32(3, gOamBuffer, (void *)0x07000000, 0x400);
    gUnk_03003410.unk8 = 0;
    gUnk_03004C20.world = 1;
    gUnk_03004C20.level = 1;
    gUnk_03004C20.unkA = 0;
    sub_08003904();
    gUnk_03004C20.world = temp_r6;
    gUnk_03004C20.level = temp_r8;

    gOamAffineBuffer[0].pa = 0x100;
    gOamAffineBuffer[0].pb = 0;
    gOamAffineBuffer[0].pc = 0;
    gOamAffineBuffer[0].pd = 0x100;

    gEntityInfo[0].unk10 = 1;
    for (var_r4 = 1; var_r4 < 0x13; var_r4++)
    {
        gEntityInfo[var_r4].unk10 = 0;
    }

    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    REG_IE &= ~2;
    REG_DISPSTAT &= ~0x10;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();
    REG_DISPCNT = 0;

    gBgInfo[0].pTiles = (void *)0x06000000;
    gBgInfo[1].pTiles = (void *)0x06004000;
    gBgInfo[2].pTiles = (void *)0x06008000;
    gBgInfo[3].pTiles = (void *)0x0600C000;
    gBgInfo[0].pTilemap = (void *)0x0600E000;
    gBgInfo[1].pTilemap = (void *)0x0600E800;
    gBgInfo[2].pTilemap = (void *)0x0600F000;
    gBgInfo[3].pTilemap = (void *)0x0600F800;
    DecompressDma(&gUnk_083128F8, (void *)0x05000000, 0x200);

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

    for (var_r4 = 0, var_r5 = 0; var_r4 < 0x258; var_r5++, var_r4++)
    {
        if (((var_r4 % 30) == 0) && (var_r4 != 0))
        {
            var_r5 += 2;
        }
        gBgTilemapBufs[0][var_r5] = gBgDataPtrs.pBufBg0Tilemap[var_r4];
    }

    for (var_r4 = 0; var_r4 < 0x400; var_r4++)
    {
        gBgTilemapBufs[1][var_r4] = gBgDataPtrs.pBufBg1Tilemap[var_r4];
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

    for (var_r4 = 0, var_r5 = 0; var_r4 <= 0x257; var_r5++, var_r4++)
    {
        if (((var_r4 % 30) == 0) && (var_r4 != 0))
        {
            var_r5 += 2;
        }
        gBgTilemapBufs[2][var_r5] = gBgDataPtrs.pBufBg0Tilemap[var_r4];
        gBgTilemapBufs[3][var_r5] = gBgDataPtrs.pBufBg1Tilemap[var_r4];
    }

    thunk_HeapFree(gBgDataPtrs.pBufBg1Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg1Tiles - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tiles - 4);

    REG_DISPCNT = 0x3F40;
    REG_BG0CNT = 0x1C41;
    REG_BG1CNT = 0x1D46;
    REG_BG2CNT = 0x1E48;
    REG_BG3CNT = 0x1F4F;

    REG_WININ = 0x3B;
    REG_WINOUT = 0x3B;

    REG_WIN0H = gUnk_08116728[gUnk_03004C08.unk0_4][0];
    REG_WIN0V = gUnk_08116728[gUnk_03004C08.unk0_4][1];

    gEntityInfo[0].xPosBg2 = gUnk_08116708[gUnk_03004C08.unk0_4][0];
    gEntityInfo[0].yPosBg2 = gUnk_08116708[gUnk_03004C08.unk0_4][1];

    gBgInfo[3].vOfs = 0;
    gBgInfo[3].hOfs = 0;
    gBgInfo[2].hOfs = 0;
    gBgInfo[1].vOfs = 0;
    gBgInfo[1].hOfs = 0;
    gBgInfo[0].hOfs = 0;
    gBgInfo[2].vOfs = 4;
    gBgInfo[0].vOfs = 0x400;

    if ((gUnk_03004670->unk1 == 0) && (gUnk_03004670->unk2 == 0) && (gUnk_03004670->unk3 == 0))
    {
        gUnk_03004670->unk1 = 0x63;
        gUnk_03004670->unk2 = 0x3B;
        gUnk_03004670->unk3 = 0x63;
    }
    if ((gUnk_03004670->unk4 == 0) && (gUnk_03004670->unk5 == 0) && (gUnk_03004670->unk6 == 0))
    {
        gUnk_03004670->unk4 = 0x63;
        gUnk_03004670->unk5 = 0x3B;
        gUnk_03004670->unk6 = 0x63;
    }

    if (gUnk_03004C08.unk0_4 == 5)
    {
        gBgTilemapBufs[0][0x4C] = 0xA00C;
        gBgTilemapBufs[0][0x4D] = 0xA00D;
        gBgTilemapBufs[0][0x4E] = 0xA00E;
        gBgTilemapBufs[0][0x4F] = 0xA00F;
        gBgTilemapBufs[0][0x50] = 0xA010;

        gBgTilemapBufs[0][0x6D] = ((gUnk_03004670->unk1 / 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x6E] = ((gUnk_03004670->unk1 % 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x6F] = 0xA00B;
        gBgTilemapBufs[0][0x70] = ((gUnk_03004670->unk2 / 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x71] = ((gUnk_03004670->unk2 % 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x72] = 0xA00B;
        gBgTilemapBufs[0][0x73] = ((gUnk_03004670->unk3 / 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x74] = ((gUnk_03004670->unk3 % 10) + 1) | 0xA000;

        gBgTilemapBufs[0][0x2C] = 0xA011;
        gBgTilemapBufs[0][0x30] = 0xA010;
        gBgTilemapBufs[0][0x31] = 0xA004;
        gBgTilemapBufs[0][0x32] = 0xA001;

        gBgTilemapBufs[0][0x2E] = (((gUnk_03004670->unk8[5][0] & 0x7F) / 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x2F] = (((gUnk_03004670->unk8[5][0] & 0x7F) % 10) + 1) | 0xA000;
    }
    else if (gUnk_03004C08.unk0_4 == 6)
    {
        gBgTilemapBufs[0][0x4C] = 0xA000;
        gBgTilemapBufs[0][0x4D] = 0xA000;
        gBgTilemapBufs[0][0x4E] = 0xA000;
        gBgTilemapBufs[0][0x4F] = 0xA000;
        gBgTilemapBufs[0][0x50] = 0xA000;

        gBgTilemapBufs[0][0x6D] = 0xA000;
        gBgTilemapBufs[0][0x6E] = 0xA000;
        gBgTilemapBufs[0][0x6F] = 0xA000;
        gBgTilemapBufs[0][0x70] = 0xA000;
        gBgTilemapBufs[0][0x71] = 0xA000;
        gBgTilemapBufs[0][0x72] = 0xA000;
        gBgTilemapBufs[0][0x73] = 0xA000;
        gBgTilemapBufs[0][0x74] = 0xA000;

        gBgTilemapBufs[0][0x2C] = 0xA011;
        gBgTilemapBufs[0][0x30] = 0xA010;
        gBgTilemapBufs[0][0x31] = 0xA004;
        gBgTilemapBufs[0][0x32] = 0xA001;

        gBgTilemapBufs[0][0x2E] = (((gUnk_03004670->unk8[5][1] & 0x7F) / 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x2F] = (((gUnk_03004670->unk8[5][1] & 0x7F) % 10) + 1) | 0xA000;
    }
    else if (gUnk_03004C08.unk0_4 == 7)
    {
        gBgTilemapBufs[0][0x4C] = 0xA00C;
        gBgTilemapBufs[0][0x4D] = 0xA00D;
        gBgTilemapBufs[0][0x4E] = 0xA00E;
        gBgTilemapBufs[0][0x4F] = 0xA00F;
        gBgTilemapBufs[0][0x50] = 0xA010;

        gBgTilemapBufs[0][0x6D] = ((gUnk_03004670->unk4 / 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x6E] = ((gUnk_03004670->unk4 % 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x6F] = 0xA00B;
        gBgTilemapBufs[0][0x70] = ((gUnk_03004670->unk5 / 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x71] = ((gUnk_03004670->unk5 % 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x72] = 0xA00B;
        gBgTilemapBufs[0][0x73] = ((gUnk_03004670->unk6 / 10) + 1) | 0xA000;
        gBgTilemapBufs[0][0x74] = ((gUnk_03004670->unk6 % 10) + 1) | 0xA000;

        gBgTilemapBufs[0][0x2C] = 0xA000;
        gBgTilemapBufs[0][0x30] = 0xA000;
        gBgTilemapBufs[0][0x31] = 0xA000;
        gBgTilemapBufs[0][0x32] = 0xA000;

        gBgTilemapBufs[0][0x2E] = 0xA000;
        gBgTilemapBufs[0][0x2F] = 0xA000;
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
    sub_08025B78(0, 0);
    sub_08025BA4();
    gIntrTable.vBlank = sub_08000BD4;
    gCallbackQueue.current[1] = sub_0803B0A0;
    sub_0803B074();
    gUnk_03005284->unk1 = gUnk_03004C20.world;
    sub_08046DB8(0, 7);
    sub_08046DB8(1, 0);

    REG_IE |= 1;
    REG_DISPSTAT |= 8;
    m4aSoundVSyncOn();
    m4aSongNumStart(3);
}

void sub_0803BF84(void)
{
    struct Unk_0800BEF0 sp0;
    u32 spC;
    u8 var_r4;

    if (gUnk_030034E4 == 1)
    {
        return;
    }

    if ((gBlendValue < 0x10) && ((gUnk_03004C20.sceneFrameCounter % 2) != 0))
    {
        gBlendValue += 1;
    }

    sub_08025BA4();

    if (gUnk_03004C08.unk1 == 0)
    {
        if (gUnk_03004C08.unk0_4 > 4)
        {
            if (gBgInfo->vOfs != 0)
            {
                gBgInfo->vOfs -= 0x80;
            }
        }
        else if (gBgInfo->vOfs < 0x400)
        {
            gBgInfo->vOfs += 0x80;
        }

        if (gNewKeys & (9 | 1))
        {
            gBlendValue = 0;
            gUnk_03004C20.world = gUnk_03004C08.unk0_4 + 1;
            gUnk_03004C20.level = 0;
            gUnk_030034B0.unk6_4 = 1;
            m4aSongNumStart(0x52);
            gUnk_03005284->unk1E = gUnk_03005284->unk0 = gUnk_03005220.lives;

            if (gUnk_03004C08.unk0_4 > 4)
            {
                gUnk_03004C20.room = 0;
                if (gUnk_03004C08.unk0_4 == 5)
                {
                    gUnk_03004C20.world = 6;
                    gUnk_03004C20.level = 1;
                }
                else if (gUnk_03004C08.unk0_4 == 6)
                {
                    gUnk_03004C20.world = 6;
                    gUnk_03004C20.level = 2;
                }
                else if (gUnk_03004C08.unk0_4 == 7)
                {
                    gUnk_03004C20.world = 6;
                    gUnk_03004C20.level = 3;
                }
                gCallbackQueue.current[1] = sub_08025634;
            }
            else
            {
                gUnk_03005284->unk4 = (gUnk_03004C20.world * 3) - 1;
                gUnk_03003410.unkC = 0;
                gCallbackQueue.current[1] = sub_0802528C;
            }
            return;
        }

        switch (gUnk_03004C08.unk0_4)
        {
            case 0:
                if ((gHeldKeys & (0x80 | 0x10)) && (sub_0803AC18(gUnk_03004C08.unk0_4) != 0))
                {
                    gUnk_03004C08.unk1 = 1;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 1);
                }

                if ((gHeldKeys & 0x40) && (sub_0803AC18(6) != 0))
                {
                    gUnk_03004C08.unk1 = 7;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 0x25);

                    gBgTilemapBufs[0][0x4C] = 0xA00C;
                    gBgTilemapBufs[0][0x4D] = 0xA00D;
                    gBgTilemapBufs[0][0x4E] = 0xA00E;
                    gBgTilemapBufs[0][0x4F] = 0xA00F;
                    gBgTilemapBufs[0][0x50] = 0xA010;

                    gBgTilemapBufs[0][0x6D] = ((gUnk_03004670->unk4 / 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x6E] = ((gUnk_03004670->unk4 % 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x6F] = 0xA00B;
                    gBgTilemapBufs[0][0x70] = ((gUnk_03004670->unk5 / 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x71] = ((gUnk_03004670->unk5 % 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x72] = 0xA00B;
                    gBgTilemapBufs[0][0x73] = ((gUnk_03004670->unk6 / 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x74] = ((gUnk_03004670->unk6 % 10) + 1) | 0xA000;

                    gBgTilemapBufs[0][0x2C] = 0xA000;
                    gBgTilemapBufs[0][0x30] = 0xA000;
                    gBgTilemapBufs[0][0x31] = 0xA000;
                    gBgTilemapBufs[0][0x32] = 0xA000;

                    gBgTilemapBufs[0][0x2E] = 0xA000;
                    gBgTilemapBufs[0][0x2F] = 0xA000;
                }
                break;

            case 1:
                if ((gHeldKeys & 0x40) && (sub_0803AC18(gUnk_03004C08.unk0_4) != 0))
                {
                    gUnk_03004C08.unk1 = 1;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 0x25);
                }

                if (gHeldKeys & 0x20)
                {
                    gUnk_03004C08.unk1 = 0xFF;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 1);
                }
                break;

            case 2:
                if ((gHeldKeys & 0x10) && (sub_0803AC18(gUnk_03004C08.unk0_4) != 0))
                {
                    gUnk_03004C08.unk1 = 1;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 1);
                }

                if (gHeldKeys & 0x80)
                {
                    gUnk_03004C08.unk1 = 0xFF;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 0x24);
                }
                break;

            case 3:
                if ((gHeldKeys & (0x80 | 0x10)) && (sub_0803AC18(gUnk_03004C08.unk0_4) != 0))
                {
                    gUnk_03004C08.unk1 = 1;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 1);
                }

                if (gHeldKeys & 0x20)
                {
                    gUnk_03004C08.unk1 = 0xFF;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 1);
                }
                break;

            case 4:
                if ((gHeldKeys & 0x40) && (sub_0803AC18(gUnk_03004C08.unk0_4 + 1) != 0))
                {
                    gUnk_03004C08.unk1 = 2;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 0x25);

                    gBgTilemapBufs[0][0x4C] = 0xA000;
                    gBgTilemapBufs[0][0x4D] = 0xA000;
                    gBgTilemapBufs[0][0x4E] = 0xA000;
                    gBgTilemapBufs[0][0x4F] = 0xA000;
                    gBgTilemapBufs[0][0x50] = 0xA000;

                    gBgTilemapBufs[0][0x6D] = 0xA000;
                    gBgTilemapBufs[0][0x6E] = 0xA000;
                    gBgTilemapBufs[0][0x6F] = 0xA000;
                    gBgTilemapBufs[0][0x70] = 0xA000;
                    gBgTilemapBufs[0][0x71] = 0xA000;
                    gBgTilemapBufs[0][0x72] = 0xA000;
                    gBgTilemapBufs[0][0x73] = 0xA000;
                    gBgTilemapBufs[0][0x74] = 0xA000;

                    gBgTilemapBufs[0][0x2C] = 0xA011;
                    gBgTilemapBufs[0][0x30] = 0xA010;
                    gBgTilemapBufs[0][0x31] = 0xA004;
                    gBgTilemapBufs[0][0x32] = 0xA001;

                    gBgTilemapBufs[0][0x2E] = (((gUnk_03004670->unk8[5][1] & 0x7F) / 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x2F] = (((gUnk_03004670->unk8[5][1] & 0x7F) % 10) + 1) | 0xA000;
                }

                if ((gHeldKeys & 0x80) && (sub_0803AC18(gUnk_03004C08.unk0_4) != 0))
                {
                    gUnk_03004C08.unk1 = 1;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 0x24);

                    gBgTilemapBufs[0][0x4C] = 0xA00C;
                    gBgTilemapBufs[0][0x4D] = 0xA00D;
                    gBgTilemapBufs[0][0x4E] = 0xA00E;
                    gBgTilemapBufs[0][0x4F] = 0xA00F;
                    gBgTilemapBufs[0][0x50] = 0xA010;

                    gBgTilemapBufs[0][0x6D] = ((gUnk_03004670->unk1 / 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x6E] = ((gUnk_03004670->unk1 % 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x6F] = 0xA00B;
                    gBgTilemapBufs[0][0x70] = ((gUnk_03004670->unk2 / 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x71] = ((gUnk_03004670->unk2 % 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x72] = 0xA00B;
                    gBgTilemapBufs[0][0x73] = ((gUnk_03004670->unk3 / 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x74] = ((gUnk_03004670->unk3 % 10) + 1) | 0xA000;

                    gBgTilemapBufs[0][0x2C] = 0xA011;
                    gBgTilemapBufs[0][0x30] = 0xA010;
                    gBgTilemapBufs[0][0x31] = 0xA004;
                    gBgTilemapBufs[0][0x32] = 0xA001;

                    gBgTilemapBufs[0][0x2E] = (((gUnk_03004670->unk8[5][0] & 0x7F) / 10) + 1) | 0xA000;
                    gBgTilemapBufs[0][0x2F] = (((gUnk_03004670->unk8[5][0] & 0x7F) % 10) + 1) | 0xA000;
                }

                if (gHeldKeys & 0x20)
                {
                    gUnk_03004C08.unk1 = 0xFF;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 1);
                }
                break;

            case 5:
                if (gHeldKeys & (0x40 | 0x10))
                {
                    gUnk_03004C08.unk1 = 0xFF;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 0x25);
                }
                break;

            case 6:
                if (gHeldKeys & 0x80)
                {
                    gUnk_03004C08.unk1 = 0xFE;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 0x24);
                }
                break;

            case 7:
                if (gHeldKeys & 0x80)
                {
                    gUnk_03004C08.unk1 = 0xF9;
                    m4aSongNumStart(0x51);
                    sub_08025B78(0, 0x24);
                }
                break;
        }

        if (gUnk_03004C08.unk1 != 0)
        {
            if (gUnk_08116708[gUnk_03004C08.unk0_4][0] >= gUnk_08116708[gUnk_03004C08.unk0_4 + gUnk_03004C08.unk1][0])
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
        sp0.unk4 = gUnk_08116708[gUnk_03004C08.unk0_4 + gUnk_03004C08.unk1][0];
        sp0.unk6 = gUnk_08116708[gUnk_03004C08.unk0_4 + gUnk_03004C08.unk1][1];
        sp0.unk8 = sp0.unk9 = 2;
        sub_0800BEF0(&spC, sp0);
        gEntityInfo[0].xPosBg2 = spC;
        gEntityInfo[0].yPosBg2 = spC >> 0x10;

        if ((gUnk_03004C08.unk0_4 + gUnk_03004C08.unk1) > 4)
        {
            if (gBgInfo->vOfs != 0)
            {
                gBgInfo->vOfs -= 0x80;
            }
        }
        else if (gBgInfo->vOfs < 0x400)
        {
            gBgInfo->vOfs += 0x80;
        }

        if ((gEntityInfo[0].xPosBg2 == gUnk_08116708[gUnk_03004C08.unk0_4 + gUnk_03004C08.unk1][0]) && (gEntityInfo[0].yPosBg2 == gUnk_08116708[gUnk_03004C08.unk0_4 + gUnk_03004C08.unk1][1]))
        {
            gUnk_03004C08.unk0_4 += gUnk_03004C08.unk1;
            gUnk_03004C08.unk1 = 0;
            if (gEntityAnimationInfo->state == 1)
            {
                sub_08025B78(0, 0);
            }
            if (gEntityAnimationInfo->state == 0x25)
            {
                sub_08025B78(0, 0x23);
            }
            if (gEntityAnimationInfo->state == 0x24)
            {
                sub_08025B78(0, 0x22);
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



void sub_0803C808(void)
{
    u32 var_r4_4;
    u32 var_r3;
    u32 var_r4;

    gUnk_030007CC = gUnk_081168DC[gUnk_03004C20.world - 1];

    gUnk_03005400.unk8_6 = 0;
    gUnk_03005400.unk8_0 = 0;
    gUnk_03005400.unk8_1 = 0;
    gUnk_03005400.unk8_2 = 0;
    gUnk_03005400.unk8_3 = 0;
    gUnk_03005400.unk8_4 = 0;

    gUnk_03005400.unk9 = 0;

    gUnk_03005400.unkE_7 = 0;
    gUnk_03005400.unkE_3 = 0;
    gUnk_03005400.unkE_4 = 0;
    gUnk_03005400.unkE_0 = 0;
    gUnk_03005400.unkE_1 = 0;

    gUnk_03005400.unkA = 0;
    gUnk_03005400.unkB = 0;
    gUnk_03005400.unk13 = 0;
    gUnk_03005400.unk14 = 0;
    gUnk_03005400.unk15 = 0;
    gUnk_03005400.unk16 = 0;
    gUnk_03005400.unkC = 3;
    gUnk_03005400.unkD = 0;
    gUnk_03005400.unk0 = 0;
    gUnk_03005400.unkF = 0;
    gUnk_03005400.unk10 = 0;
    gUnk_03005400.unk11 = 0;
    gUnk_03005400.unk12 = 0;
    gUnk_03005400.unk2 = 0;

    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    REG_IE &= ~2;
    REG_DISPSTAT &= ~0x10;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    DmaFill16(3, 0, &gUnk_03003590, 0x80);

    for (var_r4 = 0; var_r4 < 0xB; var_r4++)
    {
        gEntityInfo[var_r4].affineEnable = 1;
        gEntityInfo[var_r4].affineHFlip_matrixNum = 0;
        gEntityInfo[var_r4].priority = 1;
    }

    for (var_r4 = 0xD; var_r4 < gUnk_03005428; var_r4++)
    {
        gEntityInfo[var_r4].affineEnable = 1;
        gEntityInfo[var_r4].affineHFlip_matrixNum = 0;

        switch (gEntityInfo[var_r4].unk11)
        {
            case 0x0:
                gEntityInfo[var_r4].affineEnable = 0;
                gEntityInfo[var_r4].priority = 0;
                break;

            case 0x20:
                gEntityInfo[var_r4].affineEnable = 0;
                gEntityInfo[var_r4].priority = 0;
                break;

            case 0xB:
            case 0x16:
            case 0x76:
            case 0x77:
            case 0x78:
            case 0x79:
            case 0x7A:
            case 0x7B:
            case 0x7C:
            case 0x7D:
                gEntityInfo[var_r4].priority = 0;
                break;

            case 0x36:
                gEntityInfo[var_r4].priority = 2;
                break;

            default:
                gEntityInfo[var_r4].priority = 1;
                break;

        }

        if ((gEntityInfo[var_r4].unk11 == 0) && (gEntityInfo[var_r4].unkF != 0x1C))
        {
            gEntityInfo[var_r4].unk10 = 1;
        }
    }

    switch (gUnk_03004C20.world - 1)
    {
        case 0:
            gUnk_030034A8 = sub_0803D90C;
            gOamAffineMatrixNum = 5;
            break;

        case 1:
            gUnk_030034A8 = sub_0803E904;
            gOamAffineMatrixNum = 5;

            gEntityInfo[0x1A].priority = 1;
            gEntityInfo[0x19].priority = 1;
            gEntityInfo[0x18].priority = 1;
            gEntityInfo[0x17].priority = 1;

            gEntityInfo[0x1A].affineEnable = 1;
            gEntityInfo[0x19].affineEnable = 1;
            gEntityInfo[0x18].affineEnable = 1;
            gEntityInfo[0x17].affineEnable = 1;

            gEntityInfo[0x19].unkC_2 = 1;
            gEntityInfo[0x17].unkC_2 = 1;
            gEntityInfo[0x19].affineHFlip_matrixNum = 1;
            gEntityInfo[0x17].affineHFlip_matrixNum = 1;

            gEntityInfo[0x1A].unkC_2 = 0;
            gEntityInfo[0x18].unkC_2 = 0;
            gEntityInfo[0x1A].affineHFlip_matrixNum = 0;
            gEntityInfo[0x18].affineHFlip_matrixNum = 0;
            break;

        case 2:
            gUnk_030034A8 = sub_0803F9EC;
            gOamAffineMatrixNum = 0xF;

            for (var_r4 = 0; var_r4 < gUnk_03005428; var_r4++)
            {
                gEntityInfo[var_r4].priority = 0;
            }

            REG_BG0CNT = 3 | gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][0] | 0x1C40;
            REG_BG1CNT = 1 | gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][1] | 0x1D44;
            REG_BG2CNT = 0 | gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][2] | 0x9E48;

            sub_0803F68C(0, 0, 0);
            sub_0803F68C(1, 0, 0);
            sub_0803F68C(2, 0, 0);
            sub_0803F68C(3, 0, 0);
            sub_0803F68C(4, 0, 0);
            sub_0803F68C(5, 0, 0);
            break;

        case 3:
            gOamAffineMatrixNum = 0xF;
            gUnk_030034A8 = sub_08040F1C;

            REG_BG0CNT = 3 | gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][0] | 0x1C40;
            REG_BG1CNT = 0 | gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][1] | 0x1D44;
            REG_BG2CNT = 0 | gUnk_08051BD4[gUnk_03004C20.world - 1][gUnk_03004C20.level][2] | 0x9E49;

            gUnk_03005440.unkC = 0x30;
            gUnk_03005440.unkE = 0;
            gUnk_03005440.unk10 = 0x30;
            gUnk_03005440.unk12 = 0x200;
            gUnk_03005440.unk18 = 0x1B0;
            gUnk_03005440.unk1A = 0;
            gUnk_03005440.unk1C = 0x1B0;
            gUnk_03005440.unk1E = 0x200;
            break;

        case 4:
            gOamAffineMatrixNum = 0xF;
            gUnk_030034A8 = sub_08042024;
            break;

        case 5:
            gOamAffineMatrixNum = 0xF;
            gUnk_030034A8 = sub_08042E64;
            gEntityInfo[0x12].unk8.split.unk9 = 0x10;

            gUnk_03005400.unkE_7 = 1;
            gUnk_030007E0.unkC_0 = 3;
            gUnk_030007E0.unkC_4 = 0;
            gUnk_030007E0.unk6 = 0x78;
            gUnk_030007E0.unk0 = 0x78;
            gUnk_030007E0.unk8 = 0x80;
            gUnk_030007E0.unk2 = 0x80;
            gUnk_030007E0.unkA = 0;
            break;
    }
    
    var_r4_4 = 0;
    for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount - 1); var_r3++)
    {
        if ((gCallbackQueue.current[var_r3] == sub_0803C808) || (var_r4_4 == 1))
        {
            gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3 + 1];
            var_r4_4 = 1;
        }
        else
        {
            gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3];
        }
    }
    if (var_r4_4 == 1)
    {
        gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    }

    REG_IE |= 1;
    REG_DISPSTAT |= 8;
    m4aSoundVSyncOn();
}

void sub_0803CE14(u8 arg0)
{
    switch (gEntityInfo[arg0].unkF)
    {
        case 24:
            gEntityInfo[arg0].xPosBg2 = 24;
            gEntityInfo[arg0].yPosBg2 = 24;
            gEntityInfo[arg0].priority = 0;
            gEntityInfo[arg0].unkF = 0x19;
            break;

        case 25:
            if (gEntityInfo[arg0].xPosScreen >= gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0)
            {
                gEntityInfo[arg0].unkF = 0;
            }
            else if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
            {
                gEntityInfo[arg0].xPosBg2 += 1;
            }
            break;

        case 17:
            if (gEntityInfo[arg0].xPosBg2 <= (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 - 0x10))
            {
                gEntityInfo[arg0].unk10 = 0;
                gEntityInfo[arg0].unkF = 0x1C;
            }
            else if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
            {
                gEntityInfo[arg0].xPosBg2 -= 1;
            }
            break;

        // Can be any case between 0 and 16, required to match
        case 0:
            break;
    }
}

void sub_0803CF08(u8 arg0)
{
    u32 var_r4;
    u32 var_r6;
    u32 temp_r1;

    gEntityInfo[arg0].affineDouble = 1;
    if (gUnk_03005400.unkE_4 != 0)
    {
        temp_r1 = gUnk_0811710A[gUnk_03004C20.world - 1];
        for (var_r6 = 0; var_r6 < 2; var_r6++)
        {
            if ((gEntityInfo[temp_r1 + var_r6].unkF == 0) || (gEntityInfo[temp_r1 + var_r6].unkF == 0x19))
            {
                sub_0801E664(gEntityInfo[temp_r1 + var_r6].xPosBg2, gEntityInfo[temp_r1 + var_r6].yPosBg2, 2, temp_r1 + var_r6);
                gEntityInfo[temp_r1 + var_r6].unkF = 0x1C;
                gEntityInfo[temp_r1 + var_r6].unk10 = 0;
            }
        }

        if (gUnk_03005220.unk42 != 0)
        {
            gEntityInfo[gUnk_03005220.unk42].unkF = 0x1C;
            gEntityInfo[gUnk_03005220.unk42].unk10 = 0;
            gUnk_03005220.unk38 = 0;
            gUnk_03005220.unk43 = 0;
            gUnk_03005220.unk42 = 0;
            if (gEntityAnimationInfo->state >= 0x16)
            {
                sub_08025B78(0, gEntityAnimationInfo->state - 0x16);
            }
        }

        gEntityInfo[0].priority = 0;
        gUnk_03005400.unkE_4 = 0;
        REG_BLDCNT = 0x740;
        gBlendValue = 0x10;

        for (var_r6 = 0x12; var_r6 < gUnk_03005428; var_r6++)
        {
            gEntityInfo[var_r6].objMode = 1;
        }
    }
    else
    {
        if ((gUnk_03004C20.globalFrameCounter % 8) == 0)
        {
            if (gBlendValue != 0)
            {
                gBlendValue -= 1;
            }
        }
        if (gBlendValue != 0)
        {
            return;
        }

        if ((gUnk_03005220.unk31 == 0) && (gUnk_03005220.unk35 == 0))
        {
            return;
        }

        gEntityInfo[arg0].unkF = 4;
        gUnk_03003410.unkB = 2;

        for (var_r4 = 0; var_r4 < (gCallbackQueue.currentCount + 1); var_r4++)
        {
            if (var_r4 == 4)
            {
                gCallbackQueue.next[4] = sub_080264A4;
            }
            else if (var_r4 > 4)
            {
                gCallbackQueue.next[var_r4] = gCallbackQueue.current[var_r4 - 1];
            }
            else
            {
                gCallbackQueue.next[var_r4] = gCallbackQueue.current[var_r4];
            }
        }
        if (var_r4 > 3)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        gEntityInfo[0x9].unk10 = 0;
        gEntityInfo[0xA].unk10 = 0;
        if (gUnk_03005220.unk31 != 0)
        {
            sub_08025B78(0, 0);
        }
        else if (gUnk_03005220.unk35 != 0)
        {
            sub_08025B78(0, 0x10);
        }
    }
}

void sub_0803D140(u8 arg0)
{
    gUnk_03005400.unk11 = gUnk_081168E8[arg0].unk5;
    gUnk_03005400.unk12 = gUnk_081168E8[arg0].unk6;
}

void sub_0803D15C(void)
{
    u8 sp0;
    s16 temp_r4;
    s16 temp_r7;
    s16 temp_sb;
    s16 temp_sl;
    u8 var_r4;

    temp_sl = MultiplyQ8(gSineTable[0x40], ReciprocalQ8(gBg2XMag));
    temp_sb = MultiplyQ8(gSineTable[0], ReciprocalQ8(gBg2XMag));
    temp_r7 = MultiplyQ8(-gSineTable[0], ReciprocalQ8(gBg2YMag));
    temp_r4 = MultiplyQ8(gSineTable[0x40], ReciprocalQ8(gBg2YMag));

    gOamAffineBuffer[0].pa = temp_sl;
    gOamAffineBuffer[0].pb = temp_sb;
    gOamAffineBuffer[0].pc = temp_r7;
    gOamAffineBuffer[0].pd = temp_r4;

    gOamAffineBuffer[1].pa = -temp_sl;
    gOamAffineBuffer[1].pb = temp_sb;
    gOamAffineBuffer[1].pc = temp_r7;
    gOamAffineBuffer[1].pd = temp_r4;

    gOamAffineBuffer[2].pa = temp_sl;
    gOamAffineBuffer[2].pb = temp_sb;
    gOamAffineBuffer[2].pc = temp_r7;
    gOamAffineBuffer[2].pd = -temp_r4;

    temp_sl = MultiplyQ8(gSineTable[gUnk_03003590[0].unk4 + 0x40], ReciprocalQ8(gBg2XMag + gUnk_03003590[0].unk0 + gUnk_030007CC));
    temp_sb = MultiplyQ8(gSineTable[gUnk_03003590[0].unk4], ReciprocalQ8(gBg2XMag + gUnk_03003590[0].unk0 + gUnk_030007CC));
    temp_r7 = MultiplyQ8(-gSineTable[gUnk_03003590[0].unk4], ReciprocalQ8(gBg2YMag + gUnk_03003590[0].unk2 + gUnk_030007CC));
    temp_r4 = MultiplyQ8(gSineTable[gUnk_03003590[0].unk4 + 0x40], ReciprocalQ8(gBg2YMag + gUnk_03003590[0].unk2 + gUnk_030007CC));

    if (gUnk_03003590[0].unk5_0 == 0)
    {
        gOamAffineBuffer[3].pa = temp_sl;
        gOamAffineBuffer[3].pc = temp_r7;
    }
    else
    {
        gOamAffineBuffer[3].pa = -temp_sl;
        gOamAffineBuffer[3].pc = -temp_r7;
    }
    gOamAffineBuffer[3].pb = temp_sb;
    gOamAffineBuffer[3].pd = temp_r4;

    for (sp0 = 1; sp0 < 0x10; sp0++)
    {
        if (gUnk_03003590[sp0].unk5_0 == 0)
        {
            var_r4 = gUnk_03003590[sp0].unk4;
        }
        else
        {
            var_r4 = -gUnk_03003590[sp0].unk4;
        }

        temp_sl = MultiplyQ8(gSineTable[var_r4 + 0x40], ReciprocalQ8(gBg2XMag + gUnk_03003590[sp0].unk0));
        temp_sb = MultiplyQ8(gSineTable[var_r4], ReciprocalQ8(gBg2XMag + gUnk_03003590[sp0].unk0));
        temp_r7 = MultiplyQ8(-gSineTable[var_r4], ReciprocalQ8(gBg2YMag + gUnk_03003590[sp0].unk2));
        temp_r4 = MultiplyQ8(gSineTable[var_r4 + 0x40], ReciprocalQ8(gBg2YMag + gUnk_03003590[sp0].unk2));

        if (gUnk_03003590[sp0].unk5_0 == 0)
        {
            gOamAffineBuffer[sp0 + 3].pa = temp_sl;
        }
        else
        {
            gOamAffineBuffer[sp0 + 3].pa = -temp_sl;
        }
        if ((gUnk_03003590[sp0].unk5_0 != 0) && (gUnk_03003590[sp0].unk4 != 0))
        {
            gOamAffineBuffer[sp0 + 3].pc = -temp_r7;
        }
        else
        {
            gOamAffineBuffer[sp0 + 3].pc = temp_r7;
        }
        gOamAffineBuffer[sp0 + 3].pb = temp_sb;
        gOamAffineBuffer[sp0 + 3].pd = temp_r4;
    }
}

// https://decomp.me/scratch/YFibq
void sub_0803D4AC(u8 arg0, struct Unk_0803D4AC arg1)
{
    struct Unk_08014184 sp0;
    struct Unk_08014184 sp4;
    u16 sp10;
    u16 temp_sl;
    u32 var_r3;

    sp10 = gEntityInfo[arg0].xPosBg2;
    temp_sl = gEntityInfo[arg0].yPosBg2;

    if (gUnk_03005400.unk8_4)
    {
        gUnk_03005400.unk10 += 2;
        if ((gUnk_03005400.unk10 >> 4) > 2)
        {
            gUnk_03005400.unk10 = 0x20;
        }
        gEntityInfo[arg0].yPosBg2 += (gUnk_03005400.unk10 >> 0x4);

        if (gUnk_03004C20.unkA == 0)
        {
            var_r3 = gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][1]) >> 3) * gBgInfo[2].hLength)];
        }
        else
        {
            sub_08014230(&sp0, gEntityInfo[arg0].xPosBg2, gEntityInfo[arg0].yPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][1], 0x18);
            if (sp0.unk0 != 0xFFFF)
            {
                var_r3 = gUnk_03004654[0x1B];
            }
            else
            {
                var_r3 = gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][1]) >> 3) * gBgInfo[2].hLength)];
            }
        }

        if (gUnk_03004654[0x1B] <= var_r3)
        {
            gEntityInfo[arg0].yPosBg2 = temp_sl;
            gUnk_03005400.unk8_2 = 1;
        }
        else
        {
            gUnk_03005400.unk8_2 = 0;
        }
    }

    if (arg1.unk4 != 0)
    {
        temp_sl = gEntityInfo[arg0].yPosBg2;
        if ((gUnk_03004C20.globalFrameCounter & arg1.unk2) == arg1.unk2)
        {
            gUnk_03005400.unk10 += gUnk_03005400.unk12;
            if ((gUnk_03005400.unk10 >> 4) > arg1.unk4)
            {
                gUnk_03005400.unk10 = arg1.unk4 << 4;
            }
            gEntityInfo[arg0].yPosBg2 += (gUnk_03005400.unk10 >> 4);
        }

        if (gUnk_03004C20.unkA == 0)
        {
            var_r3 = gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][1]) >> 3) * gBgInfo[2].hLength)];
        }
        else
        {
            sub_08014230(&sp4, gEntityInfo[arg0].xPosBg2 + 8, gEntityInfo[arg0].yPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][1], 0x18);
            if (sp4.unk0 != 0xFFFF)
            {
                var_r3 = gUnk_03004654[0x1B];
            }
            else
            {
                var_r3 = gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][1]) >> 3) * gBgInfo[2].hLength)];
            }
        }

        if (gUnk_03004654[0x1B] <= var_r3)
        {
            gEntityInfo[arg0].yPosBg2 = temp_sl & 0xFFF8;
            gUnk_03005400.unk8_2 = 1;
        }
        else
        {
            gUnk_03005400.unk8_2 = 0;
        }
    }

    var_r3 = 0;
    if ((gUnk_03004C20.globalFrameCounter & arg1.unk1) == arg1.unk1)
    {
        if (gEntityInfo[arg0].unkC_2 == 0)
        {
            gUnk_03005400.unkF += gUnk_03005400.unk11;
            if ((gUnk_03005400.unkF >> 4) > arg1.unk3)
            {
                gUnk_03005400.unkF = arg1.unk3 << 4;
            }
            gEntityInfo[arg0].xPosBg2 += (gUnk_03005400.unkF >> 4);

            var_r3 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][0]) >> 3) + (((gEntityInfo[arg0].yPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][1]) >> 3) * gBgInfo[2].hLength)];
            if ((gEntityInfo[arg0].xPosBg2 > 0x158) && (gUnk_03004C20.world == 1))
            {
                var_r3 = gUnk_03004654[0x1B];
            }
        }
        else
        {
            gUnk_03005400.unkF += gUnk_03005400.unk11;
            if ((gUnk_03005400.unkF >> 4) > arg1.unk3)
            {
                gUnk_03005400.unkF = arg1.unk3 << 4;
            }
            gEntityInfo[arg0].xPosBg2 -= (gUnk_03005400.unkF >> 4);

            var_r3 = gBgDataPtrs.pBufBg2Tilemap[((gEntityInfo[arg0].xPosBg2 - gUnk_08116888[gUnk_03004C20.world - 1][0]) >> 3) + (((gEntityInfo[arg0].yPosBg2 + gUnk_08116888[gUnk_03004C20.world - 1][1]) >> 3) * gBgInfo[2].hLength)];
            if ((gEntityInfo[arg0].xPosBg2 <= 0x4FU) && (gUnk_03004C20.world == 1))
            {
                var_r3 = gUnk_03004654[0x1B];
            }
        }
    }

    if (gUnk_03004654[0x1B] <= var_r3)
    {
        gEntityInfo[arg0].xPosBg2 = sp10;
        gUnk_03005400.unk8_3 = 1;
    }
    else
    {
        gUnk_03005400.unk8_3 = 0;
    }
}

void sub_0803D90C(u8 arg0)
{
    s32 var_r0_3;
    u8 var_r2;
    s32 var_r9;
    u8 temp_r3_4;

    do {} while(0); // Required to match
    gEntityInfo[arg0].affineHFlip_matrixNum = 3;
    gEntityInfo[arg0].affineDouble = 1;
    gUnk_03003590[0].unk5_0 = gEntityInfo[0x12].unkC_2;
    if (gUnk_03005400.unk0 != 0)
    {
        gUnk_03005400.unk0 -= 1;
    }
    gUnk_03003620 = gUnk_081168E8[gUnk_03005400.unk9];
    sub_0803D4AC(arg0, gUnk_03003620);

    if (gEntityInfo[arg0].unkF == 14)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0:
                gUnk_030007E0.unkC_0 = 5;
                gUnk_030007E0.unkC_4 = 1;
                gUnk_030007E0.unk6 = gEntityInfo[0].xPosBg2;
                gUnk_030007E0.unk0 = gEntityInfo[0].xPosBg2;
                gUnk_030007E0.unk8 = gEntityInfo[0].yPosBg2;
                gUnk_030007E0.unk2 = gEntityInfo[0].yPosBg2;
                gUnk_030007E0.unkA = 0;
                gUnk_030007E0.unk4 = 0;

                gEntityInfo[0].xPosBg2 = 0;
                gEntityInfo[0].yPosBg2 = 0x12A;
                sub_08025B78(0, 1);
                sub_08025B78(arg0, 0);
                gUnk_03005400.unk8_0 = 0;
                gUnk_03005400.unkA = 1;
                break;

            case 1:
                gEntityInfo[0].xPosBg2 += 2;
                if (gEntityInfo[0].xPosBg2 > 0x77)
                {
                    gEntityInfo[0x1A].unkF = 0x1C;
                    sub_08025B78(0, 2);
                    gUnk_03005400.unkA = 2;
                }
                break;

            case 2:
                gEntityInfo[0].xPosBg2 += 1;
                if (gEntityInfo[0].yPosBg2 > 0xD1)
                {
                    gEntityInfo[0].yPosBg2 -= 2;
                }
                else
                {
                    gEntityInfo[0].yPosBg2 -= 1;
                }
                if (gEntityInfo[0].yPosBg2 <= 0xF0)
                {
                    sub_08025B78(0, 3);
                    gUnk_03005400.unkA = 3;
                    gEntityInfo[0x1A].unkF = 0;
                }
                break;

            case 3:
                gEntityInfo[0].xPosBg2 += 1;
                gEntityInfo[0].yPosBg2 += 1;
                if (gEntityInfo[0].yPosBg2 > 0x0111)
                {
                    m4aSongNumStart(0x2E);
                    m4aSongNumStart(0x64);
                    sub_08025B78(arg0, 0xC);
                    gUnk_03005400.unkE_7 = 1;
                    gUnk_03005400.unkA = 4;
                    gUnk_03005400.unk0 = 0xA0;
                }
                break;

            case 4:
                if (gUnk_03005400.unk0 == 0)
                {
                    gUnk_03005400.unk8_4 = 1;
                    gUnk_03005400.unkA = 0;
                    gEntityInfo[arg0].unkF = 0;
                    gEntityInfo[0x13].unkF = 0x19;
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 26)
    {
        gEntityInfo[arg0].unkF = 0;
    }
    else if (gEntityInfo[arg0].unkF == 0)
    {
        switch (gUnk_03005400.unkA)
        {
            case 1:
                if (gUnk_03005400.unk0 == 0)
                {
                    gUnk_03005400.unk0 = 0x3C;
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 += 0x10;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 -= 0x10;
                    }

                    if (gEntityInfo[arg0].xPosBg2 > (0x190 - gUnk_08116888[gUnk_03004C20.world - 1][0]))
                    {
                        gEntityInfo[arg0].xPosBg2 = 0x190 - gUnk_08116888[gUnk_03004C20.world - 1][0];
                    }
                    if (gEntityInfo[arg0].xPosBg2 < (gUnk_08116888[gUnk_03004C20.world - 1][0] + 0x40))
                    {
                        gEntityInfo[arg0].xPosBg2 = gUnk_08116888[gUnk_03004C20.world - 1][0] + 0x40;
                    }
                    gUnk_03005400.unk8_0 = 1;
                }

                if (gUnk_03005400.unk0 == 1)
                {
                    DmaCopy16Wait(3, &gUnk_08078508, (void*)0x05000200 + gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20, 0x20);
                    if (gUnk_03005400.unkC == 0)
                    {
                        sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2, 0x13);
                        gEntityInfo[0x13].unkF = 0x1C;
                        gEntityInfo[0x14].unkF = 0x1C;

                        gUnk_03005400.unkA = 0xC;
                        gUnk_03005400.unk0 = 0x100;
                        gUnk_03005400.unk8_0 = 1;
                        gUnk_03005400.unk8_6 = 1;
                    }
                    else
                    {
                        gUnk_03005400.unkA = 5;
                    }
                }
                else
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 10) == 5)
                    {
                        DmaCopy16Wait(3, &gUnk_08078508, (void*)0x05000200 + gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20, 0x20);
                    }
                    if ((gUnk_03004C20.sceneFrameCounter % 10) == 0)
                    {
                        DmaFill16(3, 0xFFFF, (void*)0x05000200 + gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20, 0x20);
                    }
                }
                break;

            case 14:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    if (gUnk_03005400.unk8_2)
                    {
                        gUnk_03005400.unkA = 9;
                    }
                }
                else if ((gEntityAnimationInfo[arg0 - gUnk_0300363C].timer > 0x10) || (gEntityAnimationInfo[arg0 - gUnk_0300363C].frame <= 2))
                {
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 -= 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 += 1;
                    }

                    if (gEntityInfo[arg0].xPosBg2 > (0x190 - gUnk_08116888[gUnk_03004C20.world - 1][0]))
                    {
                        gEntityInfo[arg0].xPosBg2 = 0x190 - gUnk_08116888[gUnk_03004C20.world - 1][0];
                    }
                    if (gEntityInfo[arg0].xPosBg2 < (gUnk_08116888[gUnk_03004C20.world - 1][0] + 0x40))
                    {
                        gEntityInfo[arg0].xPosBg2 = gUnk_08116888[gUnk_03004C20.world - 1][0] + 0x40;
                    }
                }
                break;

            case 10:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 1)
                {
                    sub_08025B78(arg0, 1);
                    gUnk_03005400.unk9 = 0;
                    sub_0803D140(0);
                    gUnk_03005400.unk0 = gUnk_081169F9[gUnk_03005400.unkC - 1][1];
                    gUnk_03005400.unkE_0 = 1;
                    gUnk_03005400.unkD = 3;
                }
                else if (gUnk_03005400.unk0 == 0)
                {
                    gUnk_03005400.unkA = 2;
                }
                break;

            case 11:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gUnk_03005400.unkA = gUnk_03005400.unkB;
                }
                break;

            case 9:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 4)
                {
                    sub_08025B78(arg0, 4);
                }
                else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    if (((gEntityInfo[0].xPosBg2 < gEntityInfo[arg0].xPosBg2) && (gEntityInfo[arg0].unkC_2 == 0)) || ((gEntityInfo[0].xPosBg2 > gEntityInfo[arg0].xPosBg2) && (gEntityInfo[arg0].unkC_2 == 1)))
                    {
                        gUnk_03005400.unkA = 2;
                    }
                    else
                    {
                        gUnk_03005400.unkA = 0;
                    }
                }
                break;

            case 2:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0xE)
                {
                    if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0xF)
                    {
                        sub_08025B78(arg0, 0xE);
                    }
                    else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                    {
                        gUnk_03005400.unkA = 0;
                    }
                }
                else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gEntityInfo[arg0].unkC_2 ^= 1;
                    sub_08025B78(arg0, 0xF);
                }
                break;

            case 0:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0)
                {
                    sub_08025B78(arg0, 0);
                    gUnk_03005400.unk0 = 0x20;
                }
                if (gUnk_03005400.unk0 == 0)
                {
                    gUnk_03005400.unkA = 0xD;
                }
                break;

            case 13:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0xA)
                {
                    sub_08025B78(arg0, 0xA);
                    gUnk_03005400.unk0 = gUnk_081169F9[gUnk_03005400.unkC - 1][0];
                }

                if (gUnk_03005400.unk0 != 0)
                {
                    break;
                }

                var_r0_3 = Abs(gEntityInfo[arg0].xPosBg2 - gEntityInfo[0].xPosBg2);
                if (var_r0_3 < 0)
                {
                    var_r0_3 += 7;
                }
                temp_r3_4 = var_r0_3 >> 3;

                if ((temp_r3_4 > gUnk_081169F9[gUnk_03005400.unkC - 1][2]) && (gUnk_03005220.unk43 != 0) && (gUnk_03005400.unk14 != 3))
                {
                    gUnk_03005400.unkA = 3;
                    gUnk_03005400.unk14 = 3;
                }
                else
                {
                    gUnk_03005400.unkA = 4;
                    gUnk_03005400.unk13 = temp_r3_4 * 4;
                    gUnk_03005400.unk6 = gEntityInfo[arg0].yPosBg2;

                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gUnk_03005400.unk4 = gEntityInfo[arg0].xPosBg2 + (temp_r3_4 * 4);
                        gEntityInfo[arg0].unk8.split.unk8 = 0x80;
                    }
                    else
                    {
                        gUnk_03005400.unk4 = gEntityInfo[arg0].xPosBg2 - (temp_r3_4 * 4);
                        gEntityInfo[arg0].unk8.split.unk8 = 0;
                    }
                }
                break;

            case 3:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 6)
                {
                    if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 5)
                    {
                        sub_08025B78(arg0, 6);
                        break;
                    }

                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 += 1;
                        if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
                        {
                            gEntityInfo[arg0].xPosBg2 += 1;
                        }
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 -= 1;
                        if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
                        {
                            gEntityInfo[arg0].xPosBg2 -= 1;
                        }
                    }

                    if ((gEntityInfo[arg0].xPosBg2 >= (gUnk_08116888[gUnk_03004C20.world - 1][0] + 0x40)) && (gEntityInfo[arg0].xPosBg2 <= (0x190 - gUnk_08116888[gUnk_03004C20.world - 1][0])))
                    {
                        break;
                    }

                    m4aSongNumStart(0x43);
                    if (gUnk_03005400.unkC == 1)
                    {
                        gUnk_03005400.unkA = 5;
                    }
                    else
                    {
                        gUnk_03005400.unkA = 0xA;
                    }
                    break;
                }

                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    sub_08025B78(arg0, 5);
                }
                break;

            case 4:
                switch (gEntityAnimationInfo[arg0 - gUnk_0300363C].state)
                {
                    default:
                        sub_08025B78(arg0, 7);
                        gUnk_03005400.unk8_4 = 1;
                        break;

                    case 8:
                        var_r9 = gEntityInfo[arg0].xPosBg2;
                        if (((u32) (u8) (gEntityInfo[arg0].unk8.split.unk8 - 0x31) <= 0x2E) || ((u32) (u8) (gEntityInfo[arg0].unk8.split.unk8 + 0x4F) <= 0x2E))
                        {
                            var_r2 = 1;
                        }
                        else
                        {
                            var_r2 = 2;
                        }
                        if (gEntityInfo[arg0].unkC_2 == 0)
                        {
                            gEntityInfo[arg0].unk8.split.unk8 += var_r2;
                        }
                        else
                        {
                            gEntityInfo[arg0].unk8.split.unk8 -= var_r2;
                        }

                        gEntityInfo[arg0].xPosBg2 = ((gUnk_03005400.unk13 * gSineTable[gEntityInfo[arg0].unk8.split.unk8 + 0x40]) >> 8) + gUnk_03005400.unk4;
                        gEntityInfo[arg0].yPosBg2 = ((gSineTable[gEntityInfo[arg0].unk8.split.unk8] * 5) >> 4) + gUnk_03005400.unk6;
                        if ((gEntityInfo[arg0].xPosBg2 < (gUnk_08116888[gUnk_03004C20.world - 1][0] + 0x40)) || (gEntityInfo[arg0].xPosBg2 > (0x190 - gUnk_08116888[gUnk_03004C20.world - 1][0])))
                        {
                            gEntityInfo[arg0].xPosBg2 = var_r9;
                        }

                        if ((gEntityInfo[arg0].unk8.split.unk8 != 0) && (gEntityInfo[arg0].unk8.split.unk8 != 0x80))
                        {
                            return;
                        }

                        sub_08025B78(arg0, 9);
                        m4aSongNumStart(0x43);
                        gUnk_03005400.unkE_1 = 1;
                        gUnk_03005400.unkD = 2;
                        gUnk_03005400.unkB = 9;
                        gUnk_03005400.unkA = 0xB;
                        gUnk_03005400.unk14 = 0;

                        gEntityInfo[0x20].unkF = 3;
                        gEntityInfo[0x1F].unkF = 3;
                        gEntityInfo[0x1E].unkF = 3;
                        gEntityInfo[0x1D].unkF = 3;
                        gEntityInfo[0x1C].unkF = 3;
                        break;

                    case 7:
                        if ((gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 1) && (gEntityAnimationInfo[arg0 - gUnk_0300363C].frame == 1))
                        {
                            m4aSongNumStart(0x65);
                        }
                        if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                        {
                            sub_08025B78(arg0, 8);
                        }
                        break;
                }
                break;

            case 5:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 2)
                {
                    sub_08025B78(arg0, 2);
                }
                else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gUnk_03005400.unkE_1 = 1;
                    gUnk_03005400.unkD = 3;
                    gUnk_03005400.unk8_4 = 0;
                    gUnk_03005400.unkA = 6;
                    m4aSongNumStart(0x65);
                }
                break;

            case 6:
                gUnk_03003590[0].unk4 += 8;
                gEntityInfo[arg0].yPosBg2 -= 4;
                if ((s16)gEntityInfo[arg0].yPosBg2 < 0x30)
                {
                    gUnk_03005400.unkA = 7;
                    gUnk_030007E0.unkC_0 = 3;
                    gUnk_030007E0.unk8 = 0x8C;
                }
                break;

            case 7:
                if (gUnk_03005400.unk0 == 0)
                {
                    gUnk_03005400.unk9 = 0x1E;
                    sub_0803D140(0x1E);
                    gUnk_03005400.unk0 = 0x46;
                    gUnk_03005400.unk10 = 0;
                }

                if (gUnk_03005400.unk0 > 0xA)
                {
                    if ((gEntityInfo[0].xPosBg2 < gEntityInfo[arg0].xPosBg2) && (gEntityInfo[arg0].unkC_2 == 0))
                    {
                        s32 tmp; // FAKE
                        gEntityInfo[arg0].unkC_2 = 1;
                        gUnk_03005400.unkF = tmp = -gUnk_03005400.unkF;
                    }
                    else if ((gEntityInfo[0].xPosBg2 > gEntityInfo[arg0].xPosBg2) && (gEntityInfo[arg0].unkC_2 == 1))
                    {
                        s32 tmp; // FAKE
                        gEntityInfo[arg0].unkC_2 = 0;
                        gUnk_03005400.unkF = tmp = -gUnk_03005400.unkF;
                    }
                }
                else
                {
                    gUnk_03005400.unkF = 0;
                    gUnk_03005400.unk11 = 0;
                }

                if (gUnk_03005400.unk0 == 1)
                {
                    gUnk_03005400.unk8_0 = 0;
                    gUnk_03005400.unk0 = 0;
                    gUnk_03005400.unkA = 8;
                    gUnk_03005400.unk13 = 0;
                    gUnk_03005400.unk8_4 = 1;
                    gUnk_03003590[0].unk4 = 4;
                    m4aSongNumStart(0x42);
                }
                break;

            case 8:
                if ((gUnk_03005400.unk8_2 != 0) && (gUnk_03005400.unk13 == 0))
                {
                    m4aSongNumStart(0x43);
                    gEntityInfo[0x20].unkF = 4;
                    gEntityInfo[0x1F].unkF = 4;
                    gEntityInfo[0x1E].unkF = 4;
                    gEntityInfo[0x1D].unkF = 4;
                    gEntityInfo[0x1C].unkF = 4;

                    gUnk_03003590[0].unk4 = 0;
                    gUnk_03005400.unk9 = 0;
                    sub_0803D140(0);
                    gUnk_03005400.unk0 = 0x14;
                    gUnk_03005400.unk13 = 1;
                    gUnk_03005400.unkE_1 = 1;
                    gUnk_03005400.unkD = 5;
                    gUnk_03005400.unk8_6 = 0;

                    if ((gUnk_03005220.unk31 != 0) && (gUnk_03005220.unk3E == 0))
                    {
                        gEntityInfo[0].yPosBg2 -= 0x30;
                    }
                    gUnk_030007E0.unkC_0 = 5;
                    gUnk_030007E0.unk8 = 0x78;

                    gEntityInfo[0x15].unkC_2 = 0;
                    gEntityInfo[0x16].unkC_2 = 1;
                    gEntityInfo[0x15].xPosBg2 = gEntityInfo[arg0].xPosBg2 + 0x20;
                    gEntityInfo[0x16].xPosBg2 = gEntityInfo[arg0].xPosBg2 - 0x20;
                    gEntityInfo[0x15].yPosBg2 = gEntityInfo[arg0].yPosBg2 + 0xC;
                    gEntityInfo[0x16].yPosBg2 = gEntityInfo[arg0].yPosBg2 + 0xC;
                    gEntityInfo[0x15].unkF = 0x19;
                    gEntityInfo[0x16].unkF = 0x19;
                }
                else
                {
                    if ((gUnk_03005400.unk0 == 0) && (gUnk_03005400.unk13 == 1))
                    {
                        gUnk_03003590[0].unk4 = 0;
                        gUnk_03005400.unkA = 9;
                        gUnk_03005400.unk0 = 0x3C;
                        sub_08025B78(arg0, 9);
                    }
                    else if (gUnk_03003590[0].unk4 == 0)
                    {
                        gUnk_03003590[0].unk4 = 0;
                    }
                    else
                    {
                        gUnk_03003590[0].unk4 += 4;
                    }
                }
                return;

            case 12:
                gEntityInfo[0x13].unkF = 0x1C;
                gEntityInfo[0x14].unkF = 0x1C;

                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0x10)
                {
                    sub_08025B78(arg0, 0x10);
                }
                else if ((gUnk_03005220.unk31 != 0) && (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF))
                {
                    gUnk_03005400.unkE_4 = 1;
                    gEntityInfo[arg0].unkF = 3;
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 3)
    {
        sub_0803CF08(arg0);
    }
}

void sub_0803E6D8(u8 arg0)
{
    u32 var_r3;

    gUnk_03005400.unk14 = 0;

    for (var_r3 = 0; var_r3 < 9; var_r3++)
    {
        gEntityInfo[0x1B + var_r3].unkF = gEntityInfo[0x24 + var_r3].unkF = arg0;
    }

    if (arg0 == 0)
    {
        switch (gUnk_03004C20.room - 1)
        {
            case 0:
                gUnk_03000790[0].unk8 = 0x48;
                gUnk_03000790[0].unk4 = 0x48;
                gUnk_03000790[1].unk8 = 0x48;
                gUnk_03000790[1].unk4 = 0x48;
                break;

            case 1:
                gUnk_03000790[0].unk8 = 0x68;
                gUnk_03000790[0].unk4 = 0x68;
                gUnk_03000790[1].unk8 = 0x48;
                gUnk_03000790[1].unk4 = 0x48;
                break;

            case 2:
                gUnk_03000790[0].unk8 = 0x68;
                gUnk_03000790[0].unk4 = 0x68;
                gUnk_03000790[1].unk8 = 0x68;
                gUnk_03000790[1].unk4 = 0x68;
                break;

            case 3:
                gUnk_03000790[0].unk8 = 0x88;
                gUnk_03000790[0].unk4 = 0x88;
                gUnk_03000790[1].unk8 = 0x48;
                gUnk_03000790[1].unk4 = 0x48;
                break;

            case 4:
                gUnk_03000790[0].unk8 = 0x48;
                gUnk_03000790[0].unk4 = 0x48;
                gUnk_03000790[1].unk8 = 0x88;
                gUnk_03000790[1].unk4 = 0x88;
                break;
        }

        for (var_r3 = 0; var_r3 < 9; var_r3++)
        {
            gEntityInfo[0x1B + var_r3].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_r3 + 0xE].unk0[gUnk_03004C20.room - 1].unk0;
            gEntityInfo[0x24 + var_r3].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_r3 + 0x17].unk0[gUnk_03004C20.room - 1].unk0;
    
            gEntityInfo[0x1B + var_r3].yPosBg2 = gUnk_03000790[0].unk4;
            gEntityInfo[0x24 + var_r3].yPosBg2 = gUnk_03000790[1].unk4;
    
            gEntityInfo[0x24 + var_r3].unk10 = 1;
            gEntityInfo[0x1B + var_r3].unk10 = 1;
        }

        gUnk_03000790[0].unk0 = gEntityInfo[0x1B].xPosBg2 - 0x10;
        gUnk_03000790[0].unk2 = gEntityInfo[0x1B].xPosBg2 + 0x10;
        gUnk_03000790[1].unk0 = gEntityInfo[0x24].xPosBg2 - 0x10;
        gUnk_03000790[1].unk2 = gEntityInfo[0x24].xPosBg2 + 0x10;
        m4aSongNumStart(0x68);
    }
    else
    {
        gUnk_03005220.unk3B = 0;
        gUnk_03005220.unk3A = 0;

        for (var_r3 = 0; var_r3 < 9; var_r3++)
        {
            gEntityInfo[0x1B + var_r3].unk10 = gEntityInfo[0x24 + var_r3].unk10 = 0;
        }
    }
}

void sub_0803E8CC(void)
{
    u8 temp_r4;

    temp_r4 = gUnk_03005400.unkC - 1;
    gUnk_03004C20.room = (temp_r4 % 2) + (thunk_GetRandomValue() % (5 - temp_r4)) + 1;
}

void sub_0803E904(u8 arg0)
{
    u8 sp14;
    s32 var_r0_3;
    s32 var_r0_4;

    do {} while(0); // Required to match

    sp14 = gUnk_03005400.unkC - 1;
    gEntityInfo[arg0].affineHFlip_matrixNum = 3;
    gEntityInfo[arg0].affineDouble = 1;
    gUnk_03003590[0].unk5_0 = gEntityInfo[0x12].unkC_2 ;
    if (gUnk_03005400.unk0 != 0)
    {
        gUnk_03005400.unk0 -= 1;
    }
    sub_0803D4AC(arg0, gUnk_03003620);

    if (gEntityInfo[arg0].unkF == 14)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0:
                gUnk_030007E0.unkC_0 = 1;
                gUnk_030007E0.unkC_4 = 0;
                gUnk_030007E0.unk6 = 0x78;
                gUnk_030007E0.unk0 = 0x78;
                gUnk_030007E0.unk8 = 0x50;
                gUnk_030007E0.unk2 = 0x50;
                gUnk_030007E0.unkA = 0x40;
                gUnk_030007E0.unk4 = 0x40;

                sub_08025B78(0, 0);
                sub_08025B78(0x12, 2);
                sub_08025B78(0x17, 0);
                sub_08025B78(0x19, 1);

                gEntityInfo[0x12].priority = 2;
                gUnk_03003590[0].unk2 = -0xC0;
                gUnk_03003590[0].unk0 = -0xC0;
                gUnk_03005400.unk8_0 = 1;
                gUnk_03005400.unk13 = 0;
                gUnk_03005400.unkA = 1;
                gUnk_03005400.unkE_7 = 1;
                break;

            case 1:
                gUnk_03005400.unk13 += 4;
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + ((gSineTable[gUnk_03005400.unk13 + 0x40] * 2) >> 5);

                if ((s16) gUnk_03003590[0].unk0 < gUnk_081168E2[gUnk_03005400.unkC])
                {
                    gUnk_03003590[0].unk0 += 1;
                    gUnk_03003590[0].unk2 += 1;
                }

                if (((s16) gUnk_03003590[0].unk0 == gUnk_081168E2[gUnk_03005400.unkC]) && (gUnk_03005400.unk13 == 0x40))
                {
                    sub_0803E6D8(0x1C);
                    gUnk_03005400.unkA = 2;
                }
                break;

            case 2:
                gUnk_03005400.unk8_4 = 0;
                gUnk_03005400.unk13 = 0;
                gUnk_03005400.unk8_0 = 1;
                gEntityInfo[arg0].unk8.split.unk8 = 0x80;
                gUnk_03005400.unkA = 6;
                gEntityInfo[arg0].unkF = 0;
                gEntityInfo[0x12].priority = 1;
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 0)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0:
                if ((thunk_GetRandomValue() % 10) <= 4)
                {
                    gEntityInfo[arg0].unkC_2 = 0;
                }
                else
                {
                    gEntityInfo[arg0].unkC_2 = 1;
                }

                sub_08025B78(arg0, 0);
                gUnk_03005400.unkA = 2;
                break;

            case 1:
                if ((gUnk_030007CC < gUnk_081168E2[gUnk_03005400.unkC]) && (gUnk_03005400.unkC != 0))
                {
                    gUnk_030007CC += 2;
                }

                if (gUnk_03005400.unk0 == 0)
                {
                    gUnk_03005400.unk0 = 0x3C;
                    gUnk_03005400.unk8_0 = 1;
                    gUnk_03005400.unk8_6 = 1;
                }

                if (gUnk_03005400.unk0 == 1)
                {
                    DmaCopy16Wait(3, &gUnk_08078628, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);

                    if (gEntityInfo[0x13].unkF != 0x1C)
                    {
                        sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2U, 0x13);
                        gEntityInfo[0x13].unkF = 0x1C;
                    }
                    if (gEntityInfo[0x14].unkF != 0x1C)
                    {
                        sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2U, 0x14);
                        gEntityInfo[0x14].unkF = 0x1C;
                    }
                    if (gEntityInfo[0x15].unkF != 0x1C)
                    {
                        sub_0801E664(gEntityInfo[0x15].xPosBg2, gEntityInfo[0x15].yPosBg2, 2U, 0x15);
                        gEntityInfo[0x15].unkF = 0x1C;
                    }
                    if (gEntityInfo[0x16].unkF != 0x1C)
                    {
                        sub_0801E664(gEntityInfo[0x16].xPosBg2, gEntityInfo[0x16].yPosBg2, 2U, 0x16);
                        gEntityInfo[0x16].unkF = 0x1C;
                    }

                    if (gUnk_03005400.unkC == 2)
                    {
                        sub_0803E6D8(0x1C);
                    }

                    if (gUnk_03005400.unkC == 0)
                    {
                        sub_0803E6D8(0x1C);
                        gUnk_03005400.unkA = 9;
                        gUnk_03005400.unk13 = 0;
                        sub_08025B78(arg0, 6);
                    }
                    else
                    {
                        gUnk_03005400.unk14 = gUnk_08116A02[gUnk_03005400.unkC][4];
                        gUnk_03005400.unk16 = gEntityInfo[arg0].unkC_2;
                        gUnk_03005400.unkA = 4;
                        gUnk_03005400.unk8_0 = 0;
                    }
                }
                else
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 10) == 5)
                    {
                        DmaCopy16Wait(3, &gUnk_08078628, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    }

                    if ((gUnk_03004C20.sceneFrameCounter % 10) == 0)
                    {
                        DmaFill16(3, 0xFFFF, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    }
                }
                break;

            case 2:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0)
                {
                    sub_08025B78(arg0, 0);
                }

                if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
                {
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 += gUnk_08116A02[gUnk_03005400.unkC][0];
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 -= gUnk_08116A02[gUnk_03005400.unkC][0];
                    }
                }

                gUnk_03005400.unk13 += gUnk_08116A02[gUnk_03005400.unkC][1];
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + ((gSineTable[gUnk_03005400.unk13 + 0x40] * 2) >> 4);
                if ((gUnk_03005400.unk13 % 0x80) == 0)
                {
                    m4aSongNumStart(0x66);
                }

                if (gEntityInfo[arg0].xPosBg2 <= 0x5F)
                {
                    gEntityInfo[arg0].unkC_2 = 0;
                    gUnk_03005400.unk14 += 1;
                }
                else if (gEntityInfo[arg0].xPosBg2 > 0x180)
                {
                    gEntityInfo[arg0].unkC_2 = 1;
                    gUnk_03005400.unk14 += 1;
                }

                if (((u16) (gEntityInfo[arg0].xPosBg2 - 0xE7) <= 0x12) && (gEntityInfo[0x13].unkF == 0x1C) && (gEntityInfo[0x14].unkF == 0x1C) && (gEntityInfo[0x15].unkF == 0x1C) && (gEntityInfo[0x16].unkF == 0x1C))
                {
                    gUnk_03005400.unkA = 3;
                }
                else if (gUnk_03005400.unk14 != 3)
                {

                }
                else if (sp14 == 2)
                {

                }
                else
                {
                    sub_0803E6D8(0x1C);
                    gEntityInfo[arg0].unk8.split.unk8 = 0x50;
                    gUnk_03005400.unk15 = 2;
                    gUnk_03005400.unkA = 0xA;

                    gUnk_030007E0.unkC_0 = 6;
                    gUnk_030007E0.unkC_4 = 0;
                    gUnk_030007E0.unk6 = 0x78;
                    gUnk_030007E0.unk8 = 0x3C;
                    gUnk_030007E0.unkA = 0x40;
                }
                break;

            case 3:
                {
                    u32 sp10;
                    u32 tmp;
                    struct Unk_0800BEF0 sp4;
                    sp4.unk0 = gEntityInfo[arg0].xPosBg2;
                    sp4.unk2 = gEntityInfo[arg0].yPosBg2;
                    sp4.unk4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0;
                    sp4.unk6 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2;
                    sp4.unk9 = 2;
                    sp4.unk8 = 2;
                    sub_0800BEF0(&sp10, sp4);
                    tmp = sp10;
                    gEntityInfo[arg0].xPosBg2 = tmp;
                    gEntityInfo[arg0].yPosBg2 = tmp >> 0x10;
                }

                if ((gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0 >> 3) != (gEntityInfo[arg0].xPosBg2 >> 0x3))
                {

                }
                else if ((gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 >> 3) != (gEntityInfo[arg0].yPosBg2 >> 0x3))
                {

                }
                else
                {
                    gUnk_03005400.unk8_6 = 0;
                    sub_08025B78(arg0, 2);
                    gEntityInfo[arg0].unk8.split.unk8 = 0x78;
                    gUnk_03005400.unkA = 6;
                }
                break;

            case 10:
                gUnk_03005400.unk13 += 2;
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + ((gSineTable[gUnk_03005400.unk13 + 0x40] * 5) >> 7);

                if (gEntityInfo[arg0].unk8.split.unk8 == 0x32)
                {
                    sub_0803E8CC();
                    sub_0803E6D8(0);
                }

                gEntityInfo[arg0].unk8.split.unk8 -= 1;
                if (gEntityInfo[arg0].unk8.split.unk8 == 0xFF)
                {
                    gUnk_03005400.unk14 = 0;
                    gUnk_03005400.unkA = gUnk_03005400.unk15;
                    gUnk_030007E0.unkC_0 = 1;
                    gUnk_030007E0.unkC_4 = 0;
                    gUnk_030007E0.unk6 = 0x78;
                    gUnk_030007E0.unk8 = 0x50;
                    gUnk_030007E0.unkA = 0x40;
                }
                break;

            case 6:
                gUnk_030007E0.unkA = 0x80;
                gUnk_03005400.unk8_0 = 0;
                gUnk_03005400.unk8_6 = 1;

                gUnk_03005400.unk15 += 1;
                var_r0_3 = (s8) gUnk_03005400.unk15;
                if (var_r0_3 < 0)
                {
                    var_r0_3 += 7;
                }
                if ((var_r0_3 >> 3) & 1)
                {
                    gUnk_03003590[0].unk0 += 8;
                    gUnk_03003590[0].unk2 += 8;
                }
                else
                {
                    gUnk_03003590[0].unk0 -= 8;
                    gUnk_03003590[0].unk2 -= 8;
                }

                if ((gUnk_03005400.unk15 % 0x10) == 0)
                {
                    m4aSongNumStart(0x69);
                }

                gEntityInfo[arg0].unk8.split.unk8 -= 1;
                if (gEntityInfo[arg0].unk8.split.unk8 == 0)
                {
                    sub_0803E6D8(0x1C);
                    sub_08025B78(arg0, 5);
                    gEntityInfo[arg0].unk8.split.unk8 = 0xB4;
                    gUnk_03005400.unkA = 7;
                    m4aSongNumStart(0x69);
                    gEntityInfo[0x16].unkF = 3;
                    gEntityInfo[0x15].unkF = 3;
                }
                break;

            case 7:
                gUnk_03005400.unk15 += 1;
                var_r0_4 = (s8) gUnk_03005400.unk15;
                if (var_r0_4 < 0)
                {
                    var_r0_4 += 7;
                }
                if ((var_r0_4 >> 3) & 1)
                {
                    gUnk_03003590[0].unk0 += 9;
                    gUnk_03003590[0].unk2 += 9;
                }
                else
                {
                    gUnk_03003590[0].unk0 -= 9;
                    gUnk_03003590[0].unk2 -= 9;
                }

                gEntityInfo[arg0].unk8.split.unk8 -= 1;
                if (gEntityInfo[arg0].unk8.split.unk8 == 0)
                {
                    gUnk_030007CC = gUnk_081168E2[gUnk_03005400.unkC];
                    gUnk_03003590[0].unk2 = 0;
                    gUnk_03003590[0].unk0 = 0;

                    gEntityInfo[0x16].xPosBg2 = gEntityInfo[arg0].xPosBg2;
                    gEntityInfo[0x15].xPosBg2 = gEntityInfo[arg0].xPosBg2;
                    gEntityInfo[0x15].yPosBg2 = gEntityInfo[0x16].yPosBg2 = gEntityInfo[arg0].yPosBg2 - 0x3C;
                    gEntityInfo[0x16].unkF = 0x19;
                    gEntityInfo[0x15].unkF = 0x19;

                    sub_08025B78(arg0, 6);
                    m4aSongNumStart(0x6A);
                    gUnk_03005400.unkA = 8;
                }
                break;

            case 8:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gUnk_030007E0.unkA = 0x40;
                    sub_0803E6D8(0x1C);
                    sub_08025B78(0x12, 2);
                    gUnk_03005400.unk15 = 0;
                    gEntityInfo[arg0].unk8.split.unk8 = 0x50;
                    gUnk_03005400.unkA = 0xA;
                    gUnk_03005400.unk8_0 = 0;
                    gUnk_03005400.unk8_6 = 0;
                }
                break;

            case 4:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gUnk_03005400.unkA = 5;
                    sub_08025B78(arg0, 4);
                    gEntityInfo[0x12].unkC_2 ^= 1;
                    m4aSongNumStart(0x67);
                }
                goto block_124;

            case 5:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gUnk_03005400.unkA = 4;
                    sub_08025B78(arg0, 3);
                    gEntityInfo[0x12].unkC_2 ^= 1;
                    m4aSongNumStart(0x67);
                }
                goto block_124;

            case 9:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gUnk_03003590[0].unk4 += 4;
                    if ((s16) gUnk_03003590[0].unk0 <= -0xF0)
                    {
                        if (gUnk_03005220.unk31 != 0)
                        {
                            gEntityInfo[arg0].unk10 = 0;
                            gEntityInfo[arg0].yPosBg2 = 0;
                            gEntityInfo[arg0].xPosBg2 = 0;
                            gUnk_03005400.unkE_4 = 1;
                            gEntityInfo[arg0].unkF = 3;
                        }
                        else
                        {
                            gUnk_03005400.unk14 = 0x7F;
                            goto block_124;
                        }
                    }
                    else
                    {
                        if ((gUnk_03004C20.sceneFrameCounter % 4) == 0)
                        {
                            gUnk_03003590[0].unk0 -= 4;
                            gUnk_03003590[0].unk2 -= 4;
                        }
                        gUnk_03005400.unk14 = 0x7F;
                        goto block_124;
                    }
                }
                break;

block_124:
                if (gUnk_03005400.unk16 & 1)
                {
                    gEntityInfo[0x12].xPosBg2 += gUnk_08116A02[gUnk_03005400.unkC][2];
                }
                else
                {
                    gEntityInfo[0x12].xPosBg2 -= gUnk_08116A02[gUnk_03005400.unkC][2];
                }

                if (gUnk_03005400.unk16 & 2)
                {
                    gEntityInfo[0x12].yPosBg2 += gUnk_08116A02[gUnk_03005400.unkC][3];
                }
                else
                {
                    gEntityInfo[0x12].yPosBg2 -= gUnk_08116A02[gUnk_03005400.unkC][3];
                }

                if (gEntityInfo[0x12].xPosBg2 <= 0x4F)
                {
                    if (gUnk_03005400.unk14 == 0x7F)
                    {
                        m4aSongNumStart(0x7E);
                    }

                    gUnk_03005400.unk14 -= 1;
                    gUnk_03005400.unk16 &= ~1;
                    gUnk_03005400.unk16 |= 1;
                }
                else if (gEntityInfo[0x12].xPosBg2 > 0x190)
                {
                    if (gUnk_03005400.unk14 == 0x7F)
                    {
                        m4aSongNumStart(0x7E);
                    }

                    gUnk_03005400.unk14 -= 1;
                    gUnk_03005400.unk16 &= ~1;
                }

                if (gEntityInfo[0x12].yPosBg2 <= 0x7F)
                {
                    if (gUnk_03005400.unk14 == 0x7F)
                    {
                        m4aSongNumStart(0x7E);
                    }

                    gUnk_03005400.unk14 -= 1;
                    gUnk_03005400.unk16 &= ~2;
                    gUnk_03005400.unk16 |= 2;
                }
                else if (gEntityInfo[0x12].yPosBg2 > 0x100)
                {
                    if (gUnk_03005400.unk14 == 0x7F)
                    {
                        m4aSongNumStart(0x7E);
                    }

                    gUnk_03005400.unk14 -= 1;
                    gUnk_03005400.unk16 &= ~2;
                }

                if ((s8) gUnk_03005400.unk14 <= 0)
                {
                    if (gEntityInfo[0x12].xPosBg2 < 0xF0)
                    {
                        gEntityInfo[0x12].unkC_2 = 0;
                    }
                    else
                    {
                        gEntityInfo[0x12].unkC_2 = 1;
                    }

                    gUnk_03005400.unk13 = 0;
                    gUnk_030034DC = 0;
                    gUnk_03005400.unkA = 3;
                    sub_08025B78(arg0, 0);
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 3)
    {
        sub_0803CF08(arg0);
    }
    if (gUnk_03005220.hearts == 0)
    {
        sub_0803E6D8(0x1C);
    }
}

void sub_0803F68C(u8 arg0, u8 arg1, u8 arg2)
{
    void *var_r3;
    void *var_r5;
    void *var_r6;
    u32 var_sb;
    u8 var_r1;

    if (arg2 != 0)
    {
        gEntityInfo[0x23].unkF = 0x19;
        gEntityInfo[0x22].unkF = 0x19;
        gEntityInfo[0x21].unkF = 0x19;
        gEntityInfo[0x20].unkF = 0x19;
    }

    switch (arg1)
    {
        case 0:
            var_sb = 0xD;
            var_r6 = &gUnk_03003D16[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x1B)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C;
            break;

        case 1:
            var_sb = 4;
            var_r6 = &gUnk_03003F56[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x24)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C + (gBgInfo[2].hLength * 0x13);
            break;

        case 2:
            var_sb = 6;
            var_r6 = &gUnk_03003E96[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x21)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C + (gBgInfo[2].hLength * 0x13);
            break;

        case 3:
            var_sb = 6;
            var_r6 = &gUnk_03003DD6[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x1E)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C + (gBgInfo[2].hLength * 0x13);
            break;

        case 4:
            var_sb = 6;
            var_r6 = &gUnk_03003D16[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x1B)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C + (gBgInfo[2].hLength * 0xD);
            break;

        case 5:
            var_sb = 6;
            var_r6 = &gUnk_03003D16[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x1B)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C + (gBgInfo[2].hLength * 0x16);
            break;

        case 6:
            var_sb = 4;
            var_r6 = &gUnk_03003F56[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x24)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C;
            break;

        case 7:
            var_sb = 7;
            var_r6 = &gUnk_03003E96[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x21)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C;
            break;

        case 8:
            var_sb = 0xA;
            var_r6 = &gUnk_03003DD6[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x1E)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C;
            break;

        case 9:
            var_sb = 0xD;
            var_r6 = &gUnk_03003D16[arg0];
            var_r5 = &gBgDataPtrs.pBufBg2Tilemap[6 + (arg0 * 8) + (gBgInfo[2].hLength * 0x1B)];
            var_r3 = gBgDataPtrs.pBufBg2Tilemap + 0x3C;
            break;
    }

    for (var_r1 = 0; var_r1 < var_sb; var_r1++)
    {
        DmaCopy16Wait(3, var_r3, var_r6, 0x8);
        DmaCopy16Wait(3, var_r3, var_r5, 0x8);
        var_r6 += 0x40;
        var_r5 += gBgInfo[2].hLength;
        var_r3 += gBgInfo[2].hLength;
    }
}

void sub_0803F950(u8 arg0)
{
    u8 var_r5;

    if (gUnk_03005400.unkC == 0)
    {
        return;
    }

    if (arg0 == 0x19)
    {
        for (var_r5 = 0; var_r5 < 2; var_r5++)
        {
            if (gEntityInfo[var_r5 + 0x13].unkF == 0x1C)
            {
                gEntityInfo[var_r5 + 0x13].unkF = 0x19;
            }
        }
    }
    else
    {
        for (var_r5 = 0; var_r5 < 2; var_r5++)
        {
            if ((gEntityInfo[var_r5 + 0x13].unkF == 0) || (gEntityInfo[var_r5 + 0x13].unkF == 0x19))
            {
                sub_0801E664(gEntityInfo[var_r5 + 0x13].xPosBg2, gEntityInfo[var_r5 + 0x13].yPosBg2, 2, var_r5 + 0x13);
            }

            if (gEntityInfo[var_r5 + 0x13].unkF == 0x13)
            {
                sub_0801E664(gEntityInfo[var_r5 + 0x13].xPosBg2, gEntityInfo[var_r5 + 0x13].yPosBg2, 2, var_r5 + 0x13);
            }
        }
    }
}

void sub_0803F9EC(u8 arg0)
{
    s32 var_r1;
    u8 var_r2;
    u8 var_r3;
    u8 var_r4;
    u8 var_r5;

    gEntityInfo[arg0].affineHFlip_matrixNum = 3;
    gEntityInfo[arg0].affineDouble = 1;
    gUnk_03003590[0].unk5_0 = gEntityInfo[0x12].unkC_2;
    if (gUnk_03005400.unk0 != 0)
    {
        gUnk_03005400.unk0 -= 1;
    }
    DmaCopy16(3, &gUnk_080D8C30 + (((gUnk_03004C20.sceneFrameCounter / 12) % 6) << 6), (void*)0x05000100, 0x40);
    if ((gEntityInfo[0].yPosBg2 > 0x147) && (gUnk_03005220.hearts != 0))
    {
        gUnk_03005220.hearts = 1;
        sub_08014624(1);
    }
    if (gEntityInfo[arg0].unkF == 14)
    {
        if (gUnk_03005400.unkA == 0)
        {
            gUnk_030007E0.unkC_0 = 7;
            gUnk_030007E0.unkC_4 = 0;
            gUnk_030007E0.unk6 = 0x78;
            gUnk_030007E0.unk0 = 0x78;
            gUnk_030007E0.unk8 = 0xA0;
            gUnk_030007E0.unk2 = 0xA0;
            gUnk_030007E0.unkA = 0x60;
            gUnk_030007E0.unk4 = 0x60;
            gUnk_03005400.unk9 = 0;
            gUnk_03005400.unk8_4 = 1;
            gEntityInfo[arg0].unkF = 0;
            gUnk_03005400.unkE_7 = 1;
            gUnk_03005400.unk14 = 0xFF;
        }
    }
    else if (gEntityInfo[arg0].unkF == 0 || gEntityInfo[arg0].unkF == 26)
    {
        sub_0803D4AC(arg0, gUnk_03003620);
        switch (gUnk_03005400.unkA)
        {
            case 0:
                gUnk_03005400.unk13 = thunk_GetRandomValue() % 6;
                while (1)
                {
                    if ((s8) gUnk_03005400.unk15 != 3)
                    {
                        if (((gUnk_03005400.unk14 >> gUnk_03005400.unk13) & 1) != 0)
                        {
                            break;
                        }
                    }
                    else
                    {
                        if (((gUnk_03005400.unk14 >> gUnk_03005400.unk13) & 1) == 0)
                        {
                            break;
                        }
                    }
                    gUnk_03005400.unk13 = (gUnk_03005400.unk13 + 1) % 6;
                }
                gEntityInfo[0x12].xPosBg2 = (gUnk_03005400.unk13 << 6) + 0x50;
                gEntityInfo[0x12].yPosBg2 = 0x190;
                if (gEntityInfo[0].xPosBg2 < gEntityInfo[0x12].xPosBg2)
                {
                    gEntityInfo[0x12].unkC_2 = 1;
                }
                else
                {
                    gEntityInfo[0x12].unkC_2 = 0;
                }
                gUnk_03003590[0].unk2 = 0;
                gUnk_03003590[0].unk0 = 0;
                gUnk_03003590[0].unk4 = 0xC0;
                gUnk_03005400.unk8_6 = 0;
                gUnk_03005400.unk8_0 = 0;
                gUnk_03005400.unk8_4 = 0;
                gEntityInfo[arg0].priority = 1;
                gEntityInfo[arg0].unkF = 0;
                sub_08025B78(arg0, 0);
                gUnk_03005400.unk0 = gUnk_08116A46[gUnk_03005400.unkC][0] * 0x3C;
                gUnk_03005400.unkA = 4;
                break;

            case 4:
                if (gUnk_03005400.unk0 > (gUnk_08116A46[gUnk_03005400.unkC][1] * 0x3C))
                {
                    break;
                }

                if (gUnk_03005400.unk0 != 0)
                {
                    if ((gUnk_03005400.unk14 >> gUnk_03005400.unk13) & 1)
                    {
                        var_r1 = ((gUnk_03004C20.sceneFrameCounter / 8) % 4) + 1;
                        if (gUnk_03005400.unk0 == 1)
                        {
                            var_r1 = 0;
                        }
                        for (var_r3 = 0; var_r3 < 3; var_r3++)
                        {
                            for (var_r4 = 0; var_r4 < 3; var_r4++)
                            {
                                gUnk_03003650[var_r3 + 0x17][8 + var_r4 + (gUnk_03005400.unk13 * 8)] = gBgDataPtrs.pBufBg2Tilemap[(var_r1 * 3) + var_r4 + ((var_r3 + 0x2D) * gBgInfo[2].hLength)];
                            }
                        }
                    }
                    if (gUnk_03005400.unk0 > 0x78)
                    {
                        break;
                    }
                }

                if (gEntityInfo[0x12].yPosBg2 > 0x117)
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
                    {
                        gEntityInfo[0x12].yPosBg2 -= 1;
                    }
                    if ((gUnk_03005400.unk14 >> gUnk_03005400.unk13) & 1)
                    {
                        if (gEntityInfo[arg0].yPosBg2 == 0x164)
                        {
                            m4aSongNumStart(0x6B);
                            sub_0803F68C(gUnk_03005400.unk13, 1, 1);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 2;
                        }
                        if (gEntityInfo[arg0].yPosBg2 == 0x154)
                        {
                            m4aSongNumStart(0x6B);
                            sub_0803F68C(gUnk_03005400.unk13, 2, 1);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 2;
                        }
                        if (gEntityInfo[arg0].yPosBg2 == 0x144)
                        {
                            m4aSongNumStart(0x6B);
                            sub_0803F68C(gUnk_03005400.unk13, 3, 1);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 4;
                        }
                        if (gEntityInfo[arg0].yPosBg2 == 0x134)
                        {
                            m4aSongNumStart(0x6B);
                            sub_0803F68C(gUnk_03005400.unk13, 4, 1);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 4;
                        }
                        if (gEntityInfo[arg0].yPosBg2 == 0x118)
                        {
                            m4aSongNumStart(0x6B);
                            sub_0803F68C(gUnk_03005400.unk13, 5, 1);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 4;
                        }
                    }
                }
                else
                {
                    gUnk_03005400.unk14 &= ~(1 << gUnk_03005400.unk13);
                    gUnk_03005400.unk13 = 0;
                    gUnk_03005400.unk15 += 1;
                    gUnk_03005400.unkA = 5;
                    gUnk_03005400.unk0 = 0x50;
                    gEntityInfo[arg0].priority = 0;
                }
                break;

            case 5:
                if (gUnk_03005400.unk0 == 0)
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 8) == 0 && (gUnk_03005400.unk13 <= 7))
                    {
                        gUnk_03005400.unk13 += 1;
                    }

                    if ((s16) gEntityInfo[0x12].yPosBg2 <= 0x10)
                    {
                        sub_08025B78(arg0, 6);
                        gUnk_03005400.unk8_6 = 1;
                        gUnk_03005400.unk8_4 = 0;
                        if ((s8) gUnk_03005400.unk15 == 3)
                        {
                            gEntityInfo[arg0].priority = 2;
                            gUnk_03005400.unk8_0 = 1;
                            gUnk_03005400.unkA = 0xB;
                        }
                        else
                        {
                            gUnk_03005400.unk0 = 0x60;
                            gUnk_03005400.unkA = 6;
                        }
                    }
                    else
                    {
                        gEntityInfo[0x12].yPosBg2 = (u16) (gEntityInfo[0x12].yPosBg2 - gUnk_03005400.unk13);
                    }
                }
                break;

            case 6:
                if (gUnk_03005400.unk0 == 0)
                {
                    if ((gUnk_03005400.unkC == 1) && ((thunk_GetRandomValue() % 100) > 0x46))
                    {
                        gEntityInfo[arg0].xPosBg2 = gEntityInfo[0].xPosBg2;
                        gEntityInfo[arg0].priority = 0;
                        gUnk_03005400.unk8_0 = 0;
                        m4aSongNumStart(0x42);
                        gUnk_03005400.unkA = 0xD;
                    }
                    else
                    {
                        gUnk_03005400.unk13 = thunk_GetRandomValue() % 6;
                        while ((gUnk_03005400.unk14 >> gUnk_03005400.unk13) & 1)
                        {
                            gUnk_03005400.unk13 = (gUnk_03005400.unk13 + 1) % 6;
                        }
                        gEntityInfo[0x12].xPosBg2 = (gUnk_03005400.unk13 << 6) + 0x50;
                        gUnk_03003590[0].unk4 = 0x40;
                        m4aSongNumStart(0x6C);
                        gUnk_03005400.unkA = 7;
                    }
                }
                break;

            case 7:
                if (gEntityInfo[arg0].yPosBg2 <= 0x190)
                {
                    gEntityInfo[arg0].yPosBg2 += 8;
                }
                else
                {
                    gEntityInfo[arg0].priority = 0;
                    gUnk_03005400.unkA = 0;
                }
                break;

            case 1:
                gUnk_03005400.unk8_0 = 1;
                gUnk_03005400.unk8_6 = 1;
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    sub_0803F950(0x1C);
                    gUnk_03005400.unkA = 2;
                    sub_08025B78(arg0, 2);
                    gUnk_03005400.unk0 = 0x3C;
                }
                break;

            case 2:
                if (gUnk_03005400.unk0 != 0)
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 10) == 5)
                    {
                        DmaCopy16Wait(3, &gUnk_08078628, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    }
                    if ((gUnk_03004C20.sceneFrameCounter % 10) == 0)
                    {
                        DmaFill16(3, 0xFFFF, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    }
                }
                else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    DmaCopy16Wait(3, &gUnk_08078768, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    sub_08025B78(arg0, 3);
                    if (gUnk_03005400.unkC == 0)
                    {
                        gUnk_03005400.unkA = 9;
                    }
                    else
                    {
                        gUnk_03005400.unkA = 3;
                    }
                }
                break;

            case 3:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    gUnk_03003590[0].unk4 += 4;
                    if (gEntityInfo[arg0].yPosBg2 <= 0x190)
                    {
                        gEntityInfo[arg0].yPosBg2 += 2;
                        return;
                    }
                    for (var_r2 = 0; var_r2 < (0xA - ((gUnk_03005400.unkC - 1) * 2)); var_r2++)
                    {
                        gEntityInfo[var_r2 + 0x16].unkF = 0x18;
                    }
                    gEntityInfo[arg0].xPosBg2 = 0xF0 - ((8 - gBgInfo[1].hOfs) * 4);
                    gEntityInfo[arg0].yPosBg2 = 0xF0;
                    gEntityInfo[arg0].priority = 2;
                    gUnk_03003590[0].unk4 = 0xC0;
                    gUnk_03003590[0].unk2 = 0xFF60;
                    gUnk_03003590[0].unk0 = 0xFF60;
                    gUnk_03005400.unk4 = 1;
                    gUnk_03005400.unkA = 8;
                    gEntityInfo[arg0].unkF = 0x1A;
                    DmaCopy16Wait(3, &gUnk_08078728, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    sub_08025B78(arg0, 6);
                }
                break;

            case 8:
                gEntityInfo[arg0].xPosBg2 = 0xF0 - ((8 - gBgInfo[1].hOfs) * 4);
                if (gUnk_03005220.hearts == 0)
                {
                    return;
                }

                for (var_r5 = 0; var_r5 < 6; var_r5++)
                {
                    if ((gEntityInfo[var_r5 + 0x16].unkF == 0x1C) && (((gUnk_03005400.unk14 >> var_r5) & 1) == 0))
                    {
                        gEntityInfo[var_r5 + 0x16].unk8.split.unk8 -= 1;
                        if (gEntityInfo[var_r5 + 0x16].unk8.split.unk8 == 0x3C)
                        {
                            if (gEntityInfo[0].yPosBg2 > 0x122)
                            {
                                gEntityInfo[0].yPosBg2 = 0x122;
                            }
                            sub_0803F68C(var_r5, 6, 0);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 1;
                        }
                        else if (gEntityInfo[var_r5 + 0x16].unk8.split.unk8 == 0x28)
                        {
                            if (gEntityInfo[0].yPosBg2 > 0x10A)
                            {
                                gEntityInfo[0].yPosBg2 = 0x10A;
                            }
                            sub_0803F68C(var_r5, 7, 0);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 1;
                        }
                        else if (gEntityInfo[var_r5 + 0x16].unk8.split.unk8 == 0x14)
                        {
                            if (gEntityInfo[0].yPosBg2 > 0xF2)
                            {
                                gEntityInfo[0].yPosBg2 = 0xF2;
                            }
                            sub_0803F68C(var_r5, 8, 0);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 1;
                        }
                        else if (gEntityInfo[var_r5 + 0x16].unk8.split.unk8 == 0)
                        {
                            if (gEntityInfo[0].yPosBg2 > 0xDA)
                            {
                                gEntityInfo[0].yPosBg2 = 0xDA;
                            }
                            sub_0803F68C(var_r5, 9, 0);
                            gUnk_03005400.unkE_1 = 1;
                            gUnk_03005400.unkD = 1;
                            gUnk_03005400.unk14 |= 1 << var_r5;
                        }
                    }
                }

                if (gUnk_03005400.unk14 != 0xFF)
                {
                    break;
                }
                if (gEntityInfo[0x16].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x17].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x18].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x19].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x1A].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x1B].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x1C].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x1D].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x1E].unkF != 0x1C)
                {
                    break;
                }
                if (gEntityInfo[0x1F].unkF != 0x1C)
                {
                    break;
                }

                DmaCopy16Wait(3, &gUnk_08078728, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                gUnk_03005400.unk15 = 0;
                gUnk_03005400.unk16 = 0;
                if (gUnk_03005400.unk4 != 0)
                {
                    gEntityInfo[arg0].unkF = 0;
                    gEntityInfo[arg0].unk10 = 1;
                    if (gUnk_03005400.unk4 != 0)
                    {
                        if (gEntityInfo[arg0].yPosBg2 > 0x2A)
                        {
                            gEntityInfo[arg0].yPosBg2 -= 2;
                            break;
                        }
                    }
                    gEntityInfo[arg0].xPosBg2 = gEntityInfo[0].xPosBg2;
                    gEntityInfo[arg0].priority = 0;
                    gUnk_03003590[0].unk2 = 0;
                    gUnk_03003590[0].unk0 = 0;
                    gUnk_03003590[0].unk4 = 0x40;
                    gUnk_03005400.unk4 = 0;
                    gUnk_03005400.unk6 = 0;
                    gUnk_03005400.unk8_0 = 0;
                    m4aSongNumStart(0x42);
                    gUnk_03005400.unkA = 0xD;
                }
                else
                {
                    gUnk_03005400.unkA = 0;
                }
                break;

            case 9:
                if (gEntityInfo[0x12].yPosBg2 > 0x9F)
                {
                    gEntityInfo[0x12].yPosBg2 -= 4;
                }
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
                {
                    return;
                }

                DmaCopy16Wait(3, &gUnk_08078728, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                for (var_r4 = 0; var_r4 < 6; var_r4++)
                {
                    sub_0803F68C(var_r4, 0, 0);
                }
                if (gEntityInfo[0].yPosBg2 > 0xDA)
                {
                    gEntityInfo[0].yPosBg2 = 0xDA;
                }

                gEntityInfo[0x26].unkF = 0;
                gEntityInfo[0x25].unkF = 0;
                gEntityInfo[0x24].unkF = 0;

                gEntityInfo[0x24].xPosBg2 = gEntityInfo[0x25].xPosBg2 = gEntityInfo[0x26].xPosBg2 = gEntityInfo[0x12].xPosBg2;

                gEntityInfo[0x24].yPosBg2 = gEntityInfo[0x25].yPosBg2 = gEntityInfo[0x26].yPosBg2 = gEntityInfo[0x12].yPosBg2;

                gEntityInfo[0x24].unk8.split.unk8 = (((thunk_GetRandomValue() % 3) + 1) * 10) + 0x78;
                gEntityInfo[0x25].unk8.split.unk8 = (((thunk_GetRandomValue() % 3) + 1) * 10) + 0x64;
                gEntityInfo[0x26].unk8.split.unk8 = (((thunk_GetRandomValue() % 3) + 1) * 10) + 0x5A;

                gEntityInfo[0x12].unkF = 0x1C;
                gEntityInfo[0x12].unk10 = 0;
                gUnk_03005400.unkA = 0xA;
                m4aSongNumStart(0x80);
                break;

            case 10:
                if ((gEntityInfo[arg0].yPosBg2 <= 0xB3) && (gUnk_03004C20.sceneFrameCounter & (arg0 - 0x23)))
                {
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 += 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 -= 1;
                    }
                    if (gEntityInfo[arg0].xPosBg2 < 0x50)
                    {
                        gEntityInfo[arg0].xPosBg2 = 0x50;
                    }
                    if (gEntityInfo[arg0].xPosBg2 > 0x190)
                    {
                        gEntityInfo[arg0].xPosBg2 = 0x190;
                    }
                }
                if (gEntityInfo[arg0].unk8.split.unk8 != 0)
                {
                    gEntityInfo[arg0].unk8.split.unk8 -= 1;
                }
                if (gEntityInfo[arg0].unk8.split.unk8 > 0x50)
                {
                    gEntityInfo[arg0].yPosBg2 -= 1;
                }
                else if (gEntityInfo[arg0].unk8.split.unk8 <= 0x3C)
                {
                    if (gEntityInfo[arg0].unk8.split.unk8 <= 0x28)
                    {
                        if (gEntityInfo[arg0].yPosBg2 <= 0xD7)
                        {
                            gEntityInfo[arg0].yPosBg2 += 1;
                        }
                    }
                }
                if (gEntityInfo[0x24].yPosBg2 <= 0xD7)
                {
                    break;
                }
                if (gEntityInfo[0x25].yPosBg2 <= 0xD7)
                {
                    break;
                }
                if (gEntityInfo[0x26].yPosBg2 <= 0xD7)
                {
                    break;
                }
                if (arg0 != 0x24)
                {
                    break;
                }
                if ((gUnk_03005220.unk31 == 0) && (gUnk_03005220.unk35 == 0))
                {
                    break;
                }
                gUnk_03005400.unkE_4 = 1;
                (&gEntityInfo[0x24])->unkF = 3; // TODO: fix
                break;

            case 11:
                gEntityInfo[arg0].xPosBg2 = 0xF0 - ((8 - gBgInfo[1].hOfs) * 4);
                if ((s16) gUnk_03003590[0].unk0 > -0xA0)
                {
                    gUnk_03003590[0].unk0 -= 2;
                    gUnk_03003590[0].unk2 -= 2;
                }
                if (gEntityInfo[arg0].yPosBg2 < 0xE0)
                {
                    gEntityInfo[arg0].yPosBg2 += 2;
                }
                else
                {
                    gUnk_03005400.unkA = 0xC;
                }
                break;

            case 12:
                for (var_r2 = 0; var_r2 < (0xA - ((gUnk_03005400.unkC - 1) * 2)); var_r2++)
                {
                    gEntityInfo[var_r2 + 0x16].unkF = 0x18;
                }
                gUnk_03005400.unkA = 8;
                gEntityInfo[arg0].unkF = 0x1A;
                break;

            case 13:
                if (gUnk_03005400.unk6 == 0)
                {
                    gEntityInfo[arg0].yPosBg2 += 4;
                    if (gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)]); // FAKE
                    if ((gUnk_03004654[0x1B] <= gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[arg0].xPosBg2 >> 3) + (((gEntityInfo[arg0].yPosBg2 - 8) >> 3) * gBgInfo[2].hLength)]) && (gEntityInfo[arg0].yPosBg2 > 0x64))
                    {
                        if (gEntityInfo[arg0].xPosBg2 < gEntityInfo[0].xPosBg2)
                        {
                            gEntityInfo[arg0].unkC_2 = 1;
                        }
                        else
                        {
                            gEntityInfo[arg0].unkC_2 = 0;
                        }
                        gUnk_03005400.unk6 = 1;
                        m4aSongNumStart(0x7F);
                        gUnk_03005400.unk8_0 = 1;
                    }
                }
                if (gUnk_03005400.unk6 == 1)
                {
                    if ((s16) gUnk_03003590[0].unk0 <= 0x7F)
                    {
                        gUnk_03003590[0].unk0 += 4;
                        gUnk_03003590[0].unk2 += 4;
                    }
                    else
                    {
                        gUnk_03005400.unk6 = 2;
                    }
                    gUnk_03003590[0].unk4 += 4;
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 += 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 -= 1;
                    }
                    gEntityInfo[arg0].yPosBg2 -= 1;
                }
                if (gUnk_03005400.unk6 == 2)
                {
                    if ((s16) gUnk_03003590[0].unk0 <= 0x9F)
                    {
                        gUnk_03003590[0].unk0 += 4;
                        gUnk_03003590[0].unk2 += 4;
                    }
                    gUnk_03003590[0].unk4 += 4;
                    if (gEntityInfo[arg0].unkC_2 == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 += 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 -= 1;
                    }
                    gEntityInfo[arg0].yPosBg2 += 2;
                    if (gEntityInfo[arg0].yPosBg2 > 0x17B)
                    {
                        gUnk_03005400.unk6 = 0;
                        gUnk_03005400.unk8_0 = 0;
                        gEntityInfo[arg0].priority = 1;
                        gUnk_03005400.unkA = 0;
                    }
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 3)
    {
        sub_0803CF08(arg0);
    }
}

void sub_08040B50(u8 arg0)
{
    u8 var_sb;

    if ((gEntityInfo[0x18].unkF == arg0) && (gUnk_03005400.unkC > 2))
    {
        return;
    }

    if (arg0 == 0)
    {
        if (gEntityInfo[0x18].unkF == 0)
        {
            return;
        }

        gUnk_03004C20.room = gUnk_03005400.unkC;

        for (var_sb = 0; var_sb < 6; var_sb++)
        {
            sub_08003DC0(var_sb + 0x18, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb + 0xB].unk28, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb + 0xB].unk0[gUnk_03004C20.room - 1].unk0, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb + 0xB].unk0[gUnk_03004C20.room - 1].unk2, 0, 0, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb + 0xB].unk0[gUnk_03004C20.room - 1].unk5, arg0, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb + 0xB].unk29);

            if ((gEntityInfo[var_sb + 0x18].unkC_4 == 3) || (gEntityInfo[var_sb + 0x18].unkC_4 == 1))
            {
                DmaCopy16(3, &gUnk_08064868, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb + 0xC].tileNum * 0x20), 0x200);
            }
            else
            {
                DmaCopy16(3, &gUnk_080B9468, (void*)0x06010000 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb + 0xC].tileNum * 0x20), 0x200);
            }
        }
    }
    else
    {
        gEntityInfo[0x1D].unkF = 0x1C;
        gEntityInfo[0x1C].unkF = 0x1C;
        gEntityInfo[0x1B].unkF = 0x1C;
        gEntityInfo[0x1A].unkF = 0x1C;
        gEntityInfo[0x19].unkF = 0x1C;
        gEntityInfo[0x18].unkF = 0x1C;

        gEntityInfo[0x1D].unk10 = 0;
        gEntityInfo[0x1C].unk10 = 0;
        gEntityInfo[0x1B].unk10 = 0;
        gEntityInfo[0x1A].unk10 = 0;
        gEntityInfo[0x19].unk10 = 0;
        gEntityInfo[0x18].unk10 = 0;
    }
}

void sub_08040D68(void)
{
    u8 var_r5;

    if (gEntityInfo[0x18].unkF == 0x1C)
    {
        return;
    }

    if (gUnk_03004C20.room == 1)
    {
        if (gEntityInfo[0x1A].unkF == 0)
        {
            gEntityInfo[0x1A].unkF = 0x10;
        }

        if (gEntityInfo[0x1A].unkF == 0x10)
        {
            if (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][0xD].unk0[gUnk_03004C20.room - 1].unk4 <= ++gEntityInfo[0x1A].unk8.split.unk8)
            {
                gEntityInfo[0x1A].unkF = 0x11;
            }
        }
        else
        {
            gEntityInfo[0x1A].unk8.split.unk8 -= 1;
            if (gEntityInfo[0x1A].unk8.split.unk8 == 0)
            {
                gEntityInfo[0x1A].unkF = 0x10;
            }
        }

        gEntityInfo[0x1A].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][0xD].unk0[gUnk_03004C20.room - 1].unk0 + gEntityInfo[0x1A].unk8.split.unk8;
    }
    else if (gUnk_03004C20.room == 2)
    {
        if (gEntityInfo[0x19].unkF == 0)
        {
            gEntityInfo[0x19].unkF = 0xE;
        }

        if (gEntityInfo[0x1C].unkF == 0)
        {
            gEntityInfo[0x1C].unkF = 0xF;
        }

        for (var_r5 = 0; var_r5 < 4; var_r5 += 3)
        {
            if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
            {
                return;
            }

            if (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_r5 + 0xC].unk0[gUnk_03004C20.room - 1].unk4 <= ++gEntityInfo[var_r5 + 0x19].unk8.split.unk8)
            {
                if (gEntityInfo[var_r5 + 0x19].unkF == 0xE)
                {
                    gEntityInfo[var_r5 + 0x19].unkF = 0xF;
                }
                else
                {
                    gEntityInfo[var_r5 + 0x19].unkF = 0xE;
                }
                gEntityInfo[var_r5 + 0x19].unk8.split.unk8 = 0;
            }

            if (gEntityInfo[var_r5 + 0x19].unkF == 0xE)
            {
                gEntityInfo[var_r5 + 0x19].yPosBg2 -= 1;
            }
            else
            {
                gEntityInfo[var_r5 + 0x19].yPosBg2 += 1;
            }
        }
    }
}

void sub_08040F1C(u8 arg0)
{
    s8 temp_r1_4;
    s8 temp_r2_4;
    u32 var_r1_4;
    u8 var_r4_2;

    sub_0803D4AC(arg0, gUnk_03003620);
    gEntityInfo[arg0].affineHFlip_matrixNum = 3;
    gEntityInfo[arg0].affineDouble = 1;
    gUnk_03003590[0].unk5_0 = gEntityInfo[0x12].unkC_2;
    if (gUnk_03005400.unk0 != 0)
    {
        gUnk_03005400.unk0 -= 1;
    }

    if ((gEntityInfo[0].yPosBg2 > 0x14F) && (gUnk_03005220.hearts != 0))
    {
        gUnk_03005220.hearts = 1;
        sub_08014624(1);
    }
    sub_08040D68();

    if ((gEntityInfo[0x13].yPosBg2 > 0x100) && (gEntityInfo[0x13].unkF != 0x1C))
    {
        sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2, 0x13);
        gEntityInfo[0x13].unkF = 0x1C;
    }

    if ((gEntityInfo[0x14].yPosBg2 > 0x100) && (gEntityInfo[0x14].unkF != 0x1C))
    {
        sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2, 0x14);
        gEntityInfo[0x14].unkF = 0x1C;
    }

    if (gEntityInfo[arg0].unkF == 14)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0x0:
                gUnk_03005400.unk8_0 = 1;
                gUnk_03005400.unk9 = 0;
                gUnk_03003590[0].unk0 = -0xD0;
                gUnk_03003590[0].unk2 = -0xD0;
                gEntityInfo[arg0].yPosBg2 = 0;
                gEntityInfo[arg0].priority = 2;
                sub_08025B78(arg0, 8);
                sub_08040B50(0);
                gEntityInfo[0x12].unk8.split.unk8 = 0;

                gUnk_03005400.unkA = 1;
                gUnk_030007E0.unkC_0 = 0;
                gUnk_030007E0.unkC_4 = 0;
                gUnk_030007E0.unk6 = 0x78;
                gUnk_030007E0.unk0 = 0x78;
                gUnk_030007E0.unk8 = 0x46;
                gUnk_030007E0.unk2 = 0x46;
                gUnk_030007E0.unkA = 0x60;
                gUnk_030007E0.unk4 = 0x60;
                gUnk_03005400.unkE_2 = 1;
                gUnk_03005400.unkE_7 = 1;
                break;

            case 0x1:
                gEntityInfo[0x12].yPosBg2 = gSineTable[gEntityInfo[0x12].unk8.split.unk8++ + 0x8];
                gUnk_03003590[0].unk0 += 2;
                gUnk_03003590[0].unk2 += 2;

                if (gEntityInfo[0x12].unk8.split.unk8 < 0x50)
                {
                    gEntityInfo[0x12].priority = 2;
                }
                else
                {
                    gEntityInfo[0x12].priority = 1;
                }

                if (gEntityInfo[0x12].unk8.split.unk8 == 0x5A)
                {
                    gUnk_03005400.unkA = 2;
                    gUnk_03005400.unk14 = 0;
                    gBg2Alpha = 1;
                    gUnk_03005400.unk16 = 1;
                }
                break;

            case 0x2:
                gUnk_03003590[0].unk0 += 8;
                gUnk_03003590[0].unk2 += 8;
                if ((s16) gUnk_03003590[0].unk0 <= 0)
                {
                    gUnk_03003590[0].unk2 = 0;
                    gUnk_03003590[0].unk0 = 0;
                    gUnk_03005400.unkA = 3;
                    gUnk_03005400.unk16 = 2;
                }
                break;

            case 0x3:
                gUnk_03003590[0].unk0 -= 8;
                if (-((s16)gUnk_03003590[0].unk0) >= ((gBg2XMag + gUnk_081168DC[gUnk_03004C20.world - 1]) - 0x20))
                {
                    sub_08025B78(arg0, 0);
                    sub_08025B78(0x17, 0);
                    gUnk_03005400.unkA = 4;
                    gUnk_03005400.unk16 = 4;
                }
                break;

            case 0x4:
                if (gEntityInfo[arg0].yPosBg2 > 0xA0)
                {
                    gEntityInfo[arg0].yPosBg2 -= 1;
                }

                if ((((s16) gUnk_03003590[0].unk0 >= 0) || ((s16) (gUnk_03003590[0].unk0 += 8) >= 0)) && (gEntityInfo[arg0].yPosBg2 <= 0xB0))
                {
                    gUnk_03005400.unkA = 0xFF;
                    gUnk_03005400.unk0 = 0x40;
                    gUnk_03005400.unk16 = 6;
                }
                break;

            case 0xFF:
                if (gUnk_03005400.unk0 == 0)
                {
                    gUnk_03005400.unk8_0 = 0;
                    gEntityInfo[arg0].unkF = 0;
                    gUnk_03005400.unkB = 4;
                    gUnk_03005400.unkA = 6;
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 0)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0:
                temp_r1_4 = thunk_GetRandomValue() % 0x20;
                if (temp_r1_4 < gUnk_08116A4E[(gUnk_03005400.unkC > 2) ? 2 : 1][0])
                {
                    gUnk_03005400.unk0 = gUnk_08116A4E[0][0];
                }
                else if (temp_r1_4 < (gUnk_08116A4E[(gUnk_03005400.unkC > 2) ? 2 : 1][0] + gUnk_08116A4E[(gUnk_03005400.unkC > 2) ? 2 : 1][1]))
                {
                    gUnk_03005400.unk0 = gUnk_08116A4E[0][1];
                }
                else if (temp_r1_4 < (gUnk_08116A4E[(gUnk_03005400.unkC > 2) ? 2 : 1][0] + gUnk_08116A4E[(gUnk_03005400.unkC > 2) ? 2 : 1][1] + gUnk_08116A4E[(gUnk_03005400.unkC > 2) ? 2 : 1][2]))
                {
                    gUnk_03005400.unk0 = gUnk_08116A4E[0][2];
                }
                else
                {
                    gUnk_03005400.unk0 = gUnk_08116A4E[0][3];
                }

                if (gEntityInfo[arg0].xPosBg2 == 0xF0)
                {
                    gUnk_03005400.unk8_6 = 1;
                    gUnk_03005400.unk0 = 0;
                    gUnk_03005400.unk13 = 0;
                    m4aSongNumStart(0x6E);
                    gUnk_03005400.unkA = 9;
                }
                else
                {
                    gUnk_03005400.unkA = 0xE;
                }
                break;

            case 1:
                gUnk_03003590[0].unk0 += 2;
                gUnk_03003590[0].unk2 -= 2;

                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    sub_08040B50(0x1C);
                    if (gUnk_03005400.unkC == 0)
                    {
                        gUnk_03005400.unk8_4 = 1;
                        gUnk_03005400.unkA = 2;
                    }
                    else
                    {
                        for (var_r4_2 = 0; var_r4_2 < 2; var_r4_2++)
                        {
                            if (gEntityInfo[var_r4_2 + 0x15].unkF != 0x1C)
                            {
                                sub_0801E664(gEntityInfo[var_r4_2 + 0x15].xPosBg2, gEntityInfo[var_r4_2 + 0x15].yPosBg2, 2, var_r4_2 + 0x15);
                            }
                        }

                        gUnk_03005400.unk8_4 = 0;
                        gUnk_03005400.unk15 = 5 - gUnk_03005400.unkC;                        
                        gUnk_03005400.unk8_2 = 0;
                        gUnk_03005400.unkE_2 = 1;
                        gUnk_03005400.unkA = 0xF;
                    }
                }
                break;

            case 5:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 0)
                {
                    sub_08025B78(arg0, 0);
                }

                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + (gSineTable[(gUnk_03004C20.sceneFrameCounter * 4) & 0xFF] >> 5);
                if ((gEntityInfo[0x15].unkF == 0x1C) && (gEntityInfo[0x16].unkF == 0x1C) && (gEntityInfo[0x13].unkF == 0x1C) && (gEntityInfo[0x14].unkF == 0x1C))
                {
                    gUnk_03005400.unkA = 6;
                    gUnk_03005400.unkB = 4;
                }
                else
                {
                    if (((gEntityInfo[arg0].xPosBg2 - 0x18) < gEntityInfo[0].xPosBg2) && ((gEntityInfo[arg0].xPosBg2 + 0x18) > gEntityInfo[0].xPosBg2))
                    {
                        if (gUnk_03005400.unk13 == 1)
                        {
                            sub_08025B78(arg0, 3);
                            gUnk_03005400.unkA = 0xC;
                            gUnk_03005400.unk13 = 0;
                        }
                        else
                        {
                            goto block_89;
                        }
                    }
                    else
                    {
                        gUnk_03005400.unk13 = 1;
block_89:
                        if (gUnk_03005400.unk0 == 0)
                        {
                            if ((gUnk_03005400.unkC <= 2) && ((thunk_GetRandomValue() % 100) < 50))
                            {
                                sub_08040B50(0x1C);
                                gUnk_03005400.unk15 = 5 - gUnk_03005400.unkC;
                                gUnk_03005400.unkA = 0xF;
                            }
                            else
                            {
                                gUnk_03005400.unk8_6 = 1;
                                gUnk_03005400.unk0 = 0;
                                gUnk_03005400.unk13 = 0;
                                m4aSongNumStart(0x6E);
                                gUnk_03005400.unkA = 9;
                            }
                        }
                    }
                }
                break;

            case 12:
                if (gUnk_03005400.unk8_2 == 0)
                {
                    if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                    {
                        gUnk_03005400.unk8_4 = 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].yPosBg2 -= 1;
                    }
                }
                else
                {
                    if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state != 1)
                    {
                        sub_08025B78(arg0, 1);
                        m4aSongNumStart(0x6D);
                        gUnk_03005400.unkE_1 = 1;
                        gUnk_03005400.unkD = 2;
                        if (gEntityInfo[arg0].xPosBg2 > 0x118)
                        {
                            gBg2Alpha = 0xE;
                            gUnk_03005400.unkE_2 = 0;
                        }
                        if (gEntityInfo[arg0].xPosBg2 <= 0xC7)
                        {
                            gBg2Alpha = 0xF2;
                            gUnk_03005400.unkE_2 = 0;
                        }

                        if (gUnk_03005220.unk31 != 0)
                        {
                            gEntityInfo[0].yPosBg2 += (((gEntityInfo[0].xPosBg2 - 0xF0) * gSineTable[gBg2Alpha]) >> 8);
                            if ((s16) ((gEntityInfo[0].xPosBg2 - 0xF0) * gSineTable[gBg2Alpha]) < 0)
                            {
                                gEntityInfo[0].yPosBg2 -= 0x20;
                            }
                        }
                    }
                    if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
                    {

                    }
                    else
                    {
                        gUnk_03005400.unk8_4 = 0;
                        gUnk_03005400.unk8_2 = 0;
                        gUnk_03005400.unk13 = 0;
                        m4aSongNumStart(0x6E);
                        gUnk_03005400.unkA = 9;
                        gUnk_03005400.unk0 = 0x20;
                    }
                }
                break;

            case 9:
                gUnk_03005400.unk8_6 = 1;
                gUnk_03005400.unk8_0 = 1;
                if (gUnk_03005400.unk0 != 0)
                {

                }
                else
                {
                    gUnk_03003590[0].unk2 -= 8;
                    gUnk_03003590[0].unk0 += 8;
                    gEntityInfo[0x12].xPosBg2 += (gUnk_03005400.unk13 * (1 - ((gUnk_03004C20.sceneFrameCounter % 2) * 2)));
                    gUnk_03005400.unk13 += 4;
                    if (-((s16) gUnk_03003590[0].unk2) < ((gBg2YMag + gUnk_081168DC[gUnk_03004C20.world - 1]) - 0x20))
                    {

                    }
                    else
                    {
                        temp_r2_4 = thunk_GetRandomValue() % 0x20;
                        if (gEntityInfo[0].xPosBg2 <= 0xEF)
                        {
                            gEntityInfo[arg0].unk8.all = 2;
                        }
                        else
                        {
                            gEntityInfo[arg0].unk8.all = 3;
                        }

                        if (temp_r2_4 <= 7)
                        {
                            gUnk_03005400.unk0 = 0x78;
                        }
                        else if (temp_r2_4 <= 0x17)
                        {
                            gUnk_03005400.unk0 = 0xB4;
                        }
                        else
                        {
                            gUnk_03005400.unk0 = 0xF0;
                        }

                        gUnk_03005400.unkE_2 = 1;
                        gEntityInfo[arg0].yPosBg2 = 0;
                        gUnk_03005400.unkA = 0xB;
                    }
                }
                break;

            case 11:
                if (gUnk_03005400.unk0 != 0)
                {

                }
                else
                {
                    gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gEntityInfo[arg0].unk8.all - 1].unk2;
                    gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gEntityInfo[arg0].unk8.all - 1].unk0;
                    gEntityInfo[arg0].unk8.all = gEntityInfo[arg0].xPosBg2;

                    gUnk_03005400.unkA = 0xA;
                    sub_08025B78(arg0, 0);
                    sub_08040B50(0);
                    m4aSongNumStart(0x6E);
                }
                break;

            case 10:
                gUnk_03003590[0].unk2 += 4;
                gUnk_03003590[0].unk0 -= 4;

                gEntityInfo[0x12].xPosBg2 = gEntityInfo[arg0].unk8.all + (gUnk_03005400.unk13 * (1 - ((gUnk_03004C20.sceneFrameCounter % 2) * 2)));

                if (gUnk_03005400.unk13 != 0)
                {
                    gUnk_03005400.unk13 -= 2;
                }

                if ((s16) gUnk_03003590[0].unk0 == 0)
                {
                    gUnk_03003590[0].unk0 = 0;
                    gUnk_03003590[0].unk2 = 0;
                    gUnk_03005400.unk8_6 = 0;
                    gUnk_03005400.unk8_0 = 0;
                    sub_08025B78(arg0, 2);
                    gUnk_03005400.unk13 = 0;
                    gUnk_03005400.unkA = 0;
                }
                break;

            case 14:
                if (gUnk_03005400.unk13 == 4)
                {
                    gUnk_03005400.unkA = 5;
                }
                else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
                {

                }
                else
                {
                    gEntityInfo[arg0].unkC_2 ^= 1;
                    sub_08025B78(arg0, 2);
                    gUnk_03005400.unk13 += 1;
                }
                break;

            case 6:
                if (gEntityInfo[arg0].xPosBg2 < gEntityInfo[0].xPosBg2)
                {
                    gEntityInfo[arg0].unkC_2 = 0;
                }
                else
                {
                    gEntityInfo[arg0].unkC_2 = 1;
                }
                sub_08025B78(arg0, 7);
                gUnk_03005400.unkA = 7;
                break;

            case 7:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
                {

                }
                else
                {
                    if (gUnk_03005400.unkB == 4)
                    {
                        sub_08025B78(arg0, 5);
                    }
                    else if (gUnk_03005400.unkB == 8)
                    {
                        sub_08025B78(arg0, 9);
                    }
                    gUnk_03005400.unkA = gUnk_03005400.unkB;
                }
                break;

            case 8:
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + (gSineTable[(gUnk_03004C20.sceneFrameCounter * 4) & 0xFF] >> 5);
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
                {

                }
                else
                {
                    gUnk_03005400.unkA = 5;
                }
                break;

            case 4:
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 + (gSineTable[(gUnk_03004C20.sceneFrameCounter * 4) & 0xFF] >> 5);
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer != 0xFF)
                {

                }
                else if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 5)
                {
                    gEntityInfo[0x16].unkF = 0x19;
                    gEntityInfo[0x15].unkF = 0x19;
                    m4aSongNumStart(0x6A);
                    sub_08025B78(arg0, 6);
                }
                else
                {
                    gUnk_03005400.unkA = 0;
                }
                break;

            case 15:
                if ((s16) gEntityInfo[0x12].yPosBg2 > -0x20)
                {
                    gEntityInfo[0x12].yPosBg2 = (gEntityInfo[0x12].yPosBg2 - 1) & ~3;
                }
                else
                {
                    gUnk_03005400.unk13 = thunk_GetRandomValue() % 3;                    
                    gUnk_03003590[0].unk0 = gUnk_03003590[0].unk2 = 0x20 - (gBg2YMag + gUnk_081168DC[gUnk_03004C20.world - 1]);
                    gUnk_03005400.unk8_0 = 1;
                    gUnk_03005400.unk8_6 = 1;

                    gEntityInfo[0x12].xPosBg2 = gUnk_03005400.unk13 * 0xF0;
                    if (gUnk_03005400.unk13 != 1)
                    {
                        gEntityInfo[0x12].xPosBg2 += ((thunk_GetRandomValue() % 2) * 0x20);
                    }
                    gEntityInfo[0x12].unk8.split.unk8 = 0;
                    gEntityInfo[0x12].priority = 2;

                    sub_08025B78(arg0, 8);
                    gUnk_03005400.unk0 = 0x20;
                    gUnk_03005400.unkA = 0xD;
                }
                break;

            case 13:
                if (gUnk_03005400.unk0 != 0)
                {

                }
                else if ((gUnk_03004C20.sceneFrameCounter & 1) && (gEntityInfo[0x12].unk8.split.unk8 < (gUnk_03005400.unkC * 0xA)))
                {

                }
                else
                {
                    if (gUnk_03005400.unk13 == 0)
                    {
                        if (gEntityInfo[0x12].unk8.split.unk8 < 0x40)
                        {
                            gEntityInfo[0x12].xPosBg2 += 4;
                        }
                        else if (gEntityInfo[0x12].unk8.split.unk8 < 0x60)
                        {
                            gEntityInfo[0x12].xPosBg2 += 3;
                        }
                    }
                    else if (gUnk_03005400.unk13 == 2)
                    {
                        if (gEntityInfo[0x12].unk8.split.unk8 < 0x40)
                        {
                            gEntityInfo[0x12].xPosBg2 -= 5;
                        }
                        else if (gEntityInfo[0x12].unk8.split.unk8 < 0x60)
                        {
                            gEntityInfo[0x12].xPosBg2 -= 2;
                        }
                    }

                    if (gEntityInfo[0x12].unk8.split.unk8 >= 0x20)
                    {
                        if (gEntityInfo[0x12].unk8.split.unk8 == 0x20)
                        {
                            m4aSongNumStart(0x6F);
                        }
                        else if (gEntityInfo[0x12].unk8.split.unk8 < 0x40)
                        {
                            if (gUnk_03004C20.sceneFrameCounter & 2)
                            {
                                gUnk_03005400.unkE_1 = 1;
                                gUnk_03005400.unkD = 1;
                            }

                            gUnk_03003590[0].unk0 += 1;
                            gUnk_03003590[0].unk2 += 1;
                        }
                        else
                        {
                            if (gUnk_03004C20.sceneFrameCounter & 2)
                            {
                                gUnk_03005400.unkE_1 |= 1;
                                gUnk_03005400.unkD = 3;
                            }

                            gUnk_03005400.unk8_0 = 0;
                            gUnk_03003590[0].unk0 += 0xA;
                            gUnk_03003590[0].unk2 += 0xA;
                        }
                    }

                    gEntityInfo[0x12].yPosBg2 = gSineTable[gEntityInfo[0x12].unk8.split.unk8++ + 0x8];
                    if (gEntityInfo[0x12].unk8.split.unk8 == 0x70)
                    {
                        gEntityInfo[0x12].priority = 1;
                        gEntityInfo[0x12].yPosBg2 = 0;

                        gUnk_03005400.unk15 -= 1;
                        if ((s8) gUnk_03005400.unk15 == 0)
                        {
                            gUnk_03005400.unkA = 9;
                            gUnk_03003590[0].unk2 = 0;
                            gUnk_03003590[0].unk0 = 0;
                        }
                        else
                        {
                            gUnk_03005400.unkA = 0xF;
                        }
                    }
                }
                break;

            case 2:
                if (gUnk_03005400.unk8_2 != 0)
                {
                    sub_08025B78(arg0, 1);
                    gUnk_03005400.unkA = 3;
                }
                break;

            case 3:
                if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
                {
                    if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0xA)
                    {
                        if (gUnk_03005220.unk31 != 0)
                        {
                            gUnk_03005400.unkE_4 = 1;
                            gEntityInfo[arg0].unkF = 3;
                        }
                    }
                    else
                    {
                        sub_08025B78(arg0, 0xA);
                        m4aSongNumStart(0x81);
                    }
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 3)
    {
        gNewKeys = gHeldKeys = 0;
        sub_0803CF08(arg0);
    }
    else if (gEntityInfo[arg0].unkF == 4)
    {
        gNewKeys = gHeldKeys = 0;
    }
    {
        // TODO: put gUnk_08117110 data here
        u16 subroutine_arg0[8];
        memcpy(&subroutine_arg0, &gUnk_08117110, 0x10);
        if (gUnk_03005400.unkA == 0xD)
        {
            var_r1_4 = (gUnk_03004C20.sceneFrameCounter / 2) % 8;
        }
        else
        {
            var_r1_4 = (gUnk_03004C20.sceneFrameCounter / 8) % 8;
        }
        DmaCopy16(3, &gBgTilemapBufs[1][subroutine_arg0[var_r1_4] * 0x20], &gBgTilemapBufs[1][0x220], 0xC0);
    }
    
}

void sub_08041E94(u8 arg0, u8 arg1)
{
    u8 *var_r3;
    u8 var_r4;
    void *var_r1;

    if (arg0 == 0xFF)
    {
        var_r3 = &gUnk_03003790[0][arg1];
        var_r1 = gBgDataPtrs.pBufBg2Tilemap + ((gBgInfo[2].hLength * 0x1F) + 0x3C);
        for (var_r4 = 0; var_r4 <= 0x1D; var_r4++)
        {
            DmaCopy16(3, var_r1, var_r3, 0x6);
            var_r3 += 0x40;
        }
    }
    else
    {
        var_r3 = &gUnk_03003790[0][arg1];
        var_r1 = gBgDataPtrs.pBufBg2Tilemap + ((arg0 * 6) + 0x3C);
        for (var_r4 = 0; var_r4 <= 0x1D; var_r4++)
        {
            DmaCopy16(3, var_r1, var_r3, 0x6);
            var_r1 += gBgInfo[2].hLength;
            var_r3 += 0x40;
        }
    }
}

void sub_08041F34(u8 arg0)
{
    u8 var_r2;

    if (arg0 == 1)
    {
        gUnk_03005400.unkE_7 = 1;

        gEntityInfo[0].unkF = 0;
        gEntityInfo[0].unk10 = arg0;
        gEntityInfo[0x14].unkF = 0x19;
        gEntityInfo[0x13].unkF = 0x19;

        gUnk_03005220.unk3E = 0;
        if (gUnk_03005220.unk31 == 1)
        {
            sub_08025B78(0, 0);
        }
        else
        {
            sub_08025B78(0, 4);
        }

        if (gEntityInfo[0x1E].unk16 == 1)
        {
            gEntityInfo[0x1E].unkF = 0xE;
            gEntityInfo[0x1E].unk10 = 1;
            gEntityInfo[0x1E].unk16 = 0;
        }
    }
    else
    {
        gUnk_03005400.unkE_7 = 0;

        if (gEntityInfo[0x1E].unk10 == 1)
        {
            gEntityInfo[0x1E].unkF = 0x1C;
            gEntityInfo[0x1E].unk10 = 0;
            gEntityInfo[0x1E].unk16 = 1;
        }
        
        for (var_r2 = 0; var_r2 < 0xD; var_r2++)
        {
            gEntityInfo[var_r2].unkF = 0x1C;
            gEntityInfo[var_r2].unk10 = 0;
        }
    }
}

// Need to fix fakematches https://decomp.me/scratch/XVPSx
void sub_08042024(u8 arg0)
{
    struct Unk_0800BEF0 sp0;
    s32 spC;
    u32 temp_r1;
    u32 temp_r2;
    u32 temp_r5;
    u8 temp_r8;
    s32 tmp;

    if (gUnk_03005400.unk0 != 0)
    {
        gUnk_03005400.unk0 -= 1;
    }

    if (gEntityInfo[arg0].unkF == 14)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0x0:
                gUnk_03003590[0].unk2 = -0x80;
                gUnk_03003590[0].unk0 = -0x80;
                gIntrTable.hBlank = sub_08000FA0;
                gUnk_03005400.unkA = 1;
                sub_08025B78(arg0, 8);
                sub_08025B78(0x15, 0);

                gEntityInfo[arg0].priority = 1;
                gEntityInfo[0x1D].priority = 1;
                gEntityInfo[0x1C].priority = 1;
                gEntityInfo[0x17].priority = 1;
                gEntityInfo[0x16].priority = 1;
                gEntityInfo[0x15].priority = 1;

                gUnk_030007E0.unkC_0 = 0;
                gUnk_030007E0.unkC_4 = 0;
                gUnk_030007E0.unk6 = gEntityInfo[0x12].xPosBg2 - 0x78;
                gUnk_030007E0.unk0 = gEntityInfo[0x12].xPosBg2 - 0x78;
                gUnk_030007E0.unk8 = gEntityInfo[0x12].yPosBg2;
                gUnk_030007E0.unk2 = gEntityInfo[0x12].yPosBg2;
                gUnk_030007E0.unkA = 0x60;
                gUnk_030007E0.unk4 = 0x60;
                gUnk_03005400.unkE_7 = 1;
                break;

            case 0x1:
                gUnk_03003590[0].unk0 += 4;
                gUnk_03003590[0].unk2 += 4;
                if (gUnk_03003590[0].unk0 == 0)
                {
                    gUnk_03005400.unkA = 0xFF;
                    gUnk_03005400.unk0 = 0x3C;
                }
                break;

            case 0xFF:
                if (gUnk_03005400.unk0 == 0)
                {
                    gEntityInfo[arg0].unkF = 0;
                    gUnk_03005400.unkA = 2;
                    gUnk_030007E0.unkC_0 = 1;
                    gUnk_030007E0.unkC_4 = 0;
                    gUnk_030007E0.unkA = 0x60;

                    gEntityInfo[0x14].unkF = 0x19;
                    gEntityInfo[0x13].unkF = 0x19;

                    gBlendValue = 0x10;
                    REG_BLDCNT = 0x142;
                    REG_BLDALPHA = 0x10;
                    REG_BLDY = 0x10;
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 0 || gEntityInfo[arg0].unkF == 26)
    {
        sub_0803D4AC(arg0, gUnk_03003620);
        switch (gUnk_03005400.unkA)
        {
            case 0:
                gEntityInfo[arg0].unk10 = 1;
                gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0;
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2;
                gEntityInfo[arg0].unkF = 0;
                gUnk_03005400.unkA = 2;
                break;

            case 1:
                sp0.unk0 = gEntityInfo[arg0].xPosBg2;
                sp0.unk2 = gEntityInfo[arg0].yPosBg2;
                sp0.unk4 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0;
                sp0.unk6 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2;
                sp0.unk8 = sp0.unk9 = 2;
                sub_0800BEF0(&spC, sp0);
                temp_r2 = spC;
                gEntityInfo[arg0].xPosBg2 = temp_r2;
                gEntityInfo[arg0].yPosBg2 = temp_r2 >> 0x10;
                if (((gEntityInfo[arg0].xPosBg2 >> 3) == (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0 >> 3)) && ((gEntityInfo[arg0].yPosBg2 >> 3) == (gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2 >> 3)))
                {
                    gUnk_03005400.unk0 = 0x1E;
                    gUnk_03005400.unkA = 0xD;
                }

                goto b;
                gUnk_03003590[0].unk0 = (gSineTable[((gUnk_03004C20.sceneFrameCounter * 8) & 0xFF) + 0x40] << 0x10) >> 0x12;
                gUnk_03003590[0].unk2 = (gSineTable[(gUnk_03004C20.sceneFrameCounter * 8) & 0xFF] << 0x10) >> 0x13;
                break;

            case 13:
                if (gUnk_03005400.unk0 == 0)
                {
                    gUnk_03005400.unkA = 8;
                    gUnk_03003590[0].unk2 = 0;
                    gUnk_03003590[0].unk0 = 0;

                    gEntityInfo[arg0].unk10 = 0;
                    gEntityInfo[arg0].unkF = 0x1A;

                    gEntityInfo[0x1D].unkC_2 = 0;
                    gEntityInfo[0x1C].unkC_2 = 0;

                    gEntityInfo[arg0].yPosBg2 = 0;
                    gEntityInfo[arg0].xPosBg2 = 0;

                    gEntityInfo[0x1D].yPosBg2 = 0;
                    gEntityInfo[0x1D].xPosBg2 = 0;

                    gEntityInfo[0x1C].yPosBg2 = 0;
                    gEntityInfo[0x1C].xPosBg2 = 0;

                    REG_IE |= 2;
                    REG_DISPSTAT |= 0x10;
                }
                else
                {
b:
                    gUnk_03003590[0].unk0 = (gSineTable[((gUnk_03004C20.sceneFrameCounter * 8) & 0xFF) + 0x40] << 0x10) >> 0x12;
                    gUnk_03003590[0].unk2 = (gSineTable[(gUnk_03004C20.sceneFrameCounter * 8) & 0xFF] << 0x10) >> 0x13;
                }
                break;

            case 2:
                gEntityInfo[arg0].unk8.split.unk8 += 1;
                if (gEntityInfo[arg0].unk8.split.unk8 == 0)
                {
                    gEntityInfo[arg0].unk8.split.unk9 += 1;
                }

                temp_r8 = gEntityInfo[arg0].unk8.split.unk9;
                if (temp_r8 >= ((gUnk_03005400.unkC * 2) + 1))
                {
                    sub_08025B78(arg0, 0xC);
                    gEntityInfo[arg0].unk8.split.unk9 = 0;
                    gUnk_03005400.unkA = 0xC;

                    temp_r1 = thunk_GetRandomValue() % 4;

                    gEntityInfo[0x18].unk8.split.unk8 = gUnk_08116A6E[temp_r1][3];
                    gEntityInfo[0x19].unk8.split.unk8 = gUnk_08116A6E[temp_r1][4];
                    gEntityInfo[0x1A].unk8.split.unk8 = gUnk_08116A6E[temp_r1][5];

                    gEntityInfo[0x18].xPosBg2 = gUnk_08116A6E[temp_r1][0] * 8;
                    gEntityInfo[0x19].xPosBg2 = gUnk_08116A6E[temp_r1][1] * 8;
                    gEntityInfo[0x1A].xPosBg2 = gUnk_08116A6E[temp_r1][2] * 8;

                    gEntityInfo[0x1A].unk11 = 0x1A;
                    gEntityInfo[0x19].unk11 = 0x1A;
                    gEntityInfo[0x18].unk11 = 0x1A;

                    gEntityInfo[0x1A].unkF = 0x19;
                    gEntityInfo[0x19].unkF = 0x19;
                    gEntityInfo[0x18].unkF = 0x19;
                    gUnk_03005400.unk16 = 3 - gUnk_03005400.unkC;
                    break;
                }

                if (gEntityInfo[arg0].xPosBg2 <= 0x40)
                {
                    gEntityInfo[arg0].unkC_2 = 0;
                }
                if (gEntityInfo[arg0].xPosBg2 > 0x19F)
                {
                    gEntityInfo[arg0].unkC_2 = 1;
                }

                gEntityInfo[arg0].xPosBg2 += 1 - (gEntityInfo[arg0].unkC_2 * 2);
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 - ((gSineTable[gEntityInfo[arg0].unk8.split.unk8] << 0x10) >> 0x15);
                tmp = temp_r8 & 1;
                if (tmp != 1)
                {
                    break;
                }

                if (gEntityInfo[arg0].xPosBg2 < gEntityInfo[0].xPosBg2)
                {
                    gEntityInfo[arg0].unkC_2 = 0;
                }
                else
                {
                    gEntityInfo[arg0].unkC_2 = 1;
                }

                gUnk_03005400.unkA = 3;
                gEntityInfo[arg0].unk8.split.unk9 += 1;
                break;

            case 3:
                gEntityInfo[arg0].unk8.split.unk8 += 1;
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 - ((gSineTable[gEntityInfo[arg0].unk8.split.unk8] << 0x10) >> 0x15);

                if (gEntityInfo[0x18].unkF != 0x1C)
                {
                    break;
                }
                sub_08025B78(arg0, 9);
                gEntityInfo[0x18].unkF = 0x19;
                break;

            case 12:
                gEntityInfo[arg0].unk8.split.unk8 += 1;
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2 - ((gSineTable[gEntityInfo[arg0].unk8.split.unk8] << 0x10) >> 0x15);

                if (gEntityInfo[0x18].unk11 == 0x1A)
                {
                    break;
                }
                if (gEntityInfo[0x19].unk11 == 0x1A)
                {
                    break;
                }
                if (gEntityInfo[0x1A].unk11 == 0x1A)
                {
                    break;
                }
                if (gUnk_03005400.unk16 <= 0)
                {
                    gUnk_03005400.unkA = 2;
                    break;
                }

                temp_r1 = thunk_GetRandomValue() % 4;

                gEntityInfo[0x18].unk8.split.unk8 = gUnk_08116A6E[temp_r1][3];
                gEntityInfo[0x19].unk8.split.unk8 = gUnk_08116A6E[temp_r1][4];
                gEntityInfo[0x1A].unk8.split.unk8 = gUnk_08116A6E[temp_r1][5];

                gEntityInfo[0x18].xPosBg2 = gUnk_08116A6E[temp_r1][0] * 8;
                gEntityInfo[0x19].xPosBg2 = gUnk_08116A6E[temp_r1][1] * 8;
                gEntityInfo[0x1A].xPosBg2 = gUnk_08116A6E[temp_r1][2] * 8;

                gEntityInfo[0x1A].unk11 = 0x1A;
                gEntityInfo[0x19].unk11 = 0x1A;
                gEntityInfo[0x18].unk11 = 0x1A;

                gEntityInfo[0x1A].unkF = 0x19;
                gEntityInfo[0x19].unkF = 0x19;
                gEntityInfo[0x18].unkF = 0x19;

                sub_08025B78(arg0, 0xC);
                gUnk_03005400.unk16 -= 1;
                break;

            case 8:
                if (gUnk_03005220.hearts == 0)
                {
                    break;
                }
                REG_BLDCNT = 0x142;
                if (gBlendValue <= 8)
                {
                    gUnk_03005400.unkA = 7;
                    gUnk_03005400.unk13 = 0;
                    sub_08025B78(0x15, 5);
                    gEntityInfo[0x15].unkF = 0xE;
                    gUnk_030007E0.unkC_0 = 0;
                    gUnk_030007E0.unkC_4 = 0;
                    gUnk_030007E0.unk6 = 0x78;
                    gUnk_030007E0.unk8 = 0x50;
                    gUnk_030007E0.unkA = 0x40;
                    gUnk_030052A0 = gBg2Alpha;
                    m4aSongNumStart(0x73);
                    sub_08041F34(0);
                    gCallbackQueue.current[2] = sub_080452E8;
                    break;
                }

                if ((gUnk_03004C20.sceneFrameCounter % 4) == 0)
                {
                    gBlendValue -= 1;
                }
                break;

            case 7:
                temp_r5 = gBlendValue << 0x18;
                if (gBlendValue != 0)
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 4) == 0)
                    {
                        gBlendValue -= 1;
                    }
                    break;
                }

                gUnk_03005400.unkA = 5;
                sub_08041F34(1);

                REG_BG1CNT = (REG_BG1CNT & ~3) | 3;
                REG_BG0CNT = (REG_BG0CNT & ~3) | 2;
                REG_BG2CNT = (REG_BG2CNT & ~3) | 1;
                REG_BLDCNT = 0;
                gBgInfo[1].hOfs = 0;
                gBgInfo[0].hOfs = 0;
                temp_r2 = temp_r5; // TODO: temp_r5 is fake
                REG_BG0HOFS = temp_r2 >> 0x1C;
                REG_BG1HOFS = 0;

                REG_IE &= ~2;
                REG_DISPSTAT &= ~0x10;
                m4aSongNumStop(0x73);
                if (gUnk_03005400.unkC)
                {
                    gUnk_03005400.unk0 = 0x800;
                }
                else
                {
                    gUnk_03005400.unk0 = 0x800;
                }
                break;

            case 9:
                if (gUnk_03005220.hearts == 0)
                {
                    break;
                }
                REG_BG1CNT = (REG_BG1CNT & ~3) | 2;
                REG_BG0CNT = (REG_BG0CNT & ~3) | 3;
                REG_BG2CNT = (REG_BG2CNT & ~3) | 1;
                REG_BLDCNT = 0x142;
                REG_IE |= 2;
                REG_DISPSTAT |= 0x10;

                if (gBlendValue > 8)
                {
                    gUnk_03005400.unkA = 0xA;
                    gUnk_030007E0.unkC_0 = 0;
                    gUnk_030007E0.unkC_4 = 0;
                    gUnk_030007E0.unk6 = 0x78;
                    gUnk_030007E0.unk8 = 0x50;
                    gUnk_030007E0.unkA = 0x40;
                    gUnk_030052A0 = gBg2Alpha;
                    m4aSongNumStart(0x73);
                    sub_08041F34(0);
                    gCallbackQueue.current[2] = sub_080452E8;
                    break;
                }

                if (gUnk_03004C20.sceneFrameCounter & 3)
                {
                    break;
                }
                gBlendValue += 1;
                break;

            case 10:
                if (gBlendValue < 0x10)
                {
                    if (gUnk_03004C20.sceneFrameCounter & 3)
                    {
                        break;
                    }
                    gBlendValue += 1;
                    break;
                }
                sub_08041F34(1);
                gBgInfo[1].hOfs = 0;
                gBgInfo[0].hOfs = 0;
                REG_BG0HOFS = 0;
                REG_BG1HOFS = 0;
                REG_IE &= ~2;
                REG_DISPSTAT &= ~0x10;
                REG_BLDCNT = 0;

                gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk0;
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[0].unk2;
                gEntityInfo[0x1C].unkF = 3;
                gEntityInfo[0x1D].unkF = 4;

                sub_08025B78(0x15, 5);
                m4aSongNumStop(0x73);

                if (gUnk_03005400.unkC == 0)
                {
                    gEntityInfo[0x15].unkF = 6;
                    gEntityInfo[0x15].unk8.split.unk8 = 0;
                    sub_0801E664(gEntityInfo[0x13].xPosBg2, gEntityInfo[0x13].yPosBg2, 2, 0x13);
                    sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2, 0x14);
                    gEntityInfo[0x14].unkF = 0x1C;
                    gEntityInfo[0x13].unkF = 0x1C;
                    sub_08025B78(0x15, 5);
                    gUnk_03005400.unkA = 6;
                    gEntityInfo[arg0].unkF = 0x1A;
                    gEntityInfo[arg0].unk10 = 0;
                }
                else
                {
                    gUnk_03005400.unkA = 0;
                    gEntityInfo[0x15].unkF = 0;
                    gEntityInfo[arg0].unkF = 0;
                }
                break;

            case 11:
                REG_BLDCNT = 0x340;
                gBlendValue = 0xA;
                if (gUnk_03005220.unk31 != 0)
                {
                    gUnk_03005400.unkE_4 = 1;
                    gEntityInfo[arg0].unkF = 3;
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 3)
    {
        sub_0803CF08(arg0);
    }
}


void sub_08042BEC(void)
{
    u16 temp_r6;

    temp_r6 = gUnk_03004C20.sceneFrameCounter % 1800;
    if (temp_r6 == 0)
    {
        gUnk_03005400.unk8_7 ^= 1;
    }
    else if (temp_r6 < 300)
    {
        DmaCopy16(3, gUnk_0818B9F8[1], (void*)0x05000000, 0x60);
    }
    else if (temp_r6 >= 300 && temp_r6 <= 1500)
    {
        if ((gUnk_03004C20.sceneFrameCounter % 8) == 0)
        {
            if (gEntityInfo[0x12].unk8.split.unk9 > 5)
            {
                gEntityInfo[0x12].unk8.split.unk9 -= 1;
            }
        }

        if ((gUnk_03004C20.sceneFrameCounter % gEntityInfo[0x12].unk8.split.unk9) == 0)
        {
            DmaCopy16(3, gUnk_0818B9F8[1 + (gUnk_03005400.unk8_7 * 4) + gEntityInfo[0x12].unk8.split.unk8], (void*)0x05000000, 0x60);
            gEntityInfo[0x12].unk8.split.unk8 = ((gEntityInfo[0x12].unk8.split.unk8 + 1) % 0x100u) & 3;
        }
    }
    else if (temp_r6 <= 1680)
    {
        if ((gUnk_03004C20.sceneFrameCounter % 8) == 0)
        {
            if (gEntityInfo[0x12].unk8.split.unk9 <= 0xF)
            {
                gEntityInfo[0x12].unk8.split.unk9 += 1;
            }
        }

        if ((gUnk_03004C20.sceneFrameCounter % gEntityInfo[0x12].unk8.split.unk9) == 0)
        {
            DmaCopy16(3, gUnk_0818B9F8[1 + (gUnk_03005400.unk8_7 * 4) + gEntityInfo[0x12].unk8.split.unk8], (void*)0x05000000, 0x60);
            gEntityInfo[0x12].unk8.split.unk8 = ((gEntityInfo[0x12].unk8.split.unk8 + 1) % 0x100u) & 3;
        }
    }
    else if (temp_r6 <= 1800)
    {
        DmaCopy16(3, gUnk_0818B9F8[1], (void*)0x05000000, 0x60);
    }

    if ((temp_r6 >= 300 && temp_r6 <= 1700) && ((gUnk_03004C20.sceneFrameCounter % (gEntityInfo[0x12].unk8.split.unk9 - 4)) == 0) && (gUnk_03005220.unk31 != 0))
    {
        gEntityInfo->xPosBg2 += 0; // FAKE?
        if (gUnk_03005400.unk8_7 == 0)
        {
            gEntityInfo->xPosBg2 += 1;
        }
        else
        {
            gEntityInfo->xPosBg2 -= 1;
        }
    }

    if (gEntityInfo->xPosBg2 < 0x14)
    {
        gEntityInfo->xPosBg2 = 0x14;
    }
    if (gEntityInfo->xPosBg2 > 0x1C4)
    {
        gEntityInfo->xPosBg2 = 0x1C4;
    }

    if (gEntityInfo[0x14].unkF == 0)
    {
        if (gEntityInfo[0x14].xPosBg2 < 0x14)
        {
            gEntityInfo[0x14].xPosBg2 = 0x14;
            gEntityInfo[0x14].unkC_2 = 0;
        }
        if (gEntityInfo[0x14].xPosBg2 > 0x1C4)
        {
            gEntityInfo[0x14].xPosBg2 = 0x1C4;
            gEntityInfo[0x14].unkC_2 = 1;
        }
    }

    if (gEntityInfo[0x15].unkF == 0)
    {
        if (gEntityInfo[0x15].xPosBg2 < 0x14)
        {
            gEntityInfo[0x15].xPosBg2 = 0x14;
            gEntityInfo[0x15].unkC_2 = 0;
        }
        if (gEntityInfo[0x15].xPosBg2 > 0x1C4)
        {
            gEntityInfo[0x15].xPosBg2 = 0x1C4;
            gEntityInfo[0x15].unkC_2 = 1;
        }
    }
}

// Need to fix fakematches https://decomp.me/scratch/klQGz
void sub_08042E64(u8 arg0)
{
    s32 var_r2_2;
    u32 var_r3_2;
    u32 var_r4;
    u32 temp_r0_8;
    u8 temp_r5_3;

    gEntityInfo[arg0].affineHFlip_matrixNum = 3;
    gUnk_03003590[0].unk5_0 = gEntityInfo[0x12].unkC_2;
    if (gUnk_030034E4 == 1)
    {
        return;
    }

    sub_0803D4AC(arg0, gUnk_03003620);
    sub_08042BEC();

    if (gUnk_03005400.unk0 != 0)
    {
        gUnk_03005400.unk0 -= 1;
    }

    if (gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0x18)
    {
        if (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF)
        {
            sub_08025B78(arg0, 0x19);
            gEntityInfo[arg0].unkC_2 = 1;
        }
    }
    else if ((gEntityAnimationInfo[arg0 - gUnk_0300363C].state == 0x19) && (gEntityAnimationInfo[arg0 - gUnk_0300363C].timer == 0xFF))
    {
        sub_08025B78(arg0, 0x18);
        gEntityInfo[arg0].unkC_2 = 0;
    }

    if (gEntityInfo[arg0].unkF == 14)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0:
                gUnk_030007E0.unkC_0 = 3;
                gUnk_030007E0.unkC_4 = 0;
                gUnk_030007E0.unk6 = 0x78;
                gUnk_030007E0.unk8 = 0x80;
                gUnk_030007E0.unkA = 0;
                gUnk_03005400.unk8_0 = 1;
                gUnk_03005400.unk8_6 = 1;

                gUnk_03003590[0].unk2 = -gBg2XMag + 0x10;
                gUnk_03003590[0].unk0 = -gBg2XMag + 0x10;
                gUnk_03003590[4].unk2 = -gBg2XMag + 0x10;
                gUnk_03003590[4].unk0 = -gBg2XMag + 0x10;

                gIntrTable.hBlank = sub_08000FA0;
                REG_IE &= ~2;
                REG_DISPSTAT &= ~0x10;
                gUnk_03005400.unk0 = 0x40;
                gUnk_03005400.unkA = 1;
                sub_08025B78(arg0, 0x18);
                break;

            case 1:
                if (gUnk_03005400.unk0 == 0)
                {
                    gEntityInfo[arg0].priority = 2;
                    gEntityInfo[0x21].priority = 2;
                    gEntityInfo[0x20].priority = 2;
                    gEntityInfo[0x1F].priority = 2;
                    gEntityInfo[0x13].priority = 1;
                    gEntityInfo[0x15].priority = 0;
                    gEntityInfo[0x14].priority = 0;
                    gEntityInfo[arg0].unkF = 0x1A;
                    gUnk_03005400.unkA = 1;
                    gEntityInfo[0x13].unkF = 0x19;
                }
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 26)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0:
                gUnk_030007E0.unk8 = 0x80;
                gUnk_030007E0.unkA = 0;
                gUnk_03005400.unk0 = 0x78;
                gUnk_03005400.unkA = 1;
                break;

            case 1:
                gUnk_03003590[0].unk2 = -gBg2XMag + 0x10;
                gUnk_03003590[0].unk0 = -gBg2XMag + 0x10;

                gUnk_03003590[4].unk2 = -gBg2XMag + 0x10;
                gUnk_03003590[4].unk0 = -gBg2XMag + 0x10;

                gUnk_03003590[0].unk4 = 0;
                gUnk_03003590[4].unk4 = 0;

                if (gUnk_03005400.unk0 == 0)
                {
                    gEntityInfo[arg0].unkF = 0;
                    gEntityInfo[0x13].unkF = 0x19;
                    gUnk_03005400.unkA = 0;
                    gEntityInfo[arg0].yPosBg2 = 0x138;
                    gEntityInfo[arg0].priority = 2;
                    gEntityInfo[0x21].priority = 2;
                    gEntityInfo[0x20].priority = 2;
                    gEntityInfo[0x1F].priority = 2;
                    gEntityInfo[0x13].priority = 1;
                    gEntityInfo[0x15].priority = 0;
                    gEntityInfo[0x14].priority = 0;
                }
                break;

            case 3:
                if (gUnk_03005400.unkC == 2)
                {
                    gUnk_030007E0.unkC_0 = 3;
                    gUnk_030007E0.unkA = 0;
                    gUnk_030007E0.unk8 = 0x90;
                    gUnk_03005400.unk13 = gUnk_08116AA4[gUnk_03005400.unkC - 1];
                    gUnk_03005400.unkA = 2;
                }
                else
                {
                    gUnk_030007E0.unkA = 0x50;
                    gUnk_030007E0.unk8 = 0xA0;
                    gUnk_03005400.unk13 = gUnk_08116AA7[gUnk_03005400.unkC - 1];
                    gUnk_03005400.unkA = 5;
                }
                break;

            case 2:
                temp_r0_8 = thunk_GetRandomValue() % 5;
                for (var_r4 = 0; var_r4 < 6; var_r4++)
                {
                    if (gUnk_08116A86[temp_r0_8][var_r4] != 0xFF)
                    {
                        gEntityInfo[0x19 + var_r4].xPosBg2 = (gUnk_08116A86[temp_r0_8][var_r4] << 5) + 0x20;
                        gEntityInfo[0x19 + var_r4].unkF = 0xE;
                    }
                }

                gUnk_03005400.unkA = 4;
                break;

            case 4:
                if ((gEntityInfo[0x19].unkF == 0x1C) && (gEntityInfo[0x1A].unkF == 0x1C) && (gEntityInfo[0x1B].unkF == 0x1C) && (gEntityInfo[0x1C].unkF == 0x1C) && (gEntityInfo[0x1D].unkF == 0x1C) && (gEntityInfo[0x1E].unkF == 0x1C))
                {
                    gUnk_03005400.unk13 -= 1;
                    if (gUnk_03005400.unk13 == 0)
                    {
                        gUnk_03005400.unkA = 0;
                    }
                    else
                    {
                        gUnk_03005400.unkA = 2;
                    }
                }
                break;

            case 5:
                if (gUnk_030007E0.unk2 != gUnk_030007E0.unk8)
                {

                }
                else if ((u16) gUnk_030007E0.unk4 != (u16) gUnk_030007E0.unkA)
                {

                }
                else
                {
                    gEntityInfo[0x1F].unk8.split.unk8 = 0;
                    gEntityInfo[0x1F].unkF = 7;
                    gEntityInfo[0x1F].unk16 = 1;
                    sub_08025B78(0x1F, 0xD);
                    gUnk_03005400.unkA = 6;
                }
                break;

            case 7:
                if ((gUnk_03004C20.sceneFrameCounter % 4) != 0)
                {

                }
                else if (gBlendValue < 0x10)
                {
                    gBlendValue += 1;
                }
                else
                {
                    gUnk_03005400.unkA = 8;
                    gEntityInfo[0x13].unkF = 0x10;
                }
                break;

            case 8:
                if ((gUnk_03004C20.sceneFrameCounter % 4) != 0)
                {

                }
                else if (gBlendValue != 0)
                {
                    gBlendValue -= 1;
                }
                else if (gUnk_03005220.unk31 == 0)
                {

                }
                else
                {
                    gUnk_03005400.unkA = 9;
                    gUnk_03005400.unkE_4 = 1;
                    REG_IE &= ~2;
                    REG_DISPSTAT &= ~0x10;
                }
                break;

            case 9:
                gNewKeys = gHeldKeys = 0;
                sub_0803CF08(arg0);
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 0)
    {
        switch (gUnk_03005400.unkA)
        {
            case 0:
                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x13].xPosBg2;
                if (gEntityInfo[0x1F].unkF != 0xE)
                {

                }
                else
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 3) == 0)
                    {
                        gEntityInfo[arg0].yPosBg2 -= 1;
                    }

                    if (gBlendValue == 0x10)
                    {
                        gUnk_03005400.unk16 = 0;
                        gUnk_03005400.unk4 = 0;
                        gUnk_03005400.unkA = 3;
                    }

                    if ((s16) gUnk_03003590[0].unk0 < 0)
                    {
                        gUnk_03003590[0].unk0 += 8;
                        gUnk_03003590[0].unk2 += 8;
                    }
                    else
                    {
                        gUnk_03003590[0].unk0 = 0;
                        gUnk_03003590[0].unk2 = 0;
                    }
                }
                break;

            case 1:
                gUnk_03005400.unk8_0 = 1;
                sub_08025B78(arg0, 0x18);

                if (gEntityInfo[0x1F].unkF == 0x11)
                {
                    gEntityInfo[0x1F].unkF = 0x12;
                }
                else
                {
                    gEntityInfo[0x21].unkF = 0x1A;
                    gEntityInfo[0x20].unkF = 0x1A;
                    gEntityInfo[0x1F].unkF = 0x1A;
                }

                gUnk_03005400.unkA = 2;
                gUnk_03005400.unk0 = 0x80;
                break;

            case 2:
                if (gUnk_03005400.unk0 == 1)
                {
                    DmaCopy16Wait(3, &gUnk_080789C8, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);

                    gEntityInfo[arg0].unkF = 0x1A;
                    if (gEntityInfo[0x14].unkF != 0x1C)
                    {
                        sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2, 0x14);
                    }
                    if (gEntityInfo[0x15].unkF != 0x1C)
                    {
                        sub_0801E664(gEntityInfo[0x15].xPosBg2, gEntityInfo[0x15].yPosBg2, 2, 0x15);
                    }

                    if (gUnk_03005400.unkC != 0)
                    {
                        gUnk_03005400.unkA = 3;
                    }
                    else
                    {
                        REG_BLDCNT = 0xBF;
                        gBlendValue = gUnk_03005400.unkC;
                        gUnk_03005400.unkA = 7;
                    }
                }
                else
                {
                    if ((gUnk_03004C20.sceneFrameCounter % 10) == 5)
                    {
                        DmaCopy16Wait(3, &gUnk_080789C8, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    }
                    if ((gUnk_03004C20.sceneFrameCounter % 10) == 0)
                    {
                        DmaFill16(3, 0x1F, (void*)0x05000200 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xC].bpp_paletteNum * 0x20), 0x20);
                    }
                }
                break;

            case 3:
                var_r2_2 = 0;
                if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
                {
                    gUnk_03005400.unk4 += 1;
                    if (gEntityInfo[0x14].unkF == 0x1C)
                    {
                        var_r2_2 = 1;
                    }
                    if (gEntityInfo[0x15].unkF == 0x1C)
                    {
                        var_r2_2 = 2;
                    }
                    if ((var_r2_2 != 0) && (gEntityInfo[0x17].unkF == 0x1C) && (gEntityInfo[0x18].unkF == 0x1C) && (gEntityInfo[0x1F].unkF == 0) && (gEntityInfo[0x13].unkF == 0xF))
                    {
                        gEntityInfo[0x17].unkF = 0x19;
                    }

                    if (((u8) gUnk_03005400.unk4 % 0x80) == 0)
                    {
                        temp_r5_3 = thunk_GetRandomValue() % 100;
                        if ((gUnk_03005400.unk16 == 0) && (temp_r5_3 > 50))
                        {
                            gUnk_03005400.unkA = 9;
                            break;
                        }

                        if ((gEntityInfo[0x13].unkF == 0xF) && (temp_r5_3 < (50 - ((gUnk_03005400.unkC - 1) * 0x14))))
                        {
                            m4aSongNumStart(0x83);
                            gEntityInfo[0x13].unkF = 1;
                            sub_08025B78(0x13, 3);
                            gEntityInfo[0x13].unk8.split.unk9 |= 0x40;
                            
                            temp_r5_3 = thunk_GetRandomValue() % 5;
                            for (var_r3_2 = 2; var_r3_2 < 5; var_r3_2++)
                            {
                                if (gUnk_08116A86[temp_r5_3][var_r3_2] != 0xFF)
                                {
                                    gEntityInfo[0x19 + var_r3_2].xPosBg2 = (gUnk_08116A86[temp_r5_3][var_r3_2] << 5) + 0x20;
                                    gEntityInfo[0x19 + var_r3_2].unkF = 0x10;
                                }
                            }
                        }
                    }
                    if ((gUnk_03004C20.sceneFrameCounter % 2) == 0)
                    {
                        gEntityInfo[arg0].xPosBg2 = (gSineTable[(u8) gUnk_03005400.unk4] >> 0x1) + 0xF0;
                    }
                }
            // case 4:                     /* switch 4 */

                goto block_145;
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][6].unk0[0].unk2 - ((gSineTable[(u8) gUnk_03005400.unk4] << 0x10) >> 0x15);
                break;

            case 9:
                if ((gUnk_03004C20.sceneFrameCounter % 4) == 0)
                {
                    if (gUnk_03005400.unk8_5 != 0)
                    {
                        goto block_147;
                        gEntityInfo[arg0].xPosBg2 -= 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].xPosBg2 += 1;
                    }
                }
                goto block_146;
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][6].unk0[0].unk2 - ((gSineTable[(u8) gUnk_03005400.unk4] << 0x10) >> 0x15);
                break;

            case 5:
                gUnk_03005400.unk8_6 = 0;
                gUnk_03005400.unk8_0 = 0;
                if (gBlendValue < 0x10)
                {
                    REG_BLDCNT = 0xBF;
                    if (gUnk_03004C20.sceneFrameCounter % 4)
                    {

                    }
                    else
                    {
                        gBlendValue += 1;
                    }
                }
                else
                {
                    gEntityInfo[arg0].priority = 1;
                    gEntityInfo[0x1F].unkF = 0x10;
                    gEntityInfo[0x21].unkF = 0x1A;
                    gEntityInfo[0x20].unkF = 0x1A;
                    REG_IE &= ~2;
                    REG_DISPSTAT &= ~0x10;
                    gUnk_03005400.unkA = 6;
                }
                break;

            case 6:
                if (gBlendValue != 0)
                {
                    gBlendValue -= 1;
                }

                gEntityInfo[arg0].xPosBg2 = gEntityInfo[0x1F].xPosBg2;
                gEntityInfo[arg0].yPosBg2 = gEntityInfo[0x1F].yPosBg2 - 4;
                if (gEntityInfo[0x1F].unkF == 0x12)
                {
                    gUnk_03005400.unkA = 7;
                }
                break;

            case 7:
                gUnk_03003590[0].unk0 -= 8;
                gUnk_03005400.unk8_6 = 1;
                gUnk_03005400.unk8_0 = 1;
                if (gEntityInfo[0x1F].unkF == 0x1C)
                {
                    if (gEntityInfo[0x14].unkF != 0x1C)
                    {
                        sub_0801E664(gEntityInfo[0x14].xPosBg2, gEntityInfo[0x14].yPosBg2, 2U, 0x14U);
                    }
                    if (gEntityInfo[0x15].unkF != 0x1C)
                    {
                        sub_0801E664(gEntityInfo[0x15].xPosBg2, gEntityInfo[0x15].yPosBg2, 2U, 0x15U);
                    }
                    gEntityInfo[arg0].unkF = 0x1A;
                    gUnk_03005400.unkA = 0;
                }
                break;
                // TODO: fix this mess
block_147:
                gEntityInfo[arg0].xPosBg2 -= 1;
block_146:
                if (gEntityInfo[arg0].xPosBg2 < 0xE0 || gEntityInfo[arg0].xPosBg2 > 0x100)
                {
                    gUnk_03005400.unk16 = 1;
                    gUnk_03005400.unkA = 4;
                    gEntityInfo[0x21].unkF = 0xF;
                    gEntityInfo[0x20].unkF = 0xF;
                    gEntityInfo[0x1F].unkF = 0xF;
                }
            case 4:
block_145:
                gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][6].unk0[0].unk2 - ((gSineTable[(u8) gUnk_03005400.unk4] << 0x10) >> 0x15);
                break;
        }
    }
    else if (gEntityInfo[arg0].unkF == 3)
    {
        gNewKeys = gHeldKeys = 0;
    }
    else if (gEntityInfo[arg0].unkF == 4)
    {
        gNewKeys = gHeldKeys = 0;
    }

    gUnk_03003590[0].unk5_0 = gEntityInfo[0x12].unkC_2;
}
