global _ft_isascii

_ft_isascii:
prologue:
	push rbp
	mov rbp, rsp

start:
	mov rax, rdi
	cmp rax, 0x0
	jl not_ascii
	cmp rax, 0x7f
	jg not_ascii
	jmp ascii

ascii:
	mov rax, 1
	jmp end

not_ascii:
	mov rax, 0
	jmp end

end:
	mov rsp, rbp
	pop rbp
	ret