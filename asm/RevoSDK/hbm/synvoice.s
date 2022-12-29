.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __HBMSYNClearVoiceReferences
__HBMSYNClearVoiceReferences:
/* 80341F10 0030B4D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80341F14 0030B4D4  7C 08 02 A6 */	mflr r0
/* 80341F18 0030B4D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80341F1C 0030B4DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80341F20 0030B4E0  7C 7F 1B 78 */	mr r31, r3
/* 80341F24 0030B4E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80341F28 0030B4E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80341F2C 0030B4EC  83 C3 00 14 */	lwz r30, 0x14(r3)
/* 80341F30 0030B4F0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80341F34 0030B4F4  4B FF E9 FD */	bl func_80340930
/* 80341F38 0030B4F8  7C 7D 1B 78 */	mr r29, r3
/* 80341F3C 0030B4FC  4B FF EA 15 */	bl func_80340950
/* 80341F40 0030B500  3C 80 80 5D */	lis r4, lbl_805CDEEC@ha
/* 80341F44 0030B504  7F E3 FB 78 */	mr r3, r31
/* 80341F48 0030B508  1C 1D 00 4C */	mulli r0, r29, 0x4c
/* 80341F4C 0030B50C  80 84 DE EC */	lwz r4, lbl_805CDEEC@l(r4)
/* 80341F50 0030B510  7F E4 02 14 */	add r31, r4, r0
/* 80341F54 0030B514  4B FF DD 0D */	bl HBMMIXReleaseChannel
/* 80341F58 0030B518  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 80341F5C 0030B51C  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 80341F60 0030B520  54 63 48 2C */	slwi r3, r3, 9
/* 80341F64 0030B524  7C 7E 1A 14 */	add r3, r30, r3
/* 80341F68 0030B528  54 00 10 3A */	slwi r0, r0, 2
/* 80341F6C 0030B52C  7C 63 02 14 */	add r3, r3, r0
/* 80341F70 0030B530  80 03 04 08 */	lwz r0, 0x408(r3)
/* 80341F74 0030B534  7C 00 F8 40 */	cmplw r0, r31
/* 80341F78 0030B538  40 82 00 0C */	bne .L_80341F84
/* 80341F7C 0030B53C  38 00 00 00 */	li r0, 0
/* 80341F80 0030B540  90 03 04 08 */	stw r0, 0x408(r3)
.L_80341F84:
/* 80341F84 0030B544  38 00 00 00 */	li r0, 0
/* 80341F88 0030B548  90 1F 00 08 */	stw r0, 8(r31)
/* 80341F8C 0030B54C  80 7E 04 04 */	lwz r3, 0x404(r30)
/* 80341F90 0030B550  38 03 FF FF */	addi r0, r3, -1
/* 80341F94 0030B554  90 1E 04 04 */	stw r0, 0x404(r30)
/* 80341F98 0030B558  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80341F9C 0030B55C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80341FA0 0030B560  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80341FA4 0030B564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80341FA8 0030B568  7C 08 03 A6 */	mtlr r0
/* 80341FAC 0030B56C  38 21 00 20 */	addi r1, r1, 0x20
/* 80341FB0 0030B570  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80341FC0
func_80341FC0:
/* 80341FC0 0030B580  38 00 00 03 */	li r0, 3
/* 80341FC4 0030B584  90 03 00 30 */	stw r0, 0x30(r3)
/* 80341FC8 0030B588  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80341FD0
func_80341FD0:
/* 80341FD0 0030B590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80341FD4 0030B594  7C 08 02 A6 */	mflr r0
/* 80341FD8 0030B598  3C 80 80 5D */	lis r4, lbl_805CDEEC@ha
/* 80341FDC 0030B59C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80341FE0 0030B5A0  1C 03 00 4C */	mulli r0, r3, 0x4c
/* 80341FE4 0030B5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80341FE8 0030B5A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80341FEC 0030B5AC  80 64 DE EC */	lwz r3, lbl_805CDEEC@l(r4)
/* 80341FF0 0030B5B0  7F C3 02 14 */	add r30, r3, r0
/* 80341FF4 0030B5B4  83 FE 00 08 */	lwz r31, 8(r30)
/* 80341FF8 0030B5B8  2C 1F 00 00 */	cmpwi r31, 0
/* 80341FFC 0030B5BC  41 82 00 AC */	beq .L_803420A8
/* 80342000 0030B5C0  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80342004 0030B5C4  2C 00 00 00 */	cmpwi r0, 0
/* 80342008 0030B5C8  40 82 00 48 */	bne .L_80342050
/* 8034200C 0030B5CC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80342010 0030B5D0  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80342014 0030B5D4  2C 00 00 00 */	cmpwi r0, 0
/* 80342018 0030B5D8  40 82 00 38 */	bne .L_80342050
/* 8034201C 0030B5DC  88 7E 00 0C */	lbz r3, 0xc(r30)
/* 80342020 0030B5E0  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 80342024 0030B5E4  54 63 48 2C */	slwi r3, r3, 9
/* 80342028 0030B5E8  7C 7F 1A 14 */	add r3, r31, r3
/* 8034202C 0030B5EC  54 00 10 3A */	slwi r0, r0, 2
/* 80342030 0030B5F0  7C 63 02 14 */	add r3, r3, r0
/* 80342034 0030B5F4  80 03 04 08 */	lwz r0, 0x408(r3)
/* 80342038 0030B5F8  7C 00 F0 40 */	cmplw r0, r30
/* 8034203C 0030B5FC  40 82 00 0C */	bne .L_80342048
/* 80342040 0030B600  38 00 00 00 */	li r0, 0
/* 80342044 0030B604  90 03 04 08 */	stw r0, 0x408(r3)
.L_80342048:
/* 80342048 0030B608  38 00 00 04 */	li r0, 4
/* 8034204C 0030B60C  90 1E 00 30 */	stw r0, 0x30(r30)
.L_80342050:
/* 80342050 0030B610  7F C3 F3 78 */	mr r3, r30
/* 80342054 0030B614  4B FF F5 6D */	bl func_803415C0
/* 80342058 0030B618  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8034205C 0030B61C  28 00 00 04 */	cmplwi r0, 4
/* 80342060 0030B620  40 82 00 38 */	bne .L_80342098
/* 80342064 0030B624  38 00 00 00 */	li r0, 0
/* 80342068 0030B628  90 1E 00 08 */	stw r0, 8(r30)
/* 8034206C 0030B62C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80342070 0030B630  4B FF DB F1 */	bl HBMMIXReleaseChannel
/* 80342074 0030B634  80 7E 00 04 */	lwz r3, 4(r30)
/* 80342078 0030B638  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8034207C 0030B63C  4B FF E9 05 */	bl HBMFreeIndexByKey
/* 80342080 0030B640  80 7E 00 04 */	lwz r3, 4(r30)
/* 80342084 0030B644  4B F9 03 7D */	bl AXFreeVoice
/* 80342088 0030B648  80 7F 04 04 */	lwz r3, 0x404(r31)
/* 8034208C 0030B64C  38 03 FF FF */	addi r0, r3, -1
/* 80342090 0030B650  90 1F 04 04 */	stw r0, 0x404(r31)
/* 80342094 0030B654  48 00 00 14 */	b .L_803420A8
.L_80342098:
/* 80342098 0030B658  7F C3 F3 78 */	mr r3, r30
/* 8034209C 0030B65C  4B FF F6 D5 */	bl __HBMSYNUpdateMix
/* 803420A0 0030B660  7F C3 F3 78 */	mr r3, r30
/* 803420A4 0030B664  4B FF F9 8D */	bl __HBMSYNUpdateSrc
.L_803420A8:
/* 803420A8 0030B668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803420AC 0030B66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803420B0 0030B670  83 C1 00 08 */	lwz r30, 8(r1)
/* 803420B4 0030B674  7C 08 03 A6 */	mtlr r0
/* 803420B8 0030B678  38 21 00 10 */	addi r1, r1, 0x10
/* 803420BC 0030B67C  4E 80 00 20 */	blr 