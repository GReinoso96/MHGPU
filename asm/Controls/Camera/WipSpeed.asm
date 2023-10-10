    li      v0, 0x35ED2F
    lbu     v0, 0x0(sp)
    li      v1, 0x2
    beq     v0, v2, @@Do
    li      at, -0x3B6
    li      at, 0x3B6
@@Do:
    li      v1, OptCamera
    lbu     v1, 0x0(v1)
    beqz    v1, @@NoAdd
    nop
    li      v0, 0x2
    beq     v1, @@Faster
    nop
@@Fast:
    lh      v0, 0x70(s3)
    li      at, 0x591
    b       @@End
    addu    v0, v0, at
@@Faster:
    lh      v0, 0x70(s3)
    li      at, 0x76C
    b       @@End
    addu    v0, v0, at
@@NoAdd:
    lh      v0, 0x70(s3)
    li      at, 0x3B6
    addu    v0, v0, at
@@End:
    sh      v0, 0x70(s3)
    jr      ra
    nop
.definelabel CamSpeedCalcRight,.
    lh      v0, 0x70(s3)
    li      v1, OptCamera
    lbu     v1, 0x0(v1)
    li      at, -0x3B6
    sllv    at, at, v1
    addu    v0, v0, at
    sh      v0, 0x70(s3)
    jr      ra
    nop