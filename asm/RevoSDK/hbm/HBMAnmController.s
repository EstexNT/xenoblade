.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __ct__Q210homebutton18GroupAnmControllerFv, global
/* 8031F450 002E8A10  3C 80 80 55 */	lis r4, __vt__homebutton_GroupAnmController@ha
/* 8031F454 002E8A14  38 00 00 00 */	li r0, 0
/* 8031F458 002E8A18  38 84 C2 40 */	addi r4, r4, __vt__homebutton_GroupAnmController@l
/* 8031F45C 002E8A1C  90 83 00 00 */	stw r4, 0(r3)
/* 8031F460 002E8A20  90 03 00 20 */	stw r0, 0x20(r3)
/* 8031F464 002E8A24  90 03 00 24 */	stw r0, 0x24(r3)
/* 8031F468 002E8A28  4E 80 00 20 */	blr 
.endfn __ct__Q210homebutton18GroupAnmControllerFv

.balign 16, 0
.fn __dt__Q210homebutton18GroupAnmControllerFv, global
/* 8031F470 002E8A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031F474 002E8A34  7C 08 02 A6 */	mflr r0
/* 8031F478 002E8A38  2C 03 00 00 */	cmpwi r3, 0
/* 8031F47C 002E8A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031F480 002E8A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031F484 002E8A44  7C 7F 1B 78 */	mr r31, r3
/* 8031F488 002E8A48  41 82 00 10 */	beq .L_8031F498
/* 8031F48C 002E8A4C  2C 04 00 00 */	cmpwi r4, 0
/* 8031F490 002E8A50  40 81 00 08 */	ble .L_8031F498
/* 8031F494 002E8A54  48 11 57 99 */	bl __dl__FPv
.L_8031F498:
/* 8031F498 002E8A58  7F E3 FB 78 */	mr r3, r31
/* 8031F49C 002E8A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031F4A0 002E8A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031F4A4 002E8A64  7C 08 03 A6 */	mtlr r0
/* 8031F4A8 002E8A68  38 21 00 10 */	addi r1, r1, 0x10
/* 8031F4AC 002E8A6C  4E 80 00 20 */	blr 
.endfn __dt__Q210homebutton18GroupAnmControllerFv

.balign 16, 0
.fn do_calc__Q210homebutton18GroupAnmControllerFv, global
/* 8031F4B0 002E8A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031F4B4 002E8A74  7C 08 02 A6 */	mflr r0
/* 8031F4B8 002E8A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031F4BC 002E8A7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031F4C0 002E8A80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031F4C4 002E8A84  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8031F4C8 002E8A88  93 81 00 10 */	stw r28, 0x10(r1)
/* 8031F4CC 002E8A8C  7C 7C 1B 78 */	mr r28, r3
/* 8031F4D0 002E8A90  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8031F4D4 002E8A94  2C 00 00 01 */	cmpwi r0, 1
/* 8031F4D8 002E8A98  40 82 00 28 */	bne .L_8031F500
/* 8031F4DC 002E8A9C  81 83 00 00 */	lwz r12, 0(r3)
/* 8031F4E0 002E8AA0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8031F4E4 002E8AA4  7D 89 03 A6 */	mtctr r12
/* 8031F4E8 002E8AA8  4E 80 04 21 */	bctrl 
/* 8031F4EC 002E8AAC  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8031F4F0 002E8AB0  3B A0 00 01 */	li r29, 1
/* 8031F4F4 002E8AB4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8031F4F8 002E8AB8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8031F4FC 002E8ABC  48 00 00 08 */	b .L_8031F504
.L_8031F500:
/* 8031F500 002E8AC0  3B A0 00 00 */	li r29, 0
.L_8031F504:
/* 8031F504 002E8AC4  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8031F508 002E8AC8  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8031F50C 002E8ACC  3B C3 00 10 */	addi r30, r3, 0x10
/* 8031F510 002E8AD0  48 00 00 28 */	b .L_8031F538
.L_8031F514:
/* 8031F514 002E8AD4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8031F518 002E8AD8  7F A5 EB 78 */	mr r5, r29
/* 8031F51C 002E8ADC  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8031F520 002E8AE0  38 C0 00 00 */	li r6, 0
/* 8031F524 002E8AE4  81 83 00 00 */	lwz r12, 0(r3)
/* 8031F528 002E8AE8  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8031F52C 002E8AEC  7D 89 03 A6 */	mtctr r12
/* 8031F530 002E8AF0  4E 80 04 21 */	bctrl 
/* 8031F534 002E8AF4  83 FF 00 00 */	lwz r31, 0(r31)
.L_8031F538:
/* 8031F538 002E8AF8  7C 1F F0 40 */	cmplw r31, r30
/* 8031F53C 002E8AFC  40 82 FF D8 */	bne .L_8031F514
/* 8031F540 002E8B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031F544 002E8B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031F548 002E8B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031F54C 002E8B0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031F550 002E8B10  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8031F554 002E8B14  7C 08 03 A6 */	mtlr r0
/* 8031F558 002E8B18  38 21 00 20 */	addi r1, r1, 0x20
/* 8031F55C 002E8B1C  4E 80 00 20 */	blr 
.endfn do_calc__Q210homebutton18GroupAnmControllerFv

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__homebutton_GroupAnmController, global
	.4byte __RTTI__homebutton_GroupAnmController
	.4byte 0
	.4byte __dt__Q210homebutton18GroupAnmControllerFv
	.4byte calc__Q210homebutton15FrameControllerFv
.endobj __vt__homebutton_GroupAnmController

.obj homebutton_GroupAnmController_typestr, global
	.asciz "homebutton::GroupAnmController"
	.balign 4
.endobj homebutton_GroupAnmController_typestr

.obj homebutton_GroupAnmController_hierarchy, global
	.4byte __RTTI__homebutton_FrameController
	.4byte 0
	.4byte 0
	.4byte 0
.endobj homebutton_GroupAnmController_hierarchy

.obj __RTTI__homebutton_GroupAnmController, global
	.4byte homebutton_GroupAnmController_typestr
	.4byte homebutton_GroupAnmController_hierarchy
.endobj __RTTI__homebutton_GroupAnmController
