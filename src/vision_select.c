#include "global.h"
#include "vision_select.h"
#include "anim.h"
#include "code_08003D58.h"
#include "interrupts.h"
#include "math.h"
#include "pause_menu.h"
#include "save.h"
#include "text_box.h"
#include "transitions.h"
#include "util.h"
#include "wait_for_next_frame.h"
#include "data/trig.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern u8 gVisionBgColorMode[6][9][3]; // BG bpp (0 = 16 color mode, 0x80 = 256 color mode)

// 0x11717c
// x, y, arg4, arg1 (connected ID?), id
const u8 gUnk_0811717C[6][40][5] = {
    [0] = {
        [0] = { 40, 66, 0, 13, 0 },
        [1] = { 120, 128, 0, 14, 0 },
        [2] = { 120, 120, 0, 15, 0 },
        [3] = { 120, 140, 0, 16, 0 },
        [4] = { 76, 136, 0, 17, 0 },
        [5] = { 164, 136, 0, 18, 0 },
        [6] = { 90, 255, 0, 19, 82 },
        [7] = { 50, 224, 0, 20, 82 },
        [8] = { 90, 200, 0, 21, 82 },
        [9] = { 80, 170, 0, 22, 82 },
        [10] = { 36, 118, 0, 23, 82 },
        [11] = { 92, 100, 0, 24, 82 },
        [12] = { 90, 72, 0, 25, 82 },
        [13] = { 50, 40, 0, 26, 82 },
        [14] = { 5, 0, 0, 27, 81 },
        [15] = { 60, 83, 0, 28, 81 },
        [16] = { 78, 138, 0, 29, 81 },
        [17] = { 60, 188, 0, 30, 81 },
        [18] = { 92, 57, 0, 31, 81 },
        [19] = { 84, 112, 0, 32, 81 },
        [20] = { 88, 124, 0, 33, 81 },
        [21] = { 97, 7, 0, 34, 81 },
        [22] = { 104, 48, 0, 35, 81 },
        [23] = { 100, 168, 0, 36, 81 },
        [24] = { 60, 16, 0, 37, 81 },
        [25] = { 82, 21, 0, 38, 81 },
        [26] = { 40, 8, 0, 39, 81 },
        [27] = { 66, 30, 0, 40, 81 },
        [28] = { 72, 4, 0, 41, 81 },
        [29] = { 42, 157, 0, 42, 81 },
        [30] = { 95, 210, 0, 43, 81 },
        [31] = { 86, 149, 0, 44, 81 },
        [32] = { 90, 224, 0, 45, 81 },
        [33] = { 83, 244, 0, 46, 81 },
        [34] = { 92, 234, 0, 47, 81 },
        [35] = { 57, 88, 24, 48, 81 },
        [36] = { 45, 224, 32, 49, 81 },
        [37] = { 255, 0, 0, 0, 0 },
        [38] = { 0, 0, 0, 0, 0 },
        [39] = { 0, 0, 0, 0, 0 }
    },
    [1] = {
        [0] = { 74, 255, 0, 13, 82 },
        [1] = { 55, 224, 0, 14, 82 },
        [2] = { 95, 196, 0, 15, 82 },
        [3] = { 80, 172, 0, 16, 82 },
        [4] = { 60, 144, 0, 17, 82 },
        [5] = { 90, 114, 0, 18, 82 },
        [6] = { 80, 86, 0, 19, 82 },
        [7] = { 40, 50, 0, 20, 82 },
        [8] = { 7, 0, 0, 21, 81 },
        [9] = { 57, 100, 0, 22, 81 },
        [10] = { 80, 30, 0, 22, 81 },
        [11] = { 52, 180, 0, 22, 81 },
        [12] = { 70, 79, 64, 25, 81 },
        [13] = { 39, 51, 48, 25, 81 },
        [14] = { 57, 151, 64, 25, 81 },
        [15] = { 91, 209, 56, 25, 81 },
        [16] = { 85, 116, 64, 29, 81 },
        [17] = { 65, 232, 50, 29, 81 },
        [18] = { 82, 73, 0, 31, 81 },
        [19] = { 86, 10, 0, 31, 81 },
        [20] = { 89, 243, 0, 31, 81 },
        [21] = { 65, 195, 0, 31, 81 },
        [22] = { 90, 132, 0, 35, 81 },
        [23] = { 86, 59, 0, 35, 81 },
        [24] = { 50, 120, 0, 35, 81 },
        [25] = { 255, 0, 0, 0, 0 },
        [26] = { 0, 0, 0, 0, 0 },
        [27] = { 0, 0, 0, 0, 0 },
        [28] = { 0, 0, 0, 0, 0 },
        [29] = { 0, 0, 0, 0, 0 },
        [30] = { 0, 0, 0, 0, 0 },
        [31] = { 0, 0, 0, 0, 0 },
        [32] = { 0, 0, 0, 0, 0 },
        [33] = { 0, 0, 0, 0, 0 },
        [34] = { 0, 0, 0, 0, 0 },
        [35] = { 0, 0, 0, 0, 0 },
        [36] = { 0, 0, 0, 0, 0 },
        [37] = { 0, 0, 0, 0, 0 },
        [38] = { 0, 0, 0, 0, 0 },
        [39] = { 0, 0, 0, 0, 0 }
    },
    [2] = {
        [0] = { 97, 255, 0, 13, 82 },
        [1] = { 85, 230, 0, 14, 82 },
        [2] = { 90, 202, 0, 15, 82 },
        [3] = { 60, 182, 0, 16, 82 },
        [4] = { 80, 140, 0, 17, 82 },
        [5] = { 80, 110, 0, 18, 82 },
        [6] = { 80, 80, 0, 19, 82 },
        [7] = { 45, 40, 0, 20, 82 },
        [8] = { 7, 0, 0, 21, 81 },
        [9] = { 52, 154, 0, 22, 81 },
        [10] = { 80, 55, 0, 23, 81 },
        [11] = { 60, 235, 0, 24, 81 },
        [12] = { 55, 123, 0, 25, 81 },
        [13] = { 60, 0, 0, 26, 81 },
        [14] = { 89, 170, 0, 27, 81 },
        [15] = { 63, 89, 0, 28, 81 },
        [16] = { 93, 68, 0, 29, 81 },
        [17] = { 83, 26, 0, 30, 81 },
        [18] = { 96, 156, 0, 31, 81 },
        [19] = { 102, 92, 0, 32, 81 },
        [20] = { 39, 100, 0, 33, 81 },
        [21] = { 35, 165, 0, 34, 81 },
        [22] = { 98, 190, 0, 35, 81 },
        [23] = { 93, 43, 0, 36, 81 },
        [24] = { 36, 216, 0, 37, 81 },
        [25] = { 107, 216, 0, 38, 81 },
        [26] = { 97, 16, 0, 39, 81 },
        [27] = { 90, 176, 0, 40, 81 },
        [28] = { 89, 50, 0, 41, 81 },
        [29] = { 102, 236, 0, 42, 81 },
        [30] = { 85, 142, 64, 43, 83 },
        [31] = { 55, 54, 58, 44, 83 },
        [32] = { 57, 211, 48, 45, 83 },
        [33] = { 255, 0, 0, 0, 0 },
        [34] = { 0, 0, 0, 0, 0 },
        [35] = { 0, 0, 0, 0, 0 },
        [36] = { 0, 0, 0, 0, 0 },
        [37] = { 0, 0, 0, 0, 0 },
        [38] = { 0, 0, 0, 0, 0 },
        [39] = { 0, 0, 0, 0, 0 }
    },
    [3] = {
        [0] = { 100, 255, 0, 13, 82 },
        [1] = { 80, 224, 0, 14, 82 },
        [2] = { 70, 192, 0, 15, 82 },
        [3] = { 90, 160, 0, 16, 82 },
        [4] = { 80, 135, 0, 17, 82 },
        [5] = { 100, 110, 0, 18, 82 },
        [6] = { 75, 83, 0, 19, 82 },
        [7] = { 40, 50, 0, 20, 82 },
        [8] = { 7, 0, 0, 21, 81 },
        [9] = { 108, 94, 0, 22, 81 },
        [10] = { 104, 148, 0, 23, 81 },
        [11] = { 96, 37, 0, 24, 81 },
        [12] = { 67, 241, 0, 25, 81 },
        [13] = { 33, 135, 0, 26, 81 },
        [14] = { 49, 213, 0, 26, 81 },
        [15] = { 66, 125, 0, 28, 81 },
        [16] = { 95, 209, 0, 29, 81 },
        [17] = { 90, 21, 0, 30, 81 },
        [18] = { 71, 155, 0, 35, 81 },
        [19] = { 76, 171, 0, 36, 81 },
        [20] = { 85, 185, 0, 37, 81 },
        [21] = { 38, 77, 0, 38, 81 },
        [22] = { 33, 21, 0, 39, 81 },
        [23] = { 25, 238, 0, 40, 81 },
        [24] = { 39, 90, 0, 41, 81 },
        [25] = { 22, 23, 0, 42, 81 },
        [26] = { 50, 35, 0, 43, 81 },
        [27] = { 30, 216, 0, 44, 81 },
        [28] = { 32, 183, 0, 45, 81 },
        [29] = { 255, 0, 0, 0, 0 },
        [30] = { 0, 0, 0, 0, 0 },
        [31] = { 0, 0, 0, 0, 0 },
        [32] = { 0, 0, 0, 0, 0 },
        [33] = { 0, 0, 0, 0, 0 },
        [34] = { 0, 0, 0, 0, 0 },
        [35] = { 0, 0, 0, 0, 0 },
        [36] = { 0, 0, 0, 0, 0 },
        [37] = { 0, 0, 0, 0, 0 },
        [38] = { 0, 0, 0, 0, 0 },
        [39] = { 0, 0, 0, 0, 0 }
    },
    [4] = {
        [0] = { 100, 255, 0, 13, 82 },
        [1] = { 85, 230, 0, 14, 82 },
        [2] = { 50, 200, 0, 15, 82 },
        [3] = { 80, 160, 0, 16, 82 },
        [4] = { 90, 135, 0, 17, 82 },
        [5] = { 70, 105, 0, 18, 82 },
        [6] = { 80, 75, 0, 19, 82 },
        [7] = { 45, 50, 0, 20, 82 },
        [8] = { 59, 11, 0, 21, 81 },
        [9] = { 92, 92, 0, 22, 81 },
        [10] = { 54, 146, 0, 23, 81 },
        [11] = { 90, 207, 0, 24, 81 },
        [12] = { 92, 35, 0, 25, 81 },
        [13] = { 7, 0, 0, 26, 81 },
        [14] = { 80, 60, 0, 27, 81 },
        [15] = { 40, 168, 0, 28, 81 },
        [16] = { 94, 220, 0, 29, 81 },
        [17] = { 45, 112, 0, 30, 81 },
        [18] = { 44, 232, 0, 31, 81 },
        [19] = { 92, 115, 0, 32, 81 },
        [20] = { 92, 170, 0, 33, 81 },
        [21] = { 36, 79, 0, 34, 81 },
        [22] = { 98, 54, 0, 35, 81 },
        [23] = { 60, 36, 0, 36, 81 },
        [24] = { 70, 242, 0, 37, 81 },
        [25] = { 85, 186, 0, 38, 81 },
        [26] = { 93, 24, 0, 39, 81 },
        [27] = { 255, 0, 0, 0, 0 },
        [28] = { 0, 0, 0, 0, 0 },
        [29] = { 0, 0, 0, 0, 0 },
        [30] = { 0, 0, 0, 0, 0 },
        [31] = { 0, 0, 0, 0, 0 },
        [32] = { 0, 0, 0, 0, 0 },
        [33] = { 0, 0, 0, 0, 0 },
        [34] = { 0, 0, 0, 0, 0 },
        [35] = { 0, 0, 0, 0, 0 },
        [36] = { 0, 0, 0, 0, 0 },
        [37] = { 0, 0, 0, 0, 0 },
        [38] = { 0, 0, 0, 0, 0 },
        [39] = { 0, 0, 0, 0, 0 }
    },
    [5] = {
        [0] = { 90, 0, 0, 13, 81 },
        [1] = { 90, 32, 0, 14, 81 },
        [2] = { 90, 64, 0, 15, 81 },
        [3] = { 90, 96, 0, 16, 81 },
        [4] = { 90, 128, 0, 17, 81 },
        [5] = { 90, 160, 0, 18, 81 },
        [6] = { 90, 192, 0, 19, 81 },
        [7] = { 90, 224, 0, 20, 81 },
        [8] = { 255, 0, 0, 0, 0 },
        [9] = { 0, 0, 0, 0, 0 },
        [10] = { 0, 0, 0, 0, 0 },
        [11] = { 0, 0, 0, 0, 0 },
        [12] = { 0, 0, 0, 0, 0 },
        [13] = { 0, 0, 0, 0, 0 },
        [14] = { 0, 0, 0, 0, 0 },
        [15] = { 0, 0, 0, 0, 0 },
        [16] = { 0, 0, 0, 0, 0 },
        [17] = { 0, 0, 0, 0, 0 },
        [18] = { 0, 0, 0, 0, 0 },
        [19] = { 0, 0, 0, 0, 0 },
        [20] = { 0, 0, 0, 0, 0 },
        [21] = { 0, 0, 0, 0, 0 },
        [22] = { 0, 0, 0, 0, 0 },
        [23] = { 0, 0, 0, 0, 0 },
        [24] = { 0, 0, 0, 0, 0 },
        [25] = { 0, 0, 0, 0, 0 },
        [26] = { 0, 0, 0, 0, 0 },
        [27] = { 0, 0, 0, 0, 0 },
        [28] = { 0, 0, 0, 0, 0 },
        [29] = { 0, 0, 0, 0, 0 },
        [30] = { 0, 0, 0, 0, 0 },
        [31] = { 0, 0, 0, 0, 0 },
        [32] = { 0, 0, 0, 0, 0 },
        [33] = { 0, 0, 0, 0, 0 },
        [34] = { 0, 0, 0, 0, 0 },
        [35] = { 0, 0, 0, 0, 0 },
        [36] = { 0, 0, 0, 0, 0 },
        [37] = { 0, 0, 0, 0, 0 },
        [38] = { 0, 0, 0, 0, 0 },
        [39] = { 0, 0, 0, 0, 0 }
    }
};

// 0x11762c
// related to slot
const u8 gUnk_0811762C[6][8] = {
    [0] = {
        [0] = 6,
        [1] = 7,
        [2] = 8,
        [3] = 9,
        [4] = 10,
        [5] = 11,
        [6] = 12,
        [7] = 13
    },
    [1] = {
        [0] = 0,
        [1] = 1,
        [2] = 2,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 6,
        [7] = 7
    },
    [2] = {
        [0] = 0,
        [1] = 1,
        [2] = 2,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 6,
        [7] = 7
    },
    [3] = {
        [0] = 0,
        [1] = 1,
        [2] = 2,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 6,
        [7] = 7
    },
    [4] = {
        [0] = 0,
        [1] = 1,
        [2] = 2,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 6,
        [7] = 7
    },
    [5] = {
        [0] = 0,
        [1] = 1,
        [2] = 2,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 6,
        [7] = 7
    }
};

// 0x11765c
// vision (unlocked) related
const u8 gUnk_0811765C[6][7] = {
    [0] = {
        [0] = 0x2,
        [1] = 0x4,
        [2] = 0x18,
        [3] = 0x60,
        [4] = 0x60,
        [5] = 0x80,
        [6] = 0x80
    },
    [1] = {
        [0] = 0x2,
        [1] = 0x4,
        [2] = 0x18,
        [3] = 0x60,
        [4] = 0x60,
        [5] = 0x80,
        [6] = 0x80
    },
    [2] = {
        [0] = 0x2,
        [1] = 0x4,
        [2] = 0x18,
        [3] = 0x60,
        [4] = 0x60,
        [5] = 0x80,
        [6] = 0x80
    },
    [3] = {
        [0] = 0x2,
        [1] = 0x4,
        [2] = 0x18,
        [3] = 0x60,
        [4] = 0x60,
        [5] = 0x80,
        [6] = 0x80
    },
    [4] = {
        [0] = 0x2,
        [1] = 0x4,
        [2] = 0x18,
        [3] = 0x60,
        [4] = 0x60,
        [5] = 0x80,
        [6] = 0x80
    },
    [5] = {
        [0] = 0x2,
        [1] = 0x4,
        [2] = 0x18,
        [3] = 0x60,
        [4] = 0x60,
        [5] = 0x80,
        [6] = 0x80
    }
};

// 45398
void VisionSelectBeginTransitionToVision(void)
{
    if (!gVisionSelectInfo.startedTransitionToVision)
    {
        m4aSongNumStart(SE_KLONOA_WAHOO);
        gVisionSelectInfo.startedTransitionToVision = TRUE;
        gUnk_03004C20.sceneFrameCounter = 0;
    }
    else if (gUnk_03004C20.sceneFrameCounter > 30)
    {
        gCallbackQueue.current[1] = TransitionFromVisionSelectToLevel_FadeOut;
        gVisionSelectInfo.startedTransitionToVision = FALSE;
    }
}

// 453F0
void VisionSelectInit(void)
{
    // initialize vision select screen
    u16 i;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    m4aMPlayAllStop();
    if (gUnk_03004C20.world == 1)
    {
        gVisionSelectInfo.unk0_1 = 6;
    }
    else
    {
        gVisionSelectInfo.unk0_1 = 0;
    }
    gSceneSaveData->world = gUnk_03004C20.world;
    gSceneSaveData->level = gVisionSelectInfo.currentVision;
    WriteSaveFile(SAVE_DATA_TYPE_SCENE, SCENE_TYPE_VISION_SELECT);
    WriteSaveFile(SAVE_DATA_TYPE_FILE, 0);
    gVisionSelectInfo.unk0_0 = 1;
    
    for (i = 0; i < 8; i++)
    {
        if (!(gFileSaveData->levelInfo[gUnk_03004C20.world - 1][i] & LEVEL_INFO_BEATEN_FLAG))
        {
            gVisionSelectInfo.unk0_0 = 0;
        }
    }

    if ((gUnk_03004C20.world == 5) && !(gFileSaveData->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG))
    {
        gVisionSelectInfo.unk0_0 = 0;
    }

    // TODO: BGCNT_TXT or BGCNT_AFF size?
    REG_BG2CNT = 0x4000 | gVisionBgColorMode[(gUnk_03004C20.world - 1)][gUnk_03004C20.level][2] | BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(2) | BGCNT_MOSAIC;
    gBgInfo[2].hOfs = 0;
    gBgInfo[2].vOfs = 0;
    
    for (i = 0; i < 0x400; i++)
    {
        gBg2TilemapData[i] = gBgDataPtrs.pBufBg2Tilemap[(((gBgInfo[2].vOfs >> 3) + (i >> 5)) * gBgInfo[2].hLength) + (i & 0x1F) + (gBgInfo[2].hOfs >> 3)];
    }

    for (i = 1; i <= 0xC; i++)
    {
        gEntityInfo[i].visible = 0;
    }

    if (gVisionSelectInfo.currentVision == 0)
    {
        gVisionSelectInfo.currentVision = 1;
    }

    gVisionSelectInfo.unk2 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.currentVision - 1]][0];
    gVisionSelectInfo.alpha = 0x40;
    gBg2Alpha = -gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.currentVision - 1]][1];
    gVisionSelectInfo.moveDirection = 0;
    gVisionSelectInfo.unlockedVision = 0;

    for (i = 0; i < 7; i++)
    {
        if (gFileSaveData->levelInfo[gUnk_03004C20.world - 1][i] & LEVEL_INFO_BEATEN_FLAG)
        {
            gVisionSelectInfo.unk7_4 = i;
            gVisionSelectInfo.unlockedVision = VisionSelectGetUnlockedVision();
            if (gVisionSelectInfo.unlockedVision != 0)
            {
                break;
            }
        }
    }

    gBgInfo[1].hOfs = gBg2Alpha;
    gBgInfo[1].vOfs = 0x10;
    gCallbackQueue.current[1] = VisionSelectHandler;
    if ((gFileSaveData->levelInfo[gUnk_03004C20.world - 1][0] & LEVEL_INFO_DREAM_STONES_MASK) == LEVEL_INFO_DREAM_STONES_MASK)
    {
        gFileSaveData->levelInfo[gUnk_03004C20.world - 1][0] = 0;
    }

    gVisionSelectInfo.drawStage = 0x10;
    VisionSelectDrawVisionInfo();
    SetEntityAnimationInfoState(0, 0x22);
    VisionSelectUpdateRotationAndEntities();
    VisionSelectDrawVisionIcons();
    UpdateEntityAnimationInfoEntries();

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    REG_IE |= INTR_FLAG_HBLANK;
    REG_DISPSTAT |= DISPSTAT_HBLANK_INTR;
    gIntrTable.hBlank = HBlankIntr_VisionSelect;
}

// 45734
void VisionSelectHandler(void)
{
    // vision select screen updater
    if (gTransitioning == FALSE)
    {
        VisionSelectUpdateUnlockVisionSequence();
        VisionSelectInputAndMovement();
        VisionSelectUpdateRotationAndEntities();
        VisionSelectDrawVisionInfo();
    }
    UpdateEntityAnimationInfoEntries();
}

// 4575C
void VisionSelectCreateEntities(void)
{
    u8 i;

    gEntitySlotCount = 0xD;
    
    for (i = 0; gUnk_0811717C[gUnk_03004C20.world - 1][i][0] != 0xFF; i++)
    {
        EntityCreate(gEntitySlotCount, gUnk_0811717C[gUnk_03004C20.world - 1][i][3], gUnk_0811717C[gUnk_03004C20.world - 1][i][0], gUnk_0811717C[gUnk_03004C20.world - 1][i][1], gUnk_0811717C[gUnk_03004C20.world - 1][i][2], 1, 0, 0x1C, gUnk_0811717C[gUnk_03004C20.world - 1][i][4]);
        gEntityInfo[gEntitySlotCount].xPosBg2 = gUnk_0811717C[gUnk_03004C20.world - 1][i][0];
        gEntityInfo[gEntitySlotCount].yPosBg2 = gUnk_0811717C[gUnk_03004C20.world - 1][i][1];
        gEntitySlotCount += 1;
    }
}

// 45874
void VisionSelectInputAndMovement(void)
{
    u8 sp0;
    u32 textboxRequested;
    u32 visionGoingTo;
    s8 temp_r1;
    u32 i;
    u8 temp_r0;

    if (gCallbackQueue.current[3] == &sub_08048028)
    {
        return;
    }

    if (gVisionSelectInfo.moveDirection == 0)
    {
        if (!(gHeldKeys & (L_BUTTON | R_BUTTON)))
        {
            if (gVisionSelectInfo.alpha != 0x40)
            {
                if ((gVisionSelectInfo.alpha > 0x40) && (gVisionSelectInfo.alpha < 0xC0))
                {
                    gBg2Alpha -= 1;
                    gVisionSelectInfo.alpha -= 1;
                }
                else
                {
                    gBg2Alpha += 1;
                    gVisionSelectInfo.alpha += 1;
                }

                if (gVisionSelectInfo.alpha != 0x40)
                {
                    if ((gVisionSelectInfo.alpha > 0x40) && (gVisionSelectInfo.alpha < 0xC0))
                    {
                        gBg2Alpha -= 1;
                        gVisionSelectInfo.alpha -= 1;
                    }
                    else
                    {
                        gBg2Alpha += 1;
                        gVisionSelectInfo.alpha += 1;
                    }
                }

                gBgInfo[1].hOfs = gBg2Alpha;
                return;
            }
        }
        else
        {
            if (gHeldKeys & R_BUTTON)
            {
                gBg2Alpha += 1;
                gVisionSelectInfo.alpha += 1;
            }

            if (gHeldKeys & L_BUTTON)
            {
                gBg2Alpha -= 1;
                gVisionSelectInfo.alpha -= 1;
            }

            gBgInfo[1].hOfs = gBg2Alpha;
            return;
        }

        if (gNewKeys & START_BUTTON)
        {
            for (i = 0; i < 10; i++)
            {
                gCallbackQueue.previous[i] = gCallbackQueue.current[i];
            }
            gCallbackQueue.previousCount = gCallbackQueue.currentCount;

            gUnk_030034BC = 0;
            gUnk_03003410.unk4 = 1;
            gCallbackQueue.next[0] = PauseMenuScreenInit;
            gCallbackQueue.next[1] = VisionSelectWaitForNextFrame;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }
        else if (gNewKeys & A_BUTTON)
        {
            gBlendValue = 0;
            gUnk_03004C20.room = 0;
            gUnk_03004C20.level = gVisionSelectInfo.currentVision;
            SetEntityAnimationInfoState(0, 0x22);
            gCallbackQueue.current[1] = VisionSelectBeginTransitionToVision;
            gSceneSaveData->prevLives = gSceneSaveData->lives = gUnk_03005220.lives;

            if (gUnk_03004C20.world == 1)
            {
                textboxRequested = FALSE;
                if ((gUnk_03004C20.level == 1) && !(gFileSaveData->levelInfo[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] & LEVEL_INFO_BEATEN_FLAG))
                {
                    gTextBoxInfo.visionSelectTextBoxIdOffset = 1;
                    textboxRequested = TRUE;
                }
                else if ((gUnk_03004C20.level == 4) && !(gFileSaveData->levelInfo[0][3] & LEVEL_INFO_BEATEN_FLAG))
                {
                    gTextBoxInfo.visionSelectTextBoxIdOffset = 2;
                    textboxRequested = TRUE;
                }
                else if ((gUnk_03004C20.level == 6) && !(gFileSaveData->levelInfo[0][5] & LEVEL_INFO_BEATEN_FLAG))
                {
                    gTextBoxInfo.visionSelectTextBoxIdOffset = 5;
                    textboxRequested = TRUE;
                }

                if (textboxRequested)
                {
                    for (i = 0; i < 10; i++)
                    {
                        gCallbackQueue.previous[i] = gCallbackQueue.current[i];
                    }
                    gCallbackQueue.previousCount = gCallbackQueue.currentCount;

                    gDisplayBackup.blendValue = gBlendValue;
                    gDisplayBackup.bldCnt = REG_BLDCNT;
                    gDisplayBackup.bg0Cnt = REG_BG0CNT;
                    gDisplayBackup.bg1Cnt = REG_BG1CNT;
                    gDisplayBackup.bg2Cnt = REG_BG2CNT;
                    gDisplayBackup.bg3Cnt = REG_BG3CNT;
                    gDisplayBackup.sceneFrameCounter = gUnk_03004C20.sceneFrameCounter;

                    gUnk_030034BC = 0;
                    gTextBoxInfo.stage = TEXT_BOX_INFO_STAGE_REQUESTED;
                    gCallbackQueue.next[0] = TextBoxInit;
                    gCallbackQueue.next[1] = VisionSelectWaitForNextFrame;
                    gCallbackQueue.next[2] = NULL + 1;
                    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                    gCallbackQueue.nextCount = 3;
                    return;
                }
            }
        }
        else if ((gHeldKeys & DPAD_RIGHT) && (gVisionSelectInfo.drawStage == 0))
        {
            switch (gVisionSelectInfo.currentVision)
            {
                case 1:
                    visionGoingTo = 2;
                    break;

                case 2:
                    visionGoingTo = 3;
                    break;

                case 3:
                    visionGoingTo = 4;
                    break;

                case 4:
                    visionGoingTo = 5;
                    break;

                case 5:
                    visionGoingTo = 6;
                    break;

                case 6:
                    visionGoingTo = 7;
                    break;

                case 7:
                    visionGoingTo = 8;
                    break;

                case 8:
                    visionGoingTo = 1;
                    break;

                default:
                    visionGoingTo = 1;
                    break;
            }

            if (gFileSaveData->levelInfo[gUnk_03004C20.world - 1][visionGoingTo - 1] != LEVEL_INFO_DREAM_STONES_MASK)
            {
                m4aSongNumStart(SE_CURSOR_MOVE);
                gUnk_03004C20.sceneFrameCounter = 0;
                gVisionSelectInfo.moveDirection = 1;
                gVisionSelectInfo.visionLeftFrom = gVisionSelectInfo.currentVision;
                gVisionSelectInfo.visionGoingTo = visionGoingTo;
                gVisionSelectInfo.drawStage = 0x20;
                SetEntityAnimationInfoState(0, 1);
            }

            gEntityInfo[0].hvFlip = 0;
        }
        else if ((gHeldKeys & DPAD_LEFT))
        {
            if (gVisionSelectInfo.drawStage == 0)
            {
                switch (gVisionSelectInfo.currentVision)
                {
                    case 1:
                        visionGoingTo = 8;
                        break;
                    
                    case 2:
                        visionGoingTo = 1;
                        break;

                    case 3:
                        visionGoingTo = 2;
                        break;

                    case 4:
                        visionGoingTo = 3;
                        break;

                    case 5:
                        visionGoingTo = 4;
                        break;

                    case 6:
                        visionGoingTo = 5;
                        break;

                    case 7:
                        visionGoingTo = 6;
                        break;

                    case 8:
                        visionGoingTo = 7;
                        break;

                    default:
                        visionGoingTo = 1;
                        break;
                }

                if (gFileSaveData->levelInfo[gUnk_03004C20.world - 1][visionGoingTo - 1] != LEVEL_INFO_DREAM_STONES_MASK)
                {
                    m4aSongNumStart(SE_CURSOR_MOVE);
                    gUnk_03004C20.sceneFrameCounter = 0;
                    gVisionSelectInfo.moveDirection = 2;
                    gVisionSelectInfo.visionLeftFrom = gVisionSelectInfo.currentVision;
                    gVisionSelectInfo.visionGoingTo = visionGoingTo;
                    gVisionSelectInfo.drawStage = 0x20;
                    SetEntityAnimationInfoState(0, 1);
                }

                gEntityInfo[0].hvFlip = 1;
            }
        }
    }
    else
    {
        if (gVisionSelectInfo.visionLeftFrom == 1 && gVisionSelectInfo.visionGoingTo == 8)
        {
            sp0 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][7]][1];
            temp_r0 = Abs((u8)-gBg2Alpha) + 1;
        }
        else if (gVisionSelectInfo.visionLeftFrom == 8 && gVisionSelectInfo.visionGoingTo == 1)
        {
            sp0 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][7]][1];
            temp_r0 = Abs((u8)-gBg2Alpha - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][1]);
        }
        else
        {
            sp0 = Abs(gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionGoingTo - 1]][1] - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][1]);
            temp_r0 = Abs((u8)-gBg2Alpha - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][1]);
        }

        temp_r1 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionGoingTo - 1]][0] - gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][0];
        if ((temp_r1 != 0) && (temp_r0 != 0))
        {
            gVisionSelectInfo.unk2 = gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionLeftFrom - 1]][0] + ((temp_r1 * temp_r0) / sp0);
        }

        if (gVisionSelectInfo.moveDirection & 2)
        {
            gBg2Alpha -= 1;
        }
        else
        {
            gBg2Alpha += 1;
        }

        if ((sp0 - temp_r0) == 0xA)
        {
            gVisionSelectInfo.drawStage = 0x30;
        }

        if ((u8)-gBg2Alpha == gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.visionGoingTo - 1]][1])
        {
            gVisionSelectInfo.moveDirection = 0;
            gVisionSelectInfo.currentVision = gVisionSelectInfo.visionGoingTo;
            SetEntityAnimationInfoState(0, 0);
        }
    }

    gBgInfo[1].hOfs = gBg2Alpha;
}

// 45F68
void VisionSelectUpdateRotationAndEntities(void)
{
    s16 pd;
    s16 pc;
    s16 pa;
    s16 pb;
    u32 i;
    u8 alpha;

    gEntityInfo[0].affineEnable = 1;
    gEntityInfo[0].affineHFlip_matrixNum = 0;

    pa = MultiplyQ8(COS(0), ReciprocalQ8(0xA0));
    pb = MultiplyQ8(SIN(0), ReciprocalQ8(0));
    pc = MultiplyQ8(-SIN(0), ReciprocalQ8(0));
    pd = MultiplyQ8(COS(0), ReciprocalQ8(0xA0));

    if (gEntityInfo[0].hvFlip == 0)
    {
        gOamAffineBuffer->pa = pa;
    }
    else
    {
        gOamAffineBuffer->pa = -pa;
    }
    gOamAffineBuffer->pb = pb;
    gOamAffineBuffer->pc = pc;
    gOamAffineBuffer->pd = pd;

    gBg2PA = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PB = MultiplyQ8(SIN(gBg2Alpha), ReciprocalQ8(gBg2XMag));
    gBg2PC = MultiplyQ8(-SIN(gBg2Alpha), ReciprocalQ8(gBg2YMag));
    gBg2PD = MultiplyQ8(COS(gBg2Alpha), ReciprocalQ8(gBg2YMag));

    gBg2X = (0x7800 - (gBg2PA * 0x78)) - (gBg2PB * 0x78);
    gBg2Y = (0x7800 - (gBg2PC * 0x78)) - (gBg2PD * 0x78);

    gEntityInfo[0].xPosScreen = ((COS(gVisionSelectInfo.alpha) * gVisionSelectInfo.unk2) >> 8) + 0x78;
    gEntityInfo[0].yPosScreen = (((SIN(gVisionSelectInfo.alpha) * gVisionSelectInfo.unk2) >> 8) / 3) + 0x6E;
    gEntityInfo[0].priority = 1;

    for (i = gVisionSelectInfo.unk0_1 + 0xD; i < gEntitySlotCount; i++)
    {
        alpha = gBg2Alpha + 0x40 + gEntityInfo[i].yPosBg2;
        gEntityInfo[i].xPosScreen = ((COS(alpha) * gEntityInfo[i].xPosBg2) >> 8) + 0x78;
        gEntityInfo[i].yPosScreen = (((SIN(alpha) * gEntityInfo[i].xPosBg2) >> 8) / 3) + 0x66;
    }

    sub_08046A64(gEntitySlotCount - (gVisionSelectInfo.unk0_1 + 0xD));

    for (i = gVisionSelectInfo.unk0_1 + 0xD; i < gEntitySlotCount; i++)
    {
        if ((gEntityInfo[i].id <= 0x50) || (gEntityInfo[i].id >= 0x54))
        {
            gEntityInfo[i].visible = 0;
        }
        else if ((gVisionSelectInfo.unk0_0 != 0) && (gEntityInfo[i].id == 0x53))
        {
            gEntityInfo[i].visible = 0;
        }
        else
        {
            gEntityInfo[i].visible = 1;
            gEntityInfo[i].yPosScreen -= gEntityInfo[i].unk8.split.unk8;
        }
    }

    gEntityInfo[0].yPosScreen -= 0xA;
}

// 46288
void VisionSelectDrawVisionInfo(void)
{
    u32 row;
    u8 nbrCollectedStones;
    u16 *bg0TilemapBuf;

    bg0TilemapBuf = &gBgTilemapBufs[0][0];

    if (gVisionSelectInfo.drawStage == 0)
    {
        return;
    }

    if (gVisionSelectInfo.drawStageTimer != 0)
    {
        gVisionSelectInfo.drawStageTimer -= 1;
    }

    switch (gVisionSelectInfo.drawStage & 0xF0)
    {
        case 0x30:
            switch (gVisionSelectInfo.drawStage & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x2C0], &bg0TilemapBuf[0x243], 0x24);
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x2E0], &bg0TilemapBuf[0x263], 0x24);
                    gVisionSelectInfo.drawStageTimer = 5;
                    gVisionSelectInfo.drawStage += 1;
                    break;

                case 1:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x300], &bg0TilemapBuf[0x243], 0x24);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x320], &bg0TilemapBuf[0x263], 0x24);
                        gVisionSelectInfo.drawStageTimer = 5;
                        gVisionSelectInfo.drawStage += 1;
                    }
                    break;

                case 2:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        gVisionSelectInfo.drawStage = 0x10;
                    }
                    break;
            }
            break;

        case 0x20:
            switch (gVisionSelectInfo.drawStage & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x300], &bg0TilemapBuf[0x243], 0x24);
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x320], &bg0TilemapBuf[0x263], 0x24)
                    gVisionSelectInfo.drawStageTimer = 5;
                    gVisionSelectInfo.drawStage += 1;
                    break;

                case 1:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x2C0], &bg0TilemapBuf[0x243], 0x24);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x2E0], &bg0TilemapBuf[0x263], 0x24);
                        gVisionSelectInfo.drawStageTimer = 5;
                        gVisionSelectInfo.drawStage += 1;
                    }
                    break;

                case 2:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x280], &bg0TilemapBuf[0x243], 0x24);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x2A0], &bg0TilemapBuf[0x263], 0x24);
                        gVisionSelectInfo.drawStage = 0;
                    }
                    break;
            }
            break;

        case 0x10:
            switch (gVisionSelectInfo.drawStage & 0xF)
            {
                case 0:
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x340], &bg0TilemapBuf[0x243], 0x24);
                    DmaCopy16Wait(3, &bg0TilemapBuf[0x360], &bg0TilemapBuf[0x263], 0x24);
                    if (gVisionSelectInfo.currentVision == 8)
                    {
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x38B], &bg0TilemapBuf[0x248], 0x10);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x3AB], &bg0TilemapBuf[0x268], 0x10);
                    }
                    else
                    {
                        nbrCollectedStones = gFileSaveData->levelInfo[gUnk_03004C20.world - 1][gVisionSelectInfo.currentVision - 1] & LEVEL_INFO_DREAM_STONES_MASK;
                        if (nbrCollectedStones == LEVEL_INFO_DREAM_STONES_MASK)
                        {
                            nbrCollectedStones = 0;
                        }
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x385], &bg0TilemapBuf[0x244], 0xC);
                        DmaCopy16Wait(3, &bg0TilemapBuf[0x3A5], &bg0TilemapBuf[0x264], 0xC);

                        for (row = 0; row < 2; row++)
                        {
                            // TODO: ugly pointer arithmetic required to match, likely used macros
                            bg0TilemapBuf[0x24A + row * 0x20] = *(bg0TilemapBuf + 0x13 + gUnk_03004C20.world + (0x16 + row) * 0x20);
                            bg0TilemapBuf[0x24B + row * 0x20] = bg0TilemapBuf[0x2DE + row * 0x20];
                            bg0TilemapBuf[0x24C + row * 0x20] = *(bg0TilemapBuf + 0x13 + gVisionSelectInfo.currentVision + (0x16 + row) * 0x20);
                            bg0TilemapBuf[0x24D + row * 0x20] = bg0TilemapBuf[0x2DF + row * 0x20];

                            if ((gVisionSelectInfo.currentVision == 0x4) || (gVisionSelectInfo.currentVision == 0x6))
                            {
                                if ((nbrCollectedStones / 100) != 0)
                                {
                                    bg0TilemapBuf[0x24E + row * 0x20] = *(bg0TilemapBuf + 0x13 + (nbrCollectedStones / 100) + (0x16 + row) * 0x20);
                                    bg0TilemapBuf[0x24F + row * 0x20] = *(bg0TilemapBuf + 0x13 + ((nbrCollectedStones / 10) % 10) + (0x16 + row) * 0x20);
                                }
                                else if (((nbrCollectedStones / 10) % 10) != 0)
                                {
                                    bg0TilemapBuf[0x24F + row * 0x20] = *(bg0TilemapBuf + 0x13 + ((nbrCollectedStones / 10) % 10) + (0x16 + row) * 0x20);
                                }

                                bg0TilemapBuf[0x250 + row * 0x20] = *(bg0TilemapBuf + 0x13 + (nbrCollectedStones % 10) + (0x16 + row) * 0x20);
                                bg0TilemapBuf[0x251 + row * 0x20] = bg0TilemapBuf[0x382 + row * 0x20];
                                bg0TilemapBuf[0x252 + row * 0x20] = bg0TilemapBuf[0x383 + row * 0x20];
                                bg0TilemapBuf[0x253 + row * 0x20] = bg0TilemapBuf[0x384 + row * 0x20];
                            }
                            else
                            {
                                if (((nbrCollectedStones / 10) % 10) != 0)
                                {
                                    bg0TilemapBuf[0x24F + row * 0x20] = *(bg0TilemapBuf + 0x13 + ((nbrCollectedStones / 10) % 10) + (0x16 + row) * 0x20);
                                }

                                bg0TilemapBuf[0x250 + row * 0x20] = *(bg0TilemapBuf + 0x13 + (nbrCollectedStones % 10) + (0x16 + row) * 0x20);
                                bg0TilemapBuf[0x251 + row * 0x20] = bg0TilemapBuf[0x380 + row * 0x20];
                                bg0TilemapBuf[0x252 + row * 0x20] = bg0TilemapBuf[0x381 + row * 0x20];
                            }
                        }
                    }

                    gVisionSelectInfo.drawStageTimer = 4;
                    gVisionSelectInfo.drawStage += 1;
                    break;

                case 1:
                    if (gVisionSelectInfo.drawStageTimer == 0)
                    {
                        gVisionSelectInfo.drawStage = 0;
                    }
                    break;
            }
            break;
    }
}

// 467F4
void VisionSelectDrawVisionIcons(void)
{
    u8 state;
    u8 level;

    for (level = 0; level < 8; level++)
    {
        if (gFileSaveData->levelInfo[gUnk_03004C20.world - 1][level] == LEVEL_INFO_DREAM_STONES_MASK)
        {
            // If the level has not been unlocked, don't draw it
            state = 0;
        }
        else
        {
            if (level == 7)
            {
                // Draw boss stage icon
                state = 5;
            }
            else if ((level == 3) || (level == 5))
            {
                // Draw action stage icon
                state = 3;
            }
            else
            {
                // Draw puzzle stage icon
                state = 1;
            }
            if (gFileSaveData->levelInfo[gUnk_03004C20.world - 1][level] & LEVEL_INFO_BEATEN_FLAG)
            {
                // Set icon as beaten
                state += 1;
                if ((level == 7) && (gUnk_03004C20.world == 5) && !(gFileSaveData->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG))
                {
                    state -= 1;
                }
            }
        }

        SetEntityAnimationInfoState(gUnk_0811762C[gUnk_03004C20.world - 1][level] + 0xD, state);
    }
}

// 468B0
void VisionSelectUpdateUnlockVisionSequence(void)
{
    if (gVisionSelectInfo.unlockedVision == 0)
    {
        return;
    }

    if (gVisionSelectInfo.visionUnlockTimer != 0)
    {
        gVisionSelectInfo.visionUnlockTimer -= 1;
    }

    if (gBg2Alpha == (u8)-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.unlockedVision - 1]][1])
    {
        gHeldKeys = L_BUTTON | R_BUTTON;
        if (gVisionSelectInfo.visionUnlockTimer == 0)
        {
            gVisionSelectInfo.visionUnlockTimer = 0x80;
        }

        if (gVisionSelectInfo.visionUnlockTimer == 0x40)
        {
            m4aSongNumStart(SE_LEVEL_UNLOCKED);
            gFileSaveData->levelInfo[gUnk_03004C20.world - 1][gVisionSelectInfo.unlockedVision - 1] &= LEVEL_INFO_BEATEN_FLAG;
            VisionSelectDrawVisionIcons();
        }

        if (gVisionSelectInfo.visionUnlockTimer == 1)
        {
            gVisionSelectInfo.unlockedVision = VisionSelectGetUnlockedVision();
        }
    }
    else
    {
        if ((s8)(-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.unlockedVision - 1]][1] - gBg2Alpha) < 0)
        {
            gHeldKeys = L_BUTTON;
        }
        else if ((s8)(-gUnk_0811717C[gUnk_03004C20.world - 1][gUnk_0811762C[gUnk_03004C20.world - 1][gVisionSelectInfo.unlockedVision - 1]][1] - gBg2Alpha) > 0)
        {
            gHeldKeys = R_BUTTON;
        }
    }
}

// 469FC
u8 VisionSelectGetUnlockedVision(void)
{
    u8 level;

    for (level = 0; level < 8; level++)
    {
        if ((((gUnk_0811765C[gUnk_03004C20.world][gVisionSelectInfo.unk7_4] >> level) & 1) != 0) && (gFileSaveData->levelInfo[gUnk_03004C20.world - 1][level] == LEVEL_INFO_DREAM_STONES_MASK))
        {
            return level + 1;
        }
    }
    return 0;
}

// 46A64
void sub_08046A64(u8 arg0)
{
    // Seems to switch around entities
    struct EntityInfo *var_sl;
    u8 var_r4;
    u8 var_r1;
    u8 var_r3;
    struct EntityInfo subroutine_arg0;

    var_sl = &gEntityInfo[0xD + gVisionSelectInfo.unk0_1];

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
