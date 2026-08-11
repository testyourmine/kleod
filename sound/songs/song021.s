	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song021_1
song021_1:	@ 0x08172D58
	.byte	KEYSH	, 0
song021_1_3:
	.byte	TEMPO	, 60
	.byte	VOICE	, 102
	.byte	MODT	, 0
	.byte	PAN	, c_v+10
	.byte	VOL	, v089
	.byte		N44	, Gn3, v080
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte			As3
	.byte	W48
	.byte		N32	, Cn4
	.byte	W36
	.byte		N09	, Gn3
	.byte	W12
	.byte		N32	, As3
	.byte	W36
	.byte		N06	, Gs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte		N44	, Gs3
	.byte	W24
	.byte	W01
	.byte	MOD	, 2
	.byte	W21
	.byte		0
	.byte	W02
	.byte		N32	, Gn3
	.byte	W36
	.byte		N08	, Ds3
	.byte	W12
	.byte		N42	, As2
	.byte	W08
	.byte	MOD	, 2
	.byte	W32
	.byte	W02
	.byte		0
	.byte	W06
	.byte		N44	, Gn3
	.byte	W48
	.byte			Gs3
	.byte	W48
	.byte			As3
	.byte	W48
	.byte		N40	, Cn4
	.byte	W12
	.byte	MOD	, 2
	.byte	W28
	.byte	W01
	.byte		0
	.byte	W01
	.byte		N04	, Gn3
	.byte	W06
	.byte		N44	
	.byte	W48
	.byte		N32	, Fn3
	.byte	W36
	.byte		N04	, Ds3
	.byte	W06
	.byte			Fn3
	.byte	W06
	.byte		N68	, Ds3
	.byte	W36
	.byte	W01
	.byte	MOD	, 3
	.byte	W32
	.byte	W02
	.byte		0
	.byte	W24
	.byte	VOICE	, 92
	.byte	VOL	, v081
	.byte	PAN	, c_v
	.byte	W01
song021_1_1:
	.byte		N68	, As2, v080
	.byte	W72
	.byte		N22	, Bn2
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_1_1
	.byte		N68	, As2, v080
	.byte	W72
	.byte		N20	, Dn3
	.byte	W24
	.byte		N90	, Cs3
	.byte	W96
song021_1_2:
	.byte		N68	, As3, v080
	.byte	W72
	.byte		N22	, Bn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_1_2
	.byte		N44	, As3, v080
	.byte	W48
	.byte			Dn4
	.byte	W48
	.byte		TIE	, Cs4
	.byte	W96
	.byte	W56
	.byte	W01
	.byte		EOT	
	.byte	W36
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song021_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song021_2
song021_2:	@ 0x08172DFA
	.byte	KEYSH	, 0
song021_2_5:
	.byte	VOICE	, 104
	.byte	PAN	, c_v-15
	.byte	VOL	, v097
	.byte		N24	, Ds1, v100
	.byte	W72
	.byte		N21	, As1
	.byte	W24
song021_2_1:
	.byte		N24	, Ds1, v100
	.byte	W72
	.byte		N21	, As1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_2_1
	.byte	PATT	
		.word	song021_2_1
	.byte	PATT	
		.word	song021_2_1
	.byte	PATT	
		.word	song021_2_1
	.byte	PATT	
		.word	song021_2_1
	.byte		N24	, Ds1, v100
	.byte	W72
	.byte		N04	, As1, v064
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			As1, v068
	.byte	W04
	.byte			As1, v076
	.byte	W04
	.byte			As1, v088
	.byte	W04
song021_2_2:
	.byte		N22	, Fs1, v080
	.byte	W24
	.byte		N11	, As1
	.byte	W12
	.byte		N24	, Fs1
	.byte	W36
	.byte		N22	, Bn1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_2_2
	.byte	PATT	
		.word	song021_2_2
song021_2_3:
	.byte		N22	, Fs1, v080
	.byte	W24
	.byte		N11	, As1
	.byte	W12
	.byte		N24	, Fs1
	.byte	W36
	.byte		N04	, Bn1, v084
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Bn1, v088
	.byte	W04
	.byte			Bn1, v096
	.byte	W04
	.byte			Bn1, v104
	.byte	W04
	.byte	PEND
	.byte	PATT	
		.word	song021_2_2
	.byte	PATT	
		.word	song021_2_2
	.byte	PATT	
		.word	song021_2_2
	.byte	PATT	
		.word	song021_2_3
	.byte		N22	, Fs1, v080
	.byte	W24
	.byte		N11	, As1
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N04	, Bn1, v040
	.byte	W04
	.byte			Bn1, v044
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Bn1, v048
	.byte	W04
	.byte		N04	
	.byte	W04
	.byte			Bn1, v052
	.byte	W04
	.byte			Bn1, v056
	.byte	W04
	.byte			Bn1, v060
	.byte	W04
	.byte			Bn1, v064
	.byte	W04
	.byte			Bn1, v072
	.byte	W04
	.byte			Bn1, v080
	.byte	W04
	.byte			Bn1, v092
	.byte	W04
song021_2_4:
	.byte		N24	, Ds1, v080
	.byte	W72
	.byte		N22	, As1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_2_4
	.byte	GOTO	
		.word	song021_2_5
	.byte	FINE

	@********************** Track  3 **********************@

	.global song021_3
song021_3:	@ 0x08172EC6
	.byte	KEYSH	, 0
song021_3_3:
	.byte	VOICE	, 44
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte	W24
	.byte		N06	, En1, v048
	.byte	W06
	.byte			En1, v052
	.byte	W06
	.byte			En1, v056
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			En1, v060
	.byte	W48
song021_3_1:
	.byte	W24
	.byte		N06	, En1, v048
	.byte	W06
	.byte			En1, v052
	.byte	W06
	.byte			En1, v056
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			En1, v060
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song021_3_1
	.byte	PATT	
		.word	song021_3_1
	.byte	PATT	
		.word	song021_3_1
	.byte	PATT	
		.word	song021_3_1
	.byte	PATT	
		.word	song021_3_1
	.byte	PATT	
		.word	song021_3_1
	.byte		N42	, Dn1, v036
	.byte	W24
	.byte		N06	, En1, v048
	.byte	W06
	.byte			En1, v052
	.byte	W06
	.byte		N23	, Cn1, v080
	.byte	W06
	.byte		N06	, En1, v056
	.byte	W06
	.byte			En1, v060
	.byte	W24
	.byte		N42	, Dn1, v048
	.byte	W24
song021_3_2:
	.byte		N17	, Cn1, v080
	.byte	W24
	.byte		N06	, En1, v048
	.byte	W06
	.byte			En1, v052
	.byte	W06
	.byte		N17	, Cn1, v080
	.byte	W06
	.byte		N06	, En1, v056
	.byte	W06
	.byte			En1, v060
	.byte	W24
	.byte		N42	, Dn1, v048
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_3_2
	.byte		N17	, Cn1, v080
	.byte	W24
	.byte		N06	, En1, v048
	.byte	W06
	.byte			En1, v052
	.byte	W06
	.byte		N17	, Cn1, v080
	.byte	W06
	.byte		N06	, En1, v056
	.byte	W06
	.byte			En1, v060
	.byte	W24
	.byte		N23	, Dn1, v048
	.byte	W24
	.byte		N42	, Dn1, v036
	.byte	W24
	.byte		N06	, En1, v048
	.byte	W06
	.byte			En1, v052
	.byte	W06
	.byte		N17	, Cn1, v080
	.byte	W06
	.byte		N06	, En1, v056
	.byte	W06
	.byte			En1, v060
	.byte	W24
	.byte		N42	, Dn1, v048
	.byte	W24
	.byte	PATT	
		.word	song021_3_2
	.byte	PATT	
		.word	song021_3_2
	.byte	PATT	
		.word	song021_3_2
	.byte		N17	, Cn1, v080
	.byte	W24
	.byte		N06	, En1, v048
	.byte	W06
	.byte			En1, v052
	.byte	W06
	.byte		N17	, Cn1, v080
	.byte	W06
	.byte		N06	, En1, v056
	.byte	W06
	.byte			En1, v060
	.byte	W24
	.byte		N22	, Dn1, v048
	.byte	W24
	.byte		N42	
	.byte	W24
	.byte		N06	, En1
	.byte	W06
	.byte			En1, v052
	.byte	W06
	.byte			En1, v056
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			En1, v060
	.byte	W48
	.byte	PATT	
		.word	song021_3_1
	.byte	GOTO	
		.word	song021_3_3
	.byte	FINE

	@********************** Track  4 **********************@

	.global song021_4
song021_4:	@ 0x08172FBF
	.byte	KEYSH	, 0
song021_4_3:
	.byte	VOICE	, 92
	.byte	PAN	, c_v-24
	.byte	VOL	, v081
	.byte	W48
	.byte		TIE	, As2, v080
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte	W48
	.byte		TIE	
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		EOT	
	.byte	W03
song021_4_1:
	.byte		N68	, Fs3, v080
	.byte	W72
	.byte		N22	, Gn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_4_1
	.byte		N68	, Fs3, v080
	.byte	W72
	.byte		N22	, Bn3
	.byte	W24
	.byte		N44	, As3
	.byte	W48
	.byte		N36	, Cs4
	.byte	W40
	.byte		N04	, Ds4
	.byte	W04
	.byte			Fn4
	.byte	W04
song021_4_2:
	.byte		N68	, Fs4, v080
	.byte	W72
	.byte		N22	, Gn4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_4_2
	.byte		N44	, Fs4, v080
	.byte	W48
	.byte			Bn4
	.byte	W48
	.byte		TIE	, As4
	.byte	W96
	.byte	W54
	.byte	W01
	.byte		EOT	
	.byte	W05
	.byte		N06	, An4
	.byte	W06
	.byte			Gs4, v076
	.byte	W06
	.byte			Gn4, v072
	.byte	W06
	.byte			Fs4, v068
	.byte	W06
	.byte			Fn4, v060
	.byte	W06
	.byte			En4, v056
	.byte	W06
	.byte		N96	, Ds4, v060
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song021_4_3
	.byte	FINE

	@********************** Track  5 **********************@

	.global song021_5
song021_5:	@ 0x0817302F
	.byte	KEYSH	, 0
song021_5_3:
	.byte	VOICE	, 92
	.byte	PAN	, c_v-10
	.byte	VOL	, v081
	.byte		TIE	, Gn2, v080
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N92	, Fn2
	.byte	W96
	.byte		N90	, Gn2
	.byte	W96
	.byte		TIE	
	.byte	W96
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte		N92	, Fn2
	.byte	W96
	.byte		N90	, Ds2
	.byte	W96
song021_5_1:
	.byte		N68	, Cs3, v080
	.byte	W72
	.byte		N22	, Dn3
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_5_1
	.byte		N68	, Cs3, v080
	.byte	W72
	.byte		N22	, Gn3
	.byte	W24
	.byte		N92	, Fs3
	.byte	W96
song021_5_2:
	.byte		N68	, Cs4, v080
	.byte	W72
	.byte		N22	, Dn4
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song021_5_2
	.byte		N44	, Cs4, v080
	.byte	W48
	.byte			Gn4
	.byte	W48
	.byte		TIE	, Fs4
	.byte	W96
	.byte	W54
	.byte	W01
	.byte		EOT	
	.byte	W40
	.byte	W01
	.byte	W96
	.byte	W96
	.byte	GOTO	
		.word	song021_5_3
	.byte	FINE

	@********************** Track  6 **********************@

	.global song021_6
song021_6:	@ 0x0817308B
	.byte	KEYSH	, 0
song021_6_3:
	.byte	VOICE	, 103
	.byte	PAN	, c_v+16
	.byte	VOL	, v097
	.byte	W24
	.byte		N04	, Ds2, v112
	.byte		N04	, As2
	.byte	W06
	.byte			Ds2
	.byte		N04	, As2
	.byte	W06
	.byte			Ds2
	.byte		N04	, As2
	.byte	W06
	.byte			Ds2
	.byte		N04	, As2
	.byte	W06
	.byte			Ds2
	.byte		N04	, As2
	.byte	W48
song021_6_1:
	.byte	W24
	.byte		N04	, Ds2, v112
	.byte		N04	, As2
	.byte	W06
	.byte			Ds2
	.byte		N04	, As2
	.byte	W06
	.byte			Ds2
	.byte		N04	, As2
	.byte	W06
	.byte			Ds2
	.byte		N04	, As2
	.byte	W06
	.byte			Ds2
	.byte		N04	, As2
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song021_6_1
	.byte	PATT	
		.word	song021_6_1
	.byte	PATT	
		.word	song021_6_1
	.byte	PATT	
		.word	song021_6_1
	.byte	PATT	
		.word	song021_6_1
	.byte	PATT	
		.word	song021_6_1
song021_6_2:
	.byte	W24
	.byte		N04	, Cs2, v112
	.byte		N04	, As2
	.byte	W06
	.byte			Cs2
	.byte		N04	, As2
	.byte	W06
	.byte			Cs2
	.byte		N04	, As2
	.byte	W06
	.byte			Cs2
	.byte		N04	, As2
	.byte	W06
	.byte			Cs2
	.byte		N04	, As2
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song021_6_2
	.byte	PATT	
		.word	song021_6_2
	.byte	PATT	
		.word	song021_6_2
	.byte	PATT	
		.word	song021_6_2
	.byte	PATT	
		.word	song021_6_2
	.byte	PATT	
		.word	song021_6_2
	.byte	PATT	
		.word	song021_6_2
	.byte	PATT	
		.word	song021_6_2
	.byte	PATT	
		.word	song021_6_1
	.byte	PATT	
		.word	song021_6_1
	.byte	GOTO	
		.word	song021_6_3
	.byte	FINE

	.align 2
	.global song021
song021:	@ 0x08173130
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song021_1		@ track
	.word	song021_2		@ track
	.word	song021_3		@ track
	.word	song021_4		@ track
	.word	song021_5		@ track
	.word	song021_6		@ track
