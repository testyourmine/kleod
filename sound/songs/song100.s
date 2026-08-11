	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song100_1
song100_1:	@ 0x08176BE8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 47
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N92	, Cn3, v127
	.byte	W92
	.byte	W03
	.byte	FINE

	.align 2
	.global song100
song100:	@ 0x08176BF8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song100_1		@ track
