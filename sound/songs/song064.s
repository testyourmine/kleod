	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song064_1
song064_1:	@ 0x08176428
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 20
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N09	, Cn3, v127
	.byte	W12
	.byte			Bn2, v108
	.byte	W13
	.byte		N08	, Cs3, v088
	.byte	W12
	.byte		N09	, Bn2, v068
	.byte	W12
	.byte			Cn3, v048
	.byte	W13
	.byte			As2, v028
	.byte	W09
	.byte	FINE

	.align 2
	.global song064
song064:	@ 0x08176448
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song064_1		@ track
