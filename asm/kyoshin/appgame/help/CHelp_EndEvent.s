.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802B7EC4__Q22cf14CHelp_EndEventFv, global
/* 802B7EC4 00281484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7EC8 00281488  7C 08 02 A6 */	mflr r0
/* 802B7ECC 0028148C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7ED0 00281490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7ED4 00281494  93 C1 00 08 */	stw r30, 8(r1)
/* 802B7ED8 00281498  7C 7E 1B 78 */	mr r30, r3
/* 802B7EDC 0028149C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 802B7EE0 002814A0  2C 04 00 00 */	cmpwi r4, 0
/* 802B7EE4 002814A4  41 82 00 34 */	beq .L_802B7F18
/* 802B7EE8 002814A8  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 802B7EEC 002814AC  3B E0 00 00 */	li r31, 0
/* 802B7EF0 002814B0  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 802B7EF4 002814B4  41 82 00 2C */	beq .L_802B7F20
/* 802B7EF8 002814B8  3C 60 80 57 */	lis r3, lbl_80574E20@ha
/* 802B7EFC 002814BC  38 63 4E 20 */	addi r3, r3, lbl_80574E20@l
/* 802B7F00 002814C0  48 00 A9 35 */	bl strcmp
/* 802B7F04 002814C4  7C 60 00 34 */	cntlzw r0, r3
/* 802B7F08 002814C8  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 802B7F0C 002814CC  41 82 00 14 */	beq .L_802B7F20
/* 802B7F10 002814D0  3B E0 00 01 */	li r31, 1
/* 802B7F14 002814D4  48 00 00 0C */	b .L_802B7F20
.L_802B7F18:
/* 802B7F18 002814D8  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 802B7F1C 002814DC  54 1F 57 FE */	rlwinm r31, r0, 0xa, 0x1f, 0x1f
.L_802B7F20:
/* 802B7F20 002814E0  81 9E 00 08 */	lwz r12, 8(r30)
/* 802B7F24 002814E4  7F E0 00 34 */	cntlzw r0, r31
/* 802B7F28 002814E8  7F C3 F3 78 */	mr r3, r30
/* 802B7F2C 002814EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B7F30 002814F0  54 04 D9 7E */	srwi r4, r0, 5
/* 802B7F34 002814F4  7D 89 03 A6 */	mtctr r12
/* 802B7F38 002814F8  4E 80 04 21 */	bctrl 
/* 802B7F3C 002814FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7F40 00281500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7F44 00281504  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B7F48 00281508  7C 08 03 A6 */	mtlr r0
/* 802B7F4C 0028150C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7F50 00281510  4E 80 00 20 */	blr 
.endfn func_802B7EC4__Q22cf14CHelp_EndEventFv

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BD80", local
.hidden "@etb_8001BD80"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BD80"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033908", local
.hidden "@eti_80033908"
	.4byte func_802B7EC4__Q22cf14CHelp_EndEventFv
	.4byte 0x00000090
	.4byte "@etb_8001BD80"
.endobj "@eti_80033908"
