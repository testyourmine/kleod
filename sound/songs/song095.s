	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song095_1
song095_1:	@ 0x08176AD4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 38
	.byte	BENDR	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N07	, Dn4, v127
	.byte	W02
	.byte	BEND	, c_v-10
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-61
	.byte	W02
	.byte		c_v-58
	.byte	W01
	.byte		c_v-50
	.byte	W02
	.byte		c_v-15
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song095
song095:	@ 0x08176AF8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song095_1		@ track
