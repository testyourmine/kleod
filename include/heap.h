#ifndef GUARD_HEAP_H
#define GUARD_HEAP_H

#include "global.h"

void HeapInit();
void *HeapAlloc(s32, s32);
void HeapFree(void*);

void thunk_HeapInit();
void *thunk_HeapAlloc(s32, s32);
void thunk_HeapFree(void*);

#endif // GUARD_HEAP_H