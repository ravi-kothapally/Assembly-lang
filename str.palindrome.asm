include 'emu8086.inc'
data segment
    m db "abcba$"  
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
            print "palindrome" 
            hlt
         ret:
         print "not "
      
        define_print_num
        define_print_num_uns
        code ends
end start
