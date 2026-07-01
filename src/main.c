#include "global.h"
#include "main.h"
#include "code_0800BFF4.h"
#include "code_080240F4.h"
#include "eeprom.h"
#include "heap.h"
#include "interrupts.h"
#include "rand.h"
#include "structs/variables.h"

extern u8 gUnk_080D9150[][100]; // value pairs: input, input timer

extern void *gUnk_0818B8A8[];
extern struct Unk_0300466C *gUnk_0818B8E0[6][9];

extern void IntrMain(void);

extern void sub_080477A8();
extern void sub_08048768();

#define DELETE_SAVE_DATA_KEYS (L_BUTTON | R_BUTTON | DPAD_RIGHT | B_BUTTON | A_BUTTON)

// 470
void AgbMain(void)
{
    u32 i;
    void *pIntrMainBuf;

    DmaFill32(3, 0, EWRAM_START, EWRAM_END - EWRAM_START);
    DmaFill32(3, 0, IWRAM_START, IWRAM_END - IWRAM_START - 0x200);

    gIntrTable.vBlank = sub_080009D8;
    gIntrTable.hBlank = sub_08000FCC;
    gIntrTable.vCount = InterruptHandler_Normal;
    gIntrTable.timer0 = InterruptHandler_Normal;
    gIntrTable.timer1 = InterruptHandler_Normal;
    gIntrTable.timer2 = InterruptHandler_Normal;
    gIntrTable.timer3 = InterruptHandler_Normal;
    gIntrTable.serial = InterruptHandler_Normal;
    gIntrTable.dma0 = InterruptHandler_Normal;
    gIntrTable.dma1 = InterruptHandler_Normal;
    gIntrTable.dma2 = InterruptHandler_Normal;
    gIntrTable.dma3 = InterruptHandler_Normal;
    gIntrTable.keypad = InterruptHandler_Normal;
    gIntrTable.gamePak = InterruptHandler_Normal;

    thunk_HeapInit();
    pIntrMainBuf = thunk_HeapAlloc(0x200, 2);
    DmaCopy32(3, &IntrMain, pIntrMainBuf, 0x800);
    INTR_VECTOR = pIntrMainBuf;
    REG_WAITCNT = WAITCNT_PREFETCH_ENABLE | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3;
    INTR_VECTOR = pIntrMainBuf;
    IdentifyEeprom(4);
    REG_IME = 1;
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;

    gUnk_03004C20.globalFrameCounter = 0;
    gUnk_03004C20.sceneFrameCounter = 0;
    gUnk_03004C20.demoNumber = 0xFF;

    gUnk_03004658 = thunk_HeapAlloc(0x18, 0);
    gUnk_03005284 = thunk_HeapAlloc(0x24, 0);
    gUnk_03004670 = thunk_HeapAlloc(0x40, 0);
    gUnk_030047FC = thunk_HeapAlloc(0x2C, 0);
    gUnk_030034FC = thunk_HeapAlloc(0x11, 1);

    gBlendValue = gMosaicSize = 0;
    gUnk_03005428 = 1;
    gUnk_03005284->unk16 = 0;
    gUnk_03004C20.unk8 = 0;
    gUnk_03003420 = 0;
    thunk_UpdateRng();
    SetEepromTimerIntr(3, (u32 *) &gIntrTable.timer3);

    gCallbackQueue.current[0] = InputHandler_Normal;
    gCallbackQueue.current[1] = sub_08048768;
    InputHandler_Normal();
    gCallbackQueue.current[2] = sub_0800BFF4;
    gCallbackQueue.current[3] = NULL + 1;
    gCallbackQueue.currentCount = 4;
    gUnk_0300548C = 0;
    gUnk_03004784 = 0;
    m4aSoundInit();
    gSoundVolume = 0x100;

    if ((gHeldKeys & DELETE_SAVE_DATA_KEYS) == DELETE_SAVE_DATA_KEYS)
    {
        gCallbackQueue.current[1] = sub_080477A8;
    }

    while (1)
    {   
        for (i = 0; i < (gCallbackQueue.currentCount - 1); i++)
        {
            gCallbackQueue.current[i]();
        }

        if (gCallbackQueue.current[gCallbackQueue.currentCount - 1] != 0)
        {
            continue;
        }
        
        for (i = 0; i < gCallbackQueue.nextCount; i++)
        {
            gCallbackQueue.current[i] = gCallbackQueue.next[i];
        }

        gCallbackQueue.currentCount = gCallbackQueue.nextCount;
        gCallbackQueue.nextCount = 0;
    }
}

#define RESET_KEYS (START_BUTTON | SELECT_BUTTON | B_BUTTON | A_BUTTON)

// 6CC
void InputHandler_Normal(void)
{
    s32 keyInput;

    keyInput = REG_KEYINPUT ^ KEYS_MASK;
    gNewKeys = keyInput & ~gHeldKeys;
    gHeldKeys = keyInput;

    if ((keyInput & RESET_KEYS) == RESET_KEYS)
    {
        SoftResetRom(RESET_ALL);
    }

    if (gHeldKeys & A_BUTTON)
    {
        gUnk_030034F0 += 1;
    }
    else
    {
        gUnk_030034F0 = 0;
    }
}

// 72C
void InputHandler_AttractMode(void)
{
    u16 keyInput;
    u32 i;

    keyInput = REG_KEYINPUT ^ KEYS_MASK;
    gNewKeysAttract = keyInput & ~gHeldKeysAttract;
    gHeldKeysAttract = keyInput;

    gUnk_03004C20.demoNextInputTimer -= 1;
    if (gUnk_03004C20.demoNextInputTimer == 0xFF)
    {
        gUnk_03004C20.demoInputIndex += 2;
        gUnk_03004C20.demoNextInputTimer = gUnk_080D9150[gUnk_03004C20.demoNumber][gUnk_03004C20.demoInputIndex + 1];
    }

    keyInput = gUnk_080D9150[gUnk_03004C20.demoNumber][gUnk_03004C20.demoInputIndex];
    gNewKeys = keyInput & ~gHeldKeys;
    gHeldKeys = keyInput;

    if ((gUnk_030034E4 == 0) && (((keyInput == 0) && (gUnk_03004C20.demoNextInputTimer == 0xFF)) || (gNewKeysAttract & (START_BUTTON | A_BUTTON))))
    {
        // End attract demo
        gUnk_030034E4 = 1;
        gMosaicSize = gBlendValue = 0;
        gUnk_03003410.unk7 = 2;

        for (i = 0; i < (gCallbackQueue.currentCount + 1); i += 1)
        {
            if (i == 4)
            {
                gCallbackQueue.next[4] = sub_080245E8;
            }
            else if (i > 4)
            {
                gCallbackQueue.next[i] = gCallbackQueue.current[i - 1];
            }
            else
            {
                gCallbackQueue.next[i] = gCallbackQueue.current[i];
            }
        }

        if (i > 3)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }
    }

    if ((gUnk_03004C20.sceneFrameCounter % 0x20) == 0)
    {
        gEntityInfo[0xB].unk10 ^= 1;
    }
}

// 87C
void sub_0800087C(u8 arg0, u8 arg1)
{
    DmaCopy16(
        3,
        gUnk_0818B8A8[arg1],
        OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[arg0 - 0xD].tileNum * 0x20),
        0x20
    );
}

// 8DC
void sub_080008DC(void)
{
    // Called on gameplay transitions
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg0Tiles - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg1Tilemap - 2);
    thunk_HeapFree(gBgDataPtrs.pBufBg1Tiles - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg2Tilemap - 4);
    thunk_HeapFree(gBgDataPtrs.pBufBg2Tiles - 4);

    if (gUnk_03005290 != 0)
    {
        thunk_HeapFree(gUnk_03005290 - 4);
        gUnk_03005290 = 0;
    }

    m4aSongNumStart(0x8D);
    m4aSongNumStart(0x8E);
    m4aSongNumStart(0x8F);
    m4aSongNumStart(0x90);
}
