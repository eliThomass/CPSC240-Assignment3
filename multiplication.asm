section .data
	EXIT 			equ 	60
	EXIT_SUCCESS 	equ 	0
	num1 			dd 		300000
	num2 			dd 		400000
	product 		dq		 0
section .text
	global _start
_start:
	mov eax, dword[num1]		; add num1 to eax
	mul dword[num2]				; multiply eax by num2, results in edx:eax
	mov dword[product+4], edx	; add edx (top 32 bits of product) to product																										
	mov dword[product], eax		; add eax (lower 32 bits of product) to product
	
	mov rax, EXIT
	mov rdi, EXIT_SUCCESS
	
