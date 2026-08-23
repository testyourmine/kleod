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
    u8 unk6; // file mode, 0 is New Game, 1 is Continue
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u8 unkC;
};
extern struct Unk_03003410 gUnk_03003410;

extern u16 *gUnk_030034FC;

enum FileSelectStage {
    FILE_SELECT_STAGE_SELECT,
    FILE_SELECT_STAGE_CONFIRM
};
struct Unk_03004658 {
    u8 pad0[0xC - 0x0];
    u8 cursorIndex; // cursor index? used in a lot of places so need to confirm
    u8 selectedSaveFile; // selected save file
    u8 padE[0xF - 0xE];
    s8 fileSelectStage; // stage, 0 is select, 1 is confirm
};
extern struct Unk_03004658 *gUnk_03004658;

#define LEVEL_INFO_DREAM_STONES_MASK 0x7F
#define LEVEL_INFO_BEATEN_FLAG 0x80

struct Unk_03004670 {
    /* 0x00 */ u8 unk0; // number of completed worlds. seemingly unused
    /* 0x01 */ u8 bestEx1TimeMinutes; // minutes of best time in EX-1
    /* 0x02 */ u8 bestEx1TimeSeconds; // seconds of best time in EX-1
    /* 0x03 */ u8 bestEx1TimeCentiseconds; // centiseconds of best time in EX-1
    /* 0x04 */ u8 bestEx3TimeMinutes; // minutes of best time in EX-3
    /* 0x05 */ u8 bestEx3TimeSeconds; // seconds of best time in EX-3
    /* 0x06 */ u8 bestEx3TimeCentiseconds; // centiseconds of best time in EX-3
    /* 0x07 */ u8 pad7[0x8 - 0x7];
    /* 0x08 */ u8 levelInfo[6][8]; // indexed by [world][level], bottom 7 bits is collected dream stones, 0x80 is level cleared
    /* 0x38 */ s32 unk38; // number of times file accessed? seemingly unused
    /* 0x3C */ u8 addChecksum;
    /* 0x3D */ u8 xorChecksum;
    /* 0x3E */ u8 pad3E[0x40 - 0x3E];
}; /* size = 0x40 */
extern struct Unk_03004670 *gUnk_03004670;

// I feel like there's a better name I could use
enum SceneType {
    SCENE_TYPE_LEVEL_SELECT,
    SCENE_TYPE_LEVEL,
    SCENE_TYPE_CUTSCENE,
    SCENE_TYPE_WORLD_MAP = 7
};

struct SaveData {
    u8 saveFileString[9]; // "K_KLONOA"
    u8 pad9[0x10 - 0x9];
    u8 currentSaveFile; // current save file
    u8 currentSaveFileAddress; // save file EEPROM address
    u8 lastLoadedSaveFile; // last loaded save file
    u8 pad13[0x14 - 0x13];
    u8 lives[3]; // lives
    u8 world[3]; // world
    u8 level[3]; // level
    u8 sceneType[3]; // 0 is level select, 1 is level gameplay, 2 is cutscene, 7 is world map
    u8 unk20[3];
    u8 unk23[3]; // number of completed worlds?
    u8 startedFile[3]; // 0x4 is file has been started, 0x0 is file not started
    u8 completedFile[3]; // 0x80 is file completed flag
};
extern struct SaveData *gSaveData;

struct Unk_03005284 {
    /* 0x00 */ u8 unk0; // lives
    /* 0x01 */ u8 unk1; // world
    /* 0x02 */ u8 unk2; // level
    /* 0x03 */ u8 unk3; // sceneType
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08_0 */ u8 unk8_0:2; // hearts
    /* 0x08_2 */ u8 unk8_2:3; // stars
    /* 0x08_5 */ u8 unk8_5:7; // dreamStones
    /* 0x09_4 */ u8 unk9_4:3; // keys
    /* 0x09_7 */ u8 unk9_7:8;
    /* 0x0A_7 */ u8 unkA_7:6;
    /* 0x0B_5 */ u8 unkB_5:1;
    /* 0x0B_6 */ u8 unkB_6:1;
    /* 0x0C */ u32 unkC;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u16 unk16;
    /* 0x18 */ u32 unk18;
    /* 0x1C */ u8 shootButtonConfig; // Type 1 sets shoot to B, Type 2 sets shoot to A
    /* 0x1D */ u8 jumpButtonConfig; // Type 1 sets jump to A, Type 2 sets jump to B
    /* 0x1E */ u8 unk1E;
    /* 0x1F */ u8 pad1F[0x20 - 0x1F];
    /* 0x20 */ u8 addChecksum;
    /* 0x21 */ u8 xorChecksum;
    /* 0x22 */ u8 pad22[0x24 - 0x22];
}; /* size = 0x24 */
extern struct Unk_03005284 *gUnk_03005284;

extern s8 gUnk_03004784;
extern u16 gSoundVolume;
extern u8 gUnk_0300548C;
extern u8 gBlendValue; // BLDALPHA/BLDY
extern u8 gMosaicSize; // MOSAIC

extern u16 gUnk_030034F0; // jump timer count
extern u16 gNewKeys;
extern u16 gHeldKeys;

extern u16 gHeldKeysAttract;
extern u16 gNewKeysAttract;
extern u8 gUnk_030034E4;

struct BgDataPtrs {
    /* 0x00 */ void *pBufBg0Tiles; // BG0 tiles
    /* 0x04 */ u16 *pBufBg0Tilemap; // BG0 tilemap
    /* 0x08 */ void *pBufBg1Tiles; // BG1 tiles
    /* 0x0C */ u16 *pBufBg1Tilemap; // BG1 tilemap
    /* 0x10 */ void *pBufBg2Tiles; // BG2 tiles
    /* 0x14 */ u8 *pBufBg2Tilemap; // BG2 tilemap
    /* 0x18 */ void *pBufBg3Tiles; // BG3 tiles
    /* 0x1C */ u16 *pBufBg3Tilemap; // BG3 tilemap
}; /* size = 0x20 */
extern struct BgDataPtrs gBgDataPtrs;
extern void *gUnk_03005290;

extern u8 gUnk_03003420;
extern u8 gUnk_03005428;

extern u16 gBgTilemapBufs[4][0x400]; // BG tilemaps
extern u8 gUnk_03004DB0[]; // BG2 tilemap data
extern u8 gUnk_03003650[][0x40];

extern u16 gUnk_03004C40[];
extern u16 gUnk_030052C0[];

extern u32 gUnk_03005488; // game over screen related

// TODO: figure out if unk8 can be loaded as u16 without union, or what the real solution is
union __attribute__((packed)) EntityInfo_8 {
    struct __attribute__((packed)) {
        u8 unk8;
        u8 unk9;
    } split;
    u16 all;
};
struct EntityInfo {
    /* 0x00 */ u16 xPosBg2; // X position in bg2
    /* 0x02 */ u16 yPosBg2; // Y position in bg2
    /* 0x04 */ u16 xPosScreen; // X position on screen
    /* 0x06 */ u16 yPosScreen; // Y position on screen
    /* 0x08 */ union EntityInfo_8 unk8;
    // /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0B_0 */ s32 unkB_0:4; // related to X position
    /* 0x0B_4 */ s32 unkB_4:4; // related to Y position
    /* 0x0C_0 */ u32 priority:2; // priority
    /* 0x0C_2 */ u32 unkC_2:2; // related to direction, bit 1 is hFlip, bit 2 is vFlip
    /* 0x0C_4 */ u32 unkC_4:4; // related to direction/rotation?
    /* 0x0D_0 */ u32 objMode:2; // objMode
    /* 0x0D_2 */ u32 affineHFlip_matrixNum:4; // bottom 3 bits is matrix number (0-7), 4th bit is hFlip
    /* 0x0D_6 */ u32 unkD_6:2;
    /* 0x0E_0 */ u32 affineEnable:1; // affine flag
    /* 0x0E_1 */ u32 affineDouble:1; // affine doubled or non-affine obj disable
    /* 0x0F */ u8 unkF;
    /* 0x10 */ u8 unk10; // sprite blinking/visible, or possibly enabled/active
    /* 0x11 */ u8 unk11;
    /* 0x12 */ u8 unk12;
    /* 0x13 */ u8 pad13[0x14 - 0x13];
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u8 unk16;
    /* 0x17 */ u8 unk17;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 pad19[0x1C - 0x19];
}; /* size = 0x1C */
extern struct EntityInfo gEntityInfo[];

struct BgInfo {
    /* 0x00 */ void *pTiles; // BG tiles
    /* 0x04 */ void *pTilemap; // BG tilemap
    /* 0x08 */ u16 hOfs; // BGXHOFS
    /* 0x0A */ u16 vOfs; // BGXVOFS
    /* 0x0C */ u16 tileCol; // BG left column
    /* 0x0E */ u16 tileRow; // BG top row
    /* 0x10 */ u16 hLength; // BG X length
    /* 0x12 */ u16 vLength; // BG Y length
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u16 unk16; // BG tile length y?
    /* 0x18 */ u8 unk18;  // BG tile length x?
    /* 0x19 */ u8 pad19[0x1C - 0x19];
}; /* size = 0x1C */
extern struct BgInfo gBgInfo[4];

enum WIN01 {
    WIN_0,
    WIN_1,

    WIN01_COUNT
};

enum WINHV {
    WIN_H,
    WIN_V,

    WINHV_COUNT
};

struct Unk_030034A0 {
    /* 0x00_0 */ u32 unk0_0:2;
    /* 0x00_2 */ u8 unk0_2:4; // TODO: verify
    /* 0x00_6 */ u32 unk0_6:2;
    /* 0x01_0 */ u32 unk1_0:1;
    /* 0x01_1 */ u8 unk1_1:5; // TODO: verify
    /* 0x01_6 */ u32 unk1_6:1;
    /* 0x01_6 */ u32 unk1_7:2;
    /* 0x02_1 */ u32 unk2_1:2;
    /* 0x03 */ u8 unk3[1]; // TODO: length?
    /* 0x02 */ u8 pad4[0x5 - 0x4];
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 pad7[0x8 - 0x7];
    /* 0x08 */ s16 winX1Y1[WIN01_COUNT][WINHV_COUNT];  // [x][y], where x represents WIN0/1 as 0/1, and y represents H/V as 0/1, X1/Y1
    /* 0x10 */ s16 winX2Y2[WIN01_COUNT][WINHV_COUNT]; // [x][y], where x represents WIN0/1 as 0/1, and y represents H/V as 0/1, X2/Y2
    /* 0x18 */ s16 unk18;
    /* 0x1A */ s16 unkA;
    /* 0x1C_0 */ u8 unk1C_0:2;
    /* 0x1C_2 */ u8 unk1C_2:1;
    /* 0x1C_3 */ u8 unk1C_3:1;
    /* 0x1C_4 */ u8 unk1C_4:1;
    /* 0x1C_5 */ u8 unk1C_5:1;
    /* 0x1C_6 */ u8 unk1C_6:1;
}; /* size = ? */
extern struct Unk_030034A0 *gUnk_030034A0;

struct Unk_03004C20 {
    /* 0x00 */ u32 sceneFrameCounter; // frame counter, per scene, pausing and then later unpausing restores value from before pause
    /* 0x04 */ u32 globalFrameCounter; // frame counter, global, restarts upon returning to title screen
    /* 0x08 */ u16 roomsRotationBits; // bit field of room rotation, 2 bits per room, values 0-3 (90 degree rotation per)
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 isHoverBoardLevel; // level is Hover Board level
    /* 0x0C */ u8 level; // one-indexed
    /* 0x0D */ u8 world; // one-indexed
    /* 0x0E */ u8 room; // one-indexed
    /* 0x0F */ u8 unkF; // written to once, otherwise unused
    /* 0x10 */ u8 levelHasTimer; // level has timer (EX-1 and EX-3)
    /* 0x11 */ u8 levelHasWarpDoors; // level has warp doors (5-2 and 5-3)
    /* 0x12 */ u8 demoNumber;
    /* 0x13 */ u8 demoInputIndex;
    /* 0x14 */ u8 demoNextInputTimer;
}; /* size = ? */
extern struct Unk_03004C20 gUnk_03004C20;

extern s32 gBg2X; // BG2X
extern s16 gBg2AlphaSin;
extern s16 gBg2AlphaCos;
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
    /* 0x00_0 */ u32 hearts:2; // hearts
    /* 0x00_2 */ u32 stars:3; // bitfield of stars
    /* 0x00_5 */ u32 dreamStones:7; // dream stones
    /* 0x01_4 */ u32 keys:3; // bitfield of keys
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
    /* 0x1D */ u16 klonoaIdleTimer; // Idle timer, picks a random idle animation after 20 seconds
    /* 0x1E */ u16 unk1E;
    /* 0x20 */ u16 unk20;
    /* 0x22 */ u16 unk22;
    /* 0x24 */ u16 unk24;
    /* 0x26 */ s16 unk26;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ s16 unk2A;
    /* 0x2C */ s16 unk2C;
    /* 0x2E */ u8 unk2E;
    /* 0x2F */ s8 unk2F; // Entity id of object being stood on (also activated briefly when hand comes out of grabby box)
    /* 0x30 */ u8 unk30; // Klonoa is in falling state
    /* 0x31 */ u8 unk31; // Klonoa is on ground
    /* 0x32 */ u8 windBulletDirection; // Direction wind bullet fired, 0 is right, 1 is left
    /* 0x33 */ u8 windBulletDisableTimer; // Timer for disabling Wind Bullet
    /* 0x34 */ u8 unk34; // Klonoa is holding on to a Goomi (winged red ball)
    /* 0x35 */ u8 unk35; // Klonoa is holding on to rope (and maybe ladder)
    /* 0x36 */ u8 unk36; // Klonoa climbing rope direction, 0 is up, 1 is down
    /* 0x37 */ u8 unk37; // Klonoa all lives lost (game over)
    /* 0x38 */ u8 unk38;
    /* 0x39 */ u8 unk39;
    /* 0x3A */ u8 unk3A; // Klonoa is riding wind gust
    /* 0x3B */ u8 unk3B; // Wind gust timer
    /* 0x3C */ u8 unk3C; // Klonoa jumping type, 1 is normal, 2 is double jump (only during brief moment of throwing), 3 is from Goomi
    /* 0x3D */ u8 unk3D; // Flutter usability, 0 is usable (if in mid-air), 2 is mid-flutter (in-use), 1 is falling after flutter (disabled until hit ground)
    /* 0x3E */ u8 klonoaInvincibilityTimer; // Invincibility timer (usually from being hit)
    /* 0x3F */ u8 unk3F; // Entity id of Goomi being held on to
    /* 0x40 */ u8 unk40;
    /* 0x41 */ u8 unk41; // In the process of throwing entity
    /* 0x42 */ u8 unk42; // Entity id of entity being carried
    /* 0x43 */ u8 unk43; // State of entity being carried, 0 is not carried, 1 is carried, 2 is being squished (for enemy)
    /* 0x44 */ u8 unk44;
    /* 0x45 */ u8 unk45;
    /* 0x46 */ u8 unk46;
    /* 0x47 */ u8 unk47;
    /* 0x48 */ u8 unk48;
    /* 0x49 */ u8 unk49;
    /* 0x4A */ u8 unk4A;
    /* 0x4B */ u8 unk4B;
    /* 0x4C */ u8 lives;
    /* 0x4D */ u8 levelTimeMinutes; // current level timer minutes
    /* 0x4E */ u8 levelTimeSeconds; // current level timer seconds
    /* 0x4F */ u8 levelTimeCentiseconds; // current level timer centiseconds
    /* 0x50 */ u8 unk50;
    /* 0x51 */ u8 unk51;
    /* 0x52 */ u8 unk52;
    /* 0x53 */ u8 unk53;
    /* 0x54 */ s8 unk54; // Box X position as its being picked up and put into position?
    /* 0x55 */ s8 unk55; // Box Y position as its being picked up and put into position?
    /* 0x56 */ s8 unk56;
    /* 0x57 */ s8 unk57;
    /* 0x58 */ u8 unk58;
    /* 0x59 */ u8 unk59;
    /* 0x5A */ u8 unk5A;
    /* 0x5B */ u8 unk5B; // Klonoa is invincible (usually from being hit)
    /* 0x5C */ u8 unk5C; // Related to being able to control Klonoa
    /* 0x5D */ u8 allStarsCollected; // All 3 stars collected
    /* 0x5E */ u8 klonoaPrevIdleAnimation; // The previous idle animation state ID (28-32)
    /* 0x5F */ u8 unk5F;
    /* 0x60 */ u16 unk60;
    /* 0x62 */ u8 pad62[0x64 - 0x62];
}; /* size = 0x64 */
extern struct Unk_03005220 gUnk_03005220;

extern u16 gUnk_030008E8;
extern u16 gUnk_0300358C;
extern u16 gPreviousBg2VOfs;

extern s32 gAthleticChallengeAutoScrollYVelocity;
struct AthleticChallengeAutoScrollBaseVelocity {
    /* 0x0 */ s32 x;
    /* 0x4 */ s32 y;
}; /* size = 0x8 */
extern struct AthleticChallengeAutoScrollBaseVelocity gAthleticChallengeAutoScrollBaseVelocity; // Base velocity of the autoscroll
extern u8 gAthleticChallengeScrollFlags;
extern s32 gAthleticChallengeAutoScrollXVelocity;

struct Unk_030007E0 {
    /* 0x0 */ s16 unk0;
    /* 0x2 */ s16 unk2;
    /* 0x4 */ u16 unk4;
    /* 0x6 */ s16 unk6;
    /* 0x8 */ s16 unk8;
    /* 0xA */ u16 unkA;
    /* 0xC_0 */ u8 unkC_0:4;
    /* 0xC_4 */ u8 unkC_4:4;
    /* 0xD */ u8 padD[0x10 - 0xD];
}; /* size = 0x10 */
extern struct Unk_030007E0 gUnk_030007E0;

struct Unk_03005400 {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08_0 */u8 unk8_0:1;
    /* 0x08_1 */u8 unk8_1:1;
    /* 0x08_2 */u8 unk8_2:1;
    /* 0x08_3 */u8 unk8_3:1;
    /* 0x08_4 */u8 unk8_4:1;
    /* 0x08_5 */u8 unk8_5:1;
    /* 0x08_6 */u8 unk8_6:1;
    /* 0x08_7 */u8 unk8_7:1;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E_0 */ u8 unkE_0:1;
    /* 0x0E_1 */ u8 unkE_1:1;
    /* 0x0E_2 */ u8 unkE_2:1;
    /* 0x0E_3 */ u8 unkE_3:1;
    /* 0x0E_4 */ u8 unkE_4:1;
    /* 0x0E_5 */ u8 unkE_5:2; // TODO: verify
    /* 0x0E_4 */ u8 unkE_7:1;
    /* 0x0F */ s8 unkF;
    /* 0x10 */ s8 unk10;
    /* 0x11 */ u8 unk11;
    /* 0x12 */ u8 unk12;
    /* 0x13 */ u8 unk13;
    /* 0x14 */ u8 unk14;
    /* 0x15 */ s8 unk15;
    /* 0x16 */ s8 unk16;
    /* 0z17 */ u8 pad17[0x18 - 0x17];
}; /* size = 0x18 */
extern struct Unk_03005400 gUnk_03005400;

struct Unk_03005440 {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u8 pad8[0xC - 0x8];
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u8 pad14[0x18 - 0x14];
    /* 0x18 */ u16 unk18;
    /* 0x1A */ u16 unk1A;
    /* 0x1C */ u16 unk1C;
    /* 0x1E */ u16 unk1E;
}; /* size = 0x20 */
extern struct Unk_03005440 gUnk_03005440;

extern u8 gUnk_03000800;

struct Unk_03004654 {
    u8 unk0;
    u8 unk1;
    u8 pad2[0x14 - 0x2];
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
};
extern struct Unk_03004654 *gUnk_03004654;

extern u8 gUnk_030051C8;

struct Unk_030051CC {
    /* 0x0 */ u16 unk0;
    /* 0x2 */ u16 unk2;
}; /* size = 0x4 */
extern struct Unk_030051CC gUnk_030051CC;

extern u8 gUnk_030007C4;
extern void * volatile gObjPalRamPtr; // OBJ palette ptr

struct EntityAnimationInfo {
    /* 0x0 */ u8 state; // entity state
    /* 0x1 */ u8 timer; // timer of current animation frame
    /* 0x2 */ volatile u8 frame; // current animation frame index
    /* 0x3 */ u8 pad3[0x4 - 0x3];
}; /* size = 0x4 */
extern struct EntityAnimationInfo gEntityAnimationInfo[];

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

struct Unk_03005294_03005418_0 {
    u32 src;
    u8 unk4;
    s32 unk5_0:4;
    s32 unk5_4:4;
};
struct Unk_03005294_03005418 {
    struct Unk_03005294_03005418_0 **unk0;
    void *dest;
    u16 size;
    u8 unkA;
    u8 padB[0xC - 0xB];
};
extern struct Unk_03005294_03005418 *gUnk_03005294;
extern struct Unk_03005294_03005418 *gUnk_03005418;

extern void * volatile gObjVramPtr; // OBJ vram ptr

struct Unk_03000790 {
    /* 0x0 */ u16 unk0; // related to X position
    /* 0x2 */ u16 unk2; // related to X position
    /* 0x4 */ u16 unk4; // related to Y position
    /* 0x6 */ u16 unk6; // related to Y position
    /* 0x8 */ u16 unk8; // related to Y Position?
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
    /* 0x0 */ u16 pa; // object affine PA
    /* 0x2 */ u16 pb; // object affine PB
    /* 0x4 */ u16 pc; // object affine PC
    /* 0x6 */ u16 pd; // object affine PD
}; /* size = 0x8 */ 
extern struct Unk_03004680 gOamAffineBuffer[]; // OAM affine buffer

extern u32 gUnk_030007D4;
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
extern u32 gUnk_03004664;
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
extern u8 gOamAffineMatrixNum; // OAM affine matrix number
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
extern union Unk_03000820 *gOamBufferPtr; // OAM buffer pointer

extern union Unk_03000820 gOamBuffer[]; // OAM buffer

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

struct DisplayBackup {
    s32 sceneFrameCounter;
    u16 bldCnt;
    u16 bg0Cnt;
    u16 bg1Cnt;
    u16 bg2Cnt;
    u16 bg3Cnt;
    u8 blendValue;
};
extern struct DisplayBackup gDisplayBackup;

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
    u8 pad0[0x4 - 0x0];
    u16 unk4; // WIN1H
    u16 unk6; // WIN1V
    u8 unk8; // 2 is no textbox (or shrinking textbox), 1 is textbox requested (or growing textbox), 0 is textbox is being displayed (unchanging)
    u8 unk9;
};
extern struct Unk_03004D90 gUnk_03004D90;

extern u8 gUnk_03005200;

extern void *gUnk_030034F4;
extern void *gUnk_030052AC;

extern u16 gUnk_030052B8;

enum TitleScreenStage {
    TITLE_SCREEN_STAGE_INTRO_LOGO_ANIMATION, // Also works as none
    TITLE_SCREEN_STAGE_PRESS_START,
    TITLE_SCREEN_STAGE_NEW_GAME_OR_CONTINUE = 5,
    TITLE_SCREEN_STAGE_GO_TO_DEMO,
    TITLE_SCREEN_STAGE_GO_TO_FILE_SELECT
};
extern u8 gTitleScreenStage;

struct Unk_030034B0 {
    u8 unk0_0:1;
    u8 unk0_1:3;
    u8 unk0_4:1;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6_0:4;
    u8 unk6_4:4;
    u8 unk7_0:4;
    u8 unk7_4:4;
    u8 unk8_0:4;
    u8 unk8_4:4;
};
extern struct Unk_030034B0 gUnk_030034B0;

enum PauseMenuType {
    PAUSE_MENU_TYPE_NORMAL_LEVEL,
    PAUSE_MENU_TYPE_LEVEL_SELECT,
    PAUSE_MENU_TYPE_EX_LEVEL,
    PAUSE_MENU_TYPE_BOSS
};
extern u8 gPauseMenuType; // Pause menu type, 0 is level, 1 is level select, 2 is EX level, 3 is boss battle

struct Unk_03004C08 {
    u8 unk0_0:4;
    u8 unk0_4:4; // world map index, 0-4 worlds, 5-7 ex1-3
    s8 unk1;
    u8 unk2;
    u8 pad3[0x4 - 0x3];
};
extern struct Unk_03004C08 gUnk_03004C08;

extern u8 gUnk_030007CC;

struct Unk_0803D4AC {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    s8 unk3;
    s8 unk4;
    u8 unk5;
    u8 unk6;
};
extern struct Unk_0803D4AC gUnk_03003620;

extern u8 gUnk_03003D16[][8]; // TODO: type
extern u8 gUnk_03003DD6[][8]; // TODO: type
extern u8 gUnk_03003E96[][8]; // TODO: type
extern u8 gUnk_03003F56[][8]; // TODO: type

extern u8 gUnk_03003790[][0x40]; // TODO: type

enum GameOverScreenStage {
    GAME_OVER_SCREEN_STAGE_TRANSITION_ANIMATION,
    GAME_OVER_SCREEN_STAGE_SELECT_OPTION,
    GAME_OVER_SCREEN_STAGE_CONTINUE_PLAYING,
    GAME_OVER_SCREEN_STAGE_GOOD_NIGHT,
    GAME_OVER_SCREEN_STAGE_EXIT_TO_TITLE_SCREEN
};
extern u8 gGameOverScreenStage;

struct Unk_030034D4 {
    u16 unk0;
    u16 unk2;
};
extern struct Unk_030034D4 *gUnk_030034D4;

extern u16 gDma3CntHBackup; // DMA3CNT_H
extern u16 gDma2CntHBackup; // DMA2CNT_H
extern u16 gDma1CntHBackup; // DMA1CNT_H
extern u16 gDma0CntHBackup; // DMA0CNT_H

enum DeleteAllSaveDataScreenStage {
    DELETE_ALL_SAVE_DATA_SCREEN_STAGE_FIRST_YES_NO,
    DELETE_ALL_SAVE_DATA_SCREEN_STAGE_SECOND_YES_NO,
    DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DELETE_DATA,
    DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_DELETED,
    DELETE_ALL_SAVE_DATA_SCREEN_STAGE_DATA_NOT_DELETED,
    DELETE_ALL_SAVE_DATA_SCREEN_STAGE_EXIT
};
extern u8 gDeleteAllSaveDataScreenStage;
enum DeleteAllSaveDataScreenCursor {
    DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_YES,
    DELETE_ALL_SAVE_DATA_SCREEN_CURSOR_NO
};
extern u8 gDeleteAllSaveDataScreenCursor;
extern u8 gDeleteAllSaveDataMinigameUnlocked; // If up was being held when entering "Delete all save data" screen, then the minigame is unlocked

extern u8 gSaveFilesStarted;

extern u8 gFileSelectScreenTransitionDelay; // delay timer between confirming file and transition

extern void *gUnk_030007D0;
extern u8 *gUnk_03004D84; // TODO: pointer type?

struct Unk_030052A4 {
    u32 unk0_0:3;
    u32 unk0_3:8;
    u32 unk1_3:4;
    u32 unk1_7:7;
    u8 unk2_6:5; // TODO: verify
    u32 unk3_3:4;
    u32 unk3_7:1;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    u8 unk10[0x14 - 0x10];
    s16 unk14;
    s16 unk16;
    s16 unk18;
    s16 unk1A;
    s16 unk1C;
    u8 unk1E;
    u8 unk1F;
    s32 (*unk20)(s32);
};
extern struct Unk_030052A4 *gUnk_030052A4;

extern u32 gUnk_03000814;

struct Unk_030007C8 {
    void *unk0;
    u16 unk4;
    u16 unk6;
};
extern struct Unk_030007C8 *gUnk_030007C8;

struct Unk_0300081C {
    void *unk0;
    s8 unk4;
    u8 unk5;
    u8 pad6[0x8 - 0x6];
    s8 unk8;
    s8 unk9;
    s8 unkA;
    s8 unkB;
    u8 padC[0xD - 0xC];
    u8 unkD;
    u8 unkE;
    u8 padF[0x10 - 0xF];
    u16 unk10;
    u16 unk12;
    s16 unk14;
    u8 unk16_0:4;
    u16 unk16_4:3;
    u8 unk16_7:1;
    u8 unk17_0:1;
    u8 unk17_1:1;
    u16 unk18;
    u16 unk1A;
    void *unk1C;
    void *unk20;
    void (*unk24)(void);
};
extern struct Unk_0300081C *gUnk_0300081C;

#endif // GUARD_VARIABLES_H