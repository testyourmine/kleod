#ifndef GUARD_CODE_08043BA4_H
#define GUARD_CODE_08043BA4_H

#include "global.h"

void GameOverScreenInit(void);
void GameOverScreenStageSetup(s32 gameOverScreenStage);
void GameOverScreenHandler(void);
void sub_08044BB8(void);
void sub_08044F6C(u8 arg0);
void sub_0804517C(u8 arg0);
void sub_080452E8(void);
void VisionSelectBeginTransitionToVision(void);
void VisionSelectInit(void);
void VisionSelectHandler(void);
void VisionSelectCreateEntities(void);
void VisionSelectInputAndMovement(void);
void VisionSelectUpdateRotationAndEntities(void);
void VisionSelectDrawVisionInfo(void);
void VisionSelectDrawVisionIcons(void);
void VisionSelectUpdateUnlockVisionSequence(void);
u8 VisionSelectGetUnlockedVision(void);
void sub_08046A64(u8 arg0);

#endif // GUARD_CODE_08043BA4_H