.definelabel SnS_Combo,.
    addiu   sp, sp, -0x40
    sd      ra, 0x30(sp)
    sq      s1, 0x20(sp)
    sq      s0, 0x10(sp)
    li      a2, 0x1
    dmove   s1, a0
    swcl    f20, 0x0(sp)
    lbu     v1, 0x5(a0)
    beq     v1, a2, @@CheckInput
    dmove   s0, a1
    beqz    v1, @@DoAnim
    nop
    b       @@End
    nop
@@DoAnim:
    addiu   v0, v1, 0x1
    sb      v0, 0x5(s1)
    dmove   a1, zero
    dmove   a3, zero
    jal     Pl_BasicFlagSet
    sb      zero, 0x7(s1)
    li      a2, 0x4
    beq     s0, a2, @@DoFour
    li      v1, 0x3
    beq     s0, v1, @@DoThree
    li      a0, 0x2
    beq     s0, a0, @@DoTwo
    li      v1, 0x1
    beq     s0, v1, @@DoOne
    nop
    beqz    s0, @@DoZero
    nop
    b       @@End
    nop
@@DoZero: ; Combo 1
    dmvoe   a0, s1
    li      a1, 0x579
    jal     Pl_ChrSet2
    dmove   a3, zero
    dmove   a0, s1
    jal     Shell00_Set
    li      a1, 0x15
    b       @@End
    nop
@@DoOne: ; Combo 2
    dmove   a2, a0
    dmove   a0, s1
    li      a1, 0x57A
    jal     Pl_ChrSet2
    dmove   a3, zero
    dmove   a0, s1
    jal     Shell00_Set
    li      a1, 0x19
    b       @@End
    nop
@@DoTwo: ; Combo 3
    dmove   a2, a0
    dmove   a0, s1
    li      a1, 0x57B
    jal     Pl_ChrSet2
    dmove   a3, zero
    dmove   a0, s1
    jal     Shell00_Set
    li      a1, 0x1A
    b       @@End
    nop
@@DoThree: ; Combo 1
    dmove   a0, s1
    li      a1, 0x579
    li      a2, 0xC
    jal     Pl_ChrSet2
    dmove   a3, zero
    dmove   a0, s1
    jal     Shell00_Set
    li      a1, 0x15
    b       @@End
    nop
@@DoFour: ; Combo 1
    dmove   a0, s1
    li      a1, 0x579
    li      a2, 0x2
    jal     Pl_ChrSet2
    li      a3, 0xA
    dmove   a0, s1
    jal     Shell00_Set
    li      a1, 0x15
    dmove   a0, s1
    li      a1, 0x8
    jal     Eft05_Set
    li      a2, 0x1
    b       @@End
    nop
@@End:
    ld      ra, 0x30(sp)
    lq      s1, 0x20(sp)
    lwcl    f20, 0x0(sp)
    lq      s0, 0x10(sp)
    jr      ra
    addiu   sp, sp, 0x40