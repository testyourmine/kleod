	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song129_1
song129_1:	@ 0x0817734C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 77
	.byte	VOICE	, 14
	.byte	PAN	, c_v
	.byte	VOL	, v073
	.byte		N05	, An2, v127
	.byte	W05
	.byte			As2
	.byte	W05
	.byte			Bn2
	.byte	W05
	.byte			Gn2
	.byte	W05
	.byte			Gs2
	.byte	W05
	.byte			Fn2
	.byte	W05
	.byte			Fs2
	.byte	W05
	.byte	FINE

	.align 2
	.global song129
song129:	@ 0x08177368
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song129_1		@ track
