extern _ft_memset

global _ft_bzero

_ft_bzero:
prologue:
	push rbp
	mov rbp, rsp

start:
	mov rdx, rsi
	mov rsi, 0
	call _ft_memset
end:
	mov rsp, rbp
	pop rbp
	ret