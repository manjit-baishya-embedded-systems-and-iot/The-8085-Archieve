;----------------JC INSTRUCTION-------------------------
;-------------------------------------------------------

#ORG 0000H

MVI A, 0AH      ; Load A register with value 0AH

; Check if there is a carry from the previous operation
ADD B           ; Add the content of B register to A
JC CARRY_CASE   ; Jump to CARRY_CASE if there is a carry

; If no carry, perform some other operation here
; For demonstration, let's just halt the program
HLT

; Jump target if there is a carry
CARRY_CASE:
    ; Perform some operation if there is a carry
    ; For demonstration, let's load A with a different value
    MVI A, 05H  ; Load A with value 05H

HLT

;-------------------------------------------------------