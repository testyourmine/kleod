#ifndef GUARD_WORLD_MAP_H
#define GUARD_WORLD_MAP_H

#include "global.h"

u8 WorldMapScreenIsValidPath(u8 mapIndex);
void WorldMapScreenDrawWorld(u8 mapIndex);
void WorldMapScreenSetPalette(u8 mapIndex, u8 palNbr);
void WorldMapScreenDrawPath(u8 mapIndex);
void WorldMapScreenDrawUnlockedWorlds(void);
void WorldMapScreenCheckNewWorldUnlocked(void);
void WorldMapScreenUnlockNewWorld(void);
void WorldMapScreenInit(void);
void WorldMapScreenHandler(void);

#endif // GUARD_WORLD_MAP_H