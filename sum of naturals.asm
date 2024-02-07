mov ax,5
mov bx,ax
loop:
dec bx
add ax,bx
cmp bx,0
jne loop
