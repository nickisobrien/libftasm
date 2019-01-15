global _ft_isalpha

_ft_isalpha:
start:
	mov rax, rdi
	cmp rax, 0x61
	jl checkupper
	cmp rax, 0x7a
	jg not_alpha
	jmp alpha

checkupper:
	cmp rax, 0x41
	jl not_alpha
	cmp rax, 0x5a
	jg not_alpha
	jmp alpha
	
alpha:
	mov rax, 1
	ret

not_alpha:
	mov rax, 0
	ret