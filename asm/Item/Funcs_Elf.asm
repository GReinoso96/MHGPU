; FUN_11A630
.org 0x0011a664
    sll     v1, a0, 0x2
    lui     v0, org(ItemData_Start+2)
.org 0x0011a6a8
    dsra32  a1, a1, 0x10
    lui     v1, org(ItemData_Start+3)

; FUN_11A8E0
.org 0x0011af84
    addu    a0, a0, a1
    lui     v1, org(ItemData_Start+3)
.org 0x0011b39c
    lui     v1, org(ItemData_Start+3)

; FUN_11B6F0
.org 0x0011b744
    lh      v0, 0x2(s0)
    lui     v1, org(ItemData_Start+3)

; FUN_11EB80
.org 0x0011ee04
    lui     v1, org(ItemData_Start)
.org 0x0011ee38
    lui     v1, org(ItemData_Start)

; FUN_11EF00
.org 0x0011f1c4
    lui     v0, org(ItemData_Start+3)
.org 0x0011f20c
    j       FUN_11EF00Fix
    andi    s1, v0, 0xFFFF
    nop

; FUN_120ED0
.org 0x00120f7c
    sll     v1, a0, 0x2
    lui     v0, org(ItemData_Start+3)

; FUN_121120
.org 0x00121324
    lui     v0, 0x26
    lui     v1, org(ItemData_Start+6)

; FUN_1213F0
.org 0x0012207c
    lhu     a1, 0x828(a0)
    lui     v0, 0x26
    lui     v1, org(ItemData_Start)
.org 0x0012224c
    lhu     a1, 0x828(a0)
    lui     v0, 0x26
    lui     v1, org(ItemData_Start)

; Disp_ShellName
.org 0x00122460
    lhu     s1, 0x282(a1)
    lui     v1, org(ItemData_Start)

; FUN_1225C0
.org 0x001225f8
    lw      a2, -0x3934(gp)
    lui     a1, org(ItemData_Start+5)
.org 0x0012262c
    lui     v0, org(ItemData_Start+6)
.org 0x00122658
    lui     v0, org(ItemData_Start+4)

; FUN_124ED0
.org 0x001250c8
    addu    a1, a0, a1
    lui     v1, org(ItemData_Start)
.org 0x00125250
    lui     a0, 0x26
    lui     t3, 0x4210
    lui     t0, 0x437C
    andi    t4, t4, 0x7
    lui     a3, 0x4380
    lui     a2, org(ItemData_Start+5)
    lui     a1, org(ItemData_Start+6)
.org 0x00125774
    lui     v1, org(ItemData_Start+3)

; FUN_21DBD0
.org 0x0021dbf4
    addu    a0, v0, a0
    lui     v1, org(ItemData_Start+4)

; FUN_21DC30
.org 0x0021de70
    sll     a0, v0, 0x2
    lui     v1, org(ItemData_Start+5)

; FUN_220760
.org 0x00220800
    sll     v1, a1, 0x2
    lui     v0, org(ItemData_Start)

; FUN_22A050
.org 0x0022a1f4
    addu    v1, v1, a0
    lui     v0, org(ItemData_Start)
.org 0x0022a2fc
    addu    v1, v1, a0
    lui     v0, org(ItemData_Start)

