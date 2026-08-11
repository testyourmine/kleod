	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song151_1
song151_1:	@ 0x08188A28
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 58
	.byte	MODT	, 0
	.byte	BENDR	, 24
	.byte	PAN	, c_v
	.byte	VOL	, v060
	.byte		N48	, Cn3, v080
	.byte	W01
	.byte	MOD	, 0
	.byte	W02
	.byte	BEND	, c_v
	.byte	W02
	.byte		c_v+3
	.byte	W01
	.byte		c_v+4
	.byte	W03
	.byte		c_v+7
	.byte	W01
	.byte		c_v+8
	.byte	W03
	.byte		c_v+10
	.byte	W03
	.byte		c_v+11
	.byte	W05
	.byte		c_v+10
	.byte	W04
	.byte		c_v+8
	.byte	W02
	.byte		c_v+7
	.byte	W04
	.byte		c_v+4
	.byte	W03
	.byte		c_v+2
	.byte	W02
	.byte		c_v
	.byte	W02
	.byte		c_v-2
	.byte	W02
	.byte		c_v-4
	.byte	W02
	.byte		c_v-7
	.byte	W02
	.byte		c_v-8
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-11
	.byte	W11
	.byte		c_v
	.byte	FINE

	.align 2
	.global song151
song151:	@ 0x08188A68
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song151_1		@ track
