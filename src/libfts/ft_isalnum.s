extern _ft_isalpha
extern _ft_isdigit

global _ft_isalnum

_ft_isalnum:

prologue:
	push rbp
	mov rbp, rsp

	call _ft_isalpha
	cmp rax, 0x1
	je alnum
	call _ft_isdigit
	cmp rax, 0x1
	je alnum
	jmp not_alnum

alnum:
	mov rax, 1
	jmp end

not_alnum:
	mov rax, 0
	jmp end

end:
	mov rsp, rbp
	pop rbp
	ret