#include "global.h"
#include "code_08003D58.h"
#include "code_0800BFF4.h"
#include "math.h"
#include "data/trig.h"
#include "structs/variables.h"

struct Unk_080E2B64_0 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 pad7[0x8 - 0x7];
};
struct Unk_080E2B64 {
    struct Unk_080E2B64_0 unk0[5];
    u8 unk28;
    u8 unk29;
    u8 pad2A[0x2C - 0x2A];
};
extern struct Unk_080E2B64 gUnk_080E2B64[6][8][0x64];

extern struct Unk_0300466C gUnk_08078FC8[0xD];

extern const union Unk_03000820 gUnk_080E2A7C;

extern const u8 gUnk_080E2A84[0x6][0x8];

extern struct Unk_0300466C *gUnk_0818B8E0[6][9];

extern u8 gUnk_08061FC8[0x80];
extern u8 gUnk_080627C8[0x80];
extern u8 gUnk_08063368[0x80];
extern u8 gUnk_080635E8[0x80];
extern u8 gUnk_08063FE8[0x80];
extern u8 gUnk_08064868[0x200];
extern u8 gUnk_08064A68[0x200];

extern u8 gUnk_080B8F68[0x80];
extern u8 gUnk_080B9068[0x80];
extern u8 gUnk_080B90E8[0x80];
extern u8 gUnk_080B9168[0x80];
extern u8 gUnk_080B91E8[0x80];
extern u8 gUnk_080B9268[0x80];
extern u8 gUnk_080B92E8[0x80];
extern u8 gUnk_080B9468[0x200];
extern u8 gUnk_080B9668[0x200];

// 3D58
void sub_08003D58(void)
{
    register s32 var_r1 asm("r1");
    register s32 var_r3 asm("r3");
    s32 *var_r0;

    var_r0 = (s32*)&gUnk_03002920[0];

    var_r1 = 0x63;
    do
    {
        var_r3 = 0x1C;
        do
        {
            var_r0++;
            var_r3 -= 4;
            *var_r0 = 0;
        }
        while (var_r3 != 0);
        var_r1--;
    }
    while (var_r1 != 0);

    sub_0800A468();
}

// 3D80
void sub_08003D80(void)
{
    register s32 var_r1 asm("r1");
    register s32 var_r3 asm("r3");
    s32 *var_r0;

    var_r0 = (s32*)&gUnk_03002920[1];

    var_r1 = 0x62;
    do
    {
        var_r3 = 0x1C;
        do
        {
            var_r0++;
            var_r3 -= 4;
            *var_r0 = 0;
        }
        while (var_r3 != 0);
        var_r1--;
    }
    while (var_r1 != 0);
}

// 3DA0
void sub_08003DA0(void)
{
    register s32 var_r1 asm("r1");
    register s32 var_r3 asm("r3");
    s32 *var_r0;

    var_r0 = (s32*)&gUnk_03002920[0xD];

    var_r1 = 0x56;
    do
    {
        var_r3 = 0x1C;
        do
        {
            var_r0++;
            var_r3 -= 4;
            *var_r0 = 0;
        }
        while (var_r3 != 0);
        var_r1--;
    }
    while (var_r1 != 0);
}

// 3DC0
void sub_08003DC0(s32 arg0, u8 arg1, u16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7, u8 arg8)
{
    u32 var_r3_3;

    if (arg8 == 0 || arg8 >= 0x4A)
    {
        gUnk_03002920[arg0].xPosScreen = arg2;
        gUnk_03002920[arg0].yPosScreen = arg3;
    }
    else
    {
        gUnk_03002920[arg0].xPosBg2 = arg2;
        gUnk_03002920[arg0].yPosBg2 = arg3;
        gUnk_03002920[arg0].xPosScreen = arg2 - gUnk_03003430.bg2HOfs;
        gUnk_03002920[arg0].yPosScreen = arg3 - gUnk_03003430.bg2VOfs;
    }
    gUnk_03002920[arg0].unkA = arg1;
    gUnk_03002920[arg0].unk10 = 0;
    gUnk_03002920[arg0].unk8 = arg4;
    gUnk_03002920[arg0].unkF = arg7;
    gUnk_03002920[arg0].unkC_2 = 0;

    switch (arg8 - 0x2F)
    {
        case 9:
        case 10:
        case 11:
            gUnk_03002920[arg0].priority = 2;
            gUnk_03002920[arg0].objMode = 1;
            break;

        case 8:
            gUnk_03002920[arg0].unk9 = 0xFF;
            /* fallthrough */
        case 13:
            gUnk_03002920[arg0].priority = 2;
            break;

        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 14:
        case 15:
        case 18:
            gUnk_03002920[arg0].priority = 1;
            gUnk_03002920[arg0].objMode = 0;
            break;

        default:
            gUnk_03002920[arg0].priority = arg5;
            gUnk_03002920[arg0].objMode = 0;
            break;
    }

    switch (arg8 - 1)
    {
        case 0x71:
            gUnk_03002920[arg0].unkC_4 = 0;
            gUnk_03002920[arg0].unk8 = 0;
            gUnk_03002920[arg0].unk9 = arg4;
            if (arg4 == 1 && ((gUnk_03005220.unk1_7 >> gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xC].unk0[gUnk_03004C20.room - 1].unk5) & arg4))
            {
                gUnk_03002920[arg0].unkC_4 = 1;
                gUnk_03002920[arg0 - 1].unkC_4 = 1;
                gUnk_03002920[arg0 - 2].unkC_4 = 1;
            }
            break;

        case 0x70:
            if ((arg7 == 0) && ((gUnk_03005220.unk58 >> arg4) & 1))
            {
                arg6 = 1;
                gUnk_03004C00 = 1;
            }
            else
            {
                gUnk_03004C00 = 0;
            }
            gUnk_03002920[arg0].unk9 = arg4;
            gUnk_03002920[arg0].unkC_4 = arg6;
            break;

        case 0x37:
            if (gUnk_03004C00 != 0)
            {
                gUnk_03002920[arg0].yPosBg2 += 0x1A;
                arg6 = 1;
            }
            gUnk_03002920[arg0].unkC_4 = arg6;
            break;

        case 0x39:
            gUnk_03002920[arg0].unkC_4 = arg6;
            break;

        case 0x3B:
            if (((gUnk_03005220.unk1_7 >> arg6) & 1) && (arg4 == 0xFF))
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            gUnk_03002920[arg0].unk8 = 0;
            gUnk_03002920[arg0].unk9 = arg4;
            gUnk_03002920[arg0].unkC_4 = 0;
            break;

        case 0x26:
        case 0x27:
        case 0x28:
        case 0x29:
            gUnk_03002920[arg0].unk8 = 0;
            gUnk_03002920[arg0].unk9 = arg4;
            gUnk_03002920[arg0].unkC_4 = arg6;
            break;

        case 0x2E:
        case 0x2F:
        case 0x30:
        case 0x31:
        case 0x32:
            gUnk_03002920[arg0].unkC_4 = arg6;
            if (arg6 == 0)
            {
                gUnk_03002920[arg0].unk8 = 0;
            }
            break;

        case 0x41:
            gUnk_03002920[arg0].affineEnable = 1;
            gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03005288 + 1;
            gUnk_03004680[gUnk_03005288 + 1].unk0 = gUnk_03004680[gUnk_03005288 + 1].unk6 = COS(0);
            gUnk_03004680[gUnk_03005288 + 1].unk4 = SIN(0);
            gUnk_03004680[gUnk_03005288 + 1].unk2 = -SIN(0);
            gUnk_03002920[arg0].unkC_2 = arg6;
            break;

        case 0x35:
        case 0x74:
            gUnk_03002920[arg0].unkC_4 = arg6;
            if (arg6 != 3)
            {
                gUnk_03002920[arg0].unkC_2 = arg6;
            }
            break;

        case 0x73:
            gUnk_03002920[arg0].unk9 = 0;
            break;

        case 0x34:
            if (arg7 != 0x1C)
            {
                arg6 = arg6 ^ gUnk_03005220.unk3_6;
                if (arg6 == 1)
                {
                    if (gUnk_030047B8 == 0)
                    {
                        gUnk_030047B8 = arg0;
                        gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03005288;
                        gUnk_03004680[gUnk_03005288].unk0 = gUnk_03004680[gUnk_03005288].unk6 = 0x100;
                        gUnk_03004680[gUnk_03005288].unk2 = gUnk_03004680[gUnk_03005288].unk4 = 0;
                        gUnk_03005288 += 1;
                    }
                    else
                    {
                        gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03002920[gUnk_030047B8].affineHFlip_matrixNum;
                    }
                }
                else
                {
                    if (gUnk_03005470 == 0)
                    {
                        gUnk_03005470 = arg0;
                        gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03005288;
                        gUnk_03004680[gUnk_03005288].unk0 = gUnk_03004680[gUnk_03005288].unk6 = 0x200;
                        gUnk_03004680[gUnk_03005288].unk2 = gUnk_03004680[gUnk_03005288].unk4 = 0;
                        gUnk_03005288 += 1;
                    }
                    else
                    {
                        gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03002920[gUnk_03005470].affineHFlip_matrixNum;
                    }
                    gUnk_03002920[arg0].unkF = 0x1C;
                }
                gUnk_03002920[arg0].affineEnable = 1;
                gUnk_03002920[arg0].unkC_4 = arg6;
            }
            break;

        case 0x6F:
            if ((arg7 == 0) && ((gUnk_03005220.unk2E >> arg4) & 1))
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            else
            {
                gUnk_03002920[arg0].affineEnable = 1;
                gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03005288;
                gUnk_03004680[gUnk_03005288].unk0 = gUnk_03004680[gUnk_03005288].unk6 = 0x100;
                gUnk_03004680[gUnk_03005288].unk2 = gUnk_03004680[gUnk_03005288].unk4 = 0;
                gUnk_03005288 += 1;
            }
            break;

        case 0x3C:
            gUnk_03002920[arg0].affineEnable = 1;
            gUnk_03002920[arg0].unkC_4 = arg6;
            gUnk_03002920[arg0].unk8 = 0x80;
            if (gUnk_03003610[gUnk_03005298].unk0 == 0)
            {
                gUnk_03003610[gUnk_03005298].unk0 = arg0;
                gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03005288;
                gUnk_03004680[gUnk_03005288].unk0 = MultiplyQ8(COS(0), ReciprocalQ8(0x100));
                gUnk_03004680[gUnk_03005288].unk2 = MultiplyQ8(SIN(0), ReciprocalQ8(0x100));
                gUnk_03004680[gUnk_03005288].unk4 = MultiplyQ8(-SIN(0), ReciprocalQ8(0x100));
                gUnk_03004680[gUnk_03005288].unk6 = MultiplyQ8(COS(0), ReciprocalQ8(gUnk_03002920[arg0].unk8));
                gUnk_03005288 += 1;
                gUnk_03002920[arg0].yPosBg2 += (u8)-gUnk_03002920[arg0].unk8 >> 3;
                gUnk_03002920[arg0 - 1].yPosBg2 += (u8)-gUnk_03002920[arg0].unk8 >> 2;
            }
            else
            {
                gUnk_03003610[gUnk_03005298++].unk1 = arg0;
                gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03005288;
                gUnk_03004680[gUnk_03005288].unk0 = MultiplyQ8(COS(0), ReciprocalQ8(0x100));
                gUnk_03004680[gUnk_03005288].unk2 = MultiplyQ8(SIN(0), ReciprocalQ8(0x100));
                gUnk_03004680[gUnk_03005288].unk4 = MultiplyQ8(-SIN(0), ReciprocalQ8(0x100));
                gUnk_03004680[gUnk_03005288].unk6 = MultiplyQ8(COS(0), ReciprocalQ8(gUnk_03002920[arg0].unk8));
                gUnk_03005288 += 1;
                gUnk_03002920[arg0].yPosBg2 += (u8)-gUnk_03002920[arg0].unk8 >> 3;
                gUnk_03002920[arg0 - 1].yPosBg2 += (u8)-gUnk_03002920[arg0].unk8 >> 2;
            }
            break;

        case 0x7A:
        case 0x7B:
            gUnk_0300528C += 1;
            /* fallthrough */
        case 0x75:
        case 0x76:
        case 0x78:
            gUnk_03002920[arg0].unk8 = 0;
            gUnk_03002920[arg0].unk9 = arg4;
            gUnk_03002920[arg0].unkC_2 = arg6 & 1;
            if (arg8 == 0x79)
            {
                gUnk_03002920[arg0].unkC_4 = arg6;
            }
            break;

        case 0x7C:
            gUnk_0300528C += 1;
            /* fallthrough */
        case 0x77:
        case 0x79:
            gUnk_03002920[arg0].unk8 = 0;
            gUnk_03002920[arg0].unk9 = arg4;
            gUnk_03002920[arg0].unkC_4 = arg6;
            break;

        case 0x5:
        case 0x7:
            gUnk_03002920[arg0].unk8 = 0;
            gUnk_03002920[arg0].unk9 = arg4;
            gUnk_03002920[arg0].unkC_4 = arg6 & 1;
            if (arg6 & 2)
            {
                gUnk_03002920[arg0].affineEnable = 1;
                gUnk_03002920[arg0].affineDouble = 1;
                if (gUnk_030052A8 == 0)
                {
                    gUnk_030052A8 = arg0;
                    gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03005288;
                    gUnk_03004680[gUnk_03005288].unk0 = gUnk_03004680[gUnk_03005288].unk6 = 0x70;
                    gUnk_03004680[gUnk_03005288].unk2 = gUnk_03004680[gUnk_03005288].unk4 = 0;
                    gUnk_03005288 += 1;
                }
                else
                {
                    gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03002920[gUnk_030052A8].affineHFlip_matrixNum;
                }
            }
            break;

        case 0x25:
            gUnk_03002920[arg0].affineEnable = 1;
            gUnk_03002920[arg0].affineDouble = 1;
            gUnk_03002920[arg0].affineHFlip_matrixNum = gUnk_03005288;
            gUnk_03004680[gUnk_03005288].unk0 = gUnk_03004680[gUnk_03005288].unk6 = 0x8000;
            gUnk_03004680[gUnk_03005288].unk2 = gUnk_03004680[gUnk_03005288].unk4 = 0;
            gUnk_03005288 += 1;
            gUnk_03004C38 += 1;
            break;

        case 0x8:
            gUnk_03000790[arg4].unk0 = arg2 - 0xE;
            gUnk_03000790[arg4].unk2 = arg2 + 0xE;
            gUnk_03000790[arg4].unk6 = arg3;
            if (arg7 == 0)
            {
                for (var_r3_3 = arg3 - 0x20; var_r3_3 >= gUnk_03005468.unk2; var_r3_3 -= 8)
                {
                    if (gUnk_03004654[0x18] <= gUnk_03004790.pBufBg2Tilemap[(arg2 >> 3) + (gUnk_03003430.unk48 * (var_r3_3 >> 3))])
                    {
                        gUnk_03000790[arg4].unk4 = var_r3_3 + 8;
                        gUnk_03000790[arg4].unk8 = var_r3_3 + 8;
                        break;
                    }
                }
            }
            /* fallthrough */
        case 0x9:
            gUnk_03002920[arg0].yPosBg2 = gUnk_03000790[arg4].unk8;
            gUnk_03002920[arg0].unkC_4 = arg4;
            break;

        case 0x0:
        case 0x1:
        case 0x3:
            if (gUnk_03005220.unk1_4 & arg8)
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            break;

        case 0x4:
            if ((arg7 == 0) && ((gUnk_03005220.unk14 >> arg4) & 1))
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            gUnk_03002920[arg0].unk9 = arg6;
            break;

        case 0x2D:
            if ((arg7 == 0) && (gUnk_03005220.unk4 & (1 << arg4)))
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            break;

        case 0x2B:
            if (gUnk_0300547C == 0)
            {
                gUnk_0300547C = arg0;
            }
            /* fallthrough */
        case 0x2C:
            if ((arg8 == 0x2D) && (gUnk_03000818 == 0))
            {
                gUnk_03000818 = arg0;
            }
            if (arg4 <= 0x1FU)
            {
                if ((arg7 == 0) && (gUnk_03005220.unk8 & (1 << arg4)))
                {
                    gUnk_03002920[arg0].unkF = 0x1C;
                }
            }
            else if ((arg7 == 0) && (gUnk_03005220.unkC & (1 << (arg4 - 0x20))))
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            gUnk_03002920[arg0].unkC_2 = arg6;
            break;

        case 0x6:
            if (gUnk_030051B4 == 0)
            {
                gUnk_030051B4 = arg0;
                if (gUnk_03004C20.level == 8)
                {
                    gUnk_030051B4 = arg0 + 1;
                }
            }
            if ((arg7 == 0) && ((gUnk_03005220.unk2_7 >> arg4) & 1))
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            gUnk_03002920[arg0].unkC_2 = arg6;
            break;

        case 0x2:
            if (gUnk_030008EC == 0)
            {
                gUnk_030008EC = arg0;
            }
            if ((gUnk_03005220.unk0_2 >> arg4) & 1)
            {
                gUnk_03002920[arg0].unkF = 0x1C;
            }
            gUnk_03002920[arg0].unkC_2 = arg6;
            break;

        default:
            gUnk_03002920[arg0].unkC_2 = arg6;
            break;
    }

    gUnk_03002920[arg0].unk11 = arg8;

    switch (arg8 - 0x25)
    {
        case 0x0:
            if (gUnk_030007F4 == 0)
            {
                gUnk_030007F4 = arg0;
            }
            gUnk_0300290C = arg0;
            /* fallthrough */
        case 0x4:
        case 0x6:
        case 0x10:
        case 0x4A:
        case 0x4B:
            if (gUnk_03005484 == 0)
            {
                gUnk_03005484 = arg0;
            }
            gUnk_03004650 = arg0;
            /* fallthrough */
        case 0x2:
        case 0x3:
        case 0x5:
        case 0x13:
        case 0x19:
        case 0x1A:
        case 0x1C:
            if (gUnk_030051D4 == 0)
            {
                gUnk_030051D4 = arg0;
            }
            gUnk_030034C8 = arg0;
            break;
    }

    switch (arg8 - 0xB)
    {
        case 0x1A:
        case 0x64:
            if (gUnk_03003500 == 0)
            {
                gUnk_03003500 = arg0;
            }
            gUnk_03004664 = arg0;
            /* fallthrough */
        case 0x70:
        case 0x71:
        case 0x72:
            if (gUnk_030047BC == 0)
            {
                gUnk_030047BC = arg0;
            }
            gUnk_030007D4 = arg0;
            /* fallthrough */
        case 0x6B:
        case 0x6C:
        case 0x6D:
            if (gUnk_030047F8 == 0)
            {
                gUnk_030047F8 = arg0;
            }
            gUnk_03003504 = arg0;
            /* fallthrough */
        case 0x0: 
        case 0x8: 
        case 0xB: 
        case 0x14:
        case 0x24:
        case 0x25:
        case 0x26:
        case 0x27:
        case 0x28:
        case 0x30:
        case 0x31:
        case 0x66:
        case 0x67:
        case 0x68:
        case 0x69:
        case 0x6A:
        case 0x6E:
        case 0x6F:
            if (gUnk_030051D8 == 0)
            {
                gUnk_030051D8 = arg0;
            }
            gUnk_03004788 = arg0;
            break;
    }

    switch (arg8 - 5)
    {
        case 0x1:
        case 0x3:
        case 0x20:
        case 0x22:
        case 0x24:
        case 0x25:
        case 0x26:
        case 0x30:
        case 0x39:
        case 0x3A:
        case 0x6A:
        case 0x6B:
            if (gUnk_03003634 == 0)
            {
                gUnk_03003634 = arg0;
            }
            gUnk_03005430 = arg0;
            /* fallthrough */
        case 0x23:
        case 0x31:
        case 0x33:
        case 0x3C:
        case 0x6C:
        case 0x6D:
        case 0x6E:
        case 0x6F:
        case 0x70:
            if (gUnk_03003630 == 0)
            {
                gUnk_03003630 = arg0;
            }
            gUnk_03004674 = arg0;
            /* fallthrough */
        case 0x0:
        case 0x36:
        case 0x37:
            if (arg8 != 0x38)
            {
                if (gUnk_030034D8 == 0)
                {
                    gUnk_030034D8 = arg0;
                }
                gUnk_0300541C = arg0;
            }
            break;
    }

    switch (arg8 - 5)
    {
        case 0x0:
        case 0x19:
        case 0x20:
        case 0x30:
        case 0x33:
        case 0x36:
        case 0x37:
        case 0x3A:
        case 0x3C:
        case 0x6A:
        case 0x6B:
            if (gUnk_030034CC == 0)
            {
                gUnk_030034CC = arg0;
            }
            gUnk_0300529C = arg0;
            break;
    }

    switch (arg8 - 6)
    {
        case 0x1F:
        case 0x21:
        case 0x22:
        case 0x2F:
        case 0x32:
        case 0x38:
        case 0x39:
        case 0x3B:
        case 0x69:
        case 0x6A:
            if (gUnk_03000804 == 0)
            {
                gUnk_03000804 = arg0;
            }
            gUnk_0300082C = arg0;
            /* fallthrough */
        case 0x0: 
        case 0x2: 
        case 0x5: 
        case 0x11:
        case 0x15:
        case 0x1C:
        case 0x23:
        case 0x24:
        case 0x25:
        case 0x30:
        case 0x6B:
        case 0x6C:
        case 0x6D:
        case 0x6E:
        case 0x6F:
        case 0x70:
        case 0x71:
        case 0x72:
        case 0x73:
        case 0x74:
        case 0x75:
        case 0x76:
        case 0x77:
            if (gUnk_030007F0 == 0)
            {
                gUnk_030007F0 = arg0;
            }
            gUnk_03004C04 = arg0;
            break;
    }

    switch (arg8 - 5)
    {
        case 0x1:
        case 0x3:
        case 0x6:
        case 0x13:
        case 0x20:
        case 0x22:
        case 0x24:
        case 0x25:
        case 0x26:
        case 0x30:
        case 0x3A:
        case 0x6A:
        case 0x6B:
        case 0x71:
        case 0x72:
        case 0x73:
        case 0x74:
        case 0x75:
        case 0x76:
        case 0x77:
        case 0x78:
            if (gUnk_030047B4 == 0)
            {
                gUnk_030047B4 = arg0;
            }
            gUnk_03003640 = arg0;
            /* fallthrough */
        case 0x0:
        case 0x12:
        case 0x16:
        case 0x1D:
        case 0x23:
        case 0x31:
        case 0x35:
        case 0x36:
        case 0x37:
        case 0x39:
        case 0x3C:
        case 0x6C:
        case 0x6D:
        case 0x6E:
        case 0x6F:
        case 0x70:
            if (gUnk_030008F4 == 0)
            {
                gUnk_030008F4 = arg0;
            }
            gUnk_030008F0 = arg0;
            break;
    }

    if (arg8 == 0x38)
    {
        if (gUnk_03000824 == 0)
        {
            gUnk_03000824 = arg0;
        }
        gUnk_03005424 = arg0;
    }

    switch (arg8 - 0x25)
    {
        case 0x0:
        case 0x4A:
        case 0x51:
        case 0x56:
        case 0x57:
        case 0x58:
            if (gUnk_03002904 == 0)
            {
                gUnk_03002904 = arg0;
            }
            gUnk_030008FC = arg0;
            /* fallthrough */
        case 0x52:
        case 0x53:
        case 0x54:
        case 0x55:
            if (gUnk_030034A4 == 0)
            {
                gUnk_030034A4 = arg0;
            }
            gUnk_030052B0 = arg0;
            /* fallthrough */
        case 0x10:
        case 0x49:
            if (gUnk_03003638 == 0)
            {
                gUnk_03003638 = arg0;
            }
            gUnk_03002908 = arg0;
            break;
    }

    switch (arg8)
    {
        case 0x6E ... 0x78:
        case 0x7A ... 0x7D:
            if (gUnk_030052B4 == 0)
            {
                gUnk_030052B4 = arg0;
            }
            gUnk_030051C4 = arg0;
            break;
    }
}

// 5CF4
void sub_08005CF4(void)
{
    s32 sp0;
    s32 sp4;
    struct Unk_0300466C_4 *var_r5;
    struct Unk_0300466C_4 *var_r5_2;
    struct Unk_0300466C_4 *var_r6;
    struct Unk_0300466C_4 *var_r6_2;
    struct Unk_0300466C_4 *var_r6_3;
    struct Unk_0300466C_4 *var_r6_4;
    struct Unk_0300466C_4 *var_r6_5;
    u8 temp_r0_4;
    u8 temp_r1;
    u8 temp_r1_12;
    u8 temp_r1_13;
    u8 temp_r1_17;
    u8 temp_r1_18;
    u8 temp_r1_22;
    u8 temp_r1_25;
    u8 temp_r1_26;
    u8 temp_r1_29;
    u8 temp_r1_30;
    u8 temp_r1_4;
    u8 temp_r1_8;
    u8 temp_r1_9;
    s32 var_sb;
    s32 var_sb_2;
    s32 var_sb_3;
    s32 var_sb_4;
    s32 var_sb_5;
    s32 var_sl;

    sub_0800A468();
    gUnk_03000820 = gUnk_03004800;

    if (gUnk_03002920[0xB].unk10 == 1)
    {
        temp_r1_29 = gUnk_03002920[0xB].unkA;
        if (gUnk_03002920[0xB].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0xB].unkA];
        }
        else
        {
            gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[0xB].unkA - 0xD];
        }

        temp_r1 = gUnk_0300466C->unk0;
        var_r5 = gUnk_0300466C->unk4;
        for (var_sl = 0; var_sl < temp_r1; var_sl++)
        {
            if (gUnk_03002920[0xB].affineDouble)
            {
                if (gUnk_03002920[0xB].unk11 == 0x1C)
                {
                    gUnk_03000820->split.x = (var_r5->unk3 * 2) + gUnk_03002920[0xB].xPosScreen + ((s32) (gUnk_03002920[0xB].unkB_0) << 4);
                    gUnk_03000820->split.y = var_r5->unk4 + ((s8)var_r5->unk4 >> 1) + gUnk_03002920[0xB].yPosScreen + (((s8)gUnk_03002920[0xB].unkB_4) << 4);
                }
                else
                {
                    gUnk_03000820->split.x = (var_r5->unk3 * 2) + gUnk_03002920[0xB].xPosScreen + ((s32) (gUnk_03002920[0xB].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = var_r5->unk4 + ((s8)var_r5->unk4 >> 1) + gUnk_03002920[0xB].yPosScreen + ((s8) (gUnk_03002920[0xB].unkB_4));
                }
            }
            else
            {
                gUnk_03000820->split.x = var_r5->unk3 + gUnk_03002920[0xB].xPosScreen + ((s32) (gUnk_03002920[0xB].unkB_0 << 4) >> 4);
                gUnk_03000820->split.y = gUnk_03002920[0xB].yPosScreen + var_r5->unk4 + ((s8) (gUnk_03002920[0xB].unkB_4));
            }

            gUnk_03000820->split.bpp = var_r5->bpp_paletteNum >> 7;
            gUnk_03000820->split.tileNum = var_r5->tileNum;
            gUnk_03000820->split.paletteNum = var_r5->bpp_paletteNum & 0x7F;
            gUnk_03000820->split.shape = (var_r5->shape_size & 0xC) >> 2;
            gUnk_03000820->split.size = var_r5->shape_size & 3;

            gUnk_03000820->split.priority = gUnk_03002920[0xB].priority;
            gUnk_03000820->split.objMode = gUnk_03002920[0xB].objMode;
            gUnk_03000820->split.affineMode = (gUnk_03002920[0xB].affineDouble << 1) | gUnk_03002920[0xB].affineEnable;
            gUnk_03000820->split.matrixNum = gUnk_03002920[0xB].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized 
            if (gUnk_03002920[sp0].affineEnable)
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xB].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xB].unkC_2 & 1;
                gUnk_03000820->split.vFlip = gUnk_03002920[0xB].unkC_2 >> 1;
            }
            
            gUnk_03000820 += 1;
            var_r5 += 1;
        }
    }

    if (gUnk_03002920[0xC].unk10 == 1)
    {
        temp_r1_30 = gUnk_03002920[0xC].unkA;
        if (gUnk_03002920[0xC].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0xC].unkA];
        }
        else
        {
            gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[0xC].unkA - 0xD];
        }

        temp_r1_4 = gUnk_0300466C->unk0;
        var_r5_2 = gUnk_0300466C->unk4;
        for (sp4 = 0; sp4 < temp_r1_4; sp4++)
        {
            if (gUnk_03002920[0xC].affineDouble)
            {
                if (gUnk_03002920[0xC].unk11 == 0x1C)
                {
                    gUnk_03000820->split.x = (var_r5_2->unk3 * 2) + gUnk_03002920[0xC].xPosScreen + ((s32) (gUnk_03002920[0xC].unkB_0) << 4);
                    gUnk_03000820->split.y = var_r5_2->unk4 + ((s8)var_r5_2->unk4 >> 1) + gUnk_03002920[0xC].yPosScreen + (((s8)gUnk_03002920[0xC].unkB_4) << 4);
                }
                else
                {
                    gUnk_03000820->split.x = (var_r5_2->unk3 * 2) + gUnk_03002920[0xC].xPosScreen + ((s32) (gUnk_03002920[0xC].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = var_r5_2->unk4 + ((s8)var_r5_2->unk4 >> 1) + gUnk_03002920[0xC].yPosScreen + ((s8) (gUnk_03002920[0xC].unkB_4));
                }
            }
            else
            {
                gUnk_03000820->split.x = var_r5_2->unk3 + gUnk_03002920[0xC].xPosScreen + ((s32) (gUnk_03002920[0xC].unkB_0 << 4) >> 4);
                gUnk_03000820->split.y = gUnk_03002920[0xC].yPosScreen + var_r5_2->unk4 + ((s8) (gUnk_03002920[0xC].unkB_4));
            }

            gUnk_03000820->split.bpp = var_r5_2->bpp_paletteNum >> 7;
            gUnk_03000820->split.tileNum = var_r5_2->tileNum;
            gUnk_03000820->split.paletteNum = var_r5_2->bpp_paletteNum & 0x7F;
            gUnk_03000820->split.shape = (var_r5_2->shape_size & 0xC) >> 2;
            gUnk_03000820->split.size = var_r5_2->shape_size & 3;

            gUnk_03000820->split.priority = gUnk_03002920[0xC].priority;
            gUnk_03000820->split.objMode = gUnk_03002920[0xC].objMode;
            gUnk_03000820->split.affineMode = (gUnk_03002920[0xC].affineDouble << 1) | gUnk_03002920[0xC].affineEnable;
            gUnk_03000820->split.matrixNum = gUnk_03002920[0xC].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized
            if (gUnk_03002920[sp0].affineEnable)
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xC].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xC].unkC_2 & 1;
                gUnk_03000820->split.vFlip = gUnk_03002920[0xC].unkC_2 >> 1;
            }
            
            gUnk_03000820 += 1;
            var_r5_2 += 1;
        }
    }

    for (sp0 = 1; sp0 <= 8; sp0++)
    {
        if (gUnk_03002920[sp0].unk10 == 1)
        {
            if (gUnk_03000830[sp0].unk0 != 1)
            {
                temp_r1_8 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_9 = gUnk_0300466C->unk0;
                var_r6 = gUnk_0300466C->unk4;
                for (var_sb = 0; var_sb < temp_r1_9; var_sb++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r6->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r6->unk4 + ((s8)var_r6->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r6->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r6->unk4 + ((s8)var_r6->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r6->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r6->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r6->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r6->tileNum;
                    gUnk_03000820->split.paletteNum = var_r6->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r6->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r6->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r6 += 1;
                }
            }
    
            if (gUnk_03000830[sp0].unk0 == 7)
            {
                temp_r1_12 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_13 = gUnk_0300466C->unk0;
                var_r6_2 = gUnk_0300466C->unk4;
                for (var_sb_2 = 0; var_sb_2 < temp_r1_13; var_sb_2++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r6_2->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r6_2->unk4 + ((s8)var_r6_2->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r6_2->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r6_2->unk4 + ((s8)var_r6_2->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r6_2->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r6_2->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r6_2->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r6_2->tileNum;
                    gUnk_03000820->split.paletteNum = var_r6_2->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r6_2->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r6_2->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r6_2 += 1;
                }
            }
        }
    }

    for (sp0 = 0; sp0 <= 0xC; sp0++)
    {
        if (gUnk_03002920[sp0].unk11 == 0x34)
            continue;

        if (sp0 == 0xB || sp0 == 0xC)
            continue;

        if (gUnk_03002920[sp0].unk10 == 1)
        {
            temp_r1_17 = gUnk_03002920[sp0].unkA;
            if (gUnk_03002920[sp0].unkA < 0xD)
            {
                gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
            }
            else
            {
                gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
            }

            temp_r1_18 = gUnk_0300466C->unk0;
            var_r6_3 = gUnk_0300466C->unk4;
            for (var_sb_3 = 0; var_sb_3 < temp_r1_18; var_sb_3++)
            {
                if (gUnk_03002920[sp0].affineDouble)
                {
                    if (gUnk_03002920[sp0].unk11 == 0x1C)
                    {
                        gUnk_03000820->split.x = (var_r6_3->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                        gUnk_03000820->split.y = var_r6_3->unk4 + ((s8)var_r6_3->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                    }
                    else
                    {
                        gUnk_03000820->split.x = (var_r6_3->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = var_r6_3->unk4 + ((s8)var_r6_3->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                }
                else
                {
                    gUnk_03000820->split.x = var_r6_3->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r6_3->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                }
                
                gUnk_03000820->split.bpp = var_r6_3->bpp_paletteNum >> 7;
                gUnk_03000820->split.tileNum = var_r6_3->tileNum;
                gUnk_03000820->split.paletteNum = var_r6_3->bpp_paletteNum & 0x7F;
                gUnk_03000820->split.shape = (var_r6_3->shape_size & 0xC) >> 2;
                gUnk_03000820->split.size = var_r6_3->shape_size & 3;

                gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;

                if (gUnk_03002920[sp0].affineEnable)
                {
                    gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                }
                else
                {
                    gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                    gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                }
                
                gUnk_03000820 += 1;
                var_r6_3 += 1;
            }
        }
    }

    for (sp0 = 0xD; sp0 < gUnk_03005428; sp0++)
    {
        if (gUnk_03002920[sp0].unk10 == 1)
        {
            temp_r0_4 = gUnk_03002920[sp0].unkA;
            if (gUnk_03002920[sp0].unkA < 0xD)
            {
                gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
            }
            else
            {
                gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
            }

            temp_r1_22 = gUnk_0300466C->unk0;
            var_r6_4 = gUnk_0300466C->unk4;
            for (var_sb_4 = 0; var_sb_4 < temp_r1_22; var_sb_4++)
            {
                if (gUnk_03002920[sp0].affineDouble)
                {
                    if (gUnk_03002920[sp0].unk11 == 0x1C)
                    {
                        gUnk_03000820->split.x = (var_r6_4->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                        gUnk_03000820->split.y = var_r6_4->unk4 + ((s8)var_r6_4->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                    }
                    else
                    {
                        gUnk_03000820->split.x = (var_r6_4->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = var_r6_4->unk4 + ((s8)var_r6_4->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                }
                else
                {
                    gUnk_03000820->split.x = var_r6_4->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r6_4->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                }
                
                gUnk_03000820->split.bpp = var_r6_4->bpp_paletteNum >> 7;
                gUnk_03000820->split.tileNum = var_r6_4->tileNum;
                gUnk_03000820->split.paletteNum = var_r6_4->bpp_paletteNum & 0x7F;
                gUnk_03000820->split.shape = (var_r6_4->shape_size & 0xC) >> 2;
                gUnk_03000820->split.size = var_r6_4->shape_size & 3;

                gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;

                if (gUnk_03002920[sp0].affineEnable)
                {
                    gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                }
                else
                {
                    gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                    gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                }
                
                gUnk_03000820 += 1;
                var_r6_4 += 1;
            }
        }
    }

    for (sp0 = 1; sp0 <= 8; sp0++)
    {
        if (gUnk_03002920[sp0].unk10 == 1)
        {
            if (gUnk_03000830[sp0].unk0 == 1)
            {
                temp_r1_25 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_26 = gUnk_0300466C->unk0;
                var_r6_5 = gUnk_0300466C->unk4;
                for (var_sb_5 = 0; var_sb_5 < temp_r1_26; var_sb_5++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r6_5->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r6_5->unk4 + ((s8)var_r6_5->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r6_5->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r6_5->unk4 + ((s8)var_r6_5->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r6_5->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r6_5->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r6_5->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r6_5->tileNum;
                    gUnk_03000820->split.paletteNum = var_r6_5->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r6_5->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r6_5->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r6_5 += 1;
                }
            }
        }
    }
}

// 70A0
// (99.96%) https://decomp.me/scratch/soM8a
NONMATCH("asm/nonmatching/sub_080070A0.inc", void sub_080070A0(void))
{
    s32 sp0;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp24;
    struct Unk_0300466C_4 *var_r5;
    struct Unk_0300466C_4 *var_r5_2;
    struct Unk_0300466C_4 *var_r5_3;
    struct Unk_0300466C_4 *var_r5_4;
    struct Unk_0300466C_4 *var_r5_5;
    struct Unk_0300466C_4 *var_r5_6;
    struct Unk_0300466C_4 *var_r5_7;
    struct Unk_0300466C_4 *var_r7;
    struct Unk_0300466C_4 *var_r7_2;
    struct Unk_0300466C_4 *var_r7_3;
    struct Unk_0300466C_4 *var_r7_4;
    struct Unk_0300466C_4 *var_r7_5;
    struct Unk_0300466C_4 *var_r7_6;
    struct Unk_0300466C_4 *var_r7_7;
    u8 temp_r0_7;
    u8 temp_r1;
    u8 temp_r1_13;
    u8 temp_r1_14;
    u8 temp_r1_18;
    u8 temp_r1_19;
    u8 temp_r1_23;
    u8 temp_r1_24;
    u8 temp_r1_28;
    u8 temp_r1_29;
    u8 temp_r1_32;
    u8 temp_r1_33;
    u8 temp_r1_36;
    u8 temp_r1_37;
    u8 temp_r1_42;
    u8 temp_r1_43;
    u8 temp_r1_46;
    u8 temp_r1_47;
    u8 temp_r1_4;
    u8 temp_r1_51;
    u8 temp_r1_52;
    u8 temp_r1_56;
    u8 temp_r1_59;
    u8 temp_r1_60;
    u8 temp_r1_63;
    u8 temp_r1_64;
    u8 temp_r1_8;
    u8 temp_r1_9;
    s32 var_sb;
    s32 var_sb_2;
    s32 var_sb_3;
    s32 var_sb_4;
    s32 var_sb_5;
    s32 var_sb_6;
    s32 var_sb_7;
    s32 var_sl;

    sub_0800A468();
    gUnk_03000820 = gUnk_03004800;

    if (gUnk_03002920[0xB].unk10 == 1)
    {
        temp_r1_63 = gUnk_03002920[0xB].unkA;
        if (gUnk_03002920[0xB].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0xB].unkA];
        }
        else
        {
            gUnk_0300466C = (void *) &gUnk_030051DC[gUnk_03002920[0xB].unkA - 0xD];
        }

        temp_r1 = gUnk_0300466C->unk0;
        var_r5 = gUnk_0300466C->unk4;

        for (var_sl = 0; var_sl < temp_r1; var_sl++)
        {
            if (gUnk_03002920[0xB].affineDouble)
            {
                if (gUnk_03002920[0xB].unk11 == 0x1C)
                {
                    gUnk_03000820->split.x = (var_r5->unk3 * 2) + gUnk_03002920[0xB].xPosScreen + ((s32) (gUnk_03002920[0xB].unkB_0) << 4);
                    gUnk_03000820->split.y = var_r5->unk4 + ((s8)var_r5->unk4 >> 1) + gUnk_03002920[0xB].yPosScreen + (((s8)gUnk_03002920[0xB].unkB_4) << 4);
                }
                else
                {
                    gUnk_03000820->split.x = (var_r5->unk3 * 2) + gUnk_03002920[0xB].xPosScreen + ((s32) (gUnk_03002920[0xB].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = var_r5->unk4 + ((s8)var_r5->unk4 >> 1) + gUnk_03002920[0xB].yPosScreen + ((s8) (gUnk_03002920[0xB].unkB_4));
                }
            }
            else
            {
                gUnk_03000820->split.x = var_r5->unk3 + gUnk_03002920[0xB].xPosScreen + ((s32) (gUnk_03002920[0xB].unkB_0 << 4) >> 4);
                gUnk_03000820->split.y = gUnk_03002920[0xB].yPosScreen + var_r5->unk4 + ((s8) (gUnk_03002920[0xB].unkB_4));
            }

            gUnk_03000820->split.bpp = var_r5->bpp_paletteNum >> 7;
            gUnk_03000820->split.tileNum = var_r5->tileNum;
            gUnk_03000820->split.paletteNum = var_r5->bpp_paletteNum & 0x7F;
            gUnk_03000820->split.shape = (var_r5->shape_size & 0xC) >> 2;
            gUnk_03000820->split.size = var_r5->shape_size & 3;

            gUnk_03000820->split.priority = gUnk_03002920[0xB].priority;
            gUnk_03000820->split.objMode = gUnk_03002920[0xB].objMode;
            gUnk_03000820->split.affineMode = (gUnk_03002920[0xB].affineDouble << 1) | gUnk_03002920[0xB].affineEnable;
            gUnk_03000820->split.matrixNum = gUnk_03002920[0xB].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized 
            if (gUnk_03002920[sp0].affineEnable)
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xB].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xB].unkC_2 & 1;
                gUnk_03000820->split.vFlip = gUnk_03002920[0xB].unkC_2 >> 1;
            }
            
            gUnk_03000820 += 1;
            var_r5 += 1;
        }
    }

    if (gUnk_03002920[0xC].unk10 == 1)
    {
        temp_r1_64 = gUnk_03002920[0xC].unkA;
        if (gUnk_03002920[0xC].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0xC].unkA];
        }
        else
        {
            gUnk_0300466C = (void *) &gUnk_030051DC[gUnk_03002920[0xC].unkA - 0xD];
        }

        temp_r1_4 = gUnk_0300466C->unk0;
        var_r5_2 = gUnk_0300466C->unk4;

        for (sp8 = 0; sp8 < temp_r1_4; sp8++)
        {
            if (gUnk_03002920[0xC].affineDouble)
            {
                if (gUnk_03002920[0xC].unk11 == 0x1C)
                {
                    gUnk_03000820->split.x = (var_r5_2->unk3 * 2) + gUnk_03002920[0xC].xPosScreen + ((s32) (gUnk_03002920[0xC].unkB_0) << 4);
                    gUnk_03000820->split.y = var_r5_2->unk4 + ((s8)var_r5_2->unk4 >> 1) + gUnk_03002920[0xC].yPosScreen + (((s8)gUnk_03002920[0xC].unkB_4) << 4);
                }
                else
                {
                    gUnk_03000820->split.x = (var_r5_2->unk3 * 2) + gUnk_03002920[0xC].xPosScreen + ((s32) (gUnk_03002920[0xC].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = var_r5_2->unk4 + ((s8)var_r5_2->unk4 >> 1) + gUnk_03002920[0xC].yPosScreen + ((s8) (gUnk_03002920[0xC].unkB_4));
                }
            }
            else
            {
                gUnk_03000820->split.x = var_r5_2->unk3 + gUnk_03002920[0xC].xPosScreen + ((s32) (gUnk_03002920[0xC].unkB_0 << 4) >> 4);
                gUnk_03000820->split.y = gUnk_03002920[0xC].yPosScreen + var_r5_2->unk4 + ((s8) (gUnk_03002920[0xC].unkB_4));
            }

            gUnk_03000820->split.bpp = var_r5_2->bpp_paletteNum >> 7;
            gUnk_03000820->split.tileNum = var_r5_2->tileNum;
            gUnk_03000820->split.paletteNum = var_r5_2->bpp_paletteNum & 0x7F;
            gUnk_03000820->split.shape = (var_r5_2->shape_size & 0xC) >> 2;
            gUnk_03000820->split.size = var_r5_2->shape_size & 3;

            gUnk_03000820->split.priority = gUnk_03002920[0xC].priority;
            gUnk_03000820->split.objMode = gUnk_03002920[0xC].objMode;
            gUnk_03000820->split.affineMode = (gUnk_03002920[0xC].affineDouble << 1) | gUnk_03002920[0xC].affineEnable;
            gUnk_03000820->split.matrixNum = gUnk_03002920[0xC].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized
            if (gUnk_03002920[sp0].affineEnable)
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xC].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xC].unkC_2 & 1;
                gUnk_03000820->split.vFlip = gUnk_03002920[0xC].unkC_2 >> 1;
            }
            
            gUnk_03000820 += 1;
            var_r5_2 += 1;
        }
    }

    if (gUnk_03002920[0xD].unk10 == 1)
    {
        temp_r1_8 = gUnk_03002920[0xD].unkA;
        if (gUnk_03002920[0xD].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0xD].unkA];
        }
        else
        {
            gUnk_0300466C = (void *) &gUnk_030051DC[gUnk_03002920[0xD].unkA - 0xD];
        }

        temp_r1_9 = gUnk_0300466C->unk0;
        var_r5_3 = gUnk_0300466C->unk4;

        for (spC = 0; spC < temp_r1_9; spC++)
        {
            if (gUnk_03002920[0xD].affineDouble)
            {
                if (gUnk_03002920[0xD].unk11 == 0x1C)
                {
                    gUnk_03000820->split.x = (var_r5_3->unk3 * 2) + gUnk_03002920[0xD].xPosScreen + ((s32) (gUnk_03002920[0xD].unkB_0) << 4);
                    gUnk_03000820->split.y = var_r5_3->unk4 + ((s8)var_r5_3->unk4 >> 1) + gUnk_03002920[0xD].yPosScreen + (((s8)gUnk_03002920[0xD].unkB_4) << 4);
                }
                else
                {
                    gUnk_03000820->split.x = (var_r5_3->unk3 * 2) + gUnk_03002920[0xD].xPosScreen + ((s32) (gUnk_03002920[0xD].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = var_r5_3->unk4 + ((s8)var_r5_3->unk4 >> 1) + gUnk_03002920[0xD].yPosScreen + ((s8) (gUnk_03002920[0xD].unkB_4));
                }
            }
            else
            {
                gUnk_03000820->split.x = var_r5_3->unk3 + gUnk_03002920[0xD].xPosScreen + ((s32) (gUnk_03002920[0xD].unkB_0 << 4) >> 4);
                gUnk_03000820->split.y = gUnk_03002920[0xD].yPosScreen + var_r5_3->unk4 + ((s8) (gUnk_03002920[0xD].unkB_4));
            }

            gUnk_03000820->split.bpp = var_r5_3->bpp_paletteNum >> 7;
            gUnk_03000820->split.tileNum = var_r5_3->tileNum;
            gUnk_03000820->split.paletteNum = var_r5_3->bpp_paletteNum & 0x7F;
            gUnk_03000820->split.shape = (var_r5_3->shape_size & 0xC) >> 2;
            gUnk_03000820->split.size = var_r5_3->shape_size & 3;

            gUnk_03000820->split.priority = gUnk_03002920[0xD].priority;
            gUnk_03000820->split.objMode = gUnk_03002920[0xD].objMode;
            gUnk_03000820->split.affineMode = (gUnk_03002920[0xD].affineDouble << 1) | gUnk_03002920[0xD].affineEnable;
            gUnk_03000820->split.matrixNum = gUnk_03002920[0xD].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized
            if (gUnk_03002920[sp0].affineEnable)
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xD].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xD].unkC_2 & 1;
                gUnk_03000820->split.vFlip = gUnk_03002920[0xD].unkC_2 >> 1;
            }
            
            gUnk_03000820 += 1;
            var_r5_3 += 1;
        }

        gUnk_03002920[0xD].unk10 = 0;
    }

    if (gUnk_03002920[0xE].unk10 == 1)
    {
        temp_r1_13 = gUnk_03002920[0xE].unkA;
        if (gUnk_03002920[0xE].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0xE].unkA];
        }
        else
        {
            gUnk_0300466C = (void *) &gUnk_030051DC[gUnk_03002920[0xE].unkA - 0xD];
        }

        temp_r1_14 = gUnk_0300466C->unk0;
        var_r5_4 = gUnk_0300466C->unk4;

        for (sp10 = 0; sp10 < temp_r1_14; sp10++)
        {
            if (gUnk_03002920[0xE].affineDouble)
            {
                if (gUnk_03002920[0xE].unk11 == 0x1C)
                {
                    gUnk_03000820->split.x = (var_r5_4->unk3 * 2) + gUnk_03002920[0xE].xPosScreen + ((s32) (gUnk_03002920[0xE].unkB_0) << 4);
                    gUnk_03000820->split.y = var_r5_4->unk4 + ((s8)var_r5_4->unk4 >> 1) + gUnk_03002920[0xE].yPosScreen + (((s8)gUnk_03002920[0xE].unkB_4) << 4);
                }
                else
                {
                    gUnk_03000820->split.x = (var_r5_4->unk3 * 2) + gUnk_03002920[0xE].xPosScreen + ((s32) (gUnk_03002920[0xE].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = var_r5_4->unk4 + ((s8)var_r5_4->unk4 >> 1) + gUnk_03002920[0xE].yPosScreen + ((s8) (gUnk_03002920[0xE].unkB_4));
                }
            }
            else
            {
                gUnk_03000820->split.x = var_r5_4->unk3 + gUnk_03002920[0xE].xPosScreen + ((s32) (gUnk_03002920[0xE].unkB_0 << 4) >> 4);
                gUnk_03000820->split.y = gUnk_03002920[0xE].yPosScreen + var_r5_4->unk4 + ((s8) (gUnk_03002920[0xE].unkB_4));
            }

            gUnk_03000820->split.bpp = var_r5_4->bpp_paletteNum >> 7;
            gUnk_03000820->split.tileNum = var_r5_4->tileNum;
            gUnk_03000820->split.paletteNum = var_r5_4->bpp_paletteNum & 0x7F;
            gUnk_03000820->split.shape = (var_r5_4->shape_size & 0xC) >> 2;
            gUnk_03000820->split.size = var_r5_4->shape_size & 3;

            gUnk_03000820->split.priority = gUnk_03002920[0xE].priority;
            gUnk_03000820->split.objMode = gUnk_03002920[0xE].objMode;
            gUnk_03000820->split.affineMode = (gUnk_03002920[0xE].affineDouble << 1) | gUnk_03002920[0xE].affineEnable;
            gUnk_03000820->split.matrixNum = gUnk_03002920[0xE].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized
            if (gUnk_03002920[sp0].affineEnable)
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xE].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xE].unkC_2 & 1;
                gUnk_03000820->split.vFlip = gUnk_03002920[0xE].unkC_2 >> 1;
            }
            
            gUnk_03000820 += 1;
            var_r5_4 += 1;
        }

        gUnk_03002920[0xE].unk10 = 0;
    }

    if (gUnk_03002920[0xF].unk10 == 1)
    {
        temp_r1_18 = gUnk_03002920[0xF].unkA;
        if (gUnk_03002920[0xF].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0xF].unkA];
        }
        else
        {
            gUnk_0300466C = (void *) &gUnk_030051DC[gUnk_03002920[0xF].unkA - 0xD];
        }

        temp_r1_19 = gUnk_0300466C->unk0;
        var_r5_5 = gUnk_0300466C->unk4;

        for (sp14 = 0; sp14 < temp_r1_19; sp14++)
        {
            if (gUnk_03002920[0xF].affineDouble)
            {
                if (gUnk_03002920[0xF].unk11 == 0x1C)
                {
                    gUnk_03000820->split.x = (var_r5_5->unk3 * 2) + gUnk_03002920[0xF].xPosScreen + ((s32) (gUnk_03002920[0xF].unkB_0) << 4);
                    gUnk_03000820->split.y = var_r5_5->unk4 + ((s8)var_r5_5->unk4 >> 1) + gUnk_03002920[0xF].yPosScreen + (((s8)gUnk_03002920[0xF].unkB_4) << 4);
                }
                else
                {
                    gUnk_03000820->split.x = (var_r5_5->unk3 * 2) + gUnk_03002920[0xF].xPosScreen + ((s32) (gUnk_03002920[0xF].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = var_r5_5->unk4 + ((s8)var_r5_5->unk4 >> 1) + gUnk_03002920[0xF].yPosScreen + ((s8) (gUnk_03002920[0xF].unkB_4));
                }
            }
            else
            {
                gUnk_03000820->split.x = var_r5_5->unk3 + gUnk_03002920[0xF].xPosScreen + ((s32) (gUnk_03002920[0xF].unkB_0 << 4) >> 4);
                gUnk_03000820->split.y = gUnk_03002920[0xF].yPosScreen + var_r5_5->unk4 + ((s8) (gUnk_03002920[0xF].unkB_4));
            }

            gUnk_03000820->split.bpp = var_r5_5->bpp_paletteNum >> 7;
            gUnk_03000820->split.tileNum = var_r5_5->tileNum;
            gUnk_03000820->split.paletteNum = var_r5_5->bpp_paletteNum & 0x7F;
            gUnk_03000820->split.shape = (var_r5_5->shape_size & 0xC) >> 2;
            gUnk_03000820->split.size = var_r5_5->shape_size & 3;

            gUnk_03000820->split.priority = gUnk_03002920[0xF].priority;
            gUnk_03000820->split.objMode = gUnk_03002920[0xF].objMode;
            gUnk_03000820->split.affineMode = (gUnk_03002920[0xF].affineDouble << 1) | gUnk_03002920[0xF].affineEnable;
            gUnk_03000820->split.matrixNum = gUnk_03002920[0xF].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized
            if (gUnk_03002920[sp0].affineEnable)
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xF].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0xF].unkC_2 & 1;
                gUnk_03000820->split.vFlip = gUnk_03002920[0xF].unkC_2 >> 1;
            }
            
            gUnk_03000820 += 1;
            var_r5_5 += 1;
        }

        gUnk_03002920[0xF].unk10 = 0;
    }

    if (gUnk_03002920[0x10].unk10 == 1)
    {
        temp_r1_23 = gUnk_03002920[0x10].unkA;
        if (gUnk_03002920[0x10].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0x10].unkA];
        }
        else
        {
            gUnk_0300466C = (void *) &gUnk_030051DC[gUnk_03002920[0x10].unkA - 0xD];
        }

        temp_r1_24 = gUnk_0300466C->unk0;
        var_r5_6 = gUnk_0300466C->unk4;

        for (sp18 = 0; sp18 < temp_r1_24; sp18++)
        {
            if (gUnk_03002920[0x10].affineDouble)
            {
                if (gUnk_03002920[0x10].unk11 == 0x1C)
                {
                    gUnk_03000820->split.x = (var_r5_6->unk3 * 2) + gUnk_03002920[0x10].xPosScreen + ((s32) (gUnk_03002920[0x10].unkB_0) << 4);
                    gUnk_03000820->split.y = var_r5_6->unk4 + ((s8)var_r5_6->unk4 >> 1) + gUnk_03002920[0x10].yPosScreen + (((s8)gUnk_03002920[0x10].unkB_4) << 4);
                }
                else
                {
                    gUnk_03000820->split.x = (var_r5_6->unk3 * 2) + gUnk_03002920[0x10].xPosScreen + ((s32) (gUnk_03002920[0x10].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = var_r5_6->unk4 + ((s8)var_r5_6->unk4 >> 1) + gUnk_03002920[0x10].yPosScreen + ((s8) (gUnk_03002920[0x10].unkB_4));
                }
            }
            else
            {
                gUnk_03000820->split.x = var_r5_6->unk3 + gUnk_03002920[0x10].xPosScreen + ((s32) (gUnk_03002920[0x10].unkB_0 << 4) >> 4);
                gUnk_03000820->split.y = gUnk_03002920[0x10].yPosScreen + var_r5_6->unk4 + ((s8) (gUnk_03002920[0x10].unkB_4));
            }

            gUnk_03000820->split.bpp = var_r5_6->bpp_paletteNum >> 7;
            gUnk_03000820->split.tileNum = var_r5_6->tileNum;
            gUnk_03000820->split.paletteNum = var_r5_6->bpp_paletteNum & 0x7F;
            gUnk_03000820->split.shape = (var_r5_6->shape_size & 0xC) >> 2;
            gUnk_03000820->split.size = var_r5_6->shape_size & 3;

            gUnk_03000820->split.priority = gUnk_03002920[0x10].priority;
            gUnk_03000820->split.objMode = gUnk_03002920[0x10].objMode;
            gUnk_03000820->split.affineMode = (gUnk_03002920[0x10].affineDouble << 1) | gUnk_03002920[0x10].affineEnable;
            gUnk_03000820->split.matrixNum = gUnk_03002920[0x10].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized
            if (gUnk_03002920[sp0].affineEnable)
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0x10].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gUnk_03000820->split.hFlip = gUnk_03002920[0x10].unkC_2 & 1;
                gUnk_03000820->split.vFlip = gUnk_03002920[0x10].unkC_2 >> 1;
            }
            
            gUnk_03000820 += 1;
            var_r5_6 += 1;
        }

        gUnk_03002920[0x10].unk10 = 0;
    }

    for (sp0 = 1; sp0 <= 8; sp0++)
    {
        if (gUnk_03002920[sp0].unk10 == 1)
        {
            if (gUnk_03000830[sp0].unk0 != 1)
            {
                temp_r1_28 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_29 = gUnk_0300466C->unk0;
                var_r7 = gUnk_0300466C->unk4;
                for (var_sb = 0; var_sb < temp_r1_29; var_sb++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7->unk4 + ((s8)var_r7->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7->unk4 + ((s8)var_r7->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r7->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7 += 1;
                }
            }
        }
    }

    if (gUnk_03004C20.level == 0x8 && gUnk_03004C20.world == 0x3)
    {
        for (sp0 = 0; sp0 <= 9; sp0++)
        {
            if (gUnk_03002920[sp0 + 0x16].unkF == 0x10 || gUnk_03002920[sp0 + 0x16].unkF == 0x11)
            {
                temp_r1_32 = gUnk_03002920[sp0 + 0x16].unkA;
                if (gUnk_03002920[sp0 + 0x16].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0 + 0x16].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0 + 0x16].unkA - 0xD];
                }
    
                temp_r1_33 = gUnk_0300466C->unk0;
                var_r7_2 = gUnk_0300466C->unk4;
                for (var_sb_2 = 0; var_sb_2 < temp_r1_33; var_sb_2++)
                {
                    if (gUnk_03002920[sp0 + 0x16].affineDouble)
                    {
                        if (gUnk_03002920[sp0 + 0x16].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7_2->unk3 * 2) + gUnk_03002920[sp0 + 0x16].xPosScreen + ((s32) (gUnk_03002920[sp0 + 0x16].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7_2->unk4 + ((s8)var_r7_2->unk4 >> 1) + gUnk_03002920[sp0 + 0x16].yPosScreen + (((s8)gUnk_03002920[sp0 + 0x16].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7_2->unk3 * 2) + gUnk_03002920[sp0 + 0x16].xPosScreen + ((s32) (gUnk_03002920[sp0 + 0x16].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7_2->unk4 + ((s8)var_r7_2->unk4 >> 1) + gUnk_03002920[sp0 + 0x16].yPosScreen + ((s8) (gUnk_03002920[sp0 + 0x16].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7_2->unk3 + gUnk_03002920[sp0 + 0x16].xPosScreen + ((s32) (gUnk_03002920[sp0 + 0x16].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0 + 0x16].yPosScreen + var_r7_2->unk4 + ((s8) (gUnk_03002920[sp0 + 0x16].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7_2->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7_2->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7_2->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7_2->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7_2->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0 + 0x16].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0 + 0x16].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0 + 0x16].affineDouble << 1) | gUnk_03002920[sp0 + 0x16].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0 + 0x16].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0 + 0x16].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0 + 0x16].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0 + 0x16].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7_2 += 1;
                }
            }
        }

        if (gUnk_03005400.unkA != 0xD)
        {

        }
        else if (gUnk_03005400.unk6 == 0)
        {

        }
        else if (gUnk_03002920[0x12].unk10 == 1)
        {
            temp_r1_36 = gUnk_03002920[0x12].unkA;
            if (gUnk_03002920[0x12].unkA < 0xD)
            {
                gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[0x12].unkA];
            }
            else
            {
                gUnk_0300466C = (void *) &gUnk_030051DC[gUnk_03002920[0x12].unkA - 0xD];
            }
            temp_r1_37 = gUnk_0300466C->unk0;
            var_r5_7 = gUnk_0300466C->unk4;

            for (sp24 = 0; sp24 < temp_r1_37; sp24++)
            {
                if (gUnk_03002920[0x12].affineDouble)
                {
                    if (gUnk_03002920[0x12].unk11 == 0x1C)
                    {
                        gUnk_03000820->split.x = (var_r5_7->unk3 * 2) + gUnk_03002920[0x12].xPosScreen + ((s32) (gUnk_03002920[0x12].unkB_0) << 4);
                        gUnk_03000820->split.y = var_r5_7->unk4 + ((s8)var_r5_7->unk4 >> 1) + gUnk_03002920[0x12].yPosScreen + (((s8)gUnk_03002920[0x12].unkB_4) << 4);
                    }
                    else
                    {
                        gUnk_03000820->split.x = (var_r5_7->unk3 * 2) + gUnk_03002920[0x12].xPosScreen + ((s32) (gUnk_03002920[0x12].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = var_r5_7->unk4 + ((s8)var_r5_7->unk4 >> 1) + gUnk_03002920[0x12].yPosScreen + ((s8) (gUnk_03002920[0x12].unkB_4));
                    }
                }
                else
                {
                    gUnk_03000820->split.x = var_r5_7->unk3 + gUnk_03002920[0x12].xPosScreen + ((s32) (gUnk_03002920[0x12].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = gUnk_03002920[0x12].yPosScreen + var_r5_7->unk4 + ((s8) (gUnk_03002920[0x12].unkB_4));
                }
    
                gUnk_03000820->split.bpp = var_r5_7->bpp_paletteNum >> 7;
                gUnk_03000820->split.tileNum = var_r5_7->tileNum;
                gUnk_03000820->split.paletteNum = var_r5_7->bpp_paletteNum & 0x7F;
                gUnk_03000820->split.shape = (var_r5_7->shape_size & 0xC) >> 2;
                gUnk_03000820->split.size = var_r5_7->shape_size & 3;
    
                gUnk_03000820->split.priority = gUnk_03002920[0x12].priority;
                gUnk_03000820->split.objMode = gUnk_03002920[0x12].objMode;
                gUnk_03000820->split.affineMode = (gUnk_03002920[0x12].affineDouble << 1) | gUnk_03002920[0x12].affineEnable;
                gUnk_03000820->split.matrixNum = gUnk_03002920[0x12].affineHFlip_matrixNum;
    
                // BUG: sp0 uninitialized
                if (gUnk_03002920[sp0].affineEnable)
                {
                    gUnk_03000820->split.hFlip = gUnk_03002920[0x12].affineHFlip_matrixNum >> 3;
                }
                else
                {
                    gUnk_03000820->split.hFlip = gUnk_03002920[0x12].unkC_2 & 1;
                    gUnk_03000820->split.vFlip = gUnk_03002920[0x12].unkC_2 >> 1;
                }
                
                gUnk_03000820 += 1;
                var_r5_7 += 1;
            }
        }

        for (sp0 = 0; sp0 <= 0xC; sp0++)
        {
            if (gUnk_03002920[sp0].unk11 == 0x34)
            {
            }
            else if (sp0 == 0xB || sp0 == 0xC)
            {
            }
            else if (gUnk_03002920[sp0].unk10 == 1)
            {
                temp_r1_42 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_43 = gUnk_0300466C->unk0;
                var_r7_3 = gUnk_0300466C->unk4;
                for (var_sb_3 = 0; var_sb_3 < temp_r1_43; var_sb_3++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7_3->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7_3->unk4 + ((s8)var_r7_3->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7_3->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7_3->unk4 + ((s8)var_r7_3->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7_3->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r7_3->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7_3->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7_3->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7_3->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7_3->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7_3->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7_3 += 1;
                }
            }
        }

        for (sp0 = 0xD; sp0 < gUnk_03005428; sp0++)
        {
            if (gUnk_03002920[sp0].unk10 != 1)
            {
            }
            else if ((sp0 >= 0x16 && sp0 <= 0x1F) && (gUnk_03002920[sp0].unkF == 0x10 || gUnk_03002920[sp0].unkF == 0x11))
            {
            }
            else if ((gUnk_03005400.unkA == 0xD) && (gUnk_03005400.unk6 != 0) && (gUnk_03002920[0x12].unk10 == 1) && (sp0 == 0x12))
            {
            }
            else
            {
                temp_r1_46 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_47 = gUnk_0300466C->unk0;
                var_r7_4 = gUnk_0300466C->unk4;
                for (var_sb_4 = 0; var_sb_4 < temp_r1_47; var_sb_4++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7_4->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7_4->unk4 + ((s8)var_r7_4->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7_4->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7_4->unk4 + ((s8)var_r7_4->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7_4->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r7_4->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7_4->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7_4->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7_4->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7_4->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7_4->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7_4 += 1;
                }
            }
        }
    }

    else
    {
        for (sp0 = 0; sp0 <= 0xC; sp0++)
        {
            if (gUnk_03002920[sp0].unk11 == 0x34)
            {
            }
            else if (sp0 == 0xB || sp0 == 0xC)
            {
            }
            else if (gUnk_03002920[sp0].unk10 == 1)
            {
                temp_r1_51 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_52 = gUnk_0300466C->unk0;
                var_r7_5 = gUnk_0300466C->unk4;
                for (var_sb_5 = 0; var_sb_5 < temp_r1_52; var_sb_5++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7_5->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7_5->unk4 + ((s8)var_r7_5->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7_5->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7_5->unk4 + ((s8)var_r7_5->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7_5->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r7_5->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7_5->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7_5->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7_5->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7_5->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7_5->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7_5 += 1;
                }
            }
        }

        for (sp0 = 0xD; sp0 < gUnk_03005428; sp0++)
        {
            if (gUnk_03002920[sp0].unk10 == 1)
            {
                temp_r0_7 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_56 = gUnk_0300466C->unk0;
                var_r7_6 = gUnk_0300466C->unk4;
                for (var_sb_6 = 0; var_sb_6 < temp_r1_56; var_sb_6++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7_6->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7_6->unk4 + ((s8)var_r7_6->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7_6->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7_6->unk4 + ((s8)var_r7_6->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7_6->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r7_6->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7_6->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7_6->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7_6->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7_6->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7_6->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7_6 += 1;
                }
            }
        }
    }

    for (sp0 = 1; sp0 <= 8; sp0++)
    {
        if (gUnk_03002920[sp0].unk10 == 1)
        {
            if (gUnk_03000830[sp0].unk0 == 1)
            {
                temp_r1_59 = gUnk_03002920[sp0].unkA;
                if (gUnk_03002920[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[sp0].unkA - 0xD];
                }
    
                temp_r1_60 = gUnk_0300466C->unk0;
                var_r7_7 = gUnk_0300466C->unk4;
                for (var_sb_7 = 0; var_sb_7 < temp_r1_60; var_sb_7++)
                {
                    if (gUnk_03002920[sp0].affineDouble)
                    {
                        if (gUnk_03002920[sp0].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7_7->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7_7->unk4 + ((s8)var_r7_7->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + (((s8)gUnk_03002920[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7_7->unk3 * 2) + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7_7->unk4 + ((s8)var_r7_7->unk4 >> 1) + gUnk_03002920[sp0].yPosScreen + ((s8) (gUnk_03002920[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7_7->unk3 + gUnk_03002920[sp0].xPosScreen + ((s32) (gUnk_03002920[sp0].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[sp0].yPosScreen + var_r7_7->unk4 + ((s8) (gUnk_03002920[sp0].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7_7->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7_7->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7_7->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7_7->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7_7->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[sp0].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[sp0].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[sp0].affineDouble << 1) | gUnk_03002920[sp0].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[sp0].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[sp0].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[sp0].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[sp0].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7_7 += 1;
                }
            }
        }
    }
}
END_NONMATCH

// 98C8
void sub_080098C8(void)
{
    s32 sp0;
    s32 sp4;
    s32 var_sb;
    s32 var_sb_3;
    s32 var_sb_5;
    s32 var_sl;
    s32 var_sl_2;
    struct Unk_0300466C_4 *var_r7;
    struct Unk_0300466C_4 *var_r7_2;
    struct Unk_0300466C_4 *var_r7_3;
    struct Unk_0300466C_4 *var_r7_4;
    u8 temp_r0;
    u8 temp_r0_5;
    u8 temp_r0_8;
    u8 temp_r1_12;
    u8 temp_r1_15;
    u8 temp_r1_3;
    u8 temp_r1_6;
    u8 temp_r1_7;

    sub_0800A468();
    gUnk_03000820 = gUnk_03004800;

    sp0 = gUnk_03002920->yPosScreen;
    sp4 = gUnk_03002920->xPosScreen;

    for (var_sb = 0xD; var_sb < gUnk_03005428; var_sb++)
    {
        if (gUnk_03002920[var_sb].unk10 == 1)
        {
            if ((gUnk_03002920[var_sb].unk11 == 0x52) && (gUnk_03002920[var_sb].xPosScreen > (sp4 - 0x10)) && (gUnk_03002920[var_sb].xPosScreen < (sp4 + 0x10)) && (gUnk_03002920[var_sb].yPosScreen <= (sp0 + 0xA)) && (gUnk_03002920[var_sb].yPosScreen >= (u32)sp0))
            {
            }
            else if ((gUnk_03002920[var_sb].yPosScreen + gUnk_03002920[var_sb].unk8) <= sp0)
            {
            }
            else
            {
                temp_r0 = gUnk_03002920[var_sb].unkA;
                if (gUnk_03002920[var_sb].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[var_sb].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[var_sb].unkA - 0xD];
                }
    
                temp_r1_3 = gUnk_0300466C->unk0;
                var_r7 = gUnk_0300466C->unk4;
                for (var_sl = 0; var_sl < temp_r1_3; var_sl++)
                {
                    if (gUnk_03002920[var_sb].affineDouble)
                    {
                        if (gUnk_03002920[var_sb].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7->unk3 * 2) + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7->unk4 + ((s8)var_r7->unk4 >> 1) + gUnk_03002920[var_sb].yPosScreen + (((s8)gUnk_03002920[var_sb].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7->unk3 * 2) + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7->unk4 + ((s8)var_r7->unk4 >> 1) + gUnk_03002920[var_sb].yPosScreen + ((s8) (gUnk_03002920[var_sb].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7->unk3 + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[var_sb].yPosScreen + var_r7->unk4 + ((s8) (gUnk_03002920[var_sb].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[var_sb].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[var_sb].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[var_sb].affineDouble << 1) | gUnk_03002920[var_sb].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[var_sb].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[var_sb].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[var_sb].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[var_sb].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[var_sb].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7 += 1;
                }
            }
        }
    }

    for (var_sb = 0; var_sb <= 0xC; var_sb++)
    {
        if (gUnk_03002920[var_sb].unk10 == 1)
        {
            temp_r1_6 = gUnk_03002920[var_sb].unkA;
            if (gUnk_03002920[var_sb].unkA < 0xD)
            {
                gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[var_sb].unkA];
            }
            else
            {
                gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[var_sb].unkA - 0xD];
            }

            temp_r1_7 = gUnk_0300466C->unk0;
            var_r7_2 = gUnk_0300466C->unk4;
            for (var_sb_3 = 0; var_sb_3 < temp_r1_7; var_sb_3++)
            {
                if (gUnk_03002920[var_sb].affineDouble)
                {
                    if (gUnk_03002920[var_sb].unk11 == 0x1C)
                    {
                        gUnk_03000820->split.x = (var_r7_2->unk3 * 2) + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0) << 4);
                        gUnk_03000820->split.y = var_r7_2->unk4 + ((s8)var_r7_2->unk4 >> 1) + gUnk_03002920[var_sb].yPosScreen + (((s8)gUnk_03002920[var_sb].unkB_4) << 4);
                    }
                    else
                    {
                        gUnk_03000820->split.x = (var_r7_2->unk3 * 2) + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = var_r7_2->unk4 + ((s8)var_r7_2->unk4 >> 1) + gUnk_03002920[var_sb].yPosScreen + ((s8) (gUnk_03002920[var_sb].unkB_4));
                    }
                }
                else
                {
                    gUnk_03000820->split.x = var_r7_2->unk3 + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0 << 4) >> 4);
                    gUnk_03000820->split.y = gUnk_03002920[var_sb].yPosScreen + var_r7_2->unk4 + ((s8) (gUnk_03002920[var_sb].unkB_4));
                }
                
                gUnk_03000820->split.bpp = var_r7_2->bpp_paletteNum >> 7;
                gUnk_03000820->split.tileNum = var_r7_2->tileNum;
                gUnk_03000820->split.paletteNum = var_r7_2->bpp_paletteNum & 0x7F;
                gUnk_03000820->split.shape = (var_r7_2->shape_size & 0xC) >> 2;
                gUnk_03000820->split.size = var_r7_2->shape_size & 3;

                gUnk_03000820->split.priority = gUnk_03002920[var_sb].priority;
                gUnk_03000820->split.objMode = gUnk_03002920[var_sb].objMode;
                gUnk_03000820->split.affineMode = (gUnk_03002920[var_sb].affineDouble << 1) | gUnk_03002920[var_sb].affineEnable;
                gUnk_03000820->split.matrixNum = gUnk_03002920[var_sb].affineHFlip_matrixNum;

                if (gUnk_03002920[var_sb].affineEnable)
                {
                    gUnk_03000820->split.hFlip = gUnk_03002920[var_sb].affineHFlip_matrixNum >> 3;
                }
                else
                {
                    gUnk_03000820->split.hFlip = gUnk_03002920[var_sb].unkC_2 & 1;
                    gUnk_03000820->split.vFlip = gUnk_03002920[var_sb].unkC_2 >> 1;
                }
                
                gUnk_03000820 += 1;
                var_r7_2 += 1;
            }
        }
    }

    for (var_sb = 0xD; var_sb < gUnk_03005428; var_sb++)
    {
        if (gUnk_03002920[var_sb].unk10 == 1)
        {
            if (gUnk_03002920[var_sb].unk11 == 0x52)
            {
                if ((gUnk_03002920[var_sb].xPosScreen > (sp4 - 0x10) && gUnk_03002920[var_sb].xPosScreen < (sp4 + 0x10)) && (gUnk_03002920[var_sb].yPosScreen <= (sp0 + 0xA) && gUnk_03002920[var_sb].yPosScreen >= (u32)sp0))
                {
                    temp_r0_8 = gUnk_03002920[var_sb].unkA;
                    if (gUnk_03002920[var_sb].unkA < 0xD)
                    {
                        gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[var_sb].unkA];
                    }
                    else
                    {
                        gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[var_sb].unkA - 0xD];
                    }
        
                    temp_r1_15 = gUnk_0300466C->unk0;
                    var_r7_3 = gUnk_0300466C->unk4;
                    for (var_sl_2 = 0; var_sl_2 < temp_r1_15; var_sl_2++)
                    {
                        if (gUnk_03002920[var_sb].affineDouble)
                        {
                            if (gUnk_03002920[var_sb].unk11 == 0x1C)
                            {
                                gUnk_03000820->split.x = (var_r7_3->unk3 * 2) + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0) << 4);
                                gUnk_03000820->split.y = var_r7_3->unk4 + ((s8)var_r7_3->unk4 >> 1) + gUnk_03002920[var_sb].yPosScreen + (((s8)gUnk_03002920[var_sb].unkB_4) << 4);
                            }
                            else
                            {
                                gUnk_03000820->split.x = (var_r7_3->unk3 * 2) + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0 << 4) >> 4);
                                gUnk_03000820->split.y = var_r7_3->unk4 + ((s8)var_r7_3->unk4 >> 1) + gUnk_03002920[var_sb].yPosScreen + ((s8) (gUnk_03002920[var_sb].unkB_4));
                            }
                        }
                        else
                        {
                            gUnk_03000820->split.x = var_r7_3->unk3 + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = gUnk_03002920[var_sb].yPosScreen + var_r7_3->unk4 + ((s8) (gUnk_03002920[var_sb].unkB_4));
                        }
                        
                        gUnk_03000820->split.bpp = var_r7_3->bpp_paletteNum >> 7;
                        gUnk_03000820->split.tileNum = var_r7_3->tileNum;
                        gUnk_03000820->split.paletteNum = var_r7_3->bpp_paletteNum & 0x7F;
                        gUnk_03000820->split.shape = (var_r7_3->shape_size & 0xC) >> 2;
                        gUnk_03000820->split.size = var_r7_3->shape_size & 3;
        
                        gUnk_03000820->split.priority = gUnk_03002920[var_sb].priority;
                        gUnk_03000820->split.objMode = gUnk_03002920[var_sb].objMode;
                        gUnk_03000820->split.affineMode = (gUnk_03002920[var_sb].affineDouble << 1) | gUnk_03002920[var_sb].affineEnable;
                        gUnk_03000820->split.matrixNum = gUnk_03002920[var_sb].affineHFlip_matrixNum;
        
                        if (gUnk_03002920[var_sb].affineEnable)
                        {
                            gUnk_03000820->split.hFlip = gUnk_03002920[var_sb].affineHFlip_matrixNum >> 3;
                        }
                        else
                        {
                            gUnk_03000820->split.hFlip = gUnk_03002920[var_sb].unkC_2 & 1;
                            gUnk_03000820->split.vFlip = gUnk_03002920[var_sb].unkC_2 >> 1;
                        }
                        
                        gUnk_03000820 += 1;
                        var_r7_3 += 1;
                    }
                }
            }

            if ((gUnk_03002920[var_sb].yPosScreen + gUnk_03002920[var_sb].unk8) <= sp0)
            {
                temp_r0_5 = gUnk_03002920[var_sb].unkA;
                if (gUnk_03002920[var_sb].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gUnk_03002920[var_sb].unkA];
                }
                else
                {
                    gUnk_0300466C = (void*) &gUnk_030051DC[gUnk_03002920[var_sb].unkA - 0xD];
                }
    
                temp_r1_12 = gUnk_0300466C->unk0;
                var_r7_4 = gUnk_0300466C->unk4;
                for (var_sb_5 = 0; var_sb_5 < temp_r1_12; var_sb_5++)
                {
                    if (gUnk_03002920[var_sb].affineDouble)
                    {
                        if (gUnk_03002920[var_sb].unk11 == 0x1C)
                        {
                            gUnk_03000820->split.x = (var_r7_4->unk3 * 2) + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0) << 4);
                            gUnk_03000820->split.y = var_r7_4->unk4 + ((s8)var_r7_4->unk4 >> 1) + gUnk_03002920[var_sb].yPosScreen + (((s8)gUnk_03002920[var_sb].unkB_4) << 4);
                        }
                        else
                        {
                            gUnk_03000820->split.x = (var_r7_4->unk3 * 2) + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0 << 4) >> 4);
                            gUnk_03000820->split.y = var_r7_4->unk4 + ((s8)var_r7_4->unk4 >> 1) + gUnk_03002920[var_sb].yPosScreen + ((s8) (gUnk_03002920[var_sb].unkB_4));
                        }
                    }
                    else
                    {
                        gUnk_03000820->split.x = var_r7_4->unk3 + gUnk_03002920[var_sb].xPosScreen + ((s32) (gUnk_03002920[var_sb].unkB_0 << 4) >> 4);
                        gUnk_03000820->split.y = gUnk_03002920[var_sb].yPosScreen + var_r7_4->unk4 + ((s8) (gUnk_03002920[var_sb].unkB_4));
                    }
                    
                    gUnk_03000820->split.bpp = var_r7_4->bpp_paletteNum >> 7;
                    gUnk_03000820->split.tileNum = var_r7_4->tileNum;
                    gUnk_03000820->split.paletteNum = var_r7_4->bpp_paletteNum & 0x7F;
                    gUnk_03000820->split.shape = (var_r7_4->shape_size & 0xC) >> 2;
                    gUnk_03000820->split.size = var_r7_4->shape_size & 3;
    
                    gUnk_03000820->split.priority = gUnk_03002920[var_sb].priority;
                    gUnk_03000820->split.objMode = gUnk_03002920[var_sb].objMode;
                    gUnk_03000820->split.affineMode = (gUnk_03002920[var_sb].affineDouble << 1) | gUnk_03002920[var_sb].affineEnable;
                    gUnk_03000820->split.matrixNum = gUnk_03002920[var_sb].affineHFlip_matrixNum;
    
                    if (gUnk_03002920[var_sb].affineEnable)
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[var_sb].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gUnk_03000820->split.hFlip = gUnk_03002920[var_sb].unkC_2 & 1;
                        gUnk_03000820->split.vFlip = gUnk_03002920[var_sb].unkC_2 >> 1;
                    }
                    
                    gUnk_03000820 += 1;
                    var_r7_4 += 1;
                }
            }
        }
    }
}

// A468
void sub_0800A468(void)
{
    s32 var_r2;
    u16 *var_r5;
    union Unk_03000820 var;
    

    var_r5 = (u16*)gUnk_03004680;
    var = gUnk_080E2A7C;

    for (var_r2 = 0; var_r2 < 0x80; var_r2++)
    {
        gUnk_03004800[var_r2].all = var.all;
        gUnk_03004800[var_r2].all.affineParam = *var_r5++;
    }
}

// A49C
void sub_0800A49C(void)
{
    s32 var_r5;

    gUnk_03002920[0].xPosScreen = gUnk_03002920[0].xPosBg2 - gUnk_03003430.bg2HOfs;
    gUnk_03002920[0].yPosScreen = gUnk_03002920[0].yPosBg2 - gUnk_03003430.bg2VOfs;

    if (gUnk_03002920[0x9].unk10 == 1)
    {
        gUnk_03002920[0x9].xPosScreen = gUnk_03002920[0x9].xPosBg2 - gUnk_03003430.bg2HOfs;
        gUnk_03002920[0x9].yPosScreen = gUnk_03002920[0x9].yPosBg2 - gUnk_03003430.bg2VOfs;
        gUnk_03002920[0xA].xPosScreen = gUnk_03002920[0xA].xPosBg2 - gUnk_03003430.bg2HOfs;
        gUnk_03002920[0xA].yPosScreen = gUnk_03002920[0xA].yPosBg2 - gUnk_03003430.bg2VOfs;
    }

    for (var_r5 = 1; var_r5 < gUnk_03005428; var_r5++)
    {
        if (var_r5 == 9)
        {
            var_r5 = 0xD;
        }

        if (gUnk_03002920[var_r5].unkF < 0x19)
        {
            gUnk_03002920[var_r5].xPosScreen = gUnk_03002920[var_r5].xPosBg2 - gUnk_03003430.bg2HOfs;
            gUnk_03002920[var_r5].yPosScreen = gUnk_03002920[var_r5].yPosBg2 - gUnk_03003430.bg2VOfs;
            if ((gUnk_03002920[var_r5].xPosScreen >= (DISPLAY_WIDTH + 35) && gUnk_03002920[var_r5].xPosScreen <= (u16)(-36))
                || (gUnk_03002920[var_r5].yPosScreen >= (DISPLAY_HEIGHT + 64) && gUnk_03002920[var_r5].yPosScreen <= (u16)(-36)))
            {
                gUnk_03002920[var_r5].unk10 = 0;
            }
            else
            {
                gUnk_03002920[var_r5].unk10 = 1;
            }
        }
    }
}

// A5B8
void sub_0800A5B8(u8 arg0, s8 arg1, s8 arg2)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s16 temp_r1;
    s16 temp_r2;
    s32 var_r2;
    s32 var_r4;
    struct Unk_0300466C_4 *var_r0;

    arg1++,arg1--; //fake
    gUnk_03002920[arg0].xPosScreen = gUnk_03002920[arg0].xPosBg2 - arg1 - gUnk_03003430.bg2HOfs;
    gUnk_03002920[arg0].yPosScreen = gUnk_03002920[arg0].yPosBg2 - arg2 - gUnk_03003430.bg2VOfs;

    temp_r1 = gUnk_03003430.bg2HOfs - gUnk_03002920[arg0].xPosScreen;
    temp_r2 = gUnk_03003430.bg2VOfs - gUnk_03002920[arg0].yPosScreen;

    temp_r0 = temp_r1 * gBg2XMag;
    if (temp_r0 < 0)
    {
        temp_r0 += 0xFF;
    }
    var_r4 = temp_r0 >> 8;

    temp_r0_2 = temp_r2 * gBg2YMag;
    if (temp_r0_2 < 0)
    {
        temp_r0_2 += 0xFF;
    }
    var_r2 = temp_r0_2 >> 8;

    var_r4 = gUnk_03003430.bg2HOfs - var_r4;
    if (arg0 > 0xC)
    {
        var_r0 = (void*)gUnk_030051DC[arg0 - 0xD].unk4;
    }
    else
    {
        var_r0 = gUnk_08078FC8[arg0].unk4;
    }

    switch (var_r0->shape_size & 0xF)
    {
        case 3:
        case 11:
            var_r2 = gUnk_03003430.bg2VOfs - var_r2 + ((0x100 - gBg2YMag) >> 3);
            break;

        case 1:
        case 6:
        case 8:
            var_r2 = gUnk_03003430.bg2VOfs - var_r2 + ((0x100 - gBg2YMag) >> 5);
            break;

        case 0:
        case 4:
        case 5:
            var_r2 = gUnk_03003430.bg2VOfs - var_r2 + ((0x100 - gBg2YMag) >> 6);
            break;

        default:
            var_r2 = gUnk_03003430.bg2VOfs - var_r2 + ((0x100 - gBg2YMag) >> 4);
            break;
    }

    gUnk_03002920[arg0].xPosScreen = var_r4;
    gUnk_03002920[arg0].yPosScreen = var_r2;
}

// A71C
void sub_0800A71C(s8 arg0, s8 arg1)
{
    s32 var_r5;

    for (var_r5 = 0; var_r5 < 0xB; var_r5++)
    {
        sub_0800A5B8(var_r5, arg0, arg1);
    }

    for (var_r5 = 0xD; var_r5 < gUnk_03005428; var_r5++)
    {
        if (gUnk_03002920[var_r5].unkF == 0x1A)
        {
            gUnk_03002920[var_r5].unk10 = 0;
            continue;
        }

        if (gUnk_03002920[var_r5].affineEnable == 1)
        {
            if (gUnk_03002920[var_r5].unkF < 0x19)
            {
                sub_0800A5B8(var_r5, arg0, arg1);
                if (gUnk_03002920[var_r5].unk11 != 0)
                {
                    if ((gUnk_03002920[var_r5].xPosScreen >= (DISPLAY_WIDTH + 67) && gUnk_03002920[var_r5].xPosScreen <= (u16)(-68))
                        || (gUnk_03002920[var_r5].yPosScreen >= (DISPLAY_HEIGHT + 96) && gUnk_03002920[var_r5].yPosScreen <= (u16)(-68)))
                    {
                        gUnk_03002920[var_r5].unk10 = 0;
                    }
                    else
                    {
                        gUnk_03002920[var_r5].unk10 = 1;
                    }
                }
            }
        }
        else
        {
            if (gUnk_03002920[var_r5].unkF == 0x1C)
            {
                gUnk_03002920[var_r5].unk10 = 0;
                
            }
            else
            {
                gUnk_03002920[var_r5].xPosScreen = gUnk_03002920[var_r5].xPosBg2;
                gUnk_03002920[var_r5].yPosScreen = gUnk_03002920[var_r5].yPosBg2;
                gUnk_03002920[var_r5].unk10 = 1;
            }
        }
    }
}

extern void sub_0800D188(void);
extern void sub_08014318(void);
extern void sub_08014760(u8);
extern void sub_08016EEC(u8);
extern void sub_0801B044(u8);
extern void sub_0801B688(u8);
extern void sub_0801BB6C(u8);
extern void sub_0801BCC0(u8);
extern void sub_0801BD48(u8);
extern void sub_0801C150(u8);
extern void sub_0801C6EC(u8);
extern void sub_0801C82C(u32); // should be u8 param
extern void sub_0801CE38(u8);
extern void sub_0801D0D8(u8);
extern void sub_0801D4AC(u8);
extern void sub_0801D6B0(u8);
extern void sub_0801DE44(u8);
extern void sub_0801DFC4(u8);
extern void sub_0801E1A8(u8);
extern void sub_0801E354(u8);
extern void sub_0801E3FC(void);
extern void sub_08025BA4(void);
extern void sub_08039D8C(void);
extern void sub_08024718(void);
extern void sub_08024C34(void);

// A804
void sub_0800A804(void)
{
    u32 var_r2;
    u32 var_r4;

    if ((gNewKeys & START_BUTTON) && (gUnk_030034E4 == 0) && (gUnk_03005220.unk46 == 0))
    {
        for (var_r2 = 0; var_r2 < 10; var_r2++)
        {
            gCallbackQueue.previous[var_r2] = gCallbackQueue.current[var_r2];
        }

        gCallbackQueue.previousCount = gCallbackQueue.currentCount;
        gUnk_030034BC = 0;
        gUnk_03003410.unk4 = 1;
        gCallbackQueue.next[0] = sub_08039D8C;
        gCallbackQueue.next[1] = sub_0800BFF4;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gCallbackQueue.currentCount = 1;
        gCallbackQueue.current[0] = NULL;
        return;
    }

    if (gUnk_030052A0 == 0xFE)
    {
        if ((gCallbackQueue.current[4] != sub_08024C34) && (gCallbackQueue.current[4] != sub_08024718))
        {
            sub_0800D188();
        }

        for (var_r4 = 0xD; var_r4 < gUnk_03005428; var_r4++)
        {
            if (gUnk_03002920[var_r4].unkF != 0x1C)
            {
                switch (gUnk_03002920[var_r4].unk11 - 1)
                {
                    case 0x24:
                    case 0x6E:
                        if (gUnk_03002920[var_r4].unk8 != 1)
                        {
                            sub_08014760(var_r4);
                        }
                        break;

                    case 0x5:
                    case 0x7:
                    case 0xA:
                    case 0x75:
                    case 0x76:
                    case 0x77:
                    case 0x78:
                    case 0x79:
                    case 0x7A:
                    case 0x7B:
                    case 0x7C:
                        sub_08016EEC(var_r4);
                        break;

                    case 0x0:
                    case 0x1:
                    case 0x3:
                        sub_0801CE38(var_r4);
                        break;

                    case 0x2E:
                    case 0x2F:
                    case 0x30:
                    case 0x31:
                    case 0x32:
                        sub_0801B688(var_r4);
                        break;

                    case 0x26:
                    case 0x27:
                    case 0x28:
                    case 0x29:
                    case 0x2A:
                        sub_0801BD48(var_r4);
                        break;

                    case 0x3E:
                        sub_0801BB6C(var_r4);
                        break;

                    case 0x3F:
                        sub_0801BCC0(var_r4);
                        break;

                    case 0x36:
                    case 0x70:
                    case 0x71:
                    case 0x73:
                        sub_0801C150(var_r4);
                        break;

                    case 0x38:
                        sub_0801C6EC(var_r4);
                        break;

                    case 0x3C:
                        sub_0801C82C(var_r4);
                        break;

                    case 0x8:
                    case 0x9:
                        sub_0801D0D8(var_r4);
                        break;

                    case 0x34:
                        if ((var_r4 == gUnk_030047B8) || (var_r4 == gUnk_03005470))
                        {
                            sub_0801D4AC(var_r4);
                        }
                        break;

                    case 0x6F:
                        sub_0801D4AC(var_r4);
                        break;

                    case 0xB:
                        sub_0801DE44(var_r4);
                        break;

                    case 0x42:
                        sub_0801DFC4(var_r4);
                        break;

                    case 0x74:
                        if (gUnk_03002920[var_r4].unk8 != 0)
                        {
                            gUnk_03002920[var_r4].unk8 -= 1;
                        }
                        break;

                    case 0x25:
                        sub_0801D6B0(var_r4);
                        break;

                    case 0x41:
                        {
                            // FAKE!
                            u16 *tmp = (void*)&gUnk_03002920[var_r4];
                            if (tmp[4] != 0)
                            {
                                sub_0801B044(var_r4);
                            }
                        }
                        break;

                    case 0x2:
                        if (gUnk_03002920[var_r4].unkF == 2)
                        {
                            sub_0801E1A8(var_r4);
                        }
                        break;

                    case 0x2D:
                        if (gUnk_03002920[var_r4].unkF == 2)
                        {
                            sub_0801E354(var_r4);
                        }
                        break;
                }
            }
        }

        sub_08025BA4();
    }

    if (gUnk_0300528C != 0)
    {
        sub_0801E3FC();
    }

    if (gUnk_03005220.unk3F != 0)
    {
        sub_08014318();
    }
}

extern void sub_0801F02C(u8);
extern void sub_0801F128(u8);
extern void sub_0801F4D0(s32);
extern void sub_0801F648(u8);
extern void sub_0801FADC(u8);
extern void sub_0801FFF0(u8);
extern void sub_080202D4(u8);
extern void sub_08020FB8(u8);
extern void sub_08021194(u8);
extern void sub_0802192C(u8);
extern void sub_08021AD4(u8);
extern void sub_08021DAC(s32);
extern void sub_08022CA0(u8);
extern void sub_08023988(u8);
extern void sub_08023BC0(u8);
extern void sub_08025B78(s32, u8);
extern void sub_0803CE14(u8);

// AC34
void sub_0800AC34(void)
{
    s32 var_r6;
    struct Unk_03002920 *temp_r1_2;
    struct Unk_03002920 *temp_r1_5;
    u32 var_r2;

    if (gUnk_03005220.unk0_0 == 0)
    {
        gUnk_03002920->priority = 0;
    }

    if ((gNewKeys & START_BUTTON) && (gUnk_030034E4 == 0) && (gUnk_03005220.unk46 == 0) && (gUnk_03005400.unkC != 0))
    {
        for (var_r2 = 0; var_r2 < 10; var_r2++)
        {
            gCallbackQueue.previous[var_r2] = gCallbackQueue.current[var_r2];
        }

        gCallbackQueue.previousCount = gCallbackQueue.currentCount;
        if ((gUnk_03004C20.world == 5) && ((gUnk_03005400.unkA == 5) || (gUnk_03005400.unkA == 7) || (gUnk_03005400.unkA == 9)))
        {
            gUnk_030034BC = 1;
        }
        else
        {
            gUnk_030034BC = 0;
        }

        gUnk_03003410.unk4 = 1;
        gCallbackQueue.next[0] = sub_08039D8C;
        gCallbackQueue.next[1] = sub_0800C108;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gCallbackQueue.currentCount = 1;
        gCallbackQueue.current[0] = NULL;
        return;
    }

    sub_08025BA4();

    for (var_r6 = 0; var_r6 < gUnk_03005428; var_r6++)
    {
        if (gUnk_03002920[var_r6].unk11 == 7)
        {
            if (gUnk_03002920[var_r6].unkF == 0x1C)
            {
                if (gUnk_03002920[var_r6].unk8 == 0)
                {
                    if (gUnk_03005400.unk2 < 0xE10)
                    {
                        gUnk_03005400.unk2 += 1;
                    }
                    if (gUnk_03005400.unk2 == 0xE10)
                    {
                        gUnk_03002920[var_r6].unkF = 0x19;
                        gUnk_03005400.unk2 = 0;
                    }
                }
            }
        }

        if (gUnk_03002920[var_r6].unkF != 0x1C)
        {
            if (gUnk_03002920[var_r6].unk11 != 0)
            {
                gUnk_03002920[var_r6].affineHFlip_matrixNum = gUnk_03002920[var_r6].unkC_2;
                gUnk_03002920[var_r6].affineDouble = 0;

                switch (gUnk_03002920[var_r6].unk11 - 7)
                {
                    case 0x4:
                    case 0x6F:
                    case 0x70:
                    case 0x71:
                        if (gUnk_03004C20.world == 2)
                        {
                            if (gUnk_03002920[var_r6].unkF == 0x13)
                            {
                                gUnk_03002920[var_r6].affineHFlip_matrixNum = gUnk_03005288;
                            }
                        }
                        sub_08016EEC((u8) var_r6);
                        break;

                    case 0x0:
                        gUnk_03002920[var_r6].affineHFlip_matrixNum = 4;
                        gUnk_03002920[var_r6].affineDouble = 1;
                        sub_0801F02C((u8) var_r6);
                        break;

                    case 0x9:
                        switch (gUnk_03002920[var_r6].unkF)
                        {
                            case 0:
                                break;

                            case 25:
                                sub_08025B78(var_r6, 0);
                                gUnk_03002920[var_r6].unk10 = 1;
                                gUnk_03002920[var_r6].unkF = 0;
                                break;
                        }
                        break;

                    case 0xA:
                        sub_0801F128((u8) var_r6);
                        break;

                    case 0xB:
                        sub_0801F4D0(var_r6);
                        break;

                    case 0xC:
                        sub_0801F648((u8) var_r6);
                        break;

                    case 0xD:
                        sub_0801FADC((u8) var_r6);
                        break;

                    case 0xF:
                        sub_0801FFF0((u8) var_r6);
                        break;

                    case 0xE:
                        gUnk_03002920[var_r6].affineEnable = 1;
                        gUnk_03002920[var_r6].affineHFlip_matrixNum = 3;
                        if (gUnk_03000830[0x12 - gUnk_0300363C].unk0 == 0)
                        {
                            gUnk_03002920[var_r6].unkF = 0;
                            gUnk_03002920[var_r6].unk10 = 1;
                            gUnk_03002920[var_r6].xPosBg2 = gUnk_03002920[0x12].xPosBg2;
                            gUnk_03002920[var_r6].yPosBg2 = gUnk_03002920[0x12].yPosBg2 - 0x3C;
                        }
                        else
                        {
                            gUnk_03002920[var_r6].unkF = 0x1A;
                            gUnk_03002920[var_r6].unk10 = 0;
                        }
                        break;

                    case 0x10:
                        gUnk_03002920[var_r6].affineDouble = 1;
                        sub_080202D4((u8) var_r6);
                        break;

                    case 0x11:
                        sub_08021194((u8) var_r6);
                        break;

                    case 0x12:
                        sub_08020FB8((u8) var_r6);
                        break;

                    case 0x13:
                        sub_0802192C((u8) var_r6);
                        break;

                    case 0x16:
                        sub_08021AD4((u8) var_r6);
                        break;

                    case 0x15:
                        gUnk_03002920[var_r6].affineHFlip_matrixNum = 5;
                        gUnk_03002920[var_r6].affineDouble = 1;
                        sub_08022CA0((u8) var_r6);
                        break;

                    case 0x17:
                        gUnk_03002920[var_r6].affineHFlip_matrixNum = 6;
                        gUnk_03003590[3].unk5_0 = gUnk_03002920[var_r6].unkC_2;
                        sub_08023988((u8) var_r6);
                        break;

                    case 0x14:
                        sub_08021DAC(var_r6);
                        break;

                    case 0x18:
                        if (var_r6 > 0x18)
                        {
                            gUnk_03002920[var_r6].affineHFlip_matrixNum = 10;
                        }
                        else
                        {
                            gUnk_03002920[var_r6].affineHFlip_matrixNum = var_r6 - 0xF;
                        }
                        sub_08023BC0((u8) var_r6);
                        break;

                    case 0x1B:
                        gUnk_030034A8((u8) var_r6);
                        break;

                    case 0x2:
                    case 0x3:
                        sub_0801D0D8((u8) var_r6);
                        break;

                    case 0x28:
                    case 0x29:
                    case 0x2A:
                    case 0x2B:
                    case 0x2C:
                        sub_0801B688((u8) var_r6);
                        break;

                    case 0x2F:
                        gUnk_03002920[var_r6].affineHFlip_matrixNum = var_r6 - 0x13;
                        gUnk_03003590[var_r6 - 0x16].unk2 = 0x40;
                        gUnk_03003590[var_r6 - 0x16].unk0 = 0x40;
                        gUnk_03003590[var_r6 - 0x16].unk5_0 = gUnk_03002920[var_r6].unkC_2;

                        if (gUnk_03002920[var_r6].unkC_2 & 2)
                        {
                            gUnk_03003590[var_r6 - 0x16].unk4 = 0x80;
                        }
                        else
                        {
                            gUnk_03003590[var_r6 - 0x16].unk4 = 0;
                        }
                        break;

                    case 0x3D:
                    case 0x3E:
                        temp_r1_2 = &gUnk_03002920[gUnk_080E2A84[gUnk_03004C20.world - 1][var_r6 - gUnk_080E2A84[gUnk_03004C20.world - 1][0]]];
                        if (((temp_r1_2->unk11 != 0x22) && (temp_r1_2->unkF == 0x1C)) || (temp_r1_2->unkF == 0x19))
                        {
                            gUnk_03002920[var_r6].xPosBg2 = 0x200;
                            break;
                        }

                        gUnk_03002920[var_r6].xPosBg2 = temp_r1_2->xPosBg2;
                        gUnk_03002920[var_r6].yPosBg2 = gUnk_03002920[gUnk_080E2A84[gUnk_03004C20.world - 1][var_r6 - gUnk_080E2A84[gUnk_03004C20.world - 1][0]]].yPosBg2 & ~7;
                        
                        temp_r1_5 = &gUnk_03002920[gUnk_080E2A84[gUnk_03004C20.world - 1][var_r6 - gUnk_080E2A84[gUnk_03004C20.world - 1][0]]];
                        if (temp_r1_5->unk11 == 0x22)
                        {
                            if (temp_r1_5->unkC_2 == 0)
                            {
                                gUnk_03002920[var_r6].xPosBg2 -= 6;
                            }
                            else
                            {
                                gUnk_03002920[var_r6].xPosBg2 += 9;
                            }

                            gUnk_03002920[var_r6].affineHFlip_matrixNum = 5;
                            gUnk_03002920[var_r6].affineDouble = 1;
                            gUnk_03003590[2].unk0 = 0x100;
                            gUnk_03003590[2].unk2 = 0x80;
                        }

                        while (1)
                        {
                            u32 tmp2 = gUnk_03004790.pBufBg2Tilemap[(gUnk_03002920[var_r6].xPosBg2 >> 3) + ((gUnk_03002920[var_r6].yPosBg2 >> 3) * gUnk_03003430.unk48)];
                            if (gUnk_03004654[0x1B] <= tmp2)
                            {
                                gUnk_03002920[var_r6].yPosBg2 += 0xA;
                                break;
                            }

                            gUnk_03002920[var_r6].yPosBg2 += 8;
                        }
                        
                        break;

                    case 0x19:
                        sub_0803CE14((u8) var_r6);
                        break;
                }
            }
        }
    }

    if (gUnk_03005400.unkE_7 && (gCallbackQueue.current[4] != sub_08024C34) && (gCallbackQueue.current[4] != sub_08024718))
    {
        sub_0800D188();
    }

    if (gUnk_03005220.unk37 != 0)
    {
        sub_08025BA4();
    }

    if (gUnk_03005220.unk3F != 0)
    {
        sub_08014318();
    }
}

extern void sub_08044F6C(u8);

// B3C0
void sub_0800B3C0(void)
{
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 temp_r3_3;
    u32 var_sb;

    sp14 = 0;
    sp18 = 0;
    sp1C = 0;
    sp20 = 0;
    sp24 = 0;
    sp28 = 0;

    sub_08003DA0();
    gUnk_03005428 = 0xD;

    // gUnk_03003610->unk3 = 0;
    // gUnk_03003610->unk2 = 0;
    // gUnk_03004C38 = 0;
    // gUnk_030052A8 = 0;
    // gUnk_030034E0 = 0;
    // gUnk_03005470 = 0;
    // gUnk_030047B8 = 0;
    // gUnk_03005288 = 0;
    // gUnk_0300528C = 0;
    // gUnk_03005298 = 0;

    gUnk_03005298 = gUnk_0300528C = gUnk_03005288 = gUnk_030047B8 = gUnk_03005470 = gUnk_030034E0 = gUnk_030052A8 = gUnk_03004C38 = gUnk_03003610[0].unk2 = gUnk_03003610[0].unk3 = 0;

    // gUnk_030008FC = 0;
    // gUnk_03002904 = 0;
    // gUnk_03003504 = 0;
    // gUnk_030047F8 = 0;
    // gUnk_030007D4 = 0;
    // gUnk_030047BC = 0;
    // gUnk_03002908 = 0;
    // gUnk_03003638 = 0;
    // gUnk_030052B0 = 0;
    // gUnk_030034A4 = 0;
    // gUnk_030051C4 = 0;
    // gUnk_030052B4 = 0;
    // gUnk_03005424 = 0;
    // gUnk_03000824 = 0;
    // gUnk_03004C04 = 0;
    // gUnk_030007F0 = 0;
    // gUnk_030008F0 = 0;
    // gUnk_030008F4 = 0;
    // gUnk_03003640 = 0;
    // gUnk_030047B4 = 0;
    // gUnk_0300082C = 0;
    // gUnk_03000804 = 0;
    // gUnk_0300529C = 0;
    // gUnk_030034CC = 0;
    // gUnk_0300541C = 0;
    // gUnk_030034D8 = 0;
    // gUnk_03005430 = 0;
    // gUnk_03003634 = 0;
    // gUnk_03004674 = 0;
    // gUnk_03003630 = 0;
    // gUnk_03004788 = 0;
    // gUnk_030051D8 = 0;
    // gUnk_03004664 = 0;
    // gUnk_03003500 = 0;
    // gUnk_030034C8 = 0;
    // gUnk_030051D4 = 0;
    // gUnk_0300290C = 0;
    // gUnk_030007F4 = 0;
    // gUnk_03004650 = 0;
    // gUnk_03005484 = 0;

    gUnk_03005484 = gUnk_03004650 = gUnk_030007F4 = gUnk_0300290C = gUnk_030051D4 = gUnk_030034C8 = gUnk_03003500 = gUnk_03004664 = 
    gUnk_030051D8 = gUnk_03004788 = gUnk_03003630 = gUnk_03004674 = gUnk_03003634 = gUnk_03005430 = gUnk_030034D8 = gUnk_0300541C = 
    gUnk_030034CC = gUnk_0300529C = gUnk_03000804 = gUnk_0300082C = gUnk_030047B4 = gUnk_03003640 = gUnk_030008F4 = gUnk_030008F0 = 
    gUnk_030007F0 = gUnk_03004C04 = gUnk_03000824 = gUnk_03005424 = gUnk_030052B4 = gUnk_030051C4 = gUnk_030034A4 = gUnk_030052B0 = 
    gUnk_03003638 = gUnk_03002908 = gUnk_030047BC = gUnk_030007D4 = gUnk_030047F8 = gUnk_03003504 = gUnk_03002904 = gUnk_030008FC = 0;

    for (var_sb = 0; var_sb < 3; var_sb++)
    {
        gUnk_03003610[var_sb].unk1 = 0;
        gUnk_03003610[var_sb].unk0 = 0;
    }

    // gUnk_030008EC = 0;
    // gUnk_030051B4 = 0;
    // gUnk_03000818 = 0;
    // gUnk_0300547C = 0;

    gUnk_0300547C = gUnk_03000818 = gUnk_030051B4 = gUnk_030008EC = 0;

    for (var_sb = 0; gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[0].unk0 != 0xFFFF; var_sb++)
    {
        sub_08003DC0(gUnk_03005428++, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk28, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk0, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk2, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk4, 0, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk5, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk6, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk29);

        // TODO: figure out which checks make more sense
        // if (gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x38 && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x39
        //    && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x3A && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x3B
        //    && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x3C && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x3D
        //    && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x3E && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x3F
        //    && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x40 && gUnk_03002920[gUnk_03005428 - 1].unk11 != 0x41)
        if ((gUnk_03002920[gUnk_03005428 - 1].unk11 <= 0x37 || gUnk_03002920[gUnk_03005428 - 1].unk11 >= 0x42))
        {
            // if (gUnk_03002920[gUnk_03005428 - 1].unk11 != 9 && gUnk_03002920[gUnk_03005428 - 1].unk11 != 10)
            if (gUnk_03002920[gUnk_03005428 - 1].unk11 <= 8 || gUnk_03002920[gUnk_03005428 - 1].unk11 >= 11)
            {
                sub_08044F6C(gUnk_03005428 - 1);
            }
        }
    }

    if (gUnk_03004C20.unkA == 1)
    {
        gUnk_03005220.unk1A = gUnk_03002920->xPosBg2;
        gUnk_03005220.unk10 = gUnk_03002920->xPosBg2 << 0x10;
        gUnk_03005220.unk2F = 0;
    }
    gUnk_03004C10 = NULL;

    for (var_sb = 0xD; var_sb < gUnk_03005428; var_sb++)
    {
        switch (gUnk_03002920[var_sb].unk11 - 6)
        {
            case 0x5:
                if (gUnk_03004C20.level != 8)
                {
                    sub_08025B78(var_sb, 3);
                }
                else
                {
                    sub_08025B78(var_sb, 1);
                }
                break;

            case 0x70:
            case 0x75:
                sub_08025B78(var_sb, 1);
                break;

            case 0x0:
            case 0x2:
                if (sp14 == 0)
                {
                    sub_08025B78(var_sb, 0);
                    sp14 = 1;
                }
                break;

            case 0x3D:
                if (sp18 == 0)
                {
                    sub_08025B78(var_sb, 0);
                    sp18 = 1;
                }
                break;

            case 0x3B:
                if (gUnk_03005220.unk3_5 != 0)
                {
                    sub_08025B78(var_sb, 2);
                }
                else
                {
                    sub_08025B78(var_sb, 0);
                }
                break;

            case 0x29:
            case 0x2A:
            case 0x2B:
            case 0x2C:
            case 0x2D:
            case 0x39:
            case 0x43:
            case 0x71:
            case 0x72:
            case 0x73:
            case 0x74:
            case 0x76:
            case 0x77:
                sub_08025B78(var_sb, 0);
                break;

            case 0x6B:
                if (gUnk_03002920[var_sb].unkC_4 == 0)
                {
                    DmaCopy16(3, &gUnk_08063FE8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B9268, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                }
                break;

            case 0x6C:
                if (gUnk_03002920[var_sb].yPosBg2 & 1)
                {
                    if (gUnk_03002920[var_sb].unk9 == 1)
                    {
                        if (gUnk_03002920[var_sb].unkC_4 == 0)
                        {
                            DmaCopy16(3, &gUnk_080635E8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                            DmaCopy16(3, &gUnk_080635E8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xE].tileNum << 5), 0x80);
                            DmaCopy16(3, &gUnk_080635E8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xF].tileNum << 5), 0x80);
                        }
                        else
                        {
                            DmaCopy16(3, &gUnk_080B9068, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                            DmaCopy16(3, &gUnk_080B9068, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xE].tileNum << 5), 0x80);
                            DmaCopy16(3, &gUnk_080B9068, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xF].tileNum << 5), 0x80);
                        }
                    }
                }
                else
                {
                    if (gUnk_03002920[var_sb].unkC_4 == 0)
                    {
                        DmaCopy16(3, &gUnk_08061FC8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                    }
                    else
                    {
                        DmaCopy16(3, &gUnk_080B8F68, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                    }
                    break;
                }
                break;

            case 0x6E:
                gUnk_03002920[var_sb].unkC_4 = gUnk_03005220.unk3_6;
                if (gUnk_03005220.unk3_6 == 0)
                {
                    DmaCopy16(3, &gUnk_08063368, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B92E8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                }
                break;

            case 0x6D:
                temp_r3_3 = ((s32) gUnk_03004C20.unk8 >> ((gUnk_03004C20.room - 1) * 2)) & 3;
                if (gUnk_03004C10 == NULL)
                {
                    gUnk_03004C10 = OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5);
                }

                if (temp_r3_3 == 0)
                {
                    DmaCopy16(3, &gUnk_080627C8, gUnk_03004C10, 0x80);
                }
                else if (temp_r3_3 == 1)
                {
                    DmaCopy16(3, &gUnk_080B90E8, gUnk_03004C10, 0x80);
                }
                else if (temp_r3_3 == 2)
                {
                    DmaCopy16(3, &gUnk_080B9168, gUnk_03004C10, 0x80);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B91E8, gUnk_03004C10, 0x80);
                }
                break;

            case 0x30:
                if ((gUnk_03002920[var_sb].unkC_4 == 3) || (gUnk_03002920[var_sb].unkC_4 == 1))
                {
                    DmaCopy16(3, &gUnk_08064868, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x200);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B9468, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x200);
                }
                break;

            case 0x6F:
                if ((gUnk_03002920[var_sb].unkC_4 == 3) || (gUnk_03002920[var_sb].unkC_4 == 1))
                {
                    DmaCopy16(3, &gUnk_08064A68, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x200);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B9668, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x200);
                }
                break;

            case 0x32:
                if (sp1C == 0)
                {
                    sub_08025B78(var_sb, 0);
                    sp1C = 1;
                }
                break;

            case 0x34:
                if (sp20 == 0)
                {
                    sub_08025B78(var_sb, 2);
                    sp20 = 1;
                }
                break;

            case 0x33:
                if (sp24 == 0)
                {
                    sub_08025B78(var_sb, 1);
                    sp24 = 1;
                }
                break;

            case 0x28:
                if (sp28 == 0)
                {
                    sub_08025B78(var_sb, 0);
                    sp28 = 1;
                }
                break;

            case 0x20:
                sub_08025B78(var_sb, 0);
                break;
        }
    }
}

// BEF0
void* sub_0800BEF0(s32 *arg0, struct Unk_0800BEF0 arg1)
{
    u32 temp_r0;
    u32 var_r4;
    s8 var_r2;
    s8 var_r3;
    s8 var_r5;
    s8 var_r7;

    var_r3 = (arg1.unk4 - arg1.unk0) >> 3;
    var_r5 = (arg1.unk6 - arg1.unk2) >> 3;
    var_r4 = (arg1.unk2 << 0x10) | arg1.unk0;

    if (var_r3 < 0)
    {
        temp_r0 = arg1.unk8;
        var_r7 = -temp_r0;
        var_r3 = -var_r3;
    }
    else
    {
        var_r7 = arg1.unk8;
    }

    if (var_r5 < 0)
    {
        temp_r0 = arg1.unk8;
        var_r2 = -temp_r0;
        var_r5 = -var_r5;
    }
    else
    {
        var_r2 = arg1.unk8;
    }

    if (var_r3 >= var_r5)
    {
        var_r4 = (u16) (var_r7 + var_r4) | (var_r4 & 0xFFFF0000);
        gUnk_030034DC += var_r5;
        if (gUnk_030034DC >= var_r3)
        {
            var_r4 = (((var_r4 >> 0x10) + var_r2) << 0x10) | (var_r4 & 0xFFFF);
            gUnk_030034DC -= var_r3;
        }
    }
    else
    {
        var_r4 = (((var_r4 >> 0x10) + var_r2) << 0x10) | (var_r4 & 0xFFFF);
        gUnk_030034DC += var_r3;
        if (gUnk_030034DC >= var_r5)
        {
            var_r4 = (u16) (var_r7 + var_r4) | (var_r4 & 0xFFFF0000);
            gUnk_030034DC -= var_r5;
        }
    }

    *arg0 = var_r4;
    return arg0;
}
