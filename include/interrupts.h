#ifndef GUARD_INTERRUPTS_H
#define GUARD_INTERRUPTS_H

#include "global.h"

void VBlankIntr_Common(void);
void VBlankIntr_CutsceneTransition(void);
void sub_08000AC8(void);
void VBlankIntr_TitleScreenAndWorldMap(void);
void VBlankIntr_Boss(void);
void sub_08000DC0(void);
void sub_08000E14(void);
void VBlankIntr_Cutscene(void);
void HBlankIntr_DeleteAllSaveDataScreen(void);
void HBlankIntr_WavyBackground(void);
void HBlankIntr_LevelSelect(void);
void HBlankIntr_GameOverCircleShrinkEffect(void);
void sub_0800107C(void);
void VCountIntr_DeathScreen(void);
void GenericIntr(void);

#endif // GUARD_INTERRUPTS_H