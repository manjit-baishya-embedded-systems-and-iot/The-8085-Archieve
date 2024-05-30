;----------------JMP INSTRUCTION------------------------
;-------------------------------------------------------

#ORG 0000H

MVI A, 0AH      ; Load A register with value 0AH

; Unconditional jump to a different address
JMP TARGET_ADDRESS    ; Jump to TARGET_ADDRESS

; After JMP instruction, execution continues from TARGET_ADDRESS

; Some instructions here

TARGET_ADDRESS:
    ; Instructions to execute after the jump

HLT

;-------------------------------------------------------
