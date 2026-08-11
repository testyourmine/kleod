	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song013_1
song013_1:	@ 0x08171508
	.byte	KEYSH	, 0
song013_1_1:
	.byte	TEMPO	, 100
	.byte	VOICE	, 38
	.byte	PAN	, c_v-15
	.byte	VOL	, v089
	.byte		TIE	, Gs3, v080
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, As3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		N96	, Cn4
	.byte	W72
	.byte	W24
	.byte		N48	, Gn3
	.byte	W48
	.byte		TIE	, As3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Gs3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte	GOTO	
		.word	song013_1_1
	.byte	FINE

	@********************** Track  2 **********************@

	.global song013_2
song013_2:	@ 0x0817153A
	.byte	KEYSH	, 0
song013_2_1:
	.byte	VOICE	, 38
	.byte	PAN	, c_v+15
	.byte	VOL	, v089
	.byte		TIE	, Fs3, v080
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Fn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, En3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Ds3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, Dn3
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte		TIE	, En3
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W24
	.byte		EOT	
	.byte		TIE	, Fn3
	.byte	W48
	.byte	W72
	.byte	W72
	.byte		EOT	
	.byte	GOTO	
		.word	song013_2_1
	.byte	FINE

	@********************** Track  3 **********************@

	.global song013_3
song013_3:	@ 0x0817156F
	.byte	KEYSH	, 0
song013_3_1:
	.byte	VOICE	, 39
	.byte	PAN	, c_v-30
	.byte	VOL	, v097
	.byte	W48
	.byte		N03	, Fs3, v112
	.byte	W03
	.byte			Gs3, v100
	.byte	W03
	.byte			Cn4, v092
	.byte	W03
	.byte		N24	, Ds4, v080
	.byte	W15
	.byte	W24
	.byte		N03	, Ds3, v112
	.byte	W03
	.byte			Fs3, v100
	.byte	W03
	.byte			Gs3, v092
	.byte	W06
	.byte		N24	, Cn4, v080
	.byte	W36
	.byte	W48
	.byte		N03	, Gs3, v112
	.byte	W03
	.byte			As3, v100
	.byte	W03
	.byte			Dn4, v092
	.byte	W03
	.byte		N24	, Fn4, v080
	.byte	W15
	.byte	W24
	.byte		N03	, Fn3, v112
	.byte	W03
	.byte			Gs3, v100
	.byte	W03
	.byte			As3, v092
	.byte	W03
	.byte		N24	, Dn4, v080
	.byte	W36
	.byte	W03
	.byte	W48
	.byte		N03	, Dn3, v112
	.byte	W03
	.byte			En3, v100
	.byte	W03
	.byte			Gs3, v092
	.byte	W03
	.byte		N24	, Bn3, v080
	.byte	W15
	.byte	W24
	.byte		N03	, Bn2, v112
	.byte	W03
	.byte			Dn3, v100
	.byte	W03
	.byte			En3, v092
	.byte	W03
	.byte		N24	, Gs3, v080
	.byte	W36
	.byte	W03
	.byte		N03	, Cn3, v112
	.byte	W03
	.byte			Ds3, v100
	.byte	W03
	.byte			Fs3, v092
	.byte	W03
	.byte		N24	, Gs3, v080
	.byte	W36
	.byte	W03
	.byte		N03	, Gs2, v112
	.byte	W03
	.byte			Cn3, v100
	.byte	W03
	.byte			Ds3, v092
	.byte	W03
	.byte		N24	, Fs3, v080
	.byte	W15
	.byte	W24
	.byte		N03	, Fs2, v112
	.byte	W03
	.byte			Gs2, v100
	.byte	W03
	.byte			Cn3, v092
	.byte	W03
	.byte		N24	, Ds3, v080
	.byte	W36
	.byte	W03
	.byte		N06	, As2, v112
	.byte	W06
	.byte			Dn3, v100
	.byte	W06
	.byte			Fn3, v092
	.byte	W06
	.byte		N24	, As3, v080
	.byte	W54
	.byte	W24
	.byte		N06	, As2, v112
	.byte	W06
	.byte			Dn3, v100
	.byte	W06
	.byte			Fn3, v092
	.byte	W06
	.byte		N24	, As3, v080
	.byte	W30
	.byte		N06	, Cn3, v112
	.byte	W06
	.byte			En3, v100
	.byte	W06
	.byte			Gn3, v092
	.byte	W06
	.byte		N24	, Cn4, v080
	.byte	W54
	.byte	W24
	.byte		N06	, Gn3, v112
	.byte	W06
	.byte			Cn4, v100
	.byte	W06
	.byte		N24	, En4, v092
	.byte	W36
	.byte		N03	, Fn3, v112
	.byte	W03
	.byte			As3, v100
	.byte	W03
	.byte			Cn4, v092
	.byte	W03
	.byte		N24	, Fn4, v080
	.byte	W36
	.byte	W03
	.byte		N03	, Fn3, v112
	.byte	W03
	.byte			Gs3, v100
	.byte	W03
	.byte			Cn4, v092
	.byte	W03
	.byte		N24	, Ds4, v080
	.byte	W15
	.byte	W24
	.byte		N03	, Ds3, v112
	.byte	W03
	.byte			Fn3, v100
	.byte	W03
	.byte			Gs3, v092
	.byte	W03
	.byte		N24	, Cn4, v080
	.byte	W36
	.byte	W03
	.byte		N03	, Cn3, v112
	.byte	W03
	.byte			Ds3, v100
	.byte	W03
	.byte			Fn3, v092
	.byte	W03
	.byte		N24	, As3, v080
	.byte	W36
	.byte	W03
	.byte		N03	, Cn3, v112
	.byte	W03
	.byte			Ds3, v100
	.byte	W03
	.byte			Fn3, v092
	.byte	W03
	.byte		N24	, Gs3, v080
	.byte	W15
	.byte	W24
	.byte		N03	, Gs2, v112
	.byte	W03
	.byte			As2, v100
	.byte	W03
	.byte			Cn3, v092
	.byte	W03
	.byte		N24	, Ds3, v080
	.byte	W36
	.byte	W03
	.byte	GOTO	
		.word	song013_3_1
	.byte	FINE

	@********************** Track  4 **********************@

	.global song013_4
song013_4:	@ 0x08171697
	.byte	KEYSH	, 0
song013_4_2:
	.byte	VOICE	, 36
	.byte	PAN	, c_v+10
	.byte	VOL	, v097
	.byte		N18	, Gs1, v052
	.byte	W24
	.byte		N16	, Ds2
	.byte	W24
	.byte		N30	, Cn3, v060
	.byte	W24
	.byte	W72
song013_4_1:
	.byte		N18	, Gs1, v052
	.byte	W24
	.byte		N16	, Ds2
	.byte	W24
	.byte		N30	, Cn3, v060
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte	PATT	
		.word	song013_4_1
	.byte	W72
	.byte	PATT	
		.word	song013_4_1
	.byte	W72
	.byte		N18	, As1, v052
	.byte	W24
	.byte		N16	, Fn2
	.byte	W24
	.byte		N30	, Dn3, v060
	.byte	W24
	.byte	W72
	.byte		N18	, Cn2, v052
	.byte	W24
	.byte		N16	, Gn2
	.byte	W24
	.byte		N30	, En3, v060
	.byte	W24
	.byte	W72
	.byte		N18	, Fn1, v052
	.byte	W24
	.byte		N16	, Cn2
	.byte	W24
	.byte		N30	, Gs2, v060
	.byte	W24
	.byte	W72
	.byte		N18	, Fn1, v052
	.byte	W24
	.byte		N16	, Cn2
	.byte	W24
	.byte		N30	, Fn2, v060
	.byte	W24
	.byte	W72
	.byte	GOTO	
		.word	song013_4_2
	.byte	FINE

	.align 2
	.global song013
song013:	@ 0x081716FC
	.byte	4		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup001		@ voicegroup/tone

	.word	song013_1		@ track
	.word	song013_2		@ track
	.word	song013_3		@ track
	.word	song013_4		@ track
