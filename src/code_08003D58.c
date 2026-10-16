#include "global.h"
#include "code_08003D58.h"
#include "wait_for_next_frame.h"
#include "code_08014184.h"
#include "transitions.h"
#include "anim.h"
#include "load_entity_graphics.h"
#include "code_0803C808.h"
#include "math.h"
#include "pause_menu.h"
#include "rotation.h"
#include "vision_select.h"
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

extern void (*gUnk_08116620[6][9])(void); // pointers to "load level" functions

extern struct EntityAnimationData *gUnk_08189A24[6][9];

extern struct Unk_0300466C *gUnk_0818B8E0[6][9];

extern struct EntityAnimationData gUnk_0805553C[9];
extern struct EntityAnimationData gUnk_080555A8[9];

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

extern void sub_0801C82C(u32); // should be u8 param

#define TRANSFER_OAM(slot_) \
    { \
        u8 temp_r1; \
        struct Unk_0300466C_4 *var_r5; \
        s32 var_sl; \
        u8 temp_r1_29 = gEntityInfo[slot_].unkA; \
        if (gEntityInfo[slot_].unkA < 0xD) \
        { \
            gUnk_0300466C = &gUnk_08078FC8[gEntityInfo[slot_].unkA]; \
        } \
        else \
        { \
            gUnk_0300466C = &gUnk_030051DC[gEntityInfo[slot_].unkA - 0xD]; \
        } \
 \
        temp_r1 = gUnk_0300466C->unk0; \
        var_r5 = gUnk_0300466C->unk4; \
        for (var_sl = 0; var_sl < temp_r1; var_sl++) \
        { \
            if (gEntityInfo[slot_].affineDouble) \
            { \
                if (gEntityInfo[slot_].id == 0x1C) \
                { \
                    gOamBufferPtr->split.x = (var_r5->unk3 * 2) + gEntityInfo[slot_].xPosScreen + ((gEntityInfo[slot_].unkB_0) << 4); \
                    gOamBufferPtr->split.y = var_r5->unk4 + (var_r5->unk4 >> 1) + gEntityInfo[slot_].yPosScreen + ((gEntityInfo[slot_].unkB_4) << 4); \
                } \
                else \
                { \
                    gOamBufferPtr->split.x = (var_r5->unk3 * 2) + gEntityInfo[slot_].xPosScreen + ((gEntityInfo[slot_].unkB_0 << 4) >> 4); \
                    gOamBufferPtr->split.y = var_r5->unk4 + (var_r5->unk4 >> 1) + gEntityInfo[slot_].yPosScreen + ((gEntityInfo[slot_].unkB_4)); \
                } \
            } \
            else \
            { \
                gOamBufferPtr->split.x = var_r5->unk3 + gEntityInfo[slot_].xPosScreen + ((gEntityInfo[slot_].unkB_0 << 4) >> 4); \
                gOamBufferPtr->split.y = gEntityInfo[slot_].yPosScreen + var_r5->unk4 + ((gEntityInfo[slot_].unkB_4)); \
            } \
 \
            gOamBufferPtr->split.bpp = var_r5->bpp_paletteNum >> 7; \
            gOamBufferPtr->split.tileNum = var_r5->tileNum; \
            gOamBufferPtr->split.paletteNum = var_r5->bpp_paletteNum & 0x7F; \
            gOamBufferPtr->split.shape = (var_r5->shape_size & 0xC) >> 2; \
            gOamBufferPtr->split.size = var_r5->shape_size & 3; \
 \
            gOamBufferPtr->split.priority = gEntityInfo[slot_].priority; \
            gOamBufferPtr->split.objMode = gEntityInfo[slot_].objMode; \
            gOamBufferPtr->split.affineMode = (gEntityInfo[slot_].affineDouble << 1) | gEntityInfo[slot_].affineEnable; \
            gOamBufferPtr->split.matrixNum = gEntityInfo[slot_].affineHFlip_matrixNum; \
 \
            /* BUG: different slot used, uninitialized when not inside loop */ \
            if (gEntityInfo[slot].affineEnable) \
            { \
                gOamBufferPtr->split.hFlip = gEntityInfo[slot_].affineHFlip_matrixNum >> 3; \
            } \
            else \
            { \
                gOamBufferPtr->split.hFlip = gEntityInfo[slot_].hvFlip & 1; \
                gOamBufferPtr->split.vFlip = gEntityInfo[slot_].hvFlip >> 1; \
            } \
             \
            gOamBufferPtr += 1; \
            var_r5 += 1; \
        } \
    } \

// 3904
void EntityInit(void)
{
    // Initialize the entity system
    // Called once when loading any scene with entities
    u32 tileColOffset;
    u32 i;
    u32 collectedItems;
    u32 item;

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;

    m4aSoundVSyncOff();
    m4aMPlayAllStop();

    for (i = 0; i < 0x2D; i++)
    {
        gEntityAnimationInfo[i].state = -1;
        gEntityAnimationInfo[i].timer = -1;
    }

    if (gUnk_03003410.unk8 == 0)
    {
        gUnk_03004C20.level = 0;
    }
    gUnk_030051DC = gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level];

    gObjPalRamPtr = OBJ_PLTT;
    gObjVramPtr = OBJ_VRAM0;

    sub_08003D80();
    EntityCreate(0, 0, gEntityInfo[0].xPosBg2, gEntityInfo[0].yPosBg2, 0, 0, gEntityInfo[0].hvFlip, 0, ENTITY_ID_KLONOA);
    EntityCreate(1, 1, 0, 0, 0, 0, 0, 0x1C, 0x34);
    EntityCreate(2, 2, 0, 0, 0, 0, 0, 0x1C, 0x34);
    EntityCreate(3, 3, 0, 0, 0, 0, 0, 0x1C, 0x34);
    EntityCreate(4, 4, 0, 0, 0, 0, 0, 0x1C, 0x34);
    EntityCreate(5, 5, 0, 0, 0, 0, 0, 0x1C, 0x34);
    EntityCreate(6, 6, 0, 0, 0, 0, 0, 0x1C, 0x34);
    EntityCreate(7, 7, 0, 0, 0, 0, 0, 0x1C, 0x34);
    EntityCreate(8, 8, 0, 0, 0, 0, 0, 0x1C, 0x34);
    EntityCreate(9, 9, 0, 0, 0, 0, 0, 0, 0);
    EntityCreate(0xA, 0xA, 0, 0, 0, 0, 0, 0, 0);
    EntityCreate(0xB, 0xB, -0x20, 0x3C, 0, 0, 0, 0, 0);
    EntityCreate(0xC, 0xC, -0x20, 0x74, 0, 0, 0, 0, 0);
    LoadEntityGraphics_Common();

    if (gUnk_03003410.unk8 == 1)
    {
        if (gUnk_03004C20.level != 0)
        {
            DrawLevelHud_Lives();
            DrawLevelHud_Hearts();
            if ((gUnk_03004C20.level != 8) && (gUnk_03004C20.world != 0x6 || gUnk_03004C20.level != 0x3))
            {
                DrawLevelHud_DreamStones();
            }
        }
        else
        {
            DrawVisionSelectHud_Lives();
        }

        tileColOffset = -1;

        // draw collected stars
        collectedItems = gUnk_03005220.stars;
        for (item = 0; item < 3; item++)
        {
            if (collectedItems & 1)
            {
                tileColOffset += 1;
                collectedItems &= ~1;
            }
            else if (collectedItems & 2)
            {
                tileColOffset += 1;
                collectedItems &= ~2;
            }
            else if (collectedItems & 4)
            {
                tileColOffset += 1;
                collectedItems &= ~4;
            }
            else
            {
                break;
            }

            gBgTilemapBufs[0][(tileColOffset * 2) + 0x24D] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x28C];
            gBgTilemapBufs[0][(tileColOffset * 2) + 0x24E] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x28D];
            gBgTilemapBufs[0][(tileColOffset * 2) + 0x26D] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x2AC];
            gBgTilemapBufs[0][(tileColOffset * 2) + 0x26E] = gBgTilemapBufs[0][(tileColOffset * 2) + 0x2AD];
        }

        // draw collected keys
        collectedItems = gUnk_03005220.keys;
        for (item = 0; item < 3; item++)
        {
            if (collectedItems & 1)
            {
                tileColOffset = 0;
                collectedItems &= ~1;
            }
            else if (collectedItems & 2)
            {
                tileColOffset = 2;
                collectedItems &= ~2;
            }
            else if (collectedItems & 4)
            {
                tileColOffset = 4;
                collectedItems &= ~4;
            }
            else
            {
                break;
            }

            gBgTilemapBufs[0][tileColOffset + 0x247] = gBgTilemapBufs[0][tileColOffset + 0x286];
            gBgTilemapBufs[0][tileColOffset + 0x248] = gBgTilemapBufs[0][tileColOffset + 0x287];
            gBgTilemapBufs[0][tileColOffset + 0x267] = gBgTilemapBufs[0][tileColOffset + 0x2A6];
            gBgTilemapBufs[0][tileColOffset + 0x268] = gBgTilemapBufs[0][tileColOffset + 0x2A7];
        }
    }

    gUnk_08116620[gUnk_03004C20.world - 1][gUnk_03004C20.level]();

    // Redundant if-else statement required to match
    if (gUnk_03004C20.level)
    {
        gUnk_030007C4 = 0xD;
    }
    else
    {
        gUnk_030007C4 = 0xD;
    }
    gUnk_0300363C = gUnk_030007C4 - 9;

    if (gUnk_03004C20.level == 0)
    {
        VisionSelectCreateEntities();
    }
    else
    {
        sub_0800B3C0();
    }

    if ((gUnk_03004C20.unkA == 0) || (gUnk_03004C20.level == 8))
    {
        gUnk_03005418 = gUnk_0805553C;
    }
    else
    {
        gUnk_03005418 = gUnk_080555A8;
    }
    gUnk_03005294 = gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level];

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();
}

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

    EntityResetOamBuffer();
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
void EntityCreate(s32 slot, u8 arg1, u16 x, u16 y, u8 arg4, u8 priority, u8 arg6, u8 arg7, u8 id)
{
    u32 var_r3_3;

    if (id == ENTITY_ID_NONE || id >= 0x4A)
    {
        gEntityInfo[slot].xPosScreen = x;
        gEntityInfo[slot].yPosScreen = y;
    }
    else
    {
        gEntityInfo[slot].xPosBg2 = x;
        gEntityInfo[slot].yPosBg2 = y;
        gEntityInfo[slot].xPosScreen = x - gBgInfo[2].hOfs;
        gEntityInfo[slot].yPosScreen = y - gBgInfo[2].vOfs;
    }
    gEntityInfo[slot].unkA = arg1;
    gEntityInfo[slot].visible = 0;
    gEntityInfo[slot].unk8.split.unk8 = arg4;
    gEntityInfo[slot].unkF = arg7;
    gEntityInfo[slot].hvFlip = 0;

    switch (id)
    {
        case ENTITY_ID_WATER:
        case ENTITY_ID_WATERFALL:
        case ENTITY_ID_GEYSER:
            gEntityInfo[slot].priority = 2;
            gEntityInfo[slot].objMode = 1;
            break;

        case ENTITY_ID_PRESSURE_SWITCH:
            gEntityInfo[slot].unk8.split.unk9 = 0xFF;
            /* fallthrough */
        case ENTITY_ID_GATE:
            gEntityInfo[slot].priority = 2;
            break;

        case ENTITY_ID_GOOMI:
        case ENTITY_ID_GOOMI_HORIZONTAL:
        case ENTITY_ID_GOOMI_VERTICAL:
        case ENTITY_ID_GOOMI_DIAGONAL_1:
        case ENTITY_ID_GOOMI_DIAGONAL_2:
        case ENTITY_ID_SCALE_1:
        case ENTITY_ID_SCALE_2:
        case ENTITY_ID_MOON_DOOR:
            gEntityInfo[slot].priority = 1;
            gEntityInfo[slot].objMode = 0;
            break;

        default:
            gEntityInfo[slot].priority = priority;
            gEntityInfo[slot].objMode = 0;
            break;
    }

    switch (id)
    {
        case ENTITY_ID_GATE_SWITCH:
            gEntityInfo[slot].unkC_4 = 0;
            gEntityInfo[slot].unk8.split.unk8 = 0;
            gEntityInfo[slot].unk8.split.unk9 = arg4;
            if (arg4 == 1 && ((gUnk_03005220.unk1_7 >> gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xC].unk0[gUnk_03004C20.room - 1].unk5) & arg4))
            {
                gEntityInfo[slot].unkC_4 = 1;
                gEntityInfo[slot - 1].unkC_4 = 1;
                gEntityInfo[slot - 2].unkC_4 = 1;
            }
            break;

        case ENTITY_ID_WATER_SWITCH:
            if ((arg7 == 0) && ((gUnk_03005220.pressedWaterSwitches >> arg4) & 1))
            {
                arg6 = 1;
                gSpawnWaterLowered = 1;
            }
            else
            {
                gSpawnWaterLowered = 0;
            }
            gEntityInfo[slot].unk8.split.unk9 = arg4;
            gEntityInfo[slot].unkC_4 = arg6;
            break;

        case ENTITY_ID_WATER:
            if (gSpawnWaterLowered != 0)
            {
                gEntityInfo[slot].yPosBg2 += 0x1A;
                arg6 = 1;
            }
            gEntityInfo[slot].unkC_4 = arg6;
            break;

        case ENTITY_ID_GEYSER:
            gEntityInfo[slot].unkC_4 = arg6;
            break;

        case ENTITY_ID_GATE:
            if (((gUnk_03005220.unk1_7 >> arg6) & 1) && (arg4 == 0xFF))
            {
                gEntityInfo[slot].unkF = 0x1C;
            }
            gEntityInfo[slot].unk8.split.unk8 = 0;
            gEntityInfo[slot].unk8.split.unk9 = arg4;
            gEntityInfo[slot].unkC_4 = 0;
            break;

        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
        case ENTITY_ID_GRATED_PLATFORM:
            gEntityInfo[slot].unk8.split.unk8 = 0;
            gEntityInfo[slot].unk8.split.unk9 = arg4;
            gEntityInfo[slot].unkC_4 = arg6;
            break;

        case ENTITY_ID_GOOMI:
        case ENTITY_ID_GOOMI_HORIZONTAL:
        case ENTITY_ID_GOOMI_VERTICAL:
        case ENTITY_ID_GOOMI_DIAGONAL_1:
        case ENTITY_ID_GOOMI_DIAGONAL_2:
            gEntityInfo[slot].unkC_4 = arg6;
            if (arg6 == 0)
            {
                gEntityInfo[slot].unk8.split.unk8 = 0;
            }
            break;

        case ENTITY_ID_CANNON_GOAL:
            gEntityInfo[slot].affineEnable = 1;
            gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum + 1;
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pa = gOamAffineBuffer[gOamAffineMatrixNum + 1].pd = COS(0);
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pc = SIN(0);
            gOamAffineBuffer[gOamAffineMatrixNum + 1].pb = -SIN(0);
            gEntityInfo[slot].hvFlip = arg6;
            break;

        case ENTITY_ID_RED_ARROW:
        case ENTITY_ID_BLUE_ARROW:
            gEntityInfo[slot].unkC_4 = arg6;
            if (arg6 != 3)
            {
                gEntityInfo[slot].hvFlip = arg6;
            }
            break;

        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
            gEntityInfo[slot].unk8.split.unk9 = 0;
            break;

        case ENTITY_ID_GROWN_BLOCK:
            if (arg7 != 0x1C)
            {
                arg6 = arg6 ^ gUnk_03005220.pressedGrowingShrinkingBlockSwitch;
                if (arg6 == 1)
                {
                    if (gUnk_030047B8 == 0)
                    {
                        gUnk_030047B8 = slot;
                        gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum;
                        gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x100;
                        gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                        gOamAffineMatrixNum += 1;
                    }
                    else
                    {
                        gEntityInfo[slot].affineHFlip_matrixNum = gEntityInfo[gUnk_030047B8].affineHFlip_matrixNum;
                    }
                }
                else
                {
                    if (gUnk_03005470 == 0)
                    {
                        gUnk_03005470 = slot;
                        gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum;
                        gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x200;
                        gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                        gOamAffineMatrixNum += 1;
                    }
                    else
                    {
                        gEntityInfo[slot].affineHFlip_matrixNum = gEntityInfo[gUnk_03005470].affineHFlip_matrixNum;
                    }
                    gEntityInfo[slot].unkF = 0x1C;
                }
                gEntityInfo[slot].affineEnable = 1;
                gEntityInfo[slot].unkC_4 = arg6;
            }
            break;

        case ENTITY_ID_EXPLODABLE_BLOCK:
            if ((arg7 == 0) && ((gUnk_03005220.explodedBlocks >> arg4) & 1))
            {
                gEntityInfo[slot].unkF = 0x1C;
            }
            else
            {
                gEntityInfo[slot].affineEnable = 1;
                gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum;
                gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x100;
                gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                gOamAffineMatrixNum += 1;
            }
            break;

        case ENTITY_ID_SCALE_1:
            gEntityInfo[slot].affineEnable = 1;
            gEntityInfo[slot].unkC_4 = arg6;
            gEntityInfo[slot].unk8.split.unk8 = 0x80;
            if (gUnk_03003610[gUnk_03005298].unk0 == 0)
            {
                gUnk_03003610[gUnk_03005298].unk0 = slot;
                gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum;
                gOamAffineBuffer[gOamAffineMatrixNum].pa = MultiplyQ8(COS(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pb = MultiplyQ8(SIN(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pc = MultiplyQ8(-SIN(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pd = MultiplyQ8(COS(0), ReciprocalQ8(gEntityInfo[slot].unk8.split.unk8));
                gOamAffineMatrixNum += 1;
                gEntityInfo[slot].yPosBg2 += (u8)-gEntityInfo[slot].unk8.split.unk8 >> 3;
                gEntityInfo[slot - 1].yPosBg2 += (u8)-gEntityInfo[slot].unk8.split.unk8 >> 2;
            }
            else
            {
                gUnk_03003610[gUnk_03005298++].unk1 = slot;
                gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum;
                gOamAffineBuffer[gOamAffineMatrixNum].pa = MultiplyQ8(COS(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pb = MultiplyQ8(SIN(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pc = MultiplyQ8(-SIN(0), ReciprocalQ8(0x100));
                gOamAffineBuffer[gOamAffineMatrixNum].pd = MultiplyQ8(COS(0), ReciprocalQ8(gEntityInfo[slot].unk8.split.unk8));
                gOamAffineMatrixNum += 1;
                gEntityInfo[slot].yPosBg2 += (u8)-gEntityInfo[slot].unk8.split.unk8 >> 3;
                gEntityInfo[slot - 1].yPosBg2 += (u8)-gEntityInfo[slot].unk8.split.unk8 >> 2;
            }
            break;

        case ENTITY_ID_BOOMIE:
        case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
            gBoomieExplosionCountdownEntitySlotOffset += 1;
            /* fallthrough */
        case ENTITY_ID_MOO:
        case ENTITY_ID_FLYING_MOO_HORIZONTAL:
        case ENTITY_ID_GLIBZ_QUAD_CANNON:
            gEntityInfo[slot].unk8.split.unk8 = 0;
            gEntityInfo[slot].unk8.split.unk9 = arg4;
            gEntityInfo[slot].hvFlip = arg6 & 1;
            if (id == ENTITY_ID_GLIBZ_QUAD_CANNON)
            {
                gEntityInfo[slot].unkC_4 = arg6;
            }
            break;

        case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
            gBoomieExplosionCountdownEntitySlotOffset += 1;
            /* fallthrough */
        case ENTITY_ID_FLYING_MOO_VERTICAL:
        case ENTITY_ID_TETON:
            gEntityInfo[slot].unk8.split.unk8 = 0;
            gEntityInfo[slot].unk8.split.unk9 = arg4;
            gEntityInfo[slot].unkC_4 = arg6;
            break;

        case ENTITY_ID_SPIKER_HORIZONTAL:
        case ENTITY_ID_SPIKER_VERTICAL:
            gEntityInfo[slot].unk8.split.unk8 = 0;
            gEntityInfo[slot].unk8.split.unk9 = arg4;
            gEntityInfo[slot].unkC_4 = arg6 & 1;
            if (arg6 & 2)
            {
                gEntityInfo[slot].affineEnable = 1;
                gEntityInfo[slot].affineDouble = 1;
                if (gUnk_030052A8 == 0)
                {
                    gUnk_030052A8 = slot;
                    gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum;
                    gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x70;
                    gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
                    gOamAffineMatrixNum += 1;
                }
                else
                {
                    gEntityInfo[slot].affineHFlip_matrixNum = gEntityInfo[gUnk_030052A8].affineHFlip_matrixNum;
                }
            }
            break;

        case ENTITY_ID_MAGNET_BLOCK_HAND:
            gEntityInfo[slot].affineEnable = 1;
            gEntityInfo[slot].affineDouble = 1;
            gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum;
            gOamAffineBuffer[gOamAffineMatrixNum].pa = gOamAffineBuffer[gOamAffineMatrixNum].pd = 0x8000;
            gOamAffineBuffer[gOamAffineMatrixNum].pb = gOamAffineBuffer[gOamAffineMatrixNum].pc = 0;
            gOamAffineMatrixNum += 1;
            gMagnetBlockHandEntityCount += 1;
            break;

        case ENTITY_ID_LEAF_1:
            gUnk_03000790[arg4].unk0 = x - 0xE;
            gUnk_03000790[arg4].unk2 = x + 0xE;
            gUnk_03000790[arg4].unk6 = y;
            if (arg7 == 0)
            {
                for (var_r3_3 = y - 0x20; var_r3_3 >= gCurrentRoomBg2Bounds.top; var_r3_3 -= 8)
                {
                    if (gUnk_03004654->unk18 <= gBgDataPtrs.pBufBg2Tilemap[(x >> 3) + (gBgInfo[2].hLength * (var_r3_3 >> 3))])
                    {
                        gUnk_03000790[arg4].unk4 = var_r3_3 + 8;
                        gUnk_03000790[arg4].unk8 = var_r3_3 + 8;
                        break;
                    }
                }
            }
            /* fallthrough */
        case ENTITY_ID_LEAF_2:
            gEntityInfo[slot].yPosBg2 = gUnk_03000790[arg4].unk8;
            gEntityInfo[slot].unkC_4 = arg4;
            break;

        case ENTITY_ID_CIRCLE_KEY:
        case ENTITY_ID_TRIANGLE_KEY:
        case ENTITY_ID_HEART_KEY:
            if (gUnk_03005220.keys & id)
            {
                gEntityInfo[slot].unkF = 0x1C;
            }
            break;

        case ENTITY_ID_KEY_DOOR:
            if ((arg7 == 0) && ((gUnk_03005220.keyDoorsUnlocked >> arg4) & 1))
            {
                gEntityInfo[slot].unkF = 0x1C;
            }
            gEntityInfo[slot].unk8.split.unk9 = arg6;
            break;

        case ENTITY_ID_1_UP:
            if ((arg7 == 0) && (gUnk_03005220.collected1Ups & (1 << arg4)))
            {
                gEntityInfo[slot].unkF = 0x1C;
            }
            break;

        case ENTITY_ID_SMALL_DREAM_STONE:
            if (gSmallDreamStoneFirstEntitySlot == 0)
            {
                gSmallDreamStoneFirstEntitySlot = slot;
            }
            /* fallthrough */
        case ENTITY_ID_LARGE_DREAM_STONE:
            if (id == ENTITY_ID_LARGE_DREAM_STONE)
            {
                if (gLargeDreamStoneFirstEntitySlot == 0)
                {
                    gLargeDreamStoneFirstEntitySlot = slot;
                }
            }

            if (arg4 < 0x20)
            {
                if ((arg7 == 0) && (gUnk_03005220.collectedDreamStones0 & (1 << arg4)))
                {
                    gEntityInfo[slot].unkF = 0x1C;
                }
            }
            else
            {
                if ((arg7 == 0) && (gUnk_03005220.collectedDreamStones1 & (1 << (arg4 - 0x20))))
                {
                    gEntityInfo[slot].unkF = 0x1C;
                }
            }
            gEntityInfo[slot].hvFlip = arg6;
            break;

        case ENTITY_ID_HEART:
            if (gHeartFirstEntitySlot == 0)
            {
                gHeartFirstEntitySlot = slot;
                if (gUnk_03004C20.level == 8)
                {
                    gHeartFirstEntitySlot += 1;
                }
            }

            if ((arg7 == 0) && ((gUnk_03005220.collectedHearts >> arg4) & 1))
            {
                gEntityInfo[slot].unkF = 0x1C;
            }
            gEntityInfo[slot].hvFlip = arg6;
            break;

        case ENTITY_ID_STAR:
            if (gStarFirstEntitySlot == 0)
            {
                gStarFirstEntitySlot = slot;
            }

            if ((gUnk_03005220.stars >> arg4) & 1)
            {
                gEntityInfo[slot].unkF = 0x1C;
            }
            gEntityInfo[slot].hvFlip = arg6;
            break;

        default:
            gEntityInfo[slot].hvFlip = arg6;
            break;
    }

    gEntityInfo[slot].id = id;

    switch (id)
    {
        case ENTITY_ID_MAGNET_BLOCK:
            if (gUnk_030007F4 == 0)
            {
                gUnk_030007F4 = slot;
            }
            gUnk_0300290C = slot;
            /* fallthrough */
        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
        case ENTITY_ID_GROWN_BLOCK:
        case ENTITY_ID_BOX:
        case ENTITY_ID_EXPLODABLE_BLOCK:
            if (gUnk_03005484 == 0)
            {
                gUnk_03005484 = slot;
            }
            gUnk_03004650 = slot;
            /* fallthrough */
        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
        case ENTITY_ID_GRATED_PLATFORM:
        case ENTITY_ID_WATER:
        case ENTITY_ID_SCALE_2:
        case ENTITY_ID_SPRING:
        case ENTITY_ID_MOON_DOOR:
            if (gUnk_030051D4 == 0)
            {
                gUnk_030051D4 = slot;
            }
            gUnk_030034C8 = slot;
            break;
    }

    switch (id)
    {
        case ENTITY_ID_MAGNET_BLOCK:
        case ENTITY_ID_BOX:
            if (gUnk_03003500 == 0)
            {
                gUnk_03003500 = slot;
            }
            gUnk_03004664 = slot;
            /* fallthrough */
        case ENTITY_ID_BOOMIE:
        case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
        case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
            if (gUnk_030047BC == 0)
            {
                gUnk_030047BC = slot;
            }
            gUnk_030007D4 = slot;
            /* fallthrough */
        case ENTITY_ID_MOO:
        case ENTITY_ID_FLYING_MOO_HORIZONTAL:
        case ENTITY_ID_FLYING_MOO_VERTICAL:
            if (gUnk_030047F8 == 0)
            {
                gUnk_030047F8 = slot;
            }
            gUnk_03003504 = slot;
            /* fallthrough */
        case ENTITY_ID_MOO_BOARDER: 
        case 0x13: 
        case 0x16: 
        case 0x1F:
        case ENTITY_ID_GOOMI:
        case ENTITY_ID_GOOMI_HORIZONTAL:
        case ENTITY_ID_GOOMI_VERTICAL:
        case ENTITY_ID_GOOMI_DIAGONAL_1:
        case ENTITY_ID_GOOMI_DIAGONAL_2:
        case ENTITY_ID_ONE_WAY_GATE:
        case ENTITY_ID_GATE:
        case ENTITY_ID_WATER_SWITCH:
        case ENTITY_ID_GATE_SWITCH:
        case ENTITY_ID_ROTATION_SWITCH:
        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
        case ENTITY_ID_BLUE_ARROW:
        case ENTITY_ID_GLIBZ_QUAD_CANNON:
        case ENTITY_ID_TETON:
            if (gUnk_030051D8 == 0)
            {
                gUnk_030051D8 = slot;
            }
            gUnk_03004788 = slot;
            break;
    }

    switch (id)
    {
        case ENTITY_ID_SPIKER_HORIZONTAL:
        case ENTITY_ID_SPIKER_VERTICAL:
        case ENTITY_ID_MAGNET_BLOCK:
        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
        case ENTITY_ID_GRATED_PLATFORM:
        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
        case ENTITY_ID_GROWN_BLOCK:
        case ENTITY_ID_SCALE_2:
        case ENTITY_ID_SPRING:
        case ENTITY_ID_BOX:
        case ENTITY_ID_EXPLODABLE_BLOCK:
            if (gUnk_03003634 == 0)
            {
                gUnk_03003634 = slot;
            }
            gUnk_03005430 = slot;
            /* fallthrough */
        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
        case ENTITY_ID_RED_ARROW:
        case ENTITY_ID_WATER:
        case ENTITY_ID_MOON_DOOR:
        case ENTITY_ID_WATER_SWITCH:
        case ENTITY_ID_GATE_SWITCH:
        case ENTITY_ID_ROTATION_SWITCH:
        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
        case ENTITY_ID_BLUE_ARROW:
            if (gUnk_03003630 == 0)
            {
                gUnk_03003630 = slot;
            }
            gUnk_03004674 = slot;
            /* fallthrough */
        case ENTITY_ID_KEY_DOOR:
        case ENTITY_ID_ONE_WAY_GATE:
        case ENTITY_ID_GATE:
            if (id != ENTITY_ID_WATER)
            {
                if (gUnk_030034D8 == 0)
                {
                    gUnk_030034D8 = slot;
                }
                gUnk_0300541C = slot;
            }
            break;
    }

    switch (id)
    {
        case ENTITY_ID_KEY_DOOR:
        case 0x1E:
        case ENTITY_ID_MAGNET_BLOCK:
        case ENTITY_ID_GROWN_BLOCK:
        case ENTITY_ID_WATER:
        case ENTITY_ID_ONE_WAY_GATE:
        case ENTITY_ID_GATE:
        case ENTITY_ID_SPRING:
        case ENTITY_ID_MOON_DOOR:
        case ENTITY_ID_BOX:
        case ENTITY_ID_EXPLODABLE_BLOCK:
            if (gUnk_030034CC == 0)
            {
                gUnk_030034CC = slot;
            }
            gUnk_0300529C = slot;
            break;
    }

    switch (id)
    {
        case ENTITY_ID_MAGNET_BLOCK:
        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
        case ENTITY_ID_GROWN_BLOCK:
        case ENTITY_ID_WATER:
        case ENTITY_ID_SCALE_2:
        case ENTITY_ID_SPRING:
        case ENTITY_ID_MOON_DOOR:
        case ENTITY_ID_BOX:
        case ENTITY_ID_EXPLODABLE_BLOCK:
            if (gUnk_03000804 == 0)
            {
                gUnk_03000804 = slot;
            }
            gUnk_0300082C = slot;
            /* fallthrough */
        case ENTITY_ID_SPIKER_HORIZONTAL: 
        case ENTITY_ID_SPIKER_VERTICAL: 
        case ENTITY_ID_MOO_BOARDER: 
        case 0x17:
        case 0x1B:
        case 0x22:
        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
        case ENTITY_ID_GRATED_PLATFORM:
        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
        case ENTITY_ID_RED_ARROW:
        case ENTITY_ID_WATER_SWITCH:
        case ENTITY_ID_GATE_SWITCH:
        case ENTITY_ID_ROTATION_SWITCH:
        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
        case ENTITY_ID_BLUE_ARROW:
        case ENTITY_ID_MOO:
        case ENTITY_ID_FLYING_MOO_HORIZONTAL:
        case ENTITY_ID_FLYING_MOO_VERTICAL:
        case ENTITY_ID_GLIBZ_QUAD_CANNON:
        case ENTITY_ID_TETON:
        case ENTITY_ID_BOOMIE:
        case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
        case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
            if (gUnk_030007F0 == 0)
            {
                gUnk_030007F0 = slot;
            }
            gUnk_03004C04 = slot;
            break;
    }

    switch (id)
    {
        case ENTITY_ID_SPIKER_HORIZONTAL:
        case ENTITY_ID_SPIKER_VERTICAL:
        case ENTITY_ID_MOO_BOARDER:
        case 0x18:
        case ENTITY_ID_MAGNET_BLOCK:
        case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
        case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
        case ENTITY_ID_GRATED_PLATFORM:
        case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
        case ENTITY_ID_GROWN_BLOCK:
        case ENTITY_ID_SPRING:
        case ENTITY_ID_BOX:
        case ENTITY_ID_EXPLODABLE_BLOCK:
        case ENTITY_ID_MOO:
        case ENTITY_ID_FLYING_MOO_HORIZONTAL:
        case ENTITY_ID_FLYING_MOO_VERTICAL:
        case ENTITY_ID_GLIBZ_QUAD_CANNON:
        case ENTITY_ID_TETON:
        case ENTITY_ID_BOOMIE:
        case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
        case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
            if (gUnk_030047B4 == 0)
            {
                gUnk_030047B4 = slot;
            }
            gUnk_03003640 = slot;
            /* fallthrough */
        case ENTITY_ID_KEY_DOOR:
        case 0x17:
        case 0x1B:
        case 0x22:
        case ENTITY_ID_FOUNTAIN_FOOTHOLD:
        case ENTITY_ID_RED_ARROW:
        case ENTITY_ID_GEYSER:
        case ENTITY_ID_ONE_WAY_GATE:
        case ENTITY_ID_GATE:
        case ENTITY_ID_SCALE_2:
        case ENTITY_ID_MOON_DOOR:
        case ENTITY_ID_WATER_SWITCH:
        case ENTITY_ID_GATE_SWITCH:
        case ENTITY_ID_ROTATION_SWITCH:
        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
        case ENTITY_ID_BLUE_ARROW:
            if (gUnk_030008F4 == 0)
            {
                gUnk_030008F4 = slot;
            }
            gUnk_030008F0 = slot;
            break;
    }

    if (id == ENTITY_ID_WATER)
    {
        if (gUnk_03000824 == 0)
        {
            gUnk_03000824 = slot;
        }
        gUnk_03005424 = slot;
    }

    switch (id)
    {
        case ENTITY_ID_MAGNET_BLOCK:
        case ENTITY_ID_BOX:
        case ENTITY_ID_MOO:
        case ENTITY_ID_BOOMIE:
        case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
        case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
            if (gUnk_03002904 == 0)
            {
                gUnk_03002904 = slot;
            }
            gUnk_030008FC = slot;
            /* fallthrough */
        case ENTITY_ID_FLYING_MOO_HORIZONTAL:
        case ENTITY_ID_FLYING_MOO_VERTICAL:
        case ENTITY_ID_GLIBZ_QUAD_CANNON:
        case ENTITY_ID_TETON:
            if (gUnk_030034A4 == 0)
            {
                gUnk_030034A4 = slot;
            }
            gUnk_030052B0 = slot;
            /* fallthrough */
        case ENTITY_ID_GROWN_BLOCK:
        case ENTITY_ID_KLONOA:
            if (gUnk_03003638 == 0)
            {
                gUnk_03003638 = slot;
            }
            gUnk_03002908 = slot;
            break;
    }

    switch (id)
    {
        case ENTITY_ID_KLONOA:
        case ENTITY_ID_BOX:
        case ENTITY_ID_EXPLODABLE_BLOCK:
        case ENTITY_ID_WATER_SWITCH:
        case ENTITY_ID_GATE_SWITCH:
        case ENTITY_ID_ROTATION_SWITCH:
        case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
        case ENTITY_ID_BLUE_ARROW:
        case ENTITY_ID_MOO:
        case ENTITY_ID_FLYING_MOO_HORIZONTAL:
        case ENTITY_ID_FLYING_MOO_VERTICAL:
        case ENTITY_ID_TETON:
        case ENTITY_ID_BOOMIE:
        case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
        case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
            if (gUnk_030052B4 == 0)
            {
                gUnk_030052B4 = slot;
            }
            gUnk_030051C4 = slot;
            break;
    }
}

// 5CF4
void EntityCommonTransferToOamBuffer(void)
{
    s32 slot;

    EntityResetOamBuffer();
    gOamBufferPtr = gOamBuffer;

    if (gEntityInfo[0xB].visible == 1)
    {
        TRANSFER_OAM(0xB);
    }

    if (gEntityInfo[0xC].visible == 1)
    {
        TRANSFER_OAM(0xC);
    }

    for (slot = 1; slot <= 8; slot++)
    {
        if (gEntityInfo[slot].visible == 1)
        {
            if (gEntityAnimationInfo[slot].state != 1)
            {
                TRANSFER_OAM(slot);
            }
    
            if (gEntityAnimationInfo[slot].state == 7)
            {
                TRANSFER_OAM(slot);
            }
        }
    }

    for (slot = 0; slot <= 0xC; slot++)
    {
        if (gEntityInfo[slot].id == 0x34)
        {
            continue;
        }

        if (slot == 0xB || slot == 0xC)
        {
            continue;
        }

        if (gEntityInfo[slot].visible == 1)
        {
            TRANSFER_OAM(slot);
        }
    }

    for (slot = 0xD; slot < gEntitySlotCount; slot++)
    {
        if (gEntityInfo[slot].visible == 1)
        {
            TRANSFER_OAM(slot);
        }
    }

    for (slot = 1; slot <= 8; slot++)
    {
        if (gEntityInfo[slot].visible == 1)
        {
            if (gEntityAnimationInfo[slot].state == 1)
            {
                TRANSFER_OAM(slot);
            }
        }
    }
}

// 70A0
void EntityBossTransferToOamBuffer(void)
{
    s32 slot;

    EntityResetOamBuffer();
    gOamBufferPtr = gOamBuffer;

    if (gEntityInfo[0xB].visible == 1)
    {
        TRANSFER_OAM(0xB);
    }

    if (gEntityInfo[0xC].visible == 1)
    {
        TRANSFER_OAM(0xC);
    }

    if (gEntityInfo[0xD].visible == 1)
    {
        TRANSFER_OAM(0xD);
        gEntityInfo[0xD].visible = 0;
    }

    if (gEntityInfo[0xE].visible == 1)
    {
        TRANSFER_OAM(0xE);
        gEntityInfo[0xE].visible = 0;
    }

    if (gEntityInfo[0xF].visible == 1)
    {
        TRANSFER_OAM(0xF);
        gEntityInfo[0xF].visible = 0;
    }

    if (gEntityInfo[0x10].visible == 1)
    {
        TRANSFER_OAM(0x10);
        gEntityInfo[0x10].visible = 0;
    }

    for (slot = 1; slot <= 8; slot++)
    {
        if (gEntityInfo[slot].visible == 1)
        {
            if (gEntityAnimationInfo[slot].state != 1)
            {
                TRANSFER_OAM(slot);
            }
        }
    }

    if ((gUnk_03004C20.level == 8) && (gUnk_03004C20.world == 3))
    {
        for (slot = 0; slot <= 9; slot++)
        {
            if (gEntityInfo[slot + 0x16].unkF == 0x10 || gEntityInfo[slot + 0x16].unkF == 0x11)
            {
                TRANSFER_OAM(slot + 0x16);
            }
        }

        if ((gUnk_03005400.unkA == 0xD) && (gUnk_03005400.unk6 != 0))
        {
            if (gEntityInfo[0x12].visible == 1)
            {
                TRANSFER_OAM(0x12);
            }
        }

        for (slot = 0; slot <= 0xC; slot++)
        {
            if (gEntityInfo[slot].id == 0x34)
            {
                continue;
            }

            if (slot == 0xB || slot == 0xC)
            {
                continue;
            }

            if (gEntityInfo[slot].visible == 1)
            {
                TRANSFER_OAM(slot);
            }
        }

        for (slot = 0xD; slot < gEntitySlotCount; slot++)
        {
            if (gEntityInfo[slot].visible == 1)
            {
                if ((slot >= 0x16 && slot <= 0x1F) && (gEntityInfo[slot].unkF == 0x10 || gEntityInfo[slot].unkF == 0x11))
                {
                    continue;
                }

                if ((gUnk_03005400.unkA == 0xD) && (gUnk_03005400.unk6 != 0) && (gEntityInfo[0x12].visible == 1) && (slot == 0x12))
                {
                    continue;
                }

                TRANSFER_OAM(slot);
            }
        }
    }
    else
    {
        for (slot = 0; slot <= 0xC; slot++)
        {
            if (gEntityInfo[slot].id == 0x34)
            {
                continue;
            }

            if (slot == 0xB || slot == 0xC)
            {
                continue;
            }

            if (gEntityInfo[slot].visible == 1)
            {
                TRANSFER_OAM(slot);
            }
        }

        for (slot = 0xD; slot < gEntitySlotCount; slot++)
        {
            if (gEntityInfo[slot].visible == 1)
            {
                TRANSFER_OAM(slot);
            }
        }
    }

    for (slot = 1; slot <= 8; slot++)
    {
        if (gEntityInfo[slot].visible == 1)
        {
            if (gEntityAnimationInfo[slot].state == 1)
            {
                TRANSFER_OAM(slot);
            }
        }
    }
}

// 98C8
void EntityVisionSelectTransferToOamBuffer(void)
{
    s32 klonoaYPosScreen;
    s32 klonoaXPosScreen;
    s32 slot;

    EntityResetOamBuffer();
    gOamBufferPtr = gOamBuffer;

    klonoaYPosScreen = gEntityInfo[0].yPosScreen;
    klonoaXPosScreen = gEntityInfo[0].xPosScreen;

    for (slot = 0xD; slot < gEntitySlotCount; slot++)
    {
        if (gEntityInfo[slot].visible == 1)
        {
            if ((gEntityInfo[slot].id == 0x52) &&
                (gEntityInfo[slot].xPosScreen > (klonoaXPosScreen - 0x10)) && (gEntityInfo[slot].xPosScreen < (klonoaXPosScreen + 0x10)) &&
                (gEntityInfo[slot].yPosScreen <= (klonoaYPosScreen + 0xA)) && (gEntityInfo[slot].yPosScreen >= (u32)klonoaYPosScreen))
            {
                continue;
            }

            if ((gEntityInfo[slot].yPosScreen + gEntityInfo[slot].unk8.split.unk8) > klonoaYPosScreen)
            {
                TRANSFER_OAM(slot);
            }
        }
    }

    for (slot = 0; slot <= 0xC; slot++)
    {
        if (gEntityInfo[slot].visible == 1)
        {
            TRANSFER_OAM(slot);
        }
    }

    for (slot = 0xD; slot < gEntitySlotCount; slot++)
    {
        if (gEntityInfo[slot].visible == 1)
        {
            if (gEntityInfo[slot].id == 0x52)
            {
                if ((gEntityInfo[slot].xPosScreen > (klonoaXPosScreen - 0x10) && gEntityInfo[slot].xPosScreen < (klonoaXPosScreen + 0x10)) &&
                    (gEntityInfo[slot].yPosScreen <= (klonoaYPosScreen + 0xA) && gEntityInfo[slot].yPosScreen >= (u32)klonoaYPosScreen))
                {
                    TRANSFER_OAM(slot);
                }
            }

            if ((gEntityInfo[slot].yPosScreen + gEntityInfo[slot].unk8.split.unk8) <= klonoaYPosScreen)
            {
                TRANSFER_OAM(slot);
            }
        }
    }
}

// A468
void EntityResetOamBuffer(void)
{
    s32 i;
    u16 *pOamAffineBuf;
    union Unk_03000820 defaultOam;

    pOamAffineBuf = (u16*)gOamAffineBuffer;
    defaultOam = gUnk_080E2A7C;

    for (i = 0; i < 0x80; i++)
    {
        gOamBuffer[i].all = defaultOam.all;
        gOamBuffer[i].all.affineParam = *pOamAffineBuf++;
    }
}

// A49C
void EntityCommonUpdateScreenPositions(void)
{
    // Update screen position and visible flag for all entities (normal)
    s32 slot;

    // Update Klonoa screen position
    gEntityInfo[0].xPosScreen = gEntityInfo[0].xPosBg2 - gBgInfo[2].hOfs;
    gEntityInfo[0].yPosScreen = gEntityInfo[0].yPosBg2 - gBgInfo[2].vOfs;

    if (gEntityInfo[0x9].visible == 1)
    {
        // Update wind bullet screen position
        gEntityInfo[0x9].xPosScreen = gEntityInfo[0x9].xPosBg2 - gBgInfo[2].hOfs;
        gEntityInfo[0x9].yPosScreen = gEntityInfo[0x9].yPosBg2 - gBgInfo[2].vOfs;
        gEntityInfo[0xA].xPosScreen = gEntityInfo[0xA].xPosBg2 - gBgInfo[2].hOfs;
        gEntityInfo[0xA].yPosScreen = gEntityInfo[0xA].yPosBg2 - gBgInfo[2].vOfs;
    }

    for (slot = 1; slot < gEntitySlotCount; slot++)
    {
        if (slot == 9)
        {
            slot = 0xD;
        }

        if (gEntityInfo[slot].unkF < 0x19)
        {
            gEntityInfo[slot].xPosScreen = gEntityInfo[slot].xPosBg2 - gBgInfo[2].hOfs;
            gEntityInfo[slot].yPosScreen = gEntityInfo[slot].yPosBg2 - gBgInfo[2].vOfs;
            if ((gEntityInfo[slot].xPosScreen >= (DISPLAY_WIDTH + 35) && gEntityInfo[slot].xPosScreen <= (u16)(-36))
                || (gEntityInfo[slot].yPosScreen >= (DISPLAY_HEIGHT + 64) && gEntityInfo[slot].yPosScreen <= (u16)(-36)))
            {
                gEntityInfo[slot].visible = 0;
            }
            else
            {
                gEntityInfo[slot].visible = 1;
            }
        }
    }
}

// A5B8
void EntityUpdateScreenPositionAffine(u8 slot, s8 xOffset, s8 yOffset)
{
    // Update entity x/y (affine) with optional offset
    s16 bg2XOffset;
    s16 bg2YOffset;
    s32 yPos;
    s32 xPos;
    struct Unk_0300466C_4 *var_r0;

    xOffset++,xOffset--; //fake
    gEntityInfo[slot].xPosScreen = gEntityInfo[slot].xPosBg2 - xOffset - gBgInfo[2].hOfs;
    gEntityInfo[slot].yPosScreen = gEntityInfo[slot].yPosBg2 - yOffset - gBgInfo[2].vOfs;

    bg2XOffset = gBgInfo[2].hOfs - gEntityInfo[slot].xPosScreen;
    bg2YOffset = gBgInfo[2].vOfs - gEntityInfo[slot].yPosScreen;

    xPos = (bg2XOffset * gBg2XMag) / 0x100;
    yPos = (bg2YOffset * gBg2YMag) / 0x100;

    xPos = gBgInfo[2].hOfs - xPos;
    if (slot >= 0xD)
    {
        var_r0 = gUnk_030051DC[slot - 0xD].unk4;
    }
    else
    {
        var_r0 = gUnk_08078FC8[slot].unk4;
    }

    switch (var_r0->shape_size & 0xF)
    {
        // TODO: 3 is not a valid shape, so is this what is meant?
        case SPRITE_SIZE_8x16 | SPRITE_SIZE_16x8:   // 3 = 0 | 3
        case SPRITE_SIZE_32x16 | SPRITE_SIZE_16x32: // 11 = 8 | 3
            yPos = gBgInfo[2].vOfs - yPos + ((0x100 - gBg2YMag) >> 3);
            break;

        case SPRITE_SIZE_16x8:  // 1 = 0 | 1
        case SPRITE_SIZE_8x32:  // 6 = 4 | 2
        case SPRITE_SIZE_32x32: // 8 = 8 | 0
            yPos = gBgInfo[2].vOfs - yPos + ((0x100 - gBg2YMag) >> 5);
            break;

        case SPRITE_SIZE_8x8:   // 0 = 0 | 0
        case SPRITE_SIZE_16x16: // 4 = 4 | 0
        case SPRITE_SIZE_32x8:  // 5 = 4 | 1
            yPos = gBgInfo[2].vOfs - yPos + ((0x100 - gBg2YMag) >> 6);
            break;

        default:
            yPos = gBgInfo[2].vOfs - yPos + ((0x100 - gBg2YMag) >> 4);
            break;
    }

    gEntityInfo[slot].xPosScreen = xPos;
    gEntityInfo[slot].yPosScreen = yPos;
}

// A71C
void EntityBossUpdateScreenPositions(s8 xOffset, s8 yOffset)
{
    // Update screen position and visible flag for all entities (on boss stage)
    s32 slot;

    for (slot = 0; slot < 0xB; slot++)
    {
        EntityUpdateScreenPositionAffine(slot, xOffset, yOffset);
    }

    for (slot = 0xD; slot < gEntitySlotCount; slot++)
    {
        if (gEntityInfo[slot].unkF == 0x1A)
        {
            gEntityInfo[slot].visible = 0;
            continue;
        }

        if (gEntityInfo[slot].affineEnable == 1)
        {
            if (gEntityInfo[slot].unkF < 0x19)
            {
                EntityUpdateScreenPositionAffine(slot, xOffset, yOffset);
                if (gEntityInfo[slot].id != 0)
                {
                    if ((gEntityInfo[slot].xPosScreen >= (DISPLAY_WIDTH + 67) && gEntityInfo[slot].xPosScreen <= (u16)(-68))
                        || (gEntityInfo[slot].yPosScreen >= (DISPLAY_HEIGHT + 96) && gEntityInfo[slot].yPosScreen <= (u16)(-68)))
                    {
                        gEntityInfo[slot].visible = 0;
                    }
                    else
                    {
                        gEntityInfo[slot].visible = 1;
                    }
                }
            }
        }
        else
        {
            if (gEntityInfo[slot].unkF == 0x1C)
            {
                gEntityInfo[slot].visible = 0;
            }
            else
            {
                gEntityInfo[slot].xPosScreen = gEntityInfo[slot].xPosBg2;
                gEntityInfo[slot].yPosScreen = gEntityInfo[slot].yPosBg2;
                gEntityInfo[slot].visible = 1;
            }
        }
    }
}


// A804
void sub_0800A804(void)
{
    // Process (call update functions) for all entities (common)
    u32 i;
    u32 slot;

    if ((gNewKeys & START_BUTTON) && (gTransitioning == FALSE) && (gUnk_03005220.unk46 == 0))
    {
        for (i = 0; i < 10; i++)
        {
            gCallbackQueue.previous[i] = gCallbackQueue.current[i];
        }

        gCallbackQueue.previousCount = gCallbackQueue.currentCount;
        gUnk_030034BC = 0;
        gUnk_03003410.unk4 = 1;
        gCallbackQueue.next[0] = PauseMenuScreenInit;
        gCallbackQueue.next[1] = CommonWaitForNextFrame;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gCallbackQueue.currentCount = 1;
        gCallbackQueue.current[0] = NULL;
        return;
    }

    if (gRoomRotationAlpha == 0xFE)
    {
        if ((gCallbackQueue.current[4] != TransitionFromVisionSelectToLevel_FadeOut) && (gCallbackQueue.current[4] != TransitionFromRoomToRoom_FadeOut))
        {
            sub_0800D188();
        }

        for (slot = 0xD; slot < gEntitySlotCount; slot++)
        {
            if (gEntityInfo[slot].unkF != 0x1C)
            {
                switch (gEntityInfo[slot].id)
                {
                    case ENTITY_ID_MAGNET_BLOCK:
                    case ENTITY_ID_BOX:
                        if (gEntityInfo[slot].unk8.split.unk8 != 1)
                        {
                            sub_08014760(slot);
                        }
                        break;

                    case ENTITY_ID_SPIKER_HORIZONTAL:
                    case ENTITY_ID_SPIKER_VERTICAL:
                    case ENTITY_ID_MOO_BOARDER:
                    case ENTITY_ID_MOO:
                    case ENTITY_ID_FLYING_MOO_HORIZONTAL:
                    case ENTITY_ID_FLYING_MOO_VERTICAL:
                    case ENTITY_ID_GLIBZ_QUAD_CANNON:
                    case ENTITY_ID_TETON:
                    case ENTITY_ID_BOOMIE:
                    case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
                    case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
                        sub_08016EEC(slot);
                        break;

                    case ENTITY_ID_CIRCLE_KEY:
                    case ENTITY_ID_TRIANGLE_KEY:
                    case ENTITY_ID_HEART_KEY:
                        sub_0801CE38(slot);
                        break;

                    case ENTITY_ID_GOOMI:
                    case ENTITY_ID_GOOMI_HORIZONTAL:
                    case ENTITY_ID_GOOMI_VERTICAL:
                    case ENTITY_ID_GOOMI_DIAGONAL_1:
                    case ENTITY_ID_GOOMI_DIAGONAL_2:
                        sub_0801B688(slot);
                        break;

                    case ENTITY_ID_MOVING_PLATFORM_VERTICAL:
                    case ENTITY_ID_FOUNTAIN_FOOTHOLD:
                    case ENTITY_ID_MOVING_PLATFORM_HORIZONTAL:
                    case ENTITY_ID_GRATED_PLATFORM:
                    case ENTITY_ID_BLUE_DISAPPEARING_PLATFORM:
                        sub_0801BD48(slot);
                        break;

                    case ENTITY_ID_SPRING:
                        sub_0801BB6C(slot);
                        break;

                    case ENTITY_ID_HOVER_BOARD_SPRING:
                        sub_0801BCC0(slot);
                        break;

                    case ENTITY_ID_PRESSURE_SWITCH:
                    case ENTITY_ID_WATER_SWITCH:
                    case ENTITY_ID_GATE_SWITCH:
                    case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
                        sub_0801C150(slot);
                        break;

                    case ENTITY_ID_WATERFALL:
                        sub_0801C6EC(slot);
                        break;

                    case ENTITY_ID_SCALE_1:
                        sub_0801C82C(slot);
                        break;

                    case ENTITY_ID_LEAF_1:
                    case ENTITY_ID_LEAF_2:
                        sub_0801D0D8(slot);
                        break;

                    case ENTITY_ID_GROWN_BLOCK:
                        if ((slot == gUnk_030047B8) || (slot == gUnk_03005470))
                        {
                            sub_0801D4AC(slot);
                        }
                        break;

                    case ENTITY_ID_EXPLODABLE_BLOCK:
                        sub_0801D4AC(slot);
                        break;

                    case ENTITY_ID_BOOMIE_EXPLOSION_COUNTDOWN:
                        sub_0801DE44(slot);
                        break;

                    case ENTITY_ID_GLIBZ_QUAD_CANNON_BULLET:
                        sub_0801DFC4(slot);
                        break;

                    case ENTITY_ID_BLUE_ARROW:
                        if (gEntityInfo[slot].unk8.split.unk8 != 0)
                        {
                            gEntityInfo[slot].unk8.split.unk8 -= 1;
                        }
                        break;

                    case ENTITY_ID_MAGNET_BLOCK_HAND:
                        sub_0801D6B0(slot);
                        break;

                    case ENTITY_ID_CANNON_GOAL:
                        {
                            if (gEntityInfo[slot].unk8.all != 0)
                            {
                                sub_0801B044(slot);
                            }
                        }
                        break;

                    case ENTITY_ID_STAR:
                        if (gEntityInfo[slot].unkF == 2)
                        {
                            sub_0801E1A8(slot);
                        }
                        break;

                    case ENTITY_ID_1_UP:
                        if (gEntityInfo[slot].unkF == 2)
                        {
                            sub_0801E354(slot);
                        }
                        break;
                }
            }
        }

        UpdateEntityAnimationInfoEntries();
    }

    if (gBoomieExplosionCountdownEntitySlotOffset != 0)
    {
        sub_0801E3FC();
    }

    if (gUnk_03005220.unk3F != 0)
    {
        sub_08014318();
    }
}

extern void sub_0801F4D0(s32); // should be u8 param
extern void sub_08021DAC(s32); // should be u8 param

// AC34
void sub_0800AC34(void)
{
    // // Process (i.e. call update functions) for all entities (boss)
    s32 slot;
    struct EntityInfo *temp_r1_2;
    struct EntityInfo *temp_r1_5;
    u32 i;

    if (gUnk_03005220.hearts == 0)
    {
        gEntityInfo[0].priority = 0;
    }

    if ((gNewKeys & START_BUTTON) && (gTransitioning == FALSE) && (gUnk_03005220.unk46 == 0) && (gUnk_03005400.unkC != 0))
    {
        for (i = 0; i < 10; i++)
        {
            gCallbackQueue.previous[i] = gCallbackQueue.current[i];
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
        gCallbackQueue.next[0] = PauseMenuScreenInit;
        gCallbackQueue.next[1] = BossWaitForNextFrame;
        gCallbackQueue.next[2] = NULL + 1;
        gCallbackQueue.current[gCallbackQueue.currentCount - 1] = NULL;
        gCallbackQueue.nextCount = 3;
        gCallbackQueue.currentCount = 1;
        gCallbackQueue.current[0] = NULL;
        return;
    }

    UpdateEntityAnimationInfoEntries();

    for (slot = 0; slot < gEntitySlotCount; slot++)
    {
        if (gEntityInfo[slot].id == ENTITY_ID_HEART)
        {
            if (gEntityInfo[slot].unkF == 0x1C)
            {
                if (gEntityInfo[slot].unk8.split.unk8 == 0)
                {
                    if (gUnk_03005400.unk2 < 0xE10)
                    {
                        gUnk_03005400.unk2 += 1;
                    }
                    if (gUnk_03005400.unk2 == 0xE10)
                    {
                        gEntityInfo[slot].unkF = 0x19;
                        gUnk_03005400.unk2 = 0;
                    }
                }
            }
        }

        if (gEntityInfo[slot].unkF != 0x1C)
        {
            if (gEntityInfo[slot].id != 0)
            {
                gEntityInfo[slot].affineHFlip_matrixNum = gEntityInfo[slot].hvFlip;
                gEntityInfo[slot].affineDouble = 0;

                switch (gEntityInfo[slot].id)
                {
                    case ENTITY_ID_MOO_BOARDER:
                    case ENTITY_ID_MOO:
                    case ENTITY_ID_FLYING_MOO_HORIZONTAL:
                    case ENTITY_ID_FLYING_MOO_VERTICAL:
                        if (gUnk_03004C20.world == 2)
                        {
                            if (gEntityInfo[slot].unkF == 0x13)
                            {
                                gEntityInfo[slot].affineHFlip_matrixNum = gOamAffineMatrixNum;
                            }
                        }
                        sub_08016EEC(slot);
                        break;

                    case ENTITY_ID_HEART:
                        gEntityInfo[slot].affineHFlip_matrixNum = 4;
                        gEntityInfo[slot].affineDouble = 1;
                        sub_0801F02C(slot);
                        break;

                    case 0x10:
                        switch (gEntityInfo[slot].unkF)
                        {
                            case 0:
                                break;

                            case 25:
                                SetEntityAnimationInfoState(slot, 0);
                                gEntityInfo[slot].visible = 1;
                                gEntityInfo[slot].unkF = 0;
                                break;
                        }
                        break;

                    case 0x11:
                        sub_0801F128(slot);
                        break;

                    case 0x12:
                        sub_0801F4D0(slot);
                        break;

                    case 0x13:
                        sub_0801F648(slot);
                        break;

                    case 0x14:
                        sub_0801FADC(slot);
                        break;

                    case 0x16:
                        sub_0801FFF0(slot);
                        break;

                    case 0x15:
                        gEntityInfo[slot].affineEnable = 1;
                        gEntityInfo[slot].affineHFlip_matrixNum = 3;
                        if (gEntityAnimationInfo[0x12 - gUnk_0300363C].state == 0)
                        {
                            gEntityInfo[slot].unkF = 0;
                            gEntityInfo[slot].visible = 1;
                            gEntityInfo[slot].xPosBg2 = gEntityInfo[0x12].xPosBg2;
                            gEntityInfo[slot].yPosBg2 = gEntityInfo[0x12].yPosBg2 - 0x3C;
                        }
                        else
                        {
                            gEntityInfo[slot].unkF = 0x1A;
                            gEntityInfo[slot].visible = 0;
                        }
                        break;

                    case 0x17:
                        gEntityInfo[slot].affineDouble = 1;
                        sub_080202D4(slot);
                        break;

                    case 0x18:
                        sub_08021194(slot);
                        break;

                    case 0x19:
                        sub_08020FB8(slot);
                        break;

                    case 0x1A:
                        sub_0802192C(slot);
                        break;

                    case 0x1D:
                        sub_08021AD4(slot);
                        break;

                    case 0x1C:
                        gEntityInfo[slot].affineHFlip_matrixNum = 5;
                        gEntityInfo[slot].affineDouble = 1;
                        sub_08022CA0(slot);
                        break;

                    case 0x1E:
                        gEntityInfo[slot].affineHFlip_matrixNum = 6;
                        gUnk_03003590[3].unk5_0 = gEntityInfo[slot].hvFlip;
                        sub_08023988(slot);
                        break;

                    case 0x1B:
                        sub_08021DAC(slot);
                        break;

                    case 0x1F:
                        if (slot > 0x18)
                        {
                            gEntityInfo[slot].affineHFlip_matrixNum = 10;
                        }
                        else
                        {
                            gEntityInfo[slot].affineHFlip_matrixNum = slot - 0xF;
                        }
                        sub_08023BC0(slot);
                        break;

                    case ENTITY_ID_22:
                        gUnk_030034A8(slot);
                        break;

                    case ENTITY_ID_LEAF_1:
                    case ENTITY_ID_LEAF_2:
                        sub_0801D0D8(slot);
                        break;

                    case ENTITY_ID_GOOMI:
                    case ENTITY_ID_GOOMI_HORIZONTAL:
                    case ENTITY_ID_GOOMI_VERTICAL:
                    case ENTITY_ID_GOOMI_DIAGONAL_1:
                    case ENTITY_ID_GOOMI_DIAGONAL_2:
                        sub_0801B688(slot);
                        break;

                    case ENTITY_ID_RED_ARROW:
                        gEntityInfo[slot].affineHFlip_matrixNum = slot - 0x13;
                        gUnk_03003590[slot - 0x16].unk2 = 0x40;
                        gUnk_03003590[slot - 0x16].unk0 = 0x40;
                        gUnk_03003590[slot - 0x16].unk5_0 = gEntityInfo[slot].hvFlip;

                        if (gEntityInfo[slot].hvFlip & 2)
                        {
                            gUnk_03003590[slot - 0x16].unk4 = 0x80;
                        }
                        else
                        {
                            gUnk_03003590[slot - 0x16].unk4 = 0;
                        }
                        break;

                    case 0x44:
                    case 0x45:
                        temp_r1_2 = &gEntityInfo[gUnk_080E2A84[gUnk_03004C20.world - 1][slot - gUnk_080E2A84[gUnk_03004C20.world - 1][0]]];
                        if (((temp_r1_2->id != 0x22) && (temp_r1_2->unkF == 0x1C)) || (temp_r1_2->unkF == 0x19))
                        {
                            gEntityInfo[slot].xPosBg2 = 0x200;
                            break;
                        }

                        gEntityInfo[slot].xPosBg2 = temp_r1_2->xPosBg2;
                        gEntityInfo[slot].yPosBg2 = gEntityInfo[gUnk_080E2A84[gUnk_03004C20.world - 1][slot - gUnk_080E2A84[gUnk_03004C20.world - 1][0]]].yPosBg2 & ~7;
                        
                        temp_r1_5 = &gEntityInfo[gUnk_080E2A84[gUnk_03004C20.world - 1][slot - gUnk_080E2A84[gUnk_03004C20.world - 1][0]]];
                        if (temp_r1_5->id == 0x22)
                        {
                            if (temp_r1_5->hvFlip == 0)
                            {
                                gEntityInfo[slot].xPosBg2 -= 6;
                            }
                            else
                            {
                                gEntityInfo[slot].xPosBg2 += 9;
                            }

                            gEntityInfo[slot].affineHFlip_matrixNum = 5;
                            gEntityInfo[slot].affineDouble = 1;
                            gUnk_03003590[2].unk0 = 0x100;
                            gUnk_03003590[2].unk2 = 0x80;
                        }

                        while (1)
                        {
                            u32 tmp2 = gBgDataPtrs.pBufBg2Tilemap[(gEntityInfo[slot].xPosBg2 >> 3) + ((gEntityInfo[slot].yPosBg2 >> 3) * gBgInfo[2].hLength)];
                            if (gUnk_03004654->unk1B <= tmp2)
                            {
                                gEntityInfo[slot].yPosBg2 += 0xA;
                                break;
                            }

                            gEntityInfo[slot].yPosBg2 += 8;
                        }
                        
                        break;

                    case 0x20:
                        sub_0803CE14(slot);
                        break;
                }
            }
        }
    }

    if (gUnk_03005400.unkE_7 && (gCallbackQueue.current[4] != TransitionFromVisionSelectToLevel_FadeOut) && (gCallbackQueue.current[4] != TransitionFromRoomToRoom_FadeOut))
    {
        sub_0800D188();
    }

    if (gUnk_03005220.unk37 != 0)
    {
        UpdateEntityAnimationInfoEntries();
    }

    if (gUnk_03005220.unk3F != 0)
    {
        sub_08014318();
    }
}

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
    gEntitySlotCount = 0xD;

    // gUnk_03003610[0].unk3 = 0;
    // gUnk_03003610[0].unk2 = 0;
    // gMagnetBlockHandEntityCount = 0;
    // gUnk_030052A8 = 0;
    // gUnk_030034E0 = 0;
    // gUnk_03005470 = 0;
    // gUnk_030047B8 = 0;
    // gOamAffineMatrixNum = 0;
    // gBoomieExplosionCountdownEntitySlotOffset = 0;
    // gUnk_03005298 = 0;

    gUnk_03005298 = gBoomieExplosionCountdownEntitySlotOffset = gOamAffineMatrixNum = gUnk_030047B8 = gUnk_03005470 = gUnk_030034E0 = gUnk_030052A8 = gMagnetBlockHandEntityCount = gUnk_03003610[0].unk2 = gUnk_03003610[0].unk3 = 0;

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

    // gStarFirstEntitySlot = 0;
    // gHeartFirstEntitySlot = 0;
    // gLargeDreamStoneFirstEntitySlot = 0;
    // gSmallDreamStoneFirstEntitySlot = 0;

    gSmallDreamStoneFirstEntitySlot = gLargeDreamStoneFirstEntitySlot = gHeartFirstEntitySlot = gStarFirstEntitySlot = 0;

    for (var_sb = 0; gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[0].unk0 != 0xFFFF; var_sb++)
    {
        EntityCreate(gEntitySlotCount++, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk28, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk0, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk2, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk4, 0, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk5, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk0[gUnk_03004C20.room - 1].unk6, gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][var_sb].unk29);

        if ((gEntityInfo[gEntitySlotCount - 1].id >= ENTITY_ID_WATER) && (gEntityInfo[gEntitySlotCount - 1].id <= ENTITY_ID_MOON_DOOR))
        {
            continue;
        }

        if ((gEntityInfo[gEntitySlotCount - 1].id >= ENTITY_ID_LEAF_1) && (gEntityInfo[gEntitySlotCount - 1].id <= ENTITY_ID_LEAF_2))
        {
            continue;
        }

        RoomRotationUpdateEntityPosition(gEntitySlotCount - 1);
    }

    if (gUnk_03004C20.unkA == 1)
    {
        gUnk_03005220.unk1A = gEntityInfo[0].xPosBg2;
        gUnk_03005220.unk10 = gEntityInfo[0].xPosBg2 << 0x10;
        gUnk_03005220.unk2F = 0;
    }
    gUnk_03004C10 = NULL;

    for (var_sb = 0xD; var_sb < gEntitySlotCount; var_sb++)
    {
        switch (gEntityInfo[var_sb].id)
        {
            case ENTITY_ID_MOO_BOARDER:
                if (gUnk_03004C20.level != 8)
                {
                    SetEntityAnimationInfoState(var_sb, 3);
                }
                else
                {
                    SetEntityAnimationInfoState(var_sb, 1);
                }
                break;

            case ENTITY_ID_MOO:
            case ENTITY_ID_BOOMIE:
                SetEntityAnimationInfoState(var_sb, 1);
                break;

            case ENTITY_ID_SPIKER_HORIZONTAL:
            case ENTITY_ID_SPIKER_VERTICAL:
                if (sp14 == 0)
                {
                    SetEntityAnimationInfoState(var_sb, 0);
                    sp14 = 1;
                }
                break;

            case ENTITY_ID_GLIBZ_QUAD_CANNON_BULLET:
                if (sp18 == 0)
                {
                    SetEntityAnimationInfoState(var_sb, 0);
                    sp18 = 1;
                }
                break;

            case ENTITY_ID_MOON_DOOR:
                if (gUnk_03005220.moonDoorOpen != 0)
                {
                    SetEntityAnimationInfoState(var_sb, 2);
                }
                else
                {
                    SetEntityAnimationInfoState(var_sb, 0);
                }
                break;

            case ENTITY_ID_GOOMI:
            case ENTITY_ID_GOOMI_HORIZONTAL:
            case ENTITY_ID_GOOMI_VERTICAL:
            case ENTITY_ID_GOOMI_DIAGONAL_1:
            case ENTITY_ID_GOOMI_DIAGONAL_2:
            case ENTITY_ID_SPRING:
            case 0x49:
            case ENTITY_ID_FLYING_MOO_HORIZONTAL:
            case ENTITY_ID_FLYING_MOO_VERTICAL:
            case ENTITY_ID_GLIBZ_QUAD_CANNON:
            case ENTITY_ID_TETON:
            case ENTITY_ID_FLYING_BOOMIE_HORIZONTAL:
            case ENTITY_ID_FLYING_BOOMIE_VERTICAL:
                SetEntityAnimationInfoState(var_sb, 0);
                break;

            case ENTITY_ID_WATER_SWITCH:
                if (gEntityInfo[var_sb].unkC_4 == 0)
                {
                    DmaCopy16(3, &gUnk_08063FE8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B9268, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                }
                break;

            case ENTITY_ID_GATE_SWITCH:
                if (gEntityInfo[var_sb].yPosBg2 & 1)
                {
                    if (gEntityInfo[var_sb].unk8.split.unk9 == 1)
                    {
                        if (gEntityInfo[var_sb].unkC_4 == 0)
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
                    if (gEntityInfo[var_sb].unkC_4 == 0)
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

            case ENTITY_ID_GROWING_SHRINKING_BLOCK_SWITCH:
                gEntityInfo[var_sb].unkC_4 = gUnk_03005220.pressedGrowingShrinkingBlockSwitch;
                if (gUnk_03005220.pressedGrowingShrinkingBlockSwitch == 0)
                {
                    DmaCopy16(3, &gUnk_08063368, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B92E8, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x80);
                }
                break;

            case ENTITY_ID_ROTATION_SWITCH:
                temp_r3_3 = (gUnk_03004C20.roomsRotationBits >> ((gUnk_03004C20.room - 1) * 2)) & 3;
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

            case ENTITY_ID_RED_ARROW:
                if ((gEntityInfo[var_sb].unkC_4 == 3) || (gEntityInfo[var_sb].unkC_4 == 1))
                {
                    DmaCopy16(3, &gUnk_08064868, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x200);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B9468, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x200);
                }
                break;

            case ENTITY_ID_BLUE_ARROW:
                if ((gEntityInfo[var_sb].unkC_4 == 3) || (gEntityInfo[var_sb].unkC_4 == 1))
                {
                    DmaCopy16(3, &gUnk_08064A68, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x200);
                }
                else
                {
                    DmaCopy16(3, &gUnk_080B9668, OBJ_VRAM0 + (gUnk_0818B8E0[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk4[var_sb - 0xD].tileNum << 5), 0x200);
                }
                break;

            case ENTITY_ID_WATER:
                if (sp1C == 0)
                {
                    SetEntityAnimationInfoState(var_sb, 0);
                    sp1C = 1;
                }
                break;

            case ENTITY_ID_GEYSER:
                if (sp20 == 0)
                {
                    SetEntityAnimationInfoState(var_sb, 2);
                    sp20 = 1;
                }
                break;

            case ENTITY_ID_WATERFALL:
                if (sp24 == 0)
                {
                    SetEntityAnimationInfoState(var_sb, 1);
                    sp24 = 1;
                }
                break;

            case ENTITY_ID_1_UP:
                if (sp28 == 0)
                {
                    SetEntityAnimationInfoState(var_sb, 0);
                    sp28 = 1;
                }
                break;

            case ENTITY_ID_MAGNET_BLOCK_HAND:
                SetEntityAnimationInfoState(var_sb, 0);
                break;
        }
    }
}

// BEF0
struct Unk_0800BEF0_2 sub_0800BEF0(struct Unk_0800BEF0 arg0)
{
    u32 temp_r0;
    struct Unk_0800BEF0_2 var_r4;
    s8 var_r2;
    s8 var_r3;
    s8 var_r5;
    s8 var_r7;

    var_r3 = (arg0.unk4 - arg0.unk0) >> 3;
    var_r5 = (arg0.unk6 - arg0.unk2) >> 3;
    var_r4.unk0 = arg0.unk0;
    var_r4.unk2 = arg0.unk2;

    if (var_r3 < 0)
    {
        temp_r0 = arg0.unk8;
        var_r7 = -temp_r0;
        var_r3 = -var_r3;
    }
    else
    {
        var_r7 = arg0.unk8;
    }

    if (var_r5 < 0)
    {
        temp_r0 = arg0.unk8;
        var_r2 = -temp_r0;
        var_r5 = -var_r5;
    }
    else
    {
        var_r2 = arg0.unk8;
    }

    if (var_r3 >= var_r5)
    {
        var_r4.unk0 += var_r7;
        gUnk_030034DC += var_r5;
        if (gUnk_030034DC >= var_r3)
        {
            var_r4.unk2 += var_r2;
            gUnk_030034DC -= var_r3;
        }
    }
    else
    {
        var_r4.unk2 += var_r2;
        gUnk_030034DC += var_r3;
        if (gUnk_030034DC >= var_r5)
        {
            var_r4.unk0 += var_r7;
            gUnk_030034DC -= var_r5;
        }
    }

    return var_r4;
}
