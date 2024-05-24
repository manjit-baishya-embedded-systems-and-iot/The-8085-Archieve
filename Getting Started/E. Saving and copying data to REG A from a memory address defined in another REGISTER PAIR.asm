;------COPYING DATA TO AND FROM REGISTER A TO MEMORY LOCATION DEFINED BY A REGISTER PAIR------
;---------------------------------------------------------------------------------------------

; --- defining starting point
#ORG 0000H

MVI A, 67H      ; load REGISTER A with data 67H
STA 2569H       ; store data in REGISTER A to memory location 2569H

MVI A, 00H      ; clear REGISTER A
LXI B, 2569H    ; load REGISTER PAIR B|C with data 2569H || B = 25H C = 69H 

LDAX B          ; load REGISTER A with data in memory location pointed by the data prsent in REGISTER PAIR B|C

LXI D, 93E5H    ; load REGISTER PAIR D|E with data 93E5H || D = 93H E = E5H
STAX D          ; load REGISTER A with data in memory location pointed by the data prsent in REGISTER PAIR D|E

HLT

;---------------------------------------------------------------------------------------------