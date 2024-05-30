;----------------SUBTRACTION WITH DATA, MEMORY AND REGISTERS-----------------------
;----------------------------------------------------------------------------------

#ORG 0000H

MVI A, 32H      ; load A with 32H
MVI B, 0F2H     ; load B with F2H
MVI C, 4EH      ; load C with 4EH

SUB B           ; subtract the contents of B to A and save the sum to A
SUB C           ; subtract the contents of C to A and save the sum to A

MVI A, 32H      ; loading 32H into A
STA 50FCH       ; loading 32H to MEMORY LOCATION 50FCH

LXI H, 50FCH    ; loading HL pair with data 50FCH
MVI A, F2H      ; loading A with data F2H

SUI 56H         ; subtract 56H to A >>> F2H - 56H
SUB M           ; subtract data in M (50FCH) to A

HLT

;----------------------------------------------------------------------------------