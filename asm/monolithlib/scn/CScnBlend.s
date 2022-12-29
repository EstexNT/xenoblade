.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.global func_80498C6C
func_80498C6C:
/* 80498C6C 0046222C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80498C70 00462230  7C 08 02 A6 */	mflr r0
/* 80498C74 00462234  90 01 00 44 */	stw r0, 0x44(r1)
/* 80498C78 00462238  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80498C7C 0046223C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80498C80 00462240  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80498C84 00462244  7C 7D 1B 78 */	mr r29, r3
/* 80498C88 00462248  48 00 3B 71 */	bl func_8049C7F8
/* 80498C8C 0046224C  C0 42 CF 20 */	lfs f2, lbl_8066D2A0@sda21(r2)
/* 80498C90 00462250  3B E0 00 00 */	li r31, 0
/* 80498C94 00462254  C0 02 CF 28 */	lfs f0, lbl_8066D2A8@sda21(r2)
/* 80498C98 00462258  38 80 00 04 */	li r4, 4
/* 80498C9C 0046225C  C0 22 CF 24 */	lfs f1, lbl_8066D2A4@sda21(r2)
/* 80498CA0 00462260  38 00 00 01 */	li r0, 1
/* 80498CA4 00462264  D0 41 00 08 */	stfs f2, 8(r1)
/* 80498CA8 00462268  3F C0 80 57 */	lis r30, __vt__CScnBlend@ha
/* 80498CAC 0046226C  3B DE 22 30 */	addi r30, r30, __vt__CScnBlend@l
/* 80498CB0 00462270  63 E5 00 03 */	ori r5, r31, 3
/* 80498CB4 00462274  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80498CB8 00462278  7F A3 EB 78 */	mr r3, r29
/* 80498CBC 0046227C  81 81 00 08 */	lwz r12, 8(r1)
/* 80498CC0 00462280  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80498CC4 00462284  81 61 00 0C */	lwz r11, 0xc(r1)
/* 80498CC8 00462288  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80498CCC 0046228C  81 41 00 10 */	lwz r10, 0x10(r1)
/* 80498CD0 00462290  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80498CD4 00462294  81 21 00 14 */	lwz r9, 0x14(r1)
/* 80498CD8 00462298  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80498CDC 0046229C  81 01 00 18 */	lwz r8, 0x18(r1)
/* 80498CE0 004622A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80498CE4 004622A4  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 80498CE8 004622A8  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 80498CEC 004622AC  93 DD 00 00 */	stw r30, 0(r29)
/* 80498CF0 004622B0  91 9D 00 38 */	stw r12, 0x38(r29)
/* 80498CF4 004622B4  91 7D 00 3C */	stw r11, 0x3c(r29)
/* 80498CF8 004622B8  91 5D 00 40 */	stw r10, 0x40(r29)
/* 80498CFC 004622BC  91 3D 00 44 */	stw r9, 0x44(r29)
/* 80498D00 004622C0  91 1D 00 48 */	stw r8, 0x48(r29)
/* 80498D04 004622C4  90 FD 00 4C */	stw r7, 0x4c(r29)
/* 80498D08 004622C8  90 DD 00 50 */	stw r6, 0x50(r29)
/* 80498D0C 004622CC  98 BD 00 54 */	stb r5, 0x54(r29)
/* 80498D10 004622D0  90 9D 00 58 */	stw r4, 0x58(r29)
/* 80498D14 004622D4  90 1D 00 5C */	stw r0, 0x5c(r29)
/* 80498D18 004622D8  90 9D 00 60 */	stw r4, 0x60(r29)
/* 80498D1C 004622DC  90 1D 00 64 */	stw r0, 0x64(r29)
/* 80498D20 004622E0  93 FD 00 68 */	stw r31, 0x68(r29)
/* 80498D24 004622E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80498D28 004622E8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80498D2C 004622EC  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80498D30 004622F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80498D34 004622F4  7C 08 03 A6 */	mtlr r0
/* 80498D38 004622F8  38 21 00 40 */	addi r1, r1, 0x40
/* 80498D3C 004622FC  4E 80 00 20 */	blr 

.global func_80498D40
func_80498D40:
/* 80498D40 00462300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80498D44 00462304  7C 08 02 A6 */	mflr r0
/* 80498D48 00462308  2C 03 00 00 */	cmpwi r3, 0
/* 80498D4C 0046230C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80498D50 00462310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80498D54 00462314  7C 9F 23 78 */	mr r31, r4
/* 80498D58 00462318  93 C1 00 08 */	stw r30, 8(r1)
/* 80498D5C 0046231C  7C 7E 1B 78 */	mr r30, r3
/* 80498D60 00462320  41 82 00 1C */	beq .L_80498D7C
/* 80498D64 00462324  38 80 00 00 */	li r4, 0
/* 80498D68 00462328  48 00 3A C1 */	bl func_8049C828
/* 80498D6C 0046232C  2C 1F 00 00 */	cmpwi r31, 0
/* 80498D70 00462330  40 81 00 0C */	ble .L_80498D7C
/* 80498D74 00462334  7F C3 F3 78 */	mr r3, r30
/* 80498D78 00462338  4B F9 BE B5 */	bl __dl__FPv
.L_80498D7C:
/* 80498D7C 0046233C  7F C3 F3 78 */	mr r3, r30
/* 80498D80 00462340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80498D84 00462344  83 C1 00 08 */	lwz r30, 8(r1)
/* 80498D88 00462348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80498D8C 0046234C  7C 08 03 A6 */	mtlr r0
/* 80498D90 00462350  38 21 00 10 */	addi r1, r1, 0x10
/* 80498D94 00462354  4E 80 00 20 */	blr 

.global func_80498D98
func_80498D98:
/* 80498D98 00462358  2C 04 00 00 */	cmpwi r4, 0
/* 80498D9C 0046235C  41 82 00 14 */	beq .L_80498DB0
/* 80498DA0 00462360  88 03 00 54 */	lbz r0, 0x54(r3)
/* 80498DA4 00462364  60 00 00 01 */	ori r0, r0, 1
/* 80498DA8 00462368  98 03 00 54 */	stb r0, 0x54(r3)
/* 80498DAC 0046236C  4E 80 00 20 */	blr
.L_80498DB0:
/* 80498DB0 00462370  88 03 00 54 */	lbz r0, 0x54(r3)
/* 80498DB4 00462374  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80498DB8 00462378  98 03 00 54 */	stb r0, 0x54(r3)
/* 80498DBC 0046237C  4E 80 00 20 */	blr 

.global func_80498DC0
func_80498DC0:
/* 80498DC0 00462380  2C 04 00 00 */	cmpwi r4, 0
/* 80498DC4 00462384  41 82 00 14 */	beq .L_80498DD8
/* 80498DC8 00462388  88 03 00 54 */	lbz r0, 0x54(r3)
/* 80498DCC 0046238C  60 00 00 02 */	ori r0, r0, 2
/* 80498DD0 00462390  98 03 00 54 */	stb r0, 0x54(r3)
/* 80498DD4 00462394  4E 80 00 20 */	blr
.L_80498DD8:
/* 80498DD8 00462398  88 03 00 54 */	lbz r0, 0x54(r3)
/* 80498DDC 0046239C  70 00 00 FD */	andi. r0, r0, 0xfd
/* 80498DE0 004623A0  98 03 00 54 */	stb r0, 0x54(r3)
/* 80498DE4 004623A4  4E 80 00 20 */	blr 

.global func_80498DE8
func_80498DE8:
/* 80498DE8 004623A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80498DEC 004623AC  7C 08 02 A6 */	mflr r0
/* 80498DF0 004623B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80498DF4 004623B4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80498DF8 004623B8  7C 7F 1B 78 */	mr r31, r3
/* 80498DFC 004623BC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80498E00 004623C0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80498E04 004623C4  7C 9D 23 78 */	mr r29, r4
/* 80498E08 004623C8  4B FA 6D 49 */	bl func_8043FB50
/* 80498E0C 004623CC  7C 64 1B 78 */	mr r4, r3
/* 80498E10 004623D0  38 61 00 18 */	addi r3, r1, 0x18
/* 80498E14 004623D4  4B FA 5B 15 */	bl func_8043E928
/* 80498E18 004623D8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80498E1C 004623DC  C0 02 CF 28 */	lfs f0, lbl_8066D2A8@sda21(r2)
/* 80498E20 004623E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80498E24 004623E4  41 82 03 98 */	beq .L_804991BC
/* 80498E28 004623E8  3C 60 80 66 */	lis r3, lbl_80659FB8@ha
/* 80498E2C 004623EC  38 80 00 00 */	li r4, 0
/* 80498E30 004623F0  38 63 9F B8 */	addi r3, r3, lbl_80659FB8@l
/* 80498E34 004623F4  4B E8 57 CD */	bl GXLoadPosMtxImm
/* 80498E38 004623F8  38 60 00 00 */	li r3, 0
/* 80498E3C 004623FC  4B E8 58 E5 */	bl GXSetCurrentMtx
/* 80498E40 00462400  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80498E44 00462404  4B FB 27 7D */	bl func_8044B5C0
/* 80498E48 00462408  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80498E4C 0046240C  38 80 00 00 */	li r4, 0
/* 80498E50 00462410  38 A0 00 00 */	li r5, 0
/* 80498E54 00462414  4B FB 1A F9 */	bl func_8044A94C
/* 80498E58 00462418  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80498E5C 0046241C  38 80 00 00 */	li r4, 0
/* 80498E60 00462420  38 A0 00 00 */	li r5, 0
/* 80498E64 00462424  4B FB 1C 19 */	bl func_8044AA7C
/* 80498E68 00462428  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80498E6C 0046242C  38 80 00 00 */	li r4, 0
/* 80498E70 00462430  38 A0 00 00 */	li r5, 0
/* 80498E74 00462434  4B FB 1D 39 */	bl func_8044ABAC
/* 80498E78 00462438  88 7F 00 54 */	lbz r3, 0x54(r31)
/* 80498E7C 0046243C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80498E80 00462440  40 82 00 B0 */	bne .L_80498F30
/* 80498E84 00462444  38 60 00 00 */	li r3, 0
/* 80498E88 00462448  38 80 00 00 */	li r4, 0
/* 80498E8C 0046244C  4B FF BA 69 */	bl func_804948F4
/* 80498E90 00462450  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80498E94 00462454  39 00 00 00 */	li r8, 0
/* 80498E98 00462458  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 80498E9C 0046245C  80 BF 00 60 */	lwz r5, 0x60(r31)
/* 80498EA0 00462460  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 80498EA4 00462464  80 FF 00 68 */	lwz r7, 0x68(r31)
/* 80498EA8 00462468  4B FB 19 51 */	bl func_8044A7F8
/* 80498EAC 0046246C  38 60 00 00 */	li r3, 0
/* 80498EB0 00462470  4B E8 0E A1 */	bl GXSetNumTexGens
/* 80498EB4 00462474  38 60 00 01 */	li r3, 1
/* 80498EB8 00462478  4B E8 4E 09 */	bl GXSetNumTevStages
/* 80498EBC 0046247C  38 60 00 00 */	li r3, 0
/* 80498EC0 00462480  38 80 00 FF */	li r4, 0xff
/* 80498EC4 00462484  38 A0 00 FF */	li r5, 0xff
/* 80498EC8 00462488  38 C0 00 04 */	li r6, 4
/* 80498ECC 0046248C  4B E8 4C 95 */	bl GXSetTevOrder
/* 80498ED0 00462490  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 80498ED4 00462494  2C 00 00 03 */	cmpwi r0, 3
/* 80498ED8 00462498  41 82 00 28 */	beq .L_80498F00
/* 80498EDC 0046249C  38 60 00 00 */	li r3, 0
/* 80498EE0 004624A0  38 80 00 00 */	li r4, 0
/* 80498EE4 004624A4  38 A0 00 00 */	li r5, 0
/* 80498EE8 004624A8  4B FF BB 7D */	bl func_80494A64
/* 80498EEC 004624AC  38 60 00 00 */	li r3, 0
/* 80498EF0 004624B0  38 80 00 00 */	li r4, 0
/* 80498EF4 004624B4  38 A0 00 00 */	li r5, 0
/* 80498EF8 004624B8  4B FF BD 39 */	bl func_80494C30
/* 80498EFC 004624BC  48 00 00 24 */	b .L_80498F20
.L_80498F00:
/* 80498F00 004624C0  38 60 00 00 */	li r3, 0
/* 80498F04 004624C4  38 80 00 03 */	li r4, 3
/* 80498F08 004624C8  38 A0 00 00 */	li r5, 0
/* 80498F0C 004624CC  4B FF BB 59 */	bl func_80494A64
/* 80498F10 004624D0  38 60 00 00 */	li r3, 0
/* 80498F14 004624D4  38 80 00 00 */	li r4, 0
/* 80498F18 004624D8  38 A0 00 00 */	li r5, 0
/* 80498F1C 004624DC  4B FF BD 15 */	bl func_80494C30
.L_80498F20:
/* 80498F20 004624E0  38 61 00 18 */	addi r3, r1, 0x18
/* 80498F24 004624E4  38 9F 00 38 */	addi r4, r31, 0x38
/* 80498F28 004624E8  4B FF BE 5D */	bl func_80494D84
/* 80498F2C 004624EC  48 00 02 60 */	b .L_8049918C
.L_80498F30:
/* 80498F30 004624F0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80498F34 004624F4  83 DD 00 6C */	lwz r30, 0x6c(r29)
/* 80498F38 004624F8  41 82 00 28 */	beq .L_80498F60
/* 80498F3C 004624FC  A8 A1 00 1C */	lha r5, 0x1c(r1)
/* 80498F40 00462500  A8 61 00 1E */	lha r3, 0x1e(r1)
/* 80498F44 00462504  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 80498F48 00462508  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80498F4C 0046250C  7C 84 2A 14 */	add r4, r4, r5
/* 80498F50 00462510  7C 00 1A 14 */	add r0, r0, r3
/* 80498F54 00462514  54 84 FC 3E */	rlwinm r4, r4, 0x1f, 0x10, 0x1f
/* 80498F58 00462518  54 05 FC 3E */	rlwinm r5, r0, 0x1f, 0x10, 0x1f
/* 80498F5C 0046251C  48 00 00 0C */	b .L_80498F68
.L_80498F60:
/* 80498F60 00462520  A0 81 00 1C */	lhz r4, 0x1c(r1)
/* 80498F64 00462524  A0 A1 00 1E */	lhz r5, 0x1e(r1)
.L_80498F68:
/* 80498F68 00462528  80 DF 00 58 */	lwz r6, 0x58(r31)
/* 80498F6C 0046252C  7F C3 F3 78 */	mr r3, r30
/* 80498F70 00462530  4B FF 72 99 */	bl func_80490208
/* 80498F74 00462534  2C 03 00 00 */	cmpwi r3, 0
/* 80498F78 00462538  7C 7D 1B 78 */	mr r29, r3
/* 80498F7C 0046253C  41 82 02 40 */	beq .L_804991BC
/* 80498F80 00462540  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 80498F84 00462544  38 A0 00 00 */	li r5, 0
/* 80498F88 00462548  54 04 FF FE */	rlwinm r4, r0, 0x1f, 0x1f, 0x1f
/* 80498F8C 0046254C  4B FF B4 55 */	bl func_804943E0
/* 80498F90 00462550  38 60 00 00 */	li r3, 0
/* 80498F94 00462554  38 80 00 01 */	li r4, 1
/* 80498F98 00462558  4B FF B9 5D */	bl func_804948F4
/* 80498F9C 0046255C  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80498FA0 00462560  39 00 00 00 */	li r8, 0
/* 80498FA4 00462564  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 80498FA8 00462568  80 BF 00 60 */	lwz r5, 0x60(r31)
/* 80498FAC 0046256C  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 80498FB0 00462570  80 FF 00 68 */	lwz r7, 0x68(r31)
/* 80498FB4 00462574  4B FB 18 45 */	bl func_8044A7F8
/* 80498FB8 00462578  38 60 00 01 */	li r3, 1
/* 80498FBC 0046257C  4B E8 0D 95 */	bl GXSetNumTexGens
/* 80498FC0 00462580  38 60 00 00 */	li r3, 0
/* 80498FC4 00462584  38 80 00 01 */	li r4, 1
/* 80498FC8 00462588  38 A0 00 04 */	li r5, 4
/* 80498FCC 0046258C  38 C0 00 3C */	li r6, 0x3c
/* 80498FD0 00462590  38 E0 00 00 */	li r7, 0
/* 80498FD4 00462594  39 00 00 7D */	li r8, 0x7d
/* 80498FD8 00462598  4B E8 0B 29 */	bl GXSetTexCoordGen2
/* 80498FDC 0046259C  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 80498FE0 004625A0  2C 00 00 03 */	cmpwi r0, 3
/* 80498FE4 004625A4  41 82 00 E8 */	beq .L_804990CC
/* 80498FE8 004625A8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80498FEC 004625AC  38 00 00 00 */	li r0, 0
/* 80498FF0 004625B0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80498FF4 004625B4  38 81 00 08 */	addi r4, r1, 8
/* 80498FF8 004625B8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80498FFC 004625BC  FC 40 10 50 */	fneg f2, f2
/* 80499000 004625C0  C0 62 CF 2C */	lfs f3, lbl_8066D2AC@sda21(r2)
/* 80499004 004625C4  FC 20 08 50 */	fneg f1, f1
/* 80499008 004625C8  FC 00 00 50 */	fneg f0, f0
/* 8049900C 004625CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80499010 004625D0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80499014 004625D4  EC 23 00 72 */	fmuls f1, f3, f1
/* 80499018 004625D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049901C 004625DC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80499020 004625E0  FC 40 10 1E */	fctiwz f2, f2
/* 80499024 004625E4  38 60 00 03 */	li r3, 3
/* 80499028 004625E8  FC 20 08 1E */	fctiwz f1, f1
/* 8049902C 004625EC  FC 00 00 1E */	fctiwz f0, f0
/* 80499030 004625F0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80499034 004625F4  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 80499038 004625F8  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 8049903C 004625FC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80499040 00462600  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80499044 00462604  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80499048 00462608  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8049904C 0046260C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499050 00462610  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 80499054 00462614  B0 A1 00 12 */	sth r5, 0x12(r1)
/* 80499058 00462618  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8049905C 0046261C  90 A1 00 08 */	stw r5, 8(r1)
/* 80499060 00462620  90 01 00 0C */	stw r0, 0xc(r1)
/* 80499064 00462624  4B E8 47 FD */	bl GXSetTevColorS10
/* 80499068 00462628  38 60 00 01 */	li r3, 1
/* 8049906C 0046262C  4B E8 4C 55 */	bl GXSetNumTevStages
/* 80499070 00462630  38 60 00 00 */	li r3, 0
/* 80499074 00462634  38 80 00 00 */	li r4, 0
/* 80499078 00462638  38 A0 00 00 */	li r5, 0
/* 8049907C 0046263C  38 C0 00 04 */	li r6, 4
/* 80499080 00462640  4B E8 4A E1 */	bl GXSetTevOrder
/* 80499084 00462644  38 60 00 00 */	li r3, 0
/* 80499088 00462648  38 80 00 00 */	li r4, 0
/* 8049908C 0046264C  38 A0 00 00 */	li r5, 0
/* 80499090 00462650  38 C0 00 00 */	li r6, 0
/* 80499094 00462654  38 E0 00 01 */	li r7, 1
/* 80499098 00462658  39 00 00 00 */	li r8, 0
/* 8049909C 0046265C  4B E8 46 A5 */	bl GXSetTevColorOp
/* 804990A0 00462660  38 60 00 00 */	li r3, 0
/* 804990A4 00462664  38 80 00 0F */	li r4, 0xf
/* 804990A8 00462668  38 A0 00 0A */	li r5, 0xa
/* 804990AC 0046266C  38 C0 00 08 */	li r6, 8
/* 804990B0 00462670  38 E0 00 06 */	li r7, 6
/* 804990B4 00462674  4B E8 46 0D */	bl GXSetTevColorIn
/* 804990B8 00462678  38 60 00 00 */	li r3, 0
/* 804990BC 0046267C  38 80 00 00 */	li r4, 0
/* 804990C0 00462680  38 A0 00 00 */	li r5, 0
/* 804990C4 00462684  4B FF BB 6D */	bl func_80494C30
/* 804990C8 00462688  48 00 00 74 */	b .L_8049913C
.L_804990CC:
/* 804990CC 0046268C  38 60 00 02 */	li r3, 2
/* 804990D0 00462690  4B E8 4B F1 */	bl GXSetNumTevStages
/* 804990D4 00462694  38 60 00 00 */	li r3, 0
/* 804990D8 00462698  38 80 00 00 */	li r4, 0
/* 804990DC 0046269C  38 A0 00 00 */	li r5, 0
/* 804990E0 004626A0  38 C0 00 04 */	li r6, 4
/* 804990E4 004626A4  4B E8 4A 7D */	bl GXSetTevOrder
/* 804990E8 004626A8  38 60 00 01 */	li r3, 1
/* 804990EC 004626AC  38 80 00 00 */	li r4, 0
/* 804990F0 004626B0  38 A0 00 00 */	li r5, 0
/* 804990F4 004626B4  38 C0 00 04 */	li r6, 4
/* 804990F8 004626B8  4B E8 4A 69 */	bl GXSetTevOrder
/* 804990FC 004626BC  38 60 00 00 */	li r3, 0
/* 80499100 004626C0  38 80 00 02 */	li r4, 2
/* 80499104 004626C4  38 A0 00 01 */	li r5, 1
/* 80499108 004626C8  4B FF B9 5D */	bl func_80494A64
/* 8049910C 004626CC  38 60 00 01 */	li r3, 1
/* 80499110 004626D0  38 80 00 04 */	li r4, 4
/* 80499114 004626D4  38 A0 00 00 */	li r5, 0
/* 80499118 004626D8  4B FF B9 4D */	bl func_80494A64
/* 8049911C 004626DC  38 60 00 00 */	li r3, 0
/* 80499120 004626E0  38 80 00 00 */	li r4, 0
/* 80499124 004626E4  38 A0 00 00 */	li r5, 0
/* 80499128 004626E8  4B FF BB 09 */	bl func_80494C30
/* 8049912C 004626EC  38 60 00 01 */	li r3, 1
/* 80499130 004626F0  38 80 00 00 */	li r4, 0
/* 80499134 004626F4  38 A0 00 00 */	li r5, 0
/* 80499138 004626F8  4B FF BA F9 */	bl func_80494C30
.L_8049913C:
/* 8049913C 004626FC  7F A3 EB 78 */	mr r3, r29
/* 80499140 00462700  38 80 00 01 */	li r4, 1
/* 80499144 00462704  38 A0 00 01 */	li r5, 1
/* 80499148 00462708  4B E8 35 09 */	bl GXInitTexObjFilter
/* 8049914C 0046270C  7F A3 EB 78 */	mr r3, r29
/* 80499150 00462710  38 80 00 00 */	li r4, 0
/* 80499154 00462714  4B E8 38 2D */	bl GXLoadTexObj
/* 80499158 00462718  C0 22 CF 28 */	lfs f1, lbl_8066D2A8@sda21(r2)
/* 8049915C 0046271C  38 61 00 18 */	addi r3, r1, 0x18
/* 80499160 00462720  C0 02 CF 20 */	lfs f0, lbl_8066D2A0@sda21(r2)
/* 80499164 00462724  38 9F 00 38 */	addi r4, r31, 0x38
/* 80499168 00462728  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8049916C 0046272C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80499170 00462730  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80499174 00462734  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80499178 00462738  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8049917C 0046273C  4B FF BD 95 */	bl func_80494F10
/* 80499180 00462740  7F C3 F3 78 */	mr r3, r30
/* 80499184 00462744  7F A4 EB 78 */	mr r4, r29
/* 80499188 00462748  4B FF 71 51 */	bl func_804902D8
.L_8049918C:
/* 8049918C 0046274C  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80499190 00462750  38 80 00 01 */	li r4, 1
/* 80499194 00462754  38 A0 00 00 */	li r5, 0
/* 80499198 00462758  4B FB 17 B5 */	bl func_8044A94C
/* 8049919C 0046275C  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 804991A0 00462760  38 80 00 01 */	li r4, 1
/* 804991A4 00462764  38 A0 00 00 */	li r5, 0
/* 804991A8 00462768  4B FB 18 D5 */	bl func_8044AA7C
/* 804991AC 0046276C  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 804991B0 00462770  38 80 00 01 */	li r4, 1
/* 804991B4 00462774  38 A0 00 00 */	li r5, 0
/* 804991B8 00462778  4B FB 19 F5 */	bl func_8044ABAC
.L_804991BC:
/* 804991BC 0046277C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804991C0 00462780  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 804991C4 00462784  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 804991C8 00462788  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 804991CC 0046278C  7C 08 03 A6 */	mtlr r0
/* 804991D0 00462790  38 21 00 60 */	addi r1, r1, 0x60
/* 804991D4 00462794  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CScnBlend_typestr
CScnBlend_typestr:
	.asciz "CScnBlend"
	.balign 4

.global CScnFilter_typestr
CScnFilter_typestr:
	.asciz "CScnFilter"
	.balign 4
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CScnBlend
__vt__CScnBlend:
	.4byte __RTTI__CScnBlend
	.4byte 0
	.4byte func_80498D40
	.4byte func_8049C868
	.4byte func_80498DE8

.global CScnBlend_hierarchy
CScnBlend_hierarchy:
	.4byte __RTTI__CScnFilter
	.4byte 0
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CScnBlend
__RTTI__CScnBlend:
	.4byte CScnBlend_typestr
	.4byte CScnBlend_hierarchy

.global __RTTI__CScnFilter
__RTTI__CScnFilter:
	.4byte CScnFilter_typestr
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066D2A0
lbl_8066D2A0:
	# ROM: 0x577100
	.float 1.0


.global lbl_8066D2A4
lbl_8066D2A4:
	# ROM: 0x577104
	.float 0.5


.global lbl_8066D2A8
lbl_8066D2A8:
	# ROM: 0x577108
	.4byte 0


.global lbl_8066D2AC
lbl_8066D2AC:
	# ROM: 0x57710C
	.4byte 0x437F0000

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_8001F2CC
lbl_8001F2CC:
	.4byte 0x180A0000
	.4byte 0

.global lbl_8001F2D4
lbl_8001F2D4:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001F2DC
lbl_8001F2DC:
	.4byte 0x180A0000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_80498C6C
	.4byte 0x000000D4
	.4byte lbl_8001F2CC
	.4byte func_80498D40
	.4byte 0x00000058
	.4byte lbl_8001F2D4
	.4byte func_80498DE8
	.4byte 0x000003F0
	.4byte lbl_8001F2DC