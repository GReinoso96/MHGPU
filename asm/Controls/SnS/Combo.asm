.org 0x0055b118
    jal         GetAttackButtonSnS
    dmove       a0, s1
    beqz        v0, 0x0055b188 ; Continue
    nop
@@Triangle:
    li          v1, 0x1
    bne         v0, v1, @@Circle
    nop
    b           0x0055b188 ; Continue
    sb          v1, 0x6(s1)
@@Circle:
    li          v1, 0x2
    bne         v0, v1, 0x0055b188 ; Continue
    nop
    b           0x0055b188 ; Continue
    sb          v1, 0x6(s1)