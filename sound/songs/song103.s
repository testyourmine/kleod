	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song103_1
song103_1:	@ 0x08176C7C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 5
	.byte	MODT	, 0
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte	MOD	, 97
	.byte		N14	, Gn1, v127
	.byte	W02
	.byte	BEND	, c_v-19
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v
	.byte	W02
	.byte		N21	, An1, v108
	.byte	W06
	.byte	BEND	, c_v-19
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte	MOD	, 0
	.byte	BEND	, c_v
	.byte	W04
	.byte	FINE

	.align 2
	.global song103
song103:	@ 0x08176CCC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song103_1		@ track
