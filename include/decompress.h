#ifndef GUARD_DECOMPRESS_H
#define GUARD_DECOMPRESS_H

#include "global.h"

void Decompress(void *dest, void *src);
void DecompressDma(void *src, void *dest, u16 size);
void *DecompressAlloc(void *src);

#endif // GUARD_DECOMPRESS_H