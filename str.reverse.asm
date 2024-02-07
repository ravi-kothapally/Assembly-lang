include 'emu8086.inc'
data segment
    m db "ravan$"   
    data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    mov bx,0
    loop:
        cmp m[bx],'$'
        je r
        cmp p[bx],'$'
        je ret 
        mov al,m[bx]
        cmp al,p[bx]
        jne ret
        inc bx
        jmp loop
        r:
            cmp p[bx],'$'
            jne ret
            print "same"
            hlt
        ret:
        print "not same"
        define_print_num
        define_print_num_uns
        code ends
end start
