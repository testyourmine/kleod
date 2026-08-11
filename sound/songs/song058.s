	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song058_1
song058_1:	@ 0x0817632C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte		N22	, Dn2, v127
	.byte	W22
	.byte		N30	, Ds2, v056
	.byte	W30
	.byte	W01
	.byte	FINE

	.align 2
	.global song058
song058:	@ 0x08176340
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song058_1		@ track
