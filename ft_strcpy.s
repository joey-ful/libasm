section .text
	global	_ft_strcpy			; dest = rdi, src = rsi

_ft_strcpy:	xor	rcx, rcx
		xor	rbx, rbx
		cmp	rsi, 0
		je	_done			; if rsi(src) is null, return rdi(dest)
		jne	_copy			; if rsi not null, copy rsi to rdi

_increment:	inc	rcx

_copy:		mov	bl, BYTE [rsi + rcx]	; bl = rsi[rcx]
		mov	BYTE [rdi + rcx], bl	; rdi[rcx] = bl
		cmp	bl, 0
		jnz	_increment		; if not reach null, increment


_done:		mov	rax, rdi
		ret
