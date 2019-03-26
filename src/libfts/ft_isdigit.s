global _ft_isdigit

_ft_isdigit:
prologue:
	push rbp
	mov rbp, rsp

	mov rax, rdi
	cmp rax, 0x30
	jl not_digit
	cmp rax, 0x39
	jg not_digit
	jmp digit

digit:
	mov rax, 1
	jmp end

not_digit:
	mov rax, 0
	jmp end

end:
	mov rsp, rbp
	pop rbp
	ret