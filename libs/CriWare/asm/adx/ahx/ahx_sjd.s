.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn AHXSJD_Init, global
/* 8038C760 00355D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038C764 00355D24  7C 08 02 A6 */	mflr r0
/* 8038C768 00355D28  3C 60 80 5F */	lis r3, ahxsjd_init_cnt@ha
/* 8038C76C 00355D2C  3C 80 80 52 */	lis r4, ahxsjd_build@ha
/* 8038C770 00355D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038C774 00355D34  80 03 9B 00 */	lwz r0, ahxsjd_init_cnt@l(r3)
/* 8038C778 00355D38  80 64 AC 08 */	lwz r3, ahxsjd_build@l(r4)
/* 8038C77C 00355D3C  2C 00 00 00 */	cmpwi r0, 0
/* 8038C780 00355D40  80 04 AC 08 */	lwz r0, ahxsjd_build@l(r4)
/* 8038C784 00355D44  40 82 00 68 */	bne .L_8038C7EC
/* 8038C788 00355D48  38 61 00 0C */	addi r3, r1, 0xc
/* 8038C78C 00355D4C  38 81 00 08 */	addi r4, r1, 8
/* 8038C790 00355D50  48 00 0B 19 */	bl AHXTBL_GetAtblInfo
/* 8038C794 00355D54  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8038C798 00355D58  80 81 00 08 */	lwz r4, 8(r1)
/* 8038C79C 00355D5C  48 00 19 F5 */	bl AHXSJD_SetupAtbl
/* 8038C7A0 00355D60  38 61 00 0C */	addi r3, r1, 0xc
/* 8038C7A4 00355D64  38 81 00 08 */	addi r4, r1, 8
/* 8038C7A8 00355D68  48 00 0B 2D */	bl AHXTBL_GetMtblInfo
/* 8038C7AC 00355D6C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8038C7B0 00355D70  80 81 00 08 */	lwz r4, 8(r1)
/* 8038C7B4 00355D74  48 00 19 E1 */	bl AHXSJD_SetupMtbl
/* 8038C7B8 00355D78  38 61 00 0C */	addi r3, r1, 0xc
/* 8038C7BC 00355D7C  38 81 00 08 */	addi r4, r1, 8
/* 8038C7C0 00355D80  4B FF DE A9 */	bl AHXTBL_GetFtblInfo
/* 8038C7C4 00355D84  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8038C7C8 00355D88  80 81 00 08 */	lwz r4, 8(r1)
/* 8038C7CC 00355D8C  48 00 19 D5 */	bl AHXSJD_SetupFtbl
/* 8038C7D0 00355D90  38 61 00 0C */	addi r3, r1, 0xc
/* 8038C7D4 00355D94  38 81 00 08 */	addi r4, r1, 8
/* 8038C7D8 00355D98  48 00 07 4D */	bl AHXTBL_GetWtblInfo
/* 8038C7DC 00355D9C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8038C7E0 00355DA0  80 81 00 08 */	lwz r4, 8(r1)
/* 8038C7E4 00355DA4  48 00 19 C1 */	bl AHXSJD_SetupWtbl
/* 8038C7E8 00355DA8  48 00 19 C1 */	bl AHXDCD_Init
.L_8038C7EC:
/* 8038C7EC 00355DAC  3C 80 80 5F */	lis r4, ahxsjd_init_cnt@ha
/* 8038C7F0 00355DB0  80 64 9B 00 */	lwz r3, ahxsjd_init_cnt@l(r4)
/* 8038C7F4 00355DB4  38 03 00 01 */	addi r0, r3, 1
/* 8038C7F8 00355DB8  90 04 9B 00 */	stw r0, ahxsjd_init_cnt@l(r4)
/* 8038C7FC 00355DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038C800 00355DC0  7C 08 03 A6 */	mtlr r0
/* 8038C804 00355DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8038C808 00355DC8  4E 80 00 20 */	blr 
.endfn AHXSJD_Init

.fn AHXSJD_Finish, global
/* 8038C80C 00355DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038C810 00355DD0  7C 08 02 A6 */	mflr r0
/* 8038C814 00355DD4  3C 60 80 5F */	lis r3, ahxsjd_init_cnt@ha
/* 8038C818 00355DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038C81C 00355DDC  80 03 9B 00 */	lwz r0, ahxsjd_init_cnt@l(r3)
/* 8038C820 00355DE0  2C 00 00 01 */	cmpwi r0, 1
/* 8038C824 00355DE4  40 82 00 08 */	bne .L_8038C82C
/* 8038C828 00355DE8  48 00 19 C1 */	bl AHXDCD_Finish
.L_8038C82C:
/* 8038C82C 00355DEC  3C 80 80 5F */	lis r4, ahxsjd_init_cnt@ha
/* 8038C830 00355DF0  80 64 9B 00 */	lwz r3, ahxsjd_init_cnt@l(r4)
/* 8038C834 00355DF4  38 03 FF FF */	addi r0, r3, -1
/* 8038C838 00355DF8  90 04 9B 00 */	stw r0, ahxsjd_init_cnt@l(r4)
/* 8038C83C 00355DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038C840 00355E00  7C 08 03 A6 */	mtlr r0
/* 8038C844 00355E04  38 21 00 10 */	addi r1, r1, 0x10
/* 8038C848 00355E08  4E 80 00 20 */	blr 
.endfn AHXSJD_Finish

.fn AHXSJD_Create, global
/* 8038C84C 00355E0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038C850 00355E10  7C 08 02 A6 */	mflr r0
/* 8038C854 00355E14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038C858 00355E18  38 06 00 07 */	addi r0, r6, 7
/* 8038C85C 00355E1C  BF 41 00 08 */	stmw r26, 8(r1)
/* 8038C860 00355E20  7C 9D 23 78 */	mr r29, r4
/* 8038C864 00355E24  7C BE 2B 78 */	mr r30, r5
/* 8038C868 00355E28  54 1F 00 38 */	rlwinm r31, r0, 0, 0, 0x1c
/* 8038C86C 00355E2C  7C 7A 1B 78 */	mr r26, r3
/* 8038C870 00355E30  7F 66 3A 14 */	add r27, r6, r7
/* 8038C874 00355E34  7F E3 FB 78 */	mr r3, r31
/* 8038C878 00355E38  38 80 00 00 */	li r4, 0
/* 8038C87C 00355E3C  38 A0 00 5C */	li r5, 0x5c
/* 8038C880 00355E40  4B C7 7A D1 */	bl memset
/* 8038C884 00355E44  38 1F 00 63 */	addi r0, r31, 0x63
/* 8038C888 00355E48  54 04 00 38 */	rlwinm r4, r0, 0, 0, 0x1c
/* 8038C88C 00355E4C  3B 84 00 34 */	addi r28, r4, 0x34
/* 8038C890 00355E50  7C 1C D8 40 */	cmplw r28, r27
/* 8038C894 00355E54  40 81 00 0C */	ble .L_8038C8A0
/* 8038C898 00355E58  38 60 00 00 */	li r3, 0
/* 8038C89C 00355E5C  48 00 01 A8 */	b .L_8038CA44
.L_8038C8A0:
/* 8038C8A0 00355E60  7F 43 D3 78 */	mr r3, r26
/* 8038C8A4 00355E64  38 A0 00 34 */	li r5, 0x34
/* 8038C8A8 00355E68  48 00 0A 59 */	bl AHXBSR_Create
/* 8038C8AC 00355E6C  2C 03 00 00 */	cmpwi r3, 0
/* 8038C8B0 00355E70  90 7F 00 04 */	stw r3, 4(r31)
/* 8038C8B4 00355E74  40 82 00 0C */	bne .L_8038C8C0
/* 8038C8B8 00355E78  38 60 00 00 */	li r3, 0
/* 8038C8BC 00355E7C  48 00 01 88 */	b .L_8038CA44
.L_8038C8C0:
/* 8038C8C0 00355E80  38 1C 00 07 */	addi r0, r28, 7
/* 8038C8C4 00355E84  54 04 00 38 */	rlwinm r4, r0, 0, 0, 0x1c
/* 8038C8C8 00355E88  38 04 1B F0 */	addi r0, r4, 0x1bf0
/* 8038C8CC 00355E8C  7C 00 D8 40 */	cmplw r0, r27
/* 8038C8D0 00355E90  40 81 00 10 */	ble .L_8038C8E0
/* 8038C8D4 00355E94  48 00 0B 05 */	bl AHXBSR_Destroy
/* 8038C8D8 00355E98  38 60 00 00 */	li r3, 0
/* 8038C8DC 00355E9C  48 00 01 68 */	b .L_8038CA44
.L_8038C8E0:
/* 8038C8E0 00355EA0  7C 83 23 78 */	mr r3, r4
/* 8038C8E4 00355EA4  38 80 1B F0 */	li r4, 0x1bf0
/* 8038C8E8 00355EA8  48 00 19 1D */	bl AHXDCD_Create
/* 8038C8EC 00355EAC  2C 03 00 00 */	cmpwi r3, 0
/* 8038C8F0 00355EB0  90 7F 00 00 */	stw r3, 0(r31)
/* 8038C8F4 00355EB4  40 82 00 14 */	bne .L_8038C908
/* 8038C8F8 00355EB8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8038C8FC 00355EBC  48 00 0A DD */	bl AHXBSR_Destroy
/* 8038C900 00355EC0  38 60 00 00 */	li r3, 0
/* 8038C904 00355EC4  48 00 01 40 */	b .L_8038CA44
.L_8038C908:
/* 8038C908 00355EC8  9B BF 00 0A */	stb r29, 0xa(r31)
/* 8038C90C 00355ECC  2C 9D 00 00 */	cmpwi cr1, r29, 0
/* 8038C910 00355ED0  38 C0 00 00 */	li r6, 0
/* 8038C914 00355ED4  93 5F 00 10 */	stw r26, 0x10(r31)
/* 8038C918 00355ED8  40 85 00 D0 */	ble cr1, .L_8038C9E8
/* 8038C91C 00355EDC  2C 1D 00 08 */	cmpwi r29, 8
/* 8038C920 00355EE0  38 9D FF F8 */	addi r4, r29, -8
/* 8038C924 00355EE4  40 81 00 94 */	ble .L_8038C9B8
/* 8038C928 00355EE8  38 A0 00 00 */	li r5, 0
/* 8038C92C 00355EEC  41 84 00 18 */	blt cr1, .L_8038C944
/* 8038C930 00355EF0  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 8038C934 00355EF4  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 8038C938 00355EF8  7C 1D 00 00 */	cmpw r29, r0
/* 8038C93C 00355EFC  41 81 00 08 */	bgt .L_8038C944
/* 8038C940 00355F00  38 A0 00 01 */	li r5, 1
.L_8038C944:
/* 8038C944 00355F04  2C 05 00 00 */	cmpwi r5, 0
/* 8038C948 00355F08  41 82 00 70 */	beq .L_8038C9B8
/* 8038C94C 00355F0C  38 04 00 07 */	addi r0, r4, 7
/* 8038C950 00355F10  7F C3 F3 78 */	mr r3, r30
/* 8038C954 00355F14  54 00 E8 FE */	srwi r0, r0, 3
/* 8038C958 00355F18  7F E5 FB 78 */	mr r5, r31
/* 8038C95C 00355F1C  7C 09 03 A6 */	mtctr r0
/* 8038C960 00355F20  2C 04 00 00 */	cmpwi r4, 0
/* 8038C964 00355F24  40 81 00 54 */	ble .L_8038C9B8
.L_8038C968:
/* 8038C968 00355F28  80 03 00 00 */	lwz r0, 0(r3)
/* 8038C96C 00355F2C  38 C6 00 08 */	addi r6, r6, 8
/* 8038C970 00355F30  90 05 00 14 */	stw r0, 0x14(r5)
/* 8038C974 00355F34  80 03 00 04 */	lwz r0, 4(r3)
/* 8038C978 00355F38  90 05 00 18 */	stw r0, 0x18(r5)
/* 8038C97C 00355F3C  80 03 00 08 */	lwz r0, 8(r3)
/* 8038C980 00355F40  90 05 00 1C */	stw r0, 0x1c(r5)
/* 8038C984 00355F44  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8038C988 00355F48  90 05 00 20 */	stw r0, 0x20(r5)
/* 8038C98C 00355F4C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8038C990 00355F50  90 05 00 24 */	stw r0, 0x24(r5)
/* 8038C994 00355F54  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8038C998 00355F58  90 05 00 28 */	stw r0, 0x28(r5)
/* 8038C99C 00355F5C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8038C9A0 00355F60  90 05 00 2C */	stw r0, 0x2c(r5)
/* 8038C9A4 00355F64  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8038C9A8 00355F68  38 63 00 20 */	addi r3, r3, 0x20
/* 8038C9AC 00355F6C  90 05 00 30 */	stw r0, 0x30(r5)
/* 8038C9B0 00355F70  38 A5 00 20 */	addi r5, r5, 0x20
/* 8038C9B4 00355F74  42 00 FF B4 */	bdnz .L_8038C968
.L_8038C9B8:
/* 8038C9B8 00355F78  54 C4 10 3A */	slwi r4, r6, 2
/* 8038C9BC 00355F7C  7C 06 E8 50 */	subf r0, r6, r29
/* 8038C9C0 00355F80  7C 7E 22 14 */	add r3, r30, r4
/* 8038C9C4 00355F84  7C 9F 22 14 */	add r4, r31, r4
/* 8038C9C8 00355F88  7C 09 03 A6 */	mtctr r0
/* 8038C9CC 00355F8C  7C 06 E8 00 */	cmpw r6, r29
/* 8038C9D0 00355F90  40 80 00 18 */	bge .L_8038C9E8
.L_8038C9D4:
/* 8038C9D4 00355F94  80 03 00 00 */	lwz r0, 0(r3)
/* 8038C9D8 00355F98  38 63 00 04 */	addi r3, r3, 4
/* 8038C9DC 00355F9C  90 04 00 14 */	stw r0, 0x14(r4)
/* 8038C9E0 00355FA0  38 84 00 04 */	addi r4, r4, 4
/* 8038C9E4 00355FA4  42 00 FF F0 */	bdnz .L_8038C9D4
.L_8038C9E8:
/* 8038C9E8 00355FA8  38 C0 00 00 */	li r6, 0
/* 8038C9EC 00355FAC  3C 60 80 00 */	lis r3, 0x7FFFFFFF@ha
/* 8038C9F0 00355FB0  98 DF 00 09 */	stb r6, 9(r31)
/* 8038C9F4 00355FB4  38 A3 FF FF */	addi r5, r3, 0x7FFFFFFF@l
/* 8038C9F8 00355FB8  38 80 FF FF */	li r4, -1
/* 8038C9FC 00355FBC  38 00 00 01 */	li r0, 1
/* 8038CA00 00355FC0  90 DF 00 0C */	stw r6, 0xc(r31)
/* 8038CA04 00355FC4  7F E3 FB 78 */	mr r3, r31
/* 8038CA08 00355FC8  90 DF 00 1C */	stw r6, 0x1c(r31)
/* 8038CA0C 00355FCC  90 DF 00 20 */	stw r6, 0x20(r31)
/* 8038CA10 00355FD0  90 DF 00 24 */	stw r6, 0x24(r31)
/* 8038CA14 00355FD4  90 DF 00 28 */	stw r6, 0x28(r31)
/* 8038CA18 00355FD8  90 DF 00 2C */	stw r6, 0x2c(r31)
/* 8038CA1C 00355FDC  90 DF 00 30 */	stw r6, 0x30(r31)
/* 8038CA20 00355FE0  90 BF 00 34 */	stw r5, 0x34(r31)
/* 8038CA24 00355FE4  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8038CA28 00355FE8  90 DF 00 40 */	stw r6, 0x40(r31)
/* 8038CA2C 00355FEC  90 DF 00 44 */	stw r6, 0x44(r31)
/* 8038CA30 00355FF0  90 DF 00 4C */	stw r6, 0x4c(r31)
/* 8038CA34 00355FF4  90 DF 00 50 */	stw r6, 0x50(r31)
/* 8038CA38 00355FF8  90 DF 00 54 */	stw r6, 0x54(r31)
/* 8038CA3C 00355FFC  90 DF 00 58 */	stw r6, 0x58(r31)
/* 8038CA40 00356000  98 1F 00 08 */	stb r0, 8(r31)
.L_8038CA44:
/* 8038CA44 00356004  BB 41 00 08 */	lmw r26, 8(r1)
/* 8038CA48 00356008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038CA4C 0035600C  7C 08 03 A6 */	mtlr r0
/* 8038CA50 00356010  38 21 00 20 */	addi r1, r1, 0x20
/* 8038CA54 00356014  4E 80 00 20 */	blr 
.endfn AHXSJD_Create

.fn AHXSJD_Destroy, global
/* 8038CA58 00356018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038CA5C 0035601C  7C 08 02 A6 */	mflr r0
/* 8038CA60 00356020  2C 03 00 00 */	cmpwi r3, 0
/* 8038CA64 00356024  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038CA68 00356028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038CA6C 0035602C  7C 7F 1B 78 */	mr r31, r3
/* 8038CA70 00356030  41 82 00 48 */	beq .L_8038CAB8
/* 8038CA74 00356034  80 83 00 04 */	lwz r4, 4(r3)
/* 8038CA78 00356038  2C 04 00 00 */	cmpwi r4, 0
/* 8038CA7C 0035603C  41 82 00 14 */	beq .L_8038CA90
/* 8038CA80 00356040  38 00 00 00 */	li r0, 0
/* 8038CA84 00356044  90 03 00 04 */	stw r0, 4(r3)
/* 8038CA88 00356048  7C 83 23 78 */	mr r3, r4
/* 8038CA8C 0035604C  48 00 09 4D */	bl AHXBSR_Destroy
.L_8038CA90:
/* 8038CA90 00356050  80 7F 00 00 */	lwz r3, 0(r31)
/* 8038CA94 00356054  2C 03 00 00 */	cmpwi r3, 0
/* 8038CA98 00356058  41 82 00 10 */	beq .L_8038CAA8
/* 8038CA9C 0035605C  38 00 00 00 */	li r0, 0
/* 8038CAA0 00356060  90 1F 00 00 */	stw r0, 0(r31)
/* 8038CAA4 00356064  48 00 18 29 */	bl AHXDCD_Destroy
.L_8038CAA8:
/* 8038CAA8 00356068  7F E3 FB 78 */	mr r3, r31
/* 8038CAAC 0035606C  38 80 00 00 */	li r4, 0
/* 8038CAB0 00356070  38 A0 00 5C */	li r5, 0x5c
/* 8038CAB4 00356074  4B C7 78 9D */	bl memset
.L_8038CAB8:
/* 8038CAB8 00356078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038CABC 0035607C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038CAC0 00356080  7C 08 03 A6 */	mtlr r0
/* 8038CAC4 00356084  38 21 00 10 */	addi r1, r1, 0x10
/* 8038CAC8 00356088  4E 80 00 20 */	blr 
.endfn AHXSJD_Destroy

.fn AHXSJD_GetStat, global
/* 8038CACC 0035608C  88 63 00 09 */	lbz r3, 9(r3)
/* 8038CAD0 00356090  7C 63 07 74 */	extsb r3, r3
/* 8038CAD4 00356094  4E 80 00 20 */	blr
.endfn AHXSJD_GetStat

.fn AHXSJD_SetInSj, global
/* 8038CAD8 00356098  90 83 00 10 */	stw r4, 0x10(r3)
/* 8038CADC 0035609C  4E 80 00 20 */	blr 
.endfn AHXSJD_SetInSj

.fn AHXSJD_Start, global
/* 8038CAE0 003560A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038CAE4 003560A4  7C 08 02 A6 */	mflr r0
/* 8038CAE8 003560A8  3C 80 80 00 */	lis r4, 0x7FFFFFFF@ha
/* 8038CAEC 003560AC  38 C0 00 00 */	li r6, 0
/* 8038CAF0 003560B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038CAF4 003560B4  38 00 FF FF */	li r0, -1
/* 8038CAF8 003560B8  38 A4 FF FF */	addi r5, r4, 0x7FFFFFFF@l
/* 8038CAFC 003560BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038CB00 003560C0  7C 7F 1B 78 */	mr r31, r3
/* 8038CB04 003560C4  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8038CB08 003560C8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8038CB0C 003560CC  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 8038CB10 003560D0  90 C3 00 20 */	stw r6, 0x20(r3)
/* 8038CB14 003560D4  90 C3 00 24 */	stw r6, 0x24(r3)
/* 8038CB18 003560D8  90 C3 00 28 */	stw r6, 0x28(r3)
/* 8038CB1C 003560DC  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 8038CB20 003560E0  90 C3 00 30 */	stw r6, 0x30(r3)
/* 8038CB24 003560E4  90 A3 00 34 */	stw r5, 0x34(r3)
/* 8038CB28 003560E8  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8038CB2C 003560EC  90 C3 00 40 */	stw r6, 0x40(r3)
/* 8038CB30 003560F0  90 C3 00 44 */	stw r6, 0x44(r3)
/* 8038CB34 003560F4  80 63 00 04 */	lwz r3, 4(r3)
/* 8038CB38 003560F8  48 00 08 B9 */	bl AHXBSR_Restruct
/* 8038CB3C 003560FC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8038CB40 00356100  80 9F 00 04 */	lwz r4, 4(r31)
/* 8038CB44 00356104  48 00 18 B1 */	bl AHXDCD_SetBsr
/* 8038CB48 00356108  38 00 00 01 */	li r0, 1
/* 8038CB4C 0035610C  98 1F 00 09 */	stb r0, 9(r31)
/* 8038CB50 00356110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038CB54 00356114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038CB58 00356118  7C 08 03 A6 */	mtlr r0
/* 8038CB5C 0035611C  38 21 00 10 */	addi r1, r1, 0x10
/* 8038CB60 00356120  4E 80 00 20 */	blr 
.endfn AHXSJD_Start

.fn AHXSJD_Stop, global
/* 8038CB64 00356124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038CB68 00356128  7C 08 02 A6 */	mflr r0
/* 8038CB6C 0035612C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038CB70 00356130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038CB74 00356134  7C 7F 1B 78 */	mr r31, r3
/* 8038CB78 00356138  80 63 00 00 */	lwz r3, 0(r3)
/* 8038CB7C 0035613C  48 00 17 A5 */	bl AHXDCD_Reset
/* 8038CB80 00356140  38 00 00 00 */	li r0, 0
/* 8038CB84 00356144  98 1F 00 09 */	stb r0, 9(r31)
/* 8038CB88 00356148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038CB8C 0035614C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038CB90 00356150  7C 08 03 A6 */	mtlr r0
/* 8038CB94 00356154  38 21 00 10 */	addi r1, r1, 0x10
/* 8038CB98 00356158  4E 80 00 20 */	blr 
.endfn AHXSJD_Stop

.fn criware_8038CB9C, global
/* 8038CB9C 0035615C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038CBA0 00356160  7C 08 02 A6 */	mflr r0
/* 8038CBA4 00356164  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038CBA8 00356168  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8038CBAC 0035616C  7C 7B 1B 78 */	mr r27, r3
/* 8038CBB0 00356170  83 C3 00 00 */	lwz r30, 0(r3)
/* 8038CBB4 00356174  7F C3 F3 78 */	mr r3, r30
/* 8038CBB8 00356178  48 00 1C 29 */	bl AHXDCD_GetOutSmpl
/* 8038CBBC 0035617C  7C 7C 1B 78 */	mr r28, r3
/* 8038CBC0 00356180  80 7B 00 00 */	lwz r3, 0(r27)
/* 8038CBC4 00356184  48 00 1C 11 */	bl AHXDCD_GetOutBps
/* 8038CBC8 00356188  80 DB 00 14 */	lwz r6, 0x14(r27)
/* 8038CBCC 0035618C  7C 60 1E 70 */	srawi r0, r3, 3
/* 8038CBD0 00356190  7F A0 01 94 */	addze r29, r0
/* 8038CBD4 00356194  38 80 00 00 */	li r4, 0
/* 8038CBD8 00356198  80 A6 00 00 */	lwz r5, 0(r6)
/* 8038CBDC 0035619C  7C C3 33 78 */	mr r3, r6
/* 8038CBE0 003561A0  81 85 00 24 */	lwz r12, 0x24(r5)
/* 8038CBE4 003561A4  7D 89 03 A6 */	mtctr r12
/* 8038CBE8 003561A8  4E 80 04 21 */	bctrl 
/* 8038CBEC 003561AC  7C 03 EB D6 */	divw r0, r3, r29
/* 8038CBF0 003561B0  7C 00 E0 00 */	cmpw r0, r28
/* 8038CBF4 003561B4  41 80 02 3C */	blt .L_8038CE30
/* 8038CBF8 003561B8  7F C3 F3 78 */	mr r3, r30
/* 8038CBFC 003561BC  48 00 1B 09 */	bl AHXDCD_IsEof
/* 8038CC00 003561C0  2C 03 00 00 */	cmpwi r3, 0
/* 8038CC04 003561C4  41 82 00 54 */	beq .L_8038CC58
/* 8038CC08 003561C8  7F C3 F3 78 */	mr r3, r30
/* 8038CC0C 003561CC  48 00 1A 15 */	bl AHXDCD_DecodeFrmHdr
/* 8038CC10 003561D0  2C 03 00 01 */	cmpwi r3, 1
/* 8038CC14 003561D4  40 82 00 3C */	bne .L_8038CC50
/* 8038CC18 003561D8  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 8038CC1C 003561DC  2C 00 00 00 */	cmpwi r0, 0
/* 8038CC20 003561E0  40 82 00 10 */	bne .L_8038CC30
/* 8038CC24 003561E4  38 00 00 03 */	li r0, 3
/* 8038CC28 003561E8  98 1B 00 09 */	stb r0, 9(r27)
/* 8038CC2C 003561EC  48 00 02 04 */	b .L_8038CE30
.L_8038CC30:
/* 8038CC30 003561F0  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 8038CC34 003561F4  38 00 00 00 */	li r0, 0
/* 8038CC38 003561F8  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 8038CC3C 003561FC  90 1B 00 20 */	stw r0, 0x20(r27)
/* 8038CC40 00356200  7C 64 1A 14 */	add r3, r4, r3
/* 8038CC44 00356204  90 7B 00 2C */	stw r3, 0x2c(r27)
/* 8038CC48 00356208  90 1B 00 28 */	stw r0, 0x28(r27)
/* 8038CC4C 0035620C  48 00 01 E4 */	b .L_8038CE30
.L_8038CC50:
/* 8038CC50 00356210  2C 03 FF FF */	cmpwi r3, -1
/* 8038CC54 00356214  41 82 01 DC */	beq .L_8038CE30
.L_8038CC58:
/* 8038CC58 00356218  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8038CC5C 0035621C  7C BC E9 D6 */	mullw r5, r28, r29
/* 8038CC60 00356220  38 C1 00 10 */	addi r6, r1, 0x10
/* 8038CC64 00356224  80 E3 00 00 */	lwz r7, 0(r3)
/* 8038CC68 00356228  38 80 00 00 */	li r4, 0
/* 8038CC6C 0035622C  81 87 00 18 */	lwz r12, 0x18(r7)
/* 8038CC70 00356230  7D 89 03 A6 */	mtctr r12
/* 8038CC74 00356234  4E 80 04 21 */	bctrl 
/* 8038CC78 00356238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038CC7C 0035623C  7C 00 EB D6 */	divw r0, r0, r29
/* 8038CC80 00356240  7C 1C 00 00 */	cmpw r28, r0
/* 8038CC84 00356244  41 82 00 24 */	beq .L_8038CCA8
/* 8038CC88 00356248  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8038CC8C 0035624C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8038CC90 00356250  38 80 00 00 */	li r4, 0
/* 8038CC94 00356254  80 C3 00 00 */	lwz r6, 0(r3)
/* 8038CC98 00356258  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 8038CC9C 0035625C  7D 89 03 A6 */	mtctr r12
/* 8038CCA0 00356260  4E 80 04 21 */	bctrl 
/* 8038CCA4 00356264  48 00 01 8C */	b .L_8038CE30
.L_8038CCA8:
/* 8038CCA8 00356268  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8038CCAC 0035626C  7F C3 F3 78 */	mr r3, r30
/* 8038CCB0 00356270  7F 86 E3 78 */	mr r6, r28
/* 8038CCB4 00356274  38 A0 00 00 */	li r5, 0
/* 8038CCB8 00356278  48 00 1A 61 */	bl AHXDCD_DecodeData
/* 8038CCBC 0035627C  80 BB 00 20 */	lwz r5, 0x20(r27)
/* 8038CCC0 00356280  38 00 01 E0 */	li r0, 0x1e0
/* 8038CCC4 00356284  38 80 00 00 */	li r4, 0
/* 8038CCC8 00356288  7C 7E 1B 78 */	mr r30, r3
/* 8038CCCC 0035628C  7C 00 28 10 */	subfc r0, r0, r5
/* 8038CCD0 00356290  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 8038CCD4 00356294  7C 00 21 10 */	subfe r0, r0, r4
/* 8038CCD8 00356298  7C 7C 00 78 */	andc r28, r3, r0
/* 8038CCDC 0035629C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8038CCE0 003562A0  48 00 1B 09 */	bl AHXDCD_GetTotalNumSmpl
/* 8038CCE4 003562A4  80 9B 00 28 */	lwz r4, 0x28(r27)
/* 8038CCE8 003562A8  7C 7F 1B 78 */	mr r31, r3
/* 8038CCEC 003562AC  7C 1C 22 14 */	add r0, r28, r4
/* 8038CCF0 003562B0  7C 00 18 00 */	cmpw r0, r3
/* 8038CCF4 003562B4  40 81 00 08 */	ble .L_8038CCFC
/* 8038CCF8 003562B8  7F 84 18 50 */	subf r28, r4, r3
.L_8038CCFC:
/* 8038CCFC 003562BC  7C 7C E9 D6 */	mullw r3, r28, r29
/* 8038CD00 003562C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038CD04 003562C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038CD08 003562C8  7C 00 18 00 */	cmpw r0, r3
/* 8038CD0C 003562CC  40 81 00 08 */	ble .L_8038CD14
/* 8038CD10 003562D0  90 61 00 14 */	stw r3, 0x14(r1)
.L_8038CD14:
/* 8038CD14 003562D4  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8038CD18 003562D8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8038CD1C 003562DC  7C 06 00 51 */	subf. r0, r6, r0
/* 8038CD20 003562E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038CD24 003562E4  40 82 00 0C */	bne .L_8038CD30
/* 8038CD28 003562E8  38 00 00 00 */	li r0, 0
/* 8038CD2C 003562EC  48 00 00 0C */	b .L_8038CD38
.L_8038CD30:
/* 8038CD30 003562F0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8038CD34 003562F4  7C 00 32 14 */	add r0, r0, r6
.L_8038CD38:
/* 8038CD38 003562F8  90 01 00 08 */	stw r0, 8(r1)
/* 8038CD3C 003562FC  81 9B 00 54 */	lwz r12, 0x54(r27)
/* 8038CD40 00356300  2C 0C 00 00 */	cmpwi r12, 0
/* 8038CD44 00356304  41 82 00 20 */	beq .L_8038CD64
/* 8038CD48 00356308  2C 1C 00 00 */	cmpwi r28, 0
/* 8038CD4C 0035630C  40 81 00 18 */	ble .L_8038CD64
/* 8038CD50 00356310  80 7B 00 58 */	lwz r3, 0x58(r27)
/* 8038CD54 00356314  38 80 00 00 */	li r4, 0
/* 8038CD58 00356318  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8038CD5C 0035631C  7D 89 03 A6 */	mtctr r12
/* 8038CD60 00356320  4E 80 04 21 */	bctrl 
.L_8038CD64:
/* 8038CD64 00356324  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8038CD68 00356328  38 A1 00 10 */	addi r5, r1, 0x10
/* 8038CD6C 0035632C  38 80 00 01 */	li r4, 1
/* 8038CD70 00356330  80 C3 00 00 */	lwz r6, 0(r3)
/* 8038CD74 00356334  81 86 00 20 */	lwz r12, 0x20(r6)
/* 8038CD78 00356338  7D 89 03 A6 */	mtctr r12
/* 8038CD7C 0035633C  4E 80 04 21 */	bctrl 
/* 8038CD80 00356340  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8038CD84 00356344  38 A1 00 08 */	addi r5, r1, 8
/* 8038CD88 00356348  38 80 00 00 */	li r4, 0
/* 8038CD8C 0035634C  80 C3 00 00 */	lwz r6, 0(r3)
/* 8038CD90 00356350  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 8038CD94 00356354  7D 89 03 A6 */	mtctr r12
/* 8038CD98 00356358  4E 80 04 21 */	bctrl 
/* 8038CD9C 0035635C  80 1B 00 20 */	lwz r0, 0x20(r27)
/* 8038CDA0 00356360  80 7B 00 04 */	lwz r3, 4(r27)
/* 8038CDA4 00356364  7C 00 F2 14 */	add r0, r0, r30
/* 8038CDA8 00356368  90 1B 00 20 */	stw r0, 0x20(r27)
/* 8038CDAC 0035636C  48 00 0A 49 */	bl AHXBSR_Tell
/* 8038CDB0 00356370  38 03 00 07 */	addi r0, r3, 7
/* 8038CDB4 00356374  80 9B 00 28 */	lwz r4, 0x28(r27)
/* 8038CDB8 00356378  7C 05 1E 70 */	srawi r5, r0, 3
/* 8038CDBC 0035637C  80 7B 00 30 */	lwz r3, 0x30(r27)
/* 8038CDC0 00356380  80 1B 00 40 */	lwz r0, 0x40(r27)
/* 8038CDC4 00356384  7C A5 01 94 */	addze r5, r5
/* 8038CDC8 00356388  80 DB 00 3C */	lwz r6, 0x3c(r27)
/* 8038CDCC 0035638C  7C 84 E2 14 */	add r4, r4, r28
/* 8038CDD0 00356390  7C 63 F2 14 */	add r3, r3, r30
/* 8038CDD4 00356394  7C 00 F2 14 */	add r0, r0, r30
/* 8038CDD8 00356398  2C 06 00 00 */	cmpwi r6, 0
/* 8038CDDC 0035639C  90 BB 00 24 */	stw r5, 0x24(r27)
/* 8038CDE0 003563A0  90 9B 00 28 */	stw r4, 0x28(r27)
/* 8038CDE4 003563A4  90 7B 00 30 */	stw r3, 0x30(r27)
/* 8038CDE8 003563A8  90 1B 00 40 */	stw r0, 0x40(r27)
/* 8038CDEC 003563AC  41 80 00 24 */	blt .L_8038CE10
/* 8038CDF0 003563B0  7C 00 30 00 */	cmpw r0, r6
/* 8038CDF4 003563B4  41 80 00 1C */	blt .L_8038CE10
/* 8038CDF8 003563B8  81 9B 00 4C */	lwz r12, 0x4c(r27)
/* 8038CDFC 003563BC  2C 0C 00 00 */	cmpwi r12, 0
/* 8038CE00 003563C0  41 82 00 10 */	beq .L_8038CE10
/* 8038CE04 003563C4  80 7B 00 50 */	lwz r3, 0x50(r27)
/* 8038CE08 003563C8  7D 89 03 A6 */	mtctr r12
/* 8038CE0C 003563CC  4E 80 04 21 */	bctrl 
.L_8038CE10:
/* 8038CE10 003563D0  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 8038CE14 003563D4  2C 00 00 00 */	cmpwi r0, 0
/* 8038CE18 003563D8  40 82 00 18 */	bne .L_8038CE30
/* 8038CE1C 003563DC  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 8038CE20 003563E0  7C 00 F8 00 */	cmpw r0, r31
/* 8038CE24 003563E4  41 80 00 0C */	blt .L_8038CE30
/* 8038CE28 003563E8  38 00 00 03 */	li r0, 3
/* 8038CE2C 003563EC  98 1B 00 09 */	stb r0, 9(r27)
.L_8038CE30:
/* 8038CE30 003563F0  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8038CE34 003563F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038CE38 003563F8  7C 08 03 A6 */	mtlr r0
/* 8038CE3C 003563FC  38 21 00 30 */	addi r1, r1, 0x30
/* 8038CE40 00356400  4E 80 00 20 */	blr 
.endfn criware_8038CB9C

.fn AHXSJD_ExecHndl, global
/* 8038CE44 00356404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038CE48 00356408  7C 08 02 A6 */	mflr r0
/* 8038CE4C 0035640C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038CE50 00356410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038CE54 00356414  7C 7F 1B 78 */	mr r31, r3
/* 8038CE58 00356418  88 03 00 09 */	lbz r0, 9(r3)
/* 8038CE5C 0035641C  7C 00 07 74 */	extsb r0, r0
/* 8038CE60 00356420  2C 00 00 02 */	cmpwi r0, 2
/* 8038CE64 00356424  40 82 00 0C */	bne .L_8038CE70
/* 8038CE68 00356428  4B FF FD 35 */	bl criware_8038CB9C
/* 8038CE6C 0035642C  48 00 00 44 */	b .L_8038CEB0
.L_8038CE70:
/* 8038CE70 00356430  2C 00 00 01 */	cmpwi r0, 1
/* 8038CE74 00356434  40 82 00 3C */	bne .L_8038CEB0
/* 8038CE78 00356438  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8038CE7C 0035643C  38 80 00 01 */	li r4, 1
/* 8038CE80 00356440  80 A3 00 00 */	lwz r5, 0(r3)
/* 8038CE84 00356444  81 85 00 24 */	lwz r12, 0x24(r5)
/* 8038CE88 00356448  7D 89 03 A6 */	mtctr r12
/* 8038CE8C 0035644C  4E 80 04 21 */	bctrl 
/* 8038CE90 00356450  2C 03 00 24 */	cmpwi r3, 0x24
/* 8038CE94 00356454  41 80 00 1C */	blt .L_8038CEB0
/* 8038CE98 00356458  80 7F 00 00 */	lwz r3, 0(r31)
/* 8038CE9C 0035645C  48 00 15 95 */	bl AHXDCD_DecodeHeader
/* 8038CEA0 00356460  80 7F 00 00 */	lwz r3, 0(r31)
/* 8038CEA4 00356464  48 00 17 7D */	bl AHXDCD_DecodeFrmHdr
/* 8038CEA8 00356468  38 00 00 02 */	li r0, 2
/* 8038CEAC 0035646C  98 1F 00 09 */	stb r0, 9(r31)
.L_8038CEB0:
/* 8038CEB0 00356470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038CEB4 00356474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038CEB8 00356478  7C 08 03 A6 */	mtlr r0
/* 8038CEBC 0035647C  38 21 00 10 */	addi r1, r1, 0x10
/* 8038CEC0 00356480  4E 80 00 20 */	blr 
.endfn AHXSJD_ExecHndl

.fn AHXSJD_GetDecDtLen, global
/* 8038CEC4 00356484  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8038CEC8 00356488  4E 80 00 20 */	blr 
.endfn AHXSJD_GetDecDtLen

.fn AHXSJD_GetDecNumSmpl, global
/* 8038CECC 0035648C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8038CED0 00356490  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8038CED4 00356494  7C 64 02 14 */	add r3, r4, r0
/* 8038CED8 00356498  4E 80 00 20 */	blr 
.endfn AHXSJD_GetDecNumSmpl

.fn AHXSJD_EntryFltFunc, global
/* 8038CEDC 0035649C  90 83 00 54 */	stw r4, 0x54(r3)
/* 8038CEE0 003564A0  90 A3 00 58 */	stw r5, 0x58(r3)
/* 8038CEE4 003564A4  4E 80 00 20 */	blr
.endfn AHXSJD_EntryFltFunc

.fn AHXSJD_SetExtPrm, global
/* 8038CEE8 003564A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8038CEEC 003564AC  48 00 19 18 */	b AHXDCD_SetExtPrm
.endfn AHXSJD_SetExtPrm

.fn AHXSJD_SetDecSmpl, global
/* 8038CEF0 003564B0  90 83 00 34 */	stw r4, 0x34(r3)
/* 8038CEF4 003564B4  4E 80 00 20 */	blr
.endfn AHXSJD_SetDecSmpl

.fn AHXSJD_TermSupply, global
/* 8038CEF8 003564B8  38 00 00 01 */	li r0, 1
/* 8038CEFC 003564BC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8038CF00 003564C0  4E 80 00 20 */	blr 
.endfn AHXSJD_TermSupply

.fn AHXSJD_SetLnkSw, global
/* 8038CF04 003564C4  2C 04 00 00 */	cmpwi r4, 0
/* 8038CF08 003564C8  40 82 00 10 */	bne .L_8038CF18
/* 8038CF0C 003564CC  38 00 00 00 */	li r0, 0
/* 8038CF10 003564D0  90 03 00 38 */	stw r0, 0x38(r3)
/* 8038CF14 003564D4  4E 80 00 20 */	blr
.L_8038CF18:
/* 8038CF18 003564D8  38 00 00 01 */	li r0, 1
/* 8038CF1C 003564DC  90 03 00 38 */	stw r0, 0x38(r3)
/* 8038CF20 003564E0  4E 80 00 20 */	blr 
.endfn AHXSJD_SetLnkSw

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8051ABD8, global
	.asciz "\nAHX/WII Ver.1.89 Build:Nov 13 2008 10:52:54\n"
	.balign 4
.endobj lbl_8051ABD8


.obj ahxsjd_build, global
	.4byte lbl_8051ABD8
	.4byte 0
.endobj ahxsjd_build

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj ahxsjd_init_cnt, global
	.skip 0x4
.endobj ahxsjd_init_cnt
