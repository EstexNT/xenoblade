.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_802240C4, global
/* 802240C4 001ED684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802240C8 001ED688  7C 08 02 A6 */	mflr r0
/* 802240CC 001ED68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802240D0 001ED690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802240D4 001ED694  7C 7F 1B 78 */	mr r31, r3
/* 802240D8 001ED698  4B FF FC 69 */	bl func_80223D40
/* 802240DC 001ED69C  3C 80 80 54 */	lis r4, __vt__CMCEffUpBlue@ha
/* 802240E0 001ED6A0  7F E3 FB 78 */	mr r3, r31
/* 802240E4 001ED6A4  38 84 98 8C */	addi r4, r4, __vt__CMCEffUpBlue@l
/* 802240E8 001ED6A8  90 9F 00 00 */	stw r4, 0(r31)
/* 802240EC 001ED6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802240F0 001ED6B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802240F4 001ED6B4  7C 08 03 A6 */	mtlr r0
/* 802240F8 001ED6B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802240FC 001ED6BC  4E 80 00 20 */	blr 
.endfn func_802240C4

.fn __dt__80224100, global
/* 80224100 001ED6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224104 001ED6C4  7C 08 02 A6 */	mflr r0
/* 80224108 001ED6C8  2C 03 00 00 */	cmpwi r3, 0
/* 8022410C 001ED6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224110 001ED6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224114 001ED6D4  7C 7F 1B 78 */	mr r31, r3
/* 80224118 001ED6D8  41 82 00 10 */	beq .L_80224128
/* 8022411C 001ED6DC  2C 04 00 00 */	cmpwi r4, 0
/* 80224120 001ED6E0  40 81 00 08 */	ble .L_80224128
/* 80224124 001ED6E4  48 21 0B 09 */	bl __dl__FPv
.L_80224128:
/* 80224128 001ED6E8  7F E3 FB 78 */	mr r3, r31
/* 8022412C 001ED6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224130 001ED6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224134 001ED6F4  7C 08 03 A6 */	mtlr r0
/* 80224138 001ED6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022413C 001ED6FC  4E 80 00 20 */	blr 
.endfn __dt__80224100

.fn func_80224140, global
/* 80224140 001ED700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224144 001ED704  7C 08 02 A6 */	mflr r0
/* 80224148 001ED708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022414C 001ED70C  BF C1 00 08 */	stmw r30, 8(r1)
/* 80224150 001ED710  3F E0 80 50 */	lis r31, CMCEffCrystal_strpool@ha
/* 80224154 001ED714  3B FF 4C FC */	addi r31, r31, CMCEffCrystal_strpool@l
/* 80224158 001ED718  7C 7E 1B 78 */	mr r30, r3
/* 8022415C 001ED71C  38 BF 00 62 */	addi r5, r31, 0x62
/* 80224160 001ED720  80 83 00 08 */	lwz r4, 8(r3)
/* 80224164 001ED724  38 63 00 0C */	addi r3, r3, 0xc
/* 80224168 001ED728  4B F1 2D 1D */	bl func_80136E84
/* 8022416C 001ED72C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80224170 001ED730  38 9E 00 10 */	addi r4, r30, 0x10
/* 80224174 001ED734  80 BE 00 08 */	lwz r5, 8(r30)
/* 80224178 001ED738  38 DF 00 79 */	addi r6, r31, 0x79
/* 8022417C 001ED73C  4B F1 2D 8D */	bl func_80136F08
/* 80224180 001ED740  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80224184 001ED744  38 A0 00 01 */	li r5, 1
/* 80224188 001ED748  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8022418C 001ED74C  81 83 00 00 */	lwz r12, 0(r3)
/* 80224190 001ED750  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80224194 001ED754  7D 89 03 A6 */	mtctr r12
/* 80224198 001ED758  4E 80 04 21 */	bctrl 
/* 8022419C 001ED75C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802241A0 001ED760  38 80 00 00 */	li r4, 0
/* 802241A4 001ED764  81 83 00 00 */	lwz r12, 0(r3)
/* 802241A8 001ED768  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802241AC 001ED76C  7D 89 03 A6 */	mtctr r12
/* 802241B0 001ED770  4E 80 04 21 */	bctrl 
/* 802241B4 001ED774  38 00 00 01 */	li r0, 1
/* 802241B8 001ED778  98 1E 00 14 */	stb r0, 0x14(r30)
/* 802241BC 001ED77C  BB C1 00 08 */	lmw r30, 8(r1)
/* 802241C0 001ED780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802241C4 001ED784  7C 08 03 A6 */	mtlr r0
/* 802241C8 001ED788  38 21 00 10 */	addi r1, r1, 0x10
/* 802241CC 001ED78C  4E 80 00 20 */	blr 
.endfn func_80224140

.fn func_802241D0, global
/* 802241D0 001ED790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802241D4 001ED794  7C 08 02 A6 */	mflr r0
/* 802241D8 001ED798  90 01 00 14 */	stw r0, 0x14(r1)
/* 802241DC 001ED79C  4B FF FD 49 */	bl func_80223F24
/* 802241E0 001ED7A0  38 60 00 8C */	li r3, 0x8c
/* 802241E4 001ED7A4  4B F1 3E 95 */	bl func_80138078
/* 802241E8 001ED7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802241EC 001ED7AC  7C 08 03 A6 */	mtlr r0
/* 802241F0 001ED7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802241F4 001ED7B4  4E 80 00 20 */	blr 
.endfn func_802241D0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80014FD4", local
.hidden "@etb_80014FD4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014FD4"

.obj "@etb_80014FDC", local
.hidden "@etb_80014FDC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014FDC"

.obj "@etb_80014FE4", local
.hidden "@etb_80014FE4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80014FE4"

.obj "@etb_80014FEC", local
.hidden "@etb_80014FEC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80014FEC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002DE6C", local
.hidden "@eti_8002DE6C"
	.4byte func_802240C4
	.4byte 0x0000003C
	.4byte "@etb_80014FD4"
.endobj "@eti_8002DE6C"

.obj "@eti_8002DE78", local
.hidden "@eti_8002DE78"
	.4byte __dt__80224100
	.4byte 0x00000040
	.4byte "@etb_80014FDC"
.endobj "@eti_8002DE78"

.obj "@eti_8002DE84", local
.hidden "@eti_8002DE84"
	.4byte func_80224140
	.4byte 0x00000090
	.4byte "@etb_80014FE4"
.endobj "@eti_8002DE84"

.obj "@eti_8002DE90", local
.hidden "@eti_8002DE90"
	.4byte func_802241D0
	.4byte 0x00000028
	.4byte "@etb_80014FEC"
.endobj "@eti_8002DE90"
