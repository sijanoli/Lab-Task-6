.MODEL SMALL
.STACK 100H
.DATA
    msg db 'Hello, World!$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
