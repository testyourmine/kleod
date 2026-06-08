#ifndef GUARD_VARIABLES_H
#define GUARD_VARIABLES_H

#include "global.h"

typedef void (*IntrFunc)(void);
struct IntrTable {
    IntrFunc vBlank; // INTR_FLAG_VBLANK
    IntrFunc hBlank; // INTR_FLAG_HBLANK
    IntrFunc vCount; // INTR_FLAG_VCOUNT
    IntrFunc timer0; // INTR_FLAG_TIMER0
    IntrFunc timer1; // INTR_FLAG_TIMER1
    IntrFunc timer2; // INTR_FLAG_TIMER2
    IntrFunc timer3; // INTR_FLAG_TIMER3
    IntrFunc serial; // INTR_FLAG_SERIAL
    IntrFunc dma0; // INTR_FLAG_DMA0
    IntrFunc dma1; // INTR_FLAG_DMA1
    IntrFunc dma2; // INTR_FLAG_DMA2
    IntrFunc dma3; // INTR_FLAG_DMA3
    IntrFunc keypad; // INTR_FLAG_KEYPAD
    IntrFunc gamePak; // INTR_FLAG_GAMEPAK
};
extern struct IntrTable gIntrTable;

struct Unk_03003510 {
    void (*unk0[3])(void);
    s32 unkC;
    void (*unk10)(void);
    u8 pad14[0x28 - 0x14];
    void (*unk28[3])(void);
    void *unk34;
    void *unk38;
    u32 unk3C;
    void (*unk40)(void);
    u32 unk44;
    u8 pad48[0x50 - 0x48];
    void (*unk50[1])(void);
    u8 pad54[0x78 - 0x54];
    u8 unk78;
    u8 unk79;
    u8 unk7A;
};
extern struct Unk_03003510 gUnk_03003510;

struct Unk_03003410 {
    u32 unk0;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
};
extern struct Unk_03003410 gUnk_03003410;

extern volatile void *gUnk_030034FC;
extern volatile void *gUnk_03004658;

struct Unk_03004670 {
    u8 pad0[0x8 - 0x0];
    u8 unk8[2][8];
};
extern volatile struct Unk_03004670 *gUnk_03004670;

extern volatile void *gUnk_030047FC;

struct Unk_03005284 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 pad3[0x5 - 0x3];
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8_0:2;
    u8 unk8_2:3;
    u8 unk8_5:7;
    u8 unk9_4:3;
    u8 unk9_7:8;
    u8 unkA_7:6;
    u8 unkB_5:1;
    u8 unkB_6:1;
    u32 unkC;
    u32 unk10;
    u16 unk14;
    u16 unk16;
    u32 unk18;
};
extern struct Unk_03005284 *gUnk_03005284;

extern s8 gUnk_03004784;
extern u16 gUnk_03005210;
extern u8 gUnk_0300548C;
extern u8 gUnk_03005498; // BLDALPHA/BLDY
extern u8 gUnk_030007D8; // MOSAIC

extern u16 gUnk_030034F0; // jump timer count
extern u16 gNewKeys;
extern u16 gHeldKeys;

extern u16 gHeldKeysAttract;
extern u16 gNewKeysAttract;
extern u8 gUnk_030034E4;

struct Unk_03004790 {
    void *pBufBg0Tiles; // BG0 tiles
    u16 *pBufBg0Tilemap; // BG0 tilemap
    void *pBufBg1Tiles; // BG1 tiles
    u16 *pBufBg1Tilemap; // BG1 tilemap
    void *pBufBg2Tiles; // BG2 tiles
    u8 *pBufBg2Tilemap; // BG2 tilemap? (TODO: verify)
};
extern struct Unk_03004790 gUnk_03004790; // TODO: array or struct?
extern void *gUnk_03005290;

extern u8 gUnk_03003420;
extern u8 gUnk_03005428;

extern u16 gUnk_03000900[4][0x400]; // BG tilemaps
extern u8 gUnk_03004DB0[]; // BG2 tilemap data
extern void gUnk_03003650; // todo: type

extern u16 gUnk_03004C40[];
extern u16 gUnk_030052C0[];

extern u32 gUnk_03005488;

struct Unk_03002920 {
    u16 unk0;
    s16 unk2;
    u16 unk4;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u32 unkC_0:2;
    u32 unkC_2:2;
    u32 unkC_4:4;
    u32 unkD_0:2;
    u32 unkD_2:4;
    u32 unkD_6:2; // TODO: verify
    u32 unkE_0:1;
    u32 unkE_1:1;
    u8 unkF;
    u8 unk10;
    u8 unk11;
    u8 pad12[0x1C - 0x12];
};
extern struct Unk_03002920 gUnk_03002920[];

struct Unk_03003430 {
    void *pVramBg0Tiles; // BG0 tiles
    void *pVramBg0Tilemap; // BG0 tilemap
    u16 unk8; // BG0HOFS
    u16 unkA; // BG0VOFS
    u8 padC[0x10 - 0xC];
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16; // BG0 tile length y?
    u8 unk18;  // BG0 tile length x?
    u8 pad19[0x1C - 0x19];

    void *pVramBg1Tiles; // BG1 tiles
    void *pVramBg1Tilemap; // BG1 tilemap
    u16 unk24; // BG1HOFS
    u16 unk26; // BG1VOFS
    u8 pad28[0x2C - 0x28];
    u16 unk2C;
    u16 unk2E;
    u16 unk30;
    u16 unk32; // BG1 tile length y?
    u8 unk34;  // BG1 tile length x?
    u8 pad35[0x38 - 0x35];

    void *pVramBg2Tiles; // BG2 tiles
    void *pVramBg2Tilemap; // BG2 tilemap
    u16 unk40; // BG2X
    u16 unk42; // BG2Y
    u16 unk44;
    u16 unk46;
    u16 unk48;
    u16 unk4A;
    u16 unk4C;
    u16 unk4E; // BG2 tile length y?
    u8 unk50;  // BG2 tile length x?
    u8 pad51[0x54 - 0x51];

    void *pVramBg3Tiles; // BG3 tiles
    void *pVramBg3Tilemap; // BG3 tilemap
    u16 unk5C; // BG3X
    u16 unk5E; // BG3Y
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
    s32 unk0; // frame counter, per scene, pausing and then later unpausing restores value from before pause
    s32 unk4; // frame counter, global, restarts upon returning to title screen
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 level;
    u8 world;
    u8 room;
    u8 unkF;
    u8 unk10;
    u8 pad11[0x12 - 0x11];
    u8 demoNumber;
    u8 demoInputIndex;
    u8 demoNextInputTimer;
};
extern struct Unk_03004C20 gUnk_03004C20;

extern s32 gUnk_030007FC; // BG2X
extern s16 gUnk_03004678;
extern s16 gUnk_030051B0;
extern s32 gUnk_030051D0; // BG2Y

extern s16 gUnk_030034F8;

extern s16 gUnk_03000808; // BG2PD
extern u8 gUnk_03002910; // alpha
extern u16 gUnk_030034AC; // xMag
extern u8 gUnk_03004660;
extern s16 gUnk_030047B0; // BG2PA
extern s16 gUnk_030051BC; // BG2PC
extern u8 gUnk_030052A0;
extern u16 gUnk_03005420; // yMag
extern s16 gUnk_03005464; // BG2PB

struct Unk_03005468 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
};
extern struct Unk_03005468 gUnk_03005468;

extern u16 gUnk_03003478;

struct Unk_0300542C {
    u16 unk0;
    s16 unk2;
    u16 unk4;
    s16 unk6;
    s8 unk8;
    s8 unk9;
};
extern struct Unk_0300542C *gUnk_0300542C;

struct Unk_03005220 {
    u32 unk0_0:2; // TODO: verify
    u32 unk0_2:3;
    u32 unk0_5:7;
    u32 unk1_4:3;
    u32 unk1_7:8;
    u32 unk2_7:6;
    u32 unk3_5:1;
    u32 unk3_6:1;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u16 unk14;
    u8 pad16[0x1A - 0x16];
    u16 unk1A;
    u16 unk1C;
    u8 pad1E[0x2E - 0x1E];
    u8 unk2E;
    s8 unk2F;
    u8 unk30;
    u8 unk31;
    u8 pad32[0x35 - 0x32];
    u8 unk35;
    u8 unk36;
    u8 unk37;
    u8 pad38[0x3F - 0x38];
    u8 unk3F;
    u8 pad40[0x46 - 0x40];
    u8 unk46;
    u8 pad47[0x4C - 0x47];
    u8 unk4C;
    u8 unk4D;
    u8 unk4E;
    u8 unk4F;
    u8 pad50[0x58 - 0x50];
    u8 unk58;
    u8 pad59[0x5E - 0x59];
    u8 unk5E;
    u8 unk5F;
    u16 unk60;
};
extern struct Unk_03005220 gUnk_03005220;

extern u16 gUnk_030008E8;
extern u16 gUnk_03003472; // TODO: convert to gUnk_03003430.unk42
extern u16 gUnk_0300358C;
extern u16 gUnk_03005474;

extern s32 gUnk_030007C0;
struct Unk_030034E8 {
    s32 unk0;
    s32 unk4;
};
extern struct Unk_030034E8 gUnk_030034E8;
extern u8 gUnk_030051B8;
extern s32 gUnk_03005480;

struct Unk_030007E0 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    u8 unkC_0:4;
    u8 unkC_4:4;
};
extern struct Unk_030007E0 gUnk_030007E0;

struct Unk_03005400 {
    u8 pad0[0x2 - 0x0];
    u16 unk2;
    u8 pad4[0x6 - 0x4];
    u16 unk6;
    u8 pad8[0xA - 0x8];
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 padF[0x14 - 0xF];
    u8 unk14;
    u8 pad15[0x16 - 0x15];
    s8 unk16;
};
extern struct Unk_03005400 gUnk_03005400;

struct Unk_03005440 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
};
extern struct Unk_03005440 gUnk_03005440;

extern u8 gUnk_03000800;
extern u8 *gUnk_03004654;
extern u8 gUnk_030051C8;

struct Unk_030051CC {
    u16 unk0;
    u16 unk2;
};
extern struct Unk_030051CC gUnk_030051CC;

extern u8 gUnk_030007C4;
extern void *gUnk_030007DC; // OBJ palette ptr

struct Unk_03000830 {
    u8 unk0;
    u8 unk1;
    u8 pad2[0x4 - 0x2];
};
extern struct Unk_03000830 gUnk_03000830[];

extern u8 gUnk_0300363C;

struct Unk_0300466C_4 {
    u16 unk0;
    u8 unk2;
    s8 unk3;
    u8 unk4;
    u8 unk5;
};
struct Unk_0300466C {
    u8 unk0;
    u8 pad1[0x4 - 0x1];
    struct Unk_0300466C_4 *unk4;
};
extern struct Unk_0300466C *gUnk_0300466C;

struct Unk_0818B8E0 {
    u8 pad0[0x4 - 0x0];
    u16 *unk4;
};
extern struct Unk_0818B8E0 *gUnk_030051DC;

extern void *gUnk_03005294;
extern void *gUnk_03005418;
extern void *gUnk_03005490; // OBJ vram ptr

struct Unk_03000790 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u8 padA[0x10 - 0xA];
};
extern struct Unk_03000790 gUnk_03000790[];

struct Unk_03003610 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
};
extern struct Unk_03003610 gUnk_03003610[];

struct Unk_03004680 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
};
extern struct Unk_03004680 gUnk_03004680[];

extern s32 gUnk_030007D4;
extern s32 gUnk_030007F0;
extern s32 gUnk_030007F4;
extern s32 gUnk_03000804;
extern u8 gUnk_03000818;
extern s32 gUnk_03000824;
extern s32 gUnk_0300082C;
extern u8 gUnk_030008EC;
extern s32 gUnk_030008F0;
extern s32 gUnk_030008F4;
extern s32 gUnk_030008FC;
extern s32 gUnk_03002904;
extern s32 gUnk_03002908;
extern s32 gUnk_0300290C;
extern s32 gUnk_030034A4;
extern s32 gUnk_030034C8;
extern s32 gUnk_030034CC;
extern s32 gUnk_030034D8;
extern s32 gUnk_03003500;
extern s32 gUnk_03003504;
extern s32 gUnk_03003630;
extern s32 gUnk_03003634;
extern s32 gUnk_03003638;
extern s32 gUnk_03003640;
extern s32 gUnk_03004650;
extern s32 gUnk_03004664;
extern s32 gUnk_03004674;
extern s32 gUnk_03004788;
extern s32 gUnk_030047B4;
extern u8 gUnk_030047B8;
extern s32 gUnk_030047BC;
extern s32 gUnk_030047F8;
extern u8 gUnk_03004C00;
extern s32 gUnk_03004C04;
extern u8 gUnk_03004C38;
extern u8 gUnk_030051B4;
extern s32 gUnk_030051C4;
extern s32 gUnk_030051D4;
extern s32 gUnk_030051D8;
extern u8 gUnk_03005288;
extern u8 gUnk_0300528C;
extern u8 gUnk_03005298;
extern s32 gUnk_0300529C;
extern u8 gUnk_030052A8;
extern s32 gUnk_030052B0;
extern s32 gUnk_030052B4;
extern s32 gUnk_0300541C;
extern s32 gUnk_03005424;
extern s32 gUnk_03005430;
extern u8 gUnk_03005470;
extern u8 gUnk_0300547C;
extern s32 gUnk_03005484;

// TODO: this is OamData, but non-rotation version
union Unk_03000820 {
    struct {
        u32 y:8;

        u32 objDisable:2;
        u32 objMode:2;
        u32 mosaic:1;
        u32 bpp:1;
        u8 shape:2;

        u16 x:9;
        u8 unk3_1:3;
        u32 hFlip:1;
        u8 vFlip:1;
        u8 size:2;

        u16 tileNum:10;
        u8 priority:2;
        u16 paletteNum:4;
        u8 pad6[0x8 - 0x6];
    } split;
    struct {
        u32 attr01;
        u16 attr2;
        u16 affineParam;
    } all;
};
extern union Unk_03000820 *gUnk_03000820; // OAM buffer pointer

extern union Unk_03000820 gUnk_03004800[]; // OAM buffer

extern u8 gUnk_030034BC;

struct Unk_03003590 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5_0:1;
    u8 pad6[0x8 - 0x6];
};
extern struct Unk_03003590 gUnk_03003590[];
extern void (*gUnk_030034A8)(u8);

extern u8 gUnk_030034E0;
extern void *gUnk_03004C10;

extern u16 gUnk_030034DC;

struct Unk_030051F0 {
    s32 unk0;
    u8 pad4[0xE - 0x4];
    u8 unkE;
};
extern struct Unk_030051F0 gUnk_030051F0;

#endif // GUARD_VARIABLES_H