; Problem Statement:-
;----------------------------------------------------------------------------------
; Write programs for data compression using Run-Length Encoding.
;----------------------------------------------------------------------------------
; Assumptions:
; - Data to be compressed is stored at memory address 3000H.
; - Compressed data should be stored at memory address 4000H.
; - Length of data is 10 bytes.
;----------------------------------------------------------------------------------

; Example for Run-Length Encoding (RLE) compression
#ORG 3000H

; define constants
#DATA_START EQU 3000H
#COMPRESSED_START EQU 4000H
#DATA_LEN EQU 0AH

; initialize the starting address of data and compressed data
        LXI H, DATA_START
        LXI D, COMPRESSED_START

        MVI B, DATA_LEN ; length of data

COMPRESS_LOOP:
        ; load data
        MOV A, M
        ; store data in compressed format
        STAX D
        ; count occurrences of the same byte
        MOV C, A
        MVI A, 01H
COUNT_LOOP:
        INX H
        MOV A, M
        CMP C
        JNZ STORE_COUNT
        INX A
        JMP COUNT_LOOP

STORE_COUNT:
        MOV A, C
        STAX D
        ; move to the next byte
        INX H
        DCR B
        JNZ COMPRESS_LOOP

HLT

;----------------------------------------------------------------------------------