include 'emu8086.inc'
data segment
	A db 1,2,3,4,5,6
	v equ $-A
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
		  print "i:"
		  call scan_num
		  mov ax,cx
		  print "n"
		  call scan_num
		  mov si,v
		                     
		  l:    
		        dec si
		        mov bl,A[si] 
		        mov A[si+1],bl
		        cmp si,ax
		        je ret
		        jmp l
		   ret:
            mov A[si],cl


define_scan_num
define_print_num
define_print_num_uns

	code ends
	end start