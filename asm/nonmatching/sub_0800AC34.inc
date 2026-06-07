
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0800ACBC @ =gUnk_03005220
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _0800AC50
	ldr r2, _0800ACC0 @ =gUnk_03002920
	ldrb r1, [r2, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
_0800AC50:
	ldr r0, _0800ACC4 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800AD18
	ldr r0, _0800ACC8 @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AD18
	adds r0, r3, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AD18
	ldr r0, _0800ACCC @ =gUnk_03005400
	ldrb r1, [r0, #0xc]
	adds r6, r0, #0
	cmp r1, #0
	beq _0800AD18
	movs r2, #0
	ldr r4, _0800ACD0 @ =gUnk_03003510
	ldr r3, _0800ACD4 @ =gUnk_03004C20
	ldr r5, _0800ACD8 @ =gUnk_030034BC
	ldr r7, _0800ACDC @ =gUnk_03003410
	ldr r0, _0800ACE0 @ =sub_08039D8C
	mov ip, r0
	ldr r1, _0800ACE4 @ =sub_0800C108
	mov r8, r1
	adds r1, r4, #0
_0800AC8C:
	ldr r0, [r1]
	str r0, [r1, #0x50]
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	bls _0800AC8C
	adds r0, r4, #0
	adds r0, #0x78
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	strb r0, [r1]
	ldrb r0, [r3, #0xd]
	cmp r0, #5
	bne _0800ACE8
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	beq _0800ACB8
	cmp r0, #7
	beq _0800ACB8
	cmp r0, #9
	bne _0800ACE8
_0800ACB8:
	movs r0, #1
	b _0800ACEA
	.align 2, 0
_0800ACBC: .4byte gUnk_03005220
_0800ACC0: .4byte gUnk_03002920
_0800ACC4: .4byte gNewKeys
_0800ACC8: .4byte gUnk_030034E4
_0800ACCC: .4byte gUnk_03005400
_0800ACD0: .4byte gUnk_03003510
_0800ACD4: .4byte gUnk_03004C20
_0800ACD8: .4byte gUnk_030034BC
_0800ACDC: .4byte gUnk_03003410
_0800ACE0: .4byte sub_08039D8C
_0800ACE4: .4byte sub_0800C108
_0800ACE8:
	movs r0, #0
_0800ACEA:
	strb r0, [r5]
	movs r3, #0
	movs r1, #1
	strb r1, [r7, #4]
	mov r7, ip
	str r7, [r4, #0x28]
	mov r0, r8
	str r0, [r4, #0x2c]
	str r1, [r4, #0x30]
	adds r2, r4, #0
	adds r2, #0x78
	ldrb r0, [r2]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	str r3, [r0]
	adds r5, r4, #0
	adds r5, #0x79
	movs r0, #3
	strb r0, [r5]
	strb r1, [r2]
	str r3, [r4]
	b _0800B39C
_0800AD18:
	bl sub_08025BA4
	movs r6, #0
	b _0800B354
_0800AD20:
	ldr r1, _0800ADB0 @ =gUnk_03002920
	lsls r2, r6, #3
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0x11]
	adds r7, r1, #0
	adds r5, r2, #0
	cmp r0, #7
	bne _0800AD5E
	ldrb r0, [r3, #0xf]
	cmp r0, #0x1c
	bne _0800AD6E
	ldrb r4, [r3, #8]
	cmp r4, #0
	bne _0800AD5E
	ldr r2, _0800ADB4 @ =gUnk_03005400
	ldrh r1, [r2, #2]
	ldr r0, _0800ADB8 @ =0x00000E0F
	cmp r1, r0
	bhi _0800AD4E
	adds r0, r1, #1
	strh r0, [r2, #2]
_0800AD4E:
	ldrh r1, [r2, #2]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _0800AD5E
	movs r0, #0x19
	strb r0, [r3, #0xf]
	strh r4, [r2, #2]
_0800AD5E:
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #0xf]
	adds r4, r6, #1
	cmp r0, #0x1c
	bne _0800AD6E
	b _0800B352
_0800AD6E:
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrb r0, [r3, #0x11]
	adds r4, r6, #1
	cmp r0, #0
	bne _0800AD7E
	b _0800B352
_0800AD7E:
	ldrb r0, [r3, #0xc]
	movs r1, #0xc
	ands r1, r0
	ldrb r2, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	ldrb r1, [r3, #0xe]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #0xe]
	ldrb r0, [r3, #0x11]
	subs r0, #7
	cmp r0, #0x71
	bls _0800ADA4
	b _0800B352
_0800ADA4:
	lsls r0, r0, #2
	ldr r1, _0800ADBC @ =_0800ADC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800ADB0: .4byte gUnk_03002920
_0800ADB4: .4byte gUnk_03005400
_0800ADB8: .4byte 0x00000E0F
_0800ADBC: .4byte _0800ADC0
_0800ADC0: @ jump table
	.4byte _0800AFC4 @ case 0
	.4byte _0800B352 @ case 1
	.4byte _0800B1A0 @ case 2
	.4byte _0800B1A0 @ case 3
	.4byte _0800AF88 @ case 4
	.4byte _0800B352 @ case 5
	.4byte _0800B352 @ case 6
	.4byte _0800B352 @ case 7
	.4byte _0800B352 @ case 8
	.4byte _0800AFEA @ case 9
	.4byte _0800B012 @ case 10
	.4byte _0800B01C @ case 11
	.4byte _0800B024 @ case 12
	.4byte _0800B02E @ case 13
	.4byte _0800B042 @ case 14
	.4byte _0800B038 @ case 15
	.4byte _0800B0A2 @ case 16
	.4byte _0800B0BA @ case 17
	.4byte _0800B0C4 @ case 18
	.4byte _0800B0CE @ case 19
	.4byte _0800B144 @ case 20
	.4byte _0800B0E2 @ case 21
	.4byte _0800B0D8 @ case 22
	.4byte _0800B108 @ case 23
	.4byte _0800B14C @ case 24
	.4byte _0800B348 @ case 25
	.4byte _0800B352 @ case 26
	.4byte _0800B18C @ case 27
	.4byte _0800B352 @ case 28
	.4byte _0800B352 @ case 29
	.4byte _0800B352 @ case 30
	.4byte _0800B352 @ case 31
	.4byte _0800B352 @ case 32
	.4byte _0800B352 @ case 33
	.4byte _0800B352 @ case 34
	.4byte _0800B352 @ case 35
	.4byte _0800B352 @ case 36
	.4byte _0800B352 @ case 37
	.4byte _0800B352 @ case 38
	.4byte _0800B352 @ case 39
	.4byte _0800B1AA @ case 40
	.4byte _0800B1AA @ case 41
	.4byte _0800B1AA @ case 42
	.4byte _0800B1AA @ case 43
	.4byte _0800B1AA @ case 44
	.4byte _0800B352 @ case 45
	.4byte _0800B352 @ case 46
	.4byte _0800B1B4 @ case 47
	.4byte _0800B352 @ case 48
	.4byte _0800B352 @ case 49
	.4byte _0800B352 @ case 50
	.4byte _0800B352 @ case 51
	.4byte _0800B352 @ case 52
	.4byte _0800B352 @ case 53
	.4byte _0800B352 @ case 54
	.4byte _0800B352 @ case 55
	.4byte _0800B352 @ case 56
	.4byte _0800B352 @ case 57
	.4byte _0800B352 @ case 58
	.4byte _0800B352 @ case 59
	.4byte _0800B352 @ case 60
	.4byte _0800B214 @ case 61
	.4byte _0800B214 @ case 62
	.4byte _0800B352 @ case 63
	.4byte _0800B352 @ case 64
	.4byte _0800B352 @ case 65
	.4byte _0800B352 @ case 66
	.4byte _0800B352 @ case 67
	.4byte _0800B352 @ case 68
	.4byte _0800B352 @ case 69
	.4byte _0800B352 @ case 70
	.4byte _0800B352 @ case 71
	.4byte _0800B352 @ case 72
	.4byte _0800B352 @ case 73
	.4byte _0800B352 @ case 74
	.4byte _0800B352 @ case 75
	.4byte _0800B352 @ case 76
	.4byte _0800B352 @ case 77
	.4byte _0800B352 @ case 78
	.4byte _0800B352 @ case 79
	.4byte _0800B352 @ case 80
	.4byte _0800B352 @ case 81
	.4byte _0800B352 @ case 82
	.4byte _0800B352 @ case 83
	.4byte _0800B352 @ case 84
	.4byte _0800B352 @ case 85
	.4byte _0800B352 @ case 86
	.4byte _0800B352 @ case 87
	.4byte _0800B352 @ case 88
	.4byte _0800B352 @ case 89
	.4byte _0800B352 @ case 90
	.4byte _0800B352 @ case 91
	.4byte _0800B352 @ case 92
	.4byte _0800B352 @ case 93
	.4byte _0800B352 @ case 94
	.4byte _0800B352 @ case 95
	.4byte _0800B352 @ case 96
	.4byte _0800B352 @ case 97
	.4byte _0800B352 @ case 98
	.4byte _0800B352 @ case 99
	.4byte _0800B352 @ case 100
	.4byte _0800B352 @ case 101
	.4byte _0800B352 @ case 102
	.4byte _0800B352 @ case 103
	.4byte _0800B352 @ case 104
	.4byte _0800B352 @ case 105
	.4byte _0800B352 @ case 106
	.4byte _0800B352 @ case 107
	.4byte _0800B352 @ case 108
	.4byte _0800B352 @ case 109
	.4byte _0800B352 @ case 110
	.4byte _0800AF88 @ case 111
	.4byte _0800AF88 @ case 112
	.4byte _0800AF88 @ case 113
_0800AF88:
	ldr r0, _0800AFBC @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	bne _0800AFB2
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrb r0, [r3, #0xf]
	cmp r0, #0x13
	bne _0800AFB2
	ldr r0, _0800AFC0 @ =gUnk_03005288
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
_0800AFB2:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08016EEC
	b _0800B350
	.align 2, 0
_0800AFBC: .4byte gUnk_03004C20
_0800AFC0: .4byte gUnk_03005288
_0800AFC4:
	subs r2, r5, r6
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r1, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F02C
	b _0800B350
_0800AFEA:
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r5, r0, r7
	ldrb r0, [r5, #0xf]
	adds r4, r6, #1
	cmp r0, #0
	bne _0800AFFA
	b _0800B352
_0800AFFA:
	cmp r0, #0x19
	beq _0800B000
	b _0800B352
_0800B000:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08025B78
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0x10]
	strb r1, [r5, #0xf]
	b _0800B352
_0800B012:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F128
	b _0800B350
_0800B01C:
	adds r0, r6, #0
	bl sub_0801F4D0
	b _0800B350
_0800B024:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801F648
	b _0800B350
_0800B02E:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801FADC
	b _0800B350
_0800B038:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801FFF0
	b _0800B350
_0800B042:
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrb r0, [r3, #0xe]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xe]
	ldrb r1, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r3, #0xd]
	ldr r2, _0800B090 @ =gUnk_03000830
	ldr r0, _0800B094 @ =gUnk_0300363C
	ldrb r1, [r0]
	movs r0, #0x12
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800B098
	strb r0, [r3, #0xf]
	movs r0, #1
	strb r0, [r3, #0x10]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	subs r0, #0x3c
	strh r0, [r3, #2]
	b _0800B350
	.align 2, 0
_0800B090: .4byte gUnk_03000830
_0800B094: .4byte gUnk_0300363C
_0800B098:
	movs r1, #0
	movs r0, #0x1a
	strb r0, [r3, #0xf]
	strb r1, [r3, #0x10]
	b _0800B350
_0800B0A2:
	subs r2, r5, r6
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_080202D4
	b _0800B350
_0800B0BA:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08021194
	b _0800B350
_0800B0C4:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08020FB8
	b _0800B350
_0800B0CE:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0802192C
	b _0800B350
_0800B0D8:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08021AD4
	b _0800B350
_0800B0E2:
	subs r2, r5, r6
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r1, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x14
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08022CA0
	b _0800B350
_0800B108:
	subs r2, r5, r6
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r1, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r3, _0800B140 @ =gUnk_03003590
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	ldrb r2, [r3, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1d]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08023988
	b _0800B350
	.align 2, 0
_0800B140: .4byte gUnk_03003590
_0800B144:
	adds r0, r6, #0
	bl sub_08021DAC
	b _0800B350
_0800B14C:
	cmp r6, #0x18
	ble _0800B166
	subs r2, r5, r6
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r1, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0xd]
	b _0800B182
_0800B166:
	subs r3, r5, r6
	lsls r3, r3, #2
	adds r3, r3, r7
	adds r1, r6, #0
	subs r1, #0xf
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
_0800B182:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08023BC0
	b _0800B350
_0800B18C:
	ldr r1, _0800B19C @ =gUnk_030034A8
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	bl _call_via_r1
	b _0800B350
	.align 2, 0
_0800B19C: .4byte gUnk_030034A8
_0800B1A0:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801D0D8
	b _0800B350
_0800B1AA:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801B688
	b _0800B350
_0800B1B4:
	subs r3, r5, r6
	lsls r3, r3, #2
	adds r3, r3, r7
	adds r1, r6, #0
	subs r1, #0x13
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	ldr r1, _0800B20C @ =gUnk_03003590
	adds r0, r6, #0
	subs r0, #0x16
	lsls r0, r0, #3
	adds r4, r0, r1
	movs r5, #0
	movs r0, #0x40
	strh r0, [r4, #2]
	strh r0, [r4]
	ldrb r1, [r3, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	ldrb r2, [r4, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #5]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B210
	movs r0, #0x80
	strb r0, [r4, #4]
	b _0800B350
	.align 2, 0
_0800B20C: .4byte gUnk_03003590
_0800B210:
	strb r5, [r4, #4]
	b _0800B350
_0800B214:
	ldr r4, _0800B254 @ =gUnk_080E2A84
	ldr r0, _0800B258 @ =gUnk_03004C20
	mov ip, r0
	ldrb r1, [r0, #0xd]
	subs r1, #1
	lsls r1, r1, #3
	adds r0, r1, r4
	ldrb r0, [r0]
	subs r0, r6, r0
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r7
	ldrb r0, [r1, #0x11]
	cmp r0, #0x22
	beq _0800B240
	ldrb r0, [r1, #0xf]
	cmp r0, #0x1c
	beq _0800B246
_0800B240:
	ldrb r0, [r1, #0xf]
	cmp r0, #0x19
	bne _0800B25C
_0800B246:
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	b _0800B350
	.align 2, 0
_0800B254: .4byte gUnk_080E2A84
_0800B258: .4byte gUnk_03004C20
_0800B25C:
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r2, r0, r7
	ldrh r3, [r1]
	strh r3, [r2]
	mov r0, ip
	ldrb r1, [r0, #0xd]
	subs r1, #1
	lsls r1, r1, #3
	adds r0, r1, r4
	ldrb r0, [r0]
	subs r0, r6, r0
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r0, #2]
	ldr r0, _0800B2BC @ =0x0000FFF8
	ands r0, r1
	strh r0, [r2, #2]
	mov r0, ip
	ldrb r1, [r0, #0xd]
	subs r1, #1
	lsls r1, r1, #3
	adds r0, r1, r4
	ldrb r0, [r0]
	subs r0, r6, r0
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r7
	ldrb r0, [r1, #0x11]
	cmp r0, #0x22
	bne _0800B2F6
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0800B2C8
	subs r0, r3, #6
	b _0800B2CC
	.align 2, 0
_0800B2BC: .4byte 0x0000FFF8
_0800B2C0:
	adds r0, r2, #0
	adds r0, #0xa
	strh r0, [r3, #2]
	b _0800B352
_0800B2C8:
	adds r0, r3, #0
	adds r0, #9
_0800B2CC:
	strh r0, [r2]
	subs r2, r5, r6
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r1, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x14
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r1, _0800B334 @ =gUnk_03003590
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	movs r0, #0x80
	strh r0, [r1, #0x12]
_0800B2F6:
	ldr r1, _0800B338 @ =gUnk_03004654
	mov ip, r1
	adds r4, r6, #1
	ldr r7, _0800B33C @ =gUnk_03004790
	mov r8, r7
	ldr r0, _0800B340 @ =gUnk_03002920
	subs r1, r5, r6
	lsls r1, r1, #2
	adds r3, r1, r0
	ldrh r0, [r3]
	lsrs r5, r0, #3
	ldr r6, _0800B344 @ =gUnk_03003478
_0800B30E:
	ldrh r2, [r3, #2]
	lsrs r1, r2, #3
	ldrh r0, [r6]
	muls r0, r1, r0
	mov r7, r8
	ldr r1, [r7, #0x14]
	adds r0, r5, r0
	adds r1, r1, r0
	mov r7, ip
	ldr r0, [r7]
	ldrb r0, [r0, #0x1b]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0800B2C0
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r3, #2]
	b _0800B30E
	.align 2, 0
_0800B334: .4byte gUnk_03003590
_0800B338: .4byte gUnk_03004654
_0800B33C: .4byte gUnk_03004790
_0800B340: .4byte gUnk_03002920
_0800B344: .4byte gUnk_03003478
_0800B348:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CE14
_0800B350:
	adds r4, r6, #1
_0800B352:
	adds r6, r4, #0
_0800B354:
	ldr r0, _0800B3A8 @ =gUnk_03005428
	ldrb r0, [r0]
	cmp r6, r0
	bge _0800B35E
	b _0800AD20
_0800B35E:
	ldr r0, _0800B3AC @ =gUnk_03005400
	ldrb r1, [r0, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800B37E
	ldr r0, _0800B3B0 @ =gUnk_03003510
	ldr r1, [r0, #0x10]
	ldr r0, _0800B3B4 @ =sub_08024C34
	cmp r1, r0
	beq _0800B37E
	ldr r0, _0800B3B8 @ =sub_08024718
	cmp r1, r0
	beq _0800B37E
	bl sub_0800D188
_0800B37E:
	ldr r4, _0800B3BC @ =gUnk_03005220
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B38E
	bl sub_08025BA4
_0800B38E:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B39C
	bl sub_08014318
_0800B39C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B3A8: .4byte gUnk_03005428
_0800B3AC: .4byte gUnk_03005400
_0800B3B0: .4byte gUnk_03003510
_0800B3B4: .4byte sub_08024C34
_0800B3B8: .4byte sub_08024718
_0800B3BC: .4byte gUnk_03005220
