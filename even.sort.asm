include 'emu8086.inc'
data segment
	A db 27,4,62,54,25,8,44,9,0
	B db 20 dup(?)
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
		  mov bl,2
		  mov si,-1
		  mov di,0
          l: 
             
             inc si
             mov ah,0
             cmp si,9
             je ret
             mov al,A[si]
             div bl
             cmp ah,0
             jne l
             mul bl
             mov B[di],al
             inc di
             jmp l
       ret: 
            mov dx,-1
            dec di
            p:
             inc dx
             cmp dx,di
             je exit
             mov si,-1              
             
            k:
              inc si
              cmp si,di
              je p 
              mov al,b[si]
              cmp al,b[si+1]
              jna k
              xchg al,b[si+1]
              mov b[si],al
              jmp k 
            exit:hlt  
	code ends
	end start
