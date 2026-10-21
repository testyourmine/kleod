#include "global.h"
#include "data/data_0818BBBC.h"

u8 pad100[0x100] = {0}; // TODO: why?

// 0x188f5c
u32* gUnk_08188F5C[6][9] = {
    [0] = {
        [0] = gUnk_082FBF08,
        [1] = gUnk_0818BBBC,
        [2] = gUnk_0818BDE0,
        [3] = gUnk_0818C004,
        [4] = gUnk_0818C228,
        [5] = gUnk_0818C3C0,
        [6] = gUnk_0818C5E8,
        [7] = gUnk_0818C80C,
        [8] = gUnk_0818CA34
    },
    [1] = {
        [0] = gUnk_082FC0AC,
        [1] = gUnk_081BD784,
        [2] = gUnk_081BD9AC,
        [3] = gUnk_081BDBD0,
        [4] = gUnk_081BDDF0,
        [5] = gUnk_081BDFD4,
        [6] = gUnk_081BE1F8,
        [7] = gUnk_081BE414,
        [8] = gUnk_081BE63C
    },
    [2] = {
        [0] = gUnk_082FC264,
        [1] = gUnk_081EC0F0,
        [2] = gUnk_081EC318,
        [3] = gUnk_081EC540,
        [4] = gUnk_081EC768,
        [5] = gUnk_081EC904,
        [6] = gUnk_081ECB28,
        [7] = gUnk_081ECD4C,
        [8] = gUnk_081ECF74
    },
    [3] = {
        [0] = gUnk_082FC390,
        [1] = gUnk_0821D6DC,
        [2] = gUnk_0821D900,
        [3] = gUnk_0821DB40,
        [4] = gUnk_0821DD64,
        [5] = gUnk_0821DEFC,
        [6] = gUnk_0821E124,
        [7] = gUnk_0821E344,
        [8] = gUnk_0821E568
    },
    [4] = {
        [0] = gUnk_082FC4FC,
        [1] = gUnk_08256314,
        [2] = gUnk_08256534,
        [3] = gUnk_08256754,
        [4] = gUnk_08256978,
        [5] = gUnk_08256B7C,
        [6] = gUnk_08256DA0,
        [7] = gUnk_08256FC0,
        [8] = gUnk_082571E4
    },
    [5] = {
        [0] = gUnk_082FC6C0,
        [1] = gUnk_08285418,
        [2] = gUnk_08285650,
        [3] = gUnk_08285874,
        [4] = gUnk_08285874,
        [5] = gUnk_08285874,
        [6] = gUnk_08285874,
        [7] = gUnk_08285874,
        [8] = gUnk_08285AB0
    }
};

// 0x189034
u32* gUnk_08189034[6][9][3] = {
    [0] = {
        [0] = { gUnk_082FC7B0, gUnk_082FCF04, gUnk_082FD5C4 },
        [1] = { gUnk_0818CC54, gUnk_0818E7B8, gUnk_08191F88 },
        [2] = { gUnk_08192F5C, gUnk_08194ABC, gUnk_08196DEC },
        [3] = { gUnk_08197D30, gUnk_08199918, gUnk_0819A0A4 },
        [4] = { gUnk_0819B070, gUnk_0819CBC4, gUnk_0819D350 },
        [5] = { gUnk_0819E744, gUnk_081A07E0, gUnk_081A1D8C },
        [6] = { gUnk_081A3208, gUnk_081A4D5C, gUnk_081A708C },
        [7] = { gUnk_081A81DC, gUnk_081AA270, gUnk_081ABF3C },
        [8] = { gUnk_081AD3B8, gUnk_081AE324, gUnk_081B1204 }
    },
    [1] = {
        [0] = { gUnk_082FC7B0, gUnk_082FE4B8, gUnk_082FFB6C },
        [1] = { gUnk_081BE7A0, gUnk_081C0194, gUnk_081C0EF0 },
        [2] = { gUnk_081C2130, gUnk_081C3A00, gUnk_081C4328 },
        [3] = { gUnk_081C5808, gUnk_081C70D8, gUnk_081C7E88 },
        [4] = { gUnk_081C9380, gUnk_081CAC3C, gUnk_081CB9EC },
        [5] = { gUnk_081CC848, gUnk_081CE110, gUnk_081CEC48 },
        [6] = { gUnk_081D0128, gUnk_081D19EC, gUnk_081D2524 },
        [7] = { gUnk_081D32DC, gUnk_081D4B14, gUnk_081D5418 },
        [8] = { gUnk_081D6658, gUnk_081D7744, gUnk_081D7758 }
    },
    [2] = {
        [0] = { gUnk_082FC7B0, gUnk_08301084, gUnk_083017B8 },
        [1] = { gUnk_081ED174, gUnk_081EF144, gUnk_081F0A9C },
        [2] = { gUnk_081F1A34, gUnk_081F3A04, gUnk_081F5220 },
        [3] = { gUnk_081F6244, gUnk_081F7A70, gUnk_081F90A8 },
        [4] = { gUnk_081FA214, gUnk_081FC1D4, gUnk_081FDB2C },
        [5] = { gUnk_081FEF24, gUnk_0820075C, gUnk_08201C54 },
        [6] = { gUnk_08202DC0, gUnk_08204D80, gUnk_0820659C },
        [7] = { gUnk_0820761C, gUnk_08209580, gUnk_0820AD9C },
        [8] = { gUnk_0820BD34, gUnk_0820CF2C, gUnk_0820E3EC }
    },
    [3] = {
        [0] = { gUnk_082FC7B0, gUnk_08301CF4, gUnk_08302814 },
        [1] = { gUnk_0821E760, gUnk_08220B08, gUnk_08221B18 },
        [2] = { gUnk_08222C8C, gUnk_08225034, gUnk_08226044 },
        [3] = { gUnk_082271B8, gUnk_08229FF4, gUnk_0822B954 },
        [4] = { gUnk_0822CB68, gUnk_0822ECD4, gUnk_082309BC },
        [5] = { gUnk_08231DB4, gUnk_08234904, gUnk_08236398 },
        [6] = { gUnk_082375AC, gUnk_08239718, gUnk_0823A0B4 },
        [7] = { gUnk_0823B1A8, gUnk_0823D328, gUnk_0823F010 },
        [8] = { gUnk_08240224, gUnk_082413CC, gUnk_082425F8 }
    },
    [4] = {
        [0] = { gUnk_082FC7B0, gUnk_08303448, gUnk_08304E88 },
        [1] = { gUnk_08257408, gUnk_08259124, gUnk_0825A790 },
        [2] = { gUnk_0825BBBC, gUnk_0825D8D8, gUnk_0825DFCC },
        [3] = { gUnk_0825F3EC, gUnk_082613F4, gUnk_08262694 },
        [4] = { gUnk_082635E8, gUnk_08265650, gUnk_082668F0 },
        [5] = { gUnk_08267AAC, gUnk_08269AB4, gUnk_0826B1A8 },
        [6] = { gUnk_0826BFD0, gUnk_0826E01C, gUnk_0826FABC },
        [7] = { gUnk_082704D0, gUnk_082724D4, gUnk_08273F74 },
        [8] = { gUnk_08274EF0, gUnk_08276894, gUnk_08277AD8 }
    },
    [5] = {
        [0] = { gUnk_082FC7B0, gUnk_08306ECC, gUnk_08309618 },
        [1] = { gUnk_08285C58, gUnk_08287E10, gUnk_082890D0 },
        [2] = { gUnk_08289D64, gUnk_0828BD6C, gUnk_0828D460 },
        [3] = { gUnk_0828E27C, gUnk_082903D8, gUnk_08291D30 },
        [4] = { gUnk_0828E27C, gUnk_082903D8, gUnk_08291D30 },
        [5] = { gUnk_0828E27C, gUnk_082903D8, gUnk_08291D30 },
        [6] = { gUnk_0828E27C, gUnk_082903D8, gUnk_08291D30 },
        [7] = { gUnk_0828E27C, gUnk_082903D8, gUnk_08291D30 },
        [8] = { gUnk_08293088, gUnk_08293990, gUnk_082946E8 }
    }
};

// 0x1892bc
u32* gUnk_081892BC[6][9][3] = {
    [0] = {
        [0] = { gUnk_08309D3C, gUnk_08309F38, gUnk_0830A0B4 },
        [1] = { gUnk_081B1FE0, gUnk_081B23AC, gUnk_081B27F8 },
        [2] = { gUnk_081B36F0, gUnk_081B3ABC, gUnk_081B3E58 },
        [3] = { gUnk_081B4AC4, gUnk_081B4EC4, gUnk_081B50A8 },
        [4] = { gUnk_081B5EE4, gUnk_081B62A0, gUnk_081B6484 },
        [5] = { gUnk_081B8358, gUnk_081B8740, gUnk_081B8A24 },
        [6] = { gUnk_081B9CA4, gUnk_081BA05C, gUnk_081BA3F8 },
        [7] = { gUnk_081BB754, gUnk_081BBB30, gUnk_081BBE58 },
        [8] = { gUnk_081BCF3C, gUnk_081BD1A8, gUnk_081BD5E8 }
    },
    [1] = {
        [0] = { gUnk_08309D3C, gUnk_0830A31C, gUnk_0830A6D8 },
        [1] = { gUnk_081D858C, gUnk_081D8998, gUnk_081D8C14 },
        [2] = { gUnk_081DAA10, gUnk_081DAFC4, gUnk_081DB198 },
        [3] = { gUnk_081DCDBC, gUnk_081DD364, gUnk_081DD63C },
        [4] = { gUnk_081DFD38, gUnk_081E02CC, gUnk_081E05A4 },
        [5] = { gUnk_081E2EBC, gUnk_081E3470, gUnk_081E36E0 },
        [6] = { gUnk_081E6704, gUnk_081E6C94, gUnk_081E6F04 },
        [7] = { gUnk_081E8680, gUnk_081E8C2C, gUnk_081E8EB8 },
        [8] = { gUnk_081EB9C8, gUnk_081EBD1C, gUnk_081EBDB0 }
    },
    [2] = {
        [0] = { gUnk_08309D3C, gUnk_0830A96C, gUnk_0830AAEC },
        [1] = { gUnk_08210040, gUnk_082104AC, gUnk_08210860 },
        [2] = { gUnk_08211AC0, gUnk_08211F38, gUnk_082122D0 },
        [3] = { gUnk_08212F88, gUnk_08213504, gUnk_082137A4 },
        [4] = { gUnk_08214650, gUnk_08214AA0, gUnk_08214E54 },
        [5] = { gUnk_08217B84, gUnk_08218100, gUnk_08218384 },
        [6] = { gUnk_082197FC, gUnk_08219C4C, gUnk_08219FE4 },
        [7] = { gUnk_0821B4B8, gUnk_0821B91C, gUnk_0821BCB4 },
        [8] = { gUnk_0821CF60, gUnk_0821D1A8, gUnk_0821D3E8 }
    },
    [3] = {
        [0] = { gUnk_08309D3C, gUnk_0830ACD4, gUnk_0830AE80 },
        [1] = { gUnk_0824431C, gUnk_08244874, gUnk_08244A18 },
        [2] = { gUnk_08247404, gUnk_0824796C, gUnk_08247B10 },
        [3] = { gUnk_08249A24, gUnk_08249FE4, gUnk_0824A1BC },
        [4] = { gUnk_0824B9F8, gUnk_0824BE40, gUnk_0824C318 },
        [5] = { gUnk_0824EE44, gUnk_0824F3DC, gUnk_0824F6CC },
        [6] = { gUnk_082516C8, gUnk_08251B14, gUnk_08251CB8 },
        [7] = { gUnk_082530BC, gUnk_0825352C, gUnk_08253A04 },
        [8] = { gUnk_08255C08, gUnk_08255E9C, gUnk_082560B4 }
    },
    [4] = {
        [0] = { gUnk_08309D3C, gUnk_0830B0B8, gUnk_0830B374 },
        [1] = { gUnk_0827865C, gUnk_08278C1C, gUnk_08278E50 },
        [2] = { gUnk_08279BE8, gUnk_0827A1B0, gUnk_0827A334 },
        [3] = { gUnk_0827B3E8, gUnk_0827B97C, gUnk_0827BC1C },
        [4] = { gUnk_0827CD40, gUnk_0827D2CC, gUnk_0827D56C },
        [5] = { gUnk_0827F410, gUnk_0827F9AC, gUnk_0827FE38 },
        [6] = { gUnk_08280FC4, gUnk_08281548, gUnk_08281A98 },
        [7] = { gUnk_08282D54, gUnk_082832FC, gUnk_0828384C },
        [8] = { gUnk_08284CB0, gUnk_08284FC0, gUnk_08285228 }
    },
    [5] = {
        [0] = { gUnk_08309D3C, gUnk_0830B5F0, gUnk_0830B9F4 },
        [1] = { gUnk_08295A40, gUnk_0829601C, gUnk_082962BC },
        [2] = { gUnk_0829750C, gUnk_08297AB4, gUnk_08297F40 },
        [3] = { gUnk_08299374, gUnk_0829980C, gUnk_08299BC0 },
        [4] = { gUnk_08299374, gUnk_0829980C, gUnk_08299BC0 },
        [5] = { gUnk_08299374, gUnk_0829980C, gUnk_08299BC0 },
        [6] = { gUnk_08299374, gUnk_0829980C, gUnk_08299BC0 },
        [7] = { gUnk_08299374, gUnk_0829980C, gUnk_08299BC0 },
        [8] = { gUnk_0829EBEC, gUnk_0829ED74, gUnk_0829EF8C }
    }
};

// 0x189544
u32* gUnk_08189544[6] = {
    [0] = gUnk_0830BB48,
    [1] = gUnk_0830BCFC,
    [2] = gUnk_0830BEBC,
    [3] = gUnk_0830BFF4,
    [4] = gUnk_0830C160,
    [5] = NULL
};

// 0x18955c
u32* gUnk_0818955C[6] = {
    [0] = gUnk_0830C324,
    [1] = gUnk_0830D070,
    [2] = gUnk_0830D410,
    [3] = gUnk_0830E6AC,
    [4] = gUnk_0830FC34,
    [5] = NULL
};

// 0x189574
u32* gUnk_08189574[6] = {
    [0] = gUnk_08311DC0,
    [1] = gUnk_08311FEC,
    [2] = gUnk_08312138,
    [3] = gUnk_083123AC,
    [4] = gUnk_083125F4,
    [5] = NULL
};
