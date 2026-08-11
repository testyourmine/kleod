	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song032_1
song032_1:	@ 0x08175CC8
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 19
	.byte	MODT	, 0
	.byte	PAN	, c_v
	.byte	VOL	, v080
	.byte	W72
	.byte		N20	, Fn4, v092
	.byte	W24
	.byte		N05	, Cn5, v100
	.byte	W12
	.byte			As4, v096
	.byte	W12
	.byte		N36	, Cn5
	.byte	W18
	.byte	MOD	, 3
	.byte	W06
	.byte	W21
	.byte		0
	.byte	W03
	.byte		N10	, Gs4
	.byte	W12
	.byte		N08	, As4
	.byte	W12
	.byte		N06	, Cn5
	.byte	W12
	.byte		N05	, Dn5
	.byte	W12
	.byte	TEMPO	, 67
	.byte		N18	, Ds5, v100
	.byte	W24
	.byte		N10	, Dn5, v104
	.byte	W12
	.byte		N05	, Ds5, v092
	.byte	W05
	.byte			Dn5, v088
	.byte	W07
	.byte		N22	, Cn5, v092
	.byte	W24
	.byte	TEMPO	, 64
	.byte		N20	, Dn5
	.byte	W24
	.byte			As4, v100
	.byte	W24
	.byte			Dn5, v108
	.byte	W24
	.byte	TEMPO	, 62
	.byte		TIE	, Cn5, v092
	.byte	W66
	.byte	W01
	.byte	MOD	, 3
	.byte	W05
	.byte	W68
	.byte	W02
	.byte		EOT	
	.byte	W01
	.byte	MOD	, 0
	.byte	FINE

	@********************** Track  2 **********************@

	.global song032_2
song032_2:	@ 0x08175D26
	.byte	KEYSH	, 0
	.byte	VOICE	, 21
	.byte	TUNE	, c_v
	.byte	PAN	, c_v
	.byte	VOL	, v080
	.byte	W72
	.byte		N18	, Fn2, v096
	.byte	W36
	.byte		N11	, Cn3
	.byte	W24
	.byte			Fn2, v088
	.byte	W12
	.byte		N15	, Gn2
	.byte	W24
	.byte		N11	, Gn2, v092
	.byte	W12
	.byte			Ds3, v088
	.byte	W12
	.byte		N22	, Gn2
	.byte	W24
	.byte		N24	, Gs2, v092
	.byte	W32
	.byte	W03
	.byte		N11	, Fn3
	.byte	W24
	.byte	W01
	.byte			Gs2, v084
	.byte	W12
	.byte			As2, v092
	.byte	W23
	.byte		N24	, As2, v096
	.byte	W48
	.byte	W01
	.byte		N11	, Cn3
	.byte	W18
	.byte	VOICE	, 26
	.byte	VOL	, v042
	.byte	PAN	, c_v+63
	.byte	TUNE	, c_v-10
	.byte	W14
	.byte		N10	, En3
	.byte	W12
	.byte			Gn3, v112
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte			Dn4
	.byte	W04
	.byte	W08
	.byte			En4, v100
	.byte	W12
	.byte			Fn4, v108
	.byte	W12
	.byte			En4, v112
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte			Gn3, v092
	.byte	W12
	.byte			Fn3, v108
	.byte	W04
	.byte	W08
	.byte			En3
	.byte	W12
	.byte			Gn3, v096
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W12
	.byte			Fn3, v108
	.byte	W12
	.byte			En3, v096
	.byte	W04
	.byte	W08
	.byte			Gn3, v100
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte			Gn3, v108
	.byte	W12
	.byte			Fn3, v096
	.byte	W12
	.byte			En3, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W04
	.byte	W08
	.byte			Cn4, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W12
	.byte			Fn3, v108
	.byte	W12
	.byte			En3, v096
	.byte	W12
	.byte			Gn3, v100
	.byte	W12
	.byte			Cn4, v104
	.byte	W04
	.byte	W08
	.byte			Gn3, v108
	.byte	W12
	.byte			Fn3, v096
	.byte	W12
	.byte			En3, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W11
	.byte			Cn4
	.byte	W12
	.byte			Gn3, v108
	.byte	W05
	.byte	W07
	.byte			Fn3, v096
	.byte	W12
	.byte			En3, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W10
	.byte	FINE

	@********************** Track  3 **********************@

	.global song032_3
song032_3:	@ 0x08175DDB
	.byte	KEYSH	, 0
	.byte	VOICE	, 22
	.byte	PAN	, c_v-15
	.byte	VOL	, v098
	.byte		N21	, Cn3, v084
	.byte	W24
	.byte			Dn3
	.byte	W24
	.byte			Ds3
	.byte	W24
	.byte		N68	, Fn3, v080
	.byte	W72
	.byte		N44	, Gn3, v092
	.byte	W48
	.byte		N21	, Cn4, v084
	.byte	W24
	.byte		N68	, Gs3, v080
	.byte	W72
	.byte			As3, v076
	.byte	W72
	.byte		TIE	, Cn4, v096
	.byte	W72
	.byte	W72
	.byte	W05
	.byte	VOL	, v072
	.byte	W04
	.byte		v067
	.byte	W02
	.byte		v064
	.byte	W02
	.byte		v060
	.byte	W03
	.byte		v057
	.byte	W05
	.byte		v050
	.byte	W03
	.byte		v047
	.byte	W05
	.byte		v040
	.byte	W02
	.byte		v037
	.byte	W03
	.byte		v033
	.byte	W05
	.byte		v026
	.byte	W03
	.byte		v023
	.byte	W05
	.byte		v016
	.byte	W01
	.byte		v015
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		v006
	.byte	W03
	.byte		v003
	.byte	W01
	.byte		v000
	.byte	W09
	.byte		EOT	
	.byte	FINE

	@********************** Track  4 **********************@

	.global song032_4
song032_4:	@ 0x08175E2B
	.byte	KEYSH	, 0
	.byte	VOICE	, 22
	.byte	PAN	, c_v+10
	.byte	VOL	, v098
	.byte	W48
	.byte		N21	, As2, v088
	.byte	W24
	.byte		N92	, Cn3, v080
	.byte	W72
	.byte	W24
	.byte		N21	, As2, v088
	.byte	W24
	.byte		N10	, Cn3, v084
	.byte	W12
	.byte			Dn3, v088
	.byte	W12
	.byte		N42	, Ds3
	.byte	W48
	.byte		N10	, Dn3, v084
	.byte	W12
	.byte			Cn3, v088
	.byte	W12
	.byte		N24	, Dn3
	.byte	W24
	.byte		N10	, As2, v080
	.byte	W12
	.byte			Cn3, v092
	.byte	W12
	.byte		N22	, Dn3, v088
	.byte	W24
	.byte		TIE	, En3, v092
	.byte	W72
	.byte	W72
	.byte	W05
	.byte	VOL	, v072
	.byte	W04
	.byte		v067
	.byte	W02
	.byte		v064
	.byte	W02
	.byte		v060
	.byte	W03
	.byte		v057
	.byte	W05
	.byte		v050
	.byte	W03
	.byte		v047
	.byte	W05
	.byte		v040
	.byte	W02
	.byte		v037
	.byte	W03
	.byte		v033
	.byte	W05
	.byte		v026
	.byte	W03
	.byte		v023
	.byte	W05
	.byte		v016
	.byte	W01
	.byte		v015
	.byte	W03
	.byte		v011
	.byte	W03
	.byte		v006
	.byte	W03
	.byte		v003
	.byte	W01
	.byte		v000
	.byte	W09
	.byte		EOT	
	.byte	FINE

	@********************** Track  5 **********************@

	.global song032_5
song032_5:	@ 0x08175E8D
	.byte	KEYSH	, 0
	.byte	VOICE	, 25
	.byte	PAN	, c_v-30
	.byte	VOL	, v042
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		N10	, Cn3, v096
	.byte	W12
	.byte			Dn3
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Gn3, v112
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte			Dn4
	.byte	W12
	.byte			En4, v100
	.byte	W12
	.byte			Fn4, v108
	.byte	W12
	.byte			En4, v112
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte			Gn3, v092
	.byte	W12
	.byte			Fn3, v108
	.byte	W12
	.byte			En3
	.byte	W12
	.byte			Gn3, v096
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W12
	.byte			Fn3, v108
	.byte	W12
	.byte			En3, v096
	.byte	W12
	.byte			Gn3, v100
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte			Gn3, v108
	.byte	W12
	.byte			Fn3, v096
	.byte	W12
	.byte			En3, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W12
	.byte			Cn4, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W12
	.byte			Fn3, v108
	.byte	W12
	.byte			En3, v096
	.byte	W12
	.byte			Gn3, v100
	.byte	W12
	.byte			Cn4, v104
	.byte	W12
	.byte			Gn3, v108
	.byte	W12
	.byte			Fn3, v096
	.byte	W12
	.byte			En3, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W11
	.byte			Cn4
	.byte	W12
	.byte			Gn3, v108
	.byte	W12
	.byte			Fn3, v096
	.byte	W01
	.byte	W11
	.byte			En3, v100
	.byte	W12
	.byte			Gn3, v104
	.byte	W10
	.byte	FINE

	@********************** Track  6 **********************@

	.global song032_6
song032_6:	@ 0x08175F0D
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
	.byte	TUNE	, c_v
	.byte	PAN	, c_v-20
	.byte	VOL	, v058
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte		N44	, En4, v092
	.byte	W48
	.byte			Gn4, v100
	.byte	W24
	.byte	W24
	.byte			Cn5, v092
	.byte	W48
	.byte			Gn4, v096
	.byte	W48
	.byte			En4, v092
	.byte	W24
	.byte	W24
	.byte			Gn4
	.byte	W48
	.byte			Cn5, v100
	.byte	W48
	.byte			Gn4, v096
	.byte	W24
	.byte	W24
	.byte			En4, v092
	.byte	W48
	.byte			Gn4
	.byte	W44
	.byte	W03
	.byte	FINE

	@********************** Track  7 **********************@

	.global song032_7
song032_7:	@ 0x08175F3E
	.byte	KEYSH	, 0
	.byte	VOICE	, 24
	.byte	TUNE	, c_v-10
	.byte	PAN	, c_v+20
	.byte	VOL	, v033
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W09
	.byte		N44	, En4, v092
	.byte	W48
	.byte			Gn4, v100
	.byte	W15
	.byte	W32
	.byte	W01
	.byte			Cn5, v092
	.byte	W36
	.byte	W03
	.byte	W09
	.byte			Gn4, v096
	.byte	W48
	.byte			En4, v092
	.byte	W15
	.byte	W32
	.byte	W01
	.byte			Gn4
	.byte	W36
	.byte	W03
	.byte	W09
	.byte			Cn5, v100
	.byte	W48
	.byte			Gn4, v096
	.byte	W15
	.byte	W32
	.byte	W01
	.byte			En4, v092
	.byte	W36
	.byte	W03
	.byte	W09
	.byte			Gn4
	.byte	W44
	.byte	W03
	.byte	FINE

	.align 2
	.global song032
song032:	@ 0x08175F7C
	.byte	7		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	153		@ reverb

	.word	voicegroup002		@ voicegroup/tone

	.word	song032_1		@ track
	.word	song032_2		@ track
	.word	song032_3		@ track
	.word	song032_4		@ track
	.word	song032_5		@ track
	.word	song032_6		@ track
	.word	song032_7		@ track
