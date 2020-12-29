section .text
	global	_ft_read			; fd = rdi, buf = rsi, bytes = rdx
	extern	___error			; ___error is extertnal

_ft_read:	mov	rax, 0x2000003		; UNIX system call class: #2, read: #3
		syscall
		jc	_set_errno		; if error, carry flag = 1, rax = error number
		ret

_set_errno:	push	rax			; save error number to stack
		call	___error		; returns errno's address(int*)
		pop	rbx			; rbx = error number
		mov	[rax], rbx		; save error number to errno
		mov	rax, -1
		ret
