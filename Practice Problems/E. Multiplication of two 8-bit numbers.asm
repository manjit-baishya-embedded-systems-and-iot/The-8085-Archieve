;---------------- MULTIPLICATION OF TWO 8-BIT NUMBERS -----------------
;----------------------------------------------------------------------

ORG 0000H     ; set origin to 0000H

MVI C, 12H    ; load immediate value 12H into register C
MVI B, 04H    ; load immediate value 04H into register B

LOOP:         ; start of loop
ADD C         ; add the value in register C to accumulator
DCR B         ; decrement the value in register B
JNZ LOOP      ; jump to LOOP if value in register B is not zero

STA 2000H     ; store the result in memory location 2000H

MVI A, 00H    ; load immediate value 00H into accumulator A
MVI C, 00H    ; load immediate value 00H into register C

HLT           ; halt the program

;----------------------------------------------------------------------