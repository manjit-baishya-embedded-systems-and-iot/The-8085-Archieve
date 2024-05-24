;----------------PEROFMRING ADDITION WITH REGISTERS----------------
;------------------------------------------------------------------
;--[NOTE]: Addition is possible between A and other REGISTERs only.

#ORG 0000H

MVI A, 32H      ; load A with 32H
MVI B, 0F2H     ; load B with F2H
MVI C, 4EH      ; load C with 4EH

ADD B           ; add the contents of B to A and save the sum to A
ADD C           ; add the contents of C to A and save the sum to A

HLT
;------------------------------------------------------------------