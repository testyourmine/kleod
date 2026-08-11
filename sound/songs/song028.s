	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song028_1
song028_1:	@ 0x08174C78
	.byte	KEYSH	, 0
	.byte	TEMPO	, 72
	.byte	W30
song028_1_3:
	.byte	VOICE	, 0
	.byte	PAN	, c_v-10
	.byte	VOL	, v080
	.byte		N05	, En5, v112
	.byte	W06
	.byte			En5, v072
	.byte	W06
	.byte			Ds5, v112
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			Fs5, v112
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Ds5, v112
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			En5, v112
	.byte	W06
	.byte			En5, v072
	.byte	W06
	.byte			Ds5, v112
	.byte	W06
song028_1_1:
	.byte		N05	, Ds5, v072
	.byte	W06
	.byte			Fs5, v112
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Ds5, v112
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			En5, v112
	.byte	W06
	.byte			En5, v072
	.byte	W06
	.byte			Ds5, v112
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			Fs5, v112
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Ds5, v112
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			En5, v112
	.byte	W06
	.byte			En5, v072
	.byte	W06
	.byte			Ds5, v112
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song028_1_1
	.byte	PATT	
		.word	song028_1_1
	.byte		N05	, Ds5, v072
	.byte	W06
	.byte			Fs5, v112
	.byte	W06
	.byte			Fs5, v072
	.byte	W06
	.byte			Ds5, v112
	.byte	W06
	.byte			Ds5, v072
	.byte	W06
	.byte			As4, v112
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			An4, v112
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			Cn5, v112
	.byte	W06
	.byte			Cn5, v072
	.byte	W06
	.byte			An4, v112
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			As4, v112
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			An4, v112
	.byte	W06
song028_1_2:
	.byte		N05	, An4, v072
	.byte	W06
	.byte			Cn5, v112
	.byte	W06
	.byte			Cn5, v072
	.byte	W06
	.byte			An4, v112
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			As4, v112
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			An4, v112
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			Cn5, v112
	.byte	W06
	.byte			Cn5, v072
	.byte	W06
	.byte			An4, v112
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			As4, v112
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			An4, v112
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song028_1_2
	.byte		N05	, An4, v072
	.byte	W06
	.byte			Cn5, v112
	.byte	W06
	.byte			Cn5, v072
	.byte	W06
	.byte			An4, v112
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			As4, v112
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			As3, v112
	.byte	W06
	.byte			As3, v072
	.byte	W06
	.byte			Dn4, v112
	.byte	W06
	.byte			Dn4, v072
	.byte	W06
	.byte			Fn4, v112
	.byte	W06
	.byte			Fn4, v072
	.byte	W06
	.byte			As4, v112
	.byte	W06
	.byte			As4, v072
	.byte	W06
	.byte			Dn5, v112
	.byte	W06
	.byte			Dn5, v072
	.byte	W06
	.byte			Fn5, v112
	.byte	W06
	.byte			Fn5, v072
	.byte	W06
	.byte			As5, v112
	.byte	W06
	.byte			As5, v072
	.byte	W06
	.byte	GOTO	
		.word	song028_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song028_2
song028_2:	@ 0x08174D8F
	.byte	KEYSH	, 0
	.byte	W30
song028_2_1:
	.byte	VOICE	, 64
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v059
	.byte		TIE	, Ds4, v080
	.byte	W66
	.byte	W04
	.byte	MOD	, 2
	.byte	W72
	.byte		EOT	
	.byte	W01
	.byte	MOD	, 0
	.byte	W01
	.byte		N44	, Cs4
	.byte	W18
	.byte	W30
	.byte		TIE	, Bn3
	.byte	W44
	.byte	MOD	, 2
	.byte	W22
	.byte	W52
	.byte		EOT	
	.byte	W01
	.byte	MOD	, 0
	.byte	W01
	.byte		N23	, An3
	.byte	W24
	.byte			Gs3
	.byte	W18
	.byte	W06
	.byte			An3
	.byte	W24
	.byte		TIE	, As3
	.byte	W60
	.byte	MOD	, 2
	.byte	W06
	.byte	W76
	.byte		EOT	
	.byte	W01
	.byte	MOD	, 0
	.byte	W01
	.byte		N22	, Gs3
	.byte	W18
	.byte	W06
	.byte			Gn3
	.byte	W24
	.byte		N76	, Fn3
	.byte	W66
	.byte	W12
	.byte		N06	, Dn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N32	, As2
	.byte	W36
	.byte		N05	, Cn3
	.byte	W06
	.byte			Dn3, v084
	.byte	W04
	.byte			Ds3, v088
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Gn3, v092
	.byte	W06
	.byte			Gs3, v096
	.byte	W02
	.byte	W04
	.byte		N07	, As3
	.byte	W08
	.byte			Cn4, v100
	.byte	W08
	.byte		N09	, Dn4, v104
	.byte	W10
	.byte	GOTO	
		.word	song028_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song028_3
song028_3:	@ 0x08174E01
	.byte	KEYSH	, 0
	.byte	W30
song028_3_3:
	.byte	VOICE	, 44
	.byte	PAN	, c_v
	.byte	VOL	, v080
	.byte		N11	, Cn1, v108
	.byte	W60
	.byte		N06	, Cn1, v084
	.byte	W06
song028_3_1:
	.byte	W06
	.byte		N12	, Ds1, v076
	.byte	W24
	.byte		N11	, Cn1, v108
	.byte	W60
	.byte		N06	, Cn1, v084
	.byte	W06
	.byte	PEND
	.byte	W06
	.byte			Ds1, v048
	.byte	W12
	.byte			Ds1, v076
	.byte	W12
	.byte		N11	, Cn1, v108
	.byte	W60
	.byte		N06	, Cn1, v084
	.byte	W06
	.byte	PATT	
		.word	song028_3_1
	.byte	W06
	.byte		N06	, Ds1, v048
	.byte	W06
	.byte			Ds1, v052
	.byte	W06
	.byte			Ds1, v056
	.byte	W06
	.byte			Ds1, v068
	.byte	W06
	.byte		N11	, Cn1, v108
	.byte	W60
	.byte		N06	, Cn1, v100
	.byte	W06
song028_3_2:
	.byte	W06
	.byte		N12	, Ds1, v076
	.byte	W24
	.byte		N11	, Cn1, v108
	.byte	W60
	.byte		N06	, Cn1, v100
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song028_3_2
	.byte	PATT	
		.word	song028_3_1
	.byte	W06
	.byte		N06	, Cn1, v096
	.byte	W12
	.byte			Cn1, v112
	.byte	W12
	.byte	GOTO	
		.word	song028_3_3
	.byte	FINE

	@********************** Track  4 **********************@

	.global song028_4
song028_4:	@ 0x08174E70
	.byte	KEYSH	, 0
	.byte	W30
song028_4_2:
	.byte	VOICE	, 4
	.byte	PAN	, c_v
	.byte	VOL	, v025
	.byte	W12
	.byte		N02	, Cn5, v120
	.byte	W04
	.byte			Cn5, v096
	.byte	W04
	.byte			Cn5, v104
	.byte	W04
	.byte		N04	, Cn5, v112
	.byte	W12
	.byte		N02	, Cn5, v120
	.byte	W04
	.byte			Cn5, v096
	.byte	W04
	.byte			Cn5, v104
	.byte	W04
	.byte		N04	, Cn5, v112
	.byte	W18
song028_4_1:
	.byte	W42
	.byte		N02	, Cn5, v120
	.byte	W04
	.byte			Cn5, v096
	.byte	W04
	.byte			Cn5, v104
	.byte	W04
	.byte		N04	, Cn5, v112
	.byte	W12
	.byte		N02	, Cn5, v120
	.byte	W04
	.byte			Cn5, v096
	.byte	W04
	.byte			Cn5, v104
	.byte	W04
	.byte		N04	, Cn5, v112
	.byte	W18
	.byte	PEND
	.byte	PATT	
		.word	song028_4_1
	.byte	PATT	
		.word	song028_4_1
	.byte	PATT	
		.word	song028_4_1
	.byte	PATT	
		.word	song028_4_1
	.byte	PATT	
		.word	song028_4_1
	.byte	PATT	
		.word	song028_4_1
	.byte	W30
	.byte	GOTO	
		.word	song028_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song028_5
song028_5:	@ 0x08174ED9
	.byte	KEYSH	, 0
	.byte	W30
song028_5_4:
	.byte	VOICE	, 2
	.byte	PAN	, c_v
	.byte	VOL	, v073
	.byte	W12
	.byte		N12	, Bn1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn2
	.byte	W30
song028_5_1:
	.byte	W42
	.byte		N12	, An1, v100
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W30
	.byte	PEND
	.byte	W42
	.byte			Bn1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Bn2
	.byte	W30
	.byte	PATT	
		.word	song028_5_1
song028_5_2:
	.byte	W42
	.byte		N12	, As1, v100
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte			As2
	.byte	W30
	.byte	PEND
song028_5_3:
	.byte	W42
	.byte		N12	, As1, v100
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			As2
	.byte	W30
	.byte	PEND
	.byte	PATT	
		.word	song028_5_2
	.byte	PATT	
		.word	song028_5_3
	.byte	W30
	.byte	GOTO	
		.word	song028_5_4
	.byte	FINE

	@********************** Track  6 **********************@

	.global song028_6
song028_6:	@ 0x08174F26
	.byte	KEYSH	, 0
	.byte	W30
song028_6_1:
	.byte	VOICE	, 1
	.byte	PAN	, c_v+20
	.byte	VOL	, v063
	.byte		TIE	, Gs3, v080
	.byte		N92	, Bn3
	.byte	W66
	.byte	W30
	.byte			An3
	.byte	W66
	.byte	W30
	.byte			En3
	.byte	W66
	.byte	W30
	.byte			An3
	.byte	W66
	.byte	W30
	.byte			Fn3
	.byte	W66
	.byte	W28
	.byte		EOT	, Gs3
	.byte	W02
	.byte		N92	, Ds3
	.byte		N92	, Gn3
	.byte	W66
	.byte	W30
	.byte			Dn3
	.byte		TIE	, As3
	.byte	W66
	.byte	W30
	.byte		N44	, Gs3
	.byte	W44
	.byte	W02
	.byte		EOT	, As3
	.byte	W03
	.byte	VOICE	, 3
	.byte	VOL	, v087
	.byte	W02
	.byte		N04	, Fn3, v072
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N04	, Dn3, v076
	.byte	W03
	.byte	W03
	.byte		N06	, Dn3, v080
	.byte	W06
	.byte		N04	, As2
	.byte	W06
	.byte		N06	, As2, v084
	.byte	W06
	.byte		N09	, Fn2
	.byte	W09
	.byte	GOTO	
		.word	song028_6_1
	.byte	FINE

	.align 2
	.global song028
song028:	@ 0x08174F7C
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	148		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song028_1		@ track
	.word	song028_2		@ track
	.word	song028_3		@ track
	.word	song028_4		@ track
	.word	song028_5		@ track
	.word	song028_6		@ track
