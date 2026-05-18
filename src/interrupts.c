#include "global.h"

extern u8 gUnk_03003420;
extern u8 gUnk_03005428;

extern void gUnk_03000900;
extern void gUnk_03001100;
extern void gUnk_03004800;
extern void gUnk_03004DB0;
extern void gUnk_03003650;

extern u16 gUnk_03004C40[];
extern u16 gUnk_030052C0[];

extern u32 gUnk_03005488;

struct Unk_03002920 {
    u8 pad0[0x8 - 0x0];
    u8 unk8;
    u8 pad9[0x144 - 0x9];
    u8 unk144;
};
extern struct Unk_03002920 gUnk_03002920;

struct Unk_03003430 {
    u8 pad0[0x4 - 0x0];
    void *unk4;
    u8 pad8[0x20 - 0x8];
    void *unk20;
    u8 pad24[0x3C - 0x24];
    void *unk3C;
    u16 unk40;
    u8 pad42[0x58 - 0x42];
    void *unk58;
    u16 unk5C;
};
extern struct Unk_03003430 gUnk_03003430;

struct Unk_030034A0 {
    u8 pad0[0x8 - 0x0];
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
    s16 unk14;
    s16 unk16;
};
extern struct Unk_030034A0 *gUnk_030034A0;

struct Unk_03004C20 {
    s32 unk0;
    s32 unk4;
    u16 unk8;
    u8 padA[0xC - 0xA];
    u8 unkC;
    u8 unkD;
    u8 padE[0x12 - 0xE];
    u8 demoNumber;
    u8 demoInputIndex;
    u8 demoNextInputTimer;
};
extern struct Unk_03004C20 gUnk_03004C20;

extern s32 gUnk_030007FC;
extern s16 gUnk_03004678;
extern s16 gUnk_030051B0;
extern s32 gUnk_030051D0;

extern s16 gUnk_030034F8;

// 9D8
void sub_080009D8(void)
{
    // VBlankHandler_Normal
    m4aSoundVSync();

    DmaCopy16Wait(3, &gUnk_03000900, gUnk_03003430.unk4, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100, gUnk_03003430.unk20, 0x800);
    DmaCopy16Wait(3, &gUnk_03004DB0, gUnk_03003430.unk3C, 0x400);

    DmaCopy32(3, &gUnk_03004800, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// AB0
void sub_08000AB0(void)
{
    // VBlankHandler_Minimal
    m4aSoundVSync();
    m4aSoundMain();
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// AC8
void sub_08000AC8(void)
{
    // VBlankHandler_ModeA
    m4aSoundVSync();

    DmaCopy16Wait(3, &gUnk_03000900, gUnk_03003430.unk4, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100, gUnk_03003430.unk20, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100 + 0x800, gUnk_03003430.unk3C, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100 + 0x1000, gUnk_03003430.unk58, 0x800);

    DmaCopy32(3, &gUnk_03004800, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// BD4
void sub_08000BD4(void)
{
    // VBlankHandler_ModeB
    m4aSoundVSync();

    DmaCopy16Wait(3, &gUnk_03000900, gUnk_03003430.unk4, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100, gUnk_03003430.unk20, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100 + 0x800, gUnk_03003430.unk3C, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100 + 0x1000, gUnk_03003430.unk58, 0x800);

    DmaCopy32(3, &gUnk_03004800, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// CE0
void sub_08000CE0(void)
{
    // VBlankDmaTransfer
    m4aSoundVSync();

    DmaCopy16Wait(3, &gUnk_03000900, gUnk_03003430.unk4, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100, gUnk_03003430.unk20, 0x800);
    DmaCopy16Wait(3, &gUnk_03003650, gUnk_03003430.unk3C, 0x1000);

    DmaCopy32Wait(3, &gUnk_03004800, OAM, OAM_SIZE / 2);

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
    // VBlankHandler_OamOnly
    m4aSoundVSync();

    DmaCopy32(3, &gUnk_03004800, OAM, gUnk_03005428 * sizeof(OamData));

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
    // VBlankHandler_OamOnlyAlt
    m4aSoundVSync();

    DmaCopy32(3, &gUnk_03004800, OAM, gUnk_03005428 * sizeof(OamData));

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// E68
void sub_08000E68(void)
{
    // VBlankHandler_WithWindowScroll
    m4aSoundVSync();

    REG_WIN0H = ((gUnk_030034A0->unk8 << 0x4) & ~0xFF) | ((gUnk_030034A0->unk10 >> 0x4) & 0xFF);
    REG_WIN0V = ((gUnk_030034A0->unkA << 0x4) & ~0xFF) | ((gUnk_030034A0->unk12 >> 0x4) & 0xFF);
    
    REG_WIN1H = ((gUnk_030034A0->unkC << 0x4) & ~0xFF) | ((gUnk_030034A0->unk14 >> 0x4) & 0xFF);
    REG_WIN1V = ((gUnk_030034A0->unkE << 0x4) & ~0xFF) | ((gUnk_030034A0->unk16 >> 0x4) & 0xFF);

    DmaCopy16Wait(3, &gUnk_03000900, gUnk_03003430.unk4, 0x800);
    DmaCopy16Wait(3, &gUnk_03001100, gUnk_03003430.unk20, 0x800);

    DmaCopy32(3, &gUnk_03004800, OAM, OAM_SIZE);

    if (gUnk_03003420 == 0)
    {
        m4aSoundMain();
    }

    gUnk_03003420 = 0;
    INTR_CHECK = INTR_FLAG_VBLANK;
}

// F70
void sub_08000F70(void)
{
    // UpdateFadeEffect
    u32 bldAlpha;

    bldAlpha = REG_VCOUNT_L / gUnk_03002920.unk8;
    if (bldAlpha <= BLDALPHA_MAX)
    {
        REG_BLDALPHA = BLDALPHA_BLEND(bldAlpha, bldAlpha);
    }
}

// FA0
void sub_08000FA0(void)
{
    // HBlankScrollUpdate
    u8 vCount;

    vCount = REG_VCOUNT_L;
    REG_BG0HOFS = gUnk_03004C40[vCount];
    REG_BG1HOFS = gUnk_030052C0[vCount];
}

// FCC
void sub_08000FCC(void)
{
    // UpdateAffineBGParams
    s32 vCount;
    s32 temp_r2;
    s32 temp_r1;

    vCount = REG_VCOUNT_L;
    temp_r2 = gUnk_030007FC + (gUnk_03004678 * ((vCount * 3) - (s32)(DISPLAY_WIDTH * 0.75f)));
    temp_r1 = gUnk_030051D0 + (gUnk_030051B0 * ((vCount * 3) - (s32)(DISPLAY_WIDTH * 0.75f)));

    REG_BG2X_L = temp_r2;
    REG_BG2X_H = temp_r2 >> 0x10;

    REG_BG2Y_L = temp_r1;
    REG_BG2Y_H = temp_r1 >> 0x10;
}

// 1028
void sub_08001028(void)
{
    // UpdateWindowCircleEffect
    s32 temp_r1;
    u32 temp_r2;

    temp_r1 = REG_VCOUNT - (gUnk_03005488 >> 1);
    temp_r2 = (u8)Sqrt((temp_r1 + 12) * ((s32)(DISPLAY_WIDTH * 0.95f) - gUnk_03005488 - temp_r1) * 4) >> 1; ;

    if (temp_r2 <= (s32)(DISPLAY_WIDTH * 0.5f))
    {
        REG_WIN1H = (((s32)(DISPLAY_WIDTH * 0.5f) - temp_r2) << 8) | (temp_r2 + (s32)(DISPLAY_WIDTH * 0.5f));
    }
    else
    {
        REG_WIN1H = 0;
    }
}

extern s16 gUnk_080D8E14[]; // sine table

// 107C
void sub_0800107C(void)
{
    // UpdateBGScrollWithWave
    if (gUnk_03004C20.unk0 & 1)
    {
        gUnk_030034F8 = ((REG_VCOUNT_L + gUnk_03004C20.unk0) * 4) & 0xFF;
        REG_BG2HOFS = (gUnk_03003430.unk40 >> 4) + (gUnk_080D8E14[gUnk_030034F8] >> 4) + 4;
        REG_BG3HOFS = (gUnk_03003430.unk5C >> 4) + (gUnk_080D8E14[gUnk_030034F8] >> 4) + 4;
    }
    else
    {
        REG_BG2HOFS = gUnk_03003430.unk40 >> 4;
        REG_BG3HOFS = gUnk_03003430.unk5C >> 4;
    }
}

// TODO: this function requires either old_agbcc or -fprologue-bugfix to match
// Using old_agbcc breaks the rest of the file, so using -fprologue-bugfix for now

// 111C
void sub_0800111C(void)
{
    while (!(REG_DISPSTAT & DISPSTAT_HBLANK));
    REG_BLDY = 0;
}

// 1144
void InterruptHandler_Normal(void)
{
    REG_IF = REG_IE;
}
