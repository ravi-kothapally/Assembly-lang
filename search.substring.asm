include 'emu8086.inc'
data segment
    A db "rahulahl$"
    s db "rh$" 
    data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    mov bx,0
    mov al,s[si]
            l:  cmp A[bx],'$'
                je ret
                cmp al,A[bx]
                je o
                i: inc bx
                jmp l  
            o:  inc si
                inc bx
                cmp s[si],'$'
                je io
                cmp A[bx],'$'
                je ret
                mov cl,s[si]
                cmp cl,A[bx]
                jne i
                jmp o   
            io: print "yes"
                hlt
            ret: print "no"
                 code ends
end start                    