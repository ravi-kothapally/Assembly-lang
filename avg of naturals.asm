mov ax,4
mov bx,ax
mov cx,ax
loop:
dec bx
add ax,bx
cmp bx,0
jne loop 
div cx
