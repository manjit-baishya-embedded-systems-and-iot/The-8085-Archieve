;-----ADDITION OF TWO 8-BIT NUMBERS WITH CARRY-----
;--------------------------------------------------

ORG 0000H	; start point 0000H
MVI A, F0H	; move FFH to A
MVI B, 05H	; move 05H to B

ADD B	    ; add B to A

JNC NO_CARRY  ; jump to NO_CARRY if CARRY flag is not high

;----- execute this part only if there is a carry
LXI H, 2000H
MVI M, 01H
INR A
STA 2001H

;----- execute this part when ther is no carry
NO_CARRY:
    STA 2000H

HLT         ; hault the program

;--------------------------------------------------