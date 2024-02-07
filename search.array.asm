data segment
    Array db 1,2,3,4,5,6
    data ends
code segment
    start:
   
    include 'emu8086.inc'
    mov ax,data
    mov ds,ax
    lea si,Array
    mov ax,0
    mov dx,0
    print "n1"
    call scan_num 
    loop:
        
         cmp dx,6
         je ret
         mov si,dx
         mov bx,[si]
         mov bh,00
         cmp bx,cx
         je r 
         inc dx
         jmp loop
         r:
         print " found"
         hlt
         ret:  
         print "not found"
         hlt
         define_scan_num
         define_print_num
         define_print_num_uns        
         
    code ends
    
  end start