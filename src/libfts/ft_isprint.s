global _ft_isprint

_ft_isprint:
prologue:
	push rbp
	mov rbp, rsp

start:
	mov rax, rdi
	cmp rax, 0x20
	jl not_print
	cmp rax, 0x7e
	jg not_print
	jmp print

print:
	mov rax, 1
	jmp end

not_print:
	mov rax, 0
	jmp end

end:
	mov rsp, rbp
	pop rbp
	ret
