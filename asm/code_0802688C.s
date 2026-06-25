	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0802688C
sub_0802688C: @ 0x0802688C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08026BE8 @ =0x040000D4
	ldr r0, _08026BEC @ =0x08077E68
	str r0, [r2]
	ldr r0, _08026BF0 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08026BF4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r4, _08026BF8 @ =0x0805D9E8
	ldr r1, _08026BFC @ =gObjVramPtr
	cmp r0, #0
	bge _080268BE
_080268B6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080268B6
_080268BE:
	ldr r2, _08026BE8 @ =0x040000D4
	str r4, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080268DE
_080268D6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080268D6
_080268DE:
	ldr r4, _08026BF0 @ =gObjPalRamPtr
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r1, _08026BFC @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xd
	movs r1, #0
	bl sub_08025B78
	ldr r1, _08026BE8 @ =0x040000D4
	ldr r0, _08026C04 @ =0x08077E88
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08026BF4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802691C
_08026914:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08026914
_0802691C:
	ldr r2, _08026BE8 @ =0x040000D4
	ldr r0, _08026C08 @ =0x0805DBE8
	str r0, [r2]
	ldr r1, _08026BFC @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C0C @ =0x80000180
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r4, _08026BF0 @ =gObjPalRamPtr
	ldr r6, _08026C10 @ =0x08077EA8
	ldr r5, _08026C14 @ =0x0805E0E8
	mov ip, r5
	ldr r7, _08026C18 @ =0x08077EC8
	mov r8, r7
	ldr r5, _08026C1C @ =0x0805E2E8
	mov sb, r5
	ldr r7, _08026C20 @ =0x0805E6E8
	mov sl, r7
	ldr r5, _08026C24 @ =0x0805EAE8
	cmp r0, #0
	bge _08026956
_0802694E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802694E
_08026956:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08026BF4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026986
_0802697E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802697E
_08026986:
	ldr r2, _08026BE8 @ =0x040000D4
	ldr r7, _08026C28 @ =0x0805DEE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080269A8
_080269A0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080269A0
_080269A8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080269DA
_080269D2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080269D2
_080269DA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08026BF4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026A06
_080269FE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080269FE
_08026A06:
	ldr r2, _08026BE8 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C2C @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026A28
_08026A20:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026A20
_08026A28:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C2C @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026A5A
_08026A52:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026A52
_08026A5A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	ldr r7, _08026C30 @ =0x08077EE8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08026BF4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026A86
_08026A7E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026A7E
_08026A86:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08026BE8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026AAC
_08026AA4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026AA4
_08026AAC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026AD6
_08026ACE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026ACE
_08026AD6:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026B00
_08026AF8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026AF8
_08026B00:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026B2A
_08026B22:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026B22
_08026B2A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026B54
_08026B4C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026B4C
_08026B54:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026B7E
_08026B76:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026B76
_08026B7E:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026BA8
_08026BA0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026BA0
_08026BA8:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026C00 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026BD2
_08026BCA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026BCA
_08026BD2:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08026BE8 @ =0x040000D4
	ldr r7, _08026C34 @ =0x08077F08
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	b _08026C38
	.align 2, 0
_08026BE8: .4byte 0x040000D4
_08026BEC: .4byte 0x08077E68
_08026BF0: .4byte gObjPalRamPtr
_08026BF4: .4byte 0x80000010
_08026BF8: .4byte 0x0805D9E8
_08026BFC: .4byte gObjVramPtr
_08026C00: .4byte 0x80000100
_08026C04: .4byte 0x08077E88
_08026C08: .4byte 0x0805DBE8
_08026C0C: .4byte 0x80000180
_08026C10: .4byte 0x08077EA8
_08026C14: .4byte 0x0805E0E8
_08026C18: .4byte 0x08077EC8
_08026C1C: .4byte 0x0805E2E8
_08026C20: .4byte 0x0805E6E8
_08026C24: .4byte 0x0805EAE8
_08026C28: .4byte 0x0805DEE8
_08026C2C: .4byte 0x80000200
_08026C30: .4byte 0x08077EE8
_08026C34: .4byte 0x08077F08
_08026C38:
	ldr r0, _08026F18 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026C50
_08026C48:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026C48
_08026C50:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F20 @ =0x02000904
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F24 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026C78
_08026C70:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026C70
_08026C78:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F28 @ =0x02001104
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F24 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026CA4
_08026C9C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026C9C
_08026CA4:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F2C @ =0x02001904
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026CD0
_08026CC8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026CC8
_08026CD0:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F34 @ =0x02001B04
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026CFC
_08026CF4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026CF4
_08026CFC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F38 @ =0x02001D04
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026D28
_08026D20:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026D20
_08026D28:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r7, _08026F3C @ =0x08077F28
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08026F18 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026D54
_08026D4C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026D4C
_08026D54:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F40 @ =0x02002704
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026D7C
_08026D74:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026D74
_08026D7C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F44 @ =0x02002904
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026DA8
_08026DA0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026DA0
_08026DA8:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F48 @ =0x02002B04
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026DD4
_08026DCC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026DCC
_08026DD4:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F4C @ =0x02002D04
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026E00
_08026DF8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026DF8
_08026E00:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r5, _08026F50 @ =0x08077F48
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08026F18 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026E2C
_08026E24:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026E24
_08026E2C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F54 @ =0x02002104
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026E54
_08026E4C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026E4C
_08026E54:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F58 @ =0x02002304
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026E80
_08026E78:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026E78
_08026E80:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F5C @ =0x02002504
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026EAC
_08026EA4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026EA4
_08026EAC:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r7, _08026F60 @ =0x08077F68
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08026F18 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026ED8
_08026ED0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026ED0
_08026ED8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08026F1C @ =0x040000D4
	ldr r0, _08026F64 @ =0x02001F04
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08026F30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026F00
_08026EF8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026EF8
_08026F00:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026F18: .4byte 0x80000010
_08026F1C: .4byte 0x040000D4
_08026F20: .4byte 0x02000904
_08026F24: .4byte 0x80000400
_08026F28: .4byte 0x02001104
_08026F2C: .4byte 0x02001904
_08026F30: .4byte 0x80000100
_08026F34: .4byte 0x02001B04
_08026F38: .4byte 0x02001D04
_08026F3C: .4byte 0x08077F28
_08026F40: .4byte 0x02002704
_08026F44: .4byte 0x02002904
_08026F48: .4byte 0x02002B04
_08026F4C: .4byte 0x02002D04
_08026F50: .4byte 0x08077F48
_08026F54: .4byte 0x02002104
_08026F58: .4byte 0x02002304
_08026F5C: .4byte 0x02002504
_08026F60: .4byte 0x08077F68
_08026F64: .4byte 0x02001F04

	thumb_func_start sub_08026F68
sub_08026F68: @ 0x08026F68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _080272C0 @ =0x040000D4
	ldr r0, _080272C4 @ =0x08077EE8
	str r0, [r2]
	ldr r1, _080272C8 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080272CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r5, _080272D0 @ =0x0805EAE8
	ldr r4, _080272D4 @ =gObjVramPtr
	ldr r6, _080272D8 @ =0x08077F88
	ldr r7, _080272DC @ =0x08077FC8
	mov ip, r7
	ldr r7, _080272E0 @ =0x08077FE8
	mov r8, r7
	ldr r7, _080272E4 @ =0x08078008
	mov sb, r7
	ldr r7, _080272E8 @ =0x08078028
	mov sl, r7
	cmp r0, #0
	bge _08026FAC
_08026FA4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026FA4
_08026FAC:
	ldr r2, _080272C0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026FCC
_08026FC4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026FC4
_08026FCC:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08026FFC
_08026FF4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08026FF4
_08026FFC:
	ldr r0, [r4]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08027026
_0802701E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802701E
_08027026:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08027050
_08027048:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08027048
_08027050:
	ldr r0, [r4]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802707A
_08027072:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08027072
_0802707A:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080270A4
_0802709C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802709C
_080270A4:
	ldr r0, [r4]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080270CE
_080270C6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080270C6
_080270CE:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080270F8
_080270F0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080270F0
_080270F8:
	ldr r0, [r4]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080272CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08027122
_0802711A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802711A
_08027122:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080272C0 @ =0x040000D4
	ldr r0, _080272F0 @ =0x02000904
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272F4 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802714A
_08027142:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08027142
_0802714A:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	ldr r7, _080272F8 @ =0x08077FA8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080272CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08027176
_0802716E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802716E
_08027176:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080272C0 @ =0x040000D4
	ldr r0, _080272FC @ =0x02001104
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272F4 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802719E
_08027196:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08027196
_0802719E:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080272CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080271CA
_080271C2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080271C2
_080271CA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080272C0 @ =0x040000D4
	ldr r0, _08027300 @ =0x02001904
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080271F2
_080271EA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080271EA
_080271F2:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080272CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802721E
_08027216:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08027216
_0802721E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080272C0 @ =0x040000D4
	ldr r0, _08027304 @ =0x02001B04
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08027246
_0802723E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802723E
_08027246:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080272CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08027272
_0802726A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802726A
_08027272:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080272C0 @ =0x040000D4
	ldr r0, _08027308 @ =0x02001D04
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080272EC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802729A
_08027292:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08027292
_0802729A:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _080272C0 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080272CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _0802730C
	.align 2, 0
_080272C0: .4byte 0x040000D4
_080272C4: .4byte 0x08077EE8
_080272C8: .4byte gObjPalRamPtr
_080272CC: .4byte 0x80000010
_080272D0: .4byte 0x0805EAE8
_080272D4: .4byte gObjVramPtr
_080272D8: .4byte 0x08077F88
_080272DC: .4byte 0x08077FC8
_080272E0: .4byte 0x08077FE8
_080272E4: .4byte 0x08078008
_080272E8: .4byte 0x08078028
_080272EC: .4byte 0x80000100
_080272F0: .4byte 0x02000904
_080272F4: .4byte 0x80000400
_080272F8: .4byte 0x08077FA8
_080272FC: .4byte 0x02001104
_08027300: .4byte 0x02001904
_08027304: .4byte 0x02001B04
_08027308: .4byte 0x02001D04
_0802730C:
	bge _08027316
_0802730E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802730E
_08027316:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r1, _08027358 @ =0x040000D4
	ldr r0, _0802735C @ =0x02001F04
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08027360 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802733E
_08027336:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08027336
_0802733E:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027358: .4byte 0x040000D4
_0802735C: .4byte 0x02001F04
_08027360: .4byte 0x80000100

	thumb_func_start sub_08027364
sub_08027364: @ 0x08027364
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _080276BC @ =0x040000D4
	ldr r0, _080276C0 @ =0x08077EE8
	str r0, [r3]
	ldr r1, _080276C4 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _080276C8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r6, r1, #0
	ldr r4, _080276CC @ =0x0805EAE8
	ldr r5, _080276D0 @ =gObjVramPtr
	ldr r7, _080276D4 @ =0x08078048
	ldr r1, _080276D8 @ =0x08078068
	mov r8, r1
	cmp r0, #0
	bge _0802739C
	adds r1, r2, #0
_08027394:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027394
_0802739C:
	ldr r3, _080276BC @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080273BC
_080273B4:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080273B4
_080273BC:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080273EC
_080273E4:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080273E4
_080273EC:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027416
_0802740E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802740E
_08027416:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027440
_08027438:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027438
_08027440:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802746A
_08027462:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027462
_0802746A:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027494
_0802748C:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802748C
_08027494:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080274BE
_080274B6:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080274B6
_080274BE:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080274E8
_080274E0:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080274E0
_080274E8:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r7, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _080276C8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027512
_0802750A:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802750A
_08027512:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _080276BC @ =0x040000D4
	ldr r0, _080276E0 @ =0x02000904
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276E4 @ =0x80000400
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802753A
_08027532:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027532
_0802753A:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	mov r0, r8
	str r0, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _080276C8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027566
_0802755E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802755E
_08027566:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r1, _080276BC @ =0x040000D4
	ldr r0, _080276E8 @ =0x02001104
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802758E
_08027586:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08027586
_0802758E:
	ldr r1, _080276D0 @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0x16
	movs r1, #0
	bl sub_08025B78
	ldr r1, _080276BC @ =0x040000D4
	ldr r0, _080276EC @ =0x08078088
	str r0, [r1]
	ldr r0, _080276C4 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _080276C8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080275C6
_080275BE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080275BE
_080275C6:
	ldr r1, _080276C4 @ =gObjPalRamPtr
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r3, _080276BC @ =0x040000D4
	ldr r0, _080276F0 @ =0x02001D04
	str r0, [r3]
	ldr r2, _080276D0 @ =gObjVramPtr
	ldr r0, [r2]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #0x18
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r2, _080276F4 @ =0x080780A8
	ldr r7, _080276F8 @ =0x080780C8
	ldr r1, _080276FC @ =0x080780E8
	mov ip, r1
	ldr r1, _08027700 @ =0x08078108
	mov r8, r1
	cmp r0, #0
	bge _08027604
	adds r1, r4, #0
_080275FC:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080275FC
_08027604:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _080276C8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802762E
_08027626:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027626
_0802762E:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _080276BC @ =0x040000D4
	ldr r0, _08027704 @ =0x02001F04
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027656
_0802764E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802764E
_08027656:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	str r7, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _080276C8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027680
_08027678:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027678
_08027680:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _080276BC @ =0x040000D4
	ldr r0, _08027708 @ =0x02001904
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080276DC @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080276A8
_080276A0:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080276A0
_080276A8:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _080276BC @ =0x040000D4
	mov r2, ip
	str r2, [r3]
	ldr r0, [r6]
	b _0802770C
	.align 2, 0
_080276BC: .4byte 0x040000D4
_080276C0: .4byte 0x08077EE8
_080276C4: .4byte gObjPalRamPtr
_080276C8: .4byte 0x80000010
_080276CC: .4byte 0x0805EAE8
_080276D0: .4byte gObjVramPtr
_080276D4: .4byte 0x08078048
_080276D8: .4byte 0x08078068
_080276DC: .4byte 0x80000100
_080276E0: .4byte 0x02000904
_080276E4: .4byte 0x80000400
_080276E8: .4byte 0x02001104
_080276EC: .4byte 0x08078088
_080276F0: .4byte 0x02001D04
_080276F4: .4byte 0x080780A8
_080276F8: .4byte 0x080780C8
_080276FC: .4byte 0x080780E8
_08027700: .4byte 0x08078108
_08027704: .4byte 0x02001F04
_08027708: .4byte 0x02001904
_0802770C:
	str r0, [r3, #4]
	ldr r0, _080277B8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027726
_0802771E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802771E
_08027726:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _080277BC @ =0x040000D4
	ldr r0, _080277C0 @ =0x02001704
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _080277C4 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802774E
_08027746:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027746
_0802774E:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _080277BC @ =0x040000D4
	mov r2, r8
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _080277B8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802777A
_08027772:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027772
_0802777A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r1, _080277BC @ =0x040000D4
	ldr r0, _080277C8 @ =0x02001B04
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _080277C4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080277A2
_0802779A:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802779A
_080277A2:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080277B8: .4byte 0x80000010
_080277BC: .4byte 0x040000D4
_080277C0: .4byte 0x02001704
_080277C4: .4byte 0x80000100
_080277C8: .4byte 0x02001B04

	thumb_func_start sub_080277CC
sub_080277CC: @ 0x080277CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08027B28 @ =0x040000D4
	ldr r0, _08027B2C @ =0x08077EE8
	str r0, [r3]
	ldr r1, _08027B30 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08027B34 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r6, r1, #0
	ldr r4, _08027B38 @ =0x0805EAE8
	ldr r5, _08027B3C @ =gObjVramPtr
	ldr r7, _08027B40 @ =0x08078128
	cmp r0, #0
	bge _08027804
	adds r1, r2, #0
_080277FC:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080277FC
_08027804:
	ldr r3, _08027B28 @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027824
_0802781C:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802781C
_08027824:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027854
_0802784C:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802784C
_08027854:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802787E
_08027876:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027876
_0802787E:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080278A8
_080278A0:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080278A0
_080278A8:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080278D2
_080278CA:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080278CA
_080278D2:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080278FC
_080278F4:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080278F4
_080278FC:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027926
_0802791E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802791E
_08027926:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027950
_08027948:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027948
_08027950:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r7, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08027B34 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802797A
_08027972:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027972
_0802797A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r1, _08027B28 @ =0x040000D4
	ldr r0, _08027B48 @ =0x02000904
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08027B4C @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080279A2
_0802799A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802799A
_080279A2:
	ldr r1, _08027B3C @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0x15
	movs r1, #0
	bl sub_08025B78
	ldr r1, _08027B28 @ =0x040000D4
	ldr r0, _08027B50 @ =0x08078148
	str r0, [r1]
	ldr r0, _08027B30 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08027B34 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080279DA
_080279D2:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080279D2
_080279DA:
	ldr r1, _08027B30 @ =gObjPalRamPtr
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r3, _08027B28 @ =0x040000D4
	ldr r0, _08027B54 @ =0x02002304
	str r0, [r3]
	ldr r2, _08027B3C @ =gObjVramPtr
	ldr r0, [r2]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #0x18
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r2, _08027B58 @ =0x08078168
	ldr r7, _08027B5C @ =0x08078188
	ldr r1, _08027B60 @ =0x080781A8
	mov ip, r1
	ldr r1, _08027B64 @ =0x080781C8
	mov r8, r1
	ldr r1, _08027B68 @ =0x080781E8
	mov sb, r1
	ldr r1, _08027B6C @ =0x08078208
	mov sl, r1
	cmp r0, #0
	bge _08027A20
	adds r1, r4, #0
_08027A18:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027A18
_08027A20:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08027B34 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027A4A
_08027A42:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027A42
_08027A4A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _08027B28 @ =0x040000D4
	ldr r0, _08027B70 @ =0x02002104
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027A72
_08027A6A:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027A6A
_08027A72:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	str r7, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08027B34 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027A9C
_08027A94:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027A94
_08027A9C:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _08027B28 @ =0x040000D4
	ldr r0, _08027B74 @ =0x02002504
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027AC4
_08027ABC:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027ABC
_08027AC4:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	mov r2, ip
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08027B34 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027AF0
_08027AE8:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027AE8
_08027AF0:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _08027B28 @ =0x040000D4
	ldr r0, _08027B78 @ =0x02002704
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027B44 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027B18
_08027B10:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027B10
_08027B18:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027B28 @ =0x040000D4
	mov r2, r8
	b _08027B7C
	.align 2, 0
_08027B28: .4byte 0x040000D4
_08027B2C: .4byte 0x08077EE8
_08027B30: .4byte gObjPalRamPtr
_08027B34: .4byte 0x80000010
_08027B38: .4byte 0x0805EAE8
_08027B3C: .4byte gObjVramPtr
_08027B40: .4byte 0x08078128
_08027B44: .4byte 0x80000100
_08027B48: .4byte 0x02000904
_08027B4C: .4byte 0x80000400
_08027B50: .4byte 0x08078148
_08027B54: .4byte 0x02002304
_08027B58: .4byte 0x08078168
_08027B5C: .4byte 0x08078188
_08027B60: .4byte 0x080781A8
_08027B64: .4byte 0x080781C8
_08027B68: .4byte 0x080781E8
_08027B6C: .4byte 0x08078208
_08027B70: .4byte 0x02002104
_08027B74: .4byte 0x02002504
_08027B78: .4byte 0x02002704
_08027B7C:
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08027CD8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027B9A
_08027B92:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027B92
_08027B9A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _08027CDC @ =0x040000D4
	ldr r0, _08027CE0 @ =0x02002904
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027CE4 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027BC2
_08027BBA:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027BBA
_08027BC2:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027CDC @ =0x040000D4
	mov r2, sb
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08027CD8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027BEE
_08027BE6:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027BE6
_08027BEE:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _08027CDC @ =0x040000D4
	ldr r0, _08027CE8 @ =0x02002B04
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027CE4 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027C16
_08027C0E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027C0E
_08027C16:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027CDC @ =0x040000D4
	mov r2, sl
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08027CD8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027C42
_08027C3A:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027C3A
_08027C42:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _08027CDC @ =0x040000D4
	ldr r0, _08027CEC @ =0x02002D04
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08027CE4 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027C6A
_08027C62:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027C62
_08027C6A:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _08027CDC @ =0x040000D4
	ldr r2, _08027CF0 @ =0x08078228
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08027CD8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027C96
_08027C8E:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027C8E
_08027C96:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r1, _08027CDC @ =0x040000D4
	ldr r0, _08027CF4 @ =0x02002F04
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08027CE4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08027CBE
_08027CB6:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _08027CB6
_08027CBE:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027CD8: .4byte 0x80000010
_08027CDC: .4byte 0x040000D4
_08027CE0: .4byte 0x02002904
_08027CE4: .4byte 0x80000100
_08027CE8: .4byte 0x02002B04
_08027CEC: .4byte 0x02002D04
_08027CF0: .4byte 0x08078228
_08027CF4: .4byte 0x02002F04

	thumb_func_start sub_08027CF8
sub_08027CF8: @ 0x08027CF8
	push {r4, r5, r6, r7, lr}
	ldr r3, _0802804C @ =0x040000D4
	ldr r0, _08028050 @ =0x08077EE8
	str r0, [r3]
	ldr r1, _08028054 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08028058 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r6, r1, #0
	ldr r4, _0802805C @ =0x0805EAE8
	ldr r5, _08028060 @ =gObjVramPtr
	ldr r7, _08028064 @ =0x08078248
	cmp r0, #0
	bge _08027D28
	adds r1, r2, #0
_08027D20:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027D20
_08027D28:
	ldr r3, _0802804C @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027D48
_08027D40:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027D40
_08027D48:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027D78
_08027D70:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027D70
_08027D78:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027DA2
_08027D9A:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027D9A
_08027DA2:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027DCC
_08027DC4:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027DC4
_08027DCC:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027DF6
_08027DEE:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027DEE
_08027DF6:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027E20
_08027E18:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027E18
_08027E20:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027E4A
_08027E42:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027E42
_08027E4A:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r4, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027E74
_08027E6C:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027E6C
_08027E74:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r7, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08028058 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027E9E
_08027E96:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027E96
_08027E9E:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r1, _0802804C @ =0x040000D4
	ldr r0, _0802806C @ =0x02004704
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08027EC6
_08027EBE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08027EBE
_08027EC6:
	ldr r1, _08028060 @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0x15
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0802804C @ =0x040000D4
	ldr r0, _08028070 @ =0x08078268
	str r0, [r1]
	ldr r0, _08028054 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08028058 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08027EFE
_08027EF6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08027EF6
_08027EFE:
	ldr r1, _08028054 @ =gObjPalRamPtr
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r1, _0802804C @ =0x040000D4
	ldr r0, _08028074 @ =0x02001104
	str r0, [r1]
	ldr r0, _08028060 @ =gObjVramPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08028078 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08027F2A
_08027F22:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08027F22
_08027F2A:
	ldr r1, _08028060 @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0x16
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0802804C @ =0x040000D4
	ldr r0, _0802807C @ =0x08078288
	str r0, [r1]
	ldr r0, _08028054 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08028058 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08027F62
_08027F5A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08027F5A
_08027F62:
	ldr r1, _08028054 @ =gObjPalRamPtr
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r3, _0802804C @ =0x040000D4
	ldr r0, _08028080 @ =0x02000904
	str r0, [r3]
	ldr r2, _08028060 @ =gObjVramPtr
	ldr r0, [r2]
	str r0, [r3, #4]
	ldr r0, _08028078 @ =0x80000400
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #0x18
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r2, _08028084 @ =0x080782A8
	ldr r7, _08028088 @ =0x080782C8
	ldr r1, _0802808C @ =0x080782E8
	mov ip, r1
	cmp r0, #0
	bge _08027F9C
	adds r1, r4, #0
_08027F94:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027F94
_08027F9C:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08028058 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027FC6
_08027FBE:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027FBE
_08027FC6:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _0802804C @ =0x040000D4
	ldr r0, _08028090 @ =0x02004104
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08027FEE
_08027FE6:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08027FE6
_08027FEE:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r3, _0802804C @ =0x040000D4
	str r7, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _08028058 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08028018
_08028010:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08028010
_08028018:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r3, _0802804C @ =0x040000D4
	ldr r0, _08028094 @ =0x02004304
	str r0, [r3]
	ldr r0, [r5]
	str r0, [r3, #4]
	ldr r0, _08028068 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08028040
_08028038:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _08028038
_08028040:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	b _08028098
	.align 2, 0
_0802804C: .4byte 0x040000D4
_08028050: .4byte 0x08077EE8
_08028054: .4byte gObjPalRamPtr
_08028058: .4byte 0x80000010
_0802805C: .4byte 0x0805EAE8
_08028060: .4byte gObjVramPtr
_08028064: .4byte 0x08078248
_08028068: .4byte 0x80000100
_0802806C: .4byte 0x02004704
_08028070: .4byte 0x08078268
_08028074: .4byte 0x02001104
_08028078: .4byte 0x80000400
_0802807C: .4byte 0x08078288
_08028080: .4byte 0x02000904
_08028084: .4byte 0x080782A8
_08028088: .4byte 0x080782C8
_0802808C: .4byte 0x080782E8
_08028090: .4byte 0x02004104
_08028094: .4byte 0x02004304
_08028098:
	ldr r3, _080280F4 @ =0x040000D4
	mov r2, ip
	str r2, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldr r0, _080280F8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080280BA
_080280B2:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080280B2
_080280BA:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r1, _080280F4 @ =0x040000D4
	ldr r0, _080280FC @ =0x02004504
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08028100 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080280E2
_080280DA:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _080280DA
_080280E2:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080280F4: .4byte 0x040000D4
_080280F8: .4byte 0x80000010
_080280FC: .4byte 0x02004504
_08028100: .4byte 0x80000100

	thumb_func_start sub_08028104
sub_08028104: @ 0x08028104
	bx lr
	.align 2, 0

	thumb_func_start sub_08028108
sub_08028108: @ 0x08028108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _080283F4 @ =0x040000D4
	ldr r0, _080283F8 @ =0x08078308
	str r0, [r2]
	ldr r1, _080283FC @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028400 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r1, #0
	ldr r5, _08028404 @ =0x0805ECE8
	ldr r1, _08028408 @ =gObjVramPtr
	ldr r6, _0802840C @ =0x0805EEE8
	ldr r7, _08028410 @ =0x08078348
	mov r8, r7
	ldr r7, _08028414 @ =0x0805F0E8
	mov ip, r7
	ldr r7, _08028418 @ =0x08078368
	mov sb, r7
	ldr r7, _0802841C @ =0x0805F2E8
	mov sl, r7
	cmp r0, #0
	bge _0802814E
_08028146:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028146
_0802814E:
	ldr r2, _080283F4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028420 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802816E
_08028166:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028166
_0802816E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	ldr r7, _08028424 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028400 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080281A0
_08028198:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028198
_080281A0:
	ldr r2, _080283F4 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028420 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080281C0
_080281B8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080281B8
_080281C0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028420 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080281F0
_080281E8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080281E8
_080281F0:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028420 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802821A
_08028212:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028212
_0802821A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028420 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028244
_0802823C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802823C
_08028244:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028400 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028270
_08028268:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028268
_08028270:
	ldr r2, _080283F4 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028420 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028292
_0802828A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802828A
_08028292:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028420 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080282C4
_080282BC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080282BC
_080282C4:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028400 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080282F0
_080282E8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080282E8
_080282F0:
	ldr r2, _080283F4 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028428 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028312
_0802830A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802830A
_08028312:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	ldr r7, _0802842C @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028400 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028340
_08028338:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028338
_08028340:
	ldr r2, _080283F4 @ =0x040000D4
	ldr r0, _08028430 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028400 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028362
_0802835A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802835A
_08028362:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	ldr r6, _08028434 @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028428 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028390
_08028388:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028388
_08028390:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080283F4 @ =0x040000D4
	ldr r7, _08028438 @ =0x080783A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028400 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080283B8
_080283B0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080283B0
_080283B8:
	ldr r2, _080283F4 @ =0x040000D4
	ldr r0, _0802843C @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028428 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080283DA
_080283D2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080283D2
_080283DA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080283F4: .4byte 0x040000D4
_080283F8: .4byte 0x08078308
_080283FC: .4byte gObjPalRamPtr
_08028400: .4byte 0x80000010
_08028404: .4byte 0x0805ECE8
_08028408: .4byte gObjVramPtr
_0802840C: .4byte 0x0805EEE8
_08028410: .4byte 0x08078348
_08028414: .4byte 0x0805F0E8
_08028418: .4byte 0x08078368
_0802841C: .4byte 0x0805F2E8
_08028420: .4byte 0x80000100
_08028424: .4byte 0x08078328
_08028428: .4byte 0x80000040
_0802842C: .4byte 0x08078388
_08028430: .4byte 0x0805F368
_08028434: .4byte 0x0805F388
_08028438: .4byte 0x080783A8
_0802843C: .4byte 0x0805F408

	thumb_func_start sub_08028440
sub_08028440: @ 0x08028440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _080286FC @ =0x040000D4
	ldr r0, _08028700 @ =0x08078308
	str r0, [r2]
	ldr r1, _08028704 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028708 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r1, #0
	ldr r5, _0802870C @ =0x0805ECE8
	ldr r1, _08028710 @ =gObjVramPtr
	ldr r7, _08028714 @ =0x0805EEE8
	ldr r6, _08028718 @ =0x080783C8
	mov ip, r6
	ldr r6, _0802871C @ =0x0805F488
	mov r8, r6
	ldr r6, _08028720 @ =0x080783E8
	mov sb, r6
	ldr r6, _08028724 @ =0x0805F508
	mov sl, r6
	cmp r0, #0
	bge _08028486
_0802847E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802847E
_08028486:
	ldr r2, _080286FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028728 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080284A6
_0802849E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802849E
_080284A6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080286FC @ =0x040000D4
	ldr r6, _0802872C @ =0x08078328
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028708 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080284D8
_080284D0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080284D0
_080284D8:
	ldr r2, _080286FC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028728 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080284F8
_080284F0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080284F0
_080284F8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080286FC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028728 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028528
_08028520:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028520
_08028528:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080286FC @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028708 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028554
_0802854C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802854C
_08028554:
	ldr r2, _080286FC @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028730 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028576
_0802856E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802856E
_08028576:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080286FC @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028708 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080285A4
_0802859C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802859C
_080285A4:
	ldr r2, _080286FC @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028728 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080285C6
_080285BE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080285BE
_080285C6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080286FC @ =0x040000D4
	ldr r6, _08028734 @ =0x08078368
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028708 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080285F8
_080285F0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080285F0
_080285F8:
	ldr r2, _080286FC @ =0x040000D4
	ldr r0, _08028738 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028730 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802861A
_08028612:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028612
_0802861A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080286FC @ =0x040000D4
	ldr r6, _0802873C @ =0x08078388
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028708 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028648
_08028640:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028640
_08028648:
	ldr r2, _080286FC @ =0x040000D4
	ldr r0, _08028740 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028708 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802866A
_08028662:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028662
_0802866A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080286FC @ =0x040000D4
	ldr r6, _08028744 @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028730 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028698
_08028690:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028690
_08028698:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080286FC @ =0x040000D4
	ldr r0, _08028748 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028708 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080286C0
_080286B8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080286B8
_080286C0:
	ldr r2, _080286FC @ =0x040000D4
	ldr r6, _0802874C @ =0x0805F408
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028730 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080286E2
_080286DA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080286DA
_080286E2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080286FC: .4byte 0x040000D4
_08028700: .4byte 0x08078308
_08028704: .4byte gObjPalRamPtr
_08028708: .4byte 0x80000010
_0802870C: .4byte 0x0805ECE8
_08028710: .4byte gObjVramPtr
_08028714: .4byte 0x0805EEE8
_08028718: .4byte 0x080783C8
_0802871C: .4byte 0x0805F488
_08028720: .4byte 0x080783E8
_08028724: .4byte 0x0805F508
_08028728: .4byte 0x80000100
_0802872C: .4byte 0x08078328
_08028730: .4byte 0x80000040
_08028734: .4byte 0x08078368
_08028738: .4byte 0x0805F2E8
_0802873C: .4byte 0x08078388
_08028740: .4byte 0x0805F368
_08028744: .4byte 0x0805F388
_08028748: .4byte 0x080783A8
_0802874C: .4byte 0x0805F408

	thumb_func_start sub_08028750
sub_08028750: @ 0x08028750
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08028AA4 @ =0x040000D4
	ldr r0, _08028AA8 @ =0x08078308
	str r0, [r3]
	ldr r1, _08028AAC @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _08028AB4 @ =0x0805ECE8
	ldr r1, _08028AB8 @ =gObjVramPtr
	ldr r6, _08028ABC @ =0x08078328
	ldr r7, _08028AC0 @ =0x08078348
	mov ip, r7
	ldr r7, _08028AC4 @ =0x0805F0E8
	mov r8, r7
	ldr r7, _08028AC8 @ =0x080783C8
	mov sb, r7
	ldr r7, _08028ACC @ =0x0805F488
	mov sl, r7
	cmp r0, #0
	bge _08028796
_0802878E:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802878E
_08028796:
	ldr r2, _08028AA4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080287B6
_080287AE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080287AE
_080287B6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080287E6
_080287DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080287DE
_080287E6:
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r7, _08028AD4 @ =0x0805EEE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028808
_08028800:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028800
_08028808:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802883A
_08028832:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028832
_0802883A:
	ldr r2, _08028AA4 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802885C
_08028854:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028854
_0802885C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802888E
_08028886:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028886
_0802888E:
	ldr r2, _08028AA4 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080288B0
_080288A8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080288A8
_080288B0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r7, _08028ADC @ =0x080783E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080288DE
_080288D6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080288D6
_080288DE:
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r0, _08028AE0 @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028900
_080288F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080288F8
_08028900:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r7, _08028AE4 @ =0x08078408
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028932
_0802892A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802892A
_08028932:
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r0, _08028AE8 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028954
_0802894C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802894C
_08028954:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r7, _08028AEC @ =0x0805F788
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028982
_0802897A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802897A
_08028982:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r0, _08028AF0 @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080289AA
_080289A2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080289A2
_080289AA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r7, _08028AF4 @ =0x08078368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080289D6
_080289CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080289CE
_080289D6:
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r0, _08028AF8 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080289F8
_080289F0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080289F0
_080289F8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r7, _08028AFC @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028A26
_08028A1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028A1E
_08028A26:
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r0, _08028B00 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028A48
_08028A40:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028A40
_08028A48:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r7, _08028B04 @ =0x0805F388
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028AD8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028A76
_08028A6E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028A6E
_08028A76:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r0, _08028B08 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028AB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028A9E
_08028A96:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028A96
_08028A9E:
	ldr r2, _08028AA4 @ =0x040000D4
	ldr r7, _08028B0C @ =0x0805F408
	b _08028B10
	.align 2, 0
_08028AA4: .4byte 0x040000D4
_08028AA8: .4byte 0x08078308
_08028AAC: .4byte gObjPalRamPtr
_08028AB0: .4byte 0x80000010
_08028AB4: .4byte 0x0805ECE8
_08028AB8: .4byte gObjVramPtr
_08028ABC: .4byte 0x08078328
_08028AC0: .4byte 0x08078348
_08028AC4: .4byte 0x0805F0E8
_08028AC8: .4byte 0x080783C8
_08028ACC: .4byte 0x0805F488
_08028AD0: .4byte 0x80000100
_08028AD4: .4byte 0x0805EEE8
_08028AD8: .4byte 0x80000040
_08028ADC: .4byte 0x080783E8
_08028AE0: .4byte 0x0805F508
_08028AE4: .4byte 0x08078408
_08028AE8: .4byte 0x0805F708
_08028AEC: .4byte 0x0805F788
_08028AF0: .4byte 0x0805F808
_08028AF4: .4byte 0x08078368
_08028AF8: .4byte 0x0805F2E8
_08028AFC: .4byte 0x08078388
_08028B00: .4byte 0x0805F368
_08028B04: .4byte 0x0805F388
_08028B08: .4byte 0x080783A8
_08028B0C: .4byte 0x0805F408
_08028B10:
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028B48 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028B2E
_08028B26:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028B26
_08028B2E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028B48: .4byte 0x80000040

	thumb_func_start sub_08028B4C
sub_08028B4C: @ 0x08028B4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08028E38 @ =0x040000D4
	ldr r0, _08028E3C @ =0x0805FA08
	str r0, [r2]
	ldr r1, _08028E40 @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E44 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r4, _08028E48 @ =gObjPalRamPtr
	ldr r7, _08028E4C @ =0x0805EEE8
	ldr r5, _08028E50 @ =0x08078348
	mov ip, r5
	ldr r6, _08028E54 @ =0x0805F0E8
	ldr r5, _08028E58 @ =0x080783C8
	mov r8, r5
	ldr r5, _08028E5C @ =0x0805F488
	mov sb, r5
	ldr r5, _08028E60 @ =0x08078428
	mov sl, r5
	cmp r0, #0
	bge _08028B90
_08028B88:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028B88
_08028B90:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	ldr r5, _08028E64 @ =0x08078328
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028E68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028BBC
_08028BB4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028BB4
_08028BBC:
	ldr r2, _08028E38 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028BDC
_08028BD4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028BD4
_08028BDC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028C0C
_08028C04:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028C04
_08028C0C:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028E68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028C38
_08028C30:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028C30
_08028C38:
	ldr r2, _08028E38 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028C58
_08028C50:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028C50
_08028C58:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028C88
_08028C80:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028C80
_08028C88:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028CB2
_08028CAA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028CAA
_08028CB2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	mov r5, r8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028E68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028CDE
_08028CD6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028CD6
_08028CDE:
	ldr r2, _08028E38 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E70 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028D00
_08028CF8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028CF8
_08028D00:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028E68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028D2E
_08028D26:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028D26
_08028D2E:
	ldr r2, _08028E38 @ =0x040000D4
	ldr r0, _08028E74 @ =0x0805FB08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E44 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028D50
_08028D48:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028D48
_08028D50:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	ldr r5, _08028E78 @ =0x08078388
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028E68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028D82
_08028D7A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028D7A
_08028D82:
	ldr r2, _08028E38 @ =0x040000D4
	ldr r0, _08028E7C @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028DA4
_08028D9C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028D9C
_08028DA4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	ldr r5, _08028E80 @ =0x0805F388
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E70 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028DD2
_08028DCA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028DCA
_08028DD2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08028E38 @ =0x040000D4
	ldr r0, _08028E84 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08028E68 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028DFA
_08028DF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028DF2
_08028DFA:
	ldr r2, _08028E38 @ =0x040000D4
	ldr r5, _08028E88 @ =0x0805F408
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08028E70 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028E1C
_08028E14:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028E14
_08028E1C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028E38: .4byte 0x040000D4
_08028E3C: .4byte 0x0805FA08
_08028E40: .4byte gObjVramPtr
_08028E44: .4byte 0x80000080
_08028E48: .4byte gObjPalRamPtr
_08028E4C: .4byte 0x0805EEE8
_08028E50: .4byte 0x08078348
_08028E54: .4byte 0x0805F0E8
_08028E58: .4byte 0x080783C8
_08028E5C: .4byte 0x0805F488
_08028E60: .4byte 0x08078428
_08028E64: .4byte 0x08078328
_08028E68: .4byte 0x80000010
_08028E6C: .4byte 0x80000100
_08028E70: .4byte 0x80000040
_08028E74: .4byte 0x0805FB08
_08028E78: .4byte 0x08078388
_08028E7C: .4byte 0x0805F368
_08028E80: .4byte 0x0805F388
_08028E84: .4byte 0x080783A8
_08028E88: .4byte 0x0805F408

	thumb_func_start sub_08028E8C
sub_08028E8C: @ 0x08028E8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080291E4 @ =0x040000D4
	ldr r0, _080291E8 @ =0x08078308
	str r0, [r3]
	ldr r1, _080291EC @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _080291F0 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r6, _080291F4 @ =0x0805ECE8
	ldr r1, _080291F8 @ =gObjVramPtr
	ldr r5, _080291FC @ =0x0805EEE8
	mov ip, r5
	ldr r7, _08029200 @ =0x08078348
	mov r8, r7
	ldr r5, _08029204 @ =0x0805F0E8
	mov sb, r5
	ldr r7, _08029208 @ =0x08078448
	mov sl, r7
	ldr r5, _0802920C @ =0x0805FC08
	cmp r0, #0
	bge _08028ED2
_08028ECA:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08028ECA
_08028ED2:
	ldr r2, _080291E4 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028EF2
_08028EEA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028EEA
_08028EF2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	ldr r7, _08029214 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080291F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028F24
_08028F1C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028F1C
_08028F24:
	ldr r2, _080291E4 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028F46
_08028F3E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028F3E
_08028F46:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080291F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028F78
_08028F70:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028F70
_08028F78:
	ldr r2, _080291E4 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028F9A
_08028F92:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028F92
_08028F9A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080291F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028FCC
_08028FC4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028FC4
_08028FCC:
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08028FEC
_08028FE4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08028FE4
_08028FEC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802901C
_08029014:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029014
_0802901C:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029046
_0802903E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802903E
_08029046:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029070
_08029068:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029068
_08029070:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802909A
_08029092:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029092
_0802909A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080290C4
_080290BC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080290BC
_080290C4:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080290EE
_080290E6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080290E6
_080290EE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029118
_08029110:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029110
_08029118:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029142
_0802913A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802913A
_08029142:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029210 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802916C
_08029164:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029164
_0802916C:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	ldr r7, _08029218 @ =0x080783C8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080291F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029198
_08029190:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029190
_08029198:
	ldr r2, _080291E4 @ =0x040000D4
	ldr r0, _0802921C @ =0x0805F488
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029220 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080291BA
_080291B2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080291B2
_080291BA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080291E4 @ =0x040000D4
	ldr r5, _08029224 @ =0x080783E8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080291F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802922E
_080291E0:
	ldr r0, [r2, #8]
	b _08029228
	.align 2, 0
_080291E4: .4byte 0x040000D4
_080291E8: .4byte 0x08078308
_080291EC: .4byte gObjPalRamPtr
_080291F0: .4byte 0x80000010
_080291F4: .4byte 0x0805ECE8
_080291F8: .4byte gObjVramPtr
_080291FC: .4byte 0x0805EEE8
_08029200: .4byte 0x08078348
_08029204: .4byte 0x0805F0E8
_08029208: .4byte 0x08078448
_0802920C: .4byte 0x0805FC08
_08029210: .4byte 0x80000100
_08029214: .4byte 0x08078328
_08029218: .4byte 0x080783C8
_0802921C: .4byte 0x0805F488
_08029220: .4byte 0x80000040
_08029224: .4byte 0x080783E8
_08029228:
	ands r0, r3
	cmp r0, #0
	bne _080291E0
_0802922E:
	ldr r2, _0802942C @ =0x040000D4
	ldr r7, _08029430 @ =0x0805F508
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029434 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029250
_08029248:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029248
_08029250:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802942C @ =0x040000D4
	ldr r5, _08029438 @ =0x08078408
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802943C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029282
_0802927A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802927A
_08029282:
	ldr r2, _0802942C @ =0x040000D4
	ldr r7, _08029440 @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029444 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080292A4
_0802929C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802929C
_080292A4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802942C @ =0x040000D4
	ldr r0, _08029448 @ =0x0805F788
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029444 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080292D2
_080292CA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080292CA
_080292D2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802942C @ =0x040000D4
	ldr r5, _0802944C @ =0x0805F808
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029434 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080292FA
_080292F2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080292F2
_080292FA:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802942C @ =0x040000D4
	ldr r0, _08029450 @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802943C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029326
_0802931E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802931E
_08029326:
	ldr r2, _0802942C @ =0x040000D4
	ldr r5, _08029454 @ =0x0805F2E8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029444 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029348
_08029340:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029340
_08029348:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802942C @ =0x040000D4
	ldr r7, _08029458 @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802943C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029376
_0802936E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802936E
_08029376:
	ldr r2, _0802942C @ =0x040000D4
	ldr r0, _0802945C @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802943C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029398
_08029390:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029390
_08029398:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802942C @ =0x040000D4
	ldr r5, _08029460 @ =0x0805F388
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029444 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080293C6
_080293BE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080293BE
_080293C6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802942C @ =0x040000D4
	ldr r7, _08029464 @ =0x080783A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802943C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080293EE
_080293E6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080293E6
_080293EE:
	ldr r2, _0802942C @ =0x040000D4
	ldr r0, _08029468 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029444 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029410
_08029408:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029408
_08029410:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802942C: .4byte 0x040000D4
_08029430: .4byte 0x0805F508
_08029434: .4byte 0x80000100
_08029438: .4byte 0x08078408
_0802943C: .4byte 0x80000010
_08029440: .4byte 0x0805F708
_08029444: .4byte 0x80000040
_08029448: .4byte 0x0805F788
_0802944C: .4byte 0x0805F808
_08029450: .4byte 0x08078368
_08029454: .4byte 0x0805F2E8
_08029458: .4byte 0x08078388
_0802945C: .4byte 0x0805F368
_08029460: .4byte 0x0805F388
_08029464: .4byte 0x080783A8
_08029468: .4byte 0x0805F408

	thumb_func_start sub_0802946C
sub_0802946C: @ 0x0802946C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _080297C4 @ =0x040000D4
	ldr r0, _080297C8 @ =0x08078468
	str r0, [r2]
	ldr r1, _080297CC @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297D0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r1, #0
	ldr r1, _080297D4 @ =gObjVramPtr
	ldr r5, _080297D8 @ =0x08078348
	mov ip, r5
	ldr r7, _080297DC @ =0x0805F0E8
	ldr r6, _080297E0 @ =0x08078448
	mov r8, r6
	ldr r5, _080297E4 @ =0x0805FC08
	ldr r6, _080297E8 @ =0x080783C8
	mov sb, r6
	ldr r6, _080297EC @ =0x0805F488
	mov sl, r6
	cmp r0, #0
	bge _080294B2
_080294AA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080294AA
_080294B2:
	ldr r2, _080297C4 @ =0x040000D4
	ldr r0, _080297F0 @ =0x0805FE08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F4 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080294D4
_080294CC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080294CC
_080294D4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080297D0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029506
_080294FE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080294FE
_08029506:
	ldr r2, _080297C4 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029526
_0802951E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802951E
_08029526:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029556
_0802954E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802954E
_08029556:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029580
_08029578:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029578
_08029580:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080297D0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080295AC
_080295A4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080295A4
_080295AC:
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080295CC
_080295C4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080295C4
_080295CC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080295FC
_080295F4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080295F4
_080295FC:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029626
_0802961E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802961E
_08029626:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029650
_08029648:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029648
_08029650:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802967A
_08029672:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029672
_0802967A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080296A4
_0802969C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802969C
_080296A4:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080296CE
_080296C6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080296C6
_080296CE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080296F8
_080296F0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080296F0
_080296F8:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029722
_0802971A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802971A
_08029722:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802974C
_08029744:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029744
_0802974C:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297F8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029776
_0802976E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802976E
_08029776:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080297C4 @ =0x040000D4
	mov r5, sb
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080297D0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080297A2
_0802979A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802979A
_080297A2:
	ldr r2, _080297C4 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080297FC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029802
_080297BC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	b _08029800
	.align 2, 0
_080297C4: .4byte 0x040000D4
_080297C8: .4byte 0x08078468
_080297CC: .4byte gObjPalRamPtr
_080297D0: .4byte 0x80000010
_080297D4: .4byte gObjVramPtr
_080297D8: .4byte 0x08078348
_080297DC: .4byte 0x0805F0E8
_080297E0: .4byte 0x08078448
_080297E4: .4byte 0x0805FC08
_080297E8: .4byte 0x080783C8
_080297EC: .4byte 0x0805F488
_080297F0: .4byte 0x0805FE08
_080297F4: .4byte 0x80000400
_080297F8: .4byte 0x80000100
_080297FC: .4byte 0x80000040
_08029800:
	bne _080297BC
_08029802:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802993C @ =0x040000D4
	ldr r0, _08029940 @ =0x08060608
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029944 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029830
_08029828:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029828
_08029830:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802993C @ =0x040000D4
	ldr r5, _08029948 @ =0x08060708
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029944 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802985C
_08029854:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029854
_0802985C:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802993C @ =0x040000D4
	ldr r0, _0802994C @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029950 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029888
_08029880:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029880
_08029888:
	ldr r2, _0802993C @ =0x040000D4
	ldr r5, _08029954 @ =0x0805F368
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029950 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080298AA
_080298A2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080298A2
_080298AA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802993C @ =0x040000D4
	ldr r6, _08029958 @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802995C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080298D8
_080298D0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080298D0
_080298D8:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802993C @ =0x040000D4
	ldr r0, _08029960 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029950 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029900
_080298F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080298F8
_08029900:
	ldr r2, _0802993C @ =0x040000D4
	ldr r5, _08029964 @ =0x0805F408
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802995C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029922
_0802991A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802991A
_08029922:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802993C: .4byte 0x040000D4
_08029940: .4byte 0x08060608
_08029944: .4byte 0x80000080
_08029948: .4byte 0x08060708
_0802994C: .4byte 0x08078388
_08029950: .4byte 0x80000010
_08029954: .4byte 0x0805F368
_08029958: .4byte 0x0805F388
_0802995C: .4byte 0x80000040
_08029960: .4byte 0x080783A8
_08029964: .4byte 0x0805F408

	thumb_func_start sub_08029968
sub_08029968: @ 0x08029968
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08029CC0 @ =0x040000D4
	ldr r0, _08029CC4 @ =0x08078308
	str r0, [r3]
	ldr r1, _08029CC8 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08029CCC @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _08029CD0 @ =0x0805ECE8
	ldr r1, _08029CD4 @ =gObjVramPtr
	ldr r6, _08029CD8 @ =0x0805EEE8
	mov ip, r6
	ldr r7, _08029CDC @ =0x08078448
	mov sb, r7
	ldr r6, _08029CE0 @ =0x0805FC08
	ldr r7, _08029CE4 @ =0x080783C8
	mov sl, r7
	ldr r7, _08029CE8 @ =0x08060808
	mov r8, r7
	cmp r0, #0
	bge _080299AE
_080299A6:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _080299A6
_080299AE:
	ldr r2, _08029CC0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080299CE
_080299C6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080299C6
_080299CE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	ldr r7, _08029CF0 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029CCC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029A00
_080299F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080299F8
_08029A00:
	ldr r2, _08029CC0 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029A22
_08029A1A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029A1A
_08029A22:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029A54
_08029A4C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029A4C
_08029A54:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029CCC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029A80
_08029A78:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029A78
_08029A80:
	ldr r2, _08029CC0 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029AA0
_08029A98:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029A98
_08029AA0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029AD0
_08029AC8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029AC8
_08029AD0:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029AFA
_08029AF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029AF2
_08029AFA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029CCC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029B26
_08029B1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029B1E
_08029B26:
	ldr r2, _08029CC0 @ =0x040000D4
	ldr r7, _08029CF4 @ =0x0805F488
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029B48
_08029B40:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029B40
_08029B48:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	ldr r0, _08029CFC @ =0x08078488
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029CCC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029B76
_08029B6E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029B6E
_08029B76:
	ldr r2, _08029CC0 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029B98
_08029B90:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029B90
_08029B98:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029BCA
_08029BC2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029BC2
_08029BCA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029BF6
_08029BEE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029BEE
_08029BF6:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	ldr r0, _08029D00 @ =0x08060608
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029D04 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029C22
_08029C1A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029C1A
_08029C22:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	ldr r6, _08029D08 @ =0x080783E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029CCC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029C4E
_08029C46:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029C46
_08029C4E:
	ldr r2, _08029CC0 @ =0x040000D4
	ldr r7, _08029D0C @ =0x0805F508
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CEC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029C70
_08029C68:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029C68
_08029C70:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029CC0 @ =0x040000D4
	ldr r6, _08029D10 @ =0x08078408
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029CCC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029CA2
_08029C9A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029C9A
_08029CA2:
	ldr r2, _08029CC0 @ =0x040000D4
	ldr r7, _08029D14 @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029D1E
_08029CBC:
	ldr r0, [r2, #8]
	b _08029D18
	.align 2, 0
_08029CC0: .4byte 0x040000D4
_08029CC4: .4byte 0x08078308
_08029CC8: .4byte gObjPalRamPtr
_08029CCC: .4byte 0x80000010
_08029CD0: .4byte 0x0805ECE8
_08029CD4: .4byte gObjVramPtr
_08029CD8: .4byte 0x0805EEE8
_08029CDC: .4byte 0x08078448
_08029CE0: .4byte 0x0805FC08
_08029CE4: .4byte 0x080783C8
_08029CE8: .4byte 0x08060808
_08029CEC: .4byte 0x80000100
_08029CF0: .4byte 0x08078328
_08029CF4: .4byte 0x0805F488
_08029CF8: .4byte 0x80000040
_08029CFC: .4byte 0x08078488
_08029D00: .4byte 0x08060608
_08029D04: .4byte 0x80000080
_08029D08: .4byte 0x080783E8
_08029D0C: .4byte 0x0805F508
_08029D10: .4byte 0x08078408
_08029D14: .4byte 0x0805F708
_08029D18:
	ands r0, r3
	cmp r0, #0
	bne _08029CBC
_08029D1E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08029E7C @ =0x040000D4
	ldr r0, _08029E80 @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029E84 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029D4C
_08029D44:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029D44
_08029D4C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08029E7C @ =0x040000D4
	ldr r6, _08029E88 @ =0x08078368
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029E8C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029D78
_08029D70:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029D70
_08029D78:
	ldr r2, _08029E7C @ =0x040000D4
	ldr r7, _08029E90 @ =0x0805F2E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029E94 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029D9A
_08029D92:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029D92
_08029D9A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08029E7C @ =0x040000D4
	ldr r0, _08029E98 @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029E8C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029DC8
_08029DC0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029DC0
_08029DC8:
	ldr r2, _08029E7C @ =0x040000D4
	ldr r6, _08029E9C @ =0x0805F368
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029E8C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029DEA
_08029DE2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029DE2
_08029DEA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08029E7C @ =0x040000D4
	ldr r7, _08029EA0 @ =0x0805F388
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029E94 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029E18
_08029E10:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029E10
_08029E18:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08029E7C @ =0x040000D4
	ldr r0, _08029EA4 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08029E8C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029E40
_08029E38:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029E38
_08029E40:
	ldr r2, _08029E7C @ =0x040000D4
	ldr r6, _08029EA8 @ =0x0805F408
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08029E94 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08029E62
_08029E5A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08029E5A
_08029E62:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029E7C: .4byte 0x040000D4
_08029E80: .4byte 0x0805F808
_08029E84: .4byte 0x80000100
_08029E88: .4byte 0x08078368
_08029E8C: .4byte 0x80000010
_08029E90: .4byte 0x0805F2E8
_08029E94: .4byte 0x80000040
_08029E98: .4byte 0x08078388
_08029E9C: .4byte 0x0805F368
_08029EA0: .4byte 0x0805F388
_08029EA4: .4byte 0x080783A8
_08029EA8: .4byte 0x0805F408

	thumb_func_start sub_08029EAC
sub_08029EAC: @ 0x08029EAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0802A218 @ =0x040000D4
	ldr r0, _0802A21C @ =0x080784A8
	str r0, [r2]
	ldr r1, _0802A220 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A224 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r5, #0x80
	lsls r5, r5, #0x18
	adds r3, r1, #0
	ldr r6, _0802A228 @ =0x08060A08
	ldr r7, _0802A22C @ =gObjVramPtr
	ldr r4, _0802A230 @ =0x080784C8
	ldr r1, _0802A234 @ =0x08060A88
	mov r8, r1
	ldr r1, _0802A238 @ =0x080784E8
	mov sb, r1
	ldr r1, _0802A23C @ =gUnk_08189A24
	mov sl, r1
	ldr r1, _0802A240 @ =gUnk_03004C20
	mov ip, r1
	cmp r0, #0
	bge _08029EF4
	adds r1, r5, #0
_08029EEC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08029EEC
_08029EF4:
	ldr r1, _0802A218 @ =0x040000D4
	str r6, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _0802A244 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08029F14
_08029F0C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08029F0C
_08029F14:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r7]
	adds r0, #0x80
	str r0, [r7]
	ldr r1, _0802A218 @ =0x040000D4
	str r4, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802A224 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08029F40
_08029F38:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08029F38
_08029F40:
	ldr r1, _0802A218 @ =0x040000D4
	mov r2, r8
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _0802A248 @ =0x80000300
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08029F62
_08029F5A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08029F5A
_08029F62:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r7]
	movs r5, #0xc0
	lsls r5, r5, #3
	adds r0, r0, r5
	str r0, [r7]
	ldr r1, _0802A218 @ =0x040000D4
	mov r0, sb
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802A224 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08029F94
_08029F8C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08029F8C
_08029F94:
	ldr r1, _0802A218 @ =0x040000D4
	ldr r2, _0802A24C @ =0x08061088
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _0802A250 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08029FB6
_08029FAE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08029FAE
_08029FB6:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r7]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	str r0, [r7]
	ldr r1, _0802A218 @ =0x040000D4
	ldr r0, _0802A254 @ =0x08078508
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802A224 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08029FE8
_08029FE0:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08029FE0
_08029FE8:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r3, _0802A218 @ =0x040000D4
	mov r2, ip
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r5, [r2, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, [r7]
	str r0, [r3, #4]
	ldr r0, _0802A250 @ =0x80000400
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802A028
_0802A020:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802A020
_0802A028:
	ldr r1, _0802A22C @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0x16
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0802A218 @ =0x040000D4
	ldr r0, _0802A258 @ =0x08078328
	str r0, [r1]
	ldr r0, _0802A220 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _0802A224 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A060
_0802A058:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A058
_0802A060:
	ldr r4, _0802A218 @ =0x040000D4
	ldr r2, _0802A25C @ =0x0805EEE8
	str r2, [r4]
	ldr r1, _0802A22C @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r4, #4]
	ldr r0, _0802A260 @ =0x80000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #0x18
	ldr r3, _0802A220 @ =gObjPalRamPtr
	adds r7, r1, #0
	cmp r0, #0
	bge _0802A08A
	adds r1, r5, #0
_0802A082:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802A082
_0802A08A:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r7]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r7]
	ldr r1, _0802A218 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _0802A260 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A0BA
_0802A0B2:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A0B2
_0802A0BA:
	ldr r1, _0802A22C @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0x17
	movs r1, #0
	bl sub_08025B78
	movs r0, #0x18
	movs r1, #0
	bl sub_08025B78
	ldr r1, _0802A218 @ =0x040000D4
	ldr r0, _0802A264 @ =0x08078528
	str r0, [r1]
	ldr r0, _0802A220 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _0802A224 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A0FA
_0802A0F2:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A0F2
_0802A0FA:
	ldr r3, _0802A220 @ =gObjPalRamPtr
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r5, _0802A218 @ =0x040000D4
	ldr r4, _0802A23C @ =gUnk_08189A24
	ldr r2, _0802A240 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r2, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r5]
	ldr r1, _0802A22C @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r5, #4]
	ldr r0, _0802A250 @ =0x80000400
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r7, r1, #0
	mov sl, r4
	mov ip, r2
	ldr r4, _0802A268 @ =0x08061888
	ldr r2, _0802A26C @ =0x080783A8
	mov r8, r2
	ldr r1, _0802A270 @ =0x0805F408
	mov sb, r1
	cmp r0, #0
	bge _0802A152
	adds r1, r6, #0
_0802A14A:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802A14A
_0802A152:
	ldr r0, [r7]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r7]
	ldr r2, _0802A218 @ =0x040000D4
	mov r5, ip
	ldrb r1, [r5, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r7]
	str r0, [r2, #4]
	ldr r0, _0802A250 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802A196
_0802A18E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802A18E
_0802A196:
	ldr r0, [r7]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r7]
	ldr r1, _0802A218 @ =0x040000D4
	str r4, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _0802A274 @ =0x80000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A1C0
_0802A1B8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A1B8
_0802A1C0:
	ldr r0, [r7]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	str r0, [r7]
	ldr r1, _0802A218 @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802A224 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A1EC
_0802A1E4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A1E4
_0802A1EC:
	ldr r1, _0802A218 @ =0x040000D4
	mov r2, sb
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _0802A244 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A20E
_0802A206:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A206
_0802A20E:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r0, [r7]
	b _0802A278
	.align 2, 0
_0802A218: .4byte 0x040000D4
_0802A21C: .4byte 0x080784A8
_0802A220: .4byte gObjPalRamPtr
_0802A224: .4byte 0x80000010
_0802A228: .4byte 0x08060A08
_0802A22C: .4byte gObjVramPtr
_0802A230: .4byte 0x080784C8
_0802A234: .4byte 0x08060A88
_0802A238: .4byte 0x080784E8
_0802A23C: .4byte gUnk_08189A24
_0802A240: .4byte gUnk_03004C20
_0802A244: .4byte 0x80000040
_0802A248: .4byte 0x80000300
_0802A24C: .4byte 0x08061088
_0802A250: .4byte 0x80000400
_0802A254: .4byte 0x08078508
_0802A258: .4byte 0x08078328
_0802A25C: .4byte 0x0805EEE8
_0802A260: .4byte 0x80000100
_0802A264: .4byte 0x08078528
_0802A268: .4byte 0x08061888
_0802A26C: .4byte 0x080783A8
_0802A270: .4byte 0x0805F408
_0802A274: .4byte 0x80000080
_0802A278:
	adds r0, #0x80
	str r0, [r7]
	ldr r1, _0802A304 @ =0x040000D4
	ldr r5, _0802A308 @ =0x08078548
	str r5, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802A30C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A29E
_0802A296:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A296
_0802A29E:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _0802A304 @ =0x040000D4
	ldr r0, _0802A310 @ =0x08061988
	str r0, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _0802A314 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A2C6
_0802A2BE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A2BE
_0802A2C6:
	ldr r0, [r7]
	adds r0, #0x80
	str r0, [r7]
	ldr r1, _0802A304 @ =0x040000D4
	ldr r2, _0802A318 @ =0x08061A08
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _0802A30C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802A2EE
_0802A2E6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A2E6
_0802A2EE:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A304: .4byte 0x040000D4
_0802A308: .4byte 0x08078548
_0802A30C: .4byte 0x80000010
_0802A310: .4byte 0x08061988
_0802A314: .4byte 0x80000040
_0802A318: .4byte 0x08061A08

	thumb_func_start sub_0802A31C
sub_0802A31C: @ 0x0802A31C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802A674 @ =0x040000D4
	ldr r0, _0802A678 @ =0x08078308
	str r0, [r3]
	ldr r1, _0802A67C @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802A680 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _0802A684 @ =0x0805ECE8
	ldr r1, _0802A688 @ =gObjVramPtr
	ldr r7, _0802A68C @ =0x0805EEE8
	ldr r6, _0802A690 @ =0x08078348
	mov r8, r6
	ldr r6, _0802A694 @ =0x0805F0E8
	mov ip, r6
	ldr r6, _0802A698 @ =0x080783C8
	mov sb, r6
	ldr r6, _0802A69C @ =0x0805F488
	mov sl, r6
	cmp r0, #0
	bge _0802A362
_0802A35A:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A35A
_0802A362:
	ldr r2, _0802A674 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A382
_0802A37A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A37A
_0802A382:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	ldr r6, _0802A6A4 @ =0x08078328
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A680 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A3B4
_0802A3AC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A3AC
_0802A3B4:
	ldr r2, _0802A674 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A3D4
_0802A3CC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A3CC
_0802A3D4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A404
_0802A3FC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A3FC
_0802A404:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A680 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A430
_0802A428:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A428
_0802A430:
	ldr r2, _0802A674 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A452
_0802A44A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A44A
_0802A452:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A484
_0802A47C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A47C
_0802A484:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	mov r6, sb
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A680 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A4B0
_0802A4A8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A4A8
_0802A4B0:
	ldr r2, _0802A674 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A4D2
_0802A4CA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A4CA
_0802A4D2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	ldr r6, _0802A6AC @ =0x08078568
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A680 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A500
_0802A4F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A4F8
_0802A500:
	ldr r2, _0802A674 @ =0x040000D4
	ldr r0, _0802A6B0 @ =0x08061A28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A522
_0802A51A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A51A
_0802A522:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	ldr r6, _0802A6B4 @ =0x08060608
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6B8 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A554
_0802A54C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A54C
_0802A554:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	ldr r6, _0802A6BC @ =0x08060708
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6B8 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A580
_0802A578:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A578
_0802A580:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	ldr r6, _0802A6C0 @ =0x08061C28
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6B8 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A5AC
_0802A5A4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A5A4
_0802A5AC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	ldr r6, _0802A6C4 @ =0x080783E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A680 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A5D8
_0802A5D0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A5D0
_0802A5D8:
	ldr r2, _0802A674 @ =0x040000D4
	ldr r0, _0802A6C8 @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A5FA
_0802A5F2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A5F2
_0802A5FA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	ldr r6, _0802A6CC @ =0x08078408
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A680 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A62C
_0802A624:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A624
_0802A62C:
	ldr r2, _0802A674 @ =0x040000D4
	ldr r0, _0802A6D0 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A64E
_0802A646:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A646
_0802A64E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802A674 @ =0x040000D4
	ldr r6, _0802A6D4 @ =0x0805F788
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A6A8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _0802A6D8
	.align 2, 0
_0802A674: .4byte 0x040000D4
_0802A678: .4byte 0x08078308
_0802A67C: .4byte gObjPalRamPtr
_0802A680: .4byte 0x80000010
_0802A684: .4byte 0x0805ECE8
_0802A688: .4byte gObjVramPtr
_0802A68C: .4byte 0x0805EEE8
_0802A690: .4byte 0x08078348
_0802A694: .4byte 0x0805F0E8
_0802A698: .4byte 0x080783C8
_0802A69C: .4byte 0x0805F488
_0802A6A0: .4byte 0x80000100
_0802A6A4: .4byte 0x08078328
_0802A6A8: .4byte 0x80000040
_0802A6AC: .4byte 0x08078568
_0802A6B0: .4byte 0x08061A28
_0802A6B4: .4byte 0x08060608
_0802A6B8: .4byte 0x80000080
_0802A6BC: .4byte 0x08060708
_0802A6C0: .4byte 0x08061C28
_0802A6C4: .4byte 0x080783E8
_0802A6C8: .4byte 0x0805F508
_0802A6CC: .4byte 0x08078408
_0802A6D0: .4byte 0x0805F708
_0802A6D4: .4byte 0x0805F788
_0802A6D8:
	bge _0802A6E2
_0802A6DA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A6DA
_0802A6E2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r0, _0802A908 @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A90C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A70A
_0802A702:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A702
_0802A70A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r6, _0802A910 @ =0x08061D28
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A736
_0802A72E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A72E
_0802A736:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r0, _0802A918 @ =0x08061D48
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A75E
_0802A756:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A756
_0802A75E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r6, _0802A91C @ =0x08061D68
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A786
_0802A77E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A77E
_0802A786:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r0, _0802A920 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A7AE
_0802A7A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A7A6
_0802A7AE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r6, _0802A924 @ =0x08061DA8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A7D6
_0802A7CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A7CE
_0802A7D6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r0, _0802A928 @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A7FE
_0802A7F6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A7F6
_0802A7FE:
	ldr r2, _0802A904 @ =0x040000D4
	ldr r6, _0802A92C @ =0x0805F2E8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A930 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A820
_0802A818:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A818
_0802A820:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r0, _0802A934 @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A84E
_0802A846:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A846
_0802A84E:
	ldr r2, _0802A904 @ =0x040000D4
	ldr r6, _0802A938 @ =0x0805F368
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A870
_0802A868:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A868
_0802A870:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r0, _0802A93C @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A930 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A89E
_0802A896:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A896
_0802A89E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802A904 @ =0x040000D4
	ldr r6, _0802A940 @ =0x080783A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802A914 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A8C6
_0802A8BE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A8BE
_0802A8C6:
	ldr r2, _0802A904 @ =0x040000D4
	ldr r0, _0802A944 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802A930 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A8E8
_0802A8E0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A8E0
_0802A8E8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A904: .4byte 0x040000D4
_0802A908: .4byte 0x0805F808
_0802A90C: .4byte 0x80000100
_0802A910: .4byte 0x08061D28
_0802A914: .4byte 0x80000010
_0802A918: .4byte 0x08061D48
_0802A91C: .4byte 0x08061D68
_0802A920: .4byte 0x08061D88
_0802A924: .4byte 0x08061DA8
_0802A928: .4byte 0x08078368
_0802A92C: .4byte 0x0805F2E8
_0802A930: .4byte 0x80000040
_0802A934: .4byte 0x08078388
_0802A938: .4byte 0x0805F368
_0802A93C: .4byte 0x0805F388
_0802A940: .4byte 0x080783A8
_0802A944: .4byte 0x0805F408

	thumb_func_start sub_0802A948
sub_0802A948: @ 0x0802A948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802ACA4 @ =0x040000D4
	ldr r0, _0802ACA8 @ =0x08078308
	str r0, [r3]
	ldr r1, _0802ACAC @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802ACB0 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r6, _0802ACB4 @ =0x0805ECE8
	ldr r1, _0802ACB8 @ =gObjVramPtr
	ldr r5, _0802ACBC @ =0x0805EEE8
	ldr r7, _0802ACC0 @ =0x08078348
	mov r8, r7
	ldr r7, _0802ACC4 @ =0x0805F0E8
	mov ip, r7
	ldr r7, _0802ACC8 @ =0x08078588
	mov sb, r7
	ldr r7, _0802ACCC @ =0x08061DC8
	mov sl, r7
	cmp r0, #0
	bge _0802A98E
_0802A986:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802A986
_0802A98E:
	ldr r2, _0802ACA4 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A9AE
_0802A9A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A9A6
_0802A9AE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r7, _0802ACD4 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802ACB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802A9E0
_0802A9D8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A9D8
_0802A9E0:
	ldr r2, _0802ACA4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AA00
_0802A9F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802A9F8
_0802AA00:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AA30
_0802AA28:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AA28
_0802AA30:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AA5A
_0802AA52:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AA52
_0802AA5A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	mov r5, r8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802ACB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AA86
_0802AA7E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AA7E
_0802AA86:
	ldr r2, _0802ACA4 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AAA8
_0802AAA0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AAA0
_0802AAA8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	mov r5, ip
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AADA
_0802AAD2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AAD2
_0802AADA:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802ACB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AB06
_0802AAFE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AAFE
_0802AB06:
	ldr r2, _0802ACA4 @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AB28
_0802AB20:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AB20
_0802AB28:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r0, _0802ACD8 @ =0x08078568
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802ACB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AB5A
_0802AB52:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AB52
_0802AB5A:
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r5, _0802ACDC @ =0x08061A28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AB7C
_0802AB74:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AB74
_0802AB7C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r0, _0802ACE0 @ =0x080783C8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802ACB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ABAE
_0802ABA6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ABA6
_0802ABAE:
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r5, _0802ACE4 @ =0x0805F488
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACE8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ABD0
_0802ABC8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ABC8
_0802ABD0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r7, _0802ACEC @ =0x08060608
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACF0 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ABFE
_0802ABF6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ABF6
_0802ABFE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r5, _0802ACF4 @ =0x08061C28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACF0 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AC2A
_0802AC22:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AC22
_0802AC2A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r0, _0802ACF8 @ =0x080783E8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802ACB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AC56
_0802AC4E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AC4E
_0802AC56:
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r5, _0802ACFC @ =0x0805F508
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802ACD0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AC78
_0802AC70:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AC70
_0802AC78:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802ACA4 @ =0x040000D4
	ldr r0, _0802AD00 @ =0x08078408
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802ACB0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _0802AD04
	.align 2, 0
_0802ACA4: .4byte 0x040000D4
_0802ACA8: .4byte 0x08078308
_0802ACAC: .4byte gObjPalRamPtr
_0802ACB0: .4byte 0x80000010
_0802ACB4: .4byte 0x0805ECE8
_0802ACB8: .4byte gObjVramPtr
_0802ACBC: .4byte 0x0805EEE8
_0802ACC0: .4byte 0x08078348
_0802ACC4: .4byte 0x0805F0E8
_0802ACC8: .4byte 0x08078588
_0802ACCC: .4byte 0x08061DC8
_0802ACD0: .4byte 0x80000100
_0802ACD4: .4byte 0x08078328
_0802ACD8: .4byte 0x08078568
_0802ACDC: .4byte 0x08061A28
_0802ACE0: .4byte 0x080783C8
_0802ACE4: .4byte 0x0805F488
_0802ACE8: .4byte 0x80000040
_0802ACEC: .4byte 0x08060608
_0802ACF0: .4byte 0x80000080
_0802ACF4: .4byte 0x08061C28
_0802ACF8: .4byte 0x080783E8
_0802ACFC: .4byte 0x0805F508
_0802AD00: .4byte 0x08078408
_0802AD04:
	bge _0802AD0E
_0802AD06:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AD06
_0802AD0E:
	ldr r2, _0802B000 @ =0x040000D4
	ldr r5, _0802B004 @ =0x0805F708
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B008 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AD30
_0802AD28:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AD28
_0802AD30:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r7, _0802B00C @ =0x0805F788
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B008 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AD5E
_0802AD56:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AD56
_0802AD5E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r0, _0802B010 @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B014 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AD86
_0802AD7E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AD7E
_0802AD86:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r5, _0802B018 @ =gUnk_08061FC8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B008 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ADB2
_0802ADAA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ADAA
_0802ADB2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r7, _0802B01C @ =0x08062048
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B020 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ADDA
_0802ADD2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ADD2
_0802ADDA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r5, _0802B024 @ =0x08062148
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B020 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AE06
_0802ADFE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ADFE
_0802AE06:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r0, _0802B028 @ =0x08061D28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AE32
_0802AE2A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AE2A
_0802AE32:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r5, _0802B030 @ =0x08061D48
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AE5A
_0802AE52:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AE52
_0802AE5A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r7, _0802B034 @ =0x08061D68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AE82
_0802AE7A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AE7A
_0802AE82:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r0, _0802B038 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AEAA
_0802AEA2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AEA2
_0802AEAA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r5, _0802B03C @ =0x08061DA8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AED2
_0802AECA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AECA
_0802AED2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r7, _0802B040 @ =0x08078368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AEFA
_0802AEF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AEF2
_0802AEFA:
	ldr r2, _0802B000 @ =0x040000D4
	ldr r0, _0802B044 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B008 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AF1C
_0802AF14:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AF14
_0802AF1C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r5, _0802B048 @ =0x08078388
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AF4A
_0802AF42:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AF42
_0802AF4A:
	ldr r2, _0802B000 @ =0x040000D4
	ldr r7, _0802B04C @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AF6C
_0802AF64:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AF64
_0802AF6C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r0, _0802B050 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B008 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AF9A
_0802AF92:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AF92
_0802AF9A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B000 @ =0x040000D4
	ldr r5, _0802B054 @ =0x080783A8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B02C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AFC2
_0802AFBA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AFBA
_0802AFC2:
	ldr r2, _0802B000 @ =0x040000D4
	ldr r7, _0802B058 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B008 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802AFE4
_0802AFDC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802AFDC
_0802AFE4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B000: .4byte 0x040000D4
_0802B004: .4byte 0x0805F708
_0802B008: .4byte 0x80000040
_0802B00C: .4byte 0x0805F788
_0802B010: .4byte 0x0805F808
_0802B014: .4byte 0x80000100
_0802B018: .4byte gUnk_08061FC8
_0802B01C: .4byte 0x08062048
_0802B020: .4byte 0x80000080
_0802B024: .4byte 0x08062148
_0802B028: .4byte 0x08061D28
_0802B02C: .4byte 0x80000010
_0802B030: .4byte 0x08061D48
_0802B034: .4byte 0x08061D68
_0802B038: .4byte 0x08061D88
_0802B03C: .4byte 0x08061DA8
_0802B040: .4byte 0x08078368
_0802B044: .4byte 0x0805F2E8
_0802B048: .4byte 0x08078388
_0802B04C: .4byte 0x0805F368
_0802B050: .4byte 0x0805F388
_0802B054: .4byte 0x080783A8
_0802B058: .4byte 0x0805F408

	thumb_func_start sub_0802B05C
sub_0802B05C: @ 0x0802B05C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802B3B8 @ =0x040000D4
	ldr r0, _0802B3BC @ =0x08078308
	str r0, [r3]
	ldr r1, _0802B3C0 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802B3C4 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _0802B3C8 @ =0x0805ECE8
	ldr r1, _0802B3CC @ =gObjVramPtr
	ldr r6, _0802B3D0 @ =0x0805EEE8
	mov ip, r6
	ldr r7, _0802B3D4 @ =0x08078348
	mov sb, r7
	ldr r6, _0802B3D8 @ =0x0805F0E8
	mov r8, r6
	ldr r7, _0802B3DC @ =0x08078588
	mov sl, r7
	ldr r6, _0802B3E0 @ =0x0805FC08
	cmp r0, #0
	bge _0802B0A2
_0802B09A:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802B09A
_0802B0A2:
	ldr r2, _0802B3B8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B0C2
_0802B0BA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B0BA
_0802B0C2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	ldr r7, _0802B3E8 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B3C4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B0F4
_0802B0EC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B0EC
_0802B0F4:
	ldr r2, _0802B3B8 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B116
_0802B10E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B10E
_0802B116:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B148
_0802B140:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B140
_0802B148:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B3C4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B174
_0802B16C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B16C
_0802B174:
	ldr r2, _0802B3B8 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B196
_0802B18E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B18E
_0802B196:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B1C8
_0802B1C0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B1C0
_0802B1C8:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B3C4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B1F4
_0802B1EC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B1EC
_0802B1F4:
	ldr r2, _0802B3B8 @ =0x040000D4
	ldr r0, _0802B3EC @ =0x08061DC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B216
_0802B20E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B20E
_0802B216:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	ldr r7, _0802B3F0 @ =0x08078448
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B3C4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B248
_0802B240:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B240
_0802B248:
	ldr r2, _0802B3B8 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B268
_0802B260:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B260
_0802B268:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B298
_0802B290:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B290
_0802B298:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B2C2
_0802B2BA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B2BA
_0802B2C2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B2EC
_0802B2E4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B2E4
_0802B2EC:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	ldr r7, _0802B3F4 @ =0x080783E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B3C4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B318
_0802B310:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B310
_0802B318:
	ldr r2, _0802B3B8 @ =0x040000D4
	ldr r0, _0802B3F8 @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B3E4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B33A
_0802B332:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B332
_0802B33A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	ldr r6, _0802B3FC @ =0x080785A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B3C4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B36C
_0802B364:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B364
_0802B36C:
	ldr r2, _0802B3B8 @ =0x040000D4
	ldr r7, _0802B400 @ =0x08060608
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B404 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B38E
_0802B386:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B386
_0802B38E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B3B8 @ =0x040000D4
	ldr r6, _0802B408 @ =0x08062248
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B404 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _0802B40C
	.align 2, 0
_0802B3B8: .4byte 0x040000D4
_0802B3BC: .4byte 0x08078308
_0802B3C0: .4byte gObjPalRamPtr
_0802B3C4: .4byte 0x80000010
_0802B3C8: .4byte 0x0805ECE8
_0802B3CC: .4byte gObjVramPtr
_0802B3D0: .4byte 0x0805EEE8
_0802B3D4: .4byte 0x08078348
_0802B3D8: .4byte 0x0805F0E8
_0802B3DC: .4byte 0x08078588
_0802B3E0: .4byte 0x0805FC08
_0802B3E4: .4byte 0x80000100
_0802B3E8: .4byte 0x08078328
_0802B3EC: .4byte 0x08061DC8
_0802B3F0: .4byte 0x08078448
_0802B3F4: .4byte 0x080783E8
_0802B3F8: .4byte 0x0805F508
_0802B3FC: .4byte 0x080785A8
_0802B400: .4byte 0x08060608
_0802B404: .4byte 0x80000080
_0802B408: .4byte 0x08062248
_0802B40C:
	bge _0802B416
_0802B40E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B40E
_0802B416:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r0, _0802B710 @ =0x08078408
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B442
_0802B43A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B43A
_0802B442:
	ldr r2, _0802B70C @ =0x040000D4
	ldr r6, _0802B718 @ =0x0805F708
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B71C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B464
_0802B45C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B45C
_0802B464:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r7, _0802B720 @ =0x0805F808
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B724 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B492
_0802B48A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B48A
_0802B492:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r6, _0802B728 @ =gUnk_08061FC8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B71C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B4BE
_0802B4B6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B4B6
_0802B4BE:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r7, _0802B72C @ =0x08062048
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B730 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B4E6
_0802B4DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B4DE
_0802B4E6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r6, _0802B734 @ =0x08062148
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B730 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B512
_0802B50A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B50A
_0802B512:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r0, _0802B738 @ =0x08061D28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B53E
_0802B536:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B536
_0802B53E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r6, _0802B73C @ =0x08061D48
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B566
_0802B55E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B55E
_0802B566:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r7, _0802B740 @ =0x08061D68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B58E
_0802B586:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B586
_0802B58E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r0, _0802B744 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B5B6
_0802B5AE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B5AE
_0802B5B6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r6, _0802B748 @ =0x08061DA8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B5DE
_0802B5D6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B5D6
_0802B5DE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r7, _0802B74C @ =0x08078368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B606
_0802B5FE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B5FE
_0802B606:
	ldr r2, _0802B70C @ =0x040000D4
	ldr r0, _0802B750 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B71C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B628
_0802B620:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B620
_0802B628:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r6, _0802B754 @ =0x08078388
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B656
_0802B64E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B64E
_0802B656:
	ldr r2, _0802B70C @ =0x040000D4
	ldr r7, _0802B758 @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B678
_0802B670:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B670
_0802B678:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r0, _0802B75C @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B71C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B6A6
_0802B69E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B69E
_0802B6A6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802B70C @ =0x040000D4
	ldr r6, _0802B760 @ =0x080783A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802B714 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B6CE
_0802B6C6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B6C6
_0802B6CE:
	ldr r2, _0802B70C @ =0x040000D4
	ldr r7, _0802B764 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802B71C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B6F0
_0802B6E8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B6E8
_0802B6F0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B70C: .4byte 0x040000D4
_0802B710: .4byte 0x08078408
_0802B714: .4byte 0x80000010
_0802B718: .4byte 0x0805F708
_0802B71C: .4byte 0x80000040
_0802B720: .4byte 0x0805F808
_0802B724: .4byte 0x80000100
_0802B728: .4byte gUnk_08061FC8
_0802B72C: .4byte 0x08062048
_0802B730: .4byte 0x80000080
_0802B734: .4byte 0x08062148
_0802B738: .4byte 0x08061D28
_0802B73C: .4byte 0x08061D48
_0802B740: .4byte 0x08061D68
_0802B744: .4byte 0x08061D88
_0802B748: .4byte 0x08061DA8
_0802B74C: .4byte 0x08078368
_0802B750: .4byte 0x0805F2E8
_0802B754: .4byte 0x08078388
_0802B758: .4byte 0x0805F368
_0802B75C: .4byte 0x0805F388
_0802B760: .4byte 0x080783A8
_0802B764: .4byte 0x0805F408

	thumb_func_start sub_0802B768
sub_0802B768: @ 0x0802B768
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r0, _0802BA2C @ =0x0805FA08
	str r0, [r2]
	ldr r1, _0802BA30 @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA34 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r5, _0802BA38 @ =0x08078328
	ldr r4, _0802BA3C @ =gObjPalRamPtr
	ldr r6, _0802BA40 @ =0x0805EEE8
	ldr r7, _0802BA44 @ =0x0805F0E8
	mov ip, r7
	ldr r7, _0802BA48 @ =0x080783C8
	mov r8, r7
	ldr r7, _0802BA4C @ =0x0805F488
	mov sb, r7
	ldr r7, _0802BA50 @ =0x08078568
	mov sl, r7
	cmp r0, #0
	bge _0802B7AC
_0802B7A4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B7A4
_0802B7AC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BA28 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BA54 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B7D6
_0802B7CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B7CE
_0802B7D6:
	ldr r2, _0802BA28 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA58 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B7F6
_0802B7EE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B7EE
_0802B7F6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r0, _0802BA5C @ =0x08078348
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BA54 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B828
_0802B820:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B820
_0802B828:
	ldr r2, _0802BA28 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA58 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B84A
_0802B842:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B842
_0802B84A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BA28 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BA54 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B87C
_0802B874:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B874
_0802B87C:
	ldr r2, _0802BA28 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA60 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B89E
_0802B896:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B896
_0802B89E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802BA28 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BA54 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B8CC
_0802B8C4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B8C4
_0802B8CC:
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r0, _0802BA64 @ =0x08061A28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA58 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B8EE
_0802B8E6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B8E6
_0802B8EE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r7, _0802BA68 @ =0x08078428
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BA54 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B920
_0802B918:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B918
_0802B920:
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r0, _0802BA6C @ =0x0805FB08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA34 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B942
_0802B93A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B93A
_0802B942:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r7, _0802BA70 @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BA54 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B974
_0802B96C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B96C
_0802B974:
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r0, _0802BA74 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA54 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B996
_0802B98E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B98E
_0802B996:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r7, _0802BA78 @ =0x0805F388
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA60 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B9C4
_0802B9BC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B9BC
_0802B9C4:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r0, _0802BA7C @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BA54 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802B9EC
_0802B9E4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802B9E4
_0802B9EC:
	ldr r2, _0802BA28 @ =0x040000D4
	ldr r7, _0802BA80 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BA60 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BA0E
_0802BA06:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BA06
_0802BA0E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BA28: .4byte 0x040000D4
_0802BA2C: .4byte 0x0805FA08
_0802BA30: .4byte gObjVramPtr
_0802BA34: .4byte 0x80000080
_0802BA38: .4byte 0x08078328
_0802BA3C: .4byte gObjPalRamPtr
_0802BA40: .4byte 0x0805EEE8
_0802BA44: .4byte 0x0805F0E8
_0802BA48: .4byte 0x080783C8
_0802BA4C: .4byte 0x0805F488
_0802BA50: .4byte 0x08078568
_0802BA54: .4byte 0x80000010
_0802BA58: .4byte 0x80000100
_0802BA5C: .4byte 0x08078348
_0802BA60: .4byte 0x80000040
_0802BA64: .4byte 0x08061A28
_0802BA68: .4byte 0x08078428
_0802BA6C: .4byte 0x0805FB08
_0802BA70: .4byte 0x08078388
_0802BA74: .4byte 0x0805F368
_0802BA78: .4byte 0x0805F388
_0802BA7C: .4byte 0x080783A8
_0802BA80: .4byte 0x0805F408

	thumb_func_start sub_0802BA84
sub_0802BA84: @ 0x0802BA84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802BDDC @ =0x040000D4
	ldr r0, _0802BDE0 @ =0x08078308
	str r0, [r3]
	ldr r1, _0802BDE4 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802BDE8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r6, _0802BDEC @ =0x0805ECE8
	ldr r1, _0802BDF0 @ =gObjVramPtr
	ldr r5, _0802BDF4 @ =0x0805EEE8
	mov ip, r5
	ldr r7, _0802BDF8 @ =0x08078348
	mov r8, r7
	ldr r5, _0802BDFC @ =0x0805F0E8
	ldr r7, _0802BE00 @ =0x080783C8
	mov sb, r7
	ldr r7, _0802BE04 @ =0x0805F488
	mov sl, r7
	cmp r0, #0
	bge _0802BACA
_0802BAC2:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802BAC2
_0802BACA:
	ldr r2, _0802BDDC @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BAEA
_0802BAE2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BAE2
_0802BAEA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r7, _0802BE0C @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BDE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BB1C
_0802BB14:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BB14
_0802BB1C:
	ldr r2, _0802BDDC @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BB3E
_0802BB36:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BB36
_0802BB3E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BB70
_0802BB68:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BB68
_0802BB70:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BDE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BB9C
_0802BB94:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BB94
_0802BB9C:
	ldr r2, _0802BDDC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BBBC
_0802BBB4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BBB4
_0802BBBC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BBEC
_0802BBE4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BBE4
_0802BBEC:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BC16
_0802BC0E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BC0E
_0802BC16:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BC40
_0802BC38:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BC38
_0802BC40:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BDE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BC6C
_0802BC64:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BC64
_0802BC6C:
	ldr r2, _0802BDDC @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE10 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BC8E
_0802BC86:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BC86
_0802BC8E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r5, _0802BE14 @ =0x08078448
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BDE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BCBC
_0802BCB4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BCB4
_0802BCBC:
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r7, _0802BE18 @ =0x0805FC08
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BCDE
_0802BCD6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BCD6
_0802BCDE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r5, _0802BE1C @ =0x08078488
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BDE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BD10
_0802BD08:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BD08
_0802BD10:
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r7, _0802BE20 @ =0x08060808
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BD32
_0802BD2A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BD2A
_0802BD32:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r5, _0802BE24 @ =0x08078568
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BDE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BD64
_0802BD5C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BD5C
_0802BD64:
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r7, _0802BE28 @ =0x08061A28
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE08 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BD86
_0802BD7E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BD7E
_0802BD86:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r5, _0802BE2C @ =0x08062348
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802BE10 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BDB8
_0802BDB0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BDB0
_0802BDB8:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802BDDC @ =0x040000D4
	ldr r7, _0802BE30 @ =0x080785C8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802BDE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BE3A
_0802BDD8:
	ldr r0, [r2, #8]
	b _0802BE34
	.align 2, 0
_0802BDDC: .4byte 0x040000D4
_0802BDE0: .4byte 0x08078308
_0802BDE4: .4byte gObjPalRamPtr
_0802BDE8: .4byte 0x80000010
_0802BDEC: .4byte 0x0805ECE8
_0802BDF0: .4byte gObjVramPtr
_0802BDF4: .4byte 0x0805EEE8
_0802BDF8: .4byte 0x08078348
_0802BDFC: .4byte 0x0805F0E8
_0802BE00: .4byte 0x080783C8
_0802BE04: .4byte 0x0805F488
_0802BE08: .4byte 0x80000100
_0802BE0C: .4byte 0x08078328
_0802BE10: .4byte 0x80000040
_0802BE14: .4byte 0x08078448
_0802BE18: .4byte 0x0805FC08
_0802BE1C: .4byte 0x08078488
_0802BE20: .4byte 0x08060808
_0802BE24: .4byte 0x08078568
_0802BE28: .4byte 0x08061A28
_0802BE2C: .4byte 0x08062348
_0802BE30: .4byte 0x080785C8
_0802BE34:
	ands r0, r3
	cmp r0, #0
	bne _0802BDD8
_0802BE3A:
	ldr r2, _0802C184 @ =0x040000D4
	ldr r0, _0802C188 @ =0x080623C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C18C @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BE5C
_0802BE54:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BE54
_0802BE5C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r5, _0802C190 @ =0x08060608
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C194 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BE8E
_0802BE86:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BE86
_0802BE8E:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r0, _0802C198 @ =0x08060708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C194 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BEBA
_0802BEB2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BEB2
_0802BEBA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r5, _0802C19C @ =0x080783E8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C1A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BEE6
_0802BEDE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BEDE
_0802BEE6:
	ldr r2, _0802C184 @ =0x040000D4
	ldr r7, _0802C1A4 @ =0x0805F508
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1A8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BF08
_0802BF00:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BF00
_0802BF08:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r5, _0802C1AC @ =0x08078408
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C1A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BF3A
_0802BF32:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BF32
_0802BF3A:
	ldr r2, _0802C184 @ =0x040000D4
	ldr r7, _0802C1B0 @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1B4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BF5C
_0802BF54:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BF54
_0802BF5C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r0, _0802C1B8 @ =0x0805F788
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1B4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BF8A
_0802BF82:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BF82
_0802BF8A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r5, _0802C1BC @ =0x0805F808
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1A8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BFB2
_0802BFAA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BFAA
_0802BFB2:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r0, _0802C1C0 @ =gUnk_080627C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1B4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802BFDE
_0802BFD6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BFD6
_0802BFDE:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r5, _0802C1C4 @ =gUnk_08061FC8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1B4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C006
_0802BFFE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802BFFE
_0802C006:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r7, _0802C1C8 @ =0x08062048
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C194 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C02E
_0802C026:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C026
_0802C02E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r5, _0802C1CC @ =0x08062148
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C194 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C05A
_0802C052:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C052
_0802C05A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r0, _0802C1CC @ =0x08062148
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C194 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C086
_0802C07E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C07E
_0802C086:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r5, _0802C1D0 @ =0x0805F2E8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1B4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C0B2
_0802C0AA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C0AA
_0802C0B2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r7, _0802C1D4 @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C1A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C0DA
_0802C0D2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C0D2
_0802C0DA:
	ldr r2, _0802C184 @ =0x040000D4
	ldr r0, _0802C1D8 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C0FC
_0802C0F4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C0F4
_0802C0FC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r5, _0802C1DC @ =0x0805F388
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1B4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C12A
_0802C122:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C122
_0802C12A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802C184 @ =0x040000D4
	ldr r7, _0802C1E0 @ =0x080783A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C1A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C152
_0802C14A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C14A
_0802C152:
	ldr r2, _0802C184 @ =0x040000D4
	ldr r0, _0802C1E4 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C1B4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C174
_0802C16C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C16C
_0802C174:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	b _0802C1E8
	.align 2, 0
_0802C184: .4byte 0x040000D4
_0802C188: .4byte 0x080623C8
_0802C18C: .4byte 0x80000200
_0802C190: .4byte 0x08060608
_0802C194: .4byte 0x80000080
_0802C198: .4byte 0x08060708
_0802C19C: .4byte 0x080783E8
_0802C1A0: .4byte 0x80000010
_0802C1A4: .4byte 0x0805F508
_0802C1A8: .4byte 0x80000100
_0802C1AC: .4byte 0x08078408
_0802C1B0: .4byte 0x0805F708
_0802C1B4: .4byte 0x80000040
_0802C1B8: .4byte 0x0805F788
_0802C1BC: .4byte 0x0805F808
_0802C1C0: .4byte gUnk_080627C8
_0802C1C4: .4byte gUnk_08061FC8
_0802C1C8: .4byte 0x08062048
_0802C1CC: .4byte 0x08062148
_0802C1D0: .4byte 0x0805F2E8
_0802C1D4: .4byte 0x08078388
_0802C1D8: .4byte 0x0805F368
_0802C1DC: .4byte 0x0805F388
_0802C1E0: .4byte 0x080783A8
_0802C1E4: .4byte 0x0805F408
_0802C1E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802C1F8
sub_0802C1F8: @ 0x0802C1F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0802C550 @ =0x040000D4
	ldr r0, _0802C554 @ =0x08078468
	str r0, [r2]
	ldr r1, _0802C558 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C55C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r1, #0
	ldr r1, _0802C560 @ =gObjVramPtr
	ldr r5, _0802C564 @ =0x08078328
	mov ip, r5
	ldr r6, _0802C568 @ =0x0805EEE8
	mov r8, r6
	ldr r5, _0802C56C @ =0x08078348
	mov sb, r5
	ldr r7, _0802C570 @ =0x0805F0E8
	ldr r5, _0802C574 @ =0x0805FC08
	ldr r6, _0802C578 @ =0x08060808
	mov sl, r6
	cmp r0, #0
	bge _0802C23E
_0802C236:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C236
_0802C23E:
	ldr r2, _0802C550 @ =0x040000D4
	ldr r0, _0802C57C @ =0x0805FE08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C580 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C260
_0802C258:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C258
_0802C260:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C55C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C292
_0802C28A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C28A
_0802C292:
	ldr r2, _0802C550 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C2B4
_0802C2AC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C2AC
_0802C2B4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C2E6
_0802C2DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C2DE
_0802C2E6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	mov r6, sb
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C55C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C312
_0802C30A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C30A
_0802C312:
	ldr r2, _0802C550 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C332
_0802C32A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C32A
_0802C332:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C362
_0802C35A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C35A
_0802C362:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C38C
_0802C384:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C384
_0802C38C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C3B6
_0802C3AE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C3AE
_0802C3B6:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	ldr r0, _0802C588 @ =0x08078448
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C55C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C3E2
_0802C3DA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C3DA
_0802C3E2:
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C402
_0802C3FA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C3FA
_0802C402:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C432
_0802C42A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C42A
_0802C432:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C45C
_0802C454:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C454
_0802C45C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C486
_0802C47E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C47E
_0802C486:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C4B0
_0802C4A8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C4A8
_0802C4B0:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C4DA
_0802C4D2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C4D2
_0802C4DA:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C504
_0802C4FC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C4FC
_0802C504:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C52E
_0802C526:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C526
_0802C52E:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C550 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C584 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _0802C58C
	.align 2, 0
_0802C550: .4byte 0x040000D4
_0802C554: .4byte 0x08078468
_0802C558: .4byte gObjPalRamPtr
_0802C55C: .4byte 0x80000010
_0802C560: .4byte gObjVramPtr
_0802C564: .4byte 0x08078328
_0802C568: .4byte 0x0805EEE8
_0802C56C: .4byte 0x08078348
_0802C570: .4byte 0x0805F0E8
_0802C574: .4byte 0x0805FC08
_0802C578: .4byte 0x08060808
_0802C57C: .4byte 0x0805FE08
_0802C580: .4byte 0x80000400
_0802C584: .4byte 0x80000100
_0802C588: .4byte 0x08078448
_0802C58C:
	bge _0802C596
_0802C58E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C58E
_0802C596:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C878 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C5C0
_0802C5B8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C5B8
_0802C5C0:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C878 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C5EA
_0802C5E2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C5E2
_0802C5EA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C878 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C614
_0802C60C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C60C
_0802C614:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C878 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C63E
_0802C636:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C636
_0802C63E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	ldr r5, _0802C87C @ =0x080783C8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C880 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C66A
_0802C662:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C662
_0802C66A:
	ldr r2, _0802C874 @ =0x040000D4
	ldr r6, _0802C884 @ =0x0805F488
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C888 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C68C
_0802C684:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C684
_0802C68C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	ldr r0, _0802C88C @ =0x08078488
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C880 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C6BA
_0802C6B2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C6B2
_0802C6BA:
	ldr r2, _0802C874 @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C878 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C6DC
_0802C6D4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C6D4
_0802C6DC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C878 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C70E
_0802C706:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C706
_0802C70E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C878 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C73A
_0802C732:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C732
_0802C73A:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	ldr r0, _0802C890 @ =0x08060608
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C894 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C766
_0802C75E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C75E
_0802C766:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	ldr r5, _0802C898 @ =0x08062248
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C894 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C792
_0802C78A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C78A
_0802C792:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	ldr r0, _0802C89C @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C880 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C7BE
_0802C7B6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C7B6
_0802C7BE:
	ldr r2, _0802C874 @ =0x040000D4
	ldr r5, _0802C8A0 @ =0x0805F368
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C880 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C7E0
_0802C7D8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C7D8
_0802C7E0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	ldr r6, _0802C8A4 @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C888 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C80E
_0802C806:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C806
_0802C80E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802C874 @ =0x040000D4
	ldr r0, _0802C8A8 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802C880 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C836
_0802C82E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C82E
_0802C836:
	ldr r2, _0802C874 @ =0x040000D4
	ldr r5, _0802C8AC @ =0x0805F408
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802C888 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C858
_0802C850:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C850
_0802C858:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C874: .4byte 0x040000D4
_0802C878: .4byte 0x80000100
_0802C87C: .4byte 0x080783C8
_0802C880: .4byte 0x80000010
_0802C884: .4byte 0x0805F488
_0802C888: .4byte 0x80000040
_0802C88C: .4byte 0x08078488
_0802C890: .4byte 0x08060608
_0802C894: .4byte 0x80000080
_0802C898: .4byte 0x08062248
_0802C89C: .4byte 0x08078388
_0802C8A0: .4byte 0x0805F368
_0802C8A4: .4byte 0x0805F388
_0802C8A8: .4byte 0x080783A8
_0802C8AC: .4byte 0x0805F408

	thumb_func_start sub_0802C8B0
sub_0802C8B0: @ 0x0802C8B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802CC08 @ =0x040000D4
	ldr r0, _0802CC0C @ =0x08078308
	str r0, [r3]
	ldr r1, _0802CC10 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802CC14 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _0802CC18 @ =0x0805ECE8
	ldr r1, _0802CC1C @ =gObjVramPtr
	ldr r7, _0802CC20 @ =0x0805EEE8
	ldr r6, _0802CC24 @ =0x08078348
	mov r8, r6
	ldr r6, _0802CC28 @ =0x0805F0E8
	mov ip, r6
	ldr r6, _0802CC2C @ =0x08078568
	mov sb, r6
	ldr r6, _0802CC30 @ =0x08061A28
	mov sl, r6
	cmp r0, #0
	bge _0802C8F6
_0802C8EE:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802C8EE
_0802C8F6:
	ldr r2, _0802CC08 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C916
_0802C90E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C90E
_0802C916:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r6, _0802CC38 @ =0x08078328
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CC14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C948
_0802C940:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C940
_0802C948:
	ldr r2, _0802CC08 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C968
_0802C960:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C960
_0802C968:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C998
_0802C990:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C990
_0802C998:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CC14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C9C4
_0802C9BC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C9BC
_0802C9C4:
	ldr r2, _0802CC08 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802C9E6
_0802C9DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802C9DE
_0802C9E6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CA18
_0802CA10:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CA10
_0802CA18:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	mov r6, sb
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CC14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CA44
_0802CA3C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CA3C
_0802CA44:
	ldr r2, _0802CC08 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CA66
_0802CA5E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CA5E
_0802CA66:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r6, _0802CC3C @ =0x080785E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CC14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CA98
_0802CA90:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CA90
_0802CA98:
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r0, _0802CC40 @ =0x08062348
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC44 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CABA
_0802CAB2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CAB2
_0802CABA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r6, _0802CC48 @ =0x080785C8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CC14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CAE8
_0802CAE0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CAE0
_0802CAE8:
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r0, _0802CC4C @ =0x080623C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC50 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CB0A
_0802CB02:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CB02
_0802CB0A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r6, _0802CC54 @ =0x08060608
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC58 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CB3C
_0802CB34:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CB34
_0802CB3C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r6, _0802CC5C @ =0x08060708
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC58 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CB68
_0802CB60:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CB60
_0802CB68:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r6, _0802CC60 @ =0x08078608
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CC14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CB94
_0802CB8C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CB8C
_0802CB94:
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r0, _0802CC64 @ =0x08062248
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC58 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CBB6
_0802CBAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CBAE
_0802CBB6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r6, _0802CC68 @ =0x080783E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CC14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CBE8
_0802CBE0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CBE0
_0802CBE8:
	ldr r2, _0802CC08 @ =0x040000D4
	ldr r0, _0802CC6C @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CC34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CC74
_0802CC02:
	ldr r0, [r2, #8]
	ands r0, r3
	b _0802CC70
	.align 2, 0
_0802CC08: .4byte 0x040000D4
_0802CC0C: .4byte 0x08078308
_0802CC10: .4byte gObjPalRamPtr
_0802CC14: .4byte 0x80000010
_0802CC18: .4byte 0x0805ECE8
_0802CC1C: .4byte gObjVramPtr
_0802CC20: .4byte 0x0805EEE8
_0802CC24: .4byte 0x08078348
_0802CC28: .4byte 0x0805F0E8
_0802CC2C: .4byte 0x08078568
_0802CC30: .4byte 0x08061A28
_0802CC34: .4byte 0x80000100
_0802CC38: .4byte 0x08078328
_0802CC3C: .4byte 0x080785E8
_0802CC40: .4byte 0x08062348
_0802CC44: .4byte 0x80000040
_0802CC48: .4byte 0x080785C8
_0802CC4C: .4byte 0x080623C8
_0802CC50: .4byte 0x80000200
_0802CC54: .4byte 0x08060608
_0802CC58: .4byte 0x80000080
_0802CC5C: .4byte 0x08060708
_0802CC60: .4byte 0x08078608
_0802CC64: .4byte 0x08062248
_0802CC68: .4byte 0x080783E8
_0802CC6C: .4byte 0x0805F508
_0802CC70:
	cmp r0, #0
	bne _0802CC02
_0802CC74:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFB8 @ =0x08078408
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CCA6
_0802CC9E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CC9E
_0802CCA6:
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r0, _0802CFC0 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CCC8
_0802CCC0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CCC0
_0802CCC8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFC8 @ =0x0805F788
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CCF6
_0802CCEE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CCEE
_0802CCF6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r0, _0802CFCC @ =0x08062848
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CD1E
_0802CD16:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CD16
_0802CD1E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFD0 @ =0x0805F808
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFD4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CD46
_0802CD3E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CD3E
_0802CD46:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFD8 @ =gUnk_080627C8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CD72
_0802CD6A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CD6A
_0802CD72:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r0, _0802CFDC @ =gUnk_08061FC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CD9A
_0802CD92:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CD92
_0802CD9A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFE0 @ =0x08062048
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFE4 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CDC2
_0802CDBA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CDBA
_0802CDC2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFE8 @ =0x08062148
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFE4 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CDEE
_0802CDE6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CDE6
_0802CDEE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFEC @ =0x08061D28
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CE1A
_0802CE12:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CE12
_0802CE1A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r0, _0802CFF0 @ =0x08061D48
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CE42
_0802CE3A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CE3A
_0802CE42:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFF4 @ =0x08061D68
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CE6A
_0802CE62:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CE62
_0802CE6A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r0, _0802CFF8 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CE92
_0802CE8A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CE8A
_0802CE92:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802CFFC @ =0x08061DA8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CEBA
_0802CEB2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CEB2
_0802CEBA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r0, _0802D000 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CEE2
_0802CEDA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CEDA
_0802CEE2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802D004 @ =0x08078388
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CF0A
_0802CF02:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CF02
_0802CF0A:
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r0, _0802D008 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CF2C
_0802CF24:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CF24
_0802CF2C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802D00C @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CF5A
_0802CF52:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CF52
_0802CF5A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r0, _0802D010 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802CFBC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CF82
_0802CF7A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CF7A
_0802CF82:
	ldr r2, _0802CFB4 @ =0x040000D4
	ldr r6, _0802D014 @ =0x0805F408
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802CFC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802CFA4
_0802CF9C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802CF9C
_0802CFA4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	b _0802D018
	.align 2, 0
_0802CFB4: .4byte 0x040000D4
_0802CFB8: .4byte 0x08078408
_0802CFBC: .4byte 0x80000010
_0802CFC0: .4byte 0x0805F708
_0802CFC4: .4byte 0x80000040
_0802CFC8: .4byte 0x0805F788
_0802CFCC: .4byte 0x08062848
_0802CFD0: .4byte 0x0805F808
_0802CFD4: .4byte 0x80000100
_0802CFD8: .4byte gUnk_080627C8
_0802CFDC: .4byte gUnk_08061FC8
_0802CFE0: .4byte 0x08062048
_0802CFE4: .4byte 0x80000080
_0802CFE8: .4byte 0x08062148
_0802CFEC: .4byte 0x08061D28
_0802CFF0: .4byte 0x08061D48
_0802CFF4: .4byte 0x08061D68
_0802CFF8: .4byte 0x08061D88
_0802CFFC: .4byte 0x08061DA8
_0802D000: .4byte 0x0805F2E8
_0802D004: .4byte 0x08078388
_0802D008: .4byte 0x0805F368
_0802D00C: .4byte 0x0805F388
_0802D010: .4byte 0x080783A8
_0802D014: .4byte 0x0805F408
_0802D018:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D028
sub_0802D028: @ 0x0802D028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0802D394 @ =0x040000D4
	ldr r0, _0802D398 @ =0x080784A8
	str r0, [r2]
	ldr r1, _0802D39C @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D3A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r5, #0x80
	lsls r5, r5, #0x18
	adds r4, r1, #0
	ldr r7, _0802D3A4 @ =0x08060A08
	ldr r3, _0802D3A8 @ =gObjVramPtr
	ldr r1, _0802D3AC @ =0x080784C8
	mov ip, r1
	ldr r1, _0802D3B0 @ =0x08060A88
	mov sb, r1
	ldr r1, _0802D3B4 @ =0x080784E8
	mov sl, r1
	ldr r1, _0802D3B8 @ =gUnk_08189A24
	mov r8, r1
	ldr r6, _0802D3BC @ =gUnk_03004C20
	cmp r0, #0
	bge _0802D070
	adds r1, r5, #0
_0802D068:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802D068
_0802D070:
	ldr r1, _0802D394 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D3C0 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D090
_0802D088:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D088
_0802D090:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	ldr r1, _0802D394 @ =0x040000D4
	mov r0, ip
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0802D3A0 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D0BE
_0802D0B6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D0B6
_0802D0BE:
	ldr r1, _0802D394 @ =0x040000D4
	mov r0, sb
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D3C4 @ =0x80000300
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D0E0
_0802D0D8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D0D8
_0802D0E0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0802D394 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0802D3A0 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D112
_0802D10A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D10A
_0802D112:
	ldr r1, _0802D394 @ =0x040000D4
	ldr r0, _0802D3C8 @ =0x08061088
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D3CC @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D134
_0802D12C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D12C
_0802D134:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0802D394 @ =0x040000D4
	ldr r0, _0802D3D0 @ =0x08078628
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0802D3A0 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D166
_0802D15E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D15E
_0802D166:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802D394 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0802D3CC @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802D1A4
_0802D19C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802D19C
_0802D1A4:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0802D394 @ =0x040000D4
	ldr r0, _0802D3D4 @ =0x08078328
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0802D3A0 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D1D0
_0802D1C8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D1C8
_0802D1D0:
	ldr r1, _0802D394 @ =0x040000D4
	ldr r0, _0802D3D8 @ =0x0805EEE8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D3DC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D1F2
_0802D1EA:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D1EA
_0802D1F2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0802D394 @ =0x040000D4
	ldr r0, _0802D3D8 @ =0x0805EEE8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D3DC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D224
_0802D21C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D21C
_0802D224:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0802D394 @ =0x040000D4
	ldr r0, _0802D3E0 @ =0x08078648
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0802D3A0 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D250
_0802D248:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D248
_0802D250:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802D394 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0802D3DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802D28E
_0802D286:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802D286
_0802D28E:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _0802D394 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0802D3DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802D2D0
_0802D2C8:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802D2C8
_0802D2D0:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0802D394 @ =0x040000D4
	ldr r0, _0802D3E4 @ =0x08078668
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0802D3A0 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D2FC
_0802D2F4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D2F4
_0802D2FC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802D394 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x78]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0802D3CC @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802D33A
_0802D332:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802D332
_0802D33A:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _0802D394 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r6, [r6, #0xc]
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	adds r0, #0x90
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0802D3CC @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0802D37E
_0802D376:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0802D376
_0802D37E:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0802D394 @ =0x040000D4
	ldr r0, _0802D3E8 @ =0x08078688
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	b _0802D3EC
	.align 2, 0
_0802D394: .4byte 0x040000D4
_0802D398: .4byte 0x080784A8
_0802D39C: .4byte gObjPalRamPtr
_0802D3A0: .4byte 0x80000010
_0802D3A4: .4byte 0x08060A08
_0802D3A8: .4byte gObjVramPtr
_0802D3AC: .4byte 0x080784C8
_0802D3B0: .4byte 0x08060A88
_0802D3B4: .4byte 0x080784E8
_0802D3B8: .4byte gUnk_08189A24
_0802D3BC: .4byte gUnk_03004C20
_0802D3C0: .4byte 0x80000040
_0802D3C4: .4byte 0x80000300
_0802D3C8: .4byte 0x08061088
_0802D3CC: .4byte 0x80000400
_0802D3D0: .4byte 0x08078628
_0802D3D4: .4byte 0x08078328
_0802D3D8: .4byte 0x0805EEE8
_0802D3DC: .4byte 0x80000100
_0802D3E0: .4byte 0x08078648
_0802D3E4: .4byte 0x08078668
_0802D3E8: .4byte 0x08078688
_0802D3EC:
	ldr r0, _0802D530 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D404
_0802D3FC:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D3FC
_0802D404:
	ldr r1, _0802D534 @ =0x040000D4
	ldr r0, _0802D538 @ =0x08061D28
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D530 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D426
_0802D41E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D41E
_0802D426:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _0802D534 @ =0x040000D4
	ldr r0, _0802D53C @ =0x08061D48
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D530 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D454
_0802D44C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D44C
_0802D454:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _0802D534 @ =0x040000D4
	ldr r0, _0802D540 @ =0x08061D68
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D530 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D47C
_0802D474:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D474
_0802D47C:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _0802D534 @ =0x040000D4
	ldr r0, _0802D544 @ =0x08061D88
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D530 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D4A4
_0802D49C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D49C
_0802D4A4:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _0802D534 @ =0x040000D4
	ldr r0, _0802D548 @ =0x08061DA8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D530 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D4CC
_0802D4C4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D4C4
_0802D4CC:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _0802D534 @ =0x040000D4
	ldr r0, _0802D54C @ =0x080783A8
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0802D530 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D4F4
_0802D4EC:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D4EC
_0802D4F4:
	ldr r1, _0802D534 @ =0x040000D4
	ldr r0, _0802D550 @ =0x0805F408
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0802D554 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802D516
_0802D50E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D50E
_0802D516:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D530: .4byte 0x80000010
_0802D534: .4byte 0x040000D4
_0802D538: .4byte 0x08061D28
_0802D53C: .4byte 0x08061D48
_0802D540: .4byte 0x08061D68
_0802D544: .4byte 0x08061D88
_0802D548: .4byte 0x08061DA8
_0802D54C: .4byte 0x080783A8
_0802D550: .4byte 0x0805F408
_0802D554: .4byte 0x80000040

	thumb_func_start sub_0802D558
sub_0802D558: @ 0x0802D558
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802D8B0 @ =0x040000D4
	ldr r0, _0802D8B4 @ =0x08078308
	str r0, [r3]
	ldr r1, _0802D8B8 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _0802D8C0 @ =0x0805ECE8
	ldr r1, _0802D8C4 @ =gObjVramPtr
	ldr r6, _0802D8C8 @ =0x0805EEE8
	mov r8, r6
	ldr r7, _0802D8CC @ =0x08078448
	mov sb, r7
	ldr r6, _0802D8D0 @ =0x0805FC08
	ldr r7, _0802D8D4 @ =0x080628C8
	mov sl, r7
	ldr r7, _0802D8D8 @ =0x08062AC8
	mov ip, r7
	cmp r0, #0
	bge _0802D59E
_0802D596:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802D596
_0802D59E:
	ldr r2, _0802D8B0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D5BE
_0802D5B6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D5B6
_0802D5BE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	ldr r7, _0802D8E0 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D5F0
_0802D5E8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D5E8
_0802D5F0:
	ldr r2, _0802D8B0 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D612
_0802D60A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D60A
_0802D612:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D644
_0802D63C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D63C
_0802D644:
	ldr r2, _0802D8B0 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D664
_0802D65C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D65C
_0802D664:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D694
_0802D68C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D68C
_0802D694:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D6BE
_0802D6B6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D6B6
_0802D6BE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	ldr r6, _0802D8E4 @ =0x080786A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D6EA
_0802D6E2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D6E2
_0802D6EA:
	ldr r2, _0802D8B0 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D70C
_0802D704:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D704
_0802D70C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D73E
_0802D736:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D736
_0802D73E:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D76A
_0802D762:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D762
_0802D76A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D792
_0802D78A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D78A
_0802D792:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D7BA
_0802D7B2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D7B2
_0802D7BA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D7E2
_0802D7DA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D7DA
_0802D7E2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	ldr r6, _0802D8E8 @ =0x080783E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D80A
_0802D802:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D802
_0802D80A:
	ldr r2, _0802D8B0 @ =0x040000D4
	ldr r7, _0802D8EC @ =0x0805F508
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D82C
_0802D824:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D824
_0802D82C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	ldr r6, _0802D8F0 @ =0x080786C8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D85E
_0802D856:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D856
_0802D85E:
	ldr r2, _0802D8B0 @ =0x040000D4
	ldr r7, _0802D8F4 @ =0x08062AE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802D8DC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D880
_0802D878:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D878
_0802D880:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802D8B0 @ =0x040000D4
	ldr r6, _0802D8F8 @ =0x08078408
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802D8BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D900
_0802D8AA:
	ldr r0, [r2, #8]
	ands r0, r3
	b _0802D8FC
	.align 2, 0
_0802D8B0: .4byte 0x040000D4
_0802D8B4: .4byte 0x08078308
_0802D8B8: .4byte gObjPalRamPtr
_0802D8BC: .4byte 0x80000010
_0802D8C0: .4byte 0x0805ECE8
_0802D8C4: .4byte gObjVramPtr
_0802D8C8: .4byte 0x0805EEE8
_0802D8CC: .4byte 0x08078448
_0802D8D0: .4byte 0x0805FC08
_0802D8D4: .4byte 0x080628C8
_0802D8D8: .4byte 0x08062AC8
_0802D8DC: .4byte 0x80000100
_0802D8E0: .4byte 0x08078328
_0802D8E4: .4byte 0x080786A8
_0802D8E8: .4byte 0x080783E8
_0802D8EC: .4byte 0x0805F508
_0802D8F0: .4byte 0x080786C8
_0802D8F4: .4byte 0x08062AE8
_0802D8F8: .4byte 0x08078408
_0802D8FC:
	cmp r0, #0
	bne _0802D8AA
_0802D900:
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r7, _0802DB78 @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB7C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D922
_0802D91A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D91A
_0802D922:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r0, _0802DB80 @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB84 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D950
_0802D948:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D948
_0802D950:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r6, _0802DB88 @ =0x08062148
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB8C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D97C
_0802D974:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D974
_0802D97C:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r0, _0802DB90 @ =0x08061D28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D9A8
_0802D9A0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D9A0
_0802D9A8:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r6, _0802DB98 @ =0x08061D48
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D9D0
_0802D9C8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D9C8
_0802D9D0:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r7, _0802DB9C @ =0x08061D68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802D9F8
_0802D9F0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802D9F0
_0802D9F8:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r0, _0802DBA0 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DA20
_0802DA18:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DA18
_0802DA20:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r6, _0802DBA4 @ =0x08061DA8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DA48
_0802DA40:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DA40
_0802DA48:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r7, _0802DBA8 @ =0x08078368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DA70
_0802DA68:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DA68
_0802DA70:
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r0, _0802DBAC @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB7C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DA92
_0802DA8A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DA8A
_0802DA92:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r6, _0802DBB0 @ =0x08078388
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DAC0
_0802DAB8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DAB8
_0802DAC0:
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r7, _0802DBB4 @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DAE2
_0802DADA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DADA
_0802DAE2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r0, _0802DBB8 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB7C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DB10
_0802DB08:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DB08
_0802DB10:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r6, _0802DBBC @ =0x080783A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802DB94 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DB38
_0802DB30:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DB30
_0802DB38:
	ldr r2, _0802DB74 @ =0x040000D4
	ldr r7, _0802DBC0 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DB7C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DB5A
_0802DB52:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DB52
_0802DB5A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DB74: .4byte 0x040000D4
_0802DB78: .4byte 0x0805F708
_0802DB7C: .4byte 0x80000040
_0802DB80: .4byte 0x0805F808
_0802DB84: .4byte 0x80000100
_0802DB88: .4byte 0x08062148
_0802DB8C: .4byte 0x80000080
_0802DB90: .4byte 0x08061D28
_0802DB94: .4byte 0x80000010
_0802DB98: .4byte 0x08061D48
_0802DB9C: .4byte 0x08061D68
_0802DBA0: .4byte 0x08061D88
_0802DBA4: .4byte 0x08061DA8
_0802DBA8: .4byte 0x08078368
_0802DBAC: .4byte 0x0805F2E8
_0802DBB0: .4byte 0x08078388
_0802DBB4: .4byte 0x0805F368
_0802DBB8: .4byte 0x0805F388
_0802DBBC: .4byte 0x080783A8
_0802DBC0: .4byte 0x0805F408

	thumb_func_start sub_0802DBC4
sub_0802DBC4: @ 0x0802DBC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802DF18 @ =0x040000D4
	ldr r0, _0802DF1C @ =0x08078308
	str r0, [r3]
	ldr r1, _0802DF20 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _0802DF28 @ =0x0805ECE8
	ldr r1, _0802DF2C @ =gObjVramPtr
	ldr r6, _0802DF30 @ =0x0805F0E8
	mov ip, r6
	ldr r7, _0802DF34 @ =0x08078448
	mov r8, r7
	ldr r6, _0802DF38 @ =0x0805FC08
	mov sb, r6
	ldr r7, _0802DF3C @ =0x080628C8
	mov sl, r7
	ldr r6, _0802DF40 @ =0x08062AC8
	cmp r0, #0
	bge _0802DC0A
_0802DC02:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802DC02
_0802DC0A:
	ldr r2, _0802DF18 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DC2A
_0802DC22:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DC22
_0802DC2A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	ldr r7, _0802DF48 @ =0x08078348
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DC5C
_0802DC54:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DC54
_0802DC5C:
	ldr r2, _0802DF18 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DC7E
_0802DC76:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DC76
_0802DC7E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DCB0
_0802DCA8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DCA8
_0802DCB0:
	ldr r2, _0802DF18 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DCD2
_0802DCCA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DCCA
_0802DCD2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	ldr r7, _0802DF4C @ =0x080786A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DD04
_0802DCFC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DCFC
_0802DD04:
	ldr r2, _0802DF18 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DD26
_0802DD1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DD1E
_0802DD26:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DD58
_0802DD50:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DD50
_0802DD58:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	ldr r7, _0802DF50 @ =0x08062CE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DD84
_0802DD7C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DD7C
_0802DD84:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DDAE
_0802DDA6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DDA6
_0802DDAE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DDD4
_0802DDCC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DDCC
_0802DDD4:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DDFA
_0802DDF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DDF2
_0802DDFA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DE20
_0802DE18:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DE18
_0802DE20:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DE46
_0802DE3E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DE3E
_0802DE46:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DE6C
_0802DE64:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DE64
_0802DE6C:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	ldr r6, _0802DF54 @ =0x080783E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DE94
_0802DE8C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DE8C
_0802DE94:
	ldr r2, _0802DF18 @ =0x040000D4
	ldr r7, _0802DF58 @ =0x0805F508
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DEB6
_0802DEAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DEAE
_0802DEB6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	ldr r6, _0802DF5C @ =0x08062EE8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802DF44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DEE8
_0802DEE0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DEE0
_0802DEE8:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802DF18 @ =0x040000D4
	ldr r0, _0802DF60 @ =0x080786C8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802DF24 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DF14
_0802DF0C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DF0C
_0802DF14:
	ldr r2, _0802DF18 @ =0x040000D4
	b _0802DF64
	.align 2, 0
_0802DF18: .4byte 0x040000D4
_0802DF1C: .4byte 0x08078308
_0802DF20: .4byte gObjPalRamPtr
_0802DF24: .4byte 0x80000010
_0802DF28: .4byte 0x0805ECE8
_0802DF2C: .4byte gObjVramPtr
_0802DF30: .4byte 0x0805F0E8
_0802DF34: .4byte 0x08078448
_0802DF38: .4byte 0x0805FC08
_0802DF3C: .4byte 0x080628C8
_0802DF40: .4byte 0x08062AC8
_0802DF44: .4byte 0x80000100
_0802DF48: .4byte 0x08078348
_0802DF4C: .4byte 0x080786A8
_0802DF50: .4byte 0x08062CE8
_0802DF54: .4byte 0x080783E8
_0802DF58: .4byte 0x0805F508
_0802DF5C: .4byte 0x08062EE8
_0802DF60: .4byte 0x080786C8
_0802DF64:
	ldr r6, _0802E2B0 @ =0x08062AE8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2B4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DF84
_0802DF7C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DF7C
_0802DF84:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r0, _0802E2BC @ =0x08062248
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C0 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DFB6
_0802DFAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DFAE
_0802DFB6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r6, _0802E2C4 @ =0x08078408
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802DFE2
_0802DFDA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DFDA
_0802DFE2:
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r7, _0802E2CC @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2D0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E004
_0802DFFC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802DFFC
_0802E004:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r0, _0802E2D4 @ =0x0805F788
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2D0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E032
_0802E02A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E02A
_0802E032:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r6, _0802E2D8 @ =0x0805F808
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2B4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E05A
_0802E052:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E052
_0802E05A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r0, _0802E2DC @ =gUnk_08061FC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2D0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E086
_0802E07E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E07E
_0802E086:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r6, _0802E2E0 @ =0x08062048
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C0 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E0AE
_0802E0A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E0A6
_0802E0AE:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r0, _0802E2E4 @ =0x080630E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2D0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E0DA
_0802E0D2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E0D2
_0802E0DA:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r6, _0802E2E8 @ =0x08062148
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C0 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E102
_0802E0FA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E0FA
_0802E102:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r0, _0802E2EC @ =0x08061D28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E12E
_0802E126:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E126
_0802E12E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r6, _0802E2F0 @ =0x08061D48
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E156
_0802E14E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E14E
_0802E156:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r7, _0802E2F4 @ =0x08061D68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E17E
_0802E176:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E176
_0802E17E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r0, _0802E2F8 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E1A6
_0802E19E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E19E
_0802E1A6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r6, _0802E2FC @ =0x08061DA8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E1CE
_0802E1C6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E1C6
_0802E1CE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r7, _0802E300 @ =0x08078368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E1F6
_0802E1EE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E1EE
_0802E1F6:
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r0, _0802E304 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2D0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E218
_0802E210:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E210
_0802E218:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r6, _0802E308 @ =0x08078388
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E246
_0802E23E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E23E
_0802E246:
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r7, _0802E30C @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E268
_0802E260:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E260
_0802E268:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r0, _0802E310 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E2D0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E296
_0802E28E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E28E
_0802E296:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802E2B8 @ =0x040000D4
	ldr r6, _0802E314 @ =0x080783A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802E2C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0802E318
	.align 2, 0
_0802E2B0: .4byte 0x08062AE8
_0802E2B4: .4byte 0x80000100
_0802E2B8: .4byte 0x040000D4
_0802E2BC: .4byte 0x08062248
_0802E2C0: .4byte 0x80000080
_0802E2C4: .4byte 0x08078408
_0802E2C8: .4byte 0x80000010
_0802E2CC: .4byte 0x0805F708
_0802E2D0: .4byte 0x80000040
_0802E2D4: .4byte 0x0805F788
_0802E2D8: .4byte 0x0805F808
_0802E2DC: .4byte gUnk_08061FC8
_0802E2E0: .4byte 0x08062048
_0802E2E4: .4byte 0x080630E8
_0802E2E8: .4byte 0x08062148
_0802E2EC: .4byte 0x08061D28
_0802E2F0: .4byte 0x08061D48
_0802E2F4: .4byte 0x08061D68
_0802E2F8: .4byte 0x08061D88
_0802E2FC: .4byte 0x08061DA8
_0802E300: .4byte 0x08078368
_0802E304: .4byte 0x0805F2E8
_0802E308: .4byte 0x08078388
_0802E30C: .4byte 0x0805F368
_0802E310: .4byte 0x0805F388
_0802E314: .4byte 0x080783A8
_0802E318:
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E32A
_0802E322:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E322
_0802E32A:
	ldr r2, _0802E368 @ =0x040000D4
	ldr r7, _0802E36C @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E370 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E34C
_0802E344:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E344
_0802E34C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E368: .4byte 0x040000D4
_0802E36C: .4byte 0x0805F408
_0802E370: .4byte 0x80000040

	thumb_func_start sub_0802E374
sub_0802E374: @ 0x0802E374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802E6CC @ =0x040000D4
	ldr r0, _0802E6D0 @ =0x08078308
	str r0, [r3]
	ldr r1, _0802E6D4 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r1, _0802E6DC @ =gObjVramPtr
	ldr r5, _0802E6E0 @ =0x08078348
	mov ip, r5
	ldr r5, _0802E6E4 @ =0x0805F0E8
	mov r8, r5
	ldr r5, _0802E6E8 @ =0x08078448
	mov sl, r5
	ldr r5, _0802E6EC @ =0x0805FC08
	mov sb, r5
	ldr r6, _0802E6F0 @ =0x08060808
	ldr r7, _0802E6F4 @ =0x08062AC8
	cmp r0, #0
	bge _0802E3BA
_0802E3B2:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802E3B2
_0802E3BA:
	ldr r2, _0802E6CC @ =0x040000D4
	ldr r0, _0802E6F8 @ =0x0805ECE8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E3DC
_0802E3D4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E3D4
_0802E3DC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	mov r5, ip
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E40E
_0802E406:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E406
_0802E40E:
	ldr r2, _0802E6CC @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E430
_0802E428:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E428
_0802E430:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E462
_0802E45A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E45A
_0802E462:
	ldr r2, _0802E6CC @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E484
_0802E47C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E47C
_0802E484:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	mov r5, sb
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E4B6
_0802E4AE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E4AE
_0802E4B6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	ldr r5, _0802E700 @ =0x08078488
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E4E2
_0802E4DA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E4DA
_0802E4E2:
	ldr r2, _0802E6CC @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E502
_0802E4FA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E4FA
_0802E502:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E532
_0802E52A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E52A
_0802E532:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E55C
_0802E554:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E554
_0802E55C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	ldr r5, _0802E704 @ =0x080786A8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E588
_0802E580:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E580
_0802E588:
	ldr r2, _0802E6CC @ =0x040000D4
	ldr r0, _0802E708 @ =0x080628C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E5AA
_0802E5A2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E5A2
_0802E5AA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	ldr r5, _0802E708 @ =0x080628C8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E5DC
_0802E5D4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E5D4
_0802E5DC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	ldr r5, _0802E70C @ =0x08062CE8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E608
_0802E600:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E600
_0802E608:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E632
_0802E62A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E62A
_0802E632:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E658
_0802E650:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E650
_0802E658:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E67E
_0802E676:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E676
_0802E67E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E6A4
_0802E69C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E69C
_0802E6A4:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802E6CC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802E6D8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E712
_0802E6C2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	b _0802E710
	.align 2, 0
_0802E6CC: .4byte 0x040000D4
_0802E6D0: .4byte 0x08078308
_0802E6D4: .4byte gObjPalRamPtr
_0802E6D8: .4byte 0x80000010
_0802E6DC: .4byte gObjVramPtr
_0802E6E0: .4byte 0x08078348
_0802E6E4: .4byte 0x0805F0E8
_0802E6E8: .4byte 0x08078448
_0802E6EC: .4byte 0x0805FC08
_0802E6F0: .4byte 0x08060808
_0802E6F4: .4byte 0x08062AC8
_0802E6F8: .4byte 0x0805ECE8
_0802E6FC: .4byte 0x80000100
_0802E700: .4byte 0x08078488
_0802E704: .4byte 0x080786A8
_0802E708: .4byte 0x080628C8
_0802E70C: .4byte 0x08062CE8
_0802E710:
	bne _0802E6C2
_0802E712:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E738
_0802E730:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E730
_0802E738:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EA68 @ =0x08062EE8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E760
_0802E758:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E758
_0802E760:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EA70 @ =0x08063168
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E78C
_0802E784:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E784
_0802E78C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EA74 @ =0x080786C8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E7B8
_0802E7B0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E7B0
_0802E7B8:
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r0, _0802EA78 @ =0x08062AE8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E7DA
_0802E7D2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E7D2
_0802E7DA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EA7C @ =0x08078408
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E80C
_0802E804:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E804
_0802E80C:
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r0, _0802EA80 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA84 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E82E
_0802E826:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E826
_0802E82E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EA88 @ =0x0805F788
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA84 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E85C
_0802E854:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E854
_0802E85C:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r0, _0802EA8C @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E884
_0802E87C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E87C
_0802E884:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EA90 @ =gUnk_080627C8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA84 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E8B0
_0802E8A8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E8A8
_0802E8B0:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r0, _0802EA94 @ =gUnk_08061FC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA84 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E8D8
_0802E8D0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E8D0
_0802E8D8:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EA98 @ =0x08062048
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA9C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E900
_0802E8F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E8F8
_0802E900:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EAA0 @ =0x08061D28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E92C
_0802E924:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E924
_0802E92C:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r0, _0802EAA4 @ =0x08061D48
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E954
_0802E94C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E94C
_0802E954:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EAA8 @ =0x08061D68
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E97C
_0802E974:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E974
_0802E97C:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r0, _0802EAAC @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E9A4
_0802E99C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E99C
_0802E9A4:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EAB0 @ =0x08061DA8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E9CC
_0802E9C4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E9C4
_0802E9CC:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r0, _0802EAB4 @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802E9F4
_0802E9EC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802E9EC
_0802E9F4:
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EAB8 @ =0x0805F2E8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA84 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EA16
_0802EA0E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EA0E
_0802EA16:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r0, _0802EABC @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EA44
_0802EA3C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EA3C
_0802EA44:
	ldr r2, _0802EA60 @ =0x040000D4
	ldr r5, _0802EAC0 @ =0x0805F368
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EA64 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _0802EAC4
	.align 2, 0
_0802EA60: .4byte 0x040000D4
_0802EA64: .4byte 0x80000010
_0802EA68: .4byte 0x08062EE8
_0802EA6C: .4byte 0x80000100
_0802EA70: .4byte 0x08063168
_0802EA74: .4byte 0x080786C8
_0802EA78: .4byte 0x08062AE8
_0802EA7C: .4byte 0x08078408
_0802EA80: .4byte 0x0805F708
_0802EA84: .4byte 0x80000040
_0802EA88: .4byte 0x0805F788
_0802EA8C: .4byte 0x0805F808
_0802EA90: .4byte gUnk_080627C8
_0802EA94: .4byte gUnk_08061FC8
_0802EA98: .4byte 0x08062048
_0802EA9C: .4byte 0x80000080
_0802EAA0: .4byte 0x08061D28
_0802EAA4: .4byte 0x08061D48
_0802EAA8: .4byte 0x08061D68
_0802EAAC: .4byte 0x08061D88
_0802EAB0: .4byte 0x08061DA8
_0802EAB4: .4byte 0x08078368
_0802EAB8: .4byte 0x0805F2E8
_0802EABC: .4byte 0x08078388
_0802EAC0: .4byte 0x0805F368
_0802EAC4:
	bge _0802EACE
_0802EAC6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EAC6
_0802EACE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EB60 @ =0x040000D4
	ldr r0, _0802EB64 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EB68 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EAFC
_0802EAF4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EAF4
_0802EAFC:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802EB60 @ =0x040000D4
	ldr r5, _0802EB6C @ =0x080783A8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EB70 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EB24
_0802EB1C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EB1C
_0802EB24:
	ldr r2, _0802EB60 @ =0x040000D4
	ldr r0, _0802EB74 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EB68 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EB46
_0802EB3E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EB3E
_0802EB46:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EB60: .4byte 0x040000D4
_0802EB64: .4byte 0x0805F388
_0802EB68: .4byte 0x80000040
_0802EB6C: .4byte 0x080783A8
_0802EB70: .4byte 0x80000010
_0802EB74: .4byte 0x0805F408

	thumb_func_start sub_0802EB78
sub_0802EB78: @ 0x0802EB78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r0, _0802EE68 @ =0x0805FA08
	str r0, [r2]
	ldr r1, _0802EE6C @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE70 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r5, _0802EE74 @ =0x08078328
	ldr r4, _0802EE78 @ =gObjPalRamPtr
	ldr r6, _0802EE7C @ =0x0805EEE8
	ldr r7, _0802EE80 @ =0x0805F0E8
	mov ip, r7
	ldr r7, _0802EE84 @ =0x080783C8
	mov r8, r7
	ldr r7, _0802EE88 @ =0x0805F488
	mov sb, r7
	ldr r7, _0802EE8C @ =0x08078568
	mov sl, r7
	cmp r0, #0
	bge _0802EBBC
_0802EBB4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EBB4
_0802EBBC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EE90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EBE6
_0802EBDE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EBDE
_0802EBE6:
	ldr r2, _0802EE64 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE94 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EC06
_0802EBFE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EBFE
_0802EC06:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE94 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EC36
_0802EC2E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EC2E
_0802EC36:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r7, _0802EE98 @ =0x08078348
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EE90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EC62
_0802EC5A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EC5A
_0802EC62:
	ldr r2, _0802EE64 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE94 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EC84
_0802EC7C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EC7C
_0802EC84:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EE90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ECB6
_0802ECAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ECAE
_0802ECB6:
	ldr r2, _0802EE64 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE9C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ECD8
_0802ECD0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ECD0
_0802ECD8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EE90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ED06
_0802ECFE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ECFE
_0802ED06:
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r0, _0802EEA0 @ =0x08061A28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE94 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ED28
_0802ED20:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ED20
_0802ED28:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r7, _0802EEA4 @ =0x08078428
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EE90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ED5A
_0802ED52:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ED52
_0802ED5A:
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r0, _0802EEA8 @ =0x0805FB08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE70 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802ED7C
_0802ED74:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802ED74
_0802ED7C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r7, _0802EEAC @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EE90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EDAE
_0802EDA6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EDA6
_0802EDAE:
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r0, _0802EEB0 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EDD0
_0802EDC8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EDC8
_0802EDD0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r7, _0802EEB4 @ =0x0805F388
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE9C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EDFE
_0802EDF6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EDF6
_0802EDFE:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r0, _0802EEB8 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802EE90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EE26
_0802EE1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EE1E
_0802EE26:
	ldr r2, _0802EE64 @ =0x040000D4
	ldr r7, _0802EEBC @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802EE9C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EE48
_0802EE40:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EE40
_0802EE48:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EE64: .4byte 0x040000D4
_0802EE68: .4byte 0x0805FA08
_0802EE6C: .4byte gObjVramPtr
_0802EE70: .4byte 0x80000080
_0802EE74: .4byte 0x08078328
_0802EE78: .4byte gObjPalRamPtr
_0802EE7C: .4byte 0x0805EEE8
_0802EE80: .4byte 0x0805F0E8
_0802EE84: .4byte 0x080783C8
_0802EE88: .4byte 0x0805F488
_0802EE8C: .4byte 0x08078568
_0802EE90: .4byte 0x80000010
_0802EE94: .4byte 0x80000100
_0802EE98: .4byte 0x08078348
_0802EE9C: .4byte 0x80000040
_0802EEA0: .4byte 0x08061A28
_0802EEA4: .4byte 0x08078428
_0802EEA8: .4byte 0x0805FB08
_0802EEAC: .4byte 0x08078388
_0802EEB0: .4byte 0x0805F368
_0802EEB4: .4byte 0x0805F388
_0802EEB8: .4byte 0x080783A8
_0802EEBC: .4byte 0x0805F408

	thumb_func_start sub_0802EEC0
sub_0802EEC0: @ 0x0802EEC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802F214 @ =0x040000D4
	ldr r0, _0802F218 @ =0x08078308
	str r0, [r3]
	ldr r1, _0802F21C @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r5, _0802F224 @ =0x0805ECE8
	ldr r4, _0802F228 @ =gObjVramPtr
	ldr r6, _0802F22C @ =0x08078448
	ldr r7, _0802F230 @ =0x080786A8
	mov ip, r7
	ldr r7, _0802F234 @ =0x080628C8
	mov sb, r7
	ldr r7, _0802F238 @ =0x08062AC8
	mov r8, r7
	ldr r7, _0802F23C @ =gUnk_080635E8
	mov sl, r7
	cmp r0, #0
	bge _0802EF04
_0802EEFC:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802EEFC
_0802EF04:
	ldr r2, _0802F214 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F240 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EF24
_0802EF1C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EF1C
_0802EF24:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EF54
_0802EF4C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EF4C
_0802EF54:
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F244 @ =0x0805FC08
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F240 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EF76
_0802EF6E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EF6E
_0802EF76:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EFA8
_0802EFA0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EFA0
_0802EFA8:
	ldr r2, _0802F214 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F240 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EFCA
_0802EFC2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EFC2
_0802EFCA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802EFFC
_0802EFF4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802EFF4
_0802EFFC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F024
_0802F01C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F01C
_0802F024:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F248 @ =0x080783E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F04C
_0802F044:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F044
_0802F04C:
	ldr r2, _0802F214 @ =0x040000D4
	ldr r0, _0802F24C @ =0x0805F508
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F240 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F06E
_0802F066:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F066
_0802F06E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F250 @ =gUnk_08063368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F254 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F0A0
_0802F098:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F098
_0802F0A0:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	ldr r0, _0802F258 @ =0x080786E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F0C8
_0802F0C0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F0C0
_0802F0C8:
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F25C @ =0x080633E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F240 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F0EA
_0802F0E2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F0E2
_0802F0EA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F260 @ =0x08062AE8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F240 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F11C
_0802F114:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F114
_0802F11C:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F264 @ =0x08062348
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F254 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F148
_0802F140:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F140
_0802F148:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	ldr r0, _0802F268 @ =0x080785C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F170
_0802F168:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F168
_0802F170:
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F26C @ =0x080623C8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F270 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F192
_0802F18A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F18A
_0802F192:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F274 @ =0x08078408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F220 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F1C4
_0802F1BC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F1BC
_0802F1C4:
	ldr r2, _0802F214 @ =0x040000D4
	ldr r0, _0802F278 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F254 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F1E6
_0802F1DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F1DE
_0802F1E6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F214 @ =0x040000D4
	ldr r7, _0802F27C @ =0x0805F788
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F254 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F282
_0802F20C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	b _0802F280
	.align 2, 0
_0802F214: .4byte 0x040000D4
_0802F218: .4byte 0x08078308
_0802F21C: .4byte gObjPalRamPtr
_0802F220: .4byte 0x80000010
_0802F224: .4byte 0x0805ECE8
_0802F228: .4byte gObjVramPtr
_0802F22C: .4byte 0x08078448
_0802F230: .4byte 0x080786A8
_0802F234: .4byte 0x080628C8
_0802F238: .4byte 0x08062AC8
_0802F23C: .4byte gUnk_080635E8
_0802F240: .4byte 0x80000100
_0802F244: .4byte 0x0805FC08
_0802F248: .4byte 0x080783E8
_0802F24C: .4byte 0x0805F508
_0802F250: .4byte gUnk_08063368
_0802F254: .4byte 0x80000040
_0802F258: .4byte 0x080786E8
_0802F25C: .4byte 0x080633E8
_0802F260: .4byte 0x08062AE8
_0802F264: .4byte 0x08062348
_0802F268: .4byte 0x080785C8
_0802F26C: .4byte 0x080623C8
_0802F270: .4byte 0x80000200
_0802F274: .4byte 0x08078408
_0802F278: .4byte 0x0805F708
_0802F27C: .4byte 0x0805F788
_0802F280:
	bne _0802F20C
_0802F282:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r0, _0802F4FC @ =0x0805F808
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F500 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F2AA
_0802F2A2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F2A2
_0802F2AA:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F504 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F2D6
_0802F2CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F2CE
_0802F2D6:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F504 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F2FE
_0802F2F6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F2F6
_0802F2FE:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F504 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F326
_0802F31E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F31E
_0802F326:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r0, _0802F508 @ =0x08062048
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F50C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F34E
_0802F346:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F346
_0802F34E:
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r7, _0802F510 @ =0x080630E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F504 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F37A
_0802F372:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F372
_0802F37A:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r0, _0802F514 @ =0x08061D28
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F518 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F3A2
_0802F39A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F39A
_0802F3A2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r7, _0802F51C @ =0x08061D48
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F518 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F3CA
_0802F3C2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F3C2
_0802F3CA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r0, _0802F520 @ =0x08061D68
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F518 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F3F2
_0802F3EA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F3EA
_0802F3F2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r7, _0802F524 @ =0x08061D88
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F518 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F41A
_0802F412:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F412
_0802F41A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r0, _0802F528 @ =0x08061DA8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F518 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F442
_0802F43A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F43A
_0802F442:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r7, _0802F52C @ =0x0805F2E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F504 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F46A
_0802F462:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F462
_0802F46A:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r0, _0802F530 @ =0x08078388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F518 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F492
_0802F48A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F48A
_0802F492:
	ldr r2, _0802F4F8 @ =0x040000D4
	ldr r7, _0802F534 @ =0x0805F368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F518 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F4B4
_0802F4AC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F4AC
_0802F4B4:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r1, _0802F4F8 @ =0x040000D4
	ldr r0, _0802F538 @ =0x0805F388
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0802F504 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0802F4E2
_0802F4DA:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802F4DA
_0802F4E2:
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F4F8: .4byte 0x040000D4
_0802F4FC: .4byte 0x0805F808
_0802F500: .4byte 0x80000100
_0802F504: .4byte 0x80000040
_0802F508: .4byte 0x08062048
_0802F50C: .4byte 0x80000080
_0802F510: .4byte 0x080630E8
_0802F514: .4byte 0x08061D28
_0802F518: .4byte 0x80000010
_0802F51C: .4byte 0x08061D48
_0802F520: .4byte 0x08061D68
_0802F524: .4byte 0x08061D88
_0802F528: .4byte 0x08061DA8
_0802F52C: .4byte 0x0805F2E8
_0802F530: .4byte 0x08078388
_0802F534: .4byte 0x0805F368
_0802F538: .4byte 0x0805F388

	thumb_func_start sub_0802F53C
sub_0802F53C: @ 0x0802F53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0802F894 @ =0x040000D4
	ldr r0, _0802F898 @ =0x08078468
	str r0, [r2]
	ldr r1, _0802F89C @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r1, #0
	ldr r1, _0802F8A4 @ =gObjVramPtr
	ldr r5, _0802F8A8 @ =0x08078328
	mov ip, r5
	ldr r5, _0802F8AC @ =0x0805EEE8
	ldr r6, _0802F8B0 @ =0x08078348
	mov sb, r6
	ldr r6, _0802F8B4 @ =0x0805F0E8
	mov r8, r6
	ldr r6, _0802F8B8 @ =0x08078448
	mov sl, r6
	ldr r7, _0802F8BC @ =0x0805FC08
	cmp r0, #0
	bge _0802F582
_0802F57A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F57A
_0802F582:
	ldr r2, _0802F894 @ =0x040000D4
	ldr r0, _0802F8C0 @ =0x0805FE08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C4 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F5A4
_0802F59C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F59C
_0802F5A4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F8A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F5D6
_0802F5CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F5CE
_0802F5D6:
	ldr r2, _0802F894 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F5F6
_0802F5EE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F5EE
_0802F5F6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F626
_0802F61E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F61E
_0802F626:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F650
_0802F648:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F648
_0802F650:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	mov r5, sb
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F8A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F67C
_0802F674:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F674
_0802F67C:
	ldr r2, _0802F894 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F69E
_0802F696:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F696
_0802F69E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	mov r5, r8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F6D0
_0802F6C8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F6C8
_0802F6D0:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F8A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F6FC
_0802F6F4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F6F4
_0802F6FC:
	ldr r2, _0802F894 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F71C
_0802F714:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F714
_0802F71C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F74C
_0802F744:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F744
_0802F74C:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F776
_0802F76E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F76E
_0802F776:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F7A0
_0802F798:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F798
_0802F7A0:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F7CA
_0802F7C2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F7C2
_0802F7CA:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	ldr r6, _0802F8CC @ =0x08078588
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F8A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F7F6
_0802F7EE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F7EE
_0802F7F6:
	ldr r2, _0802F894 @ =0x040000D4
	ldr r0, _0802F8D0 @ =0x08061DC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8C8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F818
_0802F810:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F810
_0802F818:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	ldr r5, _0802F8D4 @ =0x080783C8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802F8A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F84A
_0802F842:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F842
_0802F84A:
	ldr r2, _0802F894 @ =0x040000D4
	ldr r6, _0802F8D8 @ =0x0805F488
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8DC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F86C
_0802F864:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F864
_0802F86C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802F894 @ =0x040000D4
	ldr r0, _0802F8E0 @ =0x08060708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802F8E4 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _0802F8E8
	.align 2, 0
_0802F894: .4byte 0x040000D4
_0802F898: .4byte 0x08078468
_0802F89C: .4byte gObjPalRamPtr
_0802F8A0: .4byte 0x80000010
_0802F8A4: .4byte gObjVramPtr
_0802F8A8: .4byte 0x08078328
_0802F8AC: .4byte 0x0805EEE8
_0802F8B0: .4byte 0x08078348
_0802F8B4: .4byte 0x0805F0E8
_0802F8B8: .4byte 0x08078448
_0802F8BC: .4byte 0x0805FC08
_0802F8C0: .4byte 0x0805FE08
_0802F8C4: .4byte 0x80000400
_0802F8C8: .4byte 0x80000100
_0802F8CC: .4byte 0x08078588
_0802F8D0: .4byte 0x08061DC8
_0802F8D4: .4byte 0x080783C8
_0802F8D8: .4byte 0x0805F488
_0802F8DC: .4byte 0x80000040
_0802F8E0: .4byte 0x08060708
_0802F8E4: .4byte 0x80000080
_0802F8E8:
	bge _0802F8F2
_0802F8EA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F8EA
_0802F8F2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FA00 @ =0x040000D4
	ldr r5, _0802FA04 @ =0x08062248
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FA08 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F91E
_0802F916:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F916
_0802F91E:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _0802FA00 @ =0x040000D4
	ldr r0, _0802FA0C @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802FA10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F94A
_0802F942:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F942
_0802F94A:
	ldr r2, _0802FA00 @ =0x040000D4
	ldr r5, _0802FA14 @ =0x0805F368
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FA10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F96C
_0802F964:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F964
_0802F96C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802FA00 @ =0x040000D4
	ldr r6, _0802FA18 @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FA1C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F99A
_0802F992:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F992
_0802F99A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0802FA00 @ =0x040000D4
	ldr r0, _0802FA20 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802FA10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F9C2
_0802F9BA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F9BA
_0802F9C2:
	ldr r2, _0802FA00 @ =0x040000D4
	ldr r5, _0802FA24 @ =0x0805F408
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FA1C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802F9E4
_0802F9DC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802F9DC
_0802F9E4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FA00: .4byte 0x040000D4
_0802FA04: .4byte 0x08062248
_0802FA08: .4byte 0x80000080
_0802FA0C: .4byte 0x08078388
_0802FA10: .4byte 0x80000010
_0802FA14: .4byte 0x0805F368
_0802FA18: .4byte 0x0805F388
_0802FA1C: .4byte 0x80000040
_0802FA20: .4byte 0x080783A8
_0802FA24: .4byte 0x0805F408

	thumb_func_start sub_0802FA28
sub_0802FA28: @ 0x0802FA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802FD7C @ =0x040000D4
	ldr r0, _0802FD80 @ =0x08078308
	str r0, [r3]
	ldr r1, _0802FD84 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r1, _0802FD8C @ =gObjVramPtr
	ldr r5, _0802FD90 @ =0x08078348
	mov ip, r5
	ldr r5, _0802FD94 @ =0x0805F0E8
	mov r8, r5
	ldr r5, _0802FD98 @ =0x08078568
	mov sb, r5
	ldr r5, _0802FD9C @ =0x08061A28
	mov sl, r5
	ldr r7, _0802FDA0 @ =0x080628C8
	ldr r6, _0802FDA4 @ =0x08062AC8
	cmp r0, #0
	bge _0802FA6E
_0802FA66:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _0802FA66
_0802FA6E:
	ldr r2, _0802FD7C @ =0x040000D4
	ldr r0, _0802FDA8 @ =0x0805ECE8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FA90
_0802FA88:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FA88
_0802FA90:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	mov r5, ip
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FAC2
_0802FABA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FABA
_0802FAC2:
	ldr r2, _0802FD7C @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FAE4
_0802FADC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FADC
_0802FAE4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	mov r5, r8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FB16
_0802FB0E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FB0E
_0802FB16:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	mov r5, sb
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FB42
_0802FB3A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FB3A
_0802FB42:
	ldr r2, _0802FD7C @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FB64
_0802FB5C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FB5C
_0802FB64:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	ldr r5, _0802FDB0 @ =0x080786A8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FB96
_0802FB8E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FB8E
_0802FB96:
	ldr r2, _0802FD7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FBB6
_0802FBAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FBAE
_0802FBB6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FBE6
_0802FBDE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FBDE
_0802FBE6:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FC10
_0802FC08:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FC08
_0802FC10:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FC3A
_0802FC32:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FC32
_0802FC3A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FC60
_0802FC58:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FC58
_0802FC60:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FC86
_0802FC7E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FC7E
_0802FC86:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FCAC
_0802FCA4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FCA4
_0802FCAC:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FCD2
_0802FCCA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FCCA
_0802FCD2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	ldr r5, _0802FDB4 @ =0x080783E8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0802FD88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FCFA
_0802FCF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FCF2
_0802FCFA:
	ldr r2, _0802FD7C @ =0x040000D4
	ldr r0, _0802FDB8 @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FD1C
_0802FD14:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FD14
_0802FD1C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	ldr r5, _0802FDBC @ =0x08062EE8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FD4E
_0802FD46:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FD46
_0802FD4E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0802FD7C @ =0x040000D4
	ldr r5, _0802FDC0 @ =0x08063668
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0802FDAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FDC6
_0802FD72:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	b _0802FDC4
	.align 2, 0
_0802FD7C: .4byte 0x040000D4
_0802FD80: .4byte 0x08078308
_0802FD84: .4byte gObjPalRamPtr
_0802FD88: .4byte 0x80000010
_0802FD8C: .4byte gObjVramPtr
_0802FD90: .4byte 0x08078348
_0802FD94: .4byte 0x0805F0E8
_0802FD98: .4byte 0x08078568
_0802FD9C: .4byte 0x08061A28
_0802FDA0: .4byte 0x080628C8
_0802FDA4: .4byte 0x08062AC8
_0802FDA8: .4byte 0x0805ECE8
_0802FDAC: .4byte 0x80000100
_0802FDB0: .4byte 0x080786A8
_0802FDB4: .4byte 0x080783E8
_0802FDB8: .4byte 0x0805F508
_0802FDBC: .4byte 0x08062EE8
_0802FDC0: .4byte 0x08063668
_0802FDC4:
	bne _0802FD72
_0802FDC6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _0803011C @ =0x08060608
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030120 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FDF2
_0802FDEA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FDEA
_0802FDF2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030124 @ =gUnk_080627C8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030128 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FE1E
_0802FE16:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FE16
_0802FE1E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r0, _0803012C @ =0x080786E8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FE46
_0802FE3E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FE3E
_0802FE46:
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030134 @ =0x080633E8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030138 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FE68
_0802FE60:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FE60
_0802FE68:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _0803013C @ =0x08062AE8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030138 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FE9A
_0802FE92:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FE92
_0802FE9A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030140 @ =0x08062348
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030128 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FEC6
_0802FEBE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FEBE
_0802FEC6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r0, _08030144 @ =0x080785C8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FEEE
_0802FEE6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FEE6
_0802FEEE:
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030148 @ =0x080623C8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803014C @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FF10
_0802FF08:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FF08
_0802FF10:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030150 @ =0x08078708
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FF42
_0802FF3A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FF3A
_0802FF42:
	ldr r2, _08030118 @ =0x040000D4
	ldr r0, _08030154 @ =0x08062148
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030120 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FF64
_0802FF5C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FF5C
_0802FF64:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030158 @ =0x08061D28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FF96
_0802FF8E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FF8E
_0802FF96:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r0, _0803015C @ =0x08061D48
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FFBE
_0802FFB6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FFB6
_0802FFBE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030160 @ =0x08061D68
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0802FFE6
_0802FFDE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0802FFDE
_0802FFE6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r0, _08030164 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803000E
_08030006:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030006
_0803000E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030168 @ =0x08061DA8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030036
_0803002E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803002E
_08030036:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r0, _0803016C @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030128 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803005E
_08030056:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030056
_0803005E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030170 @ =0x08078388
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030086
_0803007E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803007E
_08030086:
	ldr r2, _08030118 @ =0x040000D4
	ldr r0, _08030174 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080300A8
_080300A0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080300A0
_080300A8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030178 @ =0x0805F388
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030128 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080300D6
_080300CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080300CE
_080300D6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030118 @ =0x040000D4
	ldr r0, _0803017C @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030130 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080300FE
_080300F6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080300F6
_080300FE:
	ldr r2, _08030118 @ =0x040000D4
	ldr r5, _08030180 @ =0x0805F408
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030128 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _08030184
	.align 2, 0
_08030118: .4byte 0x040000D4
_0803011C: .4byte 0x08060608
_08030120: .4byte 0x80000080
_08030124: .4byte gUnk_080627C8
_08030128: .4byte 0x80000040
_0803012C: .4byte 0x080786E8
_08030130: .4byte 0x80000010
_08030134: .4byte 0x080633E8
_08030138: .4byte 0x80000100
_0803013C: .4byte 0x08062AE8
_08030140: .4byte 0x08062348
_08030144: .4byte 0x080785C8
_08030148: .4byte 0x080623C8
_0803014C: .4byte 0x80000200
_08030150: .4byte 0x08078708
_08030154: .4byte 0x08062148
_08030158: .4byte 0x08061D28
_0803015C: .4byte 0x08061D48
_08030160: .4byte 0x08061D68
_08030164: .4byte 0x08061D88
_08030168: .4byte 0x08061DA8
_0803016C: .4byte 0x0805F2E8
_08030170: .4byte 0x08078388
_08030174: .4byte 0x0805F368
_08030178: .4byte 0x0805F388
_0803017C: .4byte 0x080783A8
_08030180: .4byte 0x0805F408
_08030184:
	bge _0803018E
_08030186:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030186
_0803018E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080301A8
sub_080301A8: @ 0x080301A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0803050C @ =0x040000D4
	ldr r0, _08030510 @ =0x080784A8
	str r0, [r2]
	ldr r1, _08030514 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030518 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r5, #0x80
	lsls r5, r5, #0x18
	adds r4, r1, #0
	ldr r6, _0803051C @ =0x08060A08
	ldr r3, _08030520 @ =gObjVramPtr
	ldr r1, _08030524 @ =0x080784C8
	mov ip, r1
	ldr r1, _08030528 @ =0x08060A88
	mov sb, r1
	ldr r1, _0803052C @ =gUnk_08189A24
	mov sl, r1
	ldr r7, _08030530 @ =gUnk_03004C20
	ldr r1, _08030534 @ =0x0805F0E8
	mov r8, r1
	cmp r0, #0
	bge _080301F0
	adds r1, r5, #0
_080301E8:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080301E8
_080301F0:
	ldr r1, _0803050C @ =0x040000D4
	str r6, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08030538 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08030210
_08030208:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030208
_08030210:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	mov r0, ip
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08030518 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803023E
_08030236:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030236
_0803023E:
	ldr r1, _0803050C @ =0x040000D4
	mov r0, sb
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0803053C @ =0x80000300
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08030260
_08030258:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030258
_08030260:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _08030540 @ =0x080784E8
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08030518 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08030292
_0803028A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803028A
_08030292:
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _08030544 @ =0x08061088
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08030548 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080302B4
_080302AC:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080302AC
_080302B4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _0803054C @ =0x08078728
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08030518 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080302E6
_080302DE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080302DE
_080302E6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0803050C @ =0x040000D4
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r7, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08030548 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08030324
_0803031C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803031C
_08030324:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _08030550 @ =0x08078348
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08030518 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08030350
_08030348:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030348
_08030350:
	ldr r1, _0803050C @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08030554 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08030372
_0803036A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803036A
_08030372:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08030554 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080303A4
_0803039C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803039C
_080303A4:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08030554 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080303D0
_080303C8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080303C8
_080303D0:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _08030558 @ =0x08078748
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08030518 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080303FC
_080303F4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080303F4
_080303FC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0803050C @ =0x040000D4
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r7, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08030554 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803043A
_08030432:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08030432
_0803043A:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _0803055C @ =0x0200A984
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08030518 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08030466
_0803045E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803045E
_08030466:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _08030560 @ =0x0200A904
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08030538 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803048E
_08030486:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030486
_0803048E:
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _0803054C @ =0x08078728
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08030518 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080304B6
_080304AE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080304AE
_080304B6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _0803050C @ =0x040000D4
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r7, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x24]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08030548 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080304F4
_080304EC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080304EC
_080304F4:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _0803050C @ =0x040000D4
	ldr r0, _08030564 @ =0x08078788
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08030518 @ =0x80000010
	b _08030568
	.align 2, 0
_0803050C: .4byte 0x040000D4
_08030510: .4byte 0x080784A8
_08030514: .4byte gObjPalRamPtr
_08030518: .4byte 0x80000010
_0803051C: .4byte 0x08060A08
_08030520: .4byte gObjVramPtr
_08030524: .4byte 0x080784C8
_08030528: .4byte 0x08060A88
_0803052C: .4byte gUnk_08189A24
_08030530: .4byte gUnk_03004C20
_08030534: .4byte 0x0805F0E8
_08030538: .4byte 0x80000040
_0803053C: .4byte 0x80000300
_08030540: .4byte 0x080784E8
_08030544: .4byte 0x08061088
_08030548: .4byte 0x80000400
_0803054C: .4byte 0x08078728
_08030550: .4byte 0x08078348
_08030554: .4byte 0x80000100
_08030558: .4byte 0x08078748
_0803055C: .4byte 0x0200A984
_08030560: .4byte 0x0200A904
_08030564: .4byte 0x08078788
_08030568:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803057E
_08030576:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030576
_0803057E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08030668 @ =0x040000D4
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r7, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x28]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0803066C @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080305BC
_080305B4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080305B4
_080305BC:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08030668 @ =0x040000D4
	ldrb r1, [r7, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r7, [r7, #0xc]
	adds r0, r0, r7
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x2c]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0803066C @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080305FE
_080305F6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080305F6
_080305FE:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08030668 @ =0x040000D4
	ldr r0, _08030670 @ =0x080783A8
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08030674 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803062A
_08030622:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030622
_0803062A:
	ldr r1, _08030668 @ =0x040000D4
	ldr r0, _08030678 @ =0x0805F408
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0803067C @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803064C
_08030644:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030644
_0803064C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030668: .4byte 0x040000D4
_0803066C: .4byte 0x80000400
_08030670: .4byte 0x080783A8
_08030674: .4byte 0x80000010
_08030678: .4byte 0x0805F408
_0803067C: .4byte 0x80000040

	thumb_func_start sub_08030680
sub_08030680: @ 0x08030680
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080309D8 @ =0x040000D4
	ldr r0, _080309DC @ =0x08078308
	str r0, [r3]
	ldr r1, _080309E0 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _080309E4 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _080309E8 @ =0x0805ECE8
	ldr r1, _080309EC @ =gObjVramPtr
	ldr r6, _080309F0 @ =0x08078328
	ldr r7, _080309F4 @ =0x08078348
	mov r8, r7
	ldr r7, _080309F8 @ =0x0805F0E8
	mov ip, r7
	ldr r7, _080309FC @ =0x08078568
	mov sl, r7
	ldr r7, _08030A00 @ =0x0805FC08
	mov sb, r7
	cmp r0, #0
	bge _080306C6
_080306BE:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _080306BE
_080306C6:
	ldr r2, _080309D8 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080306E6
_080306DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080306DE
_080306E6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080309E4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030716
_0803070E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803070E
_08030716:
	ldr r2, _080309D8 @ =0x040000D4
	ldr r7, _08030A08 @ =0x0805EEE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030738
_08030730:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030730
_08030738:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080309E4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803076A
_08030762:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030762
_0803076A:
	ldr r2, _080309D8 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803078C
_08030784:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030784
_0803078C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080307BE
_080307B6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080307B6
_080307BE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080309E4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080307EA
_080307E2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080307E2
_080307EA:
	ldr r2, _080309D8 @ =0x040000D4
	ldr r0, _08030A0C @ =0x08061A28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803080C
_08030804:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030804
_0803080C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	ldr r7, _08030A10 @ =0x08078448
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080309E4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803083E
_08030836:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030836
_0803083E:
	ldr r2, _080309D8 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030860
_08030858:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030858
_08030860:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030892
_0803088A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803088A
_08030892:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	ldr r7, _08030A14 @ =0x080787A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080309E4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080308BE
_080308B6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080308B6
_080308BE:
	ldr r2, _080309D8 @ =0x040000D4
	ldr r0, _08030A18 @ =0x08063868
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080308E0
_080308D8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080308D8
_080308E0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	ldr r7, _08030A1C @ =0x08063A68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A20 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030912
_0803090A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803090A
_08030912:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	ldr r0, _08030A18 @ =0x08063868
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803093A
_08030932:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030932
_0803093A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	ldr r7, _08030A24 @ =0x080783E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080309E4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030966
_0803095E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803095E
_08030966:
	ldr r2, _080309D8 @ =0x040000D4
	ldr r0, _08030A28 @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A04 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030988
_08030980:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030980
_08030988:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080309D8 @ =0x040000D4
	ldr r7, _08030A2C @ =0x080787C8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080309E4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080309BA
_080309B2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080309B2
_080309BA:
	ldr r2, _080309D8 @ =0x040000D4
	ldr r0, _08030A30 @ =0x08063AE8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030A34 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030A3E
_080309D4:
	ldr r0, [r2, #8]
	b _08030A38
	.align 2, 0
_080309D8: .4byte 0x040000D4
_080309DC: .4byte 0x08078308
_080309E0: .4byte gObjPalRamPtr
_080309E4: .4byte 0x80000010
_080309E8: .4byte 0x0805ECE8
_080309EC: .4byte gObjVramPtr
_080309F0: .4byte 0x08078328
_080309F4: .4byte 0x08078348
_080309F8: .4byte 0x0805F0E8
_080309FC: .4byte 0x08078568
_08030A00: .4byte 0x0805FC08
_08030A04: .4byte 0x80000100
_08030A08: .4byte 0x0805EEE8
_08030A0C: .4byte 0x08061A28
_08030A10: .4byte 0x08078448
_08030A14: .4byte 0x080787A8
_08030A18: .4byte 0x08063868
_08030A1C: .4byte 0x08063A68
_08030A20: .4byte 0x80000040
_08030A24: .4byte 0x080783E8
_08030A28: .4byte 0x0805F508
_08030A2C: .4byte 0x080787C8
_08030A30: .4byte 0x08063AE8
_08030A34: .4byte 0x80000080
_08030A38:
	ands r0, r3
	cmp r0, #0
	bne _080309D4
_08030A3E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030CEC @ =0x08063BE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF0 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030A70
_08030A68:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030A68
_08030A70:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030CF4 @ =gUnk_08063FE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030A9C
_08030A94:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030A94
_08030A9C:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r0, _08030CFC @ =0x08078888
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030D00 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030AC4
_08030ABC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030ABC
_08030AC4:
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030D04 @ =0x08064068
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF0 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030AE6
_08030ADE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030ADE
_08030AE6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030CF4 @ =gUnk_08063FE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030B18
_08030B10:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030B10
_08030B18:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r0, _08030D08 @ =gUnk_080627C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030B40
_08030B38:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030B38
_08030B40:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030D0C @ =0x08078408
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030D00 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030B68
_08030B60:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030B60
_08030B68:
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r0, _08030D10 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030B8A
_08030B82:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030B82
_08030B8A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030D14 @ =0x0805F808
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030D18 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030BB8
_08030BB0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030BB0
_08030BB8:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030D1C @ =0x08078368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030D00 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030BE4
_08030BDC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030BDC
_08030BE4:
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r0, _08030D20 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030C06
_08030BFE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030BFE
_08030C06:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030D24 @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030D00 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030C34
_08030C2C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030C2C
_08030C34:
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r0, _08030D28 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030D00 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030C56
_08030C4E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030C4E
_08030C56:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030D2C @ =0x0805F388
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030C84
_08030C7C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030C7C
_08030C84:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r0, _08030D30 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08030D00 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030CAC
_08030CA4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030CA4
_08030CAC:
	ldr r2, _08030CE8 @ =0x040000D4
	ldr r7, _08030D34 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08030CF8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030CCE
_08030CC6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030CC6
_08030CCE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030CE8: .4byte 0x040000D4
_08030CEC: .4byte 0x08063BE8
_08030CF0: .4byte 0x80000200
_08030CF4: .4byte gUnk_08063FE8
_08030CF8: .4byte 0x80000040
_08030CFC: .4byte 0x08078888
_08030D00: .4byte 0x80000010
_08030D04: .4byte 0x08064068
_08030D08: .4byte gUnk_080627C8
_08030D0C: .4byte 0x08078408
_08030D10: .4byte 0x0805F708
_08030D14: .4byte 0x0805F808
_08030D18: .4byte 0x80000100
_08030D1C: .4byte 0x08078368
_08030D20: .4byte 0x0805F2E8
_08030D24: .4byte 0x08078388
_08030D28: .4byte 0x0805F368
_08030D2C: .4byte 0x0805F388
_08030D30: .4byte 0x080783A8
_08030D34: .4byte 0x0805F408

	thumb_func_start sub_08030D38
sub_08030D38: @ 0x08030D38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08031090 @ =0x040000D4
	ldr r0, _08031094 @ =0x08078308
	str r0, [r3]
	ldr r1, _08031098 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _080310A0 @ =0x0805ECE8
	ldr r1, _080310A4 @ =gObjVramPtr
	ldr r6, _080310A8 @ =0x08078328
	ldr r7, _080310AC @ =0x08078348
	mov r8, r7
	ldr r7, _080310B0 @ =0x0805F0E8
	mov ip, r7
	ldr r7, _080310B4 @ =0x08078568
	mov sb, r7
	ldr r7, _080310B8 @ =0x08061A28
	mov sl, r7
	cmp r0, #0
	bge _08030D7E
_08030D76:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08030D76
_08030D7E:
	ldr r2, _08031090 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030D9E
_08030D96:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030D96
_08030D9E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030DCE
_08030DC6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030DC6
_08030DCE:
	ldr r2, _08031090 @ =0x040000D4
	ldr r7, _080310C0 @ =0x0805EEE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030DF0
_08030DE8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030DE8
_08030DF0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030E22
_08030E1A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030E1A
_08030E22:
	ldr r2, _08031090 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030E44
_08030E3C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030E3C
_08030E44:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030E76
_08030E6E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030E6E
_08030E76:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030EA2
_08030E9A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030E9A
_08030EA2:
	ldr r2, _08031090 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030EC4
_08030EBC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030EBC
_08030EC4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	ldr r7, _080310C4 @ =0x08078588
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030EF6
_08030EEE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030EEE
_08030EF6:
	ldr r2, _08031090 @ =0x040000D4
	ldr r0, _080310C8 @ =0x08061DC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030F18
_08030F10:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030F10
_08030F18:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	ldr r7, _080310CC @ =0x08078448
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030F4A
_08030F42:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030F42
_08030F4A:
	ldr r2, _08031090 @ =0x040000D4
	ldr r0, _080310D0 @ =0x0805FC08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030F6C
_08030F64:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030F64
_08030F6C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	ldr r7, _080310D0 @ =0x0805FC08
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030F9E
_08030F96:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030F96
_08030F9E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	ldr r7, _080310D4 @ =0x080783E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030FCA
_08030FC2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030FC2
_08030FCA:
	ldr r2, _08031090 @ =0x040000D4
	ldr r0, _080310D8 @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310BC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08030FEC
_08030FE4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08030FE4
_08030FEC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	ldr r7, _080310DC @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803101E
_08031016:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031016
_0803101E:
	ldr r2, _08031090 @ =0x040000D4
	ldr r0, _080310E0 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803109C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031040
_08031038:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031038
_08031040:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	ldr r7, _080310E4 @ =0x0805F388
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310E8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803106E
_08031066:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031066
_0803106E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031090 @ =0x040000D4
	ldr r0, _080310EC @ =0x08064468
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080310F0 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _080310F4
	.align 2, 0
_08031090: .4byte 0x040000D4
_08031094: .4byte 0x08078308
_08031098: .4byte gObjPalRamPtr
_0803109C: .4byte 0x80000010
_080310A0: .4byte 0x0805ECE8
_080310A4: .4byte gObjVramPtr
_080310A8: .4byte 0x08078328
_080310AC: .4byte 0x08078348
_080310B0: .4byte 0x0805F0E8
_080310B4: .4byte 0x08078568
_080310B8: .4byte 0x08061A28
_080310BC: .4byte 0x80000100
_080310C0: .4byte 0x0805EEE8
_080310C4: .4byte 0x08078588
_080310C8: .4byte 0x08061DC8
_080310CC: .4byte 0x08078448
_080310D0: .4byte 0x0805FC08
_080310D4: .4byte 0x080783E8
_080310D8: .4byte 0x0805F508
_080310DC: .4byte 0x08078388
_080310E0: .4byte 0x0805F368
_080310E4: .4byte 0x0805F388
_080310E8: .4byte 0x80000040
_080310EC: .4byte 0x08064468
_080310F0: .4byte 0x80000200
_080310F4:
	bge _080310FE
_080310F6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080310F6
_080310FE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313A8 @ =gUnk_08063FE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803112A
_08031122:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031122
_0803112A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r0, _080313B0 @ =0x08078888
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080313B4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031152
_0803114A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803114A
_08031152:
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313B8 @ =0x08064068
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313BC @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031174
_0803116C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803116C
_08031174:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313A8 @ =gUnk_08063FE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080311A6
_0803119E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803119E
_080311A6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r0, _080313C0 @ =0x08078408
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080313B4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080311CE
_080311C6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080311C6
_080311CE:
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313C4 @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080311F0
_080311E8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080311E8
_080311F0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r0, _080313C8 @ =0x0805F788
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803121E
_08031216:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031216
_0803121E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313CC @ =0x08062848
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031246
_0803123E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803123E
_08031246:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r0, _080313D0 @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313D4 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803126E
_08031266:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031266
_0803126E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313D8 @ =0x080630E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803129A
_08031292:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031292
_0803129A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r0, _080313DC @ =0x08062048
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313E0 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080312C2
_080312BA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080312BA
_080312C2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313E4 @ =gUnk_080627C8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080312EE
_080312E6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080312E6
_080312EE:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r0, _080313E8 @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080313B4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031316
_0803130E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803130E
_08031316:
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313EC @ =0x0805F2E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031338
_08031330:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031330
_08031338:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080313A4 @ =0x040000D4
	ldr r0, _080313F0 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080313B4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031366
_0803135E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803135E
_08031366:
	ldr r2, _080313A4 @ =0x040000D4
	ldr r7, _080313F4 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080313AC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031388
_08031380:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031380
_08031388:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080313A4: .4byte 0x040000D4
_080313A8: .4byte gUnk_08063FE8
_080313AC: .4byte 0x80000040
_080313B0: .4byte 0x08078888
_080313B4: .4byte 0x80000010
_080313B8: .4byte 0x08064068
_080313BC: .4byte 0x80000200
_080313C0: .4byte 0x08078408
_080313C4: .4byte 0x0805F708
_080313C8: .4byte 0x0805F788
_080313CC: .4byte 0x08062848
_080313D0: .4byte 0x0805F808
_080313D4: .4byte 0x80000100
_080313D8: .4byte 0x080630E8
_080313DC: .4byte 0x08062048
_080313E0: .4byte 0x80000080
_080313E4: .4byte gUnk_080627C8
_080313E8: .4byte 0x08078368
_080313EC: .4byte 0x0805F2E8
_080313F0: .4byte 0x080783A8
_080313F4: .4byte 0x0805F408

	thumb_func_start sub_080313F8
sub_080313F8: @ 0x080313F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08031750 @ =0x040000D4
	ldr r0, _08031754 @ =0x08078308
	str r0, [r3]
	ldr r1, _08031758 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _0803175C @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _08031760 @ =0x0805ECE8
	ldr r1, _08031764 @ =gObjVramPtr
	ldr r7, _08031768 @ =0x0805F0E8
	ldr r6, _0803176C @ =0x08078588
	mov r8, r6
	ldr r6, _08031770 @ =0x08061DC8
	mov sl, r6
	ldr r6, _08031774 @ =gUnk_08064868
	mov ip, r6
	ldr r6, _08031778 @ =gUnk_08064A68
	mov sb, r6
	cmp r0, #0
	bge _0803143E
_08031436:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08031436
_0803143E:
	ldr r2, _08031750 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803145E
_08031456:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031456
_0803145E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r6, _08031780 @ =0x08078348
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803175C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031490
_08031488:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031488
_08031490:
	ldr r2, _08031750 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080314B0
_080314A8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080314A8
_080314B0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080314E0
_080314D8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080314D8
_080314E0:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803175C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803150C
_08031504:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031504
_0803150C:
	ldr r2, _08031750 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803152E
_08031526:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031526
_0803152E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r6, _08031784 @ =0x08078448
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803175C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031560
_08031558:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031558
_08031560:
	ldr r2, _08031750 @ =0x040000D4
	ldr r0, _08031788 @ =0x0805FC08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031582
_0803157A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803157A
_08031582:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r6, _0803178C @ =0x080783C8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803175C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080315B4
_080315AC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080315AC
_080315B4:
	ldr r2, _08031750 @ =0x040000D4
	ldr r0, _08031790 @ =0x0805F488
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031794 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080315D6
_080315CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080315CE
_080315D6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r6, _08031798 @ =0x080787A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803175C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031604
_080315FC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080315FC
_08031604:
	ldr r2, _08031750 @ =0x040000D4
	ldr r0, _0803179C @ =0x08063868
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031626
_0803161E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803161E
_08031626:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r6, _080317A0 @ =0x08063A68
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031794 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031658
_08031650:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031650
_08031658:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r0, _0803179C @ =0x08063868
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031680
_08031678:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031678
_08031680:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r6, _080317A4 @ =gUnk_08063368
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031794 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080316AC
_080316A4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080316A4
_080316AC:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r0, _080317A8 @ =0x080633E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080316D4
_080316CC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080316CC
_080316D4:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	ldr r6, _080317AC @ =0x080783E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _0803175C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031700
_080316F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080316F8
_08031700:
	ldr r2, _08031750 @ =0x040000D4
	ldr r0, _080317B0 @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031722
_0803171A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803171A
_08031722:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031750 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803177C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080317BA
_0803174C:
	ldr r0, [r2, #8]
	b _080317B4
	.align 2, 0
_08031750: .4byte 0x040000D4
_08031754: .4byte 0x08078308
_08031758: .4byte gObjPalRamPtr
_0803175C: .4byte 0x80000010
_08031760: .4byte 0x0805ECE8
_08031764: .4byte gObjVramPtr
_08031768: .4byte 0x0805F0E8
_0803176C: .4byte 0x08078588
_08031770: .4byte 0x08061DC8
_08031774: .4byte gUnk_08064868
_08031778: .4byte gUnk_08064A68
_0803177C: .4byte 0x80000100
_08031780: .4byte 0x08078348
_08031784: .4byte 0x08078448
_08031788: .4byte 0x0805FC08
_0803178C: .4byte 0x080783C8
_08031790: .4byte 0x0805F488
_08031794: .4byte 0x80000040
_08031798: .4byte 0x080787A8
_0803179C: .4byte 0x08063868
_080317A0: .4byte 0x08063A68
_080317A4: .4byte gUnk_08063368
_080317A8: .4byte 0x080633E8
_080317AC: .4byte 0x080783E8
_080317B0: .4byte 0x0805F508
_080317B4:
	ands r0, r3
	cmp r0, #0
	bne _0803174C
_080317BA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031A9C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080317E6
_080317DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080317DE
_080317E6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031A9C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031812
_0803180A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803180A
_08031812:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	mov r6, sb
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031A9C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803183E
_08031836:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031836
_0803183E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	mov r6, sb
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031A9C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803186A
_08031862:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031862
_0803186A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	mov r6, sb
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031A9C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031896
_0803188E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803188E
_08031896:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	ldr r6, _08031AA0 @ =0x08078408
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031AA4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080318C2
_080318BA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080318BA
_080318C2:
	ldr r2, _08031A98 @ =0x040000D4
	ldr r0, _08031AA8 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031AAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080318E4
_080318DC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080318DC
_080318E4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	ldr r6, _08031AB0 @ =0x0805F808
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031A9C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031912
_0803190A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803190A
_08031912:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	ldr r6, _08031AB4 @ =gUnk_08061FC8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031AAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803193E
_08031936:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031936
_0803193E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	ldr r0, _08031AB8 @ =0x08062048
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031ABC @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031966
_0803195E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803195E
_08031966:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	ldr r6, _08031AC0 @ =0x08078368
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031AA4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031992
_0803198A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803198A
_08031992:
	ldr r2, _08031A98 @ =0x040000D4
	ldr r0, _08031AC4 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031AAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080319B4
_080319AC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080319AC
_080319B4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	ldr r6, _08031AC8 @ =0x08078388
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031AA4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080319E2
_080319DA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080319DA
_080319E2:
	ldr r2, _08031A98 @ =0x040000D4
	ldr r0, _08031ACC @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031AA4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031A04
_080319FC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080319FC
_08031A04:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	ldr r6, _08031AD0 @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031AAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031A32
_08031A2A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031A2A
_08031A32:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031A98 @ =0x040000D4
	ldr r0, _08031AD4 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031AA4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031A5A
_08031A52:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031A52
_08031A5A:
	ldr r2, _08031A98 @ =0x040000D4
	ldr r6, _08031AD8 @ =0x0805F408
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031AAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031A7C
_08031A74:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031A74
_08031A7C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031A98: .4byte 0x040000D4
_08031A9C: .4byte 0x80000100
_08031AA0: .4byte 0x08078408
_08031AA4: .4byte 0x80000010
_08031AA8: .4byte 0x0805F708
_08031AAC: .4byte 0x80000040
_08031AB0: .4byte 0x0805F808
_08031AB4: .4byte gUnk_08061FC8
_08031AB8: .4byte 0x08062048
_08031ABC: .4byte 0x80000080
_08031AC0: .4byte 0x08078368
_08031AC4: .4byte 0x0805F2E8
_08031AC8: .4byte 0x08078388
_08031ACC: .4byte 0x0805F368
_08031AD0: .4byte 0x0805F388
_08031AD4: .4byte 0x080783A8
_08031AD8: .4byte 0x0805F408

	thumb_func_start sub_08031ADC
sub_08031ADC: @ 0x08031ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08031E10 @ =0x040000D4
	ldr r0, _08031E14 @ =0x0805FA08
	str r0, [r2]
	ldr r1, _08031E18 @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E1C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r4, _08031E20 @ =gObjPalRamPtr
	ldr r7, _08031E24 @ =0x0805EEE8
	ldr r5, _08031E28 @ =0x08078348
	mov ip, r5
	ldr r6, _08031E2C @ =0x0805F0E8
	ldr r5, _08031E30 @ =0x080783C8
	mov r8, r5
	ldr r5, _08031E34 @ =0x0805F488
	mov sb, r5
	ldr r5, _08031E38 @ =0x08078568
	mov sl, r5
	cmp r0, #0
	bge _08031B20
_08031B18:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031B18
_08031B20:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	ldr r5, _08031E3C @ =0x08078328
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031E40 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031B4C
_08031B44:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031B44
_08031B4C:
	ldr r2, _08031E10 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031B6C
_08031B64:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031B64
_08031B6C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031B9C
_08031B94:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031B94
_08031B9C:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031E40 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031BC8
_08031BC0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031BC0
_08031BC8:
	ldr r2, _08031E10 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031BE8
_08031BE0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031BE0
_08031BE8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031C18
_08031C10:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031C10
_08031C18:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031C42
_08031C3A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031C3A
_08031C42:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	mov r5, r8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031E40 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031C6E
_08031C66:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031C66
_08031C6E:
	ldr r2, _08031E10 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E48 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031C90
_08031C88:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031C88
_08031C90:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031E40 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031CBE
_08031CB6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031CB6
_08031CBE:
	ldr r2, _08031E10 @ =0x040000D4
	ldr r0, _08031E4C @ =0x08061A28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E44 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031CE0
_08031CD8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031CD8
_08031CE0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	ldr r5, _08031E50 @ =0x08078428
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031E40 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031D12
_08031D0A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031D0A
_08031D12:
	ldr r2, _08031E10 @ =0x040000D4
	ldr r0, _08031E54 @ =0x0805FB08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E1C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031D34
_08031D2C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031D2C
_08031D34:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	ldr r5, _08031E58 @ =0x08078388
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031E40 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031D66
_08031D5E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031D5E
_08031D66:
	ldr r2, _08031E10 @ =0x040000D4
	ldr r0, _08031E5C @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E40 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031D88
_08031D80:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031D80
_08031D88:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	ldr r5, _08031E60 @ =0x0805F388
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E48 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031DB6
_08031DAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031DAE
_08031DB6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08031E10 @ =0x040000D4
	ldr r0, _08031E64 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08031E40 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031DDE
_08031DD6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031DD6
_08031DDE:
	ldr r2, _08031E10 @ =0x040000D4
	ldr r5, _08031E68 @ =0x0805F408
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08031E48 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031E00
_08031DF8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031DF8
_08031E00:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	b _08031E6C
	.align 2, 0
_08031E10: .4byte 0x040000D4
_08031E14: .4byte 0x0805FA08
_08031E18: .4byte gObjVramPtr
_08031E1C: .4byte 0x80000080
_08031E20: .4byte gObjPalRamPtr
_08031E24: .4byte 0x0805EEE8
_08031E28: .4byte 0x08078348
_08031E2C: .4byte 0x0805F0E8
_08031E30: .4byte 0x080783C8
_08031E34: .4byte 0x0805F488
_08031E38: .4byte 0x08078568
_08031E3C: .4byte 0x08078328
_08031E40: .4byte 0x80000010
_08031E44: .4byte 0x80000100
_08031E48: .4byte 0x80000040
_08031E4C: .4byte 0x08061A28
_08031E50: .4byte 0x08078428
_08031E54: .4byte 0x0805FB08
_08031E58: .4byte 0x08078388
_08031E5C: .4byte 0x0805F368
_08031E60: .4byte 0x0805F388
_08031E64: .4byte 0x080783A8
_08031E68: .4byte 0x0805F408
_08031E6C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08031E7C
sub_08031E7C: @ 0x08031E7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080321D4 @ =0x040000D4
	ldr r0, _080321D8 @ =0x08078308
	str r0, [r3]
	ldr r1, _080321DC @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r6, _080321E4 @ =0x0805ECE8
	ldr r1, _080321E8 @ =gObjVramPtr
	ldr r5, _080321EC @ =0x0805EEE8
	mov ip, r5
	ldr r7, _080321F0 @ =0x080783E8
	mov sb, r7
	ldr r5, _080321F4 @ =0x0805F508
	mov sl, r5
	ldr r7, _080321F8 @ =0x08062CE8
	mov r8, r7
	ldr r5, _080321FC @ =0x08062AC8
	cmp r0, #0
	bge _08031EC2
_08031EBA:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08031EBA
_08031EC2:
	ldr r2, _080321D4 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031EE2
_08031EDA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031EDA
_08031EE2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	ldr r7, _08032204 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031F14
_08031F0C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031F0C
_08031F14:
	ldr r2, _080321D4 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031F36
_08031F2E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031F2E
_08031F36:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031F68
_08031F60:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031F60
_08031F68:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031F94
_08031F8C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031F8C
_08031F94:
	ldr r2, _080321D4 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031FB6
_08031FAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031FAE
_08031FB6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	ldr r7, _08032208 @ =0x08062EE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08031FE8
_08031FE0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08031FE0
_08031FE8:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	ldr r7, _0803220C @ =0x08063168
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032014
_0803200C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803200C
_08032014:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	ldr r7, _08032210 @ =0x080786A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032040
_08032038:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032038
_08032040:
	ldr r2, _080321D4 @ =0x040000D4
	ldr r0, _08032214 @ =0x080628C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032062
_0803205A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803205A
_08032062:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032094
_0803208C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803208C
_08032094:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080320C0
_080320B8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080320B8
_080320C0:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032200 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080320EC
_080320E4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080320E4
_080320EC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032116
_0803210E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803210E
_08032116:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803213C
_08032134:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032134
_0803213C:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032162
_0803215A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803215A
_08032162:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032188
_08032180:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032180
_08032188:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080321AE
_080321A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080321A6
_080321AE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080321D4 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080321E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803221A
_080321CC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	b _08032218
	.align 2, 0
_080321D4: .4byte 0x040000D4
_080321D8: .4byte 0x08078308
_080321DC: .4byte gObjPalRamPtr
_080321E0: .4byte 0x80000010
_080321E4: .4byte 0x0805ECE8
_080321E8: .4byte gObjVramPtr
_080321EC: .4byte 0x0805EEE8
_080321F0: .4byte 0x080783E8
_080321F4: .4byte 0x0805F508
_080321F8: .4byte 0x08062CE8
_080321FC: .4byte 0x08062AC8
_08032200: .4byte 0x80000100
_08032204: .4byte 0x08078328
_08032208: .4byte 0x08062EE8
_0803220C: .4byte 0x08063168
_08032210: .4byte 0x080786A8
_08032214: .4byte 0x080628C8
_08032218:
	bne _080321CC
_0803221A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032570 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032240
_08032238:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032238
_08032240:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _08032574 @ =0x080787C8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032570 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032268
_08032260:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032260
_08032268:
	ldr r2, _0803256C @ =0x040000D4
	ldr r7, _08032578 @ =0x08063AE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803257C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803228A
_08032282:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032282
_0803228A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _08032580 @ =0x080787E8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032570 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080322BC
_080322B4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080322B4
_080322BC:
	ldr r2, _0803256C @ =0x040000D4
	ldr r7, _08032584 @ =0x08063BE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032588 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080322DE
_080322D6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080322D6
_080322DE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _0803258C @ =gUnk_08063FE8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032590 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032310
_08032308:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032308
_08032310:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r7, _08032594 @ =0x08064068
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032588 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032338
_08032330:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032330
_08032338:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _08032598 @ =0x08062AE8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803259C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032364
_0803235C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803235C
_08032364:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r0, _080325A0 @ =0x08078848
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032570 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032390
_08032388:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032388
_08032390:
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _080325A4 @ =gUnk_08064868
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803259C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080323B2
_080323AA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080323AA
_080323B2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r0, _080325A4 @ =gUnk_08064868
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803259C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080323E4
_080323DC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080323DC
_080323E4:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _080325A8 @ =gUnk_08064A68
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803259C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032410
_08032408:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032408
_08032410:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r0, _080325A8 @ =gUnk_08064A68
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803259C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803243C
_08032434:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032434
_0803243C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _080325AC @ =0x08078408
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032570 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032468
_08032460:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032460
_08032468:
	ldr r2, _0803256C @ =0x040000D4
	ldr r7, _080325B0 @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032590 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803248A
_08032482:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032482
_0803248A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r0, _080325B4 @ =0x0805F788
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032590 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080324B8
_080324B0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080324B0
_080324B8:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _080325B8 @ =0x0805F808
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803259C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080324E0
_080324D8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080324D8
_080324E0:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r0, _080325BC @ =gUnk_08061FC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032590 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803250C
_08032504:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032504
_0803250C:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _080325C0 @ =0x08062048
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803257C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032534
_0803252C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803252C
_08032534:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803256C @ =0x040000D4
	ldr r0, _080325C4 @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032570 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032560
_08032558:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032558
_08032560:
	ldr r2, _0803256C @ =0x040000D4
	ldr r5, _080325C8 @ =0x0805F2E8
	str r5, [r2]
	ldr r0, [r1]
	b _080325CC
	.align 2, 0
_0803256C: .4byte 0x040000D4
_08032570: .4byte 0x80000010
_08032574: .4byte 0x080787C8
_08032578: .4byte 0x08063AE8
_0803257C: .4byte 0x80000080
_08032580: .4byte 0x080787E8
_08032584: .4byte 0x08063BE8
_08032588: .4byte 0x80000200
_0803258C: .4byte gUnk_08063FE8
_08032590: .4byte 0x80000040
_08032594: .4byte 0x08064068
_08032598: .4byte 0x08062AE8
_0803259C: .4byte 0x80000100
_080325A0: .4byte 0x08078848
_080325A4: .4byte gUnk_08064868
_080325A8: .4byte gUnk_08064A68
_080325AC: .4byte 0x08078408
_080325B0: .4byte 0x0805F708
_080325B4: .4byte 0x0805F788
_080325B8: .4byte 0x0805F808
_080325BC: .4byte gUnk_08061FC8
_080325C0: .4byte 0x08062048
_080325C4: .4byte 0x08078368
_080325C8: .4byte 0x0805F2E8
_080325CC:
	str r0, [r2, #4]
	ldr r0, _080326C8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080325E6
_080325DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080325DE
_080325E6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080326CC @ =0x040000D4
	ldr r7, _080326D0 @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080326D4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032614
_0803260C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803260C
_08032614:
	ldr r2, _080326CC @ =0x040000D4
	ldr r0, _080326D8 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080326D4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032636
_0803262E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803262E
_08032636:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080326CC @ =0x040000D4
	ldr r5, _080326DC @ =0x0805F388
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080326C8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032664
_0803265C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803265C
_08032664:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080326CC @ =0x040000D4
	ldr r7, _080326E0 @ =0x080783A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080326D4 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803268C
_08032684:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032684
_0803268C:
	ldr r2, _080326CC @ =0x040000D4
	ldr r0, _080326E4 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080326C8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080326AE
_080326A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080326A6
_080326AE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080326C8: .4byte 0x80000040
_080326CC: .4byte 0x040000D4
_080326D0: .4byte 0x08078388
_080326D4: .4byte 0x80000010
_080326D8: .4byte 0x0805F368
_080326DC: .4byte 0x0805F388
_080326E0: .4byte 0x080783A8
_080326E4: .4byte 0x0805F408

	thumb_func_start sub_080326E8
sub_080326E8: @ 0x080326E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08032A44 @ =0x040000D4
	ldr r0, _08032A48 @ =0x08078468
	str r0, [r3]
	ldr r1, _08032A4C @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08032A50 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _08032A54 @ =0x0805FE08
	ldr r1, _08032A58 @ =gObjVramPtr
	ldr r6, _08032A5C @ =0x0805EEE8
	mov r8, r6
	ldr r6, _08032A60 @ =0x0805F0E8
	ldr r7, _08032A64 @ =0x0805FC08
	mov ip, r7
	ldr r7, _08032A68 @ =0x08061DC8
	mov sb, r7
	ldr r7, _08032A6C @ =0x08060808
	mov sl, r7
	cmp r0, #0
	bge _0803272E
_08032726:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08032726
_0803272E:
	ldr r2, _08032A44 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A70 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803274E
_08032746:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032746
_0803274E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	ldr r7, _08032A74 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032A50 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032780
_08032778:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032778
_08032780:
	ldr r2, _08032A44 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080327A2
_0803279A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803279A
_080327A2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080327D4
_080327CC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080327CC
_080327D4:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	ldr r7, _08032A7C @ =0x08078348
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032A50 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032800
_080327F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080327F8
_08032800:
	ldr r2, _08032A44 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032820
_08032818:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032818
_08032820:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032850
_08032848:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032848
_08032850:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803287A
_08032872:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032872
_0803287A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080328A4
_0803289C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803289C
_080328A4:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	ldr r7, _08032A80 @ =0x08078448
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032A50 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080328D0
_080328C8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080328C8
_080328D0:
	ldr r2, _08032A44 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080328F2
_080328EA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080328EA
_080328F2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032924
_0803291C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803291C
_08032924:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032950
_08032948:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032948
_08032950:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803297C
_08032974:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032974
_0803297C:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	ldr r0, _08032A84 @ =0x08078588
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032A50 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080329A8
_080329A0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080329A0
_080329A8:
	ldr r2, _08032A44 @ =0x040000D4
	mov r6, sb
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080329CA
_080329C2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080329C2
_080329CA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080329FC
_080329F4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080329F4
_080329FC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	mov r6, sb
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032A78 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032A28
_08032A20:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032A20
_08032A28:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08032A44 @ =0x040000D4
	ldr r0, _08032A88 @ =0x080783C8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032A50 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08032A8C
	.align 2, 0
_08032A44: .4byte 0x040000D4
_08032A48: .4byte 0x08078468
_08032A4C: .4byte gObjPalRamPtr
_08032A50: .4byte 0x80000010
_08032A54: .4byte 0x0805FE08
_08032A58: .4byte gObjVramPtr
_08032A5C: .4byte 0x0805EEE8
_08032A60: .4byte 0x0805F0E8
_08032A64: .4byte 0x0805FC08
_08032A68: .4byte 0x08061DC8
_08032A6C: .4byte 0x08060808
_08032A70: .4byte 0x80000400
_08032A74: .4byte 0x08078328
_08032A78: .4byte 0x80000100
_08032A7C: .4byte 0x08078348
_08032A80: .4byte 0x08078448
_08032A84: .4byte 0x08078588
_08032A88: .4byte 0x080783C8
_08032A8C:
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032A9E
_08032A96:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032A96
_08032A9E:
	ldr r2, _08032D00 @ =0x040000D4
	ldr r6, _08032D04 @ =0x0805F488
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D08 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032AC0
_08032AB8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032AB8
_08032AC0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	ldr r7, _08032D0C @ =0x08078488
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032D10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032AEE
_08032AE6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032AE6
_08032AEE:
	ldr r2, _08032D00 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D14 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032B10
_08032B08:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032B08
_08032B10:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D14 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032B42
_08032B3A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032B3A
_08032B42:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D14 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032B6E
_08032B66:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032B66
_08032B6E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D14 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032B9A
_08032B92:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032B92
_08032B9A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	ldr r0, _08032D18 @ =0x08060708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D1C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032BC6
_08032BBE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032BBE
_08032BC6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	ldr r6, _08032D20 @ =0x08060608
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D1C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032BF2
_08032BEA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032BEA
_08032BF2:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	ldr r0, _08032D24 @ =0x08062248
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D1C @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032C1E
_08032C16:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032C16
_08032C1E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	ldr r6, _08032D28 @ =0x08078388
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032D10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032C4A
_08032C42:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032C42
_08032C4A:
	ldr r2, _08032D00 @ =0x040000D4
	ldr r7, _08032D2C @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032C6C
_08032C64:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032C64
_08032C6C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	ldr r0, _08032D30 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D08 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032C9A
_08032C92:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032C92
_08032C9A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08032D00 @ =0x040000D4
	ldr r6, _08032D34 @ =0x080783A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08032D10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032CC2
_08032CBA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032CBA
_08032CC2:
	ldr r2, _08032D00 @ =0x040000D4
	ldr r7, _08032D38 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08032D08 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032CE4
_08032CDC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032CDC
_08032CE4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D00: .4byte 0x040000D4
_08032D04: .4byte 0x0805F488
_08032D08: .4byte 0x80000040
_08032D0C: .4byte 0x08078488
_08032D10: .4byte 0x80000010
_08032D14: .4byte 0x80000100
_08032D18: .4byte 0x08060708
_08032D1C: .4byte 0x80000080
_08032D20: .4byte 0x08060608
_08032D24: .4byte 0x08062248
_08032D28: .4byte 0x08078388
_08032D2C: .4byte 0x0805F368
_08032D30: .4byte 0x0805F388
_08032D34: .4byte 0x080783A8
_08032D38: .4byte 0x0805F408

	thumb_func_start sub_08032D3C
sub_08032D3C: @ 0x08032D3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08033094 @ =0x040000D4
	ldr r0, _08033098 @ =0x08078308
	str r0, [r3]
	ldr r1, _0803309C @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _080330A4 @ =0x0805ECE8
	ldr r1, _080330A8 @ =gObjVramPtr
	ldr r6, _080330AC @ =0x08078328
	ldr r7, _080330B0 @ =0x08078348
	mov r8, r7
	ldr r7, _080330B4 @ =0x0805F0E8
	mov ip, r7
	ldr r7, _080330B8 @ =gUnk_08064868
	mov sb, r7
	ldr r7, _080330BC @ =gUnk_08064A68
	mov sl, r7
	cmp r0, #0
	bge _08032D82
_08032D7A:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08032D7A
_08032D82:
	ldr r2, _08033094 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330C0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032DA2
_08032D9A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032D9A
_08032DA2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032DD2
_08032DCA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032DCA
_08032DD2:
	ldr r2, _08033094 @ =0x040000D4
	ldr r7, _080330C4 @ =0x0805EEE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330C0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032DF4
_08032DEC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032DEC
_08032DF4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032E26
_08032E1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032E1E
_08032E26:
	ldr r2, _08033094 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330C0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032E48
_08032E40:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032E40
_08032E48:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330C0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032E7A
_08032E72:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032E72
_08032E7A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	ldr r7, _080330C8 @ =0x08078568
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032EA6
_08032E9E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032E9E
_08032EA6:
	ldr r2, _08033094 @ =0x040000D4
	ldr r0, _080330CC @ =0x08061A28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330C0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032EC8
_08032EC0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032EC0
_08032EC8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	ldr r7, _080330D0 @ =0x08078868
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032EFA
_08032EF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032EF2
_08032EFA:
	ldr r2, _08033094 @ =0x040000D4
	ldr r0, _080330D4 @ =0x08061C28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330D8 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032F1C
_08032F14:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032F14
_08032F1C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	ldr r7, _080330DC @ =0x080783E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032F4E
_08032F46:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032F46
_08032F4E:
	ldr r2, _08033094 @ =0x040000D4
	ldr r0, _080330E0 @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330C0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032F70
_08032F68:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032F68
_08032F70:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	ldr r7, _080330E4 @ =0x08078368
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032FA2
_08032F9A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032F9A
_08032FA2:
	ldr r2, _08033094 @ =0x040000D4
	ldr r0, _080330E8 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330EC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032FC4
_08032FBC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032FBC
_08032FC4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	ldr r7, _080330F0 @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08032FF2
_08032FEA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08032FEA
_08032FF2:
	ldr r2, _08033094 @ =0x040000D4
	ldr r0, _080330F4 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033014
_0803300C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803300C
_08033014:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	ldr r7, _080330F8 @ =0x0805F388
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330EC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033042
_0803303A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803303A
_08033042:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	ldr r0, _080330FC @ =gUnk_08063FE8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080330EC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803306A
_08033062:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033062
_0803306A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033094 @ =0x040000D4
	ldr r7, _08033100 @ =0x08078888
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080330A0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033106
_0803308A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	b _08033104
	.align 2, 0
_08033094: .4byte 0x040000D4
_08033098: .4byte 0x08078308
_0803309C: .4byte gObjPalRamPtr
_080330A0: .4byte 0x80000010
_080330A4: .4byte 0x0805ECE8
_080330A8: .4byte gObjVramPtr
_080330AC: .4byte 0x08078328
_080330B0: .4byte 0x08078348
_080330B4: .4byte 0x0805F0E8
_080330B8: .4byte gUnk_08064868
_080330BC: .4byte gUnk_08064A68
_080330C0: .4byte 0x80000100
_080330C4: .4byte 0x0805EEE8
_080330C8: .4byte 0x08078568
_080330CC: .4byte 0x08061A28
_080330D0: .4byte 0x08078868
_080330D4: .4byte 0x08061C28
_080330D8: .4byte 0x80000080
_080330DC: .4byte 0x080783E8
_080330E0: .4byte 0x0805F508
_080330E4: .4byte 0x08078368
_080330E8: .4byte 0x0805F2E8
_080330EC: .4byte 0x80000040
_080330F0: .4byte 0x08078388
_080330F4: .4byte 0x0805F368
_080330F8: .4byte 0x0805F388
_080330FC: .4byte gUnk_08063FE8
_08033100: .4byte 0x08078888
_08033104:
	bne _0803308A
_08033106:
	ldr r2, _08033454 @ =0x040000D4
	ldr r0, _08033458 @ =0x08064068
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803345C @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033128
_08033120:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033120
_08033128:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _08033460 @ =0x08063AE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033464 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803315A
_08033152:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033152
_0803315A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _08033468 @ =0x08063BE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803345C @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033186
_0803317E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803317E
_08033186:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _0803346C @ =0x08064468
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803345C @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080331B2
_080331AA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080331AA
_080331B2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _08033470 @ =0x08078848
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08033474 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080331DE
_080331D6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080331D6
_080331DE:
	ldr r2, _08033454 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033478 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033200
_080331F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080331F8
_08033200:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033478 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033232
_0803322A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803322A
_08033232:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033478 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803325E
_08033256:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033256
_0803325E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033478 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803328A
_08033282:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033282
_0803328A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033478 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080332B6
_080332AE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080332AE
_080332B6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033478 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080332E2
_080332DA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080332DA
_080332E2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033478 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803330E
_08033306:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033306
_0803330E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _0803347C @ =0x08078408
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08033474 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803333A
_08033332:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033332
_0803333A:
	ldr r2, _08033454 @ =0x040000D4
	ldr r0, _08033480 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033484 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803335C
_08033354:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033354
_0803335C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _08033488 @ =0x0805F788
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033484 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803338A
_08033382:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033382
_0803338A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r0, _0803348C @ =0x08062848
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033484 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080333B2
_080333AA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080333AA
_080333B2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _08033490 @ =0x0805F808
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033478 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080333DA
_080333D2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080333D2
_080333DA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _08033494 @ =0x080630E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033484 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033406
_080333FE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080333FE
_08033406:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r0, _08033498 @ =0x08062048
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033464 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803342E
_08033426:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033426
_0803342E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033454 @ =0x040000D4
	ldr r7, _0803349C @ =0x08061D28
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033474 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _080334A0
	.align 2, 0
_08033454: .4byte 0x040000D4
_08033458: .4byte 0x08064068
_0803345C: .4byte 0x80000200
_08033460: .4byte 0x08063AE8
_08033464: .4byte 0x80000080
_08033468: .4byte 0x08063BE8
_0803346C: .4byte 0x08064468
_08033470: .4byte 0x08078848
_08033474: .4byte 0x80000010
_08033478: .4byte 0x80000100
_0803347C: .4byte 0x08078408
_08033480: .4byte 0x0805F708
_08033484: .4byte 0x80000040
_08033488: .4byte 0x0805F788
_0803348C: .4byte 0x08062848
_08033490: .4byte 0x0805F808
_08033494: .4byte 0x080630E8
_08033498: .4byte 0x08062048
_0803349C: .4byte 0x08061D28
_080334A0:
	bge _080334AA
_080334A2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080334A2
_080334AA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080335B0 @ =0x040000D4
	ldr r0, _080335B4 @ =0x08061D48
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080335B8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080334D2
_080334CA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080334CA
_080334D2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080335B0 @ =0x040000D4
	ldr r7, _080335BC @ =0x08061D68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080335B8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080334FA
_080334F2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080334F2
_080334FA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080335B0 @ =0x040000D4
	ldr r0, _080335C0 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080335B8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033522
_0803351A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803351A
_08033522:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080335B0 @ =0x040000D4
	ldr r7, _080335C4 @ =0x08061DA8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080335B8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803354A
_08033542:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033542
_0803354A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080335B0 @ =0x040000D4
	ldr r0, _080335C8 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080335B8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033572
_0803356A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803356A
_08033572:
	ldr r2, _080335B0 @ =0x040000D4
	ldr r7, _080335CC @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080335D0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033594
_0803358C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803358C
_08033594:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080335B0: .4byte 0x040000D4
_080335B4: .4byte 0x08061D48
_080335B8: .4byte 0x80000010
_080335BC: .4byte 0x08061D68
_080335C0: .4byte 0x08061D88
_080335C4: .4byte 0x08061DA8
_080335C8: .4byte 0x080783A8
_080335CC: .4byte 0x0805F408
_080335D0: .4byte 0x80000040

	thumb_func_start sub_080335D4
sub_080335D4: @ 0x080335D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08033938 @ =0x040000D4
	ldr r0, _0803393C @ =0x080784A8
	str r0, [r2]
	ldr r1, _08033940 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033944 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r6, r1, #0
	ldr r4, _08033948 @ =0x08060A08
	ldr r5, _0803394C @ =gObjVramPtr
	ldr r7, _08033950 @ =0x080784C8
	ldr r1, _08033954 @ =0x08060A88
	mov ip, r1
	ldr r1, _08033958 @ =0x080784E8
	mov r8, r1
	ldr r1, _0803395C @ =0x08061088
	mov sl, r1
	ldr r1, _08033960 @ =gUnk_03004C20
	mov sb, r1
	cmp r0, #0
	bge _0803361C
	adds r1, r3, #0
_08033614:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08033614
_0803361C:
	ldr r1, _08033938 @ =0x040000D4
	str r4, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033964 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803363C
_08033634:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033634
_0803363C:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	adds r0, #0x80
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r6]
	str r0, [r1, #4]
	ldr r0, _08033944 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033668
_08033660:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033660
_08033668:
	ldr r1, _08033938 @ =0x040000D4
	mov r2, ip
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033968 @ =0x80000300
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803368A
_08033682:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033682
_0803368A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r0, [r6]
	str r0, [r1, #4]
	ldr r0, _08033944 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080336BC
_080336B4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080336B4
_080336BC:
	ldr r1, _08033938 @ =0x040000D4
	mov r2, sl
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _0803396C @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080336DE
_080336D6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080336D6
_080336DE:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	ldr r0, _08033970 @ =0x080788A8
	str r0, [r1]
	ldr r0, [r6]
	str r0, [r1, #4]
	ldr r0, _08033944 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033710
_08033708:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033708
_08033710:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r2, _08033938 @ =0x040000D4
	mov r3, sb
	ldrb r1, [r3, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r3, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08033974 @ =gUnk_08189A24
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r5]
	str r0, [r2, #4]
	ldr r0, _0803396C @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08033752
_0803374A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803374A
_08033752:
	ldr r1, _0803394C @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0x12
	movs r1, #0
	bl sub_08025B78
	ldr r1, _08033938 @ =0x040000D4
	ldr r0, _08033978 @ =0x08078328
	str r0, [r1]
	ldr r0, _08033940 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08033944 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803378A
_08033782:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033782
_0803378A:
	ldr r3, _08033938 @ =0x040000D4
	ldr r2, _0803397C @ =0x0805EEE8
	str r2, [r3]
	ldr r1, _0803394C @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08033980 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #0x18
	ldr r6, _08033940 @ =gObjPalRamPtr
	adds r5, r1, #0
	ldr r1, _08033984 @ =0x080788C8
	mov ip, r1
	ldr r1, _08033988 @ =0x08064C68
	mov r8, r1
	ldr r1, _0803398C @ =0x08064E68
	mov sb, r1
	ldr r1, _08033990 @ =0x08078848
	mov sl, r1
	ldr r7, _08033994 @ =gUnk_08064868
	cmp r0, #0
	bge _080337C6
	adds r1, r4, #0
_080337BE:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080337BE
_080337C6:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033980 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080337F6
_080337EE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080337EE
_080337F6:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	mov r2, ip
	str r2, [r1]
	ldr r0, [r6]
	str r0, [r1, #4]
	ldr r0, _08033944 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033822
_0803381A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803381A
_08033822:
	ldr r1, _08033938 @ =0x040000D4
	mov r3, r8
	str r3, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033980 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033844
_0803383C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803383C
_08033844:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	mov r2, r8
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033980 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033876
_0803386E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803386E
_08033876:
	ldr r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	mov r0, sb
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033998 @ =0x80000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080338A2
_0803389A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803389A
_080338A2:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	mov r2, sl
	str r2, [r1]
	ldr r0, [r6]
	str r0, [r1, #4]
	ldr r0, _08033944 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080338CE
_080338C6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080338C6
_080338CE:
	ldr r1, _08033938 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033980 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080338EE
_080338E6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080338E6
_080338EE:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033980 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803391E
_08033916:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033916
_0803391E:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08033938 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033980 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _0803399C
	.align 2, 0
_08033938: .4byte 0x040000D4
_0803393C: .4byte 0x080784A8
_08033940: .4byte gObjPalRamPtr
_08033944: .4byte 0x80000010
_08033948: .4byte 0x08060A08
_0803394C: .4byte gObjVramPtr
_08033950: .4byte 0x080784C8
_08033954: .4byte 0x08060A88
_08033958: .4byte 0x080784E8
_0803395C: .4byte 0x08061088
_08033960: .4byte gUnk_03004C20
_08033964: .4byte 0x80000040
_08033968: .4byte 0x80000300
_0803396C: .4byte 0x80000400
_08033970: .4byte 0x080788A8
_08033974: .4byte gUnk_08189A24
_08033978: .4byte 0x08078328
_0803397C: .4byte 0x0805EEE8
_08033980: .4byte 0x80000100
_08033984: .4byte 0x080788C8
_08033988: .4byte 0x08064C68
_0803398C: .4byte 0x08064E68
_08033990: .4byte 0x08078848
_08033994: .4byte gUnk_08064868
_08033998: .4byte 0x80000080
_0803399C:
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080339AE
_080339A6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080339A6
_080339AE:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r1, _08033A94 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033A98 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080339D8
_080339D0:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080339D0
_080339D8:
	ldr r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r5]
	ldr r1, _08033A94 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033A98 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033A02
_080339FA:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080339FA
_08033A02:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08033A94 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033A98 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033A2C
_08033A24:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033A24
_08033A2C:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r1, _08033A94 @ =0x040000D4
	ldr r3, _08033A9C @ =0x080783A8
	str r3, [r1]
	ldr r0, [r6]
	str r0, [r1, #4]
	ldr r0, _08033AA0 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033A58
_08033A50:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033A50
_08033A58:
	ldr r1, _08033A94 @ =0x040000D4
	ldr r0, _08033AA4 @ =0x0805F408
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08033AA8 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08033A7A
_08033A72:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033A72
_08033A7A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r5]
	adds r0, #0x80
	str r0, [r5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033A94: .4byte 0x040000D4
_08033A98: .4byte 0x80000100
_08033A9C: .4byte 0x080783A8
_08033AA0: .4byte 0x80000010
_08033AA4: .4byte 0x0805F408
_08033AA8: .4byte 0x80000040

	thumb_func_start sub_08033AAC
sub_08033AAC: @ 0x08033AAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08033E04 @ =0x040000D4
	ldr r0, _08033E08 @ =0x08078308
	str r0, [r3]
	ldr r1, _08033E0C @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08033E10 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _08033E14 @ =0x0805ECE8
	ldr r1, _08033E18 @ =gObjVramPtr
	ldr r6, _08033E1C @ =0x0805EEE8
	mov ip, r6
	ldr r7, _08033E20 @ =0x080783C8
	mov r8, r7
	ldr r6, _08033E24 @ =0x0805F488
	mov sb, r6
	ldr r7, _08033E28 @ =0x080788E8
	mov sl, r7
	ldr r6, _08033E2C @ =0x08064F68
	cmp r0, #0
	bge _08033AF2
_08033AEA:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08033AEA
_08033AF2:
	ldr r2, _08033E04 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033B12
_08033B0A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033B0A
_08033B12:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r7, _08033E34 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08033E10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033B44
_08033B3C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033B3C
_08033B44:
	ldr r2, _08033E04 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033B66
_08033B5E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033B5E
_08033B66:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08033E10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033B98
_08033B90:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033B90
_08033B98:
	ldr r2, _08033E04 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E38 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033BBA
_08033BB2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033BB2
_08033BBA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08033E10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033BE8
_08033BE0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033BE0
_08033BE8:
	ldr r2, _08033E04 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033C08
_08033C00:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033C00
_08033C08:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033C38
_08033C30:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033C30
_08033C38:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033C62
_08033C5A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033C5A
_08033C62:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r6, _08033E3C @ =0x08065168
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033C8E
_08033C86:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033C86
_08033C8E:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r0, _08033E40 @ =0x08065368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033CBA
_08033CB2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033CB2
_08033CBA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r6, _08033E44 @ =0x08060608
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E48 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033CE6
_08033CDE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033CDE
_08033CE6:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r0, _08033E4C @ =gUnk_08063368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E38 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033D12
_08033D0A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033D0A
_08033D12:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r6, _08033E50 @ =0x080633E8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033D3A
_08033D32:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033D32
_08033D3A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r0, _08033E54 @ =gUnk_080627C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E38 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033D66
_08033D5E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033D5E
_08033D66:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r6, _08033E58 @ =0x08078408
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08033E10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033D8E
_08033D86:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033D86
_08033D8E:
	ldr r2, _08033E04 @ =0x040000D4
	ldr r7, _08033E5C @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E38 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033DB0
_08033DA8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033DA8
_08033DB0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r0, _08033E60 @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E30 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033DDE
_08033DD6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033DD6
_08033DDE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08033E04 @ =0x040000D4
	ldr r6, _08033E64 @ =0x08061D28
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08033E10 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _08033E68
	.align 2, 0
_08033E04: .4byte 0x040000D4
_08033E08: .4byte 0x08078308
_08033E0C: .4byte gObjPalRamPtr
_08033E10: .4byte 0x80000010
_08033E14: .4byte 0x0805ECE8
_08033E18: .4byte gObjVramPtr
_08033E1C: .4byte 0x0805EEE8
_08033E20: .4byte 0x080783C8
_08033E24: .4byte 0x0805F488
_08033E28: .4byte 0x080788E8
_08033E2C: .4byte 0x08064F68
_08033E30: .4byte 0x80000100
_08033E34: .4byte 0x08078328
_08033E38: .4byte 0x80000040
_08033E3C: .4byte 0x08065168
_08033E40: .4byte 0x08065368
_08033E44: .4byte 0x08060608
_08033E48: .4byte 0x80000080
_08033E4C: .4byte gUnk_08063368
_08033E50: .4byte 0x080633E8
_08033E54: .4byte gUnk_080627C8
_08033E58: .4byte 0x08078408
_08033E5C: .4byte 0x0805F708
_08033E60: .4byte 0x0805F808
_08033E64: .4byte 0x08061D28
_08033E68:
	bge _08033E72
_08033E6A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033E6A
_08033E72:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034040 @ =0x040000D4
	ldr r7, _08034044 @ =0x08061D48
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034048 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033E9A
_08033E92:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033E92
_08033E9A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034040 @ =0x040000D4
	ldr r0, _0803404C @ =0x08061D68
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034048 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033EC2
_08033EBA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033EBA
_08033EC2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034040 @ =0x040000D4
	ldr r6, _08034050 @ =0x08061D88
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034048 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033EEA
_08033EE2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033EE2
_08033EEA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034040 @ =0x040000D4
	ldr r7, _08034054 @ =0x08061DA8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034048 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033F12
_08033F0A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033F0A
_08033F12:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034040 @ =0x040000D4
	ldr r0, _08034058 @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034048 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033F3A
_08033F32:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033F32
_08033F3A:
	ldr r2, _08034040 @ =0x040000D4
	ldr r6, _0803405C @ =0x0805F2E8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034060 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033F5C
_08033F54:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033F54
_08033F5C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034040 @ =0x040000D4
	ldr r7, _08034064 @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034048 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033F8A
_08033F82:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033F82
_08033F8A:
	ldr r2, _08034040 @ =0x040000D4
	ldr r0, _08034068 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034048 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033FAC
_08033FA4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033FA4
_08033FAC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034040 @ =0x040000D4
	ldr r6, _0803406C @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034060 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08033FDA
_08033FD2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033FD2
_08033FDA:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034040 @ =0x040000D4
	ldr r7, _08034070 @ =0x080783A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034048 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034002
_08033FFA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08033FFA
_08034002:
	ldr r2, _08034040 @ =0x040000D4
	ldr r0, _08034074 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034060 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034024
_0803401C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803401C
_08034024:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034040: .4byte 0x040000D4
_08034044: .4byte 0x08061D48
_08034048: .4byte 0x80000010
_0803404C: .4byte 0x08061D68
_08034050: .4byte 0x08061D88
_08034054: .4byte 0x08061DA8
_08034058: .4byte 0x08078368
_0803405C: .4byte 0x0805F2E8
_08034060: .4byte 0x80000040
_08034064: .4byte 0x08078388
_08034068: .4byte 0x0805F368
_0803406C: .4byte 0x0805F388
_08034070: .4byte 0x080783A8
_08034074: .4byte 0x0805F408

	thumb_func_start sub_08034078
sub_08034078: @ 0x08034078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080343D0 @ =0x040000D4
	ldr r0, _080343D4 @ =0x08078308
	str r0, [r3]
	ldr r1, _080343D8 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _080343DC @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r6, _080343E0 @ =0x0805ECE8
	ldr r1, _080343E4 @ =gObjVramPtr
	ldr r5, _080343E8 @ =0x0805EEE8
	mov ip, r5
	ldr r7, _080343EC @ =0x08078348
	mov sb, r7
	ldr r5, _080343F0 @ =0x0805F0E8
	ldr r7, _080343F4 @ =0x080783C8
	mov sl, r7
	ldr r7, _080343F8 @ =0x08064F68
	mov r8, r7
	cmp r0, #0
	bge _080340BE
_080340B6:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _080340B6
_080340BE:
	ldr r2, _080343D0 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080340DE
_080340D6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080340D6
_080340DE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	ldr r7, _08034400 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080343DC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034110
_08034108:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034108
_08034110:
	ldr r2, _080343D0 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034132
_0803412A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803412A
_08034132:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080343DC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034164
_0803415C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803415C
_08034164:
	ldr r2, _080343D0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034184
_0803417C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803417C
_08034184:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080341B4
_080341AC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080341AC
_080341B4:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080341DE
_080341D6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080341D6
_080341DE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080343DC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803420A
_08034202:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034202
_0803420A:
	ldr r2, _080343D0 @ =0x040000D4
	ldr r7, _08034404 @ =0x0805F488
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034408 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803422C
_08034224:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034224
_0803422C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	ldr r0, _0803440C @ =0x08078488
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080343DC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803425A
_08034252:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034252
_0803425A:
	ldr r2, _080343D0 @ =0x040000D4
	ldr r5, _08034410 @ =0x08060808
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803427C
_08034274:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034274
_0803427C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	ldr r0, _08034414 @ =0x080786A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080343DC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080342AE
_080342A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080342A6
_080342AE:
	ldr r2, _080343D0 @ =0x040000D4
	ldr r5, _08034418 @ =0x080628C8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080342D0
_080342C8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080342C8
_080342D0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	ldr r0, _0803441C @ =0x08062AC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343DC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034302
_080342FA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080342FA
_08034302:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	ldr r5, _08034420 @ =0x080788E8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080343DC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803432A
_08034322:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034322
_0803432A:
	ldr r2, _080343D0 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803434C
_08034344:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034344
_0803434C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	mov r5, r8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803437E
_08034376:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034376
_0803437E:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080343AA
_080343A2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080343A2
_080343AA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080343D0 @ =0x040000D4
	ldr r5, _08034424 @ =0x08065168
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080343FC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _08034428
	.align 2, 0
_080343D0: .4byte 0x040000D4
_080343D4: .4byte 0x08078308
_080343D8: .4byte gObjPalRamPtr
_080343DC: .4byte 0x80000010
_080343E0: .4byte 0x0805ECE8
_080343E4: .4byte gObjVramPtr
_080343E8: .4byte 0x0805EEE8
_080343EC: .4byte 0x08078348
_080343F0: .4byte 0x0805F0E8
_080343F4: .4byte 0x080783C8
_080343F8: .4byte 0x08064F68
_080343FC: .4byte 0x80000100
_08034400: .4byte 0x08078328
_08034404: .4byte 0x0805F488
_08034408: .4byte 0x80000040
_0803440C: .4byte 0x08078488
_08034410: .4byte 0x08060808
_08034414: .4byte 0x080786A8
_08034418: .4byte 0x080628C8
_0803441C: .4byte 0x08062AC8
_08034420: .4byte 0x080788E8
_08034424: .4byte 0x08065168
_08034428:
	bge _08034432
_0803442A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803442A
_08034432:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r0, _0803478C @ =0x08065368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034790 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803445E
_08034456:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034456
_0803445E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r5, _08034794 @ =gUnk_08063368
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034798 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803448A
_08034482:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034482
_0803448A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r7, _0803479C @ =0x080633E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034790 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080344B2
_080344AA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080344AA
_080344B2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r5, _080347A0 @ =0x08062348
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034798 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080344DE
_080344D6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080344D6
_080344DE:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r7, _080347A4 @ =0x080785C8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034506
_080344FE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080344FE
_08034506:
	ldr r2, _08034788 @ =0x040000D4
	ldr r0, _080347AC @ =0x080623C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080347B0 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034528
_08034520:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034520
_08034528:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r5, _080347B4 @ =0x08062AE8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034790 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803455A
_08034552:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034552
_0803455A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r0, _080347B8 @ =0x08063168
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034790 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034586
_0803457E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803457E
_08034586:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r5, _080347BC @ =0x08078408
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080345B2
_080345AA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080345AA
_080345B2:
	ldr r2, _08034788 @ =0x040000D4
	ldr r7, _080347C0 @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034798 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080345D4
_080345CC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080345CC
_080345D4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r0, _080347C4 @ =0x0805F788
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034798 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034602
_080345FA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080345FA
_08034602:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r5, _080347C8 @ =0x0805F808
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034790 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803462A
_08034622:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034622
_0803462A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r0, _080347CC @ =0x08062148
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080347D0 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034656
_0803464E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803464E
_08034656:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r5, _080347D4 @ =0x08061D28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034682
_0803467A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803467A
_08034682:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r7, _080347D8 @ =0x08061D48
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080346AA
_080346A2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080346A2
_080346AA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r0, _080347DC @ =0x08061D68
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080346D2
_080346CA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080346CA
_080346D2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r5, _080347E0 @ =0x08061D88
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080346FA
_080346F2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080346F2
_080346FA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r7, _080347E4 @ =0x08061DA8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034722
_0803471A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803471A
_08034722:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r0, _080347E8 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034798 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803474A
_08034742:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034742
_0803474A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034788 @ =0x040000D4
	ldr r5, _080347EC @ =0x08078388
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034772
_0803476A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803476A
_08034772:
	ldr r2, _08034788 @ =0x040000D4
	ldr r7, _080347F0 @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080347A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	b _080347F4
	.align 2, 0
_08034788: .4byte 0x040000D4
_0803478C: .4byte 0x08065368
_08034790: .4byte 0x80000100
_08034794: .4byte gUnk_08063368
_08034798: .4byte 0x80000040
_0803479C: .4byte 0x080633E8
_080347A0: .4byte 0x08062348
_080347A4: .4byte 0x080785C8
_080347A8: .4byte 0x80000010
_080347AC: .4byte 0x080623C8
_080347B0: .4byte 0x80000200
_080347B4: .4byte 0x08062AE8
_080347B8: .4byte 0x08063168
_080347BC: .4byte 0x08078408
_080347C0: .4byte 0x0805F708
_080347C4: .4byte 0x0805F788
_080347C8: .4byte 0x0805F808
_080347CC: .4byte 0x08062148
_080347D0: .4byte 0x80000080
_080347D4: .4byte 0x08061D28
_080347D8: .4byte 0x08061D48
_080347DC: .4byte 0x08061D68
_080347E0: .4byte 0x08061D88
_080347E4: .4byte 0x08061DA8
_080347E8: .4byte 0x0805F2E8
_080347EC: .4byte 0x08078388
_080347F0: .4byte 0x0805F368
_080347F4:
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034804
_080347FC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080347FC
_08034804:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034898 @ =0x040000D4
	ldr r0, _0803489C @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080348A0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034832
_0803482A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803482A
_08034832:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034898 @ =0x040000D4
	ldr r5, _080348A4 @ =0x080783A8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080348A8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803485A
_08034852:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034852
_0803485A:
	ldr r2, _08034898 @ =0x040000D4
	ldr r7, _080348AC @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080348A0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803487C
_08034874:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034874
_0803487C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034898: .4byte 0x040000D4
_0803489C: .4byte 0x0805F388
_080348A0: .4byte 0x80000040
_080348A4: .4byte 0x080783A8
_080348A8: .4byte 0x80000010
_080348AC: .4byte 0x0805F408

	thumb_func_start sub_080348B0
sub_080348B0: @ 0x080348B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08034C08 @ =0x040000D4
	ldr r0, _08034C0C @ =0x08078308
	str r0, [r3]
	ldr r1, _08034C10 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08034C14 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _08034C18 @ =0x0805ECE8
	ldr r1, _08034C1C @ =gObjVramPtr
	ldr r7, _08034C20 @ =0x0805EEE8
	ldr r6, _08034C24 @ =0x080783C8
	mov sb, r6
	ldr r6, _08034C28 @ =0x08064F68
	mov sl, r6
	ldr r6, _08034C2C @ =gUnk_080635E8
	mov ip, r6
	ldr r6, _08034C30 @ =gUnk_08064A68
	mov r8, r6
	cmp r0, #0
	bge _080348F6
_080348EE:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _080348EE
_080348F6:
	ldr r2, _08034C08 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034916
_0803490E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803490E
_08034916:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	ldr r6, _08034C38 @ =0x08078328
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034C14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034948
_08034940:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034940
_08034948:
	ldr r2, _08034C08 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034968
_08034960:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034960
_08034968:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034998
_08034990:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034990
_08034998:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034C14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080349C4
_080349BC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080349BC
_080349C4:
	ldr r2, _08034C08 @ =0x040000D4
	ldr r6, _08034C3C @ =0x0805F488
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C40 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080349E6
_080349DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080349DE
_080349E6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	ldr r0, _08034C44 @ =0x080788E8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034C14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034A14
_08034A0C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034A0C
_08034A14:
	ldr r2, _08034C08 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034A36
_08034A2E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034A2E
_08034A36:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034A68
_08034A60:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034A60
_08034A68:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	ldr r6, _08034C48 @ =0x08065168
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034A94
_08034A8C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034A8C
_08034A94:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	ldr r6, _08034C4C @ =0x08065368
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034AC0
_08034AB8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034AB8
_08034AC0:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	ldr r6, _08034C50 @ =0x080786A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034C14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034AEC
_08034AE4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034AE4
_08034AEC:
	ldr r2, _08034C08 @ =0x040000D4
	ldr r0, _08034C54 @ =0x080628C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C34 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034B0E
_08034B06:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034B06
_08034B0E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	ldr r6, _08034C58 @ =0x08062AC8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034B40
_08034B38:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034B38
_08034B40:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	ldr r0, _08034C58 @ =0x08062AC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034B68
_08034B60:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034B60
_08034B68:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C40 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034B90
_08034B88:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034B88
_08034B90:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C40 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034BB8
_08034BB0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034BB0
_08034BB8:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034C40 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034BE0
_08034BD8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034BD8
_08034BE0:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034C08 @ =0x040000D4
	ldr r0, _08034C5C @ =0x08078908
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034C14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034C62
_08034C00:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	b _08034C60
	.align 2, 0
_08034C08: .4byte 0x040000D4
_08034C0C: .4byte 0x08078308
_08034C10: .4byte gObjPalRamPtr
_08034C14: .4byte 0x80000010
_08034C18: .4byte 0x0805ECE8
_08034C1C: .4byte gObjVramPtr
_08034C20: .4byte 0x0805EEE8
_08034C24: .4byte 0x080783C8
_08034C28: .4byte 0x08064F68
_08034C2C: .4byte gUnk_080635E8
_08034C30: .4byte gUnk_08064A68
_08034C34: .4byte 0x80000100
_08034C38: .4byte 0x08078328
_08034C3C: .4byte 0x0805F488
_08034C40: .4byte 0x80000040
_08034C44: .4byte 0x080788E8
_08034C48: .4byte 0x08065168
_08034C4C: .4byte 0x08065368
_08034C50: .4byte 0x080786A8
_08034C54: .4byte 0x080628C8
_08034C58: .4byte 0x08062AC8
_08034C5C: .4byte 0x08078908
_08034C60:
	bne _08034C00
_08034C62:
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FB8 @ =0x08062048
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FBC @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034C84
_08034C7C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034C7C
_08034C84:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FC0 @ =gUnk_08061FC8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034CB6
_08034CAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034CAE
_08034CB6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r0, _08034FC8 @ =0x08062AE8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034CDE
_08034CD6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034CD6
_08034CDE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FD0 @ =0x08065568
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034D0A
_08034D02:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034D02
_08034D0A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FD4 @ =0x080783E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034FD8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034D36
_08034D2E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034D2E
_08034D36:
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r0, _08034FDC @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034D58
_08034D50:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034D50
_08034D58:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FE0 @ =0x08062348
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FC4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034D8A
_08034D82:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034D82
_08034D8A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r0, _08034FE4 @ =0x080785C8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034FD8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034DB2
_08034DAA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034DAA
_08034DB2:
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FE8 @ =0x080623C8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FEC @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034DD4
_08034DCC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034DCC
_08034DD4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FF0 @ =0x08062148
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FBC @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034E06
_08034DFE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034DFE
_08034E06:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FF4 @ =0x08078848
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08034FD8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034E32
_08034E2A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034E2A
_08034E32:
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r0, _08034FF8 @ =gUnk_08064868
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034E54
_08034E4C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034E4C
_08034E54:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FF8 @ =gUnk_08064868
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034E86
_08034E7E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034E7E
_08034E86:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	ldr r6, _08034FF8 @ =gUnk_08064868
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034EB2
_08034EAA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034EAA
_08034EB2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034EDE
_08034ED6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034ED6
_08034EDE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034F0A
_08034F02:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034F02
_08034F0A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034F36
_08034F2E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034F2E
_08034F36:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034F62
_08034F5A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034F5A
_08034F62:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08034F8E
_08034F86:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034F86
_08034F8E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08034FB4 @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08034FCC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _08034FFC
	.align 2, 0
_08034FB4: .4byte 0x040000D4
_08034FB8: .4byte 0x08062048
_08034FBC: .4byte 0x80000080
_08034FC0: .4byte gUnk_08061FC8
_08034FC4: .4byte 0x80000040
_08034FC8: .4byte 0x08062AE8
_08034FCC: .4byte 0x80000100
_08034FD0: .4byte 0x08065568
_08034FD4: .4byte 0x080783E8
_08034FD8: .4byte 0x80000010
_08034FDC: .4byte 0x0805F508
_08034FE0: .4byte 0x08062348
_08034FE4: .4byte 0x080785C8
_08034FE8: .4byte 0x080623C8
_08034FEC: .4byte 0x80000200
_08034FF0: .4byte 0x08062148
_08034FF4: .4byte 0x08078848
_08034FF8: .4byte gUnk_08064868
_08034FFC:
	bge _08035006
_08034FFE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08034FFE
_08035006:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r6, _080351DC @ =0x08061D28
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035032
_0803502A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803502A
_08035032:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r0, _080351E4 @ =0x08061D48
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803505A
_08035052:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035052
_0803505A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r6, _080351E8 @ =0x08061D68
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035082
_0803507A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803507A
_08035082:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r0, _080351EC @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080350AA
_080350A2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080350A2
_080350AA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r6, _080351F0 @ =0x08061DA8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080350D2
_080350CA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080350CA
_080350D2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r0, _080351F4 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080350FA
_080350F2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080350F2
_080350FA:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r6, _080351FC @ =0x08078388
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080351E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035122
_0803511A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803511A
_08035122:
	ldr r2, _080351D8 @ =0x040000D4
	ldr r0, _08035200 @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035144
_0803513C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803513C
_08035144:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r6, _08035204 @ =0x0805F388
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035172
_0803516A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803516A
_08035172:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080351D8 @ =0x040000D4
	ldr r0, _08035208 @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080351E0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803519A
_08035192:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035192
_0803519A:
	ldr r2, _080351D8 @ =0x040000D4
	ldr r6, _0803520C @ =0x0805F408
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080351F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080351BC
_080351B4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080351B4
_080351BC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080351D8: .4byte 0x040000D4
_080351DC: .4byte 0x08061D28
_080351E0: .4byte 0x80000010
_080351E4: .4byte 0x08061D48
_080351E8: .4byte 0x08061D68
_080351EC: .4byte 0x08061D88
_080351F0: .4byte 0x08061DA8
_080351F4: .4byte 0x0805F2E8
_080351F8: .4byte 0x80000040
_080351FC: .4byte 0x08078388
_08035200: .4byte 0x0805F368
_08035204: .4byte 0x0805F388
_08035208: .4byte 0x080783A8
_0803520C: .4byte 0x0805F408

	thumb_func_start sub_08035210
sub_08035210: @ 0x08035210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08035568 @ =0x040000D4
	ldr r0, _0803556C @ =0x0805FA08
	str r0, [r2]
	ldr r1, _08035570 @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035574 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r4, _08035578 @ =gObjPalRamPtr
	ldr r6, _0803557C @ =0x0805EEE8
	ldr r5, _08035580 @ =0x08078348
	mov ip, r5
	ldr r5, _08035584 @ =0x0805F0E8
	ldr r7, _08035588 @ =0x080783C8
	mov r8, r7
	ldr r7, _0803558C @ =0x0805F488
	mov sb, r7
	ldr r7, _08035590 @ =0x08078568
	mov sl, r7
	cmp r0, #0
	bge _08035254
_0803524C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803524C
_08035254:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	ldr r7, _08035594 @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035598 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035280
_08035278:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035278
_08035280:
	ldr r2, _08035568 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080352A0
_08035298:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035298
_080352A0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080352D0
_080352C8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080352C8
_080352D0:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080352FA
_080352F2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080352F2
_080352FA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035324
_0803531C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803531C
_08035324:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035598 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035350
_08035348:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035348
_08035350:
	ldr r2, _08035568 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035370
_08035368:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035368
_08035370:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080353A0
_08035398:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035398
_080353A0:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080353CA
_080353C2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080353C2
_080353CA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080353F4
_080353EC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080353EC
_080353F4:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803541E
_08035416:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035416
_0803541E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035448
_08035440:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035440
_08035448:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035472
_0803546A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803546A
_08035472:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803549C
_08035494:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035494
_0803549C:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035598 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080354C8
_080354C0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080354C0
_080354C8:
	ldr r2, _08035568 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080355A0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080354EA
_080354E2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080354E2
_080354EA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035598 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035518
_08035510:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035510
_08035518:
	ldr r2, _08035568 @ =0x040000D4
	ldr r7, _080355A4 @ =0x08061A28
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803559C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803553A
_08035532:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035532
_0803553A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035568 @ =0x040000D4
	ldr r5, _080355A8 @ =0x08078428
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035598 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080355B2
_08035564:
	ldr r0, [r2, #8]
	b _080355AC
	.align 2, 0
_08035568: .4byte 0x040000D4
_0803556C: .4byte 0x0805FA08
_08035570: .4byte gObjVramPtr
_08035574: .4byte 0x80000080
_08035578: .4byte gObjPalRamPtr
_0803557C: .4byte 0x0805EEE8
_08035580: .4byte 0x08078348
_08035584: .4byte 0x0805F0E8
_08035588: .4byte 0x080783C8
_0803558C: .4byte 0x0805F488
_08035590: .4byte 0x08078568
_08035594: .4byte 0x08078328
_08035598: .4byte 0x80000010
_0803559C: .4byte 0x80000100
_080355A0: .4byte 0x80000040
_080355A4: .4byte 0x08061A28
_080355A8: .4byte 0x08078428
_080355AC:
	ands r0, r3
	cmp r0, #0
	bne _08035564
_080355B2:
	ldr r2, _080356BC @ =0x040000D4
	ldr r7, _080356C0 @ =0x0805FB08
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080356C4 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080355D4
_080355CC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080355CC
_080355D4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080356BC @ =0x040000D4
	ldr r5, _080356C8 @ =0x08078388
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080356CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035606
_080355FE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080355FE
_08035606:
	ldr r2, _080356BC @ =0x040000D4
	ldr r7, _080356D0 @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080356CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035628
_08035620:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035620
_08035628:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080356BC @ =0x040000D4
	ldr r0, _080356D4 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080356D8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035656
_0803564E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803564E
_08035656:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080356BC @ =0x040000D4
	ldr r5, _080356DC @ =0x080783A8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080356CC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803567E
_08035676:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035676
_0803567E:
	ldr r2, _080356BC @ =0x040000D4
	ldr r7, _080356E0 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080356D8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080356A0
_08035698:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035698
_080356A0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080356BC: .4byte 0x040000D4
_080356C0: .4byte 0x0805FB08
_080356C4: .4byte 0x80000080
_080356C8: .4byte 0x08078388
_080356CC: .4byte 0x80000010
_080356D0: .4byte 0x0805F368
_080356D4: .4byte 0x0805F388
_080356D8: .4byte 0x80000040
_080356DC: .4byte 0x080783A8
_080356E0: .4byte 0x0805F408

	thumb_func_start sub_080356E4
sub_080356E4: @ 0x080356E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08035A40 @ =0x040000D4
	ldr r0, _08035A44 @ =0x08078308
	str r0, [r3]
	ldr r1, _08035A48 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08035A4C @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _08035A50 @ =0x0805ECE8
	ldr r1, _08035A54 @ =gObjVramPtr
	ldr r6, _08035A58 @ =0x08078328
	ldr r7, _08035A5C @ =0x08078348
	mov ip, r7
	ldr r7, _08035A60 @ =0x0805F0E8
	mov r8, r7
	ldr r7, _08035A64 @ =0x08078588
	mov sb, r7
	ldr r7, _08035A68 @ =0x08061DC8
	mov sl, r7
	cmp r0, #0
	bge _0803572A
_08035722:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08035722
_0803572A:
	ldr r2, _08035A40 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803574A
_08035742:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035742
_0803574A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035A4C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803577A
_08035772:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035772
_0803577A:
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035A70 @ =0x0805EEE8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803579C
_08035794:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035794
_0803579C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035A4C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080357CE
_080357C6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080357C6
_080357CE:
	ldr r2, _08035A40 @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080357F0
_080357E8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080357E8
_080357F0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035A4C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035822
_0803581A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803581A
_08035822:
	ldr r2, _08035A40 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035844
_0803583C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803583C
_08035844:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035A74 @ =0x080783C8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035A4C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035876
_0803586E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803586E
_08035876:
	ldr r2, _08035A40 @ =0x040000D4
	ldr r0, _08035A78 @ =0x0805F488
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A7C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035898
_08035890:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035890
_08035898:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035A80 @ =0x08078568
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035A4C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080358C6
_080358BE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080358BE
_080358C6:
	ldr r2, _08035A40 @ =0x040000D4
	ldr r0, _08035A84 @ =0x08061A28
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080358E8
_080358E0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080358E0
_080358E8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035A88 @ =0x080788E8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035A4C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803591A
_08035912:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035912
_0803591A:
	ldr r2, _08035A40 @ =0x040000D4
	ldr r0, _08035A8C @ =0x08064F68
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803593C
_08035934:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035934
_0803593C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035A8C @ =0x08064F68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803596E
_08035966:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035966
_0803596E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035A90 @ =0x08065168
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803599A
_08035992:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035992
_0803599A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035A94 @ =0x08065368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080359C6
_080359BE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080359BE
_080359C6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035A98 @ =0x080787A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035A4C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080359F2
_080359EA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080359EA
_080359F2:
	ldr r2, _08035A40 @ =0x040000D4
	ldr r0, _08035A9C @ =0x08063868
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A6C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035A14
_08035A0C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035A0C
_08035A14:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035A40 @ =0x040000D4
	ldr r7, _08035AA0 @ =0x08063A68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035A7C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _08035AA4
	.align 2, 0
_08035A40: .4byte 0x040000D4
_08035A44: .4byte 0x08078308
_08035A48: .4byte gObjPalRamPtr
_08035A4C: .4byte 0x80000010
_08035A50: .4byte 0x0805ECE8
_08035A54: .4byte gObjVramPtr
_08035A58: .4byte 0x08078328
_08035A5C: .4byte 0x08078348
_08035A60: .4byte 0x0805F0E8
_08035A64: .4byte 0x08078588
_08035A68: .4byte 0x08061DC8
_08035A6C: .4byte 0x80000100
_08035A70: .4byte 0x0805EEE8
_08035A74: .4byte 0x080783C8
_08035A78: .4byte 0x0805F488
_08035A7C: .4byte 0x80000040
_08035A80: .4byte 0x08078568
_08035A84: .4byte 0x08061A28
_08035A88: .4byte 0x080788E8
_08035A8C: .4byte 0x08064F68
_08035A90: .4byte 0x08065168
_08035A94: .4byte 0x08065368
_08035A98: .4byte 0x080787A8
_08035A9C: .4byte 0x08063868
_08035AA0: .4byte 0x08063A68
_08035AA4:
	bge _08035AAE
_08035AA6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035AA6
_08035AAE:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E04 @ =0x08078808
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035AD6
_08035ACE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035ACE
_08035AD6:
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E0C @ =0x08064468
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E10 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035AF8
_08035AF0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035AF0
_08035AF8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E14 @ =0x08060608
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E18 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035B2A
_08035B22:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035B22
_08035B2A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E1C @ =gUnk_08063368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E20 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035B56
_08035B4E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035B4E
_08035B56:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E24 @ =0x080633E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E28 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035B7E
_08035B76:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035B76
_08035B7E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E2C @ =0x08078408
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035BAA
_08035BA2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035BA2
_08035BAA:
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E30 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E20 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035BCC
_08035BC4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035BC4
_08035BCC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E34 @ =0x0805F808
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E28 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035BFA
_08035BF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035BF2
_08035BFA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E38 @ =gUnk_08061FC8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E20 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035C26
_08035C1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035C1E
_08035C26:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E3C @ =0x08062048
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E18 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035C4E
_08035C46:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035C46
_08035C4E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E40 @ =0x08062148
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E18 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035C7A
_08035C72:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035C72
_08035C7A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E44 @ =0x08061D28
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035CA6
_08035C9E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035C9E
_08035CA6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E48 @ =0x08061D48
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035CCE
_08035CC6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035CC6
_08035CCE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E4C @ =0x08061D68
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035CF6
_08035CEE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035CEE
_08035CF6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E50 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035D1E
_08035D16:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035D16
_08035D1E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E54 @ =0x08061DA8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035D46
_08035D3E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035D3E
_08035D46:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E58 @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035D6E
_08035D66:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035D66
_08035D6E:
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E5C @ =0x0805F2E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E20 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035D90
_08035D88:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035D88
_08035D90:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E60 @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035DBE
_08035DB6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035DB6
_08035DBE:
	ldr r2, _08035E00 @ =0x040000D4
	ldr r7, _08035E64 @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E08 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035DE0
_08035DD8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035DD8
_08035DE0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08035E00 @ =0x040000D4
	ldr r0, _08035E68 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035E20 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08035E6C
	.align 2, 0
_08035E00: .4byte 0x040000D4
_08035E04: .4byte 0x08078808
_08035E08: .4byte 0x80000010
_08035E0C: .4byte 0x08064468
_08035E10: .4byte 0x80000200
_08035E14: .4byte 0x08060608
_08035E18: .4byte 0x80000080
_08035E1C: .4byte gUnk_08063368
_08035E20: .4byte 0x80000040
_08035E24: .4byte 0x080633E8
_08035E28: .4byte 0x80000100
_08035E2C: .4byte 0x08078408
_08035E30: .4byte 0x0805F708
_08035E34: .4byte 0x0805F808
_08035E38: .4byte gUnk_08061FC8
_08035E3C: .4byte 0x08062048
_08035E40: .4byte 0x08062148
_08035E44: .4byte 0x08061D28
_08035E48: .4byte 0x08061D48
_08035E4C: .4byte 0x08061D68
_08035E50: .4byte 0x08061D88
_08035E54: .4byte 0x08061DA8
_08035E58: .4byte 0x08078368
_08035E5C: .4byte 0x0805F2E8
_08035E60: .4byte 0x08078388
_08035E64: .4byte 0x0805F368
_08035E68: .4byte 0x0805F388
_08035E6C:
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035E7E
_08035E76:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035E76
_08035E7E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08035EE4 @ =0x040000D4
	ldr r7, _08035EE8 @ =0x080783A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08035EEC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035EA6
_08035E9E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035E9E
_08035EA6:
	ldr r2, _08035EE4 @ =0x040000D4
	ldr r0, _08035EF0 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08035EF4 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035EC8
_08035EC0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035EC0
_08035EC8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035EE4: .4byte 0x040000D4
_08035EE8: .4byte 0x080783A8
_08035EEC: .4byte 0x80000010
_08035EF0: .4byte 0x0805F408
_08035EF4: .4byte 0x80000040

	thumb_func_start sub_08035EF8
sub_08035EF8: @ 0x08035EF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08036254 @ =0x040000D4
	ldr r0, _08036258 @ =0x08078468
	str r0, [r2]
	ldr r1, _0803625C @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036260 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r4, r1, #0
	ldr r1, _08036264 @ =gObjVramPtr
	ldr r5, _08036268 @ =0x08078328
	mov r8, r5
	ldr r6, _0803626C @ =0x0805EEE8
	ldr r7, _08036270 @ =0x08078348
	mov sb, r7
	ldr r5, _08036274 @ =0x0805F0E8
	ldr r7, _08036278 @ =0x08078448
	mov sl, r7
	ldr r7, _0803627C @ =0x0805FC08
	mov ip, r7
	cmp r0, #0
	bge _08035F3E
_08035F36:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035F36
_08035F3E:
	ldr r2, _08036254 @ =0x040000D4
	ldr r0, _08036280 @ =0x0805FE08
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036284 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035F60
_08035F58:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035F58
_08035F60:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036260 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035F92
_08035F8A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035F8A
_08035F92:
	ldr r2, _08036254 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035FB2
_08035FAA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035FAA
_08035FB2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08035FE2
_08035FDA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08035FDA
_08035FE2:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803600C
_08036004:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036004
_0803600C:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036260 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036038
_08036030:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036030
_08036038:
	ldr r2, _08036254 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036058
_08036050:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036050
_08036058:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036088
_08036080:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036080
_08036088:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080360B2
_080360AA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080360AA
_080360B2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080360DC
_080360D4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080360D4
_080360DC:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036106
_080360FE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080360FE
_08036106:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036130
_08036128:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036128
_08036130:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803615A
_08036152:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036152
_0803615A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036184
_0803617C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803617C
_08036184:
	ldr r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036260 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080361B0
_080361A8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080361A8
_080361B0:
	ldr r2, _08036254 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080361D2
_080361CA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080361CA
_080361D2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	mov r5, ip
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036204
_080361FC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080361FC
_08036204:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036230
_08036228:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036228
_08036230:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036254 @ =0x040000D4
	mov r5, ip
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036288 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _0803628C
	.align 2, 0
_08036254: .4byte 0x040000D4
_08036258: .4byte 0x08078468
_0803625C: .4byte gObjPalRamPtr
_08036260: .4byte 0x80000010
_08036264: .4byte gObjVramPtr
_08036268: .4byte 0x08078328
_0803626C: .4byte 0x0805EEE8
_08036270: .4byte 0x08078348
_08036274: .4byte 0x0805F0E8
_08036278: .4byte 0x08078448
_0803627C: .4byte 0x0805FC08
_08036280: .4byte 0x0805FE08
_08036284: .4byte 0x80000400
_08036288: .4byte 0x80000100
_0803628C:
	bge _08036296
_0803628E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803628E
_08036296:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036528 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080362C2
_080362BA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080362BA
_080362C2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	mov r5, ip
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036528 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080362EE
_080362E6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080362E6
_080362EE:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036528 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803631A
_08036312:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036312
_0803631A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	mov r5, ip
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036528 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036346
_0803633E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803633E
_08036346:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	ldr r0, _0803652C @ =0x08078588
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036530 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036372
_0803636A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803636A
_08036372:
	ldr r2, _08036524 @ =0x040000D4
	ldr r5, _08036534 @ =0x08061DC8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036528 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036394
_0803638C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803638C
_08036394:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	ldr r0, _08036538 @ =0x080783C8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036530 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080363C6
_080363BE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080363BE
_080363C6:
	ldr r2, _08036524 @ =0x040000D4
	ldr r5, _0803653C @ =0x0805F488
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036540 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080363E8
_080363E0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080363E0
_080363E8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	ldr r7, _08036544 @ =0x08060608
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036548 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036416
_0803640E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803640E
_08036416:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	ldr r5, _0803654C @ =0x08062248
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036548 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036442
_0803643A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803643A
_08036442:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	ldr r0, _08036550 @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036530 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803646E
_08036466:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036466
_0803646E:
	ldr r2, _08036524 @ =0x040000D4
	ldr r5, _08036554 @ =0x0805F368
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036530 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036490
_08036488:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036488
_08036490:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	ldr r7, _08036558 @ =0x0805F388
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036540 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080364BE
_080364B6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080364B6
_080364BE:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036524 @ =0x040000D4
	ldr r0, _0803655C @ =0x080783A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036530 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080364E6
_080364DE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080364DE
_080364E6:
	ldr r2, _08036524 @ =0x040000D4
	ldr r5, _08036560 @ =0x0805F408
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036540 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036508
_08036500:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036500
_08036508:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036524: .4byte 0x040000D4
_08036528: .4byte 0x80000100
_0803652C: .4byte 0x08078588
_08036530: .4byte 0x80000010
_08036534: .4byte 0x08061DC8
_08036538: .4byte 0x080783C8
_0803653C: .4byte 0x0805F488
_08036540: .4byte 0x80000040
_08036544: .4byte 0x08060608
_08036548: .4byte 0x80000080
_0803654C: .4byte 0x08062248
_08036550: .4byte 0x08078388
_08036554: .4byte 0x0805F368
_08036558: .4byte 0x0805F388
_0803655C: .4byte 0x080783A8
_08036560: .4byte 0x0805F408

	thumb_func_start sub_08036564
sub_08036564: @ 0x08036564
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080368BC @ =0x040000D4
	ldr r0, _080368C0 @ =0x08078308
	str r0, [r3]
	ldr r1, _080368C4 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _080368C8 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r5, _080368CC @ =0x0805ECE8
	ldr r1, _080368D0 @ =gObjVramPtr
	ldr r7, _080368D4 @ =0x0805EEE8
	ldr r6, _080368D8 @ =0x08078348
	mov sb, r6
	ldr r6, _080368DC @ =0x0805F0E8
	mov r8, r6
	ldr r6, _080368E0 @ =0x08062AC8
	mov ip, r6
	ldr r6, _080368E4 @ =gUnk_08064868
	mov sl, r6
	cmp r0, #0
	bge _080365AA
_080365A2:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _080365A2
_080365AA:
	ldr r2, _080368BC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080365CA
_080365C2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080365C2
_080365CA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	ldr r6, _080368EC @ =0x08078328
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080368C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080365FC
_080365F4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080365F4
_080365FC:
	ldr r2, _080368BC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803661C
_08036614:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036614
_0803661C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803664C
_08036644:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036644
_0803664C:
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080368C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036678
_08036670:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036670
_08036678:
	ldr r2, _080368BC @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803669A
_08036692:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036692
_0803669A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	mov r6, r8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080366CC
_080366C4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080366C4
_080366CC:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	ldr r6, _080368F0 @ =0x08078488
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080368C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080366F8
_080366F0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080366F0
_080366F8:
	ldr r2, _080368BC @ =0x040000D4
	ldr r0, _080368F4 @ =0x08060808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803671A
_08036712:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036712
_0803671A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	ldr r6, _080368F8 @ =0x08078588
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080368C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803674C
_08036744:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036744
_0803674C:
	ldr r2, _080368BC @ =0x040000D4
	ldr r0, _080368FC @ =0x08061DC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803676E
_08036766:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036766
_0803676E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	ldr r6, _08036900 @ =0x080783C8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080368C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080367A0
_08036798:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036798
_080367A0:
	ldr r2, _080368BC @ =0x040000D4
	ldr r0, _08036904 @ =0x0805F488
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036908 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080367C2
_080367BA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080367BA
_080367C2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	ldr r6, _0803690C @ =0x080788E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080368C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080367F0
_080367E8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080367E8
_080367F0:
	ldr r2, _080368BC @ =0x040000D4
	ldr r0, _08036910 @ =0x08064F68
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036812
_0803680A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803680A
_08036812:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	ldr r6, _08036914 @ =0x08065168
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036844
_0803683C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803683C
_08036844:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	ldr r6, _08036918 @ =0x08065368
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036870
_08036868:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036868
_08036870:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080368BC @ =0x040000D4
	ldr r6, _0803691C @ =0x080786A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080368C8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803689C
_08036894:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036894
_0803689C:
	ldr r2, _080368BC @ =0x040000D4
	ldr r0, _08036920 @ =0x080628C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080368E8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036928
_080368B6:
	ldr r0, [r2, #8]
	ands r0, r3
	b _08036924
	.align 2, 0
_080368BC: .4byte 0x040000D4
_080368C0: .4byte 0x08078308
_080368C4: .4byte gObjPalRamPtr
_080368C8: .4byte 0x80000010
_080368CC: .4byte 0x0805ECE8
_080368D0: .4byte gObjVramPtr
_080368D4: .4byte 0x0805EEE8
_080368D8: .4byte 0x08078348
_080368DC: .4byte 0x0805F0E8
_080368E0: .4byte 0x08062AC8
_080368E4: .4byte gUnk_08064868
_080368E8: .4byte 0x80000100
_080368EC: .4byte 0x08078328
_080368F0: .4byte 0x08078488
_080368F4: .4byte 0x08060808
_080368F8: .4byte 0x08078588
_080368FC: .4byte 0x08061DC8
_08036900: .4byte 0x080783C8
_08036904: .4byte 0x0805F488
_08036908: .4byte 0x80000040
_0803690C: .4byte 0x080788E8
_08036910: .4byte 0x08064F68
_08036914: .4byte 0x08065168
_08036918: .4byte 0x08065368
_0803691C: .4byte 0x080786A8
_08036920: .4byte 0x080628C8
_08036924:
	cmp r0, #0
	bne _080368B6
_08036928:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036C88 @ =0x08062CE8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C8C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803695A
_08036952:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036952
_0803695A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036986
_0803697E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803697E
_08036986:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080369AE
_080369A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080369A6
_080369AE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	mov r6, ip
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080369D6
_080369CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080369CE
_080369D6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080369FE
_080369F6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080369F6
_080369FE:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036C94 @ =gUnk_08063368
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C98 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036A26
_08036A1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036A1E
_08036A26:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r0, _08036C9C @ =0x080633E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C8C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036A4E
_08036A46:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036A46
_08036A4E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036CA0 @ =gUnk_080627C8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C98 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036A7A
_08036A72:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036A72
_08036A7A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r0, _08036CA4 @ =0x08062AE8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C8C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036AA2
_08036A9A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036A9A
_08036AA2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036CA8 @ =0x080783E8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036C90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036ACE
_08036AC6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036AC6
_08036ACE:
	ldr r2, _08036C84 @ =0x040000D4
	ldr r0, _08036CAC @ =0x0805F508
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C8C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036AF0
_08036AE8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036AE8
_08036AF0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036CB0 @ =0x08063668
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C8C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036B22
_08036B1A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036B1A
_08036B22:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036CB4 @ =0x08078408
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036C90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036B4E
_08036B46:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036B46
_08036B4E:
	ldr r2, _08036C84 @ =0x040000D4
	ldr r0, _08036CB8 @ =0x0805F708
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C98 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036B70
_08036B68:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036B68
_08036B70:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036CBC @ =0x0805F788
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C98 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036B9E
_08036B96:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036B96
_08036B9E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r0, _08036CC0 @ =0x0805F808
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C8C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036BC6
_08036BBE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036BBE
_08036BC6:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036CC4 @ =0x08078928
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08036C90 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036BF2
_08036BEA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036BEA
_08036BF2:
	ldr r2, _08036C84 @ =0x040000D4
	ldr r0, _08036CC8 @ =0x080630E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C98 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036C14
_08036C0C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036C0C
_08036C14:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036CCC @ =0x08062048
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036CD0 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036C42
_08036C3A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036C3A
_08036C42:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r6, _08036CD4 @ =gUnk_08061FC8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036C98 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036C6E
_08036C66:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036C66
_08036C6E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036C84 @ =0x040000D4
	ldr r0, _08036CD8 @ =0x08062148
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036CD0 @ =0x80000080
	b _08036CDC
	.align 2, 0
_08036C84: .4byte 0x040000D4
_08036C88: .4byte 0x08062CE8
_08036C8C: .4byte 0x80000100
_08036C90: .4byte 0x80000010
_08036C94: .4byte gUnk_08063368
_08036C98: .4byte 0x80000040
_08036C9C: .4byte 0x080633E8
_08036CA0: .4byte gUnk_080627C8
_08036CA4: .4byte 0x08062AE8
_08036CA8: .4byte 0x080783E8
_08036CAC: .4byte 0x0805F508
_08036CB0: .4byte 0x08063668
_08036CB4: .4byte 0x08078408
_08036CB8: .4byte 0x0805F708
_08036CBC: .4byte 0x0805F788
_08036CC0: .4byte 0x0805F808
_08036CC4: .4byte 0x08078928
_08036CC8: .4byte 0x080630E8
_08036CCC: .4byte 0x08062048
_08036CD0: .4byte 0x80000080
_08036CD4: .4byte gUnk_08061FC8
_08036CD8: .4byte 0x08062148
_08036CDC:
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036CF2
_08036CEA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036CEA
_08036CF2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036FF8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036D1E
_08036D16:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036D16
_08036D1E:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036FF8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036D4A
_08036D42:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036D42
_08036D4A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036FF8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036D76
_08036D6E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036D6E
_08036D76:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	mov r6, sl
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036FF8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036DA2
_08036D9A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036D9A
_08036DA2:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r6, _08036FFC @ =gUnk_08064A68
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036FF8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036DCE
_08036DC6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036DC6
_08036DCE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r6, _08036FFC @ =gUnk_08064A68
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08036FF8 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036DFA
_08036DF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036DF2
_08036DFA:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r6, _08037000 @ =0x08061D28
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036E26
_08036E1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036E1E
_08036E26:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r0, _08037008 @ =0x08061D48
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036E4E
_08036E46:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036E46
_08036E4E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r6, _0803700C @ =0x08061D68
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036E76
_08036E6E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036E6E
_08036E76:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r0, _08037010 @ =0x08061D88
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036E9E
_08036E96:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036E96
_08036E9E:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r6, _08037014 @ =0x08061DA8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036EC6
_08036EBE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036EBE
_08036EC6:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r0, _08037018 @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036EEE
_08036EE6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036EE6
_08036EEE:
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r6, _0803701C @ =0x0805F2E8
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037020 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036F10
_08036F08:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036F08
_08036F10:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r0, _08037024 @ =0x08078388
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036F3E
_08036F36:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036F36
_08036F3E:
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r6, _08037028 @ =0x0805F368
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036F60
_08036F58:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036F58
_08036F60:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r0, _0803702C @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037020 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036F8E
_08036F86:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036F86
_08036F8E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r6, _08037030 @ =0x080783A8
	str r6, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037004 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036FB6
_08036FAE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036FAE
_08036FB6:
	ldr r2, _08036FF4 @ =0x040000D4
	ldr r0, _08037034 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037020 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08036FD8
_08036FD0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08036FD0
_08036FD8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036FF4: .4byte 0x040000D4
_08036FF8: .4byte 0x80000100
_08036FFC: .4byte gUnk_08064A68
_08037000: .4byte 0x08061D28
_08037004: .4byte 0x80000010
_08037008: .4byte 0x08061D48
_0803700C: .4byte 0x08061D68
_08037010: .4byte 0x08061D88
_08037014: .4byte 0x08061DA8
_08037018: .4byte 0x08078368
_0803701C: .4byte 0x0805F2E8
_08037020: .4byte 0x80000040
_08037024: .4byte 0x08078388
_08037028: .4byte 0x0805F368
_0803702C: .4byte 0x0805F388
_08037030: .4byte 0x080783A8
_08037034: .4byte 0x0805F408

	thumb_func_start sub_08037038
sub_08037038: @ 0x08037038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _080373AC @ =0x040000D4
	ldr r0, _080373B0 @ =0x080784A8
	str r0, [r2]
	ldr r1, _080373B4 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080373B8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r5, #0x80
	lsls r5, r5, #0x18
	adds r7, r1, #0
	ldr r6, _080373BC @ =0x08060A08
	ldr r3, _080373C0 @ =gObjVramPtr
	ldr r1, _080373C4 @ =0x080784C8
	mov ip, r1
	ldr r1, _080373C8 @ =0x08060A88
	mov sb, r1
	ldr r1, _080373CC @ =0x080784E8
	mov sl, r1
	ldr r1, _080373D0 @ =gUnk_08189A24
	mov r8, r1
	ldr r4, _080373D4 @ =gUnk_03004C20
	cmp r0, #0
	bge _08037080
	adds r1, r5, #0
_08037078:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08037078
_08037080:
	ldr r1, _080373AC @ =0x040000D4
	str r6, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _080373D8 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080370A0
_08037098:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08037098
_080370A0:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	ldr r1, _080373AC @ =0x040000D4
	mov r2, ip
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _080373B8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080370CE
_080370C6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080370C6
_080370CE:
	ldr r1, _080373AC @ =0x040000D4
	mov r0, sb
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _080373DC @ =0x80000300
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080370F0
_080370E8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080370E8
_080370F0:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _080373AC @ =0x040000D4
	mov r2, sl
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _080373B8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037122
_0803711A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803711A
_08037122:
	ldr r1, _080373AC @ =0x040000D4
	ldr r0, _080373E0 @ =0x08061088
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _080373E4 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037144
_0803713C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803713C
_08037144:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _080373AC @ =0x040000D4
	ldr r2, _080373E8 @ =0x08078948
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _080373B8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037176
_0803716E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803716E
_08037176:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	ldr r2, _080373AC @ =0x040000D4
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080373E4 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080371B4
_080371AC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080371AC
_080371B4:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _080373AC @ =0x040000D4
	ldr r2, _080373EC @ =0x08078328
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _080373B8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080371E0
_080371D8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080371D8
_080371E0:
	ldr r1, _080373AC @ =0x040000D4
	ldr r0, _080373F0 @ =0x0805EEE8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _080373F4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037202
_080371FA:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080371FA
_08037202:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _080373AC @ =0x040000D4
	ldr r2, _080373F0 @ =0x0805EEE8
	str r2, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _080373F4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037234
_0803722C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803722C
_08037234:
	ldr r1, _080373C0 @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0x17
	movs r1, #0
	bl sub_08025B78
	movs r0, #0x18
	movs r1, #0
	bl sub_08025B78
	ldr r1, _080373AC @ =0x040000D4
	ldr r0, _080373F8 @ =0x08078968
	str r0, [r1]
	ldr r0, _080373B4 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _080373B8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037274
_0803726C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803726C
_08037274:
	ldr r3, _080373B4 @ =gObjPalRamPtr
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r5, _080373AC @ =0x040000D4
	ldr r4, _080373D0 @ =gUnk_08189A24
	ldr r2, _080373D4 @ =gUnk_03004C20
	ldrb r1, [r2, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r2, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r5]
	ldr r1, _080373C0 @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r5, #4]
	ldr r0, _080373E4 @ =0x80000400
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r7, r3, #0
	adds r3, r1, #0
	mov r8, r4
	adds r4, r2, #0
	ldr r2, _080373FC @ =0x08078988
	mov sb, r2
	ldr r1, _08037400 @ =0x080783A8
	mov sl, r1
	ldr r2, _08037404 @ =0x0805F408
	mov ip, r2
	cmp r0, #0
	bge _080372D0
	adds r1, r6, #0
_080372C8:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	bne _080372C8
_080372D0:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _080373AC @ =0x040000D4
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080373E4 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08037312
_0803730A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803730A
_08037312:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _080373AC @ =0x040000D4
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080373E4 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08037354
_0803734C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803734C
_08037354:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r3]
	ldr r1, _080373AC @ =0x040000D4
	mov r0, sb
	str r0, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _080373B8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037382
	adds r5, r2, #0
_0803737A:
	ldr r0, [r1, #8]
	ands r0, r5
	cmp r0, #0
	bne _0803737A
_08037382:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	ldr r2, _080373AC @ =0x040000D4
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x38]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080373E4 @ =0x80000400
	b _08037408
	.align 2, 0
_080373AC: .4byte 0x040000D4
_080373B0: .4byte 0x080784A8
_080373B4: .4byte gObjPalRamPtr
_080373B8: .4byte 0x80000010
_080373BC: .4byte 0x08060A08
_080373C0: .4byte gObjVramPtr
_080373C4: .4byte 0x080784C8
_080373C8: .4byte 0x08060A88
_080373CC: .4byte 0x080784E8
_080373D0: .4byte gUnk_08189A24
_080373D4: .4byte gUnk_03004C20
_080373D8: .4byte 0x80000040
_080373DC: .4byte 0x80000300
_080373E0: .4byte 0x08061088
_080373E4: .4byte 0x80000400
_080373E8: .4byte 0x08078948
_080373EC: .4byte 0x08078328
_080373F0: .4byte 0x0805EEE8
_080373F4: .4byte 0x80000100
_080373F8: .4byte 0x08078968
_080373FC: .4byte 0x08078988
_08037400: .4byte 0x080783A8
_08037404: .4byte 0x0805F408
_08037408:
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803741E
_08037416:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08037416
_0803741E:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08037590 @ =0x040000D4
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x44]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08037594 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08037460
_08037458:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08037458
_08037460:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08037590 @ =0x040000D4
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x44]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08037594 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080374A2
_0803749A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803749A
_080374A2:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08037590 @ =0x040000D4
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08037594 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080374E4
_080374DC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080374DC
_080374E4:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08037590 @ =0x040000D4
	ldrb r1, [r4, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4, #0xc]
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08037594 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08037526
_0803751E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803751E
_08037526:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08037590 @ =0x040000D4
	mov r2, sl
	str r2, [r1]
	ldr r0, [r7]
	str r0, [r1, #4]
	ldr r0, _08037598 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037552
_0803754A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803754A
_08037552:
	ldr r1, _08037590 @ =0x040000D4
	mov r0, ip
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0803759C @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08037574
_0803756C:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803756C
_08037574:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037590: .4byte 0x040000D4
_08037594: .4byte 0x80000400
_08037598: .4byte 0x80000010
_0803759C: .4byte 0x80000040

	thumb_func_start sub_080375A0
sub_080375A0: @ 0x080375A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080378FC @ =0x040000D4
	ldr r0, _08037900 @ =0x08078308
	str r0, [r3]
	ldr r1, _08037904 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08037908 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r1, _0803790C @ =gObjVramPtr
	ldr r5, _08037910 @ =0x08078328
	mov ip, r5
	ldr r6, _08037914 @ =0x0805EEE8
	ldr r7, _08037918 @ =0x08078348
	mov sb, r7
	ldr r5, _0803791C @ =0x0805F0E8
	ldr r7, _08037920 @ =0x08078448
	mov sl, r7
	ldr r7, _08037924 @ =0x0805FC08
	mov r8, r7
	cmp r0, #0
	bge _080375E6
_080375DE:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _080375DE
_080375E6:
	ldr r2, _080378FC @ =0x040000D4
	ldr r0, _08037928 @ =0x0805ECE8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037608
_08037600:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037600
_08037608:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037908 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803763A
_08037632:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037632
_0803763A:
	ldr r2, _080378FC @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803765A
_08037652:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037652
_0803765A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803768A
_08037682:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037682
_0803768A:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080376B4
_080376AC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080376AC
_080376B4:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037908 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080376E0
_080376D8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080376D8
_080376E0:
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037700
_080376F8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080376F8
_08037700:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037730
_08037728:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037728
_08037730:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803775A
_08037752:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037752
_0803775A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037784
_0803777C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803777C
_08037784:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080377AE
_080377A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080377A6
_080377AE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080377D8
_080377D0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080377D0
_080377D8:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037802
_080377FA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080377FA
_08037802:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803782C
_08037824:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037824
_0803782C:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037856
_0803784E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803784E
_08037856:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037908 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037882
_0803787A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803787A
_08037882:
	ldr r2, _080378FC @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080378A4
_0803789C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803789C
_080378A4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	mov r5, r8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080378D6
_080378CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080378CE
_080378D6:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080378FC @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803792C @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	b _08037930
	.align 2, 0
_080378FC: .4byte 0x040000D4
_08037900: .4byte 0x08078308
_08037904: .4byte gObjPalRamPtr
_08037908: .4byte 0x80000010
_0803790C: .4byte gObjVramPtr
_08037910: .4byte 0x08078328
_08037914: .4byte 0x0805EEE8
_08037918: .4byte 0x08078348
_0803791C: .4byte 0x0805F0E8
_08037920: .4byte 0x08078448
_08037924: .4byte 0x0805FC08
_08037928: .4byte 0x0805ECE8
_0803792C: .4byte 0x80000100
_08037930:
	bge _0803793A
_08037932:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037932
_0803793A:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037C94 @ =0x08078588
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037966
_0803795E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803795E
_08037966:
	ldr r2, _08037C90 @ =0x040000D4
	ldr r7, _08037C9C @ =0x08061DC8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CA0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037988
_08037980:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037980
_08037988:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037CA4 @ =0x080783C8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080379BA
_080379B2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080379B2
_080379BA:
	ldr r2, _08037C90 @ =0x040000D4
	ldr r7, _08037CA8 @ =0x0805F488
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080379DC
_080379D4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080379D4
_080379DC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r0, _08037CB0 @ =0x08078488
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037A0A
_08037A02:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037A02
_08037A0A:
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037CB4 @ =0x08060808
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CA0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037A2C
_08037A24:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037A24
_08037A2C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r0, _08037CB8 @ =0x08078568
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037A5E
_08037A56:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037A56
_08037A5E:
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037CBC @ =0x08061A28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CA0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037A80
_08037A78:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037A78
_08037A80:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r0, _08037CC0 @ =gUnk_08061FC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037AB2
_08037AAA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037AAA
_08037AB2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037CC4 @ =0x08078908
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037ADA
_08037AD2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037AD2
_08037ADA:
	ldr r2, _08037C90 @ =0x040000D4
	ldr r7, _08037CC8 @ =0x08062048
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CCC @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037AFC
_08037AF4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037AF4
_08037AFC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037CD0 @ =gUnk_08063368
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037B2E
_08037B26:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037B26
_08037B2E:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r7, _08037CD4 @ =0x080633E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CA0 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037B56
_08037B4E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037B4E
_08037B56:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037CD8 @ =0x08061D28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037B82
_08037B7A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037B7A
_08037B82:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r7, _08037CDC @ =0x08061D48
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037BAA
_08037BA2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037BA2
_08037BAA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r0, _08037CE0 @ =0x08061D68
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037BD2
_08037BCA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037BCA
_08037BD2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037CE4 @ =0x08061D88
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037BFA
_08037BF2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037BF2
_08037BFA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r7, _08037CE8 @ =0x08061DA8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037C22
_08037C1A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037C1A
_08037C22:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r0, _08037CEC @ =0x08078368
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037C4A
_08037C42:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037C42
_08037C4A:
	ldr r2, _08037C90 @ =0x040000D4
	ldr r5, _08037CF0 @ =0x0805F2E8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037CAC @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037C6C
_08037C64:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037C64
_08037C6C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08037C90 @ =0x040000D4
	ldr r7, _08037CF4 @ =0x08078388
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037C98 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	b _08037CF8
	.align 2, 0
_08037C90: .4byte 0x040000D4
_08037C94: .4byte 0x08078588
_08037C98: .4byte 0x80000010
_08037C9C: .4byte 0x08061DC8
_08037CA0: .4byte 0x80000100
_08037CA4: .4byte 0x080783C8
_08037CA8: .4byte 0x0805F488
_08037CAC: .4byte 0x80000040
_08037CB0: .4byte 0x08078488
_08037CB4: .4byte 0x08060808
_08037CB8: .4byte 0x08078568
_08037CBC: .4byte 0x08061A28
_08037CC0: .4byte gUnk_08061FC8
_08037CC4: .4byte 0x08078908
_08037CC8: .4byte 0x08062048
_08037CCC: .4byte 0x80000080
_08037CD0: .4byte gUnk_08063368
_08037CD4: .4byte 0x080633E8
_08037CD8: .4byte 0x08061D28
_08037CDC: .4byte 0x08061D48
_08037CE0: .4byte 0x08061D68
_08037CE4: .4byte 0x08061D88
_08037CE8: .4byte 0x08061DA8
_08037CEC: .4byte 0x08078368
_08037CF0: .4byte 0x0805F2E8
_08037CF4: .4byte 0x08078388
_08037CF8:
	cmp r0, #0
	bge _08037D04
_08037CFC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037CFC
_08037D04:
	ldr r2, _08037DB8 @ =0x040000D4
	ldr r0, _08037DBC @ =0x0805F368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037DC0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037D26
_08037D1E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037D1E
_08037D26:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _08037DB8 @ =0x040000D4
	ldr r5, _08037DC4 @ =0x0805F388
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037DC8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037D54
_08037D4C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037D4C
_08037D54:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _08037DB8 @ =0x040000D4
	ldr r7, _08037DCC @ =0x080783A8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08037DC0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037D7C
_08037D74:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037D74
_08037D7C:
	ldr r2, _08037DB8 @ =0x040000D4
	ldr r0, _08037DD0 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08037DC8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037D9E
_08037D96:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037D96
_08037D9E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037DB8: .4byte 0x040000D4
_08037DBC: .4byte 0x0805F368
_08037DC0: .4byte 0x80000010
_08037DC4: .4byte 0x0805F388
_08037DC8: .4byte 0x80000040
_08037DCC: .4byte 0x080783A8
_08037DD0: .4byte 0x0805F408

	thumb_func_start sub_08037DD4
sub_08037DD4: @ 0x08037DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0803812C @ =0x040000D4
	ldr r0, _08038130 @ =0x08078308
	str r0, [r3]
	ldr r1, _08038134 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08038138 @ =0x80000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r4, r1, #0
	ldr r6, _0803813C @ =0x0805ECE8
	ldr r1, _08038140 @ =gObjVramPtr
	ldr r5, _08038144 @ =0x0805EEE8
	mov ip, r5
	ldr r7, _08038148 @ =0x08078348
	mov r8, r7
	ldr r5, _0803814C @ =0x0805F0E8
	ldr r7, _08038150 @ =0x08061DC8
	mov sb, r7
	ldr r7, _08038154 @ =gUnk_080635E8
	mov sl, r7
	cmp r0, #0
	bge _08037E1A
_08037E12:
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	bne _08037E12
_08037E1A:
	ldr r2, _0803812C @ =0x040000D4
	str r6, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037E3A
_08037E32:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037E32
_08037E3A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	ldr r7, _0803815C @ =0x08078328
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08038138 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037E6C
_08037E64:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037E64
_08037E6C:
	ldr r2, _0803812C @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037E8E
_08037E86:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037E86
_08037E8E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	mov r7, ip
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037EC0
_08037EB8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037EB8
_08037EC0:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	mov r7, r8
	str r7, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08038138 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037EEC
_08037EE4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037EE4
_08037EEC:
	ldr r2, _0803812C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037F0C
_08037F04:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037F04
_08037F0C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037F3C
_08037F34:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037F34
_08037F3C:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037F66
_08037F5E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037F5E
_08037F66:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	ldr r5, _08038160 @ =0x08078588
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08038138 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037F92
_08037F8A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037F8A
_08037F92:
	ldr r2, _0803812C @ =0x040000D4
	mov r7, sb
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037FB4
_08037FAC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037FAC
_08037FB4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	mov r5, sb
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08037FE6
_08037FDE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08037FDE
_08037FE6:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	ldr r0, _08038164 @ =0x08078448
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08038138 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038012
_0803800A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803800A
_08038012:
	ldr r2, _0803812C @ =0x040000D4
	ldr r5, _08038168 @ =0x0805FC08
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038034
_0803802C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803802C
_08038034:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	ldr r0, _0803816C @ =0x08078488
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08038138 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038066
_0803805E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803805E
_08038066:
	ldr r2, _0803812C @ =0x040000D4
	ldr r5, _08038170 @ =0x08060808
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038088
_08038080:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038080
_08038088:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	ldr r0, _08038174 @ =0x08078568
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08038138 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080380BA
_080380B2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080380B2
_080380BA:
	ldr r2, _0803812C @ =0x040000D4
	ldr r5, _08038178 @ =0x08061A28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080380DC
_080380D4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080380D4
_080380DC:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _0803812C @ =0x040000D4
	ldr r0, _0803817C @ =0x080786A8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _08038138 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803810E
_08038106:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038106
_0803810E:
	ldr r2, _0803812C @ =0x040000D4
	ldr r5, _08038180 @ =0x080628C8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038158 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803818A
_08038128:
	ldr r0, [r2, #8]
	b _08038184
	.align 2, 0
_0803812C: .4byte 0x040000D4
_08038130: .4byte 0x08078308
_08038134: .4byte gObjPalRamPtr
_08038138: .4byte 0x80000010
_0803813C: .4byte 0x0805ECE8
_08038140: .4byte gObjVramPtr
_08038144: .4byte 0x0805EEE8
_08038148: .4byte 0x08078348
_0803814C: .4byte 0x0805F0E8
_08038150: .4byte 0x08061DC8
_08038154: .4byte gUnk_080635E8
_08038158: .4byte 0x80000100
_0803815C: .4byte 0x08078328
_08038160: .4byte 0x08078588
_08038164: .4byte 0x08078448
_08038168: .4byte 0x0805FC08
_0803816C: .4byte 0x08078488
_08038170: .4byte 0x08060808
_08038174: .4byte 0x08078568
_08038178: .4byte 0x08061A28
_0803817C: .4byte 0x080786A8
_08038180: .4byte 0x080628C8
_08038184:
	ands r0, r3
	cmp r0, #0
	bne _08038128
_0803818A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r0, _080384E8 @ =0x08062AC8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384EC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080381BC
_080381B4:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080381B4
_080381BC:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r5, _080384F0 @ =0x080783C8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080384EC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080381E4
_080381DC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080381DC
_080381E4:
	ldr r2, _080384E4 @ =0x040000D4
	ldr r7, _080384F4 @ =0x0805F488
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038206
_080381FE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080381FE
_08038206:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r0, _080384FC @ =0x08062248
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038500 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038234
_0803822C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803822C
_08038234:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r5, _08038504 @ =0x08060608
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038500 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038260
_08038258:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038258
_08038260:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r0, _08038508 @ =0x080783E8
	str r0, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080384EC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803828C
_08038284:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038284
_0803828C:
	ldr r2, _080384E4 @ =0x040000D4
	ldr r5, _0803850C @ =0x0805F508
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038510 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080382AE
_080382A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080382A6
_080382AE:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r0, _08038514 @ =gUnk_08063368
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080382E0
_080382D8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080382D8
_080382E0:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r5, _08038518 @ =0x080633E8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038510 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038308
_08038300:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038300
_08038308:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r0, _0803851C @ =gUnk_080627C8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038334
_0803832C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803832C
_08038334:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r5, _08038520 @ =0x08062AE8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038510 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803835C
_08038354:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038354
_0803835C:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r0, _08038524 @ =0x08062348
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038388
_08038380:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038380
_08038388:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r5, _08038528 @ =0x080785C8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080384EC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080383B0
_080383A8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080383A8
_080383B0:
	ldr r2, _080384E4 @ =0x040000D4
	ldr r7, _0803852C @ =0x080623C8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038530 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080383D2
_080383CA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080383CA
_080383D2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r5, _08038534 @ =0x08078408
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080384EC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038404
_080383FC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080383FC
_08038404:
	ldr r2, _080384E4 @ =0x040000D4
	ldr r7, _08038538 @ =0x0805F708
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038426
_0803841E:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803841E
_08038426:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r0, _0803853C @ =0x0805F788
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038454
_0803844C:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803844C
_08038454:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	ldr r5, _08038540 @ =0x0805F808
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _08038510 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803847C
_08038474:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038474
_0803847C:
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080384A8
_080384A0:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080384A0
_080384A8:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	mov r5, sl
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080384D0
_080384C8:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080384C8
_080384D0:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080384E4 @ =0x040000D4
	mov r7, sl
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080384F8 @ =0x80000040
	b _08038544
	.align 2, 0
_080384E4: .4byte 0x040000D4
_080384E8: .4byte 0x08062AC8
_080384EC: .4byte 0x80000010
_080384F0: .4byte 0x080783C8
_080384F4: .4byte 0x0805F488
_080384F8: .4byte 0x80000040
_080384FC: .4byte 0x08062248
_08038500: .4byte 0x80000080
_08038504: .4byte 0x08060608
_08038508: .4byte 0x080783E8
_0803850C: .4byte 0x0805F508
_08038510: .4byte 0x80000100
_08038514: .4byte gUnk_08063368
_08038518: .4byte 0x080633E8
_0803851C: .4byte gUnk_080627C8
_08038520: .4byte 0x08062AE8
_08038524: .4byte 0x08062348
_08038528: .4byte 0x080785C8
_0803852C: .4byte 0x080623C8
_08038530: .4byte 0x80000200
_08038534: .4byte 0x08078408
_08038538: .4byte 0x0805F708
_0803853C: .4byte 0x0805F788
_08038540: .4byte 0x0805F808
_08038544:
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803855A
_08038552:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038552
_0803855A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r0, _080387D4 @ =0x08062048
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387D8 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038582
_0803857A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803857A
_08038582:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r5, _080387DC @ =gUnk_08061FC8
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387E0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080385AE
_080385A6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080385A6
_080385AE:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r7, _080387E4 @ =0x080630E8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387E0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080385D6
_080385CE:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080385CE
_080385D6:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r0, _080387E8 @ =0x08062148
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387D8 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080385FE
_080385F6:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080385F6
_080385FE:
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r5, _080387EC @ =0x08061D28
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803862A
_08038622:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038622
_0803862A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r7, _080387F4 @ =0x08061D48
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038652
_0803864A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803864A
_08038652:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r0, _080387F8 @ =0x08061D68
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803867A
_08038672:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038672
_0803867A:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r5, _080387FC @ =0x08061D88
	str r5, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080386A2
_0803869A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803869A
_080386A2:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r7, _08038800 @ =0x08061DA8
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080386CA
_080386C2:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080386C2
_080386CA:
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r0, _08038804 @ =0x0805F2E8
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387E0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080386F2
_080386EA:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080386EA
_080386F2:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r5, _08038808 @ =0x08078388
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080387F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803871A
_08038712:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038712
_0803871A:
	ldr r2, _080387D0 @ =0x040000D4
	ldr r7, _0803880C @ =0x0805F368
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803873C
_08038734:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038734
_0803873C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r0, _08038810 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387E0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _0803876A
_08038762:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _08038762
_0803876A:
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	ldr r2, _080387D0 @ =0x040000D4
	ldr r5, _08038814 @ =0x080783A8
	str r5, [r2]
	ldr r0, [r4]
	str r0, [r2, #4]
	ldr r0, _080387F0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08038792
_0803878A:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _0803878A
_08038792:
	ldr r2, _080387D0 @ =0x040000D4
	ldr r7, _08038818 @ =0x0805F408
	str r7, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _080387E0 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080387B4
_080387AC:
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	bne _080387AC
_080387B4:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r1]
	adds r0, #0x80
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080387D0: .4byte 0x040000D4
_080387D4: .4byte 0x08062048
_080387D8: .4byte 0x80000080
_080387DC: .4byte gUnk_08061FC8
_080387E0: .4byte 0x80000040
_080387E4: .4byte 0x080630E8
_080387E8: .4byte 0x08062148
_080387EC: .4byte 0x08061D28
_080387F0: .4byte 0x80000010
_080387F4: .4byte 0x08061D48
_080387F8: .4byte 0x08061D68
_080387FC: .4byte 0x08061D88
_08038800: .4byte 0x08061DA8
_08038804: .4byte 0x0805F2E8
_08038808: .4byte 0x08078388
_0803880C: .4byte 0x0805F368
_08038810: .4byte 0x0805F388
_08038814: .4byte 0x080783A8
_08038818: .4byte 0x0805F408

	thumb_func_start sub_0803881C
sub_0803881C: @ 0x0803881C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08038B7C @ =0x040000D4
	ldr r0, _08038B80 @ =0x08078308
	str r0, [r4]
	ldr r1, _08038B84 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r4, #4]
	ldr r0, _08038B88 @ =0x80000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	str r2, [sp]
	adds r6, r1, #0
	ldr r1, _08038B8C @ =0x0805ECE8
	ldr r3, _08038B90 @ =gObjVramPtr
	ldr r2, _08038B94 @ =0x08078328
	mov r8, r2
	ldr r5, _08038B98 @ =0x0805EEE8
	ldr r7, _08038B9C @ =0x0805F0E8
	ldr r2, _08038BA0 @ =0x08062CE8
	mov sl, r2
	ldr r2, _08038BA4 @ =0x08062AC8
	mov ip, r2
	ldr r2, _08038BA8 @ =gUnk_08064868
	mov sb, r2
	cmp r0, #0
	bge _0803886A
	ldr r2, [sp]
_08038862:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	bne _08038862
_0803886A:
	ldr r2, _08038B7C @ =0x040000D4
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803888A
_08038882:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038882
_0803888A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	mov r0, r8
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08038B88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080388BC
_080388B4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080388B4
_080388BC:
	ldr r2, _08038B7C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080388DC
_080388D4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080388D4
_080388DC:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803890C
_08038904:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038904
_0803890C:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038936
_0803892E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803892E
_08038936:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038960
_08038958:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038958
_08038960:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803898A
_08038982:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038982
_0803898A:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080389B4
_080389AC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080389AC
_080389B4:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r5, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080389DE
_080389D6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080389D6
_080389DE:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	ldr r0, _08038BB0 @ =0x08078348
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08038B88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038A0A
_08038A02:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038A02
_08038A0A:
	ldr r2, _08038B7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038A2A
_08038A22:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038A22
_08038A2A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038A5A
_08038A52:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038A52
_08038A5A:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038A84
_08038A7C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038A7C
_08038A84:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038AAE
_08038AA6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038AA6
_08038AAE:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038AD8
_08038AD0:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038AD0
_08038AD8:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038B02
_08038AFA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038AFA
_08038B02:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038B2C
_08038B24:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038B24
_08038B2C:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	str r7, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038BAC @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038B56
_08038B4E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038B4E
_08038B56:
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038B7C @ =0x040000D4
	ldr r0, _08038BB4 @ =0x080783C8
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08038B88 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	b _08038BB8
	.align 2, 0
_08038B7C: .4byte 0x040000D4
_08038B80: .4byte 0x08078308
_08038B84: .4byte gObjPalRamPtr
_08038B88: .4byte 0x80000010
_08038B8C: .4byte 0x0805ECE8
_08038B90: .4byte gObjVramPtr
_08038B94: .4byte 0x08078328
_08038B98: .4byte 0x0805EEE8
_08038B9C: .4byte 0x0805F0E8
_08038BA0: .4byte 0x08062CE8
_08038BA4: .4byte 0x08062AC8
_08038BA8: .4byte gUnk_08064868
_08038BAC: .4byte 0x80000100
_08038BB0: .4byte 0x08078348
_08038BB4: .4byte 0x080783C8
_08038BB8:
	bge _08038BC2
_08038BBA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038BBA
_08038BC2:
	ldr r2, _08038F0C @ =0x040000D4
	ldr r1, _08038F10 @ =0x0805F488
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F14 @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038BE4
_08038BDC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038BDC
_08038BE4:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	ldr r0, _08038F18 @ =0x08078488
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038C12
_08038C0A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038C0A
_08038C12:
	ldr r2, _08038F0C @ =0x040000D4
	ldr r1, _08038F20 @ =0x08060808
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F24 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038C34
_08038C2C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038C2C
_08038C34:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	ldr r0, _08038F20 @ =0x08060808
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F24 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038C66
_08038C5E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038C5E
_08038C66:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	ldr r0, _08038F28 @ =0x080789A8
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038C92
_08038C8A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038C8A
_08038C92:
	ldr r2, _08038F0C @ =0x040000D4
	mov r1, sl
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F24 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038CB4
_08038CAC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038CAC
_08038CB4:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F24 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038CE6
_08038CDE:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038CDE
_08038CE6:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F24 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038D12
_08038D0A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038D0A
_08038D12:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r0, sl
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F24 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038D3E
_08038D36:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038D36
_08038D3E:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038D6A
_08038D62:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038D62
_08038D6A:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r1, ip
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038D92
_08038D8A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038D8A
_08038D92:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038DBA
_08038DB2:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038DB2
_08038DBA:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r1, ip
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038DE2
_08038DDA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038DDA
_08038DE2:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038E0A
_08038E02:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038E02
_08038E0A:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r1, ip
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038E32
_08038E2A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038E2A
_08038E32:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r0, ip
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038E5A
_08038E52:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038E52
_08038E5A:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r1, ip
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038E82
_08038E7A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038E7A
_08038E82:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	ldr r0, _08038F2C @ =0x08078608
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08038F1C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038EAA
_08038EA2:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038EA2
_08038EAA:
	ldr r2, _08038F0C @ =0x040000D4
	ldr r1, _08038F30 @ =0x08062248
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F34 @ =0x80000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038ECC
_08038EC4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038EC4
_08038ECC:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08038F24 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038EFE
_08038EF6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038EF6
_08038EFE:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08038F0C @ =0x040000D4
	b _08038F38
	.align 2, 0
_08038F0C: .4byte 0x040000D4
_08038F10: .4byte 0x0805F488
_08038F14: .4byte 0x80000040
_08038F18: .4byte 0x08078488
_08038F1C: .4byte 0x80000010
_08038F20: .4byte 0x08060808
_08038F24: .4byte 0x80000100
_08038F28: .4byte 0x080789A8
_08038F2C: .4byte 0x08078608
_08038F30: .4byte 0x08062248
_08038F34: .4byte 0x80000080
_08038F38:
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038F58
_08038F50:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038F50
_08038F58:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038F84
_08038F7C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038F7C
_08038F84:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038FB0
_08038FA8:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038FA8
_08038FB0:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08038FDC
_08038FD4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08038FD4
_08038FDC:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039008
_08039000:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039000
_08039008:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039034
_0803902C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803902C
_08039034:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039060
_08039058:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039058
_08039060:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803908C
_08039084:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039084
_0803908C:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	mov r0, sb
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080390B8
_080390B0:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080390B0
_080390B8:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	ldr r0, _08039278 @ =gUnk_08064A68
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080390E4
_080390DC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080390DC
_080390E4:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	ldr r0, _08039278 @ =gUnk_08064A68
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039110
_08039108:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039108
_08039110:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	ldr r0, _0803927C @ =0x08062AE8
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039270 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803913C
_08039134:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039134
_0803913C:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	ldr r0, _08039280 @ =0x08078368
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08039284 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039168
_08039160:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039160
_08039168:
	ldr r2, _08039274 @ =0x040000D4
	ldr r1, _08039288 @ =0x0805F2E8
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0803928C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803918A
_08039182:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039182
_0803918A:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	ldr r0, _08039290 @ =0x08078388
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08039284 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080391B8
_080391B0:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080391B0
_080391B8:
	ldr r2, _08039274 @ =0x040000D4
	ldr r1, _08039294 @ =0x0805F368
	str r1, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039284 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080391DA
_080391D2:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080391D2
_080391DA:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	ldr r0, _08039298 @ =0x0805F388
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0803928C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039208
_08039200:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039200
_08039208:
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	ldr r2, _08039274 @ =0x040000D4
	ldr r1, _0803929C @ =0x080783A8
	str r1, [r2]
	ldr r0, [r6]
	str r0, [r2, #4]
	ldr r0, _08039284 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039230
_08039228:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039228
_08039230:
	ldr r2, _08039274 @ =0x040000D4
	ldr r0, _080392A0 @ =0x0805F408
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _0803928C @ =0x80000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039252
_0803924A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803924A
_08039252:
	ldr r0, [r6]
	adds r0, #0x20
	str r0, [r6]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039270: .4byte 0x80000100
_08039274: .4byte 0x040000D4
_08039278: .4byte gUnk_08064A68
_0803927C: .4byte 0x08062AE8
_08039280: .4byte 0x08078368
_08039284: .4byte 0x80000010
_08039288: .4byte 0x0805F2E8
_0803928C: .4byte 0x80000040
_08039290: .4byte 0x08078388
_08039294: .4byte 0x0805F368
_08039298: .4byte 0x0805F388
_0803929C: .4byte 0x080783A8
_080392A0: .4byte 0x0805F408

	thumb_func_start sub_080392A4
sub_080392A4: @ 0x080392A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08039610 @ =0x040000D4
	ldr r0, _08039614 @ =0x080784A8
	str r0, [r2]
	ldr r1, _08039618 @ =gObjPalRamPtr
	ldr r0, [r1]
	str r0, [r2, #4]
	ldr r0, _0803961C @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r5, #0x80
	lsls r5, r5, #0x18
	adds r4, r1, #0
	ldr r7, _08039620 @ =0x08060A08
	ldr r3, _08039624 @ =gObjVramPtr
	ldr r1, _08039628 @ =0x080784C8
	mov r8, r1
	ldr r1, _0803962C @ =0x08060A88
	mov sb, r1
	ldr r1, _08039630 @ =0x080784E8
	mov sl, r1
	ldr r1, _08039634 @ =gUnk_08189A24
	mov ip, r1
	ldr r6, _08039638 @ =gUnk_03004C20
	cmp r0, #0
	bge _080392EC
	adds r1, r5, #0
_080392E4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080392E4
_080392EC:
	ldr r1, _08039610 @ =0x040000D4
	str r7, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0803963C @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803930C
_08039304:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039304
_0803930C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	ldr r1, _08039610 @ =0x040000D4
	mov r0, r8
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0803961C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803933A
_08039332:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039332
_0803933A:
	ldr r1, _08039610 @ =0x040000D4
	mov r0, sb
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08039640 @ =0x80000300
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803935C
_08039354:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039354
_0803935C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08039610 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0803961C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803938E
_08039386:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039386
_0803938E:
	ldr r1, _08039610 @ =0x040000D4
	ldr r0, _08039644 @ =0x08061088
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08039648 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080393B0
_080393A8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080393A8
_080393B0:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08039610 @ =0x040000D4
	ldr r0, _0803964C @ =0x080789C8
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0803961C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080393E2
_080393DA:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080393DA
_080393E2:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08039610 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x60]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039650 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039420
_08039418:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039418
_08039420:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08039610 @ =0x040000D4
	ldr r0, _08039654 @ =0x080789E8
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0803961C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803944C
_08039444:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039444
_0803944C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08039610 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039648 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803948A
_08039482:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039482
_0803948A:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08039610 @ =0x040000D4
	ldr r0, _08039658 @ =0x08078328
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0803961C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080394B6
_080394AE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080394AE
_080394B6:
	ldr r1, _08039610 @ =0x040000D4
	ldr r0, _0803965C @ =0x0805EEE8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08039650 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080394D8
_080394D0:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080394D0
_080394D8:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08039610 @ =0x040000D4
	ldr r0, _08039658 @ =0x08078328
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0803961C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803950A
_08039502:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039502
_0803950A:
	ldr r1, _08039610 @ =0x040000D4
	ldr r0, _0803965C @ =0x0805EEE8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08039650 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803952C
_08039524:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039524
_0803952C:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08039610 @ =0x040000D4
	ldr r0, _08039660 @ =0x08078A28
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0803961C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803955E
_08039556:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039556
_0803955E:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _08039610 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x4c]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039648 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803959C
_08039594:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039594
_0803959C:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039610 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x54]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039650 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080395DE
_080395D6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080395D6
_080395DE:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _08039610 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x54]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _08039650 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08039664
	.align 2, 0
_08039610: .4byte 0x040000D4
_08039614: .4byte 0x080784A8
_08039618: .4byte gObjPalRamPtr
_0803961C: .4byte 0x80000010
_08039620: .4byte 0x08060A08
_08039624: .4byte gObjVramPtr
_08039628: .4byte 0x080784C8
_0803962C: .4byte 0x08060A88
_08039630: .4byte 0x080784E8
_08039634: .4byte gUnk_08189A24
_08039638: .4byte gUnk_03004C20
_0803963C: .4byte 0x80000040
_08039640: .4byte 0x80000300
_08039644: .4byte 0x08061088
_08039648: .4byte 0x80000400
_0803964C: .4byte 0x080789C8
_08039650: .4byte 0x80000100
_08039654: .4byte 0x080789E8
_08039658: .4byte 0x08078328
_0803965C: .4byte 0x0805EEE8
_08039660: .4byte 0x08078A28
_08039664:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039676
_0803966E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0803966E
_08039676:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _080398F0 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080398F4 @ =0x80000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080396B8
_080396B0:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080396B0
_080396B8:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _080398F0 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080398F8 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080396FA
_080396F2:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080396F2
_080396FA:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _080398F0 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080398F8 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803973C
_08039734:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039734
_0803973C:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r2, _080398F0 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x24]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080398F8 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0803977E
_08039776:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039776
_0803977E:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _080398F0 @ =0x040000D4
	ldr r0, _080398FC @ =0x08078A48
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08039900 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080397AA
_080397A2:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080397A2
_080397AA:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r1, _080398F0 @ =0x040000D4
	ldr r0, _08039904 @ =0x08065768
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08039900 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080397D2
_080397CA:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080397CA
_080397D2:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _080398F0 @ =0x040000D4
	ldr r0, _08039908 @ =0x08065788
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08039900 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080397FA
_080397F2:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080397F2
_080397FA:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _080398F0 @ =0x040000D4
	ldr r0, _0803990C @ =0x080657A8
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _08039900 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08039822
_0803981A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803981A
_08039822:
	ldr r0, [r3]
	adds r0, #0x20
	str r0, [r3]
	ldr r1, _080398F0 @ =0x040000D4
	ldr r0, _08039910 @ =0x08078A68
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08039900 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803984A
_08039842:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039842
_0803984A:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r2, _080398F0 @ =0x040000D4
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r6, [r6, #0xc]
	adds r0, r0, r6
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #8]
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, [r3]
	str r0, [r2, #4]
	ldr r0, _080398F8 @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08039888
_08039880:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039880
_08039888:
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _080398F0 @ =0x040000D4
	ldr r0, _08039914 @ =0x080783A8
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08039900 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080398B4
_080398AC:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080398AC
_080398B4:
	ldr r1, _080398F0 @ =0x040000D4
	ldr r0, _08039918 @ =0x0805F408
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r1, #4]
	ldr r0, _0803991C @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080398D6
_080398CE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080398CE
_080398D6:
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	ldr r0, [r3]
	adds r0, #0x80
	str r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080398F0: .4byte 0x040000D4
_080398F4: .4byte 0x80000200
_080398F8: .4byte 0x80000400
_080398FC: .4byte 0x08078A48
_08039900: .4byte 0x80000010
_08039904: .4byte 0x08065768
_08039908: .4byte 0x08065788
_0803990C: .4byte 0x080657A8
_08039910: .4byte 0x08078A68
_08039914: .4byte 0x080783A8
_08039918: .4byte 0x0805F408
_0803991C: .4byte 0x80000040

	thumb_func_start sub_08039920
sub_08039920: @ 0x08039920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08039BB0 @ =0x040000D4
	ldr r0, _08039BB4 @ =0x08077E28
	str r0, [r1]
	ldr r0, _08039BB8 @ =gObjPalRamPtr
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08039BBC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0803994E
_08039946:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039946
_0803994E:
	ldr r4, _08039BB8 @ =gObjPalRamPtr
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	movs r0, #0
	movs r1, #0
	bl sub_08025B78
	ldr r1, _08039BC0 @ =gUnk_03002920
	movs r0, #1
	strb r0, [r1, #0x10]
	ldr r1, _08039BC4 @ =gObjVramPtr
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r1, _08039BB0 @ =0x040000D4
	ldr r0, _08039BC8 @ =0x08077E48
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _08039BBC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08039992
_0803998A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0803998A
_08039992:
	ldr r3, _08039BB0 @ =0x040000D4
	ldr r2, _08039BCC @ =0x0805C6E8
	str r2, [r3]
	ldr r1, _08039BC4 @ =gObjVramPtr
	ldr r0, [r1]
	str r0, [r3, #4]
	ldr r0, _08039BD0 @ =0x80000100
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #0x18
	ldr r7, _08039BB8 @ =gObjPalRamPtr
	adds r5, r1, #0
	ldr r1, _08039BD4 @ =0x0805C8E8
	mov ip, r1
	ldr r1, _08039BD8 @ =0x0805C968
	mov r8, r1
	ldr r6, _08039BDC @ =gUnk_03004C20
	ldr r1, _08039BE0 @ =gUnk_030034F4
	mov sb, r1
	ldr r1, _08039BE4 @ =gUnk_030052AC
	mov sl, r1
	cmp r0, #0
	bge _080399CE
	adds r1, r4, #0
_080399C6:
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	bne _080399C6
_080399CE:
	ldr r0, [r7]
	adds r0, #0x20
	str r0, [r7]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BD0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _080399FE
_080399F6:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _080399F6
_080399FE:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BD0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08039A28
_08039A20:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _08039A20
_08039A28:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BD0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08039A52
_08039A4A:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _08039A4A
_08039A52:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BD0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08039A7C
_08039A74:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _08039A74
_08039A7C:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BD0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08039AA6
_08039A9E:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _08039A9E
_08039AA6:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BD0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08039AD0
_08039AC8:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _08039AC8
_08039AD0:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BD0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08039AFA
_08039AF2:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039AF2
_08039AFA:
	ldr r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	mov r0, ip
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BE8 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08039B26
_08039B1E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039B1E
_08039B26:
	ldr r0, [r5]
	adds r0, #0x80
	str r0, [r5]
	ldr r1, _08039BB0 @ =0x040000D4
	mov r2, r8
	str r2, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BE8 @ =0x80000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08039B4E
_08039B46:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039B46
_08039B4E:
	ldr r0, [r5]
	adds r0, #0x80
	str r0, [r5]
	ldrb r0, [r6, #0xc]
	cmp r0, #8
	bne _08039B5C
	b _08039C68
_08039B5C:
	ldr r0, _08039BEC @ =gUnk_03003410
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _08039C14
	ldr r1, _08039BB0 @ =0x040000D4
	ldr r0, _08039BF0 @ =0x0805C9E8
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039BF4 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08039B86
_08039B7E:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039B7E
_08039B86:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5]
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _08039B98
	b _08039CAA
_08039B98:
	ldr r0, _08039BF8 @ =gCallbackQueue
	ldr r0, [r0, #0x38]
	ldr r3, _08039BFC @ =sub_08026374
	cmp r0, r3
	bne _08039C00
	ldr r0, _08039BC0 @ =gUnk_03002920
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	b _08039CAA
	.align 2, 0
_08039BB0: .4byte 0x040000D4
_08039BB4: .4byte 0x08077E28
_08039BB8: .4byte gObjPalRamPtr
_08039BBC: .4byte 0x80000010
_08039BC0: .4byte gUnk_03002920
_08039BC4: .4byte gObjVramPtr
_08039BC8: .4byte 0x08077E48
_08039BCC: .4byte 0x0805C6E8
_08039BD0: .4byte 0x80000100
_08039BD4: .4byte 0x0805C8E8
_08039BD8: .4byte 0x0805C968
_08039BDC: .4byte gUnk_03004C20
_08039BE0: .4byte gUnk_030034F4
_08039BE4: .4byte gUnk_030052AC
_08039BE8: .4byte 0x80000040
_08039BEC: .4byte gUnk_03003410
_08039BF0: .4byte 0x0805C9E8
_08039BF4: .4byte 0x80000400
_08039BF8: .4byte gCallbackQueue
_08039BFC: .4byte sub_08026374
_08039C00:
	ldr r0, _08039C10 @ =gUnk_03002920
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	b _08039CAA
	.align 2, 0
_08039C10: .4byte gUnk_03002920
_08039C14:
	ldr r1, _08039C58 @ =0x040000D4
	ldr r0, _08039C5C @ =0x080A5888
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039C60 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r2, _08039C64 @ =gUnk_03002920
	cmp r0, #0
	bge _08039C38
_08039C30:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _08039C30
_08039C38:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x48
	strh r0, [r1]
	adds r0, #0xf2
	adds r1, r2, r0
	movs r0, #0x20
	strh r0, [r1]
	b _08039CA0
	.align 2, 0
_08039C58: .4byte 0x040000D4
_08039C5C: .4byte 0x080A5888
_08039C60: .4byte 0x80000400
_08039C64: .4byte gUnk_03002920
_08039C68:
	ldr r2, _08039D10 @ =gUnk_03002920
	movs r0, #0x9d
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x50
	strh r0, [r1]
	ldr r1, _08039D14 @ =0x040000D4
	ldr r0, _08039D18 @ =0x080A4888
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039D1C @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	cmp r0, #0
	bge _08039C96
_08039C8E:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _08039C8E
_08039C96:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5]
_08039CA0:
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_08039CAA:
	ldrb r0, [r6, #0xc]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _08039D38
	ldr r4, _08039D14 @ =0x040000D4
	ldr r3, _08039D20 @ =0x0818B800
	ldrb r2, [r6, #0xc]
	subs r2, #1
	ldrb r1, [r6, #0xd]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r0, _08039D1C @ =0x80000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	ldr r2, _08039D10 @ =gUnk_03002920
	ldr r6, _08039D24 @ =gCallbackQueue
	ldr r3, _08039D28 @ =sub_08026374
	cmp r0, #0
	bge _08039CF2
_08039CEA:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	bne _08039CEA
_08039CF2:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r6, #0x38]
	cmp r0, r3
	bne _08039D2C
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	b _08039D64
	.align 2, 0
_08039D10: .4byte gUnk_03002920
_08039D14: .4byte 0x040000D4
_08039D18: .4byte 0x080A4888
_08039D1C: .4byte 0x80000400
_08039D20: .4byte 0x0818B800
_08039D24: .4byte gCallbackQueue
_08039D28: .4byte sub_08026374
_08039D2C:
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	b _08039D64
_08039D38:
	ldr r1, _08039D80 @ =0x040000D4
	ldr r0, _08039D84 @ =0x0805D1E8
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _08039D88 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08039D5A
_08039D52:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08039D52
_08039D5A:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5]
_08039D64:
	ldr r0, [r7]
	mov r2, sb
	str r0, [r2]
	ldr r0, [r5]
	mov r1, sl
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039D80: .4byte 0x040000D4
_08039D84: .4byte 0x0805D1E8
_08039D88: .4byte 0x80000400
