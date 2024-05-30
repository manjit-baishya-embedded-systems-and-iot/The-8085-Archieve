; Problem Statement:-
;----------------------------------------------------------------------------------
; Build a system that reads temperature data from a sensor and controls cooling/heating devices to maintain a target temperature range.
;----------------------------------------------------------------------------------
; Assumptions:
; - Temperature data is read from a sensor interfaced at port 00H.
; - Target temperature is 25 degrees Celsius.
; - Cooling device is controlled via port 01H.
; - Heating device is controlled via port 02H.
;----------------------------------------------------------------------------------

#ORG 3000H

; define constants
#TEMP_SENSOR_PORT EQU 00H
#COOLING_PORT EQU 01H
#HEATING_PORT EQU 02H
#TARGET_TEMP EQU 19H ; 25 degrees Celsius in hex

READ_TEMP:
        ; read temperature from sensor
        IN TEMP_SENSOR_PORT
        MOV B, A

        ; compare with target temperature
        CPI TARGET_TEMP
        JZ MAINTAIN_TEMP

        ; if temperature is higher, activate cooling
        JC ACTIVATE_COOLING

        ; if temperature is lower, activate heating
ACTIVATE_HEATING:
        MVI A, 01H
        OUT HEATING_PORT
        JMP READ_TEMP

ACTIVATE_COOLING:
        MVI A, 01H
        OUT COOLING_PORT
        JMP READ_TEMP

MAINTAIN_TEMP:
        MVI A, 00H
        OUT COOLING_PORT
        OUT HEATING_PORT
        JMP READ_TEMP

HLT

;----------------------------------------------------------------------------------