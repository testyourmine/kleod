	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song081_1
song081_1:	@ 0x08176824
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 56
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N06	, Fn3, v127
	.byte	W06
	.byte	FINE

	.align 2
	.global song081
song081:	@ 0x08176834
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song081_1		@ track
