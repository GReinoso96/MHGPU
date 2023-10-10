.align 4
.definelabel GetAttackButton,. ; 0: None, 1: Triangle, 2: Circle, 3: Both, 4: Select
    lhu     v0, InputFace(a0)
    andi    v1, v0, BtnTriangleCircleSelect
    beqz    v1, @@None
    nop
    andi    v1, v0, BtnSelect
    beqz    v1, @@CheckBoth
    nop
    b       @@End
    li      v0, 0x4
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
    b       @@End
    li      v0, 0x2
@@None:
    li      v0, 0x0
@@End:
    jr      ra
    nop

.definelabel GetAnalogSnS,. ; 0: None, 1: Up, 2: Sides, 3: Down, 4: R3
    lhu     v0, InputFace(a0)
    andi    v1, v0, BtnR3
    bnez    v1, @@End
    li      v0, 0x4
    lhu     v0, InputRAnalog(a0)
    andi    v1, v0, 0x3C
    beqz    v1, @@None
    nop
@@CheckRight:
    lhu     v0, InputRAnalogDir(a0)
    addiu   v0, v0, 0x2AAB
    andi    v0, v0, 0xFFFF
    slti    at, v0, 0x4001
    beqz    at, @@CheckUp
    nop
    b       @@End
    li      v0, 0x2
@@CheckUp:
    ori     at, zero, 0x9556
    slt     at, v0, at
    beqz    at, @@CheckLeft
    nop
    b       @@End
    li      v0, 0x1
@@CheckLeft:
    ori     at, zero, 0xD556
    slt     at, v0, at
    beqz    at, @@Down
    nop
    b       @@End
    li      v0, 0x2
@@Down:
    b       @@End
    li      v0, 0x3
@@None:
    li      v0, 0x0
@@End:
    jr      ra
    nop

.definelabel GetAnalogDB,. ; 0: None, 1: Up, 2: Left, 3: Down, 4: Right, 5: R3
    lhu     v0, InputFace(a0)
    andi    v1, v0, BtnR3
    bnez    v1, @@End
    li      v0, 0x5
    lhu     v0, InputRAnalog(a0)
    andi    v1, v0, 0x3C
    beqz    v1, @@None
    nop
@@CheckRight:
    lhu     v0, InputRAnalogDir(a0)
    addiu   v0, v0, 0x2AAB
    andi    v0, v0, 0xFFFF
    slti    at, v0, 0x4001
    beqz    at, @@CheckUp
    nop
    b       @@End
    li      v0, 0x4
@@CheckUp:
    ori     at, zero, 0x9556
    slt     at, v0, at
    beqz    at, @@CheckLeft
    nop
    b       @@End
    li      v0, 0x1
@@CheckLeft:
    ori     at, zero, 0xD556
    slt     at, v0, at
    beqz    at, @@Down
    nop
    b       @@End
    li      v0, 0x2
@@Down:
    b       @@End
    li      v0, 0x3
@@None:
    li      v0, 0x0
@@End:
    jr      ra
    nop

.definelabel GetAnalogGS,. ; 0: None, 1: Up, 2: Left, 3: Right, 4: R3
    lhu     v0, InputFace(a0)
    andi    v1, v0, BtnR3
    bnez    v1, @@End
    li      v0, 0x4
    lhu     v0, InputRAnalog(a0)
    andi    v1, v0, 0x3C
    beqz    v1, @@None
    nop
@@CheckRight:
    lhu     v0, InputRAnalogDir(a0)
    addiu   v0, v0, 0x4000
    andi    v0, v0, 0xFFFF
    slti    at, v0, 0x5555
    beqz    at, @@CheckUp
    nop
    b       @@End
    li      v0, 0x3
@@CheckUp:
    ori     at, zero, 0xAAAC
    slt     at, v0, at
    beqz    at, @@Left
    nop
    b       @@End
    li      v0, 0x1
@@Left:
    b       @@End
    li      v0, 0x2
@@None:
    li      v0, 0x0
@@End:
    jr      ra
    nop

.definelabel GetAnalogHammer,. ; 0: None, 1: Up, 2: Down
    lhu     v0, InputRAnalog(a0)
    andi    v1, v0, 0x3C
    beqz    v1, @@None
    nop
@@CheckUp:
    lhu     v0, InputRAnalogDir(a0)
    addiu   v0, v0, 0x1555
    andi    v0, v0, 0xFFFF
    ori     at, zero, 0xAAAC
    slt     at, v0, at
    beqz    at, @@Down
    nop
    b       @@End
    li      v0, 0x1
@@Down:
    b       @@End
    li      v0, 0x2
@@None:
    li      v0, 0x0
@@End:
    jr      ra
    nop

.definelabel GetAnalogLance,. ; 0: None, 1: Up, 2: Down, 3: R3
    lhu     v0, InputFace(a0)
    andi    v1, v0, BtnR3
    bnez    v1, @@End
    li      v0, 0x3
    lhu     v0, InputRAnalog(a0)
    andi    v1, v0, 0x3C
    beqz    v1, @@None
    nop
@@CheckUp:
    lhu     v0, InputRAnalogDir(a0)
    addiu   v0, v0, 0x1555
    andi    v0, v0, 0xFFFF
    ori     at, zero, 0xAAAC
    slt     at, v0, at
    beqz    at, @@Down
    nop
    b       @@End
    li      v0, 0x1
@@Down:
    b       @@End
    li      v0, 0x2
@@None:
    li      v0, 0x0
@@End:
    jr      ra
    nop

.definelabel GetAnalogGun,. ; 0: None, 1: Down, 2: R3, 3: Up
    lhu     v0, InputFace(a0)
    andi    v1, v0, BtnR3
    bnez    v1, @@End
    li      v0, 0x2
    lhu     v0, InputRAnalog(a0)
    andi    v1, v0, 0x3C
    beqz    v1, @@None
    nop
@@CheckUp:
    lhu     v0, InputRAnalogDir(a0)
    addiu   v0, v0, 0x1555
    andi    v0, v0, 0xFFFF
    ori     at, zero, 0xAAAC
    slt     at, v0, at
    beqz    at, @@Down
    nop
    b       @@End
    li      v0, 0x3
@@Down:
    b       @@End
    li      v0, 0x1
@@None:
    li      v0, 0x0
@@End:
    jr      ra
    nop

.definelabel UnsheatheCheck,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    li      v0, OptScheme
    lb      v0, 0x0(v0)
    beqz    v0, @@DoAnalog
    nop
@@DoFace:
    jal     GetAttackButton
    nop
    li      v1, 0x1
    bne     v0, v1, @@End
    li      v0, 0x0
    b       @@End
    li      v0, 0x1
@@DoAnalog:
    lhu     v0, InputFaceHold2(a0)
    andi    v0, v0, BtnL2
    bnez    v0, @@End
    li      v0, 0x0
    jal     GetAnalogSnS
    nop
    bnez    v0, @@End
    li      v0, 0x1
    li      v0, 0x0
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel EggCheck,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    jal     UnsheatheCheck
    nop
@@End:
    li      a0, 0x1
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel KickCheck,.
    lhu     v0, 0x368(s2)
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    li      v1, OptScheme
    lb      v1, 0x0(v1)
    beqz    v1, @@DoAnalog
    nop
@@DoFace:
    andi    v0, v0, BtnSelect
    b       @@End
    nop
@@DoAnalog:
    andi    v0, v0, 0x1
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

.definelabel TutorialCheck,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    li      v1, OptScheme
    lb      v1, 0x0(v1)
    beqz    v1, @@DoAnalog
    nop
@@DoFace:
    andi    v0, v0, BtnL3
    b       @@End
    nop
@@DoAnalog:
    andi    v0, v0, 0x100
@@End:
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10

