	.align 2
	@********************** Voicegroup **********************@

	.global voicegroup002
voicegroup002:	@ 0x081185C8
	voice_keysplit_all voicegroup003	@081185C8
	voice_programmable_wave ProgrammableWaveData_8118A94, 0, 0, 15, 0	@081185D4
	voice_directsound 60, 0, gUnknown_08133748, 255, 243, 0, 132	@081185E0
	voice_square_1 0, 0, 0, 2, 12, 0	@081185EC
	voice_square_2 0, 0, 2, 12, 0	@081185F8
	voice_directsound 60, 0, gUnknown_0814C4B4, 255, 190, 229, 89	@08118604
	voice_programmable_wave ProgrammableWaveData_8118A24, 0, 2, 0, 0	@08118610
	voice_keysplit voicegroup007, KeySplitTable000-36	@0811861C
	voice_directsound 60, 0, gUnknown_08130D1C, 255, 239, 0, 127	@08118628
	voice_directsound 60, 0, gUnknown_081229B0, 128, 227, 229, 89	@08118634
	voice_directsound 60, 0, gUnknown_08154C60, 128, 223, 151, 60	@08118640
	voice_directsound 60, 0, gUnknown_08126000, 255, 249, 51, 107	@0811864C
