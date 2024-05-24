;--------SUBTRACTION OF 2 8-BIT DIGITS--------
;---------------------------------------------

ORG 0000H	; start point 0000H
MVI A, 32H	; load 32H into A
MVI B, 11H	; load 11H into B

SUB B		; add contents of B to A

STA 2000H	; store the result in 0x2000H

MVI A, 00H  ; clear A
MVI B, 00H  ; clear B

HLT         ; hault the program

;---------------------------------------------