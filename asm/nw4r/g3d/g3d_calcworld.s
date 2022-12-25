.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global CalcWorld__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlPCUcPCQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjChrPQ34nw4r3g3d16FuncObjCalcWorldUl
CalcWorld__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlPCUcPCQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjChrPQ34nw4r3g3d16FuncObjCalcWorldUl:
/* 803EE6DC 003B7C9C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 803EE6E0 003B7CA0  7C 08 02 A6 */	mflr r0
/* 803EE6E4 003B7CA4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 803EE6E8 003B7CA8  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 803EE6EC 003B7CAC  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 803EE6F0 003B7CB0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 803EE6F4 003B7CB4  4B EC BA 2D */	bl _savegpr_14
/* 803EE6F8 003B7CB8  2C 05 00 00 */	cmpwi r5, 0
/* 803EE6FC 003B7CBC  7C 72 1B 78 */	mr r18, r3
/* 803EE700 003B7CC0  7C 93 23 78 */	mr r19, r4
/* 803EE704 003B7CC4  7C B4 2B 78 */	mr r20, r5
/* 803EE708 003B7CC8  7C D1 33 78 */	mr r17, r6
/* 803EE70C 003B7CCC  7C F5 3B 78 */	mr r21, r7
/* 803EE710 003B7CD0  7D 0E 43 78 */	mr r14, r8
/* 803EE714 003B7CD4  7D 36 4B 78 */	mr r22, r9
/* 803EE718 003B7CD8  7D 4F 53 78 */	mr r15, r10
/* 803EE71C 003B7CDC  3B E0 00 00 */	li r31, 0
/* 803EE720 003B7CE0  40 82 00 20 */	bne lbl_803EE740
/* 803EE724 003B7CE4  3C 80 80 57 */	lis r4, lbl_8056CEC8@ha
/* 803EE728 003B7CE8  7E A3 AB 78 */	mr r3, r21
/* 803EE72C 003B7CEC  38 84 CE C8 */	addi r4, r4, lbl_8056CEC8@l
/* 803EE730 003B7CF0  4B FE AE A5 */	bl GetResByteCode__Q34nw4r3g3d6ResMdlCFPCc
/* 803EE734 003B7CF4  2C 03 00 00 */	cmpwi r3, 0
/* 803EE738 003B7CF8  7C 74 1B 78 */	mr r20, r3
/* 803EE73C 003B7CFC  41 82 05 44 */	beq lbl_803EEC80
lbl_803EE740:
/* 803EE740 003B7D00  80 75 00 00 */	lwz r3, 0(r21)
/* 803EE744 003B7D04  55 E0 2F FE */	rlwinm r0, r15, 5, 0x1f, 0x1f
/* 803EE748 003B7D08  90 01 00 74 */	stw r0, 0x74(r1)
/* 803EE74C 003B7D0C  38 63 00 4C */	addi r3, r3, 0x4c
/* 803EE750 003B7D10  80 63 00 08 */	lwz r3, 8(r3)
/* 803EE754 003B7D14  38 03 FF FF */	addi r0, r3, -1
/* 803EE758 003B7D18  7C 00 00 34 */	cntlzw r0, r0
/* 803EE75C 003B7D1C  54 00 D9 7E */	srwi r0, r0, 5
/* 803EE760 003B7D20  98 01 00 70 */	stb r0, 0x70(r1)
/* 803EE764 003B7D24  4B FF FF 39 */	bl GetScaleTemporary__Q44nw4r3g3d6detail7workmemFv
/* 803EE768 003B7D28  C0 02 C0 C0 */	lfs f0, lbl_8066C440@sda21(r2)
/* 803EE76C 003B7D2C  7C 70 1B 78 */	mr r16, r3
/* 803EE770 003B7D30  7E 44 93 78 */	mr r4, r18
/* 803EE774 003B7D34  D0 03 00 08 */	stfs f0, 8(r3)
/* 803EE778 003B7D38  D0 03 00 04 */	stfs f0, 4(r3)
/* 803EE77C 003B7D3C  D0 03 00 00 */	stfs f0, 0(r3)
/* 803EE780 003B7D40  7E 23 8B 78 */	mr r3, r17
/* 803EE784 003B7D44  4B F5 EA 8D */	bl PSMTXCopy
/* 803EE788 003B7D48  4B FF FF 21 */	bl GetMtxIDTemporary__Q44nw4r3g3d6detail7workmemFv
/* 803EE78C 003B7D4C  91 F3 00 00 */	stw r15, 0(r19)
/* 803EE790 003B7D50  7C 7E 1B 78 */	mr r30, r3
/* 803EE794 003B7D54  3B A0 00 00 */	li r29, 0
/* 803EE798 003B7D58  3A 20 00 00 */	li r17, 0
/* 803EE79C 003B7D5C  48 00 04 3C */	b lbl_803EEBD8
lbl_803EE7A0:
/* 803EE7A0 003B7D60  28 00 00 02 */	cmplwi r0, 2
/* 803EE7A4 003B7D64  40 82 03 BC */	bne lbl_803EEB60
/* 803EE7A8 003B7D68  88 14 00 01 */	lbz r0, 1(r20)
/* 803EE7AC 003B7D6C  7E A3 AB 78 */	mr r3, r21
/* 803EE7B0 003B7D70  88 94 00 03 */	lbz r4, 3(r20)
/* 803EE7B4 003B7D74  54 07 40 2E */	slwi r7, r0, 8
/* 803EE7B8 003B7D78  88 D4 00 02 */	lbz r6, 2(r20)
/* 803EE7BC 003B7D7C  88 14 00 04 */	lbz r0, 4(r20)
/* 803EE7C0 003B7D80  54 85 40 2E */	slwi r5, r4, 8
/* 803EE7C4 003B7D84  7F 87 32 14 */	add r28, r7, r6
/* 803EE7C8 003B7D88  7F 84 E3 78 */	mr r4, r28
/* 803EE7CC 003B7D8C  7F 05 02 14 */	add r24, r5, r0
/* 803EE7D0 003B7D90  4B FE AF 31 */	bl GetResNode__Q34nw4r3g3d6ResMdlCFUl
/* 803EE7D4 003B7D94  2C 03 00 00 */	cmpwi r3, 0
/* 803EE7D8 003B7D98  90 61 00 14 */	stw r3, 0x14(r1)
/* 803EE7DC 003B7D9C  41 82 00 0C */	beq lbl_803EE7E8
/* 803EE7E0 003B7DA0  81 E3 00 10 */	lwz r15, 0x10(r3)
/* 803EE7E4 003B7DA4  48 00 00 08 */	b lbl_803EE7EC
lbl_803EE7E8:
/* 803EE7E8 003B7DA8  39 E0 00 00 */	li r15, 0
lbl_803EE7EC:
/* 803EE7EC 003B7DAC  7D FE 89 2E */	stwx r15, r30, r17
/* 803EE7F0 003B7DB0  57 00 10 3A */	slwi r0, r24, 2
/* 803EE7F4 003B7DB4  1C 6F 00 30 */	mulli r3, r15, 0x30
/* 803EE7F8 003B7DB8  2C 0E 00 00 */	cmpwi r14, 0
/* 803EE7FC 003B7DBC  7E F3 00 2E */	lwzx r23, r19, r0
/* 803EE800 003B7DC0  3B BD 00 01 */	addi r29, r29, 1
/* 803EE804 003B7DC4  3A 31 00 04 */	addi r17, r17, 4
/* 803EE808 003B7DC8  1C 0F 00 0C */	mulli r0, r15, 0xc
/* 803EE80C 003B7DCC  7F 72 1A 14 */	add r27, r18, r3
/* 803EE810 003B7DD0  1C 78 00 30 */	mulli r3, r24, 0x30
/* 803EE814 003B7DD4  7F 50 02 14 */	add r26, r16, r0
/* 803EE818 003B7DD8  1C 18 00 0C */	mulli r0, r24, 0xc
/* 803EE81C 003B7DDC  7F 32 1A 14 */	add r25, r18, r3
/* 803EE820 003B7DE0  7F 10 02 14 */	add r24, r16, r0
/* 803EE824 003B7DE4  41 82 00 38 */	beq lbl_803EE85C
/* 803EE828 003B7DE8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803EE82C 003B7DEC  7D C3 73 78 */	mr r3, r14
/* 803EE830 003B7DF0  38 81 00 24 */	addi r4, r1, 0x24
/* 803EE834 003B7DF4  2C 05 00 00 */	cmpwi r5, 0
/* 803EE838 003B7DF8  41 82 00 0C */	beq lbl_803EE844
/* 803EE83C 003B7DFC  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 803EE840 003B7E00  48 00 00 08 */	b lbl_803EE848
lbl_803EE844:
/* 803EE844 003B7E04  38 A0 00 00 */	li r5, 0
lbl_803EE848:
/* 803EE848 003B7E08  81 83 00 00 */	lwz r12, 0(r3)
/* 803EE84C 003B7E0C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 803EE850 003B7E10  7D 89 03 A6 */	mtctr r12
/* 803EE854 003B7E14  4E 80 04 21 */	bctrl 
/* 803EE858 003B7E18  7C 7F 1B 78 */	mr r31, r3
lbl_803EE85C:
/* 803EE85C 003B7E1C  2C 0E 00 00 */	cmpwi r14, 0
/* 803EE860 003B7E20  41 82 00 10 */	beq lbl_803EE870
/* 803EE864 003B7E24  80 1F 00 00 */	lwz r0, 0(r31)
/* 803EE868 003B7E28  2C 00 00 00 */	cmpwi r0, 0
/* 803EE86C 003B7E2C  40 82 00 14 */	bne lbl_803EE880
lbl_803EE870:
/* 803EE870 003B7E30  38 61 00 14 */	addi r3, r1, 0x14
/* 803EE874 003B7E34  38 81 00 24 */	addi r4, r1, 0x24
/* 803EE878 003B7E38  4B FE F0 A9 */	bl CalcChrAnmResult__Q34nw4r3g3d7ResNodeCFPQ34nw4r3g3d12ChrAnmResult
/* 803EE87C 003B7E3C  3B E1 00 24 */	addi r31, r1, 0x24
lbl_803EE880:
/* 803EE880 003B7E40  2C 1C 00 00 */	cmpwi r28, 0
/* 803EE884 003B7E44  41 82 00 D0 */	beq lbl_803EE954
/* 803EE888 003B7E48  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803EE88C 003B7E4C  2C 00 00 00 */	cmpwi r0, 0
/* 803EE890 003B7E50  41 82 00 C4 */	beq lbl_803EE954
/* 803EE894 003B7E54  38 01 00 24 */	addi r0, r1, 0x24
/* 803EE898 003B7E58  7C 1F 00 40 */	cmplw r31, r0
/* 803EE89C 003B7E5C  41 82 00 A0 */	beq lbl_803EE93C
/* 803EE8A0 003B7E60  80 1F 00 00 */	lwz r0, 0(r31)
/* 803EE8A4 003B7E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE8A8 003B7E68  80 7F 00 04 */	lwz r3, 4(r31)
/* 803EE8AC 003B7E6C  80 1F 00 08 */	lwz r0, 8(r31)
/* 803EE8B0 003B7E70  90 61 00 28 */	stw r3, 0x28(r1)
/* 803EE8B4 003B7E74  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803EE8B8 003B7E78  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803EE8BC 003B7E7C  90 01 00 30 */	stw r0, 0x30(r1)
/* 803EE8C0 003B7E80  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803EE8C4 003B7E84  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803EE8C8 003B7E88  90 61 00 34 */	stw r3, 0x34(r1)
/* 803EE8CC 003B7E8C  90 01 00 38 */	stw r0, 0x38(r1)
/* 803EE8D0 003B7E90  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 803EE8D4 003B7E94  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803EE8D8 003B7E98  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 803EE8DC 003B7E9C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 803EE8E0 003B7EA0  90 61 00 40 */	stw r3, 0x40(r1)
/* 803EE8E4 003B7EA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803EE8E8 003B7EA8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803EE8EC 003B7EAC  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 803EE8F0 003B7EB0  90 61 00 48 */	stw r3, 0x48(r1)
/* 803EE8F4 003B7EB4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 803EE8F8 003B7EB8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 803EE8FC 003B7EBC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 803EE900 003B7EC0  90 61 00 50 */	stw r3, 0x50(r1)
/* 803EE904 003B7EC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 803EE908 003B7EC8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 803EE90C 003B7ECC  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803EE910 003B7ED0  90 61 00 58 */	stw r3, 0x58(r1)
/* 803EE914 003B7ED4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 803EE918 003B7ED8  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 803EE91C 003B7EDC  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 803EE920 003B7EE0  90 61 00 60 */	stw r3, 0x60(r1)
/* 803EE924 003B7EE4  90 01 00 64 */	stw r0, 0x64(r1)
/* 803EE928 003B7EE8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 803EE92C 003B7EEC  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 803EE930 003B7EF0  3B E1 00 24 */	addi r31, r1, 0x24
/* 803EE934 003B7EF4  90 61 00 68 */	stw r3, 0x68(r1)
/* 803EE938 003B7EF8  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_803EE93C:
/* 803EE93C 003B7EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EE940 003B7F00  38 61 00 14 */	addi r3, r1, 0x14
/* 803EE944 003B7F04  38 81 00 24 */	addi r4, r1, 0x24
/* 803EE948 003B7F08  60 00 02 00 */	ori r0, r0, 0x200
/* 803EE94C 003B7F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE950 003B7F10  4B FE EE 35 */	bl PatchChrAnmResult__Q34nw4r3g3d7ResNodeCFPQ34nw4r3g3d12ChrAnmResult
lbl_803EE954:
/* 803EE954 003B7F14  2C 16 00 00 */	cmpwi r22, 0
/* 803EE958 003B7F18  41 82 00 EC */	beq lbl_803EEA44
/* 803EE95C 003B7F1C  38 01 00 24 */	addi r0, r1, 0x24
/* 803EE960 003B7F20  7C 1F 00 40 */	cmplw r31, r0
/* 803EE964 003B7F24  41 82 00 A0 */	beq lbl_803EEA04
/* 803EE968 003B7F28  80 1F 00 00 */	lwz r0, 0(r31)
/* 803EE96C 003B7F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE970 003B7F30  80 7F 00 04 */	lwz r3, 4(r31)
/* 803EE974 003B7F34  80 1F 00 08 */	lwz r0, 8(r31)
/* 803EE978 003B7F38  90 61 00 28 */	stw r3, 0x28(r1)
/* 803EE97C 003B7F3C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803EE980 003B7F40  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803EE984 003B7F44  90 01 00 30 */	stw r0, 0x30(r1)
/* 803EE988 003B7F48  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803EE98C 003B7F4C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803EE990 003B7F50  90 61 00 34 */	stw r3, 0x34(r1)
/* 803EE994 003B7F54  90 01 00 38 */	stw r0, 0x38(r1)
/* 803EE998 003B7F58  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 803EE99C 003B7F5C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803EE9A0 003B7F60  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 803EE9A4 003B7F64  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 803EE9A8 003B7F68  90 61 00 40 */	stw r3, 0x40(r1)
/* 803EE9AC 003B7F6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803EE9B0 003B7F70  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803EE9B4 003B7F74  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 803EE9B8 003B7F78  90 61 00 48 */	stw r3, 0x48(r1)
/* 803EE9BC 003B7F7C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 803EE9C0 003B7F80  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 803EE9C4 003B7F84  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 803EE9C8 003B7F88  90 61 00 50 */	stw r3, 0x50(r1)
/* 803EE9CC 003B7F8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 803EE9D0 003B7F90  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 803EE9D4 003B7F94  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803EE9D8 003B7F98  90 61 00 58 */	stw r3, 0x58(r1)
/* 803EE9DC 003B7F9C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 803EE9E0 003B7FA0  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 803EE9E4 003B7FA4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 803EE9E8 003B7FA8  90 61 00 60 */	stw r3, 0x60(r1)
/* 803EE9EC 003B7FAC  90 01 00 64 */	stw r0, 0x64(r1)
/* 803EE9F0 003B7FB0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 803EE9F4 003B7FB4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 803EE9F8 003B7FB8  3B E1 00 24 */	addi r31, r1, 0x24
/* 803EE9FC 003B7FBC  90 61 00 68 */	stw r3, 0x68(r1)
/* 803EEA00 003B7FC0  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_803EEA04:
/* 803EEA04 003B7FC4  A0 16 00 06 */	lhz r0, 6(r22)
/* 803EEA08 003B7FC8  80 75 00 00 */	lwz r3, 0(r21)
/* 803EEA0C 003B7FCC  7C 1C 00 40 */	cmplw r28, r0
/* 803EEA10 003B7FD0  40 82 00 34 */	bne lbl_803EEA44
/* 803EEA14 003B7FD4  88 16 00 04 */	lbz r0, 4(r22)
/* 803EEA18 003B7FD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803EEA1C 003B7FDC  41 82 00 28 */	beq lbl_803EEA44
/* 803EEA20 003B7FE0  90 61 00 10 */	stw r3, 0x10(r1)
/* 803EEA24 003B7FE4  7E C6 B3 78 */	mr r6, r22
/* 803EEA28 003B7FE8  38 81 00 24 */	addi r4, r1, 0x24
/* 803EEA2C 003B7FEC  38 A1 00 10 */	addi r5, r1, 0x10
/* 803EEA30 003B7FF0  80 76 00 00 */	lwz r3, 0(r22)
/* 803EEA34 003B7FF4  81 83 00 00 */	lwz r12, 0(r3)
/* 803EEA38 003B7FF8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803EEA3C 003B7FFC  7D 89 03 A6 */	mtctr r12
/* 803EEA40 003B8000  4E 80 04 21 */	bctrl 
lbl_803EEA44:
/* 803EEA44 003B8004  88 01 00 70 */	lbz r0, 0x70(r1)
/* 803EEA48 003B8008  2C 00 00 00 */	cmpwi r0, 0
/* 803EEA4C 003B800C  41 82 00 30 */	beq lbl_803EEA7C
/* 803EEA50 003B8010  55 E0 10 3A */	slwi r0, r15, 2
/* 803EEA54 003B8014  7F 63 DB 78 */	mr r3, r27
/* 803EEA58 003B8018  7D F3 02 14 */	add r15, r19, r0
/* 803EEA5C 003B801C  7F 44 D3 78 */	mr r4, r26
/* 803EEA60 003B8020  7F 25 CB 78 */	mr r5, r25
/* 803EEA64 003B8024  7F 06 C3 78 */	mr r6, r24
/* 803EEA68 003B8028  7E E7 BB 78 */	mr r7, r23
/* 803EEA6C 003B802C  7F E8 FB 78 */	mr r8, r31
/* 803EEA70 003B8030  48 00 4D 39 */	bl CalcWorldMtx_Xsi__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3UlPCQ34nw4r3g3d12ChrAnmResult
/* 803EEA74 003B8034  90 6F 00 00 */	stw r3, 0(r15)
/* 803EEA78 003B8038  48 00 00 64 */	b lbl_803EEADC
lbl_803EEA7C:
/* 803EEA7C 003B803C  80 1F 00 00 */	lwz r0, 0(r31)
/* 803EEA80 003B8040  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 803EEA84 003B8044  41 82 00 30 */	beq lbl_803EEAB4
/* 803EEA88 003B8048  55 E0 10 3A */	slwi r0, r15, 2
/* 803EEA8C 003B804C  7F 63 DB 78 */	mr r3, r27
/* 803EEA90 003B8050  7D F3 02 14 */	add r15, r19, r0
/* 803EEA94 003B8054  7F 44 D3 78 */	mr r4, r26
/* 803EEA98 003B8058  7F 25 CB 78 */	mr r5, r25
/* 803EEA9C 003B805C  7F 06 C3 78 */	mr r6, r24
/* 803EEAA0 003B8060  7E E7 BB 78 */	mr r7, r23
/* 803EEAA4 003B8064  7F E8 FB 78 */	mr r8, r31
/* 803EEAA8 003B8068  48 00 41 61 */	bl CalcWorldMtx_Maya_SSC_Apply__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3UlPCQ34nw4r3g3d12ChrAnmResult
/* 803EEAAC 003B806C  90 6F 00 00 */	stw r3, 0(r15)
/* 803EEAB0 003B8070  48 00 00 2C */	b lbl_803EEADC
lbl_803EEAB4:
/* 803EEAB4 003B8074  55 E0 10 3A */	slwi r0, r15, 2
/* 803EEAB8 003B8078  7F 63 DB 78 */	mr r3, r27
/* 803EEABC 003B807C  7D F3 02 14 */	add r15, r19, r0
/* 803EEAC0 003B8080  7F 44 D3 78 */	mr r4, r26
/* 803EEAC4 003B8084  7F 25 CB 78 */	mr r5, r25
/* 803EEAC8 003B8088  7F 06 C3 78 */	mr r6, r24
/* 803EEACC 003B808C  7E E7 BB 78 */	mr r7, r23
/* 803EEAD0 003B8090  7F E8 FB 78 */	mr r8, r31
/* 803EEAD4 003B8094  48 00 34 A1 */	bl CalcWorldMtx_Basic__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3UlPCQ34nw4r3g3d12ChrAnmResult
/* 803EEAD8 003B8098  90 6F 00 00 */	stw r3, 0(r15)
lbl_803EEADC:
/* 803EEADC 003B809C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803EEAE0 003B80A0  2C 03 00 00 */	cmpwi r3, 0
/* 803EEAE4 003B80A4  41 82 00 0C */	beq lbl_803EEAF0
/* 803EEAE8 003B80A8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 803EEAEC 003B80AC  48 00 00 08 */	b lbl_803EEAF4
lbl_803EEAF0:
/* 803EEAF0 003B80B0  38 60 00 00 */	li r3, 0
lbl_803EEAF4:
/* 803EEAF4 003B80B4  80 0F 00 00 */	lwz r0, 0(r15)
/* 803EEAF8 003B80B8  2C 16 00 00 */	cmpwi r22, 0
/* 803EEAFC 003B80BC  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 803EEB00 003B80C0  7C 00 1B 78 */	or r0, r0, r3
/* 803EEB04 003B80C4  90 0F 00 00 */	stw r0, 0(r15)
/* 803EEB08 003B80C8  41 82 00 50 */	beq lbl_803EEB58
/* 803EEB0C 003B80CC  A0 16 00 06 */	lhz r0, 6(r22)
/* 803EEB10 003B80D0  80 75 00 00 */	lwz r3, 0(r21)
/* 803EEB14 003B80D4  7C 1C 00 40 */	cmplw r28, r0
/* 803EEB18 003B80D8  40 82 00 40 */	bne lbl_803EEB58
/* 803EEB1C 003B80DC  88 16 00 04 */	lbz r0, 4(r22)
/* 803EEB20 003B80E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803EEB24 003B80E4  41 82 00 34 */	beq lbl_803EEB58
/* 803EEB28 003B80E8  93 61 00 18 */	stw r27, 0x18(r1)
/* 803EEB2C 003B80EC  7E C6 B3 78 */	mr r6, r22
/* 803EEB30 003B80F0  38 81 00 18 */	addi r4, r1, 0x18
/* 803EEB34 003B80F4  38 A1 00 0C */	addi r5, r1, 0xc
/* 803EEB38 003B80F8  93 41 00 1C */	stw r26, 0x1c(r1)
/* 803EEB3C 003B80FC  91 E1 00 20 */	stw r15, 0x20(r1)
/* 803EEB40 003B8100  90 61 00 0C */	stw r3, 0xc(r1)
/* 803EEB44 003B8104  80 76 00 00 */	lwz r3, 0(r22)
/* 803EEB48 003B8108  81 83 00 00 */	lwz r12, 0(r3)
/* 803EEB4C 003B810C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 803EEB50 003B8110  7D 89 03 A6 */	mtctr r12
/* 803EEB54 003B8114  4E 80 04 21 */	bctrl 
lbl_803EEB58:
/* 803EEB58 003B8118  3A 94 00 05 */	addi r20, r20, 5
/* 803EEB5C 003B811C  48 00 00 7C */	b lbl_803EEBD8
lbl_803EEB60:
/* 803EEB60 003B8120  88 14 00 01 */	lbz r0, 1(r20)
/* 803EEB64 003B8124  3B BD 00 01 */	addi r29, r29, 1
/* 803EEB68 003B8128  88 74 00 03 */	lbz r3, 3(r20)
/* 803EEB6C 003B812C  54 05 40 2E */	slwi r5, r0, 8
/* 803EEB70 003B8130  88 94 00 02 */	lbz r4, 2(r20)
/* 803EEB74 003B8134  88 14 00 04 */	lbz r0, 4(r20)
/* 803EEB78 003B8138  54 63 40 2E */	slwi r3, r3, 8
/* 803EEB7C 003B813C  7D E5 22 14 */	add r15, r5, r4
/* 803EEB80 003B8140  7E E3 02 14 */	add r23, r3, r0
/* 803EEB84 003B8144  7D FE 89 2E */	stwx r15, r30, r17
/* 803EEB88 003B8148  56 E4 10 3A */	slwi r4, r23, 2
/* 803EEB8C 003B814C  55 E0 10 3A */	slwi r0, r15, 2
/* 803EEB90 003B8150  7C 93 20 2E */	lwzx r4, r19, r4
/* 803EEB94 003B8154  1C 77 00 30 */	mulli r3, r23, 0x30
/* 803EEB98 003B8158  3A 31 00 04 */	addi r17, r17, 4
/* 803EEB9C 003B815C  7C 93 01 2E */	stwx r4, r19, r0
/* 803EEBA0 003B8160  1C 0F 00 30 */	mulli r0, r15, 0x30
/* 803EEBA4 003B8164  7C 72 1A 14 */	add r3, r18, r3
/* 803EEBA8 003B8168  7C 92 02 14 */	add r4, r18, r0
/* 803EEBAC 003B816C  4B F5 E6 65 */	bl PSMTXCopy
/* 803EEBB0 003B8170  1C 0F 00 0C */	mulli r0, r15, 0xc
/* 803EEBB4 003B8174  3A 94 00 05 */	addi r20, r20, 5
/* 803EEBB8 003B8178  1C 77 00 0C */	mulli r3, r23, 0xc
/* 803EEBBC 003B817C  7C 03 84 6E */	lfsux f0, r3, r16
/* 803EEBC0 003B8180  7C 90 02 14 */	add r4, r16, r0
/* 803EEBC4 003B8184  7C 10 05 2E */	stfsx f0, r16, r0
/* 803EEBC8 003B8188  C0 03 00 04 */	lfs f0, 4(r3)
/* 803EEBCC 003B818C  D0 04 00 04 */	stfs f0, 4(r4)
/* 803EEBD0 003B8190  C0 03 00 08 */	lfs f0, 8(r3)
/* 803EEBD4 003B8194  D0 04 00 08 */	stfs f0, 8(r4)
lbl_803EEBD8:
/* 803EEBD8 003B8198  88 14 00 00 */	lbz r0, 0(r20)
/* 803EEBDC 003B819C  28 00 00 01 */	cmplwi r0, 1
/* 803EEBE0 003B81A0  40 82 FB C0 */	bne lbl_803EE7A0
/* 803EEBE4 003B81A4  C3 E2 C0 C0 */	lfs f31, lbl_8066C440@sda21(r2)
/* 803EEBE8 003B81A8  39 C0 00 00 */	li r14, 0
/* 803EEBEC 003B81AC  48 00 00 50 */	b lbl_803EEC3C
lbl_803EEBF0:
/* 803EEBF0 003B81B0  80 9E 00 00 */	lwz r4, 0(r30)
/* 803EEBF4 003B81B4  1C 04 00 0C */	mulli r0, r4, 0xc
/* 803EEBF8 003B81B8  7C 10 04 2E */	lfsx f0, r16, r0
/* 803EEBFC 003B81BC  7C 70 02 14 */	add r3, r16, r0
/* 803EEC00 003B81C0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803EEC04 003B81C4  40 82 00 1C */	bne lbl_803EEC20
/* 803EEC08 003B81C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 803EEC0C 003B81CC  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803EEC10 003B81D0  40 82 00 10 */	bne lbl_803EEC20
/* 803EEC14 003B81D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 803EEC18 003B81D8  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 803EEC1C 003B81DC  41 82 00 18 */	beq lbl_803EEC34
lbl_803EEC20:
/* 803EEC20 003B81E0  1C 64 00 30 */	mulli r3, r4, 0x30
/* 803EEC24 003B81E4  7C B0 02 14 */	add r5, r16, r0
/* 803EEC28 003B81E8  7C 72 1A 14 */	add r3, r18, r3
/* 803EEC2C 003B81EC  7C 64 1B 78 */	mr r4, r3
/* 803EEC30 003B81F0  48 01 C4 F9 */	bl MTX34Scale__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
lbl_803EEC34:
/* 803EEC34 003B81F4  3B DE 00 04 */	addi r30, r30, 4
/* 803EEC38 003B81F8  39 CE 00 01 */	addi r14, r14, 1
lbl_803EEC3C:
/* 803EEC3C 003B81FC  7C 0E E8 40 */	cmplw r14, r29
/* 803EEC40 003B8200  41 80 FF B0 */	blt lbl_803EEBF0
/* 803EEC44 003B8204  2C 16 00 00 */	cmpwi r22, 0
/* 803EEC48 003B8208  41 82 00 38 */	beq lbl_803EEC80
/* 803EEC4C 003B820C  88 16 00 04 */	lbz r0, 4(r22)
/* 803EEC50 003B8210  80 75 00 00 */	lwz r3, 0(r21)
/* 803EEC54 003B8214  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803EEC58 003B8218  41 82 00 28 */	beq lbl_803EEC80
/* 803EEC5C 003B821C  90 61 00 08 */	stw r3, 8(r1)
/* 803EEC60 003B8220  7E 44 93 78 */	mr r4, r18
/* 803EEC64 003B8224  7E C6 B3 78 */	mr r6, r22
/* 803EEC68 003B8228  38 A1 00 08 */	addi r5, r1, 8
/* 803EEC6C 003B822C  80 76 00 00 */	lwz r3, 0(r22)
/* 803EEC70 003B8230  81 83 00 00 */	lwz r12, 0(r3)
/* 803EEC74 003B8234  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803EEC78 003B8238  7D 89 03 A6 */	mtctr r12
/* 803EEC7C 003B823C  4E 80 04 21 */	bctrl 
lbl_803EEC80:
/* 803EEC80 003B8240  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 803EEC84 003B8244  39 61 00 C0 */	addi r11, r1, 0xc0
/* 803EEC88 003B8248  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 803EEC8C 003B824C  4B EC B4 E1 */	bl _restgpr_14
/* 803EEC90 003B8250  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 803EEC94 003B8254  7C 08 03 A6 */	mtlr r0
/* 803EEC98 003B8258  38 21 00 D0 */	addi r1, r1, 0xd0
/* 803EEC9C 003B825C  4E 80 00 20 */	blr 

.global ExecCallbackA__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r3g3d12ChrAnmResultQ34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld
ExecCallbackA__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r3g3d12ChrAnmResultQ34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld:
/* 803EECA0 003B8260  4E 80 00 20 */	blr 

.global ExecCallbackB__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r3g3d13WorldMtxManipQ34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld
ExecCallbackB__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r3g3d13WorldMtxManipQ34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld:
/* 803EECA4 003B8264  4E 80 00 20 */	blr 

.global ExecCallbackC__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld
ExecCallbackC__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld:
/* 803EECA8 003B8268  4E 80 00 20 */	blr 

.global CalcSkinning__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlQ34nw4r3g3d6ResMdlPCUc
CalcSkinning__Q24nw4r3g3dFPQ34nw4r4math5MTX34PUlQ34nw4r3g3d6ResMdlPCUc:
/* 803EECAC 003B826C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EECB0 003B8270  7C 08 02 A6 */	mflr r0
/* 803EECB4 003B8274  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EECB8 003B8278  39 61 00 30 */	addi r11, r1, 0x30
/* 803EECBC 003B827C  4B EC B4 91 */	bl _savegpr_25
/* 803EECC0 003B8280  2C 06 00 00 */	cmpwi r6, 0
/* 803EECC4 003B8284  7C 7A 1B 78 */	mr r26, r3
/* 803EECC8 003B8288  7C 9B 23 78 */	mr r27, r4
/* 803EECCC 003B828C  7C BC 2B 78 */	mr r28, r5
/* 803EECD0 003B8290  7C DD 33 78 */	mr r29, r6
/* 803EECD4 003B8294  40 82 00 1C */	bne lbl_803EECF0
/* 803EECD8 003B8298  7F 83 E3 78 */	mr r3, r28
/* 803EECDC 003B829C  38 8D 9C 20 */	addi r4, r13, lbl_80665DA0@sda21
/* 803EECE0 003B82A0  4B FE A8 F5 */	bl GetResByteCode__Q34nw4r3g3d6ResMdlCFPCc
/* 803EECE4 003B82A4  2C 03 00 00 */	cmpwi r3, 0
/* 803EECE8 003B82A8  7C 7D 1B 78 */	mr r29, r3
/* 803EECEC 003B82AC  41 82 04 9C */	beq lbl_803EF188
lbl_803EECF0:
/* 803EECF0 003B82B0  4B FF F9 D5 */	bl GetSkinningMtxTemporary__Q44nw4r3g3d6detail7workmemFv
/* 803EECF4 003B82B4  7C 7E 1B 78 */	mr r30, r3
/* 803EECF8 003B82B8  3F E0 F0 00 */	lis r31, 0xf000
/* 803EECFC 003B82BC  48 00 02 68 */	b lbl_803EEF64
lbl_803EED00:
/* 803EED00 003B82C0  28 00 00 03 */	cmplwi r0, 3
/* 803EED04 003B82C4  40 82 02 20 */	bne lbl_803EEF24
/* 803EED08 003B82C8  C0 02 C0 C4 */	lfs f0, lbl_8066C444@sda21(r2)
/* 803EED0C 003B82CC  88 7D 00 01 */	lbz r3, 1(r29)
/* 803EED10 003B82D0  10 00 04 20 */	ps_merge00 f0, f0, f0
/* 803EED14 003B82D4  88 1D 00 02 */	lbz r0, 2(r29)
/* 803EED18 003B82D8  89 7D 00 03 */	lbz r11, 3(r29)
/* 803EED1C 003B82DC  54 63 40 2E */	slwi r3, r3, 8
/* 803EED20 003B82E0  7D 43 02 14 */	add r10, r3, r0
/* 803EED24 003B82E4  3B BD 00 04 */	addi r29, r29, 4
/* 803EED28 003B82E8  55 49 10 3A */	slwi r9, r10, 2
/* 803EED2C 003B82EC  10 20 04 20 */	ps_merge00 f1, f0, f0
/* 803EED30 003B82F0  10 40 04 20 */	ps_merge00 f2, f0, f0
/* 803EED34 003B82F4  28 0B 00 00 */	cmplwi r11, 0
/* 803EED38 003B82F8  10 60 04 20 */	ps_merge00 f3, f0, f0
/* 803EED3C 003B82FC  7F FB 49 2E */	stwx r31, r27, r9
/* 803EED40 003B8300  10 80 04 20 */	ps_merge00 f4, f0, f0
/* 803EED44 003B8304  10 A0 04 20 */	ps_merge00 f5, f0, f0
/* 803EED48 003B8308  40 81 01 B8 */	ble lbl_803EEF00
/* 803EED4C 003B830C  55 60 F8 7F */	rlwinm. r0, r11, 0x1f, 1, 0x1f
/* 803EED50 003B8310  7C 09 03 A6 */	mtctr r0
/* 803EED54 003B8314  41 82 01 1C */	beq lbl_803EEE70
lbl_803EED58:
/* 803EED58 003B8318  88 7D 00 00 */	lbz r3, 0(r29)
/* 803EED5C 003B831C  88 1D 00 01 */	lbz r0, 1(r29)
/* 803EED60 003B8320  54 63 40 2E */	slwi r3, r3, 8
/* 803EED64 003B8324  88 BD 00 03 */	lbz r5, 3(r29)
/* 803EED68 003B8328  7C 03 02 14 */	add r0, r3, r0
/* 803EED6C 003B832C  7C 7B 48 2E */	lwzx r3, r27, r9
/* 803EED70 003B8330  1C 80 00 30 */	mulli r4, r0, 0x30
/* 803EED74 003B8334  88 FD 00 05 */	lbz r7, 5(r29)
/* 803EED78 003B8338  54 00 10 3A */	slwi r0, r0, 2
/* 803EED7C 003B833C  89 1D 00 04 */	lbz r8, 4(r29)
/* 803EED80 003B8340  7C 1B 00 2E */	lwzx r0, r27, r0
/* 803EED84 003B8344  54 A5 80 1E */	slwi r5, r5, 0x10
/* 803EED88 003B8348  7D 9E 22 14 */	add r12, r30, r4
/* 803EED8C 003B834C  88 DD 00 02 */	lbz r6, 2(r29)
/* 803EED90 003B8350  E0 EC 00 00 */	psq_l f7, 0(r12), 0, qr0
/* 803EED94 003B8354  7C 60 00 38 */	and r0, r3, r0
/* 803EED98 003B8358  E1 0C 00 08 */	psq_l f8, 8(r12), 0, qr0
/* 803EED9C 003B835C  51 07 44 2E */	rlwimi r7, r8, 8, 0x10, 0x17
/* 803EEDA0 003B8360  E1 2C 00 10 */	psq_l f9, 16(r12), 0, qr0
/* 803EEDA4 003B8364  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 803EEDA8 003B8368  E1 4C 00 18 */	psq_l f10, 24(r12), 0, qr0
/* 803EEDAC 003B836C  7C E4 2B 78 */	or r4, r7, r5
/* 803EEDB0 003B8370  E1 6C 00 20 */	psq_l f11, 32(r12), 0, qr0
/* 803EEDB4 003B8374  E1 8C 00 28 */	psq_l f12, 40(r12), 0, qr0
/* 803EEDB8 003B8378  90 81 00 08 */	stw r4, 8(r1)
/* 803EEDBC 003B837C  7C 1B 49 2E */	stwx r0, r27, r9
/* 803EEDC0 003B8380  C0 C1 00 08 */	lfs f6, 8(r1)
/* 803EEDC4 003B8384  88 7D 00 06 */	lbz r3, 6(r29)
/* 803EEDC8 003B8388  88 BD 00 09 */	lbz r5, 9(r29)
/* 803EEDCC 003B838C  10 07 01 9C */	ps_madds0 f0, f7, f6, f0
/* 803EEDD0 003B8390  88 1D 00 07 */	lbz r0, 7(r29)
/* 803EEDD4 003B8394  54 63 40 2E */	slwi r3, r3, 8
/* 803EEDD8 003B8398  89 1D 00 0A */	lbz r8, 0xa(r29)
/* 803EEDDC 003B839C  54 A5 80 1E */	slwi r5, r5, 0x10
/* 803EEDE0 003B83A0  7C 03 02 14 */	add r0, r3, r0
/* 803EEDE4 003B83A4  1C 80 00 30 */	mulli r4, r0, 0x30
/* 803EEDE8 003B83A8  88 DD 00 08 */	lbz r6, 8(r29)
/* 803EEDEC 003B83AC  88 FD 00 0B */	lbz r7, 0xb(r29)
/* 803EEDF0 003B83B0  54 00 10 3A */	slwi r0, r0, 2
/* 803EEDF4 003B83B4  51 07 44 2E */	rlwimi r7, r8, 8, 0x10, 0x17
/* 803EEDF8 003B83B8  10 28 09 9C */	ps_madds0 f1, f8, f6, f1
/* 803EEDFC 003B83BC  7D 9E 22 14 */	add r12, r30, r4
/* 803EEE00 003B83C0  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 803EEE04 003B83C4  7C E4 2B 78 */	or r4, r7, r5
/* 803EEE08 003B83C8  10 49 11 9C */	ps_madds0 f2, f9, f6, f2
/* 803EEE0C 003B83CC  10 6A 19 9C */	ps_madds0 f3, f10, f6, f3
/* 803EEE10 003B83D0  90 81 00 08 */	stw r4, 8(r1)
/* 803EEE14 003B83D4  10 8B 21 9C */	ps_madds0 f4, f11, f6, f4
/* 803EEE18 003B83D8  E0 EC 00 00 */	psq_l f7, 0(r12), 0, qr0
/* 803EEE1C 003B83DC  10 AC 29 9C */	ps_madds0 f5, f12, f6, f5
/* 803EEE20 003B83E0  C0 C1 00 08 */	lfs f6, 8(r1)
/* 803EEE24 003B83E4  E1 0C 00 08 */	psq_l f8, 8(r12), 0, qr0
/* 803EEE28 003B83E8  3B BD 00 0C */	addi r29, r29, 0xc
/* 803EEE2C 003B83EC  E1 2C 00 10 */	psq_l f9, 16(r12), 0, qr0
/* 803EEE30 003B83F0  10 07 01 9C */	ps_madds0 f0, f7, f6, f0
/* 803EEE34 003B83F4  E1 4C 00 18 */	psq_l f10, 24(r12), 0, qr0
/* 803EEE38 003B83F8  10 28 09 9C */	ps_madds0 f1, f8, f6, f1
/* 803EEE3C 003B83FC  E1 6C 00 20 */	psq_l f11, 32(r12), 0, qr0
/* 803EEE40 003B8400  10 49 11 9C */	ps_madds0 f2, f9, f6, f2
/* 803EEE44 003B8404  E1 8C 00 28 */	psq_l f12, 40(r12), 0, qr0
/* 803EEE48 003B8408  7C 7B 48 2E */	lwzx r3, r27, r9
/* 803EEE4C 003B840C  10 6A 19 9C */	ps_madds0 f3, f10, f6, f3
/* 803EEE50 003B8410  7C 1B 00 2E */	lwzx r0, r27, r0
/* 803EEE54 003B8414  10 8B 21 9C */	ps_madds0 f4, f11, f6, f4
/* 803EEE58 003B8418  10 AC 29 9C */	ps_madds0 f5, f12, f6, f5
/* 803EEE5C 003B841C  7C 60 00 38 */	and r0, r3, r0
/* 803EEE60 003B8420  7C 1B 49 2E */	stwx r0, r27, r9
/* 803EEE64 003B8424  42 00 FE F4 */	bdnz lbl_803EED58
/* 803EEE68 003B8428  71 6B 00 01 */	andi. r11, r11, 1
/* 803EEE6C 003B842C  41 82 00 94 */	beq lbl_803EEF00
lbl_803EEE70:
/* 803EEE70 003B8430  7D 69 03 A6 */	mtctr r11
lbl_803EEE74:
/* 803EEE74 003B8434  88 7D 00 00 */	lbz r3, 0(r29)
/* 803EEE78 003B8438  88 1D 00 01 */	lbz r0, 1(r29)
/* 803EEE7C 003B843C  54 63 40 2E */	slwi r3, r3, 8
/* 803EEE80 003B8440  88 BD 00 03 */	lbz r5, 3(r29)
/* 803EEE84 003B8444  7C 03 02 14 */	add r0, r3, r0
/* 803EEE88 003B8448  89 1D 00 04 */	lbz r8, 4(r29)
/* 803EEE8C 003B844C  1C 80 00 30 */	mulli r4, r0, 0x30
/* 803EEE90 003B8450  88 DD 00 02 */	lbz r6, 2(r29)
/* 803EEE94 003B8454  88 FD 00 05 */	lbz r7, 5(r29)
/* 803EEE98 003B8458  54 A5 80 1E */	slwi r5, r5, 0x10
/* 803EEE9C 003B845C  51 07 44 2E */	rlwimi r7, r8, 8, 0x10, 0x17
/* 803EEEA0 003B8460  7C 7B 48 2E */	lwzx r3, r27, r9
/* 803EEEA4 003B8464  7D 9E 22 14 */	add r12, r30, r4
/* 803EEEA8 003B8468  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 803EEEAC 003B846C  7C E4 2B 78 */	or r4, r7, r5
/* 803EEEB0 003B8470  54 00 10 3A */	slwi r0, r0, 2
/* 803EEEB4 003B8474  90 81 00 08 */	stw r4, 8(r1)
/* 803EEEB8 003B8478  3B BD 00 06 */	addi r29, r29, 6
/* 803EEEBC 003B847C  7C 1B 00 2E */	lwzx r0, r27, r0
/* 803EEEC0 003B8480  E0 EC 00 00 */	psq_l f7, 0(r12), 0, qr0
/* 803EEEC4 003B8484  C0 C1 00 08 */	lfs f6, 8(r1)
/* 803EEEC8 003B8488  7C 60 00 38 */	and r0, r3, r0
/* 803EEECC 003B848C  E1 0C 00 08 */	psq_l f8, 8(r12), 0, qr0
/* 803EEED0 003B8490  E1 2C 00 10 */	psq_l f9, 16(r12), 0, qr0
/* 803EEED4 003B8494  10 07 01 9C */	ps_madds0 f0, f7, f6, f0
/* 803EEED8 003B8498  E1 4C 00 18 */	psq_l f10, 24(r12), 0, qr0
/* 803EEEDC 003B849C  10 28 09 9C */	ps_madds0 f1, f8, f6, f1
/* 803EEEE0 003B84A0  E1 6C 00 20 */	psq_l f11, 32(r12), 0, qr0
/* 803EEEE4 003B84A4  10 49 11 9C */	ps_madds0 f2, f9, f6, f2
/* 803EEEE8 003B84A8  E1 8C 00 28 */	psq_l f12, 40(r12), 0, qr0
/* 803EEEEC 003B84AC  10 6A 19 9C */	ps_madds0 f3, f10, f6, f3
/* 803EEEF0 003B84B0  10 8B 21 9C */	ps_madds0 f4, f11, f6, f4
/* 803EEEF4 003B84B4  7C 1B 49 2E */	stwx r0, r27, r9
/* 803EEEF8 003B84B8  10 AC 29 9C */	ps_madds0 f5, f12, f6, f5
/* 803EEEFC 003B84BC  42 00 FF 78 */	bdnz lbl_803EEE74
lbl_803EEF00:
/* 803EEF00 003B84C0  1C 0A 00 30 */	mulli r0, r10, 0x30
/* 803EEF04 003B84C4  7C 7A 02 14 */	add r3, r26, r0
/* 803EEF08 003B84C8  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 803EEF0C 003B84CC  F0 23 00 08 */	psq_st f1, 8(r3), 0, qr0
/* 803EEF10 003B84D0  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 803EEF14 003B84D4  F0 63 00 18 */	psq_st f3, 24(r3), 0, qr0
/* 803EEF18 003B84D8  F0 83 00 20 */	psq_st f4, 32(r3), 0, qr0
/* 803EEF1C 003B84DC  F0 A3 00 28 */	psq_st f5, 40(r3), 0, qr0
/* 803EEF20 003B84E0  48 00 00 44 */	b lbl_803EEF64
lbl_803EEF24:
/* 803EEF24 003B84E4  88 1D 00 01 */	lbz r0, 1(r29)
/* 803EEF28 003B84E8  7F 83 E3 78 */	mr r3, r28
/* 803EEF2C 003B84EC  88 9D 00 03 */	lbz r4, 3(r29)
/* 803EEF30 003B84F0  54 06 40 2E */	slwi r6, r0, 8
/* 803EEF34 003B84F4  88 BD 00 02 */	lbz r5, 2(r29)
/* 803EEF38 003B84F8  88 1D 00 04 */	lbz r0, 4(r29)
/* 803EEF3C 003B84FC  54 84 40 2E */	slwi r4, r4, 8
/* 803EEF40 003B8500  7F 26 2A 14 */	add r25, r6, r5
/* 803EEF44 003B8504  7C 84 02 14 */	add r4, r4, r0
/* 803EEF48 003B8508  4B FE A7 B9 */	bl GetResNode__Q34nw4r3g3d6ResMdlCFUl
/* 803EEF4C 003B850C  1C 19 00 30 */	mulli r0, r25, 0x30
/* 803EEF50 003B8510  38 83 00 A0 */	addi r4, r3, 0xa0
/* 803EEF54 003B8514  7C 7A 02 14 */	add r3, r26, r0
/* 803EEF58 003B8518  7C BE 02 14 */	add r5, r30, r0
/* 803EEF5C 003B851C  4B F5 E2 F5 */	bl PSMTXConcat
/* 803EEF60 003B8520  3B BD 00 05 */	addi r29, r29, 5
lbl_803EEF64:
/* 803EEF64 003B8524  88 1D 00 00 */	lbz r0, 0(r29)
/* 803EEF68 003B8528  28 00 00 01 */	cmplwi r0, 1
/* 803EEF6C 003B852C  40 82 FD 94 */	bne lbl_803EED00
/* 803EEF70 003B8530  80 7C 00 00 */	lwz r3, 0(r28)
/* 803EEF74 003B8534  88 03 00 6F */	lbz r0, 0x6f(r3)
/* 803EEF78 003B8538  3B 43 00 4C */	addi r26, r3, 0x4c
/* 803EEF7C 003B853C  2C 00 00 01 */	cmpwi r0, 1
/* 803EEF80 003B8540  41 82 00 24 */	beq lbl_803EEFA4
/* 803EEF84 003B8544  40 80 00 10 */	bge lbl_803EEF94
/* 803EEF88 003B8548  2C 00 00 00 */	cmpwi r0, 0
/* 803EEF8C 003B854C  40 80 01 FC */	bge lbl_803EF188
/* 803EEF90 003B8550  48 00 01 F8 */	b lbl_803EF188
lbl_803EEF94:
/* 803EEF94 003B8554  2C 00 00 03 */	cmpwi r0, 3
/* 803EEF98 003B8558  40 80 01 F0 */	bge lbl_803EF188
/* 803EEF9C 003B855C  48 00 00 FC */	b lbl_803EF098
/* 803EEFA0 003B8560  48 00 01 E8 */	b lbl_803EF188
lbl_803EEFA4:
/* 803EEFA4 003B8564  80 1A 00 24 */	lwz r0, 0x24(r26)
/* 803EEFA8 003B8568  7F 83 E3 78 */	mr r3, r28
/* 803EEFAC 003B856C  7F 9A 00 2E */	lwzx r28, r26, r0
/* 803EEFB0 003B8570  4B FE A7 A5 */	bl GetResNodeNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 803EEFB4 003B8574  80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 803EEFB8 003B8578  7C 03 E0 50 */	subf r0, r3, r28
/* 803EEFBC 003B857C  7C C0 20 50 */	subf r6, r0, r4
/* 803EEFC0 003B8580  7C 86 20 40 */	cmplw cr1, r6, r4
/* 803EEFC4 003B8584  40 84 01 C4 */	bge cr1, lbl_803EF188
/* 803EEFC8 003B8588  7C 06 20 50 */	subf r0, r6, r4
/* 803EEFCC 003B858C  38 A4 FF F8 */	addi r5, r4, -8
/* 803EEFD0 003B8590  28 00 00 08 */	cmplwi r0, 8
/* 803EEFD4 003B8594  40 81 00 94 */	ble lbl_803EF068
/* 803EEFD8 003B8598  41 85 00 90 */	bgt cr1, lbl_803EF068
/* 803EEFDC 003B859C  38 05 00 07 */	addi r0, r5, 7
/* 803EEFE0 003B85A0  54 C3 10 3A */	slwi r3, r6, 2
/* 803EEFE4 003B85A4  7C 06 00 50 */	subf r0, r6, r0
/* 803EEFE8 003B85A8  54 00 E8 FE */	srwi r0, r0, 3
/* 803EEFEC 003B85AC  7C 7B 1A 14 */	add r3, r27, r3
/* 803EEFF0 003B85B0  7C 09 03 A6 */	mtctr r0
/* 803EEFF4 003B85B4  7C 06 28 40 */	cmplw r6, r5
/* 803EEFF8 003B85B8  40 80 00 70 */	bge lbl_803EF068
lbl_803EEFFC:
/* 803EEFFC 003B85BC  80 03 00 00 */	lwz r0, 0(r3)
/* 803EF000 003B85C0  38 C6 00 08 */	addi r6, r6, 8
/* 803EF004 003B85C4  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF008 003B85C8  90 03 00 00 */	stw r0, 0(r3)
/* 803EF00C 003B85CC  80 03 00 04 */	lwz r0, 4(r3)
/* 803EF010 003B85D0  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF014 003B85D4  90 03 00 04 */	stw r0, 4(r3)
/* 803EF018 003B85D8  80 03 00 08 */	lwz r0, 8(r3)
/* 803EF01C 003B85DC  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF020 003B85E0  90 03 00 08 */	stw r0, 8(r3)
/* 803EF024 003B85E4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803EF028 003B85E8  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF02C 003B85EC  90 03 00 0C */	stw r0, 0xc(r3)
/* 803EF030 003B85F0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803EF034 003B85F4  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF038 003B85F8  90 03 00 10 */	stw r0, 0x10(r3)
/* 803EF03C 003B85FC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803EF040 003B8600  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF044 003B8604  90 03 00 14 */	stw r0, 0x14(r3)
/* 803EF048 003B8608  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803EF04C 003B860C  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF050 003B8610  90 03 00 18 */	stw r0, 0x18(r3)
/* 803EF054 003B8614  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803EF058 003B8618  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF05C 003B861C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 803EF060 003B8620  38 63 00 20 */	addi r3, r3, 0x20
/* 803EF064 003B8624  42 00 FF 98 */	bdnz lbl_803EEFFC
lbl_803EF068:
/* 803EF068 003B8628  54 C3 10 3A */	slwi r3, r6, 2
/* 803EF06C 003B862C  7C 06 20 50 */	subf r0, r6, r4
/* 803EF070 003B8630  7C 7B 1A 14 */	add r3, r27, r3
/* 803EF074 003B8634  7C 09 03 A6 */	mtctr r0
/* 803EF078 003B8638  7C 06 20 40 */	cmplw r6, r4
/* 803EF07C 003B863C  40 80 01 0C */	bge lbl_803EF188
lbl_803EF080:
/* 803EF080 003B8640  80 03 00 00 */	lwz r0, 0(r3)
/* 803EF084 003B8644  64 00 30 00 */	oris r0, r0, 0x3000
/* 803EF088 003B8648  90 03 00 00 */	stw r0, 0(r3)
/* 803EF08C 003B864C  38 63 00 04 */	addi r3, r3, 4
/* 803EF090 003B8650  42 00 FF F0 */	bdnz lbl_803EF080
/* 803EF094 003B8654  48 00 00 F4 */	b lbl_803EF188
lbl_803EF098:
/* 803EF098 003B8658  80 1A 00 24 */	lwz r0, 0x24(r26)
/* 803EF09C 003B865C  7F 83 E3 78 */	mr r3, r28
/* 803EF0A0 003B8660  7F 9A 00 2E */	lwzx r28, r26, r0
/* 803EF0A4 003B8664  4B FE A6 B1 */	bl GetResNodeNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 803EF0A8 003B8668  80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 803EF0AC 003B866C  7C 03 E0 50 */	subf r0, r3, r28
/* 803EF0B0 003B8670  7C C0 20 50 */	subf r6, r0, r4
/* 803EF0B4 003B8674  7C 86 20 40 */	cmplw cr1, r6, r4
/* 803EF0B8 003B8678  40 84 00 D0 */	bge cr1, lbl_803EF188
/* 803EF0BC 003B867C  7C 06 20 50 */	subf r0, r6, r4
/* 803EF0C0 003B8680  38 A4 FF F8 */	addi r5, r4, -8
/* 803EF0C4 003B8684  28 00 00 08 */	cmplwi r0, 8
/* 803EF0C8 003B8688  40 81 00 94 */	ble lbl_803EF15C
/* 803EF0CC 003B868C  41 85 00 90 */	bgt cr1, lbl_803EF15C
/* 803EF0D0 003B8690  38 05 00 07 */	addi r0, r5, 7
/* 803EF0D4 003B8694  54 C3 10 3A */	slwi r3, r6, 2
/* 803EF0D8 003B8698  7C 06 00 50 */	subf r0, r6, r0
/* 803EF0DC 003B869C  54 00 E8 FE */	srwi r0, r0, 3
/* 803EF0E0 003B86A0  7C 7B 1A 14 */	add r3, r27, r3
/* 803EF0E4 003B86A4  7C 09 03 A6 */	mtctr r0
/* 803EF0E8 003B86A8  7C 06 28 40 */	cmplw r6, r5
/* 803EF0EC 003B86AC  40 80 00 70 */	bge lbl_803EF15C
lbl_803EF0F0:
/* 803EF0F0 003B86B0  80 03 00 00 */	lwz r0, 0(r3)
/* 803EF0F4 003B86B4  38 C6 00 08 */	addi r6, r6, 8
/* 803EF0F8 003B86B8  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF0FC 003B86BC  90 03 00 00 */	stw r0, 0(r3)
/* 803EF100 003B86C0  80 03 00 04 */	lwz r0, 4(r3)
/* 803EF104 003B86C4  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF108 003B86C8  90 03 00 04 */	stw r0, 4(r3)
/* 803EF10C 003B86CC  80 03 00 08 */	lwz r0, 8(r3)
/* 803EF110 003B86D0  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF114 003B86D4  90 03 00 08 */	stw r0, 8(r3)
/* 803EF118 003B86D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803EF11C 003B86DC  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF120 003B86E0  90 03 00 0C */	stw r0, 0xc(r3)
/* 803EF124 003B86E4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803EF128 003B86E8  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF12C 003B86EC  90 03 00 10 */	stw r0, 0x10(r3)
/* 803EF130 003B86F0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803EF134 003B86F4  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF138 003B86F8  90 03 00 14 */	stw r0, 0x14(r3)
/* 803EF13C 003B86FC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803EF140 003B8700  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF144 003B8704  90 03 00 18 */	stw r0, 0x18(r3)
/* 803EF148 003B8708  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803EF14C 003B870C  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF150 003B8710  90 03 00 1C */	stw r0, 0x1c(r3)
/* 803EF154 003B8714  38 63 00 20 */	addi r3, r3, 0x20
/* 803EF158 003B8718  42 00 FF 98 */	bdnz lbl_803EF0F0
lbl_803EF15C:
/* 803EF15C 003B871C  54 C3 10 3A */	slwi r3, r6, 2
/* 803EF160 003B8720  7C 06 20 50 */	subf r0, r6, r4
/* 803EF164 003B8724  7C 7B 1A 14 */	add r3, r27, r3
/* 803EF168 003B8728  7C 09 03 A6 */	mtctr r0
/* 803EF16C 003B872C  7C 06 20 40 */	cmplw r6, r4
/* 803EF170 003B8730  40 80 00 18 */	bge lbl_803EF188
lbl_803EF174:
/* 803EF174 003B8734  80 03 00 00 */	lwz r0, 0(r3)
/* 803EF178 003B8738  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 803EF17C 003B873C  90 03 00 00 */	stw r0, 0(r3)
/* 803EF180 003B8740  38 63 00 04 */	addi r3, r3, 4
/* 803EF184 003B8744  42 00 FF F0 */	bdnz lbl_803EF174
lbl_803EF188:
/* 803EF188 003B8748  39 61 00 30 */	addi r11, r1, 0x30
/* 803EF18C 003B874C  4B EC B0 0D */	bl _restgpr_25
/* 803EF190 003B8750  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EF194 003B8754  7C 08 03 A6 */	mtlr r0
/* 803EF198 003B8758  38 21 00 30 */	addi r1, r1, 0x30
/* 803EF19C 003B875C  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056CEC8
lbl_8056CEC8:
	.asciz "NodeTree"
	.balign 4
	.4byte 0