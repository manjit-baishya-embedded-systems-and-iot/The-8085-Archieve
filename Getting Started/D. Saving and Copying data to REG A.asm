;------COPYING AND SAVING DATA TO AND FROM REGISTER A------
;----------------------------------------------------------

; --- defining starting point
#ORG 0000H

MVI A, 34H      ; loading REGISTER A with data 34H
STA 2050H       ; loading MEMORY LOCATION 2050H with data in A

MVI A, 00H      ; clearing REGISTER A

LDA 2050H       ; loading REGISTER A with data in 2050H

HLT

;----------------------------------------------------------