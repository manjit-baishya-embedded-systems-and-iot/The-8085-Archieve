;-------COPY DATA TO AND FROM OTHER REGISTERS AND MEMORY LOCATION-------
;-----------------------------------------------------------------------

#ORG 0000H

MVI A, 6CH      ; load REG A with data 6CH
MOV D,A         ; move data to D

MVI A, 00H      ; clear REG A

LXI H, 4050H    ; load HL REGISTER PAIR with data 4050H

MOV M,D         ; copy the data in REG D to memory location 4050H

MVI A,5DH       ; move data 5DH to REG A
STA 8745H       ; load the above data to memory location 8745H

MVI A, 00H      ; clear REG A

LXI H, 8745H    ; load HL REGISTER PAIR with data 8745H

MOV B,M         ; copy data from memory location 8745H to REGISTER B

HLT

;-----------------------------------------------------------------------