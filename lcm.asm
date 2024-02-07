p dw 00
v dw 00
include 'emu8086.inc' 
print "n1:"
call scan_num
mov ax,cx
mov v,cx
print "n2:"
call scan_num
mul cx
mov p,ax
mov ax,v 
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

     
ret:
mov ax,p
div cx
print "lcm is"
gotoxy 2,1
call print_num
define_scan_num
define_print_num
define_print_num_uns
