;---------LOADING 8-BIT DIGITS INTO REGISTERS---------
;-----------------------------------------------------

; --- defining starting point
#ORG 0000H

; --- move [Hexadecimal] data to [REGISTER]
MVI A, 56H      ; Accumulator (A)
MVI B, 32H      ; Register B
MVI C, 0F4H     ; Resigter C  [NOTE] :: Always use a ZERO (0) when declaring HEX NUMBERS starting ith letters!!!
MVI D, 0A9H     ; Resigter D  [NOTE] :: Always use a ZERO (0) when declaring HEX NUMBERS starting ith letters!!!
MVI E, 3CH      ; Register E
MVI H, B7H      ; Register H
MVI L, 9FH      ; Register L
MVI M, 22H      ; Register M  [NOTE] :: Can be also used to point to the MEMORY LOCATION too!!!

; --- hault the program
HLT

;-----------------------------------------------------