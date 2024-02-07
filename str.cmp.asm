include 'emu8086.inc'
data segment
    m db "samesh$"
    p db "ramesh$"   
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
        mov al,p[bx]
        cmp al,m[bx]
        ja ro
        print "m is big"
        hlt
        ro:
        print "p is big"
        define_print_num
        define_print_num_uns
        code ends
end start
