.org 0x0055d15c
    jal         GetAttackButtonDB
    dmove       a0, s0
    beqz        v0, 0x0055d1c8
    nop
@@Triangle:
    li          v1, 0x1
    bne         v0, v1, @@Circle
    nop
    b           @@End
    li          v0, 1
@@Circle:
    li          v1, 0x4
    bne         v0, v1, @@Left
    nop
    b           @@End
    li          v0, 2
@@Left:
    li          v1, 0x2
    bne         v0, v1, 0x0055d1c8
    nop
    li          v0, 3
@@End:
    b           0x0055d1c8
    sb          v0, 0x6(s0)