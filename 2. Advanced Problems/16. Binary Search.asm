; PROBLEM STATEMENT:
; Binary search algorithm implementation in 8085 assembly language
;----------------------------------------------------------------------------------
; Assumptions:
; - Array to be searched is sorted in ascending order.
; - Array is stored at memory address 3000H.
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

BINARY_SEARCH:
        MOV B, H    ; B points to start of array
        MOV C, M    ; C holds the current array size

SEARCH_LOOP:
        MOV A, C
        CPI 00H     ; Check if array size is 0
        JZ VALUE_NOT_FOUND  ; If array size is 0, value not found

        MOV D, A
        RLC         ; Multiply by 2 (shift left)
        MOV E, A    ; Store the multiplied value in E
        ADD B       ; Add it to the array start address
        MOV H, A    ; Update H to point to the middle element

        MOV A, M    ; Load the middle element
        CPI A       ; Compare with search value
        JZ VALUE_FOUND     ; If equal, jump to VALUE_FOUND
        JC LESS_THAN_MIDDLE  ; If less than middle, jump to LESS_THAN_MIDDLE

GREATER_THAN_MIDDLE:
        MOV B, H    ; Update start of array to be middle + 1
        SUB D       ; Subtract middle from array size
        JMP SEARCH_LOOP   ; Continue search

LESS_THAN_MIDDLE:
        SUB E       ; Subtract 1 from multiplied middle
        JMP SEARCH_LOOP   ; Continue search

VALUE_FOUND:
        MOV D, H ; Store the index of the found value in register D
        JMP SEARCH_END

VALUE_NOT_FOUND:
        MOV D, FFH ; Set D to FFH to indicate not found

SEARCH_END:
        HLT ; Halt the processor

;----------------------------------------------------------------------------------
