.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __register_global_object_tmp
__register_global_object_tmp:
/* 802B969C 00282C5C  80 0D B3 A0 */	lwz r0, lbl_80667520@sda21(r13)
/* 802B96A0 00282C60  90 05 00 00 */	stw r0, 0(r5)
/* 802B96A4 00282C64  90 85 00 04 */	stw r4, 4(r5)
/* 802B96A8 00282C68  90 65 00 08 */	stw r3, 8(r5)
/* 802B96AC 00282C6C  90 AD B3 A0 */	stw r5, lbl_80667520@sda21(r13)
/* 802B96B0 00282C70  4E 80 00 20 */	blr 


.global __destroy_global_chain_tmp
__destroy_global_chain_tmp:
/* 802B96B4 00282C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B96B8 00282C78  7C 08 02 A6 */	mflr r0
/* 802B96BC 00282C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B96C0 00282C80  48 00 00 20 */	b lbl_802B96E0
lbl_802B96C4:
/* 802B96C4 00282C84  80 03 00 00 */	lwz r0, 0(r3)
/* 802B96C8 00282C88  38 80 FF FF */	li r4, -1
/* 802B96CC 00282C8C  90 0D B3 A0 */	stw r0, lbl_80667520@sda21(r13)
/* 802B96D0 00282C90  81 83 00 04 */	lwz r12, 4(r3)
/* 802B96D4 00282C94  80 63 00 08 */	lwz r3, 8(r3)
/* 802B96D8 00282C98  7D 89 03 A6 */	mtctr r12
/* 802B96DC 00282C9C  4E 80 04 21 */	bctrl 
lbl_802B96E0:
/* 802B96E0 00282CA0  80 6D B3 A0 */	lwz r3, lbl_80667520@sda21(r13)
/* 802B96E4 00282CA4  2C 03 00 00 */	cmpwi r3, 0
/* 802B96E8 00282CA8  40 82 FF DC */	bne lbl_802B96C4
/* 802B96EC 00282CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B96F0 00282CB0  7C 08 03 A6 */	mtlr r0
/* 802B96F4 00282CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B96F8 00282CB8  4E 80 00 20 */	blr