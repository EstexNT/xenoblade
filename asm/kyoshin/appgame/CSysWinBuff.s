.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802744D4
func_802744D4:
/* 802744D4 0023DA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802744D8 0023DA98  7C 08 02 A6 */	mflr r0
/* 802744DC 0023DA9C  2C 03 00 00 */	cmpwi r3, 0
/* 802744E0 0023DAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802744E4 0023DAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802744E8 0023DAA8  7C 9F 23 78 */	mr r31, r4
/* 802744EC 0023DAAC  93 C1 00 08 */	stw r30, 8(r1)
/* 802744F0 0023DAB0  7C 7E 1B 78 */	mr r30, r3
/* 802744F4 0023DAB4  41 82 00 38 */	beq .L_8027452C
/* 802744F8 0023DAB8  38 80 FF FF */	li r4, -1
/* 802744FC 0023DABC  38 63 00 7C */	addi r3, r3, 0x7c
/* 80274500 0023DAC0  4B FB 71 A1 */	bl func_8022B6A0
/* 80274504 0023DAC4  2C 1E 00 00 */	cmpwi r30, 0
/* 80274508 0023DAC8  41 82 00 14 */	beq .L_8027451C
/* 8027450C 0023DACC  41 82 00 10 */	beq .L_8027451C
/* 80274510 0023DAD0  7F C3 F3 78 */	mr r3, r30
/* 80274514 0023DAD4  38 80 00 00 */	li r4, 0
/* 80274518 0023DAD8  48 1D 06 21 */	bl func_80444B38
.L_8027451C:
/* 8027451C 0023DADC  2C 1F 00 00 */	cmpwi r31, 0
/* 80274520 0023DAE0  40 81 00 0C */	ble .L_8027452C
/* 80274524 0023DAE4  7F C3 F3 78 */	mr r3, r30
/* 80274528 0023DAE8  48 1C 07 05 */	bl __dl__FPv
.L_8027452C:
/* 8027452C 0023DAEC  7F C3 F3 78 */	mr r3, r30
/* 80274530 0023DAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80274534 0023DAF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80274538 0023DAF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027453C 0023DAFC  7C 08 03 A6 */	mtlr r0
/* 80274540 0023DB00  38 21 00 10 */	addi r1, r1, 0x10
/* 80274544 0023DB04  4E 80 00 20 */	blr 

.global func_80274548
func_80274548:
/* 80274548 0023DB08  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8027454C 0023DB0C  7C 08 02 A6 */	mflr r0
/* 80274550 0023DB10  2C 03 00 00 */	cmpwi r3, 0
/* 80274554 0023DB14  90 01 00 54 */	stw r0, 0x54(r1)
/* 80274558 0023DB18  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8027455C 0023DB1C  7C 7F 1B 78 */	mr r31, r3
/* 80274560 0023DB20  7F E4 FB 78 */	mr r4, r31
/* 80274564 0023DB24  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80274568 0023DB28  41 82 00 08 */	beq .L_80274570
/* 8027456C 0023DB2C  38 83 00 70 */	addi r4, r3, 0x70
.L_80274570:
/* 80274570 0023DB30  80 63 00 78 */	lwz r3, 0x78(r3)
/* 80274574 0023DB34  38 A0 00 0D */	li r5, 0xd
/* 80274578 0023DB38  38 C0 00 00 */	li r6, 0
/* 8027457C 0023DB3C  48 22 19 39 */	bl func_80495EB4
/* 80274580 0023DB40  2C 1F 00 00 */	cmpwi r31, 0
/* 80274584 0023DB44  7F FE FB 78 */	mr r30, r31
/* 80274588 0023DB48  41 82 00 08 */	beq .L_80274590
/* 8027458C 0023DB4C  3B DF 00 6C */	addi r30, r31, 0x6c
.L_80274590:
/* 80274590 0023DB50  4B E3 58 01 */	bl func_800A9D90
/* 80274594 0023DB54  3C 80 80 51 */	lis r4, lbl_8050A244@ha
/* 80274598 0023DB58  7F C5 F3 78 */	mr r5, r30
/* 8027459C 0023DB5C  38 84 A2 44 */	addi r4, r4, lbl_8050A244@l
/* 802745A0 0023DB60  38 C0 00 00 */	li r6, 0
/* 802745A4 0023DB64  38 E0 00 00 */	li r7, 0
/* 802745A8 0023DB68  48 1D A5 BD */	bl func_8044EB64
/* 802745AC 0023DB6C  90 7F 00 74 */	stw r3, 0x74(r31)
/* 802745B0 0023DB70  38 61 00 08 */	addi r3, r1, 8
/* 802745B4 0023DB74  38 80 00 00 */	li r4, 0
/* 802745B8 0023DB78  4B FB 70 61 */	bl func_8022B618
/* 802745BC 0023DB7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802745C0 0023DB80  38 61 00 08 */	addi r3, r1, 8
/* 802745C4 0023DB84  90 1F 00 80 */	stw r0, 0x80(r31)
/* 802745C8 0023DB88  38 80 FF FF */	li r4, -1
/* 802745CC 0023DB8C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802745D0 0023DB90  90 1F 00 84 */	stw r0, 0x84(r31)
/* 802745D4 0023DB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802745D8 0023DB98  90 1F 00 88 */	stw r0, 0x88(r31)
/* 802745DC 0023DB9C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802745E0 0023DBA0  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802745E4 0023DBA4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802745E8 0023DBA8  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802745EC 0023DBAC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802745F0 0023DBB0  90 1F 00 94 */	stw r0, 0x94(r31)
/* 802745F4 0023DBB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802745F8 0023DBB8  90 1F 00 98 */	stw r0, 0x98(r31)
/* 802745FC 0023DBBC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80274600 0023DBC0  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 80274604 0023DBC4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80274608 0023DBC8  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 8027460C 0023DBCC  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80274610 0023DBD0  98 1F 00 A4 */	stb r0, 0xa4(r31)
/* 80274614 0023DBD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80274618 0023DBD8  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 8027461C 0023DBDC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80274620 0023DBE0  90 1F 00 AC */	stw r0, 0xac(r31)
/* 80274624 0023DBE4  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 80274628 0023DBE8  98 1F 00 B0 */	stb r0, 0xb0(r31)
/* 8027462C 0023DBEC  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 80274630 0023DBF0  98 1F 00 B1 */	stb r0, 0xb1(r31)
/* 80274634 0023DBF4  88 01 00 3E */	lbz r0, 0x3e(r1)
/* 80274638 0023DBF8  98 1F 00 B2 */	stb r0, 0xb2(r31)
/* 8027463C 0023DBFC  88 01 00 3F */	lbz r0, 0x3f(r1)
/* 80274640 0023DC00  98 1F 00 B3 */	stb r0, 0xb3(r31)
/* 80274644 0023DC04  88 01 00 40 */	lbz r0, 0x40(r1)
/* 80274648 0023DC08  98 1F 00 B4 */	stb r0, 0xb4(r31)
/* 8027464C 0023DC0C  88 01 00 41 */	lbz r0, 0x41(r1)
/* 80274650 0023DC10  98 1F 00 B5 */	stb r0, 0xb5(r31)
/* 80274654 0023DC14  4B FB 70 4D */	bl func_8022B6A0
/* 80274658 0023DC18  81 9F 00 7C */	lwz r12, 0x7c(r31)
/* 8027465C 0023DC1C  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80274660 0023DC20  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80274664 0023DC24  7D 89 03 A6 */	mtctr r12
/* 80274668 0023DC28  4E 80 04 21 */	bctrl 
/* 8027466C 0023DC2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80274670 0023DC30  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80274674 0023DC34  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80274678 0023DC38  7C 08 03 A6 */	mtlr r0
/* 8027467C 0023DC3C  38 21 00 50 */	addi r1, r1, 0x50
/* 80274680 0023DC40  4E 80 00 20 */	blr 

.global func_80274684
func_80274684:
/* 80274684 0023DC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274688 0023DC48  7C 08 02 A6 */	mflr r0
/* 8027468C 0023DC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274690 0023DC50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80274694 0023DC54  7C 7F 1B 78 */	mr r31, r3
/* 80274698 0023DC58  48 1D 43 AD */	bl func_80448A44
/* 8027469C 0023DC5C  38 7F 00 74 */	addi r3, r31, 0x74
/* 802746A0 0023DC60  4B EC 4A 41 */	bl func_801390E0
/* 802746A4 0023DC64  38 7F 00 7C */	addi r3, r31, 0x7c
/* 802746A8 0023DC68  4B FB 71 4D */	bl func_8022B7F4
/* 802746AC 0023DC6C  38 60 00 02 */	li r3, 2
/* 802746B0 0023DC70  4B DC 63 DD */	bl func_8003AA8C
/* 802746B4 0023DC74  2C 1F 00 00 */	cmpwi r31, 0
/* 802746B8 0023DC78  38 00 00 00 */	li r0, 0
/* 802746BC 0023DC7C  90 0D B0 54 */	stw r0, lbl_806671D4@sda21(r13)
/* 802746C0 0023DC80  7F E4 FB 78 */	mr r4, r31
/* 802746C4 0023DC84  90 0D B0 50 */	stw r0, lbl_806671D0@sda21(r13)
/* 802746C8 0023DC88  41 82 00 08 */	beq .L_802746D0
/* 802746CC 0023DC8C  38 9F 00 70 */	addi r4, r31, 0x70
.L_802746D0:
/* 802746D0 0023DC90  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802746D4 0023DC94  48 22 18 7D */	bl func_80495F50
/* 802746D8 0023DC98  4B EC 72 A9 */	bl func_8013B980
/* 802746DC 0023DC9C  4B EC 72 C9 */	bl func_8013B9A4
/* 802746E0 0023DCA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802746E4 0023DCA4  40 82 00 0C */	bne .L_802746F0
/* 802746E8 0023DCA8  38 60 00 00 */	li r3, 0
/* 802746EC 0023DCAC  4B E0 E2 61 */	bl func_8008294C
.L_802746F0:
/* 802746F0 0023DCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802746F4 0023DCB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802746F8 0023DCB8  7C 08 03 A6 */	mtlr r0
/* 802746FC 0023DCBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80274700 0023DCC0  4E 80 00 20 */	blr 

.global func_80274704
func_80274704:
/* 80274704 0023DCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274708 0023DCC8  7C 08 02 A6 */	mflr r0
/* 8027470C 0023DCCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274710 0023DCD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80274714 0023DCD4  7C 7F 1B 78 */	mr r31, r3
/* 80274718 0023DCD8  93 C1 00 08 */	stw r30, 8(r1)
/* 8027471C 0023DCDC  4B DC BD CD */	bl func_800404E8
/* 80274720 0023DCE0  4B DC DF D1 */	bl func_800426F0
/* 80274724 0023DCE4  2C 03 00 00 */	cmpwi r3, 0
/* 80274728 0023DCE8  40 82 01 70 */	bne .L_80274898
/* 8027472C 0023DCEC  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80274730 0023DCF0  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80274734 0023DCF4  41 82 00 08 */	beq .L_8027473C
/* 80274738 0023DCF8  48 00 01 60 */	b .L_80274898
.L_8027473C:
/* 8027473C 0023DCFC  4B EC 77 15 */	bl func_8013BE50
/* 80274740 0023DD00  2C 03 00 00 */	cmpwi r3, 0
/* 80274744 0023DD04  41 82 01 54 */	beq .L_80274898
/* 80274748 0023DD08  48 02 5F 11 */	bl func_8029A658
/* 8027474C 0023DD0C  2C 03 00 00 */	cmpwi r3, 0
/* 80274750 0023DD10  40 82 01 48 */	bne .L_80274898
/* 80274754 0023DD14  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 80274758 0023DD18  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 8027475C 0023DD1C  41 82 00 10 */	beq .L_8027476C
/* 80274760 0023DD20  38 00 00 01 */	li r0, 1
/* 80274764 0023DD24  98 1F 00 64 */	stb r0, 0x64(r31)
/* 80274768 0023DD28  48 00 01 30 */	b .L_80274898
.L_8027476C:
/* 8027476C 0023DD2C  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 80274770 0023DD30  2C 00 00 00 */	cmpwi r0, 0
/* 80274774 0023DD34  41 82 00 20 */	beq .L_80274794
/* 80274778 0023DD38  2C 00 00 01 */	cmpwi r0, 1
/* 8027477C 0023DD3C  41 82 00 90 */	beq .L_8027480C
/* 80274780 0023DD40  2C 00 00 02 */	cmpwi r0, 2
/* 80274784 0023DD44  41 82 00 A4 */	beq .L_80274828
/* 80274788 0023DD48  2C 00 00 03 */	cmpwi r0, 3
/* 8027478C 0023DD4C  41 82 00 E4 */	beq .L_80274870
/* 80274790 0023DD50  48 00 01 00 */	b .L_80274890
.L_80274794:
/* 80274794 0023DD54  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80274798 0023DD58  4B FB 71 09 */	bl func_8022B8A0
/* 8027479C 0023DD5C  2C 03 00 00 */	cmpwi r3, 0
/* 802747A0 0023DD60  41 82 00 F0 */	beq .L_80274890
/* 802747A4 0023DD64  80 0D B0 54 */	lwz r0, lbl_806671D4@sda21(r13)
/* 802747A8 0023DD68  2C 00 00 00 */	cmpwi r0, 0
/* 802747AC 0023DD6C  41 82 00 E4 */	beq .L_80274890
/* 802747B0 0023DD70  38 00 00 01 */	li r0, 1
/* 802747B4 0023DD74  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 802747B8 0023DD78  3F C0 80 51 */	lis r30, lbl_8050A244@ha
/* 802747BC 0023DD7C  A0 BF 00 BA */	lhz r5, 0xba(r31)
/* 802747C0 0023DD80  3B DE A2 44 */	addi r30, r30, lbl_8050A244@l
/* 802747C4 0023DD84  80 6D A8 50 */	lwz r3, lbl_806669D0@sda21(r13)
/* 802747C8 0023DD88  38 9E 00 18 */	addi r4, r30, 0x18
/* 802747CC 0023DD8C  4B EC 1A 89 */	bl func_80136254
/* 802747D0 0023DD90  7C 60 1B 78 */	mr r0, r3
/* 802747D4 0023DD94  80 6D B0 54 */	lwz r3, lbl_806671D4@sda21(r13)
/* 802747D8 0023DD98  38 9E 00 18 */	addi r4, r30, 0x18
/* 802747DC 0023DD9C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802747E0 0023DDA0  4B EC 1B BD */	bl func_8013639C
/* 802747E4 0023DDA4  7C 64 1B 78 */	mr r4, r3
/* 802747E8 0023DDA8  38 7F 00 7C */	addi r3, r31, 0x7c
/* 802747EC 0023DDAC  38 A0 00 00 */	li r5, 0
/* 802747F0 0023DDB0  4B FB 71 C5 */	bl func_8022B9B4
/* 802747F4 0023DDB4  38 7F 00 7C */	addi r3, r31, 0x7c
/* 802747F8 0023DDB8  38 80 00 01 */	li r4, 1
/* 802747FC 0023DDBC  4B FB 77 CD */	bl func_8022BFC8
/* 80274800 0023DDC0  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80274804 0023DDC4  4B FB 70 B5 */	bl func_8022B8B8
/* 80274808 0023DDC8  48 00 00 88 */	b .L_80274890
.L_8027480C:
/* 8027480C 0023DDCC  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80274810 0023DDD0  4B FB 70 A1 */	bl func_8022B8B0
/* 80274814 0023DDD4  2C 03 00 00 */	cmpwi r3, 0
/* 80274818 0023DDD8  41 82 00 78 */	beq .L_80274890
/* 8027481C 0023DDDC  38 00 00 02 */	li r0, 2
/* 80274820 0023DDE0  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 80274824 0023DDE4  48 00 00 6C */	b .L_80274890
.L_80274828:
/* 80274828 0023DDE8  4B E1 29 95 */	bl func_800871BC
/* 8027482C 0023DDEC  7C 7E 1B 78 */	mr r30, r3
/* 80274830 0023DDF0  38 60 FF FF */	li r3, -1
/* 80274834 0023DDF4  4B E1 27 69 */	bl func_80086F9C
/* 80274838 0023DDF8  2C 03 00 00 */	cmpwi r3, 0
/* 8027483C 0023DDFC  41 82 00 10 */	beq .L_8027484C
/* 80274840 0023DE00  80 1E 00 04 */	lwz r0, 4(r30)
/* 80274844 0023DE04  54 00 5F FE */	rlwinm r0, r0, 0xb, 0x1f, 0x1f
/* 80274848 0023DE08  48 00 00 0C */	b .L_80274854
.L_8027484C:
/* 8027484C 0023DE0C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80274850 0023DE10  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
.L_80274854:
/* 80274854 0023DE14  2C 00 00 00 */	cmpwi r0, 0
/* 80274858 0023DE18  41 82 00 38 */	beq .L_80274890
/* 8027485C 0023DE1C  38 00 00 03 */	li r0, 3
/* 80274860 0023DE20  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 80274864 0023DE24  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80274868 0023DE28  4B FB 70 7D */	bl func_8022B8E4
/* 8027486C 0023DE2C  48 00 00 24 */	b .L_80274890
.L_80274870:
/* 80274870 0023DE30  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80274874 0023DE34  4B FB 70 3D */	bl func_8022B8B0
/* 80274878 0023DE38  2C 03 00 00 */	cmpwi r3, 0
/* 8027487C 0023DE3C  41 82 00 14 */	beq .L_80274890
/* 80274880 0023DE40  38 60 00 00 */	li r3, 0
/* 80274884 0023DE44  38 00 00 01 */	li r0, 1
/* 80274888 0023DE48  98 7F 00 67 */	stb r3, 0x67(r31)
/* 8027488C 0023DE4C  98 1F 00 64 */	stb r0, 0x64(r31)
.L_80274890:
/* 80274890 0023DE50  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80274894 0023DE54  4B FB 6E B5 */	bl func_8022B748
.L_80274898:
/* 80274898 0023DE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027489C 0023DE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802748A0 0023DE60  83 C1 00 08 */	lwz r30, 8(r1)
/* 802748A4 0023DE64  7C 08 03 A6 */	mtlr r0
/* 802748A8 0023DE68  38 21 00 10 */	addi r1, r1, 0x10
/* 802748AC 0023DE6C  4E 80 00 20 */	blr

.global func_802748B0
func_802748B0:
/* 802748B0 0023DE70  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802748B4 0023DE74  7C 08 02 A6 */	mflr r0
/* 802748B8 0023DE78  90 01 00 74 */	stw r0, 0x74(r1)
/* 802748BC 0023DE7C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802748C0 0023DE80  7C 7F 1B 78 */	mr r31, r3
/* 802748C4 0023DE84  4B DC BC 25 */	bl func_800404E8
/* 802748C8 0023DE88  4B DC DE 29 */	bl func_800426F0
/* 802748CC 0023DE8C  2C 03 00 00 */	cmpwi r3, 0
/* 802748D0 0023DE90  40 82 00 64 */	bne .L_80274934
/* 802748D4 0023DE94  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 802748D8 0023DE98  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 802748DC 0023DE9C  41 82 00 08 */	beq .L_802748E4
/* 802748E0 0023DEA0  48 00 00 54 */	b .L_80274934
.L_802748E4:
/* 802748E4 0023DEA4  4B EC 75 6D */	bl func_8013BE50
/* 802748E8 0023DEA8  2C 03 00 00 */	cmpwi r3, 0
/* 802748EC 0023DEAC  41 82 00 48 */	beq .L_80274934
/* 802748F0 0023DEB0  48 02 5D 69 */	bl func_8029A658
/* 802748F4 0023DEB4  2C 03 00 00 */	cmpwi r3, 0
/* 802748F8 0023DEB8  40 82 00 3C */	bne .L_80274934
/* 802748FC 0023DEBC  38 60 00 00 */	li r3, 0
/* 80274900 0023DEC0  38 80 00 00 */	li r4, 0
/* 80274904 0023DEC4  38 A0 00 00 */	li r5, 0
/* 80274908 0023DEC8  48 0A 99 39 */	bl GXSetZMode
/* 8027490C 0023DECC  38 61 00 08 */	addi r3, r1, 8
/* 80274910 0023DED0  48 19 3D 59 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 80274914 0023DED4  38 61 00 08 */	addi r3, r1, 8
/* 80274918 0023DED8  4B EC 29 39 */	bl func_80137250
/* 8027491C 0023DEDC  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80274920 0023DEE0  38 81 00 08 */	addi r4, r1, 8
/* 80274924 0023DEE4  4B FB 6E A5 */	bl func_8022B7C8
/* 80274928 0023DEE8  38 61 00 08 */	addi r3, r1, 8
/* 8027492C 0023DEEC  38 80 FF FF */	li r4, -1
/* 80274930 0023DEF0  48 19 3D AD */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_80274934:
/* 80274934 0023DEF4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80274938 0023DEF8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8027493C 0023DEFC  7C 08 03 A6 */	mtlr r0
/* 80274940 0023DF00  38 21 00 70 */	addi r1, r1, 0x70
/* 80274944 0023DF04  4E 80 00 20 */	blr 

.global func_80274948
func_80274948:
/* 80274948 0023DF08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027494C 0023DF0C  7C 08 02 A6 */	mflr r0
/* 80274950 0023DF10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80274954 0023DF14  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80274958 0023DF18  7C 7C 1B 78 */	mr r28, r3
/* 8027495C 0023DF1C  7C 9D 23 78 */	mr r29, r4
/* 80274960 0023DF20  7C BE 2B 78 */	mr r30, r5
/* 80274964 0023DF24  80 0D B0 50 */	lwz r0, lbl_806671D0@sda21(r13)
/* 80274968 0023DF28  2C 00 00 00 */	cmpwi r0, 0
/* 8027496C 0023DF2C  41 82 00 0C */	beq .L_80274978
/* 80274970 0023DF30  38 60 00 00 */	li r3, 0
/* 80274974 0023DF34  48 00 00 F4 */	b .L_80274A68
.L_80274978:
/* 80274978 0023DF38  48 1C 2C 3D */	bl func_804375B4
/* 8027497C 0023DF3C  7C 64 1B 78 */	mr r4, r3
/* 80274980 0023DF40  38 60 00 BC */	li r3, 0xbc
/* 80274984 0023DF44  48 1C 00 D9 */	bl func_80434A5C
/* 80274988 0023DF48  2C 03 00 00 */	cmpwi r3, 0
/* 8027498C 0023DF4C  7C 7F 1B 78 */	mr r31, r3
/* 80274990 0023DF50  41 82 00 C0 */	beq .L_80274A50
/* 80274994 0023DF54  48 1D 00 85 */	bl __ct__8CProcessFv
/* 80274998 0023DF58  3C 60 80 53 */	lis r3, __vt__CTTask_IUIWindow@ha
/* 8027499C 0023DF5C  3D 60 80 51 */	lis r11, lbl_8050CE10@ha
/* 802749A0 0023DF60  38 63 0A 08 */	addi r3, r3, __vt__CTTask_IUIWindow@l
/* 802749A4 0023DF64  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802749A8 0023DF68  39 6B CE 10 */	addi r11, r11, lbl_8050CE10@l
/* 802749AC 0023DF6C  3C C0 80 54 */	lis r6, __vt__CSysWinBuff@ha
/* 802749B0 0023DF70  80 0B 00 04 */	lwz r0, 4(r11)
/* 802749B4 0023DF74  38 C6 B5 78 */	addi r6, r6, __vt__CSysWinBuff@l
/* 802749B8 0023DF78  80 6B 00 00 */	lwz r3, 0(r11)
/* 802749BC 0023DF7C  3B 60 00 00 */	li r27, 0
/* 802749C0 0023DF80  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 802749C4 0023DF84  39 00 FF FF */	li r8, -1
/* 802749C8 0023DF88  38 E0 00 01 */	li r7, 1
/* 802749CC 0023DF8C  38 A6 00 24 */	addi r5, r6, 0x24
/* 802749D0 0023DF90  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802749D4 0023DF94  38 06 00 AC */	addi r0, r6, 0xac
/* 802749D8 0023DF98  38 7F 00 7C */	addi r3, r31, 0x7c
/* 802749DC 0023DF9C  38 80 00 00 */	li r4, 0
/* 802749E0 0023DFA0  81 2B 00 08 */	lwz r9, 8(r11)
/* 802749E4 0023DFA4  91 3F 00 44 */	stw r9, 0x44(r31)
/* 802749E8 0023DFA8  81 2B 00 04 */	lwz r9, 4(r11)
/* 802749EC 0023DFAC  81 4B 00 00 */	lwz r10, 0(r11)
/* 802749F0 0023DFB0  91 5F 00 48 */	stw r10, 0x48(r31)
/* 802749F4 0023DFB4  91 3F 00 4C */	stw r9, 0x4c(r31)
/* 802749F8 0023DFB8  81 2B 00 08 */	lwz r9, 8(r11)
/* 802749FC 0023DFBC  91 3F 00 50 */	stw r9, 0x50(r31)
/* 80274A00 0023DFC0  93 7F 00 54 */	stw r27, 0x54(r31)
/* 80274A04 0023DFC4  93 7F 00 58 */	stw r27, 0x58(r31)
/* 80274A08 0023DFC8  93 7F 00 5C */	stw r27, 0x5c(r31)
/* 80274A0C 0023DFCC  91 1F 00 60 */	stw r8, 0x60(r31)
/* 80274A10 0023DFD0  9B 7F 00 64 */	stb r27, 0x64(r31)
/* 80274A14 0023DFD4  9B 7F 00 65 */	stb r27, 0x65(r31)
/* 80274A18 0023DFD8  9B 7F 00 66 */	stb r27, 0x66(r31)
/* 80274A1C 0023DFDC  98 FF 00 67 */	stb r7, 0x67(r31)
/* 80274A20 0023DFE0  93 7F 00 68 */	stw r27, 0x68(r31)
/* 80274A24 0023DFE4  90 DF 00 10 */	stw r6, 0x10(r31)
/* 80274A28 0023DFE8  90 BF 00 6C */	stw r5, 0x6c(r31)
/* 80274A2C 0023DFEC  90 1F 00 70 */	stw r0, 0x70(r31)
/* 80274A30 0023DFF0  93 7F 00 74 */	stw r27, 0x74(r31)
/* 80274A34 0023DFF4  93 BF 00 78 */	stw r29, 0x78(r31)
/* 80274A38 0023DFF8  4B FB 6B E1 */	bl func_8022B618
/* 80274A3C 0023DFFC  9B 7F 00 B8 */	stb r27, 0xb8(r31)
/* 80274A40 0023E000  38 60 00 01 */	li r3, 1
/* 80274A44 0023E004  B3 DF 00 BA */	sth r30, 0xba(r31)
/* 80274A48 0023E008  4B E0 DF 05 */	bl func_8008294C
/* 80274A4C 0023E00C  4B EC 6F 25 */	bl func_8013B970
.L_80274A50:
/* 80274A50 0023E010  93 ED B0 50 */	stw r31, lbl_806671D0@sda21(r13)
/* 80274A54 0023E014  7F E3 FB 78 */	mr r3, r31
/* 80274A58 0023E018  7F 84 E3 78 */	mr r4, r28
/* 80274A5C 0023E01C  38 A0 00 00 */	li r5, 0
/* 80274A60 0023E020  48 1D 02 15 */	bl func_80444C74
/* 80274A64 0023E024  80 6D B0 50 */	lwz r3, lbl_806671D0@sda21(r13)
.L_80274A68:
/* 80274A68 0023E028  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80274A6C 0023E02C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80274A70 0023E030  7C 08 03 A6 */	mtlr r0
/* 80274A74 0023E034  38 21 00 20 */	addi r1, r1, 0x20
/* 80274A78 0023E038  4E 80 00 20 */	blr 

.global func_80274A7C
func_80274A7C:
/* 80274A7C 0023E03C  80 6D B0 50 */	lwz r3, lbl_806671D0@sda21(r13)
/* 80274A80 0023E040  4E 80 00 20 */	blr

.global func_80274A84
func_80274A84:
/* 80274A84 0023E044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80274A88 0023E048  7C 08 02 A6 */	mflr r0
/* 80274A8C 0023E04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80274A90 0023E050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80274A94 0023E054  93 C1 00 08 */	stw r30, 8(r1)
/* 80274A98 0023E058  7C 7E 1B 78 */	mr r30, r3
/* 80274A9C 0023E05C  80 A3 00 74 */	lwz r5, 0x74(r3)
/* 80274AA0 0023E060  80 04 00 04 */	lwz r0, 4(r4)
/* 80274AA4 0023E064  7C 05 00 40 */	cmplw r5, r0
/* 80274AA8 0023E068  40 82 00 3C */	bne .L_80274AE4
/* 80274AAC 0023E06C  80 85 00 04 */	lwz r4, 4(r5)
/* 80274AB0 0023E070  3B E0 00 00 */	li r31, 0
/* 80274AB4 0023E074  38 60 00 02 */	li r3, 2
/* 80274AB8 0023E078  93 E5 00 04 */	stw r31, 4(r5)
/* 80274ABC 0023E07C  4B DC 5F BD */	bl func_8003AA78
/* 80274AC0 0023E080  4B DC 5F 75 */	bl func_8003AA34
/* 80274AC4 0023E084  3C 60 80 51 */	lis r3, lbl_8050A244@ha
/* 80274AC8 0023E088  38 63 A2 44 */	addi r3, r3, lbl_8050A244@l
/* 80274ACC 0023E08C  38 63 00 1D */	addi r3, r3, 0x1d
/* 80274AD0 0023E090  4B DC 5F D5 */	bl func_8003AAA4
/* 80274AD4 0023E094  90 6D B0 54 */	stw r3, lbl_806671D4@sda21(r13)
/* 80274AD8 0023E098  38 60 00 01 */	li r3, 1
/* 80274ADC 0023E09C  93 FE 00 74 */	stw r31, 0x74(r30)
/* 80274AE0 0023E0A0  48 00 00 08 */	b .L_80274AE8
.L_80274AE4:
/* 80274AE4 0023E0A4  38 60 00 00 */	li r3, 0
.L_80274AE8:
/* 80274AE8 0023E0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274AEC 0023E0AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80274AF0 0023E0B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80274AF4 0023E0B4  7C 08 03 A6 */	mtlr r0
/* 80274AF8 0023E0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80274AFC 0023E0BC  4E 80 00 20 */	blr 

.global func_80274B00
func_80274B00:
/* 80274B00 0023E0C0  38 63 FF 94 */	addi r3, r3, -108
/* 80274B04 0023E0C4  4B FF FF 80 */	b func_80274A84

.global func_80274B08
func_80274B08:
/* 80274B08 0023E0C8  38 63 FF 94 */	addi r3, r3, -108
/* 80274B0C 0023E0CC  4B FF F9 C8 */	b func_802744D4

.global func_80274B10
func_80274B10:
/* 80274B10 0023E0D0  38 63 FF 90 */	addi r3, r3, -112
/* 80274B14 0023E0D4  4B FF FD 9C */	b func_802748B0

.global func_80274B18
func_80274B18:
/* 80274B18 0023E0D8  38 63 FF 90 */	addi r3, r3, -112
/* 80274B1C 0023E0DC  4B FF F9 B8 */	b func_802744D4

.global func_80274B20
func_80274B20:
/* 80274B20 0023E0E0  4E 80 00 20 */	blr 

.global func_80274B24
func_80274B24:
/* 80274B24 0023E0E4  4E 80 00 20 */	blr 

.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_802744D4
	.4byte 0x00000074
	.4byte lbl_8001840C
	.4byte func_80274548
	.4byte 0x0000013C
	.4byte lbl_80018440
	.4byte func_80274684
	.4byte 0x00000080
	.4byte lbl_80018448
	.4byte func_80274704
	.4byte 0x000001AC
	.4byte lbl_80018450
	.4byte func_802748B0
	.4byte 0x00000098
	.4byte lbl_80018458
	.4byte func_80274948
	.4byte 0x00000134
	.4byte lbl_80018470
	.4byte func_80274A84
	.4byte 0x0000007C
	.4byte lbl_800184B8