#include "global.h"
#include "text_box.h"
#include "code_08003D58.h"
#include "decompress.h"
#include "heap.h"
#include "main.h"
#include "pause_menu.h"
#include "wait_for_next_frame.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern const u16 gUnk_0811769C[0x20][4];

extern const u32 *gUnk_0818BA3C[0x20];
extern const u32 *gUnk_0818BABC[0x20];
extern const u32 *gUnk_0818BB3C[0x20];

extern u32 gUnk_082F3B2C[];

// 47ABC
void sub_08047ABC(void)
{
    // Unused, likely meant to fade in to the text box
    if (gTextBoxInfo.stage != TEXT_BOX_INFO_STAGE_DISPLAYING)
    {
        gTextBoxInfo.stage = TEXT_BOX_INFO_STAGE_DISPLAYING;
        REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
        REG_WININ &= ~WININ_WIN0_CLR;
    }

    if (gBlendValue > 8)
    {
        gCallbackQueue.current[0] = TextBoxInit;
        return;
    }

    if ((gUnk_03004C20.globalFrameCounter % 4) == 0)
    {
        gBlendValue += 1;
    }
}

/*
    Text boxes:
    00: "Use a wind bullet to catch enemies, and use them to double jump."
    01: "Boxes come in handy. Klonoa can climb on or throw them. They can be used over and over."
    02: "Each door has a key with a matching shape. Use a [O] shaped key on a [O] door, a [Tri] shaped key on a [Tri] door"
    03: "Stuck? Don't worry, just press START and select "Retry" from the menu."
    04: "Those red things are Goomis. Klonoa can grab hold of them with a wind bullet."
    05: "Grab a box to avoid being carried away, or place it over a vent to stop the wind."
    06: "Place a box on a Spiker to make it fall slowly. Klonoa can then ride it."
    07: "Moving platforms will cut off the wind, however grated platforms will not."
    08: "Grab hold of a Teton to float for a short period of time."
    09: "To open the door, hit the switch with a wind bullet. Hitting it with a block or an enemy also works."
    0A: "The switch will reset itself after a set period of time."
    0B: "The door can be opened by activating three switches."
    0C: "Stand on the switch to keep the door open. A passing enemy or a box placed on top also works."
    0D: "The room next door revolves. Activate the switch to make it revolve and Klonoa can go to difference places."
    0E: "Place a box or stand on one side, to raise the other."
    0F: "Klonoa can pick up a Boomie over and over, but it'll explode when the timer reaches zero."
    10: "Use a Boomie to clear away obstacles."
    11: "An arrow shows which way a Boomie will explode. The explosion goes through walls too."
    12: "Activate the switch to make the box larger or smaller."
    13: "Large blocks will stop the wind."
    14: "Use the switch to raise or lower the water level. Remember, Klonoa can't swim!"
    15: "Klonoa can ride on boxes while they float."
    16: "Use boxes to get through waterfalls. But remember, Klonoa may need one to get back."
    17: "Arrows show which way a thrown object will travel. Use a wind bullet to change the direction of a blue arrow."
    18: "Use the arrows to ride a box. Changing an arrow's direction is still possible while riding."
    19: "This box can be attached to special walls and boxes. Jump while hanging from it, to climb on top."
    1A: "This is a warp door. It will warp Klonoa to another door with the same number."
    1B: "OK, let's begin. Collect all the [star] and head towards the exit. Stand before a sign and press [up] on the [dpad] Control Pad."
    1C: "Take a break from the puzzles and go for a fun board ride. Keep an eye out for signs!"
    1D: "An extra stage has been unlocked."
    1E: "Klonoa can't swim. Touching water will hurt him and he can't go under the falls."
    1F: "Be careful! If Klonoa falls behind or falls down he will lose a life. Hurry, but don't be careless."
*/

// 47B1C
void TextBoxInit(void)
{
    // Called when text box appears
    u8 textBoxId;
    void *sp4;
    u16 *sp8;
    s32 i;
    s32 j;

    textBoxId = 0;

    m4aMPlayAllStop();
    m4aSoundVSyncOff();

    REG_BLDCNT = BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
    gBlendValue = 9;
    REG_BLDALPHA = BLDALPHA_BLEND2(gBlendValue, 0x7);
    REG_BLDY = gBlendValue;
    REG_WININ = WININ_WIN0_BG0 | WININ_WIN1_BG0 | WININ_WIN1_BG1 | WININ_WIN1_BG2 | WININ_WIN1_OBJ | WININ_WIN1_CLR;
    REG_WINOUT = WINOUT_WIN01_BG1 | WINOUT_WIN01_BG2 | WINOUT_WIN01_BG3 | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;
    REG_WIN1H = gTextBoxInfo.win1H = WIN_RANGE(DISPLAY_WIDTH_CENTER, DISPLAY_WIDTH_CENTER);
    REG_WIN1V = gTextBoxInfo.win1V = WIN_RANGE(DISPLAY_HEIGHT_CENTER - 4, DISPLAY_HEIGHT_CENTER - 4);
    REG_DISPCNT |= DISPCNT_WIN1_ON;

    for (i = 0; i < gEntitySlotCount; i++)
    {
        gEntityInfo[i].priority += 1;
    }

    if (gTextBoxInfo.visionSelectTextBoxIdOffset == 0)
    {
        EntityCommonTransferToOamBuffer();
        VBlankIntrWait();
    }

    REG_BG0CNT &= ~BGCNT_PRIORITY_MASK;
    REG_BG0CNT += 0;
    REG_BG1CNT += 1;
    REG_BG2CNT += 1;
    REG_BG3CNT += 1;

    if (gTextBoxInfo.visionSelectTextBoxIdOffset == 0)
    {
        for (i = 0; i < 0x20; i++)
        {
            if ((gUnk_03004C20.world == gUnk_0811769C[i][0]) && (gUnk_03004C20.level == gUnk_0811769C[i][1]) && (((gEntityInfo[0].yPosBg2 - 0x10) >> 3) == gUnk_0811769C[i][3]) && (((gEntityInfo[0].xPosBg2 + 8) >> 3) >= gUnk_0811769C[i][2]) && (((gEntityInfo[0].xPosBg2 - 8) >> 3) <= (gUnk_0811769C[i][2] + 3)))
            {
                textBoxId = i;
                break;
            }
        }
    }
    else
    {
        textBoxId = gTextBoxInfo.visionSelectTextBoxIdOffset + 0x1A;
    }

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    gBgDataPtrs.pBufBg3Tiles = thunk_HeapAlloc(gUnk_082F3B2C[0] & 0x7FFFFFFF, 0);
    gBgDataPtrs.pBufBg3Tilemap = thunk_HeapAlloc(*gUnk_0818BA3C[textBoxId] & 0x7FFFFFFF, 0);
    Decompress(gBgDataPtrs.pBufBg3Tiles, &gUnk_082F3B2C);
    Decompress(gBgDataPtrs.pBufBg3Tilemap, (void*)gUnk_0818BA3C[textBoxId]);

    for (i = 0, j = 0; i < 0x21C; j++, i++)
    {
        if (((i % 30) == 0) && (i != 0))
        {
            j += 2;
        }
        gBgTilemapBufs[0][j] = gBgDataPtrs.pBufBg3Tilemap[i + 2] + gUnk_03000800;
    }

    if (textBoxId != 0x1D)
    {
        sp4 = thunk_HeapAlloc(*gUnk_0818BB3C[textBoxId] & 0x7FFFFFFF, 0);
        sp8 = thunk_HeapAlloc(*gUnk_0818BABC[textBoxId] & 0x7FFFFFFF, 0);
        Decompress(sp4, (void*)gUnk_0818BB3C[textBoxId]);
        Decompress(sp8, (void*)gUnk_0818BABC[textBoxId]);

        for (i = 0, j = 0; i < 0x40; j++, i++)
        {
            if (((i % 0x10) == 0) && (i != 0))
            {
                j += 0x10;
            }
            gBgTilemapBufs[0][0x1A8 + j] = sp8[i + 2] + gUnk_03000800 + 0x132;
        }
    }

    DmaCopy16Wait(3, gBgDataPtrs.pBufBg3Tiles + 4, BG_VRAM + (gUnk_03000800 * 0x20), 0x2640);
    if (textBoxId != 0x1D)
    {
        DmaCopy16Wait(3, sp4 + 4, VRAM + 0x2640 + (gUnk_03000800 * 0x20), (*gUnk_0818BB3C[textBoxId] & 0x7FFFFFFF) - 4);
    }

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
    m4aSongNumStart(SE_STAR_COLLECT_TEXT_BOX_OPEN);

    thunk_HeapFree(sp8);
    thunk_HeapFree(sp4);

    gCallbackQueue.next[0] = InputHandler_Normal;
    gCallbackQueue.next[1] = TextBoxHandler;
    gCallbackQueue.next[3] = NULL + 1;
    if (gTextBoxInfo.visionSelectTextBoxIdOffset == 0)
    {
        gCallbackQueue.next[2] = CommonWaitForNextFrame;
    }
    else
    {
        gCallbackQueue.next[2] = VisionSelectWaitForNextFrame;
    }
    gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    gCallbackQueue.nextCount = 4;
}

// 47EC8
void TextBoxHandler(void)
{
    // Text box, growing/shrinking effect
    u32 win1VVelocity;
    u32 win1HVelocity;

    win1HVelocity = WIN_RANGE(4, (u8)-5); // 0x4FB
    win1VVelocity = WIN_RANGE(2, (u8)-3); // 0x2FD

    if (gTextBoxInfo.stage == TEXT_BOX_INFO_STAGE_REQUESTED)
    {
        if (gTextBoxInfo.win1H == WIN_RANGE(0, DISPLAY_WIDTH))
        {
            gTextBoxInfo.stage = TEXT_BOX_INFO_STAGE_DISPLAYING;
            return;
        }

        gTextBoxInfo.win1H -= win1HVelocity;
        gTextBoxInfo.win1V -= win1VVelocity;
        REG_WIN1H = gTextBoxInfo.win1H;
        REG_WIN1V = gTextBoxInfo.win1V;
    }

    if (gTextBoxInfo.stage == TEXT_BOX_INFO_STAGE_CLOSING)
    {
        if (gTextBoxInfo.win1H == WIN_RANGE(DISPLAY_WIDTH_CENTER, DISPLAY_WIDTH_CENTER))
        {
            PauseMenuScreenRestoreGfx();
            m4aSoundVSyncOn();
            m4aMPlayAllContinue();
            gCallbackQueue.current[1] = TextBoxRestoreGameplay;
            REG_BLDCNT = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN;
            return;
        }

        gTextBoxInfo.win1H += win1HVelocity;
        gTextBoxInfo.win1V += win1VVelocity;
        REG_WIN1H = gTextBoxInfo.win1H;
        REG_WIN1V = gTextBoxInfo.win1V;
    }

    if ((gNewKeys & BUTTON_MASK) && (gTextBoxInfo.stage == TEXT_BOX_INFO_STAGE_DISPLAYING))
    {
        gTextBoxInfo.stage = TEXT_BOX_INFO_STAGE_CLOSING;
    }
}

// 47F80
void TextBoxRestoreGameplay(void)
{
    // Text box, fade back to gameplay
    u32 i;

    if (gBlendValue == 0)
    {
        REG_WININ |= WININ_WIN0_CLR;
        gBlendValue = gDisplayBackup.blendValue;
        REG_BLDCNT = gDisplayBackup.bldCnt;
        REG_BG0CNT = gDisplayBackup.bg0Cnt;
        REG_BG1CNT = gDisplayBackup.bg1Cnt;
        REG_BG2CNT = gDisplayBackup.bg2Cnt;
        REG_BG3CNT = gDisplayBackup.bg3Cnt;
        gUnk_03004C20.sceneFrameCounter = gDisplayBackup.sceneFrameCounter;
        
        for (i = 0; i < 10; i++)
        {
            gCallbackQueue.next[i] = gCallbackQueue.previous[i];
        }
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = gCallbackQueue.previousCount;
        return;
    }

    REG_WININ = WININ_WIN0_BG0;
    REG_WINOUT = WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR;
    if ((gUnk_03004C20.globalFrameCounter % 4) == 0)
    {
        gBlendValue -= 1;
    }
}

// 48028
void sub_08048028(void)
{
    // Called on transition to vision select
    u8 nbrExStagesAllStones;
    u32 removed;
    u32 world;
    u32 j;
    u32 i;
    u32 level;
    u8 nbrStagesBeaten;
    u8 nbrActionStagesAllStones;
    u8 nbrPuzzleStagesAllStones;

    if (gTransitioning == TRUE)
    {
        return;
    }

    gNewKeys = 0;

    if (gFileSaveData->levelInfo[5][7] & LEVEL_INFO_BEATEN_FLAG)
    {
        nbrActionStagesAllStones = 0;
        nbrPuzzleStagesAllStones = 0;
        nbrStagesBeaten = 0;
        nbrExStagesAllStones = 0;

        for (world = 0; world < 5; world++)
        {
            for (level = 0; level < 7; level++)
            {
                if (((level == 3) || (level == 5)) && ((gFileSaveData->levelInfo[world][level] & LEVEL_INFO_DREAM_STONES_MASK) == 100))
                {
                    nbrActionStagesAllStones += 1;
                }
                else if ((level != 7) && ((gFileSaveData->levelInfo[world][level] & LEVEL_INFO_DREAM_STONES_MASK) == 30))
                {
                    nbrPuzzleStagesAllStones += 1;
                }

                if (gFileSaveData->levelInfo[world][level] & LEVEL_INFO_BEATEN_FLAG)
                {
                    nbrStagesBeaten += 1;
                }
            }
        }
    
        if ((gFileSaveData->levelInfo[5][0] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            nbrExStagesAllStones += 1;
        }
    
        if ((gFileSaveData->levelInfo[5][1] & LEVEL_INFO_DREAM_STONES_MASK) == 30)
        {
            nbrExStagesAllStones += 1;
        }

        // Unlock EX-1 when 35 stages are beaten
        if (!(gFileSaveData->levelInfo[5][0] & LEVEL_INFO_BEATEN_FLAG) && (nbrStagesBeaten == 35))
        {
            gFileSaveData->levelInfo[5][0] |= LEVEL_INFO_BEATEN_FLAG;
    
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

            gTextBoxInfo.stage = TEXT_BOX_INFO_STAGE_REQUESTED;
            gTextBoxInfo.visionSelectTextBoxIdOffset = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = TextBoxInit;
            gCallbackQueue.next[1] = VisionSelectWaitForNextFrame;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }

        // Unlock EX-2 when 25 puzzle and action stages are beaten with all stones collected
        if (!(gFileSaveData->levelInfo[5][1] & LEVEL_INFO_BEATEN_FLAG) && ((nbrPuzzleStagesAllStones + nbrActionStagesAllStones) >= 25))
        {
            gFileSaveData->levelInfo[5][1] |= LEVEL_INFO_BEATEN_FLAG;
    
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

            gTextBoxInfo.stage = TEXT_BOX_INFO_STAGE_REQUESTED;
            gTextBoxInfo.visionSelectTextBoxIdOffset = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = TextBoxInit;
            gCallbackQueue.next[1] = VisionSelectWaitForNextFrame;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }

        // Unlock EX-3 when all stages are beaten with all stones collected
        if (!(gFileSaveData->levelInfo[5][2] & LEVEL_INFO_BEATEN_FLAG) && ((nbrExStagesAllStones + nbrActionStagesAllStones + nbrPuzzleStagesAllStones) == 37))
        {
            gFileSaveData->levelInfo[5][2] |= LEVEL_INFO_BEATEN_FLAG;
    
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

            gTextBoxInfo.stage = TEXT_BOX_INFO_STAGE_REQUESTED;
            gTextBoxInfo.visionSelectTextBoxIdOffset = 3;
            gBlendValue = 0;

            gCallbackQueue.next[0] = TextBoxInit;
            gCallbackQueue.next[1] = VisionSelectWaitForNextFrame;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
            return;
        }
    }

    // remove sub_08048028 from callback queue
    removed = 0;
    for (j = 0; j < (gCallbackQueue.currentCount - 1); j++)
    {
        if ((gCallbackQueue.current[j] == sub_08048028) || (removed == 1))
        {
            gCallbackQueue.next[j] = gCallbackQueue.current[j + 1];
            removed = 1;
        }
        else
        {
            gCallbackQueue.next[j] = gCallbackQueue.current[j];
        }
    }
    if (removed == 1)
    {
        gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    }
}
