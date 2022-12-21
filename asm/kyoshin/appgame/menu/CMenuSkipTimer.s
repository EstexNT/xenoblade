.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8029E7E4
func_8029E7E4:
/* 8029E7E4 00267DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E7E8 00267DA8  7C 08 02 A6 */	mflr r0
/* 8029E7EC 00267DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E7F0 00267DB0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8029E7F4 00267DB4  7C 7D 1B 78 */	mr r29, r3
/* 8029E7F8 00267DB8  7C 9E 23 78 */	mr r30, r4
/* 8029E7FC 00267DBC  48 1A 62 1D */	bl __ct__8CProcessFv
/* 8029E800 00267DC0  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 8029E804 00267DC4  3C A0 80 54 */	lis r5, __vt__CMenuSkipTimer@ha
/* 8029E808 00267DC8  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 8029E80C 00267DCC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8029E810 00267DD0  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 8029E814 00267DD4  38 A5 CF 10 */	addi r5, r5, __vt__CMenuSkipTimer@l
/* 8029E818 00267DD8  84 C8 CE 10 */	lwzu r6, lbl_8050CE10@l(r8)
/* 8029E81C 00267DDC  38 05 00 24 */	addi r0, r5, 0x24
/* 8029E820 00267DE0  3B E0 00 00 */	li r31, 0
/* 8029E824 00267DE4  38 80 00 00 */	li r4, 0
/* 8029E828 00267DE8  80 68 00 04 */	lwz r3, 4(r8)
/* 8029E82C 00267DEC  90 7D 00 40 */	stw r3, 0x40(r29)
/* 8029E830 00267DF0  38 7D 00 60 */	addi r3, r29, 0x60
/* 8029E834 00267DF4  90 DD 00 3C */	stw r6, 0x3c(r29)
/* 8029E838 00267DF8  80 C8 00 08 */	lwz r6, 8(r8)
/* 8029E83C 00267DFC  90 DD 00 44 */	stw r6, 0x44(r29)
/* 8029E840 00267E00  80 E8 00 00 */	lwz r7, 0(r8)
/* 8029E844 00267E04  80 C8 00 04 */	lwz r6, 4(r8)
/* 8029E848 00267E08  90 DD 00 4C */	stw r6, 0x4c(r29)
/* 8029E84C 00267E0C  90 FD 00 48 */	stw r7, 0x48(r29)
/* 8029E850 00267E10  80 C8 00 08 */	lwz r6, 8(r8)
/* 8029E854 00267E14  90 DD 00 50 */	stw r6, 0x50(r29)
/* 8029E858 00267E18  9B FD 00 54 */	stb r31, 0x54(r29)
/* 8029E85C 00267E1C  9B FD 00 55 */	stb r31, 0x55(r29)
/* 8029E860 00267E20  90 BD 00 10 */	stw r5, 0x10(r29)
/* 8029E864 00267E24  90 1D 00 58 */	stw r0, 0x58(r29)
/* 8029E868 00267E28  93 DD 00 5C */	stw r30, 0x5c(r29)
/* 8029E86C 00267E2C  4B F2 51 09 */	bl func_801C3974
/* 8029E870 00267E30  38 7D 00 80 */	addi r3, r29, 0x80
/* 8029E874 00267E34  38 80 00 00 */	li r4, 0
/* 8029E878 00267E38  38 A0 00 00 */	li r5, 0
/* 8029E87C 00267E3C  4B F2 56 55 */	bl func_801C3ED0
/* 8029E880 00267E40  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 8029E884 00267E44  48 00 12 61 */	bl func_8029FAE4
/* 8029E888 00267E48  9B FD 01 50 */	stb r31, 0x150(r29)
/* 8029E88C 00267E4C  7F A3 EB 78 */	mr r3, r29
/* 8029E890 00267E50  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8029E894 00267E54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E898 00267E58  7C 08 03 A6 */	mtlr r0
/* 8029E89C 00267E5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E8A0 00267E60  4E 80 00 20 */	blr

.global func_8029E8A4
func_8029E8A4:
/* 8029E8A4 00267E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E8A8 00267E68  7C 08 02 A6 */	mflr r0
/* 8029E8AC 00267E6C  2C 03 00 00 */	cmpwi r3, 0
/* 8029E8B0 00267E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E8B4 00267E74  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029E8B8 00267E78  7C 7E 1B 78 */	mr r30, r3
/* 8029E8BC 00267E7C  7C 9F 23 78 */	mr r31, r4
/* 8029E8C0 00267E80  41 82 00 44 */	beq lbl_8029E904
/* 8029E8C4 00267E84  38 80 FF FF */	li r4, -1
/* 8029E8C8 00267E88  38 63 00 B8 */	addi r3, r3, 0xb8
/* 8029E8CC 00267E8C  48 00 12 A9 */	bl func_8029FB74
/* 8029E8D0 00267E90  38 7E 00 80 */	addi r3, r30, 0x80
/* 8029E8D4 00267E94  38 80 FF FF */	li r4, -1
/* 8029E8D8 00267E98  4B F2 56 79 */	bl func_801C3F50
/* 8029E8DC 00267E9C  38 7E 00 60 */	addi r3, r30, 0x60
/* 8029E8E0 00267EA0  38 80 FF FF */	li r4, -1
/* 8029E8E4 00267EA4  4B F2 50 ED */	bl func_801C39D0
/* 8029E8E8 00267EA8  7F C3 F3 78 */	mr r3, r30
/* 8029E8EC 00267EAC  38 80 00 00 */	li r4, 0
/* 8029E8F0 00267EB0  4B E6 04 1D */	bl func_800FED0C
/* 8029E8F4 00267EB4  2C 1F 00 00 */	cmpwi r31, 0
/* 8029E8F8 00267EB8  40 81 00 0C */	ble lbl_8029E904
/* 8029E8FC 00267EBC  7F C3 F3 78 */	mr r3, r30
/* 8029E900 00267EC0  48 19 63 2D */	bl __dl__FPv
lbl_8029E904:
/* 8029E904 00267EC4  7F C3 F3 78 */	mr r3, r30
/* 8029E908 00267EC8  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029E90C 00267ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E910 00267ED0  7C 08 03 A6 */	mtlr r0
/* 8029E914 00267ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E918 00267ED8  4E 80 00 20 */	blr 

.global func_8029E91C
func_8029E91C:
/* 8029E91C 00267EDC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8029E920 00267EE0  7C 08 02 A6 */	mflr r0
/* 8029E924 00267EE4  90 01 01 04 */	stw r0, 0x104(r1)
/* 8029E928 00267EE8  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8029E92C 00267EEC  7C 7F 1B 78 */	mr r31, r3
/* 8029E930 00267EF0  38 60 00 01 */	li r3, 1
/* 8029E934 00267EF4  4B DE 40 19 */	bl func_8008294C
/* 8029E938 00267EF8  38 61 00 08 */	addi r3, r1, 8
/* 8029E93C 00267EFC  38 80 00 00 */	li r4, 0
/* 8029E940 00267F00  4B F2 50 35 */	bl func_801C3974
/* 8029E944 00267F04  38 7F 00 64 */	addi r3, r31, 0x64
/* 8029E948 00267F08  38 81 00 0C */	addi r4, r1, 0xc
/* 8029E94C 00267F0C  4B E7 E0 29 */	bl func_8011C974
/* 8029E950 00267F10  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8029E954 00267F14  38 61 00 08 */	addi r3, r1, 8
/* 8029E958 00267F18  90 1F 00 74 */	stw r0, 0x74(r31)
/* 8029E95C 00267F1C  38 80 FF FF */	li r4, -1
/* 8029E960 00267F20  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8029E964 00267F24  90 1F 00 78 */	stw r0, 0x78(r31)
/* 8029E968 00267F28  88 01 00 24 */	lbz r0, 0x24(r1)
/* 8029E96C 00267F2C  98 1F 00 7C */	stb r0, 0x7c(r31)
/* 8029E970 00267F30  88 01 00 25 */	lbz r0, 0x25(r1)
/* 8029E974 00267F34  98 1F 00 7D */	stb r0, 0x7d(r31)
/* 8029E978 00267F38  88 01 00 26 */	lbz r0, 0x26(r1)
/* 8029E97C 00267F3C  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 8029E980 00267F40  4B F2 50 51 */	bl func_801C39D0
/* 8029E984 00267F44  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029E988 00267F48  4B F2 52 8D */	bl func_801C3C14
/* 8029E98C 00267F4C  3C 60 80 51 */	lis r3, lbl_8050BB30@ha
/* 8029E990 00267F50  38 A0 00 35 */	li r5, 0x35
/* 8029E994 00267F54  38 63 BB 30 */	addi r3, r3, lbl_8050BB30@l
/* 8029E998 00267F58  38 83 00 09 */	addi r4, r3, 9
/* 8029E99C 00267F5C  4B E9 77 F5 */	bl func_80136190
/* 8029E9A0 00267F60  7C 64 1B 78 */	mr r4, r3
/* 8029E9A4 00267F64  38 61 00 28 */	addi r3, r1, 0x28
/* 8029E9A8 00267F68  38 A0 00 75 */	li r5, 0x75
/* 8029E9AC 00267F6C  4B F2 55 25 */	bl func_801C3ED0
/* 8029E9B0 00267F70  38 7F 00 84 */	addi r3, r31, 0x84
/* 8029E9B4 00267F74  38 81 00 2C */	addi r4, r1, 0x2c
/* 8029E9B8 00267F78  4B E7 DF BD */	bl func_8011C974
/* 8029E9BC 00267F7C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8029E9C0 00267F80  38 61 00 28 */	addi r3, r1, 0x28
/* 8029E9C4 00267F84  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8029E9C8 00267F88  38 80 FF FF */	li r4, -1
/* 8029E9CC 00267F8C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8029E9D0 00267F90  90 1F 00 98 */	stw r0, 0x98(r31)
/* 8029E9D4 00267F94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8029E9D8 00267F98  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 8029E9DC 00267F9C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8029E9E0 00267FA0  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 8029E9E4 00267FA4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8029E9E8 00267FA8  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 8029E9EC 00267FAC  88 01 00 50 */	lbz r0, 0x50(r1)
/* 8029E9F0 00267FB0  98 1F 00 A8 */	stb r0, 0xa8(r31)
/* 8029E9F4 00267FB4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8029E9F8 00267FB8  90 1F 00 AC */	stw r0, 0xac(r31)
/* 8029E9FC 00267FBC  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8029EA00 00267FC0  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 8029EA04 00267FC4  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 8029EA08 00267FC8  98 1F 00 B4 */	stb r0, 0xb4(r31)
/* 8029EA0C 00267FCC  88 01 00 5D */	lbz r0, 0x5d(r1)
/* 8029EA10 00267FD0  98 1F 00 B5 */	stb r0, 0xb5(r31)
/* 8029EA14 00267FD4  88 01 00 5E */	lbz r0, 0x5e(r1)
/* 8029EA18 00267FD8  98 1F 00 B6 */	stb r0, 0xb6(r31)
/* 8029EA1C 00267FDC  88 01 00 5F */	lbz r0, 0x5f(r1)
/* 8029EA20 00267FE0  98 1F 00 B7 */	stb r0, 0xb7(r31)
/* 8029EA24 00267FE4  4B F2 55 2D */	bl func_801C3F50
/* 8029EA28 00267FE8  38 7F 00 80 */	addi r3, r31, 0x80
/* 8029EA2C 00267FEC  4B F2 55 79 */	bl func_801C3FA4
/* 8029EA30 00267FF0  38 61 00 60 */	addi r3, r1, 0x60
/* 8029EA34 00267FF4  48 00 10 B1 */	bl func_8029FAE4
/* 8029EA38 00267FF8  38 7F 00 BC */	addi r3, r31, 0xbc
/* 8029EA3C 00267FFC  38 81 00 64 */	addi r4, r1, 0x64
/* 8029EA40 00268000  4B E7 DF 35 */	bl func_8011C974
/* 8029EA44 00268004  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8029EA48 00268008  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 8029EA4C 0026800C  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 8029EA50 00268010  38 81 00 98 */	addi r4, r1, 0x98
/* 8029EA54 00268014  80 01 00 78 */	lwz r0, 0x78(r1)
/* 8029EA58 00268018  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8029EA5C 0026801C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8029EA60 00268020  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 8029EA64 00268024  80 01 00 80 */	lwz r0, 0x80(r1)
/* 8029EA68 00268028  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 8029EA6C 0026802C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8029EA70 00268030  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 8029EA74 00268034  88 01 00 88 */	lbz r0, 0x88(r1)
/* 8029EA78 00268038  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 8029EA7C 0026803C  88 01 00 89 */	lbz r0, 0x89(r1)
/* 8029EA80 00268040  98 1F 00 E1 */	stb r0, 0xe1(r31)
/* 8029EA84 00268044  88 01 00 8A */	lbz r0, 0x8a(r1)
/* 8029EA88 00268048  98 1F 00 E2 */	stb r0, 0xe2(r31)
/* 8029EA8C 0026804C  88 01 00 8B */	lbz r0, 0x8b(r1)
/* 8029EA90 00268050  98 1F 00 E3 */	stb r0, 0xe3(r31)
/* 8029EA94 00268054  A8 01 00 8C */	lha r0, 0x8c(r1)
/* 8029EA98 00268058  B0 1F 00 E4 */	sth r0, 0xe4(r31)
/* 8029EA9C 0026805C  A8 01 00 8E */	lha r0, 0x8e(r1)
/* 8029EAA0 00268060  B0 1F 00 E6 */	sth r0, 0xe6(r31)
/* 8029EAA4 00268064  88 01 00 90 */	lbz r0, 0x90(r1)
/* 8029EAA8 00268068  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 8029EAAC 0026806C  4B E7 DE C9 */	bl func_8011C974
/* 8029EAB0 00268070  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 8029EAB4 00268074  38 7F 01 2C */	addi r3, r31, 0x12c
/* 8029EAB8 00268078  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8029EABC 0026807C  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8029EAC0 00268080  80 01 00 AC */	lwz r0, 0xac(r1)
/* 8029EAC4 00268084  90 1F 01 04 */	stw r0, 0x104(r31)
/* 8029EAC8 00268088  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 8029EACC 0026808C  90 1F 01 08 */	stw r0, 0x108(r31)
/* 8029EAD0 00268090  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8029EAD4 00268094  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 8029EAD8 00268098  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 8029EADC 0026809C  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8029EAE0 002680A0  88 01 00 BC */	lbz r0, 0xbc(r1)
/* 8029EAE4 002680A4  98 1F 01 14 */	stb r0, 0x114(r31)
/* 8029EAE8 002680A8  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 8029EAEC 002680AC  90 1F 01 18 */	stw r0, 0x118(r31)
/* 8029EAF0 002680B0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8029EAF4 002680B4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8029EAF8 002680B8  88 01 00 C8 */	lbz r0, 0xc8(r1)
/* 8029EAFC 002680BC  98 1F 01 20 */	stb r0, 0x120(r31)
/* 8029EB00 002680C0  88 01 00 C9 */	lbz r0, 0xc9(r1)
/* 8029EB04 002680C4  98 1F 01 21 */	stb r0, 0x121(r31)
/* 8029EB08 002680C8  88 01 00 CA */	lbz r0, 0xca(r1)
/* 8029EB0C 002680CC  98 1F 01 22 */	stb r0, 0x122(r31)
/* 8029EB10 002680D0  88 01 00 CB */	lbz r0, 0xcb(r1)
/* 8029EB14 002680D4  98 1F 01 23 */	stb r0, 0x123(r31)
/* 8029EB18 002680D8  88 01 00 CC */	lbz r0, 0xcc(r1)
/* 8029EB1C 002680DC  98 1F 01 24 */	stb r0, 0x124(r31)
/* 8029EB20 002680E0  88 01 00 CD */	lbz r0, 0xcd(r1)
/* 8029EB24 002680E4  98 1F 01 25 */	stb r0, 0x125(r31)
/* 8029EB28 002680E8  4B E7 DE 4D */	bl func_8011C974
/* 8029EB2C 002680EC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8029EB30 002680F0  38 61 00 60 */	addi r3, r1, 0x60
/* 8029EB34 002680F4  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 8029EB38 002680F8  38 80 FF FF */	li r4, -1
/* 8029EB3C 002680FC  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 8029EB40 00268100  90 1F 01 40 */	stw r0, 0x140(r31)
/* 8029EB44 00268104  80 01 00 EC */	lwz r0, 0xec(r1)
/* 8029EB48 00268108  90 1F 01 44 */	stw r0, 0x144(r31)
/* 8029EB4C 0026810C  88 01 00 F0 */	lbz r0, 0xf0(r1)
/* 8029EB50 00268110  98 1F 01 48 */	stb r0, 0x148(r31)
/* 8029EB54 00268114  88 01 00 F1 */	lbz r0, 0xf1(r1)
/* 8029EB58 00268118  98 1F 01 49 */	stb r0, 0x149(r31)
/* 8029EB5C 0026811C  88 01 00 F2 */	lbz r0, 0xf2(r1)
/* 8029EB60 00268120  98 1F 01 4A */	stb r0, 0x14a(r31)
/* 8029EB64 00268124  88 01 00 F3 */	lbz r0, 0xf3(r1)
/* 8029EB68 00268128  98 1F 01 4B */	stb r0, 0x14b(r31)
/* 8029EB6C 0026812C  88 01 00 F4 */	lbz r0, 0xf4(r1)
/* 8029EB70 00268130  98 1F 01 4C */	stb r0, 0x14c(r31)
/* 8029EB74 00268134  48 00 10 01 */	bl func_8029FB74
/* 8029EB78 00268138  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EB7C 0026813C  48 00 10 65 */	bl func_8029FBE0
/* 8029EB80 00268140  2C 1F 00 00 */	cmpwi r31, 0
/* 8029EB84 00268144  7F E4 FB 78 */	mr r4, r31
/* 8029EB88 00268148  41 82 00 08 */	beq lbl_8029EB90
/* 8029EB8C 0026814C  38 9F 00 58 */	addi r4, r31, 0x58
lbl_8029EB90:
/* 8029EB90 00268150  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 8029EB94 00268154  38 A0 00 0D */	li r5, 0xd
/* 8029EB98 00268158  38 C0 00 00 */	li r6, 0
/* 8029EB9C 0026815C  48 1F 73 19 */	bl func_80495EB4
/* 8029EBA0 00268160  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8029EBA4 00268164  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8029EBA8 00268168  7C 08 03 A6 */	mtlr r0
/* 8029EBAC 0026816C  38 21 01 00 */	addi r1, r1, 0x100
/* 8029EBB0 00268170  4E 80 00 20 */	blr 

.global func_8029EBB4
func_8029EBB4:
/* 8029EBB4 00268174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EBB8 00268178  7C 08 02 A6 */	mflr r0
/* 8029EBBC 0026817C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EBC0 00268180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029EBC4 00268184  7C 7F 1B 78 */	mr r31, r3
/* 8029EBC8 00268188  48 1A 9E 7D */	bl func_80448A44
/* 8029EBCC 0026818C  2C 1F 00 00 */	cmpwi r31, 0
/* 8029EBD0 00268190  7F E4 FB 78 */	mr r4, r31
/* 8029EBD4 00268194  41 82 00 08 */	beq lbl_8029EBDC
/* 8029EBD8 00268198  38 9F 00 58 */	addi r4, r31, 0x58
lbl_8029EBDC:
/* 8029EBDC 0026819C  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 8029EBE0 002681A0  48 1F 73 71 */	bl func_80495F50
/* 8029EBE4 002681A4  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029EBE8 002681A8  4B F2 51 B5 */	bl func_801C3D9C
/* 8029EBEC 002681AC  38 7F 00 80 */	addi r3, r31, 0x80
/* 8029EBF0 002681B0  4B F2 54 B1 */	bl func_801C40A0
/* 8029EBF4 002681B4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EBF8 002681B8  48 00 12 39 */	bl func_8029FE30
/* 8029EBFC 002681BC  38 00 00 00 */	li r0, 0
/* 8029EC00 002681C0  90 0D B1 B0 */	stw r0, lbl_80667330@sda21(r13)
/* 8029EC04 002681C4  38 60 00 00 */	li r3, 0
/* 8029EC08 002681C8  4B DE 3D 45 */	bl func_8008294C
/* 8029EC0C 002681CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EC10 002681D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EC14 002681D4  7C 08 03 A6 */	mtlr r0
/* 8029EC18 002681D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EC1C 002681DC  4E 80 00 20 */	blr 

.global func_8029EC20
func_8029EC20:
/* 8029EC20 002681E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EC24 002681E4  7C 08 02 A6 */	mflr r0
/* 8029EC28 002681E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EC2C 002681EC  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029EC30 002681F0  7C 7E 1B 78 */	mr r30, r3
/* 8029EC34 002681F4  4B DA 18 B5 */	bl func_800404E8
/* 8029EC38 002681F8  4B DA 3A B9 */	bl func_800426F0
/* 8029EC3C 002681FC  2C 03 00 00 */	cmpwi r3, 0
/* 8029EC40 00268200  40 82 00 EC */	bne lbl_8029ED2C
/* 8029EC44 00268204  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8029EC48 00268208  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8029EC4C 0026820C  41 82 00 08 */	beq lbl_8029EC54
/* 8029EC50 00268210  48 00 00 DC */	b lbl_8029ED2C
lbl_8029EC54:
/* 8029EC54 00268214  4B DE 85 69 */	bl func_800871BC
/* 8029EC58 00268218  7C 7F 1B 78 */	mr r31, r3
/* 8029EC5C 0026821C  38 60 FF FF */	li r3, -1
/* 8029EC60 00268220  4B DE 83 3D */	bl func_80086F9C
/* 8029EC64 00268224  2C 03 00 00 */	cmpwi r3, 0
/* 8029EC68 00268228  41 82 00 10 */	beq lbl_8029EC78
/* 8029EC6C 0026822C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8029EC70 00268230  54 00 4F FE */	rlwinm r0, r0, 9, 0x1f, 0x1f
/* 8029EC74 00268234  48 00 00 0C */	b lbl_8029EC80
lbl_8029EC78:
/* 8029EC78 00268238  80 1F 00 04 */	lwz r0, 4(r31)
/* 8029EC7C 0026823C  54 00 B7 FE */	rlwinm r0, r0, 0x16, 0x1f, 0x1f
lbl_8029EC80:
/* 8029EC80 00268240  2C 00 00 00 */	cmpwi r0, 0
/* 8029EC84 00268244  41 82 00 3C */	beq lbl_8029ECC0
/* 8029EC88 00268248  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 8029EC8C 0026824C  48 00 15 65 */	bl func_802A01F0
/* 8029EC90 00268250  2C 03 00 00 */	cmpwi r3, 0
/* 8029EC94 00268254  40 82 00 2C */	bne lbl_8029ECC0
/* 8029EC98 00268258  4B E6 01 61 */	bl func_800FEDF8
/* 8029EC9C 0026825C  2C 03 00 00 */	cmpwi r3, 0
/* 8029ECA0 00268260  41 82 00 10 */	beq lbl_8029ECB0
/* 8029ECA4 00268264  4B E6 0C 71 */	bl func_800FF914
/* 8029ECA8 00268268  38 60 00 06 */	li r3, 6
/* 8029ECAC 0026826C  4B E9 93 CD */	bl func_80138078
lbl_8029ECB0:
/* 8029ECB0 00268270  38 60 00 04 */	li r3, 4
/* 8029ECB4 00268274  38 00 00 01 */	li r0, 1
/* 8029ECB8 00268278  98 7E 01 50 */	stb r3, 0x150(r30)
/* 8029ECBC 0026827C  98 1E 00 54 */	stb r0, 0x54(r30)
lbl_8029ECC0:
/* 8029ECC0 00268280  88 1E 01 50 */	lbz r0, 0x150(r30)
/* 8029ECC4 00268284  2C 00 00 00 */	cmpwi r0, 0
/* 8029ECC8 00268288  41 82 00 20 */	beq lbl_8029ECE8
/* 8029ECCC 0026828C  2C 00 00 01 */	cmpwi r0, 1
/* 8029ECD0 00268290  41 82 00 24 */	beq lbl_8029ECF4
/* 8029ECD4 00268294  2C 00 00 02 */	cmpwi r0, 2
/* 8029ECD8 00268298  41 82 00 28 */	beq lbl_8029ED00
/* 8029ECDC 0026829C  2C 00 00 03 */	cmpwi r0, 3
/* 8029ECE0 002682A0  41 82 00 2C */	beq lbl_8029ED0C
/* 8029ECE4 002682A4  48 00 00 30 */	b lbl_8029ED14
lbl_8029ECE8:
/* 8029ECE8 002682A8  7F C3 F3 78 */	mr r3, r30
/* 8029ECEC 002682AC  48 00 01 7D */	bl func_8029EE68
/* 8029ECF0 002682B0  48 00 00 24 */	b lbl_8029ED14
lbl_8029ECF4:
/* 8029ECF4 002682B4  7F C3 F3 78 */	mr r3, r30
/* 8029ECF8 002682B8  48 00 01 E9 */	bl func_8029EEE0
/* 8029ECFC 002682BC  48 00 00 18 */	b lbl_8029ED14
lbl_8029ED00:
/* 8029ED00 002682C0  7F C3 F3 78 */	mr r3, r30
/* 8029ED04 002682C4  48 00 02 2D */	bl func_8029EF30
/* 8029ED08 002682C8  48 00 00 0C */	b lbl_8029ED14
lbl_8029ED0C:
/* 8029ED0C 002682CC  7F C3 F3 78 */	mr r3, r30
/* 8029ED10 002682D0  48 00 03 39 */	bl func_8029F048
lbl_8029ED14:
/* 8029ED14 002682D4  38 7E 00 60 */	addi r3, r30, 0x60
/* 8029ED18 002682D8  4B F2 50 3D */	bl func_801C3D54
/* 8029ED1C 002682DC  38 7E 00 80 */	addi r3, r30, 0x80
/* 8029ED20 002682E0  4B F2 52 D1 */	bl func_801C3FF0
/* 8029ED24 002682E4  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 8029ED28 002682E8  48 00 0F B5 */	bl func_8029FCDC
lbl_8029ED2C:
/* 8029ED2C 002682EC  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029ED30 002682F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029ED34 002682F4  7C 08 03 A6 */	mtlr r0
/* 8029ED38 002682F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029ED3C 002682FC  4E 80 00 20 */	blr

.global func_8029ED40
func_8029ED40:
/* 8029ED40 00268300  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8029ED44 00268304  7C 08 02 A6 */	mflr r0
/* 8029ED48 00268308  90 01 00 74 */	stw r0, 0x74(r1)
/* 8029ED4C 0026830C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8029ED50 00268310  7C 7F 1B 78 */	mr r31, r3
/* 8029ED54 00268314  4B DA 17 95 */	bl func_800404E8
/* 8029ED58 00268318  4B DA 39 99 */	bl func_800426F0
/* 8029ED5C 0026831C  2C 03 00 00 */	cmpwi r3, 0
/* 8029ED60 00268320  40 82 00 70 */	bne lbl_8029EDD0
/* 8029ED64 00268324  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8029ED68 00268328  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8029ED6C 0026832C  41 82 00 08 */	beq lbl_8029ED74
/* 8029ED70 00268330  48 00 00 60 */	b lbl_8029EDD0
lbl_8029ED74:
/* 8029ED74 00268334  4B E9 D0 DD */	bl func_8013BE50
/* 8029ED78 00268338  2C 03 00 00 */	cmpwi r3, 0
/* 8029ED7C 0026833C  41 82 00 54 */	beq lbl_8029EDD0
/* 8029ED80 00268340  38 60 00 00 */	li r3, 0
/* 8029ED84 00268344  38 80 00 00 */	li r4, 0
/* 8029ED88 00268348  38 A0 00 00 */	li r5, 0
/* 8029ED8C 0026834C  48 07 F4 B5 */	bl GXSetZMode
/* 8029ED90 00268350  38 61 00 08 */	addi r3, r1, 8
/* 8029ED94 00268354  48 16 98 D5 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 8029ED98 00268358  38 61 00 08 */	addi r3, r1, 8
/* 8029ED9C 0026835C  4B E9 84 B5 */	bl func_80137250
/* 8029EDA0 00268360  38 7F 00 60 */	addi r3, r31, 0x60
/* 8029EDA4 00268364  38 81 00 08 */	addi r4, r1, 8
/* 8029EDA8 00268368  4B F2 4F D5 */	bl func_801C3D7C
/* 8029EDAC 0026836C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EDB0 00268370  38 81 00 08 */	addi r4, r1, 8
/* 8029EDB4 00268374  48 00 10 09 */	bl func_8029FDBC
/* 8029EDB8 00268378  38 7F 00 80 */	addi r3, r31, 0x80
/* 8029EDBC 0026837C  38 81 00 08 */	addi r4, r1, 8
/* 8029EDC0 00268380  4B F2 52 C1 */	bl func_801C4080
/* 8029EDC4 00268384  38 61 00 08 */	addi r3, r1, 8
/* 8029EDC8 00268388  38 80 FF FF */	li r4, -1
/* 8029EDCC 0026838C  48 16 99 11 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
lbl_8029EDD0:
/* 8029EDD0 00268390  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8029EDD4 00268394  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8029EDD8 00268398  7C 08 03 A6 */	mtlr r0
/* 8029EDDC 0026839C  38 21 00 70 */	addi r1, r1, 0x70
/* 8029EDE0 002683A0  4E 80 00 20 */	blr 

.global func_8029EDE4
func_8029EDE4:
/* 8029EDE4 002683A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EDE8 002683A8  7C 08 02 A6 */	mflr r0
/* 8029EDEC 002683AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EDF0 002683B0  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029EDF4 002683B4  7C 7E 1B 78 */	mr r30, r3
/* 8029EDF8 002683B8  7C 9F 23 78 */	mr r31, r4
/* 8029EDFC 002683BC  80 0D B1 B0 */	lwz r0, lbl_80667330@sda21(r13)
/* 8029EE00 002683C0  2C 00 00 00 */	cmpwi r0, 0
/* 8029EE04 002683C4  41 82 00 0C */	beq lbl_8029EE10
/* 8029EE08 002683C8  38 60 00 00 */	li r3, 0
/* 8029EE0C 002683CC  48 00 00 38 */	b lbl_8029EE44
lbl_8029EE10:
/* 8029EE10 002683D0  48 19 87 A5 */	bl func_804375B4
/* 8029EE14 002683D4  7C 64 1B 78 */	mr r4, r3
/* 8029EE18 002683D8  38 60 01 54 */	li r3, 0x154
/* 8029EE1C 002683DC  48 19 5C 41 */	bl func_80434A5C
/* 8029EE20 002683E0  2C 03 00 00 */	cmpwi r3, 0
/* 8029EE24 002683E4  41 82 00 0C */	beq lbl_8029EE30
/* 8029EE28 002683E8  7F E4 FB 78 */	mr r4, r31
/* 8029EE2C 002683EC  4B FF F9 B9 */	bl func_8029E7E4
lbl_8029EE30:
/* 8029EE30 002683F0  90 6D B1 B0 */	stw r3, lbl_80667330@sda21(r13)
/* 8029EE34 002683F4  7F C4 F3 78 */	mr r4, r30
/* 8029EE38 002683F8  38 A0 00 00 */	li r5, 0
/* 8029EE3C 002683FC  48 1A 5E 39 */	bl func_80444C74
/* 8029EE40 00268400  80 6D B1 B0 */	lwz r3, lbl_80667330@sda21(r13)
lbl_8029EE44:
/* 8029EE44 00268404  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029EE48 00268408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EE4C 0026840C  7C 08 03 A6 */	mtlr r0
/* 8029EE50 00268410  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EE54 00268414  4E 80 00 20 */	blr 

.global func_8029EE58
func_8029EE58:
/* 8029EE58 00268418  80 6D B1 B0 */	lwz r3, lbl_80667330@sda21(r13)
/* 8029EE5C 0026841C  30 03 FF FF */	addic r0, r3, -1
/* 8029EE60 00268420  7C 60 19 10 */	subfe r3, r0, r3
/* 8029EE64 00268424  4E 80 00 20 */	blr 

.global func_8029EE68
func_8029EE68:
/* 8029EE68 00268428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EE6C 0026842C  7C 08 02 A6 */	mflr r0
/* 8029EE70 00268430  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EE74 00268434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029EE78 00268438  7C 7F 1B 78 */	mr r31, r3
/* 8029EE7C 0026843C  38 63 00 60 */	addi r3, r3, 0x60
/* 8029EE80 00268440  4B F2 4F B5 */	bl func_801C3E34
/* 8029EE84 00268444  2C 03 00 00 */	cmpwi r3, 0
/* 8029EE88 00268448  41 82 00 44 */	beq lbl_8029EECC
/* 8029EE8C 0026844C  38 7F 00 80 */	addi r3, r31, 0x80
/* 8029EE90 00268450  4B F2 52 85 */	bl func_801C4114
/* 8029EE94 00268454  2C 03 00 00 */	cmpwi r3, 0
/* 8029EE98 00268458  41 82 00 34 */	beq lbl_8029EECC
/* 8029EE9C 0026845C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EEA0 00268460  48 00 10 1D */	bl func_8029FEBC
/* 8029EEA4 00268464  2C 03 00 00 */	cmpwi r3, 0
/* 8029EEA8 00268468  41 82 00 24 */	beq lbl_8029EECC
/* 8029EEAC 0026846C  38 7F 00 80 */	addi r3, r31, 0x80
/* 8029EEB0 00268470  4B F2 52 7D */	bl func_801C412C
/* 8029EEB4 00268474  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EEB8 00268478  48 00 11 51 */	bl func_802A0008
/* 8029EEBC 0026847C  38 00 00 01 */	li r0, 1
/* 8029EEC0 00268480  98 1F 01 50 */	stb r0, 0x150(r31)
/* 8029EEC4 00268484  38 60 00 6D */	li r3, 0x6d
/* 8029EEC8 00268488  4B E9 91 B1 */	bl func_80138078
lbl_8029EECC:
/* 8029EECC 0026848C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EED0 00268490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EED4 00268494  7C 08 03 A6 */	mtlr r0
/* 8029EED8 00268498  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EEDC 0026849C  4E 80 00 20 */	blr 

.global func_8029EEE0
func_8029EEE0:
/* 8029EEE0 002684A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EEE4 002684A4  7C 08 02 A6 */	mflr r0
/* 8029EEE8 002684A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EEEC 002684AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029EEF0 002684B0  7C 7F 1B 78 */	mr r31, r3
/* 8029EEF4 002684B4  38 63 00 80 */	addi r3, r3, 0x80
/* 8029EEF8 002684B8  4B F2 52 2D */	bl func_801C4124
/* 8029EEFC 002684BC  2C 03 00 00 */	cmpwi r3, 0
/* 8029EF00 002684C0  41 82 00 1C */	beq lbl_8029EF1C
/* 8029EF04 002684C4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EF08 002684C8  48 00 0F F9 */	bl func_8029FF00
/* 8029EF0C 002684CC  2C 03 00 00 */	cmpwi r3, 0
/* 8029EF10 002684D0  41 82 00 0C */	beq lbl_8029EF1C
/* 8029EF14 002684D4  38 00 00 02 */	li r0, 2
/* 8029EF18 002684D8  98 1F 01 50 */	stb r0, 0x150(r31)
lbl_8029EF1C:
/* 8029EF1C 002684DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EF20 002684E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EF24 002684E4  7C 08 03 A6 */	mtlr r0
/* 8029EF28 002684E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EF2C 002684EC  4E 80 00 20 */	blr 

.global func_8029EF30
func_8029EF30:
/* 8029EF30 002684F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EF34 002684F4  7C 08 02 A6 */	mflr r0
/* 8029EF38 002684F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EF3C 002684FC  BF C1 00 08 */	stmw r30, 8(r1)
/* 8029EF40 00268500  7C 7F 1B 78 */	mr r31, r3
/* 8029EF44 00268504  38 63 00 B8 */	addi r3, r3, 0xb8
/* 8029EF48 00268508  48 00 0F 75 */	bl func_8029FEBC
/* 8029EF4C 0026850C  2C 03 00 00 */	cmpwi r3, 0
/* 8029EF50 00268510  41 82 00 E4 */	beq lbl_8029F034
/* 8029EF54 00268514  4B DE 82 E5 */	bl func_80087238
/* 8029EF58 00268518  7C 7E 1B 78 */	mr r30, r3
/* 8029EF5C 0026851C  38 60 FF FF */	li r3, -1
/* 8029EF60 00268520  4B DE 80 3D */	bl func_80086F9C
/* 8029EF64 00268524  2C 03 00 00 */	cmpwi r3, 0
/* 8029EF68 00268528  41 82 00 30 */	beq lbl_8029EF98
/* 8029EF6C 0026852C  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8029EF70 00268530  80 1E 00 04 */	lwz r0, 4(r30)
/* 8029EF74 00268534  70 64 40 02 */	andi. r4, r3, 0x4002
/* 8029EF78 00268538  70 63 20 01 */	andi. r3, r3, 0x2001
/* 8029EF7C 0026853C  54 05 5F FE */	rlwinm r5, r0, 0xb, 0x1f, 0x1f
/* 8029EF80 00268540  54 06 57 FE */	rlwinm r6, r0, 0xa, 0x1f, 0x1f
/* 8029EF84 00268544  30 04 FF FF */	addic r0, r4, -1
/* 8029EF88 00268548  7C 80 21 10 */	subfe r4, r0, r4
/* 8029EF8C 0026854C  30 03 FF FF */	addic r0, r3, -1
/* 8029EF90 00268550  7C 00 19 10 */	subfe r0, r0, r3
/* 8029EF94 00268554  48 00 00 2C */	b lbl_8029EFC0
lbl_8029EF98:
/* 8029EF98 00268558  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8029EF9C 0026855C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8029EFA0 00268560  70 64 40 02 */	andi. r4, r3, 0x4002
/* 8029EFA4 00268564  70 63 20 01 */	andi. r3, r3, 0x2001
/* 8029EFA8 00268568  54 05 E7 FE */	rlwinm r5, r0, 0x1c, 0x1f, 0x1f
/* 8029EFAC 0026856C  54 06 DF FE */	rlwinm r6, r0, 0x1b, 0x1f, 0x1f
/* 8029EFB0 00268570  30 04 FF FF */	addic r0, r4, -1
/* 8029EFB4 00268574  7C 80 21 10 */	subfe r4, r0, r4
/* 8029EFB8 00268578  30 03 FF FF */	addic r0, r3, -1
/* 8029EFBC 0026857C  7C 00 19 10 */	subfe r0, r0, r3
lbl_8029EFC0:
/* 8029EFC0 00268580  2C 05 00 00 */	cmpwi r5, 0
/* 8029EFC4 00268584  41 82 00 10 */	beq lbl_8029EFD4
/* 8029EFC8 00268588  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EFCC 0026858C  48 00 10 91 */	bl func_802A005C
/* 8029EFD0 00268590  48 00 00 3C */	b lbl_8029F00C
lbl_8029EFD4:
/* 8029EFD4 00268594  2C 06 00 00 */	cmpwi r6, 0
/* 8029EFD8 00268598  41 82 00 10 */	beq lbl_8029EFE8
/* 8029EFDC 0026859C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EFE0 002685A0  48 00 11 69 */	bl func_802A0148
/* 8029EFE4 002685A4  48 00 00 28 */	b lbl_8029F00C
lbl_8029EFE8:
/* 8029EFE8 002685A8  2C 04 00 00 */	cmpwi r4, 0
/* 8029EFEC 002685AC  41 82 00 10 */	beq lbl_8029EFFC
/* 8029EFF0 002685B0  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029EFF4 002685B4  48 00 0F 31 */	bl func_8029FF24
/* 8029EFF8 002685B8  48 00 00 14 */	b lbl_8029F00C
lbl_8029EFFC:
/* 8029EFFC 002685BC  2C 00 00 00 */	cmpwi r0, 0
/* 8029F000 002685C0  41 82 00 0C */	beq lbl_8029F00C
/* 8029F004 002685C4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029F008 002685C8  48 00 0F 91 */	bl func_8029FF98
lbl_8029F00C:
/* 8029F00C 002685CC  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029F010 002685D0  48 00 0F 0D */	bl func_8029FF1C
/* 8029F014 002685D4  2C 03 00 00 */	cmpwi r3, 0
/* 8029F018 002685D8  41 82 00 1C */	beq lbl_8029F034
/* 8029F01C 002685DC  38 7F 00 80 */	addi r3, r31, 0x80
/* 8029F020 002685E0  4B F2 51 2D */	bl func_801C414C
/* 8029F024 002685E4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029F028 002685E8  48 00 10 01 */	bl func_802A0028
/* 8029F02C 002685EC  38 00 00 03 */	li r0, 3
/* 8029F030 002685F0  98 1F 01 50 */	stb r0, 0x150(r31)
lbl_8029F034:
/* 8029F034 002685F4  BB C1 00 08 */	lmw r30, 8(r1)
/* 8029F038 002685F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F03C 002685FC  7C 08 03 A6 */	mtlr r0
/* 8029F040 00268600  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F044 00268604  4E 80 00 20 */	blr 

.global func_8029F048
func_8029F048:
/* 8029F048 00268608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029F04C 0026860C  7C 08 02 A6 */	mflr r0
/* 8029F050 00268610  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029F054 00268614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029F058 00268618  7C 7F 1B 78 */	mr r31, r3
/* 8029F05C 0026861C  38 63 00 80 */	addi r3, r3, 0x80
/* 8029F060 00268620  4B F2 50 C5 */	bl func_801C4124
/* 8029F064 00268624  2C 03 00 00 */	cmpwi r3, 0
/* 8029F068 00268628  41 82 00 1C */	beq lbl_8029F084
/* 8029F06C 0026862C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 8029F070 00268630  48 00 0E 91 */	bl func_8029FF00
/* 8029F074 00268634  2C 03 00 00 */	cmpwi r3, 0
/* 8029F078 00268638  41 82 00 0C */	beq lbl_8029F084
/* 8029F07C 0026863C  38 00 00 01 */	li r0, 1
/* 8029F080 00268640  98 1F 00 54 */	stb r0, 0x54(r31)
lbl_8029F084:
/* 8029F084 00268644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029F088 00268648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029F08C 0026864C  7C 08 03 A6 */	mtlr r0
/* 8029F090 00268650  38 21 00 10 */	addi r1, r1, 0x10
/* 8029F094 00268654  4E 80 00 20 */	blr 

.global func_8029F098
func_8029F098:
/* 8029F098 00268658  38 63 FF A8 */	addi r3, r3, -88
/* 8029F09C 0026865C  4B FF FC A4 */	b func_8029ED40

.global func_8029F0A0
func_8029F0A0:
/* 8029F0A0 00268660  38 63 FF A8 */	addi r3, r3, -88
/* 8029F0A4 00268664  4B FF F8 00 */	b func_8029E8A4