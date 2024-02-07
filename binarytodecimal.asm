include 'emu8086.inc'
data segment
	A db  1,2,4,8,16,32,64,128
	d dw 10
	q dw 0
	r dw 0
	sum db 0
	data ends
code segment
	start:mov ax,data
		  mov ds,ax
          print "n"
          call scan_num
          mov ax,cx
          mov si,-1
          mov bx,10
       
          mov cx,8
          l:   inc si
               mov dx,0
               div d
              
               mov r,dx
               mov q,ax
               mov al,A[si]
               mov ah,0
               mul r
               add sum,al
               mov ax,q
               loop l
          mov ah,0
          mov al,sum    
          printn ""
          call print_num   
               


define_scan_num
define_print_num
define_print_num_uns

	code ends
	end start