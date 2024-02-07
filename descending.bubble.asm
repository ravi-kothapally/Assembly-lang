include 'emu8086.inc'
data segment
    A db 11,45,64,23,7
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov ax,0
        mov si,0
        loop1:
             mov di,0
             loop: 
                mov al,A[di]
                cmp al,A[di+1]
                jb t
                u:
                inc di
                cmp di,4
                jne loop
           inc si
           cmp si,4
           jne loop1
           mov si,0
           k:
           
           mov al,A[si]
           print " "
           call print_num
           inc si
           cmp si,5
           jne k
           jmp exit
t:
    xchg A[di+1],al
    mov A[di],al
    jmp u 
    
  
  exit:
  define_print_num
  define_print_num_uns
  code ends
end start