.align 4
.definelabel GetAttackButtonGun,.
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
    jal     GetAnalogGun
    nop
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10