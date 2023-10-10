.align 4
.definelabel GetAttackButtonSnS,.
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
    jal     GetAnalogSnS
    nop
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckGuardAttackSnS,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonSnS
    nop
    li      v1, 0x1
    bne     v0, v1, @@End
    li      v1, 0x0
    li      v1, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckBounceAttackSnS,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonSnS
    nop
    beqz    v0, @@End
    li      v1, 0x0
    li      v1, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckLungeAttackSnS,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonSnS
    nop
    li      v1, 0x1
    bne     v0, v1, @@End
    li      v0, 0x0
    li      v0, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10