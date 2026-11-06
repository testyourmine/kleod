#ifndef GUARD_DATA_0805769C_H
#define GUARD_DATA_0805769C_H

#include "global.h"
#include "structs/variables.h"

extern const u8 gUnk_0805769C[24];
extern const u8 gUnk_080576B4[0x20];
extern const u8 gUnk_080576D4[32][2]; // bpp (0 = 16 color mode, 0x80 = 256 color mode)
extern const u16 gUnk_08057714[32][2]; // hLength
extern const u16 gUnk_08057794[32][2]; // vLength
extern const u16 gUnk_08057814[32][2]; // nbrTiles
extern const u8 gUnk_08057894[32][2]; // tileSize
extern const u8 gUnk_080578D4[32][2]; // character base block
extern const u8 gUnk_08057914[32][2]; // screen base block
extern const struct Unk_08057954 gUnk_08057954[46];
extern const u8 gUnk_08057ACC[32][2][2]; // pair values of {unk, bgNbr}
extern const u16 gUnk_08057B4C[16]; // REG_BLDCNT

#endif // GUARD_DATA_0805769C_H