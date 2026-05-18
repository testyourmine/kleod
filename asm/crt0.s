	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

    arm_func_start __start
__start: @ 0x08000000
	b Init

    .include "asm/rom_header.inc"

	arm_func_start Init
Init: @ 0x080000C0
	mov r0, #PSR_IRQ_MODE
	msr cpsr_fc, r0
	ldr sp, sp_irq
	mov r0, #PSR_SYS_MODE
	msr cpsr_fc, r0
	ldr sp, sp_sys
	ldr r1, =INTR_VECTOR
	adr r0, IntrMain
	str r0, [r1]
	ldr r1, =AgbMain
	mov lr, pc
	bx r1
	b Init

	.align 2, 0
sp_sys: .4byte IWRAM_END - 0x300
sp_irq: .4byte IWRAM_END - 0x60

	arm_func_start IntrMain
IntrMain: @ 0x080000FC
	mov r3, #REG_BASE
	add r3, r3, #OFFSET_REG_IE
	ldr r2, [r3, #OFFSET_REG_IE - OFFSET_REG_IE]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #INTR_FLAG_VBLANK
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_HBLANK
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_VCOUNT
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER0
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER1
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER2
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER3
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_SERIAL
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA0
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA1
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA2
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA3
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_KEYPAD
	bne IntrMain_FoundIntr
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_GAMEPAK
IntrMain_FoundIntr:
	strh r0, [r3, #OFFSET_REG_IF - OFFSET_REG_IE]
	ldr r1, =gIntrTable
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0

	.pool

	.align 2, 0 @ Don't pad with nop.
