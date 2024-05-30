;----------------LOGICAL INSTRUCTIONS-------------------
;-------------------------------------------------------

#ORG 0000H

; Loading data into memory location

MVI A, 6CH      ; load REG A with data 6CH
MOV D,A         ; move data to D

MVI A, 00H      ; clear REG A

LXI H, 4050H    ; load HL REGISTER PAIR with data 4050H

MOV M,D         ; copy the data in REG D to memory location 4050H

;-------------------------------------------------------

MVI A, 0AH      ; Load A register with value 0AH
MVI B, 05H      ; Load B register with value 05H

; Logical AND operation
ANA B           ; Perform logical AND between A and B, result in A
ANI 6EH         ; Perform logical AND between A and 6EH, result in A
ANI M           ; Perform logical AND between A and data in memory location M, result in A

; Logical OR operation
ORA B           ; Perform logical OR between A and B, result in A
ORI 03H         ; Perform logical OR between A and immediate value 03H, result in A
ORA M           ; Perform logical OR between A and data in memory location M, result in A


; Logical XOR operation
XRA B           ; Perform logical XOR between A and B, result in A
XRI 0E7H        ; Perform logical XOR between A and immediate value 03H, result in A
XRA M           ; Perform logical XOR between A and data in memory location M, result in A

HLT

;-------------------------------------------------------
