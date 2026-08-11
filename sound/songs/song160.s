	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song160_1
song160_1:	@ 0x08188CE4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 64
	.byte	BENDR	, 19
	.byte	PAN	, c_v
	.byte	VOL	, v054
	.byte	W02
	.byte		N10	, An4, v127
	.byte	W03
	.byte	BEND	, c_v-4
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-57
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-51
	.byte	W01
	.byte		c_v-47
	.byte	W28
	.byte		c_v
	.byte	FINE

	.align 2
	.global song160
song160:	@ 0x08188D08
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song160_1		@ track
