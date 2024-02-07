data segment
    m db "enter character$"
    x db ?     
    data ends
code segment
    start:
      mov ax,data
      mov ds,ax
      lea dx,m
      mov ah,9
      int 21h 
      
      mov cx,10 
      l:
            mov ah,1
            int 21h
            mov x[si],al
            inc si
            loop l
     
        code ends
end start