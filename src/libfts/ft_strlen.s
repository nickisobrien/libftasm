global _ft_strlen

_ft_strlen:
prologue:
	push rbp
	mov rbp, rsp

init:
	mov rax, 0

start:
	cmp byte [rdi+rax], 0
	je end
	inc rax
	jmp start

end:
	mov rsp, rbp
	pop rbp
	ret
