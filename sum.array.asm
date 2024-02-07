data segment
    Array db 1,2,3,4,5,6
    
    data ends
code segment
    start: 
    mov ax,data
    mov ds,ax
    lea si,Array
    mov ax,0
    mov cx,0
    loop:
        
         cmp cx,6
         je ret
         mov si,cx
         mov bx,[si]
         add ax,bx 
         inc cx
         jmp loop
         ret:
         hlt        
         
    code ends
    
  end start