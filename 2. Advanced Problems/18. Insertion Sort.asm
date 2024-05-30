; PROBLEM STATEMENT:
; Insertion Sort Algorithm in 8085 Assembly Language
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

; Insertion Sort Implementation
LXI H, DATA_START
INX H
MVI B, DATA_LEN

INSERT_SORT:
    MOV A, M
    MOV D, H
    DCX H

SHIFT_RIGHT:
    MOV C, M
    CMP C
    JC INSERT_DONE
    MOV M, C
    DCX H
    MOV M, A
    INX H
    JMP INSERT_SORT

INSERT_DONE:
    INX H
    DCR B
    JNZ INSERT_SORT

HLT

;----------------------------------------------------------------------------------