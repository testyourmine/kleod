	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song135_1
song135_1:	@ 0x0817B68C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 70
	.byte	VOICE	, 53
	.byte	PAN	, c_v
	.byte	VOL	, v097
	.byte		N04	, Fs4, v127
	.byte	W04
	.byte			Dn4
	.byte	W04
	.byte			An3
	.byte	W04
	.byte		N02	, Gs4
	.byte	W02
	.byte		N03	, An4, v092
	.byte	W03
	.byte			Bn4, v127
	.byte	W03
	.byte			An4, v092
	.byte	W03
	.byte			Bn4, v127
	.byte	W03
	.byte			An4, v092
	.byte	W03
	.byte			Bn4, v127
	.byte	W03
	.byte		N14	, An4, v108
	.byte	W14
	.byte	FINE

	.align 2
	.global song135
song135:	@ 0x0817B6BC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	11		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song135_1		@ track
