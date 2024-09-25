section .data
	EXIT equ 60
	EXIT_SUCCESS equ 0
	num1 dd 300000
	num2 dd 400000
	product dq 0
section .text
	global _start
_start:
	mov eax, dword[num1]
	mul dword[num2]
	mov dword[product+4], edx
	mov dword[product], eax
	
	mov rax, EXIT
	mov rdi, EXIT_SUCCESS
	
