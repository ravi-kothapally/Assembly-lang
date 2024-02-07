include 'emu8086.inc'
data segment
    A db 0,1,0,0,0,0,0,0,0
    data ends
code segment
    start:   
    mov ax,data
    mov ds,ax
    print "terms :"
    call scan_num 
    mov bx,cx
    dec cx
  
    mov di,0
    l:
        mov al,A[di]
        add al,A[di+1]
        mov A[di+2],al
        inc di
          loop l
    mov di,0
    mov cx,bx
          
    k:
        mov ah,00
        mov al,A[di] 
        print " "
        call print_num 
        inc di
        loop k
         
    
    define_scan_num
    define_print_num
    define_print_num_uns
    code ends
end start


    