	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song044_1
song044_1:	@ 0x0817609C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 13
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte	MOD	, 127
	.byte		N06	, Ds3, v127
	.byte	W08
	.byte	MOD	, 0
	.byte	FINE

	.align 2
	.global song044
song044:	@ 0x081760B4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song044_1		@ track
