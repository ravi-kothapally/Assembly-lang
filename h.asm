data segment
    Array db 1,2,3
    data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    lea di,Array
    mov al,12h
    mov cx,5
    stosb
    ret