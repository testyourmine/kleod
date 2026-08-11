	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song152_1
song152_1:	@ 0x08188A74
	.byte	KEYSH	, 0
	.byte	TEMPO	, 80
	.byte	VOICE	, 62
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N04	, As5, v088
	.byte	W02
	.byte			Fs5, v104
	.byte	W05
	.byte			Gs5, v108
	.byte	W03
	.byte			Ds5, v096
	.byte	W03
	.byte		N03	, Fs5, v112
	.byte	W02
	.byte			Cn5
	.byte	W03
	.byte		N04	, Ds5, v108
	.byte	W04
	.byte			As4, v104
	.byte	W03
	.byte			Cn5, v108
	.byte	W02
	.byte			Fs5, v096
	.byte	W03
	.byte			Ds5, v100
	.byte	W04
	.byte		N06	, Fs5, v080
	.byte	W06
	.byte			Gs5, v096
	.byte	W05
	.byte			As5, v080
	.byte	W06
	.byte			Fs5, v092
	.byte	W06
	.byte			Gs5, v084
	.byte	W05
	.byte			As5, v080
	.byte	W06
	.byte			Fs5, v092
	.byte	W05
	.byte			Gs5, v084
	.byte	W06
	.byte			As5, v092
	.byte	W06
	.byte			Fs5, v096
	.byte	W05
	.byte			Gs5, v084
	.byte	W06
	.byte			As5, v080
	.byte	W05
	.byte			Fs5, v088
	.byte	W06
	.byte			Gs5, v080
	.byte	W06
	.byte			As5, v072
	.byte	W05
	.byte			Fs5, v064
	.byte	W06
	.byte			Gs5, v056
	.byte	W05
	.byte			As5, v052
	.byte	W06
	.byte			Fs5, v044
	.byte	W06
	.byte			Gs5, v036
	.byte	W06
	.byte			As5, v028
	.byte	W05
	.byte			Fs5, v020
	.byte	W05
	.byte			Gs5, v016
	.byte	W07
	.byte			As5, v008
	.byte	W06
	.byte	FINE

	@********************** Track  2 **********************@

	.global song152_2
song152_2:	@ 0x08188AED
	.byte	KEYSH	, 0
	.byte	BENDR	, 16
	.byte	PAN	, c_v
	.byte	VOL	, v127
	.byte		N09	, An2, v092
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W24
song152_2_1:
	.byte		N09	, An2, v092
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte	PEND
	.byte	PATT	
		.word	song152_2_1
	.byte	PATT	
		.word	song152_2_1
	.byte	PATT	
		.word	song152_2_1
	.byte		N09	, An2, v092
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W24
	.byte		N09	
	.byte	W09
	.byte	FINE

	.align 2
	.global song152
song152:	@ 0x08188B24
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song152_1		@ track
	.word	song152_2		@ track
