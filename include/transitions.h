#ifndef GUARD_TRANSITION_H
#define GUARD_TRANSITION_H

#include "global.h"

void sub_080240F4(void);
void sub_080241EC(void);
void TransitionToVisionSelectOrLevelGameplay_FadeIn(void);
void TransitionFromTitleScreenToFileSelect_FadeOut(void);
void TransitionFromDemoToTitleScreen_FadeOut(void);
void TransitionFromRoomToRoom_FadeOut(void);
void TransitionFromTitleScreenToFileSelect_FadeIn(void);
void sub_08024A78(void);
void sub_08024B54(void);
void TransitionFromVisionSelectToLevel_FadeOut(void);
void TransitionFromLevelToDeath_FadeOut(void);
void TransitionFromDeathToLevel_FadeOut(void);
void TransitionFromWorldMapToVisionSelect_FadeOut(void);
void TransitionFromFileSelectToLevel_FadeOut(void);
void TransitionFromWorldMapToLevel_FadeOut(void);
void TransitionFromVisionSelectToWorldMap_FadeIn(void);
void TransitionFromVisionSelectToWorldMap_FadeOut(void);
void TransitionFromVisionSelectToBootScreen_FadeOut(void);
void TransitionFromLevelToClearedAllVisionsScreen_FadeIn(void);
void TransitionFromLevelToClearedAllVisionsScreen_FadeOut(void);

#endif // GUARD_TRANSITION_H