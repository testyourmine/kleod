
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	bl sub_0800A468
	ldr r1, _080070E0 @ =gUnk_03000820
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
	ldr r0, _080070EC @ =gUnk_0300466C
	lsls r1, r1, #3
	ldr r2, _080070F0 @ =gUnk_08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _08007104
	.align 2, 0
_080070E0: .4byte gUnk_03000820
_080070E4: .4byte gUnk_03004800
_080070E8: .4byte gUnk_03002920
_080070EC: .4byte gUnk_0300466C
_080070F0: .4byte gUnk_08078FC8
_080070F4:
	ldr r2, _0800717C @ =gUnk_0300466C
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
	ldr r7, _08007188 @ =gUnk_03000820
	adds r0, r4, #0
	ldr r2, _0800718C @ =0x0000013F
	adds r0, r0, r2
	mov sb, r0
	mov sl, r1
_08007122:
	ldr r3, _08007190 @ =gUnk_03002920+0x142
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
	ldr r2, _08007198 @ =gUnk_03002920+0x138
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
	ldr r4, _080071A4 @ =gUnk_03002920+0x13A
	ldrb r4, [r4]
	adds r1, r1, r4
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _0800721E
	.align 2, 0
_0800717C: .4byte gUnk_0300466C
_08007180: .4byte gUnk_030051DC
_08007184: .4byte gUnk_03002920
_08007188: .4byte gUnk_03000820
_0800718C: .4byte 0x0000013F
_08007190: .4byte gUnk_03002920+0x142
_08007194: .4byte 0x00000145
_08007198: .4byte gUnk_03002920+0x138
_0800719C: .4byte 0x000001FF
_080071A0: .4byte 0xFFFFFE00
_080071A4: .4byte gUnk_03002920+0x13A
_080071A8:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _080071DC @ =gUnk_03002920+0x138
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
_080071DC: .4byte gUnk_03002920+0x138
_080071E0: .4byte 0x000001FF
_080071E4: .4byte 0xFFFFFE00
_080071E8:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08007330 @ =gUnk_03002920+0x138
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
	ldr r0, _0800733C @ =gUnk_03002920+0x13A
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_0800721E:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08007340 @ =gUnk_03000820
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
	ldr r1, _08007350 @ =gUnk_03002920+0x142
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
_08007330: .4byte gUnk_03002920+0x138
_08007334: .4byte 0x000001FF
_08007338: .4byte 0xFFFFFE00
_0800733C: .4byte gUnk_03002920+0x13A
_08007340: .4byte gUnk_03000820
_08007344: .4byte 0x000003FF
_08007348: .4byte 0xFFFFFC00
_0800734C: .4byte 0x00000141
_08007350: .4byte gUnk_03002920+0x142
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
	ldr r0, _080073D4 @ =gUnk_0300466C
	lsls r1, r1, #3
	ldr r2, _080073D8 @ =gUnk_08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _080073EC
	.align 2, 0
_080073D0: .4byte gUnk_03002920
_080073D4: .4byte gUnk_0300466C
_080073D8: .4byte gUnk_08078FC8
_080073DC:
	ldr r2, _08007460 @ =gUnk_0300466C
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
	ldr r7, _0800746C @ =gUnk_03000820
	ldr r0, _08007470 @ =0x0000015B
	add r0, sb
	mov sl, r0
	str r1, [sp, #8]
_08007406:
	ldr r1, _08007474 @ =gUnk_03002920+0x15E
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
	ldr r4, _0800747C @ =gUnk_03002920+0x154
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
	ldr r0, _08007488 @ =gUnk_03002920+0x156
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08007502
	.align 2, 0
_08007460: .4byte gUnk_0300466C
_08007464: .4byte gUnk_030051DC
_08007468: .4byte gUnk_03002920
_0800746C: .4byte gUnk_03000820
_08007470: .4byte 0x0000015B
_08007474: .4byte gUnk_03002920+0x15E
_08007478: .4byte 0x00000161
_0800747C: .4byte gUnk_03002920+0x154
_08007480: .4byte 0x000001FF
_08007484: .4byte 0xFFFFFE00
_08007488: .4byte gUnk_03002920+0x156
_0800748C:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _080074C0 @ =gUnk_03002920+0x154
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
_080074C0: .4byte gUnk_03002920+0x154
_080074C4: .4byte 0x000001FF
_080074C8: .4byte 0xFFFFFE00
_080074CC:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _0800760C @ =gUnk_03002920+0x154
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
	ldr r0, _08007618 @ =gUnk_03002920+0x156
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08007502:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _0800761C @ =gUnk_03000820
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
	ldr r1, _0800762C @ =gUnk_03002920+0x15E
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
_0800760C: .4byte gUnk_03002920+0x154
_08007610: .4byte 0x000001FF
_08007614: .4byte 0xFFFFFE00
_08007618: .4byte gUnk_03002920+0x156
_0800761C: .4byte gUnk_03000820
_08007620: .4byte 0x000003FF
_08007624: .4byte 0xFFFFFC00
_08007628: .4byte 0x0000015D
_0800762C: .4byte gUnk_03002920+0x15E
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
	ldr r0, _080076A8 @ =gUnk_0300466C
	lsls r1, r1, #3
	ldr r2, _080076AC @ =gUnk_08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _080076C0
	.align 2, 0
_080076A8: .4byte gUnk_0300466C
_080076AC: .4byte gUnk_08078FC8
_080076B0:
	ldr r2, _08007734 @ =gUnk_0300466C
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
	ldr r7, _08007740 @ =gUnk_03000820
	ldr r2, _08007744 @ =0x00000177
	add r2, sb
	mov sl, r2
	str r1, [sp, #0xc]
_080076DA:
	ldr r3, _08007748 @ =gUnk_03002920+0x17A
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
	ldr r2, _08007750 @ =gUnk_03002920+0x170
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
	ldr r4, _0800775C @ =gUnk_03002920+0x172
	ldrb r4, [r4]
	adds r1, r1, r4
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _080077D6
	.align 2, 0
_08007734: .4byte gUnk_0300466C
_08007738: .4byte gUnk_030051DC
_0800773C: .4byte gUnk_03002920
_08007740: .4byte gUnk_03000820
_08007744: .4byte 0x00000177
_08007748: .4byte gUnk_03002920+0x17A
_0800774C: .4byte 0x0000017D
_08007750: .4byte gUnk_03002920+0x170
_08007754: .4byte 0x000001FF
_08007758: .4byte 0xFFFFFE00
_0800775C: .4byte gUnk_03002920+0x172
_08007760:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007794 @ =gUnk_03002920+0x170
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
_08007794: .4byte gUnk_03002920+0x170
_08007798: .4byte 0x000001FF
_0800779C: .4byte 0xFFFFFE00
_080077A0:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _080078E0 @ =gUnk_03002920+0x170
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
	ldr r0, _080078EC @ =gUnk_03002920+0x172
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_080077D6:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _080078F0 @ =gUnk_03000820
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
	ldr r1, _08007900 @ =gUnk_03002920+0x17A
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
_080078E0: .4byte gUnk_03002920+0x170
_080078E4: .4byte 0x000001FF
_080078E8: .4byte 0xFFFFFE00
_080078EC: .4byte gUnk_03002920+0x172
_080078F0: .4byte gUnk_03000820
_080078F4: .4byte 0x000003FF
_080078F8: .4byte 0xFFFFFC00
_080078FC: .4byte 0x00000179
_08007900: .4byte gUnk_03002920+0x17A
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
	ldr r0, _08007988 @ =gUnk_0300466C
	lsls r1, r1, #3
	ldr r2, _0800798C @ =gUnk_08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _080079A0
	.align 2, 0
_08007988: .4byte gUnk_0300466C
_0800798C: .4byte gUnk_08078FC8
_08007990:
	ldr r2, _08007A14 @ =gUnk_0300466C
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
	ldr r7, _08007A20 @ =gUnk_03000820
	ldr r4, _08007A24 @ =0x00000193
	add r4, sb
	mov sl, r4
	str r1, [sp, #0x10]
_080079BA:
	ldr r1, _08007A28 @ =gUnk_03002920+0x196
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
	ldr r4, _08007A30 @ =gUnk_03002920+0x18C
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
	ldr r0, _08007A3C @ =gUnk_03002920+0x18E
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08007AB6
	.align 2, 0
_08007A14: .4byte gUnk_0300466C
_08007A18: .4byte gUnk_030051DC
_08007A1C: .4byte gUnk_03002920
_08007A20: .4byte gUnk_03000820
_08007A24: .4byte 0x00000193
_08007A28: .4byte gUnk_03002920+0x196
_08007A2C: .4byte 0x00000199
_08007A30: .4byte gUnk_03002920+0x18C
_08007A34: .4byte 0x000001FF
_08007A38: .4byte 0xFFFFFE00
_08007A3C: .4byte gUnk_03002920+0x18E
_08007A40:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007A74 @ =gUnk_03002920+0x18C
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
_08007A74: .4byte gUnk_03002920+0x18C
_08007A78: .4byte 0x000001FF
_08007A7C: .4byte 0xFFFFFE00
_08007A80:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08007BC0 @ =gUnk_03002920+0x18C
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
	ldr r0, _08007BCC @ =gUnk_03002920+0x18E
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08007AB6:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08007BD0 @ =gUnk_03000820
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
	ldr r1, _08007BE0 @ =gUnk_03002920+0x196
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
_08007BC0: .4byte gUnk_03002920+0x18C
_08007BC4: .4byte 0x000001FF
_08007BC8: .4byte 0xFFFFFE00
_08007BCC: .4byte gUnk_03002920+0x18E
_08007BD0: .4byte gUnk_03000820
_08007BD4: .4byte 0x000003FF
_08007BD8: .4byte 0xFFFFFC00
_08007BDC: .4byte 0x00000195
_08007BE0: .4byte gUnk_03002920+0x196
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
	ldr r0, _08007C68 @ =gUnk_0300466C
	lsls r1, r1, #3
	ldr r2, _08007C6C @ =gUnk_08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _08007C80
	.align 2, 0
_08007C68: .4byte gUnk_0300466C
_08007C6C: .4byte gUnk_08078FC8
_08007C70:
	ldr r2, _08007CF4 @ =gUnk_0300466C
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
	ldr r7, _08007D00 @ =gUnk_03000820
	ldr r4, _08007D04 @ =0x000001AF
	add r4, sb
	mov sl, r4
	str r1, [sp, #0x14]
_08007C9A:
	ldr r1, _08007D08 @ =gUnk_03002920+0x1B2
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
	ldr r4, _08007D10 @ =gUnk_03002920+0x1A8
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
	ldr r0, _08007D1C @ =gUnk_03002920+0x1AA
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08007D96
	.align 2, 0
_08007CF4: .4byte gUnk_0300466C
_08007CF8: .4byte gUnk_030051DC
_08007CFC: .4byte gUnk_03002920
_08007D00: .4byte gUnk_03000820
_08007D04: .4byte 0x000001AF
_08007D08: .4byte gUnk_03002920+0x1B2
_08007D0C: .4byte 0x000001B5
_08007D10: .4byte gUnk_03002920+0x1A8
_08007D14: .4byte 0x000001FF
_08007D18: .4byte 0xFFFFFE00
_08007D1C: .4byte gUnk_03002920+0x1AA
_08007D20:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08007D54 @ =gUnk_03002920+0x1A8
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
_08007D54: .4byte gUnk_03002920+0x1A8
_08007D58: .4byte 0x000001FF
_08007D5C: .4byte 0xFFFFFE00
_08007D60:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08007EA0 @ =gUnk_03002920+0x1A8
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
	ldr r0, _08007EAC @ =gUnk_03002920+0x1AA
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08007D96:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08007EB0 @ =gUnk_03000820
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
	ldr r1, _08007EC0 @ =gUnk_03002920+0x1B2
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
_08007EA0: .4byte gUnk_03002920+0x1A8
_08007EA4: .4byte 0x000001FF
_08007EA8: .4byte 0xFFFFFE00
_08007EAC: .4byte gUnk_03002920+0x1AA
_08007EB0: .4byte gUnk_03000820
_08007EB4: .4byte 0x000003FF
_08007EB8: .4byte 0xFFFFFC00
_08007EBC: .4byte 0x000001B1
_08007EC0: .4byte gUnk_03002920+0x1B2
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
	ldr r0, _08007F48 @ =gUnk_0300466C
	lsls r1, r1, #3
	ldr r2, _08007F4C @ =gUnk_08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _08007F60
	.align 2, 0
_08007F48: .4byte gUnk_0300466C
_08007F4C: .4byte gUnk_08078FC8
_08007F50:
	ldr r2, _08007FD4 @ =gUnk_0300466C
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
	ldr r7, _08007FE0 @ =gUnk_03000820
	ldr r4, _08007FE4 @ =0x000001CB
	add r4, sb
	mov sl, r4
	str r1, [sp, #0x18]
_08007F7A:
	ldr r1, _08007FE8 @ =gUnk_03002920+0x1CE
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
	ldr r4, _08007FF0 @ =gUnk_03002920+0x1C4
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
	ldr r0, _08007FFC @ =gUnk_03002920+0x1C6
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08008076
	.align 2, 0
_08007FD4: .4byte gUnk_0300466C
_08007FD8: .4byte gUnk_030051DC
_08007FDC: .4byte gUnk_03002920
_08007FE0: .4byte gUnk_03000820
_08007FE4: .4byte 0x000001CB
_08007FE8: .4byte gUnk_03002920+0x1CE
_08007FEC: .4byte 0x000001D1
_08007FF0: .4byte gUnk_03002920+0x1C4
_08007FF4: .4byte 0x000001FF
_08007FF8: .4byte 0xFFFFFE00
_08007FFC: .4byte gUnk_03002920+0x1C6
_08008000:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _08008034 @ =gUnk_03002920+0x1C4
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
_08008034: .4byte gUnk_03002920+0x1C4
_08008038: .4byte 0x000001FF
_0800803C: .4byte 0xFFFFFE00
_08008040:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08008180 @ =gUnk_03002920+0x1C4
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
	ldr r0, _0800818C @ =gUnk_03002920+0x1C6
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08008076:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08008190 @ =gUnk_03000820
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
	ldr r1, _080081A0 @ =gUnk_03002920+0x1CE
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
_08008180: .4byte gUnk_03002920+0x1C4
_08008184: .4byte 0x000001FF
_08008188: .4byte 0xFFFFFE00
_0800818C: .4byte gUnk_03002920+0x1C6
_08008190: .4byte gUnk_03000820
_08008194: .4byte 0x000003FF
_08008198: .4byte 0xFFFFFC00
_0800819C: .4byte 0x000001CD
_080081A0: .4byte gUnk_03002920+0x1CE
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
	ldr r1, _0800823C @ =gUnk_08078FC8
	adds r0, r0, r1
	ldr r1, _08008240 @ =gUnk_0300466C
	str r0, [r1]
	b _08008252
	.align 2, 0
_08008238: .4byte gUnk_03000830
_0800823C: .4byte gUnk_08078FC8
_08008240: .4byte gUnk_0300466C
_08008244:
	ldr r0, _080082B8 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _080082BC @ =gUnk_0300466C
	str r0, [r2]
_08008252:
	ldr r3, _080082BC @ =gUnk_0300466C
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
	ldr r2, _080082C4 @ =gUnk_03000820
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
_080082BC: .4byte gUnk_0300466C
_080082C0: .4byte gUnk_03002920
_080082C4: .4byte gUnk_03000820
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
	ldr r6, _08008450 @ =gUnk_03000820
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
_08008450: .4byte gUnk_03000820
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
	bl _08009064
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
	ldr r1, _08008510 @ =gUnk_08078FC8
	adds r0, r0, r1
	ldr r1, _08008514 @ =gUnk_0300466C
	str r0, [r1]
	b _08008526
	.align 2, 0
_0800850C: .4byte gUnk_03004C20
_08008510: .4byte gUnk_08078FC8
_08008514: .4byte gUnk_0300466C
_08008518:
	ldr r0, _08008598 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _0800859C @ =gUnk_0300466C
	str r0, [r2]
_08008526:
	ldr r4, _0800859C @ =gUnk_0300466C
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
	ldr r3, _080085A4 @ =gUnk_03000820
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
_0800859C: .4byte gUnk_0300466C
_080085A0: .4byte gUnk_03002920
_080085A4: .4byte gUnk_03000820
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
	ldr r6, _0800873C @ =gUnk_03000820
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
_0800873C: .4byte gUnk_03000820
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
	ldr r0, _080087E4 @ =gUnk_0300466C
	lsls r1, r1, #3
	ldr r2, _080087E8 @ =gUnk_08078FC8
	adds r1, r1, r2
	str r1, [r0]
	b _080087FC
	.align 2, 0
_080087DC: .4byte gUnk_03005400
_080087E0: .4byte 0x00000202
_080087E4: .4byte gUnk_0300466C
_080087E8: .4byte gUnk_08078FC8
_080087EC:
	ldr r2, _08008870 @ =gUnk_0300466C
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
	ldr r7, _0800887C @ =gUnk_03000820
	ldr r3, _08008880 @ =0x00000203
	add r3, sl
	mov sb, r3
	str r1, [sp, #0x24]
_08008816:
	ldr r4, _08008884 @ =gUnk_03002920+0x206
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
	ldr r4, _0800888C @ =gUnk_03002920+0x1FC
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
	ldr r0, _08008898 @ =gUnk_03002920+0x1FE
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
	lsls r0, r0, #4
	b _08008912
	.align 2, 0
_08008870: .4byte gUnk_0300466C
_08008874: .4byte gUnk_030051DC
_08008878: .4byte gUnk_03002920
_0800887C: .4byte gUnk_03000820
_08008880: .4byte 0x00000203
_08008884: .4byte gUnk_03002920+0x206
_08008888: .4byte 0x00000209
_0800888C: .4byte gUnk_03002920+0x1FC
_08008890: .4byte 0x000001FF
_08008894: .4byte 0xFFFFFE00
_08008898: .4byte gUnk_03002920+0x1FE
_0800889C:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r4, _080088D0 @ =gUnk_03002920+0x1FC
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
_080088D0: .4byte gUnk_03002920+0x1FC
_080088D4: .4byte 0x000001FF
_080088D8: .4byte 0xFFFFFE00
_080088DC:
	ldr r3, [r7]
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r4, _08008A1C @ =gUnk_03002920+0x1FC
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
	ldr r0, _08008A28 @ =gUnk_03002920+0x1FE
	ldrb r0, [r0]
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1c
_08008912:
	adds r1, r1, r0
	strb r1, [r3]
	ldr r6, _08008A2C @ =gUnk_03000820
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
	ldr r1, _08008A3C @ =gUnk_03002920+0x206
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
_08008A1C: .4byte gUnk_03002920+0x1FC
_08008A20: .4byte 0x000001FF
_08008A24: .4byte 0xFFFFFE00
_08008A28: .4byte gUnk_03002920+0x1FE
_08008A2C: .4byte gUnk_03000820
_08008A30: .4byte 0x000003FF
_08008A34: .4byte 0xFFFFFC00
_08008A38: .4byte 0x00000205
_08008A3C: .4byte gUnk_03002920+0x206
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
	ldr r1, _08008AC8 @ =gUnk_08078FC8
	adds r0, r0, r1
	ldr r1, _08008ACC @ =gUnk_0300466C
	str r0, [r1]
	b _08008ADE
	.align 2, 0
_08008AC8: .4byte gUnk_08078FC8
_08008ACC: .4byte gUnk_0300466C
_08008AD0:
	ldr r0, _08008B44 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _08008B48 @ =gUnk_0300466C
	str r0, [r2]
_08008ADE:
	ldr r3, _08008B48 @ =gUnk_0300466C
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
	ldr r2, _08008B50 @ =gUnk_03000820
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
_08008B48: .4byte gUnk_0300466C
_08008B4C: .4byte gUnk_03002920
_08008B50: .4byte gUnk_03000820
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
	ldr r6, _08008CDC @ =gUnk_03000820
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
_08008CDC: .4byte gUnk_03000820
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
	ldr r1, _08008DD0 @ =gUnk_08078FC8
	adds r0, r0, r1
	ldr r1, _08008DD4 @ =gUnk_0300466C
	str r0, [r1]
	b _08008DE6
	.align 2, 0
_08008DC4: .4byte gUnk_03005428
_08008DC8: .4byte gUnk_03002920
_08008DCC: .4byte gUnk_03005400
_08008DD0: .4byte gUnk_08078FC8
_08008DD4: .4byte gUnk_0300466C
_08008DD8:
	ldr r0, _08008E4C @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _08008E50 @ =gUnk_0300466C
	str r0, [r2]
_08008DE6:
	ldr r3, _08008E50 @ =gUnk_0300466C
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
	ldr r2, _08008E58 @ =gUnk_03000820
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
_08008E50: .4byte gUnk_0300466C
_08008E54: .4byte gUnk_03002920
_08008E58: .4byte gUnk_03000820
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
	ldr r6, _08008FE4 @ =gUnk_03000820
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
_08008FE4: .4byte gUnk_03000820
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
_08009064:
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
	ldr r1, _080090A0 @ =gUnk_08078FC8
	adds r0, r0, r1
	ldr r4, _080090A4 @ =gUnk_0300466C
	str r0, [r4]
	b _080090B6
	.align 2, 0
_080090A0: .4byte gUnk_08078FC8
_080090A4: .4byte gUnk_0300466C
_080090A8:
	ldr r0, _0800911C @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, _08009120 @ =gUnk_0300466C
	str r0, [r1]
_080090B6:
	ldr r2, _08009120 @ =gUnk_0300466C
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
	ldr r0, _08009128 @ =gUnk_03000820
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
_08009120: .4byte gUnk_0300466C
_08009124: .4byte gUnk_03002920
_08009128: .4byte gUnk_03000820
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
	ldr r6, _080092B4 @ =gUnk_03000820
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
_080092B4: .4byte gUnk_03000820
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
	ldr r4, _0800935C @ =gUnk_08078FC8
	adds r0, r0, r4
	ldr r1, _08009360 @ =gUnk_0300466C
	str r0, [r1]
	b _08009372
	.align 2, 0
_08009358: .4byte gUnk_03005428
_0800935C: .4byte gUnk_08078FC8
_08009360: .4byte gUnk_0300466C
_08009364:
	lsls r1, r0, #3
	subs r1, #0x68
	ldr r2, _080093D8 @ =gUnk_030051DC
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r3, _080093DC @ =gUnk_0300466C
	str r0, [r3]
_08009372:
	ldr r4, _080093DC @ =gUnk_0300466C
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
	ldr r3, _080093E4 @ =gUnk_03000820
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
_080093DC: .4byte gUnk_0300466C
_080093E0: .4byte gUnk_03002920
_080093E4: .4byte gUnk_03000820
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
	ldr r6, _08009570 @ =gUnk_03000820
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
_08009570: .4byte gUnk_03000820
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
	ldr r1, _08009630 @ =gUnk_08078FC8
	adds r0, r0, r1
	ldr r1, _08009634 @ =gUnk_0300466C
	str r0, [r1]
	b _08009646
	.align 2, 0
_08009628: .4byte gUnk_03005428
_0800962C: .4byte gUnk_03000830
_08009630: .4byte gUnk_08078FC8
_08009634: .4byte gUnk_0300466C
_08009638:
	ldr r0, _080096B8 @ =gUnk_030051DC
	lsls r1, r1, #3
	subs r1, #0x68
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r2, _080096BC @ =gUnk_0300466C
	str r0, [r2]
_08009646:
	ldr r4, _080096BC @ =gUnk_0300466C
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
	ldr r4, _080096C4 @ =gUnk_03000820
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
_080096BC: .4byte gUnk_0300466C
_080096C0: .4byte gUnk_03002920
_080096C4: .4byte gUnk_03000820
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
	ldr r6, _08009850 @ =gUnk_03000820
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
_08009850: .4byte gUnk_03000820
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
