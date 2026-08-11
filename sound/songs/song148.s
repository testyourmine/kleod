	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song148_1
song148_1:	@ 0x08188908
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 43
	.byte	MODT	, 0
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v026
	.byte		TIE	, An6, v080
	.byte	W05
	.byte	MOD	, 18
	.byte	W02
	.byte	BEND	, c_v-2
	.byte	W02
	.byte		c_v-3
	.byte	W04
	.byte		c_v-4
	.byte	W07
	.byte		c_v-6
	.byte	W04
	.byte		c_v-8
	.byte	W06
	.byte		c_v-10
	.byte	W04
	.byte		c_v-11
	.byte	W07
	.byte		c_v-13
	.byte	W07
	.byte		c_v-16
	.byte	W07
	.byte		c_v-18
	.byte	W07
	.byte		c_v-20
	.byte	W04
	.byte		c_v-22
	.byte	W07
	.byte		c_v-24
	.byte	W03
	.byte		c_v-25
	.byte	W07
	.byte		c_v-27
	.byte	W07
	.byte		c_v-30
	.byte	W06
	.byte	W02
	.byte		c_v-32
	.byte	W03
	.byte		c_v-33
	.byte	W08
	.byte		c_v-36
	.byte	W07
	.byte		c_v-38
	.byte	W07
	.byte		c_v-40
	.byte	W08
	.byte		c_v-42
	.byte	W03
	.byte		c_v-44
	.byte	W08
	.byte		c_v-46
	.byte	W07
	.byte		c_v-48
	.byte	W04
	.byte		c_v-50
	.byte	W07
	.byte		c_v-52
	.byte	W08
	.byte		c_v-54
	.byte	W07
	.byte		c_v-56
	.byte	W04
	.byte		c_v-58
	.byte	W07
	.byte		c_v-60
	.byte	W04
	.byte		c_v-61
	.byte	W02
	.byte		EOT	
	.byte	MOD	, 0
	.byte	FINE

	.align 2
	.global song148
song148:	@ 0x08188964
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song148_1		@ track
