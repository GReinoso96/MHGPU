.org 0x0054d018
    jal         GetAttackButtonLance
    dmove       a0, s0
    beqz        v0, 0x0054d2e0
    nop
    li          v1, 0x4
    beq         v0, v1, 0x0054d2e0
    nop
@@Charge:
    li          v1, 0x3
    bne         v0, v1, @@Triangle
    nop
    li          a1, 0x1
    li          a2, 0x22
    jal         Pl_ActSet
    li          a3, 0xC
    b           0x0054d2e0
    nop
@@Triangle:
    li          v1, 0x1
    bne         v0, v1, @@Circle
    nop
    li          a1, 0x1
    li          a2, 0x24
    jal         Pl_ActSet
    li          a3, 0xC
    b           0x0054d2e0
    nop
@@Circle:
    li          a1, 0x1
    li          a2, 0x2D
    jal         Pl_ActSet
    li          a3, 0xC
    b           0x0054d2e0
    nop