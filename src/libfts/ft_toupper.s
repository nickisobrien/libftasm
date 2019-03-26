global _ft_toupper

_ft_toupper:
prologue:
	push rbp
	mov rbp, rsp

	mov rax, rdi
	cmp rax, 0x61
	jl end
	cmp rax, 0x7a
	jg end
	add rax, -32

end:
	mov rsp, rbp
	pop rbp
	ret