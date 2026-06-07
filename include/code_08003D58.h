#ifndef GUARD_CODE_08003D58_H
#define GUARD_CODE_08003D58_H

#include "global.h"

void sub_08003D58(void);
void sub_08003D80(void);
void sub_08003DA0(void);
void sub_08003DC0(s32 arg0, u8 arg1, u16 arg2, u16 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7, u8 arg8);
void sub_08005CF4(void);
void sub_080070A0(void);
void sub_080098C8(void);
void sub_0800A468(void);
void sub_0800A49C(void);
void sub_0800A5B8(u8 arg0, s8 arg1, s8 arg2);
void sub_0800A71C(s8 arg0, s8 arg1);
void sub_0800A804(void);
void sub_0800AC34(void);
void sub_0800B3C0(void);

struct Unk_0800BEF0 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    s8 unk8;
};
void* sub_0800BEF0(s32 *arg0, struct Unk_0800BEF0 arg1);

#endif // GUARD_CODE_08003D58_H