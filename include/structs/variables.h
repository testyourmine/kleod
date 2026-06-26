#ifndef GUARD_VARIABLES_H
#define GUARD_VARIABLES_H

#include "global.h"

typedef void (*IntrFunc)(void);
struct IntrTable {
    /* 0x00 */ IntrFunc vBlank; // INTR_FLAG_VBLANK
    /* 0x04 */ IntrFunc hBlank; // INTR_FLAG_HBLANK
    /* 0x08 */ IntrFunc vCount; // INTR_FLAG_VCOUNT
    /* 0x0C */ IntrFunc timer0; // INTR_FLAG_TIMER0
    /* 0x10 */ IntrFunc timer1; // INTR_FLAG_TIMER1
    /* 0x14 */ IntrFunc timer2; // INTR_FLAG_TIMER2
    /* 0x18 */ IntrFunc timer3; // INTR_FLAG_TIMER3
    /* 0x1C */ IntrFunc serial; // INTR_FLAG_SERIAL
    /* 0x20 */ IntrFunc dma0; // INTR_FLAG_DMA0
    /* 0x24 */ IntrFunc dma1; // INTR_FLAG_DMA1
    /* 0x28 */ IntrFunc dma2; // INTR_FLAG_DMA2
    /* 0x2C */ IntrFunc dma3; // INTR_FLAG_DMA3
    /* 0x30 */ IntrFunc keypad; // INTR_FLAG_KEYPAD
    /* 0x34 */ IntrFunc gamePak; // INTR_FLAG_GAMEPAK
}; /* size = 0x38 */
extern struct IntrTable gIntrTable;

struct CallbackQueue {
    /* 0x00 */ void (*current[10])(void); // current callbacks
    /* 0x28 */ void (*next[10])(void); // next callbacks
    /* 0x50 */ void (*previous[10])(void); // previous callbacks
    /* 0x78 */ u8 currentCount; // current callback count
    /* 0x79 */ u8 nextCount; // next callback count
    /* 0x7A */ u8 previousCount; // previous callback count
    /* 0x7B */ u8 pad7B[0x7C - 0x7B];
}; /* size = 0x7C */
extern struct CallbackQueue gCallbackQueue;

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

extern volatile u16 *gUnk_030034FC;
extern volatile void *gUnk_03004658;

struct Unk_03004670 {
    u8 pad0[0x8 - 0x0];
    u8 unk8[2][8];
};
extern volatile struct Unk_03004670 *gUnk_03004670;

extern volatile void *gUnk_030047FC;

struct Unk_03005284 {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 pad3[0x5 - 0x3];
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08_0 */ u8 unk8_0:2;
    /* 0x08_2 */ u8 unk8_2:3;
    /* 0x08_5 */ u8 unk8_5:7;
    /* 0x09_4 */ u8 unk9_4:3;
    /* 0x09_7 */ u8 unk9_7:8;
    /* 0x0A_7 */ u8 unkA_7:6;
    /* 0x0B_5 */ u8 unkB_5:1;
    /* 0x0B_6 */ u8 unkB_6:1;
    /* 0x0C */ u32 unkC;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u16 unk16;
    /* 0x18 */ u32 unk18;
    /* 0x1C */ u8 unk1C;
    /* 0x1D */ u8 unk1D;
}; /* size = 0x20? */ // TODO: allocated 0x24 bytes on heap
extern struct Unk_03005284 *gUnk_03005284;

extern s8 gUnk_03004784;
extern u16 gUnk_03005210;
extern u8 gUnk_0300548C;
extern u8 gUnk_03005498; // BLDALPHA/BLDY
extern u8 gMosaicSize; // MOSAIC

extern u16 gUnk_030034F0; // jump timer count
extern u16 gNewKeys;
extern u16 gHeldKeys;

extern u16 gHeldKeysAttract;
extern u16 gNewKeysAttract;
extern u8 gUnk_030034E4;

struct Unk_03004790 {
    /* 0x00 */ void *pBufBg0Tiles; // BG0 tiles
    /* 0x04 */ u16 *pBufBg0Tilemap; // BG0 tilemap
    /* 0x08 */ void *pBufBg1Tiles; // BG1 tiles
    /* 0x0C */ u16 *pBufBg1Tilemap; // BG1 tilemap
    /* 0x10 */ void *pBufBg2Tiles; // BG2 tiles
    /* 0x14 */ u8 *pBufBg2Tilemap; // BG2 tilemap? (TODO: verify)
}; /* size = 0x18? */ // TODO: may be BG3 tiles/tilemap, pushing it to size = 0x20
extern struct Unk_03004790 gUnk_03004790; // TODO: array or struct?
extern void *gUnk_03005290;

extern u8 gUnk_03003420;
extern u8 gUnk_03005428;

extern u16 gBgTilemapBufs[4][0x400]; // BG tilemaps
extern u8 gUnk_03004DB0[]; // BG2 tilemap data
extern void gUnk_03003650; // todo: type

extern u16 gUnk_03004C40[];
extern u16 gUnk_030052C0[];

extern u32 gUnk_03005488;

struct Unk_03002920 {
    /* 0x00 */ u16 xPosBg2; // X position in bg2
    /* 0x02 */ u16 yPosBg2; // Y position in bg2
    /* 0x04 */ u16 xPosScreen; // X position on screen
    /* 0x06 */ u16 yPosScreen; // Y position on screen
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0B_0 */ s32 unkB_0:4; // related to X position
    /* 0x0B_4 */ s32 unkB_4:4; // related to Y position
    /* 0x0C_0 */ u32 priority:2; // priority
    /* 0x0C_2 */ u32 unkC_2:2; // related to direction, bit 1 is hFlip, bit 2 is vFlip
    /* 0x0C_4 */ u32 unkC_4:4; // related to direction/rotation?
    /* 0x0D_0 */ u32 objMode:2; // objMode
    /* 0x0D_2 */ u32 affineHFlip_matrixNum:4; // bottom 3 bits is matrix number (0-7), 4th bit is hFlip
    /* 0x0D_6 */ u32 unkD_6:2; // TODO: verify
    /* 0x0E_0 */ u32 affineEnable:1; // affine flag
    /* 0x0E_1 */ u32 affineDouble:1; // affine doubled or non-affine obj disable
    /* 0x0F */ u8 unkF;
    /* 0x10 */ u8 unk10; // sprite blinking/visible, or possibly enabled/active
    /* 0x11 */ u8 unk11;
    /* 0x12 */ u8 unk12;
    /* 0x13 */ u8 pad13[0x16 - 0x13];
    /* 0x16 */ u8 unk16;
    /* 0x17 */ u8 unk17;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 pad19[0x1C - 0x19];
}; /* size = 0x1C */
extern struct Unk_03002920 gUnk_03002920[];

// TODO: struct might only be one set, and uses array to access each bg
struct Unk_03003430 {
    /* 0x00 */ void *pVramBg0Tiles; // BG0 tiles
    /* 0x04 */ void *pVramBg0Tilemap; // BG0 tilemap
    /* 0x08 */ u16 bg0HOfs; // BG0HOFS
    /* 0x0A */ u16 bg0VOfs; // BG0VOFS
    /* 0x0C */ u8 padC[0x10 - 0xC];
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u16 unk16; // BG0 tile length y?
    /* 0x18 */ u8 unk18;  // BG0 tile length x?
    /* 0x19 */ u8 pad19[0x1C - 0x19];

    /* 0x1C */ void *pVramBg1Tiles; // BG1 tiles
    /* 0x20 */ void *pVramBg1Tilemap; // BG1 tilemap
    /* 0x24 */ u16 bg1HOfs; // BG1HOFS
    /* 0x26 */ u16 bg1VOfs; // BG1VOFS
    /* 0x28 */ u8 pad28[0x2C - 0x28];
    /* 0x2C */ u16 unk2C;
    /* 0x2E */ u16 unk2E;
    /* 0x30 */ u16 unk30;
    /* 0x32 */ u16 unk32; // BG1 tile length y?
    /* 0x34 */ u8 unk34;  // BG1 tile length x?
    /* 0x35 */ u8 pad35[0x38 - 0x35];

    /* 0x38 */ void *pVramBg2Tiles; // BG2 tiles
    /* 0x3C */ void *pVramBg2Tilemap; // BG2 tilemap
    /* 0x40 */ u16 bg2HOfs; // BG2HOFS
    /* 0x42 */ u16 bg2VOfs; // BG2VOFS
    /* 0x44 */ u16 bg2TileCol; // BG2 left column
    /* 0x46 */ u16 bg2TileRow; // BG2 top row
    /* 0x48 */ u16 bg2HLength; // BG2 X length
    /* 0x4A */ u16 bg2VLength; // BG2 Y length
    /* 0x4C */ u16 unk4C;
    /* 0x4E */ u16 unk4E; // BG2 tile length y?
    /* 0x50 */ u8 unk50;  // BG2 tile length x?
    /* 0x51 */ u8 pad51[0x54 - 0x51];

    /* 0x54 */ void *pVramBg3Tiles; // BG3 tiles
    /* 0x58 */ void *pVramBg3Tilemap; // BG3 tilemap
    /* 0x5C */ u16 bg3HOfs; // BG3HOFS
    /* 0x5E */ u16 bg3VOfs; // BG3VOFS
}; /* size = 0x60? */ // TODO: likely unused variables at the end, pushing it to size = 0x70
extern struct Unk_03003430 gUnk_03003430;

struct Unk_030034A0 {
    /* 0x00 */ u8 pad0[0x8 - 0x0];
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
    /* 0x10 */ s16 unk10;
    /* 0x12 */ s16 unk12;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ s16 unk16;
}; /* size = ? */
extern struct Unk_030034A0 *gUnk_030034A0;

struct Unk_03004C20 {
    /* 0x00 */ s32 unk0; // frame counter, per scene, pausing and then later unpausing restores value from before pause
    /* 0x04 */ s32 unk4; // frame counter, global, restarts upon returning to title screen
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u8 level;
    /* 0x0D */ u8 world;
    /* 0x0E */ u8 room;
    /* 0x0F */ u8 unkF;
    /* 0x10 */ u8 unk10;
    /* 0x11 */ u8 unk11;
    /* 0x12 */ u8 demoNumber;
    /* 0x13 */ u8 demoInputIndex;
    /* 0x14 */ u8 demoNextInputTimer;
}; /* size = ? */
extern struct Unk_03004C20 gUnk_03004C20;

extern s32 gBg2X; // BG2X
extern s16 gUnk_03004678;
extern s16 gUnk_030051B0;
extern s32 gBg2Y; // BG2Y

extern s16 gUnk_030034F8;

extern s16 gBg2PD; // BG2PD
extern u8 gBg2Alpha; // alpha
extern u16 gBg2XMag; // xMag
extern u8 gUnk_03004660;
extern s16 gBg2PA; // BG2PA
extern s16 gBg2PC; // BG2PC
extern u8 gUnk_030052A0;
extern u16 gBg2YMag; // yMag
extern s16 gBg2PB; // BG2PB

struct CurrentRoomBg2Bounds {
    /* 0x0 */ u16 left; // screen left edge
    /* 0x2 */ u16 top; // screen top edge
    /* 0x4 */ u16 right; // screen right edge
    /* 0x6 */ u16 bottom; // screen bottom edge
}; /* size = 0x8 */
extern struct CurrentRoomBg2Bounds gCurrentRoomBg2Bounds;

struct Unk_0300542C {
    /* 0x0 */ u16 unk0; // related to X position
    /* 0x2 */ u16 unk2; // related to Y position
    /* 0x4 */ u16 unk4; // related to X position
    /* 0x6 */ u16 unk6; // related to Y position
    /* 0x8 */ s8 unk8; // related to X position
    /* 0x9 */ s8 unk9; // related to Y position
    /* 0xA */ u8 padA[0xC - 0xA];
}; /* size = 0xC */
extern struct Unk_0300542C *gUnk_0300542C;

struct Unk_03005220 {
    /* 0x00_0 */ u32 unk0_0:2; // hearts
    /* 0x00_2 */ u32 unk0_2:3; // bitfield of stars
    /* 0x00_5 */ u32 unk0_5:7; // dream stones
    /* 0x01_4 */ u32 unk1_4:3; // bitfield of keys
    /* 0x01_7 */ u32 unk1_7:8;
    /* 0x02_7 */ u32 unk2_7:6; // relates to collecting hearts and 1 ups
    /* 0x03_5 */ u32 unk3_5:1; // moon door open
    /* 0x03_6 */ u32 unk3_6:1;
    /* 0x03_7 */ u32 unk3_7:1;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u32 unk8;
    /* 0x0C */ u32 unkC;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u16 unk16;
    /* 0x18 */ u16 unk18;
    /* 0x1A */ u16 unk1A;
    /* 0x1D */ u16 unk1C;
    /* 0x1E */ u16 unk1E;
    /* 0x20 */ u16 unk20;
    /* 0x22 */ u16 unk22;
    /* 0x24 */ u16 unk24;
    /* 0x26 */ s16 unk26;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ u16 unk2A;
    /* 0x2C */ u16 unk2C;
    /* 0x2E */ u8 unk2E;
    /* 0x2F */ s8 unk2F;
    /* 0x30 */ u8 unk30;
    /* 0x31 */ u8 unk31;
    /* 0x32 */ u8 unk32;
    /* 0x33 */ u8 unk33;
    /* 0x34 */ u8 unk34;
    /* 0x35 */ u8 unk35;
    /* 0x36 */ u8 unk36;
    /* 0x37 */ u8 unk37;
    /* 0x38 */ u8 unk38;
    /* 0x39 */ u8 unk39;
    /* 0x3A */ u8 unk3A;
    /* 0x3B */ u8 unk3B;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
    /* 0x3F */ u8 unk3F;
    /* 0x40 */ u8 unk40;
    /* 0x41 */ u8 unk41;
    /* 0x42 */ u8 unk42;
    /* 0x43 */ u8 unk43;
    /* 0x44 */ u8 unk44;
    /* 0x45 */ u8 unk45;
    /* 0x46 */ u8 unk46;
    /* 0x47 */ u8 unk47;
    /* 0x48 */ u8 unk48;
    /* 0x49 */ u8 unk49;
    /* 0x4A */ u8 unk4A;
    /* 0x4B */ u8 unk4B;
    /* 0x4C */ s8 unk4C;
    /* 0x4D */ u8 unk4D;
    /* 0x4E */ u8 unk4E;
    /* 0x4F */ u8 unk4F;
    /* 0x50 */ u8 unk50;
    /* 0x51 */ u8 unk51;
    /* 0x52 */ u8 unk52;
    /* 0x53 */ u8 unk53;
    /* 0x54 */ s8 unk54;
    /* 0x55 */ s8 unk55;
    /* 0x56 */ s8 unk56;
    /* 0x57 */ s8 unk57;
    /* 0x58 */ u8 unk58;
    /* 0x59 */ u8 unk59;
    /* 0x5A */ u8 unk5A;
    /* 0x5B */ u8 unk5B;
    /* 0x5C */ u8 unk5C;
    /* 0x5D */ u8 unk5D;
    /* 0x5E */ u8 unk5E;
    /* 0x5F */ u8 unk5F;
    /* 0x60 */ u16 unk60;
    /* 0x62 */ u8 pad62[0x64 - 0x62];
}; /* size = 0x64 */
extern struct Unk_03005220 gUnk_03005220;

extern u16 gUnk_030008E8;
extern u16 gUnk_0300358C;
extern u16 gUnk_03005474;

extern s32 gUnk_030007C0;
struct Unk_030034E8 {
    /* 0x0 */ s32 unk0;
    /* 0x4 */ s32 unk4;
}; /* size = 0x8 */
extern struct Unk_030034E8 gUnk_030034E8;
extern u8 gUnk_030051B8; // related to scrollFlags, only for level 6?
extern s32 gUnk_03005480;

struct Unk_030007E0 {
    /* 0x0 */ s16 unk0;
    /* 0x2 */ s16 unk2;
    /* 0x4 */ s16 unk4;
    /* 0x6 */ s16 unk6;
    /* 0x8 */ s16 unk8;
    /* 0xA */ s16 unkA;
    /* 0xC_0 */ u8 unkC_0:4;
    /* 0xC_4 */ u8 unkC_4:4;
    /* 0xD */ u8 padD[0x10 - 0xD];
}; /* size = 0x10 */
extern struct Unk_030007E0 gUnk_030007E0;

struct Unk_03005400 {
    /* 0x0 */ u8 pad0[0x2 - 0x0];
    /* 0x2 */ u16 unk2;
    /* 0x4 */ u8 pad4[0x6 - 0x4];
    /* 0x6 */ u16 unk6;
    /* 0x8 */ u8 unk8;
    /* 0x9 */ u8 pad9[0xA - 0x9];
    /* 0xA */ u8 unkA;
    /* 0xB */ u8 unkB;
    /* 0xC */ u8 unkC;
    /* 0xD */ u8 unkD;
    /* 0xE_0 */ u8 unkE_0:1;
    /* 0xE_1 */ u8 unkE_1:1;
    /* 0xE_2 */ u8 unkE_2:1;
    /* 0xE_3 */ u8 unkE_3:4; // TODO: verify
    /* 0xE_4 */ u8 unkE_7:1;
    /* 0x0F */ u8 padF[0x14 - 0xF];
    /* 0x14 */ u8 unk14;
    /* 0x15 */ u8 pad15[0x16 - 0x15];
    /* 0x16 */ s8 unk16;
    /* 0z17 */ u8 pad17[0x18 - 0x17];
}; /* size = 0x18 */
extern struct Unk_03005400 gUnk_03005400;

struct Unk_03005440 {
    /* 0x0 */ u16 unk0;
    /* 0x2 */ u16 unk2;
    /* 0x4 */ u16 unk4;
    /* 0x6 */ u16 unk6;
}; /* size = 0x8 */
extern struct Unk_03005440 gUnk_03005440;

extern u8 gUnk_03000800;
extern u8 *gUnk_03004654;
extern u8 gUnk_030051C8;

struct Unk_030051CC {
    /* 0x0 */ u16 unk0;
    /* 0x2 */ u16 unk2;
}; /* size = 0x4 */
extern struct Unk_030051CC gUnk_030051CC;

extern u8 gUnk_030007C4;
extern void * volatile gObjPalRamPtr; // OBJ palette ptr

struct Unk_03000830 {
    /* 0x0 */ u8 unk0;
    /* 0x1 */ u8 unk1;
    /* 0x2 */ vu8 unk2;
    /* 0x3 */ u8 pad3[0x4 - 0x3];
}; /* size = 0x4 */
extern struct Unk_03000830 gUnk_03000830[];

extern u8 gUnk_0300363C;

struct Unk_0300466C_4 {
    u16 tileNum; // tileNum
    u8 bpp_paletteNum; // bottom 7 bits is paletteNum, top bit is bpp
    s8 unk3; // related to xPos
    u8 unk4; // related to yPos
    u8 shape_size; // bottom 2 bits is size, next two bits is shape
};
struct Unk_0300466C {
    u8 unk0;
    u8 pad1[0x4 - 0x1];
    struct Unk_0300466C_4 *unk4;
};
extern struct Unk_0300466C *gUnk_0300466C;
extern struct Unk_0300466C *gUnk_030051DC;

extern void *gUnk_03005294;
extern void *gUnk_03005418;
extern void * volatile gObjVramPtr; // OBJ vram ptr

struct Unk_03000790 {
    /* 0x0 */ u16 unk0;
    /* 0x2 */ u16 unk2;
    /* 0x4 */ u16 unk4;
    /* 0x6 */ u16 unk6;
    /* 0x8 */ u16 unk8;
    /* 0xA */ u8 padA[0x10 - 0xA];
}; /* size = 0x10 */
extern struct Unk_03000790 gUnk_03000790[];

struct Unk_03003610 {
    /* 0x0 */ u8 unk0;
    /* 0x1 */ u8 unk1;
    /* 0x2 */ u8 unk2;
    /* 0x3 */ u8 unk3;
}; /* size = 0x4 */
extern struct Unk_03003610 gUnk_03003610[];

struct Unk_03004680 {
    /* 0x0 */ u16 unk0; // object affine PA
    /* 0x2 */ u16 unk2; // object affine PB
    /* 0x4 */ u16 unk4; // object affine PC
    /* 0x6 */ u16 unk6; // object affine PD
}; /* size = 0x8 */ 
extern struct Unk_03004680 gUnk_03004680[]; // OAM affine buffer

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
extern u8 gUnk_03005288; // OAM affine matrix number
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
        /* 0x0_0 */ u32 y:8;

        /* 0x1_0 */ u32 affineMode:2;
        /* 0x1_2 */ u32 objMode:2;
        /* 0x1_4 */ u32 mosaic:1;
        /* 0x1_5 */ u32 bpp:1;
        /* 0x1_6 */ u8 shape:2;

        /* 0x2_0 */ u16 x:9;
        /* 0x3_1 */ u8 matrixNum:3;
        /* 0x3_4 */ u32 hFlip:1;
        /* 0x3_5 */ u32 vFlip:1;
        /* 0x3_6 */ u32 size:2;

        /* 0x4_0 */ u16 tileNum:10;
        /* 0x5_2 */ u8 priority:2;
        /* 0x5_4 */ u16 paletteNum:4;
        /* 0x6_0 */ u8 pad6[0x8 - 0x6];
    } split;
    struct {
        /* 0x0 */ u32 attr01;
        /* 0x4 */ u16 attr2;
        /* 0x6 */ u16 affineParam;
    } all;
}; /* size = 0x8 */
extern union Unk_03000820 *gUnk_03000820; // OAM buffer pointer

extern union Unk_03000820 gUnk_03004800[]; // OAM buffer

extern u8 gUnk_030034BC;

struct Unk_03003590 {
    /* 0x0 */ u16 unk0;
    /* 0x2 */ u16 unk2;
    /* 0x4 */ u8 unk4;
    /* 0x5_0 */ u8 unk5_0:1;
    /* 0x6 */ u8 pad6[0x8 - 0x6];
}; /* size = 0x8 */
extern struct Unk_03003590 gUnk_03003590[];
extern void (*gUnk_030034A8)(u8);

extern u8 gUnk_030034E0;
extern void *gUnk_03004C10;

extern u16 gUnk_030034DC;

struct Unk_030051F0 {
    s32 unk0;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u8 unkE;
};
extern struct Unk_030051F0 gUnk_030051F0;

extern u8 gUnk_03000810;
extern u8 gUnk_030034C4;
extern u16 gUnk_03003508;

struct Unk_080D821C_4 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u8 unk8;
};
struct Unk_080D821C {
    u16 unk0;
    u16 unk2;
    struct Unk_080D821C_4 *unk4;
    u8 unk8;
    u8 unk9;
    u8 padA[0xC - 0xA];
};
extern struct Unk_080D821C *gUnk_03004D80;

extern u16 gUnk_030051E0;

struct Unk_03004D90 {
    u8 pad0[0x8 - 0x0];
    u8 unk8;
    u8 unk9;
};
extern struct Unk_03004D90 gUnk_03004D90;

extern u8 gUnk_03005200;

extern void *gUnk_030034F4;
extern void *gUnk_030052AC;

#endif // GUARD_VARIABLES_H