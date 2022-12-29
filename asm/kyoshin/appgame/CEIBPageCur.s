.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80285C08
func_80285C08:
/* 80285C08 0024F1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285C0C 0024F1CC  7C 08 02 A6 */	mflr r0
/* 80285C10 0024F1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285C14 0024F1D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285C18 0024F1D8  7C 7F 1B 78 */	mr r31, r3
/* 80285C1C 0024F1DC  4B FF FD 0D */	bl func_80285928
/* 80285C20 0024F1E0  3C 80 80 54 */	lis r4, __vt__CEIBPageCur@ha
/* 80285C24 0024F1E4  7F E3 FB 78 */	mr r3, r31
/* 80285C28 0024F1E8  38 84 BE A4 */	addi r4, r4, __vt__CEIBPageCur@l
/* 80285C2C 0024F1EC  90 9F 00 00 */	stw r4, 0(r31)
/* 80285C30 0024F1F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285C34 0024F1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285C38 0024F1F8  7C 08 03 A6 */	mtlr r0
/* 80285C3C 0024F1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80285C40 0024F200  4E 80 00 20 */	blr 

.global func_80285C44
func_80285C44:
/* 80285C44 0024F204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285C48 0024F208  7C 08 02 A6 */	mflr r0
/* 80285C4C 0024F20C  2C 03 00 00 */	cmpwi r3, 0
/* 80285C50 0024F210  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285C54 0024F214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285C58 0024F218  7C 7F 1B 78 */	mr r31, r3
/* 80285C5C 0024F21C  41 82 00 10 */	beq .L_80285C6C
/* 80285C60 0024F220  2C 04 00 00 */	cmpwi r4, 0
/* 80285C64 0024F224  40 81 00 08 */	ble .L_80285C6C
/* 80285C68 0024F228  48 1A EF C5 */	bl __dl__FPv
.L_80285C6C:
/* 80285C6C 0024F22C  7F E3 FB 78 */	mr r3, r31
/* 80285C70 0024F230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285C74 0024F234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285C78 0024F238  7C 08 03 A6 */	mtlr r0
/* 80285C7C 0024F23C  38 21 00 10 */	addi r1, r1, 0x10
/* 80285C80 0024F240  4E 80 00 20 */	blr 

.global func_80285C84
func_80285C84:
/* 80285C84 0024F244  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80285C88 0024F248  7C 08 02 A6 */	mflr r0
/* 80285C8C 0024F24C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80285C90 0024F250  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80285C94 0024F254  3F E0 80 51 */	lis r31, lbl_8050A654@ha
/* 80285C98 0024F258  3B FF A6 54 */	addi r31, r31, lbl_8050A654@l
/* 80285C9C 0024F25C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80285CA0 0024F260  7C 7E 1B 78 */	mr r30, r3
/* 80285CA4 0024F264  38 BF 00 E7 */	addi r5, r31, 0xe7
/* 80285CA8 0024F268  80 83 00 04 */	lwz r4, 4(r3)
/* 80285CAC 0024F26C  38 63 00 08 */	addi r3, r3, 8
/* 80285CB0 0024F270  4B EB 11 D5 */	bl func_80136E84
/* 80285CB4 0024F274  80 7E 00 08 */	lwz r3, 8(r30)
/* 80285CB8 0024F278  38 9E 00 0C */	addi r4, r30, 0xc
/* 80285CBC 0024F27C  80 BE 00 04 */	lwz r5, 4(r30)
/* 80285CC0 0024F280  38 DF 00 FF */	addi r6, r31, 0xff
/* 80285CC4 0024F284  4B EB 12 45 */	bl func_80136F08
/* 80285CC8 0024F288  C0 22 B0 58 */	lfs f1, lbl_8066B3D8@sda21(r2)
/* 80285CCC 0024F28C  38 61 00 14 */	addi r3, r1, 0x14
/* 80285CD0 0024F290  C0 42 B0 5C */	lfs f2, lbl_8066B3DC@sda21(r2)
/* 80285CD4 0024F294  C0 62 B0 2C */	lfs f3, lbl_8066B3AC@sda21(r2)
/* 80285CD8 0024F298  4B EB 1A 51 */	bl func_80137728
/* 80285CDC 0024F29C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80285CE0 0024F2A0  38 9F 01 1C */	addi r4, r31, 0x11c
/* 80285CE4 0024F2A4  38 A0 00 01 */	li r5, 1
/* 80285CE8 0024F2A8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80285CEC 0024F2AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80285CF0 0024F2B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80285CF4 0024F2B4  7D 89 03 A6 */	mtctr r12
/* 80285CF8 0024F2B8  4E 80 04 21 */	bctrl 
/* 80285CFC 0024F2BC  38 63 00 2C */	addi r3, r3, 0x2c
/* 80285D00 0024F2C0  38 81 00 14 */	addi r4, r1, 0x14
/* 80285D04 0024F2C4  4B EA 1E D5 */	bl func_80127BD8
/* 80285D08 0024F2C8  C0 22 B0 60 */	lfs f1, lbl_8066B3E0@sda21(r2)
/* 80285D0C 0024F2CC  38 61 00 08 */	addi r3, r1, 8
/* 80285D10 0024F2D0  C0 42 B0 5C */	lfs f2, lbl_8066B3DC@sda21(r2)
/* 80285D14 0024F2D4  C0 62 B0 2C */	lfs f3, lbl_8066B3AC@sda21(r2)
/* 80285D18 0024F2D8  4B EB 1A 11 */	bl func_80137728
/* 80285D1C 0024F2DC  80 7E 00 08 */	lwz r3, 8(r30)
/* 80285D20 0024F2E0  38 9F 01 28 */	addi r4, r31, 0x128
/* 80285D24 0024F2E4  38 A0 00 01 */	li r5, 1
/* 80285D28 0024F2E8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80285D2C 0024F2EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80285D30 0024F2F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80285D34 0024F2F4  7D 89 03 A6 */	mtctr r12
/* 80285D38 0024F2F8  4E 80 04 21 */	bctrl 
/* 80285D3C 0024F2FC  38 63 00 2C */	addi r3, r3, 0x2c
/* 80285D40 0024F300  38 81 00 08 */	addi r4, r1, 8
/* 80285D44 0024F304  4B EA 1E 95 */	bl func_80127BD8
/* 80285D48 0024F308  80 7E 00 08 */	lwz r3, 8(r30)
/* 80285D4C 0024F30C  81 83 00 00 */	lwz r12, 0(r3)
/* 80285D50 0024F310  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80285D54 0024F314  7D 89 03 A6 */	mtctr r12
/* 80285D58 0024F318  4E 80 04 21 */	bctrl 
/* 80285D5C 0024F31C  7F C3 F3 78 */	mr r3, r30
/* 80285D60 0024F320  4B FF FE 11 */	bl func_80285B70
/* 80285D64 0024F324  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80285D68 0024F328  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80285D6C 0024F32C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80285D70 0024F330  7C 08 03 A6 */	mtlr r0
/* 80285D74 0024F334  38 21 00 30 */	addi r1, r1, 0x30
/* 80285D78 0024F338  4E 80 00 20 */	blr 

.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_80285C08
	.4byte 0x0000003C
	.4byte lbl_80018E68
	.4byte func_80285C44
	.4byte 0x00000040
	.4byte lbl_80018E70
	.4byte func_80285C84
	.4byte 0x000000F8
	.4byte lbl_80018E78