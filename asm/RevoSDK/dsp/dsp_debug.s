.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __DSP_debug_printf, global
/* 803094B0 002D2A70  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803094B4 002D2A74  40 86 00 24 */	bne cr1, .L_803094D8
/* 803094B8 002D2A78  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803094BC 002D2A7C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803094C0 002D2A80  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803094C4 002D2A84  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803094C8 002D2A88  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803094CC 002D2A8C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803094D0 002D2A90  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803094D4 002D2A94  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803094D8:
/* 803094D8 002D2A98  90 61 00 08 */	stw r3, 8(r1)
/* 803094DC 002D2A9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803094E0 002D2AA0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803094E4 002D2AA4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803094E8 002D2AA8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803094EC 002D2AAC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803094F0 002D2AB0  91 21 00 20 */	stw r9, 0x20(r1)
/* 803094F4 002D2AB4  91 41 00 24 */	stw r10, 0x24(r1)
/* 803094F8 002D2AB8  38 21 00 70 */	addi r1, r1, 0x70
/* 803094FC 002D2ABC  4E 80 00 20 */	blr
.endfn __DSP_debug_printf