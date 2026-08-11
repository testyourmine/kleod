	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song005_1
song005_1:	@ 0x0816D9FC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 49
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N68	, En3, v100
	.byte	W72
	.byte		N40	, Dn3
	.byte	W48
	.byte		N10	, Gn3, v104
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			En3
	.byte	W24
	.byte	W24
	.byte			Gn3
	.byte	W24
	.byte			Dn3, v100
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W72
song005_1_7:
	.byte	VOICE	, 48
	.byte	VOL	, v087
	.byte	PAN	, c_v
	.byte	W72
	.byte		N68	, Dn5, v104
	.byte	W72
song005_1_1:
	.byte		N56	, Cn5, v108
	.byte	W60
	.byte		N05	, Bn4, v100
	.byte	W06
	.byte			As4, v104
	.byte	W06
	.byte	PEND
	.byte		N92	, An4, v096
	.byte	W72
song005_1_2:
	.byte	W24
	.byte		N23	, Gn4, v100
	.byte	W24
	.byte			Cn5, v104
	.byte	W24
	.byte	PEND
	.byte		N11	, An4, v096
	.byte	W12
	.byte		N05	, En4, v100
	.byte	W06
	.byte			Ds4, v092
	.byte	W06
	.byte		TIE	, Dn4
	.byte	W48
	.byte	W56
	.byte	W01
	.byte		EOT	
	.byte	W15
	.byte	W72
	.byte	W72
	.byte		N68	, Dn5, v104
	.byte	W72
	.byte	PATT	
		.word	song005_1_1
	.byte		N92	, An4, v096
	.byte	W72
	.byte	PATT	
		.word	song005_1_2
	.byte		N11	, An4, v096
	.byte	W12
	.byte		N05	, En4, v100
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte		TIE	, Dn4
	.byte	W48
	.byte	W56
	.byte	W01
	.byte		EOT	
	.byte	W15
	.byte	W72
	.byte	VOICE	, 49
	.byte	PAN	, c_v
	.byte	VOL	, v075
	.byte	W48
	.byte		N10	, Gn3
	.byte	W12
	.byte			Fn3
	.byte	W12
	.byte		N42	, En3
	.byte	W48
	.byte		N20	, An3
	.byte	W24
	.byte		N42	, Dn3
	.byte	W48
	.byte		N23	, Gn3, v104
	.byte	W24
song005_1_4:
	.byte		N56	, Cn3, v100
	.byte	W60
	.byte		N11	, Bn2, v108
	.byte	W12
	.byte	PEND
	.byte			An2, v100
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn2, v104
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Dn3, v100
	.byte	W12
song005_1_5:
	.byte		N44	, En3, v108
	.byte	W48
	.byte		N23	, An3, v100
	.byte	W24
	.byte	PEND
song005_1_6:
	.byte		N23	, Bn3, v108
	.byte	W24
	.byte			Gn3, v104
	.byte	W24
	.byte			Cn3, v100
	.byte	W24
	.byte	PEND
song005_1_3:
	.byte		N44	, Dn3, v100
	.byte	W48
	.byte		N23	, Gn3, v104
	.byte	W24
	.byte	PEND
	.byte		N44	, Fs3
	.byte	W48
	.byte		N11	, Gn3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N44	, En3, v100
	.byte	W48
	.byte		N23	, An3
	.byte	W24
	.byte	PATT	
		.word	song005_1_3
	.byte	PATT	
		.word	song005_1_4
	.byte		N11	, An2, v100
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn2, v104
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte			Dn3, v108
	.byte	W12
	.byte	PATT	
		.word	song005_1_5
	.byte	PATT	
		.word	song005_1_6
	.byte		TIE	, Dn3, v100
	.byte	W72
	.byte	W68
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		.word	song005_1_7
	.byte	FINE

	@********************** Track  2 **********************@

	.global song005_2
song005_2:	@ 0x0816DB0E
	.byte	KEYSH	, 0
	.byte	VOICE	, 47
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte		N11	, Fn2, v104
	.byte	W12
	.byte			Cn3, v100
	.byte	W12
	.byte		N23	, Dn4
	.byte		N23	, Fn4
	.byte	W24
	.byte			Gn4, v104
	.byte	W24
	.byte		N11	, En2, v096
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En4, v104
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte		N23	, Cn4
	.byte	W24
	.byte		N11	, Dn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N23	, Dn4, v100
	.byte	W24
	.byte			An3, v096
	.byte	W24
	.byte		N11	, Dn2, v104
	.byte	W12
	.byte			An2, v096
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N56	, Fs3, v092
	.byte		N56	, An3
	.byte	W24
	.byte	W72
	.byte	W72
song005_2_1:
	.byte		N10	, Dn2, v100
	.byte	W12
	.byte			An2, v104
	.byte	W12
	.byte		N36	, An3, v096
	.byte		N36	, Dn4, v100
	.byte	W48
	.byte	PEND
song005_2_2:
	.byte		N10	, Dn2, v100
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte		N36	, Gs3, v104
	.byte		N36	, Cn4
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song005_2_1
	.byte	PATT	
		.word	song005_2_2
	.byte	PATT	
		.word	song005_2_1
song005_2_3:
	.byte		N10	, Dn2, v088
	.byte	W12
	.byte			An2, v092
	.byte	W12
	.byte		N36	, Gs3, v104
	.byte		N36	, Cn4
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song005_2_1
	.byte	PATT	
		.word	song005_2_3
	.byte	PATT	
		.word	song005_2_1
	.byte	PATT	
		.word	song005_2_2
	.byte	PATT	
		.word	song005_2_1
	.byte	PATT	
		.word	song005_2_2
	.byte	PATT	
		.word	song005_2_1
	.byte	PATT	
		.word	song005_2_2
	.byte	PATT	
		.word	song005_2_1
	.byte	PATT	
		.word	song005_2_2
	.byte	PATT	
		.word	song005_2_1
	.byte	PATT	
		.word	song005_2_2
song005_2_4:
	.byte		N10	, Fn2, v100
	.byte	W12
	.byte		N18	, Cn3, v104
	.byte	W60
	.byte	PEND
song005_2_5:
	.byte		N10	, En2, v100
	.byte	W12
	.byte		N18	, Bn2, v096
	.byte	W60
	.byte	PEND
song005_2_6:
	.byte		N10	, Dn2, v100
	.byte	W12
	.byte		N18	, An2, v096
	.byte	W60
	.byte	PEND
song005_2_7:
	.byte		N10	, Cn2, v088
	.byte	W12
	.byte		N18	, Gn2, v104
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song005_2_4
	.byte	PATT	
		.word	song005_2_5
	.byte	PATT	
		.word	song005_2_6
	.byte	PATT	
		.word	song005_2_6
	.byte	PATT	
		.word	song005_2_4
	.byte	PATT	
		.word	song005_2_5
	.byte	PATT	
		.word	song005_2_6
	.byte	PATT	
		.word	song005_2_7
	.byte	PATT	
		.word	song005_2_4
	.byte	PATT	
		.word	song005_2_5
	.byte	PATT	
		.word	song005_2_6
	.byte		N10	, Dn2, v104
	.byte	W12
	.byte		N18	, An2, v096
	.byte	W60
	.byte	PATT	
		.word	song005_2_1
	.byte	PATT	
		.word	song005_2_2
	.byte	PATT	
		.word	song005_2_1
	.byte	GOTO	
		.word	song005_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song005_3
song005_3:	@ 0x0816DC41
	.byte	KEYSH	, 0
	.byte	VOICE	, 52
	.byte	PAN	, c_v
	.byte	VOL	, v054
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W11
	.byte	PAN	, c_v+63
	.byte	W01
	.byte		N04	, An3, v100
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Dn4, v060
	.byte	W12
	.byte			An3
	.byte	W11
	.byte			Dn4, v020
	.byte	W01
song005_3_7:
	.byte	W12
	.byte		N04	, An3, v020
	.byte	W60
song005_3_1:
	.byte	W12
	.byte		N04	, An3, v100
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Dn4, v060
	.byte	W12
	.byte			An3
	.byte	W12
	.byte	PEND
song005_3_2:
	.byte		N04	, Dn4, v020
	.byte	W12
	.byte			An3
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song005_3_1
	.byte	PATT	
		.word	song005_3_2
	.byte	PATT	
		.word	song005_3_1
	.byte	PATT	
		.word	song005_3_2
	.byte	PATT	
		.word	song005_3_1
	.byte	PATT	
		.word	song005_3_2
	.byte	PATT	
		.word	song005_3_1
	.byte	PATT	
		.word	song005_3_2
	.byte	PATT	
		.word	song005_3_1
	.byte	PATT	
		.word	song005_3_2
	.byte	PATT	
		.word	song005_3_1
	.byte	PATT	
		.word	song005_3_2
	.byte	W72
	.byte	W72
	.byte	PAN	, c_v
	.byte	VOL	, v041
	.byte	W24
	.byte		N11	, An3, v084
	.byte	W12
	.byte			En4, v096
	.byte	W12
	.byte			Dn4, v092
	.byte	W12
	.byte			Cn4, v088
	.byte	W12
	.byte			Bn3, v104
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4
	.byte	W36
	.byte			Bn3, v092
	.byte	W12
song005_3_3:
	.byte		N11	, An3, v092
	.byte	W24
	.byte			An3, v096
	.byte	W12
	.byte			Dn4, v092
	.byte	W12
	.byte			En4, v088
	.byte	W12
	.byte			An3, v084
	.byte	W12
	.byte	PEND
song005_3_6:
	.byte	W24
	.byte		N11	, Cn4, v096
	.byte	W12
	.byte			Dn4, v088
	.byte	W12
	.byte			En4, v100
	.byte	W24
	.byte	PEND
song005_3_4:
	.byte	W24
	.byte		N11	, An3, v084
	.byte	W12
	.byte			En4, v096
	.byte	W12
	.byte			Dn4, v092
	.byte	W12
	.byte			Cn4, v088
	.byte	W12
	.byte	PEND
song005_3_5:
	.byte		N11	, Bn3, v104
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Dn4, v100
	.byte	W24
	.byte			Gn3, v088
	.byte	W12
	.byte			Bn3, v092
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song005_3_3
	.byte	W24
	.byte		N11	, Dn4, v092
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Bn3, v104
	.byte	W24
	.byte	PATT	
		.word	song005_3_4
	.byte	PATT	
		.word	song005_3_5
	.byte	PATT	
		.word	song005_3_3
	.byte	PATT	
		.word	song005_3_6
	.byte	PATT	
		.word	song005_3_4
	.byte	PATT	
		.word	song005_3_5
	.byte	PATT	
		.word	song005_3_3
	.byte	W12
	.byte		N11	, An3, v092
	.byte	W12
	.byte			Dn4, v084
	.byte	W12
	.byte			En4, v088
	.byte	W12
	.byte			Bn3
	.byte	W23
	.byte	PAN	, c_v+63
	.byte	W01
	.byte	W12
	.byte		N04	, An3, v100
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			An3, v080
	.byte	W12
	.byte			Dn4, v060
	.byte	W12
	.byte			An3
	.byte	W11
	.byte			Dn4, v020
	.byte	W01
	.byte	W12
	.byte			An3
	.byte	W60
	.byte	PATT	
		.word	song005_3_1
	.byte	GOTO	
		.word	song005_3_7
	.byte	FINE

	@********************** Track  4 **********************@

	.global song005_4
song005_4:	@ 0x0816DD78
	.byte	KEYSH	, 0
	.byte	VOICE	, 51
	.byte	PAN	, c_v
	.byte	VOL	, v027
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W32
	.byte	W03
	.byte	VOICE	, 126
	.byte	VOL	, v054
	.byte	PAN	, c_v-64
	.byte	W01
	.byte		N12	, Gn4, v100
	.byte	W12
	.byte			En4
	.byte	W24
song005_4_1:
	.byte	W36
	.byte		N12	, Dn4, v100
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte	PEND
song005_4_2:
	.byte	W36
	.byte		N12	, Gn4, v100
	.byte	W12
	.byte			En4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song005_4_1
	.byte	PATT	
		.word	song005_4_2
	.byte	PATT	
		.word	song005_4_1
	.byte	PATT	
		.word	song005_4_2
	.byte	PATT	
		.word	song005_4_1
	.byte	PATT	
		.word	song005_4_2
	.byte	PATT	
		.word	song005_4_1
	.byte	PATT	
		.word	song005_4_2
	.byte	PATT	
		.word	song005_4_1
	.byte	PATT	
		.word	song005_4_2
	.byte	PATT	
		.word	song005_4_1
	.byte	PATT	
		.word	song005_4_2
	.byte	PATT	
		.word	song005_4_1
	.byte	PATT	
		.word	song005_4_2
	.byte	PATT	
		.word	song005_4_1
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
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	PATT	
		.word	song005_4_2
	.byte	PATT	
		.word	song005_4_1
	.byte	PATT	
		.word	song005_4_2
	.byte	GOTO	
		.word	song005_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song005_5
song005_5:	@ 0x0816DE17
	.byte	KEYSH	, 0
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
song005_5_5:
	.byte	VOICE	, 50
	.byte	PAN	, c_v
	.byte	VOL	, v082
	.byte	W23
	.byte		v015
	.byte	W01
	.byte		N68	, Cn4, v072
	.byte	W03
	.byte	VOL	, v021
	.byte	W04
	.byte		v034
	.byte	W06
	.byte		v047
	.byte	W06
	.byte		v061
	.byte	W05
	.byte		v082
	.byte	W24
	.byte		v082
	.byte	W03
	.byte		v054
	.byte	W03
	.byte		v041
	.byte	W02
	.byte		v027
	.byte	W03
	.byte		v013
	.byte	W60
	.byte	W01
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W48
	.byte		v082
	.byte	W24
song005_5_1:
	.byte		N23	, An3, v108
	.byte	W24
	.byte		N36	, Dn4, v096
	.byte	W48
	.byte	PEND
	.byte		N23	, Bn3, v108
	.byte	W24
	.byte			En4, v104
	.byte	W24
	.byte			An3, v096
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	PATT	
		.word	song005_5_1
	.byte		N23	, Bn3, v108
	.byte	W24
	.byte			Cn4, v104
	.byte	W24
	.byte			Dn4, v096
	.byte	W24
song005_5_2:
	.byte	W24
	.byte		N06	, En4, v096
	.byte	W14
	.byte	PAN	, c_v-20
	.byte	W01
	.byte		N06	, En4, v064
	.byte	W14
	.byte	PAN	, c_v+20
	.byte	W01
	.byte		N06	, En4, v024
	.byte	W18
	.byte	PEND
song005_5_3:
	.byte	W23
	.byte	PAN	, c_v
	.byte	W01
	.byte		N06	, Dn4, v096
	.byte	W14
	.byte	PAN	, c_v+20
	.byte	W01
	.byte		N06	, Dn4, v064
	.byte	W14
	.byte	PAN	, c_v-20
	.byte	W01
	.byte		N06	, Dn4, v024
	.byte	W18
	.byte	PEND
song005_5_4:
	.byte	W23
	.byte	PAN	, c_v
	.byte	W01
	.byte		N06	, Cn4, v096
	.byte	W14
	.byte	PAN	, c_v-20
	.byte	W01
	.byte		N06	, Cn4, v064
	.byte	W14
	.byte	PAN	, c_v+20
	.byte	W01
	.byte		N06	, Cn4, v024
	.byte	W18
	.byte	PEND
	.byte	W23
	.byte	PAN	, c_v
	.byte	W01
	.byte		N06	, Bn3, v096
	.byte	W14
	.byte	PAN	, c_v-20
	.byte	W01
	.byte		N06	, Bn3, v064
	.byte	W14
	.byte	PAN	, c_v+20
	.byte	W01
	.byte		N06	, Bn3, v024
	.byte	W17
	.byte	PAN	, c_v
	.byte	VOL	, v013
	.byte	W01
	.byte		N68	, An3, v096
	.byte	W01
	.byte	VOL	, v021
	.byte	W02
	.byte		v028
	.byte	W02
	.byte		v034
	.byte	W02
	.byte		v041
	.byte	W02
	.byte		v048
	.byte	W03
	.byte		v054
	.byte	W02
	.byte		v061
	.byte	W02
	.byte		v068
	.byte	W02
	.byte		v071
	.byte	W02
	.byte		v075
	.byte	W52
	.byte		N68	, Gn3, v084
	.byte	W72
	.byte		TIE	, An3
	.byte	W72
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N11	, Cn4, v088
	.byte	W12
	.byte			Dn4, v092
	.byte	W12
	.byte	PATT	
		.word	song005_5_2
	.byte	PATT	
		.word	song005_5_3
	.byte	PATT	
		.word	song005_5_4
	.byte	W23
	.byte	PAN	, c_v
	.byte	W01
	.byte		N06	, Bn3, v096
	.byte	W14
	.byte	PAN	, c_v-20
	.byte	W01
	.byte		N06	, Bn3, v064
	.byte	W14
	.byte	PAN	, c_v+20
	.byte	W01
	.byte		N06	, Bn3, v024
	.byte	W17
	.byte	PAN	, c_v
	.byte	W01
	.byte		N68	, An3, v088
	.byte	W01
	.byte	VOL	, v001
	.byte	W01
	.byte		v007
	.byte	W01
	.byte		v014
	.byte	W01
	.byte		v020
	.byte	W01
	.byte		v028
	.byte	W01
	.byte		v034
	.byte	W01
	.byte		v041
	.byte	W01
	.byte		v047
	.byte	W01
	.byte		v051
	.byte	W01
	.byte		v054
	.byte	W60
	.byte	W02
	.byte		N44	, Gn3, v096
	.byte	W48
	.byte		N23	, Bn3
	.byte	W24
	.byte		N44	, An3, v088
	.byte	W48
	.byte		N23	, Gn3, v096
	.byte	W24
	.byte		N68	, Fs3
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	GOTO	
		.word	song005_5_5
	.byte	FINE

	@********************** Track  6 **********************@

	.global song005_6
song005_6:	@ 0x0816DF57
	.byte	KEYSH	, 0
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	VOICE	, 64
	.byte	PAN	, c_v
	.byte	VOL	, v041
	.byte	W60
	.byte		N04	, Fn4, v100
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Dn5
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gn4
	.byte	W09
	.byte	VOL	, v032
	.byte	PAN	, c_v+63
	.byte	W03
	.byte		N04	, Dn5
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gn4
	.byte	W11
	.byte	PAN	, c_v-64
	.byte	VOL	, v023
	.byte	W01
	.byte		N04	, Dn5
	.byte	W11
	.byte			Gn4
	.byte	W13
	.byte			An4
	.byte	W12
	.byte			Gn4
	.byte	W60
song005_6_3:
	.byte	VOL	, v027
	.byte	PAN	, c_v
	.byte	W72
song005_6_1:
	.byte	W24
	.byte		N23	, An3, v100
	.byte	W24
	.byte			En3
	.byte	W24
	.byte	PEND
	.byte		N68	, Gn3
	.byte	W72
song005_6_2:
	.byte	W24
	.byte		N23	, Fs3, v100
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte	PEND
	.byte		N44	, En3
	.byte	W48
	.byte		N23	, Dn3
	.byte	W24
	.byte		TIE	, En3
	.byte	W72
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W24
	.byte	W01
	.byte	W72
	.byte	W72
	.byte	PATT	
		.word	song005_6_1
	.byte		N68	, Gn3, v100
	.byte	W72
	.byte	PATT	
		.word	song005_6_2
	.byte		N23	, Bn2, v100
	.byte	W24
	.byte			Cn3
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte		TIE	, En3
	.byte	W72
	.byte	W54
	.byte		EOT	
	.byte	W18
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
	.byte	GOTO	
		.word	song005_6_3
	.byte	FINE

	.align 2
	.global song005
song005:	@ 0x0816DFF0
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song005_1		@ track
	.word	song005_2		@ track
	.word	song005_3		@ track
	.word	song005_4		@ track
	.word	song005_5		@ track
	.word	song005_6		@ track
