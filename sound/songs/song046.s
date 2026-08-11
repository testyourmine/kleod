	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song046_1
song046_1:	@ 0x081760E0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 3
	.byte	PAN	, c_v
	.byte	VOL	, v117
	.byte	W01
	.byte		N06	, Cn3, v127
	.byte	W06
	.byte	FINE

	.align 2
	.global song046
song046:	@ 0x081760F0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	7		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song046_1		@ track
