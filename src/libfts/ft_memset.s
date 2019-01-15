global _ft_memset

_ft_memset:
init:
	mov rax, rdx
	mov dl, sil
	jmp loop

loop:
	cmp rax, 0x0
	je end
	mov byte [rdi], dl
	inc rdi
	dec rax
	jmp loop

end:
	ret
