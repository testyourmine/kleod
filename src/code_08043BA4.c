#include "global.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "code_0800BFF4.h"
#include "code_080240F4.h"
#include "code_08039D8C.h"
#include "heap.h"
#include "interrupts.h"
#include "main.h"
#include "math.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

extern void sub_0804517C(u8);
extern void sub_08045734();                                /* extern */
extern void sub_08045874();                                   /* extern */
extern void sub_08045F68();                                   /* extern */
extern void sub_08046288();                                   /* extern */
extern void sub_080467F4();                                   /* extern */
extern void sub_080468B0();                                   /* extern */
extern u8 sub_080469FC();                                 /* extern */
extern void sub_08046A64(u8);

extern void sub_08046B6C();                                 /* extern */
extern void sub_08046DB8(s32, s32);
extern void sub_08047B1C();
extern void sub_08048028();
extern void sub_080487B4();                                /* extern */

extern u8 gUnk_08051BD4[6][9][3]; // BG bpp (0 = 16 color mode, 0x80 = 256 color mode)

extern u8 gUnk_080627C8[0x80];

extern u8 gUnk_080657C8[0x400];
extern u8 gUnk_08065BC8[0x400];
extern u8 gUnk_08065FC8[0x400];
extern u8 gUnk_080663C8[0x80];
extern u8 gUnk_08066448[0x40];
extern u8 gUnk_08066488[0x80];
extern u8 gUnk_08066508[0x80];
extern u8 gUnk_08066588[0x80];
extern u8 gUnk_08066608[0x80];
extern u8 gUnk_08066688[0x80];
extern u8 gUnk_08066708[0x80];
extern u8 gUnk_08066788[0x80];
extern u8 gUnk_08066808[0x80];
extern u8 gUnk_08066888[0x80];
extern u8 gUnk_08066908[0x80];
extern u8 gUnk_08066988[0x80];
extern u8 gUnk_08066A08[0x80];
extern u8 gUnk_08066A88[0x80];

extern u8 gUnk_08078A88[0x20];
extern u8 gUnk_08078AA8[0x20];
extern u8 gUnk_08078AC8[0x20];
extern u8 gUnk_08078AE8[0x20];

extern struct Unk_0300466C gUnk_0807D248;

extern u8 gUnk_080B90E8[0x80];
extern u8 gUnk_080B9168[0x80];
extern u8 gUnk_080B91E8[0x80];

struct Unk_080D48C8 {
    u16 unk0;
    u16 unk2;
    u8 unk4_0:2;
    u8 unk4_2:6;
    u8 pad5[0x8 - 0x5];
};
extern struct Unk_080D48C8 gUnk_080D48C8[6][7][0x15];

struct Unk_080E2B64_0 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u16 unk6;
};
struct Unk_080E2B64 {
    struct Unk_080E2B64_0 unk0[5];
    u8 unk28;
    u8 unk29;
    u8 pad2A[0x2C - 0x2A];
};
extern struct Unk_080E2B64 gUnk_080E2B64[6][8][0x64];

struct Unk_08116464 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
};
extern struct Unk_08116464 gUnk_08116464[];

extern const u8 gUnk_08117120[];
extern const u8 gUnk_0811712A[];
extern const u16 gUnk_0811713A[];

extern const u8 gUnk_0811717C[][40][5];
extern const u8 gUnk_0811762C[][8];
extern const u8 gUnk_0811765C[][7];

void sub_08043BA4(void)
{
    u32 var_r3;

    gBlendValue = gMosaicSize = 0;

    VBlankIntrWait();
    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    sub_08003D58();
    sub_0800A468();
    REG_DISPCNT = 0x2F41;
    gUnk_03005488 = 0;
    REG_WININ = 0x2701;
    REG_WIN1H = 0xF0;
    REG_WIN1V = 0x18F;
    gIntrTable.hBlank = sub_08001028;
    gUnk_030051DC = &gUnk_0807D248;
    gUnk_03005428 = 0xD;

    gObjPalRamPtr = gUnk_030034F4;
    gObjVramPtr = gUnk_030052AC;

    DmaCopy16Wait(3, &gUnk_08078A88, gUnk_030034F4, 0x20);
    DmaCopy16Wait(3, &gUnk_080657C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08065BC8, gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08078AA8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08065FC8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08078AC8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080663C8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066448, gObjVramPtr, 0x40);
    gObjVramPtr += 0x40;

    DmaCopy16Wait(3, &gUnk_08066488, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066508, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066588, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066608, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066688, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078AE8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08066708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066808, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066888, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066908, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066988, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066A08, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08066A88, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    for (var_r3 = 0; gUnk_08116464[var_r3].unk0 != 0xFFFF; var_r3++)
    {
        sub_08003DC0(gUnk_03005428++, gUnk_08116464[var_r3].unk7, gUnk_08116464[var_r3].unk0, gUnk_08116464[var_r3].unk2, gUnk_08116464[var_r3].unk4, 0, gUnk_08116464[var_r3].unk5, gUnk_08116464[var_r3].unk6, gUnk_08116464[var_r3].unk8);
    }
    gUnk_03005428 += 0xC;
    
    for (var_r3 = 0xD; var_r3 <= 0x24; var_r3++)
    {
        gEntityInfo[var_r3].unk8.split.unk8 = 0;
        gEntityInfo[var_r3].unk10 = 0;
        gEntityInfo[var_r3].unkF = 0x1C;
        gEntityInfo[var_r3].objMode = 0;
        gEntityInfo[var_r3].priority = 0;
    }
    for (var_r3 = 0; var_r3 <= 0xD; var_r3++)
    {
        gEntityInfo[var_r3].unk10 = 0;
        gEntityInfo[var_r3].unkF = 0x1C;
    }

    gEntityInfo[0].unk10 = 1;
    gEntityInfo[0].priority = 1;
    gEntityInfo[0].xPosBg2 = gBgInfo[2].hOfs + 0x78;
    gEntityInfo[0].yPosBg2 = gBgInfo[2].vOfs + 0x78;
    gEntityInfo[0].xPosScreen = 0x78;
    gEntityInfo[0].yPosScreen = 0x78;
    gEntityInfo[0].affineEnable = 0;
    gEntityInfo[0].unk11 = 0;

    for (var_r3 = 0; var_r3 <= 0x2C; var_r3++)
    {
        gEntityAnimationInfo[var_r3].state |= 0xFF;
        gEntityAnimationInfo[var_r3].timer |= 0xFF;
    }

    sub_08025B78(0, 0x15);

    REG_IE |= 1;
    REG_DISPSTAT |= 8;
    REG_IE |= 2;
    REG_DISPSTAT |= 0x10;
    m4aSoundVSyncOn();

    m4aSongNumStart(0x30);
}

void sub_080441C8(s32 arg0)
{
    u8 var_r6;

    switch (gUnk_03005494)
    {
        case 0:
            gEntityInfo[0x10].xPosBg2 = gBgInfo[2].hOfs + 0x40;
            gEntityInfo[0x11].xPosBg2 = gBgInfo[2].hOfs + 0x4C;
            gEntityInfo[0x12].xPosBg2 = gBgInfo[2].hOfs + 0x56;
            gEntityInfo[0x13].xPosBg2 = gBgInfo[2].hOfs + 0x60;
            gEntityInfo[0x14].xPosBg2 = gBgInfo[2].hOfs + 0x6B;
            gEntityInfo[0x15].xPosBg2 = gBgInfo[2].hOfs + 0x78;
            gEntityInfo[0x16].xPosBg2 = gBgInfo[2].hOfs + 0x8E;
            gEntityInfo[0x17].xPosBg2 = gBgInfo[2].hOfs + 0x9B;
            gEntityInfo[0x18].xPosBg2 = gBgInfo[2].hOfs + 0xA9;
            gEntityInfo[0x19].xPosBg2 = gBgInfo[2].hOfs + 0xB6;

            for (var_r6 = 0x10; var_r6 <= 0x19; var_r6++)
            {
                gEntityInfo[var_r6].yPosBg2 = gBgInfo[2].vOfs + 0x3A;
                gEntityInfo[var_r6].affineEnable = 0;
                gEntityInfo[var_r6].objMode = 0;
                gEntityInfo[var_r6].unk10 = 1;
                gEntityInfo[var_r6].unkF = 0;
                gEntityInfo[var_r6].priority = 0;
                gEntityInfo[var_r6].xPosScreen = gEntityInfo[var_r6].xPosBg2 - gBgInfo[2].hOfs;
                gEntityInfo[var_r6].yPosScreen = gEntityInfo[var_r6].yPosBg2 - gBgInfo[2].vOfs;
            }

            gUnk_03004658[0xC] = 0;

            for (var_r6 = 0xD; var_r6 <= 0xE; var_r6++)
            {
                gEntityInfo[var_r6].unk10 = 1;
                gEntityInfo[var_r6].unkF = 0;
                gEntityInfo[var_r6].objMode = 0;
                gEntityInfo[var_r6].priority = 0;
                gEntityInfo[var_r6].xPosBg2 = gBgInfo[2].hOfs + 0x3C + ((var_r6 - 0xD) * 0x78);
                gEntityInfo[var_r6].yPosBg2 = gBgInfo[2].vOfs + 0x91;
                gEntityInfo[var_r6].xPosScreen = gEntityInfo[var_r6].xPosBg2 - gBgInfo[2].hOfs;
                gEntityInfo[var_r6].yPosScreen = gEntityInfo[var_r6].yPosBg2 - gBgInfo[2].vOfs;
                gEntityInfo[var_r6].affineEnable = 1;
                gEntityInfo[var_r6].affineHFlip_matrixNum = var_r6 - 0xC;
                gOamAffineBuffer[var_r6 - 0xC].pa = 0x600;
                gOamAffineBuffer[var_r6 - 0xC].pb = 0;
                gOamAffineBuffer[var_r6 - 0xC].pc = 0;
                gOamAffineBuffer[var_r6 - 0xC].pd = 0x600;
            }
            break;

        case 1:
            gUnk_03005488 = 0;
            break;

        case 2:
            REG_WIN0V = 0;
            REG_WIN1V = 0;
            REG_BLDCNT = 0xBF;
            REG_DISPCNT &= ~0x1000;
            gMosaicSize = 0xF;
            gBlendValue = 0x10;
            REG_BLDY = 0x10;

            sub_08003D58();
            gUnk_03003410.unk9 = 0;
            gUnk_03003410.unkA = 0;
            gCallbackQueue.next[0] = sub_08001158;
            gUnk_03003410.unk8 = 1;
            gCallbackQueue.next[1] = sub_08003904;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            gUnk_03004C20.sceneFrameCounter = -1;
            gUnk_03004C20.room = 0;

            REG_IE &= ~1;
            REG_DISPSTAT &= ~8;
            m4aSoundVSyncOff();

            gUnk_03005284->unk0 = gUnk_03005220.lives = gUnk_03005284->unk1E;
            sub_08046DB8(0, 1);

            REG_IE |= 1;
            REG_DISPSTAT |= 8;
            break;

        case 3:
            gUnk_03004C20.sceneFrameCounter = 0;
            gUnk_03005488 = 0;
            REG_WIN0V = 0;
            REG_WIN1V = 0;
            REG_DISPCNT = 0x1041;
            gBlendValue = 0;

            for (var_r6 = 0; var_r6 <= 0x19; var_r6++)
            {
                gEntityInfo[var_r6].unk10 = 0;
                gEntityInfo[var_r6].unkF = 0x1C;
            }

            for (var_r6 = 0x1A; var_r6 <= 0x24; var_r6++)
            {
                gEntityInfo[var_r6].priority = 1;
                gEntityInfo[var_r6].affineEnable = 1;
                gEntityInfo[var_r6].affineHFlip_matrixNum = var_r6 - 0x1A;
                gEntityInfo[var_r6].xPosBg2 = gBgInfo[2].hOfs + gUnk_08117120[var_r6 - 0x1A];
                gEntityInfo[var_r6].yPosBg2 = gBgInfo[2].vOfs + 0x58;
                gEntityInfo[var_r6].xPosScreen = gEntityInfo[var_r6].xPosBg2 - gBgInfo[2].hOfs;
                gEntityInfo[var_r6].yPosScreen = 0x58;
                gOamAffineBuffer[var_r6 - 0x1A].pa = 0x100;
                gOamAffineBuffer[var_r6 - 0x1A].pb = 0;
                gOamAffineBuffer[var_r6 - 0x1A].pc = 0;
                gOamAffineBuffer[var_r6 - 0x1A].pd = gUnk_0811713A[0];
                gEntityInfo[var_r6].unk10 = 0;
                gEntityInfo[var_r6].unkF = 0x1C;
            }

            gUnk_03004658[0xC] = 0xD;

            for (var_r6 = 0x23; var_r6 <= 0x24; var_r6++)
            {
                gEntityInfo[var_r6].unk10 = 1;
                gEntityInfo[var_r6].unkF = 0;
                gEntityInfo[var_r6].priority = 0;
                gEntityInfo[var_r6].yPosScreen = 0x58;
                gOamAffineBuffer[var_r6 - 0x1A].pd = 0x100;
            }

            gEntityInfo[0x23].xPosBg2 = gBgInfo[2].hOfs - 4;
            gEntityInfo[0x23].xPosScreen = gEntityInfo[0x23].xPosBg2 - gBgInfo[2].hOfs;
            gEntityInfo[0x24].xPosBg2 = gBgInfo[2].hOfs - 6;
            gEntityInfo[0x24].xPosScreen = gEntityInfo[0x24].xPosBg2 - gBgInfo[2].hOfs;
            REG_BLDCNT = 0x3040;
            gEntityInfo[0x24].objMode = 1;
            gBlendValue = 9;
            m4aSongNumStart(1);
            break;

        case 4:
            REG_BLDCNT = 0xFF;
            gBlendValue = 0x10;
            gUnk_03004D9C = 0;

            gCallbackQueue.next[0] = InputHandler_Normal;
            gCallbackQueue.next[1] = sub_080487B4;
            gCallbackQueue.next[2] = sub_0800BFF4;
            gCallbackQueue.next[3] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 4;

            sub_08003D58();
            gUnk_03004C20.sceneFrameCounter = -1;

            REG_IE &= ~1;
            REG_DISPSTAT &= ~8;
            m4aSoundVSyncOff();

            gUnk_03005284->unk0 = gUnk_03005220.lives = gUnk_03005284->unk1E;
            sub_08046DB8(0, 1);

            REG_IE |= 1;
            REG_DISPSTAT |= 8;

            sub_08046B6C();
            return;
    }
}

void sub_080446F8(void)
{
    u8 var_r3;

    if (gUnk_03004C20.sceneFrameCounter == 0)
    {
        sub_08043BA4();
        gUnk_03005494 = 0;
        sub_080441C8(0);
    }

    if (gUnk_03004C20.sceneFrameCounter == 1)
    {
        REG_DISPCNT = 0x7F41;
        REG_WINOUT = 0x10;
    }

    sub_08025BA4();

    for (var_r3 = 0; var_r3 < 10; var_r3++)
    {
        gEntityInfo[var_r3 + 0x10].yPosBg2 = gBgInfo[2].vOfs + 0x3A + (gSineTable[(((gUnk_03004C20.sceneFrameCounter >> 3) + var_r3) * 0x18) % 0x100] >> 0x5);
        gEntityInfo[var_r3 + 0x10].yPosScreen = gEntityInfo[var_r3 + 0x10].yPosBg2 - gBgInfo[2].vOfs;
    }

    switch (gUnk_03005494)
    {
        case 0:
            gUnk_03005488 += 8;
            if (gUnk_03005488 == 0xF0)
            {
                REG_WIN1V = 0;
                REG_IE &= ~2;
                REG_DISPSTAT &= ~0x10;
                gUnk_03005488 = 0xF8;
            }
            else if (gUnk_03005488 == 0x1E0)
            {
                gUnk_03005220.lives = 0;
                sub_08025F94();
                m4aSongNumStart(0x78);
            }
            else if (gUnk_03005488 == 0x300)
            {
                gUnk_03005494 = 1;
                sub_080441C8(1);
            }
            else
            {
                if (gOamAffineBuffer[1].pa > 0x100)
                {
                    gOamAffineBuffer[1].pa = gOamAffineBuffer[1].pd = gOamAffineBuffer[2].pa = gOamAffineBuffer[2].pd = gOamAffineBuffer[2].pd - 0x40;
                }
            }
            break;

        case 1:
            if ((gNewKeys & 1) || (gNewKeys & 8))
            {
                if (gUnk_03004658[0xC] != 0)
                {
                    gBlendValue = 0x10;
                    gUnk_03005494 = 3;
                    gUnk_03005488 = 0;
                    sub_080441C8(3);
                }
                else if (gUnk_03005488 == 0)
                {
                    m4aSongNumStart(0x52);
                    gUnk_03005488 = 1;
                }
            }

            if (gUnk_03005488 != 0)
            {
                gUnk_03005488 += 1;
                if (gUnk_03005488 == 0x1E)
                {
                    gUnk_03005494 = 2;
                    sub_080441C8(2);
                }
            }

            if (gNewKeys & 0x20)
            {
                if (gUnk_03004658[0xC] != 0)
                {
                    m4aSongNumStart(0x51);
                }
                gUnk_03004658[0xC] = 0;
            }
            else if (gNewKeys & 0x10)
            {
                if (gUnk_03004658[0xC] == 0)
                {
                    m4aSongNumStart(0x51);
                }
                gUnk_03004658[0xC] = 1;
            }

            gOamAffineBuffer[gUnk_03004658[0xC] + 1].pa = gSineTable[gUnk_0811712A[(gUnk_03004C20.sceneFrameCounter >> 1) % 0x10] + 0x40];
            gOamAffineBuffer[gUnk_03004658[0xC] + 1].pb = -((gSineTable[gUnk_0811712A[(gUnk_03004C20.sceneFrameCounter >> 1) % 0x10]] << 1) >> 1);
            gOamAffineBuffer[gUnk_03004658[0xC] + 1].pc = gSineTable[gUnk_0811712A[(gUnk_03004C20.sceneFrameCounter >> 1) % 0x10]];
            gOamAffineBuffer[gUnk_03004658[0xC] + 1].pd = gSineTable[gUnk_0811712A[(gUnk_03004C20.sceneFrameCounter >> 1) % 0x10] + 0x40];

            gOamAffineBuffer[!gUnk_03004658[0xC] + 1].pa = gOamAffineBuffer[!gUnk_03004658[0xC] + 1].pd = 0x100;
            gOamAffineBuffer[!gUnk_03004658[0xC] + 1].pb = gOamAffineBuffer[!gUnk_03004658[0xC] + 1].pc = 0;
            break;

        case 3:
            for (var_r3 = 0x1A; var_r3 <= 0x22; var_r3++)
            {
                if (((gEntityInfo[0x23].xPosScreen + 6) & 0xFF) >= (gUnk_08117120[var_r3 - 0x1A] + 6))
                {
                    gEntityInfo[var_r3].unk10 = 1;
                    gEntityInfo[var_r3].unkF = 0;

                    if (gOamAffineBuffer[var_r3 - 0x1A].pd != 0x114)
                    {
                        gOamAffineBuffer[var_r3 - 0x1A].pd = gUnk_0811713A[((gEntityInfo[0x23].xPosScreen - gUnk_08117120[var_r3 - 0x1A]) >> 1) % 0x20] + 0x14;
                    }
                    else
                    {
                        gOamAffineBuffer[var_r3 - 0x1A].pd = gOamAffineBuffer[var_r3 - 0x1A].pd;
                    }
                }
            }

            gUnk_03005488 += 1;

            for (var_r3 = 0x23; var_r3 <= 0x24; var_r3++)
            {
                gEntityInfo[var_r3].yPosBg2 = gBgInfo[2].vOfs + 0x58 + (gSineTable[(((gUnk_03005488 - ((var_r3 + 9) * 4)) >> 2) * 0x14) % 0x100] >> 0x4);
                gEntityInfo[var_r3].yPosScreen = gEntityInfo[var_r3].yPosBg2 - gBgInfo[2].vOfs;

                gEntityInfo[var_r3].xPosBg2 += 1;
                gEntityInfo[var_r3].xPosScreen = gEntityInfo[var_r3].xPosBg2 - gBgInfo[2].hOfs;

                if (gEntityInfo[var_r3].xPosScreen == 0xFA)
                {
                    gEntityInfo[var_r3].unk10 = 0;
                    gEntityInfo[var_r3].unkF = 0x1C;
                }

                if (gEntityInfo[0x23].yPosScreen <= 0x48)
                {
                    gEntityInfo[0x24].priority = 0;
                    gEntityInfo[0x23].priority = 0;

                    gEntityInfo[var_r3].priority = 0;
                    gOamAffineBuffer[var_r3 - 0x1A].pd = 0xF0;
                    gOamAffineBuffer[var_r3 - 0x1A].pa = 0xF0;
                }
                else if (gEntityInfo[0x23].yPosScreen > 0x66)
                {
                    gEntityInfo[var_r3].priority = 1;
                    gOamAffineBuffer[var_r3 - 0x1A].pd = 0x120;
                    gOamAffineBuffer[var_r3 - 0x1A].pa = 0x120;
                }
            }

            if ((gUnk_03005488 > 0x2FC) || (gNewKeys & 1) || (gNewKeys & 8))
            {
                gUnk_03005494 = 4;
                sub_080441C8(4);
            }
            break;
    }
}

void sub_08044BB8(void)
{
    u32 var_r7;
    struct ScrollOffset var_r2;
    u8 var_r5;

    var_r5 = 0;
    if (gUnk_030052A0 == 0x41)
    {
        var_r2.x = 0;
        var_r2.y = 0;

        if ((gBgInfo[2].hOfs + 0x78) < gUnk_030051CC.unk0)
        {
            var_r5 = 0x10;
            var_r2.x = 1;
        }
        else if ((gBgInfo[2].hOfs + 0x78) > gUnk_030051CC.unk0)
        {
            var_r5 = 0x20;
            var_r2.x = -1;
        }

        if ((gBgInfo[2].vOfs + 0x50) < gUnk_030051CC.unk2)
        {
            var_r5 |= 0x80;
            var_r2.y = 1;
        }
        else if ((gBgInfo[2].vOfs + 0x50) > gUnk_030051CC.unk2)
        {
            var_r5 |= 0x40;
            var_r2.y = -1;
        }

        if (var_r5 != 0)
        {
            ScrollBg2LevelData(var_r5, var_r2);
            return;
        }

        sub_0800343C(6);
        gUnk_030052A0 = 0x40;
    }

    if (gUnk_030052A0 == 0x40)
    {
        var_r7 = 1;
    }
    else if (gUnk_030052A0 > 0x35)
    {
        var_r7 = 4;
    }
    else if (gUnk_030052A0 > 0xC)
    {
        var_r7 = 0;
    }
    else if (gUnk_030052A0 == 0xC)
    {
        var_r7 = -3;
    }
    else if (gUnk_030052A0 > 2)
    {
        var_r7 = -4;
    }
    else
    {
        var_r7 = -1;
    }
    gBg2XMag = gBg2YMag += var_r7;

    if (gUnk_030052A0 == 0x40)
    {
        gUnk_030034D4 = thunk_HeapAlloc(gUnk_03005428, 2);

        for (var_r7 = 0; var_r7 < gUnk_03005428; var_r7++)
        {
            if (gEntityInfo[var_r7].unkF <= 0x1A)
            {
                gUnk_030034D4[var_r7].unk0 = gEntityInfo[var_r7].xPosBg2;
                gUnk_030034D4[var_r7].unk2 = gEntityInfo[var_r7].yPosBg2;

                if ((var_r7 == 0) || (gEntityInfo[var_r7].unk11 == 0x34) || (gEntityInfo[var_r7].unk11 == 0x6F) || (gEntityInfo[var_r7].unk11 > 0x75))
                {
                    gUnk_030034D4[var_r7].unk2 = gEntityInfo[var_r7].yPosBg2 - 0xE;
                    if (gEntityInfo[var_r7].unk11 == 0x6F)
                    {
                        gUnk_030034D4[var_r7].unk0 = gEntityInfo[var_r7].xPosBg2 - 4;
                    }
                }
                else if ((gEntityInfo[var_r7].unk11 == 0x73) || (gEntityInfo[var_r7].unk11 == 1))
                {
                    gUnk_030034D4[var_r7].unk2 = gEntityInfo[var_r7].yPosBg2 - 8;
                }
            }
        }
    }

    for (var_r7 = 0; var_r7 < gUnk_03005428; var_r7++)
    {
        if (gEntityInfo[var_r7].unkF <= 0x1A)
        {
            gEntityInfo[var_r7].xPosBg2 = gUnk_030051CC.unk0 + ((((gUnk_030034D4[var_r7].unk0 - gUnk_030051CC.unk0) * gSineTable[0x80 - gUnk_030052A0]) - ((gUnk_030034D4[var_r7].unk2 - gUnk_030051CC.unk2) * gSineTable[0x40 - gUnk_030052A0])) >> 8);
            gEntityInfo[var_r7].yPosBg2 = gUnk_030051CC.unk2 + ((((gUnk_030034D4[var_r7].unk0 - gUnk_030051CC.unk0) * gSineTable[0x40 - gUnk_030052A0]) + ((gUnk_030034D4[var_r7].unk2 - gUnk_030051CC.unk2) * gSineTable[0x80 - gUnk_030052A0])) >> 8);

            if ((var_r7 == 0) || (gEntityInfo[var_r7].unk11 == 0x34) || (gEntityInfo[var_r7].unk11 == 0x6F) || (gEntityInfo[var_r7].unk11 > 0x75))
            {
                gEntityInfo[var_r7].yPosBg2 += 0xE;
                if (gEntityInfo[var_r7].unk11 == 0x6F)
                {
                    gEntityInfo[var_r7].xPosBg2 += 4;
                }
            }
            else if ((gEntityInfo[var_r7].unk11 == 0x73) || (gEntityInfo[var_r7].unk11 == 1))
            {
                gEntityInfo[var_r7].yPosBg2 = gEntityInfo[var_r7].yPosBg2 + 8;
            }

            if (var_r7 == 8)
            {
                var_r7 = 0xD;
            }
        }
    }

    gUnk_030052A0 -= 2;
    gBg2Alpha += 2;
    if (gUnk_030052A0 != 0xFE)
    {
        return;
    }

    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    m4aSoundVSyncOff();

    sub_0804517C(1);
    gBg2Alpha = 0;
    sub_0800343C(6);
    gUnk_03005220.unk3C = 0;
    thunk_HeapFree(gUnk_030034D4);

    var_r5 = (gUnk_03004C20.room - 1) * 2;
    var_r7 = (gUnk_03004C20.unk8 >> var_r5) + 1;
    var_r7 = var_r7 % 4;
    gUnk_03004C20.unk8 = (gUnk_03004C20.unk8 & ~(3 << var_r5)) | (var_r7 << var_r5);

    if (var_r7 == 0)
    {
        DmaCopy16(3, gUnk_080627C8, gUnk_03004C10, 0x80);
    }
    else if (var_r7 == 1)
    {
        DmaCopy16(3, gUnk_080B90E8, gUnk_03004C10, 0x80);
    }
    else if (var_r7 == 2)
    {
        DmaCopy16(3, gUnk_080B9168, gUnk_03004C10, 0x80);
    }
    else
    {
        DmaCopy16(3, gUnk_080B91E8, gUnk_03004C10, 0x80);
    }

    gCallbackQueue.current[1] = sub_0800A804;
    while (REG_VCOUNT_L != 0);

    REG_IE |= 1;
    REG_DISPSTAT |= 8;
    m4aSoundVSyncOn();

    m4aSongNumStart(0x61);
}

void sub_08044F6C(u8 arg0)
{
    s32 var_r9;
    s32 var_ip;
    s32 var_sl;
    s32 var_r8;

    if (arg0 == 0)
    {
        gEntityInfo[0].xPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk0;
        gEntityInfo[0].yPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk2;
        gEntityInfo[0].unkC_2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654[1] - 1)].unk4_0;
    }
    else
    {
        gEntityInfo[arg0].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
        gEntityInfo[arg0].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
    }

    var_r9 = ((gUnk_03004C20.unk8 >> ((gUnk_03004C20.room - 1) * 2)) & 3) * 0x40;
    if (var_r9 != 0)
    {
        var_r8 = gEntityInfo[arg0].xPosBg2;

        var_sl = 0;
        var_ip = 0;
        if ((arg0 == 0) || (gEntityInfo[arg0].unk11 == 0x6F) || (gEntityInfo[arg0].unk11 > 0x75))
        {
            var_ip = 0xFFF2;
            if (gEntityInfo[arg0].unk11 == 0x6F)
            {
                var_sl = 0xFFFC;
            }
        }
        else if ((gEntityInfo[arg0].unk11 == 0x73) || (gEntityInfo[arg0].unk11 == 1))
        {
            var_ip = 0xFFF8;
        }

        gEntityInfo[arg0].xPosBg2 = gUnk_030051CC.unk0 + ((((var_r8 - gUnk_030051CC.unk0 + var_sl) * gSineTable[var_r9 + 0x40]) - ((gEntityInfo[arg0].yPosBg2 - gUnk_030051CC.unk2 + var_ip) * gSineTable[var_r9])) >> 8) - var_sl;
        gEntityInfo[arg0].yPosBg2 = gUnk_030051CC.unk2 + ((((var_r8 - gUnk_030051CC.unk0 + var_sl) * gSineTable[var_r9]) + ((gEntityInfo[arg0].yPosBg2 - gUnk_030051CC.unk2 + var_ip) * gSineTable[var_r9 + 0x40])) >> 8) - var_ip;
    }
}

void sub_0804517C(u8 arg0)
{
    u32 sp4;
    u32 temp_ip;
    u32 temp_r6;
    u32 var_r7;
    u32 var_sb;
    u32 var_r1;
    u32 var_r3;
    u32 var_r5;
    u32 var_r4;

    for (var_r1 = 0; var_r1 < arg0; var_r1++)
    {
        var_r7 = (gCurrentRoomBg2Bounds.left + 0x18) >> 3;
        var_sb = (gCurrentRoomBg2Bounds.top + 0x18) >> 3;
        var_r5 = (((gCurrentRoomBg2Bounds.right - 0x18) >> 3) - var_r7) - 1;
        sp4 = ((gCurrentRoomBg2Bounds.bottom - 0x18) >> 3) - 1;

        while (1)
        {
            temp_ip = (gBgInfo[2].hLength * var_sb) + var_r7;
            temp_r6 = (gBgInfo[2].hLength * var_sb) + var_r7 + var_r5;
            for (var_r3 = 0; var_r3 < var_r5; var_r3++)
            {
                var_r4 = gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3];
                gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3] = gBgDataPtrs.pBufBg2Tilemap[(var_r3 * gBgInfo[2].hLength) + temp_r6];
                gBgDataPtrs.pBufBg2Tilemap[(var_r3 * gBgInfo[2].hLength) + temp_r6] = var_r4;
            }
    
            temp_ip = (gBgInfo[2].hLength * var_sb) + var_r7;
            temp_r6 = (gBgInfo[2].hLength * sp4) + var_r7 + var_r5;
            for (var_r3 = 0; var_r3 < var_r5; var_r3++)
            {
                var_r4 = gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3];
                gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3] = gBgDataPtrs.pBufBg2Tilemap[temp_r6 - var_r3];
                gBgDataPtrs.pBufBg2Tilemap[temp_r6 - var_r3] = var_r4;
            }
    
            temp_ip = (gBgInfo[2].hLength * var_sb) + var_r7;
            temp_r6 = (sp4 * gBgInfo[2].hLength) + var_r7;
            for (var_r3 = 0; var_r3 < var_r5; var_r3++)
            {
                var_r4 = gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3];
                gBgDataPtrs.pBufBg2Tilemap[temp_ip + var_r3] = gBgDataPtrs.pBufBg2Tilemap[temp_r6 - (var_r3 * gBgInfo[2].hLength)];
                gBgDataPtrs.pBufBg2Tilemap[temp_r6 - (var_r3 * gBgInfo[2].hLength)] = var_r4;
            }
    
            var_r7 += 1;
            var_sb += 1;

            if (var_r5 < 2)
                break;

            var_r5 -= 2;
            sp4 -= 1;
        }
    }
}

void sub_080452E8(void)
{
    if ((gUnk_030007E0.unk0 == gUnk_030007E0.unk6) && (gUnk_030007E0.unk2 == gUnk_030007E0.unk8) && ((u16) gUnk_030007E0.unk4 == (u16) gUnk_030007E0.unkA))
    {
        gBg2Alpha = gUnk_030052A0 += 1;
        if ((gUnk_030052A0 % 0x80) == 0)
        {
            if (gBg2Alpha == 0x80)
            {
                gUnk_030007E0.unkA = 0x7E;
            }
            else
            {
                gUnk_030007E0.unkC_0 = 1;
                gUnk_030007E0.unkA = 0x60;
            }
            gCallbackQueue.current[2] = sub_0800AC34;
        }

        gUnk_03003590[0].unk4 = -gUnk_030052A0;
        if ((s8)gUnk_030052A0 >= 0)
        {
            if (gUnk_030007CC < 0x50)
            {
                gUnk_030007CC += 1;
            }
        }
        else if (gUnk_030007CC != 0)
        {
            gUnk_030007CC -= 1;
        }
    }
}

void sub_08045398(void)
{
    if (gUnk_030034B0.unk0_4 == 0)
    {
        m4aSongNumStart(0x26);
        gUnk_030034B0.unk0_4 = 1;
        gUnk_03004C20.sceneFrameCounter = 0;
    }
    else if (gUnk_03004C20.sceneFrameCounter > 30)
    {
        gCallbackQueue.current[1] = sub_08024C34;
        gUnk_030034B0.unk0_4 = 0;
    }
}

void sub_080453F0(void)
{
    u16 var_r6;

    REG_IE &= ~1;
    REG_DISPSTAT &= ~8;
    m4aSoundVSyncOff();

    m4aMPlayAllStop();
    if (gUnk_03004C20.world == 1)
    {
        gUnk_030034B0.unk0_1 = 6;
    }
    else
    {
        gUnk_030034B0.unk0_1 = 0;
    }
    gUnk_03005284->unk1 = gUnk_03004C20.world;
    gUnk_03005284->unk2 = gUnk_030034B0.unk6_4;
    sub_08046DB8(0, 0);
    sub_08046DB8(1, 0);
    gUnk_030034B0.unk0_0 = 1;
    
    for (var_r6 = 0; var_r6 < 8; var_r6++)
    {
        if (!(gUnk_03004670->unk8[gUnk_03004C20.world - 1][var_r6] & 0x80))
        {
            gUnk_030034B0.unk0_0 = 0;
        }
    }

    if ((gUnk_03004C20.world == 5) && !(gUnk_03004670->unk8[5][7] & 0x80))
    {
        gUnk_030034B0.unk0_0 = 0;
    }

    REG_BG2CNT = gUnk_08051BD4[(gUnk_03004C20.world - 1)][gUnk_03004C20.level][2] | 0x5E49;
    gBgInfo[2].hOfs = 0;
    gBgInfo[2].vOfs = 0;
    
    for (var_r6 = 0; var_r6 < 0x400; var_r6++)
    {
        gUnk_03004DB0[var_r6] = gBgDataPtrs.pBufBg2Tilemap[(((gBgInfo[2].vOfs >> 3) + (var_r6 >> 5)) * gBgInfo[2].hLength) + (var_r6 & 0x1F) + (gBgInfo[2].hOfs >> 3)];
    }

    for (var_r6 = 1; var_r6 <= 0xC; var_r6++)
    {
        gEntityInfo[var_r6].unk10 = 0;
    }

    if (gUnk_030034B0.unk6_4 == 0)
    {
        gUnk_030034B0.unk6_4 = 1;
    }

    gUnk_030034B0.unk2 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk6_4 - 1]][0];
    gUnk_030034B0.unk1 = 0x40;
    gBg2Alpha = -gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk6_4 - 1]][1];
    gUnk_030034B0.unk6_0 = 0;
    gUnk_030034B0.unk7_0 = 0;

    for (var_r6 = 0; var_r6 < 7; var_r6++)
    {
        if (!(gUnk_03004670->unk8[0][var_r6 + ((gUnk_03004C20.world - 1) * 8)] & 0x80))
        {
            continue;
        }

        gUnk_030034B0.unk7_4 = var_r6;
        gUnk_030034B0.unk7_0 = sub_080469FC();
        if (gUnk_030034B0.unk7_0 != 0)
        {
            break;
        }
    }

    gBgInfo[1].hOfs = gBg2Alpha;
    gBgInfo[1].vOfs = 0x10;
    gCallbackQueue.current[1] = sub_08045734;
    if ((gUnk_03004670->unk8[gUnk_03004C20.world - 1][0] & 0x7F) == 0x7F)
    {
        gUnk_03004670->unk8[gUnk_03004C20.world - 1][0] = 0;
    }

    gUnk_030034B0.unk4 = 0x10;
    sub_08046288();
    sub_08025B78(0, 0x22);
    sub_08045F68();
    sub_080467F4();
    sub_08025BA4();

    REG_IE |= 1;
    REG_DISPSTAT |= 8;
    m4aSoundVSyncOn();

    REG_IE |= 2;
    REG_DISPSTAT |= 0x10;
    gIntrTable.hBlank = sub_08000FCC;
}

void sub_08045734(void)
{
    if (gUnk_030034E4 == 0)
    {
        sub_080468B0();
        sub_08045874();
        sub_08045F68();
        sub_08046288();
    }
    sub_08025BA4();
}

void sub_0804575C(void)
{
    u8 var_sb;

    gUnk_03005428 = 0xD;
    
    for (var_sb = 0; gUnk_0811717C[gUnk_03004C20.world - 1][var_sb][0] != 0xFF; var_sb++)
    {
        sub_08003DC0(gUnk_03005428, gUnk_0811717C[gUnk_03004C20.world - 1][var_sb][3], gUnk_0811717C[gUnk_03004C20.world - 1][var_sb][0], gUnk_0811717C[gUnk_03004C20.world - 1][var_sb][1], gUnk_0811717C[gUnk_03004C20.world - 1][var_sb][2], 1, 0, 0x1C, gUnk_0811717C[gUnk_03004C20.world - 1][var_sb][4]);
        gEntityInfo[gUnk_03005428].xPosBg2 = gUnk_0811717C[gUnk_03004C20.world - 1][var_sb][0];
        gEntityInfo[gUnk_03005428].yPosBg2 = gUnk_0811717C[gUnk_03004C20.world - 1][var_sb][1];
        gUnk_03005428 += 1;
    }
}

void sub_08045874(void)
{
    u8 sp0;
    u32 var_r2_3;
    u32 var_r4;
    s8 temp_r1;
    u32 var_r2_4;
    u8 temp_r0;

    if (gCallbackQueue.current[3] == &sub_08048028)
    {
        return;
    }

    if (gUnk_030034B0.unk6_0 == 0)
    {
        if (!(gHeldKeys & 0x300))
        {
            if (gUnk_030034B0.unk1 != 0x40)
            {
                if ((gUnk_030034B0.unk1 > 0x40) && (gUnk_030034B0.unk1 < 0xC0))
                {
                    gBg2Alpha -= 1;
                    gUnk_030034B0.unk1 -= 1;
                }
                else
                {
                    gBg2Alpha += 1;
                    gUnk_030034B0.unk1 += 1;
                }

                if (gUnk_030034B0.unk1 != 0x40)
                {
                    if ((gUnk_030034B0.unk1 > 0x40) && (gUnk_030034B0.unk1 < 0xC0))
                    {
                        gBg2Alpha -= 1;
                        gUnk_030034B0.unk1 -= 1;
                    }
                    else
                    {
                        gBg2Alpha += 1;
                        gUnk_030034B0.unk1 += 1;
                    }
                }

                gBgInfo[1].hOfs = gBg2Alpha;
                return;
            }
        }
        else
        {
            if (gHeldKeys & 0x100)
            {
                gBg2Alpha += 1;
                gUnk_030034B0.unk1 += 1;
            }

            if (gHeldKeys & 0x200)
            {
                gBg2Alpha -= 1;
                gUnk_030034B0.unk1 -= 1;
            }

            gBgInfo[1].hOfs = gBg2Alpha;
            return;
        }

        if (gNewKeys & 8)
        {
            for (var_r2_4 = 0; var_r2_4 < 10; var_r2_4++)
            {
                gCallbackQueue.previous[var_r2_4] = gCallbackQueue.current[var_r2_4];
            }
            gCallbackQueue.previousCount = gCallbackQueue.currentCount;

            gUnk_030034BC = 0;
            gUnk_03003410.unk4 = 1;
            gCallbackQueue.next[0] = sub_08039D8C;
            gCallbackQueue.next[1] = sub_0800C45C;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }
        else if (gNewKeys & 1)
        {
            gBlendValue = 0;
            gUnk_03004C20.room = 0;
            gUnk_03004C20.level = gUnk_030034B0.unk6_4;
            sub_08025B78(0, 0x22);
            gCallbackQueue.current[1] = sub_08045398;
            gUnk_03005284->unk1E = gUnk_03005284->unk0 = gUnk_03005220.lives;

            if (gUnk_03004C20.world == 1)
            {
                var_r2_3 = 0;
                if ((gUnk_03004C20.level == 1) && !(gUnk_03004670->unk8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] & 0x80))
                {
                    gUnk_03004D90.unk9 = 1;
                    var_r2_3 = 1;
                }
                else if ((gUnk_03004C20.level == 4) && !(gUnk_03004670->unk8[0][3] & 0x80))
                {
                    gUnk_03004D90.unk9 = 2;
                    var_r2_3 = 1;
                }
                else if ((gUnk_03004C20.level == 6) && !(gUnk_03004670->unk8[0][5] & 0x80))
                {
                    gUnk_03004D90.unk9 = 5;
                    var_r2_3 = 1;
                }

                if (var_r2_3 != 0)
                {
                    for (var_r2_4 = 0; var_r2_4 < 10; var_r2_4++)
                    {
                        gCallbackQueue.previous[var_r2_4] = gCallbackQueue.current[var_r2_4];
                    }
                    gCallbackQueue.previousCount = gCallbackQueue.currentCount;

                    gUnk_030051F0.unkE = gBlendValue;
                    gUnk_030051F0.unk4 = REG_BLDCNT;
                    gUnk_030051F0.unk6 = REG_BG0CNT;
                    gUnk_030051F0.unk8 = REG_BG1CNT;
                    gUnk_030051F0.unkA = REG_BG2CNT;
                    gUnk_030051F0.unkC = REG_BG3CNT;
                    gUnk_030051F0.unk0 = gUnk_03004C20.sceneFrameCounter;

                    gUnk_030034BC = 0;
                    gUnk_03004D90.unk8 = 1;
                    gCallbackQueue.next[0] = sub_08047B1C;
                    gCallbackQueue.next[1] = sub_0800C45C;
                    gCallbackQueue.next[2] = NULL + 1;
                    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                    gCallbackQueue.nextCount = 3;
                    return;
                }
            }
        }
        else if ((gHeldKeys & 0x10) && (gUnk_030034B0.unk4 == 0))
        {
            switch (gUnk_030034B0.unk6_4 - 1)
            {
                case 0:
                    var_r4 = 2;
                    break;

                case 1:
                    var_r4 = 3;
                    break;

                case 2:
                    var_r4 = 4;
                    break;

                case 3:
                    var_r4 = 5;
                    break;

                case 4:
                    var_r4 = 6;
                    break;

                case 5:
                    var_r4 = 7;
                    break;

                case 6:
                    var_r4 = 8;
                    break;

                case 7:
                    var_r4 = 1;
                    break;

                default:
                    var_r4 = 1;
                    break;
            }

            if (gUnk_03004670->unk8[gUnk_03004C20.world - 1][var_r4 - 1] != 0x7F)
            {
                m4aSongNumStart(0x51);
                gUnk_03004C20.sceneFrameCounter = 0;
                gUnk_030034B0.unk6_0 = 1;
                gUnk_030034B0.unk8_0 = gUnk_030034B0.unk6_4;
                gUnk_030034B0.unk8_4 = var_r4;
                gUnk_030034B0.unk4 = 0x20;
                sub_08025B78(0, 1);
            }

            gEntityInfo->unkC_2 = 0;
        }
        else if ((gHeldKeys & 0x20))
        {
            if (gUnk_030034B0.unk4 == 0)
            {
                switch (gUnk_030034B0.unk6_4 - 1)
                {
                    case 0:
                        var_r4 = 8;
                        break;

                    case 2:
                        var_r4 = 2;
                        break;

                    case 3:
                        var_r4 = 3;
                        break;

                    case 4:
                        var_r4 = 4;
                        break;

                    case 5:
                        var_r4 = 5;
                        break;

                    case 6:
                        var_r4 = 6;
                        break;

                    case 7:
                        var_r4 = 7;
                        break;

                    default:
                        var_r4 = 1;
                        break;
                }

                if (gUnk_03004670->unk8[gUnk_03004C20.world - 1][var_r4 - 1] != 0x7F)
                {
                    m4aSongNumStart(0x51);
                    gUnk_03004C20.sceneFrameCounter = 0;
                    gUnk_030034B0.unk6_0 = 2;
                    gUnk_030034B0.unk8_0 = gUnk_030034B0.unk6_4;
                    gUnk_030034B0.unk8_4 = var_r4;
                    gUnk_030034B0.unk4 = 0x20;
                    sub_08025B78(0, 1);
                }

                gEntityInfo->unkC_2 = 1;
            }
        }
    }
    else
    {
        if (gUnk_030034B0.unk8_0 == 1 && gUnk_030034B0.unk8_4 == 8)
        {
            sp0 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][7]][1];
            temp_r0 = Abs((u8)-gBg2Alpha) + 1;
        }
        else if (gUnk_030034B0.unk8_0 == 8 && gUnk_030034B0.unk8_4 == 1)
        {
            sp0 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][7]][1];
            temp_r0 = Abs((u8)-gBg2Alpha - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk8_0 - 1]][1]);
        }
        else
        {
            sp0 = Abs(gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk8_4 - 1]][1] - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk8_0 - 1]][1]);
            temp_r0 = Abs((u8)-gBg2Alpha - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk8_0 - 1]][1]);
        }

        temp_r1 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk8_4 - 1]][0] - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk8_0 - 1]][0];
        if ((temp_r1 != 0) && (temp_r0 != 0))
        {
            gUnk_030034B0.unk2 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk8_0 - 1]][0] + ((temp_r1 * temp_r0) / sp0);
        }

        if (gUnk_030034B0.unk6_0 & 2)
        {
            gBg2Alpha -= 1;
        }
        else
        {
            gBg2Alpha += 1;
        }

        if ((sp0 - temp_r0) == 0xA)
        {
            gUnk_030034B0.unk4 = 0x30;
        }

        if ((u8)-gBg2Alpha == gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk8_4 - 1]][1])
        {
            gUnk_030034B0.unk6_0 = 0;
            gUnk_030034B0.unk6_4 = gUnk_030034B0.unk8_4;
            sub_08025B78(0, 0);
        }
    }

    gBgInfo[1].hOfs = gBg2Alpha;
}

void sub_08045F68(void)
{
    s16 temp_r2;
    s16 temp_r4;
    s16 temp_r7;
    s16 temp_sb;
    u32 var_r5;
    u8 temp_r1;

    gEntityInfo[0].affineEnable = 1;
    gEntityInfo[0].affineHFlip_matrixNum = 0;

    temp_r7 = MultiplyQ8(gSineTable[0x40], ReciprocalQ8(0xA0));
    temp_sb = MultiplyQ8(gSineTable[0], ReciprocalQ8(0));
    temp_r4 = MultiplyQ8(-gSineTable[0], ReciprocalQ8(0));
    temp_r2 = MultiplyQ8(gSineTable[0x40], ReciprocalQ8(0xA0));

    if (gEntityInfo[0].unkC_2 == 0)
    {
        gOamAffineBuffer->pa = temp_r7;
    }
    else
    {
        gOamAffineBuffer->pa = -temp_r7;
    }
    gOamAffineBuffer->pb = temp_sb;
    gOamAffineBuffer->pc = temp_r4;
    gOamAffineBuffer->pd = temp_r2;

    gBg2PA = MultiplyQ8(gSineTable[gBg2Alpha + 0x40], ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(gSineTable[gBg2Alpha], ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-gSineTable[gBg2Alpha], ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(gSineTable[gBg2Alpha + 0x40], ReciprocalQ8(gBg2YMag));

    gBg2X = (0x7800 - (gBg2PA * 0x78)) - (gBg2PB * 0x78);
    gBg2Y = (0x7800 - (gBg2PC * 0x78)) - (gBg2PD * 0x78);

    gEntityInfo[0].xPosScreen = ((gSineTable[gUnk_030034B0.unk1 + 0x40] * (s8) gUnk_030034B0.unk2) >> 8) + 0x78;
    gEntityInfo[0].yPosScreen = (((gSineTable[gUnk_030034B0.unk1] * (s8) gUnk_030034B0.unk2) >> 8) / 3) + 0x6E;
    gEntityInfo[0].priority = 1;

    for (var_r5 = gUnk_030034B0.unk0_1 + 0xD; var_r5 < gUnk_03005428; var_r5++)
    {
        temp_r1 = gBg2Alpha + 0x40 + gEntityInfo[var_r5].yPosBg2;
        gEntityInfo[var_r5].xPosScreen = ((gSineTable[temp_r1 + 0x40] * gEntityInfo[var_r5].xPosBg2) >> 8) + 0x78;
        gEntityInfo[var_r5].yPosScreen = (((gSineTable[temp_r1] * gEntityInfo[var_r5].xPosBg2) >> 8) / 3) + 0x66;
    }

    sub_08046A64(gUnk_03005428 - (gUnk_030034B0.unk0_1 + 0xD));

    for (var_r5 = gUnk_030034B0.unk0_1 + 0xD; var_r5 < gUnk_03005428; var_r5++)
    {
        if ((gEntityInfo[var_r5].unk11 <= 0x50) || (gEntityInfo[var_r5].unk11 >= 0x54))
        {
            gEntityInfo[var_r5].unk10 = 0;
        }
        else if ((gUnk_030034B0.unk0_0 != 0) && (gEntityInfo[var_r5].unk11 == 0x53))
        {
            gEntityInfo[var_r5].unk10 = 0;
        }
        else
        {
            gEntityInfo[var_r5].unk10 = 1;
            gEntityInfo[var_r5].yPosScreen -= gEntityInfo[var_r5].unk8.split.unk8;
        }
    }

    gEntityInfo[0].yPosScreen -= 0xA;
}

void sub_08046288(void)
{
    u32 sp0;
    u8 var_sb;
    u16 *var_r7;

    var_r7 = &gBgTilemapBufs[0][0];

    if (gUnk_030034B0.unk4 == 0)
    {
        return;
    }

    if (gUnk_030034B0.unk3 != 0)
    {
        gUnk_030034B0.unk3 -= 1;
    }

    switch (gUnk_030034B0.unk4 & 0xF0)
    {
        case 0x30:
            switch (gUnk_030034B0.unk4 & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &var_r7[0x2C0], &var_r7[0x243], 0x24);
                    DmaCopy16Wait(3, &var_r7[0x2E0], &var_r7[0x263], 0x24);
                    gUnk_030034B0.unk3 = 5;
                    gUnk_030034B0.unk4 += 1;
                    break;

                case 1:
                    if (gUnk_030034B0.unk3 == 0)
                    {
                        DmaCopy16Wait(3, &var_r7[0x300], &var_r7[0x243], 0x24);
                        DmaCopy16Wait(3, &var_r7[0x320], &var_r7[0x263], 0x24);
                        gUnk_030034B0.unk3 = 5;
                        gUnk_030034B0.unk4 += 1;
                    }
                    break;

                case 2:
                    if (gUnk_030034B0.unk3 == 0)
                    {
                        gUnk_030034B0.unk4 = 0x10;
                    }
                    break;
            }
            break;

        case 0x20:
            switch (gUnk_030034B0.unk4 & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &var_r7[0x300], &var_r7[0x243], 0x24);
                    DmaCopy16Wait(3, &var_r7[0x320], &var_r7[0x263], 0x24)
                    gUnk_030034B0.unk3 = 5;
                    gUnk_030034B0.unk4 += 1;
                    break;

                case 1:
                    if (gUnk_030034B0.unk3 == 0)
                    {
                        DmaCopy16Wait(3, &var_r7[0x2C0], &var_r7[0x243], 0x24);
                        DmaCopy16Wait(3, &var_r7[0x2E0], &var_r7[0x263], 0x24);
                        gUnk_030034B0.unk3 = 5;
                        gUnk_030034B0.unk4 += 1;
                    }
                    break;

                case 2:
                    if (gUnk_030034B0.unk3 == 0)
                    {
                        DmaCopy16Wait(3, &var_r7[0x280], &var_r7[0x243], 0x24);
                        DmaCopy16Wait(3, &var_r7[0x2A0], &var_r7[0x263], 0x24);
                        gUnk_030034B0.unk4 = 0;
                    }
                    break;
            }
            break;

        case 0x10:
            switch (gUnk_030034B0.unk4 & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &var_r7[0x340], &var_r7[0x243], 0x24);
                    DmaCopy16Wait(3, &var_r7[0x360], &var_r7[0x263], 0x24);
                    if (gUnk_030034B0.unk6_4 == 8)
                    {
                        DmaCopy16Wait(3, &var_r7[0x38B], &var_r7[0x248], 0x10);
                        DmaCopy16Wait(3, &var_r7[0x3AB], &var_r7[0x268], 0x10);
                    }
                    else
                    {
                        var_sb = gUnk_03004670->unk8[gUnk_03004C20.world - 1][gUnk_030034B0.unk6_4 - 1] & 0x7F;
                        if (var_sb == 0x7F)
                        {
                            var_sb = 0;
                        }
                        DmaCopy16Wait(3, &var_r7[0x385], &var_r7[0x244], 0xC);
                        DmaCopy16Wait(3, &var_r7[0x3A5], &var_r7[0x264], 0xC);

                        for (sp0 = 0; sp0 < 2; sp0++)
                        {
                            // TODO: ugly pointer arithmetic required to match, likely used macros
                            var_r7[0x24A + sp0 * 0x20] = *(var_r7 + 0x13 + gUnk_03004C20.world + (0x16 + sp0) * 0x20);
                            var_r7[0x24B + sp0 * 0x20] = var_r7[0x2DE + sp0 * 0x20];
                            var_r7[0x24C + sp0 * 0x20] = *(var_r7 + 0x13 + gUnk_030034B0.unk6_4 + (0x16 + sp0) * 0x20);
                            var_r7[0x24D + sp0 * 0x20] = var_r7[0x2DF + sp0 * 0x20];

                            if ((gUnk_030034B0.unk6_4 == 0x4) || (gUnk_030034B0.unk6_4 == 0x6))
                            {
                                if ((var_sb / 100) != 0)
                                {
                                    var_r7[0x24E + sp0 * 0x20] = *(var_r7 + 0x13 + (var_sb / 100) + (0x16 + sp0) * 0x20);
                                    var_r7[0x24F + sp0 * 0x20] = *(var_r7 + 0x13 + ((var_sb / 10) % 10) + (0x16 + sp0) * 0x20);
                                }
                                else if (((var_sb / 10) % 10) != 0)
                                {
                                    var_r7[0x24F + sp0 * 0x20] = *(var_r7 + 0x13 + ((var_sb / 10) % 10) + (0x16 + sp0) * 0x20);
                                }

                                var_r7[0x250 + sp0 * 0x20] = *(var_r7 + 0x13 + (var_sb % 10) + (0x16 + sp0) * 0x20);
                                var_r7[0x251 + sp0 * 0x20] = var_r7[0x382 + sp0 * 0x20];
                                var_r7[0x252 + sp0 * 0x20] = var_r7[0x383 + sp0 * 0x20];
                                var_r7[0x253 + sp0 * 0x20] = var_r7[0x384 + sp0 * 0x20];
                            }
                            else
                            {
                                if (((var_sb / 10) % 10) != 0)
                                {
                                    var_r7[0x24F + sp0 * 0x20] = *(var_r7 + 0x13 + ((var_sb / 10) % 10) + (0x16 + sp0) * 0x20);
                                }

                                var_r7[0x250 + sp0 * 0x20] = *(var_r7 + 0x13 + (var_sb % 10) + (0x16 + sp0) * 0x20);
                                var_r7[0x251 + sp0 * 0x20] = var_r7[0x380 + sp0 * 0x20];
                                var_r7[0x252 + sp0 * 0x20] = var_r7[0x381 + sp0 * 0x20];
                            }
                        }
                    }

                    gUnk_030034B0.unk3 = 4;
                    gUnk_030034B0.unk4 += 1;
                    break;

                case 1:
                    if (gUnk_030034B0.unk3 == 0)
                    {
                        gUnk_030034B0.unk4 = 0;
                    }
                    break;
            }
            break;
    }
}


void sub_080467F4(void)
{
    u8 var_r2;
    u8 var_r4;

    for (var_r4 = 0; var_r4 < 8; var_r4++)
    {
        if (gUnk_03004670->unk8[gUnk_03004C20.world - 1][var_r4] == 0x7F)
        {
            var_r2 = 0;
        }
        else
        {
            if (var_r4 == 7)
            {
                var_r2 = 5;
            }
            else if ((var_r4 == 3) || (var_r4 == 5))
            {
                var_r2 = 3;
            }
            else
            {
                var_r2 = 1;
            }
            if ((gUnk_03004670->unk8[gUnk_03004C20.world - 1][var_r4] & 0x80) != 0)
            {
                var_r2 += 1;
                if ((var_r4 == 7) && (gUnk_03004C20.world == 5) && ((gUnk_03004670->unk8[5][7] & 0x80) == 0))
                {
                    var_r2 -= 1;
                }
            }
        }

        sub_08025B78(gUnk_0811762C[gUnk_03004C20.world - 1][var_r4] + 0xD, var_r2);
    }
}

void sub_080468B0(void)
{

    if (gUnk_030034B0.unk7_0 == 0)
    {
        return;
    }

    if (gUnk_030034B0.unk5 != 0)
    {
        gUnk_030034B0.unk5 -= 1;
    }

    if (gBg2Alpha == (u8)-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk7_0 - 1]][1])
    {
        gHeldKeys = 0x300;
        if (gUnk_030034B0.unk5 == 0)
        {
            gUnk_030034B0.unk5 = 0x80;
        }

        if (gUnk_030034B0.unk5 == 0x40)
        {
            m4aSongNumStart(0x8B);
            gUnk_03004670->unk8[gUnk_03004C20.world - 1][gUnk_030034B0.unk7_0 - 1] &= 0x80;
            sub_080467F4();
        }

        if (gUnk_030034B0.unk5 == 1)
        {
            gUnk_030034B0.unk7_0 = sub_080469FC();
        }
    }
    else
    {
        if ((s8)(-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk7_0 - 1]][1] - gBg2Alpha) < 0)
        {
            gHeldKeys = 0x200;
        }
        else if ((s8)(-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gUnk_030034B0.unk7_0 - 1]][1] - gBg2Alpha) > 0)
        {
            gHeldKeys = 0x100;
        }
    }
}

u8 sub_080469FC(void)
{
    u8 var_r2;

    for (var_r2 = 0; var_r2 < 8; var_r2++)
    {
        if ((((gUnk_0811765C[gUnk_03004C20.world][gUnk_030034B0.unk7_4] >> var_r2) & 1) != 0) && (gUnk_03004670->unk8[gUnk_03004C20.world - 1][var_r2] == 0x7F))
        {
            return var_r2 + 1;
        }
    }
    return 0;
}

void sub_08046A64(u8 arg0)
{
    struct EntityInfo *var_sl;
    u8 var_r4;
    u8 var_r1;
    u8 var_r3;
    struct EntityInfo subroutine_arg0;

    var_sl = &gEntityInfo[0xD + gUnk_030034B0.unk0_1];

    var_r4 = 1;
    while (var_r4 < (arg0 / 9))
    {
        var_r4 = (var_r4 * 3) + 1;
    }

    while (var_r4 != 0)
    {
        for (var_r1 = var_r4; var_r1 < arg0; var_r1++)
        {
            for (var_r3 = var_r1; var_r3 >= var_r4 && ((((*(var_sl + var_r3 - var_r4)).yPosScreen < (*(var_sl + var_r3)).yPosScreen))); var_r3 -= var_r4)
            {
                subroutine_arg0 = *(var_sl + var_r3);
                *(var_sl + var_r3) = *(var_sl + var_r3 - var_r4);
                *(var_sl + var_r3 - var_r4) = subroutine_arg0;
            }
        }

        var_r4 /= 3;
    }
}
