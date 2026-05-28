	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

@  _____________________________________
@ |       HeapInit: EWRAM_START         | <- gHeapPtr starts here
@ |-------------------------------------|
@ |             Skip a few              |
@ |-------------------------------------|
@ |                                     | <- gHeapPtr is pointing to empty space 
@ |        Block size (in bytes)        | <- first we store the size of the block of new data
@ |                                     |
@ |-------------------------------------|
@ |                                     |
@ |      New block of data for use      | <- then we skip the new data block
@ |                                     |
@ |-------------------------------------|
@ |                                     |
@ |      Pointer to original space      | <- then we store the pointer to where gHeapPtr originally was
@ |                                     |
@ |-------------------------------------|
@ |                                     | <- then we repoint gHeapPtr to new empty space
@ |              And so on              |
@ |                                     |
@ |-------------------------------------|

@ When allocating, we return a pointer to the new data block
@ When freeing, we point gHeapPtr to the start of the block (block size) being freed
@ This implicitly frees all data blocks afterwards

	arm_func_start HeapInit
HeapInit: @ 0x080001D0
	@ gHeapPtr = &EWRAM_START
	mov r0, #EWRAM_START
	ldr r2, _08000260 @ =gHeapPtr
	str r0, [r2]
	bx lr

	arm_func_start HeapAlloc
HeapAlloc: @ 0x080001E0
	@ r0 = (11 + (r0 << r1)) & ~3
	mov r2, #0xb
	add r0, r2, r0, lsl r1
	bic r0, r0, #3
	@ r1 = gHeapPtr + r0
	ldr ip, _08000264 @ =gHeapPtr
	@ r2 = *gHeapPtr
	ldr r2, [ip]
	add r1, r0, r2
	@ *gHeapPtr = r0
	str r0, [r2]
	@ r1[-4] = r2
	str r2, [r1, #-4]
	@ gHeapPtr = r1
	str r1, [ip]
	@ return r2 + 4
	add r0, r2, #4
	bx lr

	arm_func_start HeapFree
HeapFree: @ 0x0800020C
	@ r3 = r0[r0[-4] - 8] (unused)
	ldr r1, [r0, #-4]
	sub r1, r1, #8
	add r2, r1, r0
	ldr r3, [r2]
	@ gHeapPtr = r0 - 4
	sub r0, r0, #4
	ldr ip, _08000268 @ =gHeapPtr
	str r0, [ip]
	bx lr

	arm_func_start HeapGetPtr
HeapGetPtr: @ 0x0800022C
	@ return *gHeapPtr
	ldr ip, _0800026C @ =gHeapPtr
	ldr r0, [ip]
	bx lr

	arm_func_start HeapGetUsed
HeapGetUsed: @ 0x08000238
	@ return *gHeapPtr - EWRAM_START
	ldr ip, _08000270 @ =gHeapPtr
	ldr r2, [ip]
	mov r1, #EWRAM_START
	sub r0, r2, r1
	bx lr

	arm_func_start HeapGetFree
HeapGetFree: @ 0x0800024C
	@ return EWRAM_END - *gHeapPtr
	ldr ip, _08000274 @ =gHeapPtr
	ldr r2, [ip]
	mov r1, #EWRAM_END
	sub r0, r1, r2
	bx lr

	.align 2, 0
_08000260: .4byte gHeapPtr
_08000264: .4byte gHeapPtr
_08000268: .4byte gHeapPtr
_0800026C: .4byte gHeapPtr
_08000270: .4byte gHeapPtr
_08000274: .4byte gHeapPtr
