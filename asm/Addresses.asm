.definelabel memcpy, 0x00160550
.definelabel memmove, 0x00160600
.definelabel Load_FileMDL, 0x0010f310
.definelabel Option_DefaultSet, 0x001174b0
.definelabel User_DataInit, 0x0022b710
.definelabel Pl_ActSet, 0x004edf40
.definelabel DB_ActSet, 0x0054cba0

.definelabel Font_SetSize, 0x001d5870
.definelabel Font_Locate, 0x001d5890
.definelabel Font_SetPalette, 0x0012c9b0
.definelabel Font_Print, 0x0012b580
.definelabel Sel_BackDisp, 0x001ef7c0
.definelabel Sel_MenuDisp, 0x001ef870
.definelabel CFG_ChangeCheck, 0x00117990
.definelabel Option_SubDisp, 0x00117d00

.definelabel Ran_Suu, 0x0012ae20

.definelabel Quest_ClearBitCheck, 0x004c7550

.definelabel Pl_MasterCheck, 0x004eef40
.definelabel GameClearCheck, 0x0012d200

.definelabel Stage_PickCheck, 0x004cb3e0
.definelabel Stage_ItemDataGet, 0x004b3780

.definelabel Tex_Reload, 0x0010f760
.definelabel Tex_SetStage, 0x0012b170

.definelabel FLPS0008, 0x001413f0

OptCamera           equ 0x0035BD69
OptScheme           equ 0x0035BD6A
OptQuests           equ 0x0035BD6B
OptCamSpeed         equ 0x0035BD6C

; Usually at 0x0034D450

InputRAnalogDir     equ 0x382
InputFace           equ 0x368
InputFace2          equ 0x36A
InputFaceHold       equ 0x364
InputFaceHold2      equ 0x36C
InputRAnalog        equ 0x37C
InputLAnalog        equ 0x378

; Camera S3 0x003E1C20

BtnR3                      equ 0x0001
BtnL3                      equ 0x0002
BtnL2                      equ 0x0004
BtnL1                      equ 0x0008
BtnR2                      equ 0x0010
BtnCircle                  equ 0x0020
BtnCross                   equ 0x0040
BtnR1                      equ 0x0080
BtnTriangle                equ 0x0100
BtnSquare                  equ 0x0200
BtnSelect                  equ 0x4000
BtnTriangleCircle          equ 0x0120
BtnTriangleCircleSelect    equ 0x4120
BtnSquareCircle            equ 0x0220

MoveLeft     equ 0x800
MoveRight    equ 0x400
MoveDown     equ 0x1000