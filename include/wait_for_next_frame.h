#ifndef GUARD_WAIT_FOR_NEXT_FRAME_H
#define GUARD_WAIT_FOR_NEXT_FRAME_H

#include "global.h"

void CommonWaitForNextFrame(void);
void BossWaitForNextFrame(void);
void LevelSelectWaitForNextFrame(void);
void CutsceneWaitForNextFrame(void);
void GameOverScreenWaitForNextFrame(void);
void ClearedAllVisionsScreenWaitForNextFrame(void);
void sub_0800CA0C(u32 arg0);
void TitleScreenWaitForNextFrame(void);

#endif // GUARD_WAIT_FOR_NEXT_FRAME_H