;-----------------------DIVISION OF TWO 8-BIT NUMBERS WITH CARRY-----------------------
;--------------------------------------------------------------------------------------

ORG 0000H

; Load Divisor
LXI H, 67H      ; Load immediate 16-bit data 67H into register pair HL (divisor)
SHLD 2000H      ; Store the content of register pair HL at memory address 2000H (divisor)

; Load Dividend
LXI H, 12H      ; Load immediate 16-bit data 12H into register pair HL (dividend)
SHLD 2001H      ; Store the content of register pair HL at memory address 2001H (dividend)

; Load Dividend into Register B
LDA 2001H       ; Load the content of memory address 2001H into accumulator A (dividend)
MOV B, A        ; Move the content of accumulator A into register B

; Load Divisor into Accumulator A
LDA 2000H       ; Load the content of memory address 2000H into accumulator A (divisor)

; Perform Division
LOOP:           ; Start of loop
SUB B           ; Subtract the content of register B (divisor) from accumulator A (dividend)
INR C           ; Increment register C (quotient)
CMP B           ; Compare accumulator A (dividend) with register B (divisor)
JNC LOOP        ; Jump to LOOP if no carry (if accumulator A is greater than or equal to register B)

; Store Remainder
STA 2002H       ; Store the content of accumulator A (remainder) at memory address 2002H (remainder)

; Store Quotient
MOV A, C        ; Move the content of register C (quotient) into accumulator A
STA 2003H       ; Store the content of accumulator A (quotient) at memory address 2003H (quotient)

HLT             ; Halt the program

;--------------------------------------------------------------------------------------