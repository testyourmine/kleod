	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song009_1
song009_1:	@ 0x0816F798
	.byte	KEYSH	, 0
	.byte	TEMPO	, 105
	.byte	VOICE	, 92
	.byte	PAN	, c_v+10
	.byte	VOL	, v087
	.byte		N68	, As3, v100
	.byte	W01
	.byte	VOICE	, 15
	.byte	W68
	.byte	W03
	.byte		N22	, An3
	.byte	W24
	.byte		N10	, As3
	.byte	W12
	.byte			Cn4
	.byte	W12
song009_1_1:
	.byte		N68	, As3, v100
	.byte	W72
	.byte		N22	, An3
	.byte	W24
	.byte		N10	, As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song009_1_1
song009_1_3:
	.byte		N68	, Dn4, v100
	.byte	W72
	.byte		N22	, Cn4
	.byte	W24
	.byte		N10	, As3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte	PEND
song009_1_4:
	.byte		N68	, Fn3, v100
	.byte	W72
	.byte		N22	, An3
	.byte	W24
	.byte		N10	, As3
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song009_1_1
	.byte	PATT	
		.word	song009_1_1
	.byte		N68	, Dn4, v100
	.byte	W72
	.byte		N44	, Ds4
	.byte	W48
song009_1_2:
	.byte		N68	, Fn4, v100
	.byte	W72
	.byte		N22	, Dn4
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte	PEND
	.byte		N68	, As3
	.byte	W72
	.byte		N92	, An3
	.byte	W48
	.byte	W48
	.byte		N44	, Gs3
	.byte	W48
	.byte		N22	, As3
	.byte	W24
	.byte		N92	, Gn3
	.byte	W96
	.byte		N22	, An3
	.byte	W24
	.byte	PATT	
		.word	song009_1_2
	.byte		N68	, Fs4, v100
	.byte	W72
	.byte		N22	, Dn4
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte		N68	, An4
	.byte	W72
	.byte		TIE	, Gn4
	.byte	W48
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W48
	.byte	W02
	.byte	PATT	
		.word	song009_1_1
	.byte	PATT	
		.word	song009_1_1
	.byte	PATT	
		.word	song009_1_1
	.byte	PATT	
		.word	song009_1_3
	.byte	PATT	
		.word	song009_1_4
	.byte	PATT	
		.word	song009_1_1
	.byte		N68	, As3, v100
	.byte	W72
	.byte		N10	, An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte		N06	, Cn4
	.byte	W08
	.byte			Dn4
	.byte	W08
	.byte			Ds4
	.byte	W08
	.byte		TIE	, Fn4
	.byte	W96
	.byte	W16
	.byte		EOT	
	.byte	W08
song009_1_5:
	.byte		TIE	, As4, v052
	.byte	W96
	.byte	W24
	.byte	PEND
	.byte	W96
	.byte	W22
	.byte		EOT	
	.byte	W02
song009_1_6:
	.byte		TIE	, Fn5, v052
	.byte	W96
	.byte	W24
	.byte	PEND
	.byte	W96
	.byte	W16
	.byte		EOT	
	.byte	W08
	.byte	PATT	
		.word	song009_1_5
	.byte	W96
	.byte	W22
	.byte		EOT	, As4
	.byte	W02
	.byte	PATT	
		.word	song009_1_6
	.byte	W96
	.byte	W16
	.byte		EOT	, Fn5
	.byte	W08
	.byte	PATT	
		.word	song009_1_1
	.byte	GOTO	
		.word	song009_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song009_2
song009_2:	@ 0x0816F88C
	.byte	KEYSH	, 0
	.byte	VOICE	, 8
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	W24
	.byte		TIE	, Fn3, v092
	.byte	W96
song009_2_4:
	.byte	W20
	.byte		EOT	, Fn3
	.byte	W04
	.byte		TIE	, Fn3, v092
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		N92	
	.byte	W96
	.byte	W24
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Fs3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		N44	
	.byte	W96
	.byte	W24
	.byte		TIE	, Ds3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Gn3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Ds3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Fn3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		TIE	, Gn3
	.byte	W96
	.byte	W20
	.byte		EOT	
	.byte	W04
	.byte		N44	, Fn3
	.byte	W48
	.byte			En3
	.byte	W48
song009_2_1:
	.byte		N68	, As3, v092
	.byte	W72
	.byte		N12	, An3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte	PEND
song009_2_2:
	.byte		N12	, Cn4, v092
	.byte	W24
	.byte		N68	, As3
	.byte	W72
	.byte		N44	, An3
	.byte	W24
	.byte	PEND
song009_2_3:
	.byte	W24
	.byte		N44	, As3, v092
	.byte	W48
	.byte		N12	, An3
	.byte	W24
	.byte			As3
	.byte	W24
	.byte	PEND
	.byte			Cn4
	.byte	W24
	.byte		N44	, As3
	.byte	W48
	.byte			An3
	.byte	W48
	.byte	PATT	
		.word	song009_2_1
	.byte	PATT	
		.word	song009_2_2
	.byte	PATT	
		.word	song009_2_3
	.byte		N12	, Cn4, v092
	.byte	W24
	.byte		N44	, As3
	.byte	W48
	.byte		N36	, Fn3, v076
	.byte	W48
	.byte	W24
	.byte		N92	, Fn3, v092
	.byte	W96
	.byte	GOTO	
		.word	song009_2_4
	.byte	FINE

	@********************** Track  3 **********************@

	.global song009_3
song009_3:	@ 0x0816F963
	.byte	KEYSH	, 0
	.byte	VOICE	, 11
	.byte	PAN	, c_v
	.byte	VOL	, v059
	.byte		TIE	, Ds2, v080
	.byte	W96
	.byte	W18
	.byte		EOT	
	.byte	W06
song009_3_1:
	.byte		TIE	, Dn2, v080
	.byte	W96
	.byte	W18
	.byte	PEND
	.byte		EOT	
	.byte	W06
song009_3_2:
	.byte		TIE	, Cs2, v080
	.byte	W96
	.byte	W18
	.byte	PEND
	.byte		EOT	
	.byte	W06
song009_3_6:
	.byte		TIE	, Cn2, v080
	.byte	W96
	.byte	W18
	.byte	PEND
	.byte		EOT	
	.byte	W06
song009_3_7:
	.byte		TIE	, Ds2, v080
	.byte	W96
	.byte	W18
	.byte	PEND
	.byte		EOT	
	.byte	W06
	.byte	PATT	
		.word	song009_3_1
	.byte		EOT	, Dn2
	.byte	W06
	.byte	PATT	
		.word	song009_3_2
	.byte		EOT	, Cs2
	.byte	W06
song009_3_8:
	.byte		N96	, Cn2, v080
	.byte	W96
	.byte	W24
	.byte	PEND
song009_3_3:
	.byte		TIE	, As1, v080
	.byte	W96
	.byte	W18
	.byte	PEND
	.byte		EOT	
	.byte	W06
song009_3_4:
	.byte		TIE	, An1, v080
	.byte	W96
	.byte	W18
	.byte	PEND
	.byte		EOT	
	.byte	W06
song009_3_5:
	.byte		TIE	, Gs1, v080
	.byte	W96
	.byte	W18
	.byte	PEND
	.byte		EOT	
	.byte	W06
	.byte		N96	, Gn1
	.byte	W96
	.byte		N24	, An1
	.byte	W24
	.byte	PATT	
		.word	song009_3_3
	.byte		EOT	, As1
	.byte	W06
	.byte	PATT	
		.word	song009_3_4
	.byte		EOT	, An1
	.byte	W06
	.byte	PATT	
		.word	song009_3_5
	.byte		EOT	, Gs1
	.byte	W06
	.byte		N72	, Gn1, v080
	.byte	W72
	.byte		N24	, An1
	.byte	W24
	.byte			Bn1
	.byte	W24
	.byte	PATT	
		.word	song009_3_6
	.byte		EOT	, Cn2
	.byte	W06
	.byte	PATT	
		.word	song009_3_1
	.byte		EOT	, Dn2
	.byte	W06
	.byte	PATT	
		.word	song009_3_7
	.byte		EOT	, Ds2
	.byte	W06
	.byte		TIE	, Fn2, v080
	.byte	W96
	.byte	W18
	.byte		EOT	
	.byte	W06
	.byte	PATT	
		.word	song009_3_6
	.byte		EOT	, Cn2
	.byte	W06
	.byte	PATT	
		.word	song009_3_1
	.byte		EOT	, Dn2
	.byte	W06
	.byte	PATT	
		.word	song009_3_7
	.byte		EOT	, Ds2
	.byte	W06
	.byte		N72	, Fn2, v080
	.byte	W72
	.byte		N48	, En2
	.byte	W48
	.byte	PATT	
		.word	song009_3_7
	.byte		EOT	, Ds2
	.byte	W06
	.byte	PATT	
		.word	song009_3_1
	.byte		EOT	, Dn2
	.byte	W06
	.byte	PATT	
		.word	song009_3_2
	.byte		EOT	, Cs2
	.byte	W06
	.byte	PATT	
		.word	song009_3_6
	.byte		EOT	, Cn2
	.byte	W06
	.byte	PATT	
		.word	song009_3_7
	.byte		EOT	, Ds2
	.byte	W06
	.byte	PATT	
		.word	song009_3_1
	.byte		EOT	, Dn2
	.byte	W06
	.byte	PATT	
		.word	song009_3_2
	.byte		EOT	, Cs2
	.byte	W06
	.byte	PATT	
		.word	song009_3_8
	.byte	PATT	
		.word	song009_3_7
	.byte		EOT	, Ds2
	.byte	W06
	.byte	GOTO	
		.word	song009_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song009_4
song009_4:	@ 0x0816FA70
	.byte	KEYSH	, 0
	.byte	VOICE	, 10
	.byte	PAN	, c_v
	.byte	VOL	, v073
	.byte	W96
	.byte	W24
song009_4_11:
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
song009_4_1:
	.byte		N24	, As1, v100
	.byte	W96
	.byte			As2
	.byte	W24
	.byte	PEND
song009_4_2:
	.byte		N24	, An1, v100
	.byte	W72
	.byte			An2
	.byte	W48
	.byte	PEND
song009_4_3:
	.byte		N24	, Gs1, v100
	.byte	W96
	.byte			Gs2
	.byte	W24
	.byte	PEND
	.byte			Gn1
	.byte	W72
	.byte			Gn2
	.byte	W48
	.byte	PATT	
		.word	song009_4_1
	.byte	PATT	
		.word	song009_4_2
	.byte	PATT	
		.word	song009_4_3
	.byte		N24	, Gn1, v100
	.byte	W96
	.byte	W24
song009_4_4:
	.byte		N24	, Cn1, v100
	.byte	W48
	.byte			Cn2
	.byte	W48
	.byte			Cn1
	.byte	W24
	.byte	PEND
song009_4_5:
	.byte		N24	, Dn1, v100
	.byte	W48
	.byte			Dn2
	.byte	W48
	.byte			Dn1
	.byte	W24
	.byte	PEND
song009_4_6:
	.byte		N24	, Ds1, v100
	.byte	W48
	.byte			Ds2
	.byte	W48
	.byte			Ds1
	.byte	W24
	.byte	PEND
	.byte			Fn1
	.byte	W48
	.byte			Fn2
	.byte	W48
	.byte			Fn1
	.byte	W24
	.byte	PATT	
		.word	song009_4_4
	.byte	PATT	
		.word	song009_4_5
	.byte	PATT	
		.word	song009_4_6
	.byte		N24	, Fn1, v100
	.byte	W48
	.byte			Fn2
	.byte	W72
song009_4_7:
	.byte		N24	, Ds1, v100
	.byte	W96
	.byte			Ds2
	.byte	W24
	.byte	PEND
song009_4_8:
	.byte		N24	, Dn1, v100
	.byte	W96
	.byte			Dn2
	.byte	W24
	.byte	PEND
song009_4_9:
	.byte		N24	, Cs1, v100
	.byte	W96
	.byte			Cs2
	.byte	W24
	.byte	PEND
song009_4_10:
	.byte		N24	, Cn1, v100
	.byte	W96
	.byte			Cn2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song009_4_7
	.byte	PATT	
		.word	song009_4_8
	.byte	PATT	
		.word	song009_4_9
	.byte	PATT	
		.word	song009_4_10
	.byte	W96
	.byte	W24
	.byte	GOTO	
		.word	song009_4_11
	.byte	FINE

	@********************** Track  5 **********************@

	.global song009_5
song009_5:	@ 0x0816FB23
	.byte	KEYSH	, 0
	.byte	VOICE	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v032
	.byte		N10	, Ds4, v080
	.byte	W24
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N12	, Bn4
	.byte	W12
	.byte		N10	, Ds4
	.byte	W12
song009_5_1:
	.byte		N10	, Ds4, v080
	.byte	W24
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N12	, Bn4
	.byte	W12
	.byte		N10	, Ds4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song009_5_1
song009_5_2:
	.byte		N10	, Ds4, v080
	.byte	W24
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N12	, Bn4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
song009_5_3:
	.byte		N10	, Ds4, v080
	.byte	W24
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N03	, An3, v040
	.byte	W03
	.byte			An3, v044
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			An3, v048
	.byte	W03
	.byte			An3, v052
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			An3, v056
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			An3, v060
	.byte	W03
	.byte			An3, v064
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			An3, v068
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			An3, v072
	.byte	W03
	.byte			An3, v076
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte	PEND
song009_5_4:
	.byte		N24	, An3, v100
	.byte	W24
	.byte		N06	, Ds4, v080
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N12	, Bn4
	.byte	W12
	.byte		N10	, Ds4
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_2
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_3
	.byte	PATT	
		.word	song009_5_4
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
song009_5_5:
	.byte		N10	, Ds4, v080
	.byte	W24
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N10	
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte		N06	, An3, v048
	.byte	W06
	.byte			An3, v052
	.byte	W06
	.byte			An3, v056
	.byte	W06
	.byte			An3, v064
	.byte	W06
	.byte			An3, v068
	.byte	W06
	.byte			An3, v072
	.byte	W06
	.byte			An3, v076
	.byte	W06
	.byte			An3, v080
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song009_5_4
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_5
	.byte	PATT	
		.word	song009_5_4
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_2
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_1
	.byte	PATT	
		.word	song009_5_3
	.byte	PATT	
		.word	song009_5_4
	.byte	GOTO	
		.word	song009_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song009_6
song009_6:	@ 0x0816FC7E
	.byte	KEYSH	, 0
	.byte	VOICE	, 9
	.byte	PAN	, c_v
	.byte	VOL	, v059
	.byte	W24
	.byte		TIE	, Dn3, v080
	.byte	W96
song009_6_1:
	.byte	W24
	.byte		EOT	, Dn3
	.byte		TIE	, Dn3, v080
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	, Cs3
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	, Cs3
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		N96	, Dn3
	.byte	W96
	.byte	W24
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		N48	
	.byte	W96
	.byte	W24
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	, Cn3
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		TIE	
	.byte	W96
	.byte	W24
	.byte		EOT	
	.byte		N96	
	.byte	W96
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W24
	.byte		N96	
	.byte	W96
	.byte	GOTO	
		.word	song009_6_1
	.byte	FINE

	@********************** Track  7 **********************@

	.global song009_7
song009_7:	@ 0x0816FD09
	.byte	KEYSH	, 0
	.byte	VOICE	, 7
	.byte	PAN	, c_v-10
	.byte	VOL	, v056
	.byte		N09	, Fn4, v076
	.byte	W24
	.byte			Gn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			As4
	.byte	W72
song009_7_1:
	.byte		N09	, Fn4, v076
	.byte	W24
	.byte			Gn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			As4
	.byte	W72
	.byte	PEND
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_1
song009_7_2:
	.byte		N09	, Fn4, v076
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			As4
	.byte	W72
	.byte	PEND
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_1
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_2
	.byte	PATT	
		.word	song009_7_2
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
	.byte	W96
	.byte	W24
song009_7_3:
	.byte		N09	, An4, v076
	.byte	W24
	.byte			As4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte		N21	, As4
	.byte	W72
	.byte	PEND
	.byte	PATT	
		.word	song009_7_3
	.byte	PATT	
		.word	song009_7_3
	.byte		N09	, An4, v076
	.byte	W24
	.byte			As4
	.byte	W12
	.byte			Cn5
	.byte	W12
	.byte		N21	, Fn5
	.byte	W72
	.byte	PATT	
		.word	song009_7_1
	.byte	GOTO	
		.word	song009_7_1
	.byte	FINE

	.align 2
	.global song009
song009:	@ 0x0816FDD0
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song009_1		@ track
	.word	song009_2		@ track
	.word	song009_3		@ track
	.word	song009_4		@ track
	.word	song009_5		@ track
	.word	song009_6		@ track
	.word	song009_7		@ track
