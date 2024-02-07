;palindrome numbers range
include 'emu8086.inc'
mov cx,10
mov bx,10
v dw 150 
s dw 0
w dw 0
g dw 0
l:  
    inc cx 
    cmp cx,v
    je ret
    mov s,0
    mov ax,cx
    k:  mov dx,0
        div bx
        mov w,ax
        mov g,dx
        mov ax,s
        mul bx
        add ax,g
        mov s,ax
        mov ax,w
        cmp ax,0
        je che 
        jmp k
     che: cmp cx,s
            jne l
            mov ax,cx
            call print_num
            jmp l       
  ret:
define_scan_num
define_print_num
define_print_num_uns