	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song067_1
song067_1:	@ 0x081764D8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 11
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N05	, Gs0, v127
	.byte	W06
	.byte	VOICE	, 19
	.byte	VOL	, v110
	.byte		N06	, Dn3, v080
	.byte	W06
	.byte	BEND	, c_v
	.byte	W03
	.byte		c_v-3
	.byte	W01
	.byte		N06	, Dn3, v052
	.byte	W02
	.byte	BEND	, c_v-4
	.byte	W03
	.byte		c_v-8
	.byte	W03
	.byte		c_v-12
	.byte	W01
	.byte		N06	, Dn3, v032
	.byte	W02
	.byte	BEND	, c_v-18
	.byte	W03
	.byte		c_v-26
	.byte	W01
	.byte	FINE

	.align 2
	.global song067
song067:	@ 0x0817650C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song067_1		@ track
