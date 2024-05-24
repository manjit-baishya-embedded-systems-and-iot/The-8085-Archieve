;----------------LOGICAL INSTRUCTIONS-------------------
;-------------------------------------------------------

#ORG 0000H

MVI A, 0AH      ; Load A register with value 0AH
MVI B, 05H      ; Load B register with value 05H

; Logical AND operation
CMP B           ; Perform logical AND between A and B, result in A
CPI 6EH         ; Perform logical AND between A and 6EH, result in A

HLT

;-------------------------------------------------------
