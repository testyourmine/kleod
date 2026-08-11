	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song063_1
song063_1:	@ 0x081763F4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	BENDR	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v067
	.byte		N03	, Cn3, v127
	.byte	W03
	.byte			An3
	.byte	W01
	.byte	BEND	, c_v-2
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-23
	.byte		N05	, Fn3
	.byte	W01
	.byte	BEND	, c_v-40
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-57
	.byte	W02
	.byte		c_v-64
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song063
song063:	@ 0x0817641C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song063_1		@ track
