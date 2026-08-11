	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song033_1
song033_1:	@ 0x08183F24
	.byte	KEYSH	, 0
	.byte	TEMPO	, 60
	.byte	VOICE	, 54
	.byte	PAN	, c_v
	.byte	VOL	, v098
	.byte	W12
	.byte		N40	, Cs3, v127
	.byte	W40
	.byte	FINE

	@********************** Track  2 **********************@

	.global song033_2
song033_2:	@ 0x08183F34
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	PAN	, c_v-15
	.byte	VOL	, v098
	.byte		N07	, Gn2, v084
	.byte	W04
	.byte			An2, v092
	.byte	W04
	.byte			Dn3, v096
	.byte	W04
	.byte			En3, v100
	.byte	W09
	.byte		N08	, Gn3
	.byte	W15
	.byte			Bn3, v092
	.byte	W18
	.byte		N36	, Gn3, v088
	.byte	W36
	.byte	FINE

	@********************** Track  3 **********************@

	.global song033_3
song033_3:	@ 0x08183F54
	.byte	KEYSH	, 0
	.byte	VOICE	, 29
	.byte	TUNE	, c_v-11
	.byte	PAN	, c_v+15
	.byte	VOL	, v061
	.byte	W09
	.byte		N07	, Gn2, v084
	.byte	W04
	.byte			An2, v092
	.byte	W04
	.byte			Dn3, v096
	.byte	W04
	.byte			En3, v100
	.byte	W09
	.byte		N08	, Gn3
	.byte	W15
	.byte			Bn3, v092
	.byte	W18
	.byte		N36	, Gn3, v088
	.byte	W32
	.byte	W01
	.byte	W03
	.byte	FINE

	.align 2
	.global song033
song033:	@ 0x08183F7C
	.byte	3		@ trackCount
	.byte	0		@ blockCount
	.byte	0		@ priority
	.byte	158		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song033_1		@ track
	.word	song033_2		@ track
	.word	song033_3		@ track
