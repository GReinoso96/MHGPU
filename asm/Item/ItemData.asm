.align 16
.definelabel ItemData_Start,.
.import "game/ItemData.bin"
.definelabel Rathalos_HCItem_001,.
    .db 0, 0
    .db 5 ; Rare 6
    .db 99 ; Stack
    .db 12 ; Unk 2
    .db 9 ; Shell
    .db 1 ; Red
    .db 0, 0, 0, 0, 0 ; Unk 3 - Unk 7
    .dw 25500 ; Price Buy
    .dw 2575 ; Price Sell

.definelabel ItemNameOffset_Start,.
.import "game/ItemNameOffset.bin"
.definelabel Rathalos_HCItem_001Offs,.
    .dw org(@Rathalos_HCItem_001Name)

.definelabel @Rathalos_HCItem_001Name,.
    .sjis "Igneous Marrow"