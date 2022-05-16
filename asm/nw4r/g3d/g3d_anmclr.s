.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global lbl_803E2988
lbl_803E2988:
/* 803E2988 003ABF48  3C 80 00 01 */	lis r4, 0x00008000@ha
/* 803E298C 003ABF4C  38 E0 00 00 */	li r7, 0
/* 803E2990 003ABF50  38 A4 80 00 */	addi r5, r4, 0x00008000@l
/* 803E2994 003ABF54  38 C0 00 00 */	li r6, 0
/* 803E2998 003ABF58  48 00 00 14 */	b lbl_803E29AC
lbl_803E299C:
/* 803E299C 003ABF5C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803E29A0 003ABF60  38 E7 00 01 */	addi r7, r7, 1
/* 803E29A4 003ABF64  7C A4 33 2E */	sthx r5, r4, r6
/* 803E29A8 003ABF68  38 C6 00 02 */	addi r6, r6, 2
lbl_803E29AC:
/* 803E29AC 003ABF6C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803E29B0 003ABF70  7C 07 00 00 */	cmpw r7, r0
/* 803E29B4 003ABF74  41 80 FF E8 */	blt lbl_803E299C
/* 803E29B8 003ABF78  38 80 00 04 */	li r4, 4
/* 803E29BC 003ABF7C  38 A0 00 00 */	li r5, 0
/* 803E29C0 003ABF80  48 00 4A 68 */	b func_803E7428


.global lbl_803E29C4
lbl_803E29C4:
/* 803E29C4 003ABF84  38 60 00 00 */	li r3, 0
/* 803E29C8 003ABF88  4E 80 00 20 */	blr 


.global lbl_803E29CC
lbl_803E29CC:
/* 803E29CC 003ABF8C  38 60 00 00 */	li r3, 0
/* 803E29D0 003ABF90  4E 80 00 20 */	blr


.global lbl_803E29D4
lbl_803E29D4:
/* 803E29D4 003ABF94  4E 80 00 20 */	blr 


.global lbl_803E29D8
lbl_803E29D8:
/* 803E29D8 003ABF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E29DC 003ABF9C  7C 08 02 A6 */	mflr r0
/* 803E29E0 003ABFA0  2C 03 00 00 */	cmpwi r3, 0
/* 803E29E4 003ABFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E29E8 003ABFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E29EC 003ABFAC  7C 7F 1B 78 */	mr r31, r3
/* 803E29F0 003ABFB0  41 82 00 10 */	beq lbl_803E2A00
/* 803E29F4 003ABFB4  41 82 00 0C */	beq lbl_803E2A00
/* 803E29F8 003ABFB8  38 80 00 00 */	li r4, 0
/* 803E29FC 003ABFBC  48 00 48 99 */	bl func_803E7294
lbl_803E2A00:
/* 803E2A00 003ABFC0  7F E3 FB 78 */	mr r3, r31
/* 803E2A04 003ABFC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E2A08 003ABFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2A0C 003ABFCC  7C 08 03 A6 */	mtlr r0
/* 803E2A10 003ABFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2A14 003ABFD4  4E 80 00 20 */	blr 

.global func_803E2A18
func_803E2A18:
/* 803E2A18 003ABFD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E2A1C 003ABFDC  7C 08 02 A6 */	mflr r0
/* 803E2A20 003ABFE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803E2A24 003ABFE4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803E2A28 003ABFE8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 803E2A2C 003ABFEC  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2A30 003ABFF0  4B ED 77 1D */	bl _savegpr_25
/* 803E2A34 003ABFF4  81 05 00 00 */	lwz r8, 0(r5)
/* 803E2A38 003ABFF8  7C 7D 1B 78 */	mr r29, r3
/* 803E2A3C 003ABFFC  7C 99 23 78 */	mr r25, r4
/* 803E2A40 003AC000  7C BE 2B 78 */	mr r30, r5
/* 803E2A44 003AC004  2C 08 00 00 */	cmpwi r8, 0
/* 803E2A48 003AC008  7C FB 3B 78 */	mr r27, r7
/* 803E2A4C 003AC00C  41 82 00 10 */	beq lbl_803E2A5C
/* 803E2A50 003AC010  80 06 00 00 */	lwz r0, 0(r6)
/* 803E2A54 003AC014  2C 00 00 00 */	cmpwi r0, 0
/* 803E2A58 003AC018  40 82 00 0C */	bne lbl_803E2A64
lbl_803E2A5C:
/* 803E2A5C 003AC01C  38 60 00 00 */	li r3, 0
/* 803E2A60 003AC020  48 00 01 88 */	b lbl_803E2BE8
lbl_803E2A64:
/* 803E2A64 003AC024  A3 E8 00 32 */	lhz r31, 0x32(r8)
/* 803E2A68 003AC028  7C C3 33 78 */	mr r3, r6
/* 803E2A6C 003AC02C  4B FF 71 95 */	bl func_803D9C00
/* 803E2A70 003AC030  7C 1B 00 D0 */	neg r0, r27
/* 803E2A74 003AC034  7C 7C 1B 78 */	mr r28, r3
/* 803E2A78 003AC038  7C 04 DB 78 */	or r4, r0, r27
/* 803E2A7C 003AC03C  2C 19 00 00 */	cmpwi r25, 0
/* 803E2A80 003AC040  7C 84 FE 70 */	srawi r4, r4, 0x1f
/* 803E2A84 003AC044  54 60 08 3C */	slwi r0, r3, 1
/* 803E2A88 003AC048  7F E3 20 38 */	and r3, r31, r4
/* 803E2A8C 003AC04C  1F 43 00 44 */	mulli r26, r3, 0x44
/* 803E2A90 003AC050  7C 7A 02 14 */	add r3, r26, r0
/* 803E2A94 003AC054  38 83 00 34 */	addi r4, r3, 0x34
/* 803E2A98 003AC058  41 82 00 08 */	beq lbl_803E2AA0
/* 803E2A9C 003AC05C  90 99 00 00 */	stw r4, 0(r25)
lbl_803E2AA0:
/* 803E2AA0 003AC060  2C 1D 00 00 */	cmpwi r29, 0
/* 803E2AA4 003AC064  40 82 00 0C */	bne lbl_803E2AB0
/* 803E2AA8 003AC068  38 60 00 00 */	li r3, 0
/* 803E2AAC 003AC06C  48 00 01 3C */	b lbl_803E2BE8
lbl_803E2AB0:
/* 803E2AB0 003AC070  7F A3 EB 78 */	mr r3, r29
/* 803E2AB4 003AC074  4B F6 6F DD */	bl func_80349A90
/* 803E2AB8 003AC078  2C 03 00 00 */	cmpwi r3, 0
/* 803E2ABC 003AC07C  7C 7F 1B 78 */	mr r31, r3
/* 803E2AC0 003AC080  40 82 00 0C */	bne lbl_803E2ACC
/* 803E2AC4 003AC084  38 60 00 00 */	li r3, 0
/* 803E2AC8 003AC088  48 00 01 20 */	b lbl_803E2BE8
lbl_803E2ACC:
/* 803E2ACC 003AC08C  2C 1B 00 00 */	cmpwi r27, 0
/* 803E2AD0 003AC090  41 82 00 0C */	beq lbl_803E2ADC
/* 803E2AD4 003AC094  3B 63 00 34 */	addi r27, r3, 0x34
/* 803E2AD8 003AC098  48 00 00 08 */	b lbl_803E2AE0
lbl_803E2ADC:
/* 803E2ADC 003AC09C  3B 60 00 00 */	li r27, 0
lbl_803E2AE0:
/* 803E2AE0 003AC0A0  2C 03 00 00 */	cmpwi r3, 0
/* 803E2AE4 003AC0A4  7C 83 D2 14 */	add r4, r3, r26
/* 803E2AE8 003AC0A8  38 A4 00 34 */	addi r5, r4, 0x34
/* 803E2AEC 003AC0AC  41 82 00 F8 */	beq lbl_803E2BE4
/* 803E2AF0 003AC0B0  38 00 00 00 */	li r0, 0
/* 803E2AF4 003AC0B4  3C 80 80 57 */	lis r4, lbl_8056CB38@ha
/* 803E2AF8 003AC0B8  90 03 00 04 */	stw r0, 4(r3)
/* 803E2AFC 003AC0BC  38 84 CB 38 */	addi r4, r4, lbl_8056CB38@l
/* 803E2B00 003AC0C0  83 DE 00 00 */	lwz r30, 0(r30)
/* 803E2B04 003AC0C4  93 A3 00 08 */	stw r29, 8(r3)
/* 803E2B08 003AC0C8  90 03 00 0C */	stw r0, 0xc(r3)
/* 803E2B0C 003AC0CC  90 83 00 00 */	stw r4, 0(r3)
/* 803E2B10 003AC0D0  93 83 00 10 */	stw r28, 0x10(r3)
/* 803E2B14 003AC0D4  90 A3 00 14 */	stw r5, 0x14(r3)
/* 803E2B18 003AC0D8  7F E3 FB 78 */	mr r3, r31
/* 803E2B1C 003AC0DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 803E2B20 003AC0E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 803E2B24 003AC0E4  7D 89 03 A6 */	mtctr r12
/* 803E2B28 003AC0E8  4E 80 04 21 */	bctrl 
/* 803E2B2C 003AC0EC  A0 9E 00 30 */	lhz r4, 0x30(r30)
/* 803E2B30 003AC0F0  3C 00 43 30 */	lis r0, 0x4330
/* 803E2B34 003AC0F4  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 803E2B38 003AC0F8  3C 60 80 57 */	lis r3, lbl_8056CAF0@ha
/* 803E2B3C 003AC0FC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803E2B40 003AC100  C0 22 BF D8 */	lfs f1, lbl_8066C358@sda21(r2)
/* 803E2B44 003AC104  90 81 00 0C */	stw r4, 0xc(r1)
/* 803E2B48 003AC108  54 A5 10 3A */	slwi r5, r5, 2
/* 803E2B4C 003AC10C  C0 02 BF DC */	lfs f0, lbl_8066C35C@sda21(r2)
/* 803E2B50 003AC110  38 8D 9C 08 */	addi r4, r13, lbl_80665D88@sda21
/* 803E2B54 003AC114  90 01 00 08 */	stw r0, 8(r1)
/* 803E2B58 003AC118  38 63 CA F0 */	addi r3, r3, lbl_8056CAF0@l
/* 803E2B5C 003AC11C  C8 62 BF E0 */	lfd f3, lbl_8066C360@sda21(r2)
/* 803E2B60 003AC120  2C 1B 00 00 */	cmpwi r27, 0
/* 803E2B64 003AC124  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 803E2B68 003AC128  C8 41 00 08 */	lfd f2, 8(r1)
/* 803E2B6C 003AC12C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803E2B70 003AC130  EC 02 18 28 */	fsubs f0, f2, f3
/* 803E2B74 003AC134  7C 04 28 2E */	lwzx r0, r4, r5
/* 803E2B78 003AC138  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 803E2B7C 003AC13C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 803E2B80 003AC140  90 1F 00 28 */	stw r0, 0x28(r31)
/* 803E2B84 003AC144  90 7F 00 00 */	stw r3, 0(r31)
/* 803E2B88 003AC148  93 DF 00 2C */	stw r30, 0x2c(r31)
/* 803E2B8C 003AC14C  93 7F 00 30 */	stw r27, 0x30(r31)
/* 803E2B90 003AC150  41 82 00 54 */	beq lbl_803E2BE4
/* 803E2B94 003AC154  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 803E2B98 003AC158  3B 80 00 00 */	li r28, 0
/* 803E2B9C 003AC15C  3B 60 00 00 */	li r27, 0
/* 803E2BA0 003AC160  48 00 00 38 */	b lbl_803E2BD8
lbl_803E2BA4:
/* 803E2BA4 003AC164  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803E2BA8 003AC168  7C 63 DA 2E */	lhzx r3, r3, r27
/* 803E2BAC 003AC16C  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 803E2BB0 003AC170  40 82 00 20 */	bne lbl_803E2BD0
/* 803E2BB4 003AC174  54 65 04 BE */	clrlwi r5, r3, 0x12
/* 803E2BB8 003AC178  FC 20 F8 90 */	fmr f1, f31
/* 803E2BBC 003AC17C  1C 05 00 44 */	mulli r0, r5, 0x44
/* 803E2BC0 003AC180  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 803E2BC4 003AC184  38 7F 00 2C */	addi r3, r31, 0x2c
/* 803E2BC8 003AC188  7C 84 02 14 */	add r4, r4, r0
/* 803E2BCC 003AC18C  4B FF B3 21 */	bl func_803DDEEC
lbl_803E2BD0:
/* 803E2BD0 003AC190  3B 7B 00 02 */	addi r27, r27, 2
/* 803E2BD4 003AC194  3B 9C 00 01 */	addi r28, r28, 1
lbl_803E2BD8:
/* 803E2BD8 003AC198  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 803E2BDC 003AC19C  7C 1C 00 40 */	cmplw r28, r0
/* 803E2BE0 003AC1A0  41 80 FF C4 */	blt lbl_803E2BA4
lbl_803E2BE4:
/* 803E2BE4 003AC1A4  7F E3 FB 78 */	mr r3, r31
lbl_803E2BE8:
/* 803E2BE8 003AC1A8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 803E2BEC 003AC1AC  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2BF0 003AC1B0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803E2BF4 003AC1B4  4B ED 75 A5 */	bl _restgpr_25
/* 803E2BF8 003AC1B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803E2BFC 003AC1BC  7C 08 03 A6 */	mtlr r0
/* 803E2C00 003AC1C0  38 21 00 40 */	addi r1, r1, 0x40
/* 803E2C04 003AC1C4  4E 80 00 20 */	blr 
.global lbl_803E2C08
lbl_803E2C08:
/* 803E2C08 003AC1C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2C0C 003AC1CC  7C 08 02 A6 */	mflr r0
/* 803E2C10 003AC1D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2C14 003AC1D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803E2C18 003AC1D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 803E2C1C 003AC1DC  FC 60 08 90 */	fmr f3, f1
/* 803E2C20 003AC1E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E2C24 003AC1E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E2C28 003AC1E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803E2C2C 003AC1EC  7C 7D 1B 78 */	mr r29, r3
/* 803E2C30 003AC1F0  81 83 00 28 */	lwz r12, 0x28(r3)
/* 803E2C34 003AC1F4  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 803E2C38 003AC1F8  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 803E2C3C 003AC1FC  7D 89 03 A6 */	mtctr r12
/* 803E2C40 003AC200  4E 80 04 21 */	bctrl 
/* 803E2C44 003AC204  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 803E2C48 003AC208  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 803E2C4C 003AC20C  2C 00 00 00 */	cmpwi r0, 0
/* 803E2C50 003AC210  41 82 00 54 */	beq lbl_803E2CA4
/* 803E2C54 003AC214  FF E0 08 18 */	frsp f31, f1
/* 803E2C58 003AC218  3B E0 00 00 */	li r31, 0
/* 803E2C5C 003AC21C  3B C0 00 00 */	li r30, 0
/* 803E2C60 003AC220  48 00 00 38 */	b lbl_803E2C98
lbl_803E2C64:
/* 803E2C64 003AC224  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 803E2C68 003AC228  7C 63 F2 2E */	lhzx r3, r3, r30
/* 803E2C6C 003AC22C  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 803E2C70 003AC230  40 82 00 20 */	bne lbl_803E2C90
/* 803E2C74 003AC234  54 65 04 BE */	clrlwi r5, r3, 0x12
/* 803E2C78 003AC238  FC 20 F8 90 */	fmr f1, f31
/* 803E2C7C 003AC23C  1C 05 00 44 */	mulli r0, r5, 0x44
/* 803E2C80 003AC240  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 803E2C84 003AC244  38 7D 00 2C */	addi r3, r29, 0x2c
/* 803E2C88 003AC248  7C 84 02 14 */	add r4, r4, r0
/* 803E2C8C 003AC24C  4B FF B2 61 */	bl func_803DDEEC
lbl_803E2C90:
/* 803E2C90 003AC250  3B DE 00 02 */	addi r30, r30, 2
/* 803E2C94 003AC254  3B FF 00 01 */	addi r31, r31, 1
lbl_803E2C98:
/* 803E2C98 003AC258  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 803E2C9C 003AC25C  7C 1F 00 40 */	cmplw r31, r0
/* 803E2CA0 003AC260  41 80 FF C4 */	blt lbl_803E2C64
lbl_803E2CA4:
/* 803E2CA4 003AC264  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 803E2CA8 003AC268  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E2CAC 003AC26C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803E2CB0 003AC270  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E2CB4 003AC274  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E2CB8 003AC278  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803E2CBC 003AC27C  7C 08 03 A6 */	mtlr r0
/* 803E2CC0 003AC280  38 21 00 30 */	addi r1, r1, 0x30
/* 803E2CC4 003AC284  4E 80 00 20 */	blr 
.global lbl_803E2CC8
lbl_803E2CC8:
/* 803E2CC8 003AC288  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 803E2CCC 003AC28C  4E 80 00 20 */	blr 
.global lbl_803E2CD0
lbl_803E2CD0:
/* 803E2CD0 003AC290  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2CD4 003AC294  7C 08 02 A6 */	mflr r0
/* 803E2CD8 003AC298  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2CDC 003AC29C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803E2CE0 003AC2A0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 803E2CE4 003AC2A4  C0 02 BF D8 */	lfs f0, lbl_8066C358@sda21(r2)
/* 803E2CE8 003AC2A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E2CEC 003AC2AC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803E2CF0 003AC2B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E2CF4 003AC2B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803E2CF8 003AC2B8  7C 7D 1B 78 */	mr r29, r3
/* 803E2CFC 003AC2BC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 803E2D00 003AC2C0  40 82 00 60 */	bne lbl_803E2D60
/* 803E2D04 003AC2C4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 803E2D08 003AC2C8  2C 00 00 00 */	cmpwi r0, 0
/* 803E2D0C 003AC2CC  41 82 00 54 */	beq lbl_803E2D60
/* 803E2D10 003AC2D0  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 803E2D14 003AC2D4  3B E0 00 00 */	li r31, 0
/* 803E2D18 003AC2D8  3B C0 00 00 */	li r30, 0
/* 803E2D1C 003AC2DC  48 00 00 38 */	b lbl_803E2D54
lbl_803E2D20:
/* 803E2D20 003AC2E0  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 803E2D24 003AC2E4  7C 63 F2 2E */	lhzx r3, r3, r30
/* 803E2D28 003AC2E8  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 803E2D2C 003AC2EC  40 82 00 20 */	bne lbl_803E2D4C
/* 803E2D30 003AC2F0  54 65 04 BE */	clrlwi r5, r3, 0x12
/* 803E2D34 003AC2F4  FC 20 F8 90 */	fmr f1, f31
/* 803E2D38 003AC2F8  1C 05 00 44 */	mulli r0, r5, 0x44
/* 803E2D3C 003AC2FC  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 803E2D40 003AC300  38 7D 00 2C */	addi r3, r29, 0x2c
/* 803E2D44 003AC304  7C 84 02 14 */	add r4, r4, r0
/* 803E2D48 003AC308  4B FF B1 A5 */	bl func_803DDEEC
lbl_803E2D4C:
/* 803E2D4C 003AC30C  3B DE 00 02 */	addi r30, r30, 2
/* 803E2D50 003AC310  3B FF 00 01 */	addi r31, r31, 1
lbl_803E2D54:
/* 803E2D54 003AC314  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 803E2D58 003AC318  7C 1F 00 40 */	cmplw r31, r0
/* 803E2D5C 003AC31C  41 80 FF C4 */	blt lbl_803E2D20
lbl_803E2D60:
/* 803E2D60 003AC320  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 803E2D64 003AC324  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E2D68 003AC328  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803E2D6C 003AC32C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E2D70 003AC330  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E2D74 003AC334  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803E2D78 003AC338  7C 08 03 A6 */	mtlr r0
/* 803E2D7C 003AC33C  38 21 00 30 */	addi r1, r1, 0x30
/* 803E2D80 003AC340  4E 80 00 20 */	blr 
.global lbl_803E2D84
lbl_803E2D84:
/* 803E2D84 003AC344  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 803E2D88 003AC348  4E 80 00 20 */	blr 
.global lbl_803E2D8C
lbl_803E2D8C:
/* 803E2D8C 003AC34C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2D90 003AC350  7C 08 02 A6 */	mflr r0
/* 803E2D94 003AC354  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2D98 003AC358  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803E2D9C 003AC35C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 803E2DA0 003AC360  C0 02 BF D8 */	lfs f0, lbl_8066C358@sda21(r2)
/* 803E2DA4 003AC364  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E2DA8 003AC368  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E2DAC 003AC36C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803E2DB0 003AC370  7C 7D 1B 78 */	mr r29, r3
/* 803E2DB4 003AC374  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 803E2DB8 003AC378  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803E2DBC 003AC37C  41 82 00 8C */	beq lbl_803E2E48
/* 803E2DC0 003AC380  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 803E2DC4 003AC384  C0 2D 9C 10 */	lfs f1, lbl_80665D90@sda21(r13)
/* 803E2DC8 003AC388  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 803E2DCC 003AC38C  EC 62 00 72 */	fmuls f3, f2, f1
/* 803E2DD0 003AC390  81 83 00 28 */	lwz r12, 0x28(r3)
/* 803E2DD4 003AC394  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 803E2DD8 003AC398  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 803E2DDC 003AC39C  EC 60 18 2A */	fadds f3, f0, f3
/* 803E2DE0 003AC3A0  7D 89 03 A6 */	mtctr r12
/* 803E2DE4 003AC3A4  4E 80 04 21 */	bctrl 
/* 803E2DE8 003AC3A8  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 803E2DEC 003AC3AC  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 803E2DF0 003AC3B0  2C 00 00 00 */	cmpwi r0, 0
/* 803E2DF4 003AC3B4  41 82 00 54 */	beq lbl_803E2E48
/* 803E2DF8 003AC3B8  FF E0 08 18 */	frsp f31, f1
/* 803E2DFC 003AC3BC  3B E0 00 00 */	li r31, 0
/* 803E2E00 003AC3C0  3B C0 00 00 */	li r30, 0
/* 803E2E04 003AC3C4  48 00 00 38 */	b lbl_803E2E3C
lbl_803E2E08:
/* 803E2E08 003AC3C8  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 803E2E0C 003AC3CC  7C 63 F2 2E */	lhzx r3, r3, r30
/* 803E2E10 003AC3D0  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 803E2E14 003AC3D4  40 82 00 20 */	bne lbl_803E2E34
/* 803E2E18 003AC3D8  54 65 04 BE */	clrlwi r5, r3, 0x12
/* 803E2E1C 003AC3DC  FC 20 F8 90 */	fmr f1, f31
/* 803E2E20 003AC3E0  1C 05 00 44 */	mulli r0, r5, 0x44
/* 803E2E24 003AC3E4  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 803E2E28 003AC3E8  38 7D 00 2C */	addi r3, r29, 0x2c
/* 803E2E2C 003AC3EC  7C 84 02 14 */	add r4, r4, r0
/* 803E2E30 003AC3F0  4B FF B0 BD */	bl func_803DDEEC
lbl_803E2E34:
/* 803E2E34 003AC3F4  3B DE 00 02 */	addi r30, r30, 2
/* 803E2E38 003AC3F8  3B FF 00 01 */	addi r31, r31, 1
lbl_803E2E3C:
/* 803E2E3C 003AC3FC  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 803E2E40 003AC400  7C 1F 00 40 */	cmplw r31, r0
/* 803E2E44 003AC404  41 80 FF C4 */	blt lbl_803E2E08
lbl_803E2E48:
/* 803E2E48 003AC408  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 803E2E4C 003AC40C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E2E50 003AC410  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803E2E54 003AC414  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E2E58 003AC418  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E2E5C 003AC41C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803E2E60 003AC420  7C 08 03 A6 */	mtlr r0
/* 803E2E64 003AC424  38 21 00 30 */	addi r1, r1, 0x30
/* 803E2E68 003AC428  4E 80 00 20 */	blr 
.global lbl_803E2E6C
lbl_803E2E6C:
/* 803E2E6C 003AC42C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E2E70 003AC430  7C 08 02 A6 */	mflr r0
/* 803E2E74 003AC434  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E2E78 003AC438  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2E7C 003AC43C  4B ED 72 D9 */	bl _savegpr_27
/* 803E2E80 003AC440  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 803E2E84 003AC444  7C 7B 1B 78 */	mr r27, r3
/* 803E2E88 003AC448  7C 9C 23 78 */	mr r28, r4
/* 803E2E8C 003AC44C  3B C0 00 00 */	li r30, 0
/* 803E2E90 003AC450  A3 E5 00 32 */	lhz r31, 0x32(r5)
/* 803E2E94 003AC454  3B A0 00 00 */	li r29, 0
/* 803E2E98 003AC458  2C 1F 00 00 */	cmpwi r31, 0
/* 803E2E9C 003AC45C  40 81 00 9C */	ble lbl_803E2F38
/* 803E2EA0 003AC460  48 00 00 8C */	b lbl_803E2F2C
lbl_803E2EA4:
/* 803E2EA4 003AC464  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 803E2EA8 003AC468  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803E2EAC 003AC46C  2C 00 00 00 */	cmpwi r0, 0
/* 803E2EB0 003AC470  41 82 00 0C */	beq lbl_803E2EBC
/* 803E2EB4 003AC474  7C 03 02 14 */	add r0, r3, r0
/* 803E2EB8 003AC478  48 00 00 08 */	b lbl_803E2EC0
lbl_803E2EBC:
/* 803E2EBC 003AC47C  38 00 00 00 */	li r0, 0
lbl_803E2EC0:
/* 803E2EC0 003AC480  2C 00 00 00 */	cmpwi r0, 0
/* 803E2EC4 003AC484  41 82 00 28 */	beq lbl_803E2EEC
/* 803E2EC8 003AC488  57 A3 23 36 */	rlwinm r3, r29, 4, 0xc, 0x1b
/* 803E2ECC 003AC48C  7C 60 1A 14 */	add r3, r0, r3
/* 803E2ED0 003AC490  80 63 00 24 */	lwz r3, 0x24(r3)
/* 803E2ED4 003AC494  2C 03 00 00 */	cmpwi r3, 0
/* 803E2ED8 003AC498  41 82 00 0C */	beq lbl_803E2EE4
/* 803E2EDC 003AC49C  7C A0 1A 14 */	add r5, r0, r3
/* 803E2EE0 003AC4A0  48 00 00 10 */	b lbl_803E2EF0
lbl_803E2EE4:
/* 803E2EE4 003AC4A4  38 A0 00 00 */	li r5, 0
/* 803E2EE8 003AC4A8  48 00 00 08 */	b lbl_803E2EF0
lbl_803E2EEC:
/* 803E2EEC 003AC4AC  38 A0 00 00 */	li r5, 0
lbl_803E2EF0:
/* 803E2EF0 003AC4B0  80 05 00 00 */	lwz r0, 0(r5)
/* 803E2EF4 003AC4B4  7F 83 E3 78 */	mr r3, r28
/* 803E2EF8 003AC4B8  38 81 00 08 */	addi r4, r1, 8
/* 803E2EFC 003AC4BC  7C A0 2A 14 */	add r5, r0, r5
/* 803E2F00 003AC4C0  38 05 FF FC */	addi r0, r5, -4
/* 803E2F04 003AC4C4  90 01 00 08 */	stw r0, 8(r1)
/* 803E2F08 003AC4C8  4B FF 6C 01 */	bl func_803D9B08
/* 803E2F0C 003AC4CC  2C 03 00 00 */	cmpwi r3, 0
/* 803E2F10 003AC4D0  41 82 00 18 */	beq lbl_803E2F28
/* 803E2F14 003AC4D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803E2F18 003AC4D8  3B C0 00 01 */	li r30, 1
/* 803E2F1C 003AC4DC  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 803E2F20 003AC4E0  54 00 08 3C */	slwi r0, r0, 1
/* 803E2F24 003AC4E4  7F A3 03 2E */	sthx r29, r3, r0
lbl_803E2F28:
/* 803E2F28 003AC4E8  3B BD 00 01 */	addi r29, r29, 1
lbl_803E2F2C:
/* 803E2F2C 003AC4EC  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803E2F30 003AC4F0  7C 00 F8 00 */	cmpw r0, r31
/* 803E2F34 003AC4F4  41 80 FF 70 */	blt lbl_803E2EA4
lbl_803E2F38:
/* 803E2F38 003AC4F8  7F 63 DB 78 */	mr r3, r27
/* 803E2F3C 003AC4FC  38 80 00 04 */	li r4, 4
/* 803E2F40 003AC500  38 A0 00 01 */	li r5, 1
/* 803E2F44 003AC504  48 00 44 E5 */	bl func_803E7428
/* 803E2F48 003AC508  39 61 00 30 */	addi r11, r1, 0x30
/* 803E2F4C 003AC50C  7F C3 F3 78 */	mr r3, r30
/* 803E2F50 003AC510  4B ED 72 51 */	bl _restgpr_27
/* 803E2F54 003AC514  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E2F58 003AC518  7C 08 03 A6 */	mtlr r0
/* 803E2F5C 003AC51C  38 21 00 30 */	addi r1, r1, 0x30
/* 803E2F60 003AC520  4E 80 00 20 */	blr 
.global lbl_803E2F64
lbl_803E2F64:
/* 803E2F64 003AC524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2F68 003AC528  7C 08 02 A6 */	mflr r0
/* 803E2F6C 003AC52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2F70 003AC530  54 A0 08 3C */	slwi r0, r5, 1
/* 803E2F74 003AC534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E2F78 003AC538  7C 9F 23 78 */	mr r31, r4
/* 803E2F7C 003AC53C  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 803E2F80 003AC540  7C A6 02 2E */	lhzx r5, r6, r0
/* 803E2F84 003AC544  54 A0 04 23 */	rlwinm. r0, r5, 0, 0x10, 0x11
/* 803E2F88 003AC548  41 82 00 18 */	beq lbl_803E2FA0
/* 803E2F8C 003AC54C  38 00 00 00 */	li r0, 0
/* 803E2F90 003AC550  7F E3 FB 78 */	mr r3, r31
/* 803E2F94 003AC554  98 04 00 00 */	stb r0, 0(r4)
/* 803E2F98 003AC558  98 04 00 01 */	stb r0, 1(r4)
/* 803E2F9C 003AC55C  48 00 00 2C */	b lbl_803E2FC8
lbl_803E2FA0:
/* 803E2FA0 003AC560  80 C3 00 30 */	lwz r6, 0x30(r3)
/* 803E2FA4 003AC564  2C 06 00 00 */	cmpwi r6, 0
/* 803E2FA8 003AC568  41 82 00 10 */	beq lbl_803E2FB8
/* 803E2FAC 003AC56C  1C 05 00 44 */	mulli r0, r5, 0x44
/* 803E2FB0 003AC570  7C 66 02 14 */	add r3, r6, r0
/* 803E2FB4 003AC574  48 00 00 14 */	b lbl_803E2FC8
lbl_803E2FB8:
/* 803E2FB8 003AC578  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 803E2FBC 003AC57C  38 63 00 2C */	addi r3, r3, 0x2c
/* 803E2FC0 003AC580  4B FF AF 2D */	bl func_803DDEEC
/* 803E2FC4 003AC584  7F E3 FB 78 */	mr r3, r31
lbl_803E2FC8:
/* 803E2FC8 003AC588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2FCC 003AC58C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E2FD0 003AC590  7C 08 03 A6 */	mtlr r0
/* 803E2FD4 003AC594  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2FD8 003AC598  4E 80 00 20 */	blr 
.global lbl_803E2FDC
lbl_803E2FDC:
/* 803E2FDC 003AC59C  3C A0 00 01 */	lis r5, 0x00010002@ha
/* 803E2FE0 003AC5A0  38 05 00 02 */	addi r0, r5, 0x00010002@l
/* 803E2FE4 003AC5A4  7C 04 00 00 */	cmpw r4, r0
/* 803E2FE8 003AC5A8  41 82 00 40 */	beq lbl_803E3028
/* 803E2FEC 003AC5AC  40 80 00 10 */	bge lbl_803E2FFC
/* 803E2FF0 003AC5B0  2C 04 00 08 */	cmpwi r4, 8
/* 803E2FF4 003AC5B4  41 82 00 18 */	beq lbl_803E300C
/* 803E2FF8 003AC5B8  4E 80 00 20 */	blr

.global lbl_803E2FFC
lbl_803E2FFC:
/* 803E2FFC 003AC5BC  38 05 00 04 */	addi r0, r5, 4
/* 803E3000 003AC5C0  7C 04 00 00 */	cmpw r4, r0
/* 803E3004 003AC5C4  4C 80 00 20 */	bgelr 
/* 803E3008 003AC5C8  48 00 00 14 */	b lbl_803E301C
lbl_803E300C:
/* 803E300C 003AC5CC  81 83 00 00 */	lwz r12, 0(r3)
/* 803E3010 003AC5D0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 803E3014 003AC5D4  7D 89 03 A6 */	mtctr r12
/* 803E3018 003AC5D8  4E 80 04 20 */	bctr 
lbl_803E301C:
/* 803E301C 003AC5DC  38 00 00 00 */	li r0, 0
/* 803E3020 003AC5E0  90 03 00 04 */	stw r0, 4(r3)
/* 803E3024 003AC5E4  4E 80 00 20 */	blr

.global lbl_803E3028
lbl_803E3028:
/* 803E3028 003AC5E8  90 C3 00 04 */	stw r6, 4(r3)
/* 803E302C 003AC5EC  4E 80 00 20 */	blr 

.global func_803E3030
func_803E3030:
/* 803E3030 003AC5F0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803E3034 003AC5F4  7C 08 02 A6 */	mflr r0
/* 803E3038 003AC5F8  90 01 00 74 */	stw r0, 0x74(r1)
/* 803E303C 003AC5FC  39 61 00 70 */	addi r11, r1, 0x70
/* 803E3040 003AC600  4B ED 71 01 */	bl _savegpr_22
/* 803E3044 003AC604  7C BF 2B 78 */	mr r31, r5
/* 803E3048 003AC608  8B 45 00 00 */	lbz r26, 0(r5)
/* 803E304C 003AC60C  7C 76 1B 78 */	mr r22, r3
/* 803E3050 003AC610  7C 9E 23 78 */	mr r30, r4
/* 803E3054 003AC614  7F FB FB 78 */	mr r27, r31
/* 803E3058 003AC618  3B A1 00 24 */	addi r29, r1, 0x24
/* 803E305C 003AC61C  3B 80 00 00 */	li r28, 0
/* 803E3060 003AC620  48 00 01 3C */	b lbl_803E319C
lbl_803E3064:
/* 803E3064 003AC624  57 40 07 FF */	clrlwi. r0, r26, 0x1f
/* 803E3068 003AC628  41 82 01 28 */	beq lbl_803E3190
/* 803E306C 003AC62C  80 1B 00 04 */	lwz r0, 4(r27)
/* 803E3070 003AC630  7E C3 B3 78 */	mr r3, r22
/* 803E3074 003AC634  7F 84 E3 78 */	mr r4, r28
/* 803E3078 003AC638  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803E307C 003AC63C  4B FF 89 19 */	bl func_803DB994
/* 803E3080 003AC640  93 A1 00 08 */	stw r29, 8(r1)
/* 803E3084 003AC644  7C 79 1B 78 */	mr r25, r3
/* 803E3088 003AC648  38 81 00 38 */	addi r4, r1, 0x38
/* 803E308C 003AC64C  38 A1 00 34 */	addi r5, r1, 0x34
/* 803E3090 003AC650  38 C1 00 30 */	addi r6, r1, 0x30
/* 803E3094 003AC654  38 E1 00 2C */	addi r7, r1, 0x2c
/* 803E3098 003AC658  39 01 00 28 */	addi r8, r1, 0x28
/* 803E309C 003AC65C  39 21 00 12 */	addi r9, r1, 0x12
/* 803E30A0 003AC660  39 41 00 11 */	addi r10, r1, 0x11
/* 803E30A4 003AC664  4B F3 96 7D */	bl func_8031C720
/* 803E30A8 003AC668  7F 23 CB 78 */	mr r3, r25
/* 803E30AC 003AC66C  4B F3 96 45 */	bl func_8031C6F0
/* 803E30B0 003AC670  7C 78 1B 78 */	mr r24, r3
/* 803E30B4 003AC674  7F 23 CB 78 */	mr r3, r25
/* 803E30B8 003AC678  4B F3 96 49 */	bl func_8031C700
/* 803E30BC 003AC67C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 803E30C0 003AC680  7C 77 1B 78 */	mr r23, r3
/* 803E30C4 003AC684  80 04 00 18 */	lwz r0, 0x18(r4)
/* 803E30C8 003AC688  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803E30CC 003AC68C  41 82 00 54 */	beq lbl_803E3120
/* 803E30D0 003AC690  38 61 00 3C */	addi r3, r1, 0x3c
/* 803E30D4 003AC694  38 81 00 20 */	addi r4, r1, 0x20
/* 803E30D8 003AC698  38 A1 00 16 */	addi r5, r1, 0x16
/* 803E30DC 003AC69C  38 C1 00 14 */	addi r6, r1, 0x14
/* 803E30E0 003AC6A0  38 E1 00 18 */	addi r7, r1, 0x18
/* 803E30E4 003AC6A4  39 01 00 30 */	addi r8, r1, 0x30
/* 803E30E8 003AC6A8  39 21 00 2C */	addi r9, r1, 0x2c
/* 803E30EC 003AC6AC  39 41 00 10 */	addi r10, r1, 0x10
/* 803E30F0 003AC6B0  4B FF A5 A9 */	bl func_803DD698
/* 803E30F4 003AC6B4  93 81 00 08 */	stw r28, 8(r1)
/* 803E30F8 003AC6B8  7F 23 CB 78 */	mr r3, r25
/* 803E30FC 003AC6BC  7F 08 C3 78 */	mr r8, r24
/* 803E3100 003AC6C0  7E E9 BB 78 */	mr r9, r23
/* 803E3104 003AC6C4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 803E3108 003AC6C8  A0 A1 00 16 */	lhz r5, 0x16(r1)
/* 803E310C 003AC6CC  A0 C1 00 14 */	lhz r6, 0x14(r1)
/* 803E3110 003AC6D0  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 803E3114 003AC6D4  89 41 00 10 */	lbz r10, 0x10(r1)
/* 803E3118 003AC6D8  4B F3 93 A9 */	bl func_8031C4C0
/* 803E311C 003AC6DC  48 00 00 4C */	b lbl_803E3168
lbl_803E3120:
/* 803E3120 003AC6E0  38 61 00 3C */	addi r3, r1, 0x3c
/* 803E3124 003AC6E4  38 81 00 20 */	addi r4, r1, 0x20
/* 803E3128 003AC6E8  38 A1 00 16 */	addi r5, r1, 0x16
/* 803E312C 003AC6EC  38 C1 00 14 */	addi r6, r1, 0x14
/* 803E3130 003AC6F0  38 E1 00 1C */	addi r7, r1, 0x1c
/* 803E3134 003AC6F4  39 01 00 30 */	addi r8, r1, 0x30
/* 803E3138 003AC6F8  39 21 00 2C */	addi r9, r1, 0x2c
/* 803E313C 003AC6FC  39 41 00 10 */	addi r10, r1, 0x10
/* 803E3140 003AC700  4B FF A4 9D */	bl func_803DD5DC
/* 803E3144 003AC704  80 81 00 20 */	lwz r4, 0x20(r1)
/* 803E3148 003AC708  7F 23 CB 78 */	mr r3, r25
/* 803E314C 003AC70C  A0 A1 00 16 */	lhz r5, 0x16(r1)
/* 803E3150 003AC710  7F 08 C3 78 */	mr r8, r24
/* 803E3154 003AC714  A0 C1 00 14 */	lhz r6, 0x14(r1)
/* 803E3158 003AC718  7E E9 BB 78 */	mr r9, r23
/* 803E315C 003AC71C  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 803E3160 003AC720  89 41 00 10 */	lbz r10, 0x10(r1)
/* 803E3164 003AC724  4B F3 91 4D */	bl func_8031C2B0
lbl_803E3168:
/* 803E3168 003AC728  80 81 00 38 */	lwz r4, 0x38(r1)
/* 803E316C 003AC72C  7F 23 CB 78 */	mr r3, r25
/* 803E3170 003AC730  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 803E3174 003AC734  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 803E3178 003AC738  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 803E317C 003AC73C  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 803E3180 003AC740  88 C1 00 12 */	lbz r6, 0x12(r1)
/* 803E3184 003AC744  88 E1 00 11 */	lbz r7, 0x11(r1)
/* 803E3188 003AC748  81 01 00 24 */	lwz r8, 0x24(r1)
/* 803E318C 003AC74C  4B F3 93 85 */	bl func_8031C510
lbl_803E3190:
/* 803E3190 003AC750  57 5A F8 7E */	srwi r26, r26, 1
/* 803E3194 003AC754  3B 7B 00 04 */	addi r27, r27, 4
/* 803E3198 003AC758  3B 9C 00 01 */	addi r28, r28, 1
lbl_803E319C:
/* 803E319C 003AC75C  2C 1A 00 00 */	cmpwi r26, 0
/* 803E31A0 003AC760  40 82 FE C4 */	bne lbl_803E3064
/* 803E31A4 003AC764  8A FF 00 01 */	lbz r23, 1(r31)
/* 803E31A8 003AC768  3B 40 00 00 */	li r26, 0
/* 803E31AC 003AC76C  48 00 00 58 */	b lbl_803E3204
lbl_803E31B0:
/* 803E31B0 003AC770  56 E0 07 FF */	clrlwi. r0, r23, 0x1f
/* 803E31B4 003AC774  41 82 00 44 */	beq lbl_803E31F8
/* 803E31B8 003AC778  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 803E31BC 003AC77C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 803E31C0 003AC780  2C 00 00 00 */	cmpwi r0, 0
/* 803E31C4 003AC784  41 82 00 0C */	beq lbl_803E31D0
/* 803E31C8 003AC788  7F 84 02 14 */	add r28, r4, r0
/* 803E31CC 003AC78C  48 00 00 08 */	b lbl_803E31D4
lbl_803E31D0:
/* 803E31D0 003AC790  3B 80 00 00 */	li r28, 0
lbl_803E31D4:
/* 803E31D4 003AC794  83 64 00 18 */	lwz r27, 0x18(r4)
/* 803E31D8 003AC798  7F C3 F3 78 */	mr r3, r30
/* 803E31DC 003AC79C  A3 A4 00 1C */	lhz r29, 0x1c(r4)
/* 803E31E0 003AC7A0  7F 44 D3 78 */	mr r4, r26
/* 803E31E4 003AC7A4  4B FF 88 E5 */	bl func_803DBAC8
/* 803E31E8 003AC7A8  7F 84 E3 78 */	mr r4, r28
/* 803E31EC 003AC7AC  7F 65 DB 78 */	mr r5, r27
/* 803E31F0 003AC7B0  7F A6 EB 78 */	mr r6, r29
/* 803E31F4 003AC7B4  4B F3 97 ED */	bl func_8031C9E0
lbl_803E31F8:
/* 803E31F8 003AC7B8  56 F7 F8 7E */	srwi r23, r23, 1
/* 803E31FC 003AC7BC  3B FF 00 04 */	addi r31, r31, 4
/* 803E3200 003AC7C0  3B 5A 00 01 */	addi r26, r26, 1
lbl_803E3204:
/* 803E3204 003AC7C4  2C 17 00 00 */	cmpwi r23, 0
/* 803E3208 003AC7C8  40 82 FF A8 */	bne lbl_803E31B0
/* 803E320C 003AC7CC  39 61 00 70 */	addi r11, r1, 0x70
/* 803E3210 003AC7D0  4B ED 6F 7D */	bl _restgpr_22
/* 803E3214 003AC7D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803E3218 003AC7D8  7C 08 03 A6 */	mtlr r0
/* 803E321C 003AC7DC  38 21 00 70 */	addi r1, r1, 0x70
/* 803E3220 003AC7E0  4E 80 00 20 */	blr 
.global lbl_803E3224
lbl_803E3224:
/* 803E3224 003AC7E4  3C 60 80 52 */	lis r3, lbl_80520E90@ha
/* 803E3228 003AC7E8  80 04 00 00 */	lwz r0, 0(r4)
/* 803E322C 003AC7EC  38 63 0E 90 */	addi r3, r3, lbl_80520E90@l
/* 803E3230 003AC7F0  7C 00 18 40 */	cmplw r0, r3
/* 803E3234 003AC7F4  40 82 00 0C */	bne lbl_803E3240
/* 803E3238 003AC7F8  38 60 00 01 */	li r3, 1
/* 803E323C 003AC7FC  4E 80 00 20 */	blr

.global lbl_803E3240
lbl_803E3240:
/* 803E3240 003AC800  3C 60 80 52 */	lis r3, lbl_80520E78@ha
/* 803E3244 003AC804  80 04 00 00 */	lwz r0, 0(r4)
/* 803E3248 003AC808  38 63 0E 78 */	addi r3, r3, lbl_80520E78@l
/* 803E324C 003AC80C  7C 00 18 40 */	cmplw r0, r3
/* 803E3250 003AC810  40 82 00 0C */	bne lbl_803E325C
/* 803E3254 003AC814  38 60 00 01 */	li r3, 1
/* 803E3258 003AC818  4E 80 00 20 */	blr

.global lbl_803E325C
lbl_803E325C:
/* 803E325C 003AC81C  3C 60 80 52 */	lis r3, lbl_80520F68@ha
/* 803E3260 003AC820  38 63 0F 68 */	addi r3, r3, lbl_80520F68@l
/* 803E3264 003AC824  7C 00 18 40 */	cmplw r0, r3
/* 803E3268 003AC828  40 82 00 0C */	bne lbl_803E3274
/* 803E326C 003AC82C  38 60 00 01 */	li r3, 1
/* 803E3270 003AC830  4E 80 00 20 */	blr

.global lbl_803E3274
lbl_803E3274:
/* 803E3274 003AC834  3C 60 80 52 */	lis r3, lbl_80520F58@ha
/* 803E3278 003AC838  38 63 0F 58 */	addi r3, r3, lbl_80520F58@l
/* 803E327C 003AC83C  7C 00 18 50 */	subf r0, r0, r3
/* 803E3280 003AC840  7C 00 00 34 */	cntlzw r0, r0
/* 803E3284 003AC844  54 03 D9 7E */	srwi r3, r0, 5
/* 803E3288 003AC848  4E 80 00 20 */	blr 
.global lbl_803E328C
lbl_803E328C:
/* 803E328C 003AC84C  3C 60 80 52 */	lis r3, lbl_80520E78@ha
/* 803E3290 003AC850  80 04 00 00 */	lwz r0, 0(r4)
/* 803E3294 003AC854  38 63 0E 78 */	addi r3, r3, lbl_80520E78@l
/* 803E3298 003AC858  7C 00 18 40 */	cmplw r0, r3
/* 803E329C 003AC85C  40 82 00 0C */	bne lbl_803E32A8
/* 803E32A0 003AC860  38 60 00 01 */	li r3, 1
/* 803E32A4 003AC864  4E 80 00 20 */	blr

.global lbl_803E32A8
lbl_803E32A8:
/* 803E32A8 003AC868  3C 60 80 52 */	lis r3, lbl_80520F68@ha
/* 803E32AC 003AC86C  80 04 00 00 */	lwz r0, 0(r4)
/* 803E32B0 003AC870  38 63 0F 68 */	addi r3, r3, lbl_80520F68@l
/* 803E32B4 003AC874  7C 00 18 40 */	cmplw r0, r3
/* 803E32B8 003AC878  40 82 00 0C */	bne lbl_803E32C4
/* 803E32BC 003AC87C  38 60 00 01 */	li r3, 1
/* 803E32C0 003AC880  4E 80 00 20 */	blr

.global lbl_803E32C4
lbl_803E32C4:
/* 803E32C4 003AC884  3C 60 80 52 */	lis r3, lbl_80520F58@ha
/* 803E32C8 003AC888  38 63 0F 58 */	addi r3, r3, lbl_80520F58@l
/* 803E32CC 003AC88C  7C 00 18 50 */	subf r0, r0, r3
/* 803E32D0 003AC890  7C 00 00 34 */	cntlzw r0, r0
/* 803E32D4 003AC894  54 03 D9 7E */	srwi r3, r0, 5
/* 803E32D8 003AC898  4E 80 00 20 */	blr 
.global lbl_803E32DC
lbl_803E32DC:
/* 803E32DC 003AC89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E32E0 003AC8A0  7C 08 02 A6 */	mflr r0
/* 803E32E4 003AC8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E32E8 003AC8A8  81 83 00 00 */	lwz r12, 0(r3)
/* 803E32EC 003AC8AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803E32F0 003AC8B0  7D 89 03 A6 */	mtctr r12
/* 803E32F4 003AC8B4  4E 80 04 21 */	bctrl 
/* 803E32F8 003AC8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E32FC 003AC8BC  38 63 00 04 */	addi r3, r3, 4
/* 803E3300 003AC8C0  7C 08 03 A6 */	mtlr r0
/* 803E3304 003AC8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803E3308 003AC8C8  4E 80 00 20 */	blr 
.global lbl_803E330C
lbl_803E330C:
/* 803E330C 003AC8CC  3C 60 80 52 */	lis r3, lbl_80520E90@ha
/* 803E3310 003AC8D0  38 63 0E 90 */	addi r3, r3, lbl_80520E90@l
/* 803E3314 003AC8D4  4E 80 00 20 */	blr 
.global lbl_803E3318
lbl_803E3318:
/* 803E3318 003AC8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E331C 003AC8DC  7C 08 02 A6 */	mflr r0
/* 803E3320 003AC8E0  2C 03 00 00 */	cmpwi r3, 0
/* 803E3324 003AC8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E3328 003AC8E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E332C 003AC8EC  7C 7F 1B 78 */	mr r31, r3
/* 803E3330 003AC8F0  41 82 00 14 */	beq lbl_803E3344
/* 803E3334 003AC8F4  41 82 00 10 */	beq lbl_803E3344
/* 803E3338 003AC8F8  41 82 00 0C */	beq lbl_803E3344
/* 803E333C 003AC8FC  38 80 00 00 */	li r4, 0
/* 803E3340 003AC900  48 00 3F 55 */	bl func_803E7294
lbl_803E3344:
/* 803E3344 003AC904  7F E3 FB 78 */	mr r3, r31
/* 803E3348 003AC908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E334C 003AC90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E3350 003AC910  7C 08 03 A6 */	mtlr r0
/* 803E3354 003AC914  38 21 00 10 */	addi r1, r1, 0x10
/* 803E3358 003AC918  4E 80 00 20 */	blr 
.global lbl_803E335C
lbl_803E335C:
/* 803E335C 003AC91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E3360 003AC920  7C 08 02 A6 */	mflr r0
/* 803E3364 003AC924  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E3368 003AC928  81 83 00 00 */	lwz r12, 0(r3)
/* 803E336C 003AC92C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803E3370 003AC930  7D 89 03 A6 */	mtctr r12
/* 803E3374 003AC934  4E 80 04 21 */	bctrl 
/* 803E3378 003AC938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E337C 003AC93C  38 63 00 04 */	addi r3, r3, 4
/* 803E3380 003AC940  7C 08 03 A6 */	mtlr r0
/* 803E3384 003AC944  38 21 00 10 */	addi r1, r1, 0x10
/* 803E3388 003AC948  4E 80 00 20 */	blr 
.global lbl_803E338C
lbl_803E338C:
/* 803E338C 003AC94C  3C 60 80 52 */	lis r3, lbl_80520E78@ha
/* 803E3390 003AC950  38 63 0E 78 */	addi r3, r3, lbl_80520E78@l
/* 803E3394 003AC954  4E 80 00 20 */	blr 
