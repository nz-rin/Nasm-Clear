#!/usr/bin/env bash
nasm -f elf64 clear.nasm -o clear.o
ld clear.o -o clear
