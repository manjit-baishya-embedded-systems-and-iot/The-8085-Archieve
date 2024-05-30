;----------------JNC INSTRUCTION------------------------
;-------------------------------------------------------

#ORG 0000H

MVI A, 0AH      ; Load A register with value 0AH

; Check if there is no carry from the previous operation
ADD B           ; Add the content of B register to A
JNC NO_CARRY_CASE   ; Jump to NO_CARRY_CASE if there is no carry

; If carry, perform some other operation here
; For demonstration, let's just halt the program
HLT

; Jump target if there is no carry
NO_CARRY_CASE:
    ; Perform some operation if there is no carry
    ; For demonstration, let's load A with a different value
    MVI A, 05H  ; Load A with value 05H

HLT

;-------------------------------------------------------