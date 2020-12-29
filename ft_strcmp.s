section	.text
	global	_ft_strcmp			; str1 = rdi, str2 = rsi

_ft_strcmp:	xor	rax, rax
		xor	rbx, rbx
		xor	rcx, rcx
		jmp	_compare

_compare:	mov	al, BYTE [rdi + rcx]	; al: low 8 bits in rax
		mov	bl, BYTE [rsi + rcx]	; bl: low 8 bits in rbx
		cmp 	al, bl
		jne	_different		; jump if not equal
		je	_same			; jump if equal

_different:	sub	rax, rbx		; rax - rbx (rdi's char - rsi's char)
		jl	_negative		; jump if rax is less
		mov	rax, 1
		ret

_negative	mov	rax, -1
		ret

_same:		cmp	al, 0			; if char is null
		je	_done			; jump to done
		inc	rcx			; if not null
		jmp	_compare		; keep comparing

_done:		mov	rax, 0			; same until str reached null
		ret				; str1 = str2 so return 0
