.align 4
.definelabel GetAttackButtonLance,.
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
    jal     GetAnalogLance
    nop
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckGuardAttackLance,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonLance
    nop
    beqz    v0, @@End
    li      v1, 0x0
    li      v1, 0x3
    beq     v0, v1, @@End
    li      v1, 0x2
    li      v1, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckGuardRushAttackLance,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonLance
    nop
    li      v1, 0x3
    bne     v0, v1, @@End
    li      v1, 0x0
    li      v1, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel CheckChargeStopLance,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonLance
    nop
    li      v1, 0x1
    beq     v0, v1, @@End
    li      v1, 0x2
    beq     v0, v1, @@End
    li      v1, 0x1
    li      v1, 0x3
    beq     v0, v1, @@End
    li      v1, 0x1
    li      v1, 0x0
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10