#ifndef GUARD_CODE_080472B0_H
#define GUARD_CODE_080472B0_H

#include "global.h"

u8 HeldUp(void);
void DeleteAllSaveDataScreenInit(void);
void DeleteAllSaveDataMinigameHandler(void);
void DeleteAllSaveDataScreenHandler(void);

void sub_08047ABC(void);
void TextBoxInit(void);
void TextBoxHandler(void);
void TextBoxRestoreGameplay(void);
void sub_08048028(void);

void BootScreenInit(void);
void NamcoScreenInit(void);
void BootScreenHandler(void);
void NamcoScreenHandler(void);

void TitleScreenInit(void);
void TitleScreenLogoAnimationUpdate(void);
void TitleScreenStageSetup(u8 titleScreenStage);
void TitleScreenHandler(void);

void FileSelectScreenInit(void);
void FileSelectScreenUpdateCursor(u8 fileSelectStage);
void FileSelectScreenDrawInfo(u8 arg0);
void FileSelectScreenHandler(void);

#endif // GUARD_CODE_080472B0_H