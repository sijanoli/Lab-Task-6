.MODEL SMALL
.STACK 100H
.DATA
    upper db 'A'
    lower db ?
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    MOV AL, upper
    ADD AL, 32
    MOV lower, AL
    MOV AH, 02H
    MOV DL, lower
    INT 21H
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
