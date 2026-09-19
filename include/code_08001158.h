#ifndef GUARD_CODE_08001158_H
#define GUARD_CODE_08001158_H

#include "global.h"

void VisionAndVisionSelectInit(void);

enum ScrollFlags {
    SCROLL_NONE = 0x0,

    SCROLL_RIGHT = 0x10,
    SCROLL_LEFT = 0x20,
    SCROLL_HORIZONTAL = SCROLL_LEFT | SCROLL_RIGHT,

    SCROLL_UP = 0x40,
    SCROLL_DOWN = 0x80,
    SCROLL_VERTICAL = SCROLL_DOWN | SCROLL_UP
};
struct ScrollOffset {
    u16 x;
    u16 y;
};
void ScrollBg2LevelData(u8 scrollFlags, struct ScrollOffset scrollOffset);

void PuzzleStageScrollUpdate(void);
void AthleticChallengeScrollUpdate(void);
void HoverBoardScrollUpdate(void);
void BossStageScrollUpdate(void);
void SetUpRoomVisuals(void);
void LoadBg2TilemapData(u8 tileYOffset);
void ClearedAllVisionsScreenInit(void);
void ClearedAllVisionsScreenHandler(void);

#endif // GUARD_CODE_08001158_H