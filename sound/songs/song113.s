	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song113_1
song113_1:	@ 0x08176F3C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 40
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N14	, Gn3, v127
	.byte	W14
	.byte	FINE

	.align 2
	.global song113
song113:	@ 0x08176F4C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song113_1		@ track
