	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song087_1
song087_1:	@ 0x0817691C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 34
	.byte	BENDR	, 22
	.byte	PAN	, c_v
	.byte	VOL	, v080
	.byte		N44	, Cn3, v112
	.byte	W03
	.byte	BEND	, c_v+4
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+26
	.byte	W01
	.byte		c_v+26
	.byte	W01
	.byte		c_v+22
	.byte	W01
	.byte		c_v+17
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v
	.byte	W02
	.byte		c_v-2
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-26
	.byte	W24
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song087
song087:	@ 0x08176954
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song087_1		@ track
