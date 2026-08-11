	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song002_1
song002_1:	@ 0x0816CBE4
	.byte	KEYSH	, 0
song002_1_2:
	.byte	TEMPO	, 59
	.byte	VOICE	, 16
	.byte	PAN	, c_v-10
	.byte	VOL	, v073
	.byte		N80	, Bn2, v088
	.byte		N80	, Dn3
	.byte	W72
song002_1_1:
	.byte	W21
	.byte		N03	, As3, v088
	.byte	W03
	.byte		N18	, Bn3, v096
	.byte	W03
	.byte		N15	, Gn3
	.byte	W21
	.byte		N13	, Fs3, v100
	.byte		N13	, An3
	.byte	W24
	.byte	PEND
	.byte		N80	, Bn2, v088
	.byte		N80	, Dn3
	.byte	W72
	.byte	W21
	.byte		N03	, Bn3
	.byte	W03
	.byte		N18	, Cn4, v096
	.byte	W03
	.byte		N15	, An3
	.byte	W21
	.byte		N13	, Gn3, v104
	.byte		N13	, Bn3
	.byte	W24
	.byte		N40	, En3, v092
	.byte		N40	, Gn3
	.byte	W48
	.byte		N11	, Dn3, v096
	.byte		N11	, Fs3
	.byte	W12
	.byte			En3, v088
	.byte		N32	, Gn3
	.byte	W12
	.byte		N23	, Bn3, v096
	.byte	W24
	.byte		N11	, Fs3, v092
	.byte		N11	, An3
	.byte	W12
	.byte			En3, v088
	.byte		N11	, Gn3
	.byte	W12
	.byte			Ds3, v084
	.byte		N11	, Fs3
	.byte	W12
	.byte			En3, v092
	.byte		N11	, Gn3
	.byte	W12
	.byte		N72	, Bn2, v088
	.byte		N72	, Dn3
	.byte	W72
	.byte	W72
	.byte		N80	, Bn2
	.byte		N80	, Dn3
	.byte	W72
	.byte	PATT	
		.word	song002_1_1
	.byte		N80	, Bn2, v088
	.byte		N80	, Dn3
	.byte	W72
	.byte	W21
	.byte		N03	, Bn3
	.byte	W03
	.byte		N18	, Cn4, v096
	.byte	W03
	.byte		N15	, An3
	.byte	W21
	.byte		N11	, Gn3, v104
	.byte		N11	, Bn3
	.byte	W24
	.byte		N42	, Bn3, v092
	.byte		N42	, Dn4
	.byte	W48
	.byte		N10	, An3, v088
	.byte		N10	, Cn4
	.byte	W12
	.byte			Gn3, v096
	.byte		N10	, Bn3
	.byte	W12
	.byte			An3, v088
	.byte		N10	, Cn4
	.byte	W12
	.byte			Gn3
	.byte		N10	, Bn3
	.byte	W12
	.byte			Fs3, v084
	.byte		N10	, An3
	.byte	W12
	.byte			Gn3, v096
	.byte		N10	, Bn3
	.byte	W12
	.byte			Cn3, v088
	.byte		N10	, En3
	.byte	W12
	.byte		N80	, Dn3, v084
	.byte		N10	, Fs3
	.byte	W12
	.byte		N68	, Gn3, v088
	.byte	W72
	.byte	W72
	.byte	GOTO	
		.word	song002_1_2
	.byte	FINE

	@********************** Track  2 **********************@

	.global song002_2
song002_2:	@ 0x0816CCAA
	.byte	KEYSH	, 0
song002_2_3:
	.byte	VOICE	, 15
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N11	, Dn2, v108
	.byte	W12
	.byte			Gn2, v100
	.byte	W12
	.byte		N22	, Dn3, v116
	.byte		N22	, Fs3, v112
	.byte	W24
	.byte			Bn2
	.byte		N22	, Dn3, v108
	.byte	W24
song002_2_1:
	.byte		N11	, Dn2, v112
	.byte	W12
	.byte			Gn2, v108
	.byte	W12
	.byte		N32	, Cn3, v112
	.byte		N32	, En3, v116
	.byte	W48
	.byte	PEND
song002_2_2:
	.byte		N11	, Dn2, v108
	.byte	W12
	.byte			Gn2, v100
	.byte	W12
	.byte		N22	, Dn3, v116
	.byte		N22	, Fs3, v112
	.byte	W24
	.byte			Bn2
	.byte		N22	, Dn3, v108
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song002_2_1
	.byte		N11	, Gn2, v116
	.byte	W12
	.byte			Cn3, v100
	.byte	W12
	.byte		N22	, En3, v108
	.byte		N22	, Gn3
	.byte	W24
	.byte			Fs3
	.byte		N22	, An3, v112
	.byte	W24
	.byte		N11	, Gn2, v116
	.byte	W12
	.byte			Cn3, v112
	.byte	W12
	.byte		N22	, Ds3, v104
	.byte		N22	, Fs3, v100
	.byte	W24
	.byte		N20	, En3, v108
	.byte		N20	, Gn3, v116
	.byte	W24
	.byte		N22	, Bn2, v108
	.byte		N22	, Dn3, v116
	.byte	W12
	.byte		N11	, Gn2, v108
	.byte	W12
	.byte			Gn3, v116
	.byte	W12
	.byte			Fs3, v108
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Dn2, v112
	.byte	W12
	.byte			Gn2, v108
	.byte	W12
	.byte		N32	, Bn2
	.byte		N32	, Dn3, v116
	.byte	W48
	.byte	PATT	
		.word	song002_2_2
	.byte	PATT	
		.word	song002_2_1
	.byte	PATT	
		.word	song002_2_2
	.byte	PATT	
		.word	song002_2_1
	.byte		N11	, Gn2, v116
	.byte	W12
	.byte			Cn3, v100
	.byte	W12
	.byte			En3, v108
	.byte		N11	, Gn3
	.byte	W12
	.byte			Cn3
	.byte	W12
	.byte		N23	, En3, v112
	.byte	W24
	.byte		N11	, Fs2, v116
	.byte	W12
	.byte			Dn2, v112
	.byte	W12
	.byte		N22	, An2, v104
	.byte		N22	, Dn3, v100
	.byte	W24
	.byte		N20	, Dn3, v108
	.byte		N20	, Fs3, v116
	.byte	W24
	.byte		N22	, Dn3
	.byte		N22	, Gn3, v108
	.byte	W12
	.byte		N11	, Bn2
	.byte	W12
	.byte			Gn3, v116
	.byte	W12
	.byte			Fs3, v108
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			An2
	.byte	W12
	.byte			Fs2, v112
	.byte	W12
	.byte			Gn2, v108
	.byte	W12
	.byte		N22	, Bn2
	.byte		N22	, Gn3, v116
	.byte	W24
	.byte		N11	, An2, v112
	.byte	W12
	.byte			Gn2
	.byte	W12
	.byte	GOTO	
		.word	song002_2_3
	.byte	FINE

	@********************** Track  3 **********************@

	.global song002_3
song002_3:	@ 0x0816CD9B
	.byte	KEYSH	, 0
song002_3_1:
	.byte	VOICE	, 14
	.byte	MODT	, 0
	.byte	PAN	, c_v+10
	.byte	VOL	, v073
	.byte	W72
	.byte	W72
	.byte	W12
	.byte		N11	, Bn4, v104
	.byte	W12
	.byte		N05	, An4, v100
	.byte	W12
	.byte		N04	, Gn4, v088
	.byte	W12
	.byte			Fs4, v104
	.byte	W09
	.byte		N03	, Gs4, v084
	.byte	W03
	.byte		N11	, An4, v092
	.byte	W12
	.byte		N23	, En4, v112
	.byte	W24
	.byte			Dn4, v088
	.byte	W36
	.byte		N11	, Bn3, v096
	.byte	W12
	.byte		N56	, Cn4, v092
	.byte	W28
	.byte	W01
	.byte	MOD	, 3
	.byte	W36
	.byte		0
	.byte	W07
	.byte	W72
	.byte	W72
	.byte		N23	, An4, v096
	.byte	W09
	.byte	MOD	, 1
	.byte	W12
	.byte		0
	.byte	W03
	.byte		N23	, Gn4
	.byte	W24
	.byte		N11	, Fs4
	.byte	W12
	.byte			Gn4
	.byte	W12
	.byte		N56	, Bn4, v104
	.byte	W30
	.byte	MOD	, 2
	.byte	W32
	.byte		0
	.byte	W10
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W24
	.byte		N11	, Dn4, v092
	.byte	W12
	.byte			En4
	.byte	W12
	.byte			Fs4, v088
	.byte	W12
	.byte		N12	, Dn4, v092
	.byte	W12
	.byte		N23	, An4, v100
	.byte	W24
	.byte		N36	, Gn4, v096
	.byte	W17
	.byte	MOD	, 2
	.byte	W24
	.byte	W01
	.byte		0
	.byte	W06
	.byte	GOTO	
		.word	song002_3_1
	.byte	FINE

	.align 2
	.global song002
song002:	@ 0x0816CE18
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	148		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song002_1		@ track
	.word	song002_2		@ track
	.word	song002_3		@ track
