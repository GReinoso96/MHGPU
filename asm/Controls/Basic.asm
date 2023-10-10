.org 0x0054ec98 ; Unsheathe
    jal         UnsheatheCheck
    dmove       a0, s2

.org 0x0054edd8 ; Kick
    jal         KickCheck
    nop

.org 0x0054e850 ; Sheathe
    lhu         v1, InputFace(s2)
    andi        v0, v1, BtnSquare