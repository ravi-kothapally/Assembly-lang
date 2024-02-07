include 'emu8086.inc'
data segment
    A db 6,7,5,4,3,89
    min db 99
    max db -99
    data ends
code segment
    start:
     mov ax,data
     mov ds,ax 
     mov cx,6
     k:
     cmp A[di],min
     ja
     cmp A[di],max
     ja
     
     