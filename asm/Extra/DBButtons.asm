.align 4
.definelabel GetDBButton,. ; 0: None, 1: Triangle, 2: Circle, 3: Both, 4: Right, 5: Select
    lhu     v0, InputFace(a0)
    andi    v1, v0, BtnTriangleCircleSelect
    beqz    v1, @@None
    nop
    andi    v1, v0, BtnSelect
    beqz    v1, @@CheckBoth
    nop
    b       @@End
    li      v0, 0x5
@@CheckBoth:
    li      v1, BtnTriangleCircle
    bne     v0, v1, @@CheckTriangle
    nop
    b       @@End
    li      v0, 0x3
@@CheckTriangle:
    andi    v1, v0, BtnTriangle
    beqz    v1, @@CheckCircle
    nop
    b       @@End
    li      v0, 0x1
@@CheckCircle:
    andi    v1, v0, BtnCircle
    beqz    v1, @@None
    nop
    lhu     v0, InputLAnalog(a0)
    andi    v1, v0, MoveLeft
    beqz    v1, @@End
    li      v0, 0x4
    b       @@End
    li      v0, 0x2
@@None:
    li      v0, 0x0
@@End:
    jr      ra
    nop
.definelabel GetAttackButtonDB,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    li      v0, OptScheme
    lb      v0, 0x0(v0)
    beqz    v0, @@DoAnalog
    nop
@@DoFace:
    jal     GetDBButton
    nop
    b       @@End
    nop
@@DoAnalog:
    jal     GetAnalogDB
    nop
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10
.definelabel CheckLungeAttackDB,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
@@Do:
    jal     GetAttackButtonDB
    nop
    li      v1, 0x1
    bne     v0, v1, @@End
    li      v0, 0x0
    li      v0, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10