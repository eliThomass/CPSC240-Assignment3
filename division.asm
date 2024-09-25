section .data
	EXIT equ 60
	EXIT_SUCCESS equ 0
	num1 dq 50000000000
	num2 dd 3333333
	quotient dd 0
	remainder dd 0
section .text
	global _start
_start:
	mov rax, qword[num1]
	cqo
	div qword[num2]
	mov qword[quotient], rax
	mov qword[remainder], rdx
	
	mov rax, EXIT
	mov rdi, EXIT_SUCCESS
