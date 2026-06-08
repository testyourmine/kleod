	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08014184
sub_08014184: @ 0x08014184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldr r0, _080141F8 @ =gUnk_03004D80
	mov sl, r0
	ldr r0, [r0]
	ldrh r3, [r0, #2]
	ldrh r1, [r0]
	cmp r3, r1
	bhs _08014212
	mov r8, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r5, r0, #2
_080141B8:
	mov r7, r8
	ldr r0, [r7, #4]
	adds r2, r5, r0
	ldrh r0, [r2, #2]
	cmp r6, r0
	blo _08014204
	ldrh r1, [r2, #6]
	mov r7, sb
	subs r0, r6, r7
	cmp r1, r0
	blt _08014204
	ldrh r1, [r2]
	adds r0, r1, #3
	ldr r7, [sp]
	cmp r7, r0
	bge _08014204
	subs r0, r1, #3
	cmp r0, r7
	bge _08014204
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080141FC @ =0xFFFF0000
	ands r4, r0
	orrs r4, r1
	ldrb r1, [r2, #8]
	lsls r1, r1, #0x10
	ldr r0, _08014200 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r1
	mov r0, ip
	str r4, [r0]
	b _0801421A
	.align 2, 0
_080141F8: .4byte gUnk_03004D80
_080141FC: .4byte 0xFFFF0000
_08014200: .4byte 0xFF00FFFF
_08014204:
	adds r5, #0xc
	adds r3, #1
	mov r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r3, r0
	blo _080141B8
_08014212:
	ldr r0, _0801422C @ =0x0000FFFF
	orrs r4, r0
	mov r7, ip
	str r4, [r7]
_0801421A:
	mov r0, ip
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801422C: .4byte 0x0000FFFF

	thumb_func_start sub_08014230
sub_08014230: @ 0x08014230
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _08014290 @ =0x0000FFFF
	orrs r5, r0
	movs r3, #0
	ldr r1, _08014294 @ =gUnk_03004D80
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	cmp r3, r0
	bhs _080142FE
	movs r0, #0
	str r0, [sp]
_08014262:
	ldr r0, [r1]
	ldr r0, [r0, #4]
	ldr r1, [sp]
	adds r6, r1, r0
	ldrh r0, [r6, #4]
	cmp r0, sb
	blo _080142EC
	ldrh r2, [r6]
	cmp sb, r2
	blo _080142DC
	ldrh r0, [r6, #2]
	ldrh r1, [r6, #6]
	cmp r0, r1
	bne _08014298
	mov r2, sl
	subs r0, r7, r2
	ldrh r1, [r6, #2]
	cmp r0, r1
	bgt _080142EC
	cmp r1, r7
	bhi _080142EC
	b _080142CC
	.align 2, 0
_08014290: .4byte 0x0000FFFF
_08014294: .4byte gUnk_03004D80
_08014298:
	ldrh r1, [r6, #6]
	ldrh r4, [r6, #2]
	subs r1, r1, r4
	mov ip, r1
	ldrh r2, [r6]
	mov r1, sb
	subs r0, r1, r2
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	ldrh r1, [r6, #4]
	subs r1, r1, r2
	str r3, [sp, #4]
	bl __divsi3
	adds r1, r0, r4
	mov r2, sl
	subs r0, r7, r2
	ldr r3, [sp, #4]
	cmp r1, r0
	blt _080142EC
	adds r0, r7, #3
	cmp r1, r0
	bgt _080142EC
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_080142CC:
	ldr r0, _080142E4 @ =0xFFFF0000
	ands r5, r0
	orrs r5, r1
	ldrb r1, [r6, #8]
	lsls r1, r1, #0x10
	ldr r0, _080142E8 @ =0xFF00FFFF
	ands r5, r0
	orrs r5, r1
_080142DC:
	mov r0, r8
	str r5, [r0]
	b _08014302
	.align 2, 0
_080142E4: .4byte 0xFFFF0000
_080142E8: .4byte 0xFF00FFFF
_080142EC:
	ldr r1, [sp]
	adds r1, #0xc
	str r1, [sp]
	adds r3, #1
	ldr r1, _08014314 @ =gUnk_03004D80
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	cmp r3, r0
	blo _08014262
_080142FE:
	mov r2, r8
	str r5, [r2]
_08014302:
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014314: .4byte gUnk_03004D80

	thumb_func_start sub_08014318
sub_08014318: @ 0x08014318
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r1, _08014338 @ =gUnk_03005220
	adds r4, r1, #0
	adds r4, #0x56
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r7, r1, #0
	cmp r0, #0
	ble _08014344
	ldr r2, _0801433C @ =gUnk_03004790
	ldr r1, _08014340 @ =gUnk_03002920
	ldrh r3, [r1]
	adds r0, r0, r3
	adds r0, #0xc
	b _08014356
	.align 2, 0
_08014338: .4byte gUnk_03005220
_0801433C: .4byte gUnk_03004790
_08014340: .4byte gUnk_03002920
_08014344:
	cmp r0, #0
	bge _080143B0
	ldr r2, _08014478 @ =gUnk_03004790
	ldr r1, _0801447C @ =gUnk_03002920
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	subs r0, #0xd
_08014356:
	asrs r6, r0, #3
	adds r0, r7, #0
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1, #2]
	adds r5, r0, r1
	subs r1, r5, #4
	asrs r1, r1, #3
	ldr r0, _08014480 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, [r2, #0x14]
	adds r0, r6, r0
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r0, r5, #0
	subs r0, #0xc
	asrs r0, r0, #3
	muls r0, r4, r0
	adds r0, r6, r0
	adds r0, r1, r0
	adds r2, r3, #0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08014392
	adds r2, r0, #0
_08014392:
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	adds r0, r5, #0
	subs r0, #0x14
	asrs r0, r0, #3
	muls r0, r4, r0
	adds r0, r6, r0
	adds r0, r1, r0
	adds r1, r3, #0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080143AC
	adds r1, r0, #0
_080143AC:
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
_080143B0:
	adds r4, r7, #0
	adds r4, #0x57
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08014410
	ldr r2, _08014478 @ =gUnk_03004790
	ldr r1, _0801447C @ =gUnk_03002920
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r5, [r1]
	adds r0, r0, r5
	asrs r6, r0, #3
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r1, #2]
	adds r5, r0, r1
	adds r1, r5, #0
	subs r1, #0x1a
	asrs r1, r1, #3
	ldr r0, _08014480 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r2, [r2, #0x14]
	adds r0, r6, r0
	adds r0, r2, r0
	adds r1, r3, #0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080143F8
	adds r1, r0, #0
_080143F8:
	adds r3, r1, #0
	subs r0, r5, #4
	asrs r0, r0, #3
	muls r0, r4, r0
	adds r0, r6, r0
	adds r0, r2, r0
	adds r1, r3, #0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0801440E
	adds r1, r0, #0
_0801440E:
	adds r3, r1, #0
_08014410:
	ldr r0, _08014484 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	cmp r3, r0
	bhs _08014488
	ldr r3, _0801447C @ =gUnk_03002920
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r0, r7, #0
	adds r0, #0x57
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r5, [r3, #2]
	adds r0, r0, r5
	strh r0, [r3, #2]
	adds r4, r7, #0
	adds r4, #0x3f
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #0xb]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r2, [r3, #0xb]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0xb]
	ldrb r2, [r4]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	movs r2, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0xb]
	b _080144BC
	.align 2, 0
_08014478: .4byte gUnk_03004790
_0801447C: .4byte gUnk_03002920
_08014480: .4byte gUnk_03003430
_08014484: .4byte gUnk_03004654
_08014488:
	adds r0, r7, #0
	adds r0, #0x57
	movs r5, #0
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #0x17
	strb r5, [r0]
	movs r0, #1
	bl sub_080145A8
	adds r6, r7, #0
	adds r6, #0x34
	adds r4, r7, #0
	adds r4, #0x39
	ldrb r1, [r6]
	ldrb r0, [r4]
	orrs r0, r1
	cmp r0, #0
	beq _080144BC
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	strb r5, [r4]
	strb r5, [r6]
_080144BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080144C4
sub_080144C4: @ 0x080144C4
	push {lr}
	movs r0, #1
	bl sub_080145A8
	ldr r3, _080145A0 @ =gUnk_03005220
	ldr r0, _080145A4 @ =gUnk_03002920
	mov ip, r0
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x86
	lsls r1, r1, #1
	add r1, ip
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x5d
	strb r0, [r1]
	subs r1, #0x16
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #0xe
	strb r0, [r1]
	adds r1, #0xb
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r1, #6
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #0xe
	strb r0, [r1]
	subs r1, #0x20
	strb r0, [r1]
	adds r1, #0x21
	strb r0, [r1]
	subs r1, #7
	strb r0, [r1]
	subs r1, #0x18
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r1, #0xb
	strb r0, [r1]
	subs r1, #0xe
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #3
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r1, #3
	strb r0, [r1]
	adds r1, #0xe
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #2
	strb r0, [r1]
	adds r1, #0x19
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r1, #3
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	strh r0, [r3, #0x2c]
	strh r0, [r3, #0x2a]
	strh r0, [r3, #0x28]
	strh r0, [r3, #0x26]
	adds r2, r3, #0
	adds r2, #0x5c
	movs r1, #1
	strb r1, [r2]
	subs r2, #0x1f
	strb r1, [r2]
	mov r2, ip
	strb r1, [r2, #0x10]
	movs r1, #0x8c
	lsls r1, r1, #2
	strh r1, [r3, #0x16]
	strh r0, [r3, #0x18]
	ldrb r1, [r2, #0xe]
	subs r0, #2
	ands r0, r1
	strb r0, [r2, #0xe]
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	pop {r0}
	bx r0
	.align 2, 0
_080145A0: .4byte gUnk_03005220
_080145A4: .4byte gUnk_03002920

	thumb_func_start sub_080145A8
sub_080145A8: @ 0x080145A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08014610 @ =gUnk_03003410
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	bne _08014608
	ldr r0, _08014614 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	ldr r3, _08014618 @ =gUnk_03005220
	cmp r0, #8
	beq _080145DE
	ldr r2, _0801461C @ =gUnk_03002920
	adds r0, r3, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrb r1, [r2, #0xe]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _080145DE
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xe]
_080145DE:
	adds r0, r3, #0
	adds r0, #0x38
	movs r1, #0
	strb r1, [r0]
	adds r0, #0xb
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	cmp r4, #1
	bne _08014608
	ldr r0, _08014620 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #0x15
	bls _08014608
	adds r1, r0, #0
	subs r1, #0x16
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl sub_08025B78
_08014608:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014610: .4byte gUnk_03003410
_08014614: .4byte gUnk_03004C20
_08014618: .4byte gUnk_03005220
_0801461C: .4byte gUnk_03002920
_08014620: .4byte gUnk_03000830

	thumb_func_start sub_08014624
sub_08014624: @ 0x08014624
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r5, _080146F0 @ =gUnk_03005220
	movs r0, #0x46
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _080146F4 @ =gUnk_03003410
	mov r2, r8
	ldrb r1, [r2]
	ldrb r0, [r0, #0xb]
	adds r4, r1, #0
	orrs r4, r0
	ldr r0, _080146F8 @ =gUnk_030034E4
	ldrb r0, [r0]
	orrs r4, r0
	cmp r4, #0
	beq _0801464C
	b _0801474C
_0801464C:
	adds r7, r5, #0
	adds r7, #0x5b
	strb r4, [r7]
	cmp r6, #1
	bne _08014672
	ldrb r2, [r5]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	subs r1, #1
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	bl sub_08025DD4
	strb r6, [r7]
_08014672:
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _08014700
	movs r0, #0x27
	bl m4aSongNumStart
	movs r0, #0x46
	mov r1, r8
	strb r0, [r1]
	ldr r1, _080146FC @ =gUnk_03002920
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
	adds r2, #0x1c
	adds r0, r1, r2
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x57
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	subs r0, #0x17
	strb r4, [r0]
	subs r0, #4
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	subs r0, #5
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x42
	ldrb r0, [r2]
	cmp r0, #0
	beq _080146DC
	adds r3, r0, #0
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #0x11]
	cmp r0, #0x6f
	beq _080146DC
	cmp r0, #0x25
	beq _080146DC
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #2
	bl sub_0801E664
_080146DC:
	ldr r2, _080146F0 @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x38
	movs r1, #0
	strb r1, [r0]
	adds r0, #0xb
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	b _08014714
	.align 2, 0
_080146F0: .4byte gUnk_03005220
_080146F4: .4byte gUnk_03003410
_080146F8: .4byte gUnk_030034E4
_080146FC: .4byte gUnk_03002920
_08014700:
	movs r0, #0x25
	bl m4aSongNumStart
	adds r0, r5, #0
	adds r0, #0x3c
	strb r4, [r0]
	movs r0, #0
	movs r1, #0xc
	bl sub_08025B78
_08014714:
	ldr r4, _08014758 @ =gUnk_03005220
	movs r5, #0
	strh r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0x87
	strb r0, [r1]
	subs r1, #1
	ldrb r0, [r1]
	cmp r0, #1
	bls _08014734
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x8e
	bl m4aSongNumStart
_08014734:
	ldr r0, _0801475C @ =gUnk_03002920
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x44
	strb r0, [r1]
	subs r1, #8
	movs r0, #0
	strb r0, [r1]
	strh r5, [r4, #0x26]
	strh r5, [r4, #0x28]
_0801474C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014758: .4byte gUnk_03005220
_0801475C: .4byte gUnk_03002920

	thumb_func_start sub_08014760
sub_08014760: @ 0x08014760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, _0801479C @ =gUnk_03002920
	lsls r0, r0, #3
	mov r2, sl
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r3, [r0]
	str r3, [sp]
	ldrh r4, [r0, #2]
	str r4, [sp, #4]
	ldrb r0, [r0, #0xf]
	cmp r0, #0x1b
	bls _08014790
	bl _08016ECE
_08014790:
	lsls r0, r0, #2
	ldr r1, _080147A0 @ =_080147A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801479C: .4byte gUnk_03002920
_080147A0: .4byte _080147A4
_080147A4: @ jump table
	.4byte _08014814 @ case 0
	.4byte _08014814 @ case 1
	.4byte _08016ECE @ case 2
	.4byte _08016ECE @ case 3
	.4byte _08016ECE @ case 4
	.4byte _08016ECE @ case 5
	.4byte _08016ECE @ case 6
	.4byte _08016E36 @ case 7
	.4byte _08016E36 @ case 8
	.4byte _08016E36 @ case 9
	.4byte _08016ECE @ case 10
	.4byte _08016D88 @ case 11
	.4byte _08016D88 @ case 12
	.4byte _08016D88 @ case 13
	.4byte _080163F8 @ case 14
	.4byte _080163A8 @ case 15
	.4byte _080156CC @ case 16
	.4byte _080156CC @ case 17
	.4byte _08016ECE @ case 18
	.4byte _08015114 @ case 19
	.4byte _08016ECE @ case 20
	.4byte _0801572A @ case 21
	.4byte _0801572A @ case 22
	.4byte _080163F8 @ case 23
	.4byte _08016ECE @ case 24
	.4byte _08016ECE @ case 25
	.4byte _08016ECE @ case 26
	.4byte _08016CB8 @ case 27
_08014814:
	mov r5, sl
	lsls r0, r5, #3
	subs r1, r0, r5
	lsls r1, r1, #2
	ldr r6, _08014830 @ =gUnk_03002920
	adds r3, r1, r6
	ldrb r1, [r3, #0x12]
	str r0, [sp, #0xc]
	cmp r1, #0
	bne _08014834
	ldrh r0, [r3, #2]
	adds r0, #2
	b _08014838
	.align 2, 0
_08014830: .4byte gUnk_03002920
_08014834:
	ldrh r0, [r3, #2]
	adds r0, #1
_08014838:
	strh r0, [r3, #2]
	ldr r7, [sp, #0xc]
	mov r1, sl
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _080148A0 @ =gUnk_03002920
	adds r5, r0, r2
	movs r0, #1
	strb r0, [r5, #0x17]
	ldr r4, _080148A4 @ =gUnk_03004790
	ldrh r3, [r5]
	adds r1, r3, #6
	asrs r1, r1, #3
	ldrh r2, [r5, #2]
	subs r2, #2
	asrs r2, r2, #3
	ldr r0, _080148A8 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r4, #0x14]
	adds r1, r1, r2
	adds r1, r0, r1
	ldrb r7, [r1]
	subs r3, #0xf
	asrs r3, r3, #3
	adds r3, r3, r2
	adds r0, r0, r3
	adds r1, r7, #0
	ldrb r0, [r0]
	cmp r7, r0
	bhs _0801487A
	adds r1, r0, #0
_0801487A:
	ldr r0, _080148AC @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	cmp r0, r1
	bhi _080148E0
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _080148E0
	strb r0, [r5, #0x17]
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080148B4
	ldr r0, [sp, #4]
	adds r0, #3
	ldr r1, _080148B0 @ =0x0000FFF8
	ands r0, r1
	strh r0, [r5, #2]
	b _080148BA
	.align 2, 0
_080148A0: .4byte gUnk_03002920
_080148A4: .4byte gUnk_03004790
_080148A8: .4byte gUnk_03003430
_080148AC: .4byte gUnk_03004654
_080148B0: .4byte 0x0000FFF8
_080148B4:
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r5, #2]
_080148BA:
	ldr r2, _080148DC @ =gUnk_03005220
	adds r0, r2, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	beq _080148CA
	bl _08016ECE
_080148CA:
	adds r0, r2, #0
	adds r0, #0x57
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	bl _08016ECE
	.align 2, 0
_080148DC: .4byte gUnk_03005220
_080148E0:
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _080148F8 @ =gUnk_03002920
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	str r0, [sp, #8]
	ldr r0, _080148FC @ =gUnk_03003630
	ldr r6, [r0]
	b _08015058
	.align 2, 0
_080148F8: .4byte gUnk_03002920
_080148FC: .4byte gUnk_03003630
_08014900:
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r7, _08014934 @ =gUnk_03002920
	adds r0, r0, r7
	ldrb r3, [r0, #0xf]
	mov ip, r1
	adds r1, r6, #1
	mov r8, r1
	cmp r3, #0x1a
	bls _08014918
	b _08015056
_08014918:
	cmp r3, #0x19
	bne _0801491E
	b _08015056
_0801491E:
	ldrb r0, [r0, #0x11]
	subs r0, #6
	cmp r0, #0x6f
	bls _08014928
	b _08015056
_08014928:
	lsls r0, r0, #2
	ldr r1, _08014938 @ =_0801493C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014934: .4byte gUnk_03002920
_08014938: .4byte _0801493C
_0801493C: @ jump table
	.4byte _08014B70 @ case 0
	.4byte _08015056 @ case 1
	.4byte _08014B70 @ case 2
	.4byte _08015056 @ case 3
	.4byte _08015056 @ case 4
	.4byte _08015056 @ case 5
	.4byte _08015056 @ case 6
	.4byte _08015056 @ case 7
	.4byte _08015056 @ case 8
	.4byte _08015056 @ case 9
	.4byte _08015056 @ case 10
	.4byte _08015056 @ case 11
	.4byte _08015056 @ case 12
	.4byte _08015056 @ case 13
	.4byte _08015056 @ case 14
	.4byte _08015056 @ case 15
	.4byte _08015056 @ case 16
	.4byte _08015056 @ case 17
	.4byte _08015056 @ case 18
	.4byte _08015056 @ case 19
	.4byte _08015056 @ case 20
	.4byte _08015056 @ case 21
	.4byte _08015056 @ case 22
	.4byte _08015056 @ case 23
	.4byte _08015056 @ case 24
	.4byte _08015056 @ case 25
	.4byte _08015056 @ case 26
	.4byte _08015056 @ case 27
	.4byte _08015056 @ case 28
	.4byte _08015056 @ case 29
	.4byte _08015056 @ case 30
	.4byte _08014AFC @ case 31
	.4byte _08015056 @ case 32
	.4byte _08014D5C @ case 33
	.4byte _08014D5C @ case 34
	.4byte _08014D5C @ case 35
	.4byte _08014D5C @ case 36
	.4byte _08014D5C @ case 37
	.4byte _08015056 @ case 38
	.4byte _08015056 @ case 39
	.4byte _08015056 @ case 40
	.4byte _08015056 @ case 41
	.4byte _08015056 @ case 42
	.4byte _08015056 @ case 43
	.4byte _08015056 @ case 44
	.4byte _08015056 @ case 45
	.4byte _08015056 @ case 46
	.4byte _08014FC4 @ case 47
	.4byte _08014E94 @ case 48
	.4byte _08015056 @ case 49
	.4byte _08014F0C @ case 50
	.4byte _08015056 @ case 51
	.4byte _08015056 @ case 52
	.4byte _08015056 @ case 53
	.4byte _08015056 @ case 54
	.4byte _08015056 @ case 55
	.4byte _08014F60 @ case 56
	.4byte _08014CE4 @ case 57
	.4byte _08015056 @ case 58
	.4byte _08014BDC @ case 59
	.4byte _08015056 @ case 60
	.4byte _08015056 @ case 61
	.4byte _08015056 @ case 62
	.4byte _08015056 @ case 63
	.4byte _08015056 @ case 64
	.4byte _08015056 @ case 65
	.4byte _08015056 @ case 66
	.4byte _08015056 @ case 67
	.4byte _08015056 @ case 68
	.4byte _08015056 @ case 69
	.4byte _08015056 @ case 70
	.4byte _08015056 @ case 71
	.4byte _08015056 @ case 72
	.4byte _08015056 @ case 73
	.4byte _08015056 @ case 74
	.4byte _08015056 @ case 75
	.4byte _08015056 @ case 76
	.4byte _08015056 @ case 77
	.4byte _08015056 @ case 78
	.4byte _08015056 @ case 79
	.4byte _08015056 @ case 80
	.4byte _08015056 @ case 81
	.4byte _08015056 @ case 82
	.4byte _08015056 @ case 83
	.4byte _08015056 @ case 84
	.4byte _08015056 @ case 85
	.4byte _08015056 @ case 86
	.4byte _08015056 @ case 87
	.4byte _08015056 @ case 88
	.4byte _08015056 @ case 89
	.4byte _08015056 @ case 90
	.4byte _08015056 @ case 91
	.4byte _08015056 @ case 92
	.4byte _08015056 @ case 93
	.4byte _08015056 @ case 94
	.4byte _08015056 @ case 95
	.4byte _08015056 @ case 96
	.4byte _08015056 @ case 97
	.4byte _08015056 @ case 98
	.4byte _08015056 @ case 99
	.4byte _08015056 @ case 100
	.4byte _08015056 @ case 101
	.4byte _08015056 @ case 102
	.4byte _08015056 @ case 103
	.4byte _08015056 @ case 104
	.4byte _08014AFC @ case 105
	.4byte _08014FC4 @ case 106
	.4byte _08014C58 @ case 107
	.4byte _08014C58 @ case 108
	.4byte _08014C6E @ case 109
	.4byte _08014C6E @ case 110
	.4byte _08014E94 @ case 111
_08014AFC:
	ldr r1, _08014B68 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r4, [r7]
	adds r2, r4, #0
	subs r2, #0x10
	mov r5, ip
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r0, r3, #7
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08014B24
	b _08015056
_08014B24:
	adds r1, r4, #0
	adds r1, #8
	subs r0, #0x16
	cmp r1, r0
	bgt _08014B30
	b _08015056
_08014B30:
	ldrh r2, [r7, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	blt _08014B3E
	b _08015056
_08014B3E:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	bgt _08014B48
	b _08015056
_08014B48:
	cmp sl, r6
	bne _08014B4E
	b _08015056
_08014B4E:
	adds r0, #4
	cmp r2, r0
	bgt _08014B5E
	ldr r2, _08014B6C @ =0x0000FFE8
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
_08014B5E:
	movs r0, #0
	strb r0, [r7, #0xf]
	strb r0, [r7, #0x17]
	b _08015056
	.align 2, 0
_08014B68: .4byte gUnk_03002920
_08014B6C: .4byte 0x0000FFE8
_08014B70:
	ldr r1, _08014BD4 @ =gUnk_03002920
	ldr r3, [sp, #0xc]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r4, [r7]
	adds r2, r4, #0
	subs r2, #0xf
	mov r5, ip
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r0, r3, #0
	adds r0, #0xc
	adds r6, #1
	mov r8, r6
	cmp r2, r0
	blt _08014B9A
	b _08015056
_08014B9A:
	adds r1, r4, #7
	subs r0, #0x18
	cmp r1, r0
	bgt _08014BA4
	b _08015056
_08014BA4:
	ldrh r2, [r7, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	blt _08014BB2
	b _08015056
_08014BB2:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	bgt _08014BBC
	b _08015056
_08014BBC:
	adds r0, #5
	cmp r2, r0
	blt _08014BC4
	b _08015056
_08014BC4:
	ldr r6, _08014BD8 @ =0x0000FFE9
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	strb r0, [r7, #0x17]
	b _08015056
	.align 2, 0
_08014BD4: .4byte gUnk_03002920
_08014BD8: .4byte 0x0000FFE9
_08014BDC:
	ldr r1, _08014C4C @ =gUnk_03002920
	ldr r7, [sp, #0xc]
	mov r2, sl
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r4, [r7]
	adds r2, r4, #0
	subs r2, #0xf
	mov r3, ip
	subs r0, r3, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r0, r3, #0
	adds r0, #0x10
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08014C06
	b _08015056
_08014C06:
	adds r1, r4, #7
	subs r0, #0x20
	cmp r1, r0
	bgt _08014C10
	b _08015056
_08014C10:
	ldrh r1, [r7, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r5, #2]
	cmp r0, r2
	blt _08014C1E
	b _08015056
_08014C1E:
	adds r0, r2, #0
	subs r0, #0x20
	cmp r1, r0
	bgt _08014C28
	b _08015056
_08014C28:
	ldr r1, _08014C50 @ =gUnk_03000830
	ldr r0, _08014C54 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	beq _08014C3C
	b _08015056
_08014C3C:
	adds r0, r2, #0
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	strb r1, [r7, #0x17]
	b _08015056
	.align 2, 0
_08014C4C: .4byte gUnk_03002920
_08014C50: .4byte gUnk_03000830
_08014C54: .4byte gUnk_0300363C
_08014C58:
	adds r0, r6, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r2, _08014CE0 @ =gUnk_03002920
	adds r1, r1, r2
	ldrb r1, [r1, #8]
	mov r8, r0
	cmp r1, #0
	beq _08014C6E
	b _08015056
_08014C6E:
	ldr r1, _08014CE0 @ =gUnk_03002920
	ldr r3, [sp, #0xc]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r4, [r5]
	adds r2, r4, #0
	subs r2, #0xf
	mov r7, ip
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r3, [r1]
	adds r7, r3, #2
	cmp r2, r7
	blt _08014C92
	b _08015056
_08014C92:
	adds r0, r4, #7
	subs r4, r3, #2
	cmp r0, r4
	bgt _08014C9C
	b _08015056
_08014C9C:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r1, #2]
	cmp r0, r1
	blt _08014CAA
	b _08015056
_08014CAA:
	adds r2, r1, #0
	subs r2, #0x10
	cmp r3, r2
	bgt _08014CB4
	b _08015056
_08014CB4:
	ldr r0, [sp]
	subs r0, #0xf
	cmp r0, r7
	bge _08014CD4
	ldr r0, [sp]
	adds r0, #7
	cmp r0, r4
	ble _08014CD4
	ldr r0, [sp, #4]
	subs r0, #0x18
	cmp r0, r1
	bge _08014CD4
	ldr r0, [sp, #4]
	cmp r0, r2
	ble _08014CD4
	b _08015056
_08014CD4:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EAA4
	b _08015056
	.align 2, 0
_08014CE0: .4byte gUnk_03002920
_08014CE4:
	ldr r1, _08014D50 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r4, [r7]
	adds r2, r4, #0
	subs r2, #0xf
	mov r5, ip
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08014D0E
	b _08015056
_08014D0E:
	adds r1, r4, #7
	subs r0, #0x18
	cmp r1, r0
	bgt _08014D18
	b _08015056
_08014D18:
	ldrh r2, [r7, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	blt _08014D26
	b _08015056
_08014D26:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	bgt _08014D30
	b _08015056
_08014D30:
	ldr r2, _08014D54 @ =0x0000FFF0
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	strb r0, [r7, #0x17]
	adds r0, r6, #0
	movs r1, #2
	bl sub_08025B78
	ldr r0, _08014D58 @ =gUnk_03003610
	mov r3, sl
	strb r3, [r0, #6]
	strb r6, [r0, #7]
	b _08015056
	.align 2, 0
_08014D50: .4byte gUnk_03002920
_08014D54: .4byte 0x0000FFF0
_08014D58: .4byte gUnk_03003610
_08014D5C:
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r7, _08014DF4 @ =gUnk_03002920
	adds r3, r0, r7
	ldrh r4, [r3]
	adds r1, r4, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r5, r0, r7
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0x11
	cmp r1, r0
	bge _08014E6A
	adds r1, r4, #7
	subs r0, #0x22
	cmp r1, r0
	ble _08014E6A
	ldrh r2, [r3, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _08014E6A
	adds r0, r1, #0
	subs r0, #0x10
	cmp r2, r0
	ble _08014E6A
	adds r0, #3
	adds r4, r6, #1
	mov r8, r4
	cmp r2, r0
	ble _08014DA8
	b _08015056
_08014DA8:
	ldr r7, _08014DF8 @ =0x0000FFF0
	adds r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	strb r0, [r3, #0x17]
	strb r0, [r3, #0x12]
	ldrb r0, [r5, #0x11]
	subs r0, #0x29
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08014E2E
	ldrb r1, [r5, #8]
	ldrb r0, [r5, #9]
	subs r0, #0xa
	cmp r1, r0
	bge _08014E1C
	cmp r1, #0
	beq _08014E1C
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _08014E00
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldr r1, _08014DFC @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _08014E2E
	adds r1, #0x56
	movs r0, #1
	b _08014E2C
	.align 2, 0
_08014DF4: .4byte gUnk_03002920
_08014DF8: .4byte 0x0000FFF0
_08014DFC: .4byte gUnk_03005220
_08014E00:
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	ldr r1, _08014E18 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _08014E2E
	adds r1, #0x56
	movs r0, #0xff
	b _08014E2C
	.align 2, 0
_08014E18: .4byte gUnk_03005220
_08014E1C:
	ldr r1, _08014E50 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _08014E2E
	adds r1, #0x56
	movs r0, #0
_08014E2C:
	strb r0, [r1]
_08014E2E:
	ldr r1, _08014E54 @ =gUnk_03002920
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x11]
	cmp r0, #0x2b
	bne _08014E58
	ldr r3, [sp, #0xc]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0xf]
	b _08015052
	.align 2, 0
_08014E50: .4byte gUnk_03005220
_08014E54: .4byte gUnk_03002920
_08014E58:
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0xf]
	strb r6, [r0, #0x18]
	b _08015052
_08014E6A:
	ldr r0, _08014E90 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0xf]
	adds r4, r6, #1
	mov r8, r4
	cmp r0, #1
	beq _08014E82
	b _08015056
_08014E82:
	ldrb r0, [r1, #0x18]
	cmp r0, r6
	beq _08014E8A
	b _08015056
_08014E8A:
	movs r0, #0
	strb r0, [r1, #0xf]
	b _08015056
	.align 2, 0
_08014E90: .4byte gUnk_03002920
_08014E94:
	ldr r1, _08014EEC @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r5, [r7]
	adds r2, r5, #0
	subs r2, #0xf
	mov r3, ip
	subs r0, r3, r6
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r3, [r4]
	adds r0, r3, #3
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08014EBC
	b _08015056
_08014EBC:
	adds r1, r5, #7
	subs r0, r3, #3
	cmp r1, r0
	bgt _08014EC6
	b _08015056
_08014EC6:
	ldrh r3, [r7, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	blt _08014ED8
	b _08015056
_08014ED8:
	subs r0, #8
	cmp r3, r0
	bgt _08014EE0
	b _08015056
_08014EE0:
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	bne _08014EF0
	movs r0, #0x10
	b _08014F02
	.align 2, 0
_08014EEC: .4byte gUnk_03002920
_08014EF0:
	cmp r0, #1
	bne _08014EF8
	movs r0, #0x11
	b _08014F02
_08014EF8:
	cmp r0, #0
	bne _08014F00
	movs r0, #0xf
	b _08014F02
_08014F00:
	movs r0, #0xe
_08014F02:
	strb r0, [r7, #0xf]
	movs r0, #0xa1
	bl m4aSongNumStart
	b _08015052
_08014F0C:
	ldr r1, _08014F5C @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r5, [r4]
	adds r2, r5, #0
	subs r2, #0xf
	mov r7, ip
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r3, [r7]
	adds r0, r3, #0
	adds r0, #0x20
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08014F36
	b _08015056
_08014F36:
	adds r1, r5, #7
	subs r0, #0x40
	cmp r1, r0
	bgt _08014F40
	b _08015056
_08014F40:
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r7, #2]
	cmp r0, r1
	blt _08014F4E
	b _08015056
_08014F4E:
	adds r0, r1, #0
	subs r0, #0x1b
	cmp r2, r0
	bgt _08014F58
	b _08015056
_08014F58:
	adds r0, #3
	b _08014FA8
	.align 2, 0
_08014F5C: .4byte gUnk_03002920
_08014F60:
	ldr r1, _08014FBC @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r5, [r4]
	adds r2, r5, #0
	subs r2, #0xf
	mov r7, ip
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r3, [r7]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	bge _08015056
	adds r1, r5, #7
	subs r0, #0x18
	cmp r1, r0
	ble _08015056
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r7, #2]
	cmp r0, r1
	bge _08015056
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	ble _08015056
	ldr r2, _08014FC0 @ =0x0000FFF8
	adds r0, r1, r2
_08014FA8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x18]
	strb r1, [r4, #0x17]
	b _08015056
	.align 2, 0
_08014FBC: .4byte gUnk_03002920
_08014FC0: .4byte 0x0000FFF8
_08014FC4:
	ldr r3, [sp, #0xc]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r7, _08015104 @ =gUnk_03002920
	adds r5, r0, r7
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r4, r0, r7
	ldrh r2, [r4]
	movs r7, #0xf
	adds r7, r7, r2
	mov sb, r7
	adds r0, r6, #1
	mov r8, r0
	cmp r1, sb
	bge _08015056
	adds r0, r3, #7
	adds r7, r2, #0
	subs r7, #0xf
	cmp r0, r7
	ble _08015056
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	bge _08015056
	adds r3, r1, #0
	subs r3, #0x20
	cmp r2, r3
	ble _08015056
	ldr r0, [sp]
	subs r0, #0xf
	cmp r0, sb
	bge _0801502A
	ldr r0, [sp]
	adds r0, #7
	cmp r0, r7
	ble _0801502A
	ldr r0, [sp, #4]
	subs r0, #0x18
	cmp r0, r1
	bge _0801502A
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt _08015056
_0801502A:
	ldr r2, _08015104 @ =gUnk_03002920
	mov r3, ip
	subs r1, r3, r6
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r4, _08015108 @ =0x0000FFE0
	adds r0, r4, #0
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #0xf]
	strb r1, [r0, #0x17]
_08015052:
	adds r6, #1
	mov r8, r6
_08015056:
	mov r6, r8
_08015058:
	ldr r0, _0801510C @ =gUnk_03004674
	ldr r0, [r0]
	cmp r6, r0
	bhi _08015062
	b _08014900
_08015062:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08015104 @ =gUnk_03002920
	adds r2, r0, r3
	mov r4, sp
	ldrh r1, [r4, #8]
	adds r5, r1, #0
	strh r5, [r2, #2]
	ldr r5, _08015110 @ =gUnk_03005220
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _0801508C
	ldr r6, [sp, #4]
	subs r0, r1, r6
	adds r1, r5, #0
	adds r1, #0x57
	strb r0, [r1]
_0801508C:
	ldr r7, [sp, #4]
	ldrh r0, [r2, #2]
	cmp r7, r0
	bne _08015098
	bl _08016ECE
_08015098:
	ldrh r4, [r2]
	adds r1, r4, #0
	subs r1, #0xf
	ldr r6, _08015104 @ =gUnk_03002920
	ldrh r3, [r6]
	adds r0, r3, #0
	adds r0, #0xc
	cmp r1, r0
	blt _080150AE
	bl _08016ECE
_080150AE:
	adds r1, r4, #7
	subs r0, #0x18
	cmp r1, r0
	bgt _080150BA
	bl _08016ECE
_080150BA:
	ldrh r4, [r2, #2]
	subs r1, r4, #4
	ldrh r3, [r6, #2]
	adds r0, r3, #0
	subs r0, #0x14
	cmp r1, r0
	blt _080150CC
	bl _08016ECE
_080150CC:
	adds r1, r3, #0
	subs r1, #0x18
	cmp r4, r1
	bgt _080150D8
	bl _08016ECE
_080150D8:
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _080150E6
	bl _08016ECE
_080150E6:
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	beq _080150F0
	bl _08016ECE
_080150F0:
	ldrb r0, [r2, #0xf]
	cmp r0, #1
	bne _080150FA
	bl _08016ECE
_080150FA:
	strh r1, [r2, #2]
	movs r0, #0
	strb r0, [r2, #0x17]
	bl _08016ECE
	.align 2, 0
_08015104: .4byte gUnk_03002920
_08015108: .4byte 0x0000FFE0
_0801510C: .4byte gUnk_03004674
_08015110: .4byte gUnk_03005220
_08015114:
	ldr r7, _08015168 @ =gUnk_03002920
	ldrh r0, [r7]
	adds r0, #4
	mov r1, sl
	lsls r4, r1, #3
	subs r1, r4, r1
	lsls r1, r1, #2
	adds r5, r1, r7
	ldrh r1, [r5]
	subs r0, r0, r1
	bl Abs
	str r4, [sp, #0xc]
	cmp r0, #7
	bgt _08015188
	ldrh r0, [r7]
	adds r0, #4
	movs r4, #0
	strh r0, [r5]
	ldrh r0, [r7, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x18
	bl Abs
	cmp r0, #7
	bgt _08015170
	ldr r1, _0801516C @ =gUnk_03005220
	adds r2, r1, #0
	adds r2, #0x43
	movs r0, #1
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x55
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	ldrh r0, [r7, #2]
	subs r0, #0x18
	strh r0, [r5, #2]
	adds r3, r1, #0
	b _0801519A
	.align 2, 0
_08015168: .4byte gUnk_03002920
_0801516C: .4byte gUnk_03005220
_08015170:
	ldr r2, _08015184 @ =gUnk_03002920
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	adds r2, r1, #0
	adds r2, #0x18
	subs r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	strh r1, [r5, #2]
	b _08015198
	.align 2, 0
_08015184: .4byte gUnk_03002920
_08015188:
	ldr r3, _0801520C @ =gUnk_03002920
	ldrh r0, [r3]
	adds r0, #4
	ldrh r1, [r5]
	subs r0, r0, r1
	asrs r0, r0, #2
	adds r1, r1, r0
	strh r1, [r5]
_08015198:
	ldr r3, _08015210 @ =gUnk_03005220
_0801519A:
	adds r0, r3, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080151A8
	bl _08016ECE
_080151A8:
	adds r1, r3, #0
	adds r1, #0x54
	ldr r0, _0801520C @ =gUnk_03002920
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r2, r4, r5
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	ldr r6, [sp]
	subs r0, r0, r6
	ldrb r7, [r1]
	adds r0, r0, r7
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r2, #2]
	ldr r3, [sp, #4]
	subs r0, r0, r3
	ldrb r4, [r1]
	adds r0, r0, r4
	strb r0, [r1]
	ldr r4, _08015214 @ =gUnk_03004790
	ldrh r3, [r2]
	adds r1, r3, #6
	asrs r1, r1, #3
	ldrh r2, [r2, #2]
	subs r2, #0x1e
	asrs r2, r2, #3
	ldr r0, _08015218 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r4, #0x14]
	adds r1, r1, r2
	adds r1, r0, r1
	ldrb r7, [r1]
	subs r3, #0xf
	asrs r3, r3, #3
	adds r3, r3, r2
	adds r0, r0, r3
	adds r1, r7, #0
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08015202
	adds r1, r0, #0
_08015202:
	adds r7, r1, #0
	ldr r0, _0801521C @ =gUnk_03003634
	ldr r6, [r0]
	b _080155C8
	.align 2, 0
_0801520C: .4byte gUnk_03002920
_08015210: .4byte gUnk_03005220
_08015214: .4byte gUnk_03004790
_08015218: .4byte gUnk_03003430
_0801521C: .4byte gUnk_03003634
_08015220:
	ldr r0, _08015254 @ =gUnk_03002920
	lsls r2, r6, #3
	subs r1, r2, r6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r3, [r1, #0xf]
	mov ip, r2
	adds r5, r6, #1
	mov r8, r5
	cmp r3, #0x1a
	bls _08015238
	b _080155C6
_08015238:
	cmp r3, #0x19
	bne _0801523E
	b _080155C6
_0801523E:
	ldrb r0, [r1, #0x11]
	subs r0, #6
	cmp r0, #0x6a
	bls _08015248
	b _080155C6
_08015248:
	lsls r0, r0, #2
	ldr r1, _08015258 @ =_0801525C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015254: .4byte gUnk_03002920
_08015258: .4byte _0801525C
_0801525C: @ jump table
	.4byte _08015464 @ case 0
	.4byte _080155C6 @ case 1
	.4byte _08015464 @ case 2
	.4byte _080155C6 @ case 3
	.4byte _080155C6 @ case 4
	.4byte _080155C6 @ case 5
	.4byte _080155C6 @ case 6
	.4byte _080155C6 @ case 7
	.4byte _080155C6 @ case 8
	.4byte _080155C6 @ case 9
	.4byte _080155C6 @ case 10
	.4byte _080155C6 @ case 11
	.4byte _080155C6 @ case 12
	.4byte _080155C6 @ case 13
	.4byte _080155C6 @ case 14
	.4byte _080155C6 @ case 15
	.4byte _080155C6 @ case 16
	.4byte _080155C6 @ case 17
	.4byte _080155C6 @ case 18
	.4byte _080155C6 @ case 19
	.4byte _080155C6 @ case 20
	.4byte _080155C6 @ case 21
	.4byte _080155C6 @ case 22
	.4byte _080155C6 @ case 23
	.4byte _080155C6 @ case 24
	.4byte _080155C6 @ case 25
	.4byte _080155C6 @ case 26
	.4byte _080155C6 @ case 27
	.4byte _080155C6 @ case 28
	.4byte _080155C6 @ case 29
	.4byte _080155C6 @ case 30
	.4byte _08015408 @ case 31
	.4byte _080155C6 @ case 32
	.4byte _080154B8 @ case 33
	.4byte _080155C6 @ case 34
	.4byte _080154B8 @ case 35
	.4byte _080154B8 @ case 36
	.4byte _080154B8 @ case 37
	.4byte _080155C6 @ case 38
	.4byte _080155C6 @ case 39
	.4byte _080155C6 @ case 40
	.4byte _080155C6 @ case 41
	.4byte _080155C6 @ case 42
	.4byte _080155C6 @ case 43
	.4byte _080155C6 @ case 44
	.4byte _080155C6 @ case 45
	.4byte _080155C6 @ case 46
	.4byte _0801557C @ case 47
	.4byte _080155C6 @ case 48
	.4byte _080155C6 @ case 49
	.4byte _080155C6 @ case 50
	.4byte _080155C6 @ case 51
	.4byte _080155C6 @ case 52
	.4byte _080155C6 @ case 53
	.4byte _080155C6 @ case 54
	.4byte _080155C6 @ case 55
	.4byte _08015508 @ case 56
	.4byte _0801555C @ case 57
	.4byte _080155C6 @ case 58
	.4byte _080155C6 @ case 59
	.4byte _080155C6 @ case 60
	.4byte _080155C6 @ case 61
	.4byte _080155C6 @ case 62
	.4byte _080155C6 @ case 63
	.4byte _080155C6 @ case 64
	.4byte _080155C6 @ case 65
	.4byte _080155C6 @ case 66
	.4byte _080155C6 @ case 67
	.4byte _080155C6 @ case 68
	.4byte _080155C6 @ case 69
	.4byte _080155C6 @ case 70
	.4byte _080155C6 @ case 71
	.4byte _080155C6 @ case 72
	.4byte _080155C6 @ case 73
	.4byte _080155C6 @ case 74
	.4byte _080155C6 @ case 75
	.4byte _080155C6 @ case 76
	.4byte _080155C6 @ case 77
	.4byte _080155C6 @ case 78
	.4byte _080155C6 @ case 79
	.4byte _080155C6 @ case 80
	.4byte _080155C6 @ case 81
	.4byte _080155C6 @ case 82
	.4byte _080155C6 @ case 83
	.4byte _080155C6 @ case 84
	.4byte _080155C6 @ case 85
	.4byte _080155C6 @ case 86
	.4byte _080155C6 @ case 87
	.4byte _080155C6 @ case 88
	.4byte _080155C6 @ case 89
	.4byte _080155C6 @ case 90
	.4byte _080155C6 @ case 91
	.4byte _080155C6 @ case 92
	.4byte _080155C6 @ case 93
	.4byte _080155C6 @ case 94
	.4byte _080155C6 @ case 95
	.4byte _080155C6 @ case 96
	.4byte _080155C6 @ case 97
	.4byte _080155C6 @ case 98
	.4byte _080155C6 @ case 99
	.4byte _080155C6 @ case 100
	.4byte _080155C6 @ case 101
	.4byte _080155C6 @ case 102
	.4byte _080155C6 @ case 103
	.4byte _080155C6 @ case 104
	.4byte _08015408 @ case 105
	.4byte _0801557C @ case 106
_08015408:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08015460 @ =gUnk_03002920
	adds r0, r0, r3
	mov sb, r0
	ldrh r4, [r0]
	adds r1, r4, #0
	subs r1, #0xf
	mov r5, ip
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #7
	adds r5, r6, #1
	mov r8, r5
	cmp r1, r0
	blt _08015432
	b _080155C6
_08015432:
	adds r1, r4, #7
	subs r0, #0x16
	cmp r1, r0
	bgt _0801543C
	b _080155C6
_0801543C:
	mov r0, sb
	ldrh r3, [r0, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801544C
	b _080155C6
_0801544C:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r3, r0
	bgt _08015456
	b _080155C6
_08015456:
	cmp sl, r6
	bne _0801545C
	b _080155C6
_0801545C:
	b _080155C0
	.align 2, 0
_08015460: .4byte gUnk_03002920
_08015464:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _080154B4 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xc
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	blt _0801548E
	b _080155C6
_0801548E:
	adds r1, r4, #7
	subs r0, #0x18
	cmp r1, r0
	bgt _08015498
	b _080155C6
_08015498:
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _080154A6
	b _080155C6
_080154A6:
	subs r1, #8
	adds r0, r2, #0
	subs r0, #0x18
	cmp r1, r0
	bgt _080154B2
	b _080155C6
_080154B2:
	b _080155C0
	.align 2, 0
_080154B4: .4byte gUnk_03002920
_080154B8:
	ldr r3, [sp, #0xc]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r1, _08015504 @ =gUnk_03002920
	adds r5, r0, r1
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #0x12
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	ldr r3, _08015504 @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x10
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	bge _080155C6
	adds r1, #0x1c
	subs r0, #0x20
	cmp r1, r0
	ble _080155C6
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x1a
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	bge _080155C6
	adds r1, #0x12
	subs r0, #0x18
	cmp r1, r0
	ble _080155C6
	b _080155C0
	.align 2, 0
_08015504: .4byte gUnk_03002920
_08015508:
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r1, _08015558 @ =gUnk_03002920
	adds r5, r0, r1
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	ldr r3, _08015558 @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xc
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	bge _080155C6
	adds r1, r4, #7
	subs r0, #0x18
	cmp r1, r0
	ble _080155C6
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x18
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r4, _08015558 @ =gUnk_03002920
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	cmp r1, r0
	bge _080155C6
	ldrh r0, [r2, #2]
	subs r0, #8
	b _080155BC
	.align 2, 0
_08015558: .4byte gUnk_03002920
_0801555C:
	ldr r4, _08015578 @ =gUnk_03003610
	ldrb r0, [r4, #6]
	adds r5, r6, #1
	mov r8, r5
	cmp r0, sl
	bne _080155C6
	adds r0, r6, #0
	movs r1, #0
	bl sub_08025B78
	movs r0, #0
	strb r0, [r4, #6]
	b _080155C6
	.align 2, 0
_08015578: .4byte gUnk_03003610
_0801557C:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _080156B4 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xf
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	bge _080155C6
	adds r1, r4, #7
	subs r0, #0x1e
	cmp r1, r0
	ble _080155C6
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _080155C6
	adds r0, r1, #0
	subs r0, #0x20
_080155BC:
	cmp r3, r0
	ble _080155C6
_080155C0:
	ldr r0, _080156B8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r7, [r0, #0x1a]
_080155C6:
	mov r6, r8
_080155C8:
	ldr r0, _080156BC @ =gUnk_03005430
	ldr r0, [r0]
	cmp r6, r0
	bhi _080155D2
	b _08015220
_080155D2:
	ldr r0, _080156B8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	cmp r0, r7
	bls _080155E0
	bl _08016ECE
_080155E0:
	ldr r3, _080156B4 @ =gUnk_03002920
	mov r8, r3
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r7, r0, #2
	adds r4, r7, r3
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #9
	movs r3, #0
	bl sub_0801E664
	ldr r1, _080156C0 @ =gUnk_03005220
	adds r5, r1, #0
	adds r5, #0x54
	movs r2, #0
	ldrsb r2, [r5, r2]
	ldrh r0, [r4]
	subs r0, r0, r2
	movs r3, #0
	strh r0, [r4]
	adds r1, #0x55
	movs r2, #0
	ldrsb r2, [r1, r2]
	ldrh r0, [r4, #2]
	subs r0, r0, r2
	strh r0, [r4, #2]
	strb r3, [r1]
	strb r3, [r5]
	strb r3, [r4, #0xf]
	movs r0, #0xa4
	bl m4aSongNumStart
	movs r0, #1
	bl sub_080145A8
	ldr r0, _080156C4 @ =gUnk_03000824
	ldr r1, [r0]
	cmp r1, #0
	bne _08015636
	bl _08016ECE
_08015636:
	ldr r0, _080156C8 @ =gUnk_03005424
	ldr r3, [r0]
	mov sl, r0
	cmp r3, #0
	bne _08015644
	bl _08016ECE
_08015644:
	adds r6, r1, #0
	cmp r6, r3
	bls _0801564E
	bl _08016ECE
_0801564E:
	mov r4, r8
	mov r8, r7
	movs r7, #0
	mov sb, r7
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r7, r0, r4
_0801565E:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x1a
	bhi _080156A2
	mov r0, r8
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r1, r5, #0
	subs r1, #0xf
	ldrh r3, [r7]
	adds r0, r3, #0
	adds r0, #0x20
	cmp r1, r0
	bge _080156A2
	adds r1, r5, #7
	subs r0, #0x40
	cmp r1, r0
	ble _080156A2
	ldrh r3, [r2, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r7, #2]
	cmp r0, r1
	bge _080156A2
	adds r0, r1, #0
	subs r0, #0x1b
	cmp r3, r0
	ble _080156A2
	adds r0, #3
	strh r0, [r2, #2]
	movs r0, #1
	strb r0, [r2, #0xf]
	strb r6, [r2, #0x18]
	mov r1, sb
	strb r1, [r2, #0x17]
_080156A2:
	adds r7, #0x1c
	adds r6, #1
	mov r2, sl
	ldr r0, [r2]
	cmp r6, r0
	bls _0801565E
	bl _08016ECE
	.align 2, 0
_080156B4: .4byte gUnk_03002920
_080156B8: .4byte gUnk_03004654
_080156BC: .4byte gUnk_03005430
_080156C0: .4byte gUnk_03005220
_080156C4: .4byte gUnk_03000824
_080156C8: .4byte gUnk_03005424
_080156CC:
	mov r3, sl
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r5, _08015710 @ =gUnk_03002920
	adds r4, r0, r5
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #0xf
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0xc
	cmp r1, r0
	bge _08015714
	adds r1, r3, #7
	subs r0, #0x18
	cmp r1, r0
	ble _08015714
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _08015714
	adds r0, r1, #0
	subs r0, #0x14
	cmp r2, r0
	ble _08015714
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _0801572A
	strb r0, [r4, #0xf]
	bl _080163EA
	.align 2, 0
_08015710: .4byte gUnk_03002920
_08015714:
	mov r6, sl
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r7, _08015778 @ =gUnk_03002920
	adds r1, r0, r7
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	beq _0801572A
	subs r0, #1
	strb r0, [r1, #0x16]
_0801572A:
	mov r0, sl
	lsls r1, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #2
	ldr r2, _08015778 @ =gUnk_03002920
	adds r5, r0, r2
	ldrb r0, [r5, #0xf]
	str r1, [sp, #0xc]
	cmp r0, #0x15
	beq _08015742
	cmp r0, #0x10
	bne _08015784
_08015742:
	movs r3, #3
	str r3, [sp, #8]
	cmp r0, #0x10
	bne _0801574E
	movs r4, #2
	str r4, [sp, #8]
_0801574E:
	ldrh r0, [r5]
	ldr r6, [sp, #8]
	adds r0, r6, r0
	strh r0, [r5]
	ldr r1, _0801577C @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _0801576E
	adds r0, r1, #0
	adds r0, #0x56
	strb r6, [r0]
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
_0801576E:
	ldr r2, _08015780 @ =gUnk_03004790
	ldrh r0, [r5]
	adds r0, #8
	b _080157BA
	.align 2, 0
_08015778: .4byte gUnk_03002920
_0801577C: .4byte gUnk_03005220
_08015780: .4byte gUnk_03004790
_08015784:
	movs r1, #3
	str r1, [sp, #8]
	cmp r0, #0x11
	bne _08015790
	movs r2, #2
	str r2, [sp, #8]
_08015790:
	ldrh r0, [r5]
	ldr r3, [sp, #8]
	subs r0, r0, r3
	strh r0, [r5]
	ldr r3, _08015850 @ =gUnk_03005220
	adds r0, r3, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _080157B4
	ldr r4, [sp, #8]
	rsbs r0, r4, #0
	adds r1, r3, #0
	adds r1, #0x56
	strb r0, [r1]
	adds r1, #1
	movs r0, #0
	strb r0, [r1]
_080157B4:
	ldr r2, _08015854 @ =gUnk_03004790
	ldrh r0, [r5]
	subs r0, #0x10
_080157BA:
	asrs r6, r0, #3
	ldrh r4, [r5, #2]
	subs r1, r4, #4
	asrs r1, r1, #3
	ldr r0, _08015858 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r3, [r0]
	adds r0, r1, #0
	muls r0, r3, r0
	ldr r1, [r2, #0x14]
	adds r0, r6, r0
	adds r0, r1, r0
	ldrb r7, [r0]
	adds r0, r4, #0
	subs r0, #0x10
	asrs r0, r0, #3
	muls r0, r3, r0
	adds r0, r6, r0
	adds r0, r1, r0
	adds r2, r7, #0
	ldrb r0, [r0]
	cmp r7, r0
	bhs _080157EA
	adds r2, r0, #0
_080157EA:
	adds r7, r2, #0
	adds r0, r4, #0
	subs r0, #0x1c
	asrs r0, r0, #3
	muls r0, r3, r0
	adds r0, r6, r0
	adds r0, r1, r0
	adds r1, r7, #0
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08015802
	adds r1, r0, #0
_08015802:
	adds r7, r1, #0
	ldr r0, _0801585C @ =gUnk_03004654
	ldr r1, [r0]
	ldrb r0, [r1, #0x18]
	cmp r0, r7
	bls _08015822
	ldrb r0, [r1, #1]
	cmp r0, r7
	bhi _0801588C
	ldrb r0, [r1, #0x14]
	cmp r0, r7
	blo _0801588C
	ldr r0, _08015860 @ =gUnk_03004C20
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _0801588C
_08015822:
	ldr r5, [sp, #0xc]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r7, _08015864 @ =gUnk_03002920
	adds r2, r0, r7
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2]
	ldrb r0, [r2, #0xf]
	cmp r0, #0x15
	beq _0801583E
	cmp r0, #0x10
	bne _08015868
_0801583E:
	ldr r0, [sp]
	adds r0, #4
	movs r3, #8
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	b _08015870
	.align 2, 0
_08015850: .4byte gUnk_03005220
_08015854: .4byte gUnk_03004790
_08015858: .4byte gUnk_03003430
_0801585C: .4byte gUnk_03004654
_08015860: .4byte gUnk_03004C20
_08015864: .4byte gUnk_03002920
_08015868:
	ldr r0, _08015884 @ =0x0000FFF8
	ldr r4, [sp]
	ands r4, r0
	strh r4, [r2]
_08015870:
	ldr r6, [sp, #0xc]
	mov r7, sl
	subs r0, r6, r7
	lsls r0, r0, #2
	ldr r1, _08015888 @ =gUnk_03002920
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0xf]
	bl _080163EA
	.align 2, 0
_08015884: .4byte 0x0000FFF8
_08015888: .4byte gUnk_03002920
_0801588C:
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _080158A4 @ =gUnk_03002920
	adds r0, r0, r4
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, _080158A8 @ =gUnk_030034D8
	ldr r6, [r0]
	bl _0801637C
	.align 2, 0
_080158A4: .4byte gUnk_03002920
_080158A8: .4byte gUnk_030034D8

	thumb_func_start sub_080158AC
sub_080158AC: @ 0x080158AC
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r5, _080158E4 @ =gUnk_03002920
	adds r0, r0, r5
	ldrb r3, [r0, #0xf]
	mov ip, r1
	adds r7, r6, #1
	mov r8, r7
	cmp r3, #0x1a
	bls _080158C6
	bl _0801637A
_080158C6:
	cmp r3, #0x19
	bne _080158CE
	bl _0801637A
_080158CE:
	ldrb r0, [r0, #0x11]
	subs r0, #5
	cmp r0, #0x70
	bls _080158DA
	bl _0801637A
_080158DA:
	lsls r0, r0, #2
	ldr r1, _080158E8 @ =_080158EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080158E4: .4byte gUnk_03002920
_080158E8: .4byte _080158EC
_080158EC: @ jump table
	.4byte _08015DFC @ case 0
	.4byte _08015B50 @ case 1
	.4byte _0801637A @ case 2
	.4byte _08015B50 @ case 3
	.4byte _0801637A @ case 4
	.4byte _0801637A @ case 5
	.4byte _0801637A @ case 6
	.4byte _0801637A @ case 7
	.4byte _0801637A @ case 8
	.4byte _0801637A @ case 9
	.4byte _0801637A @ case 10
	.4byte _0801637A @ case 11
	.4byte _0801637A @ case 12
	.4byte _0801637A @ case 13
	.4byte _0801637A @ case 14
	.4byte _0801637A @ case 15
	.4byte _0801637A @ case 16
	.4byte _0801637A @ case 17
	.4byte _0801637A @ case 18
	.4byte _0801637A @ case 19
	.4byte _0801637A @ case 20
	.4byte _0801637A @ case 21
	.4byte _0801637A @ case 22
	.4byte _0801637A @ case 23
	.4byte _0801637A @ case 24
	.4byte _0801637A @ case 25
	.4byte _0801637A @ case 26
	.4byte _0801637A @ case 27
	.4byte _0801637A @ case 28
	.4byte _0801637A @ case 29
	.4byte _0801637A @ case 30
	.4byte _0801637A @ case 31
	.4byte _08015AB0 @ case 32
	.4byte _0801637A @ case 33
	.4byte _080160FC @ case 34
	.4byte _080160FC @ case 35
	.4byte _080160FC @ case 36
	.4byte _080160FC @ case 37
	.4byte _080160FC @ case 38
	.4byte _0801637A @ case 39
	.4byte _0801637A @ case 40
	.4byte _0801637A @ case 41
	.4byte _0801637A @ case 42
	.4byte _0801637A @ case 43
	.4byte _0801637A @ case 44
	.4byte _0801637A @ case 45
	.4byte _0801637A @ case 46
	.4byte _0801637A @ case 47
	.4byte _080162B4 @ case 48
	.4byte _080161A4 @ case 49
	.4byte _0801637A @ case 50
	.4byte _0801637A @ case 51
	.4byte _0801637A @ case 52
	.4byte _0801637A @ case 53
	.4byte _08015E88 @ case 54
	.4byte _08015D30 @ case 55
	.4byte _0801637A @ case 56
	.4byte _0801621C @ case 57
	.4byte _08016054 @ case 58
	.4byte _0801637A @ case 59
	.4byte _08015BFA @ case 60
	.4byte _0801637A @ case 61
	.4byte _0801637A @ case 62
	.4byte _0801637A @ case 63
	.4byte _0801637A @ case 64
	.4byte _0801637A @ case 65
	.4byte _0801637A @ case 66
	.4byte _0801637A @ case 67
	.4byte _0801637A @ case 68
	.4byte _0801637A @ case 69
	.4byte _0801637A @ case 70
	.4byte _0801637A @ case 71
	.4byte _0801637A @ case 72
	.4byte _0801637A @ case 73
	.4byte _0801637A @ case 74
	.4byte _0801637A @ case 75
	.4byte _0801637A @ case 76
	.4byte _0801637A @ case 77
	.4byte _0801637A @ case 78
	.4byte _0801637A @ case 79
	.4byte _0801637A @ case 80
	.4byte _0801637A @ case 81
	.4byte _0801637A @ case 82
	.4byte _0801637A @ case 83
	.4byte _0801637A @ case 84
	.4byte _0801637A @ case 85
	.4byte _0801637A @ case 86
	.4byte _0801637A @ case 87
	.4byte _0801637A @ case 88
	.4byte _0801637A @ case 89
	.4byte _0801637A @ case 90
	.4byte _0801637A @ case 91
	.4byte _0801637A @ case 92
	.4byte _0801637A @ case 93
	.4byte _0801637A @ case 94
	.4byte _0801637A @ case 95
	.4byte _0801637A @ case 96
	.4byte _0801637A @ case 97
	.4byte _0801637A @ case 98
	.4byte _0801637A @ case 99
	.4byte _0801637A @ case 100
	.4byte _0801637A @ case 101
	.4byte _0801637A @ case 102
	.4byte _0801637A @ case 103
	.4byte _0801637A @ case 104
	.4byte _0801637A @ case 105
	.4byte _08015AB0 @ case 106
	.4byte _080162B4 @ case 107
	.4byte _08015CA4 @ case 108
	.4byte _08015CA4 @ case 109
	.4byte _08015CBA @ case 110
	.4byte _08015CBA @ case 111
	.4byte _080161A4 @ case 112
_08015AB0:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08015B1C @ =gUnk_03002920
	adds r7, r0, r3
	ldrh r3, [r7]
	adds r1, r3, #0
	subs r1, #0xf
	mov r4, ip
	subs r0, r4, r6
	lsls r0, r0, #2
	ldr r5, _08015B1C @ =gUnk_03002920
	adds r2, r0, r5
	ldrh r5, [r2]
	adds r0, r5, #7
	adds r4, r6, #1
	mov r8, r4
	cmp r1, r0
	blt _08015ADC
	bl _0801637A
_08015ADC:
	adds r1, r3, #7
	subs r0, #0x16
	cmp r1, r0
	bgt _08015AE8
	bl _0801637A
_08015AE8:
	ldrh r3, [r7, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08015AF8
	bl _0801637A
_08015AF8:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r3, r0
	bgt _08015B04
	bl _0801637A
_08015B04:
	cmp sl, r6
	bne _08015B0C
	bl _0801637A
_08015B0C:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x15
	beq _08015B16
	cmp r0, #0x10
	bne _08015B20
_08015B16:
	adds r0, r5, #0
	subs r0, #0x18
	b _08015B2C
	.align 2, 0
_08015B1C: .4byte gUnk_03002920
_08015B20:
	cmp r0, #0x16
	beq _08015B28
	cmp r0, #0x11
	bne _08015B32
_08015B28:
	adds r0, r5, #0
	adds r0, #0x18
_08015B2C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
_08015B32:
	ldr r0, _08015B4C @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r1, r5, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	bl _08016376
	.align 2, 0
_08015B4C: .4byte gUnk_03002920
_08015B50:
	ldr r1, _08015BB4 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r2, r3, #0
	subs r2, #0xf
	mov r4, ip
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r4, [r1]
	adds r7, r4, #0
	adds r7, #0xc
	adds r6, #1
	mov r8, r6
	cmp r2, r7
	blt _08015B7C
	bl _0801637A
_08015B7C:
	adds r0, r3, #7
	adds r6, r4, #0
	subs r6, #0xc
	cmp r0, r6
	bgt _08015B8A
	bl _0801637A
_08015B8A:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r1, #2]
	cmp r0, r1
	blt _08015B9A
	bl _0801637A
_08015B9A:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	bgt _08015BA6
	bl _0801637A
_08015BA6:
	adds r0, #2
	cmp r2, r0
	bge _08015BB8
	subs r0, #3
	strh r0, [r5, #2]
	bl _0801637A
	.align 2, 0
_08015BB4: .4byte gUnk_03002920
_08015BB8:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x15
	beq _08015BC2
	cmp r0, #0x10
	bne _08015BE0
_08015BC2:
	adds r0, r3, #4
	cmp r0, r6
	ble _08015BCA
	b _0801637A
_08015BCA:
	ldr r6, _08015BDC @ =0x0000FFEC
	adds r0, r4, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	strb r0, [r5, #0xf]
	b _080162A6
	.align 2, 0
_08015BDC: .4byte 0x0000FFEC
_08015BE0:
	adds r0, r3, #0
	subs r0, #0xc
	cmp r0, r7
	bge _08015BEA
	b _0801637A
_08015BEA:
	adds r0, r4, #0
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	strb r0, [r5, #0xf]
	b _080162A6
_08015BFA:
	ldr r7, [sp, #0xc]
	mov r1, sl
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _08015C6C @ =gUnk_03002920
	adds r5, r0, r2
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xf
	mov r4, ip
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r4, [r2]
	adds r0, r4, #0
	adds r0, #0x10
	adds r7, r6, #1
	mov r8, r7
	cmp r1, r0
	blt _08015C24
	b _0801637A
_08015C24:
	adds r1, r3, #7
	subs r0, #0x20
	cmp r1, r0
	bgt _08015C2E
	b _0801637A
_08015C2E:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08015C3C
	b _0801637A
_08015C3C:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	bgt _08015C46
	b _0801637A
_08015C46:
	ldr r1, _08015C70 @ =gUnk_03000830
	ldr r0, _08015C74 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08015C5A
	b _0801637A
_08015C5A:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x15
	beq _08015C64
	cmp r0, #0x10
	bne _08015C7C
_08015C64:
	ldr r1, _08015C78 @ =0x0000FFE8
	adds r0, r4, r1
	b _08015C80
	.align 2, 0
_08015C6C: .4byte gUnk_03002920
_08015C70: .4byte gUnk_03000830
_08015C74: .4byte gUnk_0300363C
_08015C78: .4byte 0x0000FFE8
_08015C7C:
	adds r0, r4, #0
	adds r0, #0x20
_08015C80:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08015CA0 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	b _08016376
	.align 2, 0
_08015CA0: .4byte gUnk_03002920
_08015CA4:
	adds r0, r6, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _08015D2C @ =gUnk_03002920
	adds r1, r1, r4
	ldrb r1, [r1, #8]
	mov r8, r0
	cmp r1, #0
	beq _08015CBA
	b _0801637A
_08015CBA:
	ldr r1, _08015D2C @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r4, [r5]
	adds r2, r4, #0
	subs r2, #0xf
	mov r3, ip
	subs r0, r3, r6
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r3, [r1]
	adds r7, r3, #2
	cmp r2, r7
	blt _08015CDE
	b _0801637A
_08015CDE:
	adds r0, r4, #7
	subs r4, r3, #2
	cmp r0, r4
	bgt _08015CE8
	b _0801637A
_08015CE8:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r1, #2]
	cmp r0, r1
	blt _08015CF6
	b _0801637A
_08015CF6:
	adds r2, r1, #0
	subs r2, #0x10
	cmp r3, r2
	bgt _08015D00
	b _0801637A
_08015D00:
	ldr r0, [sp]
	subs r0, #0xf
	cmp r0, r7
	bge _08015D20
	ldr r0, [sp]
	adds r0, #7
	cmp r0, r4
	ble _08015D20
	ldr r0, [sp, #4]
	subs r0, #0x18
	cmp r0, r1
	bge _08015D20
	ldr r4, [sp, #4]
	cmp r4, r2
	ble _08015D20
	b _0801637A
_08015D20:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EAA4
	b _0801637A
	.align 2, 0
_08015D2C: .4byte gUnk_03002920
_08015D30:
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	ldr r1, _08015DC8 @ =gUnk_03002920
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	ldr r7, _08015DC8 @ =gUnk_03002920
	adds r4, r0, r7
	ldrh r2, [r4]
	movs r0, #8
	adds r0, r0, r2
	mov sb, r0
	adds r7, r6, #1
	mov r8, r7
	cmp r1, sb
	blt _08015D5E
	b _0801637A
_08015D5E:
	adds r0, r3, #7
	adds r7, r2, #0
	subs r7, #8
	cmp r0, r7
	bgt _08015D6A
	b _0801637A
_08015D6A:
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r4, #2]
	cmp r0, r2
	blt _08015D78
	b _0801637A
_08015D78:
	adds r3, r2, #0
	subs r3, #0x20
	cmp r1, r3
	bgt _08015D82
	b _0801637A
_08015D82:
	ldr r0, [sp]
	subs r0, #0xf
	cmp r0, sb
	bge _08015DA2
	ldr r0, [sp]
	adds r0, #7
	cmp r0, r7
	ble _08015DA2
	ldr r0, [sp, #4]
	subs r0, #0x18
	cmp r0, r2
	bge _08015DA2
	ldr r0, [sp, #4]
	cmp r0, r3
	ble _08015DA2
	b _0801637A
_08015DA2:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08015DC8 @ =gUnk_03002920
	adds r0, r0, r3
	ldrb r0, [r0, #0xf]
	cmp r0, #0x15
	beq _08015DB8
	cmp r0, #0x10
	bne _08015DCC
_08015DB8:
	mov r4, ip
	subs r0, r4, r6
	lsls r0, r0, #2
	ldr r5, _08015DC8 @ =gUnk_03002920
	adds r0, r0, r5
	ldrh r0, [r0]
	subs r0, #0x10
	b _08015DDA
	.align 2, 0
_08015DC8: .4byte gUnk_03002920
_08015DCC:
	mov r7, ip
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r1, _08015DF8 @ =gUnk_03002920
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x18
_08015DDA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08015DF8 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	b _08016376
	.align 2, 0
_08015DF8: .4byte gUnk_03002920
_08015DFC:
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r1, _08015E5C @ =gUnk_03002920
	adds r7, r0, r1
	ldrh r3, [r7]
	adds r1, r3, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	ldr r4, _08015E5C @ =gUnk_03002920
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x10
	adds r4, r6, #1
	mov r8, r4
	cmp r1, r0
	blt _08015E28
	b _0801637A
_08015E28:
	adds r1, r3, #7
	subs r0, #0x20
	cmp r1, r0
	bgt _08015E32
	b _0801637A
_08015E32:
	ldrh r3, [r7, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08015E40
	b _0801637A
_08015E40:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	bgt _08015E4A
	b _0801637A
_08015E4A:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x15
	beq _08015E54
	cmp r0, #0x10
	bne _08015E60
_08015E54:
	adds r0, r5, #0
	subs r0, #0x18
	b _08015E64
	.align 2, 0
_08015E5C: .4byte gUnk_03002920
_08015E60:
	adds r0, r5, #0
	adds r0, #0x20
_08015E64:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08015E84 @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r1, r5, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	b _08016376
	.align 2, 0
_08015E84: .4byte gUnk_03002920
_08015E88:
	mov r1, ip
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r2, _08015F5C @ =gUnk_03002920
	adds r4, r0, r2
	ldrb r3, [r4, #0xc]
	mov r8, r3
	mov r5, r8
	lsls r0, r5, #0x1c
	lsrs r0, r0, #0x1e
	mov sb, r0
	movs r7, #0
	cmp r0, #1
	bne _08015EA6
	movs r7, #8
_08015EA6:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08015F5C @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r2, [r5]
	adds r1, r2, #0
	subs r1, #0xf
	ldrh r3, [r4]
	adds r0, r3, r7
	cmp r1, r0
	blt _08015EC2
	b _08015FD4
_08015EC2:
	adds r1, r2, #7
	adds r0, r7, #0
	subs r0, #8
	adds r0, r3, r0
	cmp r1, r0
	bgt _08015ED0
	b _08015FD4
_08015ED0:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08015EDE
	b _08015FD4
_08015EDE:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r2, r0
	ble _08015FD4
	mov r4, r8
	lsrs r0, r4, #4
	adds r7, r6, #1
	mov r8, r7
	cmp r0, #0
	beq _08015EF4
	b _0801637A
_08015EF4:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x15
	bne _08015F00
	mov r1, sb
	cmp r1, #0
	beq _08015F0A
_08015F00:
	cmp r0, #0x16
	bne _08015F78
	mov r2, sb
	cmp r2, #1
	bne _08015F78
_08015F0A:
	ldr r3, _08015F60 @ =0x040000D4
	ldr r0, _08015F64 @ =0x080B9368
	str r0, [r3]
	ldr r4, _08015F68 @ =gUnk_0818B8E0
	ldr r2, _08015F6C @ =gUnk_03004C20
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
	add r0, ip
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r4, _08015F70 @ =0x06010000
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _08015F74 @ =0x80000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08015F5C @ =gUnk_03002920
	mov r5, ip
	subs r2, r5, r6
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r2, #0xc]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0x7d
	bl m4aSongNumStart
	b _08016376
	.align 2, 0
_08015F5C: .4byte gUnk_03002920
_08015F60: .4byte 0x040000D4
_08015F64: .4byte 0x080B9368
_08015F68: .4byte gUnk_0818B8E0
_08015F6C: .4byte gUnk_03004C20
_08015F70: .4byte 0x06010000
_08015F74: .4byte 0x80000080
_08015F78:
	ldr r7, [sp, #0xc]
	mov r1, sl
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _08015F9C @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r0, [r0, #0xf]
	cmp r0, #0x15
	bne _08015FA4
	mov r3, ip
	subs r1, r3, r6
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r4, _08015FA0 @ =0x0000FFF8
	adds r0, r4, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	b _08015FB2
	.align 2, 0
_08015F9C: .4byte gUnk_03002920
_08015FA0: .4byte 0x0000FFF8
_08015FA4:
	mov r5, ip
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r7, _08015FD0 @ =gUnk_03002920
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, #0x10
_08015FB2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08015FD0 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	b _08016376
	.align 2, 0
_08015FD0: .4byte gUnk_03002920
_08015FD4:
	ldr r0, _08016034 @ =gUnk_03002920
	mov r4, ip
	subs r1, r4, r6
	lsls r1, r1, #2
	adds r5, r1, r0
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #4
	adds r6, #1
	mov r8, r6
	cmp r0, #1
	beq _08015FEC
	b _0801637A
_08015FEC:
	ldr r0, _08016038 @ =gUnk_03005220
	ldrb r0, [r0, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08015FF8
	b _0801637A
_08015FF8:
	ldr r3, _0801603C @ =0x040000D4
	ldr r0, _08016040 @ =0x08062148
	str r0, [r3]
	ldr r4, _08016044 @ =gUnk_0818B8E0
	ldr r2, _08016048 @ =gUnk_03004C20
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
	add r0, ip
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r6, _0801604C @ =0x06010000
	adds r0, r0, r6
	str r0, [r3, #4]
	ldr r0, _08016050 @ =0x80000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0xc]
	b _0801637A
	.align 2, 0
_08016034: .4byte gUnk_03002920
_08016038: .4byte gUnk_03005220
_0801603C: .4byte 0x040000D4
_08016040: .4byte 0x08062148
_08016044: .4byte gUnk_0818B8E0
_08016048: .4byte gUnk_03004C20
_0801604C: .4byte 0x06010000
_08016050: .4byte 0x80000080
_08016054:
	ldr r7, [sp, #0xc]
	mov r1, sl
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _080160C4 @ =gUnk_03002920
	adds r5, r0, r2
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xf
	mov r4, ip
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r4, [r2]
	adds r0, r4, #0
	adds r0, #0xc
	adds r7, r6, #1
	mov r8, r7
	cmp r1, r0
	blt _0801607E
	b _0801637A
_0801607E:
	adds r1, r3, #7
	subs r0, #0x18
	cmp r1, r0
	bgt _08016088
	b _0801637A
_08016088:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08016096
	b _0801637A
_08016096:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r3, r0
	bgt _080160A0
	b _0801637A
_080160A0:
	ldr r1, _080160C8 @ =gUnk_03000830
	ldr r0, _080160CC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080160B4
	b _0801637A
_080160B4:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x15
	beq _080160BE
	cmp r0, #0x10
	bne _080160D4
_080160BE:
	ldr r1, _080160D0 @ =0x0000FFEC
	adds r0, r4, r1
	b _080160D8
	.align 2, 0
_080160C4: .4byte gUnk_03002920
_080160C8: .4byte gUnk_03000830
_080160CC: .4byte gUnk_0300363C
_080160D0: .4byte 0x0000FFEC
_080160D4:
	adds r0, r4, #0
	adds r0, #0x1c
_080160D8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _080160F8 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	b _08016376
	.align 2, 0
_080160F8: .4byte gUnk_03002920
_080160FC:
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r7, _08016154 @ =gUnk_03002920
	adds r5, r0, r7
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r2, r0, r7
	ldrh r4, [r2]
	adds r0, r4, #0
	adds r0, #0x10
	adds r7, r6, #1
	mov r8, r7
	cmp r1, r0
	blt _08016126
	b _0801637A
_08016126:
	adds r1, r3, #7
	subs r0, #0x20
	cmp r1, r0
	bgt _08016130
	b _0801637A
_08016130:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801613E
	b _0801637A
_0801613E:
	adds r2, r1, #0
	subs r2, #0x10
	cmp r3, r2
	bgt _08016148
	b _0801637A
_08016148:
	adds r0, r1, #0
	subs r0, #0xa
	cmp r3, r0
	bge _08016158
	strh r2, [r5, #2]
	b _0801637A
	.align 2, 0
_08016154: .4byte gUnk_03002920
_08016158:
	adds r0, r3, #0
	subs r0, #0x16
	cmp r0, r1
	ble _08016166
	movs r0, #0
	strb r0, [r5, #0xf]
	b _080162A6
_08016166:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x15
	beq _08016170
	cmp r0, #0x10
	bne _0801617C
_08016170:
	ldr r1, _08016178 @ =0x0000FFE8
	adds r0, r4, r1
	b _08016180
	.align 2, 0
_08016178: .4byte 0x0000FFE8
_0801617C:
	adds r0, r4, #0
	adds r0, #0x20
_08016180:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _080161A0 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	b _08016376
	.align 2, 0
_080161A0: .4byte gUnk_03002920
_080161A4:
	ldr r1, _080161FC @ =gUnk_03002920
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r5, [r7]
	adds r2, r5, #0
	subs r2, #0xf
	mov r3, ip
	subs r0, r3, r6
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r3, [r4]
	adds r0, r3, #3
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _080161CC
	b _0801637A
_080161CC:
	adds r1, r5, #7
	subs r0, r3, #3
	cmp r1, r0
	bgt _080161D6
	b _0801637A
_080161D6:
	ldrh r3, [r7, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	blt _080161E8
	b _0801637A
_080161E8:
	subs r0, #8
	cmp r3, r0
	bgt _080161F0
	b _0801637A
_080161F0:
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	bne _08016200
	movs r0, #0x10
	b _08016212
	.align 2, 0
_080161FC: .4byte gUnk_03002920
_08016200:
	cmp r0, #1
	bne _08016208
	movs r0, #0x11
	b _08016212
_08016208:
	cmp r0, #0
	bne _08016210
	movs r0, #0xf
	b _08016212
_08016210:
	movs r0, #0xe
_08016212:
	strb r0, [r7, #0xf]
	movs r0, #0xa1
	bl m4aSongNumStart
	b _08016376
_0801621C:
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _08016284 @ =gUnk_03002920
	adds r5, r0, r4
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xf
	mov r7, ip
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r4, [r2]
	adds r0, r4, #0
	adds r0, #0xc
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	blt _08016246
	b _0801637A
_08016246:
	adds r1, r3, #7
	subs r0, #0x18
	cmp r1, r0
	bgt _08016250
	b _0801637A
_08016250:
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x18
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r6, _08016284 @ =gUnk_03002920
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	cmp r1, r0
	blt _08016268
	b _0801637A
_08016268:
	ldrh r0, [r2, #2]
	subs r0, #8
	cmp r3, r0
	bgt _08016272
	b _0801637A
_08016272:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x15
	beq _0801627C
	cmp r0, #0x10
	bne _0801628C
_0801627C:
	ldr r7, _08016288 @ =0x0000FFEC
	adds r0, r4, r7
	b _08016290
	.align 2, 0
_08016284: .4byte gUnk_03002920
_08016288: .4byte 0x0000FFEC
_0801628C:
	adds r0, r4, #0
	adds r0, #0x1c
_08016290:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _080162B0 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
_080162A6:
	movs r0, #0x9d
	bl m4aSongNumStart
	b _0801637A
	.align 2, 0
_080162B0: .4byte gUnk_03002920
_080162B4:
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r7, _08016344 @ =gUnk_03002920
	adds r5, r0, r7
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xf
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r4, r0, r7
	ldrh r2, [r4]
	movs r7, #0xf
	adds r7, r7, r2
	mov sb, r7
	adds r0, r6, #1
	mov r8, r0
	cmp r1, sb
	bge _0801637A
	adds r0, r3, #7
	adds r7, r2, #0
	subs r7, #0xf
	cmp r0, r7
	ble _0801637A
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r4, #2]
	cmp r0, r2
	bge _0801637A
	adds r3, r2, #0
	subs r3, #0x20
	cmp r1, r3
	ble _0801637A
	ldr r0, [sp]
	subs r0, #0xf
	cmp r0, sb
	bge _0801631A
	ldr r0, [sp]
	adds r0, #7
	cmp r0, r7
	ble _0801631A
	ldr r0, [sp, #4]
	subs r0, #0x18
	cmp r0, r2
	bge _0801631A
	ldr r1, [sp, #4]
	cmp r1, r3
	bgt _0801637A
_0801631A:
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _08016344 @ =gUnk_03002920
	adds r0, r0, r4
	ldrb r0, [r0, #0xf]
	cmp r0, #0x15
	beq _08016330
	cmp r0, #0x10
	bne _0801634C
_08016330:
	mov r5, ip
	subs r1, r5, r6
	lsls r1, r1, #2
	ldr r7, _08016344 @ =gUnk_03002920
	adds r1, r1, r7
	ldr r2, _08016348 @ =0x0000FFE8
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	b _0801635A
	.align 2, 0
_08016344: .4byte gUnk_03002920
_08016348: .4byte 0x0000FFE8
_0801634C:
	mov r3, ip
	subs r0, r3, r6
	lsls r0, r0, #2
	ldr r4, _080163A0 @ =gUnk_03002920
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r0, #0x20
_0801635A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _080163A0 @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r1, r5, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
_08016376:
	adds r6, #1
	mov r8, r6
_0801637A:
	mov r6, r8
_0801637C:
	ldr r0, _080163A4 @ =gUnk_0300541C
	ldr r0, [r0]
	cmp r6, r0
	bhi _08016388
	bl sub_080158AC
_08016388:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _080163A0 @ =gUnk_03002920
	adds r0, r0, r3
	mov r4, sp
	ldrh r4, [r4, #8]
	strh r4, [r0]
	bl _08016ECE
	.align 2, 0
_080163A0: .4byte gUnk_03002920
_080163A4: .4byte gUnk_0300541C
_080163A8:
	mov r5, sl
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r6, _080163F4 @ =gUnk_03002920
	adds r4, r0, r6
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #0xf
	ldrh r2, [r6]
	adds r0, r2, #0
	adds r0, #0xc
	cmp r1, r0
	bge _080163F8
	adds r1, r3, #7
	subs r0, #0x18
	cmp r1, r0
	ble _080163F8
	ldrh r3, [r4, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r6, #2]
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	bge _080163F8
	subs r0, #0xb
	cmp r3, r0
	ble _080163F8
	adds r0, #3
	movs r1, #0
	strh r0, [r4, #2]
	strb r1, [r4, #0xf]
_080163EA:
	movs r0, #0x9d
	bl m4aSongNumStart
	bl _08016ECE
	.align 2, 0
_080163F4: .4byte gUnk_03002920
_080163F8:
	mov r7, sl
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	ldr r2, _08016440 @ =gUnk_03002920
	adds r5, r1, r2
	movs r1, #0
	strb r1, [r5, #0x16]
	ldrb r1, [r5, #0xf]
	str r0, [sp, #0xc]
	cmp r1, #0xe
	bne _0801644C
	ldrh r0, [r5, #2]
	subs r0, #2
	strh r0, [r5, #2]
	ldr r1, _08016444 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _08016430
	adds r2, r1, #0
	adds r2, #0x57
	movs r0, #0xfe
	strb r0, [r2]
	adds r1, #0x56
	movs r0, #0
	strb r0, [r1]
_08016430:
	ldr r4, _08016448 @ =gUnk_03004790
	ldrh r3, [r5]
	adds r1, r3, #6
	asrs r1, r1, #3
	ldrh r2, [r5, #2]
	subs r2, #0x18
	b _0801649C
	.align 2, 0
_08016440: .4byte gUnk_03002920
_08016444: .4byte gUnk_03005220
_08016448: .4byte gUnk_03004790
_0801644C:
	cmp r1, #0xf
	bne _08016456
	movs r3, #2
	str r3, [sp, #8]
	b _08016464
_08016456:
	ldrb r0, [r5, #0x12]
	movs r4, #1
	str r4, [sp, #8]
	cmp r0, #0
	bne _08016464
	movs r5, #3
	str r5, [sp, #8]
_08016464:
	ldr r6, [sp, #0xc]
	mov r7, sl
	subs r0, r6, r7
	lsls r0, r0, #2
	ldr r1, _08016594 @ =gUnk_03002920
	adds r2, r0, r1
	ldrh r0, [r2, #2]
	ldr r3, [sp, #8]
	adds r0, r3, r0
	strh r0, [r2, #2]
	ldr r1, _08016598 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _08016490
	adds r0, r1, #0
	adds r0, #0x57
	strb r3, [r0]
	adds r1, #0x56
	movs r0, #0
	strb r0, [r1]
_08016490:
	ldr r4, _0801659C @ =gUnk_03004790
	ldrh r3, [r2]
	adds r1, r3, #6
	asrs r1, r1, #3
	ldrh r2, [r2, #2]
	subs r2, #2
_0801649C:
	asrs r2, r2, #3
	ldr r0, _080165A0 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r4, #0x14]
	adds r1, r1, r2
	adds r1, r0, r1
	ldrb r7, [r1]
	subs r3, #0xf
	asrs r3, r3, #3
	adds r3, r3, r2
	adds r0, r0, r3
	adds r1, r7, #0
	ldrb r0, [r0]
	cmp r7, r0
	bhs _080164C0
	adds r1, r0, #0
_080164C0:
	adds r7, r1, #0
	ldr r0, _080165A4 @ =gUnk_03004654
	ldr r1, [r0]
	ldrb r0, [r1, #0x18]
	cmp r0, r7
	bls _080164E0
	ldrb r0, [r1, #1]
	cmp r0, r7
	bhi _080165B8
	ldrb r0, [r1, #0x14]
	cmp r0, r7
	blo _080165B8
	ldr r0, _080165A8 @ =gUnk_03004C20
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _080165B8
_080164E0:
	ldr r0, _080165AC @ =gUnk_03000824
	ldr r1, [r0]
	cmp r1, #0
	beq _0801654E
	ldr r0, _080165B0 @ =gUnk_03005424
	ldr r3, [r0]
	cmp r3, #0
	beq _0801654E
	adds r6, r1, #0
	cmp r6, r3
	bhi _0801654E
	ldr r1, _08016594 @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	mov r8, r0
	adds r7, r3, #0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r5, r0, r1
_0801650C:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x1a
	bhi _08016546
	ldr r4, _08016594 @ =gUnk_03002920
	add r4, r8
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #0xf
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0x20
	cmp r1, r0
	bge _08016546
	adds r1, r3, #7
	subs r0, #0x40
	cmp r1, r0
	ble _08016546
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _08016546
	adds r0, r1, #0
	subs r0, #0x1b
	cmp r2, r0
	ble _08016546
	bl sub_08016E28
_08016546:
	adds r5, #0x1c
	adds r6, #1
	cmp r6, r7
	bls _0801650C
_0801654E:
	ldr r0, [sp, #0xc]
	mov r1, sl
	subs r2, r0, r1
	lsls r2, r2, #2
	ldr r3, _08016594 @ =gUnk_03002920
	adds r2, r2, r3
	ldr r0, [sp, #4]
	adds r0, #3
	movs r3, #0
	ldr r1, _080165B4 @ =0x0000FFF8
	ands r0, r1
	strh r0, [r2, #2]
	strb r3, [r2, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	ldr r0, _08016598 @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, sl
	beq _0801657E
	bl _08016ECE
_0801657E:
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _08016594 @ =gUnk_03002920
	adds r1, r1, r4
	ldrh r0, [r1, #2]
	adds r0, #3
	strh r0, [r1, #2]
	bl _08016ECE
	.align 2, 0
_08016594: .4byte gUnk_03002920
_08016598: .4byte gUnk_03005220
_0801659C: .4byte gUnk_03004790
_080165A0: .4byte gUnk_03003430
_080165A4: .4byte gUnk_03004654
_080165A8: .4byte gUnk_03004C20
_080165AC: .4byte gUnk_03000824
_080165B0: .4byte gUnk_03005424
_080165B4: .4byte 0x0000FFF8
_080165B8:
	ldr r5, [sp, #0xc]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r7, _080165D0 @ =gUnk_03002920
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	str r0, [sp, #8]
	ldr r0, _080165D4 @ =gUnk_03003630
	ldr r6, [r0]
	b _08016C8E
	.align 2, 0
_080165D0: .4byte gUnk_03002920
_080165D4: .4byte gUnk_03003630
_080165D8:
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r2, _0801660C @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r3, [r0, #0xf]
	mov ip, r1
	adds r4, r6, #1
	mov r8, r4
	cmp r3, #0x1a
	bls _080165F0
	b _08016C8C
_080165F0:
	cmp r3, #0x19
	bne _080165F6
	b _08016C8C
_080165F6:
	ldrb r0, [r0, #0x11]
	subs r0, #6
	cmp r0, #0x6f
	bls _08016600
	b _08016C8C
_08016600:
	lsls r0, r0, #2
	ldr r1, _08016610 @ =_08016614
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801660C: .4byte gUnk_03002920
_08016610: .4byte _08016614
_08016614: @ jump table
	.4byte _0801685C @ case 0
	.4byte _08016C8C @ case 1
	.4byte _0801685C @ case 2
	.4byte _08016C8C @ case 3
	.4byte _08016C8C @ case 4
	.4byte _08016C8C @ case 5
	.4byte _08016C8C @ case 6
	.4byte _08016C8C @ case 7
	.4byte _08016C8C @ case 8
	.4byte _08016C8C @ case 9
	.4byte _08016C8C @ case 10
	.4byte _08016C8C @ case 11
	.4byte _08016C8C @ case 12
	.4byte _08016C8C @ case 13
	.4byte _08016C8C @ case 14
	.4byte _08016C8C @ case 15
	.4byte _08016C8C @ case 16
	.4byte _08016C8C @ case 17
	.4byte _08016C8C @ case 18
	.4byte _08016C8C @ case 19
	.4byte _08016C8C @ case 20
	.4byte _08016C8C @ case 21
	.4byte _08016C8C @ case 22
	.4byte _08016C8C @ case 23
	.4byte _08016C8C @ case 24
	.4byte _08016C8C @ case 25
	.4byte _08016C8C @ case 26
	.4byte _08016C8C @ case 27
	.4byte _08016C8C @ case 28
	.4byte _08016C8C @ case 29
	.4byte _08016C8C @ case 30
	.4byte _080167D4 @ case 31
	.4byte _08016C8C @ case 32
	.4byte _08016A84 @ case 33
	.4byte _08016A84 @ case 34
	.4byte _08016A84 @ case 35
	.4byte _08016A84 @ case 36
	.4byte _08016A84 @ case 37
	.4byte _08016C8C @ case 38
	.4byte _08016C8C @ case 39
	.4byte _08016C8C @ case 40
	.4byte _08016C8C @ case 41
	.4byte _08016C8C @ case 42
	.4byte _08016C8C @ case 43
	.4byte _08016C8C @ case 44
	.4byte _08016C8C @ case 45
	.4byte _08016C8C @ case 46
	.4byte _08016C34 @ case 47
	.4byte _08016AEC @ case 48
	.4byte _08016C8C @ case 49
	.4byte _08016BDC @ case 50
	.4byte _08016C8C @ case 51
	.4byte _08016C8C @ case 52
	.4byte _08016C8C @ case 53
	.4byte _08016C8C @ case 54
	.4byte _08016C8C @ case 55
	.4byte _08016B68 @ case 56
	.4byte _08016A08 @ case 57
	.4byte _08016C8C @ case 58
	.4byte _080168E0 @ case 59
	.4byte _08016C8C @ case 60
	.4byte _08016C8C @ case 61
	.4byte _08016C8C @ case 62
	.4byte _08016C8C @ case 63
	.4byte _08016C8C @ case 64
	.4byte _08016C8C @ case 65
	.4byte _08016C8C @ case 66
	.4byte _08016C8C @ case 67
	.4byte _08016C8C @ case 68
	.4byte _08016C8C @ case 69
	.4byte _08016C8C @ case 70
	.4byte _08016C8C @ case 71
	.4byte _08016C8C @ case 72
	.4byte _08016C8C @ case 73
	.4byte _08016C8C @ case 74
	.4byte _08016C8C @ case 75
	.4byte _08016C8C @ case 76
	.4byte _08016C8C @ case 77
	.4byte _08016C8C @ case 78
	.4byte _08016C8C @ case 79
	.4byte _08016C8C @ case 80
	.4byte _08016C8C @ case 81
	.4byte _08016C8C @ case 82
	.4byte _08016C8C @ case 83
	.4byte _08016C8C @ case 84
	.4byte _08016C8C @ case 85
	.4byte _08016C8C @ case 86
	.4byte _08016C8C @ case 87
	.4byte _08016C8C @ case 88
	.4byte _08016C8C @ case 89
	.4byte _08016C8C @ case 90
	.4byte _08016C8C @ case 91
	.4byte _08016C8C @ case 92
	.4byte _08016C8C @ case 93
	.4byte _08016C8C @ case 94
	.4byte _08016C8C @ case 95
	.4byte _08016C8C @ case 96
	.4byte _08016C8C @ case 97
	.4byte _08016C8C @ case 98
	.4byte _08016C8C @ case 99
	.4byte _08016C8C @ case 100
	.4byte _08016C8C @ case 101
	.4byte _08016C8C @ case 102
	.4byte _08016C8C @ case 103
	.4byte _08016C8C @ case 104
	.4byte _080167D4 @ case 105
	.4byte _08016C34 @ case 106
	.4byte _0801697C @ case 107
	.4byte _0801697C @ case 108
	.4byte _08016992 @ case 109
	.4byte _08016992 @ case 110
	.4byte _08016AEC @ case 111
_080167D4:
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	ldr r1, _08016834 @ =gUnk_03002920
	adds r7, r0, r1
	ldrh r5, [r7]
	adds r1, r5, #0
	subs r1, #0x10
	mov r2, ip
	subs r0, r2, r6
	lsls r0, r0, #2
	ldr r3, _08016834 @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #7
	adds r4, r6, #1
	mov r8, r4
	cmp r1, r0
	blt _080167FE
	b _08016C8C
_080167FE:
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	bgt _08016808
	b _08016C8C
_08016808:
	ldrh r3, [r7, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08016816
	b _08016C8C
_08016816:
	adds r0, r1, #0
	subs r0, #0x1b
	cmp r3, r0
	bgt _08016820
	b _08016C8C
_08016820:
	cmp sl, r6
	bne _08016826
	b _08016C8C
_08016826:
	ldrb r0, [r7, #0xf]
	cmp r0, #0xe
	bne _08016838
	adds r0, r1, #0
	adds r0, #0x18
	b _0801683C
	.align 2, 0
_08016834: .4byte gUnk_03002920
_08016838:
	adds r0, r1, #0
	subs r0, #0x18
_0801683C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08016858 @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r1, r5, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	b _08016B5E
	.align 2, 0
_08016858: .4byte gUnk_03002920
_0801685C:
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _080168B4 @ =gUnk_03002920
	adds r7, r0, r3
	ldrh r5, [r7]
	adds r1, r5, #0
	subs r1, #0xf
	mov r4, ip
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xc
	adds r4, r6, #1
	mov r8, r4
	cmp r1, r0
	blt _08016886
	b _08016C8C
_08016886:
	adds r1, r5, #7
	subs r0, #0x18
	cmp r1, r0
	bgt _08016890
	b _08016C8C
_08016890:
	ldrh r3, [r7, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801689E
	b _08016C8C
_0801689E:
	adds r0, r1, #0
	subs r0, #0x1b
	cmp r3, r0
	bgt _080168A8
	b _08016C8C
_080168A8:
	ldrb r0, [r7, #0xf]
	cmp r0, #0xe
	bne _080168B8
	adds r0, r1, #0
	adds r0, #0x18
	b _080168BC
	.align 2, 0
_080168B4: .4byte gUnk_03002920
_080168B8:
	ldr r5, _080168D8 @ =0x0000FFE9
	adds r0, r1, r5
_080168BC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _080168DC @ =gUnk_03002920
	ldr r7, [sp, #0xc]
	mov r2, sl
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	b _08016B5E
	.align 2, 0
_080168D8: .4byte 0x0000FFE9
_080168DC: .4byte gUnk_03002920
_080168E0:
	ldr r3, [sp, #0xc]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _08016950 @ =gUnk_03002920
	adds r4, r0, r5
	ldrh r5, [r4]
	adds r1, r5, #0
	subs r1, #0xf
	mov r7, ip
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r3, _08016950 @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x10
	adds r7, r6, #1
	mov r8, r7
	cmp r1, r0
	blt _0801690C
	b _08016C8C
_0801690C:
	adds r1, r5, #7
	subs r0, #0x20
	cmp r1, r0
	bgt _08016916
	b _08016C8C
_08016916:
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r2, #2]
	cmp r0, r2
	blt _08016924
	b _08016C8C
_08016924:
	adds r3, r2, #0
	subs r3, #0x20
	cmp r1, r3
	bgt _0801692E
	b _08016C8C
_0801692E:
	ldr r1, _08016954 @ =gUnk_03000830
	ldr r0, _08016958 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016942
	b _08016C8C
_08016942:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xe
	bne _0801695C
	adds r0, r2, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	b _0801695E
	.align 2, 0
_08016950: .4byte gUnk_03002920
_08016954: .4byte gUnk_03000830
_08016958: .4byte gUnk_0300363C
_0801695C:
	lsls r0, r3, #0x10
_0801695E:
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08016978 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	movs r0, #0x9d
	b _08016B5E
	.align 2, 0
_08016978: .4byte gUnk_03002920
_0801697C:
	adds r0, r6, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _08016A04 @ =gUnk_03002920
	adds r1, r1, r4
	ldrb r1, [r1, #8]
	mov r8, r0
	cmp r1, #0
	beq _08016992
	b _08016C8C
_08016992:
	ldr r1, _08016A04 @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r4, [r5]
	adds r2, r4, #0
	subs r2, #0xf
	mov r3, ip
	subs r0, r3, r6
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r3, [r1]
	adds r7, r3, #2
	cmp r2, r7
	blt _080169B6
	b _08016C8C
_080169B6:
	adds r0, r4, #7
	subs r4, r3, #2
	cmp r0, r4
	bgt _080169C0
	b _08016C8C
_080169C0:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r1, #2]
	cmp r0, r1
	blt _080169CE
	b _08016C8C
_080169CE:
	adds r2, r1, #0
	subs r2, #0x10
	cmp r3, r2
	bgt _080169D8
	b _08016C8C
_080169D8:
	ldr r0, [sp]
	subs r0, #0xf
	cmp r0, r7
	bge _080169F8
	ldr r0, [sp]
	adds r0, #7
	cmp r0, r4
	ble _080169F8
	ldr r0, [sp, #4]
	subs r0, #0x18
	cmp r0, r1
	bge _080169F8
	ldr r4, [sp, #4]
	cmp r4, r2
	ble _080169F8
	b _08016C8C
_080169F8:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EAA4
	b _08016C8C
	.align 2, 0
_08016A04: .4byte gUnk_03002920
_08016A08:
	ldr r1, _08016A78 @ =gUnk_03002920
	ldr r5, [sp, #0xc]
	mov r7, sl
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r4, [r7]
	adds r2, r4, #0
	subs r2, #0xf
	mov r3, ip
	subs r0, r3, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08016A32
	b _08016C8C
_08016A32:
	adds r1, r4, #7
	subs r0, #0x18
	cmp r1, r0
	bgt _08016A3C
	b _08016C8C
_08016A3C:
	ldrh r2, [r7, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	blt _08016A4A
	b _08016C8C
_08016A4A:
	adds r0, r1, #0
	subs r0, #0x19
	cmp r2, r0
	bgt _08016A54
	b _08016C8C
_08016A54:
	ldr r2, _08016A7C @ =0x0000FFF0
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	strb r0, [r7, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
	adds r0, r6, #0
	movs r1, #2
	bl sub_08025B78
	ldr r0, _08016A80 @ =gUnk_03003610
	mov r3, sl
	strb r3, [r0, #6]
	b _08016C8C
	.align 2, 0
_08016A78: .4byte gUnk_03002920
_08016A7C: .4byte 0x0000FFF0
_08016A80: .4byte gUnk_03003610
_08016A84:
	ldr r1, _08016AE8 @ =gUnk_03002920
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r4, [r7]
	adds r2, r4, #0
	subs r2, #0xf
	mov r3, ip
	subs r0, r3, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r0, r3, #0
	adds r0, #0x10
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08016AAE
	b _08016C8C
_08016AAE:
	adds r1, r4, #7
	subs r0, #0x20
	cmp r1, r0
	bgt _08016AB8
	b _08016C8C
_08016AB8:
	ldrh r2, [r7, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	blt _08016AC6
	b _08016C8C
_08016AC6:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r2, r0
	bgt _08016AD0
	b _08016C8C
_08016AD0:
	adds r0, #4
	cmp r2, r0
	ble _08016AD8
	b _08016C8C
_08016AD8:
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0x9d
	bl m4aSongNumStart
	b _08016BD4
	.align 2, 0
_08016AE8: .4byte gUnk_03002920
_08016AEC:
	ldr r1, _08016B44 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r5, [r7]
	adds r2, r5, #0
	subs r2, #0xf
	mov r4, ip
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r3, [r4]
	adds r0, r3, #3
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08016B14
	b _08016C8C
_08016B14:
	adds r1, r5, #7
	subs r0, r3, #3
	cmp r1, r0
	bgt _08016B1E
	b _08016C8C
_08016B1E:
	ldrh r3, [r7, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	blt _08016B30
	b _08016C8C
_08016B30:
	subs r0, #8
	cmp r3, r0
	bgt _08016B38
	b _08016C8C
_08016B38:
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	bne _08016B48
	movs r0, #0x10
	b _08016B5A
	.align 2, 0
_08016B44: .4byte gUnk_03002920
_08016B48:
	cmp r0, #1
	bne _08016B50
	movs r0, #0x11
	b _08016B5A
_08016B50:
	cmp r0, #0
	bne _08016B58
	movs r0, #0xf
	b _08016B5A
_08016B58:
	movs r0, #0xe
_08016B5A:
	strb r0, [r7, #0xf]
	movs r0, #0xa1
_08016B5E:
	bl m4aSongNumStart
	adds r6, #1
	mov r8, r6
	b _08016C8C
_08016B68:
	ldr r1, _08016BD0 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r4, [r7]
	adds r2, r4, #0
	subs r2, #0xf
	mov r5, ip
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	blt _08016B92
	b _08016C8C
_08016B92:
	adds r1, r4, #7
	subs r0, #0x18
	cmp r1, r0
	ble _08016C8C
	ldrh r2, [r7, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _08016C8C
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	ble _08016C8C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0x9d
	bl m4aSongNumStart
	ldrb r0, [r5, #0x11]
	subs r0, #0x29
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08016BD4
	movs r0, #0
	strb r0, [r7, #0xf]
	b _08016C8C
	.align 2, 0
_08016BD0: .4byte gUnk_03002920
_08016BD4:
	movs r0, #1
	strb r0, [r7, #0xf]
	strb r6, [r7, #0x18]
	b _08016C8C
_08016BDC:
	ldr r1, _08016C30 @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r4, [r5]
	adds r2, r4, #0
	subs r2, #0xf
	mov r7, ip
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r3, [r7]
	adds r0, r3, #0
	adds r0, #0x20
	adds r1, r6, #1
	mov r8, r1
	cmp r2, r0
	bge _08016C8C
	adds r1, r4, #7
	subs r0, #0x40
	cmp r1, r0
	ble _08016C8C
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r7, #2]
	cmp r0, r1
	bge _08016C8C
	adds r0, r1, #0
	subs r0, #0x1d
	cmp r2, r0
	ble _08016C8C
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #1
	strb r0, [r5, #0xf]
	strb r6, [r5, #0x18]
	b _08016C8C
	.align 2, 0
_08016C30: .4byte gUnk_03002920
_08016C34:
	ldr r1, _08016CAC @ =gUnk_03002920
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r4, [r7]
	adds r2, r4, #0
	subs r2, #0xf
	mov r5, ip
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r3, [r5]
	adds r0, r3, #0
	adds r0, #0xf
	adds r6, #1
	mov r8, r6
	cmp r2, r0
	bge _08016C8C
	adds r1, r4, #7
	subs r0, #0x1e
	cmp r1, r0
	ble _08016C8C
	ldrh r2, [r7, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _08016C8C
	adds r0, r1, #0
	subs r0, #0x20
	cmp r2, r0
	ble _08016C8C
	ldr r6, _08016CB0 @ =0x0000FFE0
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	strb r0, [r7, #0xf]
	movs r0, #0x9d
	bl m4aSongNumStart
_08016C8C:
	mov r6, r8
_08016C8E:
	ldr r0, _08016CB4 @ =gUnk_03004674
	ldr r0, [r0]
	cmp r6, r0
	bhi _08016C98
	b _080165D8
_08016C98:
	ldr r7, [sp, #0xc]
	mov r1, sl
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _08016CAC @ =gUnk_03002920
	adds r0, r0, r2
	mov r3, sp
	ldrh r3, [r3, #8]
	strh r3, [r0, #2]
	b _08016ECE
	.align 2, 0
_08016CAC: .4byte gUnk_03002920
_08016CB0: .4byte 0x0000FFE0
_08016CB4: .4byte gUnk_03004674
_08016CB8:
	ldr r0, _08016CF4 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #7
	ands r0, r1
	mov r4, sl
	lsls r4, r4, #3
	str r4, [sp, #0xc]
	cmp r0, #0
	bne _08016D62
	ldr r1, _08016CF8 @ =gUnk_03002920
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r1, [r2, #9]
	movs r0, #0x46
	subs r1, r0, r1
	movs r5, #0
	movs r4, #0
	ldrb r0, [r2, #8]
	cmp r0, #2
	bne _08016CFC
	ldrh r0, [r2]
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	b _08016D08
	.align 2, 0
_08016CF4: .4byte gUnk_03004C20
_08016CF8: .4byte gUnk_03002920
_08016CFC:
	cmp r0, #3
	bne _08016D12
	ldrh r6, [r2]
	str r6, [sp]
	ldrh r0, [r2, #2]
	adds r0, r0, r1
_08016D08:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r5, #5
	b _08016D30
_08016D12:
	cmp r0, #4
	bne _08016D1C
	ldrh r0, [r2]
	adds r0, r0, r1
	b _08016D24
_08016D1C:
	cmp r0, #5
	bne _08016D30
	ldrh r0, [r2]
	subs r0, r0, r1
_08016D24:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r2, [r2, #2]
	str r2, [sp, #4]
	movs r4, #5
_08016D30:
	ldr r7, [sp]
	subs r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #4]
	subs r1, r2, r5
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #6
	movs r3, #0
	bl sub_0801E664
	adds r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #4]
	adds r1, r3, r5
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #6
	movs r3, #0
	bl sub_0801E664
_08016D62:
	ldr r0, _08016D84 @ =gUnk_03002920
	ldr r4, [sp, #0xc]
	mov r5, sl
	subs r1, r4, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #9]
	subs r0, #1
	strb r0, [r1, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08016D7C
	b _08016ECE
_08016D7C:
	movs r0, #0x1c
	strb r0, [r1, #0xf]
	b _08016ECE
	.align 2, 0
_08016D84: .4byte gUnk_03002920
_08016D88:
	movs r6, #0
	str r6, [sp, #4]
	mov r7, sl
	lsls r1, r7, #3
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r2, _08016E20 @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r0, [r0, #0xf]
	movs r3, #0xc
	str r3, [sp]
	str r1, [sp, #0xc]
	cmp r0, #0xb
	beq _08016DB4
	ldr r4, _08016E24 @ =0x0000FFF4
	str r4, [sp]
	cmp r0, #0xc
	beq _08016DB4
	movs r5, #0
	str r5, [sp]
	movs r6, #0x14
	str r6, [sp, #4]
_08016DB4:
	ldr r7, [sp, #0xc]
	mov r1, sl
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _08016E20 @ =gUnk_03002920
	adds r3, r0, r2
	ldrh r0, [r3]
	ldr r4, [sp]
	adds r5, r4, r0
	adds r2, r5, #0
	subs r2, #0xf
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrb r1, [r3, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r6, _08016E20 @ =gUnk_03002920
	adds r4, r0, r6
	ldrh r1, [r4]
	adds r0, r1, #7
	cmp r2, r0
	bge _08016E10
	adds r0, r5, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, #0xf
	cmp r0, r1
	ble _08016E10
	ldrh r0, [r3, #2]
	ldr r7, [sp, #4]
	adds r0, r7, r0
	subs r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	cmp r0, r1
	bhs _08016E10
	ldrh r0, [r3, #2]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	subs r1, #0x18
	cmp r0, r1
	bgt _08016ECE
_08016E10:
	ldr r2, [sp, #0xc]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _08016E20 @ =gUnk_03002920
	adds r0, r0, r4
	b _08016ECA
	.align 2, 0
_08016E20: .4byte gUnk_03002920
_08016E24: .4byte 0x0000FFF4

	thumb_func_start sub_08016E28
sub_08016E28: @ 0x08016E28
	adds r0, r1, #0
	subs r0, #0x18
	strh r0, [r4, #2]
	movs r0, #1
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x18]
	b _08016ECE
_08016E36:
	movs r5, #0
	str r5, [sp, #4]
	mov r6, sl
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r7, _08016EE0 @ =gUnk_03002920
	adds r0, r0, r7
	ldrb r0, [r0, #0xf]
	movs r2, #0xc
	str r2, [sp]
	str r1, [sp, #0xc]
	cmp r0, #8
	beq _08016E62
	ldr r3, _08016EE4 @ =0x0000FFF4
	str r3, [sp]
	cmp r0, #9
	beq _08016E62
	movs r4, #0
	str r4, [sp]
	ldr r5, _08016EE8 @ =0x0000FFE8
	str r5, [sp, #4]
_08016E62:
	ldr r6, [sp, #0xc]
	mov r7, sl
	subs r0, r6, r7
	lsls r0, r0, #2
	ldr r1, _08016EE0 @ =gUnk_03002920
	adds r3, r0, r1
	ldrh r0, [r3]
	ldr r2, [sp]
	adds r5, r2, r0
	adds r2, r5, #0
	subs r2, #0xe
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrb r1, [r3, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r6, _08016EE0 @ =gUnk_03002920
	adds r4, r0, r6
	ldrh r1, [r4]
	adds r0, r1, #7
	cmp r2, r0
	bge _08016EBE
	adds r0, r5, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, #0xf
	cmp r0, r1
	ble _08016EBE
	ldrh r0, [r3, #2]
	ldr r7, [sp, #4]
	adds r1, r7, r0
	adds r0, r1, #0
	subs r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4, #2]
	cmp r0, r2
	bhs _08016EBE
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r4, #2]
	subs r0, #0x18
	cmp r1, r0
	bgt _08016ECE
_08016EBE:
	ldr r3, [sp, #0xc]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _08016EE0 @ =gUnk_03002920
	adds r0, r0, r5
_08016ECA:
	movs r1, #0
	strb r1, [r0, #0xf]
_08016ECE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016EE0: .4byte gUnk_03002920
_08016EE4: .4byte 0x0000FFF4
_08016EE8: .4byte 0x0000FFE8

	thumb_func_start sub_08016EEC
sub_08016EEC: @ 0x08016EEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, _08016F2C @ =gUnk_03002920
	lsls r0, r0, #3
	mov r2, sl
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r3, [r0]
	str r3, [sp, #0x2c]
	ldrh r4, [r0, #2]
	str r4, [sp, #0x30]
	movs r5, #0
	str r5, [sp, #0x34]
	ldrb r0, [r0, #0xf]
	cmp r0, #0x1b
	bls _08016F20
	bl _0801B02E
_08016F20:
	lsls r0, r0, #2
	ldr r1, _08016F30 @ =_08016F34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016F2C: .4byte gUnk_03002920
_08016F30: .4byte _08016F34
_08016F34: @ jump table
	.4byte _080170CC @ case 0
	.4byte _0801B02E @ case 1
	.4byte _0801B02E @ case 2
	.4byte _0801B02E @ case 3
	.4byte _0801B02E @ case 4
	.4byte _0801B02E @ case 5
	.4byte _0801B02E @ case 6
	.4byte _0801B02E @ case 7
	.4byte _0801B02E @ case 8
	.4byte _0801B02E @ case 9
	.4byte _0801B02E @ case 10
	.4byte _0801B02E @ case 11
	.4byte _0801B02E @ case 12
	.4byte _0801B02E @ case 13
	.4byte _0801A0B4 @ case 14
	.4byte _0801A0B4 @ case 15
	.4byte _08018D50 @ case 16
	.4byte _08018D50 @ case 17
	.4byte _0801B02E @ case 18
	.4byte _08018574 @ case 19
	.4byte _080177FA @ case 20
	.4byte _08018D8C @ case 21
	.4byte _08018D8C @ case 22
	.4byte _0801A108 @ case 23
	.4byte _0801B02E @ case 24
	.4byte _08016FA4 @ case 25
	.4byte _0801B02E @ case 26
	.4byte _0801AF54 @ case 27
_08016FA4:
	mov r6, sl
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r7, _08016FE0 @ =gUnk_03002920
	adds r5, r0, r7
	ldrb r0, [r5, #8]
	str r1, [sp, #0x40]
	cmp r0, #0
	beq _08017004
	subs r0, #1
	strb r0, [r5, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08016FC6
	bl _0801B02E
_08016FC6:
	movs r0, #1
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x11]
	cmp r0, #0x76
	beq _08016FD4
	cmp r0, #0x7b
	bne _08016FE4
_08016FD4:
	mov r0, sl
	movs r1, #1
	bl sub_08025B78
	b _08016FEC
	.align 2, 0
_08016FE0: .4byte gUnk_03002920
_08016FE4:
	mov r0, sl
	movs r1, #0
	bl sub_08025B78
_08016FEC:
	ldr r0, _08017000 @ =gUnk_03002920
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	bl _0801B02E
	.align 2, 0
_08017000: .4byte gUnk_03002920
_08017004:
	ldr r0, _08017028 @ =gUnk_03004C20
	ldrb r1, [r0, #0xc]
	cmp r1, #8
	bne _08017052
	ldr r6, _0801702C @ =gUnk_03005400
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _08017020
	ldr r7, _08017028 @ =gUnk_03004C20
	ldrb r4, [r7, #0xd]
	cmp r4, #2
	beq _08017020
	cmp r4, #4
	bne _08017030
_08017020:
	movs r0, #0x1c
	strb r0, [r5, #0xf]
	bl _0801B02E
	.align 2, 0
_08017028: .4byte gUnk_03004C20
_0801702C: .4byte gUnk_03005400
_08017030:
	cmp r4, #1
	bne _08017044
	ldr r1, _080170B4 @ =gUnk_03002920
	ldrh r0, [r1]
	movs r1, #0xf0
	bl __udivsi3
	adds r0, #1
	ldr r2, _080170B8 @ =gUnk_03004C20
	strb r0, [r2, #0xe]
_08017044:
	cmp r4, #3
	bne _08017052
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _08017052
	ldr r3, _080170B8 @ =gUnk_03004C20
	strb r0, [r3, #0xe]
_08017052:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _080170B4 @ =gUnk_03002920
	adds r4, r0, r6
	ldr r1, _080170BC @ =gUnk_03003430
	adds r0, r1, #0
	adds r0, #0x40
	ldrh r2, [r4]
	ldrh r0, [r0]
	subs r3, r2, r0
	strh r3, [r4, #4]
	adds r1, #0x42
	ldrh r2, [r4, #2]
	ldrh r0, [r1]
	subs r2, r2, r0
	strh r2, [r4, #6]
	ldr r7, _080170B8 @ =gUnk_03004C20
	ldrb r0, [r7, #0xc]
	cmp r0, #8
	beq _0801709E
	ldr r1, _080170C0 @ =0xFFFFFEED
	adds r0, r3, r1
	lsls r0, r0, #0x10
	ldr r1, _080170C4 @ =0xFEC90000
	cmp r0, r1
	bhi _0801708E
	bl _0801B02E
_0801708E:
	adds r0, r2, #0
	subs r0, #0xe0
	lsls r0, r0, #0x10
	ldr r1, _080170C8 @ =0xFEFC0000
	cmp r0, r1
	bhi _0801709E
	bl _0801B02E
_0801709E:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	movs r2, #1
	mov r3, sl
	bl sub_0801E664
	movs r0, #0x5a
	strb r0, [r4, #8]
	bl _0801B02E
	.align 2, 0
_080170B4: .4byte gUnk_03002920
_080170B8: .4byte gUnk_03004C20
_080170BC: .4byte gUnk_03003430
_080170C0: .4byte 0xFFFFFEED
_080170C4: .4byte 0xFEC90000
_080170C8: .4byte 0xFEFC0000
_080170CC:
	mov r2, sl
	lsls r1, r2, #3
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _0801710C @ =gUnk_03002920
	adds r5, r0, r3
	ldrb r2, [r5, #0x11]
	str r1, [sp, #0x40]
	cmp r2, #0x76
	beq _080170E6
	cmp r2, #0x7b
	beq _080170E6
	b _080171F2
_080170E6:
	ldr r0, _08017110 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080170F4
	b _080177DC
_080170F4:
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08017118
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	ldr r4, _08017114 @ =gUnk_03004790
	ldrh r1, [r5]
	adds r1, #0xc
	b _08017124
	.align 2, 0
_0801710C: .4byte gUnk_03002920
_08017110: .4byte gUnk_03004C20
_08017114: .4byte gUnk_03004790
_08017118:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	ldr r4, _08017164 @ =gUnk_03004790
	ldrh r1, [r5]
	subs r1, #0xc
_08017124:
	asrs r1, r1, #3
	ldrh r0, [r5, #2]
	subs r0, #4
	asrs r0, r0, #3
	ldr r3, _08017168 @ =gUnk_03003430
	adds r2, r3, #0
	adds r2, #0x48
	ldrh r2, [r2]
	muls r2, r0, r2
	ldr r0, [r4, #0x14]
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	adds r2, r3, #0
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r7, _0801716C @ =gUnk_03002920
	adds r3, r0, r7
	ldrb r0, [r3, #9]
	cmp r0, #2
	bne _080171AC
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08017170
	ldrh r1, [r3]
	adds r1, #4
	b _08017174
	.align 2, 0
_08017164: .4byte gUnk_03004790
_08017168: .4byte gUnk_03003430
_0801716C: .4byte gUnk_03002920
_08017170:
	ldrh r1, [r3]
	subs r1, #4
_08017174:
	asrs r1, r1, #3
	ldrh r0, [r3, #2]
	adds r0, #4
	asrs r0, r0, #3
	adds r2, #0x48
	ldrh r2, [r2]
	muls r0, r2, r0
	ldr r2, [r4, #0x14]
	adds r1, r1, r0
	adds r2, r2, r1
	ldr r0, _080171A8 @ =gUnk_03004654
	ldr r1, [r0]
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	blo _08017196
	b _080177DC
_08017196:
	movs r0, #3
	strb r0, [r3, #9]
	mov r0, sl
	movs r1, #0
	bl sub_08025B78
	bl _0801B02E
	.align 2, 0
_080171A8: .4byte gUnk_03004654
_080171AC:
	cmp r0, #3
	beq _080171B2
	b _080177DC
_080171B2:
	ldr r1, _080171D0 @ =gUnk_03000830
	ldr r0, _080171D4 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, sl
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080171D8
	mov r4, sp
	ldrh r4, [r4, #0x2c]
	strh r4, [r3]
	b _080177DC
	.align 2, 0
_080171D0: .4byte gUnk_03000830
_080171D4: .4byte gUnk_0300363C
_080171D8:
	ldrb r2, [r3, #0xc]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #2
	strb r0, [r3, #9]
	b _080177DC
_080171F2:
	cmp r2, #0x77
	beq _080171FE
	cmp r2, #6
	beq _080171FE
	cmp r2, #0x7c
	bne _080172F4
_080171FE:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r7, _0801723C @ =gUnk_03002920
	adds r4, r0, r7
	ldrb r0, [r4, #0xd]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08017214
	b _080177DC
_08017214:
	ldr r0, _08017240 @ =gUnk_03004C20
	ldr r1, [r0, #4]
	movs r2, #1
	ands r1, r2
	cmp r1, #0
	beq _08017258
	ldrb r0, [r4, #0x11]
	cmp r0, #0x77
	beq _0801722A
	cmp r0, #0x7c
	bne _08017244
_0801722A:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08017252
	ldrh r0, [r4]
	adds r0, #1
	b _08017256
	.align 2, 0
_0801723C: .4byte gUnk_03002920
_08017240: .4byte gUnk_03004C20
_08017244:
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _08017252
	ldrh r0, [r4]
	adds r0, #1
	b _08017256
_08017252:
	ldrh r0, [r4]
	subs r0, #1
_08017256:
	strh r0, [r4]
_08017258:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _0801728C @ =gUnk_03002920
	adds r3, r0, r4
	ldrb r0, [r3, #9]
	subs r0, #1
	strb r0, [r3, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08017272
	b _080177DC
_08017272:
	ldrb r0, [r3, #0x11]
	cmp r0, #0x77
	beq _0801727C
	cmp r0, #0x7c
	bne _08017290
_0801727C:
	ldrb r2, [r3, #0xc]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	b _0801729C
	.align 2, 0
_0801728C: .4byte gUnk_03002920
_08017290:
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
_0801729C:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldr r0, _080172E0 @ =gUnk_03002920
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r3, r5, r6
	lsls r3, r3, #2
	adds r3, r3, r0
	ldr r4, _080172E4 @ =gUnk_080E2B64
	ldr r7, _080172E8 @ =gUnk_03004C20
	ldrb r1, [r7, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r2, sl
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r7, #0xc]
	subs r0, #1
	ldr r2, _080172EC @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	ldr r2, _080172F0 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r0, [r1, #4]
	strb r0, [r3, #9]
	b _080177DC
	.align 2, 0
_080172E0: .4byte gUnk_03002920
_080172E4: .4byte gUnk_080E2B64
_080172E8: .4byte gUnk_03004C20
_080172EC: .4byte 0x00001130
_080172F0: .4byte 0x00008980
_080172F4:
	cmp r2, #0x79
	beq _080172FA
	b _08017490
_080172FA:
	ldrh r0, [r5, #2]
	adds r0, #2
	strh r0, [r5, #2]
	ldr r3, _08017344 @ =gUnk_03004790
	ldrh r1, [r5]
	adds r1, #4
	asrs r1, r1, #3
	ldrh r2, [r5, #2]
	subs r2, #2
	asrs r2, r2, #3
	ldr r0, _08017348 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r3, #0x14]
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	ldr r0, _0801734C @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	ldr r1, [sp, #0x34]
	cmp r0, r1
	bls _0801732E
	b _080177DC
_0801732E:
	ldr r0, [sp, #0x30]
	adds r0, #3
	ldr r1, _08017350 @ =0x0000FFF8
	ands r0, r1
	strh r0, [r5, #2]
	ldrb r2, [r5, #8]
	cmp r2, #0
	bne _08017354
	movs r0, #0xc8
	strb r0, [r5, #8]
	b _080177DC
	.align 2, 0
_08017344: .4byte gUnk_03004790
_08017348: .4byte gUnk_03003430
_0801734C: .4byte gUnk_03004654
_08017350: .4byte 0x0000FFF8
_08017354:
	ldrb r1, [r5, #0xc]
	lsrs r0, r1, #4
	cmp r0, #2
	bne _08017384
	cmp r2, #0x64
	bls _08017384
	ldr r2, _08017378 @ =gUnk_03002920
	ldrh r0, [r2]
	ldrh r3, [r5]
	cmp r0, r3
	bhs _0801737C
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _08017382
	.align 2, 0
_08017378: .4byte gUnk_03002920
_0801737C:
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
_08017382:
	strb r0, [r5, #0xc]
_08017384:
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r5, r0, #2
	ldr r6, _080173F0 @ =gUnk_03002920
	adds r2, r5, r6
	ldr r7, _080173F4 @ =0xFFFFFEED
	adds r0, r7, #0
	ldrh r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _080173F8 @ =0xFEC90000
	cmp r0, r1
	bhi _080173A2
	b _080177DC
_080173A2:
	ldrh r0, [r2, #6]
	subs r0, #0xe0
	lsls r0, r0, #0x10
	ldr r1, _080173FC @ =0xFEFC0000
	cmp r0, r1
	bhi _080173B0
	b _080177DC
_080173B0:
	movs r4, #0
	mov sb, r4
	movs r6, #1
	str r6, [sp, #0x28]
	ldrb r7, [r2, #9]
	cmp r6, r7
	bhi _08017462
	ldr r4, _080173F0 @ =gUnk_03002920
	adds r7, r5, #0
	adds r7, #0x1c
	adds r6, r2, #0
	adds r6, #0x1c
_080173C8:
	mov r1, sl
	subs r0, r3, r1
	lsls r0, r0, #2
	adds r5, r0, r4
	ldrb r0, [r6, #8]
	ldrb r2, [r5, #8]
	cmp r0, r2
	bne _08017438
	mov r0, sl
	movs r1, #2
	bl sub_08025B78
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08017400
	ldrh r0, [r5]
	adds r0, #0xa
	b _08017404
	.align 2, 0
_080173F0: .4byte gUnk_03002920
_080173F4: .4byte 0xFFFFFEED
_080173F8: .4byte 0xFEC90000
_080173FC: .4byte 0xFEFC0000
_08017400:
	ldrh r0, [r5]
	subs r0, #0xa
_08017404:
	strh r0, [r6]
	ldr r3, [sp, #0x40]
	mov r5, sl
	subs r1, r3, r5
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrh r0, [r1, #2]
	subs r0, #2
	movs r2, #0
	strh r0, [r6, #2]
	strb r2, [r6, #0xf]
	movs r0, #1
	strb r0, [r6, #0x10]
	ldrb r0, [r1, #0xc]
	movs r2, #0xc
	ands r2, r0
	ldrb r0, [r6, #0xc]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0xc]
	movs r0, #0x58
	bl m4aSongNumStart
_08017438:
	ldr r1, _0801748C @ =gUnk_03002920
	adds r0, r7, r1
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bne _08017446
	movs r5, #1
	mov sb, r5
_08017446:
	adds r7, #0x1c
	adds r6, #0x1c
	ldr r0, [sp, #0x28]
	adds r0, #1
	str r0, [sp, #0x28]
	ldr r3, [sp, #0x40]
	mov r2, sl
	subs r0, r3, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [sp, #0x28]
	ldrb r0, [r0, #9]
	cmp r5, r0
	bls _080173C8
_08017462:
	ldr r0, _0801748C @ =gUnk_03002920
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r1, r6, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	subs r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801747C
	b _080177DC
_0801747C:
	mov r0, sb
	cmp r0, #0
	bne _08017484
	b _080177DC
_08017484:
	movs r0, #1
	strb r0, [r1, #8]
	b _080177DC
	.align 2, 0
_0801748C: .4byte gUnk_03002920
_08017490:
	cmp r2, #0xb
	bne _08017496
	b _0801761C
_08017496:
	ldrb r0, [r5, #0xd]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _080174A0
	b _080177DC
_080174A0:
	cmp r2, #0x78
	beq _080174AC
	cmp r2, #0x7a
	beq _080174AC
	cmp r2, #0x7d
	bne _080174DE
_080174AC:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _080174D0 @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r0, [r3]
	ldrh r4, [r2]
	cmp r0, r4
	bhs _080174D4
	ldrb r0, [r2, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2, #0xc]
	b _080174DE
	.align 2, 0
_080174D0: .4byte gUnk_03002920
_080174D4:
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
_080174DE:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r1, _0801756C @ =gUnk_03002920
	adds r7, r0, r1
	ldrb r0, [r7, #9]
	cmp r0, #0
	bne _08017584
	ldr r2, _08017570 @ =gUnk_080E2B64
	mov sb, r2
	ldr r3, _08017574 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r2, sl
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r5, _08017578 @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r4, _0801757C @ =0x00008980
	muls r0, r4, r0
	adds r1, r1, r0
	add r1, sb
	ldr r0, _08017580 @ =gSineTable
	mov r8, r0
	ldr r0, [r3]
	movs r2, #0x7f
	ands r0, r2
	lsls r0, r0, #2
	adds r0, #0x80
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7]
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r3, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	add r1, sb
	ldr r0, [r3]
	ands r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	b _080177DC
	.align 2, 0
_0801756C: .4byte gUnk_03002920
_08017570: .4byte gUnk_080E2B64
_08017574: .4byte gUnk_03004C20
_08017578: .4byte 0x00001130
_0801757C: .4byte 0x00008980
_08017580: .4byte gSineTable
_08017584:
	ldr r0, _080175A0 @ =gUnk_03004C20
	ldr r1, [r0, #4]
	movs r2, #1
	ands r1, r2
	cmp r1, #0
	beq _080175AA
	ldrb r0, [r7, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _080175A4
	ldrh r0, [r7, #2]
	subs r0, #1
	b _080175A8
	.align 2, 0
_080175A0: .4byte gUnk_03004C20
_080175A4:
	ldrh r0, [r7, #2]
	adds r0, #1
_080175A8:
	strh r0, [r7, #2]
_080175AA:
	ldr r0, _08017608 @ =gUnk_03002920
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r4, r1, r0
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080175C4
	b _080177DC
_080175C4:
	ldrb r2, [r4, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	ldr r3, _0801760C @ =gUnk_080E2B64
	ldr r5, _08017610 @ =gUnk_03004C20
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r2, sl
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r2, _08017614 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	ldr r2, _08017618 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1, #4]
	strb r0, [r4, #9]
	b _080177DC
	.align 2, 0
_08017608: .4byte gUnk_03002920
_0801760C: .4byte gUnk_080E2B64
_08017610: .4byte gUnk_03004C20
_08017614: .4byte 0x00001130
_08017618: .4byte 0x00008980
_0801761C:
	ldrh r4, [r5]
	adds r0, r4, #0
	subs r0, #0xdc
	ldr r6, _0801764C @ =gUnk_03002920
	ldrh r6, [r6]
	cmp r0, r6
	bge _08017708
	ldr r0, _08017650 @ =gUnk_03004C20
	ldrb r1, [r0, #0xc]
	cmp r1, #8
	beq _08017710
	adds r7, r0, #0
	ldr r0, [r7, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801766A
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08017654
	adds r0, r4, #1
	b _08017656
	.align 2, 0
_0801764C: .4byte gUnk_03002920
_08017650: .4byte gUnk_03004C20
_08017654:
	subs r0, r4, #1
_08017656:
	strh r0, [r5]
	ldr r0, [sp, #0x40]
	mov r2, sl
	subs r1, r0, r2
	lsls r1, r1, #2
	ldr r3, _0801769C @ =gUnk_03002920
	adds r1, r1, r3
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_0801766A:
	ldr r1, _0801769C @ =gUnk_03002920
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r1, [r4]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	mov r0, sp
	movs r3, #0x18
	bl sub_08014184
	ldr r1, [sp]
	lsls r1, r1, #0x10
	ldr r0, _080176A0 @ =0xFFFF0000
	cmp r1, r0
	beq _080176A8
	ldr r0, _080176A4 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	b _080176C6
	.align 2, 0
_0801769C: .4byte gUnk_03002920
_080176A0: .4byte 0xFFFF0000
_080176A4: .4byte gUnk_03004654
_080176A8:
	ldr r3, _080176F8 @ =gUnk_03004790
	ldrh r1, [r4]
	adds r1, #4
	asrs r1, r1, #3
	ldrh r2, [r4, #2]
	subs r2, #4
	asrs r2, r2, #3
	ldr r0, _080176FC @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r3, #0x14]
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
_080176C6:
	str r0, [sp, #0x34]
	ldr r1, _08017700 @ =gUnk_03002920
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	add r0, sp, #4
	movs r3, #0x18
	bl sub_08014230
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08017704 @ =0x0000FFFF
	cmp r0, r2
	beq _080177DC
	strh r1, [r4, #2]
	adds r0, r2, #0
	ands r0, r1
	str r0, [sp, #0x30]
	b _080177DC
	.align 2, 0
_080176F8: .4byte gUnk_03004790
_080176FC: .4byte gUnk_03003430
_08017700: .4byte gUnk_03002920
_08017704: .4byte 0x0000FFFF
_08017708:
	ldr r0, _08017738 @ =gUnk_03004C20
	ldrb r1, [r0, #0xc]
	cmp r1, #8
	bne _080177DC
_08017710:
	ldr r1, _08017738 @ =gUnk_03004C20
	ldr r0, [r1, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08017758
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _0801773C @ =gUnk_03002920
	adds r1, r0, r4
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08017740
	ldrh r0, [r1]
	adds r0, #1
	b _08017744
	.align 2, 0
_08017738: .4byte gUnk_03004C20
_0801773C: .4byte gUnk_03002920
_08017740:
	ldrh r0, [r1]
	subs r0, #1
_08017744:
	strh r0, [r1]
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r1, r5, r6
	lsls r1, r1, #2
	ldr r7, _08017784 @ =gUnk_03002920
	adds r1, r1, r7
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_08017758:
	ldr r1, _08017784 @ =gUnk_03002920
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	add r0, sp, #8
	movs r3, #0x18
	bl sub_08014184
	ldr r1, [sp, #8]
	lsls r1, r1, #0x10
	ldr r0, _08017788 @ =0xFFFF0000
	cmp r1, r0
	beq _08017790
	ldr r0, _0801778C @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	b _080177AE
	.align 2, 0
_08017784: .4byte gUnk_03002920
_08017788: .4byte 0xFFFF0000
_0801778C: .4byte gUnk_03004654
_08017790:
	ldr r3, _08017844 @ =gUnk_03004790
	ldrh r1, [r4]
	adds r1, #4
	asrs r1, r1, #3
	ldrh r2, [r4, #2]
	subs r2, #4
	asrs r2, r2, #3
	ldr r0, _08017848 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r3, #0x14]
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
_080177AE:
	str r0, [sp, #0x34]
	ldr r1, _0801784C @ =gUnk_03002920
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	add r0, sp, #0xc
	movs r3, #0x18
	bl sub_08014230
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08017850 @ =0x0000FFFF
	cmp r0, r2
	beq _080177DC
	strh r1, [r4, #2]
	adds r6, r2, #0
	ands r6, r1
	str r6, [sp, #0x30]
_080177DC:
	ldr r0, _0801784C @ =gUnk_03002920
	mov r7, sl
	lsls r1, r7, #3
	subs r1, r1, r7
	lsls r1, r1, #2
	adds r6, r1, r0
	ldrb r5, [r6, #0xd]
	lsrs r1, r5, #6
	cmp r1, #1
	bne _080177FA
	movs r0, #0x3f
	ands r0, r5
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0xd]
_080177FA:
	ldr r0, _08017854 @ =gUnk_030034CC
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, _08017858 @ =gUnk_0300529C
	ldr r1, [r0]
	mov r2, sl
	lsls r2, r2, #3
	str r2, [sp, #0x40]
	mov ip, r0
	ldr r3, [sp, #0x28]
	cmp r3, r1
	bls _08017814
	b _08017DB8
_08017814:
	ldr r4, [sp, #0x28]
	lsls r1, r4, #3
	subs r0, r1, r4
	lsls r0, r0, #2
	ldr r5, _0801784C @ =gUnk_03002920
	adds r0, r0, r5
	ldrb r3, [r0, #0xf]
	adds r7, r1, #0
	cmp r3, #0x1a
	bls _0801782A
	b _08017DA6
_0801782A:
	cmp r3, #0x19
	bne _08017830
	b _08017DA6
_08017830:
	ldrb r0, [r0, #0x11]
	subs r0, #5
	cmp r0, #0x6b
	bls _0801783A
	b _08017DA6
_0801783A:
	lsls r0, r0, #2
	ldr r1, _0801785C @ =_08017860
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017844: .4byte gUnk_03004790
_08017848: .4byte gUnk_03003430
_0801784C: .4byte gUnk_03002920
_08017850: .4byte 0x0000FFFF
_08017854: .4byte gUnk_030034CC
_08017858: .4byte gUnk_0300529C
_0801785C: .4byte _08017860
_08017860: @ jump table
	.4byte _08017BE4 @ case 0
	.4byte _08017DA6 @ case 1
	.4byte _08017DA6 @ case 2
	.4byte _08017DA6 @ case 3
	.4byte _08017DA6 @ case 4
	.4byte _08017DA6 @ case 5
	.4byte _08017DA6 @ case 6
	.4byte _08017DA6 @ case 7
	.4byte _08017DA6 @ case 8
	.4byte _08017DA6 @ case 9
	.4byte _08017DA6 @ case 10
	.4byte _08017DA6 @ case 11
	.4byte _08017DA6 @ case 12
	.4byte _08017DA6 @ case 13
	.4byte _08017DA6 @ case 14
	.4byte _08017DA6 @ case 15
	.4byte _08017DA6 @ case 16
	.4byte _08017DA6 @ case 17
	.4byte _08017DA6 @ case 18
	.4byte _08017DA6 @ case 19
	.4byte _08017DA6 @ case 20
	.4byte _08017DA6 @ case 21
	.4byte _08017DA6 @ case 22
	.4byte _08017DA6 @ case 23
	.4byte _08017DA6 @ case 24
	.4byte _08017D44 @ case 25
	.4byte _08017DA6 @ case 26
	.4byte _08017DA6 @ case 27
	.4byte _08017DA6 @ case 28
	.4byte _08017DA6 @ case 29
	.4byte _08017DA6 @ case 30
	.4byte _08017DA6 @ case 31
	.4byte _08017A10 @ case 32
	.4byte _08017DA6 @ case 33
	.4byte _08017DA6 @ case 34
	.4byte _08017DA6 @ case 35
	.4byte _08017DA6 @ case 36
	.4byte _08017DA6 @ case 37
	.4byte _08017DA6 @ case 38
	.4byte _08017DA6 @ case 39
	.4byte _08017DA6 @ case 40
	.4byte _08017DA6 @ case 41
	.4byte _08017DA6 @ case 42
	.4byte _08017DA6 @ case 43
	.4byte _08017DA6 @ case 44
	.4byte _08017DA6 @ case 45
	.4byte _08017DA6 @ case 46
	.4byte _08017DA6 @ case 47
	.4byte _08017CF0 @ case 48
	.4byte _08017DA6 @ case 49
	.4byte _08017DA6 @ case 50
	.4byte _08017CA4 @ case 51
	.4byte _08017DA6 @ case 52
	.4byte _08017DA6 @ case 53
	.4byte _08017C14 @ case 54
	.4byte _08017BB4 @ case 55
	.4byte _08017DA6 @ case 56
	.4byte _08017DA6 @ case 57
	.4byte _08017C5C @ case 58
	.4byte _08017DA6 @ case 59
	.4byte _08017B48 @ case 60
	.4byte _08017DA6 @ case 61
	.4byte _08017DA6 @ case 62
	.4byte _08017DA6 @ case 63
	.4byte _08017DA6 @ case 64
	.4byte _08017DA6 @ case 65
	.4byte _08017DA6 @ case 66
	.4byte _08017DA6 @ case 67
	.4byte _08017DA6 @ case 68
	.4byte _08017DA6 @ case 69
	.4byte _08017DA6 @ case 70
	.4byte _08017DA6 @ case 71
	.4byte _08017DA6 @ case 72
	.4byte _08017DA6 @ case 73
	.4byte _08017DA6 @ case 74
	.4byte _08017DA6 @ case 75
	.4byte _08017DA6 @ case 76
	.4byte _08017DA6 @ case 77
	.4byte _08017DA6 @ case 78
	.4byte _08017DA6 @ case 79
	.4byte _08017DA6 @ case 80
	.4byte _08017DA6 @ case 81
	.4byte _08017DA6 @ case 82
	.4byte _08017DA6 @ case 83
	.4byte _08017DA6 @ case 84
	.4byte _08017DA6 @ case 85
	.4byte _08017DA6 @ case 86
	.4byte _08017DA6 @ case 87
	.4byte _08017DA6 @ case 88
	.4byte _08017DA6 @ case 89
	.4byte _08017DA6 @ case 90
	.4byte _08017DA6 @ case 91
	.4byte _08017DA6 @ case 92
	.4byte _08017DA6 @ case 93
	.4byte _08017DA6 @ case 94
	.4byte _08017DA6 @ case 95
	.4byte _08017DA6 @ case 96
	.4byte _08017DA6 @ case 97
	.4byte _08017DA6 @ case 98
	.4byte _08017DA6 @ case 99
	.4byte _08017DA6 @ case 100
	.4byte _08017DA6 @ case 101
	.4byte _08017DA6 @ case 102
	.4byte _08017DA6 @ case 103
	.4byte _08017DA6 @ case 104
	.4byte _08017DA6 @ case 105
	.4byte _08017A10 @ case 106
	.4byte _08017CF0 @ case 107
_08017A10:
	ldr r6, [sp, #0x40]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	ldr r2, _08017AB8 @ =gUnk_03002920
	adds r5, r0, r2
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	ldr r4, [sp, #0x28]
	subs r0, r7, r4
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrh r2, [r4]
	adds r6, r2, #7
	mov r8, r6
	cmp r1, r8
	bge _08017AD8
	adds r0, r3, #0
	adds r0, #0xc
	subs r6, #0x16
	cmp r0, r6
	ble _08017AD8
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r4, #2]
	cmp r0, r2
	bge _08017AD8
	adds r3, r2, #0
	subs r3, #0x17
	cmp r1, r3
	ble _08017AD8
	ldrb r0, [r5, #0x11]
	cmp r0, #6
	beq _08017A7E
	cmp r0, #8
	beq _08017A90
	ldr r0, [sp, #0x2c]
	subs r0, #0xc
	cmp r0, r8
	bge _08017A7E
	ldr r0, [sp, #0x2c]
	adds r0, #0xc
	cmp r0, r6
	ble _08017A7E
	ldr r0, [sp, #0x30]
	subs r0, #0x18
	cmp r0, r2
	bge _08017A7E
	ldr r0, [sp, #0x30]
	cmp r0, r3
	ble _08017A7E
	bl sub_0801AF88
_08017A7E:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08017AB8 @ =gUnk_03002920
	adds r0, r0, r3
	ldrb r0, [r0, #0x11]
	cmp r0, #8
	bne _08017AD0
_08017A90:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08017AB8 @ =gUnk_03002920
	adds r1, r0, r6
	ldrb r0, [r1, #0xc]
	lsrs r0, r0, #4
	cmp r0, #1
	bne _08017ABC
	ldrh r0, [r1, #2]
	ldr r2, [sp, #0x28]
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r1, [r1, #2]
	subs r1, #0x16
	cmp r0, r1
	bgt _08017AD8
	b _08017AD0
	.align 2, 0
_08017AB8: .4byte gUnk_03002920
_08017ABC:
	ldrh r1, [r1, #2]
	subs r1, #0x16
	ldr r3, [sp, #0x28]
	subs r0, r7, r3
	lsls r0, r0, #2
	ldr r4, _08017B40 @ =gUnk_03002920
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	cmp r1, r0
	blt _08017AD8
_08017AD0:
	ldr r0, _08017B44 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
_08017AD8:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r1, _08017B40 @ =gUnk_03002920
	adds r5, r0, r1
	ldrb r0, [r5, #0x11]
	cmp r0, #6
	beq _08017AF0
	cmp r0, #8
	beq _08017AF0
	b _08017DA6
_08017AF0:
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r3, _08017B40 @ =gUnk_03002920
	adds r2, r0, r3
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq _08017B02
	b _08017DA6
_08017B02:
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #0xb
	ldrh r3, [r2]
	adds r0, r3, #7
	cmp r1, r0
	blt _08017B12
	b _08017DA6
_08017B12:
	adds r1, #0x16
	subs r0, #0x16
	cmp r1, r0
	bgt _08017B1C
	b _08017DA6
_08017B1C:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08017B2A
	b _08017DA6
_08017B2A:
	adds r0, #4
	cmp r0, r1
	bgt _08017B32
	b _08017DA6
_08017B32:
	ldrb r0, [r5, #0xd]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r5, #0xd]
	b _08017DA6
	.align 2, 0
_08017B40: .4byte gUnk_03002920
_08017B44: .4byte gUnk_03004654
_08017B48:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08017BA8 @ =gUnk_03002920
	adds r5, r0, r6
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x10
	cmp r1, r0
	blt _08017B6E
	b _08017DA6
_08017B6E:
	adds r1, #0x10
	subs r0, #0x20
	cmp r1, r0
	bgt _08017B78
	b _08017DA6
_08017B78:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08017B86
	b _08017DA6
_08017B86:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	bgt _08017B90
	b _08017DA6
_08017B90:
	ldr r1, _08017BAC @ =gUnk_03000830
	ldr r0, _08017BB0 @ =gUnk_0300363C
	ldrb r0, [r0]
	ldr r3, [sp, #0x28]
	subs r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017BA6
	b _08017DA6
_08017BA6:
	b _08017D30
	.align 2, 0
_08017BA8: .4byte gUnk_03002920
_08017BAC: .4byte gUnk_03000830
_08017BB0: .4byte gUnk_0300363C
_08017BB4:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08017BE0 @ =gUnk_03002920
	adds r5, r0, r6
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #8
	cmp r1, r0
	blt _08017BDA
	b _08017DA6
_08017BDA:
	adds r1, #0x10
	subs r0, #0x10
	b _08017D18
	.align 2, 0
_08017BE0: .4byte gUnk_03002920
_08017BE4:
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r6, _08017C10 @ =gUnk_03002920
	adds r5, r0, r6
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x10
	cmp r1, r0
	blt _08017C0A
	b _08017DA6
_08017C0A:
	adds r1, #0x10
	subs r0, #0x20
	b _08017D18
	.align 2, 0
_08017C10: .4byte gUnk_03002920
_08017C14:
	ldr r3, [sp, #0x28]
	subs r0, r7, r3
	lsls r0, r0, #2
	ldr r4, _08017C58 @ =gUnk_03002920
	adds r2, r0, r4
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	movs r5, #0
	mov sb, r5
	cmp r0, #1
	bne _08017C30
	movs r6, #8
	mov sb, r6
_08017C30:
	ldr r7, [sp, #0x40]
	mov r1, sl
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r3, _08017C58 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #8
	ldrh r4, [r2]
	mov r6, sb
	adds r0, r4, r6
	cmp r1, r0
	blt _08017C4E
	b _08017DA6
_08017C4E:
	adds r1, #0x10
	mov r0, sb
	subs r0, #8
	adds r0, r4, r0
	b _08017D18
	.align 2, 0
_08017C58: .4byte gUnk_03002920
_08017C5C:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08017CA0 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xc
	cmp r1, r0
	blt _08017C82
	b _08017DA6
_08017C82:
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	bgt _08017C8C
	b _08017DA6
_08017C8C:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08017C9A
	b _08017DA6
_08017C9A:
	adds r0, r1, #0
	subs r0, #0x18
	b _08017D2C
	.align 2, 0
_08017CA0: .4byte gUnk_03002920
_08017CA4:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08017CEC @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	cmp r1, r0
	bge _08017DA6
	adds r1, #0x10
	subs r0, #0x40
	cmp r1, r0
	ble _08017DA6
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _08017DA6
	adds r0, r1, #0
	subs r0, #0x16
	cmp r3, r0
	ble _08017DA6
	adds r0, r4, #0
	adds r1, r3, #0
	bl _0801AFB8
	.align 2, 0
_08017CEC: .4byte gUnk_03002920
_08017CF0:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08017D3C @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xf
	cmp r1, r0
	bge _08017DA6
	adds r1, #0x10
	subs r0, #0x1e
_08017D18:
	cmp r1, r0
	ble _08017DA6
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _08017DA6
	adds r0, r1, #0
	subs r0, #0x20
_08017D2C:
	cmp r3, r0
	ble _08017DA6
_08017D30:
	ldr r0, _08017D40 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	b _08017DA6
	.align 2, 0
_08017D3C: .4byte gUnk_03002920
_08017D40: .4byte gUnk_03004654
_08017D44:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08017E08 @ =gUnk_03002920
	adds r4, r0, r3
	ldrh r5, [r4]
	subs r1, r5, #4
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x1e
	cmp r1, r0
	bge _08017DA6
	adds r1, r5, #4
	subs r0, #0x3c
	cmp r1, r0
	ble _08017DA6
	ldrb r1, [r2, #0xf]
	cmp r1, #0
	bne _08017DA6
	movs r0, #0x1c
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x10]
	mov r0, sl
	adds r0, #3
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r7, _08017E08 @ =gUnk_03002920
	adds r1, r1, r7
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrb r0, [r4, #0xc]
	movs r2, #0xc
	ands r2, r0
	ldrb r3, [r1, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xc]
	movs r0, #0x11
	strb r0, [r1, #0xf]
_08017DA6:
	ldr r0, [sp, #0x28]
	adds r0, #1
	str r0, [sp, #0x28]
	mov r1, ip
	ldr r0, [r1]
	ldr r2, [sp, #0x28]
	cmp r2, r0
	bhi _08017DB8
	b _08017814
_08017DB8:
	ldr r0, _08017E0C @ =gUnk_03004654
	ldr r2, [r0]
	ldrb r1, [r2, #0x1a]
	mov ip, r0
	ldr r3, [sp, #0x34]
	cmp r1, r3
	bls _08017DE0
	ldrb r0, [r2, #1]
	cmp r0, r3
	bls _08017DCE
	b _08017F78
_08017DCE:
	ldrb r0, [r2, #0x14]
	cmp r0, r3
	bhs _08017DD6
	b _08017F78
_08017DD6:
	ldr r0, _08017E10 @ =gUnk_03004C20
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _08017DE0
	b _08017F78
_08017DE0:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08017E08 @ =gUnk_03002920
	adds r4, r0, r6
	ldrb r0, [r4, #0xf]
	cmp r0, #0x14
	bne _08017DF4
	b _08017FA4
_08017DF4:
	ldrb r0, [r4, #0x11]
	cmp r0, #0x76
	beq _08017DFE
	cmp r0, #0x7b
	bne _08017E14
_08017DFE:
	mov r7, sp
	ldrh r7, [r7, #0x2c]
	strh r7, [r4]
	b _08017E1E
	.align 2, 0
_08017E08: .4byte gUnk_03002920
_08017E0C: .4byte gUnk_03004654
_08017E10: .4byte gUnk_03004C20
_08017E14:
	cmp r0, #0xb
	bne _08017E34
	mov r0, sp
	ldrh r0, [r0, #0x2c]
	strh r0, [r4]
_08017E1E:
	ldrb r2, [r4, #0xc]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	b _08017FA4
_08017E34:
	cmp r0, #0x77
	beq _08017E40
	cmp r0, #6
	beq _08017E40
	cmp r0, #0x7c
	bne _08017EE6
_08017E40:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08017EA8 @ =gUnk_03002920
	adds r5, r0, r3
	ldrb r6, [r5, #9]
	ldr r4, _08017EAC @ =gUnk_080E2B64
	ldr r3, _08017EB0 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r2, _08017EB4 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r2, _08017EB8 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r1, [r1, #4]
	subs r0, r1, #1
	cmp r6, r0
	blt _08017E80
	b _08017FA4
_08017E80:
	subs r0, r1, r6
	subs r1, r0, #1
	strb r1, [r5, #9]
	ldrb r0, [r5, #0x11]
	cmp r0, #6
	bne _08017EBC
	ldrb r2, [r5, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0xc]
	mov r4, sp
	ldrh r4, [r4, #0x2c]
	strh r4, [r5]
	b _08017FA4
	.align 2, 0
_08017EA8: .4byte gUnk_03002920
_08017EAC: .4byte gUnk_080E2B64
_08017EB0: .4byte gUnk_03004C20
_08017EB4: .4byte 0x00001130
_08017EB8: .4byte 0x00008980
_08017EBC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08017EE0
	ldrb r2, [r5, #0xc]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0xc]
	mov r6, sp
	ldrh r6, [r6, #0x2c]
	strh r6, [r5]
	b _08017FA4
_08017EE0:
	strb r6, [r5, #9]
	bl _0801B02E
_08017EE6:
	ldrb r3, [r4, #9]
	ldr r7, _08017F68 @ =gUnk_080E2B64
	mov sb, r7
	ldr r5, _08017F6C @ =gUnk_03004C20
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r2, sl
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r2, _08017F70 @ =0x00001130
	mov r8, r2
	mov r7, r8
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	ldr r7, _08017F74 @ =0x00008980
	muls r0, r7, r0
	adds r1, r1, r0
	add r1, sb
	ldrb r0, [r1, #4]
	subs r0, #1
	cmp r3, r0
	bge _08017FA4
	mov r0, sp
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #2]
	ldrb r2, [r4, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r5, #0xc]
	subs r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	muls r0, r7, r0
	adds r1, r1, r0
	add r1, sb
	ldrb r0, [r4, #9]
	mvns r0, r0
	ldrb r1, [r1, #4]
	adds r0, r0, r1
	strb r0, [r4, #9]
	b _08017FA4
	.align 2, 0
_08017F68: .4byte gUnk_080E2B64
_08017F6C: .4byte gUnk_03004C20
_08017F70: .4byte 0x00001130
_08017F74: .4byte 0x00008980
_08017F78:
	mov r3, ip
	ldr r1, [r3]
	ldrb r0, [r1, #0x18]
	ldr r4, [sp, #0x34]
	cmp r0, r4
	beq _08017F8A
	ldrb r0, [r1, #0x19]
	cmp r0, r4
	bne _08017FA4
_08017F8A:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r1, r5, r6
	lsls r1, r1, #2
	ldr r7, _08017FA0 @ =gUnk_03002920
	adds r1, r1, r7
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl _0801AFB8
	.align 2, 0
_08017FA0: .4byte gUnk_03002920
_08017FA4:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08017FF0 @ =gUnk_03002920
	adds r1, r0, r3
	ldrb r0, [r1, #0x11]
	cmp r0, #0x76
	beq _08017FCC
	cmp r0, #0x7b
	beq _08017FCC
	ldrb r0, [r1, #0xf]
	cmp r0, #0x14
	beq _08017FCC
	ldrb r0, [r1, #0xd]
	lsrs r0, r0, #6
	cmp r0, #0
	bne _08017FCC
	bl _0801B02E
_08017FCC:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08017FF0 @ =gUnk_03002920
	adds r4, r0, r6
	ldrb r0, [r4, #0xd]
	lsrs r1, r0, #6
	cmp r1, #1
	bne _08017FF8
	ldr r0, _08017FF4 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	ands r0, r1
	cmp r0, #0
	beq _08018096
	ldrh r0, [r4, #2]
	adds r0, #1
	b _08018094
	.align 2, 0
_08017FF0: .4byte gUnk_03002920
_08017FF4: .4byte gUnk_03004C20
_08017FF8:
	cmp r1, #2
	bne _08018090
	ldr r5, _08018080 @ =gUnk_03004C20
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08018096
	ldrh r2, [r4, #2]
	subs r2, #1
	strh r2, [r4, #2]
	ldr r7, _08018084 @ =gUnk_080E2B64
	mov r8, r7
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r3, sl
	subs r3, #0xd
	movs r0, #0x2c
	muls r3, r0, r3
	adds r1, r1, r3
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r7, _08018088 @ =0x00001130
	muls r0, r7, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	ldr r6, _0801808C @ =0x00008980
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrh r0, [r1, #2]
	cmp r2, r0
	bhi _08018096
	ldrb r0, [r4, #0x11]
	cmp r0, #8
	bne _08018074
	ldrb r0, [r1, #4]
	strb r0, [r4, #9]
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r0, [r5, #0xc]
	subs r0, #1
	muls r0, r7, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r8
	ldrb r1, [r1, #5]
	lsls r1, r1, #4
	ldrb r2, [r4, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
_08018074:
	ldrb r1, [r4, #0xd]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r4, #0xd]
	b _08018096
	.align 2, 0
_08018080: .4byte gUnk_03004C20
_08018084: .4byte gUnk_080E2B64
_08018088: .4byte 0x00001130
_0801808C: .4byte 0x00008980
_08018090:
	ldrh r0, [r4, #2]
	adds r0, #2
_08018094:
	strh r0, [r4, #2]
_08018096:
	ldr r3, _08018138 @ =gUnk_03004790
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _0801813C @ =gUnk_03002920
	adds r0, r0, r4
	ldrh r4, [r0]
	adds r1, r4, #0
	adds r1, #0xa
	asrs r1, r1, #3
	ldrh r2, [r0, #2]
	subs r2, #2
	asrs r2, r2, #3
	ldr r0, _08018140 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r3, [r3, #0x14]
	adds r1, r1, r2
	adds r1, r3, r1
	ldrb r1, [r1]
	str r1, [sp, #0x34]
	lsrs r0, r4, #3
	adds r0, r0, r2
	adds r0, r3, r0
	add r5, sp, #0x34
	ldrb r1, [r5]
	ldrb r0, [r0]
	ldr r6, [sp, #0x34]
	cmp r6, r0
	bhs _080180D8
	adds r1, r0, #0
_080180D8:
	str r1, [sp, #0x34]
	adds r0, r4, #0
	subs r0, #0xb
	asrs r0, r0, #3
	adds r0, r0, r2
	adds r0, r3, r0
	add r7, sp, #0x34
	ldrb r1, [r7]
	ldrb r0, [r0]
	ldr r2, [sp, #0x34]
	cmp r2, r0
	bhs _080180F2
	adds r1, r0, #0
_080180F2:
	str r1, [sp, #0x34]
	ldr r0, _08018144 @ =gUnk_03000804
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, _08018148 @ =gUnk_0300082C
	ldr r1, [r0]
	adds r6, r0, #0
	ldr r3, [sp, #0x28]
	cmp r3, r1
	bls _08018108
	b _08018510
_08018108:
	ldr r4, [sp, #0x28]
	lsls r1, r4, #3
	subs r0, r1, r4
	lsls r0, r0, #2
	ldr r5, _0801813C @ =gUnk_03002920
	adds r0, r0, r5
	ldrb r3, [r0, #0xf]
	adds r7, r1, #0
	cmp r3, #0x1a
	bls _0801811E
	b _08018502
_0801811E:
	cmp r3, #0x19
	bne _08018124
	b _08018502
_08018124:
	ldrb r0, [r0, #0x11]
	subs r0, #0x25
	cmp r0, #0x4b
	bls _0801812E
	b _08018502
_0801812E:
	lsls r0, r0, #2
	ldr r1, _0801814C @ =_08018150
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018138: .4byte gUnk_03004790
_0801813C: .4byte gUnk_03002920
_08018140: .4byte gUnk_03003430
_08018144: .4byte gUnk_03000804
_08018148: .4byte gUnk_0300082C
_0801814C: .4byte _08018150
_08018150: @ jump table
	.4byte _08018280 @ case 0
	.4byte _08018502 @ case 1
	.4byte _080183AC @ case 2
	.4byte _080183AC @ case 3
	.4byte _08018502 @ case 4
	.4byte _08018502 @ case 5
	.4byte _08018502 @ case 6
	.4byte _08018502 @ case 7
	.4byte _08018502 @ case 8
	.4byte _08018502 @ case 9
	.4byte _08018502 @ case 10
	.4byte _08018502 @ case 11
	.4byte _08018502 @ case 12
	.4byte _08018502 @ case 13
	.4byte _08018502 @ case 14
	.4byte _08018502 @ case 15
	.4byte _08018454 @ case 16
	.4byte _08018502 @ case 17
	.4byte _08018502 @ case 18
	.4byte _08018408 @ case 19
	.4byte _08018502 @ case 20
	.4byte _08018502 @ case 21
	.4byte _08018502 @ case 22
	.4byte _08018502 @ case 23
	.4byte _08018502 @ case 24
	.4byte _080184A0 @ case 25
	.4byte _08018358 @ case 26
	.4byte _08018502 @ case 27
	.4byte _080182E4 @ case 28
	.4byte _08018502 @ case 29
	.4byte _08018502 @ case 30
	.4byte _08018502 @ case 31
	.4byte _08018502 @ case 32
	.4byte _08018502 @ case 33
	.4byte _08018502 @ case 34
	.4byte _08018502 @ case 35
	.4byte _08018502 @ case 36
	.4byte _08018502 @ case 37
	.4byte _08018502 @ case 38
	.4byte _08018502 @ case 39
	.4byte _08018502 @ case 40
	.4byte _08018502 @ case 41
	.4byte _08018502 @ case 42
	.4byte _08018502 @ case 43
	.4byte _08018502 @ case 44
	.4byte _08018502 @ case 45
	.4byte _08018502 @ case 46
	.4byte _08018502 @ case 47
	.4byte _08018502 @ case 48
	.4byte _08018502 @ case 49
	.4byte _08018502 @ case 50
	.4byte _08018502 @ case 51
	.4byte _08018502 @ case 52
	.4byte _08018502 @ case 53
	.4byte _08018502 @ case 54
	.4byte _08018502 @ case 55
	.4byte _08018502 @ case 56
	.4byte _08018502 @ case 57
	.4byte _08018502 @ case 58
	.4byte _08018502 @ case 59
	.4byte _08018502 @ case 60
	.4byte _08018502 @ case 61
	.4byte _08018502 @ case 62
	.4byte _08018502 @ case 63
	.4byte _08018502 @ case 64
	.4byte _08018502 @ case 65
	.4byte _08018502 @ case 66
	.4byte _08018502 @ case 67
	.4byte _08018502 @ case 68
	.4byte _08018502 @ case 69
	.4byte _08018502 @ case 70
	.4byte _08018502 @ case 71
	.4byte _08018502 @ case 72
	.4byte _08018502 @ case 73
	.4byte _08018280 @ case 74
	.4byte _08018454 @ case 75
_08018280:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _080182E0 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #0xc
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #7
	cmp r1, r0
	blt _080182A4
	b _08018502
_080182A4:
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	bgt _080182AE
	b _08018502
_080182AE:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _080182BC
	b _08018502
_080182BC:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r3, r0
	bgt _080182C6
	b _08018502
_080182C6:
	ldrb r0, [r5, #0x11]
	cmp r0, #0x75
	bls _080182D0
	bl sub_0801AF90
_080182D0:
	adds r0, r1, #0
	subs r0, #0x17
	cmp r3, r0
	blt _080182DA
	b _08018502
_080182DA:
	subs r0, #2
	strh r0, [r5, #2]
	b _08018502
	.align 2, 0
_080182E0: .4byte gUnk_03002920
_080182E4:
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r1, _0801834C @ =gUnk_03002920
	adds r5, r0, r1
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r3, _0801834C @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x10
	cmp r1, r0
	blt _0801830C
	b _08018502
_0801830C:
	adds r1, #0x10
	subs r0, #0x20
	cmp r1, r0
	bgt _08018316
	b _08018502
_08018316:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08018324
	b _08018502
_08018324:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	bgt _0801832E
	b _08018502
_0801832E:
	ldr r1, _08018350 @ =gUnk_03000830
	ldr r0, _08018354 @ =gUnk_0300363C
	ldrb r0, [r0]
	ldr r4, [sp, #0x28]
	subs r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018344
	b _08018502
_08018344:
	mov r5, ip
	ldr r0, [r5]
	b _080184FE
	.align 2, 0
_0801834C: .4byte gUnk_03002920
_08018350: .4byte gUnk_03000830
_08018354: .4byte gUnk_0300363C
_08018358:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _080183A8 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xc
	cmp r1, r0
	blt _0801837E
	b _08018502
_0801837E:
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	bgt _08018388
	b _08018502
_08018388:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08018396
	b _08018502
_08018396:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r3, r0
	bgt _080183A0
	b _08018502
_080183A0:
	mov r3, ip
	ldr r0, [r3]
	b _080184FE
	.align 2, 0
_080183A8: .4byte gUnk_03002920
_080183AC:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r1, _08018400 @ =gUnk_03002920
	adds r5, r0, r1
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #0xf
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r3, _08018400 @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x10
	cmp r1, r0
	blt _080183D4
	b _08018502
_080183D4:
	adds r1, r4, #7
	subs r0, #0x20
	cmp r1, r0
	bgt _080183DE
	b _08018502
_080183DE:
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _080183EC
	b _08018502
_080183EC:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r3, r0
	bgt _080183F6
	b _08018502
_080183F6:
	ldr r4, _08018404 @ =0x0000FFF0
	adds r0, r1, r4
	strh r0, [r5, #2]
	b _08018502
	.align 2, 0
_08018400: .4byte gUnk_03002920
_08018404: .4byte 0x0000FFF0
_08018408:
	ldr r5, [sp, #0x40]
	mov r1, sl
	subs r0, r5, r1
	lsls r0, r0, #2
	ldr r2, _08018450 @ =gUnk_03002920
	adds r5, r0, r2
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r3, [sp, #0x28]
	subs r0, r7, r3
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	cmp r1, r0
	bge _08018502
	adds r1, #0x10
	subs r0, #0x40
	cmp r1, r0
	ble _08018502
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _08018502
	adds r0, r1, #0
	subs r0, #0x16
	cmp r3, r0
	ble _08018502
	mov r4, ip
	ldr r0, [r4]
	ldrb r0, [r0, #0x18]
	b _08018500
	.align 2, 0
_08018450: .4byte gUnk_03002920
_08018454:
	ldr r5, [sp, #0x40]
	mov r1, sl
	subs r0, r5, r1
	lsls r0, r0, #2
	ldr r2, _0801849C @ =gUnk_03002920
	adds r5, r0, r2
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r3, [sp, #0x28]
	subs r0, r7, r3
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xf
	cmp r1, r0
	bge _08018502
	adds r1, #0x10
	subs r0, #0x1e
	cmp r1, r0
	ble _08018502
	ldrh r3, [r5, #2]
	adds r0, r3, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _08018502
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	ble _08018502
	mov r4, ip
	ldr r0, [r4]
	b _080184FE
	.align 2, 0
_0801849C: .4byte gUnk_03002920
_080184A0:
	ldr r5, [sp, #0x40]
	mov r1, sl
	subs r0, r5, r1
	lsls r0, r0, #2
	ldr r2, _08018538 @ =gUnk_03002920
	adds r4, r0, r2
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #8
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r5, r0, r2
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0xc
	cmp r1, r0
	bge _08018502
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	ble _08018502
	ldrh r3, [r4, #2]
	adds r2, r3, #0
	subs r2, #0x14
	ldr r1, [sp, #0x28]
	adds r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _08018538 @ =gUnk_03002920
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	cmp r2, r0
	bge _08018502
	ldrh r1, [r5, #2]
	adds r0, r1, #0
	subs r0, #8
	cmp r3, r0
	ble _08018502
	ldrb r0, [r4, #0x11]
	cmp r0, #0x7a
	bls _080184FA
	bl sub_0801AF98
_080184FA:
	mov r1, ip
	ldr r0, [r1]
_080184FE:
	ldrb r0, [r0, #0x1b]
_08018500:
	str r0, [sp, #0x34]
_08018502:
	ldr r2, [sp, #0x28]
	adds r2, #1
	str r2, [sp, #0x28]
	ldr r0, [r6]
	cmp r2, r0
	bhi _08018510
	b _08018108
_08018510:
	mov r3, ip
	ldr r1, [r3]
	ldrb r0, [r1, #0x18]
	ldr r4, [sp, #0x34]
	cmp r0, r4
	beq _08018522
	ldrb r0, [r1, #0x19]
	cmp r0, r4
	bne _0801853C
_08018522:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r1, r5, r6
	lsls r1, r1, #2
	ldr r7, _08018538 @ =gUnk_03002920
	adds r1, r1, r7
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl _0801AFB8
	.align 2, 0
_08018538: .4byte gUnk_03002920
_0801853C:
	ldrb r0, [r1, #0x1a]
	ldr r1, [sp, #0x34]
	cmp r0, r1
	bls _08018548
	bl _0801B02E
_08018548:
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _0801856C @ =gUnk_03002920
	adds r2, r0, r4
	ldrb r0, [r2, #9]
	cmp r0, #1
	bne _0801855E
	movs r0, #2
	strb r0, [r2, #9]
_0801855E:
	ldr r0, [sp, #0x30]
	adds r0, #3
	ldr r1, _08018570 @ =0x0000FFF8
	ands r0, r1
	strh r0, [r2, #2]
	bl _0801B02E
	.align 2, 0
_0801856C: .4byte gUnk_03002920
_08018570: .4byte 0x0000FFF8
_08018574:
	ldr r2, _080185C4 @ =gUnk_03004C20
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	beq _0801857E
	b _08018754
_0801857E:
	mov r5, sl
	lsls r0, r5, #3
	subs r1, r0, r5
	lsls r1, r1, #2
	ldr r6, _080185C8 @ =gUnk_03002920
	adds r4, r1, r6
	ldrb r1, [r4, #0x11]
	str r0, [sp, #0x40]
	cmp r1, #0x7a
	bne _080185EC
	ldr r0, [r2, #4]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080185A2
	movs r0, #0x9e
	bl m4aSongNumStart
_080185A2:
	ldr r6, _080185CC @ =gUnk_03005220
	adds r1, r6, #0
	adds r1, #0x38
	ldrb r5, [r1]
	cmp r5, #0
	beq _080185D0
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080185EC
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl _0801A0F0
	.align 2, 0
_080185C4: .4byte gUnk_03004C20
_080185C8: .4byte gUnk_03002920
_080185CC: .4byte gUnk_03005220
_080185D0:
	adds r0, r6, #0
	adds r0, #0x3c
	strb r5, [r0]
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	movs r1, #0xe
	bl sub_08025B78
	movs r0, #0x87
	strb r0, [r4, #9]
	adds r0, r6, #0
	adds r0, #0x3d
	strb r5, [r0]
_080185EC:
	ldr r4, _080186AC @ =gUnk_03002920
	ldrh r0, [r4]
	ldr r7, [sp, #0x40]
	mov r2, sl
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r5, r1, r4
	ldrh r1, [r5]
	subs r0, r0, r1
	bl Abs
	cmp r0, #7
	ble _08018608
	b _0801874C
_08018608:
	ldrh r0, [r4]
	strh r0, [r5]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	bl Abs
	cmp r0, #0x18
	bgt _08018654
	ldr r4, _080186B0 @ =gUnk_03004790
	ldrh r3, [r5]
	adds r1, r3, #0
	adds r1, #0xa
	asrs r1, r1, #3
	ldrh r2, [r5, #2]
	subs r2, #0x1a
	asrs r2, r2, #3
	ldr r0, _080186B4 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r4, #0x14]
	adds r1, r1, r2
	adds r1, r0, r1
	ldrb r1, [r1]
	str r1, [sp, #0x34]
	subs r3, #0xb
	asrs r3, r3, #3
	adds r3, r3, r2
	adds r0, r0, r3
	add r3, sp, #0x34
	ldrb r1, [r3]
	ldrb r0, [r0]
	ldr r4, [sp, #0x34]
	cmp r4, r0
	bhs _08018652
	adds r1, r0, #0
_08018652:
	str r1, [sp, #0x34]
_08018654:
	ldr r0, _080186B8 @ =gUnk_03004654
	ldr r0, [r0]
	ldr r5, [sp, #0x34]
	ldrb r0, [r0, #0x1a]
	cmp r5, r0
	bhi _080186CC
	ldr r0, _080186BC @ =gUnk_03005420
	movs r6, #0
	ldrsh r0, [r0, r6]
	bl ReciprocalQ8
	ldr r2, _080186C0 @ =gUnk_03004680
	ldr r1, _080186C4 @ =gUnk_03005288
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r1, r1, r2
	strh r0, [r1, #6]
	ldr r5, _080186AC @ =gUnk_03002920
	ldrh r0, [r5, #2]
	ldr r7, [sp, #0x40]
	mov r2, sl
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r4, r1, r5
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	subs r0, #0x18
	bl Abs
	cmp r0, #7
	bgt _0801869A
	ldr r0, _080186C8 @ =gUnk_03005220
	adds r0, #0x43
	movs r1, #1
	strb r1, [r0]
_0801869A:
	ldrh r0, [r5, #2]
	ldrh r1, [r4, #2]
	adds r2, r1, #0
	adds r2, #0x18
	subs r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	strh r1, [r4, #2]
	b _080187DE
	.align 2, 0
_080186AC: .4byte gUnk_03002920
_080186B0: .4byte gUnk_03004790
_080186B4: .4byte gUnk_03003430
_080186B8: .4byte gUnk_03004654
_080186BC: .4byte gUnk_03005420
_080186C0: .4byte gUnk_03004680
_080186C4: .4byte gUnk_03005288
_080186C8: .4byte gUnk_03005220
_080186CC:
	ldr r2, _080186F0 @ =gUnk_03002920
	ldrh r0, [r2, #2]
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	subs r0, #0x18
	bl Abs
	cmp r0, #3
	bgt _080186F8
	ldr r0, _080186F4 @ =gUnk_03005220
	adds r0, #0x43
	movs r1, #1
	b _080186FE
	.align 2, 0
_080186F0: .4byte gUnk_03002920
_080186F4: .4byte gUnk_03005220
_080186F8:
	ldr r0, _08018738 @ =gUnk_03005220
	adds r0, #0x43
	movs r1, #2
_080186FE:
	strb r1, [r0]
	ldr r0, _0801873C @ =gUnk_03005420
	movs r5, #0
	ldrsh r0, [r0, r5]
	bl ReciprocalQ8
	adds r4, r0, #0
	ldr r2, _08018740 @ =gUnk_03002920
	ldrh r0, [r2, #2]
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r1, r6, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	subs r0, #0x18
	bl Abs
	ldr r2, _08018744 @ =gUnk_03004680
	ldr r1, _08018748 @ =gUnk_03005288
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r1, r1, r2
	lsls r0, r0, #4
	adds r4, r4, r0
	strh r4, [r1, #6]
	b _080187DE
	.align 2, 0
_08018738: .4byte gUnk_03005220
_0801873C: .4byte gUnk_03005420
_08018740: .4byte gUnk_03002920
_08018744: .4byte gUnk_03004680
_08018748: .4byte gUnk_03005288
_0801874C:
	ldrh r0, [r4]
	ldrh r1, [r5]
	subs r0, r0, r1
	b _080187D8
_08018754:
	ldr r1, _08018798 @ =gUnk_03002920
	ldrh r0, [r1]
	mov r2, sl
	lsls r4, r2, #3
	subs r1, r4, r2
	lsls r1, r1, #2
	ldr r3, _08018798 @ =gUnk_03002920
	adds r5, r1, r3
	ldrh r1, [r5]
	adds r1, #0x14
	subs r0, r0, r1
	bl Abs
	str r4, [sp, #0x40]
	cmp r0, #9
	bgt _080187CC
	ldr r0, _0801879C @ =gUnk_030034FC
	ldr r2, [r0]
	ldrh r1, [r2]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
	ldr r4, _08018798 @ =gUnk_03002920
	ldrh r0, [r4, #2]
	adds r6, r0, #0
	adds r6, #0x10
	ldrh r7, [r5, #2]
	cmp r6, r7
	bge _080187A0
	strh r6, [r5, #2]
	b _080187A8
	.align 2, 0
_08018798: .4byte gUnk_03002920
_0801879C: .4byte gUnk_030034FC
_080187A0:
	subs r0, #0x10
	cmp r0, r7
	ble _080187A8
	strh r0, [r5, #2]
_080187A8:
	ldr r0, _080187C4 @ =gUnk_03002920
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r1, r5, r6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r0]
	subs r0, #0x14
	strh r0, [r1]
	ldr r0, _080187C8 @ =gUnk_03005220
	adds r0, #0x43
	movs r1, #1
	strb r1, [r0]
	b _080187DE
	.align 2, 0
_080187C4: .4byte gUnk_03002920
_080187C8: .4byte gUnk_03005220
_080187CC:
	ldr r7, _08018824 @ =gUnk_03002920
	ldrh r0, [r7]
	ldrh r1, [r5]
	adds r2, r1, #0
	adds r2, #0x14
	subs r0, r0, r2
_080187D8:
	asrs r0, r0, #2
	adds r1, r1, r0
	strh r1, [r5]
_080187DE:
	ldr r0, _08018828 @ =gUnk_030047B4
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, _0801882C @ =gUnk_03003640
	ldr r0, [r0]
	ldr r1, [sp, #0x28]
	cmp r1, r0
	bls _080187F2
	bl _0801B02E
_080187F2:
	ldr r0, _08018824 @ =gUnk_03002920
	ldr r3, [sp, #0x28]
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r5, [r1, #0xf]
	adds r7, r2, #0
	cmp r5, #0x1a
	bls _08018808
	b _08018D34
_08018808:
	cmp r5, #0x19
	bne _0801880E
	b _08018D34
_0801880E:
	ldrb r0, [r1, #0x11]
	subs r0, #6
	cmp r0, #0x77
	bls _08018818
	b _08018D34
_08018818:
	lsls r0, r0, #2
	ldr r1, _08018830 @ =_08018834
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018824: .4byte gUnk_03002920
_08018828: .4byte gUnk_030047B4
_0801882C: .4byte gUnk_03003640
_08018830: .4byte _08018834
_08018834: @ jump table
	.4byte _08018A80 @ case 0
	.4byte _08018D34 @ case 1
	.4byte _08018A80 @ case 2
	.4byte _08018D34 @ case 3
	.4byte _08018D34 @ case 4
	.4byte _08018A80 @ case 5
	.4byte _08018D34 @ case 6
	.4byte _08018D34 @ case 7
	.4byte _08018D34 @ case 8
	.4byte _08018D34 @ case 9
	.4byte _08018D34 @ case 10
	.4byte _08018D34 @ case 11
	.4byte _08018D34 @ case 12
	.4byte _08018D34 @ case 13
	.4byte _08018D34 @ case 14
	.4byte _08018D34 @ case 15
	.4byte _08018D34 @ case 16
	.4byte _08018D34 @ case 17
	.4byte _08018BF8 @ case 18
	.4byte _08018D34 @ case 19
	.4byte _08018D34 @ case 20
	.4byte _08018D34 @ case 21
	.4byte _08018D34 @ case 22
	.4byte _08018D34 @ case 23
	.4byte _08018D34 @ case 24
	.4byte _08018D34 @ case 25
	.4byte _08018D34 @ case 26
	.4byte _08018D34 @ case 27
	.4byte _08018D34 @ case 28
	.4byte _08018D34 @ case 29
	.4byte _08018D34 @ case 30
	.4byte _08018A14 @ case 31
	.4byte _08018D34 @ case 32
	.4byte _08018AF0 @ case 33
	.4byte _08018D34 @ case 34
	.4byte _08018AF0 @ case 35
	.4byte _08018AF0 @ case 36
	.4byte _08018AF0 @ case 37
	.4byte _08018D34 @ case 38
	.4byte _08018D34 @ case 39
	.4byte _08018D34 @ case 40
	.4byte _08018D34 @ case 41
	.4byte _08018D34 @ case 42
	.4byte _08018D34 @ case 43
	.4byte _08018D34 @ case 44
	.4byte _08018D34 @ case 45
	.4byte _08018D34 @ case 46
	.4byte _08018B48 @ case 47
	.4byte _08018D34 @ case 48
	.4byte _08018D34 @ case 49
	.4byte _08018D34 @ case 50
	.4byte _08018D34 @ case 51
	.4byte _08018D34 @ case 52
	.4byte _08018D34 @ case 53
	.4byte _08018D34 @ case 54
	.4byte _08018D34 @ case 55
	.4byte _08018D34 @ case 56
	.4byte _08018BDC @ case 57
	.4byte _08018D34 @ case 58
	.4byte _08018D34 @ case 59
	.4byte _08018D34 @ case 60
	.4byte _08018D34 @ case 61
	.4byte _08018D34 @ case 62
	.4byte _08018D34 @ case 63
	.4byte _08018D34 @ case 64
	.4byte _08018D34 @ case 65
	.4byte _08018D34 @ case 66
	.4byte _08018D34 @ case 67
	.4byte _08018D34 @ case 68
	.4byte _08018D34 @ case 69
	.4byte _08018D34 @ case 70
	.4byte _08018D34 @ case 71
	.4byte _08018D34 @ case 72
	.4byte _08018D34 @ case 73
	.4byte _08018D34 @ case 74
	.4byte _08018D34 @ case 75
	.4byte _08018D34 @ case 76
	.4byte _08018D34 @ case 77
	.4byte _08018D34 @ case 78
	.4byte _08018D34 @ case 79
	.4byte _08018D34 @ case 80
	.4byte _08018D34 @ case 81
	.4byte _08018D34 @ case 82
	.4byte _08018D34 @ case 83
	.4byte _08018D34 @ case 84
	.4byte _08018D34 @ case 85
	.4byte _08018D34 @ case 86
	.4byte _08018D34 @ case 87
	.4byte _08018D34 @ case 88
	.4byte _08018D34 @ case 89
	.4byte _08018D34 @ case 90
	.4byte _08018D34 @ case 91
	.4byte _08018D34 @ case 92
	.4byte _08018D34 @ case 93
	.4byte _08018D34 @ case 94
	.4byte _08018D34 @ case 95
	.4byte _08018D34 @ case 96
	.4byte _08018D34 @ case 97
	.4byte _08018D34 @ case 98
	.4byte _08018D34 @ case 99
	.4byte _08018D34 @ case 100
	.4byte _08018D34 @ case 101
	.4byte _08018D34 @ case 102
	.4byte _08018D34 @ case 103
	.4byte _08018D34 @ case 104
	.4byte _08018A14 @ case 105
	.4byte _08018B48 @ case 106
	.4byte _08018D34 @ case 107
	.4byte _08018D34 @ case 108
	.4byte _08018D34 @ case 109
	.4byte _08018D34 @ case 110
	.4byte _08018D34 @ case 111
	.4byte _08018A80 @ case 112
	.4byte _08018A80 @ case 113
	.4byte _08018A80 @ case 114
	.4byte _08018A80 @ case 115
	.4byte _08018A80 @ case 116
	.4byte _08018A80 @ case 117
	.4byte _08018A80 @ case 118
	.4byte _08018A80 @ case 119
_08018A14:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08018A78 @ =gUnk_03002920
	adds r5, r0, r6
	ldrh r0, [r6, #2]
	ldrh r1, [r5, #2]
	cmp r0, r1
	bhs _08018A2A
	b _08018D34
_08018A2A:
	ldrh r3, [r5]
	adds r0, r3, #0
	subs r0, #0xc
	ldr r2, [sp, #0x28]
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r4, r1, r6
	ldrh r2, [r4]
	adds r1, r2, #7
	cmp r0, r1
	blt _08018A42
	b _08018D34
_08018A42:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	bgt _08018A50
	b _08018D34
_08018A50:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x14
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08018A5E
	b _08018D34
_08018A5E:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	bgt _08018A68
	b _08018D34
_08018A68:
	ldr r0, _08018A7C @ =gUnk_03005220
	adds r0, #0x43
	movs r1, #2
	strb r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, #0x14
	b _08018BAA
	.align 2, 0
_08018A78: .4byte gUnk_03002920
_08018A7C: .4byte gUnk_03005220
_08018A80:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08018AEC @ =gUnk_03002920
	adds r5, r0, r6
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r4, r0, r6
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	blt _08018AA6
	b _08018D34
_08018AA6:
	adds r1, #0x10
	subs r0, #0x10
	cmp r1, r0
	bgt _08018AB0
	b _08018D34
_08018AB0:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x14
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08018ABE
	b _08018D34
_08018ABE:
	adds r0, r1, #0
	subs r0, #0x14
	cmp r2, r0
	bgt _08018AC8
	b _08018D34
_08018AC8:
	ldr r3, [sp, #0x28]
	cmp sl, r3
	bne _08018AD0
	b _08018D34
_08018AD0:
	movs r0, #0x2b
	bl m4aSongNumStart
	ldrb r0, [r4, #0x11]
	cmp r0, #6
	bne _08018AE0
	bl _0801AFB4
_08018AE0:
	cmp r0, #8
	beq _08018AE8
	bl sub_0801AFA4
_08018AE8:
	bl _0801AFB4
	.align 2, 0
_08018AEC: .4byte gUnk_03002920
_08018AF0:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08018B44 @ =gUnk_03002920
	adds r5, r0, r6
	ldrh r0, [r6, #2]
	ldrh r1, [r5, #2]
	cmp r0, r1
	bhs _08018B06
	b _08018D34
_08018B06:
	ldrh r3, [r5]
	adds r0, r3, #0
	subs r0, #0xb
	ldr r2, [sp, #0x28]
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r4, r1, r6
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0x10
	cmp r0, r1
	blt _08018B20
	b _08018D34
_08018B20:
	adds r1, r3, #0
	adds r1, #0xb
	adds r0, r2, #0
	subs r0, #0x10
	cmp r1, r0
	bgt _08018B2E
	b _08018D34
_08018B2E:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08018B3C
	b _08018D34
_08018B3C:
	adds r0, r1, #0
	subs r0, #0x10
	b _08018B98
	.align 2, 0
_08018B44: .4byte gUnk_03002920
_08018B48:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08018BCC @ =gUnk_03002920
	adds r5, r0, r6
	ldrh r0, [r6, #2]
	ldrh r1, [r5, #2]
	cmp r0, r1
	bhs _08018B5E
	b _08018D34
_08018B5E:
	ldrh r3, [r5]
	adds r0, r3, #0
	subs r0, #0xc
	ldr r2, [sp, #0x28]
	subs r1, r7, r2
	lsls r1, r1, #2
	adds r4, r1, r6
	ldrh r2, [r4]
	adds r1, r2, #0
	adds r1, #0xf
	cmp r0, r1
	blt _08018B78
	b _08018D34
_08018B78:
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	bgt _08018B86
	b _08018D34
_08018B86:
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08018B94
	b _08018D34
_08018B94:
	adds r0, r1, #0
	subs r0, #0x20
_08018B98:
	cmp r2, r0
	bgt _08018B9E
	b _08018D34
_08018B9E:
	ldr r0, _08018BD0 @ =gUnk_03005220
	adds r0, #0x43
	movs r1, #2
	strb r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, #0x18
_08018BAA:
	strh r0, [r5, #2]
	ldr r1, _08018BD4 @ =gUnk_03004680
	ldr r0, _08018BD8 @ =gUnk_03005288
	ldrb r2, [r0]
	lsls r2, r2, #3
	adds r2, r2, r1
	ldrh r1, [r6, #2]
	subs r1, #0x18
	ldrh r0, [r4, #2]
	subs r1, r1, r0
	lsls r1, r1, #3
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2, #6]
	b _08018D34
	.align 2, 0
_08018BCC: .4byte gUnk_03002920
_08018BD0: .4byte gUnk_03005220
_08018BD4: .4byte gUnk_03004680
_08018BD8: .4byte gUnk_03005288
_08018BDC:
	ldr r4, _08018BF4 @ =gUnk_03003610
	ldrb r0, [r4, #2]
	cmp r0, sl
	beq _08018BE6
	b _08018D34
_08018BE6:
	ldr r0, [sp, #0x28]
	movs r1, #0
	bl sub_08025B78
	movs r0, #0
	strb r0, [r4, #2]
	b _08018D34
	.align 2, 0
_08018BF4: .4byte gUnk_03003610
_08018BF8:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _08018C80 @ =gUnk_03002920
	adds r0, r0, r6
	mov r8, r0
	ldrh r6, [r0]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r3, _08018C80 @ =gUnk_03002920
	adds r4, r0, r3
	ldrh r5, [r4]
	adds r0, r5, #0
	adds r0, #0x14
	cmp r1, r0
	blt _08018C22
	b _08018D34
_08018C22:
	adds r1, #0x10
	subs r0, #0x28
	cmp r1, r0
	bgt _08018C2C
	b _08018D34
_08018C2C:
	mov r0, r8
	ldrh r3, [r0, #2]
	adds r1, r3, #0
	subs r1, #0x14
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	bge _08018D34
	subs r0, #0x28
	cmp r3, r0
	ble _08018D34
	ldrb r0, [r4, #0xf]
	cmp r0, #0xe
	beq _08018C4E
	cmp r0, #0
	bne _08018D34
_08018C4E:
	subs r0, r5, r6
	bl Abs
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #2]
	adds r0, #0x20
	mov r2, r8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r5, r1
	bls _08018C84
	movs r0, #0xff
	strb r0, [r4, #8]
	lsls r0, r1, #8
	subs r0, r0, r1
	adds r1, r5, #0
	bl __divsi3
	b _08018C92
	.align 2, 0
_08018C80: .4byte gUnk_03002920
_08018C84:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #6
	bl __divsi3
	strb r0, [r4, #8]
	movs r0, #0xff
_08018C92:
	strb r0, [r4, #9]
	ldr r2, _08018CC0 @ =gUnk_03002920
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r5, r0, r2
	ldrh r0, [r1]
	ldrh r6, [r5]
	cmp r0, r6
	bls _08018CC4
	ldrb r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r5, #0xc]
	b _08018CCC
	.align 2, 0
_08018CC0: .4byte gUnk_03002920
_08018CC4:
	ldrb r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0xc]
_08018CCC:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08018CF4 @ =gUnk_03002920
	adds r0, r0, r3
	ldr r4, [sp, #0x28]
	subs r1, r7, r4
	lsls r1, r1, #2
	adds r3, r1, r3
	ldrh r0, [r0, #2]
	ldrh r5, [r3, #2]
	cmp r0, r5
	bls _08018CF8
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #2
	orrs r1, r0
	b _08018D00
	.align 2, 0
_08018CF4: .4byte gUnk_03002920
_08018CF8:
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	ands r1, r0
_08018D00:
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r7, _08018D48 @ =gUnk_03002920
	adds r0, r0, r7
	movs r1, #0
	strb r1, [r0, #0xf]
	movs r0, #1
	bl sub_080145A8
	ldr r0, [sp, #0x40]
	mov r2, sl
	subs r1, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
_08018D34:
	ldr r3, [sp, #0x28]
	adds r3, #1
	str r3, [sp, #0x28]
	ldr r0, _08018D4C @ =gUnk_03003640
	ldr r0, [r0]
	cmp r3, r0
	bhi _08018D44
	b _080187F2
_08018D44:
	bl _0801B02E
	.align 2, 0
_08018D48: .4byte gUnk_03002920
_08018D4C: .4byte gUnk_03003640
_08018D50:
	mov r4, sl
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r5, _08018DD8 @ =gUnk_03002920
	adds r4, r0, r5
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #8
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0xc
	cmp r1, r0
	bge _08018D8C
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	ble _08018D8C
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x14
	ldrh r2, [r5, #2]
	cmp r0, r2
	bge _08018D8C
	adds r0, r2, #0
	subs r0, #0x18
	cmp r1, r0
	ble _08018D8C
	bl _0801A0EE
_08018D8C:
	mov r6, sl
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r7, _08018DD8 @ =gUnk_03002920
	adds r4, r0, r7
	ldrb r0, [r4, #0xf]
	str r1, [sp, #0x40]
	cmp r0, #0x15
	beq _08018DA4
	cmp r0, #0x10
	bne _08018E54
_08018DA4:
	ldr r0, _08018DDC @ =gUnk_03003508
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r0, _08018DE0 @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _08018E02
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	add r0, sp, #0x10
	movs r3, #0x18
	bl sub_08014184
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08018DE4 @ =0x0000FFFF
	cmp r5, r0
	beq _08018DEC
_08018DCE:
	ldr r0, _08018DE8 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	b _08018EE8
	.align 2, 0
_08018DD8: .4byte gUnk_03002920
_08018DDC: .4byte gUnk_03003508
_08018DE0: .4byte gUnk_03004C20
_08018DE4: .4byte 0x0000FFFF
_08018DE8: .4byte gUnk_03004654
_08018DEC:
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	add r0, sp, #0x14
	movs r3, #0x18
	bl sub_08014230
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bne _08018E94
_08018E02:
	ldr r5, _08018E48 @ =gUnk_03004790
	ldr r1, _08018E4C @ =gUnk_03002920
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #0xa
	asrs r2, r2, #3
	ldrh r3, [r0, #2]
	subs r1, r3, #4
	asrs r1, r1, #3
	ldr r0, _08018E50 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, [r5, #0x14]
	adds r0, r2, r0
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	subs r3, #0x14
	asrs r3, r3, #3
	adds r0, r3, #0
	muls r0, r4, r0
	adds r2, r2, r0
	adds r1, r1, r2
	ldr r0, [sp, #0x34]
	ldrb r4, [r1]
	cmp r0, r4
	bhs _08018EE8
	b _08018EE6
	.align 2, 0
_08018E48: .4byte gUnk_03004790
_08018E4C: .4byte gUnk_03002920
_08018E50: .4byte gUnk_03003430
_08018E54:
	ldr r1, _08018E98 @ =gUnk_03003508
	ldrh r0, [r4]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r4]
	ldr r0, _08018E9C @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _08018EA4
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	add r0, sp, #0x18
	movs r3, #0x18
	bl sub_08014184
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08018EA0 @ =0x0000FFFF
	cmp r5, r0
	bne _08018DCE
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	add r0, sp, #0x1c
	movs r3, #0x18
	bl sub_08014230
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	beq _08018EA4
_08018E94:
	strh r1, [r4, #2]
	b _08018EEA
	.align 2, 0
_08018E98: .4byte gUnk_03003508
_08018E9C: .4byte gUnk_03004C20
_08018EA0: .4byte 0x0000FFFF
_08018EA4:
	ldr r5, _08018F40 @ =gUnk_03004790
	ldr r1, _08018F44 @ =gUnk_03002920
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	subs r2, #0xb
	asrs r2, r2, #3
	ldrh r3, [r0, #2]
	subs r1, r3, #4
	asrs r1, r1, #3
	ldr r0, _08018F48 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, [r5, #0x14]
	adds r0, r2, r0
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	subs r3, #0x14
	asrs r3, r3, #3
	adds r0, r3, #0
	muls r0, r4, r0
	adds r2, r2, r0
	adds r1, r1, r2
	ldr r0, [sp, #0x34]
	ldrb r2, [r1]
	cmp r0, r2
	bhs _08018EE8
_08018EE6:
	ldrb r0, [r1]
_08018EE8:
	str r0, [sp, #0x34]
_08018EEA:
	ldr r0, _08018F4C @ =gUnk_030008F4
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, _08018F50 @ =gUnk_030008F0
	ldr r0, [r0]
	mov r3, sl
	subs r3, #0xd
	str r3, [sp, #0x3c]
	ldr r4, [sp, #0x28]
	cmp r4, r0
	bls _08018F04
	bl _08019EF6
_08018F04:
	ldr r0, _08018F44 @ =gUnk_03002920
	ldr r5, [sp, #0x28]
	lsls r2, r5, #3
	subs r1, r2, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r5, [r1, #0xf]
	ldr r6, [sp, #0x28]
	adds r6, #1
	mov r8, r6
	adds r7, r2, #0
	cmp r5, #0x1a
	bls _08018F22
	bl _08019EE6
_08018F22:
	cmp r5, #0x19
	bne _08018F2A
	bl _08019EE6
_08018F2A:
	ldrb r0, [r1, #0x11]
	subs r0, #5
	cmp r0, #0x78
	bls _08018F36
	bl _08019EE6
_08018F36:
	lsls r0, r0, #2
	ldr r1, _08018F54 @ =_08018F58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018F40: .4byte gUnk_03004790
_08018F44: .4byte gUnk_03002920
_08018F48: .4byte gUnk_03003430
_08018F4C: .4byte gUnk_030008F4
_08018F50: .4byte gUnk_030008F0
_08018F54: .4byte _08018F58
_08018F58: @ jump table
	.4byte _080193E4 @ case 0
	.4byte _080191AC @ case 1
	.4byte _08019EE6 @ case 2
	.4byte _080191AC @ case 3
	.4byte _08019EE6 @ case 4
	.4byte _08019EE6 @ case 5
	.4byte _080191AC @ case 6
	.4byte _08019EE6 @ case 7
	.4byte _08019EE6 @ case 8
	.4byte _08019EE6 @ case 9
	.4byte _08019EE6 @ case 10
	.4byte _08019EE6 @ case 11
	.4byte _08019EE6 @ case 12
	.4byte _08019EE6 @ case 13
	.4byte _08019EE6 @ case 14
	.4byte _08019EE6 @ case 15
	.4byte _08019EE6 @ case 16
	.4byte _08019EE6 @ case 17
	.4byte _08019B20 @ case 18
	.4byte _08019C84 @ case 19
	.4byte _08019EE6 @ case 20
	.4byte _08019EE6 @ case 21
	.4byte _08019DC0 @ case 22
	.4byte _08019EE6 @ case 23
	.4byte _08019EE6 @ case 24
	.4byte _08019EE6 @ case 25
	.4byte _08019EE6 @ case 26
	.4byte _08019EE6 @ case 27
	.4byte _08019EE6 @ case 28
	.4byte _0801984C @ case 29
	.4byte _08019EE6 @ case 30
	.4byte _08019EE6 @ case 31
	.4byte _0801913C @ case 32
	.4byte _08019EE6 @ case 33
	.4byte _0801963C @ case 34
	.4byte _0801963C @ case 35
	.4byte _0801963C @ case 36
	.4byte _0801963C @ case 37
	.4byte _0801963C @ case 38
	.4byte _08019EE6 @ case 39
	.4byte _08019EE6 @ case 40
	.4byte _08019EE6 @ case 41
	.4byte _08019EE6 @ case 42
	.4byte _08019EE6 @ case 43
	.4byte _08019EE6 @ case 44
	.4byte _08019EE6 @ case 45
	.4byte _08019EE6 @ case 46
	.4byte _08019EE6 @ case 47
	.4byte _080197EC @ case 48
	.4byte _0801970C @ case 49
	.4byte _08019EE6 @ case 50
	.4byte _08019EE6 @ case 51
	.4byte _08019EE6 @ case 52
	.4byte _080196AC @ case 53
	.4byte _0801942C @ case 54
	.4byte _0801934C @ case 55
	.4byte _08019EE6 @ case 56
	.4byte _0801978E @ case 57
	.4byte _080195BC @ case 58
	.4byte _08019EE6 @ case 59
	.4byte _08019264 @ case 60
	.4byte _08019EE6 @ case 61
	.4byte _08019EE6 @ case 62
	.4byte _08019EE6 @ case 63
	.4byte _08019EE6 @ case 64
	.4byte _08019EE6 @ case 65
	.4byte _08019EE6 @ case 66
	.4byte _08019EE6 @ case 67
	.4byte _08019EE6 @ case 68
	.4byte _08019EE6 @ case 69
	.4byte _08019EE6 @ case 70
	.4byte _08019EE6 @ case 71
	.4byte _08019EE6 @ case 72
	.4byte _08019EE6 @ case 73
	.4byte _08019EE6 @ case 74
	.4byte _08019EE6 @ case 75
	.4byte _08019EE6 @ case 76
	.4byte _08019EE6 @ case 77
	.4byte _08019EE6 @ case 78
	.4byte _08019EE6 @ case 79
	.4byte _08019EE6 @ case 80
	.4byte _08019EE6 @ case 81
	.4byte _08019EE6 @ case 82
	.4byte _08019EE6 @ case 83
	.4byte _08019EE6 @ case 84
	.4byte _08019EE6 @ case 85
	.4byte _08019EE6 @ case 86
	.4byte _08019EE6 @ case 87
	.4byte _08019EE6 @ case 88
	.4byte _08019EE6 @ case 89
	.4byte _08019EE6 @ case 90
	.4byte _08019EE6 @ case 91
	.4byte _08019EE6 @ case 92
	.4byte _08019EE6 @ case 93
	.4byte _08019EE6 @ case 94
	.4byte _08019EE6 @ case 95
	.4byte _08019EE6 @ case 96
	.4byte _08019EE6 @ case 97
	.4byte _08019EE6 @ case 98
	.4byte _08019EE6 @ case 99
	.4byte _08019EE6 @ case 100
	.4byte _08019EE6 @ case 101
	.4byte _08019EE6 @ case 102
	.4byte _08019EE6 @ case 103
	.4byte _08019EE6 @ case 104
	.4byte _08019EE6 @ case 105
	.4byte _0801913C @ case 106
	.4byte _080197EC @ case 107
	.4byte _080192E0 @ case 108
	.4byte _080192E0 @ case 109
	.4byte _080192E0 @ case 110
	.4byte _080192E0 @ case 111
	.4byte _0801970C @ case 112
	.4byte _080191AC @ case 113
	.4byte _080191AC @ case 114
	.4byte _080191AC @ case 115
	.4byte _080191AC @ case 116
	.4byte _080191AC @ case 117
	.4byte _080191AC @ case 118
	.4byte _080191AC @ case 119
	.4byte _080191AC @ case 120
_0801913C:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _080191A4 @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #0xc
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #7
	ldr r7, [sp, #0x28]
	adds r7, #1
	mov r8, r7
	cmp r1, r0
	blt _08019168
	bl _08019EE6
_08019168:
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	bgt _08019174
	bl _08019EE6
_08019174:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08019184
	bl _08019EE6
_08019184:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r5, r0
	bgt _08019190
	bl _08019EE6
_08019190:
	adds r0, #4
	cmp r5, r0
	blt _08019198
	b _0801983A
_08019198:
	ldr r2, _080191A8 @ =0x0000FFE8
	adds r0, r1, r2
	strh r0, [r3, #2]
	bl _08019EE6
	.align 2, 0
_080191A4: .4byte gUnk_03002920
_080191A8: .4byte 0x0000FFE8
_080191AC:
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _08019238 @ =gUnk_03002920
	adds r4, r0, r5
	ldrh r5, [r4]
	adds r1, r5, #0
	subs r1, #8
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r7, _08019238 @ =gUnk_03002920
	adds r2, r0, r7
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #8
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	blt _080191DA
	bl _08019EE6
_080191DA:
	adds r1, #0x10
	subs r0, #0x10
	cmp r1, r0
	bgt _080191E6
	bl _08019EE6
_080191E6:
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r3, [r2, #2]
	cmp r0, r3
	blt _080191F6
	bl _08019EE6
_080191F6:
	adds r0, r3, #0
	subs r0, #0x18
	cmp r1, r0
	bgt _08019202
	bl _08019EE6
_08019202:
	ldr r0, [sp, #0x28]
	cmp sl, r0
	bne _0801920C
	bl _08019EE6
_0801920C:
	ldrb r0, [r2, #0xf]
	cmp r0, #0x13
	bne _08019216
	bl _08019EE6
_08019216:
	movs r3, #0xff
	str r3, [sp, #0x34]
	ldrb r0, [r2, #0x11]
	cmp r0, #6
	beq _0801923C
	cmp r0, #8
	beq _0801923C
	ldr r4, [sp, #0x28]
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	movs r2, #2
	bl sub_0801E664
	bl _08019EE6
	.align 2, 0
_08019238: .4byte gUnk_03002920
_0801923C:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r1, r5, r6
	lsls r1, r1, #2
	ldr r7, _08019260 @ =gUnk_03002920
	adds r1, r1, r7
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #2
	movs r3, #0
	bl sub_0801E664
	ldr r0, [sp, #0x28]
	adds r0, #1
	mov r8, r0
	bl _08019EE6
	.align 2, 0
_08019260: .4byte gUnk_03002920
_08019264:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _080192D4 @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x10
	ldr r7, [sp, #0x28]
	adds r7, #1
	mov r8, r7
	cmp r1, r0
	blt _08019292
	bl _08019EE6
_08019292:
	adds r1, #0x10
	subs r0, #0x20
	cmp r1, r0
	bgt _0801929E
	bl _08019EE6
_0801929E:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _080192AE
	bl _08019EE6
_080192AE:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r5, r0
	bgt _080192BA
	bl _08019EE6
_080192BA:
	ldr r1, _080192D8 @ =gUnk_03000830
	ldr r0, _080192DC @ =gUnk_0300363C
	ldrb r0, [r0]
	ldr r2, [sp, #0x28]
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080192D2
	bl _08019EE6
_080192D2:
	b _0801983A
	.align 2, 0
_080192D4: .4byte gUnk_03002920
_080192D8: .4byte gUnk_03000830
_080192DC: .4byte gUnk_0300363C
_080192E0:
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _08019348 @ =gUnk_03002920
	adds r3, r0, r5
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrh r5, [r2]
	adds r0, r5, #2
	ldr r4, [sp, #0x28]
	adds r4, #1
	mov r8, r4
	cmp r1, r0
	blt _0801930C
	bl _08019EE6
_0801930C:
	adds r1, #0x10
	subs r0, r5, #2
	cmp r1, r0
	bgt _08019318
	bl _08019EE6
_08019318:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08019328
	bl _08019EE6
_08019328:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r5, r0
	bgt _08019334
	bl _08019EE6
_08019334:
	movs r5, #0xff
	str r5, [sp, #0x34]
	ldr r6, [sp, #0x28]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EAA4
	bl _08019EE6
	.align 2, 0
_08019348: .4byte gUnk_03002920
_0801934C:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _080193DC @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #0xb
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r7, r5, #0
	adds r7, #8
	ldr r0, [sp, #0x28]
	adds r0, #1
	mov r8, r0
	cmp r1, r7
	blt _0801937A
	bl _08019EE6
_0801937A:
	adds r0, r6, #0
	adds r0, #0xa
	adds r4, r5, #0
	subs r4, #8
	cmp r0, r4
	bgt _0801938A
	bl _08019EE6
_0801938A:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801939A
	bl _08019EE6
_0801939A:
	adds r2, r1, #0
	subs r2, #0x20
	cmp r5, r2
	bgt _080193A6
	bl _08019EE6
_080193A6:
	ldr r0, [sp, #0x2c]
	subs r0, #0xb
	cmp r0, r7
	bge _080193C8
	ldr r0, [sp, #0x2c]
	adds r0, #0xa
	cmp r0, r4
	ble _080193C8
	ldr r0, [sp, #0x30]
	subs r0, #0x18
	cmp r0, r1
	bge _080193C8
	ldr r1, [sp, #0x30]
	cmp r1, r2
	ble _080193C8
	bl _08019EE6
_080193C8:
	ldr r0, _080193E0 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	ldr r2, [sp, #0x28]
	adds r2, #1
	mov r8, r2
	bl _08019EE6
	.align 2, 0
_080193DC: .4byte gUnk_03002920
_080193E0: .4byte gUnk_03004654
_080193E4:
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _08019428 @ =gUnk_03002920
	adds r3, r0, r5
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x10
	ldr r4, [sp, #0x28]
	adds r4, #1
	mov r8, r4
	cmp r1, r0
	blt _08019412
	bl _08019EE6
_08019412:
	adds r1, #0x10
	subs r0, #0x20
	cmp r1, r0
	bgt _0801941E
	bl _08019EE6
_0801941E:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	b _08019828
	.align 2, 0
_08019428: .4byte gUnk_03002920
_0801942C:
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	ldr r6, _08019508 @ =gUnk_03002920
	adds r4, r0, r6
	ldrb r0, [r4, #0xc]
	mov r8, r0
	mov r1, r8
	lsls r0, r1, #0x1c
	lsrs r6, r0, #0x1e
	movs r2, #0
	mov sb, r2
	cmp r6, #1
	bne _0801944C
	movs r3, #8
	mov sb, r3
_0801944C:
	ldr r5, [sp, #0x40]
	mov r1, sl
	subs r0, r5, r1
	lsls r0, r0, #2
	ldr r2, _08019508 @ =gUnk_03002920
	adds r5, r0, r2
	ldrh r2, [r5]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r3, r3, r2
	mov ip, r3
	ldrh r3, [r4]
	mov r1, sb
	adds r0, r3, r1
	cmp ip, r0
	bge _08019534
	adds r1, r2, #7
	mov r0, sb
	subs r0, #8
	adds r0, r3, r0
	cmp r1, r0
	ble _08019534
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r4, #2]
	cmp r0, r1
	bge _08019534
	adds r0, r1, #0
	subs r0, #0x20
	cmp r2, r0
	ble _08019534
	mov r2, r8
	lsrs r0, r2, #4
	ldr r3, [sp, #0x28]
	adds r3, #1
	mov r8, r3
	cmp r0, #0
	beq _0801949E
	bl _08019EE6
_0801949E:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x15
	bne _080194A8
	cmp r6, #0
	beq _080194B0
_080194A8:
	cmp r0, #0x16
	bne _08019524
	cmp r6, #1
	bne _08019524
_080194B0:
	ldr r3, _0801950C @ =0x040000D4
	ldr r0, _08019510 @ =0x080B9368
	str r0, [r3]
	ldr r4, _08019514 @ =gUnk_0818B8E0
	ldr r2, _08019518 @ =gUnk_03004C20
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
	ldr r4, _0801951C @ =0x06010000
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _08019520 @ =0x80000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, [sp, #0x28]
	subs r2, r7, r5
	lsls r2, r2, #2
	ldr r6, _08019508 @ =gUnk_03002920
	adds r2, r2, r6
	ldrb r1, [r2, #0xc]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0x7d
	bl m4aSongNumStart
	adds r5, #1
	mov r8, r5
	bl _08019EE6
	.align 2, 0
_08019508: .4byte gUnk_03002920
_0801950C: .4byte 0x040000D4
_08019510: .4byte 0x080B9368
_08019514: .4byte gUnk_0818B8E0
_08019518: .4byte gUnk_03004C20
_0801951C: .4byte 0x06010000
_08019520: .4byte 0x80000080
_08019524:
	ldr r0, _08019530 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	movs r0, #0x2b
	b _08019782
	.align 2, 0
_08019530: .4byte gUnk_03004654
_08019534:
	ldr r1, [sp, #0x28]
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _0801959C @ =gUnk_03002920
	adds r5, r0, r2
	ldrb r0, [r5, #0xc]
	lsrs r0, r0, #4
	adds r1, #1
	mov r8, r1
	cmp r0, #1
	beq _0801954E
	bl _08019EE6
_0801954E:
	ldr r0, _080195A0 @ =gUnk_03005220
	ldrb r0, [r0, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801955C
	bl _08019EE6
_0801955C:
	ldr r3, _080195A4 @ =0x040000D4
	ldr r0, _080195A8 @ =0x08062148
	str r0, [r3]
	ldr r4, _080195AC @ =gUnk_0818B8E0
	ldr r2, _080195B0 @ =gUnk_03004C20
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
	ldr r4, _080195B4 @ =0x06010000
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _080195B8 @ =0x80000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0xc]
	bl _08019EE6
	.align 2, 0
_0801959C: .4byte gUnk_03002920
_080195A0: .4byte gUnk_03005220
_080195A4: .4byte 0x040000D4
_080195A8: .4byte 0x08062148
_080195AC: .4byte gUnk_0818B8E0
_080195B0: .4byte gUnk_03004C20
_080195B4: .4byte 0x06010000
_080195B8: .4byte 0x80000080
_080195BC:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r1, _08019630 @ =gUnk_03002920
	adds r3, r0, r1
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r4, _08019630 @ =gUnk_03002920
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0xc
	ldr r7, [sp, #0x28]
	adds r7, #1
	mov r8, r7
	cmp r1, r0
	blt _080195EC
	bl _08019EE6
_080195EC:
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	bgt _080195F8
	bl _08019EE6
_080195F8:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08019608
	bl _08019EE6
_08019608:
	adds r0, r1, #0
	subs r0, #0x18
	cmp r5, r0
	bgt _08019614
	bl _08019EE6
_08019614:
	ldr r1, _08019634 @ =gUnk_03000830
	ldr r0, _08019638 @ =gUnk_0300363C
	ldrb r0, [r0]
	ldr r2, [sp, #0x28]
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801962C
	bl _08019EE6
_0801962C:
	b _0801983A
	.align 2, 0
_08019630: .4byte gUnk_03002920
_08019634: .4byte gUnk_03000830
_08019638: .4byte gUnk_0300363C
_0801963C:
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _080196A4 @ =gUnk_03002920
	adds r3, r0, r5
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x10
	ldr r4, [sp, #0x28]
	adds r4, #1
	mov r8, r4
	cmp r1, r0
	blt _0801966A
	bl _08019EE6
_0801966A:
	adds r1, #0x10
	subs r0, #0x20
	cmp r1, r0
	bgt _08019676
	bl _08019EE6
_08019676:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08019686
	bl _08019EE6
_08019686:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r5, r0
	bgt _08019692
	bl _08019EE6
_08019692:
	adds r0, #6
	cmp r5, r0
	blt _0801969A
	b _0801983A
_0801969A:
	ldr r5, _080196A8 @ =0x0000FFF0
	adds r0, r1, r5
	strh r0, [r3, #2]
	bl _08019EE6
	.align 2, 0
_080196A4: .4byte gUnk_03002920
_080196A8: .4byte 0x0000FFF0
_080196AC:
	ldr r6, [sp, #0x40]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	ldr r2, _08019708 @ =gUnk_03002920
	adds r3, r0, r2
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r4, [sp, #0x28]
	subs r0, r7, r4
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x10
	adds r4, #1
	mov r8, r4
	cmp r1, r0
	blt _080196D8
	bl _08019EE6
_080196D8:
	adds r1, #0x10
	subs r0, #0x20
	cmp r1, r0
	bgt _080196E4
	bl _08019EE6
_080196E4:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _080196F4
	bl _08019EE6
_080196F4:
	adds r0, r1, #0
	subs r0, #0x40
	cmp r5, r0
	bgt _08019700
	bl _08019EE6
_08019700:
	movs r5, #0xff
	str r5, [sp, #0x34]
	bl _08019EE6
	.align 2, 0
_08019708: .4byte gUnk_03002920
_0801970C:
	ldr r6, [sp, #0x40]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	ldr r2, _08019768 @ =gUnk_03002920
	adds r4, r0, r2
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #8
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r5, [r2]
	adds r0, r5, #3
	ldr r6, [sp, #0x28]
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	blt _08019736
	b _08019EE6
_08019736:
	adds r1, #0x10
	subs r0, r5, #3
	cmp r1, r0
	bgt _08019740
	b _08019EE6
_08019740:
	ldrh r6, [r4, #2]
	adds r1, r6, #0
	subs r1, #0x18
	ldrh r5, [r2, #2]
	adds r0, r5, #0
	subs r0, #0xc
	cmp r1, r0
	blt _08019752
	b _08019EE6
_08019752:
	subs r0, #8
	cmp r6, r0
	bgt _0801975A
	b _08019EE6
_0801975A:
	ldrb r0, [r2, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	bne _0801976C
	movs r0, #0x10
	b _0801977E
	.align 2, 0
_08019768: .4byte gUnk_03002920
_0801976C:
	cmp r0, #1
	bne _08019774
	movs r0, #0x11
	b _0801977E
_08019774:
	cmp r0, #0
	bne _0801977C
	movs r0, #0xf
	b _0801977E
_0801977C:
	movs r0, #0xe
_0801977E:
	strb r0, [r4, #0xf]
	movs r0, #0xa1
_08019782:
	bl m4aSongNumStart
	ldr r7, [sp, #0x28]
	adds r7, #1
	mov r8, r7
	b _08019EE6
_0801978E:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _080197E8 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #0xc
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	blt _080197B8
	b _08019EE6
_080197B8:
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	bgt _080197C2
	b _08019EE6
_080197C2:
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x18
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r7, _080197E8 @ =gUnk_03002920
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	cmp r1, r0
	blt _080197DA
	b _08019EE6
_080197DA:
	ldrh r0, [r2, #2]
	subs r0, #8
	cmp r3, r0
	bgt _080197E4
	b _08019EE6
_080197E4:
	b _0801983A
	.align 2, 0
_080197E8: .4byte gUnk_03002920
_080197EC:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _08019844 @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0xf
	ldr r7, [sp, #0x28]
	adds r7, #1
	mov r8, r7
	cmp r1, r0
	blt _08019818
	b _08019EE6
_08019818:
	adds r1, #0x10
	subs r0, #0x1e
	cmp r1, r0
	bgt _08019822
	b _08019EE6
_08019822:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x14
_08019828:
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _08019830
	b _08019EE6
_08019830:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r5, r0
	bgt _0801983A
	b _08019EE6
_0801983A:
	ldr r0, _08019848 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	b _08019EE6
	.align 2, 0
_08019844: .4byte gUnk_03002920
_08019848: .4byte gUnk_03004654
_0801984C:
	movs r0, #0
	str r0, [sp, #0x38]
	ldr r0, _0801987C @ =gUnk_03005400
	ldrb r1, [r0, #0xc]
	ldr r2, [sp, #0x28]
	adds r2, #1
	mov r8, r2
	cmp r1, #0
	bne _08019860
	b _08019EE6
_08019860:
	adds r3, r0, #0
	ldrb r1, [r3, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801986E
	b _08019EE6
_0801986E:
	ldr r0, _08019880 @ =gUnk_03004C20
	ldrb r1, [r0, #0xd]
	cmp r1, #2
	bne _08019888
	ldr r2, _08019884 @ =0x08116A36
	ldrb r1, [r3, #0xc]
	b _08019890
	.align 2, 0
_0801987C: .4byte gUnk_03005400
_08019880: .4byte gUnk_03004C20
_08019884: .4byte 0x08116A36
_08019888:
	ldr r2, _080198E8 @ =0x081168C4
	ldr r4, _080198EC @ =gUnk_03004C20
	ldrb r1, [r4, #0xd]
	subs r1, #1
_08019890:
	lsls r1, r1, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r8, r0
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r6, [r0]
	adds r0, r2, #2
	adds r0, r1, r0
	ldrb r0, [r0]
	mov sb, r0
	adds r2, #3
	adds r1, r1, r2
	ldrb r1, [r1]
	mov ip, r1
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	ldr r1, _080198F0 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _080198F4
	ldrh r3, [r4]
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	ldr r5, [sp, #0x40]
	mov r2, sl
	subs r1, r5, r2
	lsls r1, r1, #2
	ldr r2, _080198F0 @ =gUnk_03002920
	adds r5, r1, r2
	ldrh r2, [r5]
	adds r1, r2, #4
	cmp r0, r1
	bge _08019940
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	b _08019918
	.align 2, 0
_080198E8: .4byte 0x081168C4
_080198EC: .4byte gUnk_03004C20
_080198F0: .4byte gUnk_03002920
_080198F4:
	ldrh r3, [r4]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
	ldr r6, [sp, #0x40]
	mov r2, sl
	subs r1, r6, r2
	lsls r1, r1, #2
	ldr r6, _08019978 @ =gUnk_03002920
	adds r5, r1, r6
	ldrh r2, [r5]
	adds r1, r2, #4
	cmp r0, r1
	bge _08019940
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	subs r0, r3, r0
_08019918:
	subs r1, r2, #4
	cmp r0, r1
	ble _08019940
	ldrh r2, [r4, #2]
	mov r3, sb
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _08019940
	mov r4, ip
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	subs r1, #0x14
	cmp r0, r1
	ble _08019940
	movs r5, #1
	str r5, [sp, #0x38]
_08019940:
	ldr r6, [sp, #0x38]
	cmp r6, #1
	bne _08019A2C
	ldr r0, _0801997C @ =gUnk_03005400
	ldrb r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08019A2C
	ldr r1, _0801997C @ =gUnk_03005400
	ldrb r0, [r1, #0xc]
	subs r0, #1
	strb r0, [r1, #0xc]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08019980
	ldr r2, _08019978 @ =gUnk_03002920
	ldrb r1, [r1, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x11
	strb r1, [r0, #0xf]
	b _080199A2
	.align 2, 0
_08019978: .4byte gUnk_03002920
_0801997C: .4byte gUnk_03005400
_08019980:
	ldr r2, _08019A20 @ =gUnk_03002920
	ldr r4, _08019A24 @ =gUnk_03005400
	ldrb r1, [r4, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	ldrb r1, [r4, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r3, [r0, #0x10]
_080199A2:
	ldr r5, _08019A24 @ =gUnk_03005400
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	bne _080199B2
	movs r0, #0xd
	movs r1, #1
	bl sub_08025B78
_080199B2:
	ldr r2, _08019A20 @ =gUnk_03002920
	ldr r6, _08019A28 @ =0x000001EB
	adds r1, r2, r6
	movs r7, #0
	mov r8, r7
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, [sp, #0x40]
	mov r1, sl
	subs r4, r0, r1
	lsls r4, r4, #2
	adds r4, r4, r2
	ldrh r1, [r4]
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r6, #0
	strh r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, #0x10
	movs r5, #0xef
	lsls r5, r5, #1
	adds r1, r2, r5
	strh r0, [r1]
	movs r5, #1
	ldr r7, _08019A24 @ =gUnk_03005400
	strb r5, [r7, #9]
	movs r0, #1
	bl sub_0803D140
	mov r0, r8
	strh r0, [r7]
	ldr r0, [sp, #0x28]
	movs r1, #1
	bl sub_08025B78
	movs r0, #0x63
	bl m4aSongNumStart
	strb r5, [r7, #0xa]
	strb r6, [r7, #0x10]
	ldrb r0, [r7, #8]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7, #8]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	ldr r1, [sp, #0x28]
	adds r1, #1
	mov r8, r1
	b _08019EE6
	.align 2, 0
_08019A20: .4byte gUnk_03002920
_08019A24: .4byte gUnk_03005400
_08019A28: .4byte 0x000001EB
_08019A2C:
	ldr r2, _08019A3C @ =gUnk_03004C20
	ldrb r0, [r2, #0xd]
	cmp r0, #2
	bne _08019A48
	ldr r2, _08019A40 @ =0x08116A26
	ldr r3, _08019A44 @ =gUnk_03005400
	ldrb r1, [r3, #0xc]
	b _08019A50
	.align 2, 0
_08019A3C: .4byte gUnk_03004C20
_08019A40: .4byte 0x08116A26
_08019A44: .4byte gUnk_03005400
_08019A48:
	ldr r2, _08019B10 @ =0x081168AC
	ldr r4, _08019B14 @ =gUnk_03004C20
	ldrb r1, [r4, #0xd]
	subs r1, #1
_08019A50:
	lsls r1, r1, #2
	adds r0, r1, r2
	ldrb r4, [r0]
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r3, [r0]
	adds r0, r2, #2
	adds r0, r1, r0
	ldrb r0, [r0]
	mov sb, r0
	adds r2, #3
	adds r1, r1, r2
	ldrb r1, [r1]
	mov ip, r1
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	ldr r6, _08019B18 @ =gUnk_03002920
	adds r2, r0, r6
	ldrh r6, [r2]
	lsls r1, r4, #0x18
	asrs r1, r1, #0x18
	adds r1, r6, r1
	ldr r7, [sp, #0x40]
	mov r4, sl
	subs r0, r7, r4
	lsls r0, r0, #2
	ldr r5, _08019B18 @ =gUnk_03002920
	adds r4, r0, r5
	ldrh r5, [r4]
	adds r0, r5, #4
	ldr r7, [sp, #0x28]
	adds r7, #1
	mov r8, r7
	cmp r1, r0
	blt _08019A9A
	b _08019EE6
_08019A9A:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	subs r1, r5, #4
	cmp r0, r1
	bgt _08019AA8
	b _08019EE6
_08019AA8:
	ldrh r2, [r2, #2]
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _08019ABA
	b _08019EE6
_08019ABA:
	mov r3, ip
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	subs r1, #0x14
	cmp r0, r1
	bgt _08019ACA
	b _08019EE6
_08019ACA:
	movs r0, #0x2b
	bl m4aSongNumStart
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	ldr r2, _08019B1C @ =gUnk_03005400
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08019AEA
	b _08019EE6
_08019AEA:
	ldr r0, _08019B14 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	beq _08019AF4
	b _08019EE6
_08019AF4:
	ldrb r0, [r2, #0xa]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08019B02
	b _08019EE6
_08019B02:
	movs r0, #0xe
	strb r0, [r2, #0xa]
	ldr r0, [sp, #0x28]
	movs r1, #0x11
	bl sub_08025B78
	b _08019EE6
	.align 2, 0
_08019B10: .4byte 0x081168AC
_08019B14: .4byte gUnk_03004C20
_08019B18: .4byte gUnk_03002920
_08019B1C: .4byte gUnk_03005400
_08019B20:
	movs r4, #0
	mov sb, r4
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	ldr r6, _08019C28 @ =gUnk_03002920
	adds r5, r0, r6
	ldrb r0, [r5, #0xf]
	ldr r7, [sp, #0x28]
	adds r7, #1
	mov r8, r7
	cmp r0, #0
	bne _08019B3C
	b _08019EE6
_08019B3C:
	cmp r0, #3
	bne _08019B42
	b _08019EE6
_08019B42:
	cmp r0, #4
	bne _08019B48
	b _08019EE6
_08019B48:
	ldr r7, _08019C2C @ =gUnk_0300363C
	ldrb r0, [r7]
	ldr r1, [sp, #0x28]
	subs r0, r1, r0
	lsls r0, r0, #2
	ldr r2, _08019C30 @ =gUnk_03000830
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #4
	bne _08019B5E
	b _08019EE6
_08019B5E:
	cmp r1, #0x15
	bne _08019B66
	movs r3, #0x10
	mov sb, r3
_08019B66:
	ldr r4, [sp, #0x40]
	mov r6, sl
	subs r0, r4, r6
	lsls r0, r0, #2
	ldr r1, _08019C28 @ =gUnk_03002920
	adds r6, r0, r1
	ldrh r4, [r6]
	adds r1, r4, #0
	subs r1, #8
	ldrh r3, [r5]
	mov r2, sb
	adds r2, #0x14
	adds r0, r3, r2
	cmp r1, r0
	blt _08019B86
	b _08019EE6
_08019B86:
	adds r1, #0x10
	subs r0, r3, r2
	cmp r1, r0
	bgt _08019B90
	b _08019EE6
_08019B90:
	ldrh r3, [r6, #2]
	adds r1, r3, #0
	subs r1, #0x14
	ldrh r2, [r5, #2]
	mov r0, sb
	subs r0, #0xa
	adds r0, r2, r0
	cmp r1, r0
	blt _08019BA4
	b _08019EE6
_08019BA4:
	mov r0, sb
	adds r0, #0x36
	subs r0, r2, r0
	cmp r3, r0
	bgt _08019BB0
	b _08019EE6
_08019BB0:
	ldr r0, _08019C34 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	movs r1, #1
	movs r0, #1
	strb r0, [r5, #8]
	ldrb r0, [r5, #9]
	orrs r1, r0
	strb r1, [r5, #9]
	movs r0, #0x13
	strb r0, [r5, #0xf]
	ldr r0, [sp, #0x28]
	movs r1, #4
	bl sub_08025B78
	ldr r2, _08019C28 @ =gUnk_03002920
	ldr r3, _08019C38 @ =0x000001EB
	adds r1, r2, r3
	movs r0, #0x19
	strb r0, [r1]
	ldrh r1, [r5]
	movs r4, #0xee
	lsls r4, r4, #1
	adds r0, r2, r4
	movs r2, #0
	strh r1, [r0]
	ldrh r0, [r5, #2]
	ldr r5, _08019C28 @ =gUnk_03002920
	movs r6, #0xef
	lsls r6, r6, #1
	adds r1, r5, r6
	strh r0, [r1]
	ldrb r1, [r7]
	movs r0, #0x15
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _08019C30 @ =gUnk_03000830
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #4
	beq _08019C06
	b _08019EE6
_08019C06:
	ldr r1, _08019C3C @ =gUnk_03005400
	ldrb r0, [r1, #0xc]
	subs r0, #1
	strb r0, [r1, #0xc]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08019C40
	ldrb r0, [r1, #0xc]
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r0, #0x11
	strb r0, [r1, #0xf]
	b _08019C62
	.align 2, 0
_08019C28: .4byte gUnk_03002920
_08019C2C: .4byte gUnk_0300363C
_08019C30: .4byte gUnk_03000830
_08019C34: .4byte gUnk_03004654
_08019C38: .4byte 0x000001EB
_08019C3C: .4byte gUnk_03005400
_08019C40:
	ldr r3, _08019C7C @ =gUnk_03005400
	ldrb r1, [r3, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08019C80 @ =gUnk_03002920
	adds r0, r0, r4
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	ldrb r1, [r3, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	strb r2, [r0, #0x10]
_08019C62:
	ldr r5, _08019C7C @ =gUnk_03005400
	ldrb r0, [r5, #0xc]
	ldr r6, [sp, #0x28]
	adds r6, #1
	mov r8, r6
	cmp r0, #2
	beq _08019C72
	b _08019EE6
_08019C72:
	movs r0, #0xd
	movs r1, #1
	bl sub_08025B78
	b _08019EE6
	.align 2, 0
_08019C7C: .4byte gUnk_03005400
_08019C80: .4byte gUnk_03002920
_08019C84:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08019D18 @ =gUnk_03002920
	adds r0, r0, r3
	mov sb, r0
	ldrh r6, [r0]
	adds r1, r6, #0
	subs r1, #8
	ldr r4, [sp, #0x28]
	subs r0, r7, r4
	lsls r0, r0, #2
	adds r4, r0, r3
	ldrh r5, [r4]
	adds r0, r5, #0
	adds r0, #0x14
	ldr r2, [sp, #0x28]
	adds r2, #1
	mov r8, r2
	cmp r1, r0
	blt _08019CB2
	b _08019EE6
_08019CB2:
	adds r1, #0x10
	subs r0, #0x28
	cmp r1, r0
	bgt _08019CBC
	b _08019EE6
_08019CBC:
	mov r0, sb
	ldrh r3, [r0, #2]
	adds r1, r3, #0
	subs r1, #0x14
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0xc
	cmp r1, r0
	blt _08019CD0
	b _08019EE6
_08019CD0:
	subs r0, #0x28
	cmp r3, r0
	bgt _08019CD8
	b _08019EE6
_08019CD8:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xe
	beq _08019CE0
	b _08019EE6
_08019CE0:
	ldr r0, _08019D1C @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	subs r0, r5, r6
	bl Abs
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #2]
	adds r0, #0x20
	mov r2, sb
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r5, r1
	bls _08019D20
	movs r0, #0xff
	strb r0, [r4, #8]
	lsls r0, r1, #8
	subs r0, r0, r1
	adds r1, r5, #0
	bl __divsi3
	b _08019D2E
	.align 2, 0
_08019D18: .4byte gUnk_03002920
_08019D1C: .4byte gUnk_03004654
_08019D20:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #6
	bl __divsi3
	strb r0, [r4, #8]
	movs r0, #0xff
_08019D2E:
	strb r0, [r4, #9]
	ldr r2, _08019D5C @ =gUnk_03002920
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r5, r0, r2
	ldrh r0, [r1]
	ldrh r6, [r5]
	cmp r0, r6
	bls _08019D60
	ldrb r0, [r5, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r5, #0xc]
	b _08019D68
	.align 2, 0
_08019D5C: .4byte gUnk_03002920
_08019D60:
	ldrb r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0xc]
_08019D68:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08019D90 @ =gUnk_03002920
	adds r0, r0, r3
	ldr r4, [sp, #0x28]
	subs r1, r7, r4
	lsls r1, r1, #2
	adds r3, r1, r3
	ldrh r0, [r0, #2]
	ldrh r5, [r3, #2]
	cmp r0, r5
	bls _08019D94
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #2
	orrs r1, r0
	b _08019D9C
	.align 2, 0
_08019D90: .4byte gUnk_03002920
_08019D94:
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	ands r1, r0
_08019D9C:
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r7, _08019DBC @ =gUnk_03002920
	adds r0, r0, r7
	movs r1, #0
	strb r1, [r0, #0xf]
	adds r6, #1
	mov r8, r6
	b _08019EE6
	.align 2, 0
_08019DBC: .4byte gUnk_03002920
_08019DC0:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08019E24 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r3, r0, r3
	ldrh r2, [r3]
	adds r0, r2, #0
	adds r0, #0x14
	adds r6, #1
	mov r8, r6
	cmp r1, r0
	blt _08019DEA
	b _08019EE6
_08019DEA:
	adds r1, #0x10
	subs r0, #0x28
	cmp r1, r0
	ble _08019EE6
	ldrh r4, [r5, #2]
	adds r1, r4, #0
	subs r1, #0x14
	ldrh r2, [r3, #2]
	adds r0, r2, #0
	subs r0, #8
	cmp r1, r0
	bge _08019EE6
	subs r0, #0x20
	cmp r4, r0
	ble _08019EE6
	ldrb r0, [r3, #0xf]
	cmp r0, #0xf
	bne _08019EE6
	movs r0, #8
	strb r0, [r3, #8]
	ldr r1, _08019E28 @ =gUnk_03005400
	movs r0, #4
	strb r0, [r1, #0xa]
	ldrb r0, [r5, #9]
	ldrb r1, [r3, #9]
	cmp r0, r1
	bne _08019E2C
	movs r0, #0x14
	b _08019E2E
	.align 2, 0
_08019E24: .4byte gUnk_03002920
_08019E28: .4byte gUnk_03005400
_08019E2C:
	movs r0, #0x13
_08019E2E:
	strb r0, [r3, #0xf]
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _08019E58 @ =gUnk_03002920
	adds r0, r0, r4
	ldr r5, [sp, #0x28]
	subs r1, r7, r5
	lsls r1, r1, #2
	adds r2, r1, r4
	ldrh r0, [r0]
	ldrh r6, [r2]
	cmp r0, r6
	bhs _08019E5C
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	b _08019E6A
	.align 2, 0
_08019E58: .4byte gUnk_03002920
_08019E5C:
	ldrb r0, [r2, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2, #0xc]
_08019E6A:
	ldr r7, [sp, #0x40]
	mov r0, sl
	subs r4, r7, r0
	lsls r4, r4, #2
	ldr r1, _08019FB0 @ =gUnk_03002920
	adds r4, r4, r1
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	ldr r2, _08019FB4 @ =gUnk_080E2B64
	mov r8, r2
	ldr r2, _08019FB8 @ =gUnk_03004C20
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	ldr r3, [sp, #0x3c]
	adds r6, r3, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r5, _08019FBC @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r3, _08019FC0 @ =0x00008980
	muls r0, r3, r0
	adds r1, r1, r0
	add r1, r8
	ldrb r0, [r1, #4]
	strb r0, [r4, #9]
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r2, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	muls r0, r3, r0
	adds r1, r1, r0
	add r1, r8
	ldrb r0, [r1, #5]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	ldr r4, [sp, #0x28]
	adds r4, #1
	mov r8, r4
_08019EE6:
	mov r5, r8
	str r5, [sp, #0x28]
	ldr r0, _08019FC4 @ =gUnk_030008F0
	ldr r0, [r0]
	cmp r5, r0
	bhi _08019EF6
	bl _08018F04
_08019EF6:
	ldr r4, _08019FB4 @ =gUnk_080E2B64
	ldr r3, _08019FB8 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	ldr r6, [sp, #0x3c]
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r2, _08019FBC @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r2, _08019FC0 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r4
	ldrh r1, [r1, #2]
	movs r0, #1
	ands r0, r1
	ldr r7, _08019FC8 @ =gUnk_03004654
	mov ip, r7
	cmp r0, #0
	beq _08019F5E
	ldr r1, _08019FB0 @ =gUnk_03002920
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r2, r0, r1
	ldr r4, _08019FCC @ =0xFFFFFEED
	adds r0, r4, #0
	ldrh r5, [r2, #4]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	ldr r1, _08019FD0 @ =0xFEC90000
	cmp r0, r1
	bls _08019F54
	ldrh r0, [r2, #6]
	subs r0, #0xb3
	lsls r0, r0, #0x10
	ldr r1, _08019FD4 @ =0xFF290000
	cmp r0, r1
	bhi _08019F5E
_08019F54:
	ldr r1, _08019FC8 @ =gUnk_03004654
	ldr r0, [r1]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	mov ip, r1
_08019F5E:
	mov r6, ip
	ldr r1, [r6]
	ldrb r0, [r1, #0x1a]
	ldr r7, [sp, #0x34]
	cmp r0, r7
	bls _08019F84
	ldrb r0, [r1, #1]
	cmp r0, r7
	bls _08019F72
	b _0801A084
_08019F72:
	ldrb r0, [r1, #0x14]
	cmp r0, r7
	bhs _08019F7A
	b _0801A084
_08019F7A:
	ldr r1, _08019FB8 @ =gUnk_03004C20
	ldrb r0, [r1, #0x11]
	cmp r0, #0
	beq _08019F84
	b _0801A084
_08019F84:
	movs r0, #0x2b
	bl m4aSongNumStart
	ldr r0, _08019FB0 @ =gUnk_03002920
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x11]
	cmp r0, #0x7a
	bls _08019FD8
	ldr r4, [sp, #0x34]
	cmp r4, #0xff
	beq _08019FD8
	mov r5, sp
	ldrh r5, [r5, #0x2c]
	strh r5, [r1]
	movs r0, #0x14
	strb r0, [r1, #0xf]
	bl _0801B02E
	.align 2, 0
_08019FB0: .4byte gUnk_03002920
_08019FB4: .4byte gUnk_080E2B64
_08019FB8: .4byte gUnk_03004C20
_08019FBC: .4byte 0x00001130
_08019FC0: .4byte 0x00008980
_08019FC4: .4byte gUnk_030008F0
_08019FC8: .4byte gUnk_03004654
_08019FCC: .4byte 0xFFFFFEED
_08019FD0: .4byte 0xFEC90000
_08019FD4: .4byte 0xFF290000
_08019FD8:
	ldr r1, _0801A070 @ =gUnk_03002920
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	ldr r7, _0801A074 @ =gUnk_080E2B64
	ldr r2, _0801A078 @ =gUnk_03004C20
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	ldr r5, [sp, #0x3c]
	adds r3, r5, #0
	muls r3, r0, r3
	adds r1, r1, r3
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r6, _0801A07C @ =0x00001130
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r5, _0801A080 @ =0x00008980
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldrb r0, [r1, #4]
	strb r0, [r4, #9]
	ldrb r0, [r4, #0x11]
	cmp r0, #0x78
	beq _0801A030
	cmp r0, #0x7a
	beq _0801A030
	cmp r0, #0x7d
	beq _0801A030
	bl _0801AF00
_0801A030:
	ldr r0, _0801A070 @ =gUnk_03002920
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r4, r6, r7
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r5, _0801A074 @ =gUnk_080E2B64
	ldr r3, _0801A078 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	ldr r2, [sp, #0x3c]
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r2, _0801A07C @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r2, _0801A080 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldrb r1, [r1, #5]
	lsls r1, r1, #4
	ldrb r2, [r4, #0xc]
	movs r0, #0xf
	bl _0801AF28
	.align 2, 0
_0801A070: .4byte gUnk_03002920
_0801A074: .4byte gUnk_080E2B64
_0801A078: .4byte gUnk_03004C20
_0801A07C: .4byte 0x00001130
_0801A080: .4byte 0x00008980
_0801A084:
	mov r3, ip
	ldr r1, [r3]
	ldrb r0, [r1, #0x18]
	ldr r4, [sp, #0x34]
	cmp r0, r4
	beq _0801A09A
	ldrb r0, [r1, #0x19]
	cmp r0, r4
	beq _0801A09A
	bl _0801B02E
_0801A09A:
	ldr r0, _0801A0B0 @ =gUnk_03002920
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r1, r5, r6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl _0801AFB8
	.align 2, 0
_0801A0B0: .4byte gUnk_03002920
_0801A0B4:
	mov r7, sl
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _0801A104 @ =gUnk_03002920
	adds r4, r0, r1
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #8
	ldr r5, _0801A104 @ =gUnk_03002920
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0xc
	cmp r1, r0
	bge _0801A108
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	ble _0801A108
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x14
	ldrh r2, [r5, #2]
	cmp r0, r2
	bge _0801A108
	adds r0, r2, #0
	subs r0, #0x18
	cmp r1, r0
	ble _0801A108
_0801A0EE:
	adds r0, r3, #0
_0801A0F0:
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	movs r0, #0x2b
	bl m4aSongNumStart
	bl _0801B02E
	.align 2, 0
_0801A104: .4byte gUnk_03002920
_0801A108:
	mov r6, sl
	lsls r0, r6, #3
	subs r1, r0, r6
	lsls r1, r1, #2
	ldr r7, _0801A170 @ =gUnk_03002920
	adds r2, r1, r7
	ldrb r1, [r2, #0xf]
	str r0, [sp, #0x40]
	cmp r1, #0xe
	bne _0801A184
	ldrh r0, [r2, #2]
	subs r0, #3
	strh r0, [r2, #2]
	ldr r0, _0801A174 @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _0801A140
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	add r0, sp, #0x20
	movs r3, #0x18
	bl sub_08014230
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	ldr r1, _0801A178 @ =0xFFFF0000
	cmp r0, r1
	bne _0801A1A8
_0801A140:
	ldr r3, _0801A17C @ =gUnk_03004790
	ldr r1, _0801A170 @ =gUnk_03002920
	ldr r2, [sp, #0x40]
	mov r4, sl
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #4
	asrs r1, r1, #3
	ldrh r2, [r0, #2]
	subs r2, #0x14
	asrs r2, r2, #3
	ldr r0, _0801A180 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r3, #0x14]
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	b _0801A21E
	.align 2, 0
_0801A170: .4byte gUnk_03002920
_0801A174: .4byte gUnk_03004C20
_0801A178: .4byte 0xFFFF0000
_0801A17C: .4byte gUnk_03004790
_0801A180: .4byte gUnk_03003430
_0801A184:
	ldrh r0, [r2, #2]
	adds r0, #3
	strh r0, [r2, #2]
	ldr r0, _0801A1B4 @ =gUnk_03004C20
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _0801A1C0
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	add r0, sp, #0x24
	movs r3, #0x18
	bl sub_08014230
	ldr r0, [sp, #0x24]
	lsls r0, r0, #0x10
	ldr r1, _0801A1B8 @ =0xFFFF0000
	cmp r0, r1
	beq _0801A1C0
_0801A1A8:
	ldr r0, _0801A1BC @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	b _0801A21E
	.align 2, 0
_0801A1B4: .4byte gUnk_03004C20
_0801A1B8: .4byte 0xFFFF0000
_0801A1BC: .4byte gUnk_03004654
_0801A1C0:
	ldr r3, _0801A270 @ =gUnk_03004790
	ldr r1, _0801A274 @ =gUnk_03002920
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r1, r4, #0
	adds r1, #0xa
	asrs r1, r1, #3
	ldrh r2, [r0, #2]
	adds r2, #4
	asrs r2, r2, #3
	ldr r0, _0801A278 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r3, [r3, #0x14]
	adds r1, r1, r2
	adds r1, r3, r1
	ldrb r1, [r1]
	str r1, [sp, #0x34]
	lsrs r0, r4, #3
	adds r0, r0, r2
	adds r0, r3, r0
	add r7, sp, #0x34
	ldrb r1, [r7]
	ldrb r0, [r0]
	ldr r5, [sp, #0x34]
	cmp r5, r0
	bhs _0801A202
	adds r1, r0, #0
_0801A202:
	str r1, [sp, #0x34]
	adds r0, r4, #0
	subs r0, #0xb
	asrs r0, r0, #3
	adds r0, r0, r2
	adds r0, r3, r0
	add r6, sp, #0x34
	ldrb r1, [r6]
	ldrb r0, [r0]
	ldr r7, [sp, #0x34]
	cmp r7, r0
	bhs _0801A21C
	adds r1, r0, #0
_0801A21C:
	str r1, [sp, #0x34]
_0801A21E:
	ldr r0, _0801A27C @ =gUnk_030007F0
	ldr r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, _0801A280 @ =gUnk_03004C04
	ldr r0, [r0]
	mov r1, sl
	subs r1, #0xd
	str r1, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	cmp r2, r0
	bls _0801A238
	bl _0801AD88
_0801A238:
	ldr r0, _0801A274 @ =gUnk_03002920
	ldr r3, [sp, #0x28]
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r5, [r1, #0xf]
	adds r7, r2, #0
	cmp r5, #0x1a
	bls _0801A250
	bl _0801AD76
_0801A250:
	cmp r5, #0x19
	bne _0801A258
	bl _0801AD76
_0801A258:
	ldrb r0, [r1, #0x11]
	subs r0, #6
	cmp r0, #0x77
	bls _0801A264
	bl _0801AD76
_0801A264:
	lsls r0, r0, #2
	ldr r1, _0801A284 @ =_0801A288
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801A270: .4byte gUnk_03004790
_0801A274: .4byte gUnk_03002920
_0801A278: .4byte gUnk_03003430
_0801A27C: .4byte gUnk_030007F0
_0801A280: .4byte gUnk_03004C04
_0801A284: .4byte _0801A288
_0801A288: @ jump table
	.4byte _0801A4B8 @ case 0
	.4byte _0801AD76 @ case 1
	.4byte _0801A4B8 @ case 2
	.4byte _0801AD76 @ case 3
	.4byte _0801AD76 @ case 4
	.4byte _0801A4B8 @ case 5
	.4byte _0801AD76 @ case 6
	.4byte _0801AD76 @ case 7
	.4byte _0801AD76 @ case 8
	.4byte _0801AD76 @ case 9
	.4byte _0801AD76 @ case 10
	.4byte _0801AD76 @ case 11
	.4byte _0801AD76 @ case 12
	.4byte _0801AD76 @ case 13
	.4byte _0801AD76 @ case 14
	.4byte _0801AD76 @ case 15
	.4byte _0801AD76 @ case 16
	.4byte _0801AB3C @ case 17
	.4byte _0801AD76 @ case 18
	.4byte _0801AD76 @ case 19
	.4byte _0801AD76 @ case 20
	.4byte _0801AC7C @ case 21
	.4byte _0801AD76 @ case 22
	.4byte _0801AD76 @ case 23
	.4byte _0801AD76 @ case 24
	.4byte _0801AD76 @ case 25
	.4byte _0801AD76 @ case 26
	.4byte _0801AD76 @ case 27
	.4byte _0801A86C @ case 28
	.4byte _0801AD76 @ case 29
	.4byte _0801AD76 @ case 30
	.4byte _0801A468 @ case 31
	.4byte _0801AD76 @ case 32
	.4byte _0801A6C0 @ case 33
	.4byte _0801A6C0 @ case 34
	.4byte _0801A6C0 @ case 35
	.4byte _0801A6C0 @ case 36
	.4byte _0801A6C0 @ case 37
	.4byte _0801AD76 @ case 38
	.4byte _0801AD76 @ case 39
	.4byte _0801AD76 @ case 40
	.4byte _0801AD76 @ case 41
	.4byte _0801AD76 @ case 42
	.4byte _0801AD76 @ case 43
	.4byte _0801AD76 @ case 44
	.4byte _0801AD76 @ case 45
	.4byte _0801AD76 @ case 46
	.4byte _0801A810 @ case 47
	.4byte _0801A708 @ case 48
	.4byte _0801AD76 @ case 49
	.4byte _0801A77C @ case 50
	.4byte _0801AD76 @ case 51
	.4byte _0801AD76 @ case 52
	.4byte _0801AD76 @ case 53
	.4byte _0801AD76 @ case 54
	.4byte _0801AD76 @ case 55
	.4byte _0801A7C4 @ case 56
	.4byte _0801A630 @ case 57
	.4byte _0801AD76 @ case 58
	.4byte _0801A560 @ case 59
	.4byte _0801AD76 @ case 60
	.4byte _0801AD76 @ case 61
	.4byte _0801AD76 @ case 62
	.4byte _0801AD76 @ case 63
	.4byte _0801AD76 @ case 64
	.4byte _0801AD76 @ case 65
	.4byte _0801AD76 @ case 66
	.4byte _0801AD76 @ case 67
	.4byte _0801AD76 @ case 68
	.4byte _0801AD76 @ case 69
	.4byte _0801AD76 @ case 70
	.4byte _0801AD76 @ case 71
	.4byte _0801AD76 @ case 72
	.4byte _0801AD76 @ case 73
	.4byte _0801AD76 @ case 74
	.4byte _0801AD76 @ case 75
	.4byte _0801AD76 @ case 76
	.4byte _0801AD76 @ case 77
	.4byte _0801AD76 @ case 78
	.4byte _0801AD76 @ case 79
	.4byte _0801AD76 @ case 80
	.4byte _0801AD76 @ case 81
	.4byte _0801AD76 @ case 82
	.4byte _0801AD76 @ case 83
	.4byte _0801AD76 @ case 84
	.4byte _0801AD76 @ case 85
	.4byte _0801AD76 @ case 86
	.4byte _0801AD76 @ case 87
	.4byte _0801AD76 @ case 88
	.4byte _0801AD76 @ case 89
	.4byte _0801AD76 @ case 90
	.4byte _0801AD76 @ case 91
	.4byte _0801AD76 @ case 92
	.4byte _0801AD76 @ case 93
	.4byte _0801AD76 @ case 94
	.4byte _0801AD76 @ case 95
	.4byte _0801AD76 @ case 96
	.4byte _0801AD76 @ case 97
	.4byte _0801AD76 @ case 98
	.4byte _0801AD76 @ case 99
	.4byte _0801AD76 @ case 100
	.4byte _0801AD76 @ case 101
	.4byte _0801AD76 @ case 102
	.4byte _0801AD76 @ case 103
	.4byte _0801AD76 @ case 104
	.4byte _0801A468 @ case 105
	.4byte _0801A810 @ case 106
	.4byte _0801A5D4 @ case 107
	.4byte _0801A5D4 @ case 108
	.4byte _0801A5D4 @ case 109
	.4byte _0801A5D4 @ case 110
	.4byte _0801A708 @ case 111
	.4byte _0801A4B8 @ case 112
	.4byte _0801A4B8 @ case 113
	.4byte _0801A4B8 @ case 114
	.4byte _0801A4B8 @ case 115
	.4byte _0801A4B8 @ case 116
	.4byte _0801A4B8 @ case 117
	.4byte _0801A4B8 @ case 118
	.4byte _0801A4B8 @ case 119
_0801A468:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _0801A4B4 @ =gUnk_03002920
	adds r3, r0, r6
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #0xc
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r4, _0801A4B4 @ =gUnk_03002920
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #7
	cmp r1, r0
	blt _0801A490
	bl _0801AD76
_0801A490:
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	bgt _0801A49C
	bl _0801AD76
_0801A49C:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801A4AC
	bl _0801AD76
_0801A4AC:
	adds r0, r1, #0
	subs r0, #0x18
	b _0801A854
	.align 2, 0
_0801A4B4: .4byte gUnk_03002920
_0801A4B8:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r1, _0801A53C @ =gUnk_03002920
	adds r4, r0, r1
	ldrh r5, [r4]
	adds r1, r5, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r3, _0801A53C @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r3, [r2]
	adds r0, r3, #0
	adds r0, #8
	cmp r1, r0
	blt _0801A4E2
	bl _0801AD76
_0801A4E2:
	adds r1, #0x10
	subs r0, #0x10
	cmp r1, r0
	bgt _0801A4EE
	bl _0801AD76
_0801A4EE:
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x14
	ldrh r3, [r2, #2]
	cmp r0, r3
	blt _0801A4FE
	bl _0801AD76
_0801A4FE:
	adds r0, r3, #0
	subs r0, #0x14
	cmp r1, r0
	bgt _0801A50A
	bl _0801AD76
_0801A50A:
	ldr r4, [sp, #0x28]
	cmp sl, r4
	bne _0801A514
	bl _0801AD76
_0801A514:
	ldrb r0, [r2, #0xf]
	cmp r0, #0x13
	bne _0801A51E
	bl _0801AD76
_0801A51E:
	movs r6, #0xff
	str r6, [sp, #0x34]
	ldrb r0, [r2, #0x11]
	cmp r0, #6
	beq _0801A540
	cmp r0, #8
	beq _0801A540
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	movs r2, #2
	bl sub_0801E664
	bl _0801AD76
	.align 2, 0
_0801A53C: .4byte gUnk_03002920
_0801A540:
	ldr r7, [sp, #0x40]
	mov r0, sl
	subs r1, r7, r0
	lsls r1, r1, #2
	ldr r2, _0801A55C @ =gUnk_03002920
	adds r1, r1, r2
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #2
	movs r3, #0
	bl sub_0801E664
	bl _0801AD76
	.align 2, 0
_0801A55C: .4byte gUnk_03002920
_0801A560:
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _0801A5C8 @ =gUnk_03002920
	adds r3, r0, r5
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x10
	cmp r1, r0
	blt _0801A588
	bl _0801AD76
_0801A588:
	adds r1, #0x10
	subs r0, #0x20
	cmp r1, r0
	bgt _0801A594
	bl _0801AD76
_0801A594:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801A5A4
	bl _0801AD76
_0801A5A4:
	adds r0, r1, #0
	subs r0, #0x20
	cmp r5, r0
	bgt _0801A5AE
	b _0801AD76
_0801A5AE:
	ldr r1, _0801A5CC @ =gUnk_03000830
	ldr r0, _0801A5D0 @ =gUnk_0300363C
	ldrb r0, [r0]
	ldr r3, [sp, #0x28]
	subs r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A5C4
	b _0801AD76
_0801A5C4:
	b _0801A85A
	.align 2, 0
_0801A5C8: .4byte gUnk_03002920
_0801A5CC: .4byte gUnk_03000830
_0801A5D0: .4byte gUnk_0300363C
_0801A5D4:
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r6, _0801A62C @ =gUnk_03002920
	adds r3, r0, r6
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r4, _0801A62C @ =gUnk_03002920
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #2
	cmp r1, r0
	blt _0801A5FA
	b _0801AD76
_0801A5FA:
	adds r1, #0x10
	subs r0, r5, #2
	cmp r1, r0
	bgt _0801A604
	b _0801AD76
_0801A604:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801A612
	b _0801AD76
_0801A612:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r5, r0
	bgt _0801A61C
	b _0801AD76
_0801A61C:
	movs r5, #0xff
	str r5, [sp, #0x34]
	ldr r6, [sp, #0x28]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EAA4
	b _0801AD76
	.align 2, 0
_0801A62C: .4byte gUnk_03002920
_0801A630:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _0801A6B0 @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0xc
	cmp r1, r0
	blt _0801A656
	b _0801AD76
_0801A656:
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	bgt _0801A660
	b _0801AD76
_0801A660:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801A66E
	b _0801AD76
_0801A66E:
	adds r0, r1, #0
	subs r0, #0x19
	cmp r5, r0
	bgt _0801A678
	b _0801AD76
_0801A678:
	ldr r0, _0801A6B4 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	ldrb r0, [r3, #0x11]
	cmp r0, #0x7a
	bhi _0801A688
	b _0801AD76
_0801A688:
	ldr r6, _0801A6B8 @ =0x0000FFF0
	adds r0, r1, r6
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	movs r0, #0x2b
	bl m4aSongNumStart
	ldr r0, [sp, #0x28]
	movs r1, #2
	bl sub_08025B78
	ldr r0, _0801A6BC @ =gUnk_03003610
	mov r7, sl
	strb r7, [r0, #2]
	add r1, sp, #0x28
	ldrb r1, [r1]
	strb r1, [r0, #3]
	b _0801AD76
	.align 2, 0
_0801A6B0: .4byte gUnk_03002920
_0801A6B4: .4byte gUnk_03004654
_0801A6B8: .4byte 0x0000FFF0
_0801A6BC: .4byte gUnk_03003610
_0801A6C0:
	ldr r2, [sp, #0x40]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _0801A704 @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x10
	cmp r1, r0
	blt _0801A6E6
	b _0801AD76
_0801A6E6:
	adds r1, #0x10
	subs r0, #0x20
	cmp r1, r0
	bgt _0801A6F0
	b _0801AD76
_0801A6F0:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801A6FE
	b _0801AD76
_0801A6FE:
	adds r0, r1, #0
	subs r0, #0x10
	b _0801A854
	.align 2, 0
_0801A704: .4byte gUnk_03002920
_0801A708:
	ldr r6, [sp, #0x40]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	ldr r2, _0801A75C @ =gUnk_03002920
	adds r4, r0, r2
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #8
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r5, [r2]
	adds r0, r5, #3
	cmp r1, r0
	blt _0801A72C
	b _0801AD76
_0801A72C:
	adds r1, #0x10
	subs r0, r5, #3
	cmp r1, r0
	bgt _0801A736
	b _0801AD76
_0801A736:
	ldrh r6, [r4, #2]
	adds r1, r6, #0
	subs r1, #0x14
	ldrh r5, [r2, #2]
	adds r0, r5, #0
	subs r0, #0xc
	cmp r1, r0
	blt _0801A748
	b _0801AD76
_0801A748:
	subs r0, #8
	cmp r6, r0
	bgt _0801A750
	b _0801AD76
_0801A750:
	ldrb r0, [r2, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	bne _0801A760
	movs r0, #0x10
	b _0801A772
	.align 2, 0
_0801A75C: .4byte gUnk_03002920
_0801A760:
	cmp r0, #1
	bne _0801A768
	movs r0, #0x11
	b _0801A772
_0801A768:
	cmp r0, #0
	bne _0801A770
	movs r0, #0xf
	b _0801A772
_0801A770:
	movs r0, #0xe
_0801A772:
	strb r0, [r4, #0xf]
	movs r0, #0xa1
	bl m4aSongNumStart
	b _0801AD76
_0801A77C:
	ldr r6, [sp, #0x40]
	mov r1, sl
	subs r0, r6, r1
	lsls r0, r0, #2
	ldr r2, _0801A7C0 @ =gUnk_03002920
	adds r3, r0, r2
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r4, [sp, #0x28]
	subs r0, r7, r4
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0x20
	cmp r1, r0
	blt _0801A7A2
	b _0801AD76
_0801A7A2:
	adds r1, #0x10
	subs r0, #0x40
	cmp r1, r0
	bgt _0801A7AC
	b _0801AD76
_0801A7AC:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801A7BA
	b _0801AD76
_0801A7BA:
	adds r0, r1, #0
	subs r0, #0x16
	b _0801A854
	.align 2, 0
_0801A7C0: .4byte gUnk_03002920
_0801A7C4:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r1, _0801A80C @ =gUnk_03002920
	adds r3, r0, r1
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r4, _0801A80C @ =gUnk_03002920
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0xc
	cmp r1, r0
	blt _0801A7EC
	b _0801AD76
_0801A7EC:
	adds r1, #0x10
	subs r0, #0x18
	cmp r1, r0
	bgt _0801A7F6
	b _0801AD76
_0801A7F6:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801A804
	b _0801AD76
_0801A804:
	adds r0, r1, #0
	subs r0, #8
	b _0801A854
	.align 2, 0
_0801A80C: .4byte gUnk_03002920
_0801A810:
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	ldr r1, _0801A864 @ =gUnk_03002920
	adds r3, r0, r1
	ldrh r6, [r3]
	adds r1, r6, #0
	subs r1, #8
	ldr r2, [sp, #0x28]
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r4, _0801A864 @ =gUnk_03002920
	adds r2, r0, r4
	ldrh r5, [r2]
	adds r0, r5, #0
	adds r0, #0xf
	cmp r1, r0
	blt _0801A838
	b _0801AD76
_0801A838:
	adds r1, #0x10
	subs r0, #0x1e
	cmp r1, r0
	bgt _0801A842
	b _0801AD76
_0801A842:
	ldrh r5, [r3, #2]
	adds r0, r5, #0
	subs r0, #0x14
	ldrh r1, [r2, #2]
	cmp r0, r1
	blt _0801A850
	b _0801AD76
_0801A850:
	adds r0, r1, #0
	subs r0, #0x20
_0801A854:
	cmp r5, r0
	bgt _0801A85A
	b _0801AD76
_0801A85A:
	ldr r0, _0801A868 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	b _0801AD76
	.align 2, 0
_0801A864: .4byte gUnk_03002920
_0801A868: .4byte gUnk_03004654
_0801A86C:
	movs r5, #0
	mov ip, r5
	ldr r0, _0801A910 @ =gUnk_03005400
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	bne _0801A87A
	b _0801AD76
_0801A87A:
	adds r6, r0, #0
	ldrb r1, [r6, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A888
	b _0801AD76
_0801A888:
	ldr r1, [sp, #0x28]
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _0801A914 @ =gUnk_03002920
	adds r3, r0, r2
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801A920
	ldrh r4, [r3]
	mov r8, r4
	ldr r5, _0801A918 @ =0x081168C4
	mov sb, r5
	ldr r2, _0801A91C @ =gUnk_03004C20
	ldrb r0, [r2, #0xd]
	subs r0, #1
	lsls r5, r0, #2
	mov r6, sb
	adds r0, r5, r6
	movs r1, #0
	ldrsb r1, [r0, r1]
	add r1, r8
	ldr r4, [sp, #0x40]
	mov r6, sl
	subs r0, r4, r6
	lsls r0, r0, #2
	ldr r4, _0801A914 @ =gUnk_03002920
	adds r6, r0, r4
	ldrh r4, [r6]
	adds r0, r4, #4
	cmp r1, r0
	bge _0801A992
	mov r0, sb
	adds r0, #1
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	subs r1, r4, #4
	cmp r0, r1
	ble _0801A992
	ldrh r2, [r3, #2]
	mov r0, sb
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	ldrh r1, [r6, #2]
	cmp r0, r1
	bge _0801A992
	mov r0, sb
	adds r0, #3
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	subs r1, #0x14
	cmp r0, r1
	ble _0801A992
	movs r5, #1
	mov ip, r5
	b _0801A992
	.align 2, 0
_0801A910: .4byte gUnk_03005400
_0801A914: .4byte gUnk_03002920
_0801A918: .4byte 0x081168C4
_0801A91C: .4byte gUnk_03004C20
_0801A920:
	ldrh r6, [r3]
	mov r8, r6
	ldr r0, _0801A9C8 @ =0x081168C4
	mov sb, r0
	ldr r2, _0801A9CC @ =gUnk_03004C20
	ldrb r0, [r2, #0xd]
	subs r0, #1
	lsls r5, r0, #2
	mov r0, sb
	adds r0, #1
	adds r0, r5, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r1, r6, r1
	ldr r4, [sp, #0x40]
	mov r6, sl
	subs r0, r4, r6
	lsls r0, r0, #2
	ldr r4, _0801A9D0 @ =gUnk_03002920
	adds r6, r0, r4
	ldrh r4, [r6]
	adds r0, r4, #4
	cmp r1, r0
	bge _0801A992
	mov r1, sb
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, r8
	subs r0, r2, r0
	subs r1, r4, #4
	cmp r0, r1
	ble _0801A992
	ldrh r2, [r3, #2]
	mov r0, sb
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	ldrh r1, [r6, #2]
	cmp r0, r1
	bge _0801A992
	mov r0, sb
	adds r0, #3
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	subs r1, #0x14
	cmp r0, r1
	ble _0801A992
	movs r3, #1
	mov ip, r3
_0801A992:
	mov r4, ip
	cmp r4, #1
	bne _0801AA80
	ldr r5, _0801A9D4 @ =gUnk_03005400
	ldrb r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801AA80
	ldrb r0, [r5, #0xc]
	subs r0, #1
	strb r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0801A9D8
	ldr r2, _0801A9D0 @ =gUnk_03002920
	ldrb r1, [r5, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x11
	strb r1, [r0, #0xf]
	b _0801A9FA
	.align 2, 0
_0801A9C8: .4byte 0x081168C4
_0801A9CC: .4byte gUnk_03004C20
_0801A9D0: .4byte gUnk_03002920
_0801A9D4: .4byte gUnk_03005400
_0801A9D8:
	ldr r2, _0801AA74 @ =gUnk_03002920
	ldr r6, _0801AA78 @ =gUnk_03005400
	ldrb r1, [r6, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	ldrb r1, [r6, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r3, [r0, #0x10]
_0801A9FA:
	ldr r7, _0801AA78 @ =gUnk_03005400
	ldrb r0, [r7, #0xc]
	cmp r0, #2
	bne _0801AA0A
	movs r0, #0xd
	movs r1, #1
	bl sub_08025B78
_0801AA0A:
	ldr r2, _0801AA74 @ =gUnk_03002920
	ldr r0, _0801AA7C @ =0x000001EB
	adds r1, r2, r0
	movs r3, #0
	mov r8, r3
	movs r0, #0x19
	strb r0, [r1]
	ldr r5, [sp, #0x40]
	mov r6, sl
	subs r4, r5, r6
	lsls r4, r4, #2
	adds r4, r4, r2
	ldrh r1, [r4]
	movs r7, #0xee
	lsls r7, r7, #1
	adds r0, r2, r7
	movs r6, #0
	strh r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, #0x10
	movs r3, #0xef
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1]
	movs r5, #1
	ldr r7, _0801AA78 @ =gUnk_03005400
	strb r5, [r7, #9]
	movs r0, #1
	bl sub_0803D140
	mov r0, r8
	strh r0, [r7]
	ldr r0, [sp, #0x28]
	movs r1, #1
	bl sub_08025B78
	movs r0, #0x63
	bl m4aSongNumStart
	strb r5, [r7, #0xa]
	strb r6, [r7, #0x10]
	ldrb r0, [r7, #8]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7, #8]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	b _0801AD76
	.align 2, 0
_0801AA74: .4byte gUnk_03002920
_0801AA78: .4byte gUnk_03005400
_0801AA7C: .4byte 0x000001EB
_0801AA80:
	ldr r1, [sp, #0x28]
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r3, _0801AB2C @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r6, [r2]
	ldr r7, _0801AB30 @ =0x081168AC
	ldr r4, _0801AB34 @ =gUnk_03004C20
	ldrb r0, [r4, #0xd]
	subs r0, #1
	lsls r5, r0, #2
	adds r0, r5, r7
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r1, r6, r1
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r3, _0801AB2C @ =gUnk_03002920
	adds r4, r0, r3
	ldrh r3, [r4]
	adds r0, r3, #4
	cmp r1, r0
	blt _0801AAB4
	b _0801AD76
_0801AAB4:
	adds r0, r7, #1
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	subs r1, r3, #4
	cmp r0, r1
	bgt _0801AAC8
	b _0801AD76
_0801AAC8:
	ldrh r2, [r2, #2]
	adds r0, r7, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	ldrh r1, [r4, #2]
	cmp r0, r1
	blt _0801AADE
	b _0801AD76
_0801AADE:
	adds r0, r7, #3
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	subs r1, #0x14
	cmp r0, r1
	bgt _0801AAF2
	b _0801AD76
_0801AAF2:
	movs r0, #0x2b
	bl m4aSongNumStart
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	ldr r2, _0801AB38 @ =gUnk_03005400
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801AB12
	b _0801AD76
_0801AB12:
	ldr r4, _0801AB34 @ =gUnk_03004C20
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0801AB1C
	b _0801AD76
_0801AB1C:
	movs r0, #0xe
	strb r0, [r2, #0xa]
	ldr r0, [sp, #0x28]
	movs r1, #0x11
	bl sub_08025B78
	b _0801AD76
	.align 2, 0
_0801AB2C: .4byte gUnk_03002920
_0801AB30: .4byte 0x081168AC
_0801AB34: .4byte gUnk_03004C20
_0801AB38: .4byte gUnk_03005400
_0801AB3C:
	ldr r5, [sp, #0x28]
	subs r0, r7, r5
	lsls r0, r0, #2
	ldr r6, _0801AC24 @ =gUnk_03002920
	adds r4, r0, r6
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0801AB4E
	b _0801AD76
_0801AB4E:
	cmp r0, #3
	bne _0801AB54
	b _0801AD76
_0801AB54:
	cmp r0, #4
	bne _0801AB5A
	b _0801AD76
_0801AB5A:
	ldr r7, _0801AC28 @ =gUnk_03000830
	ldr r6, _0801AC2C @ =gUnk_0300363C
	ldrb r0, [r6]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #4
	bne _0801AB6E
	b _0801AD76
_0801AB6E:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _0801AC24 @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #8
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #0x14
	cmp r1, r0
	blt _0801AB8C
	b _0801AD76
_0801AB8C:
	adds r1, #0x10
	subs r0, #0x28
	cmp r1, r0
	bgt _0801AB96
	b _0801AD76
_0801AB96:
	ldrh r3, [r5, #2]
	adds r1, r3, #0
	subs r1, #0x14
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0xa
	cmp r1, r0
	blt _0801ABA8
	b _0801AD76
_0801ABA8:
	subs r0, #0x2c
	cmp r3, r0
	bgt _0801ABB0
	b _0801AD76
_0801ABB0:
	ldr r0, _0801AC30 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	movs r1, #1
	movs r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #9]
	orrs r1, r0
	strb r1, [r4, #9]
	movs r0, #0x13
	strb r0, [r4, #0xf]
	ldr r0, [sp, #0x28]
	movs r1, #4
	bl sub_08025B78
	ldr r5, _0801AC24 @ =gUnk_03002920
	ldr r0, _0801AC34 @ =0x000001EB
	adds r1, r5, r0
	movs r0, #0x19
	strb r0, [r1]
	ldrh r1, [r4]
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r2, #0
	strh r1, [r0]
	ldrh r0, [r4, #2]
	movs r3, #0xef
	lsls r3, r3, #1
	adds r1, r5, r3
	strh r0, [r1]
	ldrb r1, [r6]
	movs r0, #0x15
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #4
	beq _0801AC02
	b _0801AD76
_0801AC02:
	ldr r1, _0801AC38 @ =gUnk_03005400
	ldrb r0, [r1, #0xc]
	subs r0, #1
	strb r0, [r1, #0xc]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801AC3C
	adds r4, r1, #0
	ldrb r0, [r4, #0xc]
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r0, #0x11
	strb r0, [r1, #0xf]
	b _0801AC5E
	.align 2, 0
_0801AC24: .4byte gUnk_03002920
_0801AC28: .4byte gUnk_03000830
_0801AC2C: .4byte gUnk_0300363C
_0801AC30: .4byte gUnk_03004654
_0801AC34: .4byte 0x000001EB
_0801AC38: .4byte gUnk_03005400
_0801AC3C:
	ldr r5, _0801AC74 @ =gUnk_03005400
	ldrb r1, [r5, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r6, _0801AC78 @ =gUnk_03002920
	adds r0, r0, r6
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	ldrb r1, [r5, #0xc]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	strb r2, [r0, #0x10]
_0801AC5E:
	ldr r7, _0801AC74 @ =gUnk_03005400
	ldrb r0, [r7, #0xc]
	cmp r0, #2
	beq _0801AC68
	b _0801AD76
_0801AC68:
	movs r0, #0xd
	movs r1, #1
	bl sub_08025B78
	b _0801AD76
	.align 2, 0
_0801AC74: .4byte gUnk_03005400
_0801AC78: .4byte gUnk_03002920
_0801AC7C:
	ldr r1, [sp, #0x40]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _0801ACDC @ =gUnk_03002920
	adds r5, r0, r3
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #8
	ldr r6, [sp, #0x28]
	subs r0, r7, r6
	lsls r0, r0, #2
	adds r3, r0, r3
	ldrh r2, [r3]
	adds r0, r2, #0
	adds r0, #0x14
	cmp r1, r0
	bge _0801AD76
	adds r1, #0x10
	subs r0, #0x28
	cmp r1, r0
	ble _0801AD76
	ldrh r4, [r5, #2]
	adds r1, r4, #0
	subs r1, #0x14
	ldrh r2, [r3, #2]
	adds r0, r2, #0
	subs r0, #8
	cmp r1, r0
	bge _0801AD76
	subs r0, #0x20
	cmp r4, r0
	ble _0801AD76
	ldrb r0, [r3, #0xf]
	cmp r0, #0xf
	bne _0801AD76
	movs r0, #8
	strb r0, [r3, #8]
	ldr r1, _0801ACE0 @ =gUnk_03005400
	movs r0, #4
	strb r0, [r1, #0xa]
	ldrb r0, [r5, #9]
	ldrb r1, [r3, #9]
	cmp r0, r1
	bne _0801ACE4
	movs r0, #0x14
	b _0801ACE6
	.align 2, 0
_0801ACDC: .4byte gUnk_03002920
_0801ACE0: .4byte gUnk_03005400
_0801ACE4:
	movs r0, #0x13
_0801ACE6:
	strb r0, [r3, #0xf]
	ldr r3, [sp, #0x28]
	subs r2, r7, r3
	lsls r2, r2, #2
	ldr r4, _0801AE2C @ =gUnk_03002920
	adds r2, r2, r4
	ldrb r1, [r2, #0xc]
	movs r5, #0xd
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r4, r6, r7
	lsls r4, r4, #2
	ldr r0, _0801AE2C @ =gUnk_03002920
	adds r4, r4, r0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	ldr r1, _0801AE30 @ =gUnk_080E2B64
	mov sb, r1
	ldr r2, _0801AE34 @ =gUnk_03004C20
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	ldr r6, [sp, #0x3c]
	adds r3, r6, #0
	muls r3, r0, r3
	mov r8, r3
	add r1, r8
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r6, _0801AE38 @ =0x00001130
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r3, _0801AE3C @ =0x00008980
	muls r0, r3, r0
	adds r1, r1, r0
	add r1, sb
	ldrb r0, [r1, #4]
	strb r0, [r4, #9]
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	add r1, r8
	ldrb r0, [r2, #0xc]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	muls r0, r3, r0
	adds r1, r1, r0
	add r1, sb
	ldrb r1, [r1, #5]
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #0xc]
	ands r5, r1
	orrs r5, r0
	strb r5, [r4, #0xc]
_0801AD76:
	ldr r7, [sp, #0x28]
	adds r7, #1
	str r7, [sp, #0x28]
	ldr r0, _0801AE40 @ =gUnk_03004C04
	ldr r0, [r0]
	cmp r7, r0
	bhi _0801AD88
	bl _0801A238
_0801AD88:
	ldr r4, _0801AE30 @ =gUnk_080E2B64
	ldr r3, _0801AE34 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	ldr r2, [sp, #0x3c]
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r2, _0801AE38 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r2, _0801AE3C @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r4
	ldrh r1, [r1, #2]
	movs r0, #1
	ands r0, r1
	ldr r3, _0801AE44 @ =gUnk_03004654
	mov ip, r3
	cmp r0, #0
	beq _0801ADF0
	ldr r1, _0801AE2C @ =gUnk_03002920
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r2, r0, r1
	ldr r6, _0801AE48 @ =0xFFFFFEED
	adds r0, r6, #0
	ldrh r7, [r2, #4]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	ldr r1, _0801AE4C @ =0xFEC90000
	cmp r0, r1
	bls _0801ADE6
	ldrh r0, [r2, #6]
	subs r0, #0xb3
	lsls r0, r0, #0x10
	ldr r1, _0801AE50 @ =0xFF290000
	cmp r0, r1
	bhi _0801ADF0
_0801ADE6:
	ldr r1, _0801AE44 @ =gUnk_03004654
	ldr r0, [r1]
	ldrb r0, [r0, #0x1b]
	str r0, [sp, #0x34]
	mov ip, r1
_0801ADF0:
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r1, #0x1a]
	ldr r2, [sp, #0x34]
	cmp r0, r2
	bls _0801ADFE
	b _0801AF30
_0801ADFE:
	movs r0, #0x2b
	bl m4aSongNumStart
	ldr r0, _0801AE2C @ =gUnk_03002920
	ldr r3, [sp, #0x40]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r2, r1, r0
	ldrb r0, [r2, #0x11]
	cmp r0, #0x7a
	bls _0801AE58
	ldr r5, [sp, #0x34]
	cmp r5, #0xff
	beq _0801AE58
	ldr r0, [sp, #0x30]
	adds r0, #3
	ldr r1, _0801AE54 @ =0x0000FFF8
	ands r0, r1
	strh r0, [r2, #2]
	movs r0, #0x14
	strb r0, [r2, #0xf]
	b _0801B02E
	.align 2, 0
_0801AE2C: .4byte gUnk_03002920
_0801AE30: .4byte gUnk_080E2B64
_0801AE34: .4byte gUnk_03004C20
_0801AE38: .4byte 0x00001130
_0801AE3C: .4byte 0x00008980
_0801AE40: .4byte gUnk_03004C04
_0801AE44: .4byte gUnk_03004654
_0801AE48: .4byte 0xFFFFFEED
_0801AE4C: .4byte 0xFEC90000
_0801AE50: .4byte 0xFF290000
_0801AE54: .4byte 0x0000FFF8
_0801AE58:
	ldr r1, _0801AEEC @ =gUnk_03002920
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	ldr r7, _0801AEF0 @ =gUnk_080E2B64
	ldr r2, _0801AEF4 @ =gUnk_03004C20
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	ldr r5, [sp, #0x3c]
	adds r3, r5, #0
	muls r3, r0, r3
	adds r1, r1, r3
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r6, _0801AEF8 @ =0x00001130
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r5, _0801AEFC @ =0x00008980
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldrb r0, [r1, #4]
	strb r0, [r4, #9]
	ldrb r0, [r4, #0x11]
	cmp r0, #0x78
	beq _0801AEAC
	cmp r0, #0x7a
	beq _0801AEAC
	cmp r0, #0x7d
	bne _0801AF00
_0801AEAC:
	ldr r0, _0801AEEC @ =gUnk_03002920
	ldr r6, [sp, #0x40]
	mov r7, sl
	subs r4, r6, r7
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r5, _0801AEF0 @ =gUnk_080E2B64
	ldr r3, _0801AEF4 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	ldr r2, [sp, #0x3c]
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r2, _0801AEF8 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r2, _0801AEFC @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldrb r1, [r1, #5]
	lsls r1, r1, #4
	ldrb r2, [r4, #0xc]
	movs r0, #0xf
	b _0801AF28
	.align 2, 0
_0801AEEC: .4byte gUnk_03002920
_0801AEF0: .4byte gUnk_080E2B64
_0801AEF4: .4byte gUnk_03004C20
_0801AEF8: .4byte 0x00001130
_0801AEFC: .4byte 0x00008980
_0801AF00:
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r0, [r2, #0xc]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r7
	ldrb r0, [r1, #5]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
_0801AF28:
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	b _0801B02E
_0801AF30:
	ldrb r0, [r1, #0x18]
	ldr r3, [sp, #0x34]
	cmp r0, r3
	beq _0801AF3E
	ldrb r0, [r1, #0x19]
	cmp r0, r3
	bne _0801B02E
_0801AF3E:
	ldr r0, _0801AF50 @ =gUnk_03002920
	ldr r4, [sp, #0x40]
	mov r5, sl
	subs r1, r4, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	b _0801AFB8
	.align 2, 0
_0801AF50: .4byte gUnk_03002920
_0801AF54:
	ldr r0, _0801AF80 @ =gUnk_03004C20
	ldr r1, [r0, #4]
	movs r7, #7
	ands r1, r7
	cmp r1, #0
	bne _0801B02E
	mov r6, sl
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r2, _0801AF84 @ =gUnk_03002920
	adds r6, r0, r2
	ldrb r0, [r6, #8]
	cmp r0, #0xd
	bls _0801AFC2
	strb r1, [r6, #8]
	movs r0, #0x19
	strb r0, [r6, #0xf]
	mov r0, sl
	bl sub_08044F6C
	b _0801B02E
	.align 2, 0
_0801AF80: .4byte gUnk_03004C20
_0801AF84: .4byte gUnk_03002920

	thumb_func_start sub_0801AF88
sub_0801AF88: @ 0x0801AF88
	movs r0, #0x2b
	bl m4aSongNumStart
	b _0801AFB4

	thumb_func_start sub_0801AF90
sub_0801AF90: @ 0x0801AF90
	adds r0, r1, #0
	subs r0, #0x19
	strh r0, [r5, #2]
	b _0801B02E

	thumb_func_start sub_0801AF98
sub_0801AF98: @ 0x0801AF98
	ldr r3, _0801AFA0 @ =0x0000FFF8
	adds r0, r1, r3
	strh r0, [r4, #2]
	b _0801B02E
	.align 2, 0
_0801AFA0: .4byte 0x0000FFF8

	thumb_func_start sub_0801AFA4
sub_0801AFA4: @ 0x0801AFA4
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	ldr r4, [sp, #0x28]
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	movs r2, #2
	bl sub_0801E664
_0801AFB4:
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
_0801AFB8:
	movs r2, #2
	mov r3, sl
	bl sub_0801E664
	b _0801B02E
_0801AFC2:
	ldr r4, _0801B040 @ =0x0818B8D0
	ldrb r1, [r6, #8]
	adds r1, #4
	ands r1, r7
	lsls r1, r1, #1
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r5, [r6]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r4, #1
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r6, #2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #6
	movs r3, #0
	bl sub_0801E664
	ldrb r2, [r6, #8]
	adds r1, r7, #0
	ands r1, r2
	lsls r1, r1, #1
	adds r4, r1, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r3, [r6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, #1
	strb r2, [r6, #8]
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r6, [r6, #2]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #6
	movs r3, #0
	bl sub_0801E664
	movs r0, #0x57
	bl m4aSongNumStart
_0801B02E:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B040: .4byte 0x0818B8D0

	thumb_func_start sub_0801B044
sub_0801B044: @ 0x0801B044
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r6, _0801B0B0 @ =gUnk_03002920
	lsls r4, r7, #3
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r5, r0, r6
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _0801B060
	movs r0, #0x98
	bl m4aSongNumStart
_0801B060:
	ldrh r2, [r5, #8]
	adds r1, r2, #1
	strh r1, [r5, #8]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	bls _0801B070
	b _0801B3F0
_0801B070:
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801B08C
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x95
	bhi _0801B08C
	ldrh r0, [r6]
	ldrh r1, [r6, #2]
	movs r2, #0xa
	movs r3, #0
	bl sub_0801E664
_0801B08C:
	ldr r0, _0801B0B4 @ =gUnk_03005220
	adds r5, r0, #0
	adds r5, #0x50
	ldrb r4, [r5]
	adds r2, r0, #0
	cmp r4, #0
	bne _0801B0C2
	ldrh r3, [r2, #0x2a]
	movs r0, #0x2a
	ldrsh r1, [r2, r0]
	ldr r0, _0801B0B8 @ =0xFFFFFEF0
	cmp r1, r0
	ble _0801B0BC
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r2, #0x2a]
	b _0801B0C2
	.align 2, 0
_0801B0B0: .4byte gUnk_03002920
_0801B0B4: .4byte gUnk_03005220
_0801B0B8: .4byte 0xFFFFFEF0
_0801B0BC:
	movs r0, #1
	strb r0, [r5]
	strh r4, [r2, #0x2a]
_0801B0C2:
	adds r5, r2, #0
	adds r5, #0x51
	ldrb r4, [r5]
	cmp r4, #0
	bne _0801B0EA
	ldrh r3, [r2, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	ldr r0, _0801B0E0 @ =0xFFFFFF00
	cmp r1, r0
	ble _0801B0E4
	adds r0, r3, #0
	subs r0, #0x14
	strh r0, [r2, #0x2c]
	b _0801B0EA
	.align 2, 0
_0801B0E0: .4byte 0xFFFFFF00
_0801B0E4:
	movs r0, #1
	strb r0, [r5]
	strh r4, [r2, #0x2c]
_0801B0EA:
	ldrh r0, [r2, #0x2a]
	lsls r3, r0, #0x10
	cmp r3, #0
	ble _0801B170
	ldr r1, _0801B108 @ =gUnk_03002920
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r5, r1, #0
	cmp r0, #0
	bne _0801B10C
	asrs r0, r3, #0x18
	ldrh r1, [r5]
	adds r0, r0, r1
	b _0801B112
	.align 2, 0
_0801B108: .4byte gUnk_03002920
_0801B10C:
	asrs r1, r3, #0x18
	ldrh r0, [r5]
	subs r0, r0, r1
_0801B112:
	strh r0, [r5]
	adds r0, r2, #0
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0801B12A
	ldrh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	b _0801B134
_0801B12A:
	ldrh r1, [r2, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r0, [r5, #2]
	subs r0, r0, r1
_0801B134:
	strh r0, [r5, #2]
	ldr r2, _0801B158 @ =gUnk_03002920
	ldrh r1, [r2, #2]
	subs r1, #0x10
	lsls r3, r7, #3
	subs r0, r3, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	subs r0, #0x20
	adds r4, r3, #0
	cmp r1, r0
	bge _0801B160
	ldr r0, _0801B15C @ =gUnk_03005220
	adds r0, #0x52
	movs r1, #0x80
	strb r1, [r0]
	b _0801B266
	.align 2, 0
_0801B158: .4byte gUnk_03002920
_0801B15C: .4byte gUnk_03005220
_0801B160:
	ldr r0, _0801B16C @ =gUnk_03005220
	adds r0, #0x52
	movs r1, #0x40
	strb r1, [r0]
	b _0801B266
	.align 2, 0
_0801B16C: .4byte gUnk_03005220
_0801B170:
	ldr r1, _0801B1A0 @ =gUnk_03002920
	lsls r2, r7, #3
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r0, #0xb3
	bhi _0801B266
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801B1AC
	ldr r2, _0801B1A4 @ =gUnk_03004680
	ldr r3, _0801B1A8 @ =gUnk_03005288
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #0xa
	b _0801B1BA
	.align 2, 0
_0801B1A0: .4byte gUnk_03002920
_0801B1A4: .4byte gUnk_03004680
_0801B1A8: .4byte gUnk_03005288
_0801B1AC:
	ldr r2, _0801B1EC @ =gUnk_03004680
	ldr r3, _0801B1F0 @ =gUnk_03005288
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #0xa
_0801B1BA:
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1, #6]
	adds r0, #0xa
	strh r0, [r1, #6]
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801B1FC
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801B1F4
	ldrh r0, [r2]
	ldrh r1, [r5]
	adds r2, r1, #0
	adds r2, #0x1a
	b _0801B20E
	.align 2, 0
_0801B1EC: .4byte gUnk_03004680
_0801B1F0: .4byte gUnk_03005288
_0801B1F4:
	ldrh r0, [r5]
	adds r1, r0, #0
	adds r1, #0x1a
	b _0801B21E
_0801B1FC:
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801B218
	ldrh r0, [r2]
	ldrh r1, [r5]
	adds r2, r1, #0
	subs r2, #0x1a
_0801B20E:
	subs r0, r0, r2
	asrs r0, r0, #5
	adds r1, r1, r0
	strh r1, [r5]
	b _0801B228
_0801B218:
	ldrh r0, [r5]
	adds r1, r0, #0
	subs r1, #0x1a
_0801B21E:
	ldrh r2, [r2]
	subs r1, r1, r2
	asrs r1, r1, #5
	subs r0, r0, r1
	strh r0, [r5]
_0801B228:
	ldr r0, _0801B248 @ =gUnk_03005220
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0801B250
	ldr r2, _0801B24C @ =gUnk_03002920
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x10
	asrs r0, r0, #3
	adds r1, r1, r0
	b _0801B264
	.align 2, 0
_0801B248: .4byte gUnk_03005220
_0801B24C: .4byte gUnk_03002920
_0801B250:
	ldr r2, _0801B364 @ =gUnk_03002920
	ldrh r1, [r2, #2]
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	subs r0, r1, r0
	adds r0, #0x18
	asrs r0, r0, #3
	subs r1, r1, r0
_0801B264:
	strh r1, [r2, #2]
_0801B266:
	ldr r0, _0801B368 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #4
	beq _0801B276
	movs r0, #0
	movs r1, #4
	bl sub_08025B78
_0801B276:
	ldr r6, _0801B364 @ =gUnk_03002920
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r5, r0, r6
	ldrh r0, [r5, #8]
	cmp r0, #0xb4
	bne _0801B2A2
	movs r0, #0x99
	bl m4aSongNumStart
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0801B36C @ =gUnk_03005220
	movs r2, #0
	movs r0, #2
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x2a]
	strb r2, [r6, #0x10]
	movs r0, #0x1c
	strb r0, [r6, #0xf]
_0801B2A2:
	ldrh r0, [r5, #8]
	subs r0, #0xbf
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bhi _0801B2D0
	ldr r2, _0801B36C @ =gUnk_03005220
	ldrh r3, [r2, #0x2a]
	movs r0, #0x2a
	ldrsh r1, [r2, r0]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801B2C4
	ldrh r1, [r5]
	adds r0, r3, r1
	strh r0, [r5]
_0801B2C4:
	ldrh r0, [r2, #0x2a]
	subs r0, #1
	strh r0, [r2, #0x2a]
	ldrh r0, [r2, #0x2c]
	subs r0, #1
	strh r0, [r2, #0x2c]
_0801B2D0:
	ldr r0, _0801B364 @ =gUnk_03002920
	subs r1, r4, r7
	lsls r1, r1, #2
	adds r7, r1, r0
	ldrh r6, [r7, #8]
	adds r0, r6, #0
	subs r0, #0xc4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1c
	bls _0801B2E8
	b _0801B676
_0801B2E8:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0801B2F2
	b _0801B676
_0801B2F2:
	ldrb r0, [r7, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801B37C
	ldr r4, _0801B370 @ =gUnk_03004680
	ldr r2, _0801B374 @ =gUnk_03005288
	ldrb r1, [r2]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r3, _0801B378 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x3d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r1, [r2]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r0, [r7, #8]
	adds r0, #0x3d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1, #6]
	ldrb r1, [r2]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r0, [r7, #8]
	adds r0, #0x3d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	ldrb r1, [r2]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r0, [r7, #8]
	adds r0, #0x3d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1, #4]
	b _0801B676
	.align 2, 0
_0801B364: .4byte gUnk_03002920
_0801B368: .4byte gUnk_03000830
_0801B36C: .4byte gUnk_03005220
_0801B370: .4byte gUnk_03004680
_0801B374: .4byte gUnk_03005288
_0801B378: .4byte gSineTable
_0801B37C:
	ldr r5, _0801B3E4 @ =gUnk_03004680
	ldr r3, _0801B3E8 @ =gUnk_03005288
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r4, _0801B3EC @ =gSineTable
	movs r2, #0xc3
	subs r0, r2, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r0, [r7, #8]
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1, #6]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r0, [r7, #8]
	subs r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r4
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	ldrb r0, [r3]
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r1, [r7, #8]
	subs r2, r2, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x17
	adds r2, r2, r4
	ldrh r1, [r2]
	strh r1, [r0, #4]
	b _0801B676
	.align 2, 0
_0801B3E4: .4byte gUnk_03004680
_0801B3E8: .4byte gUnk_03005288
_0801B3EC: .4byte gSineTable
_0801B3F0:
	adds r0, r2, #0
	subs r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3a
	bhi _0801B46C
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf1
	bne _0801B412
	movs r0, #0x9a
	bl m4aSongNumStart
	adds r0, r7, #0
	movs r1, #1
	bl sub_08025B78
_0801B412:
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B444
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldr r1, _0801B440 @ =gUnk_03003430
	adds r2, r1, #0
	adds r2, #0x40
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0801B676
	.align 2, 0
_0801B440: .4byte gUnk_03003430
_0801B444:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	ldrh r0, [r5, #2]
	subs r0, #1
	strh r0, [r5, #2]
	ldr r1, _0801B468 @ =gUnk_03003430
	adds r2, r1, #0
	adds r2, #0x40
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0801B676
	.align 2, 0
_0801B468: .4byte gUnk_03003430
_0801B46C:
	ldr r3, _0801B49C @ =0xFFFFFED4
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bls _0801B47A
	b _0801B676
_0801B47A:
	lsls r1, r1, #0x10
	ldr r0, _0801B4A0 @ =0x012D0000
	cmp r1, r0
	bne _0801B502
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0x10]
	strb r1, [r6, #0xf]
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801B4A4
	ldrh r0, [r5]
	adds r0, #0x20
	b _0801B4A8
	.align 2, 0
_0801B49C: .4byte 0xFFFFFED4
_0801B4A0: .4byte 0x012D0000
_0801B4A4:
	ldrh r0, [r5]
	subs r0, #0x20
_0801B4A8:
	strh r0, [r6]
	ldr r3, _0801B560 @ =gUnk_03002920
	lsls r4, r7, #3
	subs r2, r4, r7
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrh r0, [r2, #2]
	subs r0, #0x20
	strh r0, [r3, #2]
	ldrb r1, [r3, #0xe]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #0xe]
	ldr r1, _0801B564 @ =gUnk_03004680
	ldr r0, _0801B568 @ =gUnk_03005288
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	ldrb r0, [r2, #0xc]
	movs r1, #0xc
	ands r1, r0
	ldrb r2, [r3, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldr r1, _0801B56C @ =gUnk_03005220
	ldr r0, _0801B570 @ =0x0000FFFA
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x2a]
	adds r0, r7, #0
	movs r1, #2
	bl sub_08025B78
	movs r0, #0x9b
	bl m4aSongNumStart
	movs r0, #0x26
	bl m4aSongNumStart
_0801B502:
	ldr r1, _0801B560 @ =gUnk_03002920
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldr r3, _0801B574 @ =0xFFFFFED3
	adds r0, r3, #0
	ldrh r3, [r2, #8]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r1, #0
	cmp r0, #0x12
	bhi _0801B590
	ldr r3, _0801B56C @ =gUnk_03005220
	ldrh r0, [r3, #0x2a]
	adds r1, r0, #1
	strh r1, [r3, #0x2a]
	ldrh r0, [r3, #0x2c]
	adds r0, #1
	strh r0, [r3, #0x2c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bgt _0801B590
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #0x2a]
	subs r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r2, #8]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801B57C
	ldr r1, _0801B578 @ =gUnk_03003430
	adds r2, r1, #0
	adds r2, #0x40
	ldrh r0, [r2]
	adds r0, #3
	strh r0, [r2]
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #1
	b _0801B58E
	.align 2, 0
_0801B560: .4byte gUnk_03002920
_0801B564: .4byte gUnk_03004680
_0801B568: .4byte gUnk_03005288
_0801B56C: .4byte gUnk_03005220
_0801B570: .4byte 0x0000FFFA
_0801B574: .4byte 0xFFFFFED3
_0801B578: .4byte gUnk_03003430
_0801B57C:
	ldr r1, _0801B5B0 @ =gUnk_03003430
	adds r2, r1, #0
	adds r2, #0x40
	ldrh r0, [r2]
	subs r0, #3
	strh r0, [r2]
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
_0801B58E:
	strh r0, [r1]
_0801B590:
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801B5B8
	ldrh r0, [r5]
	adds r2, r0, #3
	ldr r1, _0801B5B4 @ =gUnk_03005468
	ldrh r0, [r1, #4]
	adds r0, #0x18
	cmp r2, r0
	bge _0801B5C8
	b _0801B5C6
	.align 2, 0
_0801B5B0: .4byte gUnk_03003430
_0801B5B4: .4byte gUnk_03005468
_0801B5B8:
	ldrh r0, [r5]
	subs r2, r0, #3
	ldr r1, _0801B630 @ =gUnk_03005468
	ldrh r0, [r1]
	subs r0, #0x18
	cmp r2, r0
	ble _0801B5C8
_0801B5C6:
	strh r2, [r5]
_0801B5C8:
	adds r3, r5, #0
	ldrh r0, [r3, #2]
	subs r2, r0, #3
	ldrh r0, [r1, #2]
	subs r0, #0x18
	cmp r2, r0
	ble _0801B5D8
	strh r2, [r3, #2]
_0801B5D8:
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r1, [r4, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801B5F4
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	movs r2, #8
	movs r3, #0
	bl sub_0801E664
_0801B5F4:
	ldr r0, _0801B634 @ =gUnk_03000830
	ldrb r0, [r0]
	cmp r0, #2
	beq _0801B604
	movs r0, #0
	movs r1, #2
	bl sub_08025B78
_0801B604:
	ldrh r1, [r4, #8]
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bne _0801B676
	movs r3, #0
	ldr r1, _0801B638 @ =gUnk_03003510
	adds r5, r1, #0
	adds r5, #0x78
	ldrb r0, [r5]
	adds r0, #1
	adds r4, r1, #0
	cmp r3, r0
	bhs _0801B658
	adds r7, r4, #0
	subs r2, r4, #4
	ldr r6, _0801B63C @ =sub_080264A4
	adds r1, r5, #0
_0801B628:
	cmp r3, #4
	bne _0801B640
	str r6, [r7, #0x38]
	b _0801B64C
	.align 2, 0
_0801B630: .4byte gUnk_03005468
_0801B634: .4byte gUnk_03000830
_0801B638: .4byte gUnk_03003510
_0801B63C: .4byte sub_080264A4
_0801B640:
	cmp r3, #4
	bls _0801B648
	ldr r0, [r2]
	b _0801B64A
_0801B648:
	ldr r0, [r2, #4]
_0801B64A:
	str r0, [r2, #0x2c]
_0801B64C:
	adds r2, #4
	adds r3, #1
	ldrb r0, [r1]
	adds r0, #1
	cmp r3, r0
	blo _0801B628
_0801B658:
	cmp r3, #3
	bls _0801B676
	adds r1, r4, #0
	adds r1, #0x78
	ldrb r0, [r1]
	adds r0, #1
	adds r3, r4, #0
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	str r2, [r0]
_0801B676:
	ldr r1, _0801B684 @ =gUnk_03005220
	movs r0, #0
	strh r0, [r1, #0x28]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B684: .4byte gUnk_03005220

	thumb_func_start sub_0801B688
sub_0801B688: @ 0x0801B688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r2, #1
	ldr r3, _0801B6DC @ =gUnk_03005220
	adds r0, r3, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r5
	beq _0801B6A8
	b _0801B7B0
_0801B6A8:
	ldr r6, _0801B6E0 @ =gUnk_03002920
	ldrh r0, [r6]
	lsls r4, r5, #3
	subs r1, r4, r5
	lsls r1, r1, #2
	adds r7, r1, r6
	ldrh r1, [r7]
	subs r0, r0, r1
	str r2, [sp]
	str r3, [sp, #4]
	bl Abs
	mov r8, r4
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r0, #4
	ble _0801B6CC
	movs r2, #3
_0801B6CC:
	ldrh r0, [r6]
	ldrh r1, [r7]
	cmp r0, r1
	bhs _0801B6E4
	adds r0, r3, #0
	adds r0, #0x56
	strb r2, [r0]
	b _0801B6FA
	.align 2, 0
_0801B6DC: .4byte gUnk_03005220
_0801B6E0: .4byte gUnk_03002920
_0801B6E4:
	cmp r0, r1
	bls _0801B6F2
	rsbs r1, r2, #0
	adds r0, r3, #0
	adds r0, #0x56
	strb r1, [r0]
	b _0801B6FA
_0801B6F2:
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #0
	strb r0, [r1]
_0801B6FA:
	ldr r4, _0801B76C @ =gUnk_03004790
	ldr r6, _0801B770 @ =gUnk_03002920
	ldrh r3, [r6]
	adds r1, r3, #0
	adds r1, #0xa
	asrs r1, r1, #3
	ldrh r7, [r6, #2]
	adds r2, r7, #0
	adds r2, #8
	asrs r2, r2, #3
	ldr r0, _0801B774 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r4, #0x14]
	adds r1, r1, r2
	adds r1, r0, r1
	ldrb r4, [r1]
	subs r3, #0xb
	asrs r3, r3, #3
	adds r3, r3, r2
	adds r0, r0, r3
	adds r1, r4, #0
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0801B730
	adds r1, r0, #0
_0801B730:
	ldr r0, _0801B778 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	cmp r0, r1
	bls _0801B7A0
	mov r1, r8
	subs r0, r1, r5
	lsls r0, r0, #2
	adds r4, r0, r6
	ldrh r0, [r4, #2]
	adds r0, #0x18
	subs r0, r7, r0
	bl Abs
	movs r2, #1
	cmp r0, #4
	ble _0801B754
	movs r2, #3
_0801B754:
	ldrh r0, [r6, #2]
	adds r1, r0, #0
	subs r1, #0x18
	ldrh r0, [r4, #2]
	cmp r1, r0
	ble _0801B780
	ldr r0, _0801B77C @ =gUnk_03005220
	rsbs r1, r2, #0
	adds r0, #0x57
	strb r1, [r0]
	b _0801B806
	.align 2, 0
_0801B76C: .4byte gUnk_03004790
_0801B770: .4byte gUnk_03002920
_0801B774: .4byte gUnk_03003430
_0801B778: .4byte gUnk_03004654
_0801B77C: .4byte gUnk_03005220
_0801B780:
	cmp r1, r0
	bge _0801B790
	ldr r0, _0801B78C @ =gUnk_03005220
	adds r0, #0x57
	strb r2, [r0]
	b _0801B806
	.align 2, 0
_0801B78C: .4byte gUnk_03005220
_0801B790:
	ldr r0, _0801B79C @ =gUnk_03005220
	adds r0, #0x57
	movs r1, #0
	strb r1, [r0]
	b _0801B806
	.align 2, 0
_0801B79C: .4byte gUnk_03005220
_0801B7A0:
	ldr r0, _0801B7AC @ =gUnk_03005220
	adds r0, #0x57
	movs r1, #0xff
	strb r1, [r0]
	b _0801B806
	.align 2, 0
_0801B7AC: .4byte gUnk_03005220
_0801B7B0:
	ldr r1, _0801B890 @ =gUnk_03000830
	ldr r0, _0801B894 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r2, r5, #3
	mov r8, r2
	cmp r0, #2
	beq _0801B806
	ldr r4, _0801B898 @ =gUnk_03002920
	ldrh r3, [r4]
	adds r0, r3, #0
	subs r0, #0xc
	subs r1, r2, r5
	lsls r1, r1, #2
	adds r6, r1, r4
	ldrh r2, [r6]
	adds r1, r2, #0
	adds r1, #0xd
	cmp r0, r1
	bge _0801B806
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r2, #0
	subs r0, #0xd
	cmp r1, r0
	ble _0801B806
	ldrh r3, [r4, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r6, #2]
	subs r0, r2, #3
	cmp r1, r0
	bge _0801B806
	subs r0, #0x12
	cmp r3, r0
	ble _0801B806
	adds r0, r5, #0
	movs r1, #2
	bl sub_08025B78
_0801B806:
	ldr r0, _0801B898 @ =gUnk_03002920
	mov r7, r8
	subs r1, r7, r5
	lsls r1, r1, #2
	adds r3, r1, r0
	ldrb r6, [r3, #0xc]
	lsrs r1, r6, #4
	mov sl, r0
	cmp r1, #0
	bne _0801B8E0
	ldr r0, _0801B89C @ =gUnk_080E2B64
	mov sb, r0
	ldr r4, _0801B8A0 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r5, #0
	subs r2, #0xd
	movs r0, #0x2c
	muls r2, r0, r2
	adds r1, r1, r2
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r7, _0801B8A4 @ =0x00001130
	muls r0, r7, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r7, _0801B8A8 @ =0x00008980
	mov ip, r7
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, r1, r0
	add r1, sb
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	ldrb r1, [r1, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhi _0801B8AC
	movs r0, #0xf
	ands r0, r6
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r2, _0801B8A4 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, r1, r0
	add r1, sb
	ldrb r0, [r1, #4]
	subs r0, #0x14
	strb r0, [r3, #8]
	b _0801B902
	.align 2, 0
_0801B890: .4byte gUnk_03000830
_0801B894: .4byte gUnk_0300363C
_0801B898: .4byte gUnk_03002920
_0801B89C: .4byte gUnk_080E2B64
_0801B8A0: .4byte gUnk_03004C20
_0801B8A4: .4byte 0x00001130
_0801B8A8: .4byte 0x00008980
_0801B8AC:
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r2, _0801B8DC @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	adds r1, r1, r0
	add r1, sb
	ldrb r0, [r1, #4]
	subs r0, #0x14
	ldrb r3, [r3, #8]
	cmp r0, r3
	bge _0801B8D8
	b _0801BB4C
_0801B8D8:
	b _0801B902
	.align 2, 0
_0801B8DC: .4byte 0x00001130
_0801B8E0:
	ldrb r0, [r3, #8]
	subs r1, r0, #1
	strb r1, [r3, #8]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0801B8F8
	movs r0, #0xf
	ands r0, r6
	strb r0, [r3, #0xc]
	movs r0, #0x14
	strb r0, [r3, #8]
	b _0801B902
_0801B8F8:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0801B902
	b _0801BB4C
_0801B902:
	mov r1, r8
	subs r0, r1, r5
	lsls r0, r0, #2
	add r0, sl
	ldrb r0, [r0, #0x11]
	subs r0, #0x2f
	cmp r0, #4
	bls _0801B914
	b _0801BB4C
_0801B914:
	lsls r0, r0, #2
	ldr r1, _0801B920 @ =_0801B924
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B920: .4byte _0801B924
_0801B924: @ jump table
	.4byte _0801B938 @ case 0
	.4byte _0801B9A4 @ case 1
	.4byte _0801BA10 @ case 2
	.4byte _0801BA7C @ case 3
	.4byte _0801BAEC @ case 4
_0801B938:
	mov r2, r8
	subs r4, r2, r5
	lsls r4, r4, #2
	add r4, sl
	ldr r7, _0801B994 @ =gUnk_080E2B64
	mov r8, r7
	ldr r3, _0801B998 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r5, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r5, _0801B99C @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r2, _0801B9A0 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r3, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	b _0801BB4C
	.align 2, 0
_0801B994: .4byte gUnk_080E2B64
_0801B998: .4byte gUnk_03004C20
_0801B99C: .4byte 0x00001130
_0801B9A0: .4byte 0x00008980
_0801B9A4:
	mov r0, r8
	subs r3, r0, r5
	lsls r3, r3, #2
	add r3, sl
	ldr r1, _0801BA00 @ =gUnk_080E2B64
	mov r8, r1
	ldr r4, _0801BA04 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r5, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r5, _0801BA08 @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801BA0C @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	ldrb r7, [r3, #8]
	adds r0, r0, r7
	strh r0, [r3]
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1, #2]
	b _0801BB4A
	.align 2, 0
_0801BA00: .4byte gUnk_080E2B64
_0801BA04: .4byte gUnk_03004C20
_0801BA08: .4byte 0x00001130
_0801BA0C: .4byte 0x00008980
_0801BA10:
	mov r0, r8
	subs r3, r0, r5
	lsls r3, r3, #2
	add r3, sl
	ldr r1, _0801BA6C @ =gUnk_080E2B64
	mov r8, r1
	ldr r4, _0801BA70 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r5, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r5, _0801BA74 @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801BA78 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	strh r0, [r3]
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1, #2]
	ldrb r2, [r3, #8]
	adds r0, r0, r2
	b _0801BB4A
	.align 2, 0
_0801BA6C: .4byte gUnk_080E2B64
_0801BA70: .4byte gUnk_03004C20
_0801BA74: .4byte 0x00001130
_0801BA78: .4byte 0x00008980
_0801BA7C:
	mov r7, r8
	subs r3, r7, r5
	lsls r3, r3, #2
	add r3, sl
	ldr r0, _0801BADC @ =gUnk_080E2B64
	mov r8, r0
	ldr r4, _0801BAE0 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r5, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r5, _0801BAE4 @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801BAE8 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	ldrb r1, [r3, #8]
	adds r0, r0, r1
	strh r0, [r3]
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1, #2]
	ldrb r2, [r3, #8]
	adds r0, r0, r2
	b _0801BB4A
	.align 2, 0
_0801BADC: .4byte gUnk_080E2B64
_0801BAE0: .4byte gUnk_03004C20
_0801BAE4: .4byte 0x00001130
_0801BAE8: .4byte 0x00008980
_0801BAEC:
	mov r7, r8
	subs r3, r7, r5
	lsls r3, r3, #2
	add r3, sl
	ldr r0, _0801BB5C @ =gUnk_080E2B64
	mov r8, r0
	ldr r4, _0801BB60 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r5, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r5, _0801BB64 @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801BB68 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	ldrb r1, [r3, #8]
	adds r0, r0, r1
	strh r0, [r3]
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrb r2, [r3, #8]
	ldrh r0, [r1, #2]
	subs r0, r0, r2
_0801BB4A:
	strh r0, [r3, #2]
_0801BB4C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BB5C: .4byte gUnk_080E2B64
_0801BB60: .4byte gUnk_03004C20
_0801BB64: .4byte 0x00001130
_0801BB68: .4byte 0x00008980

	thumb_func_start sub_0801BB6C
sub_0801BB6C: @ 0x0801BB6C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0801BBC4 @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x46
	ldrb r2, [r1]
	adds r3, r0, #0
	cmp r2, #0
	beq _0801BB82
	b _0801BCB6
_0801BB82:
	adds r4, r3, #0
	adds r4, #0x3f
	ldrb r0, [r4]
	cmp r0, r5
	beq _0801BB8E
	b _0801BCB6
_0801BB8E:
	ldr r0, _0801BBC8 @ =gHeldKeys
	ldrh r1, [r0]
	ldr r0, _0801BBCC @ =gUnk_03005284
	ldr r0, [r0]
	ldrb r0, [r0, #0x1d]
	ands r1, r0
	cmp r1, #0
	beq _0801BBDC
	ldr r0, _0801BBD0 @ =gUnk_030034F0
	ldrh r0, [r0]
	cmp r0, #0x1d
	bhi _0801BBDC
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801BBD4
	adds r0, r3, #0
	adds r0, #0x45
	strb r2, [r0]
	adds r0, #0x12
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	strb r2, [r4]
	b _0801BCB6
	.align 2, 0
_0801BBC4: .4byte gUnk_03005220
_0801BBC8: .4byte gHeldKeys
_0801BBCC: .4byte gUnk_03005284
_0801BBD0: .4byte gUnk_030034F0
_0801BBD4:
	adds r1, r3, #0
	adds r1, #0x45
	movs r0, #1
	strb r0, [r1]
_0801BBDC:
	ldr r2, _0801BC80 @ =gUnk_03002920
	lsls r1, r5, #3
	subs r0, r1, r5
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrb r0, [r4, #8]
	adds r6, r1, #0
	cmp r0, #0
	bne _0801BC9C
	ldr r2, _0801BC84 @ =0x080D90D0
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #8]
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x1c
	adds r1, r3, #0
	adds r1, #0x56
	strb r0, [r1]
	ldrb r0, [r4, #9]
	adds r1, r0, #1
	strb r1, [r4, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	adds r1, r3, #0
	adds r1, #0x57
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801BC36
	ldrb r0, [r4, #9]
	cmp r0, #6
	bls _0801BC36
	strb r1, [r4, #8]
_0801BC36:
	ldr r1, _0801BC80 @ =gUnk_03002920
	subs r0, r6, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0801BCA8
	adds r1, r3, #0
	adds r1, #0x57
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #0x19
	strb r0, [r1]
	adds r1, #2
	strb r0, [r1]
	adds r1, #6
	strb r0, [r1]
	subs r1, #9
	movs r0, #1
	strb r0, [r1]
	movs r1, #0
	ldr r0, _0801BC88 @ =0x0000FCB0
	strh r0, [r3, #0x28]
	adds r0, r3, #0
	adds r0, #0x30
	strb r1, [r0]
	adds r0, #0x12
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801BC8C
	movs r0, #0
	movs r1, #2
	bl sub_08025B78
	b _0801BC94
	.align 2, 0
_0801BC80: .4byte gUnk_03002920
_0801BC84: .4byte 0x080D90D0
_0801BC88: .4byte 0x0000FCB0
_0801BC8C:
	movs r0, #0
	movs r1, #0x18
	bl sub_08025B78
_0801BC94:
	movs r0, #0x59
	bl m4aSongNumStart
	b _0801BCA8
_0801BC9C:
	adds r0, r3, #0
	adds r0, #0x57
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
_0801BCA8:
	ldr r0, _0801BCBC @ =gUnk_03002920
	subs r1, r6, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	subs r0, #1
	strb r0, [r1, #8]
_0801BCB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801BCBC: .4byte gUnk_03002920

	thumb_func_start sub_0801BCC0
sub_0801BCC0: @ 0x0801BCC0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _0801BD40 @ =gUnk_03002920
	ldrh r4, [r5]
	adds r2, r4, #0
	subs r2, #0xc
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r6, r1, r5
	ldrh r3, [r6]
	adds r0, r3, #0
	adds r0, #0x27
	cmp r2, r0
	bge _0801BD38
	adds r1, r4, #0
	adds r1, #0xc
	subs r0, r3, #7
	cmp r1, r0
	ble _0801BD38
	ldrh r2, [r5, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r6, #2]
	cmp r0, r1
	bge _0801BD38
	adds r0, r1, #0
	subs r0, #0xa
	cmp r2, r0
	ble _0801BD38
	ldr r4, _0801BD44 @ =gUnk_03005220
	movs r2, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x16]
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r2, [r0]
	subs r0, #0xc
	strb r2, [r0]
	movs r0, #0x26
	bl m4aSongNumStart
	movs r0, #0xa1
	bl m4aSongNumStart
	movs r0, #0
	movs r1, #2
	bl sub_08025B78
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r4, #0x28]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
_0801BD38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD40: .4byte gUnk_03002920
_0801BD44: .4byte gUnk_03005220

	thumb_func_start sub_0801BD48
sub_0801BD48: @ 0x0801BD48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0801BD78 @ =gUnk_03002920
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x11]
	subs r0, #0x27
	adds r6, r1, #0
	cmp r0, #4
	bls _0801BD6C
	b _0801C142
_0801BD6C:
	lsls r0, r0, #2
	ldr r1, _0801BD7C @ =_0801BD80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BD78: .4byte gUnk_03002920
_0801BD7C: .4byte _0801BD80
_0801BD80: @ jump table
	.4byte _0801BD94 @ case 0
	.4byte _0801BFF0 @ case 1
	.4byte _0801BEA0 @ case 2
	.4byte _0801BEA0 @ case 3
	.4byte _0801C0A8 @ case 4
_0801BD94:
	lsls r2, r4, #3
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r3, r0, r6
	ldrb r1, [r3, #8]
	ldrb r0, [r3, #9]
	subs r0, #0xa
	cmp r1, r0
	bge _0801BDE8
	ldrb r0, [r3, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801BDCC
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	ldr r1, _0801BDC8 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801BDFA
	adds r1, #0x57
	movs r0, #0xff
	b _0801BDF8
	.align 2, 0
_0801BDC8: .4byte gUnk_03005220
_0801BDCC:
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ldr r1, _0801BDE4 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801BDFA
	adds r1, #0x57
	movs r0, #1
	b _0801BDF8
	.align 2, 0
_0801BDE4: .4byte gUnk_03005220
_0801BDE8:
	ldr r1, _0801BE94 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801BDFA
	adds r1, #0x57
	movs r0, #0
_0801BDF8:
	strb r0, [r1]
_0801BDFA:
	subs r0, r2, r4
	lsls r4, r0, #2
	adds r3, r4, r6
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	ldrb r1, [r3, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhs _0801BE26
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #8]
_0801BE26:
	ldrb r0, [r3, #0xc]
	lsrs r0, r0, #4
	cmp r0, #1
	beq _0801BE30
	b _0801C142
_0801BE30:
	ldr r0, _0801BE98 @ =gUnk_03003500
	ldr r7, [r0]
	ldr r0, _0801BE9C @ =gUnk_03004664
	ldr r0, [r0]
	cmp r7, r0
	bls _0801BE3E
	b _0801C142
_0801BE3E:
	mov ip, r4
	mov r8, r0
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r5, r0, r6
_0801BE4A:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x1a
	bhi _0801BE8A
	ldrb r0, [r5, #0x11]
	cmp r0, #0x25
	beq _0801BE5A
	cmp r0, #0x6f
	bne _0801BE8A
_0801BE5A:
	mov r0, ip
	adds r4, r0, r6
	ldrh r2, [r4]
	adds r1, r2, #0
	subs r1, #0x10
	ldrh r3, [r5]
	adds r0, r3, #7
	cmp r1, r0
	bge _0801BE8A
	adds r1, #0x20
	subs r0, #0x16
	cmp r1, r0
	ble _0801BE8A
	ldrh r3, [r4, #2]
	adds r0, r3, #0
	subs r0, #0x10
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _0801BE8A
	adds r0, r1, #0
	subs r0, #0x18
	cmp r3, r0
	ble _0801BE8A
	b _0801C120
_0801BE8A:
	adds r5, #0x1c
	adds r7, #1
	cmp r7, r8
	bls _0801BE4A
	b _0801C142
	.align 2, 0
_0801BE94: .4byte gUnk_03005220
_0801BE98: .4byte gUnk_03003500
_0801BE9C: .4byte gUnk_03004664
_0801BEA0:
	lsls r2, r4, #3
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r3, r0, r6
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r3, #9]
	subs r1, #0xa
	cmp r0, r1
	bge _0801BF00
	ldrb r0, [r3, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801BEE0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldr r1, _0801BEDC @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801BF12
	adds r1, #0x56
	movs r0, #1
	b _0801BF10
	.align 2, 0
_0801BEDC: .4byte gUnk_03005220
_0801BEE0:
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	ldr r1, _0801BEFC @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801BF12
	adds r1, #0x56
	ldrb r0, [r1]
	orrs r0, r5
	b _0801BF10
	.align 2, 0
_0801BEFC: .4byte gUnk_03005220
_0801BF00:
	ldr r1, _0801BFB4 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801BF12
	adds r1, #0x56
	movs r0, #0
_0801BF10:
	strb r0, [r1]
_0801BF12:
	subs r0, r2, r4
	lsls r4, r0, #2
	adds r3, r4, r6
	ldrb r0, [r3, #9]
	ldrb r1, [r3, #8]
	cmp r0, r1
	bhs _0801BF36
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #8]
_0801BF36:
	ldrb r1, [r3, #8]
	ldrb r0, [r3, #9]
	subs r0, #0xa
	cmp r1, r0
	blt _0801BF42
	b _0801C142
_0801BF42:
	ldr r0, _0801BFB8 @ =gUnk_03003500
	ldr r7, [r0]
	ldr r0, _0801BFBC @ =gUnk_03004664
	ldr r1, [r0]
	mov sl, r0
	cmp r7, r1
	bls _0801BF52
	b _0801C142
_0801BF52:
	mov ip, r6
	mov sb, r4
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r6, r0, r6
	movs r0, #0xf
	mov r8, r0
_0801BF62:
	ldrb r0, [r6, #0xf]
	cmp r0, #0x1a
	bhi _0801BFE2
	ldrb r0, [r6, #0x11]
	cmp r0, #0x25
	beq _0801BF72
	cmp r0, #0x6f
	bne _0801BFE2
_0801BF72:
	mov r3, sb
	add r3, ip
	ldrh r4, [r3]
	adds r1, r4, #0
	subs r1, #0x12
	ldrh r5, [r6]
	adds r0, r5, #7
	cmp r1, r0
	bge _0801BFE2
	adds r1, #0x24
	subs r0, #0x16
	cmp r1, r0
	ble _0801BFE2
	ldrh r2, [r3, #2]
	adds r0, r2, #0
	subs r0, #0x10
	ldrh r1, [r6, #2]
	cmp r0, r1
	bge _0801BFE2
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	ble _0801BFE2
	cmp r4, r5
	bls _0801BFC0
	ldrb r1, [r3, #0xc]
	lsrs r0, r1, #4
	cmp r0, #0
	bne _0801BFAE
	b _0801C142
_0801BFAE:
	mov r0, r8
	ands r0, r1
	b _0801BFD2
	.align 2, 0
_0801BFB4: .4byte gUnk_03005220
_0801BFB8: .4byte gUnk_03003500
_0801BFBC: .4byte gUnk_03004664
_0801BFC0:
	ldrb r1, [r3, #0xc]
	lsrs r0, r1, #4
	cmp r0, #1
	bne _0801BFCA
	b _0801C142
_0801BFCA:
	mov r0, r8
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
_0801BFD2:
	strb r0, [r3, #0xc]
	ldrb r0, [r3, #9]
	subs r0, #0xa
	ldrb r1, [r3, #8]
	subs r0, r0, r1
	subs r0, #1
	strb r0, [r3, #8]
	b _0801C142
_0801BFE2:
	adds r6, #0x1c
	adds r7, #1
	mov r1, sl
	ldr r0, [r1]
	cmp r7, r0
	bls _0801BF62
	b _0801C142
_0801BFF0:
	lsls r2, r4, #3
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r3, r0, r6
	ldrb r1, [r3, #8]
	ldrb r0, [r3, #9]
	subs r0, #0x28
	cmp r1, r0
	bge _0801C064
	ldrb r0, [r3, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801C038
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	adds r1, r4, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r0, #2]
	subs r1, #1
	strh r1, [r0, #2]
	ldr r1, _0801C034 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801C076
	adds r1, #0x57
	movs r0, #0xff
	b _0801C074
	.align 2, 0
_0801C034: .4byte gUnk_03005220
_0801C038:
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	adds r1, r4, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r0, #2]
	adds r1, #1
	strh r1, [r0, #2]
	ldr r1, _0801C060 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801C076
	adds r1, #0x57
	movs r0, #1
	b _0801C074
	.align 2, 0
_0801C060: .4byte gUnk_03005220
_0801C064:
	ldr r1, _0801C0A4 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r4
	bne _0801C076
	adds r1, #0x57
	movs r0, #0
_0801C074:
	strb r0, [r1]
_0801C076:
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r3, r0, r6
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	ldrb r1, [r3, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhs _0801C142
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #8]
	b _0801C142
	.align 2, 0
_0801C0A4: .4byte gUnk_03005220
_0801C0A8:
	lsls r1, r4, #3
	subs r0, r1, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r3, [r0, #8]
	adds r2, r1, #0
	cmp r3, #0
	beq _0801C142
	ldrb r0, [r0, #0xf]
	cmp r0, #0x19
	beq _0801C0F4
	movs r7, #4
	cmp r3, #0x27
	bls _0801C0D6
	movs r7, #2
	cmp r3, #0x4f
	bls _0801C0D6
	cmp r3, #0xc8
	bhi _0801C0D6
	movs r7, #1
	cmp r3, #0xe7
	bls _0801C0D6
	movs r7, #4
_0801C0D6:
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r3, r0, r6
	ldrb r1, [r3, #8]
	ands r1, r7
	cmp r1, #0
	bne _0801C0EC
	movs r0, #0x1a
	strb r0, [r3, #0xf]
	strb r1, [r3, #0x10]
	b _0801C0F4
_0801C0EC:
	movs r0, #0
	strb r0, [r3, #0xf]
	movs r0, #1
	strb r0, [r3, #0x10]
_0801C0F4:
	subs r0, r2, r4
	lsls r0, r0, #2
	adds r1, r0, r6
	ldrb r0, [r1, #8]
	adds r3, r0, #1
	movs r5, #0
	strb r3, [r1, #8]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x65
	bne _0801C134
	ldr r0, _0801C11C @ =gUnk_03005220
	adds r2, r0, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	cmp r0, r4
	bne _0801C118
	strb r5, [r2]
_0801C118:
	movs r0, #0x19
	b _0801C13E
	.align 2, 0
_0801C11C: .4byte gUnk_03005220
_0801C120:
	ldrb r1, [r4, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #8]
	adds r1, #0xa
	ldrb r0, [r4, #9]
	subs r0, r0, r1
	strb r0, [r4, #8]
	b _0801C142
_0801C134:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe7
	bne _0801C142
	movs r0, #0x1a
_0801C13E:
	strb r0, [r1, #0xf]
	strb r5, [r1, #0x10]
_0801C142:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C150
sub_0801C150: @ 0x0801C150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, _0801C188 @ =gUnk_03002920
	lsls r7, r0, #3
	subs r0, r7, r0
	lsls r2, r0, #2
	adds r5, r2, r1
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0801C176
	subs r0, #1
	strb r0, [r5, #8]
_0801C176:
	ldrb r0, [r5, #0x11]
	cmp r0, #0x71
	beq _0801C198
	cmp r0, #0x71
	bgt _0801C18C
	cmp r0, #0x37
	bne _0801C186
	b _0801C54E
_0801C186:
	b _0801C6D6
	.align 2, 0
_0801C188: .4byte gUnk_03002920
_0801C18C:
	cmp r0, #0x72
	beq _0801C204
	cmp r0, #0x74
	bne _0801C196
	b _0801C540
_0801C196:
	b _0801C6D6
_0801C198:
	mov r1, sl
	adds r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801C1EC @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r2, [r4, #8]
	cmp r2, #0
	bne _0801C1AE
	b _0801C6D6
_0801C1AE:
	subs r2, #1
	strb r2, [r4, #8]
	mov r1, sl
	adds r1, #3
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _0801C1EC @ =gUnk_03002920
	adds r3, r0, r5
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r5
	strb r2, [r1, #8]
	ldrb r0, [r4, #8]
	strb r0, [r3, #8]
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801C1F0
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	b _0801C6D6
	.align 2, 0
_0801C1EC: .4byte gUnk_03002920
_0801C1F0:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	b _0801C6D6
_0801C204:
	ldrh r1, [r5, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C28C
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	beq _0801C28C
	adds r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x87
	bls _0801C28C
	ldr r3, _0801C270 @ =0x040000D4
	ldr r0, _0801C274 @ =gUnk_080635E8
	str r0, [r3]
	ldr r4, _0801C278 @ =gUnk_0818B8E0
	ldr r2, _0801C27C @ =gUnk_03004C20
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
	ldr r1, _0801C280 @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0801C284 @ =0x80000040
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrb r1, [r5, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0xc]
	ldr r1, _0801C288 @ =gUnk_030034E0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #0
	strh r0, [r5, #0x14]
	strb r0, [r5, #8]
	movs r0, #0xa3
	bl m4aSongNumStart
	b _0801C6D6
	.align 2, 0
_0801C270: .4byte 0x040000D4
_0801C274: .4byte gUnk_080635E8
_0801C278: .4byte gUnk_0818B8E0
_0801C27C: .4byte gUnk_03004C20
_0801C280: .4byte 0x06010000
_0801C284: .4byte 0x80000040
_0801C288: .4byte gUnk_030034E0
_0801C28C:
	mov r2, sl
	lsls r7, r2, #3
	subs r0, r7, r2
	lsls r0, r0, #2
	ldr r5, _0801C38C @ =gUnk_03002920
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0, #9]
	cmp r1, #1
	beq _0801C2A2
	b _0801C6D6
_0801C2A2:
	ldrh r0, [r0, #2]
	ands r1, r0
	movs r0, #1
	add r0, sl
	mov sb, r0
	cmp r1, #0
	beq _0801C364
	lsls r0, r0, #3
	mov r1, sb
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #8]
	cmp r0, #0xff
	bne _0801C364
	ldr r2, _0801C390 @ =0x040000D4
	ldr r6, _0801C394 @ =gUnk_080B9068
	str r6, [r2]
	ldr r5, _0801C398 @ =gUnk_0818B8E0
	mov r8, r5
	ldr r3, _0801C39C @ =gUnk_03004C20
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
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r5, _0801C3A0 @ =0x06010000
	adds r0, r0, r5
	str r0, [r2, #4]
	ldr r4, _0801C3A4 @ =0x80000040
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
	mov r0, sl
	subs r0, #1
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	ldr r5, _0801C38C @ =gUnk_03002920
	adds r2, r2, r5
	mov r1, sl
	subs r1, #2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0, #0x14]
	strh r1, [r2, #0x14]
	mov r0, ip
	strh r1, [r0, #0x14]
_0801C364:
	mov r1, sb
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0801C38C @ =gUnk_03002920
	adds r1, r0, r2
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0801C378
	b _0801C6D6
_0801C378:
	subs r0, #1
	strb r0, [r1, #8]
	ldrb r0, [r1, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801C3A8
	ldrh r0, [r1, #2]
	subs r0, #1
	b _0801C3B0
	.align 2, 0
_0801C38C: .4byte gUnk_03002920
_0801C390: .4byte 0x040000D4
_0801C394: .4byte gUnk_080B9068
_0801C398: .4byte gUnk_0818B8E0
_0801C39C: .4byte gUnk_03004C20
_0801C3A0: .4byte 0x06010000
_0801C3A4: .4byte 0x80000040
_0801C3A8:
	cmp r0, #1
	bne _0801C3B2
	ldrh r0, [r1, #2]
	adds r0, #1
_0801C3B0:
	strh r0, [r1, #2]
_0801C3B2:
	mov r5, sb
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0801C434 @ =gUnk_03002920
	adds r2, r0, r1
	ldrb r3, [r2, #8]
	ldrb r1, [r2, #9]
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	bne _0801C450
	ldrb r0, [r2, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2, #0xc]
	ldrb r7, [r2, #9]
	cmp r7, #0xff
	beq _0801C3DE
	b _0801C6D6
_0801C3DE:
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r2, #0xf]
	strb r1, [r2, #0x10]
	ldr r2, _0801C438 @ =gUnk_03005220
	mov r8, r2
	ldr r6, [r2]
	lsls r3, r6, #9
	lsrs r3, r3, #0x18
	ldr r5, _0801C43C @ =gUnk_080E2B64
	ldr r4, _0801C440 @ =gUnk_03004C20
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
	ldr r2, _0801C444 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801C448 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r5
	movs r0, #1
	ldrb r1, [r1, #5]
	lsls r0, r1
	orrs r3, r0
	ands r3, r7
	lsls r3, r3, #0xf
	ldr r0, _0801C44C @ =0xFF807FFF
	ands r0, r6
	orrs r0, r3
	mov r5, r8
	str r0, [r5]
	b _0801C6D6
	.align 2, 0
_0801C434: .4byte gUnk_03002920
_0801C438: .4byte gUnk_03005220
_0801C43C: .4byte gUnk_080E2B64
_0801C440: .4byte gUnk_03004C20
_0801C444: .4byte 0x00001130
_0801C448: .4byte 0x00008980
_0801C44C: .4byte 0xFF807FFF
_0801C450:
	cmp r1, #0xff
	bne _0801C456
	b _0801C6D6
_0801C456:
	cmp r3, #0x20
	bne _0801C46E
	ldrb r0, [r2, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r2, #0xc]
	movs r0, #0x5a
	bl m4aSongNumStart
	b _0801C6D6
_0801C46E:
	cmp r3, #0
	beq _0801C474
	b _0801C6D6
_0801C474:
	ldrb r1, [r2, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xc]
	ldr r0, _0801C514 @ =gUnk_030034E0
	strb r3, [r0]
	ldr r3, _0801C518 @ =gUnk_080E2B64
	ldr r4, _0801C51C @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r2, sl
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r2, _0801C520 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801C524 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1, #5]
	subs r5, r0, #1
	cmp r5, #0
	bge _0801C4B4
	b _0801C6D6
_0801C4B4:
	ldr r6, _0801C528 @ =0x040000D4
	ldr r0, _0801C52C @ =gUnk_0818B8E0
	mov r8, r0
	adds r7, r4, #0
	lsls r4, r5, #3
	subs r2, r4, r5
	lsls r2, r2, #2
	mov r1, sl
	lsls r3, r1, #3
	subs r0, r3, r1
	lsls r0, r0, #2
	ldr r1, _0801C530 @ =gUnk_03002920
	adds r1, #0xc
	adds r0, r0, r1
	subs r2, r0, r2
	subs r3, r3, r4
_0801C4D4:
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0801C534 @ =gUnk_08061FC8
	str r0, [r6]
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r7, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r3, r0
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801C538 @ =0x06010000
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _0801C53C @ =0x80000040
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	adds r2, #0x1c
	adds r3, #8
	subs r5, #1
	cmp r5, #0
	bge _0801C4D4
	b _0801C6D6
	.align 2, 0
_0801C514: .4byte gUnk_030034E0
_0801C518: .4byte gUnk_080E2B64
_0801C51C: .4byte gUnk_03004C20
_0801C520: .4byte 0x00001130
_0801C524: .4byte 0x00008980
_0801C528: .4byte 0x040000D4
_0801C52C: .4byte gUnk_0818B8E0
_0801C530: .4byte gUnk_03002920
_0801C534: .4byte gUnk_08061FC8
_0801C538: .4byte 0x06010000
_0801C53C: .4byte 0x80000040
_0801C540:
	ldrb r0, [r5, #9]
	cmp r0, #0
	bne _0801C548
	b _0801C6D6
_0801C548:
	subs r0, #1
	strb r0, [r5, #9]
	b _0801C6D6
_0801C54E:
	movs r6, #0
	ldr r0, _0801C590 @ =gUnk_030008FC
	ldr r1, [r0]
	str r7, [sp, #4]
	cmp r6, r1
	bls _0801C55C
	b _0801C662
_0801C55C:
	str r2, [sp]
_0801C55E:
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r2, _0801C594 @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r2, [r0, #0xf]
	adds r3, r1, #0
	cmp r2, #0x1a
	bhi _0801C574
	cmp r2, #0x19
	bne _0801C598
_0801C574:
	ldr r5, [sp]
	ldr r0, _0801C594 @ =gUnk_03002920
	adds r1, r5, r0
	ldrb r0, [r1, #9]
	cmp r0, r6
	bne _0801C656
	adds r0, r6, #0
	movs r2, #0xff
	orrs r0, r2
	strb r0, [r1, #9]
	ldrh r0, [r1, #2]
	subs r0, #4
	strh r0, [r1, #2]
	b _0801C656
	.align 2, 0
_0801C590: .4byte gUnk_030008FC
_0801C594: .4byte gUnk_03002920
_0801C598:
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0801C5A2
	cmp r0, #0x25
	bne _0801C5B4
_0801C5A2:
	ldr r5, _0801C5AC @ =0x0000FFF1
	mov sb, r5
	ldr r0, _0801C5B0 @ =0x0000FFF9
	mov r8, r0
	b _0801C5BA
	.align 2, 0
_0801C5AC: .4byte 0x0000FFF1
_0801C5B0: .4byte 0x0000FFF9
_0801C5B4:
	ldr r1, _0801C624 @ =0x0000FFF4
	mov r8, r1
	mov sb, r8
_0801C5BA:
	ldr r2, [sp]
	ldr r0, _0801C628 @ =gUnk_03002920
	adds r5, r2, r0
	ldrb r1, [r5, #9]
	mov ip, r1
	movs r2, #4
	movs r1, #0xff
	mov r0, ip
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r4, r0, #0x1f
	ands r4, r2
	subs r0, r3, r6
	lsls r0, r0, #2
	ldr r1, _0801C628 @ =gUnk_03002920
	adds r7, r0, r1
	ldrh r3, [r7]
	mov r2, sb
	adds r1, r2, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, r0
	bge _0801C62C
	mov r1, r8
	subs r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r2, #0
	subs r1, #0x10
	cmp r0, r1
	ble _0801C62C
	ldrh r1, [r7, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r2, [r5, #2]
	cmp r0, r2
	bge _0801C62C
	adds r0, r4, #4
	subs r0, r2, r0
	cmp r1, r0
	ble _0801C62C
	mov r0, ip
	cmp r0, #0xff
	bne _0801C64C
	adds r0, r2, #4
	strh r0, [r5, #2]
	strb r6, [r5, #9]
	b _0801C6D6
	.align 2, 0
_0801C624: .4byte 0x0000FFF4
_0801C628: .4byte gUnk_03002920
_0801C62C:
	ldr r2, [sp]
	ldr r5, _0801C648 @ =gUnk_03002920
	adds r1, r2, r5
	ldrb r0, [r1, #9]
	cmp r0, r6
	bne _0801C64C
	movs r0, #0xff
	orrs r6, r0
	strb r6, [r1, #9]
	ldrh r0, [r1, #2]
	subs r0, #4
	strh r0, [r1, #2]
	movs r6, #0
	b _0801C55E
	.align 2, 0
_0801C648: .4byte gUnk_03002920
_0801C64C:
	cmp r6, #0
	bne _0801C656
	ldr r0, _0801C6A0 @ =gUnk_03002904
	ldr r0, [r0]
	subs r6, r0, #1
_0801C656:
	adds r6, #1
	ldr r1, _0801C6A4 @ =gUnk_030008FC
	ldr r0, [r1]
	cmp r6, r0
	bhi _0801C662
	b _0801C55E
_0801C662:
	ldr r2, [sp, #4]
	mov r5, sl
	subs r0, r2, r5
	lsls r0, r0, #2
	ldr r1, _0801C6A8 @ =gUnk_03002920
	adds r0, r0, r1
	ldrb r0, [r0, #9]
	cmp r0, #0xff
	beq _0801C6AC
	mov r1, sl
	adds r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0801C6A8 @ =gUnk_03002920
	adds r4, r0, r2
	ldrb r0, [r4, #8]
	cmp r0, #0x1f
	bhi _0801C6D6
	cmp r0, #0
	bne _0801C692
	movs r0, #0x5a
	bl m4aSongNumStart
_0801C692:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldrh r0, [r4, #2]
	subs r0, #1
	b _0801C6D4
	.align 2, 0
_0801C6A0: .4byte gUnk_03002904
_0801C6A4: .4byte gUnk_030008FC
_0801C6A8: .4byte gUnk_03002920
_0801C6AC:
	mov r1, sl
	adds r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _0801C6E8 @ =gUnk_03002920
	adds r4, r0, r5
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0801C6D6
	cmp r0, #0x20
	bne _0801C6CA
	movs r0, #0x5a
	bl m4aSongNumStart
_0801C6CA:
	ldrb r0, [r4, #8]
	subs r0, #1
	strb r0, [r4, #8]
	ldrh r0, [r4, #2]
	adds r0, #1
_0801C6D4:
	strh r0, [r4, #2]
_0801C6D6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C6E8: .4byte gUnk_03002920

	thumb_func_start sub_0801C6EC
sub_0801C6EC: @ 0x0801C6EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0801C788 @ =gUnk_030034A4
	ldr r7, [r0]
	ldr r0, _0801C78C @ =gUnk_030052B0
	ldr r1, [r0]
	mov sb, r0
	ldr r0, _0801C790 @ =gUnk_03002920
	cmp r7, r1
	bhi _0801C7AA
	mov ip, r0
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	mov r1, ip
	adds r5, r0, r1
	adds r0, #0xf
	adds r6, r0, r1
_0801C71A:
	ldrb r0, [r6]
	cmp r0, #0x1a
	bhi _0801C79C
	ldrb r0, [r6, #2]
	cmp r0, #0x6f
	beq _0801C72E
	cmp r0, #0x25
	beq _0801C72E
	cmp r0, #0x75
	bls _0801C79C
_0801C72E:
	mov r2, r8
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	mov r1, ip
	adds r4, r0, r1
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #8
	ldrh r2, [r5]
	adds r0, r2, #7
	cmp r1, r0
	bge _0801C79C
	adds r1, #0x10
	subs r0, #0x16
	cmp r1, r0
	ble _0801C79C
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0x40
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _0801C79C
	adds r0, r1, #0
	subs r0, #0x18
	cmp r2, r0
	ble _0801C79C
	ldr r2, _0801C794 @ =0x0000FFE9
	adds r0, r1, r2
	strh r0, [r4, #2]
	movs r6, #1
	strb r6, [r4, #8]
	ldrb r0, [r5, #0xf]
	cmp r0, #0x13
	bne _0801C7AA
	ldr r4, _0801C798 @ =gUnk_03000810
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801C7AA
	movs r0, #0x5d
	bl m4aSongNumStart
	strb r6, [r4]
	b _0801C7AA
	.align 2, 0
_0801C788: .4byte gUnk_030034A4
_0801C78C: .4byte gUnk_030052B0
_0801C790: .4byte gUnk_03002920
_0801C794: .4byte 0x0000FFE9
_0801C798: .4byte gUnk_03000810
_0801C79C:
	adds r5, #0x1c
	adds r6, #0x1c
	adds r7, #1
	mov r1, sb
	ldr r0, [r1]
	cmp r7, r0
	bls _0801C71A
_0801C7AA:
	ldr r0, _0801C814 @ =gUnk_03002920
	mov r2, r8
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r6, r1, r0
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _0801C808
	ldrh r3, [r6, #2]
	adds r3, #1
	movs r7, #0
	strh r3, [r6, #2]
	ldr r5, _0801C818 @ =gUnk_080E2B64
	ldr r4, _0801C81C @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r2, _0801C820 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801C824 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r5
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r1, [r1, #2]
	cmp r3, r1
	bne _0801C808
	strb r7, [r6, #8]
	ldr r1, _0801C828 @ =gUnk_03000810
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801C808
	strb r7, [r1]
	movs r0, #0x5d
	bl m4aSongNumStop
_0801C808:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C814: .4byte gUnk_03002920
_0801C818: .4byte gUnk_080E2B64
_0801C81C: .4byte gUnk_03004C20
_0801C820: .4byte 0x00001130
_0801C824: .4byte 0x00008980
_0801C828: .4byte gUnk_03000810

	thumb_func_start sub_0801C82C
sub_0801C82C: @ 0x0801C82C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r3, _0801C8B4 @ =gUnk_03002920
	lsls r4, r0, #3
	subs r1, r4, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1, #0xc]
	movs r1, #0
	ldr r0, _0801C8B8 @ =gUnk_03003610
	mov r8, r3
	ldr r5, _0801C8BC @ =gUnk_030047BC
	ldrb r0, [r0]
	cmp sb, r0
	beq _0801C89A
	str r4, [sp, #0x14]
	movs r2, #1
	rsbs r2, r2, #0
	add r2, sb
	mov sl, r2
	ldr r3, _0801C8B8 @ =gUnk_03003610
	ldrb r3, [r3, #1]
	cmp sb, r3
	beq _0801C88C
	ldr r2, _0801C8B8 @ =gUnk_03003610
_0801C872:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #2
	bhi _0801C88C
	lsls r0, r1, #2
	adds r0, r0, r2
	ldrb r4, [r0]
	cmp sb, r4
	beq _0801C89A
	ldrb r0, [r0, #1]
	cmp sb, r0
	bne _0801C872
_0801C88C:
	lsls r0, r1, #2
	ldr r3, _0801C8B8 @ =gUnk_03003610
	adds r2, r0, r3
	str r0, [sp, #0x18]
	ldrb r4, [r2]
	cmp sb, r4
	bne _0801C8C0
_0801C89A:
	lsls r1, r1, #2
	ldr r2, _0801C8B8 @ =gUnk_03003610
	adds r0, r1, r2
	ldrb r0, [r0, #1]
	mov r3, sb
	lsls r3, r3, #3
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	movs r4, #1
	rsbs r4, r4, #0
	add r4, sb
	mov sl, r4
	b _0801C8C2
	.align 2, 0
_0801C8B4: .4byte gUnk_03002920
_0801C8B8: .4byte gUnk_03003610
_0801C8BC: .4byte gUnk_030047BC
_0801C8C0:
	ldrb r0, [r2]
_0801C8C2:
	str r0, [sp]
	mov r1, sl
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r2, r8
	adds r4, r0, r2
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #0xc
	ldrh r2, [r2]
	adds r0, r2, #0
	adds r0, #0xc
	cmp r1, r0
	bge _0801C918
	adds r1, #0x18
	subs r0, #0x18
	cmp r1, r0
	ble _0801C918
	ldrh r0, [r4, #2]
	adds r2, r0, #0
	subs r2, #8
	mov r3, r8
	ldrh r1, [r3, #2]
	adds r0, r1, #1
	cmp r2, r0
	bge _0801C918
	subs r0, #0x19
	cmp r2, r0
	ble _0801C918
	ldr r4, [sp, #0x14]
	mov r0, sb
	subs r2, r4, r0
	lsls r2, r2, #2
	add r2, r8
	ldrb r3, [r2, #0xc]
	lsrs r1, r3, #4
	adds r1, #1
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xc]
_0801C918:
	ldr r6, [r5]
	ldr r1, _0801C964 @ =gUnk_030007D4
	ldr r0, [r1]
	ldr r2, [sp]
	lsls r2, r2, #3
	str r2, [sp, #0x1c]
	cmp r6, r0
	bhi _0801CA10
	ldr r1, _0801C968 @ =gUnk_03002920
	mov r3, sl
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	str r0, [sp, #8]
	adds r4, r0, r1
	str r4, [sp, #0xc]
	ldr r5, [sp, #0x14]
	mov r2, sb
	subs r0, r5, r2
	lsls r0, r0, #2
	str r0, [sp, #4]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	mov ip, r0
	adds r7, r0, r1
_0801C94C:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x1a
	bhi _0801CA00
	ldrb r0, [r7, #0x11]
	cmp r0, #0x6f
	beq _0801C99A
	cmp r0, #0x6f
	bgt _0801C96C
	cmp r0, #0x25
	beq _0801C99A
	b _0801CA00
	.align 2, 0
_0801C964: .4byte gUnk_030007D4
_0801C968: .4byte gUnk_03002920
_0801C96C:
	cmp r0, #0x7d
	bgt _0801CA00
	cmp r0, #0x7b
	blt _0801CA00
	ldr r3, [sp, #0xc]
	ldrh r1, [r3]
	subs r1, #0xc
	ldrh r0, [r7]
	adds r0, #4
	cmp r1, r0
	bge _0801CA00
	mov r4, r8
	ldr r2, [sp, #8]
	add r2, r8
	ldrh r1, [r2]
	adds r1, #0xc
	mov r3, ip
	add r3, r8
	ldrh r0, [r3]
	subs r0, #4
	cmp r1, r0
	ble _0801CA00
	b _0801C9D8
_0801C99A:
	ldr r5, [sp, #8]
	add r5, r8
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r4, ip
	add r4, r8
	ldrh r2, [r4]
	adds r0, r2, #7
	cmp r1, r0
	bge _0801CA00
	adds r1, #0x18
	subs r0, #0x16
	cmp r1, r0
	ble _0801CA00
	ldrh r0, [r5, #2]
	adds r2, r0, #0
	subs r2, #8
	ldrh r1, [r4, #2]
	adds r0, r1, #1
	cmp r2, r0
	bge _0801CA00
	subs r0, #0x19
	cmp r2, r0
	ble _0801CA00
	ldr r3, [sp, #4]
	add r3, r8
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	adds r1, #2
	b _0801C9F6
_0801C9D8:
	ldrh r0, [r2, #2]
	adds r2, r0, #0
	subs r2, #8
	ldrh r1, [r3, #2]
	adds r0, r1, #1
	cmp r2, r0
	bge _0801CA00
	subs r0, #0x15
	cmp r2, r0
	ble _0801CA00
	ldr r5, [sp, #4]
	adds r3, r5, r4
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	adds r1, #1
_0801C9F6:
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
_0801CA00:
	movs r0, #0x1c
	add ip, r0
	adds r7, #0x1c
	adds r6, #1
	ldr r1, _0801CAB4 @ =gUnk_030007D4
	ldr r0, [r1]
	cmp r6, r0
	bls _0801C94C
_0801CA10:
	ldr r2, [sp, #0x14]
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	mov r4, r8
	adds r7, r0, r4
	ldrb r6, [r7, #0xc]
	lsrs r5, r6, #4
	cmp r5, #0
	bne _0801CA26
	b _0801CB62
_0801CA26:
	mov r1, sl
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r4
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #0xc
	mov r0, r8
	ldrh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x14
	cmp r1, r0
	bge _0801CA6E
	adds r1, #0x18
	subs r0, #0x28
	cmp r1, r0
	ble _0801CA6E
	ldrh r0, [r4, #2]
	adds r2, r0, #0
	subs r2, #8
	mov r3, r8
	ldrh r1, [r3, #2]
	adds r0, r1, #0
	adds r0, #0x1a
	cmp r2, r0
	bge _0801CA6E
	adds r0, r1, #1
	cmp r2, r0
	ble _0801CA6E
	adds r1, r5, #1
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r6
	orrs r0, r1
	strb r0, [r7, #0xc]
_0801CA6E:
	ldr r0, _0801CAB8 @ =gUnk_030047F8
	ldr r6, [r0]
	ldr r0, _0801CABC @ =gUnk_03003504
	ldr r1, [r0]
	cmp r6, r1
	bhi _0801CB62
	mov r4, sl
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r5, [sp, #0x14]
	mov r1, sb
	subs r0, r5, r1
	lsls r0, r0, #2
	mov ip, r0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r7, r0, #2
_0801CA94:
	mov r2, r8
	adds r1, r7, r2
	ldrb r0, [r1, #0xf]
	cmp r0, #0x1a
	bhi _0801CB56
	ldrb r0, [r1, #0x11]
	cmp r0, #0x78
	bgt _0801CAC0
	cmp r0, #0x76
	bge _0801CB0C
	cmp r0, #0x25
	beq _0801CACA
	cmp r0, #0x6f
	beq _0801CACA
	b _0801CB56
	.align 2, 0
_0801CAB4: .4byte gUnk_030007D4
_0801CAB8: .4byte gUnk_030047F8
_0801CABC: .4byte gUnk_03003504
_0801CAC0:
	cmp r0, #0x7d
	bgt _0801CB56
	cmp r0, #0x7b
	blt _0801CB56
	b _0801CB0C
_0801CACA:
	ldr r5, [sp, #0x10]
	add r5, r8
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r0, r8
	adds r4, r7, r0
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #0xf
	cmp r1, r0
	bge _0801CB56
	adds r1, #0x18
	subs r0, #0x26
	cmp r1, r0
	ble _0801CB56
	ldrh r0, [r5, #2]
	adds r2, r0, #0
	subs r2, #8
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	adds r0, #0x1a
	cmp r2, r0
	bge _0801CB56
	adds r0, r1, #1
	cmp r2, r0
	ble _0801CB56
	mov r3, ip
	add r3, r8
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	adds r1, #2
	b _0801CB4C
_0801CB0C:
	ldr r5, [sp, #0x10]
	add r5, r8
	ldrh r3, [r5]
	adds r1, r3, #0
	subs r1, #0xc
	mov r2, r8
	adds r4, r7, r2
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #0xc
	cmp r1, r0
	bge _0801CB56
	adds r1, #0x18
	subs r0, #0x18
	cmp r1, r0
	ble _0801CB56
	ldrh r0, [r5, #2]
	adds r2, r0, #0
	subs r2, #8
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	adds r0, #0x1a
	cmp r2, r0
	bge _0801CB56
	adds r0, r1, #5
	cmp r2, r0
	ble _0801CB56
	mov r3, ip
	add r3, r8
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	adds r1, #1
_0801CB4C:
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
_0801CB56:
	adds r7, #0x1c
	adds r6, #1
	ldr r3, _0801CBC0 @ =gUnk_03003504
	ldr r0, [r3]
	cmp r6, r0
	bls _0801CA94
_0801CB62:
	ldr r4, [sp, #0x14]
	mov r5, sb
	subs r0, r4, r5
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x1c]
	ldr r3, [sp]
	subs r0, r2, r3
	lsls r0, r0, #2
	mov r5, r8
	adds r3, r0, r5
	ldrb r0, [r3, #0xc]
	lsrs r0, r0, #4
	cmp r1, r0
	bne _0801CBD8
	ldr r0, [sp, #0x18]
	ldr r2, _0801CBC4 @ =gUnk_03003610
	adds r1, r0, r2
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _0801CBA6
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x31
	bhi _0801CBA2
	b _0801CDFE
_0801CBA2:
	movs r0, #0x32
	strb r0, [r1, #3]
_0801CBA6:
	movs r0, #1
	strb r0, [r1, #2]
	ldrb r2, [r4, #8]
	ldrb r1, [r3, #8]
	adds r0, r1, #1
	cmp r2, r0
	ble _0801CBC8
	ldrb r0, [r4, #0xc]
	movs r1, #0xf0
	orrs r0, r1
	strb r0, [r4, #0xc]
	b _0801CBE4
	.align 2, 0
_0801CBC0: .4byte gUnk_03003504
_0801CBC4: .4byte gUnk_03003610
_0801CBC8:
	subs r0, r1, #1
	cmp r2, r0
	bge _0801CBE4
	ldrb r0, [r3, #0xc]
	movs r1, #0xf0
	orrs r0, r1
	strb r0, [r3, #0xc]
	b _0801CBE4
_0801CBD8:
	ldr r3, [sp, #0x18]
	ldr r4, _0801CC3C @ =gUnk_03003610
	adds r1, r3, r4
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #2]
_0801CBE4:
	ldr r5, [sp, #0x18]
	ldr r0, _0801CC3C @ =gUnk_03003610
	adds r3, r5, r0
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r2, [r0, #0xc]
	lsrs r2, r2, #4
	ldrb r1, [r3, #1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r2, r0
	bne _0801CC0C
	b _0801CDB8
_0801CC0C:
	ldr r1, [sp, #0x14]
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	mov r3, r8
	adds r2, r0, r3
	ldrb r1, [r2, #0xc]
	lsrs r1, r1, #4
	ldr r4, [sp, #0x1c]
	ldr r5, [sp]
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r3, r0, r3
	ldrb r0, [r3, #0xc]
	lsrs r0, r0, #4
	cmp r1, r0
	bge _0801CC44
	ldrb r0, [r2, #8]
	cmp r0, #0xfe
	bne _0801CC40
	movs r0, #2
	strb r0, [r3, #8]
	b _0801CDB8
	.align 2, 0
_0801CC3C: .4byte gUnk_03003610
_0801CC40:
	adds r0, #1
	b _0801CC52
_0801CC44:
	ldrb r0, [r2, #8]
	cmp r0, #2
	bne _0801CC50
	movs r0, #0xfe
	strb r0, [r3, #8]
	b _0801CDB8
_0801CC50:
	subs r0, #1
_0801CC52:
	strb r0, [r2, #8]
	ldr r1, [sp, #0x14]
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	mov r3, r8
	adds r4, r0, r3
	ldr r3, _0801CD08 @ =gUnk_080E2B64
	ldr r2, _0801CD0C @ =gUnk_03004C20
	ldrb r1, [r2, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r0, sb
	subs r0, #0xd
	movs r5, #0x2c
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r5, _0801CD10 @ =0x00001130
	muls r0, r5, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r5, _0801CD14 @ =0x00008980
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0
	lsls r7, r0, #0x18
	lsrs r0, r7, #0x1b
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldr r5, _0801CD18 @ =gUnk_03005220
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	adds r6, r2, #0
	movs r1, #0xe
	rsbs r1, r1, #0
	add r1, sb
	mov ip, r1
	cmp r0, sl
	bne _0801CD2C
	mov r2, sl
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	add r0, r8
	ldrh r2, [r0, #2]
	ldrb r1, [r6, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r3, #0x2c
	mov r0, ip
	muls r0, r3, r0
	adds r1, r1, r0
	ldrb r0, [r6, #0xc]
	subs r0, #1
	ldr r3, _0801CD10 @ =0x00001130
	muls r0, r3, r0
	adds r1, r1, r0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	ldr r3, _0801CD14 @ =0x00008980
	muls r0, r3, r0
	adds r1, r1, r0
	ldr r0, _0801CD08 @ =gUnk_080E2B64
	adds r1, r1, r0
	lsrs r0, r7, #0x1a
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	cmp r2, r0
	beq _0801CD24
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	ldr r2, [sp, #0x1c]
	ldr r3, [sp]
	subs r1, r2, r3
	lsls r1, r1, #2
	add r1, r8
	ldrb r1, [r1, #0xc]
	lsrs r1, r1, #4
	cmp r0, r1
	ble _0801CD1C
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #1
	b _0801CD2A
	.align 2, 0
_0801CD08: .4byte gUnk_080E2B64
_0801CD0C: .4byte gUnk_03004C20
_0801CD10: .4byte 0x00001130
_0801CD14: .4byte 0x00008980
_0801CD18: .4byte gUnk_03005220
_0801CD1C:
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0xff
	b _0801CD2A
_0801CD24:
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0
_0801CD2A:
	strb r0, [r1]
_0801CD2C:
	mov r4, sl
	lsls r3, r4, #3
	subs r3, r3, r4
	lsls r3, r3, #2
	add r3, r8
	ldrb r2, [r6, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	movs r0, #0x2c
	mov r5, ip
	muls r5, r0, r5
	adds r0, r5, #0
	adds r2, r2, r0
	ldrb r0, [r6, #0xc]
	subs r0, #1
	ldr r1, _0801CD88 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	ldr r1, _0801CD8C @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r0, _0801CD90 @ =gUnk_080E2B64
	adds r2, r2, r0
	ldr r1, [sp, #0x14]
	mov r4, sb
	subs r0, r1, r4
	lsls r0, r0, #2
	mov r5, r8
	adds r4, r0, r5
	ldrb r0, [r4, #8]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r3, #2]
	ldr r0, [sp, #0x18]
	ldr r2, _0801CD94 @ =gUnk_03003610
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, sb
	bne _0801CD98
	ldrb r0, [r1, #1]
	b _0801CD9A
	.align 2, 0
_0801CD88: .4byte 0x00001130
_0801CD8C: .4byte 0x00008980
_0801CD90: .4byte gUnk_080E2B64
_0801CD94: .4byte gUnk_03003610
_0801CD98:
	ldrb r0, [r1]
_0801CD9A:
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	add r2, r8
	ldrb r1, [r4, #0xc]
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	ldrb r3, [r2, #0xc]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xc]
	b _0801CDD0
_0801CDB8:
	ldr r1, _0801CDCC @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, sl
	bne _0801CDFE
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
	b _0801CDFE
	.align 2, 0
_0801CDCC: .4byte gUnk_03005220
_0801CDD0:
	movs r5, #0x80
	lsls r5, r5, #1
	ldr r3, [sp, #0x14]
	mov r0, sb
	subs r4, r3, r0
	lsls r4, r4, #2
	add r4, r8
	ldrb r0, [r4, #8]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl MultiplyQ8
	ldr r2, _0801CE30 @ =gUnk_03004680
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #3
	adds r1, r1, r2
	strh r0, [r1, #6]
_0801CDFE:
	ldr r1, [sp]
	cmp r1, sb
	bhs _0801CE20
	ldr r2, _0801CE34 @ =gUnk_03002920
	ldr r3, [sp, #0x14]
	mov r4, sb
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r5, [sp, #0x1c]
	ldr r3, [sp]
	subs r0, r5, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	rsbs r0, r0, #0
	strb r0, [r1, #8]
_0801CE20:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CE30: .4byte gUnk_03004680
_0801CE34: .4byte gUnk_03002920

	thumb_func_start sub_0801CE38
sub_0801CE38: @ 0x0801CE38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0801CEA0 @ =gUnk_03002920
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrb r0, [r7, #0xf]
	adds r5, r1, #0
	cmp r0, #0
	bne _0801CF34
	ldr r6, _0801CEA4 @ =gUnk_03004C20
	ldrh r1, [r6, #8]
	ldrb r0, [r6, #0xe]
	subs r2, r0, #1
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0801CEAC
	adds r0, r4, #0
	bl sub_08044F6C
	ldr r2, _0801CEA8 @ =gSineTable
	ldr r0, [r6]
	movs r1, #0x7f
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldrh r3, [r7]
	adds r0, r0, r3
	strh r0, [r7]
	ldr r0, [r6]
	ands r0, r1
	lsls r0, r0, #2
	adds r0, #0x80
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldrh r4, [r7, #2]
	adds r0, r0, r4
	strh r0, [r7, #2]
	b _0801D0BA
	.align 2, 0
_0801CEA0: .4byte gUnk_03002920
_0801CEA4: .4byte gUnk_03004C20
_0801CEA8: .4byte gSineTable
_0801CEAC:
	ldr r0, _0801CF24 @ =gUnk_080E2B64
	mov r8, r0
	lsls r1, r2, #3
	adds r2, r4, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r3, r2, #0
	muls r3, r0, r3
	mov sb, r3
	add r1, sb
	ldrb r0, [r6, #0xc]
	subs r0, #1
	ldr r4, _0801CF28 @ =0x00001130
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	ldr r3, _0801CF2C @ =0x00008980
	muls r0, r3, r0
	adds r1, r1, r0
	add r1, r8
	ldr r0, _0801CF30 @ =gSineTable
	mov ip, r0
	ldr r0, [r6]
	movs r2, #0x7f
	ands r0, r2
	lsls r0, r0, #2
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7]
	ldrb r1, [r6, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	add r1, sb
	ldrb r0, [r6, #0xc]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	muls r0, r3, r0
	adds r1, r1, r0
	add r1, r8
	ldr r0, [r6]
	ands r0, r2
	lsls r0, r0, #2
	adds r0, #0x80
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	b _0801D0BA
	.align 2, 0
_0801CF24: .4byte gUnk_080E2B64
_0801CF28: .4byte 0x00001130
_0801CF2C: .4byte 0x00008980
_0801CF30: .4byte gSineTable
_0801CF34:
	cmp r0, #0x12
	beq _0801CF3A
	b _0801D0BA
_0801CF3A:
	ldrb r1, [r7, #9]
	cmp r1, #1
	bne _0801CF4A
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r7, #0xf]
	strb r1, [r7, #0x10]
	b _0801D0BA
_0801CF4A:
	ldrb r0, [r7, #8]
	adds r0, #0x10
	strb r0, [r7, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CFD8
	subs r0, r1, #1
	strb r0, [r7, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801CFD8
	ldrb r0, [r7, #0x11]
	movs r3, #0
	cmp r0, #1
	beq _0801CF72
	movs r3, #4
	cmp r0, #2
	bne _0801CF72
	movs r3, #2
_0801CF72:
	ldr r2, _0801CFCC @ =gUnk_03000900
	ldr r4, _0801CFD0 @ =0x00000247
	adds r1, r3, r4
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r6, _0801CFD4 @ =0x00000286
	adds r0, r3, r6
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r1, #0x92
	lsls r1, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r4, #0x40
	adds r0, r3, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r6, #0x1f
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r4, #0x1f
	adds r0, r3, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r6, #0x40
	adds r0, r3, r6
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	b _0801D0BA
	.align 2, 0
_0801CFCC: .4byte gUnk_03000900
_0801CFD0: .4byte 0x00000247
_0801CFD4: .4byte 0x00000286
_0801CFD8:
	ldr r7, _0801D02C @ =gUnk_03004C20
	ldrh r1, [r7, #8]
	ldrb r0, [r7, #0xe]
	subs r2, r0, #1
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0801D038
	adds r0, r4, #0
	bl sub_08044F6C
	ldr r0, _0801D030 @ =gUnk_03002920
	lsls r2, r4, #3
	subs r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r3, _0801D034 @ =gSineTable
	ldrb r0, [r2, #8]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldrb r6, [r2, #9]
	asrs r1, r6
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	ldrb r0, [r2, #8]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r6, #0
	asrs r0, r3
	ldrh r4, [r2, #2]
	adds r0, r0, r4
	strh r0, [r2, #2]
	b _0801D0BA
	.align 2, 0
_0801D02C: .4byte gUnk_03004C20
_0801D030: .4byte gUnk_03002920
_0801D034: .4byte gSineTable
_0801D038:
	lsls r3, r4, #3
	subs r3, r3, r4
	lsls r3, r3, #2
	adds r3, r3, r5
	ldr r6, _0801D0C8 @ =gUnk_080E2B64
	mov sb, r6
	lsls r2, r2, #3
	adds r1, r4, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r5, r1, #0
	muls r5, r0, r5
	adds r2, r2, r5
	ldrb r0, [r7, #0xc]
	subs r0, #1
	ldr r1, _0801D0CC @ =0x00001130
	mov ip, r1
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	adds r2, r2, r0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	ldr r4, _0801D0D0 @ =0x00008980
	muls r0, r4, r0
	adds r2, r2, r0
	add r2, sb
	ldr r6, _0801D0D4 @ =gSineTable
	mov r8, r6
	ldrb r0, [r3, #8]
	lsls r0, r0, #1
	add r0, r8
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldrb r0, [r3, #9]
	asrs r1, r0
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r3]
	ldrb r1, [r7, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r0, [r7, #0xc]
	subs r0, #1
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	add r1, sb
	ldrb r0, [r3, #8]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldrb r6, [r3, #9]
	asrs r0, r6
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
_0801D0BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0C8: .4byte gUnk_080E2B64
_0801D0CC: .4byte 0x00001130
_0801D0D0: .4byte 0x00008980
_0801D0D4: .4byte gSineTable

	thumb_func_start sub_0801D0D8
sub_0801D0D8: @ 0x0801D0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r7, _0801D1C0 @ =gUnk_03004C20
	ldrb r0, [r7, #0xc]
	cmp r0, #8
	beq _0801D118
	mov r1, r8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0801D1C4 @ =gUnk_03002920
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0801D1C8 @ =gUnk_03003430
	adds r0, #0x40
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	bge _0801D10E
	b _0801D49C
_0801D10E:
	adds r0, r1, #0
	adds r0, #0xf8
	cmp r0, r2
	bge _0801D118
	b _0801D49C
_0801D118:
	mov r3, r8
	lsls r2, r3, #3
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r5, _0801D1C4 @ =gUnk_03002920
	adds r3, r0, r5
	ldrb r1, [r3, #9]
	ldrh r0, [r3, #2]
	subs r0, r0, r1
	movs r5, #0
	strh r0, [r3, #2]
	ldrb r0, [r3, #0x11]
	mov sl, r2
	cmp r0, #9
	beq _0801D138
	b _0801D432
_0801D138:
	movs r0, #0
	mov sb, r0
	ldrb r0, [r3, #0xc]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r1, _0801D1CC @ =gUnk_03000790
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _0801D1C4 @ =gUnk_03002920
	ldrh r3, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	ldr r6, _0801D1D0 @ =gUnk_03005220
	cmp r1, r0
	blt _0801D158
	b _0801D298
_0801D158:
	ldrh r1, [r2, #2]
	subs r0, #0x18
	cmp r1, r0
	bgt _0801D162
	b _0801D298
_0801D162:
	ldrh r0, [r2, #4]
	adds r0, #0x10
	ldr r1, _0801D1C4 @ =gUnk_03002920
	ldrh r3, [r1, #2]
	cmp r0, r3
	blt _0801D170
	b _0801D298
_0801D170:
	ldrh r1, [r2, #6]
	adds r0, r3, #0
	subs r0, #0x18
	cmp r1, r0
	bgt _0801D17C
	b _0801D298
_0801D17C:
	adds r0, r6, #0
	adds r0, #0x34
	adds r2, r6, #0
	adds r2, #0x39
	ldrb r1, [r0]
	ldrb r0, [r2]
	orrs r0, r1
	cmp r0, #0
	beq _0801D190
	b _0801D298
_0801D190:
	ldr r4, _0801D1D4 @ =gUnk_030034C4
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x31
	bls _0801D1E8
	movs r0, #0x32
	strb r0, [r4]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _0801D1E8
	ldr r1, [r7, #4]
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0801D1D8
	movs r0, #0x97
	b _0801D1E2
	.align 2, 0
_0801D1C0: .4byte gUnk_03004C20
_0801D1C4: .4byte gUnk_03002920
_0801D1C8: .4byte gUnk_03003430
_0801D1CC: .4byte gUnk_03000790
_0801D1D0: .4byte gUnk_03005220
_0801D1D4: .4byte gUnk_030034C4
_0801D1D8:
	cmp r1, #1
	bne _0801D1E0
	movs r0, #0x96
	b _0801D1E2
_0801D1E0:
	movs r0, #0x95
_0801D1E2:
	bl m4aSongNumStart
	strb r5, [r4]
_0801D1E8:
	ldr r2, _0801D214 @ =gUnk_03002920
	ldr r3, _0801D218 @ =gUnk_03005220
	adds r0, r3, #0
	adds r0, #0x42
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x11]
	cmp r0, #0x6f
	beq _0801D204
	cmp r0, #0x25
	bne _0801D21C
_0801D204:
	adds r1, r3, #0
	adds r1, #0x3a
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x19
	movs r0, #1
	b _0801D2D0
	.align 2, 0
_0801D214: .4byte gUnk_03002920
_0801D218: .4byte gUnk_03005220
_0801D21C:
	adds r1, r3, #0
	adds r1, #0x30
	movs r0, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3b
	adds r2, r3, #0
	adds r2, #0x46
	ldrb r1, [r0]
	ldrb r0, [r2]
	adds r6, r0, #0
	orrs r6, r1
	cmp r6, #0
	bne _0801D2D2
	mov r2, sl
	mov r5, r8
	subs r0, r2, r5
	lsls r0, r0, #2
	ldr r7, _0801D280 @ =gUnk_03002920
	adds r4, r0, r7
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	adds r0, #1
	adds r1, r3, #0
	adds r1, #0x3a
	strb r0, [r1]
	adds r5, r3, #0
	adds r5, #0x3d
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801D262
	movs r0, #0x8e
	bl m4aSongNumStart
	strb r6, [r5]
_0801D262:
	ldr r0, _0801D284 @ =gUnk_03000790
	ldrb r1, [r4, #0xc]
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r0, #0
	adds r1, #0x10
	ldr r2, _0801D280 @ =gUnk_03002920
	ldrh r0, [r2]
	cmp r1, r0
	ble _0801D288
	adds r0, #1
	strh r0, [r2]
	b _0801D2D2
	.align 2, 0
_0801D280: .4byte gUnk_03002920
_0801D284: .4byte gUnk_03000790
_0801D288:
	cmp r1, r0
	bge _0801D2D2
	subs r0, #1
	ldr r3, _0801D294 @ =gUnk_03002920
	strh r0, [r3]
	b _0801D2D2
	.align 2, 0
_0801D294: .4byte gUnk_03002920
_0801D298:
	adds r3, r6, #0
	adds r3, #0x53
	movs r2, #0
	strb r2, [r3]
	adds r4, r6, #0
	adds r4, #0x3a
	ldrb r0, [r4]
	mov r5, sl
	mov r7, r8
	subs r1, r5, r7
	lsls r1, r1, #2
	ldr r5, _0801D314 @ =gUnk_03002920
	adds r1, r1, r5
	ldrb r1, [r1, #0xc]
	lsrs r1, r1, #4
	adds r1, #1
	cmp r0, r1
	bne _0801D2D2
	adds r0, r6, #0
	adds r0, #0x30
	strb r2, [r0]
	adds r0, #0xb
	strb r2, [r0]
	strb r2, [r4]
	adds r0, #0xd
	strb r2, [r0]
	ldr r1, _0801D318 @ =gUnk_030034C4
	movs r0, #0x32
_0801D2D0:
	strb r0, [r1]
_0801D2D2:
	ldr r0, _0801D31C @ =gUnk_03005484
	ldr r6, [r0]
	ldr r0, _0801D320 @ =gUnk_03004650
	ldr r1, [r0]
	cmp r6, r1
	bls _0801D2E0
	b _0801D412
_0801D2E0:
	ldr r0, _0801D314 @ =gUnk_03002920
	ldr r7, _0801D324 @ =gUnk_03000790
	mov ip, r7
	mov r2, sl
	mov r3, r8
	subs r1, r2, r3
	lsls r1, r1, #2
	adds r7, r1, r0
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #2
	adds r5, r1, r0
_0801D2F8:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x1a
	bls _0801D300
	b _0801D404
_0801D300:
	ldrb r0, [r5, #0x11]
	cmp r0, #0x35
	beq _0801D3C6
	cmp r0, #0x35
	bgt _0801D328
	cmp r0, #0x25
	beq _0801D332
	cmp r0, #0x29
	beq _0801D394
	b _0801D404
	.align 2, 0
_0801D314: .4byte gUnk_03002920
_0801D318: .4byte gUnk_030034C4
_0801D31C: .4byte gUnk_03005484
_0801D320: .4byte gUnk_03004650
_0801D324: .4byte gUnk_03000790
_0801D328:
	cmp r0, #0x6f
	beq _0801D332
	cmp r0, #0x70
	beq _0801D3C6
	b _0801D404
_0801D332:
	ldrb r0, [r7, #0xc]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	mov r1, ip
	adds r3, r0, r1
	ldrh r1, [r3]
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	bge _0801D404
	ldrh r1, [r3, #2]
	subs r0, #0x18
	cmp r1, r0
	ble _0801D404
	ldrh r0, [r3, #4]
	adds r4, r0, #0
	subs r4, #8
	ldrh r2, [r5, #2]
	cmp r4, r2
	bge _0801D404
	ldrh r1, [r3, #6]
	adds r0, r2, #0
	subs r0, #0x18
	cmp r1, r0
	ble _0801D404
	cmp r2, r4
	ble _0801D404
	movs r1, #0
	strh r2, [r3, #4]
	movs r2, #1
	mov sb, r2
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _0801D37C
	mov r3, sb
	strb r3, [r5, #0x12]
_0801D37C:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x17
	bne _0801D404
	ldrb r0, [r5, #0x12]
	adds r0, #1
	strb r0, [r5, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bls _0801D404
	strb r1, [r5, #0xf]
	b _0801D404
_0801D394:
	ldrb r0, [r7, #0xc]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	mov r1, ip
	adds r3, r0, r1
	ldrh r1, [r3]
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, r0
	bge _0801D404
	ldrh r1, [r3, #2]
	subs r0, #0x20
	cmp r1, r0
	ble _0801D404
	ldrh r0, [r3, #4]
	adds r4, r0, #0
	subs r4, #8
	ldrh r2, [r5, #2]
	cmp r4, r2
	bge _0801D404
	ldrh r1, [r3, #6]
	adds r0, r2, #0
	subs r0, #0x10
	b _0801D3F6
_0801D3C6:
	ldrb r0, [r7, #0xc]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	mov r1, ip
	adds r3, r0, r1
	ldrh r1, [r3]
	ldrh r2, [r5]
	adds r0, r2, #0
	adds r0, #0xf
	cmp r1, r0
	bge _0801D404
	ldrh r1, [r3, #2]
	subs r0, #0x1e
	cmp r1, r0
	ble _0801D404
	ldrh r0, [r3, #4]
	adds r4, r0, #0
	subs r4, #8
	ldrh r2, [r5, #2]
	cmp r4, r2
	bge _0801D404
	ldrh r1, [r3, #6]
	adds r0, r2, #0
	subs r0, #0x20
_0801D3F6:
	cmp r1, r0
	ble _0801D404
	cmp r2, r4
	ble _0801D404
	strh r2, [r3, #4]
	movs r2, #1
	mov sb, r2
_0801D404:
	adds r5, #0x1c
	adds r6, #1
	ldr r3, _0801D484 @ =gUnk_03004650
	ldr r0, [r3]
	cmp r6, r0
	bhi _0801D412
	b _0801D2F8
_0801D412:
	mov r5, sb
	cmp r5, #0
	bne _0801D432
	mov r7, sl
	mov r1, r8
	subs r0, r7, r1
	lsls r0, r0, #2
	ldr r2, _0801D488 @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r3, _0801D48C @ =gUnk_03000790
	adds r0, r0, r3
	ldrh r1, [r0, #8]
	strh r1, [r0, #4]
_0801D432:
	mov r5, sl
	mov r7, r8
	subs r0, r5, r7
	lsls r0, r0, #2
	ldr r1, _0801D488 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r2, _0801D48C @ =gUnk_03000790
	adds r0, r0, r2
	ldrh r1, [r4, #2]
	ldrh r0, [r0, #4]
	cmp r1, r0
	bls _0801D462
	ldr r0, _0801D490 @ =gUnk_03003430
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r1, r0
	bhi _0801D49C
	ldr r0, _0801D494 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _0801D49C
_0801D462:
	bl thunk_GetRandomValueEx
	movs r1, #7
	ands r1, r0
	strb r1, [r4, #8]
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	ldr r3, _0801D48C @ =gUnk_03000790
	adds r0, r0, r3
	ldrh r0, [r0, #6]
	strh r0, [r4, #2]
	cmp r1, #4
	bne _0801D498
	movs r0, #0x14
	b _0801D49A
	.align 2, 0
_0801D484: .4byte gUnk_03004650
_0801D488: .4byte gUnk_03002920
_0801D48C: .4byte gUnk_03000790
_0801D490: .4byte gUnk_03003430
_0801D494: .4byte gUnk_03004C20
_0801D498:
	adds r0, r1, #4
_0801D49A:
	strb r0, [r4, #9]
_0801D49C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D4AC
sub_0801D4AC: @ 0x0801D4AC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0801D4E4 @ =gUnk_03002920
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0x11]
	adds r7, r1, #0
	cmp r0, #0x70
	bne _0801D5A4
	ldrb r0, [r3, #9]
	cmp r0, #0
	bne _0801D4CC
	b _0801D6AA
_0801D4CC:
	ldr r0, _0801D4E8 @ =gUnk_03004C20
	ldr r1, [r0, #4]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0801D4EC
	movs r1, #0
	movs r0, #0x1a
	strb r0, [r3, #0xf]
	strb r1, [r3, #0x10]
	b _0801D4F2
	.align 2, 0
_0801D4E4: .4byte gUnk_03002920
_0801D4E8: .4byte gUnk_03004C20
_0801D4EC:
	strb r1, [r3, #0xf]
	movs r0, #1
	strb r0, [r3, #0x10]
_0801D4F2:
	lsls r1, r4, #3
	subs r0, r1, r4
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrb r0, [r3, #9]
	adds r5, r1, #0
	cmp r0, #0x13
	bhi _0801D53C
	ldr r2, _0801D538 @ =gUnk_03004680
	ldrb r0, [r3, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #6]
	adds r1, #0x46
	strh r1, [r0, #6]
	ldrb r0, [r3, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #2]
	adds r1, #0x23
	strh r1, [r0, #2]
	ldrb r0, [r3, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	subs r1, #0x14
	strh r1, [r0]
	b _0801D57C
	.align 2, 0
_0801D538: .4byte gUnk_03004680
_0801D53C:
	cmp r0, #0x27
	bhi _0801D568
	ldr r2, _0801D564 @ =gUnk_03004680
	ldrb r0, [r3, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r1, #0x23
	strh r1, [r0]
	ldrb r0, [r3, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #4]
	adds r1, #0x14
	strh r1, [r0, #4]
	b _0801D57C
	.align 2, 0
_0801D564: .4byte gUnk_03004680
_0801D568:
	ldr r0, _0801D5A0 @ =gUnk_03004680
	ldrb r1, [r3, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	strh r0, [r1]
_0801D57C:
	subs r0, r5, r4
	lsls r0, r0, #2
	adds r1, r0, r7
	ldrb r0, [r1, #9]
	subs r0, #1
	strb r0, [r1, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D590
	b _0801D6AA
_0801D590:
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #2
	adds r3, r4, #0
	bl sub_0801E664
	b _0801D6AA
	.align 2, 0
_0801D5A0: .4byte gUnk_03004680
_0801D5A4:
	ldr r0, _0801D5F0 @ =gUnk_030047B8
	mov ip, r0
	ldrb r6, [r0]
	movs r1, #0
	cmp r4, r6
	bne _0801D5B2
	movs r1, #1
_0801D5B2:
	ldr r0, _0801D5F4 @ =gUnk_03005284
	ldr r0, [r0]
	ldrb r0, [r0, #0xb]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	eors r1, r0
	ldr r0, _0801D5F8 @ =gUnk_03005220
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ldrb r5, [r3, #0xc]
	lsrs r2, r5, #4
	eors r1, r2
	cmp r0, r1
	beq _0801D6AA
	cmp r2, #1
	bne _0801D67C
	ldr r1, _0801D5FC @ =gUnk_03004680
	ldrb r0, [r3, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _0801D600 @ =0x000001FF
	cmp r1, r0
	bhi _0801D604
	ldrh r0, [r2, #6]
	adds r0, #8
	b _0801D696
	.align 2, 0
_0801D5F0: .4byte gUnk_030047B8
_0801D5F4: .4byte gUnk_03005284
_0801D5F8: .4byte gUnk_03005220
_0801D5FC: .4byte gUnk_03004680
_0801D600: .4byte 0x000001FF
_0801D604:
	subs r1, r6, #1
	ldr r2, _0801D61C @ =gUnk_03005470
	ldrb r0, [r2]
	subs r0, #1
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmp r1, r0
	bhi _0801D620
	mov r0, ip
	ldrb r1, [r0]
	b _0801D622
	.align 2, 0
_0801D61C: .4byte gUnk_03005470
_0801D620:
	ldrb r1, [r2]
_0801D622:
	adds r3, r1, #0
	ldr r0, _0801D678 @ =gUnk_03005428
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r3, r0
	bhs _0801D6AA
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r1, r0, r7
	ldrb r0, [r1, #0x11]
	cmp r0, #0x35
	bne _0801D6AA
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r4, r0, r7
	adds r2, r1, #0
_0801D646:
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	ldrb r0, [r2, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	cmp r1, r0
	bne _0801D666
	ldrb r1, [r2, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x10]
	movs r0, #0x1c
	strb r0, [r2, #0xf]
_0801D666:
	adds r2, #0x1c
	adds r3, #1
	ldrb r0, [r5]
	cmp r3, r0
	bhs _0801D6AA
	ldrb r0, [r2, #0x11]
	cmp r0, #0x35
	beq _0801D646
	b _0801D6AA
	.align 2, 0
_0801D678: .4byte gUnk_03005428
_0801D67C:
	ldr r1, _0801D69C @ =gUnk_03004680
	ldrb r0, [r3, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bls _0801D6A0
	ldrh r0, [r2, #6]
	subs r0, #8
_0801D696:
	strh r0, [r2, #6]
	strh r0, [r2]
	b _0801D6AA
	.align 2, 0
_0801D69C: .4byte gUnk_03004680
_0801D6A0:
	movs r0, #0xf
	ands r0, r5
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0xc]
_0801D6AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D6B0
sub_0801D6B0: @ 0x0801D6B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _0801D700 @ =gUnk_03004C38
	ldrb r0, [r0]
	ldr r1, [sp]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, _0801D704 @ =gUnk_03002920
	lsls r3, r0, #3
	subs r0, r3, r0
	lsls r6, r0, #2
	adds r4, r6, r1
	ldrh r2, [r4]
	str r2, [sp, #8]
	ldrh r5, [r4, #2]
	str r5, [sp, #0xc]
	ldr r2, _0801D708 @ =gUnk_03005220
	adds r5, r2, #0
	adds r5, #0x59
	ldrb r0, [r5]
	mov r8, r2
	cmp r0, #0
	beq _0801D70C
	subs r0, #1
	strb r0, [r5]
	str r3, [sp, #0x2c]
	ldr r0, [sp]
	lsls r0, r0, #3
	str r0, [sp, #0x28]
	b _0801D8F6
	.align 2, 0
_0801D700: .4byte gUnk_03004C38
_0801D704: .4byte gUnk_03002920
_0801D708: .4byte gUnk_03005220
_0801D70C:
	ldrb r0, [r4, #0xf]
	str r3, [sp, #0x2c]
	ldr r1, [sp]
	lsls r1, r1, #3
	str r1, [sp, #0x28]
	cmp r0, #9
	bhi _0801D71C
	b _0801D8F6
_0801D71C:
	cmp r0, #0x13
	bne _0801D72C
	mov r0, r8
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D72C
	b _0801D8F6
_0801D72C:
	ldr r0, _0801D83C @ =gUnk_030007F4
	ldr r0, [r0]
	mov ip, r0
	ldr r0, _0801D840 @ =gUnk_0300290C
	ldr r1, [r0]
	str r3, [sp, #0x2c]
	ldr r2, [sp]
	lsls r2, r2, #3
	str r2, [sp, #0x28]
	cmp ip, r1
	bls _0801D744
	b _0801D8F6
_0801D744:
	str r6, [sp, #0x10]
	ldr r3, [sp]
	subs r0, r2, r3
	lsls r0, r0, #2
	mov sl, r0
	ldr r5, _0801D844 @ =gUnk_03002920
	add r5, sl
	str r5, [sp, #0x14]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x18]
	mov r1, ip
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov sb, r0
	ldr r7, _0801D844 @ =gUnk_03002920
	add r7, sb
_0801D766:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x1a
	bls _0801D76E
	b _0801D8E2
_0801D76E:
	cmp r0, #0x13
	bne _0801D774
	b _0801D8E2
_0801D774:
	ldr r2, [sp, #4]
	cmp ip, r2
	bne _0801D77C
	b _0801D8E2
_0801D77C:
	ldrb r0, [r7, #0x17]
	cmp r0, #1
	bne _0801D784
	b _0801D8E2
_0801D784:
	ldr r3, [sp, #0x10]
	ldr r5, _0801D844 @ =gUnk_03002920
	adds r4, r3, r5
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #0xd
	ldrh r2, [r7]
	adds r0, r2, #7
	cmp r1, r0
	bge _0801D86C
	adds r1, r3, #5
	subs r0, #0x16
	cmp r1, r0
	ble _0801D86C
	ldrh r1, [r4, #2]
	adds r0, r1, #0
	subs r0, #0x30
	ldrh r2, [r7, #2]
	cmp r0, r2
	bge _0801D86C
	subs r1, #0x18
	adds r0, r2, #0
	subs r0, #0x18
	cmp r1, r0
	ble _0801D86C
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0801D7BE
	b _0801D8E2
_0801D7BE:
	ldr r1, [sp, #0x14]
	ldrb r0, [r1, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	ldr r2, [sp, #0x14]
	strb r1, [r2, #0xc]
_0801D7CE:
	ldr r6, _0801D844 @ =gUnk_03002920
	ldr r3, [sp, #0x10]
	adds r4, r3, r6
	movs r5, #0
	strb r5, [r4, #0x16]
	mov r0, ip
	strb r0, [r4, #9]
	movs r0, #0xa
	strb r0, [r4, #0xf]
	ldr r0, [sp]
	movs r1, #0
	bl sub_08025B78
	movs r0, #0x5f
	bl m4aSongNumStart
	ldr r1, _0801D848 @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x42
	ldrb r0, [r0]
	ldr r2, [sp, #4]
	cmp r0, r2
	beq _0801D7FE
	b _0801D8F6
_0801D7FE:
	adds r0, r1, #0
	adds r0, #0x3c
	strb r5, [r0]
	adds r2, r1, #0
	adds r2, #0x39
	movs r0, #1
	strb r0, [r2]
	movs r0, #0
	strh r5, [r1, #0x26]
	strh r5, [r1, #0x28]
	adds r2, #0xc
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x3f
	mov r3, sp
	ldrb r3, [r3, #4]
	strb r3, [r0]
	movs r0, #0
	movs r1, #0xe
	bl sub_08025B78
	mov r5, sl
	adds r0, r5, r6
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #1
	bne _0801D84C
	ldrh r0, [r4]
	subs r0, #4
	b _0801D85A
	.align 2, 0
_0801D83C: .4byte gUnk_030007F4
_0801D840: .4byte gUnk_0300290C
_0801D844: .4byte gUnk_03002920
_0801D848: .4byte gUnk_03005220
_0801D84C:
	cmp r0, #2
	bne _0801D856
	ldrh r0, [r4]
	subs r0, #6
	b _0801D85A
_0801D856:
	ldrh r0, [r4]
	subs r0, #2
_0801D85A:
	strh r0, [r6]
	ldr r1, [sp, #0x18]
	ldrh r0, [r1, #2]
	adds r0, #0x18
	ldr r2, _0801D868 @ =gUnk_03002920
	strh r0, [r2, #2]
	b _0801D8F6
	.align 2, 0
_0801D868: .4byte gUnk_03002920
_0801D86C:
	ldr r3, [sp, #0x10]
	ldr r5, _0801D8BC @ =gUnk_03002920
	adds r4, r3, r5
	ldrh r6, [r4]
	adds r1, r6, #0
	subs r1, #0x1f
	adds r2, r5, #0
	add r2, sb
	ldrh r5, [r2]
	adds r0, r5, #7
	cmp r1, r0
	bge _0801D8D8
	adds r1, #0x36
	subs r0, #0x16
	cmp r1, r0
	ble _0801D8D8
	ldrh r3, [r4, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r2, #2]
	subs r0, r2, #2
	cmp r1, r0
	bge _0801D8D8
	subs r1, r3, #2
	subs r0, #0x16
	cmp r1, r0
	ble _0801D8D8
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0801D8E2
	cmp r6, r5
	bhs _0801D8C0
	ldr r2, _0801D8BC @ =gUnk_03002920
	add r2, sl
	ldrb r1, [r2, #0xc]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	b _0801D8CC
	.align 2, 0
_0801D8BC: .4byte gUnk_03002920
_0801D8C0:
	ldr r2, _0801D8D4 @ =gUnk_03002920
	add r2, sl
	ldrb r1, [r2, #0xc]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x30
_0801D8CC:
	orrs r0, r1
	strb r0, [r2, #0xc]
	b _0801D7CE
	.align 2, 0
_0801D8D4: .4byte gUnk_03002920
_0801D8D8:
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1, #9]
	cmp r0, ip
	bne _0801D8E2
	b _0801DAE4
_0801D8E2:
	movs r2, #0x1c
	add sb, r2
	adds r7, #0x1c
	movs r3, #1
	add ip, r3
	ldr r4, _0801D940 @ =gUnk_0300290C
	ldr r0, [r4]
	cmp ip, r0
	bhi _0801D8F6
	b _0801D766
_0801D8F6:
	ldr r0, _0801D944 @ =gUnk_03002920
	ldr r5, [sp, #0x2c]
	ldr r2, [sp, #4]
	subs r1, r5, r2
	lsls r1, r1, #2
	adds r3, r1, r0
	ldrb r1, [r3, #9]
	cmp r1, #0
	bne _0801D90A
	b _0801DC10
_0801D90A:
	ldr r4, [sp, #0x28]
	ldr r5, [sp]
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r1, _0801D944 @ =gUnk_03002920
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #1
	bne _0801D98E
	ldrh r2, [r3]
	ldrb r0, [r3, #9]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _0801D944 @ =gUnk_03002920
	adds r1, r1, r4
	ldrh r1, [r1]
	subs r0, r1, #1
	cmp r2, r0
	bge _0801D948
	adds r0, r2, #1
	strh r0, [r3]
	movs r5, #1
	str r5, [sp, #0x20]
	b _0801D95C
	.align 2, 0
_0801D940: .4byte gUnk_0300290C
_0801D944: .4byte gUnk_03002920
_0801D948:
	adds r0, r1, #1
	cmp r2, r0
	ble _0801D958
	subs r0, r2, #1
	strh r0, [r3]
	movs r0, #0xff
	str r0, [sp, #0x20]
	b _0801D95C
_0801D958:
	movs r1, #0
	str r1, [sp, #0x20]
_0801D95C:
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #4]
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _0801D984 @ =gUnk_03002920
	adds r2, r0, r4
	ldrh r3, [r2, #2]
	ldrb r1, [r2, #9]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	adds r0, #0x18
	cmp r3, r0
	ble _0801D988
	subs r0, r3, #1
	strh r0, [r2, #2]
	b _0801DA38
	.align 2, 0
_0801D984: .4byte gUnk_03002920
_0801D988:
	movs r0, #0
	str r0, [sp, #0x24]
	b _0801DA58
_0801D98E:
	cmp r0, #2
	bne _0801D9E8
	ldrh r2, [r3]
	ldrb r0, [r3, #9]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _0801D9B4 @ =gUnk_03002920
	adds r1, r1, r4
	ldrh r0, [r1]
	subs r0, #0x18
	cmp r2, r0
	bge _0801D9B8
	adds r0, r2, #1
	strh r0, [r3]
	movs r5, #1
	str r5, [sp, #0x20]
	b _0801D9BC
	.align 2, 0
_0801D9B4: .4byte gUnk_03002920
_0801D9B8:
	movs r0, #0
	str r0, [sp, #0x20]
_0801D9BC:
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #4]
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _0801D9E4 @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r2, [r3, #2]
	ldrb r1, [r3, #9]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #2]
	adds r0, r1, #1
	cmp r2, r0
	bgt _0801DA34
	subs r0, r1, #1
	cmp r2, r0
	blt _0801DA4A
	b _0801DA54
	.align 2, 0
_0801D9E4: .4byte gUnk_03002920
_0801D9E8:
	cmp r0, #3
	bne _0801DA58
	ldrh r2, [r3]
	ldrb r0, [r3, #9]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _0801DA0C @ =gUnk_03002920
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r0, #0x18
	cmp r2, r0
	ble _0801DA10
	subs r0, r2, #1
	strh r0, [r3]
	movs r5, #0xff
	str r5, [sp, #0x20]
	b _0801DA14
	.align 2, 0
_0801DA0C: .4byte gUnk_03002920
_0801DA10:
	movs r0, #0
	str r0, [sp, #0x20]
_0801DA14:
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #4]
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r4, _0801DA40 @ =gUnk_03002920
	adds r3, r0, r4
	ldrh r2, [r3, #2]
	ldrb r1, [r3, #9]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #2]
	adds r0, r1, #1
	cmp r2, r0
	ble _0801DA44
_0801DA34:
	subs r0, r2, #1
	strh r0, [r3, #2]
_0801DA38:
	movs r5, #0xff
	str r5, [sp, #0x24]
	b _0801DA58
	.align 2, 0
_0801DA40: .4byte gUnk_03002920
_0801DA44:
	subs r0, r1, #1
	cmp r2, r0
	bge _0801DA54
_0801DA4A:
	adds r0, r2, #1
	strh r0, [r3, #2]
	movs r0, #1
	str r0, [sp, #0x24]
	b _0801DA58
_0801DA54:
	movs r1, #0
	str r1, [sp, #0x24]
_0801DA58:
	ldr r3, _0801DB40 @ =gUnk_03004790
	ldr r2, [sp, #0x2c]
	ldr r4, [sp, #4]
	subs r0, r2, r4
	lsls r0, r0, #2
	ldr r1, _0801DB44 @ =gUnk_03002920
	adds r5, r0, r1
	ldrh r2, [r5]
	adds r0, r2, #6
	asrs r0, r0, #3
	mov r8, r0
	ldrh r7, [r5, #2]
	subs r1, r7, #4
	asrs r1, r1, #3
	ldr r0, _0801DB48 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r4, [r0]
	muls r1, r4, r1
	ldr r6, [r3, #0x14]
	mov r3, r8
	adds r0, r3, r1
	adds r0, r6, r0
	ldrb r3, [r0]
	subs r2, #0xf
	asrs r2, r2, #3
	adds r1, r2, r1
	adds r1, r6, r1
	adds r0, r3, #0
	ldrb r1, [r1]
	cmp r3, r1
	bhs _0801DA98
	adds r0, r1, #0
_0801DA98:
	adds r3, r0, #0
	adds r0, r7, #0
	subs r0, #0x16
	asrs r0, r0, #3
	adds r1, r0, #0
	muls r1, r4, r1
	mov r4, r8
	adds r0, r4, r1
	adds r0, r6, r0
	adds r4, r3, #0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0801DAB4
	adds r4, r0, #0
_0801DAB4:
	adds r3, r4, #0
	adds r0, r2, r1
	adds r0, r6, r0
	adds r1, r3, #0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0801DAC4
	adds r1, r0, #0
_0801DAC4:
	ldr r0, _0801DB4C @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	ldr r2, _0801DB50 @ =gUnk_03005220
	mov r8, r2
	cmp r0, r1
	bls _0801DAE4
	ldrb r0, [r5, #9]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _0801DB44 @ =gUnk_03002920
	adds r2, r1, r3
	ldrb r0, [r2, #0xf]
	cmp r0, #0x13
	bne _0801DB58
_0801DAE4:
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #4]
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r1, _0801DB44 @ =gUnk_03002920
	adds r3, r0, r1
	movs r0, #0
	strb r0, [r3, #9]
	ldr r2, [sp, #0x28]
	ldr r4, [sp]
	subs r1, r2, r4
	lsls r1, r1, #2
	ldr r5, _0801DB44 @ =gUnk_03002920
	adds r1, r1, r5
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1, #0xc]
	movs r1, #0
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r3]
	mov r2, sp
	ldrh r2, [r2, #0xc]
	strh r2, [r3, #2]
	mov r2, r8
	adds r2, #0x3f
	ldrb r0, [r2]
	ldr r4, [sp, #4]
	cmp r0, r4
	bne _0801DB54
	mov r0, r8
	adds r0, #0x39
	strb r1, [r0]
	adds r0, #0x1e
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	strb r1, [r2]
	movs r0, #0x13
	strb r0, [r3, #0xf]
	mov r1, r8
	adds r1, #0x59
	movs r0, #0x3c
	strb r0, [r1]
	b _0801DE22
	.align 2, 0
_0801DB40: .4byte gUnk_03004790
_0801DB44: .4byte gUnk_03002920
_0801DB48: .4byte gUnk_03003430
_0801DB4C: .4byte gUnk_03004654
_0801DB50: .4byte gUnk_03005220
_0801DB54:
	strb r1, [r3, #0xf]
	b _0801DE22
_0801DB58:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	orrs r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801DBF2
	ldr r3, [sp, #0x28]
	ldr r4, [sp]
	subs r1, r3, r4
	lsls r1, r1, #2
	ldr r0, _0801DB9C @ =gUnk_03002920
	adds r1, r1, r0
	ldrb r0, [r1, #0xc]
	lsrs r0, r0, #4
	adds r0, #6
	strb r0, [r5, #0xf]
	ldrh r0, [r2, #2]
	strh r0, [r5, #2]
	ldrb r0, [r1, #0xc]
	lsrs r0, r0, #4
	cmp r0, #1
	bne _0801DBA0
	ldrh r0, [r2]
	strh r0, [r5]
	ldrb r1, [r5, #9]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801DB9C @ =gUnk_03002920
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	adds r0, #0x18
	strh r0, [r5, #2]
	b _0801DBB0
	.align 2, 0
_0801DB9C: .4byte gUnk_03002920
_0801DBA0:
	cmp r0, #2
	bne _0801DBAA
	ldrh r0, [r2]
	subs r0, #0x18
	b _0801DBAE
_0801DBAA:
	ldrh r0, [r2]
	adds r0, #0x18
_0801DBAE:
	strh r0, [r5]
_0801DBB0:
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #4]
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _0801DC30 @ =gUnk_03002920
	adds r0, r0, r4
	ldrb r1, [r0, #9]
	movs r3, #0
	strb r1, [r0, #8]
	strb r3, [r0, #9]
	ldr r5, [sp, #0x28]
	ldr r0, [sp]
	subs r1, r5, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrb r2, [r1, #0xc]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1, #0xc]
	ldr r1, _0801DC34 @ =gUnk_03005220
	adds r2, r1, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	mov r8, r1
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _0801DBF2
	mov r0, r8
	adds r0, #0x57
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	strb r3, [r2]
_0801DBF2:
	mov r0, r8
	adds r0, #0x42
	ldrb r0, [r0]
	ldr r2, [sp, #4]
	cmp r0, r2
	bne _0801DC10
	mov r0, r8
	adds r0, #0x56
	add r3, sp, #0x20
	ldrb r3, [r3]
	strb r3, [r0]
	adds r0, #1
	add r4, sp, #0x24
	ldrb r4, [r4]
	strb r4, [r0]
_0801DC10:
	ldr r5, [sp, #0x28]
	ldr r1, [sp]
	subs r0, r5, r1
	lsls r0, r0, #2
	ldr r2, _0801DC30 @ =gUnk_03002920
	adds r1, r0, r2
	ldrb r0, [r1, #0xc]
	lsrs r0, r0, #4
	cmp r0, #1
	beq _0801DC7C
	cmp r0, #1
	bgt _0801DC38
	cmp r0, #0
	beq _0801DC9A
	b _0801DCEE
	.align 2, 0
_0801DC30: .4byte gUnk_03002920
_0801DC34: .4byte gUnk_03005220
_0801DC38:
	cmp r0, #2
	beq _0801DC42
	cmp r0, #3
	beq _0801DC5E
	b _0801DCEE
_0801DC42:
	movs r0, #9
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0801DCD4
	ldrb r0, [r1, #8]
	adds r0, #4
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x18
	ble _0801DCEE
	movs r0, #0x18
	strb r0, [r1, #8]
	b _0801DCEE
_0801DC5E:
	movs r0, #9
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0801DCD4
	ldrb r0, [r1, #8]
	subs r0, #4
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0x18
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0801DCEE
	strb r2, [r1, #8]
	b _0801DCEE
_0801DC7C:
	movs r0, #8
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0801DC9A
	ldrb r0, [r1, #9]
	subs r0, #4
	strb r0, [r1, #9]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0x18
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0801DCEE
	strb r2, [r1, #9]
	b _0801DCEE
_0801DC9A:
	ldr r3, [sp, #0x28]
	ldr r4, [sp]
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _0801DCB4 @ =gUnk_03002920
	adds r1, r0, r5
	ldrb r0, [r1, #8]
	movs r2, #8
	ldrsb r2, [r1, r2]
	cmp r2, #0
	ble _0801DCB8
	subs r0, #4
	b _0801DCBE
	.align 2, 0
_0801DCB4: .4byte gUnk_03002920
_0801DCB8:
	cmp r2, #0
	bge _0801DCC0
	adds r0, #4
_0801DCBE:
	strb r0, [r1, #8]
_0801DCC0:
	ldr r1, [sp, #0x28]
	ldr r2, [sp]
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _0801DD34 @ =gUnk_03002920
	adds r0, r0, r3
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801DCEE
_0801DCD4:
	ldr r4, [sp, #0x28]
	ldr r5, [sp]
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r2, _0801DD34 @ =gUnk_03002920
	adds r1, r0, r2
	ldrb r2, [r1, #9]
	movs r0, #9
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0801DCEE
	adds r0, r2, #4
	strb r0, [r1, #9]
_0801DCEE:
	ldr r3, [sp, #0x28]
	ldr r4, [sp]
	subs r0, r3, r4
	lsls r0, r0, #2
	ldr r5, _0801DD34 @ =gUnk_03002920
	adds r4, r0, r5
	movs r0, #8
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0801DD3C
	ldr r3, _0801DD38 @ =gUnk_03004680
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #8
	ldrsb r1, [r4, r1]
	lsls r1, r1, #4
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r2, r5, #0
	subs r2, r2, r1
	movs r1, #0
	strh r2, [r0, #6]
	strh r2, [r0]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	b _0801DDAC
	.align 2, 0
_0801DD34: .4byte gUnk_03002920
_0801DD38: .4byte gUnk_03004680
_0801DD3C:
	cmp r0, #0
	bge _0801DD78
	ldr r3, _0801DD70 @ =gUnk_03004680
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #3
	adds r1, r1, r3
	movs r0, #8
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	lsls r0, r0, #4
	ldr r2, _0801DD74 @ =0xFFFFFD80
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r1, #6]
	strh r0, [r1]
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r2, [r0, #4]
	strh r2, [r0, #2]
	b _0801DDAC
	.align 2, 0
_0801DD70: .4byte gUnk_03004680
_0801DD74: .4byte 0xFFFFFD80
_0801DD78:
	movs r0, #9
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0801DDAC
	ldr r2, _0801DDFC @ =gUnk_03004680
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0, #6]
	strh r1, [r0]
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r0, #9
	ldrsb r0, [r4, r0]
	rsbs r0, r0, #0
	lsls r0, r0, #4
	ldr r3, _0801DE00 @ =0xFFFFFD80
	adds r0, r0, r3
	strh r0, [r1, #4]
	strh r0, [r1, #2]
_0801DDAC:
	ldr r4, [sp, #0x28]
	ldr r5, [sp]
	subs r0, r4, r5
	lsls r0, r0, #2
	ldr r1, _0801DE04 @ =gUnk_03002920
	adds r3, r0, r1
	ldrb r0, [r3, #8]
	ldrb r1, [r3, #9]
	orrs r0, r1
	cmp r0, #0
	beq _0801DE10
	ldr r2, _0801DE08 @ =gUnk_03004C38
	ldrb r1, [r2]
	adds r1, r5, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _0801DE04 @ =gUnk_03002920
	adds r0, r0, r4
	movs r1, #8
	ldrsb r1, [r3, r1]
	ldr r5, _0801DE0C @ =0x0000FFFC
	adds r1, r1, r5
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r3]
	ldrb r1, [r2]
	ldr r0, [sp]
	adds r1, r0, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #9
	ldrsb r1, [r3, r1]
	adds r1, #4
	ldrh r0, [r0, #2]
	adds r1, r1, r0
	strh r1, [r3, #2]
	b _0801DE22
	.align 2, 0
_0801DDFC: .4byte gUnk_03004680
_0801DE00: .4byte 0xFFFFFD80
_0801DE04: .4byte gUnk_03002920
_0801DE08: .4byte gUnk_03004C38
_0801DE0C: .4byte 0x0000FFFC
_0801DE10:
	ldr r0, _0801DE34 @ =0x0000FFE0
	strh r0, [r3]
	ldr r3, _0801DE38 @ =0x03004D88
	ldr r2, _0801DE3C @ =0x03003628
	ldr r1, _0801DE40 @ =0x030034D0
	movs r0, #0x64
	str r0, [r1]
	str r0, [r2]
	str r0, [r3]
_0801DE22:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DE34: .4byte 0x0000FFE0
_0801DE38: .4byte 0x03004D88
_0801DE3C: .4byte 0x03003628
_0801DE40: .4byte 0x030034D0

	thumb_func_start sub_0801DE44
sub_0801DE44: @ 0x0801DE44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r7, _0801DEC0 @ =gUnk_03002920
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r6, r0, r7
	ldrb r0, [r6, #9]
	subs r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r6, #9]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0801DF3E
	movs r0, #0x19
	strb r0, [r6, #9]
	ldrb r2, [r6, #8]
	cmp r2, #5
	bhi _0801DE94
	ldr r0, _0801DEC4 @ =gUnk_0300528C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	adds r2, #0xc
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0
	bl sub_0801E664
_0801DE94:
	ldrb r0, [r6, #8]
	subs r0, #1
	strb r0, [r6, #8]
	ands r0, r4
	cmp r0, #0
	bne _0801DEC8
	ldr r0, _0801DEC4 @ =gUnk_0300528C
	ldrb r3, [r0]
	subs r3, r5, r3
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r2, #2
	bl sub_0801E664
	b _0801DF3E
	.align 2, 0
_0801DEC0: .4byte gUnk_03002920
_0801DEC4: .4byte gUnk_0300528C
_0801DEC8:
	movs r0, #0x56
	bl m4aSongNumStart
	ldrb r0, [r6, #8]
	cmp r0, #9
	bls _0801DF02
	ldr r2, _0801DFBC @ =gUnk_0300528C
	ldrb r1, [r2]
	adds r1, r5, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r1, r8
	strb r1, [r0, #0xf]
	ldrb r4, [r2]
	adds r4, r5, r4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r0, [r6, #8]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0800087C
_0801DF02:
	ldrb r0, [r6, #8]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_0800087C
	ldrb r0, [r6, #8]
	cmp r0, #9
	bne _0801DF3E
	ldr r2, _0801DFBC @ =gUnk_0300528C
	ldrb r1, [r2]
	adds r1, r5, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	ldrb r1, [r2]
	adds r1, r5, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r1, r8
	strb r1, [r0, #0x10]
_0801DF3E:
	ldr r3, _0801DFC0 @ =gUnk_03002920
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r3
	ldr r6, _0801DFBC @ =gUnk_0300528C
	ldrb r1, [r6]
	subs r1, r5, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r4]
	ldrb r1, [r6]
	subs r1, r5, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	subs r0, #0x20
	strh r0, [r4, #2]
	ldrb r0, [r4, #8]
	cmp r0, #9
	bls _0801DFB0
	ldrb r2, [r6]
	adds r0, r5, r2
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	subs r2, r5, r2
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	subs r0, #3
	strh r0, [r1]
	ldrb r2, [r6]
	adds r0, r5, r2
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	subs r2, r5, r2
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	subs r0, #0x20
	strh r0, [r1, #2]
	ldrh r0, [r4]
	adds r0, #3
	strh r0, [r4]
_0801DFB0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFBC: .4byte gUnk_0300528C
_0801DFC0: .4byte gUnk_03002920

	thumb_func_start sub_0801DFC4
sub_0801DFC4: @ 0x0801DFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0801DFF4 @ =gUnk_03002920
	lsls r0, r0, #3
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r7, r1, #0
	cmp r0, #0
	bne _0801DFF8
	ldrh r0, [r2]
	adds r0, #1
	b _0801DFFC
	.align 2, 0
_0801DFF4: .4byte gUnk_03002920
_0801DFF8:
	ldrh r0, [r2]
	subs r0, #1
_0801DFFC:
	strh r0, [r2]
	ldr r0, _0801E058 @ =gUnk_03004654
	ldr r5, [r0]
	ldr r4, _0801E05C @ =gUnk_03004790
	mov r0, r8
	lsls r3, r0, #3
	subs r0, r3, r0
	lsls r0, r0, #2
	mov ip, r0
	adds r0, r0, r7
	ldrh r2, [r0]
	lsrs r2, r2, #3
	ldrh r1, [r0, #2]
	lsrs r1, r1, #3
	ldr r0, _0801E060 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r4, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r1, [r5, #0x1a]
	mov sb, r3
	ldrb r0, [r0]
	cmp r1, r0
	bhi _0801E068
_0801E030:
	ldr r0, _0801E064 @ =gUnk_03002920
	mov r1, sb
	mov r2, r8
	subs r4, r1, r2
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #2
	movs r3, #0
	bl sub_0801E664
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x10]
	movs r0, #0x93
	bl m4aSongNumStart
	b _0801E196
	.align 2, 0
_0801E058: .4byte gUnk_03004654
_0801E05C: .4byte gUnk_03004790
_0801E060: .4byte gUnk_03003430
_0801E064: .4byte gUnk_03002920
_0801E068:
	movs r6, #0
	ldr r0, _0801E0A0 @ =gUnk_03002908
	ldr r1, [r0]
	mov sl, r0
	cmp r6, r1
	bls _0801E076
	b _0801E196
_0801E076:
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	adds r4, r0, r7
	ldrb r0, [r4, #0xf]
	cmp r0, #0x19
	bne _0801E086
	b _0801E18A
_0801E086:
	cmp r0, #0x1a
	bls _0801E08C
	b _0801E18A
_0801E08C:
	ldrb r0, [r4, #0x11]
	cmp r0, #0x6e
	beq _0801E0E8
	cmp r0, #0x6e
	bgt _0801E0A4
	cmp r0, #0x25
	beq _0801E0B2
	cmp r0, #0x35
	beq _0801E150
	b _0801E180
	.align 2, 0
_0801E0A0: .4byte gUnk_03002908
_0801E0A4:
	cmp r0, #0x6f
	beq _0801E0B2
	cmp r0, #0x7d
	bgt _0801E180
	cmp r0, #0x76
	blt _0801E180
	b _0801E0E8
_0801E0B2:
	mov r0, ip
	adds r4, r0, r7
	ldrh r5, [r4]
	adds r0, r5, #0
	subs r0, #8
	subs r1, r1, r6
	lsls r1, r1, #2
	adds r3, r1, r7
	ldrh r2, [r3]
	adds r1, r2, #7
	cmp r0, r1
	bge _0801E180
	adds r1, r5, #0
	adds r1, #8
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	ble _0801E180
	ldrh r2, [r4, #2]
	adds r0, r2, #0
	subs r0, #0x18
	ldrh r1, [r3, #2]
	cmp r0, r1
	bge _0801E180
	adds r0, r1, #0
	subs r0, #0x18
	b _0801E17A
_0801E0E8:
	mov r2, ip
	adds r3, r2, r7
	ldrh r4, [r3]
	subs r0, r4, #4
	subs r1, r1, r6
	lsls r1, r1, #2
	adds r5, r1, r7
	ldrh r2, [r5]
	adds r1, r2, #4
	cmp r0, r1
	bge _0801E180
	adds r1, r4, #4
	subs r0, r2, #4
	cmp r1, r0
	ble _0801E180
	ldrh r2, [r3, #2]
	adds r0, r2, #0
	subs r0, #0xc
	ldrh r1, [r5, #2]
	cmp r0, r1
	bge _0801E180
	adds r0, r1, #0
	subs r0, #0x14
	cmp r2, r0
	ble _0801E180
	cmp r6, #0
	bne _0801E140
	ldr r0, _0801E138 @ =gUnk_03003638
	ldr r0, [r0]
	subs r6, r0, #1
	ldr r0, _0801E13C @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E18A
	movs r0, #1
	bl sub_08014624
	b _0801E030
	.align 2, 0
_0801E138: .4byte gUnk_03003638
_0801E13C: .4byte gUnk_03005220
_0801E140:
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #2
	bl sub_0801E664
	b _0801E030
_0801E150:
	mov r0, ip
	adds r3, r0, r7
	ldrh r5, [r3]
	subs r1, r5, #4
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #0xf
	cmp r1, r0
	bge _0801E180
	adds r1, r5, #4
	subs r0, #0x1e
	cmp r1, r0
	ble _0801E180
	ldrh r2, [r3, #2]
	adds r0, r2, #0
	subs r0, #0xc
	ldrh r1, [r4, #2]
	cmp r0, r1
	bge _0801E180
	adds r0, r1, #0
	subs r0, #0x20
_0801E17A:
	cmp r2, r0
	ble _0801E180
	b _0801E030
_0801E180:
	cmp r6, #0
	bne _0801E18A
	ldr r0, _0801E1A4 @ =gUnk_03003638
	ldr r0, [r0]
	subs r6, r0, #1
_0801E18A:
	adds r6, #1
	mov r1, sl
	ldr r0, [r1]
	cmp r6, r0
	bhi _0801E196
	b _0801E076
_0801E196:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E1A4: .4byte gUnk_03003638

	thumb_func_start sub_0801E1A8
sub_0801E1A8: @ 0x0801E1A8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0801E2D4 @ =gUnk_030034E4
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _0801E202
	ldr r1, _0801E2D8 @ =gUnk_03005220
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r3, r1, #0
	cmp r0, #7
	bne _0801E202
	ldr r0, _0801E2DC @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801E1E8
	adds r0, r3, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801E1E8
	ldr r1, _0801E2E0 @ =gUnk_03005498
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801E1E8
	subs r0, #1
	strb r0, [r1]
_0801E1E8:
	adds r1, r3, #0
	adds r1, #0x5d
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801E202
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0801E2E0 @ =gUnk_03005498
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0801E2E4 @ =0x04000050
	movs r0, #0xa7
	strh r0, [r1]
_0801E202:
	ldr r1, _0801E2E8 @ =gUnk_03002920
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrh r0, [r3, #6]
	mov ip, r1
	adds r6, r2, #0
	cmp r0, #0x8b
	bls _0801E300
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, _0801E2EC @ =0x0000FFF8
	strh r0, [r3, #2]
	strh r0, [r3]
	ldrb r0, [r4]
	ldr r3, _0801E2D8 @ =gUnk_03005220
	cmp r0, #0
	bne _0801E24A
	adds r0, r3, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801E24A
	ldr r1, _0801E2E0 @ =gUnk_03005498
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801E23C
	b _0801E34A
_0801E23C:
	movs r0, #9
	strb r0, [r1]
	ldr r1, _0801E2E4 @ =0x04000050
	movs r4, #0xd0
	lsls r4, r4, #2
	adds r0, r4, #0
	strh r0, [r1]
_0801E24A:
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r1, r0, #0x1d
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E25A
	adds r2, #1
_0801E25A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E264
	adds r2, #1
_0801E264:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0801E26E
	adds r2, #1
_0801E26E:
	ldr r3, _0801E2F0 @ =gUnk_03000900
	lsls r2, r2, #1
	ldr r7, _0801E2F4 @ =0x0000024D
	adds r1, r2, r7
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r4, #0xa3
	lsls r4, r4, #2
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r4, #0
	strh r0, [r1]
	adds r7, #1
	adds r1, r2, r7
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r7, #0x3f
	adds r0, r2, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0801E2F8 @ =0x0000026D
	adds r1, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r7, #0x1f
	adds r0, r2, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0801E2FC @ =0x0000026E
	adds r1, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r7, #1
	adds r2, r2, r7
	lsls r2, r2, #1
	adds r2, r2, r3
	ldrh r0, [r2]
	strh r0, [r1]
	subs r0, r6, r5
	lsls r0, r0, #2
	add r0, ip
	strb r4, [r0, #0x10]
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	b _0801E34A
	.align 2, 0
_0801E2D4: .4byte gUnk_030034E4
_0801E2D8: .4byte gUnk_03005220
_0801E2DC: .4byte gUnk_03004C20
_0801E2E0: .4byte gUnk_03005498
_0801E2E4: .4byte 0x04000050
_0801E2E8: .4byte gUnk_03002920
_0801E2EC: .4byte 0x0000FFF8
_0801E2F0: .4byte gUnk_03000900
_0801E2F4: .4byte 0x0000024D
_0801E2F8: .4byte 0x0000026D
_0801E2FC: .4byte 0x0000026E
_0801E300:
	ldrb r0, [r3, #9]
	adds r0, #1
	strb r0, [r3, #9]
	ldrh r0, [r3, #4]
	cmp r0, #0x82
	bls _0801E324
	ldrh r1, [r3]
	ldr r0, _0801E320 @ =gUnk_03003430
	adds r0, #0x40
	ldrh r0, [r0]
	adds r0, #0x82
	subs r0, r1, r0
	asrs r0, r0, #4
	subs r1, r1, r0
	b _0801E336
	.align 2, 0
_0801E320: .4byte gUnk_03003430
_0801E324:
	ldr r0, _0801E350 @ =gUnk_03003430
	adds r0, #0x40
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r2, r1, #0
	subs r2, #0x82
	subs r0, r0, r2
	asrs r0, r0, #4
	adds r1, r1, r0
_0801E336:
	strh r1, [r3]
	subs r1, r6, r5
	lsls r1, r1, #2
	add r1, ip
	ldrb r0, [r1, #9]
	subs r0, #0xc
	asrs r0, r0, #2
	ldrh r2, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
_0801E34A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E350: .4byte gUnk_03003430

	thumb_func_start sub_0801E354
sub_0801E354: @ 0x0801E354
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0801E3A0 @ =gUnk_03002920
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r2, [r4, #6]
	adds r7, r1, #0
	cmp r2, #0x8f
	bls _0801E3A8
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _0801E3A8
	ldr r2, _0801E3A4 @ =gUnk_03005220
	movs r1, #1
	ldrb r0, [r4, #8]
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	adds r2, #0x4c
	ldrb r0, [r2]
	cmp r0, #0x62
	bhi _0801E398
	adds r0, #1
	strb r0, [r2]
	bl sub_08025F94
_0801E398:
	strb r6, [r4, #0x10]
	movs r0, #0x1c
	strb r0, [r4, #0xf]
	b _0801E3F2
	.align 2, 0
_0801E3A0: .4byte gUnk_03002920
_0801E3A4: .4byte gUnk_03005220
_0801E3A8:
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrb r0, [r3, #9]
	adds r0, #1
	strb r0, [r3, #9]
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801E3C8
	ldrh r0, [r3, #2]
	adds r0, #3
	b _0801E3D2
_0801E3C8:
	ldrb r0, [r3, #9]
	subs r0, #0xc
	asrs r0, r0, #1
	ldrh r1, [r3, #2]
	adds r0, r0, r1
_0801E3D2:
	strh r0, [r3, #2]
	subs r5, r2, r5
	lsls r5, r5, #2
	adds r5, r5, r7
	ldr r0, _0801E3F8 @ =gUnk_03003430
	adds r0, #0x40
	ldrh r0, [r0]
	ldrh r4, [r5]
	adds r1, r4, #0
	subs r1, #0xec
	subs r0, r0, r1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r5]
_0801E3F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E3F8: .4byte gUnk_03003430

	thumb_func_start sub_0801E3FC
sub_0801E3FC: @ 0x0801E3FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #1
	mov sb, r0
_0801E40C:
	ldr r2, _0801E474 @ =gUnk_03002920
	mov r3, sb
	lsls r1, r3, #3
	subs r0, r1, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0xf]
	str r1, [sp]
	adds r3, #1
	str r3, [sp, #4]
	cmp r0, #0x1c
	bne _0801E426
	b _0801E642
_0801E426:
	ldr r0, _0801E478 @ =gUnk_03000830
	mov r4, sb
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #6
	beq _0801E436
	b _0801E642
_0801E436:
	movs r0, #0
	mov r8, r0
	ldr r0, _0801E47C @ =gUnk_030051C4
	ldr r1, [r0]
	mov sl, r0
	cmp r8, r1
	bls _0801E446
	b _0801E642
_0801E446:
	ldr r0, _0801E474 @ =gUnk_03002920
	mov r1, r8
	lsls r2, r1, #3
	subs r1, r2, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r3, [r1, #0xf]
	mov ip, r0
	adds r7, r2, #0
	cmp r3, #0x1a
	bls _0801E45E
	b _0801E634
_0801E45E:
	cmp r3, #0x19
	bne _0801E464
	b _0801E634
_0801E464:
	ldrb r1, [r1, #0x11]
	cmp r1, #0x6d
	bhi _0801E46C
	b _0801E622
_0801E46C:
	cmp r1, #0x70
	bne _0801E484
	ldr r5, _0801E480 @ =0x0000FFF1
	b _0801E49A
	.align 2, 0
_0801E474: .4byte gUnk_03002920
_0801E478: .4byte gUnk_03000830
_0801E47C: .4byte gUnk_030051C4
_0801E480: .4byte 0x0000FFF1
_0801E484:
	cmp r1, #0x6f
	bne _0801E498
	ldr r1, _0801E490 @ =0x0000FFF1
	ldr r5, _0801E494 @ =0x0000FFF9
	b _0801E49C
	.align 2, 0
_0801E490: .4byte 0x0000FFF1
_0801E494: .4byte 0x0000FFF9
_0801E498:
	ldr r5, _0801E504 @ =0x0000FFF4
_0801E49A:
	adds r1, r5, #0
_0801E49C:
	mov r2, r8
	subs r0, r7, r2
	lsls r0, r0, #2
	mov r3, ip
	adds r6, r0, r3
	ldrh r2, [r6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, [sp]
	mov r3, sb
	subs r0, r4, r3
	lsls r0, r0, #2
	mov r3, ip
	adds r4, r0, r3
	ldrh r3, [r4]
	adds r0, r3, #0
	adds r0, #0xc
	cmp r1, r0
	blt _0801E4C6
	b _0801E622
_0801E4C6:
	subs r0, r2, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r3, #0
	subs r1, #0xc
	cmp r0, r1
	bgt _0801E4D6
	b _0801E622
_0801E4D6:
	ldrh r1, [r6, #2]
	adds r0, r1, #0
	subs r0, #0x18
	ldrh r3, [r4, #2]
	cmp r0, r3
	blt _0801E4E4
	b _0801E622
_0801E4E4:
	adds r0, r3, #0
	subs r0, #0x18
	cmp r1, r0
	bgt _0801E4EE
	b _0801E622
_0801E4EE:
	ldrb r0, [r6, #0x11]
	subs r0, #0x6e
	cmp r0, #7
	bls _0801E4F8
	b _0801E614
_0801E4F8:
	lsls r0, r0, #2
	ldr r1, _0801E508 @ =_0801E50C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E504: .4byte 0x0000FFF4
_0801E508: .4byte _0801E50C
_0801E50C: @ jump table
	.4byte _0801E52C @ case 0
	.4byte _0801E57C @ case 1
	.4byte _0801E550 @ case 2
	.4byte _0801E5D8 @ case 3
	.4byte _0801E5D8 @ case 4
	.4byte _0801E5D8 @ case 5
	.4byte _0801E5D8 @ case 6
	.4byte _0801E5F6 @ case 7
_0801E52C:
	ldr r1, _0801E54C @ =gUnk_03005220
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E542
	adds r0, r1, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E634
_0801E542:
	movs r0, #1
	bl sub_08014624
	b _0801E622
	.align 2, 0
_0801E54C: .4byte gUnk_03005220
_0801E550:
	mov r4, r8
	subs r0, r7, r4
	lsls r0, r0, #2
	mov r2, ip
	adds r1, r0, r2
	ldrb r0, [r1, #9]
	cmp r0, #0
	bne _0801E622
	movs r0, #0x64
	strb r0, [r1, #9]
	ldr r2, _0801E578 @ =gUnk_03005220
	adds r2, #0x2e
	movs r0, #1
	ldrb r1, [r1, #8]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _0801E622
	.align 2, 0
_0801E578: .4byte gUnk_03005220
_0801E57C:
	mov r3, r8
	subs r0, r7, r3
	lsls r0, r0, #2
	mov r4, ip
	adds r2, r0, r4
	ldrb r0, [r2, #8]
	cmp r0, #1
	bls _0801E622
	ldrb r5, [r2, #9]
	cmp r5, #0
	bne _0801E622
	movs r0, #0x1b
	strb r0, [r2, #0xf]
	strb r5, [r2, #0x10]
	movs r0, #0x46
	strb r0, [r2, #9]
	ldr r4, _0801E5D0 @ =gUnk_03003610
	ldrb r0, [r4, #6]
	cmp r8, r0
	bne _0801E5AE
	ldrb r0, [r4, #7]
	movs r1, #0
	bl sub_08025B78
	strb r5, [r4, #6]
_0801E5AE:
	ldr r2, _0801E5D4 @ =gUnk_03005220
	adds r1, r2, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, r8
	bne _0801E5BC
	strb r5, [r1]
_0801E5BC:
	adds r0, r2, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, r8
	bne _0801E622
	movs r0, #1
	bl sub_080145A8
	b _0801E622
	.align 2, 0
_0801E5D0: .4byte gUnk_03003610
_0801E5D4: .4byte gUnk_03005220
_0801E5D8:
	mov r1, r8
	subs r0, r7, r1
	lsls r0, r0, #2
	mov r2, ip
	adds r4, r0, r2
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _0801E622
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EAA4
	movs r0, #0x87
	strb r0, [r4, #8]
	b _0801E622
_0801E5F6:
	mov r3, r8
	subs r0, r7, r3
	lsls r0, r0, #2
	mov r1, ip
	adds r4, r0, r1
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _0801E622
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801EF5C
	movs r0, #0xc8
	strb r0, [r4, #8]
	b _0801E622
_0801E614:
	ldrh r0, [r6]
	mov r2, r8
	lsls r3, r2, #0x18
	lsrs r3, r3, #0x18
	movs r2, #2
	bl sub_0801E664
_0801E622:
	ldr r3, _0801E65C @ =gUnk_030051C4
	mov sl, r3
	mov r4, r8
	cmp r4, #0
	bne _0801E634
	ldr r0, _0801E660 @ =gUnk_030052B4
	ldr r0, [r0]
	subs r0, #1
	mov r8, r0
_0801E634:
	movs r0, #1
	add r8, r0
	mov r1, sl
	ldr r0, [r1]
	cmp r8, r0
	bhi _0801E642
	b _0801E446
_0801E642:
	ldr r2, [sp, #4]
	mov sb, r2
	cmp r2, #8
	bhi _0801E64C
	b _0801E40C
_0801E64C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E65C: .4byte gUnk_030051C4
_0801E660: .4byte gUnk_030052B4

	thumb_func_start sub_0801E664
sub_0801E664: @ 0x0801E664
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	movs r6, #1
	ldr r2, _0801E6DC @ =gUnk_03003430
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r0, [r0]
	mov r1, sb
	subs r0, r1, r0
	ldr r1, _0801E6E0 @ =0xFFFFFEED
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _0801E6E4 @ =0xFEC90000
	cmp r0, r1
	bls _0801E6AE
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, r4, r0
	subs r0, #0xe0
	lsls r0, r0, #0x10
	ldr r1, _0801E6E8 @ =0xFEFC0000
	cmp r0, r1
	bhi _0801E6CA
_0801E6AE:
	ldr r0, _0801E6EC @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _0801E6CA
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _0801E6F0 @ =gUnk_03002920
	adds r0, r0, r2
	ldrb r0, [r0, #0x11]
	cmp r0, #0x7a
	bhi _0801E6CA
	cmp r5, #6
	bne _0801E77E
_0801E6CA:
	movs r3, #0
	movs r2, #1
	ldr r0, _0801E6F0 @ =gUnk_03002920
	adds r0, #0x1c
	ldrb r0, [r0, #0xf]
	cmp r0, #0x1c
	bne _0801E6F4
	movs r6, #1
	b _0801E724
	.align 2, 0
_0801E6DC: .4byte gUnk_03003430
_0801E6E0: .4byte 0xFFFFFEED
_0801E6E4: .4byte 0xFEC90000
_0801E6E8: .4byte 0xFEFC0000
_0801E6EC: .4byte gUnk_03004C20
_0801E6F0: .4byte gUnk_03002920
_0801E6F4:
	ldr r0, _0801E75C @ =gUnk_03000830
	lsls r1, r2, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	cmp r3, r0
	bhi _0801E70C
	ldrb r0, [r1]
	cmp r0, #6
	beq _0801E70C
	ldrb r0, [r1, #2]
	adds r3, r0, #0
	adds r6, r2, #0
_0801E70C:
	adds r2, #1
	cmp r2, #8
	bhi _0801E724
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0801E760 @ =gUnk_03002920
	adds r0, r0, r1
	ldrb r0, [r0, #0xf]
	cmp r0, #0x1c
	bne _0801E6F4
	adds r6, r2, #0
_0801E724:
	ldr r2, _0801E760 @ =gUnk_03002920
	mov r8, r2
	lsls r3, r6, #3
	subs r0, r3, r6
	lsls r0, r0, #2
	add r0, r8
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0x10]
	strb r2, [r0, #0xf]
	mov r1, sb
	strh r1, [r0]
	strh r4, [r0, #2]
	adds r4, r3, #0
	cmp r5, #2
	bne _0801E764
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #0x11]
	cmp r0, #0x7a
	bls _0801E764
	adds r0, r6, #0
	movs r1, #6
	bl sub_08025B78
	b _0801E76C
	.align 2, 0
_0801E75C: .4byte gUnk_03000830
_0801E760: .4byte gUnk_03002920
_0801E764:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08025B78
_0801E76C:
	ldr r3, _0801E7B8 @ =gUnk_03002920
	subs r1, r4, r6
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r2, [r1, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xc]
_0801E77E:
	cmp r5, #1
	bne _0801E7BC
	lsls r4, r6, #3
	subs r4, r4, r6
	lsls r4, r4, #2
	ldr r2, _0801E7B8 @ =gUnk_03002920
	adds r4, r4, r2
	ldrb r1, [r4, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xc]
	strb r7, [r4, #8]
	adds r0, r7, #0
	bl sub_08044F6C
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r5, _0801E7B8 @ =gUnk_03002920
	adds r0, r0, r5
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #2]
	b _0801EA90
	.align 2, 0
_0801E7B8: .4byte gUnk_03002920
_0801E7BC:
	cmp r5, #2
	beq _0801E7C2
	b _0801E9F6
_0801E7C2:
	cmp r7, #0
	bne _0801E7C8
	b _0801E9F6
_0801E7C8:
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	ldr r2, _0801E804 @ =gUnk_03002920
	adds r4, r1, r2
	movs r5, #0
	mov sl, r5
	mov r1, sl
	strb r1, [r4, #0x10]
	ldrb r1, [r4, #0x11]
	str r0, [sp]
	cmp r1, #0x70
	bne _0801E7E4
	b _0801E8E8
_0801E7E4:
	ldr r0, _0801E808 @ =gUnk_03005220
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, r7
	bne _0801E7F4
	movs r0, #1
	bl sub_080145A8
_0801E7F4:
	ldr r3, _0801E80C @ =gUnk_03004C20
	ldrb r0, [r3, #0xa]
	mov r8, r3
	cmp r0, #1
	bne _0801E810
	movs r0, #0x1c
	strb r0, [r4, #0xf]
	b _0801EA90
	.align 2, 0
_0801E804: .4byte gUnk_03002920
_0801E808: .4byte gUnk_03005220
_0801E80C: .4byte gUnk_03004C20
_0801E810:
	ldr r6, _0801E8A0 @ =gUnk_080E2B64
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r7, #0
	subs r2, #0xd
	movs r0, #0x2c
	adds r5, r2, #0
	muls r5, r0, r5
	str r5, [sp, #4]
	adds r1, r1, r5
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r5, _0801E8A4 @ =0x00001130
	mov sb, r5
	mov r5, sb
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r5, _0801E8A8 @ =0x00008980
	mov ip, r5
	mov r5, ip
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	adds r1, r1, r6
	ldrb r0, [r1, #4]
	strb r0, [r4, #9]
	mov r0, sl
	strb r0, [r4, #8]
	ldrb r0, [r4, #0x11]
	mov sl, r6
	cmp r0, #0x78
	beq _0801E860
	cmp r0, #0x7a
	beq _0801E860
	cmp r0, #0x7d
	bne _0801E8B0
_0801E860:
	ldr r4, _0801E8AC @ =gUnk_03002920
	ldr r1, [sp]
	subs r3, r1, r7
	lsls r3, r3, #2
	adds r3, r3, r4
	mov r5, r8
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xc]
	subs r0, #1
	ldr r2, _0801E8A4 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r5, #0xd]
	subs r0, #1
	ldr r2, _0801E8A8 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, sl
	ldrb r1, [r1, #5]
	lsls r1, r1, #4
	ldrb r2, [r3, #0xc]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	b _0801E8E8
	.align 2, 0
_0801E8A0: .4byte gUnk_080E2B64
_0801E8A4: .4byte 0x00001130
_0801E8A8: .4byte 0x00008980
_0801E8AC: .4byte gUnk_03002920
_0801E8B0:
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	ldr r0, [sp, #4]
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	mov r5, ip
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	adds r1, r1, r6
	ldrb r0, [r1, #5]
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
_0801E8E8:
	ldr r1, [sp]
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r2, _0801E9C0 @ =gUnk_03002920
	adds r0, r0, r2
	mov r8, r0
	ldrb r0, [r0, #0x11]
	cmp r0, #0x7a
	bls _0801E9DC
	ldr r4, _0801E9C4 @ =gUnk_03003610
	ldrb r5, [r4, #2]
	cmp r7, r5
	bne _0801E90E
	ldrb r0, [r4, #3]
	movs r1, #0
	bl sub_08025B78
	movs r0, #0
	strb r0, [r4, #2]
_0801E90E:
	ldr r0, _0801E9C8 @ =gUnk_0300528C
	mov ip, r0
	ldrb r2, [r0]
	adds r0, r7, r2
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r5, _0801E9C0 @ =gUnk_03002920
	adds r1, r1, r5
	ldrb r0, [r1, #8]
	cmp r0, #9
	bls _0801E94A
	lsls r1, r2, #1
	adds r1, r7, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r1, r7, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	strb r2, [r0, #0x10]
_0801E94A:
	mov r2, ip
	ldrb r1, [r2]
	adds r1, r7, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _0801E9C0 @ =gUnk_03002920
	adds r0, r0, r5
	movs r6, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	ldrb r1, [r2]
	adds r1, r7, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	strb r6, [r0, #0x10]
	ldrb r2, [r2]
	adds r2, r7, r2
	lsls r3, r2, #3
	subs r3, r3, r2
	lsls r3, r3, #2
	adds r3, r3, r5
	ldr r5, _0801E9CC @ =gUnk_080E2B64
	ldr r4, _0801E9D0 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r2, _0801E9D4 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801E9D8 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldrb r0, [r1, #4]
	strb r0, [r3, #8]
	mov r0, ip
	ldrb r1, [r0]
	adds r1, r7, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801E9C0 @ =gUnk_03002920
	adds r0, r0, r1
	strb r6, [r0, #9]
	movs r0, #0x1b
	mov r2, r8
	strb r0, [r2, #0xf]
	b _0801EA90
	.align 2, 0
_0801E9C0: .4byte gUnk_03002920
_0801E9C4: .4byte gUnk_03003610
_0801E9C8: .4byte gUnk_0300528C
_0801E9CC: .4byte gUnk_080E2B64
_0801E9D0: .4byte gUnk_03004C20
_0801E9D4: .4byte 0x00001130
_0801E9D8: .4byte 0x00008980
_0801E9DC:
	cmp r0, #0x70
	bne _0801E9E8
	movs r0, #0x1c
	mov r5, r8
	strb r0, [r5, #0xf]
	b _0801E9EE
_0801E9E8:
	movs r0, #0x19
	mov r1, r8
	strb r0, [r1, #0xf]
_0801E9EE:
	adds r0, r7, #0
	bl sub_08044F6C
	b _0801EA90
_0801E9F6:
	subs r0, r5, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801EA24
	cmp r7, #0
	beq _0801EA90
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _0801EA20 @ =gUnk_03002920
	adds r1, r0, r2
	ldrb r0, [r1, #0xf]
	cmp r0, #2
	beq _0801EA90
	movs r0, #0
	strb r0, [r1, #0x10]
	movs r0, #0x1c
	strb r0, [r1, #0xf]
	b _0801EA90
	.align 2, 0
_0801EA20: .4byte gUnk_03002920
_0801EA24:
	cmp r5, #7
	bne _0801EA70
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r5, _0801EA64 @ =gUnk_03002920
	adds r3, r0, r5
	ldrb r1, [r3, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldrb r2, [r5, #0xc]
	movs r1, #0xc
	ands r1, r2
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801EA68
	ldrh r0, [r3]
	adds r0, #6
	strh r0, [r3]
	b _0801EA90
	.align 2, 0
_0801EA64: .4byte gUnk_03002920
_0801EA68:
	ldrh r0, [r3]
	subs r0, #6
	strh r0, [r3]
	b _0801EA90
_0801EA70:
	cmp r5, #0xb
	bne _0801EA90
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #2
	ldr r0, _0801EAA0 @ =gUnk_03002920
	adds r1, r1, r0
	ldrb r0, [r0, #0xc]
	movs r2, #0xc
	ands r2, r0
	ldrb r3, [r1, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xc]
_0801EA90:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EAA0: .4byte gUnk_03002920

	thumb_func_start sub_0801EAA4
sub_0801EAA4: @ 0x0801EAA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _0801EADC @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _0801EAC4
	b _0801EF40
_0801EAC4:
	ldrb r0, [r2, #0x11]
	cmp r0, #0x71
	bne _0801EAE0
	adds r0, r7, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0801EADC @ =gUnk_03002920
	adds r1, r1, r0
	ldrb r0, [r1, #8]
	b _0801EAF6
	.align 2, 0
_0801EADC: .4byte gUnk_03002920
_0801EAE0:
	cmp r0, #0x72
	bne _0801EAF0
	ldrb r0, [r2, #0xc]
	lsrs r0, r0, #4
	cmp r0, #1
	bne _0801EAEE
	b _0801EF40
_0801EAEE:
	b _0801EAFC
_0801EAF0:
	cmp r0, #0x74
	bne _0801EAFC
	ldrb r0, [r2, #9]
_0801EAF6:
	cmp r0, #0
	beq _0801EAFC
	b _0801EF40
_0801EAFC:
	lsls r4, r7, #3
	subs r0, r4, r7
	lsls r0, r0, #2
	ldr r1, _0801EB98 @ =gUnk_03002920
	adds r6, r0, r1
	ldrh r0, [r6]
	ldrh r1, [r6, #2]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #3
	movs r3, #0
	bl sub_0801E664
	ldrb r2, [r6, #0xc]
	lsrs r1, r2, #4
	movs r3, #1
	mov ip, r3
	eors r1, r3
	lsls r1, r1, #4
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #0x11]
	mov r8, r4
	cmp r0, #0x71
	beq _0801EB38
	b _0801EC84
_0801EB38:
	adds r4, r7, #1
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, _0801EB98 @ =gUnk_03002920
	adds r1, r1, r0
	ldrb r3, [r1, #0xc]
	lsrs r2, r3, #4
	mov r0, ip
	eors r2, r0
	lsls r2, r2, #4
	adds r0, r5, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xc]
	lsrs r0, r0, #4
	adds r6, r4, #0
	cmp r0, #0
	bne _0801EBB0
	ldr r4, _0801EB9C @ =gUnk_03005220
	adds r4, #0x58
	ldr r5, _0801EBA0 @ =gUnk_080E2B64
	ldr r3, _0801EBA4 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r7, #0
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r2, _0801EBA8 @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r2, _0801EBAC @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r5
	mov r0, ip
	ldrb r1, [r1, #4]
	lsls r0, r1
	ldrb r1, [r4]
	eors r0, r1
	b _0801EBE8
	.align 2, 0
_0801EB98: .4byte gUnk_03002920
_0801EB9C: .4byte gUnk_03005220
_0801EBA0: .4byte gUnk_080E2B64
_0801EBA4: .4byte gUnk_03004C20
_0801EBA8: .4byte 0x00001130
_0801EBAC: .4byte 0x00008980
_0801EBB0:
	ldr r4, _0801EC10 @ =gUnk_03005220
	adds r4, #0x58
	ldr r5, _0801EC14 @ =gUnk_080E2B64
	ldr r3, _0801EC18 @ =gUnk_03004C20
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r7, #0
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r2, _0801EC1C @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r2, _0801EC20 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r5
	mov r0, ip
	ldrb r1, [r1, #4]
	lsls r0, r1
	ldrb r1, [r4]
	orrs r0, r1
_0801EBE8:
	strb r0, [r4]
	ldr r2, _0801EC24 @ =gUnk_03002920
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x1a
	strb r1, [r0, #8]
	mov r1, r8
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801EC30
	ldr r2, _0801EC28 @ =0x040000D4
	ldr r0, _0801EC2C @ =gUnk_08063FE8
	b _0801EC34
	.align 2, 0
_0801EC10: .4byte gUnk_03005220
_0801EC14: .4byte gUnk_080E2B64
_0801EC18: .4byte gUnk_03004C20
_0801EC1C: .4byte 0x00001130
_0801EC20: .4byte 0x00008980
_0801EC24: .4byte gUnk_03002920
_0801EC28: .4byte 0x040000D4
_0801EC2C: .4byte gUnk_08063FE8
_0801EC30:
	ldr r2, _0801EC6C @ =0x040000D4
	ldr r0, _0801EC70 @ =gUnk_080B9268
_0801EC34:
	str r0, [r2]
	ldr r3, _0801EC74 @ =gUnk_0818B8E0
	ldr r4, _0801EC78 @ =gUnk_03004C20
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	add r0, r8
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r3, _0801EC7C @ =0x06010000
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r0, _0801EC80 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0x5c
	bl m4aSongNumStart
	b _0801EF40
	.align 2, 0
_0801EC6C: .4byte 0x040000D4
_0801EC70: .4byte gUnk_080B9268
_0801EC74: .4byte gUnk_0818B8E0
_0801EC78: .4byte gUnk_03004C20
_0801EC7C: .4byte 0x06010000
_0801EC80: .4byte 0x80000040
_0801EC84:
	cmp r0, #0x72
	beq _0801EC8A
	b _0801EDCC
_0801EC8A:
	ldrh r1, [r6, #2]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _0801EC9A
	movs r0, #0xa2
	bl m4aSongNumStart
_0801EC9A:
	ldrb r0, [r6, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801ECB0
	ldr r1, _0801ECAC @ =gUnk_030034E0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _0801ED04
	.align 2, 0
_0801ECAC: .4byte gUnk_030034E0
_0801ECB0:
	ldr r0, _0801ED50 @ =gUnk_030034E0
	ldrb r3, [r0]
	adds r3, #1
	strb r3, [r0]
	ldr r5, _0801ED54 @ =gUnk_080E2B64
	ldr r4, _0801ED58 @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	adds r2, r7, #0
	subs r2, #0xd
	movs r0, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r2, _0801ED5C @ =0x00001130
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r2, _0801ED60 @ =0x00008980
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r5
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldrb r1, [r1, #5]
	cmp r3, r1
	bne _0801ED04
	ldrb r0, [r6, #9]
	adds r0, r7, r0
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _0801ED64 @ =gUnk_03002920
	adds r1, r1, r4
	ldrb r0, [r1, #9]
	strb r0, [r1, #8]
	movs r0, #0x5a
	bl m4aSongNumStart
_0801ED04:
	ldr r1, _0801ED64 @ =gUnk_03002920
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r1, [r5, #2]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0801ED7C
	ldr r3, _0801ED68 @ =0x040000D4
	ldr r0, _0801ED6C @ =gUnk_080B8F68
	str r0, [r3]
	ldr r4, _0801ED70 @ =gUnk_0818B8E0
	ldr r2, _0801ED58 @ =gUnk_03004C20
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
	add r0, r8
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r4, _0801ED74 @ =0x06010000
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _0801ED78 @ =0x80000040
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	b _0801EF40
	.align 2, 0
_0801ED50: .4byte gUnk_030034E0
_0801ED54: .4byte gUnk_080E2B64
_0801ED58: .4byte gUnk_03004C20
_0801ED5C: .4byte 0x00001130
_0801ED60: .4byte 0x00008980
_0801ED64: .4byte gUnk_03002920
_0801ED68: .4byte 0x040000D4
_0801ED6C: .4byte gUnk_080B8F68
_0801ED70: .4byte gUnk_0818B8E0
_0801ED74: .4byte 0x06010000
_0801ED78: .4byte 0x80000040
_0801ED7C:
	ldr r3, _0801EDB4 @ =0x040000D4
	ldr r0, _0801EDB8 @ =0x080B8FE8
	str r0, [r3]
	ldr r4, _0801EDBC @ =gUnk_0818B8E0
	ldr r2, _0801EDC0 @ =gUnk_03004C20
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
	add r0, r8
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801EDC4 @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0801EDC8 @ =0x80000040
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strh r6, [r5, #0x14]
	b _0801EF40
	.align 2, 0
_0801EDB4: .4byte 0x040000D4
_0801EDB8: .4byte 0x080B8FE8
_0801EDBC: .4byte gUnk_0818B8E0
_0801EDC0: .4byte gUnk_03004C20
_0801EDC4: .4byte 0x06010000
_0801EDC8: .4byte 0x80000040
_0801EDCC:
	cmp r0, #0x74
	beq _0801EDD2
	b _0801EF28
_0801EDD2:
	movs r0, #0x64
	strb r0, [r6, #9]
	ldr r4, _0801EE1C @ =gUnk_03005220
	ldrb r3, [r4, #3]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	mov r2, ip
	eors r1, r2
	lsls r2, r1, #6
	subs r0, #0xa5
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #3]
	mov r3, ip
	ands r1, r3
	lsls r1, r1, #4
	ldrb r2, [r6, #0xc]
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0xc]
	movs r0, #0x5b
	bl m4aSongNumStart
	ldr r3, _0801EE20 @ =gUnk_030047B8
	ldrb r1, [r3]
	subs r1, #1
	ldr r2, _0801EE24 @ =gUnk_03005470
	ldrb r0, [r2]
	subs r0, #1
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmp r1, r0
	bhi _0801EE28
	ldrb r0, [r3]
	b _0801EE2A
	.align 2, 0
_0801EE1C: .4byte gUnk_03005220
_0801EE20: .4byte gUnk_030047B8
_0801EE24: .4byte gUnk_03005470
_0801EE28:
	ldrb r0, [r2]
_0801EE2A:
	adds r3, r0, #0
	ldr r0, _0801EEBC @ =gUnk_03005428
	ldr r4, _0801EEC0 @ =gUnk_0818B8E0
	mov sl, r4
	mov ip, r0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0801EEA2
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r1, r0, #2
	ldr r2, _0801EEC4 @ =gUnk_03002920
	adds r0, r1, r2
	ldrb r0, [r0, #0x11]
	cmp r0, #0x35
	bne _0801EEA2
	ldr r4, _0801EEC8 @ =gUnk_080E2B64
	mov sb, r4
	ldr r6, _0801EECC @ =gUnk_03004C20
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0xf
	adds r4, r0, r2
_0801EE58:
	ldrb r2, [r6, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	adds r1, r3, #0
	subs r1, #0xd
	movs r0, #0x2c
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r6, #0xc]
	subs r0, #1
	ldr r1, _0801EED0 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r6, #0xd]
	subs r0, #1
	ldr r1, _0801EED4 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	add r2, sb
	ldrh r1, [r2, #6]
	cmp r1, #0
	bne _0801EE8A
	movs r0, #1
	strb r0, [r4, #1]
	strb r1, [r4]
_0801EE8A:
	adds r5, #0x1c
	adds r4, #0x1c
	adds r3, #1
	mov r0, ip
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0801EEA2
	ldr r1, _0801EEC4 @ =gUnk_03002920
	adds r0, r5, r1
	ldrb r0, [r0, #0x11]
	cmp r0, #0x35
	beq _0801EE58
_0801EEA2:
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	ldr r3, _0801EEC4 @ =gUnk_03002920
	adds r0, r0, r3
	ldrb r0, [r0, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801EEE0
	ldr r2, _0801EED8 @ =0x040000D4
	ldr r0, _0801EEDC @ =gUnk_08063368
	b _0801EEE4
	.align 2, 0
_0801EEBC: .4byte gUnk_03005428
_0801EEC0: .4byte gUnk_0818B8E0
_0801EEC4: .4byte gUnk_03002920
_0801EEC8: .4byte gUnk_080E2B64
_0801EECC: .4byte gUnk_03004C20
_0801EED0: .4byte 0x00001130
_0801EED4: .4byte 0x00008980
_0801EED8: .4byte 0x040000D4
_0801EEDC: .4byte gUnk_08063368
_0801EEE0:
	ldr r2, _0801EF14 @ =0x040000D4
	ldr r0, _0801EF18 @ =gUnk_080B92E8
_0801EEE4:
	str r0, [r2]
	ldr r4, _0801EF1C @ =gUnk_03004C20
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #4]
	add r0, r8
	subs r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r3, _0801EF20 @ =0x06010000
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r0, _0801EF24 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0801EF40
	.align 2, 0
_0801EF14: .4byte 0x040000D4
_0801EF18: .4byte gUnk_080B92E8
_0801EF1C: .4byte gUnk_03004C20
_0801EF20: .4byte 0x06010000
_0801EF24: .4byte 0x80000040
_0801EF28:
	ldr r1, _0801EF50 @ =gUnk_030052A0
	ldrb r0, [r1]
	cmp r0, #0xfe
	bne _0801EF40
	movs r0, #0x41
	strb r0, [r1]
	ldr r1, _0801EF54 @ =gUnk_03003510
	ldr r0, _0801EF58 @ =sub_08044BB8
	str r0, [r1, #4]
	movs r0, #0x61
	bl m4aSongNumStart
_0801EF40:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EF50: .4byte gUnk_030052A0
_0801EF54: .4byte gUnk_03003510
_0801EF58: .4byte sub_08044BB8

	thumb_func_start sub_0801EF5C
sub_0801EF5C: @ 0x0801EF5C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0801EFA0 @ =gUnk_03002920
	lsls r5, r6, #3
	subs r4, r5, r6
	lsls r4, r4, #2
	adds r4, r4, r0
	ldrb r2, [r4, #0xc]
	lsrs r1, r2, #4
	adds r1, #1
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r2, #3
	movs r3, #0
	bl sub_0801E664
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	cmp r0, #3
	beq _0801EF98
	cmp r0, #1
	bne _0801EFAC
_0801EF98:
	ldr r3, _0801EFA4 @ =0x040000D4
	ldr r0, _0801EFA8 @ =gUnk_08064A68
	b _0801EFB0
	.align 2, 0
_0801EFA0: .4byte gUnk_03002920
_0801EFA4: .4byte 0x040000D4
_0801EFA8: .4byte gUnk_08064A68
_0801EFAC:
	ldr r3, _0801EFF8 @ =0x040000D4
	ldr r0, _0801EFFC @ =gUnk_080B9668
_0801EFB0:
	str r0, [r3]
	ldr r4, _0801F000 @ =gUnk_0818B8E0
	ldr r2, _0801F004 @ =gUnk_03004C20
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
	ldr r1, _0801F008 @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0801F00C @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _0801F010 @ =gUnk_03002920
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	cmp r1, #3
	bne _0801F014
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	b _0801F022
	.align 2, 0
_0801EFF8: .4byte 0x040000D4
_0801EFFC: .4byte gUnk_080B9668
_0801F000: .4byte gUnk_0818B8E0
_0801F004: .4byte gUnk_03004C20
_0801F008: .4byte 0x06010000
_0801F00C: .4byte 0x80000100
_0801F010: .4byte gUnk_03002920
_0801F014:
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
_0801F022:
	strb r0, [r3, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F02C
sub_0801F02C: @ 0x0801F02C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0801F0B4 @ =gUnk_03002920
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrb r0, [r7, #0xf]
	cmp r0, #0xe
	beq _0801F0CC
	cmp r0, #0xe
	ble _0801F11E
	cmp r0, #0x19
	bne _0801F11E
	ldr r0, _0801F0B8 @ =gUnk_080E2B64
	mov r8, r0
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	subs r2, #0xd
	movs r0, #0x2c
	adds r5, r2, #0
	muls r5, r0, r5
	adds r1, r1, r5
	ldr r2, _0801F0BC @ =gUnk_03004C20
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r4, _0801F0C0 @ =0x00001130
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r3, _0801F0C4 @ =0x00008980
	muls r0, r3, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	movs r6, #0
	strh r0, [r7]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r0, [r2, #0xc]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	muls r0, r3, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1, #2]
	strh r0, [r7, #2]
	movs r0, #0xe
	strb r0, [r7, #0xf]
	movs r0, #1
	strb r0, [r7, #0x10]
	ldrb r0, [r7, #8]
	adds r0, #1
	strb r0, [r7, #8]
	movs r0, #0x80
	strb r0, [r7, #9]
	ldr r0, _0801F0C8 @ =gUnk_03003590
	strh r6, [r0, #0xa]
	strh r6, [r0, #8]
	b _0801F11E
	.align 2, 0
_0801F0B4: .4byte gUnk_03002920
_0801F0B8: .4byte gUnk_080E2B64
_0801F0BC: .4byte gUnk_03004C20
_0801F0C0: .4byte 0x00001130
_0801F0C4: .4byte 0x00008980
_0801F0C8: .4byte gUnk_03003590
_0801F0CC:
	ldr r6, _0801F108 @ =gUnk_03003590
	ldrb r5, [r7, #9]
	ldr r4, _0801F10C @ =gSineTable
	ldr r0, _0801F110 @ =gUnk_03004C20
	ldr r0, [r0]
	lsls r0, r0, #4
	movs r1, #0xff
	bl __umodsi3
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #8]
	ldrb r0, [r7, #9]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r6, #0xa]
	ldrb r0, [r7, #9]
	cmp r0, #0
	beq _0801F114
	subs r0, #2
	strb r0, [r7, #9]
	b _0801F11E
	.align 2, 0
_0801F108: .4byte gUnk_03003590
_0801F10C: .4byte gSineTable
_0801F110: .4byte gUnk_03004C20
_0801F114:
	movs r0, #0x10
	strh r0, [r6, #0xa]
	strh r0, [r6, #8]
	movs r0, #0
	strb r0, [r7, #0xf]
_0801F11E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801F128
sub_0801F128: @ 0x0801F128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0801F15C @ =gUnk_03002920
	lsls r0, r0, #3
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r6, r0, r1
	ldrh r3, [r6]
	mov ip, r3
	ldrb r0, [r6, #0xf]
	cmp r0, #0xe
	beq _0801F174
	cmp r0, #0xe
	bgt _0801F160
	cmp r0, #0
	bne _0801F158
	b _0801F29C
_0801F158:
	b _0801F498
	.align 2, 0
_0801F15C: .4byte gUnk_03002920
_0801F160:
	cmp r0, #0x19
	beq _0801F166
	b _0801F498
_0801F166:
	movs r0, #0xe
	strb r0, [r6, #0xf]
	mov r0, r8
	movs r1, #0
	bl sub_08025B78
	b _0801F498
_0801F174:
	ldr r0, _0801F190 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801F19A
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801F194
	mov r0, ip
	adds r0, #1
	b _0801F198
	.align 2, 0
_0801F190: .4byte gUnk_03004C20
_0801F194:
	mov r0, ip
	subs r0, #1
_0801F198:
	strh r0, [r6]
_0801F19A:
	mov r0, r8
	lsls r2, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #2
	ldr r1, _0801F284 @ =gUnk_03002920
	adds r0, r0, r1
	mov ip, r0
	ldrh r6, [r0]
	ldr r7, _0801F288 @ =0x080E2AB4
	ldr r1, _0801F28C @ =gUnk_03000830
	ldr r0, _0801F290 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r3, r8
	subs r0, r3, r0
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r1, [r3, #2]
	movs r5, #5
	subs r1, r5, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	ldr r1, _0801F284 @ =gUnk_03002920
	ldrh r4, [r1]
	adds r1, r4, #0
	adds r1, #0xc
	mov sb, r2
	cmp r0, r1
	bge _0801F256
	ldrb r1, [r3, #2]
	subs r1, r5, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	adds r1, r4, #0
	subs r1, #0xc
	cmp r0, r1
	ble _0801F256
	mov r2, ip
	ldrh r4, [r2, #2]
	ldrb r1, [r3, #2]
	subs r1, r5, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r4, r0
	ldr r1, _0801F284 @ =gUnk_03002920
	ldrh r2, [r1, #2]
	cmp r0, r2
	bge _0801F256
	ldrb r1, [r3, #2]
	subs r1, r5, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r7, #5
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r4, r0
	adds r1, r2, #0
	subs r1, #0x18
	cmp r0, r1
	ble _0801F256
	ldr r0, _0801F294 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F256
	ldr r0, _0801F298 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0801F256
	movs r0, #1
	bl sub_08014624
_0801F256:
	ldr r1, _0801F28C @ =gUnk_03000830
	ldr r0, _0801F290 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, r8
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0801F26C
	b _0801F498
_0801F26C:
	ldr r0, _0801F284 @ =gUnk_03002920
	mov r3, sb
	subs r1, r3, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1, #0xf]
	mov r0, r8
	movs r1, #1
	bl sub_08025B78
	b _0801F498
	.align 2, 0
_0801F284: .4byte gUnk_03002920
_0801F288: .4byte 0x080E2AB4
_0801F28C: .4byte gUnk_03000830
_0801F290: .4byte gUnk_0300363C
_0801F294: .4byte gUnk_03005220
_0801F298: .4byte gUnk_03005400
_0801F29C:
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801F33C
	ldr r2, _0801F324 @ =gUnk_03004C20
	ldr r3, _0801F328 @ =0x080E2AB4
	ldr r4, _0801F32C @ =gUnk_03000830
	ldr r5, _0801F330 @ =gUnk_0300363C
	ldrb r0, [r5]
	mov r1, r8
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r7, r0, r4
	ldrb r1, [r7, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [r2, #4]
	ands r2, r0
	ldrb r1, [r7, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sl, r3
	mov sb, r5
	cmp r2, r0
	bne _0801F2FC
	ldrb r1, [r7, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, sl
	adds r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, ip
	strh r0, [r6]
_0801F2FC:
	ldr r4, _0801F334 @ =gUnk_03004790
	ldrh r3, [r6]
	adds r2, r3, #4
	asrs r2, r2, #3
	ldrh r1, [r6, #2]
	subs r1, #0x10
	asrs r1, r1, #3
	ldr r0, _0801F338 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r4, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r6, [r0]
	movs r0, #0xe0
	lsls r0, r0, #1
	cmp r3, r0
	bls _0801F3BE
	b _0801F3B8
	.align 2, 0
_0801F324: .4byte gUnk_03004C20
_0801F328: .4byte 0x080E2AB4
_0801F32C: .4byte gUnk_03000830
_0801F330: .4byte gUnk_0300363C
_0801F334: .4byte gUnk_03004790
_0801F338: .4byte gUnk_03003430
_0801F33C:
	ldr r2, _0801F4A8 @ =gUnk_03004C20
	ldr r3, _0801F4AC @ =0x080E2AB4
	ldr r4, _0801F4B0 @ =gUnk_03000830
	ldr r5, _0801F4B4 @ =gUnk_0300363C
	ldrb r0, [r5]
	mov r1, r8
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r7, r0, r4
	ldrb r1, [r7, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [r2, #4]
	ands r2, r0
	ldrb r1, [r7, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sl, r3
	mov sb, r5
	cmp r2, r0
	bne _0801F394
	ldrb r1, [r7, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, sl
	adds r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	subs r0, r2, r0
	strh r0, [r6]
_0801F394:
	ldr r4, _0801F4B8 @ =gUnk_03004790
	ldrh r3, [r6]
	adds r2, r3, #0
	subs r2, #0xc
	asrs r2, r2, #3
	ldrh r1, [r6, #2]
	subs r1, #0x10
	asrs r1, r1, #3
	ldr r0, _0801F4BC @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, [r4, #0x14]
	adds r2, r2, r1
	adds r0, r0, r2
	ldrb r6, [r0]
	cmp r3, #0x1f
	bhi _0801F3BE
_0801F3B8:
	ldr r0, _0801F4C0 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r6, [r0, #0x1b]
_0801F3BE:
	mov r3, r8
	lsls r2, r3, #3
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r1, _0801F4C4 @ =gUnk_03002920
	adds r5, r0, r1
	ldrh r7, [r5]
	mov r3, sb
	ldrb r0, [r3]
	mov r1, r8
	subs r0, r1, r0
	lsls r0, r0, #2
	ldr r3, _0801F4B0 @ =gUnk_03000830
	adds r4, r0, r3
	ldrb r1, [r4, #2]
	adds r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, sl
	adds r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	ldr r1, _0801F4C4 @ =gUnk_03002920
	ldrh r3, [r1]
	adds r1, r3, #0
	adds r1, #0xc
	mov sb, r2
	cmp r0, r1
	bge _0801F47A
	ldrb r1, [r4, #2]
	adds r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, sl
	adds r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	adds r1, r3, #0
	subs r1, #0xc
	cmp r0, r1
	ble _0801F47A
	ldrh r3, [r5, #2]
	ldrb r1, [r4, #2]
	adds r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, sl
	adds r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	ldr r1, _0801F4C4 @ =gUnk_03002920
	ldrh r2, [r1, #2]
	cmp r0, r2
	bge _0801F47A
	ldrb r1, [r4, #2]
	adds r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, sl
	adds r1, #5
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r3, r0
	adds r1, r2, #0
	subs r1, #0x18
	cmp r0, r1
	ble _0801F47A
	ldr r0, _0801F4C8 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F47A
	ldr r0, _0801F4CC @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0801F47A
	movs r0, #1
	bl sub_08014624
_0801F47A:
	ldr r0, _0801F4C0 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	cmp r0, r6
	bhi _0801F498
	ldr r1, _0801F4C4 @ =gUnk_03002920
	mov r2, sb
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0x10]
	movs r1, #0x1c
	strb r1, [r0, #0xf]
_0801F498:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F4A8: .4byte gUnk_03004C20
_0801F4AC: .4byte 0x080E2AB4
_0801F4B0: .4byte gUnk_03000830
_0801F4B4: .4byte gUnk_0300363C
_0801F4B8: .4byte gUnk_03004790
_0801F4BC: .4byte gUnk_03003430
_0801F4C0: .4byte gUnk_03004654
_0801F4C4: .4byte gUnk_03002920
_0801F4C8: .4byte gUnk_03005220
_0801F4CC: .4byte gUnk_03005400

	thumb_func_start sub_0801F4D0
sub_0801F4D0: @ 0x0801F4D0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0xe4
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	ldr r0, _0801F4FC @ =gUnk_03005400
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _0801F504
	ldr r1, _0801F500 @ =gUnk_03002920
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
	b _0801F63E
	.align 2, 0
_0801F4FC: .4byte gUnk_03005400
_0801F500: .4byte gUnk_03002920
_0801F504:
	ldr r0, _0801F520 @ =gUnk_03002920
	lsls r2, r4, #3
	subs r1, r2, r4
	lsls r1, r1, #2
	adds r3, r1, r0
	ldrb r1, [r3, #0xf]
	mov ip, r0
	cmp r1, #3
	beq _0801F52A
	cmp r1, #3
	bgt _0801F524
	cmp r1, #0
	beq _0801F5FC
	b _0801F63E
	.align 2, 0
_0801F520: .4byte gUnk_03002920
_0801F524:
	cmp r1, #4
	beq _0801F590
	b _0801F63E
_0801F52A:
	movs r0, #0
	strb r0, [r3, #0xf]
	strh r0, [r3, #0x14]
	movs r0, #1
	strb r0, [r3, #0x10]
	ldrb r1, [r3, #0xc]
	subs r0, #5
	ands r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0x81
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801F558
	movs r0, #0xfc
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	adds r0, #0x10
	b _0801F562
_0801F558:
	movs r0, #0xfc
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	subs r0, #0x10
_0801F562:
	strh r0, [r3]
	subs r1, r2, r4
	lsls r1, r1, #2
	add r1, ip
	movs r0, #0xfd
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r2, _0801F58C @ =0x080E2ADE
	lsls r3, r5, #1
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1, #8]
	adds r2, #1
	adds r3, r3, r2
	ldrb r0, [r3]
	strb r0, [r1, #9]
	movs r0, #4
	strb r0, [r1, #0x16]
	b _0801F63E
	.align 2, 0
_0801F58C: .4byte 0x080E2ADE
_0801F590:
	movs r0, #0
	strb r0, [r3, #0xf]
	strh r0, [r3, #0x14]
	movs r0, #1
	strb r0, [r3, #0x10]
	ldrb r1, [r3, #0xc]
	subs r0, #5
	ands r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0x81
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801F5BE
	movs r0, #0xfc
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	adds r0, #0x10
	b _0801F5C8
_0801F5BE:
	movs r0, #0xfc
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	subs r0, #0x10
_0801F5C8:
	strh r0, [r3]
	subs r1, r2, r4
	lsls r1, r1, #2
	add r1, ip
	movs r0, #0xfd
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r2, _0801F5F8 @ =0x080E2ADE
	lsls r3, r5, #1
	adds r0, r2, #0
	adds r0, #0xa
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1, #8]
	adds r2, #0xb
	adds r3, r3, r2
	ldrb r0, [r3]
	strb r0, [r1, #9]
	movs r0, #2
	strb r0, [r1, #0x16]
	b _0801F63E
	.align 2, 0
_0801F5F8: .4byte 0x080E2ADE
_0801F5FC:
	movs r2, #9
	ldrsb r2, [r3, r2]
	ldr r1, _0801F644 @ =gSineTable
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r3, #2]
	movs r0, #8
	ldrsb r0, [r3, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldrb r1, [r3, #0x16]
	ldrh r0, [r3, #0x14]
	adds r0, r0, r1
	strh r0, [r3, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x88
	bne _0801F63E
	movs r0, #0x1c
	strb r0, [r3, #0xf]
	movs r0, #0
	strb r0, [r3, #0x10]
_0801F63E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F644: .4byte gSineTable

	thumb_func_start sub_0801F648
sub_0801F648: @ 0x0801F648
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0801F674 @ =gUnk_03002920
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0xf]
	adds r7, r1, #0
	cmp r0, #0x19
	bls _0801F668
	b _0801FAD0
_0801F668:
	lsls r0, r0, #2
	ldr r1, _0801F678 @ =_0801F67C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F674: .4byte gUnk_03002920
_0801F678: .4byte _0801F67C
_0801F67C: @ jump table
	.4byte _0801F85C @ case 0
	.4byte _0801FAD0 @ case 1
	.4byte _0801FAD0 @ case 2
	.4byte _0801F8A0 @ case 3
	.4byte _0801F9B0 @ case 4
	.4byte _0801FAD0 @ case 5
	.4byte _0801FAD0 @ case 6
	.4byte _0801FAD0 @ case 7
	.4byte _0801FAD0 @ case 8
	.4byte _0801FAD0 @ case 9
	.4byte _0801FAD0 @ case 10
	.4byte _0801FAD0 @ case 11
	.4byte _0801FAD0 @ case 12
	.4byte _0801FAD0 @ case 13
	.4byte _0801F76C @ case 14
	.4byte _0801F7BC @ case 15
	.4byte _0801FAD0 @ case 16
	.4byte _0801FAD0 @ case 17
	.4byte _0801FAD0 @ case 18
	.4byte _0801FAD0 @ case 19
	.4byte _0801FAD0 @ case 20
	.4byte _0801FAD0 @ case 21
	.4byte _0801FAD0 @ case 22
	.4byte _0801FAD0 @ case 23
	.4byte _0801FAD0 @ case 24
	.4byte _0801F6E4 @ case 25
_0801F6E4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08025B78
	ldr r0, _0801F750 @ =gUnk_03002920
	lsls r3, r6, #3
	subs r1, r3, r6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r2, [r1, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #0xc]
	movs r0, #0xe
	strb r0, [r1, #0xf]
	ldr r5, _0801F754 @ =0x040000D4
	ldr r0, _0801F758 @ =0x08078648
	str r0, [r5]
	ldr r4, _0801F75C @ =gUnk_0818B8E0
	ldr r2, _0801F760 @ =gUnk_03004C20
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
	adds r3, r3, r0
	subs r3, #0x60
	ldrb r0, [r3, #2]
	lsls r0, r0, #5
	ldr r1, _0801F764 @ =0x05000200
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0801F768 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _0801F746
	b _0801FAD0
_0801F746:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	bne _0801F746
	b _0801FAD0
	.align 2, 0
_0801F750: .4byte gUnk_03002920
_0801F754: .4byte 0x040000D4
_0801F758: .4byte 0x08078648
_0801F75C: .4byte gUnk_0818B8E0
_0801F760: .4byte gUnk_03004C20
_0801F764: .4byte 0x05000200
_0801F768: .4byte 0x80000010
_0801F76C:
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrh r0, [r3, #2]
	mov r8, r1
	cmp r0, #0x10
	bls _0801F782
	subs r0, #5
	strh r0, [r3, #2]
	b _0801F786
_0801F782:
	movs r0, #0xf
	strb r0, [r3, #0xf]
_0801F786:
	ldr r0, _0801F7B0 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801F794
	b _0801FAD0
_0801F794:
	mov r2, r8
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r1, r0, r7
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801F7B4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0801FAD0
	.align 2, 0
_0801F7B0: .4byte gUnk_03004C20
_0801F7B4:
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0801FAD0
_0801F7BC:
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	adds r5, r0, r7
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldr r0, _0801F7FC @ =gUnk_03004C20
	ldr r3, [r0]
	movs r0, #2
	ands r0, r3
	mov r8, r1
	cmp r0, #0
	beq _0801F822
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0801F804
	ldr r1, _0801F800 @ =gSineTable
	movs r0, #0xff
	ands r3, r0
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r0, #0xa0
	b _0801F820
	.align 2, 0
_0801F7FC: .4byte gUnk_03004C20
_0801F800: .4byte gSineTable
_0801F804:
	ldr r1, _0801F858 @ =gSineTable
	movs r0, #0xff
	ands r3, r0
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x12
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r4, #0
	subs r0, r0, r1
_0801F820:
	strh r0, [r5]
_0801F822:
	mov r5, r8
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	cmp r0, #0xff
	bhi _0801F832
	b _0801FAD0
_0801F832:
	movs r1, #0
	adds r4, r7, #0
_0801F836:
	adds r2, r1, #0
	adds r2, #0x13
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r4
	ldrb r0, [r3, #0xf]
	cmp r0, #0x1c
	bne _0801F84A
	b _0801FA80
_0801F84A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _0801F836
	b _0801FAD0
	.align 2, 0
_0801F858: .4byte gSineTable
_0801F85C:
	ldr r1, _0801F898 @ =gUnk_03000830
	ldr r0, _0801F89C @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0801F870
	b _0801FAD0
_0801F870:
	subs r0, r6, #2
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r2, [r1, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xc]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
	b _0801FAD0
	.align 2, 0
_0801F898: .4byte gUnk_03000830
_0801F89C: .4byte gUnk_0300363C
_0801F8A0:
	lsls r2, r6, #3
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrb r1, [r3, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3, #0xc]
	mov r8, r2
	cmp r6, #0x15
	bne _0801F8CC
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0x60
	strb r1, [r0, #8]
	movs r1, #0x80
	strb r1, [r0, #9]
	b _0801F8D4
_0801F8CC:
	movs r0, #0x20
	strb r0, [r3, #8]
	movs r0, #0x80
	strb r0, [r3, #9]
_0801F8D4:
	mov r4, r8
	subs r2, r4, r6
	lsls r2, r2, #2
	adds r2, r2, r7
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r3, r7, r5
	ldrb r1, [r2, #9]
	ldr r4, _0801F988 @ =gSineTable
	ldrb r0, [r2, #8]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r2]
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r1, _0801F98C @ =0x080E2AF2
	ldr r0, _0801F990 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrh r1, [r3]
	subs r1, r1, r0
	ldrb r3, [r2, #9]
	ldrb r0, [r2, #8]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r3, r0
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #2]
	ldr r4, _0801F994 @ =0x040000D4
	ldr r0, _0801F998 @ =0x08078328
	str r0, [r4]
	ldr r3, _0801F99C @ =gUnk_0818B8E0
	ldr r2, _0801F9A0 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	add r0, r8
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r5, _0801F9A4 @ =0x05000200
	adds r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F9A8 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0801F96A
_0801F962:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _0801F962
_0801F96A:
	adds r0, r6, #0
	movs r1, #2
	bl sub_08025B78
	ldr r0, _0801F9AC @ =gUnk_03002920
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #4
	strb r0, [r1, #0xf]
	movs r0, #0x9c
	bl m4aSongNumStart
	b _0801FAD0
	.align 2, 0
_0801F988: .4byte gSineTable
_0801F98C: .4byte 0x080E2AF2
_0801F990: .4byte gUnk_03005400
_0801F994: .4byte 0x040000D4
_0801F998: .4byte 0x08078328
_0801F99C: .4byte gUnk_0818B8E0
_0801F9A0: .4byte gUnk_03004C20
_0801F9A4: .4byte 0x05000200
_0801F9A8: .4byte 0x80000010
_0801F9AC: .4byte gUnk_03002920
_0801F9B0:
	bl thunk_GetRandomValue
	ldr r5, _0801FA70 @ =gUnk_03002920
	lsls r4, r6, #3
	mov r8, r4
	subs r1, r4, r6
	lsls r1, r1, #2
	adds r7, r1, r5
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r3, r5, r1
	ldrb r2, [r7, #9]
	ldr r4, _0801FA74 @ =gSineTable
	mov sb, r4
	ldrb r1, [r7, #8]
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r4, #0
	ldrsh r1, [r1, r4]
	muls r2, r1, r2
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	movs r4, #3
	adds r1, r4, #0
	ands r1, r0
	adds r1, r1, r2
	strh r1, [r7]
	bl thunk_GetRandomValue
	movs r1, #0xfd
	lsls r1, r1, #1
	adds r3, r5, r1
	ldr r2, _0801FA78 @ =0x080E2AF2
	ldr r1, _0801FA7C @ =gUnk_03005400
	ldrb r1, [r1, #0xc]
	subs r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	ldrh r2, [r3]
	subs r2, r2, r1
	ldrb r3, [r7, #9]
	ldrb r1, [r7, #8]
	lsls r1, r1, #1
	add r1, sb
	movs r5, #0
	ldrsh r1, [r1, r5]
	muls r1, r3, r1
	asrs r1, r1, #8
	adds r2, r2, r1
	ands r4, r0
	adds r4, r4, r2
	strh r4, [r7, #2]
	ldrb r0, [r7, #8]
	cmp r0, #0x80
	beq _0801FA26
	cmp r0, #0
	bne _0801FA34
_0801FA26:
	ldrb r0, [r7, #0xc]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r7, #0xc]
_0801FA34:
	ldr r1, _0801FA70 @ =gUnk_03002920
	mov r2, r8
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #9]
	movs r5, #1
	adds r7, r1, #0
	cmp r0, #0x60
	bhi _0801FA50
	movs r5, #4
	cmp r0, #0x20
	bls _0801FA50
	movs r5, #2
_0801FA50:
	mov r4, r8
	subs r0, r4, r6
	lsls r0, r0, #2
	adds r1, r0, r7
	ldrb r0, [r1, #9]
	subs r0, r0, r5
	strb r0, [r1, #9]
	cmp r6, #0x15
	bne _0801FAB6
	movs r0, #0x93
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrb r0, [r1, #8]
	adds r0, r5, r0
	b _0801FABA
	.align 2, 0
_0801FA70: .4byte gUnk_03002920
_0801FA74: .4byte gSineTable
_0801FA78: .4byte 0x080E2AF2
_0801FA7C: .4byte gUnk_03005400
_0801FA80:
	ldrb r1, [r3, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xc]
	mov r1, r8
	subs r4, r1, r6
	lsls r4, r4, #2
	adds r4, r4, r7
	ldrh r0, [r4]
	movs r5, #0
	strh r0, [r3]
	ldrh r0, [r4, #2]
	strh r0, [r3, #2]
	strb r5, [r3, #0xf]
	adds r0, r2, #0
	movs r1, #1
	bl sub_08025B78
	adds r0, r6, #0
	movs r1, #1
	bl sub_08025B78
	strb r5, [r4, #0xf]
	b _0801FAD0
_0801FAB6:
	ldrb r0, [r1, #8]
	subs r0, r0, r5
_0801FABA:
	strb r0, [r1, #8]
	mov r2, r8
	subs r0, r2, r6
	lsls r0, r0, #2
	adds r1, r0, r7
	ldrb r2, [r1, #9]
	cmp r2, #0
	bne _0801FAD0
	movs r0, #0x1c
	strb r0, [r1, #0xf]
	strb r2, [r1, #0x10]
_0801FAD0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801FADC
sub_0801FADC: @ 0x0801FADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r1, #0xec
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r4, _0801FB28 @ =gUnk_03002920
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #2
	adds r1, r1, r4
	mov r2, sl
	adds r2, #3
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r1, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xd]
	ldrb r0, [r1, #0xf]
	cmp r0, #0x19
	bls _0801FB1C
	b _0801FFD4
_0801FB1C:
	lsls r0, r0, #2
	ldr r1, _0801FB2C @ =_0801FB30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801FB28: .4byte gUnk_03002920
_0801FB2C: .4byte _0801FB30
_0801FB30: @ jump table
	.4byte _0801FC08 @ case 0
	.4byte _0801FFD4 @ case 1
	.4byte _0801FFD4 @ case 2
	.4byte _0801FFD4 @ case 3
	.4byte _0801FFD4 @ case 4
	.4byte _0801FFD4 @ case 5
	.4byte _0801FFD4 @ case 6
	.4byte _0801FFD4 @ case 7
	.4byte _0801FFD4 @ case 8
	.4byte _0801FFD4 @ case 9
	.4byte _0801FFD4 @ case 10
	.4byte _0801FFD4 @ case 11
	.4byte _0801FFD4 @ case 12
	.4byte _0801FFD4 @ case 13
	.4byte _0801FD44 @ case 14
	.4byte _0801FEB8 @ case 15
	.4byte _0801FF40 @ case 16
	.4byte _0801FF94 @ case 17
	.4byte _0801FFD4 @ case 18
	.4byte _0801FFD4 @ case 19
	.4byte _0801FFD4 @ case 20
	.4byte _0801FFD4 @ case 21
	.4byte _0801FFD4 @ case 22
	.4byte _0801FFD4 @ case 23
	.4byte _0801FC98 @ case 24
	.4byte _0801FB98 @ case 25
_0801FB98:
	lsls r2, r6, #3
	subs r2, r2, r6
	lsls r2, r2, #2
	ldr r3, _0801FBFC @ =gUnk_03002920
	adds r2, r2, r3
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r4, r3, r5
	ldr r3, _0801FC00 @ =0x080E2AF5
	adds r1, r6, #0
	subs r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r4, [r4]
	adds r1, r1, r4
	movs r4, #0
	movs r5, #0
	strh r1, [r2]
	ldr r6, _0801FBFC @ =gUnk_03002920
	movs r7, #0xfd
	lsls r7, r7, #1
	adds r1, r6, r7
	adds r3, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, #0x20
	strh r0, [r2, #2]
	movs r0, #0x20
	strb r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x10]
	strb r4, [r2, #0xf]
	ldr r1, _0801FC04 @ =gUnk_03003590
	mov r2, sl
	lsls r0, r2, #3
	adds r0, r0, r1
	strb r4, [r0, #4]
	strh r5, [r0, #2]
	strh r5, [r0]
	b _0801FFD4
	.align 2, 0
_0801FBFC: .4byte gUnk_03002920
_0801FC00: .4byte 0x080E2AF5
_0801FC04: .4byte gUnk_03003590
_0801FC08:
	ldr r4, _0801FC8C @ =gUnk_03004C20
	ldr r3, _0801FC90 @ =0x080E2AF5
	adds r1, r6, #0
	subs r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #1
	adds r0, r3, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r4]
	ands r0, r1
	lsls r7, r6, #3
	cmp r0, r1
	bne _0801FC40
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r5, _0801FC94 @ =gUnk_03002920
	adds r0, r0, r5
	adds r1, r3, #4
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r5, [r0]
	adds r1, r1, r5
	strh r1, [r0]
_0801FC40:
	adds r0, r3, #3
	adds r0, r2, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r4]
	ands r0, r1
	cmp r0, r1
	bne _0801FC68
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r1, _0801FC94 @ =gUnk_03002920
	adds r0, r0, r1
	adds r1, r3, #5
	adds r1, r2, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r2, [r0, #2]
	adds r1, r1, r2
	strh r1, [r0, #2]
_0801FC68:
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r3, _0801FC94 @ =gUnk_03002920
	adds r1, r0, r3
	ldrb r0, [r1, #8]
	subs r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0801FC80
	b _0801FFD4
_0801FC80:
	movs r0, #0x1c
	strb r0, [r1, #0xf]
	movs r0, #0
	strb r0, [r1, #0x10]
	b _0801FFD4
	.align 2, 0
_0801FC8C: .4byte gUnk_03004C20
_0801FC90: .4byte 0x080E2AF5
_0801FC94: .4byte gUnk_03002920
_0801FC98:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r7, _0801FD30 @ =gUnk_03002920
	adds r5, r0, r7
	ldr r4, _0801FD34 @ =0x080E2AF5
	adds r0, r6, #0
	subs r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r1, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _0801FD38 @ =gUnk_03003430
	ldrh r3, [r0, #0x24]
	movs r0, #8
	subs r0, r0, r3
	lsls r0, r0, #2
	subs r0, #0xf0
	subs r2, r2, r0
	strh r2, [r5]
	adds r4, #1
	adds r1, r1, r4
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0xd0
	strh r0, [r5, #2]
	ldrb r1, [r5, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #1
	strb r1, [r5, #0x10]
	subs r1, #0xe
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #0xc]
	ldr r1, _0801FD3C @ =gUnk_03003590
	mov r2, sl
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, _0801FD40 @ =0x0000FFC0
	strh r1, [r0, #2]
	strh r1, [r0]
	movs r1, #0x80
	strb r1, [r0, #4]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	cmp r6, #0x1b
	bls _0801FD1E
	adds r1, #0x64
_0801FD1E:
	strb r1, [r5, #8]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08025B78
	movs r0, #0x6c
	bl m4aSongNumStart
	b _0801FFD4
	.align 2, 0
_0801FD30: .4byte gUnk_03002920
_0801FD34: .4byte 0x080E2AF5
_0801FD38: .4byte gUnk_03003430
_0801FD3C: .4byte gUnk_03003590
_0801FD40: .4byte 0x0000FFC0
_0801FD44:
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	ldr r3, _0801FD94 @ =gUnk_03002920
	adds r5, r0, r3
	ldrb r0, [r5, #8]
	adds r7, r1, #0
	cmp r0, #0
	beq _0801FDA4
	ldr r2, _0801FD98 @ =gUnk_03005400
	cmp r0, #1
	bne _0801FD64
	ldrb r0, [r2, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xe]
_0801FD64:
	movs r0, #3
	strb r0, [r2, #0xd]
	ldrb r0, [r5, #8]
	subs r0, #1
	strb r0, [r5, #8]
	ldr r2, _0801FD9C @ =0x080E2AF5
	adds r1, r6, #0
	subs r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, _0801FDA0 @ =gUnk_03003430
	ldrh r2, [r0, #0x24]
	movs r0, #8
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, #0xf0
	subs r1, r1, r0
	strh r1, [r5]
	b _0801FFD4
	.align 2, 0
_0801FD94: .4byte gUnk_03002920
_0801FD98: .4byte gUnk_03005400
_0801FD9C: .4byte 0x080E2AF5
_0801FDA0: .4byte gUnk_03003430
_0801FDA4:
	ldr r0, _0801FE30 @ =0x080E2AF5
	mov sb, r0
	movs r1, #0x16
	rsbs r1, r1, #0
	adds r1, r1, r6
	mov r8, r1
	lsls r0, r1, #1
	add r0, r8
	lsls r4, r0, #1
	mov r0, sb
	adds r0, #2
	adds r0, r4, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _0801FE34 @ =gUnk_03004C20
	ldr r0, [r2]
	bl __umodsi3
	cmp r0, #0
	bne _0801FDDE
	mov r0, sb
	adds r0, #4
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
_0801FDDE:
	mov r0, sb
	adds r0, #3
	adds r0, r4, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _0801FE34 @ =gUnk_03004C20
	ldr r0, [r2]
	bl __umodsi3
	cmp r0, #0
	bne _0801FE06
	mov r0, sb
	adds r0, #5
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
_0801FE06:
	ldrh r0, [r5, #2]
	cmp r0, #0x28
	bls _0801FE0E
	b _0801FFD4
_0801FE0E:
	movs r0, #0xf
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #0xc]
	subs r0, #0x1c
	ands r0, r1
	strb r0, [r5, #0xc]
	cmp r6, #0x1b
	bhi _0801FE38
	mov r1, r8
	lsls r0, r1, #6
	adds r0, #0x50
	strh r0, [r5]
	mov r2, sl
	lsls r2, r2, #3
	mov r8, r2
	b _0801FE8C
	.align 2, 0
_0801FE30: .4byte 0x080E2AF5
_0801FE34: .4byte gUnk_03004C20
_0801FE38:
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r5, sl
	lsls r5, r5, #3
	mov r8, r5
	ldr r5, _0801FE70 @ =gUnk_03005400
	movs r4, #1
_0801FE54:
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	beq _0801FE74
	adds r0, r3, #1
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _0801FE54
	.align 2, 0
_0801FE70: .4byte gUnk_03005400
_0801FE74:
	adds r0, r4, #0
	lsls r0, r3
	ldrb r1, [r5, #0x16]
	orrs r0, r1
	strb r0, [r5, #0x16]
	ldr r2, _0801FEB0 @ =gUnk_03002920
	subs r1, r7, r6
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r3, #6
	adds r0, #0x70
	strh r0, [r1]
_0801FE8C:
	subs r1, r7, r6
	lsls r1, r1, #2
	ldr r6, _0801FEB0 @ =gUnk_03002920
	adds r1, r1, r6
	ldrb r2, [r1, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0xc]
	ldr r0, _0801FEB4 @ =gUnk_03003590
	add r0, r8
	movs r2, #0
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0]
	strb r2, [r0, #4]
	b _0801FFD4
	.align 2, 0
_0801FEB0: .4byte gUnk_03002920
_0801FEB4: .4byte gUnk_03003590
_0801FEB8:
	lsls r4, r6, #3
	subs r0, r4, r6
	lsls r0, r0, #2
	ldr r7, _0801FF0C @ =gUnk_03002920
	adds r5, r0, r7
	ldrh r0, [r5, #2]
	adds r0, #2
	strh r0, [r5, #2]
	ldr r3, _0801FF10 @ =gUnk_03004790
	ldrh r2, [r5]
	lsrs r2, r2, #3
	ldrh r0, [r5, #2]
	mov r8, r0
	mov r1, r8
	subs r1, #8
	asrs r1, r1, #3
	ldr r0, _0801FF14 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r0, r1, r0
	ldr r1, [r3, #0x14]
	adds r2, r2, r0
	adds r1, r1, r2
	ldr r0, _0801FF18 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	adds r7, r4, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhi _0801FF1C
	mov r1, r8
	cmp r1, #0x64
	bls _0801FF1C
	movs r0, #0x43
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r5, #9]
	movs r0, #0x10
	strb r0, [r5, #0xf]
	b _0801FFD4
	.align 2, 0
_0801FF0C: .4byte gUnk_03002920
_0801FF10: .4byte gUnk_03004790
_0801FF14: .4byte gUnk_03003430
_0801FF18: .4byte gUnk_03004654
_0801FF1C:
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r3, _0801FF38 @ =gUnk_03002920
	adds r2, r0, r3
	ldrh r1, [r2, #2]
	ldr r0, _0801FF3C @ =0x00000167
	cmp r1, r0
	bls _0801FFD4
	movs r0, #0
	movs r1, #0x46
	strb r1, [r2, #8]
	movs r1, #0x1c
	strb r1, [r2, #0xf]
	b _0801FFD2
	.align 2, 0
_0801FF38: .4byte gUnk_03002920
_0801FF3C: .4byte 0x00000167
_0801FF40:
	ldr r0, _0801FF6C @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r7, r6, #3
	cmp r0, #0
	bne _0801FF80
	ldr r0, _0801FF70 @ =gUnk_03003590
	mov r5, sl
	lsls r1, r5, #3
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x7f
	bgt _0801FF74
	adds r0, r2, #4
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #4
	strh r0, [r1, #2]
	b _0801FF80
	.align 2, 0
_0801FF6C: .4byte gUnk_03004C20
_0801FF70: .4byte gUnk_03003590
_0801FF74:
	subs r0, r7, r6
	lsls r0, r0, #2
	ldr r5, _0801FF90 @ =gUnk_03002920
	adds r0, r0, r5
	movs r1, #0x11
	strb r1, [r0, #0xf]
_0801FF80:
	subs r1, r7, r6
	lsls r1, r1, #2
	ldr r6, _0801FF90 @ =gUnk_03002920
	adds r1, r1, r6
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	b _0801FFD4
	.align 2, 0
_0801FF90: .4byte gUnk_03002920
_0801FF94:
	ldr r0, _0801FFE4 @ =gUnk_03003590
	mov r7, sl
	lsls r1, r7, #3
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x9f
	bgt _0801FFB0
	adds r0, r2, #4
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #4
	strh r0, [r1, #2]
_0801FFB0:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r5, _0801FFE8 @ =gUnk_03002920
	adds r2, r0, r5
	ldrh r0, [r2, #2]
	adds r0, #2
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldr r1, _0801FFEC @ =0x01670000
	cmp r0, r1
	bls _0801FFD4
	movs r0, #0x46
	strb r0, [r2, #8]
	movs r0, #0x1c
	strb r0, [r2, #0xf]
	movs r0, #0
_0801FFD2:
	strb r0, [r2, #0x10]
_0801FFD4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFE4: .4byte gUnk_03003590
_0801FFE8: .4byte gUnk_03002920
_0801FFEC: .4byte 0x01670000

	thumb_func_start sub_0801FFF0
sub_0801FFF0: @ 0x0801FFF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08020044 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	ldr r6, _08020048 @ =gUnk_03002920
	cmp r0, #0
	beq _08020024
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r1, r0, r6
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0802001A
	subs r0, #1
	strb r0, [r1, #8]
_0802001A:
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08020024
	subs r0, #1
	strb r0, [r1, #9]
_08020024:
	lsls r1, r7, #3
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r4, r0, r6
	ldrb r0, [r4, #0xf]
	mov r8, r1
	cmp r0, #0xf
	bne _08020036
	b _080201F0
_08020036:
	cmp r0, #0xf
	bgt _0802004C
	cmp r0, #0xe
	bne _08020040
	b _080201D8
_08020040:
	b _080202C6
	.align 2, 0
_08020044: .4byte gUnk_03004C20
_08020048: .4byte gUnk_03002920
_0802004C:
	cmp r0, #0x13
	beq _080200D8
	cmp r0, #0x19
	beq _08020056
	b _080202C6
_08020056:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
	movs r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #8]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	movs r1, #0xc
	ands r1, r0
	ldrb r2, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	cmp r7, #0x15
	bne _0802008C
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r0, #0xe
	strb r0, [r1, #0xf]
	b _08020090
_0802008C:
	movs r0, #0xf
	strb r0, [r4, #0xf]
_08020090:
	ldr r0, _080200B4 @ =gUnk_03002920
	mov r2, r8
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r3, r1, r0
	ldrb r1, [r3, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r6, r0, #0
	cmp r1, #0
	bne _080200B8
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r0, [r0]
	adds r0, #0x30
	b _080200C2
	.align 2, 0
_080200B4: .4byte gUnk_03002920
_080200B8:
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x30
_080200C2:
	strh r0, [r3]
	mov r1, r8
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r1, r6, r2
	ldrh r1, [r1]
	strh r1, [r0, #2]
	b _080202C6
_080200D8:
	ldrb r0, [r4, #8]
	cmp r0, #0x1c
	bls _08020108
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	movs r1, #0x2c
	muls r1, r0, r1
	subs r1, #0x16
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r4]
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r4, #2]
	b _080202C6
_08020108:
	cmp r0, #0x18
	bls _08020138
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	movs r1, #0x2e
	muls r1, r0, r1
	subs r1, #0x17
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r4]
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x20
	strh r0, [r4, #2]
	b _080202C6
_08020138:
	cmp r0, #0x11
	bls _0802016A
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #6
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r4]
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x34
	strh r0, [r4, #2]
	b _080202C6
_0802016A:
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r5, r1
	bls _0802019A
	movs r0, #0xff
	strb r0, [r4, #8]
	lsls r0, r1, #8
	subs r0, r0, r1
	adds r1, r5, #0
	bl __divsi3
	b _080201A8
_0802019A:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #6
	bl __divsi3
	strb r0, [r4, #8]
	movs r0, #0xff
_080201A8:
	strb r0, [r4, #9]
	ldr r0, _080201D4 @ =gUnk_03002920
	mov r2, r8
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0x81
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #0xc
	ands r2, r0
	ldrb r3, [r1, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xc]
	movs r0, #0xf
	strb r0, [r1, #0xf]
	b _080202C6
	.align 2, 0
_080201D4: .4byte gUnk_03002920
_080201D8:
	ldrh r0, [r4, #2]
	subs r0, #1
	ldrb r1, [r4, #9]
	lsrs r1, r1, #6
	subs r0, r0, r1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bhi _08020208
	movs r0, #0xf
	b _08020206
_080201F0:
	ldrh r1, [r4, #2]
	adds r1, #1
	ldrb r0, [r4, #9]
	lsrs r0, r0, #6
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe2
	bls _08020208
	movs r0, #0xe
_08020206:
	strb r0, [r4, #0xf]
_08020208:
	mov r1, r8
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08020228
	ldrh r1, [r2]
	adds r1, #1
	ldrb r0, [r2, #8]
	lsrs r0, r0, #6
	adds r0, r0, r1
	strh r0, [r2]
	b _08020234
_08020228:
	ldrh r1, [r2]
	subs r1, #1
	ldrb r0, [r2, #8]
	lsrs r0, r0, #6
	subs r1, r1, r0
	strh r1, [r2]
_08020234:
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r4, r0, r6
	ldrh r0, [r4]
	movs r2, #0xd0
	lsls r2, r2, #1
	cmp r0, r2
	bls _08020256
	ldrb r0, [r4, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #0xc]
	strh r2, [r4]
_08020256:
	ldrh r0, [r4]
	cmp r0, #0x3f
	bhi _0802026A
	ldrb r0, [r4, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4, #0xc]
	movs r0, #0x40
	strh r0, [r4]
_0802026A:
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r3, [r0]
	adds r1, r3, #0
	subs r1, #0xe
	ldrh r2, [r4]
	adds r0, r2, #0
	adds r0, #0xc
	cmp r1, r0
	bge _080202C6
	adds r1, #0x1c
	subs r0, #0x18
	cmp r1, r0
	ble _080202C6
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x14
	ldrh r3, [r4, #2]
	cmp r0, r3
	bge _080202C6
	adds r0, r3, #0
	subs r0, #0x18
	cmp r1, r0
	ble _080202C6
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080202C6
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _080202C6
	ldr r1, _080202D0 @ =gUnk_03005400
	ldrb r0, [r1, #0xa]
	cmp r0, #5
	bne _080202C6
	movs r0, #8
	strb r0, [r1, #0xb]
	movs r0, #6
	strb r0, [r1, #0xa]
	movs r0, #0x1f
	strb r0, [r4, #8]
	movs r0, #0x13
	strb r0, [r4, #0xf]
_080202C6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080202D0: .4byte gUnk_03005400

	thumb_func_start sub_080202D4
sub_080202D4: @ 0x080202D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0x15
	bne _080202EE
	movs r0, #0
	b _080202F6
_080202EE:
	mov r0, sl
	adds r0, #0xec
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080202F6:
	str r0, [sp, #0x20]
	ldr r4, _08020334 @ =gUnk_03002920
	mov r1, sl
	lsls r5, r1, #3
	subs r1, r5, r1
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r2, [sp, #0x20]
	adds r2, #3
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r1, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xd]
	ldrb r0, [r1, #0xf]
	adds r6, r4, #0
	str r5, [sp, #0x24]
	cmp r0, #0x1a
	bls _08020328
	bl _08020F70
_08020328:
	lsls r0, r0, #2
	ldr r1, _08020338 @ =_0802033C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020334: .4byte gUnk_03002920
_08020338: .4byte _0802033C
_0802033C: @ jump table
	.4byte _08020430 @ case 0
	.4byte _08020F70 @ case 1
	.4byte _08020F70 @ case 2
	.4byte _080203A8 @ case 3
	.4byte _08020400 @ case 4
	.4byte _080208D4 @ case 5
	.4byte _08020EEC @ case 6
	.4byte _08020F70 @ case 7
	.4byte _08020F70 @ case 8
	.4byte _08020F70 @ case 9
	.4byte _08020F70 @ case 10
	.4byte _08020F70 @ case 11
	.4byte _08020F70 @ case 12
	.4byte _08020F70 @ case 13
	.4byte _080204BC @ case 14
	.4byte _08020554 @ case 15
	.4byte _0802068C @ case 16
	.4byte _08020DDC @ case 17
	.4byte _080206F4 @ case 18
	.4byte _08020BA2 @ case 19
	.4byte _08020F70 @ case 20
	.4byte _08020F70 @ case 21
	.4byte _08020F70 @ case 22
	.4byte _08020F70 @ case 23
	.4byte _08020F70 @ case 24
	.4byte _08020F70 @ case 25
	.4byte _08020F5C @ case 26
_080203A8:
	ldr r1, _080203F4 @ =gUnk_03002920
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r0, #1
	strb r0, [r2, #0x10]
	movs r5, #0x93
	lsls r5, r5, #2
	adds r3, r1, r5
	ldr r4, _080203F8 @ =gSineTable
	ldrh r0, [r1]
	lsrs r0, r0, #2
	adds r0, #0xc0
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r0, r0, #5
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r2]
	ldr r0, _080203FC @ =0x0000024E
	adds r3, r1, r0
	ldrh r0, [r1]
	lsrs r0, r0, #2
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	asrs r1, r1, #5
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r2, #2]
	bl _08020F70
	.align 2, 0
_080203F4: .4byte gUnk_03002920
_080203F8: .4byte gSineTable
_080203FC: .4byte 0x0000024E
_08020400:
	ldr r2, _08020428 @ =gUnk_03002920
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x10]
	movs r3, #0x93
	lsls r3, r3, #2
	adds r1, r2, r3
	ldrh r1, [r1]
	strh r1, [r0]
	ldr r4, _0802042C @ =0x0000024E
	adds r2, r2, r4
	ldrh r1, [r2]
	strh r1, [r0, #2]
	bl _08020F70
	.align 2, 0
_08020428: .4byte gUnk_03002920
_0802042C: .4byte 0x0000024E
_08020430:
	ldr r1, _0802049C @ =gUnk_03000830
	ldr r0, _080204A0 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r5, sl
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _0802044C
	mov r0, sl
	movs r1, #0
	bl sub_08025B78
_0802044C:
	ldr r0, _080204A4 @ =gUnk_03002920
	ldr r6, [sp, #0x24]
	mov r1, sl
	subs r4, r6, r1
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r5, _080204A8 @ =gUnk_080E2B64
	ldr r3, _080204AC @ =gUnk_03004C20
	ldrb r2, [r3, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	subs r1, #0xd
	movs r0, #0x2c
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _080204B0 @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _080204B4 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r1, _080204B8 @ =gSineTable
	ldrb r0, [r3]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	asrs r0, r0, #6
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
	bl _08020F70
	.align 2, 0
_0802049C: .4byte gUnk_03000830
_080204A0: .4byte gUnk_0300363C
_080204A4: .4byte gUnk_03002920
_080204A8: .4byte gUnk_080E2B64
_080204AC: .4byte gUnk_03004C20
_080204B0: .4byte 0x00001130
_080204B4: .4byte 0x00008980
_080204B8: .4byte gSineTable
_080204BC:
	ldr r1, _080204DC @ =gUnk_03000830
	ldr r0, _080204E0 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r4, sl
	subs r0, r4, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #5
	beq _080204E4
	movs r0, #0x15
	movs r1, #5
	bl sub_08025B78
	bl _08020F70
	.align 2, 0
_080204DC: .4byte gUnk_03000830
_080204E0: .4byte gUnk_0300363C
_080204E4:
	ldr r2, _08020500 @ =gUnk_03002920
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrh r0, [r4, #2]
	cmp r0, #0x77
	bls _08020504
	subs r0, #1
	strh r0, [r4, #2]
	bl _08020F70
	.align 2, 0
_08020500: .4byte gUnk_03002920
_08020504:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	beq _0802050E
	bl _08020F70
_0802050E:
	ldr r1, _08020548 @ =0x0000028D
	adds r0, r2, r1
	movs r1, #0
	strb r1, [r0]
	ldr r3, _0802054C @ =0x00000271
	adds r0, r2, r3
	strb r1, [r0]
	ldr r5, _08020550 @ =0x00000255
	adds r0, r2, r5
	strb r1, [r0]
	movs r0, #0x80
	strb r0, [r4, #8]
	movs r6, #0x96
	lsls r6, r6, #2
	adds r2, r2, r6
	ldrb r1, [r2]
	subs r0, #0x8d
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r0, sl
	movs r1, #6
	bl sub_08025B78
	movs r0, #0xf
	strb r0, [r4, #0xf]
	bl _08020F70
	.align 2, 0
_08020548: .4byte 0x0000028D
_0802054C: .4byte 0x00000271
_08020550: .4byte 0x00000255
_08020554:
	ldr r1, [sp, #0x24]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0x6e
	beq _0802058C
	cmp r0, #0x6e
	bgt _0802056E
	cmp r0, #0x68
	beq _080205A4
	b _080205B6
_0802056E:
	cmp r0, #0x74
	bne _080205B6
	ldr r3, _08020588 @ =0x00000303
	adds r0, r6, r3
	movs r1, #0x19
	strb r1, [r0]
	movs r4, #0xbf
	lsls r4, r4, #2
	adds r0, r6, r4
	mov r5, sl
	strb r5, [r0]
	b _080205B6
	.align 2, 0
_08020588: .4byte 0x00000303
_0802058C:
	ldr r1, _080205A0 @ =0x000002CB
	adds r0, r6, r1
	movs r1, #0x19
	strb r1, [r0]
	movs r2, #0xb1
	lsls r2, r2, #2
	adds r0, r6, r2
	mov r3, sl
	strb r3, [r0]
	b _080205B6
	.align 2, 0
_080205A0: .4byte 0x000002CB
_080205A4:
	ldr r4, _080205EC @ =0x000002E7
	adds r0, r6, r4
	movs r1, #0x19
	strb r1, [r0]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r0, r6, r5
	mov r6, sl
	strb r6, [r0]
_080205B6:
	ldr r1, _080205F0 @ =gUnk_03000830
	ldr r0, _080205F4 @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, sl
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #6
	bne _080205FC
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _0802060E
	ldr r0, _080205F8 @ =gUnk_03002920
	movs r3, #0x96
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	mov r0, sl
	movs r1, #7
	bl sub_08025B78
	b _0802060E
	.align 2, 0
_080205EC: .4byte 0x000002E7
_080205F0: .4byte gUnk_03000830
_080205F4: .4byte gUnk_0300363C
_080205F8: .4byte gUnk_03002920
_080205FC:
	cmp r1, #7
	bne _0802060E
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _0802060E
	mov r0, sl
	movs r1, #3
	bl sub_08025B78
_0802060E:
	ldr r4, _08020628 @ =gUnk_03002920
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r1, r0, r4
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0802062C
	subs r0, #1
	strb r0, [r1, #8]
	bl _08020F70
	.align 2, 0
_08020628: .4byte gUnk_03002920
_0802062C:
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r0, r4, r2
	strh r1, [r0]
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	ldr r5, _08020680 @ =0x0000024E
	adds r0, r4, r5
	ldrh r1, [r0]
	ldr r6, _08020684 @ =0x00000286
	adds r0, r4, r6
	strh r1, [r0]
	subs r2, #0x1a
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0x16
	movs r1, #3
	bl sub_08025B78
	movs r0, #0x17
	movs r1, #3
	bl sub_08025B78
	ldr r3, _08020688 @ =0x0000025B
	adds r1, r4, r3
	movs r0, #0x12
	strb r0, [r1]
	adds r5, #0x45
	adds r0, r4, r5
	movs r1, #0x10
	strb r1, [r0]
	subs r6, #0xf
	adds r0, r4, r6
	strb r1, [r0]
	bl _08020F70
	.align 2, 0
_08020680: .4byte 0x0000024E
_08020684: .4byte 0x00000286
_08020688: .4byte 0x0000025B
_0802068C:
	ldr r2, _080206C8 @ =gUnk_03002920
	ldr r1, [sp, #0x24]
	mov r3, sl
	subs r0, r1, r3
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrb r1, [r4, #9]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080206A6
	b _08020CD0
_080206A6:
	strb r5, [r4, #0x10]
	ldrh r0, [r4, #2]
	cmp r0, #0xb0
	bhi _080206D6
	adds r0, #1
	strh r0, [r4, #2]
	mov r5, sl
	cmp r5, #0x16
	bne _080206CC
	movs r6, #0x9a
	lsls r6, r6, #2
	adds r1, r2, r6
	ldrh r0, [r1]
	subs r0, #2
	strh r0, [r1]
	bl _08020F70
	.align 2, 0
_080206C8: .4byte gUnk_03002920
_080206CC:
	ldrh r0, [r4]
	adds r0, #2
	strh r0, [r4]
	bl _08020F70
_080206D6:
	movs r0, #0x1e
	strb r0, [r4, #8]
	bl thunk_GetRandomValue
	ldr r1, _080206F0 @ =gUnk_03005400
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ands r0, r5
	strb r0, [r1, #0x13]
	movs r0, #0x12
	strb r0, [r4, #0xf]
	bl _08020F70
	.align 2, 0
_080206F0: .4byte gUnk_03005400
_080206F4:
	ldr r0, _0802072C @ =gUnk_03004C20
	ldr r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	bne _08020718
	ldr r1, _08020730 @ =gUnk_03002920
	ldr r2, [sp, #0x24]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08020718
	subs r0, #1
	strb r0, [r1, #8]
_08020718:
	mov r5, sl
	cmp r5, #0x16
	beq _080207D4
	cmp r5, #0x16
	bgt _08020734
	cmp r5, #0x15
	beq _08020740
	bl _08020F70
	.align 2, 0
_0802072C: .4byte gUnk_03004C20
_08020730: .4byte gUnk_03002920
_08020734:
	mov r6, sl
	cmp r6, #0x17
	bne _0802073C
	b _08020850
_0802073C:
	bl _08020F70
_08020740:
	ldr r0, [r4]
	ldr r1, _080207BC @ =0x000001FF
	ands r0, r1
	cmp r0, #0
	bne _08020752
	movs r0, #0x15
	movs r1, #3
	bl sub_08025B78
_08020752:
	ldr r2, _080207C0 @ =gUnk_03002920
	movs r0, #0x93
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r1, _080207C4 @ =gSineTable
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r0, #0x78
	strh r0, [r3, #2]
	ldrb r0, [r3, #8]
	cmp r0, #0
	beq _08020776
	bl _08020F70
_08020776:
	ldr r1, _080207C8 @ =0x00000277
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08020784
	bl _08020F70
_08020784:
	ldr r4, _080207CC @ =0x00000293
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08020792
	bl _08020F70
_08020792:
	ldr r1, _080207D0 @ =gUnk_03005400
	ldrh r0, [r2]
	strh r0, [r1, #4]
	movs r0, #0xf0
	strh r0, [r1, #6]
	movs r0, #0x28
	strb r0, [r1, #0x15]
	ldrb r1, [r1, #0x13]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #5
	strb r0, [r3, #0xf]
	b _08020F70
	.align 2, 0
_080207BC: .4byte 0x000001FF
_080207C0: .4byte gUnk_03002920
_080207C4: .4byte gSineTable
_080207C8: .4byte 0x00000277
_080207CC: .4byte 0x00000293
_080207D0: .4byte gUnk_03005400
_080207D4:
	ldr r0, [r4]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080207E6
	movs r0, #0x16
	movs r1, #3
	bl sub_08025B78
_080207E6:
	ldr r3, _08020840 @ =gUnk_03002920
	movs r5, #0x9a
	lsls r5, r5, #2
	adds r2, r3, r5
	ldr r1, _08020844 @ =gSineTable
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r0, #0xb0
	strh r0, [r2, #2]
	ldrb r0, [r2, #8]
	cmp r0, #0
	bne _0802080E
	ldr r0, _08020848 @ =gUnk_03005400
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0802081A
_0802080E:
	ldr r6, _0802084C @ =0x00000293
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _0802081A
	b _08020F70
_0802081A:
	ldr r1, _08020848 @ =gUnk_03005400
	ldr r2, _08020840 @ =gUnk_03002920
	ldrh r0, [r2]
	strh r0, [r1, #4]
	movs r0, #0x8c
	lsls r0, r0, #1
	strh r0, [r1, #6]
	movs r0, #0x78
	strb r0, [r1, #0x15]
	ldr r0, [sp, #0x24]
	mov r3, sl
	subs r1, r0, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	b _080208BC
	.align 2, 0
_08020840: .4byte gUnk_03002920
_08020844: .4byte gSineTable
_08020848: .4byte gUnk_03005400
_0802084C: .4byte 0x00000293
_08020850:
	movs r5, #0xff
	ldrb r0, [r4]
	cmp r0, #0
	bne _08020860
	movs r0, #0x17
	movs r1, #3
	bl sub_08025B78
_08020860:
	ldr r3, _080208C4 @ =gUnk_03002920
	movs r6, #0xa1
	lsls r6, r6, #2
	adds r2, r3, r6
	ldr r1, _080208C8 @ =gSineTable
	ldr r0, [r4]
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r0, #0xb0
	strh r0, [r2, #2]
	ldrb r0, [r2, #8]
	cmp r0, #0
	bne _0802088A
	ldr r0, _080208CC @ =gUnk_03005400
	ldrb r0, [r0, #0x13]
	cmp r0, #1
	beq _08020896
_0802088A:
	ldr r1, _080208D0 @ =0x00000277
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08020896
	b _08020F70
_08020896:
	ldr r1, _080208CC @ =gUnk_03005400
	ldr r2, _080208C4 @ =gUnk_03002920
	ldrh r0, [r2]
	strh r0, [r1, #4]
	movs r0, #0x8c
	lsls r0, r0, #1
	strh r0, [r1, #6]
	movs r0, #0x78
	strb r0, [r1, #0x15]
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1, #0xc]
	subs r0, #0x85
	ands r0, r2
	movs r2, #4
	orrs r0, r2
_080208BC:
	strb r0, [r1, #0xc]
	movs r0, #5
	strb r0, [r1, #0xf]
	b _08020F70
	.align 2, 0
_080208C4: .4byte gUnk_03002920
_080208C8: .4byte gSineTable
_080208CC: .4byte gUnk_03005400
_080208D0: .4byte 0x00000277
_080208D4:
	adds r5, r6, #0
	ldr r1, [sp, #0x24]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrb r0, [r4, #9]
	movs r1, #0xfe
	ands r1, r0
	cmp r1, #2
	bne _080208EC
	b _08020A1C
_080208EC:
	cmp r1, #2
	bgt _080208F6
	cmp r1, #0
	beq _080208FE
	b _08020F70
_080208F6:
	cmp r1, #6
	bne _080208FC
	b _08020AC0
_080208FC:
	b _08020F70
_080208FE:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0802091C
	ldr r1, _08020918 @ =gUnk_03005400
	ldrb r0, [r1, #0x15]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, r1, #0
	b _08020922
	.align 2, 0
_08020918: .4byte gUnk_03005400
_0802091C:
	ldr r0, _0802095C @ =gUnk_03005400
	ldrb r3, [r0, #0x15]
	adds r4, r0, #0
_08020922:
	mov r2, sp
	ldr r1, _08020960 @ =gUnk_03002920
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2]
	mov r1, sp
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	lsls r3, r3, #0x18
	asrs r0, r3, #0x18
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	movs r5, #4
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r2, #4]
	mov r1, sp
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	mov r8, r3
	cmp r6, #0x15
	bne _08020964
	movs r0, #2
	b _0802096A
	.align 2, 0
_0802095C: .4byte gUnk_03005400
_08020960: .4byte gUnk_03002920
_08020964:
	mov r2, sp
	mov r1, sp
	movs r0, #3
_0802096A:
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0x10
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r5, [sp, #0x10]
	ldr r6, _080209D8 @ =gUnk_03002920
	mov sb, r6
	ldr r1, [sp, #0x24]
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r3, r0, r6
	strh r5, [r3]
	lsrs r6, r5, #0x10
	strh r6, [r3, #2]
	movs r4, #0xf8
	adds r1, r5, #0
	ands r1, r4
	ldr r7, _080209DC @ =gUnk_03005400
	mov r2, r8
	asrs r0, r2, #0x18
	ldrh r2, [r7, #4]
	adds r0, r0, r2
	ands r0, r4
	cmp r1, r0
	beq _080209A8
	b _08020F70
_080209A8:
	ldrh r2, [r7, #6]
	adds r1, r4, #0
	ands r1, r6
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq _080209B8
	b _08020F70
_080209B8:
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r6, sb
	ldrh r6, [r6]
	cmp r0, r6
	bge _080209E0
	ldrb r0, [r3, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r3, #0xc]
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	b _080209F4
	.align 2, 0
_080209D8: .4byte gUnk_03002920
_080209DC: .4byte gUnk_03005400
_080209E0:
	ldrb r1, [r3, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0x15
	ldrsb r0, [r7, r0]
	subs r0, r5, r0
_080209F4:
	strh r0, [r7, #4]
	ldr r0, _08020A18 @ =gUnk_03002920
	ldr r1, [sp, #0x24]
	mov r3, sl
	subs r2, r1, r3
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	adds r0, #1
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #7
	strb r0, [r2, #8]
	ldrb r1, [r2, #9]
	movs r0, #2
	b _08020AB2
	.align 2, 0
_08020A18: .4byte gUnk_03002920
_08020A1C:
	ldr r3, _08020A58 @ =gUnk_03005400
	movs r1, #0x15
	ldrsb r1, [r3, r1]
	ldr r2, _08020A5C @ =gSineTable
	ldrb r0, [r4, #8]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	ldrb r1, [r4, #8]
	cmp r0, #0
	bne _08020A60
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	rsbs r0, r0, #0
	asrs r0, r0, #8
	b _08020A6A
	.align 2, 0
_08020A58: .4byte gUnk_03005400
_08020A5C: .4byte gSineTable
_08020A60:
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	asrs r0, r0, #3
_08020A6A:
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	strh r0, [r4, #2]
	mov r0, sl
	cmp r0, #0x15
	bne _08020A82
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrb r0, [r1, #8]
	adds r0, #2
	b _08020A90
_08020A82:
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r0, [r1, #8]
	adds r0, #1
_08020A90:
	strb r0, [r1, #8]
	ldr r0, _08020AB8 @ =gUnk_03002920
	ldr r5, [sp, #0x24]
	mov r6, sl
	subs r1, r5, r6
	lsls r1, r1, #2
	adds r2, r1, r0
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r1, r0
	cmp r1, #0
	beq _08020AAA
	b _08020F70
_08020AAA:
	ldr r0, _08020ABC @ =gUnk_030034DC
	strh r1, [r0]
	ldrb r1, [r2, #9]
	movs r0, #4
_08020AB2:
	orrs r0, r1
	strb r0, [r2, #9]
	b _08020F70
	.align 2, 0
_08020AB8: .4byte gUnk_03002920
_08020ABC: .4byte gUnk_030034DC
_08020AC0:
	mov r1, sp
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0x78
	strh r0, [r1, #6]
	mov r2, sp
	movs r0, #4
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0x14
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r0, [sp, #0x14]
	strh r0, [r4]
	lsrs r1, r0, #0x10
	strh r1, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x13
	cmp r0, #0x1e
	beq _08020AF8
	b _08020F70
_08020AF8:
	lsrs r7, r1, #3
	cmp r7, #0xf
	beq _08020B00
	b _08020F70
_08020B00:
	ldrb r1, [r4, #9]
	movs r0, #1
	ands r0, r1
	strb r0, [r4, #9]
	mov r0, sl
	cmp r0, #0x15
	beq _08020B10
	b _08020CD0
_08020B10:
	ldr r0, _08020B64 @ =gUnk_03005400
	ldrh r0, [r0]
	cmp r0, #0
	bne _08020B78
	movs r0, #1
	bl sub_080145A8
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r2, _08020B68 @ =0x00000216
	adds r1, r5, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r0, [r0]
	ldr r4, _08020B6C @ =0x00000232
	adds r1, r5, r4
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
	ldr r6, _08020B70 @ =0x0000023F
	adds r0, r5, r6
	movs r1, #0x1c
	strb r1, [r0]
	ldr r2, _08020B74 @ =0x00000223
	adds r0, r5, r2
	strb r1, [r0]
	movs r3, #0x93
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r0, #0x11
	strb r0, [r1, #0xf]
	b _08020F70
	.align 2, 0
_08020B64: .4byte gUnk_03005400
_08020B68: .4byte 0x00000216
_08020B6C: .4byte 0x00000232
_08020B70: .4byte 0x0000023F
_08020B74: .4byte 0x00000223
_08020B78:
	movs r5, #0x93
	lsls r5, r5, #2
	adds r4, r6, r5
	movs r0, #0x80
	strb r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x15
	movs r1, #6
	bl sub_08025B78
	strb r7, [r4, #0xf]
	b _08020F70
_08020BA2:
	mov r2, sp
	ldr r1, _08020C9C @ =gUnk_03002920
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrh r0, [r4]
	movs r5, #0
	strh r0, [r2]
	mov r1, sp
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	movs r0, #0xf0
	strh r0, [r1, #4]
	movs r0, #0x78
	strh r0, [r1, #6]
	movs r0, #2
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0x18
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r0, [sp, #0x18]
	strh r0, [r4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #2]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _08020BEE
	movs r0, #0x63
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4, #8]
_08020BEE:
	ldrh r0, [r4]
	lsrs r0, r0, #3
	cmp r0, #0x1e
	bne _08020CDC
	ldrh r0, [r4, #2]
	lsrs r0, r0, #3
	cmp r0, #0xf
	bne _08020CDC
	ldrb r1, [r4, #9]
	movs r0, #1
	ands r0, r1
	strb r0, [r4, #9]
	mov r6, sl
	cmp r6, #0x15
	bne _08020CC4
	ldr r4, _08020CA0 @ =0x040000D4
	ldr r0, _08020CA4 @ =0x08078968
	str r0, [r4]
	ldr r3, _08020CA8 @ =gUnk_0818B8E0
	ldr r2, _08020CAC @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, #0x48
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _08020CB0 @ =0x05000200
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08020CB4 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08020C4E
_08020C46:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _08020C46
_08020C4E:
	ldr r4, _08020C9C @ =gUnk_03002920
	ldr r2, [sp, #0x24]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0x11
	strb r1, [r0, #0xf]
	movs r5, #0x85
	lsls r5, r5, #2
	adds r0, r4, r5
	ldrh r0, [r0]
	ldr r6, _08020CB8 @ =0x00000216
	adds r1, r4, r6
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _08020CBC @ =0x00000232
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
	ldr r3, _08020CC0 @ =0x0000023F
	adds r0, r4, r3
	movs r1, #0x1c
	strb r1, [r0]
	adds r5, #0xf
	adds r4, r4, r5
	strb r1, [r4]
	b _08020F70
	.align 2, 0
_08020C9C: .4byte gUnk_03002920
_08020CA0: .4byte 0x040000D4
_08020CA4: .4byte 0x08078968
_08020CA8: .4byte gUnk_0818B8E0
_08020CAC: .4byte gUnk_03004C20
_08020CB0: .4byte 0x05000200
_08020CB4: .4byte 0x80000010
_08020CB8: .4byte 0x00000216
_08020CBC: .4byte 0x00000232
_08020CC0: .4byte 0x0000023F
_08020CC4:
	ldr r0, _08020CD8 @ =gUnk_03003590
	ldr r6, [sp, #0x20]
	lsls r1, r6, #3
	adds r1, r1, r0
	strh r5, [r1]
	strh r5, [r1, #2]
_08020CD0:
	movs r0, #0x1a
	strb r0, [r4, #0xf]
	b _08020F70
	.align 2, 0
_08020CD8: .4byte gUnk_03003590
_08020CDC:
	mov r0, sl
	cmp r0, #0x15
	bne _08020D98
	ldr r4, _08020D78 @ =gUnk_03004C20
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #5
	bne _08020D30
	ldr r3, _08020D7C @ =0x040000D4
	ldr r0, _08020D80 @ =0x08078968
	str r0, [r3]
	ldr r2, _08020D84 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, #0x48
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r2, _08020D88 @ =0x05000200
	adds r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _08020D8C @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08020D30
_08020D28:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08020D28
_08020D30:
	ldr r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	cmp r0, #0
	beq _08020D3E
	b _08020F70
_08020D3E:
	add r1, sp, #0xc
	ldr r3, _08020D90 @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	ldr r2, _08020D7C @ =0x040000D4
	str r1, [r2]
	ldr r3, _08020D84 @ =gUnk_0818B8E0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r4, [sp, #0x24]
	adds r0, r4, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r5, _08020D88 @ =0x05000200
	adds r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _08020D94 @ =0x81000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08020F70
	.align 2, 0
_08020D78: .4byte gUnk_03004C20
_08020D7C: .4byte 0x040000D4
_08020D80: .4byte 0x08078968
_08020D84: .4byte gUnk_0818B8E0
_08020D88: .4byte 0x05000200
_08020D8C: .4byte 0x80000010
_08020D90: .4byte 0x0000FFFF
_08020D94: .4byte 0x81000010
_08020D98:
	ldr r0, _08020DD0 @ =gUnk_03003590
	ldr r6, [sp, #0x20]
	lsls r1, r6, #3
	adds r1, r1, r0
	ldr r4, _08020DD4 @ =gSineTable
	ldr r3, _08020DD8 @ =gUnk_03004C20
	ldr r0, [r3]
	lsls r0, r0, #3
	movs r2, #0xff
	ands r0, r2
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	asrs r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3]
	lsls r0, r0, #3
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r0, r0, #3
	strh r0, [r1, #2]
	b _08020F70
	.align 2, 0
_08020DD0: .4byte gUnk_03003590
_08020DD4: .4byte gSineTable
_08020DD8: .4byte gUnk_03004C20
_08020DDC:
	mov r2, sp
	ldr r1, _08020EB4 @ =gUnk_03002920
	ldr r3, [sp, #0x24]
	mov r4, sl
	subs r0, r3, r4
	lsls r0, r0, #2
	adds r7, r0, r1
	ldrh r0, [r7]
	strh r0, [r2]
	mov r1, sp
	ldrh r0, [r7, #2]
	strh r0, [r1, #2]
	mov r3, sp
	ldr r5, _08020EB8 @ =gUnk_080E2B64
	mov sb, r5
	ldr r4, _08020EBC @ =gUnk_03004C20
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	mov r2, sl
	subs r2, #0xd
	movs r0, #0x2c
	adds r6, r2, #0
	muls r6, r0, r6
	mov r8, r6
	add r1, r8
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r6, _08020EC0 @ =0x00001130
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	ldr r5, _08020EC4 @ =0x00008980
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	strh r0, [r3, #4]
	mov r2, sp
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	add r1, r8
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1, #2]
	strh r0, [r2, #6]
	mov r1, sp
	movs r0, #2
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0x1c
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r2, [sp, #0x1c]
	strh r2, [r7]
	lsrs r3, r2, #0x10
	strh r3, [r7, #2]
	lsls r2, r2, #0x10
	ldrb r1, [r4, #0xe]
	subs r1, #1
	lsls r1, r1, #3
	add r1, r8
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsrs r2, r2, #0x13
	lsrs r0, r0, #3
	cmp r2, r0
	bne _08020F70
	ldrh r0, [r1, #2]
	lsrs r1, r3, #3
	lsrs r0, r0, #3
	cmp r1, r0
	bne _08020F70
	ldr r1, _08020EC8 @ =gUnk_03000830
	ldr r0, _08020ECC @ =gUnk_0300363C
	ldrb r0, [r0]
	mov r2, sl
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _08020ED0
	mov r0, sl
	movs r1, #4
	bl sub_08025B78
	b _08020F70
	.align 2, 0
_08020EB4: .4byte gUnk_03002920
_08020EB8: .4byte gUnk_080E2B64
_08020EBC: .4byte gUnk_03004C20
_08020EC0: .4byte 0x00001130
_08020EC4: .4byte 0x00008980
_08020EC8: .4byte gUnk_03000830
_08020ECC: .4byte gUnk_0300363C
_08020ED0:
	ldrb r1, [r7, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0xc]
	ldr r1, _08020EE8 @ =gUnk_03005400
	movs r0, #9
	strb r0, [r1, #0xa]
	movs r0, #0xff
	strb r0, [r7, #0xf]
	b _08020F70
	.align 2, 0
_08020EE8: .4byte gUnk_03005400
_08020EEC:
	ldr r2, _08020F44 @ =gUnk_03000830
	ldr r0, _08020F48 @ =gUnk_0300363C
	ldrb r1, [r0]
	movs r0, #0x15
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	bne _08020F70
	ldr r3, _08020F4C @ =gUnk_03002920
	movs r4, #0x95
	lsls r4, r4, #2
	adds r1, r3, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r5, #0x93
	lsls r5, r5, #2
	adds r0, r3, r5
	ldrh r2, [r0]
	adds r2, #4
	strh r2, [r0]
	ldr r6, _08020F50 @ =0x0000024E
	adds r3, r3, r6
	ldr r4, _08020F54 @ =gSineTable
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r2, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r2, r0
	bls _08020F70
	ldr r1, _08020F58 @ =gUnk_03005400
	movs r0, #0xb
	strb r0, [r1, #0xa]
	b _08020F70
	.align 2, 0
_08020F44: .4byte gUnk_03000830
_08020F48: .4byte gUnk_0300363C
_08020F4C: .4byte gUnk_03002920
_08020F50: .4byte 0x0000024E
_08020F54: .4byte gSineTable
_08020F58: .4byte gUnk_03005400
_08020F5C:
	ldr r1, _08020FB0 @ =gUnk_03002920
	ldr r2, [sp, #0x24]
	mov r3, sl
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
_08020F70:
	ldr r0, _08020FB0 @ =gUnk_03002920
	ldr r4, [sp, #0x24]
	mov r5, sl
	subs r1, r4, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0xf]
	cmp r0, #0xf
	bne _08020FA0
	ldr r0, _08020FB4 @ =gUnk_03003590
	ldr r6, [sp, #0x20]
	lsls r3, r6, #3
	adds r3, r3, r0
	ldrb r1, [r1, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	ldrb r2, [r3, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
_08020FA0:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020FB0: .4byte gUnk_03002920
_08020FB4: .4byte gUnk_03003590

	thumb_func_start sub_08020FB8
sub_08020FB8: @ 0x08020FB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1a
	beq _08021014
	cmp r5, #0x1a
	bgt _08020FDC
	cmp r5, #0x19
	beq _08020FEC
	ldr r0, _08020FD8 @ =gUnk_03002920
	mov sb, r0
	b _0802105C
	.align 2, 0
_08020FD8: .4byte gUnk_03002920
_08020FDC:
	cmp r5, #0x1b
	beq _0802103C
	ldr r1, _08020FE8 @ =gUnk_03002920
	mov sb, r1
	b _0802105C
	.align 2, 0
_08020FE8: .4byte gUnk_03002920
_08020FEC:
	ldr r3, _0802100C @ =gUnk_03002920
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r1, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r0, _08021010 @ =gUnk_03003590
	adds r0, #0x24
	movs r1, #0
	b _08021058
	.align 2, 0
_0802100C: .4byte gUnk_03002920
_08021010: .4byte gUnk_03003590
_08021014:
	ldr r3, _08021034 @ =gUnk_03002920
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r2, r3, r1
	ldrb r1, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r0, _08021038 @ =gUnk_03003590
	adds r0, #0x2c
	movs r1, #0x20
	b _08021058
	.align 2, 0
_08021034: .4byte gUnk_03002920
_08021038: .4byte gUnk_03003590
_0802103C:
	ldr r3, _080210B8 @ =gUnk_03002920
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r2, r3, r0
	ldrb r1, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x24
	orrs r0, r1
	strb r0, [r2, #0xd]
	ldr r0, _080210BC @ =gUnk_03003590
	adds r0, #0x34
	movs r1, #0xe0
_08021058:
	strb r1, [r0]
	mov sb, r3
_0802105C:
	mov r6, sb
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r6
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08021108
	cmp r0, #0x19
	beq _08021072
	b _0802116E
_08021072:
	movs r7, #1
	strb r7, [r4, #0x10]
	ldrb r1, [r4, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #0
	mov r8, r1
	strh r0, [r4]
	ldrb r1, [r4, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	adds r0, #0x20
	strh r0, [r4, #2]
	adds r0, r5, #0
	movs r1, #0x11
	bl sub_08025B78
	mov r0, r8
	strb r0, [r4, #0xf]
	movs r0, #0x74
	bl m4aSongNumStart
	cmp r5, #0x1a
	beq _080210D6
	cmp r5, #0x1a
	bgt _080210C0
	cmp r5, #0x19
	beq _080210C6
	b _0802116E
	.align 2, 0
_080210B8: .4byte gUnk_03002920
_080210BC: .4byte gUnk_03003590
_080210C0:
	cmp r5, #0x1b
	beq _080210F2
	b _0802116E
_080210C6:
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r1, r6, r0
	mov r0, r8
	strb r0, [r1, #8]
	movs r0, #2
	strb r0, [r1, #9]
	b _0802116E
_080210D6:
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r2, r6, r1
	movs r0, #0xff
	strb r0, [r2, #8]
	strb r7, [r2, #9]
	ldrb r1, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0xc]
	b _0802116E
_080210F2:
	movs r0, #0xbd
	lsls r0, r0, #2
	add r0, sb
	strb r7, [r0, #8]
	strb r7, [r0, #9]
	ldrb r2, [r0, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0xc]
	b _0802116E
_08021108:
	movs r0, #8
	ldrsb r0, [r4, r0]
	ldrh r1, [r4]
	adds r2, r0, r1
	strh r2, [r4]
	movs r0, #9
	ldrsb r0, [r4, r0]
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldr r0, _0802117C @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	movs r1, #8
	ldrsb r1, [r4, r1]
	cmp r0, #0
	beq _08021130
	adds r0, r2, r1
	strh r0, [r4]
_08021130:
	ldr r3, _08021180 @ =gUnk_03004790
	ldrh r2, [r4]
	lsrs r2, r2, #3
	ldrh r1, [r4, #2]
	subs r1, #8
	asrs r1, r1, #3
	ldr r0, _08021184 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r0, r1, r0
	ldr r1, [r3, #0x14]
	adds r2, r2, r0
	adds r1, r1, r2
	ldr r0, _08021188 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _0802116E
	movs r0, #0x1c
	strb r0, [r4, #0xf]
	movs r0, #0
	strb r0, [r4, #0x10]
	ldr r1, _0802118C @ =gUnk_03000830
	ldr r0, _08021190 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #1]
_0802116E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802117C: .4byte gUnk_03004C20
_08021180: .4byte gUnk_03004790
_08021184: .4byte gUnk_03003430
_08021188: .4byte gUnk_03004654
_0802118C: .4byte gUnk_03000830
_08021190: .4byte gUnk_0300363C

	thumb_func_start sub_08021194
sub_08021194: @ 0x08021194
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _080211C0 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0xf]
	cmp r0, #0x1a
	bls _080211B6
	b _0802190C
_080211B6:
	lsls r0, r0, #2
	ldr r1, _080211C4 @ =_080211C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080211C0: .4byte gUnk_03002920
_080211C4: .4byte _080211C8
_080211C8: @ jump table
	.4byte _080213C4 @ case 0
	.4byte _08021880 @ case 1
	.4byte _0802190C @ case 2
	.4byte _0802190C @ case 3
	.4byte _0802190C @ case 4
	.4byte _0802190C @ case 5
	.4byte _0802190C @ case 6
	.4byte _0802190C @ case 7
	.4byte _0802190C @ case 8
	.4byte _0802190C @ case 9
	.4byte _0802190C @ case 10
	.4byte _0802190C @ case 11
	.4byte _0802190C @ case 12
	.4byte _0802190C @ case 13
	.4byte _08021558 @ case 14
	.4byte _080217FC @ case 15
	.4byte _080212D4 @ case 16
	.4byte _0802190C @ case 17
	.4byte _0802190C @ case 18
	.4byte _0802190C @ case 19
	.4byte _0802190C @ case 20
	.4byte _0802190C @ case 21
	.4byte _0802190C @ case 22
	.4byte _0802190C @ case 23
	.4byte _0802190C @ case 24
	.4byte _08021234 @ case 25
	.4byte _080218D0 @ case 26
_08021234:
	adds r0, r7, #0
	movs r1, #0xe
	bl sub_08025B78
	ldr r2, _080212B4 @ =gUnk_03002920
	lsls r3, r7, #3
	subs r1, r3, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r4, #2
	adds r0, r2, r4
	ldrh r0, [r0]
	subs r0, #0x40
	strh r0, [r1, #2]
	movs r0, #0x10
	strb r0, [r1, #0xf]
	ldrb r2, [r1, #0xc]
	subs r0, #0x14
	ands r0, r2
	strb r0, [r1, #0xc]
	ldr r1, _080212B8 @ =gUnk_03005400
	movs r0, #5
	strb r0, [r1, #0x14]
	ldr r5, _080212BC @ =0x040000D4
	ldr r0, _080212C0 @ =0x08078988
	str r0, [r5]
	ldr r4, _080212C4 @ =gUnk_0818B8E0
	ldr r2, _080212C8 @ =gUnk_03004C20
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
	adds r3, r3, r0
	subs r3, #0x60
	ldrb r0, [r3, #2]
	lsls r0, r0, #5
	ldr r1, _080212CC @ =0x05000200
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _080212D0 @ =0x80000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _080212AA
	b _0802190C
_080212AA:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	bne _080212AA
	b _0802190C
	.align 2, 0
_080212B4: .4byte gUnk_03002920
_080212B8: .4byte gUnk_03005400
_080212BC: .4byte 0x040000D4
_080212C0: .4byte 0x08078988
_080212C4: .4byte gUnk_0818B8E0
_080212C8: .4byte gUnk_03004C20
_080212CC: .4byte 0x05000200
_080212D0: .4byte 0x80000010
_080212D4:
	ldr r2, _0802132C @ =gUnk_03000830
	ldr r0, _08021330 @ =gUnk_0300363C
	ldrb r1, [r0]
	movs r0, #0x12
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #9
	bne _080212EA
	b _0802190C
_080212EA:
	ldr r4, _08021334 @ =gUnk_03002920
	ldrh r0, [r4]
	lsls r5, r7, #3
	subs r1, r5, r7
	lsls r1, r1, #2
	adds r6, r1, r4
	ldrh r1, [r6]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r4, #2]
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov sb, r5
	cmp r8, sl
	bls _08021338
	movs r0, #0xff
	strb r0, [r6, #8]
	mov r2, sl
	lsls r0, r2, #8
	subs r0, r0, r2
	mov r1, r8
	bl __divsi3
	b _08021348
	.align 2, 0
_0802132C: .4byte gUnk_03000830
_08021330: .4byte gUnk_0300363C
_08021334: .4byte gUnk_03002920
_08021338:
	mov r3, r8
	lsls r0, r3, #8
	subs r0, r0, r3
	mov r1, sl
	bl __divsi3
	strb r0, [r6, #8]
	movs r0, #0xff
_08021348:
	strb r0, [r6, #9]
	ldr r0, _0802136C @ =gUnk_03002920
	mov r4, sb
	subs r1, r4, r7
	lsls r1, r1, #2
	adds r2, r1, r0
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bls _08021370
	ldrb r0, [r2, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r2, #0xc]
	b _08021378
	.align 2, 0
_0802136C: .4byte gUnk_03002920
_08021370:
	ldrb r1, [r2, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0xc]
_08021378:
	mov r1, sb
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r2, _08021394 @ =gUnk_03002920
	adds r3, r0, r2
	ldrh r0, [r3, #2]
	ldrh r4, [r2, #2]
	cmp r0, r4
	bls _08021398
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #2
	orrs r1, r0
	b _080213A0
	.align 2, 0
_08021394: .4byte gUnk_03002920
_08021398:
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	ands r1, r0
_080213A0:
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	movs r0, #0x70
	bl m4aSongNumStart
	ldr r0, _080213C0 @ =gUnk_03002920
	mov r2, sb
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r0, #0xe
	strb r0, [r1, #0xf]
	b _0802190C
	.align 2, 0
_080213C0: .4byte gUnk_03002920
_080213C4:
	lsls r2, r7, #3
	subs r0, r2, r7
	lsls r0, r0, #2
	ldr r3, _080214B8 @ =gUnk_03002920
	adds r6, r0, r3
	ldrh r4, [r6]
	mov r8, r4
	ldrh r0, [r6, #2]
	mov sl, r0
	mov r1, r8
	subs r1, #0x14
	ldr r4, _080214BC @ =gUnk_03002920+0x24C
	ldrh r3, [r4]
	adds r0, r3, #0
	adds r0, #0x14
	mov sb, r2
	cmp r1, r0
	blt _080213EA
	b _080214E8
_080213EA:
	adds r1, #0x28
	subs r0, #0x28
	cmp r1, r0
	ble _080214E8
	mov r1, sl
	subs r1, #0x34
	ldr r0, _080214C0 @ =gUnk_03002920+0x24E
	ldrh r2, [r0]
	adds r0, r2, #0
	subs r0, #0xa
	cmp r1, r0
	bge _080214E8
	adds r1, #0x28
	subs r0, #0x2c
	cmp r1, r0
	ble _080214E8
	ldr r1, _080214C4 @ =gUnk_03005400
	movs r4, #0
	movs r0, #1
	strb r0, [r1, #0xa]
	ldr r1, _080214C8 @ =gUnk_03000830
	ldr r0, _080214CC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #1]
	strb r4, [r6, #8]
	strb r4, [r6, #9]
	movs r5, #0x1c
	strb r5, [r6, #0xf]
	strb r4, [r6, #0x10]
	movs r0, #0x15
	movs r1, #4
	bl sub_08025B78
	ldr r2, _080214B8 @ =gUnk_03002920
	ldr r3, _080214D0 @ =0x0000025B
	adds r1, r2, r3
	movs r0, #8
	strb r0, [r1]
	ldr r1, _080214D4 @ =0x0000033B
	adds r0, r2, r1
	strb r5, [r0]
	adds r3, #0xc4
	adds r0, r2, r3
	strb r5, [r0]
	adds r1, #1
	adds r0, r2, r1
	strb r4, [r0]
	adds r3, #1
	adds r0, r2, r3
	strb r4, [r0]
	ldr r4, _080214D8 @ =0x000001EB
	adds r1, r2, r4
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, _080214BC @ =gUnk_03002920+0x24C
	ldrh r1, [r0]
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	ldr r4, _080214C0 @ =gUnk_03002920+0x24E
	ldrh r0, [r4]
	adds r3, #2
	adds r1, r2, r3
	strh r0, [r1]
	movs r4, #0x85
	lsls r4, r4, #2
	adds r0, r2, r4
	ldrh r0, [r0]
	adds r3, #0x38
	adds r1, r2, r3
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x13
	bl sub_0801E664
	ldr r4, _080214B8 @ =gUnk_03002920
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _080214DC @ =0x00000232
	adds r1, r4, r2
	ldrh r1, [r1]
	movs r2, #2
	movs r3, #0x14
	bl sub_0801E664
	ldr r3, _080214E0 @ =0x0000023F
	adds r0, r4, r3
	strb r5, [r0]
	ldr r1, _080214E4 @ =0x00000223
	adds r0, r4, r1
	strb r5, [r0]
	movs r0, #0x71
	bl m4aSongNumStart
	b _0802190C
	.align 2, 0
_080214B8: .4byte gUnk_03002920
_080214BC: .4byte gUnk_03002920+0x24C
_080214C0: .4byte gUnk_03002920+0x24E
_080214C4: .4byte gUnk_03005400
_080214C8: .4byte gUnk_03000830
_080214CC: .4byte gUnk_0300363C
_080214D0: .4byte 0x0000025B
_080214D4: .4byte 0x0000033B
_080214D8: .4byte 0x000001EB
_080214DC: .4byte 0x00000232
_080214E0: .4byte 0x0000023F
_080214E4: .4byte 0x00000223
_080214E8:
	ldr r0, _08021514 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802156C
	mov r2, sb
	subs r0, r2, r7
	lsls r0, r0, #2
	ldr r3, _08021518 @ =gUnk_03002920
	adds r2, r0, r3
	ldrb r0, [r2, #0xc]
	lsrs r0, r0, #4
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802151C
	ldrb r1, [r2, #9]
	lsrs r1, r1, #6
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	b _08021524
	.align 2, 0
_08021514: .4byte gUnk_03004C20
_08021518: .4byte gUnk_03002920
_0802151C:
	ldrb r0, [r2, #9]
	lsrs r0, r0, #6
	ldrh r4, [r2, #2]
	adds r0, r0, r4
_08021524:
	strh r0, [r2, #2]
	mov r1, sb
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r3, _08021548 @ =gUnk_03002920
	adds r2, r0, r3
	ldrb r0, [r2, #0xc]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802154C
	ldrb r1, [r2, #8]
	lsrs r1, r1, #6
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	b _0802156C
	.align 2, 0
_08021548: .4byte gUnk_03002920
_0802154C:
	ldrb r0, [r2, #8]
	lsrs r0, r0, #6
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	b _0802156C
_08021558:
	lsls r1, r7, #3
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r2, _0802158C @ =gUnk_03002920
	adds r0, r0, r2
	ldrh r3, [r0]
	mov r8, r3
	ldrh r0, [r0, #2]
	mov sl, r0
	mov sb, r1
_0802156C:
	mov r4, sb
	subs r0, r4, r7
	lsls r0, r0, #2
	ldr r1, _0802158C @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r0, [r4, #0xc]
	lsrs r0, r0, #4
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08021590
	ldrb r1, [r4, #9]
	lsrs r1, r1, #6
	ldrh r0, [r4, #2]
	subs r0, r0, r1
	b _08021598
	.align 2, 0
_0802158C: .4byte gUnk_03002920
_08021590:
	ldrb r0, [r4, #9]
	lsrs r0, r0, #6
	ldrh r2, [r4, #2]
	adds r0, r0, r2
_08021598:
	strh r0, [r4, #2]
	ldr r1, _080215BC @ =gUnk_03002920
	mov r3, sb
	subs r0, r3, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #0xc]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080215C0
	ldrb r1, [r2, #8]
	lsrs r1, r1, #6
	ldrh r0, [r2]
	subs r0, r0, r1
	b _080215C8
	.align 2, 0
_080215BC: .4byte gUnk_03002920
_080215C0:
	ldrb r0, [r2, #8]
	lsrs r0, r0, #6
	ldrh r4, [r2]
	adds r0, r0, r4
_080215C8:
	strh r0, [r2]
_080215CA:
	ldr r4, _08021738 @ =gUnk_03004790
	ldr r1, _0802173C @ =gUnk_03002920
	mov r2, sb
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r6, r0, r1
	ldrh r3, [r6]
	adds r1, r3, #0
	subs r1, #0x14
	asrs r1, r1, #3
	ldrh r2, [r6, #2]
	subs r2, #0x1a
	asrs r2, r2, #3
	ldr r0, _08021740 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r0, [r0]
	muls r2, r0, r2
	ldr r0, [r4, #0x14]
	adds r1, r1, r2
	adds r1, r0, r1
	ldrb r5, [r1]
	adds r3, #0x14
	asrs r3, r3, #3
	adds r3, r3, r2
	adds r0, r0, r3
	adds r1, r5, #0
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08021606
	adds r1, r0, #0
_08021606:
	ldr r0, _08021744 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	cmp r0, r1
	bhi _08021652
	mov r3, r8
	strh r3, [r6]
	ldrb r2, [r6, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0xc]
	ldr r1, _08021748 @ =gUnk_03005400
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	beq _08021632
	subs r0, #1
	strb r0, [r1, #0x14]
_08021632:
	ldrb r0, [r6, #9]
	lsrs r0, r0, #6
	cmp r0, #0
	bne _0802164C
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	ands r0, r1
	adds r0, #1
	lsls r0, r0, #6
	strb r0, [r6, #9]
_0802164C:
	movs r0, #0x70
	bl m4aSongNumStart
_08021652:
	ldr r5, _08021738 @ =gUnk_03004790
	ldr r1, _0802173C @ =gUnk_03002920
	mov r4, sb
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r6, r0, r1
	ldrh r3, [r6]
	lsrs r3, r3, #3
	ldrh r2, [r6, #2]
	adds r1, r2, #0
	subs r1, #0xc
	asrs r1, r1, #3
	ldr r0, _08021740 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r1, [r5, #0x14]
	adds r0, r3, r0
	adds r0, r1, r0
	ldrb r5, [r0]
	subs r2, #0x34
	asrs r2, r2, #3
	adds r0, r2, #0
	muls r0, r4, r0
	adds r3, r3, r0
	adds r1, r1, r3
	adds r2, r5, #0
	ldrb r1, [r1]
	cmp r5, r1
	bhs _08021692
	adds r2, r1, #0
_08021692:
	ldr r0, _08021744 @ =gUnk_03004654
	ldr r0, [r0]
	ldrb r0, [r0, #0x1b]
	cmp r0, r2
	bhi _080216DE
	mov r0, sl
	strh r0, [r6, #2]
	ldrb r2, [r6, #0xc]
	lsrs r1, r2, #4
	movs r0, #2
	eors r1, r0
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0xc]
	ldr r1, _08021748 @ =gUnk_03005400
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	beq _080216BE
	subs r0, #1
	strb r0, [r1, #0x14]
_080216BE:
	ldrb r0, [r6, #8]
	lsrs r0, r0, #6
	cmp r0, #0
	bne _080216D8
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	ands r0, r1
	adds r0, #1
	lsls r0, r0, #6
	strb r0, [r6, #8]
_080216D8:
	movs r0, #0x70
	bl m4aSongNumStart
_080216DE:
	ldr r0, _08021748 @ =gUnk_03005400
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq _080216E8
	b _0802190C
_080216E8:
	ldr r4, _0802173C @ =gUnk_03002920
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	mov r2, sb
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r5, r1, r4
	ldrh r1, [r5]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r3, #0xfd
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0]
	ldrh r1, [r5, #2]
	adds r1, #0x40
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r8, sl
	bls _0802174C
	movs r0, #0xff
	strb r0, [r5, #8]
	mov r4, sl
	lsls r0, r4, #8
	subs r0, r0, r4
	mov r1, r8
	bl __divsi3
	b _0802175E
	.align 2, 0
_08021738: .4byte gUnk_03004790
_0802173C: .4byte gUnk_03002920
_08021740: .4byte gUnk_03003430
_08021744: .4byte gUnk_03004654
_08021748: .4byte gUnk_03005400
_0802174C:
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #6
	mov r1, sl
	bl __divsi3
	strb r0, [r5, #8]
	movs r0, #0xff
_0802175E:
	strb r0, [r5, #9]
	ldr r1, _08021788 @ =gUnk_03002920
	mov r2, sb
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r3, r0, r1
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r2, r1, r4
	ldrh r0, [r3]
	ldrh r2, [r2]
	cmp r0, r2
	bls _0802178C
	ldrb r0, [r3, #0xc]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r3, #0xc]
	b _08021794
	.align 2, 0
_08021788: .4byte gUnk_03002920
_0802178C:
	ldrb r1, [r3, #0xc]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r3, #0xc]
_08021794:
	mov r1, sb
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r2, _080217B8 @ =gUnk_03002920
	adds r3, r0, r2
	movs r4, #0xfd
	lsls r4, r4, #1
	adds r1, r2, r4
	ldrh r0, [r3, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bls _080217BC
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #2
	orrs r1, r0
	b _080217C4
	.align 2, 0
_080217B8: .4byte gUnk_03002920
_080217BC:
	ldrb r2, [r3, #0xc]
	lsrs r1, r2, #4
	movs r0, #1
	ands r1, r0
_080217C4:
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xc]
	mov r1, sb
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r2, _080217F0 @ =gUnk_03002920
	adds r0, r0, r2
	movs r4, #0
	movs r1, #0xf
	strb r1, [r0, #0xf]
	ldr r0, _080217F4 @ =gUnk_030034DC
	strh r4, [r0]
	movs r0, #0x12
	movs r1, #0xa
	bl sub_08025B78
	ldr r0, _080217F8 @ =0x03000004
	str r4, [r0]
	b _0802190C
	.align 2, 0
_080217F0: .4byte gUnk_03002920
_080217F4: .4byte gUnk_030034DC
_080217F8: .4byte 0x03000004
_080217FC:
	mov r1, sp
	lsls r5, r7, #3
	subs r0, r5, r7
	lsls r0, r0, #2
	ldr r3, _08021878 @ =gUnk_03002920
	adds r6, r0, r3
	ldrh r0, [r6]
	strh r0, [r1]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r3, r0
	ldrh r0, [r4]
	strh r0, [r1, #4]
	ldr r2, _0802187C @ =gUnk_03002920+0x1FA
	ldrh r0, [r2]
	subs r0, #0x40
	strh r0, [r1, #6]
	mov r2, sp
	movs r0, #8
	strb r0, [r1, #9]
	strb r0, [r2, #8]
	add r0, sp, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_0800BEF0
	ldr r0, [sp, #0xc]
	strh r0, [r6]
	lsrs r0, r0, #0x10
	strh r0, [r6, #2]
	ldrh r3, [r4]
	adds r1, r3, #0
	subs r1, #0xc
	ldrh r2, [r6]
	adds r0, r2, #0
	adds r0, #0x14
	mov sb, r5
	cmp r1, r0
	blt _08021852
	b _080215CA
_08021852:
	adds r1, #0x18
	subs r0, #0x28
	cmp r1, r0
	bgt _0802185C
	b _080215CA
_0802185C:
	ldr r3, _0802187C @ =gUnk_03002920+0x1FA
	ldrh r1, [r3]
	subs r1, #0x40
	ldrh r0, [r6, #2]
	subs r0, #0xc
	cmp r1, r0
	bgt _0802186C
	b _080215CA
_0802186C:
	movs r0, #1
	strb r0, [r6, #0xf]
	movs r0, #0x20
	strb r0, [r6, #8]
	b _0802190C
	.align 2, 0
_08021878: .4byte gUnk_03002920
_0802187C: .4byte gUnk_03002920+0x1FA
_08021880:
	ldr r2, _080218C4 @ =gUnk_03000830
	ldr r0, _080218C8 @ =gUnk_0300363C
	ldrb r1, [r0]
	movs r0, #0x12
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802190C
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _080218CC @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r0, [r4, #8]
	subs r0, #1
	movs r5, #0
	strb r0, [r4, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0802190C
	movs r0, #0x12
	movs r1, #0xb
	bl sub_08025B78
	strb r5, [r4, #8]
	strb r5, [r4, #9]
	movs r0, #0x1a
	strb r0, [r4, #0xf]
	strb r5, [r4, #0x10]
	b _0802190C
	.align 2, 0
_080218C4: .4byte gUnk_03000830
_080218C8: .4byte gUnk_0300363C
_080218CC: .4byte gUnk_03002920
_080218D0:
	ldr r5, _0802191C @ =gUnk_03000830
	ldr r4, _08021920 @ =gUnk_0300363C
	ldrb r0, [r4]
	movs r1, #0x12
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _0802190C
	ldr r1, _08021924 @ =gUnk_03005400
	movs r0, #2
	strb r0, [r1, #0xa]
	movs r0, #0x12
	movs r1, #8
	bl sub_08025B78
	ldrb r0, [r4]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0xff
	strb r1, [r0, #1]
	ldr r1, _08021928 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x1c
	strb r1, [r0, #0xf]
_0802190C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802191C: .4byte gUnk_03000830
_08021920: .4byte gUnk_0300363C
_08021924: .4byte gUnk_03005400
_08021928: .4byte gUnk_03002920

	thumb_func_start sub_0802192C
sub_0802192C: @ 0x0802192C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08021960 @ =gUnk_03002920
	lsls r0, r7, #3
	mov ip, r0
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08021950
	subs r0, #1
	strb r0, [r4, #8]
_08021950:
	ldrb r0, [r4, #0xf]
	cmp r0, #0xe
	beq _080219A4
	cmp r0, #0xe
	bgt _08021964
	cmp r0, #0
	beq _080219C0
	b _08021AC6
	.align 2, 0
_08021960: .4byte gUnk_03002920
_08021964:
	cmp r0, #0x19
	beq _08021970
	cmp r0, #0x1a
	bne _0802196E
	b _08021AA8
_0802196E:
	b _08021AC6
_08021970:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08021978
	b _08021AC6
_08021978:
	movs r0, #0x68
	strh r0, [r4, #2]
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0xc]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0xc]
	movs r0, #0x40
	strb r0, [r4, #8]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r0, r7, #0
	movs r1, #0xf
	bl sub_08025B78
	movs r0, #0x71
	bl m4aSongNumStart
	b _08021AC6
_080219A4:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _080219AC
	b _08021AC6
_080219AC:
	movs r1, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	strh r0, [r4, #2]
	movs r0, #0x20
	strb r0, [r4, #8]
	movs r0, #0x1a
	strb r0, [r4, #0xf]
	strb r1, [r4, #0x10]
	b _08021AC6
_080219C0:
	ldrh r0, [r4]
	lsrs r0, r0, #3
	subs r0, #3
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08021A40 @ =gUnk_03004C20
	ldr r1, [r0]
	movs r0, #4
	ands r1, r0
	lsrs r1, r1, #2
	ldr r3, _08021A44 @ =0x03003790
	mov r0, r8
	adds r5, r0, r3
	ldr r2, _08021A48 @ =gUnk_03004790
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x3c
	ldr r1, [r2, #0x14]
	adds r1, r1, r0
	movs r6, #0
	mov sl, r3
	ldr r2, _08021A4C @ =gUnk_03003430
	mov sb, r2
	ldr r4, _08021A50 @ =0x040000D4
	ldr r3, _08021A54 @ =0x80000003
	mov r0, sb
	adds r0, #0x48
	ldrh r2, [r0]
_08021A04:
	str r1, [r4]
	str r5, [r4, #4]
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	adds r1, r1, r2
	adds r5, #0x40
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x1d
	bls _08021A04
	mov r1, ip
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r2, _08021A58 @ =gUnk_03002920
	adds r1, r0, r2
	ldrb r4, [r1, #8]
	cmp r4, #0
	bne _08021AC6
	movs r0, #0x1c
	strb r0, [r1, #0xf]
	strb r4, [r1, #0x10]
	cmp r7, #0x18
	bne _08021A5C
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r2, r1
	strb r7, [r0, #0x11]
	b _08021A68
	.align 2, 0
_08021A40: .4byte gUnk_03004C20
_08021A44: .4byte 0x03003790
_08021A48: .4byte gUnk_03004790
_08021A4C: .4byte gUnk_03003430
_08021A50: .4byte 0x040000D4
_08021A54: .4byte 0x80000003
_08021A58: .4byte gUnk_03002920
_08021A5C:
	cmp r7, #0x18
	blt _08021A68
	cmp r7, #0x1b
	bgt _08021A68
	movs r0, #0x19
	strb r0, [r1, #0x11]
_08021A68:
	mov r5, r8
	add r5, sl
	mov r0, sb
	adds r0, #0x48
	ldrh r1, [r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	adds r0, #0x3c
	ldr r2, _08021A9C @ =gUnk_03004790
	ldr r1, [r2, #0x14]
	adds r1, r1, r0
	movs r6, #0
	ldr r2, _08021AA0 @ =0x040000D4
	ldr r3, _08021AA4 @ =0x80000003
_08021A84:
	str r1, [r2]
	str r5, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r5, #0x40
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x1d
	bls _08021A84
	b _08021AC6
	.align 2, 0
_08021A9C: .4byte gUnk_03004790
_08021AA0: .4byte 0x040000D4
_08021AA4: .4byte 0x80000003
_08021AA8:
	ldrb r5, [r4, #8]
	cmp r5, #0
	bne _08021AC6
	movs r0, #0x80
	strb r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0x10]
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_08025B78
	strb r5, [r4, #0xf]
	movs r0, #0x72
	bl m4aSongNumStart
_08021AC6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08021AD4
sub_08021AD4: @ 0x08021AD4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r1, #0xde
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r3, r0, #0x18
	ldr r1, _08021B08 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0xf]
	adds r2, r1, #0
	cmp r0, #0x1a
	bls _08021AFE
	b _08021D9C
_08021AFE:
	lsls r0, r0, #2
	ldr r1, _08021B0C @ =_08021B10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021B08: .4byte gUnk_03002920
_08021B0C: .4byte _08021B10
_08021B10: @ jump table
	.4byte _08021BE2 @ case 0
	.4byte _08021D9C @ case 1
	.4byte _08021D9C @ case 2
	.4byte _08021D9C @ case 3
	.4byte _08021D9C @ case 4
	.4byte _08021D9C @ case 5
	.4byte _08021D9C @ case 6
	.4byte _08021D9C @ case 7
	.4byte _08021D9C @ case 8
	.4byte _08021D9C @ case 9
	.4byte _08021D9C @ case 10
	.4byte _08021D9C @ case 11
	.4byte _08021D9C @ case 12
	.4byte _08021D9C @ case 13
	.4byte _08021D70 @ case 14
	.4byte _08021D9C @ case 15
	.4byte _08021D9C @ case 16
	.4byte _08021D9C @ case 17
	.4byte _08021D9C @ case 18
	.4byte _08021D9C @ case 19
	.4byte _08021D9C @ case 20
	.4byte _08021D9C @ case 21
	.4byte _08021D9C @ case 22
	.4byte _08021D9C @ case 23
	.4byte _08021CBC @ case 24
	.4byte _08021B7C @ case 25
	.4byte _08021D8C @ case 26
_08021B7C:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r6, r0, r2
	ldrb r0, [r6, #8]
	adds r1, r0, #0
	cmp r1, #0
	bne _08021B9E
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	strb r0, [r6, #8]
	b _08021D9C
_08021B9E:
	cmp r1, #1
	bne _08021BDC
	movs r0, #0
	strb r1, [r6, #0x10]
	strb r0, [r6, #0xf]
	movs r0, #0xf0
	strb r0, [r6, #8]
	bl thunk_GetRandomValue
	adds r4, r0, #0
	bl thunk_GetRandomValue
	adds r7, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	lsls r2, r7, #0x18
	lsrs r3, r2, #0x18
	movs r0, #0x1f
	ands r3, r0
	adds r1, r1, r3
	strb r1, [r6, #9]
	b _08021D9C
_08021BDC:
	subs r0, #1
	strb r0, [r6, #8]
	b _08021D9C
_08021BE2:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r5, r0, r2
	ldr r6, _08021CA4 @ =gUnk_080E2B64
	ldr r2, _08021CA8 @ =gUnk_03004C20
	ldrb r0, [r2, #0xc]
	subs r0, #1
	ldr r4, _08021CAC @ =0x00001130
	adds r1, r0, #0
	muls r1, r4, r1
	ldrb r0, [r2, #0xd]
	subs r0, #1
	ldr r3, _08021CB0 @ =0x00008980
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	adds r1, r1, r6
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrb r3, [r5, #8]
	mov sb, r3
	ldr r0, _08021CB4 @ =gSineTable
	mov r8, r0
	ldrb r0, [r5, #9]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r0, [r2, #0xc]
	subs r0, #1
	adds r1, r0, #0
	muls r1, r4, r1
	ldrb r0, [r2, #0xd]
	subs r0, #1
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	adds r1, r1, r6
	movs r0, #0x85
	lsls r0, r0, #1
	adds r0, r0, r1
	mov sb, r0
	ldrb r1, [r5, #8]
	ldrb r0, [r5, #9]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, _08021CB8 @ =0x0000FFE0
	adds r0, r0, r1
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r5, #2]
	adds r1, r7, #0
	subs r1, #0xd
	movs r0, #0x2c
	muls r1, r0, r1
	ldrb r0, [r2, #0xc]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	subs r0, #1
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r1, r1, r6
	ldrb r1, [r1]
	ldrb r0, [r5, #8]
	subs r0, r0, r1
	strb r0, [r5, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08021C9A
	b _08021D9C
_08021C9A:
	movs r0, #1
	strb r0, [r5, #8]
	movs r0, #0x19
	strb r0, [r5, #0xf]
	b _08021D9C
	.align 2, 0
_08021CA4: .4byte gUnk_080E2B64
_08021CA8: .4byte gUnk_03004C20
_08021CAC: .4byte 0x00001130
_08021CB0: .4byte 0x00008980
_08021CB4: .4byte gSineTable
_08021CB8: .4byte 0x0000FFE0
_08021CBC:
	lsls r4, r7, #3
	cmp r3, #5
	bhi _08021D38
	lsls r0, r3, #2
	ldr r1, _08021CCC @ =_08021CD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021CCC: .4byte _08021CD0
_08021CD0: @ jump table
	.4byte _08021CE8 @ case 0
	.4byte _08021CF4 @ case 1
	.4byte _08021D02 @ case 2
	.4byte _08021D0E @ case 3
	.4byte _08021D1C @ case 4
	.4byte _08021D28 @ case 5
_08021CE8:
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r2, #0x44
	b _08021D34
_08021CF4:
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r2, #0x88
	lsls r2, r2, #1
	b _08021D34
_08021D02:
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r2, #0xcc
	b _08021D34
_08021D0E:
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r2, #0xaa
	lsls r2, r2, #1
	b _08021D34
_08021D1C:
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r2, #0x88
	b _08021D34
_08021D28:
	lsls r0, r7, #3
	subs r1, r0, r7
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r2, #0xcc
	lsls r2, r2, #1
_08021D34:
	strh r2, [r1]
	adds r4, r0, #0
_08021D38:
	bl thunk_GetRandomValue
	ldr r1, _08021D6C @ =gUnk_03002920
	subs r4, r4, r7
	lsls r4, r4, #2
	adds r4, r4, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r3, #0x96
	lsls r3, r3, #1
	adds r1, r1, r3
	strh r1, [r4, #2]
	movs r0, #1
	strb r0, [r4, #0x10]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	b _08021D9C
	.align 2, 0
_08021D6C: .4byte gUnk_03002920
_08021D70:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r0, [r1, #2]
	subs r0, #4
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x5f
	bhi _08021D9C
	movs r0, #0x18
	strb r0, [r1, #0xf]
	b _08021D9C
_08021D8C:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
_08021D9C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021DAC
sub_08021DAC: @ 0x08021DAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r1, _08021DF4 @ =gUnk_03002920
	lsls r3, r0, #3
	subs r0, r3, r0
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #0xf]
	adds r4, r1, #0
	cmp r0, #3
	beq _08021DDE
	ldrb r0, [r2, #0xd]
	movs r1, #0x3d
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x1c
	orrs r1, r0
	strb r1, [r2, #0xd]
_08021DDE:
	ldrb r0, [r2, #0xf]
	str r3, [sp, #8]
	cmp r0, #0x19
	bls _08021DEA
	bl _08022C38
_08021DEA:
	lsls r0, r0, #2
	ldr r1, _08021DF8 @ =_08021DFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021DF4: .4byte gUnk_03002920
_08021DF8: .4byte _08021DFC
_08021DFC: @ jump table
	.4byte _08021FA0 @ case 0
	.4byte _080221E0 @ case 1
	.4byte _08022C38 @ case 2
	.4byte _0802291C @ case 3
	.4byte _0802214E @ case 4
	.4byte _08022C38 @ case 5
	.4byte _08022C38 @ case 6
	.4byte _08022C38 @ case 7
	.4byte _08022C38 @ case 8
	.4byte _08022C38 @ case 9
	.4byte _08022C38 @ case 10
	.4byte _08022C38 @ case 11
	.4byte _08022C38 @ case 12
	.4byte _08022C38 @ case 13
	.4byte _08022784 @ case 14
	.4byte _080227FC @ case 15
	.4byte _08022828 @ case 16
	.4byte _08022C38 @ case 17
	.4byte _08022C38 @ case 18
	.4byte _080220A0 @ case 19
	.4byte _080220A0 @ case 20
	.4byte _08022C38 @ case 21
	.4byte _08022C38 @ case 22
	.4byte _08022C38 @ case 23
	.4byte _08022C38 @ case 24
	.4byte _08021E64 @ case 25
_08021E64:
	ldr r0, _08021F58 @ =gUnk_03002920
	ldr r1, [sp]
	lsls r1, r1, #3
	mov sl, r1
	ldr r2, [sp]
	subs r3, r1, r2
	lsls r3, r3, #2
	adds r3, r3, r0
	movs r0, #1
	strb r0, [r3, #0x10]
	ldr r4, _08021F5C @ =gUnk_080E2B64
	mov sb, r4
	adds r1, r2, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r4, _08021F60 @ =gUnk_03004C20
	ldrb r0, [r4, #0xc]
	subs r0, #1
	ldr r7, _08021F64 @ =0x00001130
	muls r0, r7, r0
	adds r0, r2, r0
	ldrb r1, [r4, #0xd]
	subs r1, #1
	ldr r5, _08021F68 @ =0x00008980
	muls r1, r5, r1
	adds r0, r0, r1
	add r0, sb
	ldrh r0, [r0]
	movs r6, #0
	mov r8, r6
	strh r0, [r3]
	ldrb r0, [r4, #0xc]
	subs r0, #1
	muls r0, r7, r0
	adds r2, r2, r0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	muls r0, r5, r0
	adds r2, r2, r0
	add r2, sb
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	ldr r1, _08021F6C @ =gUnk_03005400
	ldr r0, _08021F70 @ =gUnk_030034AC
	ldrh r0, [r0]
	rsbs r0, r0, #0
	adds r0, #0x10
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	ldr r0, _08021F74 @ =gUnk_03003590
	adds r0, #0x24
	mov r1, r8
	strb r1, [r0]
	strb r1, [r3, #0xf]
	ldr r0, [sp]
	movs r1, #6
	bl sub_08025B78
	ldr r3, _08021F78 @ =0x040000D4
	ldr r0, _08021F7C @ =0x0818B7DC
	ldr r0, [r0]
	str r0, [r3]
	ldr r2, _08021F80 @ =gUnk_0818B8E0
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
	add r0, sl
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r2, _08021F84 @ =0x05000200
	adds r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _08021F88 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov r4, sl
	str r4, [sp, #8]
	cmp r0, #0
	bge _08021F24
_08021F1C:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08021F1C
_08021F24:
	ldr r1, _08021F58 @ =gUnk_03002920
	ldr r5, _08021F8C @ =0x00000453
	adds r0, r1, r5
	movs r2, #0x19
	strb r2, [r0]
	ldr r6, _08021F90 @ =0x00000437
	adds r0, r1, r6
	strb r2, [r0]
	ldr r3, _08021F94 @ =0x0000041B
	adds r0, r1, r3
	strb r2, [r0]
	ldr r4, _08021F98 @ =0x000003FF
	adds r0, r1, r4
	strb r2, [r0]
	subs r5, #0x70
	adds r0, r1, r5
	strb r2, [r0]
	subs r6, #0x70
	adds r0, r1, r6
	strb r2, [r0]
	ldr r0, _08021F9C @ =0x0000046F
	adds r1, r1, r0
	movs r0, #3
	strb r0, [r1]
	bl _08022C38
	.align 2, 0
_08021F58: .4byte gUnk_03002920
_08021F5C: .4byte gUnk_080E2B64
_08021F60: .4byte gUnk_03004C20
_08021F64: .4byte 0x00001130
_08021F68: .4byte 0x00008980
_08021F6C: .4byte gUnk_03005400
_08021F70: .4byte gUnk_030034AC
_08021F74: .4byte gUnk_03003590
_08021F78: .4byte 0x040000D4
_08021F7C: .4byte 0x0818B7DC
_08021F80: .4byte gUnk_0818B8E0
_08021F84: .4byte 0x05000200
_08021F88: .4byte 0x80000010
_08021F8C: .4byte 0x00000453
_08021F90: .4byte 0x00000437
_08021F94: .4byte 0x0000041B
_08021F98: .4byte 0x000003FF
_08021F9C: .4byte 0x0000046F
_08021FA0:
	ldr r7, _0802202C @ =gUnk_03003590
	ldrh r2, [r7, #0x20]
	movs r1, #0x20
	ldrsh r6, [r7, r1]
	cmp r6, #0
	bne _08022060
	movs r0, #0x83
	bl m4aSongNumStart
	ldr r4, _08022030 @ =gUnk_03002920
	ldr r2, [sp]
	lsls r2, r2, #3
	mov r8, r2
	ldr r3, [sp]
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r2, r0, r4
	movs r5, #0
	mov sb, r5
	movs r0, #1
	strb r0, [r2, #0xf]
	movs r5, #0
	strh r6, [r7, #0x22]
	strh r6, [r7, #0x20]
	ldr r1, _08022034 @ =0x00000453
	adds r0, r4, r1
	movs r1, #0x1a
	strb r1, [r0]
	ldr r3, _08022038 @ =0x00000437
	adds r0, r4, r3
	strb r1, [r0]
	subs r3, #0x1c
	adds r0, r4, r3
	strb r1, [r0]
	subs r3, #0x1c
	adds r0, r4, r3
	strb r1, [r0]
	subs r3, #0x1c
	adds r0, r4, r3
	strb r1, [r0]
	subs r3, #0x1c
	adds r0, r4, r3
	strb r1, [r0]
	ldr r0, [sp]
	movs r1, #3
	str r2, [sp, #0xc]
	bl sub_08025B78
	ldr r0, _0802203C @ =0x0000046F
	adds r1, r4, r0
	movs r0, #0x1c
	strb r0, [r1]
	movs r1, #0x8e
	lsls r1, r1, #3
	adds r0, r4, r1
	strb r5, [r0]
	ldr r3, _08022040 @ =0x00000462
	adds r4, r4, r3
	strh r6, [r4]
	ldr r0, _08022044 @ =gUnk_03005400
	ldrb r0, [r0, #0xb]
	mov r4, r8
	str r4, [sp, #8]
	ldr r2, [sp, #0xc]
	cmp r0, #0
	bne _08022048
	ldrb r0, [r2, #9]
	movs r1, #0x40
	b _0802204C
	.align 2, 0
_0802202C: .4byte gUnk_03003590
_08022030: .4byte gUnk_03002920
_08022034: .4byte 0x00000453
_08022038: .4byte 0x00000437
_0802203C: .4byte 0x0000046F
_08022040: .4byte 0x00000462
_08022044: .4byte gUnk_03005400
_08022048:
	ldrb r0, [r2, #9]
	movs r1, #0x20
_0802204C:
	orrs r0, r1
	strb r0, [r2, #9]
	ldr r1, _0802205C @ =gUnk_03005400
	movs r0, #1
	strb r0, [r1, #0xb]
	bl _08022C38
	.align 2, 0
_0802205C: .4byte gUnk_03005400
_08022060:
	ldr r0, _08022098 @ =gUnk_03005400
	ldrb r0, [r0, #0xb]
	movs r1, #4
	cmp r0, #0
	bne _0802206C
	movs r1, #1
_0802206C:
	adds r0, r2, r1
	strh r0, [r7, #0x20]
	ldrh r0, [r7, #0x22]
	adds r0, r0, r1
	strh r0, [r7, #0x22]
	ldr r0, _0802209C @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #0x1e
	bl __umodsi3
	ldr r5, [sp]
	lsls r5, r5, #3
	str r5, [sp, #8]
	cmp r0, #0
	beq _0802208E
	bl _08022C38
_0802208E:
	movs r0, #0x82
	bl m4aSongNumStart
	bl _08022C38
	.align 2, 0
_08022098: .4byte gUnk_03005400
_0802209C: .4byte gUnk_03004C20
_080220A0:
	movs r3, #0
	ldr r6, [sp]
	lsls r1, r6, #3
	subs r0, r1, r6
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrb r0, [r2, #8]
	str r1, [sp, #8]
	cmp r0, #0
	beq _080220BC
	subs r0, #1
	strb r0, [r2, #8]
	bl _08022C38
_080220BC:
	ldr r1, _08022118 @ =0x0000023F
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _080220C8
	movs r3, #1
_080220C8:
	ldr r2, _0802211C @ =0x0000025B
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _080220D4
	movs r3, #2
_080220D4:
	cmp r3, #0
	beq _080220F0
	ldr r3, _08022120 @ =0x00000293
	adds r1, r4, r3
	ldrb r0, [r1]
	cmp r0, #0x1c
	bne _080220F0
	ldr r5, _08022124 @ =0x000002AF
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _080220F0
	movs r0, #0x19
	strb r0, [r1]
_080220F0:
	ldr r0, _08022128 @ =gUnk_03002920
	ldr r6, [sp, #8]
	ldr r2, [sp]
	subs r1, r6, r2
	lsls r1, r1, #2
	adds r4, r1, r0
	ldrb r0, [r4, #0xf]
	cmp r0, #0x14
	bne _08022130
	movs r0, #0x76
	bl m4aSongNumStart
	movs r0, #4
	strb r0, [r4, #0xf]
	ldr r1, _0802212C @ =gUnk_03005400
	movs r0, #5
	strb r0, [r1, #0xa]
	bl _08022C38
	.align 2, 0
_08022118: .4byte 0x0000023F
_0802211C: .4byte 0x0000025B
_08022120: .4byte 0x00000293
_08022124: .4byte 0x000002AF
_08022128: .4byte gUnk_03002920
_0802212C: .4byte gUnk_03005400
_08022130:
	movs r0, #0x83
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #0xf]
	ldr r0, [sp]
	movs r1, #3
	bl sub_08025B78
	ldrb r1, [r4, #9]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r4, #9]
	bl _08022C38
_0802214E:
	ldr r3, [sp]
	lsls r1, r3, #3
	subs r0, r1, r3
	lsls r0, r0, #2
	adds r4, r0, r4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1e
	movs r0, #2
	ands r0, r5
	str r1, [sp, #8]
	cmp r0, #0
	beq _0802217C
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	ldr r0, _08022178 @ =gUnk_03003590
	adds r0, #0x24
	movs r1, #0x20
	strb r1, [r0]
	b _080221AE
	.align 2, 0
_08022178: .4byte gUnk_03003590
_0802217C:
	ldr r0, _08022194 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _080221A4
	cmp r5, #1
	bne _08022198
	ldrh r0, [r4]
	subs r0, #4
	b _0802219C
	.align 2, 0
_08022194: .4byte gUnk_03004C20
_08022198:
	ldrh r0, [r4]
	adds r0, #4
_0802219C:
	strh r0, [r4]
	ldrh r0, [r4, #2]
	subs r0, #2
	strh r0, [r4, #2]
_080221A4:
	ldr r1, _080221D4 @ =gUnk_03003590
	adds r1, #0x24
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
_080221AE:
	ldr r0, _080221D8 @ =gUnk_03005498
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _080221BA
	bl _08022C38
_080221BA:
	ldr r1, _080221DC @ =gUnk_03002920
	ldr r4, [sp, #8]
	ldr r5, [sp]
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
	bl _08022C38
	.align 2, 0
_080221D4: .4byte gUnk_03003590
_080221D8: .4byte gUnk_03005498
_080221DC: .4byte gUnk_03002920
_080221E0:
	ldr r6, _080222E0 @ =gUnk_03005400
	ldrb r0, [r6, #0xa]
	ldr r1, [sp]
	lsls r1, r1, #3
	str r1, [sp, #8]
	cmp r0, #3
	bne _0802220C
	ldr r2, [sp]
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	movs r5, #0xfd
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrh r0, [r0]
	adds r0, #0x10
	strh r0, [r1, #2]
_0802220C:
	ldr r3, _080222E4 @ =gUnk_03003590
	ldr r2, _080222E8 @ =gSineTable
	ldr r5, _080222EC @ =gUnk_03004C20
	ldr r1, [r5]
	lsls r1, r1, #2
	movs r0, #0xff
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r3, #0x20]
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r3, #0x22]
	ldr r1, _080222F0 @ =gUnk_03000830
	ldr r0, _080222F4 @ =gUnk_0300363C
	ldrb r0, [r0]
	ldr r2, [sp]
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #3
	beq _0802224A
	b _0802245C
_0802224A:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _08022318
	ldr r3, [sp, #8]
	subs r0, r3, r2
	lsls r0, r0, #2
	adds r4, r0, r4
	ldrb r2, [r4, #0xc]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #9]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _0802230C
	ldrb r0, [r4, #9]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #9]
	movs r1, #2
	subs r1, r1, r0
	strb r1, [r6, #0x14]
	ldr r3, _080222F8 @ =0x040000D4
	ldr r1, _080222FC @ =0x0818B7DC
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r2, _08022300 @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r4, [sp, #8]
	adds r0, r4, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r5, _08022304 @ =0x05000200
	adds r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _08022308 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080222D4
_080222CC:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080222CC
_080222D4:
	ldr r0, [sp]
	movs r1, #5
	bl sub_08025B78
	bl _08022C38
	.align 2, 0
_080222E0: .4byte gUnk_03005400
_080222E4: .4byte gUnk_03003590
_080222E8: .4byte gSineTable
_080222EC: .4byte gUnk_03004C20
_080222F0: .4byte gUnk_03000830
_080222F4: .4byte gUnk_0300363C
_080222F8: .4byte 0x040000D4
_080222FC: .4byte 0x0818B7DC
_08022300: .4byte gUnk_0818B8E0
_08022304: .4byte 0x05000200
_08022308: .4byte 0x80000010
_0802230C:
	ldr r0, [sp]
	movs r1, #4
	bl sub_08025B78
	bl _08022C38
_08022318:
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _08022394
	cmp r0, #1
	bgt _0802232A
	cmp r0, #0
	beq _08022332
	bl _08022C38
_0802232A:
	cmp r0, #2
	beq _080223F8
	bl _08022C38
_08022332:
	ldr r3, _08022380 @ =0x040000D4
	ldr r0, _08022384 @ =0x0818B7DC
	ldr r0, [r0, #4]
	str r0, [r3]
	ldr r2, _08022388 @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r6, [sp, #8]
	adds r0, r6, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _0802238C @ =0x05000200
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _08022390 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _08022374
	bl _08022C38
_08022374:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08022374
	bl _08022C38
	.align 2, 0
_08022380: .4byte 0x040000D4
_08022384: .4byte 0x0818B7DC
_08022388: .4byte gUnk_0818B8E0
_0802238C: .4byte 0x05000200
_08022390: .4byte 0x80000010
_08022394:
	ldr r3, _080223E4 @ =0x040000D4
	ldr r0, _080223E8 @ =0x0818B7DC
	ldr r0, [r0, #8]
	str r0, [r3]
	ldr r2, _080223EC @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #8]
	adds r0, r2, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r4, _080223F0 @ =0x05000200
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _080223F4 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _080223D6
	bl _08022C38
_080223D6:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080223D6
	bl _08022C38
	.align 2, 0
_080223E4: .4byte 0x040000D4
_080223E8: .4byte 0x0818B7DC
_080223EC: .4byte gUnk_0818B8E0
_080223F0: .4byte 0x05000200
_080223F4: .4byte 0x80000010
_080223F8:
	ldr r3, _08022448 @ =0x040000D4
	ldr r0, _0802244C @ =0x0818B7DC
	ldr r0, [r0]
	str r0, [r3]
	ldr r2, _08022450 @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r5, [sp, #8]
	adds r0, r5, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r6, _08022454 @ =0x05000200
	adds r0, r0, r6
	str r0, [r3, #4]
	ldr r0, _08022458 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _0802243A
	bl _08022C38
_0802243A:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802243A
	bl _08022C38
	.align 2, 0
_08022448: .4byte 0x040000D4
_0802244C: .4byte 0x0818B7DC
_08022450: .4byte gUnk_0818B8E0
_08022454: .4byte 0x05000200
_08022458: .4byte 0x80000010
_0802245C:
	cmp r0, #4
	beq _08022462
	b _080225D0
_08022462:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _0802249C
	ldr r0, _08022498 @ =gUnk_03002920
	ldr r1, [sp, #8]
	ldr r3, [sp]
	subs r2, r1, r3
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r3, [r2, #0xc]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldrb r0, [r2, #9]
	subs r0, #0x10
	strb r0, [r2, #9]
	ldr r0, [sp]
	movs r1, #3
	bl sub_08025B78
	b _08022C38
	.align 2, 0
_08022498: .4byte gUnk_03002920
_0802249C:
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _08022510
	cmp r0, #1
	bgt _080224AC
	cmp r0, #0
	beq _080224B2
	b _08022C38
_080224AC:
	cmp r0, #2
	beq _08022570
	b _08022C38
_080224B2:
	ldr r3, _080224FC @ =0x040000D4
	ldr r0, _08022500 @ =0x0818B7DC
	ldr r0, [r0, #8]
	str r0, [r3]
	ldr r2, _08022504 @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r4, [sp, #8]
	adds r0, r4, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r5, _08022508 @ =0x05000200
	adds r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0802250C @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _080224F2
	b _08022C38
_080224F2:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080224F2
	b _08022C38
	.align 2, 0
_080224FC: .4byte 0x040000D4
_08022500: .4byte 0x0818B7DC
_08022504: .4byte gUnk_0818B8E0
_08022508: .4byte 0x05000200
_0802250C: .4byte 0x80000010
_08022510:
	ldr r3, _0802255C @ =0x040000D4
	ldr r0, _08022560 @ =0x0818B7DC
	ldr r0, [r0, #4]
	str r0, [r3]
	ldr r2, _08022564 @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r6, [sp, #8]
	adds r0, r6, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _08022568 @ =0x05000200
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0802256C @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _08022550
	b _08022C38
_08022550:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08022550
	b _08022C38
	.align 2, 0
_0802255C: .4byte 0x040000D4
_08022560: .4byte 0x0818B7DC
_08022564: .4byte gUnk_0818B8E0
_08022568: .4byte 0x05000200
_0802256C: .4byte 0x80000010
_08022570:
	ldr r3, _080225BC @ =0x040000D4
	ldr r0, _080225C0 @ =0x0818B7DC
	ldr r0, [r0, #8]
	str r0, [r3]
	ldr r2, _080225C4 @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #8]
	adds r0, r2, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r4, _080225C8 @ =0x05000200
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _080225CC @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _080225B0
	b _08022C38
_080225B0:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080225B0
	b _08022C38
	.align 2, 0
_080225BC: .4byte 0x040000D4
_080225C0: .4byte 0x0818B7DC
_080225C4: .4byte gUnk_0818B8E0
_080225C8: .4byte 0x05000200
_080225CC: .4byte 0x80000010
_080225D0:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _080226B8
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _08022604
	ldr r2, _080225FC @ =gUnk_03002920
	ldr r5, [sp, #8]
	ldr r6, [sp]
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #8]
	movs r1, #0xe
	strb r1, [r0, #0xf]
	ldr r0, _08022600 @ =0x00000373
	adds r2, r2, r0
	movs r0, #0x19
	strb r0, [r2]
	b _08022618
	.align 2, 0
_080225FC: .4byte gUnk_03002920
_08022600: .4byte 0x00000373
_08022604:
	ldr r1, _08022698 @ =gUnk_03002920
	ldr r2, [sp, #8]
	ldr r3, [sp]
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0xf
	strb r1, [r0, #0xf]
	movs r0, #3
	strb r0, [r6, #0xa]
_08022618:
	movs r0, #0x83
	bl m4aSongNumStop
	ldr r4, _0802269C @ =0x040000D4
	ldr r2, _080226A0 @ =0x0818B7DC
	ldr r1, _08022698 @ =gUnk_03002920
	ldr r5, [sp, #8]
	ldr r6, [sp]
	subs r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #9]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4]
	ldr r3, _080226A4 @ =gUnk_0818B8E0
	ldr r2, _080226A8 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r5, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _080226AC @ =0x05000200
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080226B0 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08022676
_0802266E:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802266E
_08022676:
	ldr r1, _08022698 @ =gUnk_03002920
	ldr r2, [sp, #8]
	ldr r3, [sp]
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #9]
	movs r1, #0xf
	ands r1, r0
	adds r0, r3, #0
	bl sub_08025B78
	ldr r1, _080226B4 @ =gUnk_03003590
	movs r0, #0
	strh r0, [r1, #0x22]
	strh r0, [r1, #0x20]
	b _08022C38
	.align 2, 0
_08022698: .4byte gUnk_03002920
_0802269C: .4byte 0x040000D4
_080226A0: .4byte 0x0818B7DC
_080226A4: .4byte gUnk_0818B8E0
_080226A8: .4byte gUnk_03004C20
_080226AC: .4byte 0x05000200
_080226B0: .4byte 0x80000010
_080226B4: .4byte gUnk_03003590
_080226B8:
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080226C4
	cmp r0, #1
	beq _08022724
	b _08022C38
_080226C4:
	ldr r3, _08022710 @ =0x040000D4
	ldr r0, _08022714 @ =0x0818B7DC
	ldr r0, [r0, #8]
	str r0, [r3]
	ldr r2, _08022718 @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r4, [sp, #8]
	adds r0, r4, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r5, _0802271C @ =0x05000200
	adds r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _08022720 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _08022704
	b _08022C38
_08022704:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08022704
	b _08022C38
	.align 2, 0
_08022710: .4byte 0x040000D4
_08022714: .4byte 0x0818B7DC
_08022718: .4byte gUnk_0818B8E0
_0802271C: .4byte 0x05000200
_08022720: .4byte 0x80000010
_08022724:
	ldr r3, _08022770 @ =0x040000D4
	ldr r0, _08022774 @ =0x0818B7DC
	ldr r0, [r0, #4]
	str r0, [r3]
	ldr r2, _08022778 @ =gUnk_0818B8E0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r5, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r6, [sp, #8]
	adds r0, r6, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r1, _0802277C @ =0x05000200
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _08022780 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _08022764
	b _08022C38
_08022764:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08022764
	b _08022C38
	.align 2, 0
_08022770: .4byte 0x040000D4
_08022774: .4byte 0x0818B7DC
_08022778: .4byte gUnk_0818B8E0
_0802277C: .4byte 0x05000200
_08022780: .4byte 0x80000010
_08022784:
	ldr r1, _080227E0 @ =gUnk_03002920
	ldr r2, [sp]
	lsls r5, r2, #3
	subs r0, r5, r2
	lsls r0, r0, #2
	adds r7, r0, r1
	ldr r4, _080227E4 @ =gUnk_080E2B64
	adds r1, r2, #0
	subs r1, #0xd
	movs r0, #0x2c
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r3, _080227E8 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r1, _080227EC @ =0x00001130
	muls r0, r1, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r1, _080227F0 @ =0x00008980
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r4
	ldr r3, _080227F4 @ =gSineTable
	ldrb r0, [r7, #8]
	adds r1, r0, #1
	strb r1, [r7, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	asrs r1, r1, #4
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _080227F8 @ =gUnk_03005498
	ldrb r0, [r0]
	str r5, [sp, #8]
	cmp r0, #0x10
	beq _080227DA
	b _08022C38
_080227DA:
	movs r0, #0xf
	strb r0, [r7, #0xf]
	b _08022C38
	.align 2, 0
_080227E0: .4byte gUnk_03002920
_080227E4: .4byte gUnk_080E2B64
_080227E8: .4byte gUnk_03004C20
_080227EC: .4byte 0x00001130
_080227F0: .4byte 0x00008980
_080227F4: .4byte gSineTable
_080227F8: .4byte gUnk_03005498
_080227FC:
	ldr r2, _08022824 @ =gUnk_03002920
	ldr r4, [sp]
	lsls r3, r4, #3
	subs r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r0, r2, r5
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #0xfd
	lsls r6, r6, #1
	adds r0, r2, r6
	ldrh r0, [r0]
	adds r0, #0x10
	strh r0, [r1, #2]
	str r3, [sp, #8]
	b _08022C38
	.align 2, 0
_08022824: .4byte gUnk_03002920
_08022828:
	ldr r1, _080228B8 @ =gUnk_03002920
	ldr r0, [sp]
	lsls r2, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3, #0xe]
	ldr r1, _080228BC @ =gUnk_03000830
	ldr r0, _080228C0 @ =gUnk_0300363C
	ldrb r0, [r0]
	ldr r4, [sp]
	subs r0, r4, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	str r2, [sp, #8]
	cmp r0, #0x1a
	beq _080228E0
	movs r4, #0
	movs r0, #0xf0
	strh r0, [r3]
	movs r0, #0xe0
	strh r0, [r3, #2]
	ldr r0, [sp]
	movs r1, #0x1a
	bl sub_08025B78
	ldr r0, _080228C4 @ =gUnk_03003590
	adds r0, #0x24
	strb r4, [r0]
	ldr r4, _080228C8 @ =0x040000D4
	ldr r0, _080228CC @ =0x0818B7DC
	ldr r0, [r0]
	str r0, [r4]
	ldr r3, _080228D0 @ =gUnk_0818B8E0
	ldr r2, _080228D4 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r5, [sp, #8]
	adds r0, r5, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r6, _080228D8 @ =0x05000200
	adds r0, r0, r6
	str r0, [r4, #4]
	ldr r0, _080228DC @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _080228AC
	b _08022C38
_080228AC:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _080228AC
	b _08022C38
	.align 2, 0
_080228B8: .4byte gUnk_03002920
_080228BC: .4byte gUnk_03000830
_080228C0: .4byte gUnk_0300363C
_080228C4: .4byte gUnk_03003590
_080228C8: .4byte 0x040000D4
_080228CC: .4byte 0x0818B7DC
_080228D0: .4byte gUnk_0818B8E0
_080228D4: .4byte gUnk_03004C20
_080228D8: .4byte 0x05000200
_080228DC: .4byte 0x80000010
_080228E0:
	ldr r4, _08022910 @ =gUnk_03003590
	ldr r3, _08022914 @ =gSineTable
	ldr r0, _08022918 @ =gUnk_03004C20
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	movs r5, #0x80
	lsls r5, r5, #1
	adds r2, r5, #0
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	b _08022C38
	.align 2, 0
_08022910: .4byte gUnk_03003590
_08022914: .4byte gSineTable
_08022918: .4byte gUnk_03004C20
_0802291C:
	ldr r0, _08022954 @ =gUnk_03003590
	movs r6, #0x20
	ldrsh r0, [r0, r6]
	bl Abs
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, _08022958 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #6
	bl __umodsi3
	ldr r1, [sp]
	lsls r1, r1, #3
	str r1, [sp, #8]
	cmp r0, #5
	bls _08022948
	b _08022C38
_08022948:
	lsls r0, r0, #2
	ldr r1, _0802295C @ =_08022960
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022954: .4byte gUnk_03003590
_08022958: .4byte gUnk_03004C20
_0802295C: .4byte _08022960
_08022960: @ jump table
	.4byte _08022978 @ case 0
	.4byte _08022978 @ case 1
	.4byte _08022A68 @ case 2
	.4byte _08022A68 @ case 3
	.4byte _08022B5C @ case 4
	.4byte _08022B5C @ case 5
_08022978:
	ldr r7, _08022A3C @ =0x040000D4
	ldr r0, _08022A40 @ =0x0818B7DC
	ldr r0, [r0]
	str r0, [r7]
	ldr r3, _08022A44 @ =gUnk_0818B8E0
	ldr r2, _08022A48 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp]
	lsls r1, r2, #3
	adds r0, r1, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r3, _08022A4C @ =0x05000200
	adds r0, r0, r3
	str r0, [r7, #4]
	ldr r0, _08022A50 @ =0x80000010
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r0, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	str r1, [sp, #8]
	ldr r5, [sp]
	subs r5, #0xd
	cmp r0, #0
	bge _080229CA
	adds r1, r2, #0
_080229C2:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	bne _080229C2
_080229CA:
	ldr r0, [sp]
	movs r1, #0
	bl sub_08025B78
	ldr r0, _08022A54 @ =gUnk_03002920
	ldr r6, [sp, #8]
	ldr r1, [sp]
	subs r4, r6, r1
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r2, _08022A58 @ =gUnk_080E2B64
	mov sb, r2
	movs r0, #0x2c
	adds r2, r5, #0
	muls r2, r0, r2
	ldr r3, _08022A48 @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r7, _08022A5C @ =0x00001130
	adds r1, r0, #0
	muls r1, r7, r1
	adds r1, r2, r1
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r5, _08022A60 @ =0x00008980
	muls r0, r5, r0
	adds r1, r1, r0
	add r1, sb
	ldr r6, _08022A64 @ =gSineTable
	mov r8, r6
	ldrb r0, [r3]
	lsls r0, r0, #1
	add r0, r8
	movs r6, #0
	ldrsh r0, [r0, r6]
	ldr r6, [sp, #4]
	muls r0, r6, r0
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r3, #0xc]
	subs r0, #1
	muls r0, r7, r0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r5, r0
	adds r2, r2, r0
	add r2, sb
	ldrb r0, [r3]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _08022C2E
	.align 2, 0
_08022A3C: .4byte 0x040000D4
_08022A40: .4byte 0x0818B7DC
_08022A44: .4byte gUnk_0818B8E0
_08022A48: .4byte gUnk_03004C20
_08022A4C: .4byte 0x05000200
_08022A50: .4byte 0x80000010
_08022A54: .4byte gUnk_03002920
_08022A58: .4byte gUnk_080E2B64
_08022A5C: .4byte 0x00001130
_08022A60: .4byte 0x00008980
_08022A64: .4byte gSineTable
_08022A68:
	ldr r7, _08022B30 @ =0x040000D4
	ldr r0, _08022B34 @ =0x0818B7DC
	ldr r0, [r0, #4]
	str r0, [r7]
	ldr r3, _08022B38 @ =gUnk_0818B8E0
	ldr r2, _08022B3C @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp]
	lsls r1, r2, #3
	adds r0, r1, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r3, _08022B40 @ =0x05000200
	adds r0, r0, r3
	str r0, [r7, #4]
	ldr r0, _08022B44 @ =0x80000010
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r0, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	str r1, [sp, #8]
	ldr r5, [sp]
	subs r5, #0xd
	cmp r0, #0
	bge _08022ABA
	adds r1, r2, #0
_08022AB2:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	bne _08022AB2
_08022ABA:
	ldr r0, [sp]
	movs r1, #1
	bl sub_08025B78
	ldr r0, _08022B48 @ =gUnk_03002920
	ldr r6, [sp, #8]
	ldr r1, [sp]
	subs r4, r6, r1
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r2, _08022B4C @ =gUnk_080E2B64
	mov sl, r2
	movs r0, #0x2c
	adds r2, r5, #0
	muls r2, r0, r2
	ldr r3, _08022B3C @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r5, _08022B50 @ =0x00001130
	mov r8, r5
	mov r1, r8
	muls r1, r0, r1
	adds r1, r2, r1
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r7, _08022B54 @ =0x00008980
	muls r0, r7, r0
	adds r1, r1, r0
	add r1, sl
	ldr r6, _08022B58 @ =gSineTable
	mov sb, r6
	ldr r0, [r3]
	adds r0, #0x56
	movs r5, #0xff
	ands r0, r5
	lsls r0, r0, #1
	add r0, sb
	movs r6, #0
	ldrsh r0, [r0, r6]
	ldr r6, [sp, #4]
	muls r0, r6, r0
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r3, #0xc]
	subs r0, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r7, r0
	adds r2, r2, r0
	add r2, sl
	ldr r0, [r3]
	adds r0, #0x56
	b _08022C22
	.align 2, 0
_08022B30: .4byte 0x040000D4
_08022B34: .4byte 0x0818B7DC
_08022B38: .4byte gUnk_0818B8E0
_08022B3C: .4byte gUnk_03004C20
_08022B40: .4byte 0x05000200
_08022B44: .4byte 0x80000010
_08022B48: .4byte gUnk_03002920
_08022B4C: .4byte gUnk_080E2B64
_08022B50: .4byte 0x00001130
_08022B54: .4byte 0x00008980
_08022B58: .4byte gSineTable
_08022B5C:
	ldr r7, _08022C70 @ =0x040000D4
	ldr r0, _08022C74 @ =0x0818B7DC
	ldr r0, [r0, #8]
	str r0, [r7]
	ldr r3, _08022C78 @ =gUnk_0818B8E0
	ldr r2, _08022C7C @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r4, [sp]
	lsls r1, r4, #3
	adds r0, r1, r0
	subs r0, #0x60
	ldrb r0, [r0, #2]
	lsls r0, r0, #5
	ldr r5, _08022C80 @ =0x05000200
	adds r0, r0, r5
	str r0, [r7, #4]
	ldr r0, _08022C84 @ =0x80000010
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r0, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	str r1, [sp, #8]
	adds r5, r4, #0
	subs r5, #0xd
	cmp r0, #0
	bge _08022BAE
	adds r1, r2, #0
_08022BA6:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	bne _08022BA6
_08022BAE:
	ldr r0, [sp]
	movs r1, #2
	bl sub_08025B78
	ldr r0, _08022C88 @ =gUnk_03002920
	ldr r6, [sp, #8]
	ldr r1, [sp]
	subs r4, r6, r1
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r2, _08022C8C @ =gUnk_080E2B64
	mov sl, r2
	movs r0, #0x2c
	adds r2, r5, #0
	muls r2, r0, r2
	ldr r3, _08022C7C @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	subs r0, #1
	ldr r5, _08022C90 @ =0x00001130
	mov r8, r5
	mov r1, r8
	muls r1, r0, r1
	adds r1, r2, r1
	ldrb r0, [r3, #0xd]
	subs r0, #1
	ldr r7, _08022C94 @ =0x00008980
	muls r0, r7, r0
	adds r1, r1, r0
	add r1, sl
	ldr r6, _08022C98 @ =gSineTable
	mov sb, r6
	ldr r0, [r3]
	adds r0, #0xaa
	movs r5, #0xff
	ands r0, r5
	lsls r0, r0, #1
	add r0, sb
	movs r6, #0
	ldrsh r0, [r0, r6]
	ldr r6, [sp, #4]
	muls r0, r6, r0
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r3, #0xc]
	subs r0, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r7, r0
	adds r2, r2, r0
	add r2, sl
	ldr r0, [r3]
	adds r0, #0xaa
_08022C22:
	ands r0, r5
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
_08022C2E:
	muls r0, r6, r0
	asrs r0, r0, #8
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
_08022C38:
	ldr r3, _08022C9C @ =gUnk_03003590
	ldr r1, _08022C88 @ =gUnk_03002920
	ldr r4, [sp, #8]
	ldr r5, [sp]
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	adds r3, #0x25
	movs r0, #1
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022C70: .4byte 0x040000D4
_08022C74: .4byte 0x0818B7DC
_08022C78: .4byte gUnk_0818B8E0
_08022C7C: .4byte gUnk_03004C20
_08022C80: .4byte 0x05000200
_08022C84: .4byte 0x80000010
_08022C88: .4byte gUnk_03002920
_08022C8C: .4byte gUnk_080E2B64
_08022C90: .4byte 0x00001130
_08022C94: .4byte 0x00008980
_08022C98: .4byte gSineTable
_08022C9C: .4byte gUnk_03003590

	thumb_func_start sub_08022CA0
sub_08022CA0: @ 0x08022CA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r1, #0xe1
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r6, r0, #0x18
	ldr r4, _08022CFC @ =gUnk_03005400
	ldrb r0, [r4, #0xc]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r3, _08022D00 @ =gUnk_03003590
	ldrb r1, [r4, #8]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	ldrb r2, [r3, #0x15]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x15]
	ldr r1, _08022D04 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0xf]
	mov ip, r4
	mov sb, r3
	cmp r0, #0x1a
	bls _08022CF0
	bl _08023972
_08022CF0:
	lsls r0, r0, #2
	ldr r1, _08022D08 @ =_08022D0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022CFC: .4byte gUnk_03005400
_08022D00: .4byte gUnk_03003590
_08022D04: .4byte gUnk_03002920
_08022D08: .4byte _08022D0C
_08022D0C: @ jump table
	.4byte _08022E90 @ case 0
	.4byte _08023972 @ case 1
	.4byte _08023972 @ case 2
	.4byte _08022DFC @ case 3
	.4byte _08023972 @ case 4
	.4byte _08023972 @ case 5
	.4byte _08023972 @ case 6
	.4byte _08023588 @ case 7
	.4byte _08023972 @ case 8
	.4byte _08023972 @ case 9
	.4byte _080236C2 @ case 10
	.4byte _08023972 @ case 11
	.4byte _08023972 @ case 12
	.4byte _08023972 @ case 13
	.4byte _08022F94 @ case 14
	.4byte _080233C4 @ case 15
	.4byte _080230E8 @ case 16
	.4byte _08023204 @ case 17
	.4byte _08023380 @ case 18
	.4byte _08023972 @ case 19
	.4byte _08023972 @ case 20
	.4byte _08023972 @ case 21
	.4byte _08023972 @ case 22
	.4byte _08023972 @ case 23
	.4byte _08023972 @ case 24
	.4byte _08022D78 @ case 25
	.4byte _08023958 @ case 26
_08022D78:
	movs r5, #0
	movs r0, #0
	mov r2, sb
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	strb r5, [r2, #0x14]
	adds r0, r7, #0
	movs r1, #0xd
	bl sub_08025B78
	ldr r4, _08022DE4 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r1, r4, r3
	ldrh r1, [r1]
	strh r1, [r0]
	movs r1, #0x90
	lsls r1, r1, #1
	strh r1, [r0, #2]
	movs r1, #1
	strb r1, [r0, #0x10]
	movs r1, #0xe
	strb r1, [r0, #0xf]
	ldr r0, _08022DE8 @ =gUnk_03005498
	strb r5, [r0]
	movs r0, #0x84
	bl m4aSongNumStart
	ldr r5, _08022DEC @ =0x00000453
	adds r0, r4, r5
	movs r1, #0x18
	strb r1, [r0]
	ldr r6, _08022DF0 @ =0x00000437
	adds r0, r4, r6
	strb r1, [r0]
	ldr r2, _08022DF4 @ =0x0000041B
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08022DF8 @ =0x000003FF
	adds r0, r4, r3
	strb r1, [r0]
	subs r5, #0x70
	adds r0, r4, r5
	strb r1, [r0]
	subs r6, #0x70
	adds r4, r4, r6
	strb r1, [r4]
	bl _08023972
	.align 2, 0
_08022DE4: .4byte gUnk_03002920
_08022DE8: .4byte gUnk_03005498
_08022DEC: .4byte 0x00000453
_08022DF0: .4byte 0x00000437
_08022DF4: .4byte 0x0000041B
_08022DF8: .4byte 0x000003FF
_08022DFC:
	ldr r5, _08022E24 @ =0x04000050
	ldrh r0, [r5]
	cmp r0, #0xbf
	bne _08022E54
	cmp r7, #0x1f
	bne _08022E90
	ldr r4, _08022E28 @ =gUnk_03005498
	ldrb r2, [r4]
	adds r3, r2, #0
	cmp r3, #0
	beq _08022E30
	ldr r0, _08022E2C @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08022E90
	subs r0, r2, #1
	strb r0, [r4]
	b _08022E90
	.align 2, 0
_08022E24: .4byte 0x04000050
_08022E28: .4byte gUnk_03005498
_08022E2C: .4byte gUnk_03004C20
_08022E30:
	ldr r2, _08022E4C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08022E50 @ =0x04000004
	ldrh r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strh r0, [r1]
	strh r3, [r5]
	strb r2, [r4]
	b _08022E90
	.align 2, 0
_08022E4C: .4byte 0x04000200
_08022E50: .4byte 0x04000004
_08022E54:
	cmp r7, #0x1f
	bne _08022E90
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	ldr r3, _08022E7C @ =gUnk_03005498
	ldrb r2, [r3]
	cmp r2, #8
	bls _08022E84
	ldr r0, _08022E80 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08022E90
	subs r0, r2, #1
	strb r0, [r3]
	b _08022E90
	.align 2, 0
_08022E7C: .4byte gUnk_03005498
_08022E80: .4byte gUnk_03004C20
_08022E84:
	ldr r2, _08022EB4 @ =gUnk_03002920
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r1, r2, r3
	movs r0, #0
	strb r0, [r1, #0xf]
_08022E90:
	ldr r1, _08022EB8 @ =gUnk_03000830
	ldr r0, _08022EBC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r6, #7
	cmp r0, r1
	beq _08022EC0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_08025B78
	bl _08023972
	.align 2, 0
_08022EB4: .4byte gUnk_03002920
_08022EB8: .4byte gUnk_03000830
_08022EBC: .4byte gUnk_0300363C
_08022EC0:
	mov r4, ip
	ldrb r1, [r4, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08022F18
	lsls r5, r7, #3
	mov r8, r5
	subs r3, r5, r7
	lsls r3, r3, #2
	ldr r0, _08022F08 @ =gUnk_03002920
	adds r3, r3, r0
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r5, _08022F0C @ =0x080E2B4C
	lsls r6, r6, #1
	adds r0, r6, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldrh r1, [r1]
	adds r1, r1, r2
	ldr r4, _08022F10 @ =gSineTable
	ldr r0, _08022F14 @ =gUnk_03004C20
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	asrs r0, r0, #5
	subs r1, r1, r0
	adds r2, r2, r1
	strh r2, [r3]
	b _08022F50
	.align 2, 0
_08022F08: .4byte gUnk_03002920
_08022F0C: .4byte 0x080E2B4C
_08022F10: .4byte gSineTable
_08022F14: .4byte gUnk_03004C20
_08022F18:
	lsls r5, r7, #3
	mov r8, r5
	subs r2, r5, r7
	lsls r2, r2, #2
	ldr r0, _08022F84 @ =gUnk_03002920
	adds r2, r2, r0
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r1, r0, r3
	ldr r5, _08022F88 @ =0x080E2B4C
	lsls r6, r6, #1
	adds r0, r6, r5
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldrh r1, [r1]
	subs r1, r1, r4
	ldr r3, _08022F8C @ =gSineTable
	ldr r0, _08022F90 @ =gUnk_03004C20
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	asrs r0, r0, #5
	adds r1, r1, r0
	subs r1, r1, r4
	strh r1, [r2]
_08022F50:
	mov r4, r8
	subs r3, r4, r7
	lsls r3, r3, #2
	ldr r0, _08022F84 @ =gUnk_03002920
	adds r3, r3, r0
	movs r1, #0xfd
	lsls r1, r1, #1
	adds r4, r0, r1
	adds r1, r5, #1
	adds r1, r6, r1
	movs r2, #0
	ldrsb r2, [r1, r2]
	mov r5, sb
	movs r6, #0x12
	ldrsh r0, [r5, r6]
	muls r0, r2, r0
	asrs r0, r0, #8
	adds r0, #8
	ldrh r4, [r4]
	adds r0, r0, r4
	ldrb r1, [r1]
	adds r1, r1, r0
	strh r1, [r3, #2]
	bl _08023972
	.align 2, 0
_08022F84: .4byte gUnk_03002920
_08022F88: .4byte 0x080E2B4C
_08022F8C: .4byte gSineTable
_08022F90: .4byte gUnk_03004C20
_08022F94:
	ldr r1, _08022FC8 @ =gUnk_03000830
	ldr r0, _08022FCC @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0xe
	bne _08023090
	ldr r0, _08022FD0 @ =gUnk_03005498
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0x10
	bne _08023042
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r2, _08022FD4 @ =gUnk_03002920
	adds r1, r0, r2
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08022FD8
	subs r0, #1
	strb r0, [r1, #8]
	b _08023042
	.align 2, 0
_08022FC8: .4byte gUnk_03000830
_08022FCC: .4byte gUnk_0300363C
_08022FD0: .4byte gUnk_03005498
_08022FD4: .4byte gUnk_03002920
_08022FD8:
	movs r0, #5
	mov r4, ip
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0xe]
	ldr r5, _08023074 @ =gUnk_03002920
	ldr r6, _08023078 @ =0x000003AB
	adds r0, r5, r6
	movs r1, #3
	strb r1, [r0]
	ldr r2, _0802307C @ =0x0000038F
	adds r0, r5, r2
	strb r1, [r0]
	ldr r4, _08023080 @ =0x00000373
	adds r0, r5, r4
	strb r1, [r0]
	adds r6, #1
	adds r0, r5, r6
	movs r1, #1
	strb r1, [r0]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	adds r4, #1
	adds r0, r5, r4
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r5, sb
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	ldr r6, _08023074 @ =gUnk_03002920
	ldr r1, _08023084 @ =0x00000453
	adds r0, r6, r1
	movs r1, #0x1a
	strb r1, [r0]
	adds r2, #0xa7
	adds r0, r6, r2
	strb r1, [r0]
	adds r4, #0xa7
	adds r0, r6, r4
	strb r1, [r0]
	ldr r5, _08023088 @ =0x000003FF
	adds r0, r6, r5
	strb r1, [r0]
	subs r2, #0x54
	adds r0, r6, r2
	strb r1, [r0]
	subs r4, #0x54
	adds r0, r6, r4
	strb r1, [r0]
_08023042:
	ldrb r2, [r3]
	cmp r2, #0xf
	bls _0802304C
	bl _08023972
_0802304C:
	ldr r0, _0802308C @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802305C
	bl _08023972
_0802305C:
	adds r0, r2, #1
	strb r0, [r3]
	movs r1, #2
	movs r0, #2
	mov r5, ip
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xe]
	orrs r0, r1
	strb r0, [r5, #0xe]
	bl _08023972
	.align 2, 0
_08023074: .4byte gUnk_03002920
_08023078: .4byte 0x000003AB
_0802307C: .4byte 0x0000038F
_08023080: .4byte 0x00000373
_08023084: .4byte 0x00000453
_08023088: .4byte 0x000003FF
_0802308C: .4byte gUnk_03004C20
_08023090:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	beq _0802309A
	bl _08023972
_0802309A:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r6, _080230C8 @ =gUnk_03002920
	adds r3, r0, r6
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	mov r0, sb
	ldrh r1, [r0, #0x12]
	movs r2, #0x12
	ldrsh r0, [r0, r2]
	cmp r0, #0x80
	bgt _080230CC
	mov r3, sb
	ldrh r0, [r3, #0x10]
	adds r0, #4
	strh r0, [r3, #0x10]
	adds r0, r1, #4
	strh r0, [r3, #0x12]
	bl _08023972
	.align 2, 0
_080230C8: .4byte gUnk_03002920
_080230CC:
	ldr r0, _080230E4 @ =0x04000050
	movs r1, #0xbf
	strh r1, [r0]
	movs r0, #0x10
	strb r0, [r3, #8]
	adds r0, r7, #0
	movs r1, #0xe
	bl sub_08025B78
	bl _08023972
	.align 2, 0
_080230E4: .4byte 0x04000050
_080230E8:
	movs r5, #0
	mov r4, sb
	ldrb r0, [r4, #0x15]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4, #0x15]
	ldrh r1, [r4, #0x10]
	movs r6, #0x10
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bge _0802310E
	adds r0, r1, #1
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #1
	strh r0, [r4, #0x12]
	bl _08023972
_0802310E:
	mov r0, sb
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _08023190 @ =gUnk_03002920
	adds r4, r0, r1
	ldrb r1, [r4, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xc]
	ldr r2, _08023190 @ =gUnk_03002920
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, _08023194 @ =gUnk_03000830
	ldr r0, _08023198 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0x10
	bne _080231AC
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _08023154
	bl _08023972
_08023154:
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ands r1, r0
	lsrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x28
	strb r0, [r4, #9]
	ldr r0, _0802319C @ =0x080E2B49
	add r0, sl
	ldrb r0, [r0]
	strb r0, [r4, #8]
	movs r0, #0x11
	strb r0, [r4, #0xf]
	ldrh r0, [r4]
	ldr r5, _08023190 @ =gUnk_03002920
	ldrh r5, [r5]
	cmp r0, r5
	bhs _080231A0
	ldrb r1, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0xc]
	bl _08023972
	.align 2, 0
_08023190: .4byte gUnk_03002920
_08023194: .4byte gUnk_03000830
_08023198: .4byte gUnk_0300363C
_0802319C: .4byte 0x080E2B49
_080231A0:
	ldrb r0, [r4, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	b _0802336A
_080231AC:
	cmp r1, #0xf
	beq _080231BA
	adds r0, r7, #0
	movs r1, #0xf
	bl sub_08025B78
	b _08023972
_080231BA:
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _080231C2
	b _08023972
_080231C2:
	ldrh r2, [r4, #2]
	adds r0, r2, #1
	strh r0, [r4, #2]
	ldrh r1, [r4]
	subs r2, #3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	movs r3, #0x10
	bl sub_08014230
	ldr r2, [sp]
	lsls r1, r2, #0x10
	ldr r0, _08023200 @ =0xFFFF0000
	cmp r1, r0
	beq _080231EE
	adds r0, r2, #4
	strh r0, [r4, #2]
	lsrs r0, r2, #0x10
	mov r6, sb
	strb r0, [r6, #0x14]
	movs r5, #1
_080231EE:
	cmp r5, #1
	beq _080231F4
	b _08023972
_080231F4:
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_08025B78
	b _08023972
	.align 2, 0
_08023200: .4byte 0xFFFF0000
_08023204:
	ldr r1, _08023250 @ =gUnk_03000830
	ldr r0, _08023254 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _0802321E
	adds r0, r7, #0
	movs r1, #0x11
	bl sub_08025B78
_0802321E:
	ldr r2, _08023258 @ =gUnk_03003590
	ldrb r1, [r2, #0x15]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x15]
	ldr r0, _0802325C @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r1, r7, #3
	mov r8, r1
	cmp r0, #0
	bne _08023268
	ldr r1, _08023260 @ =gUnk_03002920
	mov r2, r8
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _08023264
	movs r0, #0x12
	strb r0, [r1, #0xf]
	b _08023972
	.align 2, 0
_08023250: .4byte gUnk_03000830
_08023254: .4byte gUnk_0300363C
_08023258: .4byte gUnk_03003590
_0802325C: .4byte gUnk_03004C20
_08023260: .4byte gUnk_03002920
_08023264:
	subs r0, #1
	strb r0, [r1, #8]
_08023268:
	ldr r1, _08023280 @ =gUnk_03002920
	mov r3, r8
	subs r0, r3, r7
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _08023284
	subs r0, #1
	strb r0, [r4, #9]
	b _080232B0
	.align 2, 0
_08023280: .4byte gUnk_03002920
_08023284:
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ands r1, r0
	lsrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x14
	strb r0, [r4, #9]
	ldrb r2, [r4, #0xc]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #2
	subs r0, #0xe
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
_080232B0:
	ldr r0, _080232DC @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _080232F0
	mov r4, r8
	subs r0, r4, r7
	lsls r0, r0, #2
	ldr r5, _080232E0 @ =gUnk_03002920
	adds r1, r0, r5
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _080232E4
	ldrh r0, [r1]
	adds r0, #4
	mov r6, sl
	subs r0, r0, r6
	b _080232EE
	.align 2, 0
_080232DC: .4byte gUnk_03004C20
_080232E0: .4byte gUnk_03002920
_080232E4:
	ldr r2, _08023370 @ =0x0000FFFC
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	add r0, sl
_080232EE:
	strh r0, [r1]
_080232F0:
	mov r4, r8
	subs r0, r4, r7
	lsls r0, r0, #2
	ldr r5, _08023374 @ =gUnk_03002920
	adds r4, r0, r5
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	subs r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r0, sp, #4
	movs r3, #0x10
	bl sub_08014230
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldr r7, _08023378 @ =0x0000FFFF
	cmp r0, r7
	beq _08023322
	adds r0, r2, #4
	strh r0, [r4, #2]
	ldr r1, _0802337C @ =gUnk_03003590
	lsrs r0, r2, #0x10
	strb r0, [r1, #0x14]
_08023322:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	movs r6, #1
	ands r0, r6
	movs r1, #0x10
	cmp r0, #0
	beq _08023334
	movs r1, #0xf0
_08023334:
	lsls r0, r1, #0x18
	asrs r5, r0, #0x18
	ldrh r1, [r4]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	add r0, sp, #8
	movs r3, #0x18
	bl sub_08014184
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	bne _08023356
	b _08023972
_08023356:
	subs r0, r2, r5
	strh r0, [r4]
	ldrb r2, [r4, #0xc]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	eors r0, r6
	lsls r0, r0, #2
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
_0802336A:
	orrs r1, r0
	strb r1, [r4, #0xc]
	b _08023972
	.align 2, 0
_08023370: .4byte 0x0000FFFC
_08023374: .4byte gUnk_03002920
_08023378: .4byte 0x0000FFFF
_0802337C: .4byte gUnk_03003590
_08023380:
	mov r6, sb
	ldrb r1, [r6, #0x15]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #0x15]
	ldrh r0, [r6, #0x10]
	subs r0, #8
	movs r2, #0
	strh r0, [r6, #0x10]
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, _080233BC @ =gUnk_030034AC
	ldrh r0, [r0]
	cmn r1, r0
	ble _080233A2
	b _08023972
_080233A2:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _080233C0 @ =gUnk_03002920
	adds r0, r0, r1
	movs r1, #0x1a
	strb r1, [r0, #0xf]
	strh r2, [r6, #0x12]
	strh r2, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0x14]
	b _08023972
	.align 2, 0
_080233BC: .4byte gUnk_030034AC
_080233C0: .4byte gUnk_03002920
_080233C4:
	movs r2, #0
	mov sb, r2
	ldr r5, _0802345C @ =gUnk_03000830
	ldr r4, _08023460 @ =gUnk_0300363C
	ldrb r0, [r4]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0xa
	cmp r0, r1
	beq _080233E8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_08025B78
_080233E8:
	adds r0, r7, #0
	subs r0, #0x1f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0802341A
	ldrb r0, [r4]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r1, r0, r5
	ldrb r0, [r1, #2]
	cmp r0, #0xff
	beq _0802341A
	ldr r2, _08023464 @ =0x080E2B52
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #1]
	cmp r1, #1
	bne _0802340E
	adds r0, #1
_0802340E:
	adds r0, r0, r2
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_0802341A:
	ldr r2, _08023468 @ =gUnk_03005400
	ldrb r1, [r2, #8]
	movs r0, #0x20
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	bne _08023474
	ldr r4, _0802346C @ =gUnk_03002920
	lsls r3, r7, #3
	mov r8, r3
	subs r3, r3, r7
	lsls r3, r3, #2
	adds r3, r3, r4
	mov sl, r3
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r1, r4, r5
	ldr r5, _08023470 @ =0x080E2B4C
	lsls r6, r6, #1
	adds r0, r6, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldrh r1, [r1]
	adds r1, r1, r2
	mov r3, sb
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r2, r2, r0
	mov r0, sl
	strh r2, [r0]
	b _080234A4
	.align 2, 0
_0802345C: .4byte gUnk_03000830
_08023460: .4byte gUnk_0300363C
_08023464: .4byte 0x080E2B52
_08023468: .4byte gUnk_03005400
_0802346C: .4byte gUnk_03002920
_08023470: .4byte 0x080E2B4C
_08023474:
	ldr r4, _0802356C @ =gUnk_03002920
	lsls r1, r7, #3
	mov r8, r1
	subs r2, r1, r7
	lsls r2, r2, #2
	adds r2, r2, r4
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r1, r4, r3
	ldr r5, _08023570 @ =0x080E2B4C
	lsls r6, r6, #1
	mov sl, r6
	adds r0, r6, r5
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldrh r0, [r1]
	subs r0, r0, r3
	mov r6, sb
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	subs r0, r0, r3
	strh r0, [r2]
	mov r6, sl
_080234A4:
	mov r0, r8
	subs r2, r0, r7
	lsls r2, r2, #2
	ldr r1, _0802356C @ =gUnk_03002920
	adds r2, r2, r1
	movs r4, #0xfd
	lsls r4, r4, #1
	adds r3, r1, r4
	ldr r1, _08023574 @ =gSineTable
	ldr r0, _08023578 @ =gUnk_03004C20
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #5
	ldrh r1, [r3]
	subs r1, r1, r0
	adds r1, #8
	adds r0, r5, #1
	adds r0, r6, r0
	ldrb r0, [r0]
	adds r1, r0, r1
	adds r0, r0, r1
	strh r0, [r2, #2]
	ldr r1, _0802357C @ =gUnk_03000830
	ldr r2, _08023580 @ =gUnk_0300363C
	ldrb r0, [r2]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #2]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r0, #5
	bne _08023520
	ldrb r0, [r3, #1]
	cmp r0, #0x30
	bne _08023520
	cmp r7, #0x1f
	bne _08023520
	mov r2, ip
	ldrb r1, [r2, #8]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	movs r0, #1
	ldr r6, _0802356C @ =gUnk_03002920
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r3, r6, r2
	eors r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _08023584 @ =0x00000277
	adds r1, r6, r3
	movs r0, #0x19
	strb r0, [r1]
_08023520:
	ldrb r0, [r4]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _08023530
	b _08023972
_08023530:
	mov r4, r8
	subs r0, r4, r7
	lsls r0, r0, #2
	ldr r5, _0802356C @ =gUnk_03002920
	adds r0, r0, r5
	movs r1, #0
	strb r1, [r0, #0xf]
	cmp r7, #0x21
	beq _08023544
	b _08023972
_08023544:
	mov r6, ip
	ldrb r2, [r6, #8]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #8]
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bne _08023564
	b _08023972
_08023564:
	movs r0, #3
	strb r0, [r6, #0xa]
	b _08023972
	.align 2, 0
_0802356C: .4byte gUnk_03002920
_08023570: .4byte 0x080E2B4C
_08023574: .4byte gSineTable
_08023578: .4byte gUnk_03004C20
_0802357C: .4byte gUnk_03000830
_08023580: .4byte gUnk_0300363C
_08023584: .4byte 0x00000277
_08023588:
	mov r2, sb
	ldrb r1, [r2, #0x15]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x15]
	ldr r1, _080235C4 @ =gUnk_03000830
	ldr r0, _080235C8 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xd
	beq _080235F4
	lsls r0, r7, #3
	mov r8, r0
	cmp r1, #0x12
	bne _08023632
	ldr r1, _080235CC @ =gUnk_03002920
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _080235D0
	subs r0, #1
	strb r0, [r2, #8]
	b _08023632
	.align 2, 0
_080235C4: .4byte gUnk_03000830
_080235C8: .4byte gUnk_0300363C
_080235CC: .4byte gUnk_03002920
_080235D0:
	ldrb r1, [r2, #9]
	movs r0, #0x68
	muls r0, r1, r0
	adds r0, #0x20
	movs r1, #0
	strh r0, [r2]
	movs r0, #0x10
	strh r0, [r2, #2]
	strb r1, [r2, #8]
	ldr r0, _080235F0 @ =0x0000FF80
	mov r1, sb
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x10]
	movs r0, #0xa
	strb r0, [r2, #0xf]
	b _08023632
	.align 2, 0
_080235F0: .4byte 0x0000FF80
_080235F4:
	ldrb r0, [r0, #1]
	lsls r2, r7, #3
	mov r8, r2
	cmp r0, #0xff
	bne _08023632
	ldr r4, _0802368C @ =gUnk_03002920
	ldr r3, _08023690 @ =0x00000366
	adds r0, r4, r3
	ldrh r0, [r0]
	cmp r0, #0xf4
	bne _08023610
	movs r0, #0x85
	bl m4aSongNumStart
_08023610:
	mov r5, r8
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r1, r0, r4
	ldrh r0, [r1, #2]
	subs r0, #6
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _08023632
	movs r0, #0x1e
	strb r0, [r1, #8]
	adds r0, r7, #0
	movs r1, #0x12
	bl sub_08025B78
_08023632:
	ldr r6, _0802368C @ =gUnk_03002920
	mov r1, r8
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r5, r0, r6
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	bne _08023644
	b _08023972
_08023644:
	movs r4, #0
	strb r4, [r5, #0x16]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #5
	bl __umodsi3
	strb r0, [r5, #9]
	ldr r0, _08023694 @ =gUnk_03003590
	strb r4, [r0, #0x14]
	ldr r1, _08023698 @ =0x0000FFE0
	strh r1, [r0, #0x12]
	strh r1, [r0, #0x10]
	ldr r2, _08023690 @ =0x00000366
	adds r1, r6, r2
	movs r0, #0xf4
	strh r0, [r1]
	ldr r0, _0802369C @ =gUnk_03003430
	adds r0, #0x40
	ldrh r0, [r0]
	subs r0, #0x78
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	ldrb r1, [r5, #9]
	cmp r1, #2
	bne _080236A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xf0
	b _080236B6
	.align 2, 0
_0802368C: .4byte gUnk_03002920
_08023690: .4byte 0x00000366
_08023694: .4byte gUnk_03003590
_08023698: .4byte 0x0000FFE0
_0802369C: .4byte gUnk_03003430
_080236A0:
	cmp r1, #1
	bhi _080236AC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xc8
	b _080236B6
_080236AC:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r0, r3
_080236B6:
	strh r0, [r5]
	adds r0, r7, #0
	movs r1, #0xd
	bl sub_08025B78
	b _08023972
_080236C2:
	lsls r1, r7, #3
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r4, _080236E0 @ =gUnk_03002920
	adds r0, r0, r4
	ldrb r0, [r0, #9]
	mov r8, r1
	cmp r0, #4
	bls _080236D6
	b _080237FE
_080236D6:
	lsls r0, r0, #2
	ldr r1, _080236E4 @ =_080236E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080236E0: .4byte gUnk_03002920
_080236E4: .4byte _080236E8
_080236E8: @ jump table
	.4byte _080236FC @ case 0
	.4byte _08023730 @ case 1
	.4byte _08023764 @ case 2
	.4byte _08023798 @ case 3
	.4byte _080237CC @ case 4
_080236FC:
	mov r5, r8
	subs r0, r5, r7
	lsls r0, r0, #2
	ldr r6, _08023728 @ =gUnk_03002920
	adds r3, r0, r6
	ldrb r0, [r3, #8]
	cmp r0, #0x3f
	bhi _08023712
	ldrh r0, [r3]
	adds r0, #6
	strh r0, [r3]
_08023712:
	ldr r2, _0802372C @ =gSineTable
	ldrb r0, [r3, #8]
	adds r1, r0, #1
	strb r1, [r3, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	b _080237F4
	.align 2, 0
_08023728: .4byte gUnk_03002920
_0802372C: .4byte gSineTable
_08023730:
	mov r3, r8
	subs r0, r3, r7
	lsls r0, r0, #2
	ldr r4, _0802375C @ =gUnk_03002920
	adds r3, r0, r4
	ldrb r0, [r3, #8]
	cmp r0, #0x3f
	bhi _08023746
	ldrh r0, [r3]
	adds r0, #3
	strh r0, [r3]
_08023746:
	ldr r2, _08023760 @ =gSineTable
	ldrb r0, [r3, #8]
	adds r1, r0, #1
	strb r1, [r3, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	b _080237FA
	.align 2, 0
_0802375C: .4byte gUnk_03002920
_08023760: .4byte gSineTable
_08023764:
	mov r6, r8
	subs r2, r6, r7
	lsls r2, r2, #2
	ldr r0, _08023790 @ =gUnk_03002920
	adds r2, r2, r0
	ldr r3, _08023794 @ =gSineTable
	ldrb r0, [r2, #8]
	adds r1, r0, #1
	strb r1, [r2, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	asrs r0, r0, #5
	adds r0, #0x10
	strh r0, [r2, #2]
	b _080237FE
	.align 2, 0
_08023790: .4byte gUnk_03002920
_08023794: .4byte gSineTable
_08023798:
	mov r4, r8
	subs r0, r4, r7
	lsls r0, r0, #2
	ldr r5, _080237C4 @ =gUnk_03002920
	adds r3, r0, r5
	ldrb r0, [r3, #8]
	cmp r0, #0x3f
	bhi _080237AE
	ldrh r0, [r3]
	subs r0, #3
	strh r0, [r3]
_080237AE:
	ldr r2, _080237C8 @ =gSineTable
	ldrb r0, [r3, #8]
	adds r1, r0, #1
	strb r1, [r3, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	b _080237FA
	.align 2, 0
_080237C4: .4byte gUnk_03002920
_080237C8: .4byte gSineTable
_080237CC:
	mov r1, r8
	subs r0, r1, r7
	lsls r0, r0, #2
	ldr r2, _0802381C @ =gUnk_03002920
	adds r3, r0, r2
	ldrb r0, [r3, #8]
	cmp r0, #0x3f
	bhi _080237E2
	ldrh r0, [r3]
	subs r0, #6
	strh r0, [r3]
_080237E2:
	ldr r2, _08023820 @ =gSineTable
	ldrb r0, [r3, #8]
	adds r1, r0, #1
	strb r1, [r3, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
_080237F4:
	movs r0, #0xc8
	muls r0, r1, r0
	asrs r0, r0, #8
_080237FA:
	adds r0, #0x10
	strh r0, [r3, #2]
_080237FE:
	ldr r1, _0802381C @ =gUnk_03002920
	mov r5, r8
	subs r0, r5, r7
	lsls r0, r0, #2
	adds r3, r0, r1
	ldrb r0, [r3, #8]
	cmp r0, #0x1f
	bls _08023896
	cmp r0, #0x20
	bne _08023824
	movs r0, #0x6f
	bl m4aSongNumStart
	b _08023896
	.align 2, 0
_0802381C: .4byte gUnk_03002920
_08023820: .4byte gSineTable
_08023824:
	cmp r0, #0x3f
	bhi _08023858
	ldr r0, _08023850 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08023840
	mov r6, ip
	ldrb r0, [r6, #0xe]
	orrs r0, r1
	strb r0, [r6, #0xe]
	movs r0, #1
	strb r0, [r6, #0xd]
_08023840:
	ldr r0, _08023854 @ =gUnk_03003590
	ldrh r1, [r0, #0x10]
	adds r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	adds r1, #1
	strh r1, [r0, #0x12]
	b _08023896
	.align 2, 0
_08023850: .4byte gUnk_03004C20
_08023854: .4byte gUnk_03003590
_08023858:
	ldr r0, _080238C8 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802387A
	mov r0, ip
	ldrb r1, [r0, #0xe]
	movs r2, #2
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strb r0, [r1, #0xe]
	movs r0, #3
	strb r0, [r1, #0xd]
_0802387A:
	ldrb r1, [r3, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0xc]
	ldr r1, _080238CC @ =gUnk_03003590
	ldrh r0, [r1, #0x10]
	adds r0, #0xa
	strh r0, [r1, #0x10]
	ldrh r0, [r1, #0x12]
	adds r0, #0xa
	strh r0, [r1, #0x12]
_08023896:
	ldr r0, _080238D0 @ =gUnk_03002920
	mov r2, r8
	subs r1, r2, r7
	lsls r1, r1, #2
	adds r4, r1, r0
	ldrb r0, [r4, #8]
	cmp r0, #0x70
	bne _080238F0
	ldr r1, _080238CC @ =gUnk_03003590
	movs r0, #0
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x10]
	movs r0, #0x20
	strh r0, [r4, #2]
	ldr r1, _080238D4 @ =gUnk_03005400
	ldrb r0, [r1, #0x13]
	subs r0, #1
	strb r0, [r1, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080238D8
	movs r0, #0
	strb r0, [r1, #0xa]
	movs r0, #0x1a
	b _080238EE
	.align 2, 0
_080238C8: .4byte gUnk_03004C20
_080238CC: .4byte gUnk_03003590
_080238D0: .4byte gUnk_03002920
_080238D4: .4byte gUnk_03005400
_080238D8:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
	movs r0, #1
	strb r0, [r4, #0x16]
	adds r0, r7, #0
	movs r1, #0x11
	bl sub_08025B78
	movs r0, #7
_080238EE:
	strb r0, [r4, #0xf]
_080238F0:
	ldr r0, _0802394C @ =gUnk_03003590
	ldrh r0, [r0, #0x10]
	subs r0, #0x81
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bhi _08023972
	ldr r6, _08023950 @ =gUnk_03002920
	ldrh r5, [r6]
	adds r0, r5, #0
	subs r0, #0xc
	mov r3, r8
	subs r1, r3, r7
	lsls r1, r1, #2
	adds r2, r1, r6
	ldrh r4, [r2]
	adds r1, r4, #0
	adds r1, #0x30
	cmp r0, r1
	bge _08023972
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r4, #0
	subs r0, #0x30
	cmp r1, r0
	ble _08023972
	ldrh r4, [r6, #2]
	adds r0, r4, #0
	subs r0, #0x18
	ldrh r1, [r2, #2]
	cmp r0, r1
	bge _08023972
	adds r0, r1, #0
	subs r0, #0x60
	cmp r4, r0
	ble _08023972
	ldr r0, _08023954 @ =gUnk_03005220
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023972
	movs r0, #1
	bl sub_08014624
	b _08023972
	.align 2, 0
_0802394C: .4byte gUnk_03003590
_08023950: .4byte gUnk_03002920
_08023954: .4byte gUnk_03005220
_08023958:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r4, _08023984 @ =gUnk_03002920
	adds r0, r0, r4
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
_08023972:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023984: .4byte gUnk_03002920

	thumb_func_start sub_08023988
sub_08023988: @ 0x08023988
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _080239C0 @ =gUnk_03002920
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrb r0, [r4, #0xf]
	mov r8, r1
	cmp r0, #0
	beq _08023A6C
	cmp r0, #0x19
	beq _080239AC
	b _08023BA6
_080239AC:
	movs r0, #1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _080239C4
	movs r0, #0x20
	b _080239C8
	.align 2, 0
_080239C0: .4byte gUnk_03002920
_080239C4:
	movs r0, #0xe0
	lsls r0, r0, #1
_080239C8:
	strh r0, [r4]
	lsls r5, r7, #3
	subs r4, r5, r7
	lsls r4, r4, #2
	add r4, r8
	movs r6, #0
	movs r0, #0xc8
	strh r0, [r4, #2]
	movs r0, #0x20
	strb r0, [r4, #8]
	adds r0, r7, #0
	movs r1, #0x13
	bl sub_08025B78
	strb r6, [r4, #0xf]
	ldr r0, _08023A50 @ =0x0000021D
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #9]
	ldr r6, _08023A54 @ =0x040000D4
	ldr r1, _08023A58 @ =0x0818B7DC
	ldrb r0, [r4, #9]
	adds r0, #6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r3, _08023A5C @ =gUnk_0818B8E0
	ldr r2, _08023A60 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r5, r5, r0
	subs r5, #0x60
	ldrb r0, [r5, #2]
	lsls r0, r0, #5
	ldr r1, _08023A64 @ =0x05000200
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _08023A68 @ =0x80000010
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08023A48
_08023A40:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	bne _08023A40
_08023A48:
	movs r0, #0x77
	bl m4aSongNumStart
	b _08023BA6
	.align 2, 0
_08023A50: .4byte 0x0000021D
_08023A54: .4byte 0x040000D4
_08023A58: .4byte 0x0818B7DC
_08023A5C: .4byte gUnk_0818B8E0
_08023A60: .4byte gUnk_03004C20
_08023A64: .4byte 0x05000200
_08023A68: .4byte 0x80000010
_08023A6C:
	ldr r0, _08023AB8 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #0x46
	bl __umodsi3
	cmp r0, #0
	bne _08023A80
	movs r0, #0x77
	bl m4aSongNumStart
_08023A80:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _08023AC4
	subs r0, #1
	strb r0, [r4, #8]
	ldrh r1, [r4]
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	subs r2, #8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	movs r3, #0x10
	bl sub_08014230
	ldr r2, [sp]
	lsls r1, r2, #0x10
	ldr r0, _08023ABC @ =0xFFFF0000
	cmp r1, r0
	bne _08023AAE
	b _08023BA6
_08023AAE:
	strh r2, [r4, #2]
	ldr r1, _08023AC0 @ =gUnk_03003590
	lsrs r0, r2, #0x10
	strb r0, [r1, #0x1c]
	b _08023BA6
	.align 2, 0
_08023AB8: .4byte gUnk_03004C20
_08023ABC: .4byte 0xFFFF0000
_08023AC0: .4byte gUnk_03003590
_08023AC4:
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _08023AE8
	ldr r2, _08023AE0 @ =0x080E2B5E
	ldr r0, _08023AE4 @ =gUnk_03005400
	ldrb r1, [r0, #0xc]
	subs r1, #1
	adds r1, r1, r2
	ldrh r0, [r4]
	ldrb r1, [r1]
	adds r0, r0, r1
	b _08023AF8
	.align 2, 0
_08023AE0: .4byte 0x080E2B5E
_08023AE4: .4byte gUnk_03005400
_08023AE8:
	ldr r1, _08023B5C @ =0x080E2B5E
	ldr r0, _08023B60 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrh r0, [r4]
	subs r0, r0, r1
_08023AF8:
	strh r0, [r4]
	ldr r1, _08023B64 @ =gUnk_03002920
	lsls r4, r7, #3
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r5, r0, r1
	ldrh r2, [r5, #2]
	adds r0, r2, #4
	strh r0, [r5, #2]
	ldrh r1, [r5]
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r2, #0xc
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r0, sp, #4
	movs r3, #0x10
	bl sub_08014230
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	ldr r0, _08023B68 @ =0xFFFF0000
	cmp r1, r0
	beq _08023B36
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r5, #2]
	ldr r1, _08023B6C @ =gUnk_03003590
	lsrs r0, r2, #0x10
	strb r0, [r1, #0x1c]
_08023B36:
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08023B70
	ldrh r1, [r5]
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #2]
	add r0, sp, #8
	movs r3, #0x18
	bl sub_08014184
	ldr r2, [sp, #8]
	b _08023B84
	.align 2, 0
_08023B5C: .4byte 0x080E2B5E
_08023B60: .4byte gUnk_03005400
_08023B64: .4byte gUnk_03002920
_08023B68: .4byte 0xFFFF0000
_08023B6C: .4byte gUnk_03003590
_08023B70:
	ldrh r1, [r5]
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #2]
	add r0, sp, #0xc
	movs r3, #0x18
	bl sub_08014184
	ldr r2, [sp, #0xc]
_08023B84:
	lsls r1, r2, #0x10
	ldr r0, _08023BB4 @ =0xFFFF0000
	cmp r1, r0
	beq _08023BA6
	ldr r1, _08023BB8 @ =gUnk_03002920
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
	ldr r0, _08023BBC @ =gUnk_03005400
	strb r2, [r0, #0x16]
	movs r0, #0x77
	bl m4aSongNumStop
_08023BA6:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023BB4: .4byte 0xFFFF0000
_08023BB8: .4byte gUnk_03002920
_08023BBC: .4byte gUnk_03005400

	thumb_func_start sub_08023BC0
sub_08023BC0: @ 0x08023BC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x18
	bls _08023BD6
	movs r0, #7
	b _08023BDE
_08023BD6:
	adds r0, r7, #0
	subs r0, #0x12
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08023BDE:
	ldr r1, _08023C20 @ =gUnk_03003590
	mov r8, r1
	lsls r0, r0, #3
	mov sb, r0
	mov r4, sb
	add r4, r8
	ldr r5, _08023C24 @ =gUnk_03002920
	lsls r6, r7, #3
	subs r2, r6, r7
	lsls r2, r2, #2
	adds r2, r2, r5
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r1, r0
	ldrb r3, [r4, #5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #5]
	ldrb r0, [r2, #0xf]
	mov r3, r8
	mov r8, r5
	cmp r0, #0x1a
	bls _08023C16
	b _080240E4
_08023C16:
	lsls r0, r0, #2
	ldr r1, _08023C28 @ =_08023C2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023C20: .4byte gUnk_03003590
_08023C24: .4byte gUnk_03002920
_08023C28: .4byte _08023C2C
_08023C2C: @ jump table
	.4byte _08023D42 @ case 0
	.4byte _08023D0C @ case 1
	.4byte _080240E4 @ case 2
	.4byte _080240E4 @ case 3
	.4byte _080240E4 @ case 4
	.4byte _080240E4 @ case 5
	.4byte _080240E4 @ case 6
	.4byte _080240E4 @ case 7
	.4byte _080240E4 @ case 8
	.4byte _080240E4 @ case 9
	.4byte _080240E4 @ case 10
	.4byte _080240E4 @ case 11
	.4byte _080240E4 @ case 12
	.4byte _080240E4 @ case 13
	.4byte _08024018 @ case 14
	.4byte _08024046 @ case 15
	.4byte _08024086 @ case 16
	.4byte _08023EE4 @ case 17
	.4byte _080240E4 @ case 18
	.4byte _080240E4 @ case 19
	.4byte _080240E4 @ case 20
	.4byte _080240E4 @ case 21
	.4byte _080240E4 @ case 22
	.4byte _080240E4 @ case 23
	.4byte _080240E4 @ case 24
	.4byte _08023C98 @ case 25
	.4byte _080240CC @ case 26
_08023C98:
	subs r0, r6, r7
	lsls r0, r0, #2
	mov r3, r8
	adds r2, r0, r3
	ldrb r0, [r2, #0xc]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xf]
	strb r0, [r2, #0x10]
	movs r0, #0x40
	strb r0, [r2, #8]
	movs r0, #0xfc
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	ldrh r4, [r3]
	cmp r0, r4
	bhs _08023CCE
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0xf8
	b _08023CDC
_08023CCE:
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0xc]
	movs r0, #8
_08023CDC:
	strb r0, [r2, #9]
	subs r1, r6, r7
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0x85
	lsls r2, r2, #2
	add r2, r8
	movs r0, #9
	ldrsb r0, [r1, r0]
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r0, _08023D08 @ =0x00000216
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1, #2]
	adds r0, r7, #0
	movs r1, #0x15
	bl sub_08025B78
	b _080240E4
	.align 2, 0
_08023D08: .4byte 0x00000216
_08023D0C:
	subs r0, r6, r7
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	movs r1, #0xfc
	lsls r1, r1, #1
	add r1, r8
	movs r0, #9
	ldrsb r0, [r4, r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4]
	movs r0, #0xfd
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #2]
	ldrb r0, [r4, #8]
	subs r0, #1
	strb r0, [r4, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023D3C
	b _080240E4
_08023D3C:
	movs r0, #0
	strb r0, [r4, #0xf]
	b _080240E4
_08023D42:
	ldr r1, _08023DA0 @ =gUnk_03000830
	ldr r0, _08023DA4 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0x16
	beq _08023D56
	b _08023EA8
_08023D56:
	ldrb r5, [r1, #1]
	cmp r5, #0xff
	beq _08023D5E
	b _080240E4
_08023D5E:
	subs r0, r6, r7
	lsls r0, r0, #2
	mov r2, r8
	adds r7, r0, r2
	ldrb r0, [r7, #8]
	adds r1, r0, #0
	cmp r1, #0
	beq _08023DB0
	subs r0, #1
	strb r0, [r7, #8]
	add r3, sb
	ldr r2, _08023DA8 @ =gSineTable
	ldr r1, _08023DAC @ =gUnk_03004C20
	ldr r0, [r1]
	lsls r0, r0, #3
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	strh r0, [r3]
	ldr r0, [r1]
	lsls r0, r0, #3
	ands r0, r5
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	strh r0, [r3, #2]
	b _080240E4
	.align 2, 0
_08023DA0: .4byte gUnk_03000830
_08023DA4: .4byte gUnk_0300363C
_08023DA8: .4byte gSineTable
_08023DAC: .4byte gUnk_03004C20
_08023DB0:
	ldr r0, _08023E80 @ =0x0000023F
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08023DBE
	movs r4, #0x14
	mov ip, r4
_08023DBE:
	ldr r0, _08023E84 @ =0x0000025B
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x1c
	bne _08023DCC
	movs r0, #0x15
	mov ip, r0
_08023DCC:
	mov r2, sb
	adds r0, r2, r3
	movs r6, #0
	strh r1, [r0, #2]
	strh r1, [r0]
	mov r3, ip
	lsls r5, r3, #3
	subs r4, r5, r3
	lsls r4, r4, #2
	add r4, r8
	strb r6, [r4, #0xf]
	ldrh r0, [r7]
	strh r0, [r4]
	ldrh r0, [r7, #2]
	strh r0, [r4, #2]
	ldrb r0, [r7, #0xc]
	movs r1, #0xc
	ands r1, r0
	ldrb r2, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0xc]
	mov r0, ip
	movs r1, #1
	bl sub_08025B78
	movs r0, #0x1a
	strb r0, [r7, #0xf]
	ldrb r1, [r7, #0xc]
	subs r0, #0x1e
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r7, #0xc]
	ldr r0, _08023E88 @ =gUnk_03005400
	strb r6, [r0, #0x16]
	ldr r1, _08023E8C @ =0x080D8E10
	ldrb r0, [r0, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #9]
	ldr r6, _08023E90 @ =0x040000D4
	ldr r1, _08023E94 @ =0x0818B7DC
	ldrb r0, [r4, #9]
	adds r0, #3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r3, _08023E98 @ =gUnk_0818B8E0
	ldr r2, _08023E9C @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r5, r5, r0
	subs r5, #0x60
	ldrb r0, [r5, #2]
	lsls r0, r0, #5
	ldr r4, _08023EA0 @ =0x05000200
	adds r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _08023EA4 @ =0x80000010
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08023E70
_08023E68:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	bne _08023E68
_08023E70:
	ldr r4, _08023E88 @ =gUnk_03005400
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #0x14]
	b _080240E4
	.align 2, 0
_08023E80: .4byte 0x0000023F
_08023E84: .4byte 0x0000025B
_08023E88: .4byte gUnk_03005400
_08023E8C: .4byte 0x080D8E10
_08023E90: .4byte 0x040000D4
_08023E94: .4byte 0x0818B7DC
_08023E98: .4byte gUnk_0818B8E0
_08023E9C: .4byte gUnk_03004C20
_08023EA0: .4byte 0x05000200
_08023EA4: .4byte 0x80000010
_08023EA8:
	subs r0, r6, r7
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r0, sp
	movs r3, #0x10
	bl sub_08014230
	ldr r2, [sp]
	lsls r1, r2, #0x10
	ldr r0, _08023EE0 @ =0xFFFF0000
	cmp r1, r0
	bne _08023ECE
	b _080240E4
_08023ECE:
	strh r2, [r4, #2]
	movs r0, #0x78
	strb r0, [r4, #8]
	adds r0, r7, #0
	movs r1, #0x16
	bl sub_08025B78
	b _080240E4
	.align 2, 0
_08023EE0: .4byte 0xFFFF0000
_08023EE4:
	ldr r1, _08023F40 @ =gUnk_03000830
	ldr r0, _08023F44 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, r7, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _08023EF8
	b _08024004
_08023EF8:
	subs r0, r6, r7
	lsls r0, r0, #2
	mov r2, r8
	adds r6, r0, r2
	ldrb r0, [r6, #8]
	adds r5, r0, #0
	cmp r5, #0
	beq _08023F50
	subs r0, #1
	strb r0, [r6, #8]
	mov r0, sb
	adds r4, r0, r3
	ldr r3, _08023F48 @ =gSineTable
	ldr r2, _08023F4C @ =gUnk_03004C20
	ldr r0, [r2]
	lsls r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	strh r0, [r4]
	ldr r0, [r2]
	lsls r0, r0, #3
	ands r0, r1
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	strh r0, [r4, #2]
	b _080240E4
	.align 2, 0
_08023F40: .4byte gUnk_03000830
_08023F44: .4byte gUnk_0300363C
_08023F48: .4byte gSineTable
_08023F4C: .4byte gUnk_03004C20
_08023F50:
	subs r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sb
	adds r1, r2, r3
	movs r2, #0
	strh r5, [r1, #2]
	strh r5, [r1]
	lsls r5, r0, #3
	subs r4, r5, r0
	lsls r4, r4, #2
	add r4, r8
	strb r2, [r4, #0xf]
	ldrh r1, [r6]
	strh r1, [r4]
	ldrh r1, [r6, #2]
	strh r1, [r4, #2]
	ldrb r1, [r6, #0xc]
	movs r2, #0xc
	ands r2, r1
	ldrb r3, [r4, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #0xc]
	movs r1, #1
	bl sub_08025B78
	movs r0, #0x1a
	strb r0, [r6, #0xf]
	ldr r0, _08023FE8 @ =0x00000271
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r4, #9]
	ldr r6, _08023FEC @ =0x040000D4
	ldr r1, _08023FF0 @ =0x0818B7DC
	ldrb r0, [r4, #9]
	adds r0, #3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r3, _08023FF4 @ =gUnk_0818B8E0
	ldr r2, _08023FF8 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r5, r5, r0
	subs r5, #0x60
	ldrb r0, [r5, #2]
	lsls r0, r0, #5
	ldr r3, _08023FFC @ =0x05000200
	adds r0, r0, r3
	str r0, [r6, #4]
	ldr r0, _08024000 @ =0x80000010
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	blt _08023FDE
	b _080240E4
_08023FDE:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	bne _08023FDE
	b _080240E4
	.align 2, 0
_08023FE8: .4byte 0x00000271
_08023FEC: .4byte 0x040000D4
_08023FF0: .4byte 0x0818B7DC
_08023FF4: .4byte gUnk_0818B8E0
_08023FF8: .4byte gUnk_03004C20
_08023FFC: .4byte 0x05000200
_08024000: .4byte 0x80000010
_08024004:
	subs r0, r6, r7
	lsls r0, r0, #2
	add r0, r8
	movs r1, #0x78
	strb r1, [r0, #8]
	adds r0, r7, #0
	movs r1, #0x17
	bl sub_08025B78
	b _080240E4
_08024018:
	subs r4, r6, r7
	lsls r4, r4, #2
	add r4, r8
	movs r0, #0xbc
	lsls r0, r0, #1
	strh r0, [r4, #2]
	movs r0, #1
	strb r0, [r4, #0x10]
	movs r0, #0x19
	movs r1, #0x14
	bl sub_08025B78
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x14
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	adds r0, #0x32
	b _080240B2
_08024046:
	subs r0, r6, r7
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	ldrb r0, [r4, #0xe]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0802406E
	cmp r0, #1
	bne _08024066
	movs r0, #0x75
	bl m4aSongNumStart
_08024066:
	ldrb r0, [r4, #8]
	subs r0, #1
	strb r0, [r4, #8]
	b _080240E4
_0802406E:
	ldrh r0, [r4, #2]
	subs r0, #3
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x8b
	bgt _080240E4
	movs r0, #0x1c
	strb r0, [r4, #0xf]
	movs r0, #0
	strb r0, [r4, #0x10]
	b _080240E4
_08024086:
	subs r4, r6, r7
	lsls r4, r4, #2
	add r4, r8
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r4, #2]
	movs r0, #1
	strb r0, [r4, #0x10]
	movs r0, #0x19
	movs r1, #0x14
	bl sub_08025B78
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x14
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	adds r0, #0x28
_080240B2:
	strb r0, [r4, #8]
	ldr r0, _080240C8 @ =gUnk_03003590
	add r0, sb
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #2]
	strh r1, [r0]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	b _080240E4
	.align 2, 0
_080240C8: .4byte gUnk_03003590
_080240CC:
	subs r0, r6, r7
	lsls r0, r0, #2
	add r0, r8
	movs r2, #0
	movs r1, #0x1c
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
	strb r2, [r0, #8]
	adds r0, r7, #0
	movs r1, #0
	bl sub_08025B78
_080240E4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
