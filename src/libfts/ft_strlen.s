global _ft_strlen

_ft_strlen:
init:
	mov rax, 0

start:
	cmp byte [rdi], 0
	je end
	inc rax
	inc rdi
	jmp start

end:
	ret
