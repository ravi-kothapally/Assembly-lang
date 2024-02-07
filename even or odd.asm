include 'emu8086.inc'
mov bx,2
mov ax,10
div bx
cmp dx,0
jne  k
 print "number is even"
 hlt
k:
print "number os odd" 
