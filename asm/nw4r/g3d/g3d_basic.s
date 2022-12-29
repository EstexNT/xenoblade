.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global CalcTexMtx_Basic__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ34nw4r3g3d6TexSrtQ44nw4r3g3d6TexSrt4Flag
CalcTexMtx_Basic__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34bRCQ34nw4r3g3d6TexSrtQ44nw4r3g3d6TexSrt4Flag:
/* 803F1E18 003BB3D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F1E1C 003BB3DC  7C 08 02 A6 */	mflr r0
/* 803F1E20 003BB3E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F1E24 003BB3E4  54 C0 FF 7E */	rlwinm r0, r6, 0x1f, 0x1d, 0x1f
/* 803F1E28 003BB3E8  28 00 00 07 */	cmplwi r0, 7
/* 803F1E2C 003BB3EC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 803F1E30 003BB3F0  7C BF 2B 78 */	mr r31, r5
/* 803F1E34 003BB3F4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 803F1E38 003BB3F8  7C 9E 23 78 */	mr r30, r4
/* 803F1E3C 003BB3FC  93 A1 00 44 */	stw r29, 0x44(r1)
/* 803F1E40 003BB400  7C 7D 1B 78 */	mr r29, r3
/* 803F1E44 003BB404  40 82 00 0C */	bne .L_803F1E50
/* 803F1E48 003BB408  38 60 00 00 */	li r3, 0
/* 803F1E4C 003BB40C  48 00 01 0C */	b .L_803F1F58
.L_803F1E50:
/* 803F1E50 003BB410  C0 25 00 08 */	lfs f1, 8(r5)
/* 803F1E54 003BB414  38 61 00 0C */	addi r3, r1, 0xc
/* 803F1E58 003BB418  C0 02 C1 08 */	lfs f0, lbl_8066C488@sda21(r2)
/* 803F1E5C 003BB41C  38 81 00 08 */	addi r4, r1, 8
/* 803F1E60 003BB420  EC 20 00 72 */	fmuls f1, f0, f1
/* 803F1E64 003BB424  48 01 8F 89 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 803F1E68 003BB428  2C 1E 00 00 */	cmpwi r30, 0
/* 803F1E6C 003BB42C  41 82 00 74 */	beq .L_803F1EE0
/* 803F1E70 003BB430  C0 FF 00 00 */	lfs f7, 0(r31)
/* 803F1E74 003BB434  C0 01 00 08 */	lfs f0, 8(r1)
/* 803F1E78 003BB438  C0 DF 00 04 */	lfs f6, 4(r31)
/* 803F1E7C 003BB43C  EC 07 00 32 */	fmuls f0, f7, f0
/* 803F1E80 003BB440  C0 62 C1 0C */	lfs f3, lbl_8066C48C@sda21(r2)
/* 803F1E84 003BB444  FC A0 30 50 */	fneg f5, f6
/* 803F1E88 003BB448  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 803F1E8C 003BB44C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 803F1E90 003BB450  D0 1D 00 00 */	stfs f0, 0(r29)
/* 803F1E94 003BB454  C0 02 C1 10 */	lfs f0, lbl_8066C490@sda21(r2)
/* 803F1E98 003BB458  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 803F1E9C 003BB45C  EC 85 01 32 */	fmuls f4, f5, f4
/* 803F1EA0 003BB460  D0 7D 00 08 */	stfs f3, 8(r29)
/* 803F1EA4 003BB464  D0 5D 00 0C */	stfs f2, 0xc(r29)
/* 803F1EA8 003BB468  D0 9D 00 04 */	stfs f4, 4(r29)
/* 803F1EAC 003BB46C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 803F1EB0 003BB470  EC 47 00 B2 */	fmuls f2, f7, f2
/* 803F1EB4 003BB474  D0 5D 00 10 */	stfs f2, 0x10(r29)
/* 803F1EB8 003BB478  C0 41 00 08 */	lfs f2, 8(r1)
/* 803F1EBC 003BB47C  EC 46 00 B2 */	fmuls f2, f6, f2
/* 803F1EC0 003BB480  D0 7D 00 18 */	stfs f3, 0x18(r29)
/* 803F1EC4 003BB484  D0 3D 00 1C */	stfs f1, 0x1c(r29)
/* 803F1EC8 003BB488  D0 5D 00 14 */	stfs f2, 0x14(r29)
/* 803F1ECC 003BB48C  D0 7D 00 20 */	stfs f3, 0x20(r29)
/* 803F1ED0 003BB490  D0 7D 00 24 */	stfs f3, 0x24(r29)
/* 803F1ED4 003BB494  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 803F1ED8 003BB498  D0 7D 00 2C */	stfs f3, 0x2c(r29)
/* 803F1EDC 003BB49C  48 00 00 78 */	b .L_803F1F54
.L_803F1EE0:
/* 803F1EE0 003BB4A0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 803F1EE4 003BB4A4  7F A4 EB 78 */	mr r4, r29
/* 803F1EE8 003BB4A8  C0 A2 C1 0C */	lfs f5, lbl_8066C48C@sda21(r2)
/* 803F1EEC 003BB4AC  7F A5 EB 78 */	mr r5, r29
/* 803F1EF0 003BB4B0  FC 20 10 50 */	fneg f1, f2
/* 803F1EF4 003BB4B4  C0 61 00 08 */	lfs f3, 8(r1)
/* 803F1EF8 003BB4B8  C1 1F 00 00 */	lfs f8, 0(r31)
/* 803F1EFC 003BB4BC  38 61 00 10 */	addi r3, r1, 0x10
/* 803F1F00 003BB4C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803F1F04 003BB4C4  EC 42 00 F2 */	fmuls f2, f2, f3
/* 803F1F08 003BB4C8  EC E8 00 F2 */	fmuls f7, f8, f3
/* 803F1F0C 003BB4CC  C0 9F 00 0C */	lfs f4, 0xc(r31)
/* 803F1F10 003BB4D0  EC C1 00 32 */	fmuls f6, f1, f0
/* 803F1F14 003BB4D4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 803F1F18 003BB4D8  EC 68 00 32 */	fmuls f3, f8, f0
/* 803F1F1C 003BB4DC  C0 02 C1 10 */	lfs f0, lbl_8066C490@sda21(r2)
/* 803F1F20 003BB4E0  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 803F1F24 003BB4E4  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 803F1F28 003BB4E8  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 803F1F2C 003BB4EC  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 803F1F30 003BB4F0  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 803F1F34 003BB4F4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 803F1F38 003BB4F8  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 803F1F3C 003BB4FC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 803F1F40 003BB500  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 803F1F44 003BB504  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 803F1F48 003BB508  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 803F1F4C 003BB50C  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 803F1F50 003BB510  4B F5 B3 01 */	bl PSMTXConcat
.L_803F1F54:
/* 803F1F54 003BB514  38 60 00 01 */	li r3, 1
.L_803F1F58:
/* 803F1F58 003BB518  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F1F5C 003BB51C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803F1F60 003BB520  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 803F1F64 003BB524  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 803F1F68 003BB528  7C 08 03 A6 */	mtlr r0
/* 803F1F6C 003BB52C  38 21 00 50 */	addi r1, r1, 0x50
/* 803F1F70 003BB530  4E 80 00 20 */	blr 

.global CalcWorldMtx_Basic__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3UlPCQ34nw4r3g3d12ChrAnmResult
CalcWorldMtx_Basic__Q44nw4r3g3d6detail3dccFPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3UlPCQ34nw4r3g3d12ChrAnmResult:
/* 803F1F74 003BB534  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803F1F78 003BB538  7C 08 02 A6 */	mflr r0
/* 803F1F7C 003BB53C  90 01 00 64 */	stw r0, 0x64(r1)
/* 803F1F80 003BB540  39 61 00 60 */	addi r11, r1, 0x60
/* 803F1F84 003BB544  4B EC 81 CD */	bl _savegpr_26
/* 803F1F88 003BB548  83 E8 00 00 */	lwz r31, 0(r8)
/* 803F1F8C 003BB54C  7C 7A 1B 78 */	mr r26, r3
/* 803F1F90 003BB550  7C 9B 23 78 */	mr r27, r4
/* 803F1F94 003BB554  7C BC 2B 78 */	mr r28, r5
/* 803F1F98 003BB558  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 803F1F9C 003BB55C  7C FD 3B 78 */	mr r29, r7
/* 803F1FA0 003BB560  7D 1E 43 78 */	mr r30, r8
/* 803F1FA4 003BB564  40 82 00 0C */	bne .L_803F1FB0
/* 803F1FA8 003BB568  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 803F1FAC 003BB56C  41 82 00 30 */	beq .L_803F1FDC
.L_803F1FB0:
/* 803F1FB0 003BB570  54 E0 00 43 */	rlwinm. r0, r7, 0, 1, 1
/* 803F1FB4 003BB574  41 82 00 14 */	beq .L_803F1FC8
/* 803F1FB8 003BB578  7F 83 E3 78 */	mr r3, r28
/* 803F1FBC 003BB57C  7F 44 D3 78 */	mr r4, r26
/* 803F1FC0 003BB580  4B F5 B2 51 */	bl PSMTXCopy
/* 803F1FC4 003BB584  48 00 00 B4 */	b .L_803F2078
.L_803F1FC8:
/* 803F1FC8 003BB588  7F 43 D3 78 */	mr r3, r26
/* 803F1FCC 003BB58C  7F 84 E3 78 */	mr r4, r28
/* 803F1FD0 003BB590  7C C5 33 78 */	mr r5, r6
/* 803F1FD4 003BB594  48 01 91 55 */	bl MTX34Scale__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
/* 803F1FD8 003BB598  48 00 00 A0 */	b .L_803F2078
.L_803F1FDC:
/* 803F1FDC 003BB59C  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 803F1FE0 003BB5A0  41 82 00 60 */	beq .L_803F2040
/* 803F1FE4 003BB5A4  54 E0 00 43 */	rlwinm. r0, r7, 0, 1, 1
/* 803F1FE8 003BB5A8  41 82 00 2C */	beq .L_803F2014
/* 803F1FEC 003BB5AC  C0 48 00 48 */	lfs f2, 0x48(r8)
/* 803F1FF0 003BB5B0  7F 84 E3 78 */	mr r4, r28
/* 803F1FF4 003BB5B4  C0 28 00 38 */	lfs f1, 0x38(r8)
/* 803F1FF8 003BB5B8  38 A1 00 08 */	addi r5, r1, 8
/* 803F1FFC 003BB5BC  C0 08 00 28 */	lfs f0, 0x28(r8)
/* 803F2000 003BB5C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 803F2004 003BB5C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 803F2008 003BB5C8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 803F200C 003BB5CC  48 01 91 71 */	bl MTX34Trans__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
/* 803F2010 003BB5D0  48 00 00 68 */	b .L_803F2078
.L_803F2014:
/* 803F2014 003BB5D4  C0 26 00 00 */	lfs f1, 0(r6)
/* 803F2018 003BB5D8  38 68 00 1C */	addi r3, r8, 0x1c
/* 803F201C 003BB5DC  C0 46 00 04 */	lfs f2, 4(r6)
/* 803F2020 003BB5E0  38 81 00 18 */	addi r4, r1, 0x18
/* 803F2024 003BB5E4  C0 66 00 08 */	lfs f3, 8(r6)
/* 803F2028 003BB5E8  4B F5 B8 F9 */	bl PSMTXScaleApply
/* 803F202C 003BB5EC  7F 83 E3 78 */	mr r3, r28
/* 803F2030 003BB5F0  7F 45 D3 78 */	mr r5, r26
/* 803F2034 003BB5F4  38 81 00 18 */	addi r4, r1, 0x18
/* 803F2038 003BB5F8  4B F5 B2 19 */	bl PSMTXConcat
/* 803F203C 003BB5FC  48 00 00 3C */	b .L_803F2078
.L_803F2040:
/* 803F2040 003BB600  54 E0 00 43 */	rlwinm. r0, r7, 0, 1, 1
/* 803F2044 003BB604  41 82 00 18 */	beq .L_803F205C
/* 803F2048 003BB608  7F 83 E3 78 */	mr r3, r28
/* 803F204C 003BB60C  7F 45 D3 78 */	mr r5, r26
/* 803F2050 003BB610  38 88 00 1C */	addi r4, r8, 0x1c
/* 803F2054 003BB614  4B F5 B1 FD */	bl PSMTXConcat
/* 803F2058 003BB618  48 00 00 20 */	b .L_803F2078
.L_803F205C:
/* 803F205C 003BB61C  7F 84 E3 78 */	mr r4, r28
/* 803F2060 003BB620  7C C5 33 78 */	mr r5, r6
/* 803F2064 003BB624  48 01 90 C5 */	bl MTX34Scale__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
/* 803F2068 003BB628  7F 43 D3 78 */	mr r3, r26
/* 803F206C 003BB62C  7F 45 D3 78 */	mr r5, r26
/* 803F2070 003BB630  38 9E 00 1C */	addi r4, r30, 0x1c
/* 803F2074 003BB634  4B F5 B1 DD */	bl PSMTXConcat
.L_803F2078:
/* 803F2078 003BB638  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 803F207C 003BB63C  41 82 00 1C */	beq .L_803F2098
/* 803F2080 003BB640  C0 02 C1 10 */	lfs f0, lbl_8066C490@sda21(r2)
/* 803F2084 003BB644  67 A4 40 00 */	oris r4, r29, 0x4000
/* 803F2088 003BB648  D0 1B 00 08 */	stfs f0, 8(r27)
/* 803F208C 003BB64C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 803F2090 003BB650  D0 1B 00 00 */	stfs f0, 0(r27)
/* 803F2094 003BB654  48 00 00 20 */	b .L_803F20B4
.L_803F2098:
/* 803F2098 003BB658  C0 5E 00 04 */	lfs f2, 4(r30)
/* 803F209C 003BB65C  57 A4 00 BE */	clrlwi r4, r29, 2
/* 803F20A0 003BB660  C0 3E 00 08 */	lfs f1, 8(r30)
/* 803F20A4 003BB664  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 803F20A8 003BB668  D0 5B 00 00 */	stfs f2, 0(r27)
/* 803F20AC 003BB66C  D0 3B 00 04 */	stfs f1, 4(r27)
/* 803F20B0 003BB670  D0 1B 00 08 */	stfs f0, 8(r27)
.L_803F20B4:
/* 803F20B4 003BB674  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 803F20B8 003BB678  54 83 01 3E */	clrlwi r3, r4, 4
/* 803F20BC 003BB67C  41 82 00 08 */	beq .L_803F20C4
/* 803F20C0 003BB680  64 83 10 00 */	oris r3, r4, 0x1000
.L_803F20C4:
/* 803F20C4 003BB684  39 61 00 60 */	addi r11, r1, 0x60
/* 803F20C8 003BB688  4B EC 80 D5 */	bl _restgpr_26
/* 803F20CC 003BB68C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803F20D0 003BB690  7C 08 03 A6 */	mtlr r0
/* 803F20D4 003BB694  38 21 00 60 */	addi r1, r1, 0x60
/* 803F20D8 003BB698  4E 80 00 20 */	blr