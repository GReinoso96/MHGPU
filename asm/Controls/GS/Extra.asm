.org 0x0054c5a0
    jal         GetAttackButtonGS
    dmove       a0, s1
    beqz        s0, @@DownwardCombo
    nop
    li          a0, 0x1
    beq         s0, a0, @@BackwardCombo
    nop
@@HorizontalCombo:
    li          v1, 0x3
    bne         v0, v1, @@HorTriangle
    nop
    lhu         a0, InputLAnalog(s1)
    andi        a1, a0, MoveRight
    bnez        a1, @@HorDoRight
    dmove       a0, s1
    li          a1, 0x1
    li          a2, 0xF
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@HorDoRight:
    li          a1, 0x1
    li          a2, 0x43
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@HorTriangle:
    li          a1, 0x1
    bne         v0, a1, 0x0054c7a8
    lhu         a0, InputLAnalog(s1)
    andi        a1, a0, MoveLeft
    bnez        a1, @@HorDoLeft
    dmove       a0, s1
    li          a1, 0x1
    li          a2, 0x11
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@HorDoLeft:
    li          a1, 0x1
    li          a2, 0x42
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@DownwardCombo:
    li          v1, 0x3
    bne         v0, v1, @@DwnCircle
    nop
    lhu         a0, InputLAnalog(s1)
    andi        a1, a0, MoveRight
    bnez        a1, @@DwnDoRight
    dmove       a0, s1
    li          a1, 0x1
    li          a2, 0xD
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@DwnDoRight:
    li          a1, 0x1
    li          a2, 0x3F
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@DwnCircle:
    li          a1, 0x2
    bne         v0, a1, 0x0054c7a8
    lhu         a0, InputLAnalog(s1)
    andi        a1, a0, MoveLeft
    bnez        a1, @@DwnDoLeft
    dmove       a0, s1
    li          a1, 0x1
    li          a2, 0x12
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@DwnDoLeft:
    li          a1, 0x1
    li          a2, 0x40
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@BackwardCombo:
    li          v1, 0x1
    bne         v0, v1, @@BckCircle
    nop
    lhu         a0, InputLAnalog(s1)
    andi        a1, a0, MoveRight
    bnez        a1, @@BckDoRight
    dmove       a0, s1
    li          a1, 0x1
    li          a2, 0x10
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@BckDoRight:
    li          a1, 0x1
    li          a2, 0x44
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@BckCircle:
    li          a1, 0x2
    bne         v0, a1, 0x0054c7a8
    lhu         a0, InputLAnalog(s1)
    andi        a1, a0, MoveLeft
    bnez        a1, @@BckDoLeft
    dmove       a0, s1
    li          a1, 0x1
    li          a2, 0x13
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop
@@BckDoLeft:
    li          a1, 0x1
    li          a2, 0x45
    jal         Pl_ActSet
    li          a3, 0x4
    b           0x0054c7a8
    nop