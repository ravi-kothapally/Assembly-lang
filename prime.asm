include 'emu8086.inc'  
mov ax,21
mov cx,ax
mov bl,2
loop:

mov ax,cx 
div bl                             
cmp bl,21
je exit
   inc bl
cmp ah,0
je p
  jmp loop
p:
print "not prime" 
hlt
exit: 
print "prime"
ret

 
