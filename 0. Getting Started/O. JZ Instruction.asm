;-----------------JZ INSTRUCTION------------------------
;-------------------------------------------------------

#ORG 0000H

MVI A, 0AH      ; Load A register with value 0AH

; Check if A is zero
CPI 00H         ; Compare A with immediate value 00H
JZ ZERO_CASE    ; Jump to ZERO_CASE if A is zero

; If A is not zero, perform some other operation here
; For demonstration, let's just halt the program
HLT

; Jump target if A is zero
ZERO_CASE:
    ; Perform some operation if A is zero
    ; For demonstration, let's load A with a different value
    MVI A, 05H  ; Load A with value 05H

HLT

;-------------------------------------------------------
