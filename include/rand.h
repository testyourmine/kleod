#ifndef GUARD_RAND_H
#define GUARD_RAND_H

#include "global.h"

void UpdateRng();
u8 GetRandomValue();
u8 GetRandomValueEx();

void thunk_UpdateRng();
u8 thunk_GetRandomValue();
u8 thunk_GetRandomValueEx();

#endif // GUARD_RAND_H