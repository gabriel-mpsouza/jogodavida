	.text
	.file	"jogo-da-vida.out"
	.globl	printGrid                       # -- Começa a função printGrid
	.p2align	4, 0x90
	.type	printGrid,@function
printGrid:                              # @printGrid
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>Este Cabeçalho do Loop: Profundidade=1
                                        #     Loop Filho BB0_3 Profundidade 2
	cmpl	$20, -12(%rbp)
	jge	.LBB0_11
# %bb.2:                                #   no Loop: Cabeçalho=BB0_1 Profundidade=1
	movl	$0, -16(%rbp)
.LBB0_3:                                #   Loop Pai BB0_1 Profundidade=1
                                        # =>  Este Cabeçalho do Loop Interno: Profundidade=2
	cmpl	$40, -16(%rbp)
	jge	.LBB0_9
# %bb.4:                                #   no Loop: Cabeçalho=BB0_3 Profundidade=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB0_6
# %bb.5:                                #   no Loop: Cabeçalho=BB0_3 Profundidade=2
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	jmp	.LBB0_7
.LBB0_6:                                #   no Loop: Cabeçalho=BB0_3 Profundidade=2
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
.LBB0_7:                                #   no Loop: Cabeçalho=BB0_3 Profundidade=2
	jmp	.LBB0_8
.LBB0_8:                                #   no Loop: Cabeçalho=BB0_3 Profundidade=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_9:                                #   no Loop: Cabeçalho=BB0_1 Profundidade=1
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
# %bb.10:                               #   no Loop: Cabeçalho=BB0_1 Profundidade=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_11:
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	printGrid, .Lfunc_end0-printGrid
	.cfi_endproc
                                        # -- Fim da função
	.globl	countNeighbors                  # -- Começa a função countNeighbors
	.p2align	4, 0x90
	.type	countNeighbors,@function
countNeighbors:                         # @countNeighbors
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$-1, -24(%rbp)
.LBB1_1:                                # =>Este Cabeçalho do Loop: Profundidade=1
                                        #     Loop Filho BB1_3 Profundidade 2
	cmpl	$1, -24(%rbp)
	jg	.LBB1_8
# %bb.2:                                #   no Loop: Cabeçalho=BB1_1 Profundidade=1
	movl	$-1, -28(%rbp)
.LBB1_3:                                #   Loop Pai BB1_1 Profundidade=1
                                        # =>  Este Cabeçalho do Loop Interno: Profundidade=2
	cmpl	$1, -28(%rbp)
	jg	.LBB1_6
# %bb.4:                                #   no Loop: Cabeçalho=BB1_3 Profundidade=2
	movl	-12(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$20, %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -32(%rbp)
	movl	-16(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$40, %eax
	movl	$40, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -36(%rbp)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
# %bb.5:                                #   no Loop: Cabeçalho=BB1_3 Profundidade=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                #   no Loop: Cabeçalho=BB1_1 Profundidade=1
	jmp	.LBB1_7
.LBB1_7:                                #   no Loop: Cabeçalho=BB1_1 Profundidade=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_8:
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movl	-20(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	countNeighbors, .Lfunc_end1-countNeighbors
	.cfi_endproc
                                        # -- Fim da função
	.globl	updateGrid                      # -- Começa a função updateGrid
	.p2align	4, 0x90
	.type	updateGrid,@function
updateGrid:                             # @updateGrid
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$3248, %rsp                     # imm = 0xCB0
	movq	%rdi, -8(%rbp)
	movl	$0, -3220(%rbp)
.LBB2_1:                                # =>Este Cabeçalho do Loop: Profundidade=1
                                        #     Loop Filho BB2_3 Profundidade 2
	cmpl	$20, -3220(%rbp)
	jge	.LBB2_18
# %bb.2:                                #   no Loop: Cabeçalho=BB2_1 Profundidade=1
	movl	$0, -3224(%rbp)
.LBB2_3:                                #   Loop Pai BB2_1 Profundidade=1
                                        # =>  Este Cabeçalho do Loop Interno: Profundidade=2
	cmpl	$40, -3224(%rbp)
	jge	.LBB2_16
# %bb.4:                                #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	movq	-8(%rbp), %rdi
	movl	-3220(%rbp), %esi
	movl	-3224(%rbp), %edx
	callq	countNeighbors
	movl	%eax, -3228(%rbp)
	movq	-8(%rbp), %rax
	movslq	-3220(%rbp), %rcx
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-3224(%rbp), %rcx
	cmpl	$1, (%rax,%rcx,4)
	jne	.LBB2_10
# %bb.5:                                #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	cmpl	$2, -3228(%rbp)
	jl	.LBB2_7
# %bb.6:                                #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	cmpl	$3, -3228(%rbp)
	jle	.LBB2_8
.LBB2_7:                                #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	movslq	-3220(%rbp), %rcx
	leaq	-3216(%rbp), %rax
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-3224(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	jmp	.LBB2_9
.LBB2_8:                                #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	movslq	-3220(%rbp), %rcx
	leaq	-3216(%rbp), %rax
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-3224(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
.LBB2_9:                                #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	jmp	.LBB2_14
.LBB2_10:                               #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	cmpl	$3, -3228(%rbp)
	jne	.LBB2_12
# %bb.11:                               #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	movslq	-3220(%rbp), %rcx
	leaq	-3216(%rbp), %rax
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-3224(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
	jmp	.LBB2_13
.LBB2_12:                               #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	movslq	-3220(%rbp), %rcx
	leaq	-3216(%rbp), %rax
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-3224(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
.LBB2_13:                               #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	jmp	.LBB2_14
.LBB2_14:                               #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	jmp	.LBB2_15
.LBB2_15:                               #   no Loop: Cabeçalho=BB2_3 Profundidade=2
	movl	-3224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3224(%rbp)
	jmp	.LBB2_3
.LBB2_16:                               #   no Loop: Cabeçalho=BB2_1 Profundidade=1
	jmp	.LBB2_17
.LBB2_17:                               #   no Loop: Cabeçalho=BB2_1 Profundidade=1
	movl	-3220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3220(%rbp)
	jmp	.LBB2_1
.LBB2_18:
	movl	$0, -3232(%rbp)
.LBB2_19:                               # =>Este Cabeçalho do Loop: Profundidade=1
                                        #     Loop Filho BB2_21 Profundidade 2
	cmpl	$20, -3232(%rbp)
	jge	.LBB2_26
# %bb.20:                               #   no Loop: Cabeçalho=BB2_19 Profundidade=1
	movl	$0, -3236(%rbp)
.LBB2_21:                               #   Loop Pai BB2_19 Profundidade=1
                                        # =>  Este Cabeçalho do Loop Interno: Profundidade=2
	cmpl	$40, -3236(%rbp)
	jge	.LBB2_24
# %bb.22:                               #   no Loop: Cabeçalho=BB2_21 Profundidade=2
	movslq	-3232(%rbp), %rcx
	leaq	-3216(%rbp), %rax
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-3236(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-3232(%rbp), %rcx
	imulq	$160, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-3236(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.23:                               #   no Loop: Cabeçalho=BB2_21 Profundidade=2
	movl	-3236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3236(%rbp)
	jmp	.LBB2_21
.LBB2_24:                               #   no Loop: Cabeçalho=BB2_19 Profundidade=1
	jmp	.LBB2_25
.LBB2_25:                               #   no Loop: Cabeçalho=BB2_19 Profundidade=1
	movl	-3232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3232(%rbp)
	jmp	.LBB2_19
.LBB2_26:
	addq	$3248, %rsp                     # imm = 0xCB0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	updateGrid, .Lfunc_end2-updateGrid
	.cfi_endproc
                                        # -- Fim da função
	.globl	main                            # -- Começa a função main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$3216, %rsp                     # imm = 0xC90
	movl	$0, -4(%rbp)
	leaq	-3216(%rbp), %rdi
	xorl	%esi, %esi
	movl	$3200, %edx                     # imm = 0xC80
	callq	memset@PLT
	movl	$1, -2396(%rbp)
	movl	$1, -2392(%rbp)
	movl	$1, -2388(%rbp)
	movl	$1, -2228(%rbp)
	movl	$1, -2072(%rbp)
.LBB3_1:                                # =>Este Cabeçalho do Loop Interno: Profundidade=1
	leaq	-3216(%rbp), %rdi
	callq	printGrid
	leaq	-3216(%rbp), %rdi
	callq	updateGrid
	movl	$100000, %edi                   # imm = 0x186A0
	callq	usleep
	movabsq	$.L.str.3, %rdi
	callq	system
	jmp	.LBB3_1
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- Fim da função
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"O"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"clear"
	.size	.L.str.3, 6

	.ident	"clang version 17.0.6 (Fedora 17.0.6-2.fc39)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printGrid
	.addrsig_sym printf
	.addrsig_sym countNeighbors
	.addrsig_sym updateGrid
	.addrsig_sym usleep
	.addrsig_sym system
