	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song011_1
song011_1:	@ 0x081705E8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 95
	.byte	W12
	.byte	VOICE	, 2
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte		N11	, Fs3, v080
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn3
	.byte	W12
song011_1_1:
	.byte		N11	, Bn2, v080
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte	PEND
song011_1_8:
	.byte		N11	, Bn2, v080
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song011_1_1
	.byte		N11	, Bn2, v080
	.byte	W12
song011_1_9:
	.byte		N11	, Fs3, v080
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte	PATT	
		.word	song011_1_1
	.byte		N11	, Bn2, v080
	.byte	W12
	.byte			Fs3, v088
	.byte	W12
	.byte			Bn2, v084
	.byte	W11
	.byte			Fs3, v092
	.byte	W12
	.byte			En3, v084
	.byte	W12
	.byte			Dn3, v076
	.byte	W13
	.byte			Cs3, v080
	.byte	W12
	.byte			Dn3, v064
	.byte	W12
	.byte			Cs3
	.byte	W11
	.byte			En3, v076
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N24	, En3, v080
	.byte	W11
	.byte	MOD	, 12
	.byte	W02
	.byte	W11
	.byte		0
	.byte	W01
	.byte	VOICE	, 5
	.byte	VOL	, v087
	.byte	PAN	, c_v+10
	.byte	MODT	, 0
	.byte	W24
	.byte		N21	, Fs3, v100
	.byte	W24
	.byte			Bn3, v104
	.byte	W12
song011_1_2:
	.byte	W12
	.byte		N21	, Cs4, v096
	.byte	W24
	.byte			An3
	.byte	W24
	.byte			Gn3, v092
	.byte	W12
	.byte	PEND
song011_1_3:
	.byte	W12
	.byte		N68	, Fs3, v108
	.byte	W36
	.byte	MOD	, 3
	.byte	W24
	.byte	PEND
song011_1_4:
	.byte	W11
	.byte	MOD	, 0
	.byte	W01
	.byte		N32	, Gn3, v108
	.byte	W36
	.byte		N23	, An3
	.byte	W24
	.byte	PEND
song011_1_5:
	.byte		N06	, Gs3, v108
	.byte	W06
	.byte			Gn3, v096
	.byte	W06
	.byte		TIE	, Fs3, v108
	.byte	W60
	.byte	PEND
song011_1_6:
	.byte	W03
	.byte	MOD	, 2
	.byte	W68
	.byte	W01
	.byte	PEND
	.byte		EOT	, Fs3
song011_1_7:
	.byte	W11
	.byte	MOD	, 0
	.byte	W60
	.byte	W01
	.byte	PEND
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W36
	.byte		N21	, Fs3, v100
	.byte	W24
	.byte			Bn3, v104
	.byte	W12
	.byte	PATT	
		.word	song011_1_2
	.byte	PATT	
		.word	song011_1_3
	.byte	PATT	
		.word	song011_1_4
	.byte	PATT	
		.word	song011_1_5
	.byte	PATT	
		.word	song011_1_6
	.byte		EOT	, Fs3
	.byte	PATT	
		.word	song011_1_7
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte	VOICE	, 2
	.byte	VOL	, v066
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte		N11	, Fs3, v080
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte	PATT	
		.word	song011_1_1
	.byte	PATT	
		.word	song011_1_8
	.byte		N11	, Bn2, v080
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Bn2, v084
	.byte	W12
	.byte			Dn3, v072
	.byte	W12
	.byte			En3, v080
	.byte	W12
	.byte			Bn2, v088
	.byte	W12
	.byte			Cs3, v076
	.byte	W12
	.byte	GOTO	
		.word	song011_1_9
	.byte	FINE

	@********************** Track  2 **********************@

	.global song011_2
song011_2:	@ 0x08170721
	.byte	KEYSH	, 0
	.byte	VOICE	, 1
	.byte	PAN	, c_v
	.byte	VOL	, v059
	.byte	W12
	.byte		N10	, Bn1, v100
	.byte	W12
	.byte		N08	, Fs2
	.byte	W12
	.byte		N04	, Bn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, An1
	.byte	W12
song011_2_1:
	.byte		N11	, Bn1, v100
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N12	, Dn2
	.byte	W12
	.byte		N11	, An1
	.byte	W12
	.byte	PEND
song011_2_2:
	.byte		N11	, Cs2, v100
	.byte	W12
	.byte		N10	, Bn1
	.byte	W12
	.byte		N08	, Fs2
	.byte	W12
	.byte		N04	, Bn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, An1
	.byte	W12
	.byte	PEND
song011_2_3:
	.byte		N11	, Bn1, v100
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N12	, Dn2
	.byte	W12
	.byte		N11	, Cs2
	.byte	W12
	.byte	PEND
	.byte			An1
	.byte	W12
song011_2_5:
	.byte		N10	, Bn1, v100
	.byte	W12
	.byte		N08	, Fs2
	.byte	W12
	.byte		N04	, Bn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, An1
	.byte	W12
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
song011_2_4:
	.byte		N11	, An1, v100
	.byte	W12
	.byte		N10	, Bn1
	.byte	W12
	.byte		N08	, Fs2
	.byte	W12
	.byte		N04	, Bn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, An1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
	.byte	PATT	
		.word	song011_2_4
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
	.byte	PATT	
		.word	song011_2_4
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
	.byte	PATT	
		.word	song011_2_4
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
	.byte	PATT	
		.word	song011_2_4
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
	.byte	PATT	
		.word	song011_2_4
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
	.byte	PATT	
		.word	song011_2_4
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
	.byte		N11	, An1, v100
	.byte	W12
	.byte	VOICE	, 6
	.byte	VOL	, v068
	.byte	PAN	, c_v
	.byte		N05	, En4
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			An4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fs4
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte	VOICE	, 1
	.byte	PAN	, c_v
	.byte	VOL	, v052
	.byte		N10	, Bn1
	.byte	W12
	.byte		N08	, Fs2
	.byte	W12
	.byte		N04	, Bn1
	.byte	W12
	.byte		N11	
	.byte	W12
	.byte		N06	, An1
	.byte	W12
	.byte	PATT	
		.word	song011_2_1
	.byte	PATT	
		.word	song011_2_2
	.byte	PATT	
		.word	song011_2_3
	.byte		N11	, An1, v100
	.byte	W12
	.byte	GOTO	
		.word	song011_2_5
	.byte	FINE

	@********************** Track  3 **********************@

	.global song011_3
song011_3:	@ 0x08170890
	.byte	KEYSH	, 0
	.byte	VOICE	, 3
	.byte	PAN	, c_v
	.byte	VOL	, v044
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
song011_3_7:
	.byte	W12
	.byte		N08	, Fs4, v100
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N06	
	.byte	W72
song011_3_1:
	.byte	W24
	.byte		N08	, Fs4, v100
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song011_3_2:
	.byte		N06	, Fs4, v100
	.byte	W24
	.byte		N08	, En4
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song011_3_3:
	.byte		N06	, En4, v100
	.byte	W24
	.byte		N08	, Fs4
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
	.byte		N06	
	.byte	W72
song011_3_4:
	.byte	W24
	.byte		N08	, An4, v100
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song011_3_5:
	.byte		N06	, An4, v100
	.byte	W24
	.byte		N08	, Gn4
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song011_3_6:
	.byte		N06	, Gn4, v100
	.byte	W24
	.byte		N08	, Fs4
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
	.byte		N06	
	.byte	W72
	.byte	PATT	
		.word	song011_3_1
	.byte	PATT	
		.word	song011_3_2
	.byte	PATT	
		.word	song011_3_3
	.byte		N06	, Fs4, v100
	.byte	W72
	.byte	PATT	
		.word	song011_3_1
	.byte	PATT	
		.word	song011_3_2
	.byte	PATT	
		.word	song011_3_3
	.byte		N06	, Fs4, v100
	.byte	W72
	.byte	PATT	
		.word	song011_3_1
	.byte	PATT	
		.word	song011_3_2
	.byte	PATT	
		.word	song011_3_3
	.byte		N06	, Fs4, v100
	.byte	W72
	.byte	PATT	
		.word	song011_3_4
	.byte	PATT	
		.word	song011_3_5
	.byte	PATT	
		.word	song011_3_6
	.byte		N06	, Fs4, v100
	.byte	W72
	.byte	PATT	
		.word	song011_3_1
	.byte	PATT	
		.word	song011_3_2
	.byte	PATT	
		.word	song011_3_3
	.byte		N06	, Fs4, v100
	.byte	W72
	.byte	PATT	
		.word	song011_3_1
	.byte	PATT	
		.word	song011_3_2
	.byte		N06	, En4, v100
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte	GOTO	
		.word	song011_3_7
	.byte	FINE

	@********************** Track  4 **********************@

	.global song011_4
song011_4:	@ 0x0817095D
	.byte	KEYSH	, 0
	.byte	VOICE	, 4
	.byte	PAN	, c_v
	.byte	VOL	, v044
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
song011_4_7:
	.byte	W12
	.byte		N08	, Bn3, v100
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N06	
	.byte	W72
song011_4_1:
	.byte	W24
	.byte		N08	, Bn3, v100
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song011_4_2:
	.byte		N06	, Bn3, v100
	.byte	W24
	.byte		N08	, An3
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song011_4_3:
	.byte		N06	, An3, v100
	.byte	W24
	.byte		N08	, Bn3
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
	.byte		N06	
	.byte	W72
song011_4_4:
	.byte	W24
	.byte		N08	, Dn4, v100
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song011_4_5:
	.byte		N06	, Dn4, v100
	.byte	W24
	.byte		N08	, Cs4
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
song011_4_6:
	.byte		N06	, Cs4, v100
	.byte	W24
	.byte		N08	, Bn3
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte	PEND
	.byte		N06	
	.byte	W72
	.byte	PATT	
		.word	song011_4_1
	.byte	PATT	
		.word	song011_4_2
	.byte	PATT	
		.word	song011_4_3
	.byte		N06	, Bn3, v100
	.byte	W72
	.byte	PATT	
		.word	song011_4_1
	.byte	PATT	
		.word	song011_4_2
	.byte	PATT	
		.word	song011_4_3
	.byte		N06	, Bn3, v100
	.byte	W72
	.byte	PATT	
		.word	song011_4_1
	.byte	PATT	
		.word	song011_4_2
	.byte	PATT	
		.word	song011_4_3
	.byte		N06	, Bn3, v100
	.byte	W72
	.byte	PATT	
		.word	song011_4_4
	.byte	PATT	
		.word	song011_4_5
	.byte	PATT	
		.word	song011_4_6
	.byte		N06	, Bn3, v100
	.byte	W72
	.byte	PATT	
		.word	song011_4_1
	.byte	PATT	
		.word	song011_4_2
	.byte	PATT	
		.word	song011_4_3
	.byte		N06	, Bn3, v100
	.byte	W72
	.byte	PATT	
		.word	song011_4_1
	.byte	PATT	
		.word	song011_4_2
	.byte		N06	, An3, v100
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte	GOTO	
		.word	song011_4_7
	.byte	FINE

	@********************** Track  5 **********************@

	.global song011_5
song011_5:	@ 0x08170A2A
	.byte	KEYSH	, 0
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
song011_5_3:
	.byte	W60
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte	VOICE	, 7
	.byte	PAN	, c_v-10
	.byte	VOL	, v083
	.byte	W60
	.byte	W12
	.byte		N68	, Bn2, v100
	.byte	W60
	.byte	W12
	.byte			Cs3, v104
	.byte	W60
	.byte	W12
	.byte			Dn3
	.byte	W60
song011_5_1:
	.byte	W12
	.byte		N44	, An3, v108
	.byte	W48
	.byte		N10	, Gs3, v104
	.byte	W12
	.byte	PEND
song011_5_2:
	.byte		N10	, Gn3, v100
	.byte	W12
	.byte		TIE	, Fs3, v112
	.byte	W60
	.byte	PEND
	.byte	W72
	.byte	W11
	.byte		EOT	
	.byte	W60
	.byte	W01
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte		N68	, Bn2, v100
	.byte	W60
	.byte	W12
	.byte			Cs3, v104
	.byte	W60
	.byte	W12
	.byte			Dn3
	.byte	W60
	.byte	PATT	
		.word	song011_5_1
	.byte	PATT	
		.word	song011_5_2
	.byte	W72
	.byte	W11
	.byte		EOT	, Fs3
	.byte	W60
	.byte	W01
	.byte	W12
	.byte		N11	, Bn2, v100
	.byte	W12
	.byte			Cs3, v096
	.byte	W12
	.byte			Dn3, v100
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Dn3, v096
	.byte	W12
	.byte			En3, v104
	.byte	W12
	.byte		TIE	, Fs3, v100
	.byte	W60
	.byte	W72
	.byte	W09
	.byte		EOT	
	.byte	W03
	.byte		N68	, An3, v092
	.byte	W60
	.byte	W12
	.byte		N32	, En3
	.byte	W36
	.byte			Cs3, v100
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte	GOTO	
		.word	song011_5_3
	.byte	FINE

	@********************** Track  6 **********************@

	.global song011_6
song011_6:	@ 0x08170ABA
	.byte	KEYSH	, 0
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
song011_6_8:
	.byte	W60
	.byte	W72
	.byte	W72
song011_6_7:
	.byte	W12
	.byte	VOICE	, 10
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W60
	.byte	PEND
	.byte	W12
	.byte		N05	, Cs4, v104
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cs4, v092
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cs4, v100
	.byte	W06
	.byte			Dn4, v088
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Dn4, v092
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
song011_6_1:
	.byte		N05	, Cs4, v060
	.byte	W06
	.byte			Dn4, v080
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cs4, v072
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Cs4, v084
	.byte	W05
	.byte			Dn4
	.byte	W06
	.byte			Cs4, v072
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4, v084
	.byte	W01
	.byte	PEND
song011_6_2:
	.byte	W05
	.byte		N05	, Dn4, v076
	.byte	W07
	.byte			Cs4
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cs4, v072
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4, v072
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte	PEND
song011_6_3:
	.byte		N05	, Cs4, v084
	.byte	W06
	.byte			Dn4, v076
	.byte	W06
	.byte		N10	, Cs4, v092
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte			En4, v104
	.byte	W12
	.byte			Fs4, v108
	.byte	W12
	.byte			En4
	.byte	W12
	.byte	PEND
	.byte			Dn4, v104
	.byte	W72
song011_6_4:
	.byte	W12
	.byte	VOICE	, 8
	.byte	VOL	, v047
	.byte	PAN	, c_v
	.byte	W60
	.byte	PEND
song011_6_5:
	.byte	W12
	.byte		N21	, Cs5, v104
	.byte	W24
	.byte			Fs4, v116
	.byte	W24
	.byte			Bn4, v104
	.byte	W12
	.byte	PEND
song011_6_6:
	.byte	W12
	.byte		N21	, Gs4, v112
	.byte	W24
	.byte			En4, v116
	.byte	W24
	.byte			Bn3
	.byte	W12
	.byte	PEND
	.byte	W11
	.byte		N72	, Cs4
	.byte	W60
	.byte	W01
	.byte	W12
	.byte	VOICE	, 10
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W36
	.byte		N11	, An3, v108
	.byte	W12
	.byte			Gn3, v092
	.byte	W12
	.byte			Fs3, v104
	.byte	W12
	.byte		N32	, Gn3, v100
	.byte	W36
	.byte		N11	, Fs3, v108
	.byte	W12
	.byte			En3, v104
	.byte	W12
	.byte			Dn3, v088
	.byte	W12
	.byte		N32	, En3, v108
	.byte	W36
	.byte			Cs3, v100
	.byte	W24
	.byte	W12
	.byte	VOICE	, 9
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte		TIE	, Bn3, v092
	.byte		TIE	, Fs4, v096
	.byte	W60
	.byte	W72
	.byte	W09
	.byte		EOT	, Bn3
	.byte			Fs4
	.byte	W03
	.byte		N68	, An3, v088
	.byte		N68	, En4, v084
	.byte	W60
	.byte	W12
	.byte			Gn3
	.byte		N68	, Dn4, v088
	.byte	W60
	.byte	W12
	.byte	VOICE	, 10
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte		N05	, Cs4, v104
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cs4, v092
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte			Cs4, v100
	.byte	W06
	.byte			Dn4, v088
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Dn4, v092
	.byte	W06
	.byte			Cs4, v076
	.byte	W06
	.byte			Dn4, v084
	.byte	W06
	.byte	PATT	
		.word	song011_6_1
	.byte	PATT	
		.word	song011_6_2
	.byte	PATT	
		.word	song011_6_3
	.byte		N10	, Dn4, v104
	.byte	W72
	.byte	PATT	
		.word	song011_6_4
	.byte	PATT	
		.word	song011_6_5
	.byte	PATT	
		.word	song011_6_6
	.byte	W12
	.byte		N72	, Cs4, v116
	.byte	W60
	.byte	W72
	.byte	PATT	
		.word	song011_6_7
	.byte	W12
	.byte		N11	, An3, v104
	.byte	W12
	.byte			En3, v100
	.byte	W12
	.byte			Gn3, v108
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte			En3, v092
	.byte	W12
	.byte			Dn3, v100
	.byte	W12
	.byte	VOICE	, 9
	.byte	VOL	, v066
	.byte	PAN	, c_v
	.byte		TIE	, Bn3, v112
	.byte	W60
	.byte	W72
	.byte	W10
	.byte		EOT	
	.byte	W02
	.byte		N32	, Cs4, v100
	.byte	W36
	.byte			Dn4, v088
	.byte	W24
	.byte	W12
	.byte			An3, v100
	.byte	W36
	.byte			Cs4, v108
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W12
	.byte	GOTO	
		.word	song011_6_8
	.byte	FINE

	@********************** Track  7 **********************@

	.global song011_7
song011_7:	@ 0x08170C47
	.byte	KEYSH	, 0
	.byte	VOICE	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v068
	.byte		N11	, Cn1, v116
	.byte	W12
	.byte		N18	
	.byte	W48
	.byte		N11	, Ds1, v064
	.byte	W12
	.byte	W36
	.byte		N10	, Cs1, v108
	.byte	W36
song011_7_1:
	.byte		N11	, Cn1, v112
	.byte	W12
	.byte		N18	, Cn1, v108
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N11	, Ds1, v060
	.byte	W12
	.byte	PEND
song011_7_5:
	.byte	W12
	.byte		N11	, Ds1, v064
	.byte	W24
	.byte		N11	
	.byte	W24
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte	PEND
	.byte		N10	
	.byte	W12
song011_7_9:
	.byte		N18	, Cn1, v116
	.byte	W36
	.byte		N11	, Ds1, v064
	.byte	W20
	.byte		N03	, Cs1, v088
	.byte	W04
song011_7_4:
	.byte		N10	, Cs1, v108
	.byte	W36
	.byte		N10	
	.byte	W36
	.byte	PEND
	.byte	PATT	
		.word	song011_7_1
	.byte	W12
	.byte		N11	, Ds1, v064
	.byte	W24
	.byte		N11	
	.byte	W36
song011_7_6:
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte		N18	, Cn1, v116
	.byte	W48
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte	PEND
song011_7_2:
	.byte	W32
	.byte		N03	, Cs1, v088
	.byte	W04
	.byte		N10	, Cs1, v108
	.byte	W36
	.byte	PEND
song011_7_3:
	.byte		N11	, Cn1, v112
	.byte	W12
	.byte		N18	, Cn1, v108
	.byte	W24
	.byte		N18	
	.byte	W24
	.byte		N10	, Cs1
	.byte	W12
	.byte	PEND
	.byte	W36
	.byte		N10	
	.byte	W32
	.byte		N03	, Cs1, v076
	.byte	W04
	.byte		N10	, Cs1, v100
	.byte	W12
	.byte		N18	, Cn1, v116
	.byte	W48
	.byte	W01
	.byte		N10	, Cs1, v108
	.byte	W11
	.byte	PATT	
		.word	song011_7_2
	.byte	PATT	
		.word	song011_7_3
	.byte	W24
	.byte		N10	, Cs1, v108
	.byte	W44
	.byte		N03	, Cs1, v088
	.byte	W04
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte		N18	, Cn1, v116
	.byte	W32
	.byte	W03
	.byte		N10	, Cs1, v108
	.byte	W24
	.byte	W01
	.byte	W36
	.byte		N11	, Ds1, v064
	.byte	W36
	.byte	PATT	
		.word	song011_7_3
song011_7_8:
	.byte	W06
	.byte		N11	, Ds1, v064
	.byte	W24
	.byte	W02
	.byte		N11	
	.byte	W28
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N18	, Cn1, v116
	.byte	W36
	.byte		N11	, Ds1, v064
	.byte	W20
	.byte		N03	, Cs1, v088
	.byte	W04
	.byte	PATT	
		.word	song011_7_4
	.byte	PATT	
		.word	song011_7_1
	.byte	PATT	
		.word	song011_7_5
	.byte	PATT	
		.word	song011_7_6
	.byte	PATT	
		.word	song011_7_2
song011_7_7:
	.byte		N11	, Cn1, v112
	.byte	W12
	.byte		N18	, Cn1, v108
	.byte	W24
	.byte		N18	
	.byte	W36
	.byte	PEND
	.byte		N10	, Cs1
	.byte	W56
	.byte		N03	, Cs1, v088
	.byte	W04
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte	W12
	.byte		N18	, Cn1, v116
	.byte	W44
	.byte	W03
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte		N10	
	.byte	W01
	.byte	W24
	.byte		N10	
	.byte	W48
	.byte	PATT	
		.word	song011_7_3
	.byte	W36
	.byte		N10	, Cs1, v108
	.byte	W36
	.byte	W12
	.byte		N18	, Cn1, v116
	.byte	W32
	.byte		N03	, Cs1, v088
	.byte	W04
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte		N10	
	.byte	W12
	.byte	W36
	.byte		N11	, Ds1, v064
	.byte	W36
	.byte			Cn1, v112
	.byte	W12
	.byte		N18	, Cn1, v108
	.byte	W24
	.byte		N18	
	.byte	W23
	.byte		N10	, Cs1
	.byte	W13
	.byte	W06
	.byte		N11	, Ds1, v064
	.byte	W24
	.byte	W02
	.byte		N11	
	.byte	W40
	.byte	W12
	.byte		N11	
	.byte	W18
	.byte		N05	, Ds1, v044
	.byte	W06
	.byte		N11	, Ds1, v064
	.byte	W15
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W09
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W17
	.byte		N04	, Ds1, v044
	.byte	W06
	.byte		N11	, Ds1, v064
	.byte	W16
	.byte		N11	
	.byte	W12
	.byte		N11	
	.byte	W09
	.byte	W48
	.byte		N11	
	.byte	W24
	.byte		N11	
	.byte	W12
	.byte		N54	, Dn1, v084
	.byte	W56
	.byte		N03	, Cs1, v088
	.byte	W04
	.byte		N10	, Cs1, v108
	.byte	W36
	.byte		N11	, Ds1, v064
	.byte	W36
	.byte	PATT	
		.word	song011_7_7
	.byte	PATT	
		.word	song011_7_8
	.byte		N10	, Cs1, v108
	.byte	W12
	.byte	GOTO	
		.word	song011_7_9
	.byte	FINE

	.align 2
	.global song011
song011:	@ 0x08170DD4
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song011_1		@ track
	.word	song011_2		@ track
	.word	song011_3		@ track
	.word	song011_4		@ track
	.word	song011_5		@ track
	.word	song011_6		@ track
	.word	song011_7		@ track
