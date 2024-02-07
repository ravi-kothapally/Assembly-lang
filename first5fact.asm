include 'emu8086.inc'
data segment
    A db 0,0,0,0,0 
    data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    mov cx,5 
    mov al,1
    l:mov ah,0      
    inc si
            mul si
            add A[si-1],al
            loop l
    mov cx,5
    mov si,0
    p:
        mov al,a[si] 
        call print_num
        print " "  
        inc si   
        loop p
        define_print_num
        define_print_num_uns       
    code ends
end start          