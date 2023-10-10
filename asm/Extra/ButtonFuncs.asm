.align 4
.definelabel CheckSoncho,.
    li      v0, OptScheme
    lbu     v0, 0x0(v0)
    beqz    v0, @@Analog
    nop
    andi    v0, s0, 0xFFFF
    andi    v0, v0, BtnR3
    b       @@End
    nop
@@Analog:
    andi    v0, s0, 0xFFFF
    andi    v0, v0, 0x100
@@End:
    jr      ra
    nop

.definelabel MapMoveCheck,.
    lw      a1, -0x3934(gp)
    lbu     v1, 0x8A(a1)
    bnez    v1, @@End
    nop
    lbu     v1, 0x88(a1)
    bnez    v1, @@End
    li      v1, OptScheme
    lbu     v1, 0x0(v1)
    beqz    v1, @@Analog
    nop
    andi    v1, a0, 0xFFFF
    b       @@Do
    andi    v1, v1, BtnL3
@@Analog:
    andi    v1, a0, 0xFFFF
    andi    v1, v1, BtnSelect
@@Do:
    beqz    v1, @@End
    nop
    lbu     v1, 0x3E(a1)
    xori    v1, v1, 0x1
    sb      v1, 0x3E(a1)
    nop
@@End:
    jr      ra
    nop

.definelabel ChatCheckGame,.
    li      v1, OptScheme
    lb      v1, 0x0(v1)
    beqz    v1, @@DoAnalog
    nop
@@DoFace:
    andi    v1, s1, 0xFFFF
    b       @@End
    andi    v1, v1, BtnR3
@@DoAnalog:
    andi    v1, s1, 0xFFFF
    andi    v1, v1, 0x100
@@End:
    jr      ra
    nop

.definelabel ChatCheckLB,.
    li      v1, OptScheme
    lb      v1, 0x0(v1)
    beqz    v1, @@DoAnalog
    nop
@@DoFace:
    andi    v1, s0, 0xFFFF
    b       @@End
    andi    v1, v1, BtnR3
@@DoAnalog:
    andi    v1, s0, 0xFFFF
    andi    v1, v1, 0x100
@@End:
    jr      ra
    nop