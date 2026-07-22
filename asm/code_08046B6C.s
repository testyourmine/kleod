	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08046B6C
sub_08046B6C: @ 0x08046B6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sb, r0
	mov r0, sp
	mov r1, sb
	strb r1, [r0, #8]
	ldr r2, _08046C20 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08046C24 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08046C28 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08046C2C @ =0x0000FFF7
	ands r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOff
	ldr r1, _08046C30 @ =gUnk_0300520C
	ldr r3, _08046C34 @ =0x040000BA
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r1, _08046C38 @ =gUnk_03005208
	ldr r4, _08046C3C @ =0x040000C6
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _08046C40 @ =gUnk_0300465C
	ldr r5, _08046C44 @ =0x040000D2
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08046C48 @ =gUnk_030008E4
	ldr r6, _08046C4C @ =0x040000DE
	ldrh r0, [r6]
	strh r0, [r1]
	ldrh r2, [r3]
	ldr r1, _08046C50 @ =0x00007FFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldrh r2, [r4]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	ldrh r0, [r6]
	ands r1, r0
	strh r1, [r6]
	movs r5, #0
	mov r8, sp
_08046BDC:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	bl ReadEepromDword
	mov r0, sp
	ldr r1, _08046C54 @ =0x08117690
	bl StringCompare
	cmp r0, #0
	beq _08046C60
	adds r4, r5, #0
	adds r5, #0xf
	adds r7, r4, #0
	adds r7, #0x10
	mov r6, sb
	adds r6, #1
	cmp r4, r5
	bhs _08046C12
_08046C02:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08046C58 @ =0x08117688
	bl ProgramEepromDwordEx
	adds r4, #1
	cmp r4, r5
	blo _08046C02
_08046C12:
	ldr r0, _08046C5C @ =gUnk_030047FC
	ldr r0, [r0]
	adds r0, #0x26
	add r0, sb
	movs r1, #0
	strb r1, [r0]
	b _08046CF8
	.align 2, 0
_08046C20: .4byte 0x04000200
_08046C24: .4byte 0x0000FFFE
_08046C28: .4byte 0x04000004
_08046C2C: .4byte 0x0000FFF7
_08046C30: .4byte gUnk_0300520C
_08046C34: .4byte 0x040000BA
_08046C38: .4byte gUnk_03005208
_08046C3C: .4byte 0x040000C6
_08046C40: .4byte gUnk_0300465C
_08046C44: .4byte 0x040000D2
_08046C48: .4byte gUnk_030008E4
_08046C4C: .4byte 0x040000DE
_08046C50: .4byte 0x00007FFF
_08046C54: .4byte 0x08117690
_08046C58: .4byte 0x08117688
_08046C5C: .4byte gUnk_030047FC
_08046C60:
	ldr r4, _08046D34 @ =gUnk_030047FC
	ldr r0, [r4]
	adds r0, #0x26
	add r0, sb
	movs r1, #4
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	bl ReadEepromDword
	ldr r0, [r4]
	adds r0, #0x14
	add r0, sb
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x17
	add r0, sb
	ldrb r1, [r2, #1]
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x1a
	add r0, sb
	ldrb r1, [r2, #2]
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x1d
	add r0, sb
	ldrb r1, [r2, #3]
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x20
	add r0, sb
	ldrb r1, [r2, #4]
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x14
	mov r2, sb
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _08046CBE
	movs r0, #3
	strb r0, [r1]
_08046CBE:
	adds r0, r5, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	bl ReadEepromDword
	ldr r0, [r4]
	adds r0, #0x23
	add r0, sb
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	bl ReadEepromDword
	ldr r0, [r4]
	adds r0, #0x29
	add r0, sb
	mov r2, r8
	ldrb r1, [r2, #7]
	strb r1, [r0]
	adds r7, r5, #0
	adds r7, #0x10
	mov r6, sb
	adds r6, #1
_08046CF8:
	adds r5, r7, #0
	mov sb, r6
	cmp r5, #0x2e
	bhi _08046D02
	b _08046BDC
_08046D02:
	movs r0, #0x30
	mov r1, sp
	bl ReadEepromDword
	ldr r0, _08046D34 @ =gUnk_030047FC
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x26
	adds r1, r2, #0
	adds r1, #0x27
	ldrb r0, [r0]
	ldrb r1, [r1]
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	beq _08046D38
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08046D38
	strb r0, [r2, #0x12]
	b _08046D4A
	.align 2, 0
_08046D34: .4byte gUnk_030047FC
_08046D38:
	ldr r2, _08046D98 @ =gUnk_030047FC
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #0x12]
	ldr r1, [r2]
	adds r1, #0x12
	movs r0, #0x30
	bl ProgramEepromDwordEx
_08046D4A:
	ldr r1, _08046D9C @ =0x040000BA
	ldr r0, _08046DA0 @ =gUnk_0300520C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08046DA4 @ =gUnk_03005208
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08046DA8 @ =gUnk_0300465C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08046DAC @ =gUnk_030008E4
	ldrh r0, [r0]
	strh r0, [r1]
	mov r8, r8
	mov r8, r8
	mov r8, r8
	ldr r2, _08046DB0 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08046DB4 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl m4aSoundVSyncOn
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046D98: .4byte gUnk_030047FC
_08046D9C: .4byte 0x040000BA
_08046DA0: .4byte gUnk_0300520C
_08046DA4: .4byte gUnk_03005208
_08046DA8: .4byte gUnk_0300465C
_08046DAC: .4byte gUnk_030008E4
_08046DB0: .4byte 0x04000200
_08046DB4: .4byte 0x04000004

	thumb_func_start sub_08046DB8
sub_08046DB8: @ 0x08046DB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	movs r0, #0
	mov sb, r0
	ldr r1, _08046E74 @ =gUnk_0300520C
	ldr r3, _08046E78 @ =0x040000BA
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r1, _08046E7C @ =gUnk_03005208
	ldr r4, _08046E80 @ =0x040000C6
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _08046E84 @ =gUnk_0300465C
	ldr r5, _08046E88 @ =0x040000D2
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08046E8C @ =gUnk_030008E4
	ldr r6, _08046E90 @ =0x040000DE
	ldrh r0, [r6]
	strh r0, [r1]
	ldrh r2, [r3]
	ldr r1, _08046E94 @ =0x00007FFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldrh r2, [r4]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	ldrh r0, [r6]
	ands r1, r0
	strh r1, [r6]
_08046E0E:
	mov r1, r8
	cmp r1, #0
	bne _08046EA0
	ldr r1, _08046E98 @ =gUnk_03005284
	ldr r4, [r1]
	mov r2, sl
	strb r2, [r4, #3]
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x21
	mov r3, r8
	strb r3, [r2]
	adds r0, #0x20
	strb r3, [r0]
	movs r7, #0
	adds r5, r1, #0
	adds r3, r5, #0
_08046E30:
	ldr r1, [r3]
	adds r1, #0x20
	ldrb r0, [r4]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r2, [r3]
	adds r2, #0x21
	ldrb r0, [r2]
	ldrb r1, [r4]
	eors r0, r1
	strb r0, [r2]
	adds r4, #1
	adds r7, #1
	cmp r7, #0x1f
	bls _08046E30
	ldr r4, [r5]
	movs r7, #1
_08046E54:
	ldr r0, _08046E9C @ =gUnk_030047FC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	bl ProgramEepromDwordEx
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, #8
	adds r7, #1
	cmp r7, #5
	bls _08046E54
	b _08046F0A
	.align 2, 0
_08046E74: .4byte gUnk_0300520C
_08046E78: .4byte 0x040000BA
_08046E7C: .4byte gUnk_03005208
_08046E80: .4byte 0x040000C6
_08046E84: .4byte gUnk_0300465C
_08046E88: .4byte 0x040000D2
_08046E8C: .4byte gUnk_030008E4
_08046E90: .4byte 0x040000DE
_08046E94: .4byte 0x00007FFF
_08046E98: .4byte gUnk_03005284
_08046E9C: .4byte gUnk_030047FC
_08046EA0:
	ldr r5, _08046F4C @ =gUnk_03004670
	ldr r6, [r5]
	ldr r4, _08046F50 @ =gUnk_030047FC
	ldr r0, [r4]
	ldr r1, _08046F54 @ =0x08117690
	bl StringCopy
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	bl ProgramEepromDwordEx
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0x3d
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x3c
	strb r1, [r0]
	movs r7, #0
	adds r3, r5, #0
_08046EC8:
	ldr r1, [r3]
	adds r1, #0x3c
	ldrb r0, [r6]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r2, [r3]
	adds r2, #0x3d
	ldrb r0, [r2]
	ldrb r1, [r6]
	eors r0, r1
	strb r0, [r2]
	adds r6, #1
	adds r7, #1
	cmp r7, #0x3b
	bls _08046EC8
	ldr r6, [r5]
	movs r7, #6
_08046EEC:
	ldr r0, _08046F50 @ =gUnk_030047FC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl ProgramEepromDwordEx
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r6, #8
	adds r7, #1
	cmp r7, #0xe
	bls _08046EEC
_08046F0A:
	cmp r2, #0
	beq _08046F1A
	mov r0, sb
	movs r3, #1
	add sb, r3
	cmp r0, #9
	bhi _08046F1A
	b _08046E0E
_08046F1A:
	ldr r1, _08046F58 @ =0x040000BA
	ldr r0, _08046F5C @ =gUnk_0300520C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08046F60 @ =gUnk_03005208
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08046F64 @ =gUnk_0300465C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08046F68 @ =gUnk_030008E4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08046F4C: .4byte gUnk_03004670
_08046F50: .4byte gUnk_030047FC
_08046F54: .4byte 0x08117690
_08046F58: .4byte 0x040000BA
_08046F5C: .4byte gUnk_0300520C
_08046F60: .4byte gUnk_03005208
_08046F64: .4byte gUnk_0300465C
_08046F68: .4byte gUnk_030008E4

	thumb_func_start sub_08046F6C
sub_08046F6C: @ 0x08046F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r1, #0
	mov sb, r1
	ldr r1, _08047030 @ =gUnk_0300520C
	ldr r3, _08047034 @ =0x040000BA
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r1, _08047038 @ =gUnk_03005208
	ldr r4, _0804703C @ =0x040000C6
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _08047040 @ =gUnk_0300465C
	ldr r5, _08047044 @ =0x040000D2
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08047048 @ =gUnk_030008E4
	ldr r6, _0804704C @ =0x040000DE
	ldrh r0, [r6]
	strh r0, [r1]
	ldrh r2, [r3]
	ldr r1, _08047050 @ =0x00007FFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldrh r2, [r4]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	ldrh r0, [r6]
	ands r1, r0
	strh r1, [r6]
_08046FC2:
	mov r6, sl
	cmp r6, #0
	bne _0804705C
	ldr r0, _08047054 @ =gUnk_03005284
	ldr r5, [r0]
	movs r4, #1
_08046FCE:
	ldr r0, _08047058 @ =gUnk_030047FC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl ReadEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r5, #8
	adds r4, #1
	cmp r4, #5
	bls _08046FCE
	ldr r0, _08047054 @ =gUnk_03005284
	ldr r5, [r0]
	movs r4, #0
	adds r3, r0, #0
_08046FF4:
	ldrb r1, [r5]
	mov r6, r8
	adds r0, r6, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	eors r7, r1
	adds r5, #1
	adds r4, #1
	cmp r4, #0x1f
	bls _08046FF4
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r8, r0
	bne _08047020
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r7, r0
	beq _08047022
_08047020:
	movs r2, #2
_08047022:
	ldr r1, [r3]
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _080470DE
	movs r0, #3
	strb r0, [r1]
	b _080470DE
	.align 2, 0
_08047030: .4byte gUnk_0300520C
_08047034: .4byte 0x040000BA
_08047038: .4byte gUnk_03005208
_0804703C: .4byte 0x040000C6
_08047040: .4byte gUnk_0300465C
_08047044: .4byte 0x040000D2
_08047048: .4byte gUnk_030008E4
_0804704C: .4byte 0x040000DE
_08047050: .4byte 0x00007FFF
_08047054: .4byte gUnk_03005284
_08047058: .4byte gUnk_030047FC
_0804705C:
	ldr r0, _0804707C @ =gUnk_03004670
	ldr r5, [r0]
	ldr r4, _08047080 @ =gUnk_030047FC
	ldr r1, [r4]
	ldrb r0, [r1, #0x11]
	bl ReadEepromDword
	ldr r0, [r4]
	ldr r1, _08047084 @ =0x08117690
	bl StringCompare
	cmp r0, #0
	beq _08047088
	movs r2, #1
	b _080470E2
	.align 2, 0
_0804707C: .4byte gUnk_03004670
_08047080: .4byte gUnk_030047FC
_08047084: .4byte 0x08117690
_08047088:
	movs r4, #6
_0804708A:
	ldr r0, _08047120 @ =gUnk_030047FC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl ReadEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r5, #8
	adds r4, #1
	cmp r4, #0xe
	bls _0804708A
	ldr r0, _08047124 @ =gUnk_03004670
	ldr r5, [r0]
	movs r4, #0
	adds r3, r0, #0
_080470B0:
	ldrb r1, [r5]
	mov r6, r8
	adds r0, r6, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	eors r7, r1
	adds r5, #1
	adds r4, #1
	cmp r4, #0x3b
	bls _080470B0
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r8, r0
	bne _080470DC
	adds r0, r1, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r7, r0
	beq _080470DE
_080470DC:
	movs r2, #2
_080470DE:
	cmp r2, #0
	beq _080470EE
_080470E2:
	mov r0, sb
	movs r1, #1
	add sb, r1
	cmp r0, #9
	bhi _080470EE
	b _08046FC2
_080470EE:
	ldr r1, _08047128 @ =0x040000BA
	ldr r0, _0804712C @ =gUnk_0300520C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08047130 @ =gUnk_03005208
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08047134 @ =gUnk_0300465C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _08047138 @ =gUnk_030008E4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08047120: .4byte gUnk_030047FC
_08047124: .4byte gUnk_03004670
_08047128: .4byte 0x040000BA
_0804712C: .4byte gUnk_0300520C
_08047130: .4byte gUnk_03005208
_08047134: .4byte gUnk_0300465C
_08047138: .4byte gUnk_030008E4

	thumb_func_start sub_0804713C
sub_0804713C: @ 0x0804713C
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r1, _080471CC @ =gUnk_0300520C
	ldr r3, _080471D0 @ =0x040000BA
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r1, _080471D4 @ =gUnk_03005208
	ldr r4, _080471D8 @ =0x040000C6
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _080471DC @ =gUnk_0300465C
	ldr r5, _080471E0 @ =0x040000D2
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _080471E4 @ =gUnk_030008E4
	ldr r6, _080471E8 @ =0x040000DE
	ldrh r0, [r6]
	strh r0, [r1]
	ldrh r2, [r3]
	ldr r1, _080471EC @ =0x00007FFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldrh r2, [r4]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	ldrh r0, [r6]
	ands r1, r0
	strh r1, [r6]
_08047180:
	movs r4, #0
_08047182:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080471F0 @ =0x08117688
	bl ProgramEepromDwordEx
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, #1
	cmp r4, #0x3f
	bls _08047182
	cmp r2, #0
	beq _080471A2
	adds r0, r7, #0
	adds r7, #1
	cmp r0, #9
	bls _08047180
_080471A2:
	ldr r1, _080471D0 @ =0x040000BA
	ldr r0, _080471CC @ =gUnk_0300520C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _080471D4 @ =gUnk_03005208
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _080471DC @ =gUnk_0300465C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _080471E4 @ =gUnk_030008E4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080471CC: .4byte gUnk_0300520C
_080471D0: .4byte 0x040000BA
_080471D4: .4byte gUnk_03005208
_080471D8: .4byte 0x040000C6
_080471DC: .4byte gUnk_0300465C
_080471E0: .4byte 0x040000D2
_080471E4: .4byte gUnk_030008E4
_080471E8: .4byte 0x040000DE
_080471EC: .4byte 0x00007FFF
_080471F0: .4byte 0x08117688

	thumb_func_start sub_080471F4
sub_080471F4: @ 0x080471F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r7, _08047288 @ =gUnk_0300520C
	ldr r3, _0804728C @ =0x040000BA
	ldrh r0, [r3]
	strh r0, [r7]
	ldr r0, _08047290 @ =gUnk_03005208
	mov sl, r0
	ldr r6, _08047294 @ =0x040000C6
	ldrh r0, [r6]
	mov r1, sl
	strh r0, [r1]
	ldr r0, _08047298 @ =gUnk_0300465C
	mov sb, r0
	ldr r5, _0804729C @ =0x040000D2
	ldrh r0, [r5]
	mov r1, sb
	strh r0, [r1]
	ldr r0, _080472A0 @ =gUnk_030008E4
	mov r8, r0
	ldr r4, _080472A4 @ =0x040000DE
	ldrh r0, [r4]
	mov r1, r8
	strh r0, [r1]
	ldrh r2, [r3]
	ldr r1, _080472A8 @ =0x00007FFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldrh r2, [r6]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r6]
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	ldrh r0, [r4]
	ands r1, r0
	strh r1, [r4]
	ldr r2, _080472AC @ =gUnk_030047FC
	ldr r1, [r2]
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #0x12]
	ldr r1, [r2]
	adds r1, #0x12
	movs r0, #0x30
	str r3, [sp]
	bl ProgramEepromDwordEx
	ldrh r0, [r7]
	ldr r3, [sp]
	strh r0, [r3]
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r6]
	mov r1, sb
	ldrh r0, [r1]
	strh r0, [r5]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047288: .4byte gUnk_0300520C
_0804728C: .4byte 0x040000BA
_08047290: .4byte gUnk_03005208
_08047294: .4byte 0x040000C6
_08047298: .4byte gUnk_0300465C
_0804729C: .4byte 0x040000D2
_080472A0: .4byte gUnk_030008E4
_080472A4: .4byte 0x040000DE
_080472A8: .4byte 0x00007FFF
_080472AC: .4byte gUnk_030047FC
