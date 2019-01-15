extern _ft_isalpha
extern _ft_isdigit

global _ft_isalnum

_ft_isalnum:
	call _ft_isalpha
	cmp rax, 0x1
	je alnum
	call _ft_isdigit
	je alnum
	jmp not_alnum

alnum:
	mov rax, 1
	ret

not_alnum:
	mov rax, 0
	ret
