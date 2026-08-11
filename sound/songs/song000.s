	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song000_1
song000_1:	@ 0x0816C964
	.byte	KEYSH	, 0
	.byte	TEMPO	, 62
	.byte	VOICE	, 23
	.byte	PAN	, c_v+20
	.byte	VOL	, v092
	.byte		N05	, An4, v104
	.byte	W06
	.byte			An4, v100
	.byte	W13
	.byte			An4, v104
	.byte	W05
	.byte		N06	, Dn5, v096
	.byte	W06
	.byte		N04	, Cs5, v104
	.byte	W13
	.byte			Bn4, v096
	.byte	W05
	.byte		N06	, An4, v104
	.byte	W48
	.byte			Bn3
	.byte	W12
	.byte		N04	, Cs4, v092
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte			En4, v092
	.byte	W12
	.byte		N15	, An3, v096
	.byte	W24
	.byte		N11	, Dn4, v092
	.byte	W24
	.byte		N04	, Gn4, v084
	.byte	W12
	.byte			Fs4, v096
	.byte	W12
	.byte			En4
	.byte	W06
	.byte		N15	, Cs4
	.byte	W18
	.byte		N11	, Dn4, v104
	.byte	W11
	.byte	FINE

	@********************** Track  2 **********************@

	.global song000_2
song000_2:	@ 0x0816C9AC
	.byte	KEYSH	, 0
	.byte	VOICE	, 23
	.byte	TUNE	, c_v-10
	.byte	PAN	, c_v-24
	.byte	VOL	, v075
	.byte	W03
	.byte		N05	, An4, v104
	.byte	W06
	.byte			An4, v100
	.byte	W13
	.byte			An4, v104
	.byte	W05
	.byte		N06	, Dn5, v096
	.byte	W06
	.byte		N04	, Cs5, v104
	.byte	W13
	.byte			Bn4, v096
	.byte	W05
	.byte		N06	, An4, v104
	.byte	W44
	.byte	W01
	.byte	W03
	.byte			Bn3
	.byte	W12
	.byte		N04	, Cs4, v092
	.byte	W12
	.byte			Dn4, v080
	.byte	W12
	.byte			En4, v092
	.byte	W12
	.byte		N15	, An3, v096
	.byte	W24
	.byte		N11	, Dn4, v092
	.byte	W21
	.byte	W03
	.byte		N04	, Gn4, v084
	.byte	W12
	.byte			Fs4, v096
	.byte	W12
	.byte			En4
	.byte	W06
	.byte		N15	, Cs4
	.byte	W18
	.byte		N11	, Dn4, v104
	.byte	W11
	.byte	FINE

	@********************** Track  3 **********************@

	.global song000_3
song000_3:	@ 0x0816C9F8
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	PAN	, c_v
	.byte	VOL	, v080
	.byte	W96
	.byte		N11	, Gn2, v104
	.byte	W12
	.byte		N04	, Gn3, v108
	.byte	W12
	.byte		N11	, Gn2, v104
	.byte	W12
	.byte		N04	, Gn3
	.byte	W12
	.byte		N11	, Fs2
	.byte	W12
	.byte		N04	, Fs3
	.byte	W12
	.byte		N11	, Bn2, v100
	.byte	W12
	.byte		N04	, Bn3, v108
	.byte	W12
	.byte		N11	, En2
	.byte	W12
	.byte		N04	, En3, v104
	.byte	W18
	.byte		N11	, An2
	.byte	W18
	.byte		N06	, Dn3, v112
	.byte	W24
	.byte		N09	, Dn2, v104
	.byte	W09
	.byte	FINE

	@********************** Track  4 **********************@

	.global song000_4
song000_4:	@ 0x0816CA31
	.byte	KEYSH	, 0
	.byte	VOICE	, 22
	.byte	PAN	, c_v
	.byte	VOL	, v042
	.byte		N04	, An4, v104
	.byte	W06
	.byte			An4, v100
	.byte	W13
	.byte			An4, v104
	.byte	W05
	.byte		N05	, Dn5, v096
	.byte	W06
	.byte		N04	, Cs5, v104
	.byte	W13
	.byte			Bn4, v096
	.byte	W05
	.byte		N06	, An4, v104
	.byte	W48
	.byte	W12
	.byte		N10	, Fs3, v100
	.byte	W24
	.byte			Fs3, v096
	.byte	W60
	.byte	W12
	.byte		N05	, En3, v104
	.byte	W18
	.byte		N16	, An3, v096
	.byte	W18
	.byte		N11	, An3, v108
	.byte	W24
	.byte		N07	
	.byte	W08
	.byte			An3, v084
	.byte	W08
	.byte			An3, v060
	.byte	W08
	.byte			An3, v036
	.byte	W08
	.byte			An3, v012
	.byte	W07
	.byte	FINE

	@********************** Track  5 **********************@

	.global song000_5
song000_5:	@ 0x0816CA76
	.byte	KEYSH	, 0
	.byte	VOICE	, 20
	.byte	PAN	, c_v
	.byte	VOL	, v042
	.byte	W96
	.byte	W12
	.byte		N10	, Bn3, v104
	.byte	W24
	.byte		N10	
	.byte	W12
	.byte		N22	, An3
	.byte	W24
	.byte		N18	, Dn4, v100
	.byte	W24
	.byte	W12
	.byte		N05	, Bn3, v104
	.byte	W18
	.byte		N16	, Cs4
	.byte	W18
	.byte		N11	, Dn4
	.byte	W24
	.byte		N07	, Dn4, v108
	.byte	W08
	.byte			Dn4, v084
	.byte	W08
	.byte			Dn4, v060
	.byte	W08
	.byte			Dn4, v036
	.byte	W08
	.byte			Dn4, v012
	.byte	W07
	.byte	FINE

	@********************** Track  6 **********************@

	.global song000_6
song000_6:	@ 0x0816CAA9
	.byte	KEYSH	, 0
	.byte	VOICE	, 19
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte	W60
	.byte	VOICE	, 30
	.byte		N32	, Dn3, v127
	.byte	W36
	.byte	VOICE	, 19
	.byte		N09	, Cn1, v120
	.byte	W24
	.byte		N11	, Dn1, v108
	.byte	W24
	.byte		N10	, Cn1, v120
	.byte	W24
	.byte		N11	, Dn1, v104
	.byte	W24
	.byte		N06	, Cn1, v120
	.byte	W12
	.byte		N06	
	.byte	W18
	.byte		N10	, Cn1, v108
	.byte		N11	, Dn1, v104
	.byte	W18
	.byte			Dn1, v116
	.byte	W12
	.byte		N18	, Fn3, v108
	.byte	W18
	.byte	FINE

	@********************** Track  7 **********************@

	.global song000_7
song000_7:	@ 0x0816CADF
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
	.byte	PAN	, c_v
	.byte	VOL	, v067
	.byte	W96
	.byte	W12
	.byte		N03	, Fs6, v064
	.byte	W24
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N08	, As6
	.byte	W24
	.byte		N03	, Fs6
	.byte	W12
	.byte		N03	
	.byte	W12
	.byte		N03	
	.byte	W06
	.byte		N03	
	.byte	W06
	.byte		N08	, As6
	.byte	W18
	.byte		N03	, Fs6
	.byte	W03
	.byte	FINE

	.align 2
	.global song000
song000:	@ 0x0816CB04
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	158		@ reverb

	.word 0x08117FD4

	.word	song000_1		@ track
	.word	song000_2		@ track
	.word	song000_3		@ track
	.word	song000_4		@ track
	.word	song000_5		@ track
	.word	song000_6		@ track
	.word	song000_7		@ track
