extern _ft_strlen
extern _ft_memcpy
extern _malloc

global _ft_strdup

section .text

_ft_strdup:
	push rbp ; save base pointer to stack
	mov rbp, rsp ; put previous stack pointer into base pointer

	mov rax, 0 ; reset return register to 0
	cmp rdi, 0 ; check if rdi (src) is 0
	je end ; if rdi is 0 jump to end

	push rdi ; push rdi (string passed in) onto stack
	; get length, and saves it into stack
	call _ft_strlen
	push rax ; push strlen into stack
	; prepare and call malloc
	mov rdi, rax ; put strlen as arg1 for malloc
	call _malloc
	; prepare and call memcpy
	mov rdi, rax ; mov malloc'ed pointer to rdi
	pop rdx ; pop len into rdx
	pop rsi ; pop src into rsi
	call _ft_memcpy

end:
	mov rsp, rbp ; move base pointer into stack pointer
	pop rbp ; pop into base pointer
	ret