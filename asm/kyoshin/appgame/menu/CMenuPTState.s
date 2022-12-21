.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80192AB8
func_80192AB8:
/* 80192AB8 0015C078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192ABC 0015C07C  7C 08 02 A6 */	mflr r0
/* 80192AC0 0015C080  90 01 00 24 */	stw r0, 0x24(r1)
/* 80192AC4 0015C084  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80192AC8 0015C088  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80192ACC 0015C08C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80192AD0 0015C090  7C 9D 23 78 */	mr r29, r4
/* 80192AD4 0015C094  93 81 00 10 */	stw r28, 0x10(r1)
/* 80192AD8 0015C098  7C 7C 1B 78 */	mr r28, r3
/* 80192ADC 0015C09C  80 0D AA 70 */	lwz r0, lbl_80666BF0@sda21(r13)
/* 80192AE0 0015C0A0  2C 00 00 00 */	cmpwi r0, 0
/* 80192AE4 0015C0A4  41 82 00 0C */	beq lbl_80192AF0
/* 80192AE8 0015C0A8  38 60 00 00 */	li r3, 0
/* 80192AEC 0015C0AC  48 00 00 C4 */	b lbl_80192BB0
lbl_80192AF0:
/* 80192AF0 0015C0B0  48 2A 4A C5 */	bl func_804375B4
/* 80192AF4 0015C0B4  7C 64 1B 78 */	mr r4, r3
/* 80192AF8 0015C0B8  38 60 6C 70 */	li r3, 0x6c70
/* 80192AFC 0015C0BC  48 2A 1F 61 */	bl func_80434A5C
/* 80192B00 0015C0C0  2C 03 00 00 */	cmpwi r3, 0
/* 80192B04 0015C0C4  7C 7E 1B 78 */	mr r30, r3
/* 80192B08 0015C0C8  41 82 00 90 */	beq lbl_80192B98
/* 80192B0C 0015C0CC  48 2B 1F 0D */	bl __ct__8CProcessFv
/* 80192B10 0015C0D0  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 80192B14 0015C0D4  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 80192B18 0015C0D8  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 80192B1C 0015C0DC  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80192B20 0015C0E0  39 08 CE 10 */	addi r8, r8, lbl_8050CE10@l
/* 80192B24 0015C0E4  3C A0 80 53 */	lis r5, __vt__CMenuPTState@ha
/* 80192B28 0015C0E8  80 C8 00 04 */	lwz r6, 4(r8)
/* 80192B2C 0015C0EC  3B E0 00 00 */	li r31, 0
/* 80192B30 0015C0F0  80 08 00 00 */	lwz r0, 0(r8)
/* 80192B34 0015C0F4  38 A5 61 F0 */	addi r5, r5, __vt__CMenuPTState@l
/* 80192B38 0015C0F8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80192B3C 0015C0FC  38 05 00 24 */	addi r0, r5, 0x24
/* 80192B40 0015C100  38 7E 00 60 */	addi r3, r30, 0x60
/* 80192B44 0015C104  38 80 00 00 */	li r4, 0
/* 80192B48 0015C108  90 DE 00 40 */	stw r6, 0x40(r30)
/* 80192B4C 0015C10C  80 C8 00 08 */	lwz r6, 8(r8)
/* 80192B50 0015C110  90 DE 00 44 */	stw r6, 0x44(r30)
/* 80192B54 0015C114  80 C8 00 04 */	lwz r6, 4(r8)
/* 80192B58 0015C118  80 E8 00 00 */	lwz r7, 0(r8)
/* 80192B5C 0015C11C  90 FE 00 48 */	stw r7, 0x48(r30)
/* 80192B60 0015C120  90 DE 00 4C */	stw r6, 0x4c(r30)
/* 80192B64 0015C124  80 C8 00 08 */	lwz r6, 8(r8)
/* 80192B68 0015C128  90 DE 00 50 */	stw r6, 0x50(r30)
/* 80192B6C 0015C12C  9B FE 00 54 */	stb r31, 0x54(r30)
/* 80192B70 0015C130  9B FE 00 55 */	stb r31, 0x55(r30)
/* 80192B74 0015C134  90 BE 00 10 */	stw r5, 0x10(r30)
/* 80192B78 0015C138  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80192B7C 0015C13C  93 BE 00 5C */	stw r29, 0x5c(r30)
/* 80192B80 0015C140  48 03 0D F5 */	bl func_801C3974
/* 80192B84 0015C144  38 7E 00 80 */	addi r3, r30, 0x80
/* 80192B88 0015C148  38 80 00 00 */	li r4, 0
/* 80192B8C 0015C14C  38 A0 00 00 */	li r5, 0
/* 80192B90 0015C150  48 06 67 49 */	bl func_801F92D8
/* 80192B94 0015C154  9B FE 6C 6C */	stb r31, 0x6c6c(r30)
lbl_80192B98:
/* 80192B98 0015C158  93 CD AA 70 */	stw r30, lbl_80666BF0@sda21(r13)
/* 80192B9C 0015C15C  7F C3 F3 78 */	mr r3, r30
/* 80192BA0 0015C160  7F 84 E3 78 */	mr r4, r28
/* 80192BA4 0015C164  38 A0 00 00 */	li r5, 0
/* 80192BA8 0015C168  48 2B 20 CD */	bl func_80444C74
/* 80192BAC 0015C16C  80 6D AA 70 */	lwz r3, lbl_80666BF0@sda21(r13)
lbl_80192BB0:
/* 80192BB0 0015C170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80192BB4 0015C174  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80192BB8 0015C178  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80192BBC 0015C17C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80192BC0 0015C180  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80192BC4 0015C184  7C 08 03 A6 */	mtlr r0
/* 80192BC8 0015C188  38 21 00 20 */	addi r1, r1, 0x20
/* 80192BCC 0015C18C  4E 80 00 20 */	blr 

.global func_80192BD0
func_80192BD0:
/* 80192BD0 0015C190  80 6D AA 70 */	lwz r3, lbl_80666BF0@sda21(r13)
/* 80192BD4 0015C194  7C 03 00 D0 */	neg r0, r3
/* 80192BD8 0015C198  7C 00 1B 78 */	or r0, r0, r3
/* 80192BDC 0015C19C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80192BE0 0015C1A0  4E 80 00 20 */	blr 

.global func_80192BE4
func_80192BE4:
/* 80192BE4 0015C1A4  38 63 FF A8 */	addi r3, r3, -88
/* 80192BE8 0015C1A8  4B FF FE 44 */	b func_80192A2C

.global func_80192BEC
func_80192BEC:
/* 80192BEC 0015C1AC  38 63 FF A8 */	addi r3, r3, -88
/* 80192BF0 0015C1B0  4B FF E8 30 */	b func_80191420

.global func_80192BF4
func_80192BF4:
/* 80192BF4 0015C1B4  C0 22 9F D8 */	lfs f1, lbl_8066A358@sda21(r2)
/* 80192BF8 0015C1B8  38 00 00 00 */	li r0, 0
/* 80192BFC 0015C1BC  C0 02 9F DC */	lfs f0, lbl_8066A35C@sda21(r2)
/* 80192C00 0015C1C0  90 03 00 00 */	stw r0, 0(r3)
/* 80192C04 0015C1C4  D0 23 00 04 */	stfs f1, 4(r3)
/* 80192C08 0015C1C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80192C0C 0015C1CC  4E 80 00 20 */	blr 

.global func_80192C10
func_80192C10:
/* 80192C10 0015C1D0  C0 22 9F D8 */	lfs f1, lbl_8066A358@sda21(r2)
/* 80192C14 0015C1D4  38 00 00 00 */	li r0, 0
/* 80192C18 0015C1D8  C0 02 9F DC */	lfs f0, lbl_8066A35C@sda21(r2)
/* 80192C1C 0015C1DC  90 03 00 00 */	stw r0, 0(r3)
/* 80192C20 0015C1E0  D0 23 00 04 */	stfs f1, 4(r3)
/* 80192C24 0015C1E4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80192C28 0015C1E8  4E 80 00 20 */	blr 

.global func_80192C2C
func_80192C2C:
/* 80192C2C 0015C1EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192C30 0015C1F0  7C 08 02 A6 */	mflr r0
/* 80192C34 0015C1F4  C0 02 9F D8 */	lfs f0, lbl_8066A358@sda21(r2)
/* 80192C38 0015C1F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80192C3C 0015C1FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80192C40 0015C200  7C 7F 1B 78 */	mr r31, r3
/* 80192C44 0015C204  C0 23 00 04 */	lfs f1, 4(r3)
/* 80192C48 0015C208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192C4C 0015C20C  40 81 00 10 */	ble lbl_80192C5C
/* 80192C50 0015C210  80 A3 00 00 */	lwz r5, 0(r3)
/* 80192C54 0015C214  38 05 00 01 */	addi r0, r5, 1
/* 80192C58 0015C218  90 03 00 00 */	stw r0, 0(r3)
lbl_80192C5C:
/* 80192C5C 0015C21C  81 84 00 00 */	lwz r12, 0(r4)
/* 80192C60 0015C220  7C 83 23 78 */	mr r3, r4
/* 80192C64 0015C224  81 8C 03 08 */	lwz r12, 0x308(r12)
/* 80192C68 0015C228  7D 89 03 A6 */	mtctr r12
/* 80192C6C 0015C22C  4E 80 04 21 */	bctrl 
/* 80192C70 0015C230  54 63 08 3C */	slwi r3, r3, 1
/* 80192C74 0015C234  3C 00 43 30 */	lis r0, 0x4330
/* 80192C78 0015C238  38 63 00 06 */	addi r3, r3, 6
/* 80192C7C 0015C23C  90 01 00 08 */	stw r0, 8(r1)
/* 80192C80 0015C240  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80192C84 0015C244  C8 22 9F E0 */	lfd f1, lbl_8066A360@sda21(r2)
/* 80192C88 0015C248  90 01 00 0C */	stw r0, 0xc(r1)
/* 80192C8C 0015C24C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80192C90 0015C250  EC 00 08 28 */	fsubs f0, f0, f1
/* 80192C94 0015C254  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80192C98 0015C258  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80192C9C 0015C25C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80192CA0 0015C260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80192CA4 0015C264  7C 08 03 A6 */	mtlr r0
/* 80192CA8 0015C268  38 21 00 20 */	addi r1, r1, 0x20
/* 80192CAC 0015C26C  4E 80 00 20 */	blr 

.global func_80192CB0
func_80192CB0:
/* 80192CB0 0015C270  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192CB4 0015C274  7C 08 02 A6 */	mflr r0
/* 80192CB8 0015C278  C0 02 9F D8 */	lfs f0, lbl_8066A358@sda21(r2)
/* 80192CBC 0015C27C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80192CC0 0015C280  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80192CC4 0015C284  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80192CC8 0015C288  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80192CCC 0015C28C  7C 7D 1B 78 */	mr r29, r3
/* 80192CD0 0015C290  C0 23 00 04 */	lfs f1, 4(r3)
/* 80192CD4 0015C294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80192CD8 0015C298  40 81 00 F4 */	ble lbl_80192DCC
/* 80192CDC 0015C29C  38 61 00 08 */	addi r3, r1, 8
/* 80192CE0 0015C2A0  4B EB 10 B1 */	bl func_80043D90
/* 80192CE4 0015C2A4  38 61 00 08 */	addi r3, r1, 8
/* 80192CE8 0015C2A8  4B EB 12 31 */	bl func_80043F18
/* 80192CEC 0015C2AC  3C 80 80 00 */	lis r4, 0x8000
/* 80192CF0 0015C2B0  38 A0 00 00 */	li r5, 0
/* 80192CF4 0015C2B4  4B F6 1D A5 */	bl func_800F4A98
/* 80192CF8 0015C2B8  3B E0 00 00 */	li r31, 0
/* 80192CFC 0015C2BC  48 00 00 64 */	b lbl_80192D60
lbl_80192D00:
/* 80192D00 0015C2C0  38 61 00 08 */	addi r3, r1, 8
/* 80192D04 0015C2C4  4B EB 12 15 */	bl func_80043F18
/* 80192D08 0015C2C8  7F E4 FB 78 */	mr r4, r31
/* 80192D0C 0015C2CC  4B F6 41 A1 */	bl func_800F6EAC
/* 80192D10 0015C2D0  2C 03 00 00 */	cmpwi r3, 0
/* 80192D14 0015C2D4  7C 7E 1B 78 */	mr r30, r3
/* 80192D18 0015C2D8  41 82 00 08 */	beq lbl_80192D20
/* 80192D1C 0015C2DC  3B C3 C1 64 */	addi r30, r3, -16028
lbl_80192D20:
/* 80192D20 0015C2E0  38 7E 00 08 */	addi r3, r30, 8
/* 80192D24 0015C2E4  38 80 00 10 */	li r4, 0x10
/* 80192D28 0015C2E8  4B FB 5A 51 */	bl func_80148778
/* 80192D2C 0015C2EC  2C 03 00 00 */	cmpwi r3, 0
/* 80192D30 0015C2F0  40 82 00 18 */	bne lbl_80192D48
/* 80192D34 0015C2F4  38 7E 00 08 */	addi r3, r30, 8
/* 80192D38 0015C2F8  38 80 00 0F */	li r4, 0xf
/* 80192D3C 0015C2FC  4B FB 5A 3D */	bl func_80148778
/* 80192D40 0015C300  2C 03 00 00 */	cmpwi r3, 0
/* 80192D44 0015C304  41 82 00 18 */	beq lbl_80192D5C
lbl_80192D48:
/* 80192D48 0015C308  38 61 00 08 */	addi r3, r1, 8
/* 80192D4C 0015C30C  38 80 FF FF */	li r4, -1
/* 80192D50 0015C310  4B EB 11 39 */	bl func_80043E88
/* 80192D54 0015C314  38 00 00 01 */	li r0, 1
/* 80192D58 0015C318  48 00 00 2C */	b lbl_80192D84
lbl_80192D5C:
/* 80192D5C 0015C31C  3B FF 00 01 */	addi r31, r31, 1
lbl_80192D60:
/* 80192D60 0015C320  38 61 00 08 */	addi r3, r1, 8
/* 80192D64 0015C324  4B EB 11 B5 */	bl func_80043F18
/* 80192D68 0015C328  80 03 06 20 */	lwz r0, 0x620(r3)
/* 80192D6C 0015C32C  7C 1F 00 40 */	cmplw r31, r0
/* 80192D70 0015C330  41 80 FF 90 */	blt lbl_80192D00
/* 80192D74 0015C334  38 61 00 08 */	addi r3, r1, 8
/* 80192D78 0015C338  38 80 FF FF */	li r4, -1
/* 80192D7C 0015C33C  4B EB 11 0D */	bl func_80043E88
/* 80192D80 0015C340  38 00 00 00 */	li r0, 0
lbl_80192D84:
/* 80192D84 0015C344  2C 00 00 00 */	cmpwi r0, 0
/* 80192D88 0015C348  40 82 00 44 */	bne lbl_80192DCC
/* 80192D8C 0015C34C  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 80192D90 0015C350  48 30 34 F9 */	bl func_80496288
/* 80192D94 0015C354  C0 42 9F E8 */	lfs f2, lbl_8066A368@sda21(r2)
/* 80192D98 0015C358  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80192D9C 0015C35C  EC 42 00 72 */	fmuls f2, f2, f1
/* 80192DA0 0015C360  C0 22 9F D8 */	lfs f1, lbl_8066A358@sda21(r2)
/* 80192DA4 0015C364  EC 00 10 28 */	fsubs f0, f0, f2
/* 80192DA8 0015C368  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80192DAC 0015C36C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80192DB0 0015C370  4C 40 13 82 */	cror 2, 0, 2
/* 80192DB4 0015C374  40 82 00 18 */	bne lbl_80192DCC
/* 80192DB8 0015C378  C0 02 9F DC */	lfs f0, lbl_8066A35C@sda21(r2)
/* 80192DBC 0015C37C  38 00 00 00 */	li r0, 0
/* 80192DC0 0015C380  90 1D 00 00 */	stw r0, 0(r29)
/* 80192DC4 0015C384  D0 3D 00 04 */	stfs f1, 4(r29)
/* 80192DC8 0015C388  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_80192DCC:
/* 80192DCC 0015C38C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80192DD0 0015C390  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80192DD4 0015C394  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80192DD8 0015C398  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80192DDC 0015C39C  7C 08 03 A6 */	mtlr r0
/* 80192DE0 0015C3A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80192DE4 0015C3A4  4E 80 00 20 */	blr 