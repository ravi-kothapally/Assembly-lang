include 'emu8086.inc'
mov al,5
mov cx,8
l:
shl al,1
jc p
print "0"
loop l
jmp compliment
p:print "1"
loop l

compliment:
printn ""
mov al,5
mov cx,8
    not al
l1:
shl al,1
jc p1
print "0"
loop l1
jmp twos
p1:print "1"
loop l1 

twos:
mov al,5
not al 
mov cx,8
printn ""
inc al

l2:
shl al,1
jc p2
print "0"
loop l2
hlt
p2:print "1"
loop l2