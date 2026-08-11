	.align 2
	@********************** Voicegroup **********************@

	.global voicegroup004
voicegroup004:	@ 0x08118694
	voice_square_2 2, 0, 2, 12, 0	@08118694
	voice_directsound 60, 0, gUnknown_08128064, 255, 242, 0, 127	@081186A0
	voice_directsound 60, 0, gUnknown_08165288, 255, 0, 255, 89	@081186AC
	voice_directsound 60, 0, gUnknown_08165288, 255, 0, 255, 89	@081186B8
	voice_programmable_wave ProgrammableWaveData_8118A94, 0, 2, 0, 0	@081186C4
	voice_keysplit voicegroup007, KeySplitTable000-36	@081186D0
	voice_directsound 60, 0, gUnknown_081226C8, 255, 243, 0, 149	@081186DC
	voice_directsound 60, 0, gUnknown_08128064, 255, 242, 0, 127	@081186E8
	voice_square_1 0, 2, 0, 2, 0, 1	@081186F4
	voice_square_2 2, 0, 2, 0, 1	@08118700
	voice_keysplit_all voicegroup003	@0811870C
	voice_keysplit_all voicegroup005	@08118718
