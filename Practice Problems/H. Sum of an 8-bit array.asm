;-----------------------SUM OF AN ARRAY OF 8-BIT NUMBERS-----------------------
;------------------------------------------------------------------------------

ORG 0000H

;------------------------------LOADING THE VALUES------------------------------

LXI H, 3557H    ; Load immediate 16-bit data 3557H into register pair HL
SHLD 2000H      ; Store the content of register pair HL at memory address 2000H

LXI H, 2796H    ; Load immediate 16-bit data 2796H into register pair HL
SHLD 2002H      ; Store the content of register pair HL at memory address 2002H

LXI H, 52FAH    ; Load immediate 16-bit data 52FAH into register pair HL
SHLD 2004H      ; Store the content of register pair HL at memory address 2004H

LXI H, 0C1E7H   ; Load immediate 16-bit data 0C1E7H into register pair HL
SHLD 2006H      ; Store the content of register pair HL at memory address 2006H

LXI H, 0A9CFH   ; Load immediate 16-bit data 0A9CFH into register pair HL
SHLD 2008H      ; Store the content of register pair HL at memory address 2008H

LXI H, 1FC7H    ; Load immediate 16-bit data 1FC7H into register pair HL
SHLD 200AH      ; Store the content of register pair HL at memory address 200AH

LXI H, 0EDCAH   ; Load immediate 16-bit data 0EDCAH into register pair HL
SHLD 200CH      ; Store the content of register pair HL at memory address 200CH

;------------------------------------------------------------------------------

LXI H, 2001H    ; Load immediate 16-bit data 2001H into register pair HL

LDA 2000H       ; Load the content of memory address 2000H into accumulator A

MVI B, 0EH      ; Load immediate 8-bit data 0EH into register B (loop counter)

LOOP:
MOV C, M        ; Move the content of the memory location pointed by HL into register C
ADD C           ; Add register C to accumulator A

JNC NO_CARRY    ; Jump if no carry to NO_CARRY
INR D           ; Increment register D (for carrying)

NO_CARRY:
INX H           ; Increment the memory address pointed by HL
DCR B           ; Decrement the loop counter
JNZ LOOP        ; Jump back to LOOP if the loop counter is not zero

STA 3001H       ; Store the result (LSB of the sum) in memory location 3001H

MOV A, D        ; Move the content of register D to accumulator A
STA 3000H       ; Store the result (MSB of the sum) in memory location 3000H

HLT             ; Halt the program

;------------------------------------------------------------------------------