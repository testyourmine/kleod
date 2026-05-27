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
    u8 pad10[0x28 - 0x10];
    void (*unk28[3])(void);
    void *unk34;
    void *unk38;
    u32 unk3C;
    u8 pad40[0x78 - 0x40];
    u8 unk78;
    u8 unk79;
};
extern struct Unk_03003510 gUnk_03003510;

struct Unk_03003410 {
    u8 pad0[0x7 - 0x0];
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

extern u16 gUnk_030034F0;
extern s16 gNewKeys;
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
extern void gUnk_03004800; // todo: type
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
    u8 pad9[0xC - 0x9];
    u8 unkC_0:2; // TODO: verify
    u8 unkC_2:2;
    u8 padD[0x144 - 0xD];
    u8 unk144;
    u8 pad145[0x1F8 - 0x145];
    u16 unk1F8;
    u16 unk1FA;
};
extern struct Unk_03002920 gUnk_03002920;

struct Unk_03003430 {
    void *unk0;
    void *unk4;
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
    void *unk20;
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
    void *unk3C;
    u16 unk40;
    u16 unk42;
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

extern s16 gUnk_03000808;

extern u8 gUnk_03002910;
extern s16 gUnk_030034AC;
extern u8 gUnk_03004660;
extern s16 gUnk_030047B0;
extern s16 gUnk_030051BC;
extern u8 gUnk_030052A0;
extern s16 gUnk_03005420;
extern s16 gUnk_03005464;

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
    u8 unk0_0:2; // TODO: verify
    u8 unk0_2:3;
    u8 unk0_5:3; // TODO: verify
    u8 unk1_0:4; // TODO: verify
    u8 unk1_4:3;
    u8 pad2[0x4 - 0x2];
    u32 unk4;
    u8 pad8[0x2F - 0x8];
    s8 unk2F;
    u8 unk30;
    u8 unk31;
    u8 pad32[0x35 - 0x32];
    u8 unk35;
    u8 pad36[0x46 - 0x36];
    u8 unk46;
};
extern struct Unk_03005220 gUnk_03005220;

extern u16 gUnk_030008E8;
extern u16 gUnk_03003472;
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
    u8 pad0[0xC - 0x0];
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

extern u16 gUnk_03003470;

extern u8 gUnk_030007C4;
extern void *gUnk_030007DC;

struct Unk_03000830 {
    u8 unk0;
    u8 unk1;
    u8 pad2[0x4 - 0x2];
};
extern struct Unk_03000830 gUnk_03000830[];

extern s8 gUnk_0300363C;
extern struct Unk_0818B8E0 *gUnk_030051DC;
extern void *gUnk_03005294;
extern void *gUnk_03005418;
extern void *gUnk_03005490;

#endif // GUARD_VARIABLES_H