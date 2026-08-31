#include "global.h"
#include "code_0800BFF4.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "code_080240F4.h"
#include "code_08039D8C.h"
#include "save.h"
#include "main.h"
#include "math.h"
#include "rand.h"
#include "util.h"
#include "data/trig.h"
#include "structs/variables.h"

struct Unk_080D48C8 {
    u16 unk0;
    u16 unk2;
    u8 unk4_0:2;
    u8 unk4_2:6;
    u8 pad5[0x8 - 0x5];
};
extern struct Unk_080D48C8 gUnk_080D48C8[6][7][0x15];

struct Unk_080D6458 {
    u16 unk0;
    u16 unk2;
    u8 unk4_0:2;
    u8 pad5[0x8 - 0x5];
};
extern struct Unk_080D6458 gUnk_080D6458[6];

extern struct Unk_080D821C gUnk_080D821C[0xD];

struct Unk_080D89A8 {
    s32 unk0;
    s32 unk4;
};
extern struct Unk_080D89A8 gUnk_080D89A8[5][5];

extern struct Unk_0300542C *gUnk_0818B704[6][7];

// BFF4
void CommonWaitForNextFrame(void)
{
    // Normal, called during Namco boot, file select, world map, level gameplay, delete all save data
    sub_0800A49C();
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 2) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 5) & 0x1FF;
    REG_BG1HOFS = gBgInfo[1].hOfs & 0x1FF;
    REG_BG1VOFS = gBgInfo[1].vOfs & 0x1FF;
    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, BLEND_MAX - gBlendValue);
    REG_BLDY = gBlendValue;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.globalFrameCounter += 1;
    gUnk_03004C20.sceneFrameCounter += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// TODO: should be static variables inside BossWaitForNextFrame
extern u8 gUnk_03000000;
extern u8 gUnk_03000001;
extern u8 gUnk_03000002;
extern u8 gUnk_03000003;

// C108
void BossWaitForNextFrame(void)
{
    // Boss battle
    s8 sp0;
    s8 sp4;
    s32 temp_r0_2;
    s32 var_r3_2;
    s32 var_r8;
    s32 var_sb;
    u16 var_r2_2;
    u32 var_r5_2;
    u32 var_r6;
    u8 temp_r4;

    if (gUnk_03005400.unkE_1)
    {
        gUnk_03000001 = gUnk_03005400.unkD * 2;
        gUnk_03000003 = 0x20;
        gUnk_03005400.unkE_1 = 0;
    }

    if (gUnk_03005400.unkE_0)
    {
        gUnk_03000000 = gUnk_03005400.unkD * 2;
        gUnk_03000002 = 0x20;
        gUnk_03005400.unkE_0 = 0;
    }

    if (gUnk_03000000 != 0)
    {
        gUnk_03000002 += 0x20;
        gUnk_03000002 %= 0x100;
        if ((gUnk_03000002 % 0x80) == 0)
        {
            gUnk_03000000 -= 1;
        }
    }
    if (gUnk_03000001 != 0)
    {
        gUnk_03000003 += 0x20;
        gUnk_03000003 %= 0x100;
        if ((gUnk_03000003 % 0x80) == 0)
        {
            gUnk_03000001 -= 1;
        }
    }

    sp0 = ((s16)(gUnk_03000000 * SIN(gUnk_03000002)) >> 0x8) * 2;
    sp4 = ((s16)(-gUnk_03000001 * SIN(gUnk_03000003)) >> 0x8) * 2;
    sub_0800A71C(sp0, sp4);
    sub_080070A0();

    if ((gUnk_03004C20.world == 5) || (gUnk_03004C20.world == 6))
    {
        if ((gCallbackQueue.current[1] == PauseMenuScreenHandler) || (gCallbackQueue.current[0] == PauseMenuScreenInit) || (gCallbackQueue.current[1] == PauseMenuScreenInit) || (gCallbackQueue.current[1] == ButtonConfigurationScreenHandler) || (gCallbackQueue.current[1] == ButtonConfigurationScreenInit))
        {
            if (gUnk_030034BC == 0)
            {
                var_sb = 0;
                var_r8 = 1;
            }
            else
            {
                var_sb = 1;
                var_r8 = 0;
            }
            temp_r4 = (8 - Abs(8 - gDisplayBackup.blendValue)) * 8;
            var_r5_2 = gDisplayBackup.sceneFrameCounter;
        }
        else
        {
            var_sb = 1;
            var_r8 = 1;
            temp_r4 = (8 - Abs(8 - gBlendValue)) * 8;
            var_r5_2 = gUnk_03004C20.sceneFrameCounter;
        }

        for (var_r6 = 0; var_r6 < DISPLAY_HEIGHT; var_r6++)
        {
            if (var_r6 < (DISPLAY_HEIGHT - 0x10))
            {
                temp_r0_2 = (temp_r4 * COS((u8)((var_r5_2 + var_r6) * 4))) >> 8;
                gUnk_03004C40[var_r6] = temp_r0_2 * var_sb;
                gUnk_030052C0[var_r6] = -temp_r0_2 * var_r8;
            }
            else
            {
                gUnk_03004C40[var_r6] = 0;
                gUnk_030052C0[var_r6] = 0;
            }
        }
    }

    var_r3_2 = gBgInfo[2].hOfs;
    var_r2_2 = gBgInfo[2].vOfs;
    if ((gUnk_03004C20.world == 4) && (gUnk_03004C20.level == 8))
    {
        var_r2_2 += 0x20;
    }
    gBg2X = (((var_r3_2 << 8) - (var_r3_2 * gBg2PA)) - (var_r2_2 * gBg2PB)) + ((gBgInfo[2].hOfs + sp0) << 8);
    gBg2Y = (((var_r2_2 << 8) - (var_r3_2 * gBg2PC)) - (var_r2_2 * gBg2PD)) + ((gBgInfo[2].vOfs + sp4) << 8);

    VBlankIntrWait();

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 4) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 7) & 0x1FF;
    REG_BG1HOFS = gBgInfo[1].hOfs & 0x1FF;
    REG_BG1VOFS = gBgInfo[1].vOfs & 0x1FF;
    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, BLEND_MAX - gBlendValue);
    REG_BLDY = gBlendValue;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.globalFrameCounter += 1;
    gUnk_03004C20.sceneFrameCounter += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// C45C
void LevelSelectWaitForNextFrame(void)
{
    // Level select
    sub_080098C8();
    gBg2AlphaSin = SIN(gBg2Alpha);
    gBg2AlphaCos = COS(gBg2Alpha);

    VBlankIntrWait();

    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, BLEND_MAX - gBlendValue);
    REG_BLDY = gBlendValue;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, 0, 0);

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 2) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 5) & 0x1FF;
    REG_BG1HOFS = gBgInfo[1].hOfs & 0x1FF;
    REG_BG1VOFS = gBgInfo[1].vOfs & 0x1FF;

    REG_BG2PA = gBg2PA;
    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    gUnk_03004C20.globalFrameCounter += 1;
    gUnk_03004C20.sceneFrameCounter += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// C564
void CutsceneWaitForNextFrame(void)
{
    // Cutscenes
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = gBgInfo[0].hOfs & 0x1FF;
    REG_BG0VOFS = gBgInfo[0].vOfs & 0x1FF;
    REG_BG1HOFS = gBgInfo[1].hOfs & 0x1FF;
    REG_BG1VOFS = gBgInfo[1].vOfs & 0x1FF;
    REG_BG2HOFS = (gBgInfo[2].hOfs >> 4) & 0x1FF;
    REG_BG2VOFS = (gBgInfo[2].vOfs >> 4) & 0x1FF;
    REG_BG3HOFS = (gBgInfo[3].hOfs >> 4) & 0x1FF;
    REG_BG3VOFS = (gBgInfo[3].vOfs >> 4) & 0x1FF;

    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, BLEND_MAX - gBlendValue);
    REG_BLDY = gBlendValue;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    gUnk_030034F8 = MultiplyQ8(SIN((gUnk_03004C20.sceneFrameCounter * 0x10) % 0x100), MultiplyQ8(0x200, SIN((gUnk_03004C20.sceneFrameCounter * 4) % 0x80)));
    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));

    gBg2X = ((gBgInfo[2].hOfs * 0x10) - (gBg2PA * DISPLAY_WIDTH_CENTER)) - (gBg2PB * 0x78);
    gBg2Y = ((gBgInfo[2].vOfs * 0x10) - (gBg2PC * 0x28)) - (gBg2PD * 0x28);

    thunk_UpdateRng();
    gUnk_03004C20.globalFrameCounter += 1;
    gUnk_03004C20.sceneFrameCounter += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// C7EC
void GameOverScreenWaitForNextFrame(void)
{
    // Game over, good night
    sub_0800A49C();
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 2) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 5) & 0x1FF;
    REG_BG1HOFS = gBgInfo[1].hOfs & 0x1FF;
    REG_BG1VOFS = gBgInfo[1].vOfs & 0x1FF;
    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, BLEND_MAX - gBlendValue);
    REG_BLDY = gBlendValue;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.globalFrameCounter += 1;
    gUnk_03004C20.sceneFrameCounter += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// C900
void ClearedAllVisionsScreenWaitForNextFrame(void)
{
    // cleared all visions screen
    VBlankIntrWait();

    REG_BG0HOFS = (gBgInfo[0].hOfs >> 2) & 0x1FF;
    REG_BG0VOFS = (gBgInfo[0].vOfs >> 5) & 0x1FF;
    REG_BG1HOFS = gBgInfo[1].hOfs & 0x1FF;
    REG_BG1VOFS = gBgInfo[1].vOfs & 0x1FF;
    REG_BG2X_L = gBg2X;
    REG_BG2X_H = (gBg2X & 0x0FFF0000) >> 0x10;
    REG_BG2Y_L = gBg2Y;
    REG_BG2Y_H = (gBg2Y & 0x0FFF0000) >> 0x10;

    REG_BG2PA = gBg2PA;
    REG_BG2PB = gBg2PB;
    REG_BG2PC = gBg2PC;
    REG_BG2PD = gBg2PD;

    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, BLEND_MAX - gBlendValue);
    REG_BLDY = gBlendValue;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.globalFrameCounter += 1;
    gUnk_03004C20.sceneFrameCounter += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}

// CA0C
void sub_0800CA0C(u32 arg0)
{
    // Called once per level/room load
    // arg0 is 0 when starting level, 1 when loading from file select (if saved progress), 2 when reloading (room/retry/death)
    u32 var_r4;

    gUnk_03003508 = 3;
    gUnk_03004C20.isHoverBoardLevel = 0;
    gUnk_03004C20.unkA = 0;

    for (var_r4 = 0; var_r4 < 0xD; var_r4++)
    {
        if ((gUnk_03004C20.world == gUnk_080D821C[var_r4].unk8) && (gUnk_03004C20.level == gUnk_080D821C[var_r4].unk9))
        {
            gUnk_03004D80 = &gUnk_080D821C[var_r4];
            gUnk_03004C20.unkA = 1;
            if (gUnk_03004C20.level != 8)
            {
                gUnk_03004C20.isHoverBoardLevel = 1;
                gUnk_03003508 = 6;
            }
            break;
        }
    }

    gUnk_03000810 = 0;
    if (gUnk_03004C20.level == 8)
    {
        gEntityInfo[0].xPosBg2 = gUnk_080D6458[gUnk_03004C20.world - 1].unk0;
        gEntityInfo[0].yPosBg2 = gUnk_080D6458[gUnk_03004C20.world - 1].unk2;
        gEntityInfo[0].unkC_2 = gUnk_080D6458[gUnk_03004C20.world - 1].unk4_0;
    }
    else
    {
        gEntityInfo[0].xPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk0;
        gEntityInfo[0].yPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk2;
        gEntityInfo[0].unkC_2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk4_0;
    }

    if (arg0 == 0)
    {
        gUnk_03005284->unk6 = 0;
        gUnk_03005284->unk1 = gUnk_03004C20.world;
        gUnk_03005284->unk2 = gUnk_03004C20.level;
        gUnk_03005284->unk16 = 0;
        if (gUnk_03003410.unkA == 0)
        {
            WriteSaveFile(0, 1);
            WriteSaveFile(1, 0);
        }
        gUnk_03005220.stars = 0;
        gUnk_03005220.dreamStones = 0;
        gUnk_03005220.hearts = 3;
        gUnk_03005220.keys = 0;
        gUnk_03005220.unk14 = 0;
        gUnk_03005220.unk3_6 = gUnk_03005220.unk3_5 = 0;
        if ((gUnk_03004C20.isHoverBoardLevel != 0) || ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3))))
        {
            gUnk_03005220.unk4 = gUnk_03005284->unk18;
        }
        else
        {
            gUnk_03005220.unk4 = 0;
        }
        gUnk_03005220.unk8 = 0;
        gUnk_03005220.unkC = 0;
        gUnk_03005220.unk2_7 = 0;
        gUnk_03005220.unk2E = 0;
        gUnk_03005220.unk58 = 0;
        gUnk_03005220.unk1_7 = 0;
        gUnk_03005220.unk60 = 0;
        gUnk_03005220.levelTimeCentiseconds = 0;
        gUnk_03005220.levelTimeSeconds = 0;
        gUnk_03005220.levelTimeMinutes = 0;
        gUnk_03004C20.roomsRotationBits = 0;
        gUnk_03005220.klonoaIdleTimer = 0;
        gUnk_03005220.klonoaPrevIdleAnimation = 0;
    }

    if (arg0 == 1)
    {
        gUnk_03005220.lives = gUnk_03005284->unk0;
        gUnk_03005220.hearts = gUnk_03005284->unk8_0;
        gUnk_03005220.stars = gUnk_03005284->unk8_2;
        gUnk_03005220.dreamStones = gUnk_03005284->unk8_5;
        gUnk_03005220.keys = gUnk_03005284->unk9_4;
        gUnk_03005220.unk4 = gUnk_03005284->unk18;
        gUnk_03005220.unk2_7 = gUnk_03005284->unkA_7;
        gUnk_03005220.unk3_5 = gUnk_03005284->unkB_5;
        gUnk_03005220.unk3_6 = gUnk_03005284->unkB_6;
        gUnk_03005220.unk8 = gUnk_03005284->unkC;
        gUnk_03005220.unkC = gUnk_03005284->unk10;
        gUnk_03005220.unk14 = gUnk_03005284->unk14;
        gUnk_03005220.unk2E = gUnk_03005284->unk5;
        gUnk_03005220.unk58 = gUnk_03005284->unk7;
        // FAKE
        do
        {
            gUnk_03005220.unk1_7 = gUnk_03005284->unk9_7;
            gUnk_03004C20.roomsRotationBits = gUnk_03005284->unk16;
            gUnk_03005220.unk60 = 0;
            gUnk_03005220.levelTimeCentiseconds = 0;
            gUnk_03005220.levelTimeSeconds = 0;
            gUnk_03005220.levelTimeMinutes = 0;
        }
        while(0);
    }
    else
    {
        gUnk_03005284->unk0 = gUnk_03005220.lives;
        gUnk_03005284->unk1 = gUnk_03004C20.world;
        gUnk_03005284->unk2 = gUnk_03004C20.level;
        gUnk_03005284->unk8_0 = gUnk_03005220.hearts;
        gUnk_03005284->unk16 = gUnk_03004C20.roomsRotationBits;
        gUnk_03005284->unk8_2 = gUnk_03005220.stars;
        gUnk_03005284->unk9_4 = gUnk_03005220.keys;
        gUnk_03005284->unk14 = gUnk_03005220.unk14;
        gUnk_03005284->unkB_5 = gUnk_03005220.unk3_5;
        gUnk_03005284->unkB_6 = gUnk_03005220.unk3_6;
        gUnk_03005284->unk5 = gUnk_03005220.unk2E;
        gUnk_03005284->unk7 = gUnk_03005220.unk58;
        gUnk_03005284->unk9_7 = gUnk_03005220.unk1_7;
        gUnk_03005284->unk18 = gUnk_03005220.unk4;
        if (gUnk_03004C20.isHoverBoardLevel == 0)
        {
            gUnk_03005284->unk8_5 = gUnk_03005220.dreamStones;
            gUnk_03005284->unkC = gUnk_03005220.unk8;
            gUnk_03005284->unk10 = gUnk_03005220.unkC;
            gUnk_03005284->unkA_7 = gUnk_03005220.unk2_7;
        }
        else
        {
            gUnk_03005284->unk8_5 = 0;
            gUnk_03005284->unkC = 0;
            gUnk_03005284->unk10 = 0;
            gUnk_03005284->unkA_7 = 0;
        }
    }

    if (gUnk_03003410.unkA == 0)
    {
        gCallbackQueue.next[0] = InputHandler_Normal;
    }
    else
    {
        gCallbackQueue.next[0] = InputHandler_AttractMode;
    }

    gUnk_03003410.unk5 = 0;
    gUnk_03003410.unk0 = 0;
    gUnk_03003410.unkB = 0;
    gUnk_030051E0 = 0;
    gUnk_030034C4 = 0xFE;
    gBgInfo[2].tileRow = 0;
    gBgInfo[2].tileCol = 0;

    if (gUnk_03004C20.level == 8)
    {
        gCallbackQueue.next[1] = sub_0803C808;
        gCallbackQueue.next[2] = sub_08002AC4;
        gCallbackQueue.next[3] = sub_0800AC34;
        gCallbackQueue.next[4] = TransitionToLevelSelectOrLevelGameplay_FadeIn;
        gCallbackQueue.next[5] = DrawVisionStart;
        gCallbackQueue.next[6] = BossWaitForNextFrame;
        gCallbackQueue.next[7] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 8;
    }
    else
    {
        gCallbackQueue.next[1] = sub_0800A804;
        if (gUnk_03004C20.isHoverBoardLevel == 1)
        {
            gCallbackQueue.next[2] = HoverBoardScrollUpdate;
        }
        else if (gUnk_03004C20.level == 6)
        {
            gCallbackQueue.next[2] = AthleticChallengeScrollUpdate;
        }
        else
        {
            gCallbackQueue.next[2] = PuzzleStageScrollUpdate;
        }
        gCallbackQueue.next[3] = TransitionToLevelSelectOrLevelGameplay_FadeIn;

        if ((arg0 == 0) || (arg0 == 1))
        {
            if (gUnk_03003410.unkA == 0)
            {
                gCallbackQueue.next[4] = DrawVisionStart;
                gCallbackQueue.next[5] = CommonWaitForNextFrame;
                gCallbackQueue.next[6] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 7;
            }
            else
            {
                gCallbackQueue.next[4] = CommonWaitForNextFrame;
                gCallbackQueue.next[5] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 6;
            }
        }
        else
        {
            gUnk_03003410.unk5 = 1;
            gCallbackQueue.next[4] = CommonWaitForNextFrame;
            gCallbackQueue.next[5] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 6;
        }
        
    }

    gUnk_030034E4 = 1;
    if (gUnk_03004C20.level == 6)
    {
        gAthleticChallengeAutoScrollBaseVelocity.x = gUnk_080D89A8[gUnk_03004C20.world - 1][gUnk_03004C20.room - 1].unk0;
        gAthleticChallengeAutoScrollBaseVelocity.y = gUnk_080D89A8[gUnk_03004C20.world - 1][gUnk_03004C20.room - 1].unk4;
        gAthleticChallengeScrollFlags = SCROLL_NONE;

        if (gAthleticChallengeAutoScrollBaseVelocity.x > 0)
        {
            gAthleticChallengeScrollFlags = SCROLL_RIGHT;
        }
        else if (gAthleticChallengeAutoScrollBaseVelocity.x < 0)
        {
            gAthleticChallengeScrollFlags = SCROLL_LEFT;
        }

        if (gAthleticChallengeAutoScrollBaseVelocity.y > 0)
        {
            gAthleticChallengeScrollFlags |= SCROLL_DOWN;
        }
        else if (gAthleticChallengeAutoScrollBaseVelocity.y < 0)
        {
            gAthleticChallengeScrollFlags |= SCROLL_UP;
        }

        gAthleticChallengeAutoScrollXVelocity = 0;
        gAthleticChallengeAutoScrollYVelocity = 0;
    }

    if ((gUnk_03004C20.world == 5) && (gUnk_03004C20.level == 2 || gUnk_03004C20.level == 3))
    {
        gUnk_03004C20.levelHasWarpDoors = 1;
    }
    else
    {
        gUnk_03004C20.levelHasWarpDoors = 0;
    }
    gUnk_0300542C = gUnk_0818B704[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1];
}

// D0C4
void TitleScreenWaitForNextFrame(void)
{
    // Title screen
    sub_08005CF4();

    VBlankIntrWait();

    REG_BG0HOFS = gBgInfo[0].hOfs & 0x1FF;
    REG_BG0VOFS = gBgInfo[0].vOfs & 0x1FF;
    REG_BG1HOFS = gBgInfo[1].hOfs & 0x1FF;
    REG_BG1VOFS = gBgInfo[1].vOfs & 0x1FF;
    REG_BG2HOFS = gBgInfo[2].hOfs & 0x1FF;
    REG_BG2VOFS = gBgInfo[2].vOfs & 0x1FF;

    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, BLEND_MAX - gBlendValue);
    REG_BLDY = gBlendValue;
    REG_MOSAIC = MOSAIC_SET(gMosaicSize, gMosaicSize, gMosaicSize, gMosaicSize);

    thunk_UpdateRng();
    gUnk_03004C20.globalFrameCounter += 1;
    gUnk_03004C20.sceneFrameCounter += 1;
    m4aSoundMain();
    gUnk_03003420 = 1;
}
