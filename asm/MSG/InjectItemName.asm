.align 4
.definelabel InjectItemName,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    li      a0, 0x00501ad0 ; Item
    li      a1, org(Eng_ItemName)
    jal     memmove
    li      a2, 0x82C
    li      a0, 0x00515360 ; Melee
    li      a1, org(Eng_MeleeData)
    jal     memmove
    li      a2, 0x23B8
    b       @@End
    nop
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10