#ifndef GUARD_CODE_08001158_H
#define GUARD_CODE_08001158_H

#include "global.h"

void sub_08001158(void);

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

void sub_08001F58(void);
void sub_0800247C(void);
void sub_080027C4(void);
void sub_08002AC4(void);
void sub_08002FD0(void);
void sub_0800343C(u8 arg0);
void sub_0800350C(void);
void sub_08003750(void);
void sub_08003904(void);

#endif // GUARD_CODE_08001158_H