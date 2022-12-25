.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ADXT_StartAfs
ADXT_StartAfs:
/* 8038238C 0034B94C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80382390 0034B950  7C 08 02 A6 */	mflr r0
/* 80382394 0034B954  90 01 00 24 */	stw r0, 0x24(r1)
/* 80382398 0034B958  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038239C 0034B95C  7C BF 2B 78 */	mr r31, r5
/* 803823A0 0034B960  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803823A4 0034B964  7C 9E 23 78 */	mr r30, r4
/* 803823A8 0034B968  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803823AC 0034B96C  7C 7D 1B 78 */	mr r29, r3
/* 803823B0 0034B970  48 00 70 55 */	bl ADXCRS_Enter
/* 803823B4 0034B974  7F A3 EB 78 */	mr r3, r29
/* 803823B8 0034B978  7F C4 F3 78 */	mr r4, r30
/* 803823BC 0034B97C  7F E5 FB 78 */	mr r5, r31
/* 803823C0 0034B980  48 00 00 25 */	bl adxt_StartAfs
/* 803823C4 0034B984  48 00 70 45 */	bl ADXCRS_Leave
/* 803823C8 0034B988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803823CC 0034B98C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803823D0 0034B990  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803823D4 0034B994  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803823D8 0034B998  7C 08 03 A6 */	mtlr r0
/* 803823DC 0034B99C  38 21 00 20 */	addi r1, r1, 0x20
/* 803823E0 0034B9A0  4E 80 00 20 */	blr 

.global adxt_StartAfs
adxt_StartAfs:
/* 803823E4 0034B9A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803823E8 0034B9A8  7C 08 02 A6 */	mflr r0
/* 803823EC 0034B9AC  2C 03 00 00 */	cmpwi r3, 0
/* 803823F0 0034B9B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803823F4 0034B9B4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803823F8 0034B9B8  7C BF 2B 78 */	mr r31, r5
/* 803823FC 0034B9BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80382400 0034B9C0  7C 9E 23 78 */	mr r30, r4
/* 80382404 0034B9C4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80382408 0034B9C8  7C 7D 1B 78 */	mr r29, r3
/* 8038240C 0034B9CC  40 82 00 14 */	bne lbl_80382420
/* 80382410 0034B9D0  3C 60 80 52 */	lis r3, lbl_80519838@ha
/* 80382414 0034B9D4  38 63 98 38 */	addi r3, r3, lbl_80519838@l
/* 80382418 0034B9D8  48 00 7E 01 */	bl ADXERR_CallErrFunc1_
/* 8038241C 0034B9DC  48 00 00 B0 */	b lbl_803824CC
lbl_80382420:
/* 80382420 0034B9E0  48 00 0C C1 */	bl ADXT_Stop
/* 80382424 0034B9E4  80 BD 00 AC */	lwz r5, 0xac(r29)
/* 80382428 0034B9E8  7F C3 F3 78 */	mr r3, r30
/* 8038242C 0034B9EC  7F E4 FB 78 */	mr r4, r31
/* 80382430 0034B9F0  38 C1 00 08 */	addi r6, r1, 8
/* 80382434 0034B9F4  38 E1 00 10 */	addi r7, r1, 0x10
/* 80382438 0034B9F8  39 01 00 0C */	addi r8, r1, 0xc
/* 8038243C 0034B9FC  4B FF CE 25 */	bl ADXF_GetFnameRangeEx
/* 80382440 0034BA00  2C 03 00 00 */	cmpwi r3, 0
/* 80382444 0034BA04  40 82 00 88 */	bne lbl_803824CC
/* 80382448 0034BA08  80 1D 00 08 */	lwz r0, 8(r29)
/* 8038244C 0034BA0C  2C 00 00 00 */	cmpwi r0, 0
/* 80382450 0034BA10  40 82 00 40 */	bne lbl_80382490
/* 80382454 0034BA14  7F C3 F3 78 */	mr r3, r30
/* 80382458 0034BA18  7F E4 FB 78 */	mr r4, r31
/* 8038245C 0034BA1C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80382460 0034BA20  38 C0 00 10 */	li r6, 0x10
/* 80382464 0034BA24  48 00 81 69 */	bl ADXERR_ItoA2
/* 80382468 0034BA28  3C 60 80 52 */	lis r3, lbl_80519838@ha
/* 8038246C 0034BA2C  38 81 00 18 */	addi r4, r1, 0x18
/* 80382470 0034BA30  38 63 98 38 */	addi r3, r3, lbl_80519838@l
/* 80382474 0034BA34  38 63 00 29 */	addi r3, r3, 0x29
/* 80382478 0034BA38  48 00 7E 25 */	bl ADXERR_CallErrFunc2_
/* 8038247C 0034BA3C  38 60 FF FF */	li r3, -1
/* 80382480 0034BA40  38 00 00 06 */	li r0, 6
/* 80382484 0034BA44  B0 7D 00 60 */	sth r3, 0x60(r29)
/* 80382488 0034BA48  98 1D 00 01 */	stb r0, 1(r29)
/* 8038248C 0034BA4C  48 00 00 40 */	b lbl_803824CC
lbl_80382490:
/* 80382490 0034BA50  80 BD 00 AC */	lwz r5, 0xac(r29)
/* 80382494 0034BA54  38 00 00 01 */	li r0, 1
/* 80382498 0034BA58  7F A3 EB 78 */	mr r3, r29
/* 8038249C 0034BA5C  38 80 00 00 */	li r4, 0
/* 803824A0 0034BA60  90 BD 00 B0 */	stw r5, 0xb0(r29)
/* 803824A4 0034BA64  80 A1 00 08 */	lwz r5, 8(r1)
/* 803824A8 0034BA68  90 BD 00 B4 */	stw r5, 0xb4(r29)
/* 803824AC 0034BA6C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803824B0 0034BA70  90 BD 00 B8 */	stw r5, 0xb8(r29)
/* 803824B4 0034BA74  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803824B8 0034BA78  90 BD 00 BC */	stw r5, 0xbc(r29)
/* 803824BC 0034BA7C  98 1D 00 01 */	stb r0, 1(r29)
/* 803824C0 0034BA80  98 1D 00 A8 */	stb r0, 0xa8(r29)
/* 803824C4 0034BA84  98 1D 00 02 */	stb r0, 2(r29)
/* 803824C8 0034BA88  48 00 1F 35 */	bl ADXT_SetLnkSw
lbl_803824CC:
/* 803824CC 0034BA8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803824D0 0034BA90  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803824D4 0034BA94  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803824D8 0034BA98  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 803824DC 0034BA9C  7C 08 03 A6 */	mtlr r0
/* 803824E0 0034BAA0  38 21 00 40 */	addi r1, r1, 0x40
/* 803824E4 0034BAA4  4E 80 00 20 */	blr 

.global ADXT_StartFnameRange
ADXT_StartFnameRange:
/* 803824E8 0034BAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803824EC 0034BAAC  7C 08 02 A6 */	mflr r0
/* 803824F0 0034BAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803824F4 0034BAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803824F8 0034BAB8  7C 9F 23 78 */	mr r31, r4
/* 803824FC 0034BABC  93 C1 00 08 */	stw r30, 8(r1)
/* 80382500 0034BAC0  7C 7E 1B 78 */	mr r30, r3
/* 80382504 0034BAC4  48 00 6F 01 */	bl ADXCRS_Enter
/* 80382508 0034BAC8  2C 1E 00 00 */	cmpwi r30, 0
/* 8038250C 0034BACC  41 82 00 0C */	beq lbl_80382518
/* 80382510 0034BAD0  2C 1F 00 00 */	cmpwi r31, 0
/* 80382514 0034BAD4  40 82 00 18 */	bne lbl_8038252C
lbl_80382518:
/* 80382518 0034BAD8  3C 60 80 52 */	lis r3, lbl_80519838@ha
/* 8038251C 0034BADC  38 63 98 38 */	addi r3, r3, lbl_80519838@l
/* 80382520 0034BAE0  38 63 00 4D */	addi r3, r3, 0x4d
/* 80382524 0034BAE4  48 00 7C F5 */	bl ADXERR_CallErrFunc1_
/* 80382528 0034BAE8  48 00 00 58 */	b lbl_80382580
lbl_8038252C:
/* 8038252C 0034BAEC  7F C3 F3 78 */	mr r3, r30
/* 80382530 0034BAF0  48 00 0B B1 */	bl ADXT_Stop
/* 80382534 0034BAF4  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 80382538 0034BAF8  7F E5 FB 78 */	mr r5, r31
/* 8038253C 0034BAFC  38 80 01 00 */	li r4, 0x100
/* 80382540 0034BB00  48 01 8E DD */	bl criCrw_Strcpy
/* 80382544 0034BB04  80 9E 00 AC */	lwz r4, 0xac(r30)
/* 80382548 0034BB08  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 8038254C 0034BB0C  38 C0 00 00 */	li r6, 0
/* 80382550 0034BB10  38 00 00 01 */	li r0, 1
/* 80382554 0034BB14  38 A3 FF FF */	addi r5, r3, 0x000FFFFF@l
/* 80382558 0034BB18  90 9E 00 B0 */	stw r4, 0xb0(r30)
/* 8038255C 0034BB1C  7F C3 F3 78 */	mr r3, r30
/* 80382560 0034BB20  38 80 00 00 */	li r4, 0
/* 80382564 0034BB24  90 DE 00 B4 */	stw r6, 0xb4(r30)
/* 80382568 0034BB28  90 DE 00 B8 */	stw r6, 0xb8(r30)
/* 8038256C 0034BB2C  90 BE 00 BC */	stw r5, 0xbc(r30)
/* 80382570 0034BB30  98 1E 00 01 */	stb r0, 1(r30)
/* 80382574 0034BB34  98 1E 00 A8 */	stb r0, 0xa8(r30)
/* 80382578 0034BB38  98 DE 00 02 */	stb r6, 2(r30)
/* 8038257C 0034BB3C  48 00 1E 81 */	bl ADXT_SetLnkSw
lbl_80382580:
/* 80382580 0034BB40  48 00 6E 89 */	bl ADXCRS_Leave
/* 80382584 0034BB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80382588 0034BB48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038258C 0034BB4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80382590 0034BB50  7C 08 03 A6 */	mtlr r0
/* 80382594 0034BB54  38 21 00 10 */	addi r1, r1, 0x10
/* 80382598 0034BB58  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0


.global lbl_80519838
lbl_80519838:
	.asciz "E02080811 adxt_StartAfs: parameter error"
	.asciz "E8101202 adxt_StartAfs: can't open "
	.asciz "E02080807 adxt_StartFnameRange: parameter error"
	.asciz "E02080809 adxt_StartMem2: parameter error"
	.asciz "E8101207: can't create sj (adxt_StartMem)"
	.asciz "E02080810 adxt_StartMemIdx: parameter error"
	.asciz "E8101207: can't create sj (adxt_StartMemIdx)"
	.balign 4
	.4byte 0