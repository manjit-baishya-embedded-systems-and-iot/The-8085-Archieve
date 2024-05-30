;---------------------------DETERMINING THE GREATEST NUMBER----------------------------
;--------------------------------------------------------------------------------------

ORG 0000H

;-----------------Loading numbers into memory locations 2000H to 200BH-----------------
LXI H, 3757H    ; Load immediate 16-bit data 3757H into register pair HL
SHLD 2000H      ; Store the content of register pair HL at memory address 2000H

LXI H, FCAEH    ; Load immediate 16-bit data FCAEH into register pair HL
SHLD 2002H      ; Store the content of register pair HL at memory address 2002H

LXI H, 9E72H    ; Load immediate 16-bit data 9E72H into register pair HL
SHLD 2004H      ; Store the content of register pair HL at memory address 2004H

LXI H, A9F3H    ; Load immediate 16-bit data A9F3H into register pair HL
SHLD 2006H      ; Store the content of register pair HL at memory address 2006H

LXI H, A7B9H    ; Load immediate 16-bit data A7B9H into register pair HL
SHLD 2008H      ; Store the content of register pair HL at memory address 2008H

LXI H, E7B5H    ; Load immediate 16-bit data E7B5H into register pair HL
SHLD 200AH      ; Store the content of register pair HL at memory address 200AH
;-------------------------------------------------------------------------------------

LXI H, 2001H    ; Load immediate 16-bit data 2001H into register pair HL

; Loading accumulator A with the first number
LDA 2000H       ; Load the content of memory address 2000H into accumulator A

; Loading register B with the number of iterations
MVI B, 0BH      ; Load immediate 8-bit data 0BH into register B

LOOP:
    MOV C, M    ; Move the content of the memory location pointed by HL into register C
    CMP C       ; Compare accumulator A with register C
    JNC NO_CARRY  ; Jump if no carry to NO_CARRY
    MOV A, C    ; Move the content of register C into accumulator A

NO_CARRY:
    INX H       ; Increment the memory address pointed by HL
    DCR B       ; Decrement the loop counter
    JNZ LOOP    ; Jump back to LOOP if the loop counter is not zero

; Storing the GREATEST number at memory location 3000H
STA 3000H      ; Store the content of accumulator A at memory address 3000H

HLT            ; Halt the program

;--------------------------------------------------------------------------------------