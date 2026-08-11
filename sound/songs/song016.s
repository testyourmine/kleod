	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song016_1
song016_1:	@ 0x08171C00
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 81
	.byte	PAN	, c_v-10
	.byte	VOL	, v097
	.byte	W24
	.byte		N12	, Gs2, v080
	.byte		N11	, Cn3
	.byte	W12
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W12
	.byte		N12	, Gs2
	.byte		N11	, Cn3
	.byte	W12
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W36
song016_1_3:
	.byte	W24
	.byte		N12	, Gs2, v080
	.byte		N11	, Cn3
	.byte	W12
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W12
	.byte		N12	, Cn3
	.byte		N11	, Ds3
	.byte	W12
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W36
	.byte	PEND
song016_1_1:
	.byte	W24
	.byte		N12	, Gs2, v080
	.byte		N11	, Cn3
	.byte	W12
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W12
	.byte		N12	, Gs2
	.byte		N11	, Cn3
	.byte	W12
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W36
	.byte	PEND
song016_1_2:
	.byte	W12
	.byte		N12	, Gs2, v080
	.byte		N11	, Cn3
	.byte	W12
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W12
	.byte		N12	, Cn3
	.byte		N11	, Ds3
	.byte	W12
	.byte		N06	, As2
	.byte		N06	, Cs3
	.byte	W48
	.byte	PEND
song016_1_7:
	.byte	PATT	
		.word	song016_1_1
	.byte	PATT	
		.word	song016_1_2
	.byte	PATT	
		.word	song016_1_1
	.byte	PATT	
		.word	song016_1_2
	.byte	PATT	
		.word	song016_1_1
	.byte	PATT	
		.word	song016_1_3
	.byte	PATT	
		.word	song016_1_1
	.byte	PATT	
		.word	song016_1_2
song016_1_4:
	.byte	W24
	.byte		N12	, Bn2, v080
	.byte		N11	, Ds3
	.byte	W12
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W12
	.byte		N12	, Bn2
	.byte		N11	, Ds3
	.byte	W12
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W36
	.byte	PEND
song016_1_5:
	.byte	W24
	.byte		N12	, Bn2, v080
	.byte		N11	, Ds3
	.byte	W12
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W12
	.byte		N12	, Ds3
	.byte		N11	, Fs3
	.byte	W12
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song016_1_4
song016_1_6:
	.byte	W12
	.byte		N12	, Bn2, v080
	.byte		N11	, Ds3
	.byte	W12
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W12
	.byte		N12	, Ds3
	.byte		N11	, Fs3
	.byte	W12
	.byte		N06	, Cs3
	.byte		N06	, Fn3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song016_1_4
	.byte	PATT	
		.word	song016_1_5
	.byte	PATT	
		.word	song016_1_4
	.byte	PATT	
		.word	song016_1_6
	.byte	PATT	
		.word	song016_1_1
	.byte	PATT	
		.word	song016_1_3
	.byte	PATT	
		.word	song016_1_1
	.byte	PATT	
		.word	song016_1_2
	.byte	GOTO	
		.word	song016_1_7
	.byte	FINE

	@********************** Track  2 **********************@

	.global song016_2
song016_2:	@ 0x08171D05
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song016_2_1:
	.byte	VOICE	, 83
	.byte	PAN	, c_v+5
	.byte	VOL	, v097
	.byte		N92	, Cn3, v108
	.byte	W96
	.byte		N78	, Cs3
	.byte	W84
	.byte		N05	, Cn3
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte		N92	, Ds3
	.byte	W96
	.byte			Fs3
	.byte	W96
	.byte		TIE	, Ds3
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		EOT	
	.byte	W24
	.byte		N92	, Fs3
	.byte	W96
	.byte		N78	, Fn3
	.byte	W84
	.byte		N06	, Fs3
	.byte	W06
	.byte		N05	, Fn3
	.byte	W06
	.byte		N92	, Ds3
	.byte	W96
	.byte		N90	, Fn3
	.byte	W96
	.byte		N92	, Fs3
	.byte	W96
	.byte		N78	, Fn3
	.byte	W84
	.byte		N06	, Gs3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N92	, Fn3
	.byte	W96
	.byte		N78	, Ds3
	.byte	W84
	.byte		N04	, Ds3, v096
	.byte	W04
	.byte			Fn3, v104
	.byte	W04
	.byte			Gn3, v112
	.byte	W04
	.byte		TIE	, Gs3, v124
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W90
	.byte		EOT	
	.byte	W06
	.byte	GOTO	
		.word	song016_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song016_3
song016_3:	@ 0x08171D66
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song016_3_1:
	.byte	VOICE	, 83
	.byte	PAN	, c_v-5
	.byte	VOL	, v097
	.byte		N92	, Gs2, v108
	.byte	W96
	.byte		N78	, As2
	.byte	W84
	.byte		N05	, Gs2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte		N92	, Cn3
	.byte	W96
	.byte			As2
	.byte	W96
	.byte		N84	, Cn3
	.byte	W84
	.byte		N05	, As2
	.byte	W06
	.byte		N06	, Gs2
	.byte	W06
	.byte		N92	, Fs2
	.byte	W96
	.byte			Gs2
	.byte	W96
	.byte		N72	, As2
	.byte	W96
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W96
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte		N90	, Cs3
	.byte	W96
	.byte		TIE	, Bn2
	.byte	W96
	.byte	W92
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Cs3
	.byte	W96
	.byte	W44
	.byte		EOT	
	.byte	W04
	.byte		N30	, Bn2
	.byte	W48
	.byte		N92	, Ds3, v124
	.byte	W96
	.byte			Fs3, v108
	.byte	W96
	.byte			Fn3
	.byte	W96
	.byte		N90	, En3
	.byte	W96
	.byte	GOTO	
		.word	song016_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song016_4
song016_4:	@ 0x08171DBF
	.byte	KEYSH	, 0
	.byte	VOICE	, 44
	.byte	PAN	, c_v
	.byte	VOL	, v051
	.byte	W24
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W48
song016_4_1:
	.byte	W24
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song016_4_1
	.byte	W12
	.byte		N04	, Ds1, v016
	.byte	W04
	.byte			Ds1, v020
	.byte	W04
	.byte			Ds1, v024
	.byte	W04
	.byte		N06	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W48
song016_4_4:
	.byte		N44	, Dn1, v044
	.byte	W24
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song016_4_1
	.byte	PATT	
		.word	song016_4_1
	.byte	W12
	.byte		N04	, Ds1, v016
	.byte	W04
	.byte			Ds1, v020
	.byte	W04
	.byte			Ds1, v024
	.byte	W04
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W48
	.byte	PATT	
		.word	song016_4_1
	.byte	PATT	
		.word	song016_4_1
	.byte	PATT	
		.word	song016_4_1
song016_4_5:
	.byte	W12
	.byte		N04	, Ds1, v016
	.byte	W04
	.byte			Ds1, v020
	.byte	W04
	.byte			Ds1, v024
	.byte	W04
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W24
	.byte		N04	, Ds1, v024
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds1, v028
	.byte	W04
	.byte			Ds1, v032
	.byte	W04
	.byte			Ds1, v036
	.byte	W04
	.byte	PEND
song016_4_2:
	.byte		N44	, Dn1, v044
	.byte	W24
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W36
	.byte	PEND
song016_4_3:
	.byte	W24
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song016_4_2
	.byte	W12
	.byte		N04	, Ds1, v016
	.byte	W04
	.byte			Ds1, v020
	.byte	W04
	.byte			Ds1, v024
	.byte	W04
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W36
	.byte	PATT	
		.word	song016_4_2
	.byte	PATT	
		.word	song016_4_3
	.byte	PATT	
		.word	song016_4_2
	.byte		N44	, Dn1, v044
	.byte	W12
	.byte		N04	, Ds1, v016
	.byte	W04
	.byte			Ds1, v020
	.byte	W04
	.byte			Ds1, v024
	.byte	W04
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N04	, Ds1, v024
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds1, v028
	.byte	W04
	.byte			Ds1, v032
	.byte	W04
	.byte			Ds1, v036
	.byte	W04
	.byte		N44	, Dn1, v048
	.byte	W24
	.byte		N05	, Ds1, v028
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte			Ds1, v032
	.byte	W06
	.byte		N05	
	.byte	W48
	.byte	PATT	
		.word	song016_4_1
	.byte	PATT	
		.word	song016_4_4
	.byte	PATT	
		.word	song016_4_5
	.byte	GOTO	
		.word	song016_4_4
	.byte	FINE

	@********************** Track  5 **********************@

	.global song016_5
song016_5:	@ 0x08171F1F
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song016_5_2:
	.byte	VOICE	, 105
	.byte	PAN	, c_v+10
	.byte	VOL	, v058
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
song016_5_1:
	.byte	W24
	.byte		N03	, Fs4, v080
	.byte		N03	, As4, v100
	.byte	W06
	.byte			Fs4, v080
	.byte		N03	, As4, v100
	.byte	W06
	.byte			Fs4, v080
	.byte		N03	, As4, v100
	.byte	W06
	.byte			Fs4, v080
	.byte		N03	, As4, v100
	.byte	W06
	.byte			Fs4, v080
	.byte		N03	, As4, v100
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song016_5_1
	.byte	PATT	
		.word	song016_5_1
	.byte	PATT	
		.word	song016_5_1
	.byte	VOICE	, 84
	.byte	VOL	, v048
	.byte	PAN	, c_v
	.byte	W24
	.byte		N72	, Bn1, v116
	.byte	W72
	.byte	W24
	.byte		N72	
	.byte	W72
	.byte	W24
	.byte		N72	
	.byte	W72
	.byte	W24
	.byte		N48	
	.byte	W72
	.byte	W24
	.byte		N72	
	.byte	W72
	.byte	W24
	.byte		N72	
	.byte	W72
	.byte	W24
	.byte		N72	
	.byte	W72
	.byte	W24
	.byte		N48	
	.byte	W72
	.byte	VOICE	, 105
	.byte	PAN	, c_v+10
	.byte	VOL	, v058
	.byte	W24
	.byte		N03	, Fs4, v080
	.byte		N03	, As4, v100
	.byte	W06
	.byte			Fs4, v080
	.byte		N03	, As4, v100
	.byte	W06
	.byte			Fs4, v080
	.byte		N03	, As4, v100
	.byte	W06
	.byte			Fs4, v080
	.byte		N03	, As4, v100
	.byte	W06
	.byte			Fs4, v080
	.byte		N03	, As4, v100
	.byte	W48
	.byte	PATT	
		.word	song016_5_1
	.byte	PATT	
		.word	song016_5_1
	.byte	PATT	
		.word	song016_5_1
	.byte	GOTO	
		.word	song016_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song016_6
song016_6:	@ 0x08171FBA
	.byte	KEYSH	, 0
	.byte	VOICE	, 82
	.byte	PAN	, c_v-20
	.byte	VOL	, v097
	.byte		N32	, Gs1, v112
	.byte	W72
	.byte		N22	, Ds1
	.byte	W24
song016_6_1:
	.byte		N32	, Gs1, v112
	.byte	W72
	.byte		N22	, Ds1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
song016_6_4:
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
	.byte		N32	, Fs1, v112
	.byte	W72
	.byte		N22	, Cs1
	.byte	W24
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
song016_6_2:
	.byte		N32	, Gs1, v112
	.byte	W72
	.byte		N04	, Ds1, v064
	.byte	W04
	.byte			Ds1, v068
	.byte	W04
	.byte			Ds1, v072
	.byte	W04
	.byte			Ds1, v080
	.byte	W04
	.byte			Ds1, v092
	.byte	W04
	.byte			Ds1, v108
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_2
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
song016_6_3:
	.byte		N32	, Gs1, v112
	.byte	W72
	.byte		N04	, Ds1, v080
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Ds1, v088
	.byte	W04
	.byte			Ds1, v100
	.byte	W04
	.byte			Ds1, v116
	.byte	W04
	.byte			Ds1, v127
	.byte	W04
	.byte	PEND
	.byte		N32	, Gs1
	.byte	W72
	.byte		N22	, Ds1, v112
	.byte	W24
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_1
	.byte	PATT	
		.word	song016_6_3
	.byte	GOTO	
		.word	song016_6_4
	.byte	FINE

	.align 2
	.global song016
song016:	@ 0x08172070
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song016_1		@ track
	.word	song016_2		@ track
	.word	song016_3		@ track
	.word	song016_4		@ track
	.word	song016_5		@ track
	.word	song016_6		@ track
