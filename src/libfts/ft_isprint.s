global _ft_isprint

_ft_isprint:
start:
	mov rax, rdi
	cmp rax, 0x20
	jl not_print
	cmp rax, 0x7e
	jg not_print
	jmp print

print:
	mov rax, 1
	ret

not_print:
	mov rax, 0
	ret
