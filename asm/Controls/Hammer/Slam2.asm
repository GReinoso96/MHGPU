.org 0x0055c094
    jal         CheckComboAttackHam
    dmove       a0, s0
    beqz        v0, 0x0055c0c8
    nop
    li          v0, 0x1
    b           0x0055c0c8
    sw          v0, 0x8(s0)