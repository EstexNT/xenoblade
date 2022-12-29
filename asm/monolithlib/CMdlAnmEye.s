.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_804E7544
func_804E7544:
/* 804E7544 004B0B04  C0 02 D7 88 */	lfs f0, lbl_8066DB08@sda21(r2)
/* 804E7548 004B0B08  3C A0 80 57 */	lis r5, __vt__CMdlAnmEye@ha
/* 804E754C 004B0B0C  38 80 00 00 */	li r4, 0
/* 804E7550 004B0B10  38 00 00 01 */	li r0, 1
/* 804E7554 004B0B14  38 A5 3A 18 */	addi r5, r5, __vt__CMdlAnmEye@l
/* 804E7558 004B0B18  90 A3 00 00 */	stw r5, 0(r3)
/* 804E755C 004B0B1C  90 83 00 04 */	stw r4, 4(r3)
/* 804E7560 004B0B20  90 83 00 1C */	stw r4, 0x1c(r3)
/* 804E7564 004B0B24  90 83 00 20 */	stw r4, 0x20(r3)
/* 804E7568 004B0B28  90 83 00 24 */	stw r4, 0x24(r3)
/* 804E756C 004B0B2C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 804E7570 004B0B30  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804E7574 004B0B34  4E 80 00 20 */	blr 

.global func_804E7578
func_804E7578:
/* 804E7578 004B0B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E757C 004B0B3C  7C 08 02 A6 */	mflr r0
/* 804E7580 004B0B40  2C 03 00 00 */	cmpwi r3, 0
/* 804E7584 004B0B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7588 004B0B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E758C 004B0B4C  7C 7F 1B 78 */	mr r31, r3
/* 804E7590 004B0B50  41 82 00 10 */	beq .L_804E75A0
/* 804E7594 004B0B54  2C 04 00 00 */	cmpwi r4, 0
/* 804E7598 004B0B58  40 81 00 08 */	ble .L_804E75A0
/* 804E759C 004B0B5C  4B F4 D6 91 */	bl __dl__FPv
.L_804E75A0:
/* 804E75A0 004B0B60  7F E3 FB 78 */	mr r3, r31
/* 804E75A4 004B0B64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E75A8 004B0B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E75AC 004B0B6C  7C 08 03 A6 */	mtlr r0
/* 804E75B0 004B0B70  38 21 00 10 */	addi r1, r1, 0x10
/* 804E75B4 004B0B74  4E 80 00 20 */	blr 

.global func_804E75B8
func_804E75B8:
/* 804E75B8 004B0B78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E75BC 004B0B7C  7C 08 02 A6 */	mflr r0
/* 804E75C0 004B0B80  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E75C4 004B0B84  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 804E75C8 004B0B88  7C 7C 1B 78 */	mr r28, r3
/* 804E75CC 004B0B8C  7C 9D 23 78 */	mr r29, r4
/* 804E75D0 004B0B90  90 83 00 04 */	stw r4, 4(r3)
/* 804E75D4 004B0B94  38 61 00 10 */	addi r3, r1, 0x10
/* 804E75D8 004B0B98  80 04 14 6C */	lwz r0, 0x146c(r4)
/* 804E75DC 004B0B9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E75E0 004B0BA0  4B EF 26 21 */	bl GetResMatNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 804E75E4 004B0BA4  7C 7F 1B 78 */	mr r31, r3
/* 804E75E8 004B0BA8  3A E0 00 00 */	li r23, 0
/* 804E75EC 004B0BAC  3F 20 80 57 */	lis r25, lbl_805718B0@ha
/* 804E75F0 004B0BB0  3F 00 80 57 */	lis r24, lbl_80571894@ha
/* 804E75F4 004B0BB4  48 00 00 CC */	b .L_804E76C0
.L_804E75F8:
/* 804E75F8 004B0BB8  80 1D 14 6C */	lwz r0, 0x146c(r29)
/* 804E75FC 004B0BBC  7E E4 BB 78 */	mr r4, r23
/* 804E7600 004B0BC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E7604 004B0BC4  38 61 00 0C */	addi r3, r1, 0xc
/* 804E7608 004B0BC8  4B EF 25 A5 */	bl GetResMat__Q34nw4r3g3d6ResMdlCFUl
/* 804E760C 004B0BCC  2C 03 00 00 */	cmpwi r3, 0
/* 804E7610 004B0BD0  7C 7A 1B 78 */	mr r26, r3
/* 804E7614 004B0BD4  40 82 00 20 */	bne .L_804E7634
/* 804E7618 004B0BD8  38 79 18 B0 */	addi r3, r25, lbl_805718B0@l
/* 804E761C 004B0BDC  38 B8 18 94 */	addi r5, r24, lbl_80571894@l
/* 804E7620 004B0BE0  38 80 02 6D */	li r4, 0x26d
/* 804E7624 004B0BE4  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E7628 004B0BE8  38 ED A4 30 */	addi r7, r13, lbl_806665B0@sda21
/* 804E762C 004B0BEC  4C C6 31 82 */	crclr 6
/* 804E7630 004B0BF0  4B EE FF 55 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E7634:
/* 804E7634 004B0BF4  80 1A 00 08 */	lwz r0, 8(r26)
/* 804E7638 004B0BF8  2C 00 00 00 */	cmpwi r0, 0
/* 804E763C 004B0BFC  41 82 00 0C */	beq .L_804E7648
/* 804E7640 004B0C00  7F 7A 02 14 */	add r27, r26, r0
/* 804E7644 004B0C04  48 00 00 08 */	b .L_804E764C
.L_804E7648:
/* 804E7648 004B0C08  3B 60 00 00 */	li r27, 0
.L_804E764C:
/* 804E764C 004B0C0C  80 8D A4 20 */	lwz r4, lbl_806665A0@sda21(r13)
/* 804E7650 004B0C10  7F 63 DB 78 */	mr r3, r27
/* 804E7654 004B0C14  4B DD B3 6D */	bl strstr
/* 804E7658 004B0C18  7C 1B 18 40 */	cmplw r27, r3
/* 804E765C 004B0C1C  40 82 00 60 */	bne .L_804E76BC
/* 804E7660 004B0C20  2C 1A 00 00 */	cmpwi r26, 0
/* 804E7664 004B0C24  40 82 00 28 */	bne .L_804E768C
/* 804E7668 004B0C28  3C 60 80 57 */	lis r3, lbl_805718B0@ha
/* 804E766C 004B0C2C  3C A0 80 57 */	lis r5, lbl_80571894@ha
/* 804E7670 004B0C30  38 63 18 B0 */	addi r3, r3, lbl_805718B0@l
/* 804E7674 004B0C34  38 80 02 6D */	li r4, 0x26d
/* 804E7678 004B0C38  38 A5 18 94 */	addi r5, r5, lbl_80571894@l
/* 804E767C 004B0C3C  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E7680 004B0C40  38 ED A4 30 */	addi r7, r13, lbl_806665B0@sda21
/* 804E7684 004B0C44  4C C6 31 82 */	crclr 6
/* 804E7688 004B0C48  4B EE FE FD */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E768C:
/* 804E768C 004B0C4C  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 804E7690 004B0C50  38 A0 00 00 */	li r5, 0
/* 804E7694 004B0C54  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 804E7698 004B0C58  54 00 10 3A */	slwi r0, r0, 2
/* 804E769C 004B0C5C  7C 7C 02 14 */	add r3, r28, r0
/* 804E76A0 004B0C60  90 83 00 08 */	stw r4, 8(r3)
/* 804E76A4 004B0C64  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 804E76A8 004B0C68  7C 7C 22 14 */	add r3, r28, r4
/* 804E76AC 004B0C6C  38 04 00 01 */	addi r0, r4, 1
/* 804E76B0 004B0C70  98 A3 00 18 */	stb r5, 0x18(r3)
/* 804E76B4 004B0C74  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 804E76B8 004B0C78  48 00 00 10 */	b .L_804E76C8
.L_804E76BC:
/* 804E76BC 004B0C7C  3A F7 00 01 */	addi r23, r23, 1
.L_804E76C0:
/* 804E76C0 004B0C80  7C 17 F8 40 */	cmplw r23, r31
/* 804E76C4 004B0C84  41 80 FF 34 */	blt .L_804E75F8
.L_804E76C8:
/* 804E76C8 004B0C88  3B C0 00 00 */	li r30, 0
/* 804E76CC 004B0C8C  3F 20 80 57 */	lis r25, lbl_805718B0@ha
/* 804E76D0 004B0C90  3F 40 80 57 */	lis r26, lbl_80571894@ha
/* 804E76D4 004B0C94  3B 60 00 01 */	li r27, 1
/* 804E76D8 004B0C98  48 00 00 C8 */	b .L_804E77A0
.L_804E76DC:
/* 804E76DC 004B0C9C  80 1D 14 6C */	lwz r0, 0x146c(r29)
/* 804E76E0 004B0CA0  7F C4 F3 78 */	mr r4, r30
/* 804E76E4 004B0CA4  90 01 00 08 */	stw r0, 8(r1)
/* 804E76E8 004B0CA8  38 61 00 08 */	addi r3, r1, 8
/* 804E76EC 004B0CAC  4B EF 24 C1 */	bl GetResMat__Q34nw4r3g3d6ResMdlCFUl
/* 804E76F0 004B0CB0  2C 03 00 00 */	cmpwi r3, 0
/* 804E76F4 004B0CB4  7C 78 1B 78 */	mr r24, r3
/* 804E76F8 004B0CB8  40 82 00 20 */	bne .L_804E7718
/* 804E76FC 004B0CBC  38 79 18 B0 */	addi r3, r25, lbl_805718B0@l
/* 804E7700 004B0CC0  38 BA 18 94 */	addi r5, r26, lbl_80571894@l
/* 804E7704 004B0CC4  38 80 02 6D */	li r4, 0x26d
/* 804E7708 004B0CC8  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E770C 004B0CCC  38 ED A4 30 */	addi r7, r13, lbl_806665B0@sda21
/* 804E7710 004B0CD0  4C C6 31 82 */	crclr 6
/* 804E7714 004B0CD4  4B EE FE 71 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E7718:
/* 804E7718 004B0CD8  80 18 00 08 */	lwz r0, 8(r24)
/* 804E771C 004B0CDC  2C 00 00 00 */	cmpwi r0, 0
/* 804E7720 004B0CE0  41 82 00 0C */	beq .L_804E772C
/* 804E7724 004B0CE4  7E F8 02 14 */	add r23, r24, r0
/* 804E7728 004B0CE8  48 00 00 08 */	b .L_804E7730
.L_804E772C:
/* 804E772C 004B0CEC  3A E0 00 00 */	li r23, 0
.L_804E7730:
/* 804E7730 004B0CF0  4B FF F5 49 */	bl func_804E6C78
/* 804E7734 004B0CF4  7C 64 1B 78 */	mr r4, r3
/* 804E7738 004B0CF8  7E E3 BB 78 */	mr r3, r23
/* 804E773C 004B0CFC  4B DD B2 85 */	bl strstr
/* 804E7740 004B0D00  7C 17 18 40 */	cmplw r23, r3
/* 804E7744 004B0D04  40 82 00 58 */	bne .L_804E779C
/* 804E7748 004B0D08  2C 18 00 00 */	cmpwi r24, 0
/* 804E774C 004B0D0C  40 82 00 20 */	bne .L_804E776C
/* 804E7750 004B0D10  38 79 18 B0 */	addi r3, r25, lbl_805718B0@l
/* 804E7754 004B0D14  38 BA 18 94 */	addi r5, r26, lbl_80571894@l
/* 804E7758 004B0D18  38 80 02 6D */	li r4, 0x26d
/* 804E775C 004B0D1C  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E7760 004B0D20  38 ED A4 30 */	addi r7, r13, lbl_806665B0@sda21
/* 804E7764 004B0D24  4C C6 31 82 */	crclr 6
/* 804E7768 004B0D28  4B EE FE 1D */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E776C:
/* 804E776C 004B0D2C  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 804E7770 004B0D30  80 98 00 0C */	lwz r4, 0xc(r24)
/* 804E7774 004B0D34  54 00 10 3A */	slwi r0, r0, 2
/* 804E7778 004B0D38  7C 7C 02 14 */	add r3, r28, r0
/* 804E777C 004B0D3C  90 83 00 08 */	stw r4, 8(r3)
/* 804E7780 004B0D40  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 804E7784 004B0D44  7C 7C 22 14 */	add r3, r28, r4
/* 804E7788 004B0D48  38 04 00 01 */	addi r0, r4, 1
/* 804E778C 004B0D4C  9B 63 00 18 */	stb r27, 0x18(r3)
/* 804E7790 004B0D50  2C 00 00 02 */	cmpwi r0, 2
/* 804E7794 004B0D54  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 804E7798 004B0D58  41 82 00 10 */	beq .L_804E77A8
.L_804E779C:
/* 804E779C 004B0D5C  3B DE 00 01 */	addi r30, r30, 1
.L_804E77A0:
/* 804E77A0 004B0D60  7C 1E F8 40 */	cmplw r30, r31
/* 804E77A4 004B0D64  41 80 FF 38 */	blt .L_804E76DC
.L_804E77A8:
/* 804E77A8 004B0D68  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 804E77AC 004B0D6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E77B0 004B0D70  7C 08 03 A6 */	mtlr r0
/* 804E77B4 004B0D74  38 21 00 40 */	addi r1, r1, 0x40
/* 804E77B8 004B0D78  4E 80 00 20 */	blr 

.global func_804E77BC
func_804E77BC:
/* 804E77BC 004B0D7C  90 83 00 2C */	stw r4, 0x2c(r3)
/* 804E77C0 004B0D80  4E 80 00 20 */	blr 

.global func_804E77C4
func_804E77C4:
/* 804E77C4 004B0D84  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804E77C8 004B0D88  7C 08 02 A6 */	mflr r0
/* 804E77CC 004B0D8C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804E77D0 004B0D90  39 61 00 90 */	addi r11, r1, 0x90
/* 804E77D4 004B0D94  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 804E77D8 004B0D98  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 804E77DC 004B0D9C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 804E77E0 004B0DA0  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 804E77E4 004B0DA4  4B DD 29 71 */	bl _savegpr_27
/* 804E77E8 004B0DA8  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804E77EC 004B0DAC  7C 7F 1B 78 */	mr r31, r3
/* 804E77F0 004B0DB0  2C 00 00 04 */	cmpwi r0, 4
/* 804E77F4 004B0DB4  41 82 02 64 */	beq .L_804E7A58
/* 804E77F8 004B0DB8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 804E77FC 004B0DBC  2C 00 00 00 */	cmpwi r0, 0
/* 804E7800 004B0DC0  41 82 02 58 */	beq .L_804E7A58
/* 804E7804 004B0DC4  80 63 00 04 */	lwz r3, 4(r3)
/* 804E7808 004B0DC8  4B F9 D6 A9 */	bl func_80484EB0
/* 804E780C 004B0DCC  80 7F 00 04 */	lwz r3, 4(r31)
/* 804E7810 004B0DD0  FF C0 08 90 */	fmr f30, f1
/* 804E7814 004B0DD4  80 03 07 A8 */	lwz r0, 0x7a8(r3)
/* 804E7818 004B0DD8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804E781C 004B0DDC  41 82 00 08 */	beq .L_804E7824
/* 804E7820 004B0DE0  C3 C2 D7 8C */	lfs f30, lbl_8066DB0C@sda21(r2)
.L_804E7824:
/* 804E7824 004B0DE4  80 63 00 04 */	lwz r3, 4(r3)
/* 804E7828 004B0DE8  4B FA EA 61 */	bl func_80496288
/* 804E782C 004B0DEC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804E7830 004B0DF0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804E7834 004B0DF4  EC 3E 00 7A */	fmadds f1, f30, f1, f0
/* 804E7838 004B0DF8  2C 03 00 00 */	cmpwi r3, 0
/* 804E783C 004B0DFC  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 804E7840 004B0E00  41 82 00 18 */	beq .L_804E7858
/* 804E7844 004B0E04  2C 03 00 01 */	cmpwi r3, 1
/* 804E7848 004B0E08  41 82 00 94 */	beq .L_804E78DC
/* 804E784C 004B0E0C  2C 03 00 02 */	cmpwi r3, 2
/* 804E7850 004B0E10  41 82 00 BC */	beq .L_804E790C
/* 804E7854 004B0E14  48 00 00 E0 */	b .L_804E7934
.L_804E7858:
/* 804E7858 004B0E18  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804E785C 004B0E1C  2C 03 00 01 */	cmpwi r3, 1
/* 804E7860 004B0E20  41 82 01 F8 */	beq .L_804E7A58
/* 804E7864 004B0E24  C0 02 D7 90 */	lfs f0, lbl_8066DB10@sda21(r2)
/* 804E7868 004B0E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E786C 004B0E2C  4C 41 13 82 */	cror 2, 1, 2
/* 804E7870 004B0E30  41 82 00 10 */	beq .L_804E7880
/* 804E7874 004B0E34  38 03 FF FE */	addi r0, r3, -2
/* 804E7878 004B0E38  28 00 00 01 */	cmplwi r0, 1
/* 804E787C 004B0E3C  41 81 00 B8 */	bgt .L_804E7934
.L_804E7880:
/* 804E7880 004B0E40  C0 02 D7 88 */	lfs f0, lbl_8066DB08@sda21(r2)
/* 804E7884 004B0E44  38 60 00 0A */	li r3, 0xa
/* 804E7888 004B0E48  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804E788C 004B0E4C  4B F4 E6 71 */	bl func_80435EFC
/* 804E7890 004B0E50  2C 03 00 04 */	cmpwi r3, 4
/* 804E7894 004B0E54  41 82 00 30 */	beq .L_804E78C4
/* 804E7898 004B0E58  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804E789C 004B0E5C  2C 00 00 00 */	cmpwi r0, 0
/* 804E78A0 004B0E60  40 82 00 24 */	bne .L_804E78C4
/* 804E78A4 004B0E64  38 60 00 07 */	li r3, 7
/* 804E78A8 004B0E68  4B F4 E6 55 */	bl func_80435EFC
/* 804E78AC 004B0E6C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 804E78B0 004B0E70  38 63 00 0C */	addi r3, r3, 0xc
/* 804E78B4 004B0E74  38 04 00 01 */	addi r0, r4, 1
/* 804E78B8 004B0E78  90 1F 00 24 */	stw r0, 0x24(r31)
/* 804E78BC 004B0E7C  7C 00 18 00 */	cmpw r0, r3
/* 804E78C0 004B0E80  41 80 01 98 */	blt .L_804E7A58
.L_804E78C4:
/* 804E78C4 004B0E84  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804E78C8 004B0E88  38 00 00 00 */	li r0, 0
/* 804E78CC 004B0E8C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 804E78D0 004B0E90  38 03 00 01 */	addi r0, r3, 1
/* 804E78D4 004B0E94  90 1F 00 20 */	stw r0, 0x20(r31)
/* 804E78D8 004B0E98  48 00 00 5C */	b .L_804E7934
.L_804E78DC:
/* 804E78DC 004B0E9C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804E78E0 004B0EA0  2C 00 00 03 */	cmpwi r0, 3
/* 804E78E4 004B0EA4  41 82 00 50 */	beq .L_804E7934
/* 804E78E8 004B0EA8  C0 02 D7 94 */	lfs f0, lbl_8066DB14@sda21(r2)
/* 804E78EC 004B0EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E78F0 004B0EB0  4C 41 13 82 */	cror 2, 1, 2
/* 804E78F4 004B0EB4  40 82 00 40 */	bne .L_804E7934
/* 804E78F8 004B0EB8  C0 02 D7 88 */	lfs f0, lbl_8066DB08@sda21(r2)
/* 804E78FC 004B0EBC  38 03 00 01 */	addi r0, r3, 1
/* 804E7900 004B0EC0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804E7904 004B0EC4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 804E7908 004B0EC8  48 00 00 2C */	b .L_804E7934
.L_804E790C:
/* 804E790C 004B0ECC  C0 02 D7 94 */	lfs f0, lbl_8066DB14@sda21(r2)
/* 804E7910 004B0ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E7914 004B0ED4  40 81 00 20 */	ble .L_804E7934
/* 804E7918 004B0ED8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804E791C 004B0EDC  2C 00 00 02 */	cmpwi r0, 2
/* 804E7920 004B0EE0  41 82 00 14 */	beq .L_804E7934
/* 804E7924 004B0EE4  C0 02 D7 88 */	lfs f0, lbl_8066DB08@sda21(r2)
/* 804E7928 004B0EE8  38 00 00 00 */	li r0, 0
/* 804E792C 004B0EEC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804E7930 004B0EF0  90 1F 00 20 */	stw r0, 0x20(r31)
.L_804E7934:
/* 804E7934 004B0EF4  3F C0 80 53 */	lis r30, lbl_805280EC@ha
/* 804E7938 004B0EF8  3F A0 80 53 */	lis r29, lbl_805280E0@ha
/* 804E793C 004B0EFC  C3 C2 D7 8C */	lfs f30, lbl_8066DB0C@sda21(r2)
/* 804E7940 004B0F00  7F FC FB 78 */	mr r28, r31
/* 804E7944 004B0F04  C3 E2 D7 88 */	lfs f31, lbl_8066DB08@sda21(r2)
/* 804E7948 004B0F08  3B DE 80 EC */	addi r30, r30, lbl_805280EC@l
/* 804E794C 004B0F0C  3B BD 80 E0 */	addi r29, r29, lbl_805280E0@l
/* 804E7950 004B0F10  3B 60 00 00 */	li r27, 0
/* 804E7954 004B0F14  48 00 00 F8 */	b .L_804E7A4C
.L_804E7958:
/* 804E7958 004B0F18  80 9F 00 04 */	lwz r4, 4(r31)
/* 804E795C 004B0F1C  38 61 00 40 */	addi r3, r1, 0x40
/* 804E7960 004B0F20  80 BC 00 08 */	lwz r5, 8(r28)
/* 804E7964 004B0F24  80 84 14 7C */	lwz r4, 0x147c(r4)
/* 804E7968 004B0F28  4B F1 1D CD */	bl __ct__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFPQ34nw4r3g3d6ScnMdlUl
/* 804E796C 004B0F2C  38 61 00 40 */	addi r3, r1, 0x40
/* 804E7970 004B0F30  38 80 00 00 */	li r4, 0
/* 804E7974 004B0F34  4B F1 1B 95 */	bl GetResTexSrt__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFb
/* 804E7978 004B0F38  2C 03 00 00 */	cmpwi r3, 0
/* 804E797C 004B0F3C  90 61 00 08 */	stw r3, 8(r1)
/* 804E7980 004B0F40  41 82 00 C4 */	beq .L_804E7A44
/* 804E7984 004B0F44  7C 7F DA 14 */	add r3, r31, r27
/* 804E7988 004B0F48  88 03 00 18 */	lbz r0, 0x18(r3)
/* 804E798C 004B0F4C  2C 00 00 00 */	cmpwi r0, 0
/* 804E7990 004B0F50  40 82 00 44 */	bne .L_804E79D4
/* 804E7994 004B0F54  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 804E7998 004B0F58  54 00 10 3A */	slwi r0, r0, 2
/* 804E799C 004B0F5C  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 804E79A0 004B0F60  7C 1D 04 2E */	lfsx f0, r29, r0
/* 804E79A4 004B0F64  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 804E79A8 004B0F68  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 804E79AC 004B0F6C  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 804E79B0 004B0F70  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 804E79B4 004B0F74  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 804E79B8 004B0F78  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 804E79BC 004B0F7C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804E79C0 004B0F80  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 804E79C4 004B0F84  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 804E79C8 004B0F88  D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 804E79CC 004B0F8C  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 804E79D0 004B0F90  48 00 00 44 */	b .L_804E7A14
.L_804E79D4:
/* 804E79D4 004B0F94  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 804E79D8 004B0F98  54 00 10 3A */	slwi r0, r0, 2
/* 804E79DC 004B0F9C  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 804E79E0 004B0FA0  7C 1E 04 2E */	lfsx f0, r30, r0
/* 804E79E4 004B0FA4  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 804E79E8 004B0FA8  FC 00 00 50 */	fneg f0, f0
/* 804E79EC 004B0FAC  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 804E79F0 004B0FB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E79F4 004B0FB4  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 804E79F8 004B0FB8  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 804E79FC 004B0FBC  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 804E7A00 004B0FC0  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 804E7A04 004B0FC4  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 804E7A08 004B0FC8  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 804E7A0C 004B0FCC  D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 804E7A10 004B0FD0  D3 E1 00 3C */	stfs f31, 0x3c(r1)
.L_804E7A14:
/* 804E7A14 004B0FD4  38 61 00 08 */	addi r3, r1, 8
/* 804E7A18 004B0FD8  38 A1 00 10 */	addi r5, r1, 0x10
/* 804E7A1C 004B0FDC  38 80 00 00 */	li r4, 0
/* 804E7A20 004B0FE0  4B EF 42 7D */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
/* 804E7A24 004B0FE4  38 61 00 08 */	addi r3, r1, 8
/* 804E7A28 004B0FE8  38 A1 00 10 */	addi r5, r1, 0x10
/* 804E7A2C 004B0FEC  38 80 00 01 */	li r4, 1
/* 804E7A30 004B0FF0  4B EF 42 6D */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
/* 804E7A34 004B0FF4  38 61 00 08 */	addi r3, r1, 8
/* 804E7A38 004B0FF8  38 A1 00 10 */	addi r5, r1, 0x10
/* 804E7A3C 004B0FFC  38 80 00 02 */	li r4, 2
/* 804E7A40 004B1000  4B EF 42 5D */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
.L_804E7A44:
/* 804E7A44 004B1004  3B 9C 00 04 */	addi r28, r28, 4
/* 804E7A48 004B1008  3B 7B 00 01 */	addi r27, r27, 1
.L_804E7A4C:
/* 804E7A4C 004B100C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 804E7A50 004B1010  7C 1B 00 00 */	cmpw r27, r0
/* 804E7A54 004B1014  41 80 FF 04 */	blt .L_804E7958
.L_804E7A58:
/* 804E7A58 004B1018  39 61 00 90 */	addi r11, r1, 0x90
/* 804E7A5C 004B101C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 804E7A60 004B1020  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 804E7A64 004B1024  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 804E7A68 004B1028  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 804E7A6C 004B102C  4B DD 27 35 */	bl _restgpr_27
/* 804E7A70 004B1030  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804E7A74 004B1034  7C 08 03 A6 */	mtlr r0
/* 804E7A78 004B1038  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804E7A7C 004B103C  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_805280E0
lbl_805280E0:
	# ROM: 0x5241E0
	.4byte 0
	.4byte 0x3EAC0831
	.4byte 0x3F2C0831


.global lbl_805280EC
lbl_805280EC:
	# ROM: 0x5241EC
	.4byte 0
	.4byte 0xBE000000
	.4byte 0xBE800000

.global CMdlAnmEye_typestr
CMdlAnmEye_typestr:
	.asciz "CMdlAnmEye"
	.balign 4
	.4byte 0
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CMdlAnmEye
__vt__CMdlAnmEye:
	.4byte __RTTI__CMdlAnmEye
	.4byte 0
	.4byte func_804E7578
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_806665A0
lbl_806665A0:
	# ROM: 0x572180
	.4byte lbl_8066DB00
	.4byte 0

.global __RTTI__CMdlAnmEye
__RTTI__CMdlAnmEye:
	.4byte CMdlAnmEye_typestr
	.4byte 0


.global lbl_806665B0
lbl_806665B0:
	# ROM: 0x572190
	.4byte 0x72656600
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066DB00
lbl_8066DB00:
	.asciz "mtEye"
	.balign 4


.global lbl_8066DB08
lbl_8066DB08:
	# ROM: 0x577968
	.4byte 0


.global lbl_8066DB0C
lbl_8066DB0C:
	# ROM: 0x57796C
	.float 1.0


.global lbl_8066DB10
lbl_8066DB10:
	# ROM: 0x577970
	.float 10.0


.global lbl_8066DB14
lbl_8066DB14:
	# ROM: 0x577974
	.float 0.2

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_80020D10
lbl_80020D10:
	.4byte 0x08080000
	.4byte 0

.global lbl_80020D18
lbl_80020D18:
	.4byte 0x48080000
	.4byte 0

.global lbl_80020D20
lbl_80020D20:
	.4byte 0x288A0000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_804E7578
	.4byte 0x00000040
	.4byte lbl_80020D10
	.4byte func_804E75B8
	.4byte 0x00000204
	.4byte lbl_80020D18
	.4byte func_804E77C4
	.4byte 0x000002BC
	.4byte lbl_80020D20