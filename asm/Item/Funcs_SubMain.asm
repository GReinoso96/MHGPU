; FUN_4B5FEC
.org 0x004b5fec
    sll     a0, a1, 0x2
    dsll32  v0, a3, 0x10
    addu    a0, a0, a1
    lui     v1, org(ItemData_Start+3)

; FUN_4B9CD0
.org 0x004b9da0
    lui     v0, org(ItemData_Start+8)

; FUN_4C0480
.org 0x004c0494
    li      v0, 0x1B
    lui     v1, org(ItemData_Start)

; FUN_4C55B0
.org 0x004c55d4
    sq      s2, 0x20(sp)
    sq      s1, 0x10(sp)
    sll     a0, v0, 0x2
    lui     v1, org(ItemData_Start)
.org 0x004c5640
    lui     v0, org(ItemData_Start+3)

; FUN_4C58E0
.org 0x004c5908
    sll     a0, a1, 0x2
    lui     v1, org(ItemData_Start+3)
.org 0x004c597c
    sll     v1, a0, 0x2
    lui     v0, org(ItemData_Start+3)

; FUN_4C59A0
.org 0x004c59c8
    sll     a0, a1, 0x2
    lui     v1, org(ItemData_Start+3)
.org 0x004c5a6c
    sll     v1, a0, 0x2
    lui     v0, org(ItemData_Start+3)

; FUN_4C5B40
.org 0x004c5b90
    sll     a0, a1, 0x2
    lui     v1, org(ItemData_Start+3)

; FUN_4C5C10
.org 0x004c5c50
    sll     a0, a2, 0x2
    lui     v1, org(ItemData_Start)

; FUN_4C5CD0
.org 0x004c5cf8
    addu    a0, v0, s1
    lui     v1, org(ItemData_Start+3)
.org 0x004c5d48
    lui     v1, org(ItemData_Start)

; FUN_4C5DE0
.org 0x004c5e24
    addu    a0, v0, s0
    lui     v1, org(ItemData_Start+3)

; UD_U_ItemStack
.org 0x004c5f3c
    sq      s1, 0x10(sp)
    lui     v1, org(ItemData_Start)
.org 0x004c5fb4
    lui     v0, org(ItemData_Start+3)

; FUN_4C60D0
.org 0x004c60d4
    sd      ra, 0x40(sp)
    lui     v1, org(ItemData_Start)
.org 0x004c6138
    lui     v0, org(ItemData_Start+3)

; FUN_4C6250
.org 0x004c62a8
    addu    a0, v0, a0
    lui     v1, org(ItemData_Start)
.org 0x004c62d8
    lui     v0, org(ItemData_Start+3)

; FUN_4C64D0
.org 0x004c6518
    addu    a0, v0, a0
    lui     v1, org(ItemData_Start)
.org 0x004c6538
    li      v0, 0xFF
    lui     v1,  org(ItemData_Start+3)

; FUN_4C8930
.org 0x004c8974
    li      a0, 0x1
    lui     a2, org(ItemData_Start)

; Pl_ItemIDXCalc
.org 0x004cba2c
    li      a1, 0x1
    lui     a2, org(ItemData_Start)

; Pl_ItemStack
.org 0x004cbab4
    sq      s5, 0x50(sp)
    sq      s4, 0x40(sp)
    addu    a3, a3, t0
    lui     v1, org(ItemData_Start)
.org 0x004cbb08
    lui     v0, org(ItemData_Start+3)
.org 0x004cbc68
    addu    a0, v0, s5
    lui     v1, org(ItemData_Start)
.org 0x004cbcb4
    li      v0, 0x1
    lui     v1, org(ItemData_Start+1)

; FUN_4CBF50
.org 0x004cbf70
    sll     a1, a2, 0x2
    lui     v1, org(ItemData_Start+3)
.org 0x004cbfe4
    sll     v1, a0, 0x2
    lui     v0, org(ItemData_Start+3)

; FUN_4CC010
.org 0x004cc030
    sll     a1, a2, 0x2
    lui     v1, org(ItemData_Start+3)
.org 0x004cc0d0
    sll     v1, a0, 0x2
    lui     v0, org(ItemData_Start+3)

; Get_UseItemNum
.org 0x004cc178
    li      a1, 0x1
    lui     a2, org(ItemData_Start)

; Pl_ItemErase
.org 0x004cc2a0
    sll     a1, a2, 0x2
    lui     v1, org(ItemData_Start)

; Pl_ShellSet
.org 0x004cce2c
    li      t0, 0x2
    li      a3, 0x1
    lui     t1, org(ItemData_Start)

; FUN_4CCF50
.org 0x004ccf84
    lui     v1, org(ItemData_Start+3)

; FUN_4CDD50
.org 0x004cdd74
    sll     a1, a2, 0x2
    lui     a0, org(ItemData_Start+10)

; FUN_4F38A0
.org 0x004f38b8
    li      a2, 0x1
    lui     a3, org(ItemData_Start)
.org 0x004f395c
    li      t1, 0x13
    lui     a3, org(ItemData_Start)

; FUN_4F4A60
.org 0x004f4c90
    addiu   v1, v1, -0x2BB0
    lui     v0, org(ItemData_Start)

; FUN_4F6140
.org 0x004f61b4
    lui     a1, org(ItemData_Start)

; FUN_4F64F0
.org 0x004f6618
    lui     a1, 0x53
    lui     v1, org(ItemNameOffset_Start)
    lui     v0, org(ItemData_Start)

; FUN_4F8B80
.org 0x004f8b80
    addu    a1, v1, a1
    lui     a0, org(ItemData_Start)

; FUN_4F8990
.org 0x004f8d30
    sll     a0, v0, 0x2
    lui     v1, org(ItemData_Start+3)