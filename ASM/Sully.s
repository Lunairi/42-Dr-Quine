section .data
    info:   db "section .data%1$c    info:   db %2$c%3$s%2$c,0%1$c    file:   db %2$cSully_X.s%2$c,0%1$c    cmd:	db %2$cnasm -f macho64 Sully_X.s; gcc Sully_X.o -o Sully_X; ./Sully_X%2$c,0%1$c    iter:	db %4$d%1$c%1$csection .text%1$c    global _main%1$c    extern _open, _close, _dprintf, _chmod, _system%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	mov rax, [rel iter]%1$c	sub rax, 1%1$c	cmp rax, 47 ; if value is less then 0, quit%1$c	jle quitsully%1$c	mov r9, rax%1$c%1$c	lea rdi, [rel file]%1$c	add rdi, 6%1$c	stosb%1$c	lea rdi, [rel cmd]%1$c	add rdi, 22%1$c	stosb%1$c	add rdi, 14%1$c	stosb%1$c	add rdi, 12%1$c	stosb%1$c	add rdi, 10%1$c	stosb%1$c%1$c	lea rdi, [rel file]%1$c	mov rsi, 0q1101%1$c	call _open%1$c%1$c	mov r8, rax ; temp move fd to r8%1$c	lea rdi, [rel file]%1$c	mov rsi, 0q0777%1$c	call _chmod%1$c%1$c	mov rdi, r8%1$c	lea rsi, [rel info]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel info]%1$c	call _dprintf%1$c%1$c	call _close%1$c%1$c	lea rdi, [rel cmd]%1$c	call _system%1$c%1$cquitsully:%1$c    pop rbp%1$c    mov rax, 0%1$c    ret%1$c%1$c%1$c; rdi 1st %1$c; rsi 2nd%1$c; rdx 3rd%1$c; rcx 4th%1$c; rax return val%1$c%1$c%1$c",0
    file:   db "Sully_X.s",0
    cmd:	db "nasm -f macho64 Sully_X.s; gcc Sully_X.o -o Sully_X; ./Sully_X",0
    iter:	db 53

section .text
    global _main
    extern _open, _close, _dprintf, _chmod, _system

_main:
	push rbp
	mov rbp, rsp

	mov rax, [rel iter]
	sub rax, 1
	cmp rax, 47 ; if value is less then 0, quit
	jle quitsully
	mov r9, rax

	lea rdi, [rel file]
	add rdi, 6
	stosb
	lea rdi, [rel cmd]
	add rdi, 22
	stosb
	add rdi, 14
	stosb
	add rdi, 12
	stosb
	add rdi, 10
	stosb

	lea rdi, [rel file]
	mov rsi, 0q1101
	call _open

	mov r8, rax ; temp move fd to r8
	lea rdi, [rel file]
	mov rsi, 0q0777
	call _chmod

	mov rdi, r8
	lea rsi, [rel info]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel info]
	call _dprintf

	call _close

	lea rdi, [rel cmd]
	call _system

quitsully:
    pop rbp
    mov rax, 0
    ret


; rdi 1st 
; rsi 2nd
; rdx 3rd
; rcx 4th
; rax return val


