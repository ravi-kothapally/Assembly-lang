include 'emu8086.in'  
org 100h
mov ax,05h
shl ax,01h
jc k
print "positive"
jc exit
hlt
k:
print "negative"
exit :
ret