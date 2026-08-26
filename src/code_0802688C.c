#include "global.h"
#include "code_0802688C.h"
#include "code_080240F4.h"
#include "structs/variables.h"

// TODO: proper pointers
struct Unk_08189A24 {
    u8 pad0[0x3C - 0x0];
    void ***unk3C;
    u8 pad40[0x60 - 0x40];
    void ***unk60;
    u8 pad64[0x6C - 0x64];
    void ***unk6C;
    u8 pad70[0x78 - 0x70];
    void ***unk78;
    u8 pad7C[0x90 - 0x7C];
    void ***unk90;
};
extern struct Unk_08189A24 *gUnk_08189A24[6][9];

extern void *gUnk_0818B800[6][7];

// tiles
extern u8 gUnk_0805C6E8[0x200]; // enemy respawner? maybe alt version since its only used in one level
extern u8 gUnk_0805C8E8[0x80]; // little bubble idk
extern u8 gUnk_0805C968[0x80]; // littler bubble idk
extern u8 gUnk_0805C9E8[0x800]; // VISION
extern u8 gUnk_0805D1E8[0x800]; // 1 - 1
extern u8 gUnk_0805D9E8[0x200]; // menu cursor
extern u8 gUnk_0805DBE8[0x300]; // PRESS START
extern u8 gUnk_0805DEE8[0x200]; // japanese text
extern u8 gUnk_0805E0E8[0x200]; // japanese text
extern u8 gUnk_0805E2E8[0x400]; // japanese text
extern u8 gUnk_0805E6E8[0x400]; // japanese text
extern u8 gUnk_0805EAE8[0x200]; // red level icon thing
extern u8 gUnk_0805ECE8[0x200]; // Moon Door
extern u8 gUnk_0805EEE8[0x200]; // Moo enemy
extern u8 gUnk_0805F0E8[0x200]; // Flying Moo enemy
extern u8 gUnk_0805F2E8[0x80]; // Star
extern u8 gUnk_0805F368[0x20]; // Dream Stone small
extern u8 gUnk_0805F388[0x80]; // Dream Stone large
extern u8 gUnk_0805F408[0x80]; // Heart
extern u8 gUnk_0805F488[0x80]; // 1 UP
extern u8 gUnk_0805F508[0x200]; // Box
extern u8 gUnk_0805F708[0x80]; // Key (circle)
extern u8 gUnk_0805F788[0x80]; // Key (triangle)
extern u8 gUnk_0805F808[0x200]; // Door (frame)
extern u8 gUnk_0805FA08[0x100]; // hoverboard flame
extern u8 gUnk_0805FB08[0x100]; // hoverboard ramp
extern u8 gUnk_0805FC08[0x200]; // Goomi (red winged platform)
extern u8 gUnk_0805FE08[0x800]; // cannon that appears at end of auto scrollers
extern u8 gUnk_08060608[0x100]; // moving platform vertical
extern u8 gUnk_08060708[0x100]; // moving platform horizontal
extern u8 gUnk_08060808[0x200]; // Spring
extern u8 gUnk_08060A08[0x80]; // boss healthbar
extern u8 gUnk_08060A88[0x600]; // fancy thing around boss healthbar
extern u8 gUnk_08061088[0x800]; // boss hit effect
extern u8 gUnk_08061888[0x100]; // boss related
extern u8 gUnk_08061988[0x80]; // big rock debris from boss 1 hitting ground
extern u8 gUnk_08061A08[0x20]; // small rock debris from boss 1 hitting ground
extern u8 gUnk_08061A28[0x200]; // Spiker enemy
extern u8 gUnk_08061C28[0x100]; // Scale
extern u8 gUnk_08061D28[0x20]; // leaf blown from fan 1
extern u8 gUnk_08061D48[0x20]; // leaf blown from fan 2
extern u8 gUnk_08061D68[0x20]; // leaf blown from fan 3
extern u8 gUnk_08061D88[0x20]; // leaf blown from fan 4
extern u8 gUnk_08061DA8[0x20]; // leaf blown from fan 5
extern u8 gUnk_08061DC8[0x200]; // Teton
extern u8 gUnk_08061FC8[0x80]; // switch that opens gate
extern u8 gUnk_08062048[0x100]; // gate opened by switch
extern u8 gUnk_08062148[0x100]; // one way gate
extern u8 gUnk_08062248[0x100]; // platform that disappears after you land on it
extern u8 gUnk_08062348[0x80]; // top of accordion looking platform that decompresses/compresses when standing on it/other one
extern u8 gUnk_080623C8[0x400]; // middle of accordion looking platform that decompressed/compresses when standing on it/other one
extern u8 gUnk_080627C8[0x80]; // switch that rotates room
extern u8 gUnk_08062848[0x80]; // Key (heart)
extern u8 gUnk_080628C8[0x200]; // Boomie (enemy)
extern u8 gUnk_08062AC8[0x20]; // small dot (idk)
extern u8 gUnk_08062AE8[0x200]; // explodable block
extern u8 gUnk_08062CE8[0x200]; // Flying Boomie (enemy)
extern u8 gUnk_08062EE8[0x200]; // Bomb Box (pointing up)
extern u8 gUnk_080630E8[0x80]; // Pressure Switch
extern u8 gUnk_08063168[0x200]; // Bomb Box (pointing right)
extern u8 gUnk_08063368[0x80]; // switch that causes block to expand/contract
extern u8 gUnk_080633E8[0x200]; // block when expanded
extern u8 gUnk_080635E8[0x80]; // switch that opens gate when you hit all of them
extern u8 gUnk_08063668[0x200]; // Bomb Box (pointing down)
extern u8 gUnk_08063868[0x200]; // Glibz Quad Cannon (enemy)
extern u8 gUnk_08063A68[0x80]; // Glibz Quad Cannon bullets
extern u8 gUnk_08063AE8[0x100]; // Fountain Foothold
extern u8 gUnk_08063BE8[0x400]; // geyser
extern u8 gUnk_08063FE8[0x80]; // switch that lowers/raises water level
extern u8 gUnk_08064068[0x400]; // water
extern u8 gUnk_08064468[0x400]; // waterfall
extern u8 gUnk_08064868[0x200]; // Arrow Panel (red i think)
extern u8 gUnk_08064A68[0x200]; // Arrow Panel (blue i think)
extern u8 gUnk_08064C68[0x200]; // Moo in bubble
extern u8 gUnk_08064E68[0x100]; // Medim's (world 4 boss) spinning top on head
extern u8 gUnk_08064F68[0x200]; // grabby hand that extends from box
extern u8 gUnk_08065168[0x200]; // box that grabs
extern u8 gUnk_08065368[0x200]; // box that gets grabbed
extern u8 gUnk_08065568[0x200]; // Bomb Box (pointing left)
extern u8 gUnk_08065768[0x20]; // small dot (idk)
extern u8 gUnk_08065788[0x20]; // small dot (idk)
extern u8 gUnk_080657A8[0x20]; // small dot (idk)

// palettes
extern u8 gUnk_08077E28[0x20];
extern u8 gUnk_08077E48[0x20];
extern u8 gUnk_08077E68[0x20];
extern u8 gUnk_08077E88[0x20];
extern u8 gUnk_08077EA8[0x20];
extern u8 gUnk_08077EC8[0x20];
extern u8 gUnk_08077EE8[0x20];
extern u8 gUnk_08077F08[0x20];
extern u8 gUnk_08077F28[0x20];
extern u8 gUnk_08077F48[0x20];
extern u8 gUnk_08077F68[0x20];
extern u8 gUnk_08077F88[0x20];
extern u8 gUnk_08077FA8[0x20];
extern u8 gUnk_08077FC8[0x20];
extern u8 gUnk_08077FE8[0x20];
extern u8 gUnk_08078008[0x20];
extern u8 gUnk_08078028[0x20];
extern u8 gUnk_08078048[0x20];
extern u8 gUnk_08078068[0x20];
extern u8 gUnk_08078088[0x20];
extern u8 gUnk_080780A8[0x20];
extern u8 gUnk_080780C8[0x20];
extern u8 gUnk_080780E8[0x20];
extern u8 gUnk_08078108[0x20];
extern u8 gUnk_08078128[0x20];
extern u8 gUnk_08078148[0x20];
extern u8 gUnk_08078168[0x20];
extern u8 gUnk_08078188[0x20];
extern u8 gUnk_080781A8[0x20];
extern u8 gUnk_080781C8[0x20];
extern u8 gUnk_080781E8[0x20];
extern u8 gUnk_08078208[0x20];
extern u8 gUnk_08078228[0x20];
extern u8 gUnk_08078248[0x20];
extern u8 gUnk_08078268[0x20];
extern u8 gUnk_08078288[0x20];
extern u8 gUnk_080782A8[0x20];
extern u8 gUnk_080782C8[0x20];
extern u8 gUnk_080782E8[0x20];
extern u8 gUnk_08078308[0x20];
extern u8 gUnk_08078328[0x20];
extern u8 gUnk_08078348[0x20];
extern u8 gUnk_08078368[0x20];
extern u8 gUnk_08078388[0x20];
extern u8 gUnk_080783A8[0x20];
extern u8 gUnk_080783C8[0x20];
extern u8 gUnk_080783E8[0x20];
extern u8 gUnk_08078408[0x20];
extern u8 gUnk_08078428[0x20];
extern u8 gUnk_08078448[0x20];
extern u8 gUnk_08078468[0x20];
extern u8 gUnk_08078488[0x20];
extern u8 gUnk_080784A8[0x20];
extern u8 gUnk_080784C8[0x20];
extern u8 gUnk_080784E8[0x20];
extern u8 gUnk_08078508[0x20];
extern u8 gUnk_08078528[0x20];
extern u8 gUnk_08078548[0x20];
extern u8 gUnk_08078568[0x20];
extern u8 gUnk_08078588[0x20];
extern u8 gUnk_080785A8[0x20];
extern u8 gUnk_080785C8[0x20];
extern u8 gUnk_080785E8[0x20];
extern u8 gUnk_08078608[0x20];
extern u8 gUnk_08078628[0x20];
extern u8 gUnk_08078648[0x20];
extern u8 gUnk_08078668[0x20];
extern u8 gUnk_08078688[0x20];
extern u8 gUnk_080786A8[0x20];
extern u8 gUnk_080786C8[0x20];
extern u8 gUnk_080786E8[0x20];
extern u8 gUnk_08078708[0x20];
extern u8 gUnk_08078728[0x20];
extern u8 gUnk_08078748[0x20];
extern u8 gUnk_08078768[0x20];
extern u8 gUnk_08078788[0x20];
extern u8 gUnk_080787A8[0x20];
extern u8 gUnk_080787C8[0x20];
extern u8 gUnk_080787E8[0x20];
extern u8 gUnk_08078808[0x20];
extern u8 gUnk_08078828[0x20]; // Unused?
extern u8 gUnk_08078848[0x20];
extern u8 gUnk_08078868[0x20];
extern u8 gUnk_08078888[0x20];
extern u8 gUnk_080788A8[0x20];
extern u8 gUnk_080788C8[0x20];
extern u8 gUnk_080788E8[0x20];
extern u8 gUnk_08078908[0x20];
extern u8 gUnk_08078928[0x20];
extern u8 gUnk_08078948[0x20];
extern u8 gUnk_08078968[0x20];
extern u8 gUnk_08078988[0x20];
extern u8 gUnk_080789A8[0x20];
extern u8 gUnk_080789C8[0x20];
extern u8 gUnk_080789E8[0x20];
extern u8 gUnk_08078A08[0x20]; // Unused?
extern u8 gUnk_08078A28[0x20];
extern u8 gUnk_08078A48[0x20];
extern u8 gUnk_08078A68[0x20];

extern u8 gUnk_080A4888[0x800];
extern u8 gUnk_080A5888[0x800];

/*
    TODO: May have used macros like these.
    However, gUnk_0805EAE8 is created differently in the first function than the rest.
    Did they have unique macros per object? Additionally, are objects from 0x02000000
    defined from linker or using macros? If defined from macros, then size is explicitly
    defined and not from sizeof. Will investigate all this later
*/
#define CREATE_NEW_OBJ_GROUP(pal, gfx)                  \
{                                                       \
    DmaCopy16Wait(3, &pal, gObjPalRamPtr, sizeof(pal)); \
    DmaCopy16Wait(3, &gfx, gObjVramPtr, sizeof(gfx));   \
    gObjPalRamPtr += sizeof(pal);                       \
    gObjVramPtr += sizeof(gfx);                         \
}

#define ADD_TO_OBJ_GROUP(gfx)                           \
{                                                       \
    DmaCopy16Wait(3, &gfx, gObjVramPtr, sizeof(gfx));   \
    gObjVramPtr += sizeof(gfx);                         \
}

// 2688C
void LoadObjects_World1Select(void)
{
    DmaCopy16Wait(3, &gUnk_08077E68, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805D9E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    sub_08025B78(0xD, 0);

    DmaCopy16Wait(3, &gUnk_08077E88, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805DBE8, gObjVramPtr, 0x300);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x300;

    DmaCopy16Wait(3, &gUnk_08077EA8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805DEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805E0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077EC8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805E2E8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_0805E6E8, gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08077EE8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077F08, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, EWRAM_START + 0x1104, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, EWRAM_START + 0x1904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, EWRAM_START + 0x1B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, EWRAM_START + 0x1D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077F28, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2704, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, EWRAM_START + 0x2904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, EWRAM_START + 0x2B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, EWRAM_START + 0x2D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077F48, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2104, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, EWRAM_START + 0x2304, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, EWRAM_START + 0x2504, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077F68, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1F04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

// 26F68
void LoadObjects_World2Select(void)
{
    DmaCopy16Wait(3, &gUnk_08077EE8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077F88, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08077FA8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1104, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08077FC8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077FE8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078008, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078028, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1F04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

// 27364
void LoadObjects_World3Select(void)
{
    DmaCopy16Wait(3, &gUnk_08077EE8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078048, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078068, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1104, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    sub_08025B78(0x16, 0);

    DmaCopy16Wait(3, &gUnk_08078088, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080780A8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1F04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080780C8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080780E8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1704, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078108, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

// 277CC
void LoadObjects_World4Select(void)
{
    DmaCopy16Wait(3, &gUnk_08077EE8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078128, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    sub_08025B78(0x15, 0);

    DmaCopy16Wait(3, &gUnk_08078148, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2304, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078168, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2104, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078188, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2504, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080781A8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2704, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080781C8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080781E8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078208, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078228, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x2F04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

// 27CF8
void LoadObjects_World5Select(void)
{
    DmaCopy16Wait(3, &gUnk_08077EE8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EAE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078248, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x4704, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    sub_08025B78(0x15, 0);

    DmaCopy16Wait(3, &gUnk_08078268, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x1104, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    sub_08025B78(0x16, 0);

    DmaCopy16Wait(3, &gUnk_08078288, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x0904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_080782A8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x4104, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080782C8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x4304, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080782E8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0x4504, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

// 28104
void sub_08028104(void)
{
    return;
}

// 28108
void LoadObjects_World1Level1(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 28440
void LoadObjects_World1Level2(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 28750
void LoadObjects_World1Level3(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 28B4C
void LoadObjects_World1Level4(void)
{
    DmaCopy16Wait(3, &gUnk_0805FA08, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078428, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FB08, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 28E8C
void LoadObjects_World1Level5(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2946C
void LoadObjects_World1Level6(void)
{
    DmaCopy16Wait(3, &gUnk_08078468, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FE08, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08060708, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 29968
void LoadObjects_World1Level7(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 29EAC
void LoadObjects_World1Boss(void)
{
    DmaCopy16Wait(3, &gUnk_080784A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A08, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080784C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A88, gObjVramPtr, 0x600);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x600;

    DmaCopy16Wait(3, &gUnk_080784E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061088, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078508, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    sub_08025B78(0x16, 0);

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    sub_08025B78(0x17, 0);
    sub_08025B78(0x18, 0);

    DmaCopy16Wait(3, &gUnk_08078528, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk60, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk60, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, &gUnk_08061888, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078548, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061988, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08061A08, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
}

// 2A31C
void LoadObjects_World2Level1(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08060708, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061C28, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2A948
void LoadObjects_World2Level2(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061C28, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2B05C
void LoadObjects_World2Level3(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080785A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2B768
void LoadObjects_World2Level4(void)
{
    DmaCopy16Wait(3, &gUnk_0805FA08, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078428, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FB08, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2BA84
void LoadObjects_World2Level5(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062348, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080785C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080623C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08060708, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2C1F8
void LoadObjects_World2Level6(void)
{
    DmaCopy16Wait(3, &gUnk_08078468, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FE08, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2C8B0
void LoadObjects_World2Level7(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080785E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062348, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080785C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080623C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08060708, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078608, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062848, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2D028
void LoadObjects_World2Boss(void)
{
    DmaCopy16Wait(3, &gUnk_080784A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A08, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080784C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A88, gObjVramPtr, 0x600);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x600;

    DmaCopy16Wait(3, &gUnk_080784E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061088, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078628, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078648, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk60, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk60, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078668, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk78, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk90[1], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078688, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2D558
void LoadObjects_World3Level1(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2DBC4
void LoadObjects_World3Level2(void)
{

    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062EE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_080630E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2E374
void LoadObjects_World3Level3(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062EE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063168, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2EB78
void LoadObjects_World3Level4(void)
{
    DmaCopy16Wait(3, &gUnk_0805FA08, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078428, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FB08, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2EEC0
void LoadObjects_World3Level5(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063368, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080786E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062348, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080785C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080623C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_080630E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
}

// 2F53C
void LoadObjects_World3Level6(void)
{
    DmaCopy16Wait(3, &gUnk_08078468, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FE08, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08060708, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 2FA28
void LoadObjects_World3Level7(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062EE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063668, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080786E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062348, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080785C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080623C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08078708, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 301A8
void LoadObjects_World3Boss(void)
{
    DmaCopy16Wait(3, &gUnk_080784A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A08, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080784C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A88, gObjVramPtr, 0x600);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x600;

    DmaCopy16Wait(3, &gUnk_080784E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061088, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078728, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078748, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk6C, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, EWRAM_START + 0xA984, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, EWRAM_START + 0xA904, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078728, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x24/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078788, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x28/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x2C/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 30680
void LoadObjects_World4Level1(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080787A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08063868, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063A68, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08063868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080787C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08063AE8, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08063BE8, gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08063FE8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078888, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064068, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08063FE8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 30D38
void LoadObjects_World4Level2(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08064468, gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08063FE8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078888, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064068, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08063FE8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062848, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080630E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 313F8
void LoadObjects_World4Level3(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080787A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08063868, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063A68, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08063868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063368, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 31ADC
void LoadObjects_World4Level4(void)
{
    DmaCopy16Wait(3, &gUnk_0805FA08, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078428, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FB08, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 31E7C
void LoadObjects_World4Level5(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062EE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063168, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080787C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08063AE8, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080787E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08063BE8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08063FE8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08064068, gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078848, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 326E8
void LoadObjects_World4Level6(void)
{
    DmaCopy16Wait(3, &gUnk_08078468, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FE08, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060708, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 32D3C
void LoadObjects_World4Level7(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078868, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061C28, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08063FE8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078888, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064068, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08063AE8, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08063BE8, gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08064468, gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08078848, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062848, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080630E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 335D4
void LoadObjects_World4Boss(void)
{
    DmaCopy16Wait(3, &gUnk_080784A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A08, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080784C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A88, gObjVramPtr, 0x600);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x600;

    DmaCopy16Wait(3, &gUnk_080784E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061088, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_080788A8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    sub_08025B78(0x12, 0);

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080788C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064C68, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064C68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064E68, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078848, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 33AAC
void LoadObjects_World5Level1(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080788E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065168, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065368, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08063368, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 34078
void LoadObjects_World5Level2(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080788E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065168, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065368, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063368, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062348, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080785C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080623C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063168, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 348B0
void LoadObjects_World5Level3(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080788E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065168, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065368, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078908, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065568, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062348, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080785C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080623C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078848, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 35210
void LoadObjects_World5Level4(void)
{
    DmaCopy16Wait(3, &gUnk_0805FA08, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078428, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FB08, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 356E4
void LoadObjects_World5Level5(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080788E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065168, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065368, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080787A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08063868, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063A68, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078808, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064468, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08063368, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 35EF8
void LoadObjects_World5Level6(void)
{
    DmaCopy16Wait(3, &gUnk_08078468, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FE08, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 36564
void LoadObjects_World5Level7(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080788E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08064F68, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065168, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08065368, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08063368, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063668, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078928, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080630E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 37038
void LoadObjects_World5Boss(void)
{
    DmaCopy16Wait(3, &gUnk_080784A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A08, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080784C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A88, gObjVramPtr, 0x600);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x600;

    DmaCopy16Wait(3, &gUnk_080784E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061088, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078948, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x20/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    sub_08025B78(0x17, 0);
    sub_08025B78(0x18, 0);

    DmaCopy16Wait(3, &gUnk_08078968, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, **gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078988, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x38/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x44/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x44/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x4/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x8/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 375A0
void sub_080375A0(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078908, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08063368, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 37DD4
void sub_08037DD4(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078588, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08061DC8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078448, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805FC08, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078568, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061A28, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080786A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080628C8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08060608, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;

    DmaCopy16Wait(3, &gUnk_080783E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F508, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08063368, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080633E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080627C8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062348, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080785C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_080623C8, gObjVramPtr, 0x400);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x400;

    DmaCopy16Wait(3, &gUnk_08078408, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F708, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F788, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805F808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080635E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062048, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061FC8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_080630E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_08062148, gObjVramPtr, 0x100);
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08061D28, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D48, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D68, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061D88, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08061DA8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 3881C
void sub_0803881C(void)
{
    DmaCopy16Wait(3, &gUnk_08078308, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805ECE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078348, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805F0E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080783C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F488, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078488, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08060808, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080789A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062CE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08062AC8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078608, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08062248, gObjVramPtr, 0x100);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x100;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064868, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08064A68, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_08062AE8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078368, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F2E8, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_08078388, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F368, gObjVramPtr, 0x20);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_0805F388, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 392A4
void sub_080392A4(void)
{
    DmaCopy16Wait(3, &gUnk_080784A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A08, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;

    DmaCopy16Wait(3, &gUnk_080784C8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08060A88, gObjVramPtr, 0x600);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x600;

    DmaCopy16Wait(3, &gUnk_080784E8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_08061088, gObjVramPtr, 0x800);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_080789C8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x60/4], gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080789E8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x8/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078328, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805EEE8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078A28, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x4C/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x54/4], gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x54/4], gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x50/4], gObjVramPtr, 0x400);
    gObjVramPtr += 0x400;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x1C/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x20/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x24/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078A48, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08065768, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_08065788, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, &gUnk_080657A8, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;

    DmaCopy16Wait(3, &gUnk_08078A68, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, *gUnk_08189A24[gUnk_03004C20.world - 1][gUnk_03004C20.level]->unk3C[0x8/4], gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_080783A8, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805F408, gObjVramPtr, 0x80);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x80;
}

// 39920
void LoadObjects_Common(void)
{
    DmaCopy16Wait(3, &gUnk_08077E28, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    sub_08025B78(0, 0);
    gEntityInfo[0].visible = 1;
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077E48, gObjPalRamPtr, 0x20);
    DmaCopy16Wait(3, &gUnk_0805C6E8, gObjVramPtr, 0x200);
    gObjPalRamPtr += 0x20;
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805C6E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805C6E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805C6E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805C6E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805C6E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805C6E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805C6E8, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, &gUnk_0805C8E8, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;
    DmaCopy16Wait(3, &gUnk_0805C968, gObjVramPtr, 0x80);
    gObjVramPtr += 0x80;

    if (gUnk_03004C20.level != 8)
    {
        if (gUnk_03003410.unkA == 0)
        {
            DmaCopy16Wait(3, &gUnk_0805C9E8, gObjVramPtr, 0x800);
            gObjVramPtr += 0x800;

            if (gUnk_03004C20.level != 0)
            {
                if (gCallbackQueue.next[4] == sub_08026374)
                {
                    gEntityInfo[0xB].visible = 1;
                }
                else
                {
                    gEntityInfo[0xB].visible = 0;
                }
            }
        }
        else
        {
            DmaCopy16Wait(3, &gUnk_080A5888, gObjVramPtr, 0x800);
            gObjVramPtr += 0x800;

            gEntityInfo[0xB].xPosScreen = 0x48;
            gEntityInfo[0xB].yPosScreen = 0x20;
            gEntityInfo[0xB].visible = 1;
        }
    }
    else
    {
        gEntityInfo[0xB].yPosScreen = 0x50;

        DmaCopy16Wait(3, &gUnk_080A4888, gObjVramPtr, 0x800);
        gObjVramPtr += 0x800;

        gEntityInfo[0xB].visible = 1;
    }

    if ((gUnk_03004C20.level - 1) >= 0 && (gUnk_03004C20.level - 1) <= 6)
    {
        DmaCopy16Wait(3, gUnk_0818B800[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1], gObjVramPtr, 0x800);
        gObjVramPtr += 0x800;

        if (gCallbackQueue.next[4] == sub_08026374)
        {
            gEntityInfo[0xC].visible = 1;
        }
        else
        {
            gEntityInfo[0xC].visible = 0;
        }
    }
    else
    {
        DmaCopy16Wait(3, &gUnk_0805D1E8, gObjVramPtr, 0x800);
        gObjVramPtr += 0x800;
    }

    gUnk_030034F4 = gObjPalRamPtr;
    gUnk_030052AC = gObjVramPtr;
}
