global _ft_memcpy

_ft_memcpy:
prologue:
	push rbp
	mov rbp, rsp

	push rdi
	mov rcx, rdx
	cld
	rep movsb ; copy from rsi to rdi till rcx is 0

end:
	pop rax
	mov rsp, rbp
	pop rbp
	ret