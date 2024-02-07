include 'emu8086.inc'  
org 100h 
mov ax,0
sub ax,-5
cmp ax,0
jae k
print "negative"
hlt
k:
print "positive"
exit :
ret