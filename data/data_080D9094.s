	.section .rodata

    .incbin "baserom.gba", 0xD9094, 0xD90B8-0xD9094

gUnk_080D90B8:: @ 0x080D90B8
    .incbin "baserom.gba", 0xD90B8, 0x16*0x1

    .align 2, 0

gUnk_080D90D0:: @ 0x080D90D0
    .incbin "baserom.gba", 0xD90D0, 0x1

    .incbin "baserom.gba", 0xD90D1, 0xD9110-0xD90D1

gUnk_080D9110:: @ 0x080D9110
    .incbin "baserom.gba", 0xD9110, 0x40*0x1

gUnk_080D9150:: @ 0x080D9150
    .incbin "baserom.gba", 0xD9150, 0x1

    .incbin "baserom.gba", 0xD9151, 0xD927C-0xD9151

gUnk_080D927C:: @ 0x080D927C
    .incbin "baserom.gba", 0xD927C, 0x200

gUnk_080D947C:: @ 0x080D947C
    .incbin "baserom.gba", 0xD947C, 0x9600

gUnk_080E2A7C:: @ 0x080E2A7C
    .incbin "baserom.gba", 0xE2A7C, 0x8

gUnk_080E2A84:: @ 0x080E2A84
    .incbin "baserom.gba", 0xE2A84, 0x6*0x8*0x1

gUnk_080E2AB4:: @ 0x080E2AB4
    .incbin "baserom.gba", 0xE2AB4, 0x7*0x6*0x1

gUnk_080E2ADE:: @ 0x080E2ADE
    .incbin "baserom.gba", 0xE2ADE, 0x1

    .incbin "baserom.gba", 0xE2ADF, 0xE2AF2-0xE2ADF

gUnk_080E2AF2:: @ 0x080E2AF2
    .incbin "baserom.gba", 0xE2AF2, 0x3*0x1

gUnk_080E2AF5:: @ 0x080E2AF5
    .incbin "baserom.gba", 0xE2AF5, 0x1

    .incbin "baserom.gba", 0xE2AF6, 0xE2B49-0xE2AF6

gUnk_080E2B49:: @ 0x080E2B49
    .incbin "baserom.gba", 0xE2B49, 0x3*0x1

gUnk_080E2B4C:: @ 0x080E2B4C
    .incbin "baserom.gba", 0xE2B4C, 0x1

    .incbin "baserom.gba", 0xE2B4D, 0xE2B52-0xE2B4D

gUnk_080E2B52:: @ 0x080E2B52
    .incbin "baserom.gba", 0xE2B52, 0x1

    .incbin "baserom.gba", 0xE2B53, 0xE2B5E-0xE2B53

gUnk_080E2B5E:: @ 0x080E2B5E
    .incbin "baserom.gba", 0xE2B5E, 0x3*0x1

    .align 2, 0

gUnk_080E2B64:: @ 0x080E2B64
    .incbin "baserom.gba", 0xE2B64, 0x6*0x8*0x64*0xB*0x4

gUnk_08116464:: @ 0x08116464
    .incbin "baserom.gba", 0x116464, 1

    .incbin "baserom.gba", 0x116465, 0x116590-0x116465

gUnk_08116590:: @ 0x08116590
    .incbin "baserom.gba", 0x116590, 0xC*0xC

gUnk_08116620:: @ 0x08116620
    @ World 1
    .4byte LoadObjects_World1Select
    .4byte LoadObjects_World1Level1
    .4byte LoadObjects_World1Level2
    .4byte LoadObjects_World1Level3
    .4byte LoadObjects_World1Level4
    .4byte LoadObjects_World1Level5
    .4byte LoadObjects_World1Level6
    .4byte LoadObjects_World1Level7
    .4byte LoadObjects_World1Boss
    @ World 2
    .4byte LoadObjects_World2Select
    .4byte LoadObjects_World2Level1
    .4byte LoadObjects_World2Level2
    .4byte LoadObjects_World2Level3
    .4byte LoadObjects_World2Level4
    .4byte LoadObjects_World2Level5
    .4byte LoadObjects_World2Level6
    .4byte LoadObjects_World2Level7
    .4byte LoadObjects_World2Boss
    @ World 3
    .4byte LoadObjects_World3Select
    .4byte LoadObjects_World3Level1
    .4byte LoadObjects_World3Level2
    .4byte LoadObjects_World3Level3
    .4byte LoadObjects_World3Level4
    .4byte LoadObjects_World3Level5
    .4byte LoadObjects_World3Level6
    .4byte LoadObjects_World3Level7
    .4byte LoadObjects_World3Boss
    @ World 4
    .4byte LoadObjects_World4Select
    .4byte LoadObjects_World4Level1
    .4byte LoadObjects_World4Level2
    .4byte LoadObjects_World4Level3
    .4byte LoadObjects_World4Level4
    .4byte LoadObjects_World4Level5
    .4byte LoadObjects_World4Level6
    .4byte LoadObjects_World4Level7
    .4byte LoadObjects_World4Boss
    @ World 5
    .4byte LoadObjects_World5Select
    .4byte LoadObjects_World5Level1
    .4byte LoadObjects_World5Level2
    .4byte LoadObjects_World5Level3
    .4byte LoadObjects_World5Level4
    .4byte LoadObjects_World5Level5
    .4byte LoadObjects_World5Level6
    .4byte LoadObjects_World5Level7
    .4byte LoadObjects_World5Boss
    @ World 6
    .4byte sub_08028104
    .4byte sub_080375A0
    .4byte sub_08037DD4
    .4byte sub_0803881C
    .4byte sub_0803881C
    .4byte sub_0803881C
    .4byte sub_0803881C
    .4byte sub_0803881C
    .4byte sub_080392A4

gUnk_081166F8:: @ 0x081166F8
    .incbin "baserom.gba", 0x1166F8, 0x4*0x4*0x1

gUnk_08116708:: @ 0x08116708
    .incbin "baserom.gba", 0x116708, 0x8*0x4*0x1

gUnk_08116728:: @ 0x08116728
    .incbin "baserom.gba", 0x116728, 0x8*0x2*0x2

gUnk_08116748:: @ 0x08116748
    .incbin "baserom.gba", 0x116748, 0x7*0x8*0x1

gUnk_08116780:: @ 0x08116780
    .incbin "baserom.gba", 0x116780, 0x8*0x20*0x1

gUnk_08116880:: @ 0x08116880
    .incbin "baserom.gba", 0x116880, 0x8*0x1

gUnk_08116888:: @ 0x08116888
    .incbin "baserom.gba", 0x116888, 0x6*0x2*0x1

gUnk_08116894:: @ 0x08116894
    .incbin "baserom.gba", 0x116894, 0x6*0x4*0x1

gUnk_081168AC:: @ 0x081168AC
    .incbin "baserom.gba", 0x1168AC, 0x1

    .incbin "baserom.gba", 0x1168AD, 0x1168C4-0x1168AD

gUnk_081168C4:: @ 0x081168C4
    .incbin "baserom.gba", 0x1168C4, 0x1

    .incbin "baserom.gba", 0x1168C5, 0x1168DC-0x1168C5

gUnk_081168DC:: @ 0x081168DC
    .incbin "baserom.gba", 0x1168DC, 0x6*0x1

gUnk_081168E2:: @ 0x081168E2
    .incbin "baserom.gba", 0x1168E2, 0x4*0x1

    .byte 0, 0 // TODO: padding or should it be part of gUnk_081168E2?

gUnk_081168E8:: @ 0x081168E8
    .incbin "baserom.gba", 0x1168E8, 1

    .incbin "baserom.gba", 0x1168E9, 0x1169F9-0x1168E9

gUnk_081169F9:: @ 0x081169F9
    .incbin "baserom.gba", 0x1169F9, 0x3*0x3*0x1

gUnk_08116A02:: @ 0x08116A02
    .incbin "baserom.gba", 0x116A02, 0x4*0x5*0x1

gUnk_08116A16:: @ 0x08116A16
    .incbin "baserom.gba", 0x116A16, 0x4*0x4*0x1

gUnk_08116A26:: @ 0x08116A26
    .incbin "baserom.gba", 0x116A26, 0x1

    .incbin "baserom.gba", 0x116A27, 0x116A36-0x116A27

gUnk_08116A36:: @ 0x
    .incbin "baserom.gba", 0x116A36, 0x1

    .incbin "baserom.gba", 0x116A37, 0x116A46-0x116A37

gUnk_08116A46:: @ 0x08116A46
    .incbin "baserom.gba", 0x116A46, 0x4*0x2*0x1

gUnk_08116A4E:: @ 0x08116A4E
    .incbin "baserom.gba", 0x116A4E, 0x4*0x4*0x2

gUnk_08116A6E:: @ 0x08116A6E
    .incbin "baserom.gba", 0x116A6E, 0x4*0x6*0x1

gUnk_08116A86:: @ 0x08116A86
    .incbin "baserom.gba", 0x116A86, 0x5*0x6*0x1

gUnk_08116AA4:: @ 0x08116AA4
    .incbin "baserom.gba", 0x116AA4, 0x3*0x1

gUnk_08116AA7:: @ 0x08116AA7
    .incbin "baserom.gba", 0x116AA7, 0x3*0x1

    .incbin "baserom.gba", 0x116AAA, 0x11710A-0x116AAA

gUnk_0811710A:: @ 0x0811710A
    .incbin "baserom.gba", 0x11710A, 0x6*0x1

gUnk_08117110:: @ 0x08117110
    .incbin "baserom.gba", 0x117110, 0x8*0x2

gUnk_08117120:: @ 0x08117120
    .incbin "baserom.gba", 0x117120, 0xA*0x1

gUnk_0811712A:: @ 0x0811712A
    .incbin "baserom.gba", 0x11712A, 0x10*0x1

gUnk_0811713A:: @ 0x0811713A
    .incbin "baserom.gba", 0x11713A, 0x20*0x2

    .align 2, 0

gUnk_0811717C:: @ 0x0811717C
    .incbin "baserom.gba", 0x11717C, 0x6*0x28*0x5*0x1

gUnk_0811762C:: @ 0x0811762C
    .incbin "baserom.gba", 0x11762C, 0x6*0x8*0x1

gUnk_0811765C:: @ 0x0811765C
    .incbin "baserom.gba", 0x11765C, 0x6*0x7*0x1

    .align 2, 0

sEmptyEepromData:: @ 0x08117688
    .incbin "baserom.gba", 0x117688, 0x4*0x2

sSaveFileString:: @ 0x08117690
    .asciz "K_KLONOA"

    .align 2, 0

gUnk_0811769C:: @ 0x0811769C
    .incbin "baserom.gba", 0x11769C, 0x20*0x4*0x2

gUnk_0811779C:: @ 0x0811779C
    .incbin "baserom.gba", 0x11779C, 0x8*0x1

gUnk_081177A4:: @ 0x081177A4
    .incbin "baserom.gba", 0x1177A4, 0x8*0x2*0x2

gUnk_081177C4:: @ 0x081177C4
    .incbin "baserom.gba", 0x1177C4, 1

    .incbin "baserom.gba", 0x1177C5, 0x1177E4-0x1177C5

gUnk_081177E4:: @ 0x081177E4
    .incbin "baserom.gba", 0x1177E4, 0x10*0x1

gUnk_081177F4:: @ 0x081177F4
    .incbin "baserom.gba", 0x1177F4, 0x4*0x8*0x1

    .incbin "baserom.gba", 0x117814, 0x117834-0x117814

gUnk_08117834:: @ 0x08117834
    .incbin "baserom.gba", 0x117834, 0x10*0x1

gUnk_08117844:: @ 0x08117844
    .incbin "baserom.gba", 0x117844, 0x10*0x1

gUnk_08117854:: @ 0x08117854
    .incbin "baserom.gba", 0x117854, 0xA*0x4

gUnk_0811787C:: @ 0x0811787C
    .incbin "baserom.gba", 0x11787C, 0xF*0x4

gUnk_081178B8:: @ 0x081178B8
    .incbin "baserom.gba", 0x1178B8, 0x8*0x4

gUnk_081178D8:: @ 0x081178D8
    .incbin "baserom.gba", 0x1178D8, 0xD*0x4

gUnk_0811790C:: @ 0x0811790C
    .incbin "baserom.gba", 0x11790C, 0xE*0x4

    .incbin "baserom.gba", 0x117944, 0x1179B4-0x117944

gUnk_081179B4:: @ 0x081179B4
    .incbin "baserom.gba", 0x1179B4, 0xC*0x4
