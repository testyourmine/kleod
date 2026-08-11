	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song164_1
song164_1:	@ 0x08188DB0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 5
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte		N02	, An1, v127
	.byte	W03
	.byte		N03	, Dn1
	.byte	W03
	.byte		N04	, Cn1, v060
	.byte	W05
	.byte	BEND	, c_v+23
	.byte	W04
	.byte		c_v
	.byte	FINE

	.align 2
	.global song164
song164:	@ 0x08188DCC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song164_1		@ track
