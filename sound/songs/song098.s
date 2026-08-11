	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song098_1
song098_1:	@ 0x08176B98
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 28
	.byte	PAN	, c_v
	.byte	VOL	, v075
	.byte		N03	, Cn4, v127
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Cn4, v088
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			An4
	.byte	W03
	.byte			Cn4, v040
	.byte	W03
	.byte			Dn4
	.byte	W03
	.byte			An4
	.byte	W03
	.byte	FINE

	.align 2
	.global song098
song098:	@ 0x08176BBC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song098_1		@ track
