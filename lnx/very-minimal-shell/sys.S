
        .intel_syntax noprefix

        .global sys_execve
        .global sys_exit
        .global sys_fork
        .global sys_read
        .global sys_waitid
        .global sys_write

sys_execve:
        mov rax, 59
        syscall
        ret

sys_exit:
        mov rax, 60
        syscall

sys_fork:
        mov rax, 57
        syscall
        ret

sys_read:
        mov rax, 0
        syscall
        ret

sys_waitid:
        mov rax, 247
        mov r10, rcx
        syscall
        ret

sys_write:
        mov rax, 1
        syscall
        ret
