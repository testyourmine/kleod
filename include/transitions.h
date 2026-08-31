#ifndef GUARD_TRANSITION_H
#define GUARD_TRANSITION_H

#include "global.h"

void sub_080240F4(void);
void sub_080241EC(void);
void TransitionToLevelSelectOrLevelGameplay_FadeIn(void);
void TransitionFromTitleScreenToFileSelect_FadeOut(void);
void TransitionFromDemoToTitleScreen_FadeOut(void);
void TransitionFromRoomToRoom_FadeOut(void);
void TransitionFromTitleScreenToFileSelect_FadeIn(void);
void sub_08024A78(void);
void sub_08024B54(void);
void TransitionFromLevelSelectToLevel_FadeOut(void);
void TransitionFromLevelToDeath_FadeOut(void);
void TransitionFromDeathToLevel_FadeOut(void);
void TransitionFromWorldMapToLevelSelect_FadeOut(void);
void TransitionFromFileSelectToLevel_FadeOut(void);
void TransitionFromWorldMapToLevel_FadeOut(void);
void TransitionFromLevelSelectToWorldMap_FadeIn(void);
void TransitionFromLevelSelectToWorldMap_FadeOut(void);
void TransitionFromLevelSelectToBootScreen_FadeOut(void);
void TransitionFromLevelToClearedAllVisionsScreen_FadeIn(void);
void TransitionFromLevelToClearedAllVisionsScreen_FadeOut(void);

#endif // GUARD_TRANSITION_H