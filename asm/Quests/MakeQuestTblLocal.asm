;.org 0x0055f7b8 ; Get 8 Quests
;    slti        v1, s2, 0x8

;.org 0x0055f388 ; Set Pages to 8
;    li          v1, 0x8

;.org 0x0055f3b4 ;
;    slti        v1, s4, 0x8

;.org 0x0055f300
;    slti        v1, s3, 0x8

.org 0x0059e7a0
    jal     MakeQuestInject
    nop