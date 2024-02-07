sum dw 00
var dw 00
v dw 00
include 'emu8086.inc' 
print "n:"
call scan_num
mov ax,cx
mov v,cx
mov bx,10
gotoxy 3,3
loop:
div bx
mov cx,dx
mov var,ax
mov ax,sum
mul bx
add ax,cx
mov sum,ax
mov ax,var 
cmp ax,0
je l
jmp loop

l:
mov ax,sum
cmp ax,v
je k
print "not a palindrome"
hlt
k:
print "palindrome"
              
ret
define_scan_num
define_print_num
define_print_num_uns
