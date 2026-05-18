#ifndef GUARD_HEAP_H
#define GUARD_HEAP_H

#include "global.h"

void HeapInit();
void *HeapAlloc(s32, s32);
void HeapFree(s32);

void thunk_HeapInit();
void *thunk_HeapAlloc(s32, s32);
void thunk_HeapFree(s32);

#endif // GUARD_HEAP_H