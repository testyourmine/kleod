	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song015_1
song015_1:	@ 0x08171A0C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 67
	.byte	VOICE	, 46
	.byte	PAN	, c_v+20
	.byte	VOL	, v037
	.byte	W24
	.byte		N96	, Ds4, v052
	.byte		N96	, Fs4
	.byte	W96
	.byte	W84
	.byte		TIE	, Ds4
	.byte		TIE	, Fn4
	.byte	W12
	.byte	W96
	.byte		EOT	, Ds4
	.byte			Fn4
	.byte	W24
song015_1_1:
	.byte		TIE	, As2, v060
	.byte		N96	, Dn3
	.byte	W96
	.byte	PEND
	.byte			Ds3
	.byte	W48
	.byte		EOT	, As2
	.byte		N48	, Cn3
	.byte	W48
	.byte		N72	
	.byte		N96	, Fn3
	.byte	W72
	.byte		N24	, As2
	.byte	W24
	.byte		N92	, Dn3
	.byte		N92	, Gn3
	.byte	W96
	.byte		TIE	, Cn3
	.byte		N72	, Fn3
	.byte	W72
	.byte		N12	, Ds3
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		TIE	, Ds3
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, Fn3
	.byte	W96
	.byte		EOT	, Cn3
	.byte	PATT	
		.word	song015_1_1
	.byte		N96	, Ds3, v060
	.byte	W48
	.byte		EOT	, As2
	.byte		N48	, An2
	.byte	W48
	.byte		N96	, Cn3
	.byte		N72	, Fn3
	.byte	W72
	.byte		N24	, Ds3
	.byte	W24
	.byte		N12	, As2
	.byte		N12	, Dn3
	.byte	W24
	.byte		N36	, Ds3
	.byte		N36	, Fs3
	.byte	W36
	.byte		N06	, Fn3
	.byte	W36
	.byte		N36	, Ds3
	.byte		N36	, Fs3
	.byte	W36
	.byte		N06	, Fn3
	.byte	W30
	.byte			Fs3
	.byte		N06	, As3
	.byte	W06
	.byte		N36	, Fs3
	.byte		N36	, As3
	.byte	W24
	.byte	W12
	.byte		N06	, Fn3
	.byte		N06	, An3
	.byte	W30
	.byte		N06	
	.byte		N06	, Cs4
	.byte	W06
	.byte		N36	, An3
	.byte		N36	, Cs4
	.byte	W36
	.byte		N06	, An3
	.byte		N06	, Cn4
	.byte	W12
	.byte	W36
	.byte		TIE	, Ds4
	.byte		TIE	, Fs4
	.byte	W96
	.byte	W24
	.byte		EOT	, Ds4
	.byte			Fs4
	.byte		N12	, Gs3
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Ds4
	.byte	W12
	.byte			Cn4
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		TIE	, Cn3
	.byte		N96	, Fn3
	.byte	W96
	.byte			Ds3
	.byte	W96
	.byte		EOT	, Cn3
	.byte	GOTO	
		.word	song015_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song015_2
song015_2:	@ 0x08171AC2
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	PAN	, c_v
	.byte	VOL	, v037
	.byte	W24
	.byte		N96	, An3, v052
	.byte		N96	, Cn4
	.byte	W96
	.byte	W84
	.byte		TIE	, An3
	.byte		TIE	, Cn4
	.byte	W12
	.byte	W96
	.byte		EOT	, An3
	.byte			Cn4
	.byte	W24
song015_2_1:
	.byte		N96	, Gs2, v060
	.byte	W96
	.byte		N48	, Gn2
	.byte	W48
	.byte			An2
	.byte	W48
	.byte		N96	, Gs2
	.byte	W96
	.byte		N92	, Bn2
	.byte	W96
	.byte		TIE	, Gn2
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		TIE	, An2
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte		N96	, Fn2
	.byte	W96
	.byte		N48	, Gn2
	.byte	W48
	.byte			Fs2
	.byte	W48
	.byte		N96	, An2
	.byte	W96
	.byte		N12	, Fn2
	.byte	W24
	.byte		N36	, An2
	.byte		N36	, Cn3
	.byte	W36
	.byte		N06	, An2
	.byte		N06	, Cn3
	.byte	W36
	.byte		N36	, An2
	.byte		N36	, Cn3
	.byte	W36
	.byte		N06	, An2
	.byte		N06	, Cn3
	.byte	W30
	.byte		N06	
	.byte		N06	, Ds3
	.byte	W06
	.byte		N36	, Cn3
	.byte		N36	, Ds3
	.byte	W24
	.byte	W12
	.byte		N06	, Cn3
	.byte	W30
	.byte			Ds3
	.byte		N06	, Fs3
	.byte	W06
	.byte		N36	, Ds3
	.byte		N36	, Fs3
	.byte	W36
	.byte		N06	, Fn3
	.byte	W12
	.byte	W36
	.byte		TIE	, An3
	.byte		TIE	, Cn4
	.byte	W96
	.byte	W24
	.byte		EOT	, An3
	.byte			Cn4
	.byte	W60
	.byte		TIE	, An2
	.byte	W96
	.byte	W96
	.byte		EOT	
	.byte	GOTO	
		.word	song015_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song015_3
song015_3:	@ 0x08171B46
	.byte	KEYSH	, 0
	.byte	VOICE	, 46
	.byte	PAN	, c_v-20
	.byte	VOL	, v037
	.byte		N10	, Cs2, v092
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte		TIE	, Fn2
	.byte	W96
	.byte	W22
	.byte		EOT	
	.byte	W02
	.byte		N10	, En2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Cs2
	.byte	W12
	.byte			As1
	.byte	W12
	.byte		TIE	, Fn1
	.byte	W12
	.byte	W92
	.byte	W02
	.byte		EOT	
	.byte	W02
	.byte	W24
song015_3_1:
	.byte		N44	, As1, v092
	.byte	W48
	.byte			Gs1
	.byte	W48
	.byte	PEND
song015_3_2:
	.byte		N44	, Gn1, v092
	.byte	W48
	.byte			Fs1
	.byte	W48
	.byte	PEND
	.byte			Fn1
	.byte	W48
	.byte			Ds1
	.byte	W48
	.byte			Dn1
	.byte	W48
	.byte			Gn1
	.byte	W48
	.byte			Cn2
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte			As1
	.byte	W48
	.byte		N44	
	.byte	W48
	.byte			An1
	.byte	W48
	.byte			Gn1
	.byte	W48
song015_3_3:
	.byte		N44	, Fn1, v092
	.byte	W48
	.byte			An1
	.byte	W48
	.byte	PEND
	.byte	PATT	
		.word	song015_3_1
	.byte	PATT	
		.word	song015_3_2
	.byte	PATT	
		.word	song015_3_3
	.byte		N10	, As1, v092
	.byte	W12
	.byte		N56	, Ds1, v120
	.byte	W60
	.byte		N10	, Fn1
	.byte	W12
	.byte		N56	, Ds1
	.byte	W12
	.byte	W48
	.byte		N10	, Fn1
	.byte	W12
	.byte		N56	, Ds1
	.byte	W36
	.byte	W24
	.byte		N10	, Fn1
	.byte	W12
	.byte		N56	, Ds1
	.byte	W60
	.byte		N10	, Fn1, v092
	.byte	W12
	.byte			Ds1
	.byte	W12
	.byte			Cn1
	.byte	W12
	.byte		TIE	, Fn1
	.byte	W96
	.byte	W10
	.byte		EOT	
	.byte	W02
	.byte		N10	, Gn1
	.byte	W12
	.byte			Gs1
	.byte	W12
	.byte			En2
	.byte	W12
	.byte			Ds2
	.byte	W12
	.byte			Cn2
	.byte	W12
	.byte			Fs1
	.byte	W12
	.byte		N92	, Fn1
	.byte	W96
	.byte		N44	, Gn1
	.byte	W48
	.byte			An1
	.byte	W48
	.byte	GOTO	
		.word	song015_3_1
	.byte	FINE

	.align 2
	.global song015
song015:	@ 0x08171BEC
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	178		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song015_1		@ track
	.word	song015_2		@ track
	.word	song015_3		@ track
