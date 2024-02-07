include 'emu8086.inc'
data segment
	A db 23,7,7,7,7,9,9,9
	v equ $-A  
	B db ?,?,?,?,?,?
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
		  mov al,A[0]
		  mov B[0],al
		  mov cx,1
		  mov ah,0
          l:    inc si
                cmp si,v
                je ret
                mov al,A[si]
                mov di,-1
     
          k: 
                    inc di
                    cmp di,cx
                    je store
                    cmp B[di],al
                    jne k
                    call print_num 
                    printn ""
                    jmp l
                    hlt
         store: mov B[di],al
              inc cx
                 jmp l
               ret:
                    
                    
                    define_print_num
                    define_print_num_uns
	code ends
	end start