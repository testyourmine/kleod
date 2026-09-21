#ifndef GUARD_CODE_08003D58_H
#define GUARD_CODE_08003D58_H

#include "global.h"

void EntityInit(void);
void sub_08003D58(void);
void sub_08003D80(void);
void sub_08003DA0(void);
void EntityCreate(s32 slot, u8 arg1, u16 x, u16 y, u8 arg4, u8 priority, u8 arg6, u8 arg7, u8 id);
void EntityCommonTransferToOamBuffer(void);
void EntityBossTransferToOamBuffer(void);
void EntityVisionSelectTransferToOamBuffer(void);
void EntityResetOamBuffer(void);
void EntityCommonUpdateScreenPositions(void);
void EntityUpdateScreenPositionAffine(u8 slot, s8 xOffset, s8 yOffset);
void EntityBossUpdateScreenPositions(s8 xOffset, s8 yOffset);
void sub_0800A804(void);
void sub_0800AC34(void);
void sub_0800B3C0(void);

struct Unk_0800BEF0 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    s8 unk8;
    s8 unk9;
};
struct Unk_0800BEF0_2 {
    u16 unk0;
    u16 unk2;
};
struct Unk_0800BEF0_2 sub_0800BEF0(struct Unk_0800BEF0 arg0);

#endif // GUARD_CODE_08003D58_H