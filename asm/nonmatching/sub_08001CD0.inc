	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.text

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
