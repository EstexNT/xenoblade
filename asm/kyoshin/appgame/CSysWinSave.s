.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802944D8
func_802944D8:
/* 802944D8 0025DA98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802944DC 0025DA9C  7C 08 02 A6 */	mflr r0
/* 802944E0 0025DAA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802944E4 0025DAA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802944E8 0025DAA8  7C 9F 23 78 */	mr r31, r4
/* 802944EC 0025DAAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802944F0 0025DAB0  7C 7E 1B 78 */	mr r30, r3
/* 802944F4 0025DAB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802944F8 0025DAB8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802944FC 0025DABC  80 0D B1 78 */	lwz r0, lbl_806672F8@sda21(r13)
/* 80294500 0025DAC0  2C 00 00 00 */	cmpwi r0, 0
/* 80294504 0025DAC4  41 82 00 0C */	beq .L_80294510
/* 80294508 0025DAC8  38 60 00 00 */	li r3, 0
/* 8029450C 0025DACC  48 00 00 F8 */	b .L_80294604
.L_80294510:
/* 80294510 0025DAD0  48 1A 30 A5 */	bl func_804375B4
/* 80294514 0025DAD4  7C 64 1B 78 */	mr r4, r3
/* 80294518 0025DAD8  38 60 00 E0 */	li r3, 0xe0
/* 8029451C 0025DADC  48 1A 05 41 */	bl func_80434A5C
/* 80294520 0025DAE0  2C 03 00 00 */	cmpwi r3, 0
/* 80294524 0025DAE4  7C 7C 1B 78 */	mr r28, r3
/* 80294528 0025DAE8  41 82 00 C4 */	beq .L_802945EC
/* 8029452C 0025DAEC  48 1B 04 ED */	bl __ct__8CProcessFv
/* 80294530 0025DAF0  3C 60 80 53 */	lis r3, __vt__CTTask_IUIWindow@ha
/* 80294534 0025DAF4  3D 40 80 51 */	lis r10, lbl_8050CE10@ha
/* 80294538 0025DAF8  38 63 0A 08 */	addi r3, r3, __vt__CTTask_IUIWindow@l
/* 8029453C 0025DAFC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80294540 0025DB00  39 4A CE 10 */	addi r10, r10, lbl_8050CE10@l
/* 80294544 0025DB04  3C A0 80 54 */	lis r5, __vt__CSysWinSave@ha
/* 80294548 0025DB08  80 0A 00 04 */	lwz r0, 4(r10)
/* 8029454C 0025DB0C  38 A5 C1 58 */	addi r5, r5, __vt__CSysWinSave@l
/* 80294550 0025DB10  80 6A 00 00 */	lwz r3, 0(r10)
/* 80294554 0025DB14  3B A0 00 00 */	li r29, 0
/* 80294558 0025DB18  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8029455C 0025DB1C  38 E0 FF FF */	li r7, -1
/* 80294560 0025DB20  38 C0 00 01 */	li r6, 1
/* 80294564 0025DB24  38 85 00 24 */	addi r4, r5, 0x24
/* 80294568 0025DB28  90 1C 00 40 */	stw r0, 0x40(r28)
/* 8029456C 0025DB2C  38 05 00 AC */	addi r0, r5, 0xac
/* 80294570 0025DB30  38 7C 00 78 */	addi r3, r28, 0x78
/* 80294574 0025DB34  81 0A 00 08 */	lwz r8, 8(r10)
/* 80294578 0025DB38  91 1C 00 44 */	stw r8, 0x44(r28)
/* 8029457C 0025DB3C  81 0A 00 04 */	lwz r8, 4(r10)
/* 80294580 0025DB40  81 2A 00 00 */	lwz r9, 0(r10)
/* 80294584 0025DB44  91 3C 00 48 */	stw r9, 0x48(r28)
/* 80294588 0025DB48  91 1C 00 4C */	stw r8, 0x4c(r28)
/* 8029458C 0025DB4C  81 0A 00 08 */	lwz r8, 8(r10)
/* 80294590 0025DB50  91 1C 00 50 */	stw r8, 0x50(r28)
/* 80294594 0025DB54  93 BC 00 54 */	stw r29, 0x54(r28)
/* 80294598 0025DB58  93 BC 00 58 */	stw r29, 0x58(r28)
/* 8029459C 0025DB5C  93 BC 00 5C */	stw r29, 0x5c(r28)
/* 802945A0 0025DB60  90 FC 00 60 */	stw r7, 0x60(r28)
/* 802945A4 0025DB64  9B BC 00 64 */	stb r29, 0x64(r28)
/* 802945A8 0025DB68  9B BC 00 65 */	stb r29, 0x65(r28)
/* 802945AC 0025DB6C  9B BC 00 66 */	stb r29, 0x66(r28)
/* 802945B0 0025DB70  98 DC 00 67 */	stb r6, 0x67(r28)
/* 802945B4 0025DB74  93 BC 00 68 */	stw r29, 0x68(r28)
/* 802945B8 0025DB78  90 BC 00 10 */	stw r5, 0x10(r28)
/* 802945BC 0025DB7C  90 9C 00 6C */	stw r4, 0x6c(r28)
/* 802945C0 0025DB80  90 1C 00 70 */	stw r0, 0x70(r28)
/* 802945C4 0025DB84  93 FC 00 74 */	stw r31, 0x74(r28)
/* 802945C8 0025DB88  48 1C AF 9D */	bl func_8045F564
/* 802945CC 0025DB8C  38 7C 00 88 */	addi r3, r28, 0x88
/* 802945D0 0025DB90  38 80 00 00 */	li r4, 0
/* 802945D4 0025DB94  4B F9 70 45 */	bl func_8022B618
/* 802945D8 0025DB98  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 802945DC 0025DB9C  38 80 00 00 */	li r4, 0
/* 802945E0 0025DBA0  4B F3 E4 1D */	bl func_801D29FC
/* 802945E4 0025DBA4  9B BC 00 DC */	stb r29, 0xdc(r28)
/* 802945E8 0025DBA8  9B BC 00 DD */	stb r29, 0xdd(r28)
.L_802945EC:
/* 802945EC 0025DBAC  93 8D B1 78 */	stw r28, lbl_806672F8@sda21(r13)
/* 802945F0 0025DBB0  7F 83 E3 78 */	mr r3, r28
/* 802945F4 0025DBB4  7F C4 F3 78 */	mr r4, r30
/* 802945F8 0025DBB8  38 A0 00 00 */	li r5, 0
/* 802945FC 0025DBBC  48 1B 06 79 */	bl func_80444C74
/* 80294600 0025DBC0  80 6D B1 78 */	lwz r3, lbl_806672F8@sda21(r13)
.L_80294604:
/* 80294604 0025DBC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80294608 0025DBC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029460C 0025DBCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80294610 0025DBD0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80294614 0025DBD4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80294618 0025DBD8  7C 08 03 A6 */	mtlr r0
/* 8029461C 0025DBDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80294620 0025DBE0  4E 80 00 20 */	blr 

.global func_80294624
func_80294624:
/* 80294624 0025DBE4  80 6D B1 78 */	lwz r3, lbl_806672F8@sda21(r13)
/* 80294628 0025DBE8  7C 03 00 D0 */	neg r0, r3
/* 8029462C 0025DBEC  7C 00 1B 78 */	or r0, r0, r3
/* 80294630 0025DBF0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80294634 0025DBF4  4E 80 00 20 */	blr 

.global func_80294638
func_80294638:
/* 80294638 0025DBF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029463C 0025DBFC  7C 08 02 A6 */	mflr r0
/* 80294640 0025DC00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80294644 0025DC04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80294648 0025DC08  7C 7F 1B 78 */	mr r31, r3
/* 8029464C 0025DC0C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80294650 0025DC10  4B DF 2B E9 */	bl func_80087238
/* 80294654 0025DC14  7C 7E 1B 78 */	mr r30, r3
/* 80294658 0025DC18  38 60 FF FF */	li r3, -1
/* 8029465C 0025DC1C  4B DF 29 41 */	bl func_80086F9C
/* 80294660 0025DC20  2C 03 00 00 */	cmpwi r3, 0
/* 80294664 0025DC24  41 82 00 3C */	beq .L_802946A0
/* 80294668 0025DC28  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 8029466C 0025DC2C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80294670 0025DC30  70 05 80 04 */	andi. r5, r0, 0x8004
/* 80294674 0025DC34  54 03 03 DE */	rlwinm r3, r0, 0, 0xf, 0xf
/* 80294678 0025DC38  50 03 07 38 */	rlwimi r3, r0, 0, 0x1c, 0x1c
/* 8029467C 0025DC3C  54 86 5F FE */	rlwinm r6, r4, 0xb, 0x1f, 0x1f
/* 80294680 0025DC40  7C 03 00 D0 */	neg r0, r3
/* 80294684 0025DC44  54 87 57 FE */	rlwinm r7, r4, 0xa, 0x1f, 0x1f
/* 80294688 0025DC48  7C 85 00 D0 */	neg r4, r5
/* 8029468C 0025DC4C  7C 00 1B 78 */	or r0, r0, r3
/* 80294690 0025DC50  7C 84 2B 78 */	or r4, r4, r5
/* 80294694 0025DC54  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80294698 0025DC58  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8029469C 0025DC5C  48 00 00 38 */	b .L_802946D4
.L_802946A0:
/* 802946A0 0025DC60  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 802946A4 0025DC64  80 9E 00 04 */	lwz r4, 4(r30)
/* 802946A8 0025DC68  70 05 80 04 */	andi. r5, r0, 0x8004
/* 802946AC 0025DC6C  54 03 03 DE */	rlwinm r3, r0, 0, 0xf, 0xf
/* 802946B0 0025DC70  50 03 07 38 */	rlwimi r3, r0, 0, 0x1c, 0x1c
/* 802946B4 0025DC74  54 86 E7 FE */	rlwinm r6, r4, 0x1c, 0x1f, 0x1f
/* 802946B8 0025DC78  7C 03 00 D0 */	neg r0, r3
/* 802946BC 0025DC7C  54 87 DF FE */	rlwinm r7, r4, 0x1b, 0x1f, 0x1f
/* 802946C0 0025DC80  7C 85 00 D0 */	neg r4, r5
/* 802946C4 0025DC84  7C 00 1B 78 */	or r0, r0, r3
/* 802946C8 0025DC88  7C 84 2B 78 */	or r4, r4, r5
/* 802946CC 0025DC8C  54 83 0F FE */	srwi r3, r4, 0x1f
/* 802946D0 0025DC90  54 00 0F FE */	srwi r0, r0, 0x1f
.L_802946D4:
/* 802946D4 0025DC94  2C 06 00 00 */	cmpwi r6, 0
/* 802946D8 0025DC98  41 82 00 2C */	beq .L_80294704
/* 802946DC 0025DC9C  38 00 00 03 */	li r0, 3
/* 802946E0 0025DCA0  98 1F 00 DC */	stb r0, 0xdc(r31)
/* 802946E4 0025DCA4  38 7F 00 88 */	addi r3, r31, 0x88
/* 802946E8 0025DCA8  4B F9 71 FD */	bl func_8022B8E4
/* 802946EC 0025DCAC  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802946F0 0025DCB0  38 80 00 00 */	li r4, 0
/* 802946F4 0025DCB4  4B F3 DA 79 */	bl func_801D216C
/* 802946F8 0025DCB8  38 60 00 03 */	li r3, 3
/* 802946FC 0025DCBC  4B EA 39 7D */	bl func_80138078
/* 80294700 0025DCC0  48 00 00 F4 */	b .L_802947F4
.L_80294704:
/* 80294704 0025DCC4  2C 07 00 00 */	cmpwi r7, 0
/* 80294708 0025DCC8  41 82 00 34 */	beq .L_8029473C
/* 8029470C 0025DCCC  38 00 00 03 */	li r0, 3
/* 80294710 0025DCD0  98 1F 00 DC */	stb r0, 0xdc(r31)
/* 80294714 0025DCD4  38 7F 00 88 */	addi r3, r31, 0x88
/* 80294718 0025DCD8  4B F9 71 CD */	bl func_8022B8E4
/* 8029471C 0025DCDC  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 80294720 0025DCE0  38 80 00 00 */	li r4, 0
/* 80294724 0025DCE4  4B F3 DA 49 */	bl func_801D216C
/* 80294728 0025DCE8  38 00 00 01 */	li r0, 1
/* 8029472C 0025DCEC  98 1F 00 DD */	stb r0, 0xdd(r31)
/* 80294730 0025DCF0  38 60 00 06 */	li r3, 6
/* 80294734 0025DCF4  4B EA 39 45 */	bl func_80138078
/* 80294738 0025DCF8  48 00 00 BC */	b .L_802947F4
.L_8029473C:
/* 8029473C 0025DCFC  2C 03 00 00 */	cmpwi r3, 0
/* 80294740 0025DD00  41 82 00 58 */	beq .L_80294798
/* 80294744 0025DD04  88 7F 00 DD */	lbz r3, 0xdd(r31)
/* 80294748 0025DD08  38 03 FF FF */	addi r0, r3, -1
/* 8029474C 0025DD0C  98 1F 00 DD */	stb r0, 0xdd(r31)
/* 80294750 0025DD10  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80294754 0025DD14  7C 00 07 75 */	extsb. r0, r0
/* 80294758 0025DD18  40 80 00 0C */	bge .L_80294764
/* 8029475C 0025DD1C  38 00 00 01 */	li r0, 1
/* 80294760 0025DD20  98 1F 00 DD */	stb r0, 0xdd(r31)
.L_80294764:
/* 80294764 0025DD24  88 BF 00 DD */	lbz r5, 0xdd(r31)
/* 80294768 0025DD28  38 61 00 14 */	addi r3, r1, 0x14
/* 8029476C 0025DD2C  38 9F 00 88 */	addi r4, r31, 0x88
/* 80294770 0025DD30  4B F9 7A 45 */	bl func_8022C1B4
/* 80294774 0025DD34  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 80294778 0025DD38  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8029477C 0025DD3C  38 81 00 14 */	addi r4, r1, 0x14
/* 80294780 0025DD40  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80294784 0025DD44  7D 89 03 A6 */	mtctr r12
/* 80294788 0025DD48  4E 80 04 21 */	bctrl 
/* 8029478C 0025DD4C  38 60 00 01 */	li r3, 1
/* 80294790 0025DD50  4B EA 38 E9 */	bl func_80138078
/* 80294794 0025DD54  48 00 00 60 */	b .L_802947F4
.L_80294798:
/* 80294798 0025DD58  2C 00 00 00 */	cmpwi r0, 0
/* 8029479C 0025DD5C  41 82 00 58 */	beq .L_802947F4
/* 802947A0 0025DD60  88 7F 00 DD */	lbz r3, 0xdd(r31)
/* 802947A4 0025DD64  38 03 00 01 */	addi r0, r3, 1
/* 802947A8 0025DD68  98 1F 00 DD */	stb r0, 0xdd(r31)
/* 802947AC 0025DD6C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802947B0 0025DD70  7C 00 07 74 */	extsb r0, r0
/* 802947B4 0025DD74  2C 00 00 01 */	cmpwi r0, 1
/* 802947B8 0025DD78  40 81 00 0C */	ble .L_802947C4
/* 802947BC 0025DD7C  38 00 00 00 */	li r0, 0
/* 802947C0 0025DD80  98 1F 00 DD */	stb r0, 0xdd(r31)
.L_802947C4:
/* 802947C4 0025DD84  88 BF 00 DD */	lbz r5, 0xdd(r31)
/* 802947C8 0025DD88  38 61 00 08 */	addi r3, r1, 8
/* 802947CC 0025DD8C  38 9F 00 88 */	addi r4, r31, 0x88
/* 802947D0 0025DD90  4B F9 79 E5 */	bl func_8022C1B4
/* 802947D4 0025DD94  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 802947D8 0025DD98  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802947DC 0025DD9C  38 81 00 08 */	addi r4, r1, 8
/* 802947E0 0025DDA0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802947E4 0025DDA4  7D 89 03 A6 */	mtctr r12
/* 802947E8 0025DDA8  4E 80 04 21 */	bctrl 
/* 802947EC 0025DDAC  38 60 00 01 */	li r3, 1
/* 802947F0 0025DDB0  4B EA 38 89 */	bl func_80138078
.L_802947F4:
/* 802947F4 0025DDB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802947F8 0025DDB8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802947FC 0025DDBC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80294800 0025DDC0  7C 08 03 A6 */	mtlr r0
/* 80294804 0025DDC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80294808 0025DDC8  4E 80 00 20 */	blr 

.global func_8029480C
func_8029480C:
/* 8029480C 0025DDCC  38 63 FF 94 */	addi r3, r3, -108
/* 80294810 0025DDD0  4B FF F7 A8 */	b func_80293FB8

.global func_80294814
func_80294814:
/* 80294814 0025DDD4  38 63 FF 90 */	addi r3, r3, -112
/* 80294818 0025DDD8  4B FF FC 28 */	b func_80294440

.global func_8029481C
func_8029481C:
/* 8029481C 0025DDDC  38 63 FF 90 */	addi r3, r3, -112
/* 80294820 0025DDE0  4B FF F7 98 */	b func_80293FB8

.global func_80294824
func_80294824:
/* 80294824 0025DDE4  C0 02 B0 C8 */	lfs f0, lbl_8066B448@sda21(r2)
/* 80294828 0025DDE8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8029482C 0025DDEC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80294830 0025DDF0  4E 80 00 20 */	blr 

.global func_80294834
func_80294834:
/* 80294834 0025DDF4  C0 02 B0 C8 */	lfs f0, lbl_8066B448@sda21(r2)
/* 80294838 0025DDF8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8029483C 0025DDFC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80294840 0025DE00  4E 80 00 20 */	blr 

.global func_80294844
func_80294844:
/* 80294844 0025DE04  C0 42 B0 CC */	lfs f2, lbl_8066B44C@sda21(r2)
/* 80294848 0025DE08  C0 02 B0 C8 */	lfs f0, lbl_8066B448@sda21(r2)
/* 8029484C 0025DE0C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80294850 0025DE10  D0 03 00 00 */	stfs f0, 0(r3)
/* 80294854 0025DE14  D0 03 00 04 */	stfs f0, 4(r3)
/* 80294858 0025DE18  4C 80 00 20 */	bgelr 
/* 8029485C 0025DE1C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80294860 0025DE20  C0 02 B0 D0 */	lfs f0, lbl_8066B450@sda21(r2)
/* 80294864 0025DE24  EC 00 10 78 */	fmsubs f0, f0, f1, f2
/* 80294868 0025DE28  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029486C 0025DE2C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80294870 0025DE30  4E 80 00 20 */	blr 

.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_802944D8
	.4byte 0x0000014C
	.4byte lbl_80019A10
	.4byte func_80294638
	.4byte 0x000001D4
	.4byte lbl_80019A6C