	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song004_1
song004_1:	@ 0x0816D06C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 95
	.byte	VOICE	, 28
	.byte	MODT	, 0
	.byte	LFOS	, 20
	.byte	BENDR	, 12
	.byte	PAN	, c_v-5
	.byte	VOL	, v054
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W05
song004_1_2:
	.byte		N23	, En4, v108
	.byte	W24
	.byte		N06	, Bn4, v100
	.byte	W12
	.byte			An4, v092
	.byte	W12
	.byte		N23	, Bn4, v100
	.byte	W19
song004_1_1:
	.byte	W05
	.byte		N23	, Dn5, v096
	.byte	W24
	.byte		N06	, Cs5, v100
	.byte	W06
	.byte			Dn5
	.byte	W06
	.byte		N11	, Cs5
	.byte	W12
	.byte		N19	, An4, v108
	.byte	W19
	.byte	PEND
	.byte	W05
	.byte		TIE	, Bn4, v104
	.byte	W44
	.byte	W03
	.byte	MOD	, 6
	.byte	W20
	.byte	W40
	.byte	W01
	.byte		EOT	
	.byte	MOD	, 0
	.byte	W30
	.byte	W01
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W05
	.byte		N18	, En4, v108
	.byte	W24
	.byte		N08	, Bn4, v100
	.byte	W12
	.byte			An4, v092
	.byte	W12
	.byte		N23	, Bn4, v100
	.byte	W19
	.byte	PATT	
		.word	song004_1_1
	.byte	W05
	.byte		TIE	, Bn4, v104
	.byte	W66
	.byte	MOD	, 6
	.byte	W01
	.byte	W40
	.byte	W01
	.byte		0
	.byte	W03
	.byte		EOT	
	.byte	W09
	.byte		N12	, Bn4, v084
	.byte	W12
	.byte			En5
	.byte	W07
	.byte	W05
	.byte		N23	, Dn5, v088
	.byte	W24
	.byte		N05	, Cs5
	.byte	W06
	.byte			Dn5, v100
	.byte	W06
	.byte		N06	, Cs5
	.byte	W08
	.byte		N23	, Bn4, v104
	.byte	W23
	.byte	W05
	.byte		N24	, Cs5, v108
	.byte	W24
	.byte		N05	, Bn4, v096
	.byte	W06
	.byte			Cs5, v108
	.byte	W06
	.byte		N11	, Bn4, v104
	.byte	W12
	.byte		N23	, An4, v096
	.byte	W19
	.byte	W05
	.byte		TIE	, Bn4, v100
	.byte	W66
	.byte	W01
	.byte	W44
	.byte	W03
	.byte	MOD	, 6
	.byte	W24
	.byte	W01
	.byte	W52
	.byte		EOT	
	.byte	W12
	.byte	MOD	, 0
	.byte	W08
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W28
	.byte	W01
	.byte		N11	, En4
	.byte	W12
	.byte		N10	, Fs4, v080
	.byte	W12
	.byte		N06	, Gn4, v092
	.byte	W12
	.byte			En4, v100
	.byte	W07
	.byte	W05
	.byte		N18	, An4
	.byte	W24
	.byte		N21	, Bn4, v088
	.byte	W24
	.byte		N06	, An4, v076
	.byte	W06
	.byte			Bn4, v080
	.byte	W06
	.byte			An4, v072
	.byte	W06
	.byte			Gn4, v088
	.byte	W01
	.byte	W05
	.byte		TIE	, Fs4, v096
	.byte	W48
	.byte	MOD	, 6
	.byte	W19
	.byte	W52
	.byte	W01
	.byte		EOT	
	.byte	MOD	, 0
	.byte	W19
	.byte	W72
	.byte	W17
	.byte		N06	, Dn5, v092
	.byte	W12
	.byte			Cs5, v104
	.byte	W12
	.byte			Bn4
	.byte	W12
	.byte			Cs5, v108
	.byte	W12
	.byte			An4, v096
	.byte	W07
	.byte	W02
	.byte	BEND	, c_v
	.byte	W03
	.byte		N32	, Bn4
	.byte	W02
	.byte	BEND	, c_v-4
	.byte	W03
	.byte		c_v-3
	.byte	W02
	.byte		c_v
	.byte	W28
	.byte	W01
	.byte		N11	, An4, v088
	.byte	W30
	.byte	W01
	.byte	W72
	.byte	W28
	.byte	W01
	.byte			An4, v100
	.byte	W12
	.byte		N06	, Gn4, v096
	.byte	W24
	.byte			Gn4, v092
	.byte	W07
	.byte	W05
	.byte		N23	, Gn4, v096
	.byte	W24
	.byte		N11	, Fs4, v100
	.byte	W24
	.byte		N06	, Fs4, v104
	.byte	W12
	.byte		N60	, En4
	.byte	W07
	.byte	W52
	.byte	W01
	.byte		N80	, Dn4
	.byte	W19
	.byte	W28
	.byte	W01
	.byte	MOD	, 6
	.byte	W24
	.byte		0
	.byte	W19
	.byte	W17
	.byte		N06	, En4, v080
	.byte	W06
	.byte			Fs4, v088
	.byte	W06
	.byte			Gn4, v100
	.byte	W12
	.byte			En4, v092
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N11	, An4, v088
	.byte	W07
	.byte	W05
	.byte		N04	, Fs4, v080
	.byte	W04
	.byte		N24	, Gn4, v092
	.byte	W32
	.byte		N10	, Fs4
	.byte	W30
	.byte	W01
	.byte	W05
	.byte	GOTO	
		.word	song004_1_2
	.byte	FINE

	@********************** Track  2 **********************@

	.global song004_2
song004_2:	@ 0x0816D1CC
	.byte	KEYSH	, 0
	.byte	VOICE	, 25
	.byte	PAN	, c_v
	.byte	VOL	, v045
	.byte	W05
	.byte		N24	, En2, v100
	.byte	W36
	.byte		N20	
	.byte	W30
	.byte	W01
song004_2_2:
	.byte	W05
	.byte		N09	, En2, v100
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N09	
	.byte	W19
	.byte	PEND
song004_2_1:
	.byte	W05
	.byte		N24	, En2, v100
	.byte	W36
	.byte		N20	
	.byte	W30
	.byte	W01
	.byte	PEND
song004_2_3:
	.byte	W05
	.byte		N09	, En2, v100
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N09	
	.byte	W12
	.byte		N12	, Dn2
	.byte	W07
	.byte	PEND
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_2
	.byte	PATT	
		.word	song004_2_1
	.byte	W05
	.byte		N24	, En2, v100
	.byte	W36
	.byte		N11	
	.byte	W30
	.byte	W01
	.byte	W05
song004_2_7:
	.byte		N24	, En2, v100
	.byte	W36
	.byte		N20	
	.byte	W30
	.byte	W01
	.byte	PATT	
		.word	song004_2_2
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_3
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_3
	.byte	W05
	.byte		N24	, En2, v100
	.byte	W36
	.byte		N09	
	.byte	W12
	.byte		N11	, Dn3
	.byte	W12
	.byte			Cs3
	.byte	W07
	.byte	W05
	.byte			Bn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An2
	.byte	W07
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_3
	.byte	PATT	
		.word	song004_2_1
	.byte	W05
	.byte		N09	, En2, v100
	.byte	W24
	.byte		N06	
	.byte	W24
	.byte		N09	
	.byte	W12
	.byte			Fs2
	.byte	W07
	.byte	W05
	.byte		N24	, Gn2
	.byte	W36
	.byte		N21	
	.byte	W24
	.byte		N08	, Fs2
	.byte	W07
	.byte	W05
	.byte		N11	, An2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N09	, Fs2
	.byte	W11
	.byte		N11	, Gn2
	.byte	W08
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_3
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_3
	.byte	PATT	
		.word	song004_2_1
	.byte	PATT	
		.word	song004_2_3
	.byte	PATT	
		.word	song004_2_1
	.byte	W05
	.byte		N11	, Fs2, v100
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte			En2
	.byte	W07
song004_2_4:
	.byte	W05
	.byte		N11	, Gn2, v100
	.byte	W12
	.byte		N08	, Fs2
	.byte	W24
	.byte		N18	, En2
	.byte	W24
	.byte		N09	, Fs2
	.byte	W07
	.byte	PEND
song004_2_5:
	.byte	W05
	.byte		N17	, Gn2, v100
	.byte	W24
	.byte		N12	
	.byte	W24
	.byte			En2
	.byte	W19
	.byte	PEND
song004_2_6:
	.byte	W05
	.byte		N11	, An2, v100
	.byte	W12
	.byte		N08	, Gn2
	.byte	W24
	.byte		N17	, Fs2
	.byte	W24
	.byte		N10	, En2
	.byte	W07
	.byte	PEND
	.byte	W05
	.byte		N24	, Gn2
	.byte	W24
	.byte		N11	, En2
	.byte	W24
	.byte			Bn2
	.byte	W19
	.byte	PATT	
		.word	song004_2_4
	.byte	PATT	
		.word	song004_2_5
	.byte	PATT	
		.word	song004_2_6
	.byte	W05
	.byte		N11	, En2, v100
	.byte	W12
	.byte			Fs2
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Bn2
	.byte	W07
	.byte	PATT	
		.word	song004_2_4
	.byte	PATT	
		.word	song004_2_5
	.byte	W05
	.byte		N10	, An2, v100
	.byte	W12
	.byte		N08	, Gn2
	.byte	W24
	.byte		N17	, Fs2
	.byte	W24
	.byte		N10	, En2
	.byte	W07
	.byte	W05
	.byte		N17	, Gn2
	.byte	W24
	.byte		N12	
	.byte	W23
	.byte			En2
	.byte	W20
	.byte	PATT	
		.word	song004_2_4
	.byte	W05
	.byte		N17	, Gn2, v100
	.byte	W24
	.byte		N12	
	.byte	W23
	.byte			Bn2
	.byte	W20
	.byte	W05
	.byte		N11	, As2
	.byte	W12
	.byte		N14	, Gn2
	.byte	W24
	.byte		N13	, Fs2
	.byte	W24
	.byte		N12	, Gn2
	.byte	W07
	.byte	W05
	.byte		N17	, Fs2
	.byte	W36
	.byte		N08	
	.byte	W30
	.byte	W01
	.byte	W05
	.byte	GOTO	
		.word	song004_2_7
	.byte	FINE

	@********************** Track  3 **********************@

	.global song004_3
song004_3:	@ 0x0816D34A
	.byte	KEYSH	, 0
	.byte	VOICE	, 26
	.byte	PAN	, c_v
	.byte	VOL	, v041
	.byte	W05
	.byte		N09	, Bn3, v104
	.byte	W12
	.byte			En3, v088
	.byte	W24
	.byte			Bn3, v100
	.byte	W24
	.byte		N11	, En3
	.byte	W07
	.byte	W05
	.byte		N09	, Cs4
	.byte	W12
	.byte		N11	, En3, v084
	.byte	W12
	.byte		N09	, Cs4, v108
	.byte	W24
	.byte			Dn4, v096
	.byte	W12
	.byte		N11	, Gn3, v084
	.byte	W07
song004_3_1:
	.byte	W05
	.byte		N09	, Bn3, v104
	.byte	W12
	.byte		N11	, En3, v088
	.byte	W24
	.byte		N09	, Bn3, v100
	.byte	W24
	.byte		N11	, En3
	.byte	W07
	.byte	PEND
	.byte	W05
	.byte		N09	, An3
	.byte	W12
	.byte		N11	, Dn3, v084
	.byte	W12
	.byte		N09	, An3, v108
	.byte	W24
	.byte			An3, v096
	.byte	W12
	.byte		N11	, Gn3, v084
	.byte	W07
	.byte	PATT	
		.word	song004_3_1
	.byte	W05
	.byte		N11	, Cs4, v104
	.byte	W12
	.byte			Bn3, v096
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			En3, v096
	.byte	W12
	.byte			Bn3, v108
	.byte	W12
	.byte			An3, v092
	.byte	W07
	.byte	PATT	
		.word	song004_3_1
	.byte	W05
	.byte		N11	, An3, v104
	.byte	W12
	.byte		N06	, En3, v084
	.byte	W24
	.byte			An3, v104
	.byte	W30
	.byte	W01
	.byte	W05
song004_3_10:
	.byte		N09	, Bn3, v104
	.byte	W12
	.byte			En3, v088
	.byte	W24
	.byte			Bn3, v100
	.byte	W24
	.byte		N11	, En3
	.byte	W07
song004_3_3:
	.byte	W05
	.byte		N11	, An3, v100
	.byte	W12
	.byte			Gn3, v084
	.byte	W12
	.byte			Fs3, v092
	.byte	W12
	.byte			En3, v084
	.byte	W12
	.byte			Gn3, v100
	.byte	W12
	.byte			An3, v104
	.byte	W07
	.byte	PEND
song004_3_2:
	.byte	W05
	.byte		N09	, Bn3, v104
	.byte	W12
	.byte			En3, v088
	.byte	W24
	.byte			Bn3, v100
	.byte	W24
	.byte		N11	, En3
	.byte	W07
	.byte	PEND
song004_3_4:
	.byte	W08
	.byte		N10	, Cs4, v096
	.byte	W09
	.byte		N11	, Bn3, v088
	.byte	W12
	.byte			An3, v092
	.byte	W12
	.byte			En3, v096
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			An3, v104
	.byte	W07
	.byte	PEND
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_3
	.byte	PATT	
		.word	song004_3_2
song004_3_5:
	.byte	W05
	.byte		N09	, Cs4, v100
	.byte	W12
	.byte		N10	, En3, v084
	.byte	W12
	.byte		N09	, Cs4, v108
	.byte	W24
	.byte		N08	, Dn4, v096
	.byte	W12
	.byte		N10	, Gn3, v084
	.byte	W07
	.byte	PEND
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_3
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_4
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_3
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_5
	.byte	PATT	
		.word	song004_3_2
	.byte	W05
	.byte		N09	, Cs4, v100
	.byte	W12
	.byte		N10	, En3, v084
	.byte	W12
	.byte		N09	, Cs4, v108
	.byte	W24
	.byte		N09	
	.byte	W12
	.byte		N10	, Gn3, v084
	.byte	W07
	.byte	PATT	
		.word	song004_3_2
	.byte	PATT	
		.word	song004_3_5
	.byte	PATT	
		.word	song004_3_2
	.byte	W05
	.byte		N09	, Bn3, v100
	.byte	W12
	.byte		N10	, Dn3, v084
	.byte	W12
	.byte		N08	, Fs3, v088
	.byte	W12
	.byte			Gn3, v108
	.byte	W12
	.byte		N09	, Bn3, v100
	.byte	W12
	.byte		N10	, Dn3, v084
	.byte	W07
	.byte	W05
	.byte			An3, v096
	.byte	W12
	.byte		N09	, Dn3, v084
	.byte	W12
	.byte		N10	, Fs3
	.byte	W12
	.byte			Dn3, v088
	.byte	W12
	.byte		N09	, An3, v096
	.byte	W12
	.byte		N10	, Dn3, v088
	.byte	W07
song004_3_6:
	.byte	W05
	.byte		N03	, An3, v092
	.byte	W04
	.byte			As3, v096
	.byte	W04
	.byte			Bn3, v092
	.byte	W04
	.byte		N11	, An3, v084
	.byte	W12
	.byte			Gn3, v088
	.byte	W12
	.byte			Fs3, v096
	.byte	W12
	.byte			Gn3, v088
	.byte	W12
	.byte			En3, v092
	.byte	W07
	.byte	PEND
	.byte	W05
	.byte		N10	, Bn3, v096
	.byte	W12
	.byte		N11	, En3, v084
	.byte	W12
	.byte		N10	, Gn3
	.byte	W12
	.byte			En3, v088
	.byte	W12
	.byte		N09	, Bn3, v096
	.byte	W12
	.byte		N10	, En3, v088
	.byte	W07
song004_3_7:
	.byte	W05
	.byte		N03	, Cn4, v092
	.byte	W04
	.byte			Cs4, v096
	.byte	W04
	.byte			Dn4, v092
	.byte	W04
	.byte		N10	, Cs4, v084
	.byte	W12
	.byte		N11	, Bn3, v088
	.byte	W12
	.byte			Cs4, v096
	.byte	W12
	.byte			An3, v088
	.byte	W12
	.byte			Bn3, v092
	.byte	W07
	.byte	PEND
song004_3_8:
	.byte	W05
	.byte		N10	, An3, v096
	.byte	W12
	.byte		N09	, Dn3, v084
	.byte	W11
	.byte		N10	, Fs3
	.byte	W12
	.byte			Dn3, v088
	.byte	W12
	.byte		N09	, An3, v096
	.byte	W12
	.byte		N10	, Dn3, v088
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.word	song004_3_6
song004_3_9:
	.byte	W05
	.byte		N10	, Bn3, v096
	.byte	W12
	.byte		N11	, En3, v084
	.byte	W11
	.byte		N10	, Gn3
	.byte	W12
	.byte			En3, v088
	.byte	W12
	.byte		N09	, Bn3, v096
	.byte	W12
	.byte		N10	, En3, v088
	.byte	W08
	.byte	PEND
	.byte	PATT	
		.word	song004_3_7
	.byte	PATT	
		.word	song004_3_8
	.byte	PATT	
		.word	song004_3_6
	.byte	PATT	
		.word	song004_3_9
	.byte	W04
	.byte		N04	, Cn4, v092
	.byte	W04
	.byte			Cs4, v096
	.byte	W04
	.byte			Dn4, v092
	.byte	W04
	.byte		N09	, Cs4, v084
	.byte	W13
	.byte		N11	, Bn3, v088
	.byte	W12
	.byte			Cs4, v096
	.byte	W12
	.byte			An3, v088
	.byte	W12
	.byte			Bn3, v092
	.byte	W07
	.byte	PATT	
		.word	song004_3_8
	.byte	W05
	.byte		N10	, An3, v096
	.byte	W12
	.byte		N09	, Dn3, v084
	.byte	W12
	.byte		N10	, Fs3
	.byte	W12
	.byte			Dn3, v088
	.byte	W12
	.byte		N09	, Dn4, v096
	.byte	W12
	.byte		N10	, Dn3, v088
	.byte	W07
	.byte	W05
	.byte			As3, v100
	.byte	W12
	.byte		N11	, En3, v088
	.byte	W12
	.byte			Fs3, v100
	.byte	W12
	.byte			En3, v088
	.byte	W12
	.byte		N09	, As3
	.byte	W12
	.byte		N08	, En3, v092
	.byte	W07
	.byte	W05
	.byte		N10	, As3
	.byte	W12
	.byte		N06	, En3
	.byte	W24
	.byte		N08	, As3
	.byte	W30
	.byte	W01
	.byte	W05
	.byte	GOTO	
		.word	song004_3_10
	.byte	FINE

	@********************** Track  4 **********************@

	.global song004_4
song004_4:	@ 0x0816D5A3
	.byte	KEYSH	, 0
	.byte	VOICE	, 27
	.byte	PAN	, c_v
	.byte	VOL	, v041
	.byte	W05
	.byte		N09	, Gn3, v092
	.byte	W36
	.byte			Gn3, v096
	.byte	W30
	.byte	W01
	.byte	W05
	.byte			An3, v092
	.byte	W24
	.byte			An3, v088
	.byte	W24
	.byte			An3, v104
	.byte	W19
song004_4_1:
	.byte	W05
	.byte		N09	, Gn3, v092
	.byte	W36
	.byte			Gn3, v096
	.byte	W30
	.byte	W01
	.byte	PEND
	.byte	W05
	.byte			Fs3, v092
	.byte	W24
	.byte			Fs3, v088
	.byte	W24
	.byte			Fs3, v104
	.byte	W19
	.byte	PATT	
		.word	song004_4_1
	.byte	W05
	.byte		N11	, An3, v104
	.byte	W48
	.byte			Gn3, v084
	.byte	W19
	.byte	PATT	
		.word	song004_4_1
	.byte	W05
	.byte		N11	, Fs3, v096
	.byte	W36
	.byte		N06	, Fs3, v092
	.byte	W30
	.byte	W01
	.byte	W05
song004_4_7:
	.byte		N09	, Gn3, v092
	.byte	W36
	.byte			Gn3, v096
	.byte	W30
	.byte	W01
song004_4_2:
	.byte	W05
	.byte		N11	, Fs3, v092
	.byte	W66
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song004_4_1
song004_4_3:
	.byte	W05
	.byte		N11	, An3, v092
	.byte	W66
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
song004_4_4:
	.byte	W05
	.byte		N09	, An3, v092
	.byte	W24
	.byte			An3, v088
	.byte	W24
	.byte		N08	, An3, v104
	.byte	W19
	.byte	PEND
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_3
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_2
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_4
	.byte	PATT	
		.word	song004_4_1
	.byte	W05
	.byte		N09	, An3, v092
	.byte	W24
	.byte			An3, v088
	.byte	W24
	.byte		N09	
	.byte	W19
	.byte	PATT	
		.word	song004_4_1
	.byte	PATT	
		.word	song004_4_4
	.byte	PATT	
		.word	song004_4_1
	.byte	W05
	.byte		N09	, Fs3, v092
	.byte	W48
	.byte		N09	
	.byte	W19
song004_4_5:
	.byte	W05
	.byte		N10	, Fs3, v100
	.byte	W66
	.byte	W01
	.byte	PEND
	.byte	W72
song004_4_6:
	.byte	W05
	.byte		N10	, Gn3, v100
	.byte	W66
	.byte	W01
	.byte	PEND
	.byte	W72
	.byte	PATT	
		.word	song004_4_5
	.byte	W72
	.byte	PATT	
		.word	song004_4_6
	.byte	W72
	.byte	PATT	
		.word	song004_4_5
	.byte	W72
	.byte	PATT	
		.word	song004_4_6
	.byte	W72
	.byte	PATT	
		.word	song004_4_5
	.byte	PATT	
		.word	song004_4_5
	.byte	W05
	.byte		N10	, Fs3, v088
	.byte	W66
	.byte	W01
	.byte	W05
	.byte			Fs3, v092
	.byte	W36
	.byte		N08	
	.byte	W30
	.byte	W01
	.byte	W05
	.byte	GOTO	
		.word	song004_4_7
	.byte	FINE

	@********************** Track  5 **********************@

	.global song004_5
song004_5:	@ 0x0816D6B9
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	MODT	, 0
	.byte	LFOS	, 25
	.byte	BENDR	, 12
	.byte	PAN	, c_v+10
	.byte	VOL	, v066
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W05
song004_5_1:
	.byte	W66
	.byte	W01
	.byte	W72
	.byte	W72
	.byte	W28
	.byte	W01
	.byte		N11	, Bn3, v104
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte			Dn4, v096
	.byte	W12
	.byte		N10	, Bn3, v108
	.byte	W07
	.byte	W05
	.byte		N22	, En4, v112
	.byte	W24
	.byte		N11	, Dn4, v100
	.byte	W12
	.byte			Cs4, v108
	.byte	W24
	.byte			Bn3, v104
	.byte	W07
	.byte	W05
	.byte			Cs4
	.byte	W12
	.byte		N10	, An3, v096
	.byte	W12
	.byte			Bn3, v108
	.byte	W12
	.byte		N11	, Gn3, v100
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			Fs3, v108
	.byte	W07
	.byte	W05
	.byte		N23	, Gn3, v092
	.byte	W24
	.byte		N11	, Fs3, v108
	.byte	W12
	.byte		N08	, En3, v100
	.byte	W24
	.byte		N11	, Fs3, v104
	.byte	W07
	.byte	W05
	.byte		N23	, Gn3, v092
	.byte	W24
	.byte		N22	, An3, v108
	.byte	W24
	.byte		N23	, Bn3, v096
	.byte	W19
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W52
	.byte	W01
	.byte		N10	, Bn3, v108
	.byte	W12
	.byte			Cs4, v096
	.byte	W07
	.byte	W05
	.byte		N36	, Dn4, v088
	.byte	W36
	.byte		N11	, Cs4, v100
	.byte	W12
	.byte		N23	, Bn3, v080
	.byte	W19
	.byte	W05
	.byte		N24	, An3, v092
	.byte	W24
	.byte		N22	, Gn3, v096
	.byte	W24
	.byte			Fs3
	.byte	W19
	.byte	W05
	.byte		TIE	, Gn3, v088
	.byte	W60
	.byte	MOD	, 4
	.byte	W07
	.byte	W72
	.byte	W11
	.byte		0
	.byte	W40
	.byte	W01
	.byte		EOT	
	.byte	W20
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W48
	.byte	W01
	.byte		N04	, As3, v060
	.byte	W04
	.byte		N23	, Bn3, v104
	.byte	W19
	.byte	W05
	.byte		N72	, An3, v092
	.byte	W42
	.byte	MOD	, 4
	.byte	W24
	.byte	W01
	.byte	W03
	.byte		0
	.byte	W24
	.byte	W02
	.byte		N23	, Gn3, v100
	.byte	W24
	.byte		N56	, Fs3, v096
	.byte	W19
	.byte	W40
	.byte	W01
	.byte		N48	, En3
	.byte	W30
	.byte	W01
	.byte	W52
	.byte	W01
	.byte		N04	, As3, v084
	.byte	W04
	.byte		N20	, Bn3, v100
	.byte	W15
	.byte	W05
	.byte		N68	, An3, v104
	.byte	W42
	.byte	MOD	, 2
	.byte	W24
	.byte	W01
	.byte	W03
	.byte		0
	.byte	W24
	.byte	W02
	.byte		N11	, Gn3, v092
	.byte	W12
	.byte			Fs3, v088
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			An3, v092
	.byte	W07
	.byte	W05
	.byte		N44	, Fs3, v104
	.byte	W48
	.byte			En3, v080
	.byte	W19
	.byte	W48
	.byte	W01
	.byte		N04	, As3, v060
	.byte	W04
	.byte		N24	, Bn3, v104
	.byte	W19
	.byte	W05
	.byte		N72	, An3, v092
	.byte	W42
	.byte	MOD	, 3
	.byte	W24
	.byte	W01
	.byte	W04
	.byte		0
	.byte	W24
	.byte	W01
	.byte		N23	, Gn3, v100
	.byte	W24
	.byte		N56	, Fs3, v096
	.byte	W19
	.byte	W40
	.byte	W01
	.byte		N28	, En3
	.byte	W30
	.byte	W01
	.byte	W28
	.byte	W01
	.byte		N12	, En3, v092
	.byte	W12
	.byte		N11	, Fs3, v088
	.byte	W12
	.byte		N12	, Gn3, v084
	.byte	W12
	.byte			Bn3, v096
	.byte	W07
	.byte	W05
	.byte		N68	, An3
	.byte	W42
	.byte	MOD	, 5
	.byte	W24
	.byte	W01
	.byte	W04
	.byte		0
	.byte	W13
	.byte		N09	, Gn3, v092
	.byte	W12
	.byte			Fs3, v088
	.byte	W12
	.byte		N13	, En3, v084
	.byte	W12
	.byte		N09	, Gn3, v088
	.byte	W12
	.byte		N12	, Bn3, v080
	.byte	W07
	.byte	W05
	.byte		N32	, As3, v104
	.byte	W36
	.byte		N10	, Gn3, v100
	.byte	W12
	.byte			Fs3, v108
	.byte	W12
	.byte		N12	, En3, v104
	.byte	W07
	.byte	W05
	.byte		N24	, Fs3, v100
	.byte	W36
	.byte		N09	
	.byte	W30
	.byte	W01
	.byte	W05
	.byte	GOTO	
		.word	song004_5_1
	.byte	FINE

	@********************** Track  6 **********************@

	.global song004_6
song004_6:	@ 0x0816D81D
	.byte	KEYSH	, 0
	.byte	VOICE	, 19
	.byte	PAN	, c_v
	.byte	VOL	, v087
	.byte	W05
	.byte		N11	, Cs3, v076
	.byte	W24
	.byte			Dn3, v104
	.byte	W12
	.byte			Cs3, v080
	.byte	W24
	.byte		N11	
	.byte	W07
song004_6_1:
	.byte	W05
	.byte		N11	, Ds3, v096
	.byte	W18
	.byte		N05	, Cs3, v056
	.byte	W06
	.byte		N11	, Dn3, v108
	.byte	W12
	.byte			Cs3, v080
	.byte	W12
	.byte			Dn3, v108
	.byte	W12
	.byte			Ds3, v076
	.byte	W07
	.byte	PEND
song004_6_3:
	.byte	W17
	.byte		N11	, Cs3, v056
	.byte	W12
	.byte			Dn3, v104
	.byte	W12
	.byte			Cs3, v080
	.byte	W24
	.byte		N11	
	.byte	W07
	.byte	PEND
song004_6_4:
	.byte	W05
	.byte		N11	, Ds3, v096
	.byte	W12
	.byte			Cs3, v056
	.byte	W12
	.byte			Dn3, v108
	.byte	W12
	.byte			Ds3, v088
	.byte	W12
	.byte			Dn3, v080
	.byte	W19
	.byte	PEND
song004_6_2:
	.byte	W05
	.byte		N11	, Cs3, v076
	.byte	W24
	.byte			Dn3, v104
	.byte	W12
	.byte			Cs3, v080
	.byte	W24
	.byte		N11	
	.byte	W07
	.byte	PEND
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_2
	.byte	W05
	.byte		N06	, Dn3, v116
	.byte	W08
	.byte		N05	, Dn3, v108
	.byte	W08
	.byte		N05	
	.byte	W08
	.byte			Dn3, v112
	.byte	W12
	.byte		N11	, Cs3, v088
	.byte	W30
	.byte	W01
	.byte	W05
song004_6_8:
	.byte		N11	, Cs3, v076
	.byte	W24
	.byte			Dn3, v104
	.byte	W12
	.byte			Cs3, v080
	.byte	W24
	.byte		N11	
	.byte	W07
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_4
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_1
song004_6_5:
	.byte	W05
	.byte		N11	, Cs3, v076
	.byte	W12
	.byte			Cs3, v056
	.byte	W12
	.byte			Dn3, v104
	.byte	W12
	.byte			Cs3, v080
	.byte	W24
	.byte		N11	
	.byte	W07
	.byte	PEND
song004_6_6:
	.byte	W05
	.byte		N11	, Ds3, v096
	.byte	W12
	.byte			Cs3, v056
	.byte	W12
	.byte		N05	, Dn3, v108
	.byte	W08
	.byte		N05	
	.byte	W08
	.byte			Dn3, v080
	.byte	W08
	.byte		N06	, Dn3, v108
	.byte	W12
	.byte		N11	, Ds3, v088
	.byte	W07
	.byte	PEND
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_4
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_5
	.byte	PATT	
		.word	song004_6_6
	.byte	PATT	
		.word	song004_6_5
	.byte	PATT	
		.word	song004_6_6
	.byte	PATT	
		.word	song004_6_2
	.byte	W05
	.byte		N11	, Ds3, v096
	.byte	W18
	.byte		N05	, Cs3, v056
	.byte	W06
	.byte		N11	, Dn3, v108
	.byte	W12
	.byte			Cs3, v080
	.byte	W12
	.byte			Dn3, v108
	.byte	W11
	.byte			Ds3, v076
	.byte	W08
	.byte	PATT	
		.word	song004_6_3
	.byte	W05
	.byte		N11	, Ds3, v096
	.byte	W12
	.byte			Cs3, v056
	.byte	W12
	.byte			Dn3, v108
	.byte	W12
	.byte		N05	, Cs3, v080
	.byte	W12
	.byte		N06	, Dn3, v108
	.byte	W12
	.byte		N06	
	.byte	W07
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_3
song004_6_7:
	.byte	W05
	.byte		N11	, Ds3, v096
	.byte	W12
	.byte		N05	, Cs3, v056
	.byte	W12
	.byte		N11	, Dn3, v108
	.byte	W12
	.byte			Ds3, v088
	.byte	W12
	.byte			Dn3, v080
	.byte	W19
	.byte	PEND
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_5
	.byte	PATT	
		.word	song004_6_7
	.byte	PATT	
		.word	song004_6_2
	.byte	PATT	
		.word	song004_6_1
	.byte	PATT	
		.word	song004_6_3
	.byte	PATT	
		.word	song004_6_7
	.byte	W05
	.byte		N06	, Dn3, v104
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N06	
	.byte	W08
	.byte		N11	
	.byte	W12
	.byte			Cs3, v080
	.byte	W24
	.byte		N11	
	.byte	W07
	.byte	PATT	
		.word	song004_6_1
	.byte	W05
	.byte		N11	, Dn3, v104
	.byte	W12
	.byte			Cs3, v056
	.byte	W12
	.byte			Cs3, v068
	.byte	W12
	.byte			Dn3, v108
	.byte	W12
	.byte			Cs3, v056
	.byte	W12
	.byte			Cs3, v068
	.byte	W07
	.byte	W05
	.byte		N06	, Ds3, v096
	.byte	W08
	.byte		N05	, Ds3, v076
	.byte	W08
	.byte		N05	
	.byte	W08
	.byte			Cs3, v068
	.byte	W12
	.byte		N11	, Dn3, v116
	.byte	W30
	.byte	W01
	.byte	W05
	.byte	GOTO	
		.word	song004_6_8
	.byte	FINE

	.align 2
	.global song004
song004:	@ 0x0816D9DC
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	128		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song004_1		@ track
	.word	song004_2		@ track
	.word	song004_3		@ track
	.word	song004_4		@ track
	.word	song004_5		@ track
	.word	song004_6		@ track
