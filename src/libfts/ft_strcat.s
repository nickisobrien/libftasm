global _ft_strcat

_ft_strcat:
start:
	cmp byte [rdi], 0
	je append
	inc rdi
	jmp start

append:
	cmp byte [rsi], 0
	je end
	mov al, byte [rsi]
	mov byte [rdi], al
	inc rdi
	inc rsi
	jmp append

end:
	mov byte [rdi], 0
	ret
