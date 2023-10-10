.org 0x0011d3e0
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    jal MapMoveCheck
    nop
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10