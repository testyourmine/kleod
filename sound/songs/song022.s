	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song022_1
song022_1:	@ 0x08173150
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 109
	.byte	PAN	, c_v+15
	.byte	VOL	, v097
	.byte		TIE	, Gn2, v100
	.byte		N92	, Bn2
	.byte	W96
song022_1_2:
	.byte		N44	, Cn3, v100
	.byte	W44
	.byte	W02
	.byte	PEND
	.byte		EOT	, Gn2
	.byte	W02
	.byte		N44	, Gs2
	.byte		N44	, Dn3
	.byte	W48
song022_1_1:
	.byte		TIE	, Gn2, v100
	.byte		N92	, Bn2
	.byte	W96
	.byte	PEND
	.byte		N42	, Cn3
	.byte	W44
	.byte	W02
	.byte		EOT	, Gn2
	.byte	W02
	.byte		N44	, Gs2
	.byte		N32	, En3
	.byte	W36
	.byte		N05	, Dn3
	.byte	W06
	.byte			Cn3
	.byte	W06
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_2
	.byte		EOT	, Gn2
	.byte	W02
	.byte		N44	, Gs2, v100
	.byte		N44	, Dn3
	.byte	W48
	.byte		TIE	, Gn2
	.byte		N92	, En3
	.byte	W96
	.byte		N68	, Ds3
	.byte	W44
	.byte	W02
	.byte		EOT	, Gn2
	.byte	W02
	.byte		N22	, Gs2
	.byte	W48
	.byte		N92	, Bn2
	.byte		N92	, Dn3
	.byte	W96
	.byte		N68	, Cn3
	.byte		N68	, Fn3
	.byte	W72
	.byte		N22	, As2
	.byte		N07	, Ds3
	.byte	W08
	.byte			Fn3
	.byte	W08
	.byte			Ds3
	.byte	W08
	.byte		N44	, An2
	.byte		N42	, Dn3
	.byte	W48
	.byte		N92	, En3
	.byte		TIE	, An3
	.byte	W48
	.byte	W48
	.byte		N44	, Ds3
	.byte	W19
	.byte		EOT	, An3
	.byte	W05
	.byte		N22	, Gn3
	.byte	W24
	.byte		N44	, Dn3
	.byte		N44	, Fn3
	.byte	W48
	.byte		N22	, Cn3
	.byte		N22	, Ds3
	.byte	W24
	.byte		N16	, As2
	.byte		N16	, Dn3
	.byte	W18
	.byte		N06	, Ds3
	.byte	W06
	.byte		N68	, An2
	.byte		N68	, Dn3
	.byte	W72
	.byte		N22	, Gn2
	.byte		N22	, Cn3
	.byte	W24
	.byte		N44	, An2
	.byte		TIE	, Dn3
	.byte	W48
	.byte			Gn3
	.byte	W48
	.byte	W64
	.byte		EOT	, Dn3
	.byte			Gn3
	.byte	W32
	.byte	PATT	
		.word	song022_1_1
	.byte	PATT	
		.word	song022_1_2
	.byte		EOT	, Gn2
	.byte	W02
	.byte		N44	, Gs2, v100
	.byte		N44	, Dn3
	.byte	W48
	.byte	GOTO	
		.word	song022_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song022_2
song022_2:	@ 0x08173210
	.byte	KEYSH	, 0
	.byte	VOICE	, 44
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte		N06	, Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
song022_2_1:
	.byte		N06	, Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte	PEND
song022_2_4:
	.byte	PATT	
		.word	song022_2_1
	.byte		N06	, Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W06
	.byte			Ds1, v024
	.byte	W06
	.byte		N06	
	.byte	W06
	.byte			Ds1, v028
	.byte	W06
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_1
	.byte	PATT	
		.word	song022_2_1
	.byte		N06	, Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte		N03	, Ds1, v012
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Ds1, v016
	.byte	W03
	.byte			Ds1, v020
	.byte	W03
	.byte			Ds1, v024
	.byte	W03
	.byte			Ds1, v028
	.byte	W03
	.byte			Ds1, v032
	.byte	W03
song022_2_2:
	.byte		N48	, Dn1, v064
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
song022_2_3:
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte	PEND
	.byte	PATT	
		.word	song022_2_2
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W12
	.byte		N05	
	.byte	W12
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N11	, Dn1, v040
	.byte	W06
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte	PATT	
		.word	song022_2_2
	.byte	PATT	
		.word	song022_2_3
	.byte	PATT	
		.word	song022_2_2
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N05	, Cs1, v088
	.byte	W06
	.byte		N05	
	.byte	W06
	.byte		N05	
	.byte	W12
	.byte		N09	, Cn1, v116
	.byte	W12
	.byte		N09	
	.byte	W12
	.byte		N32	, Dn1, v064
	.byte	W12
	.byte		N03	, Ds1, v012
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte		N03	
	.byte	W03
	.byte			Ds1, v016
	.byte	W03
	.byte			Ds1, v020
	.byte	W03
	.byte			Ds1, v024
	.byte	W03
	.byte			Ds1, v028
	.byte	W03
	.byte			Ds1, v032
	.byte	W03
	.byte		N48	, Dn1, v064
	.byte	W12
	.byte		N06	, Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte		N06	
	.byte	W12
	.byte			Ds1, v040
	.byte	W12
	.byte			Ds1, v024
	.byte	W12
	.byte	PATT	
		.word	song022_2_1
	.byte	GOTO	
		.word	song022_2_4
	.byte	FINE

	@********************** Track  3 **********************@

	.global song022_3
song022_3:	@ 0x08173366
	.byte	KEYSH	, 0
	.byte	VOICE	, 111
	.byte	PAN	, c_v
	.byte	VOL	, v074
	.byte		N21	, Cn2, v080
	.byte	W84
	.byte		N12	
	.byte	W12
song022_3_1:
	.byte		N21	, Fn2, v080
	.byte	W84
	.byte		N12	
	.byte	W12
	.byte	PEND
song022_3_2:
	.byte		N21	, Cn2, v080
	.byte	W84
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_2
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_2
	.byte	PATT	
		.word	song022_3_1
song022_3_3:
	.byte		N21	, En2, v080
	.byte	W84
	.byte		N12	
	.byte	W12
	.byte	PEND
song022_3_4:
	.byte		N21	, Ds2, v080
	.byte	W84
	.byte		N12	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_3_3
	.byte	PATT	
		.word	song022_3_1
	.byte	PATT	
		.word	song022_3_3
	.byte	PATT	
		.word	song022_3_4
	.byte	PATT	
		.word	song022_3_3
	.byte		N21	, Fn2, v080
	.byte	W48
	.byte		N06	
	.byte	W12
	.byte		N06	
	.byte	W36
	.byte	PATT	
		.word	song022_3_2
	.byte	PATT	
		.word	song022_3_1
	.byte	GOTO	
		.word	song022_3_2
	.byte	FINE

	@********************** Track  4 **********************@

	.global song022_4
song022_4:	@ 0x081733DA
	.byte	KEYSH	, 0
	.byte	VOICE	, 110
	.byte	PAN	, c_v-5
	.byte	VOL	, v097
	.byte	W12
	.byte		N07	, Bn2, v116
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N07	
	.byte	W12
song022_4_1:
	.byte	W12
	.byte		N07	, Cn3, v116
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N07	
	.byte	W12
	.byte	PEND
song022_4_2:
	.byte	W12
	.byte		N07	, Bn2, v116
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N07	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_4_1
	.byte	PATT	
		.word	song022_4_2
	.byte	PATT	
		.word	song022_4_1
	.byte	PATT	
		.word	song022_4_2
	.byte	W12
	.byte		N07	, Cn3, v116
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N07	
	.byte	W12
	.byte		N07	
	.byte	W24
	.byte		N13	
	.byte	W12
song022_4_3:
	.byte	W12
	.byte		N08	, Dn3, v120
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_4_3
	.byte	PATT	
		.word	song022_4_3
	.byte	W12
	.byte		N08	, Ds3, v120
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PATT	
		.word	song022_4_3
	.byte	PATT	
		.word	song022_4_3
	.byte	PATT	
		.word	song022_4_3
	.byte	W12
	.byte		N08	, Ds3, v120
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W36
	.byte	PATT	
		.word	song022_4_2
	.byte	PATT	
		.word	song022_4_1
	.byte	GOTO	
		.word	song022_4_2
	.byte	FINE

	@********************** Track  5 **********************@

	.global song022_5
song022_5:	@ 0x0817347B
	.byte	KEYSH	, 0
	.byte	VOICE	, 112
	.byte	PAN	, c_v
	.byte	VOL	, v035
	.byte	W12
	.byte		N08	, Gn2, v104
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
song022_5_1:
	.byte	W12
	.byte		N08	, Gs2, v104
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PEND
song022_5_2:
	.byte	W12
	.byte		N08	, Gn2, v104
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_5_1
	.byte	PATT	
		.word	song022_5_2
	.byte	PATT	
		.word	song022_5_1
	.byte	PATT	
		.word	song022_5_2
	.byte	W12
	.byte		N08	, Gs2, v104
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N14	
	.byte	W12
song022_5_3:
	.byte	W12
	.byte		N08	, Bn2, v120
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PEND
song022_5_4:
	.byte	W12
	.byte		N08	, As2, v120
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_5_3
	.byte	W12
	.byte		N08	, Cn3, v120
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PATT	
		.word	song022_5_3
	.byte	PATT	
		.word	song022_5_4
	.byte	PATT	
		.word	song022_5_3
	.byte	W12
	.byte		N08	, Cn3, v120
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W36
	.byte	PATT	
		.word	song022_5_2
	.byte	PATT	
		.word	song022_5_1
	.byte	GOTO	
		.word	song022_5_2
	.byte	FINE

	@********************** Track  6 **********************@

	.global song022_6
song022_6:	@ 0x08173525
	.byte	KEYSH	, 0
	.byte	VOICE	, 110
	.byte	PAN	, c_v+5
	.byte	VOL	, v097
	.byte	W12
	.byte		N08	, En2, v116
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
song022_6_1:
	.byte	W12
	.byte		N08	, Fn2, v116
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PEND
song022_6_2:
	.byte	W12
	.byte		N08	, En2, v116
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_6_1
	.byte	PATT	
		.word	song022_6_2
	.byte	PATT	
		.word	song022_6_1
	.byte	PATT	
		.word	song022_6_2
	.byte	W12
	.byte		N08	, Fn2, v116
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N14	
	.byte	W12
song022_6_3:
	.byte	W12
	.byte		N08	, Gn2, v127
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PEND
	.byte	PATT	
		.word	song022_6_3
	.byte	PATT	
		.word	song022_6_3
	.byte	W12
	.byte		N08	, Gs2, v127
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte	PATT	
		.word	song022_6_3
	.byte	PATT	
		.word	song022_6_3
	.byte	PATT	
		.word	song022_6_3
	.byte	W12
	.byte		N08	, Gs2, v127
	.byte	W12
	.byte		N08	
	.byte	W24
	.byte		N08	
	.byte	W12
	.byte		N08	
	.byte	W36
	.byte	PATT	
		.word	song022_6_2
	.byte	PATT	
		.word	song022_6_1
	.byte	GOTO	
		.word	song022_6_2
	.byte	FINE

	.align 2
	.global song022
song022:	@ 0x081735C8
	.byte	6		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song022_1		@ track
	.word	song022_2		@ track
	.word	song022_3		@ track
	.word	song022_4		@ track
	.word	song022_5		@ track
	.word	song022_6		@ track
