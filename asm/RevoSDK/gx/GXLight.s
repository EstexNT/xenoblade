.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global GXInitLightAttn
GXInitLightAttn:
/* 8031B950 002E4F10  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8031B954 002E4F14  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8031B958 002E4F18  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8031B95C 002E4F1C  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 8031B960 002E4F20  D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 8031B964 002E4F24  D0 C3 00 24 */	stfs f6, 0x24(r3)
/* 8031B968 002E4F28  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitLightAttnA
GXInitLightAttnA:
/* 8031B970 002E4F30  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8031B974 002E4F34  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8031B978 002E4F38  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8031B97C 002E4F3C  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitLightAttnK
GXInitLightAttnK:
/* 8031B980 002E4F40  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8031B984 002E4F44  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 8031B988 002E4F48  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 8031B98C 002E4F4C  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitLightSpot
GXInitLightSpot:
/* 8031B990 002E4F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031B994 002E4F54  7C 08 02 A6 */	mflr r0
/* 8031B998 002E4F58  C0 02 BC 58 */	lfs f0, lbl_8066BFD8@sda21(r2)
/* 8031B99C 002E4F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031B9A0 002E4F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031B9A4 002E4F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031B9A8 002E4F68  7C 9F 23 78 */	mr r31, r4
/* 8031B9AC 002E4F6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8031B9B0 002E4F70  7C 7E 1B 78 */	mr r30, r3
/* 8031B9B4 002E4F74  4C 40 13 82 */	cror 2, 0, 2
/* 8031B9B8 002E4F78  41 82 00 10 */	beq .L_8031B9C8
/* 8031B9BC 002E4F7C  C0 02 BC 5C */	lfs f0, lbl_8066BFDC@sda21(r2)
/* 8031B9C0 002E4F80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031B9C4 002E4F84  40 81 00 08 */	ble .L_8031B9CC
.L_8031B9C8:
/* 8031B9C8 002E4F88  3B E0 00 00 */	li r31, 0
.L_8031B9CC:
/* 8031B9CC 002E4F8C  C0 42 BC 60 */	lfs f2, lbl_8066BFE0@sda21(r2)
/* 8031B9D0 002E4F90  C0 02 BC 64 */	lfs f0, lbl_8066BFE4@sda21(r2)
/* 8031B9D4 002E4F94  EC 22 00 72 */	fmuls f1, f2, f1
/* 8031B9D8 002E4F98  EC 21 00 24 */	fdivs f1, f1, f0
/* 8031B9DC 002E4F9C  4B FA F1 D9 */	bl cos
/* 8031B9E0 002E4FA0  2C 1F 00 01 */	cmpwi r31, 1
/* 8031B9E4 002E4FA4  FC A0 08 18 */	frsp f5, f1
/* 8031B9E8 002E4FA8  41 82 00 30 */	beq .L_8031BA18
/* 8031B9EC 002E4FAC  2C 1F 00 02 */	cmpwi r31, 2
/* 8031B9F0 002E4FB0  41 82 00 3C */	beq .L_8031BA2C
/* 8031B9F4 002E4FB4  2C 1F 00 03 */	cmpwi r31, 3
/* 8031B9F8 002E4FB8  41 82 00 50 */	beq .L_8031BA48
/* 8031B9FC 002E4FBC  2C 1F 00 04 */	cmpwi r31, 4
/* 8031BA00 002E4FC0  41 82 00 64 */	beq .L_8031BA64
/* 8031BA04 002E4FC4  2C 1F 00 05 */	cmpwi r31, 5
/* 8031BA08 002E4FC8  41 82 00 88 */	beq .L_8031BA90
/* 8031BA0C 002E4FCC  2C 1F 00 06 */	cmpwi r31, 6
/* 8031BA10 002E4FD0  41 82 00 B0 */	beq .L_8031BAC0
/* 8031BA14 002E4FD4  48 00 00 E8 */	b .L_8031BAFC
.L_8031BA18:
/* 8031BA18 002E4FD8  C0 02 BC 68 */	lfs f0, lbl_8066BFE8@sda21(r2)
/* 8031BA1C 002E4FDC  C0 22 BC 6C */	lfs f1, lbl_8066BFEC@sda21(r2)
/* 8031BA20 002E4FE0  EC 60 01 72 */	fmuls f3, f0, f5
/* 8031BA24 002E4FE4  C0 C2 BC 58 */	lfs f6, lbl_8066BFD8@sda21(r2)
/* 8031BA28 002E4FE8  48 00 00 E0 */	b .L_8031BB08
.L_8031BA2C:
/* 8031BA2C 002E4FEC  C0 42 BC 70 */	lfs f2, lbl_8066BFF0@sda21(r2)
/* 8031BA30 002E4FF0  FC 00 28 50 */	fneg f0, f5
/* 8031BA34 002E4FF4  C0 C2 BC 58 */	lfs f6, lbl_8066BFD8@sda21(r2)
/* 8031BA38 002E4FF8  EC 22 28 28 */	fsubs f1, f2, f5
/* 8031BA3C 002E4FFC  EC 22 08 24 */	fdivs f1, f2, f1
/* 8031BA40 002E5000  EC 60 00 72 */	fmuls f3, f0, f1
/* 8031BA44 002E5004  48 00 00 C4 */	b .L_8031BB08
.L_8031BA48:
/* 8031BA48 002E5008  C0 42 BC 70 */	lfs f2, lbl_8066BFF0@sda21(r2)
/* 8031BA4C 002E500C  FC 00 28 50 */	fneg f0, f5
/* 8031BA50 002E5010  C0 62 BC 58 */	lfs f3, lbl_8066BFD8@sda21(r2)
/* 8031BA54 002E5014  EC 22 28 28 */	fsubs f1, f2, f5
/* 8031BA58 002E5018  EC C2 08 24 */	fdivs f6, f2, f1
/* 8031BA5C 002E501C  EC 20 01 B2 */	fmuls f1, f0, f6
/* 8031BA60 002E5020  48 00 00 A8 */	b .L_8031BB08
.L_8031BA64:
/* 8031BA64 002E5024  C0 62 BC 70 */	lfs f3, lbl_8066BFF0@sda21(r2)
/* 8031BA68 002E5028  C0 22 BC 74 */	lfs f1, lbl_8066BFF4@sda21(r2)
/* 8031BA6C 002E502C  EC 43 28 28 */	fsubs f2, f3, f5
/* 8031BA70 002E5030  EC 05 08 28 */	fsubs f0, f5, f1
/* 8031BA74 002E5034  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8031BA78 002E5038  EC 05 00 32 */	fmuls f0, f5, f0
/* 8031BA7C 002E503C  EC 43 10 24 */	fdivs f2, f3, f2
/* 8031BA80 002E5040  EC 62 00 32 */	fmuls f3, f2, f0
/* 8031BA84 002E5044  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8031BA88 002E5048  FC C0 10 50 */	fneg f6, f2
/* 8031BA8C 002E504C  48 00 00 7C */	b .L_8031BB08
.L_8031BA90:
/* 8031BA90 002E5050  C0 82 BC 70 */	lfs f4, lbl_8066BFF0@sda21(r2)
/* 8031BA94 002E5054  C0 02 BC 7C */	lfs f0, lbl_8066BFFC@sda21(r2)
/* 8031BA98 002E5058  EC 64 28 28 */	fsubs f3, f4, f5
/* 8031BA9C 002E505C  C0 42 BC 78 */	lfs f2, lbl_8066BFF8@sda21(r2)
/* 8031BAA0 002E5060  EC 24 28 2A */	fadds f1, f4, f5
/* 8031BAA4 002E5064  EC 63 00 F2 */	fmuls f3, f3, f3
/* 8031BAA8 002E5068  EC 00 00 72 */	fmuls f0, f0, f1
/* 8031BAAC 002E506C  EC 24 18 24 */	fdivs f1, f4, f3
/* 8031BAB0 002E5070  EC C2 00 72 */	fmuls f6, f2, f1
/* 8031BAB4 002E5074  EC 20 00 72 */	fmuls f1, f0, f1
/* 8031BAB8 002E5078  EC 66 01 72 */	fmuls f3, f6, f5
/* 8031BABC 002E507C  48 00 00 4C */	b .L_8031BB08
.L_8031BAC0:
/* 8031BAC0 002E5080  C0 82 BC 70 */	lfs f4, lbl_8066BFF0@sda21(r2)
/* 8031BAC4 002E5084  C0 02 BC 74 */	lfs f0, lbl_8066BFF4@sda21(r2)
/* 8031BAC8 002E5088  EC 64 28 28 */	fsubs f3, f4, f5
/* 8031BACC 002E508C  C0 22 BC 7C */	lfs f1, lbl_8066BFFC@sda21(r2)
/* 8031BAD0 002E5090  EC 40 01 72 */	fmuls f2, f0, f5
/* 8031BAD4 002E5094  C0 02 BC 80 */	lfs f0, lbl_8066C000@sda21(r2)
/* 8031BAD8 002E5098  EC 21 01 72 */	fmuls f1, f1, f5
/* 8031BADC 002E509C  EC 63 00 F2 */	fmuls f3, f3, f3
/* 8031BAE0 002E50A0  EC 42 01 72 */	fmuls f2, f2, f5
/* 8031BAE4 002E50A4  EC 64 18 24 */	fdivs f3, f4, f3
/* 8031BAE8 002E50A8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8031BAEC 002E50AC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 8031BAF0 002E50B0  EC C0 00 F2 */	fmuls f6, f0, f3
/* 8031BAF4 002E50B4  EC 64 10 28 */	fsubs f3, f4, f2
/* 8031BAF8 002E50B8  48 00 00 10 */	b .L_8031BB08
.L_8031BAFC:
/* 8031BAFC 002E50BC  C0 22 BC 58 */	lfs f1, lbl_8066BFD8@sda21(r2)
/* 8031BB00 002E50C0  C0 62 BC 70 */	lfs f3, lbl_8066BFF0@sda21(r2)
/* 8031BB04 002E50C4  FC C0 08 90 */	fmr f6, f1
.L_8031BB08:
/* 8031BB08 002E50C8  D0 7E 00 10 */	stfs f3, 0x10(r30)
/* 8031BB0C 002E50CC  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 8031BB10 002E50D0  D0 DE 00 18 */	stfs f6, 0x18(r30)
/* 8031BB14 002E50D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031BB18 002E50D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031BB1C 002E50DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031BB20 002E50E0  7C 08 03 A6 */	mtlr r0
/* 8031BB24 002E50E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8031BB28 002E50E8  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitLightDistAttn
GXInitLightDistAttn:
/* 8031BB30 002E50F0  C0 02 BC 58 */	lfs f0, lbl_8066BFD8@sda21(r2)
/* 8031BB34 002E50F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031BB38 002E50F8  40 80 00 08 */	bge .L_8031BB40
/* 8031BB3C 002E50FC  38 80 00 00 */	li r4, 0
.L_8031BB40:
/* 8031BB40 002E5100  C0 02 BC 58 */	lfs f0, lbl_8066BFD8@sda21(r2)
/* 8031BB44 002E5104  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8031BB48 002E5108  4C 40 13 82 */	cror 2, 0, 2
/* 8031BB4C 002E510C  41 82 00 14 */	beq .L_8031BB60
/* 8031BB50 002E5110  C0 02 BC 70 */	lfs f0, lbl_8066BFF0@sda21(r2)
/* 8031BB54 002E5114  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8031BB58 002E5118  4C 41 13 82 */	cror 2, 1, 2
/* 8031BB5C 002E511C  40 82 00 08 */	bne .L_8031BB64
.L_8031BB60:
/* 8031BB60 002E5120  38 80 00 00 */	li r4, 0
.L_8031BB64:
/* 8031BB64 002E5124  2C 04 00 01 */	cmpwi r4, 1
/* 8031BB68 002E5128  41 82 00 18 */	beq .L_8031BB80
/* 8031BB6C 002E512C  2C 04 00 02 */	cmpwi r4, 2
/* 8031BB70 002E5130  41 82 00 28 */	beq .L_8031BB98
/* 8031BB74 002E5134  2C 04 00 03 */	cmpwi r4, 3
/* 8031BB78 002E5138  41 82 00 44 */	beq .L_8031BBBC
/* 8031BB7C 002E513C  48 00 00 5C */	b .L_8031BBD8
.L_8031BB80:
/* 8031BB80 002E5140  C0 A2 BC 70 */	lfs f5, lbl_8066BFF0@sda21(r2)
/* 8031BB84 002E5144  EC 02 00 72 */	fmuls f0, f2, f1
/* 8031BB88 002E5148  C0 82 BC 58 */	lfs f4, lbl_8066BFD8@sda21(r2)
/* 8031BB8C 002E514C  EC 25 10 28 */	fsubs f1, f5, f2
/* 8031BB90 002E5150  EC 61 00 24 */	fdivs f3, f1, f0
/* 8031BB94 002E5154  48 00 00 50 */	b .L_8031BBE4
.L_8031BB98:
/* 8031BB98 002E5158  C0 A2 BC 70 */	lfs f5, lbl_8066BFF0@sda21(r2)
/* 8031BB9C 002E515C  EC 62 00 72 */	fmuls f3, f2, f1
/* 8031BBA0 002E5160  C0 82 BC 84 */	lfs f4, lbl_8066C004@sda21(r2)
/* 8031BBA4 002E5164  EC 45 10 28 */	fsubs f2, f5, f2
/* 8031BBA8 002E5168  EC 01 00 F2 */	fmuls f0, f1, f3
/* 8031BBAC 002E516C  EC 24 00 B2 */	fmuls f1, f4, f2
/* 8031BBB0 002E5170  EC 61 18 24 */	fdivs f3, f1, f3
/* 8031BBB4 002E5174  EC 81 00 24 */	fdivs f4, f1, f0
/* 8031BBB8 002E5178  48 00 00 2C */	b .L_8031BBE4
.L_8031BBBC:
/* 8031BBBC 002E517C  EC 02 00 72 */	fmuls f0, f2, f1
/* 8031BBC0 002E5180  C0 A2 BC 70 */	lfs f5, lbl_8066BFF0@sda21(r2)
/* 8031BBC4 002E5184  C0 62 BC 58 */	lfs f3, lbl_8066BFD8@sda21(r2)
/* 8031BBC8 002E5188  EC 45 10 28 */	fsubs f2, f5, f2
/* 8031BBCC 002E518C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8031BBD0 002E5190  EC 82 00 24 */	fdivs f4, f2, f0
/* 8031BBD4 002E5194  48 00 00 10 */	b .L_8031BBE4
.L_8031BBD8:
/* 8031BBD8 002E5198  C0 62 BC 58 */	lfs f3, lbl_8066BFD8@sda21(r2)
/* 8031BBDC 002E519C  C0 A2 BC 70 */	lfs f5, lbl_8066BFF0@sda21(r2)
/* 8031BBE0 002E51A0  FC 80 18 90 */	fmr f4, f3
.L_8031BBE4:
/* 8031BBE4 002E51A4  D0 A3 00 1C */	stfs f5, 0x1c(r3)
/* 8031BBE8 002E51A8  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8031BBEC 002E51AC  D0 83 00 24 */	stfs f4, 0x24(r3)
/* 8031BBF0 002E51B0  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitLightPos
GXInitLightPos:
/* 8031BC00 002E51C0  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8031BC04 002E51C4  D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 8031BC08 002E51C8  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 8031BC0C 002E51CC  4E 80 00 20 */	blr 

.balign 16, 0
.global GXGetLightPos
GXGetLightPos:
/* 8031BC10 002E51D0  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8031BC14 002E51D4  D0 04 00 00 */	stfs f0, 0(r4)
/* 8031BC18 002E51D8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8031BC1C 002E51DC  D0 05 00 00 */	stfs f0, 0(r5)
/* 8031BC20 002E51E0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8031BC24 002E51E4  D0 06 00 00 */	stfs f0, 0(r6)
/* 8031BC28 002E51E8  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitLightDir
GXInitLightDir:
/* 8031BC30 002E51F0  FC 80 08 50 */	fneg f4, f1
/* 8031BC34 002E51F4  FC 20 10 50 */	fneg f1, f2
/* 8031BC38 002E51F8  FC 00 18 50 */	fneg f0, f3
/* 8031BC3C 002E51FC  D0 83 00 34 */	stfs f4, 0x34(r3)
/* 8031BC40 002E5200  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 8031BC44 002E5204  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8031BC48 002E5208  4E 80 00 20 */	blr 

.balign 16, 0
.global GXGetLightDir
GXGetLightDir:
/* 8031BC50 002E5210  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8031BC54 002E5214  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 8031BC58 002E5218  FC 40 00 50 */	fneg f2, f0
/* 8031BC5C 002E521C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8031BC60 002E5220  FC 20 08 50 */	fneg f1, f1
/* 8031BC64 002E5224  D0 44 00 00 */	stfs f2, 0(r4)
/* 8031BC68 002E5228  FC 00 00 50 */	fneg f0, f0
/* 8031BC6C 002E522C  D0 25 00 00 */	stfs f1, 0(r5)
/* 8031BC70 002E5230  D0 06 00 00 */	stfs f0, 0(r6)
/* 8031BC74 002E5234  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitSpecularDir
GXInitSpecularDir:
/* 8031BC80 002E5240  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8031BC84 002E5244  7C 08 02 A6 */	mflr r0
/* 8031BC88 002E5248  FC C0 18 50 */	fneg f6, f3
/* 8031BC8C 002E524C  C0 82 BC 70 */	lfs f4, lbl_8066BFF0@sda21(r2)
/* 8031BC90 002E5250  90 01 00 74 */	stw r0, 0x74(r1)
/* 8031BC94 002E5254  C0 02 BC 58 */	lfs f0, lbl_8066BFD8@sda21(r2)
/* 8031BC98 002E5258  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8031BC9C 002E525C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8031BCA0 002E5260  FF E0 08 50 */	fneg f31, f1
/* 8031BCA4 002E5264  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8031BCA8 002E5268  EC BF 07 F2 */	fmuls f5, f31, f31
/* 8031BCAC 002E526C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 8031BCB0 002E5270  FF C0 10 50 */	fneg f30, f2
/* 8031BCB4 002E5274  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8031BCB8 002E5278  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 8031BCBC 002E527C  EF A4 30 2A */	fadds f29, f4, f6
/* 8031BCC0 002E5280  EC 9E 07 B2 */	fmuls f4, f30, f30
/* 8031BCC4 002E5284  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 8031BCC8 002E5288  EC DD 07 72 */	fmuls f6, f29, f29
/* 8031BCCC 002E528C  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 8031BCD0 002E5290  FF 80 18 90 */	fmr f28, f3
/* 8031BCD4 002E5294  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 8031BCD8 002E5298  F3 61 00 28 */	psq_st f27, 40(r1), 0, qr0
/* 8031BCDC 002E529C  FF 60 10 90 */	fmr f27, f2
/* 8031BCE0 002E52A0  DB 41 00 10 */	stfd f26, 0x10(r1)
/* 8031BCE4 002E52A4  F3 41 00 18 */	psq_st f26, 24(r1), 0, qr0
/* 8031BCE8 002E52A8  FF 40 08 90 */	fmr f26, f1
/* 8031BCEC 002E52AC  EC 25 20 2A */	fadds f1, f5, f4
/* 8031BCF0 002E52B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031BCF4 002E52B4  7C 7F 1B 78 */	mr r31, r3
/* 8031BCF8 002E52B8  EC 26 08 2A */	fadds f1, f6, f1
/* 8031BCFC 002E52BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8031BD00 002E52C0  41 82 00 14 */	beq .L_8031BD14
/* 8031BD04 002E52C4  4B FA F7 65 */	bl sqrt
/* 8031BD08 002E52C8  FC 20 08 18 */	frsp f1, f1
/* 8031BD0C 002E52CC  C0 02 BC 70 */	lfs f0, lbl_8066BFF0@sda21(r2)
/* 8031BD10 002E52D0  EC 20 08 24 */	fdivs f1, f0, f1
.L_8031BD14:
/* 8031BD14 002E52D4  EC 5F 00 72 */	fmuls f2, f31, f1
/* 8031BD18 002E52D8  C0 02 BC 88 */	lfs f0, lbl_8066C008@sda21(r2)
/* 8031BD1C 002E52DC  EC 9E 00 72 */	fmuls f4, f30, f1
/* 8031BD20 002E52E0  EC 7D 00 72 */	fmuls f3, f29, f1
/* 8031BD24 002E52E4  D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 8031BD28 002E52E8  EC 40 06 B2 */	fmuls f2, f0, f26
/* 8031BD2C 002E52EC  EC 20 06 F2 */	fmuls f1, f0, f27
/* 8031BD30 002E52F0  D0 9F 00 38 */	stfs f4, 0x38(r31)
/* 8031BD34 002E52F4  EC 00 07 32 */	fmuls f0, f0, f28
/* 8031BD38 002E52F8  D0 7F 00 3C */	stfs f3, 0x3c(r31)
/* 8031BD3C 002E52FC  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 8031BD40 002E5300  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8031BD44 002E5304  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8031BD48 002E5308  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8031BD4C 002E530C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8031BD50 002E5310  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 8031BD54 002E5314  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8031BD58 002E5318  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 8031BD5C 002E531C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8031BD60 002E5320  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 8031BD64 002E5324  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8031BD68 002E5328  E3 61 00 28 */	psq_l f27, 40(r1), 0, qr0
/* 8031BD6C 002E532C  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 8031BD70 002E5330  E3 41 00 18 */	psq_l f26, 24(r1), 0, qr0
/* 8031BD74 002E5334  CB 41 00 10 */	lfd f26, 0x10(r1)
/* 8031BD78 002E5338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031BD7C 002E533C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8031BD80 002E5340  7C 08 03 A6 */	mtlr r0
/* 8031BD84 002E5344  38 21 00 70 */	addi r1, r1, 0x70
/* 8031BD88 002E5348  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitLightColor
GXInitLightColor:
/* 8031BD90 002E5350  80 04 00 00 */	lwz r0, 0(r4)
/* 8031BD94 002E5354  90 03 00 0C */	stw r0, 0xc(r3)
/* 8031BD98 002E5358  4E 80 00 20 */	blr 

.balign 16, 0
.global GXLoadLightObjImm
GXLoadLightObjImm:
/* 8031BDA0 002E5360  7C 80 00 34 */	cntlzw r0, r4
/* 8031BDA4 002E5364  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031BDA8 002E5368  20 A0 00 1F */	subfic r5, r0, 0x1f
/* 8031BDAC 002E536C  54 A5 26 76 */	rlwinm r5, r5, 4, 0x19, 0x1b
/* 8031BDB0 002E5370  38 00 00 10 */	li r0, 0x10
/* 8031BDB4 002E5374  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031BDB8 002E5378  38 05 06 00 */	addi r0, r5, 0x600
/* 8031BDBC 002E537C  64 00 00 0F */	oris r0, r0, 0xf
/* 8031BDC0 002E5380  38 A4 80 00 */	addi r5, r4, -32768
/* 8031BDC4 002E5384  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031BDC8 002E5388  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8031BDCC 002E538C  7C C6 32 78 */	xor r6, r6, r6
/* 8031BDD0 002E5390  E0 A3 00 10 */	psq_l f5, 16(r3), 0, qr0
/* 8031BDD4 002E5394  E0 83 00 18 */	psq_l f4, 24(r3), 0, qr0
/* 8031BDD8 002E5398  E0 63 00 20 */	psq_l f3, 32(r3), 0, qr0
/* 8031BDDC 002E539C  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 8031BDE0 002E53A0  E0 23 00 30 */	psq_l f1, 48(r3), 0, qr0
/* 8031BDE4 002E53A4  E0 03 00 38 */	psq_l f0, 56(r3), 0, qr0
/* 8031BDE8 002E53A8  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031BDEC 002E53AC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031BDF0 002E53B0  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031BDF4 002E53B4  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8031BDF8 002E53B8  F0 A5 00 00 */	psq_st f5, 0(r5), 0, qr0
/* 8031BDFC 002E53BC  F0 85 00 00 */	psq_st f4, 0(r5), 0, qr0
/* 8031BE00 002E53C0  F0 65 00 00 */	psq_st f3, 0(r5), 0, qr0
/* 8031BE04 002E53C4  F0 45 00 00 */	psq_st f2, 0(r5), 0, qr0
/* 8031BE08 002E53C8  F0 25 00 00 */	psq_st f1, 0(r5), 0, qr0
/* 8031BE0C 002E53CC  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 8031BE10 002E53D0  38 00 00 01 */	li r0, 1
/* 8031BE14 002E53D4  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BE18 002E53D8  B0 03 00 02 */	sth r0, 2(r3)
/* 8031BE1C 002E53DC  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetChanAmbColor
GXSetChanAmbColor:
/* 8031BE20 002E53E0  2C 03 00 00 */	cmpwi r3, 0
/* 8031BE24 002E53E4  41 82 00 30 */	beq .L_8031BE54
/* 8031BE28 002E53E8  2C 03 00 01 */	cmpwi r3, 1
/* 8031BE2C 002E53EC  41 82 00 40 */	beq .L_8031BE6C
/* 8031BE30 002E53F0  2C 03 00 02 */	cmpwi r3, 2
/* 8031BE34 002E53F4  41 82 00 50 */	beq .L_8031BE84
/* 8031BE38 002E53F8  2C 03 00 03 */	cmpwi r3, 3
/* 8031BE3C 002E53FC  41 82 00 60 */	beq .L_8031BE9C
/* 8031BE40 002E5400  2C 03 00 04 */	cmpwi r3, 4
/* 8031BE44 002E5404  41 82 00 70 */	beq .L_8031BEB4
/* 8031BE48 002E5408  2C 03 00 05 */	cmpwi r3, 5
/* 8031BE4C 002E540C  41 82 00 74 */	beq .L_8031BEC0
/* 8031BE50 002E5410  4E 80 00 20 */	blr
.L_8031BE54:
/* 8031BE54 002E5414  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BE58 002E5418  39 00 00 00 */	li r8, 0
/* 8031BE5C 002E541C  80 04 00 00 */	lwz r0, 0(r4)
/* 8031BE60 002E5420  80 E3 00 A8 */	lwz r7, 0xa8(r3)
/* 8031BE64 002E5424  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 8031BE68 002E5428  48 00 00 68 */	b .L_8031BED0
.L_8031BE6C:
/* 8031BE6C 002E542C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BE70 002E5430  39 00 00 01 */	li r8, 1
/* 8031BE74 002E5434  80 04 00 00 */	lwz r0, 0(r4)
/* 8031BE78 002E5438  80 E3 00 AC */	lwz r7, 0xac(r3)
/* 8031BE7C 002E543C  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 8031BE80 002E5440  48 00 00 50 */	b .L_8031BED0
.L_8031BE84:
/* 8031BE84 002E5444  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BE88 002E5448  39 00 00 00 */	li r8, 0
/* 8031BE8C 002E544C  88 04 00 03 */	lbz r0, 3(r4)
/* 8031BE90 002E5450  80 E3 00 A8 */	lwz r7, 0xa8(r3)
/* 8031BE94 002E5454  50 07 06 3E */	rlwimi r7, r0, 0, 0x18, 0x1f
/* 8031BE98 002E5458  48 00 00 38 */	b .L_8031BED0
.L_8031BE9C:
/* 8031BE9C 002E545C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BEA0 002E5460  39 00 00 01 */	li r8, 1
/* 8031BEA4 002E5464  88 04 00 03 */	lbz r0, 3(r4)
/* 8031BEA8 002E5468  80 E3 00 AC */	lwz r7, 0xac(r3)
/* 8031BEAC 002E546C  50 07 06 3E */	rlwimi r7, r0, 0, 0x18, 0x1f
/* 8031BEB0 002E5470  48 00 00 20 */	b .L_8031BED0
.L_8031BEB4:
/* 8031BEB4 002E5474  80 E4 00 00 */	lwz r7, 0(r4)
/* 8031BEB8 002E5478  39 00 00 00 */	li r8, 0
/* 8031BEBC 002E547C  48 00 00 14 */	b .L_8031BED0
.L_8031BEC0:
/* 8031BEC0 002E5480  80 E4 00 00 */	lwz r7, 0(r4)
/* 8031BEC4 002E5484  39 00 00 01 */	li r8, 1
/* 8031BEC8 002E5488  48 00 00 08 */	b .L_8031BED0
/* 8031BECC 002E548C  4E 80 00 20 */	blr
.L_8031BED0:
/* 8031BED0 002E5490  80 C2 BC 20 */	lwz r6, lbl_8066BFA0@sda21(r2)
/* 8031BED4 002E5494  38 60 01 00 */	li r3, 0x100
/* 8031BED8 002E5498  55 00 10 3A */	slwi r0, r8, 2
/* 8031BEDC 002E549C  80 A6 05 FC */	lwz r5, 0x5fc(r6)
/* 8031BEE0 002E54A0  7C 64 40 30 */	slw r4, r3, r8
/* 8031BEE4 002E54A4  7C 66 02 14 */	add r3, r6, r0
/* 8031BEE8 002E54A8  7C A0 23 78 */	or r0, r5, r4
/* 8031BEEC 002E54AC  90 06 05 FC */	stw r0, 0x5fc(r6)
/* 8031BEF0 002E54B0  90 E3 00 A8 */	stw r7, 0xa8(r3)
/* 8031BEF4 002E54B4  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetChanMatColor
GXSetChanMatColor:
/* 8031BF00 002E54C0  2C 03 00 00 */	cmpwi r3, 0
/* 8031BF04 002E54C4  41 82 00 30 */	beq .L_8031BF34
/* 8031BF08 002E54C8  2C 03 00 01 */	cmpwi r3, 1
/* 8031BF0C 002E54CC  41 82 00 40 */	beq .L_8031BF4C
/* 8031BF10 002E54D0  2C 03 00 02 */	cmpwi r3, 2
/* 8031BF14 002E54D4  41 82 00 50 */	beq .L_8031BF64
/* 8031BF18 002E54D8  2C 03 00 03 */	cmpwi r3, 3
/* 8031BF1C 002E54DC  41 82 00 60 */	beq .L_8031BF7C
/* 8031BF20 002E54E0  2C 03 00 04 */	cmpwi r3, 4
/* 8031BF24 002E54E4  41 82 00 70 */	beq .L_8031BF94
/* 8031BF28 002E54E8  2C 03 00 05 */	cmpwi r3, 5
/* 8031BF2C 002E54EC  41 82 00 74 */	beq .L_8031BFA0
/* 8031BF30 002E54F0  4E 80 00 20 */	blr
.L_8031BF34:
/* 8031BF34 002E54F4  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BF38 002E54F8  39 00 00 00 */	li r8, 0
/* 8031BF3C 002E54FC  80 04 00 00 */	lwz r0, 0(r4)
/* 8031BF40 002E5500  80 E3 00 B0 */	lwz r7, 0xb0(r3)
/* 8031BF44 002E5504  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 8031BF48 002E5508  48 00 00 68 */	b .L_8031BFB0
.L_8031BF4C:
/* 8031BF4C 002E550C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BF50 002E5510  39 00 00 01 */	li r8, 1
/* 8031BF54 002E5514  80 04 00 00 */	lwz r0, 0(r4)
/* 8031BF58 002E5518  80 E3 00 B4 */	lwz r7, 0xb4(r3)
/* 8031BF5C 002E551C  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 8031BF60 002E5520  48 00 00 50 */	b .L_8031BFB0
.L_8031BF64:
/* 8031BF64 002E5524  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BF68 002E5528  39 00 00 00 */	li r8, 0
/* 8031BF6C 002E552C  88 04 00 03 */	lbz r0, 3(r4)
/* 8031BF70 002E5530  80 E3 00 B0 */	lwz r7, 0xb0(r3)
/* 8031BF74 002E5534  50 07 06 3E */	rlwimi r7, r0, 0, 0x18, 0x1f
/* 8031BF78 002E5538  48 00 00 38 */	b .L_8031BFB0
.L_8031BF7C:
/* 8031BF7C 002E553C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031BF80 002E5540  39 00 00 01 */	li r8, 1
/* 8031BF84 002E5544  88 04 00 03 */	lbz r0, 3(r4)
/* 8031BF88 002E5548  80 E3 00 B4 */	lwz r7, 0xb4(r3)
/* 8031BF8C 002E554C  50 07 06 3E */	rlwimi r7, r0, 0, 0x18, 0x1f
/* 8031BF90 002E5550  48 00 00 20 */	b .L_8031BFB0
.L_8031BF94:
/* 8031BF94 002E5554  80 E4 00 00 */	lwz r7, 0(r4)
/* 8031BF98 002E5558  39 00 00 00 */	li r8, 0
/* 8031BF9C 002E555C  48 00 00 14 */	b .L_8031BFB0
.L_8031BFA0:
/* 8031BFA0 002E5560  80 E4 00 00 */	lwz r7, 0(r4)
/* 8031BFA4 002E5564  39 00 00 01 */	li r8, 1
/* 8031BFA8 002E5568  48 00 00 08 */	b .L_8031BFB0
/* 8031BFAC 002E556C  4E 80 00 20 */	blr
.L_8031BFB0:
/* 8031BFB0 002E5570  80 C2 BC 20 */	lwz r6, lbl_8066BFA0@sda21(r2)
/* 8031BFB4 002E5574  38 60 04 00 */	li r3, 0x400
/* 8031BFB8 002E5578  55 00 10 3A */	slwi r0, r8, 2
/* 8031BFBC 002E557C  80 A6 05 FC */	lwz r5, 0x5fc(r6)
/* 8031BFC0 002E5580  7C 64 40 30 */	slw r4, r3, r8
/* 8031BFC4 002E5584  7C 66 02 14 */	add r3, r6, r0
/* 8031BFC8 002E5588  7C A0 23 78 */	or r0, r5, r4
/* 8031BFCC 002E558C  90 06 05 FC */	stw r0, 0x5fc(r6)
/* 8031BFD0 002E5590  90 E3 00 B0 */	stw r7, 0xb0(r3)
/* 8031BFD4 002E5594  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetNumChans
GXSetNumChans:
/* 8031BFE0 002E55A0  80 82 BC 20 */	lwz r4, lbl_8066BFA0@sda21(r2)
/* 8031BFE4 002E55A4  80 04 02 54 */	lwz r0, 0x254(r4)
/* 8031BFE8 002E55A8  50 60 26 76 */	rlwimi r0, r3, 4, 0x19, 0x1b
/* 8031BFEC 002E55AC  90 04 02 54 */	stw r0, 0x254(r4)
/* 8031BFF0 002E55B0  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 8031BFF4 002E55B4  64 00 01 00 */	oris r0, r0, 0x100
/* 8031BFF8 002E55B8  60 00 00 04 */	ori r0, r0, 4
/* 8031BFFC 002E55BC  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 8031C000 002E55C0  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetChanCtrl
GXSetChanCtrl:
/* 8031C010 002E55D0  2C 09 00 00 */	cmpwi r9, 0
/* 8031C014 002E55D4  39 40 00 00 */	li r10, 0
/* 8031C018 002E55D8  50 8A 0F BC */	rlwimi r10, r4, 1, 0x1e, 0x1e
/* 8031C01C 002E55DC  54 6B 07 BE */	clrlwi r11, r3, 0x1e
/* 8031C020 002E55E0  50 CA 07 FE */	rlwimi r10, r6, 0, 0x1f, 0x1f
/* 8031C024 002E55E4  50 AA 36 72 */	rlwimi r10, r5, 6, 0x19, 0x19
/* 8031C028 002E55E8  40 82 00 08 */	bne .L_8031C030
/* 8031C02C 002E55EC  39 00 00 00 */	li r8, 0
.L_8031C030:
/* 8031C030 002E55F0  20 A9 00 02 */	subfic r5, r9, 2
/* 8031C034 002E55F4  38 89 FF FE */	addi r4, r9, -2
/* 8031C038 002E55F8  7C A4 23 78 */	or r4, r5, r4
/* 8031C03C 002E55FC  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031C040 002E5600  7C 09 00 D0 */	neg r0, r9
/* 8031C044 002E5604  51 0A 3D F0 */	rlwimi r10, r8, 7, 0x17, 0x18
/* 8031C048 002E5608  50 8A 55 AC */	rlwimi r10, r4, 0xa, 0x16, 0x16
/* 8031C04C 002E560C  55 64 10 3A */	slwi r4, r11, 2
/* 8031C050 002E5610  7C 00 4B 78 */	or r0, r0, r9
/* 8031C054 002E5614  2C 03 00 04 */	cmpwi r3, 4
/* 8031C058 002E5618  50 0A 5D 6A */	rlwimi r10, r0, 0xb, 0x15, 0x15
/* 8031C05C 002E561C  7C 85 22 14 */	add r4, r5, r4
/* 8031C060 002E5620  50 EA 16 BA */	rlwimi r10, r7, 2, 0x1a, 0x1d
/* 8031C064 002E5624  38 00 10 00 */	li r0, 0x1000
/* 8031C068 002E5628  50 EA 3C 68 */	rlwimi r10, r7, 7, 0x11, 0x14
/* 8031C06C 002E562C  91 44 00 B8 */	stw r10, 0xb8(r4)
/* 8031C070 002E5630  7C 00 58 30 */	slw r0, r0, r11
/* 8031C074 002E5634  80 85 05 FC */	lwz r4, 0x5fc(r5)
/* 8031C078 002E5638  7C 80 03 78 */	or r0, r4, r0
/* 8031C07C 002E563C  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 8031C080 002E5640  40 82 00 18 */	bne .L_8031C098
/* 8031C084 002E5644  91 45 00 C0 */	stw r10, 0xc0(r5)
/* 8031C088 002E5648  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 8031C08C 002E564C  60 00 50 00 */	ori r0, r0, 0x5000
/* 8031C090 002E5650  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 8031C094 002E5654  4E 80 00 20 */	blr
.L_8031C098:
/* 8031C098 002E5658  2C 03 00 05 */	cmpwi r3, 5
/* 8031C09C 002E565C  4C 82 00 20 */	bnelr 
/* 8031C0A0 002E5660  91 45 00 C4 */	stw r10, 0xc4(r5)
/* 8031C0A4 002E5664  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 8031C0A8 002E5668  60 00 A0 00 */	ori r0, r0, 0xa000
/* 8031C0AC 002E566C  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 8031C0B0 002E5670  4E 80 00 20 */	blr 