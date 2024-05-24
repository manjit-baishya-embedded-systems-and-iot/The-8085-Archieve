;Problem Statement:-
;-------------------------------------------------------------------------
;   Let us consider that the temperatur today is going to be very high. 
;   There are 8 electrical appliances in a house randing from clloers, 
;   fans and ACs. In order to avoid voltage overload, design a program 
;   to allow only the AC in the largest room to be switched on (D7), 
;   while the rest will be kept turned off even if they were turned on!
;  
;   ----Assume, AC is connected to 01H and 9DH is the switch sequence.----
;-------------------------------------------------------------------------

#ORG 3000H

; to loop back to start
start:

    ; move b[1000 0000] to A
    MVI A, 80H

    ; move switch data to B
    MVI B, 9DH

    ; AND operation between A and B and save data to A
    ANA B

    ; jump to "switch_on_AC" if sign flag = 1
    JZ switch_on_AC

    ; if if sign flag != 1 go back to start
    JMP start

; defining the label
switch_on_AC:

    ; move 01H to A
    MVI A, 01H

    ; send 01H to serial port 01H to start the AC
    OUT 01H

    ; go back to start
    JMP start

HLT

;------------------------------------------------------------------