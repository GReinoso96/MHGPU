.org 0x0055cf6c
    jal         CheckLungeAttackDB
    dmove       a0, s0
    beqz        v0, 0x0055cfa8
    nop
    li          v0, 0x1
    b           0x0055cfa8
    sb          v0, 0x6(s0)