include 'emu8086.inc'
data segment
    m db "abcba$"
    X equ $-m  
    data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    mov bx,0
    loop:
        cmp m[bx],'$'
        je n
        inc bx
        jmp loop
        n:  
        mov cx,bx
        dec bx
        o:
            mov al,m[si]
            cmp al,m[bx]
            jne ret
            inc si
            dec bx
            loop o
            mov ah,0
            mov al,x
            mov bx,2
            div bx
            cmp dx,0
            je op
           
            print "even palindrome" 
            hlt
            op:print "odd palindrome"
            hlt
         ret:
         print "not "
      
        define_print_num
        define_print_num_uns
        code ends
end start
