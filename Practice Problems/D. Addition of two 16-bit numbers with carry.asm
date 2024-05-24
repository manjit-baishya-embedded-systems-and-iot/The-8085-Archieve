;--------------------ADDITION OF TWO 16-BIT NUMBERS WITH CARRY--------------------
;---------------------------------------------------------------------------------

ORG 0000H  ; set origin to 0000H

LXI H, FCF9H  ; load the 16-bit number FCF9H into register pair HL
SHLD 2000H    ; store the LSB of the first number at memory location 2000H
              ; store the MSB of the first number at memory location 2001H

LXI H, FFC0H  ; load the 16-bit number FFC0H into register pair HL
SHLD 2002H    ; store the LSB of the second number at memory location 2002H
              ; store the MSB of the second number at memory location 2003H

LDA 2000H    ; load the LSB of the first number into accumulator A
MOV B, A     ; move the LSB of the first number from accumulator A to register B

LDA 2002H    ; load the LSB of the second number into accumulator A

ADD B        ; add the LSBs together
STA 3002H    ; store the result (LSB of the sum) in memory location 3002H

LDA 2001H    ; load the MSB of the first number into accumulator A
MOV B, A     ; move the MSB of the first number from accumulator A to register B

LDA 2003H    ; load the MSB of the second number into accumulator A

ADC B        ; add the MSBs along with carry from the previous addition (if any)
STA 3001H    ; store the result (MSB of the sum) in memory location 3001H

JNC NO_CARRY  ; jump if no carry to label NO_CARRY

MVI A, 01H   ; load 01H into accumulator A
STA 3000H    ; store the value (01H) in memory location 3000H

NO_CARRY:    ; label indicating no carry

HLT          ; halt the program

;---------------------------------------------------------------------------------