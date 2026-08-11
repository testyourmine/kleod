	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song020_1
song020_1:	@ 0x081728B4
	.byte	KEYSH	, 0
song020_1_4:
	.byte	TEMPO	, 39
	.byte	VOICE	, 96
	.byte	PAN	, c_v+20
	.byte	VOL	, v058
	.byte		N06	, An4, v120
	.byte	W12
	.byte			Gs4, v088
	.byte	W12
	.byte			An4, v108
	.byte	W06
	.byte			An3, v100
	.byte	W06
	.byte			Bn4, v120
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gs4, v100
	.byte	W12
	.byte		N04	, Gn4
	.byte	W04
	.byte			Gs4, v068
	.byte	W04
	.byte			Gn4, v076
	.byte	W04
	.byte		N06	, Fs4, v072
	.byte	W12
	.byte			Fn4, v120
	.byte	W12
	.byte			En4, v076
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Ds4, v092
	.byte	W12
	.byte		N06	, Dn4, v120
	.byte	W12
	.byte			Cs4, v112
	.byte	W12
	.byte			Cn4, v120
	.byte	W12
	.byte		N04	, Bn3, v096
	.byte	W04
	.byte			Cn4, v116
	.byte	W04
	.byte			Bn3, v088
	.byte	W04
	.byte		N12	, As3, v104
	.byte	W12
	.byte		N06	, An4, v120
	.byte	W12
	.byte			Gs4, v088
	.byte	W12
	.byte			An4, v108
	.byte	W06
	.byte			An3, v100
	.byte	W06
	.byte			Bn4, v120
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gs4, v100
	.byte	W12
	.byte		N04	, Gn4
	.byte	W04
	.byte			Gs4, v068
	.byte	W04
	.byte			Gn4, v076
	.byte	W04
	.byte		N06	, Fs4, v072
	.byte	W12
	.byte			Fn4, v120
	.byte	W12
	.byte			En4, v076
	.byte	W12
	.byte		N04	, Ds4, v096
	.byte	W04
	.byte			En4, v116
	.byte	W04
	.byte			Ds4, v088
	.byte	W04
	.byte		N06	, Dn4, v120
	.byte	W12
	.byte			Cs4, v112
	.byte	W12
	.byte			Cn4, v120
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Bn3, v104
	.byte	W12
	.byte		N06	, Cn4, v120
	.byte	W12
song020_1_1:
	.byte		N05	, Cs4, v100
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Dn4, v100
	.byte	W06
	.byte			Dn4, v032
	.byte	W06
	.byte			An4, v100
	.byte	W06
	.byte			An4, v052
	.byte	W06
	.byte			An4, v032
	.byte	W06
	.byte			Cs4, v100
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Dn4, v032
	.byte	W06
	.byte			An4, v100
	.byte	W06
	.byte			An4, v052
	.byte	W06
	.byte			An4, v032
	.byte	W06
	.byte			Dn4, v100
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			An3, v032
	.byte	W06
	.byte	PEND
song020_1_2:
	.byte		N05	, Cn4, v100
	.byte	W06
	.byte			Cn4, v032
	.byte	W06
	.byte			Cs4, v100
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Gs4, v100
	.byte	W06
	.byte			Gs4, v052
	.byte	W06
	.byte			Gs4, v032
	.byte	W06
	.byte			Cn4, v100
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Cs4, v032
	.byte	W06
	.byte			Gs4, v100
	.byte	W06
	.byte			Gs4, v052
	.byte	W06
	.byte			Gs4, v032
	.byte	W06
	.byte			Cs4, v100
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			Gs3, v032
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song020_1_1
song020_1_3:
	.byte		N05	, En4, v100
	.byte	W06
	.byte			En4, v032
	.byte	W06
	.byte			Fn4, v100
	.byte	W06
	.byte			Fn4, v032
	.byte	W06
	.byte			Cn5, v100
	.byte	W06
	.byte			Cn5, v052
	.byte	W06
	.byte			Cn5, v032
	.byte	W06
	.byte			En4, v100
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fn4, v032
	.byte	W06
	.byte			Cn5, v100
	.byte	W06
	.byte			Cn5, v052
	.byte	W06
	.byte			Cn5, v032
	.byte	W06
	.byte			Fn4, v100
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Cn4, v032
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song020_1_1
	.byte	PATT	
		.word	song020_1_2
	.byte	PATT	
		.word	song020_1_1
	.byte	PATT	
		.word	song020_1_3
	.byte	GOTO	
		.word	song020_1_4
	.byte	FINE

	@********************** Track  2 **********************@

	.global song020_2
song020_2:	@ 0x081729F9
	.byte	KEYSH	, 0
song020_2_4:
	.byte	VOICE	, 99
	.byte	PAN	, c_v-20
	.byte	VOL	, v043
	.byte		N06	, An4, v120
	.byte	W12
	.byte			Gs4, v088
	.byte	W12
	.byte			An4, v108
	.byte	W06
	.byte			An3, v100
	.byte	W06
	.byte			Bn4, v120
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gs4, v100
	.byte	W12
	.byte		N04	, Gn4
	.byte	W04
	.byte			Gs4, v068
	.byte	W04
	.byte			Gn4, v076
	.byte	W04
	.byte		N06	, Fs4, v072
	.byte	W12
	.byte			Fn4, v120
	.byte	W12
	.byte			En4, v076
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Ds4, v092
	.byte	W12
	.byte		N06	, Dn4, v120
	.byte	W12
	.byte			Cs4, v112
	.byte	W12
	.byte			Cn4, v120
	.byte	W12
	.byte		N04	, Bn3, v096
	.byte	W04
	.byte			Cn4, v116
	.byte	W04
	.byte			Bn3, v088
	.byte	W04
	.byte		N12	, As3, v104
	.byte	W12
	.byte		N06	, An4, v120
	.byte	W12
	.byte			Gs4, v088
	.byte	W12
	.byte			An4, v108
	.byte	W06
	.byte			An3, v100
	.byte	W06
	.byte			Bn4, v120
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gs4, v100
	.byte	W12
	.byte		N04	, Gn4
	.byte	W04
	.byte			Gs4, v068
	.byte	W04
	.byte			Gn4, v076
	.byte	W04
	.byte		N06	, Fs4, v072
	.byte	W12
	.byte			Fn4, v120
	.byte	W12
	.byte			En4, v076
	.byte	W12
	.byte		N04	, Ds4, v096
	.byte	W04
	.byte			En4, v116
	.byte	W04
	.byte			Ds4, v088
	.byte	W04
	.byte		N06	, Dn4, v120
	.byte	W12
	.byte			Cs4, v112
	.byte	W12
	.byte			Cn4, v120
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N12	, Bn3, v104
	.byte	W12
	.byte		N06	, Cn4, v120
	.byte	W11
	.byte	VOICE	, 100
	.byte	VOL	, v051
	.byte	PAN	, c_v-20
	.byte	W01
song020_2_1:
	.byte		N03	, Bn2, v080
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v064
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v056
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v048
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v040
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v036
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v032
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v028
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v024
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v032
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v044
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v060
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v084
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte			Bn2, v116
	.byte		N03	, Fs3
	.byte		N03	, Cs4
	.byte	W06
	.byte	PEND
song020_2_2:
	.byte		N03	, As2, v080
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v064
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v056
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v048
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v040
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v036
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v032
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v028
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v024
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v032
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v044
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v060
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v084
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte			As2, v116
	.byte		N03	, Fn3
	.byte		N03	, Cn4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song020_2_1
song020_2_3:
	.byte		N03	, Dn3, v080
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v064
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v056
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v048
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v040
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v036
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v032
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v028
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v024
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v032
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v044
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v060
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v084
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte			Dn3, v116
	.byte		N03	, An3
	.byte		N03	, En4
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song020_2_1
	.byte	PATT	
		.word	song020_2_2
	.byte	PATT	
		.word	song020_2_1
	.byte	PATT	
		.word	song020_2_3
	.byte	GOTO	
		.word	song020_2_4
	.byte	FINE

	@********************** Track  3 **********************@

	.global song020_3
song020_3:	@ 0x08172C03
	.byte	KEYSH	, 0
song020_3_2:
	.byte	VOICE	, 97
	.byte	PAN	, c_v-15
	.byte	VOL	, v066
	.byte	W24
	.byte		N06	, En4, v092
	.byte	W48
	.byte		N06	
	.byte	W24
song020_3_1:
	.byte	W24
	.byte		N06	, Fn4, v080
	.byte	W48
	.byte			Fs4, v092
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			En4
	.byte	W48
	.byte		N06	
	.byte	W24
	.byte	PATT	
		.word	song020_3_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song020_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song020_4
song020_4:	@ 0x08172C33
	.byte	KEYSH	, 0
song020_4_2:
	.byte	VOICE	, 97
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W24
	.byte		N06	, Bn3, v088
	.byte	W48
	.byte			Bn3, v076
	.byte	W24
song020_4_1:
	.byte	W24
	.byte		N06	, Cn4, v080
	.byte	W48
	.byte			Cs4, v088
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			Bn3
	.byte	W48
	.byte			Bn3, v076
	.byte	W24
	.byte	PATT	
		.word	song020_4_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song020_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song020_5
song020_5:	@ 0x08172C65
	.byte	KEYSH	, 0
song020_5_2:
	.byte	VOICE	, 97
	.byte	PAN	, c_v+15
	.byte	VOL	, v066
	.byte	W24
	.byte		N06	, Fs3, v092
	.byte	W48
	.byte			Fs3, v088
	.byte	W24
song020_5_1:
	.byte	W24
	.byte		N06	, Gn3, v088
	.byte	W48
	.byte			Gs3, v084
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte			Fs3, v092
	.byte	W48
	.byte			Fs3, v088
	.byte	W24
	.byte	PATT	
		.word	song020_5_1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song020_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song020_6
song020_6:	@ 0x08172C98
	.byte	KEYSH	, 0
song020_6_2:
	.byte	VOICE	, 98
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte	W24
	.byte		N06	, An5, v100
	.byte	W12
	.byte			An4
	.byte	W36
	.byte			An5
	.byte	W12
	.byte			An4
	.byte	W12
song020_6_1:
	.byte	W24
	.byte		N06	, An5, v100
	.byte	W12
	.byte			An4
	.byte	W36
	.byte			An5
	.byte	W12
	.byte			An4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song020_6_1
	.byte	W24
	.byte		N06	, An5, v100
	.byte	W12
	.byte			An4
	.byte	W36
	.byte			An5
	.byte	W12
	.byte			An4
	.byte	W11
	.byte	VOICE	, 99
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song020_6_2
	.byte	FINE

	@********************** Track  7 **********************@

	.global song020_7
song020_7:	@ 0x08172CD8
	.byte	KEYSH	, 0
song020_7_5:
	.byte	VOICE	, 101
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte		N11	, Bn1, v072
	.byte	W84
	.byte		N12	
	.byte	W12
song020_7_1:
	.byte		N06	, Fn2, v072
	.byte	W48
	.byte		N12	, Fs2
	.byte	W36
	.byte			Fn1
	.byte	W12
	.byte	PEND
	.byte		N06	, Bn1
	.byte	W84
	.byte		N12	
	.byte	W12
	.byte	PATT	
		.word	song020_7_1
	.byte		N32	, Dn2, v076
	.byte	W48
	.byte		N44	, Dn3
	.byte	W48
song020_7_2:
	.byte		N44	, Cs2, v072
	.byte	W48
	.byte			Cs3, v076
	.byte	W48
	.byte	PEND
song020_7_3:
	.byte		N44	, Dn2, v076
	.byte	W48
	.byte			Dn3, v072
	.byte	W48
	.byte	PEND
song020_7_4:
	.byte		N44	, Fn2, v072
	.byte	W48
	.byte		N42	, Fn3, v076
	.byte	W48
	.byte	PEND
	.byte		N48	, Dn2
	.byte	W48
	.byte			Dn3
	.byte	W48
	.byte	PATT	
		.word	song020_7_2
	.byte	PATT	
		.word	song020_7_3
	.byte	PATT	
		.word	song020_7_4
	.byte	GOTO	
		.word	song020_7_5
	.byte	FINE

	.align 2
	.global song020
song020:	@ 0x08172D34
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song020_1		@ track
	.word	song020_2		@ track
	.word	song020_3		@ track
	.word	song020_4		@ track
	.word	song020_5		@ track
	.word	song020_6		@ track
	.word	song020_7		@ track
