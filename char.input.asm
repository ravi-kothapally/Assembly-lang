include 'emu8086.inc'
mov ah,01
int 21h
printn ""
mov dl,al
mov ah,2
int 21h
ret

