.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global GetAnmResult__Q34nw4r3g3d9ResAnmFogCFPQ34nw4r3g3d12FogAnmResultf
GetAnmResult__Q34nw4r3g3d9ResAnmFogCFPQ34nw4r3g3d12FogAnmResultf:
/* 803E0950 003A9F10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803E0954 003A9F14  7C 08 02 A6 */	mflr r0
/* 803E0958 003A9F18  90 01 00 54 */	stw r0, 0x54(r1)
/* 803E095C 003A9F1C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803E0960 003A9F20  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 803E0964 003A9F24  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 803E0968 003A9F28  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 803E096C 003A9F2C  FF C0 08 90 */	fmr f30, f1
/* 803E0970 003A9F30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803E0974 003A9F34  83 E3 00 00 */	lwz r31, 0(r3)
/* 803E0978 003A9F38  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803E097C 003A9F3C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803E0980 003A9F40  93 81 00 20 */	stw r28, 0x20(r1)
/* 803E0984 003A9F44  7C 9C 23 78 */	mr r28, r4
/* 803E0988 003A9F48  80 1F 00 04 */	lwz r0, 4(r31)
/* 803E098C 003A9F4C  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 803E0990 003A9F50  2C 00 00 00 */	cmpwi r0, 0
/* 803E0994 003A9F54  41 82 00 0C */	beq .L_803E09A0
/* 803E0998 003A9F58  7C 7F 02 14 */	add r3, r31, r0
/* 803E099C 003A9F5C  48 00 00 08 */	b .L_803E09A4
.L_803E09A0:
/* 803E09A0 003A9F60  38 60 00 00 */	li r3, 0
.L_803E09A4:
/* 803E09A4 003A9F64  C3 E2 BF B0 */	lfs f31, lbl_8066C330@sda21(r2)
/* 803E09A8 003A9F68  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 803E09AC 003A9F6C  4C 40 13 82 */	cror 2, 0, 2
/* 803E09B0 003A9F70  40 82 00 08 */	bne .L_803E09B8
/* 803E09B4 003A9F74  48 00 00 44 */	b .L_803E09F8
.L_803E09B8:
/* 803E09B8 003A9F78  A0 63 00 34 */	lhz r3, 0x34(r3)
/* 803E09BC 003A9F7C  3C 00 43 30 */	lis r0, 0x4330
/* 803E09C0 003A9F80  90 01 00 08 */	stw r0, 8(r1)
/* 803E09C4 003A9F84  C8 42 BF B8 */	lfd f2, lbl_8066C338@sda21(r2)
/* 803E09C8 003A9F88  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E09CC 003A9F8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E09D0 003A9F90  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E09D4 003A9F94  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803E09D8 003A9F98  4C 40 13 82 */	cror 2, 0, 2
/* 803E09DC 003A9F9C  40 82 00 18 */	bne .L_803E09F4
/* 803E09E0 003A9FA0  90 61 00 14 */	stw r3, 0x14(r1)
/* 803E09E4 003A9FA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 803E09E8 003A9FA8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803E09EC 003A9FAC  EF E0 10 28 */	fsubs f31, f0, f2
/* 803E09F0 003A9FB0  48 00 00 08 */	b .L_803E09F8
.L_803E09F4:
/* 803E09F4 003A9FB4  FF E0 F0 90 */	fmr f31, f30
.L_803E09F8:
/* 803E09F8 003A9FB8  54 A0 00 85 */	rlwinm. r0, r5, 0, 2, 2
/* 803E09FC 003A9FBC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 803E0A00 003A9FC0  54 BE 17 FE */	rlwinm r30, r5, 2, 0x1f, 0x1f
/* 803E0A04 003A9FC4  54 BD 0F FE */	srwi r29, r5, 0x1f
/* 803E0A08 003A9FC8  90 04 00 00 */	stw r0, 0(r4)
/* 803E0A0C 003A9FCC  41 82 00 0C */	beq .L_803E0A18
/* 803E0A10 003A9FD0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 803E0A14 003A9FD4  48 00 00 18 */	b .L_803E0A2C
.L_803E0A18:
/* 803E0A18 003A9FD8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 803E0A1C 003A9FDC  FC 20 F0 90 */	fmr f1, f30
/* 803E0A20 003A9FE0  7C 7F 02 14 */	add r3, r31, r0
/* 803E0A24 003A9FE4  38 63 00 1C */	addi r3, r3, 0x1c
/* 803E0A28 003A9FE8  4B FF D0 81 */	bl GetResKeyFrameAnmResult__Q34nw4r3g3d6detailFPCQ34nw4r3g3d18ResKeyFrameAnmDataf
.L_803E0A2C:
/* 803E0A2C 003A9FEC  2C 1E 00 00 */	cmpwi r30, 0
/* 803E0A30 003A9FF0  D0 3C 00 04 */	stfs f1, 4(r28)
/* 803E0A34 003A9FF4  41 82 00 0C */	beq .L_803E0A40
/* 803E0A38 003A9FF8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 803E0A3C 003A9FFC  48 00 00 18 */	b .L_803E0A54
.L_803E0A40:
/* 803E0A40 003AA000  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 803E0A44 003AA004  FC 20 F0 90 */	fmr f1, f30
/* 803E0A48 003AA008  7C 7F 02 14 */	add r3, r31, r0
/* 803E0A4C 003AA00C  38 63 00 20 */	addi r3, r3, 0x20
/* 803E0A50 003AA010  4B FF D0 59 */	bl GetResKeyFrameAnmResult__Q34nw4r3g3d6detailFPCQ34nw4r3g3d18ResKeyFrameAnmDataf
.L_803E0A54:
/* 803E0A54 003AA014  2C 1D 00 00 */	cmpwi r29, 0
/* 803E0A58 003AA018  D0 3C 00 08 */	stfs f1, 8(r28)
/* 803E0A5C 003AA01C  41 82 00 0C */	beq .L_803E0A68
/* 803E0A60 003AA020  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803E0A64 003AA024  48 00 00 18 */	b .L_803E0A7C
.L_803E0A68:
/* 803E0A68 003AA028  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 803E0A6C 003AA02C  FC 20 F8 90 */	fmr f1, f31
/* 803E0A70 003AA030  7C 7F 02 14 */	add r3, r31, r0
/* 803E0A74 003AA034  38 63 00 24 */	addi r3, r3, 0x24
/* 803E0A78 003AA038  4B FF D1 5D */	bl GetResColorAnmResult__Q34nw4r3g3d6detailFPCQ34nw4r3g3d21ResColorAnmFramesDataf
.L_803E0A7C:
/* 803E0A7C 003AA03C  90 7C 00 0C */	stw r3, 0xc(r28)
/* 803E0A80 003AA040  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 803E0A84 003AA044  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803E0A88 003AA048  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 803E0A8C 003AA04C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 803E0A90 003AA050  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803E0A94 003AA054  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803E0A98 003AA058  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803E0A9C 003AA05C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803E0AA0 003AA060  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803E0AA4 003AA064  7C 08 03 A6 */	mtlr r0
/* 803E0AA8 003AA068  38 21 00 50 */	addi r1, r1, 0x50
/* 803E0AAC 003AA06C  4E 80 00 20 */	blr 