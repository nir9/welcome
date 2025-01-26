; This uses the nasm assembler.

; Anything containing "NOTE" can be replaced with arbitrary content. The Linux
; kernel currently ignores it, but this may change in the future. May cause
; QEMU to fail to run this if run via qemu-x86_64.

bits 64
org 0x100000

db 0x7F, "ELF"			; Magic
db 2				; 64-bit, necessary due to the x32 ABI
db 1				; Little endian, NOTE
db 1				; ELF v1, NOTE
db 3				; Linux, NOTE
;db 0				; Stable ABI, NOTE
;times 7 db 0			; Padding, NOTE
exit:
	xor rax, rax
	mov al, 60
	xor rdi, rdi
	syscall

dw 2				; Executable
dw 0x3E				; x86_64
dd 1				; ELF v1, NOTE
dq _start			; The entry point
dq program_table-$$		; The start of the program header table
;dq 0				; The start of the section header table, NOTE
_start:
loop:
	xor rax, rax
	inc rax
	mov rdi, rax
	xor rdx, rdx
	mov dl, prompt_size
	jmp short loop_2
prompt:
	db "# "
prompt_size equ $-prompt
;dd 0				; x86_64-specific flags, NOTE
;dw 64				; ELF header size, NOTE
dw 56				; Entry header size
;dw 1				; 1 program header
;dw 64				; Section header size, NOTE
;dw 0				; 0 section headers
;dw 0				; Section header section name index, NOTE

program_table:
dd 1				; Loadable
dd 7				; RWX, only the lower 3 bits matter
dq 0				; File offset
dq $$				; Virtual memory offset
dq $$				; Physical memory offset, NOTE
dq _end-$$			; Size in file
dq _bss_end-$$			; Size in memory
;dq 0				; Alignment, NOTE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

loop_2:

	mov rsi, prompt
	syscall
				; ignore error
	xor rax, rax		; read
	xor rdi, rdi
	mov rsi, command_buffer
	xor rdx, rdx
	mov dl, 255
	syscall
				; ignore error, may segfault!
	mov byte [command_buffer + rax - 1], 0

	xor rax, rax
	mov al, 57		; fork
	syscall
				; ignore error
	and rax, rax
	jnz .wait

	xor rax, rax
	mov al, 59		; execve
	mov rdi, command_buffer
	xor rsi, rsi
	xor rdx, rdx
	syscall
				; ignore error
	jmp exit

.wait:
	xor rax, rax
	mov al, 247
	xor rdi, rdi		; P_ALL
	xor rsi, rsi
	mov rdx, siginfo_buffer
	xor r10d, r10d
	mov r10b, 4		; WEXITED
	xor r8d, r8d
	syscall
				; ignore error
	jmp loop




_end:

section .bss
	resb 1			; Buffer underflow protection
command_buffer:
	resb 255
siginfo_buffer:
	resb 512		; As long as it isn't too big.


_bss_end:
