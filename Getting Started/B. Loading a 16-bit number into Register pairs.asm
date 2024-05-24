;--------------LOADING 16-BIT DIGITS INTO REGISTER PAIRS--------------
;---------------------------------------------------------------------

; --- defining starting point
#ORG 0000H

; --- move [16-bit Hexadecimal] data to [REGISTER PAIR]
LXI B, 2F6CH        ; load 6C in REGISTER (C) and 2F in REGISTER (B)
LXI D, 5564H        ; load 64 in REGISTER (E) and 55 in REGISTER (D)
LXI H, 87C3H        ; load C3 in REGISTER (L) and 87 in REGISTER (H)

; --- hault the program
HLT

;---------------------------------------------------------------------