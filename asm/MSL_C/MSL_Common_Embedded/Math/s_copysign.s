.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global copysign
copysign:
/* 802CAB88 00294148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CAB8C 0029414C  D8 21 00 08 */	stfd f1, 8(r1)
/* 802CAB90 00294150  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 802CAB94 00294154  80 61 00 08 */	lwz r3, 8(r1)
/* 802CAB98 00294158  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802CAB9C 0029415C  54 00 00 00 */	rlwinm r0, r0, 0, 0, 0
/* 802CABA0 00294160  50 60 00 7E */	rlwimi r0, r3, 0, 1, 0x1f
/* 802CABA4 00294164  90 01 00 08 */	stw r0, 8(r1)
/* 802CABA8 00294168  C8 21 00 08 */	lfd f1, 8(r1)
/* 802CABAC 0029416C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CABB0 00294170  4E 80 00 20 */	blr 