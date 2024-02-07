data segment
    c db 0,0,0
    A db 1,2,3
    B db 1,2,3
    data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    lea si,A
    lea di,c
    
    mov di,0 
    mov al,5
    stosb
    mov di,1
    mov al,6
    stosb
    