	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song006_1
song006_1:	@ 0x0816E010
	.byte	KEYSH	, 0
	.byte	TEMPO	, 82
	.byte	W36
	.byte	W72
	.byte	W72
song006_1_6:
	.byte	TEMPO	, 82
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	VOICE	, 54
	.byte	PAN	, c_v+10
	.byte	VOL	, v087
	.byte	W72
song006_1_1:
	.byte		N09	, Ds3, v104
	.byte	W12
	.byte		N10	, As3
	.byte	W12
	.byte			Gs3, v096
	.byte	W12
	.byte		N07	, As3, v100
	.byte	W24
	.byte		N08	, Cn4
	.byte	W12
	.byte	PEND
song006_1_2:
	.byte	W16
	.byte		N03	, Fs3, v092
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte		N23	, Gs3, v100
	.byte	W24
	.byte		N09	, As3
	.byte	W24
	.byte	PEND
song006_1_3:
	.byte		N09	, Ds3, v104
	.byte	W12
	.byte		N10	, As3, v096
	.byte	W12
	.byte			Gs3, v092
	.byte	W12
	.byte		N07	, As3, v100
	.byte	W24
	.byte		N08	, Cn4
	.byte	W12
	.byte	PEND
song006_1_4:
	.byte	W08
	.byte		N03	, Gn3, v088
	.byte	W04
	.byte		N11	, Gs3, v096
	.byte	W12
	.byte		N23	, Gn3, v088
	.byte	W24
	.byte		N08	, Fn3, v104
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_1_1
	.byte	PATT	
		.word	song006_1_2
	.byte	PATT	
		.word	song006_1_3
	.byte	PATT	
		.word	song006_1_4
	.byte	W96
	.byte	W56
	.byte	W01
	.byte	VOICE	, 35
	.byte	VOL	, v044
	.byte	PAN	, c_v+25
	.byte	W36
	.byte	W03
song006_1_5:
	.byte	W09
	.byte		N42	, Ds5, v096
	.byte	W48
	.byte		N23	, Gs4, v092
	.byte	W24
	.byte		N40	, As4, v096
	.byte	W15
	.byte	PEND
	.byte	W30
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte		N24	, Gs4, v096
	.byte	W24
	.byte		N23	, As4, v100
	.byte	W24
	.byte		N84	, Ds5
	.byte	W15
	.byte	W96
	.byte	W96
	.byte	W09
	.byte		N42	, Ds5, v096
	.byte	W48
	.byte		N23	, Gs4, v100
	.byte	W24
	.byte		N40	, As4, v096
	.byte	W15
	.byte	W30
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte		N24	, Gs4, v096
	.byte	W24
	.byte		N54	, As4, v100
	.byte	W36
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song006_1_5
	.byte	W30
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte		N24	, Gs4, v096
	.byte	W24
	.byte		N23	, As4, v100
	.byte	W24
	.byte		N56	, Ds5
	.byte	W15
	.byte	W96
	.byte	W96
	.byte	PATT	
		.word	song006_1_5
	.byte	W30
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte		N23	, Gs4, v096
	.byte	W24
	.byte		N44	, Gn4, v100
	.byte	W36
	.byte	W03
	.byte	W96
	.byte	W48
	.byte	VOICE	, 54
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	W48
	.byte	PATT	
		.word	song006_1_1
	.byte	PATT	
		.word	song006_1_2
	.byte	PATT	
		.word	song006_1_3
	.byte	PATT	
		.word	song006_1_4
	.byte	PATT	
		.word	song006_1_1
	.byte	PATT	
		.word	song006_1_2
	.byte	PATT	
		.word	song006_1_3
	.byte	W08
	.byte		N03	, Gn3, v088
	.byte	W04
	.byte		N11	, Gs3, v096
	.byte	W12
	.byte		N23	, Gn3, v088
	.byte	W24
	.byte		N08	, Fn3, v104
	.byte	W23
	.byte	VOICE	, 35
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W01
	.byte	TEMPO	, 75
	.byte		N11	, Ds4, v092
	.byte		N11	, Fs4, v100
	.byte	W12
	.byte			Bn3, v096
	.byte	W12
	.byte		N06	, Ds4, v088
	.byte		N06	, Fs4, v104
	.byte	W12
	.byte		N11	, Ds4, v100
	.byte		N11	, Fs4, v108
	.byte	W24
	.byte			Bn3, v092
	.byte	W12
	.byte			Fn4, v100
	.byte		N11	, Bn4, v092
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte		N06	, Fn4, v092
	.byte		N06	, Bn4
	.byte	W12
	.byte		N11	, Fn4, v104
	.byte		N11	, Bn4, v092
	.byte	W24
	.byte			Dn4, v096
	.byte	W12
	.byte			As4, v104
	.byte	W12
	.byte			Gs4, v096
	.byte	W12
	.byte			Fs4, v108
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	GOTO	
		.word	song006_1_6
	.byte	FINE

	@********************** Track  2 **********************@

	.global song006_2
song006_2:	@ 0x0816E17A
	.byte	KEYSH	, 0
	.byte	VOICE	, 44
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N10	, Ds1, v040
	.byte	W12
	.byte			Cn1, v092
	.byte	W24
song006_2_2:
	.byte		N10	, Cn1, v096
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v100
	.byte	W24
	.byte			Ds1, v036
	.byte	W12
	.byte	PEND
song006_2_3:
	.byte		N10	, Cn1, v100
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v100
	.byte	W24
	.byte			Cn1, v096
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte	PEND
song006_2_1:
	.byte		N10	, Cn1, v100
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v100
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte	PEND
	.byte			Cn1, v100
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte			Ds1, v040
	.byte	W24
	.byte			Cn1, v100
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
song006_2_4:
	.byte		N10	, Cn1, v096
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v088
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte	PEND
song006_2_5:
	.byte		N10	, Cn1, v096
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v100
	.byte	W12
	.byte			Ds1, v036
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_2_1
song006_2_8:
	.byte		N10	, Cn1, v100
	.byte	W12
	.byte			Cn1, v084
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v092
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_2_2
	.byte	PATT	
		.word	song006_2_3
	.byte	PATT	
		.word	song006_2_1
	.byte		N10	, Cn1, v100
	.byte	W12
	.byte		N10	
	.byte	W18
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v100
	.byte	W18
	.byte			Ds1, v040
	.byte	W12
	.byte	PATT	
		.word	song006_2_4
	.byte	PATT	
		.word	song006_2_5
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v088
	.byte	W12
	.byte			Cn1, v092
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v092
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte	W12
	.byte			Cn1, v104
	.byte	W18
	.byte			Ds1, v040
	.byte	W18
	.byte			Cn1, v108
	.byte	W24
	.byte			Cn1, v088
	.byte	W24
song006_2_6:
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte			Ds1, v044
	.byte	W12
	.byte			Cn1, v088
	.byte	W12
	.byte			Cn1, v092
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v092
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte	PEND
song006_2_7:
	.byte	W12
	.byte		N10	, Cn1, v104
	.byte	W18
	.byte			Ds1, v040
	.byte	W18
	.byte			Cn1, v100
	.byte	W12
	.byte		N10	
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte	PEND
	.byte			Cn1, v092
	.byte	W24
	.byte			Cn1, v088
	.byte	W12
	.byte			Cn1, v092
	.byte	W24
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v092
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte	W12
	.byte			Cn1, v104
	.byte	W18
	.byte			Ds1, v040
	.byte	W18
	.byte			Cn1, v108
	.byte	W12
	.byte		N10	
	.byte	W24
	.byte			Cn1, v088
	.byte	W12
	.byte	PATT	
		.word	song006_2_6
	.byte	PATT	
		.word	song006_2_7
	.byte	PATT	
		.word	song006_2_6
	.byte	PATT	
		.word	song006_2_7
	.byte	PATT	
		.word	song006_2_6
	.byte	PATT	
		.word	song006_2_7
	.byte	PATT	
		.word	song006_2_6
	.byte	PATT	
		.word	song006_2_7
	.byte	PATT	
		.word	song006_2_6
	.byte	PATT	
		.word	song006_2_7
	.byte		N60	, Dn1, v072
	.byte	W84
	.byte		N10	, Ds1, v040
	.byte	W12
	.byte	W12
	.byte			Cn1, v104
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Cn1, v104
	.byte	W12
	.byte			Ds1, v044
	.byte	W12
	.byte			Cn1, v100
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte	PATT	
		.word	song006_2_1
	.byte	PATT	
		.word	song006_2_8
	.byte	PATT	
		.word	song006_2_2
	.byte	PATT	
		.word	song006_2_3
	.byte	PATT	
		.word	song006_2_1
	.byte		N10	, Cn1, v100
	.byte	W12
	.byte		N10	
	.byte	W18
	.byte			Ds1, v040
	.byte	W18
	.byte			Cn1, v100
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte	PATT	
		.word	song006_2_4
	.byte	PATT	
		.word	song006_2_5
	.byte	W72
	.byte	W72
	.byte		N07	, Ds1, v016
	.byte	W08
	.byte			Ds1, v020
	.byte	W08
	.byte			Ds1, v028
	.byte	W08
	.byte			Ds1, v032
	.byte	W08
	.byte			Ds1, v036
	.byte	W08
	.byte			Ds1, v044
	.byte	W08
	.byte	GOTO	
		.word	song006_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song006_3
song006_3:	@ 0x0816E324
	.byte	KEYSH	, 0
	.byte	VOICE	, 56
	.byte	PAN	, c_v
	.byte	VOL	, v034
	.byte	W36
	.byte	W72
	.byte	W72
song006_3_1:
	.byte		N09	, Ds2, v100
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N09	, Ds2
	.byte	W12
	.byte		N11	, As3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
song006_3_2:
	.byte		N09	, Ds2, v100
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N09	, Ds2
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N12	, Cn4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_3_1
song006_3_3:
	.byte		N09	, Ds2, v100
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N09	, Ds2
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_3_1
	.byte	PATT	
		.word	song006_3_2
	.byte	PATT	
		.word	song006_3_1
	.byte		N09	, Ds2, v100
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N09	, Ds2
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N13	
	.byte	W24
	.byte	PATT	
		.word	song006_3_1
	.byte	PATT	
		.word	song006_3_2
	.byte	PATT	
		.word	song006_3_1
	.byte	PATT	
		.word	song006_3_3
song006_3_4:
	.byte		N11	, Ds2, v100
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Fn2
	.byte	W12
	.byte		N12	, Gs3
	.byte	W24
	.byte		N12	
	.byte	W15
	.byte		N11	, Fn2
	.byte	W09
	.byte			Gs3
	.byte	W12
	.byte	PEND
song006_3_5:
	.byte		N11	, Fn2, v100
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N17	, As3
	.byte	W24
	.byte		N11	, Ds2
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_3_4
song006_3_6:
	.byte		N11	, Fn2, v100
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N12	, As3
	.byte	W24
	.byte		N11	, Ds2
	.byte	W12
	.byte			Gn3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_3_4
	.byte	PATT	
		.word	song006_3_5
	.byte	PATT	
		.word	song006_3_4
	.byte	PATT	
		.word	song006_3_6
	.byte	PATT	
		.word	song006_3_4
	.byte	PATT	
		.word	song006_3_6
	.byte	PATT	
		.word	song006_3_4
	.byte	PATT	
		.word	song006_3_6
	.byte	PATT	
		.word	song006_3_4
	.byte	PATT	
		.word	song006_3_6
	.byte	PATT	
		.word	song006_3_4
	.byte	PATT	
		.word	song006_3_6
	.byte		N11	, Ds2, v100
	.byte	W12
	.byte		N06	, Fs3
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Ds2
	.byte	W12
	.byte		N06	, Fs3
	.byte	W12
	.byte		N12	
	.byte	W12
	.byte		N11	, Ds2
	.byte	W12
	.byte		N06	, Fs3
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte		N08	, Bn3
	.byte	W24
	.byte		N08	
	.byte	W24
song006_3_7:
	.byte		N08	, Ds2, v100
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N08	, Ds2
	.byte	W12
	.byte		N11	, As3
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
song006_3_8:
	.byte		N08	, Ds2, v100
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N08	, Ds2
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N12	, Cn4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_3_7
song006_3_9:
	.byte		N08	, Ds2, v100
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N08	, Ds2
	.byte	W12
	.byte		N11	, As3
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_3_7
	.byte	PATT	
		.word	song006_3_8
	.byte	PATT	
		.word	song006_3_7
	.byte	PATT	
		.word	song006_3_9
	.byte	W72
	.byte	W72
	.byte	W48
	.byte	GOTO	
		.word	song006_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song006_4
song006_4:	@ 0x0816E486
	.byte	KEYSH	, 0
	.byte	VOICE	, 57
	.byte	PAN	, c_v+63
	.byte	VOL	, v068
	.byte	W36
	.byte	W72
	.byte	W72
song006_4_1:
	.byte		N23	, Ds4, v100
	.byte	W24
	.byte		N09	, As3
	.byte	W12
	.byte		N23	
	.byte	W24
	.byte		N11	, Ds4
	.byte	W12
	.byte	PEND
song006_4_2:
	.byte		N11	, As3, v100
	.byte	W12
	.byte		N05	, Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N11	, As3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N23	, Gs3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_4_1
song006_4_3:
	.byte		N12	, As3, v100
	.byte	W12
	.byte		N05	, Gn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N11	, As3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_2
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_3
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_2
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_3
song006_4_4:
	.byte		N11	, Ds4, v100
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N23	, Ds4
	.byte	W24
	.byte		N11	, Gs3
	.byte	W12
	.byte		N11	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte	PATT	
		.word	song006_4_4
	.byte		N11	, As4, v100
	.byte	W12
	.byte		N06	, Ds4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			As4
	.byte	W12
	.byte		N06	, Ds4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			As4
	.byte	W12
	.byte		N06	, Ds4
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte			As4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			As4
	.byte	W12
	.byte		N08	, Gs4
	.byte	W24
	.byte			Ds5
	.byte	W24
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_2
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_3
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_2
	.byte	PATT	
		.word	song006_4_1
	.byte	PATT	
		.word	song006_4_3
	.byte	W72
	.byte	W72
	.byte	W48
	.byte	GOTO	
		.word	song006_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song006_5
song006_5:	@ 0x0816E59F
	.byte	KEYSH	, 0
	.byte	W36
	.byte	W72
	.byte	W72
song006_5_3:
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	VOICE	, 53
	.byte	MODT	, 0
	.byte	PAN	, c_v-10
	.byte	VOL	, v075
	.byte	W72
	.byte		N11	, Fs3, v104
	.byte	W12
	.byte			Fn3, v096
	.byte	W12
	.byte			Ds3, v100
	.byte	W12
	.byte		N23	, Gs3, v108
	.byte	W24
	.byte		N11	, As3, v100
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte		N23	, Gs3, v108
	.byte	W12
	.byte	W12
	.byte		N11	, Gn3, v100
	.byte	W12
	.byte			Fn3, v104
	.byte	W12
	.byte		N23	, Ds3, v112
	.byte	W24
	.byte		N11	, Dn3, v096
	.byte	W12
	.byte		N23	, Ds3, v112
	.byte	W23
	.byte	VOICE	, 35
	.byte	VOL	, v058
	.byte	PAN	, c_v-15
	.byte	W01
song006_5_1:
	.byte		N42	, Ds5, v096
	.byte	W48
	.byte		N23	, Gs4, v092
	.byte	W24
	.byte		N40	, As4, v096
	.byte	W24
	.byte	PEND
song006_5_2:
	.byte	W21
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte		N24	, Gs4, v096
	.byte	W24
	.byte		N23	, As4, v100
	.byte	W24
	.byte		N60	, Ds5
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	VOICE	, 53
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W12
	.byte		N03	, As3, v092
	.byte	W03
	.byte		N20	, Bn3, v100
	.byte	W09
	.byte	W12
	.byte		N11	, As3, v096
	.byte	W12
	.byte			Gs3, v088
	.byte	W12
	.byte			As3, v096
	.byte	W12
	.byte		N23	, Gn3, v092
	.byte	W06
	.byte	MOD	, 5
	.byte	W16
	.byte		0
	.byte	W02
	.byte		N11	, Gs3, v096
	.byte	W12
	.byte		N10	, As3, v100
	.byte	W11
	.byte	VOICE	, 35
	.byte	VOL	, v058
	.byte	PAN	, c_v-15
	.byte	W01
	.byte		N42	, Ds5, v096
	.byte	W48
	.byte		N23	, Gs4, v100
	.byte	W24
	.byte		N40	, As4, v096
	.byte	W24
	.byte	W21
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte		N24	, Gs4, v096
	.byte	W24
	.byte		N44	, As4, v100
	.byte	W48
	.byte	W36
	.byte	VOICE	, 53
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W09
	.byte		N03	, Fs3, v092
	.byte	W03
	.byte		N11	, Gn3
	.byte	W12
	.byte			Gs3, v096
	.byte	W12
	.byte		N23	, As3, v100
	.byte	W24
	.byte		N11	, Gn3, v096
	.byte	W12
	.byte		N18	, As3, v104
	.byte	W24
	.byte		N23	, Ds4
	.byte	W24
	.byte		N11	, As3, v100
	.byte	W12
	.byte		N22	, Ds4, v096
	.byte	W03
	.byte	MOD	, 5
	.byte	W19
	.byte		0
	.byte	W01
	.byte	VOICE	, 35
	.byte	VOL	, v058
	.byte	PAN	, c_v-15
	.byte	W01
	.byte	PATT	
		.word	song006_5_1
	.byte	PATT	
		.word	song006_5_2
	.byte	W72
	.byte	VOICE	, 53
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W12
	.byte		N03	, As3, v096
	.byte	W03
	.byte		N20	, Bn3
	.byte	W09
	.byte	W12
	.byte		N11	, As3, v092
	.byte	W12
	.byte			Gs3, v084
	.byte	W12
	.byte			As3, v092
	.byte	W12
	.byte			Gn3, v088
	.byte	W12
	.byte			Fn3, v092
	.byte	W12
	.byte		N22	, Ds3
	.byte	W23
	.byte	VOICE	, 35
	.byte	VOL	, v058
	.byte	PAN	, c_v-15
	.byte	W01
	.byte	PATT	
		.word	song006_5_1
	.byte	W21
	.byte		N03	, Gn4, v092
	.byte	W03
	.byte		N23	, Gs4, v096
	.byte	W24
	.byte		N44	, Gn4, v100
	.byte	W44
	.byte	W03
	.byte	VOICE	, 53
	.byte	VOL	, v075
	.byte	PAN	, c_v
	.byte	W01
	.byte		N09	, Fs3, v104
	.byte	W12
	.byte		N11	, Bn2, v096
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N18	, Ds3
	.byte	W24
	.byte		N23	, Bn3, v100
	.byte	W06
	.byte	MOD	, 3
	.byte	W17
	.byte		0
	.byte	W01
	.byte		N11	, An3
	.byte	W12
	.byte	W12
	.byte			An3, v096
	.byte	W12
	.byte			Gs3, v100
	.byte	W12
	.byte		N05	, An3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte		N11	, En3, v096
	.byte	W12
	.byte			Ds3, v100
	.byte	W12
	.byte			Bn3
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		N23	, Bn3, v088
	.byte	W36
	.byte		N11	, Bn3, v092
	.byte	W36
	.byte		N23	, As3, v088
	.byte	W36
	.byte		N11	, As3, v084
	.byte	W36
	.byte		N18	, Fs3, v088
	.byte	W24
	.byte			En3, v096
	.byte	W24
	.byte	GOTO	
		.word	song006_5_3
	.byte	FINE

	@********************** Track  6 **********************@

	.global song006_6
song006_6:	@ 0x0816E72B
	.byte	KEYSH	, 0
	.byte	W36
	.byte	W72
	.byte	W72
song006_6_7:
	.byte	VOICE	, 55
	.byte	PAN	, c_v
	.byte	VOL	, v034
	.byte	W12
	.byte		N11	, Gn3, v100
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
song006_6_2:
	.byte	W12
	.byte		N11	, Gn3, v100
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N12	, Ds3
	.byte	W24
	.byte	PEND
song006_6_1:
	.byte	W12
	.byte		N11	, Gn3, v100
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
song006_6_3:
	.byte	W12
	.byte		N11	, Gn3, v100
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N12	, Dn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_3
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_3
song006_6_4:
	.byte	W12
	.byte		N11	, Bn2, v100
	.byte	W24
	.byte		N12	, Cs3
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
song006_6_5:
	.byte	W12
	.byte		N28	, Cs3, v100
	.byte	W48
	.byte		N11	, As2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_6_4
song006_6_6:
	.byte	W12
	.byte		N23	, Cs3, v100
	.byte	W48
	.byte		N11	, As2
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song006_6_4
	.byte	PATT	
		.word	song006_6_5
	.byte	PATT	
		.word	song006_6_4
	.byte	PATT	
		.word	song006_6_6
	.byte	PATT	
		.word	song006_6_4
	.byte	PATT	
		.word	song006_6_6
	.byte	PATT	
		.word	song006_6_4
	.byte	PATT	
		.word	song006_6_6
	.byte	PATT	
		.word	song006_6_4
	.byte	PATT	
		.word	song006_6_6
	.byte	PATT	
		.word	song006_6_4
	.byte	PATT	
		.word	song006_6_6
	.byte	W12
	.byte		N06	, Bn2, v100
	.byte	W12
	.byte		N15	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N11	
	.byte	W24
	.byte		N06	
	.byte	W12
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N08	, Ds3
	.byte	W24
	.byte		N08	
	.byte	W24
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_3
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_2
	.byte	PATT	
		.word	song006_6_1
	.byte	PATT	
		.word	song006_6_3
	.byte	W72
	.byte	W72
	.byte	W48
	.byte	GOTO	
		.word	song006_6_7
	.byte	FINE

	.align 2
	.global song006
song006:	@ 0x0816E834
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song006_1		@ track
	.word	song006_2		@ track
	.word	song006_3		@ track
	.word	song006_4		@ track
	.word	song006_5		@ track
	.word	song006_6		@ track
