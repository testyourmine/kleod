#ifndef GUARD_CODE_08039D8C_H
#define GUARD_CODE_08039D8C_H

#include "global.h"
#include "structs/variables.h"

void PauseMenuScreenInit(void);
void PauseMenuScreenRestoreGfx(void);
void PauseMenuScreenHandler(void);

void ButtonConfigurationScreenInit(void);
void ButtonConfigurationScreenHandler(void);

u8 WorldMapScreenIsValidPath(u8 mapIndex);
void WorldMapScreenDrawWorld(u8 mapIndex);
void WorldMapScreenSetPalette(u8 mapIndex, u8 palNbr);
void WorldMapScreenDrawPath(u8 mapIndex);
void WorldMapScreenDrawUnlockedWorlds(void);
void WorldMapScreenCheckNewWorldUnlocked(void);
void WorldMapScreenUnlockNewWorld(void);
void WorldMapScreenInit(void);
void WorldMapScreenHandler(void);

void sub_0803C808(void);
void sub_0803CE14(u8 arg0);
void sub_0803CF08(u8 arg0);
void sub_0803D140(u8 arg0);
void sub_0803D15C(void);
void sub_0803D4AC(u8 arg0, struct Unk_0803D4AC arg1);
void sub_0803D90C(u8 arg0);
void sub_0803E6D8(u8 arg0);
void sub_0803E8CC(void);
void sub_0803E904(u8 arg0);
void sub_0803F68C(u8 arg0, u8 arg1, u8 arg2);
void sub_0803F950(u8 arg0);
void sub_0803F9EC(u8 arg0);
void sub_08040B50(u8 arg0);
void sub_08040D68(void);
void sub_08040F1C(u8 arg0);
void sub_08041E94(u8 arg0, u8 arg1);
void sub_08041F34(u8 arg0);
void sub_08042024(u8 arg0);
void sub_08042BEC(void);
void sub_08042E64(u8 arg0);

#endif // GUARD_CODE_08039D8C_H