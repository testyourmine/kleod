	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song117_1
song117_1:	@ 0x0817708C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 40
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v077
	.byte	MOD	, 100
	.byte		N18	, En3, v108
	.byte	W18
	.byte	FINE

	.align 2
	.global song117
song117:	@ 0x081770A0
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song117_1		@ track
