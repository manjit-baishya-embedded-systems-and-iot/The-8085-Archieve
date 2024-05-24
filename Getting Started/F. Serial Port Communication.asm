;----------------------SERIAL PORT COMMUNICATION----------------------
;---------------------------------------------------------------------

#ORG 0000H

MVI A, 67H      ; loading A with data 67H
OUT 90H         ; sending out data in A (67H) to output location 90H

MVI A, 3CH      ; loading A with data 3CH
OUT 6CH         ; sending out data in A (3CH) to output location 6CH

MVI A, 00H      ; clearing out A
IN 67H          ; loading data to A from input location 67H

HLT

;---------------------------------------------------------------------