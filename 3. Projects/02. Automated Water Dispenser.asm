; Problem Statement:-
;-------------------------------------------------------------------------
;   Automated Water Dispenser:
;-------------------------------------------------------------------------
;   Implement a program to dispense a specific amount of water from a 
;   dispenser when a button is pressed. Water level is monitored 
;   through port 03H.
;-------------------------------------------------------------------------

#ORG 3000H

start:
    ; Check if button is pressed
    IN 03H
    CPI 01H
    JNZ button_not_pressed

    ; Dispense water
    MVI A, 01H
    OUT A

button_not_pressed:
    
    ; Stop dispensing water
    MVI A, 00H
    OUT A
    
    JMP start

HLT

;-------------------------------------------------------------------------

