.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802B88C8
func_802B88C8:
/* 802B88C8 00281E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B88CC 00281E8C  7C 08 02 A6 */	mflr r0
/* 802B88D0 00281E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B88D4 00281E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B88D8 00281E98  93 C1 00 08 */	stw r30, 8(r1)
/* 802B88DC 00281E9C  7C 7E 1B 78 */	mr r30, r3
/* 802B88E0 00281EA0  38 60 00 00 */	li r3, 0
/* 802B88E4 00281EA4  4B DC A4 71 */	bl func_80082D54
/* 802B88E8 00281EA8  4B E0 73 81 */	bl func_800BFC68
/* 802B88EC 00281EAC  7C 7F 1B 78 */	mr r31, r3
/* 802B88F0 00281EB0  4B DC A0 C9 */	bl func_800829B8
/* 802B88F4 00281EB4  2C 03 00 00 */	cmpwi r3, 0
/* 802B88F8 00281EB8  41 82 00 0C */	beq lbl_802B8904
/* 802B88FC 00281EBC  38 60 00 00 */	li r3, 0
/* 802B8900 00281EC0  48 00 01 24 */	b lbl_802B8A24
lbl_802B8904:
/* 802B8904 00281EC4  4B DC 51 79 */	bl func_8007DA7C
/* 802B8908 00281EC8  3C 60 04 00 */	lis r3, 0x400
/* 802B890C 00281ECC  4B DB 65 F9 */	bl func_8006EF04
/* 802B8910 00281ED0  2C 03 00 00 */	cmpwi r3, 0
/* 802B8914 00281ED4  41 82 00 0C */	beq lbl_802B8920
/* 802B8918 00281ED8  38 60 00 00 */	li r3, 0
/* 802B891C 00281EDC  48 00 01 08 */	b lbl_802B8A24
lbl_802B8920:
/* 802B8920 00281EE0  2C 1F 00 00 */	cmpwi r31, 0
/* 802B8924 00281EE4  40 82 00 0C */	bne lbl_802B8930
/* 802B8928 00281EE8  38 60 00 00 */	li r3, 0
/* 802B892C 00281EEC  48 00 00 F8 */	b lbl_802B8A24
lbl_802B8930:
/* 802B8930 00281EF0  81 9F 3E 9C */	lwz r12, 0x3e9c(r31)
/* 802B8934 00281EF4  38 7F 3E 9C */	addi r3, r31, 0x3e9c
/* 802B8938 00281EF8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802B893C 00281EFC  7D 89 03 A6 */	mtctr r12
/* 802B8940 00281F00  4E 80 04 21 */	bctrl 
/* 802B8944 00281F04  2C 03 00 00 */	cmpwi r3, 0
/* 802B8948 00281F08  40 82 00 0C */	bne lbl_802B8954
/* 802B894C 00281F0C  38 60 00 00 */	li r3, 0
/* 802B8950 00281F10  48 00 00 D4 */	b lbl_802B8A24
lbl_802B8954:
/* 802B8954 00281F14  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802B8958 00281F18  2C 00 00 01 */	cmpwi r0, 1
/* 802B895C 00281F1C  41 82 00 18 */	beq lbl_802B8974
/* 802B8960 00281F20  2C 00 00 02 */	cmpwi r0, 2
/* 802B8964 00281F24  41 82 00 3C */	beq lbl_802B89A0
/* 802B8968 00281F28  2C 00 00 03 */	cmpwi r0, 3
/* 802B896C 00281F2C  41 82 00 74 */	beq lbl_802B89E0
/* 802B8970 00281F30  48 00 00 B0 */	b lbl_802B8A20
lbl_802B8974:
/* 802B8974 00281F34  81 9F 3E 9C */	lwz r12, 0x3e9c(r31)
/* 802B8978 00281F38  38 7F 3E 9C */	addi r3, r31, 0x3e9c
/* 802B897C 00281F3C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802B8980 00281F40  7D 89 03 A6 */	mtctr r12
/* 802B8984 00281F44  4E 80 04 21 */	bctrl 
/* 802B8988 00281F48  4B DF E7 05 */	bl func_800B708C
/* 802B898C 00281F4C  4B DF 4E D5 */	bl func_800AD860
/* 802B8990 00281F50  2C 03 00 00 */	cmpwi r3, 0
/* 802B8994 00281F54  40 82 00 8C */	bne lbl_802B8A20
/* 802B8998 00281F58  38 60 00 00 */	li r3, 0
/* 802B899C 00281F5C  48 00 00 88 */	b lbl_802B8A24
lbl_802B89A0:
/* 802B89A0 00281F60  81 9F 3E 9C */	lwz r12, 0x3e9c(r31)
/* 802B89A4 00281F64  38 7F 3E 9C */	addi r3, r31, 0x3e9c
/* 802B89A8 00281F68  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802B89AC 00281F6C  7D 89 03 A6 */	mtctr r12
/* 802B89B0 00281F70  4E 80 04 21 */	bctrl 
/* 802B89B4 00281F74  4B DF E6 D9 */	bl func_800B708C
/* 802B89B8 00281F78  4B DF 4E A9 */	bl func_800AD860
/* 802B89BC 00281F7C  2C 03 00 00 */	cmpwi r3, 0
/* 802B89C0 00281F80  40 82 00 0C */	bne lbl_802B89CC
/* 802B89C4 00281F84  38 60 00 00 */	li r3, 0
/* 802B89C8 00281F88  48 00 00 5C */	b lbl_802B8A24
lbl_802B89CC:
/* 802B89CC 00281F8C  80 03 15 F0 */	lwz r0, 0x15f0(r3)
/* 802B89D0 00281F90  2C 00 00 02 */	cmpwi r0, 2
/* 802B89D4 00281F94  41 82 00 4C */	beq lbl_802B8A20
/* 802B89D8 00281F98  38 60 00 00 */	li r3, 0
/* 802B89DC 00281F9C  48 00 00 48 */	b lbl_802B8A24
lbl_802B89E0:
/* 802B89E0 00281FA0  81 9F 3E 9C */	lwz r12, 0x3e9c(r31)
/* 802B89E4 00281FA4  38 7F 3E 9C */	addi r3, r31, 0x3e9c
/* 802B89E8 00281FA8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802B89EC 00281FAC  7D 89 03 A6 */	mtctr r12
/* 802B89F0 00281FB0  4E 80 04 21 */	bctrl 
/* 802B89F4 00281FB4  4B DF E6 99 */	bl func_800B708C
/* 802B89F8 00281FB8  4B E0 88 31 */	bl func_800C1228
/* 802B89FC 00281FBC  2C 03 00 00 */	cmpwi r3, 0
/* 802B8A00 00281FC0  40 82 00 0C */	bne lbl_802B8A0C
/* 802B8A04 00281FC4  38 60 00 00 */	li r3, 0
/* 802B8A08 00281FC8  48 00 00 1C */	b lbl_802B8A24
lbl_802B8A0C:
/* 802B8A0C 00281FCC  88 03 00 91 */	lbz r0, 0x91(r3)
/* 802B8A10 00281FD0  2C 00 00 0C */	cmpwi r0, 0xc
/* 802B8A14 00281FD4  41 82 00 0C */	beq lbl_802B8A20
/* 802B8A18 00281FD8  38 60 00 00 */	li r3, 0
/* 802B8A1C 00281FDC  48 00 00 08 */	b lbl_802B8A24
lbl_802B8A20:
/* 802B8A20 00281FE0  38 60 00 01 */	li r3, 1
lbl_802B8A24:
/* 802B8A24 00281FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8A28 00281FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8A2C 00281FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B8A30 00281FF0  7C 08 03 A6 */	mtlr r0
/* 802B8A34 00281FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8A38 00281FF8  4E 80 00 20 */	blr 