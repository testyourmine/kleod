#ifndef GUARD_VISION_SELECT_H
#define GUARD_VISION_SELECT_H

#include "global.h"

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

#endif // GUARD_VISION_SELECT_H