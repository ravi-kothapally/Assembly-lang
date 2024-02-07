include 'emu8086.inc'
data segment
    a db '$'
    f db 0
    s db "fuck off$"
   data ends
   
code segment
    start:
           mov ax,data
           mov ds,ax
           mov ax,0
           mov si,0
           X:
             mov ah,01
             int 21h
             cmp al,13
             je exit 
             cmp al,65
             ja t 
             jb c
             m:
             add al,32
             mov a[si],al
             jmp l
             n:
             sub al,32
             mov a[si],al
             
              l:
              inc si
             loop x
             
           t: cmp al,91
                jb m 
                ja u
           u:
                cmp al,97
                ja p
                
                
           p:
                cmp al,123
                jb  n
                ja  c
       exit:   
            mov  a[si],'$'
            lea dx,a
            mov ah,09
            int 21h   
            jmp k
          c:  
            lea dx,s
            mov ah,9
            int 21h
       k:     
   code ends
end start