.org 0x001d9ec0
    jal         CheckSidesG
    nop
.org 0x001d9ed0
    jal         CheckCamNew
    nop
    b           0x001d9ff8
    nop

;.org 0x001d9f30
;    jal         CamDigitalL1
;    nop

.org 0x001da0d0 ; Down 1
    jal         CheckCamDown
    nop
.org 0x001da0f8 ; Up 1
    jal         CheckCamUp
    nop
.org 0x001da128 ; Up 2
    jal         CheckCamUp
    nop
.org 0x001da150 ; Down 2
    jal         CheckCamDown
    nop