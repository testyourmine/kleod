	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08001158
sub_08001158: @ 0x08001158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r2, _08001288 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0800128C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08001290 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08001294 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	ldr r0, _08001298 @ =gUnk_03004660
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r2, _0800129C @ =gUnk_03004C20
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080011C0
	movs r3, #1
	str r3, [sp]
	movs r4, #0
	ldr r0, _080012A0 @ =gUnk_03004670
	ldr r1, [r0]
	ldrb r0, [r2, #0xd]
	subs r0, #1
	lsls r0, r0, #3
	adds r1, #8
	adds r2, r0, r1
	movs r3, #0x80
_080011AA:
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080011B8
	movs r5, #0
	str r5, [sp]
_080011B8:
	adds r2, #1
	adds r4, #1
	cmp r4, #7
	bls _080011AA
_080011C0:
	ldr r0, _080012A4 @ =gUnk_03003410
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _080011CA
	b _080014A4
_080011CA:
	ldr r3, _0800129C @ =gUnk_03004C20
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #8
	beq _080011DA
	cmp r2, #0
	bne _080011FA
_080011DA:
	ldr r4, _080012A8 @ =gUnk_03005290
	ldr r2, _080012AC @ =0x0818B7AC
	lsrs r1, r0, #0x1b
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, #1
	ldrb r3, [r3, #0xd]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl DecompressAlloc
	adds r0, #4
	str r0, [r4]
_080011FA:
	ldr r2, _080012B0 @ =0x08189034
	ldr r5, _0800129C @ =gUnk_03004C20
	ldrb r1, [r5, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrb r1, [r5, #0xd]
	subs r1, #1
	movs r4, #0x6c
	muls r1, r4, r1
	adds r0, r0, r1
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r7, _080012B4 @ =0x7FFFFFFF
	ands r0, r7
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r6, _080012B8 @ =gUnk_03004790
	str r0, [r6, #0x10]
	ldr r2, _080012BC @ =0x081892BC
	ldrb r0, [r5, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldrb r0, [r5, #0xd]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	adds r2, #8
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r0, [r0]
	ands r0, r7
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r6, #0x14]
	ldr r0, [sp]
	cmp r0, #1
	bne _080012C8
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080012C8
	ldr r1, _080012C0 @ =0x0818955C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	ands r0, r7
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r6, #8]
	ldr r1, _080012C4 @ =0x08189574
	ldrb r0, [r5, #0xd]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	ands r0, r7
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r6, #0xc]
	b _08001322
	.align 2, 0
_08001288: .4byte 0x04000200
_0800128C: .4byte 0x0000FFFE
_08001290: .4byte 0x04000004
_08001294: .4byte 0x0000FFF7
_08001298: .4byte gUnk_03004660
_0800129C: .4byte gUnk_03004C20
_080012A0: .4byte gUnk_03004670
_080012A4: .4byte gUnk_03003410
_080012A8: .4byte gUnk_03005290
_080012AC: .4byte 0x0818B7AC
_080012B0: .4byte 0x08189034
_080012B4: .4byte 0x7FFFFFFF
_080012B8: .4byte gUnk_03004790
_080012BC: .4byte 0x081892BC
_080012C0: .4byte 0x0818955C
_080012C4: .4byte 0x08189574
_080012C8:
	ldr r2, _080013E0 @ =0x08189034
	ldr r4, _080013E4 @ =gUnk_03004C20
	ldrb r1, [r4, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #0xd]
	subs r1, #1
	movs r3, #0x6c
	mov r8, r3
	mov r5, r8
	muls r5, r1, r5
	adds r1, r5, #0
	adds r0, r0, r1
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r7, _080013E8 @ =0x7FFFFFFF
	ands r0, r7
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r5, _080013EC @ =gUnk_03004790
	str r0, [r5, #8]
	ldr r2, _080013F0 @ =0x081892BC
	ldrb r0, [r4, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldrb r0, [r4, #0xd]
	subs r0, #1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r0, [r0]
	ands r0, r7
	movs r1, #0
	bl thunk_HeapAlloc
	str r0, [r5, #0xc]
_08001322:
	ldr r5, _080013E0 @ =0x08189034
	mov r8, r5
	ldr r7, _080013E4 @ =gUnk_03004C20
	ldrb r1, [r7, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrb r1, [r7, #0xd]
	subs r1, #1
	movs r4, #0x6c
	muls r1, r4, r1
	adds r0, r0, r1
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r5, _080013E8 @ =0x7FFFFFFF
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	ldr r1, _080013EC @ =gUnk_03004790
	mov sb, r1
	str r0, [r1]
	ldr r2, _080013F0 @ =0x081892BC
	mov sl, r2
	ldrb r0, [r7, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldrb r0, [r7, #0xd]
	subs r0, #1
	muls r0, r4, r0
	adds r1, r1, r0
	add r1, sl
	ldr r0, [r1]
	ldr r0, [r0]
	ands r0, r5
	movs r1, #0
	bl thunk_HeapAlloc
	mov r3, sb
	str r0, [r3, #4]
	ldr r0, [r3]
	ldrb r1, [r7, #0xc]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldrb r1, [r7, #0xd]
	subs r1, #1
	muls r1, r4, r1
	adds r2, r2, r1
	add r2, r8
	ldr r1, [r2]
	bl Decompress
	mov r5, sb
	ldr r0, [r5, #4]
	ldrb r1, [r7, #0xc]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldrb r1, [r7, #0xd]
	subs r1, #1
	muls r1, r4, r1
	adds r2, r2, r1
	add r2, sl
	ldr r1, [r2]
	bl Decompress
	ldr r0, [sp]
	cmp r0, #1
	bne _080013FC
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080013FC
	ldr r0, [r5, #8]
	ldr r2, _080013F4 @ =0x0818955C
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl Decompress
	ldr r0, [r5, #0xc]
	ldr r2, _080013F8 @ =0x08189574
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl Decompress
	b _0800143E
	.align 2, 0
_080013E0: .4byte 0x08189034
_080013E4: .4byte gUnk_03004C20
_080013E8: .4byte 0x7FFFFFFF
_080013EC: .4byte gUnk_03004790
_080013F0: .4byte 0x081892BC
_080013F4: .4byte 0x0818955C
_080013F8: .4byte 0x08189574
_080013FC:
	ldr r7, _080014CC @ =gUnk_03004790
	ldr r0, [r7, #8]
	ldr r3, _080014D0 @ =0x08189034
	ldr r4, _080014D4 @ =gUnk_03004C20
	ldrb r2, [r4, #0xc]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldrb r2, [r4, #0xd]
	subs r2, #1
	movs r5, #0x6c
	muls r2, r5, r2
	adds r1, r1, r2
	adds r3, #4
	adds r1, r1, r3
	ldr r1, [r1]
	bl Decompress
	ldr r0, [r7, #0xc]
	ldr r3, _080014D8 @ =0x081892BC
	ldrb r1, [r4, #0xc]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldrb r1, [r4, #0xd]
	subs r1, #1
	muls r1, r5, r1
	adds r2, r2, r1
	adds r3, #4
	adds r2, r2, r3
	ldr r1, [r2]
	bl Decompress
_0800143E:
	ldr r4, _080014CC @ =gUnk_03004790
	ldr r0, [r4, #0x10]
	ldr r3, _080014D0 @ =0x08189034
	ldr r5, _080014D4 @ =gUnk_03004C20
	ldrb r2, [r5, #0xc]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldrb r2, [r5, #0xd]
	subs r2, #1
	movs r7, #0x6c
	muls r2, r7, r2
	adds r1, r1, r2
	adds r3, #8
	adds r1, r1, r3
	ldr r1, [r1]
	bl Decompress
	ldr r0, [r4, #0x14]
	ldr r3, _080014D8 @ =0x081892BC
	ldrb r1, [r5, #0xc]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldrb r1, [r5, #0xd]
	subs r1, #1
	muls r1, r7, r1
	adds r2, r2, r1
	adds r3, #8
	adds r2, r2, r3
	ldr r1, [r2]
	bl Decompress
	ldr r0, [r4]
	adds r0, #4
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r0, #4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	adds r0, #4
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	adds r0, #4
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	adds r0, #4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	adds r0, #4
	str r0, [r4, #0x14]
_080014A4:
	ldr r2, _080014D4 @ =gUnk_03004C20
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080014E0
	ldr r1, [sp]
	cmp r1, #1
	bne _080014E0
	ldr r1, _080014DC @ =0x08189544
	ldrb r0, [r2, #0xd]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl DecompressDma
	b _08001502
	.align 2, 0
_080014CC: .4byte gUnk_03004790
_080014D0: .4byte 0x08189034
_080014D4: .4byte gUnk_03004C20
_080014D8: .4byte 0x081892BC
_080014DC: .4byte 0x08189544
_080014E0:
	ldr r3, _080015E4 @ =0x08188F5C
	ldr r2, _080015E8 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r2, [r2, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl DecompressDma
_08001502:
	ldr r2, _080015EC @ =gUnk_03003430
	mov ip, r2
	movs r4, #0
	strh r4, [r2, #8]
	strh r4, [r2, #0xa]
	strh r4, [r2, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r2]
	ldr r0, _080015F0 @ =0x0600E000
	str r0, [r2, #4]
	ldr r3, _080015F4 @ =gUnk_08051C76
	mov sb, r3
	ldr r3, _080015E8 @ =gUnk_03004C20
	ldrb r1, [r3, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r3, #0xd]
	subs r1, #1
	movs r2, #0x36
	muls r1, r2, r1
	adds r0, r0, r1
	add r0, sb
	ldrh r0, [r0]
	mov r5, ip
	strh r0, [r5, #0x10]
	ldr r0, _080015F8 @ =gUnk_08051DBA
	mov r8, r0
	ldrb r0, [r3, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	strh r0, [r5, #0x12]
	ldr r1, _080015FC @ =gUnk_08051EFE
	mov sl, r1
	ldrb r0, [r3, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r0, [r3, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, sl
	ldrh r0, [r1]
	strh r0, [r5, #0x16]
	ldr r5, _08001600 @ =gUnk_08052042
	ldrb r0, [r3, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrb r2, [r3, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	adds r1, r1, r0
	adds r1, r1, r5
	ldrb r0, [r1]
	mov r2, ip
	strb r0, [r2, #0x18]
	strh r4, [r2, #0x24]
	strh r4, [r2, #0x26]
	strh r4, [r2, #0x30]
	ldr r0, _08001604 @ =0x06004000
	str r0, [r2, #0x1c]
	ldr r0, _08001608 @ =0x0600E800
	str r0, [r2, #0x20]
	ldrb r0, [r3, #0xc]
	adds r6, r3, #0
	mov r7, ip
	mov r4, sb
	mov sb, sl
	cmp r0, #0
	bne _0800161C
	ldr r3, [sp]
	cmp r3, #1
	bne _0800161C
	ldr r1, _0800160C @ =gUnk_0805265A
	ldrb r0, [r6, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x2c]
	ldr r1, _08001610 @ =gUnk_08052666
	ldrb r0, [r6, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x2e]
	ldr r1, _08001614 @ =gUnk_08052672
	ldrb r0, [r6, #0xd]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x32]
	ldr r1, _08001618 @ =gUnk_0805267E
	ldrb r0, [r6, #0xd]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08001684
	.align 2, 0
_080015E4: .4byte 0x08188F5C
_080015E8: .4byte gUnk_03004C20
_080015EC: .4byte gUnk_03003430
_080015F0: .4byte 0x0600E000
_080015F4: .4byte gUnk_08051C76
_080015F8: .4byte gUnk_08051DBA
_080015FC: .4byte gUnk_08051EFE
_08001600: .4byte gUnk_08052042
_08001604: .4byte 0x06004000
_08001608: .4byte 0x0600E800
_0800160C: .4byte gUnk_0805265A
_08001610: .4byte gUnk_08052666
_08001614: .4byte gUnk_08052672
_08001618: .4byte gUnk_0805267E
_0800161C:
	ldrb r1, [r6, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r6, #0xd]
	subs r1, #1
	movs r2, #0x36
	muls r1, r2, r1
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x2c]
	ldrb r0, [r6, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r0, [r6, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0x2e]
	ldrb r0, [r6, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r0, [r6, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	mov r0, sb
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0x32]
	ldrb r0, [r6, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r0, r5, #1
	adds r2, r2, r0
	ldrb r1, [r2]
_08001684:
	adds r0, r7, #0
	adds r0, #0x34
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x4c
	movs r3, #0
	strh r3, [r0]
	ldr r0, _0800183C @ =0x06008000
	str r0, [r7, #0x38]
	ldr r0, _08001840 @ =0x0600F000
	str r0, [r7, #0x3c]
	ldrb r1, [r6, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r6, #0xd]
	subs r1, #1
	movs r2, #0x36
	muls r1, r2, r1
	adds r0, r0, r1
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	strh r1, [r0]
	ldrb r0, [r6, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r0, [r6, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x4a
	strh r0, [r1]
	ldrb r0, [r6, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r0, [r6, #0xd]
	subs r0, #1
	muls r0, r2, r0
	adds r1, r1, r0
	mov r0, sb
	adds r0, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	ldrb r0, [r6, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r0, r5, #2
	adds r2, r2, r0
	ldrb r1, [r2]
	adds r0, r7, #0
	adds r0, #0x50
	strb r1, [r0]
	ldr r1, _08001844 @ =gUnk_030052A0
	movs r0, #0xfe
	strb r0, [r1]
	ldrb r0, [r6, #0xc]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08001728
	b _08001898
_08001728:
	ldrb r0, [r6, #0xe]
	cmp r0, #0xff
	beq _08001730
	b _08001858
_08001730:
	movs r0, #1
	strb r0, [r6, #0xe]
	ldr r5, _08001848 @ =gUnk_03005468
	mov r8, r5
	ldr r7, _0800184C @ =0x080D2E88
	adds r5, r6, #0
	movs r6, #3
_0800173E:
	ldrb r2, [r5, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	ldrb r1, [r5, #0xc]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r7
	ldrh r0, [r2]
	mov r1, r8
	strh r0, [r1]
	ldrb r2, [r5, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	ldrb r1, [r5, #0xc]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r7
	ldrh r0, [r2, #2]
	mov r2, r8
	strh r0, [r2, #2]
	ldrb r2, [r5, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	ldrb r1, [r5, #0xc]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r7
	ldrh r0, [r2, #4]
	mov r3, r8
	strh r0, [r3, #4]
	ldrb r2, [r5, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	ldrb r1, [r5, #0xc]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r7
	ldrh r0, [r2, #6]
	strh r0, [r3, #6]
	ldrh r4, [r5, #8]
	ldrb r1, [r5, #0xe]
	subs r1, #1
	lsls r1, r1, #1
	asrs r4, r1
	ands r4, r6
	ldr r0, _08001850 @ =gUnk_03005284
	ldr r0, [r0]
	ldrh r3, [r0, #0x16]
	asrs r3, r1
	ands r3, r6
	cmp r4, r3
	beq _08001826
	adds r0, r3, #4
	subs r0, r0, r4
	ands r0, r6
	bl sub_0804517C
	ldrb r2, [r5, #0xe]
	subs r2, #1
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x18
	ldrh r3, [r5, #8]
	adds r1, r3, #0
	asrs r1, r2
	adds r1, #1
	ands r1, r6
	adds r0, r6, #0
	lsls r0, r2
	bics r3, r0
	lsls r1, r2
	orrs r3, r1
	strh r3, [r5, #8]
_08001826:
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0800173E
	ldr r1, _08001854 @ =gUnk_03004C20
	movs r0, #0xff
	strb r0, [r1, #0xe]
	b _080018A0
	.align 2, 0
_0800183C: .4byte 0x06008000
_08001840: .4byte 0x0600F000
_08001844: .4byte gUnk_030052A0
_08001848: .4byte gUnk_03005468
_0800184C: .4byte 0x080D2E88
_08001850: .4byte gUnk_03005284
_08001854: .4byte gUnk_03004C20
_08001858:
	ldr r0, _08001890 @ =gUnk_03003410
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _080018A0
	ldrh r4, [r6, #8]
	ldrb r0, [r6, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	asrs r4, r0
	movs r2, #3
	ands r4, r2
	ldr r5, _08001894 @ =gUnk_03005284
	ldr r1, [r5]
	ldrh r3, [r1, #0x16]
	asrs r3, r0
	ands r3, r2
	cmp r4, r3
	beq _080018A0
	adds r0, r3, #4
	subs r0, r0, r4
	movs r1, #3
	ands r0, r1
	bl sub_0804517C
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	strh r0, [r6, #8]
	b _080018A0
	.align 2, 0
_08001890: .4byte gUnk_03003410
_08001894: .4byte gUnk_03005284
_08001898:
	ldr r0, _08001B7C @ =gUnk_03005284
	ldr r0, [r0]
	strh r3, [r0, #0x16]
	strh r3, [r6, #8]
_080018A0:
	bl sub_08002FD0
	ldr r2, _08001B80 @ =0x040000D4
	ldr r0, _08001B84 @ =gUnk_03004790
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08001B88 @ =gUnk_03003430
	ldr r1, [r0]
	str r1, [r2, #4]
	ldrb r1, [r0, #0x18]
	ldrh r0, [r0, #0x16]
	muls r0, r1, r0
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080018C4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080018C4
	ldr r4, _08001B80 @ =0x040000D4
	ldr r2, _08001B84 @ =gUnk_03004790
	ldr r0, [r2, #8]
	str r0, [r4]
	ldr r3, _08001B88 @ =gUnk_03003430
	ldr r0, [r3, #0x1c]
	str r0, [r4, #4]
	adds r0, r3, #0
	adds r0, #0x34
	ldrb r1, [r0]
	ldrh r0, [r3, #0x32]
	muls r0, r1, r0
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	ands r0, r1
	adds r7, r3, #0
	ldr r5, _08001B8C @ =gUnk_03000900
	mov r8, r5
	movs r3, #0x80
	lsls r3, r3, #4
	add r3, r8
	mov sb, r3
	cmp r0, #0
	beq _0800190E
_08001906:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _08001906
_0800190E:
	ldr r3, _08001B80 @ =0x040000D4
	ldr r0, [r2, #0x10]
	str r0, [r3]
	ldr r0, [r7, #0x38]
	str r0, [r3, #4]
	adds r0, r7, #0
	adds r0, #0x50
	ldrb r1, [r0]
	subs r0, #2
	ldrh r0, [r0]
	muls r0, r1, r0
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08001930:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08001930
	movs r4, #0
	ldr r6, _08001B90 @ =0x000003FF
	ldr r5, _08001B84 @ =gUnk_03004790
	ldr r2, _08001B8C @ =gUnk_03000900
	movs r0, #0x80
	lsls r0, r0, #4
	adds r3, r2, r0
_08001946:
	lsls r1, r4, #1
	ldr r0, [r5, #0xc]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r5, #4]
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	adds r3, #2
	adds r4, #1
	cmp r4, r6
	bls _08001946
	ldr r1, _08001B80 @ =0x040000D4
	mov r2, r8
	str r2, [r1]
	ldr r0, [r7, #4]
	str r0, [r1, #4]
	ldr r0, _08001B94 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08001984
_0800197C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0800197C
_08001984:
	ldr r1, _08001B80 @ =0x040000D4
	mov r3, sb
	str r3, [r1]
	ldr r0, [r7, #0x20]
	str r0, [r1, #4]
	ldr r0, _08001B94 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080019A6
_0800199E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0800199E
_080019A6:
	ldr r4, _08001B98 @ =0x04000008
	ldr r3, _08001B9C @ =gUnk_08051BD4
	ldr r5, _08001BA0 @ =gUnk_03004C20
	mov sl, r5
	ldrb r0, [r5, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrb r2, [r5, #0xd]
	subs r2, #1
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r0, #3
	orrs r0, r1
	movs r2, #0xe2
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r5, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, #1
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	ldr r3, _08001BA4 @ =0x00001D44
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _08001BA8 @ =0x04000010
	ldrh r0, [r7, #8]
	lsrs r0, r0, #4
	ldr r5, _08001BAC @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r7, #0xa]
	lsrs r0, r0, #7
	ands r0, r1
	strh r0, [r2]
	ldr r3, _08001BB0 @ =0x04000014
	ldrh r2, [r7, #0x24]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _08001BB4 @ =0x04000016
	ldrh r0, [r7, #0x26]
	ands r1, r0
	strh r1, [r2]
	ldr r1, _08001BB8 @ =gUnk_03002910
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _08001BBC @ =gUnk_080D8E14
	adds r0, r0, r2
	movs r3, #0
	ldrsh r4, [r0, r3]
	ldr r5, _08001BC0 @ =gUnk_030034AC
	movs r1, #0
	ldrsh r0, [r5, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r2, _08001BC4 @ =gUnk_030047B0
	mov sb, r2
	strh r0, [r2]
	ldr r3, _08001BB8 @ =gUnk_03002910
	ldrb r0, [r3]
	lsls r0, r0, #1
	ldr r5, _08001BBC @ =gUnk_080D8E14
	adds r0, r0, r5
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r2, _08001BC0 @ =gUnk_030034AC
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r5, _08001BC8 @ =gUnk_03005464
	mov r8, r5
	strh r0, [r5]
	ldr r1, _08001BB8 @ =gUnk_03002910
	ldrb r0, [r1]
	lsls r0, r0, #1
	ldr r2, _08001BBC @ =gUnk_080D8E14
	adds r0, r0, r2
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r5, _08001BCC @ =gUnk_03005420
	movs r3, #0
	ldrsh r0, [r5, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08001BD0 @ =gUnk_030051BC
	strh r0, [r1]
	ldr r2, _08001BB8 @ =gUnk_03002910
	ldrb r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08001BBC @ =gUnk_080D8E14
	adds r0, r0, r3
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0
	ldrsh r0, [r5, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08001BD4 @ =gUnk_03000808
	strh r0, [r1]
	ldr r2, _08001BD8 @ =0x04000028
	adds r1, r7, #0
	adds r1, #0x40
	ldrh r1, [r1]
	lsls r1, r1, #8
	strh r1, [r2]
	adds r2, #2
	movs r1, #0
	strh r1, [r2]
	adds r2, #2
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	lsls r1, r1, #8
	strh r1, [r2]
	adds r2, #2
	movs r1, #0
	strh r1, [r2]
	subs r2, #0xe
	mov r3, sb
	ldrh r1, [r3]
	strh r1, [r2]
	adds r2, #2
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r2]
	adds r2, #2
	ldr r3, _08001BD0 @ =gUnk_030051BC
	ldrh r1, [r3]
	strh r1, [r2]
	ldr r1, _08001BDC @ =0x04000026
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r5]
	ldr r2, _08001BC0 @ =gUnk_030034AC
	strh r0, [r2]
	movs r0, #0
	ldr r3, _08001BB8 @ =gUnk_03002910
	strb r0, [r3]
	ldr r1, _08001BE0 @ =0x04000040
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r5, _08001BE4 @ =0x000090A0
	adds r0, r5, #0
	strh r0, [r1]
	ldr r4, _08001BE8 @ =0x04000048
	movs r0, #0x21
	strh r0, [r4]
	ldr r3, _08001BEC @ =0x0400004A
	movs r2, #0x3f
	strh r2, [r3]
	mov r1, sl
	ldrb r0, [r1, #0xd]
	cmp r0, #6
	bne _08001C00
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	beq _08001B4E
	cmp r0, #3
	bne _08001C00
_08001B4E:
	ldr r1, _08001BF0 @ =0x04000042
	ldr r5, _08001BF4 @ =0x0000A0F0
	adds r0, r5, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _08001BF8 @ =0x00002121
	adds r0, r1, #0
	strh r0, [r4]
	strh r2, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08001BFC @ =0x00007741
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	mov r3, sl
	strb r0, [r3, #0x10]
	bl sub_08026128
	b _08001C10
	.align 2, 0
_08001B7C: .4byte gUnk_03005284
_08001B80: .4byte 0x040000D4
_08001B84: .4byte gUnk_03004790
_08001B88: .4byte gUnk_03003430
_08001B8C: .4byte gUnk_03000900
_08001B90: .4byte 0x000003FF
_08001B94: .4byte 0x80000400
_08001B98: .4byte 0x04000008
_08001B9C: .4byte gUnk_08051BD4
_08001BA0: .4byte gUnk_03004C20
_08001BA4: .4byte 0x00001D44
_08001BA8: .4byte 0x04000010
_08001BAC: .4byte 0x000001FF
_08001BB0: .4byte 0x04000014
_08001BB4: .4byte 0x04000016
_08001BB8: .4byte gUnk_03002910
_08001BBC: .4byte gUnk_080D8E14
_08001BC0: .4byte gUnk_030034AC
_08001BC4: .4byte gUnk_030047B0
_08001BC8: .4byte gUnk_03005464
_08001BCC: .4byte gUnk_03005420
_08001BD0: .4byte gUnk_030051BC
_08001BD4: .4byte gUnk_03000808
_08001BD8: .4byte 0x04000028
_08001BDC: .4byte 0x04000026
_08001BE0: .4byte 0x04000040
_08001BE4: .4byte 0x000090A0
_08001BE8: .4byte 0x04000048
_08001BEC: .4byte 0x0400004A
_08001BF0: .4byte 0x04000042
_08001BF4: .4byte 0x0000A0F0
_08001BF8: .4byte 0x00002121
_08001BFC: .4byte 0x00007741
_08001C00:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r5, _08001C44 @ =0x00003741
	adds r0, r5, #0
	strh r0, [r1]
	ldr r1, _08001C48 @ =gUnk_03004C20
	movs r0, #0
	strb r0, [r1, #0x10]
_08001C10:
	ldr r5, _08001C48 @ =gUnk_03004C20
	ldrb r0, [r5, #0xc]
	cmp r0, #8
	beq _08001C60
	ldr r4, _08001C4C @ =0x0400000C
	ldr r3, _08001C50 @ =gUnk_08051BD4
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
	ldr r2, _08001C54 @ =0x00007E49
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08001C58 @ =gIntrTable
	ldr r0, _08001C5C @ =sub_080009D8
	str r0, [r1]
	b _08001C90
	.align 2, 0
_08001C44: .4byte 0x00003741
_08001C48: .4byte gUnk_03004C20
_08001C4C: .4byte 0x0400000C
_08001C50: .4byte gUnk_08051BD4
_08001C54: .4byte 0x00007E49
_08001C58: .4byte gIntrTable
_08001C5C: .4byte sub_080009D8
_08001C60:
	ldr r4, _08001CB4 @ =0x0400000C
	ldr r3, _08001CB8 @ =gUnk_08051BD4
	ldrb r0, [r5, #0xc]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
	ldr r3, _08001CBC @ =0x00009E49
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08001CC0 @ =gIntrTable
	ldr r0, _08001CC4 @ =sub_08000CE0
	str r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xe]
_08001C90:
	ldr r2, _08001CC8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08001CCC @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001CB4: .4byte 0x0400000C
_08001CB8: .4byte gUnk_08051BD4
_08001CBC: .4byte 0x00009E49
_08001CC0: .4byte gIntrTable
_08001CC4: .4byte sub_08000CE0
_08001CC8: .4byte 0x04000200
_08001CCC: .4byte 0x04000004
	thumb_func_end sub_08001158

	thumb_func_start sub_08001CD0
sub_08001CD0: @ 0x08001CD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r1, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #0x10
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08001D80
	ldr r6, _08001D6C @ =gUnk_03003430
	adds r2, r6, #0
	adds r2, #0x40
	ldrh r0, [r2]
	ldr r4, [sp]
	adds r0, r0, r4
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08001D70 @ =gUnk_03005468
	ldrh r0, [r0, #4]
	subs r0, #0xf0
	cmp r1, r0
	ble _08001D0A
	strh r0, [r2]
_08001D0A:
	ldrh r0, [r2]
	lsrs r2, r0, #3
	adds r0, r6, #0
	adds r0, #0x44
	ldrh r1, [r0]
	cmp r2, r1
	beq _08001E08
	strh r2, [r0]
	adds r0, r2, #0
	adds r0, #0x1e
	movs r7, #0x1f
	ands r7, r0
	adds r4, r6, #0
	adds r4, #0x48
	ldrh r1, [r4]
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	lsrs r6, r0, #3
	movs r3, #0
	ldr r0, _08001D74 @ =gUnk_03004DB0
	mov sb, r0
	movs r1, #0x1f
	mov ip, r1
	ldr r0, _08001D78 @ =gUnk_03004790
	mov r8, r0
_08001D44:
	adds r1, r3, r6
	adds r2, r1, #0
	mov r4, ip
	ands r2, r4
	lsls r2, r2, #5
	adds r2, r2, r7
	add r2, sb
	ldr r4, _08001D7C @ =gUnk_03003478
	ldrh r0, [r4]
	muls r0, r1, r0
	mov r4, r8
	ldr r1, [r4, #0x14]
	adds r0, r0, r5
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	adds r3, #1
	cmp r3, #0x14
	bls _08001D44
	b _08001E08
	.align 2, 0
_08001D6C: .4byte gUnk_03003430
_08001D70: .4byte gUnk_03005468
_08001D74: .4byte gUnk_03004DB0
_08001D78: .4byte gUnk_03004790
_08001D7C: .4byte gUnk_03003478
_08001D80:
	movs r0, #0x20
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08001E08
	ldr r6, _08001E90 @ =gUnk_03003430
	adds r2, r6, #0
	adds r2, #0x40
	ldrh r0, [r2]
	ldr r4, [sp]
	adds r0, r0, r4
	strh r0, [r2]
	ldr r1, _08001E94 @ =gUnk_03005468
	ldrh r3, [r1]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _08001DAA
	strh r3, [r2]
_08001DAA:
	ldrh r0, [r2]
	lsrs r2, r0, #3
	adds r0, r6, #0
	adds r0, #0x44
	ldrh r1, [r0]
	cmp r2, r1
	beq _08001E08
	strh r2, [r0]
	movs r7, #0x1f
	ands r7, r2
	adds r4, r6, #0
	adds r4, #0x48
	ldrh r1, [r4]
	adds r0, r2, r1
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	lsrs r6, r0, #3
	movs r3, #0
	ldr r0, _08001E98 @ =gUnk_03004DB0
	mov sb, r0
	movs r1, #0x1f
	mov ip, r1
	ldr r0, _08001E9C @ =gUnk_03004790
	mov r8, r0
_08001DE2:
	adds r1, r3, r6
	adds r2, r1, #0
	mov r4, ip
	ands r2, r4
	lsls r2, r2, #5
	adds r2, r2, r7
	add r2, sb
	ldr r4, _08001EA0 @ =gUnk_03003478
	ldrh r0, [r4]
	muls r0, r1, r0
	mov r4, r8
	ldr r1, [r4, #0x14]
	adds r0, r0, r5
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	adds r3, #1
	cmp r3, #0x14
	bls _08001DE2
_08001E08:
	movs r0, #0x40
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08001EA4
	ldr r4, _08001E90 @ =gUnk_03003430
	adds r3, r4, #0
	adds r3, #0x42
	ldr r1, [sp]
	lsrs r0, r1, #0x10
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r1, _08001E94 @ =gUnk_03005468
	ldrh r2, [r1, #2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _08001E34
	strh r2, [r3]
_08001E34:
	ldrh r0, [r3]
	lsrs r2, r0, #3
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	cmp r2, r1
	beq _08001F36
	strh r2, [r0]
	subs r0, #6
	ldrh r0, [r0]
	lsrs r6, r0, #3
	movs r0, #0x1f
	ands r0, r2
	lsls r7, r0, #5
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	adds r0, r2, r1
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x48
	ldrh r1, [r1]
	muls r0, r1, r0
	adds r5, r0, r6
	movs r3, #0
	ldr r4, _08001E98 @ =gUnk_03004DB0
	mov r8, r4
	movs r0, #0x1f
	mov ip, r0
	ldr r4, _08001E9C @ =gUnk_03004790
_08001E72:
	adds r0, r3, r6
	mov r1, ip
	ands r0, r1
	adds r0, r7, r0
	add r0, r8
	ldr r1, [r4, #0x14]
	adds r2, r5, r3
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r3, #1
	cmp r3, #0x1e
	bls _08001E72
	b _08001F36
	.align 2, 0
_08001E90: .4byte gUnk_03003430
_08001E94: .4byte gUnk_03005468
_08001E98: .4byte gUnk_03004DB0
_08001E9C: .4byte gUnk_03004790
_08001EA0: .4byte gUnk_03003478
_08001EA4:
	movs r0, #0x80
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _08001F36
	ldr r4, _08001F48 @ =gUnk_03003430
	adds r2, r4, #0
	adds r2, #0x42
	ldrh r0, [r2]
	cmp r0, #0
	bne _08001EC4
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r1]
_08001EC4:
	ldr r1, [sp]
	lsrs r0, r1, #0x10
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08001F4C @ =gUnk_03005468
	ldrh r0, [r0, #6]
	subs r0, #0xa0
	cmp r1, r0
	blt _08001EDC
	strh r0, [r2]
_08001EDC:
	ldrh r0, [r2]
	lsrs r2, r0, #3
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r1, [r0]
	cmp r2, r1
	beq _08001F36
	strh r2, [r0]
	subs r0, #6
	ldrh r0, [r0]
	lsrs r6, r0, #3
	adds r0, r2, #0
	adds r0, #0x14
	movs r1, #0x1f
	ands r1, r0
	lsls r7, r1, #5
	adds r1, r4, #0
	adds r1, #0x4a
	ldrh r1, [r1]
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x48
	ldrh r1, [r1]
	muls r0, r1, r0
	adds r5, r0, r6
	movs r3, #0
	ldr r4, _08001F50 @ =gUnk_03004DB0
	mov r8, r4
	movs r0, #0x1f
	mov ip, r0
	ldr r4, _08001F54 @ =gUnk_03004790
_08001F1C:
	adds r0, r3, r6
	mov r1, ip
	ands r0, r1
	adds r0, r7, r0
	add r0, r8
	ldr r1, [r4, #0x14]
	adds r2, r5, r3
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r3, #1
	cmp r3, #0x1e
	bls _08001F1C
_08001F36:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001F48: .4byte gUnk_03003430
_08001F4C: .4byte gUnk_03005468
_08001F50: .4byte gUnk_03004DB0
_08001F54: .4byte gUnk_03004790
	thumb_func_end sub_08001CD0

	thumb_func_start sub_08001F58
sub_08001F58: @ 0x08001F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r7, #0
	movs r1, #0
	mov r8, r1
	mov ip, r1
	ldr r0, _08002000 @ =gUnk_030052A0
	ldrb r0, [r0]
	cmp r0, #0xfe
	beq _08001F7A
	b _080022D2
_08001F7A:
	ldr r0, _08002004 @ =gUnk_0300542C
	ldr r0, [r0]
	ldr r2, _08002008 @ =gUnk_03002920
	mov sl, r2
	ldr r4, _0800200C @ =gUnk_0300358C
	mov sb, r4
	cmp r0, #0
	beq _08001FBE
	adds r2, r0, #0
	ldrh r1, [r2]
	ldr r0, _08002010 @ =0x0000FFFF
	cmp r1, r0
	beq _08001FBE
	mov r6, sl
	ldrh r4, [r6]
	adds r5, r0, #0
_08001F9A:
	ldrh r0, [r2, #4]
	cmp r0, r4
	blo _08001FB2
	cmp r1, r4
	bhs _08001FB2
	ldrh r0, [r2, #2]
	ldrh r1, [r6, #2]
	cmp r0, r1
	bhs _08001FB2
	ldrh r0, [r2, #6]
	cmp r1, r0
	blo _0800201C
_08001FB2:
	adds r2, #0xc
	cmp r2, #0xc
	beq _08001FBE
	ldrh r1, [r2]
	cmp r1, r5
	bne _08001F9A
_08001FBE:
	mov r1, sl
	ldrh r5, [r1]
	mov r2, r8
	adds r1, r2, r5
	ldr r6, _08002014 @ =gUnk_03003430
	adds r6, #0x40
	ldrh r2, [r6]
	adds r0, r2, #0
	adds r0, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08002074
	movs r7, #0x10
	mov r4, sb
	ldrh r0, [r4]
	cmp r0, #0
	beq _08002040
	ldr r0, _08002018 @ =0xFFFF0000
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	adds r0, r2, #0
	adds r0, #0xd8
	lsls r1, r5, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _08002064
	movs r0, #0
	strh r0, [r4]
	b _08002064
	.align 2, 0
_08002000: .4byte gUnk_030052A0
_08002004: .4byte gUnk_0300542C
_08002008: .4byte gUnk_03002920
_0800200C: .4byte gUnk_0300358C
_08002010: .4byte 0x0000FFFF
_08002014: .4byte gUnk_03003430
_08002018: .4byte 0xFFFF0000
_0800201C:
	movs r0, #1
	ldr r5, _0800203C @ =gUnk_030008E8
	strh r0, [r5]
	mov r1, sb
	strh r0, [r1]
	movs r0, #8
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #9
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	b _08001FBE
	.align 2, 0
_0800203C: .4byte gUnk_030008E8
_08002040:
	mov r2, sl
	ldrh r0, [r2]
	subs r0, #0x78
	ldrh r1, [r6]
	subs r0, r0, r1
	cmp r0, #5
	ble _0800205C
	ldr r0, _08002058 @ =0xFFFF0000
	ands r3, r0
	movs r0, #2
	b _08002062
	.align 2, 0
_08002058: .4byte 0xFFFF0000
_0800205C:
	ldr r0, _0800206C @ =0xFFFF0000
	ands r3, r0
	movs r0, #1
_08002062:
	orrs r3, r0
_08002064:
	ldr r0, _08002070 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x20
	b _080020D2
	.align 2, 0
_0800206C: .4byte 0xFFFF0000
_08002070: .4byte gHeldKeys
_08002074:
	cmp r1, r0
	bge _080020EC
	movs r7, #0x20
	mov r0, sb
	ldrh r4, [r0]
	cmp r4, #0
	beq _080020A0
	ldr r0, _0800209C @ =0x0000FFFF
	orrs r3, r0
	adds r0, r2, #0
	adds r0, #0x18
	lsls r1, r5, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _080020CC
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	b _080020CC
	.align 2, 0
_0800209C: .4byte 0x0000FFFF
_080020A0:
	ldrh r1, [r6]
	mov r2, sl
	ldrh r0, [r2]
	subs r0, #0x78
	subs r1, r1, r0
	cmp r1, #5
	ble _080020C8
	mov r5, r8
	orrs r5, r4
	lsls r0, r5, #0x10
	cmp r0, #0
	bne _080020C8
	ldr r0, _080020C0 @ =0xFFFF0000
	ands r3, r0
	ldr r0, _080020C4 @ =0x0000FFFE
	b _080020CA
	.align 2, 0
_080020C0: .4byte 0xFFFF0000
_080020C4: .4byte 0x0000FFFE
_080020C8:
	ldr r0, _080020E0 @ =0x0000FFFF
_080020CA:
	orrs r3, r0
_080020CC:
	ldr r0, _080020E4 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x10
_080020D2:
	ands r0, r1
	cmp r0, #0
	beq _080020F2
	movs r7, #0
	ldr r0, _080020E8 @ =0xFFFF0000
	ands r3, r0
	b _080020F2
	.align 2, 0
_080020E0: .4byte 0x0000FFFF
_080020E4: .4byte gHeldKeys
_080020E8: .4byte 0xFFFF0000
_080020EC:
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
_080020F2:
	mov r2, sl
	ldrh r0, [r2, #6]
	cmp r0, #0xa0
	bls _080020FE
	movs r4, #0x44
	str r4, [sp]
_080020FE:
	ldr r5, [sp]
	adds r0, r5, r0
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _08002180
	movs r0, #0x80
	orrs r7, r0
	ldr r1, _08002164 @ =gUnk_030008E8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08002140
	ldr r0, _08002168 @ =0x0000FFFF
	ands r3, r0
	adds r0, #1
	orrs r3, r0
	ldr r0, _0800216C @ =gUnk_03003430
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x90
	mov r2, sl
	movs r4, #2
	ldrsh r1, [r2, r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _080021FA
	movs r0, #0
	ldr r5, _08002164 @ =gUnk_030008E8
	strh r0, [r5]
	movs r0, #0
	mov ip, r0
_08002140:
	mov r1, sl
	ldrh r0, [r1, #6]
	ldr r2, [sp]
	adds r0, r2, r0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _08002170
	mov r4, ip
	cmp r4, #0
	bne _08002170
	ldr r0, _08002168 @ =0x0000FFFF
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	orrs r3, r0
	b _080021FA
	.align 2, 0
_08002164: .4byte gUnk_030008E8
_08002168: .4byte 0x0000FFFF
_0800216C: .4byte gUnk_03003430
_08002170:
	ldr r0, _0800217C @ =0x0000FFFF
	ands r3, r0
	adds r0, #1
	orrs r3, r0
	b _080021FA
	.align 2, 0
_0800217C: .4byte 0x0000FFFF
_08002180:
	cmp r0, #0x46
	bhi _080021F4
	movs r0, #0x40
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	ldr r5, _080021D4 @ =gUnk_030008E8
	ldrh r0, [r5]
	cmp r0, #0
	beq _080021B8
	ldr r0, _080021D8 @ =0xFFFF0000
	orrs r3, r0
	ldr r0, _080021DC @ =gUnk_03003430
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #0x18
	mov r2, sl
	movs r4, #2
	ldrsh r1, [r2, r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080021FA
	movs r5, #0
	mov ip, r5
	mov r1, ip
	ldr r0, _080021D4 @ =gUnk_030008E8
	strh r1, [r0]
_080021B8:
	ldr r0, [sp]
	adds r0, #0x46
	mov r2, sl
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	bls _080021E8
	ldr r0, _080021E0 @ =0x0000FFFF
	ands r3, r0
	ldr r0, _080021E4 @ =0xFFFD0000
	orrs r3, r0
	b _080021FA
	.align 2, 0
_080021D4: .4byte gUnk_030008E8
_080021D8: .4byte 0xFFFF0000
_080021DC: .4byte gUnk_03003430
_080021E0: .4byte 0x0000FFFF
_080021E4: .4byte 0xFFFD0000
_080021E8:
	ldr r0, _080021F0 @ =0xFFFF0000
	orrs r3, r0
	b _080021FA
	.align 2, 0
_080021F0: .4byte 0xFFFF0000
_080021F4:
	movs r0, #0
	ldr r4, _0800221C @ =gUnk_030008E8
	strh r0, [r4]
_080021FA:
	mov r5, sl
	ldrh r0, [r5, #4]
	cmp r0, #0xe0
	bls _0800222C
	ldr r0, _08002220 @ =gUnk_03005220
	adds r0, #0x35
	ldr r1, _08002224 @ =gUnk_030034E4
	ldrb r2, [r0]
	ldrb r0, [r1]
	orrs r0, r2
	cmp r0, #0
	bne _0800224A
	movs r7, #0x10
	ldr r0, _08002228 @ =0xFFFF0000
	ands r3, r0
	movs r0, #3
	b _08002248
	.align 2, 0
_0800221C: .4byte gUnk_030008E8
_08002220: .4byte gUnk_03005220
_08002224: .4byte gUnk_030034E4
_08002228: .4byte 0xFFFF0000
_0800222C:
	cmp r0, #0xf
	bhi _0800224A
	ldr r0, _08002280 @ =gUnk_03005220
	adds r0, #0x35
	ldr r1, _08002284 @ =gUnk_030034E4
	ldrb r2, [r0]
	ldrb r0, [r1]
	orrs r0, r2
	cmp r0, #0
	bne _0800224A
	movs r7, #0x20
	ldr r0, _08002288 @ =0xFFFF0000
	ands r3, r0
	ldr r0, _0800228C @ =0x0000FFFD
_08002248:
	orrs r3, r0
_0800224A:
	mov r0, sl
	ldrh r4, [r0, #6]
	cmp r4, #0x1f
	bhi _0800229C
	ldr r0, _08002280 @ =gUnk_03005220
	adds r0, #0x35
	ldr r1, _08002284 @ =gUnk_030034E4
	ldrb r2, [r0]
	ldrb r0, [r1]
	orrs r0, r2
	cmp r0, #0
	bne _080022C6
	movs r0, #0xc0
	ands r7, r0
	movs r0, #0x40
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08002290 @ =0x0000FFFF
	ands r3, r1
	ldr r0, _08002294 @ =0xFFFE0000
	orrs r3, r0
	cmp r4, #0x17
	bhi _080022C6
	ands r3, r1
	ldr r0, _08002298 @ =0xFFFC0000
	b _080022C4
	.align 2, 0
_08002280: .4byte gUnk_03005220
_08002284: .4byte gUnk_030034E4
_08002288: .4byte 0xFFFF0000
_0800228C: .4byte 0x0000FFFD
_08002290: .4byte 0x0000FFFF
_08002294: .4byte 0xFFFE0000
_08002298: .4byte 0xFFFC0000
_0800229C:
	cmp r4, #0x90
	bls _080022C6
	ldr r0, _08002300 @ =gUnk_03005220
	adds r0, #0x35
	ldr r1, _08002304 @ =gUnk_030034E4
	ldrb r2, [r0]
	ldrb r0, [r1]
	orrs r0, r2
	cmp r0, #0
	bne _080022C6
	movs r0, #0xc0
	ands r7, r0
	movs r0, #0x80
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08002308 @ =0x0000FFFF
	ands r3, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
_080022C4:
	orrs r3, r0
_080022C6:
	cmp r7, #0
	beq _080022D2
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08001CD0
_080022D2:
	ldr r1, _0800230C @ =gUnk_03003430
	adds r0, r1, #0
	adds r0, #0x40
	ldrh r0, [r0]
	lsrs r0, r0, #1
	strh r0, [r1, #0x24]
	adds r2, r1, #0
	adds r2, #0x42
	ldr r0, _08002310 @ =gUnk_03005474
	ldrh r3, [r2]
	ldrh r2, [r0]
	adds r4, r0, #0
	cmp r3, r2
	blo _08002314
	subs r0, r3, r2
	movs r1, #1
	ands r0, r1
	ldr r2, _0800230C @ =gUnk_03003430
	ldrh r1, [r2, #0x26]
	adds r1, r1, r0
	strh r1, [r2, #0x26]
	b _08002322
	.align 2, 0
_08002300: .4byte gUnk_03005220
_08002304: .4byte gUnk_030034E4
_08002308: .4byte 0x0000FFFF
_0800230C: .4byte gUnk_03003430
_08002310: .4byte gUnk_03005474
_08002314:
	subs r0, r2, r3
	movs r1, #1
	ands r0, r1
	ldr r5, _08002338 @ =gUnk_03003430
	ldrh r1, [r5, #0x26]
	subs r1, r1, r0
	strh r1, [r5, #0x26]
_08002322:
	ldr r0, _08002338 @ =gUnk_03003430
	ldrh r1, [r0, #0x26]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800233C
	movs r0, #0
	ldr r1, _08002338 @ =gUnk_03003430
	strh r0, [r1, #0x26]
	b _0800234A
	.align 2, 0
_08002338: .4byte gUnk_03003430
_0800233C:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x50
	bls _0800234A
	movs r0, #0x50
	ldr r2, _0800244C @ =gUnk_03003430
	strh r0, [r2, #0x26]
_0800234A:
	ldr r5, _08002450 @ =gUnk_03003472
	ldrh r0, [r5]
	strh r0, [r4]
	ldr r0, _08002454 @ =gUnk_080D8E14
	mov r8, r0
	ldr r5, _08002458 @ =gUnk_03002910
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r6, _0800245C @ =gUnk_030034AC
	movs r2, #0
	ldrsh r0, [r6, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r7, _08002460 @ =gUnk_030047B0
	strh r0, [r7]
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0
	ldrsh r0, [r6, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r4, _08002464 @ =gUnk_03005464
	mov sl, r4
	strh r0, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r6, _08002468 @ =gUnk_03005420
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r2, _0800246C @ =gUnk_030051BC
	mov sb, r2
	strh r0, [r2]
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r4, [r0, r5]
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r4, _08002470 @ =gUnk_03000808
	strh r0, [r4]
	ldr r3, _08002474 @ =gUnk_030007FC
	ldr r0, _0800244C @ =gUnk_03003430
	adds r0, #0x40
	ldrh r1, [r0]
	adds r1, #0x78
	lsls r1, r1, #8
	movs r5, #0
	ldrsh r2, [r7, r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	mov r0, sl
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r3]
	ldr r3, _08002478 @ =gUnk_030051D0
	ldr r0, _08002450 @ =gUnk_03003472
	ldrh r1, [r0]
	adds r1, #0x50
	lsls r1, r1, #8
	mov r5, sb
	movs r0, #0
	ldrsh r2, [r5, r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r5, #0
	ldrsh r2, [r4, r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r3]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800244C: .4byte gUnk_03003430
_08002450: .4byte gUnk_03003472
_08002454: .4byte gUnk_080D8E14
_08002458: .4byte gUnk_03002910
_0800245C: .4byte gUnk_030034AC
_08002460: .4byte gUnk_030047B0
_08002464: .4byte gUnk_03005464
_08002468: .4byte gUnk_03005420
_0800246C: .4byte gUnk_030051BC
_08002470: .4byte gUnk_03000808
_08002474: .4byte gUnk_030007FC
_08002478: .4byte gUnk_030051D0
	thumb_func_end sub_08001F58

	thumb_func_start sub_0800247C
sub_0800247C: @ 0x0800247C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r8, r0
	movs r7, #0
	ldr r1, _080024CC @ =0xFFFF0000
	mov sl, r1
	movs r6, #0
	ldr r2, _080024D0 @ =gUnk_030051B8
	ldrb r1, [r2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08002526
	ldr r4, _080024D4 @ =gUnk_03002920
	ldr r0, _080024D8 @ =gUnk_03003430
	adds r3, r0, #0
	adds r3, #0x40
	ldrh r0, [r3]
	movs r5, #0x78
	adds r5, r5, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	cmp r1, r0
	ble _080024F0
	movs r7, #0x10
	ldrh r0, [r4]
	subs r0, #0x78
	ldrh r1, [r3]
	subs r0, r0, r1
	cmp r0, #5
	ble _080024DC
	movs r6, #2
	b _080024E4
	.align 2, 0
_080024CC: .4byte 0xFFFF0000
_080024D0: .4byte gUnk_030051B8
_080024D4: .4byte gUnk_03002920
_080024D8: .4byte gUnk_03003430
_080024DC:
	mov r1, sl
	ands r6, r1
	movs r0, #1
	orrs r6, r0
_080024E4:
	ldr r0, _080024EC @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x20
	b _0800251A
	.align 2, 0
_080024EC: .4byte gHeldKeys
_080024F0:
	cmp r1, r0
	bge _08002526
	movs r7, #0x20
	ldrh r1, [r3]
	ldrh r0, [r4]
	subs r0, #0x78
	subs r1, r1, r0
	cmp r1, #5
	ble _08002510
	mov r5, sl
	ands r6, r5
	ldr r0, _0800250C @ =0x0000FFFE
	b _08002512
	.align 2, 0
_0800250C: .4byte 0x0000FFFE
_08002510:
	ldr r0, _08002564 @ =0x0000FFFF
_08002512:
	orrs r6, r0
	ldr r0, _08002568 @ =gHeldKeys
	ldrh r1, [r0]
	movs r0, #0x10
_0800251A:
	ands r0, r1
	cmp r0, #0
	beq _08002526
	movs r7, #0
	ldr r0, _0800256C @ =0xFFFF0000
	ands r6, r0
_08002526:
	ldrb r1, [r2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _080025B0
	ldr r0, _08002570 @ =gUnk_03002920
	ldrh r1, [r0, #6]
	cmp r1, #0xa0
	bls _0800253C
	movs r0, #0x44
	mov r8, r0
_0800253C:
	mov r5, r8
	adds r3, r5, r1
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _08002580
	movs r0, #0x80
	orrs r7, r0
	adds r0, r3, #0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _08002574
	ldr r0, _08002564 @ =0x0000FFFF
	ands r6, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _080025AE
	.align 2, 0
_08002564: .4byte 0x0000FFFF
_08002568: .4byte gHeldKeys
_0800256C: .4byte 0xFFFF0000
_08002570: .4byte gUnk_03002920
_08002574:
	ldr r0, _0800257C @ =0x0000FFFF
	ands r6, r0
	adds r0, #1
	b _080025AE
	.align 2, 0
_0800257C: .4byte 0x0000FFFF
_08002580:
	cmp r0, #0x46
	bhi _080025B0
	movs r0, #0x40
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #0x46
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	bls _080025AC
	ldr r0, _080025A4 @ =0x0000FFFF
	ands r6, r0
	ldr r0, _080025A8 @ =0xFFFD0000
	b _080025AE
	.align 2, 0
_080025A4: .4byte 0x0000FFFF
_080025A8: .4byte 0xFFFD0000
_080025AC:
	ldr r0, _08002644 @ =0xFFFF0000
_080025AE:
	orrs r6, r0
_080025B0:
	ldrb r0, [r2]
	orrs r7, r0
	ldr r5, _08002648 @ =gUnk_03005480
	ldr r1, _0800264C @ =gUnk_030034E8
	ldr r3, [r5]
	ldr r0, [r1]
	adds r3, r3, r0
	ldr r4, _08002650 @ =gUnk_030007C0
	ldr r2, [r4]
	ldr r0, [r1, #4]
	adds r2, r2, r0
	asrs r0, r3, #0x10
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08002644 @ =0xFFFF0000
	mov r8, r1
	ands r6, r1
	orrs r6, r0
	lsrs r0, r6, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r1, _08002654 @ =0x0000FFFF
	ands r6, r1
	orrs r6, r0
	ands r3, r1
	str r3, [r5]
	ands r2, r1
	str r2, [r4]
	ldr r0, _08002658 @ =gUnk_03005220
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	beq _080025FC
	movs r0, #0x30
	ands r7, r0
	movs r6, #0
_080025FC:
	cmp r7, #0
	beq _08002608
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08001CD0
_08002608:
	ldr r2, _0800265C @ =gUnk_03003430
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r0, [r0]
	lsrs r0, r0, #1
	strh r0, [r2, #0x24]
	ldr r0, _08002660 @ =gUnk_03004C20
	ldr r1, [r0, #4]
	movs r0, #3
	ands r1, r0
	adds r7, r2, #0
	ldr r2, _08002664 @ =gUnk_03005474
	cmp r1, #0
	bne _08002694
	ldr r0, _08002668 @ =gUnk_03004660
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002694
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r1, [r0]
	ldrh r0, [r2]
	cmp r1, r0
	blo _0800266C
	subs r0, r1, r0
	movs r1, #1
	ands r0, r1
	ldrh r1, [r7, #0x26]
	adds r1, r1, r0
	b _08002676
	.align 2, 0
_08002644: .4byte 0xFFFF0000
_08002648: .4byte gUnk_03005480
_0800264C: .4byte gUnk_030034E8
_08002650: .4byte gUnk_030007C0
_08002654: .4byte 0x0000FFFF
_08002658: .4byte gUnk_03005220
_0800265C: .4byte gUnk_03003430
_08002660: .4byte gUnk_03004C20
_08002664: .4byte gUnk_03005474
_08002668: .4byte gUnk_03004660
_0800266C:
	subs r0, r0, r1
	movs r1, #1
	ands r0, r1
	ldrh r1, [r7, #0x26]
	subs r1, r1, r0
_08002676:
	strh r1, [r7, #0x26]
	ldrh r1, [r7, #0x26]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08002688
	movs r0, #0
	b _08002692
_08002688:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x50
	bls _08002694
	movs r0, #0x50
_08002692:
	strh r0, [r7, #0x26]
_08002694:
	ldr r5, _08002798 @ =gUnk_03003472
	ldrh r0, [r5]
	strh r0, [r2]
	ldr r0, _0800279C @ =gUnk_080D8E14
	mov r8, r0
	ldr r5, _080027A0 @ =gUnk_03002910
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r6, _080027A4 @ =gUnk_030034AC
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _080027A8 @ =gUnk_030047B0
	strh r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _080027AC @ =gUnk_03005464
	mov sl, r1
	strh r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r6, _080027B0 @ =gUnk_03005420
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _080027B4 @ =gUnk_030051BC
	mov sb, r1
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r4, [r0, r5]
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r4, _080027B8 @ =gUnk_03000808
	strh r0, [r4]
	ldr r3, _080027BC @ =gUnk_030007FC
	adds r0, r7, #0
	adds r0, #0x40
	ldrh r1, [r0]
	adds r1, #0x78
	lsls r1, r1, #8
	ldr r5, _080027A8 @ =gUnk_030047B0
	movs r0, #0
	ldrsh r2, [r5, r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	mov r5, sl
	movs r0, #0
	ldrsh r2, [r5, r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r3]
	ldr r3, _080027C0 @ =gUnk_030051D0
	ldr r5, _08002798 @ =gUnk_03003472
	ldrh r1, [r5]
	adds r1, #0x50
	lsls r1, r1, #8
	mov r0, sb
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002798: .4byte gUnk_03003472
_0800279C: .4byte gUnk_080D8E14
_080027A0: .4byte gUnk_03002910
_080027A4: .4byte gUnk_030034AC
_080027A8: .4byte gUnk_030047B0
_080027AC: .4byte gUnk_03005464
_080027B0: .4byte gUnk_03005420
_080027B4: .4byte gUnk_030051BC
_080027B8: .4byte gUnk_03000808
_080027BC: .4byte gUnk_030007FC
_080027C0: .4byte gUnk_030051D0
	thumb_func_end sub_0800247C

	thumb_func_start sub_080027C4
sub_080027C4: @ 0x080027C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r0, _080027FC @ =gUnk_03005220
	adds r1, r0, #0
	adds r1, #0x46
	ldrb r1, [r1]
	adds r6, r0, #0
	ldr r5, _08002800 @ =gUnk_03002920
	cmp r1, #0
	bne _08002814
	movs r4, #0x10
	ldrh r0, [r5]
	subs r0, #0x28
	ldr r1, _08002804 @ =gUnk_03003430
	adds r1, #0x40
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	ble _0800280C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08002808 @ =0xFFFF0000
	ands r2, r1
	b _08002812
	.align 2, 0
_080027FC: .4byte gUnk_03005220
_08002800: .4byte gUnk_03002920
_08002804: .4byte gUnk_03003430
_08002808: .4byte 0xFFFF0000
_0800280C:
	ldr r0, _08002850 @ =0xFFFF0000
	ands r2, r0
	movs r0, #1
_08002812:
	orrs r2, r0
_08002814:
	adds r1, r5, #0
	adds r0, r6, #0
	adds r0, #0x2f
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	beq _0800282A
	adds r0, #2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002894
_0800282A:
	ldrh r3, [r1, #2]
	ldr r0, _08002854 @ =gUnk_03003430
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x6e
	cmp r3, r0
	ble _08002868
	movs r0, #0x80
	orrs r4, r0
	adds r0, r1, #0
	adds r0, #0xa
	cmp r3, r0
	ble _0800285C
	ldr r0, _08002858 @ =0x0000FFFF
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _08002916
	.align 2, 0
_08002850: .4byte 0xFFFF0000
_08002854: .4byte gUnk_03003430
_08002858: .4byte 0x0000FFFF
_0800285C:
	ldr r0, _08002864 @ =0x0000FFFF
	ands r2, r0
	adds r0, #1
	b _08002916
	.align 2, 0
_08002864: .4byte 0x0000FFFF
_08002868:
	cmp r3, r0
	bge _08002918
	movs r0, #0x40
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r1, #0
	adds r0, #0x64
	cmp r3, r0
	bge _0800288C
	ldr r0, _08002884 @ =0x0000FFFF
	ands r2, r0
	ldr r0, _08002888 @ =0xFFFD0000
	b _08002916
	.align 2, 0
_08002884: .4byte 0x0000FFFF
_08002888: .4byte 0xFFFD0000
_0800288C:
	ldr r0, _08002890 @ =0xFFFF0000
	b _08002916
	.align 2, 0
_08002890: .4byte 0xFFFF0000
_08002894:
	cmp r3, #0
	ble _080028DC
	ldrh r5, [r1, #2]
	adds r1, r5, #0
	subs r1, #0x28
	ldr r0, _080028C4 @ =gUnk_03003430
	adds r0, #0x42
	ldrh r3, [r0]
	cmp r1, r3
	ble _08002918
	movs r0, #0x80
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r3, #0
	adds r0, #0x32
	cmp r5, r0
	ble _080028CC
	ldr r0, _080028C8 @ =0x0000FFFF
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _08002916
	.align 2, 0
_080028C4: .4byte gUnk_03003430
_080028C8: .4byte 0x0000FFFF
_080028CC:
	ldr r0, _080028D8 @ =0x0000FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _08002916
	.align 2, 0
_080028D8: .4byte 0x0000FFFF
_080028DC:
	ldrh r3, [r5, #2]
	ldr r0, _08002904 @ =gUnk_03003430
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, r1, #0
	adds r0, #0x82
	cmp r3, r0
	bge _08002918
	movs r0, #0x40
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r0, r1, #0
	adds r0, #0x78
	cmp r3, r0
	bge _08002910
	ldr r0, _08002908 @ =0x0000FFFF
	ands r2, r0
	ldr r0, _0800290C @ =0xFFFD0000
	b _08002916
	.align 2, 0
_08002904: .4byte gUnk_03003430
_08002908: .4byte 0x0000FFFF
_0800290C: .4byte 0xFFFD0000
_08002910:
	ldr r0, _08002958 @ =0x0000FFFF
	ands r2, r0
	ldr r0, _0800295C @ =0xFFFE0000
_08002916:
	orrs r2, r0
_08002918:
	cmp r4, #0
	beq _08002924
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08001CD0
_08002924:
	ldr r2, _08002960 @ =gUnk_03003430
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r0, [r0]
	lsrs r0, r0, #1
	strh r0, [r2, #0x24]
	ldr r0, _08002964 @ =gUnk_03004C20
	ldr r1, [r0, #4]
	movs r0, #3
	ands r1, r0
	adds r7, r2, #0
	ldr r2, _08002968 @ =gUnk_03005474
	cmp r1, #0
	bne _08002994
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r1, [r0]
	ldrh r0, [r2]
	cmp r1, r0
	blo _0800296C
	subs r0, r1, r0
	movs r1, #1
	ands r0, r1
	ldrh r1, [r7, #0x26]
	adds r1, r1, r0
	b _08002976
	.align 2, 0
_08002958: .4byte 0x0000FFFF
_0800295C: .4byte 0xFFFE0000
_08002960: .4byte gUnk_03003430
_08002964: .4byte gUnk_03004C20
_08002968: .4byte gUnk_03005474
_0800296C:
	subs r0, r0, r1
	movs r1, #1
	ands r0, r1
	ldrh r1, [r7, #0x26]
	subs r1, r1, r0
_08002976:
	strh r1, [r7, #0x26]
	ldrh r1, [r7, #0x26]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08002988
	movs r0, #0
	b _08002992
_08002988:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x50
	bls _08002994
	movs r0, #0x50
_08002992:
	strh r0, [r7, #0x26]
_08002994:
	ldr r1, _08002A98 @ =gUnk_03003472
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r5, _08002A9C @ =gUnk_080D8E14
	mov r8, r5
	ldr r5, _08002AA0 @ =gUnk_03002910
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r6, _08002AA4 @ =gUnk_030034AC
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08002AA8 @ =gUnk_030047B0
	strh r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08002AAC @ =gUnk_03005464
	mov sl, r1
	strh r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, r8
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r6, _08002AB0 @ =gUnk_03005420
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08002AB4 @ =gUnk_030051BC
	mov sb, r1
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r4, [r0, r5]
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r4, _08002AB8 @ =gUnk_03000808
	strh r0, [r4]
	ldr r3, _08002ABC @ =gUnk_030007FC
	adds r0, r7, #0
	adds r0, #0x40
	ldrh r1, [r0]
	adds r1, #0x78
	lsls r1, r1, #8
	ldr r5, _08002AA8 @ =gUnk_030047B0
	movs r0, #0
	ldrsh r2, [r5, r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	mov r5, sl
	movs r0, #0
	ldrsh r2, [r5, r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r3]
	ldr r3, _08002AC0 @ =gUnk_030051D0
	ldr r5, _08002A98 @ =gUnk_03003472
	ldrh r1, [r5]
	adds r1, #0x50
	lsls r1, r1, #8
	mov r0, sb
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002A98: .4byte gUnk_03003472
_08002A9C: .4byte gUnk_080D8E14
_08002AA0: .4byte gUnk_03002910
_08002AA4: .4byte gUnk_030034AC
_08002AA8: .4byte gUnk_030047B0
_08002AAC: .4byte gUnk_03005464
_08002AB0: .4byte gUnk_03005420
_08002AB4: .4byte gUnk_030051BC
_08002AB8: .4byte gUnk_03000808
_08002ABC: .4byte gUnk_030007FC
_08002AC0: .4byte gUnk_030051D0
	thumb_func_end sub_080027C4

	thumb_func_start sub_08002AC4
sub_08002AC4: @ 0x08002AC4
	push {r4, r5, r6, r7, lr}
	ldr r1, _08002AE0 @ =gUnk_030007E0
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r6, r1, #0
	cmp r0, #7
	bls _08002AD6
	b _08002BD8
_08002AD6:
	lsls r0, r0, #2
	ldr r1, _08002AE4 @ =_08002AE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002AE0: .4byte gUnk_030007E0
_08002AE4: .4byte _08002AE8
_08002AE8: @ jump table
	.4byte _08002BD8 @ case 0
	.4byte _08002B08 @ case 1
	.4byte _08002B1C @ case 2
	.4byte _08002B58 @ case 3
	.4byte _08002B68 @ case 4
	.4byte _08002B88 @ case 5
	.4byte _08002BAC @ case 6
	.4byte _08002BBC @ case 7
_08002B08:
	ldr r0, _08002B18 @ =gUnk_03002920
	ldrh r1, [r0]
	subs r1, #0x78
	strh r1, [r6, #6]
	ldrh r0, [r0, #2]
	subs r0, #0x8c
	b _08002BD6
	.align 2, 0
_08002B18: .4byte gUnk_03002920
_08002B1C:
	ldr r3, _08002B54 @ =gUnk_03002920
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r0, r1
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	subs r1, #0x78
	strh r1, [r6, #6]
	movs r2, #0xfd
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r2, [r3, #2]
	adds r1, r2, #0
	adds r1, #0x40
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	subs r2, #0x50
	strh r2, [r6, #8]
	b _08002BD8
	.align 2, 0
_08002B54: .4byte gUnk_03002920
_08002B58:
	ldr r0, _08002B64 @ =gUnk_03002920
	ldrh r0, [r0]
	subs r0, #0x78
	strh r0, [r6, #6]
	b _08002BD8
	.align 2, 0
_08002B64: .4byte gUnk_03002920
_08002B68:
	ldr r2, _08002B84 @ =gUnk_03002920
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r6, #6]
	ldrh r1, [r2, #2]
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r5, #0
	subs r0, r0, r1
	b _08002BD6
	.align 2, 0
_08002B84: .4byte gUnk_03002920
_08002B88:
	ldr r1, _08002BA8 @ =gUnk_03002920
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	subs r1, #0x78
	strh r1, [r6, #6]
	movs r0, #0x94
	b _08002BD6
	.align 2, 0
_08002BA8: .4byte gUnk_03002920
_08002BAC:
	ldr r0, _08002BB8 @ =gUnk_03002920
	ldrh r0, [r0]
	subs r0, #0x78
	strh r0, [r6, #6]
	movs r0, #0x5c
	b _08002BD6
	.align 2, 0
_08002BB8: .4byte gUnk_03002920
_08002BBC:
	ldr r0, _08002BD0 @ =gUnk_03002920
	ldrh r1, [r0]
	subs r1, #0x78
	strh r1, [r6, #6]
	ldrh r0, [r0, #2]
	cmp r0, #0xa9
	bhi _08002BD4
	movs r0, #0x3c
	b _08002BD6
	.align 2, 0
_08002BD0: .4byte gUnk_03002920
_08002BD4:
	movs r0, #0xa0
_08002BD6:
	strh r0, [r6, #8]
_08002BD8:
	ldrh r2, [r6]
	movs r3, #0
	ldrsh r1, [r6, r3]
	movs r5, #6
	ldrsh r0, [r6, r5]
	cmp r1, r0
	ble _08002BEA
	subs r0, r2, #1
	strh r0, [r6]
_08002BEA:
	ldrh r2, [r6]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r3, #6
	ldrsh r0, [r6, r3]
	cmp r1, r0
	bge _08002BFC
	adds r0, r2, #1
	strh r0, [r6]
_08002BFC:
	ldrh r2, [r6, #2]
	movs r5, #2
	ldrsh r0, [r6, r5]
	movs r3, #8
	ldrsh r1, [r6, r3]
	cmp r0, r1
	ble _08002C0E
	subs r0, r2, #1
	strh r0, [r6, #2]
_08002C0E:
	ldrh r2, [r6, #2]
	movs r5, #2
	ldrsh r0, [r6, r5]
	cmp r0, r1
	bge _08002C1C
	adds r0, r2, #1
	strh r0, [r6, #2]
_08002C1C:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _08002C28
	movs r0, #0
	strh r0, [r6]
_08002C28:
	movs r2, #2
	ldrsh r0, [r6, r2]
	cmp r0, #0x3b
	bgt _08002C34
	movs r0, #0x3c
	strh r0, [r6, #2]
_08002C34:
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0xf0
	ble _08002C40
	movs r0, #0xf0
	strh r0, [r6]
_08002C40:
	movs r5, #2
	ldrsh r0, [r6, r5]
	cmp r0, #0xa0
	ble _08002C4C
	movs r0, #0xa0
	strh r0, [r6, #2]
_08002C4C:
	ldr r2, _08002C68 @ =gUnk_03003430
	ldrh r1, [r6]
	adds r0, r2, #0
	adds r0, #0x40
	strh r1, [r0]
	ldr r0, _08002C6C @ =gUnk_03002910
	ldrb r0, [r0]
	adds r4, r2, #0
	cmp r0, #0
	bne _08002C70
	ldrh r0, [r6, #2]
	adds r0, #0x10
	b _08002C72
	.align 2, 0
_08002C68: .4byte gUnk_03003430
_08002C6C: .4byte gUnk_03002910
_08002C70:
	ldrh r0, [r6, #2]
_08002C72:
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #0xf
	bl __divsi3
	strh r0, [r4, #0x24]
	ldrb r0, [r6, #0xc]
	lsrs r0, r0, #4
	cmp r0, #0
	beq _08002CE6
	cmp r0, #1
	bne _08002CE6
	ldr r4, _08002CDC @ =gUnk_03002920
	ldrh r0, [r4]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	subs r0, r0, r1
	bl Abs
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _08002CAE
	movs r5, #0
_08002CAE:
	ldrh r0, [r4, #2]
	movs r3, #0xfd
	lsls r3, r3, #1
	adds r1, r4, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	bl Abs
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08002CC8
	movs r1, #0
_08002CC8:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	ble _08002CE0
	movs r0, #0xfe
	ands r0, r2
	b _08002CE4
	.align 2, 0
_08002CDC: .4byte gUnk_03002920
_08002CE0:
	movs r0, #0xfe
	ands r0, r1
_08002CE4:
	strh r0, [r6, #0xa]
_08002CE6:
	ldrh r0, [r6, #4]
	ldrh r5, [r6, #0xa]
	cmp r0, r5
	bls _08002CF2
	subs r0, #2
	strh r0, [r6, #4]
_08002CF2:
	ldrh r0, [r6, #4]
	ldrh r1, [r6, #0xa]
	cmp r0, r1
	bhs _08002CFE
	adds r0, #2
	strh r0, [r6, #4]
_08002CFE:
	ldrb r1, [r6, #0xc]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08002D1A
	ldrh r0, [r6, #4]
	cmp r0, #0x60
	bls _08002D12
	movs r0, #0x60
	strh r0, [r6, #4]
_08002D12:
	ldrh r0, [r6, #4]
	cmp r0, #0
	bne _08002D1A
	strh r0, [r6, #4]
_08002D1A:
	ldr r2, _08002D50 @ =gUnk_030034AC
	ldrh r1, [r6, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	ldr r1, _08002D54 @ =gUnk_03005420
	strh r0, [r1]
	ldr r6, _08002D58 @ =gUnk_03004C20
	ldrb r5, [r6, #0xd]
	adds r7, r2, #0
	cmp r5, #4
	beq _08002D38
	b _08002EE0
_08002D38:
	ldr r4, _08002D5C @ =gUnk_03005400
	ldrb r0, [r4, #0xe]
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	bne _08002D64
	ldr r0, _08002D60 @ =gUnk_03002910
	ldrb r0, [r0]
	strb r0, [r4, #0x16]
	strb r1, [r4, #0x14]
	b _08002DF0
	.align 2, 0
_08002D50: .4byte gUnk_030034AC
_08002D54: .4byte gUnk_03005420
_08002D58: .4byte gUnk_03004C20
_08002D5C: .4byte gUnk_03005400
_08002D60: .4byte gUnk_03002910
_08002D64:
	ldr r0, [r6]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08002DF0
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	bl Abs
	cmp r0, #4
	bgt _08002DAC
	ldr r3, _08002DA4 @ =gUnk_03002910
	movs r2, #0x16
	ldrsb r2, [r4, r2]
	ldr r1, _08002DA8 @ =gUnk_080D8E14
	ldrb r0, [r4, #0x14]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #8
	strb r0, [r3]
	ldr r0, [r6]
	ands r0, r5
	cmp r0, #0
	beq _08002DF0
	ldrb r0, [r4, #0x14]
	adds r0, #4
	strb r0, [r4, #0x14]
	b _08002DF0
	.align 2, 0
_08002DA4: .4byte gUnk_03002910
_08002DA8: .4byte gUnk_080D8E14
_08002DAC:
	ldr r3, _08002DE4 @ =gUnk_03002910
	movs r2, #0x16
	ldrsb r2, [r4, r2]
	ldr r1, _08002DE8 @ =gUnk_080D8E14
	ldrb r0, [r4, #0x14]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r2, r0
	asrs r0, r0, #8
	strb r0, [r3]
	ldrb r0, [r4, #0x14]
	adds r0, #4
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08002DF0
	ldrb r1, [r4, #0x16]
	movs r0, #0x16
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _08002DEC
	subs r0, r1, #1
	b _08002DEE
	.align 2, 0
_08002DE4: .4byte gUnk_03002910
_08002DE8: .4byte gUnk_080D8E14
_08002DEC:
	adds r0, r1, #1
_08002DEE:
	strb r0, [r4, #0x16]
_08002DF0:
	ldr r3, _08002F98 @ =gUnk_03005440
	ldr r2, _08002F9C @ =gUnk_080D8E14
	ldr r4, _08002FA0 @ =gUnk_03002910
	ldrb r0, [r4]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r0, r0, #5
	rsbs r0, r0, #0
	strh r0, [r3]
	ldrb r0, [r4]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r3, #4]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r0, r0, #5
	rsbs r0, r0, #0
	strh r0, [r3, #2]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r3, #6]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	bl Abs
	ldr r2, _08002FA4 @ =gUnk_03004C20
	movs r1, #0xa
	subs r1, r1, r0
	ldr r0, [r2]
	bl __umodsi3
	cmp r0, #0
	bne _08002E9E
	ldr r0, _08002FA8 @ =gUnk_03005400
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _08002E9E
	ldr r0, _08002FAC @ =gUnk_03005220
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _08002E9E
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	blt _08002E86
	cmp r2, #2
	ble _08002E9E
_08002E86:
	cmp r2, #0
	ble _08002E92
	ldr r1, _08002FB0 @ =gUnk_03002920
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
_08002E92:
	cmp r2, #0
	bge _08002E9E
	ldr r1, _08002FB0 @ =gUnk_03002920
	ldrh r0, [r1]
	subs r0, #3
	strh r0, [r1]
_08002E9E:
	ldr r2, _08002FA0 @ =gUnk_03002910
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x14
	ble _08002EAC
	movs r0, #0x14
	strb r0, [r2]
_08002EAC:
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08002EBC
	movs r0, #0xec
	strb r0, [r2]
_08002EBC:
	ldr r0, _08002FB4 @ =gUnk_03003430
	adds r0, #0x42
	movs r1, #0x58
	strh r1, [r0]
	ldr r1, _08002F98 @ =gUnk_03005440
	ldrh r0, [r1]
	adds r0, #0xf0
	strh r0, [r1]
	ldrh r0, [r1, #4]
	adds r0, #0xf0
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	adds r0, #0xdc
	strh r0, [r1, #2]
	ldrh r0, [r1, #6]
	adds r0, #0xdc
	strh r0, [r1, #6]
	ldr r7, _08002FB8 @ =gUnk_030034AC
_08002EE0:
	ldr r6, _08002F9C @ =gUnk_080D8E14
	ldr r5, _08002FA0 @ =gUnk_03002910
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r4, [r0, r3]
	movs r1, #0
	ldrsh r0, [r7, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08002FBC @ =gUnk_030047B0
	strh r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0
	ldrsh r0, [r7, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08002FC0 @ =gUnk_03005464
	strh r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r7, _08002FC4 @ =gUnk_03005420
	movs r1, #0
	ldrsh r0, [r7, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08002FC8 @ =gUnk_030051BC
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0
	ldrsh r0, [r7, r3]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r1, _08002FCC @ =gUnk_03000808
	strh r0, [r1]
	bl sub_0803D15C
	ldr r0, _08002FA4 @ =gUnk_03004C20
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bne _08002F90
	ldr r4, _08002FB4 @ =gUnk_03003430
	ldrh r0, [r7]
	movs r1, #3
	bl __udivsi3
	subs r0, #0x28
	strh r0, [r4, #0x26]
_08002F90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002F98: .4byte gUnk_03005440
_08002F9C: .4byte gUnk_080D8E14
_08002FA0: .4byte gUnk_03002910
_08002FA4: .4byte gUnk_03004C20
_08002FA8: .4byte gUnk_03005400
_08002FAC: .4byte gUnk_03005220
_08002FB0: .4byte gUnk_03002920
_08002FB4: .4byte gUnk_03003430
_08002FB8: .4byte gUnk_030034AC
_08002FBC: .4byte gUnk_030047B0
_08002FC0: .4byte gUnk_03005464
_08002FC4: .4byte gUnk_03005420
_08002FC8: .4byte gUnk_030051BC
_08002FCC: .4byte gUnk_03000808
	thumb_func_end sub_08002AC4

	thumb_func_start sub_08002FD0
sub_08002FD0: @ 0x08002FD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r6, #0
	ldr r5, _08003030 @ =gUnk_03004654
	ldr r3, _08003034 @ =gUnk_03004C20
	ldrb r0, [r3, #0xd]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _08003038 @ =gUnk_08051FE8
	adds r1, r1, r0
	ldrb r2, [r3, #0xc]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov ip, r1
	str r1, [r5]
	ldr r4, _0800303C @ =gUnk_03000800
	ldr r2, _08003040 @ =gUnk_08052624
	ldrb r1, [r3, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r3, #0xc]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r2, [r3, #0xc]
	adds r7, r3, #0
	cmp r2, #0
	bne _08003050
	ldr r1, _08003044 @ =gUnk_03005210
	ldr r2, _08003048 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xe]
	ldr r0, _0800304C @ =gUnk_03005468
	strh r6, [r0]
	strh r6, [r0, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800306A
	.align 2, 0
_08003030: .4byte gUnk_03004654
_08003034: .4byte gUnk_03004C20
_08003038: .4byte gUnk_08051FE8
_0800303C: .4byte gUnk_03000800
_08003040: .4byte gUnk_08052624
_08003044: .4byte gUnk_03005210
_08003048: .4byte 0x0000FFFF
_0800304C: .4byte gUnk_03005468
_08003050:
	cmp r2, #8
	bne _0800307C
	ldr r1, _08003070 @ =gUnk_03005210
	ldr r3, _08003074 @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xe]
	ldr r0, _08003078 @ =gUnk_03005468
	strh r6, [r0]
	strh r6, [r0, #2]
	movs r1, #0x80
	lsls r1, r1, #2
_0800306A:
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	b _08003206
	.align 2, 0
_08003070: .4byte gUnk_03005210
_08003074: .4byte 0x0000FFFF
_08003078: .4byte gUnk_03005468
_0800307C:
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	bne _080030C0
	ldr r3, _080030AC @ =gUnk_030051C8
	mov r1, ip
	ldrb r0, [r1, #1]
	subs r0, #1
	strb r0, [r3]
	ldr r1, _080030B0 @ =gUnk_03005210
	ldr r2, _080030B4 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0
	strh r6, [r7, #8]
	ldr r1, _080030B8 @ =gUnk_03005284
	ldr r0, [r1]
	strb r2, [r0, #6]
	ldr r1, [r1]
	ldr r0, _080030BC @ =gUnk_03005220
	str r6, [r0, #4]
	str r6, [r1, #0x18]
	adds r0, r3, #0
	b _0800311C
	.align 2, 0
_080030AC: .4byte gUnk_030051C8
_080030B0: .4byte gUnk_03005210
_080030B4: .4byte 0x0000FFFF
_080030B8: .4byte gUnk_03005284
_080030BC: .4byte gUnk_03005220
_080030C0:
	cmp r0, #0xff
	bne _08003118
	ldr r1, _080030F8 @ =gUnk_03005210
	ldr r3, _080030FC @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08003100 @ =gUnk_03005284
	ldr r0, [r1]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _080030E4
	ldrb r0, [r7, #0xd]
	cmp r0, #6
	bne _08003108
	cmp r2, #1
	beq _080030E4
	cmp r2, #3
	bne _08003108
_080030E4:
	ldr r1, _08003104 @ =gUnk_030051C8
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #0
	strh r0, [r7, #8]
	adds r0, r1, #0
	b _0800311C
	.align 2, 0
_080030F8: .4byte gUnk_03005210
_080030FC: .4byte 0x0000FFFF
_08003100: .4byte gUnk_03005284
_08003104: .4byte gUnk_030051C8
_08003108:
	ldr r0, _08003114 @ =gUnk_030051C8
	ldr r1, [r1]
	ldrb r1, [r1, #6]
	strb r1, [r0]
	movs r6, #1
	b _0800311C
	.align 2, 0
_08003114: .4byte gUnk_030051C8
_08003118:
	movs r6, #2
	ldr r0, _08003224 @ =gUnk_030051C8
_0800311C:
	ldr r3, _08003228 @ =0x080D48C8
	ldrb r1, [r0]
	adds r1, #1
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	subs r1, r1, r0
	lsls r1, r1, #3
	ldrb r0, [r7, #0xc]
	subs r0, #1
	movs r2, #0xa8
	muls r0, r2, r0
	adds r1, r1, r0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r2, #0x93
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1, #4]
	lsrs r0, r0, #2
	strb r0, [r7, #0xe]
	ldr r3, _0800322C @ =gUnk_03005468
	ldr r4, _08003230 @ =0x080D2E88
	ldrb r2, [r7, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	ldrb r1, [r7, #0xc]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r4
	ldrh r0, [r2]
	strh r0, [r3]
	ldrb r2, [r7, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	ldrb r1, [r7, #0xc]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r4
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	ldrb r2, [r7, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	ldrb r1, [r7, #0xc]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r4
	ldrh r0, [r2, #4]
	strh r0, [r3, #4]
	ldrb r2, [r7, #0xe]
	subs r2, #1
	lsls r2, r2, #3
	ldrb r1, [r7, #0xc]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r2, r2, r0
	adds r2, r2, r4
	ldrh r0, [r2, #6]
	strh r0, [r3, #6]
	ldr r2, _08003234 @ =gUnk_030051CC
	ldrh r0, [r3, #4]
	ldrh r1, [r3]
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	strh r1, [r2]
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	strh r1, [r2, #2]
_08003206:
	ldr r4, _08003238 @ =gUnk_03004C20
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	str r0, [r4]
	bl sub_080144C4
	ldrb r2, [r4, #0xc]
	cmp r2, #0
	beq _0800323C
	adds r0, r6, #0
	bl sub_0800CA0C
	b _08003274
	.align 2, 0
_08003224: .4byte gUnk_030051C8
_08003228: .4byte 0x080D48C8
_0800322C: .4byte gUnk_03005468
_08003230: .4byte 0x080D2E88
_08003234: .4byte gUnk_030051CC
_08003238: .4byte gUnk_03004C20
_0800323C:
	ldr r1, _08003294 @ =gUnk_030034E4
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08003298 @ =gUnk_03003510
	ldr r0, _0800329C @ =InputHandler_Normal
	str r0, [r1, #0x28]
	ldr r0, _080032A0 @ =sub_080453F0
	str r0, [r1, #0x2c]
	ldr r0, _080032A4 @ =sub_0800C45C
	str r0, [r1, #0x30]
	ldr r0, _080032A8 @ =gUnk_03003410
	strb r2, [r0, #5]
	ldr r0, _080032AC @ =sub_08048028
	str r0, [r1, #0x34]
	ldr r0, _080032B0 @ =sub_080242C0
	str r0, [r1, #0x38]
	movs r0, #1
	str r0, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r2, [r0]
	adds r1, #0x79
	movs r0, #6
	strb r0, [r1]
_08003274:
	ldr r0, _080032B4 @ =gUnk_03002920
	ldrh r3, [r0]
	ldr r1, _080032B8 @ =gUnk_03005468
	ldrh r4, [r1]
	adds r2, r4, #0
	adds r2, #0x78
	adds r6, r1, #0
	adds r7, r0, #0
	cmp r3, r2
	bge _080032C0
	ldr r1, _080032BC @ =gUnk_03003430
	adds r0, r1, #0
	adds r0, #0x40
	strh r4, [r0]
	adds r5, r1, #0
	b _080032E2
	.align 2, 0
_08003294: .4byte gUnk_030034E4
_08003298: .4byte gUnk_03003510
_0800329C: .4byte InputHandler_Normal
_080032A0: .4byte sub_080453F0
_080032A4: .4byte sub_0800C45C
_080032A8: .4byte gUnk_03003410
_080032AC: .4byte sub_08048028
_080032B0: .4byte sub_080242C0
_080032B4: .4byte gUnk_03002920
_080032B8: .4byte gUnk_03005468
_080032BC: .4byte gUnk_03003430
_080032C0:
	ldrh r1, [r6, #4]
	adds r0, r1, #0
	subs r0, #0x78
	cmp r0, r3
	bge _080032D4
	ldr r2, _080032D0 @ =gUnk_03003430
	subs r1, #0xf0
	b _080032DA
	.align 2, 0
_080032D0: .4byte gUnk_03003430
_080032D4:
	ldr r2, _080032F8 @ =gUnk_03003430
	adds r1, r3, #0
	subs r1, #0x78
_080032DA:
	adds r0, r2, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r5, r2, #0
_080032E2:
	ldrh r2, [r7, #2]
	ldrh r1, [r6, #2]
	adds r0, r1, #0
	adds r0, #0x78
	cmp r2, r0
	bge _080032FC
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	b _08003310
	.align 2, 0
_080032F8: .4byte gUnk_03003430
_080032FC:
	ldrh r1, [r6, #6]
	adds r0, r1, #0
	subs r0, #0x28
	cmp r0, r2
	blt _08003308
	adds r0, r2, #0
_08003308:
	subs r0, #0x78
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
_08003310:
	ldr r0, _08003364 @ =gUnk_03004C20
	ldrb r1, [r0, #0xc]
	adds r7, r0, #0
	cmp r1, #6
	bne _08003332
	ldr r1, _08003368 @ =gUnk_030034E8
	ldr r0, [r1]
	cmp r0, #0
	bne _08003332
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08003332
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
_08003332:
	ldrb r0, [r7, #0xc]
	cmp r0, #8
	beq _0800337C
	movs r0, #0
	bl sub_0800343C
	ldr r1, _0800336C @ =0x040000D4
	ldr r0, _08003370 @ =gUnk_03004DB0
	str r0, [r1]
	ldr r0, _08003374 @ =gUnk_03003430
	ldr r0, [r0, #0x3c]
	str r0, [r1, #4]
	ldr r0, _08003378 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080033F2
_0800335A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0800335A
	b _080033F2
	.align 2, 0
_08003364: .4byte gUnk_03004C20
_08003368: .4byte gUnk_030034E8
_0800336C: .4byte 0x040000D4
_08003370: .4byte gUnk_03004DB0
_08003374: .4byte gUnk_03003430
_08003378: .4byte 0x80000200
_0800337C:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08003400 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08003404 @ =gUnk_03003650
	str r2, [r1, #4]
	ldr r0, _08003408 @ =0x81000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r6, #0
	mov r8, r2
	adds r4, r1, #0
	ldr r1, _0800340C @ =gUnk_03004790
	ldr r0, _08003410 @ =gUnk_03003478
	ldrh r2, [r0]
	ldr r7, [r1, #0x14]
	mov ip, r8
_080033A2:
	adds r0, r6, #0
	muls r0, r2, r0
	adds r0, r7, r0
	str r0, [r4]
	lsls r0, r6, #6
	add r0, ip
	str r0, [r4, #4]
	ldr r0, _08003414 @ =0x8000001E
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r3, r6, #1
	cmp r0, #0
	bge _080033CA
_080033C2:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _080033C2
_080033CA:
	adds r6, r3, #0
	cmp r6, #0x27
	bls _080033A2
	ldr r1, _08003400 @ =0x040000D4
	mov r2, r8
	str r2, [r1]
	ldr r0, [r5, #0x3c]
	str r0, [r1, #4]
	ldr r0, _08003418 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080033F2
_080033EA:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080033EA
_080033F2:
	ldr r0, _0800341C @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _08003424
	ldr r1, _08003420 @ =gUnk_03003430
	movs r0, #0
	b _08003428
	.align 2, 0
_08003400: .4byte 0x040000D4
_08003404: .4byte gUnk_03003650
_08003408: .4byte 0x81000800
_0800340C: .4byte gUnk_03004790
_08003410: .4byte gUnk_03003478
_08003414: .4byte 0x8000001E
_08003418: .4byte 0x80000800
_0800341C: .4byte gUnk_03004C20
_08003420: .4byte gUnk_03003430
_08003424:
	ldr r1, _08003438 @ =gUnk_03003430
	movs r0, #0x50
_08003428:
	strh r0, [r1, #0x26]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003438: .4byte gUnk_03003430
	thumb_func_end sub_08002FD0

	thumb_func_start sub_0800343C
sub_0800343C: @ 0x0800343C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r3, _08003494 @ =gUnk_03003430
	adds r2, r3, #0
	adds r2, #0x42
	lsls r1, r0, #3
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r6, #0
	mov sl, r3
	movs r0, #0x40
	add r0, sl
	mov sb, r0
	movs r7, #0x1f
	mov r8, r2
	ldr r1, _08003498 @ =0x000003FF
	mov ip, r1
_0800346E:
	mov r2, sb
	ldrh r0, [r2]
	lsrs r1, r0, #3
	adds r0, r6, #0
	ands r0, r7
	adds r0, r1, r0
	lsrs r2, r0, #5
	mov r3, r8
	ldrh r0, [r3]
	lsrs r0, r0, #3
	ands r0, r7
	lsls r0, r0, #5
	adds r5, r0, r6
	cmp r2, #0
	beq _0800349C
	lsls r0, r2, #5
	subs r0, r1, r0
	adds r5, r5, r0
	b _0800349E
	.align 2, 0
_08003494: .4byte gUnk_03003430
_08003498: .4byte 0x000003FF
_0800349C:
	adds r5, r5, r1
_0800349E:
	mov r4, ip
	ands r5, r4
	ldr r0, _08003500 @ =gUnk_03004DB0
	adds r5, r5, r0
	str r5, [sp, #4]
	ldr r0, _08003504 @ =gUnk_03003430
	adds r0, #0x48
	ldrh r2, [r0]
	lsrs r0, r6, #5
	adds r1, r2, #0
	muls r1, r0, r1
	adds r3, r6, #0
	ands r3, r7
	mov r4, r8
	ldrh r0, [r4]
	lsrs r0, r0, #3
	adds r4, r0, #0
	muls r4, r2, r4
	mov r5, sb
	ldrh r0, [r5]
	lsrs r0, r0, #3
	ldr r5, _08003508 @ =gUnk_03004790
	ldr r2, [r5, #0x14]
	adds r1, r1, r3
	adds r1, r1, r4
	adds r1, r1, r0
	adds r2, r2, r1
	ldrb r0, [r2]
	ldr r1, [sp, #4]
	strb r0, [r1]
	adds r6, #1
	cmp r6, ip
	bls _0800346E
	mov r1, sl
	adds r1, #0x42
	ldr r2, [sp]
	lsls r0, r2, #3
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003500: .4byte gUnk_03004DB0
_08003504: .4byte gUnk_03003430
_08003508: .4byte gUnk_03004790
	thumb_func_end sub_0800343C

	thumb_func_start sub_0800350C
sub_0800350C: @ 0x0800350C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080036CC @ =0x04000200
	ldrh r1, [r0]
	ldr r0, _080036D0 @ =0x0000FFFE
	ands r0, r1
	ldr r1, _080036CC @ =0x04000200
	strh r0, [r1]
	ldr r2, _080036D4 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _080036D8 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r6, _080036DC @ =0x00000704
	adds r0, r6, #0
	strh r0, [r1]
	ldr r5, _080036E0 @ =0x04000048
	ldr r4, _080036E4 @ =0x0400004A
	ldr r3, _080036E8 @ =0x04000040
	adds r2, #0x40
	adds r1, #0x42
	ldr r0, _080036EC @ =0x04000046
	movs r6, #0
	strh r6, [r0]
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r3]
	strh r0, [r4]
	ldrh r0, [r4]
	strh r0, [r5]
	ldr r0, _080036F0 @ =0x0400000C
	movs r1, #1
	strh r1, [r0]
	ldr r0, _080036F4 @ =gUnk_03003430
	movs r2, #0
	mov r8, r2
	mov r2, r8
	ldr r1, _080036F8 @ =gUnk_03003472
	strh r2, [r1]
	ldr r1, _080036FC @ =gUnk_03003470
	strh r2, [r1]
	strh r2, [r0, #0x26]
	strh r2, [r0, #0x24]
	strh r2, [r0, #0xa]
	strh r2, [r0, #8]
	ldr r2, _08003700 @ =gUnk_03002910
	mov sb, r2
	strb r6, [r2]
	ldr r4, _08003704 @ =gUnk_030034AC
	ldr r6, _08003708 @ =gUnk_03005420
	mov sl, r6
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r1, #0
	strh r0, [r6]
	strh r0, [r4]
	ldr r6, _0800370C @ =gUnk_080D8E14
	adds r0, r6, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r5, [r0, r2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl MultiplyQ8
	ldr r2, _08003710 @ =gUnk_030047B0
	strh r0, [r2]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r5, [r0, r2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl MultiplyQ8
	ldr r7, _08003714 @ =gUnk_03005464
	strh r0, [r7]
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r5, _08003718 @ =gUnk_030051BC
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r4, [r0, r2]
	mov r6, sl
	movs r1, #0
	ldrsh r0, [r6, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r4, _0800371C @ =gUnk_03000808
	strh r0, [r4]
	ldr r3, _08003720 @ =gUnk_030007FC
	ldr r2, _080036FC @ =gUnk_03003470
	ldrh r1, [r2]
	adds r1, #0x78
	lsls r1, r1, #8
	ldr r6, _08003710 @ =gUnk_030047B0
	movs r0, #0
	ldrsh r2, [r6, r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r6, #0
	ldrsh r2, [r7, r6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r3]
	ldr r3, _08003724 @ =gUnk_030051D0
	ldr r0, _080036F8 @ =gUnk_03003472
	ldrh r1, [r0]
	adds r1, #0x50
	lsls r1, r1, #8
	movs r6, #0
	ldrsh r2, [r5, r6]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r3]
	ldr r1, _08003728 @ =0x040000D4
	ldr r0, _0800372C @ =0x080D927C
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08003730 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08003734 @ =0x080D947C
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08003738 @ =0x80004B00
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800373C @ =gUnk_03004C20
	mov r1, r8
	str r1, [r0]
	ldr r1, _08003740 @ =gUnk_03003510
	ldr r0, _08003744 @ =sub_08003750
	str r0, [r1, #4]
	ldr r1, _08003748 @ =gIntrTable
	ldr r0, _0800374C @ =sub_08000DC0
	str r0, [r1]
	ldr r2, _080036CC @ =0x04000200
	ldrh r0, [r2]
	movs r6, #1
	orrs r0, r6
	strh r0, [r2]
	ldr r1, _080036D4 @ =0x04000004
	ldrh r0, [r1]
	movs r1, #8
	orrs r0, r1
	ldr r2, _080036D4 @ =0x04000004
	strh r0, [r2]
	bl m4aMPlayAllStop
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080036CC: .4byte 0x04000200
_080036D0: .4byte 0x0000FFFE
_080036D4: .4byte 0x04000004
_080036D8: .4byte 0x0000FFF7
_080036DC: .4byte 0x00000704
_080036E0: .4byte 0x04000048
_080036E4: .4byte 0x0400004A
_080036E8: .4byte 0x04000040
_080036EC: .4byte 0x04000046
_080036F0: .4byte 0x0400000C
_080036F4: .4byte gUnk_03003430
_080036F8: .4byte gUnk_03003472
_080036FC: .4byte gUnk_03003470
_08003700: .4byte gUnk_03002910
_08003704: .4byte gUnk_030034AC
_08003708: .4byte gUnk_03005420
_0800370C: .4byte gUnk_080D8E14
_08003710: .4byte gUnk_030047B0
_08003714: .4byte gUnk_03005464
_08003718: .4byte gUnk_030051BC
_0800371C: .4byte gUnk_03000808
_08003720: .4byte gUnk_030007FC
_08003724: .4byte gUnk_030051D0
_08003728: .4byte 0x040000D4
_0800372C: .4byte 0x080D927C
_08003730: .4byte 0x80000100
_08003734: .4byte 0x080D947C
_08003738: .4byte 0x80004B00
_0800373C: .4byte gUnk_03004C20
_08003740: .4byte gUnk_03003510
_08003744: .4byte sub_08003750
_08003748: .4byte gIntrTable
_0800374C: .4byte sub_08000DC0
	thumb_func_end sub_0800350C

	thumb_func_start sub_08003750
sub_08003750: @ 0x08003750
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, _0800387C @ =gUnk_080D8E14
	ldr r0, _08003880 @ =gUnk_03002910
	mov sl, r0
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r2, _08003884 @ =gUnk_030034AC
	movs r1, #0
	ldrsh r0, [r2, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r2, _08003888 @ =gUnk_030047B0
	mov sb, r2
	strh r0, [r2]
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r2, _08003884 @ =gUnk_030034AC
	movs r1, #0
	ldrsh r0, [r2, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r2, _0800388C @ =gUnk_03005464
	mov r8, r2
	strh r0, [r2]
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r7, _08003890 @ =gUnk_03005420
	movs r1, #0
	ldrsh r0, [r7, r1]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r6, _08003894 @ =gUnk_030051BC
	strh r0, [r6]
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0
	ldrsh r0, [r7, r2]
	bl ReciprocalQ8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl MultiplyQ8
	ldr r5, _08003898 @ =gUnk_03000808
	strh r0, [r5]
	ldr r4, _0800389C @ =gUnk_030007FC
	mov ip, r4
	ldr r3, _080038A0 @ =gUnk_03003430
	adds r0, r3, #0
	adds r0, #0x40
	ldrh r1, [r0]
	adds r1, #0x78
	lsls r1, r1, #8
	mov r0, sb
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	mov r0, r8
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	mov r0, ip
	str r1, [r0]
	ldr r4, _080038A4 @ =gUnk_030051D0
	adds r3, #0x42
	ldrh r1, [r3]
	adds r1, #0x50
	lsls r1, r1, #8
	movs r0, #0
	ldrsh r2, [r6, r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r0, #0
	ldrsh r2, [r5, r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	subs r1, r1, r0
	str r1, [r4]
	ldr r2, _08003884 @ =gUnk_030034AC
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080038AC
	mov r4, sl
	ldrb r0, [r4]
	adds r0, #8
	strb r0, [r4]
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2]
	ldrh r0, [r7]
	subs r0, #0x10
	strh r0, [r7]
	ldr r1, _080038A8 @ =gUnk_03004C20
	movs r0, #0
	str r0, [r1]
	b _080038DE
	.align 2, 0
_0800387C: .4byte gUnk_080D8E14
_08003880: .4byte gUnk_03002910
_08003884: .4byte gUnk_030034AC
_08003888: .4byte gUnk_030047B0
_0800388C: .4byte gUnk_03005464
_08003890: .4byte gUnk_03005420
_08003894: .4byte gUnk_030051BC
_08003898: .4byte gUnk_03000808
_0800389C: .4byte gUnk_030007FC
_080038A0: .4byte gUnk_03003430
_080038A4: .4byte gUnk_030051D0
_080038A8: .4byte gUnk_03004C20
_080038AC:
	ldr r2, _080038EC @ =gUnk_03004C20
	ldr r1, [r2]
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, r0
	beq _080038C4
	ldr r0, _080038F0 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080038DE
_080038C4:
	ldr r1, _080038F4 @ =gUnk_030007D8
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080038F8 @ =gUnk_03003410
	movs r0, #1
	strb r0, [r1, #7]
	movs r0, #6
	strb r0, [r2, #0xd]
	movs r0, #3
	strb r0, [r2, #0xc]
	ldr r1, _080038FC @ =gUnk_03003510
	ldr r0, _08003900 @ =sub_080245E8
	str r0, [r1, #4]
_080038DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080038EC: .4byte gUnk_03004C20
_080038F0: .4byte gNewKeys
_080038F4: .4byte gUnk_030007D8
_080038F8: .4byte gUnk_03003410
_080038FC: .4byte gUnk_03003510
_08003900: .4byte sub_080245E8
	thumb_func_end sub_08003750

	thumb_func_start sub_08003904
sub_08003904: @ 0x08003904
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	ldr r2, _08003ADC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08003AE0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08003AE4 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08003AE8 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	bl m4aMPlayAllStop
	movs r2, #0
	movs r3, #0xff
	ldr r1, _08003AEC @ =gUnk_03000830
_0800392E:
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	ldrb r0, [r1, #1]
	orrs r0, r3
	strb r0, [r1, #1]
	adds r1, #4
	adds r2, #1
	cmp r2, #0x2c
	bls _0800392E
	ldr r0, _08003AF0 @ =gUnk_03003410
	mov r8, r0
	ldrb r1, [r0, #8]
	cmp r1, #0
	bne _08003950
	ldr r0, _08003AF4 @ =gUnk_03004C20
	strb r1, [r0, #0xc]
_08003950:
	ldr r3, _08003AF8 @ =gUnk_030051DC
	ldr r2, _08003AFC @ =gUnk_0818B8E0
	ldr r7, _08003AF4 @ =gUnk_03004C20
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r7, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldr r1, _08003B00 @ =gUnk_030007DC
	ldr r0, _08003B04 @ =0x05000200
	str r0, [r1]
	ldr r1, _08003B08 @ =gUnk_03005490
	ldr r0, _08003B0C @ =0x06010000
	str r0, [r1]
	bl sub_08003D80
	ldr r0, _08003B10 @ =gUnk_03002920
	ldrh r2, [r0]
	ldrh r3, [r0, #2]
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	movs r0, #0x6e
	str r0, [sp, #0x10]
	movs r0, #0
	movs r1, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r6, #0x1c
	str r6, [sp, #0xc]
	movs r5, #0x34
	str r5, [sp, #0x10]
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #2
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #3
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #4
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #5
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #6
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #7
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #8
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #9
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #0xa
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_08003DC0
	ldr r5, _08003B14 @ =0x0000FFE0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #0xb
	movs r1, #0xb
	adds r2, r5, #0
	movs r3, #0x3c
	bl sub_08003DC0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #0xc
	movs r1, #0xc
	adds r2, r5, #0
	movs r3, #0x74
	bl sub_08003DC0
	bl sub_08039920
	mov r3, r8
	ldrb r0, [r3, #8]
	cmp r0, #1
	beq _08003AB8
	b _08003C88
_08003AB8:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	beq _08003B1C
	bl sub_08025F94
	bl sub_08025DD4
	ldrb r0, [r7, #0xc]
	cmp r0, #8
	beq _08003B20
	ldrh r1, [r7, #0xc]
	ldr r0, _08003B18 @ =0x00000603
	cmp r1, r0
	beq _08003B20
	bl sub_08025E68
	b _08003B20
	.align 2, 0
_08003ADC: .4byte 0x04000200
_08003AE0: .4byte 0x0000FFFE
_08003AE4: .4byte 0x04000004
_08003AE8: .4byte 0x0000FFF7
_08003AEC: .4byte gUnk_03000830
_08003AF0: .4byte gUnk_03003410
_08003AF4: .4byte gUnk_03004C20
_08003AF8: .4byte gUnk_030051DC
_08003AFC: .4byte gUnk_0818B8E0
_08003B00: .4byte gUnk_030007DC
_08003B04: .4byte 0x05000200
_08003B08: .4byte gUnk_03005490
_08003B0C: .4byte 0x06010000
_08003B10: .4byte gUnk_03002920
_08003B14: .4byte 0x0000FFE0
_08003B18: .4byte 0x00000603
_08003B1C:
	bl sub_08026090
_08003B20:
	movs r5, #1
	rsbs r5, r5, #0
	ldr r1, _08003B34 @ =gUnk_03005220
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1d
	movs r6, #0
	mov r8, r1
	b _08003B8E
	.align 2, 0
_08003B34: .4byte gUnk_03005220
_08003B38:
	ldr r3, _08003BA4 @ =gUnk_03000900
	lsls r2, r5, #1
	ldr r7, _08003BA8 @ =0x0000024D
	adds r1, r2, r7
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r7, #0x3f
	adds r0, r2, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08003BAC @ =0x0000024E
	adds r1, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r7, #1
	adds r0, r2, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08003BB0 @ =0x0000026D
	adds r1, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r7, #0x1f
	adds r0, r2, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08003BB4 @ =0x0000026E
	adds r1, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r7, #1
	adds r2, r2, r7
	lsls r2, r2, #1
	adds r2, r2, r3
	ldrh r0, [r2]
	strh r0, [r1]
	adds r6, #1
_08003B8E:
	cmp r6, #2
	bhi _08003BDC
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08003BB8
	adds r5, #1
	movs r0, #2
	rsbs r0, r0, #0
	ands r4, r0
	b _08003B38
	.align 2, 0
_08003BA4: .4byte gUnk_03000900
_08003BA8: .4byte 0x0000024D
_08003BAC: .4byte 0x0000024E
_08003BB0: .4byte 0x0000026D
_08003BB4: .4byte 0x0000026E
_08003BB8:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08003BCA
	adds r5, #1
	movs r0, #3
	rsbs r0, r0, #0
	ands r4, r0
	b _08003B38
_08003BCA:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08003BDC
	adds r5, #1
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	b _08003B38
_08003BDC:
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x1d
	movs r6, #0
	ldr r2, _08003BEC @ =gUnk_03000900
	b _08003C44
	.align 2, 0
_08003BEC: .4byte gUnk_03000900
_08003BF0:
	ldr r3, _08003C5C @ =0x00000247
	adds r1, r5, r3
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r7, _08003C60 @ =0x00000286
	adds r0, r5, r7
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r3, #0x40
	adds r0, r5, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r7, #0x1f
	adds r1, r5, r7
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r3, #0x1f
	adds r0, r5, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r7, #1
	adds r1, r5, r7
	lsls r1, r1, #1
	adds r1, r1, r2
	adds r3, #1
	adds r0, r5, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r6, #1
_08003C44:
	cmp r6, #2
	bhi _08003C88
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08003C64
	movs r5, #0
	movs r0, #2
	rsbs r0, r0, #0
	ands r4, r0
	b _08003BF0
	.align 2, 0
_08003C5C: .4byte 0x00000247
_08003C60: .4byte 0x00000286
_08003C64:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08003C76
	movs r5, #2
	movs r0, #3
	rsbs r0, r0, #0
	ands r4, r0
	b _08003BF0
_08003C76:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08003C88
	movs r5, #4
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	b _08003BF0
_08003C88:
	ldr r2, _08003CC4 @ =0x08116620
	ldr r4, _08003CC8 @ =gUnk_03004C20
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r7, [r4, #0xc]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4, #0xc]
	ldr r1, _08003CCC @ =gUnk_030007C4
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _08003CD0 @ =gUnk_0300363C
	ldrb r0, [r0]
	subs r0, #9
	strb r0, [r1]
	ldr r0, _08003CC8 @ =gUnk_03004C20
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _08003CD4
	bl sub_0804575C
	b _08003CD8
	.align 2, 0
_08003CC4: .4byte 0x08116620
_08003CC8: .4byte gUnk_03004C20
_08003CCC: .4byte gUnk_030007C4
_08003CD0: .4byte gUnk_0300363C
_08003CD4:
	bl sub_0800B3C0
_08003CD8:
	ldr r0, _08003CF0 @ =gUnk_03004C20
	ldrb r1, [r0, #0xa]
	adds r4, r0, #0
	cmp r1, #0
	beq _08003CE8
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bne _08003CFC
_08003CE8:
	ldr r1, _08003CF4 @ =gUnk_03005418
	ldr r0, _08003CF8 @ =0x0805553C
	b _08003D00
	.align 2, 0
_08003CF0: .4byte gUnk_03004C20
_08003CF4: .4byte gUnk_03005418
_08003CF8: .4byte 0x0805553C
_08003CFC:
	ldr r1, _08003D40 @ =gUnk_03005418
	ldr r0, _08003D44 @ =0x080555A8
_08003D00:
	str r0, [r1]
	ldr r3, _08003D48 @ =gUnk_03005294
	ldr r2, _08003D4C @ =0x08189A24
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldr r2, _08003D50 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08003D54 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003D40: .4byte gUnk_03005418
_08003D44: .4byte 0x080555A8
_08003D48: .4byte gUnk_03005294
_08003D4C: .4byte 0x08189A24
_08003D50: .4byte 0x04000200
_08003D54: .4byte 0x04000004
	thumb_func_end sub_08003904
