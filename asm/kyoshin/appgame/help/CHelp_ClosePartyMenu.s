.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802B84EC__Q22cf19CHelp_OpenPartyMenuFv, global
/* 802B84EC 00281AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B84F0 00281AB0  7C 08 02 A6 */	mflr r0
/* 802B84F4 00281AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B84F8 00281AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B84FC 00281ABC  3B E0 00 00 */	li r31, 0
/* 802B8500 00281AC0  4B FD B7 11 */	bl func_80293C10
/* 802B8504 00281AC4  2C 03 00 00 */	cmpwi r3, 0
/* 802B8508 00281AC8  40 82 00 10 */	bne .L_802B8518
/* 802B850C 00281ACC  4B ED A6 C5 */	bl func_80192BD0
/* 802B8510 00281AD0  2C 03 00 00 */	cmpwi r3, 0
/* 802B8514 00281AD4  41 82 00 08 */	beq .L_802B851C
.L_802B8518:
/* 802B8518 00281AD8  3B E0 00 01 */	li r31, 1
.L_802B851C:
/* 802B851C 00281ADC  7F E3 FB 78 */	mr r3, r31
/* 802B8520 00281AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8524 00281AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8528 00281AE8  7C 08 03 A6 */	mtlr r0
/* 802B852C 00281AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8530 00281AF0  4E 80 00 20 */	blr 
.endfn func_802B84EC__Q22cf19CHelp_OpenPartyMenuFv

.fn func_802B8534__Q22cf20CHelp_ClosePartyMenuFv, global
/* 802B8534 00281AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8538 00281AF8  7C 08 02 A6 */	mflr r0
/* 802B853C 00281AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8540 00281B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B8544 00281B04  3B E0 00 00 */	li r31, 0
/* 802B8548 00281B08  93 C1 00 08 */	stw r30, 8(r1)
/* 802B854C 00281B0C  7C 7E 1B 78 */	mr r30, r3
/* 802B8550 00281B10  4B FD B6 C1 */	bl func_80293C10
/* 802B8554 00281B14  2C 03 00 00 */	cmpwi r3, 0
/* 802B8558 00281B18  40 82 00 14 */	bne .L_802B856C
/* 802B855C 00281B1C  4B ED A6 75 */	bl func_80192BD0
/* 802B8560 00281B20  2C 03 00 00 */	cmpwi r3, 0
/* 802B8564 00281B24  40 82 00 08 */	bne .L_802B856C
/* 802B8568 00281B28  3B E0 00 01 */	li r31, 1
.L_802B856C:
/* 802B856C 00281B2C  81 9E 00 08 */	lwz r12, 8(r30)
/* 802B8570 00281B30  7F C3 F3 78 */	mr r3, r30
/* 802B8574 00281B34  7F E4 FB 78 */	mr r4, r31
/* 802B8578 00281B38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B857C 00281B3C  7D 89 03 A6 */	mtctr r12
/* 802B8580 00281B40  4E 80 04 21 */	bctrl 
/* 802B8584 00281B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8588 00281B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B858C 00281B4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B8590 00281B50  7C 08 03 A6 */	mtlr r0
/* 802B8594 00281B54  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8598 00281B58  4E 80 00 20 */	blr 
.endfn func_802B8534__Q22cf20CHelp_ClosePartyMenuFv

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BDF8", local
.hidden "@etb_8001BDF8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BDF8"

.obj "@etb_8001BE00", local
.hidden "@etb_8001BE00"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BE00"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033980", local
.hidden "@eti_80033980"
	.4byte func_802B84EC__Q22cf19CHelp_OpenPartyMenuFv
	.4byte 0x00000048
	.4byte "@etb_8001BDF8"
.endobj "@eti_80033980"

.obj "@eti_8003398C", local
.hidden "@eti_8003398C"
	.4byte func_802B8534__Q22cf20CHelp_ClosePartyMenuFv
	.4byte 0x00000068
	.4byte "@etb_8001BE00"
.endobj "@eti_8003398C"
