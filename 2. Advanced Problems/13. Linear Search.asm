; Problem Statement:-
;----------------------------------------------------------------------------------
; Implement a linear search algorithm to search for a specific value in an array.
;----------------------------------------------------------------------------------
; Assumptions:
; - Array to be searched is stored at memory address 3000H.
; - Length of array is 10 bytes.
; - Value to search for is stored in register A.
; - If value is found, its index is stored in register D. If not found, register D is set to FFH.
;----------------------------------------------------------------------------------

#ORG 3000H

; define constants
#ARRAY_START EQU 3000H
#ARRAY_LEN EQU 0AH

; initialize array address
        LXI H, ARRAY_START
        MOV D, FFH ; Initialize D to FFH (indicating not found)

        ; Value to search for is stored in register A

SEARCH_LOOP:
        MOV A, M
        CPI A         ; Compare value in memory with value in register A
        JZ VALUE_FOUND  ; If equal, jump to VALUE_FOUND
        INX H          ; Increment memory address
        DCR B          ; Decrement counter
        JNZ SEARCH_LOOP ; If counter is not zero, continue search
        JMP SEARCH_END ; If counter is zero, value not found

VALUE_FOUND:
        MOV D, H ; Store the index of the found value in register D

SEARCH_END:
        HLT ; Halt the processor

;----------------------------------------------------------------------------------