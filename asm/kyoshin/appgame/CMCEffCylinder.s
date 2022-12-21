.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80225D00
func_80225D00:
/* 80225D00 001EF2C0  3C C0 80 54 */	lis r6, __vt__CMCEffCylinder@ha
/* 80225D04 001EF2C4  38 A0 00 00 */	li r5, 0
/* 80225D08 001EF2C8  38 C6 97 D0 */	addi r6, r6, __vt__CMCEffCylinder@l
/* 80225D0C 001EF2CC  38 00 00 01 */	li r0, 1
/* 80225D10 001EF2D0  90 C3 00 00 */	stw r6, 0(r3)
/* 80225D14 001EF2D4  98 A3 00 04 */	stb r5, 4(r3)
/* 80225D18 001EF2D8  98 03 00 05 */	stb r0, 5(r3)
/* 80225D1C 001EF2DC  90 83 00 08 */	stw r4, 8(r3)
/* 80225D20 001EF2E0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80225D24 001EF2E4  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80225D28 001EF2E8  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80225D2C 001EF2EC  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80225D30 001EF2F0  98 A3 00 1C */	stb r5, 0x1c(r3)
/* 80225D34 001EF2F4  4E 80 00 20 */	blr 

.global func_80225D38
func_80225D38:
/* 80225D38 001EF2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225D3C 001EF2FC  7C 08 02 A6 */	mflr r0
/* 80225D40 001EF300  2C 03 00 00 */	cmpwi r3, 0
/* 80225D44 001EF304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225D48 001EF308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225D4C 001EF30C  7C 7F 1B 78 */	mr r31, r3
/* 80225D50 001EF310  41 82 00 10 */	beq lbl_80225D60
/* 80225D54 001EF314  2C 04 00 00 */	cmpwi r4, 0
/* 80225D58 001EF318  40 81 00 08 */	ble lbl_80225D60
/* 80225D5C 001EF31C  48 20 EE D1 */	bl __dl__FPv
lbl_80225D60:
/* 80225D60 001EF320  7F E3 FB 78 */	mr r3, r31
/* 80225D64 001EF324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225D68 001EF328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225D6C 001EF32C  7C 08 03 A6 */	mtlr r0
/* 80225D70 001EF330  38 21 00 10 */	addi r1, r1, 0x10
/* 80225D74 001EF334  4E 80 00 20 */	blr 

.global func_80225D78
func_80225D78:
/* 80225D78 001EF338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225D7C 001EF33C  7C 08 02 A6 */	mflr r0
/* 80225D80 001EF340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225D84 001EF344  BF C1 00 08 */	stmw r30, 8(r1)
/* 80225D88 001EF348  3F E0 80 50 */	lis r31, lbl_80504CFC@ha
/* 80225D8C 001EF34C  3B FF 4C FC */	addi r31, r31, lbl_80504CFC@l
/* 80225D90 001EF350  7C 7E 1B 78 */	mr r30, r3
/* 80225D94 001EF354  38 BF 03 A4 */	addi r5, r31, 0x3a4
/* 80225D98 001EF358  80 83 00 08 */	lwz r4, 8(r3)
/* 80225D9C 001EF35C  38 63 00 0C */	addi r3, r3, 0xc
/* 80225DA0 001EF360  4B F1 10 E5 */	bl func_80136E84
/* 80225DA4 001EF364  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225DA8 001EF368  38 9E 00 10 */	addi r4, r30, 0x10
/* 80225DAC 001EF36C  80 BE 00 08 */	lwz r5, 8(r30)
/* 80225DB0 001EF370  38 DF 03 B9 */	addi r6, r31, 0x3b9
/* 80225DB4 001EF374  4B F1 11 55 */	bl func_80136F08
/* 80225DB8 001EF378  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225DBC 001EF37C  38 9E 00 14 */	addi r4, r30, 0x14
/* 80225DC0 001EF380  80 BE 00 08 */	lwz r5, 8(r30)
/* 80225DC4 001EF384  38 DF 03 D1 */	addi r6, r31, 0x3d1
/* 80225DC8 001EF388  4B F1 11 41 */	bl func_80136F08
/* 80225DCC 001EF38C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225DD0 001EF390  38 9E 00 18 */	addi r4, r30, 0x18
/* 80225DD4 001EF394  80 BE 00 08 */	lwz r5, 8(r30)
/* 80225DD8 001EF398  38 DF 03 ED */	addi r6, r31, 0x3ed
/* 80225DDC 001EF39C  4B F1 11 2D */	bl func_80136F08
/* 80225DE0 001EF3A0  4B F0 F7 C1 */	bl func_801355A0
/* 80225DE4 001EF3A4  2C 03 00 00 */	cmpwi r3, 0
/* 80225DE8 001EF3A8  7C 65 1B 78 */	mr r5, r3
/* 80225DEC 001EF3AC  41 82 00 10 */	beq lbl_80225DFC
/* 80225DF0 001EF3B0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225DF4 001EF3B4  38 9F 04 06 */	addi r4, r31, 0x406
/* 80225DF8 001EF3B8  4B F1 0A C9 */	bl func_801368C0
lbl_80225DFC:
/* 80225DFC 001EF3BC  7F C3 F3 78 */	mr r3, r30
/* 80225E00 001EF3C0  48 00 03 21 */	bl func_80226120
/* 80225E04 001EF3C4  38 00 00 01 */	li r0, 1
/* 80225E08 001EF3C8  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 80225E0C 001EF3CC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80225E10 001EF3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225E14 001EF3D4  7C 08 03 A6 */	mtlr r0
/* 80225E18 001EF3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80225E1C 001EF3DC  4E 80 00 20 */	blr 

.global func_80225E20
func_80225E20:
/* 80225E20 001EF3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225E24 001EF3E4  7C 08 02 A6 */	mflr r0
/* 80225E28 001EF3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225E2C 001EF3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225E30 001EF3F0  7C 7F 1B 78 */	mr r31, r3
/* 80225E34 001EF3F4  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80225E38 001EF3F8  2C 00 00 00 */	cmpwi r0, 0
/* 80225E3C 001EF3FC  41 82 00 50 */	beq lbl_80225E8C
/* 80225E40 001EF400  88 03 00 04 */	lbz r0, 4(r3)
/* 80225E44 001EF404  2C 00 00 01 */	cmpwi r0, 1
/* 80225E48 001EF408  41 82 00 18 */	beq lbl_80225E60
/* 80225E4C 001EF40C  2C 00 00 03 */	cmpwi r0, 3
/* 80225E50 001EF410  41 82 00 18 */	beq lbl_80225E68
/* 80225E54 001EF414  2C 00 00 04 */	cmpwi r0, 4
/* 80225E58 001EF418  41 82 00 18 */	beq lbl_80225E70
/* 80225E5C 001EF41C  48 00 00 18 */	b lbl_80225E74
lbl_80225E60:
/* 80225E60 001EF420  48 00 01 DD */	bl func_8022603C
/* 80225E64 001EF424  48 00 00 10 */	b lbl_80225E74
lbl_80225E68:
/* 80225E68 001EF428  48 00 02 21 */	bl func_80226088
/* 80225E6C 001EF42C  48 00 00 08 */	b lbl_80225E74
lbl_80225E70:
/* 80225E70 001EF430  48 00 02 65 */	bl func_802260D4
lbl_80225E74:
/* 80225E74 001EF434  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80225E78 001EF438  38 80 00 00 */	li r4, 0
/* 80225E7C 001EF43C  81 83 00 00 */	lwz r12, 0(r3)
/* 80225E80 001EF440  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80225E84 001EF444  7D 89 03 A6 */	mtctr r12
/* 80225E88 001EF448  4E 80 04 21 */	bctrl 
lbl_80225E8C:
/* 80225E8C 001EF44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225E90 001EF450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225E94 001EF454  7C 08 03 A6 */	mtlr r0
/* 80225E98 001EF458  38 21 00 10 */	addi r1, r1, 0x10
/* 80225E9C 001EF45C  4E 80 00 20 */	blr 

.global func_80225EA0
func_80225EA0:
/* 80225EA0 001EF460  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80225EA4 001EF464  2C 00 00 00 */	cmpwi r0, 0
/* 80225EA8 001EF468  4D 82 00 20 */	beqlr 
/* 80225EAC 001EF46C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80225EB0 001EF470  38 A0 00 00 */	li r5, 0
/* 80225EB4 001EF474  38 C0 00 01 */	li r6, 1
/* 80225EB8 001EF478  4B F1 11 80 */	b func_80137038
/* 80225EBC 001EF47C  4E 80 00 20 */	blr 

.global func_80225EC0
func_80225EC0:
/* 80225EC0 001EF480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225EC4 001EF484  7C 08 02 A6 */	mflr r0
/* 80225EC8 001EF488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225ECC 001EF48C  38 00 00 00 */	li r0, 0
/* 80225ED0 001EF490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225ED4 001EF494  7C 7F 1B 78 */	mr r31, r3
/* 80225ED8 001EF498  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80225EDC 001EF49C  98 03 00 1C */	stb r0, 0x1c(r3)
/* 80225EE0 001EF4A0  2C 04 00 00 */	cmpwi r4, 0
/* 80225EE4 001EF4A4  41 82 00 28 */	beq lbl_80225F0C
/* 80225EE8 001EF4A8  41 82 00 1C */	beq lbl_80225F04
/* 80225EEC 001EF4AC  7C 83 23 78 */	mr r3, r4
/* 80225EF0 001EF4B0  38 80 00 01 */	li r4, 1
/* 80225EF4 001EF4B4  81 83 00 00 */	lwz r12, 0(r3)
/* 80225EF8 001EF4B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80225EFC 001EF4BC  7D 89 03 A6 */	mtctr r12
/* 80225F00 001EF4C0  4E 80 04 21 */	bctrl 
lbl_80225F04:
/* 80225F04 001EF4C4  38 00 00 00 */	li r0, 0
/* 80225F08 001EF4C8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80225F0C:
/* 80225F0C 001EF4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225F10 001EF4D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225F14 001EF4D4  7C 08 03 A6 */	mtlr r0
/* 80225F18 001EF4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80225F1C 001EF4DC  4E 80 00 20 */	blr 

.global func_80225F20
func_80225F20:
/* 80225F20 001EF4E0  88 63 00 05 */	lbz r3, 5(r3)
/* 80225F24 001EF4E4  4E 80 00 20 */	blr 

.global func_80225F28
func_80225F28:
/* 80225F28 001EF4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225F2C 001EF4EC  7C 08 02 A6 */	mflr r0
/* 80225F30 001EF4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225F34 001EF4F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225F38 001EF4F8  7C 7F 1B 78 */	mr r31, r3
/* 80225F3C 001EF4FC  88 03 00 04 */	lbz r0, 4(r3)
/* 80225F40 001EF500  2C 00 00 00 */	cmpwi r0, 0
/* 80225F44 001EF504  40 82 00 24 */	bne lbl_80225F68
/* 80225F48 001EF508  38 00 00 01 */	li r0, 1
/* 80225F4C 001EF50C  98 03 00 04 */	stb r0, 4(r3)
/* 80225F50 001EF510  48 00 01 D1 */	bl func_80226120
/* 80225F54 001EF514  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80225F58 001EF518  38 00 00 00 */	li r0, 0
/* 80225F5C 001EF51C  C0 02 AA 90 */	lfs f0, lbl_8066AE10@sda21(r2)
/* 80225F60 001EF520  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80225F64 001EF524  98 1F 00 05 */	stb r0, 5(r31)
lbl_80225F68:
/* 80225F68 001EF528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225F6C 001EF52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225F70 001EF530  7C 08 03 A6 */	mtlr r0
/* 80225F74 001EF534  38 21 00 10 */	addi r1, r1, 0x10
/* 80225F78 001EF538  4E 80 00 20 */	blr 

.global func_80225F7C
func_80225F7C:
/* 80225F7C 001EF53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225F80 001EF540  7C 08 02 A6 */	mflr r0
/* 80225F84 001EF544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225F88 001EF548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225F8C 001EF54C  7C 7F 1B 78 */	mr r31, r3
/* 80225F90 001EF550  88 03 00 04 */	lbz r0, 4(r3)
/* 80225F94 001EF554  28 00 00 02 */	cmplwi r0, 2
/* 80225F98 001EF558  40 82 00 24 */	bne lbl_80225FBC
/* 80225F9C 001EF55C  38 00 00 03 */	li r0, 3
/* 80225FA0 001EF560  98 03 00 04 */	stb r0, 4(r3)
/* 80225FA4 001EF564  48 00 02 8D */	bl func_80226230
/* 80225FA8 001EF568  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80225FAC 001EF56C  38 00 00 00 */	li r0, 0
/* 80225FB0 001EF570  C0 02 AA 90 */	lfs f0, lbl_8066AE10@sda21(r2)
/* 80225FB4 001EF574  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80225FB8 001EF578  98 1F 00 05 */	stb r0, 5(r31)
lbl_80225FBC:
/* 80225FBC 001EF57C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225FC0 001EF580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225FC4 001EF584  7C 08 03 A6 */	mtlr r0
/* 80225FC8 001EF588  38 21 00 10 */	addi r1, r1, 0x10
/* 80225FCC 001EF58C  4E 80 00 20 */	blr 

.global func_80225FD0
func_80225FD0:
/* 80225FD0 001EF590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225FD4 001EF594  7C 08 02 A6 */	mflr r0
/* 80225FD8 001EF598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225FDC 001EF59C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225FE0 001EF5A0  7C 7F 1B 78 */	mr r31, r3
/* 80225FE4 001EF5A4  88 03 00 04 */	lbz r0, 4(r3)
/* 80225FE8 001EF5A8  28 00 00 02 */	cmplwi r0, 2
/* 80225FEC 001EF5AC  40 82 00 24 */	bne lbl_80226010
/* 80225FF0 001EF5B0  38 00 00 04 */	li r0, 4
/* 80225FF4 001EF5B4  98 03 00 04 */	stb r0, 4(r3)
/* 80225FF8 001EF5B8  48 00 01 B1 */	bl func_802261A8
/* 80225FFC 001EF5BC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80226000 001EF5C0  38 00 00 00 */	li r0, 0
/* 80226004 001EF5C4  C0 02 AA 90 */	lfs f0, lbl_8066AE10@sda21(r2)
/* 80226008 001EF5C8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8022600C 001EF5CC  98 1F 00 05 */	stb r0, 5(r31)
lbl_80226010:
/* 80226010 001EF5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80226014 001EF5D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80226018 001EF5D8  7C 08 03 A6 */	mtlr r0
/* 8022601C 001EF5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80226020 001EF5E0  4E 80 00 20 */	blr 

.global func_80226024
func_80226024:
/* 80226024 001EF5E4  3C C0 80 50 */	lis r6, lbl_80504CFC@ha
/* 80226028 001EF5E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8022602C 001EF5EC  38 C6 4C FC */	addi r6, r6, lbl_80504CFC@l
/* 80226030 001EF5F0  7C 85 23 78 */	mr r5, r4
/* 80226034 001EF5F4  38 86 04 06 */	addi r4, r6, 0x406
/* 80226038 001EF5F8  4B F1 08 D8 */	b func_80136910

.global func_8022603C
func_8022603C:
/* 8022603C 001EF5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80226040 001EF600  7C 08 02 A6 */	mflr r0
/* 80226044 001EF604  C0 22 AA 94 */	lfs f1, lbl_8066AE14@sda21(r2)
/* 80226048 001EF608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022604C 001EF60C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80226050 001EF610  7C 7F 1B 78 */	mr r31, r3
/* 80226054 001EF614  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80226058 001EF618  4B F1 13 ED */	bl func_80137444
/* 8022605C 001EF61C  2C 03 00 00 */	cmpwi r3, 0
/* 80226060 001EF620  41 82 00 14 */	beq lbl_80226074
/* 80226064 001EF624  38 60 00 02 */	li r3, 2
/* 80226068 001EF628  38 00 00 01 */	li r0, 1
/* 8022606C 001EF62C  98 7F 00 04 */	stb r3, 4(r31)
/* 80226070 001EF630  98 1F 00 05 */	stb r0, 5(r31)
lbl_80226074:
/* 80226074 001EF634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80226078 001EF638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022607C 001EF63C  7C 08 03 A6 */	mtlr r0
/* 80226080 001EF640  38 21 00 10 */	addi r1, r1, 0x10
/* 80226084 001EF644  4E 80 00 20 */	blr 

.global func_80226088
func_80226088:
/* 80226088 001EF648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022608C 001EF64C  7C 08 02 A6 */	mflr r0
/* 80226090 001EF650  C0 22 AA 94 */	lfs f1, lbl_8066AE14@sda21(r2)
/* 80226094 001EF654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80226098 001EF658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022609C 001EF65C  7C 7F 1B 78 */	mr r31, r3
/* 802260A0 001EF660  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802260A4 001EF664  4B F1 13 A1 */	bl func_80137444
/* 802260A8 001EF668  2C 03 00 00 */	cmpwi r3, 0
/* 802260AC 001EF66C  41 82 00 14 */	beq lbl_802260C0
/* 802260B0 001EF670  38 60 00 00 */	li r3, 0
/* 802260B4 001EF674  38 00 00 01 */	li r0, 1
/* 802260B8 001EF678  98 7F 00 04 */	stb r3, 4(r31)
/* 802260BC 001EF67C  98 1F 00 05 */	stb r0, 5(r31)
lbl_802260C0:
/* 802260C0 001EF680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802260C4 001EF684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802260C8 001EF688  7C 08 03 A6 */	mtlr r0
/* 802260CC 001EF68C  38 21 00 10 */	addi r1, r1, 0x10
/* 802260D0 001EF690  4E 80 00 20 */	blr 

.global func_802260D4
func_802260D4:
/* 802260D4 001EF694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802260D8 001EF698  7C 08 02 A6 */	mflr r0
/* 802260DC 001EF69C  C0 22 AA 94 */	lfs f1, lbl_8066AE14@sda21(r2)
/* 802260E0 001EF6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802260E4 001EF6A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802260E8 001EF6A8  7C 7F 1B 78 */	mr r31, r3
/* 802260EC 001EF6AC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802260F0 001EF6B0  4B F1 13 55 */	bl func_80137444
/* 802260F4 001EF6B4  2C 03 00 00 */	cmpwi r3, 0
/* 802260F8 001EF6B8  41 82 00 14 */	beq lbl_8022610C
/* 802260FC 001EF6BC  38 60 00 02 */	li r3, 2
/* 80226100 001EF6C0  38 00 00 01 */	li r0, 1
/* 80226104 001EF6C4  98 7F 00 04 */	stb r3, 4(r31)
/* 80226108 001EF6C8  98 1F 00 05 */	stb r0, 5(r31)
lbl_8022610C:
/* 8022610C 001EF6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80226110 001EF6D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80226114 001EF6D4  7C 08 03 A6 */	mtlr r0
/* 80226118 001EF6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022611C 001EF6DC  4E 80 00 20 */	blr 

.global func_80226120
func_80226120:
/* 80226120 001EF6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80226124 001EF6E4  7C 08 02 A6 */	mflr r0
/* 80226128 001EF6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022612C 001EF6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80226130 001EF6F0  7C 7F 1B 78 */	mr r31, r3
/* 80226134 001EF6F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80226138 001EF6F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8022613C 001EF6FC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80226140 001EF700  7D 89 03 A6 */	mtctr r12
/* 80226144 001EF704  4E 80 04 21 */	bctrl 
/* 80226148 001EF708  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8022614C 001EF70C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80226150 001EF710  81 83 00 00 */	lwz r12, 0(r3)
/* 80226154 001EF714  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80226158 001EF718  7D 89 03 A6 */	mtctr r12
/* 8022615C 001EF71C  4E 80 04 21 */	bctrl 
/* 80226160 001EF720  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80226164 001EF724  38 A0 00 01 */	li r5, 1
/* 80226168 001EF728  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8022616C 001EF72C  81 83 00 00 */	lwz r12, 0(r3)
/* 80226170 001EF730  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80226174 001EF734  7D 89 03 A6 */	mtctr r12
/* 80226178 001EF738  4E 80 04 21 */	bctrl 
/* 8022617C 001EF73C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80226180 001EF740  38 80 00 00 */	li r4, 0
/* 80226184 001EF744  81 83 00 00 */	lwz r12, 0(r3)
/* 80226188 001EF748  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022618C 001EF74C  7D 89 03 A6 */	mtctr r12
/* 80226190 001EF750  4E 80 04 21 */	bctrl 
/* 80226194 001EF754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80226198 001EF758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022619C 001EF75C  7C 08 03 A6 */	mtlr r0
/* 802261A0 001EF760  38 21 00 10 */	addi r1, r1, 0x10
/* 802261A4 001EF764  4E 80 00 20 */	blr 

.global func_802261A8
func_802261A8:
/* 802261A8 001EF768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802261AC 001EF76C  7C 08 02 A6 */	mflr r0
/* 802261B0 001EF770  90 01 00 14 */	stw r0, 0x14(r1)
/* 802261B4 001EF774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802261B8 001EF778  7C 7F 1B 78 */	mr r31, r3
/* 802261BC 001EF77C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802261C0 001EF780  81 83 00 00 */	lwz r12, 0(r3)
/* 802261C4 001EF784  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802261C8 001EF788  7D 89 03 A6 */	mtctr r12
/* 802261CC 001EF78C  4E 80 04 21 */	bctrl 
/* 802261D0 001EF790  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802261D4 001EF794  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802261D8 001EF798  81 83 00 00 */	lwz r12, 0(r3)
/* 802261DC 001EF79C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802261E0 001EF7A0  7D 89 03 A6 */	mtctr r12
/* 802261E4 001EF7A4  4E 80 04 21 */	bctrl 
/* 802261E8 001EF7A8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802261EC 001EF7AC  38 A0 00 01 */	li r5, 1
/* 802261F0 001EF7B0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802261F4 001EF7B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802261F8 001EF7B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802261FC 001EF7BC  7D 89 03 A6 */	mtctr r12
/* 80226200 001EF7C0  4E 80 04 21 */	bctrl 
/* 80226204 001EF7C4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80226208 001EF7C8  38 80 00 00 */	li r4, 0
/* 8022620C 001EF7CC  81 83 00 00 */	lwz r12, 0(r3)
/* 80226210 001EF7D0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80226214 001EF7D4  7D 89 03 A6 */	mtctr r12
/* 80226218 001EF7D8  4E 80 04 21 */	bctrl 
/* 8022621C 001EF7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80226220 001EF7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80226224 001EF7E4  7C 08 03 A6 */	mtlr r0
/* 80226228 001EF7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022622C 001EF7EC  4E 80 00 20 */	blr 

.global func_80226230
func_80226230:
/* 80226230 001EF7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80226234 001EF7F4  7C 08 02 A6 */	mflr r0
/* 80226238 001EF7F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022623C 001EF7FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80226240 001EF800  7C 7F 1B 78 */	mr r31, r3
/* 80226244 001EF804  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80226248 001EF808  81 83 00 00 */	lwz r12, 0(r3)
/* 8022624C 001EF80C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80226250 001EF810  7D 89 03 A6 */	mtctr r12
/* 80226254 001EF814  4E 80 04 21 */	bctrl 
/* 80226258 001EF818  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8022625C 001EF81C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80226260 001EF820  81 83 00 00 */	lwz r12, 0(r3)
/* 80226264 001EF824  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80226268 001EF828  7D 89 03 A6 */	mtctr r12
/* 8022626C 001EF82C  4E 80 04 21 */	bctrl 
/* 80226270 001EF830  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80226274 001EF834  38 A0 00 01 */	li r5, 1
/* 80226278 001EF838  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8022627C 001EF83C  81 83 00 00 */	lwz r12, 0(r3)
/* 80226280 001EF840  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80226284 001EF844  7D 89 03 A6 */	mtctr r12
/* 80226288 001EF848  4E 80 04 21 */	bctrl 
/* 8022628C 001EF84C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80226290 001EF850  38 80 00 00 */	li r4, 0
/* 80226294 001EF854  81 83 00 00 */	lwz r12, 0(r3)
/* 80226298 001EF858  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022629C 001EF85C  7D 89 03 A6 */	mtctr r12
/* 802262A0 001EF860  4E 80 04 21 */	bctrl 
/* 802262A4 001EF864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802262A8 001EF868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802262AC 001EF86C  7C 08 03 A6 */	mtlr r0
/* 802262B0 001EF870  38 21 00 10 */	addi r1, r1, 0x10
/* 802262B4 001EF874  4E 80 00 20 */	blr 