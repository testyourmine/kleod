	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song083_1
song083_1:	@ 0x0817685C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 33
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N03	, Fn2, v127
	.byte	W03
	.byte		N02	, Fn2, v060
	.byte	W03
	.byte		N03	, En2, v127
	.byte	W03
	.byte		N02	, En2, v060
	.byte	W03
	.byte			En2, v028
	.byte	W02
	.byte	FINE

	.align 2
	.global song083
song083:	@ 0x0817687C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song083_1		@ track
