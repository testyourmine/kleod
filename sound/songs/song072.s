	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song072_1
song072_1:	@ 0x08176680
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 14
	.byte	PAN	, c_v
	.byte	VOL	, v056
	.byte		N08	, Cn4, v127
	.byte	W08
	.byte	FINE

	.align 2
	.global song072
song072:	@ 0x08176690
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song072_1		@ track
