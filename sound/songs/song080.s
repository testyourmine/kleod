	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song080_1
song080_1:	@ 0x081767F8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 11
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N04	, Gn1, v124
	.byte	W04
	.byte		N06	, En1, v120
	.byte	W14
	.byte			En1, v088
	.byte	W18
	.byte		N04	, Bn1, v116
	.byte	W05
	.byte		N06	, Fs1, v088
	.byte	W06
	.byte	FINE

	.align 2
	.global song080
song080:	@ 0x08176818
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song080_1		@ track
