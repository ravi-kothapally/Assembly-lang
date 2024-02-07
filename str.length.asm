include 'emu8086.inc'
    m db "ravan$"
    mov bx,0
    loop:
        cmp m[bx],'$'
        je ret
        inc bx
        jmp loop 
        ret:
        mov ax,bx
        call print_num
        define_print_num
        define_print_num_uns
