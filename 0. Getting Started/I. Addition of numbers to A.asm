;---------------PEROFMRING ADDITION WITH DATA AND MEMORY----------------
;-----------------------------------------------------------------------

#ORG 0000H

MVI A, 32H      ; loading 32H into A
STA 50FCH       ; loading 32h to MEMORY LOCATION 50FCH

LXI H, 50FCH    ; loading HL pair with data 50FCH
MVI A, 12H      ; loading A with data 12H

ADI 56H         ; add 56H to A >>> 12H + 56H
ADD M           ; add data in M (50FCH) to A

HLT

;-----------------------------------------------------------------------