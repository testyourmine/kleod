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
    u8 pad40[0x50 - 0x40];
    void (*unk50[1])(void);
    u8 pad54[0x78 - 0x54];
    u8 unk78;
    u8 unk79;
    u8 unk7A;
};
extern struct Unk_03003510 gUnk_03003510;

struct Unk_03003410 {
    u8 pad0[0x4 - 0x0];
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
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
    u8 pad0[0x6 - 0x0];
    u8 unk6;
    u8 pad7[0x16 - 0x7];
    u16 unk16;
    u32 unk18;
};
extern struct Unk_03005284 *gUnk_03005284;

extern s8 gUnk_03004784;
extern u16 gUnk_03005210;
extern u8 gUnk_0300548C;
extern u8 gUnk_03005498;
extern s8 gUnk_030007D8;

extern u16 gUnk_030034F0; // jump timer count
extern u16 gNewKeys;
extern u16 gHeldKeys;

extern u16 gHeldKeysAttract;
extern u16 gNewKeysAttract;
extern u8 gUnk_030034E4;

struct Unk_03004790 {
    void *unk0;
    u16 *unk4;
    void *unk8;
    u16 *unkC;
    void *unk10;
    u8 *unk14;
};
extern struct Unk_03004790 gUnk_03004790; // TODO: array or struct?
extern void *gUnk_03005290;

extern u8 gUnk_03003420;
extern u8 gUnk_03005428;

extern u16 gUnk_03000900[][0x400]; // todo: type
extern void gUnk_03001100; // todo: type
extern u8 gUnk_03004DB0[]; // todo: type
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
    void *unk0;
    void *unk4; // BG0 tilemap
    u16 unk8;
    u16 unkA;
    u8 padC[0x10 - 0xC];
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u8 unk18;
    u8 pad19[0x1C - 0x19];
    void *unk1C;
    void *unk20; // BG1 tilemap
    u16 unk24;
    u16 unk26;
    u8 pad28[0x2C - 0x28];
    u16 unk2C;
    u16 unk2E;
    u16 unk30;
    u16 unk32;
    u8 unk34;
    u8 pad35[0x38 - 0x35];
    void *unk38;
    void *unk3C; // BG2 tilemap
    u16 unk40; // BG2 y position
    u16 unk42; // BG2 x position
    u16 unk44;
    u16 unk46;
    u16 unk48;
    u16 unk4A;
    u16 unk4C;
    u16 unk4E;
    u8 unk50;
    u8 pad51[0x58 - 0x51];
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
    u8 unkA;
    u8 unkB;
    u8 level;
    u8 world;
    u8 unkE; // room
    u8 unkF;
    u8 unk10;
    u8 pad11[0x12 - 0x11];
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

extern s16 gUnk_03000808; // BG2PD

extern u8 gUnk_03002910;
extern u16 gUnk_030034AC;
extern u8 gUnk_03004660;
extern s16 gUnk_030047B0; // BG2PA
extern s16 gUnk_030051BC; // BG2PC
extern u8 gUnk_030052A0;
extern u16 gUnk_03005420;
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
    u32 unk0_5:3; // TODO: verify
    u32 unk1_0:4; // TODO: verify
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
    u8 pad1C[0x2E - 0x1C];
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
    u8 pad47[0x58 - 0x47];
    u8 unk58;
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
    u8 padB[0xC - 0xB];
    u8 unkC;
    u8 padD[0xE - 0xD];
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
extern void *gUnk_030007DC;

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
extern void *gUnk_03005490;

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
        u32 unk0_0:8;
        u32 unk1_0:2;
        u32 unk1_2:2;
        u32 unk1_4:1;
        u32 unk1_5:1;
        u8 unk1_6:2;
        u16 unk2_0:9;
        u8 unk3_1:3;
        u32 unk3_4:1;
        u8 unk3_5:1;
        u8 unk3_6:2;
        u16 unk4_0:10;
        u8 unk5_2:2;
        u16 unk5_4:4;
        u8 pad6[0x8 - 0x6];
    } split;
    struct {
        u32 attr01;
        u16 attr2;
        u16 affineParam;
    } all;
};
extern union Unk_03000820 *gUnk_03000820;

extern union Unk_03000820 gUnk_03004800[];

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

#endif // GUARD_VARIABLES_H