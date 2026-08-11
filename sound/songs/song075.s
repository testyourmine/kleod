	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song075_1
song075_1:	@ 0x081766E4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N06	, Fs2, v108
	.byte	W07
	.byte		N24	, Ds2, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song075
song075:	@ 0x081766F8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song075_1		@ track
