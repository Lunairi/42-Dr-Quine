; ASM Colleen

section .data
	fmt:	db "; ASM Colleen%1$c%1$csection .data%1$c	fmt:	db %2$c%3$s%2$c,0%1$c%1$csection .text%1$c	global _main%1$c	extern _printf%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	lea rdi, [rel fmt]%1$c	mov rsi, 10 ; newline%1$c	mov rdx, 34 ; quotes%1$c	lea rcx, [rel fmt]%1$c	call _printf%1$c	pop rbp%1$c	mov rax, 0%1$c	ret%1$c",0

section .text
	global _main
	extern _printf

_main:
	push rbp
	mov rbp, rsp
	lea rdi, [rel fmt]
	mov rsi, 10 ; newline
	mov rdx, 34 ; quotes
	lea rcx, [rel fmt]
	call _printf
	pop rbp
	mov rax, 0
	ret
