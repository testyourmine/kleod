#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "global.h"

void LoadAllSaveData(void);
u16 WriteSaveFile(u32 arg0, u8 arg1);
u16 LoadSaveFile(s32 arg0);
u16 DeleteAllSaveData(void);
void WriteCurrentSaveFile(void);

#endif // GUARD_SAVE_H