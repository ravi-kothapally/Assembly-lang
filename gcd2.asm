include 'emu8086.inc' 
print "n1:"
call scan_num
mov ax,cx
gotoxy 0,1
print "n2:"
call scan_num 
cmp cx,ax
ja k
jmp loop
k:
xchg ax,cx
loop:
div cx
cmp dx,0
je ret
mov ax,cx
mov cx,dx
mov dx,0
jmp loop

     
ret:
mov ax,cx
gotoxy 0,2
print "gcd is"
gotoxy 0,3
call print_num
define_scan_num
define_print_num
define_print_num_uns
