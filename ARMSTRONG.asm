var dw 00
sum dw 00
var1 dw 00
include 'emu8086.inc'

print "n1:"
call scan_num
gotoxy 2,1

mov ax,cx
mov bx,10

loop:
cmp ax,0
je ret 
div bx
mov var,ax
mov var1,dx
mov ax,var1
mul var1
mul var1
add sum,ax
mov ax,var
jmp loop 

ret:
cmp sum,cx
je k
print "no"
hlt
k: print "yes"
define_scan_num
define_print_num
define_print_num_uns


