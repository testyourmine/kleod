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
    u8 pad34[0x38 - 0x34];
    void *unk38;
    u8 pad3C[0x78 - 0x3C];
    u8 unk78;
    u8 unk79;
};
extern struct Unk_03003510 gUnk_03003510;

struct Unk_03003410 {
    u8 pad0[0x7 - 0x0];
    u8 unk7;
};
extern struct Unk_03003410 gUnk_03003410;

extern volatile void *gUnk_030034FC;
extern volatile void *gUnk_03004658;
extern volatile void *gUnk_03004670;
extern volatile void *gUnk_030047FC;
extern u16 *gUnk_03005284;

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
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
};
extern struct Unk_03004790 gUnk_03004790; // TODO: s32 array or struct?
extern s32 gUnk_03005290;

extern u8 gUnk_03003420;
extern u8 gUnk_03005428;

extern void gUnk_03000900; // todo: type
extern void gUnk_03001100; // todo: type
extern void gUnk_03004800; // todo: type
extern void gUnk_03004DB0; // todo: type
extern void gUnk_03003650; // todo: type

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

#endif // GUARD_VARIABLES_H