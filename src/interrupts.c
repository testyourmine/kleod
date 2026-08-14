#include "global.h"
#include "interrupts.h"
#include "data/trig.h"
#include "structs/variables.h"

// 9D8
void VBlankIntr_Common(void)
{
    m4aSoundVSync();

    DmaCopy16Wait(3, &gBgTilemapBufs[0], gBgInfo[0].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[1], gBgInfo[1].pTilemap, 0x800);
    DmaCopy16Wait(3, &gUnk_03004DB0, gBgInfo[2].pTilemap, 0x400);

    DmaCopy32(3, &gOamBuffer, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// AB0
void VBlankIntr_CutsceneTransition(void)
{
    // Called during intro movie, in between transitions
    m4aSoundVSync();
    m4aSoundMain();
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// AC8
void sub_08000AC8(void)
{
    // Never called?
    m4aSoundVSync();

    DmaCopy16Wait(3, &gBgTilemapBufs[0], gBgInfo[0].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[1], gBgInfo[1].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[2], gBgInfo[2].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[3], gBgInfo[3].pTilemap, 0x800);

    DmaCopy32(3, &gOamBuffer, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// BD4
void VBlankIntr_TitleScreenAndWorldMap(void)
{
    // Called during title screen and world map
    m4aSoundVSync();

    DmaCopy16Wait(3, &gBgTilemapBufs[0], gBgInfo[0].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[1], gBgInfo[1].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[2], gBgInfo[2].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[3], gBgInfo[3].pTilemap, 0x800);

    DmaCopy32(3, &gOamBuffer, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// CE0
void VBlankIntr_Boss(void)
{
    // Called during boss battle
    m4aSoundVSync();

    DmaCopy16Wait(3, &gBgTilemapBufs[0], gBgInfo[0].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[1], gBgInfo[1].pTilemap, 0x800);
    DmaCopy16Wait(3, &gUnk_03003650, gBgInfo[2].pTilemap, 0x1000);

    DmaCopy32Wait(3, &gOamBuffer, OAM, OAM_SIZE / 2);

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// DC0
void sub_08000DC0(void)
{
    // Set by sub_0800350C, which is called by sub_08025A28, which is unused
    // So this function is likely unused
    m4aSoundVSync();

    DmaCopy32(3, &gOamBuffer, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// E14
void sub_08000E14(void)
{
    // Never called?
    m4aSoundVSync();

    DmaCopy32(3, &gOamBuffer, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// E68
void VBlankIntr_Cutscene(void)
{
    // Called during intro movie and cutscenes, and credits
    m4aSoundVSync();

    REG_WIN0H = ((gUnk_030034A0->winX1Y1[WIN_0][WIN_H] << 4) & ~0xFF) | ((gUnk_030034A0->winX2Y2[WIN_0][WIN_H] >> 4) & 0xFF);
    REG_WIN0V = ((gUnk_030034A0->winX1Y1[WIN_0][WIN_V] << 4) & ~0xFF) | ((gUnk_030034A0->winX2Y2[WIN_0][WIN_V] >> 4) & 0xFF);
    
    REG_WIN1H = ((gUnk_030034A0->winX1Y1[WIN_1][WIN_H] << 4) & ~0xFF) | ((gUnk_030034A0->winX2Y2[WIN_1][WIN_H] >> 4) & 0xFF);
    REG_WIN1V = ((gUnk_030034A0->winX1Y1[WIN_1][WIN_V] << 4) & ~0xFF) | ((gUnk_030034A0->winX2Y2[WIN_1][WIN_V] >> 4) & 0xFF);

    DmaCopy16Wait(3, &gBgTilemapBufs[0], gBgInfo[0].pTilemap, 0x800);
    DmaCopy16Wait(3, &gBgTilemapBufs[1], gBgInfo[1].pTilemap, 0x800);

    DmaCopy32(3, &gOamBuffer, OAM, OAM_SIZE);

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// F70
void HBlankIntr_DeleteAllSaveDataScreen(void)
{
    // HBlank, only called when deleting all data
    u32 bldAlpha;

    bldAlpha = REG_VCOUNT_L / gEntityInfo[0].unk8.split.unk8;
    if (bldAlpha <= BLDALPHA_MAX)
    {
        REG_BLDALPHA = BLDALPHA_BLEND2(bldAlpha, bldAlpha);
    }
}

// FA0
void HBlankIntr_WavyBackground(void)
{
    // HBlank, called when making background wavy, such as during trippy transition between phases of King Jillius, and the whole battle of King of Despair
    u8 vCount;

    vCount = REG_VCOUNT_L;
    REG_BG0HOFS = gUnk_03004C40[vCount];
    REG_BG1HOFS = gUnk_030052C0[vCount];
}

// FCC
void HBlankIntr_LevelSelect(void)
{
    // HBlank, only active when in level select, responsible for turning BG2
    s32 vCount;
    s32 bg2X;
    s32 bg2Y;

    vCount = REG_VCOUNT_L;
    bg2X = gBg2X + (gUnk_03004678 * ((vCount * 3) - (s32)(DISPLAY_WIDTH * 0.75f)));
    bg2Y = gBg2Y + (gUnk_030051B0 * ((vCount * 3) - (s32)(DISPLAY_WIDTH * 0.75f)));

    REG_BG2X_L = bg2X;
    REG_BG2X_H = bg2X >> 0x10;

    REG_BG2Y_L = bg2Y;
    REG_BG2Y_H = bg2Y >> 0x10;
}

// 1028
void HBlankIntr_GameOverCircleShrinkEffect(void)
{
    // HBlank, called during game over sequence to create shrinking circle effect to Klonoa
    s32 temp_r1;
    u32 temp_r2;

    temp_r1 = REG_VCOUNT - (gUnk_03005488 >> 1);
    temp_r2 = (u8)Sqrt((temp_r1 + 12) * ((s32)(DISPLAY_WIDTH * 0.95f) - gUnk_03005488 - temp_r1) * 4) >> 1;

    if (temp_r2 <= (s32)(DISPLAY_WIDTH * 0.5f))
    {
        REG_WIN1H = WIN_RANGE((s32)(DISPLAY_WIDTH * 0.5f) - temp_r2, (s32)(DISPLAY_WIDTH * 0.5f) + temp_r2);
    }
    else
    {
        REG_WIN1H = 0;
    }
}

// 107C
void sub_0800107C(void)
{
    // HBlank
    // UpdateBGScrollWithWave
    if ((gUnk_03004C20.sceneFrameCounter % 2) != 0)
    {
        gUnk_030034F8 = ((REG_VCOUNT_L + gUnk_03004C20.sceneFrameCounter) * 4) % 0x100;
        REG_BG2HOFS = (gBgInfo[2].hOfs >> 4) + (SIN(gUnk_030034F8) >> 4) + 4;
        REG_BG3HOFS = (gBgInfo[3].hOfs >> 4) + (SIN(gUnk_030034F8) >> 4) + 4;
    }
    else
    {
        REG_BG2HOFS = gBgInfo[2].hOfs >> 4;
        REG_BG3HOFS = gBgInfo[3].hOfs >> 4;
    }
}

// 111C
void VCountIntr_DeathScreen(void)
{
    // VCount, called when losing a life
    while (!(REG_DISPSTAT & DISPSTAT_HBLANK));
    REG_BLDY = 0;
}

// 1144
void GenericIntr(void)
{
    REG_IF = REG_IE;
}
