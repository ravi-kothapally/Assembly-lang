;charater frequency
include 'emu8086.inc'
data segment
    A db "aaaaabbbdddd$"
    B 26 dup(0)
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov cx,12 
        l:
           mov ah,0 
           mov al,A[si]
           inc si
           cmp al,20h
           je k
           sub al,61h
           mov bx,ax
           add B[bx],1
           loop l
           jmp g
        k: loop l
        g: mov cx,26
           mov si,-1
           j: inc si
              cmp B[si],0
              je s
              mov dx,si
              add dx,97
              mov ah,2
              int 21h
              print "-"
              mov al,B[si] 
              mov ah,0
              call print_num
              print "," 
              loop j
              hlt 
              s: loop j
             define_print_num
             define_print_num_uns
           code ends
end start
           