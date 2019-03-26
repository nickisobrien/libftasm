global _ft_puts

_ft_puts:
prologue:
	push rbp
	mov rbp, rsp

end:
	mov rax, 0 ; successful
	mov rsp, rbp
	pop rbp
	ret