	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song074_1
song074_1:	@ 0x081766C0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 15
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N05	, Cn6, v127
	.byte	W06
	.byte			An5
	.byte	W06
	.byte			Cn6
	.byte	W06
	.byte		N44	, An5
	.byte	W44
	.byte	W03
	.byte	FINE

	.align 2
	.global song074
song074:	@ 0x081766D8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song074_1		@ track
