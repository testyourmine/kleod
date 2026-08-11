	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song132_1
song132_1:	@ 0x0817743C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 35
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v077
	.byte	BEND	, c_v-58
	.byte		N04	, Ds2, v092
	.byte	W04
	.byte	BEND	, c_v-56
	.byte		N04	, As2
	.byte	W04
	.byte			Gs2, v104
	.byte	W01
	.byte	BEND	, c_v-55
	.byte	W03
	.byte		N04	, Fs2, v088
	.byte	W03
	.byte	BEND	, c_v-54
	.byte	W01
	.byte		N04	, Ds2, v084
	.byte	W03
	.byte	BEND	, c_v-52
	.byte	W01
	.byte		N04	, Cs3, v100
	.byte	W02
	.byte	BEND	, c_v-50
	.byte	W01
	.byte		c_v-49
	.byte	W01
	.byte		N04	, Fs2, v096
	.byte	W01
	.byte	BEND	, c_v-48
	.byte	W01
	.byte		c_v-46
	.byte	W02
	.byte		c_v-44
	.byte		N04	, Ds2, v092
	.byte	W01
	.byte	BEND	, c_v-43
	.byte	W01
	.byte		c_v-42
	.byte	W01
	.byte		c_v-40
	.byte	W01
	.byte		c_v-39
	.byte		N04	, Gs2, v100
	.byte	W01
	.byte	BEND	, c_v-38
	.byte	W01
	.byte		c_v-36
	.byte	W01
	.byte		c_v-34
	.byte	W01
	.byte		c_v-33
	.byte		N04	, Fs2, v092
	.byte	W01
	.byte	BEND	, c_v-32
	.byte	W01
	.byte		c_v-30
	.byte	W01
	.byte		c_v-28
	.byte	W01
	.byte		c_v-27
	.byte		N04	, Cs3, v100
	.byte	W01
	.byte	BEND	, c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-21
	.byte		N04	, Gs2, v092
	.byte	W01
	.byte	BEND	, c_v-20
	.byte	W01
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W01
	.byte		c_v-14
	.byte		N04	, Fs2, v096
	.byte	W01
	.byte	BEND	, c_v-12
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-8
	.byte		N04	, Ds2, v092
	.byte	W01
	.byte	BEND	, c_v-5
	.byte	W01
	.byte		c_v-4
	.byte	W01
	.byte		c_v-2
	.byte	W01
	.byte		c_v
	.byte		N04	, As2, v084
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v+4
	.byte	W01
	.byte		c_v+5
	.byte	W01
	.byte		c_v+6
	.byte		N04	, Cs3, v096
	.byte	W01
	.byte	BEND	, c_v+10
	.byte	W01
	.byte		c_v+11
	.byte	W01
	.byte		c_v+12
	.byte	W01
	.byte		c_v+14
	.byte		N04	, Fs2, v100
	.byte	W01
	.byte	BEND	, c_v+16
	.byte	W01
	.byte		c_v+18
	.byte	W01
	.byte		c_v+20
	.byte	W01
	.byte		c_v+21
	.byte		N04	, Ds2, v104
	.byte	W01
	.byte	BEND	, c_v+24
	.byte	W01
	.byte		c_v+26
	.byte	W01
	.byte		c_v+27
	.byte	W01
	.byte		c_v+28
	.byte		N04	, Gs2, v096
	.byte	W01
	.byte	BEND	, c_v+32
	.byte	W01
	.byte		c_v+33
	.byte	W01
	.byte		c_v+34
	.byte	W01
	.byte		c_v+36
	.byte		N04	, As2
	.byte	W01
	.byte	BEND	, c_v+39
	.byte	W01
	.byte		c_v+40
	.byte	W01
	.byte		c_v+42
	.byte	W01
	.byte		c_v+43
	.byte		N04	, Cs3
	.byte	W01
	.byte	BEND	, c_v+46
	.byte	W01
	.byte		c_v+48
	.byte	W01
	.byte		c_v+49
	.byte	W01
	.byte		c_v+50
	.byte		N04	, Ds2, v112
	.byte	W01
	.byte	BEND	, c_v+54
	.byte	W01
	.byte		c_v+55
	.byte	W01
	.byte		c_v+56
	.byte	W01
	.byte		c_v+60
	.byte		N04	, Fs2, v096
	.byte	W01
	.byte	BEND	, c_v+61
	.byte	W04
	.byte		N04	, Ds2
	.byte	W03
	.byte	W01
	.byte			Fs2, v080
	.byte	W05
	.byte			Ds2, v068
	.byte	W04
	.byte			Fs2, v052
	.byte	W04
	.byte			Ds2, v040
	.byte	W04
	.byte			Fs2, v028
	.byte	W05
	.byte	BEND	, c_v
	.byte	FINE

	.align 2
	.global song132
song132:	@ 0x0817754C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song132_1		@ track
