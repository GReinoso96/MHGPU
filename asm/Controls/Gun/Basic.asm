.org 0x0054d174
        jal         GetAttackButtonGun
        dmove       a0, s0
        li          v1, 0x3
        beq         v0, v1, @@DoMelee
        nop
        li          v1, 0x2
        beq         v0, v1, @@DoFire
        nop
        li          v1, 0x1
        beq         v0, v1, @@DoReload
        nop
        b           0x0054d2e0
        nop
    @@DoMelee:
        lbu         v1, 0x763(s0)
        bnez        v1, @@DoFire
        dmove       a0, s0
        li          a1, 0x1
        li          a2, 0x3D
        jal         Pl_ActSet
        li          a3, 0x4
        b           0x0054d2e0
        nop
    @@DoFire:
        dmove       s0, a0
        lbu         v0, 0x1C(s0)
        bnez        v0, @@FireType
        dmove       a0, s0
        li          a1, 0x1
        li          a2, 0xC
        jal         Pl_ActSet
        li          a3, 0x5
        b           0x0054d2e0
        nop
    @@FireType:
        li          a1, 0x1
        sb          a1, 0x8ED(s0)
        lbu         v1, 0x56C(s0)
        lui         v0, 0x5A
        addiu       v0, v0, -0x464f
        li          a2, 0x2
        sll         v1, v1, 0x2
        addu        v0, v0, v1
        lbu         v0, 0x0(v0)
        beq         v0, a2, @@BGTypeA
        nop
        beq         v0, a1, @@BGTypeB
        nop
        beqz        v0, @@BGTypeC
        nop
        b           @@BGTypeB
        nop
    @@BGTypeC:
        dmove       a0, s0
        jal         Pl_ActSet
        li          a3, 0x5
        b           0x0054d2e0
        nop
    @@BGTypeB:
        dmove       a0, s0
        li          a1, 0x1
        li          a2, 0x8
        jal         Pl_ActSet
        li          a3, 0x5
        b           0x0054d2e0
        nop
    @@BGTypeA:
        dmove       a0, s0
        li          a2, 0xa
        jal         Pl_ActSet
        li          a3, 0x5
        b           0x0054d2e0
        nop
    @@DoReload:
        lbu         a0, 0x1C(s0)
        beqz        a0, @@GoReload
        nop
        lbu         v1, 0x1D(s0)
        slt         at, a0, v1
        beqz        at, 0x0054d2e0
        nop
        lh          v1, 0x8BC(s0)
        slt         at, a0, v1
        beqz        at, 0x0054d2e0
        nop
    @@GoReload:
        lh          v1, 0x8BC(s0)
        blez        v1, 0x0054d2e0
        dmove       a0, s0
        li          a1, 0x1
        li          a2, 0x9
        jal         Pl_ActSet
        li          a3, 0x5
        nop
        b           0x0054d2e0
        nop