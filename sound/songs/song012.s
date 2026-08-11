	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song012_1
song012_1:	@ 0x08170DF8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 90
	.byte	VOICE	, 34
	.byte	MODT	, 0
	.byte	PAN	, c_v-10
	.byte	VOL	, v081
	.byte	W96
	.byte	W24
song012_1_3:
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song012_1_1:
	.byte	W24
	.byte		N15	, Gs4, v080
	.byte	W18
	.byte		N05	, Cs5
	.byte	W06
	.byte		N11	, Gs4
	.byte	W15
	.byte		N24	
	.byte	W10
	.byte	MOD	, 3
	.byte	W14
	.byte		0
	.byte	W03
	.byte		N06	, Fs4
	.byte	W06
	.byte	PEND
	.byte		N15	, Fn4
	.byte	W18
	.byte		N06	, Fs4
	.byte	W06
	.byte		N15	, Fn4
	.byte	W18
	.byte		N08	, Cs4
	.byte	W30
	.byte			Cs4, v044
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song012_1_1
song012_1_2:
	.byte		N15	, Fn4, v080
	.byte	W18
	.byte		N06	, Fs4
	.byte	W06
	.byte		N18	, Fn4
	.byte	W18
	.byte		N06	, Fs4
	.byte	W24
	.byte			Gs4
	.byte	W30
	.byte	PEND
	.byte	W96
	.byte	W24
	.byte	VOICE	, 36
	.byte	W66
	.byte		N03	, As3
	.byte	W03
	.byte		N12	, Bn3
	.byte	W03
	.byte	W21
	.byte		N18	
	.byte	W18
	.byte		N06	, As3
	.byte	W24
	.byte			Gs3, v100
	.byte	W30
	.byte		N18	, Fs3, v080
	.byte	W03
	.byte	W15
	.byte		N06	, Gs3
	.byte	W80
	.byte	W01
	.byte	W09
	.byte		N36	, Fn3, v052
	.byte		N36	, Gs3, v080
	.byte	W09
	.byte	MOD	, 4
	.byte	W24
	.byte	W02
	.byte		0
	.byte	W01
	.byte		N18	, Ds3, v052
	.byte		N18	, Fs3, v080
	.byte	W18
	.byte		N03	, Cs3, v052
	.byte		N03	, Fn3, v080
	.byte	W06
	.byte		N18	, Ds3, v052
	.byte		N18	, Fs3, v080
	.byte	W18
	.byte		N03	, Cs3, v052
	.byte		N03	, Fn3, v080
	.byte	W09
	.byte	W90
	.byte			As3
	.byte	W03
	.byte		N12	, Bn3
	.byte	W03
	.byte	W21
	.byte		N18	
	.byte	W18
	.byte		N06	, As3
	.byte	W24
	.byte			Gs3
	.byte	W30
	.byte		N18	, Fs3
	.byte	W03
	.byte	W18
	.byte		N84	, Cs4
	.byte		N84	, Fn4, v048
	.byte	W44
	.byte	MOD	, 4
	.byte	W32
	.byte	W02
	.byte	W10
	.byte	VOICE	, 34
	.byte	MOD	, 0
	.byte	W02
	.byte		N04	, Cs4, v064
	.byte	W04
	.byte			Ds4, v068
	.byte	W04
	.byte			Fn4, v072
	.byte	W04
	.byte		N48	, Fn4, v048
	.byte		N48	, Gs4, v080
	.byte	W22
	.byte	MOD	, 3
	.byte	W24
	.byte	W03
	.byte		0
	.byte	W23
	.byte	W96
	.byte	PATT	
		.word	song012_1_1
	.byte		N15	, Fn4, v080
	.byte	W18
	.byte		N06	, Fs4
	.byte	W06
	.byte		N18	, Fn4
	.byte	W18
	.byte		N06	, Cs4
	.byte	W30
	.byte			Cs4, v044
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song012_1_1
	.byte	PATT	
		.word	song012_1_2
	.byte	W96
	.byte	W96
	.byte	W24
	.byte	GOTO	
		.word	song012_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song012_2
song012_2:	@ 0x08170EF5
	.byte	KEYSH	, 0
	.byte	VOICE	, 30
	.byte	PAN	, c_v+10
	.byte	VOL	, v074
	.byte	W24
	.byte		N12	, Cs4, v100
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	W24
song012_2_7:
	.byte		N12	, Cs4, v100
	.byte	W36
	.byte		N12	
	.byte	W36
song012_2_2:
	.byte		N12	, En4, v100
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N12	, Cs4
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PEND
song012_2_1:
	.byte	W24
	.byte		N12	, Cs4, v100
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte	PEND
song012_2_3:
	.byte		N12	, Gs3, v100
	.byte	W18
	.byte		N05	
	.byte	W06
	.byte		N12	, Cs4
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song012_2_1
	.byte	PATT	
		.word	song012_2_2
song012_2_4:
	.byte	W24
	.byte		N30	, Cs4, v100
	.byte	W36
	.byte		N06	, Cs4, v084
	.byte	W36
	.byte	PEND
song012_2_5:
	.byte	W24
	.byte		N12	, Cs4, v100
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song012_2_1
	.byte	PATT	
		.word	song012_2_2
	.byte	PATT	
		.word	song012_2_1
	.byte	PATT	
		.word	song012_2_3
	.byte	PATT	
		.word	song012_2_1
	.byte	PATT	
		.word	song012_2_2
	.byte	PATT	
		.word	song012_2_4
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song012_2_5
	.byte	PATT	
		.word	song012_2_1
song012_2_6:
	.byte		N12	, En4, v100
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte		N12	, Cs4
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song012_2_1
	.byte		N12	, Gs3, v100
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte		N12	, Cs4
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PATT	
		.word	song012_2_1
	.byte	PATT	
		.word	song012_2_6
	.byte	PATT	
		.word	song012_2_4
	.byte	PATT	
		.word	song012_2_5
	.byte	W24
	.byte	GOTO	
		.word	song012_2_7
	.byte	FINE

	@********************** Track  3 **********************@

	.global song012_3
song012_3:	@ 0x08170FB3
	.byte	KEYSH	, 0
	.byte	VOICE	, 31
	.byte	PAN	, c_v+20
	.byte	VOL	, v081
	.byte	W24
	.byte		N12	, Gs3, v092
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	W24
song012_3_8:
	.byte		N12	, Gs3, v092
	.byte	W36
	.byte		N12	
	.byte	W36
song012_3_1:
	.byte	W24
	.byte		N12	, Gs3, v092
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PEND
song012_3_2:
	.byte	W24
	.byte		N12	, Gs3, v092
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song012_3_1
	.byte	PATT	
		.word	song012_3_2
	.byte	PATT	
		.word	song012_3_1
song012_3_3:
	.byte	W24
	.byte		N30	, Gs3, v092
	.byte	W36
	.byte		N06	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song012_3_1
	.byte	PATT	
		.word	song012_3_2
	.byte	PATT	
		.word	song012_3_1
	.byte	PATT	
		.word	song012_3_2
	.byte	PATT	
		.word	song012_3_1
	.byte	PATT	
		.word	song012_3_2
	.byte	PATT	
		.word	song012_3_1
	.byte	PATT	
		.word	song012_3_3
	.byte	W24
	.byte	VOICE	, 35
	.byte	VOL	, v043
	.byte	PAN	, c_v-30
	.byte		N12	, Cs2, v096
	.byte	W48
	.byte		N12	
	.byte	W24
song012_3_4:
	.byte	W24
	.byte		N12	, Cs2, v096
	.byte	W36
	.byte		N12	
	.byte	W36
	.byte	PEND
song012_3_5:
	.byte		N12	, En2, v096
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte		N12	, Cs2
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song012_3_4
song012_3_6:
	.byte		N12	, Gs1, v096
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte		N12	, Cs2
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song012_3_4
	.byte	PATT	
		.word	song012_3_5
song012_3_7:
	.byte	W24
	.byte		N30	, Cs2, v096
	.byte	W36
	.byte		N06	, Cs2, v076
	.byte	W36
	.byte	PEND
	.byte	W24
	.byte		N12	, Cs2, v096
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	PATT	
		.word	song012_3_4
	.byte	PATT	
		.word	song012_3_5
	.byte	PATT	
		.word	song012_3_4
	.byte	PATT	
		.word	song012_3_6
	.byte	PATT	
		.word	song012_3_4
	.byte	PATT	
		.word	song012_3_5
	.byte	PATT	
		.word	song012_3_7
	.byte	W24
	.byte	VOICE	, 31
	.byte	PAN	, c_v+20
	.byte	VOL	, v081
	.byte		N12	, Gs3, v092
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	W24
	.byte	GOTO	
		.word	song012_3_8
	.byte	FINE

	@********************** Track  4 **********************@

	.global song012_4
song012_4:	@ 0x0817109C
	.byte	KEYSH	, 0
	.byte	VOICE	, 33
	.byte	PAN	, c_v-20
	.byte	VOL	, v058
	.byte	W42
	.byte		N09	, Gs2, v080
	.byte		N09	, Cs3
	.byte		N09	, Fn3
	.byte	W30
	.byte		N06	, Gs2, v072
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W24
	.byte	W24
song012_4_6:
	.byte		N06	, As2, v080
	.byte		N06	, Cs3
	.byte		N06	, Fs3
	.byte	W36
	.byte		N36	, Cs3
	.byte		N36	, Ds3
	.byte		N36	, Gs3
	.byte	W36
song012_4_1:
	.byte	W42
	.byte		N09	, Gs2, v080
	.byte		N09	, Cs3
	.byte		N09	, Fn3
	.byte	W30
	.byte		N06	, Gs2, v072
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W24
	.byte	PEND
song012_4_2:
	.byte	W24
	.byte		N06	, Fs2, v080
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W36
	.byte		N36	, Gs2
	.byte		N36	, Cn3
	.byte		N36	, Ds3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song012_4_1
song012_4_3:
	.byte	W24
	.byte		N06	, As2, v080
	.byte		N06	, Cs3
	.byte		N06	, Fs3
	.byte	W36
	.byte		N36	, Cs3
	.byte		N36	, Ds3
	.byte		N36	, Gs3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song012_4_1
	.byte	PATT	
		.word	song012_4_2
	.byte	PATT	
		.word	song012_4_1
	.byte	PATT	
		.word	song012_4_3
	.byte	PATT	
		.word	song012_4_1
	.byte	PATT	
		.word	song012_4_2
	.byte	PATT	
		.word	song012_4_1
	.byte	PATT	
		.word	song012_4_3
	.byte	PATT	
		.word	song012_4_1
	.byte	PATT	
		.word	song012_4_2
song012_4_4:
	.byte	W24
	.byte		N12	, Fn3, v080
	.byte		N12	, Gs3
	.byte	W48
	.byte			Fn3
	.byte		N12	, Gs3
	.byte	W24
	.byte	PEND
song012_4_5:
	.byte	W24
	.byte		N12	, Fn3, v080
	.byte		N12	, Gs3
	.byte	W36
	.byte			Fn3
	.byte		N12	, Gs3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song012_4_4
	.byte	PATT	
		.word	song012_4_5
	.byte	PATT	
		.word	song012_4_4
	.byte	PATT	
		.word	song012_4_5
	.byte	PATT	
		.word	song012_4_4
	.byte	W24
	.byte		N28	, Fn3, v080
	.byte		N28	, Gs3
	.byte	W36
	.byte		N06	, Fn3
	.byte		N06	, Gs3
	.byte	W36
	.byte	PATT	
		.word	song012_4_1
	.byte	PATT	
		.word	song012_4_3
	.byte	PATT	
		.word	song012_4_1
	.byte	PATT	
		.word	song012_4_2
	.byte	PATT	
		.word	song012_4_1
	.byte	PATT	
		.word	song012_4_3
	.byte	PATT	
		.word	song012_4_1
	.byte	W24
	.byte		N30	, Cs3, v080
	.byte		N30	, Fn3
	.byte		N30	, Gs3
	.byte	W36
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte		N06	, Gs3
	.byte	W36
	.byte	PATT	
		.word	song012_4_1
	.byte	W24
	.byte	GOTO	
		.word	song012_4_6
	.byte	FINE

	@********************** Track  5 **********************@

	.global song012_5
song012_5:	@ 0x081711AC
	.byte	KEYSH	, 0
	.byte	VOICE	, 32
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte	W24
	.byte		N30	, Cs3, v100
	.byte	W48
	.byte			Fn2
	.byte	W24
	.byte	W24
song012_5_6:
	.byte		N30	, Fs2, v100
	.byte	W48
	.byte			Gs2
	.byte	W24
song012_5_1:
	.byte	W24
	.byte		N30	, Cs3, v100
	.byte	W48
	.byte			Fn2
	.byte	W24
	.byte	PEND
song012_5_2:
	.byte	W24
	.byte		N30	, Fs2, v100
	.byte	W48
	.byte			Gs2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song012_5_1
	.byte	PATT	
		.word	song012_5_2
	.byte	PATT	
		.word	song012_5_1
	.byte	PATT	
		.word	song012_5_2
	.byte	W24
	.byte		N24	, Cs3, v100
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			Fn2
	.byte	W24
song012_5_3:
	.byte		N24	, Fn2, v100
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte			As2
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte	PEND
song012_5_4:
	.byte		N24	, Cn3, v100
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			Fn2
	.byte	W24
	.byte	PEND
song012_5_5:
	.byte		N24	, Fn2, v100
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte	PEND
	.byte		N24	
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte		N24	
	.byte	W24
	.byte			Fn2
	.byte	W24
	.byte	PATT	
		.word	song012_5_3
	.byte	PATT	
		.word	song012_5_4
	.byte	PATT	
		.word	song012_5_5
	.byte		N24	, Gs2, v100
	.byte	W24
	.byte		N30	, Cs3
	.byte	W48
	.byte			Fn2
	.byte	W24
	.byte	PATT	
		.word	song012_5_2
	.byte	PATT	
		.word	song012_5_1
	.byte	PATT	
		.word	song012_5_2
	.byte	PATT	
		.word	song012_5_1
	.byte	PATT	
		.word	song012_5_2
	.byte	PATT	
		.word	song012_5_1
	.byte	PATT	
		.word	song012_5_2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song012_5_1
	.byte	W24
	.byte	GOTO	
		.word	song012_5_6
	.byte	FINE

	@********************** Track  6 **********************@

	.global song012_6
song012_6:	@ 0x08171267
	.byte	KEYSH	, 0
	.byte	VOICE	, 28
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte		N07	, Cs1, v108
	.byte	W08
	.byte			Cs1, v092
	.byte	W08
	.byte			Cs1, v096
	.byte	W80
	.byte	W24
song012_6_5:
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N07	, Cs1, v056
	.byte	W08
	.byte			Cs1, v064
	.byte	W08
	.byte			Cs1, v072
	.byte	W32
	.byte		N12	, Bn2, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W18
	.byte		N06	, Cs1, v076
	.byte	W06
	.byte		N12	, Bn2, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W18
	.byte		N04	
	.byte	W06
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W18
	.byte		N06	, Cs1, v096
	.byte	W06
	.byte		N12	, Bn2, v080
	.byte	W24
	.byte		N12	
	.byte	W18
	.byte		N06	, Cs1, v096
	.byte	W06
	.byte		N12	, Bn2, v080
	.byte	W24
	.byte		N07	, Cs1, v088
	.byte	W08
	.byte			Cs1, v092
	.byte	W08
	.byte			Cs1, v100
	.byte	W08
	.byte		N12	, An2, v080
	.byte	W24
	.byte			Bn2
	.byte	W18
	.byte		N06	, Cs1, v096
	.byte	W06
	.byte		N12	, Bn2, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W18
	.byte		N06	, Cs1, v096
	.byte	W06
	.byte		N12	, Bn2, v080
	.byte	W24
	.byte		N12	
	.byte	W18
	.byte		N06	, Cs1, v096
	.byte	W06
	.byte		N12	, Bn2, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N04	
	.byte	W08
	.byte		N07	, Cs1, v088
	.byte	W08
	.byte			Cs1, v108
	.byte	W44
	.byte		N04	, Cs1, v068
	.byte	W04
	.byte			Cs1, v076
	.byte	W04
	.byte			Cs1, v088
	.byte	W04
	.byte		N08	, Cs1, v100
	.byte	W08
	.byte			Cs1, v088
	.byte	W08
	.byte			Cs1, v092
	.byte	W08
	.byte			Cs1, v112
	.byte	W08
	.byte			Cs1, v100
	.byte	W08
	.byte			Cs1, v104
	.byte	W32
	.byte		N09	, Cn1, v100
	.byte	W24
	.byte		N12	, Dn1, v112
	.byte	W24
song012_6_1:
	.byte	W18
	.byte		N05	, Cn1, v080
	.byte	W06
	.byte		N09	, Cn1, v100
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N12	, Dn1, v112
	.byte	W24
	.byte	PEND
song012_6_2:
	.byte	W24
	.byte		N09	, Cn1, v100
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N12	, Dn1, v112
	.byte	W24
	.byte	PEND
song012_6_3:
	.byte	W18
	.byte		N05	, Cn1, v080
	.byte	W06
	.byte		N09	, Cn1, v100
	.byte	W18
	.byte		N06	, Ds1, v116
	.byte	W06
	.byte		N09	, Cn1, v100
	.byte	W24
	.byte		N12	, Dn1, v112
	.byte	W24
	.byte	PEND
song012_6_4:
	.byte		N06	, Cn1, v100
	.byte	W18
	.byte		N05	, Cn1, v080
	.byte	W06
	.byte		N09	, Cn1, v100
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N12	, Dn1, v112
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song012_6_1
	.byte	PATT	
		.word	song012_6_2
	.byte	PATT	
		.word	song012_6_3
	.byte		N06	, Cn1, v100
	.byte	W18
	.byte		N06	
	.byte	W30
	.byte		N09	
	.byte	W24
	.byte		N12	, Dn1, v112
	.byte	W24
	.byte	PATT	
		.word	song012_6_1
	.byte	PATT	
		.word	song012_6_2
	.byte	PATT	
		.word	song012_6_3
	.byte	PATT	
		.word	song012_6_4
	.byte	PATT	
		.word	song012_6_1
	.byte	PATT	
		.word	song012_6_2
	.byte	W18
	.byte		N05	, Cn1, v080
	.byte	W06
	.byte		N09	, Cn1, v100
	.byte	W18
	.byte		N06	, Cs1, v096
	.byte	W06
	.byte		N03	, Cs1, v116
	.byte	W03
	.byte			Cs1, v056
	.byte	W03
	.byte			Cs1, v036
	.byte	W03
	.byte			Cs1, v032
	.byte	W03
	.byte			Cs1, v036
	.byte	W03
	.byte			Cs1, v044
	.byte	W03
	.byte			Cs1, v060
	.byte	W03
	.byte			Cs1, v076
	.byte	W03
	.byte		N08	, Cs1, v096
	.byte	W08
	.byte			Cs1, v084
	.byte	W08
	.byte			Cs1, v088
	.byte	W08
	.byte			Cs1, v108
	.byte	W08
	.byte			Cs1, v096
	.byte	W08
	.byte			Cs1, v100
	.byte	W80
	.byte	W24
	.byte	GOTO	
		.word	song012_6_5
	.byte	FINE

	@********************** Track  7 **********************@

	.global song012_7
song012_7:	@ 0x081713DD
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	PAN	, c_v
	.byte	VOL	, v051
	.byte	W24
	.byte		N17	, As4, v080
	.byte	W24
	.byte		N03	, Gs4, v060
	.byte	W18
	.byte		N04	, As4
	.byte	W06
	.byte		N17	, As4, v080
	.byte	W24
	.byte		N03	, Gs4, v060
	.byte	W18
	.byte		N04	, As4
	.byte	W06
song012_7_6:
	.byte		N17	, As4, v080
	.byte	W24
	.byte		N03	, Gs4, v060
	.byte	W18
	.byte		N04	, As4
	.byte	W06
	.byte		N17	, As4, v080
	.byte	W24
song012_7_1:
	.byte		N03	, Gs4, v060
	.byte	W18
	.byte		N04	, As4
	.byte	W06
	.byte		N17	, As4, v080
	.byte	W24
	.byte		N03	, Gs4, v060
	.byte	W18
	.byte		N04	, As4
	.byte	W06
	.byte		N17	, As4, v080
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song012_7_1
	.byte	PATT	
		.word	song012_7_1
	.byte	PATT	
		.word	song012_7_1
	.byte	PATT	
		.word	song012_7_1
	.byte	PATT	
		.word	song012_7_1
song012_7_3:
	.byte	W24
	.byte		N23	, Cn4, v080
	.byte	W24
	.byte		N12	, En4
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
song012_7_2:
	.byte		N12	, En4, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte		N12	
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte	PATT	
		.word	song012_7_2
	.byte	PATT	
		.word	song012_7_3
	.byte	PATT	
		.word	song012_7_2
	.byte	PATT	
		.word	song012_7_2
	.byte		N06	, En4, v080
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N12	
	.byte	W48
	.byte	W24
	.byte		N23	, Cn4
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N23	
	.byte	W18
	.byte		N03	, Gs4
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W06
song012_7_4:
	.byte		N03	, Gs4, v080
	.byte	W42
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W06
	.byte	PEND
song012_7_5:
	.byte		N03	, Gs4, v080
	.byte	W18
	.byte		N12	, As4, v072
	.byte	W24
	.byte		N03	, Gs4, v080
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W06
	.byte	PEND
	.byte		N03	
	.byte	W48
	.byte		N03	
	.byte	W18
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W06
	.byte	W42
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W06
	.byte	PATT	
		.word	song012_7_4
	.byte	PATT	
		.word	song012_7_5
	.byte		N03	, Gs4, v080
	.byte	W96
	.byte	W24
	.byte		N23	, Cn4
	.byte	W24
	.byte		N03	, Gs4, v060
	.byte	W18
	.byte		N04	, As4, v080
	.byte	W06
	.byte		N18	
	.byte	W24
	.byte		N03	, Gs4, v060
	.byte	W18
	.byte		N06	, As4, v080
	.byte	W06
	.byte	GOTO	
		.word	song012_7_6
	.byte	FINE

	.align 2
	.global song012
song012:	@ 0x081714E4
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	168		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song012_1		@ track
	.word	song012_2		@ track
	.word	song012_3		@ track
	.word	song012_4		@ track
	.word	song012_5		@ track
	.word	song012_6		@ track
	.word	song012_7		@ track
