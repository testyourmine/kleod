#ifndef GUARD_FILE_SELECT_SCREEN_H
#define GUARD_FILE_SELECT_SCREEN_H

#include "global.h"

void FileSelectScreenInit(void);
void FileSelectScreenUpdateCursor(u8 fileSelectStage);
void FileSelectScreenDrawInfo(u8 arg0);
void FileSelectScreenHandler(void);

#endif // GUARD_FILE_SELECT_SCREEN_H