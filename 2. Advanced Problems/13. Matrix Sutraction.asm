; Problem Statement:-
;----------------------------------------------------------------------------------
; Implement matrix subtraction for two 2x2 matrices and store the result in memory.
;----------------------------------------------------------------------------------
; Assumptions:
; - The first matrix is stored at memory address 3000H.
; - The second matrix is stored at memory address 3010H.
; - The result matrix should be stored at memory address 3020H.
;----------------------------------------------------------------------------------

#ORG 0000H

; Define constants
#MATRIX1_START EQU 3000H
#MATRIX2_START EQU 3010H
#RESULT_START EQU 3020H

; Initialize first matrix (2x2)
MVI A, 03H
STA 3000H
MVI A, 02H
STA 3001H
MVI A, 01H
STA 3002H
MVI A, 04H
STA 3003H

; Initialize second matrix (2x2)
MVI A, 07H
STA 3010H
MVI A, 02H
STA 3011H
MVI A, 03H
STA 3012H
MVI A, 01H
STA 3013H

; Clear result matrix (2x2)
LXI H, RESULT_START
MVI A, 00H
STA 3020H
STA 3021H
STA 3022H
STA 3023H

; Matrix Subtraction
; C[i][j] = A[i][j] - B[i][j]

LXI H, MATRIX1_START
LXI D, MATRIX2_START
LXI B, RESULT_START

MVI C, 04H ; Number of elements in the matrices

SUB_LOOP:
    MOV A, M ; Load element from matrix1
    INX H
    MOV E, A ; Store in E

    MOV A, M ; Load element from matrix2
    INX D
    SUB E    ; Subtract element from matrix1
    MOV M, A ; Store result in the result matrix
    INX B    ; Move to next element in the result matrix

    DCR C    ; Decrement counter
    JNZ SUB_LOOP ; If counter is not zero, continue loop

HLT ; Halt the processor

;----------------------------------------------------------------------------------
