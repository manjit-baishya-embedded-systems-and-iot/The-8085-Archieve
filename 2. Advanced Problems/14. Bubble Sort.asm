;PROBLEM STATEMENT:
; Bubble Sort Algorithm in 8085 Assembly Language
;----------------------------------------------------------------------------------
; Assumptions:
; - Data to be sorted is stored at memory address 3000H.
; - Length of data is 10 bytes.
; - Sorted data will be stored in place.
;----------------------------------------------------------------------------------

#ORG 3000H

; Define constants
DATA_START EQU 3000H
DATA_LEN EQU 0AH

; Bubble Sort Implementation
LXI H, DATA_START
MVI B, DATA_LEN

BUBBLE_SORT:
    DCR B
    MOV C, B
    MOV D, H

SORT_PASS:
    MOV A, M
    INX H
    CMP M
    JC NO_SWAP
    MOV E, M
    MOV M, A
    DCX H
    MOV M, E
    INX H

NO_SWAP:
    DCR C
    JNZ SORT_PASS
    MOV H, D
    MOV A, B
    CPI 01H
    JNZ BUBBLE_SORT

HLT

;----------------------------------------------------------------------------------