include 'emu8086.inc'
DATA SEGMENT
st db 20 dup("$")
a DB "aaKACDYWE$"  
data ends
code segment
    start:mov ax,data
    mov ds,ax 
    mov al,0
lea dx,st
mov ah,0Ah
int 21h 
PRINTN " "
MOV dx,OFFSET ST+2
MOV AH,9
INT 21H 
PRINTN ""
MOV AH,0
MOV AL,ST+1
CALL PRINT_NUM
PRINTN ""
MOV AL,0
MOV DX,OFFSET a
MOV AH,9
INT 21H 
printn ""
mov ah,0
mov al,a-1
call print_num
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
code ends
end start