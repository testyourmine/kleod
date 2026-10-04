#include "global.h"
#include "rotation.h"
#include "code_08003D58.h"
#include "heap.h"
#include "vision.h"
#include "data/trig.h"
#include "constants/songs.h"
#include "structs/variables.h"

extern u8 gUnk_080627C8[0x80];

extern u8 gUnk_080B90E8[0x80];
extern u8 gUnk_080B9168[0x80];
extern u8 gUnk_080B91E8[0x80];

struct Unk_080D48C8 {
    u16 unk0;
    u16 unk2;
    u8 unk4_0:2;
    u8 unk4_2:6;
    u8 pad5[0x8 - 0x5];
};
extern struct Unk_080D48C8 gUnk_080D48C8[6][7][0x15];

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

// 44BB8
void RoomRotationHandler(void)
{
    u32 i;
    struct ScrollOffset scrollOffset;
    u8 scrollFlags;

    scrollFlags = SCROLL_NONE;

    if (gRoomRotationAlpha == 0x41)
    {
        scrollOffset.x = 0;
        scrollOffset.y = 0;

        if ((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) < gCurrentRoomBg2Center.x)
        {
            scrollFlags = SCROLL_RIGHT;
            scrollOffset.x = 1;
        }
        else if ((gBgInfo[2].hOfs + DISPLAY_WIDTH_CENTER) > gCurrentRoomBg2Center.x)
        {
            scrollFlags = SCROLL_LEFT;
            scrollOffset.x = -1;
        }

        if ((gBgInfo[2].vOfs + DISPLAY_HEIGHT_CENTER) < gCurrentRoomBg2Center.y)
        {
            scrollFlags |= SCROLL_DOWN;
            scrollOffset.y = 1;
        }
        else if ((gBgInfo[2].vOfs + DISPLAY_HEIGHT_CENTER) > gCurrentRoomBg2Center.y)
        {
            scrollFlags |= SCROLL_UP;
            scrollOffset.y = -1;
        }

        if (scrollFlags != 0)
        {
            ScrollBg2LevelData(scrollFlags, scrollOffset);
            return;
        }

        LoadBg2TilemapData(6);
        gRoomRotationAlpha = 0x40;
    }

    if (gRoomRotationAlpha == 0x40)
    {
        i = 1;
    }
    else if (gRoomRotationAlpha > 0x35)
    {
        i = 4;
    }
    else if (gRoomRotationAlpha > 0xC)
    {
        i = 0;
    }
    else if (gRoomRotationAlpha == 0xC)
    {
        i = -3;
    }
    else if (gRoomRotationAlpha > 2)
    {
        i = -4;
    }
    else
    {
        i = -1;
    }
    gBg2XMag = gBg2YMag += i;

    if (gRoomRotationAlpha == 0x40)
    {
        gUnk_030034D4 = thunk_HeapAlloc(gEntitySlotCount, 2);

        for (i = 0; i < gEntitySlotCount; i++)
        {
            if (gEntityInfo[i].unkF <= 0x1A)
            {
                gUnk_030034D4[i].unk0 = gEntityInfo[i].xPosBg2;
                gUnk_030034D4[i].unk2 = gEntityInfo[i].yPosBg2;

                if ((i == 0) || (gEntityInfo[i].id == 0x34) || (gEntityInfo[i].id == ENTITY_ID_BOX) || (gEntityInfo[i].id >= ENTITY_ID_MOO))
                {
                    gUnk_030034D4[i].unk2 = gEntityInfo[i].yPosBg2 - 0xE;
                    if (gEntityInfo[i].id == ENTITY_ID_BOX)
                    {
                        gUnk_030034D4[i].unk0 = gEntityInfo[i].xPosBg2 - 4;
                    }
                }
                else if ((gEntityInfo[i].id == ENTITY_ID_ROTATION_SWITCH) || (gEntityInfo[i].id == ENTITY_ID_CIRCLE_KEY))
                {
                    gUnk_030034D4[i].unk2 = gEntityInfo[i].yPosBg2 - 8;
                }
            }
        }
    }

    for (i = 0; i < gEntitySlotCount; i++)
    {
        if (gEntityInfo[i].unkF <= 0x1A)
        {
            gEntityInfo[i].xPosBg2 = gCurrentRoomBg2Center.x + ((((gUnk_030034D4[i].unk0 - gCurrentRoomBg2Center.x) * SIN(PI - gRoomRotationAlpha)) - ((gUnk_030034D4[i].unk2 - gCurrentRoomBg2Center.y) * SIN(PI_2 - gRoomRotationAlpha))) >> 8);
            gEntityInfo[i].yPosBg2 = gCurrentRoomBg2Center.y + ((((gUnk_030034D4[i].unk0 - gCurrentRoomBg2Center.x) * SIN(PI_2 - gRoomRotationAlpha)) + ((gUnk_030034D4[i].unk2 - gCurrentRoomBg2Center.y) * SIN(PI - gRoomRotationAlpha))) >> 8);

            if ((i == 0) || (gEntityInfo[i].id == 0x34) || (gEntityInfo[i].id == ENTITY_ID_BOX) || (gEntityInfo[i].id >= ENTITY_ID_MOO))
            {
                gEntityInfo[i].yPosBg2 += 0xE;
                if (gEntityInfo[i].id == ENTITY_ID_BOX)
                {
                    gEntityInfo[i].xPosBg2 += 4;
                }
            }
            else if ((gEntityInfo[i].id == ENTITY_ID_ROTATION_SWITCH) || (gEntityInfo[i].id == ENTITY_ID_CIRCLE_KEY))
            {
                gEntityInfo[i].yPosBg2 = gEntityInfo[i].yPosBg2 + 8;
            }

            if (i == 8)
            {
                i = 0xD;
            }
        }
    }

    gRoomRotationAlpha -= 2;
    gBg2Alpha += 2;
    if (gRoomRotationAlpha != 0xFE)
    {
        return;
    }

    REG_IE &= ~INTR_FLAG_VBLANK;
    REG_DISPSTAT &= ~DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOff();

    RoomRotationBg2(1);
    gBg2Alpha = 0;
    LoadBg2TilemapData(6);
    gUnk_03005220.unk3C = 0;
    thunk_HeapFree(gUnk_030034D4);

    scrollFlags = (gUnk_03004C20.room - 1) * 2;
    i = (gUnk_03004C20.roomsRotationBits >> scrollFlags) + 1;
    i = i % 4;
    gUnk_03004C20.roomsRotationBits = (gUnk_03004C20.roomsRotationBits & ~(3 << scrollFlags)) | (i << scrollFlags);

    if (i == 0)
    {
        DmaCopy16(3, gUnk_080627C8, gUnk_03004C10, 0x80);
    }
    else if (i == 1)
    {
        DmaCopy16(3, gUnk_080B90E8, gUnk_03004C10, 0x80);
    }
    else if (i == 2)
    {
        DmaCopy16(3, gUnk_080B9168, gUnk_03004C10, 0x80);
    }
    else
    {
        DmaCopy16(3, gUnk_080B91E8, gUnk_03004C10, 0x80);
    }

    gCallbackQueue.current[1] = sub_0800A804;
    while (REG_VCOUNT_L != 0);

    REG_IE |= INTR_FLAG_VBLANK;
    REG_DISPSTAT |= DISPSTAT_VBLANK_INTR;
    m4aSoundVSyncOn();

    m4aSongNumStart(SE_ROTATE_ROOM);
}

// 44F6C
void RoomRotationUpdateEntityPosition(u8 slot)
{
    // (Usually) called for each entity when loading room
    // Might better be called "RoomRotationSetEntityPosition" or something else, maybe not even rotation in the name
    u16 alpha;
    u16 yOffset;
    u16 xOffset;
    u16 entityXPosBg2;

    if (slot == 0)
    {
        gEntityInfo[slot].xPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk0;
        gEntityInfo[slot].yPosBg2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk2;
        gEntityInfo[slot].unkC_2 = gUnk_080D48C8[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][gUnk_030051C8 - (gUnk_03004654->unk1 - 1)].unk4_0;
    }
    else
    {
        gEntityInfo[slot].xPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk0;
        gEntityInfo[slot].yPosBg2 = gUnk_080E2B64[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1][slot - 0xD].unk0[gUnk_03004C20.room - 1].unk2;
    }

    alpha = ((gUnk_03004C20.roomsRotationBits >> ((gUnk_03004C20.room - 1) * 2)) & 3) * 0x40;
    if (alpha != 0)
    {
        entityXPosBg2 = gEntityInfo[slot].xPosBg2;

        xOffset = 0;
        yOffset = 0;
        if ((slot == 0) || (gEntityInfo[slot].id == ENTITY_ID_BOX) || (gEntityInfo[slot].id >= ENTITY_ID_MOO))
        {
            yOffset = -14;
            if (gEntityInfo[slot].id == ENTITY_ID_BOX)
            {
                xOffset = -4;
            }
        }
        else if ((gEntityInfo[slot].id == ENTITY_ID_ROTATION_SWITCH) || (gEntityInfo[slot].id == ENTITY_ID_CIRCLE_KEY))
        {
            yOffset = -8;
        }

        gEntityInfo[slot].xPosBg2 = gCurrentRoomBg2Center.x + ((((entityXPosBg2 - gCurrentRoomBg2Center.x + xOffset) * COS(alpha)) - ((gEntityInfo[slot].yPosBg2 - gCurrentRoomBg2Center.y + yOffset) * SIN(alpha))) >> 8) - xOffset;
        gEntityInfo[slot].yPosBg2 = gCurrentRoomBg2Center.y + ((((entityXPosBg2 - gCurrentRoomBg2Center.x + xOffset) * SIN(alpha)) + ((gEntityInfo[slot].yPosBg2 - gCurrentRoomBg2Center.y + yOffset) * COS(alpha))) >> 8) - yOffset;
    }
}

// 4517C
void RoomRotationBg2(u8 nbrRotations)
{
    // Called when room finishes rotating
    u32 bottom;
    u32 topLeft;
    u32 corner;
    u32 left;
    u32 top;
    u32 rotation;
    u32 i;
    u32 length;
    u32 tmp;
    u32 right;

    for (rotation = 0; rotation < nbrRotations; rotation++)
    {
        left = (gCurrentRoomBg2Bounds.left + 0x18) >> 3;
        top = (gCurrentRoomBg2Bounds.top + 0x18) >> 3;
        right = (gCurrentRoomBg2Bounds.right - 0x18) >> 3;
        length = (right - left) - 1;
        bottom = ((gCurrentRoomBg2Bounds.bottom - 0x18) >> 3) - 1;

        // Perform a clockwise rotation, working from out to in
        while (1)
        {
            // Swap top with right
            topLeft = (gBgInfo[2].hLength * top) + left;
            corner = (gBgInfo[2].hLength * top) + left + length; // top right
            for (i = 0; i < length; i++)
            {
                tmp = gBgDataPtrs.pBufBg2Tilemap[topLeft + i];
                gBgDataPtrs.pBufBg2Tilemap[topLeft + i] = gBgDataPtrs.pBufBg2Tilemap[(i * gBgInfo[2].hLength) + corner];
                gBgDataPtrs.pBufBg2Tilemap[(i * gBgInfo[2].hLength) + corner] = tmp;
            }

            // Swap top with bottom
            topLeft = (gBgInfo[2].hLength * top) + left;
            corner = (gBgInfo[2].hLength * bottom) + left + length; // bottom right
            for (i = 0; i < length; i++)
            {
                tmp = gBgDataPtrs.pBufBg2Tilemap[topLeft + i];
                gBgDataPtrs.pBufBg2Tilemap[topLeft + i] = gBgDataPtrs.pBufBg2Tilemap[corner - i];
                gBgDataPtrs.pBufBg2Tilemap[corner - i] = tmp;
            }

            // Swap top with left
            topLeft = (gBgInfo[2].hLength * top) + left;
            corner = (gBgInfo[2].hLength * bottom) + left; // bottom left
            for (i = 0; i < length; i++)
            {
                tmp = gBgDataPtrs.pBufBg2Tilemap[topLeft + i];
                gBgDataPtrs.pBufBg2Tilemap[topLeft + i] = gBgDataPtrs.pBufBg2Tilemap[corner - (i * gBgInfo[2].hLength)];
                gBgDataPtrs.pBufBg2Tilemap[corner - (i * gBgInfo[2].hLength)] = tmp;
            }

            left += 1;
            top += 1;

            if (length < 2)
                break;

            length -= 2;
            bottom -= 1;
        }
    }
}

// 452E8
void BossRoomRotationHandler(void)
{
    if ((gBossStageScroll.currXPos == gBossStageScroll.targetXPos) && (gBossStageScroll.currYPos == gBossStageScroll.targetYPos) && (gBossStageScroll.currAlpha == gBossStageScroll.targetAlpha))
    {
        gBg2Alpha = gRoomRotationAlpha += 1;
        if ((gRoomRotationAlpha % 0x80) == 0)
        {
            if (gBg2Alpha == 0x80)
            {
                gBossStageScroll.targetAlpha = 0x7E;
            }
            else
            {
                gBossStageScroll.unkC_0 = 1;
                gBossStageScroll.targetAlpha = 0x60;
            }
            gCallbackQueue.current[2] = sub_0800AC34;
        }

        gUnk_03003590[0].unk4 = -gRoomRotationAlpha;
        if (gRoomRotationAlpha < 0x80)
        {
            if (gUnk_030007CC < 0x50)
            {
                gUnk_030007CC += 1;
            }
        }
        else
        {
            if (gUnk_030007CC != 0)
            {
                gUnk_030007CC -= 1;
            }
        }
    }
}
