;----------------CALL INSTRUCTION-----------------------
;--------------------------------------------------------

#ORG 0000H

MVI A, 0AH      ; Load A register with value 0AH

; Call a subroutine to perform some specific task
CALL SUBROUTINE_ADDRESS   ; Call the subroutine at SUBROUTINE_ADDRESS

; After the subroutine returns, execution continues here

HLT

; Subroutine definition
SUBROUTINE_ADDRESS:
    ; Subroutine instructions here
    ; For demonstration, let's load A with a different value
    MVI A, 05H  ; Load A with value 05H

RET             ; Return from subroutine and continue execution from the instruction after the CALL

;--------------------------------------------------------