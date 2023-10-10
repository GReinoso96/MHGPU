.org 0x00558e64
    jal         CheckComboAttackHam
    dmove       a0, s0
    beqz        v1, 0x00558e98
    nop
    li          v1, 0x1
    b           0x00558e98
    sw          v1, 0x8(s0)