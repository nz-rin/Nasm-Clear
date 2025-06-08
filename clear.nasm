[BITS 64]
section .text
clear_code:
	db 27, "[2J", 27, "[H"
code_len:
	dq $-clear_code

global _start
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, clear_code
	mov rdx, [code_len]
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
