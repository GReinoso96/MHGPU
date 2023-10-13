.org 0x00556928
    jal     CheckHopActLance
    dmove   a0, s1

.org 0x00556990
    jal     CheckHopLance
    dmove   a0, s1
    beqz    at, 0x005569e0
    li      a0, 0x2
    beq     at, a0, @@High
    nop
    dmove   a0, s1
    li      a1, 0x1
    li      a2, 0x24
    jal     Pl_ActSet
    li      a3, 0xC
    b       0x005569e0
    nop
@@High:
    dmove   a0, s1
    li      a1, 0x1
    li      a2, 0x2D
    jal     Pl_ActSet
    li      a3, 0xC
    b       0x005569e0
    nop