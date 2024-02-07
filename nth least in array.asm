include 'emu8086.inc'
data segment
	A db  5,6,4,3,8,9
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
          mov cx,2 
          mov ah,0 
          
          l:    mov si,0
                mov al,A[0]
                mov di,0
                o:  
                    inc si
                    cmp si,6
                    je m
                    cmp al,A[si]
                    jna o 
                    mov di,si
                    mov al,A[si]
                    
                    jmp o
                    jmp ret
                m:  
                    cmp cx,1
                    je ret
                    mov A[di],99
                    loop l         +
            ret: 
            call print_num

define_scan_num
define_print_num
define_print_num_uns

	code ends
	end start