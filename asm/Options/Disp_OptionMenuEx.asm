.align 4
.definelabel Select_TaskInject,.
    addiu   sp, sp, -0x10
    sd      ra, 0x0(sp)
    jal     0x001eec50
    nop
    ;jal     InjectItemName
    nop
    ld      ra, 0x0(sp)
    jr      ra
    addiu   sp, sp, 0x10
.definelabel Disp_OptionMenuEx,.
    addiu       sp, sp, -0x80
    sd          ra, 0x70(sp)
    sq          s6, 0x60(sp)
    sq          s5, 0x50(sp)
    sq          s4, 0x40(sp)
    sq          s3, 0x30(sp)
    sq          s2, 0x20(sp)
    sq          s1, 0x10(sp)
    sq          s0, 0x0(sp)
@@Do:
    dmove       s6, a0
    li          a0, 0xFF
    jal         Sel_BackDisp
    nop
    jal         Sel_MenuDisp
    li          a0, 0x2
    li          a0, 0x12
    jal         Font_SetSize
    li          a1, 0xF
    li          s5, 0x60 ; Start Pos
    li          s2, org(OptionStrPtr)
    li          s1, org(OptionSubPtr)
    li          s0, 0x0035bd60
    dmove       s4, zero
    nop
@@LoopStart:
    lbu         v0, 0x14(s6)
    bne         s4, v0, @@CheckChange
    li          s3, 0xB
    b           @@DrawOptions
    nop
@@CheckChange:
    li          v0, 0x8
    bne         s4, v0, @@NoChanges
    nop
    jal         CFG_ChangeCheck
    nop
    beqz        v0, @@NoChanges
    li          s3, 0x3
    b           @@DrawOptions
    nop
@@NoChanges:
    dmove       s3, zero
    nop
@@DrawOptions:
    li          v0, 0x9
    bne         s4, v0, @@NotExit
    nop
    addiu       s5, s5, 0xC
@@NotExit:
    dsll32      a1, s5, 0x10
    dsra32      a1, a1, 0x10
    jal         Font_Locate
    li          a0, 0x2C
    dsll32      a0, s3, 0x10
    jal         Font_SetPalette
    dsra32      a0, a0, 0x10
    lw          a1, 0x0(s2)
    lui         a0, 0x2B
    jal         Font_Print
    addiu       a0, a0, 0x1728
    li          at, 0xA
    beq         s4, at, @@DoDraw
    nop
    li          at, 0xB
    beq         s4, at, @@DoDraw
    nop
    li          at, 0xC
    beq         s4, at, @@DoDraw
    nop
    li          at, 0xD
    beq         s4, at, @@DoDraw
    nop
    sltiu       at, s4, 0x7
    beqz        at, @@CheckLoop
    nop
@@DoDraw:
    lb          v1, 0x0(s0)
    lw          v0, 0x0(s1)
    dsll32      a0, s5, 0x10
    sll         v1, v1, 0x2
    addu        v0, v0, v1
    lw          a1, 0x0(v0)
    jal         Option_SubDisp
    dsra32      a0, a0, 0x10
@@CheckLoop:
    addiu       s4, s4, 0x1
    slti        v1, s4, 0xE
    addiu       s5, s5, 0x14
    addiu       s2, s2, 0x4
    addiu       s1, s1, 0x4
    bnez        v1, @@LoopStart
    addiu       s0, s0, 0x1
@@End:
    ld          ra, 0x70(sp)
    lq          s6, 0x60(sp)
    lq          s5, 0x50(sp)
    lq          s4, 0x40(sp)
    lq          s3, 0x30(sp)
    lq          s2, 0x20(sp)
    lq          s1, 0x10(sp)
    lq          s0, 0x0(sp)
    jr          ra
    addiu       sp, sp, 0x80