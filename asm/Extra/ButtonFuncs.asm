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
    li      v1, OptScheme
    lbu     v1, 0x0(v1)
    beqz    v1, @@Analog
    nop
    andi    v1, a0, 0xFFFF
    b       @@End
    andi    v1, v1, BtnL3
@@Analog:
    andi    v1, a0, 0xFFFF
    andi    v1, v1, BtnSelect
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
    andi    v1, v1, BtnL3
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
    andi    v1, v1, BtnL3
@@DoAnalog:
    andi    v1, s0, 0xFFFF
    andi    v1, v1, 0x100
@@End:
    jr      ra
    nop