.align 4
.definelabel Draw_TutorialIcon,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    li      a0, OptScheme
    lb      a0, 0x0(a0)
    beqz    a0, @@DoAnalog
    nop
    li      a0, org(TutoButtonDigital)
    jal     Draw_ButtonIcon
    li      a1, 0x1
    b       @@End
    nop
@@DoAnalog:
    li      a0, org(TutoButtonAnalog)
    jal     Draw_ButtonIcon
    li      a1, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10    

.definelabel TutoButtonAnalog,.
    .dh 0x14
    .dh 0xAF
    .dh 0x18
    .db 0x2
    .db 0xFF
.definelabel TutoButtonDigital,.
    .dh 0x14
    .dh 0xAF
    .dh 0x18
    .db 0x9
    .db 0xFF