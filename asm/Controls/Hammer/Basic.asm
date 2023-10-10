.org 0x0054d0d0
    jal         GetAttackButtonHam
    dmove       a0, s0
    beqz        v0, 0x0054d2e0
    nop
    li          v1, 0x1
    beq         v0, v1, @@DoSlam
    nop
    b           @@DoSlap
    nop
@@DoSlam:
    li          a1, 0x1
    li          a2, 0x17
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054d2e0
    nop
@@DoSlap:
    li          a1, 0x1
    li          a2, 0x16
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054d2e0
    nop