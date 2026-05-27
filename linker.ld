ENTRY(__start)

gNumMusicPlayers = 4;
gMaxLines = 0;

MEMORY {
    ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000008; gMPlayTrack_0 = .;
        . = 0x00000288; gMPlayTrack_1 = .;
        . = 0x000002D8; gMPlayTrack_2 = .;
        . = 0x00000328; gMPlayTrack_3 = .;

        . = 0x00000378; timer_No = .;
        . = 0x0000037A; timer_Count = .;
        . = 0x0000037C; timeoutFlag = .;
        . = 0x00000380; timerReg = .;
        . = 0x00000384; shelt_ime = .;

        . = 0x00000388; SoundMainRAM_Buffer = .;

        . = 0x000007C0; gUnk_030007C0 = .;
        . = 0x000007C4; gUnk_030007C4 = .;
        . = 0x000007D8; gUnk_030007D8 = .;
        . = 0x000007DC; gUnk_030007DC = .;
        . = 0x000007E0; gUnk_030007E0 = .;
        . = 0x000007FC; gUnk_030007FC = .;
        . = 0x00000800; gUnk_03000800 = .;
        . = 0x00000808; gUnk_03000808 = .;
        . = 0x0000080C; gRngState = .;
        . = 0x00000830; gUnk_03000830 = .;
        . = 0x000008E8; gUnk_030008E8 = .;
        . = 0x00000900; gUnk_03000900 = .;
        . = 0x00001100; gUnk_03001100 = .;
        . = 0x00002910; gUnk_03002910 = .;
        . = 0x00002920; gUnk_03002920 = .;
        . = 0x00003410; gUnk_03003410 = .;
        . = 0x00003420; gUnk_03003420 = .;
        . = 0x00003430; gUnk_03003430 = .;
        . = 0x00003470; gUnk_03003470 = .;
        . = 0x00003472; gUnk_03003472 = .;
        . = 0x00003478; gUnk_03003478 = .;
        . = 0x000034A0; gUnk_030034A0 = .;
        . = 0x000034AC; gUnk_030034AC = .;
        . = 0x000034E4; gUnk_030034E4 = .;
        . = 0x000034E8; gUnk_030034E8 = .;
        . = 0x000034F0; gUnk_030034F0 = .;
        . = 0x000034F8; gUnk_030034F8 = .;
        . = 0x000034FC; gUnk_030034FC = .;
        . = 0x00003510; gUnk_03003510 = .;
        . = 0x0000358C; gUnk_0300358C = .;
        . = 0x0000362C; gHeldKeysAttract = .;
        . = 0x0000363C; gUnk_0300363C = .;
        . = 0x00003650; gUnk_03003650 = .;
        . = 0x00004654; gUnk_03004654 = .;
        . = 0x00004658; gUnk_03004658 = .;
        . = 0x00004660; gUnk_03004660 = .;
        . = 0x00004668; gNewKeysAttract = .;
        . = 0x00004670; gUnk_03004670 = .;
        . = 0x00004678; gUnk_03004678 = .;
        . = 0x00004784; gUnk_03004784 = .;
        . = 0x00004790; gUnk_03004790 = .;
        . = 0x000047B0; gUnk_030047B0 = .;
        . = 0x000047C0; gIntrTable = .;
        . = 0x000047FC; gUnk_030047FC = .;
        . = 0x00004800; gUnk_03004800 = .;
        . = 0x00004C0C; gRngCount = .;
        . = 0x00004C20; gUnk_03004C20 = .;
        . = 0x00004C40; gUnk_03004C40 = .;
        . = 0x00004DA0; gNewKeys = .;
        . = 0x00004DB0; gUnk_03004DB0 = .;
        . = 0x000051B0; gUnk_030051B0 = .;
        . = 0x000051B8; gUnk_030051B8 = .;
        . = 0x000051BC; gUnk_030051BC = .;
        . = 0x000051C8; gUnk_030051C8 = .;
        . = 0x000051CC; gUnk_030051CC = .;
        . = 0x000051D0; gUnk_030051D0 = .;
        . = 0x000051DC; gUnk_030051DC = .;
        . = 0x000051E4; gHeldKeys = .;
        . = 0x00005210; gUnk_03005210 = .;
        . = 0x00005220; gUnk_03005220 = .;
        . = 0x00005284; gUnk_03005284 = .;
        . = 0x00005290; gUnk_03005290 = .;
        . = 0x00005294; gUnk_03005294 = .;
        . = 0x000052A0; gUnk_030052A0 = .;
        . = 0x000052C0; gUnk_030052C0 = .;
        . = 0x00005400; gUnk_03005400 = .;
        . = 0x00005418; gUnk_03005418 = .;
        . = 0x00005420; gUnk_03005420 = .;
        . = 0x00005428; gUnk_03005428 = .;
        . = 0x0000542C; gUnk_0300542C = .;
        . = 0x00005440; gUnk_03005440 = .;
        . = 0x00005464; gUnk_03005464 = .;
        . = 0x00005468; gUnk_03005468 = .;
        . = 0x00005474; gUnk_03005474 = .;
        . = 0x00005478; gHeapPtr = .;
        . = 0x00005480; gUnk_03005480 = .;
        . = 0x00005488; gUnk_03005488 = .;
        . = 0x0000548C; gUnk_0300548C = .;
        . = 0x00005490; gUnk_03005490 = .;
        . = 0x00005498; gUnk_03005498 = .;

        . = 0x000054A0; gSoundInfo = .;
        . = 0x00006450; gMPlayJumpTable = .;
        . = 0x000064E0; gCgbChans = .;
        . = 0x000065E0; gMPlayInfo_0 = .;
        . = 0x00006620; gMPlayInfo_1 = .;
        . = 0x00006660; gMPlayInfo_2 = .;
        . = 0x000066A0; gMPlayMemAccArea = .;
        . = 0x000066B0; gMPlayInfo_3 = .;

        . = 0x000066F0; gEEPROMConfig = .;
    } >iwram

    rom : ALIGN(4) {
        asm/crt0.o(.text);
        asm/heap_arm.o(.text);
        asm/rand_arm.o(.text);
        asm/util.o(.text);
        src/main.o(.text);
        src/math.o(.text);
        src/interrupts.o(.text);
        asm/code_08001158.o(.text);
        asm/code_08003D58.o(.text);
        asm/code_0800BFF4.o(.text);
        asm/code_08014184.o(.text);
        asm/code_080240F4.o(.text);
        asm/code_0802688C.o(.text);
        asm/code_08039D8C.o(.text);
        asm/m4a0.o(.text);
        src/m4a.o(.text);
        asm/libagbsyscall.o(.text);
        src/eeprom.o(.text);

        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libc.a:memcpy.o(.text);

        asm/thunk.o(.text);
    } >rom

    rodata : ALIGN(4) {
        data/data_08051BD4.o(.rodata);
        src/data/m4a_tables.o(.rodata);
        data/data_08117CBC.o(.rodata);
        data/sound_data.o(.rodata);
        data/data_08118AE4.o(.rodata);
        src/eeprom.o(.rodata);
        data/data_08188E5C.o(.rodata);
    } >rom

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
