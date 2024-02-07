;Array primes
include 'emu8086.inc'
data segment
	A db 7,4,5,3,6,2,6,13,1,15
	v equ $-A
	c dw 0
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
          mov si,-1
          
        l: 
           inc si
           cmp si,v
           je ret
           mov bl,0
           mov cl,A[si]
           sub cl,1
           mov ch,0
           mov c,0 
           o: 
              mov ah,0
              mov al,A[si]
              inc bl
              div bl
              cmp ah,0
              je op
              loop o
              cmp c,2
              jne l 
              mov ah,0
              mov al,A[si]
              call print_num
              printn ""
              jmp l
              hlt
              op:inc c
                 jmp o 
       ret:   
define_scan_num
define_print_num
define_print_num_uns

	code ends
	end start