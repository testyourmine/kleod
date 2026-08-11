	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song034_1
song034_1:	@ 0x08183F90
	.byte	KEYSH	, 0
song034_1_1:
	.byte	TEMPO	, 75
	.byte	VOICE	, 41
	.byte	MODT	, 0
	.byte	PAN	, c_v+15
	.byte	VOL	, v077
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		N05	, Cs4, v080
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4
	.byte	W48
	.byte		N11	, An4
	.byte	W48
	.byte		N23	, Cs5
	.byte	W06
	.byte	MOD	, 2
	.byte	W17
	.byte		0
	.byte	W01
	.byte		N05	, En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte		N23	, Cs4
	.byte	W48
	.byte	W72
	.byte		N05	, Cn4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Ds4
	.byte	W06
	.byte			Cs4
	.byte	W06
	.byte			Cn4
	.byte	W48
	.byte	W24
	.byte		N44	, Cn5
	.byte	W20
	.byte	MOD	, 2
	.byte	W24
	.byte	W03
	.byte		0
	.byte	W01
	.byte		N68	, Gs4
	.byte	W36
	.byte	MOD	, 2
	.byte	W32
	.byte	W03
	.byte		0
	.byte	W01
	.byte		N44	, Ds4
	.byte	W24
	.byte	MOD	, 3
	.byte	W24
	.byte		0
	.byte	W24
	.byte	W24
	.byte		N05	, Dn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte		N11	, Gn3
	.byte	W30
	.byte		N05	, An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			Cn4
	.byte	W06
	.byte			Dn4
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Fs4
	.byte	W06
	.byte			Gn4
	.byte	W06
	.byte		N04	, An4
	.byte	W04
	.byte			Gn4
	.byte	W04
	.byte			Fs4
	.byte	W04
	.byte			En4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Cn4
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			Cn4
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte		N03	, Gn3, v056
	.byte	W03
	.byte			An3, v060
	.byte	W03
	.byte			Bn3, v064
	.byte	W03
	.byte			Cn4, v068
	.byte	W03
	.byte		N04	, Dn4, v072
	.byte	W04
	.byte			En4, v076
	.byte	W04
	.byte			Fn4, v080
	.byte	W04
	.byte		N44	, Gn4
	.byte	W18
	.byte	MOD	, 3
	.byte	W28
	.byte	W01
	.byte		0
	.byte	W01
	.byte		N06	, Fs4
	.byte	W08
	.byte			Gn4
	.byte	W08
	.byte			Fs4
	.byte	W08
	.byte		N44	, Fn4
	.byte	W23
	.byte	MOD	, 2
	.byte	W24
	.byte		0
	.byte	W01
	.byte		N06	, En4
	.byte	W08
	.byte			Fn4
	.byte	W08
	.byte			En4
	.byte	W08
	.byte		N44	, Ds4
	.byte	W24
	.byte	MOD	, 3
	.byte	W23
	.byte		0
	.byte	W01
	.byte		N06	, Dn4
	.byte	W08
	.byte			Ds4
	.byte	W08
	.byte			Dn4
	.byte	W08
	.byte		N44	, Cs4
	.byte	W18
	.byte	MOD	, 3
	.byte	W28
	.byte	W01
	.byte		0
	.byte	W01
	.byte		N22	, Cn4
	.byte	W24
	.byte		N68	, Bn3
	.byte	W23
	.byte	MOD	, 3
	.byte	W48
	.byte		0
	.byte	W01
	.byte	W06
	.byte		N05	, En4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			En5
	.byte	W06
	.byte			Gs5
	.byte	W48
	.byte	GOTO	
		.word	song034_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song034_2
song034_2:	@ 0x081840A8
	.byte	KEYSH	, 0
song034_2_1:
	.byte	VOICE	, 42
	.byte	MODT	, 0
	.byte	PAN	, c_v-15
	.byte	VOL	, v077
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		N06	, An2, v080
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Cs3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			An2
	.byte	W48
	.byte		N12	, Cs3
	.byte	W48
	.byte		N24	, En3
	.byte	W24
	.byte		N06	, Cs3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte		N24	, An2
	.byte	W10
	.byte	MOD	, 2
	.byte	W14
	.byte		0
	.byte	W24
	.byte	W72
	.byte		N06	, Gs2
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			As2
	.byte	W06
	.byte			Gs2
	.byte	W48
	.byte	W48
	.byte		N44	, Gs3
	.byte	W18
	.byte	MOD	, 2
	.byte	W06
	.byte	W23
	.byte		0
	.byte	W01
	.byte		N44	, Ds3
	.byte	W30
	.byte	MOD	, 3
	.byte	W17
	.byte		0
	.byte	W01
	.byte		N44	, Cn3
	.byte	W24
	.byte	MOD	, 3
	.byte	W24
	.byte		0
	.byte	W24
	.byte	W24
	.byte		N05	, Fs3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			An2
	.byte	W06
	.byte		N12	, Bn2
	.byte	W30
	.byte		N06	, Cn3
	.byte	W06
	.byte			Dn3
	.byte	W06
	.byte			En3
	.byte	W06
	.byte			Fs3
	.byte	W06
	.byte			Gn3
	.byte	W06
	.byte			An3
	.byte	W06
	.byte			Bn3
	.byte	W06
	.byte		N04	, Cs4
	.byte	W04
	.byte			Bn3
	.byte	W04
	.byte			An3
	.byte	W04
	.byte			Gn3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Fs3
	.byte	W04
	.byte			En3
	.byte	W04
	.byte			Dn3
	.byte	W04
	.byte			Cs3
	.byte	W04
	.byte			Bn2
	.byte	W04
	.byte			An2
	.byte	W04
	.byte		N23	, Gn2, v072
	.byte	W24
	.byte		N68	, Fn2, v080
	.byte	W32
	.byte	W03
	.byte	MOD	, 3
	.byte	W36
	.byte		0
	.byte	W01
	.byte		N68	, Cn3
	.byte	W24
	.byte	MOD	, 2
	.byte	W44
	.byte	W03
	.byte		0
	.byte	W01
	.byte		N68	, An3
	.byte	W44
	.byte	W02
	.byte	MOD	, 3
	.byte	W24
	.byte	W02
	.byte		0
	.byte	W48
	.byte		N11	, Fn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N68	, Gs3
	.byte	W24
	.byte	MOD	, 2
	.byte	W44
	.byte	W03
	.byte		0
	.byte	W01
	.byte	W06
	.byte		N06	, En3
	.byte	W06
	.byte			Bn2
	.byte	W06
	.byte			Gs2
	.byte	W06
	.byte			En2
	.byte	W48
	.byte	GOTO	
		.word	song034_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song034_3
song034_3:	@ 0x08184193
	.byte	KEYSH	, 0
song034_3_9:
	.byte	VOICE	, 38
	.byte	PAN	, c_v
	.byte	VOL	, v052
	.byte		N06	, En4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
song034_3_1:
	.byte		N06	, En4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
song034_3_2:
	.byte		N06	, En4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			En4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			En2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song034_3_1
	.byte	PATT	
		.word	song034_3_2
	.byte	PATT	
		.word	song034_3_1
	.byte	PATT	
		.word	song034_3_2
	.byte	PATT	
		.word	song034_3_1
song034_3_3:
	.byte		N06	, Ds4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte	PEND
song034_3_4:
	.byte		N06	, Ds4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song034_3_3
	.byte	PATT	
		.word	song034_3_4
song034_3_5:
	.byte		N06	, Dn4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte	PEND
song034_3_6:
	.byte		N06	, Dn4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Dn2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song034_3_5
	.byte	PATT	
		.word	song034_3_6
song034_3_7:
	.byte		N06	, Cn4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte	PEND
song034_3_8:
	.byte		N06	, Cn4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song034_3_7
	.byte	PATT	
		.word	song034_3_8
	.byte		N06	, Bn3, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte			En4
	.byte	W48
	.byte	GOTO	
		.word	song034_3_9
	.byte	FINE

	@********************** Track  4 **********************@

	.global song034_4
song034_4:	@ 0x08184271
	.byte	KEYSH	, 0
song034_4_9:
	.byte	VOICE	, 37
	.byte	PAN	, c_v
	.byte	VOL	, v052
	.byte		N06	, Cs4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs2
	.byte	W12
song034_4_1:
	.byte		N06	, Cs4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
song034_4_2:
	.byte		N06	, Cs4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			Cs4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song034_4_1
	.byte	PATT	
		.word	song034_4_2
	.byte	PATT	
		.word	song034_4_1
	.byte	PATT	
		.word	song034_4_2
	.byte	PATT	
		.word	song034_4_1
song034_4_3:
	.byte		N06	, Cn4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte	PEND
song034_4_4:
	.byte		N06	, Cn4, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song034_4_3
	.byte	PATT	
		.word	song034_4_4
song034_4_5:
	.byte		N06	, Bn3, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte			Bn3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte	PEND
song034_4_6:
	.byte		N06	, Bn3, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Bn1
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song034_4_5
	.byte	PATT	
		.word	song034_4_6
song034_4_7:
	.byte		N06	, An3, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte			An3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte	PEND
song034_4_8:
	.byte		N06	, An3, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			An1
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song034_4_7
	.byte	PATT	
		.word	song034_4_8
	.byte		N06	, Gs3, v080
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte	W12
	.byte			Gs3
	.byte	W12
	.byte			Bn3
	.byte	W48
	.byte	GOTO	
		.word	song034_4_9
	.byte	FINE

	@********************** Track  5 **********************@

	.global song034_5
song034_5:	@ 0x0818434F
	.byte	KEYSH	, 0
song034_5_3:
	.byte	VOICE	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v064
	.byte	W72
song034_5_1:
	.byte	W42
	.byte		N03	, En3, v100
	.byte	W06
	.byte		N12	, Bn4
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	PATT	
		.word	song034_5_1
	.byte	W72
	.byte	PATT	
		.word	song034_5_1
	.byte	W72
	.byte	PATT	
		.word	song034_5_1
	.byte	W42
	.byte		N03	, Ds3, v100
	.byte	W06
	.byte		N12	, As4
	.byte	W24
song034_5_2:
	.byte	W42
	.byte		N03	, Ds3, v100
	.byte	W06
	.byte		N12	, Gs4
	.byte	W24
	.byte	PEND
	.byte	W42
	.byte		N03	, Ds3
	.byte	W06
	.byte		N12	, Gn4
	.byte	W24
	.byte	PATT	
		.word	song034_5_2
	.byte		N68	, Bn3, v100
	.byte	W72
	.byte			An3
	.byte	W72
	.byte			Gn3
	.byte	W72
	.byte			Fs3
	.byte	W72
	.byte		N08	, Fn3
	.byte	W08
	.byte			Cn3
	.byte	W08
	.byte			Fn2
	.byte	W08
	.byte			An3
	.byte	W08
	.byte			Fn3
	.byte	W08
	.byte			Cn3
	.byte	W08
	.byte			Cn4
	.byte	W08
	.byte			An3
	.byte	W08
	.byte			Fn3
	.byte	W08
	.byte			Fn4
	.byte	W08
	.byte			Cn4
	.byte	W08
	.byte			Fn3
	.byte	W08
	.byte			An4
	.byte	W08
	.byte			Fn4
	.byte	W08
	.byte			Cn4
	.byte	W08
	.byte			Cn5
	.byte	W08
	.byte			An4
	.byte	W08
	.byte			Fn4
	.byte	W08
	.byte			Fn5
	.byte	W08
	.byte			Cn5
	.byte	W08
	.byte			Fn4
	.byte	W08
	.byte			Cn5
	.byte	W08
	.byte			An4
	.byte	W08
	.byte			Fn4
	.byte	W08
	.byte			An4
	.byte	W08
	.byte			Fn4
	.byte	W08
	.byte			Cn4
	.byte	W08
	.byte			Fn4
	.byte	W08
	.byte			Cn4
	.byte	W08
	.byte			Fn3
	.byte	W08
	.byte			Cn4
	.byte	W08
	.byte			An3
	.byte	W08
	.byte			Fn3
	.byte	W08
	.byte			Cn3
	.byte	W08
	.byte			An2
	.byte	W08
	.byte			Fn2
	.byte	W08
	.byte		N72	, En2
	.byte	W72
	.byte	W06
	.byte		N06	, En3
	.byte	W06
	.byte			En4
	.byte	W06
	.byte			Bn4
	.byte	W06
	.byte			En5
	.byte	W48
	.byte	GOTO	
		.word	song034_5_3
	.byte	FINE

	@********************** Track  6 **********************@

	.global song034_6
song034_6:	@ 0x081843F6
	.byte	KEYSH	, 0
song034_6_8:
	.byte	VOICE	, 39
	.byte	PAN	, c_v+10
	.byte	VOL	, v064
	.byte		N12	, An1, v080
	.byte	W36
	.byte			En2
	.byte	W36
song034_6_2:
	.byte		N12	, An1, v080
	.byte	W24
	.byte			En2
	.byte	W48
	.byte	PEND
song034_6_1:
	.byte		N12	, An1, v080
	.byte	W36
	.byte			En2
	.byte	W36
	.byte	PEND
song034_6_3:
	.byte		N12	, An1, v080
	.byte	W24
	.byte			En2
	.byte	W24
	.byte			An1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song034_6_1
	.byte	PATT	
		.word	song034_6_2
	.byte	PATT	
		.word	song034_6_1
	.byte	PATT	
		.word	song034_6_3
song034_6_4:
	.byte		N12	, Gs1, v080
	.byte	W36
	.byte			Ds2
	.byte	W36
	.byte	PEND
	.byte			Gs1
	.byte	W24
	.byte			Ds2
	.byte	W48
	.byte	PATT	
		.word	song034_6_4
	.byte		N12	, Gs1, v080
	.byte	W24
	.byte			Ds2
	.byte	W24
	.byte			Gs1
	.byte	W24
song034_6_5:
	.byte		N12	, Gn1, v080
	.byte	W36
	.byte			Dn2
	.byte	W36
	.byte	PEND
	.byte			Gn1
	.byte	W24
	.byte			Dn2
	.byte	W48
	.byte	PATT	
		.word	song034_6_5
	.byte		N12	, Gn1, v080
	.byte	W24
	.byte			Dn2
	.byte	W24
	.byte			Gn1
	.byte	W24
song034_6_6:
	.byte		N12	, Fn1, v080
	.byte	W36
	.byte			Cn2
	.byte	W36
	.byte	PEND
song034_6_7:
	.byte		N12	, Fn2, v080
	.byte	W24
	.byte			Cn2
	.byte	W24
	.byte			Fn1
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song034_6_6
	.byte	PATT	
		.word	song034_6_7
	.byte		N12	, En1, v080
	.byte	W36
	.byte			Bn1
	.byte	W36
	.byte			En2
	.byte	W24
	.byte			En3
	.byte	W48
	.byte	GOTO	
		.word	song034_6_8
	.byte	FINE

	@********************** Track  7 **********************@

	.global song034_7
song034_7:	@ 0x08184489
	.byte	KEYSH	, 0
song034_7_4:
	.byte	VOICE	, 40
	.byte	PAN	, c_v
	.byte	VOL	, v046
	.byte		N06	, Cn5, v080
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W18
song034_7_2:
	.byte		N06	, Cn5, v080
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W24
	.byte		N03	, Cn5, v040
	.byte	W03
	.byte			Cn5, v044
	.byte	W03
	.byte			Cn5, v048
	.byte	W03
	.byte			Cn5, v056
	.byte	W03
	.byte			Cn5, v060
	.byte	W03
	.byte			Cn5, v064
	.byte	W03
	.byte			Cn5, v072
	.byte	W03
	.byte			Cn5, v076
	.byte	W03
	.byte	PEND
song034_7_1:
	.byte		N06	, Cn5, v080
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W18
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W18
	.byte	PEND
song034_7_3:
	.byte		N06	, Cn5, v080
	.byte	W12
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song034_7_1
	.byte	PATT	
		.word	song034_7_2
	.byte	PATT	
		.word	song034_7_1
	.byte	PATT	
		.word	song034_7_3
	.byte	PATT	
		.word	song034_7_1
	.byte	PATT	
		.word	song034_7_2
	.byte	PATT	
		.word	song034_7_1
	.byte	PATT	
		.word	song034_7_3
	.byte	PATT	
		.word	song034_7_1
	.byte	PATT	
		.word	song034_7_2
	.byte	PATT	
		.word	song034_7_1
	.byte	PATT	
		.word	song034_7_3
	.byte	PATT	
		.word	song034_7_1
	.byte	PATT	
		.word	song034_7_2
	.byte	PATT	
		.word	song034_7_1
	.byte	PATT	
		.word	song034_7_3
	.byte	PATT	
		.word	song034_7_1
	.byte		N03	, An5, v040
	.byte	W03
	.byte			An5, v044
	.byte	W03
	.byte			An5, v048
	.byte	W03
	.byte			An5, v056
	.byte	W03
	.byte			An5, v060
	.byte	W03
	.byte			An5, v064
	.byte	W03
	.byte			An5, v072
	.byte	W03
	.byte			An5, v076
	.byte	W03
	.byte		N24	, Gn5, v080
	.byte	W24
	.byte		N03	, Cn5
	.byte	W03
	.byte			Cn5, v044
	.byte	W03
	.byte			Cn5, v048
	.byte	W03
	.byte			Cn5, v056
	.byte	W03
	.byte			Cn5, v060
	.byte	W03
	.byte			Cn5, v064
	.byte	W03
	.byte			Cn5, v072
	.byte	W03
	.byte			Cn5, v076
	.byte	W03
	.byte	GOTO	
		.word	song034_7_4
	.byte	FINE

	@********************** Track  8 **********************@

	.global song034_8
song034_8:	@ 0x0818456D
	.byte	KEYSH	, 0
song034_8_3:
	.byte	VOICE	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v077
	.byte	W24
	.byte		N06	, En1, v100
	.byte	W06
	.byte		N06	
	.byte	W30
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	W36
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W30
song034_8_1:
	.byte	W24
	.byte		N06	, En1, v100
	.byte	W06
	.byte		N06	
	.byte	W30
	.byte		N06	
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte	PEND
song034_8_2:
	.byte	W36
	.byte		N06	, En1, v100
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			En1, v072
	.byte	W06
	.byte			En1, v080
	.byte	W06
	.byte			En1, v088
	.byte	W06
	.byte			En1, v096
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song034_8_1
	.byte	W36
	.byte		N06	, En1, v100
	.byte	W36
	.byte	PATT	
		.word	song034_8_1
	.byte	PATT	
		.word	song034_8_2
	.byte	PATT	
		.word	song034_8_1
	.byte	W36
	.byte		N06	, En1, v100
	.byte	W36
	.byte	PATT	
		.word	song034_8_1
	.byte	PATT	
		.word	song034_8_2
	.byte	PATT	
		.word	song034_8_1
	.byte	W36
	.byte		N06	, En1, v100
	.byte	W36
	.byte	PATT	
		.word	song034_8_1
	.byte	PATT	
		.word	song034_8_2
	.byte	PATT	
		.word	song034_8_1
	.byte	W36
	.byte		N06	, En1, v100
	.byte	W36
	.byte	PATT	
		.word	song034_8_1
	.byte	PATT	
		.word	song034_8_2
	.byte	PATT	
		.word	song034_8_1
	.byte	W72
	.byte	GOTO	
		.word	song034_8_3
	.byte	FINE

	.align 2
	.global song034
song034:	@ 0x08184604
	.byte	8		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	158		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song034_1		@ track
	.word	song034_2		@ track
	.word	song034_3		@ track
	.word	song034_4		@ track
	.word	song034_5		@ track
	.word	song034_6		@ track
	.word	song034_7		@ track
	.word	song034_8		@ track
