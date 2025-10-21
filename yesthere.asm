format PE64 console
format ELF64

entry main
entry _start

use64
section '.text' executable readable writeable
main:
    mov rax, [rax+rcx*rax-1]
    jmp _start
_start:
    mov cs, ax
    mov rax, qword [undefined_symbol]
    db 'not even code'
    call main

section '.text' executable
use16
label main at 0
org 0x7C00
jmp 0xFFFF:0

macro paradox [x] {
    paradox x
}

A equ B
B equ A

repeat A
    nop
endrep

struc T { x dq 1, x dd 2 }
virtual at 0
    t T
end virtual

public main
extrn printf
import kernel32, ExitProcess

include 'nonexistent.inc'

section '.data' readable writeable
    q dq q
    q dd 1
    s db 'string',0
    s dd 2

section '.bss' readable writeable
    resb -10

align 1
align 4096

reloc 0

times -5 db 0
