; Problem Statement:-
;----------------------------------------------------------------------------------
; Design a program that decrypts data stored in memory using a custom algorithm.
; The decryption algorithm will XOR each byte with a key to retrieve the original data.
;----------------------------------------------------------------------------------
; Assumptions:
; - The encrypted data starts at memory address 3000H.
; - The length of the data is 10 bytes.
; - The decryption key is 3AH.
; - The starting address for the decrypted data is 4000H.
;----------------------------------------------------------------------------------

#ORG 3000H

; define constants
#KEY EQU 3AH
#START_ENC_DATA EQU 3000H
#START_DEC_DATA EQU 4000H
#DATA_LEN EQU 0AH

; initialize the starting address of encrypted data and decrypted data
        LXI H, START_ENC_DATA
        LXI D, START_DEC_DATA

        MVI B, DATA_LEN ; length of data

DECRYPT_LOOP:
        ; load encrypted data
        MOV A, M
        ; XOR with key to decrypt
        XRI KEY
        ; store decrypted data
        STAX D
        ; increment memory addresses
        INX H
        INX D
        ; decrement counter
        DCR B
        JNZ DECRYPT_LOOP

HLT

;----------------------------------------------------------------------------------