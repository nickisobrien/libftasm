global _ft_memcpy

_ft_memcpy:
init:
	mov rax, rdx
	jmp loop

loop:
	cmp rax, 0x0
	je end
	mov cl, byte [rsi]
	mov byte [rdi], cl
	inc rdi
	inc rsi
	dec rax
	jmp loop

end:
	ret