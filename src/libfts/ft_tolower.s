global _ft_tolower

_ft_tolower:
prologue:
	push rbp
	mov rbp, rsp

	mov rax, rdi
	cmp rax, 0x41
	jl end
	cmp rax, 0x5a
	jg end
	add rax, 32

end:
	mov rsp, rbp
	pop rbp
	ret