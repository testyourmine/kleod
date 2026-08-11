	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song159_1
song159_1:	@ 0x08188CB4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 64
	.byte	BENDR	, 20
	.byte	PAN	, c_v
	.byte	VOL	, v067
	.byte	BEND	, c_v-64
	.byte	W01
	.byte		N08	, An4, v127
	.byte	W04
	.byte	BEND	, c_v-58
	.byte	W01
	.byte		c_v-53
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song159
song159:	@ 0x08188CD8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song159_1		@ track
