	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song040_1
song040_1:	@ 0x08176000
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 5
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte	W01
	.byte		N21	, Cn3, v127
	.byte	W21
	.byte	FINE

	.align 2
	.global song040
song040:	@ 0x08176010
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song040_1		@ track
