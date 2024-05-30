; Problem Statement:-
;----------------------------------------------------------------------------------
; Design a program that encrypts data stored in memory using a custom algorithm.
; The encryption algorithm will XOR each byte with a key.
;----------------------------------------------------------------------------------
; Assumptions:
; - The data to be encrypted starts at memory address 2000H.
; - The length of the data is 10 bytes.
; - The encryption key is 3AH.
; - The starting address for the encrypted data is 3000H.
;----------------------------------------------------------------------------------
#ORG 3000H

; define constants
#KEY EQU 3AH
#START_DATA EQU 2000H
#START_ENC_DATA EQU 3000H
#DATA_LEN EQU 0AH

; initialize the starting address of data and encrypted data
        LXI H, START_DATA
        LXI D, START_ENC_DATA

        MVI B, DATA_LEN ; length of data

ENCRYPT_LOOP:
        ; load data from memory
        MOV A, M
        ; XOR with key
        XRI KEY
        ; store encrypted data
        STAX D
        ; increment memory addresses
        INX H
        INX D
        ; decrement counter
        DCR B
        JNZ ENCRYPT_LOOP

HLT

;------------------------------------------------------------------