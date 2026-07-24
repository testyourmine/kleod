	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080472B0
sub_080472B0: @ 0x080472B0
	ldr r0, _080472C0 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080472C4
	movs r0, #0
	b _080472C6
	.align 2, 0
_080472C0: .4byte gHeldKeys
_080472C4:
	movs r0, #1
_080472C6:
	bx lr

	thumb_func_start sub_080472C8
sub_080472C8: @ 0x080472C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804752C @ =0x04000200
	mov r8, r0
	ldrh r1, [r0]
	ldr r5, _08047530 @ =0x0000FFFE
	adds r0, r5, #0
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	ldr r6, _08047534 @ =0x04000004
	ldrh r1, [r6]
	ldr r4, _08047538 @ =0x0000FFF7
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r6]
	mov r2, r8
	ldrh r1, [r2]
	ldr r0, _0804753C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldrh r1, [r6]
	ldr r0, _08047540 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r6]
	bl m4aSoundVSyncOff
	bl sub_080472B0
	ldr r1, _08047544 @ =gUnk_0300549C
	strb r0, [r1]
	ldr r7, _08047548 @ =gUnk_03005428
	movs r0, #1
	strb r0, [r7]
	bl sub_08003D58
	ldr r1, _0804754C @ =0x040000D4
	ldr r0, _08047550 @ =gOamBuffer
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08047554 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08047558 @ =gUnk_03003410
	movs r0, #1
	strb r0, [r1, #8]
	ldr r1, _0804755C @ =gUnk_03004C20
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	bl sub_08003904
	mov r3, r8
	ldrh r0, [r3]
	ands r5, r0
	strh r5, [r3]
	ldrh r0, [r6]
	ands r4, r0
	strh r4, [r6]
	bl m4aSoundVSyncOff
	movs r2, #0
	ldrb r0, [r7]
	cmp r2, r0
	bhs _08047376
	ldr r0, _08047560 @ =gEntityInfo
	movs r6, #3
	movs r5, #0
	adds r1, r0, #0
	adds r1, #0xc
	movs r4, #0x1c
	adds r3, r7, #0
_08047362:
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	strb r5, [r1, #4]
	strb r4, [r1, #3]
	adds r1, #0x1c
	adds r2, #1
	ldrb r0, [r3]
	cmp r2, r0
	blo _08047362
_08047376:
	ldr r6, _08047564 @ =gBgInfo
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6]
	ldr r0, _08047568 @ =0x06003000
	str r0, [r6, #4]
	ldr r0, _0804756C @ =0x06004000
	str r0, [r6, #0x1c]
	ldr r0, _08047570 @ =0x06007000
	str r0, [r6, #0x20]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldr r2, _08047574 @ =gBg2XMag
	strh r0, [r2]
	ldr r3, _08047578 @ =gBg2YMag
	strh r0, [r3]
	ldr r0, _0804757C @ =0x082ECEA8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl DecompressDma
	ldr r7, _08047580 @ =gUnk_08312A58
	ldr r0, [r7]
	ldr r5, _08047584 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _08047588 @ =gBgDataPtrs
	str r0, [r4]
	ldr r0, _0804758C @ =gUnk_08312B70
	mov sl, r0
	ldr r0, [r0]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #4]
	ldr r1, _08047590 @ =0x082ECEF8
	mov sb, r1
	ldr r0, [r1]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #8]
	ldr r2, _08047594 @ =0x082ED1FC
	mov r8, r2
	ldr r0, [r2]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0xc]
	ldr r0, [r4]
	adds r1, r7, #0
	bl Decompress
	ldr r0, [r4, #4]
	mov r1, sl
	bl Decompress
	ldr r0, [r4, #8]
	mov r1, sb
	bl Decompress
	ldr r0, [r4, #0xc]
	mov r1, r8
	bl Decompress
	ldr r2, [r4]
	adds r2, #4
	str r2, [r4]
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	ldr r3, [r4, #8]
	adds r3, #4
	str r3, [r4, #8]
	ldr r0, [r4, #0xc]
	adds r1, r0, #4
	mov r8, r1
	str r1, [r4, #0xc]
	ldr r1, _0804754C @ =0x040000D4
	str r2, [r1]
	ldr r2, [r6]
	str r2, [r1, #4]
	ldr r2, _08047598 @ =0x80000130
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	str r3, [r1]
	ldr r2, [r6, #0x1c]
	str r2, [r1, #4]
	ldr r2, _0804759C @ =0x80000650
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	mov r2, sp
	movs r5, #0
	strh r5, [r2]
	str r2, [r1]
	ldr r3, _080475A0 @ =gBgTilemapBufs
	str r3, [r1, #4]
	ldr r2, _080475A4 @ =0x81000400
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	mov r2, r8
	str r2, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r3, r3, r2
	str r3, [r1, #4]
	ldr r2, _080475A8 @ =0x80000400
	str r2, [r1, #8]
	ldr r1, [r1, #8]
	bl thunk_HeapFree
	ldr r0, [r4, #8]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r4, #4]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r4]
	subs r0, #4
	bl thunk_HeapFree
	movs r2, #0
	strh r2, [r6, #0x24]
	strh r2, [r6, #0x26]
	ldr r1, _080475AC @ =0x04000008
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _080475B0 @ =0x00000E45
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080475B4 @ =0x04000014
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldr r2, _08047578 @ =gBg2YMag
	strh r0, [r2]
	ldr r3, _08047574 @ =gBg2XMag
	strh r0, [r3]
	ldr r0, _080475B8 @ =gBg2Alpha
	strb r5, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _080475BC @ =0x00001341
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080475C0 @ =gUnk_030007F8
	strb r5, [r0]
	ldr r1, _080475C4 @ =gUnk_030008F8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _080475C8 @ =0x04000050
	ldr r3, _080475CC @ =0x00002050
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08047560 @ =gEntityInfo
	movs r0, #5
	strb r0, [r1, #8]
	ldr r1, _080475D0 @ =gIntrTable
	ldr r0, _080475D4 @ =sub_08000F70
	str r0, [r1, #4]
	ldr r0, _080475D8 @ =sub_080009D8
	str r0, [r1]
	ldr r2, _0804752C @ =0x04000200
	ldrh r0, [r2]
	movs r6, #2
	orrs r0, r6
	strh r0, [r2]
	ldr r1, _08047534 @ =0x04000004
	ldrh r0, [r1]
	movs r5, #0x10
	orrs r0, r5
	strh r0, [r1]
	ldrh r0, [r2]
	movs r4, #1
	orrs r0, r4
	strh r0, [r2]
	ldrh r0, [r1]
	movs r3, #8
	orrs r0, r3
	strh r0, [r1]
	ldrh r0, [r2]
	orrs r0, r4
	strh r0, [r2]
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	ldrh r0, [r2]
	orrs r0, r6
	strh r0, [r2]
	ldrh r0, [r1]
	orrs r0, r5
	strh r0, [r1]
	bl m4aSoundVSyncOn
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804752C: .4byte 0x04000200
_08047530: .4byte 0x0000FFFE
_08047534: .4byte 0x04000004
_08047538: .4byte 0x0000FFF7
_0804753C: .4byte 0x0000FFFD
_08047540: .4byte 0x0000FFEF
_08047544: .4byte gUnk_0300549C
_08047548: .4byte gUnk_03005428
_0804754C: .4byte 0x040000D4
_08047550: .4byte gOamBuffer
_08047554: .4byte 0x84000100
_08047558: .4byte gUnk_03003410
_0804755C: .4byte gUnk_03004C20
_08047560: .4byte gEntityInfo
_08047564: .4byte gBgInfo
_08047568: .4byte 0x06003000
_0804756C: .4byte 0x06004000
_08047570: .4byte 0x06007000
_08047574: .4byte gBg2XMag
_08047578: .4byte gBg2YMag
_0804757C: .4byte 0x082ECEA8
_08047580: .4byte gUnk_08312A58
_08047584: .4byte 0x7FFFFFFF
_08047588: .4byte gBgDataPtrs
_0804758C: .4byte gUnk_08312B70
_08047590: .4byte 0x082ECEF8
_08047594: .4byte 0x082ED1FC
_08047598: .4byte 0x80000130
_0804759C: .4byte 0x80000650
_080475A0: .4byte gBgTilemapBufs
_080475A4: .4byte 0x81000400
_080475A8: .4byte 0x80000400
_080475AC: .4byte 0x04000008
_080475B0: .4byte 0x00000E45
_080475B4: .4byte 0x04000014
_080475B8: .4byte gBg2Alpha
_080475BC: .4byte 0x00001341
_080475C0: .4byte gUnk_030007F8
_080475C4: .4byte gUnk_030008F8
_080475C8: .4byte 0x04000050
_080475CC: .4byte 0x00002050
_080475D0: .4byte gIntrTable
_080475D4: .4byte sub_08000F70
_080475D8: .4byte sub_080009D8

	thumb_func_start sub_080475DC
sub_080475DC: @ 0x080475DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08047650 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804760E
	ldr r0, _08047654 @ =gUnk_0300549C
	ldrb r1, [r0]
	cmp r1, #1
	bne _0804760E
	ldr r0, _08047658 @ =gEntityInfo
	strb r1, [r0, #0x10]
	movs r1, #0x78
	strh r1, [r0]
	movs r1, #0x9c
	strh r1, [r0, #2]
	movs r0, #0
	movs r1, #0x22
	bl sub_08025B78
_0804760E:
	ldr r4, _08047658 @ =gEntityInfo
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _080476A0
	ldr r0, _0804765C @ =gEntityAnimationInfo
	ldrb r2, [r0]
	cmp r2, #0xc
	beq _080476A0
	ldr r0, _08047660 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047664
	ldrb r1, [r4, #0xc]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0xc]
	cmp r2, #1
	beq _08047642
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
_08047642:
	ldrh r0, [r4]
	cmp r0, #0xdf
	bhi _080476A0
	adds r0, #2
	strh r0, [r4]
	b _080476A0
	.align 2, 0
_08047650: .4byte gNewKeys
_08047654: .4byte gUnk_0300549C
_08047658: .4byte gEntityInfo
_0804765C: .4byte gEntityAnimationInfo
_08047660: .4byte gHeldKeys
_08047664:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08047694
	ldrb r0, [r4, #0xc]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r4, #0xc]
	cmp r2, #1
	beq _08047688
	movs r0, #0
	movs r1, #1
	bl sub_08025B78
_08047688:
	ldrh r0, [r4]
	cmp r0, #0x10
	bls _080476A0
	subs r0, #2
	strh r0, [r4]
	b _080476A0
_08047694:
	cmp r2, #0x22
	beq _080476A0
	movs r0, #0
	movs r1, #0x22
	bl sub_08025B78
_080476A0:
	movs r7, #0xe
	ldr r0, _080476C0 @ =gEntityInfo
	mov r8, r0
	movs r3, #0
	mov sb, r3
	movs r0, #3
	mov sl, r0
	movs r6, #0xc4
	lsls r6, r6, #1
	add r6, r8
_080476B4:
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq _080476C4
	cmp r0, #0x1c
	beq _08047714
	b _08047792
	.align 2, 0
_080476C0: .4byte gEntityInfo
_080476C4:
	ldrb r1, [r6, #9]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc0
	bls _080476D8
	movs r0, #0x1c
	strb r0, [r6, #0xf]
_080476D8:
	mov r0, r8
	ldrh r3, [r0]
	adds r1, r3, #0
	subs r1, #0xc
	ldrh r2, [r6]
	adds r0, r2, #0
	adds r0, #0xa
	cmp r1, r0
	bge _08047792
	adds r1, #0x18
	subs r0, #0x14
	cmp r1, r0
	ble _08047792
	mov r0, r8
	ldrh r3, [r0, #2]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r6, #2]
	adds r0, r2, #0
	subs r0, #8
	cmp r1, r0
	bge _08047792
	subs r0, #0xc
	cmp r3, r0
	ble _08047792
	movs r0, #0
	movs r1, #0xc
	bl sub_08025B78
	b _08047792
_08047714:
	bl thunk_GetRandomValue
	adds r4, r0, #0
	bl thunk_GetRandomValue
	adds r5, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	movs r1, #0x28
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r4
	movs r1, #0
	strh r0, [r6]
	strh r1, [r6, #2]
	bl thunk_GetRandomValue
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	bl __umodsi3
	adds r0, #2
	strb r0, [r6, #9]
	mov r3, sb
	strb r3, [r6, #0xf]
	bl thunk_GetRandomValue
	mov r2, sl
	ands r2, r0
	lsls r2, r2, #2
	ldrb r0, [r6, #0xc]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0xc]
	cmp r7, #0x11
	bhi _0804778A
	adds r0, r7, #0
	movs r1, #2
	bl sub_08025B78
	b _08047792
_0804778A:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08025B78
_08047792:
	adds r6, #0x1c
	adds r7, #1
	cmp r7, #0x13
	bls _080476B4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080477A8
sub_080477A8: @ 0x080477A8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080477D4 @ =gUnk_03004C20
	ldr r0, [r0]
	cmp r0, #0
	bne _080477B8
	bl sub_080472C8
_080477B8:
	bl sub_080475DC
	bl sub_08025BA4
	ldr r0, _080477D8 @ =gUnk_030007F8
	ldrb r0, [r0]
	cmp r0, #5
	bls _080477CA
	b _08047AAA
_080477CA:
	lsls r0, r0, #2
	ldr r1, _080477DC @ =_080477E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080477D4: .4byte gUnk_03004C20
_080477D8: .4byte gUnk_030007F8
_080477DC: .4byte _080477E0
_080477E0: @ jump table
	.4byte _080477F8 @ case 0
	.4byte _080478B4 @ case 1
	.4byte _080479E4 @ case 2
	.4byte _08047A58 @ case 3
	.4byte _08047A8C @ case 4
	.4byte _08047AA4 @ case 5
_080477F8:
	ldr r0, _08047810 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08047820
	ldr r1, _08047814 @ =0x040000D4
	ldr r0, _08047818 @ =gBgTilemapBufs+0xF00
	str r0, [r1]
	ldr r2, _0804781C @ =0xFFFFFAC0
	b _080478DC
	.align 2, 0
_08047810: .4byte gNewKeys
_08047814: .4byte 0x040000D4
_08047818: .4byte gBgTilemapBufs+0xF00
_0804781C: .4byte 0xFFFFFAC0
_08047820:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08047844
	ldr r1, _08047838 @ =0x040000D4
	ldr r0, _0804783C @ =gBgTilemapBufs+0xE80
	str r0, [r1]
	ldr r3, _08047840 @ =0xFFFFFB40
	b _08047928
	.align 2, 0
_08047838: .4byte 0x040000D4
_0804783C: .4byte gBgTilemapBufs+0xE80
_08047840: .4byte 0xFFFFFB40
_08047844:
	movs r5, #1
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	bne _08047850
	b _080479C0
_08047850:
	ldr r4, _08047860 @ =gUnk_030008F8
	ldrb r0, [r4]
	cmp r0, #1
	bne _08047868
	ldr r0, _08047864 @ =gUnk_03004C20
	str r3, [r0]
	b _080479CC
	.align 2, 0
_08047860: .4byte gUnk_030008F8
_08047864: .4byte gUnk_03004C20
_08047868:
	movs r0, #0x52
	bl m4aSongNumStart
	ldr r0, _0804789C @ =gUnk_030007F8
	strb r5, [r0]
	ldr r0, _080478A0 @ =0x040000D4
	ldr r2, _080478A4 @ =gBgTilemapBufs+0xD80
	str r2, [r0]
	ldr r6, _080478A8 @ =0xFFFFFD00
	adds r1, r2, r6
	str r1, [r0, #4]
	ldr r3, _080478AC @ =0x80000040
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r2, r6
	str r1, [r0]
	ldr r1, _080478B0 @ =0xFFFFFDC0
	adds r2, r2, r1
	str r2, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	strb r5, [r4]
	b _08047AAA
	.align 2, 0
_0804789C: .4byte gUnk_030007F8
_080478A0: .4byte 0x040000D4
_080478A4: .4byte gBgTilemapBufs+0xD80
_080478A8: .4byte 0xFFFFFD00
_080478AC: .4byte 0x80000040
_080478B0: .4byte 0xFFFFFDC0
_080478B4:
	ldr r1, _080478C4 @ =gEntityInfo
	ldrb r0, [r1, #8]
	cmp r0, #9
	bhi _080478C8
	adds r0, #1
	strb r0, [r1, #8]
	b _08047AB0
	.align 2, 0
_080478C4: .4byte gEntityInfo
_080478C8:
	ldr r0, _080478FC @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08047914
	ldr r1, _08047900 @ =0x040000D4
	ldr r0, _08047904 @ =gBgTilemapBufs+0xF00
	str r0, [r1]
	ldr r2, _08047908 @ =0xFFFFFC40
_080478DC:
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0804790C @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08047910 @ =gUnk_030008F8
	ldrb r0, [r4]
	cmp r0, #0
	beq _080478F4
	movs r0, #0x51
	bl m4aSongNumStart
_080478F4:
	movs r0, #0
	strb r0, [r4]
	b _08047AAA
	.align 2, 0
_080478FC: .4byte gNewKeys
_08047900: .4byte 0x040000D4
_08047904: .4byte gBgTilemapBufs+0xF00
_08047908: .4byte 0xFFFFFC40
_0804790C: .4byte 0x80000040
_08047910: .4byte gUnk_030008F8
_08047914:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0804795C
	ldr r1, _08047948 @ =0x040000D4
	ldr r0, _0804794C @ =gBgTilemapBufs+0xE80
	str r0, [r1]
	ldr r3, _08047950 @ =0xFFFFFCC0
_08047928:
	adds r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _08047954 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08047958 @ =gUnk_030008F8
	ldrb r0, [r4]
	cmp r0, #1
	beq _08047940
	movs r0, #0x51
	bl m4aSongNumStart
_08047940:
	movs r0, #1
	strb r0, [r4]
	b _08047AAA
	.align 2, 0
_08047948: .4byte 0x040000D4
_0804794C: .4byte gBgTilemapBufs+0xE80
_08047950: .4byte 0xFFFFFCC0
_08047954: .4byte 0x80000040
_08047958: .4byte gUnk_030008F8
_0804795C:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _080479C0
	mov r0, sp
	strh r5, [r0]
	ldr r1, _08047994 @ =0x040000D4
	str r0, [r1]
	ldr r0, _08047998 @ =gBgTilemapBufs+0x800
	str r0, [r1, #4]
	ldr r0, _0804799C @ =0x81000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080479A0 @ =gUnk_030008F8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080479AC
	ldr r4, _080479A4 @ =gUnk_03004C20
	str r5, [r4]
	movs r0, #0x54
	bl m4aSongNumStart
	ldr r1, _080479A8 @ =gUnk_030007F8
	movs r0, #4
	strb r0, [r1]
	str r5, [r4]
	b _08047AAA
	.align 2, 0
_08047994: .4byte 0x040000D4
_08047998: .4byte gBgTilemapBufs+0x800
_0804799C: .4byte 0x81000280
_080479A0: .4byte gUnk_030008F8
_080479A4: .4byte gUnk_03004C20
_080479A8: .4byte gUnk_030007F8
_080479AC:
	movs r0, #0x52
	bl m4aSongNumStart
	ldr r1, _080479BC @ =gUnk_030007F8
	movs r0, #2
	strb r0, [r1]
	b _08047AAA
	.align 2, 0
_080479BC: .4byte gUnk_030007F8
_080479C0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08047AAA
	ldr r0, _080479DC @ =gUnk_03004C20
	str r2, [r0]
_080479CC:
	movs r0, #0x54
	bl m4aSongNumStart
	ldr r1, _080479E0 @ =gUnk_030007F8
	movs r0, #4
	strb r0, [r1]
	b _08047AAA
	.align 2, 0
_080479DC: .4byte gUnk_03004C20
_080479E0: .4byte gUnk_030007F8
_080479E4:
	ldr r1, _080479F4 @ =gEntityInfo
	ldrb r0, [r1, #8]
	cmp r0, #0x9f
	bhi _080479F8
	adds r0, #5
	strb r0, [r1, #8]
	b _08047AB0
	.align 2, 0
_080479F4: .4byte gEntityInfo
_080479F8:
	ldr r5, _08047A3C @ =0x04000200
	ldrh r1, [r5]
	ldr r0, _08047A40 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5]
	ldr r4, _08047A44 @ =0x04000004
	ldrh r1, [r4]
	ldr r0, _08047A48 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r4]
	ldrh r1, [r5]
	ldr r0, _08047A4C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5]
	ldrh r1, [r4]
	ldr r0, _08047A50 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r4]
	bl m4aSoundVSyncOff
	bl sub_0804713C
	ldrh r0, [r5]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08047A54 @ =gUnk_030007F8
	movs r0, #3
	strb r0, [r1]
	b _08047AAA
	.align 2, 0
_08047A3C: .4byte 0x04000200
_08047A40: .4byte 0x0000FFFE
_08047A44: .4byte 0x04000004
_08047A48: .4byte 0x0000FFF7
_08047A4C: .4byte 0x0000FFFD
_08047A50: .4byte 0x0000FFEF
_08047A54: .4byte gUnk_030007F8
_08047A58:
	ldr r1, _08047A78 @ =0x040000D4
	ldr r0, _08047A7C @ =gBgTilemapBufs+0xE00
	str r0, [r1]
	ldr r6, _08047A80 @ =0xFFFFFC40
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08047A84 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08047A88 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047AAA
	b _08047A94
	.align 2, 0
_08047A78: .4byte 0x040000D4
_08047A7C: .4byte gBgTilemapBufs+0xE00
_08047A80: .4byte 0xFFFFFC40
_08047A84: .4byte 0x80000040
_08047A88: .4byte gNewKeys
_08047A8C:
	ldr r0, _08047A9C @ =gUnk_03004C20
	ldr r0, [r0]
	cmp r0, #0x28
	bne _08047AAA
_08047A94:
	ldr r1, _08047AA0 @ =gUnk_030007F8
	movs r0, #5
	strb r0, [r1]
	b _08047AAA
	.align 2, 0
_08047A9C: .4byte gUnk_03004C20
_08047AA0: .4byte gUnk_030007F8
_08047AA4:
	movs r0, #0xff
	bl SoftResetRom
_08047AAA:
	ldr r1, _08047AB8 @ =0x04000052
	movs r0, #0
	strh r0, [r1]
_08047AB0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08047AB8: .4byte 0x04000052

	thumb_func_start sub_08047ABC
sub_08047ABC: @ 0x08047ABC
	ldr r1, _08047AE8 @ =gUnk_03004D90
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08047AD8
	movs r0, #0
	strb r0, [r1, #8]
	ldr r1, _08047AEC @ =0x04000050
	movs r0, #0xdf
	strh r0, [r1]
	ldr r2, _08047AF0 @ =0x04000048
	ldrh r1, [r2]
	ldr r0, _08047AF4 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
_08047AD8:
	ldr r3, _08047AF8 @ =gBlendValue
	ldrb r2, [r3]
	cmp r2, #8
	bls _08047B04
	ldr r1, _08047AFC @ =gCallbackQueue
	ldr r0, _08047B00 @ =sub_08047B1C
	str r0, [r1]
	b _08047B14
	.align 2, 0
_08047AE8: .4byte gUnk_03004D90
_08047AEC: .4byte 0x04000050
_08047AF0: .4byte 0x04000048
_08047AF4: .4byte 0x0000FFDF
_08047AF8: .4byte gBlendValue
_08047AFC: .4byte gCallbackQueue
_08047B00: .4byte sub_08047B1C
_08047B04:
	ldr r0, _08047B18 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08047B14
	adds r0, r2, #1
	strb r0, [r3]
_08047B14:
	bx lr
	.align 2, 0
_08047B18: .4byte gUnk_03004C20

	thumb_func_start sub_08047B1C
sub_08047B1C: @ 0x08047B1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	str r0, [sp]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r1, _08047C48 @ =0x04000050
	movs r0, #0xd6
	strh r0, [r1]
	ldr r1, _08047C4C @ =gBlendValue
	movs r0, #9
	strb r0, [r1]
	ldr r1, _08047C50 @ =0x04000052
	movs r2, #9
	ldr r0, _08047C54 @ =0x00000709
	strh r0, [r1]
	ldr r0, _08047C58 @ =0x04000054
	strh r2, [r0]
	subs r1, #0xa
	ldr r2, _08047C5C @ =0x00003701
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3e
	strh r0, [r1]
	subs r1, #8
	ldr r2, _08047C60 @ =gUnk_03004D90
	ldr r0, _08047C64 @ =0x00007878
	strh r0, [r2, #4]
	strh r0, [r1]
	adds r1, #4
	ldr r0, _08047C68 @ =0x00004C4C
	strh r0, [r2, #6]
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0
	ldr r5, _08047C6C @ =gUnk_03005428
	ldr r0, [sp]
	ldrb r1, [r5]
	cmp r0, r1
	bge _08047BB0
	ldr r0, _08047C70 @ =gEntityInfo
	movs r6, #3
	movs r7, #4
	rsbs r7, r7, #0
	adds r3, r0, #0
	adds r3, #0xc
_08047B94:
	ldrb r2, [r3]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	adds r1, #1
	ands r1, r6
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r3, #0x1c
	adds r4, #1
	ldrb r2, [r5]
	cmp r4, r2
	blt _08047B94
_08047BB0:
	ldr r4, _08047C60 @ =gUnk_03004D90
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _08047BC0
	bl sub_08005CF4
	bl VBlankIntrWait
_08047BC0:
	ldr r1, _08047C74 @ =0x04000008
	ldrh r2, [r1]
	ldr r0, _08047C78 @ =0x0000FFFC
	ands r0, r2
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _08047C88
	movs r4, #0
	ldr r3, _08047C7C @ =gUnk_03004C20
	mov r8, r3
	ldr r7, _08047C80 @ =0x0811769C
	adds r6, r7, #0
	ldrb r0, [r3, #0xd]
	mov sb, r0
	adds r5, r6, #0
_08047BFC:
	lsls r3, r4, #3
	ldrh r1, [r5]
	cmp sb, r1
	bne _08047C3E
	adds r0, r7, #2
	adds r0, r3, r0
	mov r2, r8
	ldrb r1, [r2, #0xc]
	ldrh r0, [r0]
	cmp r1, r0
	bne _08047C3E
	ldr r2, _08047C70 @ =gEntityInfo
	ldrh r1, [r2, #2]
	subs r1, #0x10
	asrs r1, r1, #3
	adds r0, r6, #6
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r1, r0
	bne _08047C3E
	ldrh r2, [r2]
	adds r0, r2, #0
	adds r0, #8
	asrs r0, r0, #3
	ldrh r1, [r5, #4]
	cmp r0, r1
	blt _08047C3E
	adds r0, r2, #0
	subs r0, #8
	asrs r0, r0, #3
	adds r1, #3
	cmp r0, r1
	ble _08047C84
_08047C3E:
	adds r5, #8
	adds r4, #1
	cmp r4, #0x1f
	ble _08047BFC
	b _08047C90
	.align 2, 0
_08047C48: .4byte 0x04000050
_08047C4C: .4byte gBlendValue
_08047C50: .4byte 0x04000052
_08047C54: .4byte 0x00000709
_08047C58: .4byte 0x04000054
_08047C5C: .4byte 0x00003701
_08047C60: .4byte gUnk_03004D90
_08047C64: .4byte 0x00007878
_08047C68: .4byte 0x00004C4C
_08047C6C: .4byte gUnk_03005428
_08047C70: .4byte gEntityInfo
_08047C74: .4byte 0x04000008
_08047C78: .4byte 0x0000FFFC
_08047C7C: .4byte gUnk_03004C20
_08047C80: .4byte 0x0811769C
_08047C84:
	lsls r0, r4, #0x18
	b _08047C8C
_08047C88:
	adds r0, #0x1a
	lsls r0, r0, #0x18
_08047C8C:
	lsrs r0, r0, #0x18
	str r0, [sp]
_08047C90:
	ldr r2, _08047E40 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08047E44 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08047E48 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08047E4C @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	ldr r3, _08047E50 @ =0x082F3B2C
	mov sb, r3
	ldr r0, [r3]
	ldr r6, _08047E54 @ =0x7FFFFFFF
	ands r0, r6
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r5, _08047E58 @ =gBgDataPtrs
	str r0, [r5, #0x18]
	ldr r4, _08047E5C @ =0x0818BA3C
	ldr r0, [sp]
	lsls r0, r0, #2
	mov r8, r0
	add r4, r8
	ldr r0, [r4]
	ldr r0, [r0]
	ands r0, r6
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	mov r1, sb
	bl Decompress
	ldr r0, [r5, #0x1c]
	ldr r1, [r4]
	bl Decompress
	movs r4, #0
	movs r6, #0
	mov sb, r8
	ldr r1, _08047E60 @ =0x0000021B
	mov sl, r1
	ldr r5, _08047E64 @ =gBgTilemapBufs
_08047CF0:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _08047D02
	cmp r4, #0
	beq _08047D02
	adds r6, #2
_08047D02:
	lsls r2, r6, #1
	adds r2, r2, r5
	ldr r3, _08047E58 @ =gBgDataPtrs
	ldr r1, [r3, #0x1c]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldr r7, _08047E68 @ =gUnk_03000800
	ldrh r0, [r0, #4]
	ldrb r1, [r7]
	adds r0, r0, r1
	strh r0, [r2]
	adds r6, #1
	adds r4, #1
	cmp r4, sl
	ble _08047CF0
	ldr r2, [sp]
	cmp r2, #0x1d
	beq _08047D92
	ldr r5, _08047E6C @ =0x0818BB3C
	add r5, sb
	ldr r0, [r5]
	ldr r0, [r0]
	ldr r6, _08047E54 @ =0x7FFFFFFF
	ands r0, r6
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [sp, #4]
	ldr r4, _08047E70 @ =0x0818BABC
	add r4, sb
	ldr r0, [r4]
	ldr r0, [r0]
	ands r0, r6
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [sp, #8]
	ldr r1, [r5]
	ldr r0, [sp, #4]
	bl Decompress
	ldr r1, [r4]
	ldr r0, [sp, #8]
	bl Decompress
	movs r4, #0
	ldr r0, _08047E64 @ =gBgTilemapBufs
	ldr r7, _08047E68 @ =gUnk_03000800
	ldr r3, [sp, #8]
	movs r6, #0xf
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r2, r0, r1
_08047D6C:
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	bne _08047D7A
	cmp r4, #0
	beq _08047D7A
	adds r2, #0x20
_08047D7A:
	ldrb r1, [r7]
	ldrh r0, [r3, #4]
	adds r0, r0, r1
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r3, #2
	adds r4, #1
	cmp r4, #0x3f
	ble _08047D6C
_08047D92:
	ldr r2, _08047E74 @ =0x040000D4
	ldr r3, _08047E58 @ =gBgDataPtrs
	ldr r0, [r3, #0x18]
	adds r0, #4
	str r0, [r2]
	ldr r1, _08047E68 @ =gUnk_03000800
	ldrb r0, [r1]
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08047E78 @ =0x80001320
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08047DC2
_08047DBA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08047DBA
_08047DC2:
	ldr r2, [sp]
	cmp r2, #0x1d
	beq _08047DFC
	ldr r2, _08047E74 @ =0x040000D4
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [r2]
	ldr r3, _08047E68 @ =gUnk_03000800
	ldrb r0, [r3]
	lsls r0, r0, #5
	ldr r1, _08047E7C @ =0x06002640
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08047E6C @ =0x0818BB3C
	add r0, sb
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r1, _08047E54 @ =0x7FFFFFFF
	ands r0, r1
	subs r0, #4
	lsrs r0, r0, #1
	adds r1, #1
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08047DF4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08047DF4
_08047DFC:
	ldr r2, _08047E40 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08047E48 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	movs r0, #0x33
	bl m4aSongNumStart
	ldr r0, [sp, #8]
	bl thunk_HeapFree
	ldr r0, [sp, #4]
	bl thunk_HeapFree
	ldr r1, _08047E80 @ =gCallbackQueue
	ldr r0, _08047E84 @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _08047E88 @ =sub_08047EC8
	str r0, [r1, #0x2c]
	movs r0, #1
	str r0, [r1, #0x34]
	ldr r0, _08047E8C @ =gUnk_03004D90
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _08047E94
	ldr r0, _08047E90 @ =sub_0800BFF4
	b _08047E96
	.align 2, 0
_08047E40: .4byte 0x04000200
_08047E44: .4byte 0x0000FFFE
_08047E48: .4byte 0x04000004
_08047E4C: .4byte 0x0000FFF7
_08047E50: .4byte 0x082F3B2C
_08047E54: .4byte 0x7FFFFFFF
_08047E58: .4byte gBgDataPtrs
_08047E5C: .4byte 0x0818BA3C
_08047E60: .4byte 0x0000021B
_08047E64: .4byte gBgTilemapBufs
_08047E68: .4byte gUnk_03000800
_08047E6C: .4byte 0x0818BB3C
_08047E70: .4byte 0x0818BABC
_08047E74: .4byte 0x040000D4
_08047E78: .4byte 0x80001320
_08047E7C: .4byte 0x06002640
_08047E80: .4byte gCallbackQueue
_08047E84: .4byte InputHandler_Normal
_08047E88: .4byte sub_08047EC8
_08047E8C: .4byte gUnk_03004D90
_08047E90: .4byte sub_0800BFF4
_08047E94:
	ldr r0, _08047EC0 @ =sub_0800C45C
_08047E96:
	str r0, [r1, #0x30]
	ldr r2, _08047EC4 @ =gCallbackQueue
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
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047EC0: .4byte sub_0800C45C
_08047EC4: .4byte gCallbackQueue

	thumb_func_start sub_08047EC8
sub_08047EC8: @ 0x08047EC8
	push {lr}
	ldr r0, _08047EE0 @ =gUnk_03004D90
	ldrb r1, [r0, #8]
	adds r3, r0, #0
	cmp r1, #1
	bne _08047EFA
	ldrh r2, [r3, #4]
	cmp r2, #0xf0
	bne _08047EE4
	movs r0, #0
	b _08047F6A
	.align 2, 0
_08047EE0: .4byte gUnk_03004D90
_08047EE4:
	ldr r0, _08047F24 @ =0xFFFFFB05
	adds r2, r2, r0
	strh r2, [r3, #4]
	ldrh r1, [r3, #6]
	ldr r0, _08047F28 @ =0xFFFFFD03
	adds r1, r1, r0
	strh r1, [r3, #6]
	ldr r0, _08047F2C @ =0x04000042
	strh r2, [r0]
	adds r0, #4
	strh r1, [r0]
_08047EFA:
	ldrb r0, [r3, #8]
	cmp r0, #2
	bne _08047F56
	ldrh r2, [r3, #4]
	ldr r0, _08047F30 @ =0x00007878
	cmp r2, r0
	bne _08047F40
	bl sub_0803A22C
	bl m4aSoundVSyncOn
	bl m4aMPlayAllContinue
	ldr r1, _08047F34 @ =gCallbackQueue
	ldr r0, _08047F38 @ =sub_08047F80
	str r0, [r1, #4]
	ldr r1, _08047F3C @ =0x04000050
	movs r0, #0xd7
	strh r0, [r1]
	b _08047F6C
	.align 2, 0
_08047F24: .4byte 0xFFFFFB05
_08047F28: .4byte 0xFFFFFD03
_08047F2C: .4byte 0x04000042
_08047F30: .4byte 0x00007878
_08047F34: .4byte gCallbackQueue
_08047F38: .4byte sub_08047F80
_08047F3C: .4byte 0x04000050
_08047F40:
	ldr r0, _08047F70 @ =0x000004FB
	adds r2, r2, r0
	strh r2, [r3, #4]
	ldrh r1, [r3, #6]
	ldr r0, _08047F74 @ =0x000002FD
	adds r1, r1, r0
	strh r1, [r3, #6]
	ldr r0, _08047F78 @ =0x04000042
	strh r2, [r0]
	adds r0, #4
	strh r1, [r0]
_08047F56:
	ldr r0, _08047F7C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08047F6C
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _08047F6C
	movs r0, #2
_08047F6A:
	strb r0, [r3, #8]
_08047F6C:
	pop {r0}
	bx r0
	.align 2, 0
_08047F70: .4byte 0x000004FB
_08047F74: .4byte 0x000002FD
_08047F78: .4byte 0x04000042
_08047F7C: .4byte gNewKeys

	thumb_func_start sub_08047F80
sub_08047F80: @ 0x08047F80
	ldr r3, _08047FEC @ =gBlendValue
	ldrb r2, [r3]
	cmp r2, #0
	bne _08048000
	ldr r2, _08047FF0 @ =0x04000048
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08047FF4 @ =gUnk_030051F0
	ldrb r0, [r1, #0xe]
	strb r0, [r3]
	adds r2, #8
	ldrh r0, [r1, #4]
	strh r0, [r2]
	subs r2, #0x48
	ldrh r0, [r1, #6]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #8]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldr r2, _08047FF8 @ =gUnk_03004C20
	ldr r0, [r1]
	str r0, [r2]
	movs r1, #0
	ldr r2, _08047FFC @ =gCallbackQueue
	adds r3, r2, #0
	adds r3, #0x28
_08047FC4:
	ldr r0, [r3, #0x28]
	stm r3!, {r0}
	adds r1, #1
	cmp r1, #9
	bls _08047FC4
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	adds r0, r2, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	b _0804801C
	.align 2, 0
_08047FEC: .4byte gBlendValue
_08047FF0: .4byte 0x04000048
_08047FF4: .4byte gUnk_030051F0
_08047FF8: .4byte gUnk_03004C20
_08047FFC: .4byte gCallbackQueue
_08048000:
	ldr r1, _08048020 @ =0x04000048
	movs r0, #1
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strh r0, [r1]
	ldr r0, _08048024 @ =gUnk_03004C20
	ldr r0, [r0, #4]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0804801C
	subs r0, r2, #1
	strb r0, [r3]
_0804801C:
	bx lr
	.align 2, 0
_08048020: .4byte 0x04000048
_08048024: .4byte gUnk_03004C20

	thumb_func_start sub_08048028
sub_08048028: @ 0x08048028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08048098 @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804803E
	b _0804831C
_0804803E:
	ldr r1, _0804809C @ =gNewKeys
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080480A0 @ =gUnk_03004670
	ldr r0, [r2]
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	ldr r1, _080480A4 @ =gCallbackQueue
	mov ip, r1
	cmp r0, #0
	bne _0804805A
	b _080482B4
_0804805A:
	movs r2, #0
	mov sb, r2
	mov sl, r2
	movs r7, #0
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	ldr r5, _080480A0 @ =gUnk_03004670
	movs r1, #0x7f
	mov r8, r1
_0804806E:
	movs r4, #0
	adds r2, r0, #1
	lsls r3, r0, #3
_08048074:
	cmp r4, #3
	beq _0804807C
	cmp r4, #5
	bne _080480A8
_0804807C:
	ldr r0, [r5]
	adds r0, #8
	adds r0, r0, r3
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x64
	bne _080480A8
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	b _080480C6
	.align 2, 0
_08048098: .4byte gUnk_030034E4
_0804809C: .4byte gNewKeys
_080480A0: .4byte gUnk_03004670
_080480A4: .4byte gCallbackQueue
_080480A8:
	cmp r4, #7
	beq _080480C6
	ldr r0, [r5]
	adds r0, #8
	adds r0, r0, r3
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x1e
	bne _080480C6
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080480C6:
	ldr r0, [r5]
	adds r0, #8
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080480DE
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080480DE:
	adds r3, #1
	adds r4, #1
	cmp r4, #6
	bls _08048074
	adds r0, r2, #0
	cmp r0, #4
	bls _0804806E
	ldr r2, _08048158 @ =gUnk_03004670
	ldr r1, [r2]
	adds r5, r1, #0
	adds r5, #0x30
	ldrb r3, [r5]
	movs r4, #0x7f
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0x1e
	bne _0804810A
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
_0804810A:
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0x1e
	bne _08048122
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
_08048122:
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	bne _08048178
	cmp r7, #0x23
	bne _08048178
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r5]
	movs r2, #0
	ldr r5, _0804815C @ =gUnk_030051F0
	ldr r7, _08048160 @ =gBlendValue
	ldr r0, _08048164 @ =gUnk_03004C20
	mov r8, r0
	ldr r6, _08048168 @ =gUnk_03004D90
	ldr r1, _0804816C @ =sub_08047B1C
	mov sb, r1
	ldr r0, _08048170 @ =sub_0800C45C
	mov sl, r0
	ldr r1, _08048174 @ =gCallbackQueue
_0804814A:
	ldr r0, [r1]
	str r0, [r1, #0x50]
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	bls _0804814A
	b _08048220
	.align 2, 0
_08048158: .4byte gUnk_03004670
_0804815C: .4byte gUnk_030051F0
_08048160: .4byte gBlendValue
_08048164: .4byte gUnk_03004C20
_08048168: .4byte gUnk_03004D90
_0804816C: .4byte sub_08047B1C
_08048170: .4byte sub_0800C45C
_08048174: .4byte gCallbackQueue
_08048178:
	ldr r5, _080481BC @ =gUnk_03004670
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x31
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080481DC
	mov r0, sl
	add r0, sb
	cmp r0, #0x18
	ble _080481DC
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3]
	movs r2, #0
	ldr r5, _080481C0 @ =gUnk_030051F0
	ldr r7, _080481C4 @ =gBlendValue
	ldr r0, _080481C8 @ =gUnk_03004C20
	mov r8, r0
	ldr r6, _080481CC @ =gUnk_03004D90
	ldr r1, _080481D0 @ =sub_08047B1C
	mov sb, r1
	ldr r0, _080481D4 @ =sub_0800C45C
	mov sl, r0
	ldr r1, _080481D8 @ =gCallbackQueue
_080481AE:
	ldr r0, [r1]
	str r0, [r1, #0x50]
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	bls _080481AE
	b _08048220
	.align 2, 0
_080481BC: .4byte gUnk_03004670
_080481C0: .4byte gUnk_030051F0
_080481C4: .4byte gBlendValue
_080481C8: .4byte gUnk_03004C20
_080481CC: .4byte gUnk_03004D90
_080481D0: .4byte sub_08047B1C
_080481D4: .4byte sub_0800C45C
_080481D8: .4byte gCallbackQueue
_080481DC:
	ldr r5, _08048280 @ =gUnk_03004670
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0x32
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080482B4
	ldr r0, [sp]
	add r0, sb
	add r0, sl
	cmp r0, #0x25
	bne _080482B4
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0
	ldr r5, _08048284 @ =gUnk_030051F0
	ldr r7, _08048288 @ =gBlendValue
	ldr r0, _0804828C @ =gUnk_03004C20
	mov r8, r0
	ldr r6, _08048290 @ =gUnk_03004D90
	ldr r1, _08048294 @ =sub_08047B1C
	mov sb, r1
	ldr r0, _08048298 @ =sub_0800C45C
	mov sl, r0
	ldr r1, _0804829C @ =gCallbackQueue
_08048214:
	ldr r0, [r1]
	str r0, [r1, #0x50]
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	bls _08048214
_08048220:
	mov r3, ip
	adds r3, #0x78
	ldrb r0, [r3]
	mov r1, ip
	adds r1, #0x7a
	movs r4, #0
	strb r0, [r1]
	ldrb r0, [r7]
	strb r0, [r5, #0xe]
	ldr r0, _080482A0 @ =0x04000050
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r5, #4]
	ldr r0, _080482A4 @ =0x04000008
	ldrh r0, [r0]
	strh r0, [r5, #6]
	ldr r0, _080482A8 @ =0x0400000A
	ldrh r0, [r0]
	strh r0, [r5, #8]
	ldr r0, _080482AC @ =0x0400000C
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _080482B0 @ =0x0400000E
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	mov r1, r8
	ldr r0, [r1]
	str r0, [r5]
	movs r0, #1
	strb r0, [r6, #8]
	movs r1, #3
	strb r1, [r6, #9]
	strb r2, [r7]
	mov r2, sb
	mov r5, ip
	str r2, [r5, #0x28]
	mov r2, sl
	str r2, [r5, #0x2c]
	str r0, [r5, #0x30]
	ldrb r0, [r3]
	subs r0, #1
	lsls r0, r0, #2
	add r0, ip
	str r4, [r0]
	mov r0, ip
	adds r0, #0x79
	strb r1, [r0]
	b _0804831C
	.align 2, 0
_08048280: .4byte gUnk_03004670
_08048284: .4byte gUnk_030051F0
_08048288: .4byte gBlendValue
_0804828C: .4byte gUnk_03004C20
_08048290: .4byte gUnk_03004D90
_08048294: .4byte sub_08047B1C
_08048298: .4byte sub_0800C45C
_0804829C: .4byte gCallbackQueue
_080482A0: .4byte 0x04000050
_080482A4: .4byte 0x04000008
_080482A8: .4byte 0x0400000A
_080482AC: .4byte 0x0400000C
_080482B0: .4byte 0x0400000E
_080482B4:
	movs r1, #0
	mov r2, ip
	adds r2, #0x78
	ldrb r0, [r2]
	movs r4, #0
	cmp r0, #1
	beq _080482FE
	mov r5, ip
	mov r6, ip
	adds r6, #0x28
	ldr r0, _080482EC @ =sub_08048028
	mov r8, r0
	adds r7, r2, #0
_080482CE:
	lsls r2, r1, #2
	adds r0, r2, r5
	ldr r3, [r0]
	cmp r3, r8
	beq _080482DC
	cmp r4, #1
	bne _080482F0
_080482DC:
	adds r2, r2, r6
	adds r1, #1
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [r2]
	movs r4, #1
	b _080482F6
	.align 2, 0
_080482EC: .4byte sub_08048028
_080482F0:
	adds r0, r2, r6
	str r3, [r0]
	adds r1, #1
_080482F6:
	ldrb r0, [r7]
	subs r0, #1
	cmp r1, r0
	blo _080482CE
_080482FE:
	cmp r4, #1
	bne _0804831C
	mov r1, ip
	adds r1, #0x78
	ldrb r0, [r1]
	subs r0, #1
	mov r3, ip
	adds r3, #0x79
	movs r2, #0
	strb r0, [r3]
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #2
	add r0, ip
	str r2, [r0]
_0804831C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0804832C
sub_0804832C: @ 0x0804832C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r1, _08048434 @ =gUnk_03005428
	movs r0, #1
	strb r0, [r1]
	bl sub_08003D58
	ldr r1, _08048438 @ =0x040000D4
	ldr r0, _0804843C @ =gOamBuffer
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08048440 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08048444 @ =gBgInfo
	movs r3, #0xc0
	lsls r3, r3, #0x13
	str r3, [r2]
	ldr r0, _08048448 @ =0x06007800
	str r0, [r2, #4]
	mov r2, sp
	ldr r4, _0804844C @ =0x00007FFF
	adds r0, r4, #0
	strh r0, [r2]
	str r2, [r1]
	ldr r0, _08048450 @ =0x05000020
	str r0, [r1, #4]
	ldr r0, _08048454 @ =0x81000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08048458 @ =0x00001111
	adds r0, r4, #0
	strh r0, [r2]
	str r2, [r1]
	adds r3, #0x20
	str r3, [r1, #4]
	ldr r0, _0804845C @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r4, #0
	movs r5, #0
	ldr r6, _08048460 @ =gBgTilemapBufs
	ldr r7, _08048464 @ =0x00001001
	mov r8, r6
_0804838C:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __modsi3
	cmp r0, #0
	bne _0804839E
	cmp r4, #0
	beq _0804839E
	adds r5, #2
_0804839E:
	lsls r0, r5, #1
	adds r0, r0, r6
	strh r7, [r0]
	adds r5, #1
	adds r4, #1
	ldr r0, _08048468 @ =0x00000257
	cmp r4, r0
	ble _0804838C
	ldr r2, _0804846C @ =0x04000010
	ldr r3, _08048444 @ =gBgInfo
	ldrh r0, [r3, #8]
	lsrs r0, r0, #4
	ldr r4, _08048470 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xa]
	lsrs r0, r0, #7
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08048474 @ =0x00001141
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08048478 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0804847C @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08048480 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08048484 @ =gBlendValue
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08048488 @ =0x04000008
	ldr r4, _0804848C @ =0x00000F41
	adds r0, r4, #0
	strh r0, [r1]
	adds r1, #0xcc
	mov r0, r8
	str r0, [r1]
	ldr r0, [r3, #4]
	str r0, [r1, #4]
	ldr r0, _08048490 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0804841C
_08048414:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08048414
_0804841C:
	bl sub_08046B6C
	ldr r1, _08048494 @ =gUnk_03004D9C
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048434: .4byte gUnk_03005428
_08048438: .4byte 0x040000D4
_0804843C: .4byte gOamBuffer
_08048440: .4byte 0x84000100
_08048444: .4byte gBgInfo
_08048448: .4byte 0x06007800
_0804844C: .4byte 0x00007FFF
_08048450: .4byte 0x05000020
_08048454: .4byte 0x81000002
_08048458: .4byte 0x00001111
_0804845C: .4byte 0x81000010
_08048460: .4byte gBgTilemapBufs
_08048464: .4byte 0x00001001
_08048468: .4byte 0x00000257
_0804846C: .4byte 0x04000010
_08048470: .4byte 0x000001FF
_08048474: .4byte 0x00001141
_08048478: .4byte 0x04000200
_0804847C: .4byte 0x04000004
_08048480: .4byte 0x04000050
_08048484: .4byte gBlendValue
_08048488: .4byte 0x04000008
_0804848C: .4byte 0x00000F41
_08048490: .4byte 0x80000400
_08048494: .4byte gUnk_03004D9C

	thumb_func_start sub_08048498
sub_08048498: @ 0x08048498
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _080486CC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080486D0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080486D4 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080486D8 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x41
	strh r0, [r1]
	ldr r0, _080486DC @ =gBgInfo
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov r1, sb
	str r0, [r1]
	ldr r0, _080486E0 @ =0x06007000
	str r0, [r1, #4]
	ldr r0, _080486E4 @ =0x06004000
	str r0, [r1, #0x1c]
	ldr r0, _080486E8 @ =0x06007800
	str r0, [r1, #0x20]
	ldr r1, _080486EC @ =0x04000008
	ldr r2, _080486F0 @ =0x00000E41
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _080486F4 @ =0x00000F44
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _080486F8 @ =gUnk_03005428
	movs r0, #1
	strb r0, [r1]
	bl sub_08003D58
	ldr r5, _080486FC @ =0x040000D4
	ldr r0, _08048700 @ =gOamBuffer
	str r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	ldr r0, _08048704 @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08048708 @ =0x082F43C4
	mov sl, r0
	ldr r0, [r0]
	ldr r6, _0804870C @ =0x7FFFFFFF
	ands r0, r6
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _08048710 @ =gBgDataPtrs
	str r0, [r4]
	ldr r1, _08048714 @ =0x082F47A8
	mov r8, r1
	ldr r0, [r1]
	ands r0, r6
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #4]
	ldr r0, [r4]
	mov r1, sl
	bl Decompress
	ldr r0, [r4, #4]
	mov r1, r8
	bl Decompress
	ldr r0, [r4]
	adds r0, #4
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	ldr r0, _08048718 @ =0x082F48BC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl DecompressDma
	mov r0, sp
	movs r2, #0
	strh r2, [r0]
	str r0, [r5]
	ldr r0, _0804871C @ =0x05000020
	str r0, [r5, #4]
	ldr r0, _08048720 @ =0x81000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	mov r1, sp
	ldr r3, _08048724 @ =0x00001111
	adds r0, r3, #0
	strh r0, [r1]
	str r1, [r5]
	mov r1, sb
	ldr r0, [r1, #0x1c]
	adds r0, #0x20
	str r0, [r5, #4]
	ldr r1, _08048728 @ =0x81000010
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	mov r0, sp
	strh r2, [r0]
	str r0, [r5]
	mov r2, sb
	ldr r0, [r2, #0x38]
	adds r0, #0x20
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	movs r4, #0
	movs r5, #0
	ldr r7, _0804872C @ =gBgTilemapBufs
	ldr r3, _08048730 @ =0x00001001
	mov sb, r3
_0804859C:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080485B4
	cmp r4, #0
	beq _080485B4
	adds r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080485B4:
	adds r1, r5, #0
	lsls r0, r1, #1
	movs r5, #0x80
	lsls r5, r5, #4
	adds r5, r5, r7
	mov r8, r5
	add r0, r8
	mov r2, sb
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r6, _08048710 @ =gBgDataPtrs
	ldr r2, [r6, #4]
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08048734 @ =0x00000257
	cmp r4, r0
	bls _0804859C
	ldr r0, [r6, #4]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r6]
	subs r0, #4
	bl thunk_HeapFree
	ldr r1, _080486FC @ =0x040000D4
	ldr r0, [r6]
	str r0, [r1]
	ldr r2, _080486DC @ =gBgInfo
	ldr r0, [r2]
	str r0, [r1, #4]
	ldr r0, _08048738 @ =0x80000620
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _0804873C @ =0x04000010
	ldrh r0, [r2, #8]
	lsrs r0, r0, #4
	ldr r5, _08048740 @ =0x000001FF
	adds r3, r5, #0
	ands r0, r3
	strh r0, [r4]
	adds r4, #2
	ldrh r0, [r2, #0xa]
	lsrs r0, r0, #7
	ands r0, r3
	strh r0, [r4]
	ldr r0, _08048744 @ =0xFFFFF800
	add r0, r8
	str r0, [r1]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	ldr r0, _08048748 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08048644
_0804863C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0804863C
_08048644:
	ldr r2, _080486FC @ =0x040000D4
	ldr r0, _0804874C @ =gBgTilemapBufs+0x800
	str r0, [r2]
	ldr r1, _080486DC @ =gBgInfo
	ldr r0, [r1, #0x20]
	str r0, [r2, #4]
	ldr r0, _08048748 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r4, #0x80
	lsls r4, r4, #0x18
	adds r3, r1, #0
	ldr r5, _08048750 @ =gBlendValue
	ldr r6, _08048754 @ =gMosaicSize
	ldr r1, _08048758 @ =gIntrTable
	mov r8, r1
	ldr r7, _0804875C @ =sub_080009D8
	cmp r0, #0
	bge _08048676
	adds r1, r4, #0
_0804866E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804866E
_08048676:
	ldr r1, _08048760 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #0x10
	strb r0, [r5]
	movs r0, #0
	strb r0, [r6]
	movs r1, #0
	strh r1, [r3, #8]
	strh r1, [r3, #0xa]
	strh r1, [r3, #0x24]
	strh r1, [r3, #0x26]
	adds r0, r3, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r2, r8
	str r7, [r2]
	ldr r2, _080486CC @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080486D4 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r3, _08048764 @ =0x00001141
	adds r0, r3, #0
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080486CC: .4byte 0x04000200
_080486D0: .4byte 0x0000FFFE
_080486D4: .4byte 0x04000004
_080486D8: .4byte 0x0000FFF7
_080486DC: .4byte gBgInfo
_080486E0: .4byte 0x06007000
_080486E4: .4byte 0x06004000
_080486E8: .4byte 0x06007800
_080486EC: .4byte 0x04000008
_080486F0: .4byte 0x00000E41
_080486F4: .4byte 0x00000F44
_080486F8: .4byte gUnk_03005428
_080486FC: .4byte 0x040000D4
_08048700: .4byte gOamBuffer
_08048704: .4byte 0x84000100
_08048708: .4byte 0x082F43C4
_0804870C: .4byte 0x7FFFFFFF
_08048710: .4byte gBgDataPtrs
_08048714: .4byte 0x082F47A8
_08048718: .4byte 0x082F48BC
_0804871C: .4byte 0x05000020
_08048720: .4byte 0x81000002
_08048724: .4byte 0x00001111
_08048728: .4byte 0x81000010
_0804872C: .4byte gBgTilemapBufs
_08048730: .4byte 0x00001001
_08048734: .4byte 0x00000257
_08048738: .4byte 0x80000620
_0804873C: .4byte 0x04000010
_08048740: .4byte 0x000001FF
_08048744: .4byte 0xFFFFF800
_08048748: .4byte 0x80000400
_0804874C: .4byte gBgTilemapBufs+0x800
_08048750: .4byte gBlendValue
_08048754: .4byte gMosaicSize
_08048758: .4byte gIntrTable
_0804875C: .4byte sub_080009D8
_08048760: .4byte 0x04000050
_08048764: .4byte 0x00001141

	thumb_func_start sub_08048768
sub_08048768: @ 0x08048768
	push {r4, lr}
	ldr r4, _080487A4 @ =gUnk_03004C20
	ldr r0, [r4]
	cmp r0, #0
	bne _08048776
	bl sub_0804832C
_08048776:
	ldr r0, [r4]
	ldr r1, _080487A8 @ =gBlendValue
	cmp r0, #0xf
	bls _08048784
	subs r0, #0x10
	lsrs r0, r0, #1
	strb r0, [r1]
_08048784:
	ldrb r0, [r1]
	cmp r0, #0xf
	bls _08048796
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4]
	ldr r1, _080487AC @ =gCallbackQueue
	ldr r0, _080487B0 @ =sub_080487B4
	str r0, [r1, #4]
_08048796:
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080487A4: .4byte gUnk_03004C20
_080487A8: .4byte gBlendValue
_080487AC: .4byte gCallbackQueue
_080487B0: .4byte sub_080487B4

	thumb_func_start sub_080487B4
sub_080487B4: @ 0x080487B4
	push {r4, r5, lr}
	ldr r4, _0804883C @ =gUnk_03004C20
	ldr r0, [r4]
	cmp r0, #0
	bne _080487C2
	bl sub_08048498
_080487C2:
	ldr r0, [r4]
	cmp r0, #0x20
	bne _080487E6
	ldr r2, _08048840 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08048844 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	movs r0, #0x21
	bl m4aSongNumStart
_080487E6:
	ldr r3, [r4]
	adds r0, r3, #0
	subs r0, #0x11
	adds r2, r3, #0
	cmp r0, #0x1e
	bhi _080487FC
	ldr r1, _08048848 @ =gBlendValue
	movs r0, #0x30
	subs r0, r0, r2
	lsrs r0, r0, #1
	strb r0, [r1]
_080487FC:
	ldr r1, _0804884C @ =0xFFFFFEFF
	adds r0, r2, r1
	cmp r0, #0x3e
	bhi _0804880E
	ldr r1, _08048848 @ =gBlendValue
	ldr r5, _08048850 @ =0xFFFFFF00
	adds r0, r2, r5
	lsrs r0, r0, #2
	strb r0, [r1]
_0804880E:
	ldr r0, _08048854 @ =0x0000013F
	cmp r3, r0
	bls _08048836
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4]
	ldr r1, _08048858 @ =gCallbackQueue
	ldr r0, _0804885C @ =sub_08049724
	str r0, [r1, #4]
	ldr r0, _08048860 @ =sub_0800D0C4
	str r0, [r1, #8]
	ldr r1, _08048864 @ =gUnk_03004D9C
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08048848 @ =gBlendValue
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08048868 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
_08048836:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804883C: .4byte gUnk_03004C20
_08048840: .4byte 0x04000200
_08048844: .4byte 0x04000004
_08048848: .4byte gBlendValue
_0804884C: .4byte 0xFFFFFEFF
_08048850: .4byte 0xFFFFFF00
_08048854: .4byte 0x0000013F
_08048858: .4byte gCallbackQueue
_0804885C: .4byte sub_08049724
_08048860: .4byte sub_0800D0C4
_08048864: .4byte gUnk_03004D9C
_08048868: .4byte 0x04000050

	thumb_func_start sub_0804886C
sub_0804886C: @ 0x0804886C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r2, _08048BF4 @ =gUnk_03005284
	ldr r1, [r2]
	movs r5, #0
	movs r0, #2
	strb r0, [r1, #0x1c]
	ldr r0, [r2]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1d]
	ldr r4, _08048BF8 @ =gUnk_03004C20
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xb]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _08048BFC @ =gBlendValue
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08048C00 @ =gMosaicSize
	strb r5, [r0]
	bl sub_08003D58
	ldr r6, _08048C04 @ =0x040000D4
	ldr r0, _08048C08 @ =gOamBuffer
	str r0, [r6]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	ldr r0, _08048C0C @ =0x84000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	mov r3, r8
	strb r3, [r4, #0xd]
	ldr r0, _08048C10 @ =gUnk_03003410
	strb r5, [r0, #8]
	bl sub_08003904
	ldr r4, _08048C14 @ =gObjPalRamPtr
	ldr r0, _08048C18 @ =gUnk_030034F4
	ldr r0, [r0]
	str r0, [r4]
	ldr r1, _08048C1C @ =gObjVramPtr
	ldr r0, _08048C20 @ =gUnk_030052AC
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _08048C24 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08048C28 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08048C2C @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08048C30 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	ldr r0, _08048C34 @ =0x08366214
	bl DecompressAlloc
	adds r5, r0, #4
	ldr r0, _08048C38 @ =0x08078F88
	str r0, [r6]
	ldr r0, [r4]
	str r0, [r6, #4]
	ldr r0, _08048C3C @ =0x80000010
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08048916
_0804890E:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804890E
_08048916:
	ldr r1, _08048C14 @ =gObjPalRamPtr
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08048C04 @ =0x040000D4
	str r5, [r2]
	ldr r1, _08048C1C @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08048C40 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r1, #0
	cmp r0, #0
	bge _08048944
	adds r1, r3, #0
_0804893C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0804893C
_08048944:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4]
	ldr r2, _08048C04 @ =0x040000D4
	adds r1, r5, r1
	str r1, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08048C40 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08048970
_08048968:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08048968
_08048970:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _08048C04 @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, r2
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08048C40 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080489A0
_08048998:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08048998
_080489A0:
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4]
	ldr r1, _08048C04 @ =0x040000D4
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r5, r2
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08048C40 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080489D0
_080489C8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080489C8
_080489D0:
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4]
	ldr r1, _08048C04 @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, r2
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08048C40 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08048A00
_080489F8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080489F8
_08048A00:
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4]
	ldr r1, _08048C04 @ =0x040000D4
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r0, r5, r2
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08048C40 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08048A30
_08048A28:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08048A28
_08048A30:
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4]
	ldr r1, _08048C04 @ =0x040000D4
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r0, r5, r2
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08048C40 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08048A60
_08048A58:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08048A58
_08048A60:
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4]
	ldr r1, _08048C04 @ =0x040000D4
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r0, r5, r2
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08048C40 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08048A90
_08048A88:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08048A88
_08048A90:
	ldr r1, _08048C1C @ =gObjVramPtr
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1]
	subs r0, r5, #4
	bl thunk_HeapFree
	ldr r0, _08048C44 @ =0x08367468
	bl DecompressAlloc
	adds r5, r0, #4
	ldr r1, _08048C04 @ =0x040000D4
	ldr r0, _08048C48 @ =0x08078FA8
	str r0, [r1]
	ldr r0, _08048C14 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08048C3C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08048ACE
_08048AC6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08048AC6
_08048ACE:
	ldr r1, _08048C14 @ =gObjPalRamPtr
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08048C04 @ =0x040000D4
	str r5, [r2]
	ldr r1, _08048C1C @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08048C4C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r1, #0
	subs r6, r5, #4
	cmp r0, #0
	bge _08048AFE
	adds r1, r3, #0
_08048AF6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08048AF6
_08048AFE:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4]
	ldr r2, _08048C04 @ =0x040000D4
	adds r1, r5, r1
	str r1, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08048C4C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08048B2A
_08048B22:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08048B22
_08048B2A:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _08048C04 @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08048C4C @ =0x80000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08048B5A
_08048B52:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08048B52
_08048B5A:
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r4]
	adds r0, r6, #0
	bl thunk_HeapFree
	ldr r1, _08048C50 @ =gUnk_030051DC
	ldr r0, _08048C54 @ =0x0807D7B0
	str r0, [r1]
	ldr r1, _08048C58 @ =gUnk_03005428
	movs r0, #0xd
	strb r0, [r1]
	movs r6, #0
	ldr r2, _08048C5C @ =0x08116590
	ldrh r0, [r2]
	ldr r1, _08048C60 @ =0x0000FFFF
	cmp r0, r1
	beq _08048BCC
	adds r7, r2, #0
	mov r8, r1
_08048B86:
	ldr r2, _08048C58 @ =gUnk_03005428
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r5, r6, #1
	adds r5, r5, r6
	lsls r5, r5, #2
	adds r5, r5, r7
	ldrb r1, [r5, #7]
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	ldrb r4, [r5, #4]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	ldrb r4, [r5, #5]
	str r4, [sp, #8]
	ldrb r4, [r5, #6]
	str r4, [sp, #0xc]
	ldrb r4, [r5, #8]
	str r4, [sp, #0x10]
	bl sub_08003DC0
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, r8
	bne _08048B86
_08048BCC:
	ldr r1, _08048C58 @ =gUnk_03005428
	ldrb r0, [r1]
	adds r0, #0xa
	strb r0, [r1]
	movs r6, #0
	ldr r7, _08048C64 @ =gEntityInfo
	adds r3, r7, #0
	movs r2, #0
	movs r1, #0x1c
_08048BDE:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r3
	strb r1, [r0, #0x11]
	strb r2, [r0, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08048C68
	.align 2, 0
_08048BF4: .4byte gUnk_03005284
_08048BF8: .4byte gUnk_03004C20
_08048BFC: .4byte gBlendValue
_08048C00: .4byte gMosaicSize
_08048C04: .4byte 0x040000D4
_08048C08: .4byte gOamBuffer
_08048C0C: .4byte 0x84000100
_08048C10: .4byte gUnk_03003410
_08048C14: .4byte gObjPalRamPtr
_08048C18: .4byte gUnk_030034F4
_08048C1C: .4byte gObjVramPtr
_08048C20: .4byte gUnk_030052AC
_08048C24: .4byte 0x04000200
_08048C28: .4byte 0x0000FFFE
_08048C2C: .4byte 0x04000004
_08048C30: .4byte 0x0000FFF7
_08048C34: .4byte 0x08366214
_08048C38: .4byte 0x08078F88
_08048C3C: .4byte 0x80000010
_08048C40: .4byte 0x80000400
_08048C44: .4byte 0x08367468
_08048C48: .4byte 0x08078FA8
_08048C4C: .4byte 0x80000080
_08048C50: .4byte gUnk_030051DC
_08048C54: .4byte 0x0807D7B0
_08048C58: .4byte gUnk_03005428
_08048C5C: .4byte 0x08116590
_08048C60: .4byte 0x0000FFFF
_08048C64: .4byte gEntityInfo
_08048C68:
	cmp r6, #0xd
	bls _08048BDE
	movs r6, #0
	ldr r5, _08049034 @ =gEntityInfo
	mov ip, r5
	movs r4, #4
	rsbs r4, r4, #0
	movs r0, #2
	rsbs r0, r0, #0
	mov r8, r0
	movs r5, #3
	rsbs r5, r5, #0
_08048C80:
	adds r0, r6, #0
	adds r0, #0xd
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	add r2, ip
	movs r0, #0
	strb r0, [r2, #0xf]
	ldrb r0, [r2, #0xc]
	adds r1, r4, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	ldrb r3, [r2, #0xe]
	mov r0, r8
	ands r0, r3
	ands r0, r5
	strb r0, [r2, #0xe]
	movs r0, #0xf
	ands r1, r0
	strb r1, [r2, #0xc]
	ldrb r1, [r2, #0xd]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0xd]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #7
	bls _08048C80
	movs r6, #0
	ldr r4, _08049034 @ =gEntityInfo
	movs r3, #0
	movs r2, #1
_08048CC4:
	adds r0, r6, #0
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	strb r2, [r1, #0x10]
	strb r3, [r1, #0xf]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #7
	bls _08048CC4
	movs r6, #0
	ldr r1, _08049038 @ =0x0000FFE0
	mov sb, r1
	movs r2, #0x3d
	rsbs r2, r2, #0
	mov sl, r2
	ldr r3, _0804903C @ =gOamAffineBuffer
	mov ip, r3
	movs r4, #0x60
	ldr r5, _08049040 @ =0x0000FFA0
	mov r8, r5
	movs r5, #3
	rsbs r5, r5, #0
_08048CF8:
	adds r0, r6, #0
	adds r0, #0xd
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _08049034 @ =gEntityInfo
	adds r3, r3, r0
	mov r1, sb
	strh r1, [r3, #4]
	movs r0, #0xf
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0xd]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0xd]
	lsls r1, r6, #3
	add r1, ip
	strh r4, [r1]
	strh r4, [r1, #2]
	mov r2, r8
	strh r2, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #6]
	ldrb r0, [r3, #0xe]
	movs r1, #1
	orrs r0, r1
	ands r0, r5
	strb r0, [r3, #0xe]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #5
	bls _08048CF8
	movs r3, #0x86
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r2, #0
	movs r0, #0xc1
	strh r0, [r1]
	movs r5, #0x8d
	lsls r5, r5, #2
	adds r1, r7, r5
	adds r0, #0x40
	strh r0, [r1]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0x53
	strh r1, [r0]
	subs r3, #0x8a
	adds r0, r7, r3
	strh r1, [r0]
	subs r5, #0x8a
	adds r0, r7, r5
	strh r1, [r0]
	adds r3, #0x38
	adds r0, r7, r3
	strh r1, [r0]
	adds r5, #0x38
	adds r0, r7, r5
	strh r1, [r0]
	adds r3, #0x38
	adds r0, r7, r3
	strh r1, [r0]
	adds r5, #0x38
	adds r0, r7, r5
	strh r2, [r0]
	ldr r1, _08049044 @ =0x00000236
	adds r0, r7, r1
	strh r2, [r0]
	movs r6, #8
	adds r4, r7, #0
	movs r3, #0x1c
_08048D92:
	adds r0, r6, #0
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	strb r2, [r1, #0x10]
	strb r3, [r1, #0x11]
	strb r2, [r1, #0xf]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xa
	bls _08048D92
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r0, _08049048 @ =0x082F4934
	bl DecompressDma
	ldr r2, _0804904C @ =0x082F49E4
	mov r8, r2
	ldr r0, [r2]
	ldr r5, _08049050 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _08049054 @ =gBgDataPtrs
	str r0, [r4, #4]
	ldr r6, _08049058 @ =0x082F4B10
	ldr r0, [r6]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, r8
	bl Decompress
	ldr r0, [r4, #0xc]
	adds r1, r6, #0
	bl Decompress
	ldr r1, [r4, #4]
	adds r1, #4
	str r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r0, #4
	str r0, [r4, #0xc]
	movs r6, #0
	ldr r2, _0804905C @ =0x040000D4
	ldr r4, _08049060 @ =gBgTilemapBufs+0x800
	ldr r3, _08049064 @ =0x80000020
	adds r7, r1, #0
	ldr r5, _08049068 @ =0xFFFFF800
	adds r5, r5, r4
	mov r8, r5
	adds r5, r0, #0
_08048E0C:
	lsls r1, r6, #6
	adds r0, r5, r1
	str r0, [r2]
	adds r0, r1, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r7, r1
	str r0, [r2]
	add r1, r8
	str r1, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1f
	bls _08048E0C
	ldr r4, _08049054 @ =gBgDataPtrs
	ldr r0, [r4, #0xc]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r4, #4]
	subs r0, #4
	bl thunk_HeapFree
	ldr r6, _0804906C @ =0x082F4D3C
	ldr r0, [r6]
	ldr r1, _08049050 @ =0x7FFFFFFF
	mov r8, r1
	ands r0, r1
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4]
	ldr r5, _08049070 @ =0x082F518C
	ldr r0, [r5]
	mov r2, r8
	ands r0, r2
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r1, r6, #0
	bl Decompress
	ldr r0, [r4, #8]
	adds r1, r5, #0
	bl Decompress
	ldr r1, [r4]
	adds r1, #4
	str r1, [r4]
	ldr r0, [r4, #8]
	adds r2, r0, #4
	str r2, [r4, #8]
	ldr r5, _0804905C @ =0x040000D4
	str r1, [r5]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r5, #4]
	ldr r1, _08049074 @ =0x80000450
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	str r2, [r5]
	ldr r1, _08049078 @ =0x06004000
	str r1, [r5, #4]
	ldr r1, _0804907C @ =0x80000B00
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	bl thunk_HeapFree
	ldr r0, [r4]
	subs r0, #4
	bl thunk_HeapFree
	ldr r6, _08049080 @ =0x082F5920
	ldr r0, [r6]
	mov r3, r8
	ands r0, r3
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0x14]
	ldr r0, [r6]
	mov r1, r8
	ands r0, r1
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	adds r1, r6, #0
	bl Decompress
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl Decompress
	ldr r1, [r4, #4]
	adds r1, #4
	str r1, [r4, #4]
	ldr r0, [r4, #0x14]
	adds r0, #4
	str r0, [r4, #0x14]
	movs r6, #0
	adds r2, r1, #0
	adds r7, r4, #0
	ldr r4, _08049084 @ =0x03001900
	ldr r3, _08049064 @ =0x80000020
_08048EEC:
	lsls r1, r6, #6
	adds r0, r2, r1
	str r0, [r5]
	adds r1, r1, r4
	str r1, [r5, #4]
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1f
	bls _08048EEC
	ldr r0, [r7, #4]
	subs r0, #4
	bl thunk_HeapFree
	ldr r0, [r7, #0x14]
	subs r0, #4
	bl thunk_HeapFree
	ldr r6, _08049088 @ =0x082F5D0C
	ldr r0, [r6]
	ldr r4, _08049050 @ =0x7FFFFFFF
	ands r0, r4
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r7]
	ldr r5, _0804908C @ =0x082F7D64
	ldr r0, [r5]
	ands r0, r4
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r7, #8]
	ldr r0, [r7]
	adds r1, r6, #0
	bl Decompress
	ldr r0, [r7, #8]
	adds r1, r5, #0
	bl Decompress
	ldr r1, [r7]
	adds r1, #4
	str r1, [r7]
	ldr r0, [r7, #8]
	adds r2, r0, #4
	str r2, [r7, #8]
	ldr r4, _0804905C @ =0x040000D4
	str r1, [r4]
	ldr r1, _08049090 @ =0x06008000
	str r1, [r4, #4]
	ldr r1, _08049094 @ =0x80001CA0
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	str r2, [r4]
	ldr r1, _08049098 @ =0x0600C000
	str r1, [r4, #4]
	ldr r1, _0804909C @ =0x80000B30
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	bl thunk_HeapFree
	ldr r0, [r7]
	subs r0, #4
	bl thunk_HeapFree
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xa2
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r3, #0xe2
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, _080490A0 @ =0x00001D46
	adds r0, r5, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _080490A4 @ =0x00001E4A
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _080490A8 @ =gBgInfo
	ldr r0, _080490AC @ =0x0600E000
	str r0, [r5, #4]
	ldr r0, _080490B0 @ =0x0600E800
	str r0, [r5, #0x20]
	ldr r0, _080490B4 @ =0x0600F000
	str r0, [r5, #0x3c]
	ldr r1, _080490B8 @ =gIntrTable
	ldr r0, _080490BC @ =sub_08000BD4
	str r0, [r1]
	ldr r2, _080490C0 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080490C4 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	ldr r1, _080490C8 @ =gBlendValue
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080490CC @ =gUnk_03000828
	ldr r0, _080490D0 @ =gUnk_030047FC
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x26
	adds r1, r3, #0
	adds r1, #0x27
	ldrb r0, [r0]
	ldrb r1, [r1]
	orrs r0, r1
	adds r1, r3, #0
	adds r1, #0x28
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080490D4 @ =gBgTilemapBufs
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r0, _080490D8 @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0804900A
_08049002:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _08049002
_0804900A:
	ldr r2, _0804905C @ =0x040000D4
	ldr r1, _08049060 @ =gBgTilemapBufs+0x800
	str r1, [r2]
	ldr r3, _080490A8 @ =gBgInfo
	ldr r0, [r3, #0x20]
	str r0, [r2, #4]
	ldr r0, _080490D8 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r4, #0x80
	lsls r4, r4, #0x18
	ldr r7, _08049034 @ =gEntityInfo
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r1, r5
	adds r6, r3, #0
	ldr r3, _080490DC @ =gUnk_03005220
	mov sb, r3
	cmp r0, #0
	b _080490E0
	.align 2, 0
_08049034: .4byte gEntityInfo
_08049038: .4byte 0x0000FFE0
_0804903C: .4byte gOamAffineBuffer
_08049040: .4byte 0x0000FFA0
_08049044: .4byte 0x00000236
_08049048: .4byte 0x082F4934
_0804904C: .4byte 0x082F49E4
_08049050: .4byte 0x7FFFFFFF
_08049054: .4byte gBgDataPtrs
_08049058: .4byte 0x082F4B10
_0804905C: .4byte 0x040000D4
_08049060: .4byte gBgTilemapBufs+0x800
_08049064: .4byte 0x80000020
_08049068: .4byte 0xFFFFF800
_0804906C: .4byte 0x082F4D3C
_08049070: .4byte 0x082F518C
_08049074: .4byte 0x80000450
_08049078: .4byte 0x06004000
_0804907C: .4byte 0x80000B00
_08049080: .4byte 0x082F5920
_08049084: .4byte 0x03001900
_08049088: .4byte 0x082F5D0C
_0804908C: .4byte 0x082F7D64
_08049090: .4byte 0x06008000
_08049094: .4byte 0x80001CA0
_08049098: .4byte 0x0600C000
_0804909C: .4byte 0x80000B30
_080490A0: .4byte 0x00001D46
_080490A4: .4byte 0x00001E4A
_080490A8: .4byte gBgInfo
_080490AC: .4byte 0x0600E000
_080490B0: .4byte 0x0600E800
_080490B4: .4byte 0x0600F000
_080490B8: .4byte gIntrTable
_080490BC: .4byte sub_08000BD4
_080490C0: .4byte 0x04000200
_080490C4: .4byte 0x04000004
_080490C8: .4byte gBlendValue
_080490CC: .4byte gUnk_03000828
_080490D0: .4byte gUnk_030047FC
_080490D4: .4byte gBgTilemapBufs
_080490D8: .4byte 0x80000400
_080490DC: .4byte gUnk_03005220
_080490E0:
	bge _080490EC
	adds r3, r4, #0
_080490E4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080490E4
_080490EC:
	ldr r2, _080491A4 @ =0x040000D4
	str r1, [r2]
	ldr r0, [r6, #0x3c]
	str r0, [r2, #4]
	ldr r0, _080491A8 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0804910C
_08049104:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08049104
_0804910C:
	ldr r2, _080491AC @ =0x04000010
	ldrh r0, [r6, #8]
	lsrs r0, r0, #4
	ldr r5, _080491B0 @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r6, #0xa]
	lsrs r0, r0, #7
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r6, #0x24]
	lsrs r0, r0, #4
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r6, #0x26]
	lsrs r0, r0, #7
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r5, r6, #0
	adds r5, #0x40
	ldrh r0, [r5]
	lsrs r0, r0, #4
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	movs r0, #0x42
	adds r0, r0, r6
	mov r8, r0
	ldrh r0, [r0]
	lsrs r0, r0, #7
	ands r0, r1
	strh r0, [r2]
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #3
	orrs r0, r1
	mov r2, sb
	strb r0, [r2]
	movs r4, #0
	movs r0, #0x1c
	strb r0, [r7, #0x11]
	movs r0, #0xff
	strh r0, [r7]
	strh r0, [r7, #4]
	strh r0, [r7, #2]
	strh r0, [r7, #6]
	bl sub_080144C4
	strh r4, [r6, #8]
	ldr r0, _080491B4 @ =0x0000FFF0
	strh r0, [r6, #0xa]
	strh r4, [r6, #0x24]
	strh r4, [r6, #0x26]
	strh r4, [r5]
	mov r3, r8
	strh r4, [r3]
	ldr r1, _080491B8 @ =gBg2X
	ldr r0, _080491BC @ =gBg2Y
	str r4, [r0]
	str r4, [r1]
	movs r0, #0
	bl m4aSongNumStart
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080491A4: .4byte 0x040000D4
_080491A8: .4byte 0x80000400
_080491AC: .4byte 0x04000010
_080491B0: .4byte 0x000001FF
_080491B4: .4byte 0x0000FFF0
_080491B8: .4byte gBg2X
_080491BC: .4byte gBg2Y

	thumb_func_start sub_080491C0
sub_080491C0: @ 0x080491C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0804924C @ =gUnk_03004C20
	ldr r0, [r2]
	cmp r0, #0x61
	bhi _08049288
	movs r4, #0
	ldr r0, _08049250 @ =0x081177A4
	mov sl, r0
	mov ip, r2
	movs r7, #1
	ldr r6, _08049254 @ =gEntityInfo+0x194
	ldr r1, _08049258 @ =0xFFFFFE6C
	adds r1, r1, r6
	mov r8, r1
	movs r2, #4
	rsbs r2, r2, #0
	mov sb, r2
_080491EA:
	lsls r0, r4, #2
	add r0, sl
	mov r3, ip
	ldr r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0804927C
	cmp r4, #5
	bhi _0804927C
	adds r1, r4, #0
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r3, r0, r1
	ldrh r0, [r3, #4]
	adds r0, #0x1e
	movs r5, #0
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	adds r1, #0x20
	ldr r0, _0804925C @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08049260 @ =0x0811779C
	adds r0, r4, r0
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x22
	cmp r1, r0
	blt _0804927C
	adds r0, r2, #2
	strh r0, [r3, #4]
	ldr r1, _08049264 @ =gOamAffineBuffer
	lsls r0, r4, #3
	adds r2, r0, r1
	strh r5, [r2, #4]
	strh r5, [r2, #2]
	mov r3, ip
	ldr r0, [r3]
	ands r0, r7
	cmp r0, #0
	beq _0804927C
	ldrh r0, [r2]
	cmp r0, #0xff
	bhi _08049268
	adds r0, #0x40
	b _0804927A
	.align 2, 0
_0804924C: .4byte gUnk_03004C20
_08049250: .4byte 0x081177A4
_08049254: .4byte gEntityInfo+0x194
_08049258: .4byte 0xFFFFFE6C
_0804925C: .4byte 0x0000FFFF
_08049260: .4byte 0x0811779C
_08049264: .4byte gOamAffineBuffer
_08049268:
	cmp r4, #1
	bne _08049276
	ldrb r1, [r6]
	mov r0, sb
	ands r0, r1
	orrs r0, r7
	strb r0, [r6]
_08049276:
	movs r0, #0x80
	lsls r0, r0, #1
_0804927A:
	strh r0, [r2]
_0804927C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080491EA
	b _08049328
_08049288:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	movs r4, #0
	ldr r5, _08049338 @ =gEntityInfo
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r0, r0, r5
	mov ip, r0
	ldr r6, _0804933C @ =0x0811779C
	ldrb r7, [r6, #2]
	ldr r1, _08049340 @ =gOamAffineBuffer
	mov sl, r1
	mov sb, r2
	ldr r2, _08049344 @ =0x081177A6
	mov r8, r2
_080492AE:
	mov r3, ip
	ldrh r0, [r3]
	cmp r0, r7
	blo _0804931E
	lsls r0, r4, #2
	add r0, r8
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0804931E
	movs r0, #1
	ands r1, r0
	adds r2, r4, #0
	adds r2, #0xd
	cmp r1, #0
	beq _080492E4
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #4]
	subs r1, #1
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	subs r1, #1
	strh r1, [r0, #6]
_080492E4:
	lsls r0, r4, #3
	mov r3, sl
	adds r1, r0, r3
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	ldrh r0, [r1, #6]
	subs r0, #0x10
	strh r0, [r1, #6]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r2, r0, r5
	adds r0, r4, r6
	ldrb r3, [r0]
	ldrh r0, [r2, #4]
	cmp r0, r3
	bhi _0804931E
	strh r3, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r0, [r1, #6]
	cmp r4, #1
	bls _0804931A
	cmp r4, #5
	bhi _0804931E
_0804931A:
	movs r0, #0x50
	strh r0, [r2, #6]
_0804931E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _080492AE
_08049328:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049338: .4byte gEntityInfo
_0804933C: .4byte 0x0811779C
_08049340: .4byte gOamAffineBuffer
_08049344: .4byte 0x081177A6

	thumb_func_start sub_08049348
sub_08049348: @ 0x08049348
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _08049370 @ =gUnk_03004C20
	movs r0, #0
	str r0, [r1]
	cmp r2, #7
	bls _08049364
	b _08049710
_08049364:
	lsls r0, r2, #2
	ldr r1, _08049374 @ =_08049378
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08049370: .4byte gUnk_03004C20
_08049374: .4byte _08049378
_08049378: @ jump table
	.4byte _08049398 @ case 0
	.4byte _080493A4 @ case 1
	.4byte _08049710 @ case 2
	.4byte _08049710 @ case 3
	.4byte _08049710 @ case 4
	.4byte _080494D4 @ case 5
	.4byte _080496EC @ case 6
	.4byte _080496F8 @ case 7
_08049398:
	ldr r1, _080493A0 @ =gBlendValue
	movs r0, #0
	b _0804970E
	.align 2, 0
_080493A0: .4byte gBlendValue
_080493A4:
	ldr r0, _0804941C @ =gUnk_03004658
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r3, #0
	ldr r0, _08049420 @ =gOamAffineBuffer
	mov ip, r0
	ldr r1, _08049424 @ =gBgTilemapBufs+0x800
	mov sl, r1
	ldr r7, _08049428 @ =gEntityInfo
	movs r4, #0
	movs r2, #1
	mov sb, r2
	movs r0, #0xca
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov r8, r1
	movs r5, #0x50
_080493D8:
	adds r1, r3, #0
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r7
	movs r0, #1
	strb r0, [r2, #0x10]
	movs r0, #0x54
	strb r0, [r2, #0x11]
	ldr r1, _0804942C @ =0x0811779C
	adds r0, r3, r1
	ldrb r0, [r0]
	strh r0, [r2, #4]
	ldrb r1, [r6]
	mov r0, r8
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r6]
	lsls r1, r3, #3
	add r1, ip
	strh r4, [r1, #4]
	strh r4, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	cmp r3, #1
	bls _08049416
	cmp r3, #5
	bhi _08049430
_08049416:
	strh r5, [r2, #6]
	b _08049432
	.align 2, 0
_0804941C: .4byte gUnk_03004658
_08049420: .4byte gOamAffineBuffer
_08049424: .4byte gBgTilemapBufs+0x800
_08049428: .4byte gEntityInfo
_0804942C: .4byte 0x0811779C
_08049430:
	strh r4, [r2, #6]
_08049432:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080493D8
	movs r3, #8
	ldr r6, _080494BC @ =gEntityInfo
	movs r5, #0
	movs r4, #1
	movs r2, #0x54
_08049446:
	adds r0, r3, #0
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	strb r4, [r1, #0x10]
	strb r2, [r1, #0x11]
	strb r5, [r1, #0xf]
	movs r0, #0x84
	strh r0, [r1, #6]
	lsls r0, r3, #5
	subs r0, #0xa8
	strh r0, [r1, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xa
	bls _08049446
	movs r3, #0x14
	ldr r1, _080494C0 @ =0x040000D4
	ldr r2, _080494C4 @ =gBgTilemapBufs+0x800
	ldr r4, _080494C8 @ =0x8000001E
_08049474:
	lsls r0, r3, #6
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, #0
	subs r0, #0xb
	lsls r0, r0, #6
	adds r0, r0, r2
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x17
	bls _08049474
	ldr r1, _080494C0 @ =0x040000D4
	mov r2, sl
	str r2, [r1]
	ldr r2, _080494CC @ =gBgInfo
	ldr r0, [r2, #0x20]
	str r0, [r1, #4]
	ldr r0, _080494D0 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	blt _080494B0
	b _08049710
_080494B0:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080494B0
	b _08049710
	.align 2, 0
_080494BC: .4byte gEntityInfo
_080494C0: .4byte 0x040000D4
_080494C4: .4byte gBgTilemapBufs+0x800
_080494C8: .4byte 0x8000001E
_080494CC: .4byte gBgInfo
_080494D0: .4byte 0x80000400
_080494D4:
	ldr r0, _0804954C @ =gUnk_03000828
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804956C
	movs r3, #0x12
	ldr r0, _08049550 @ =gBgTilemapBufs+0x800
	mov sl, r0
	ldr r1, _08049554 @ =0xFFFFF800
	add r1, sl
	mov r8, r1
	ldr r7, _08049558 @ =gUnk_03003410
	mov r2, sp
	movs r6, #0
	ldr r1, _0804955C @ =0x040000D4
	mov r5, r8
	ldr r4, _08049560 @ =0x81000020
_080494F4:
	strh r6, [r2]
	mov r0, sp
	str r0, [r1]
	lsls r0, r3, #6
	adds r0, r0, r5
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x13
	bls _080494F4
	movs r3, #0x16
	ldr r1, _0804955C @ =0x040000D4
	ldr r2, _08049564 @ =gBgTilemapBufs
	ldr r4, _08049568 @ =0x80000020
_08049516:
	adds r0, r3, #2
	lsls r0, r0, #6
	adds r0, r0, r2
	str r0, [r1]
	subs r0, r3, #7
	lsls r0, r0, #6
	adds r0, r0, r2
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	lsls r0, r3, #6
	adds r0, r0, r2
	str r0, [r1]
	subs r0, r3, #5
	lsls r0, r0, #6
	adds r0, r0, r2
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x17
	bls _08049516
	movs r0, #1
	b _0804959C
	.align 2, 0
_0804954C: .4byte gUnk_03000828
_08049550: .4byte gBgTilemapBufs+0x800
_08049554: .4byte 0xFFFFF800
_08049558: .4byte gUnk_03003410
_0804955C: .4byte 0x040000D4
_08049560: .4byte 0x81000020
_08049564: .4byte gBgTilemapBufs
_08049568: .4byte 0x80000020
_0804956C:
	movs r3, #0x14
	ldr r1, _08049694 @ =gBgTilemapBufs+0x800
	mov sl, r1
	ldr r2, _08049698 @ =0xFFFFF800
	add r2, sl
	mov r8, r2
	ldr r7, _0804969C @ =gUnk_03003410
	ldr r1, _080496A0 @ =0x040000D4
	ldr r4, _080496A4 @ =0x80000020
_0804957E:
	lsls r0, r3, #6
	adds r0, r0, r2
	str r0, [r1]
	subs r0, r3, #5
	lsls r0, r0, #6
	adds r0, r0, r2
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x15
	bls _0804957E
	movs r0, #0
_0804959C:
	strb r0, [r7, #6]
	movs r3, #0x14
	ldr r1, _080496A0 @ =0x040000D4
	ldr r2, _08049694 @ =gBgTilemapBufs+0x800
	ldr r4, _080496A8 @ =0x8000001E
_080495A6:
	lsls r0, r3, #6
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, #0
	subs r0, #0xb
	lsls r0, r0, #6
	adds r0, r0, r2
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x17
	bls _080495A6
	ldr r1, _080496A0 @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r2, _080496AC @ =gBgInfo
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	ldr r0, _080496B0 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080495E8
_080495E0:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080495E0
_080495E8:
	ldr r1, _080496A0 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r2, _080496AC @ =gBgInfo
	ldr r0, [r2, #0x20]
	str r0, [r1, #4]
	ldr r0, _080496B0 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0804960C
_08049604:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08049604
_0804960C:
	movs r0, #0
	ldr r1, _080496AC @ =gBgInfo
	strh r0, [r1, #0xa]
	movs r3, #8
	ldr r5, _080496B4 @ =gEntityInfo
	movs r2, #0
	movs r4, #0x1c
_0804961A:
	adds r0, r3, #0
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	strb r2, [r1, #0x10]
	strb r4, [r1, #0x11]
	strb r2, [r1, #0xf]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xa
	bls _0804961A
	movs r3, #0
	ldr r7, _080496B4 @ =gEntityInfo
	movs r4, #0
	movs r2, #1
	mov sb, r2
	movs r0, #0xca
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r1, #4
	rsbs r1, r1, #0
	mov r8, r1
	ldr r2, _080496B8 @ =gOamAffineBuffer
	mov ip, r2
	movs r5, #0x50
_08049656:
	adds r1, r3, #0
	adds r1, #0xd
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r7
	movs r0, #1
	strb r0, [r2, #0x10]
	movs r0, #0x54
	strb r0, [r2, #0x11]
	ldr r1, _080496BC @ =0x0811779C
	adds r0, r3, r1
	ldrb r0, [r0]
	strh r0, [r2, #4]
	ldrb r1, [r6]
	mov r0, r8
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r6]
	lsls r0, r3, #3
	add r0, ip
	strh r4, [r0, #4]
	strh r4, [r0, #2]
	cmp r3, #1
	bls _0804968E
	cmp r3, #5
	bhi _080496C0
_0804968E:
	strh r5, [r2, #6]
	b _080496C2
	.align 2, 0
_08049694: .4byte gBgTilemapBufs+0x800
_08049698: .4byte 0xFFFFF800
_0804969C: .4byte gUnk_03003410
_080496A0: .4byte 0x040000D4
_080496A4: .4byte 0x80000020
_080496A8: .4byte 0x8000001E
_080496AC: .4byte gBgInfo
_080496B0: .4byte 0x80000400
_080496B4: .4byte gEntityInfo
_080496B8: .4byte gOamAffineBuffer
_080496BC: .4byte 0x0811779C
_080496C0:
	strh r4, [r2, #6]
_080496C2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08049656
	ldr r1, _080496E4 @ =0x04000050
	movs r0, #0xd6
	strh r0, [r1]
	movs r0, #5
	ldr r2, _080496E8 @ =gBlendValue
	strb r0, [r2]
	subs r1, #0x50
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	b _08049710
	.align 2, 0
_080496E4: .4byte 0x04000050
_080496E8: .4byte gBlendValue
_080496EC:
	ldr r1, _080496F4 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	b _08049710
	.align 2, 0
_080496F4: .4byte 0x04000050
_080496F8:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x50
	movs r0, #0xd7
	strh r0, [r1]
	ldr r1, _08049720 @ =gBlendValue
	movs r0, #5
_0804970E:
	strb r0, [r1]
_08049710:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049720: .4byte gBlendValue

	thumb_func_start sub_08049724
sub_08049724: @ 0x08049724
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _0804976C @ =gUnk_03004C20
	ldr r0, [r4]
	cmp r0, #0
	bne _08049740
	movs r0, #1
	strb r0, [r4, #0xe]
	bl sub_0804886C
	ldr r0, _08049770 @ =gUnk_03004D9C
	ldrb r0, [r0]
	bl sub_08049348
_08049740:
	ldr r0, [r4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08049754
	ldr r1, _08049774 @ =gBgInfo
	adds r1, #0x40
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08049754:
	ldr r0, _08049770 @ =gUnk_03004D9C
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #7
	bls _08049760
	b _08049BD6
_08049760:
	lsls r0, r1, #2
	ldr r1, _08049778 @ =_0804977C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804976C: .4byte gUnk_03004C20
_08049770: .4byte gUnk_03004D9C
_08049774: .4byte gBgInfo
_08049778: .4byte _0804977C
_0804977C: @ jump table
	.4byte _0804979C @ case 0
	.4byte _08049810 @ case 1
	.4byte _08049BD6 @ case 2
	.4byte _08049BD6 @ case 3
	.4byte _08049BD6 @ case 4
	.4byte _080498F4 @ case 5
	.4byte _08049AB0 @ case 6
	.4byte _08049B90 @ case 7
_0804979C:
	bl sub_080491C0
	ldr r2, _080497C8 @ =gBlendValue
	ldrb r0, [r2]
	cmp r0, #0
	bne _080497E4
	ldr r0, _080497CC @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080497BC
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080497D0
_080497BC:
	movs r0, #1
	strb r0, [r2]
	movs r0, #0x52
	bl m4aSongNumStart
	b _08049BD6
	.align 2, 0
_080497C8: .4byte gBlendValue
_080497CC: .4byte gNewKeys
_080497D0:
	ldr r0, _080497E0 @ =gUnk_03004C20
	ldr r0, [r0]
	cmp r0, #0xaa
	bhi _080497DA
	b _08049BD6
_080497DA:
	movs r0, #1
	strb r0, [r2]
	b _08049BD6
	.align 2, 0
_080497E0: .4byte gUnk_03004C20
_080497E4:
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	beq _080497FC
	ldr r1, _080497F8 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	b _08049BD6
	.align 2, 0
_080497F8: .4byte 0x04000050
_080497FC:
	ldr r1, _0804980C @ =gUnk_03004D9C
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	bl sub_08049348
	b _08049BD6
	.align 2, 0
_0804980C: .4byte gUnk_03004D9C
_08049810:
	ldr r1, _08049824 @ =gBlendValue
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804982C
	subs r0, #1
	strb r0, [r1]
	ldr r1, _08049828 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	b _08049880
	.align 2, 0
_08049824: .4byte gBlendValue
_08049828: .4byte 0x04000050
_0804982C:
	ldr r2, _080498B0 @ =gBgInfo
	ldrh r3, [r2, #0xa]
	adds r0, r3, #0
	cmp r0, #0
	beq _08049844
	ldr r0, _080498B4 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08049846
	adds r0, r3, #1
_08049844:
	strh r0, [r2, #0xa]
_08049846:
	ldr r0, _080498B8 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08049862
	movs r0, #5
	strb r0, [r7]
	movs r0, #5
	bl sub_08049348
	movs r0, #0x52
	bl m4aSongNumStart
_08049862:
	ldr r0, _080498B4 @ =gUnk_03004C20
	ldr r1, [r0]
	ldr r0, _080498BC @ =0x000003FF
	cmp r1, r0
	bls _08049880
	ldr r0, _080498C0 @ =gBlendValue
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049880
	ldr r1, _080498C4 @ =gUnk_03004D9C
	movs r0, #6
	strb r0, [r1]
	movs r0, #6
	bl sub_08049348
_08049880:
	ldr r0, _080498B4 @ =gUnk_03004C20
	ldr r0, [r0]
	movs r1, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080498CC
	movs r2, #8
	ldr r5, _080498C8 @ =gEntityInfo
	movs r4, #1
	movs r3, #0x54
_08049894:
	adds r0, r2, #0
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	strb r4, [r1, #0x10]
	strb r3, [r1, #0x11]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa
	bls _08049894
	b _08049BD6
	.align 2, 0
_080498B0: .4byte gBgInfo
_080498B4: .4byte gUnk_03004C20
_080498B8: .4byte gNewKeys
_080498BC: .4byte 0x000003FF
_080498C0: .4byte gBlendValue
_080498C4: .4byte gUnk_03004D9C
_080498C8: .4byte gEntityInfo
_080498CC:
	movs r2, #8
	ldr r5, _080498F0 @ =gEntityInfo
	movs r4, #0
	movs r3, #0x1c
_080498D4:
	adds r0, r2, #0
	adds r0, #0xd
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	strb r4, [r1, #0x10]
	strb r3, [r1, #0x11]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa
	bls _080498D4
	b _08049BD6
	.align 2, 0
_080498F0: .4byte gEntityInfo
_080498F4:
	ldr r0, _080499AC @ =gUnk_03000828
	ldrb r1, [r0]
	cmp r1, #0
	beq _080499C4
	ldr r2, _080499B0 @ =gNewKeys
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08049954
	movs r2, #0x14
	ldr r5, _080499B4 @ =gUnk_03003410
	ldr r1, _080499B8 @ =0x040000D4
	ldr r3, _080499BC @ =gBgTilemapBufs
	ldr r4, _080499C0 @ =0x8000001E
_08049912:
	lsls r0, r2, #6
	adds r0, r0, r3
	str r0, [r1]
	subs r0, r2, #5
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, #6
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1]
	subs r0, r2, #3
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x15
	bls _08049912
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0804994E
	movs r0, #0x51
	bl m4aSongNumStart
_0804994E:
	movs r0, #0
	strb r0, [r5, #6]
	ldr r2, _080499B0 @ =gNewKeys
_08049954:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080499CA
	movs r2, #0x16
	ldr r5, _080499B4 @ =gUnk_03003410
	ldr r1, _080499B8 @ =0x040000D4
	ldr r3, _080499BC @ =gBgTilemapBufs
	ldr r4, _080499C0 @ =0x8000001E
_08049968:
	adds r0, r2, #2
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1]
	subs r0, r2, #7
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	lsls r0, r2, #6
	adds r0, r0, r3
	str r0, [r1]
	subs r0, r2, #5
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x17
	bls _08049968
	ldrb r0, [r5, #6]
	cmp r0, #1
	beq _080499A4
	movs r0, #0x51
	bl m4aSongNumStart
_080499A4:
	movs r0, #1
	strb r0, [r5, #6]
	b _080499C8
	.align 2, 0
_080499AC: .4byte gUnk_03000828
_080499B0: .4byte gNewKeys
_080499B4: .4byte gUnk_03003410
_080499B8: .4byte 0x040000D4
_080499BC: .4byte gBgTilemapBufs
_080499C0: .4byte 0x8000001E
_080499C4:
	ldr r0, _08049A88 @ =gUnk_03003410
	strb r1, [r0, #6]
_080499C8:
	ldr r2, _08049A8C @ =gNewKeys
_080499CA:
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08049A38
	movs r2, #0xf
	ldr r7, _08049A90 @ =gUnk_03004D9C
	mov r3, sp
	movs r6, #0
	ldr r1, _08049A94 @ =0x040000D4
	ldr r5, _08049A98 @ =gBgTilemapBufs
	ldr r4, _08049A9C @ =0x8100001E
_080499E2:
	strh r6, [r3]
	mov r0, sp
	str r0, [r1]
	lsls r0, r2, #6
	adds r0, r0, r5
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x12
	bls _080499E2
	movs r2, #0x1c
	ldr r1, _08049A94 @ =0x040000D4
	ldr r3, _08049A98 @ =gBgTilemapBufs
	ldr r4, _08049AA0 @ =0x8000001E
_08049A04:
	lsls r0, r2, #6
	adds r0, r0, r3
	str r0, [r1]
	adds r0, r2, #0
	subs r0, #0xa
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1d
	bls _08049A04
	movs r0, #1
	strb r0, [r7]
	movs r0, #1
	bl sub_08049348
	movs r0, #0x54
	bl m4aSongNumStart
	ldr r1, _08049AA4 @ =gBlendValue
	movs r0, #0
	strb r0, [r1]
_08049A38:
	ldr r0, _08049A8C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08049A4C
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08049A5E
_08049A4C:
	ldr r1, _08049A90 @ =gUnk_03004D9C
	movs r0, #7
	strb r0, [r1]
	movs r0, #7
	bl sub_08049348
	movs r0, #0x52
	bl m4aSongNumStart
_08049A5E:
	ldr r1, _08049A94 @ =0x040000D4
	ldr r0, _08049A98 @ =gBgTilemapBufs
	str r0, [r1]
	ldr r0, _08049AA8 @ =gBgInfo
	ldr r0, [r0, #4]
	str r0, [r1, #4]
	ldr r0, _08049AAC @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	blt _08049A7C
	b _08049BD6
_08049A7C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08049A7C
	b _08049BD6
	.align 2, 0
_08049A88: .4byte gUnk_03003410
_08049A8C: .4byte gNewKeys
_08049A90: .4byte gUnk_03004D9C
_08049A94: .4byte 0x040000D4
_08049A98: .4byte gBgTilemapBufs
_08049A9C: .4byte 0x8100001E
_08049AA0: .4byte 0x8000001E
_08049AA4: .4byte gBlendValue
_08049AA8: .4byte gBgInfo
_08049AAC: .4byte 0x80000400
_08049AB0:
	ldr r5, _08049B08 @ =gBlendValue
	ldr r4, _08049B0C @ =gUnk_03004C20
	ldr r1, [r4]
	lsrs r0, r1, #2
	strb r0, [r5]
	cmp r1, #0x3f
	bhi _08049AC0
	b _08049BD6
_08049AC0:
	bl m4aMPlayAllStop
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4]
	ldr r1, _08049B10 @ =gUnk_03004D9C
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08049B14 @ =gMosaicSize
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0x10
	strb r0, [r5]
	movs r1, #0
	movs r0, #0xfe
	strb r0, [r4, #0x13]
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0x12]
	adds r0, #1
	strb r0, [r4, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08049AF2
	strb r1, [r4, #0x12]
_08049AF2:
	ldrb r2, [r4, #0x12]
	cmp r2, #0
	bne _08049B1C
	ldr r0, _08049B18 @ =gUnk_03005220
	adds r0, #0x4c
	movs r1, #3
	strb r1, [r0]
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #1
	b _08049B42
	.align 2, 0
_08049B08: .4byte gBlendValue
_08049B0C: .4byte gUnk_03004C20
_08049B10: .4byte gUnk_03004D9C
_08049B14: .4byte gMosaicSize
_08049B18: .4byte gUnk_03005220
_08049B1C:
	cmp r2, #1
	bne _08049B34
	ldr r0, _08049B30 @ =gUnk_03005220
	adds r0, #0x4c
	movs r1, #7
	strb r1, [r0]
	strb r2, [r4, #0xd]
	strb r1, [r4, #0xc]
	b _08049B44
	.align 2, 0
_08049B30: .4byte gUnk_03005220
_08049B34:
	ldr r0, _08049B78 @ =gUnk_03005220
	adds r0, #0x4c
	movs r1, #0x63
	strb r1, [r0]
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #5
_08049B42:
	strb r0, [r4, #0xc]
_08049B44:
	ldr r0, _08049B7C @ =gUnk_03004C20
	movs r4, #0
	strb r4, [r0, #0xe]
	ldr r2, _08049B80 @ =gUnk_03003410
	strb r4, [r2, #9]
	movs r3, #1
	strb r3, [r2, #0xa]
	ldr r1, _08049B84 @ =gCallbackQueue
	ldr r0, _08049B88 @ =sub_08001158
	str r0, [r1, #0x28]
	strb r3, [r2, #8]
	ldr r0, _08049B8C @ =sub_08003904
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
	b _08049BD6
	.align 2, 0
_08049B78: .4byte gUnk_03005220
_08049B7C: .4byte gUnk_03004C20
_08049B80: .4byte gUnk_03003410
_08049B84: .4byte gCallbackQueue
_08049B88: .4byte sub_08001158
_08049B8C: .4byte sub_08003904
_08049B90:
	ldr r4, _08049BE0 @ =gUnk_03004C20
	ldr r0, [r4]
	movs r1, #1
	ands r0, r1
	ldr r5, _08049BE4 @ =gBlendValue
	cmp r0, #0
	beq _08049BA4
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_08049BA4:
	ldrb r0, [r5]
	cmp r0, #0x10
	bne _08049BD6
	ldr r1, [r4]
	lsrs r0, r1, #2
	cmp r1, r0
	blo _08049BD6
	bl m4aMPlayAllStop
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4]
	ldr r1, _08049BE8 @ =gUnk_03004D9C
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xf
	strb r0, [r5]
	ldr r1, _08049BEC @ =gCallbackQueue
	ldr r0, _08049BF0 @ =sub_08024560
	str r0, [r1, #4]
	ldr r0, _08049BF4 @ =sub_0800BFF4
	str r0, [r1, #8]
	ldr r1, _08049BF8 @ =gUnk_03003410
	movs r0, #0
	strb r0, [r1, #0xa]
_08049BD6:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049BE0: .4byte gUnk_03004C20
_08049BE4: .4byte gBlendValue
_08049BE8: .4byte gUnk_03004D9C
_08049BEC: .4byte gCallbackQueue
_08049BF0: .4byte sub_08024560
_08049BF4: .4byte sub_0800BFF4
_08049BF8: .4byte gUnk_03003410

	thumb_func_start sub_08049BFC
sub_08049BFC: @ 0x08049BFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08003D58
	ldr r6, _08049E44 @ =0x040000D4
	ldr r0, _08049E48 @ =gOamBuffer
	str r0, [r6]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	ldr r0, _08049E4C @ =0x84000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _08049E50 @ =gUnk_03004C20
	movs r4, #0
	movs r5, #1
	strb r5, [r0, #0xd]
	ldr r0, _08049E54 @ =gUnk_03003410
	strb r4, [r0, #8]
	bl sub_08003904
	ldr r2, _08049E58 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08049E5C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08049E60 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08049E64 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	ldr r0, _08049E68 @ =gOamAffineBuffer
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #6]
	strh r1, [r0]
	strh r4, [r0, #4]
	strh r4, [r0, #2]
	ldr r0, _08049E6C @ =gEntityInfo
	adds r1, #0x7c
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _08049E70 @ =0x082F8BF8
	ldr r0, [r2]
	ldr r5, _08049E74 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r4, _08049E78 @ =gBgDataPtrs
	str r0, [r4, #0x10]
	ldr r1, _08049E7C @ =0x082FA784
	ldr r0, [r1]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0x14]
	ldr r7, _08049E80 @ =0x082FA8C0
	ldr r0, [r7]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #8]
	ldr r2, _08049E84 @ =0x082FB0E0
	mov sl, r2
	ldr r0, [r2]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #0xc]
	ldr r0, _08049E88 @ =0x082FB280
	mov sb, r0
	ldr r0, [r0]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4]
	ldr r1, _08049E8C @ =0x082FBB9C
	mov r8, r1
	ldr r0, [r1]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r1, _08049E70 @ =0x082F8BF8
	bl Decompress
	ldr r0, [r4, #0x14]
	ldr r1, _08049E7C @ =0x082FA784
	bl Decompress
	ldr r0, [r4, #8]
	adds r1, r7, #0
	bl Decompress
	ldr r0, [r4, #0xc]
	mov r1, sl
	bl Decompress
	ldr r0, [r4]
	mov r1, sb
	bl Decompress
	ldr r0, [r4, #4]
	mov r1, r8
	bl Decompress
	ldr r0, [r4, #0x10]
	adds r0, #4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	adds r0, #4
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	adds r0, #4
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	adds r0, #4
	str r0, [r4, #0xc]
	ldr r0, [r4]
	adds r0, #4
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	ldr r5, _08049E90 @ =gBgInfo
	ldr r0, _08049E94 @ =0x06008000
	str r0, [r5, #0x38]
	ldr r0, _08049E98 @ =0x0600F000
	str r0, [r5, #0x3c]
	ldr r0, _08049E9C @ =0x06004000
	str r0, [r5, #0x1c]
	ldr r0, _08049EA0 @ =0x0600E800
	str r0, [r5, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r5]
	ldr r0, _08049EA4 @ =0x0600E000
	str r0, [r5, #4]
	ldr r0, _08049EA8 @ =0x082FBE10
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl DecompressDma
	ldr r0, [r4, #0x10]
	str r0, [r6]
	ldr r0, [r5, #0x38]
	str r0, [r6, #4]
	ldr r0, _08049EAC @ =0x80001480
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, [r4, #8]
	str r0, [r6]
	ldr r0, [r5, #0x1c]
	str r0, [r6, #4]
	ldr r0, _08049EB0 @ =0x80000820
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, [r4]
	str r0, [r6]
	ldr r0, [r5]
	str r0, [r6, #4]
	ldr r0, _08049EB4 @ =0x80001040
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r2, #0
	ldr r4, [r4, #0x14]
	mov r8, r4
	mov r3, sp
	movs r5, #0
	ldr r7, _08049EB8 @ =gBgTilemapBufs+0x800
	ldr r4, _08049EBC @ =0x8100001E
	ldr r0, _08049EC0 @ =0xFFFFF800
	adds r0, r0, r7
	mov sb, r0
_08049D76:
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	str r0, [r6]
	lsls r0, r2, #5
	ldr r1, _08049EC4 @ =gUnk_03004DB0
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _08049EC8 @ =0x8000000F
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	strh r5, [r3]
	mov r1, sp
	str r1, [r6]
	lsls r1, r2, #6
	adds r0, r1, r7
	str r0, [r6, #4]
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	strh r5, [r3]
	mov r0, sp
	str r0, [r6]
	add r1, sb
	str r1, [r6, #4]
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x13
	bls _08049D76
	ldr r2, _08049E90 @ =gBgInfo
	adds r0, r2, #0
	adds r0, #0x42
	movs r4, #0
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	strh r1, [r2, #0xa]
	strh r1, [r2, #8]
	ldr r2, _08049ECC @ =gBg2X
	ldr r0, _08049ED0 @ =gBg2Y
	str r1, [r0]
	str r1, [r2]
	ldr r3, _08049ED4 @ =gBg2PA
	ldr r2, _08049ED8 @ =gBg2PD
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	strh r0, [r2]
	strh r0, [r3]
	ldr r2, _08049EDC @ =gBg2PB
	ldr r0, _08049EE0 @ =gBg2PC
	strh r1, [r0]
	strh r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08049EE4 @ =0x00001641
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r5, #0xe2
	lsls r5, r5, #5
	adds r0, r5, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08049EE8 @ =0x00001D45
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, _08049EEC @ =0x00007ECA
	adds r0, r5, #0
	strh r0, [r1]
	ldr r1, _08049EF0 @ =gIntrTable
	ldr r0, _08049EF4 @ =sub_080009D8
	str r0, [r1]
	ldr r2, _08049E58 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08049E60 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	ldr r0, _08049EF8 @ =gUnk_03002900
	strb r4, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049E44: .4byte 0x040000D4
_08049E48: .4byte gOamBuffer
_08049E4C: .4byte 0x84000100
_08049E50: .4byte gUnk_03004C20
_08049E54: .4byte gUnk_03003410
_08049E58: .4byte 0x04000200
_08049E5C: .4byte 0x0000FFFE
_08049E60: .4byte 0x04000004
_08049E64: .4byte 0x0000FFF7
_08049E68: .4byte gOamAffineBuffer
_08049E6C: .4byte gEntityInfo
_08049E70: .4byte 0x082F8BF8
_08049E74: .4byte 0x7FFFFFFF
_08049E78: .4byte gBgDataPtrs
_08049E7C: .4byte 0x082FA784
_08049E80: .4byte 0x082FA8C0
_08049E84: .4byte 0x082FB0E0
_08049E88: .4byte 0x082FB280
_08049E8C: .4byte 0x082FBB9C
_08049E90: .4byte gBgInfo
_08049E94: .4byte 0x06008000
_08049E98: .4byte 0x0600F000
_08049E9C: .4byte 0x06004000
_08049EA0: .4byte 0x0600E800
_08049EA4: .4byte 0x0600E000
_08049EA8: .4byte 0x082FBE10
_08049EAC: .4byte 0x80001480
_08049EB0: .4byte 0x80000820
_08049EB4: .4byte 0x80001040
_08049EB8: .4byte gBgTilemapBufs+0x800
_08049EBC: .4byte 0x8100001E
_08049EC0: .4byte 0xFFFFF800
_08049EC4: .4byte gUnk_03004DB0
_08049EC8: .4byte 0x8000000F
_08049ECC: .4byte gBg2X
_08049ED0: .4byte gBg2Y
_08049ED4: .4byte gBg2PA
_08049ED8: .4byte gBg2PD
_08049EDC: .4byte gBg2PB
_08049EE0: .4byte gBg2PC
_08049EE4: .4byte 0x00001641
_08049EE8: .4byte 0x00001D45
_08049EEC: .4byte 0x00007ECA
_08049EF0: .4byte gIntrTable
_08049EF4: .4byte sub_080009D8
_08049EF8: .4byte gUnk_03002900

	thumb_func_start sub_08049EFC
sub_08049EFC: @ 0x08049EFC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049FBC
	ldr r1, _08049F24 @ =gNewKeys
	ldrh r2, [r1]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08049F2C
	ldr r0, _08049F28 @ =gUnk_03004658
	ldr r4, [r0]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r4, #0xc]
	b _08049F42
	.align 2, 0
_08049F24: .4byte gNewKeys
_08049F28: .4byte gUnk_03004658
_08049F2C:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08049F50
	ldr r0, _08049F4C @ =gUnk_03004658
	ldr r2, [r0]
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _08049F50
	subs r0, #1
	strb r0, [r2, #0xc]
_08049F42:
	movs r0, #0x51
	bl m4aSongNumStart
	b _08049F6E
	.align 2, 0
_08049F4C: .4byte gUnk_03004658
_08049F50:
	ldrh r1, [r1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08049F6E
	ldr r0, _08049FAC @ =gUnk_03004658
	ldr r1, [r0]
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	beq _08049F6E
	adds r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0x51
	bl m4aSongNumStart
_08049F6E:
	ldr r4, _08049FB0 @ =gEntityInfo
	ldr r2, _08049FB4 @ =gUnk_0811717C
	ldr r0, _08049FAC @ =gUnk_03004658
	ldr r3, [r0]
	ldrb r1, [r3, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldrb r1, [r2]
	adds r0, r0, r1
	movs r5, #0xb6
	lsls r5, r5, #1
	adds r1, r4, r5
	strh r0, [r1]
	ldrb r0, [r2, #1]
	movs r2, #0xb7
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	ldr r2, _08049FB8 @ =0x04000040
	ldrb r1, [r3, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, #0
	adds r1, #8
	lsls r1, r1, #8
	adds r0, #0x48
	orrs r1, r0
	strh r1, [r2]
	b _0804A056
	.align 2, 0
_08049FAC: .4byte gUnk_03004658
_08049FB0: .4byte gEntityInfo
_08049FB4: .4byte gUnk_0811717C
_08049FB8: .4byte 0x04000040
_08049FBC:
	ldr r1, _08049FDC @ =gNewKeys
	ldrh r2, [r1]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08049FE4
	ldr r0, _08049FE0 @ =gUnk_03004658
	ldr r2, [r0]
	ldrb r1, [r2, #0xc]
	adds r1, #1
	lsrs r0, r1, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	strb r1, [r2, #0xc]
	b _08049FFA
	.align 2, 0
_08049FDC: .4byte gNewKeys
_08049FE0: .4byte gUnk_03004658
_08049FE4:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0804A008
	ldr r0, _0804A004 @ =gUnk_03004658
	ldr r2, [r0]
	ldrb r0, [r2, #0xc]
	cmp r0, #1
	bne _0804A008
	subs r0, #1
	strb r0, [r2, #0xc]
_08049FFA:
	movs r0, #0x51
	bl m4aSongNumStart
	b _0804A026
	.align 2, 0
_0804A004: .4byte gUnk_03004658
_0804A008:
	ldrh r1, [r1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804A026
	ldr r0, _0804A05C @ =gUnk_03004658
	ldr r1, [r0]
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0804A026
	adds r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0x51
	bl m4aSongNumStart
_0804A026:
	ldr r4, _0804A060 @ =gEntityInfo
	ldr r3, _0804A064 @ =gUnk_0811717C
	ldrb r2, [r3]
	ldr r0, _0804A05C @ =gUnk_03004658
	ldr r0, [r0]
	ldrb r1, [r0, #0xc]
	movs r0, #0x68
	muls r0, r1, r0
	adds r0, #3
	adds r2, r2, r0
	movs r5, #0xb6
	lsls r5, r5, #1
	adds r0, r4, r5
	strh r2, [r0]
	ldrb r0, [r3, #1]
	adds r0, #0x53
	movs r2, #0xb7
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _0804A068 @ =0x04000040
	ldr r5, _0804A06C @ =0x00005898
	adds r0, r5, #0
	strh r0, [r1]
_0804A056:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A05C: .4byte gUnk_03004658
_0804A060: .4byte gEntityInfo
_0804A064: .4byte gUnk_0811717C
_0804A068: .4byte 0x04000040
_0804A06C: .4byte 0x00005898

	thumb_func_start sub_0804A070
sub_0804A070: @ 0x0804A070
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r1, _0804A0E4 @ =0x040000D4
	str r0, [r1]
	ldr r2, _0804A0E8 @ =gBgTilemapBufs
	str r2, [r1, #4]
	ldr r3, _0804A0EC @ =0x81000400
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r4, [r0]
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r2, r2, r0
	str r2, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	movs r4, #1
	mov ip, r2
	ldr r2, _0804A0F0 @ =gBgDataPtrs
	ldr r3, [r2, #0xc]
	mov r6, ip
	ldr r5, _0804A0F4 @ =0x8000001E
_0804A0B4:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r3, r0
	str r0, [r1]
	lsls r0, r4, #6
	adds r0, r0, r6
	str r0, [r1, #4]
	str r5, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0804A0B4
	movs r0, #0xf0
	ldr r3, [sp, #4]
	ands r0, r3
	cmp r0, #0
	beq _0804A0F8
	cmp r0, #0x10
	beq _0804A194
	b _0804A2E4
	.align 2, 0
_0804A0E4: .4byte 0x040000D4
_0804A0E8: .4byte gBgTilemapBufs
_0804A0EC: .4byte 0x81000400
_0804A0F0: .4byte gBgDataPtrs
_0804A0F4: .4byte 0x8000001E
_0804A0F8:
	movs r4, #6
	ldr r7, _0804A180 @ =0x040000D4
_0804A0FC:
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r6, _0804A184 @ =gBgDataPtrs
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	str r0, [r7]
	lsls r0, r4, #6
	add r0, ip
	str r0, [r7, #4]
	ldr r0, _0804A188 @ =0x8000001E
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	movs r0, #0
	mov sl, r0
	adds r2, r4, #1
_0804A11C:
	ldr r1, _0804A18C @ =gUnk_030047FC
	ldr r0, [r1]
	adds r0, #0x29
	add r0, sl
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	mov r3, sl
	adds r3, #1
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0804A168
	movs r6, #0
	mov r8, r6
	lsls r1, r4, #5
	mov r3, sl
	lsls r0, r3, #2
	add r0, sl
	lsls r0, r0, #1
	adds r3, r1, r0
	ldr r6, _0804A190 @ =gBgTilemapBufs+0x800
	movs r0, #0xc0
	lsls r0, r0, #7
	adds r5, r0, #0
_0804A14C:
	mov r1, r8
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	orrs r1, r5
	strh r1, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #9
	bls _0804A14C
_0804A168:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #2
	bls _0804A11C
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804A0FC
	b _0804A2E4
	.align 2, 0
_0804A180: .4byte 0x040000D4
_0804A184: .4byte gBgDataPtrs
_0804A188: .4byte 0x8000001E
_0804A18C: .4byte gUnk_030047FC
_0804A190: .4byte gBgTilemapBufs+0x800
_0804A194:
	ldr r0, _0804A20C @ =gUnk_030047FC
	ldr r0, [r0]
	ldr r1, _0804A210 @ =gUnk_03004658
	ldr r1, [r1]
	adds r0, #0x29
	ldrb r1, [r1, #0xd]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804A224
	movs r4, #6
	ldr r7, _0804A214 @ =0x03001114
	ldr r3, _0804A218 @ =0x040000D4
	ldr r6, _0804A21C @ =gBgDataPtrs
	mov sb, r6
	adds r6, r7, #0
	subs r6, #0x14
	movs r0, #0xc0
	lsls r0, r0, #7
	adds r5, r0, #0
_0804A1C0:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x14
	mov r2, sb
	ldr r1, [r2, #0xc]
	adds r1, r1, r0
	str r1, [r3]
	lsls r0, r4, #6
	adds r0, r0, r7
	str r0, [r3, #4]
	ldr r0, _0804A220 @ =0x8000000A
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0
	mov r8, r0
	lsls r2, r4, #5
_0804A1E2:
	mov r0, r8
	adds r0, #0xa
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	orrs r1, r5
	strh r1, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #9
	bls _0804A1E2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804A1C0
	b _0804A254
	.align 2, 0
_0804A20C: .4byte gUnk_030047FC
_0804A210: .4byte gUnk_03004658
_0804A214: .4byte 0x03001114
_0804A218: .4byte 0x040000D4
_0804A21C: .4byte gBgDataPtrs
_0804A220: .4byte 0x8000000A
_0804A224:
	movs r4, #6
	ldr r1, _0804A2FC @ =0x03000910
	ldr r2, _0804A300 @ =0x040000D4
	ldr r0, _0804A304 @ =gBgDataPtrs
	ldr r3, [r0, #0xc]
	ldr r6, _0804A308 @ =0x00000806
	adds r1, r1, r6
	ldr r5, _0804A30C @ =0x80000009
_0804A234:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x16
	adds r0, r3, r0
	str r0, [r2]
	lsls r0, r4, #6
	adds r0, r0, r1
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0804A234
_0804A254:
	movs r4, #0xf
	ldr r1, _0804A300 @ =0x040000D4
	ldr r0, _0804A304 @ =gBgDataPtrs
	ldr r2, [r0, #0xc]
	ldr r5, _0804A310 @ =gBgTilemapBufs+0x800
	ldr r3, _0804A314 @ =0x8000001E
_0804A260:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r2, r0
	str r0, [r1]
	lsls r0, r4, #6
	adds r0, r0, r5
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x12
	bls _0804A260
	movs r4, #0
	ldr r2, _0804A300 @ =0x040000D4
	ldr r0, _0804A304 @ =gBgDataPtrs
	ldr r3, [r0, #4]
	ldr r6, _0804A2FC @ =0x03000910
	ldr r5, _0804A318 @ =0x80000003
_0804A28A:
	adds r1, r4, #0
	adds r1, #8
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x10
	lsls r0, r0, #6
	adds r0, r0, r6
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A28A
	movs r4, #0
	ldr r2, _0804A300 @ =0x040000D4
	ldr r0, _0804A304 @ =gBgDataPtrs
	ldr r3, [r0, #4]
	ldr r6, _0804A31C @ =0x0300092A
	ldr r5, _0804A320 @ =0x80000005
_0804A2BC:
	adds r1, r4, #0
	adds r1, #8
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #6
	adds r0, r3, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x10
	lsls r0, r0, #6
	adds r0, r0, r6
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A2BC
_0804A2E4:
	movs r0, #0xf
	ldr r1, [sp, #4]
	ands r0, r1
	cmp r0, #8
	bls _0804A2F0
	b _0804A528
_0804A2F0:
	lsls r0, r0, #2
	ldr r1, _0804A324 @ =_0804A328
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804A2FC: .4byte 0x03000910
_0804A300: .4byte 0x040000D4
_0804A304: .4byte gBgDataPtrs
_0804A308: .4byte 0x00000806
_0804A30C: .4byte 0x80000009
_0804A310: .4byte gBgTilemapBufs+0x800
_0804A314: .4byte 0x8000001E
_0804A318: .4byte 0x80000003
_0804A31C: .4byte 0x0300092A
_0804A320: .4byte 0x80000005
_0804A324: .4byte _0804A328
_0804A328: @ jump table
	.4byte _0804A34C @ case 0
	.4byte _0804A38C @ case 1
	.4byte _0804A3CC @ case 2
	.4byte _0804A528 @ case 3
	.4byte _0804A4B8 @ case 4
	.4byte _0804A528 @ case 5
	.4byte _0804A528 @ case 6
	.4byte _0804A528 @ case 7
	.4byte _0804A4F8 @ case 8
_0804A34C:
	movs r4, #0
	ldr r1, _0804A37C @ =0x040000D4
	ldr r0, _0804A380 @ =gBgDataPtrs
	ldr r2, [r0, #4]
	ldr r5, _0804A384 @ =0x0300090A
	ldr r3, _0804A388 @ =0x80000014
_0804A358:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r2, r0
	str r0, [r1]
	adds r0, r4, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A358
	b _0804A528
	.align 2, 0
_0804A37C: .4byte 0x040000D4
_0804A380: .4byte gBgDataPtrs
_0804A384: .4byte 0x0300090A
_0804A388: .4byte 0x80000014
_0804A38C:
	movs r4, #0
	ldr r1, _0804A3BC @ =0x040000D4
	ldr r0, _0804A3C0 @ =gBgDataPtrs
	ldr r2, [r0, #4]
	ldr r5, _0804A3C4 @ =0x0300090C
	ldr r3, _0804A3C8 @ =0x80000013
_0804A398:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r2, r0
	str r0, [r1]
	adds r0, r4, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A398
	b _0804A528
	.align 2, 0
_0804A3BC: .4byte 0x040000D4
_0804A3C0: .4byte gBgDataPtrs
_0804A3C4: .4byte 0x0300090C
_0804A3C8: .4byte 0x80000013
_0804A3CC:
	ldr r0, _0804A418 @ =gUnk_03003410
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0804A478
	ldr r0, _0804A41C @ =gUnk_030047FC
	ldr r0, [r0]
	ldr r1, _0804A420 @ =gUnk_03004658
	ldr r1, [r1]
	adds r0, #0x26
	ldrb r1, [r1, #0xd]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A434
	movs r4, #0
	ldr r2, _0804A424 @ =0x040000D4
	ldr r0, _0804A428 @ =gBgDataPtrs
	ldr r3, [r0, #4]
	ldr r6, _0804A42C @ =0x03000912
	ldr r5, _0804A430 @ =0x8000000C
_0804A3F4:
	adds r1, r4, #6
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	str r0, [r2]
	adds r0, r4, #2
	lsls r0, r0, #6
	adds r0, r0, r6
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A3F4
	b _0804A528
	.align 2, 0
_0804A418: .4byte gUnk_03003410
_0804A41C: .4byte gUnk_030047FC
_0804A420: .4byte gUnk_03004658
_0804A424: .4byte 0x040000D4
_0804A428: .4byte gBgDataPtrs
_0804A42C: .4byte 0x03000912
_0804A430: .4byte 0x8000000C
_0804A434:
	movs r4, #0
	ldr r2, _0804A468 @ =0x040000D4
	ldr r0, _0804A46C @ =gBgDataPtrs
	ldr r3, [r0, #4]
	ldr r6, _0804A470 @ =0x03000908
	ldr r5, _0804A474 @ =0x80000015
_0804A440:
	adds r1, r4, #0
	adds r1, #8
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x10
	adds r0, r3, r0
	str r0, [r2]
	adds r0, r4, #2
	lsls r0, r0, #6
	adds r0, r0, r6
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A440
	b _0804A528
	.align 2, 0
_0804A468: .4byte 0x040000D4
_0804A46C: .4byte gBgDataPtrs
_0804A470: .4byte 0x03000908
_0804A474: .4byte 0x80000015
_0804A478:
	movs r4, #0
	ldr r2, _0804A4A8 @ =0x040000D4
	ldr r0, _0804A4AC @ =gBgDataPtrs
	ldr r3, [r0, #4]
	ldr r6, _0804A4B0 @ =0x03000912
	ldr r5, _0804A4B4 @ =0x8000000C
_0804A484:
	adds r1, r4, #6
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	str r0, [r2]
	adds r0, r4, #2
	lsls r0, r0, #6
	adds r0, r0, r6
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A484
	b _0804A528
	.align 2, 0
_0804A4A8: .4byte 0x040000D4
_0804A4AC: .4byte gBgDataPtrs
_0804A4B0: .4byte 0x03000912
_0804A4B4: .4byte 0x8000000C
_0804A4B8:
	movs r4, #0
	ldr r2, _0804A4E8 @ =0x040000D4
	ldr r0, _0804A4EC @ =gBgDataPtrs
	ldr r3, [r0, #4]
	ldr r6, _0804A4F0 @ =0x0300090E
	ldr r5, _0804A4F4 @ =0x80000012
_0804A4C4:
	adds r1, r4, #2
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	str r0, [r2]
	lsls r1, r1, #6
	adds r1, r1, r6
	str r1, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A4C4
	b _0804A528
	.align 2, 0
_0804A4E8: .4byte 0x040000D4
_0804A4EC: .4byte gBgDataPtrs
_0804A4F0: .4byte 0x0300090E
_0804A4F4: .4byte 0x80000012
_0804A4F8:
	movs r4, #0
	ldr r2, _0804A540 @ =0x040000D4
	ldr r0, _0804A544 @ =gBgDataPtrs
	ldr r3, [r0, #4]
	ldr r6, _0804A548 @ =0x03000912
	ldr r5, _0804A54C @ =0x8000000E
_0804A504:
	adds r1, r4, #6
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x18
	adds r0, r3, r0
	str r0, [r2]
	adds r0, r4, #2
	lsls r0, r0, #6
	adds r0, r0, r6
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A504
_0804A528:
	movs r0, #0xf0
	ldr r2, [sp, #4]
	ands r0, r2
	cmp r0, #0
	bne _0804A550
	movs r3, #0
	mov sl, r3
	movs r0, #0
	movs r4, #2
	str r4, [sp, #8]
	b _0804A55E
	.align 2, 0
_0804A540: .4byte 0x040000D4
_0804A544: .4byte gBgDataPtrs
_0804A548: .4byte 0x03000912
_0804A54C: .4byte 0x8000000E
_0804A550:
	ldr r0, _0804A5C4 @ =gUnk_03004658
	ldr r0, [r0]
	ldrb r0, [r0, #0xd]
	mov sl, r0
	movs r0, #1
	movs r6, #1
	str r6, [sp, #8]
_0804A55E:
	mov r8, r0
	ldr r0, [sp, #8]
	cmp r8, r0
	bls _0804A56A
	bl _0804AEBE
_0804A56A:
	ldr r0, _0804A5C8 @ =gUnk_030047FC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x26
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A5E0
	ldr r1, _0804A5CC @ =gBgDataPtrs
	ldr r3, [r1, #4]
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r4, _0804A5D0 @ =0x040000D4
	str r0, [r4]
	mov r6, r8
	lsls r1, r6, #2
	add r1, r8
	lsls r1, r1, #2
	ldr r2, _0804A5D4 @ =0x03000B48
	adds r0, r1, r2
	str r0, [r4, #4]
	ldr r0, _0804A5D8 @ =0x80000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0xb5
	lsls r4, r4, #2
	adds r0, r3, r4
	ldr r6, _0804A5D0 @ =0x040000D4
	str r0, [r6]
	adds r2, #0x3e
	adds r1, r1, r2
	str r1, [r6, #4]
	ldr r0, _0804A5DC @ =0x80000004
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0xc]
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x10]
	bl _0804AEA4
	.align 2, 0
_0804A5C4: .4byte gUnk_03004658
_0804A5C8: .4byte gUnk_030047FC
_0804A5CC: .4byte gBgDataPtrs
_0804A5D0: .4byte 0x040000D4
_0804A5D4: .4byte 0x03000B48
_0804A5D8: .4byte 0x80000002
_0804A5DC: .4byte 0x80000004
_0804A5E0:
	adds r0, r1, #0
	adds r0, #0x1d
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A614
	cmp r0, #7
	beq _0804A614
	cmp r0, #2
	beq _0804A5F6
	b _0804A918
_0804A5F6:
	adds r0, r1, #0
	adds r0, #0x20
	add r0, sl
	ldrb r4, [r0]
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804A60E
	b _0804A918
_0804A60E:
	cmp r4, #1
	bne _0804A614
	b _0804A918
_0804A614:
	ldr r2, _0804A6A4 @ =gUnk_030047FC
	ldr r0, [r2]
	adds r0, #0x17
	mov r3, sl
	adds r1, r0, r3
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #6
	bne _0804A6C0
	movs r4, #0
	mov r6, r8
	adds r6, #1
	str r6, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0x10]
	mov r0, r8
	lsls r0, r0, #2
	mov sb, r0
	ldr r5, _0804A6A8 @ =0x040000D4
	ldr r1, _0804A6AC @ =gBgDataPtrs
	ldr r7, [r1, #4]
	add r0, r8
	lsls r0, r0, #1
	adds r0, #1
	str r0, [sp, #0x18]
	ldr r2, _0804A6B0 @ =0x03000902
	mov ip, r2
_0804A64A:
	adds r1, r4, #0
	adds r1, #0x10
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x18
	adds r0, r7, r0
	str r0, [r5]
	adds r2, r4, #0
	adds r2, #9
	lsls r2, r2, #5
	ldr r3, [sp, #0x18]
	adds r2, r2, r3
	lsls r2, r2, #1
	mov r6, ip
	adds r0, r2, r6
	str r0, [r5, #4]
	ldr r0, _0804A6B4 @ =0x80000004
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r3, r4, #0
	adds r3, #0xe
	lsls r1, r3, #4
	ldr r6, _0804A6A4 @ =gUnk_030047FC
	ldr r0, [r6]
	adds r0, #0x1a
	add r0, sl
	subs r1, r1, r3
	ldrb r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	str r1, [r5]
	ldr r0, _0804A6B8 @ =0x0300090A
	adds r2, r2, r0
	str r2, [r5, #4]
	ldr r0, _0804A6BC @ =0x80000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A64A
	b _0804ADC2
	.align 2, 0
_0804A6A4: .4byte gUnk_030047FC
_0804A6A8: .4byte 0x040000D4
_0804A6AC: .4byte gBgDataPtrs
_0804A6B0: .4byte 0x03000902
_0804A6B4: .4byte 0x80000004
_0804A6B8: .4byte 0x0300090A
_0804A6BC: .4byte 0x80000002
_0804A6C0:
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0804A788
	ldrb r0, [r1]
	adds r2, r0, #0
	movs r1, #1
	ands r2, r1
	movs r1, #7
	subs r1, r1, r2
	lsls r4, r1, #4
	subs r4, r4, r1
	lsls r4, r4, #1
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	adds r4, #0x18
	ldr r2, _0804A770 @ =gBgDataPtrs
	ldr r0, [r2, #4]
	adds r0, r0, r4
	ldr r3, _0804A774 @ =0x040000D4
	str r0, [r3]
	mov r4, r8
	lsls r3, r4, #2
	adds r2, r3, r4
	lsls r0, r2, #2
	ldr r1, _0804A778 @ =0x03000B04
	adds r0, r0, r1
	ldr r6, _0804A774 @ =0x040000D4
	str r0, [r6, #4]
	ldr r0, _0804A77C @ =0x80000006
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r4, #0
	mov r6, r8
	adds r6, #1
	str r6, [sp, #0xc]
	mov r0, sl
	adds r0, #1
	str r0, [sp, #0x10]
	mov sb, r3
	ldr r3, _0804A774 @ =0x040000D4
	ldr r1, _0804A780 @ =gUnk_030047FC
	ldr r0, [r1]
	adds r0, #0x17
	mov r6, sl
	adds r7, r0, r6
	ldr r0, _0804A770 @ =gBgDataPtrs
	ldr r5, [r0, #4]
	lsls r2, r2, #1
	adds r2, #1
_0804A736:
	ldrb r1, [r7]
	subs r1, #1
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0xa
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x24
	adds r0, r5, r0
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0804A784 @ =0x03000902
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r6, _0804A77C @ =0x80000006
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A736
	b _0804ADC2
	.align 2, 0
_0804A770: .4byte gBgDataPtrs
_0804A774: .4byte 0x040000D4
_0804A778: .4byte 0x03000B04
_0804A77C: .4byte 0x80000006
_0804A780: .4byte gUnk_030047FC
_0804A784: .4byte 0x03000902
_0804A788:
	cmp r2, #5
	bne _0804A810
	ldr r1, _0804A7FC @ =gBgDataPtrs
	ldr r0, [r1, #4]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, _0804A800 @ =0x040000D4
	str r0, [r3]
	mov r4, r8
	lsls r3, r4, #2
	adds r2, r3, r4
	lsls r0, r2, #2
	ldr r1, _0804A804 @ =0x03000B04
	adds r0, r0, r1
	ldr r6, _0804A800 @ =0x040000D4
	str r0, [r6, #4]
	ldr r0, _0804A808 @ =0x80000006
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r4, #0
	mov r6, r8
	adds r6, #1
	str r6, [sp, #0xc]
	mov r0, sl
	adds r0, #1
	str r0, [sp, #0x10]
	mov sb, r3
	ldr r3, _0804A800 @ =0x040000D4
	ldr r1, _0804A7FC @ =gBgDataPtrs
	ldr r5, [r1, #4]
	lsls r2, r2, #1
	adds r2, #1
_0804A7CA:
	adds r1, r4, #0
	adds r1, #0xa
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r5, r0
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r6, _0804A80C @ =0x03000902
	adds r0, r0, r6
	str r0, [r3, #4]
	ldr r0, _0804A808 @ =0x80000006
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A7CA
	b _0804ADC2
	.align 2, 0
_0804A7FC: .4byte gBgDataPtrs
_0804A800: .4byte 0x040000D4
_0804A804: .4byte 0x03000B04
_0804A808: .4byte 0x80000006
_0804A80C: .4byte 0x03000902
_0804A810:
	movs r2, #1
	strb r2, [r1]
	ldr r3, _0804A8F8 @ =gUnk_030047FC
	ldr r0, [r3]
	adds r0, #0x17
	add r0, sl
	ldrb r0, [r0]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	ldr r6, _0804A8FC @ =gBgDataPtrs
	ldr r0, [r6, #4]
	adds r0, r0, r1
	ldr r1, _0804A900 @ =0x040000D4
	str r0, [r1]
	mov r2, r8
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r0, r2, #2
	ldr r1, _0804A904 @ =0x03000B04
	adds r0, r0, r1
	ldr r4, _0804A900 @ =0x040000D4
	str r0, [r4, #4]
	ldr r6, _0804A908 @ =0x80000006
	str r6, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0xc]
	mov r6, sl
	adds r6, #1
	str r6, [sp, #0x10]
	mov sb, r3
	ldr r3, _0804A900 @ =0x040000D4
	ldr r0, _0804A8FC @ =gBgDataPtrs
	ldr r5, [r0, #4]
	lsls r2, r2, #1
	adds r2, #1
_0804A86E:
	adds r1, r4, #0
	adds r1, #0xa
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x24
	adds r0, r5, r0
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0804A90C @ =0x03000902
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r6, _0804A908 @ =0x80000006
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A86E
	ldr r1, _0804A8F8 @ =gUnk_030047FC
	ldr r0, [r1]
	adds r0, #0x1a
	add r0, sl
	movs r2, #1
	strb r2, [r0]
	movs r4, #0
	ldr r2, _0804A900 @ =0x040000D4
	adds r0, r1, #0
	ldr r0, [r0]
	adds r0, #0x1a
	mov r3, sl
	adds r7, r0, r3
	ldr r6, _0804A8FC @ =gBgDataPtrs
	ldr r5, [r6, #4]
	mov r0, sb
	add r0, r8
	lsls r0, r0, #1
	adds r3, r0, #1
_0804A8C4:
	adds r1, r4, #0
	adds r1, #0xe
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r7]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r6, _0804A910 @ =0x0300090A
	adds r0, r0, r6
	str r0, [r2, #4]
	ldr r0, _0804A914 @ =0x80000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A8C4
	b _0804ADC2
	.align 2, 0
_0804A8F8: .4byte gUnk_030047FC
_0804A8FC: .4byte gBgDataPtrs
_0804A900: .4byte 0x040000D4
_0804A904: .4byte 0x03000B04
_0804A908: .4byte 0x80000006
_0804A90C: .4byte 0x03000902
_0804A910: .4byte 0x0300090A
_0804A914: .4byte 0x80000002
_0804A918:
	ldr r0, _0804AA04 @ =gUnk_030047FC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x1d
	add r0, sl
	ldrb r2, [r0]
	cmp r2, #1
	bne _0804A934
	adds r0, r1, #0
	adds r0, #0x1a
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #8
	beq _0804A958
_0804A934:
	cmp r2, #2
	beq _0804A93A
	b _0804AC28
_0804A93A:
	adds r0, r1, #0
	adds r0, #0x20
	add r0, sl
	ldrb r4, [r0]
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A952
	b _0804AB54
_0804A952:
	cmp r4, #0
	bne _0804A958
	b _0804AB54
_0804A958:
	ldr r1, _0804AA04 @ =gUnk_030047FC
	ldr r0, [r1]
	adds r0, #0x17
	mov r2, sl
	adds r1, r0, r2
	ldrb r2, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0804AA1C
	ldrb r0, [r1]
	adds r2, r0, #0
	movs r3, #1
	ands r2, r3
	movs r1, #7
	subs r1, r1, r2
	lsls r4, r1, #4
	subs r4, r4, r1
	lsls r4, r4, #1
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	adds r4, #0x18
	ldr r6, _0804AA08 @ =gBgDataPtrs
	ldr r0, [r6, #4]
	adds r0, r0, r4
	ldr r1, _0804AA0C @ =0x040000D4
	str r0, [r1]
	mov r2, r8
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r0, r2, #2
	ldr r1, _0804AA10 @ =0x03000B04
	adds r0, r0, r1
	ldr r4, _0804AA0C @ =0x040000D4
	str r0, [r4, #4]
	ldr r6, _0804AA14 @ =0x80000006
	str r6, [r4, #8]
	ldr r0, [r4, #8]
	movs r4, #0
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0xc]
	mov r6, sl
	adds r6, #1
	str r6, [sp, #0x10]
	mov sb, r3
	ldr r3, _0804AA0C @ =0x040000D4
	ldr r0, _0804AA08 @ =gBgDataPtrs
	ldr r5, [r0, #4]
	lsls r2, r2, #1
	adds r2, #1
_0804A9D0:
	adds r1, r4, #0
	adds r1, #0xc
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r5, r0
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0804AA18 @ =0x03000902
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r6, _0804AA14 @ =0x80000006
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804A9D0
	b _0804ADC2
	.align 2, 0
_0804AA04: .4byte gUnk_030047FC
_0804AA08: .4byte gBgDataPtrs
_0804AA0C: .4byte 0x040000D4
_0804AA10: .4byte 0x03000B04
_0804AA14: .4byte 0x80000006
_0804AA18: .4byte 0x03000902
_0804AA1C:
	subs r0, r2, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804AAAC
	ldr r1, _0804AA98 @ =gBgDataPtrs
	ldr r0, [r1, #4]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, _0804AA9C @ =0x040000D4
	str r0, [r3]
	mov r4, r8
	lsls r3, r4, #2
	adds r2, r3, r4
	lsls r0, r2, #2
	ldr r1, _0804AAA0 @ =0x03000B04
	adds r0, r0, r1
	ldr r6, _0804AA9C @ =0x040000D4
	str r0, [r6, #4]
	ldr r0, _0804AAA4 @ =0x80000006
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r4, #0
	mov r6, r8
	adds r6, #1
	str r6, [sp, #0xc]
	mov r0, sl
	adds r0, #1
	str r0, [sp, #0x10]
	mov sb, r3
	ldr r3, _0804AA9C @ =0x040000D4
	ldr r1, _0804AA98 @ =gBgDataPtrs
	ldr r5, [r1, #4]
	lsls r2, r2, #1
	adds r2, #1
_0804AA64:
	adds r1, r4, #0
	adds r1, #0xc
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r5, r0
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r6, _0804AAA8 @ =0x03000902
	adds r0, r0, r6
	str r0, [r3, #4]
	ldr r0, _0804AAA4 @ =0x80000006
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804AA64
	b _0804ADC2
	.align 2, 0
_0804AA98: .4byte gBgDataPtrs
_0804AA9C: .4byte 0x040000D4
_0804AAA0: .4byte 0x03000B04
_0804AAA4: .4byte 0x80000006
_0804AAA8: .4byte 0x03000902
_0804AAAC:
	movs r2, #1
	strb r2, [r1]
	ldr r3, _0804AB38 @ =gBgDataPtrs
	ldr r0, [r3, #4]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r6, _0804AB3C @ =0x040000D4
	str r0, [r6]
	mov r0, r8
	lsls r3, r0, #2
	adds r2, r3, r0
	lsls r0, r2, #2
	ldr r1, _0804AB40 @ =0x03000B04
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r4, _0804AB44 @ =0x80000006
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldr r6, _0804AB48 @ =gUnk_030047FC
	ldr r0, [r6]
	adds r0, #0x1a
	add r0, sl
	movs r4, #1
	strb r4, [r0]
	movs r4, #0
	mov r6, r8
	adds r6, #1
	str r6, [sp, #0xc]
	mov r0, sl
	adds r0, #1
	str r0, [sp, #0x10]
	mov sb, r3
	ldr r3, _0804AB3C @ =0x040000D4
	ldr r1, _0804AB48 @ =gUnk_030047FC
	ldr r0, [r1]
	adds r0, #0x1a
	mov r6, sl
	adds r7, r0, r6
	ldr r0, _0804AB38 @ =gBgDataPtrs
	ldr r5, [r0, #4]
	lsls r2, r2, #1
	adds r2, #1
_0804AB02:
	adds r1, r4, #0
	adds r1, #0xe
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r7]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r6, _0804AB4C @ =0x0300090A
	adds r0, r0, r6
	str r0, [r3, #4]
	ldr r0, _0804AB50 @ =0x80000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804AB02
	b _0804ADC2
	.align 2, 0
_0804AB38: .4byte gBgDataPtrs
_0804AB3C: .4byte 0x040000D4
_0804AB40: .4byte 0x03000B04
_0804AB44: .4byte 0x80000006
_0804AB48: .4byte gUnk_030047FC
_0804AB4C: .4byte 0x0300090A
_0804AB50: .4byte 0x80000002
_0804AB54:
	ldr r0, _0804AC14 @ =gUnk_030047FC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x1d
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #2
	bne _0804AC28
	adds r0, r1, #0
	adds r0, #0x20
	add r0, sl
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #1
	str r1, [sp, #0xc]
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x10]
	mov r3, r8
	lsls r3, r3, #2
	mov sb, r3
	cmp r0, #0
	bne _0804ABC2
	movs r4, #0
	ldr r2, _0804AC18 @ =0x040000D4
	ldr r6, _0804AC1C @ =gBgDataPtrs
	ldr r5, [r6, #4]
	mov r0, sb
	add r0, r8
	lsls r0, r0, #1
	adds r3, r0, #1
_0804AB92:
	adds r1, r4, #0
	adds r1, #0xe
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r5, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r1, _0804AC20 @ =0x03000902
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r6, _0804AC24 @ =0x80000006
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804AB92
_0804ABC2:
	ldr r1, _0804AC14 @ =gUnk_030047FC
	ldr r0, [r1]
	adds r0, #0x20
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804ABD2
	b _0804ADC2
_0804ABD2:
	movs r4, #0
	ldr r2, _0804AC18 @ =0x040000D4
	ldr r3, _0804AC1C @ =gBgDataPtrs
	ldr r5, [r3, #4]
	mov r0, sb
	add r0, r8
	lsls r0, r0, #1
	adds r3, r0, #1
_0804ABE2:
	adds r1, r4, #0
	adds r1, #0x10
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x30
	adds r0, r5, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r6, _0804AC20 @ =0x03000902
	adds r0, r0, r6
	str r0, [r2, #4]
	ldr r0, _0804AC24 @ =0x80000006
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804ABE2
	b _0804ADC2
	.align 2, 0
_0804AC14: .4byte gUnk_030047FC
_0804AC18: .4byte 0x040000D4
_0804AC1C: .4byte gBgDataPtrs
_0804AC20: .4byte 0x03000902
_0804AC24: .4byte 0x80000006
_0804AC28:
	ldr r1, _0804ACA8 @ =gBgDataPtrs
	ldr r0, [r1, #4]
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r3, _0804ACAC @ =0x040000D4
	str r0, [r3]
	mov r4, r8
	lsls r1, r4, #2
	adds r3, r1, r4
	lsls r0, r3, #2
	ldr r6, _0804ACB0 @ =0x03000B04
	adds r0, r0, r6
	ldr r2, _0804ACAC @ =0x040000D4
	str r0, [r2, #4]
	ldr r4, _0804ACB4 @ =0x80000006
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _0804ACB8 @ =gUnk_030047FC
	ldr r0, [r2]
	adds r0, #0x17
	add r0, sl
	ldrb r2, [r0]
	mov sb, r1
	cmp r2, #6
	bne _0804ACC4
	movs r4, #0
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0xc]
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, _0804ACAC @ =0x040000D4
	ldr r6, _0804ACA8 @ =gBgDataPtrs
	ldr r5, [r6, #4]
	lsls r0, r3, #1
	adds r3, r0, #1
	ldr r7, _0804ACBC @ =0x80000004
_0804AC76:
	adds r1, r4, #0
	adds r1, #0x10
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x18
	adds r0, r5, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r1, _0804ACC0 @ =0x03000902
	adds r0, r0, r1
	str r0, [r2, #4]
	str r7, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804AC76
	b _0804AD62
	.align 2, 0
_0804ACA8: .4byte gBgDataPtrs
_0804ACAC: .4byte 0x040000D4
_0804ACB0: .4byte 0x03000B04
_0804ACB4: .4byte 0x80000006
_0804ACB8: .4byte gUnk_030047FC
_0804ACBC: .4byte 0x80000004
_0804ACC0: .4byte 0x03000902
_0804ACC4:
	cmp r2, #5
	bls _0804ACCC
	movs r2, #1
	strb r2, [r0]
_0804ACCC:
	movs r4, #0
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0xc]
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, _0804AED0 @ =0xFFFFFE02
	adds r2, r2, r6
	mov ip, r2
	ldr r2, _0804AED4 @ =0x040000D4
	ldr r0, _0804AED8 @ =gUnk_030047FC
	ldr r0, [r0]
	adds r0, #0x17
	mov r6, sl
	adds r7, r0, r6
	ldr r0, _0804AEDC @ =gBgDataPtrs
	ldr r5, [r0, #4]
	lsls r0, r3, #1
	adds r3, r0, #1
_0804ACF4:
	adds r1, r4, #0
	adds r1, #0xe
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r7]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r6, _0804AEE0 @ =0x03000902
	adds r0, r0, r6
	str r0, [r2, #4]
	ldr r1, _0804AEE4 @ =0x80000002
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804ACF4
	movs r4, #0
	ldr r2, _0804AED4 @ =0x040000D4
	ldr r0, _0804AEDC @ =gBgDataPtrs
	ldr r5, [r0, #4]
	mov r0, sb
	add r0, r8
	lsls r0, r0, #1
	adds r3, r0, #1
	adds r7, r1, #0
_0804AD38:
	adds r1, r4, #0
	adds r1, #0xe
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, ip
	str r0, [r2, #4]
	str r7, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804AD38
_0804AD62:
	ldr r1, _0804AED8 @ =gUnk_030047FC
	ldr r0, [r1]
	adds r0, #0x1a
	mov r2, sl
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #7
	bls _0804AD76
	movs r3, #1
	strb r3, [r1]
_0804AD76:
	movs r4, #0
	ldr r2, _0804AED4 @ =0x040000D4
	ldr r0, _0804AED8 @ =gUnk_030047FC
	ldr r0, [r0]
	adds r0, #0x1a
	mov r6, sl
	adds r7, r0, r6
	ldr r0, _0804AEDC @ =gBgDataPtrs
	ldr r5, [r0, #4]
	mov r0, sb
	add r0, r8
	lsls r0, r0, #1
	adds r3, r0, #1
_0804AD90:
	adds r1, r4, #0
	adds r1, #0xe
	lsls r0, r1, #4
	subs r0, r0, r1
	ldrb r1, [r7]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r6, _0804AEE8 @ =0x0300090A
	adds r0, r0, r6
	str r0, [r2, #4]
	ldr r0, _0804AEE4 @ =0x80000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0804AD90
_0804ADC2:
	ldr r1, _0804AED8 @ =gUnk_030047FC
	ldr r0, [r1]
	adds r0, #0x23
	mov r2, sl
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0804AE18
	adds r5, r0, #0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #0xa
	lsls r4, r0, #4
	subs r4, r4, r0
	lsls r4, r4, #1
	subs r5, #1
	adds r0, r5, #0
	movs r1, #3
	bl __divsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	adds r4, #0xc
	ldr r3, _0804AEDC @ =gBgDataPtrs
	ldr r0, [r3, #4]
	adds r0, r0, r4
	ldr r4, _0804AED4 @ =0x040000D4
	str r0, [r4]
	mov r0, sb
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _0804AEEC @ =0x03000BC4
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r6, _0804AEF0 @ =0x80000006
	str r6, [r4, #8]
	ldr r0, [r4, #8]
_0804AE18:
	ldr r0, _0804AEDC @ =gBgDataPtrs
	ldr r2, [r0, #4]
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r3, _0804AED4 @ =0x040000D4
	str r0, [r3]
	mov r1, sb
	add r1, r8
	lsls r0, r1, #2
	ldr r4, _0804AEF4 @ =0x03000C04
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r6, _0804AEF0 @ =0x80000006
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0804AEF8 @ =0xFFFFFCFC
	adds r6, r4, r0
	lsls r7, r1, #1
	movs r3, #0xd2
	lsls r3, r3, #1
	adds r1, r7, r3
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r4, #0xc8
	lsls r4, r4, #2
	adds r0, r2, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0804AEFC @ =0x000001A5
	adds r4, r7, r0
	lsls r4, r4, #1
	adds r4, r4, r6
	ldr r1, _0804AED8 @ =gUnk_030047FC
	ldr r5, [r1]
	adds r5, #0x14
	add r5, sl
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	ldr r2, _0804AEDC @ =gBgDataPtrs
	ldr r1, [r2, #4]
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	movs r2, #0xc3
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4]
	movs r3, #0xd3
	lsls r3, r3, #1
	adds r4, r7, r3
	lsls r4, r4, #1
	adds r4, r4, r6
	ldrb r0, [r5]
	movs r1, #0xa
	str r2, [sp, #0x14]
	bl __umodsi3
	lsls r0, r0, #0x18
	ldr r6, _0804AEDC @ =gBgDataPtrs
	ldr r1, [r6, #4]
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4]
_0804AEA4:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r3, [sp, #8]
	cmp r8, r3
	bhi _0804AEBE
	bl _0804A56A
_0804AEBE:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AED0: .4byte 0xFFFFFE02
_0804AED4: .4byte 0x040000D4
_0804AED8: .4byte gUnk_030047FC
_0804AEDC: .4byte gBgDataPtrs
_0804AEE0: .4byte 0x03000902
_0804AEE4: .4byte 0x80000002
_0804AEE8: .4byte 0x0300090A
_0804AEEC: .4byte 0x03000BC4
_0804AEF0: .4byte 0x80000006
_0804AEF4: .4byte 0x03000C04
_0804AEF8: .4byte 0xFFFFFCFC
_0804AEFC: .4byte 0x000001A5

	thumb_func_start sub_0804AF00
sub_0804AF00: @ 0x0804AF00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _0804AF30 @ =gUnk_03004C20
	ldr r0, [r0]
	cmp r0, #0
	bne _0804AF64
	bl sub_08049BFC
	movs r0, #0
	bl sub_0804A070
	ldr r0, _0804AF34 @ =gUnk_03003410
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0804AF3C
	ldr r2, _0804AF38 @ =gUnk_03004658
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #0xc]
	adds r1, r2, #0
	b _0804AF48
	.align 2, 0
_0804AF30: .4byte gUnk_03004C20
_0804AF34: .4byte gUnk_03003410
_0804AF38: .4byte gUnk_03004658
_0804AF3C:
	ldr r1, _0804B024 @ =gUnk_03004658
	ldr r2, [r1]
	ldr r0, _0804B028 @ =gUnk_030047FC
	ldr r0, [r0]
	ldrb r0, [r0, #0x12]
	strb r0, [r2, #0xc]
_0804AF48:
	ldr r0, [r1]
	movs r4, #0
	strb r4, [r0, #0xf]
	movs r0, #7
	movs r1, #0
	bl sub_08025B78
	ldr r0, _0804B02C @ =gEntityInfo
	ldr r1, _0804B030 @ =0x0000017B
	adds r0, r0, r1
	strb r4, [r0]
	movs r0, #2
	bl m4aSongNumStart
_0804AF64:
	bl sub_08025BA4
	ldr r6, _0804B024 @ =gUnk_03004658
	ldr r0, [r6]
	ldrb r0, [r0, #0xf]
	bl sub_08049EFC
	ldr r0, _0804B034 @ =gUnk_030034E4
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804AF7C
	b _0804B246
_0804AF7C:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _0804B038 @ =0x00007741
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x48
	ldr r3, _0804B03C @ =0x00003F1F
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0804B040 @ =0x00001F1F
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #8
	movs r3, #0x8f
	lsls r3, r3, #4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0804B044 @ =0x04000046
	ldr r2, _0804B048 @ =0x00003078
	adds r1, r2, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r1, _0804B04C @ =gBlendValue
	movs r0, #6
	strb r0, [r1]
	ldr r1, _0804B050 @ =0x04000050
	ldr r3, _0804B054 @ =0x00000241
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0804B058 @ =gNewKeys
	ldrh r1, [r0]
	movs r7, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804AFD0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804B0AA
_0804AFD0:
	ldr r1, [r6]
	movs r0, #0xf
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0804B074
	movs r0, #0x52
	bl m4aSongNumStart
	ldr r2, _0804B05C @ =gUnk_03003410
	ldrb r0, [r2, #6]
	cmp r0, #1
	bne _0804AFFA
	ldr r0, _0804B028 @ =gUnk_030047FC
	ldr r0, [r0]
	ldr r1, [r6]
	adds r0, #0x26
	ldrb r1, [r1, #0xc]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B0AA
_0804AFFA:
	ldr r1, [r6]
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
	ldr r1, [r6]
	ldrb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0804B060
	ldr r0, _0804B028 @ =gUnk_030047FC
	ldr r0, [r0]
	ldr r1, [r6]
	adds r0, #0x26
	ldrb r6, [r1, #0xc]
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B060
	strb r7, [r1, #0xc]
	b _0804B068
	.align 2, 0
_0804B024: .4byte gUnk_03004658
_0804B028: .4byte gUnk_030047FC
_0804B02C: .4byte gEntityInfo
_0804B030: .4byte 0x0000017B
_0804B034: .4byte gUnk_030034E4
_0804B038: .4byte 0x00007741
_0804B03C: .4byte 0x00003F1F
_0804B040: .4byte 0x00001F1F
_0804B044: .4byte 0x04000046
_0804B048: .4byte 0x00003078
_0804B04C: .4byte gBlendValue
_0804B050: .4byte 0x04000050
_0804B054: .4byte 0x00000241
_0804B058: .4byte gNewKeys
_0804B05C: .4byte gUnk_03003410
_0804B060:
	ldr r0, _0804B070 @ =gUnk_03004658
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0xc]
_0804B068:
	movs r0, #0x12
	bl sub_0804A070
	b _0804B0AA
	.align 2, 0
_0804B070: .4byte gUnk_03004658
_0804B074:
	ldr r0, _0804B090 @ =gUnk_03002900
	ldrb r4, [r0]
	adds r5, r0, #0
	cmp r4, #0
	bne _0804B0B6
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0804B094
	movs r0, #0x52
	bl m4aSongNumStart
	strb r7, [r5]
	b _0804B0AA
	.align 2, 0
_0804B090: .4byte gUnk_03002900
_0804B094:
	movs r0, #0x54
	bl m4aSongNumStart
	ldr r0, [r6]
	strb r4, [r0, #0xf]
	ldr r1, [r6]
	ldrb r0, [r1, #0xd]
	strb r0, [r1, #0xc]
	movs r0, #0
	bl sub_0804A070
_0804B0AA:
	ldr r0, _0804B17C @ =gUnk_03002900
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _0804B0B6
	b _0804B1C2
_0804B0B6:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	beq _0804B0C6
	b _0804B1C2
_0804B0C6:
	ldr r0, _0804B180 @ =gUnk_03004C20
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, r8
	str r0, [r1]
	ldr r4, _0804B184 @ =gUnk_030047FC
	ldr r3, [r4]
	ldr r0, _0804B188 @ =gUnk_03004658
	ldr r2, [r0]
	ldrb r0, [r2, #0xd]
	adds r1, r3, #0
	adds r1, #0x17
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, #1
	movs r5, #0
	mov r6, r8
	strb r0, [r6, #0xd]
	ldrb r0, [r2, #0xd]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r6, #0xc]
	ldrb r0, [r2, #0xd]
	strb r0, [r3, #0x10]
	ldr r1, [r4]
	ldrb r0, [r1, #0x10]
	lsls r0, r0, #4
	strb r0, [r1, #0x11]
	ldr r0, _0804B18C @ =gBlendValue
	strb r5, [r0]
	bl sub_080008DC
	ldr r0, _0804B190 @ =gUnk_03003410
	mov ip, r0
	ldrb r7, [r0, #6]
	cmp r7, #0
	bne _0804B1BC
	str r7, [sp]
	ldr r2, _0804B194 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r5, _0804B198 @ =gUnk_03005284
	ldr r1, [r5]
	str r1, [r2, #4]
	ldr r0, _0804B19C @ =0x85000009
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r7, [sp]
	mov r3, sp
	str r3, [r2]
	ldr r6, _0804B1A0 @ =gUnk_03004670
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _0804B1A4 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r4, #1
	mov r0, r8
	strb r4, [r0, #0xd]
	strb r4, [r1, #1]
	ldr r3, [r5]
	ldr r0, _0804B1A8 @ =gUnk_03005220
	adds r0, #0x4c
	movs r1, #3
	strb r1, [r0]
	strb r1, [r3]
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #0x1c]
	ldr r0, [r5]
	strb r4, [r0, #0x1d]
	add r1, sp, #4
	ldr r3, _0804B1AC @ =0x00007F7F
	adds r0, r3, #0
	strh r0, [r1]
	str r1, [r2]
	ldr r0, [r6]
	adds r0, #8
	str r0, [r2, #4]
	ldr r0, _0804B1B0 @ =0x81000018
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r5]
	strb r7, [r0, #4]
	mov r6, ip
	strb r4, [r6, #0xc]
	ldr r1, _0804B1B4 @ =gCallbackQueue
	ldr r0, _0804B1B8 @ =sub_0802528C
	b _0804B1C0
	.align 2, 0
_0804B17C: .4byte gUnk_03002900
_0804B180: .4byte gUnk_03004C20
_0804B184: .4byte gUnk_030047FC
_0804B188: .4byte gUnk_03004658
_0804B18C: .4byte gBlendValue
_0804B190: .4byte gUnk_03003410
_0804B194: .4byte 0x040000D4
_0804B198: .4byte gUnk_03005284
_0804B19C: .4byte 0x85000009
_0804B1A0: .4byte gUnk_03004670
_0804B1A4: .4byte 0x85000010
_0804B1A8: .4byte gUnk_03005220
_0804B1AC: .4byte 0x00007F7F
_0804B1B0: .4byte 0x81000018
_0804B1B4: .4byte gCallbackQueue
_0804B1B8: .4byte sub_0802528C
_0804B1BC:
	ldr r1, _0804B204 @ =gCallbackQueue
	ldr r0, _0804B208 @ =sub_0802534C
_0804B1C0:
	str r0, [r1, #4]
_0804B1C2:
	ldr r0, _0804B20C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804B246
	ldr r1, _0804B210 @ =gUnk_03004658
	ldr r2, [r1]
	movs r3, #0xf
	ldrsb r3, [r2, r3]
	cmp r3, #0
	bne _0804B230
	ldr r1, _0804B214 @ =gBlendValue
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0804B218 @ =gUnk_03004D9C
	strb r3, [r0]
	ldr r1, _0804B21C @ =gUnk_03004C20
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r1, _0804B220 @ =gIntrTable
	ldr r0, _0804B224 @ =sub_080009D8
	str r0, [r1]
	ldr r1, _0804B204 @ =gCallbackQueue
	ldr r0, _0804B228 @ =sub_08049724
	str r0, [r1, #4]
	ldr r0, _0804B22C @ =sub_0800D0C4
	str r0, [r1, #8]
	bl sub_080008DC
	b _0804B246
	.align 2, 0
_0804B204: .4byte gCallbackQueue
_0804B208: .4byte sub_0802534C
_0804B20C: .4byte gNewKeys
_0804B210: .4byte gUnk_03004658
_0804B214: .4byte gBlendValue
_0804B218: .4byte gUnk_03004D9C
_0804B21C: .4byte gUnk_03004C20
_0804B220: .4byte gIntrTable
_0804B224: .4byte sub_080009D8
_0804B228: .4byte sub_08049724
_0804B22C: .4byte sub_0800D0C4
_0804B230:
	movs r0, #0
	strb r0, [r2, #0xf]
	ldr r1, [r1]
	ldrb r0, [r1, #0xd]
	strb r0, [r1, #0xc]
	movs r0, #0
	bl sub_0804A070
	movs r0, #0x54
	bl m4aSongNumStart
_0804B246:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
