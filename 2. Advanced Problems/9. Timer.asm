; Problem Statement:-
;----------------------------------------------------------------------------------
; Create a timer program that displays the remaining time on a seven-segment display.
;----------------------------------------------------------------------------------
; Assumptions:
; - Counter data is stored in memory.
; - The display is interfaced at port 00H.
;----------------------------------------------------------------------------------

#ORG 3000H

; define constants
#TIME_START EQU 3000H

; seven-segment display encoding for 0 to F
SEVEN_SEG_TABLE:
        DB 3FH ; 0
        DB 06H ; 1
        DB 5BH ; 2
        DB 4FH ; 3
        DB 66H ; 4
        DB 6DH ; 5
        DB 7DH ; 6
        DB 07H ; 7
        DB 7FH ; 8
        DB 6FH ; 9
        DB 77H ; A
        DB 7CH ; B
        DB 39H ; C
        DB 5EH ; D
        DB 79H ; E
        DB 71H ; F

; initialize time data to F
        MVI A, 0FH
        STA TIME_START

DISPLAY_LOOP:
        ; load the current timer value
        LDA TIME_START

        ; convert the value to seven-segment display encoding
        MOV L, A
        LXI H, SEVEN_SEG_TABLE
        MOV A, M

        ; output the seven-segment encoding to the display ports
        MOV B, 08H ; loop counter for segments 0 to 7
OUTPUT_LOOP:
        MOV C, B
        MOV D, A
        RLC
        JNC SKIP
        OUT 00H
SKIP:
        MOV A, D
        RAR
        DCR B
        JNZ OUTPUT_LOOP

        ; delay for a second
        CALL DELAY

        ; update the timer (decrement)
        CALL UPDATE_TIMER

        ; check if timer has reached zero
        LDA TIME_START
        CPI 00H
        JZ TIMER_END

        JMP DISPLAY_LOOP

TIMER_END:
        HLT

DELAY:
        MVI C, 0FFH
DELAY_LOOP:
        DCR C
        JNZ DELAY_LOOP
        RET

UPDATE_TIMER:
        ; decrement the timer value
        LDA TIME_START
        DCR A
        STA TIME_START
        RET

;----------------------------------------------------------------------------------
