	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08003D58
sub_08003D58: @ 0x08003D58
	push {lr}
	ldr r0, _08003D7C @ =gUnk_03002920
	movs r1, #0x63
	movs r2, #0
_08003D60:
	movs r3, #0x1c
_08003D62:
	adds r0, #4
	subs r3, #4
	str r2, [r0]
	cmp r3, #0
	bne _08003D62
	subs r1, #1
	cmp r1, #0
	bne _08003D60
	bl sub_0800A468
	pop {r0}
	bx r0
	.align 2, 0
_08003D7C: .4byte gUnk_03002920

	thumb_func_start sub_08003D80
sub_08003D80: @ 0x08003D80
	ldr r0, _08003D9C @ =0x0300293C
	movs r1, #0x62
	movs r2, #0
_08003D86:
	movs r3, #0x1c
_08003D88:
	adds r0, #4
	subs r3, #4
	str r2, [r0]
	cmp r3, #0
	bne _08003D88
	subs r1, #1
	cmp r1, #0
	bne _08003D86
	bx lr
	.align 2, 0
_08003D9C: .4byte 0x0300293C

	thumb_func_start sub_08003DA0
sub_08003DA0: @ 0x08003DA0
	ldr r0, _08003DBC @ =0x03002A8C
	movs r1, #0x56
	movs r2, #0
_08003DA6:
	movs r3, #0x1c
_08003DA8:
	adds r0, #4
	subs r3, #4
	str r2, [r0]
	cmp r3, #0
	bne _08003DA8
	subs r1, #1
	cmp r1, #0
	bne _08003DA6
	bx lr
	.align 2, 0
_08003DBC: .4byte 0x03002A8C

	thumb_func_start sub_08003DC0
sub_08003DC0: @ 0x08003DC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sl, r0
	ldr r4, [sp, #0x4c]
	ldr r7, [sp, #0x50]
	ldr r6, [sp, #0x54]
	ldr r0, [sp, #0x58]
	mov r8, r0
	ldr r0, [sp, #0x5c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	lsls r1, r7, #0x18
	lsrs r5, r1, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov ip, r6
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	cmp r0, #0x48
	bls _08003E34
	ldr r0, _08003E30 @ =gUnk_03002920
	mov r4, sl
	lsls r2, r4, #3
	subs r1, r2, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r6, sp
	ldrh r6, [r6]
	strh r6, [r1, #4]
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r1, #6]
	str r2, [sp, #0x28]
	b _08003E66
	.align 2, 0
_08003E30: .4byte gUnk_03002920
_08003E34:
	ldr r3, _08003EA0 @ =gUnk_03002920
	mov r6, sl
	lsls r4, r6, #3
	subs r1, r4, r6
	lsls r1, r1, #2
	adds r1, r1, r3
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	mov r2, sp
	ldrh r2, [r2, #4]
	strh r2, [r1, #2]
	ldr r2, _08003EA4 @ =gUnk_03003430
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r0, [r0]
	ldr r6, [sp]
	subs r0, r6, r0
	strh r0, [r1, #4]
	adds r2, #0x42
	ldrh r0, [r2]
	ldr r2, [sp, #4]
	subs r0, r2, r0
	strh r0, [r1, #6]
	str r4, [sp, #0x28]
_08003E66:
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	ldr r6, _08003EA0 @ =gUnk_03002920
	adds r1, r1, r6
	movs r0, #0
	mov r2, sb
	strb r2, [r1, #0xa]
	strb r0, [r1, #0x10]
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r1, #8]
	mov r4, sp
	ldrb r4, [r4, #0x10]
	strb r4, [r1, #0xf]
	ldrb r2, [r1, #0xc]
	subs r0, #0xd
	ands r0, r2
	strb r0, [r1, #0xc]
	adds r0, r7, #0
	subs r0, #0x2f
	cmp r0, #0x12
	bhi _08003F7C
	lsls r0, r0, #2
	ldr r1, _08003EA8 @ =_08003EAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003EA0: .4byte gUnk_03002920
_08003EA4: .4byte gUnk_03003430
_08003EA8: .4byte _08003EAC
_08003EAC: @ jump table
	.4byte _08003F54 @ case 0
	.4byte _08003F54 @ case 1
	.4byte _08003F54 @ case 2
	.4byte _08003F54 @ case 3
	.4byte _08003F54 @ case 4
	.4byte _08003F7C @ case 5
	.4byte _08003F7C @ case 6
	.4byte _08003F7C @ case 7
	.4byte _08003F24 @ case 8
	.4byte _08003EF8 @ case 9
	.4byte _08003EF8 @ case 10
	.4byte _08003EF8 @ case 11
	.4byte _08003F7C @ case 12
	.4byte _08003F34 @ case 13
	.4byte _08003F54 @ case 14
	.4byte _08003F54 @ case 15
	.4byte _08003F7C @ case 16
	.4byte _08003F7C @ case 17
	.4byte _08003F54 @ case 18
_08003EF8:
	ldr r6, [sp, #0x28]
	mov r0, sl
	subs r3, r6, r0
	lsls r3, r3, #2
	ldr r1, _08003F20 @ =gUnk_03002920
	adds r3, r3, r1
	ldrb r2, [r3, #0xc]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #2
	orrs r0, r2
	strb r0, [r3, #0xc]
	ldrb r0, [r3, #0xd]
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r3, #0xd]
	b _08003FA2
	.align 2, 0
_08003F20: .4byte gUnk_03002920
_08003F24:
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _08003F50 @ =gUnk_03002920
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #9]
_08003F34:
	ldr r6, [sp, #0x28]
	mov r0, sl
	subs r2, r6, r0
	lsls r2, r2, #2
	ldr r1, _08003F50 @ =gUnk_03002920
	adds r2, r2, r1
	ldrb r1, [r2, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xc]
	b _08003FA2
	.align 2, 0
_08003F50: .4byte gUnk_03002920
_08003F54:
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r4, _08003F78 @ =gUnk_03002920
	adds r1, r1, r4
	ldrb r2, [r1, #0xc]
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0xc]
	ldrb r0, [r1, #0xd]
	ands r3, r0
	strb r3, [r1, #0xd]
	b _08003FA2
	.align 2, 0
_08003F78: .4byte gUnk_03002920
_08003F7C:
	ldr r6, [sp, #0x28]
	mov r0, sl
	subs r1, r6, r0
	lsls r1, r1, #2
	ldr r2, _08003FCC @ =gUnk_03002920
	adds r1, r1, r2
	movs r0, #3
	adds r3, r5, #0
	ands r3, r0
	ldrb r4, [r1, #0xc]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r3
	strb r0, [r1, #0xc]
	ldrb r0, [r1, #0xd]
	ands r2, r0
	strb r2, [r1, #0xd]
_08003FA2:
	subs r0, r7, #1
	cmp r0, #0x7c
	bls _08003FAC
	bl _08004E48
_08003FAC:
	lsls r0, r0, #2
	ldr r1, _08003FD0 @ =_08003FD4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r3, #0x25
	rsbs r3, r3, #0
	adds r3, r3, r7
	mov sb, r3
	movs r4, #0xb
	rsbs r4, r4, #0
	adds r4, r4, r7
	mov r8, r4
	subs r5, r7, #5
	subs r6, r7, #6
	mov pc, r0
	.align 2, 0
_08003FCC: .4byte gUnk_03002920
_08003FD0: .4byte _08003FD4
_08003FD4: @ jump table
	.4byte _08004C4C @ case 0
	.4byte _08004C4C @ case 1
	.4byte _08004E18 @ case 2
	.4byte _08004C4C @ case 3
	.4byte _08004C84 @ case 4
	.4byte _08004A4C @ case 5
	.4byte _08004D90 @ case 6
	.4byte _08004A4C @ case 7
	.4byte _08004B9C @ case 8
	.4byte _08004C0E @ case 9
	.4byte _08004E48 @ case 10
	.4byte _08004E48 @ case 11
	.4byte _08004E48 @ case 12
	.4byte _08004E48 @ case 13
	.4byte _08004E48 @ case 14
	.4byte _08004E48 @ case 15
	.4byte _08004E48 @ case 16
	.4byte _08004E48 @ case 17
	.4byte _08004E48 @ case 18
	.4byte _08004E48 @ case 19
	.4byte _08004E48 @ case 20
	.4byte _08004E48 @ case 21
	.4byte _08004E48 @ case 22
	.4byte _08004E48 @ case 23
	.4byte _08004E48 @ case 24
	.4byte _08004E48 @ case 25
	.4byte _08004E48 @ case 26
	.4byte _08004E48 @ case 27
	.4byte _08004E48 @ case 28
	.4byte _08004E48 @ case 29
	.4byte _08004E48 @ case 30
	.4byte _08004E48 @ case 31
	.4byte _08004E48 @ case 32
	.4byte _08004E48 @ case 33
	.4byte _08004E48 @ case 34
	.4byte _08004E48 @ case 35
	.4byte _08004E48 @ case 36
	.4byte _08004B18 @ case 37
	.4byte _080043B8 @ case 38
	.4byte _080043B8 @ case 39
	.4byte _080043B8 @ case 40
	.4byte _080043B8 @ case 41
	.4byte _08004E48 @ case 42
	.4byte _08004D1C @ case 43
	.4byte _08004D28 @ case 44
	.4byte _08004CD4 @ case 45
	.4byte _080043F4 @ case 46
	.4byte _080043F4 @ case 47
	.4byte _080043F4 @ case 48
	.4byte _080043F4 @ case 49
	.4byte _080043F4 @ case 50
	.4byte _08004E48 @ case 51
	.4byte _08004528 @ case 52
	.4byte _080044B8 @ case 53
	.4byte _08004E48 @ case 54
	.4byte _08004308 @ case 55
	.4byte _08004E48 @ case 56
	.4byte _08004348 @ case 57
	.4byte _08004E48 @ case 58
	.4byte _08004364 @ case 59
	.4byte _08004758 @ case 60
	.4byte _08004E48 @ case 61
	.4byte _08004E48 @ case 62
	.4byte _08004E48 @ case 63
	.4byte _08004E48 @ case 64
	.4byte _08004434 @ case 65
	.4byte _08004E48 @ case 66
	.4byte _08004E48 @ case 67
	.4byte _08004E48 @ case 68
	.4byte _08004E48 @ case 69
	.4byte _08004E48 @ case 70
	.4byte _08004E48 @ case 71
	.4byte _08004E48 @ case 72
	.4byte _08004E48 @ case 73
	.4byte _08004E48 @ case 74
	.4byte _08004E48 @ case 75
	.4byte _08004E48 @ case 76
	.4byte _08004E48 @ case 77
	.4byte _08004E48 @ case 78
	.4byte _08004E48 @ case 79
	.4byte _08004E48 @ case 80
	.4byte _08004E48 @ case 81
	.4byte _08004E48 @ case 82
	.4byte _08004E48 @ case 83
	.4byte _08004E48 @ case 84
	.4byte _08004E48 @ case 85
	.4byte _08004E48 @ case 86
	.4byte _08004E48 @ case 87
	.4byte _08004E48 @ case 88
	.4byte _08004E48 @ case 89
	.4byte _08004E48 @ case 90
	.4byte _08004E48 @ case 91
	.4byte _08004E48 @ case 92
	.4byte _08004E48 @ case 93
	.4byte _08004E48 @ case 94
	.4byte _08004E48 @ case 95
	.4byte _08004E48 @ case 96
	.4byte _08004E48 @ case 97
	.4byte _08004E48 @ case 98
	.4byte _08004E48 @ case 99
	.4byte _08004E48 @ case 100
	.4byte _08004E48 @ case 101
	.4byte _08004E48 @ case 102
	.4byte _08004E48 @ case 103
	.4byte _08004E48 @ case 104
	.4byte _08004E48 @ case 105
	.4byte _08004E48 @ case 106
	.4byte _08004E48 @ case 107
	.4byte _08004E48 @ case 108
	.4byte _08004E48 @ case 109
	.4byte _08004E48 @ case 110
	.4byte _080046BC @ case 111
	.4byte _08004298 @ case 112
	.4byte _080041C8 @ case 113
	.4byte _08004E48 @ case 114
	.4byte _08004500 @ case 115
	.4byte _080044B8 @ case 116
	.4byte _080049A8 @ case 117
	.4byte _080049A8 @ case 118
	.4byte _08004A0C @ case 119
	.4byte _080049A8 @ case 120
	.4byte _08004A0C @ case 121
	.4byte _080049A0 @ case 122
	.4byte _080049A0 @ case 123
	.4byte _08004A04 @ case 124
_080041C8:
	ldr r6, [sp, #0x28]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	ldr r2, _08004280 @ =gUnk_03002920
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0, #0xc]
	movs r3, #0xf
	ands r3, r0
	str r3, [sp, #0x14]
	mov r4, ip
	strb r3, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #8]
	mov r6, sp
	ldrb r6, [r6, #8]
	strb r6, [r4, #9]
	subs r0, #0x25
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	subs r5, r7, #5
	subs r6, r7, #6
	ldr r2, [sp, #8]
	cmp r2, #1
	beq _08004208
	bl _08004E7C
_08004208:
	ldr r0, _08004284 @ =gUnk_03005220
	ldr r3, [r0]
	lsls r3, r3, #9
	lsrs r3, r3, #0x18
	ldr r4, _08004288 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r2, sl
	subs r2, #0xc
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r2, _0800428C @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _08004290 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r4, _08004294 @ =0x080E2B64
	adds r1, r1, r4
	ldrb r1, [r1, #5]
	asrs r3, r1
	ldr r0, [sp, #8]
	ands r3, r0
	cmp r3, #0
	bne _0800424A
	bl _08004E7C
_0800424A:
	movs r3, #0x10
	ldr r0, [sp, #0x14]
	orrs r0, r3
	mov r1, ip
	strb r0, [r1, #0xc]
	mov r0, sl
	subs r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08004280 @ =gUnk_03002920
	adds r1, r1, r2
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0xc]
	mov r0, sl
	subs r0, #2
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _08004280 @ =gUnk_03002920
	adds r1, r1, r4
	bl _08004C26
	.align 2, 0
_08004280: .4byte gUnk_03002920
_08004284: .4byte gUnk_03005220
_08004288: .4byte gUnk_03004C20
_0800428C: .4byte 0x00001130
_08004290: .4byte 0x00008980
_08004294: .4byte 0x080E2B64
_08004298:
	ldr r6, [sp, #0x10]
	cmp r6, #0
	bne _080042C4
	ldr r0, _080042BC @ =gUnk_03005220
	adds r0, #0x58
	ldrb r0, [r0]
	ldr r1, [sp, #8]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080042C4
	mov ip, r1
	ldr r0, _080042C0 @ =0x03004C00
	mov r2, ip
	strb r2, [r0]
	b _080042CA
	.align 2, 0
_080042BC: .4byte gUnk_03005220
_080042C0: .4byte 0x03004C00
_080042C4:
	ldr r1, _08004300 @ =0x03004C00
	movs r0, #0
	strb r0, [r1]
_080042CA:
	ldr r0, _08004304 @ =gUnk_03002920
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r6, sp
	ldrb r6, [r6, #8]
	strb r6, [r1, #9]
	mov r0, ip
	lsls r3, r0, #4
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0xc]
	movs r1, #0x25
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0xb
	rsbs r2, r2, #0
	adds r2, r2, r7
	mov r8, r2
	bl _08004E78
	.align 2, 0
_08004300: .4byte 0x03004C00
_08004304: .4byte gUnk_03002920
_08004308:
	ldr r0, _08004340 @ =0x03004C00
	ldrb r0, [r0]
	cmp r0, #0
	beq _08004326
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	ldr r6, _08004344 @ =gUnk_03002920
	adds r1, r1, r6
	ldrh r0, [r1, #2]
	adds r0, #0x1a
	strh r0, [r1, #2]
	movs r0, #1
	mov ip, r0
_08004326:
	ldr r0, _08004344 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r4, ip
	lsls r3, r4, #4
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	bl _08004E62
	.align 2, 0
_08004340: .4byte 0x03004C00
_08004344: .4byte gUnk_03002920
_08004348:
	ldr r0, _08004360 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r4, ip
	lsls r3, r4, #4
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	bl _08004E62
	.align 2, 0
_08004360: .4byte gUnk_03002920
_08004364:
	ldr r0, _080043B0 @ =gUnk_03005220
	ldr r0, [r0]
	lsls r0, r0, #9
	lsrs r0, r0, #0x18
	mov r1, ip
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800438E
	ldr r2, [sp, #8]
	cmp r2, #0xff
	bne _0800438E
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r6, _080043B4 @ =gUnk_03002920
	adds r0, r0, r6
	movs r1, #0x1c
	strb r1, [r0, #0xf]
_0800438E:
	ldr r0, _080043B4 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #8]
	mov r4, sp
	ldrb r4, [r4, #8]
	strb r4, [r1, #9]
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	bl _08004E66
	.align 2, 0
_080043B0: .4byte gUnk_03005220
_080043B4: .4byte gUnk_03002920
_080043B8:
	ldr r0, _080043F0 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #8]
	mov r4, sp
	ldrb r4, [r4, #8]
	strb r4, [r1, #9]
	mov r6, ip
	lsls r3, r6, #4
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0xc]
	movs r0, #0x25
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	bl _08004E78
	.align 2, 0
_080043F0: .4byte gUnk_03002920
_080043F4:
	ldr r1, _08004430 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r3, r0, r1
	mov r4, ip
	lsls r2, r4, #4
	ldrb r1, [r3, #0xc]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0xc]
	movs r6, #0x25
	rsbs r6, r6, #0
	adds r6, r6, r7
	mov sb, r6
	movs r0, #0xb
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov r8, r0
	subs r5, r7, #5
	subs r6, r7, #6
	cmp r4, #0
	beq _0800442A
	bl _08004E7C
_0800442A:
	strb r4, [r3, #8]
	bl _08004E7C
	.align 2, 0
_08004430: .4byte gUnk_03002920
_08004434:
	ldr r0, _080044A8 @ =gUnk_03002920
	ldr r1, [sp, #0x28]
	mov r2, sl
	subs r3, r1, r2
	lsls r3, r3, #2
	adds r3, r3, r0
	ldrb r0, [r3, #0xe]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xe]
	ldr r4, _080044AC @ =0x03005288
	ldrb r1, [r4]
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	ldr r2, _080044B0 @ =0x03004680
	ldrb r0, [r4]
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r6, _080044B4 @ =gSineTable
	adds r1, r6, #0
	adds r1, #0x80
	ldrh r1, [r1]
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrb r0, [r4]
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r6]
	strh r1, [r0, #4]
	ldrb r0, [r4]
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	rsbs r1, r1, #0
	strh r1, [r0, #2]
	movs r0, #3
	mov r4, ip
	ands r4, r0
	lsls r2, r4, #2
	ldrb r1, [r3, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0xc]
	bl _08004E68
	.align 2, 0
_080044A8: .4byte gUnk_03002920
_080044AC: .4byte 0x03005288
_080044B0: .4byte 0x03004680
_080044B4: .4byte gSineTable
_080044B8:
	ldr r1, _080044FC @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r2, r0, r1
	mov r4, ip
	lsls r1, r4, #4
	ldrb r0, [r2, #0xc]
	movs r4, #0xf
	ands r4, r0
	orrs r4, r1
	strb r4, [r2, #0xc]
	movs r6, #0x25
	rsbs r6, r6, #0
	adds r6, r6, r7
	mov sb, r6
	movs r0, #0xb
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov r8, r0
	subs r5, r7, #5
	subs r6, r7, #6
	mov r1, ip
	cmp r1, #3
	bne _080044F0
	bl _08004E7C
_080044F0:
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0xd
	rsbs r0, r0, #0
	b _080049F2
	.align 2, 0
_080044FC: .4byte gUnk_03002920
_08004500:
	ldr r0, _08004524 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #9]
	movs r4, #0x25
	rsbs r4, r4, #0
	adds r4, r4, r7
	mov sb, r4
	movs r6, #0xb
	rsbs r6, r6, #0
	adds r6, r6, r7
	mov r8, r6
	bl _08004E78
	.align 2, 0
_08004524: .4byte gUnk_03002920
_08004528:
	movs r0, #0x25
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	subs r5, r7, #5
	subs r6, r7, #6
	ldr r2, [sp, #0x10]
	cmp r2, #0x1c
	bne _08004546
	bl _08004E7C
_08004546:
	ldr r0, _080045A8 @ =gUnk_03005220
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	mov r3, ip
	eors r3, r0
	mov ip, r3
	cmp r3, #1
	bne _080045EC
	ldr r0, _080045AC @ =0x030047B8
	ldrb r5, [r0]
	cmp r5, #0
	bne _080045BC
	mov r4, sl
	strb r4, [r0]
	ldr r6, [sp, #0x28]
	mov r0, sl
	subs r2, r6, r0
	lsls r2, r2, #2
	ldr r1, _080045B0 @ =gUnk_03002920
	adds r2, r2, r1
	ldr r4, _080045B4 @ =0x03005288
	ldrb r1, [r4]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r2, _080045B8 @ =0x03004680
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r2
	strh r5, [r0, #4]
	strh r5, [r0, #2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08004684
	.align 2, 0
_080045A8: .4byte gUnk_03005220
_080045AC: .4byte 0x030047B8
_080045B0: .4byte gUnk_03002920
_080045B4: .4byte 0x03005288
_080045B8: .4byte 0x03004680
_080045BC:
	ldr r2, [sp, #0x28]
	mov r4, sl
	subs r3, r2, r4
	lsls r3, r3, #2
	ldr r6, _080045E8 @ =gUnk_03002920
	adds r3, r3, r6
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #0xd]
	movs r1, #0x3c
	ands r1, r0
	ldrb r2, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	b _08004684
	.align 2, 0
_080045E8: .4byte gUnk_03002920
_080045EC:
	ldr r0, _0800463C @ =0x03005470
	ldrb r5, [r0]
	cmp r5, #0
	bne _0800464C
	mov r1, sl
	strb r1, [r0]
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r2, r3, r4
	lsls r2, r2, #2
	ldr r6, _08004640 @ =gUnk_03002920
	adds r2, r2, r6
	ldr r4, _08004644 @ =0x03005288
	ldrb r1, [r4]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r2, _08004648 @ =0x03004680
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r2
	strh r5, [r0, #4]
	strh r5, [r0, #2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08004674
	.align 2, 0
_0800463C: .4byte 0x03005470
_08004640: .4byte gUnk_03002920
_08004644: .4byte 0x03005288
_08004648: .4byte 0x03004680
_0800464C:
	ldr r1, [sp, #0x28]
	mov r2, sl
	subs r3, r1, r2
	lsls r3, r3, #2
	ldr r4, _080046B8 @ =gUnk_03002920
	adds r3, r3, r4
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0xd]
	movs r1, #0x3c
	ands r1, r0
	ldrb r2, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
_08004674:
	ldr r6, [sp, #0x28]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	ldr r2, _080046B8 @ =gUnk_03002920
	adds r0, r0, r2
	movs r1, #0x1c
	strb r1, [r0, #0xf]
_08004684:
	ldr r0, _080046B8 @ =gUnk_03002920
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0xe]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0xe]
	mov r6, ip
	lsls r3, r6, #4
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0xc]
	movs r0, #0x25
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	b _08004E78
	.align 2, 0
_080046B8: .4byte gUnk_03002920
_080046BC:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bne _080046FC
	ldr r0, _080046F4 @ =gUnk_03005220
	adds r0, #0x2e
	ldrb r0, [r0]
	ldr r3, [sp, #8]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080046FC
	ldr r0, _080046F8 @ =gUnk_03002920
	ldr r4, [sp, #0x28]
	mov r6, sl
	subs r1, r4, r6
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x1c
	strb r0, [r1, #0xf]
	subs r0, #0x41
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	b _08004E78
	.align 2, 0
_080046F4: .4byte gUnk_03005220
_080046F8: .4byte gUnk_03002920
_080046FC:
	ldr r0, _0800474C @ =gUnk_03002920
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0xe]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r4, _08004750 @ =0x03005288
	ldrb r1, [r4]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r3, _08004754 @ =0x03004680
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r2, [r0, #4]
	strh r2, [r0, #2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _08004E68
	.align 2, 0
_0800474C: .4byte gUnk_03002920
_08004750: .4byte 0x03005288
_08004754: .4byte 0x03004680
_08004758:
	ldr r1, [sp, #0x28]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08004884 @ =gUnk_03002920
	adds r0, r0, r3
	mov sb, r0
	ldrb r0, [r0, #0xe]
	movs r1, #1
	orrs r0, r1
	mov r4, sb
	strb r0, [r4, #0xe]
	mov r6, ip
	lsls r2, r6, #4
	ldrb r1, [r4, #0xc]
	movs r6, #0xf
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0xc]
	movs r0, #0x80
	strb r0, [r4, #8]
	ldr r4, _08004888 @ =0x03003610
	ldr r3, _0800488C @ =0x03005298
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r2, r0, r4
	ldrb r0, [r2]
	cmp r0, #0
	beq _08004796
	b _0800489C
_08004796:
	mov r0, sl
	strb r0, [r2]
	ldr r2, _08004890 @ =0x03005288
	ldrb r1, [r2]
	ands r1, r6
	lsls r1, r1, #2
	mov r3, sb
	ldrb r2, [r3, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	ldr r6, _08004894 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r4, [r0, r1]
	str r4, [sp, #0x18]
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x18]
	bl MultiplyQ8
	ldr r3, _08004890 @ =0x03005288
	ldrb r1, [r3]
	lsls r1, r1, #3
	ldr r4, _08004898 @ =0x03004680
	adds r1, r1, r4
	strh r0, [r1]
	movs r0, #0
	ldrsh r4, [r6, r0]
	mov r0, r8
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r2, _08004890 @ =0x03005288
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldr r3, _08004898 @ =0x03004680
	adds r1, r1, r3
	strh r0, [r1, #2]
	ldrh r4, [r6]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r4, _08004890 @ =0x03005288
	ldrb r1, [r4]
	lsls r1, r1, #3
	ldr r6, _08004898 @ =0x03004680
	adds r1, r1, r6
	strh r0, [r1, #4]
	mov r1, sb
	ldrb r0, [r1, #8]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x18]
	bl MultiplyQ8
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	mov r2, sb
	ldrb r1, [r2, #8]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x1b
	ldrh r3, [r2, #2]
	adds r0, r0, r3
	strh r0, [r2, #2]
	mov r2, sl
	subs r2, #1
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r4, _08004884 @ =gUnk_03002920
	adds r0, r0, r4
	lsrs r1, r1, #0x1a
	ldrh r6, [r0, #2]
	adds r1, r1, r6
	strh r1, [r0, #2]
	movs r0, #0x25
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	b _08004E78
	.align 2, 0
_08004884: .4byte gUnk_03002920
_08004888: .4byte 0x03003610
_0800488C: .4byte 0x03005298
_08004890: .4byte 0x03005288
_08004894: .4byte gSineTable
_08004898: .4byte 0x03004680
_0800489C:
	adds r0, r1, #1
	strb r0, [r3]
	lsls r0, r1, #2
	adds r0, r0, r4
	mov r2, sl
	strb r2, [r0, #1]
	ldr r3, _08004990 @ =0x03005288
	ldrb r1, [r3]
	ands r1, r6
	lsls r1, r1, #2
	mov r4, sb
	ldrb r2, [r4, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xd]
	ldr r6, _08004994 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	str r1, [sp, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
	mov r0, r8
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	bl MultiplyQ8
	ldr r4, _08004990 @ =0x03005288
	ldrb r1, [r4]
	lsls r1, r1, #3
	ldr r2, _08004998 @ =0x03004680
	adds r1, r1, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r4, [r6, r3]
	mov r0, r8
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r4, _08004990 @ =0x03005288
	ldrb r1, [r4]
	lsls r1, r1, #3
	ldr r2, _08004998 @ =0x03004680
	adds r1, r1, r2
	strh r0, [r1, #2]
	ldrh r4, [r6]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r3, _08004990 @ =0x03005288
	ldrb r1, [r3]
	lsls r1, r1, #3
	ldr r4, _08004998 @ =0x03004680
	adds r1, r1, r4
	strh r0, [r1, #4]
	mov r6, sb
	ldrb r0, [r6, #8]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	bl MultiplyQ8
	ldr r2, _08004990 @ =0x03005288
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r4
	strh r0, [r1, #6]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r6, #8]
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x1b
	ldrh r3, [r6, #2]
	adds r0, r0, r3
	strh r0, [r6, #2]
	mov r2, sl
	subs r2, #1
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r4, _0800499C @ =gUnk_03002920
	adds r0, r0, r4
	lsrs r1, r1, #0x1a
	ldrh r6, [r0, #2]
	adds r1, r1, r6
	strh r1, [r0, #2]
	movs r0, #0x25
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	b _08004E78
	.align 2, 0
_08004990: .4byte 0x03005288
_08004994: .4byte gSineTable
_08004998: .4byte 0x03004680
_0800499C: .4byte gUnk_03002920
_080049A0:
	ldr r1, _080049FC @ =0x0300528C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080049A8:
	ldr r1, _08004A00 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r0, #0
	strb r0, [r2, #8]
	mov r4, sp
	ldrb r4, [r4, #8]
	strb r4, [r2, #9]
	movs r0, #1
	mov r6, ip
	ands r0, r6
	lsls r0, r0, #2
	ldrb r1, [r2, #0xc]
	movs r4, #0xd
	rsbs r4, r4, #0
	ands r4, r1
	orrs r4, r0
	strb r4, [r2, #0xc]
	movs r0, #0x25
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	subs r5, r7, #5
	subs r6, r7, #6
	cmp r7, #0x79
	beq _080049EC
	b _08004E7C
_080049EC:
	mov r3, ip
	lsls r1, r3, #4
	movs r0, #0xf
_080049F2:
	ands r4, r0
	orrs r4, r1
	strb r4, [r2, #0xc]
	b _08004E7C
	.align 2, 0
_080049FC: .4byte 0x0300528C
_08004A00: .4byte gUnk_03002920
_08004A04:
	ldr r1, _08004A44 @ =0x0300528C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08004A0C:
	ldr r0, _08004A48 @ =gUnk_03002920
	ldr r4, [sp, #0x28]
	mov r6, sl
	subs r1, r4, r6
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #8]
	mov r0, sp
	ldrb r0, [r0, #8]
	strb r0, [r1, #9]
	mov r2, ip
	lsls r3, r2, #4
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0xc]
	movs r3, #0x25
	rsbs r3, r3, #0
	adds r3, r3, r7
	mov sb, r3
	movs r4, #0xb
	rsbs r4, r4, #0
	adds r4, r4, r7
	mov r8, r4
	b _08004E78
	.align 2, 0
_08004A44: .4byte 0x0300528C
_08004A48: .4byte gUnk_03002920
_08004A4C:
	ldr r3, _08004AE4 @ =gUnk_03002920
	ldr r6, [sp, #0x28]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	adds r4, r0, r3
	movs r0, #0
	strb r0, [r4, #8]
	mov r2, sp
	ldrb r2, [r2, #8]
	strb r2, [r4, #9]
	movs r1, #1
	mov r6, ip
	ands r1, r6
	lsls r1, r1, #4
	ldrb r2, [r4, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	movs r0, #2
	ands r6, r0
	mov ip, r6
	subs r0, #0x27
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	subs r5, r7, #5
	subs r6, r7, #6
	mov r2, ip
	cmp r2, #0
	bne _08004A94
	b _08004E7C
_08004A94:
	ldrb r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0xe]
	ldr r0, _08004AE8 @ =0x030052A8
	ldrb r1, [r0]
	mov ip, r1
	cmp r1, #0
	bne _08004AF4
	mov r2, sl
	strb r2, [r0]
	ldr r3, _08004AEC @ =0x03005288
	ldrb r1, [r3]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4, #0xd]
	subs r0, #0x4c
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xd]
	ldr r2, _08004AF0 @ =0x03004680
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0x70
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r2
	mov r1, ip
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08004E7C
	.align 2, 0
_08004AE4: .4byte gUnk_03002920
_08004AE8: .4byte 0x030052A8
_08004AEC: .4byte 0x03005288
_08004AF0: .4byte 0x03004680
_08004AF4:
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r4, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xd]
	b _08004E7C
_08004B18:
	ldr r0, _08004B74 @ =gUnk_03002920
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0xe]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r4, _08004B78 @ =0x03005288
	ldrb r1, [r4]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r3, _08004B7C @ =0x03004680
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #8
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r2, [r0, #4]
	strh r2, [r0, #2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r1, _08004B80 @ =0x03004C38
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08004E68
	.align 2, 0
_08004B74: .4byte gUnk_03002920
_08004B78: .4byte 0x03005288
_08004B7C: .4byte 0x03004680
_08004B80: .4byte 0x03004C38
_08004B84:
	ldr r0, _08004B98 @ =0x03000790
	ldr r2, [sp, #8]
	lsls r1, r2, #4
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r1, #4]
	strh r0, [r1, #8]
	b _08004C0E
	.align 2, 0
_08004B98: .4byte 0x03000790
_08004B9C:
	ldr r1, _08004C34 @ =0x03000790
	ldr r3, [sp, #8]
	lsls r0, r3, #4
	adds r0, r0, r1
	ldr r1, [sp]
	subs r1, #0xe
	strh r1, [r0]
	ldr r1, [sp]
	adds r1, #0xe
	strh r1, [r0, #2]
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r0, #6]
	movs r6, #0x25
	rsbs r6, r6, #0
	adds r6, r6, r7
	mov sb, r6
	movs r0, #0xb
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov r8, r0
	subs r5, r7, #5
	subs r6, r7, #6
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _08004C0E
	ldr r3, [sp, #4]
	subs r3, #0x20
	ldr r0, _08004C38 @ =gUnk_03005468
	ldrh r4, [r0, #2]
	cmp r3, r4
	blo _08004C0E
	ldr r0, _08004C3C @ =gUnk_03004654
	ldr r2, [r0]
	ldr r1, _08004C40 @ =gUnk_03004790
	ldr r0, [sp]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r0, _08004C44 @ =gUnk_03003478
	ldrh r0, [r0]
	str r0, [sp, #0x24]
	ldr r1, [r1, #0x14]
	mov ip, r1
	ldrb r2, [r2, #0x18]
	adds r1, r4, #0
_08004BF6:
	lsrs r0, r3, #3
	ldr r4, [sp, #0x24]
	muls r0, r4, r0
	ldr r4, [sp, #0x20]
	adds r0, r4, r0
	add r0, ip
	ldrb r0, [r0]
	cmp r2, r0
	bls _08004B84
	subs r3, #8
	cmp r3, r1
	bhs _08004BF6
_08004C0E:
	ldr r0, _08004C48 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, _08004C34 @ =0x03000790
	ldr r4, [sp, #8]
	lsls r3, r4, #4
	adds r0, r3, r0
	ldrh r0, [r0, #8]
	strh r0, [r1, #2]
_08004C26:
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0xc]
	b _08004E7C
	.align 2, 0
_08004C34: .4byte 0x03000790
_08004C38: .4byte gUnk_03005468
_08004C3C: .4byte gUnk_03004654
_08004C40: .4byte gUnk_03004790
_08004C44: .4byte gUnk_03003478
_08004C48: .4byte gUnk_03002920
_08004C4C:
	ldr r0, _08004C7C @ =gUnk_03005220
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	ands r0, r7
	movs r6, #0x25
	rsbs r6, r6, #0
	adds r6, r6, r7
	mov sb, r6
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	subs r5, r7, #5
	subs r6, r7, #6
	cmp r0, #0
	bne _08004C70
	b _08004E7C
_08004C70:
	ldr r0, _08004C80 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	b _08004D0A
	.align 2, 0
_08004C7C: .4byte gUnk_03005220
_08004C80: .4byte gUnk_03002920
_08004C84:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _08004CAA
	ldr r0, _08004CCC @ =gUnk_03005220
	ldrh r0, [r0, #0x14]
	ldr r6, [sp, #8]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08004CAA
	ldr r1, [sp, #0x28]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08004CD0 @ =gUnk_03002920
	adds r0, r0, r3
	movs r1, #0x1c
	strb r1, [r0, #0xf]
_08004CAA:
	ldr r1, _08004CD0 @ =gUnk_03002920
	ldr r4, [sp, #0x28]
	mov r6, sl
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r1, ip
	strb r1, [r0, #9]
	movs r2, #0x25
	rsbs r2, r2, #0
	adds r2, r2, r7
	mov sb, r2
	movs r3, #0xb
	rsbs r3, r3, #0
	adds r3, r3, r7
	mov r8, r3
	b _08004E78
	.align 2, 0
_08004CCC: .4byte gUnk_03005220
_08004CD0: .4byte gUnk_03002920
_08004CD4:
	movs r4, #0x25
	rsbs r4, r4, #0
	adds r4, r4, r7
	mov sb, r4
	movs r6, #0xb
	rsbs r6, r6, #0
	adds r6, r6, r7
	mov r8, r6
	subs r5, r7, #5
	subs r6, r7, #6
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _08004CF0
	b _08004E7C
_08004CF0:
	ldr r0, _08004D14 @ =gUnk_03005220
	movs r1, #1
	ldr r2, [sp, #8]
	lsls r1, r2
	ldr r0, [r0, #4]
	ands r0, r1
	cmp r0, #0
	bne _08004D02
	b _08004E7C
_08004D02:
	ldr r0, _08004D18 @ =gUnk_03002920
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r1, r3, r4
_08004D0A:
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0x1c
	strb r0, [r1, #0xf]
	b _08004E7C
	.align 2, 0
_08004D14: .4byte gUnk_03005220
_08004D18: .4byte gUnk_03002920
_08004D1C:
	ldr r1, _08004D54 @ =0x0300547C
	ldrb r0, [r1]
	cmp r0, #0
	bne _08004D28
	mov r6, sl
	strb r6, [r1]
_08004D28:
	cmp r7, #0x2d
	bne _08004D38
	ldr r1, _08004D58 @ =0x03000818
	ldrb r0, [r1]
	cmp r0, #0
	bne _08004D38
	mov r0, sl
	strb r0, [r1]
_08004D38:
	ldr r1, [sp, #8]
	cmp r1, #0x1f
	bhi _08004D60
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08004D46
	b _08004E48
_08004D46:
	ldr r0, _08004D5C @ =gUnk_03005220
	movs r1, #1
	ldr r3, [sp, #8]
	lsls r1, r3
	ldr r0, [r0, #8]
	b _08004E32
	.align 2, 0
_08004D54: .4byte 0x0300547C
_08004D58: .4byte 0x03000818
_08004D5C: .4byte gUnk_03005220
_08004D60:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	bne _08004E48
	ldr r2, _08004D88 @ =gUnk_03005220
	ldr r0, [sp, #8]
	subs r0, #0x20
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08004E48
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r6, _08004D8C @ =gUnk_03002920
	adds r0, r0, r6
	b _08004E44
	.align 2, 0
_08004D88: .4byte gUnk_03005220
_08004D8C: .4byte gUnk_03002920
_08004D90:
	ldr r1, _08004E08 @ =0x030051B4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08004DAA
	mov r2, sl
	strb r2, [r1]
	ldr r0, _08004E0C @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _08004DAA
	mov r0, sl
	adds r0, #1
	strb r0, [r1]
_08004DAA:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	bne _08004DD4
	ldr r0, _08004E10 @ =gUnk_03005220
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	ldr r4, [sp, #8]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08004DD4
	ldr r6, [sp, #0x28]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	ldr r2, _08004E14 @ =gUnk_03002920
	adds r0, r0, r2
	movs r1, #0x1c
	strb r1, [r0, #0xf]
_08004DD4:
	ldr r0, _08004E14 @ =gUnk_03002920
	ldr r3, [sp, #0x28]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #3
	mov r6, ip
	ands r6, r0
	lsls r3, r6, #2
	ldrb r2, [r1, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0xc]
	movs r0, #0x25
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0xb
	rsbs r1, r1, #0
	adds r1, r1, r7
	mov r8, r1
	b _08004E78
	.align 2, 0
_08004E08: .4byte 0x030051B4
_08004E0C: .4byte gUnk_03004C20
_08004E10: .4byte gUnk_03005220
_08004E14: .4byte gUnk_03002920
_08004E18:
	ldr r1, _08004E9C @ =0x030008EC
	ldrb r0, [r1]
	cmp r0, #0
	bne _08004E24
	mov r2, sl
	strb r2, [r1]
_08004E24:
	ldr r0, _08004EA0 @ =gUnk_03005220
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	ldr r3, [sp, #8]
	asrs r0, r3
	movs r1, #1
_08004E32:
	ands r0, r1
	cmp r0, #0
	beq _08004E48
	ldr r4, [sp, #0x28]
	mov r6, sl
	subs r0, r4, r6
	lsls r0, r0, #2
	ldr r1, _08004EA4 @ =gUnk_03002920
	adds r0, r0, r1
_08004E44:
	movs r1, #0x1c
	strb r1, [r0, #0xf]
_08004E48:
	ldr r0, _08004EA4 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #3
	mov r4, ip
	ands r4, r0
	lsls r3, r4, #2
	ldrb r2, [r1, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
_08004E62:
	ands r0, r2
	orrs r0, r3
_08004E66:
	strb r0, [r1, #0xc]
_08004E68:
	movs r6, #0x25
	rsbs r6, r6, #0
	adds r6, r6, r7
	mov sb, r6
	movs r0, #0xb
	rsbs r0, r0, #0
	adds r0, r0, r7
	mov r8, r0
_08004E78:
	subs r5, r7, #5
	subs r6, r7, #6
_08004E7C:
	ldr r1, _08004EA4 @ =gUnk_03002920
	ldr r2, [sp, #0x28]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r7, [r0, #0x11]
	mov r4, sb
	cmp r4, #0x4b
	bls _08004E92
	b _08005012
_08004E92:
	lsls r0, r4, #2
	ldr r1, _08004EA8 @ =_08004EAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004E9C: .4byte 0x030008EC
_08004EA0: .4byte gUnk_03005220
_08004EA4: .4byte gUnk_03002920
_08004EA8: .4byte _08004EAC
_08004EAC: @ jump table
	.4byte _08004FDC @ case 0
	.4byte _08005012 @ case 1
	.4byte _08005000 @ case 2
	.4byte _08005000 @ case 3
	.4byte _08004FEE @ case 4
	.4byte _08005000 @ case 5
	.4byte _08004FEE @ case 6
	.4byte _08005012 @ case 7
	.4byte _08005012 @ case 8
	.4byte _08005012 @ case 9
	.4byte _08005012 @ case 10
	.4byte _08005012 @ case 11
	.4byte _08005012 @ case 12
	.4byte _08005012 @ case 13
	.4byte _08005012 @ case 14
	.4byte _08005012 @ case 15
	.4byte _08004FEE @ case 16
	.4byte _08005012 @ case 17
	.4byte _08005012 @ case 18
	.4byte _08005000 @ case 19
	.4byte _08005012 @ case 20
	.4byte _08005012 @ case 21
	.4byte _08005012 @ case 22
	.4byte _08005012 @ case 23
	.4byte _08005012 @ case 24
	.4byte _08005000 @ case 25
	.4byte _08005000 @ case 26
	.4byte _08005012 @ case 27
	.4byte _08005000 @ case 28
	.4byte _08005012 @ case 29
	.4byte _08005012 @ case 30
	.4byte _08005012 @ case 31
	.4byte _08005012 @ case 32
	.4byte _08005012 @ case 33
	.4byte _08005012 @ case 34
	.4byte _08005012 @ case 35
	.4byte _08005012 @ case 36
	.4byte _08005012 @ case 37
	.4byte _08005012 @ case 38
	.4byte _08005012 @ case 39
	.4byte _08005012 @ case 40
	.4byte _08005012 @ case 41
	.4byte _08005012 @ case 42
	.4byte _08005012 @ case 43
	.4byte _08005012 @ case 44
	.4byte _08005012 @ case 45
	.4byte _08005012 @ case 46
	.4byte _08005012 @ case 47
	.4byte _08005012 @ case 48
	.4byte _08005012 @ case 49
	.4byte _08005012 @ case 50
	.4byte _08005012 @ case 51
	.4byte _08005012 @ case 52
	.4byte _08005012 @ case 53
	.4byte _08005012 @ case 54
	.4byte _08005012 @ case 55
	.4byte _08005012 @ case 56
	.4byte _08005012 @ case 57
	.4byte _08005012 @ case 58
	.4byte _08005012 @ case 59
	.4byte _08005012 @ case 60
	.4byte _08005012 @ case 61
	.4byte _08005012 @ case 62
	.4byte _08005012 @ case 63
	.4byte _08005012 @ case 64
	.4byte _08005012 @ case 65
	.4byte _08005012 @ case 66
	.4byte _08005012 @ case 67
	.4byte _08005012 @ case 68
	.4byte _08005012 @ case 69
	.4byte _08005012 @ case 70
	.4byte _08005012 @ case 71
	.4byte _08005012 @ case 72
	.4byte _08005012 @ case 73
	.4byte _08004FEE @ case 74
	.4byte _08004FEE @ case 75
_08004FDC:
	ldr r1, _08005024 @ =0x030007F4
	ldr r0, [r1]
	cmp r0, #0
	bne _08004FE8
	mov r0, sl
	str r0, [r1]
_08004FE8:
	ldr r0, _08005028 @ =0x0300290C
	mov r1, sl
	str r1, [r0]
_08004FEE:
	ldr r1, _0800502C @ =0x03005484
	ldr r0, [r1]
	cmp r0, #0
	bne _08004FFA
	mov r2, sl
	str r2, [r1]
_08004FFA:
	ldr r0, _08005030 @ =0x03004650
	mov r3, sl
	str r3, [r0]
_08005000:
	ldr r1, _08005034 @ =0x030051D4
	ldr r0, [r1]
	cmp r0, #0
	bne _0800500C
	mov r4, sl
	str r4, [r1]
_0800500C:
	ldr r0, _08005038 @ =0x030034C8
	mov r1, sl
	str r1, [r0]
_08005012:
	mov r2, r8
	cmp r2, #0x72
	bls _0800501A
	b _08005254
_0800501A:
	lsls r0, r2, #2
	ldr r1, _0800503C @ =_08005040
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005024: .4byte 0x030007F4
_08005028: .4byte 0x0300290C
_0800502C: .4byte 0x03005484
_08005030: .4byte 0x03004650
_08005034: .4byte 0x030051D4
_08005038: .4byte 0x030034C8
_0800503C: .4byte _08005040
_08005040: @ jump table
	.4byte _08005242 @ case 0
	.4byte _08005254 @ case 1
	.4byte _08005254 @ case 2
	.4byte _08005254 @ case 3
	.4byte _08005254 @ case 4
	.4byte _08005254 @ case 5
	.4byte _08005254 @ case 6
	.4byte _08005254 @ case 7
	.4byte _08005242 @ case 8
	.4byte _08005254 @ case 9
	.4byte _08005254 @ case 10
	.4byte _08005242 @ case 11
	.4byte _08005254 @ case 12
	.4byte _08005254 @ case 13
	.4byte _08005254 @ case 14
	.4byte _08005254 @ case 15
	.4byte _08005254 @ case 16
	.4byte _08005254 @ case 17
	.4byte _08005254 @ case 18
	.4byte _08005254 @ case 19
	.4byte _08005242 @ case 20
	.4byte _08005254 @ case 21
	.4byte _08005254 @ case 22
	.4byte _08005254 @ case 23
	.4byte _08005254 @ case 24
	.4byte _08005254 @ case 25
	.4byte _0800520C @ case 26
	.4byte _08005254 @ case 27
	.4byte _08005254 @ case 28
	.4byte _08005254 @ case 29
	.4byte _08005254 @ case 30
	.4byte _08005254 @ case 31
	.4byte _08005254 @ case 32
	.4byte _08005254 @ case 33
	.4byte _08005254 @ case 34
	.4byte _08005254 @ case 35
	.4byte _08005242 @ case 36
	.4byte _08005242 @ case 37
	.4byte _08005242 @ case 38
	.4byte _08005242 @ case 39
	.4byte _08005242 @ case 40
	.4byte _08005254 @ case 41
	.4byte _08005254 @ case 42
	.4byte _08005254 @ case 43
	.4byte _08005254 @ case 44
	.4byte _08005254 @ case 45
	.4byte _08005254 @ case 46
	.4byte _08005254 @ case 47
	.4byte _08005242 @ case 48
	.4byte _08005242 @ case 49
	.4byte _08005254 @ case 50
	.4byte _08005254 @ case 51
	.4byte _08005254 @ case 52
	.4byte _08005254 @ case 53
	.4byte _08005254 @ case 54
	.4byte _08005254 @ case 55
	.4byte _08005254 @ case 56
	.4byte _08005254 @ case 57
	.4byte _08005254 @ case 58
	.4byte _08005254 @ case 59
	.4byte _08005254 @ case 60
	.4byte _08005254 @ case 61
	.4byte _08005254 @ case 62
	.4byte _08005254 @ case 63
	.4byte _08005254 @ case 64
	.4byte _08005254 @ case 65
	.4byte _08005254 @ case 66
	.4byte _08005254 @ case 67
	.4byte _08005254 @ case 68
	.4byte _08005254 @ case 69
	.4byte _08005254 @ case 70
	.4byte _08005254 @ case 71
	.4byte _08005254 @ case 72
	.4byte _08005254 @ case 73
	.4byte _08005254 @ case 74
	.4byte _08005254 @ case 75
	.4byte _08005254 @ case 76
	.4byte _08005254 @ case 77
	.4byte _08005254 @ case 78
	.4byte _08005254 @ case 79
	.4byte _08005254 @ case 80
	.4byte _08005254 @ case 81
	.4byte _08005254 @ case 82
	.4byte _08005254 @ case 83
	.4byte _08005254 @ case 84
	.4byte _08005254 @ case 85
	.4byte _08005254 @ case 86
	.4byte _08005254 @ case 87
	.4byte _08005254 @ case 88
	.4byte _08005254 @ case 89
	.4byte _08005254 @ case 90
	.4byte _08005254 @ case 91
	.4byte _08005254 @ case 92
	.4byte _08005254 @ case 93
	.4byte _08005254 @ case 94
	.4byte _08005254 @ case 95
	.4byte _08005254 @ case 96
	.4byte _08005254 @ case 97
	.4byte _08005254 @ case 98
	.4byte _08005254 @ case 99
	.4byte _0800520C @ case 100
	.4byte _08005254 @ case 101
	.4byte _08005242 @ case 102
	.4byte _08005242 @ case 103
	.4byte _08005242 @ case 104
	.4byte _08005242 @ case 105
	.4byte _08005242 @ case 106
	.4byte _08005230 @ case 107
	.4byte _08005230 @ case 108
	.4byte _08005230 @ case 109
	.4byte _08005242 @ case 110
	.4byte _08005242 @ case 111
	.4byte _0800521E @ case 112
	.4byte _0800521E @ case 113
	.4byte _0800521E @ case 114
_0800520C:
	ldr r1, _08005264 @ =0x03003500
	ldr r0, [r1]
	cmp r0, #0
	bne _08005218
	mov r3, sl
	str r3, [r1]
_08005218:
	ldr r0, _08005268 @ =0x03004664
	mov r4, sl
	str r4, [r0]
_0800521E:
	ldr r1, _0800526C @ =0x030047BC
	ldr r0, [r1]
	cmp r0, #0
	bne _0800522A
	mov r0, sl
	str r0, [r1]
_0800522A:
	ldr r0, _08005270 @ =0x030007D4
	mov r1, sl
	str r1, [r0]
_08005230:
	ldr r1, _08005274 @ =0x030047F8
	ldr r0, [r1]
	cmp r0, #0
	bne _0800523C
	mov r2, sl
	str r2, [r1]
_0800523C:
	ldr r0, _08005278 @ =0x03003504
	mov r3, sl
	str r3, [r0]
_08005242:
	ldr r1, _0800527C @ =0x030051D8
	ldr r0, [r1]
	cmp r0, #0
	bne _0800524E
	mov r4, sl
	str r4, [r1]
_0800524E:
	ldr r0, _08005280 @ =0x03004788
	mov r1, sl
	str r1, [r0]
_08005254:
	cmp r5, #0x70
	bls _0800525A
	b _08005486
_0800525A:
	lsls r0, r5, #2
	ldr r1, _08005284 @ =_08005288
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005264: .4byte 0x03003500
_08005268: .4byte 0x03004664
_0800526C: .4byte 0x030047BC
_08005270: .4byte 0x030007D4
_08005274: .4byte 0x030047F8
_08005278: .4byte 0x03003504
_0800527C: .4byte 0x030051D8
_08005280: .4byte 0x03004788
_08005284: .4byte _08005288
_08005288: @ jump table
	.4byte _08005470 @ case 0
	.4byte _0800544C @ case 1
	.4byte _08005486 @ case 2
	.4byte _0800544C @ case 3
	.4byte _08005486 @ case 4
	.4byte _08005486 @ case 5
	.4byte _08005486 @ case 6
	.4byte _08005486 @ case 7
	.4byte _08005486 @ case 8
	.4byte _08005486 @ case 9
	.4byte _08005486 @ case 10
	.4byte _08005486 @ case 11
	.4byte _08005486 @ case 12
	.4byte _08005486 @ case 13
	.4byte _08005486 @ case 14
	.4byte _08005486 @ case 15
	.4byte _08005486 @ case 16
	.4byte _08005486 @ case 17
	.4byte _08005486 @ case 18
	.4byte _08005486 @ case 19
	.4byte _08005486 @ case 20
	.4byte _08005486 @ case 21
	.4byte _08005486 @ case 22
	.4byte _08005486 @ case 23
	.4byte _08005486 @ case 24
	.4byte _08005486 @ case 25
	.4byte _08005486 @ case 26
	.4byte _08005486 @ case 27
	.4byte _08005486 @ case 28
	.4byte _08005486 @ case 29
	.4byte _08005486 @ case 30
	.4byte _08005486 @ case 31
	.4byte _0800544C @ case 32
	.4byte _08005486 @ case 33
	.4byte _0800544C @ case 34
	.4byte _0800545E @ case 35
	.4byte _0800544C @ case 36
	.4byte _0800544C @ case 37
	.4byte _0800544C @ case 38
	.4byte _08005486 @ case 39
	.4byte _08005486 @ case 40
	.4byte _08005486 @ case 41
	.4byte _08005486 @ case 42
	.4byte _08005486 @ case 43
	.4byte _08005486 @ case 44
	.4byte _08005486 @ case 45
	.4byte _08005486 @ case 46
	.4byte _08005486 @ case 47
	.4byte _0800544C @ case 48
	.4byte _0800545E @ case 49
	.4byte _08005486 @ case 50
	.4byte _0800545E @ case 51
	.4byte _08005486 @ case 52
	.4byte _08005486 @ case 53
	.4byte _08005470 @ case 54
	.4byte _08005470 @ case 55
	.4byte _08005486 @ case 56
	.4byte _0800544C @ case 57
	.4byte _0800544C @ case 58
	.4byte _08005486 @ case 59
	.4byte _0800545E @ case 60
	.4byte _08005486 @ case 61
	.4byte _08005486 @ case 62
	.4byte _08005486 @ case 63
	.4byte _08005486 @ case 64
	.4byte _08005486 @ case 65
	.4byte _08005486 @ case 66
	.4byte _08005486 @ case 67
	.4byte _08005486 @ case 68
	.4byte _08005486 @ case 69
	.4byte _08005486 @ case 70
	.4byte _08005486 @ case 71
	.4byte _08005486 @ case 72
	.4byte _08005486 @ case 73
	.4byte _08005486 @ case 74
	.4byte _08005486 @ case 75
	.4byte _08005486 @ case 76
	.4byte _08005486 @ case 77
	.4byte _08005486 @ case 78
	.4byte _08005486 @ case 79
	.4byte _08005486 @ case 80
	.4byte _08005486 @ case 81
	.4byte _08005486 @ case 82
	.4byte _08005486 @ case 83
	.4byte _08005486 @ case 84
	.4byte _08005486 @ case 85
	.4byte _08005486 @ case 86
	.4byte _08005486 @ case 87
	.4byte _08005486 @ case 88
	.4byte _08005486 @ case 89
	.4byte _08005486 @ case 90
	.4byte _08005486 @ case 91
	.4byte _08005486 @ case 92
	.4byte _08005486 @ case 93
	.4byte _08005486 @ case 94
	.4byte _08005486 @ case 95
	.4byte _08005486 @ case 96
	.4byte _08005486 @ case 97
	.4byte _08005486 @ case 98
	.4byte _08005486 @ case 99
	.4byte _08005486 @ case 100
	.4byte _08005486 @ case 101
	.4byte _08005486 @ case 102
	.4byte _08005486 @ case 103
	.4byte _08005486 @ case 104
	.4byte _08005486 @ case 105
	.4byte _0800544C @ case 106
	.4byte _0800544C @ case 107
	.4byte _0800545E @ case 108
	.4byte _0800545E @ case 109
	.4byte _0800545E @ case 110
	.4byte _0800545E @ case 111
	.4byte _0800545E @ case 112
_0800544C:
	ldr r1, _08005498 @ =0x03003634
	ldr r0, [r1]
	cmp r0, #0
	bne _08005458
	mov r2, sl
	str r2, [r1]
_08005458:
	ldr r0, _0800549C @ =0x03005430
	mov r3, sl
	str r3, [r0]
_0800545E:
	ldr r1, _080054A0 @ =0x03003630
	ldr r0, [r1]
	cmp r0, #0
	bne _0800546A
	mov r4, sl
	str r4, [r1]
_0800546A:
	ldr r0, _080054A4 @ =0x03004674
	mov r1, sl
	str r1, [r0]
_08005470:
	cmp r7, #0x38
	beq _08005486
	ldr r1, _080054A8 @ =0x030034D8
	ldr r0, [r1]
	cmp r0, #0
	bne _08005480
	mov r2, sl
	str r2, [r1]
_08005480:
	ldr r0, _080054AC @ =0x0300541C
	mov r3, sl
	str r3, [r0]
_08005486:
	cmp r5, #0x6b
	bls _0800548C
	b _08005676
_0800548C:
	lsls r0, r5, #2
	ldr r1, _080054B0 @ =_080054B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005498: .4byte 0x03003634
_0800549C: .4byte 0x03005430
_080054A0: .4byte 0x03003630
_080054A4: .4byte 0x03004674
_080054A8: .4byte 0x030034D8
_080054AC: .4byte 0x0300541C
_080054B0: .4byte _080054B4
_080054B4: @ jump table
	.4byte _08005664 @ case 0
	.4byte _08005676 @ case 1
	.4byte _08005676 @ case 2
	.4byte _08005676 @ case 3
	.4byte _08005676 @ case 4
	.4byte _08005676 @ case 5
	.4byte _08005676 @ case 6
	.4byte _08005676 @ case 7
	.4byte _08005676 @ case 8
	.4byte _08005676 @ case 9
	.4byte _08005676 @ case 10
	.4byte _08005676 @ case 11
	.4byte _08005676 @ case 12
	.4byte _08005676 @ case 13
	.4byte _08005676 @ case 14
	.4byte _08005676 @ case 15
	.4byte _08005676 @ case 16
	.4byte _08005676 @ case 17
	.4byte _08005676 @ case 18
	.4byte _08005676 @ case 19
	.4byte _08005676 @ case 20
	.4byte _08005676 @ case 21
	.4byte _08005676 @ case 22
	.4byte _08005676 @ case 23
	.4byte _08005676 @ case 24
	.4byte _08005664 @ case 25
	.4byte _08005676 @ case 26
	.4byte _08005676 @ case 27
	.4byte _08005676 @ case 28
	.4byte _08005676 @ case 29
	.4byte _08005676 @ case 30
	.4byte _08005676 @ case 31
	.4byte _08005664 @ case 32
	.4byte _08005676 @ case 33
	.4byte _08005676 @ case 34
	.4byte _08005676 @ case 35
	.4byte _08005676 @ case 36
	.4byte _08005676 @ case 37
	.4byte _08005676 @ case 38
	.4byte _08005676 @ case 39
	.4byte _08005676 @ case 40
	.4byte _08005676 @ case 41
	.4byte _08005676 @ case 42
	.4byte _08005676 @ case 43
	.4byte _08005676 @ case 44
	.4byte _08005676 @ case 45
	.4byte _08005676 @ case 46
	.4byte _08005676 @ case 47
	.4byte _08005664 @ case 48
	.4byte _08005676 @ case 49
	.4byte _08005676 @ case 50
	.4byte _08005664 @ case 51
	.4byte _08005676 @ case 52
	.4byte _08005676 @ case 53
	.4byte _08005664 @ case 54
	.4byte _08005664 @ case 55
	.4byte _08005676 @ case 56
	.4byte _08005676 @ case 57
	.4byte _08005664 @ case 58
	.4byte _08005676 @ case 59
	.4byte _08005664 @ case 60
	.4byte _08005676 @ case 61
	.4byte _08005676 @ case 62
	.4byte _08005676 @ case 63
	.4byte _08005676 @ case 64
	.4byte _08005676 @ case 65
	.4byte _08005676 @ case 66
	.4byte _08005676 @ case 67
	.4byte _08005676 @ case 68
	.4byte _08005676 @ case 69
	.4byte _08005676 @ case 70
	.4byte _08005676 @ case 71
	.4byte _08005676 @ case 72
	.4byte _08005676 @ case 73
	.4byte _08005676 @ case 74
	.4byte _08005676 @ case 75
	.4byte _08005676 @ case 76
	.4byte _08005676 @ case 77
	.4byte _08005676 @ case 78
	.4byte _08005676 @ case 79
	.4byte _08005676 @ case 80
	.4byte _08005676 @ case 81
	.4byte _08005676 @ case 82
	.4byte _08005676 @ case 83
	.4byte _08005676 @ case 84
	.4byte _08005676 @ case 85
	.4byte _08005676 @ case 86
	.4byte _08005676 @ case 87
	.4byte _08005676 @ case 88
	.4byte _08005676 @ case 89
	.4byte _08005676 @ case 90
	.4byte _08005676 @ case 91
	.4byte _08005676 @ case 92
	.4byte _08005676 @ case 93
	.4byte _08005676 @ case 94
	.4byte _08005676 @ case 95
	.4byte _08005676 @ case 96
	.4byte _08005676 @ case 97
	.4byte _08005676 @ case 98
	.4byte _08005676 @ case 99
	.4byte _08005676 @ case 100
	.4byte _08005676 @ case 101
	.4byte _08005676 @ case 102
	.4byte _08005676 @ case 103
	.4byte _08005676 @ case 104
	.4byte _08005676 @ case 105
	.4byte _08005664 @ case 106
	.4byte _08005664 @ case 107
_08005664:
	ldr r1, _08005688 @ =0x030034CC
	ldr r0, [r1]
	cmp r0, #0
	bne _08005670
	mov r4, sl
	str r4, [r1]
_08005670:
	ldr r0, _0800568C @ =0x0300529C
	mov r1, sl
	str r1, [r0]
_08005676:
	cmp r6, #0x77
	bls _0800567C
	b _08005898
_0800567C:
	lsls r0, r6, #2
	ldr r1, _08005690 @ =_08005694
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005688: .4byte 0x030034CC
_0800568C: .4byte 0x0300529C
_08005690: .4byte _08005694
_08005694: @ jump table
	.4byte _08005886 @ case 0
	.4byte _08005898 @ case 1
	.4byte _08005886 @ case 2
	.4byte _08005898 @ case 3
	.4byte _08005898 @ case 4
	.4byte _08005886 @ case 5
	.4byte _08005898 @ case 6
	.4byte _08005898 @ case 7
	.4byte _08005898 @ case 8
	.4byte _08005898 @ case 9
	.4byte _08005898 @ case 10
	.4byte _08005898 @ case 11
	.4byte _08005898 @ case 12
	.4byte _08005898 @ case 13
	.4byte _08005898 @ case 14
	.4byte _08005898 @ case 15
	.4byte _08005898 @ case 16
	.4byte _08005886 @ case 17
	.4byte _08005898 @ case 18
	.4byte _08005898 @ case 19
	.4byte _08005898 @ case 20
	.4byte _08005886 @ case 21
	.4byte _08005898 @ case 22
	.4byte _08005898 @ case 23
	.4byte _08005898 @ case 24
	.4byte _08005898 @ case 25
	.4byte _08005898 @ case 26
	.4byte _08005898 @ case 27
	.4byte _08005886 @ case 28
	.4byte _08005898 @ case 29
	.4byte _08005898 @ case 30
	.4byte _08005874 @ case 31
	.4byte _08005898 @ case 32
	.4byte _08005874 @ case 33
	.4byte _08005874 @ case 34
	.4byte _08005886 @ case 35
	.4byte _08005886 @ case 36
	.4byte _08005886 @ case 37
	.4byte _08005898 @ case 38
	.4byte _08005898 @ case 39
	.4byte _08005898 @ case 40
	.4byte _08005898 @ case 41
	.4byte _08005898 @ case 42
	.4byte _08005898 @ case 43
	.4byte _08005898 @ case 44
	.4byte _08005898 @ case 45
	.4byte _08005898 @ case 46
	.4byte _08005874 @ case 47
	.4byte _08005886 @ case 48
	.4byte _08005898 @ case 49
	.4byte _08005874 @ case 50
	.4byte _08005898 @ case 51
	.4byte _08005898 @ case 52
	.4byte _08005898 @ case 53
	.4byte _08005898 @ case 54
	.4byte _08005898 @ case 55
	.4byte _08005874 @ case 56
	.4byte _08005874 @ case 57
	.4byte _08005898 @ case 58
	.4byte _08005874 @ case 59
	.4byte _08005898 @ case 60
	.4byte _08005898 @ case 61
	.4byte _08005898 @ case 62
	.4byte _08005898 @ case 63
	.4byte _08005898 @ case 64
	.4byte _08005898 @ case 65
	.4byte _08005898 @ case 66
	.4byte _08005898 @ case 67
	.4byte _08005898 @ case 68
	.4byte _08005898 @ case 69
	.4byte _08005898 @ case 70
	.4byte _08005898 @ case 71
	.4byte _08005898 @ case 72
	.4byte _08005898 @ case 73
	.4byte _08005898 @ case 74
	.4byte _08005898 @ case 75
	.4byte _08005898 @ case 76
	.4byte _08005898 @ case 77
	.4byte _08005898 @ case 78
	.4byte _08005898 @ case 79
	.4byte _08005898 @ case 80
	.4byte _08005898 @ case 81
	.4byte _08005898 @ case 82
	.4byte _08005898 @ case 83
	.4byte _08005898 @ case 84
	.4byte _08005898 @ case 85
	.4byte _08005898 @ case 86
	.4byte _08005898 @ case 87
	.4byte _08005898 @ case 88
	.4byte _08005898 @ case 89
	.4byte _08005898 @ case 90
	.4byte _08005898 @ case 91
	.4byte _08005898 @ case 92
	.4byte _08005898 @ case 93
	.4byte _08005898 @ case 94
	.4byte _08005898 @ case 95
	.4byte _08005898 @ case 96
	.4byte _08005898 @ case 97
	.4byte _08005898 @ case 98
	.4byte _08005898 @ case 99
	.4byte _08005898 @ case 100
	.4byte _08005898 @ case 101
	.4byte _08005898 @ case 102
	.4byte _08005898 @ case 103
	.4byte _08005898 @ case 104
	.4byte _08005874 @ case 105
	.4byte _08005874 @ case 106
	.4byte _08005886 @ case 107
	.4byte _08005886 @ case 108
	.4byte _08005886 @ case 109
	.4byte _08005886 @ case 110
	.4byte _08005886 @ case 111
	.4byte _08005886 @ case 112
	.4byte _08005886 @ case 113
	.4byte _08005886 @ case 114
	.4byte _08005886 @ case 115
	.4byte _08005886 @ case 116
	.4byte _08005886 @ case 117
	.4byte _08005886 @ case 118
	.4byte _08005886 @ case 119
_08005874:
	ldr r1, _080058A8 @ =0x03000804
	ldr r0, [r1]
	cmp r0, #0
	bne _08005880
	mov r2, sl
	str r2, [r1]
_08005880:
	ldr r0, _080058AC @ =0x0300082C
	mov r3, sl
	str r3, [r0]
_08005886:
	ldr r1, _080058B0 @ =0x030007F0
	ldr r0, [r1]
	cmp r0, #0
	bne _08005892
	mov r4, sl
	str r4, [r1]
_08005892:
	ldr r0, _080058B4 @ =0x03004C04
	mov r6, sl
	str r6, [r0]
_08005898:
	cmp r5, #0x78
	bls _0800589E
	b _08005AC4
_0800589E:
	lsls r0, r5, #2
	ldr r1, _080058B8 @ =_080058BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080058A8: .4byte 0x03000804
_080058AC: .4byte 0x0300082C
_080058B0: .4byte 0x030007F0
_080058B4: .4byte 0x03004C04
_080058B8: .4byte _080058BC
_080058BC: @ jump table
	.4byte _08005AB2 @ case 0
	.4byte _08005AA0 @ case 1
	.4byte _08005AC4 @ case 2
	.4byte _08005AA0 @ case 3
	.4byte _08005AC4 @ case 4
	.4byte _08005AC4 @ case 5
	.4byte _08005AA0 @ case 6
	.4byte _08005AC4 @ case 7
	.4byte _08005AC4 @ case 8
	.4byte _08005AC4 @ case 9
	.4byte _08005AC4 @ case 10
	.4byte _08005AC4 @ case 11
	.4byte _08005AC4 @ case 12
	.4byte _08005AC4 @ case 13
	.4byte _08005AC4 @ case 14
	.4byte _08005AC4 @ case 15
	.4byte _08005AC4 @ case 16
	.4byte _08005AC4 @ case 17
	.4byte _08005AB2 @ case 18
	.4byte _08005AA0 @ case 19
	.4byte _08005AC4 @ case 20
	.4byte _08005AC4 @ case 21
	.4byte _08005AB2 @ case 22
	.4byte _08005AC4 @ case 23
	.4byte _08005AC4 @ case 24
	.4byte _08005AC4 @ case 25
	.4byte _08005AC4 @ case 26
	.4byte _08005AC4 @ case 27
	.4byte _08005AC4 @ case 28
	.4byte _08005AB2 @ case 29
	.4byte _08005AC4 @ case 30
	.4byte _08005AC4 @ case 31
	.4byte _08005AA0 @ case 32
	.4byte _08005AC4 @ case 33
	.4byte _08005AA0 @ case 34
	.4byte _08005AB2 @ case 35
	.4byte _08005AA0 @ case 36
	.4byte _08005AA0 @ case 37
	.4byte _08005AA0 @ case 38
	.4byte _08005AC4 @ case 39
	.4byte _08005AC4 @ case 40
	.4byte _08005AC4 @ case 41
	.4byte _08005AC4 @ case 42
	.4byte _08005AC4 @ case 43
	.4byte _08005AC4 @ case 44
	.4byte _08005AC4 @ case 45
	.4byte _08005AC4 @ case 46
	.4byte _08005AC4 @ case 47
	.4byte _08005AA0 @ case 48
	.4byte _08005AB2 @ case 49
	.4byte _08005AC4 @ case 50
	.4byte _08005AC4 @ case 51
	.4byte _08005AC4 @ case 52
	.4byte _08005AB2 @ case 53
	.4byte _08005AB2 @ case 54
	.4byte _08005AB2 @ case 55
	.4byte _08005AC4 @ case 56
	.4byte _08005AB2 @ case 57
	.4byte _08005AA0 @ case 58
	.4byte _08005AC4 @ case 59
	.4byte _08005AB2 @ case 60
	.4byte _08005AC4 @ case 61
	.4byte _08005AC4 @ case 62
	.4byte _08005AC4 @ case 63
	.4byte _08005AC4 @ case 64
	.4byte _08005AC4 @ case 65
	.4byte _08005AC4 @ case 66
	.4byte _08005AC4 @ case 67
	.4byte _08005AC4 @ case 68
	.4byte _08005AC4 @ case 69
	.4byte _08005AC4 @ case 70
	.4byte _08005AC4 @ case 71
	.4byte _08005AC4 @ case 72
	.4byte _08005AC4 @ case 73
	.4byte _08005AC4 @ case 74
	.4byte _08005AC4 @ case 75
	.4byte _08005AC4 @ case 76
	.4byte _08005AC4 @ case 77
	.4byte _08005AC4 @ case 78
	.4byte _08005AC4 @ case 79
	.4byte _08005AC4 @ case 80
	.4byte _08005AC4 @ case 81
	.4byte _08005AC4 @ case 82
	.4byte _08005AC4 @ case 83
	.4byte _08005AC4 @ case 84
	.4byte _08005AC4 @ case 85
	.4byte _08005AC4 @ case 86
	.4byte _08005AC4 @ case 87
	.4byte _08005AC4 @ case 88
	.4byte _08005AC4 @ case 89
	.4byte _08005AC4 @ case 90
	.4byte _08005AC4 @ case 91
	.4byte _08005AC4 @ case 92
	.4byte _08005AC4 @ case 93
	.4byte _08005AC4 @ case 94
	.4byte _08005AC4 @ case 95
	.4byte _08005AC4 @ case 96
	.4byte _08005AC4 @ case 97
	.4byte _08005AC4 @ case 98
	.4byte _08005AC4 @ case 99
	.4byte _08005AC4 @ case 100
	.4byte _08005AC4 @ case 101
	.4byte _08005AC4 @ case 102
	.4byte _08005AC4 @ case 103
	.4byte _08005AC4 @ case 104
	.4byte _08005AC4 @ case 105
	.4byte _08005AA0 @ case 106
	.4byte _08005AA0 @ case 107
	.4byte _08005AB2 @ case 108
	.4byte _08005AB2 @ case 109
	.4byte _08005AB2 @ case 110
	.4byte _08005AB2 @ case 111
	.4byte _08005AB2 @ case 112
	.4byte _08005AA0 @ case 113
	.4byte _08005AA0 @ case 114
	.4byte _08005AA0 @ case 115
	.4byte _08005AA0 @ case 116
	.4byte _08005AA0 @ case 117
	.4byte _08005AA0 @ case 118
	.4byte _08005AA0 @ case 119
	.4byte _08005AA0 @ case 120
_08005AA0:
	ldr r1, _08005AEC @ =0x030047B4
	ldr r0, [r1]
	cmp r0, #0
	bne _08005AAC
	mov r0, sl
	str r0, [r1]
_08005AAC:
	ldr r0, _08005AF0 @ =0x03003640
	mov r1, sl
	str r1, [r0]
_08005AB2:
	ldr r1, _08005AF4 @ =0x030008F4
	ldr r0, [r1]
	cmp r0, #0
	bne _08005ABE
	mov r2, sl
	str r2, [r1]
_08005ABE:
	ldr r0, _08005AF8 @ =0x030008F0
	mov r3, sl
	str r3, [r0]
_08005AC4:
	cmp r7, #0x38
	bne _08005ADA
	ldr r1, _08005AFC @ =0x03000824
	ldr r0, [r1]
	cmp r0, #0
	bne _08005AD4
	mov r4, sl
	str r4, [r1]
_08005AD4:
	ldr r0, _08005B00 @ =0x03005424
	mov r6, sl
	str r6, [r0]
_08005ADA:
	mov r0, sb
	cmp r0, #0x58
	bls _08005AE2
	b _08005CA2
_08005AE2:
	lsls r0, r0, #2
	ldr r1, _08005B04 @ =_08005B08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005AEC: .4byte 0x030047B4
_08005AF0: .4byte 0x03003640
_08005AF4: .4byte 0x030008F4
_08005AF8: .4byte 0x030008F0
_08005AFC: .4byte 0x03000824
_08005B00: .4byte 0x03005424
_08005B04: .4byte _08005B08
_08005B08: @ jump table
	.4byte _08005C6C @ case 0
	.4byte _08005CA2 @ case 1
	.4byte _08005CA2 @ case 2
	.4byte _08005CA2 @ case 3
	.4byte _08005CA2 @ case 4
	.4byte _08005CA2 @ case 5
	.4byte _08005CA2 @ case 6
	.4byte _08005CA2 @ case 7
	.4byte _08005CA2 @ case 8
	.4byte _08005CA2 @ case 9
	.4byte _08005CA2 @ case 10
	.4byte _08005CA2 @ case 11
	.4byte _08005CA2 @ case 12
	.4byte _08005CA2 @ case 13
	.4byte _08005CA2 @ case 14
	.4byte _08005CA2 @ case 15
	.4byte _08005C90 @ case 16
	.4byte _08005CA2 @ case 17
	.4byte _08005CA2 @ case 18
	.4byte _08005CA2 @ case 19
	.4byte _08005CA2 @ case 20
	.4byte _08005CA2 @ case 21
	.4byte _08005CA2 @ case 22
	.4byte _08005CA2 @ case 23
	.4byte _08005CA2 @ case 24
	.4byte _08005CA2 @ case 25
	.4byte _08005CA2 @ case 26
	.4byte _08005CA2 @ case 27
	.4byte _08005CA2 @ case 28
	.4byte _08005CA2 @ case 29
	.4byte _08005CA2 @ case 30
	.4byte _08005CA2 @ case 31
	.4byte _08005CA2 @ case 32
	.4byte _08005CA2 @ case 33
	.4byte _08005CA2 @ case 34
	.4byte _08005CA2 @ case 35
	.4byte _08005CA2 @ case 36
	.4byte _08005CA2 @ case 37
	.4byte _08005CA2 @ case 38
	.4byte _08005CA2 @ case 39
	.4byte _08005CA2 @ case 40
	.4byte _08005CA2 @ case 41
	.4byte _08005CA2 @ case 42
	.4byte _08005CA2 @ case 43
	.4byte _08005CA2 @ case 44
	.4byte _08005CA2 @ case 45
	.4byte _08005CA2 @ case 46
	.4byte _08005CA2 @ case 47
	.4byte _08005CA2 @ case 48
	.4byte _08005CA2 @ case 49
	.4byte _08005CA2 @ case 50
	.4byte _08005CA2 @ case 51
	.4byte _08005CA2 @ case 52
	.4byte _08005CA2 @ case 53
	.4byte _08005CA2 @ case 54
	.4byte _08005CA2 @ case 55
	.4byte _08005CA2 @ case 56
	.4byte _08005CA2 @ case 57
	.4byte _08005CA2 @ case 58
	.4byte _08005CA2 @ case 59
	.4byte _08005CA2 @ case 60
	.4byte _08005CA2 @ case 61
	.4byte _08005CA2 @ case 62
	.4byte _08005CA2 @ case 63
	.4byte _08005CA2 @ case 64
	.4byte _08005CA2 @ case 65
	.4byte _08005CA2 @ case 66
	.4byte _08005CA2 @ case 67
	.4byte _08005CA2 @ case 68
	.4byte _08005CA2 @ case 69
	.4byte _08005CA2 @ case 70
	.4byte _08005CA2 @ case 71
	.4byte _08005CA2 @ case 72
	.4byte _08005C90 @ case 73
	.4byte _08005C6C @ case 74
	.4byte _08005CA2 @ case 75
	.4byte _08005CA2 @ case 76
	.4byte _08005CA2 @ case 77
	.4byte _08005CA2 @ case 78
	.4byte _08005CA2 @ case 79
	.4byte _08005CA2 @ case 80
	.4byte _08005C6C @ case 81
	.4byte _08005C7E @ case 82
	.4byte _08005C7E @ case 83
	.4byte _08005C7E @ case 84
	.4byte _08005C7E @ case 85
	.4byte _08005C6C @ case 86
	.4byte _08005C6C @ case 87
	.4byte _08005C6C @ case 88
_08005C6C:
	ldr r1, _08005CD4 @ =0x03002904
	ldr r0, [r1]
	cmp r0, #0
	bne _08005C78
	mov r2, sl
	str r2, [r1]
_08005C78:
	ldr r0, _08005CD8 @ =0x030008FC
	mov r3, sl
	str r3, [r0]
_08005C7E:
	ldr r1, _08005CDC @ =0x030034A4
	ldr r0, [r1]
	cmp r0, #0
	bne _08005C8A
	mov r4, sl
	str r4, [r1]
_08005C8A:
	ldr r0, _08005CE0 @ =0x030052B0
	mov r6, sl
	str r6, [r0]
_08005C90:
	ldr r1, _08005CE4 @ =0x03003638
	ldr r0, [r1]
	cmp r0, #0
	bne _08005C9C
	mov r0, sl
	str r0, [r1]
_08005C9C:
	ldr r0, _08005CE8 @ =0x03002908
	mov r1, sl
	str r1, [r0]
_08005CA2:
	cmp r7, #0x6e
	blt _08005CC4
	cmp r7, #0x78
	ble _08005CB2
	cmp r7, #0x7d
	bgt _08005CC4
	cmp r7, #0x7a
	blt _08005CC4
_08005CB2:
	ldr r1, _08005CEC @ =0x030052B4
	ldr r0, [r1]
	cmp r0, #0
	bne _08005CBE
	mov r2, sl
	str r2, [r1]
_08005CBE:
	ldr r0, _08005CF0 @ =0x030051C4
	mov r3, sl
	str r3, [r0]
_08005CC4:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005CD4: .4byte 0x03002904
_08005CD8: .4byte 0x030008FC
_08005CDC: .4byte 0x030034A4
_08005CE0: .4byte 0x030052B0
_08005CE4: .4byte 0x03003638
_08005CE8: .4byte 0x03002908
_08005CEC: .4byte 0x030052B4
_08005CF0: .4byte 0x030051C4

	thumb_func_start sub_08005CF4
sub_08005CF4: @ 0x08005CF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_0800A468
	ldr r1, _08005D34 @ =0x03000820
	ldr r0, _08005D38 @ =gUnk_03004800
	str r0, [r1]
	ldr r1, _08005D3C @ =gUnk_03002920
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08005D1A
	b _08005FF4
_08005D1A:
	movs r3, #0x9f
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _08005D48
	ldr r0, _08005D40 @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _08005D44 @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _08005D58
	.align 2, 0
_08005D34: .4byte 0x03000820
_08005D38: .4byte gUnk_03004800
_08005D3C: .4byte gUnk_03002920
_08005D40: .4byte 0x0300466C
_08005D44: .4byte 0x08078FC8
_08005D48:
	ldr r2, _08005DC8 @ =0x0300466C
	ldr r0, _08005DCC @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_08005D58:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	cmp r1, #0
	bne _08005D64
	b _08005FF4
_08005D64:
	ldr r6, _08005DD0 @ =0x03000820
	ldr r4, _08005DD4 @ =gUnk_03002920
	ldr r0, _08005DD8 @ =0x0000013F
	adds r4, r4, r0
	mov sb, r4
	mov sl, r1
_08005D70:
	ldr r1, _08005DDC @ =0x03002A62
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08005E34
	ldr r2, _08005DD4 @ =gUnk_03002920
	ldr r3, _08005DE0 @ =0x00000145
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08005DF4
	ldr r3, [r6]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08005DE4 @ =0x03002A58
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _08005DE8 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08005DEC @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r0, _08005DF0 @ =0x03002A5A
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08005E6A
	.align 2, 0
_08005DC8: .4byte 0x0300466C
_08005DCC: .4byte gUnk_030051DC
_08005DD0: .4byte 0x03000820
_08005DD4: .4byte gUnk_03002920
_08005DD8: .4byte 0x0000013F
_08005DDC: .4byte 0x03002A62
_08005DE0: .4byte 0x00000145
_08005DE4: .4byte 0x03002A58
_08005DE8: .4byte 0x000001FF
_08005DEC: .4byte 0xFFFFFE00
_08005DF0: .4byte 0x03002A5A
_08005DF4:
	ldr r3, [r6]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08005E28 @ =0x03002A58
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08005E2C @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08005E30 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08005E5C
	.align 2, 0
_08005E28: .4byte 0x03002A58
_08005E2C: .4byte 0x000001FF
_08005E30: .4byte 0xFFFFFE00
_08005E34:
	ldr r3, [r6]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08005F7C @ =0x03002A58
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08005F80 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08005F84 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_08005E5C:
	ldr r0, _08005F88 @ =0x03002A5A
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08005E6A:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r7, _08005F8C @ =0x03000820
	ldr r3, [r6]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r6]
	ldrh r0, [r5]
	ldr r1, _08005F90 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08005F94 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r6]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r6]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r6]
	ldr r0, _08005F98 @ =gUnk_03002920
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r6]
	ldr r0, _08005F98 @ =gUnk_03002920
	ldr r1, _08005F9C @ =0x00000141
	adds r4, r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r6]
	ldr r1, _08005FA0 @ =0x03002A62
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08005F98 @ =gUnk_03002920
	adds r0, r0, r1
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08005FA4
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08005FD8
	.align 2, 0
_08005F7C: .4byte 0x03002A58
_08005F80: .4byte 0x000001FF
_08005F84: .4byte 0xFFFFFE00
_08005F88: .4byte 0x03002A5A
_08005F8C: .4byte 0x03000820
_08005F90: .4byte 0x000003FF
_08005F94: .4byte 0xFFFFFC00
_08005F98: .4byte gUnk_03002920
_08005F9C: .4byte 0x00000141
_08005FA0: .4byte 0x03002A62
_08005FA4:
	ldr r3, [r7]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_08005FD8:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r6]
	adds r0, #8
	str r0, [r6]
	adds r5, #8
	movs r3, #1
	rsbs r3, r3, #0
	add sl, r3
	mov r4, sl
	cmp r4, #0
	beq _08005FF4
	b _08005D70
_08005FF4:
	ldr r0, _08006020 @ =gUnk_03002920
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	cmp r1, #1
	beq _08006004
	b _080062CE
_08006004:
	adds r3, r0, #0
	movs r4, #0xad
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _0800602C
	ldr r0, _08006024 @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _08006028 @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _0800603C
	.align 2, 0
_08006020: .4byte gUnk_03002920
_08006024: .4byte 0x0300466C
_08006028: .4byte 0x08078FC8
_0800602C:
	ldr r2, _080060B0 @ =0x0300466C
	ldr r0, _080060B4 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_0800603C:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	cmp r1, #0
	bne _08006048
	b _080062CE
_08006048:
	ldr r0, _080060B8 @ =gUnk_03002920
	mov sb, r0
	ldr r6, _080060BC @ =0x03000820
	ldr r2, _080060C0 @ =0x0000015B
	add r2, sb
	mov sl, r2
	str r1, [sp, #4]
_08006056:
	ldr r3, _080060C4 @ =0x03002A7E
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800611C
	ldr r4, _080060B8 @ =gUnk_03002920
	ldr r1, _080060C8 @ =0x00000161
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _080060DC
	ldr r3, [r6]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r2, _080060CC @ =0x03002A74
	ldrh r2, [r2]
	adds r1, r1, r2
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _080060D0 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080060D4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r4, _080060D8 @ =0x03002A76
	ldrb r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08006152
	.align 2, 0
_080060B0: .4byte 0x0300466C
_080060B4: .4byte gUnk_030051DC
_080060B8: .4byte gUnk_03002920
_080060BC: .4byte 0x03000820
_080060C0: .4byte 0x0000015B
_080060C4: .4byte 0x03002A7E
_080060C8: .4byte 0x00000161
_080060CC: .4byte 0x03002A74
_080060D0: .4byte 0x000001FF
_080060D4: .4byte 0xFFFFFE00
_080060D8: .4byte 0x03002A76
_080060DC:
	ldr r3, [r6]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08006110 @ =0x03002A74
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006114 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006118 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08006144
	.align 2, 0
_08006110: .4byte 0x03002A74
_08006114: .4byte 0x000001FF
_08006118: .4byte 0xFFFFFE00
_0800611C:
	ldr r3, [r6]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _0800625C @ =0x03002A74
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006260 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006264 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_08006144:
	ldr r0, _08006268 @ =0x03002A76
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08006152:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r7, _0800626C @ =0x03000820
	ldr r3, [r6]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r6]
	ldrh r0, [r5]
	ldr r1, _08006270 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08006274 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r6]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r6]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r6]
	movs r0, #0xae
	lsls r0, r0, #1
	add r0, sb
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r6]
	ldr r4, _08006278 @ =0x0000015D
	add r4, sb
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r6]
	ldr r1, _0800627C @ =0x03002A7E
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006280
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _080062B4
	.align 2, 0
_0800625C: .4byte 0x03002A74
_08006260: .4byte 0x000001FF
_08006264: .4byte 0xFFFFFE00
_08006268: .4byte 0x03002A76
_0800626C: .4byte 0x03000820
_08006270: .4byte 0x000003FF
_08006274: .4byte 0xFFFFFC00
_08006278: .4byte 0x0000015D
_0800627C: .4byte 0x03002A7E
_08006280:
	ldr r3, [r7]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	subs r0, #0x12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r7]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_080062B4:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r6]
	adds r0, #8
	str r0, [r6]
	adds r5, #8
	ldr r1, [sp, #4]
	subs r1, #1
	str r1, [sp, #4]
	cmp r1, #0
	beq _080062CE
	b _08006056
_080062CE:
	movs r2, #1
	str r2, [sp]
	movs r3, #0x1c
	str r3, [sp, #0x28]
	movs r4, #4
	str r4, [sp, #0x2c]
_080062DA:
	ldr r0, [sp, #0x28]
	ldr r1, _08006308 @ =gUnk_03002920
	adds r2, r0, r1
	ldrb r0, [r2, #0x10]
	cmp r0, #1
	beq _080062E8
	b _0800681A
_080062E8:
	ldr r0, _0800630C @ =gUnk_03000830
	ldr r3, [sp, #0x2c]
	adds r1, r3, r0
	ldrb r1, [r1]
	cmp r1, #1
	bne _080062F6
	b _0800657E
_080062F6:
	ldrb r1, [r2, #0xa]
	cmp r1, #0xc
	bhi _08006318
	lsls r0, r1, #3
	ldr r1, _08006310 @ =0x08078FC8
	adds r0, r0, r1
	ldr r4, _08006314 @ =0x0300466C
	str r0, [r4]
	b _08006326
	.align 2, 0
_08006308: .4byte gUnk_03002920
_0800630C: .4byte gUnk_03000830
_08006310: .4byte 0x08078FC8
_08006314: .4byte 0x0300466C
_08006318:
	ldr r0, _0800638C @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, _08006390 @ =0x0300466C
	str r0, [r1]
_08006326:
	ldr r2, _08006390 @ =0x0300466C
	ldr r0, [r2]
	ldrb r1, [r0]
	ldr r6, [r0, #4]
	cmp r1, #0
	bne _08006334
	b _0800657E
_08006334:
	ldr r3, [sp, #0x28]
	str r3, [sp, #8]
	ldr r4, _08006394 @ =gUnk_03002920
	adds r5, r3, r4
	ldr r0, _08006398 @ =0x03000820
	mov ip, r0
	mov sb, r1
_08006342:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080063DC
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _080063A4
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _0800639C @ =0x000001FF
	ands r1, r4
	ldrh r2, [r3, #2]
	ldr r0, _080063A0 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _0800640A
	.align 2, 0
_0800638C: .4byte gUnk_030051DC
_08006390: .4byte 0x0300466C
_08006394: .4byte gUnk_03002920
_08006398: .4byte 0x03000820
_0800639C: .4byte 0x000001FF
_080063A0: .4byte 0xFFFFFE00
_080063A4:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _080063D4 @ =0x000001FF
	ands r1, r4
	ldrh r2, [r3, #2]
	ldr r0, _080063D8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08006400
	.align 2, 0
_080063D4: .4byte 0x000001FF
_080063D8: .4byte 0xFFFFFE00
_080063DC:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006518 @ =0x000001FF
	ands r1, r4
	ldrh r2, [r3, #2]
	ldr r0, _0800651C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
_08006400:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_0800640A:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r7, _08006520 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r6, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r6]
	ldr r1, _08006524 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08006528 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r6, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r6, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r6, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #8]
	ldr r1, _0800652C @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006530
	ldr r3, [r7]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08006560
	.align 2, 0
_08006518: .4byte 0x000001FF
_0800651C: .4byte 0xFFFFFE00
_08006520: .4byte 0x03000820
_08006524: .4byte 0x000003FF
_08006528: .4byte 0xFFFFFC00
_0800652C: .4byte gUnk_03002920
_08006530:
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08006560:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r6, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _0800657E
	b _08006342
_0800657E:
	ldr r1, [sp, #0x2c]
	ldr r2, _080065A4 @ =gUnk_03000830
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #7
	beq _0800658C
	b _0800681A
_0800658C:
	ldr r3, [sp, #0x28]
	ldr r4, _080065A8 @ =gUnk_03002920
	adds r0, r3, r4
	ldrb r1, [r0, #0xa]
	cmp r1, #0xc
	bhi _080065B4
	lsls r0, r1, #3
	ldr r1, _080065AC @ =0x08078FC8
	adds r0, r0, r1
	ldr r1, _080065B0 @ =0x0300466C
	str r0, [r1]
	b _080065C2
	.align 2, 0
_080065A4: .4byte gUnk_03000830
_080065A8: .4byte gUnk_03002920
_080065AC: .4byte 0x08078FC8
_080065B0: .4byte 0x0300466C
_080065B4:
	ldr r0, _08006628 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _0800662C @ =0x0300466C
	str r0, [r2]
_080065C2:
	ldr r3, _0800662C @ =0x0300466C
	ldr r0, [r3]
	ldrb r1, [r0]
	ldr r6, [r0, #4]
	cmp r1, #0
	bne _080065D0
	b _0800681A
_080065D0:
	ldr r4, [sp, #0x28]
	str r4, [sp, #0xc]
	ldr r0, _08006630 @ =gUnk_03002920
	adds r5, r4, r0
	ldr r2, _08006634 @ =0x03000820
	mov ip, r2
	mov sb, r1
_080065DE:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08006678
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08006640
	mov r4, ip
	ldr r3, [r4]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r0, [r5, #4]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _08006638 @ =0x000001FF
	ands r1, r2
	ldrh r2, [r3, #2]
	ldr r0, _0800663C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r4, [r5, #6]
	adds r1, r1, r4
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _080066A6
	.align 2, 0
_08006628: .4byte gUnk_030051DC
_0800662C: .4byte 0x0300466C
_08006630: .4byte gUnk_03002920
_08006634: .4byte 0x03000820
_08006638: .4byte 0x000001FF
_0800663C: .4byte 0xFFFFFE00
_08006640:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006670 @ =0x000001FF
	ands r1, r4
	ldrh r2, [r3, #2]
	ldr r0, _08006674 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _0800669C
	.align 2, 0
_08006670: .4byte 0x000001FF
_08006674: .4byte 0xFFFFFE00
_08006678:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _080067B4 @ =0x000001FF
	ands r1, r4
	ldrh r2, [r3, #2]
	ldr r0, _080067B8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
_0800669C:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_080066A6:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r7, _080067BC @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r6, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r6]
	ldr r1, _080067C0 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080067C4 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r6, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r6, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r6, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0xc]
	ldr r1, _080067C8 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080067CC
	ldr r3, [r7]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _080067FC
	.align 2, 0
_080067B4: .4byte 0x000001FF
_080067B8: .4byte 0xFFFFFE00
_080067BC: .4byte 0x03000820
_080067C0: .4byte 0x000003FF
_080067C4: .4byte 0xFFFFFC00
_080067C8: .4byte gUnk_03002920
_080067CC:
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_080067FC:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r6, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _0800681A
	b _080065DE
_0800681A:
	ldr r1, [sp, #0x28]
	adds r1, #0x1c
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x2c]
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp]
	cmp r3, #8
	bgt _08006832
	b _080062DA
_08006832:
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #0x24]
_0800683A:
	ldr r2, [sp, #0x24]
	ldr r3, _0800686C @ =gUnk_03002920
	adds r1, r2, r3
	ldrb r0, [r1, #0x11]
	cmp r0, #0x34
	bne _08006848
	b _08006AE2
_08006848:
	ldr r0, [sp]
	subs r0, #0xb
	cmp r0, #1
	bhi _08006852
	b _08006AE2
_08006852:
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	beq _0800685A
	b _08006AE2
_0800685A:
	ldrb r1, [r1, #0xa]
	cmp r1, #0xc
	bhi _08006878
	lsls r0, r1, #3
	ldr r1, _08006870 @ =0x08078FC8
	adds r0, r0, r1
	ldr r4, _08006874 @ =0x0300466C
	str r0, [r4]
	b _08006886
	.align 2, 0
_0800686C: .4byte gUnk_03002920
_08006870: .4byte 0x08078FC8
_08006874: .4byte 0x0300466C
_08006878:
	ldr r0, _080068EC @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, _080068F0 @ =0x0300466C
	str r0, [r1]
_08006886:
	ldr r2, _080068F0 @ =0x0300466C
	ldr r0, [r2]
	ldrb r1, [r0]
	ldr r6, [r0, #4]
	cmp r1, #0
	bne _08006894
	b _08006AE2
_08006894:
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x10]
	ldr r4, _080068F4 @ =gUnk_03002920
	adds r5, r3, r4
	ldr r0, _080068F8 @ =0x03000820
	mov ip, r0
	mov sb, r1
_080068A2:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800693C
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08006904
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _080068FC @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006900 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _0800696C
	.align 2, 0
_080068EC: .4byte gUnk_030051DC
_080068F0: .4byte 0x0300466C
_080068F4: .4byte gUnk_03002920
_080068F8: .4byte 0x03000820
_080068FC: .4byte 0x000001FF
_08006900: .4byte 0xFFFFFE00
_08006904:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006934 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006938 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08006962
	.align 2, 0
_08006934: .4byte 0x000001FF
_08006938: .4byte 0xFFFFFE00
_0800693C:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006A7C @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006A80 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
_08006962:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_0800696C:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r7, _08006A84 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r6, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r6]
	ldr r1, _08006A88 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08006A8C @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r6, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r6, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r6, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x10]
	ldr r1, _08006A90 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006A94
	ldr r3, [r7]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08006AC4
	.align 2, 0
_08006A7C: .4byte 0x000001FF
_08006A80: .4byte 0xFFFFFE00
_08006A84: .4byte 0x03000820
_08006A88: .4byte 0x000003FF
_08006A8C: .4byte 0xFFFFFC00
_08006A90: .4byte gUnk_03002920
_08006A94:
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08006AC4:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r6, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _08006AE2
	b _080068A2
_08006AE2:
	ldr r1, [sp, #0x24]
	adds r1, #0x1c
	str r1, [sp, #0x24]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #0xc
	bgt _08006AF4
	b _0800683A
_08006AF4:
	movs r3, #0xd
	str r3, [sp]
	ldr r4, _08006B28 @ =gUnk_03005428
	ldrb r4, [r4]
	cmp r3, r4
	blt _08006B02
	b _08006DB8
_08006B02:
	movs r0, #0xb6
	lsls r0, r0, #1
	str r0, [sp, #0x20]
_08006B08:
	ldr r2, [sp, #0x20]
	ldr r3, _08006B2C @ =gUnk_03002920
	adds r1, r2, r3
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	beq _08006B16
	b _08006DA2
_08006B16:
	ldrb r0, [r1, #0xa]
	cmp r0, #0xc
	bhi _08006B38
	lsls r0, r0, #3
	ldr r4, _08006B30 @ =0x08078FC8
	adds r0, r0, r4
	ldr r1, _08006B34 @ =0x0300466C
	str r0, [r1]
	b _08006B46
	.align 2, 0
_08006B28: .4byte gUnk_03005428
_08006B2C: .4byte gUnk_03002920
_08006B30: .4byte 0x08078FC8
_08006B34: .4byte 0x0300466C
_08006B38:
	lsls r1, r0, #3
	subs r1, #0x68
	ldr r2, _08006BAC @ =gUnk_030051DC
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r3, _08006BB0 @ =0x0300466C
	str r0, [r3]
_08006B46:
	ldr r4, _08006BB0 @ =0x0300466C
	ldr r0, [r4]
	ldrb r1, [r0]
	ldr r6, [r0, #4]
	cmp r1, #0
	bne _08006B54
	b _08006DA2
_08006B54:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x14]
	ldr r2, _08006BB4 @ =gUnk_03002920
	adds r5, r0, r2
	ldr r3, _08006BB8 @ =0x03000820
	mov ip, r3
	mov sb, r1
_08006B62:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08006BFC
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08006BC4
	mov r4, ip
	ldr r3, [r4]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r0, [r5, #4]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _08006BBC @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006BC0 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r4, [r5, #6]
	adds r1, r1, r4
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08006C2C
	.align 2, 0
_08006BAC: .4byte gUnk_030051DC
_08006BB0: .4byte 0x0300466C
_08006BB4: .4byte gUnk_03002920
_08006BB8: .4byte 0x03000820
_08006BBC: .4byte 0x000001FF
_08006BC0: .4byte 0xFFFFFE00
_08006BC4:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006BF4 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006BF8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08006C22
	.align 2, 0
_08006BF4: .4byte 0x000001FF
_08006BF8: .4byte 0xFFFFFE00
_08006BFC:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006D3C @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006D40 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
_08006C22:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08006C2C:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r7, _08006D44 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r6, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r6]
	ldr r1, _08006D48 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08006D4C @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r6, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r6, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r6, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x14]
	ldr r1, _08006D50 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08006D54
	ldr r3, [r7]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08006D84
	.align 2, 0
_08006D3C: .4byte 0x000001FF
_08006D40: .4byte 0xFFFFFE00
_08006D44: .4byte 0x03000820
_08006D48: .4byte 0x000003FF
_08006D4C: .4byte 0xFFFFFC00
_08006D50: .4byte gUnk_03002920
_08006D54:
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08006D84:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r6, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _08006DA2
	b _08006B62
_08006DA2:
	ldr r1, [sp, #0x20]
	adds r1, #0x1c
	str r1, [sp, #0x20]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	ldr r3, _08006DFC @ =gUnk_03005428
	ldrb r3, [r3]
	cmp r2, r3
	bge _08006DB8
	b _08006B08
_08006DB8:
	movs r4, #1
	str r4, [sp]
_08006DBC:
	ldr r1, [sp]
	lsls r0, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #2
	ldr r3, _08006E00 @ =gUnk_03002920
	adds r2, r1, r3
	ldrb r1, [r2, #0x10]
	adds r3, r0, #0
	ldr r4, [sp]
	adds r4, #1
	str r4, [sp, #0x1c]
	cmp r1, #1
	beq _08006DD8
	b _08007086
_08006DD8:
	ldr r0, _08006E04 @ =gUnk_03000830
	ldr r4, [sp]
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _08006DE8
	b _08007086
_08006DE8:
	ldrb r1, [r2, #0xa]
	cmp r1, #0xc
	bhi _08006E10
	lsls r0, r1, #3
	ldr r1, _08006E08 @ =0x08078FC8
	adds r0, r0, r1
	ldr r1, _08006E0C @ =0x0300466C
	str r0, [r1]
	b _08006E1E
	.align 2, 0
_08006DFC: .4byte gUnk_03005428
_08006E00: .4byte gUnk_03002920
_08006E04: .4byte gUnk_03000830
_08006E08: .4byte 0x08078FC8
_08006E0C: .4byte 0x0300466C
_08006E10:
	ldr r0, _08006E90 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _08006E94 @ =0x0300466C
	str r0, [r2]
_08006E1E:
	ldr r4, _08006E94 @ =0x0300466C
	ldr r0, [r4]
	ldrb r1, [r0]
	ldr r6, [r0, #4]
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp, #0x1c]
	cmp r1, #0
	bne _08006E32
	b _08007086
_08006E32:
	ldr r2, [sp]
	subs r0, r3, r2
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	ldr r3, _08006E98 @ =gUnk_03002920
	adds r5, r0, r3
	ldr r4, _08006E9C @ =0x03000820
	mov ip, r4
	mov sb, r1
_08006E44:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08006EE0
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08006EA8
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _08006EA0 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006EA4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08006F10
	.align 2, 0
_08006E90: .4byte gUnk_030051DC
_08006E94: .4byte 0x0300466C
_08006E98: .4byte gUnk_03002920
_08006E9C: .4byte 0x03000820
_08006EA0: .4byte 0x000001FF
_08006EA4: .4byte 0xFFFFFE00
_08006EA8:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08006ED8 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08006EDC @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08006F06
	.align 2, 0
_08006ED8: .4byte 0x000001FF
_08006EDC: .4byte 0xFFFFFE00
_08006EE0:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08007020 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007024 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r6, #4]
_08006F06:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08006F10:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r7, _08007028 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r6, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r6]
	ldr r1, _0800702C @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08007030 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r6, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r6, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r6, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x18]
	ldr r1, _08007034 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007038
	ldr r3, [r7]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08007068
	.align 2, 0
_08007020: .4byte 0x000001FF
_08007024: .4byte 0xFFFFFE00
_08007028: .4byte 0x03000820
_0800702C: .4byte 0x000003FF
_08007030: .4byte 0xFFFFFC00
_08007034: .4byte gUnk_03002920
_08007038:
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r7]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08007068:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r6, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _08007086
	b _08006E44
_08007086:
	ldr r1, [sp, #0x1c]
	str r1, [sp]
	cmp r1, #8
	bgt _08007090
	b _08006DBC
_08007090:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080070A0
sub_080070A0: @ 0x080070A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	bl sub_0800A468
	ldr r1, _080070E0 @ =0x03000820
	ldr r0, _080070E4 @ =gUnk_03004800
	str r0, [r1]
	ldr r1, _080070E8 @ =gUnk_03002920
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _080070C6
	b _080073A4
_080070C6:
	movs r3, #0x9f
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _080070F4
	ldr r0, _080070EC @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _080070F0 @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _08007104
	.align 2, 0
_080070E0: .4byte 0x03000820
_080070E4: .4byte gUnk_03004800
_080070E8: .4byte gUnk_03002920
_080070EC: .4byte 0x0300466C
_080070F0: .4byte 0x08078FC8
_080070F4:
	ldr r2, _0800717C @ =0x0300466C
	ldr r0, _08007180 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_08007104:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	ldr r4, _08007184 @ =gUnk_03002920
	str r4, [sp, #0x44]
	cmp r1, #0
	bne _08007114
	b _080073A4
_08007114:
	str r4, [sp, #4]
	ldr r7, _08007188 @ =0x03000820
	adds r0, r4, #0
	ldr r2, _0800718C @ =0x0000013F
	adds r0, r0, r2
	mov sb, r0
	mov sl, r1
_08007122:
	ldr r3, _08007190 @ =0x03002A62
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080071E8
	ldr r4, [sp, #0x44]
	ldr r1, _08007194 @ =0x00000145
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _080071A8
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r2, _08007198 @ =0x03002A58
	ldrh r2, [r2]
	adds r1, r1, r2
	mov r4, sb
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _0800719C @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080071A0 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r4, _080071A4 @ =0x03002A5A
	ldrb r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _0800721E
	.align 2, 0
_0800717C: .4byte 0x0300466C
_08007180: .4byte gUnk_030051DC
_08007184: .4byte gUnk_03002920
_08007188: .4byte 0x03000820
_0800718C: .4byte 0x0000013F
_08007190: .4byte 0x03002A62
_08007194: .4byte 0x00000145
_08007198: .4byte 0x03002A58
_0800719C: .4byte 0x000001FF
_080071A0: .4byte 0xFFFFFE00
_080071A4: .4byte 0x03002A5A
_080071A8:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _080071DC @ =0x03002A58
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _080071E0 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080071E4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08007210
	.align 2, 0
_080071DC: .4byte 0x03002A58
_080071E0: .4byte 0x000001FF
_080071E4: .4byte 0xFFFFFE00
_080071E8:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08007330 @ =0x03002A58
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08007334 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007338 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_08007210:
	ldr r0, _0800733C @ =0x03002A5A
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_0800721E:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08007340 @ =0x03000820
	ldr r3, [r7]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrh r0, [r5]
	ldr r1, _08007344 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08007348 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r7]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r7]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r7]
	ldr r0, [sp, #4]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r7]
	ldr r0, [sp, #4]
	ldr r1, _0800734C @ =0x00000141
	adds r4, r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldr r1, _08007350 @ =0x03002A62
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007354
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08007388
	.align 2, 0
_08007330: .4byte 0x03002A58
_08007334: .4byte 0x000001FF
_08007338: .4byte 0xFFFFFE00
_0800733C: .4byte 0x03002A5A
_08007340: .4byte 0x03000820
_08007344: .4byte 0x000003FF
_08007348: .4byte 0xFFFFFC00
_0800734C: .4byte 0x00000141
_08007350: .4byte 0x03002A62
_08007354:
	ldr r3, [r6]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_08007388:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	adds r5, #8
	movs r3, #1
	rsbs r3, r3, #0
	add sl, r3
	mov r4, sl
	cmp r4, #0
	beq _080073A4
	b _08007122
_080073A4:
	ldr r1, _080073D0 @ =gUnk_03002920
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	str r1, [sp, #0x44]
	cmp r0, #1
	beq _080073B6
	b _0800767E
_080073B6:
	movs r3, #0xad
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _080073DC
	ldr r0, _080073D4 @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _080073D8 @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _080073EC
	.align 2, 0
_080073D0: .4byte gUnk_03002920
_080073D4: .4byte 0x0300466C
_080073D8: .4byte 0x08078FC8
_080073DC:
	ldr r2, _08007460 @ =0x0300466C
	ldr r0, _08007464 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_080073EC:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	cmp r1, #0
	bne _080073F8
	b _0800767E
_080073F8:
	ldr r4, _08007468 @ =gUnk_03002920
	mov sb, r4
	ldr r7, _0800746C @ =0x03000820
	ldr r0, _08007470 @ =0x0000015B
	add r0, sb
	mov sl, r0
	str r1, [sp, #8]
_08007406:
	ldr r1, _08007474 @ =0x03002A7E
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080074CC
	ldr r2, [sp, #0x44]
	ldr r3, _08007478 @ =0x00000161
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0800748C
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _0800747C @ =0x03002A74
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _08007480 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007484 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r0, _08007488 @ =0x03002A76
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08007502
	.align 2, 0
_08007460: .4byte 0x0300466C
_08007464: .4byte gUnk_030051DC
_08007468: .4byte gUnk_03002920
_0800746C: .4byte 0x03000820
_08007470: .4byte 0x0000015B
_08007474: .4byte 0x03002A7E
_08007478: .4byte 0x00000161
_0800747C: .4byte 0x03002A74
_08007480: .4byte 0x000001FF
_08007484: .4byte 0xFFFFFE00
_08007488: .4byte 0x03002A76
_0800748C:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _080074C0 @ =0x03002A74
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _080074C4 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080074C8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _080074F4
	.align 2, 0
_080074C0: .4byte 0x03002A74
_080074C4: .4byte 0x000001FF
_080074C8: .4byte 0xFFFFFE00
_080074CC:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _0800760C @ =0x03002A74
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08007610 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007614 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_080074F4:
	ldr r0, _08007618 @ =0x03002A76
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08007502:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _0800761C @ =0x03000820
	ldr r3, [r7]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrh r0, [r5]
	ldr r1, _08007620 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08007624 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r7]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r7]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r7]
	movs r0, #0xae
	lsls r0, r0, #1
	add r0, sb
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r7]
	ldr r4, _08007628 @ =0x0000015D
	add r4, sb
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldr r1, _0800762C @ =0x03002A7E
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007630
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08007664
	.align 2, 0
_0800760C: .4byte 0x03002A74
_08007610: .4byte 0x000001FF
_08007614: .4byte 0xFFFFFE00
_08007618: .4byte 0x03002A76
_0800761C: .4byte 0x03000820
_08007620: .4byte 0x000003FF
_08007624: .4byte 0xFFFFFC00
_08007628: .4byte 0x0000015D
_0800762C: .4byte 0x03002A7E
_08007630:
	ldr r3, [r6]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	subs r0, #0x12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_08007664:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	adds r5, #8
	ldr r1, [sp, #8]
	subs r1, #1
	str r1, [sp, #8]
	cmp r1, #0
	beq _0800767E
	b _08007406
_0800767E:
	ldr r2, [sp, #0x44]
	movs r3, #0xbe
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800768E
	b _0800795E
_0800768E:
	movs r4, #0xbb
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _080076B0
	ldr r0, _080076A8 @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _080076AC @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _080076C0
	.align 2, 0
_080076A8: .4byte 0x0300466C
_080076AC: .4byte 0x08078FC8
_080076B0:
	ldr r2, _08007734 @ =0x0300466C
	ldr r0, _08007738 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_080076C0:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	cmp r1, #0
	bne _080076CC
	b _08007952
_080076CC:
	ldr r0, _0800773C @ =gUnk_03002920
	mov sb, r0
	ldr r7, _08007740 @ =0x03000820
	ldr r2, _08007744 @ =0x00000177
	add r2, sb
	mov sl, r2
	str r1, [sp, #0xc]
_080076DA:
	ldr r3, _08007748 @ =0x03002A9A
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080077A0
	ldr r4, [sp, #0x44]
	ldr r1, _0800774C @ =0x0000017D
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08007760
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r2, _08007750 @ =0x03002A90
	ldrh r2, [r2]
	adds r1, r1, r2
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _08007754 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007758 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r4, _0800775C @ =0x03002A92
	ldrb r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _080077D6
	.align 2, 0
_08007734: .4byte 0x0300466C
_08007738: .4byte gUnk_030051DC
_0800773C: .4byte gUnk_03002920
_08007740: .4byte 0x03000820
_08007744: .4byte 0x00000177
_08007748: .4byte 0x03002A9A
_0800774C: .4byte 0x0000017D
_08007750: .4byte 0x03002A90
_08007754: .4byte 0x000001FF
_08007758: .4byte 0xFFFFFE00
_0800775C: .4byte 0x03002A92
_08007760:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007794 @ =0x03002A90
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08007798 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800779C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _080077C8
	.align 2, 0
_08007794: .4byte 0x03002A90
_08007798: .4byte 0x000001FF
_0800779C: .4byte 0xFFFFFE00
_080077A0:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _080078E0 @ =0x03002A90
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _080078E4 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080078E8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_080077C8:
	ldr r0, _080078EC @ =0x03002A92
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_080077D6:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _080078F0 @ =0x03000820
	ldr r3, [r7]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrh r0, [r5]
	ldr r1, _080078F4 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080078F8 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r7]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r7]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r7]
	movs r0, #0xbc
	lsls r0, r0, #1
	add r0, sb
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r7]
	ldr r4, _080078FC @ =0x00000179
	add r4, sb
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldr r1, _08007900 @ =0x03002A9A
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007904
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08007938
	.align 2, 0
_080078E0: .4byte 0x03002A90
_080078E4: .4byte 0x000001FF
_080078E8: .4byte 0xFFFFFE00
_080078EC: .4byte 0x03002A92
_080078F0: .4byte 0x03000820
_080078F4: .4byte 0x000003FF
_080078F8: .4byte 0xFFFFFC00
_080078FC: .4byte 0x00000179
_08007900: .4byte 0x03002A9A
_08007904:
	ldr r3, [r6]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	subs r0, #0x12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_08007938:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	adds r5, #8
	ldr r1, [sp, #0xc]
	subs r1, #1
	str r1, [sp, #0xc]
	cmp r1, #0
	beq _08007952
	b _080076DA
_08007952:
	ldr r2, [sp, #0x44]
	movs r3, #0xbe
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0
	strb r0, [r1]
_0800795E:
	ldr r4, [sp, #0x44]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800796E
	b _08007C3E
_0800796E:
	movs r2, #0xc9
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _08007990
	ldr r0, _08007988 @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _0800798C @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _080079A0
	.align 2, 0
_08007988: .4byte 0x0300466C
_0800798C: .4byte 0x08078FC8
_08007990:
	ldr r2, _08007A14 @ =0x0300466C
	ldr r0, _08007A18 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_080079A0:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	cmp r1, #0
	bne _080079AC
	b _08007C32
_080079AC:
	ldr r3, _08007A1C @ =gUnk_03002920
	mov sb, r3
	ldr r7, _08007A20 @ =0x03000820
	ldr r4, _08007A24 @ =0x00000193
	add r4, sb
	mov sl, r4
	str r1, [sp, #0x10]
_080079BA:
	ldr r1, _08007A28 @ =0x03002AB6
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08007A80
	ldr r2, [sp, #0x44]
	ldr r3, _08007A2C @ =0x00000199
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08007A40
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007A30 @ =0x03002AAC
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _08007A34 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007A38 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r0, _08007A3C @ =0x03002AAE
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08007AB6
	.align 2, 0
_08007A14: .4byte 0x0300466C
_08007A18: .4byte gUnk_030051DC
_08007A1C: .4byte gUnk_03002920
_08007A20: .4byte 0x03000820
_08007A24: .4byte 0x00000193
_08007A28: .4byte 0x03002AB6
_08007A2C: .4byte 0x00000199
_08007A30: .4byte 0x03002AAC
_08007A34: .4byte 0x000001FF
_08007A38: .4byte 0xFFFFFE00
_08007A3C: .4byte 0x03002AAE
_08007A40:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007A74 @ =0x03002AAC
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08007A78 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007A7C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08007AA8
	.align 2, 0
_08007A74: .4byte 0x03002AAC
_08007A78: .4byte 0x000001FF
_08007A7C: .4byte 0xFFFFFE00
_08007A80:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08007BC0 @ =0x03002AAC
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08007BC4 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007BC8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_08007AA8:
	ldr r0, _08007BCC @ =0x03002AAE
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08007AB6:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08007BD0 @ =0x03000820
	ldr r3, [r7]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrh r0, [r5]
	ldr r1, _08007BD4 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08007BD8 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r7]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r7]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r7]
	movs r0, #0xca
	lsls r0, r0, #1
	add r0, sb
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r7]
	ldr r4, _08007BDC @ =0x00000195
	add r4, sb
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldr r1, _08007BE0 @ =0x03002AB6
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007BE4
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08007C18
	.align 2, 0
_08007BC0: .4byte 0x03002AAC
_08007BC4: .4byte 0x000001FF
_08007BC8: .4byte 0xFFFFFE00
_08007BCC: .4byte 0x03002AAE
_08007BD0: .4byte 0x03000820
_08007BD4: .4byte 0x000003FF
_08007BD8: .4byte 0xFFFFFC00
_08007BDC: .4byte 0x00000195
_08007BE0: .4byte 0x03002AB6
_08007BE4:
	ldr r3, [r6]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	subs r0, #0x12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_08007C18:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	adds r5, #8
	ldr r1, [sp, #0x10]
	subs r1, #1
	str r1, [sp, #0x10]
	cmp r1, #0
	beq _08007C32
	b _080079BA
_08007C32:
	ldr r2, [sp, #0x44]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0
	strb r0, [r1]
_08007C3E:
	ldr r4, [sp, #0x44]
	movs r1, #0xda
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08007C4E
	b _08007F1E
_08007C4E:
	movs r2, #0xd7
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _08007C70
	ldr r0, _08007C68 @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _08007C6C @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _08007C80
	.align 2, 0
_08007C68: .4byte 0x0300466C
_08007C6C: .4byte 0x08078FC8
_08007C70:
	ldr r2, _08007CF4 @ =0x0300466C
	ldr r0, _08007CF8 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_08007C80:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	cmp r1, #0
	bne _08007C8C
	b _08007F12
_08007C8C:
	ldr r3, _08007CFC @ =gUnk_03002920
	mov sb, r3
	ldr r7, _08007D00 @ =0x03000820
	ldr r4, _08007D04 @ =0x000001AF
	add r4, sb
	mov sl, r4
	str r1, [sp, #0x14]
_08007C9A:
	ldr r1, _08007D08 @ =0x03002AD2
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08007D60
	ldr r2, [sp, #0x44]
	ldr r3, _08007D0C @ =0x000001B5
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08007D20
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007D10 @ =0x03002AC8
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _08007D14 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007D18 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r0, _08007D1C @ =0x03002ACA
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08007D96
	.align 2, 0
_08007CF4: .4byte 0x0300466C
_08007CF8: .4byte gUnk_030051DC
_08007CFC: .4byte gUnk_03002920
_08007D00: .4byte 0x03000820
_08007D04: .4byte 0x000001AF
_08007D08: .4byte 0x03002AD2
_08007D0C: .4byte 0x000001B5
_08007D10: .4byte 0x03002AC8
_08007D14: .4byte 0x000001FF
_08007D18: .4byte 0xFFFFFE00
_08007D1C: .4byte 0x03002ACA
_08007D20:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007D54 @ =0x03002AC8
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08007D58 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007D5C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08007D88
	.align 2, 0
_08007D54: .4byte 0x03002AC8
_08007D58: .4byte 0x000001FF
_08007D5C: .4byte 0xFFFFFE00
_08007D60:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08007EA0 @ =0x03002AC8
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08007EA4 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007EA8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_08007D88:
	ldr r0, _08007EAC @ =0x03002ACA
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08007D96:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08007EB0 @ =0x03000820
	ldr r3, [r7]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrh r0, [r5]
	ldr r1, _08007EB4 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08007EB8 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r7]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r7]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r7]
	movs r0, #0xd8
	lsls r0, r0, #1
	add r0, sb
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r7]
	ldr r4, _08007EBC @ =0x000001B1
	add r4, sb
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldr r1, _08007EC0 @ =0x03002AD2
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08007EC4
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08007EF8
	.align 2, 0
_08007EA0: .4byte 0x03002AC8
_08007EA4: .4byte 0x000001FF
_08007EA8: .4byte 0xFFFFFE00
_08007EAC: .4byte 0x03002ACA
_08007EB0: .4byte 0x03000820
_08007EB4: .4byte 0x000003FF
_08007EB8: .4byte 0xFFFFFC00
_08007EBC: .4byte 0x000001B1
_08007EC0: .4byte 0x03002AD2
_08007EC4:
	ldr r3, [r6]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	subs r0, #0x12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_08007EF8:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	adds r5, #8
	ldr r1, [sp, #0x14]
	subs r1, #1
	str r1, [sp, #0x14]
	cmp r1, #0
	beq _08007F12
	b _08007C9A
_08007F12:
	ldr r2, [sp, #0x44]
	movs r3, #0xda
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0
	strb r0, [r1]
_08007F1E:
	ldr r4, [sp, #0x44]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08007F2E
	b _080081FE
_08007F2E:
	movs r2, #0xe5
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _08007F50
	ldr r0, _08007F48 @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _08007F4C @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _08007F60
	.align 2, 0
_08007F48: .4byte 0x0300466C
_08007F4C: .4byte 0x08078FC8
_08007F50:
	ldr r2, _08007FD4 @ =0x0300466C
	ldr r0, _08007FD8 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_08007F60:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	cmp r1, #0
	bne _08007F6C
	b _080081F2
_08007F6C:
	ldr r3, _08007FDC @ =gUnk_03002920
	mov sb, r3
	ldr r7, _08007FE0 @ =0x03000820
	ldr r4, _08007FE4 @ =0x000001CB
	add r4, sb
	mov sl, r4
	str r1, [sp, #0x18]
_08007F7A:
	ldr r1, _08007FE8 @ =0x03002AEE
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08008040
	ldr r2, [sp, #0x44]
	ldr r3, _08007FEC @ =0x000001D1
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08008000
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007FF0 @ =0x03002AE4
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _08007FF4 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08007FF8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r0, _08007FFC @ =0x03002AE6
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08008076
	.align 2, 0
_08007FD4: .4byte 0x0300466C
_08007FD8: .4byte gUnk_030051DC
_08007FDC: .4byte gUnk_03002920
_08007FE0: .4byte 0x03000820
_08007FE4: .4byte 0x000001CB
_08007FE8: .4byte 0x03002AEE
_08007FEC: .4byte 0x000001D1
_08007FF0: .4byte 0x03002AE4
_08007FF4: .4byte 0x000001FF
_08007FF8: .4byte 0xFFFFFE00
_08007FFC: .4byte 0x03002AE6
_08008000:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08008034 @ =0x03002AE4
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008038 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800803C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08008068
	.align 2, 0
_08008034: .4byte 0x03002AE4
_08008038: .4byte 0x000001FF
_0800803C: .4byte 0xFFFFFE00
_08008040:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08008180 @ =0x03002AE4
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008184 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008188 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_08008068:
	ldr r0, _0800818C @ =0x03002AE6
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08008076:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08008190 @ =0x03000820
	ldr r3, [r7]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrh r0, [r5]
	ldr r1, _08008194 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08008198 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r7]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r7]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r7]
	movs r0, #0xe6
	lsls r0, r0, #1
	add r0, sb
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r7]
	ldr r4, _0800819C @ =0x000001CD
	add r4, sb
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldr r1, _080081A0 @ =0x03002AEE
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080081A4
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _080081D8
	.align 2, 0
_08008180: .4byte 0x03002AE4
_08008184: .4byte 0x000001FF
_08008188: .4byte 0xFFFFFE00
_0800818C: .4byte 0x03002AE6
_08008190: .4byte 0x03000820
_08008194: .4byte 0x000003FF
_08008198: .4byte 0xFFFFFC00
_0800819C: .4byte 0x000001CD
_080081A0: .4byte 0x03002AEE
_080081A4:
	ldr r3, [r6]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	subs r0, #0x12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_080081D8:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	adds r5, #8
	ldr r1, [sp, #0x18]
	subs r1, #1
	str r1, [sp, #0x18]
	cmp r1, #0
	beq _080081F2
	b _08007F7A
_080081F2:
	ldr r2, [sp, #0x44]
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0
	strb r0, [r1]
_080081FE:
	movs r4, #1
	str r4, [sp]
	movs r0, #0x1c
	str r0, [sp, #0x5c]
_08008206:
	ldr r1, [sp, #0x5c]
	ldr r3, [sp, #0x44]
	adds r2, r1, r3
	ldrb r0, [r2, #0x10]
	cmp r0, #1
	beq _08008214
	b _080084AE
_08008214:
	ldr r0, _08008238 @ =gUnk_03000830
	ldr r4, [sp]
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #1
	bne _08008224
	b _080084AE
_08008224:
	ldrb r1, [r2, #0xa]
	cmp r1, #0xc
	bhi _08008244
	lsls r0, r1, #3
	ldr r1, _0800823C @ =0x08078FC8
	adds r0, r0, r1
	ldr r1, _08008240 @ =0x0300466C
	str r0, [r1]
	b _08008252
	.align 2, 0
_08008238: .4byte gUnk_03000830
_0800823C: .4byte 0x08078FC8
_08008240: .4byte 0x0300466C
_08008244:
	ldr r0, _080082B8 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _080082BC @ =0x0300466C
	str r0, [r2]
_08008252:
	ldr r3, _080082BC @ =0x0300466C
	ldr r0, [r3]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	cmp r1, #0
	bne _08008260
	b _080084AE
_08008260:
	ldr r4, [sp, #0x5c]
	str r4, [sp, #0x1c]
	ldr r0, _080082C0 @ =gUnk_03002920
	adds r5, r4, r0
	ldr r2, _080082C4 @ =0x03000820
	mov ip, r2
	mov sb, r1
_0800826E:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08008308
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _080082D0
	mov r4, ip
	ldr r3, [r4]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r0, [r5, #4]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _080082C8 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080082CC @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r4, [r5, #6]
	adds r1, r1, r4
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08008338
	.align 2, 0
_080082B8: .4byte gUnk_030051DC
_080082BC: .4byte 0x0300466C
_080082C0: .4byte gUnk_03002920
_080082C4: .4byte 0x03000820
_080082C8: .4byte 0x000001FF
_080082CC: .4byte 0xFFFFFE00
_080082D0:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008300 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008304 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _0800832E
	.align 2, 0
_08008300: .4byte 0x000001FF
_08008304: .4byte 0xFFFFFE00
_08008308:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008448 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800844C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_0800832E:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08008338:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08008450 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _08008454 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08008458 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x1c]
	ldr r1, _0800845C @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08008460
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08008490
	.align 2, 0
_08008448: .4byte 0x000001FF
_0800844C: .4byte 0xFFFFFE00
_08008450: .4byte 0x03000820
_08008454: .4byte 0x000003FF
_08008458: .4byte 0xFFFFFC00
_0800845C: .4byte gUnk_03002920
_08008460:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08008490:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _080084AE
	b _0800826E
_080084AE:
	ldr r1, [sp, #0x5c]
	adds r1, #0x1c
	str r1, [sp, #0x5c]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #8
	bgt _080084C0
	b _08008206
_080084C0:
	ldr r3, _0800850C @ =gUnk_03004C20
	ldrh r1, [r3, #0xc]
	movs r0, #0xc2
	lsls r0, r0, #2
	cmp r1, r0
	beq _080084D0
	bl sub_08009064
_080084D0:
	movs r4, #0
	str r4, [sp]
_080084D4:
	ldr r0, [sp]
	adds r0, #0x16
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, [sp, #0x44]
	adds r2, r1, r3
	ldrb r1, [r2, #0xf]
	subs r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, [sp]
	adds r4, #1
	str r4, [sp, #0x40]
	adds r3, r0, #0
	cmp r1, #1
	bls _080084F8
	b _0800879A
_080084F8:
	ldrb r1, [r2, #0xa]
	cmp r1, #0xc
	bhi _08008518
	lsls r0, r1, #3
	ldr r1, _08008510 @ =0x08078FC8
	adds r0, r0, r1
	ldr r1, _08008514 @ =0x0300466C
	str r0, [r1]
	b _08008526
	.align 2, 0
_0800850C: .4byte gUnk_03004C20
_08008510: .4byte 0x08078FC8
_08008514: .4byte 0x0300466C
_08008518:
	ldr r0, _08008598 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _0800859C @ =0x0300466C
	str r0, [r2]
_08008526:
	ldr r4, _0800859C @ =0x0300466C
	ldr r0, [r4]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp, #0x40]
	cmp r1, #0
	bne _0800853A
	b _0800879A
_0800853A:
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	str r0, [sp, #0x20]
	ldr r2, _080085A0 @ =gUnk_03002920
	adds r5, r0, r2
	ldr r3, _080085A4 @ =0x03000820
	mov ip, r3
	mov sb, r1
_0800854C:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080085E8
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _080085B0
	mov r4, ip
	ldr r3, [r4]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r0, [r5, #4]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _080085A8 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080085AC @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r4, [r5, #6]
	adds r1, r1, r4
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08008618
	.align 2, 0
_08008598: .4byte gUnk_030051DC
_0800859C: .4byte 0x0300466C
_080085A0: .4byte gUnk_03002920
_080085A4: .4byte 0x03000820
_080085A8: .4byte 0x000001FF
_080085AC: .4byte 0xFFFFFE00
_080085B0:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _080085E0 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080085E4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _0800860E
	.align 2, 0
_080085E0: .4byte 0x000001FF
_080085E4: .4byte 0xFFFFFE00
_080085E8:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008734 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008738 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_0800860E:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08008618:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _0800873C @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _08008740 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08008744 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x20]
	ldr r1, _08008748 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r1, [sp]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08008748 @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800874C
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _0800877C
	.align 2, 0
_08008734: .4byte 0x000001FF
_08008738: .4byte 0xFFFFFE00
_0800873C: .4byte 0x03000820
_08008740: .4byte 0x000003FF
_08008744: .4byte 0xFFFFFC00
_08008748: .4byte gUnk_03002920
_0800874C:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_0800877C:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _0800879A
	b _0800854C
_0800879A:
	ldr r1, [sp, #0x40]
	str r1, [sp]
	cmp r1, #9
	bgt _080087A4
	b _080084D4
_080087A4:
	ldr r2, _080087DC @ =gUnk_03005400
	ldrb r0, [r2, #0xa]
	cmp r0, #0xd
	beq _080087AE
	b _08008A8E
_080087AE:
	ldrh r0, [r2, #6]
	cmp r0, #0
	bne _080087B6
	b _08008A8E
_080087B6:
	ldr r3, [sp, #0x44]
	movs r4, #0x82
	lsls r4, r4, #2
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #1
	beq _080087C6
	b _08008A8E
_080087C6:
	ldr r1, _080087E0 @ =0x00000202
	adds r0, r3, r1
	ldrb r1, [r0]
	cmp r1, #0xc
	bhi _080087EC
	ldr r0, _080087E4 @ =0x0300466C
	lsls r1, r1, #3
	ldr r2, _080087E8 @ =0x08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _080087FC
	.align 2, 0
_080087DC: .4byte gUnk_03005400
_080087E0: .4byte 0x00000202
_080087E4: .4byte 0x0300466C
_080087E8: .4byte 0x08078FC8
_080087EC:
	ldr r2, _08008870 @ =0x0300466C
	ldr r0, _08008874 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r2, #0
_080087FC:
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r5, [r0, #4]
	cmp r1, #0
	bne _08008808
	b _08008A8E
_08008808:
	ldr r2, _08008878 @ =gUnk_03002920
	mov sl, r2
	ldr r7, _0800887C @ =0x03000820
	ldr r3, _08008880 @ =0x00000203
	add r3, sl
	mov sb, r3
	str r1, [sp, #0x24]
_08008816:
	ldr r4, _08008884 @ =0x03002B26
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080088DC
	ldr r1, [sp, #0x44]
	ldr r2, _08008888 @ =0x00000209
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _0800889C
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _0800888C @ =0x03002B1C
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _08008890 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008894 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r0, _08008898 @ =0x03002B1E
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08008912
	.align 2, 0
_08008870: .4byte 0x0300466C
_08008874: .4byte gUnk_030051DC
_08008878: .4byte gUnk_03002920
_0800887C: .4byte 0x03000820
_08008880: .4byte 0x00000203
_08008884: .4byte 0x03002B26
_08008888: .4byte 0x00000209
_0800888C: .4byte 0x03002B1C
_08008890: .4byte 0x000001FF
_08008894: .4byte 0xFFFFFE00
_08008898: .4byte 0x03002B1E
_0800889C:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _080088D0 @ =0x03002B1C
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _080088D4 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080088D8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08008904
	.align 2, 0
_080088D0: .4byte 0x03002B1C
_080088D4: .4byte 0x000001FF
_080088D8: .4byte 0xFFFFFE00
_080088DC:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08008A1C @ =0x03002B1C
	ldrh r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008A20 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008A24 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r5, #4]
_08008904:
	ldr r0, _08008A28 @ =0x03002B1E
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08008912:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08008A2C @ =0x03000820
	ldr r3, [r7]
	ldrb r1, [r5, #2]
	movs r4, #1
	mov r8, r4
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrh r0, [r5]
	ldr r1, _08008A30 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08008A34 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r5, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r4, [r7]
	ldrb r0, [r5, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r3, [r7]
	ldrb r1, [r5, #5]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	ldr r3, [r7]
	movs r0, #0x81
	lsls r0, r0, #2
	add r0, sl
	mov ip, r0
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r7]
	ldr r4, _08008A38 @ =0x00000205
	add r4, sl
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldr r1, _08008A3C @ =0x03002B26
	ldrb r0, [r1]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r3, [r7]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [sp]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	add r0, sl
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08008A40
	ldr r3, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r4, r8
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08008A74
	.align 2, 0
_08008A1C: .4byte 0x03002B1C
_08008A20: .4byte 0x000001FF
_08008A24: .4byte 0xFFFFFE00
_08008A28: .4byte 0x03002B1E
_08008A2C: .4byte 0x03000820
_08008A30: .4byte 0x000003FF
_08008A34: .4byte 0xFFFFFC00
_08008A38: .4byte 0x00000205
_08008A3C: .4byte 0x03002B26
_08008A40:
	ldr r3, [r6]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	subs r0, #0x12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	mov r4, ip
	ldrb r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_08008A74:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, [r7]
	adds r0, #8
	str r0, [r7]
	adds r5, #8
	ldr r1, [sp, #0x24]
	subs r1, #1
	str r1, [sp, #0x24]
	cmp r1, #0
	beq _08008A8E
	b _08008816
_08008A8E:
	movs r2, #0
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #0x58]
_08008A96:
	ldr r4, [sp, #0x58]
	ldr r0, [sp, #0x44]
	adds r1, r4, r0
	ldrb r0, [r1, #0x11]
	cmp r0, #0x34
	bne _08008AA4
	b _08008D3A
_08008AA4:
	ldr r0, [sp]
	subs r0, #0xb
	cmp r0, #1
	bhi _08008AAE
	b _08008D3A
_08008AAE:
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	beq _08008AB6
	b _08008D3A
_08008AB6:
	ldrb r1, [r1, #0xa]
	cmp r1, #0xc
	bhi _08008AD0
	lsls r0, r1, #3
	ldr r1, _08008AC8 @ =0x08078FC8
	adds r0, r0, r1
	ldr r1, _08008ACC @ =0x0300466C
	str r0, [r1]
	b _08008ADE
	.align 2, 0
_08008AC8: .4byte 0x08078FC8
_08008ACC: .4byte 0x0300466C
_08008AD0:
	ldr r0, _08008B44 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _08008B48 @ =0x0300466C
	str r0, [r2]
_08008ADE:
	ldr r3, _08008B48 @ =0x0300466C
	ldr r0, [r3]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	cmp r1, #0
	bne _08008AEC
	b _08008D3A
_08008AEC:
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x28]
	ldr r0, _08008B4C @ =gUnk_03002920
	adds r5, r4, r0
	ldr r2, _08008B50 @ =0x03000820
	mov ip, r2
	mov sb, r1
_08008AFA:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08008B94
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08008B5C
	mov r4, ip
	ldr r3, [r4]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r0, [r5, #4]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _08008B54 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008B58 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r4, [r5, #6]
	adds r1, r1, r4
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08008BC4
	.align 2, 0
_08008B44: .4byte gUnk_030051DC
_08008B48: .4byte 0x0300466C
_08008B4C: .4byte gUnk_03002920
_08008B50: .4byte 0x03000820
_08008B54: .4byte 0x000001FF
_08008B58: .4byte 0xFFFFFE00
_08008B5C:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008B8C @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008B90 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08008BBA
	.align 2, 0
_08008B8C: .4byte 0x000001FF
_08008B90: .4byte 0xFFFFFE00
_08008B94:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008CD4 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008CD8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_08008BBA:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08008BC4:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08008CDC @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _08008CE0 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08008CE4 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x28]
	ldr r1, _08008CE8 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08008CEC
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08008D1C
	.align 2, 0
_08008CD4: .4byte 0x000001FF
_08008CD8: .4byte 0xFFFFFE00
_08008CDC: .4byte 0x03000820
_08008CE0: .4byte 0x000003FF
_08008CE4: .4byte 0xFFFFFC00
_08008CE8: .4byte gUnk_03002920
_08008CEC:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08008D1C:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _08008D3A
	b _08008AFA
_08008D3A:
	ldr r1, [sp, #0x58]
	adds r1, #0x1c
	str r1, [sp, #0x58]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #0xc
	bgt _08008D4C
	b _08008A96
_08008D4C:
	movs r3, #0xd
	str r3, [sp]
	ldr r4, _08008DC4 @ =gUnk_03005428
	ldrb r4, [r4]
	cmp r3, r4
	blt _08008D5C
	bl _080095E4
_08008D5C:
	ldr r0, _08008DC8 @ =gUnk_03002920
	str r0, [sp, #0x2c]
	movs r1, #0xb6
	lsls r1, r1, #1
	str r1, [sp, #0x50]
	adds r2, r0, r1
	str r2, [sp, #0x54]
_08008D6A:
	ldr r3, [sp, #0x54]
	ldrb r0, [r3, #0x10]
	cmp r0, #1
	beq _08008D74
	b _08009042
_08008D74:
	ldr r0, [sp]
	subs r0, #0x16
	cmp r0, #9
	bhi _08008D8A
	ldrb r0, [r3, #0xf]
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08008D8A
	b _08009042
_08008D8A:
	ldr r4, _08008DCC @ =gUnk_03005400
	ldrb r0, [r4, #0xa]
	cmp r0, #0xd
	bne _08008DAE
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _08008DAE
	ldr r1, [sp, #0x2c]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _08008DAE
	ldr r3, [sp]
	cmp r3, #0x12
	bne _08008DAE
	b _08009042
_08008DAE:
	ldr r4, [sp, #0x54]
	ldrb r1, [r4, #0xa]
	cmp r1, #0xc
	bhi _08008DD8
	lsls r0, r1, #3
	ldr r1, _08008DD0 @ =0x08078FC8
	adds r0, r0, r1
	ldr r1, _08008DD4 @ =0x0300466C
	str r0, [r1]
	b _08008DE6
	.align 2, 0
_08008DC4: .4byte gUnk_03005428
_08008DC8: .4byte gUnk_03002920
_08008DCC: .4byte gUnk_03005400
_08008DD0: .4byte 0x08078FC8
_08008DD4: .4byte 0x0300466C
_08008DD8:
	ldr r0, _08008E4C @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _08008E50 @ =0x0300466C
	str r0, [r2]
_08008DE6:
	ldr r3, _08008E50 @ =0x0300466C
	ldr r0, [r3]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	cmp r1, #0
	bne _08008DF4
	b _08009042
_08008DF4:
	ldr r4, [sp, #0x50]
	str r4, [sp, #0x30]
	ldr r0, _08008E54 @ =gUnk_03002920
	adds r5, r4, r0
	ldr r2, _08008E58 @ =0x03000820
	mov ip, r2
	mov sb, r1
_08008E02:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08008E9C
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08008E64
	mov r4, ip
	ldr r3, [r4]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r0, [r5, #4]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _08008E5C @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008E60 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r4, [r5, #6]
	adds r1, r1, r4
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08008ECC
	.align 2, 0
_08008E4C: .4byte gUnk_030051DC
_08008E50: .4byte 0x0300466C
_08008E54: .4byte gUnk_03002920
_08008E58: .4byte 0x03000820
_08008E5C: .4byte 0x000001FF
_08008E60: .4byte 0xFFFFFE00
_08008E64:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008E94 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008E98 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08008EC2
	.align 2, 0
_08008E94: .4byte 0x000001FF
_08008E98: .4byte 0xFFFFFE00
_08008E9C:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08008FDC @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08008FE0 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_08008EC2:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08008ECC:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08008FE4 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _08008FE8 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08008FEC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x30]
	ldr r1, _08008FF0 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08008FF4
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08009024
	.align 2, 0
_08008FDC: .4byte 0x000001FF
_08008FE0: .4byte 0xFFFFFE00
_08008FE4: .4byte 0x03000820
_08008FE8: .4byte 0x000003FF
_08008FEC: .4byte 0xFFFFFC00
_08008FF0: .4byte gUnk_03002920
_08008FF4:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08009024:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _08009042
	b _08008E02
_08009042:
	ldr r1, [sp, #0x50]
	adds r1, #0x1c
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x54]
	adds r2, #0x1c
	str r2, [sp, #0x54]
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp]
	ldr r4, _08009060 @ =gUnk_03005428
	ldrb r4, [r4]
	cmp r3, r4
	bge _0800905E
	b _08008D6A
_0800905E:
	b _080095E4
	.align 2, 0
_08009060: .4byte gUnk_03005428

	thumb_func_start sub_08009064
sub_08009064: @ 0x08009064
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #0x4c]
_0800906C:
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x44]
	adds r1, r2, r3
	ldrb r0, [r1, #0x11]
	cmp r0, #0x34
	bne _0800907A
	b _08009312
_0800907A:
	ldr r0, [sp]
	subs r0, #0xb
	cmp r0, #1
	bhi _08009084
	b _08009312
_08009084:
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	beq _0800908C
	b _08009312
_0800908C:
	ldrb r1, [r1, #0xa]
	cmp r1, #0xc
	bhi _080090A8
	lsls r0, r1, #3
	ldr r1, _080090A0 @ =0x08078FC8
	adds r0, r0, r1
	ldr r4, _080090A4 @ =0x0300466C
	str r0, [r4]
	b _080090B6
	.align 2, 0
_080090A0: .4byte 0x08078FC8
_080090A4: .4byte 0x0300466C
_080090A8:
	ldr r0, _0800911C @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, _08009120 @ =0x0300466C
	str r0, [r1]
_080090B6:
	ldr r2, _08009120 @ =0x0300466C
	ldr r0, [r2]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	cmp r1, #0
	bne _080090C4
	b _08009312
_080090C4:
	ldr r3, [sp, #0x4c]
	str r3, [sp, #0x34]
	ldr r4, _08009124 @ =gUnk_03002920
	adds r5, r3, r4
	ldr r0, _08009128 @ =0x03000820
	mov ip, r0
	mov sb, r1
_080090D2:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800916C
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08009134
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _0800912C @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009130 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _0800919C
	.align 2, 0
_0800911C: .4byte gUnk_030051DC
_08009120: .4byte 0x0300466C
_08009124: .4byte gUnk_03002920
_08009128: .4byte 0x03000820
_0800912C: .4byte 0x000001FF
_08009130: .4byte 0xFFFFFE00
_08009134:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08009164 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009168 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08009192
	.align 2, 0
_08009164: .4byte 0x000001FF
_08009168: .4byte 0xFFFFFE00
_0800916C:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _080092AC @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080092B0 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_08009192:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_0800919C:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _080092B4 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _080092B8 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080092BC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x34]
	ldr r1, _080092C0 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080092C4
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _080092F4
	.align 2, 0
_080092AC: .4byte 0x000001FF
_080092B0: .4byte 0xFFFFFE00
_080092B4: .4byte 0x03000820
_080092B8: .4byte 0x000003FF
_080092BC: .4byte 0xFFFFFC00
_080092C0: .4byte gUnk_03002920
_080092C4:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_080092F4:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _08009312
	b _080090D2
_08009312:
	ldr r1, [sp, #0x4c]
	adds r1, #0x1c
	str r1, [sp, #0x4c]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #0xc
	bgt _08009324
	b _0800906C
_08009324:
	movs r3, #0xd
	str r3, [sp]
	ldr r4, _08009358 @ =gUnk_03005428
	ldrb r4, [r4]
	cmp r3, r4
	blt _08009332
	b _080095E4
_08009332:
	movs r0, #0xb6
	lsls r0, r0, #1
	str r0, [sp, #0x48]
_08009338:
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x44]
	adds r1, r2, r3
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	beq _08009346
	b _080095CE
_08009346:
	ldrb r0, [r1, #0xa]
	cmp r0, #0xc
	bhi _08009364
	lsls r0, r0, #3
	ldr r4, _0800935C @ =0x08078FC8
	adds r0, r0, r4
	ldr r1, _08009360 @ =0x0300466C
	str r0, [r1]
	b _08009372
	.align 2, 0
_08009358: .4byte gUnk_03005428
_0800935C: .4byte 0x08078FC8
_08009360: .4byte 0x0300466C
_08009364:
	lsls r1, r0, #3
	subs r1, #0x68
	ldr r2, _080093D8 @ =gUnk_030051DC
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r3, _080093DC @ =0x0300466C
	str r0, [r3]
_08009372:
	ldr r4, _080093DC @ =0x0300466C
	ldr r0, [r4]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	cmp r1, #0
	bne _08009380
	b _080095CE
_08009380:
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x38]
	ldr r2, _080093E0 @ =gUnk_03002920
	adds r5, r0, r2
	ldr r3, _080093E4 @ =0x03000820
	mov ip, r3
	mov sb, r1
_0800938E:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08009428
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _080093F0
	mov r4, ip
	ldr r3, [r4]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r0, [r5, #4]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _080093E8 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080093EC @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r4, [r5, #6]
	adds r1, r1, r4
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08009458
	.align 2, 0
_080093D8: .4byte gUnk_030051DC
_080093DC: .4byte 0x0300466C
_080093E0: .4byte gUnk_03002920
_080093E4: .4byte 0x03000820
_080093E8: .4byte 0x000001FF
_080093EC: .4byte 0xFFFFFE00
_080093F0:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08009420 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009424 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _0800944E
	.align 2, 0
_08009420: .4byte 0x000001FF
_08009424: .4byte 0xFFFFFE00
_08009428:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08009568 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800956C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_0800944E:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08009458:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08009570 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _08009574 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08009578 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x38]
	ldr r1, _0800957C @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08009580
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _080095B0
	.align 2, 0
_08009568: .4byte 0x000001FF
_0800956C: .4byte 0xFFFFFE00
_08009570: .4byte 0x03000820
_08009574: .4byte 0x000003FF
_08009578: .4byte 0xFFFFFC00
_0800957C: .4byte gUnk_03002920
_08009580:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_080095B0:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _080095CE
	b _0800938E
_080095CE:
	ldr r1, [sp, #0x48]
	adds r1, #0x1c
	str r1, [sp, #0x48]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	ldr r3, _08009628 @ =gUnk_03005428
	ldrb r3, [r3]
	cmp r2, r3
	bge _080095E4
	b _08009338
_080095E4:
	movs r4, #1
	str r4, [sp]
_080095E8:
	ldr r1, [sp]
	lsls r0, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #2
	ldr r3, [sp, #0x44]
	adds r2, r1, r3
	ldrb r1, [r2, #0x10]
	adds r3, r0, #0
	ldr r4, [sp]
	adds r4, #1
	str r4, [sp, #0x40]
	cmp r1, #1
	beq _08009604
	b _080098AE
_08009604:
	ldr r0, _0800962C @ =gUnk_03000830
	ldr r4, [sp]
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _08009614
	b _080098AE
_08009614:
	ldrb r1, [r2, #0xa]
	cmp r1, #0xc
	bhi _08009638
	lsls r0, r1, #3
	ldr r1, _08009630 @ =0x08078FC8
	adds r0, r0, r1
	ldr r1, _08009634 @ =0x0300466C
	str r0, [r1]
	b _08009646
	.align 2, 0
_08009628: .4byte gUnk_03005428
_0800962C: .4byte gUnk_03000830
_08009630: .4byte 0x08078FC8
_08009634: .4byte 0x0300466C
_08009638:
	ldr r0, _080096B8 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _080096BC @ =0x0300466C
	str r0, [r2]
_08009646:
	ldr r4, _080096BC @ =0x0300466C
	ldr r0, [r4]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp, #0x40]
	cmp r1, #0
	bne _0800965A
	b _080098AE
_0800965A:
	ldr r2, [sp]
	subs r0, r3, r2
	lsls r0, r0, #2
	str r0, [sp, #0x3c]
	ldr r3, _080096C0 @ =gUnk_03002920
	adds r5, r0, r3
	ldr r4, _080096C4 @ =0x03000820
	mov ip, r4
	mov sb, r1
_0800966C:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08009708
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _080096D0
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r4, _080096C8 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080096CC @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08009738
	.align 2, 0
_080096B8: .4byte gUnk_030051DC
_080096BC: .4byte 0x0300466C
_080096C0: .4byte gUnk_03002920
_080096C4: .4byte 0x03000820
_080096C8: .4byte 0x000001FF
_080096CC: .4byte 0xFFFFFE00
_080096D0:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08009700 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009704 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _0800972E
	.align 2, 0
_08009700: .4byte 0x000001FF
_08009704: .4byte 0xFFFFFE00
_08009708:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r4, _08009848 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800984C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_0800972E:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08009738:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08009850 @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	mov sl, r4
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _08009854 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08009858 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r4, ip
	ldr r3, [r4]
	ldr r0, [sp, #0x3c]
	ldr r1, _0800985C @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08009860
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08009890
	.align 2, 0
_08009848: .4byte 0x000001FF
_0800984C: .4byte 0xFFFFFE00
_08009850: .4byte 0x03000820
_08009854: .4byte 0x000003FF
_08009858: .4byte 0xFFFFFC00
_0800985C: .4byte gUnk_03002920
_08009860:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08009890:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r4, #1
	rsbs r4, r4, #0
	add sb, r4
	mov r0, sb
	cmp r0, #0
	beq _080098AE
	b _0800966C
_080098AE:
	ldr r1, [sp, #0x40]
	str r1, [sp]
	cmp r1, #8
	bgt _080098B8
	b _080095E8
_080098B8:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080098C8
sub_080098C8: @ 0x080098C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	bl sub_0800A468
	ldr r2, _08009960 @ =0x03000820
	ldr r0, _08009964 @ =gUnk_03004800
	str r0, [r2]
	ldr r0, _08009968 @ =gUnk_03002920
	ldrh r1, [r0, #6]
	str r1, [sp]
	ldrh r3, [r0, #4]
	str r3, [sp, #4]
	movs r1, #0xd
	mov sb, r1
	ldr r1, _0800996C @ =gUnk_03005428
	ldrb r3, [r1]
	cmp sb, r3
	blt _080098F6
	b _08009BF6
_080098F6:
	movs r0, #0xb6
	lsls r0, r0, #1
	str r0, [sp, #0x20]
	movs r2, #0xb8
	lsls r2, r2, #1
	ldr r1, _08009968 @ =gUnk_03002920
	adds r2, r1, r2
	str r2, [sp, #0x24]
_08009906:
	ldr r3, [sp, #0x24]
	ldrb r0, [r3, #0xc]
	cmp r0, #1
	beq _08009910
	b _08009BDC
_08009910:
	ldrb r0, [r3, #0xd]
	cmp r0, #0x52
	bne _0800993A
	ldrh r1, [r3]
	ldr r0, [sp, #4]
	subs r0, #0x10
	cmp r1, r0
	ble _0800993A
	ldr r0, [sp, #4]
	adds r0, #0x10
	cmp r1, r0
	bge _0800993A
	ldrh r1, [r3, #2]
	ldr r0, [sp]
	adds r0, #0xa
	cmp r1, r0
	bgt _0800993A
	ldr r0, [sp]
	cmp r1, r0
	blo _0800993A
	b _08009BDC
_0800993A:
	ldr r1, [sp, #0x24]
	ldrh r0, [r1, #2]
	ldrb r1, [r1, #4]
	adds r0, r0, r1
	ldr r2, [sp]
	cmp r0, r2
	bgt _0800994A
	b _08009BDC
_0800994A:
	ldr r3, [sp, #0x24]
	ldrb r0, [r3, #6]
	cmp r0, #0xc
	bhi _08009978
	lsls r0, r0, #3
	ldr r1, _08009970 @ =0x08078FC8
	adds r0, r0, r1
	ldr r2, _08009974 @ =0x0300466C
	str r0, [r2]
	b _08009986
	.align 2, 0
_08009960: .4byte 0x03000820
_08009964: .4byte gUnk_03004800
_08009968: .4byte gUnk_03002920
_0800996C: .4byte gUnk_03005428
_08009970: .4byte 0x08078FC8
_08009974: .4byte 0x0300466C
_08009978:
	lsls r1, r0, #3
	subs r1, #0x68
	ldr r3, _080099EC @ =gUnk_030051DC
	ldr r0, [r3]
	adds r0, r0, r1
	ldr r1, _080099F0 @ =0x0300466C
	str r0, [r1]
_08009986:
	ldr r2, _080099F0 @ =0x0300466C
	ldr r0, [r2]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	cmp r1, #0
	bne _08009994
	b _08009BDC
_08009994:
	ldr r3, [sp, #0x20]
	str r3, [sp, #8]
	ldr r0, _080099F4 @ =gUnk_03002920
	adds r5, r3, r0
	ldr r2, _080099F8 @ =0x03000820
	mov ip, r2
	mov sl, r1
_080099A2:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08009A3C
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08009A04
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _080099FC @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009A00 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08009A6C
	.align 2, 0
_080099EC: .4byte gUnk_030051DC
_080099F0: .4byte 0x0300466C
_080099F4: .4byte gUnk_03002920
_080099F8: .4byte 0x03000820
_080099FC: .4byte 0x000001FF
_08009A00: .4byte 0xFFFFFE00
_08009A04:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r2, _08009A34 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009A38 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08009A62
	.align 2, 0
_08009A34: .4byte 0x000001FF
_08009A38: .4byte 0xFFFFFE00
_08009A3C:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r2, _08009B74 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009B78 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_08009A62:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08009A6C:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08009B7C @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _08009B80 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08009B84 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r0, ip
	ldr r3, [r0]
	ldr r1, [sp, #8]
	ldr r2, _08009B88 @ =gUnk_03002920
	adds r4, r1, r2
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08009B8C
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08009BBE
	.align 2, 0
_08009B74: .4byte 0x000001FF
_08009B78: .4byte 0xFFFFFE00
_08009B7C: .4byte 0x03000820
_08009B80: .4byte 0x000003FF
_08009B84: .4byte 0xFFFFFC00
_08009B88: .4byte gUnk_03002920
_08009B8C:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_08009BBE:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	beq _08009BDC
	b _080099A2
_08009BDC:
	ldr r2, [sp, #0x20]
	adds r2, #0x1c
	str r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	adds r3, #0x1c
	str r3, [sp, #0x24]
	movs r0, #1
	add sb, r0
	ldr r1, _08009C28 @ =gUnk_03005428
	ldrb r1, [r1]
	cmp sb, r1
	bge _08009BF6
	b _08009906
_08009BF6:
	movs r2, #0
	mov sb, r2
_08009BFA:
	mov r3, sb
	lsls r0, r3, #3
	subs r1, r0, r3
	lsls r1, r1, #2
	ldr r3, _08009C2C @ =gUnk_03002920
	adds r2, r1, r3
	ldrb r1, [r2, #0x10]
	str r0, [sp, #0x1c]
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x18]
	cmp r1, #1
	beq _08009C16
	b _08009EAA
_08009C16:
	ldrb r1, [r2, #0xa]
	cmp r1, #0xc
	bhi _08009C38
	lsls r0, r1, #3
	ldr r1, _08009C30 @ =0x08078FC8
	adds r0, r0, r1
	ldr r1, _08009C34 @ =0x0300466C
	str r0, [r1]
	b _08009C46
	.align 2, 0
_08009C28: .4byte gUnk_03005428
_08009C2C: .4byte gUnk_03002920
_08009C30: .4byte 0x08078FC8
_08009C34: .4byte 0x0300466C
_08009C38:
	ldr r0, _08009CB8 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _08009CBC @ =0x0300466C
	str r0, [r2]
_08009C46:
	ldr r3, _08009CBC @ =0x0300466C
	ldr r0, [r3]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x18]
	cmp r1, #0
	bne _08009C5A
	b _08009EAA
_08009C5A:
	ldr r2, [sp, #0x1c]
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	str r0, [sp, #0xc]
	ldr r2, _08009CC0 @ =gUnk_03002920
	adds r5, r0, r2
	ldr r3, _08009CC4 @ =0x03000820
	mov ip, r3
	mov sb, r1
_08009C6E:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08009D08
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08009CD0
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, _08009CC8 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009CCC @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08009D38
	.align 2, 0
_08009CB8: .4byte gUnk_030051DC
_08009CBC: .4byte 0x0300466C
_08009CC0: .4byte gUnk_03002920
_08009CC4: .4byte 0x03000820
_08009CC8: .4byte 0x000001FF
_08009CCC: .4byte 0xFFFFFE00
_08009CD0:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r2, _08009D00 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009D04 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _08009D2E
	.align 2, 0
_08009D00: .4byte 0x000001FF
_08009D04: .4byte 0xFFFFFE00
_08009D08:
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r2, _08009E44 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009E48 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_08009D2E:
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08009D38:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08009E4C @ =0x03000820
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	mov sl, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r1, ip
	ldr r3, [r1]
	ldrh r0, [r7]
	ldr r1, _08009E50 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08009E54 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r1, ip
	ldr r3, [r1]
	ldr r2, [sp, #0xc]
	ldr r0, _08009E58 @ =gUnk_03002920
	adds r4, r2, r0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08009E5C
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _08009E8C
	.align 2, 0
_08009E44: .4byte 0x000001FF
_08009E48: .4byte 0xFFFFFE00
_08009E4C: .4byte 0x03000820
_08009E50: .4byte 0x000003FF
_08009E54: .4byte 0xFFFFFC00
_08009E58: .4byte gUnk_03002920
_08009E5C:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_08009E8C:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	beq _08009EAA
	b _08009C6E
_08009EAA:
	ldr r2, [sp, #0x18]
	mov sb, r2
	cmp r2, #0xc
	bgt _08009EB4
	b _08009BFA
_08009EB4:
	movs r3, #0xd
	mov sb, r3
	ldr r0, _08009F24 @ =gUnk_03005428
	ldrb r0, [r0]
	cmp sb, r0
	blt _08009EC2
	b _0800A454
_08009EC2:
	mov r1, sb
	lsls r0, r1, #3
	subs r1, r0, r1
	lsls r1, r1, #2
	ldr r3, _08009F28 @ =gUnk_03002920
	adds r2, r1, r3
	ldrb r1, [r2, #0x10]
	str r0, [sp, #0x1c]
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x18]
	cmp r1, #1
	beq _08009EDE
	b _0800A446
_08009EDE:
	ldrb r0, [r2, #0x11]
	cmp r0, #0x52
	beq _08009EE6
	b _0800A1A4
_08009EE6:
	ldrh r1, [r2, #4]
	ldr r0, [sp, #4]
	subs r0, #0x10
	cmp r1, r0
	bgt _08009EF2
	b _0800A1A4
_08009EF2:
	ldr r0, [sp, #4]
	adds r0, #0x10
	cmp r1, r0
	blt _08009EFC
	b _0800A1A4
_08009EFC:
	ldrh r1, [r2, #6]
	ldr r0, [sp]
	adds r0, #0xa
	cmp r1, r0
	ble _08009F08
	b _0800A1A4
_08009F08:
	ldr r3, [sp]
	cmp r1, r3
	bhs _08009F10
	b _0800A1A4
_08009F10:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xc
	bhi _08009F34
	lsls r0, r0, #3
	ldr r1, _08009F2C @ =0x08078FC8
	adds r0, r0, r1
	ldr r2, _08009F30 @ =0x0300466C
	str r0, [r2]
	b _08009F42
	.align 2, 0
_08009F24: .4byte gUnk_03005428
_08009F28: .4byte gUnk_03002920
_08009F2C: .4byte 0x08078FC8
_08009F30: .4byte 0x0300466C
_08009F34:
	lsls r1, r0, #3
	subs r1, #0x68
	ldr r3, _08009FB4 @ =gUnk_030051DC
	ldr r0, [r3]
	adds r0, r0, r1
	ldr r1, _08009FB8 @ =0x0300466C
	str r0, [r1]
_08009F42:
	ldr r2, _08009FB8 @ =0x0300466C
	ldr r0, [r2]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x18]
	cmp r1, #0
	bne _08009F56
	b _0800A1A4
_08009F56:
	ldr r2, [sp, #0x1c]
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r2, _08009FBC @ =gUnk_03002920
	adds r5, r0, r2
	ldr r3, _08009FC0 @ =0x03000820
	mov ip, r3
	mov sl, r1
_08009F6A:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800A004
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _08009FCC
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r0, _08009FC4 @ =0x000001FF
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08009FC8 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r2, [r5, #6]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _0800A032
	.align 2, 0
_08009FB4: .4byte gUnk_030051DC
_08009FB8: .4byte 0x0300466C
_08009FBC: .4byte gUnk_03002920
_08009FC0: .4byte 0x03000820
_08009FC4: .4byte 0x000001FF
_08009FC8: .4byte 0xFFFFFE00
_08009FCC:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r0, _08009FFC @ =0x000001FF
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800A000 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _0800A028
	.align 2, 0
_08009FFC: .4byte 0x000001FF
_0800A000: .4byte 0xFFFFFE00
_0800A004:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r0, _0800A13C @ =0x000001FF
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800A140 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_0800A028:
	ldrb r2, [r5, #6]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_0800A032:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _0800A144 @ =0x03000820
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrh r0, [r7]
	ldr r1, _0800A148 @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800A14C @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r0, ip
	ldr r3, [r0]
	ldr r1, [sp, #0x10]
	ldr r2, _0800A150 @ =gUnk_03002920
	adds r4, r1, r2
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r1, ip
	ldr r3, [r1]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800A154
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _0800A186
	.align 2, 0
_0800A13C: .4byte 0x000001FF
_0800A140: .4byte 0xFFFFFE00
_0800A144: .4byte 0x03000820
_0800A148: .4byte 0x000003FF
_0800A14C: .4byte 0xFFFFFC00
_0800A150: .4byte gUnk_03002920
_0800A154:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
_0800A186:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	beq _0800A1A4
	b _08009F6A
_0800A1A4:
	ldr r2, [sp, #0x1c]
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r1, _0800A1D0 @ =gUnk_03002920
	adds r2, r0, r1
	ldrh r0, [r2, #6]
	ldrb r1, [r2, #8]
	adds r0, r0, r1
	ldr r3, [sp]
	cmp r0, r3
	ble _0800A1BE
	b _0800A446
_0800A1BE:
	ldrb r0, [r2, #0xa]
	cmp r0, #0xc
	bhi _0800A1DC
	lsls r0, r0, #3
	ldr r1, _0800A1D4 @ =0x08078FC8
	adds r0, r0, r1
	ldr r2, _0800A1D8 @ =0x0300466C
	str r0, [r2]
	b _0800A1EA
	.align 2, 0
_0800A1D0: .4byte gUnk_03002920
_0800A1D4: .4byte 0x08078FC8
_0800A1D8: .4byte 0x0300466C
_0800A1DC:
	lsls r1, r0, #3
	subs r1, #0x68
	ldr r3, _0800A254 @ =gUnk_030051DC
	ldr r0, [r3]
	adds r0, r0, r1
	ldr r1, _0800A258 @ =0x0300466C
	str r0, [r1]
_0800A1EA:
	ldr r2, _0800A258 @ =0x0300466C
	ldr r0, [r2]
	ldrb r1, [r0]
	ldr r7, [r0, #4]
	cmp r1, #0
	bne _0800A1F8
	b _0800A446
_0800A1F8:
	ldr r3, [sp, #0x1c]
	mov r2, sb
	subs r0, r3, r2
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	ldr r3, _0800A25C @ =gUnk_03002920
	adds r5, r0, r3
	ldr r0, _0800A260 @ =0x03000820
	mov ip, r0
	mov sb, r1
_0800A20C:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800A2A4
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1c
	bne _0800A26C
	mov r1, ip
	ldr r3, [r1]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r0, _0800A264 @ =0x000001FF
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800A268 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	ldrb r2, [r5, #6]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _0800A2D2
	.align 2, 0
_0800A254: .4byte gUnk_030051DC
_0800A258: .4byte 0x0300466C
_0800A25C: .4byte gUnk_03002920
_0800A260: .4byte 0x03000820
_0800A264: .4byte 0x000001FF
_0800A268: .4byte 0xFFFFFE00
_0800A26C:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #1
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r0, _0800A29C @ =0x000001FF
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800A2A0 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x19
	adds r1, r1, r0
	b _0800A2C8
	.align 2, 0
_0800A29C: .4byte 0x000001FF
_0800A2A0: .4byte 0xFFFFFE00
_0800A2A4:
	mov r0, ip
	ldr r3, [r0]
	movs r1, #3
	ldrsb r1, [r7, r1]
	ldrh r2, [r5, #4]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldr r0, _0800A3E0 @ =0x000001FF
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800A3E4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r7, #4]
_0800A2C8:
	ldrb r2, [r5, #6]
	adds r1, r1, r2
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_0800A2D2:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _0800A3E8 @ =0x03000820
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r7, #2]
	movs r2, #1
	mov r8, r2
	lsrs r1, r1, #7
	lsls r1, r1, #5
	ldrb r2, [r3, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	mov sl, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r1, ip
	ldr r3, [r1]
	ldrh r0, [r7]
	ldr r1, _0800A3EC @ =0x000003FF
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800A3F0 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r7, #2]
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #5]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r2, ip
	ldr r3, [r2]
	ldrb r0, [r7, #5]
	movs r1, #0xc
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r7, #5]
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r1, ip
	ldr r3, [r1]
	ldr r2, [sp, #0x14]
	ldr r0, _0800A3F4 @ =gUnk_03002920
	adds r4, r2, r0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	ands r1, r0
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #3
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r0, ip
	ldr r3, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800A3F8
	ldr r3, [r6]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _0800A428
	.align 2, 0
_0800A3E0: .4byte 0x000001FF
_0800A3E4: .4byte 0xFFFFFE00
_0800A3E8: .4byte 0x03000820
_0800A3EC: .4byte 0x000003FF
_0800A3F0: .4byte 0xFFFFFC00
_0800A3F4: .4byte gUnk_03002920
_0800A3F8:
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r3, [r6]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #5
	ldrb r2, [r3, #3]
	mov r0, sl
_0800A428:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r3, ip
	ldr r0, [r3]
	adds r0, #8
	str r0, [r3]
	adds r7, #8
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	beq _0800A446
	b _0800A20C
_0800A446:
	ldr r2, [sp, #0x18]
	mov sb, r2
	ldr r3, _0800A464 @ =gUnk_03005428
	ldrb r3, [r3]
	cmp sb, r3
	bge _0800A454
	b _08009EC2
_0800A454:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A464: .4byte gUnk_03005428

	thumb_func_start sub_0800A468
sub_0800A468: @ 0x0800A468
	push {r4, r5, lr}
	ldr r5, _0800A490 @ =0x03004680
	ldr r0, _0800A494 @ =0x080E2A7C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	ldr r1, _0800A498 @ =gUnk_03004800
	movs r2, #0x7f
_0800A476:
	str r3, [r1]
	str r4, [r1, #4]
	ldrh r0, [r5]
	strh r0, [r1, #6]
	adds r5, #2
	adds r1, #8
	subs r2, #1
	cmp r2, #0
	bge _0800A476
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A490: .4byte 0x03004680
_0800A494: .4byte 0x080E2A7C
_0800A498: .4byte gUnk_03004800

	thumb_func_start sub_0800A49C
sub_0800A49C: @ 0x0800A49C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _0800A578 @ =gUnk_03002920
	ldr r6, _0800A57C @ =gUnk_03003430
	adds r1, r6, #0
	adds r1, #0x40
	ldrh r0, [r2]
	ldrh r3, [r1]
	subs r0, r0, r3
	strh r0, [r2, #4]
	movs r0, #0x42
	adds r0, r0, r6
	mov sb, r0
	ldrh r0, [r2, #2]
	mov r1, sb
	ldrh r4, [r1]
	subs r0, r0, r4
	strh r0, [r2, #6]
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800A510
	adds r0, r2, #0
	adds r0, #0xfc
	ldrh r0, [r0]
	subs r0, r0, r3
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r2, r7
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xfe
	ldrh r0, [r0]
	subs r0, r0, r4
	subs r5, #0xa
	adds r1, r2, r5
	strh r0, [r1]
	adds r7, #0x18
	adds r0, r2, r7
	ldrh r0, [r0]
	subs r0, r0, r3
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1]
	adds r5, #0x18
	adds r0, r2, r5
	ldrh r0, [r0]
	subs r0, r0, r4
	adds r7, #6
	adds r1, r2, r7
	strh r0, [r1]
_0800A510:
	movs r5, #1
	ldr r0, _0800A580 @ =gUnk_03005428
	mov ip, r0
	ldrb r0, [r0]
	cmp r5, r0
	bge _0800A5A6
	str r2, [sp]
	mov r8, r6
	ldr r1, _0800A584 @ =0x0000FEFC
	mov sl, r1
	adds r4, r2, #0
	adds r4, #0x1c
	adds r3, r4, #0
	movs r2, #0xb6
	lsls r2, r2, #1
	mov sb, r2
_0800A530:
	cmp r5, #9
	bne _0800A53C
	ldr r4, [sp]
	add r4, sb
	adds r3, r4, #0
	movs r5, #0xd
_0800A53C:
	ldrb r0, [r3, #0xf]
	cmp r0, #0x18
	bhi _0800A598
	mov r0, r8
	adds r0, #0x40
	ldrh r1, [r3]
	ldrh r0, [r0]
	subs r1, r1, r0
	movs r6, #0
	strh r1, [r3, #4]
	ldrh r2, [r3, #2]
	ldr r7, _0800A588 @ =gUnk_03003472
	ldrh r0, [r7]
	subs r0, r2, r0
	strh r0, [r3, #6]
	ldr r2, _0800A58C @ =0xFFFFFEED
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r7, _0800A590 @ =0x0000FEC9
	cmp r1, r7
	bls _0800A572
	subs r0, #0xe0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sl
	bhi _0800A594
_0800A572:
	strb r6, [r4, #0x10]
	b _0800A598
	.align 2, 0
_0800A578: .4byte gUnk_03002920
_0800A57C: .4byte gUnk_03003430
_0800A580: .4byte gUnk_03005428
_0800A584: .4byte 0x0000FEFC
_0800A588: .4byte gUnk_03003472
_0800A58C: .4byte 0xFFFFFEED
_0800A590: .4byte 0x0000FEC9
_0800A594:
	movs r0, #1
	strb r0, [r4, #0x10]
_0800A598:
	adds r3, #0x1c
	adds r4, #0x1c
	adds r5, #1
	mov r0, ip
	ldrb r0, [r0]
	cmp r5, r0
	blt _0800A530
_0800A5A6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A5B8
sub_0800A5B8: @ 0x0800A5B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0800A648 @ =gUnk_03002920
	mov r8, r0
	mov r0, sb
	lsls r7, r0, #3
	subs r4, r7, r0
	lsls r4, r4, #2
	add r4, r8
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r5, [r4]
	subs r5, r5, r1
	ldr r6, _0800A64C @ =gUnk_03003430
	movs r1, #0x40
	adds r1, r1, r6
	mov ip, r1
	ldrh r0, [r1]
	subs r5, r5, r0
	strh r5, [r4, #4]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldrh r3, [r4, #2]
	subs r3, r3, r2
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r0, [r2]
	subs r3, r3, r0
	strh r3, [r4, #6]
	ldrh r1, [r1]
	subs r1, r1, r5
	ldrh r0, [r2]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _0800A650 @ =gUnk_030034AC
	ldrh r0, [r0]
	muls r0, r1, r0
	mov r5, r8
	cmp r0, #0
	bge _0800A61A
	adds r0, #0xff
_0800A61A:
	asrs r4, r0, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0800A654 @ =gUnk_03005420
	ldrh r1, [r2]
	muls r0, r1, r0
	adds r3, r2, #0
	cmp r0, #0
	bge _0800A62E
	adds r0, #0xff
_0800A62E:
	asrs r2, r0, #8
	mov r1, ip
	ldrh r0, [r1]
	subs r4, r0, r4
	mov r0, sb
	cmp r0, #0xc
	bls _0800A65C
	ldr r0, _0800A658 @ =gUnk_030051DC
	ldr r0, [r0]
	adds r0, r7, r0
	subs r0, #0x68
	ldr r0, [r0, #4]
	b _0800A664
	.align 2, 0
_0800A648: .4byte gUnk_03002920
_0800A64C: .4byte gUnk_03003430
_0800A650: .4byte gUnk_030034AC
_0800A654: .4byte gUnk_03005420
_0800A658: .4byte gUnk_030051DC
_0800A65C:
	ldr r0, _0800A678 @ =0x08078FC8
	adds r0, #4
	adds r0, r7, r0
	ldr r0, [r0]
_0800A664:
	ldrb r0, [r0, #5]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0xb
	bhi _0800A6EC
	lsls r0, r1, #2
	ldr r1, _0800A67C @ =_0800A680
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A678: .4byte 0x08078FC8
_0800A67C: .4byte _0800A680
_0800A680: @ jump table
	.4byte _0800A6D8 @ case 0
	.4byte _0800A6C4 @ case 1
	.4byte _0800A6EC @ case 2
	.4byte _0800A6B0 @ case 3
	.4byte _0800A6D8 @ case 4
	.4byte _0800A6D8 @ case 5
	.4byte _0800A6C4 @ case 6
	.4byte _0800A6EC @ case 7
	.4byte _0800A6C4 @ case 8
	.4byte _0800A6EC @ case 9
	.4byte _0800A6EC @ case 10
	.4byte _0800A6B0 @ case 11
_0800A6B0:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r1, r1, r2
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r2
	asrs r0, r0, #3
	b _0800A6FE
_0800A6C4:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r1, r1, r2
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r2
	asrs r0, r0, #5
	b _0800A6FE
_0800A6D8:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r1, r1, r2
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r2
	asrs r0, r0, #6
	b _0800A6FE
_0800A6EC:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r1, r1, r2
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r2
	asrs r0, r0, #4
_0800A6FE:
	adds r2, r1, r0
	mov r1, sb
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	strh r4, [r0, #4]
	strh r2, [r0, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A71C
sub_0800A71C: @ 0x0800A71C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r5, #0
	lsls r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	mov r8, r1
	mov r6, sb
	mov r4, r8
_0800A736:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	asrs r1, r6, #0x18
	asrs r2, r4, #0x18
	bl sub_0800A5B8
	adds r5, #1
	cmp r5, #0xa
	ble _0800A736
	movs r5, #0xd
	ldr r0, _0800A7B8 @ =gUnk_03005428
	ldrb r0, [r0]
	cmp r5, r0
	bge _0800A7F0
	movs r3, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	str r0, [sp, #4]
	ldr r1, _0800A7BC @ =0x0000FEBC
	mov sl, r1
_0800A75E:
	ldr r0, _0800A7C0 @ =gUnk_03002920
	ldr r2, [sp, #4]
	adds r4, r2, r0
	ldrb r1, [r4, #0xf]
	cmp r1, #0x1a
	beq _0800A7D0
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #1
	bne _0800A7CC
	cmp r1, #0x18
	bhi _0800A7E0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	mov r7, sb
	asrs r1, r7, #0x18
	mov r7, r8
	asrs r2, r7, #0x18
	str r3, [sp]
	bl sub_0800A5B8
	ldrb r0, [r4, #0x11]
	ldr r3, [sp]
	cmp r0, #0
	beq _0800A7E0
	ldr r1, _0800A7C4 @ =0xFFFFFECD
	adds r0, r1, #0
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _0800A7C8 @ =0x0000FE89
	cmp r0, r7
	bls _0800A7D0
	adds r1, #0x33
	adds r0, r1, #0
	ldrh r2, [r4, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sl
	bls _0800A7D0
	strb r6, [r4, #0x10]
	b _0800A7E0
	.align 2, 0
_0800A7B8: .4byte gUnk_03005428
_0800A7BC: .4byte 0x0000FEBC
_0800A7C0: .4byte gUnk_03002920
_0800A7C4: .4byte 0xFFFFFECD
_0800A7C8: .4byte 0x0000FE89
_0800A7CC:
	cmp r1, #0x1c
	bne _0800A7D4
_0800A7D0:
	strb r3, [r4, #0x10]
	b _0800A7E0
_0800A7D4:
	ldrh r0, [r4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	strh r0, [r4, #6]
	movs r0, #1
	strb r0, [r4, #0x10]
_0800A7E0:
	ldr r7, [sp, #4]
	adds r7, #0x1c
	str r7, [sp, #4]
	adds r5, #1
	ldr r0, _0800A800 @ =gUnk_03005428
	ldrb r0, [r0]
	cmp r5, r0
	blt _0800A75E
_0800A7F0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A800: .4byte gUnk_03005428

	thumb_func_start sub_0800A804
sub_0800A804: @ 0x0800A804
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800A874 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A894
	ldr r0, _0800A878 @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A894
	ldr r0, _0800A87C @ =gUnk_03005220
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A894
	movs r2, #0
	ldr r4, _0800A880 @ =gUnk_03003510
	ldr r5, _0800A884 @ =0x030034BC
	ldr r6, _0800A888 @ =gUnk_03003410
	ldr r7, _0800A88C @ =sub_08039D8C
	ldr r0, _0800A890 @ =sub_0800BFF4
	mov ip, r0
	adds r1, r4, #0
_0800A834:
	ldr r0, [r1]
	str r0, [r1, #0x50]
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	bls _0800A834
	adds r3, r4, #0
	adds r3, #0x78
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r2, #0
	strb r0, [r1]
	strb r2, [r5]
	movs r1, #1
	strb r1, [r6, #4]
	str r7, [r4, #0x28]
	mov r0, ip
	str r0, [r4, #0x2c]
	str r1, [r4, #0x30]
	ldrb r0, [r3]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	str r2, [r0]
	adds r5, r4, #0
	adds r5, #0x79
	movs r0, #3
	strb r0, [r5]
	strb r1, [r3]
	str r2, [r4]
	b _0800AC22
	.align 2, 0
_0800A874: .4byte gNewKeys
_0800A878: .4byte gUnk_030034E4
_0800A87C: .4byte gUnk_03005220
_0800A880: .4byte gUnk_03003510
_0800A884: .4byte 0x030034BC
_0800A888: .4byte gUnk_03003410
_0800A88C: .4byte sub_08039D8C
_0800A890: .4byte sub_0800BFF4
_0800A894:
	ldr r0, _0800A8B8 @ =gUnk_030052A0
	ldrb r0, [r0]
	cmp r0, #0xfe
	beq _0800A89E
	b _0800AC08
_0800A89E:
	ldr r0, _0800A8BC @ =gUnk_03003510
	ldr r1, [r0, #0x10]
	ldr r0, _0800A8C0 @ =sub_08024C34
	cmp r1, r0
	beq _0800A8B2
	ldr r0, _0800A8C4 @ =sub_08024718
	cmp r1, r0
	beq _0800A8B2
	bl sub_0800D188
_0800A8B2:
	movs r4, #0xd
	b _0800ABFA
	.align 2, 0
_0800A8B8: .4byte gUnk_030052A0
_0800A8BC: .4byte gUnk_03003510
_0800A8C0: .4byte sub_08024C34
_0800A8C4: .4byte sub_08024718
_0800A8C8:
	ldr r1, _0800A8F0 @ =gUnk_03002920
	lsls r2, r4, #3
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0xf]
	adds r5, r1, #0
	cmp r0, #0x1c
	bne _0800A8DC
	b _0800ABF8
_0800A8DC:
	ldrb r0, [r3, #0x11]
	subs r0, #1
	cmp r0, #0x7c
	bls _0800A8E6
	b _0800ABF8
_0800A8E6:
	lsls r0, r0, #2
	ldr r1, _0800A8F4 @ =_0800A8F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A8F0: .4byte gUnk_03002920
_0800A8F4: .4byte _0800A8F8
_0800A8F8: @ jump table
	.4byte _0800AB0E @ case 0
	.4byte _0800AB0E @ case 1
	.4byte _0800ABCE @ case 2
	.4byte _0800AB0E @ case 3
	.4byte _0800ABF8 @ case 4
	.4byte _0800AB04 @ case 5
	.4byte _0800ABF8 @ case 6
	.4byte _0800AB04 @ case 7
	.4byte _0800AB5C @ case 8
	.4byte _0800AB5C @ case 9
	.4byte _0800AB04 @ case 10
	.4byte _0800AB88 @ case 11
	.4byte _0800ABF8 @ case 12
	.4byte _0800ABF8 @ case 13
	.4byte _0800ABF8 @ case 14
	.4byte _0800ABF8 @ case 15
	.4byte _0800ABF8 @ case 16
	.4byte _0800ABF8 @ case 17
	.4byte _0800ABF8 @ case 18
	.4byte _0800ABF8 @ case 19
	.4byte _0800ABF8 @ case 20
	.4byte _0800ABF8 @ case 21
	.4byte _0800ABF8 @ case 22
	.4byte _0800ABF8 @ case 23
	.4byte _0800ABF8 @ case 24
	.4byte _0800ABF8 @ case 25
	.4byte _0800ABF8 @ case 26
	.4byte _0800ABF8 @ case 27
	.4byte _0800ABF8 @ case 28
	.4byte _0800ABF8 @ case 29
	.4byte _0800ABF8 @ case 30
	.4byte _0800ABF8 @ case 31
	.4byte _0800ABF8 @ case 32
	.4byte _0800ABF8 @ case 33
	.4byte _0800ABF8 @ case 34
	.4byte _0800ABF8 @ case 35
	.4byte _0800AAEC @ case 36
	.4byte _0800ABAE @ case 37
	.4byte _0800AB22 @ case 38
	.4byte _0800AB22 @ case 39
	.4byte _0800AB22 @ case 40
	.4byte _0800AB22 @ case 41
	.4byte _0800AB22 @ case 42
	.4byte _0800ABF8 @ case 43
	.4byte _0800ABF8 @ case 44
	.4byte _0800ABE4 @ case 45
	.4byte _0800AB18 @ case 46
	.4byte _0800AB18 @ case 47
	.4byte _0800AB18 @ case 48
	.4byte _0800AB18 @ case 49
	.4byte _0800AB18 @ case 50
	.4byte _0800ABF8 @ case 51
	.4byte _0800AB66 @ case 52
	.4byte _0800ABF8 @ case 53
	.4byte _0800AB40 @ case 54
	.4byte _0800ABF8 @ case 55
	.4byte _0800AB4A @ case 56
	.4byte _0800ABF8 @ case 57
	.4byte _0800ABF8 @ case 58
	.4byte _0800ABF8 @ case 59
	.4byte _0800AB54 @ case 60
	.4byte _0800ABF8 @ case 61
	.4byte _0800AB2C @ case 62
	.4byte _0800AB36 @ case 63
	.4byte _0800ABF8 @ case 64
	.4byte _0800ABB8 @ case 65
	.4byte _0800AB92 @ case 66
	.4byte _0800ABF8 @ case 67
	.4byte _0800ABF8 @ case 68
	.4byte _0800ABF8 @ case 69
	.4byte _0800ABF8 @ case 70
	.4byte _0800ABF8 @ case 71
	.4byte _0800ABF8 @ case 72
	.4byte _0800ABF8 @ case 73
	.4byte _0800ABF8 @ case 74
	.4byte _0800ABF8 @ case 75
	.4byte _0800ABF8 @ case 76
	.4byte _0800ABF8 @ case 77
	.4byte _0800ABF8 @ case 78
	.4byte _0800ABF8 @ case 79
	.4byte _0800ABF8 @ case 80
	.4byte _0800ABF8 @ case 81
	.4byte _0800ABF8 @ case 82
	.4byte _0800ABF8 @ case 83
	.4byte _0800ABF8 @ case 84
	.4byte _0800ABF8 @ case 85
	.4byte _0800ABF8 @ case 86
	.4byte _0800ABF8 @ case 87
	.4byte _0800ABF8 @ case 88
	.4byte _0800ABF8 @ case 89
	.4byte _0800ABF8 @ case 90
	.4byte _0800ABF8 @ case 91
	.4byte _0800ABF8 @ case 92
	.4byte _0800ABF8 @ case 93
	.4byte _0800ABF8 @ case 94
	.4byte _0800ABF8 @ case 95
	.4byte _0800ABF8 @ case 96
	.4byte _0800ABF8 @ case 97
	.4byte _0800ABF8 @ case 98
	.4byte _0800ABF8 @ case 99
	.4byte _0800ABF8 @ case 100
	.4byte _0800ABF8 @ case 101
	.4byte _0800ABF8 @ case 102
	.4byte _0800ABF8 @ case 103
	.4byte _0800ABF8 @ case 104
	.4byte _0800ABF8 @ case 105
	.4byte _0800ABF8 @ case 106
	.4byte _0800ABF8 @ case 107
	.4byte _0800ABF8 @ case 108
	.4byte _0800ABF8 @ case 109
	.4byte _0800AAEC @ case 110
	.4byte _0800AB76 @ case 111
	.4byte _0800AB40 @ case 112
	.4byte _0800AB40 @ case 113
	.4byte _0800ABF8 @ case 114
	.4byte _0800AB40 @ case 115
	.4byte _0800AB9C @ case 116
	.4byte _0800AB04 @ case 117
	.4byte _0800AB04 @ case 118
	.4byte _0800AB04 @ case 119
	.4byte _0800AB04 @ case 120
	.4byte _0800AB04 @ case 121
	.4byte _0800AB04 @ case 122
	.4byte _0800AB04 @ case 123
	.4byte _0800AB04 @ case 124
_0800AAEC:
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0800AAFA
	b _0800ABF8
_0800AAFA:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08014760
	b _0800ABF8
_0800AB04:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08016EEC
	b _0800ABF8
_0800AB0E:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801CE38
	b _0800ABF8
_0800AB18:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801B688
	b _0800ABF8
_0800AB22:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801BD48
	b _0800ABF8
_0800AB2C:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801BB6C
	b _0800ABF8
_0800AB36:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801BCC0
	b _0800ABF8
_0800AB40:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801C150
	b _0800ABF8
_0800AB4A:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801C6EC
	b _0800ABF8
_0800AB54:
	adds r0, r4, #0
	bl sub_0801C82C
	b _0800ABF8
_0800AB5C:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801D0D8
	b _0800ABF8
_0800AB66:
	ldr r0, _0800AB80 @ =0x030047B8
	ldrb r0, [r0]
	cmp r4, r0
	beq _0800AB76
	ldr r0, _0800AB84 @ =0x03005470
	ldrb r0, [r0]
	cmp r4, r0
	bne _0800ABF8
_0800AB76:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801D4AC
	b _0800ABF8
	.align 2, 0
_0800AB80: .4byte 0x030047B8
_0800AB84: .4byte 0x03005470
_0800AB88:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801DE44
	b _0800ABF8
_0800AB92:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801DFC4
	b _0800ABF8
_0800AB9C:
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r1, r0, r5
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0800ABF8
	subs r0, #1
	strb r0, [r1, #8]
	b _0800ABF8
_0800ABAE:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801D6B0
	b _0800ABF8
_0800ABB8:
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _0800ABF8
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801B044
	b _0800ABF8
_0800ABCE:
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #0xf]
	cmp r0, #2
	bne _0800ABF8
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801E1A8
	b _0800ABF8
_0800ABE4:
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #0xf]
	cmp r0, #2
	bne _0800ABF8
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801E354
_0800ABF8:
	adds r4, #1
_0800ABFA:
	ldr r0, _0800AC28 @ =gUnk_03005428
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0800AC04
	b _0800A8C8
_0800AC04:
	bl sub_08025BA4
_0800AC08:
	ldr r0, _0800AC2C @ =0x0300528C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AC14
	bl sub_0801E3FC
_0800AC14:
	ldr r0, _0800AC30 @ =gUnk_03005220
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AC22
	bl sub_08014318
_0800AC22:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC28: .4byte gUnk_03005428
_0800AC2C: .4byte 0x0300528C
_0800AC30: .4byte gUnk_03005220

	thumb_func_start sub_0800AC34
sub_0800AC34: @ 0x0800AC34
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
	ldr r5, _0800ACD8 @ =0x030034BC
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
_0800ACD8: .4byte 0x030034BC
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
	ldr r0, _0800AFC0 @ =0x03005288
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
_0800AFC0: .4byte 0x03005288
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
	ldr r3, _0800B140 @ =0x03003590
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
_0800B140: .4byte 0x03003590
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
	ldr r1, _0800B19C @ =0x030034A8
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	bl _call_via_r1
	b _0800B350
	.align 2, 0
_0800B19C: .4byte 0x030034A8
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
	ldr r1, _0800B20C @ =0x03003590
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
_0800B20C: .4byte 0x03003590
_0800B210:
	strb r5, [r4, #4]
	b _0800B350
_0800B214:
	ldr r4, _0800B254 @ =0x080E2A84
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
_0800B254: .4byte 0x080E2A84
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
	ldr r1, _0800B334 @ =0x03003590
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
_0800B334: .4byte 0x03003590
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

	thumb_func_start sub_0800B3C0
sub_0800B3C0: @ 0x0800B3C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #0x20]
	movs r5, #0
	str r5, [sp, #0x24]
	movs r6, #0
	str r6, [sp, #0x28]
	bl sub_08003DA0
	ldr r1, _0800B690 @ =gUnk_03005428
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0800B694 @ =0x03005298
	mov r8, r0
	ldr r1, _0800B698 @ =0x0300528C
	mov sb, r1
	ldr r2, _0800B69C @ =0x03005288
	mov sl, r2
	ldr r4, _0800B6A0 @ =0x030047B8
	ldr r3, _0800B6A4 @ =0x03005470
	ldr r2, _0800B6A8 @ =0x030034E0
	ldr r1, _0800B6AC @ =0x030052A8
	ldr r0, _0800B6B0 @ =0x03004C38
	ldr r7, _0800B6B4 @ =0x03003610
	strb r6, [r7, #3]
	add r6, sp, #0x28
	ldrb r6, [r6]
	strb r6, [r7, #2]
	add r5, sp, #0x28
	ldrb r5, [r5]
	strb r5, [r0]
	add r6, sp, #0x28
	ldrb r6, [r6]
	strb r6, [r1]
	add r0, sp, #0x28
	ldrb r0, [r0]
	strb r0, [r2]
	add r1, sp, #0x28
	ldrb r1, [r1]
	strb r1, [r3]
	add r2, sp, #0x28
	ldrb r2, [r2]
	strb r2, [r4]
	add r3, sp, #0x28
	ldrb r5, [r3]
	mov r3, sl
	strb r5, [r3]
	add r5, sp, #0x28
	ldrb r6, [r5]
	mov r5, sb
	strb r6, [r5]
	add r6, sp, #0x28
	ldrb r0, [r6]
	mov r6, r8
	strb r0, [r6]
	ldr r0, _0800B6B8 @ =0x030051C4
	mov ip, r0
	ldr r1, _0800B6BC @ =0x030034A4
	mov sl, r1
	ldr r2, _0800B6C0 @ =0x030052B0
	mov sb, r2
	ldr r3, _0800B6C4 @ =0x03003638
	mov r8, r3
	ldr r5, _0800B6C8 @ =0x030047BC
	ldr r4, _0800B6CC @ =0x030007D4
	ldr r3, _0800B6D0 @ =0x030047F8
	ldr r2, _0800B6D4 @ =0x03003504
	ldr r1, _0800B6D8 @ =0x03002904
	ldr r0, _0800B6DC @ =0x030008FC
	ldr r6, [sp, #0x28]
	str r6, [r0]
	str r6, [r1]
	str r6, [r2]
	str r6, [r3]
	str r6, [r4]
	str r6, [r5]
	ldr r0, _0800B6E0 @ =0x03002908
	str r6, [r0]
	mov r1, r8
	str r6, [r1]
	mov r2, sb
	str r6, [r2]
	mov r3, sl
	str r6, [r3]
	mov r5, ip
	str r6, [r5]
	ldr r0, _0800B6E4 @ =0x030052B4
	str r6, [r0]
	ldr r1, _0800B6E8 @ =0x03005424
	str r6, [r1]
	ldr r2, _0800B6EC @ =0x03000824
	str r6, [r2]
	ldr r3, _0800B6F0 @ =0x03004C04
	str r6, [r3]
	ldr r5, _0800B6F4 @ =0x030007F0
	str r6, [r5]
	ldr r0, _0800B6F8 @ =0x030008F0
	str r6, [r0]
	ldr r1, _0800B6FC @ =0x030008F4
	str r6, [r1]
	ldr r2, _0800B700 @ =0x03003640
	str r6, [r2]
	ldr r3, _0800B704 @ =0x030047B4
	str r6, [r3]
	ldr r5, _0800B708 @ =0x0300082C
	str r6, [r5]
	ldr r0, _0800B70C @ =0x03000804
	str r6, [r0]
	ldr r1, _0800B710 @ =0x0300529C
	str r6, [r1]
	ldr r2, _0800B714 @ =0x030034CC
	str r6, [r2]
	ldr r3, _0800B718 @ =0x0300541C
	str r6, [r3]
	ldr r5, _0800B71C @ =0x030034D8
	str r6, [r5]
	ldr r0, _0800B720 @ =0x03005430
	str r6, [r0]
	ldr r1, _0800B724 @ =0x03003634
	str r6, [r1]
	ldr r2, _0800B728 @ =0x03004674
	str r6, [r2]
	ldr r3, _0800B72C @ =0x03003630
	str r6, [r3]
	ldr r5, _0800B730 @ =0x03004788
	str r6, [r5]
	ldr r0, _0800B734 @ =0x030051D8
	str r6, [r0]
	ldr r1, _0800B738 @ =0x03004664
	str r6, [r1]
	ldr r2, _0800B73C @ =0x03003500
	str r6, [r2]
	ldr r3, _0800B740 @ =0x030034C8
	str r6, [r3]
	ldr r5, _0800B744 @ =0x030051D4
	str r6, [r5]
	ldr r0, _0800B748 @ =0x0300290C
	str r6, [r0]
	ldr r1, _0800B74C @ =0x030007F4
	str r6, [r1]
	ldr r2, _0800B750 @ =0x03004650
	str r6, [r2]
	ldr r3, _0800B754 @ =0x03005484
	str r6, [r3]
	movs r5, #0
	mov sb, r5
	movs r1, #0
	adds r0, r7, #0
_0800B4FE:
	strb r1, [r0, #1]
	strb r1, [r0]
	adds r0, #4
	movs r6, #1
	add sb, r6
	mov r2, sb
	cmp r2, #2
	bls _0800B4FE
	ldr r4, _0800B758 @ =0x0300547C
	ldr r3, _0800B75C @ =0x03000818
	ldr r2, _0800B760 @ =0x030051B4
	ldr r1, _0800B764 @ =0x030008EC
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	strb r0, [r3]
	strb r0, [r4]
	movs r3, #0
	mov sb, r3
	ldr r5, _0800B768 @ =gUnk_03004C20
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r6, _0800B76C @ =0x00001130
	adds r1, r0, #0
	muls r1, r6, r1
	ldrb r0, [r5, #0xd]
	subs r0, #1
	ldr r2, _0800B770 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _0800B774 @ =0x080E2B64
	adds r1, r1, r0
	ldrh r1, [r1]
	ldr r0, _0800B778 @ =0x0000FFFF
	cmp r1, r0
	bne _0800B548
	b _0800B666
_0800B548:
	ldr r1, _0800B774 @ =0x080E2B64
	mov r8, r1
	adds r7, r5, #0
	mov sl, r2
_0800B550:
	ldr r2, _0800B690 @ =gUnk_03005428
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x2c
	mov r6, sb
	muls r6, r1, r6
	ldrb r1, [r7, #0xc]
	subs r1, #1
	ldr r3, _0800B76C @ =0x00001130
	adds r5, r1, #0
	muls r5, r3, r5
	adds r2, r6, r5
	ldrb r1, [r7, #0xd]
	subs r1, #1
	mov r3, sl
	muls r3, r1, r3
	adds r2, r2, r3
	add r2, r8
	adds r2, #0x28
	ldrb r1, [r2]
	ldrb r4, [r7, #0xe]
	subs r4, #1
	lsls r4, r4, #3
	adds r4, r4, r6
	adds r4, r4, r5
	adds r4, r4, r3
	add r4, r8
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	ldrb r4, [r4, #4]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	ldrb r5, [r7, #0xe]
	subs r5, #1
	lsls r5, r5, #3
	adds r5, r5, r6
	mov ip, r5
	ldrb r4, [r7, #0xc]
	subs r4, #1
	ldr r5, _0800B76C @ =0x00001130
	muls r4, r5, r4
	add ip, r4
	ldrb r4, [r7, #0xd]
	subs r4, #1
	mov r5, sl
	muls r5, r4, r5
	adds r4, r5, #0
	add r4, ip
	add r4, r8
	ldrb r4, [r4, #5]
	str r4, [sp, #8]
	ldrb r5, [r7, #0xe]
	subs r5, #1
	lsls r5, r5, #3
	adds r5, r5, r6
	mov ip, r5
	ldrb r4, [r7, #0xc]
	subs r4, #1
	ldr r5, _0800B76C @ =0x00001130
	muls r4, r5, r4
	add ip, r4
	ldrb r4, [r7, #0xd]
	subs r4, #1
	mov r5, sl
	muls r5, r4, r5
	adds r4, r5, #0
	add r4, ip
	add r4, r8
	ldrb r4, [r4, #6]
	str r4, [sp, #0xc]
	ldrb r4, [r7, #0xc]
	subs r4, #1
	ldr r5, _0800B76C @ =0x00001130
	muls r4, r5, r4
	adds r6, r6, r4
	ldrb r4, [r7, #0xd]
	subs r4, #1
	mov r5, sl
	muls r5, r4, r5
	adds r4, r5, #0
	adds r6, r6, r4
	add r6, r8
	adds r6, #0x29
	ldrb r4, [r6]
	str r4, [sp, #0x10]
	bl sub_08003DC0
	ldr r1, _0800B77C @ =gUnk_03002920
	ldr r6, _0800B690 @ =gUnk_03005428
	ldrb r0, [r6]
	subs r2, r0, #1
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #0x11]
	adds r0, r1, #0
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0800B638
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800B638
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	bl sub_08044F6C
_0800B638:
	movs r0, #1
	add sb, r0
	movs r0, #0x2c
	mov r1, sb
	muls r1, r0, r1
	ldr r2, _0800B768 @ =gUnk_03004C20
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r3, _0800B76C @ =0x00001130
	muls r0, r3, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r2, _0800B770 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r5, _0800B774 @ =0x080E2B64
	adds r1, r1, r5
	ldrh r1, [r1]
	ldr r0, _0800B778 @ =0x0000FFFF
	cmp r1, r0
	beq _0800B666
	b _0800B550
_0800B666:
	ldr r6, _0800B768 @ =gUnk_03004C20
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _0800B682
	ldr r1, _0800B780 @ =gUnk_03005220
	ldr r2, _0800B77C @ =gUnk_03002920
	ldrh r0, [r2]
	movs r3, #0
	strh r0, [r1, #0x1a]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r1, #0x2f
	strb r3, [r1]
_0800B682:
	ldr r0, _0800B784 @ =0x03004C10
	movs r1, #0
	str r1, [r0]
	movs r0, #0xd
	mov sb, r0
	bl _0800BED0
	.align 2, 0
_0800B690: .4byte gUnk_03005428
_0800B694: .4byte 0x03005298
_0800B698: .4byte 0x0300528C
_0800B69C: .4byte 0x03005288
_0800B6A0: .4byte 0x030047B8
_0800B6A4: .4byte 0x03005470
_0800B6A8: .4byte 0x030034E0
_0800B6AC: .4byte 0x030052A8
_0800B6B0: .4byte 0x03004C38
_0800B6B4: .4byte 0x03003610
_0800B6B8: .4byte 0x030051C4
_0800B6BC: .4byte 0x030034A4
_0800B6C0: .4byte 0x030052B0
_0800B6C4: .4byte 0x03003638
_0800B6C8: .4byte 0x030047BC
_0800B6CC: .4byte 0x030007D4
_0800B6D0: .4byte 0x030047F8
_0800B6D4: .4byte 0x03003504
_0800B6D8: .4byte 0x03002904
_0800B6DC: .4byte 0x030008FC
_0800B6E0: .4byte 0x03002908
_0800B6E4: .4byte 0x030052B4
_0800B6E8: .4byte 0x03005424
_0800B6EC: .4byte 0x03000824
_0800B6F0: .4byte 0x03004C04
_0800B6F4: .4byte 0x030007F0
_0800B6F8: .4byte 0x030008F0
_0800B6FC: .4byte 0x030008F4
_0800B700: .4byte 0x03003640
_0800B704: .4byte 0x030047B4
_0800B708: .4byte 0x0300082C
_0800B70C: .4byte 0x03000804
_0800B710: .4byte 0x0300529C
_0800B714: .4byte 0x030034CC
_0800B718: .4byte 0x0300541C
_0800B71C: .4byte 0x030034D8
_0800B720: .4byte 0x03005430
_0800B724: .4byte 0x03003634
_0800B728: .4byte 0x03004674
_0800B72C: .4byte 0x03003630
_0800B730: .4byte 0x03004788
_0800B734: .4byte 0x030051D8
_0800B738: .4byte 0x03004664
_0800B73C: .4byte 0x03003500
_0800B740: .4byte 0x030034C8
_0800B744: .4byte 0x030051D4
_0800B748: .4byte 0x0300290C
_0800B74C: .4byte 0x030007F4
_0800B750: .4byte 0x03004650
_0800B754: .4byte 0x03005484
_0800B758: .4byte 0x0300547C
_0800B75C: .4byte 0x03000818
_0800B760: .4byte 0x030051B4
_0800B764: .4byte 0x030008EC
_0800B768: .4byte gUnk_03004C20
_0800B76C: .4byte 0x00001130
_0800B770: .4byte 0x00008980
_0800B774: .4byte 0x080E2B64
_0800B778: .4byte 0x0000FFFF
_0800B77C: .4byte gUnk_03002920
_0800B780: .4byte gUnk_03005220
_0800B784: .4byte 0x03004C10
_0800B788:
	ldr r1, _0800B7AC @ =gUnk_03002920
	mov r3, sb
	lsls r2, r3, #3
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x11]
	subs r0, #6
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r0, #0x77
	bls _0800B7A2
	b _0800BECC
_0800B7A2:
	lsls r0, r0, #2
	ldr r1, _0800B7B0 @ =_0800B7B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B7AC: .4byte gUnk_03002920
_0800B7B0: .4byte _0800B7B4
_0800B7B4: @ jump table
	.4byte _0800B9B6 @ case 0
	.4byte _0800BECC @ case 1
	.4byte _0800B9B6 @ case 2
	.4byte _0800BECC @ case 3
	.4byte _0800BECC @ case 4
	.4byte _0800B994 @ case 5
	.4byte _0800BECC @ case 6
	.4byte _0800BECC @ case 7
	.4byte _0800BECC @ case 8
	.4byte _0800BECC @ case 9
	.4byte _0800BECC @ case 10
	.4byte _0800BECC @ case 11
	.4byte _0800BECC @ case 12
	.4byte _0800BECC @ case 13
	.4byte _0800BECC @ case 14
	.4byte _0800BECC @ case 15
	.4byte _0800BECC @ case 16
	.4byte _0800BECC @ case 17
	.4byte _0800BECC @ case 18
	.4byte _0800BECC @ case 19
	.4byte _0800BECC @ case 20
	.4byte _0800BECC @ case 21
	.4byte _0800BECC @ case 22
	.4byte _0800BECC @ case 23
	.4byte _0800BECC @ case 24
	.4byte _0800BECC @ case 25
	.4byte _0800BECC @ case 26
	.4byte _0800BECC @ case 27
	.4byte _0800BECC @ case 28
	.4byte _0800BECC @ case 29
	.4byte _0800BECC @ case 30
	.4byte _0800BECC @ case 31
	.4byte _0800BEC4 @ case 32
	.4byte _0800BECC @ case 33
	.4byte _0800BECC @ case 34
	.4byte _0800BECC @ case 35
	.4byte _0800BECC @ case 36
	.4byte _0800BECC @ case 37
	.4byte _0800BECC @ case 38
	.4byte _0800BECC @ case 39
	.4byte _0800BEB0 @ case 40
	.4byte _0800B9FC @ case 41
	.4byte _0800B9FC @ case 42
	.4byte _0800B9FC @ case 43
	.4byte _0800B9FC @ case 44
	.4byte _0800B9FC @ case 45
	.4byte _0800BECC @ case 46
	.4byte _0800BECC @ case 47
	.4byte _0800BD6C @ case 48
	.4byte _0800BECC @ case 49
	.4byte _0800BE74 @ case 50
	.4byte _0800BE9C @ case 51
	.4byte _0800BE88 @ case 52
	.4byte _0800BECC @ case 53
	.4byte _0800BECC @ case 54
	.4byte _0800BECC @ case 55
	.4byte _0800BECC @ case 56
	.4byte _0800B9FC @ case 57
	.4byte _0800BECC @ case 58
	.4byte _0800B9E2 @ case 59
	.4byte _0800BECC @ case 60
	.4byte _0800B9CC @ case 61
	.4byte _0800BECC @ case 62
	.4byte _0800BECC @ case 63
	.4byte _0800BECC @ case 64
	.4byte _0800BECC @ case 65
	.4byte _0800BECC @ case 66
	.4byte _0800B9FC @ case 67
	.4byte _0800BECC @ case 68
	.4byte _0800BECC @ case 69
	.4byte _0800BECC @ case 70
	.4byte _0800BECC @ case 71
	.4byte _0800BECC @ case 72
	.4byte _0800BECC @ case 73
	.4byte _0800BECC @ case 74
	.4byte _0800BECC @ case 75
	.4byte _0800BECC @ case 76
	.4byte _0800BECC @ case 77
	.4byte _0800BECC @ case 78
	.4byte _0800BECC @ case 79
	.4byte _0800BECC @ case 80
	.4byte _0800BECC @ case 81
	.4byte _0800BECC @ case 82
	.4byte _0800BECC @ case 83
	.4byte _0800BECC @ case 84
	.4byte _0800BECC @ case 85
	.4byte _0800BECC @ case 86
	.4byte _0800BECC @ case 87
	.4byte _0800BECC @ case 88
	.4byte _0800BECC @ case 89
	.4byte _0800BECC @ case 90
	.4byte _0800BECC @ case 91
	.4byte _0800BECC @ case 92
	.4byte _0800BECC @ case 93
	.4byte _0800BECC @ case 94
	.4byte _0800BECC @ case 95
	.4byte _0800BECC @ case 96
	.4byte _0800BECC @ case 97
	.4byte _0800BECC @ case 98
	.4byte _0800BECC @ case 99
	.4byte _0800BECC @ case 100
	.4byte _0800BECC @ case 101
	.4byte _0800BECC @ case 102
	.4byte _0800BECC @ case 103
	.4byte _0800BECC @ case 104
	.4byte _0800BECC @ case 105
	.4byte _0800BECC @ case 106
	.4byte _0800BA06 @ case 107
	.4byte _0800BAA8 @ case 108
	.4byte _0800BCC4 @ case 109
	.4byte _0800BC0C @ case 110
	.4byte _0800BDD0 @ case 111
	.4byte _0800B9AC @ case 112
	.4byte _0800B9FC @ case 113
	.4byte _0800B9FC @ case 114
	.4byte _0800B9FC @ case 115
	.4byte _0800B9FC @ case 116
	.4byte _0800B9AC @ case 117
	.4byte _0800B9FC @ case 118
	.4byte _0800B9FC @ case 119
_0800B994:
	ldr r0, _0800B9A8 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _0800B9AC
	mov r0, sb
	movs r1, #3
	bl sub_08025B78
	b _0800BECC
	.align 2, 0
_0800B9A8: .4byte gUnk_03004C20
_0800B9AC:
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	b _0800BECC
_0800B9B6:
	ldr r5, [sp, #0x14]
	cmp r5, #0
	beq _0800B9BE
	b _0800BECC
_0800B9BE:
	mov r0, sb
	movs r1, #0
	bl sub_08025B78
	movs r6, #1
	str r6, [sp, #0x14]
	b _0800BECC
_0800B9CC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0800B9D4
	b _0800BECC
_0800B9D4:
	mov r0, sb
	movs r1, #0
	bl sub_08025B78
	movs r1, #1
	str r1, [sp, #0x18]
	b _0800BECC
_0800B9E2:
	ldr r0, _0800B9F8 @ =gUnk_03005220
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0800B9FC
	mov r0, sb
	movs r1, #2
	bl sub_08025B78
	b _0800BECC
	.align 2, 0
_0800B9F8: .4byte gUnk_03005220
_0800B9FC:
	mov r0, sb
	movs r1, #0
	bl sub_08025B78
	b _0800BECC
_0800BA06:
	mov r2, sb
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0800BA60
	ldr r3, _0800BA48 @ =0x040000D4
	ldr r0, _0800BA4C @ =0x08063FE8
	str r0, [r3]
	ldr r4, _0800BA50 @ =gUnk_0818B8E0
	ldr r2, _0800BA54 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r5, _0800BA58 @ =0x06010000
	adds r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0800BA5C @ =0x80000040
	b _0800BE56
	.align 2, 0
_0800BA48: .4byte 0x040000D4
_0800BA4C: .4byte 0x08063FE8
_0800BA50: .4byte gUnk_0818B8E0
_0800BA54: .4byte gUnk_03004C20
_0800BA58: .4byte 0x06010000
_0800BA5C: .4byte 0x80000040
_0800BA60:
	ldr r3, _0800BA90 @ =0x040000D4
	ldr r0, _0800BA94 @ =0x080B9268
	str r0, [r3]
	ldr r4, _0800BA98 @ =gUnk_0818B8E0
	ldr r2, _0800BA9C @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r6, _0800BAA0 @ =0x06010000
	adds r0, r0, r6
	str r0, [r3, #4]
	ldr r0, _0800BAA4 @ =0x80000040
	b _0800BE56
	.align 2, 0
_0800BA90: .4byte 0x040000D4
_0800BA94: .4byte 0x080B9268
_0800BA98: .4byte gUnk_0818B8E0
_0800BA9C: .4byte gUnk_03004C20
_0800BAA0: .4byte 0x06010000
_0800BAA4: .4byte 0x80000040
_0800BAA8:
	mov r1, sb
	subs r0, r7, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BB74
	ldrb r0, [r2, #9]
	cmp r0, #1
	beq _0800BAC2
	b _0800BECC
_0800BAC2:
	ldrb r0, [r2, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0800BAD8
	ldr r2, _0800BAD0 @ =0x040000D4
	ldr r6, _0800BAD4 @ =0x080635E8
	b _0800BADC
	.align 2, 0
_0800BAD0: .4byte 0x040000D4
_0800BAD4: .4byte 0x080635E8
_0800BAD8:
	ldr r2, _0800BB5C @ =0x040000D4
	ldr r6, _0800BB60 @ =0x080B9068
_0800BADC:
	str r6, [r2]
	ldr r3, _0800BB64 @ =gUnk_0818B8E0
	mov r8, r3
	ldr r3, _0800BB68 @ =gUnk_03004C20
	ldrb r1, [r3, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r3, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r5, _0800BB6C @ =0x06010000
	adds r0, r0, r5
	str r0, [r2, #4]
	ldr r4, _0800BB70 @ =0x80000040
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	str r6, [r2]
	ldrb r1, [r3, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r3, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x70
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r5
	str r0, [r2, #4]
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	str r6, [r2]
	ldrb r1, [r3, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r3, [r3, #0xc]
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x78
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r5
	str r0, [r2, #4]
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	b _0800BECC
	.align 2, 0
_0800BB5C: .4byte 0x040000D4
_0800BB60: .4byte 0x080B9068
_0800BB64: .4byte gUnk_0818B8E0
_0800BB68: .4byte gUnk_03004C20
_0800BB6C: .4byte 0x06010000
_0800BB70: .4byte 0x80000040
_0800BB74:
	ldrb r0, [r2, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0800BBC4
	ldr r3, _0800BBAC @ =0x040000D4
	ldr r0, _0800BBB0 @ =0x08061FC8
	str r0, [r3]
	ldr r4, _0800BBB4 @ =gUnk_0818B8E0
	ldr r2, _0800BBB8 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, _0800BBBC @ =0x06010000
	adds r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800BBC0 @ =0x80000040
	b _0800BE56
	.align 2, 0
_0800BBAC: .4byte 0x040000D4
_0800BBB0: .4byte 0x08061FC8
_0800BBB4: .4byte gUnk_0818B8E0
_0800BBB8: .4byte gUnk_03004C20
_0800BBBC: .4byte 0x06010000
_0800BBC0: .4byte 0x80000040
_0800BBC4:
	ldr r3, _0800BBF4 @ =0x040000D4
	ldr r0, _0800BBF8 @ =0x080B8F68
	str r0, [r3]
	ldr r4, _0800BBFC @ =gUnk_0818B8E0
	ldr r2, _0800BC00 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r5, _0800BC04 @ =0x06010000
	adds r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0800BC08 @ =0x80000040
	b _0800BE56
	.align 2, 0
_0800BBF4: .4byte 0x040000D4
_0800BBF8: .4byte 0x080B8F68
_0800BBFC: .4byte gUnk_0818B8E0
_0800BC00: .4byte gUnk_03004C20
_0800BC04: .4byte 0x06010000
_0800BC08: .4byte 0x80000040
_0800BC0C:
	mov r6, sb
	subs r3, r7, r6
	lsls r3, r3, #2
	adds r3, r3, r4
	ldr r4, _0800BC60 @ =gUnk_03005220
	ldrb r1, [r4, #3]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #4
	ldrb r2, [r3, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0800BC7C
	ldr r3, _0800BC64 @ =0x040000D4
	ldr r0, _0800BC68 @ =0x08063368
	str r0, [r3]
	ldr r4, _0800BC6C @ =gUnk_0818B8E0
	ldr r2, _0800BC70 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0800BC74 @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0800BC78 @ =0x80000040
	b _0800BE56
	.align 2, 0
_0800BC60: .4byte gUnk_03005220
_0800BC64: .4byte 0x040000D4
_0800BC68: .4byte 0x08063368
_0800BC6C: .4byte gUnk_0818B8E0
_0800BC70: .4byte gUnk_03004C20
_0800BC74: .4byte 0x06010000
_0800BC78: .4byte 0x80000040
_0800BC7C:
	ldr r3, _0800BCAC @ =0x040000D4
	ldr r0, _0800BCB0 @ =0x080B92E8
	str r0, [r3]
	ldr r4, _0800BCB4 @ =gUnk_0818B8E0
	ldr r2, _0800BCB8 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, _0800BCBC @ =0x06010000
	adds r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800BCC0 @ =0x80000040
	b _0800BE56
	.align 2, 0
_0800BCAC: .4byte 0x040000D4
_0800BCB0: .4byte 0x080B92E8
_0800BCB4: .4byte gUnk_0818B8E0
_0800BCB8: .4byte gUnk_03004C20
_0800BCBC: .4byte 0x06010000
_0800BCC0: .4byte 0x80000040
_0800BCC4:
	ldr r4, _0800BD0C @ =gUnk_03004C20
	ldrh r3, [r4, #8]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	asrs r3, r0
	movs r0, #3
	ands r3, r0
	ldr r5, _0800BD10 @ =0x03004C10
	ldr r0, [r5]
	cmp r0, #0
	bne _0800BD00
	ldr r2, _0800BD14 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r6, _0800BD18 @ =0x06010000
	adds r0, r0, r6
	str r0, [r5]
_0800BD00:
	cmp r3, #0
	bne _0800BD24
	ldr r1, _0800BD1C @ =0x040000D4
	ldr r0, _0800BD20 @ =0x080627C8
	b _0800BD50
	.align 2, 0
_0800BD0C: .4byte gUnk_03004C20
_0800BD10: .4byte 0x03004C10
_0800BD14: .4byte gUnk_0818B8E0
_0800BD18: .4byte 0x06010000
_0800BD1C: .4byte 0x040000D4
_0800BD20: .4byte 0x080627C8
_0800BD24:
	cmp r3, #1
	bne _0800BD38
	ldr r1, _0800BD30 @ =0x040000D4
	ldr r0, _0800BD34 @ =0x080B90E8
	b _0800BD50
	.align 2, 0
_0800BD30: .4byte 0x040000D4
_0800BD34: .4byte 0x080B90E8
_0800BD38:
	cmp r3, #2
	bne _0800BD4C
	ldr r1, _0800BD44 @ =0x040000D4
	ldr r0, _0800BD48 @ =0x080B9168
	b _0800BD50
	.align 2, 0
_0800BD44: .4byte 0x040000D4
_0800BD48: .4byte 0x080B9168
_0800BD4C:
	ldr r1, _0800BD60 @ =0x040000D4
	ldr r0, _0800BD64 @ =0x080B91E8
_0800BD50:
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _0800BD68 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0800BECC
	.align 2, 0
_0800BD60: .4byte 0x040000D4
_0800BD64: .4byte 0x080B91E8
_0800BD68: .4byte 0x80000040
_0800BD6C:
	mov r1, sb
	subs r0, r7, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	beq _0800BD80
	cmp r0, #1
	bne _0800BD90
_0800BD80:
	ldr r3, _0800BD88 @ =0x040000D4
	ldr r0, _0800BD8C @ =0x08064868
	b _0800BE2C
	.align 2, 0
_0800BD88: .4byte 0x040000D4
_0800BD8C: .4byte 0x08064868
_0800BD90:
	ldr r3, _0800BDBC @ =0x040000D4
	ldr r0, _0800BDC0 @ =0x080B9468
	str r0, [r3]
	ldr r4, _0800BDC4 @ =gUnk_0818B8E0
	ldr r2, _0800BDC8 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r5, _0800BDCC @ =0x06010000
	adds r0, r0, r5
	b _0800BE52
	.align 2, 0
_0800BDBC: .4byte 0x040000D4
_0800BDC0: .4byte 0x080B9468
_0800BDC4: .4byte gUnk_0818B8E0
_0800BDC8: .4byte gUnk_03004C20
_0800BDCC: .4byte 0x06010000
_0800BDD0:
	adds r5, r7, #0
	mov r6, sb
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	beq _0800BDE6
	cmp r0, #1
	bne _0800BE28
_0800BDE6:
	ldr r3, _0800BE14 @ =0x040000D4
	ldr r0, _0800BE18 @ =0x08064A68
	str r0, [r3]
	ldr r4, _0800BE1C @ =gUnk_0818B8E0
	ldr r2, _0800BE20 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r5, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0800BE24 @ =0x06010000
	adds r0, r0, r1
	b _0800BE52
	.align 2, 0
_0800BE14: .4byte 0x040000D4
_0800BE18: .4byte 0x08064A68
_0800BE1C: .4byte gUnk_0818B8E0
_0800BE20: .4byte gUnk_03004C20
_0800BE24: .4byte 0x06010000
_0800BE28:
	ldr r3, _0800BE5C @ =0x040000D4
	ldr r0, _0800BE60 @ =0x080B9668
_0800BE2C:
	str r0, [r3]
	ldr r4, _0800BE64 @ =gUnk_0818B8E0
	ldr r2, _0800BE68 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r7, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, _0800BE6C @ =0x06010000
	adds r0, r0, r2
_0800BE52:
	str r0, [r3, #4]
	ldr r0, _0800BE70 @ =0x80000100
_0800BE56:
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	b _0800BECC
	.align 2, 0
_0800BE5C: .4byte 0x040000D4
_0800BE60: .4byte 0x080B9668
_0800BE64: .4byte gUnk_0818B8E0
_0800BE68: .4byte gUnk_03004C20
_0800BE6C: .4byte 0x06010000
_0800BE70: .4byte 0x80000100
_0800BE74:
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	bne _0800BECC
	mov r0, sb
	movs r1, #0
	bl sub_08025B78
	movs r5, #1
	str r5, [sp, #0x1c]
	b _0800BECC
_0800BE88:
	ldr r6, [sp, #0x20]
	cmp r6, #0
	bne _0800BECC
	mov r0, sb
	movs r1, #2
	bl sub_08025B78
	movs r0, #1
	str r0, [sp, #0x20]
	b _0800BECC
_0800BE9C:
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bne _0800BECC
	mov r0, sb
	movs r1, #1
	bl sub_08025B78
	movs r2, #1
	str r2, [sp, #0x24]
	b _0800BECC
_0800BEB0:
	ldr r3, [sp, #0x28]
	cmp r3, #0
	bne _0800BECC
	mov r0, sb
	movs r1, #0
	bl sub_08025B78
	movs r5, #1
	str r5, [sp, #0x28]
	b _0800BECC
_0800BEC4:
	mov r0, sb
	movs r1, #0
	bl sub_08025B78
_0800BECC:
	movs r6, #1
	add sb, r6
_0800BED0:
	ldr r0, _0800BEEC @ =gUnk_03005428
	ldrb r0, [r0]
	cmp sb, r0
	bhs _0800BEDA
	b _0800B788
_0800BEDA:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BEEC: .4byte gUnk_03005428

	thumb_func_start sub_0800BEF0
sub_0800BEF0: @ 0x0800BEF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov ip, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, sp
	ldrh r2, [r0, #4]
	ldrh r3, [r0]
	subs r2, r2, r3
	asrs r2, r2, #3
	lsls r2, r2, #0x18
	ldrh r0, [r0, #6]
	mov r1, sp
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	asrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r4, r1, #0x10
	orrs r4, r3
	lsrs r3, r2, #0x18
	asrs r2, r2, #0x18
	cmp r2, #0
	bge _0800BF38
	mov r0, sp
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _0800BF3C
_0800BF38:
	mov r0, sp
	ldrb r7, [r0, #8]
_0800BF3C:
	lsls r0, r5, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	bge _0800BF5A
	mov r0, sp
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _0800BF5E
_0800BF5A:
	mov r0, sp
	ldrb r2, [r0, #8]
_0800BF5E:
	lsls r0, r3, #0x18
	asrs r6, r0, #0x18
	lsls r0, r5, #0x18
	asrs r5, r0, #0x18
	cmp r6, r5
	blt _0800BFA8
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800BF9C @ =0xFFFF0000
	ands r4, r1
	orrs r4, r0
	ldr r3, _0800BFA0 @ =0x030034DC
	ldrh r0, [r3]
	adds r0, r0, r5
	strh r0, [r3]
	ldrh r5, [r3]
	cmp r5, r6
	blt _0800BFDA
	lsrs r1, r4, #0x10
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0800BFA4 @ =0x0000FFFF
	ands r4, r0
	orrs r4, r1
	subs r0, r5, r6
	b _0800BFD8
	.align 2, 0
_0800BF9C: .4byte 0xFFFF0000
_0800BFA0: .4byte 0x030034DC
_0800BFA4: .4byte 0x0000FFFF
_0800BFA8:
	lsrs r1, r4, #0x10
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0800BFE8 @ =0x0000FFFF
	ands r4, r0
	orrs r4, r1
	ldr r3, _0800BFEC @ =0x030034DC
	ldrh r0, [r3]
	adds r0, r0, r6
	strh r0, [r3]
	ldrh r2, [r3]
	cmp r2, r5
	blt _0800BFDA
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800BFF0 @ =0xFFFF0000
	ands r4, r1
	orrs r4, r0
	subs r0, r2, r5
_0800BFD8:
	strh r0, [r3]
_0800BFDA:
	mov r0, ip
	str r4, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BFE8: .4byte 0x0000FFFF
_0800BFEC: .4byte 0x030034DC
_0800BFF0: .4byte 0xFFFF0000
