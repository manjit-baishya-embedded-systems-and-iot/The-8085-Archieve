;-------------------------------------------------------------------------
;   Smart Lighting System:
;   Control a set of 8 lights in a house, ensuring only the lights in 
;   occupied rooms are on. Assume lights are controlled via port 02H.
;-------------------------------------------------------------------------

#ORG 3000H

start:
    ; Move occupancy data to A
    MVI A, 0FH

    ; Read room occupancy status from port 02H and mask
    IN 02H
    ANA A

    ; Jump to turn_on_light label if any room is occupied
    JZ no_occupied_room

    ; Turn on lights in occupied rooms
    MOV A, E     ; Assuming E holds the room occupancy status
    OUT 02H

no_occupied_room:
    ; No occupied room, keep lights off
    JMP start

HLT

;-------------------------------------------------------------------------

