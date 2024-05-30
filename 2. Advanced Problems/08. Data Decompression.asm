; Problem Statement:-
;----------------------------------------------------------------------------------
; Write programs for data compression and decompression using algorithms like Run-Length Encoding or Huffman Coding.
;----------------------------------------------------------------------------------
; Assumptions:
; - Compressed data is stored at memory address 4000H.
; - Decompressed data should be stored at memory address 5000H.
; - Length of compressed data is variable.
;----------------------------------------------------------------------------------

; Example for Run-Length Encoding (RLE) decompression
#ORG 4000H

; define constants
#COMPRESSED_START EQU 4000H
#DECOMPRESSED_START EQU 5000H

; initialize the starting address of compressed and decompressed data
        LXI H, COMPRESSED_START
        LXI D, DECOMPRESSED_START

DECOMPRESS_LOOP:
        ; load data byte
        MOV A, M
        ; store byte temporarily
        MOV B, A
        ; increment memory address to get the count
        INX H
        MOV A, M
        ; store count temporarily
        MOV C, A

WRITE_LOOP:
        ; write data byte C times
        MOV A, B
        STAX D
        INX D
        DCR C
        JNZ WRITE_LOOP

        ; increment memory address for next compressed data byte
        INX H
        ; check for end of compressed data (assuming end with 00H)
        MOV A, M
        CPI 00H
        JZ END_DECOMPRESSION
        JMP DECOMPRESS_LOOP

END_DECOMPRESSION:
        HLT

;----------------------------------------------------------------------------------
