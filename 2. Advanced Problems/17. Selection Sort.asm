;PROBLEM STATEMENT:
; Selection Sort Algorithm in 8085 Assembly Language
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

; Selection Sort Implementation
LXI H, DATA_START
MVI B, DATA_LEN

SELECT_SORT:
    MOV D, H
    MOV C, B
    INX H

FIND_MIN:
    MOV A, M
    INX H
    CMP M
    JC NO_UPDATE_MIN
    MOV D, H
    DCX D

NO_UPDATE_MIN:
    DCR C
    JNZ FIND_MIN

    ; Swap minimum element with first element of unsorted part
    MOV A, M
    MOV E, H
    MOV H, D
    MOV D, M
    MOV M, A
    MOV H, E
    MOV M, D

    INX H
    DCR B
    JNZ SELECT_SORT

HLT

;----------------------------------------------------------------------------------