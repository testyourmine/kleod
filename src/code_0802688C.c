#include "global.h"
#include "code_0802688C.h"
#include "structs/variables.h"

extern void sub_08025B78(s32, u8);
extern void sub_08026374(void);

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
extern u8 gUnk_0805C6E8[0x200];
extern u8 gUnk_0805C8E8[0x80];
extern u8 gUnk_0805C968[0x80];
extern u8 gUnk_0805C9E8[0x800];
extern u8 gUnk_0805D1E8[0x800];
extern u8 gUnk_0805D9E8[0x200];
extern u8 gUnk_0805DBE8[0x300];
extern u8 gUnk_0805DEE8[0x200];
extern u8 gUnk_0805E0E8[0x200];
extern u8 gUnk_0805E2E8[0x400];
extern u8 gUnk_0805E6E8[0x400];
extern u8 gUnk_0805EAE8[0x200];
extern u8 gUnk_0805ECE8[0x200];
extern u8 gUnk_0805EEE8[0x200];
extern u8 gUnk_0805F0E8[0x200];
extern u8 gUnk_0805F2E8[0x80];
extern u8 gUnk_0805F368[0x20];
extern u8 gUnk_0805F388[0x80];
extern u8 gUnk_0805F408[0x80];
extern u8 gUnk_0805F488[0x80];
extern u8 gUnk_0805F508[0x200];
extern u8 gUnk_0805F708[0x80];
extern u8 gUnk_0805F788[0x80];
extern u8 gUnk_0805F808[0x200];
extern u8 gUnk_0805FA08[0x100];
extern u8 gUnk_0805FB08[0x100];
extern u8 gUnk_0805FC08[0x200];
extern u8 gUnk_0805FE08[0x800];
extern u8 gUnk_08060608[0x100];
extern u8 gUnk_08060708[0x100];
extern u8 gUnk_08060808[0x200];
extern u8 gUnk_08060A08[0x80];
extern u8 gUnk_08060A88[0x600];
extern u8 gUnk_08061088[0x800];
extern u8 gUnk_08061888[0x100];
extern u8 gUnk_08061988[0x80];
extern u8 gUnk_08061A08[0x20];
extern u8 gUnk_08061A28[0x200];
extern u8 gUnk_08061C28[0x100];
extern u8 gUnk_08061D28[0x20];
extern u8 gUnk_08061D48[0x20];
extern u8 gUnk_08061D68[0x20];
extern u8 gUnk_08061D88[0x20];
extern u8 gUnk_08061DA8[0x20];
extern u8 gUnk_08061DC8[0x200];
extern u8 gUnk_08061FC8[0x80];
extern u8 gUnk_08062048[0x100];
extern u8 gUnk_08062148[0x100];
extern u8 gUnk_08062248[0x100];
extern u8 gUnk_08062348[0x80];
extern u8 gUnk_080623C8[0x400];
extern u8 gUnk_080627C8[0x80];
extern u8 gUnk_08062848[0x80];
extern u8 gUnk_080628C8[0x200];
extern u8 gUnk_08062AC8[0x20];
extern u8 gUnk_08062AE8[0x200];
extern u8 gUnk_08062CE8[0x200];
extern u8 gUnk_08062EE8[0x200];
extern u8 gUnk_080630E8[0x80];
extern u8 gUnk_08063168[0x200];
extern u8 gUnk_08063368[0x80];
extern u8 gUnk_080633E8[0x200];
extern u8 gUnk_080635E8[0x80];
extern u8 gUnk_08063668[0x200];
extern u8 gUnk_08063868[0x200];
extern u8 gUnk_08063A68[0x80];
extern u8 gUnk_08063AE8[0x100];
extern u8 gUnk_08063BE8[0x400];
extern u8 gUnk_08063FE8[0x80];
extern u8 gUnk_08064068[0x400];
extern u8 gUnk_08064468[0x400];
extern u8 gUnk_08064868[0x200];
extern u8 gUnk_08064A68[0x200];
extern u8 gUnk_08064C68[0x200];
extern u8 gUnk_08064E68[0x100];
extern u8 gUnk_08064F68[0x200];
extern u8 gUnk_08065168[0x200];
extern u8 gUnk_08065368[0x200];
extern u8 gUnk_08065568[0x200];
extern u8 gUnk_08065768[0x20];
extern u8 gUnk_08065788[0x20];
extern u8 gUnk_080657A8[0x20];

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
extern u8 gUnk_08078768[0x20]; // Unused?
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

void sub_0802688C(void)
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
    DmaCopy16Wait(3, (void*)0x02000904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, (void*)0x02001104, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;
    DmaCopy16Wait(3, (void*)0x02001904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, (void*)0x02001B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, (void*)0x02001D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077F28, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002704, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, (void*)0x02002904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, (void*)0x02002B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, (void*)0x02002D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077F48, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002104, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, (void*)0x02002304, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
    DmaCopy16Wait(3, (void*)0x02002504, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077F68, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001F04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

void sub_08026F68(void)
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
    DmaCopy16Wait(3, (void*)0x02000904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08077FA8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001104, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08077FC8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08077FE8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078008, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078028, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001F04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

void sub_08027364(void)
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
    DmaCopy16Wait(3, (void*)0x02000904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_08078068, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001104, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    sub_08025B78(0x16, 0);

    DmaCopy16Wait(3, &gUnk_08078088, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080780A8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001F04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080780C8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080780E8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001704, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078108, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02001B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

void sub_080277CC(void)
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
    DmaCopy16Wait(3, (void*)0x02000904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    sub_08025B78(0x15, 0);

    DmaCopy16Wait(3, &gUnk_08078148, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002304, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078168, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002104, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078188, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002504, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080781A8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002704, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080781C8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002904, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080781E8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002B04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078208, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002D04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_08078228, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void*)0x02002F04, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

void sub_08027CF8(void)
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
    DmaCopy16Wait(3, (void *)0x02004704, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    sub_08025B78(0x15, 0);

    DmaCopy16Wait(3, &gUnk_08078268, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void *)0x02001104, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    sub_08025B78(0x16, 0);

    DmaCopy16Wait(3, &gUnk_08078288, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void *)0x02000904, gObjVramPtr, 0x800);
    gObjVramPtr += 0x800;

    DmaCopy16Wait(3, &gUnk_080782A8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void *)0x02004104, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080782C8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void *)0x02004304, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;

    DmaCopy16Wait(3, &gUnk_080782E8, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    DmaCopy16Wait(3, (void *)0x02004504, gObjVramPtr, 0x200);
    gObjVramPtr += 0x200;
}

void sub_08028104(void)
{
    return;
}

void sub_08028108(void)
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

void sub_08028440(void)
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

void sub_08028750(void)
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

void sub_08028B4C(void)
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

void sub_08028E8C(void)
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

void sub_0802946C(void)
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

void sub_08029968(void)
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

void sub_08029EAC(void)
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

void sub_0802A31C(void)
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

void sub_0802A948(void)
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

void sub_0802B05C(void)
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

void sub_0802B768(void)
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

void sub_0802BA84(void)
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

void sub_0802C1F8(void)
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

void sub_0802C8B0(void)
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

void sub_0802D028(void)
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

void sub_0802D558(void)
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

void sub_0802DBC4(void)
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

void sub_0802E374(void)
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

void sub_0802EB78(void)
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

void sub_0802EEC0(void)
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

void sub_0802F53C(void)
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

void sub_0802FA28(void)
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

void sub_080301A8(void)
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
    DmaCopy16Wait(3, (void *)0x0200A984, gObjVramPtr, 0x20);
    gObjVramPtr += 0x20;
    DmaCopy16Wait(3, (void *)0x0200A904, gObjVramPtr, 0x80);
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

void sub_08030680(void)
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

void sub_08030D38(void)
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

void sub_080313F8(void)
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

void sub_08031ADC(void)
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

void sub_08031E7C(void)
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

void sub_080326E8(void)
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

void sub_08032D3C(void)
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

void sub_080335D4(void)
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

void sub_08033AAC(void)
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

void sub_08034078(void)
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

void sub_080348B0(void)
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

void sub_08035210(void)
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

void sub_080356E4(void)
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

void sub_08035EF8(void)
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

void sub_08036564(void)
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

void sub_08037038(void)
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

void sub_08039920(void)
{
    DmaCopy16Wait(3, &gUnk_08077E28, gObjPalRamPtr, 0x20);
    gObjPalRamPtr += 0x20;
    sub_08025B78(0, 0);
    gUnk_03002920[0].unk10 = 1;
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
                    gUnk_03002920[0xB].unk10 = 1;
                }
                else
                {
                    gUnk_03002920[0xB].unk10 = 0;
                }
            }
        }
        else
        {
            DmaCopy16Wait(3, &gUnk_080A5888, gObjVramPtr, 0x800);
            gObjVramPtr += 0x800;

            gUnk_03002920[0xB].xPosScreen = 0x48;
            gUnk_03002920[0xB].yPosScreen = 0x20;
            gUnk_03002920[0xB].unk10 = 1;
        }
    }
    else
    {
        gUnk_03002920[0xB].yPosScreen = 0x50;

        DmaCopy16Wait(3, &gUnk_080A4888, gObjVramPtr, 0x800);
        gObjVramPtr += 0x800;

        gUnk_03002920[0xB].unk10 = 1;
    }

    if ((gUnk_03004C20.level - 1) >= 0 && (gUnk_03004C20.level - 1) <= 6)
    {
        DmaCopy16Wait(3, gUnk_0818B800[gUnk_03004C20.world - 1][gUnk_03004C20.level - 1], gObjVramPtr, 0x800);
        gObjVramPtr += 0x800;

        if (gCallbackQueue.next[4] == sub_08026374)
        {
            gUnk_03002920[0xC].unk10 = 1;
        }
        else
        {
            gUnk_03002920[0xC].unk10 = 0;
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
