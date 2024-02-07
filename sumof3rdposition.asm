include 'emu8086.inc'
data segment
A db 1,2,3,4,5,6,7,8,9,11,12,13
X equ $-A   
data ends
code segment
    start: mov ax,data
    mov ds,ax
mov ax,x 
mov bx,3
div bx
mov cx,ax
inc cx  
mov ax,0
mov si,2
l:
    mov bl,A[si]
    add al,bl
    Add si,3 
    loop l
    call print_num
    define_print_num
    define_print_num_uns  
    code ends
end start