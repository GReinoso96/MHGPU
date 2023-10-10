.align 4
.definelabel CheckCamNew,.
    addiu       sp, sp, -0x10
    sd          ra, 0x0(sp)
    jal         GameClearCheck
    nop
    bnez        v0, @@End
    nop
    li          at, OptCamera
    lbu         at, 0x0(at)
    li          v0, 0x2
    beq         at, v0, @@CheckControls
    li          v1, -0x3B6
    li          v1, 0x3B6
@@CheckControls:
    li          at, OptCamSpeed
    lbu         at, 0x0(at)
    beqz        at, @@DoExec
    nop
    li          v0, 0x1
    beq         at, v0, @@DoHalfSpeed
    nop
    li          at, OptCamera
    lbu         at, 0x0(at)
    li          v0, 0x2
    beq         at, v0, @@DobulePos
    li          v1, 0x76C
    b           @@DoExec
    nop
@@DobulePos:
    li          v1, -0x76C
    b           @@DoExec
    nop
@@DoHalfSpeed:
    li          at, OptCamera
    lbu         at, 0x0(at)
    li          v0, 0x2
    beq         at, v0, @@HalfPos
    li          v1, 0x591
    b           @@DoExec
    nop
@@HalfPos:
    li          v1, -0x591
@@DoExec:
    jal         CheckSides
    nop
@@DoMove:
    beqz        v0, @@End
    nop
    li          at, 0x400
    beq         v0, at, @@DoRight
    nop
    lh          v0, 0x70(s3)
    addu        v0, v0, v1
    sh          v0, 0x70(s3)
    b           @@End
    nop
@@DoRight:
    lh          v0, 0x70(s3)
    subu        v0, v0, v1
    sh          v0, 0x70(s3)
    nop
@@End:
    ld          ra, 0x0(sp)
    jr          ra
    addiu       sp, sp, 0x10

.definelabel CheckSides,.
    lhu         a0, 0x74(s3)
    andi        v0, a0, 0x800
    beqz        v0, @@CheckDRight
    nop
    b           @@End
    li          v0, 0x800
@@CheckDRight:
    andi        v0, a0, 0x400
    beqz        v0, @@CheckAnalogLeft
    nop
    b           @@End
    li          v0, 0x400
@@CheckAnalogLeft:
    li          a0, OptScheme
    lbu         a0, 0x0(a0)
    bnez        a0, @@DoAnalog
    nop
    lhu         a0, 0x36C(s2)
    andi        v0, a0, 0x4
    beqz        v0, @@End
    li          v0, 0x0
@@DoAnalog:
    lhu         a0, 0x378(s2)
    andi        v0, a0, 0x8
    beqz        v0, @@CheckAnalogRight
    nop
    b           @@End
    li          v0, 0x800
@@CheckAnalogRight:
    lhu         a0, 0x378(s2)
    andi        v0, a0, 0x4
    beqz        v0, @@End
    li          v0, 0x0
    li          v0, 0x400
@@End:
    jr          ra
    nop

.definelabel CheckSidesG,.
    lhu         a0, 0x74(s3)
    andi        v0, a0, 0xC00
    beqz        v0, @@CheckAnalog
    li          v0, 0x0
    b           @@End
    li          v0, 0x1
@@CheckAnalog:
    lhu         a0, 0x378(s2)
    andi        a0, a0, 0xC
    beqz        a0, @@End
    li          v0, 0x0
    li          v0, 0x1
@@End:
    jr          ra
    nop

.definelabel CheckCamDown,.
    addiu       sp, sp, -0x10
    sd          ra, 0x0(sp)
    jal         GameClearCheck
    nop
    bnez        v0, @@End
    li          v0, 0x0
    jal         CheckDown
    nop
@@End:
    ld          ra, 0x0(sp)
    jr          ra
    addiu       sp, sp, 0x10
.definelabel CheckCamUp,.
    addiu       sp, sp, -0x10
    sd          ra, 0x0(sp)
    jal         GameClearCheck
    nop
    bnez        v0, @@End
    li          v0, 0x0
    jal         CheckUp
    nop
@@End:
    ld          ra, 0x0(sp)
    jr          ra
    addiu       sp, sp, 0x10

.definelabel CheckDown,.
    lhu         at, 0x76(s3)
    andi        v0, at, 0x1000
    beqz        v0, @@CheckAnalog
    nop
    b           @@End
    li          v0, 1
@@CheckAnalog:
    li          at, OptScheme
    lbu         at, 0x0(at)
    bnez        at, @@DoAnalog
    nop
    lhu         at, 0x36C(s2)
    andi        v0, at, 0x4
    beqz        v0, @@End
    li          v0, 0
@@DoAnalog:
    lhu         at, 0x378(s2)
    andi        v0, at, 0xC
    bnez        v0, @@End
    li          v0, 0
    lhu         at, 0x37C(s2)
    andi        v0, at, 0x10
    beqz        v0, @@End
    li          v0, 0
    b           @@End
    li          v0, 1
@@End:
    jr          ra
    nop

.definelabel CheckUp,.
    lhu         at, 0x76(s3)
    andi        v0, at, 0x2000
    beqz        v0, @@CheckAnalog
    nop
    b           @@End
    li          v0, 1
@@CheckAnalog:
    li          at, OptScheme
    lbu         at, 0x0(at)
    bnez        at, @@DoAnalog
    nop
    lhu         at, 0x36C(s2)
    andi        v0, at, 0x4
    beqz        v0, @@End
    li          v0, 0
@@DoAnalog:
    lhu         at, 0x378(s2)
    andi        v0, at, 0xC
    bnez        v0, @@End
    li          v0, 0
    lhu         at, 0x37C(s2)
    andi        v0, at, 0x20
    beqz        v0, @@End
    li          v0, 0
    b           @@End
    li          v0, 1
@@End:
    jr          ra
    nop