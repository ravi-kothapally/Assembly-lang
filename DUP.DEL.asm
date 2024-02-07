include 'emu8086.inc'
data segment
    A db 1,1,2,2,3,3,4,5,6,7,5
    x equ $-A
    b db 10 dup(?)
    c dw 0
    data ends
code segment
    start:mov ax,data
          mov ds,ax
          mov si,-1
          l:  cmp si,x
              je ret
              inc si
              mov di,-1
               k:   inc di
                    cmp di,c
                    je p
                    mov al,a[si]
                    cmp al,b[di]
                    je l
                    jmp k
               p:  mov al,a[si]
                   mov b[di],al
                   inc c
                   jmp l
                   ret:
                   mov cx,c 
                   mov si,0
                   mov ah,0
               o:
                     mov al,b[si]
                     inc si
                     call print_num 
                     loop o 
                     hlt
               op:  mov ah,0
                    call print_num
                    print " "
                    jmp l
                     define_print_num
                     define_print_num_uns
          code ends
end start
          l
          
    