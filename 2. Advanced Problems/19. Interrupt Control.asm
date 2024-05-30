; Problem Statement:-
;----------------------------------------------------------------------------------
; Implement a program in 8085 assembly language to handle hardware interrupts, specifically timer interrupts and external interrupts from peripheral devices.
;----------------------------------------------------------------------------------
; Assumptions:
; - The program is designed to handle both timer interrupts and external interrupts.
; - Timer interrupts are generated at regular intervals by an external timer device.
; - External interrupts are triggered by peripheral devices such as sensors or input switches.
; - Interrupt service routines (ISRs) are implemented to handle each type of interrupt.
; - The 8085 microprocessor is used for interrupt handling.
; - The program includes initialization routines to configure interrupt settings and enable interrupts.
;----------------------------------------------------------------------------------

ORG 0000H

; Define interrupt vector addresses
TIMER_ISR_ADDR EQU 0008H   ; Timer interrupt service routine address
EXTERNAL_ISR_ADDR EQU 0010H   ; External interrupt service routine address

; Initialize interrupt settings
MVI A, 00000110B   ; Enable timer interrupt and external interrupt
OUT 0A8H, A   ; Enable interrupt

; Jump to main program
JMP MAIN

; Timer interrupt service routine
TIMER_ISR:
    ; Add timer interrupt handling code here
    ; This routine will be executed when a timer interrupt occurs
    RETI   ; Return from interrupt

; External interrupt service routine
EXTERNAL_ISR:
    ; Add external interrupt handling code here
    ; This routine will be executed when an external interrupt occurs
    RETI   ; Return from interrupt

; Main program
MAIN:
    ; Add main program code here
    ; This is where the main functionality of the program resides
    ; Ensure that the program continuously runs and handles interrupts
    JMP MAIN   ; Infinite loop

END

;----------------------------------------------------------------------------------