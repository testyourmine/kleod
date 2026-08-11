	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song161_1
song161_1:	@ 0x08188D14
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 28
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v098
	.byte	BEND	, c_v-64
	.byte	W01
	.byte		N04	, Fn2, v127
	.byte	W04
	.byte	BEND	, c_v-62
	.byte		N13	, An2, v108
	.byte	W01
	.byte	BEND	, c_v-51
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+32
	.byte	W01
	.byte		c_v+45
	.byte	W01
	.byte		c_v+54
	.byte	W01
	.byte		c_v+58
	.byte	W01
	.byte		c_v+60
	.byte	W07
	.byte		c_v
	.byte	FINE

	.align 2
	.global song161
song161:	@ 0x08188D48
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song161_1		@ track
