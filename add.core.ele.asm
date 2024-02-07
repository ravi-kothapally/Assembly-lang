data segment
    C db 0,0,0,0,0,0
    A db 1,2,3,4,5,6
    B db 1,2,3,4,5,6
    data ends
code segment
    start:
    include 'emu8086.inc'
    mov ax,data
    mov ds,ax
    lea si,A
    lea bx,B
    lea di,C
    mov ax,0
    mov dx,0 
    loop:
         cmp dx,6
         je ret
         mov si,dx
         mov di,dx
         mov bx,dx
         mov cx,[si]
         mov ax,[bx]
         add al,cl
         mov ah,0
         stosb
         print "     "
         call print_num
         inc dx
         jmp loop
        
         ret:
         gotoxy 0,1
         mov dx,0 
         lp:
         cmp dx,6
         je t 
         mov di,dx
         mov ax,[di]
         print "     "
         call print_num
         mov di,dx
         inc dx
         jmp lp
        t: hlt
         define_scan_num
         define_print_num
         define_print_num_uns        
         
    code ends
    
  end start