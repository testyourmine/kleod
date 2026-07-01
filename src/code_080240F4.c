#include "global.h"
#include "code_080240F4.h"
#include "code_08001158.h"
#include "code_08003D58.h"
#include "code_0800BFF4.h"
#include "interrupts.h"
#include "main.h"
#include "structs/variables.h"

extern void sub_0803B600();                                /* extern */
extern void sub_08046DB8(s32, s32);
extern u16 sub_08046F6C(s32);                              /* extern */
extern void sub_080471F4(void);
extern void sub_080487B4();                                /* extern */
extern void sub_08049724();                                /* extern */
extern void sub_0804AF00();                                /* extern */
extern void sub_0804BE58();                                /* extern */

extern u16 gUnk_08057C70;
extern u8 gUnk_080A5088[0x800];

// 240F4
void sub_080240F4(void)
{
    u32 var_r4;
    u32 var_r3;

    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 -= 1;
    if (gUnk_03005498 == 0)
    {
        var_r4 = 0;
        for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount - 1); var_r3++)
        {
            if ((gCallbackQueue.current[var_r3] == sub_080240F4) || (var_r4 == 1))
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3 + 1];
                var_r4 = 1;
            }
            else
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3];
            }
        }

        if (var_r4 == 1)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        REG_IE &= ~2;
        REG_DISPSTAT &= ~0x10;
        gUnk_030034E4 = 0;
    }
    else
    {
        gMosaicSize -= 1;
    }
}

// 241EC
void sub_080241EC(void)
{
    u32 var_r4;
    u32 var_r3;

    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xBF;

    gUnk_03005498 -= 1;
    if (gUnk_03005498 == 0)
    {
        var_r4 = 0;
        for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount - 1); var_r3++)
        {
            if ((gCallbackQueue.current[var_r3] == sub_080241EC) || (var_r4 == 1))
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3 + 1];
                var_r4 = 1;
            }
            else
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3];
            }
        }

        if (var_r4 == 1)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        gUnk_030034E4 = 0;
    }
    else
    {
        gMosaicSize -= 1;
    }
}

// 242C0
void sub_080242C0(void)
{
    u32 var_r4;
    u32 var_r3;

    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    if (gUnk_03005498 == 0x10)
    {
        if (gUnk_03003410.unkA == 0)
        {
            m4aSoundVSyncOn();
            m4aSongNumContinue(gUnk_030052B8);
        }

        if (gUnk_03005210 == 0xFFFF)
        {
            gUnk_03005210 = 0;
            if (gUnk_03004C20.level == 8)
            {
                if (gUnk_03004C20.world == 6)
                {
                    gUnk_030052B8 = 0xB;
                }
                else
                {
                    gUnk_030052B8 = 0xA;
                }
            }
            else if (gUnk_03004C20.level == 0)
            {
                gUnk_030052B8 = 0x1C;
            }
            else if (gUnk_03004C20.unkA == 1)
            {
                gUnk_030052B8 = 0x1E;
            }
            else if (gUnk_03004C20.level == 6)
            {
                gUnk_030052B8 = 0x22;
            }
            else
            {
                gUnk_030052B8 = gUnk_03004C20.world + 3;
            }

            if (gUnk_03003410.unkA == 0)
            {
                m4aSongNumStart(gUnk_030052B8);
            }
        }
    }

    if (gUnk_03005498 != 0)
    {
        if (gUnk_03003410.unk5 == 1)
        {
            gUnk_03005210 += 0x10;
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);
        }
        else
        {
            gUnk_03005210 = 0x100;
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);
        }
    }

    REG_BLDCNT = 0xBF;

    gUnk_03005498 -= 1;
    if (gUnk_03005498 == (u8)-1)
    {
        gMosaicSize = 0;
        gUnk_03005498 = 0;

        var_r4 = 0;
        for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount - 1); var_r3++)
        {
                if ((gCallbackQueue.current[var_r3] == sub_080242C0) || (var_r4 == 1))
                {
                    gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3 + 1];
                    var_r4 = 1;
                }
                else
                {
                    gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3];
                }
        }

        if (var_r4 == 1)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        gUnk_030034E4 = 0;
        gUnk_03005210 = 0x100;
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);

        gUnk_03005498 = 9;
        REG_BLDCNT = 0x340;
    }
    else
    {
        if (gMosaicSize != 0)
        {
            gMosaicSize -= 1;
        }
    }
}

// 24560
void sub_08024560(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        sub_0800A468();
        gUnk_03004C20.unk0 = -1;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = sub_0804AF00;
        gCallbackQueue.next[2] = sub_080249A4;
        gCallbackQueue.next[3] = sub_0800BFF4;
        gCallbackQueue.next[4] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 5;
    }
}

// 245E8
void sub_080245E8(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        gUnk_030034E4 = 0;
        sub_080008DC();
        gUnk_03004C20.unk0 = -1;
        gCallbackQueue.next[0] = InputHandler_Normal;
        if (gUnk_03003410.unk7 == 1)
        {
            gCallbackQueue.next[0] = InputHandler_Normal; // Redundant, required to match
            if (gUnk_03004C20.world == 6)
            {
                gCallbackQueue.next[1] = sub_0803B600;
                gCallbackQueue.next[2] = sub_08025718;
                gCallbackQueue.next[3] = sub_0800BFF4;
                gCallbackQueue.next[4] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 5;
            }
            else
            {
                gUnk_03004C20.level = 0;
                gUnk_03003410.unk9 = 0;
                gUnk_03003410.unkA = 0;
                gCallbackQueue.next[0] = sub_08001158;
                gUnk_03003410.unk8 = 1;
                gCallbackQueue.next[1] = sub_08003904;
                gCallbackQueue.next[2] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 3;
            }
            gUnk_03004C20.unk0 = -1;
        }
        else
        {
            gUnk_03002920[0xB].unk10 = 0;
            gMosaicSize = 0;
            gCallbackQueue.next[1] = sub_08049724;
            gCallbackQueue.next[2] = sub_0800D0C4;
            gCallbackQueue.next[3] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 4;
            gUnk_03004C20.unk0 = -1;
            gUnk_03004D9C = 0;
        }
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 24718
void sub_08024718(void)
{
    u32 var_r4;
    u32 var_r1;

    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    if (gUnk_03005498 != 0x10)
    {
        gUnk_03005210 -= 0x10;
        if (gUnk_03005210 > 0x10)
        {
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);
        }
        else
        {
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, 0x10);
        }
    }

    REG_BLDCNT = 0xBF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x11)
    {
        gUnk_03005498 = 0x10;
        gMosaicSize = 0xF;
        gUnk_030034E4 = 0;
        sub_0800A468();

        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;
        
        gUnk_03002920[0xC].unk10 = 0;
        gUnk_03002920[0xB].unk10 = 0;

        var_r4 = 0;
        for (var_r1 = 0; var_r1 < (gCallbackQueue.currentCount - 1); var_r1++)
        {
            if ((gCallbackQueue.current[var_r1] == sub_08026374) || (var_r4 == 1))
            {
                gCallbackQueue.next[var_r1] = gCallbackQueue.current[var_r1 + 1];
                var_r4 = 1;
            }
            else
            {
                gCallbackQueue.next[var_r1] = gCallbackQueue.current[var_r1];
            }
        }

        if (var_r4 == 1)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        m4aMPlayAllStop();
        gUnk_03005210 = 0;
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);

        REG_IE &= ~1;
        REG_DISPSTAT &= ~8;
        m4aSoundVSyncOff();

        sub_08002FD0();
        sub_0800B3C0();
        if (gUnk_03004C20.unkB == 1)
        {
            gUnk_030051C8 = gUnk_03004654[1] - 1;
            gUnk_03005284->unk8_0 = 3;
        }
        else
        {
            gUnk_03005284->unk6 = gUnk_030051C8;
        }
        sub_08046DB8(0, 1);

        REG_IE |= 1;
        REG_DISPSTAT |= 8;
        m4aSoundVSyncOn();
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 249A4
// (95.65%) https://decomp.me/scratch/KOjFQ
NONMATCH("asm/nonmatching/sub_080249A4.inc", void sub_080249A4(void))
{
    u32 var_r4;
    u32 var_r3;

    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 -= 1;
    if (gUnk_03005498 == 0)
    {
        var_r4 = 0;
        for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount - 1); var_r3++)
        {
            if ((gCallbackQueue.current[var_r3] == sub_080249A4) || (var_r4 == 1))
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3 + 1];
                var_r4 = 1;
            }
            else
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3];
            }
        }

        if (var_r4 == 1)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        gUnk_03004C20.unk0 = 0;
        gUnk_030034E4 = 0;
    }
}
END_NONMATCH

// 24A78
void sub_08024A78(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        gUnk_030034E4 = 0;
        sub_080008DC();
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~2;
        REG_DISPSTAT &= ~0x10;

        gUnk_03004658[0xC] = 0;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = sub_080487B4;
        gCallbackQueue.next[2] = sub_0800BFF4;
        gCallbackQueue.next[3] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 4;
        gUnk_03004C20.unk0 = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 24B54
void sub_08024B54(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        gUnk_030034E4 = 0;
        sub_080008DC();
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~2;
        REG_DISPSTAT &= ~0x10;

        gUnk_03004658[0xC] = 0;
        gCallbackQueue.next[0] += 0; // FAKE
        gUnk_03003410.unkA = gUnk_03003410.unk9 = 0;
        gCallbackQueue.next[0] = sub_08001158;
        gUnk_03003410.unk8 = 1;
        gCallbackQueue.next[1] = sub_08003904;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gUnk_03004C20.unk0 = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 24C34
void sub_08024C34(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        gUnk_030034E4 = 0;
        sub_080008DC();
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~2;
        REG_DISPSTAT &= ~0x10;
        gUnk_03004658[0xC] = 0;

        if (gUnk_03005220.unk37 == 0)
        {
            if ((gUnk_03004C20.world != 6) && (gUnk_03004C20.level == 8))
            {
                gUnk_03005284->unk4 = gUnk_03004C20.world * 3;
                gUnk_03005498 = 0x10;
                gCallbackQueue.next[0] = sub_0804BE58;
                gCallbackQueue.next[1] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 2;
            }
            else
            {
                sub_08003D58();
                gUnk_03003410.unk9 = 0;
                gUnk_03003410.unkA = 0;
                gCallbackQueue.next[0] = sub_08001158;
                gUnk_03003410.unk8 = 1;
                gCallbackQueue.next[1] = sub_08003904;
                gCallbackQueue.next[2] = NULL + 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
                gCallbackQueue.nextCount = 3;
            }
        }
        gUnk_03004C20.unk0 = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 24D84
// (97.92%) https://decomp.me/scratch/1c0hJ
NONMATCH("asm/nonmatching/sub_08024D84.inc", void sub_08024D84(void))
{
    u32 var_r1;

    gUnk_030034E4 = 1;
    if (gUnk_03005498 == 0)
    {
        for (var_r1 = 1; var_r1 < gUnk_03005428; var_r1++)
        {
            gUnk_03002920[var_r1].unk10 = 0;
            gUnk_03002920[var_r1].unkF = 0x1C;
        }

        gUnk_03002920->unk10 = 1;
        goto block_9;
    }

    if (gUnk_03004C20.unk4 & 7)
    {

    }
    else if (gUnk_03005498 < 0x10)
    {
block_9:
        if (gUnk_03005498 == 1)
        {
            REG_DISPSTAT = (REG_DISPSTAT & 0xFF) | 0xFFFF8F00;
            gIntrTable.vCount = sub_0800111C;
            REG_IE |= 4;
            REG_DISPSTAT |= 0x20;
            REG_BLDCNT = 0xE7;
            if ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3)))
            {
                REG_WININ = 0x121;
            }
        }

        gUnk_03005210 -= 0x10;
        if (gUnk_03005210 > 0x10)
        {
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);
        }
        else
        {
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, 0x10);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, 0x10);
        }

        gUnk_03005498 += 1;
        if (gUnk_03005498 == 0x10)
        {
            m4aMPlayAllStop();
            gUnk_03005210 = 0x100;
            m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
            m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);
            m4aSongNumStart(0x78);
            sub_08025F94();
        }
        else if (gUnk_03005498 == 9)
        {
            gUnk_03002920->priority = 0;
        }
    }

    if (((gNewKeys & (START_BUTTON | A_BUTTON)) || (gUnk_03003410.unk0 > 0xFA)) && (gUnk_03003410.unk0 != 0))
    {
        gUnk_03005220.unk0_0 = 3;
        m4aMPlayAllStop();
        VBlankIntrWait();

        if ((gUnk_03004C20.world == 6) && ((gUnk_03004C20.level == 1) || (gUnk_03004C20.level == 3)))
        {
            REG_WININ = 0x2121;
        }
        REG_WINOUT = 0x30;

        gUnk_03005210 = 0x100;
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);

        gCallbackQueue.current[1] = sub_0802502C;
        gUnk_03005498 = gMosaicSize = 0;
    }
    else
    {
        gUnk_03003410.unk0 += 1;
    }
}
END_NONMATCH

// 2502C
void sub_0802502C(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    if (gUnk_03005498 == 0)
    {
        REG_IE &= ~0x4;
        REG_DISPSTAT &= ~0x20;
    }
    REG_BLDCNT = 0xFF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 != 0x10)
    {
        return;
    }
    gUnk_030034E4 = 0;
    
    gBg2XMag = gBg2YMag = 0x100;
    gBg2Alpha = 0;
    gUnk_03005498 = 0x10;
    gMosaicSize = 0xF;

    if (gUnk_03005220.unk37 == 0)
    {
        REG_DISPCNT = 0x3741;
        REG_IE &= ~2;
        REG_DISPSTAT &= ~0x10;
        *(vu16 *)PLTT = 0;
        gUnk_03003410.unk9 = 1;
        gUnk_03003410.unkA = 0;
        gCallbackQueue.next[0] = sub_08001158;
        gUnk_03003410.unk8 = 1;
        gCallbackQueue.next[1] = sub_08003904;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gUnk_03005210 = 0xFFFF;

        gUnk_03005220.unk0_2 = gUnk_03005284->unk8_2;
        gUnk_03005220.unk0_5 = gUnk_03005284->unk8_5;
        gUnk_03005220.unk1_4 = gUnk_03005284->unk9_4;
        gUnk_03005220.unk14 = gUnk_03005284->unk14;
        gUnk_03005220.unk3_5 = gUnk_03005284->unkB_5;
        gUnk_03005220.unk3_6 = gUnk_03005284->unkB_6;
        gUnk_03005220.unk8 = gUnk_03005284->unkC;
        gUnk_03005220.unkC = gUnk_03005284->unk10;
        gUnk_03005220.unk2_7 = gUnk_03005284->unkA_7;
        gUnk_03005220.unk2E = gUnk_03005284->unk5;
        gUnk_03005220.unk58 = gUnk_03005284->unk7;
        gUnk_03005220.unk1_7 = gUnk_03005284->unk9_7;
        gUnk_03005284->unk0 = gUnk_03005220.unk4C;

        REG_IE &= ~1;
        REG_DISPSTAT &= ~8;
        m4aSoundVSyncOff();

        if (gUnk_03005284->unk6 == 0)
        {
            gUnk_03005284->unk6 = gUnk_03004654[1] - 1;
        }
        sub_08046DB8(0, 1);

        REG_IE |= 1;
        REG_DISPSTAT |= 8;
        m4aSoundVSyncOn();
    }
    gUnk_03004C20.unk0 = -1;
}

// 2528C
void sub_0802528C(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    if (gUnk_03003410.unkC == 1)
    {
        REG_WININ = 0x3F3F;
        REG_WINOUT = 0x3F3F;
    }

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        gUnk_030034E4 = 0;

        if (gUnk_03003410.unkC == 1)
        {
            sub_080471F4();
            sub_08046DB8(1, 0);
            gUnk_03005284->unk1 = gUnk_03004C20.world;
            sub_08046DB8(0, 2);
        }

        gCallbackQueue.next[0] = sub_0804BE58;
        gCallbackQueue.next[1] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 2;
        gUnk_03004C20.unk0 = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 2534C
void sub_0802534C(void)
{
    gUnk_030034E4 = 1;
    gUnk_03005210 -= 0x10;
    if (gUnk_03005210 > 0x10)
    {
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, gUnk_03005210);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, gUnk_03005210);
    }
    else
    {
        m4aMPlayVolumeControl(&gMPlayInfo_0, 0xFF, 0x10);
        m4aMPlayVolumeControl(&gMPlayInfo_1, 0xFF, 0x10);
        m4aMPlayVolumeControl(&gMPlayInfo_2, 0xFF, 0x10);
        m4aMPlayVolumeControl(&gMPlayInfo_3, 0xFF, 0x10);
    }

    REG_BLDCNT = 0xBF;
    REG_WININ = 0x3F3F;
    REG_WINOUT = 0x3F3F;
    REG_DISPCNT &= ~0x6000;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        m4aMPlayAllStop();
        REG_IE &= ~1;
        REG_DISPSTAT &= ~8;
        m4aSoundVSyncOff();

        gUnk_030034E4 = 0;
        if (sub_08046F6C(1) != 0)
        {
            DmaFill32(3, 0, &gUnk_03004670->unk0, 0x40);
            DmaFill16(3, 0x7F7F, &gUnk_03004670->unk8, 0x30);
            goto block_8;
        }
        if (sub_08046F6C(0) != 0)
        {
    block_8:
            DmaFill32(3, 0, &gUnk_03005284->unk0, 0x24);
            gUnk_03004C20.world = 1;
            gUnk_03005284->unk1 = 1;
            gUnk_03005284->unk0 = gUnk_03005220.unk4C = 3;
            gUnk_03005284->unk1C = 2;
            gUnk_03005284->unk1D = 1;
        }
        sub_080471F4();
        gUnk_03004670->unk38 += 1;

        REG_IE |= 1;
        REG_DISPSTAT |= 8;
        m4aSoundVSyncOn();

        gUnk_03005220.unk4C = gUnk_03005284->unk0;
        gUnk_03004C20.world = gUnk_03005284->unk1;
        gUnk_03004C20.level = gUnk_03005284->unk2;

        if (gUnk_03005284->unk3 == 1)
        {
            gUnk_03004C20.room = 0xFF;
            goto block_17;
        }
        else if (gUnk_03005284->unk3 == 0)
        {
            gUnk_030034B0.unk6_4 = gUnk_03004C20.level;
            gUnk_03004C20.level = 0;
            goto block_17;
        }
        else if (gUnk_03005284->unk3 == 2)
        {
            gCallbackQueue.next[0] = sub_0804BE58;
            gCallbackQueue.next[1] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 2;
            return;
        }
        else if (gUnk_03005284->unk3 == 7)
        {
            gCallbackQueue.next[0] = InputHandler_Normal;
            gCallbackQueue.next[1] = sub_0803B600;
            gCallbackQueue.next[2] = sub_08025718;
            gCallbackQueue.next[3] = sub_0800BFF4;
            gCallbackQueue.next[4] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 5;
            gUnk_03004C20.unk0 = -1;
            return;
        }
        else
        {
block_17:
            gUnk_03003410.unk9 = 0;
            gUnk_03003410.unkA = 0;
            gCallbackQueue.next[0] = sub_08001158;
            gUnk_03003410.unk8 = 1;
            gCallbackQueue.next[1] = sub_08003904;
            gCallbackQueue.next[2] = NULL + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            gCallbackQueue.nextCount = 3;
        }
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 25634
void sub_08025634(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        gUnk_030034E4 = 0;
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~2;
        REG_DISPSTAT &= ~0x10;

        gUnk_03004658[0xC] = 0;
        gUnk_03004C20.unk0 = -1;
        sub_08003D58();
        gUnk_03003410.unk9 = 0;
        gUnk_03003410.unkA = 0;
        gCallbackQueue.next[0] = sub_08001158;
        gUnk_03003410.unk8 = 1;
        gCallbackQueue.next[1] = sub_08003904;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gUnk_03004C20.unk0 = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 25718
// https://decomp.me/scratch/RbqH3
NONMATCH("asm/nonmatching/sub_08025718.inc", void sub_08025718(void))
{
    u32 var_r4;
    u32 var_r3;

    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xBF;

    gUnk_03005498 -= 1;
    if (gUnk_03005498 == 0)
    {
        var_r4 = 0;
        for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount - 1); var_r3++)
        {
            if ((gCallbackQueue.current[var_r3] == sub_08025718) || (var_r4 == 1))
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3 + 1];
                var_r4 = 1;
            }
            else
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3];
            }
        }

        if (var_r4 == 1)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        gUnk_03004C20.unk0 = 0;
        gUnk_030034E4 = 0;
        REG_WININ = 0x3F;
        REG_WINOUT = 0x3B;
        REG_BLDCNT = 0x1B44;
    }
    else
    {
        gMosaicSize -= 1;
    }
}
END_NONMATCH

// 25818
void sub_08025818(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xBF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        gUnk_030034E4 = 0;
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~2;
        REG_DISPSTAT &= ~0x10;

        gUnk_03004658[0xC] = 0;
        gUnk_03004C20.unk0 = -1;
        sub_0800A468();
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = sub_0803B600;
        gCallbackQueue.next[2] = sub_08025718;
        gCallbackQueue.next[3] = sub_0800BFF4;
        gCallbackQueue.next[4] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 5;
        gUnk_03004C20.unk0 = -1;
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 25900
void sub_08025900(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xBF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        SoftResetRom(0xFF);
    }
    else
    {
        gMosaicSize += 1;
    }
}

// 25954
void sub_08025954(void)
{
    u32 var_r4;
    u32 var_r3;

    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 -= 1;
    if (gUnk_03005498 == 0)
    {
        var_r4 = 0;
        for (var_r3 = 0; var_r3 < (gCallbackQueue.currentCount - 1); var_r3++)
        {
            if ((gCallbackQueue.current[var_r3] == sub_08025954) || (var_r4 == 1))
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3 + 1];
                var_r4 = 1;
            }
            else
            {
                gCallbackQueue.next[var_r3] = gCallbackQueue.current[var_r3];
            }
        }

        if (var_r4 == 1)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        gUnk_030034E4 = 0;
    }
    else
    {
        gMosaicSize -= 1;
    }
}

// 25A28
void sub_08025A28(void)
{
    gUnk_030034E4 = 1;
    if (gUnk_03004C20.unk4 & 1)
    {
        return;
    }

    REG_BLDCNT = 0xFF;

    gUnk_03005498 += 1;
    if (gUnk_03005498 == 0x10)
    {
        REG_IE &= ~1;
        REG_DISPSTAT &= ~8;
        m4aSoundVSyncOff();

        m4aMPlayAllStop();
        gUnk_03005284->unk1 = 6;
        sub_08046DB8(0, 7);
        sub_08046DB8(1, 0);
        gUnk_030034E4 = 0;
        sub_08003D58();
        sub_080008DC();
        gUnk_03004C20.unk0 = -1;
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        REG_IE &= ~2;
        REG_DISPSTAT &= ~0x10;

        gUnk_03004658[0xC] = 0;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = sub_0800350C;
        gCallbackQueue.next[2] = sub_08025954;
        gCallbackQueue.next[3] = sub_0800C900;
        gCallbackQueue.next[4] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 5;

        REG_IE |= 1;
        REG_DISPSTAT |= 8;
        m4aSoundVSyncOn();
    }
    else
    {
        gMosaicSize += 1;
    }
}

// file split?

// 25B78
void sub_08025B78(s32 arg0, u8 arg1)
{
    if (arg0 > 8)
    {
        arg0 = arg0 + (9 - gUnk_030007C4);
    }

    gUnk_03000830[arg0].unk0 = arg1;
    gUnk_03000830[arg0].unk1 = 1;
    gUnk_03000830[arg0].unk2 = 0xFF;
}

// 25BA4
void sub_08025BA4(void)
{
    vu32 sp0;
    struct Unk_03005294_03005418 *var_r5;
    struct Unk_03005294_03005418_0 **temp_r7;
    struct Unk_03005294_03005418_0 *var_r4;

    for (sp0 = 0; sp0 <= 0x2C; sp0++)
    {
        if (sp0 <= 8)
        {
            var_r5 = &gUnk_03005418[sp0];
        }
        else
        {
            var_r5 = &gUnk_03005294[sp0] - 0x9;
        }
        if (var_r5->unk0 == NULL)
        {
            break;
        }
        if (var_r5->unk0 == NULL + 1)
        {
            continue;
        }

        if (gUnk_03000830[sp0].unk1 != 0xFF)
        {
            if (--gUnk_03000830[sp0].unk1 == 0)
            {
                temp_r7 = var_r5->unk0;
                var_r4 = temp_r7[gUnk_03000830[sp0].unk0];
                if (var_r4[++gUnk_03000830[sp0].unk2].unk0 == -1)
                {
                    gUnk_03000830[sp0].unk2 = 0;
                    goto block_15;
                }
                else if (var_r4[gUnk_03000830[sp0].unk2].unk0 == -2)
                {
                    gUnk_03000830[sp0].unk1 |= 0xFF;
                    gUnk_03002920[var_r5->unkA].unk10 = 0;
                    gUnk_03002920[var_r5->unkA].unkF = 0x1C;
                    gUnk_03002920[var_r5->unkA].unk8.split.unk8 = 0;
                }
                else if (var_r4[gUnk_03000830[sp0].unk2].unk0 > 0x270F)
                {
                    if (var_r4[gUnk_03000830[sp0].unk2].unk0 == -3)
                    {
                        gUnk_03000830[sp0].unk1 |= 0xFF;
                    }
                    else
                    {
                        goto block_15;
                    }
                }
                else
                {
                    gUnk_03000830[sp0].unk0 = var_r4[gUnk_03000830[sp0].unk2].unk0;
                    gUnk_03000830[sp0].unk2 = 0;
                    var_r4 = temp_r7[gUnk_03000830[sp0].unk0];
block_15:
                    gUnk_03000830[sp0].unk1 = var_r4[gUnk_03000830[sp0].unk2].unk4;
                    DmaCopy16(3, var_r4[gUnk_03000830[sp0].unk2].unk0, var_r5->unk4, var_r5->unk8);
                    gUnk_03002920[var_r5->unkA].unkB_0 = var_r4[gUnk_03000830[sp0].unk2].unk5_0;
                    gUnk_03002920[var_r5->unkA].unkB_4 = var_r4[gUnk_03000830[sp0].unk2].unk5_4;
                }
            }
        }
    }
}

// 25DD4
void sub_08025DD4(void)
{
    u32 var_r5;
    u32 var_r6;

    for (var_r6 = 0; var_r6 < 3; var_r6++)
    {
        if (var_r6 < gUnk_03005220.unk0_0)
        {
            var_r5 = 0;
        }
        else
        {
            var_r5 = 2;
        }
        gBgTilemapBufs[0][(var_r6 * 2) + 0x241] = gBgTilemapBufs[0][(var_r6 * 2) + ((var_r5 + 0x14) << 5)];
        gBgTilemapBufs[0][(var_r6 * 2) + 0x242] = gBgTilemapBufs[0][(var_r6 * 2 + 1) + ((var_r5 + 0x14) << 5)];
        gBgTilemapBufs[0][(var_r6 * 2) + 0x261] = gBgTilemapBufs[0][(var_r6 * 2) + ((var_r5 + 0x15) << 5)];
        gBgTilemapBufs[0][(var_r6 * 2) + 0x262] = gBgTilemapBufs[0][(var_r6 * 2 + 1) + ((var_r5 + 0x15) << 5)];
    }
}

// 25E68
s32 sub_08025E68(void)
{
    s32 var_r5;
    s32 var_sb;

    var_sb = 0;
    if ((gUnk_03004C20.unkA == 1) || (gUnk_03004C20.level == 6))
    {
        var_r5 = 0x64;
    }
    else
    {
        var_r5 = 0x1E;
    }
    if (var_r5 == gUnk_03005220.unk0_5)
    {
        var_sb = 1;
    }

    if ((gUnk_03004C20.unkA == 1) || (gUnk_03004C20.level == 6))
    {
        var_r5 = 1;
        if (gUnk_03005220.unk0_5 > 0x63)
        {
            gBgTilemapBufs[0][0x252] += 0;
            gBgTilemapBufs[0][0x252] = gBgTilemapBufs[0][0x293];
            gBgTilemapBufs[0][0x272] += 0;
            gBgTilemapBufs[0][0x272] = gBgTilemapBufs[0][0x2B3];
        }
    }
    else
    {
        var_r5 = 0;
    }

    if (gUnk_03005220.unk0_5 > 9)
    {
        gBgTilemapBufs[0][0x254 - var_r5] = gBgTilemapBufs[0][(gUnk_03005220.unk0_5 / 10) + 0x292];
        gBgTilemapBufs[0][0x274 - var_r5] = gBgTilemapBufs[0][(gUnk_03005220.unk0_5 / 10) + 0x2B2];
    }

    gBgTilemapBufs[0][0x255 - var_r5] = gBgTilemapBufs[0][(gUnk_03005220.unk0_5 % 10) + 0x292];
    gBgTilemapBufs[0][0x275 - var_r5] = gBgTilemapBufs[0][(gUnk_03005220.unk0_5 % 10) + 0x2B2];
    return var_sb;
}

// 25F94
void sub_08025F94(void)
{
    if ((u8) gUnk_03005220.unk4C > 9)
    {
        gBgTilemapBufs[0][0x25B] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C / 10) + 0x292];
        gBgTilemapBufs[0][0x27B] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C / 10) + 0x2B2];
    }
    else if ((u8) gUnk_03005220.unk4C == 9)
    {
        gBgTilemapBufs[0][0x25B] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C / 10) + 0x25E];
        gBgTilemapBufs[0][0x27B] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C / 10) + 0x27E];
    }
    gBgTilemapBufs[0][0x25C] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C % 10) + 0x292];
    gBgTilemapBufs[0][0x27C] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C % 10) + 0x2B2];
}

// 26090
void sub_08026090(void)
{
    if ((u8) gUnk_03005220.unk4C > 9)
    {
        gBgTilemapBufs[0][0x25B] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C / 10) + 0x293];
        gBgTilemapBufs[0][0x27B] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C / 10) + 0x2B3];
    }
    gBgTilemapBufs[0][0x25C] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C % 10) + 0x293];
    gBgTilemapBufs[0][0x27C] = gBgTilemapBufs[0][((u8) gUnk_03005220.unk4C % 10) + 0x2B3];
}

// 26128
// (99.78% https://decomp.me/scratch/d3zGu
NONMATCH("asm/nonmatching/sub_08026128.inc", void sub_08026128(void))
{
    u32 var_r4;

    for (var_r4 = 0; var_r4 < 2; var_r4++)
    {
        DmaCopy16(3, &gBgTilemapBufs[0][0x2D2] + var_r4 * 0x20, &gBgTilemapBufs[0][0x14] + var_r4 * 0x20, 0x14);
    }

    if (gUnk_03004C20.level == 1)
    {
        if ((gUnk_03004670->unk1 | gUnk_03004670->unk2 | gUnk_03004670->unk3) == 0)
        {
            gUnk_03004670->unk1 = gUnk_03004670->unk3 = 0x63;
            gUnk_03004670->unk2 = 0x3B;
        }

        gBgTilemapBufs[0][0x15] = gBgTilemapBufs[0][(gUnk_03004670->unk1 / 10) + 0x312];
        gBgTilemapBufs[0][0x16] = gBgTilemapBufs[0][(gUnk_03004670->unk1 % 10) + 0x312];
        gBgTilemapBufs[0][0x18] = gBgTilemapBufs[0][(gUnk_03004670->unk2 / 10) + 0x312];
        gBgTilemapBufs[0][0x19] = gBgTilemapBufs[0][(gUnk_03004670->unk2 % 10) + 0x312];
        gBgTilemapBufs[0][0x1B] = gBgTilemapBufs[0][(gUnk_03004670->unk3 / 10) + 0x312];
        gBgTilemapBufs[0][0x1C] = gBgTilemapBufs[0][(gUnk_03004670->unk3 % 10) + 0x312];
    }
    else
    {
        if ((gUnk_03004670->unk4 | gUnk_03004670->unk5 | gUnk_03004670->unk6) == 0)
        {
            gUnk_03004670->unk1 = gUnk_03004670->unk3 = 0x63;
            gUnk_03004670->unk2 = 0x3B;
        }

        gBgTilemapBufs[0][0x15] = gBgTilemapBufs[0][(gUnk_03004670->unk4 / 10) + 0x312];
        gBgTilemapBufs[0][0x16] = gBgTilemapBufs[0][(gUnk_03004670->unk4 % 10) + 0x312];
        gBgTilemapBufs[0][0x18] = gBgTilemapBufs[0][(gUnk_03004670->unk5 / 10) + 0x312];
        gBgTilemapBufs[0][0x19] = gBgTilemapBufs[0][(gUnk_03004670->unk5 % 10) + 0x312];
        gBgTilemapBufs[0][0x1B] = gBgTilemapBufs[0][(gUnk_03004670->unk6 / 10) + 0x312];
        gBgTilemapBufs[0][0x1C] = gBgTilemapBufs[0][(gUnk_03004670->unk6 % 10) + 0x312];
    }
    
    gBgTilemapBufs[0][0x35] = gBgTilemapBufs[0][(gUnk_03005220.unk4D / 10) + 0x332];
    gBgTilemapBufs[0][0x36] = gBgTilemapBufs[0][(gUnk_03005220.unk4D % 10) + 0x332];
    gBgTilemapBufs[0][0x38] = gBgTilemapBufs[0][(gUnk_03005220.unk4E / 10) + 0x332];
    gBgTilemapBufs[0][0x39] = gBgTilemapBufs[0][(gUnk_03005220.unk4E % 10) + 0x332];
    gBgTilemapBufs[0][0x3B] = gBgTilemapBufs[0][(gUnk_03005220.unk4F / 10) + 0x332];
    gBgTilemapBufs[0][0x3C] = gBgTilemapBufs[0][(gUnk_03005220.unk4F % 10) + 0x332];
}
END_NONMATCH

// 26374
void sub_08026374(void)
{
    u32 var_r4;
    u32 var_r1;

    if (gCallbackQueue.current[4] == sub_080264A4)
    {
        return;
    }

    if (gUnk_03004C20.unk0 <= 0x4BU)
    {
        gUnk_03002920[0xB].xPosScreen += 2;
    }
    else if (gUnk_03004C20.unk0 > 0xD8U)
    {
        gUnk_03002920[0xB].unk10 = 0;
    }
    else if (gUnk_03004C20.unk0 > 0xB0U)
    {
        gUnk_03002920[0xB].xPosScreen += 4;
    }

    if ((u32) (gUnk_03004C20.unk0 - 0x15) <= 0x4AU)
    {
        gUnk_03002920[0xC].xPosScreen += 2;
    }
    else if (gUnk_03004C20.unk0 > 0xECU)
    {
        gUnk_03002920[0xC].unk10 = 0;
        if (gUnk_030034E4 == 0)
        {
            var_r4 = 0;
            for (var_r1 = 0; var_r1 < (gCallbackQueue.currentCount - 1); var_r1++)
            {
                if ((gCallbackQueue.current[var_r1] == sub_08026374) || (var_r4 == 1))
                {
                    gCallbackQueue.next[var_r1] = gCallbackQueue.current[var_r1 + 1];
                    var_r4 = 1;
                }
                else
                {
                    gCallbackQueue.next[var_r1] = gCallbackQueue.current[var_r1];
                }
            }

            if (var_r4 == 1)
            {
                gCallbackQueue.nextCount = gCallbackQueue.currentCount - 1;
                gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
            }
        }
    }
    else if (gUnk_03004C20.unk0 > 0xC4U)
    {
        gUnk_03002920[0xC].xPosScreen += 4;
    }
}

// 264A4
// https://decomp.me/scratch/x79ol
NONMATCH("asm/nonmatching/sub_080264A4.inc", void sub_080264A4(void))
{
    u32 var_r2;
    u32 var_r3;

    if (gCallbackQueue.current[5] == sub_080245E8)
    {
        return;
    }

    if (gUnk_03003410.unkB == 2)
    {
        gUnk_03003410.unkB = 3;
        gUnk_03004C20.unk0 = 0;
        gUnk_03002920[0xC].unk10 = 1;
        gUnk_03002920[0xB].unk10 = 1;
        gUnk_03002920[0xC].xPosScreen = 0x78;
        gUnk_03002920[0xB].xPosScreen = 0x78;
        gUnk_03002920[0xC].yPosScreen = 0;
        gUnk_03002920[0xB].yPosScreen = 0;
        DmaCopy16(3, &gUnk_080A5088, (void*)0x06010000 + (gUnk_08057C70 << 5), 0x800);
        m4aSongNumStart(0x1F);
    }

    if (gUnk_03004C20.unk0 <= 0x19U)
    {
        gUnk_03002920[0xB].yPosScreen += 2;
    }

    if (gUnk_03004C20.unk0 >= 0x15 && gUnk_03004C20.unk0 <= 0x50)
    {
        gUnk_03002920[0xC].yPosScreen += 2;
        return;
    }

    if (gUnk_03004C20.unk0 <= 0x92U)
    {
        return;
    }

    gUnk_030034B0.unk6_4 = gUnk_03004C20.level;
    if (gUnk_03004C20.level == 8)
    {
        if (gUnk_03005498 != 0)
        {
            return;
        }

        for (var_r3 = 0xD; var_r3 < gUnk_03005428; var_r3++)
        {
            gUnk_03002920[var_r3].unkF = 0x1A;
        }

        sub_080008DC();
        
        gBg2XMag = gBg2YMag = 0x100;
        gBg2Alpha = 0;

        if (gUnk_03004C20.world == 6)
        {
            gUnk_03005284->unk4 = 1;
        }
        else
        {
            gUnk_03005284->unk4 = (gUnk_03004C20.world * 3) + 1;
        }

        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = sub_0802528C;
        gCallbackQueue.next[2] = sub_08002AC4;
        gCallbackQueue.next[3] = sub_0800C108;
        gCallbackQueue.next[4] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 5;
    }
    else if (gUnk_03004C20.world == 0x6 && gUnk_03004C20.level == 0x3)
    {
        gUnk_03005498 = 0;
        gCallbackQueue.next[0] = InputHandler_Normal;
        gCallbackQueue.next[1] = sub_08025A28;
        gCallbackQueue.next[2] = sub_0800BFF4;
        gCallbackQueue.next[3] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 4;
        gCallbackQueue.currentCount = 1;
        gCallbackQueue.current[0] = NULL;
    }
    else
    {
        gUnk_03005498 = 0;
        gUnk_03003410.unk7 = 1;

        for (var_r2 = 0; var_r2 < (gCallbackQueue.currentCount + 1); var_r2++)
        {
            if (var_r2 == 5)
            {
                gCallbackQueue.next[5] = sub_080245E8;
            }
            else if (var_r2 > 5)
            {
                gCallbackQueue.next[var_r2] = gCallbackQueue.current[var_r2 - 1];
            }
            else
            {
                gCallbackQueue.next[var_r2] = gCallbackQueue.current[var_r2];
            }
        }
        
        if (var_r2 > 4)
        {
            gCallbackQueue.nextCount = gCallbackQueue.currentCount + 1;
            gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        }

        gCallbackQueue.currentCount = 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
    }
    gUnk_03005284->unk0 = gUnk_03005220.unk4C;

    if ((gUnk_03005220.unk0_5 > (gUnk_03004670->unk8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] & 0x7F)) || (gUnk_03004670->unk8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] == 0))
    {
        gUnk_03004670->unk8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] = gUnk_03005220.unk0_5;
    }
    gUnk_03004670->unk8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1] |= 0x80;
    if (gUnk_03004C20.unk10 == 1)
    {
        var_r3 = 0;
        if (gUnk_03004C20.level == 1)
        {
            if (gUnk_03005220.unk4D < gUnk_03004670->unk1)
            {
                var_r3 = 1;
            }
            else
            {
                if (gUnk_03005220.unk4D == gUnk_03004670->unk1)
                {
                    if (gUnk_03005220.unk4E < gUnk_03004670->unk2)
                    {
                        var_r3 = 1;
                    }
                    else
                    {
                        if ((gUnk_03005220.unk4E == gUnk_03004670->unk2) && (gUnk_03005220.unk4F < gUnk_03004670->unk3))
                        {
                            var_r3 = 1;
                        }
                    }
                }
            }

            if (var_r3 != 0)
            {
                gUnk_03004670->unk1 = gUnk_03005220.unk4D;
                gUnk_03004670->unk2 = gUnk_03005220.unk4E;
                gUnk_03004670->unk3 = gUnk_03005220.unk4F;
            }
        }
        else
        {
            if (gUnk_03005220.unk4D < gUnk_03004670->unk4)
            {
                var_r3 = 1;
            }
            else
            {
                if (gUnk_03005220.unk4D == gUnk_03004670->unk4)
                {
                    if (gUnk_03005220.unk4E < gUnk_03004670->unk5)
                    {
                        var_r3 = 1;
                    }
                    else
                    {
                        if ((gUnk_03005220.unk4E == gUnk_03004670->unk5) && (gUnk_03005220.unk4F < gUnk_03004670->unk6))
                        {
                            var_r3 = 1;
                        }
                    }
                }
            }

            if (var_r3 != 0)
            {
                gUnk_03004670->unk4 = gUnk_03005220.unk4D;
                gUnk_03004670->unk5 = gUnk_03005220.unk4E;
                gUnk_03004670->unk6 = gUnk_03005220.unk4F;
            }
        }
    }
}
END_NONMATCH
