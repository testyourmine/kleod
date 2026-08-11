	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song003_1
song003_1:	@ 0x0816CE2C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 61
	.byte	VOICE	, 36
	.byte	W01
	.byte	VOL	, v068
	.byte	W01
	.byte	PAN	, c_v+63
	.byte	W01
song003_1_3:
	.byte	W12
	.byte		N06	, Gn2, v060
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gn4, v056
	.byte	W24
	.byte			En4
	.byte	W09
song003_1_1:
	.byte	W15
	.byte		N06	, Gn2, v060
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gn4, v056
	.byte	W24
	.byte			En4
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
song003_1_2:
	.byte	W15
	.byte		N06	, Gn2, v060
	.byte	W12
	.byte			Gn3
	.byte	W12
	.byte			Gn4, v056
	.byte	W24
	.byte			Ds4
	.byte	W09
	.byte	PEND
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_2
	.byte	PATT	
		.word	song003_1_1
	.byte	PATT	
		.word	song003_1_1
	.byte	W03
	.byte	GOTO	
		.word	song003_1_3
	.byte	FINE

	@********************** Track  2 **********************@

	.global song003_2
song003_2:	@ 0x0816CEA7
	.byte	KEYSH	, 0
	.byte	VOICE	, 35
	.byte	W01
	.byte	VOL	, v097
	.byte	W01
	.byte	PAN	, c_v
	.byte	W01
song003_2_2:
	.byte		N56	, Cn4, v112
	.byte		N56	, En4
	.byte	W68
	.byte	W01
	.byte	W03
	.byte		N44	, An3
	.byte		N44	, Cn4
	.byte	W48
	.byte		N20	, Bn3
	.byte		N20	, Dn4
	.byte	W21
song003_2_1:
	.byte	W03
	.byte		N56	, En4, v112
	.byte		N56	, Gn4
	.byte	W68
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte		N36	, En4, v060
	.byte		N36	, Gn4
	.byte	W48
	.byte		N21	, Bn3, v112
	.byte		N21	, Dn4
	.byte	W21
	.byte	W03
	.byte		N56	, Cn4
	.byte		N56	, En4
	.byte	W68
	.byte	W01
	.byte	W03
	.byte			An3
	.byte		N56	, Cn4
	.byte	W68
	.byte	W01
	.byte	W03
	.byte			Gn3
	.byte		N56	, Bn3
	.byte	W68
	.byte	W01
	.byte	W03
	.byte			En3
	.byte		N56	, Gn3
	.byte	W68
	.byte	W01
	.byte	W03
	.byte		N22	, Fn3
	.byte		N22	, An3
	.byte	W24
	.byte		N20	, Gn3
	.byte		N20	, Bn3
	.byte	W24
	.byte			An3
	.byte		N20	, Cn4
	.byte	W21
	.byte	W03
	.byte			Fn3
	.byte		N20	, Gs3
	.byte	W24
	.byte		N22	, Gn3
	.byte		N22	, As3
	.byte	W24
	.byte		N20	, Fn3
	.byte		N20	, Gs3
	.byte	W21
	.byte	W03
	.byte		N42	, En3
	.byte		N42	, Gn3
	.byte	W48
	.byte		N36	, En4
	.byte		N36	, Gn4
	.byte	W21
	.byte	W24
	.byte	W03
	.byte		N22	
	.byte		N22	, As4
	.byte	W24
	.byte		N21	, Fn4
	.byte		N21	, An4
	.byte	W21
	.byte	PATT	
		.word	song003_2_1
	.byte	W03
	.byte		N56	, Bn3, v112
	.byte		N56	, Ds4
	.byte	W68
	.byte	W01
	.byte	W03
	.byte			Bn3
	.byte		N56	, Dn4
	.byte	W68
	.byte	W01
	.byte	W24
	.byte	W03
	.byte		N22	, En4
	.byte		N22	, Gn4
	.byte	W24
	.byte		N19	, Dn4
	.byte		N19	, Fn4
	.byte	W21
	.byte	W03
	.byte	GOTO	
		.word	song003_2_2
	.byte	FINE

	@********************** Track  3 **********************@

	.global song003_3
song003_3:	@ 0x0816CF4D
	.byte	KEYSH	, 0
	.byte	VOICE	, 34
	.byte	W01
	.byte	VOL	, v077
	.byte	W01
	.byte	PAN	, c_v-5
	.byte	W01
song003_3_5:
	.byte	W12
	.byte		N10	, An2, v100
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N32	, Gn3
	.byte	W32
	.byte	W01
song003_3_2:
	.byte	W15
	.byte		N10	, An2, v100
	.byte	W12
	.byte			En3
	.byte	W12
	.byte		N32	, Gn3
	.byte	W32
	.byte	W01
	.byte	PEND
song003_3_1:
	.byte	W15
	.byte		N10	, Gn2, v100
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N32	, Fs3
	.byte	W32
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song003_3_1
	.byte	PATT	
		.word	song003_3_2
	.byte	PATT	
		.word	song003_3_2
	.byte	PATT	
		.word	song003_3_1
	.byte	PATT	
		.word	song003_3_1
song003_3_3:
	.byte	W15
	.byte		N10	, Fn2, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N32	, En3
	.byte	W32
	.byte	W01
	.byte	PEND
song003_3_4:
	.byte	W15
	.byte		N10	, Fn2, v100
	.byte	W12
	.byte			Gs2
	.byte	W12
	.byte		N32	, Ds3
	.byte	W32
	.byte	W01
	.byte	PEND
	.byte	W15
	.byte		N10	, En2
	.byte	W12
	.byte			Bn2
	.byte	W12
	.byte		N32	, Dn3
	.byte	W32
	.byte	W01
	.byte	W15
	.byte		N10	, Gn2
	.byte	W12
	.byte			Cs3
	.byte	W12
	.byte			Fs3
	.byte	W12
	.byte		N22	, Fn3
	.byte	W21
	.byte	PATT	
		.word	song003_3_3
	.byte	PATT	
		.word	song003_3_4
	.byte	W15
	.byte		N10	, En2, v100
	.byte	W12
	.byte			An2
	.byte	W12
	.byte		N32	, Dn3
	.byte	W32
	.byte	W01
	.byte	W15
	.byte		N10	, Gs2
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte		N32	, Gn3
	.byte	W32
	.byte	W01
	.byte	W03
	.byte	GOTO	
		.word	song003_3_5
	.byte	FINE

	@********************** Track  4 **********************@

	.global song003_4
song003_4:	@ 0x0816CFE7
	.byte	KEYSH	, 0
	.byte	VOICE	, 33
	.byte	W01
	.byte	VOL	, v085
	.byte	W01
	.byte	PAN	, c_v-20
	.byte	W01
song003_4_6:
	.byte		N68	, Fn1, v100
	.byte	W68
	.byte	W01
song003_4_2:
	.byte	W03
	.byte		N68	, Fn1, v100
	.byte	W68
	.byte	W01
	.byte	PEND
song003_4_1:
	.byte	W03
	.byte		N68	, En1, v100
	.byte	W68
	.byte	W01
	.byte	PEND
	.byte	PATT	
		.word	song003_4_1
	.byte	PATT	
		.word	song003_4_2
	.byte	PATT	
		.word	song003_4_2
	.byte	PATT	
		.word	song003_4_1
	.byte	PATT	
		.word	song003_4_1
song003_4_3:
	.byte	W03
	.byte		N68	, Dn1, v100
	.byte	W68
	.byte	W01
	.byte	PEND
song003_4_4:
	.byte	W03
	.byte		N68	, Cs1, v100
	.byte	W68
	.byte	W01
	.byte	PEND
song003_4_5:
	.byte	W03
	.byte		N68	, Cn1, v100
	.byte	W68
	.byte	W01
	.byte	PEND
	.byte	W03
	.byte			An1
	.byte	W68
	.byte	W01
	.byte	PATT	
		.word	song003_4_3
	.byte	PATT	
		.word	song003_4_4
	.byte	PATT	
		.word	song003_4_5
	.byte	W03
	.byte		N68	, As1, v100
	.byte	W68
	.byte	W01
	.byte	W03
	.byte	GOTO	
		.word	song003_4_6
	.byte	FINE

	.align 2
	.global song003
song003:	@ 0x0816D054
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	158		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song003_1		@ track
	.word	song003_2		@ track
	.word	song003_3		@ track
	.word	song003_4		@ track
