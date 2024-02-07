include 'emu8086.inc' 
data segment
a db "mental$"
X EQU $-a 
b db "stress$"
y Equ $-b
data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    mov bl,x
    dec bl
    mov cl,y
    l:  mov ah,B[si]
        mov a[si+bx],ah
        inc si 
        loop l
    code ends
end start