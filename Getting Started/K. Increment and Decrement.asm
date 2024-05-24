;----------------INCREMENT AND DECREMENT OPERATORS-----------------------
;------------------------------------------------------------------------

#ORG 0000H

MVI D, 67H      ; load 67H to REGISTER D
INR D           ; increment D >>> 68H
DCR D           ; decrement D >>> 67H

MVI A, 8EH      ; load A with 8EH
STA 89FCH       ; load the data in A (8EH) to memory location 89FCH
LXI H, 89FCH    ; load 89FCH to HL
INR M           ; increment data in memory location pointed by HL Pair
DCR M           ; decrement data in memory location pointed by HL Pair

LXI B, 89FCH    ; load 89FCH to register pair BC
INX B           ; increment data in BC PAIR || 89FCH >>> 89FDH 
DCX B           ; decrement data in BC PAIR || 89FDH >>> 89FCH

HLT

;------------------------------------------------------------------------