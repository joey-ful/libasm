section	.text
	global	_ft_strdup			; str = rdi
	extern	_malloc				; size = rdi
	extern	_ft_strlen			; str = rdi
	extern	_ft_strcpy			; dest = rdi, src = rsi
	extern	_ft_write

_ft_strdup:	call	_ft_strlen		; rax = length of str
		push	rdi
		inc	rax			; rax = length of str + 1
		mov	rdi, rax		; rdi = str len + 1
		call	_malloc			; rax = allocated area of (str len + 1)
		mov	rdi, rax		; rdi = allocated area
		pop	rsi
		call	_ft_strcpy		; copy src to dest
		ret				; return dest
