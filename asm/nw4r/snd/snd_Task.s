.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#__dt__Q44nw4r3snd6detail4TaskFv or __dt__Q34nw4r2ut12LinkListNodeFv or __dt__Q44nw4r2ut22@unnamed@snd_Task_cpp@11NonCopyableFv
.global __dt__Q44nw4r3snd6detail4TaskFv
__dt__Q44nw4r3snd6detail4TaskFv:
/* 80425784 003EED44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80425788 003EED48  7C 08 02 A6 */	mflr r0
/* 8042578C 003EED4C  2C 03 00 00 */	cmpwi r3, 0
/* 80425790 003EED50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80425794 003EED54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80425798 003EED58  7C 7F 1B 78 */	mr r31, r3
/* 8042579C 003EED5C  41 82 00 10 */	beq .L_804257AC
/* 804257A0 003EED60  2C 04 00 00 */	cmpwi r4, 0
/* 804257A4 003EED64  40 81 00 08 */	ble .L_804257AC
/* 804257A8 003EED68  48 00 F4 85 */	bl __dl__FPv
.L_804257AC:
/* 804257AC 003EED6C  7F E3 FB 78 */	mr r3, r31
/* 804257B0 003EED70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804257B4 003EED74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804257B8 003EED78  7C 08 03 A6 */	mtlr r0
/* 804257BC 003EED7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804257C0 003EED80  4E 80 00 20 */	blr 