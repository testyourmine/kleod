#include "global.h"
#include "structs/variables.h"

struct Unk_08014184 {
    u16 unk0;
    u8 unk2;
    u8 pad3[0x4 - 0x3];
};

struct Unk_08014184 *sub_08014184(struct Unk_08014184 *arg0, u16 arg1, u16 arg2, u8 arg3)
{
    u32 var_r3;
    struct Unk_08014184 var_r4;

    for (var_r3 = gUnk_03004D80->unk2; var_r3 < gUnk_03004D80->unk0; var_r3++)
    {
        if ((arg2 >= gUnk_03004D80->unk4[var_r3].unk2) && (gUnk_03004D80->unk4[var_r3].unk6 >= (arg2 - arg3)) && (arg1 < (gUnk_03004D80->unk4[var_r3].unk0 + 3)) && ((gUnk_03004D80->unk4[var_r3].unk0 - 3) < arg1))
        {
            var_r4.unk0 = gUnk_03004D80->unk4[var_r3].unk0 - 3;
            var_r4.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
            *arg0 = var_r4;
            goto exit; // FAKE
            return arg0;
        }
    }

    var_r4.unk0 = -1;
    *arg0 = var_r4;
    exit:
    return arg0;
}

struct Unk_08014184 *sub_08014230(struct Unk_08014184 *arg0, u16 arg1, u16 arg2, u8 arg3)
{
    s32 temp_r1_2;
    struct Unk_08014184 var_r5;
    u32 var_r3;

    var_r5.unk0 = -1;

    for (var_r3 = 0; var_r3 < gUnk_03004D80->unk2; var_r3++)
    {
        if (gUnk_03004D80->unk4[var_r3].unk4 >= arg1)
        {
            if (arg1 >= gUnk_03004D80->unk4[var_r3].unk0)
            {
                if (gUnk_03004D80->unk4[var_r3].unk2 == gUnk_03004D80->unk4[var_r3].unk6)
                {
                    if (((arg2 - arg3) <= gUnk_03004D80->unk4[var_r3].unk2) && (gUnk_03004D80->unk4[var_r3].unk2 <= arg2))
                    {
                        var_r5.unk0 = gUnk_03004D80->unk4[var_r3].unk2;
                        var_r5.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
                        // Fake?
                        *arg0 = var_r5;
                        goto exit;
                        return arg0;
                    }
                    else
                    {
                        continue;
                    }
                }
                else
                {
                    temp_r1_2 = (((gUnk_03004D80->unk4[var_r3].unk6 - gUnk_03004D80->unk4[var_r3].unk2) * (arg1 - gUnk_03004D80->unk4[var_r3].unk0)) / (gUnk_03004D80->unk4[var_r3].unk4 - gUnk_03004D80->unk4[var_r3].unk0)) + gUnk_03004D80->unk4[var_r3].unk2;
                    if ((temp_r1_2 >= (arg2 - arg3)) && (temp_r1_2 <= (arg2 + 3)))
                    {
                        var_r5.unk0 = temp_r1_2;
                        var_r5.unk2 = gUnk_03004D80->unk4[var_r3].unk8;
                    }
                    else
                    {
                        continue;
                    }
                }
            }

            *arg0 = var_r5;
            exit:
            return arg0;
        }
    }

    *arg0 = var_r5;
    return arg0;
}
