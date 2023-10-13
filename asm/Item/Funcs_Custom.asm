.align 4
.definelabel FUN_11EF00Fix,.
    lui     at, org(ItemData_Start+3)
    lbu     s0, 0x0(at)
    jr      ra
    nop