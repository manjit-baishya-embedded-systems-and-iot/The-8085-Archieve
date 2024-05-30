; Problem Statement:-
;----------------------------------------------------------------------------------
; Develop a program that plays predefined melodies stored in memory, allowing users to compose and store their tunes.
;----------------------------------------------------------------------------------
; Assumptions:
; - Melodies are stored at memory address 3000H.
; - The length of each melody is 16 bytes.
; - The melody can be played by writing to a sound port at address 00H.
;----------------------------------------------------------------------------------

#ORG 3000H

; define constants
#MELODY_START EQU 3000H
#MELODY_LEN EQU 10H
#SOUND_PORT EQU 00H

; initialize the starting address of the melody
        LXI H, MELODY_START

        MVI B, MELODY_LEN ; length of melody

PLAY_MELODY:
        ; load melody data
        MOV A, M
        ; output to sound port
        OUT SOUND_PORT
        ; increment memory address
        INX H
        ; delay for a bit (simple loop for delay)
        CALL DELAY
        ; decrement counter
        DCR B
        JNZ PLAY_MELODY

HLT

DELAY:
        MVI C, 0FFH
DELAY_LOOP:
        DCR C
        JNZ DELAY_LOOP
        RET

;----------------------------------------------------------------------------------