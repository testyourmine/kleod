	.macro arm_func_start name
	.align 2, 0
	.global \name
	.arm
	.type \name, function
	.endm

	.macro arm_func_end name
	.size \name, .-\name
	.endm

	.macro thumb_func_start name
	.align 2, 0
	.global \name
	.thumb
	.thumb_func
	.type \name, function
	.endm

	.macro non_word_aligned_thumb_func_start name
	.global \name
	.thumb
	.thumb_func
	.type \name, function
	.endm

	.macro thumb_func_end name
	.size \name, .-\name
	.endm

	@ Label to signal the symbol haven't been matched yet.
	.macro nonmatching label, size=1
		.global \label\().NON_MATCHING
		.type \label\().NON_MATCHING, %object
		.size \label\().NON_MATCHING, \size
		\label\().NON_MATCHING:
	.endm
