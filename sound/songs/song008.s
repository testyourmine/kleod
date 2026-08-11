	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song008_1
song008_1:	@ 0x0816F02C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 64
	.byte	VOICE	, 75
	.byte	PAN	, c_v+15
	.byte	VOL	, v066
	.byte	W24
	.byte		N23	, En4, v104
	.byte	W24
	.byte		N44	, An3, v096
	.byte	W48
	.byte		N23	, Dn4
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Bn3
	.byte	W24
song008_1_4:
	.byte	VOICE	, 39
	.byte	VOL	, v087
	.byte	PAN	, c_v
	.byte	W12
	.byte		N06	, An3, v092
	.byte		N06	, En4, v104
	.byte	W12
	.byte		N09	, An3, v092
	.byte		N09	, En4, v108
	.byte	W24
	.byte			An3, v092
	.byte		N09	, Dn4, v096
	.byte	W24
	.byte			An3, v088
	.byte		N09	, En4, v104
	.byte	W24
song008_1_1:
	.byte		N09	, Cn4, v100
	.byte		N09	, Gn4, v096
	.byte	W24
	.byte			Cn4, v088
	.byte		N09	, Fs4, v104
	.byte	W24
	.byte			Dn4, v100
	.byte		N09	, Gn4, v096
	.byte	W24
	.byte		N06	, An3, v076
	.byte		N06	, Dn4, v092
	.byte	W12
	.byte		N09	, An3
	.byte		N09	, Dn4, v104
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N05	, Bn3, v092
	.byte		N05	, En4, v100
	.byte	W12
	.byte		N09	, Bn3
	.byte		N09	, En4, v108
	.byte	W23
	.byte	VOICE	, 75
	.byte	VOL	, v066
	.byte	PAN	, c_v+15
	.byte	W01
	.byte		N44	, En4, v104
	.byte	W48
	.byte			An3, v096
	.byte	W48
	.byte			Bn3, v112
	.byte	W48
	.byte	VOICE	, 39
	.byte	W12
	.byte		N06	, An3, v092
	.byte		N06	, En4, v104
	.byte	W12
	.byte		N09	, An3, v092
	.byte		N09	, En4, v108
	.byte	W24
	.byte			An3, v092
	.byte		N09	, Dn4, v096
	.byte	W24
	.byte			An3, v088
	.byte		N09	, En4, v104
	.byte	W24
	.byte	PATT	
		.word	song008_1_1
	.byte	W12
	.byte		N05	, Bn3, v092
	.byte		N05	, En4, v100
	.byte	W12
	.byte		N09	, Bn3
	.byte		N09	, En4, v108
	.byte	W23
	.byte	VOICE	, 75
	.byte	VOL	, v066
	.byte	PAN	, c_v+15
	.byte	W01
	.byte		N42	, Bn3, v104
	.byte	W48
	.byte	VOICE	, 80
	.byte	VOL	, v034
	.byte	PAN	, c_v
	.byte	W96
song008_1_2:
	.byte		N03	, Gn3, v096
	.byte	W03
	.byte			An3, v100
	.byte	W03
	.byte		N11	, Dn4, v104
	.byte	W42
	.byte		N03	, An3, v100
	.byte	W03
	.byte			Bn3
	.byte	W03
	.byte		N11	, En4, v104
	.byte	W42
	.byte	PEND
song008_1_3:
	.byte	W48
	.byte		N03	, Gn3, v100
	.byte	W03
	.byte			An3, v096
	.byte	W03
	.byte		N11	, Dn4, v104
	.byte	W42
	.byte	PEND
	.byte		N03	, Gn3
	.byte	W03
	.byte			An3, v096
	.byte	W03
	.byte		N11	, Dn4, v104
	.byte	W42
	.byte		N03	, Dn3, v100
	.byte	W03
	.byte			En3, v096
	.byte	W03
	.byte		N11	, An3, v104
	.byte	W42
	.byte	W48
	.byte		N03	, Dn3, v100
	.byte	W03
	.byte			En3, v096
	.byte	W03
	.byte		N11	, An3, v104
	.byte	W42
	.byte	PATT	
		.word	song008_1_2
	.byte	PATT	
		.word	song008_1_3
	.byte	W03
	.byte		N03	, Fs3, v100
	.byte	W03
	.byte		N11	, Bn3, v096
	.byte	W66
	.byte	VOICE	, 75
	.byte	VOL	, v066
	.byte	PAN	, c_v+15
	.byte	W12
	.byte		N11	, En4, v104
	.byte	W12
	.byte		N23	, Dn4, v108
	.byte	W24
	.byte			Bn3, v112
	.byte	W24
	.byte		N44	, An3, v092
	.byte	W48
	.byte	VOICE	, 77
	.byte	VOL	, v034
	.byte	PAN	, c_v
	.byte	MODT	, 0
	.byte		N03	, En3, v100
	.byte	W24
	.byte		N23	, En4, v104
	.byte	W24
	.byte			Bn4, v108
	.byte	W24
	.byte			An4, v092
	.byte	W24
	.byte		N44	, Dn5
	.byte	W23
	.byte	MOD	, 2
	.byte	W24
	.byte		0
	.byte	W01
	.byte		N23	, Cs5, v100
	.byte	W24
	.byte		N05	, Dn5, v064
	.byte	W06
	.byte			Cs5, v084
	.byte	W06
	.byte			Bn4, v100
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte		N42	, Bn4, v096
	.byte	W14
	.byte	MOD	, 3
	.byte	W24
	.byte		0
	.byte	W10
	.byte		N92	, En4, v104
	.byte	W36
	.byte	W01
	.byte	MOD	, 3
	.byte	W11
	.byte	W44
	.byte	W02
	.byte		0
	.byte	W48
	.byte	W02
	.byte	W24
	.byte		N23	
	.byte	W24
	.byte			Bn4, v108
	.byte	W24
	.byte			An4, v092
	.byte	W24
	.byte		N44	, Dn5
	.byte	W18
	.byte	MOD	, 3
	.byte	W28
	.byte	W01
	.byte		0
	.byte	W01
	.byte		N23	, Cs5, v100
	.byte	W24
	.byte		N05	, Dn5, v084
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Bn4, v100
	.byte	W06
	.byte			An4, v104
	.byte	W06
	.byte		N72	, En5, v096
	.byte	W28
	.byte	MOD	, 3
	.byte	W44
	.byte	W03
	.byte		0
	.byte	W21
	.byte	W96
	.byte	GOTO	
		.word	song008_1_4
	.byte	FINE

	@********************** Track  2 **********************@

	.global song008_2
song008_2:	@ 0x0816F1D1
	.byte	KEYSH	, 0
	.byte	VOICE	, 78
	.byte	PAN	, c_v
	.byte	VOL	, v075
	.byte		N11	, En1, v100
	.byte	W12
	.byte		N09	, En2, v104
	.byte	W12
	.byte		N05	, En1, v092
	.byte	W36
	.byte		N11	
	.byte	W12
	.byte		N09	, En2, v096
	.byte	W12
	.byte		N11	, En1
	.byte	W12
	.byte			En1, v092
	.byte	W12
	.byte		N09	, En2, v088
	.byte	W12
	.byte		N05	, En1, v096
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N11	, Cn1, v092
	.byte	W12
	.byte		N05	, Cn2, v096
	.byte	W12
	.byte		N11	, Dn1
	.byte	W12
	.byte		N05	, Dn2
	.byte	W12
song008_2_1:
	.byte		N11	, En1, v100
	.byte	W12
	.byte		N09	, En2, v104
	.byte	W12
	.byte		N05	, En1, v092
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N09	, En2, v096
	.byte	W12
	.byte		N11	, En1
	.byte	W12
	.byte	PEND
	.byte			En1, v100
	.byte	W12
	.byte		N09	, En2, v104
	.byte	W12
	.byte		N05	, En1, v092
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte			En2
	.byte	W12
	.byte			En1, v096
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PATT	
		.word	song008_2_1
song008_2_2:
	.byte		N11	, En1, v100
	.byte	W12
	.byte		N09	, En2, v104
	.byte	W12
	.byte		N05	, En1, v092
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte			En2
	.byte	W12
	.byte		N05	, En1, v096
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song008_2_1
	.byte	PATT	
		.word	song008_2_2
	.byte	PATT	
		.word	song008_2_1
	.byte	PATT	
		.word	song008_2_2
song008_2_3:
	.byte		N11	, Cn1, v100
	.byte	W12
	.byte		N09	, Cn2, v104
	.byte	W12
	.byte		N05	, Cn1, v092
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N09	, Cn2, v096
	.byte	W12
	.byte		N11	, Cn1
	.byte	W12
	.byte	PEND
	.byte			Cn1, v100
	.byte	W12
	.byte		N09	, Cn2, v104
	.byte	W12
	.byte		N05	, Cn1, v092
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N05	, Cn2, v096
	.byte	W12
	.byte		N11	, Dn1
	.byte	W12
	.byte		N05	, Dn2
	.byte	W12
	.byte	PATT	
		.word	song008_2_1
	.byte	PATT	
		.word	song008_2_2
	.byte	PATT	
		.word	song008_2_3
	.byte		N11	, Cn1, v100
	.byte	W12
	.byte		N09	, Cn2, v104
	.byte	W12
	.byte		N05	, Cn1, v092
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte			Cn2
	.byte	W12
	.byte		N05	, Cn1, v096
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Dn1, v100
	.byte	W12
	.byte		N09	, Dn2, v104
	.byte	W12
	.byte		N05	, Dn1, v092
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N09	, Dn2, v096
	.byte	W12
	.byte		N11	, Dn1
	.byte	W12
	.byte			Dn1, v100
	.byte	W12
	.byte		N09	, Dn2, v104
	.byte	W12
	.byte		N05	, Dn1, v092
	.byte	W12
	.byte		N09	
	.byte	W24
	.byte			Dn2
	.byte	W12
	.byte		N05	, Dn1, v096
	.byte	W12
	.byte		N11	
	.byte	W12
song008_2_5:
	.byte		N11	, En1, v096
	.byte	W12
	.byte		N05	, En2
	.byte	W12
	.byte		N11	, En1
	.byte	W12
	.byte		N05	, En2
	.byte	W12
	.byte		N11	, En1
	.byte	W12
	.byte		N05	, En2, v100
	.byte	W12
	.byte		N11	, En1, v092
	.byte	W12
	.byte		N05	, En2, v096
	.byte	W12
	.byte	PEND
song008_2_6:
	.byte		N11	, Fs1, v096
	.byte	W12
	.byte		N05	, Fs2
	.byte	W12
	.byte		N11	, Fs1
	.byte	W12
	.byte		N05	, Fs2
	.byte	W12
	.byte		N11	, Fs1
	.byte	W12
	.byte		N05	, Fs2, v100
	.byte	W12
	.byte		N11	, Fs1, v092
	.byte	W12
	.byte		N05	, Fs2, v096
	.byte	W12
	.byte	PEND
song008_2_4:
	.byte		N11	, Gn1, v096
	.byte	W12
	.byte		N05	, Gn2
	.byte	W12
	.byte		N11	, Gn1
	.byte	W12
	.byte		N05	, Gn2
	.byte	W12
	.byte		N11	, Gn1
	.byte	W12
	.byte		N05	, Gn2, v100
	.byte	W12
	.byte		N11	, Gn1, v092
	.byte	W12
	.byte		N05	, Gn2, v096
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song008_2_4
	.byte	PATT	
		.word	song008_2_5
	.byte	PATT	
		.word	song008_2_6
	.byte		TIE	, Gn1, v096
	.byte	W96
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W24
	.byte	W01
	.byte	GOTO	
		.word	song008_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song008_3
song008_3:	@ 0x0816F35B
	.byte	KEYSH	, 0
	.byte	VOICE	, 66
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte			Fn1, v064
	.byte	W12
	.byte			Cn1, v108
	.byte	W24
	.byte		N23	, Fn1, v060
	.byte	W36
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte			Fn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte			Fn1, v060
	.byte	W12
song008_3_7:
	.byte	VOICE	, 66
	.byte	VOL	, v087
	.byte	PAN	, c_v
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte			Fn1, v064
	.byte	W12
	.byte			Cn1, v108
	.byte	W24
	.byte		N23	, Fn1, v060
	.byte	W36
song008_3_1:
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte		N23	, Fn1, v060
	.byte	W36
	.byte		N11	, Cn1, v108
	.byte	W24
	.byte			Fn1, v060
	.byte	W12
	.byte	PEND
song008_3_2:
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte			Fn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte	W24
	.byte		N23	, Fn1, v060
	.byte	W36
	.byte	PEND
song008_3_3:
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte			Fn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte	W12
	.byte			Fn1, v064
	.byte	W24
	.byte		N23	, Fn1, v060
	.byte	W24
	.byte	PEND
song008_3_4:
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte			Fn1, v064
	.byte	W12
	.byte			Cn1, v108
	.byte	W24
	.byte		N23	, Fn1, v060
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song008_3_1
	.byte	PATT	
		.word	song008_3_2
	.byte	PATT	
		.word	song008_3_3
	.byte	PATT	
		.word	song008_3_4
song008_3_5:
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte			Fn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte	W24
	.byte		N11	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song008_3_2
song008_3_6:
	.byte		N11	, Cn1, v116
	.byte	W24
	.byte			Fn1, v060
	.byte	W12
	.byte			Cn1, v108
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N23	, Fn1, v060
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song008_3_4
	.byte	PATT	
		.word	song008_3_5
	.byte	PATT	
		.word	song008_3_2
	.byte	PATT	
		.word	song008_3_3
	.byte	PATT	
		.word	song008_3_2
	.byte	PATT	
		.word	song008_3_6
	.byte	PATT	
		.word	song008_3_4
	.byte	PATT	
		.word	song008_3_5
	.byte	PATT	
		.word	song008_3_2
	.byte	PATT	
		.word	song008_3_3
	.byte	W11
	.byte	VOICE	, 75
	.byte	PAN	, c_v+15
	.byte	VOL	, v066
	.byte	W01
	.byte		N11	, En4, v104
	.byte	W12
	.byte		N23	, Bn3, v100
	.byte	W24
	.byte		N11	, Dn4
	.byte	W12
	.byte		N23	, An3, v096
	.byte	W24
	.byte		N11	, Cn4, v100
	.byte	W12
	.byte		N23	, Gn3, v096
	.byte	W24
	.byte		N11	, Bn3, v108
	.byte	W12
	.byte		N44	, En3, v104
	.byte	W60
	.byte	GOTO	
		.word	song008_3_7
	.byte	FINE

	@********************** Track  4 **********************@

	.global song008_4
song008_4:	@ 0x0816F46A
	.byte	KEYSH	, 0
	.byte	W96
	.byte	W96
song008_4_2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 76
	.byte	PAN	, c_v
	.byte	VOL	, v068
	.byte	W72
	.byte		N11	, En3, v104
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N92	, Gn3
	.byte	W96
	.byte		N44	, Bn3
	.byte	W48
	.byte			Dn4
	.byte	W48
	.byte		N80	, An3, v108
	.byte	W84
	.byte		N11	, Gn3, v104
	.byte	W12
	.byte		N44	, Fs3
	.byte	W48
	.byte			Gn3
	.byte	W48
	.byte		N80	, En3, v096
	.byte	W84
	.byte		N11	, Fs3, v104
	.byte	W12
	.byte		N44	, Gn3, v100
	.byte	W48
	.byte			Bn3, v108
	.byte	W48
	.byte		N80	, An3, v112
	.byte	W84
	.byte		N11	, Gn3, v104
	.byte	W12
	.byte		N80	, Fs3
	.byte	W96
song008_4_1:
	.byte	W48
	.byte		N23	, Gn3, v088
	.byte	W24
	.byte			Fs3, v096
	.byte	W24
	.byte	PEND
	.byte		N44	, Dn3, v088
	.byte	W48
	.byte			En3, v100
	.byte	W48
	.byte		TIE	, Bn2, v092
	.byte	W96
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N44	, Dn3, v096
	.byte	W19
	.byte	VOL	, v068
	.byte	W01
	.byte		v067
	.byte	W02
	.byte		v065
	.byte	W02
	.byte		v063
	.byte	W02
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W02
	.byte		v053
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		v024
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v012
	.byte	W01
	.byte		v000
	.byte	W01
	.byte		v082
	.byte	W01
	.byte	PATT	
		.word	song008_4_1
	.byte		N44	, Dn3, v088
	.byte	W44
	.byte	W03
	.byte			Bn2
	.byte	W48
	.byte	W01
	.byte		TIE	, En3
	.byte	W96
	.byte	W68
	.byte	W01
	.byte	VOL	, v068
	.byte	W01
	.byte		v067
	.byte	W02
	.byte		v065
	.byte	W02
	.byte		v063
	.byte	W02
	.byte		v061
	.byte	W01
	.byte		v060
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v058
	.byte	W01
	.byte		v056
	.byte	W02
	.byte		v053
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v050
	.byte	W01
	.byte		v049
	.byte	W01
	.byte		v045
	.byte	W01
	.byte		v043
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v038
	.byte	W01
	.byte		v036
	.byte	W01
	.byte		v032
	.byte	W01
	.byte		v029
	.byte	W01
	.byte		EOT	
	.byte	VOL	, v024
	.byte	W01
	.byte		v021
	.byte	W01
	.byte		v012
	.byte	W01
	.byte	GOTO	
		.word	song008_4_2
	.byte	VOL	, v000
	.byte	FINE

	@********************** Track  5 **********************@

	.global song008_5
song008_5:	@ 0x0816F54B
	.byte	KEYSH	, 0
	.byte	VOICE	, 79
	.byte	PAN	, c_v
	.byte	VOL	, v027
	.byte	W12
	.byte		N05	, En4, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte			En4
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte			En4
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			An3
	.byte	W12
song008_5_6:
	.byte	W12
	.byte		N05	, An4, v092
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Dn4
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte			Fs4
	.byte	W12
song008_5_1:
	.byte		N05	, Dn4, v092
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Bn3
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			En4
	.byte	W11
	.byte			Gn4
	.byte	W13
	.byte			Dn4
	.byte	W24
	.byte		N05	
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte	PATT	
		.word	song008_5_1
	.byte	W96
	.byte	W96
song008_5_2:
	.byte	W12
	.byte		N05	, En4, v092
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte			En4
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte	PEND
song008_5_3:
	.byte		N05	, Dn4, v092
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte			En4
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N05	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song008_5_2
	.byte	PATT	
		.word	song008_5_3
	.byte	PATT	
		.word	song008_5_2
	.byte	PATT	
		.word	song008_5_3
	.byte	PATT	
		.word	song008_5_2
	.byte	PATT	
		.word	song008_5_3
song008_5_4:
	.byte		N05	, Bn3, v100
	.byte	W12
	.byte			En3
	.byte	W06
	.byte			An3
	.byte	W12
	.byte			En3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Cs4
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Dn4
	.byte	W12
	.byte			En3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte	PEND
song008_5_5:
	.byte		N05	, Bn3, v100
	.byte	W12
	.byte			En3
	.byte	W06
	.byte			An3
	.byte	W12
	.byte			En3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			En3
	.byte	W12
	.byte			Cs4
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Dn4
	.byte	W12
	.byte			En3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song008_5_4
	.byte	PATT	
		.word	song008_5_5
	.byte	PATT	
		.word	song008_5_4
	.byte	PATT	
		.word	song008_5_5
	.byte		N05	, Bn3, v100
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			An3
	.byte	W12
	.byte			Gn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte	GOTO	
		.word	song008_5_6
	.byte	FINE

	@********************** Track  6 **********************@

	.global song008_6
song008_6:	@ 0x0816F65B
	.byte	KEYSH	, 0
	.byte	VOICE	, 75
	.byte	TUNE	, c_v-5
	.byte	PAN	, c_v-15
	.byte	VOL	, v039
	.byte	W36
	.byte		N23	, En4, v104
	.byte	W24
	.byte		N44	, An3, v096
	.byte	W36
	.byte	W12
	.byte		N23	, Dn4
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			Dn4
	.byte	W24
	.byte			Bn3
	.byte	W12
song008_6_3:
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N44	, En4, v104
	.byte	W36
	.byte	W12
	.byte			An3, v096
	.byte	W48
	.byte			Bn3, v112
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	VOICE	, 74
	.byte	VOL	, v059
	.byte	PAN	, c_v
	.byte	MODT	, 0
	.byte	W12
	.byte		N11	, En3, v104
	.byte		N11	, Bn3
	.byte	W06
	.byte	MOD	, 2
	.byte	W05
	.byte		0
	.byte	W01
	.byte		N23	, Dn3, v100
	.byte		N23	, An3, v092
	.byte	W06
	.byte	MOD	, 3
	.byte	W17
	.byte		0
	.byte	W01
	.byte		N23	, Bn2, v096
	.byte		N11	, Bn3, v104
	.byte	W06
	.byte	MOD	, 4
	.byte	W06
	.byte		N24	, Gn3, v096
	.byte	W11
	.byte	MOD	, 0
	.byte	W01
	.byte		N23	, An2
	.byte	W06
	.byte	MOD	, 4
	.byte	W17
	.byte		0
	.byte	W01
	.byte		N23	, Bn2, v104
	.byte	W06
	.byte	MOD	, 3
	.byte	W17
	.byte		0
	.byte	W01
	.byte	W84
	.byte		N11	, Bn3, v092
	.byte	W12
	.byte		N23	, An3, v088
	.byte	W06
	.byte	MOD	, 4
	.byte	W17
	.byte		0
	.byte	W01
	.byte		N44	, Bn3, v092
	.byte	W06
	.byte	MOD	, 4
	.byte	W40
	.byte	W01
	.byte		0
	.byte	W24
	.byte	W01
song008_6_1:
	.byte	W80
	.byte	W03
	.byte		N11	, Bn3, v092
	.byte	W12
	.byte		N23	, An3, v088
	.byte	W01
	.byte	PEND
song008_6_2:
	.byte	W06
	.byte	MOD	, 4
	.byte	W17
	.byte		0
	.byte		N44	, Bn3, v092
	.byte	W07
	.byte	MOD	, 4
	.byte	W40
	.byte	W01
	.byte		0
	.byte	W24
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song008_6_1
	.byte	PATT	
		.word	song008_6_2
	.byte	VOICE	, 75
	.byte	VOL	, v039
	.byte	TUNE	, c_v-5
	.byte	PAN	, c_v-15
	.byte	W96
	.byte		N11	, En4, v104
	.byte	W12
	.byte		N23	, Dn4, v108
	.byte	W24
	.byte			Bn3, v112
	.byte	W24
	.byte		N44	, An3, v092
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	VOICE	, 74
	.byte	VOL	, v059
	.byte	MOD	, 2
	.byte	PAN	, c_v-15
	.byte	MODT	, 0
	.byte	W48
	.byte		N11	, Gn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N23	, Dn3, v096
	.byte	W06
	.byte	MOD	, 4
	.byte	W17
	.byte		0
	.byte	W01
	.byte		N48	, Bn2, v092
	.byte	W06
	.byte	MOD	, 4
	.byte	W40
	.byte	W01
	.byte		0
	.byte	W48
	.byte	W01
	.byte	W96
	.byte	VOICE	, 75
	.byte	VOL	, v039
	.byte	TUNE	, c_v-5
	.byte	PAN	, c_v-15
	.byte	W24
	.byte		N11	, En4, v104
	.byte	W12
	.byte		N23	, Bn3, v100
	.byte	W24
	.byte		N11	, Dn4
	.byte	W12
	.byte		N23	, An3, v096
	.byte	W24
	.byte		N11	, Cn4, v100
	.byte	W12
	.byte		N23	, Gn3, v096
	.byte	W24
	.byte		N11	, Bn3, v108
	.byte	W12
	.byte		N44	, En3, v104
	.byte	W48
	.byte	GOTO	
		.word	song008_6_3
	.byte	FINE

	.align 2
	.global song008
song008:	@ 0x0816F778
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song008_1		@ track
	.word	song008_2		@ track
	.word	song008_3		@ track
	.word	song008_4		@ track
	.word	song008_5		@ track
	.word	song008_6		@ track
