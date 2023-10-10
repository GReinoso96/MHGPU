.org 0x0055bc0c
    jal         GetAttackButtonSnS
    dmove       a0, s0
    beqz        v0, 0x0055bc78 ; Continue
    nop
@@Triangle:
    li          v1, 0x1
    bne         v0, v1, @@Circle
    nop
    b           0x0055bc78 ; Continue
    sb          v1, 0x6(s0)
@@Circle:
    li          v1, 0x2
    bne         v0, v1, 0x0055bc78 ; Continue
    nop
    b           0x0055bc78 ; Continue
    sb          v1, 0x6(s0)