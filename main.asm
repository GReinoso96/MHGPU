.ps2
.include "asm/Addresses.asm"
.open "game/baseSLPM_658.69", "game/SLPM_658.69", 0xFFE00
    .include "asm/Inject.asm"
    .include "asm/FOV.asm"
    .include "asm/Options/Disp_OptionMenu.asm"
    .include "asm/Options/ParamChange.asm"
    
    .include "asm/Controls/Camera/Standard.asm"

    .include "asm/Controls/MapMove.asm"
    .include "asm/Controls/Chat.asm"
.close
.open "game/basegame.bin", "game/game.bin", 0x542600
    .include "asm/Controls/SonchoMove.asm"

    .include "asm/Controls/Basic.asm"
;    .include "asm/Controls/PlNormal.asm"
    .include "asm/Controls/CrouchBasic.asm"
    .include "asm/Controls/EggBasic.asm"
    .include "asm/Controls/Pl_MvRoll.asm"

    .include "asm/Controls/SnS/Basic.asm"
    .include "asm/Controls/SnS/Bounce.asm"
    .include "asm/Controls/SnS/Combo.asm"
    .include "asm/Controls/SnS/Guard.asm"
    .include "asm/Controls/SnS/Lunge.asm"
    .include "asm/Controls/SnS/Upswing.asm"

    .include "asm/Controls/GS/Basic.asm"
    .include "asm/Controls/GS/Bounce.asm"
    .include "asm/Controls/GS/Extra.asm"

    .include "asm/Controls/Hammer/Basic.asm"
    .include "asm/Controls/Hammer/Bounce.asm"
    .include "asm/Controls/Hammer/Common.asm"
    .include "asm/Controls/Hammer/Extra.asm"
    .include "asm/Controls/Hammer/Slam.asm"
    .include "asm/Controls/Hammer/Slam2.asm"
    .include "asm/Controls/Hammer/Spin.asm"

    .include "asm/Controls/Lance/Basic.asm"
    .include "asm/Controls/Lance/Bounce.asm"
    .include "asm/Controls/Lance/Charge.asm"
    .include "asm/Controls/Lance/Guard.asm"
    .include "asm/Controls/Lance/High.asm"
    .include "asm/Controls/Lance/HitWall.asm"
    .include "asm/Controls/Lance/Medium.asm"
    .include "asm/Controls/Lance/Hop.asm"

    .include "asm/Controls/Gun/Basic.asm"

    .include "asm/Controls/DB/Basic.asm"
    .include "asm/Controls/DB/Combo.asm"
    .include "asm/Controls/DB/Lunge.asm"
    .include "asm/Controls/DB/Uppercut.asm"

    .include "asm/Tutorial.asm"
.close
.open "game/baselobby.bin", "game/lobby.bin", 0x542600
    .include "asm/Quests/MakeQuestTblLocal.asm"
.close
.open "game/basesub_main.bin", "game/sub_main.bin", 0x4A0C80
    .include "asm/Quests/QuestSub.asm"
.close
.create "game/extra.bin", 0x888000
    .org 0x888000
    .include "asm/Extra/SetFOV.asm"

;;    .include "asm/MSG/Eng_ItemName.asm"
;;    .include "asm/MSG/Eng_MeleeData.asm"
;;    .include "asm/MSG/InjectItemName.asm"

;    .include "asm/Controls/DrawIcon.asm"

    .include "asm/Extra/GetButtons.asm"
    .include "asm/Extra/SnSButtons.asm"
    .include "asm/Extra/DBButtons.asm"
    .include "asm/Extra/GSButtons.asm"
    .include "asm/Extra/HammerButtons.asm"
    .include "asm/Extra/LanceButtons.asm"
    .include "asm/Extra/GunButtons.asm"

    .include "asm/Extra/ButtonFuncs.asm"

    .include "asm/Extra/GUI.asm"

    .include "asm/Controls/Camera/CameraButtons.asm"

    .include "asm/Options/Strings.asm"
    .include "asm/Options/Disp_OptionMenuEx.asm"

    .include "asm/Quests/QuestList.asm"
    .include "asm/Quests/MakeQuestTblSlots.asm"
.close