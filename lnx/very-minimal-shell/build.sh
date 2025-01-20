#!/bin/bash
gcc -c -Os -fno-ident -fno-asynchronous-unwind-tables -fno-stack-protector -fomit-frame-pointer -o shell.o shell.c
as sys.S -o sys.o
ld shell.o sys.o -o init -T custom.ld --strip-all
strip --strip-section-headers init