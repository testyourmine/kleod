	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song069_1
song069_1:	@ 0x08176564
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 50
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte	MOD	, 32
	.byte	BEND	, c_v-45
	.byte		TIE	, Ds4, v127
	.byte		TIE	, Fs4
	.byte	W08
	.byte	BEND	, c_v-45
	.byte	W03
	.byte		c_v-45
	.byte	W08
	.byte		c_v-45
	.byte	W03
	.byte		c_v-45
	.byte	W02
	.byte		c_v-44
	.byte	W04
	.byte		c_v-42
	.byte	W03
	.byte		c_v-41
	.byte	W03
	.byte		c_v-39
	.byte	W02
	.byte		c_v-37
	.byte	W02
	.byte		c_v-36
	.byte	W02
	.byte		c_v-34
	.byte	W02
	.byte		c_v-31
	.byte	W02
	.byte		c_v-30
	.byte	W02
	.byte		c_v-27
	.byte	W01
	.byte		c_v-26
	.byte	W02
	.byte		c_v-24
	.byte	W01
	.byte		c_v-23
	.byte	W01
	.byte		c_v-21
	.byte	W01
	.byte		c_v-20
	.byte	W01
	.byte		c_v-18
	.byte	W02
	.byte		c_v-16
	.byte	W02
	.byte		c_v-13
	.byte	W03
	.byte		c_v-10
	.byte	W03
	.byte		c_v-8
	.byte	W01
	.byte		c_v-7
	.byte	W03
	.byte		c_v-2
	.byte	W05
song069_1_1:
	.byte	W08
	.byte	BEND	, c_v+3
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+6
	.byte	W04
	.byte		c_v+8
	.byte	W01
	.byte		c_v+9
	.byte	W02
	.byte		c_v+10
	.byte	W03
	.byte		c_v+11
	.byte	W02
	.byte		c_v+12
	.byte	W02
	.byte	W03
	.byte		c_v+14
	.byte	W02
	.byte		c_v+15
	.byte	W06
	.byte		c_v+16
	.byte	W06
	.byte		c_v+18
	.byte	W03
	.byte		c_v+20
	.byte	W08
	.byte		c_v+19
	.byte	W04
	.byte		c_v+16
	.byte	W01
	.byte		c_v+13
	.byte	W02
	.byte		c_v+9
	.byte	W01
	.byte		c_v+6
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+2
	.byte	W01
	.byte		c_v
	.byte	W15
	.byte		c_v-3
	.byte	W01
	.byte		c_v-5
	.byte	W01
	.byte		c_v-8
	.byte	W02
	.byte		c_v-12
	.byte	W01
	.byte		c_v-13
	.byte	W01
	.byte		c_v-15
	.byte	W01
	.byte		c_v-17
	.byte	W02
	.byte		c_v-20
	.byte	W02
	.byte		c_v-23
	.byte	W02
	.byte		c_v-25
	.byte	W03
	.byte		c_v-29
	.byte	W02
	.byte		c_v-31
	.byte	W02
	.byte		c_v-32
	.byte	W01
	.byte		c_v-34
	.byte	W03
	.byte		c_v-36
	.byte	W01
	.byte		c_v-37
	.byte	W03
	.byte		c_v-41
	.byte	W02
	.byte		c_v-42
	.byte	W03
	.byte		c_v-45
	.byte	W03
	.byte		c_v-48
	.byte	W02
	.byte		c_v-49
	.byte	W03
	.byte		c_v-50
	.byte	W01
	.byte	W01
	.byte		c_v-48
	.byte	W05
	.byte		c_v-46
	.byte	W04
	.byte		c_v-42
	.byte	W02
	.byte		c_v-39
	.byte	W01
	.byte		c_v-35
	.byte	W02
	.byte		c_v-30
	.byte	W02
	.byte		c_v-24
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-17
	.byte	W02
	.byte		c_v-10
	.byte	W02
	.byte		c_v-6
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v
	.byte	W22
	.byte	GOTO	
		.word	song069_1_1
	.byte	W48
	.byte	W07
	.byte		EOT	, Fs4
	.byte	W02
	.byte			Ds4
	.byte	FINE

	.align 2
	.global song069
song069:	@ 0x08176634
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song069_1		@ track
