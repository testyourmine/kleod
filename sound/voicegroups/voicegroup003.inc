	.align 2
	@********************** Voicegroup **********************@

	.global voicegroup003
voicegroup003:	@ 0x08118658
	voice_keysplit voicegroup008, KeySplitTable002-36	@08118658
	voice_directsound 60, 0, gUnknown_081572F8, 255, 242, 0, 89	@08118664
	voice_directsound 60, 0, gUnknown_08165288, 255, 0, 255, 89	@08118670
	voice_directsound 60, 0, gUnknown_08128064, 255, 242, 0, 127	@0811867C
	voice_directsound 60, 0, gUnknown_08135DF0, 128, 190, 203, 89	@08118688
