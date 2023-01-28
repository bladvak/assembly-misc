;assembler: yasm(nasm)

section .data
lst dq 8,7,4,5,2,1
len equ $-lst

section .text
global _start
global insertionsort
global merge

_start:


exit:
mov rax, 60
mov rdi, 0
syscall

insertionsort:
;jesli len(tab[]) jest większa od 2 lub równa
; podziel na pol i wywolaj insertionsort dla każdej połowy
;w innym wypadku wywołaj merge dla tablicy

merge:; expects 3 arguments:p-rdi,q-rsi,r-rdx which are adresses of the----------MERGE------------------
      ; first, middle and last element respectively
push rbp
mov rbp, rsp ;---prologue---------
mov rax, rdx
sub rax, rdi
mov r11, 8
push rdx
cqo
div r11
pop rdx
mov r11, rax
sub rsp, r11 ;--------------------



add rsp, r11 ;---epilogue---------
pop rbp
ret          ;-----------------------------------------------------------------MERGE---------------------   