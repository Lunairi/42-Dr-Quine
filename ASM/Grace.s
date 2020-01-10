%define SRC "%4$cdefine SRC %2$c%3$s%2$c%1$c%4$cdefine FILE %2$cGrace_kid.s%2$c%1$c%4$cdefine START _main:%1$c%1$c%4$cmacro begin 0%1$c	section .data%1$c		info:	db SRC,0%1$c		file:	db FILE,0%1$c%1$c	section .text%1$c		global _main%1$c		extern _open, _close, _dprintf, _chmod%1$c%1$c	START%1$c		push rbp%1$c		mov rbp, rsp%1$c%1$c		lea rdi, [rel file]%1$c		mov rsi, 0q1101%1$c		call _open%1$c%1$c		mov r8, rax ; temp move fd to r8%1$c		lea rdi, [rel file]%1$c		mov rsi, 0q0777%1$c		call _chmod%1$c%1$c		mov rdi, r8%1$c		lea rsi, [rel info]%1$c		mov rdx, 10%1$c		mov rcx, 34%1$c		lea r8, [rel info]%1$c		mov r9, 37%1$c		call _dprintf%1$c%1$c		call _close%1$c%1$c		pop rbp%1$c		mov rax, 1%1$c		ret%1$c%4$cendmacro%1$c%1$cbegin%1$c"
%define FILE "Grace_kid.s"
%define START _main:

%macro begin 0
	section .data
		info:	db SRC,0
		file:	db FILE,0

	section .text
		global _main
		extern _open, _close, _dprintf, _chmod

	START
		push rbp
		mov rbp, rsp

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
		mov r9, 37
		call _dprintf

		call _close

		pop rbp
		mov rax, 1
		ret
%endmacro

begin
