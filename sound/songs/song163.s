	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song163_1
song163_1:	@ 0x08188D8C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v122
	.byte		N03	, Gs1, v127
	.byte	W03
	.byte		N22	, Cs1, v100
	.byte	W22
	.byte	FINE

	.align 2
	.global song163
song163:	@ 0x08188DA4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song163_1		@ track
