.align 4
.definelabel GetAttackButtonHam,.
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
    jal     GetAnalogHammer
    nop
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckBounceAttackHam,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonHam
    nop
    beqz    v0, @@End
    li      v1, 0x0
    li      v1, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckComboAttackHam,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonHam
    nop
    li      at, 0x1
    bne     v0, at, @@End
    li      at, 0x0
    li      at, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckSpinAttackHam,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonHam
    nop
    li      at, 0x1
    bne     v0, at, @@End
    li      v0, 0x0
    li      v0, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10