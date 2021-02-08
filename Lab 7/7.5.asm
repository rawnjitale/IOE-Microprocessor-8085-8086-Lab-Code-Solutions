;Write a program to read the string and convert it into upper case if it is in lower case and display the resulting string. Process the string in the memory before displaying

TITLE TO UPCASE
.MODEL SMALL
.DATA
STRLEN DB 20
STRSZ DB 00
STR DB 20 DUP(' ')
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

;; CHANGING TO UPCASE
MOV CX, 00H
MOV CL, STRLEN
LEA BX, STR
L1: MOV AL, [BX]

;; CHECKING IF LCASE
CMP AL, 'a'
JL EX
CMP AL, 'z'
JG EX
AND AL, 11011111B
MOV [BX], AL

EX: INC BX
LOOP L1

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