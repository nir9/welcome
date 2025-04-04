#!/bin/bash

gcc -c -Os -Wall -Werror -fno-ident -fno-asynchronous-unwind-tables -fomit-frame-pointer -o shell.o shell.c
as  -o sys.o sys.S
ld --strip-all -z noexecstack -z nodefaultlib -T custom.ld -o init shell.o sys.o
