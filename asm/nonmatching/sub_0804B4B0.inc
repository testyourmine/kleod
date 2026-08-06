	.include "asm/macros.inc"

	nonmatching sub_0804B4B0

    .text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r3, r1, #0
	ldr r2, _0804B5E4 @ =gUnk_08057ACC
	lsls r1, r3, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	mov sb, r0
	adds r1, r1, r2
	ldrb r3, [r1]
	ldr r0, _0804B5E8 @ =gUnk_030034A0
	ldr r1, [r0]
	mov r2, sb
	adds r0, r1, r2
	ldrb r0, [r0, #1]
	str r0, [sp, #0xc]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0804B4E8
	b _0804B604
_0804B4E8:
	cmp r2, #2
	beq _0804B4EE
	b _0804B604
_0804B4EE:
	movs r4, #0x10
	mov sl, r4
	mov r6, sl
	ldr r0, [sp, #0xc]
	lsls r6, r0
	mov sl, r6
	ldr r4, _0804B5EC @ =gBgInfo
	ldr r0, _0804B5F0 @ =gUnk_08189CCC
	lsls r1, r3, #3
	adds r1, r1, r0
	ldr r0, [r1]
	bl DecompressAlloc
	mov r8, r0
	movs r1, #4
	add r8, r1
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r2, [r0]
	cmp r3, r2
	bge _0804B5A0
	ldr r4, _0804B5EC @ =gBgInfo
	adds r4, #0x48
	mov sb, r4
	lsrs r6, r6, #1
	str r6, [sp, #0x34]
	movs r6, #0x80
	lsls r6, r6, #0x18
	mov ip, r6
_0804B52A:
	movs r7, #0
	mov r6, sl
	muls r6, r3, r6
	adds r5, r3, #1
	mov r0, sb
	ldrh r0, [r0]
	cmp r7, r0
	bge _0804B554
	ldr r4, _0804B5F4 @ =gUnk_03004DB0
	ldr r2, _0804B5F8 @ =gBgInfo+0x48
_0804B53E:
	adds r1, r7, r4
	ldrh r0, [r2]
	muls r0, r3, r0
	adds r0, r7, r0
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	adds r7, #1
	ldrh r1, [r2]
	cmp r7, r1
	blt _0804B53E
_0804B554:
	mov r2, sb
	ldrh r7, [r2]
	cmp r7, sl
	bhs _0804B56A
	ldr r2, _0804B5F4 @ =gUnk_03004DB0
	movs r1, #0
_0804B560:
	adds r0, r7, r2
	strb r1, [r0]
	adds r7, #1
	cmp r7, sl
	blo _0804B560
_0804B56A:
	ldr r1, _0804B5FC @ =0x040000D4
	ldr r3, _0804B5F4 @ =gUnk_03004DB0
	str r3, [r1]
	ldr r4, _0804B5EC @ =gBgInfo
	ldr r0, [r4, #0x3c]
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, [sp, #0x34]
	mov r6, ip
	orrs r0, r6
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	ands r0, r6
	cmp r0, #0
	beq _0804B596
	movs r2, #0x80
	lsls r2, r2, #0x18
_0804B58E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0804B58E
_0804B596:
	adds r3, r5, #0
	ldr r0, _0804B600 @ =0x0300347A
	ldrh r0, [r0]
	cmp r3, r0
	blt _0804B52A
_0804B5A0:
	ldr r1, _0804B5EC @ =gBgInfo
	adds r0, r1, #0
	adds r0, #0x4a
	ldrh r3, [r0]
	mov r6, r8
	subs r6, #4
	cmp r3, sl
	bhs _0804B5DC
	mov r5, sp
	movs r7, #0
	ldr r2, _0804B5FC @ =0x040000D4
	ldr r0, [r1, #0x3c]
	mov r1, sl
	lsrs r4, r1, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r4, r1
	mov r1, sl
	muls r1, r3, r1
	adds r1, r1, r0
_0804B5C8:
	strh r7, [r5]
	mov r0, sp
	str r0, [r2]
	str r1, [r2, #4]
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	add r1, sl
	adds r3, #1
	cmp r3, sl
	blo _0804B5C8
_0804B5DC:
	adds r0, r6, #0
	bl thunk_HeapFree
	b _0804B900
	.align 2, 0
_0804B5E4: .4byte gUnk_08057ACC
_0804B5E8: .4byte gUnk_030034A0
_0804B5EC: .4byte gBgInfo
_0804B5F0: .4byte gUnk_08189CCC
_0804B5F4: .4byte gUnk_03004DB0
_0804B5F8: .4byte gBgInfo+0x48
_0804B5FC: .4byte 0x040000D4
_0804B600: .4byte 0x0300347A
_0804B604:
	ldr r2, _0804B634 @ =gUnk_08189CCC
	mov r0, sb
	subs r0, #2
	lsls r0, r0, #2
	lsls r1, r3, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r0, [r0]
	bl DecompressAlloc
	adds r1, r0, #0
	adds r1, #4
	str r1, [sp, #8]
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0804B638
	movs r3, #2
	str r3, [sp, #4]
	cmp r2, #3
	bne _0804B63C
	movs r4, #4
	str r4, [sp, #4]
	b _0804B63C
	.align 2, 0
_0804B634: .4byte gUnk_08189CCC
_0804B638:
	movs r6, #1
	str r6, [sp, #4]
_0804B63C:
	movs r7, #0
	ldr r0, [sp, #8]
	subs r0, #4
	str r0, [sp, #0x2c]
	ldr r1, [sp, #4]
	cmp r7, r1
	blt _0804B64C
	b _0804B8FA
_0804B64C:
	mov r2, sb
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
_0804B658:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	beq _0804B6C0
	cmp r3, #1
	bgt _0804B668
	cmp r3, #0
	beq _0804B676
	b _0804B80E
_0804B668:
	ldr r4, [sp, #0xc]
	cmp r4, #2
	beq _0804B728
	cmp r4, #3
	bne _0804B674
	b _0804B790
_0804B674:
	b _0804B80E
_0804B676:
	ldr r6, [sp, #0x1c]
	ldr r0, _0804B6BC @ =gBgInfo
	adds r1, r6, r0
	ldrh r0, [r1, #0x10]
	movs r2, #0x20
	mov sl, r2
	mov r3, sb
	lsls r2, r3, #3
	cmp r0, #0x1f
	bhi _0804B68E
	adds r1, r0, #0
	mov sl, r1
_0804B68E:
	mov r6, sl
	movs r4, #0x20
	subs r6, r4, r6
	mov r8, r6
	cmp r6, #0x20
	bls _0804B69C
	mov r8, r4
_0804B69C:
	mov r1, sb
	subs r0, r2, r1
	lsls r0, r0, #2
	ldr r3, _0804B6BC @ =gBgInfo
	adds r2, r0, r3
	ldrh r0, [r2, #0x12]
	movs r4, #0x20
	str r4, [sp, #0x10]
	cmp r0, #0x1f
	bhi _0804B6B4
	ldrh r2, [r2, #0x12]
	str r2, [sp, #0x10]
_0804B6B4:
	movs r6, #0
	str r6, [sp, #0x14]
	movs r0, #0
	b _0804B80C
	.align 2, 0
_0804B6BC: .4byte gBgInfo
_0804B6C0:
	cmp r7, #0
	beq _0804B6E4
	ldr r2, [sp, #0x1c]
	ldr r3, _0804B6E0 @ =gBgInfo
	adds r1, r2, r3
	ldrh r0, [r1, #0x10]
	movs r4, #0x20
	mov sl, r4
	mov r6, sb
	lsls r2, r6, #3
	cmp r0, #0x1f
	bhi _0804B6EC
	adds r1, r0, #0
	mov sl, r1
	b _0804B6EC
	.align 2, 0
_0804B6E0: .4byte gBgInfo
_0804B6E4:
	movs r0, #0x20
	mov sl, r0
	mov r1, sb
	lsls r2, r1, #3
_0804B6EC:
	cmp r7, #0
	beq _0804B700
	mov r4, sl
	movs r3, #0x20
	subs r4, r3, r4
	mov r8, r4
	cmp r4, #0x20
	bls _0804B704
	mov r8, r3
	b _0804B704
_0804B700:
	movs r6, #0
	mov r8, r6
_0804B704:
	mov r1, sb
	subs r0, r2, r1
	lsls r0, r0, #2
	ldr r3, _0804B724 @ =gBgInfo
	adds r2, r0, r3
	ldrh r0, [r2, #0x12]
	movs r4, #0x20
	str r4, [sp, #0x10]
	cmp r0, #0x1f
	bhi _0804B71C
	ldrh r2, [r2, #0x12]
	str r2, [sp, #0x10]
_0804B71C:
	lsls r6, r7, #5
	str r6, [sp, #0x14]
	movs r0, #0
	b _0804B80C
	.align 2, 0
_0804B724: .4byte gBgInfo
_0804B728:
	ldr r2, [sp, #0x1c]
	ldr r3, _0804B76C @ =gBgInfo
	adds r1, r2, r3
	ldrh r0, [r1, #0x10]
	movs r4, #0x20
	mov sl, r4
	mov r6, sb
	lsls r2, r6, #3
	cmp r0, #0x1f
	bhi _0804B740
	adds r1, r0, #0
	mov sl, r1
_0804B740:
	mov r1, sl
	movs r0, #0x20
	subs r1, r0, r1
	mov r8, r1
	cmp r1, #0x20
	bls _0804B74E
	mov r8, r0
_0804B74E:
	cmp r7, #0
	beq _0804B770
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _0804B76C @ =gBgInfo
	adds r1, r0, r4
	ldrh r0, [r1, #0x12]
	movs r6, #0x20
	str r6, [sp, #0x10]
	cmp r0, #0x1f
	bhi _0804B774
	ldrh r1, [r1, #0x12]
	str r1, [sp, #0x10]
	b _0804B774
	.align 2, 0
_0804B76C: .4byte gBgInfo
_0804B770:
	movs r0, #0x20
	str r0, [sp, #0x10]
_0804B774:
	movs r1, #0
	str r1, [sp, #0x14]
	mov r3, sb
	subs r0, r2, r3
	lsls r0, r0, #2
	ldr r4, _0804B78C @ =gBgInfo
	adds r0, r0, r4
	ldrh r0, [r0, #0x12]
	adds r6, r7, #0
	muls r6, r0, r6
	str r6, [sp, #0x18]
	b _0804B80E
	.align 2, 0
_0804B78C: .4byte gBgInfo
_0804B790:
	cmp r7, #0
	beq _0804B7B0
	ldr r0, [sp, #0x1c]
	ldr r2, _0804B7AC @ =gBgInfo
	adds r1, r0, r2
	ldrh r0, [r1, #0x10]
	movs r3, #0x20
	mov sl, r3
	cmp r0, #0x1f
	bhi _0804B7B4
	adds r1, r0, #0
	mov sl, r1
	b _0804B7B4
	.align 2, 0
_0804B7AC: .4byte gBgInfo
_0804B7B0:
	movs r4, #0x20
	mov sl, r4
_0804B7B4:
	cmp r7, #0
	beq _0804B7C8
	mov r0, sl
	movs r6, #0x20
	subs r0, r6, r0
	mov r8, r0
	cmp r0, #0x20
	bls _0804B7CC
	mov r8, r6
	b _0804B7CC
_0804B7C8:
	movs r1, #0x20
	mov r8, r1
_0804B7CC:
	cmp r7, #0
	beq _0804B7EC
	ldr r2, [sp, #0x1c]
	ldr r3, _0804B7E8 @ =gBgInfo
	adds r1, r2, r3
	ldrh r0, [r1, #0x12]
	movs r4, #0x20
	str r4, [sp, #0x10]
	cmp r0, #0x1f
	bhi _0804B7F0
	ldrh r1, [r1, #0x12]
	str r1, [sp, #0x10]
	b _0804B7F0
	.align 2, 0
_0804B7E8: .4byte gBgInfo
_0804B7EC:
	movs r6, #0x20
	str r6, [sp, #0x10]
_0804B7F0:
	movs r0, #2
	ands r0, r7
	rsbs r0, r0, #0
	asrs r0, r0, #0x1f
	movs r1, #0x20
	ands r0, r1
	str r0, [sp, #0x14]
	movs r1, #1
	ands r1, r7
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r2, #0x20
	ands r0, r2
_0804B80C:
	str r0, [sp, #0x18]
_0804B80E:
	movs r3, #0
	adds r4, r7, #1
	str r4, [sp, #0x30]
	ldr r6, [sp, #0x10]
	cmp r3, r6
	bhs _0804B8BC
	ldr r0, _0804B910 @ =0x040000D4
	mov ip, r0
	ldr r1, [sp, #0x20]
	ldr r2, _0804B914 @ =0x03003434
	adds r1, r1, r2
	str r1, [sp, #0x24]
	movs r4, #0x81
	lsls r4, r4, #0x18
	mov r6, r8
	orrs r6, r4
	str r6, [sp, #0x28]
_0804B830:
	mov r0, sb
	lsls r2, r0, #3
	lsls r5, r3, #6
	lsls r1, r7, #0xb
	str r1, [sp, #0x38]
	mov r4, r8
	cmp r4, #0
	beq _0804B864
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r6, ip
	str r1, [r6]
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	adds r0, r0, r5
	ldr r4, [sp, #0x38]
	adds r0, r0, r4
	mov r6, sl
	lsls r1, r6, #1
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #4]
	ldr r4, [sp, #0x28]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
_0804B864:
	ldr r4, _0804B910 @ =0x040000D4
	ldr r6, [sp, #0x18]
	adds r1, r3, r6
	mov r0, sb
	subs r2, r2, r0
	lsls r2, r2, #2
	ldr r6, _0804B918 @ =gBgInfo
	adds r0, r2, r6
	ldrh r0, [r0, #0x10]
	muls r0, r1, r0
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldr r6, [sp, #0x14]
	lsls r1, r6, #1
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, _0804B914 @ =0x03003434
	adds r2, r2, r0
	ldr r0, [r2]
	adds r0, r0, r5
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [r4, #4]
	mov r0, sl
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	ands r0, r2
	adds r5, r3, #1
	cmp r0, #0
	beq _0804B8B4
	adds r1, r2, #0
_0804B8AC:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804B8AC
_0804B8B4:
	adds r3, r5, #0
	ldr r4, [sp, #0x10]
	cmp r3, r4
	blo _0804B830
_0804B8BC:
	ldr r3, [sp, #0x10]
	cmp r3, #0x1f
	bgt _0804B8F0
	mov r6, sp
	ldr r2, _0804B910 @ =0x040000D4
	ldr r0, [sp, #0x20]
	ldr r1, _0804B914 @ =0x03003434
	adds r5, r0, r1
	movs r4, #0
	mov ip, r4
	lsls r4, r7, #0xb
	ldr r7, _0804B91C @ =0x81000020
_0804B8D4:
	mov r0, ip
	strh r0, [r6]
	mov r1, sp
	str r1, [r2]
	ldr r0, [r5]
	adds r0, r0, r4
	lsls r1, r3, #6
	adds r0, r0, r1
	str r0, [r2, #4]
	str r7, [r2, #8]
	ldr r0, [r2, #8]
	adds r3, #1
	cmp r3, #0x1f
	ble _0804B8D4
_0804B8F0:
	ldr r7, [sp, #0x30]
	ldr r2, [sp, #4]
	cmp r7, r2
	bge _0804B8FA
	b _0804B658
_0804B8FA:
	ldr r0, [sp, #0x2c]
	bl thunk_HeapFree
_0804B900:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B910: .4byte 0x040000D4
_0804B914: .4byte 0x03003434
_0804B918: .4byte gBgInfo
_0804B91C: .4byte 0x81000020
