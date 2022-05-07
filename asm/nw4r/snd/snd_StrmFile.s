.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80421BE8
func_80421BE8:
/* 80421BE8 003EB1A8  38 00 00 00 */	li r0, 0
/* 80421BEC 003EB1AC  90 03 00 00 */	stw r0, 0(r3)
/* 80421BF0 003EB1B0  90 03 00 04 */	stw r0, 4(r3)
/* 80421BF4 003EB1B4  4E 80 00 20 */	blr 

.global func_80421BF8
func_80421BF8:
/* 80421BF8 003EB1B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80421BFC 003EB1BC  7C 08 02 A6 */	mflr r0
/* 80421C00 003EB1C0  80 63 00 04 */	lwz r3, 4(r3)
/* 80421C04 003EB1C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421C08 003EB1C8  38 A3 00 08 */	addi r5, r3, 8
/* 80421C0C 003EB1CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80421C10 003EB1D0  7C 9F 23 78 */	mr r31, r4
/* 80421C14 003EB1D4  88 63 00 08 */	lbz r3, 8(r3)
/* 80421C18 003EB1D8  80 85 00 04 */	lwz r4, 4(r5)
/* 80421C1C 003EB1DC  48 00 7C 0D */	bl func_80429828
/* 80421C20 003EB1E0  88 03 00 00 */	lbz r0, 0(r3)
/* 80421C24 003EB1E4  2C 00 00 01 */	cmpwi r0, 1
/* 80421C28 003EB1E8  41 82 00 24 */	beq lbl_80421C4C
/* 80421C2C 003EB1EC  40 80 00 10 */	bge lbl_80421C3C
/* 80421C30 003EB1F0  2C 00 00 00 */	cmpwi r0, 0
/* 80421C34 003EB1F4  40 80 00 20 */	bge lbl_80421C54
/* 80421C38 003EB1F8  48 00 00 24 */	b lbl_80421C5C
lbl_80421C3C:
/* 80421C3C 003EB1FC  2C 00 00 03 */	cmpwi r0, 3
/* 80421C40 003EB200  40 80 00 1C */	bge lbl_80421C5C
/* 80421C44 003EB204  38 00 00 03 */	li r0, 3
/* 80421C48 003EB208  48 00 00 18 */	b lbl_80421C60
lbl_80421C4C:
/* 80421C4C 003EB20C  38 00 00 01 */	li r0, 1
/* 80421C50 003EB210  48 00 00 10 */	b lbl_80421C60
lbl_80421C54:
/* 80421C54 003EB214  38 00 00 02 */	li r0, 2
/* 80421C58 003EB218  48 00 00 08 */	b lbl_80421C60
lbl_80421C5C:
/* 80421C5C 003EB21C  38 00 00 03 */	li r0, 3
lbl_80421C60:
/* 80421C60 003EB220  90 1F 00 00 */	stw r0, 0(r31)
/* 80421C64 003EB224  88 83 00 01 */	lbz r4, 1(r3)
/* 80421C68 003EB228  7C 04 00 D0 */	neg r0, r4
/* 80421C6C 003EB22C  7C 00 23 78 */	or r0, r0, r4
/* 80421C70 003EB230  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80421C74 003EB234  98 1F 00 04 */	stb r0, 4(r31)
/* 80421C78 003EB238  88 03 00 02 */	lbz r0, 2(r3)
/* 80421C7C 003EB23C  90 1F 00 08 */	stw r0, 8(r31)
/* 80421C80 003EB240  88 83 00 03 */	lbz r4, 3(r3)
/* 80421C84 003EB244  A0 03 00 04 */	lhz r0, 4(r3)
/* 80421C88 003EB248  54 84 80 1E */	slwi r4, r4, 0x10
/* 80421C8C 003EB24C  7C 04 02 14 */	add r0, r4, r0
/* 80421C90 003EB250  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80421C94 003EB254  A0 03 00 06 */	lhz r0, 6(r3)
/* 80421C98 003EB258  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 80421C9C 003EB25C  80 03 00 08 */	lwz r0, 8(r3)
/* 80421CA0 003EB260  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80421CA4 003EB264  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80421CA8 003EB268  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80421CAC 003EB26C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80421CB0 003EB270  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80421CB4 003EB274  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80421CB8 003EB278  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80421CBC 003EB27C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80421CC0 003EB280  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80421CC4 003EB284  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80421CC8 003EB288  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80421CCC 003EB28C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80421CD0 003EB290  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80421CD4 003EB294  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80421CD8 003EB298  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80421CDC 003EB29C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80421CE0 003EB2A0  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80421CE4 003EB2A4  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80421CE8 003EB2A8  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80421CEC 003EB2AC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80421CF0 003EB2B0  38 60 00 01 */	li r3, 1
/* 80421CF4 003EB2B4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80421CF8 003EB2B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421CFC 003EB2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421D00 003EB2C0  7C 08 03 A6 */	mtlr r0
/* 80421D04 003EB2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80421D08 003EB2C8  4E 80 00 20 */	blr 

.global func_80421D0C
func_80421D0C:
/* 80421D0C 003EB2CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80421D10 003EB2D0  7C 08 02 A6 */	mflr r0
/* 80421D14 003EB2D4  80 C3 00 04 */	lwz r6, 4(r3)
/* 80421D18 003EB2D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80421D1C 003EB2DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80421D20 003EB2E0  7C 9F 23 78 */	mr r31, r4
/* 80421D24 003EB2E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80421D28 003EB2E8  7C BE 2B 78 */	mr r30, r5
/* 80421D2C 003EB2EC  38 A6 00 08 */	addi r5, r6, 8
/* 80421D30 003EB2F0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80421D34 003EB2F4  7C 7D 1B 78 */	mr r29, r3
/* 80421D38 003EB2F8  88 66 00 10 */	lbz r3, 0x10(r6)
/* 80421D3C 003EB2FC  80 86 00 14 */	lwz r4, 0x14(r6)
/* 80421D40 003EB300  48 00 7A E9 */	bl func_80429828
/* 80421D44 003EB304  88 03 00 00 */	lbz r0, 0(r3)
/* 80421D48 003EB308  7C 1E 00 00 */	cmpw r30, r0
/* 80421D4C 003EB30C  41 80 00 0C */	blt lbl_80421D58
/* 80421D50 003EB310  38 60 00 00 */	li r3, 0
/* 80421D54 003EB314  48 00 02 60 */	b lbl_80421FB4
lbl_80421D58:
/* 80421D58 003EB318  88 03 00 01 */	lbz r0, 1(r3)
/* 80421D5C 003EB31C  2C 00 00 01 */	cmpwi r0, 1
/* 80421D60 003EB320  41 82 01 34 */	beq lbl_80421E94
/* 80421D64 003EB324  40 80 02 4C */	bge lbl_80421FB0
/* 80421D68 003EB328  2C 00 00 00 */	cmpwi r0, 0
/* 80421D6C 003EB32C  40 80 00 08 */	bge lbl_80421D74
/* 80421D70 003EB330  48 00 02 40 */	b lbl_80421FB0
lbl_80421D74:
/* 80421D74 003EB334  57 C0 18 38 */	slwi r0, r30, 3
/* 80421D78 003EB338  80 9D 00 04 */	lwz r4, 4(r29)
/* 80421D7C 003EB33C  7C C3 02 14 */	add r6, r3, r0
/* 80421D80 003EB340  38 A4 00 08 */	addi r5, r4, 8
/* 80421D84 003EB344  88 66 00 04 */	lbz r3, 4(r6)
/* 80421D88 003EB348  80 86 00 08 */	lwz r4, 8(r6)
/* 80421D8C 003EB34C  48 00 7A 9D */	bl func_80429828
/* 80421D90 003EB350  2C 03 00 00 */	cmpwi r3, 0
/* 80421D94 003EB354  40 82 00 0C */	bne lbl_80421DA0
/* 80421D98 003EB358  38 60 00 00 */	li r3, 0
/* 80421D9C 003EB35C  48 00 02 18 */	b lbl_80421FB4
lbl_80421DA0:
/* 80421DA0 003EB360  38 80 00 7F */	li r4, 0x7f
/* 80421DA4 003EB364  38 00 00 40 */	li r0, 0x40
/* 80421DA8 003EB368  98 9F 00 00 */	stb r4, 0(r31)
/* 80421DAC 003EB36C  38 A0 00 20 */	li r5, 0x20
/* 80421DB0 003EB370  98 1F 00 01 */	stb r0, 1(r31)
/* 80421DB4 003EB374  88 03 00 00 */	lbz r0, 0(r3)
/* 80421DB8 003EB378  2C 00 00 20 */	cmpwi r0, 0x20
/* 80421DBC 003EB37C  90 1F 00 04 */	stw r0, 4(r31)
/* 80421DC0 003EB380  41 81 00 08 */	bgt lbl_80421DC8
/* 80421DC4 003EB384  7C 05 03 78 */	mr r5, r0
lbl_80421DC8:
/* 80421DC8 003EB388  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 80421DCC 003EB38C  39 00 00 00 */	li r8, 0
/* 80421DD0 003EB390  40 85 01 E0 */	ble cr1, lbl_80421FB0
/* 80421DD4 003EB394  2C 05 00 08 */	cmpwi r5, 8
/* 80421DD8 003EB398  38 C5 FF F8 */	addi r6, r5, -8
/* 80421DDC 003EB39C  40 81 00 8C */	ble lbl_80421E68
/* 80421DE0 003EB3A0  38 E0 00 00 */	li r7, 0
/* 80421DE4 003EB3A4  41 84 00 18 */	blt cr1, lbl_80421DFC
/* 80421DE8 003EB3A8  3C 80 80 00 */	lis r4, 0x7FFFFFFE@ha
/* 80421DEC 003EB3AC  38 04 FF FE */	addi r0, r4, 0x7FFFFFFE@l
/* 80421DF0 003EB3B0  7C 05 00 00 */	cmpw r5, r0
/* 80421DF4 003EB3B4  41 81 00 08 */	bgt lbl_80421DFC
/* 80421DF8 003EB3B8  38 E0 00 01 */	li r7, 1
lbl_80421DFC:
/* 80421DFC 003EB3BC  2C 07 00 00 */	cmpwi r7, 0
/* 80421E00 003EB3C0  41 82 00 68 */	beq lbl_80421E68
/* 80421E04 003EB3C4  38 06 00 07 */	addi r0, r6, 7
/* 80421E08 003EB3C8  54 00 E8 FE */	srwi r0, r0, 3
/* 80421E0C 003EB3CC  7C 09 03 A6 */	mtctr r0
/* 80421E10 003EB3D0  2C 06 00 00 */	cmpwi r6, 0
/* 80421E14 003EB3D4  40 81 00 54 */	ble lbl_80421E68
lbl_80421E18:
/* 80421E18 003EB3D8  7C 83 42 14 */	add r4, r3, r8
/* 80421E1C 003EB3DC  7C DF 42 14 */	add r6, r31, r8
/* 80421E20 003EB3E0  88 04 00 01 */	lbz r0, 1(r4)
/* 80421E24 003EB3E4  39 08 00 08 */	addi r8, r8, 8
/* 80421E28 003EB3E8  98 06 00 08 */	stb r0, 8(r6)
/* 80421E2C 003EB3EC  88 04 00 02 */	lbz r0, 2(r4)
/* 80421E30 003EB3F0  98 06 00 09 */	stb r0, 9(r6)
/* 80421E34 003EB3F4  88 04 00 03 */	lbz r0, 3(r4)
/* 80421E38 003EB3F8  98 06 00 0A */	stb r0, 0xa(r6)
/* 80421E3C 003EB3FC  88 04 00 04 */	lbz r0, 4(r4)
/* 80421E40 003EB400  98 06 00 0B */	stb r0, 0xb(r6)
/* 80421E44 003EB404  88 04 00 05 */	lbz r0, 5(r4)
/* 80421E48 003EB408  98 06 00 0C */	stb r0, 0xc(r6)
/* 80421E4C 003EB40C  88 04 00 06 */	lbz r0, 6(r4)
/* 80421E50 003EB410  98 06 00 0D */	stb r0, 0xd(r6)
/* 80421E54 003EB414  88 04 00 07 */	lbz r0, 7(r4)
/* 80421E58 003EB418  98 06 00 0E */	stb r0, 0xe(r6)
/* 80421E5C 003EB41C  88 04 00 08 */	lbz r0, 8(r4)
/* 80421E60 003EB420  98 06 00 0F */	stb r0, 0xf(r6)
/* 80421E64 003EB424  42 00 FF B4 */	bdnz lbl_80421E18
lbl_80421E68:
/* 80421E68 003EB428  7C 08 28 50 */	subf r0, r8, r5
/* 80421E6C 003EB42C  7C 09 03 A6 */	mtctr r0
/* 80421E70 003EB430  7C 08 28 00 */	cmpw r8, r5
/* 80421E74 003EB434  40 80 01 3C */	bge lbl_80421FB0
lbl_80421E78:
/* 80421E78 003EB438  7C A3 42 14 */	add r5, r3, r8
/* 80421E7C 003EB43C  7C 9F 42 14 */	add r4, r31, r8
/* 80421E80 003EB440  88 05 00 01 */	lbz r0, 1(r5)
/* 80421E84 003EB444  39 08 00 01 */	addi r8, r8, 1
/* 80421E88 003EB448  98 04 00 08 */	stb r0, 8(r4)
/* 80421E8C 003EB44C  42 00 FF EC */	bdnz lbl_80421E78
/* 80421E90 003EB450  48 00 01 20 */	b lbl_80421FB0
lbl_80421E94:
/* 80421E94 003EB454  57 C0 18 38 */	slwi r0, r30, 3
/* 80421E98 003EB458  80 9D 00 04 */	lwz r4, 4(r29)
/* 80421E9C 003EB45C  7C C3 02 14 */	add r6, r3, r0
/* 80421EA0 003EB460  38 A4 00 08 */	addi r5, r4, 8
/* 80421EA4 003EB464  88 66 00 04 */	lbz r3, 4(r6)
/* 80421EA8 003EB468  80 86 00 08 */	lwz r4, 8(r6)
/* 80421EAC 003EB46C  48 00 79 7D */	bl func_80429828
/* 80421EB0 003EB470  2C 03 00 00 */	cmpwi r3, 0
/* 80421EB4 003EB474  40 82 00 0C */	bne lbl_80421EC0
/* 80421EB8 003EB478  38 60 00 00 */	li r3, 0
/* 80421EBC 003EB47C  48 00 00 F8 */	b lbl_80421FB4
lbl_80421EC0:
/* 80421EC0 003EB480  88 03 00 00 */	lbz r0, 0(r3)
/* 80421EC4 003EB484  38 A0 00 20 */	li r5, 0x20
/* 80421EC8 003EB488  98 1F 00 00 */	stb r0, 0(r31)
/* 80421ECC 003EB48C  88 03 00 01 */	lbz r0, 1(r3)
/* 80421ED0 003EB490  98 1F 00 01 */	stb r0, 1(r31)
/* 80421ED4 003EB494  88 03 00 08 */	lbz r0, 8(r3)
/* 80421ED8 003EB498  2C 00 00 20 */	cmpwi r0, 0x20
/* 80421EDC 003EB49C  90 1F 00 04 */	stw r0, 4(r31)
/* 80421EE0 003EB4A0  41 81 00 08 */	bgt lbl_80421EE8
/* 80421EE4 003EB4A4  7C 05 03 78 */	mr r5, r0
lbl_80421EE8:
/* 80421EE8 003EB4A8  2C 85 00 00 */	cmpwi cr1, r5, 0
/* 80421EEC 003EB4AC  39 00 00 00 */	li r8, 0
/* 80421EF0 003EB4B0  40 85 00 C0 */	ble cr1, lbl_80421FB0
/* 80421EF4 003EB4B4  2C 05 00 08 */	cmpwi r5, 8
/* 80421EF8 003EB4B8  38 C5 FF F8 */	addi r6, r5, -8
/* 80421EFC 003EB4BC  40 81 00 8C */	ble lbl_80421F88
/* 80421F00 003EB4C0  38 E0 00 00 */	li r7, 0
/* 80421F04 003EB4C4  41 84 00 18 */	blt cr1, lbl_80421F1C
/* 80421F08 003EB4C8  3C 80 80 00 */	lis r4, 0x7FFFFFFE@ha
/* 80421F0C 003EB4CC  38 04 FF FE */	addi r0, r4, 0x7FFFFFFE@l
/* 80421F10 003EB4D0  7C 05 00 00 */	cmpw r5, r0
/* 80421F14 003EB4D4  41 81 00 08 */	bgt lbl_80421F1C
/* 80421F18 003EB4D8  38 E0 00 01 */	li r7, 1
lbl_80421F1C:
/* 80421F1C 003EB4DC  2C 07 00 00 */	cmpwi r7, 0
/* 80421F20 003EB4E0  41 82 00 68 */	beq lbl_80421F88
/* 80421F24 003EB4E4  38 06 00 07 */	addi r0, r6, 7
/* 80421F28 003EB4E8  54 00 E8 FE */	srwi r0, r0, 3
/* 80421F2C 003EB4EC  7C 09 03 A6 */	mtctr r0
/* 80421F30 003EB4F0  2C 06 00 00 */	cmpwi r6, 0
/* 80421F34 003EB4F4  40 81 00 54 */	ble lbl_80421F88
lbl_80421F38:
/* 80421F38 003EB4F8  7C 83 42 14 */	add r4, r3, r8
/* 80421F3C 003EB4FC  7C DF 42 14 */	add r6, r31, r8
/* 80421F40 003EB500  88 04 00 09 */	lbz r0, 9(r4)
/* 80421F44 003EB504  39 08 00 08 */	addi r8, r8, 8
/* 80421F48 003EB508  98 06 00 08 */	stb r0, 8(r6)
/* 80421F4C 003EB50C  88 04 00 0A */	lbz r0, 0xa(r4)
/* 80421F50 003EB510  98 06 00 09 */	stb r0, 9(r6)
/* 80421F54 003EB514  88 04 00 0B */	lbz r0, 0xb(r4)
/* 80421F58 003EB518  98 06 00 0A */	stb r0, 0xa(r6)
/* 80421F5C 003EB51C  88 04 00 0C */	lbz r0, 0xc(r4)
/* 80421F60 003EB520  98 06 00 0B */	stb r0, 0xb(r6)
/* 80421F64 003EB524  88 04 00 0D */	lbz r0, 0xd(r4)
/* 80421F68 003EB528  98 06 00 0C */	stb r0, 0xc(r6)
/* 80421F6C 003EB52C  88 04 00 0E */	lbz r0, 0xe(r4)
/* 80421F70 003EB530  98 06 00 0D */	stb r0, 0xd(r6)
/* 80421F74 003EB534  88 04 00 0F */	lbz r0, 0xf(r4)
/* 80421F78 003EB538  98 06 00 0E */	stb r0, 0xe(r6)
/* 80421F7C 003EB53C  88 04 00 10 */	lbz r0, 0x10(r4)
/* 80421F80 003EB540  98 06 00 0F */	stb r0, 0xf(r6)
/* 80421F84 003EB544  42 00 FF B4 */	bdnz lbl_80421F38
lbl_80421F88:
/* 80421F88 003EB548  7C 08 28 50 */	subf r0, r8, r5
/* 80421F8C 003EB54C  7C 09 03 A6 */	mtctr r0
/* 80421F90 003EB550  7C 08 28 00 */	cmpw r8, r5
/* 80421F94 003EB554  40 80 00 1C */	bge lbl_80421FB0
lbl_80421F98:
/* 80421F98 003EB558  7C A3 42 14 */	add r5, r3, r8
/* 80421F9C 003EB55C  7C 9F 42 14 */	add r4, r31, r8
/* 80421FA0 003EB560  88 05 00 09 */	lbz r0, 9(r5)
/* 80421FA4 003EB564  39 08 00 01 */	addi r8, r8, 1
/* 80421FA8 003EB568  98 04 00 08 */	stb r0, 8(r4)
/* 80421FAC 003EB56C  42 00 FF EC */	bdnz lbl_80421F98
lbl_80421FB0:
/* 80421FB0 003EB570  38 60 00 01 */	li r3, 1
lbl_80421FB4:
/* 80421FB4 003EB574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80421FB8 003EB578  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80421FBC 003EB57C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80421FC0 003EB580  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80421FC4 003EB584  7C 08 03 A6 */	mtlr r0
/* 80421FC8 003EB588  38 21 00 20 */	addi r1, r1, 0x20
/* 80421FCC 003EB58C  4E 80 00 20 */	blr 

.global func_80421FD0
func_80421FD0:
/* 80421FD0 003EB590  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80421FD4 003EB594  7C 08 02 A6 */	mflr r0
/* 80421FD8 003EB598  90 01 00 84 */	stw r0, 0x84(r1)
/* 80421FDC 003EB59C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80421FE0 003EB5A0  7C 9F 23 78 */	mr r31, r4
/* 80421FE4 003EB5A4  38 80 00 00 */	li r4, 0
/* 80421FE8 003EB5A8  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80421FEC 003EB5AC  7C 7E 1B 78 */	mr r30, r3
/* 80421FF0 003EB5B0  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80421FF4 003EB5B4  93 81 00 70 */	stw r28, 0x70(r1)
/* 80421FF8 003EB5B8  7C BC 2B 78 */	mr r28, r5
/* 80421FFC 003EB5BC  38 A0 00 00 */	li r5, 0
/* 80422000 003EB5C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80422004 003EB5C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80422008 003EB5C8  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8042200C 003EB5CC  7D 89 03 A6 */	mtctr r12
/* 80422010 003EB5D0  4E 80 04 21 */	bctrl 
/* 80422014 003EB5D4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80422018 003EB5D8  38 01 00 27 */	addi r0, r1, 0x27
/* 8042201C 003EB5DC  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 80422020 003EB5E0  38 A0 00 40 */	li r5, 0x40
/* 80422024 003EB5E4  81 83 00 00 */	lwz r12, 0(r3)
/* 80422028 003EB5E8  7F A4 EB 78 */	mr r4, r29
/* 8042202C 003EB5EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80422030 003EB5F0  7D 89 03 A6 */	mtctr r12
/* 80422034 003EB5F4  4E 80 04 21 */	bctrl 
/* 80422038 003EB5F8  28 03 00 40 */	cmplwi r3, 0x40
/* 8042203C 003EB5FC  41 82 00 0C */	beq lbl_80422048
/* 80422040 003EB600  38 60 00 00 */	li r3, 0
/* 80422044 003EB604  48 00 01 30 */	b lbl_80422174
lbl_80422048:
/* 80422048 003EB608  80 7D 00 00 */	lwz r3, 0(r29)
/* 8042204C 003EB60C  3C 03 AD AD */	addis r0, r3, 0xadad
/* 80422050 003EB610  28 00 54 4D */	cmplwi r0, 0x544d
/* 80422054 003EB614  41 82 00 0C */	beq lbl_80422060
/* 80422058 003EB618  38 00 00 00 */	li r0, 0
/* 8042205C 003EB61C  48 00 00 30 */	b lbl_8042208C
lbl_80422060:
/* 80422060 003EB620  A0 9D 00 06 */	lhz r4, 6(r29)
/* 80422064 003EB624  28 04 01 00 */	cmplwi r4, 0x100
/* 80422068 003EB628  40 80 00 0C */	bge lbl_80422074
/* 8042206C 003EB62C  38 00 00 00 */	li r0, 0
/* 80422070 003EB630  48 00 00 1C */	b lbl_8042208C
lbl_80422074:
/* 80422074 003EB634  20 04 01 00 */	subfic r0, r4, 0x100
/* 80422078 003EB638  38 60 01 00 */	li r3, 0x100
/* 8042207C 003EB63C  7C 63 23 38 */	orc r3, r3, r4
/* 80422080 003EB640  54 00 F8 7E */	srwi r0, r0, 1
/* 80422084 003EB644  7C 00 18 50 */	subf r0, r0, r3
/* 80422088 003EB648  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_8042208C:
/* 8042208C 003EB64C  2C 00 00 00 */	cmpwi r0, 0
/* 80422090 003EB650  40 82 00 0C */	bne lbl_8042209C
/* 80422094 003EB654  38 60 00 00 */	li r3, 0
/* 80422098 003EB658  48 00 00 DC */	b lbl_80422174
lbl_8042209C:
/* 8042209C 003EB65C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 804220A0 003EB660  7C 00 E0 40 */	cmplw r0, r28
/* 804220A4 003EB664  40 81 00 0C */	ble lbl_804220B0
/* 804220A8 003EB668  38 60 00 00 */	li r3, 0
/* 804220AC 003EB66C  48 00 00 C8 */	b lbl_80422174
lbl_804220B0:
/* 804220B0 003EB670  80 7E 00 00 */	lwz r3, 0(r30)
/* 804220B4 003EB674  38 80 00 00 */	li r4, 0
/* 804220B8 003EB678  80 DD 00 10 */	lwz r6, 0x10(r29)
/* 804220BC 003EB67C  38 A0 00 00 */	li r5, 0
/* 804220C0 003EB680  81 83 00 00 */	lwz r12, 0(r3)
/* 804220C4 003EB684  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 804220C8 003EB688  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 804220CC 003EB68C  7F A6 02 14 */	add r29, r6, r0
/* 804220D0 003EB690  7D 89 03 A6 */	mtctr r12
/* 804220D4 003EB694  4E 80 04 21 */	bctrl 
/* 804220D8 003EB698  80 7E 00 00 */	lwz r3, 0(r30)
/* 804220DC 003EB69C  7F E4 FB 78 */	mr r4, r31
/* 804220E0 003EB6A0  7F A5 EB 78 */	mr r5, r29
/* 804220E4 003EB6A4  81 83 00 00 */	lwz r12, 0(r3)
/* 804220E8 003EB6A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804220EC 003EB6AC  7D 89 03 A6 */	mtctr r12
/* 804220F0 003EB6B0  4E 80 04 21 */	bctrl 
/* 804220F4 003EB6B4  7C 03 E8 40 */	cmplw r3, r29
/* 804220F8 003EB6B8  41 82 00 0C */	beq lbl_80422104
/* 804220FC 003EB6BC  38 60 00 00 */	li r3, 0
/* 80422100 003EB6C0  48 00 00 74 */	b lbl_80422174
lbl_80422104:
/* 80422104 003EB6C4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80422108 003EB6C8  3C 03 AD AD */	addis r0, r3, 0xadad
/* 8042210C 003EB6CC  28 00 54 4D */	cmplwi r0, 0x544d
/* 80422110 003EB6D0  41 82 00 0C */	beq lbl_8042211C
/* 80422114 003EB6D4  38 00 00 00 */	li r0, 0
/* 80422118 003EB6D8  48 00 00 30 */	b lbl_80422148
lbl_8042211C:
/* 8042211C 003EB6DC  A0 9F 00 06 */	lhz r4, 6(r31)
/* 80422120 003EB6E0  28 04 01 00 */	cmplwi r4, 0x100
/* 80422124 003EB6E4  40 80 00 0C */	bge lbl_80422130
/* 80422128 003EB6E8  38 00 00 00 */	li r0, 0
/* 8042212C 003EB6EC  48 00 00 1C */	b lbl_80422148
lbl_80422130:
/* 80422130 003EB6F0  20 04 01 00 */	subfic r0, r4, 0x100
/* 80422134 003EB6F4  38 60 01 00 */	li r3, 0x100
/* 80422138 003EB6F8  7C 63 23 38 */	orc r3, r3, r4
/* 8042213C 003EB6FC  54 00 F8 7E */	srwi r0, r0, 1
/* 80422140 003EB700  7C 00 18 50 */	subf r0, r0, r3
/* 80422144 003EB704  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_80422148:
/* 80422148 003EB708  2C 00 00 00 */	cmpwi r0, 0
/* 8042214C 003EB70C  41 82 00 24 */	beq lbl_80422170
/* 80422150 003EB710  93 FE 00 04 */	stw r31, 4(r30)
/* 80422154 003EB714  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80422158 003EB718  7C 60 FA 14 */	add r3, r0, r31
/* 8042215C 003EB71C  90 7E 00 08 */	stw r3, 8(r30)
/* 80422160 003EB720  38 A3 00 08 */	addi r5, r3, 8
/* 80422164 003EB724  88 63 00 08 */	lbz r3, 8(r3)
/* 80422168 003EB728  80 85 00 04 */	lwz r4, 4(r5)
/* 8042216C 003EB72C  48 00 76 BD */	bl func_80429828
lbl_80422170:
/* 80422170 003EB730  38 60 00 01 */	li r3, 1
lbl_80422174:
/* 80422174 003EB734  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80422178 003EB738  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8042217C 003EB73C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80422180 003EB740  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 80422184 003EB744  83 81 00 70 */	lwz r28, 0x70(r1)
/* 80422188 003EB748  7C 08 03 A6 */	mtlr r0
/* 8042218C 003EB74C  38 21 00 80 */	addi r1, r1, 0x80
/* 80422190 003EB750  4E 80 00 20 */	blr 

.global func_80422194
func_80422194:
/* 80422194 003EB754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80422198 003EB758  7C 08 02 A6 */	mflr r0
/* 8042219C 003EB75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804221A0 003EB760  80 03 00 04 */	lwz r0, 4(r3)
/* 804221A4 003EB764  2C 00 00 00 */	cmpwi r0, 0
/* 804221A8 003EB768  40 82 00 0C */	bne lbl_804221B4
/* 804221AC 003EB76C  38 60 00 00 */	li r3, 0
/* 804221B0 003EB770  48 00 00 1C */	b lbl_804221CC
lbl_804221B4:
/* 804221B4 003EB774  80 83 00 08 */	lwz r4, 8(r3)
/* 804221B8 003EB778  88 64 00 18 */	lbz r3, 0x18(r4)
/* 804221BC 003EB77C  38 A4 00 08 */	addi r5, r4, 8
/* 804221C0 003EB780  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 804221C4 003EB784  48 00 76 65 */	bl func_80429828
/* 804221C8 003EB788  88 63 00 00 */	lbz r3, 0(r3)
lbl_804221CC:
/* 804221CC 003EB78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804221D0 003EB790  7C 08 03 A6 */	mtlr r0
/* 804221D4 003EB794  38 21 00 10 */	addi r1, r1, 0x10
/* 804221D8 003EB798  4E 80 00 20 */	blr 

.global func_804221DC
func_804221DC:
/* 804221DC 003EB79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804221E0 003EB7A0  7C 08 02 A6 */	mflr r0
/* 804221E4 003EB7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804221E8 003EB7A8  80 03 00 04 */	lwz r0, 4(r3)
/* 804221EC 003EB7AC  2C 00 00 00 */	cmpwi r0, 0
/* 804221F0 003EB7B0  40 82 00 0C */	bne lbl_804221FC
/* 804221F4 003EB7B4  38 60 00 00 */	li r3, 0
/* 804221F8 003EB7B8  48 00 00 10 */	b lbl_80422208
lbl_804221FC:
/* 804221FC 003EB7BC  38 63 00 04 */	addi r3, r3, 4
/* 80422200 003EB7C0  4B FF F9 F9 */	bl func_80421BF8
/* 80422204 003EB7C4  38 60 00 01 */	li r3, 1
lbl_80422208:
/* 80422208 003EB7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042220C 003EB7CC  7C 08 03 A6 */	mtlr r0
/* 80422210 003EB7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80422214 003EB7D4  4E 80 00 20 */	blr 

.global func_80422218
func_80422218:
/* 80422218 003EB7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042221C 003EB7DC  7C 08 02 A6 */	mflr r0
/* 80422220 003EB7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80422224 003EB7E4  80 03 00 04 */	lwz r0, 4(r3)
/* 80422228 003EB7E8  2C 00 00 00 */	cmpwi r0, 0
/* 8042222C 003EB7EC  40 82 00 0C */	bne lbl_80422238
/* 80422230 003EB7F0  38 60 00 00 */	li r3, 0
/* 80422234 003EB7F4  48 00 00 10 */	b lbl_80422244
lbl_80422238:
/* 80422238 003EB7F8  38 63 00 04 */	addi r3, r3, 4
/* 8042223C 003EB7FC  4B FF FA D1 */	bl func_80421D0C
/* 80422240 003EB800  38 60 00 01 */	li r3, 1
lbl_80422244:
/* 80422244 003EB804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80422248 003EB808  7C 08 03 A6 */	mtlr r0
/* 8042224C 003EB80C  38 21 00 10 */	addi r1, r1, 0x10
/* 80422250 003EB810  4E 80 00 20 */	blr 

.global func_80422254
func_80422254:
/* 80422254 003EB814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80422258 003EB818  7C 08 02 A6 */	mflr r0
/* 8042225C 003EB81C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80422260 003EB820  80 03 00 04 */	lwz r0, 4(r3)
/* 80422264 003EB824  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80422268 003EB828  7C BF 2B 78 */	mr r31, r5
/* 8042226C 003EB82C  2C 00 00 00 */	cmpwi r0, 0
/* 80422270 003EB830  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80422274 003EB834  7C 9E 23 78 */	mr r30, r4
/* 80422278 003EB838  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042227C 003EB83C  7C DD 33 78 */	mr r29, r6
/* 80422280 003EB840  93 81 00 10 */	stw r28, 0x10(r1)
/* 80422284 003EB844  7C 7C 1B 78 */	mr r28, r3
/* 80422288 003EB848  40 82 00 0C */	bne lbl_80422294
/* 8042228C 003EB84C  38 60 00 00 */	li r3, 0
/* 80422290 003EB850  48 00 01 34 */	b lbl_804223C4
lbl_80422294:
/* 80422294 003EB854  80 63 00 08 */	lwz r3, 8(r3)
/* 80422298 003EB858  38 A3 00 08 */	addi r5, r3, 8
/* 8042229C 003EB85C  88 63 00 08 */	lbz r3, 8(r3)
/* 804222A0 003EB860  80 85 00 04 */	lwz r4, 4(r5)
/* 804222A4 003EB864  48 00 75 85 */	bl func_80429828
/* 804222A8 003EB868  88 03 00 00 */	lbz r0, 0(r3)
/* 804222AC 003EB86C  28 00 00 02 */	cmplwi r0, 2
/* 804222B0 003EB870  40 82 01 10 */	bne lbl_804223C0
/* 804222B4 003EB874  80 9C 00 08 */	lwz r4, 8(r28)
/* 804222B8 003EB878  88 64 00 18 */	lbz r3, 0x18(r4)
/* 804222BC 003EB87C  38 A4 00 08 */	addi r5, r4, 8
/* 804222C0 003EB880  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 804222C4 003EB884  48 00 75 65 */	bl func_80429828
/* 804222C8 003EB888  88 03 00 00 */	lbz r0, 0(r3)
/* 804222CC 003EB88C  7C 1D 00 00 */	cmpw r29, r0
/* 804222D0 003EB890  40 80 00 F0 */	bge lbl_804223C0
/* 804222D4 003EB894  57 A0 18 38 */	slwi r0, r29, 3
/* 804222D8 003EB898  80 9C 00 08 */	lwz r4, 8(r28)
/* 804222DC 003EB89C  7C C3 02 14 */	add r6, r3, r0
/* 804222E0 003EB8A0  38 A4 00 08 */	addi r5, r4, 8
/* 804222E4 003EB8A4  88 66 00 04 */	lbz r3, 4(r6)
/* 804222E8 003EB8A8  80 86 00 08 */	lwz r4, 8(r6)
/* 804222EC 003EB8AC  48 00 75 3D */	bl func_80429828
/* 804222F0 003EB8B0  7C 64 1B 78 */	mr r4, r3
/* 804222F4 003EB8B4  80 BC 00 08 */	lwz r5, 8(r28)
/* 804222F8 003EB8B8  88 63 00 00 */	lbz r3, 0(r3)
/* 804222FC 003EB8BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80422300 003EB8C0  38 A5 00 08 */	addi r5, r5, 8
/* 80422304 003EB8C4  48 00 75 25 */	bl func_80429828
/* 80422308 003EB8C8  A0 83 00 00 */	lhz r4, 0(r3)
/* 8042230C 003EB8CC  A0 03 00 02 */	lhz r0, 2(r3)
/* 80422310 003EB8D0  B0 9E 00 00 */	sth r4, 0(r30)
/* 80422314 003EB8D4  B0 1E 00 02 */	sth r0, 2(r30)
/* 80422318 003EB8D8  A0 83 00 04 */	lhz r4, 4(r3)
/* 8042231C 003EB8DC  A0 03 00 06 */	lhz r0, 6(r3)
/* 80422320 003EB8E0  B0 9E 00 04 */	sth r4, 4(r30)
/* 80422324 003EB8E4  B0 1E 00 06 */	sth r0, 6(r30)
/* 80422328 003EB8E8  A0 83 00 08 */	lhz r4, 8(r3)
/* 8042232C 003EB8EC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80422330 003EB8F0  B0 9E 00 08 */	sth r4, 8(r30)
/* 80422334 003EB8F4  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 80422338 003EB8F8  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 8042233C 003EB8FC  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 80422340 003EB900  B0 9E 00 0C */	sth r4, 0xc(r30)
/* 80422344 003EB904  B0 1E 00 0E */	sth r0, 0xe(r30)
/* 80422348 003EB908  A0 83 00 10 */	lhz r4, 0x10(r3)
/* 8042234C 003EB90C  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 80422350 003EB910  B0 9E 00 10 */	sth r4, 0x10(r30)
/* 80422354 003EB914  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 80422358 003EB918  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8042235C 003EB91C  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 80422360 003EB920  B0 9E 00 14 */	sth r4, 0x14(r30)
/* 80422364 003EB924  B0 1E 00 16 */	sth r0, 0x16(r30)
/* 80422368 003EB928  A0 83 00 18 */	lhz r4, 0x18(r3)
/* 8042236C 003EB92C  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 80422370 003EB930  B0 9E 00 18 */	sth r4, 0x18(r30)
/* 80422374 003EB934  B0 1E 00 1A */	sth r0, 0x1a(r30)
/* 80422378 003EB938  A0 83 00 1C */	lhz r4, 0x1c(r3)
/* 8042237C 003EB93C  A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 80422380 003EB940  B0 9E 00 1C */	sth r4, 0x1c(r30)
/* 80422384 003EB944  B0 1E 00 1E */	sth r0, 0x1e(r30)
/* 80422388 003EB948  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 8042238C 003EB94C  B0 1E 00 20 */	sth r0, 0x20(r30)
/* 80422390 003EB950  A0 03 00 22 */	lhz r0, 0x22(r3)
/* 80422394 003EB954  B0 1E 00 22 */	sth r0, 0x22(r30)
/* 80422398 003EB958  A0 03 00 24 */	lhz r0, 0x24(r3)
/* 8042239C 003EB95C  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 804223A0 003EB960  A0 03 00 26 */	lhz r0, 0x26(r3)
/* 804223A4 003EB964  B0 1E 00 26 */	sth r0, 0x26(r30)
/* 804223A8 003EB968  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 804223AC 003EB96C  B0 1F 00 00 */	sth r0, 0(r31)
/* 804223B0 003EB970  A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 804223B4 003EB974  B0 1F 00 02 */	sth r0, 2(r31)
/* 804223B8 003EB978  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 804223BC 003EB97C  B0 1F 00 04 */	sth r0, 4(r31)
lbl_804223C0:
/* 804223C0 003EB980  38 60 00 01 */	li r3, 1
lbl_804223C4:
/* 804223C4 003EB984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804223C8 003EB988  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804223CC 003EB98C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804223D0 003EB990  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804223D4 003EB994  83 81 00 10 */	lwz r28, 0x10(r1)
/* 804223D8 003EB998  7C 08 03 A6 */	mtlr r0
/* 804223DC 003EB99C  38 21 00 20 */	addi r1, r1, 0x20
/* 804223E0 003EB9A0  4E 80 00 20 */	blr 

.global func_804223E4
func_804223E4:
/* 804223E4 003EB9A4  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 804223E8 003EB9A8  7C 2C 0B 78 */	mr r12, r1
/* 804223EC 003EB9AC  21 6B FF A0 */	subfic r11, r11, -96
/* 804223F0 003EB9B0  7C 21 59 6E */	stwux r1, r1, r11
/* 804223F4 003EB9B4  7C 08 02 A6 */	mflr r0
/* 804223F8 003EB9B8  90 0C 00 04 */	stw r0, 4(r12)
/* 804223FC 003EB9BC  93 EC FF FC */	stw r31, -4(r12)
/* 80422400 003EB9C0  7C FF 3B 78 */	mr r31, r7
/* 80422404 003EB9C4  93 CC FF F8 */	stw r30, -8(r12)
/* 80422408 003EB9C8  7C BE 2B 78 */	mr r30, r5
/* 8042240C 003EB9CC  93 AC FF F4 */	stw r29, -0xc(r12)
/* 80422410 003EB9D0  7C 9D 23 78 */	mr r29, r4
/* 80422414 003EB9D4  93 8C FF F0 */	stw r28, -0x10(r12)
/* 80422418 003EB9D8  7C 7C 1B 78 */	mr r28, r3
/* 8042241C 003EB9DC  81 03 00 04 */	lwz r8, 4(r3)
/* 80422420 003EB9E0  7C 08 00 D0 */	neg r0, r8
/* 80422424 003EB9E4  7C 00 43 78 */	or r0, r0, r8
/* 80422428 003EB9E8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8042242C 003EB9EC  40 82 00 0C */	bne lbl_80422438
/* 80422430 003EB9F0  38 60 00 00 */	li r3, 0
/* 80422434 003EB9F4  48 00 01 40 */	b lbl_80422574
lbl_80422438:
/* 80422438 003EB9F8  41 82 00 0C */	beq lbl_80422444
/* 8042243C 003EB9FC  80 88 00 18 */	lwz r4, 0x18(r8)
/* 80422440 003EBA00  48 00 00 08 */	b lbl_80422448
lbl_80422444:
/* 80422444 003EBA04  38 80 00 00 */	li r4, 0
lbl_80422448:
/* 80422448 003EBA08  7C 06 39 D6 */	mullw r0, r6, r7
/* 8042244C 003EBA0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80422450 003EBA10  38 A0 00 00 */	li r5, 0
/* 80422454 003EBA14  81 83 00 00 */	lwz r12, 0(r3)
/* 80422458 003EBA18  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8042245C 003EBA1C  54 00 10 3A */	slwi r0, r0, 2
/* 80422460 003EBA20  7C 84 02 14 */	add r4, r4, r0
/* 80422464 003EBA24  38 84 00 08 */	addi r4, r4, 8
/* 80422468 003EBA28  7D 89 03 A6 */	mtctr r12
/* 8042246C 003EBA2C  4E 80 04 21 */	bctrl 
/* 80422470 003EBA30  80 7C 00 00 */	lwz r3, 0(r28)
/* 80422474 003EBA34  38 81 00 20 */	addi r4, r1, 0x20
/* 80422478 003EBA38  38 A0 00 20 */	li r5, 0x20
/* 8042247C 003EBA3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80422480 003EBA40  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80422484 003EBA44  7D 89 03 A6 */	mtctr r12
/* 80422488 003EBA48  4E 80 04 21 */	bctrl 
/* 8042248C 003EBA4C  28 03 00 20 */	cmplwi r3, 0x20
/* 80422490 003EBA50  41 82 00 0C */	beq lbl_8042249C
/* 80422494 003EBA54  38 60 00 00 */	li r3, 0
/* 80422498 003EBA58  48 00 00 DC */	b lbl_80422574
lbl_8042249C:
/* 8042249C 003EBA5C  2C 1F 00 00 */	cmpwi r31, 0
/* 804224A0 003EBA60  38 C1 00 20 */	addi r6, r1, 0x20
/* 804224A4 003EBA64  38 60 00 00 */	li r3, 0
/* 804224A8 003EBA68  38 80 00 00 */	li r4, 0
/* 804224AC 003EBA6C  40 81 00 C4 */	ble lbl_80422570
/* 804224B0 003EBA70  57 E0 F0 BF */	rlwinm. r0, r31, 0x1e, 2, 0x1f
/* 804224B4 003EBA74  7C 09 03 A6 */	mtctr r0
/* 804224B8 003EBA78  41 82 00 90 */	beq lbl_80422548
lbl_804224BC:
/* 804224BC 003EBA7C  7C A6 1A 2E */	lhzx r5, r6, r3
/* 804224C0 003EBA80  38 04 00 01 */	addi r0, r4, 1
/* 804224C4 003EBA84  54 00 08 3C */	slwi r0, r0, 1
/* 804224C8 003EBA88  38 63 00 04 */	addi r3, r3, 4
/* 804224CC 003EBA8C  7C BD 23 2E */	sthx r5, r29, r4
/* 804224D0 003EBA90  7C 06 02 2E */	lhzx r0, r6, r0
/* 804224D4 003EBA94  7C 1E 23 2E */	sthx r0, r30, r4
/* 804224D8 003EBA98  38 04 00 03 */	addi r0, r4, 3
/* 804224DC 003EBA9C  38 84 00 02 */	addi r4, r4, 2
/* 804224E0 003EBAA0  7C A6 1A 2E */	lhzx r5, r6, r3
/* 804224E4 003EBAA4  54 00 08 3C */	slwi r0, r0, 1
/* 804224E8 003EBAA8  38 63 00 04 */	addi r3, r3, 4
/* 804224EC 003EBAAC  7C BD 23 2E */	sthx r5, r29, r4
/* 804224F0 003EBAB0  7C 06 02 2E */	lhzx r0, r6, r0
/* 804224F4 003EBAB4  7C 1E 23 2E */	sthx r0, r30, r4
/* 804224F8 003EBAB8  38 04 00 03 */	addi r0, r4, 3
/* 804224FC 003EBABC  38 84 00 02 */	addi r4, r4, 2
/* 80422500 003EBAC0  7C A6 1A 2E */	lhzx r5, r6, r3
/* 80422504 003EBAC4  54 00 08 3C */	slwi r0, r0, 1
/* 80422508 003EBAC8  38 63 00 04 */	addi r3, r3, 4
/* 8042250C 003EBACC  7C BD 23 2E */	sthx r5, r29, r4
/* 80422510 003EBAD0  7C 06 02 2E */	lhzx r0, r6, r0
/* 80422514 003EBAD4  7C 1E 23 2E */	sthx r0, r30, r4
/* 80422518 003EBAD8  38 04 00 03 */	addi r0, r4, 3
/* 8042251C 003EBADC  38 84 00 02 */	addi r4, r4, 2
/* 80422520 003EBAE0  7C A6 1A 2E */	lhzx r5, r6, r3
/* 80422524 003EBAE4  54 00 08 3C */	slwi r0, r0, 1
/* 80422528 003EBAE8  38 63 00 04 */	addi r3, r3, 4
/* 8042252C 003EBAEC  7C BD 23 2E */	sthx r5, r29, r4
/* 80422530 003EBAF0  7C 06 02 2E */	lhzx r0, r6, r0
/* 80422534 003EBAF4  7C 1E 23 2E */	sthx r0, r30, r4
/* 80422538 003EBAF8  38 84 00 02 */	addi r4, r4, 2
/* 8042253C 003EBAFC  42 00 FF 80 */	bdnz lbl_804224BC
/* 80422540 003EBB00  73 FF 00 03 */	andi. r31, r31, 3
/* 80422544 003EBB04  41 82 00 2C */	beq lbl_80422570
lbl_80422548:
/* 80422548 003EBB08  7F E9 03 A6 */	mtctr r31
lbl_8042254C:
/* 8042254C 003EBB0C  7C A6 1A 2E */	lhzx r5, r6, r3
/* 80422550 003EBB10  38 04 00 01 */	addi r0, r4, 1
/* 80422554 003EBB14  54 00 08 3C */	slwi r0, r0, 1
/* 80422558 003EBB18  38 63 00 04 */	addi r3, r3, 4
/* 8042255C 003EBB1C  7C BD 23 2E */	sthx r5, r29, r4
/* 80422560 003EBB20  7C 06 02 2E */	lhzx r0, r6, r0
/* 80422564 003EBB24  7C 1E 23 2E */	sthx r0, r30, r4
/* 80422568 003EBB28  38 84 00 02 */	addi r4, r4, 2
/* 8042256C 003EBB2C  42 00 FF E0 */	bdnz lbl_8042254C
lbl_80422570:
/* 80422570 003EBB30  38 60 00 01 */	li r3, 1
lbl_80422574:
/* 80422574 003EBB34  81 41 00 00 */	lwz r10, 0(r1)
/* 80422578 003EBB38  80 0A 00 04 */	lwz r0, 4(r10)
/* 8042257C 003EBB3C  83 EA FF FC */	lwz r31, -4(r10)
/* 80422580 003EBB40  83 CA FF F8 */	lwz r30, -8(r10)
/* 80422584 003EBB44  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 80422588 003EBB48  83 8A FF F0 */	lwz r28, -0x10(r10)
/* 8042258C 003EBB4C  7C 08 03 A6 */	mtlr r0
/* 80422590 003EBB50  7D 41 53 78 */	mr r1, r10
/* 80422594 003EBB54  4E 80 00 20 */	blr 