	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song010_1
song010_1:	@ 0x0816FDF4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 73
	.byte	W96
	.byte	W96
	.byte	W24
	.byte	W01
song010_1_6:
	.byte	VOICE	, 65
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N44	, An3, v116
	.byte	W68
	.byte	W03
song010_1_1:
	.byte	W13
	.byte		N05	, En3, v096
	.byte	W06
	.byte			Fn3, v100
	.byte	W06
	.byte		N36	, Fs3, v104
	.byte	W48
	.byte		N16	, En3, v108
	.byte	W18
	.byte			An3, v104
	.byte	W05
	.byte	PEND
	.byte	W13
	.byte		N23	, Dn3, v100
	.byte	W30
	.byte			Dn3, v060
	.byte	W30
	.byte			Dn3, v040
	.byte	W23
song010_1_2:
	.byte	W13
	.byte		N05	, En3, v100
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N32	, Gn3, v108
	.byte	W36
	.byte		N23	, Fs3, v112
	.byte	W24
	.byte		N21	, Cs3, v104
	.byte	W11
	.byte	PEND
song010_1_3:
	.byte	W13
	.byte		N23	, Cn3, v112
	.byte	W30
	.byte			Cn3, v068
	.byte	W30
	.byte			Cn3, v040
	.byte	W23
	.byte	PEND
song010_1_4:
	.byte	W13
	.byte		N05	, Gn3, v092
	.byte	W06
	.byte			Gs3, v104
	.byte	W06
	.byte		N21	, Ds4, v108
	.byte	W36
	.byte		N22	, Dn4, v100
	.byte	W24
	.byte		N11	, Cs4, v112
	.byte	W11
	.byte	PEND
song010_1_5:
	.byte	W01
	.byte		N11	, Gn3, v096
	.byte	W12
	.byte		N23	, Bn3, v104
	.byte	W30
	.byte			Bn3, v068
	.byte	W30
	.byte			Bn3, v040
	.byte	W23
	.byte	PEND
	.byte	W13
	.byte		N11	, Gn3, v100
	.byte	W12
	.byte		N17	, Dn4
	.byte	W18
	.byte			Cs4, v108
	.byte	W18
	.byte		N11	, Gn3, v096
	.byte	W12
	.byte		N17	, Cn4
	.byte	W18
	.byte			Bn3, v108
	.byte	W05
	.byte	W13
	.byte		N16	, Fs3, v112
	.byte	W12
	.byte		N23	, An3, v116
	.byte	W30
	.byte			An3, v068
	.byte	W30
	.byte			An3, v040
	.byte	W11
	.byte	PATT	
		.word	song010_1_1
	.byte	W13
	.byte		N23	, Dn3, v100
	.byte	W30
	.byte			Dn3, v068
	.byte	W30
	.byte			Dn3, v040
	.byte	W23
	.byte	PATT	
		.word	song010_1_2
	.byte	PATT	
		.word	song010_1_3
	.byte	PATT	
		.word	song010_1_4
	.byte	PATT	
		.word	song010_1_5
	.byte	W13
	.byte		N11	, Gn3, v100
	.byte	W12
	.byte		N17	, Dn4
	.byte	W18
	.byte			Cs4, v108
	.byte	W18
	.byte		N11	, Gn3, v096
	.byte	W12
	.byte		N17	, Cn4
	.byte	W18
	.byte		N23	, Bn3, v108
	.byte	W05
	.byte	W24
	.byte	W01
	.byte	VOICE	, 68
	.byte	VOL	, v068
	.byte	MOD	, 0
	.byte	PAN	, c_v+10
	.byte		N16	, En4
	.byte	W24
	.byte		N06	, En4, v100
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			En4, v104
	.byte	W24
	.byte		N16	
	.byte	W24
	.byte		N06	, En4, v096
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			En4, v100
	.byte	W24
	.byte		N16	, Ds4
	.byte	W24
	.byte		N06	, Ds4, v096
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		N06	
	.byte	W24
	.byte		N16	
	.byte	W24
	.byte		N06	, Ds4, v104
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			Ds4, v096
	.byte	W24
	.byte		N16	, Dn4
	.byte	W24
	.byte		N06	, Dn4, v100
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			Dn4, v096
	.byte	W24
	.byte		N16	, Dn4, v092
	.byte	W24
	.byte		N06	, Dn4, v100
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			Dn4, v092
	.byte	W24
	.byte		N16	, Ds4, v096
	.byte	W24
	.byte		N06	, Ds4, v092
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			Ds4, v104
	.byte	W24
	.byte		N16	, Ds4, v096
	.byte	W24
	.byte		N06	, Ds4, v104
	.byte	W44
	.byte	W03
	.byte	W24
	.byte	GOTO	
		.word	song010_1_6
	.byte	FINE

	@********************** Track  2 **********************@

	.global song010_2
song010_2:	@ 0x0816FF36
	.byte	KEYSH	, 0
	.byte	VOICE	, 69
	.byte	PAN	, c_v
	.byte	VOL	, v061
	.byte	W96
song010_2_5:
	.byte	W24
	.byte	W01
	.byte		N11	, Cs2, v100
	.byte	W18
	.byte			Bn1
	.byte	W18
	.byte		N16	, Fs1
	.byte	W24
	.byte		N11	, Cn2
	.byte	W11
	.byte	PEND
	.byte	W01
	.byte			Gn1
	.byte	W12
	.byte			Gs1
	.byte	W12
song010_2_6:
	.byte		N12	, An1, v100
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N22	, En2
	.byte	W24
	.byte		N12	, Ds2
	.byte	W11
song010_2_1:
	.byte	W01
	.byte		N11	, Dn2, v100
	.byte	W12
	.byte		N12	, Cn2
	.byte	W12
	.byte			An1
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N17	, Gn1
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	PEND
song010_2_2:
	.byte	W01
	.byte		N12	, An1, v100
	.byte	W12
	.byte			Gn1
	.byte	W12
	.byte			An1
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N21	, En2
	.byte	W24
	.byte		N11	, Ds2
	.byte	W11
	.byte	PEND
song010_2_3:
	.byte	W01
	.byte		N11	, Dn2, v100
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte		N12	, An1
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N18	, Gn1
	.byte	W24
	.byte		N11	
	.byte	W11
	.byte	PEND
song010_2_4:
	.byte	W01
	.byte		N22	, Gs1, v100
	.byte	W24
	.byte		N12	, An1
	.byte	W18
	.byte		N11	
	.byte	W18
	.byte		N22	, En2
	.byte	W24
	.byte		N12	, Ds2
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_3
	.byte	PATT	
		.word	song010_2_4
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_3
	.byte	PATT	
		.word	song010_2_4
	.byte	PATT	
		.word	song010_2_1
	.byte	PATT	
		.word	song010_2_2
	.byte	PATT	
		.word	song010_2_3
	.byte	W01
	.byte		N22	, Gs1, v100
	.byte	W24
	.byte		N11	, An1
	.byte	W18
	.byte		TIE	
	.byte	W52
	.byte	W01
	.byte	W56
	.byte	W02
	.byte		EOT	
	.byte	W03
	.byte		N23	, En2
	.byte	W24
	.byte		N11	, Ds2
	.byte	W11
	.byte	W01
	.byte			Dn2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			As1
	.byte	W18
	.byte		TIE	
	.byte	W52
	.byte	W01
	.byte	W76
	.byte		EOT	
	.byte	W09
	.byte		N12	, Fs1
	.byte	W11
	.byte	W01
	.byte		N11	, An1
	.byte	W12
	.byte			As1
	.byte	W12
	.byte			Gs1
	.byte	W18
	.byte		TIE	
	.byte	W52
	.byte	W01
	.byte	W66
	.byte		EOT	
	.byte	W19
	.byte		N11	, Dn2
	.byte	W11
	.byte	W01
	.byte		N23	, As1
	.byte	W24
	.byte		N11	, Bn1
	.byte	W18
	.byte		N68	
	.byte	W52
	.byte	W01
	.byte	PATT	
		.word	song010_2_5
	.byte	W01
	.byte		N11	, Gn1, v100
	.byte	W12
	.byte			Gs1
	.byte	W11
	.byte	GOTO	
		.word	song010_2_6
	.byte	FINE

	@********************** Track  3 **********************@

	.global song010_3
song010_3:	@ 0x0817002F
	.byte	KEYSH	, 0
	.byte	VOICE	, 62
	.byte	PAN	, c_v
	.byte	VOL	, v041
	.byte	W96
	.byte	W96
	.byte	W24
	.byte	W01
song010_3_7:
	.byte		N11	, As4, v100
	.byte	W12
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W11
song010_3_1:
	.byte	W01
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W12
	.byte		N03	, An4
	.byte	W24
	.byte		N03	
	.byte	W11
	.byte	PEND
song010_3_2:
	.byte	W13
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W12
	.byte		N03	, An4
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song010_3_1
	.byte	W13
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N11	, As4, v100
	.byte	W12
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W11
song010_3_3:
	.byte	W01
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W12
	.byte		N03	, An4
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_2
song010_3_4:
	.byte	W01
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4, v100
	.byte	W12
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song010_3_3
	.byte	PATT	
		.word	song010_3_1
	.byte	PATT	
		.word	song010_3_2
	.byte	PATT	
		.word	song010_3_4
	.byte	PATT	
		.word	song010_3_3
	.byte	PATT	
		.word	song010_3_1
	.byte	W13
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W12
	.byte		N03	, An4
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte			An4, v104
	.byte	W11
	.byte	W24
	.byte	W01
	.byte		N11	, As4, v100
	.byte	W12
	.byte		N03	, An4, v092
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W11
song010_3_5:
	.byte	W13
	.byte		N03	, An4, v092
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W11
	.byte	PEND
song010_3_6:
	.byte	W01
	.byte		N11	, As4, v092
	.byte	W12
	.byte		N03	, An4
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W11
	.byte	PEND
	.byte	W13
	.byte		N03	
	.byte	W24
	.byte		N03	
	.byte	W12
	.byte		N11	, As4
	.byte	W12
	.byte		N03	, An4
	.byte	W24
	.byte		N03	
	.byte	W11
	.byte	PATT	
		.word	song010_3_5
	.byte	PATT	
		.word	song010_3_5
	.byte	PATT	
		.word	song010_3_6
	.byte	W13
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N11	, As4, v076
	.byte	W24
	.byte		N03	, An4, v092
	.byte	W12
	.byte		N11	, As4
	.byte	W12
	.byte		N03	, An4
	.byte	W23
	.byte	W24
	.byte	GOTO	
		.word	song010_3_7
	.byte	FINE

	@********************** Track  4 **********************@

	.global song010_4
song010_4:	@ 0x08170161
	.byte	KEYSH	, 0
	.byte	VOICE	, 66
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	W96
	.byte	W01
	.byte		N06	, Cs1, v072
	.byte	W06
	.byte			Cs1, v080
	.byte	W06
	.byte			Cs1, v092
	.byte	W06
	.byte			Cs1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W12
	.byte			Cn1, v108
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte			Cs1, v112
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1, v108
	.byte	W11
	.byte	W01
	.byte			Cs1, v112
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
song010_4_6:
	.byte		N06	, Cn1, v108
	.byte	W18
	.byte			Cs1, v112
	.byte	W18
	.byte			Cn1, v108
	.byte	W18
	.byte			Cs1, v080
	.byte	W06
	.byte			Cn1, v112
	.byte	W11
song010_4_1:
	.byte	W01
	.byte		N06	, Cs1, v112
	.byte	W12
	.byte			Cn1, v104
	.byte	W12
	.byte			Cn1, v112
	.byte	W18
	.byte			Cs1, v100
	.byte	W18
	.byte			Cn1, v112
	.byte	W24
	.byte		N06	
	.byte	W11
	.byte	PEND
song010_4_2:
	.byte	W01
	.byte		N06	, Cs1, v104
	.byte	W24
	.byte			Cn1, v108
	.byte	W18
	.byte			Cs1, v112
	.byte	W18
	.byte			Cn1, v108
	.byte	W18
	.byte			Cs1, v080
	.byte	W06
	.byte			Cn1, v112
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song010_4_1
	.byte	W01
	.byte		N06	, Cs1, v104
	.byte	W18
	.byte		N06	
	.byte	W06
	.byte			Cn1, v108
	.byte	W18
	.byte			Cs1, v112
	.byte	W18
	.byte			Cn1, v108
	.byte	W18
	.byte			Cs1, v080
	.byte	W06
	.byte			Cn1, v112
	.byte	W11
	.byte	PATT	
		.word	song010_4_1
	.byte	PATT	
		.word	song010_4_2
song010_4_3:
	.byte	W01
	.byte		N06	, Cs1, v112
	.byte	W12
	.byte			Cn1, v104
	.byte	W12
	.byte			Cn1, v112
	.byte	W18
	.byte			Cs1, v100
	.byte	W17
	.byte			Cs1, v064
	.byte	W06
	.byte			Cs1, v104
	.byte	W12
	.byte		N06	
	.byte	W18
	.byte	PEND
	.byte	W01
	.byte			Cn1, v112
	.byte	W12
	.byte			Cs1, v104
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Cn1, v108
	.byte	W18
	.byte			Cs1, v112
	.byte	W18
	.byte			Cn1, v108
	.byte	W18
	.byte			Cs1, v080
	.byte	W06
	.byte			Cn1, v112
	.byte	W11
	.byte	PATT	
		.word	song010_4_1
	.byte	PATT	
		.word	song010_4_2
	.byte	PATT	
		.word	song010_4_1
	.byte	PATT	
		.word	song010_4_2
	.byte	PATT	
		.word	song010_4_1
	.byte	PATT	
		.word	song010_4_2
	.byte	PATT	
		.word	song010_4_3
	.byte	W24
	.byte	W01
	.byte		N06	, Cn1, v112
	.byte	W18
	.byte			Cs1, v104
	.byte	W18
	.byte			Cn1, v112
	.byte	W18
	.byte			Cs1, v104
	.byte	W06
	.byte			Cn1, v112
	.byte	W11
song010_4_4:
	.byte	W13
	.byte		N06	, Cs1, v104
	.byte	W12
	.byte			Cn1, v112
	.byte	W18
	.byte			Cs1, v104
	.byte	W18
	.byte			Cn1, v112
	.byte	W24
	.byte			Cs1, v104
	.byte	W11
	.byte	PEND
song010_4_5:
	.byte	W13
	.byte		N06	, Cn1, v112
	.byte	W12
	.byte		N06	
	.byte	W18
	.byte			Cs1, v104
	.byte	W18
	.byte			Cn1, v112
	.byte	W18
	.byte			Cs1, v104
	.byte	W06
	.byte			Cn1, v112
	.byte	W11
	.byte	PEND
	.byte	PATT	
		.word	song010_4_4
	.byte	PATT	
		.word	song010_4_5
	.byte	PATT	
		.word	song010_4_4
	.byte	W13
	.byte		N06	, Cn1, v112
	.byte	W12
	.byte		N06	
	.byte	W18
	.byte			Cs1, v104
	.byte	W18
	.byte			Cn1, v112
	.byte	W24
	.byte		N06	
	.byte	W11
	.byte	W07
	.byte			Cs1, v104
	.byte	W18
	.byte			Cn1, v112
	.byte	W18
	.byte			Cs1, v104
	.byte	W18
	.byte			Cn1, v112
	.byte	W24
	.byte			Cs1, v104
	.byte	W11
	.byte	W01
	.byte			Cn1, v112
	.byte	W06
	.byte			Cs1, v104
	.byte	W17
	.byte	GOTO	
		.word	song010_4_6
	.byte	FINE

	@********************** Track  5 **********************@

	.global song010_5
song010_5:	@ 0x081702B4
	.byte	KEYSH	, 0
	.byte	VOICE	, 70
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v041
	.byte	BEND	, c_v-63
	.byte	W01
	.byte		TIE	, An2, v100
	.byte	W01
	.byte	BEND	, c_v-59
	.byte	W01
	.byte		c_v-56
	.byte	W01
	.byte		c_v-51
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-39
	.byte	W02
	.byte		c_v-34
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-28
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W02
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W02
	.byte		c_v-14
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-8
	.byte	W03
	.byte		c_v-6
	.byte	W02
	.byte		c_v-4
	.byte	W02
	.byte		c_v-3
	.byte	W01
	.byte		c_v-2
	.byte	W02
	.byte		c_v
	.byte	W16
	.byte	MOD	, 20
	.byte	W44
	.byte	W22
	.byte		EOT	
	.byte	W02
	.byte	MOD	, 0
	.byte	W01
	.byte		N05	, An3
	.byte	W06
	.byte		N08	
	.byte	W12
	.byte		N06	, Gn3
	.byte	W18
	.byte		N15	, Fn3
	.byte	W18
	.byte		N05	, Gn3
	.byte	W17
	.byte	W01
	.byte		N12	, Fs3
	.byte	W12
	.byte		N11	, Gs3
	.byte	W12
song010_5_5:
	.byte	VOICE	, 71
	.byte	VOL	, v034
	.byte	W12
	.byte		N05	, An3, v100
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W28
	.byte	W01
song010_5_2:
	.byte	W36
	.byte	W01
	.byte		N05	, An3, v100
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W28
	.byte	W01
	.byte	PEND
song010_5_1:
	.byte	W36
	.byte	W01
	.byte		N05	, Gn3, v100
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			An3
	.byte	W12
	.byte			Gn3
	.byte	W28
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song010_5_1
	.byte	PATT	
		.word	song010_5_2
	.byte	PATT	
		.word	song010_5_2
	.byte	PATT	
		.word	song010_5_1
	.byte	W36
	.byte	W01
	.byte		N05	, An3, v100
	.byte	W05
	.byte			Bn3
	.byte	W07
	.byte			En4
	.byte	W06
	.byte			Bn3
	.byte	W12
	.byte			An3
	.byte	W28
	.byte	W01
	.byte	W24
	.byte	W01
	.byte	VOICE	, 70
	.byte	W12
	.byte		N11	, En4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Bn3
	.byte	W32
	.byte	W03
song010_5_3:
	.byte	W13
	.byte		N11	, Dn4, v100
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			An3
	.byte	W24
	.byte			Cn4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Gn3
	.byte	W11
	.byte	PEND
song010_5_4:
	.byte	W60
	.byte	W01
	.byte		N11	, Dn4, v100
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			An3
	.byte	W11
	.byte	PEND
	.byte	W13
	.byte			Cn4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Gn3
	.byte	W24
	.byte			Bn3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Fn3
	.byte	W11
	.byte	W36
	.byte	W01
	.byte			En4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Bn3
	.byte	W32
	.byte	W03
	.byte	PATT	
		.word	song010_5_3
	.byte	PATT	
		.word	song010_5_4
	.byte	W13
	.byte		N11	, Cn4, v100
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Gn3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			En4
	.byte	W11
	.byte	W84
	.byte	W01
	.byte			Gn2, v080
	.byte	W11
	.byte	W01
	.byte			An2
	.byte	W12
	.byte		N68	, En3
	.byte	W80
	.byte	W03
	.byte	W01
	.byte		N11	, Dn3
	.byte	W12
	.byte		N68	, An2
	.byte	W80
	.byte	W03
	.byte	W01
	.byte		N12	, Gn2
	.byte	W12
	.byte		N84	, Dn3
	.byte	W80
	.byte	W03
	.byte	W84
	.byte	W01
	.byte		N11	, Cn3
	.byte	W11
	.byte	W01
	.byte			Dn3
	.byte	W12
	.byte		N60	, An3
	.byte	W72
	.byte		N11	, Gs3
	.byte	W11
	.byte	W13
	.byte		N84	, Gn3
	.byte	W80
	.byte	W03
	.byte	W24
	.byte	W01
	.byte		N05	, An3, v100
	.byte	W06
	.byte		N08	
	.byte	W12
	.byte		N06	, Gn3
	.byte	W18
	.byte		N15	, Fn3
	.byte	W18
	.byte		N05	, Gn3
	.byte	W17
	.byte	W01
	.byte		N12	, Fs3
	.byte	W12
	.byte		N11	, Gs3
	.byte	W11
	.byte	GOTO	
		.word	song010_5_5
	.byte	FINE

	@********************** Track  6 **********************@

	.global song010_6
song010_6:	@ 0x08170413
	.byte	KEYSH	, 0
	.byte	VOICE	, 72
	.byte	MODT	, 0
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v041
	.byte	BEND	, c_v-63
	.byte	W01
	.byte		c_v-59
	.byte		TIE	, Fn2, v092
	.byte	W01
	.byte	BEND	, c_v-56
	.byte	W01
	.byte		c_v-51
	.byte	W01
	.byte		c_v-50
	.byte	W01
	.byte		c_v-44
	.byte	W01
	.byte		c_v-43
	.byte	W01
	.byte		c_v-39
	.byte	W02
	.byte		c_v-34
	.byte	W01
	.byte		c_v-32
	.byte	W01
	.byte		c_v-28
	.byte	W02
	.byte		c_v-26
	.byte	W01
	.byte		c_v-24
	.byte	W01
	.byte		c_v-22
	.byte	W01
	.byte		c_v-20
	.byte	W02
	.byte		c_v-18
	.byte	W01
	.byte		c_v-16
	.byte	W02
	.byte		c_v-14
	.byte	W01
	.byte		c_v-12
	.byte	W01
	.byte		c_v-11
	.byte	W01
	.byte		c_v-10
	.byte	W01
	.byte		c_v-8
	.byte	W03
	.byte		c_v-6
	.byte	W02
	.byte		c_v-4
	.byte	W02
	.byte		c_v-3
	.byte	W01
	.byte		c_v-2
	.byte	W02
	.byte		c_v
	.byte	W14
	.byte	MOD	, 20
	.byte	W44
	.byte	W03
	.byte	W22
	.byte		EOT	
	.byte	W02
	.byte	MOD	, 0
	.byte	W01
	.byte		N05	, Fn3, v100
	.byte	W06
	.byte		N08	
	.byte	W12
	.byte		N06	, Ds3
	.byte	W18
	.byte		N15	, Cs3
	.byte	W18
	.byte		N05	, Ds3
	.byte	W17
	.byte	W01
	.byte		N12	, Dn3
	.byte	W12
	.byte		N11	, En3
	.byte	W12
song010_6_3:
	.byte	VOICE	, 67
	.byte	MOD	, 8
	.byte	VOL	, v057
	.byte	PAN	, c_v+10
	.byte	MODT	, 0
	.byte		TIE	, Cn3, v100
	.byte	W68
	.byte	W03
song010_6_1:
	.byte	W90
	.byte	W01
	.byte	VOL	, v045
	.byte	W02
	.byte		v042
	.byte	W02
	.byte		v038
	.byte	W01
	.byte	PEND
song010_6_2:
	.byte	W01
	.byte	VOL	, v036
	.byte	W02
	.byte		v032
	.byte	W02
	.byte		v027
	.byte	W02
	.byte		v024
	.byte	W02
	.byte		v021
	.byte	W02
	.byte		v017
	.byte	W02
	.byte		v015
	.byte	W02
	.byte		v010
	.byte	W02
	.byte		v008
	.byte	W02
	.byte		v004
	.byte	W02
	.byte		v000
	.byte	W01
	.byte	PEND
	.byte		EOT	, Cn3
	.byte	W02
	.byte	VOL	, v045
	.byte	W01
	.byte		TIE	, As2, v100
	.byte	W68
	.byte	W03
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte		EOT	, As2
	.byte	W02
	.byte	VOL	, v045
	.byte	W01
	.byte		TIE	, Cn3, v100
	.byte	W68
	.byte	W03
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte		EOT	, Cn3
	.byte	W02
	.byte	VOL	, v045
	.byte	W01
	.byte		TIE	, As2, v100
	.byte	W68
	.byte	W03
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte		EOT	, As2
	.byte	W02
	.byte	VOL	, v045
	.byte	W01
	.byte		TIE	, Cn3, v100
	.byte	W68
	.byte	W03
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte		EOT	, Cn3
	.byte	W02
	.byte	VOL	, v045
	.byte	W01
	.byte		TIE	, As2, v100
	.byte	W68
	.byte	W03
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte		EOT	, As2
	.byte	W02
	.byte	VOL	, v045
	.byte	W01
	.byte		TIE	, Cn3, v100
	.byte	W68
	.byte	W03
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte		EOT	, Cn3
	.byte	W02
	.byte	VOL	, v045
	.byte	W01
	.byte		TIE	, As2, v100
	.byte	W68
	.byte	W03
	.byte	PATT	
		.word	song010_6_1
	.byte	PATT	
		.word	song010_6_2
	.byte		EOT	, As2
	.byte	W02
	.byte	VOL	, v045
	.byte	W01
	.byte	VOICE	, 68
	.byte	VOL	, v068
	.byte	PAN	, c_v-10
	.byte	MOD	, 0
	.byte		N16	, An3, v092
	.byte	W24
	.byte		N06	, An3, v096
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			An3, v092
	.byte	W24
	.byte		N16	
	.byte	W24
	.byte		N06	, An3, v088
	.byte	W44
	.byte	W03
	.byte	W01
	.byte		N06	
	.byte	W24
	.byte		N16	, As3, v096
	.byte	W24
	.byte		N06	, As3, v104
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			As3, v100
	.byte	W24
	.byte		N16	, As3, v096
	.byte	W24
	.byte		N06	, As3, v100
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			As3, v104
	.byte	W24
	.byte		N16	, Gs3, v100
	.byte	W24
	.byte		N06	, Gs3, v096
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			Gs3, v092
	.byte	W24
	.byte		N16	
	.byte	W24
	.byte		N06	, Gs3, v076
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			Gs3, v084
	.byte	W24
	.byte		N16	, Gn3, v076
	.byte	W24
	.byte		N06	, Gn3, v092
	.byte	W44
	.byte	W03
	.byte	W01
	.byte			Gn3, v084
	.byte	W23
	.byte	VOICE	, 72
	.byte	PAN	, c_v
	.byte	VOL	, v041
	.byte	BENDR	, 12
	.byte	W01
	.byte		N05	, Fn3, v100
	.byte	W06
	.byte		N08	
	.byte	W12
	.byte		N06	, Ds3
	.byte	W18
	.byte		N15	, Cs3
	.byte	W18
	.byte		N05	, Ds3
	.byte	W17
	.byte	W01
	.byte		N12	, Dn3
	.byte	W12
	.byte		N11	, En3
	.byte	W11
	.byte	GOTO	
		.word	song010_6_3
	.byte	FINE

	.align 2
	.global song010
song010:	@ 0x081705C8
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song010_1		@ track
	.word	song010_2		@ track
	.word	song010_3		@ track
	.word	song010_4		@ track
	.word	song010_5		@ track
	.word	song010_6		@ track
