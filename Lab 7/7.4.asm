;Write a program to read the string using the character reading function and display the string using character displaying function.

TITLE READ FROM THE KEYBOARD
.MODEL SMALL
.DATA
STRLEN DB 20
STRSZ DB 00
STR DB 20 DUP('$')
STRTRM DB '$'
.STACK
.CODE

MAIN PROC FAR
MOV AX, @DATA
MOV DS, AX

;; READING STRING
LEA DX, STRLEN
MOV AH, 0AH
INT 21H

;; NEW LINE CHARACTER
MOV DL, 0DH
MOV AH, 02H
INT 21H
MOV DL, 0AH
MOV AH, 02H
INT 21H

;; WRITING STRING
LEA DX, STR
MOV AH, 09H
INT 21H

;; ENDING PROGRAM
MOV AX, 4C00H
INT 21H
MAIN ENDP
END MAIN