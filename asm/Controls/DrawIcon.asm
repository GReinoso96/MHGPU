.align 4
.definelabel GFX_GatherIcons,.
    .dh 64, 129 ; Question Mark
    .dh 33, 65 ; Pickaxe
    .dh 193, 33 ; Bugnet
    .dh 65, 33 ; Monster
    .dh 1, 65 ; Herb
    .dh 33, 33 ; Dung
    .dh 161, 33 ; Shroom
.align 4
.definelabel DrawGatherIcon,.
    addiu       sp, sp, -0x30
    sd          ra, 0x0(sp)
    li          a0, 0x1
    jal         Tex_Reload
    li          a1, 0x13F
    jal         Tex_SetStage
    li          a0, 0x13F
    li          a0, 0x40
    sb          a0, 0x10(sp)
    li          a0, 0x40
    sb          a0, 0x12(sp)
    li          a0, 0x1E
    sb          a0, 0x14(sp)
    sb          a0, 0x16(sp)
    li          a0, 0xFFFFFFFF
    sb          a0, 0x18(sp)
    li          a0, 64
    sb          a0, 0x1C(sp)
    li          a0, 129
    sb          a0, 0x1E(sp)
    li          a0, 0x1F
    sb          a0, 0x20(sp)
    li          a0, 0x1F
    sb          a0, 0x22(sp)
    addiu       a0, sp, 0x10
    jal         FLPS0008
    ld          ra, 0x0(sp)
    jr          ra
    addiu       sp, sp, 0x30

.definelabel CheckGatherIcon,.
    sll         v0, v0, 0x2
    addiu       v1, v1, 0x6B60
    addiu       sp, sp, -0x40
    sq          v1, 0x20(sp)
    sq          v0, 0x10(sp)
    sd          ra, 0x0(sp)
    dmove       a0, s0
    jal         Stage_ItemDataGet
    nop
    beqz        v0, @@End
    nop
    jal         DrawGatherIcon
    nop
@@End:
    ld          ra, 0x0(sp)
    lq          v0, 0x10(sp)
    lq          v1, 0x20(sp)
    jr          ra
    addiu       sp, sp, 0x40