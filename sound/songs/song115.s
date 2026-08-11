	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song115_1
song115_1:	@ 0x08176FB0
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 27
	.byte	MODT	, 0
	.byte	BENDR	, 20
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte	MOD	, 8
	.byte	W01
song115_1_1:
	.byte	BEND	, c_v
	.byte		TIE	, Gs3, v127
	.byte	W01
	.byte	BEND	, c_v-4
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-27
	.byte	W02
	.byte		c_v-30
	.byte	W01
	.byte		c_v-32
	.byte	W02
	.byte		c_v-34
	.byte	W01
	.byte		c_v-36
	.byte	W02
	.byte		c_v-37
	.byte	W04
	.byte		c_v-38
	.byte	W04
	.byte		c_v-37
	.byte	W04
	.byte		c_v-36
	.byte	W01
	.byte		c_v-34
	.byte	W02
	.byte		c_v-32
	.byte	W01
	.byte		c_v-30
	.byte	W02
	.byte		c_v-28
	.byte	W01
	.byte		c_v-27
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-19
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-14
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-9
	.byte	W01
	.byte		c_v-8
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+8
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+16
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+22
	.byte	W02
	.byte		c_v+26
	.byte	W01
	.byte		c_v+27
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+30
	.byte	W02
	.byte		c_v+32
	.byte	W01
	.byte		c_v+34
	.byte	W02
	.byte		c_v+36
	.byte	W01
	.byte		c_v+37
	.byte	W04
	.byte		c_v+38
	.byte	W05
	.byte		c_v+37
	.byte	W03
	.byte		c_v+36
	.byte	W02
	.byte		c_v+34
	.byte	W03
	.byte		c_v+30
	.byte	W01
	.byte		c_v+28
	.byte	W01
	.byte		c_v+27
	.byte	W01
	.byte		c_v+26
	.byte	W01
	.byte		c_v+24
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+19
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+14
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+9
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte	GOTO	
		.word	song115_1_1
	.byte	BEND	, c_v
	.byte	W07
	.byte	MOD	, 0
	.byte	W04
	.byte		EOT	, Gs3
	.byte	FINE

	.align 2
	.global song115
song115:	@ 0x08177060
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song115_1		@ track
