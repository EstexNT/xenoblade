.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __nw__FUl
__nw__FUl:
/* 80434C24 003FE1E4  38 60 00 00 */	li r3, 0
/* 80434C28 003FE1E8  4E 80 00 20 */	blr 

.global __dl__FPv
__dl__FPv:
/* 80434C2C 003FE1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434C30 003FE1F0  7C 08 02 A6 */	mflr r0
/* 80434C34 003FE1F4  2C 03 00 00 */	cmpwi r3, 0
/* 80434C38 003FE1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434C3C 003FE1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80434C40 003FE200  41 82 01 8C */	beq .L_80434DCC
/* 80434C44 003FE204  80 8D 9C B0 */	lwz r4, lbl_80665E30@sda21(r13)
/* 80434C48 003FE208  3C 04 00 01 */	addis r0, r4, 1
/* 80434C4C 003FE20C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80434C50 003FE210  41 82 01 7C */	beq .L_80434DCC
/* 80434C54 003FE214  38 83 FF E0 */	addi r4, r3, -32
/* 80434C58 003FE218  3C 60 08 00 */	lis r3, 0x07FFFFDE@ha
/* 80434C5C 003FE21C  A0 C4 00 10 */	lhz r6, 0x10(r4)
/* 80434C60 003FE220  38 03 FF DE */	addi r0, r3, 0x07FFFFDE@l
/* 80434C64 003FE224  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 80434C68 003FE228  3C A0 80 65 */	lis r5, memoryAllocHeapArray@ha
/* 80434C6C 003FE22C  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 80434C70 003FE230  1C C3 00 70 */	mulli r6, r3, 0x70
/* 80434C74 003FE234  38 A5 70 E0 */	addi r5, r5, memoryAllocHeapArray@l
/* 80434C78 003FE238  38 67 FF DF */	addi r3, r7, -33
/* 80434C7C 003FE23C  7C 03 00 40 */	cmplw r3, r0
/* 80434C80 003FE240  7F E5 32 14 */	add r31, r5, r6
/* 80434C84 003FE244  40 81 00 10 */	ble .L_80434C94
/* 80434C88 003FE248  C8 22 C6 38 */	lfd f1, lbl_8066C9B8@sda21(r2)
/* 80434C8C 003FE24C  4B E9 65 85 */	bl log
/* 80434C90 003FE250  48 00 01 3C */	b .L_80434DCC
.L_80434C94:
/* 80434C94 003FE254  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80434C98 003FE258  7C 00 3A 14 */	add r0, r0, r7
/* 80434C9C 003FE25C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80434CA0 003FE260  80 64 00 00 */	lwz r3, 0(r4)
/* 80434CA4 003FE264  2C 03 00 00 */	cmpwi r3, 0
/* 80434CA8 003FE268  41 82 00 0C */	beq .L_80434CB4
/* 80434CAC 003FE26C  80 04 00 04 */	lwz r0, 4(r4)
/* 80434CB0 003FE270  90 03 00 04 */	stw r0, 4(r3)
.L_80434CB4:
/* 80434CB4 003FE274  80 64 00 04 */	lwz r3, 4(r4)
/* 80434CB8 003FE278  2C 03 00 00 */	cmpwi r3, 0
/* 80434CBC 003FE27C  41 82 00 0C */	beq .L_80434CC8
/* 80434CC0 003FE280  80 04 00 00 */	lwz r0, 0(r4)
/* 80434CC4 003FE284  90 03 00 00 */	stw r0, 0(r3)
.L_80434CC8:
/* 80434CC8 003FE288  80 1F 00 08 */	lwz r0, 8(r31)
/* 80434CCC 003FE28C  7C 00 20 40 */	cmplw r0, r4
/* 80434CD0 003FE290  40 82 00 0C */	bne .L_80434CDC
/* 80434CD4 003FE294  80 04 00 04 */	lwz r0, 4(r4)
/* 80434CD8 003FE298  90 1F 00 08 */	stw r0, 8(r31)
.L_80434CDC:
/* 80434CDC 003FE29C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80434CE0 003FE2A0  7C 00 20 40 */	cmplw r0, r4
/* 80434CE4 003FE2A4  40 82 00 0C */	bne .L_80434CF0
/* 80434CE8 003FE2A8  80 04 00 00 */	lwz r0, 0(r4)
/* 80434CEC 003FE2AC  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80434CF0:
/* 80434CF0 003FE2B0  7F E3 FB 78 */	mr r3, r31
/* 80434CF4 003FE2B4  4B FF EC C5 */	bl func_804339B8
/* 80434CF8 003FE2B8  80 A3 00 00 */	lwz r5, 0(r3)
/* 80434CFC 003FE2BC  2C 05 00 00 */	cmpwi r5, 0
/* 80434D00 003FE2C0  41 82 00 4C */	beq .L_80434D4C
/* 80434D04 003FE2C4  80 85 00 0C */	lwz r4, 0xc(r5)
/* 80434D08 003FE2C8  7C 05 22 14 */	add r0, r5, r4
/* 80434D0C 003FE2CC  7C 03 00 40 */	cmplw r3, r0
/* 80434D10 003FE2D0  40 82 00 3C */	bne .L_80434D4C
/* 80434D14 003FE2D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80434D18 003FE2D8  7C 04 02 14 */	add r0, r4, r0
/* 80434D1C 003FE2DC  90 05 00 0C */	stw r0, 0xc(r5)
/* 80434D20 003FE2E0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434D24 003FE2E4  7C 03 00 40 */	cmplw r3, r0
/* 80434D28 003FE2E8  40 82 00 08 */	bne .L_80434D30
/* 80434D2C 003FE2EC  90 BF 00 04 */	stw r5, 4(r31)
.L_80434D30:
/* 80434D30 003FE2F0  80 03 00 04 */	lwz r0, 4(r3)
/* 80434D34 003FE2F4  90 05 00 04 */	stw r0, 4(r5)
/* 80434D38 003FE2F8  80 83 00 04 */	lwz r4, 4(r3)
/* 80434D3C 003FE2FC  2C 04 00 00 */	cmpwi r4, 0
/* 80434D40 003FE300  41 82 00 0C */	beq .L_80434D4C
/* 80434D44 003FE304  90 A4 00 00 */	stw r5, 0(r4)
/* 80434D48 003FE308  7C A3 2B 78 */	mr r3, r5
.L_80434D4C:
/* 80434D4C 003FE30C  80 83 00 04 */	lwz r4, 4(r3)
/* 80434D50 003FE310  2C 04 00 00 */	cmpwi r4, 0
/* 80434D54 003FE314  41 82 00 6C */	beq .L_80434DC0
/* 80434D58 003FE318  80 A4 00 00 */	lwz r5, 0(r4)
/* 80434D5C 003FE31C  2C 05 00 00 */	cmpwi r5, 0
/* 80434D60 003FE320  41 82 00 4C */	beq .L_80434DAC
/* 80434D64 003FE324  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80434D68 003FE328  7C 05 1A 14 */	add r0, r5, r3
/* 80434D6C 003FE32C  7C 04 00 40 */	cmplw r4, r0
/* 80434D70 003FE330  40 82 00 3C */	bne .L_80434DAC
/* 80434D74 003FE334  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80434D78 003FE338  7C 03 02 14 */	add r0, r3, r0
/* 80434D7C 003FE33C  90 05 00 0C */	stw r0, 0xc(r5)
/* 80434D80 003FE340  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434D84 003FE344  7C 04 00 40 */	cmplw r4, r0
/* 80434D88 003FE348  40 82 00 08 */	bne .L_80434D90
/* 80434D8C 003FE34C  90 BF 00 04 */	stw r5, 4(r31)
.L_80434D90:
/* 80434D90 003FE350  80 04 00 04 */	lwz r0, 4(r4)
/* 80434D94 003FE354  90 05 00 04 */	stw r0, 4(r5)
/* 80434D98 003FE358  80 64 00 04 */	lwz r3, 4(r4)
/* 80434D9C 003FE35C  2C 03 00 00 */	cmpwi r3, 0
/* 80434DA0 003FE360  41 82 00 0C */	beq .L_80434DAC
/* 80434DA4 003FE364  90 A3 00 00 */	stw r5, 0(r3)
/* 80434DA8 003FE368  7C A4 2B 78 */	mr r4, r5
.L_80434DAC:
/* 80434DAC 003FE36C  80 84 00 04 */	lwz r4, 4(r4)
/* 80434DB0 003FE370  2C 04 00 00 */	cmpwi r4, 0
/* 80434DB4 003FE374  41 82 00 0C */	beq .L_80434DC0
/* 80434DB8 003FE378  7F E3 FB 78 */	mr r3, r31
/* 80434DBC 003FE37C  4B FF EC ED */	bl func_80433AA8
.L_80434DC0:
/* 80434DC0 003FE380  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80434DC4 003FE384  38 03 FF FF */	addi r0, r3, -1
/* 80434DC8 003FE388  90 1F 00 18 */	stw r0, 0x18(r31)
.L_80434DCC:
/* 80434DCC 003FE38C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80434DD0 003FE390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80434DD4 003FE394  7C 08 03 A6 */	mtlr r0
/* 80434DD8 003FE398  38 21 00 10 */	addi r1, r1, 0x10
/* 80434DDC 003FE39C  4E 80 00 20 */	blr 

.global __dla__FPv
__dla__FPv:
/* 80434DE0 003FE3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434DE4 003FE3A4  7C 08 02 A6 */	mflr r0
/* 80434DE8 003FE3A8  2C 03 00 00 */	cmpwi r3, 0
/* 80434DEC 003FE3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434DF0 003FE3B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80434DF4 003FE3B4  41 82 01 8C */	beq .L_80434F80
/* 80434DF8 003FE3B8  80 8D 9C B0 */	lwz r4, lbl_80665E30@sda21(r13)
/* 80434DFC 003FE3BC  3C 04 00 01 */	addis r0, r4, 1
/* 80434E00 003FE3C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80434E04 003FE3C4  41 82 01 7C */	beq .L_80434F80
/* 80434E08 003FE3C8  38 83 FF E0 */	addi r4, r3, -32
/* 80434E0C 003FE3CC  3C 60 08 00 */	lis r3, 0x07FFFFDE@ha
/* 80434E10 003FE3D0  A0 C4 00 10 */	lhz r6, 0x10(r4)
/* 80434E14 003FE3D4  38 03 FF DE */	addi r0, r3, 0x07FFFFDE@l
/* 80434E18 003FE3D8  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 80434E1C 003FE3DC  3C A0 80 65 */	lis r5, memoryAllocHeapArray@ha
/* 80434E20 003FE3E0  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 80434E24 003FE3E4  1C C3 00 70 */	mulli r6, r3, 0x70
/* 80434E28 003FE3E8  38 A5 70 E0 */	addi r5, r5, memoryAllocHeapArray@l
/* 80434E2C 003FE3EC  38 67 FF DF */	addi r3, r7, -33
/* 80434E30 003FE3F0  7C 03 00 40 */	cmplw r3, r0
/* 80434E34 003FE3F4  7F E5 32 14 */	add r31, r5, r6
/* 80434E38 003FE3F8  40 81 00 10 */	ble .L_80434E48
/* 80434E3C 003FE3FC  C8 22 C6 38 */	lfd f1, lbl_8066C9B8@sda21(r2)
/* 80434E40 003FE400  4B E9 63 D1 */	bl log
/* 80434E44 003FE404  48 00 01 3C */	b .L_80434F80
.L_80434E48:
/* 80434E48 003FE408  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80434E4C 003FE40C  7C 00 3A 14 */	add r0, r0, r7
/* 80434E50 003FE410  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80434E54 003FE414  80 64 00 00 */	lwz r3, 0(r4)
/* 80434E58 003FE418  2C 03 00 00 */	cmpwi r3, 0
/* 80434E5C 003FE41C  41 82 00 0C */	beq .L_80434E68
/* 80434E60 003FE420  80 04 00 04 */	lwz r0, 4(r4)
/* 80434E64 003FE424  90 03 00 04 */	stw r0, 4(r3)
.L_80434E68:
/* 80434E68 003FE428  80 64 00 04 */	lwz r3, 4(r4)
/* 80434E6C 003FE42C  2C 03 00 00 */	cmpwi r3, 0
/* 80434E70 003FE430  41 82 00 0C */	beq .L_80434E7C
/* 80434E74 003FE434  80 04 00 00 */	lwz r0, 0(r4)
/* 80434E78 003FE438  90 03 00 00 */	stw r0, 0(r3)
.L_80434E7C:
/* 80434E7C 003FE43C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80434E80 003FE440  7C 00 20 40 */	cmplw r0, r4
/* 80434E84 003FE444  40 82 00 0C */	bne .L_80434E90
/* 80434E88 003FE448  80 04 00 04 */	lwz r0, 4(r4)
/* 80434E8C 003FE44C  90 1F 00 08 */	stw r0, 8(r31)
.L_80434E90:
/* 80434E90 003FE450  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80434E94 003FE454  7C 00 20 40 */	cmplw r0, r4
/* 80434E98 003FE458  40 82 00 0C */	bne .L_80434EA4
/* 80434E9C 003FE45C  80 04 00 00 */	lwz r0, 0(r4)
/* 80434EA0 003FE460  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80434EA4:
/* 80434EA4 003FE464  7F E3 FB 78 */	mr r3, r31
/* 80434EA8 003FE468  4B FF EB 11 */	bl func_804339B8
/* 80434EAC 003FE46C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80434EB0 003FE470  2C 05 00 00 */	cmpwi r5, 0
/* 80434EB4 003FE474  41 82 00 4C */	beq .L_80434F00
/* 80434EB8 003FE478  80 85 00 0C */	lwz r4, 0xc(r5)
/* 80434EBC 003FE47C  7C 05 22 14 */	add r0, r5, r4
/* 80434EC0 003FE480  7C 03 00 40 */	cmplw r3, r0
/* 80434EC4 003FE484  40 82 00 3C */	bne .L_80434F00
/* 80434EC8 003FE488  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80434ECC 003FE48C  7C 04 02 14 */	add r0, r4, r0
/* 80434ED0 003FE490  90 05 00 0C */	stw r0, 0xc(r5)
/* 80434ED4 003FE494  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434ED8 003FE498  7C 03 00 40 */	cmplw r3, r0
/* 80434EDC 003FE49C  40 82 00 08 */	bne .L_80434EE4
/* 80434EE0 003FE4A0  90 BF 00 04 */	stw r5, 4(r31)
.L_80434EE4:
/* 80434EE4 003FE4A4  80 03 00 04 */	lwz r0, 4(r3)
/* 80434EE8 003FE4A8  90 05 00 04 */	stw r0, 4(r5)
/* 80434EEC 003FE4AC  80 83 00 04 */	lwz r4, 4(r3)
/* 80434EF0 003FE4B0  2C 04 00 00 */	cmpwi r4, 0
/* 80434EF4 003FE4B4  41 82 00 0C */	beq .L_80434F00
/* 80434EF8 003FE4B8  90 A4 00 00 */	stw r5, 0(r4)
/* 80434EFC 003FE4BC  7C A3 2B 78 */	mr r3, r5
.L_80434F00:
/* 80434F00 003FE4C0  80 83 00 04 */	lwz r4, 4(r3)
/* 80434F04 003FE4C4  2C 04 00 00 */	cmpwi r4, 0
/* 80434F08 003FE4C8  41 82 00 6C */	beq .L_80434F74
/* 80434F0C 003FE4CC  80 A4 00 00 */	lwz r5, 0(r4)
/* 80434F10 003FE4D0  2C 05 00 00 */	cmpwi r5, 0
/* 80434F14 003FE4D4  41 82 00 4C */	beq .L_80434F60
/* 80434F18 003FE4D8  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80434F1C 003FE4DC  7C 05 1A 14 */	add r0, r5, r3
/* 80434F20 003FE4E0  7C 04 00 40 */	cmplw r4, r0
/* 80434F24 003FE4E4  40 82 00 3C */	bne .L_80434F60
/* 80434F28 003FE4E8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80434F2C 003FE4EC  7C 03 02 14 */	add r0, r3, r0
/* 80434F30 003FE4F0  90 05 00 0C */	stw r0, 0xc(r5)
/* 80434F34 003FE4F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80434F38 003FE4F8  7C 04 00 40 */	cmplw r4, r0
/* 80434F3C 003FE4FC  40 82 00 08 */	bne .L_80434F44
/* 80434F40 003FE500  90 BF 00 04 */	stw r5, 4(r31)
.L_80434F44:
/* 80434F44 003FE504  80 04 00 04 */	lwz r0, 4(r4)
/* 80434F48 003FE508  90 05 00 04 */	stw r0, 4(r5)
/* 80434F4C 003FE50C  80 64 00 04 */	lwz r3, 4(r4)
/* 80434F50 003FE510  2C 03 00 00 */	cmpwi r3, 0
/* 80434F54 003FE514  41 82 00 0C */	beq .L_80434F60
/* 80434F58 003FE518  90 A3 00 00 */	stw r5, 0(r3)
/* 80434F5C 003FE51C  7C A4 2B 78 */	mr r4, r5
.L_80434F60:
/* 80434F60 003FE520  80 84 00 04 */	lwz r4, 4(r4)
/* 80434F64 003FE524  2C 04 00 00 */	cmpwi r4, 0
/* 80434F68 003FE528  41 82 00 0C */	beq .L_80434F74
/* 80434F6C 003FE52C  7F E3 FB 78 */	mr r3, r31
/* 80434F70 003FE530  4B FF EB 39 */	bl func_80433AA8
.L_80434F74:
/* 80434F74 003FE534  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80434F78 003FE538  38 03 FF FF */	addi r0, r3, -1
/* 80434F7C 003FE53C  90 1F 00 18 */	stw r0, 0x18(r31)
.L_80434F80:
/* 80434F80 003FE540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80434F84 003FE544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80434F88 003FE548  7C 08 03 A6 */	mtlr r0
/* 80434F8C 003FE54C  38 21 00 10 */	addi r1, r1, 0x10
/* 80434F90 003FE550  4E 80 00 20 */	blr 



.global func_80434F94
func_80434F94:
/* 80434F94 003FE554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434F98 003FE558  7C 08 02 A6 */	mflr r0
/* 80434F9C 003FE55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80434FA0 003FE560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80434FA4 003FE564  7C 7F 1B 78 */	mr r31, r3
/* 80434FA8 003FE568  4B E8 46 11 */	bl strlen
/* 80434FAC 003FE56C  34 83 FF FF */	addic. r4, r3, -1
/* 80434FB0 003FE570  38 04 00 01 */	addi r0, r4, 1
/* 80434FB4 003FE574  7C 7F 22 14 */	add r3, r31, r4
/* 80434FB8 003FE578  7C 09 03 A6 */	mtctr r0
/* 80434FBC 003FE57C  41 80 00 3C */	blt .L_80434FF8
.L_80434FC0:
/* 80434FC0 003FE580  88 03 00 00 */	lbz r0, 0(r3)
/* 80434FC4 003FE584  7C 00 07 74 */	extsb r0, r0
/* 80434FC8 003FE588  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80434FCC 003FE58C  41 82 00 14 */	beq .L_80434FE0
/* 80434FD0 003FE590  2C 00 00 5C */	cmpwi r0, 0x5c
/* 80434FD4 003FE594  41 82 00 0C */	beq .L_80434FE0
/* 80434FD8 003FE598  2C 00 00 3A */	cmpwi r0, 0x3a
/* 80434FDC 003FE59C  40 82 00 10 */	bne .L_80434FEC
.L_80434FE0:
/* 80434FE0 003FE5A0  7C 64 FA 14 */	add r3, r4, r31
/* 80434FE4 003FE5A4  38 63 00 01 */	addi r3, r3, 1
/* 80434FE8 003FE5A8  48 00 00 14 */	b .L_80434FFC
.L_80434FEC:
/* 80434FEC 003FE5AC  38 84 FF FF */	addi r4, r4, -1
/* 80434FF0 003FE5B0  38 63 FF FF */	addi r3, r3, -1
/* 80434FF4 003FE5B4  42 00 FF CC */	bdnz .L_80434FC0
.L_80434FF8:
/* 80434FF8 003FE5B8  7F E3 FB 78 */	mr r3, r31
.L_80434FFC:
/* 80434FFC 003FE5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435000 003FE5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80435004 003FE5C4  7C 08 03 A6 */	mtlr r0
/* 80435008 003FE5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8043500C 003FE5CC  4E 80 00 20 */	blr 

.global func_80435010
func_80435010:
/* 80435010 003FE5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80435014 003FE5D4  7C 08 02 A6 */	mflr r0
/* 80435018 003FE5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043501C 003FE5DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80435020 003FE5E0  7C 7F 1B 78 */	mr r31, r3
/* 80435024 003FE5E4  4B E8 45 95 */	bl strlen
/* 80435028 003FE5E8  34 83 FF FF */	addic. r4, r3, -1
/* 8043502C 003FE5EC  38 04 00 01 */	addi r0, r4, 1
/* 80435030 003FE5F0  7C 7F 22 14 */	add r3, r31, r4
/* 80435034 003FE5F4  7C 09 03 A6 */	mtctr r0
/* 80435038 003FE5F8  41 80 00 28 */	blt .L_80435060
.L_8043503C:
/* 8043503C 003FE5FC  88 03 00 00 */	lbz r0, 0(r3)
/* 80435040 003FE600  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80435044 003FE604  40 82 00 10 */	bne .L_80435054
/* 80435048 003FE608  7C 64 FA 14 */	add r3, r4, r31
/* 8043504C 003FE60C  38 63 00 01 */	addi r3, r3, 1
/* 80435050 003FE610  48 00 00 14 */	b .L_80435064
.L_80435054:
/* 80435054 003FE614  38 84 FF FF */	addi r4, r4, -1
/* 80435058 003FE618  38 63 FF FF */	addi r3, r3, -1
/* 8043505C 003FE61C  42 00 FF E0 */	bdnz .L_8043503C
.L_80435060:
/* 80435060 003FE620  38 60 00 00 */	li r3, 0
.L_80435064:
/* 80435064 003FE624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435068 003FE628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043506C 003FE62C  7C 08 03 A6 */	mtlr r0
/* 80435070 003FE630  38 21 00 10 */	addi r1, r1, 0x10
/* 80435074 003FE634  4E 80 00 20 */	blr 

.global func_80435078
func_80435078:
/* 80435078 003FE638  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8043507C 003FE63C  7C 08 02 A6 */	mflr r0
/* 80435080 003FE640  90 01 00 74 */	stw r0, 0x74(r1)
/* 80435084 003FE644  38 00 00 00 */	li r0, 0
/* 80435088 003FE648  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 8043508C 003FE64C  7C 9B 23 78 */	mr r27, r4
/* 80435090 003FE650  7C 7F 1B 78 */	mr r31, r3
/* 80435094 003FE654  7F 63 DB 78 */	mr r3, r27
/* 80435098 003FE658  98 01 00 08 */	stb r0, 8(r1)
/* 8043509C 003FE65C  90 01 00 48 */	stw r0, 0x48(r1)
/* 804350A0 003FE660  4B E8 45 19 */	bl strlen
/* 804350A4 003FE664  34 83 FF FF */	addic. r4, r3, -1
/* 804350A8 003FE668  38 04 00 01 */	addi r0, r4, 1
/* 804350AC 003FE66C  7C 7B 22 14 */	add r3, r27, r4
/* 804350B0 003FE670  7C 09 03 A6 */	mtctr r0
/* 804350B4 003FE674  41 80 00 3C */	blt .L_804350F0
.L_804350B8:
/* 804350B8 003FE678  88 03 00 00 */	lbz r0, 0(r3)
/* 804350BC 003FE67C  7C 00 07 74 */	extsb r0, r0
/* 804350C0 003FE680  2C 00 00 2F */	cmpwi r0, 0x2f
/* 804350C4 003FE684  41 82 00 14 */	beq .L_804350D8
/* 804350C8 003FE688  2C 00 00 5C */	cmpwi r0, 0x5c
/* 804350CC 003FE68C  41 82 00 0C */	beq .L_804350D8
/* 804350D0 003FE690  2C 00 00 3A */	cmpwi r0, 0x3a
/* 804350D4 003FE694  40 82 00 10 */	bne .L_804350E4
.L_804350D8:
/* 804350D8 003FE698  7C 64 DA 14 */	add r3, r4, r27
/* 804350DC 003FE69C  3B 63 00 01 */	addi r27, r3, 1
/* 804350E0 003FE6A0  48 00 00 10 */	b .L_804350F0
.L_804350E4:
/* 804350E4 003FE6A4  38 84 FF FF */	addi r4, r4, -1
/* 804350E8 003FE6A8  38 63 FF FF */	addi r3, r3, -1
/* 804350EC 003FE6AC  42 00 FF CC */	bdnz .L_804350B8
.L_804350F0:
/* 804350F0 003FE6B0  2C 1B 00 00 */	cmpwi r27, 0
/* 804350F4 003FE6B4  40 82 00 20 */	bne .L_80435114
/* 804350F8 003FE6B8  38 61 00 08 */	addi r3, r1, 8
/* 804350FC 003FE6BC  4B E8 44 BD */	bl strlen
/* 80435100 003FE6C0  90 7F 00 40 */	stw r3, 0x40(r31)
/* 80435104 003FE6C4  7F E3 FB 78 */	mr r3, r31
/* 80435108 003FE6C8  38 81 00 08 */	addi r4, r1, 8
/* 8043510C 003FE6CC  4B E8 D5 AD */	bl strcpy
/* 80435110 003FE6D0  48 00 00 FC */	b .L_8043520C
.L_80435114:
/* 80435114 003FE6D4  7F 63 DB 78 */	mr r3, r27
/* 80435118 003FE6D8  4B E8 44 A1 */	bl strlen
/* 8043511C 003FE6DC  90 61 00 48 */	stw r3, 0x48(r1)
/* 80435120 003FE6E0  7F 64 DB 78 */	mr r4, r27
/* 80435124 003FE6E4  38 61 00 08 */	addi r3, r1, 8
/* 80435128 003FE6E8  4B E8 D5 91 */	bl strcpy
/* 8043512C 003FE6EC  83 81 00 48 */	lwz r28, 0x48(r1)
/* 80435130 003FE6F0  3F C0 80 52 */	lis r30, lbl_80525D70@ha
/* 80435134 003FE6F4  3B DE 5D 70 */	addi r30, r30, lbl_80525D70@l
/* 80435138 003FE6F8  2C 1C 00 00 */	cmpwi r28, 0
/* 8043513C 003FE6FC  40 82 00 0C */	bne .L_80435148
/* 80435140 003FE700  3B A0 FF FF */	li r29, -1
/* 80435144 003FE704  48 00 00 54 */	b .L_80435198
.L_80435148:
/* 80435148 003FE708  7F C3 F3 78 */	mr r3, r30
/* 8043514C 003FE70C  4B E8 44 6D */	bl strlen
/* 80435150 003FE710  3B 61 00 07 */	addi r27, r1, 7
/* 80435154 003FE714  7C 7D 1B 78 */	mr r29, r3
/* 80435158 003FE718  7F 7B E2 14 */	add r27, r27, r28
/* 8043515C 003FE71C  3B 81 00 07 */	addi r28, r1, 7
/* 80435160 003FE720  48 00 00 2C */	b .L_8043518C
.L_80435164:
/* 80435164 003FE724  7F 63 DB 78 */	mr r3, r27
/* 80435168 003FE728  7F C4 F3 78 */	mr r4, r30
/* 8043516C 003FE72C  7F A5 EB 78 */	mr r5, r29
/* 80435170 003FE730  4B E8 D7 E1 */	bl strncmp
/* 80435174 003FE734  2C 03 00 00 */	cmpwi r3, 0
/* 80435178 003FE738  40 82 00 10 */	bne .L_80435188
/* 8043517C 003FE73C  38 01 00 08 */	addi r0, r1, 8
/* 80435180 003FE740  7F A0 D8 50 */	subf r29, r0, r27
/* 80435184 003FE744  48 00 00 14 */	b .L_80435198
.L_80435188:
/* 80435188 003FE748  3B 7B FF FF */	addi r27, r27, -1
.L_8043518C:
/* 8043518C 003FE74C  7C 1B E0 40 */	cmplw r27, r28
/* 80435190 003FE750  40 82 FF D4 */	bne .L_80435164
/* 80435194 003FE754  3B A0 FF FF */	li r29, -1
.L_80435198:
/* 80435198 003FE758  38 1D 00 01 */	addi r0, r29, 1
/* 8043519C 003FE75C  28 00 00 01 */	cmplwi r0, 1
/* 804351A0 003FE760  41 81 00 20 */	bgt .L_804351C0
/* 804351A4 003FE764  38 61 00 08 */	addi r3, r1, 8
/* 804351A8 003FE768  4B E8 44 11 */	bl strlen
/* 804351AC 003FE76C  90 7F 00 40 */	stw r3, 0x40(r31)
/* 804351B0 003FE770  7F E3 FB 78 */	mr r3, r31
/* 804351B4 003FE774  38 81 00 08 */	addi r4, r1, 8
/* 804351B8 003FE778  4B E8 D5 01 */	bl strcpy
/* 804351BC 003FE77C  48 00 00 50 */	b .L_8043520C
.L_804351C0:
/* 804351C0 003FE780  38 00 00 00 */	li r0, 0
/* 804351C4 003FE784  98 1F 00 00 */	stb r0, 0(r31)
/* 804351C8 003FE788  90 1F 00 40 */	stw r0, 0x40(r31)
/* 804351CC 003FE78C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804351D0 003FE790  2C 00 00 00 */	cmpwi r0, 0
/* 804351D4 003FE794  40 82 00 08 */	bne .L_804351DC
/* 804351D8 003FE798  48 00 00 34 */	b .L_8043520C
.L_804351DC:
/* 804351DC 003FE79C  2C 1D FF FF */	cmpwi r29, -1
/* 804351E0 003FE7A0  40 82 00 08 */	bne .L_804351E8
/* 804351E4 003FE7A4  83 A1 00 48 */	lwz r29, 0x48(r1)
.L_804351E8:
/* 804351E8 003FE7A8  7F E3 FB 78 */	mr r3, r31
/* 804351EC 003FE7AC  7F A5 EB 78 */	mr r5, r29
/* 804351F0 003FE7B0  38 81 00 08 */	addi r4, r1, 8
/* 804351F4 003FE7B4  4B E8 D5 85 */	bl strncpy
/* 804351F8 003FE7B8  38 00 00 00 */	li r0, 0
/* 804351FC 003FE7BC  7C 1F E9 AE */	stbx r0, r31, r29
/* 80435200 003FE7C0  7F E3 FB 78 */	mr r3, r31
/* 80435204 003FE7C4  4B E8 43 B5 */	bl strlen
/* 80435208 003FE7C8  90 7F 00 40 */	stw r3, 0x40(r31)
.L_8043520C:
/* 8043520C 003FE7CC  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 80435210 003FE7D0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80435214 003FE7D4  7C 08 03 A6 */	mtlr r0
/* 80435218 003FE7D8  38 21 00 70 */	addi r1, r1, 0x70
/* 8043521C 003FE7DC  4E 80 00 20 */	blr 

.global func_80435220
func_80435220:
/* 80435220 003FE7E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80435224 003FE7E4  7C 08 02 A6 */	mflr r0
/* 80435228 003FE7E8  3C C0 80 52 */	lis r6, lbl_80525D70@ha
/* 8043522C 003FE7EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80435230 003FE7F0  38 C6 5D 70 */	addi r6, r6, lbl_80525D70@l
/* 80435234 003FE7F4  BF 01 00 40 */	stmw r24, 0x40(r1)
/* 80435238 003FE7F8  3B 06 00 02 */	addi r24, r6, 2
/* 8043523C 003FE7FC  7C 79 1B 78 */	mr r25, r3
/* 80435240 003FE800  7C 9A 23 78 */	mr r26, r4
/* 80435244 003FE804  7C BB 2B 78 */	mr r27, r5
/* 80435248 003FE808  7F 03 C3 78 */	mr r3, r24
/* 8043524C 003FE80C  4B E8 43 6D */	bl strlen
/* 80435250 003FE810  90 79 00 10 */	stw r3, 0x10(r25)
/* 80435254 003FE814  7F 23 CB 78 */	mr r3, r25
/* 80435258 003FE818  7F 04 C3 78 */	mr r4, r24
/* 8043525C 003FE81C  4B E8 D4 5D */	bl strcpy
/* 80435260 003FE820  3B 80 00 00 */	li r28, 0
/* 80435264 003FE824  3F E0 05 F6 */	lis r31, 0x5f6
/* 80435268 003FE828  3F C0 80 00 */	lis r30, 0x8000
/* 8043526C 003FE82C  3B A0 00 00 */	li r29, 0
/* 80435270 003FE830  48 00 01 10 */	b .L_80435380
.L_80435274:
/* 80435274 003FE834  2C 9C 00 00 */	cmpwi cr1, r28, 0
/* 80435278 003FE838  B3 A1 00 08 */	sth r29, 8(r1)
/* 8043527C 003FE83C  38 A0 00 01 */	li r5, 1
/* 80435280 003FE840  38 C0 00 00 */	li r6, 0
/* 80435284 003FE844  40 85 00 70 */	ble cr1, .L_804352F4
/* 80435288 003FE848  2C 1C 00 08 */	cmpwi r28, 8
/* 8043528C 003FE84C  38 9C FF F8 */	addi r4, r28, -8
/* 80435290 003FE850  40 81 00 48 */	ble .L_804352D8
/* 80435294 003FE854  38 60 00 00 */	li r3, 0
/* 80435298 003FE858  41 84 00 14 */	blt cr1, .L_804352AC
/* 8043529C 003FE85C  38 1E FF FE */	addi r0, r30, -2
/* 804352A0 003FE860  7C 1C 00 00 */	cmpw r28, r0
/* 804352A4 003FE864  41 81 00 08 */	bgt .L_804352AC
/* 804352A8 003FE868  38 60 00 01 */	li r3, 1
.L_804352AC:
/* 804352AC 003FE86C  2C 03 00 00 */	cmpwi r3, 0
/* 804352B0 003FE870  41 82 00 28 */	beq .L_804352D8
/* 804352B4 003FE874  38 04 00 07 */	addi r0, r4, 7
/* 804352B8 003FE878  38 7F E1 00 */	addi r3, r31, -7936
/* 804352BC 003FE87C  54 00 E8 FE */	srwi r0, r0, 3
/* 804352C0 003FE880  7C 09 03 A6 */	mtctr r0
/* 804352C4 003FE884  2C 04 00 00 */	cmpwi r4, 0
/* 804352C8 003FE888  40 81 00 10 */	ble .L_804352D8
.L_804352CC:
/* 804352CC 003FE88C  7C A5 19 D6 */	mullw r5, r5, r3
/* 804352D0 003FE890  38 C6 00 08 */	addi r6, r6, 8
/* 804352D4 003FE894  42 00 FF F8 */	bdnz .L_804352CC
.L_804352D8:
/* 804352D8 003FE898  7C 06 E0 50 */	subf r0, r6, r28
/* 804352DC 003FE89C  7C 09 03 A6 */	mtctr r0
/* 804352E0 003FE8A0  7C 06 E0 00 */	cmpw r6, r28
/* 804352E4 003FE8A4  40 80 00 10 */	bge .L_804352F4
.L_804352E8:
/* 804352E8 003FE8A8  1C A5 00 0A */	mulli r5, r5, 0xa
/* 804352EC 003FE8AC  38 C6 00 01 */	addi r6, r6, 1
/* 804352F0 003FE8B0  42 00 FF F8 */	bdnz .L_804352E8
.L_804352F4:
/* 804352F4 003FE8B4  1C 85 00 0A */	mulli r4, r5, 0xa
/* 804352F8 003FE8B8  38 61 00 08 */	addi r3, r1, 8
/* 804352FC 003FE8BC  7C 1A 23 D6 */	divw r0, r26, r4
/* 80435300 003FE8C0  7C 00 21 D6 */	mullw r0, r0, r4
/* 80435304 003FE8C4  7C 00 D0 50 */	subf r0, r0, r26
/* 80435308 003FE8C8  7C 80 2B D6 */	divw r4, r0, r5
/* 8043530C 003FE8CC  38 04 00 30 */	addi r0, r4, 0x30
/* 80435310 003FE8D0  98 01 00 08 */	stb r0, 8(r1)
/* 80435314 003FE8D4  4B E8 42 A5 */	bl strlen
/* 80435318 003FE8D8  90 61 00 30 */	stw r3, 0x30(r1)
/* 8043531C 003FE8DC  38 61 00 20 */	addi r3, r1, 0x20
/* 80435320 003FE8E0  38 81 00 08 */	addi r4, r1, 8
/* 80435324 003FE8E4  4B E8 D3 95 */	bl strcpy
/* 80435328 003FE8E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8043532C 003FE8EC  4B E8 42 8D */	bl strlen
/* 80435330 003FE8F0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80435334 003FE8F4  38 61 00 0C */	addi r3, r1, 0xc
/* 80435338 003FE8F8  38 81 00 20 */	addi r4, r1, 0x20
/* 8043533C 003FE8FC  4B E8 D3 7D */	bl strcpy
/* 80435340 003FE900  7F 23 CB 78 */	mr r3, r25
/* 80435344 003FE904  4B E8 42 75 */	bl strlen
/* 80435348 003FE908  7C 78 1B 78 */	mr r24, r3
/* 8043534C 003FE90C  7F 24 CB 78 */	mr r4, r25
/* 80435350 003FE910  38 61 00 0C */	addi r3, r1, 0xc
/* 80435354 003FE914  4B E8 D4 69 */	bl strcat
/* 80435358 003FE918  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8043535C 003FE91C  38 61 00 0C */	addi r3, r1, 0xc
/* 80435360 003FE920  7C 00 C2 14 */	add r0, r0, r24
/* 80435364 003FE924  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80435368 003FE928  4B E8 42 51 */	bl strlen
/* 8043536C 003FE92C  90 79 00 10 */	stw r3, 0x10(r25)
/* 80435370 003FE930  7F 23 CB 78 */	mr r3, r25
/* 80435374 003FE934  38 81 00 0C */	addi r4, r1, 0xc
/* 80435378 003FE938  4B E8 D3 41 */	bl strcpy
/* 8043537C 003FE93C  3B 9C 00 01 */	addi r28, r28, 1
.L_80435380:
/* 80435380 003FE940  7C 1C D8 00 */	cmpw r28, r27
/* 80435384 003FE944  41 80 FE F0 */	blt .L_80435274
/* 80435388 003FE948  BB 01 00 40 */	lmw r24, 0x40(r1)
/* 8043538C 003FE94C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80435390 003FE950  7C 08 03 A6 */	mtlr r0
/* 80435394 003FE954  38 21 00 60 */	addi r1, r1, 0x60
/* 80435398 003FE958  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_80525D70
lbl_80525D70:
	.asciz "."
	.4byte 0
	.2byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global memoryAllocHeapArray
memoryAllocHeapArray:
	.skip 0x2300

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_8001C010
lbl_8001C010:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001C018
lbl_8001C018:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001C020
lbl_8001C020:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001C028
lbl_8001C028:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001C030
lbl_8001C030:
	.4byte 0x28080000
	.4byte 0

.global lbl_8001C038
lbl_8001C038:
	.4byte 0x40080000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte __dl__FPv
	.4byte 0x000001B4
	.4byte lbl_8001C010
	.4byte __dla__FPv
	.4byte 0x000001B4
	.4byte lbl_8001C018
	.4byte func_80434F94
	.4byte 0x0000007C
	.4byte lbl_8001C020
	.4byte func_80435010
	.4byte 0x00000068
	.4byte lbl_8001C028
	.4byte func_80435078
	.4byte 0x000001A8
	.4byte lbl_8001C030
	.4byte func_80435220
	.4byte 0x0000017C
	.4byte lbl_8001C038