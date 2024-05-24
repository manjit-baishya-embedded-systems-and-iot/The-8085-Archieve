;--------------COPYING DATA FROM ONE REGISTER TO ANOTHER--------------
;---------------------------------------------------------------------

; --- defining starting point
#ORG 0000H

MVI A, 72H  ; moving 72H to REGISTER A

MOV B,A     ; copying 72H from REGISTER A to REGISTER B
MOV C,B     ; copying 72H from REGISTER B to REGISTER C

HLT

;--------------------------------------------------------------------