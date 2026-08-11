	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song062_1
song062_1:	@ 0x081763D0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 19
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v048
	.byte	MOD	, 1
	.byte		N06	, Cn3, v127
	.byte	W07
	.byte	MOD	, 0
	.byte	FINE

	.align 2
	.global song062
song062:	@ 0x081763E8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song062_1		@ track
