	.include "sound/MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song090_1
song090_1:	@ 0x081769AC
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 36
	.byte	BENDR	, 12
	.byte	PAN	, c_v
	.byte	VOL	, v107
	.byte		N01	, Cn3, v100
	.byte	W02
	.byte		N01	
	.byte	W01
	.byte	BEND	, c_v
	.byte	W01
	.byte		N01	
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		N01	
	.byte	W01
	.byte	BEND	, c_v+2
	.byte	W01
	.byte		c_v+3
	.byte		N01	
	.byte	W02
	.byte	BEND	, c_v+4
	.byte		N01	
	.byte	W02
	.byte	BEND	, c_v+6
	.byte		N01	
	.byte	W02
	.byte	BEND	, c_v+6
	.byte		N01	
	.byte	W02
	.byte	BEND	, c_v+7
	.byte		N01	
	.byte	W02
	.byte		N01	
	.byte	W01
	.byte	BEND	, c_v+10
	.byte	W01
	.byte		N01	
	.byte	W01
	.byte	BEND	, c_v+12
	.byte	W01
	.byte		N01	
	.byte	W01
	.byte	BEND	, c_v+15
	.byte	W01
	.byte		c_v+16
	.byte		N01	
	.byte	W02
	.byte	BEND	, c_v+19
	.byte		N01	
	.byte	W01
	.byte	BEND	, c_v+22
	.byte	W02
	.byte		c_v
	.byte	FINE

	.align 2
	.global song090
song090:	@ 0x081769FC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	10		@ priority
	.byte	0		@ reverb

	.word	voicegroup000		@ voicegroup/tone

	.word	song090_1		@ track
