global _ft_strcat

_ft_strcat:
start:
	push rdi

toend:
	cmp byte [rdi], 0x0
	je concat
	inc rdi
	jmp toend

concat:
	cmp byte [rsi], 0x0
	je end
	mov r8, [rsi]
	mov [rdi], r8
	inc rdi
	inc rsi
	jmp concat

end:
	pop rax
	ret
