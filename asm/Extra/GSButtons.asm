.align 4
.definelabel GetAttackButtonGS,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    li      v0, OptScheme
    lb      v0, 0x0(v0)
    beqz    v0, @@DoAnalog
    nop
@@DoFace:
    jal     GetAttackButton
    nop
    b       @@End
    nop
@@DoAnalog:
    jal     GetAnalogGS
    nop
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckBounceAttackGS,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonGS
    nop
    beqz    v0, @@End
    li      v1, 0x0
    li      v1, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10