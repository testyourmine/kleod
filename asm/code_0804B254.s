	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0804B254
sub_0804B254: @ 0x0804B254
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	bx lr

	thumb_func_start sub_0804B260
sub_0804B260: @ 0x0804B260
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_0804B270
sub_0804B270: @ 0x0804B270
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x18
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_0804B288
sub_0804B288: @ 0x0804B288
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x18
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_0804B2A0
sub_0804B2A0: @ 0x0804B2A0
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r2, #0
	cmp r0, #0
	beq _0804B2D6
	cmp r1, #0x10
	bhi _0804B2B8
	cmp r2, #0x10
	bls _0804B2D2
_0804B2B8:
	cmp r1, #0x20
	bhi _0804B2C0
	cmp r2, #0x20
	bls _0804B2CE
_0804B2C0:
	movs r0, #3
	cmp r1, #0x40
	bhi _0804B2EA
	cmp r2, #0x40
	bhi _0804B2EA
	movs r0, #2
	b _0804B2EA
_0804B2CE:
	movs r0, #1
	b _0804B2EA
_0804B2D2:
	movs r0, #0
	b _0804B2EA
_0804B2D6:
	movs r2, #0
	cmp r1, #0x20
	bls _0804B2DE
	movs r2, #1
_0804B2DE:
	cmp r3, #0x20
	bls _0804B2E8
	movs r0, #2
	orrs r0, r2
	b _0804B2EA
_0804B2E8:
	adds r0, r2, #0
_0804B2EA:
	bx lr

	thumb_func_start sub_0804B2EC
sub_0804B2EC: @ 0x0804B2EC
	push {r4, r5, lr}
	ldr r5, _0804B350 @ =0x04000040
	ldr r0, _0804B354 @ =gUnk_030034A0
	ldr r2, [r0]
	ldrh r1, [r2, #8]
	lsls r1, r1, #4
	ldr r0, _0804B358 @ =0xFFFFFF00
	adds r4, r0, #0
	ands r1, r4
	ldrh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r3, #0xff
	ands r0, r3
	orrs r1, r0
	strh r1, [r5]
	adds r5, #4
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #4
	ands r1, r4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r3
	orrs r1, r0
	strh r1, [r5]
	subs r5, #2
	ldrh r1, [r2, #0xc]
	lsls r1, r1, #4
	ands r1, r4
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r3
	orrs r1, r0
	strh r1, [r5]
	adds r5, #4
	ldrh r1, [r2, #0xe]
	lsls r1, r1, #4
	ands r1, r4
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r3
	orrs r1, r0
	strh r1, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B350: .4byte 0x04000040
_0804B354: .4byte gUnk_030034A0
_0804B358: .4byte 0xFFFFFF00

	thumb_func_start sub_0804B35C
sub_0804B35C: @ 0x0804B35C
	ldr r1, _0804B414 @ =gHeldKeys
	ldrh r2, [r1]
	movs r0, #4
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _0804B410
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0804B388
	ldr r2, _0804B418 @ =gBg2YMag
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bls _0804B388
	strh r1, [r2]
_0804B388:
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804B3A8
	ldr r2, _0804B418 @ =gBg2YMag
	ldrh r0, [r2]
	subs r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _0804B3A8
	movs r0, #3
	strh r0, [r2]
_0804B3A8:
	ldrh r1, [r3]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804B3C8
	ldr r2, _0804B41C @ =gBg2XMag
	ldrh r0, [r2]
	subs r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _0804B3C8
	movs r0, #3
	strh r0, [r2]
_0804B3C8:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804B3E8
	ldr r2, _0804B41C @ =gBg2XMag
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bls _0804B3E8
	strh r1, [r2]
_0804B3E8:
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804B3FC
	ldr r1, _0804B420 @ =gBg2Alpha
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0804B3FC:
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804B410
	ldr r1, _0804B420 @ =gBg2Alpha
	ldrb r0, [r1]
	adds r0, #0xff
	strb r0, [r1]
_0804B410:
	bx lr
	.align 2, 0
_0804B414: .4byte gHeldKeys
_0804B418: .4byte gBg2YMag
_0804B41C: .4byte gBg2XMag
_0804B420: .4byte gBg2Alpha

	thumb_func_start sub_0804B424
sub_0804B424: @ 0x0804B424
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl DecompressAlloc
	adds r7, r0, #0
	adds r1, r5, #0
	bl Decompress
	ldr r1, _0804B460 @ =0x040000D4
	adds r0, r7, #4
	str r0, [r1]
	str r6, [r1, #4]
	lsrs r4, r4, #1
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r4, r2
	str r4, [r1, #8]
	ldr r0, [r1, #8]
_0804B44C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0804B44C
	adds r0, r7, #0
	bl thunk_HeapFree
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B460: .4byte 0x040000D4

	thumb_func_start sub_0804B464
sub_0804B464: @ 0x0804B464
	push {r4, r5, lr}
	ldr r5, _0804B4A4 @ =0x08189BCC
	ldr r4, _0804B4A8 @ =0x08057ACC
	lsls r1, r1, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r4, #1
	adds r0, r1, r0
	ldrb r3, [r0]
	subs r2, r3, #2
	lsls r2, r2, #2
	adds r1, r1, r4
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r0, [r2]
	ldr r1, _0804B4AC @ =gBgInfo
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, r2, r1
	ldr r1, [r2]
	ldrh r3, [r2, #0x16]
	ldrb r2, [r2, #0x18]
	muls r2, r3, r2
	bl sub_0804B424
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B4A4: .4byte 0x08189BCC
_0804B4A8: .4byte 0x08057ACC
_0804B4AC: .4byte gBgInfo

	thumb_func_start sub_0804B4B0
sub_0804B4B0: @ 0x0804B4B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r3, r1, #0
	ldr r2, _0804B5E4 @ =0x08057ACC
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
	ldr r0, _0804B5F0 @ =0x08189CCC
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
_0804B5E4: .4byte 0x08057ACC
_0804B5E8: .4byte gUnk_030034A0
_0804B5EC: .4byte gBgInfo
_0804B5F0: .4byte 0x08189CCC
_0804B5F4: .4byte gUnk_03004DB0
_0804B5F8: .4byte gBgInfo+0x48
_0804B5FC: .4byte 0x040000D4
_0804B600: .4byte 0x0300347A
_0804B604:
	ldr r2, _0804B634 @ =0x08189CCC
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
_0804B634: .4byte 0x08189CCC
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

	thumb_func_start sub_0804B920
sub_0804B920: @ 0x0804B920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0804B9F8 @ =0x08057ACC
	lsls r1, r1, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r7, [r0]
	adds r1, r1, r2
	ldrb r5, [r1]
	ldr r2, _0804B9FC @ =gBgInfo
	lsls r1, r7, #3
	subs r1, r1, r7
	lsls r1, r1, #2
	adds r6, r1, r2
	lsls r0, r5, #1
	mov r8, r0
	mov r3, r8
	subs r3, #2
	adds r3, r7, r3
	ldr r4, _0804BA00 @ =0x080578D4
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0xe
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r0, r0, r4
	str r0, [r6]
	adds r2, #4
	adds r1, r1, r2
	ldr r2, _0804BA04 @ =0x08057914
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0xb
	adds r0, r0, r4
	str r0, [r1]
	movs r2, #0
	strh r2, [r6, #8]
	strh r2, [r6, #0xa]
	ldr r0, _0804BA08 @ =0x08057714
	subs r4, r7, #2
	mov sl, r4
	lsls r1, r4, #1
	lsls r5, r5, #2
	adds r1, r1, r5
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r6, #0x10]
	ldr r0, _0804BA0C @ =0x08057794
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r6, #0x12]
	ldr r0, _0804BA10 @ =0x08057814
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r6, #0x16]
	ldr r0, _0804BA14 @ =0x08057894
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	strh r2, [r6, #0x14]
	ldr r5, _0804BA18 @ =gUnk_030034A0
	ldr r2, [r5]
	movs r4, #0
	ldr r0, _0804BA1C @ =0x080576D4
	mov sb, r0
	add r3, sb
	ldrb r0, [r3]
	cmp r0, #0x80
	bne _0804B9B6
	movs r4, #1
_0804B9B6:
	ldrb r1, [r2, #1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #1]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r0, [r3]
	ldr r1, _0804BA20 @ =0x0000FFF8
	ands r1, r0
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r0, r1
	strh r0, [r3]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	ldrh r1, [r6, #0x10]
	ldrh r2, [r6, #0x12]
	bl sub_0804B2A0
	ldr r1, [r5]
	adds r1, #3
	add r1, sl
	strb r0, [r1]
	cmp r7, #2
	beq _0804BA24
	cmp r7, #3
	beq _0804BA64
	b _0804BA9A
	.align 2, 0
_0804B9F8: .4byte 0x08057ACC
_0804B9FC: .4byte gBgInfo
_0804BA00: .4byte 0x080578D4
_0804BA04: .4byte 0x08057914
_0804BA08: .4byte 0x08057714
_0804BA0C: .4byte 0x08057794
_0804BA10: .4byte 0x08057814
_0804BA14: .4byte 0x08057894
_0804BA18: .4byte gUnk_030034A0
_0804BA1C: .4byte 0x080576D4
_0804BA20: .4byte 0x0000FFF8
_0804BA24:
	ldr r3, _0804BA58 @ =0x0400000C
	mov r0, r8
	add r0, sb
	ldrb r0, [r0]
	movs r2, #2
	orrs r2, r0
	ldr r0, [r5]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0xe
	orrs r2, r0
	ldr r0, _0804BA5C @ =0x08057914
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r4, #0x81
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	orrs r2, r0
	ldr r0, _0804BA60 @ =0x080578D4
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	orrs r2, r0
	strh r2, [r3]
	b _0804BA9A
	.align 2, 0
_0804BA58: .4byte 0x0400000C
_0804BA5C: .4byte 0x08057914
_0804BA60: .4byte 0x080578D4
_0804BA64:
	ldr r4, _0804BAA8 @ =0x0400000E
	mov r3, r8
	adds r3, #1
	mov r1, sb
	adds r0, r3, r1
	ldrb r0, [r0]
	movs r2, #2
	orrs r2, r0
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0xe
	orrs r2, r0
	ldr r5, _0804BAAC @ =0x08057914
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r5, #0x81
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	orrs r2, r0
	ldr r0, _0804BAB0 @ =0x080578D4
	adds r3, r3, r0
	ldrb r0, [r3]
	lsls r0, r0, #2
	orrs r2, r0
	strh r2, [r4]
_0804BA9A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BAA8: .4byte 0x0400000E
_0804BAAC: .4byte 0x08057914
_0804BAB0: .4byte 0x080578D4

	thumb_func_start sub_0804BAB4
sub_0804BAB4: @ 0x0804BAB4
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0804BAD0 @ =0x08189B4C
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0xe0
	lsls r2, r2, #1
	bl DecompressDma
	pop {r0}
	bx r0
	.align 2, 0
_0804BAD0: .4byte 0x08189B4C

	thumb_func_start sub_0804BAD4
sub_0804BAD4: @ 0x0804BAD4
	push {lr}
	ldr r1, _0804BAF0 @ =0x08189AFC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl DecompressAlloc
	ldr r1, _0804BAF4 @ =0x030007D0
	str r0, [r1]
	ldr r1, _0804BAF8 @ =0x03004D84
	adds r0, #4
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804BAF0: .4byte 0x08189AFC
_0804BAF4: .4byte 0x030007D0
_0804BAF8: .4byte 0x03004D84

	thumb_func_start sub_0804BAFC
sub_0804BAFC: @ 0x0804BAFC
	push {lr}
	ldr r0, _0804BB0C @ =0x030007D0
	ldr r0, [r0]
	bl thunk_HeapFree
	pop {r0}
	bx r0
	.align 2, 0
_0804BB0C: .4byte 0x030007D0

	thumb_func_start sub_0804BB10
sub_0804BB10: @ 0x0804BB10
	sub sp, #4
	mov r1, sp
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804BB30 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0804BB34 @ =gBgTilemapBufs+0x800
	str r0, [r1, #4]
	ldr r0, _0804BB38 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0804BB30: .4byte 0x040000D4
_0804BB34: .4byte gBgTilemapBufs+0x800
_0804BB38: .4byte 0x81000400

	thumb_func_start sub_0804BB3C
sub_0804BB3C: @ 0x0804BB3C
	push {r4, lr}
	sub sp, #4
	ldr r4, _0804BB68 @ =gUnk_030034A0
	movs r0, #0x20
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4]
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0804BB6C @ =0x040000D4
	str r2, [r1]
	str r0, [r1, #4]
	ldr r0, _0804BB70 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB68: .4byte gUnk_030034A0
_0804BB6C: .4byte 0x040000D4
_0804BB70: .4byte 0x81000010

	thumb_func_start sub_0804BB74
sub_0804BB74: @ 0x0804BB74
	push {lr}
	ldr r0, _0804BB84 @ =gUnk_030034A0
	ldr r0, [r0]
	bl thunk_HeapFree
	pop {r0}
	bx r0
	.align 2, 0
_0804BB84: .4byte gUnk_030034A0

	thumb_func_start sub_0804BB88
sub_0804BB88: @ 0x0804BB88
	push {r4, lr}
	sub sp, #4
	ldr r4, _0804BBB4 @ =0x030052A4
	movs r0, #0x90
	lsls r0, r0, #3
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4]
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0804BBB8 @ =0x040000D4
	str r2, [r1]
	str r0, [r1, #4]
	ldr r0, _0804BBBC @ =0x81000240
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BBB4: .4byte 0x030052A4
_0804BBB8: .4byte 0x040000D4
_0804BBBC: .4byte 0x81000240

	thumb_func_start sub_0804BBC0
sub_0804BBC0: @ 0x0804BBC0
	push {lr}
	ldr r0, _0804BBD0 @ =0x030052A4
	ldr r0, [r0]
	bl thunk_HeapFree
	pop {r0}
	bx r0
	.align 2, 0
_0804BBD0: .4byte 0x030052A4

	thumb_func_start sub_0804BBD4
sub_0804BBD4: @ 0x0804BBD4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r2, _0804BCC8 @ =gBgInfo
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r2]
	ldr r0, _0804BCCC @ =0x06003000
	str r0, [r2, #4]
	movs r3, #0
	movs r0, #8
	strh r0, [r2, #8]
	strh r3, [r2, #0xa]
	movs r4, #0x20
	movs r0, #0x20
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	strb r4, [r2, #0x18]
	movs r0, #0x1c
	strh r0, [r2, #0x16]
	strh r3, [r2, #0x14]
	mov r0, sp
	strh r3, [r0]
	ldr r0, _0804BCD0 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r2, _0804BCD4 @ =0x81000200
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _0804BCD8 @ =0x082EA584
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	subs r2, #0x80
	bl sub_0804B424
	ldr r5, _0804BCDC @ =0x082EA730
	ldr r0, [r5]
	ldr r1, _0804BCE0 @ =0x7FFFFFFF
	ands r0, r1
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _0804BCE4 @ =gBgDataPtrs
	str r0, [r4, #4]
	adds r1, r5, #0
	bl Decompress
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	movs r2, #0
	ldr r0, _0804BCE8 @ =0x000003FF
	mov ip, r0
	ldr r7, _0804BCEC @ =0x00000FFF
	mov r8, r4
	ldr r6, _0804BCF0 @ =gBgTilemapBufs
	adds r3, r6, #0
	ldr r1, _0804BCF4 @ =0xFFFFE000
	adds r5, r1, #0
_0804BC52:
	lsls r0, r2, #1
	ldr r1, [r4, #4]
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	adds r0, #0x20
	orrs r0, r5
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	cmp r2, ip
	ble _0804BC52
	ldr r1, _0804BCD0 @ =0x040000D4
	str r6, [r1]
	ldr r0, _0804BCC8 @ =gBgInfo
	ldr r0, [r0, #4]
	str r0, [r1, #4]
	ldr r0, _0804BCF8 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0804BC8E
_0804BC86:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0804BC86
_0804BC8E:
	mov r1, r8
	ldr r0, [r1, #4]
	subs r0, #4
	bl thunk_HeapFree
	ldr r1, _0804BCFC @ =0x04000008
	ldr r2, _0804BD00 @ =0x00000601
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0804BCC8 @ =gBgInfo
	movs r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	ldr r0, _0804BD04 @ =0x04000010
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0804BD08 @ =0x082EA7F0
	ldr r1, _0804BD0C @ =0x050001C0
	movs r2, #0x20
	bl DecompressDma
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BCC8: .4byte gBgInfo
_0804BCCC: .4byte 0x06003000
_0804BCD0: .4byte 0x040000D4
_0804BCD4: .4byte 0x81000200
_0804BCD8: .4byte 0x082EA584
_0804BCDC: .4byte 0x082EA730
_0804BCE0: .4byte 0x7FFFFFFF
_0804BCE4: .4byte gBgDataPtrs
_0804BCE8: .4byte 0x000003FF
_0804BCEC: .4byte 0x00000FFF
_0804BCF0: .4byte gBgTilemapBufs
_0804BCF4: .4byte 0xFFFFE000
_0804BCF8: .4byte 0x80000400
_0804BCFC: .4byte 0x04000008
_0804BD00: .4byte 0x00000601
_0804BD04: .4byte 0x04000010
_0804BD08: .4byte 0x082EA7F0
_0804BD0C: .4byte 0x050001C0

	thumb_func_start sub_0804BD10
sub_0804BD10: @ 0x0804BD10
	push {r4, lr}
	ldr r4, _0804BD68 @ =gBgInfo
	ldrh r0, [r4, #0x16]
	adds r0, #0x20
	ldr r1, _0804BD6C @ =sub_0804BB10
	movs r2, #0x1d
	movs r3, #0x10
	bl sub_0804ED68
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #0x1c]
	ldr r0, _0804BD70 @ =0x06003800
	str r0, [r4, #0x20]
	movs r2, #0
	strh r2, [r4, #0x24]
	strh r2, [r4, #0x26]
	adds r1, r4, #0
	adds r1, #0x34
	movs r0, #0x20
	strb r0, [r1]
	ldrh r0, [r4, #0x16]
	strh r0, [r4, #0x30]
	ldr r1, _0804BD74 @ =0x040000D4
	ldr r0, _0804BD78 @ =0x080576B4
	str r0, [r1]
	ldr r0, _0804BD7C @ =0x050001E0
	str r0, [r1, #4]
	ldr r0, _0804BD80 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r1, #0xca
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0804BD84 @ =0x04000014
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD68: .4byte gBgInfo
_0804BD6C: .4byte sub_0804BB10
_0804BD70: .4byte 0x06003800
_0804BD74: .4byte 0x040000D4
_0804BD78: .4byte 0x080576B4
_0804BD7C: .4byte 0x050001E0
_0804BD80: .4byte 0x80000020
_0804BD84: .4byte 0x04000014

	thumb_func_start sub_0804BD88
sub_0804BD88: @ 0x0804BD88
	sub sp, #4
	mov r1, sp
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804BDA8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0804BDAC @ =gBgTilemapBufs+0x800
	str r0, [r1, #4]
	ldr r0, _0804BDB0 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0804BDA8: .4byte 0x040000D4
_0804BDAC: .4byte gBgTilemapBufs+0x800
_0804BDB0: .4byte 0x81000400

	thumb_func_start sub_0804BDB4
sub_0804BDB4: @ 0x0804BDB4
	push {lr}
	ldr r0, _0804BDF8 @ =gUnk_030034A0
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #0xe8
	lsls r0, r0, #4
	strh r0, [r1, #0x10]
	movs r2, #0xe0
	lsls r2, r2, #3
	strh r2, [r1, #0xa]
	movs r0, #0xa0
	lsls r0, r0, #4
	strh r0, [r1, #0x12]
	strh r2, [r1, #0xc]
	strh r0, [r1, #0x16]
	bl sub_0804B2EC
	ldr r1, _0804BDFC @ =0x04000048
	ldr r2, _0804BE00 @ =0x00001F23
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3d
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0804BE04 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0804BDF8: .4byte gUnk_030034A0
_0804BDFC: .4byte 0x04000048
_0804BE00: .4byte 0x00001F23
_0804BE04: .4byte 0x0000BFFF

	thumb_func_start sub_0804BE08
sub_0804BE08: @ 0x0804BE08
	ldr r1, _0804BE3C @ =gIntrTable
	ldr r0, _0804BE40 @ =sub_08000E68
	str r0, [r1]
	ldr r0, _0804BE44 @ =sub_0800107C
	str r0, [r1, #4]
	ldr r2, _0804BE48 @ =gCallbackQueue
	ldr r0, _0804BE4C @ =InputHandler_Normal
	str r0, [r2, #0x28]
	ldr r0, _0804BE50 @ =sub_0804EB64
	str r0, [r2, #0x2c]
	ldr r0, _0804BE54 @ =sub_0800C564
	str r0, [r2, #0x30]
	movs r0, #1
	str r0, [r2, #0x34]
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	adds r2, #0x79
	movs r0, #4
	strb r0, [r2]
	bx lr
	.align 2, 0
_0804BE3C: .4byte gIntrTable
_0804BE40: .4byte sub_08000E68
_0804BE44: .4byte sub_0800107C
_0804BE48: .4byte gCallbackQueue
_0804BE4C: .4byte InputHandler_Normal
_0804BE50: .4byte sub_0804EB64
_0804BE54: .4byte sub_0800C564

	thumb_func_start sub_0804BE58
sub_0804BE58: @ 0x0804BE58
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804BF44 @ =0x04000200
	ldrh r1, [r6]
	ldr r0, _0804BF48 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r6]
	ldr r5, _0804BF4C @ =0x04000004
	ldrh r1, [r5]
	ldr r0, _0804BF50 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r5]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	ldr r7, _0804BF54 @ =gUnk_03004C20
	ldr r0, _0804BF58 @ =gUnk_03004670
	ldr r0, [r0]
	ldrb r1, [r7, #0xd]
	ldrb r2, [r0]
	cmp r1, r2
	bls _0804BE86
	strb r1, [r0]
_0804BE86:
	movs r0, #1
	movs r1, #0
	bl sub_08046DB8
	ldr r4, _0804BF5C @ =gUnk_03005284
	ldr r1, [r4]
	ldrb r0, [r7, #0xd]
	strb r0, [r1, #1]
	movs r0, #0
	movs r1, #2
	bl sub_08046DB8
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	bl sub_0804BAD4
	bl sub_0804BB3C
	bl sub_0804BB88
	bl sub_0804BBD4
	bl sub_0804BD10
	bl sub_0804BFD0
	bl sub_0804BDB4
	bl sub_0804BE08
	ldr r0, _0804BF60 @ =gBlendValue
	movs r4, #0x10
	strb r4, [r0]
	ldr r3, _0804BF64 @ =gUnk_030034A0
	ldr r2, [r3]
	ldrb r1, [r2, #2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r2, [r3]
	ldrb r1, [r2, #0x1c]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x1c]
	ldr r2, [r3]
	ldrb r1, [r2, #0x1c]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x1c]
	ldr r1, [r3]
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x18]
	ldrb r0, [r1, #0x1c]
	orrs r0, r4
	strb r0, [r1, #0x1c]
	ldr r1, _0804BF68 @ =gMosaicSize
	ldr r0, _0804BF6C @ =gBg2Alpha
	strb r2, [r0]
	strb r2, [r1]
	ldrh r1, [r6]
	ldr r0, _0804BF70 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6]
	ldrh r1, [r5]
	ldr r0, _0804BF74 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r5]
	strb r2, [r7, #0xa]
	strb r2, [r7, #0xb]
	ldr r2, _0804BF78 @ =gUnk_030034B0
	ldrb r1, [r2, #6]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #6]
	ldrh r0, [r6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r6]
	ldrh r0, [r5]
	movs r1, #8
	orrs r0, r1
	strh r0, [r5]
	bl m4aSoundVSyncOn
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BF44: .4byte 0x04000200
_0804BF48: .4byte 0x0000FFFE
_0804BF4C: .4byte 0x04000004
_0804BF50: .4byte 0x0000FFF7
_0804BF54: .4byte gUnk_03004C20
_0804BF58: .4byte gUnk_03004670
_0804BF5C: .4byte gUnk_03005284
_0804BF60: .4byte gBlendValue
_0804BF64: .4byte gUnk_030034A0
_0804BF68: .4byte gMosaicSize
_0804BF6C: .4byte gBg2Alpha
_0804BF70: .4byte 0x0000FFFD
_0804BF74: .4byte 0x0000FFEF
_0804BF78: .4byte gUnk_030034B0

	thumb_func_start sub_0804BF7C
sub_0804BF7C: @ 0x0804BF7C
	push {lr}
	ldr r1, _0804BFB8 @ =0x03000814
	ldr r0, _0804BFBC @ =gUnk_03004C20
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r2, _0804BFC0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0804BFC4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0804BFC8 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0804BFCC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	bl sub_0804C0D4
	bl sub_0804EE14
	bl sub_0804BBC0
	bl sub_0804BB74
	bl sub_0804BAFC
	bl m4aMPlayAllStop
	pop {r0}
	bx r0
	.align 2, 0
_0804BFB8: .4byte 0x03000814
_0804BFBC: .4byte gUnk_03004C20
_0804BFC0: .4byte 0x04000200
_0804BFC4: .4byte 0x0000FFFD
_0804BFC8: .4byte 0x04000004
_0804BFCC: .4byte 0x0000FFEF

	thumb_func_start sub_0804BFD0
sub_0804BFD0: @ 0x0804BFD0
	push {r4, lr}
	sub sp, #4
	ldr r4, _0804C028 @ =0x030007C8
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4]
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r4, _0804C02C @ =0x040000D4
	str r2, [r4]
	str r0, [r4, #4]
	ldr r0, _0804C030 @ =0x81000080
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	bl sub_08003D58
	ldr r0, _0804C034 @ =gOamBuffer
	str r0, [r4]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	ldr r0, _0804C038 @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0804C03C @ =gUnk_03005428
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, _0804C040 @ =gObjPalRamPtr
	ldr r0, _0804C044 @ =gUnk_030034F4
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0804C048 @ =gObjVramPtr
	ldr r0, _0804C04C @ =gUnk_030052AC
	ldr r0, [r0]
	str r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C028: .4byte 0x030007C8
_0804C02C: .4byte 0x040000D4
_0804C030: .4byte 0x81000080
_0804C034: .4byte gOamBuffer
_0804C038: .4byte 0x84000100
_0804C03C: .4byte gUnk_03005428
_0804C040: .4byte gObjPalRamPtr
_0804C044: .4byte gUnk_030034F4
_0804C048: .4byte gObjVramPtr
_0804C04C: .4byte gUnk_030052AC

	thumb_func_start sub_0804C050
sub_0804C050: @ 0x0804C050
	push {r4, r5, r6, r7, lr}
	movs r5, #0x20
	ldr r7, _0804C0A4 @ =0x030007C8
	movs r6, #0
_0804C058:
	ldr r0, [r7]
	lsls r4, r5, #3
	adds r0, r4, r0
	adds r1, r0, #0
	subs r1, #8
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0804C07C
	ldr r0, [r1]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r7]
	adds r0, r4, r0
	subs r0, #8
	strh r6, [r0, #6]
	str r6, [r0]
	strh r6, [r0, #4]
_0804C07C:
	subs r5, #1
	cmp r5, #0
	bgt _0804C058
	bl sub_08003D58
	ldr r1, _0804C0A8 @ =gUnk_03005428
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, _0804C0AC @ =gObjPalRamPtr
	ldr r0, _0804C0B0 @ =gUnk_030034F4
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0804C0B4 @ =gObjVramPtr
	ldr r0, _0804C0B8 @ =gUnk_030052AC
	ldr r0, [r0]
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C0A4: .4byte 0x030007C8
_0804C0A8: .4byte gUnk_03005428
_0804C0AC: .4byte gObjPalRamPtr
_0804C0B0: .4byte gUnk_030034F4
_0804C0B4: .4byte gObjVramPtr
_0804C0B8: .4byte gUnk_030052AC

	thumb_func_start sub_0804C0BC
sub_0804C0BC: @ 0x0804C0BC
	push {lr}
	bl sub_0804C050
	ldr r1, _0804C0D0 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804C0D0: .4byte 0x03004D84

	thumb_func_start sub_0804C0D4
sub_0804C0D4: @ 0x0804C0D4
	push {lr}
	bl sub_0804C050
	ldr r0, _0804C0E8 @ =0x030007C8
	ldr r0, [r0]
	bl thunk_HeapFree
	pop {r0}
	bx r0
	.align 2, 0
_0804C0E8: .4byte 0x030007C8

	thumb_func_start sub_0804C0EC
sub_0804C0EC: @ 0x0804C0EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	movs r6, #0
	ldr r0, _0804C180 @ =gUnk_030052AC
	ldr r0, [r0]
	ldr r1, _0804C184 @ =0xF9FF0000
	adds r0, r0, r1
	lsls r0, r0, #0xb
	lsrs r5, r0, #0x10
	ldr r0, _0804C188 @ =0x030007C8
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	ldr r2, _0804C18C @ =0x08057954
	cmp r0, #0
	beq _0804C122
_0804C110:
	ldrh r0, [r1, #6]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, #8
	adds r6, #1
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne _0804C110
_0804C122:
	lsls r4, r7, #3
	adds r4, r4, r2
	ldr r0, [r4]
	bl DecompressAlloc
	ldr r1, _0804C188 @ =0x030007C8
	ldr r2, [r1]
	lsls r1, r6, #3
	adds r1, r1, r2
	adds r0, #4
	str r0, [r1]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	strh r5, [r1, #4]
	mov r0, r8
	cmp r0, #0
	beq _0804C174
	ldr r2, _0804C190 @ =0x040000D4
	ldr r1, _0804C194 @ =0x08189DCC
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _0804C198 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0804C19C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0804C16E
_0804C166:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0804C166
_0804C16E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
_0804C174:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C180: .4byte gUnk_030052AC
_0804C184: .4byte 0xF9FF0000
_0804C188: .4byte 0x030007C8
_0804C18C: .4byte 0x08057954
_0804C190: .4byte 0x040000D4
_0804C194: .4byte 0x08189DCC
_0804C198: .4byte gObjPalRamPtr
_0804C19C: .4byte 0x80000010

	thumb_func_start sub_0804C1A0
sub_0804C1A0: @ 0x0804C1A0
	push {lr}
	ldr r3, _0804C1BC @ =0x03004D84
	ldr r2, [r3]
	ldrb r1, [r2, #2]
	movs r0, #0x7f
	ands r0, r1
	lsrs r1, r1, #7
	adds r2, #3
	str r2, [r3]
	bl sub_0804C0EC
	pop {r0}
	bx r0
	.align 2, 0
_0804C1BC: .4byte 0x03004D84

	thumb_func_start sub_0804C1C0
sub_0804C1C0: @ 0x0804C1C0
	ldr r3, _0804C1F0 @ =0x040000D4
	ldr r2, _0804C1F4 @ =0x030007C8
	ldr r2, [r2]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	lsls r1, r1, #5
	muls r2, r1, r2
	ldr r1, [r0]
	adds r1, r1, r2
	str r1, [r3]
	ldrh r1, [r0, #4]
	lsls r1, r1, #5
	ldr r2, _0804C1F8 @ =0x06010000
	adds r1, r1, r2
	str r1, [r3, #4]
	ldrh r0, [r0, #6]
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	bx lr
	.align 2, 0
_0804C1F0: .4byte 0x040000D4
_0804C1F4: .4byte 0x030007C8
_0804C1F8: .4byte 0x06010000

	thumb_func_start sub_0804C1FC
sub_0804C1FC: @ 0x0804C1FC
	push {lr}
	ldr r3, _0804C214 @ =0x03004D84
	ldr r2, [r3]
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r2, #4
	str r2, [r3]
	bl sub_0804C1C0
	pop {r0}
	bx r0
	.align 2, 0
_0804C214: .4byte 0x03004D84

	thumb_func_start sub_0804C218
sub_0804C218: @ 0x0804C218
	ldr r2, _0804C228 @ =gUnk_030051DC
	ldr r1, _0804C22C @ =0x08189E84
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	bx lr
	.align 2, 0
_0804C228: .4byte gUnk_030051DC
_0804C22C: .4byte 0x08189E84

	thumb_func_start sub_0804C230
sub_0804C230: @ 0x0804C230
	push {r4, lr}
	ldr r4, _0804C248 @ =0x03004D84
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	bl sub_0804C218
	ldr r0, [r4]
	adds r0, #3
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C248: .4byte 0x03004D84

	thumb_func_start sub_0804C24C
sub_0804C24C: @ 0x0804C24C
	push {r4, r5, r6, lr}
	ldr r5, _0804C2F8 @ =gEntityInfo
	ldr r6, _0804C2FC @ =0x03004D84
	ldr r0, [r6]
	ldrb r2, [r0, #2]
	movs r4, #0x7f
	adds r1, r4, #0
	ands r1, r2
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	lsrs r2, r2, #7
	strb r2, [r0, #0x10]
	ldr r0, [r6]
	ldrb r2, [r0, #2]
	adds r1, r4, #0
	ands r1, r2
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	lsrs r2, r2, #7
	movs r1, #0
	cmp r2, #0
	bne _0804C286
	movs r1, #0x1c
_0804C286:
	strb r1, [r0, #0xf]
	ldr r0, [r6]
	adds r0, #3
	bl sub_0804B254
	adds r3, r0, #0
	ldr r0, [r6]
	ldrb r1, [r0, #2]
	adds r2, r4, #0
	ands r2, r1
	adds r2, #0xd
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	strh r3, [r1, #4]
	adds r0, #5
	bl sub_0804B254
	ldr r3, [r6]
	ldrb r1, [r3, #2]
	adds r2, r4, #0
	ands r2, r1
	adds r2, #0xd
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	strh r0, [r1, #6]
	ldrb r0, [r3, #2]
	adds r1, r4, #0
	ands r1, r0
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #4]
	lsls r1, r1, #4
	strh r1, [r0]
	ldrb r0, [r3, #2]
	adds r1, r4, #0
	ands r1, r0
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #6]
	lsls r1, r1, #4
	strh r1, [r0, #2]
	adds r3, #7
	str r3, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C2F8: .4byte gEntityInfo
_0804C2FC: .4byte 0x03004D84

	thumb_func_start sub_0804C300
sub_0804C300: @ 0x0804C300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804C394 @ =0x03004D84
	ldr r0, [r0]
	adds r0, #2
	bl sub_0804B254
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r2, _0804C398 @ =0x08189F04
	lsls r7, r0, #1
	adds r0, r7, r0
	lsls r0, r0, #6
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _0804C39C @ =0x0000FFFF
	cmp r0, r1
	beq _0804C37A
	mov sl, r2
	movs r0, #0
	mov r8, r0
_0804C334:
	ldr r2, _0804C3A0 @ =gUnk_03005428
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sb
	adds r6, r7, r1
	lsls r6, r6, #6
	mov r1, r8
	adds r5, r1, r6
	add r5, sl
	ldrb r1, [r5, #7]
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	ldrb r4, [r5, #4]
	str r4, [sp]
	ldrb r4, [r5, #9]
	str r4, [sp, #4]
	ldrb r4, [r5, #5]
	str r4, [sp, #8]
	ldrb r4, [r5, #6]
	str r4, [sp, #0xc]
	ldrb r4, [r5, #8]
	str r4, [sp, #0x10]
	bl sub_08003DC0
	movs r0, #0xc
	add r8, r0
	add r6, r8
	add r6, sl
	ldrh r0, [r6]
	ldr r1, _0804C39C @ =0x0000FFFF
	cmp r0, r1
	bne _0804C334
_0804C37A:
	ldr r1, _0804C394 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C394: .4byte 0x03004D84
_0804C398: .4byte 0x08189F04
_0804C39C: .4byte 0x0000FFFF
_0804C3A0: .4byte gUnk_03005428

	thumb_func_start sub_0804C3A4
sub_0804C3A4: @ 0x0804C3A4
	push {r4, r5, r6, r7, lr}
	ldr r7, _0804C47C @ =gEntityInfo
	ldr r6, _0804C480 @ =0x03004D84
	ldr r2, [r6]
	ldrb r1, [r2, #2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r3, r0, r7
	ldrb r1, [r2, #3]
	movs r5, #1
	movs r0, #1
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _0804C3C6
	movs r1, #0x1c
_0804C3C6:
	strb r1, [r3, #0xf]
	ldr r1, [r6]
	ldrb r0, [r1, #2]
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r1, [r1, #3]
	lsrs r1, r1, #1
	movs r0, #3
	mov ip, r0
	mov r0, ip
	ands r1, r0
	ands r1, r0
	ldrb r3, [r2, #0xc]
	movs r4, #4
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldr r1, [r6]
	ldrb r0, [r1, #2]
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r1, [r1, #3]
	lsrs r1, r1, #3
	ands r1, r5
	ands r1, r5
	ldrb r3, [r2, #0xe]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r1, [r6]
	ldrb r0, [r1, #2]
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	ands r1, r5
	ands r1, r5
	lsls r1, r1, #1
	ldrb r3, [r2, #0xe]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xe]
	ldr r2, [r6]
	ldrb r0, [r2, #2]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r3, [r2, #4]
	movs r0, #0xf
	adds r2, r0, #0
	ands r2, r3
	lsls r2, r2, #4
	ldrb r3, [r1, #0xc]
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xc]
	ldr r2, [r6]
	ldrb r0, [r2, #2]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r0, [r2, #4]
	lsrs r0, r0, #6
	ands r0, r5
	mov r2, ip
	ands r0, r2
	ldrb r2, [r1, #0xd]
	ands r4, r2
	orrs r4, r0
	strb r4, [r1, #0xd]
	ldr r0, [r6]
	adds r0, #5
	str r0, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C47C: .4byte gEntityInfo
_0804C480: .4byte 0x03004D84

	thumb_func_start sub_0804C484
sub_0804C484: @ 0x0804C484
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r6, _0804C58C @ =gEntityInfo
	ldr r0, _0804C590 @ =0x03004D84
	mov r8, r0
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	adds r0, #0xd
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r6
	ldrb r0, [r1, #3]
	movs r5, #0x1f
	adds r1, r5, #0
	ands r1, r0
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	ldrb r3, [r2, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xd]
	mov r2, r8
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #0xd
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r6
	ldrb r1, [r1, #3]
	lsrs r1, r1, #5
	movs r4, #1
	ands r1, r4
	ands r1, r4
	ldrb r3, [r2, #0xe]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xe]
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	adds r0, #0xd
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r6
	ldrb r1, [r1, #3]
	lsrs r1, r1, #7
	ands r1, r4
	lsls r1, r1, #1
	ldrb r3, [r2, #0xe]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xe]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #4
	bl sub_0804B260
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl MultiplyQ8
	ldr r6, _0804C594 @ =gOamAffineBuffer
	mov r1, r8
	ldr r3, [r1]
	ldrb r2, [r3, #3]
	adds r1, r5, #0
	ands r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	movs r2, #0
	strh r0, [r1]
	ldrb r1, [r3, #3]
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r2, [r0, #2]
	ldrb r1, [r3, #3]
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r2, [r0, #4]
	adds r0, r4, #0
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl MultiplyQ8
	mov r2, r8
	ldr r1, [r2]
	ldrb r2, [r1, #3]
	ands r5, r2
	lsls r5, r5, #3
	adds r5, r5, r6
	strh r0, [r5, #6]
	adds r1, #6
	mov r0, r8
	str r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C58C: .4byte gEntityInfo
_0804C590: .4byte 0x03004D84
_0804C594: .4byte gOamAffineBuffer

	thumb_func_start sub_0804C598
sub_0804C598: @ 0x0804C598
	push {r4, lr}
	ldr r1, _0804C5B4 @ =0x03004D84
	ldr r0, [r1]
	ldrb r3, [r0, #2]
	movs r0, #3
	ands r0, r3
	adds r4, r1, #0
	cmp r0, #1
	beq _0804C5D8
	cmp r0, #1
	bgt _0804C5B8
	cmp r0, #0
	beq _0804C5C2
	b _0804C5F8
	.align 2, 0
_0804C5B4: .4byte 0x03004D84
_0804C5B8:
	cmp r0, #2
	beq _0804C5E0
	cmp r0, #3
	beq _0804C5E8
	b _0804C5F8
_0804C5C2:
	ldr r2, _0804C5D0 @ =0x04000008
	ldrh r0, [r2]
	ldr r1, _0804C5D4 @ =0x0000FFFC
	ands r1, r0
	lsrs r0, r3, #4
	b _0804C5F4
	.align 2, 0
_0804C5D0: .4byte 0x04000008
_0804C5D4: .4byte 0x0000FFFC
_0804C5D8:
	ldr r2, _0804C5DC @ =0x0400000A
	b _0804C5EA
	.align 2, 0
_0804C5DC: .4byte 0x0400000A
_0804C5E0:
	ldr r2, _0804C5E4 @ =0x0400000C
	b _0804C5EA
	.align 2, 0
_0804C5E4: .4byte 0x0400000C
_0804C5E8:
	ldr r2, _0804C604 @ =0x0400000E
_0804C5EA:
	ldrh r0, [r2]
	ldr r1, _0804C608 @ =0x0000FFFC
	ands r1, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x1c
_0804C5F4:
	orrs r0, r1
	strh r0, [r2]
_0804C5F8:
	ldr r0, [r4]
	adds r0, #3
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C604: .4byte 0x0400000E
_0804C608: .4byte 0x0000FFFC

	thumb_func_start sub_0804C60C
sub_0804C60C: @ 0x0804C60C
	push {r4, lr}
	sub sp, #8
	ldr r4, _0804C658 @ =0x03004D84
	ldr r0, [r4]
	adds r0, #3
	bl sub_0804B270
	str r0, [sp]
	ldr r2, _0804C65C @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r3, _0804C660 @ =gBgInfo
	ldr r4, [r4]
	ldrb r1, [r4, #2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x40
	str r0, [r2, #4]
	ldr r0, _0804C664 @ =0x85000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _0804C668 @ =0x0000F002
	ldrb r0, [r4, #2]
	cmp r0, #0
	blt _0804C690
	cmp r0, #1
	bgt _0804C670
	add r0, sp, #4
	strh r1, [r0]
	str r0, [r2]
	ldrb r0, [r4, #2]
	lsls r0, r0, #0xb
	ldr r1, _0804C66C @ =gBgTilemapBufs
	adds r0, r0, r1
	b _0804C688
	.align 2, 0
_0804C658: .4byte 0x03004D84
_0804C65C: .4byte 0x040000D4
_0804C660: .4byte gBgInfo
_0804C664: .4byte 0x85000008
_0804C668: .4byte 0x0000F002
_0804C66C: .4byte gBgTilemapBufs
_0804C670:
	cmp r0, #3
	bgt _0804C690
	add r0, sp, #4
	strh r1, [r0]
	str r0, [r2]
	ldrb r1, [r4, #2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r0, [r0]
_0804C688:
	str r0, [r2, #4]
	ldr r0, _0804C6A0 @ =0x81000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0804C690:
	ldr r1, _0804C6A4 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #7
	str r0, [r1]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C6A0: .4byte 0x81000400
_0804C6A4: .4byte 0x03004D84

	thumb_func_start sub_0804C6A8
sub_0804C6A8: @ 0x0804C6A8
	push {r4, lr}
	ldr r1, _0804C6D4 @ =0x0400000C
	ldrh r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	ldr r4, _0804C6D8 @ =gMosaicSize
	ldr r3, _0804C6DC @ =0x03004D84
	ldr r1, [r3]
	ldrb r2, [r1, #2]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r4]
	adds r1, #3
	str r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C6D4: .4byte 0x0400000C
_0804C6D8: .4byte gMosaicSize
_0804C6DC: .4byte 0x03004D84

	thumb_func_start sub_0804C6E0
sub_0804C6E0: @ 0x0804C6E0
	push {r4, r5, r6, lr}
	ldr r6, _0804C76C @ =gEntityInfo
	ldr r5, _0804C770 @ =0x03004D84
	ldr r2, [r5]
	ldrb r1, [r2, #2]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r2, #3]
	lsrs r1, r1, #7
	strb r1, [r0, #0x10]
	ldr r2, [r5]
	ldrb r1, [r2, #2]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r3, r0, r6
	ldrb r1, [r2, #3]
	movs r0, #0x80
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _0804C716
	movs r1, #0x1c
_0804C716:
	strb r1, [r3, #0xf]
	ldr r1, [r5]
	ldrb r0, [r1, #2]
	adds r0, #0xd
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r6
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	movs r4, #3
	ands r1, r4
	ands r1, r4
	lsls r1, r1, #2
	ldrb r3, [r2, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0xc]
	ldr r2, [r5]
	ldrb r0, [r2, #2]
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r0, [r2, #3]
	movs r2, #3
	ands r2, r0
	ands r2, r4
	ldrb r3, [r1, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0xc]
	ldr r0, [r5]
	adds r0, #4
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C76C: .4byte gEntityInfo
_0804C770: .4byte 0x03004D84

	thumb_func_start sub_0804C774
sub_0804C774: @ 0x0804C774
	ldr r0, _0804C790 @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804C794 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804C790: .4byte gUnk_030034A0
_0804C794: .4byte 0x03004D84

	thumb_func_start sub_0804C798
sub_0804C798: @ 0x0804C798
	push {r4, r5, r6, lr}
	ldr r1, _0804C7F4 @ =0x03004D84
	ldr r0, [r1]
	ldrb r4, [r0, #2]
	adds r0, #3
	str r0, [r1]
	movs r5, #0
	ldr r1, _0804C7F8 @ =0x08057ACC
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0804C7E0
	adds r6, r1, #0
_0804C7B4:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804B920
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804B464
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804B4B0
	adds r5, #1
	cmp r5, #1
	bgt _0804C7E0
	lsls r0, r5, #1
	lsls r1, r4, #2
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0804C7B4
_0804C7E0:
	ldr r0, _0804C7F8 @ =0x08057ACC
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	bl sub_0804BAB4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C7F4: .4byte 0x03004D84
_0804C7F8: .4byte 0x08057ACC

	thumb_func_start sub_0804C7FC
sub_0804C7FC: @ 0x0804C7FC
	push {r4, r5, lr}
	ldr r4, _0804C83C @ =0x03004D84
	ldr r0, [r4]
	adds r0, #3
	bl sub_0804B254
	adds r3, r0, #0
	ldr r5, _0804C840 @ =gBgInfo
	ldr r0, [r4]
	ldrb r2, [r0, #2]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	lsls r3, r3, #4
	strh r3, [r1, #8]
	adds r0, #5
	bl sub_0804B254
	ldr r3, [r4]
	ldrb r2, [r3, #2]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	lsls r0, r0, #4
	strh r0, [r1, #0xa]
	adds r3, #7
	str r3, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C83C: .4byte 0x03004D84
_0804C840: .4byte gBgInfo

	thumb_func_start sub_0804C844
sub_0804C844: @ 0x0804C844
	push {r4, lr}
	ldr r4, _0804C868 @ =0x03004D84
	ldr r0, [r4]
	adds r0, #3
	bl sub_0804B254
	ldr r3, [r4]
	ldrb r1, [r3, #2]
	lsls r1, r1, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	strh r0, [r1]
	adds r3, #5
	str r3, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C868: .4byte 0x03004D84

	thumb_func_start sub_0804C86C
sub_0804C86C: @ 0x0804C86C
	push {r4, r5, lr}
	ldr r5, _0804C88C @ =gBg2XMag
	ldr r4, _0804C890 @ =0x03004D84
	ldr r0, [r4]
	adds r0, #2
	bl sub_0804B254
	ldr r1, _0804C894 @ =gBg2YMag
	strh r0, [r1]
	strh r0, [r5]
	ldr r0, [r4]
	adds r0, #4
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C88C: .4byte gBg2XMag
_0804C890: .4byte 0x03004D84
_0804C894: .4byte gBg2YMag

	thumb_func_start sub_0804C898
sub_0804C898: @ 0x0804C898
	push {lr}
	sub sp, #0x10
	ldr r1, _0804C8D0 @ =0x081177E4
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r0, _0804C8D4 @ =0x0300081C
	ldr r0, [r0]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0804C8E0
	ldr r2, _0804C8D8 @ =gEntityInfo
	ldr r0, _0804C8DC @ =gUnk_03004C20
	ldr r0, [r0, #4]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r2, r2, r1
	strb r0, [r2]
	b _0804C8EA
	.align 2, 0
_0804C8D0: .4byte 0x081177E4
_0804C8D4: .4byte 0x0300081C
_0804C8D8: .4byte gEntityInfo
_0804C8DC: .4byte gUnk_03004C20
_0804C8E0:
	ldr r0, _0804C8F0 @ =gEntityInfo
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
_0804C8EA:
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_0804C8F0: .4byte gEntityInfo

	thumb_func_start sub_0804C8F4
sub_0804C8F4: @ 0x0804C8F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	movs r0, #0
	mov r8, r0
	movs r5, #0
	movs r7, #7
	mov r4, sb
	subs r0, #8
	adds r6, r0, #0
_0804C90C:
	ldrb r2, [r4]
	lsls r0, r2, #0x1d
	lsrs r1, r0, #0x1d
	cmp r1, #0
	beq _0804C94C
	ldr r0, _0804C9A4 @ =gUnk_030034A0
	ldr r0, [r0]
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _0804C930
	movs r0, #4
	orrs r1, r0
	ands r1, r7
	adds r0, r2, #0
	ands r0, r6
	orrs r0, r1
	strb r0, [r4]
_0804C930:
	ldr r1, [r4, #0x20]
	adds r0, r5, #0
	bl _call_via_r1
	ands r0, r7
	ldrb r1, [r4]
	ands r1, r6
	orrs r1, r0
	strb r1, [r4]
	lsls r1, r1, #0x1d
	cmp r1, #0
	beq _0804C94C
	movs r0, #1
	add r8, r0
_0804C94C:
	adds r4, #0x24
	adds r5, #1
	cmp r5, #0xf
	ble _0804C90C
	movs r5, #0x10
	movs r4, #0x90
	lsls r4, r4, #2
	add r4, sb
	movs r0, #8
	rsbs r0, r0, #0
	adds r6, r0, #0
_0804C962:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	beq _0804C97E
	ldr r1, [r4, #0x20]
	adds r0, r5, #0
	bl _call_via_r1
	movs r1, #7
	ands r0, r1
	ldrb r1, [r4]
	ands r1, r6
	orrs r1, r0
	strb r1, [r4]
_0804C97E:
	adds r4, #0x24
	adds r5, #1
	cmp r5, #0x1f
	ble _0804C962
	ldr r0, _0804C9A4 @ =gUnk_030034A0
	ldr r0, [r0]
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #0
	cmp r0, #0
	beq _0804C996
	mov r1, r8
_0804C996:
	adds r0, r1, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C9A4: .4byte gUnk_030034A0

	thumb_func_start sub_0804C9A8
sub_0804C9A8: @ 0x0804C9A8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r4, [r2, #4]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0804C9DA
	movs r5, #0xc
	ldrsh r0, [r2, r5]
	movs r5, #8
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	movs r5, #4
	ldrsh r1, [r2, r5]
	cmp r0, r1
	ble _0804C9D6
	ldrh r0, [r2, #0xc]
	subs r0, r4, r0
	movs r1, #0
	strh r0, [r3]
	strh r1, [r2, #8]
	b _0804C9DA
_0804C9D6:
	ldrh r0, [r2, #8]
	strh r0, [r3]
_0804C9DA:
	ldrh r4, [r2, #4]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0804CA06
	movs r5, #0xc
	ldrsh r0, [r2, r5]
	movs r5, #8
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	movs r5, #4
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0804CA02
	ldrh r0, [r2, #0xc]
	subs r0, r0, r4
	movs r1, #0
	strh r0, [r3]
	strh r1, [r2, #8]
	b _0804CA06
_0804CA02:
	ldrh r0, [r2, #8]
	strh r0, [r3]
_0804CA06:
	movs r1, #6
	ldrsh r0, [r2, r1]
	ldrh r4, [r2, #6]
	cmp r0, #0
	ble _0804CA32
	movs r5, #0xe
	ldrsh r0, [r2, r5]
	movs r5, #0xa
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	movs r5, #6
	ldrsh r1, [r2, r5]
	cmp r0, r1
	ble _0804CA2E
	ldrh r0, [r2, #0xe]
	subs r0, r4, r0
	movs r1, #0
	strh r0, [r3, #2]
	strh r1, [r2, #0xa]
	b _0804CA32
_0804CA2E:
	ldrh r0, [r2, #0xa]
	strh r0, [r3, #2]
_0804CA32:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _0804CA5A
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	movs r5, #0xa
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	movs r5, #6
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0804CA56
	ldrh r0, [r2, #0xe]
	subs r0, r0, r4
	movs r1, #0
	strh r0, [r3, #2]
	strh r1, [r2, #0xa]
	b _0804CA5A
_0804CA56:
	ldrh r0, [r2, #0xa]
	strh r0, [r3, #2]
_0804CA5A:
	movs r1, #0
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0804CA64
	movs r1, #1
_0804CA64:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0804CA6C
sub_0804CA6C: @ 0x0804CA6C
	push {r4, r5, r6, lr}
	movs r2, #8
	ldrsh r5, [r0, r2]
	ldr r6, _0804CAB8 @ =gSineTable
	movs r2, #0x14
	ldrsh r3, [r0, r2]
	ldrb r2, [r0, #0x1e]
	muls r2, r3, r2
	movs r4, #0xff
	ands r2, r4
	lsls r2, r2, #1
	adds r2, r2, r6
	movs r3, #0
	ldrsh r2, [r2, r3]
	muls r2, r5, r2
	asrs r2, r2, #8
	strh r2, [r1]
	movs r2, #0xa
	ldrsh r5, [r0, r2]
	movs r2, #0x14
	ldrsh r3, [r0, r2]
	ldrb r2, [r0, #0x1e]
	muls r2, r3, r2
	ands r2, r4
	lsls r2, r2, #1
	adds r2, r2, r6
	movs r3, #0
	ldrsh r2, [r2, r3]
	muls r2, r5, r2
	asrs r2, r2, #8
	strh r2, [r1, #2]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0804CABC
	movs r0, #0
	b _0804CABE
	.align 2, 0
_0804CAB8: .4byte gSineTable
_0804CABC:
	movs r0, #1
_0804CABE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0804CAC4
sub_0804CAC4: @ 0x0804CAC4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CAC8
sub_0804CAC8: @ 0x0804CAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r5, _0804CAF0 @ =0x030052A4
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r4, r0, #2
	ldr r0, [r5]
	adds r0, r0, r4
	mov r6, sp
	mov r1, sp
	bl sub_0804CA6C
	cmp r0, #0
	beq _0804CAF4
	movs r0, #0
	b _0804CC3A
	.align 2, 0
_0804CAF0: .4byte 0x030052A4
_0804CAF4:
	ldr r0, [r5]
	adds r4, r4, r0
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0804CB48
	cmp r0, #2
	bgt _0804CB0C
	cmp r0, #0
	beq _0804CB12
	b _0804CC26
_0804CB0C:
	cmp r0, #4
	beq _0804CBB0
	b _0804CC26
_0804CB12:
	ldr r2, _0804CB44 @ =gBgInfo
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	mov r0, sp
	ldrh r0, [r0]
	ldrh r3, [r1, #8]
	adds r0, r0, r3
	strh r0, [r1, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1c
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r6, #2]
	ldrh r5, [r0, #0xa]
	adds r1, r1, r5
	strh r1, [r0, #0xa]
	b _0804CC26
	.align 2, 0
_0804CB44: .4byte gBgInfo
_0804CB48:
	ldr r2, _0804CBAC @ =gEntityInfo
	ldr r0, [r4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	mov r0, sp
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r0, [r4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r6, #2]
	ldrh r5, [r1, #2]
	adds r0, r0, r5
	strh r0, [r1, #2]
	ldr r0, [r4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	ldr r0, [r4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #2]
	lsrs r0, r0, #4
	strh r0, [r1, #6]
	b _0804CC26
	.align 2, 0
_0804CBAC: .4byte gEntityInfo
_0804CBB0:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1c
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804CBF0
	ldr r0, _0804CBEC @ =gUnk_030034A0
	ldr r2, [r0]
	movs r3, #1
	ands r1, r3
	lsls r0, r1, #2
	adds r1, r2, #0
	adds r1, #8
	adds r1, r1, r0
	mov r0, sp
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	ands r0, r3
	lsls r0, r0, #2
	adds r2, #0xa
	adds r2, r2, r0
	ldrh r0, [r6, #2]
	b _0804CC1C
	.align 2, 0
_0804CBEC: .4byte gUnk_030034A0
_0804CBF0:
	ldr r0, _0804CC44 @ =gUnk_030034A0
	ldr r2, [r0]
	movs r3, #1
	ands r1, r3
	lsls r0, r1, #2
	adds r1, r2, #0
	adds r1, #0x10
	adds r1, r1, r0
	mov r0, sp
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	ands r0, r3
	lsls r0, r0, #2
	adds r2, #0x12
	adds r2, r2, r0
	mov r0, sp
	ldrh r0, [r0]
_0804CC1C:
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	bl sub_0804B2EC
_0804CC26:
	ldr r0, _0804CC48 @ =0x030052A4
	ldr r1, [r0]
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	subs r1, #1
	strh r1, [r0, #0x14]
	movs r0, #1
_0804CC3A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804CC44: .4byte gUnk_030034A0
_0804CC48: .4byte 0x030052A4

	thumb_func_start sub_0804CC4C
sub_0804CC4C: @ 0x0804CC4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r7, _0804CC7C @ =0x030052A4
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r4, r0, #2
	ldr r0, [r7]
	adds r0, r0, r4
	mov r6, sp
	mov r1, sp
	bl sub_0804C9A8
	cmp r0, #0
	beq _0804CC80
	movs r0, #0
	b _0804CF14
	.align 2, 0
_0804CC7C: .4byte 0x030052A4
_0804CC80:
	ldr r1, [r7]
	adds r1, r4, r1
	mov r0, sp
	ldrh r0, [r0]
	ldrh r2, [r1, #0xc]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #2]
	ldrh r3, [r1, #0xe]
	adds r0, r0, r3
	strh r0, [r1, #0xe]
	ldrh r0, [r1]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0804CCA2
	b _0804CF12
_0804CCA2:
	lsls r0, r0, #2
	ldr r1, _0804CCAC @ =_0804CCB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CCAC: .4byte _0804CCB0
_0804CCB0: @ jump table
	.4byte _0804CCC4 @ case 0
	.4byte _0804CD0C @ case 1
	.4byte _0804CD30 @ case 2
	.4byte _0804CDA8 @ case 3
	.4byte _0804CE94 @ case 4
_0804CCC4:
	ldr r3, _0804CD04 @ =gBgInfo
	ldr r0, _0804CD08 @ =0x030052A4
	ldr r0, [r0]
	lsls r2, r5, #3
	adds r2, r2, r5
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	mov r0, sp
	ldrh r0, [r0]
	ldrh r4, [r1, #8]
	adds r0, r0, r4
	strh r0, [r1, #8]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r5, [r1, #0xa]
	adds r0, r0, r5
	strh r0, [r1, #0xa]
	b _0804CF12
	.align 2, 0
_0804CD04: .4byte gBgInfo
_0804CD08: .4byte 0x030052A4
_0804CD0C:
	ldr r1, _0804CD28 @ =gBg2XMag
	mov r0, sp
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r1, _0804CD2C @ =gBg2YMag
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	b _0804CF12
	.align 2, 0
_0804CD28: .4byte gBg2XMag
_0804CD2C: .4byte gBg2YMag
_0804CD30:
	ldr r3, _0804CDA0 @ =gEntityInfo
	ldr r0, _0804CDA4 @ =0x030052A4
	ldr r0, [r0]
	lsls r2, r5, #3
	adds r2, r2, r5
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	mov r0, sp
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r5, [r1, #2]
	adds r0, r0, r5
	strh r0, [r1, #2]
	ldr r0, [r2]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r1]
	lsrs r0, r0, #4
	strh r0, [r1, #4]
	ldr r0, [r2]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r1, #2]
	lsrs r0, r0, #4
	strh r0, [r1, #6]
	b _0804CF12
	.align 2, 0
_0804CDA0: .4byte gEntityInfo
_0804CDA4: .4byte 0x030052A4
_0804CDA8:
	ldr r0, _0804CE84 @ =0x030052A4
	mov r8, r0
	ldr r1, [r0]
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r1, r4, r1
	mov r0, sp
	ldrh r0, [r0]
	ldrh r2, [r1, #0x16]
	adds r0, r0, r2
	movs r3, #0
	mov sl, r3
	strh r0, [r1, #0x16]
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r5, [r1, #0x18]
	adds r0, r0, r5
	strh r0, [r1, #0x18]
	ldr r0, _0804CE88 @ =gSineTable
	adds r0, #0x80
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov sb, r2
	movs r5, #0x16
	ldrsh r0, [r1, r5]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl MultiplyQ8
	ldr r6, _0804CE8C @ =gOamAffineBuffer
	ldr r5, _0804CE90 @ =gEntityInfo
	mov r1, r8
	ldr r3, [r1]
	adds r3, r4, r3
	ldr r2, [r3]
	lsls r2, r2, #0xa
	lsrs r2, r2, #0x19
	adds r2, #0xd
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r1, [r1, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #3
	adds r1, r1, r6
	strh r0, [r1]
	ldr r1, [r3]
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x19
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r6
	mov r2, sl
	strh r2, [r0, #2]
	ldr r1, [r3]
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x19
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r2, [r0, #4]
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl MultiplyQ8
	mov r2, r8
	ldr r1, [r2]
	adds r4, r4, r1
	ldr r2, [r4]
	lsls r2, r2, #0xa
	lsrs r2, r2, #0x19
	adds r2, #0xd
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r1, [r1, #0xd]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #3
	adds r1, r1, r6
	strh r0, [r1, #6]
	b _0804CF12
	.align 2, 0
_0804CE84: .4byte 0x030052A4
_0804CE88: .4byte gSineTable
_0804CE8C: .4byte gOamAffineBuffer
_0804CE90: .4byte gEntityInfo
_0804CE94:
	ldr r0, _0804CED8 @ =0x030052A4
	ldr r1, [r0]
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r1
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1c
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804CEE0
	ldr r0, _0804CEDC @ =gUnk_030034A0
	ldr r2, [r0]
	movs r3, #1
	ands r1, r3
	lsls r0, r1, #2
	adds r1, r2, #0
	adds r1, #8
	adds r1, r1, r0
	mov r0, sp
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	ands r0, r3
	lsls r0, r0, #2
	adds r2, #0xa
	b _0804CF06
	.align 2, 0
_0804CED8: .4byte 0x030052A4
_0804CEDC: .4byte gUnk_030034A0
_0804CEE0:
	ldr r0, _0804CF24 @ =gUnk_030034A0
	ldr r2, [r0]
	movs r3, #1
	ands r1, r3
	lsls r0, r1, #2
	adds r1, r2, #0
	adds r1, #0x10
	adds r1, r1, r0
	mov r0, sp
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	ands r0, r3
	lsls r0, r0, #2
	adds r2, #0x12
_0804CF06:
	adds r2, r2, r0
	mov r0, sp
	ldrh r0, [r0, #2]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_0804CF12:
	movs r0, #1
_0804CF14:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804CF24: .4byte gUnk_030034A0

	thumb_func_start sub_0804CF28
sub_0804CF28: @ 0x0804CF28
	push {r4, lr}
	ldr r1, _0804CF78 @ =0x030052A4
	ldr r2, [r1]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r3, r1, r2
	ldrh r0, [r3]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0804CF6E
	ldr r2, _0804CF7C @ =gBgInfo
	ldrb r1, [r3, #1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1c
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r3, #8]
	ldrh r4, [r0, #8]
	adds r1, r1, r4
	strh r1, [r0, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1c
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r3, #0xa]
	ldrh r2, [r0, #0xa]
	adds r1, r1, r2
	strh r1, [r0, #0xa]
_0804CF6E:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804CF78: .4byte 0x030052A4
_0804CF7C: .4byte gBgInfo

	thumb_func_start sub_0804CF80
sub_0804CF80: @ 0x0804CF80
	push {r4, r5, lr}
	ldr r5, _0804CFCC @ =0x030052A4
	ldr r2, [r5]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r4, r1, #2
	adds r1, r4, r2
	ldrh r0, [r1, #0x14]
	subs r0, #1
	strh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0804CFC4
	movs r2, #4
	ldrsh r0, [r1, r2]
	movs r2, #0xc
	ldrsh r1, [r1, r2]
	bl sub_0804C1C0
	ldr r0, [r5]
	adds r2, r4, r0
	ldrh r0, [r2, #8]
	strh r0, [r2, #0x14]
	ldrh r0, [r2, #0xc]
	adds r0, #1
	strh r0, [r2, #0xc]
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	ldrb r0, [r2, #0x1f]
	ldrb r3, [r2, #0x1e]
	adds r0, r0, r3
	cmp r1, r0
	blt _0804CFC4
	strh r3, [r2, #0xc]
_0804CFC4:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804CFCC: .4byte 0x030052A4

	thumb_func_start sub_0804CFD0
sub_0804CFD0: @ 0x0804CFD0
	push {r4, r5, lr}
	sub sp, #0x40
	adds r4, r0, #0
	ldr r1, _0804D05C @ =0x081177F4
	mov r0, sp
	movs r2, #0x40
	bl memcpy
	ldr r3, _0804D060 @ =gEntityInfo
	ldr r0, _0804D064 @ =0x030052A4
	ldr r1, [r0]
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r0, [r4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	movs r0, #0xe
	ldrsh r1, [r4, r0]
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	asrs r1, r0
	movs r0, #0xf
	ands r1, r0
	ldrb r0, [r4, #0x1f]
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r5, sp
	adds r0, r5, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r4, #0x1c]
	adds r5, r0, #0
	muls r5, r1, r5
	adds r0, r5, #0
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	ldr r0, [r4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x19
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r1, #2]
	lsrs r0, r0, #4
	strh r0, [r1, #6]
	ldrh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _0804D068
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0804D068
	movs r0, #0
	b _0804D06A
	.align 2, 0
_0804D05C: .4byte 0x081177F4
_0804D060: .4byte gEntityInfo
_0804D064: .4byte 0x030052A4
_0804D068:
	movs r0, #1
_0804D06A:
	add sp, #0x40
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804D074
sub_0804D074: @ 0x0804D074
	adds r2, r0, #0
	ldr r0, _0804D0A4 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804D0AC
	ldr r0, _0804D0A8 @ =0x030052A4
	ldr r1, [r0]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	subs r1, #1
	strh r1, [r0, #0x14]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0804D0A0
	lsls r0, r1, #0x10
	cmp r0, #0
	blt _0804D0AC
_0804D0A0:
	movs r0, #1
	b _0804D0AE
	.align 2, 0
_0804D0A4: .4byte gNewKeys
_0804D0A8: .4byte 0x030052A4
_0804D0AC:
	movs r0, #0
_0804D0AE:
	bx lr

	thumb_func_start sub_0804D0B0
sub_0804D0B0: @ 0x0804D0B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x20]
	ldr r1, _0804D0FC @ =0x08117834
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	add r5, sp, #0x10
	ldr r1, _0804D100 @ =0x08117844
	adds r0, r5, #0
	movs r2, #0x10
	bl memcpy
	ldr r3, _0804D104 @ =0x030052A4
	ldr r1, [r3]
	ldr r0, [sp, #0x20]
	lsls r2, r0, #3
	adds r0, r2, r0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0804D0EE
	b _0804D1F8
_0804D0EE:
	cmp r0, #1
	bgt _0804D108
	cmp r0, #0
	beq _0804D112
	mov r8, r2
	b _0804D2FC
	.align 2, 0
_0804D0FC: .4byte 0x08117834
_0804D100: .4byte 0x08117844
_0804D104: .4byte 0x030052A4
_0804D108:
	cmp r0, #2
	bne _0804D10E
	b _0804D2D0
_0804D10E:
	mov r8, r2
	b _0804D2FC
_0804D112:
	movs r4, #0xc
	ldrsh r0, [r1, r4]
	mov r8, r2
	cmp r0, #0
	bgt _0804D11E
	b _0804D2FC
_0804D11E:
	movs r4, #0xd
	ldr r0, _0804D15C @ =gUnk_03005428
	mov sl, r0
	ldrb r0, [r0]
	cmp r4, r0
	bge _0804D1D4
	ldr r0, _0804D160 @ =gEntityInfo
	movs r1, #0
	mov ip, r1
	mov sb, r5
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r7, r0, r2
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r6, r0, r3
_0804D13E:
	adds r0, r4, #0
	cmp r4, #0
	bge _0804D146
	adds r0, r4, #7
_0804D146:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r7, #1]
	cmp r0, #0x50
	beq _0804D164
	mov r0, ip
	strb r0, [r7]
	b _0804D1C6
	.align 2, 0
_0804D15C: .4byte gUnk_03005428
_0804D160: .4byte gEntityInfo
_0804D164:
	movs r0, #1
	strb r0, [r6, #0x10]
	ldrb r3, [r6, #0xe]
	orrs r3, r0
	movs r0, #0xf
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r6, #0xd]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0xd]
	movs r0, #2
	orrs r3, r0
	strb r3, [r6, #0xe]
	lsls r1, r5, #1
	mov r2, sb
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	strh r0, [r6]
	adds r1, #1
	add r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #4
	strh r0, [r6, #2]
	lsls r2, r5, #3
	ldr r3, _0804D1F0 @ =gOamAffineBuffer
	adds r2, r2, r3
	adds r1, r5, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r2]
	mov r3, ip
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	strh r0, [r2, #6]
	ldrh r0, [r6]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	ldrh r0, [r6, #2]
	lsrs r0, r0, #4
	strh r0, [r6, #6]
_0804D1C6:
	adds r7, #0x1c
	adds r6, #0x1c
	adds r4, #1
	mov r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804D13E
_0804D1D4:
	ldr r1, _0804D1F4 @ =0x030052A4
	ldr r0, [r1]
	ldr r2, [sp, #0x20]
	add r2, r8
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r2, #3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #3]
	b _0804D2FC
	.align 2, 0
_0804D1F0: .4byte gOamAffineBuffer
_0804D1F4: .4byte 0x030052A4
_0804D1F8:
	movs r4, #0xd
	ldr r0, _0804D284 @ =gUnk_03005428
	mov r8, r2
	mov sl, r0
	ldrb r2, [r0]
	cmp r4, r2
	bge _0804D25E
	ldr r0, _0804D288 @ =gEntityInfo
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r2, r0, r3
_0804D20E:
	ldrb r0, [r2, #0x11]
	cmp r0, #0x50
	bne _0804D252
	adds r0, r4, #0
	cmp r4, #0
	bge _0804D21C
	adds r0, r4, #7
_0804D21C:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	mov r3, sp
	adds r1, r3, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r3, [r2]
	adds r1, r1, r3
	strh r1, [r2]
	adds r0, #1
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #2]
	adds r0, r0, r3
	strh r0, [r2, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x14
	strh r1, [r2, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	strh r0, [r2, #6]
_0804D252:
	adds r2, #0x1c
	adds r4, #1
	mov r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	blt _0804D20E
_0804D25E:
	ldr r2, _0804D28C @ =0x030052A4
	ldr r1, [r2]
	ldr r0, [sp, #0x20]
	add r0, r8
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r3, #0xc
	ldrsh r0, [r2, r3]
	cmp r0, #0x3c
	ble _0804D290
	ldrb r0, [r2, #3]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r2, #3]
	b _0804D2FC
	.align 2, 0
_0804D284: .4byte gUnk_03005428
_0804D288: .4byte gEntityInfo
_0804D28C: .4byte 0x030052A4
_0804D290:
	cmp r0, #0x14
	ble _0804D2FC
	movs r4, #0xd
	mov r0, sl
	ldrb r0, [r0]
	cmp r4, r0
	bge _0804D2FC
	ldr r5, _0804D2CC @ =gOamAffineBuffer
	movs r2, #0
	movs r1, #0x60
	mov r3, sl
_0804D2A6:
	adds r0, r4, #0
	cmp r4, #0
	bge _0804D2AE
	adds r0, r4, #7
_0804D2AE:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	adds r0, r0, r5
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _0804D2A6
	b _0804D2FC
	.align 2, 0
_0804D2CC: .4byte gOamAffineBuffer
_0804D2D0:
	movs r4, #0xd
	ldr r1, _0804D2F4 @ =gUnk_03005428
	ldrb r2, [r1]
	cmp r4, r2
	bge _0804D2F0
	ldr r0, _0804D2F8 @ =gEntityInfo
	movs r2, #0
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r0, r0, r3
_0804D2E4:
	strb r2, [r0, #0x10]
	adds r0, #0x1c
	adds r4, #1
	ldrb r3, [r1]
	cmp r4, r3
	blt _0804D2E4
_0804D2F0:
	movs r0, #0
	b _0804D318
	.align 2, 0
_0804D2F4: .4byte gUnk_03005428
_0804D2F8: .4byte gEntityInfo
_0804D2FC:
	ldr r4, _0804D328 @ =0x030052A4
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r1, r8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #0xe]
	ldrh r2, [r1, #0xa]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	movs r0, #1
_0804D318:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804D328: .4byte 0x030052A4

	thumb_func_start sub_0804D32C
sub_0804D32C: @ 0x0804D32C
	push {r4, r5, r6, lr}
	ldr r1, _0804D3EC @ =gBlendValue
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0804D3F0 @ =0x04000050
	movs r0, #0xec
	strh r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldr r3, _0804D3F4 @ =0x081177C4
	ldr r0, _0804D3F8 @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	ldrh r0, [r3, #6]
	orrs r1, r0
	ldr r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xd
	orrs r1, r0
	strh r1, [r4]
	ldr r5, _0804D3FC @ =0x03004D84
	ldr r0, [r5]
	adds r0, #3
	bl sub_0804B260
	ldr r3, [r5]
	ldrb r2, [r3, #2]
	ldr r6, _0804D400 @ =0x030052A4
	ldr r4, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r2, #0
	strh r0, [r1, #0xa]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #3
	strh r1, [r0, #0xa]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0x90
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	strh r2, [r0, #0xc]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804D404 @ =sub_0804D0B0
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	ldr r2, [r6]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1, #3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r0, [r5]
	adds r0, #5
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D3EC: .4byte gBlendValue
_0804D3F0: .4byte 0x04000050
_0804D3F4: .4byte 0x081177C4
_0804D3F8: .4byte gUnk_030034A0
_0804D3FC: .4byte 0x03004D84
_0804D400: .4byte 0x030052A4
_0804D404: .4byte sub_0804D0B0

	thumb_func_start sub_0804D408
sub_0804D408: @ 0x0804D408
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r0, _0804D4C8 @ =0x03004D84
	mov r8, r0
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	movs r0, #0x3f
	ands r0, r1
	ldr r6, _0804D4CC @ =0x030052A4
	ldr r3, [r6]
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r3, r4, r3
	lsrs r1, r1, #6
	lsls r1, r1, #3
	ldrb r2, [r3, #1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #3
	bl sub_0804B260
	ldr r1, [r6]
	adds r1, r4, r1
	lsls r0, r0, #4
	movs r2, #0
	mov sb, r2
	strh r0, [r1, #4]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #5
	bl sub_0804B260
	ldr r1, [r6]
	adds r1, r4, r1
	lsls r0, r0, #4
	strh r0, [r1, #6]
	mov r2, r8
	ldr r0, [r2]
	adds r0, #7
	bl sub_0804B260
	adds r5, r0, #0
	ldr r0, [r6]
	adds r0, r4, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r5, r5, #0x14
	asrs r5, r5, #0x10
	adds r1, r5, #0
	bl DivideQ4
	ldr r1, [r6]
	adds r1, r4, r1
	strh r0, [r1, #8]
	movs r2, #6
	ldrsh r0, [r1, r2]
	adds r1, r5, #0
	bl DivideQ4
	ldr r1, [r6]
	adds r4, r4, r1
	strh r0, [r4, #0xa]
	mov r0, sb
	strh r0, [r4, #0xe]
	strh r0, [r4, #0xc]
	ldrh r1, [r4]
	ldr r0, _0804D4D0 @ =0xFFFFF807
	ands r0, r1
	strh r0, [r4]
	ldr r0, _0804D4D4 @ =sub_0804CC4C
	str r0, [r4, #0x20]
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #9
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D4C8: .4byte 0x03004D84
_0804D4CC: .4byte 0x030052A4
_0804D4D0: .4byte 0xFFFFF807
_0804D4D4: .4byte sub_0804CC4C

	thumb_func_start sub_0804D4D8
sub_0804D4D8: @ 0x0804D4D8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r6, _0804D624 @ =0x03004D84
	ldr r0, [r6]
	ldrb r1, [r0, #2]
	ldr r2, _0804D628 @ =0x030052A4
	mov r8, r2
	ldr r3, [r2]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrb r4, [r0, #3]
	movs r1, #0x7f
	ands r4, r1
	lsls r4, r4, #0xf
	ldr r1, [r2]
	ldr r3, _0804D62C @ =0xFFC07FFF
	ands r1, r3
	orrs r1, r4
	str r1, [r2]
	adds r0, #4
	bl sub_0804B260
	adds r3, r0, #0
	ldr r0, [r6]
	ldrb r2, [r0, #2]
	mov r1, r8
	ldr r4, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r3, r3, #4
	movs r2, #0
	mov sb, r2
	strh r3, [r1, #4]
	adds r0, #6
	bl sub_0804B260
	adds r3, r0, #0
	ldr r0, [r6]
	ldrb r2, [r0, #2]
	mov r1, r8
	ldr r4, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r3, r3, #4
	strh r3, [r1, #6]
	adds r0, #8
	bl sub_0804B260
	adds r4, r0, #0
	ldr r0, [r6]
	ldrb r1, [r0, #2]
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x14
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl DivideQ4
	ldr r3, [r6]
	ldrb r2, [r3, #2]
	mov r1, r8
	ldr r5, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	strh r0, [r1, #8]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r2, #6
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl DivideQ4
	ldr r3, [r6]
	ldrb r2, [r3, #2]
	mov r1, r8
	ldr r4, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0xa]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	mov r2, sb
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xc]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _0804D630 @ =0xFFFFF807
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804D634 @ =sub_0804CC4C
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r3, _0804D638 @ =gEntityInfo
	ldr r2, [r6]
	ldrb r1, [r2, #3]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0, #4]
	lsls r1, r1, #4
	strh r1, [r0]
	ldrb r1, [r2, #3]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0, #6]
	lsls r1, r1, #4
	strh r1, [r0, #2]
	adds r2, #0xa
	str r2, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D624: .4byte 0x03004D84
_0804D628: .4byte 0x030052A4
_0804D62C: .4byte 0xFFC07FFF
_0804D630: .4byte 0xFFFFF807
_0804D634: .4byte sub_0804CC4C
_0804D638: .4byte gEntityInfo

	thumb_func_start sub_0804D63C
sub_0804D63C: @ 0x0804D63C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r5, _0804D77C @ =0x03004D84
	ldr r0, [r5]
	adds r0, #4
	bl sub_0804B260
	adds r3, r0, #0
	ldr r0, [r5]
	ldrb r2, [r0, #2]
	ldr r6, _0804D780 @ =0x030052A4
	ldr r4, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r2, #0
	mov sl, r2
	strh r3, [r1, #6]
	strh r3, [r1, #4]
	ldrb r2, [r0, #2]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r2, #6
	ldrsh r4, [r1, r2]
	adds r0, #6
	bl sub_0804B260
	adds r1, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl DivideQ8
	ldr r4, [r5]
	ldrb r2, [r4, #2]
	ldr r3, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	ldrb r0, [r4, #2]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r3, [r4, #3]
	movs r0, #0x7f
	ands r3, r0
	lsls r3, r3, #0xf
	ldr r0, [r1]
	ldr r2, _0804D784 @ =0xFFC07FFF
	ands r0, r2
	orrs r0, r3
	str r0, [r1]
	ldr r0, _0804D788 @ =gOamAffineBuffer
	mov sb, r0
	ldr r1, _0804D78C @ =gEntityInfo
	mov r8, r1
	ldrb r1, [r4, #3]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl ReciprocalQ8
	ldr r4, [r5]
	ldrb r2, [r4, #2]
	ldr r3, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	strh r0, [r1, #0x16]
	ldrb r1, [r4, #3]
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	add r0, sb
	movs r1, #6
	ldrsh r0, [r0, r1]
	bl ReciprocalQ8
	ldr r3, [r5]
	ldrb r2, [r3, #2]
	ldr r4, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0x18]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	mov r2, sl
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xc]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _0804D790 @ =0xFFFFF807
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804D794 @ =sub_0804CC4C
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #8
	str r0, [r5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D77C: .4byte 0x03004D84
_0804D780: .4byte 0x030052A4
_0804D784: .4byte 0xFFC07FFF
_0804D788: .4byte gOamAffineBuffer
_0804D78C: .4byte gEntityInfo
_0804D790: .4byte 0xFFFFF807
_0804D794: .4byte sub_0804CC4C

	thumb_func_start sub_0804D798
sub_0804D798: @ 0x0804D798
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r6, _0804D8C4 @ =0x03004D84
	ldr r0, [r6]
	adds r0, #4
	bl sub_0804B260
	adds r3, r0, #0
	ldr r0, [r6]
	ldrb r2, [r0, #2]
	ldr r1, _0804D8C8 @ =0x030052A4
	mov r8, r1
	ldr r4, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r3, r3, #4
	movs r2, #0
	mov sb, r2
	strh r3, [r1, #4]
	adds r0, #6
	bl sub_0804B260
	adds r3, r0, #0
	ldr r0, [r6]
	ldrb r2, [r0, #2]
	mov r1, r8
	ldr r4, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r3, r3, #4
	strh r3, [r1, #6]
	adds r0, #8
	bl sub_0804B260
	adds r4, r0, #0
	ldr r0, [r6]
	ldrb r1, [r0, #2]
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x14
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl DivideQ4
	ldr r3, [r6]
	ldrb r2, [r3, #2]
	mov r1, r8
	ldr r5, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	strh r0, [r1, #8]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r2, #6
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl DivideQ4
	ldr r3, [r6]
	ldrb r2, [r3, #2]
	mov r1, r8
	ldr r4, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0xa]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	mov r2, sb
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xc]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _0804D8CC @ =0xFFFFF807
	ands r1, r2
	movs r2, #0x20
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804D8D0 @ =sub_0804CC4C
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r3, [r6]
	ldrb r0, [r3, #2]
	mov r1, r8
	ldr r2, [r1]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #3
	ldrb r3, [r1, #1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r0, [r6]
	adds r0, #0xa
	str r0, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D8C4: .4byte 0x03004D84
_0804D8C8: .4byte 0x030052A4
_0804D8CC: .4byte 0xFFFFF807
_0804D8D0: .4byte sub_0804CC4C

	thumb_func_start sub_0804D8D4
sub_0804D8D4: @ 0x0804D8D4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, _0804D98C @ =0x03004D84
	ldr r0, [r5]
	adds r0, #3
	bl sub_0804B260
	adds r3, r0, #0
	ldr r0, [r5]
	ldrb r2, [r0, #2]
	ldr r6, _0804D990 @ =0x030052A4
	ldr r4, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r2, #0
	mov r8, r2
	strh r3, [r1, #6]
	strh r3, [r1, #4]
	ldrb r2, [r0, #2]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r2, #6
	ldrsh r4, [r1, r2]
	adds r0, #5
	bl sub_0804B260
	adds r1, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl DivideQ8
	ldr r3, [r5]
	ldrb r2, [r3, #2]
	ldr r4, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	mov r1, r8
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _0804D994 @ =0xFFFFF807
	ands r1, r2
	movs r2, #8
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804D998 @ =sub_0804CC4C
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #7
	str r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D98C: .4byte 0x03004D84
_0804D990: .4byte 0x030052A4
_0804D994: .4byte 0xFFFFF807
_0804D998: .4byte sub_0804CC4C

	thumb_func_start sub_0804D99C
sub_0804D99C: @ 0x0804D99C
	push {r4, r5, r6, lr}
	ldr r6, _0804DA50 @ =0x03004D84
	ldr r3, [r6]
	ldrb r0, [r3, #2]
	ldr r5, _0804DA54 @ =0x030052A4
	ldr r2, [r5]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #3
	ldrb r3, [r1, #1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r0, [r6]
	ldrb r2, [r0, #2]
	ldr r3, [r5]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r2, [r0, #4]
	strh r2, [r1, #8]
	ldrb r2, [r0, #2]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r2, [r0, #5]
	strh r2, [r1, #0xa]
	adds r0, #6
	bl sub_0804B260
	ldr r3, [r6]
	ldrb r2, [r3, #2]
	ldr r4, [r5]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0x14]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r3, #8]
	strb r1, [r0, #0x1e]
	ldr r3, [r6]
	ldrb r0, [r3, #2]
	ldr r4, [r5]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r0, _0804DA58 @ =0xFFFFF807
	ands r0, r2
	strh r0, [r1]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804DA5C @ =sub_0804CAC8
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, #9
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DA50: .4byte 0x03004D84
_0804DA54: .4byte 0x030052A4
_0804DA58: .4byte 0xFFFFF807
_0804DA5C: .4byte sub_0804CAC8

	thumb_func_start sub_0804DA60
sub_0804DA60: @ 0x0804DA60
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _0804DB24 @ =0x03004D84
	mov r8, r0
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldr r6, _0804DB28 @ =0x030052A4
	ldr r5, [r6]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r5
	ldrb r4, [r0, #3]
	movs r1, #0x7f
	ands r4, r1
	lsls r4, r4, #0xf
	ldr r1, [r2]
	ldr r3, _0804DB2C @ =0xFFC07FFF
	ands r1, r3
	orrs r1, r4
	str r1, [r2]
	ldrb r2, [r0, #2]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r2, [r0, #4]
	strh r2, [r1, #8]
	ldrb r2, [r0, #2]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r2, [r0, #5]
	strh r2, [r1, #0xa]
	adds r0, #6
	bl sub_0804B260
	mov r1, r8
	ldr r3, [r1]
	ldrb r2, [r3, #2]
	ldr r4, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0x14]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r3, #8]
	strb r1, [r0, #0x1e]
	mov r0, r8
	ldr r3, [r0]
	ldrb r1, [r3, #2]
	ldr r4, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r0]
	ldr r1, _0804DB30 @ =0xFFFFF807
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804DB34 @ =sub_0804CAC8
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #9
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DB24: .4byte 0x03004D84
_0804DB28: .4byte 0x030052A4
_0804DB2C: .4byte 0xFFC07FFF
_0804DB30: .4byte 0xFFFFF807
_0804DB34: .4byte sub_0804CAC8

	thumb_func_start sub_0804DB38
sub_0804DB38: @ 0x0804DB38
	push {r4, r5, lr}
	ldr r5, _0804DBC4 @ =0x03004D84
	ldr r2, [r5]
	ldrb r1, [r2, #2]
	ldr r4, _0804DBC8 @ =0x030052A4
	ldr r3, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r2, #4]
	strh r1, [r0, #8]
	ldrb r1, [r2, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r2, #5]
	strh r1, [r0, #0xa]
	ldrb r0, [r2, #2]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r2, [r2, #3]
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #3
	ldrb r3, [r1, #1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r3, [r5]
	ldrb r0, [r3, #2]
	ldr r4, [r4]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrh r2, [r1]
	ldr r0, _0804DBCC @ =0xFFFFF807
	ands r0, r2
	strh r0, [r1]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804DBD0 @ =sub_0804CF28
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #6
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804DBC4: .4byte 0x03004D84
_0804DBC8: .4byte 0x030052A4
_0804DBCC: .4byte 0xFFFFF807
_0804DBD0: .4byte sub_0804CF28

	thumb_func_start sub_0804DBD4
sub_0804DBD4: @ 0x0804DBD4
	push {r4, r5, lr}
	ldr r5, _0804DC58 @ =0x03004D84
	ldr r2, [r5]
	ldrb r1, [r2, #2]
	ldr r4, _0804DC5C @ =0x030052A4
	ldr r3, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r2, #3]
	strh r1, [r0, #4]
	ldrb r1, [r2, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r2, #4]
	strb r1, [r0, #0x1e]
	ldrb r1, [r2, #4]
	strh r1, [r0, #0xc]
	ldr r3, [r5]
	ldrb r1, [r3, #2]
	ldr r2, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r3, #5]
	strb r1, [r0, #0x1f]
	ldr r2, [r5]
	ldrb r1, [r2, #2]
	ldr r3, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r2, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0x14]
	ldrb r1, [r2, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, _0804DC60 @ =sub_0804CF80
	str r1, [r0, #0x20]
	ldrb r1, [r2, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #7
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804DC58: .4byte 0x03004D84
_0804DC5C: .4byte 0x030052A4
_0804DC60: .4byte sub_0804CF80

	thumb_func_start sub_0804DC64
sub_0804DC64: @ 0x0804DC64
	push {r4, lr}
	ldr r3, _0804DCA0 @ =0x04000200
	ldrh r1, [r3]
	movs r2, #2
	orrs r1, r2
	strh r1, [r3]
	ldr r4, _0804DCA4 @ =0x04000004
	ldrh r1, [r4]
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r4]
	ldr r1, _0804DCA8 @ =0x030052A4
	ldr r2, [r1]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0804DC9A
	ldrh r0, [r1, #0x14]
	subs r0, #1
	strh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0804DCAC
_0804DC9A:
	movs r0, #1
	b _0804DCBE
	.align 2, 0
_0804DCA0: .4byte 0x04000200
_0804DCA4: .4byte 0x04000004
_0804DCA8: .4byte 0x030052A4
_0804DCAC:
	ldrh r1, [r3]
	ldr r0, _0804DCC4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3]
	ldrh r1, [r4]
	ldr r0, _0804DCC8 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4]
	movs r0, #0
_0804DCBE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804DCC4: .4byte 0x0000FFFD
_0804DCC8: .4byte 0x0000FFEF

	thumb_func_start sub_0804DCCC
sub_0804DCCC: @ 0x0804DCCC
	push {r4, r5, r6, lr}
	ldr r5, _0804DD3C @ =0x03004D84
	ldr r0, [r5]
	adds r0, #3
	bl sub_0804B260
	ldr r3, [r5]
	ldrb r2, [r3, #2]
	ldr r6, _0804DD40 @ =0x030052A4
	ldr r4, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0x14]
	ldrb r0, [r3, #2]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r0, #0x14
	ldrsh r2, [r1, r0]
	lsrs r2, r2, #0x1f
	lsls r2, r2, #7
	ldrb r3, [r1, #3]
	movs r0, #0x7f
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #3]
	ldr r2, [r5]
	ldrb r1, [r2, #2]
	ldr r3, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, _0804DD44 @ =sub_0804DC64
	str r1, [r0, #0x20]
	ldrb r1, [r2, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #5
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DD3C: .4byte 0x03004D84
_0804DD40: .4byte 0x030052A4
_0804DD44: .4byte sub_0804DC64

	thumb_func_start sub_0804DD48
sub_0804DD48: @ 0x0804DD48
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r6, _0804DE24 @ =0x03004D84
	ldr r4, [r6]
	ldrb r0, [r4, #2]
	ldr r1, _0804DE28 @ =0x030052A4
	mov r8, r1
	ldr r5, [r1]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r3, [r4, #3]
	movs r0, #0x7f
	ands r3, r0
	lsls r3, r3, #0xf
	ldr r0, [r1]
	ldr r2, _0804DE2C @ =0xFFC07FFF
	ands r0, r2
	orrs r0, r3
	str r0, [r1]
	ldrb r1, [r4, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r1, [r4, #4]
	lsrs r1, r1, #4
	movs r5, #0
	strb r1, [r0, #0x1f]
	ldr r0, [r6]
	ldrb r1, [r0, #2]
	mov r2, r8
	ldr r4, [r2]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r4
	ldrb r3, [r0, #4]
	movs r1, #0xf
	ands r1, r3
	strh r1, [r2, #0x1a]
	ldrb r2, [r0, #2]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrb r2, [r0, #5]
	strh r2, [r1, #0x1c]
	adds r0, #6
	bl sub_0804B260
	ldr r3, [r6]
	ldrb r2, [r3, #2]
	mov r1, r8
	ldr r4, [r1]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0x14]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, _0804DE30 @ =sub_0804CFD0
	str r1, [r0, #0x20]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	strh r5, [r0, #0xe]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	mov r2, r8
	ldr r1, [r2]
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r0, #0x14
	ldrsh r1, [r2, r0]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	strb r0, [r2, #0x1e]
	ldr r0, [r6]
	adds r0, #8
	str r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE24: .4byte 0x03004D84
_0804DE28: .4byte 0x030052A4
_0804DE2C: .4byte 0xFFC07FFF
_0804DE30: .4byte sub_0804CFD0

	thumb_func_start sub_0804DE34
sub_0804DE34: @ 0x0804DE34
	push {r4, r5, r6, lr}
	ldr r5, _0804DEAC @ =0x03004D84
	ldr r0, [r5]
	adds r0, #3
	bl sub_0804B260
	ldr r3, [r5]
	ldrb r2, [r3, #2]
	ldr r6, _0804DEB0 @ =0x030052A4
	ldr r4, [r6]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	strh r0, [r1, #0x14]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #0x14]
	lsrs r1, r1, #0xf
	strb r1, [r0, #0x1e]
	ldr r2, [r5]
	ldrb r1, [r2, #2]
	ldr r3, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, _0804DEB4 @ =sub_0804D074
	str r1, [r0, #0x20]
	ldrb r1, [r2, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _0804DEB8 @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5]
	adds r0, #5
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DEAC: .4byte 0x03004D84
_0804DEB0: .4byte 0x030052A4
_0804DEB4: .4byte sub_0804D074
_0804DEB8: .4byte gUnk_030034A0

	thumb_func_start sub_0804DEBC
sub_0804DEBC: @ 0x0804DEBC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804DF00 @ =0x03004D84
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	adds r7, r0, #0
	cmp r1, #0xff
	bne _0804DF18
	ldr r5, _0804DF04 @ =0x030052A4
	movs r6, #8
	rsbs r6, r6, #0
	movs r4, #0
	movs r3, #0x1f
_0804DED4:
	ldr r0, [r5]
	adds r0, r4, r0
	ldrb r2, [r0]
	adds r1, r6, #0
	ands r1, r2
	strb r1, [r0]
	adds r4, #0x24
	subs r3, #1
	cmp r3, #0
	bge _0804DED4
	ldr r2, _0804DF08 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0804DF0C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0804DF10 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0804DF14 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	b _0804DF5A
	.align 2, 0
_0804DF00: .4byte 0x03004D84
_0804DF04: .4byte 0x030052A4
_0804DF08: .4byte 0x04000200
_0804DF0C: .4byte 0x0000FFFD
_0804DF10: .4byte 0x04000004
_0804DF14: .4byte 0x0000FFEF
_0804DF18:
	ldrb r1, [r2, #2]
	ldr r3, _0804DF68 @ =0x030052A4
	ldr r2, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0, #0x20]
	ldr r0, _0804DF6C @ =sub_0804DC64
	cmp r1, r0
	bne _0804DF42
	ldr r2, _0804DF70 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0804DF74 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0804DF78 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0804DF7C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
_0804DF42:
	ldr r0, [r7]
	ldrb r0, [r0, #2]
	ldr r2, [r3]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0804DF5A:
	ldr r0, [r7]
	adds r0, #3
	str r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DF68: .4byte 0x030052A4
_0804DF6C: .4byte sub_0804DC64
_0804DF70: .4byte 0x04000200
_0804DF74: .4byte 0x0000FFFD
_0804DF78: .4byte 0x04000004
_0804DF7C: .4byte 0x0000FFEF

	thumb_func_start sub_0804DF80
sub_0804DF80: @ 0x0804DF80
	push {r4, r5, lr}
	ldr r4, _0804DFC8 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0804DFCC @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E000
	ldr r2, _0804DFD0 @ =0x04000050
	ldr r1, _0804DFD4 @ =0x08057B4C
	ldr r0, _0804DFD8 @ =gUnk_030034A0
	ldr r3, [r0]
	ldrb r0, [r3, #5]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
	cmp r2, #0
	beq _0804DFE0
	ldr r1, _0804DFDC @ =gBlendValue
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r3, #6]
	cmp r0, r2
	bhi _0804E000
	movs r0, #0
	strb r0, [r4]
	b _0804DFF4
	.align 2, 0
_0804DFC8: .4byte gUnk_030034E4
_0804DFCC: .4byte gUnk_03004C20
_0804DFD0: .4byte 0x04000050
_0804DFD4: .4byte 0x08057B4C
_0804DFD8: .4byte gUnk_030034A0
_0804DFDC: .4byte gBlendValue
_0804DFE0:
	ldr r1, _0804DFFC @ =gBlendValue
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r5, [r3, #6]
	cmp r0, r5
	blo _0804E000
	strb r2, [r4]
_0804DFF4:
	ldrb r0, [r3, #6]
	strb r0, [r1]
	movs r0, #0
	b _0804E002
	.align 2, 0
_0804DFFC: .4byte gBlendValue
_0804E000:
	movs r0, #1
_0804E002:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0804E008
sub_0804E008: @ 0x0804E008
	push {r4, r5, lr}
	ldr r1, _0804E044 @ =gUnk_030034A0
	ldr r3, [r1]
	ldrb r4, [r3, #0x1c]
	movs r0, #8
	ands r0, r4
	adds r5, r1, #0
	cmp r0, #0
	beq _0804E048
	ldrh r0, [r3, #0x18]
	adds r0, #0x10
	strh r0, [r3, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x1a
	ldrsh r1, [r3, r2]
	cmp r0, r1
	ble _0804E06A
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r4
	strb r0, [r3, #0x1c]
	ldr r2, [r5]
	ldrb r1, [r2, #0x1c]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x1c]
	b _0804E062
	.align 2, 0
_0804E044: .4byte gUnk_030034A0
_0804E048:
	ldrh r0, [r3, #0x18]
	subs r0, #0x10
	strh r0, [r3, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x1a
	ldrsh r1, [r3, r2]
	cmp r0, r1
	bge _0804E06A
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r4
	strb r0, [r3, #0x1c]
_0804E062:
	ldr r1, [r5]
	ldrh r0, [r1, #0x1a]
	strh r0, [r1, #0x18]
	b _0804E0CE
_0804E06A:
	ldr r1, [r5]
	ldrb r0, [r1, #0x1c]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0804E090
	cmp r0, #1
	bgt _0804E080
	cmp r0, #0
	beq _0804E086
	b _0804E0CE
_0804E080:
	cmp r0, #3
	beq _0804E0A0
	b _0804E0CE
_0804E086:
	ldr r0, _0804E08C @ =gMPlayInfo_0
	b _0804E092
	.align 2, 0
_0804E08C: .4byte gMPlayInfo_0
_0804E090:
	ldr r0, _0804E09C @ =gMPlayInfo_1
_0804E092:
	ldrh r2, [r1, #0x18]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	b _0804E0CE
	.align 2, 0
_0804E09C: .4byte gMPlayInfo_1
_0804E0A0:
	ldr r4, _0804E0D4 @ =gSoundVolume
	ldrh r0, [r1, #0x18]
	strh r0, [r4]
	ldr r0, _0804E0D8 @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0804E0DC @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0804E0E0 @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0804E0E4 @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
_0804E0CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804E0D4: .4byte gSoundVolume
_0804E0D8: .4byte gMPlayInfo_0
_0804E0DC: .4byte gMPlayInfo_1
_0804E0E0: .4byte gMPlayInfo_2
_0804E0E4: .4byte gMPlayInfo_3

	thumb_func_start sub_0804E0E8
sub_0804E0E8: @ 0x0804E0E8
	push {r4, r5, r6, lr}
	ldr r2, _0804E13C @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r2]
	ldr r6, _0804E140 @ =gUnk_03004C20
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804E0FE
	b _0804E3C8
_0804E0FE:
	ldr r0, _0804E144 @ =gUnk_030034A0
	ldr r3, [r0]
	ldrb r1, [r3, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0804E150
	ldr r0, _0804E148 @ =gBlendValue
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _0804E122
	b _0804E3C8
_0804E122:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0804E14C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r3, #0x1c]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #0x1c]
	b _0804E3C8
	.align 2, 0
_0804E13C: .4byte gUnk_030034E4
_0804E140: .4byte gUnk_03004C20
_0804E144: .4byte gUnk_030034A0
_0804E148: .4byte gBlendValue
_0804E14C: .4byte 0x0000FBFF
_0804E150:
	ldr r1, _0804E1C4 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _0804E1C8 @ =gBlendValue
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _0804E168
	b _0804E3BC
_0804E168:
	movs r0, #0x10
	strb r0, [r1]
	strb r5, [r2]
	bl sub_0804BF7C
	bl sub_0800A468
	ldr r1, _0804E1CC @ =gBg2XMag
	ldr r0, _0804E1D0 @ =gBg2YMag
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r2, #0
	strh r4, [r0]
	strh r4, [r1]
	ldr r0, _0804E1D4 @ =gBg2Alpha
	strb r5, [r0]
	bl m4aMPlayAllStop
	ldr r0, _0804E1D8 @ =gSoundVolume
	strh r4, [r0]
	ldr r3, _0804E1DC @ =0x0805769C
	ldr r0, _0804E1E0 @ =gUnk_03005284
	ldr r2, [r0]
	ldrb r0, [r2, #4]
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _0804E1A6
	b _0804E3C4
_0804E1A6:
	lsrs r0, r1, #4
	strb r0, [r6, #0xd]
	ldrb r0, [r2, #4]
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #8
	bls _0804E1BA
	b _0804E3C4
_0804E1BA:
	lsls r0, r1, #2
	ldr r1, _0804E1E4 @ =_0804E1E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E1C4: .4byte 0x04000050
_0804E1C8: .4byte gBlendValue
_0804E1CC: .4byte gBg2XMag
_0804E1D0: .4byte gBg2YMag
_0804E1D4: .4byte gBg2Alpha
_0804E1D8: .4byte gSoundVolume
_0804E1DC: .4byte 0x0805769C
_0804E1E0: .4byte gUnk_03005284
_0804E1E4: .4byte _0804E1E8
_0804E1E8: @ jump table
	.4byte _0804E278 @ case 0
	.4byte _0804E3C4 @ case 1
	.4byte _0804E20C @ case 2
	.4byte _0804E3C4 @ case 3
	.4byte _0804E2F8 @ case 4
	.4byte _0804E368 @ case 5
	.4byte _0804E3C4 @ case 6
	.4byte _0804E3C4 @ case 7
	.4byte _0804E278 @ case 8
_0804E20C:
	ldr r2, _0804E258 @ =gUnk_03004C20
	ldrb r0, [r2, #0xd]
	cmp r0, #5
	beq _0804E216
	b _0804E3C8
_0804E216:
	ldr r1, _0804E25C @ =gMosaicSize
	movs r0, #0xf
	strb r0, [r1]
	movs r4, #0
	movs r0, #8
	strb r0, [r2, #0xc]
	movs r0, #6
	strb r0, [r2, #0xd]
	ldr r2, _0804E260 @ =gUnk_03003410
	strb r4, [r2, #9]
	strb r4, [r2, #0xa]
	ldr r1, _0804E264 @ =gCallbackQueue
	ldr r0, _0804E268 @ =sub_08001158
	str r0, [r1, #0x28]
	movs r3, #1
	strb r3, [r2, #8]
	ldr r0, _0804E26C @ =sub_08003904
	str r0, [r1, #0x2c]
	str r3, [r1, #0x30]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #3
	strb r0, [r1]
	ldr r1, _0804E270 @ =gIntrTable
	ldr r0, _0804E274 @ =sub_080009D8
	str r0, [r1]
	b _0804E3C8
	.align 2, 0
_0804E258: .4byte gUnk_03004C20
_0804E25C: .4byte gMosaicSize
_0804E260: .4byte gUnk_03003410
_0804E264: .4byte gCallbackQueue
_0804E268: .4byte sub_08001158
_0804E26C: .4byte sub_08003904
_0804E270: .4byte gIntrTable
_0804E274: .4byte sub_080009D8
_0804E278:
	ldr r2, _0804E2D0 @ =gUnk_03004C20
	ldrb r0, [r2, #0xd]
	cmp r0, #0
	bne _0804E282
	b _0804E3C4
_0804E282:
	ldr r1, _0804E2D4 @ =gMosaicSize
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _0804E2D8 @ =0x0805769C
	ldr r0, _0804E2DC @ =gUnk_03005284
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r4, #0
	strb r0, [r2, #0xc]
	ldr r2, _0804E2E0 @ =gUnk_03003410
	strb r4, [r2, #9]
	strb r4, [r2, #0xa]
	ldr r1, _0804E2E4 @ =gCallbackQueue
	ldr r0, _0804E2E8 @ =sub_08001158
	str r0, [r1, #0x28]
	movs r3, #1
	strb r3, [r2, #8]
	ldr r0, _0804E2EC @ =sub_08003904
	str r0, [r1, #0x2c]
	str r3, [r1, #0x30]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r1, #0x79
	movs r0, #3
	strb r0, [r1]
	ldr r1, _0804E2F0 @ =gIntrTable
	ldr r0, _0804E2F4 @ =sub_080009D8
	str r0, [r1]
	b _0804E3C4
	.align 2, 0
_0804E2D0: .4byte gUnk_03004C20
_0804E2D4: .4byte gMosaicSize
_0804E2D8: .4byte 0x0805769C
_0804E2DC: .4byte gUnk_03005284
_0804E2E0: .4byte gUnk_03003410
_0804E2E4: .4byte gCallbackQueue
_0804E2E8: .4byte sub_08001158
_0804E2EC: .4byte sub_08003904
_0804E2F0: .4byte gIntrTable
_0804E2F4: .4byte sub_080009D8
_0804E2F8:
	ldr r4, _0804E344 @ =gUnk_03004C20
	ldr r1, _0804E348 @ =0x0805769C
	ldr r0, _0804E34C @ =gUnk_03005284
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0
	strb r0, [r4, #0xc]
	ldr r1, _0804E350 @ =gCallbackQueue
	ldr r0, _0804E354 @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _0804E358 @ =sub_08025818
	str r0, [r1, #0x2c]
	ldr r0, _0804E35C @ =sub_0800BFF4
	str r0, [r1, #0x30]
	movs r0, #1
	str r0, [r1, #0x34]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	adds r1, #0x79
	movs r0, #4
	strb r0, [r1]
	subs r0, #5
	str r0, [r4]
	ldr r0, _0804E360 @ =gMosaicSize
	strb r2, [r0]
	ldr r0, _0804E364 @ =gBlendValue
	strb r2, [r0]
	b _0804E3C8
	.align 2, 0
_0804E344: .4byte gUnk_03004C20
_0804E348: .4byte 0x0805769C
_0804E34C: .4byte gUnk_03005284
_0804E350: .4byte gCallbackQueue
_0804E354: .4byte InputHandler_Normal
_0804E358: .4byte sub_08025818
_0804E35C: .4byte sub_0800BFF4
_0804E360: .4byte gMosaicSize
_0804E364: .4byte gBlendValue
_0804E368:
	ldr r1, _0804E3A4 @ =gCallbackQueue
	ldr r0, _0804E3A8 @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _0804E3AC @ =sub_080487B4
	str r0, [r1, #0x2c]
	ldr r0, _0804E3B0 @ =sub_0800BFF4
	str r0, [r1, #0x30]
	movs r0, #1
	str r0, [r1, #0x34]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r4, #0
	str r4, [r0]
	adds r1, #0x79
	movs r0, #4
	strb r0, [r1]
	bl sub_08003D58
	ldr r0, _0804E3B4 @ =gUnk_03004D9C
	strb r4, [r0]
	ldr r1, _0804E3B8 @ =gUnk_03004C20
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	b _0804E3C8
	.align 2, 0
_0804E3A4: .4byte gCallbackQueue
_0804E3A8: .4byte InputHandler_Normal
_0804E3AC: .4byte sub_080487B4
_0804E3B0: .4byte sub_0800BFF4
_0804E3B4: .4byte gUnk_03004D9C
_0804E3B8: .4byte gUnk_03004C20
_0804E3BC:
	ldr r1, _0804E3D0 @ =gMosaicSize
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0804E3C4:
	bl sub_0804E008
_0804E3C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E3D0: .4byte gMosaicSize

	thumb_func_start sub_0804E3D4
sub_0804E3D4: @ 0x0804E3D4
	ldr r3, _0804E3FC @ =gUnk_030034A0
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0804E400 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	ldr r2, [r3]
	ldrb r1, [r2, #2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #2]
	bx lr
	.align 2, 0
_0804E3FC: .4byte gUnk_030034A0
_0804E400: .4byte 0x03004D84

	thumb_func_start sub_0804E404
sub_0804E404: @ 0x0804E404
	ldr r0, _0804E420 @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804E424 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804E420: .4byte gUnk_030034A0
_0804E424: .4byte 0x03004D84

	thumb_func_start sub_0804E428
sub_0804E428: @ 0x0804E428
	ldr r0, _0804E440 @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0804E444 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804E440: .4byte gUnk_030034A0
_0804E444: .4byte 0x03004D84

	thumb_func_start sub_0804E448
sub_0804E448: @ 0x0804E448
	push {r4, r5, lr}
	ldr r5, _0804E480 @ =0x03000814
	ldr r4, _0804E484 @ =0x03004D84
	ldr r0, [r4]
	adds r0, #2
	bl sub_0804B254
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0804E488 @ =gUnk_03004C20
	ldr r1, [r1, #4]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, _0804E48C @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	adds r0, #4
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804E480: .4byte 0x03000814
_0804E484: .4byte 0x03004D84
_0804E488: .4byte gUnk_03004C20
_0804E48C: .4byte gUnk_030034A0

	thumb_func_start sub_0804E490
sub_0804E490: @ 0x0804E490
	push {r4, r5, r6, lr}
	movs r6, #0x80
	lsls r6, r6, #0x13
	ldr r0, _0804E4C8 @ =0x081177C4
	ldr r5, _0804E4CC @ =0x03004D84
	ldr r3, [r5]
	ldrb r2, [r3, #2]
	lsls r2, r2, #1
	adds r2, r2, r0
	ldr r0, _0804E4D0 @ =gUnk_030034A0
	ldr r4, [r0]
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	ldrh r0, [r2]
	orrs r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xd
	orrs r1, r0
	strh r1, [r6]
	adds r3, #3
	str r3, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E4C8: .4byte 0x081177C4
_0804E4CC: .4byte 0x03004D84
_0804E4D0: .4byte gUnk_030034A0

	thumb_func_start sub_0804E4D4
sub_0804E4D4: @ 0x0804E4D4
	ldr r1, _0804E514 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r1]
	ldr r3, _0804E518 @ =gUnk_030034A0
	ldr r2, [r3]
	ldrb r1, [r2, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldr r1, [r3]
	ldr r2, _0804E51C @ =0x03004D84
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	strb r0, [r1, #5]
	ldr r1, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	strb r0, [r1, #6]
	ldr r3, [r3]
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r2]
	adds r0, #4
	str r0, [r2]
	bx lr
	.align 2, 0
_0804E514: .4byte gUnk_030034E4
_0804E518: .4byte gUnk_030034A0
_0804E51C: .4byte 0x03004D84

	thumb_func_start sub_0804E520
sub_0804E520: @ 0x0804E520
	ldr r1, _0804E55C @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r1]
	ldr r3, _0804E560 @ =gUnk_030034A0
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r1, [r3]
	ldr r2, _0804E564 @ =0x03004D84
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	strb r0, [r1, #5]
	ldr r1, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	strb r0, [r1, #6]
	ldr r3, [r3]
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r2]
	adds r0, #4
	str r0, [r2]
	bx lr
	.align 2, 0
_0804E55C: .4byte gUnk_030034E4
_0804E560: .4byte gUnk_030034A0
_0804E564: .4byte 0x03004D84

	thumb_func_start sub_0804E568
sub_0804E568: @ 0x0804E568
	push {r4, lr}
	ldr r0, _0804E590 @ =0x03004D84
	ldr r1, [r0]
	ldrb r1, [r1, #2]
	adds r4, r0, #0
	cmp r1, #0
	bne _0804E598
	ldr r0, _0804E594 @ =gUnk_030034A0
	ldr r3, [r0]
	ldrb r2, [r3, #2]
	lsls r1, r2, #0x1d
	lsrs r1, r1, #0x1e
	movs r0, #2
	eors r1, r0
	lsls r1, r1, #1
	subs r0, #9
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #2]
	b _0804E5B2
	.align 2, 0
_0804E590: .4byte 0x03004D84
_0804E594: .4byte gUnk_030034A0
_0804E598:
	ldr r0, _0804E5C0 @ =gUnk_030034A0
	ldr r3, [r0]
	ldrb r2, [r3, #0x1c]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1c]
_0804E5B2:
	ldr r0, [r4]
	adds r0, #3
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E5C0: .4byte gUnk_030034A0

	thumb_func_start sub_0804E5C4
sub_0804E5C4: @ 0x0804E5C4
	ldr r0, _0804E5E8 @ =gUnk_030034A0
	ldr r3, [r0]
	ldrb r2, [r3, #0x1c]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1c]
	ldr r1, _0804E5EC @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804E5E8: .4byte gUnk_030034A0
_0804E5EC: .4byte 0x03004D84

	thumb_func_start sub_0804E5F0
sub_0804E5F0: @ 0x0804E5F0
	push {r4, lr}
	ldr r2, _0804E620 @ =gUnk_030034A0
	ldr r1, [r2]
	ldr r3, _0804E624 @ =0x03004D84
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	strb r0, [r1, #5]
	ldr r4, _0804E628 @ =0x04000050
	ldr r1, _0804E62C @ =0x08057B4C
	ldr r0, [r2]
	ldrb r0, [r0, #5]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r2, _0804E630 @ =gBlendValue
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	strb r1, [r2]
	adds r0, #4
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E620: .4byte gUnk_030034A0
_0804E624: .4byte 0x03004D84
_0804E628: .4byte 0x04000050
_0804E62C: .4byte 0x08057B4C
_0804E630: .4byte gBlendValue

	thumb_func_start sub_0804E634
sub_0804E634: @ 0x0804E634
	push {r4, lr}
	ldr r0, _0804E668 @ =0x03004D84
	ldr r4, [r0]
	ldrb r1, [r4, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804E670
	ldr r0, _0804E66C @ =gUnk_030034A0
	ldr r3, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #8
	adds r1, r1, r0
	ldrb r0, [r4, #3]
	lsls r0, r0, #4
	strh r0, [r1]
	ldrb r0, [r4, #2]
	ands r2, r0
	lsls r2, r2, #2
	adds r3, #0xa
	b _0804E690
	.align 2, 0
_0804E668: .4byte 0x03004D84
_0804E66C: .4byte gUnk_030034A0
_0804E670:
	ldr r0, _0804E6AC @ =gUnk_030034A0
	ldr r3, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r4, #3]
	lsls r0, r0, #4
	strh r0, [r1]
	ldrb r0, [r4, #2]
	ands r2, r0
	lsls r2, r2, #2
	adds r3, #0x12
_0804E690:
	adds r3, r3, r2
	ldrb r0, [r4, #4]
	lsls r0, r0, #4
	strh r0, [r3]
	bl sub_0804B2EC
	ldr r1, _0804E6B0 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #5
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E6AC: .4byte gUnk_030034A0
_0804E6B0: .4byte 0x03004D84

	thumb_func_start sub_0804E6B4
sub_0804E6B4: @ 0x0804E6B4
	push {r4, r5, r6, lr}
	ldr r0, _0804E6F8 @ =gUnk_030034A0
	ldr r3, [r0]
	ldr r6, _0804E6FC @ =0x03004D84
	ldr r4, [r6]
	ldrb r1, [r4, #2]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #0xf
	ldr r1, [r3]
	ldr r2, _0804E700 @ =0xFFFE7FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #0x13
	ldrh r0, [r5]
	ldr r2, _0804E704 @ =0x00001FF8
	ands r2, r0
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	orrs r0, r2
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xd
	orrs r0, r1
	strh r0, [r5]
	adds r4, #3
	str r4, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E6F8: .4byte gUnk_030034A0
_0804E6FC: .4byte 0x03004D84
_0804E700: .4byte 0xFFFE7FFF
_0804E704: .4byte 0x00001FF8

	thumb_func_start sub_0804E708
sub_0804E708: @ 0x0804E708
	push {r4, lr}
	ldr r3, _0804E730 @ =0x04000048
	ldr r4, _0804E734 @ =0x03004D84
	ldr r2, [r4]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
	ldrb r1, [r2, #4]
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3]
	adds r2, #6
	str r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E730: .4byte 0x04000048
_0804E734: .4byte 0x03004D84

	thumb_func_start sub_0804E738
sub_0804E738: @ 0x0804E738
	ldr r3, _0804E764 @ =gUnk_030034A0
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804E768 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804E764: .4byte gUnk_030034A0
_0804E768: .4byte 0x03004D84

	thumb_func_start sub_0804E76C
sub_0804E76C: @ 0x0804E76C
	push {lr}
	bl m4aMPlayAllStop
	ldr r1, _0804E780 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804E780: .4byte 0x03004D84

	thumb_func_start sub_0804E784
sub_0804E784: @ 0x0804E784
	push {r4, lr}
	ldr r4, _0804E79C @ =0x03004D84
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	bl m4aSongNumStop
	ldr r0, [r4]
	adds r0, #3
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E79C: .4byte 0x03004D84

	thumb_func_start sub_0804E7A0
sub_0804E7A0: @ 0x0804E7A0
	push {lr}
	ldr r0, _0804E7B4 @ =0x03004D84
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	cmp r0, #0x22
	bhi _0804E7B8
	bl m4aSongNumStart
	b _0804E7BE
	.align 2, 0
_0804E7B4: .4byte 0x03004D84
_0804E7B8:
	ldrb r0, [r1, #2]
	bl m4aSongNumStart
_0804E7BE:
	ldr r1, _0804E7CC @ =0x03004D84
	ldr r0, [r1]
	adds r0, #3
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804E7CC: .4byte 0x03004D84

	thumb_func_start sub_0804E7D0
sub_0804E7D0: @ 0x0804E7D0
	push {lr}
	bl m4aMPlayAllContinue
	ldr r1, _0804E7E4 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804E7E4: .4byte 0x03004D84

	thumb_func_start sub_0804E7E8
sub_0804E7E8: @ 0x0804E7E8
	ldr r1, _0804E7F4 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #3
	str r0, [r1]
	bx lr
	.align 2, 0
_0804E7F4: .4byte 0x03004D84

	thumb_func_start sub_0804E7F8
sub_0804E7F8: @ 0x0804E7F8
	push {lr}
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r1, _0804E810 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804E810: .4byte 0x03004D84

	thumb_func_start sub_0804E814
sub_0804E814: @ 0x0804E814
	push {lr}
	ldr r2, _0804E83C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0804E840 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0804E844 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0804E848 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	ldr r1, _0804E84C @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804E83C: .4byte 0x04000200
_0804E840: .4byte 0x0000FFFE
_0804E844: .4byte 0x04000004
_0804E848: .4byte 0x0000FFF7
_0804E84C: .4byte 0x03004D84

	thumb_func_start sub_0804E850
sub_0804E850: @ 0x0804E850
	push {lr}
	ldr r2, _0804E878 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0804E87C @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	ldr r1, _0804E880 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804E878: .4byte 0x04000200
_0804E87C: .4byte 0x04000004
_0804E880: .4byte 0x03004D84

	thumb_func_start sub_0804E884
sub_0804E884: @ 0x0804E884
	push {r4, lr}
	ldr r4, _0804E8B4 @ =0x03004D84
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0x22
	bhi _0804E8C0
	ldr r2, _0804E8B8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0804E8BC @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	bl m4aSongNumStart
	b _0804E8E0
	.align 2, 0
_0804E8B4: .4byte 0x03004D84
_0804E8B8: .4byte 0x04000200
_0804E8BC: .4byte 0x04000004
_0804E8C0:
	ldr r2, _0804E8F0 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0804E8F4 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	bl m4aSongNumStart
_0804E8E0:
	ldr r1, _0804E8F8 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #3
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804E8F0: .4byte 0x04000200
_0804E8F4: .4byte 0x04000004
_0804E8F8: .4byte 0x03004D84

	thumb_func_start sub_0804E8FC
sub_0804E8FC: @ 0x0804E8FC
	push {lr}
	ldr r2, _0804E928 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0804E92C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0804E930 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _0804E934 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	ldr r1, _0804E938 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804E928: .4byte 0x04000200
_0804E92C: .4byte 0x0000FFFE
_0804E930: .4byte 0x04000004
_0804E934: .4byte 0x0000FFF7
_0804E938: .4byte 0x03004D84

	thumb_func_start sub_0804E93C
sub_0804E93C: @ 0x0804E93C
	push {lr}
	ldr r2, _0804E968 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0804E96C @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	bl m4aMPlayAllContinue
	ldr r1, _0804E970 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804E968: .4byte 0x04000200
_0804E96C: .4byte 0x04000004
_0804E970: .4byte 0x03004D84

	thumb_func_start sub_0804E974
sub_0804E974: @ 0x0804E974
	push {r4, r5, lr}
	ldr r5, _0804E9C0 @ =0x03004D84
	ldr r0, [r5]
	adds r0, #2
	bl sub_0804B254
	ldr r1, _0804E9C4 @ =gUnk_030034A0
	ldr r1, [r1]
	strh r0, [r1, #0x18]
	ldr r4, _0804E9C8 @ =gSoundVolume
	strh r0, [r4]
	ldr r0, _0804E9CC @ =gMPlayInfo_0
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0804E9D0 @ =gMPlayInfo_1
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0804E9D4 @ =gMPlayInfo_2
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, _0804E9D8 @ =gMPlayInfo_3
	ldrh r2, [r4]
	movs r1, #0xff
	bl m4aMPlayVolumeControl
	ldr r0, [r5]
	adds r0, #4
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804E9C0: .4byte 0x03004D84
_0804E9C4: .4byte gUnk_030034A0
_0804E9C8: .4byte gSoundVolume
_0804E9CC: .4byte gMPlayInfo_0
_0804E9D0: .4byte gMPlayInfo_1
_0804E9D4: .4byte gMPlayInfo_2
_0804E9D8: .4byte gMPlayInfo_3

	thumb_func_start sub_0804E9DC
sub_0804E9DC: @ 0x0804E9DC
	push {r4, r5, lr}
	ldr r4, _0804EA38 @ =gUnk_030034A0
	ldr r3, [r4]
	ldr r5, _0804EA3C @ =0x03004D84
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	movs r1, #3
	ands r1, r0
	ldrb r2, [r3, #0x1c]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1c]
	ldr r0, [r5]
	adds r0, #3
	bl sub_0804B254
	ldr r2, [r4]
	strh r0, [r2, #0x1a]
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0804EA1A
	ldrb r0, [r2, #0x1c]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0x1c]
_0804EA1A:
	ldr r2, [r4]
	ldrh r1, [r2, #0x1a]
	ldr r0, _0804EA40 @ =0x000001FF
	ands r0, r1
	strh r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1c]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x1c]
	ldr r0, [r5]
	adds r0, #5
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804EA38: .4byte gUnk_030034A0
_0804EA3C: .4byte 0x03004D84
_0804EA40: .4byte 0x000001FF

	thumb_func_start sub_0804EA44
sub_0804EA44: @ 0x0804EA44
	ldr r0, _0804EA64 @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r1, [r2, #0x1c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804EA70
	ldr r1, _0804EA68 @ =gIntrTable
	ldr r0, _0804EA6C @ =sub_08000AB0
	str r0, [r1]
	ldrb r1, [r2, #0x1c]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	b _0804EA7C
	.align 2, 0
_0804EA64: .4byte gUnk_030034A0
_0804EA68: .4byte gIntrTable
_0804EA6C: .4byte sub_08000AB0
_0804EA70:
	ldr r1, _0804EA88 @ =gIntrTable
	ldr r0, _0804EA8C @ =sub_08000E68
	str r0, [r1]
	ldrb r0, [r2, #0x1c]
	movs r1, #0x10
	orrs r0, r1
_0804EA7C:
	strb r0, [r2, #0x1c]
	ldr r1, _0804EA90 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804EA88: .4byte gIntrTable
_0804EA8C: .4byte sub_08000E68
_0804EA90: .4byte 0x03004D84

	thumb_func_start sub_0804EA94
sub_0804EA94: @ 0x0804EA94
	push {r4, r5, lr}
	ldr r0, _0804EABC @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _0804EAC0 @ =0x03004D84
	movs r4, #0xf
_0804EAA6:
	ldr r1, [r5]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0804EB24
	ldrb r2, [r1, #1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0804EAC8
	ldr r0, _0804EAC4 @ =0x081179B4
	b _0804EB0E
	.align 2, 0
_0804EABC: .4byte gUnk_030034A0
_0804EAC0: .4byte 0x03004D84
_0804EAC4: .4byte 0x081179B4
_0804EAC8:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0804EADC
	ldr r0, _0804EAD8 @ =0x0811787C
	movs r1, #0x3f
	b _0804EB10
	.align 2, 0
_0804EAD8: .4byte 0x0811787C
_0804EADC:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0804EAFC
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0804EAF4
	ldr r0, _0804EAF0 @ =0x081178B8
	b _0804EB0E
	.align 2, 0
_0804EAF0: .4byte 0x081178B8
_0804EAF4:
	ldr r0, _0804EAF8 @ =0x08117854
	b _0804EB0E
	.align 2, 0
_0804EAF8: .4byte 0x08117854
_0804EAFC:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0804EB0C
	ldr r0, _0804EB08 @ =0x0811790C
	b _0804EB0E
	.align 2, 0
_0804EB08: .4byte 0x0811790C
_0804EB0C:
	ldr r0, _0804EB20 @ =0x081178D8
_0804EB0E:
	adds r1, r4, #0
_0804EB10:
	ands r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _0804EB48
	.align 2, 0
_0804EB20: .4byte 0x081178D8
_0804EB24:
	ldrb r0, [r1]
	bl sub_0804F248
	cmp r0, #0
	beq _0804EB34
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
_0804EB34:
	ldr r0, _0804EB60 @ =gUnk_030034A0
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_0804EB48:
	ldr r0, _0804EB60 @ =gUnk_030034A0
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804EAA6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804EB60: .4byte gUnk_030034A0

	thumb_func_start sub_0804EB64
sub_0804EB64: @ 0x0804EB64
	push {r4, r5, r6, r7, lr}
	ldr r4, _0804EBA8 @ =gUnk_030034A0
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804EBB4
	ldrb r1, [r2, #0x1c]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x1c]
	ldr r1, [r4]
	movs r0, #0
	strh r0, [r1, #0x1a]
	ldrb r1, [r1, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804EBA2
	ldr r0, _0804EBAC @ =0x04000048
	movs r1, #0x3f
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _0804EBB0 @ =gBlendValue
	movs r0, #0xf
	strb r0, [r1]
_0804EBA2:
	bl sub_0804E0E8
	b _0804ED58
	.align 2, 0
_0804EBA8: .4byte gUnk_030034A0
_0804EBAC: .4byte 0x04000048
_0804EBB0: .4byte gBlendValue
_0804EBB4:
	bl sub_0804C898
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804EC04
	ldr r0, _0804EBFC @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804EC04
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, [r4]
	ldrb r1, [r2, #2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #2]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0804EC00 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	b _0804ED58
	.align 2, 0
_0804EBFC: .4byte gNewKeys
_0804EC00: .4byte 0x0000BFFF
_0804EC04:
	ldr r4, _0804EC58 @ =gUnk_030034A0
	ldr r0, [r4]
	ldrb r1, [r0, #0x1c]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804EC16
	bl sub_0804E008
_0804EC16:
	ldr r0, _0804EC5C @ =0x030052A4
	ldr r0, [r0]
	bl sub_0804C8F4
	cmp r0, #0
	beq _0804EC24
	b _0804ED58
_0804EC24:
	ldr r2, [r4]
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0804EC60 @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804EC40
	bl sub_0804DF80
	cmp r0, #0
	beq _0804EC40
	b _0804ED58
_0804EC40:
	ldr r1, _0804EC64 @ =0x0300081C
	ldr r4, [r1]
	ldrb r2, [r4, #0x16]
	movs r0, #0x80
	ands r0, r2
	mov ip, r1
	cmp r0, #0
	beq _0804EC68
	bl sub_0804EF50
	b _0804ED58
	.align 2, 0
_0804EC58: .4byte gUnk_030034A0
_0804EC5C: .4byte 0x030052A4
_0804EC60: .4byte gUnk_030034E4
_0804EC64: .4byte 0x0300081C
_0804EC68:
	lsls r3, r2, #0x19
	lsrs r1, r3, #0x1d
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804ECC0
	ldr r2, _0804ECB0 @ =0x03000814
	ldr r3, _0804ECB4 @ =gUnk_03004C20
	ldr r1, [r2]
	ldr r0, [r3, #4]
	subs r1, r1, r0
	ldr r0, _0804ECB8 @ =0x00000E0B
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r1, r0
	bgt _0804ECEA
	ldr r0, _0804ECBC @ =gNewKeys
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804ECEA
	ldrb r1, [r4, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804ECEA
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x17]
	ldr r0, [r6, #4]
	str r0, [r7]
	b _0804ECEA
	.align 2, 0
_0804ECB0: .4byte 0x03000814
_0804ECB4: .4byte gUnk_03004C20
_0804ECB8: .4byte 0x00000E0B
_0804ECBC: .4byte gNewKeys
_0804ECC0:
	movs r0, #0x70
	ands r0, r2
	ldr r7, _0804ED10 @ =0x03000814
	ldr r6, _0804ED14 @ =gUnk_03004C20
	cmp r0, #0x40
	bne _0804ECEA
	ldr r0, _0804ED18 @ =gNewKeys
	ldrh r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0804ECEA
	lsrs r0, r3, #0x1d
	movs r1, #2
	orrs r1, r0
	lsls r1, r1, #4
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x16]
_0804ECEA:
	mov r1, ip
	ldr r0, [r1]
	ldrb r0, [r0, #0x16]
	lsls r2, r0, #0x19
	lsrs r1, r2, #0x1d
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804ED04
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804ED1C
_0804ED04:
	ldr r0, [r7]
	ldr r1, [r6, #4]
	subs r0, r0, r1
	cmp r0, #0
	bgt _0804ED58
	b _0804ED20
	.align 2, 0
_0804ED10: .4byte 0x03000814
_0804ED14: .4byte gUnk_03004C20
_0804ED18: .4byte gNewKeys
_0804ED1C:
	ldr r0, [r6, #4]
	str r0, [r7]
_0804ED20:
	mov r1, ip
	ldr r0, [r1]
	ldrb r1, [r0, #0x17]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804ED58
	ldr r0, _0804ED60 @ =0x03004D84
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0804ED42
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0804ED42
	bl sub_0804E404
_0804ED42:
	ldr r0, _0804ED64 @ =gUnk_030034A0
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804ED58
	bl sub_0804EA94
_0804ED58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED60: .4byte 0x03004D84
_0804ED64: .4byte gUnk_030034A0

	thumb_func_start sub_0804ED68
sub_0804ED68: @ 0x0804ED68
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _0804EE00 @ =0x0300081C
	movs r0, #0x28
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r5]
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0804EE04 @ =0x040000D4
	str r2, [r1]
	str r0, [r1, #4]
	ldr r0, _0804EE08 @ =0x81000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0804EE0C @ =0x082EA854
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _0804EE10 @ =0x7FFFFFFF
	ands r0, r1
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r1, [r5]
	str r0, [r1]
	mov r1, r8
	bl Decompress
	ldr r1, [r5]
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	strb r4, [r1, #0xb]
	ldr r0, [r5]
	strb r6, [r0, #0xa]
	ldr r1, [r5]
	mov r2, sb
	lsls r0, r2, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	str r0, [r1, #0x20]
	mov r0, sb
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x1a]
	mov r2, sl
	str r2, [r1, #0x24]
	movs r0, #0x40
	strb r0, [r1, #0xe]
	ldr r0, [r5]
	ldr r0, [r0, #0x24]
	bl _call_via_r0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804EE00: .4byte 0x0300081C
_0804EE04: .4byte 0x040000D4
_0804EE08: .4byte 0x81000014
_0804EE0C: .4byte 0x082EA854
_0804EE10: .4byte 0x7FFFFFFF

	thumb_func_start sub_0804EE14
sub_0804EE14: @ 0x0804EE14
	push {r4, lr}
	ldr r4, _0804EE30 @ =0x0300081C
	ldr r0, [r4]
	ldr r0, [r0]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r4]
	bl thunk_HeapFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EE30: .4byte 0x0300081C

	thumb_func_start sub_0804EE34
sub_0804EE34: @ 0x0804EE34
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _0804EE5C @ =gBgTilemapBufs
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0xb
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #4
	adds r3, r3, r1
	adds r0, r0, r3
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r2, r1
	strh r2, [r0]
	bx lr
	.align 2, 0
_0804EE5C: .4byte gBgTilemapBufs

	thumb_func_start sub_0804EE60
sub_0804EE60: @ 0x0804EE60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r3, _0804EF44 @ =0x0300081C
	ldr r0, [r3]
	ldrb r2, [r0, #0xe]
	ldrb r1, [r0, #0xd]
	adds r4, r2, #0
	muls r4, r1, r4
	ldr r2, [r0]
	ldrh r0, [r0, #0x1a]
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r7, r0, r1
	mov sb, r3
	adds r2, r2, r4
	mov ip, r2
	movs r6, #0xf
_0804EE8A:
	movs r0, #0
	str r0, [sp]
	mov r0, ip
	ldr r2, [r0]
	adds r1, r7, #4
	mov r8, r1
	movs r3, #0
	movs r5, #7
_0804EE9A:
	movs r4, #0xf
	ands r4, r2
	cmp r4, #2
	bne _0804EEB6
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #0x16]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, #2
	lsls r0, r3
	ldr r1, [sp]
	adds r1, r1, r0
	str r1, [sp]
_0804EEB6:
	cmp r4, #1
	bne _0804EECE
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #0x16]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, #1
	lsls r0, r3
	ldr r1, [sp]
	adds r1, r1, r0
	str r1, [sp]
_0804EECE:
	lsrs r2, r2, #4
	adds r3, #4
	subs r5, #1
	cmp r5, #0
	bge _0804EE9A
	ldr r4, _0804EF48 @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	str r7, [r4, #4]
	ldr r0, _0804EF4C @ =0x80000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0804EEF8
_0804EEF0:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804EEF0
_0804EEF8:
	movs r1, #4
	add ip, r1
	subs r6, #1
	mov r7, r8
	cmp r6, #0
	bge _0804EE8A
	movs r6, #0
_0804EF06:
	ldr r4, _0804EF44 @ =0x0300081C
	ldr r2, [r4]
	movs r0, #9
	ldrsb r0, [r2, r0]
	movs r1, #8
	ldrsb r1, [r2, r1]
	lsls r1, r1, #1
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #0x1a]
	adds r2, r2, r6
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0804EE34
	adds r6, #1
	cmp r6, #1
	ble _0804EF06
	ldr r1, [r4]
	ldrh r0, [r1, #0x1a]
	adds r0, #2
	strh r0, [r1, #0x1a]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EF44: .4byte 0x0300081C
_0804EF48: .4byte 0x040000D4
_0804EF4C: .4byte 0x80000002

	thumb_func_start sub_0804EF50
sub_0804EF50: @ 0x0804EF50
	ldr r0, _0804EF6C @ =0x0300081C
	ldr r2, [r0]
	ldrh r1, [r2, #0x14]
	movs r3, #0x14
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bgt _0804EF70
	movs r0, #0
	strh r0, [r2, #0x14]
	ldrb r1, [r2, #0x16]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x16]
	b _0804EF9A
	.align 2, 0
_0804EF6C: .4byte 0x0300081C
_0804EF70:
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bhi _0804EF8C
	ldr r0, _0804EF88 @ =gBgInfo
	ldrh r1, [r0, #0x26]
	adds r1, #1
	strh r1, [r0, #0x26]
	ldrh r0, [r2, #0x14]
	subs r0, #1
	b _0804EF98
	.align 2, 0
_0804EF88: .4byte gBgInfo
_0804EF8C:
	ldr r0, _0804EF9C @ =gBgInfo
	ldrh r1, [r0, #0x26]
	adds r1, #2
	strh r1, [r0, #0x26]
	ldrh r0, [r2, #0x14]
	subs r0, #2
_0804EF98:
	strh r0, [r2, #0x14]
_0804EF9A:
	bx lr
	.align 2, 0
_0804EF9C: .4byte gBgInfo

	thumb_func_start sub_0804EFA0
sub_0804EFA0: @ 0x0804EFA0
	ldr r0, _0804EFBC @ =0x0300081C
	ldr r2, [r0]
	movs r0, #0x10
	strh r0, [r2, #0x14]
	ldrb r0, [r2, #0x16]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x16]
	ldr r1, _0804EFC0 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804EFBC: .4byte 0x0300081C
_0804EFC0: .4byte 0x03004D84

	thumb_func_start sub_0804EFC4
sub_0804EFC4: @ 0x0804EFC4
	ldr r1, _0804EFD4 @ =0x0300081C
	ldr r1, [r1]
	strb r0, [r1, #0xd]
	ldr r1, _0804EFD8 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804EFD4: .4byte 0x0300081C
_0804EFD8: .4byte 0x03004D84

	thumb_func_start sub_0804EFDC
sub_0804EFDC: @ 0x0804EFDC
	push {r4, lr}
	ldr r4, _0804EFFC @ =0x0300081C
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl _call_via_r0
	ldr r1, [r4]
	ldrh r0, [r1, #0x18]
	strh r0, [r1, #0x1a]
	ldr r1, _0804F000 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EFFC: .4byte 0x0300081C
_0804F000: .4byte 0x03004D84

	thumb_func_start sub_0804F004
sub_0804F004: @ 0x0804F004
	push {r4, lr}
	ldr r0, _0804F02C @ =0x0300081C
	ldr r4, [r0]
	ldr r3, _0804F030 @ =0x03004D84
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x16]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x16]
	ldr r0, [r3]
	adds r0, #3
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F02C: .4byte 0x0300081C
_0804F030: .4byte 0x03004D84

	thumb_func_start sub_0804F034
sub_0804F034: @ 0x0804F034
	ldr r0, _0804F048 @ =0x0300081C
	ldr r2, [r0]
	ldr r1, _0804F04C @ =0x03004D84
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	strb r0, [r2, #5]
	ldr r0, [r1]
	adds r0, #3
	str r0, [r1]
	bx lr
	.align 2, 0
_0804F048: .4byte 0x0300081C
_0804F04C: .4byte 0x03004D84

	thumb_func_start sub_0804F050
sub_0804F050: @ 0x0804F050
	ldr r2, _0804F06C @ =0x0300081C
	ldr r1, [r2]
	movs r0, #0
	strb r0, [r1, #9]
	ldr r1, [r2]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, _0804F070 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804F06C: .4byte 0x0300081C
_0804F070: .4byte 0x03004D84

	thumb_func_start sub_0804F074
sub_0804F074: @ 0x0804F074
	ldr r3, _0804F0BC @ =0x0300081C
	ldr r2, [r3]
	ldrb r1, [r2, #0x16]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x16]
	ldr r1, _0804F0C0 @ =0x03000814
	ldr r0, _0804F0C4 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	adds r0, #0x1e
	str r0, [r1]
	ldr r2, [r3]
	ldrb r0, [r2, #0x17]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x17]
	ldr r0, _0804F0C8 @ =gUnk_030034A0
	ldr r3, [r0]
	ldrb r2, [r3]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0804F0CC @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804F0BC: .4byte 0x0300081C
_0804F0C0: .4byte 0x03000814
_0804F0C4: .4byte gUnk_03004C20
_0804F0C8: .4byte gUnk_030034A0
_0804F0CC: .4byte 0x03004D84

	thumb_func_start sub_0804F0D0
sub_0804F0D0: @ 0x0804F0D0
	push {r4, lr}
	ldr r4, _0804F108 @ =0x0300081C
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl _call_via_r0
	ldr r0, [r4]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r0, [r4]
	strb r1, [r0, #8]
	ldr r2, _0804F10C @ =gBgInfo
	ldr r1, [r4]
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0x24]
	ldrh r0, [r1, #0x12]
	strh r0, [r2, #0x26]
	ldr r0, [r1, #0x20]
	str r0, [r1, #0x1c]
	ldrh r0, [r1, #0x18]
	strh r0, [r1, #0x1a]
	ldr r1, _0804F110 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F108: .4byte 0x0300081C
_0804F10C: .4byte gBgInfo
_0804F110: .4byte 0x03004D84

	thumb_func_start sub_0804F114
sub_0804F114: @ 0x0804F114
	ldr r3, _0804F134 @ =0x0300081C
	ldr r2, [r3]
	ldrb r1, [r2, #0x16]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x16]
	ldr r1, _0804F138 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	ldr r1, [r3]
	ldrh r0, [r1, #0x18]
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_0804F134: .4byte 0x0300081C
_0804F138: .4byte 0x03004D84

	thumb_func_start sub_0804F13C
sub_0804F13C: @ 0x0804F13C
	ldr r0, _0804F158 @ =0x0300081C
	ldr r2, [r0]
	ldrb r1, [r2, #0x16]
	movs r0, #0x71
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x16]
	ldr r1, _0804F15C @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804F158: .4byte 0x0300081C
_0804F15C: .4byte 0x03004D84

	thumb_func_start sub_0804F160
sub_0804F160: @ 0x0804F160
	ldr r0, _0804F178 @ =0x0300081C
	ldr r2, [r0]
	ldrb r1, [r2, #0x17]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x17]
	ldr r1, _0804F17C @ =0x03004D84
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_0804F178: .4byte 0x0300081C
_0804F17C: .4byte 0x03004D84

	thumb_func_start sub_0804F180
sub_0804F180: @ 0x0804F180
	push {r4, r5, lr}
	ldr r4, _0804F1AC @ =0x03004D84
	ldr r0, [r4]
	adds r0, #2
	bl sub_0804B254
	ldr r5, _0804F1B0 @ =0x0300081C
	ldr r1, [r5]
	strh r0, [r1, #0x10]
	ldr r0, [r4]
	adds r0, #4
	bl sub_0804B254
	ldr r1, [r5]
	strh r0, [r1, #0x12]
	ldr r0, [r4]
	adds r0, #6
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804F1AC: .4byte 0x03004D84
_0804F1B0: .4byte 0x0300081C

	thumb_func_start sub_0804F1B4
sub_0804F1B4: @ 0x0804F1B4
	ldr r1, _0804F1C0 @ =0x03004D84
	ldr r0, [r1]
	adds r0, #3
	str r0, [r1]
	bx lr
	.align 2, 0
_0804F1C0: .4byte 0x03004D84

	thumb_func_start sub_0804F1C4
sub_0804F1C4: @ 0x0804F1C4
	push {r4, r5, lr}
	ldr r2, _0804F1E4 @ =0x0300081C
	ldr r3, [r2]
	ldrb r1, [r3, #0x16]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1d
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r2, #0
	cmp r4, #0
	beq _0804F1E8
	movs r0, #0
	b _0804F202
	.align 2, 0
_0804F1E4: .4byte 0x0300081C
_0804F1E8:
	ldrb r0, [r3, #4]
	movs r1, #4
	ldrsb r1, [r3, r1]
	cmp r1, #0
	beq _0804F200
	subs r0, #1
	strb r0, [r3, #4]
	cmp r1, #0
	bgt _0804F240
	ldr r0, [r5]
	strb r4, [r0, #4]
	b _0804F240
_0804F200:
	ldrb r0, [r3, #5]
_0804F202:
	strb r0, [r3, #4]
	adds r3, r5, #0
	ldr r2, [r3]
	movs r1, #9
	ldrsb r1, [r2, r1]
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	cmp r1, r0
	blt _0804F220
	movs r0, #0
	strb r0, [r2, #9]
	ldr r1, [r3]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_0804F220:
	ldr r0, [r5]
	movs r1, #8
	ldrsb r1, [r0, r1]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _0804F240
	bl sub_0804EE60
	ldr r1, [r5]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	movs r0, #1
	b _0804F242
_0804F240:
	movs r0, #0
_0804F242:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0804F248
sub_0804F248: @ 0x0804F248
	push {lr}
	ldr r1, _0804F258 @ =0x0300081C
	ldr r1, [r1]
	strb r0, [r1, #0xd]
	bl sub_0804F1C4
	pop {r1}
	bx r1
	.align 2, 0
_0804F258: .4byte 0x0300081C

	thumb_func_start sub_0804F25C
sub_0804F25C: @ 0x0804F25C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804F278 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0804F27C @ =gBgTilemapBufs+0x800
	str r0, [r1, #4]
	ldr r0, _0804F280 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0804F278: .4byte 0x040000D4
_0804F27C: .4byte gBgTilemapBufs+0x800
_0804F280: .4byte 0x81000400
