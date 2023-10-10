.org 0x0054ca58
    jal         CheckComboAttackHam
    dmove       a0, s1
    beqz        v1, 0x0054cb88
    nop
    li          a1, 0x1
    bne         s0, a1, 0x0054cb88
    dmove       a0, s1
    li          a2, 0x4B
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054cb88
    nop