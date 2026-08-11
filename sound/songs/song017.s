	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song017_1
song017_1:	@ 0x08172090
	.byte	KEYSH	, 0
	.byte	TEMPO	, 40
	.byte	VOICE	, 85
	.byte	PAN	, c_v-20
	.byte	VOL	, v081
	.byte		N24	, Gs2, v092
	.byte	W24
song017_1_1:
	.byte	W48
	.byte		N48	, Fn3, v092
	.byte	W24
	.byte	W24
	.byte			En3
	.byte	W72
	.byte		N24	, Gs3
	.byte	W24
	.byte		N96	, An3
	.byte	W72
	.byte	W24
	.byte		N48	, Gs3
	.byte	W72
	.byte		N21	, An3
	.byte	W24
	.byte		N48	
	.byte	W48
	.byte		N12	, Gs3
	.byte	W24
	.byte		N21	, Cn4
	.byte	W24
	.byte		N48	
	.byte	W48
	.byte		N12	, Bn3
	.byte	W24
	.byte		N21	, Fn4
	.byte	W24
	.byte		N48	
	.byte	W48
	.byte		N12	, En4
	.byte	W24
	.byte	W12
	.byte		N06	, En3
	.byte	W06
	.byte			An4
	.byte	W05
	.byte	VOICE	, 88
	.byte	W01
	.byte		TIE	, En5, v060
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N48	, Dn5, v072
	.byte	W24
	.byte	W36
	.byte			Cs5, v092
	.byte	W06
	.byte	VOL	, v087
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v049
	.byte	W02
	.byte		v039
	.byte	W01
	.byte		v030
	.byte	W19
	.byte		v033
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v074
	.byte	W02
	.byte		v077
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v097
	.byte	W15
	.byte	W24
	.byte	GOTO	
		.word	song017_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song017_2
song017_2:	@ 0x0817210F
	.byte	KEYSH	, 0
	.byte	VOICE	, 85
	.byte	PAN	, c_v-5
	.byte	VOL	, v081
	.byte	W24
song017_2_1:
	.byte	W72
	.byte	W24
	.byte		N48	, Bn2, v092
	.byte	W72
	.byte	W48
	.byte		N24	, Gn3
	.byte	W24
	.byte			Fn3
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte		N48	, En3
	.byte	W72
	.byte	W24
	.byte			Fn3
	.byte	W48
	.byte		N12	, En3
	.byte	W24
	.byte	W24
	.byte		N48	, An3
	.byte	W48
	.byte		N12	, Gs3
	.byte	W24
	.byte	W24
	.byte		N48	, Dn4
	.byte	W48
	.byte		N12	, Bn3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N06	, An2, v116
	.byte	W06
	.byte		N54	, En4, v104
	.byte	W12
	.byte	VOL	, v087
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v049
	.byte	W02
	.byte		v039
	.byte	W01
	.byte		v030
	.byte	W19
	.byte		v033
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v074
	.byte	W02
	.byte		v077
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v097
	.byte	W15
	.byte	W24
	.byte	GOTO	
		.word	song017_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song017_3
song017_3:	@ 0x08172178
	.byte	KEYSH	, 0
	.byte	VOICE	, 85
	.byte	PAN	, c_v+5
	.byte	VOL	, v081
	.byte	W24
song017_3_1:
	.byte		N96	, An2, v092
	.byte	W72
	.byte	W24
	.byte		N48	, Gs2
	.byte	W72
	.byte	W96
	.byte	W24
	.byte			Bn2
	.byte	W72
	.byte	W24
	.byte			Dn3
	.byte	W48
	.byte		N12	
	.byte	W24
	.byte	W24
	.byte		N48	, Fn3
	.byte	W48
	.byte		N12	, En3
	.byte	W24
	.byte	W24
	.byte		N48	, An3
	.byte	W48
	.byte		N12	, Gs3
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte	GOTO	
		.word	song017_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song017_4
song017_4:	@ 0x081721AA
	.byte	KEYSH	, 0
	.byte	W01
	.byte	VOICE	, 85
	.byte	PAN	, c_v+20
	.byte	VOL	, v081
	.byte	W23
song017_4_3:
	.byte		N92	, Dn1, v092
	.byte	W72
song017_4_1:
	.byte	W22
	.byte		N48	, En1, v092
	.byte	W72
	.byte	W02
	.byte	PEND
	.byte	W22
	.byte		N96	, Dn1
	.byte	W72
	.byte	W02
	.byte	PATT	
		.word	song017_4_1
song017_4_2:
	.byte	W22
	.byte		N48	, Dn1, v092
	.byte	W48
	.byte		N12	, En1
	.byte	W24
	.byte	W02
	.byte	PEND
	.byte	PATT	
		.word	song017_4_2
	.byte	PATT	
		.word	song017_4_2
	.byte	W22
	.byte		N48	, En1, v092
	.byte	W48
	.byte			Fs1
	.byte	W24
	.byte	W02
	.byte	W22
	.byte		N72	, Gs1
	.byte	W72
	.byte		N24	, En1
	.byte	W02
	.byte	W22
	.byte		N56	, An1
	.byte	W19
	.byte	VOL	, v087
	.byte	W01
	.byte		v069
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v049
	.byte	W02
	.byte		v039
	.byte	W01
	.byte		v030
	.byte	W19
	.byte		v033
	.byte	W01
	.byte		v037
	.byte	W01
	.byte		v056
	.byte	W01
	.byte		v059
	.byte	W01
	.byte		v063
	.byte	W01
	.byte		v067
	.byte	W01
	.byte		v071
	.byte	W01
	.byte		v074
	.byte	W02
	.byte		v077
	.byte	W01
	.byte		v081
	.byte	W01
	.byte		v085
	.byte	W01
	.byte		v089
	.byte	W01
	.byte		v093
	.byte	W01
	.byte		v097
	.byte	W02
	.byte		N12	, Gn1
	.byte	W12
	.byte			Fs1
	.byte	W02
	.byte	W10
	.byte		N14	, En1
	.byte	W14
	.byte	GOTO	
		.word	song017_4_3
	.byte	FINE

	.align 2
	.global song017
song017:	@ 0x08172228
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song017_1		@ track
	.word	song017_2		@ track
	.word	song017_3		@ track
	.word	song017_4		@ track
