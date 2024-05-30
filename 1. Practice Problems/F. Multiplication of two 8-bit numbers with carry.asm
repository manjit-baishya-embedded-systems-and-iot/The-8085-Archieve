;--------------------MULTIPLICATION OF TWO 8-BIT NUMBERS WITH CARRY--------------------
;--------------------------------------------------------------------------------------

ORG 0000H           ; set origin to 0000H

MVI B, EAH          ; load the first 8-bit number (EAH) into register B
MVI C, FAH          ; load the second 8-bit number (FAH) into register C

LOOP:               ; start of loop
    ADD C           ; add the second number (in register C) to accumulator A
    JNC NO_CARRY    ; jump if no carry to NO_CARRY
    INR D           ; increment register D (for carrying)

NO_CARRY:           ; label indicating no carry
    DCR B           ; decrement the first number (in register B)
    JNZ LOOP        ; jump to LOOP if first number is not zero

STA 2001H           ; store the LSB of the result (in accumulator A) in memory location 2001H
MOV A, D            ; move the content of register D (carry) to accumulator A

STA 2000H           ; store the MSB of the result (in accumulator A) in memory location 2000H

HLT                 ; halt the program

;-------------------------------------------------------------------------------------
