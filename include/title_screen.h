#ifndef GUARD_TITLE_SCREEN_H
#define GUARD_TITLE_SCREEN_H

#include "global.h"

void TitleScreenInit(void);
void TitleScreenLogoAnimationUpdate(void);
void TitleScreenStageSetup(u8 titleScreenStage);
void TitleScreenHandler(void);

#endif // GUARD_TITLE_SCREEN_H