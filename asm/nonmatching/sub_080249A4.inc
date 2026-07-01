
    .text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08024A14 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r3]
	ldr r2, _08024A18 @ =gUnk_03004C20
	ldr r1, [r2, #4]
	movs r0, #1
	ands r1, r0
	mov sl, r3
	mov sb, r2
	cmp r1, #0
	bne _08024A6A
	ldr r1, _08024A1C @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08024A20 @ =gUnk_03005498
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08024A6A
	movs r3, #0
	ldr r0, _08024A24 @ =gCallbackQueue
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r1, [r2]
	movs r4, #0
	adds r7, r0, #0
	cmp r1, #1
	beq _08024A3E
	adds r6, r7, #0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r0, _08024A28 @ =sub_080249A4
	mov r8, r0
	mov ip, r2
_080249F6:
	lsls r2, r3, #2
	adds r0, r2, r6
	ldr r1, [r0]
	cmp r1, r8
	beq _08024A04
	cmp r4, #1
	bne _08024A2C
_08024A04:
	adds r2, r2, r5
	adds r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _08024A32
	.align 2, 0
_08024A14: .4byte gUnk_030034E4
_08024A18: .4byte gUnk_03004C20
_08024A1C: .4byte 0x04000050
_08024A20: .4byte gUnk_03005498
_08024A24: .4byte gCallbackQueue
_08024A28: .4byte sub_080249A4
_08024A2C:
	adds r0, r2, r5
	str r1, [r0]
	adds r1, r3, #1
_08024A32:
	adds r3, r1, #0
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	cmp r3, r0
	blo _080249F6
_08024A3E:
	cmp r4, #1
	bne _08024A60
	adds r1, r7, #0
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0x79
	adds r2, r2, r7
	mov ip, r2
	movs r2, #0
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r7
	str r2, [r0]
_08024A60:
	movs r0, #0
	mov r1, sb
	str r0, [r1]
	mov r2, sl
	strb r0, [r2]
_08024A6A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
