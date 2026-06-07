#include "global.h"
#include "main.h"
#include "eeprom.h"
#include "heap.h"
#include "interrupts.h"
#include "rand.h"
#include "structs/variables.h"

extern u8 gUnk_080D9150[][0x64];

extern void *gUnk_0818B8A8[];
extern struct Unk_0818B8E0 *gUnk_0818B8E0[6][9];

extern void IntrMain(void);

extern void sub_080245E8();
extern void sub_0800BFF4();
extern void sub_080477A8();
extern void sub_08048768();

#define DELETE_SAVE_DATA_KEYS (L_BUTTON | R_BUTTON | DPAD_RIGHT | B_BUTTON | A_BUTTON)

// 470
void AgbMain(void)
{
    u32 var_r4;
    void *temp_r0;

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
    temp_r0 = thunk_HeapAlloc(0x200, 2);
    DmaCopy32(3, &IntrMain, temp_r0, 0x800);
    INTR_VECTOR = temp_r0;
    REG_WAITCNT = WAITCNT_PREFETCH_ENABLE | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3;
    INTR_VECTOR = temp_r0;
    IdentifyEeprom(4);
    REG_IME = 1;
    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;

    gUnk_03004C20.unk4 = 0;
    gUnk_03004C20.unk0 = 0;
    gUnk_03004C20.demoNumber = 0xFF;

    gUnk_03004658 = thunk_HeapAlloc(0x18, 0);
    gUnk_03005284 = thunk_HeapAlloc(0x24, 0);
    gUnk_03004670 = thunk_HeapAlloc(0x40, 0);
    gUnk_030047FC = thunk_HeapAlloc(0x2C, 0);
    gUnk_030034FC = thunk_HeapAlloc(0x11, 1);

    gUnk_03005498 = gUnk_030007D8 = 0;
    gUnk_03005428 = 1;
    gUnk_03005284->unk16 = 0;
    gUnk_03004C20.unk8 = 0;
    gUnk_03003420 = 0;
    thunk_UpdateRng();
    SetEepromTimerIntr(3, (u32 *) &gIntrTable.timer3);

    gUnk_03003510.unk0[0] = &InputHandler_Normal;
    gUnk_03003510.unk0[1] = &sub_08048768;
    InputHandler_Normal();
    gUnk_03003510.unk0[2] = &sub_0800BFF4;
    gUnk_03003510.unkC = 1;
    gUnk_03003510.unk78 = 4;
    gUnk_0300548C = 0;
    gUnk_03004784 = 0;
    m4aSoundInit();
    gUnk_03005210 = 0x100;

    if ((gHeldKeys & DELETE_SAVE_DATA_KEYS) == DELETE_SAVE_DATA_KEYS)
    {
        gUnk_03003510.unk0[1] = &sub_080477A8;
    }

    while (1)
    {
        
        for (var_r4 = 0; var_r4 < (gUnk_03003510.unk78 - 1); var_r4++)
        {
            gUnk_03003510.unk0[var_r4]();
        }

        if (gUnk_03003510.unk0[gUnk_03003510.unk78 - 1] != 0)
        {
            continue;
        }
        
        for (var_r4 = 0; var_r4 < gUnk_03003510.unk79; var_r4++)
        {
            gUnk_03003510.unk0[var_r4] = gUnk_03003510.unk28[var_r4];
        }

        gUnk_03003510.unk78 = gUnk_03003510.unk79;
        gUnk_03003510.unk79 = 0;
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
    u32 var_r3;

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
        gUnk_030007D8 = gUnk_03005498 = 0;
        gUnk_03003410.unk7 = 2;

        for (var_r3 = 0; var_r3 < (gUnk_03003510.unk78 + 1); var_r3 += 1)
        {
            if (var_r3 == 4)
            {
                gUnk_03003510.unk38 = &sub_080245E8;
            }
            else if (var_r3 > 4)
            {
                gUnk_03003510.unk28[var_r3] = gUnk_03003510.unk0[var_r3 - 1];
            }
            else
            {
                gUnk_03003510.unk28[var_r3] = gUnk_03003510.unk0[var_r3];
            }
        }

        if (var_r3 > 3)
        {
            gUnk_03003510.unk79 = gUnk_03003510.unk78 + 1;
            gUnk_03003510.unk0[gUnk_03003510.unk78 - 1] = NULL;
        }
    }

    if (!(gUnk_03004C20.unk0 & 0x1F))
    {
        gUnk_03002920[0xB].unk10 ^= 1;
    }
}

// 87C
void sub_0800087C(u8 arg0, u8 arg1)
{
    // TODO: clean up dest
    DmaCopy16(
        3,
        gUnk_0818B8A8[arg1],
        OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[(arg0 << 2) - (0x68/2)] * 0x20),
        0x20
    );
}

// 8DC
void sub_080008DC(void)
{
    // Called on gameplay transitions
    thunk_HeapFree(gUnk_03004790.pBufBg0Tilemap - 2);
    thunk_HeapFree(gUnk_03004790.pBufBg0Tiles - 4);
    thunk_HeapFree(gUnk_03004790.pBufBg1Tilemap - 2);
    thunk_HeapFree(gUnk_03004790.pBufBg1Tiles - 4);
    thunk_HeapFree(gUnk_03004790.pBufBg2Tilemap - 4);
    thunk_HeapFree(gUnk_03004790.pBufBg2Tiles - 4);

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
