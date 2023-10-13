.align 4
.definelabel SetFOV,.
    li      v0, OptFOV
    lbu     v0, 0x(v0)
    beqz    v0, @@Normal
    nop
    lui         v0, 0x3FF3
    b           @@End
    ori         v0, v0, 0xCF35
@@Normal:
    lui         v0, 0x3FB6
    ori         v0, v0, 0xDB6E
@@End:
    jr          ra
    nop