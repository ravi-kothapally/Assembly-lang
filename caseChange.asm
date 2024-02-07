;case conversion
include 'emu8086.inc'
data segment 
    B db 'RAVAN$'
    A db 'ravan$'
    D 26 dup(0)
    c dw 5
    data ends
code segment
     start:
    mov ax,data
    mov ds,ax
    mov cx,5
    l:
        mov al,A[si]
        sub al,32
        mov A[si],al
        mov al,B[si]
        add al,32
        mov B[si],al
        inc si
        loop l 
        print "B:"
    mov ah,9
    int 21h 
    print " A:"
    lea dx,A
    int 21h
        code ends
end start
        