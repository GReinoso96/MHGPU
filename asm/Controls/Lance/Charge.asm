.org 0x0055a23c
    jal         CheckChargeStopLance
    dmove       a0, s0
    li          v0, 0x1
    beq         v1, v0, @@Stop
    nop
    li          v0, 0x2
    beq         v1, v0, @@Attack
    nop
    b           0x0055a2a0
    nop
@@Stop:
    li          a1, 0x1
    li          a2, 0x23
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055a2a0
    nop
@@Attack:
    li          a1, 0x1
    li          a2, 0x4A
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0055a2a0
    nop