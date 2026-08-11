	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song019_1
song019_1:	@ 0x081724DC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 92
	.byte	PAN	, c_v-15
	.byte	VOL	, v074
	.byte		N22	, As3, v100
	.byte	W24
	.byte			Bn3
	.byte	W24
song019_1_4:
	.byte		TIE	, Cn4, v100
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W36
	.byte	W01
	.byte		EOT	
	.byte	W11
	.byte		N22	
	.byte	W24
song019_1_1:
	.byte		N22	, Ds4, v100
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte		TIE	, As3
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N68	, Fs3
	.byte	W24
	.byte	W60
	.byte		N10	
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			An3
	.byte	W12
	.byte			As3
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		TIE	, Cn4
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W40
	.byte		EOT	
	.byte	W08
	.byte		N22	
	.byte	W24
	.byte	PATT	
		.word	song019_1_1
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	, As3
	.byte	W02
	.byte		N68	, Fs3, v100
	.byte	W24
	.byte	W72
	.byte		N22	, Bn3
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte		N68	, Cs4
	.byte	W24
song019_1_2:
	.byte	W48
	.byte		TIE	, Gs4, v100
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	
	.byte	W24
	.byte	W02
song019_1_3:
	.byte		N22	, Ds4, v100
	.byte	W24
	.byte			Cs4
	.byte	W24
	.byte		TIE	, Cn4
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N92	, Gs3
	.byte	W24
	.byte	W72
	.byte		N22	, As3
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte		N68	, Cs4
	.byte	W24
	.byte	PATT	
		.word	song019_1_2
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	, Gs4
	.byte	W24
	.byte	W02
	.byte	PATT	
		.word	song019_1_3
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	, Cn4
	.byte	W02
	.byte		N90	, Gs3, v100
	.byte	W24
	.byte	W72
	.byte		N22	, As3
	.byte	W24
	.byte			Bn3
	.byte	W24
	.byte	GOTO	
		.word	song019_1_4
	.byte	FINE

	@********************** Track  2 **********************@

	.global song019_2
song019_2:	@ 0x08172585
	.byte	KEYSH	, 0
	.byte	VOICE	, 92
	.byte	PAN	, c_v+15
	.byte	VOL	, v074
	.byte	W48
song019_2_3:
	.byte	W24
	.byte	W48
	.byte		N68	, Gs3, v100
	.byte	W24
	.byte	W48
	.byte		N60	, Fn3
	.byte	W24
	.byte	W48
	.byte		N22	, Gs3
	.byte	W24
	.byte		N22	
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		TIE	, Fs3
	.byte	W24
	.byte	W72
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Cs3
	.byte	W24
	.byte	W72
	.byte	W72
	.byte	W48
	.byte			Gs3
	.byte	W24
	.byte	W48
	.byte		N64	, Fn3
	.byte	W24
	.byte	W48
	.byte		N22	, Gs3
	.byte	W24
	.byte			Cn4
	.byte	W24
	.byte			As3
	.byte	W24
	.byte		TIE	, Fs3
	.byte	W24
	.byte	W72
	.byte	W44
	.byte	W03
	.byte		EOT	
	.byte	W01
	.byte		N68	, Cs3
	.byte	W24
	.byte	W72
	.byte		N44	, Gs3
	.byte	W48
	.byte		N68	, An3
	.byte	W24
song019_2_1:
	.byte	W48
	.byte		TIE	, Cs4, v100
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	
	.byte	W24
	.byte	W02
song019_2_2:
	.byte		N22	, Gs3, v100
	.byte	W24
	.byte			An3
	.byte	W24
	.byte		TIE	, Gs3
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N92	, Ds3
	.byte	W24
	.byte	W72
	.byte		N22	, Fs3
	.byte	W24
	.byte			Gs3
	.byte	W24
	.byte		N68	, An3
	.byte	W24
	.byte	PATT	
		.word	song019_2_1
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	, Cs4
	.byte	W24
	.byte	W02
	.byte	PATT	
		.word	song019_2_2
	.byte	W72
	.byte	W44
	.byte	W02
	.byte		EOT	, Gs3
	.byte	W02
	.byte		TIE	, Ds3, v100
	.byte	W24
	.byte	W72
	.byte	W22
	.byte		EOT	
	.byte	W24
	.byte	W02
	.byte	GOTO	
		.word	song019_2_3
	.byte	FINE

	@********************** Track  3 **********************@

	.global song019_3
song019_3:	@ 0x0817261B
	.byte	KEYSH	, 0
	.byte	VOICE	, 94
	.byte	PAN	, c_v
	.byte	VOL	, v066
	.byte	W48
song019_3_7:
	.byte	W24
song019_3_1:
	.byte		N36	, Cn4, v100
	.byte		N24	, Ds4
	.byte	W24
	.byte		N12	, Gs3
	.byte	W24
	.byte		N72	
	.byte		N24	, Cn4
	.byte	W24
	.byte	PEND
song019_3_2:
	.byte		N24	, Ds3, v100
	.byte	W24
	.byte			Fn3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song019_3_1
	.byte	PATT	
		.word	song019_3_2
song019_3_3:
	.byte		N36	, As3, v100
	.byte		N24	, Cs4
	.byte	W24
	.byte		N12	, Fs3
	.byte	W24
	.byte		N72	
	.byte		N24	, As3
	.byte	W24
	.byte	PEND
song019_3_4:
	.byte		N24	, Cs3, v100
	.byte	W24
	.byte			Ds3
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song019_3_3
	.byte	PATT	
		.word	song019_3_4
	.byte	PATT	
		.word	song019_3_1
	.byte	PATT	
		.word	song019_3_2
	.byte	PATT	
		.word	song019_3_1
	.byte	PATT	
		.word	song019_3_2
	.byte	PATT	
		.word	song019_3_3
	.byte	PATT	
		.word	song019_3_4
	.byte	PATT	
		.word	song019_3_3
	.byte	PATT	
		.word	song019_3_4
song019_3_5:
	.byte		N24	, En3, v092
	.byte		N24	, Gs3, v100
	.byte	W24
	.byte			Cs3, v084
	.byte	W24
	.byte		N48	, Gs3, v088
	.byte		N48	, Bn3, v100
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	PATT	
		.word	song019_3_5
	.byte	W72
song019_3_6:
	.byte		N24	, Ds3, v092
	.byte		N24	, Gs3, v100
	.byte	W24
	.byte			Cn3, v084
	.byte	W24
	.byte		N48	, Fs3, v088
	.byte		N48	, Cn4, v100
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	PATT	
		.word	song019_3_6
	.byte	W72
	.byte	PATT	
		.word	song019_3_5
	.byte	W72
	.byte	PATT	
		.word	song019_3_5
	.byte	W72
	.byte	PATT	
		.word	song019_3_6
	.byte	W72
	.byte	PATT	
		.word	song019_3_6
	.byte	W48
	.byte	GOTO	
		.word	song019_3_7
	.byte	FINE

	@********************** Track  4 **********************@

	.global song019_4
song019_4:	@ 0x081726DB
	.byte	KEYSH	, 0
	.byte	VOICE	, 93
	.byte	PAN	, c_v-30
	.byte	VOL	, v051
	.byte	W48
song019_4_6:
	.byte	W24
song019_4_1:
	.byte		N22	, Cn4, v092
	.byte	W24
	.byte			Fn4
	.byte	W24
	.byte		N72	, Cn5, v100
	.byte	W24
	.byte	PEND
	.byte	W72
song019_4_2:
	.byte	W24
	.byte		N22	, Ds5, v092
	.byte	W24
	.byte		N44	, As4, v096
	.byte	W24
	.byte	PEND
	.byte	W24
	.byte		N22	, Fn4, v092
	.byte	W48
	.byte			As3, v112
	.byte	W24
	.byte			Ds4, v092
	.byte	W24
	.byte		N72	, As4, v116
	.byte	W24
	.byte	W72
	.byte	W24
	.byte		N22	, Cs5, v092
	.byte	W24
	.byte		N44	, Gs4, v096
	.byte	W24
	.byte	W24
	.byte		N22	, Ds4, v092
	.byte	W48
	.byte	PATT	
		.word	song019_4_1
	.byte	W72
	.byte	PATT	
		.word	song019_4_2
	.byte	W24
	.byte		N22	, Fn4, v092
	.byte	W48
	.byte			As3, v112
	.byte	W24
	.byte			Ds4, v092
	.byte	W24
	.byte		N68	, As4, v116
	.byte	W24
	.byte	W48
	.byte			Gs4, v096
	.byte	W24
	.byte	W48
	.byte			Cs5, v092
	.byte	W24
	.byte	W72
song019_4_3:
	.byte		N22	, En4, v064
	.byte	W24
	.byte			Gs4, v076
	.byte	W24
	.byte			Ds5
	.byte	W24
	.byte	PEND
song019_4_4:
	.byte		N22	, Cs5, v084
	.byte	W24
	.byte			Gs4, v076
	.byte	W24
	.byte		N68	, Ds4
	.byte	W24
	.byte	PEND
	.byte	W48
	.byte		N44	, Cs4, v088
	.byte	W24
	.byte	W24
	.byte		N22	, Gs3, v084
	.byte	W48
song019_4_5:
	.byte		N22	, Ds4, v096
	.byte	W24
	.byte			Gs4, v088
	.byte	W24
	.byte			Ds5, v076
	.byte	W24
	.byte	PEND
	.byte			Cs5
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N92	, Cn5, v072
	.byte	W24
	.byte	W72
	.byte		N22	, Gs4
	.byte	W24
	.byte			Ds4, v076
	.byte	W48
	.byte	PATT	
		.word	song019_4_3
	.byte	PATT	
		.word	song019_4_4
	.byte	W48
	.byte		N44	, Cs4, v088
	.byte	W24
	.byte	W24
	.byte		N22	, Gs3, v084
	.byte	W48
	.byte	PATT	
		.word	song019_4_5
	.byte		N22	, Cs5, v076
	.byte	W24
	.byte			Gs4
	.byte	W24
	.byte		N72	, Cn5, v072
	.byte	W24
	.byte	W72
	.byte		N22	, Cs5
	.byte	W24
	.byte			Ds5, v076
	.byte	W24
	.byte	GOTO	
		.word	song019_4_6
	.byte	FINE

	@********************** Track  5 **********************@

	.global song019_5
song019_5:	@ 0x081727A5
	.byte	KEYSH	, 0
	.byte	VOICE	, 95
	.byte	PAN	, c_v
	.byte	VOL	, v030
	.byte	W48
song019_5_15:
	.byte		N23	, Cs1, v100
	.byte	W24
song019_5_1:
	.byte		N23	, Gs1, v100
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte	PEND
song019_5_2:
	.byte		N23	, Cs2, v100
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte			Cs1
	.byte	W24
	.byte	PEND
song019_5_3:
	.byte		N23	, Gs1, v100
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte			Fn2
	.byte	W24
	.byte	PEND
song019_5_4:
	.byte		N23	, Cs2, v100
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte			Bn1
	.byte	W24
	.byte	PEND
song019_5_5:
	.byte		N23	, Fs1, v100
	.byte	W24
	.byte			Bn1
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte	PEND
song019_5_6:
	.byte		N23	, Bn1, v100
	.byte	W24
	.byte			Fs1
	.byte	W24
	.byte			Bn1
	.byte	W24
	.byte	PEND
song019_5_7:
	.byte		N23	, Fs1, v100
	.byte	W24
	.byte			Cs2
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte	PEND
	.byte			Bn1
	.byte	W24
	.byte			Fs1
	.byte	W24
	.byte			Cs1
	.byte	W24
	.byte	PATT	
		.word	song019_5_1
	.byte	PATT	
		.word	song019_5_2
	.byte	PATT	
		.word	song019_5_3
	.byte	PATT	
		.word	song019_5_4
	.byte	PATT	
		.word	song019_5_5
	.byte	PATT	
		.word	song019_5_6
	.byte	PATT	
		.word	song019_5_7
	.byte		N23	, Bn1, v100
	.byte	W24
	.byte			Fs1
	.byte	W24
	.byte			An1
	.byte	W24
song019_5_8:
	.byte		N23	, En1, v100
	.byte	W24
	.byte			An1
	.byte	W24
	.byte			Bn1
	.byte	W24
	.byte	PEND
song019_5_9:
	.byte		N23	, An1, v100
	.byte	W24
	.byte			En2
	.byte	W24
	.byte			An1
	.byte	W24
	.byte	PEND
song019_5_10:
	.byte		N23	, Bn1, v100
	.byte	W24
	.byte			An1
	.byte	W24
	.byte			En1
	.byte	W24
	.byte	PEND
song019_5_11:
	.byte		N23	, Cs1, v100
	.byte	W24
	.byte			An1
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte	PEND
song019_5_12:
	.byte		N23	, Ds1, v100
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte			As1
	.byte	W24
	.byte	PEND
song019_5_13:
	.byte		N23	, Gs1, v100
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte	PEND
song019_5_14:
	.byte		N23	, Cn2, v100
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte			Ds1
	.byte	W24
	.byte	PEND
	.byte			Cn1
	.byte	W24
	.byte			Gs1
	.byte	W24
	.byte			An1
	.byte	W24
	.byte	PATT	
		.word	song019_5_8
	.byte	PATT	
		.word	song019_5_9
	.byte	PATT	
		.word	song019_5_10
	.byte	PATT	
		.word	song019_5_11
	.byte	PATT	
		.word	song019_5_12
	.byte	PATT	
		.word	song019_5_13
	.byte	PATT	
		.word	song019_5_14
	.byte		N23	, Cn1, v100
	.byte	W24
	.byte		N20	, Gs1, v112
	.byte	W24
	.byte	GOTO	
		.word	song019_5_15
	.byte	FINE

	.align 2
	.global song019
song019:	@ 0x08172898
	.byte	5		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song019_1		@ track
	.word	song019_2		@ track
	.word	song019_3		@ track
	.word	song019_4		@ track
	.word	song019_5		@ track
