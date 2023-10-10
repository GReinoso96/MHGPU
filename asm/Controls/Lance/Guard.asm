.org 0x0054d390
    jal         CheckGuardAttackLance
    dmove       a0, s0
    beqz        v1, 0x0054d460
    nop
    li          v0, 0x2
    beq         v1, v0, @@Charge
    li          a1, 0x1
@@Poke:
    li          a2, 0x28
    jal         Pl_ActSet
    li          a3, 0xC
    b           0x0054d460
    nop
@@Charge:
    li          a2, 0x22
    jal         Pl_ActSet
    li          a3, 0xC
    b           0x0054d460
    nop