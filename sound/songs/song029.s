	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song029_1
song029_1:	@ 0x08174F9C
	.byte	KEYSH	, 0
song029_1_3:
	.byte	TEMPO	, 71
	.byte	VOICE	, 11
	.byte	PAN	, c_v+10
	.byte	VOL	, v090
	.byte		N06	, Cn2, v092
	.byte		N06	, Gn2
	.byte	W12
	.byte			Cn2
	.byte		N06	, Gn2
	.byte	W12
	.byte			Cn2
	.byte		N06	, Gn2
	.byte	W12
	.byte			Cn2, v112
	.byte		N06	, Gn2
	.byte	W12
	.byte			Cn2, v092
	.byte		N06	, Gn2
	.byte	W12
	.byte			Cn2
	.byte		N06	, Gn2
	.byte	W12
	.byte			Cn2, v112
	.byte		N06	, Gn2
	.byte	W12
	.byte			Cn2, v092
	.byte		N06	, Gn2
	.byte	W12
song029_1_1:
	.byte		N06	, Cn2, v092
	.byte		N06	, An2
	.byte	W12
	.byte			Cn2
	.byte		N06	, An2
	.byte	W12
	.byte			Cn2
	.byte		N06	, An2
	.byte	W12
	.byte			Cn2, v112
	.byte		N06	, An2
	.byte	W12
	.byte			Cn2, v092
	.byte		N06	, An2
	.byte	W12
	.byte			Cn2
	.byte		N06	, An2
	.byte	W12
	.byte			Cn2, v112
	.byte		N06	, An2
	.byte	W12
	.byte			Cn2, v092
	.byte		N06	, An2
	.byte	W12
	.byte	PEND
	.byte			Cn2
	.byte		N06	, Bn2
	.byte	W12
	.byte			Cn2
	.byte		N06	, Bn2
	.byte	W12
	.byte			Cn2
	.byte		N06	, Bn2
	.byte	W12
	.byte			Cn2, v112
	.byte		N06	, Bn2
	.byte	W12
	.byte			Cn2, v092
	.byte		N06	, Bn2
	.byte	W12
	.byte			Cn2
	.byte		N06	, Bn2
	.byte	W12
	.byte			Cn2, v112
	.byte		N06	, Bn2
	.byte	W12
	.byte			Cn2, v092
	.byte		N06	, Bn2
	.byte	W12
	.byte	PATT	
		.word	song029_1_1
song029_1_2:
	.byte		N06	, Cs2, v092
	.byte		N06	, Gs2
	.byte	W12
	.byte			Cs2
	.byte		N06	, Gs2
	.byte	W12
	.byte			Cs2
	.byte		N06	, Gs2
	.byte	W12
	.byte			Cs2, v112
	.byte		N06	, Gs2
	.byte	W12
	.byte			Cs2, v092
	.byte		N06	, Gs2
	.byte	W12
	.byte			Cs2
	.byte		N06	, Gs2
	.byte	W12
	.byte			Cs2, v112
	.byte		N06	, Gs2
	.byte	W12
	.byte			Cs2, v092
	.byte		N06	, Gs2
	.byte	W12
	.byte	PEND
	.byte			Cs2
	.byte		N06	, As2
	.byte	W12
	.byte			Cs2
	.byte		N06	, As2
	.byte	W12
	.byte			Cs2
	.byte		N06	, As2
	.byte	W12
	.byte			Cs2, v112
	.byte		N06	, As2
	.byte	W12
	.byte			Cs2, v092
	.byte		N06	, As2
	.byte	W12
	.byte			Cs2
	.byte		N06	, As2
	.byte	W12
	.byte			Cs2, v112
	.byte		N06	, As2
	.byte	W12
	.byte			Cs2, v092
	.byte		N06	, As2
	.byte	W12
	.byte	PATT	
		.word	song029_1_2
	.byte		N06	, Cs2, v092
	.byte		N06	, Fs2
	.byte	W12
	.byte			Cs2
	.byte		N06	, Fs2
	.byte	W12
	.byte			Cs2
	.byte		N06	, Fs2
	.byte	W12
	.byte			Cs2, v112
	.byte		N06	, Fs2
	.byte	W12
	.byte			Cs2, v092
	.byte		N06	, Fs2
	.byte	W12
	.byte			Cs2
	.byte		N06	, Fs2
	.byte	W12
	.byte			Cs2, v112
	.byte		N06	, Fs2
	.byte	W12
	.byte			Cs2, v092
	.byte		N06	, Fs2
	.byte	W12
	.byte	GOTO	
		.word	song029_1_3
	.byte	W96
	.byte	TEMPO	, 80
	.byte	W72
	.byte	W72
	.byte	TEMPO	, 77
	.byte	W72
	.byte	TEMPO	, 67
	.byte	FINE

	@********************** Track  2 **********************@

	.global song029_2
song029_2:	@ 0x081750A2
	.byte	KEYSH	, 0
song029_2_3:
	.byte	VOICE	, 12
	.byte	PAN	, c_v-20
	.byte	VOL	, v082
	.byte		N06	, Bn4, v112
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Cn4, v088
	.byte	W06
	.byte			Bn3, v080
	.byte	W72
song029_2_1:
	.byte		N06	, Bn4, v112
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Cn4, v088
	.byte	W06
	.byte			Bn3, v080
	.byte	W72
	.byte	PEND
	.byte	PATT	
		.word	song029_2_1
	.byte		N06	, Bn4, v112
	.byte	W06
	.byte			Gn4, v104
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Cn4, v088
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Bn3, v084
	.byte	W06
	.byte			Gn3, v080
	.byte	W06
	.byte			En3, v076
	.byte	W06
	.byte			Dn3, v072
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			En3, v068
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3, v072
	.byte	W06
	.byte			Bn3, v076
	.byte	W06
	.byte			Cn4, v084
	.byte	W06
	.byte			En4, v096
	.byte	W06
	.byte			Gn4, v108
	.byte	W06
	.byte	PAN	, c_v-20
	.byte		N06	, Cn5, v112
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fn4, v096
	.byte	W06
	.byte			Cs4, v088
	.byte	W06
	.byte			Cn4, v080
	.byte	W72
song029_2_2:
	.byte		N06	, Cn5, v112
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fn4, v096
	.byte	W06
	.byte			Cs4, v088
	.byte	W06
	.byte			Cn4, v080
	.byte	W72
	.byte	PEND
	.byte	PATT	
		.word	song029_2_2
	.byte		N06	, Cn5, v112
	.byte	W06
	.byte			Gs4, v104
	.byte	W06
	.byte			Fn4, v096
	.byte	W06
	.byte			Cs4, v088
	.byte	W06
	.byte	PAN	, c_v+20
	.byte		N06	, Cn4, v080
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Fn4, v084
	.byte	W06
	.byte			Gs4, v088
	.byte	W06
	.byte			Cn5, v092
	.byte	W06
	.byte			Cs5, v096
	.byte	W06
	.byte			Fn5, v100
	.byte	W06
	.byte			Gs5, v104
	.byte	W18
	.byte	PAN	, c_v
	.byte	W12
	.byte	GOTO	
		.word	song029_2_3
	.byte	W96
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	FINE

	@********************** Track  3 **********************@

	.global song029_3
song029_3:	@ 0x0817515E
	.byte	KEYSH	, 0
song029_3_2:
	.byte	VOICE	, 12
	.byte	PAN	, c_v+20
	.byte	VOL	, v082
	.byte	W24
	.byte		N06	, Bn3, v076
	.byte	W06
	.byte			Cn4, v084
	.byte	W06
	.byte			En4, v092
	.byte	W60
	.byte	W24
	.byte			Bn3, v072
	.byte	W06
	.byte			Cn4, v080
	.byte	W06
	.byte			En4, v088
	.byte	W60
	.byte	W24
	.byte			Bn3, v072
	.byte	W06
	.byte			Cn4, v080
	.byte	W06
	.byte			En4, v088
	.byte	W36
	.byte	PAN	, c_v
	.byte	W24
	.byte	W24
	.byte		c_v-20
	.byte		N06	, Gn3, v084
	.byte	W06
	.byte			En3, v080
	.byte	W06
	.byte			Cn3, v076
	.byte	W06
	.byte			Bn2, v072
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Cn3, v068
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fn3, v072
	.byte	W06
	.byte			Gn3, v076
	.byte	W06
	.byte			An3, v084
	.byte	W06
	.byte			Cn4, v096
	.byte	W06
	.byte			En4, v108
	.byte	W06
	.byte	PAN	, c_v+20
	.byte	W24
	.byte		N06	, Cn4, v072
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Fn4, v092
	.byte	W60
song029_3_1:
	.byte	W24
	.byte		N06	, Cn4, v072
	.byte	W06
	.byte			Cs4, v080
	.byte	W06
	.byte			Fn4, v088
	.byte	W60
	.byte	PEND
	.byte	PATT	
		.word	song029_3_1
	.byte	PAN	, c_v-20
	.byte	W24
	.byte		N06	, Gs3, v080
	.byte	W06
	.byte			As3
	.byte	W06
	.byte			Cs4, v084
	.byte	W06
	.byte			Fn4, v088
	.byte	W06
	.byte			Gs4, v092
	.byte	W06
	.byte			As4, v096
	.byte	W06
	.byte			Cs5, v100
	.byte	W06
	.byte			Fn5, v104
	.byte	W18
	.byte	PAN	, c_v
	.byte	W12
	.byte	GOTO	
		.word	song029_3_2
	.byte	W96
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	FINE

	@********************** Track  4 **********************@

	.global song029_4
song029_4:	@ 0x081751F3
	.byte	KEYSH	, 0
song029_4_3:
	.byte	VOICE	, 13
	.byte	PAN	, c_v
	.byte	VOL	, v090
	.byte		N18	, Cn2, v100
	.byte	W24
	.byte		N12	, Gn1
	.byte	W12
	.byte		N18	, Cn2
	.byte	W48
	.byte		N12	, Gn1
	.byte	W12
song029_4_1:
	.byte		N18	, Cn2, v100
	.byte	W24
	.byte		N12	, Gn1
	.byte	W12
	.byte		N18	, Cn2
	.byte	W48
	.byte		N12	, Gn1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song029_4_1
	.byte	PATT	
		.word	song029_4_1
song029_4_2:
	.byte		N18	, Cs2, v100
	.byte	W24
	.byte		N12	, Gs1
	.byte	W12
	.byte		N18	, Cs2
	.byte	W48
	.byte		N12	, Gs1
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song029_4_2
	.byte	PATT	
		.word	song029_4_2
	.byte	PATT	
		.word	song029_4_2
	.byte	GOTO	
		.word	song029_4_3
	.byte	W96
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	FINE

	@********************** Track  5 **********************@

	.global song029_5
song029_5:	@ 0x08175247
	.byte	KEYSH	, 0
song029_5_2:
	.byte	VOICE	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v068
	.byte		N06	, Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
song029_5_1:
	.byte		N06	, Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song029_5_1
	.byte	PATT	
		.word	song029_5_1
	.byte		N24	, Dn1, v060
	.byte	W06
	.byte		N06	, Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PATT	
		.word	song029_5_1
	.byte	PATT	
		.word	song029_5_1
	.byte		N06	, Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v048
	.byte	W06
	.byte			Ds1, v036
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N03	, Ds1, v048
	.byte	W03
	.byte			Ds1, v028
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Ds1, v032
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Ds1, v036
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Ds1, v040
	.byte	W03
	.byte	GOTO	
		.word	song029_5_2
	.byte	W96
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	FINE

	.align 2
	.global song029
song029:	@ 0x08175314
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song029_1		@ track
	.word	song029_2		@ track
	.word	song029_3		@ track
	.word	song029_4		@ track
	.word	song029_5		@ track
