global _ft_memcpy

_ft_memcpy:
	push rdi
	mov rcx, rdx
	cld
	rep movsb ; copy from rsi to rdi till rcx is 0

end:
	pop rax
	ret