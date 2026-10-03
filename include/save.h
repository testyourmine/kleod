#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "global.h"

void LoadGlobalSaveData(void);
u16 WriteSaveFile(u32 saveDataType, u8 sceneType);
u16 LoadSaveFile(u32 saveDataType);
u16 DeleteAllSaveData(void);
void WriteCurrentSaveFile(void);

#endif // GUARD_SAVE_H