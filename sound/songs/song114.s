	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song114_1
song114_1:	@ 0x08176F58
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 41
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte		N05	, En4, v104
	.byte	W06
	.byte		N06	, Bn3, v124
	.byte	W06
	.byte		N48	, En3, v104
	.byte	W03
	.byte	BEND	, c_v-2
	.byte	W01
	.byte		c_v-6
	.byte	W01
	.byte		c_v-7
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-17
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-31
	.byte	W01
	.byte		c_v-33
	.byte	W01
	.byte		c_v-39
	.byte	W01
	.byte		c_v-41
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-47
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-52
	.byte	W01
	.byte		c_v-54
	.byte	W01
	.byte		c_v-57
	.byte	W01
	.byte		c_v-58
	.byte	W01
	.byte		c_v-60
	.byte	W01
	.byte		c_v-61
	.byte	W01
	.byte		c_v-63
	.byte	W01
	.byte		c_v-64
	.byte	W23
	.byte		c_v
	.byte	FINE

	.align 2
	.global song114
song114:	@ 0x08176FA4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song114_1		@ track
