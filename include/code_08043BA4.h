#ifndef GUARD_CODE_08043BA4_H
#define GUARD_CODE_08043BA4_H

#include "global.h"

void GameOverScreenInit(void);
void GameOverScreenStageSetup(s32 gameOverScreenStage);
void GameOverScreenHandler(void);
void RoomRotationHandler(void);
void RoomRotationUpdateEntityPosition(u8 slot);
void RoomRotationBg2(u8 nbrRotations);
void BossRoomRotationHandler(void);
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