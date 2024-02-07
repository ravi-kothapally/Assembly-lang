include 'emu8086.inc' 
v dw 0
print "n1:"
call scan_num
mov v,cx
print "n2:"
call scan_num 
loop:
    inc v  
    mov bx,2
    l:  mov ax,v
        cmp ax,1
        je loop
        cmp ax,2
        je e
        mov dx,0
        div bx
        cmp dx,0 
        je p
        inc bx
        cmp bx,v
          jne l
          mov ax,v
          call print_num
          print " " 
          jmp p
        e:call print_num 
   p: cmp v,cx
    je ret
    jmp loop
 ret:
 define_scan_num
 define_print_num
 define_print_num_uns 