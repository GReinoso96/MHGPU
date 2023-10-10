.org 0x0054cf40
    jal         GetAttackButtonGS
    dmove       a0, s0
    beqz        v0, 0x0054d2e0
    nop
@@Kick:
    li          v1, 0x4
    bne         v0, v1, @@Both
    nop
    li          a1, 0x1
    li          a2, 0xE
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054d2e0
    nop
@@Both:
    li          v1, 0x3
    bne         v0, v1, @@Triangle
    nop
    li          a1, 0x1
    li          a2, 0x1
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054d2e0
    nop
@@Triangle:
    li          v1, 0x1
    bne         v0, v1, @@Circle
    nop
    li          a1, 0x1
    li          a2, 0x4
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054d2e0
    nop
@@Circle:
    li          a1, 0x1
    li          a2, 0x0
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054d2e0
    nop