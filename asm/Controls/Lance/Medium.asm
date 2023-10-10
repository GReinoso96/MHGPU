.org 0x0055a6d0
    li          v1, 0x3
    beq         s0, v1, 0x0055a788
    nop
    jal         GetAttackButtonLance
    dmove       a0, s1
    li          v1, 0x1
    beq         v0, v1, @@DoMedium
    nop
    li          v1, 0x2
    beq         v0, v1, @@DoHigh
    nop
    b           0x0055a788
    nop
@@DoMedium:
    li          a1, 0x2
    bne         s0, a1, @@DoMedTwo
    nop
    li          a1, 0x1
    li          a2, 0x36
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055a788
    nop
@@DoMedTwo:
    li          a1, 0x1
    li          a2, 0x35
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055a788
    nop
@@DoHigh:
    li          a1, 0x2
    bne         s0, a1, @@DoHighTwo
    nop
    li          a1, 0x1
    li          a2, 0x3C
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055a788
    nop
@@DoHighTwo:
    li          a1, 0x1
    li          a2, 0x3B
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055a788
    nop