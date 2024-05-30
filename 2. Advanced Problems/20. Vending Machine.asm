; Problem Statement:-
;----------------------------------------------------------------------------------
; Develop a program in 8085 assembly language that simulates the operation of a vending machine, allowing users to select products and make payments.
;----------------------------------------------------------------------------------
; Assumptions:
; - The vending machine simulation includes a predefined set of products and prices.
; - Users interact with the vending machine through input switches or keypad inputs.
; - Products are dispensed when selected by the user and appropriate payment is made.
; - Payment can be made using coins or bills of predefined denominations.
; - Change is provided to the user if necessary.
; - The vending machine maintains an inventory of products and updates inventory levels after each transaction.
; - The program provides a user-friendly interface for selecting products and making payments.
; - The vending machine simulation is implemented using the 8085 microprocessor.
;----------------------------------------------------------------------------------

ORG 0000H

; Define product prices and inventory
PRODUCT1_PRICE EQU 10   ; Price of product 1 (in cents)
PRODUCT2_PRICE EQU 20   ; Price of product 2 (in cents)
PRODUCT1_INVENTORY EQU 10   ; Initial inventory of product 1
PRODUCT2_INVENTORY EQU 5   ; Initial inventory of product 2

; Define coin and bill denominations
COIN1_VALUE EQU 5   ; Value of coin 1 (in cents)
COIN2_VALUE EQU 10   ; Value of coin 2 (in cents)
BILL_VALUE EQU 100   ; Value of bill (in cents)

; Main program
MAIN:
    ; Add main program code here
    ; This is where the main functionality of the vending machine simulator resides
    ; Implement user interface, product selection, payment processing, etc.
    ; Ensure that the program continuously runs and responds to user inputs
    JMP MAIN   ; Infinite loop

END

;----------------------------------------------------------------------------------