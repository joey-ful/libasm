section	.text
	global	_ft_strlen			; str = rdi

_ft_strlen:	xor	rax, rax		; rax XOR rax = 0 => init rax to 0
		jmp	_compare

_increment:	inc	rax			; rax++

_compare:	cmp	BYTE [rdi + rax], 0	; check if char where rdi+rax points to is null
		jne	_increment		; if not equal to null, jump

_done:		ret				; if equal to null = if reached null character
