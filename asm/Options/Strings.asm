.definelabel OptionStrPtr,.
    .dw 0x5413D8
    .dw 0x5413F0
    .dw 0x541410
    .dw 0x541430
    .dw 0x541450
    .dw 0x541470
    .dw 0x541490
    .dw 0x5414B0
    .dw 0x5414D0
    .dw 0x5414F8
    .dw org(OptionStrScheme)
    .dw org(OptionStrQuests)
    .dw org(OptionStrCamera)
    .dw org(OptionStrFov)

.definelabel OptionSubPtr,.
    .dw 0x2EC680
    .dw 0x528F60
    .dw 0x528F60
    .dw 0x2EC688
    .dw 0x528F80
    .dw 0x2EC688
    .dw 0x528F90
    .dw 0x0        ; Screen Pos
    .dw 0x0        ; Default
    .dw 0x0        ; Exit
    .dw org(SubOptScheme)
    .dw org(SubOptQuests)
    .dw org(SubOptCamera)
    .dw org(SubOptFov)

.definelabel SubOptScheme,.
    .dw org(SchemeSubAnalog)
    .dw org(SchemeSubPortable)

.definelabel SubOptQuests,.
    .dw org(QuestsSubRandom)
    .dw org(QuestsSubSlotted)

.definelabel SubOptCamera,.
    .dw org(CameraSubNormal)
    .dw org(CameraSubFast)
    .dw org(CameraSubFaster)

.definelabel SubOptFov,.
    .dw org(FovSubStandard)
    .dw org(FovSubWide)

.definelabel OptionStrScheme,.
    .sjis "ＣＯＮＴＲＯＬ　ＳＣＨＥＭＥ"
.definelabel OptionStrQuests,.
    .sjis "ＶＩＬＬＡＧＥ　ＱＵＥＳＴＳ"
.definelabel OptionStrCamera,.
    .sjis "ＣＡＭＥＲＡ　ＳＰＥＥＤ"
.definelabel OptionStrFov,.
    .sjis "ＷＩＤＥＳＣＲＥＥＮ"

.definelabel SchemeSubAnalog,.
    .sjis "ＡＮＡＬＯＧ"
.definelabel SchemeSubPortable,.
    .sjis "ＰＯＲＴＡＢＬＥ"
.definelabel QuestsSubRandom,.
    .sjis "ＲＡＮＤＯＭ"
.definelabel QuestsSubSlotted,.
    .sjis "ＳＬＯＴＴＥＤ"
.definelabel CameraSubNormal,.
    .sjis "ＮＯＲＭＡＬ"
.definelabel CameraSubFast,.
    .sjis "ＦＡＳＴ"
.definelabel CameraSubFaster,.
    .sjis "ＦＡＳＴＥＲ"
.definelabel FovSubStandard,.
    .sjis "ＮＯ"
.definelabel FovSubWide,.
    .sjis "１６：９"
.definelabel FovSubWider,.
    .sjis "１６：１０"
.definelabel OptionClamp,.
    .db 2, 8, 8, 2, 3, 3, 2, 3, 0, 0, 2, 2, 3, 2