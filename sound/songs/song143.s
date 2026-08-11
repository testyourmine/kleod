	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song143_1
song143_1:	@ 0x0817B8DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 3
	.byte	PAN	, c_v
	.byte	VOL	, v000
	.byte		N01	, Cs3, v004
	.byte	W01
	.byte	FINE

	.align 2
	.global song143
song143:	@ 0x0817B8EC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song143_1		@ track
