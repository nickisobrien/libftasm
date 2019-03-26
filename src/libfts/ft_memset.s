global _ft_memset

section .text

_ft_memset:
prologue:
	push rbp
	mov rbp, rsp

	push rdi ; dest pushed
	mov rax, rsi ; character moved to rax
	mov rcx, rdx ; length moved to rcx
	cld ; clear direction flag
	rep stosb ; repeat till rcx = 0 Store AL (8 bits of rax (the character we're using)) at address ES:(R)DI

end:
	pop rax ; return value
	mov rsp, rbp
	pop rbp
	ret
