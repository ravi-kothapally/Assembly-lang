include 'emu8086.inc'
mov al,6   
mov bl,0
mov cl,al
loop:
 dec cl
 mov al,6
 mov ah,00
 div cl
 cmp ah,0
 jne loop
 add bl,cl
 cmp cl,1
 jne loop
 
 cmp bl,al
 je k
 print 'not perfect'  
 hlt
k:print 'perfect'



   
