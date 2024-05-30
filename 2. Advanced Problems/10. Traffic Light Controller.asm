; Problem Statement:-
;----------------------------------------------------------------------------------
; Design a program to control the sequence of traffic lights at an intersection, simulating different traffic scenarios.
;----------------------------------------------------------------------------------
; Assumptions:
; - Traffic lights are interfaced at specific ports.
; - Timing and sequence of lights are predefined.
;----------------------------------------------------------------------------------

#ORG 3000H

; define constants
#RED_LIGHT_PORT EQU 00H
#YELLOW_LIGHT_PORT EQU 01H
#GREEN_LIGHT_PORT EQU 02H

; define light sequences
        MVI A, 01H ; Red light on
        OUT RED_LIGHT_PORT
        CALL DELAY

        MVI A, 01H ; Green light on
        OUT GREEN_LIGHT_PORT
        CALL DELAY

        MVI A, 01H ; Yellow light on
        OUT YELLOW_LIGHT_PORT
        CALL DELAY

        JMP START

DELAY:
        MVI C, 0FFH
DELAY_LOOP:
        DCR C
        JNZ DELAY_LOOP
        RET

HLT

;----------------------------------------------------------------------------------