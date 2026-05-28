#ifndef GUARD_HEAP_H
#define GUARD_HEAP_H

#include "global.h"

void HeapInit(void);
void *HeapAlloc(s32 count, s32 size_shift);
void HeapFree(void* heapPtr);

void thunk_HeapInit(void);
void *thunk_HeapAlloc(s32 count, s32 size_shift);
void thunk_HeapFree(void* heapPtr);

#endif // GUARD_HEAP_H