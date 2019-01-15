global _ft_isascii

_ft_isascii:
start:
	mov rax, rdi
	cmp rax, 0x0
	jl not_ascii
	cmp rax, 0x7f
	jg not_ascii
	jmp ascii

ascii:
	mov rax, 1
	ret

not_ascii:
	mov rax, 0
	ret
