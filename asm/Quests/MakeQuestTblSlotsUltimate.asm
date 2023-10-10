.align 4
.definelabel PickQuestsVillage,.
    addiu   sp, sp, -0x120
    sd      ra, 0x90(sp)
    sq      s8, 0x80(sp)
    sq      s7, 0x70(sp)
    sq      s6, 0x60(sp)
    sq      s5, 0x50(sp)
    sq      s4, 0x40(sp)
    sq      s3, 0x30(sp)
    sq      s2, 0x20(sp)
    sq      s1, 0x10(sp)
    sq      s0, 0x0(sp)
@@SetPages:
    li      s4, 0x006534e0
    li      v1, 0x8
    sb      v1, 0x0(s4)
    sb      v1, 0x1(s4)
    sb      v1, 0x2(s4)
    sb      v1, 0x3(s4)
    sb      v1, 0x4(s4)
@@OneStar:
    li      s4, 0x00653510
    li      v0, 10001
    sh      v0, 0x0(s4)
    li      v0, 10003
    sh      v0, 0x2(s4)
    li      v0, 10005
    sh      v0, 0x4(s4)
    li      v0, 10006
    sh      v0, 0x6(s4)
    li      v0, 10007
    sh      v0, 0x8(s4)
    li      v0, 10008
    sh      v0, 0xA(s4)
    li      v0, 10009
    sh      v0, 0xC(s4)
    li      v0, 10010
    sh      v0, 0xE(s4)
@@ThreeStar:
    li      s4, 0x00653510
    li      v0, 10001
    sh      v0, 0x0(s4)
    li      v0, 10003
    sh      v0, 0x2(s4)
    li      v0, 10005
    sh      v0, 0x4(s4)
    li      v0, 10006
    sh      v0, 0x6(s4)
    li      v0, 10007
    sh      v0, 0x8(s4)
    li      v0, 10008
    sh      v0, 0xA(s4)
    li      v0, 10009
    sh      v0, 0xC(s4)
    li      v0, 10010
    sh      v0, 0xE(s4)
@@End:
    ld      ra, 0x90(sp)
    lq      s8, 0x80(sp)
    lq      s7, 0x70(sp)
    lq      s6, 0x60(sp)
    lq      s5, 0x50(sp)
    lq      s4, 0x40(sp)
    lq      s3, 0x30(sp)
    lq      s2, 0x20(sp)
    lq      s1, 0x10(sp)
    lq      s0, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x120
.definelabel MakeQuestInject,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    jal     0x0055f210
    nop
    jal     PickQuestsVillage
    nop
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10
.definelabel PickQuestTwo,. ; 0x7F: Half
    addiu   sp, sp, -0x50
    sd      ra, 0x30(sp)
    sq      s2, 0x20(sp)
    sq      s1, 0x10(sp)
    sq      s0, 0x0(sp)
    dmove   s0, a0
    dmove   s1, a1
    dmove   s2, a2
@@Do:
    jal     Ran_Suu
    li      a0, 0x1
    sh      v0, 0x40(sp)
    lbu     v1, 0x40(sp)
@@PickQuest:
    sltu    v0, v1, s2
    beqz    v0, @@End
    dmove   v0, s1
    dmove   v0, s0
@@End:
    ld      ra, 0x30(sp)
    lq      s2, 0x20(sp)
    lq      s1, 0x10(sp)
    lq      s0, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x50
.definelabel PickQuestThree,.
    addiu   sp, sp, -0x50
    sd      ra, 0x30(sp)
    sq      s2, 0x20(sp)
    sq      s1, 0x10(sp)
    sq      s0, 0x0(sp)
    dmove   s0, a0
    dmove   s1, a1
    dmove   s2, a2
@@Do:
    jal     Ran_Suu
    li      a0, 0x1
    sh      v0, 0x40(sp)
    lbu     v1, 0x40(sp)
@@PickQuest:
    sltiu   v0, v1, 0x55
    beqz    v0, @@PickOneOrOther
    nop
    b       @@End
    dmove   v0, s1
@@PickOneOrOther:
    sltiu   v0, v1, 0xAA
    beqz    v0, @@End
    dmove   v0, s0
    dmove   v0, s2
@@End:
    ld      ra, 0x30(sp)
    lq      s2, 0x20(sp)
    lq      s1, 0x10(sp)
    lq      s0, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x50