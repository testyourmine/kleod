#ifndef GUARD_CODE_080240F4_H
#define GUARD_CODE_080240F4_H

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
void sub_08025954(void);
void sub_08025A28(void);
void sub_08025B78(s32 arg0, u8 state);
void sub_08025BA4(void);
void DrawLevelHud_Hearts(void);
s32 DrawLevelHud_DreamStones(void);
void DrawLevelHud_Lives(void);
void DrawLevelSelectHud_Lives(void);
void DrawLevelTimer(void);
void sub_08026374(void);
void sub_080264A4(void);

#endif // GUARD_CODE_080240F4_H