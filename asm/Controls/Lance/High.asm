.org 0x0055adc8
    li          v1, 0x2
    beq         s0, v1, 0x0055ae78
    nop
    jal         GetAttackButtonLance
    dmove       a0, s1
    li          v1, 0x1
    beq         v0, v1, @@DoMedium
    nop
    li          v1, 0x2
    beq         v0, v1, @@DoHigh
    nop
    b           0x0055ae78
    nop
@@DoMedium:
    li          a1, 0x1
    bne         s0, a1, @@DoMedTwo
    nop
    li          a2, 0x36
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055ae78
    nop
@@DoMedTwo:
    li          a2, 0x35
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055ae78
    nop
@@DoHigh:
    li          a1, 0x1
    bne         s0, a1, @@DoHighTwo
    nop
    li          a2, 0x3C
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055ae78
    nop
@@DoHighTwo:
    li          a2, 0x3B
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055ae78
    nop