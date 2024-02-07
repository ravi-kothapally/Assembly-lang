include 'emu8086.inc'
print "no of term of finnocci"
call scan_num
mov ax,0
gotoxy 2,2
call print_num 
cmp cx,1
 je r
mov al,1
mov bl,0
mov bh,0
mov dh,4
gotoxy 2,3 
call print_num 
cmp cx,2
 je r
dec cl
dec cl
dec cl
loop:
  mov dl,00
  mov dl,al
  add al,bl
  mov bl,00
  add bl,dl
  gotoxy 2,dh
  call print_num
  inc dh
  cmp cl,bh
  je r
  inc bh
  jmp loop
  r:hlt
  
  
  

ret
define_scan_num
define_print_num
define_print_num_uns