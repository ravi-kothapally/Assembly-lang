include 'emu8086.inc'
data segment
	A db 9,9,9,9,9
	v dw $-A
	B db v dup(-1)
	x db 0
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
          mov si,-1
          l:
          
          mov x,0
          inc si
          cmp si,v
          je ret
          mov di,si
          mov al,A[si]
                o:  
                    inc di
                    cmp di,v
                    je p
                    cmp al,A[di]
                    jne o 
                    inc x
                    mov b[di],0
                    jmp o
                p:  cmp b[si],0
                    je l
                    mov dl,x
                    mov b[si],dl
                    loop l
                    
                    
         ret: 
                mov si,-1
                lo:  mov ah,0
                     inc si
                     cmp si,v
                     je exit
                     cmp B[si],0
                     jna lo
                     mov al,A[si]
                     call print_num
                     print "-"
                     mov al,B[si]
                     inc al
                     call print_num 
                     printn ""
                     jmp lo
          exit: define_print_num
          define_print_num_uns 
          
	code ends
	end start
	