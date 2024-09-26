 .MODEL SMALL
.STACK 100H
.DATA
    char db 'A'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 02H
    MOV DL, char
    INT 21H
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN

