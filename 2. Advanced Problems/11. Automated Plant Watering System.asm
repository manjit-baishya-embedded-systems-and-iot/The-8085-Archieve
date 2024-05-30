; Problem Statement:-
;----------------------------------------------------------------------------------
; Implement a program in 8085 assembly language to control an automated plant watering system based on soil moisture levels.
;----------------------------------------------------------------------------------
; Assumptions:
; - Soil moisture level is read from an input port connected to the soil moisture sensor.
; - Water pump control is performed through an output port connected to a relay module controlling the water pump.
; - Soil moisture level is represented as a single byte (0x00 for dry, 0xFF for wet).
; - Threshold for activating the water pump is set to a specific moisture level (e.g., 0x40).
; - Continuous monitoring and watering functionality is required.
; - The 8085 microprocessor is used for system control.
;----------------------------------------------------------------------------------

#ORG 0000H

; Initialize ports
MAIN:
    MVI A, 00H       ; Initialize port data
    OUT XXH          ; Output to port

LOOP:
    IN XXH           ; Read soil moisture from port
    CPI 00H          ; Compare with desired moisture level
    JZ TURN_ON_PUMP  ; Jump if moisture is low
    JMP LOOP         ; Otherwise, continue loop

TURN_ON_PUMP:
    MVI A, FFH       ; Activate pump
    OUT YYH          ; Output to pump control port
    JMP LOOP         ; Continue monitoring

HLT

;----------------------------------------------------------------------------------