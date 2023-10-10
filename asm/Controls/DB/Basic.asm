.org 0x0054ce68
    jal         GetAttackButtonDB
    dmove       a0, s0
    beqz        v0, 0x0054d2e0
    nop
@@Both:
    li          v1, 0x3
    bne         v0, v1, @@Triangle
    nop
    dmove       a0, s0
    li          a1, 0x2
    jal         DB_ActSet
    dmove       a2, zero
    b           0x0054d2e0
    nop
@@Triangle:
    li          v1, 0x1
    bne         v0, v1, @@Circle
    nop
    dmove       a0, s0
    li          a1, 0x1
    li          a2, 0x55
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054d2e0
    nop
@@Circle:
    li          v1, 0x4
    bne         v0, v1, @@Left
    nop
    dmove       a0, s0
    dmove       a1, zero
    jal         DB_ActSet
    dmove       a2, zero
    b           0x0054d2e0
    nop
@@Left:
    li          v1, 0x2
    bne         v0, v1, 0x0054d2e0
    nop
    dmove       a0, s0
    li          a1, 0x1
    jal         DB_ActSet
    dmove       a2, zero
    b           0x0054d2e0
    nop