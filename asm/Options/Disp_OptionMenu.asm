.org 0x00117d80
    addiu sp, sp, -0x10
    sd    ra, 0x0(sp)
    jal   Disp_OptionMenuEx
    nop
    ld    ra, 0x0(sp)
    jr    ra
    addiu sp, sp, 0x10
;.org 0x00117eb4 ; Count
;    slti        v1, s4, 0xC
;.org 0x00117dc8 ; OptionStrPtr
;    li          s2, org(OptionStrPtr)
;    li          s1, org(OptionSubPtr)
;    li          s0, 0x0035bd60
;    dmove       s4, zero
;.org 0x00117e3c ; Exit Pos
;    nop
;.org 0x00117db8 ; Font Size
;    li          a0, 0x12
;    li          s5, 0x60
;    jal         Font_SetSize
;    li          a1, 0xF
;.org 0x00117eb8 ; Vertical Spacing
;    addiu       s5, s5, 0x14

.org 0x0011778c ; Option_MainMenu Roll Over
    li          v0, 0xD
.org 0x001177b8
    li          v0, 0xD

.org 0x001ee7d8 ; Option_Exit Inject
    jal         Select_TaskInject
    nop