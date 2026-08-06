	.include "asm/macros.inc"

	nonmatching sub_0804A070

    .text

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
	ldr r1, _0804A18C @ =gSaveData
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
_0804A18C: .4byte gSaveData
_0804A190: .4byte gBgTilemapBufs+0x800
_0804A194:
	ldr r0, _0804A20C @ =gSaveData
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
_0804A20C: .4byte gSaveData
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
	ldr r0, _0804A41C @ =gSaveData
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
_0804A41C: .4byte gSaveData
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
	ldr r0, _0804A5C8 @ =gSaveData
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
_0804A5C8: .4byte gSaveData
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
	ldr r2, _0804A6A4 @ =gSaveData
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
	ldr r6, _0804A6A4 @ =gSaveData
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
_0804A6A4: .4byte gSaveData
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
	ldr r1, _0804A780 @ =gSaveData
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
_0804A780: .4byte gSaveData
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
	ldr r3, _0804A8F8 @ =gSaveData
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
	ldr r1, _0804A8F8 @ =gSaveData
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
_0804A8F8: .4byte gSaveData
_0804A8FC: .4byte gBgDataPtrs
_0804A900: .4byte 0x040000D4
_0804A904: .4byte 0x03000B04
_0804A908: .4byte 0x80000006
_0804A90C: .4byte 0x03000902
_0804A910: .4byte 0x0300090A
_0804A914: .4byte 0x80000002
_0804A918:
	ldr r0, _0804AA04 @ =gSaveData
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
	ldr r1, _0804AA04 @ =gSaveData
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
_0804AA04: .4byte gSaveData
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
	ldr r6, _0804AB48 @ =gSaveData
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
	ldr r1, _0804AB48 @ =gSaveData
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
_0804AB48: .4byte gSaveData
_0804AB4C: .4byte 0x0300090A
_0804AB50: .4byte 0x80000002
_0804AB54:
	ldr r0, _0804AC14 @ =gSaveData
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
	ldr r1, _0804AC14 @ =gSaveData
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
_0804AC14: .4byte gSaveData
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
	ldr r2, _0804ACB8 @ =gSaveData
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
_0804ACB8: .4byte gSaveData
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
	ldr r0, _0804AED8 @ =gSaveData
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
	ldr r1, _0804AED8 @ =gSaveData
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
	ldr r0, _0804AED8 @ =gSaveData
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
	ldr r1, _0804AED8 @ =gSaveData
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
	ldr r1, _0804AED8 @ =gSaveData
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
_0804AED8: .4byte gSaveData
_0804AEDC: .4byte gBgDataPtrs
_0804AEE0: .4byte 0x03000902
_0804AEE4: .4byte 0x80000002
_0804AEE8: .4byte 0x0300090A
_0804AEEC: .4byte 0x03000BC4
_0804AEF0: .4byte 0x80000006
_0804AEF4: .4byte 0x03000C04
_0804AEF8: .4byte 0xFFFFFCFC
_0804AEFC: .4byte 0x000001A5
