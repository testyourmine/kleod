	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song023_1
song023_1:	@ 0x081735E8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 105
	.byte	PAN	, c_v+15
	.byte	VOL	, v074
	.byte	W96
song023_1_1:
	.byte	W92
	.byte	W01
	.byte		N06	, Bn3, v068
	.byte	W03
	.byte	W03
	.byte			Cn4
	.byte	W06
	.byte			Cs4, v072
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Ds4, v080
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Fs4, v088
	.byte	W06
	.byte			Cs4, v068
	.byte	W06
	.byte			Dn4, v072
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			En4, v076
	.byte	W06
	.byte			Fn4, v080
	.byte	W06
	.byte			Fs4, v084
	.byte	W06
	.byte			Gn4, v088
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			En4, v068
	.byte	W03
	.byte	W03
	.byte			Fn4, v072
	.byte	W06
	.byte			Fs4, v076
	.byte	W06
	.byte			Gn4, v080
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			As4, v092
	.byte	W06
	.byte			Bn4, v096
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			As4, v092
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			Gs4, v084
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Fn4, v076
	.byte	W09
	.byte	W09
	.byte			Ds5, v100
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Dn5
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Cs5
	.byte	W12
	.byte		N06	
	.byte	W03
	.byte	W21
	.byte			Cn5
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N03	, Ds4, v076
	.byte	W03
	.byte			Gs4, v088
	.byte	W03
	.byte			As4, v100
	.byte	W03
	.byte			Dn5, v112
	.byte	W03
	.byte		N06	, Ds5, v127
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte		N03	, Bn4, v088
	.byte	W03
	.byte			Cn5, v076
	.byte	W03
	.byte			Bn4, v064
	.byte	W03
	.byte			Cn5, v056
	.byte	W03
	.byte		N06	, Cs5, v100
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Cn5
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Bn4
	.byte	W12
	.byte		N06	
	.byte	W03
	.byte	W21
	.byte			As4
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N03	, Dn4, v068
	.byte	W03
	.byte			Gn4, v080
	.byte	W03
	.byte			An4, v096
	.byte	W03
	.byte			Cs5, v112
	.byte	W03
	.byte		N06	, Dn5, v108
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte			Cn5
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte		N03	, As4, v080
	.byte	W03
	.byte			Bn4, v072
	.byte	W03
	.byte			As4, v064
	.byte	W03
	.byte			Bn4, v060
	.byte	W03
	.byte			As4, v052
	.byte	W03
	.byte			Bn4, v048
	.byte	W03
	.byte			As4, v040
	.byte	W03
	.byte			Bn4, v036
	.byte	W03
	.byte			As4, v028
	.byte	W72
	.byte	W03
	.byte	W92
	.byte	W01
	.byte		N06	, Cs4, v068
	.byte	W03
	.byte	W03
	.byte			Dn4
	.byte	W06
	.byte			Ds4, v072
	.byte	W06
	.byte			En4, v076
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			Fs4, v080
	.byte	W06
	.byte			Gn4, v084
	.byte	W06
	.byte			Gs4
	.byte	W06
	.byte			An4, v088
	.byte	W06
	.byte			As4, v092
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			Cn5, v096
	.byte	W06
	.byte			Cs5, v100
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Ds5, v104
	.byte	W06
	.byte			En5, v108
	.byte	W06
	.byte			Cs5, v068
	.byte	W03
	.byte	W03
	.byte			Dn5, v072
	.byte	W06
	.byte			Ds5, v080
	.byte	W06
	.byte			En5, v084
	.byte	W06
	.byte			Fn5, v092
	.byte	W06
	.byte			Fs5, v096
	.byte	W06
	.byte			Gn5, v100
	.byte	W06
	.byte			Gs5, v108
	.byte	W06
	.byte			An5, v112
	.byte	W06
	.byte			Gs5, v108
	.byte	W06
	.byte			Gn5, v104
	.byte	W06
	.byte			Fs5, v100
	.byte	W06
	.byte			Fn5, v096
	.byte	W06
	.byte			En5, v092
	.byte	W06
	.byte			Ds5, v088
	.byte	W06
	.byte			Dn5, v084
	.byte	W09
	.byte	W09
	.byte			Cn5, v100
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Bn4
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			As4
	.byte	W12
	.byte		N06	
	.byte	W03
	.byte	W21
	.byte			An4
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N03	, Fn4, v056
	.byte	W03
	.byte			As4, v088
	.byte	W03
	.byte			Cn5, v100
	.byte	W03
	.byte			En5, v112
	.byte	W03
	.byte		N06	, Fn5, v108
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte		N03	, Cs5, v100
	.byte	W03
	.byte			Dn5, v084
	.byte	W03
	.byte			Cs5, v072
	.byte	W03
	.byte			Dn5, v060
	.byte	W03
	.byte		N06	, Bn4, v100
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			As4
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			An4
	.byte	W12
	.byte		N06	
	.byte	W03
	.byte	W21
	.byte			Gs4
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte		N03	, En4, v076
	.byte	W03
	.byte			An4, v088
	.byte	W03
	.byte			Bn4, v100
	.byte	W03
	.byte			Ds5, v112
	.byte	W03
	.byte		N06	, En5, v108
	.byte	W06
	.byte			Ds5
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte			Cs5
	.byte	W06
	.byte		N03	, Cn5, v080
	.byte	W03
	.byte			Cs5
	.byte	W03
	.byte			Cn5, v076
	.byte	W03
	.byte			Cs5, v072
	.byte	W03
	.byte			Cn5, v064
	.byte	W03
	.byte			Cs5, v056
	.byte	W03
	.byte			Cn5, v048
	.byte	W03
	.byte			Cs5, v044
	.byte	W03
	.byte			Cn5, v036
	.byte	W72
	.byte	W03
	.byte	GOTO	
		.word	song023_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song023_2
song023_2:	@ 0x081737B2
	.byte	KEYSH	, 0
	.byte	VOICE	, 106
	.byte	PAN	, c_v-10
	.byte	VOL	, v043
	.byte		N06	, Cs3, v080
	.byte	W06
	.byte			Dn3, v084
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			En3, v088
	.byte	W06
	.byte			Fn3, v092
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			An3, v100
	.byte	W06
	.byte			As3, v104
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cn4, v108
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4, v112
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			En4, v116
	.byte	W06
song023_2_1:
	.byte		N06	, Fn4, v120
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			Ds4, v112
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4, v108
	.byte	W06
	.byte			Cn4, v104
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			As3, v100
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gs3, v096
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fs3, v092
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			En3, v088
	.byte	W06
	.byte			Ds3, v084
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			An3, v092
	.byte	W06
	.byte			As3, v096
	.byte	W06
	.byte			Bn3, v100
	.byte	W06
	.byte			Cn4, v104
	.byte	W06
	.byte			Cs4, v112
	.byte	W06
	.byte			Dn4, v116
	.byte	W06
	.byte			Ds4, v120
	.byte	W06
	.byte			As3, v084
	.byte	W06
	.byte			Bn3, v088
	.byte	W06
	.byte			Cn4, v092
	.byte	W06
	.byte			Cs4, v100
	.byte	W06
	.byte			Dn4, v104
	.byte	W06
	.byte			Ds4, v112
	.byte	W06
	.byte			En4, v116
	.byte	W06
	.byte			Fn4, v120
	.byte	W06
	.byte			Cs4, v088
	.byte	W06
	.byte			Dn4, v092
	.byte	W06
	.byte			Ds4, v096
	.byte	W06
	.byte			En4, v104
	.byte	W06
	.byte			Fn4, v108
	.byte	W06
	.byte			Fs4, v112
	.byte	W06
	.byte			Gn4, v116
	.byte	W06
	.byte			Gs4, v124
	.byte	W06
	.byte			An4, v127
	.byte	W06
	.byte			Gs4, v124
	.byte	W06
	.byte			Gn4, v120
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			Fn4, v112
	.byte	W06
	.byte			En4, v108
	.byte	W06
	.byte			Ds4, v104
	.byte	W06
	.byte			Dn4, v100
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte			As2, v084
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Cn3, v088
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Dn3, v092
	.byte	W06
	.byte			Ds3, v096
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fn3, v100
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3, v104
	.byte	W06
	.byte			Gs3
	.byte	W06
	.byte			An3, v108
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Bn3, v112
	.byte	W06
	.byte			Cn4, v116
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Cn4, v112
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			As3, v108
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gs3, v104
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fs3, v100
	.byte	W06
	.byte			Fn3, v096
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Ds3, v092
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Cs3, v088
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Bn2, v084
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Bn2, v088
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Cs3, v092
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Ds3, v096
	.byte	W06
	.byte			En3, v100
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte			Fs3, v104
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Gs3, v108
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			As3, v112
	.byte	W06
	.byte			Bn3, v116
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Cs4, v120
	.byte	W06
	.byte			As3, v084
	.byte	W06
	.byte			Bn3, v088
	.byte	W06
	.byte			Cn4, v092
	.byte	W06
	.byte			Cs4, v096
	.byte	W06
	.byte			Dn4, v100
	.byte	W06
	.byte			Ds4, v104
	.byte	W06
	.byte			En4, v108
	.byte	W06
	.byte			Fn4, v112
	.byte	W06
	.byte			Fs4, v116
	.byte	W06
	.byte			Fn4
	.byte	W06
	.byte			En4, v112
	.byte	W06
	.byte			Ds4, v108
	.byte	W06
	.byte			Dn4, v104
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Cn4, v100
	.byte	W06
	.byte			Bn3, v096
	.byte	W06
	.byte	W12
	.byte			As3, v100
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			An3
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Gs3
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Gn3
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Fs3
	.byte	W36
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Gn3
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Fs3
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			Fn3
	.byte	W12
	.byte		N06	
	.byte	W24
	.byte			En3
	.byte	W36
	.byte			Cs3, v080
	.byte	W06
	.byte			Dn3, v084
	.byte	W06
	.byte			Ds3
	.byte	W06
	.byte			En3, v088
	.byte	W06
	.byte			Fn3, v092
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte			Gs3, v100
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			As3, v104
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cn4, v108
	.byte	W06
	.byte			Cs4, v112
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Ds4, v116
	.byte	W06
	.byte			En4, v120
	.byte	W06
	.byte	GOTO	
		.word	song023_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song023_3
song023_3:	@ 0x08173973
	.byte	KEYSH	, 0
	.byte	VOICE	, 44
	.byte	PAN	, c_v
	.byte	VOL	, v081
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
song023_3_1:
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song023_3_1
	.byte	PATT	
		.word	song023_3_1
	.byte		N48	, Dn1, v060
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
song023_3_2:
	.byte		N09	, Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N48	, Dn1, v060
	.byte	W12
	.byte		N05	, Cs1, v127
	.byte	W06
	.byte			Cs1, v108
	.byte	W06
	.byte			Cs1, v112
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song023_3_3:
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte	PEND
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1
	.byte	W12
	.byte			Cn1, v100
	.byte	W12
	.byte			Cn1, v108
	.byte	W12
	.byte			Cn1, v120
	.byte	W12
song023_3_4:
	.byte		N48	, Dn1, v060
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte		N10	, Cn1, v092
	.byte	W12
	.byte		N09	, Cs1, v080
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song023_3_1
	.byte	PATT	
		.word	song023_3_1
	.byte	PATT	
		.word	song023_3_1
	.byte		N48	, Dn1, v060
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte	PATT	
		.word	song023_3_2
	.byte	PATT	
		.word	song023_3_3
	.byte		N09	, Cs1, v092
	.byte	W12
	.byte		N10	, Cn1, v127
	.byte	W12
	.byte		N09	, Cs1, v112
	.byte	W12
	.byte			Cs1, v092
	.byte	W12
	.byte		N10	, Cn1
	.byte	W12
	.byte			Cn1, v100
	.byte	W12
	.byte			Cn1, v108
	.byte	W12
	.byte			Cn1, v116
	.byte	W12
	.byte	PATT	
		.word	song023_3_4
	.byte	GOTO	
		.word	song023_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song023_4
song023_4:	@ 0x08173ABF
	.byte	KEYSH	, 0
	.byte	VOICE	, 107
	.byte	PAN	, c_v+5
	.byte	VOL	, v074
	.byte	W12
	.byte		N60	, Gs2, v080
	.byte		N60	, Cn3
	.byte		N60	, Ds3
	.byte	W84
song023_4_1:
	.byte	W12
	.byte		N60	, As2, v080
	.byte		N60	, Dn3
	.byte		N60	, Fn3
	.byte	W84
	.byte	PEND
song023_4_4:
	.byte	W12
	.byte		N60	, Gs2, v080
	.byte		N60	, Cn3
	.byte		N60	, Ds3
	.byte	W84
	.byte	PEND
	.byte	PATT	
		.word	song023_4_1
	.byte	W12
	.byte		N08	, Ds3, v088
	.byte		N08	, Gs3, v092
	.byte	W12
	.byte		N12	, Ds3, v088
	.byte		N12	, Gs3, v092
	.byte	W24
	.byte		N08	, Dn3, v088
	.byte		N08	, Gn3, v092
	.byte	W12
	.byte		N12	, Dn3, v088
	.byte		N12	, Gn3, v092
	.byte	W24
	.byte		N08	, Cs3, v088
	.byte		N08	, Fs3, v092
	.byte	W12
	.byte		N12	, Cs3, v088
	.byte		N12	, Fs3, v092
	.byte	W24
	.byte		N08	, Cn3, v088
	.byte		N08	, Fn3, v092
	.byte	W12
	.byte		N12	, Cn3, v088
	.byte		N12	, Fn3, v092
	.byte	W24
	.byte			Bn2, v088
	.byte		N12	, En3, v092
	.byte	W36
	.byte	W12
	.byte		N08	, Cs3, v088
	.byte		N08	, Fs3, v092
	.byte	W12
	.byte		N12	, Cs3, v088
	.byte		N12	, Fs3, v092
	.byte	W24
	.byte		N08	, Cn3, v088
	.byte		N08	, Fn3, v092
	.byte	W12
	.byte		N12	, Cn3, v088
	.byte		N12	, Fn3, v092
	.byte	W24
	.byte		N08	, Bn2, v088
	.byte		N08	, En3, v092
	.byte	W12
	.byte		N12	, Bn2, v088
	.byte		N12	, En3, v092
	.byte	W24
	.byte		N08	, As2, v088
	.byte		N08	, Ds3, v092
	.byte	W12
	.byte		N12	, As2, v088
	.byte		N12	, Ds3, v092
	.byte	W24
	.byte			An2, v088
	.byte		N12	, Dn3, v092
	.byte	W36
song023_4_2:
	.byte	W12
	.byte		N60	, Gs2, v080
	.byte		N60	, Cs3
	.byte		N60	, Fn3
	.byte	W84
	.byte	PEND
song023_4_3:
	.byte	W12
	.byte		N60	, An2, v080
	.byte		N60	, Dn3
	.byte		N60	, Fs3
	.byte	W84
	.byte	PEND
	.byte	PATT	
		.word	song023_4_2
	.byte	PATT	
		.word	song023_4_3
	.byte	W12
	.byte		N08	, Cn3, v092
	.byte		N08	, Fn3
	.byte	W12
	.byte		N12	, Cn3
	.byte		N12	, Fn3
	.byte	W24
	.byte		N08	, Bn2
	.byte		N08	, En3
	.byte	W12
	.byte		N12	, Bn2
	.byte		N12	, En3
	.byte	W24
	.byte		N08	, As2
	.byte		N08	, Ds3
	.byte	W12
	.byte		N12	, As2
	.byte		N12	, Ds3
	.byte	W24
	.byte		N08	, An2
	.byte		N08	, Dn3
	.byte	W12
	.byte		N12	, An2
	.byte		N12	, Dn3
	.byte	W24
	.byte			As2
	.byte		N12	, Ds3
	.byte	W36
	.byte	W12
	.byte		N08	, Bn2
	.byte		N08	, En3
	.byte	W12
	.byte		N12	, Bn2
	.byte		N12	, En3
	.byte	W24
	.byte		N08	, As2
	.byte		N08	, Ds3
	.byte	W12
	.byte		N12	, As2
	.byte		N12	, Ds3
	.byte	W24
	.byte		N08	, An2
	.byte		N08	, Dn3
	.byte	W12
	.byte		N12	, An2
	.byte		N12	, Dn3
	.byte	W24
	.byte		N08	, Gs2
	.byte		N08	, Cs3
	.byte	W12
	.byte		N12	, Gs2
	.byte		N12	, Cs3
	.byte	W24
	.byte			Gn2
	.byte		N12	, Cn3
	.byte	W36
	.byte	PATT	
		.word	song023_4_4
	.byte	GOTO	
		.word	song023_4_1
	.byte	FINE

	@********************** Track  5 **********************@

	.global song023_5
song023_5:	@ 0x08173BEB
	.byte	KEYSH	, 0
	.byte	VOICE	, 108
	.byte	PAN	, c_v
	.byte	VOL	, v062
	.byte		N12	, Cs3, v100
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Gs2
	.byte	W24
song023_5_1:
	.byte		N12	, Ds3, v100
	.byte	W24
	.byte			As2
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte			As2
	.byte	W24
	.byte	PEND
song023_5_4:
	.byte		N12	, Cs3, v100
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte			Cs3
	.byte	W24
	.byte			Gs2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song023_5_1
	.byte	W12
	.byte		N08	, Cs3, v116
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, Cn3
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, Bn2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, As2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			An2
	.byte	W36
	.byte	W12
	.byte		N08	, Bn2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, As2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, An2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, Gs2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Gn2
	.byte	W36
song023_5_2:
	.byte		N12	, As2, v100
	.byte	W24
	.byte			Fn2
	.byte	W24
	.byte			As2
	.byte	W24
	.byte			Fn2
	.byte	W24
	.byte	PEND
song023_5_3:
	.byte		N12	, Bn2, v100
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte			Bn2
	.byte	W24
	.byte			Fs2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song023_5_2
	.byte	PATT	
		.word	song023_5_3
	.byte	W12
	.byte		N08	, As2, v116
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, An2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, Gs2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, Gn2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Gs2
	.byte	W36
	.byte	W12
	.byte		N08	, An2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, Gs2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, Gn2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte		N08	, Fs2
	.byte	W12
	.byte		N12	
	.byte	W24
	.byte			Fn2
	.byte	W36
	.byte	PATT	
		.word	song023_5_4
	.byte	GOTO	
		.word	song023_5_1
	.byte	FINE

	.align 2
	.global song023
song023:	@ 0x08173CA4
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song023_1		@ track
	.word	song023_2		@ track
	.word	song023_3		@ track
	.word	song023_4		@ track
	.word	song023_5		@ track
