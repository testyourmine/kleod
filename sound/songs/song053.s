	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song053_1
song053_1:	@ 0x08176224
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	VOICE	, 28
	.byte	PAN	, c_v
	.byte	VOL	, v105
	.byte		N03	, Dn3, v127
	.byte	W03
	.byte			Fs3
	.byte	W03
	.byte			An3
	.byte	W03
	.byte			Gn3
	.byte	W03
	.byte			As3
	.byte	W02
	.byte			Cs4
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte			An3, v084
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte			An3, v036
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte	FINE

	.align 2
	.global song053
song053:	@ 0x0817624C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song053_1		@ track
