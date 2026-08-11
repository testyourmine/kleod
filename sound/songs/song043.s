	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song043_1
song043_1:	@ 0x08176060
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 1
	.byte	BENDR	, 3
	.byte	PAN	, c_v
	.byte	VOL	, v102
	.byte		N07	, Dn2, v108
	.byte	W08
	.byte	VOICE	, 7
	.byte	VOL	, v035
	.byte	BEND	, c_v-59
	.byte	W01
	.byte		N09	, Ds5, v127
	.byte	W01
	.byte	BEND	, c_v-50
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v+10
	.byte	W01
	.byte		c_v+21
	.byte	W01
	.byte		c_v+39
	.byte	W01
	.byte		c_v
	.byte	FINE

	.align 2
	.global song043
song043:	@ 0x08176090
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song043_1		@ track
