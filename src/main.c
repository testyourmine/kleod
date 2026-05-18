#include "global.h"
#include "heap.h"
#include "eeprom.h"
#include "rand.h"

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

extern void IntrMain(void);

void InputHandler_Normal();
void sub_080009D8();
void sub_08000FCC();
void sub_08001144();

extern s8 gUnk_030007D8;
extern s8 gUnk_03003420;

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

struct Unk_03002920 {
    u8 pad0[0x144 - 0x0];
    u8 unk144;
};
extern struct Unk_03002920 gUnk_03002920;

extern s8 gUnk_03004784;
extern u16 gUnk_03005210;
extern u8 gUnk_03005428;
extern u8 gUnk_0300548C;
extern u8 gUnk_03005498;

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

extern u8 gUnk_080D9150[][0x64];

extern void *gUnk_0818B8A8[];

struct Unk_0818B8E0 {
    u8 pad0[0x4 - 0x0];
    u16 *unk4;
};
extern struct Unk_0818B8E0 *gUnk_0818B8E0[];

extern void sub_080245E8();
extern void sub_0800BFF4();
extern void sub_080477A8();
extern void sub_08048768();

#define UNK_KEY_COMBO (L_BUTTON | R_BUTTON | DPAD_RIGHT | B_BUTTON | A_BUTTON)

// 470
void AgbMain(void)
{
    u32 var_r4;
    void *temp_r0;

    DmaFill32(3, 0, (void *)0x02000000, 0x40000);
    DmaFill32(3, 0, (void *)0x03000000, 0x7E00);

    gIntrTable.vBlank = sub_080009D8;
    gIntrTable.hBlank = sub_08000FCC;
    gIntrTable.vCount = sub_08001144;
    gIntrTable.timer0 = sub_08001144;
    gIntrTable.timer1 = sub_08001144;
    gIntrTable.timer2 = sub_08001144;
    gIntrTable.timer3 = sub_08001144;
    gIntrTable.serial = sub_08001144;
    gIntrTable.dma0 = sub_08001144;
    gIntrTable.dma1 = sub_08001144;
    gIntrTable.dma2 = sub_08001144;
    gIntrTable.dma3 = sub_08001144;
    gIntrTable.keypad = sub_08001144;
    gIntrTable.gamePak = sub_08001144;

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
    gUnk_03005284[0xB] = 0;
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

    if ((gHeldKeys & UNK_KEY_COMBO) == UNK_KEY_COMBO)
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
        gUnk_03002920.unk144 ^= 1;
    }
}

// 87C
void sub_0800087C(u8 arg0, u8 arg1)
{
    // TODO: clean up dest
    DmaCopy16(
        3,
        gUnk_0818B8A8[arg1],
        OBJ_VRAM0 + (gUnk_0818B8E0[(gUnk_03004C20.unkD - 1) * 9 + gUnk_03004C20.unkC]->unk4[(arg0 << 2) - (0x68/2)] * 0x20),
        0x20
    );
}

// 8DC
void sub_080008DC(void)
{
    // Called on gameplay transitions
    thunk_HeapFree(gUnk_03004790.unk4 - 4);
    thunk_HeapFree(gUnk_03004790.unk0 - 4);
    thunk_HeapFree(gUnk_03004790.unkC - 4);
    thunk_HeapFree(gUnk_03004790.unk8 - 4);
    thunk_HeapFree(gUnk_03004790.unk14 - 4);
    thunk_HeapFree(gUnk_03004790.unk10 - 4);

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
