;Problem Statement:-
;----------------------------------------------------------------------------------
;   Let us consider that it is currently very hot. A few guests are coming 
;   over but they are not the typical ones that you like! There are 8 electrical 
;   appliances in a house ranging from coolers, fans and ACs. You do not intent 
;   to switch on the AC (D7) for them, but they are like the ones that do not 
;   know boundaries. So, they may even go themselves and switch on the AC! Make 
;   a program to keep the AC off while the rest will be kept turned on or off
;   as per the switches!
;  
;   --------Assume, AC is connected to 01H and 9DH is the switch sequence.---------
;----------------------------------------------------------------------------------

#ORG 3000H

; to loop back to start
start:

    ; move b[1000 0000] to A
    MVI A, 7FH

    ; move switch data to B
    MVI B, 0DCH

    ; AND operation between A and B and save data to A
    ANA B

    ; jump to "switch_off_AC" if sign flag != 1
    JNZ switch_off_AC

    ; if if sign flag = 1 go back to start
    JMP start

; defining the label
switch_off_AC:

    ; move 01H to A
    MVI A, 00H

    ; send 01H to serial port 01H to start the AC
    OUT 01H

    ; go back to start
    JMP start

HLT

;------------------------------------------------------------------