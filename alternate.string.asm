include 'emu8086.inc'
data segment
	A db "yenkati$"
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
     
           l: cmp si,7
              jae ret
              mov dl,A[si]
              mov ah,2
              int 21h
              add si,2
              jmp l
         ret:
	code ends
	end start


