.org memcpy
    b memmove
    nop

.definelabel LoadExtra,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    li      a0, 0x00888000
    li      a1, 0xD13
    jal     Load_FileMDL
    nop
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel InjectInit,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    jal     Option_DefaultSet
    nop
    jal     LoadExtra
    nop
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.org 0x001101d0 ; Init_SystemData
    jal     InjectInit
    nop