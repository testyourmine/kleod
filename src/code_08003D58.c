#include "global.h"
#include "code_08003D58.h"
#include "code_0800BFF4.h"
#include "code_08014184.h"
#include "code_080240F4.h"
#include "code_08039D8C.h"
#include "code_08043BA4.h"
#include "math.h"
#include "data/trig.h"
#include "structs/variables.h"

struct Unk_080E2B64_0 {
    u16 unk0;
    u16 unk2;
    u8 unk4;
    u8 unk5;
    u16 unk6;
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

    var_r0 = (s32*)&gEntityInfo[0];

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

    var_r0 = (s32*)&gEntityInfo[1];

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

    var_r0 = (s32*)&gEntityInfo[0xD];

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
        gEntityInfo[arg0].xPosScreen = arg2;
        gEntityInfo[arg0].yPosScreen = arg3;
    }
    else
    {
        gEntityInfo[arg0].xPosBg2 = arg2;
        gEntityInfo[arg0].yPosBg2 = arg3;
        gEntityInfo[arg0].xPosScreen = arg2 - gBgInfo[2].hOfs;
        gEntityInfo[arg0].yPosScreen = arg3 - gBgInfo[2].vOfs;
    }
    gEntityInfo[arg0].unkA = arg1;
    gEntityInfo[arg0].unk10 = 0;
    gEntityInfo[arg0].unk8.split.unk8 = arg4;
    gEntityInfo[arg0].unkF = arg7;
    gEntityInfo[arg0].unkC_2 = 0;

    switch (arg8 - 0x2F)
    {
        case 9:
        case 10:
        case 11:
            gEntityInfo[arg0].priority = 2;
            gEntityInfo[arg0].objMode = 1;
            break;

        case 8:
            gEntityInfo[arg0].unk8.split.unk9 = 0xFF;
            /* fallthrough */
        case 13:
            gEntityInfo[arg0].priority = 2;
            break;

        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 14:
        case 15:
        case 18:
            gEntityInfo[arg0].priority = 1;
            gEntityInfo[arg0].objMode = 0;
            break;

        default:
            gEntityInfo[arg0].priority = arg5;
            gEntityInfo[arg0].objMode = 0;
            break;
    }

    switch (arg8 - 1)
    {
        case 0x71:
            gEntityInfo[arg0].unkC_4 = 0;
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            gEntityInfo[arg0].unk8.split.unk9 = arg4;
            if (arg4 == 1 && ((gUnk_03005220.unk1_7 >> gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][arg0 - 0xC].unk0[gUnk_03004C20.room - 1].unk5) & arg4))
            {
                gEntityInfo[arg0].unkC_4 = 1;
                gEntityInfo[arg0 - 1].unkC_4 = 1;
                gEntityInfo[arg0 - 2].unkC_4 = 1;
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
            gEntityInfo[arg0].unk8.split.unk9 = arg4;
            gEntityInfo[arg0].unkC_4 = arg6;
            break;

        case 0x37:
            if (gUnk_03004C00 != 0)
            {
                gEntityInfo[arg0].yPosBg2 += 0x1A;
                arg6 = 1;
            }
            gEntityInfo[arg0].unkC_4 = arg6;
            break;

        case 0x39:
            gEntityInfo[arg0].unkC_4 = arg6;
            break;

        case 0x3B:
            if (((gUnk_03005220.unk1_7 >> arg6) & 1) && (arg4 == 0xFF))
            {
                gEntityInfo[arg0].unkF = 0x1C;
            }
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            gEntityInfo[arg0].unk8.split.unk9 = arg4;
            gEntityInfo[arg0].unkC_4 = 0;
            break;

        case 0x26:
        case 0x27:
        case 0x28:
        case 0x29:
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            gEntityInfo[arg0].unk8.split.unk9 = arg4;
            gEntityInfo[arg0].unkC_4 = arg6;
            break;

        case 0x2E:
        case 0x2F:
        case 0x30:
        case 0x31:
        case 0x32:
            gEntityInfo[arg0].unkC_4 = arg6;
            if (arg6 == 0)
            {
                gEntityInfo[arg0].unk8.split.unk8 = 0;
            }
            break;

        case 0x41:
            gEntityInfo[arg0].affineEnable = 1;
            gEntityInfo[arg0].affineHFlip_matrixNum = gOamAffineMatrixNum + 1;
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pa = gOamAffineBuffer[gOamAffineMatrixNum + 1].pd = COS(0);
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pc = SIN(0);
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pb = -SIN(0);
            gEntityInfo[arg0].unkC_2 = arg6;
            break;

        case 0x35:
        case 0x74:
            gEntityInfo[arg0].unkC_4 = arg6;
            if (arg6 != 3)
            {
                gEntityInfo[arg0].unkC_2 = arg6;
            }
            break;

        case 0x73:
            gEntityInfo[arg0].unk8.split.unk9 = 0;
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
                        gEntityInfo[arg0].affineHFlip_matrixNum = gOamAffineMatrixNum;
                        gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x100;
                        gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                        gOamAffineMatrixNum += 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].affineHFlip_matrixNum = gEntityInfo[gUnk_030047B8].affineHFlip_matrixNum;
                    }
                }
                else
                {
                    if (gUnk_03005470 == 0)
                    {
                        gUnk_03005470 = arg0;
                        gEntityInfo[arg0].affineHFlip_matrixNum = gOamAffineMatrixNum;
                        gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x200;
                        gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                        gOamAffineMatrixNum += 1;
                    }
                    else
                    {
                        gEntityInfo[arg0].affineHFlip_matrixNum = gEntityInfo[gUnk_03005470].affineHFlip_matrixNum;
                    }
                    gEntityInfo[arg0].unkF = 0x1C;
                }
                gEntityInfo[arg0].affineEnable = 1;
                gEntityInfo[arg0].unkC_4 = arg6;
            }
            break;

        case 0x6F:
            if ((arg7 == 0) && ((gUnk_03005220.unk2E >> arg4) & 1))
            {
                gEntityInfo[arg0].unkF = 0x1C;
            }
            else
            {
                gEntityInfo[arg0].affineEnable = 1;
                gEntityInfo[arg0].affineHFlip_matrixNum = gOamAffineMatrixNum;
                gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x100;
                gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                gOamAffineMatrixNum += 1;
            }
            break;

        case 0x3C:
            gEntityInfo[arg0].affineEnable = 1;
            gEntityInfo[arg0].unkC_4 = arg6;
            gEntityInfo[arg0].unk8.split.unk8 = 0x80;
            if (gUnk_03003610[gUnk_03005298].unk0 == 0)
            {
                gUnk_03003610[gUnk_03005298].unk0 = arg0;
                gEntityInfo[arg0].affineHFlip_matrixNum = gOamAffineMatrixNum;
                gOamAffineBuffer[gOamAffineMatrixNum].pa = MultiplyQ8(COS(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pb = MultiplyQ8(SIN(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pc = MultiplyQ8(-SIN(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pd = MultiplyQ8(COS(0), ReciprocalQ8(gEntityInfo[arg0].unk8.split.unk8));
                gOamAffineMatrixNum += 1;
                gEntityInfo[arg0].yPosBg2 += (u8)-gEntityInfo[arg0].unk8.split.unk8 >> 3;
                gEntityInfo[arg0 - 1].yPosBg2 += (u8)-gEntityInfo[arg0].unk8.split.unk8 >> 2;
            }
            else
            {
                gUnk_03003610[gUnk_03005298++].unk1 = arg0;
                gEntityInfo[arg0].affineHFlip_matrixNum = gOamAffineMatrixNum;
                gOamAffineBuffer[gOamAffineMatrixNum].pa = MultiplyQ8(COS(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pb = MultiplyQ8(SIN(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pc = MultiplyQ8(-SIN(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pd = MultiplyQ8(COS(0), ReciprocalQ8(gEntityInfo[arg0].unk8.split.unk8));
                gOamAffineMatrixNum += 1;
                gEntityInfo[arg0].yPosBg2 += (u8)-gEntityInfo[arg0].unk8.split.unk8 >> 3;
                gEntityInfo[arg0 - 1].yPosBg2 += (u8)-gEntityInfo[arg0].unk8.split.unk8 >> 2;
            }
            break;

        case 0x7A:
        case 0x7B:
            gUnk_0300528C += 1;
            /* fallthrough */
        case 0x75:
        case 0x76:
        case 0x78:
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            gEntityInfo[arg0].unk8.split.unk9 = arg4;
            gEntityInfo[arg0].unkC_2 = arg6 & 1;
            if (arg8 == 0x79)
            {
                gEntityInfo[arg0].unkC_4 = arg6;
            }
            break;

        case 0x7C:
            gUnk_0300528C += 1;
            /* fallthrough */
        case 0x77:
        case 0x79:
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            gEntityInfo[arg0].unk8.split.unk9 = arg4;
            gEntityInfo[arg0].unkC_4 = arg6;
            break;

        case 0x5:
        case 0x7:
            gEntityInfo[arg0].unk8.split.unk8 = 0;
            gEntityInfo[arg0].unk8.split.unk9 = arg4;
            gEntityInfo[arg0].unkC_4 = arg6 & 1;
            if (arg6 & 2)
            {
                gEntityInfo[arg0].affineEnable = 1;
                gEntityInfo[arg0].affineDouble = 1;
                if (gUnk_030052A8 == 0)
                {
                    gUnk_030052A8 = arg0;
                    gEntityInfo[arg0].affineHFlip_matrixNum = gOamAffineMatrixNum;
                    gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x70;
                    gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                    gOamAffineMatrixNum += 1;
                }
                else
                {
                    gEntityInfo[arg0].affineHFlip_matrixNum = gEntityInfo[gUnk_030052A8].affineHFlip_matrixNum;
                }
            }
            break;

        case 0x25:
            gEntityInfo[arg0].affineEnable = 1;
            gEntityInfo[arg0].affineDouble = 1;
            gEntityInfo[arg0].affineHFlip_matrixNum = gOamAffineMatrixNum;
            gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x8000;
            gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
            gOamAffineMatrixNum += 1;
            gUnk_03004C38 += 1;
            break;

        case 0x8:
            gUnk_03000790[arg4].unk0 = arg2 - 0xE;
            gUnk_03000790[arg4].unk2 = arg2 + 0xE;
            gUnk_03000790[arg4].unk6 = arg3;
            if (arg7 == 0)
            {
                for (var_r3_3 = arg3 - 0x20; var_r3_3 >= gCurrentRoomBg2Bounds.top; var_r3_3 -= 8)
                {
                    if (gUnk_03004654[0x18] <= gBgDataPtrs.pBufBg2Tilemap[(arg2 >> 3) + (gBgInfo[2].hLength * (var_r3_3 >> 3))])
                    {
                        gUnk_03000790[arg4].unk4 = var_r3_3 + 8;
                        gUnk_03000790[arg4].unk8 = var_r3_3 + 8;
                        break;
                    }
                }
            }
            /* fallthrough */
        case 0x9:
            gEntityInfo[arg0].yPosBg2 = gUnk_03000790[arg4].unk8;
            gEntityInfo[arg0].unkC_4 = arg4;
            break;

        case 0x0:
        case 0x1:
        case 0x3:
            if (gUnk_03005220.keys & arg8)
            {
                gEntityInfo[arg0].unkF = 0x1C;
            }
            break;

        case 0x4:
            if ((arg7 == 0) && ((gUnk_03005220.unk14 >> arg4) & 1))
            {
                gEntityInfo[arg0].unkF = 0x1C;
            }
            gEntityInfo[arg0].unk8.split.unk9 = arg6;
            break;

        case 0x2D:
            if ((arg7 == 0) && (gUnk_03005220.unk4 & (1 << arg4)))
            {
                gEntityInfo[arg0].unkF = 0x1C;
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
                    gEntityInfo[arg0].unkF = 0x1C;
                }
            }
            else if ((arg7 == 0) && (gUnk_03005220.unkC & (1 << (arg4 - 0x20))))
            {
                gEntityInfo[arg0].unkF = 0x1C;
            }
            gEntityInfo[arg0].unkC_2 = arg6;
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
                gEntityInfo[arg0].unkF = 0x1C;
            }
            gEntityInfo[arg0].unkC_2 = arg6;
            break;

        case 0x2:
            if (gUnk_030008EC == 0)
            {
                gUnk_030008EC = arg0;
            }
            if ((gUnk_03005220.stars >> arg4) & 1)
            {
                gEntityInfo[arg0].unkF = 0x1C;
            }
            gEntityInfo[arg0].unkC_2 = arg6;
            break;

        default:
            gEntityInfo[arg0].unkC_2 = arg6;
            break;
    }

    gEntityInfo[arg0].unk11 = arg8;

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
    gOamBufferPtr = gOamBuffer;

    if (gEntityInfo[0xB].unk10 == 1)
    {
        temp_r1_29 = gEntityInfo[0xB].unkA;
        if (gEntityInfo[0xB].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gEntityInfo[0xB].unkA];
        }
        else
        {
            gUnk_0300466C = &gUnk_030051DC[gEntityInfo[0xB].unkA - 0xD];
        }

        temp_r1 = gUnk_0300466C->unk0;
        var_r5 = gUnk_0300466C->unk4;
        for (var_sl = 0; var_sl < temp_r1; var_sl++)
        {
            if (gEntityInfo[0xB].affineDouble)
            {
                if (gEntityInfo[0xB].unk11 == 0x1C)
                {
                    gOamBufferPtr->split.x = (var_r5->unk3 * 2) + gEntityInfo[0xB].xPosScreen + ((s32) (gEntityInfo[0xB].unkB_0) << 4);
                    gOamBufferPtr->split.y = var_r5->unk4 + ((s8)var_r5->unk4 >> 1) + gEntityInfo[0xB].yPosScreen + (((s8)gEntityInfo[0xB].unkB_4) << 4);
                }
                else
                {
                    gOamBufferPtr->split.x = (var_r5->unk3 * 2) + gEntityInfo[0xB].xPosScreen + ((s32) (gEntityInfo[0xB].unkB_0 << 4) >> 4);
                    gOamBufferPtr->split.y = var_r5->unk4 + ((s8)var_r5->unk4 >> 1) + gEntityInfo[0xB].yPosScreen + ((s8) (gEntityInfo[0xB].unkB_4));
                }
            }
            else
            {
                gOamBufferPtr->split.x = var_r5->unk3 + gEntityInfo[0xB].xPosScreen + ((s32) (gEntityInfo[0xB].unkB_0 << 4) >> 4);
                gOamBufferPtr->split.y = gEntityInfo[0xB].yPosScreen + var_r5->unk4 + ((s8) (gEntityInfo[0xB].unkB_4));
            }

            gOamBufferPtr->split.bpp = var_r5->bpp_paletteNum >> 7;
            gOamBufferPtr->split.tileNum = var_r5->tileNum;
            gOamBufferPtr->split.paletteNum = var_r5->bpp_paletteNum & 0x7F;
            gOamBufferPtr->split.shape = (var_r5->shape_size & 0xC) >> 2;
            gOamBufferPtr->split.size = var_r5->shape_size & 3;

            gOamBufferPtr->split.priority = gEntityInfo[0xB].priority;
            gOamBufferPtr->split.objMode = gEntityInfo[0xB].objMode;
            gOamBufferPtr->split.affineMode = (gEntityInfo[0xB].affineDouble << 1) | gEntityInfo[0xB].affineEnable;
            gOamBufferPtr->split.matrixNum = gEntityInfo[0xB].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized 
            if (gEntityInfo[sp0].affineEnable)
            {
                gOamBufferPtr->split.hFlip = gEntityInfo[0xB].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gOamBufferPtr->split.hFlip = gEntityInfo[0xB].unkC_2 & 1;
                gOamBufferPtr->split.vFlip = gEntityInfo[0xB].unkC_2 >> 1;
            }
            
            gOamBufferPtr += 1;
            var_r5 += 1;
        }
    }

    if (gEntityInfo[0xC].unk10 == 1)
    {
        s32 sp4;
        temp_r1_30 = gEntityInfo[0xC].unkA;
        if (gEntityInfo[0xC].unkA < 0xD)
        {
            gUnk_0300466C = &gUnk_08078FC8[gEntityInfo[0xC].unkA];
        }
        else
        {
            gUnk_0300466C = &gUnk_030051DC[gEntityInfo[0xC].unkA - 0xD];
        }

        temp_r1_4 = gUnk_0300466C->unk0;
        var_r5_2 = gUnk_0300466C->unk4;
        for (sp4 = 0; sp4 < temp_r1_4; sp4++)
        {
            if (gEntityInfo[0xC].affineDouble)
            {
                if (gEntityInfo[0xC].unk11 == 0x1C)
                {
                    gOamBufferPtr->split.x = (var_r5_2->unk3 * 2) + gEntityInfo[0xC].xPosScreen + ((s32) (gEntityInfo[0xC].unkB_0) << 4);
                    gOamBufferPtr->split.y = var_r5_2->unk4 + ((s8)var_r5_2->unk4 >> 1) + gEntityInfo[0xC].yPosScreen + (((s8)gEntityInfo[0xC].unkB_4) << 4);
                }
                else
                {
                    gOamBufferPtr->split.x = (var_r5_2->unk3 * 2) + gEntityInfo[0xC].xPosScreen + ((s32) (gEntityInfo[0xC].unkB_0 << 4) >> 4);
                    gOamBufferPtr->split.y = var_r5_2->unk4 + ((s8)var_r5_2->unk4 >> 1) + gEntityInfo[0xC].yPosScreen + ((s8) (gEntityInfo[0xC].unkB_4));
                }
            }
            else
            {
                gOamBufferPtr->split.x = var_r5_2->unk3 + gEntityInfo[0xC].xPosScreen + ((s32) (gEntityInfo[0xC].unkB_0 << 4) >> 4);
                gOamBufferPtr->split.y = gEntityInfo[0xC].yPosScreen + var_r5_2->unk4 + ((s8) (gEntityInfo[0xC].unkB_4));
            }

            gOamBufferPtr->split.bpp = var_r5_2->bpp_paletteNum >> 7;
            gOamBufferPtr->split.tileNum = var_r5_2->tileNum;
            gOamBufferPtr->split.paletteNum = var_r5_2->bpp_paletteNum & 0x7F;
            gOamBufferPtr->split.shape = (var_r5_2->shape_size & 0xC) >> 2;
            gOamBufferPtr->split.size = var_r5_2->shape_size & 3;

            gOamBufferPtr->split.priority = gEntityInfo[0xC].priority;
            gOamBufferPtr->split.objMode = gEntityInfo[0xC].objMode;
            gOamBufferPtr->split.affineMode = (gEntityInfo[0xC].affineDouble << 1) | gEntityInfo[0xC].affineEnable;
            gOamBufferPtr->split.matrixNum = gEntityInfo[0xC].affineHFlip_matrixNum;

            // BUG: sp0 uninitialized
            if (gEntityInfo[sp0].affineEnable)
            {
                gOamBufferPtr->split.hFlip = gEntityInfo[0xC].affineHFlip_matrixNum >> 3;
            }
            else
            {
                gOamBufferPtr->split.hFlip = gEntityInfo[0xC].unkC_2 & 1;
                gOamBufferPtr->split.vFlip = gEntityInfo[0xC].unkC_2 >> 1;
            }
            
            gOamBufferPtr += 1;
            var_r5_2 += 1;
        }
    }

    for (sp0 = 1; sp0 <= 8; sp0++)
    {
        if (gEntityInfo[sp0].unk10 == 1)
        {
            if (gEntityAnimationInfo[sp0].state != 1)
            {
                temp_r1_8 = gEntityInfo[sp0].unkA;
                if (gEntityInfo[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gEntityInfo[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = &gUnk_030051DC[gEntityInfo[sp0].unkA - 0xD];
                }
    
                temp_r1_9 = gUnk_0300466C->unk0;
                var_r6 = gUnk_0300466C->unk4;
                for (var_sb = 0; var_sb < temp_r1_9; var_sb++)
                {
                    if (gEntityInfo[sp0].affineDouble)
                    {
                        if (gEntityInfo[sp0].unk11 == 0x1C)
                        {
                            gOamBufferPtr->split.x = (var_r6->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0) << 4);
                            gOamBufferPtr->split.y = var_r6->unk4 + ((s8)var_r6->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + (((s8)gEntityInfo[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gOamBufferPtr->split.x = (var_r6->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                            gOamBufferPtr->split.y = var_r6->unk4 + ((s8)var_r6->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + ((s8) (gEntityInfo[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gOamBufferPtr->split.x = var_r6->unk3 + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                        gOamBufferPtr->split.y = gEntityInfo[sp0].yPosScreen + var_r6->unk4 + ((s8) (gEntityInfo[sp0].unkB_4));
                    }
                    
                    gOamBufferPtr->split.bpp = var_r6->bpp_paletteNum >> 7;
                    gOamBufferPtr->split.tileNum = var_r6->tileNum;
                    gOamBufferPtr->split.paletteNum = var_r6->bpp_paletteNum & 0x7F;
                    gOamBufferPtr->split.shape = (var_r6->shape_size & 0xC) >> 2;
                    gOamBufferPtr->split.size = var_r6->shape_size & 3;
    
                    gOamBufferPtr->split.priority = gEntityInfo[sp0].priority;
                    gOamBufferPtr->split.objMode = gEntityInfo[sp0].objMode;
                    gOamBufferPtr->split.affineMode = (gEntityInfo[sp0].affineDouble << 1) | gEntityInfo[sp0].affineEnable;
                    gOamBufferPtr->split.matrixNum = gEntityInfo[sp0].affineHFlip_matrixNum;
    
                    if (gEntityInfo[sp0].affineEnable)
                    {
                        gOamBufferPtr->split.hFlip = gEntityInfo[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gOamBufferPtr->split.hFlip = gEntityInfo[sp0].unkC_2 & 1;
                        gOamBufferPtr->split.vFlip = gEntityInfo[sp0].unkC_2 >> 1;
                    }
                    
                    gOamBufferPtr += 1;
                    var_r6 += 1;
                }
            }
    
            if (gEntityAnimationInfo[sp0].state == 7)
            {
                temp_r1_12 = gEntityInfo[sp0].unkA;
                if (gEntityInfo[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gEntityInfo[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = &gUnk_030051DC[gEntityInfo[sp0].unkA - 0xD];
                }
    
                temp_r1_13 = gUnk_0300466C->unk0;
                var_r6_2 = gUnk_0300466C->unk4;
                for (var_sb_2 = 0; var_sb_2 < temp_r1_13; var_sb_2++)
                {
                    if (gEntityInfo[sp0].affineDouble)
                    {
                        if (gEntityInfo[sp0].unk11 == 0x1C)
                        {
                            gOamBufferPtr->split.x = (var_r6_2->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0) << 4);
                            gOamBufferPtr->split.y = var_r6_2->unk4 + ((s8)var_r6_2->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + (((s8)gEntityInfo[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gOamBufferPtr->split.x = (var_r6_2->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                            gOamBufferPtr->split.y = var_r6_2->unk4 + ((s8)var_r6_2->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + ((s8) (gEntityInfo[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gOamBufferPtr->split.x = var_r6_2->unk3 + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                        gOamBufferPtr->split.y = gEntityInfo[sp0].yPosScreen + var_r6_2->unk4 + ((s8) (gEntityInfo[sp0].unkB_4));
                    }
                    
                    gOamBufferPtr->split.bpp = var_r6_2->bpp_paletteNum >> 7;
                    gOamBufferPtr->split.tileNum = var_r6_2->tileNum;
                    gOamBufferPtr->split.paletteNum = var_r6_2->bpp_paletteNum & 0x7F;
                    gOamBufferPtr->split.shape = (var_r6_2->shape_size & 0xC) >> 2;
                    gOamBufferPtr->split.size = var_r6_2->shape_size & 3;
    
                    gOamBufferPtr->split.priority = gEntityInfo[sp0].priority;
                    gOamBufferPtr->split.objMode = gEntityInfo[sp0].objMode;
                    gOamBufferPtr->split.affineMode = (gEntityInfo[sp0].affineDouble << 1) | gEntityInfo[sp0].affineEnable;
                    gOamBufferPtr->split.matrixNum = gEntityInfo[sp0].affineHFlip_matrixNum;
    
                    if (gEntityInfo[sp0].affineEnable)
                    {
                        gOamBufferPtr->split.hFlip = gEntityInfo[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gOamBufferPtr->split.hFlip = gEntityInfo[sp0].unkC_2 & 1;
                        gOamBufferPtr->split.vFlip = gEntityInfo[sp0].unkC_2 >> 1;
                    }
                    
                    gOamBufferPtr += 1;
                    var_r6_2 += 1;
                }
            }
        }
    }

    for (sp0 = 0; sp0 <= 0xC; sp0++)
    {
        if (gEntityInfo[sp0].unk11 == 0x34)
            continue;

        if (sp0 == 0xB || sp0 == 0xC)
            continue;

        if (gEntityInfo[sp0].unk10 == 1)
        {
            temp_r1_17 = gEntityInfo[sp0].unkA;
            if (gEntityInfo[sp0].unkA < 0xD)
            {
                gUnk_0300466C = &gUnk_08078FC8[gEntityInfo[sp0].unkA];
            }
            else
            {
                gUnk_0300466C = &gUnk_030051DC[gEntityInfo[sp0].unkA - 0xD];
            }

            temp_r1_18 = gUnk_0300466C->unk0;
            var_r6_3 = gUnk_0300466C->unk4;
            for (var_sb_3 = 0; var_sb_3 < temp_r1_18; var_sb_3++)
            {
                if (gEntityInfo[sp0].affineDouble)
                {
                    if (gEntityInfo[sp0].unk11 == 0x1C)
                    {
                        gOamBufferPtr->split.x = (var_r6_3->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0) << 4);
                        gOamBufferPtr->split.y = var_r6_3->unk4 + ((s8)var_r6_3->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + (((s8)gEntityInfo[sp0].unkB_4) << 4);
                    }
                    else
                    {
                        gOamBufferPtr->split.x = (var_r6_3->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                        gOamBufferPtr->split.y = var_r6_3->unk4 + ((s8)var_r6_3->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + ((s8) (gEntityInfo[sp0].unkB_4));
                    }
                }
                else
                {
                    gOamBufferPtr->split.x = var_r6_3->unk3 + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                    gOamBufferPtr->split.y = gEntityInfo[sp0].yPosScreen + var_r6_3->unk4 + ((s8) (gEntityInfo[sp0].unkB_4));
                }
                
                gOamBufferPtr->split.bpp = var_r6_3->bpp_paletteNum >> 7;
                gOamBufferPtr->split.tileNum = var_r6_3->tileNum;
                gOamBufferPtr->split.paletteNum = var_r6_3->bpp_paletteNum & 0x7F;
                gOamBufferPtr->split.shape = (var_r6_3->shape_size & 0xC) >> 2;
                gOamBufferPtr->split.size = var_r6_3->shape_size & 3;

                gOamBufferPtr->split.priority = gEntityInfo[sp0].priority;
                gOamBufferPtr->split.objMode = gEntityInfo[sp0].objMode;
                gOamBufferPtr->split.affineMode = (gEntityInfo[sp0].affineDouble << 1) | gEntityInfo[sp0].affineEnable;
                gOamBufferPtr->split.matrixNum = gEntityInfo[sp0].affineHFlip_matrixNum;

                if (gEntityInfo[sp0].affineEnable)
                {
                    gOamBufferPtr->split.hFlip = gEntityInfo[sp0].affineHFlip_matrixNum >> 3;
                }
                else
                {
                    gOamBufferPtr->split.hFlip = gEntityInfo[sp0].unkC_2 & 1;
                    gOamBufferPtr->split.vFlip = gEntityInfo[sp0].unkC_2 >> 1;
                }
                
                gOamBufferPtr += 1;
                var_r6_3 += 1;
            }
        }
    }

    for (sp0 = 0xD; sp0 < gUnk_03005428; sp0++)
    {
        if (gEntityInfo[sp0].unk10 == 1)
        {
            temp_r0_4 = gEntityInfo[sp0].unkA;
            if (gEntityInfo[sp0].unkA < 0xD)
            {
                gUnk_0300466C = &gUnk_08078FC8[gEntityInfo[sp0].unkA];
            }
            else
            {
                gUnk_0300466C = &gUnk_030051DC[gEntityInfo[sp0].unkA - 0xD];
            }

            temp_r1_22 = gUnk_0300466C->unk0;
            var_r6_4 = gUnk_0300466C->unk4;
            for (var_sb_4 = 0; var_sb_4 < temp_r1_22; var_sb_4++)
            {
                if (gEntityInfo[sp0].affineDouble)
                {
                    if (gEntityInfo[sp0].unk11 == 0x1C)
                    {
                        gOamBufferPtr->split.x = (var_r6_4->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0) << 4);
                        gOamBufferPtr->split.y = var_r6_4->unk4 + ((s8)var_r6_4->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + (((s8)gEntityInfo[sp0].unkB_4) << 4);
                    }
                    else
                    {
                        gOamBufferPtr->split.x = (var_r6_4->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                        gOamBufferPtr->split.y = var_r6_4->unk4 + ((s8)var_r6_4->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + ((s8) (gEntityInfo[sp0].unkB_4));
                    }
                }
                else
                {
                    gOamBufferPtr->split.x = var_r6_4->unk3 + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                    gOamBufferPtr->split.y = gEntityInfo[sp0].yPosScreen + var_r6_4->unk4 + ((s8) (gEntityInfo[sp0].unkB_4));
                }
                
                gOamBufferPtr->split.bpp = var_r6_4->bpp_paletteNum >> 7;
                gOamBufferPtr->split.tileNum = var_r6_4->tileNum;
                gOamBufferPtr->split.paletteNum = var_r6_4->bpp_paletteNum & 0x7F;
                gOamBufferPtr->split.shape = (var_r6_4->shape_size & 0xC) >> 2;
                gOamBufferPtr->split.size = var_r6_4->shape_size & 3;

                gOamBufferPtr->split.priority = gEntityInfo[sp0].priority;
                gOamBufferPtr->split.objMode = gEntityInfo[sp0].objMode;
                gOamBufferPtr->split.affineMode = (gEntityInfo[sp0].affineDouble << 1) | gEntityInfo[sp0].affineEnable;
                gOamBufferPtr->split.matrixNum = gEntityInfo[sp0].affineHFlip_matrixNum;

                if (gEntityInfo[sp0].affineEnable)
                {
                    gOamBufferPtr->split.hFlip = gEntityInfo[sp0].affineHFlip_matrixNum >> 3;
                }
                else
                {
                    gOamBufferPtr->split.hFlip = gEntityInfo[sp0].unkC_2 & 1;
                    gOamBufferPtr->split.vFlip = gEntityInfo[sp0].unkC_2 >> 1;
                }
                
                gOamBufferPtr += 1;
                var_r6_4 += 1;
            }
        }
    }

    for (sp0 = 1; sp0 <= 8; sp0++)
    {
        if (gEntityInfo[sp0].unk10 == 1)
        {
            if (gEntityAnimationInfo[sp0].state == 1)
            {
                temp_r1_25 = gEntityInfo[sp0].unkA;
                if (gEntityInfo[sp0].unkA < 0xD)
                {
                    gUnk_0300466C = &gUnk_08078FC8[gEntityInfo[sp0].unkA];
                }
                else
                {
                    gUnk_0300466C = &gUnk_030051DC[gEntityInfo[sp0].unkA - 0xD];
                }
    
                temp_r1_26 = gUnk_0300466C->unk0;
                var_r6_5 = gUnk_0300466C->unk4;
                for (var_sb_5 = 0; var_sb_5 < temp_r1_26; var_sb_5++)
                {
                    if (gEntityInfo[sp0].affineDouble)
                    {
                        if (gEntityInfo[sp0].unk11 == 0x1C)
                        {
                            gOamBufferPtr->split.x = (var_r6_5->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0) << 4);
                            gOamBufferPtr->split.y = var_r6_5->unk4 + ((s8)var_r6_5->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + (((s8)gEntityInfo[sp0].unkB_4) << 4);
                        }
                        else
                        {
                            gOamBufferPtr->split.x = (var_r6_5->unk3 * 2) + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                            gOamBufferPtr->split.y = var_r6_5->unk4 + ((s8)var_r6_5->unk4 >> 1) + gEntityInfo[sp0].yPosScreen + ((s8) (gEntityInfo[sp0].unkB_4));
                        }
                    }
                    else
                    {
                        gOamBufferPtr->split.x = var_r6_5->unk3 + gEntityInfo[sp0].xPosScreen + ((s32) (gEntityInfo[sp0].unkB_0 << 4) >> 4);
                        gOamBufferPtr->split.y = gEntityInfo[sp0].yPosScreen + var_r6_5->unk4 + ((s8) (gEntityInfo[sp0].unkB_4));
                    }
                    
                    gOamBufferPtr->split.bpp = var_r6_5->bpp_paletteNum >> 7;
                    gOamBufferPtr->split.tileNum = var_r6_5->tileNum;
                    gOamBufferPtr->split.paletteNum = var_r6_5->bpp_paletteNum & 0x7F;
                    gOamBufferPtr->split.shape = (var_r6_5->shape_size & 0xC) >> 2;
                    gOamBufferPtr->split.size = var_r6_5->shape_size & 3;
    
                    gOamBufferPtr->split.priority = gEntityInfo[sp0].priority;
                    gOamBufferPtr->split.objMode = gEntityInfo[sp0].objMode;
                    gOamBufferPtr->split.affineMode = (gEntityInfo[sp0].affineDouble << 1) | gEntityInfo[sp0].affineEnable;
                    gOamBufferPtr->split.matrixNum = gEntityInfo[sp0].affineHFlip_matrixNum;
    
                    if (gEntityInfo[sp0].affineEnable)
                    {
                        gOamBufferPtr->split.hFlip = gEntityInfo[sp0].affineHFlip_matrixNum >> 3;
                    }
                    else
                    {
                        gOamBufferPtr->split.hFlip = gEntityInfo[sp0].unkC_2 & 1;
                        gOamBufferPtr->split.vFlip = gEntityInfo[sp0].unkC_2 >> 1;
                    }
                    
                    gOamBufferPtr += 1;
                    var_r6_5 += 1;
                }
            }
        }
    }
}
