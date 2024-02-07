include 'emu8086.inc'
data segment
	A db "aeiouAEIOU$"
	B db "this is the string$"
	v equ $-B 
	c db 0
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
          mov si,-1
          l:   inc si
          cmp si,v
          je ret
                mov al,B[si] 
                mov di,-1
                mov cx,10
                o: 
  
                   inc di
                   cmp al,A[di]
                   jne p
                   inc c
                   loop o
                   jmp l
                   p: loop o
                   jmp l
                   
         ret:
         mov ah,0
         mov al,c
         call print_num
define_scan_num
define_print_num
define_print_num_uns
	code ends
	end start