.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_804089C0
func_804089C0:
/* 804089C0 003D1F80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804089C4 003D1F84  A0 63 00 08 */	lhz r3, 8(r3)
/* 804089C8 003D1F88  4E 80 00 20 */	blr 

.global func_804089CC
func_804089CC:
/* 804089CC 003D1F8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804089D0 003D1F90  88 63 00 0A */	lbz r3, 0xa(r3)
/* 804089D4 003D1F94  7C 03 00 D0 */	neg r0, r3
/* 804089D8 003D1F98  7C 00 1B 78 */	or r0, r0, r3
/* 804089DC 003D1F9C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 804089E0 003D1FA0  4E 80 00 20 */	blr 

.global func_804089E4
func_804089E4:
/* 804089E4 003D1FA4  C0 02 C2 70 */	lfs f0, lbl_8066C5F0@sda21(r2)
/* 804089E8 003D1FA8  3C 80 80 57 */	lis r4, lbl_8056D558@ha
/* 804089EC 003D1FAC  38 00 00 00 */	li r0, 0
/* 804089F0 003D1FB0  38 84 D5 58 */	addi r4, r4, lbl_8056D558@l
/* 804089F4 003D1FB4  90 03 00 04 */	stw r0, 4(r3)
/* 804089F8 003D1FB8  90 03 00 08 */	stw r0, 8(r3)
/* 804089FC 003D1FBC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80408A00 003D1FC0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80408A04 003D1FC4  90 83 00 00 */	stw r4, 0(r3)
/* 80408A08 003D1FC8  90 03 00 14 */	stw r0, 0x14(r3)
/* 80408A0C 003D1FCC  90 03 00 18 */	stw r0, 0x18(r3)
/* 80408A10 003D1FD0  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 80408A14 003D1FD4  4E 80 00 20 */	blr 
.global lbl_80408A18
lbl_80408A18:
/* 80408A18 003D1FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80408A1C 003D1FDC  7C 08 02 A6 */	mflr r0
/* 80408A20 003D1FE0  2C 03 00 00 */	cmpwi r3, 0
/* 80408A24 003D1FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408A28 003D1FE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80408A2C 003D1FEC  7C 9F 23 78 */	mr r31, r4
/* 80408A30 003D1FF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80408A34 003D1FF4  7C 7E 1B 78 */	mr r30, r3
/* 80408A38 003D1FF8  41 82 00 48 */	beq lbl_80408A80
/* 80408A3C 003D1FFC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80408A40 003D2000  3C A0 80 57 */	lis r5, lbl_8056D558@ha
/* 80408A44 003D2004  38 A5 D5 58 */	addi r5, r5, lbl_8056D558@l
/* 80408A48 003D2008  2C 04 00 00 */	cmpwi r4, 0
/* 80408A4C 003D200C  90 A3 00 00 */	stw r5, 0(r3)
/* 80408A50 003D2010  41 82 00 0C */	beq lbl_80408A5C
/* 80408A54 003D2014  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 80408A58 003D2018  4B F4 10 49 */	bl func_80349AA0
lbl_80408A5C:
/* 80408A5C 003D201C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80408A60 003D2020  2C 04 00 00 */	cmpwi r4, 0
/* 80408A64 003D2024  41 82 00 0C */	beq lbl_80408A70
/* 80408A68 003D2028  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 80408A6C 003D202C  4B F4 10 35 */	bl func_80349AA0
lbl_80408A70:
/* 80408A70 003D2030  2C 1F 00 00 */	cmpwi r31, 0
/* 80408A74 003D2034  40 81 00 0C */	ble lbl_80408A80
/* 80408A78 003D2038  7F C3 F3 78 */	mr r3, r30
/* 80408A7C 003D203C  48 02 C1 B1 */	bl func_80434C2C
lbl_80408A80:
/* 80408A80 003D2040  7F C3 F3 78 */	mr r3, r30
/* 80408A84 003D2044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80408A88 003D2048  83 C1 00 08 */	lwz r30, 8(r1)
/* 80408A8C 003D204C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80408A90 003D2050  7C 08 03 A6 */	mtlr r0
/* 80408A94 003D2054  38 21 00 10 */	addi r1, r1, 0x10
/* 80408A98 003D2058  4E 80 00 20 */	blr 
.global lbl_80408A9C
lbl_80408A9C:
/* 80408A9C 003D205C  81 83 00 00 */	lwz r12, 0(r3)
/* 80408AA0 003D2060  A0 C4 00 0E */	lhz r6, 0xe(r4)
/* 80408AA4 003D2064  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80408AA8 003D2068  7D 89 03 A6 */	mtctr r12
/* 80408AAC 003D206C  4E 80 04 20 */	bctr 
.global lbl_80408AB0
lbl_80408AB0:
/* 80408AB0 003D2070  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80408AB4 003D2074  7C 08 02 A6 */	mflr r0
/* 80408AB8 003D2078  90 01 00 34 */	stw r0, 0x34(r1)
/* 80408ABC 003D207C  39 61 00 30 */	addi r11, r1, 0x30
/* 80408AC0 003D2080  4B EB 16 89 */	bl _savegpr_24
/* 80408AC4 003D2084  A3 64 00 0C */	lhz r27, 0xc(r4)
/* 80408AC8 003D2088  3B C0 00 00 */	li r30, 0
/* 80408ACC 003D208C  90 83 00 0C */	stw r4, 0xc(r3)
/* 80408AD0 003D2090  7C 7F 1B 78 */	mr r31, r3
/* 80408AD4 003D2094  2C 1B 00 00 */	cmpwi r27, 0
/* 80408AD8 003D2098  7C B8 2B 78 */	mr r24, r5
/* 80408ADC 003D209C  93 C3 00 14 */	stw r30, 0x14(r3)
/* 80408AE0 003D20A0  7C D9 33 78 */	mr r25, r6
/* 80408AE4 003D20A4  41 82 00 B4 */	beq lbl_80408B98
/* 80408AE8 003D20A8  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 80408AEC 003D20AC  57 64 13 BA */	rlwinm r4, r27, 2, 0xe, 0x1d
/* 80408AF0 003D20B0  4B F4 0F A1 */	bl func_80349A90
/* 80408AF4 003D20B4  2C 03 00 00 */	cmpwi r3, 0
/* 80408AF8 003D20B8  40 82 00 0C */	bne lbl_80408B04
/* 80408AFC 003D20BC  38 60 00 00 */	li r3, 0
/* 80408B00 003D20C0  48 00 00 28 */	b lbl_80408B28
lbl_80408B04:
/* 80408B04 003D20C4  7C 64 1B 78 */	mr r4, r3
/* 80408B08 003D20C8  7F 69 03 A6 */	mtctr r27
/* 80408B0C 003D20CC  28 1B 00 00 */	cmplwi r27, 0
/* 80408B10 003D20D0  40 81 00 18 */	ble lbl_80408B28
lbl_80408B14:
/* 80408B14 003D20D4  2C 04 00 00 */	cmpwi r4, 0
/* 80408B18 003D20D8  41 82 00 08 */	beq lbl_80408B20
/* 80408B1C 003D20DC  93 C4 00 00 */	stw r30, 0(r4)
lbl_80408B20:
/* 80408B20 003D20E0  38 84 00 04 */	addi r4, r4, 4
/* 80408B24 003D20E4  42 00 FF F0 */	bdnz lbl_80408B14
lbl_80408B28:
/* 80408B28 003D20E8  2C 03 00 00 */	cmpwi r3, 0
/* 80408B2C 003D20EC  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80408B30 003D20F0  41 82 00 68 */	beq lbl_80408B98
/* 80408B34 003D20F4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80408B38 003D20F8  3B 40 00 00 */	li r26, 0
/* 80408B3C 003D20FC  3B 60 00 00 */	li r27, 0
/* 80408B40 003D2100  3F C0 74 69 */	lis r30, 0x7469
/* 80408B44 003D2104  3B A3 00 14 */	addi r29, r3, 0x14
/* 80408B48 003D2108  7F BC EB 78 */	mr r28, r29
/* 80408B4C 003D210C  48 00 00 3C */	b lbl_80408B88
lbl_80408B50:
/* 80408B50 003D2110  81 98 00 00 */	lwz r12, 0(r24)
/* 80408B54 003D2114  7F 03 C3 78 */	mr r3, r24
/* 80408B58 003D2118  80 1C 00 00 */	lwz r0, 0(r28)
/* 80408B5C 003D211C  38 9E 6D 67 */	addi r4, r30, 0x6d67
/* 80408B60 003D2120  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80408B64 003D2124  38 C0 00 00 */	li r6, 0
/* 80408B68 003D2128  7C BD 02 14 */	add r5, r29, r0
/* 80408B6C 003D212C  7D 89 03 A6 */	mtctr r12
/* 80408B70 003D2130  4E 80 04 21 */	bctrl 
/* 80408B74 003D2134  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80408B78 003D2138  3B 9C 00 04 */	addi r28, r28, 4
/* 80408B7C 003D213C  3B 5A 00 01 */	addi r26, r26, 1
/* 80408B80 003D2140  7C 64 D9 2E */	stwx r3, r4, r27
/* 80408B84 003D2144  3B 7B 00 04 */	addi r27, r27, 4
lbl_80408B88:
/* 80408B88 003D2148  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80408B8C 003D214C  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 80408B90 003D2150  7C 1A 00 00 */	cmpw r26, r0
/* 80408B94 003D2154  41 80 FF BC */	blt lbl_80408B50
lbl_80408B98:
/* 80408B98 003D2158  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 80408B9C 003D215C  57 24 23 36 */	rlwinm r4, r25, 4, 0xc, 0x1b
/* 80408BA0 003D2160  4B F4 0E F1 */	bl func_80349A90
/* 80408BA4 003D2164  2C 03 00 00 */	cmpwi r3, 0
/* 80408BA8 003D2168  40 82 00 0C */	bne lbl_80408BB4
/* 80408BAC 003D216C  38 60 00 00 */	li r3, 0
/* 80408BB0 003D2170  48 00 00 3C */	b lbl_80408BEC
lbl_80408BB4:
/* 80408BB4 003D2174  7C 64 1B 78 */	mr r4, r3
/* 80408BB8 003D2178  38 00 00 00 */	li r0, 0
/* 80408BBC 003D217C  7F 29 03 A6 */	mtctr r25
/* 80408BC0 003D2180  28 19 00 00 */	cmplwi r25, 0
/* 80408BC4 003D2184  40 81 00 28 */	ble lbl_80408BEC
lbl_80408BC8:
/* 80408BC8 003D2188  2C 04 00 00 */	cmpwi r4, 0
/* 80408BCC 003D218C  41 82 00 18 */	beq lbl_80408BE4
/* 80408BD0 003D2190  90 04 00 00 */	stw r0, 0(r4)
/* 80408BD4 003D2194  90 04 00 04 */	stw r0, 4(r4)
/* 80408BD8 003D2198  90 04 00 08 */	stw r0, 8(r4)
/* 80408BDC 003D219C  B0 04 00 0C */	sth r0, 0xc(r4)
/* 80408BE0 003D21A0  98 04 00 0E */	stb r0, 0xe(r4)
lbl_80408BE4:
/* 80408BE4 003D21A4  38 84 00 10 */	addi r4, r4, 0x10
/* 80408BE8 003D21A8  42 00 FF E0 */	bdnz lbl_80408BC8
lbl_80408BEC:
/* 80408BEC 003D21AC  2C 03 00 00 */	cmpwi r3, 0
/* 80408BF0 003D21B0  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80408BF4 003D21B4  41 82 00 08 */	beq lbl_80408BFC
/* 80408BF8 003D21B8  B3 3F 00 1C */	sth r25, 0x1c(r31)
lbl_80408BFC:
/* 80408BFC 003D21BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80408C00 003D21C0  4B EB 15 95 */	bl _restgpr_24
/* 80408C04 003D21C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80408C08 003D21C8  7C 08 03 A6 */	mtlr r0
/* 80408C0C 003D21CC  38 21 00 30 */	addi r1, r1, 0x30
/* 80408C10 003D21D0  4E 80 00 20 */	blr 
.global lbl_80408C14
lbl_80408C14:
/* 80408C14 003D21D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80408C18 003D21D8  7C 08 02 A6 */	mflr r0
/* 80408C1C 003D21DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80408C20 003D21E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80408C24 003D21E4  4B EB 15 29 */	bl _savegpr_25
/* 80408C28 003D21E8  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 80408C2C 003D21EC  7C 79 1B 78 */	mr r25, r3
/* 80408C30 003D21F0  7C 9A 23 78 */	mr r26, r4
/* 80408C34 003D21F4  7C BB 2B 78 */	mr r27, r5
/* 80408C38 003D21F8  80 07 00 10 */	lwz r0, 0x10(r7)
/* 80408C3C 003D21FC  7C DC 33 78 */	mr r28, r6
/* 80408C40 003D2200  3B E0 00 00 */	li r31, 0
/* 80408C44 003D2204  3B A0 00 00 */	li r29, 0
/* 80408C48 003D2208  7F C7 02 14 */	add r30, r7, r0
/* 80408C4C 003D220C  48 00 01 64 */	b lbl_80408DB0
lbl_80408C50:
/* 80408C50 003D2210  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80408C54 003D2214  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80408C58 003D2218  7C 84 02 14 */	add r4, r4, r0
/* 80408C5C 003D221C  88 04 00 15 */	lbz r0, 0x15(r4)
/* 80408C60 003D2220  2C 00 00 00 */	cmpwi r0, 0
/* 80408C64 003D2224  40 82 00 A8 */	bne lbl_80408D0C
/* 80408C68 003D2228  81 9A 00 00 */	lwz r12, 0(r26)
/* 80408C6C 003D222C  7F 43 D3 78 */	mr r3, r26
/* 80408C70 003D2230  7F 65 DB 78 */	mr r5, r27
/* 80408C74 003D2234  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80408C78 003D2238  7D 89 03 A6 */	mtctr r12
/* 80408C7C 003D223C  4E 80 04 21 */	bctrl 
/* 80408C80 003D2240  2C 03 00 00 */	cmpwi r3, 0
/* 80408C84 003D2244  41 82 01 28 */	beq lbl_80408DAC
/* 80408C88 003D2248  2C 1F 00 00 */	cmpwi r31, 0
/* 80408C8C 003D224C  40 82 00 08 */	bne lbl_80408C94
/* 80408C90 003D2250  83 F9 00 18 */	lwz r31, 0x18(r25)
lbl_80408C94:
/* 80408C94 003D2254  A0 19 00 1C */	lhz r0, 0x1c(r25)
/* 80408C98 003D2258  80 99 00 18 */	lwz r4, 0x18(r25)
/* 80408C9C 003D225C  54 00 20 36 */	slwi r0, r0, 4
/* 80408CA0 003D2260  7C 84 02 14 */	add r4, r4, r0
/* 80408CA4 003D2264  38 04 00 0F */	addi r0, r4, 0xf
/* 80408CA8 003D2268  7C 1F 00 50 */	subf r0, r31, r0
/* 80408CAC 003D226C  54 00 E1 3E */	srwi r0, r0, 4
/* 80408CB0 003D2270  7C 09 03 A6 */	mtctr r0
/* 80408CB4 003D2274  7C 1F 20 40 */	cmplw r31, r4
/* 80408CB8 003D2278  40 80 00 1C */	bge lbl_80408CD4
lbl_80408CBC:
/* 80408CBC 003D227C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80408CC0 003D2280  2C 00 00 00 */	cmpwi r0, 0
/* 80408CC4 003D2284  40 82 00 08 */	bne lbl_80408CCC
/* 80408CC8 003D2288  48 00 00 10 */	b lbl_80408CD8
lbl_80408CCC:
/* 80408CCC 003D228C  3B FF 00 10 */	addi r31, r31, 0x10
/* 80408CD0 003D2290  42 00 FF EC */	bdnz lbl_80408CBC
lbl_80408CD4:
/* 80408CD4 003D2294  3B E0 00 00 */	li r31, 0
lbl_80408CD8:
/* 80408CD8 003D2298  2C 1F 00 00 */	cmpwi r31, 0
/* 80408CDC 003D229C  40 82 00 0C */	bne lbl_80408CE8
/* 80408CE0 003D22A0  3B E0 00 00 */	li r31, 0
/* 80408CE4 003D22A4  48 00 00 1C */	b lbl_80408D00
lbl_80408CE8:
/* 80408CE8 003D22A8  93 3F 00 08 */	stw r25, 8(r31)
/* 80408CEC 003D22AC  7F E4 FB 78 */	mr r4, r31
/* 80408CF0 003D22B0  B3 BF 00 0C */	sth r29, 0xc(r31)
/* 80408CF4 003D22B4  9B 9F 00 0E */	stb r28, 0xe(r31)
/* 80408CF8 003D22B8  4B FF 68 6D */	bl func_803FF564
/* 80408CFC 003D22BC  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80408D00:
/* 80408D00 003D22C0  2C 1F 00 00 */	cmpwi r31, 0
/* 80408D04 003D22C4  41 82 00 C0 */	beq lbl_80408DC4
/* 80408D08 003D22C8  48 00 00 A4 */	b lbl_80408DAC
lbl_80408D0C:
/* 80408D0C 003D22CC  81 9A 00 00 */	lwz r12, 0(r26)
/* 80408D10 003D22D0  7F 43 D3 78 */	mr r3, r26
/* 80408D14 003D22D4  7F 65 DB 78 */	mr r5, r27
/* 80408D18 003D22D8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80408D1C 003D22DC  7D 89 03 A6 */	mtctr r12
/* 80408D20 003D22E0  4E 80 04 21 */	bctrl 
/* 80408D24 003D22E4  2C 03 00 00 */	cmpwi r3, 0
/* 80408D28 003D22E8  41 82 00 84 */	beq lbl_80408DAC
/* 80408D2C 003D22EC  2C 1F 00 00 */	cmpwi r31, 0
/* 80408D30 003D22F0  40 82 00 08 */	bne lbl_80408D38
/* 80408D34 003D22F4  83 F9 00 18 */	lwz r31, 0x18(r25)
lbl_80408D38:
/* 80408D38 003D22F8  A0 19 00 1C */	lhz r0, 0x1c(r25)
/* 80408D3C 003D22FC  80 99 00 18 */	lwz r4, 0x18(r25)
/* 80408D40 003D2300  54 00 20 36 */	slwi r0, r0, 4
/* 80408D44 003D2304  7C 84 02 14 */	add r4, r4, r0
/* 80408D48 003D2308  38 04 00 0F */	addi r0, r4, 0xf
/* 80408D4C 003D230C  7C 1F 00 50 */	subf r0, r31, r0
/* 80408D50 003D2310  54 00 E1 3E */	srwi r0, r0, 4
/* 80408D54 003D2314  7C 09 03 A6 */	mtctr r0
/* 80408D58 003D2318  7C 1F 20 40 */	cmplw r31, r4
/* 80408D5C 003D231C  40 80 00 1C */	bge lbl_80408D78
lbl_80408D60:
/* 80408D60 003D2320  80 1F 00 08 */	lwz r0, 8(r31)
/* 80408D64 003D2324  2C 00 00 00 */	cmpwi r0, 0
/* 80408D68 003D2328  40 82 00 08 */	bne lbl_80408D70
/* 80408D6C 003D232C  48 00 00 10 */	b lbl_80408D7C
lbl_80408D70:
/* 80408D70 003D2330  3B FF 00 10 */	addi r31, r31, 0x10
/* 80408D74 003D2334  42 00 FF EC */	bdnz lbl_80408D60
lbl_80408D78:
/* 80408D78 003D2338  3B E0 00 00 */	li r31, 0
lbl_80408D7C:
/* 80408D7C 003D233C  2C 1F 00 00 */	cmpwi r31, 0
/* 80408D80 003D2340  40 82 00 0C */	bne lbl_80408D8C
/* 80408D84 003D2344  3B E0 00 00 */	li r31, 0
/* 80408D88 003D2348  48 00 00 1C */	b lbl_80408DA4
lbl_80408D8C:
/* 80408D8C 003D234C  93 3F 00 08 */	stw r25, 8(r31)
/* 80408D90 003D2350  7F E4 FB 78 */	mr r4, r31
/* 80408D94 003D2354  B3 BF 00 0C */	sth r29, 0xc(r31)
/* 80408D98 003D2358  9B 9F 00 0E */	stb r28, 0xe(r31)
/* 80408D9C 003D235C  4B FF F4 15 */	bl func_804081B0
/* 80408DA0 003D2360  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80408DA4:
/* 80408DA4 003D2364  2C 1F 00 00 */	cmpwi r31, 0
/* 80408DA8 003D2368  41 82 00 1C */	beq lbl_80408DC4
lbl_80408DAC:
/* 80408DAC 003D236C  3B BD 00 01 */	addi r29, r29, 1
lbl_80408DB0:
/* 80408DB0 003D2370  80 99 00 0C */	lwz r4, 0xc(r25)
/* 80408DB4 003D2374  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80408DB8 003D2378  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 80408DBC 003D237C  7C 03 00 40 */	cmplw r3, r0
/* 80408DC0 003D2380  41 80 FE 90 */	blt lbl_80408C50
lbl_80408DC4:
/* 80408DC4 003D2384  39 61 00 30 */	addi r11, r1, 0x30
/* 80408DC8 003D2388  4B EB 13 D1 */	bl _restgpr_25
/* 80408DCC 003D238C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80408DD0 003D2390  7C 08 03 A6 */	mtlr r0
/* 80408DD4 003D2394  38 21 00 30 */	addi r1, r1, 0x30
/* 80408DD8 003D2398  4E 80 00 20 */	blr 
.global lbl_80408DDC
lbl_80408DDC:
/* 80408DDC 003D239C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80408DE0 003D23A0  7C 08 02 A6 */	mflr r0
/* 80408DE4 003D23A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80408DE8 003D23A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80408DEC 003D23AC  4B EB 13 65 */	bl _savegpr_26
/* 80408DF0 003D23B0  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80408DF4 003D23B4  7C 7A 1B 78 */	mr r26, r3
/* 80408DF8 003D23B8  7C 9B 23 78 */	mr r27, r4
/* 80408DFC 003D23BC  7C BC 2B 78 */	mr r28, r5
/* 80408E00 003D23C0  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80408E04 003D23C4  3B E0 00 00 */	li r31, 0
/* 80408E08 003D23C8  3B A0 00 00 */	li r29, 0
/* 80408E0C 003D23CC  7F C6 02 14 */	add r30, r6, r0
/* 80408E10 003D23D0  48 00 00 B4 */	b lbl_80408EC4
lbl_80408E14:
/* 80408E14 003D23D4  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80408E18 003D23D8  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80408E1C 003D23DC  7C 84 02 14 */	add r4, r4, r0
/* 80408E20 003D23E0  88 04 00 15 */	lbz r0, 0x15(r4)
/* 80408E24 003D23E4  28 00 00 01 */	cmplwi r0, 1
/* 80408E28 003D23E8  40 82 00 98 */	bne lbl_80408EC0
/* 80408E2C 003D23EC  38 7B 00 44 */	addi r3, r27, 0x44
/* 80408E30 003D23F0  48 00 12 25 */	bl func_8040A054
/* 80408E34 003D23F4  2C 03 00 00 */	cmpwi r3, 0
/* 80408E38 003D23F8  41 82 00 88 */	beq lbl_80408EC0
/* 80408E3C 003D23FC  2C 1F 00 00 */	cmpwi r31, 0
/* 80408E40 003D2400  40 82 00 08 */	bne lbl_80408E48
/* 80408E44 003D2404  83 FA 00 18 */	lwz r31, 0x18(r26)
lbl_80408E48:
/* 80408E48 003D2408  A0 1A 00 1C */	lhz r0, 0x1c(r26)
/* 80408E4C 003D240C  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 80408E50 003D2410  54 00 20 36 */	slwi r0, r0, 4
/* 80408E54 003D2414  7C 63 02 14 */	add r3, r3, r0
/* 80408E58 003D2418  38 03 00 0F */	addi r0, r3, 0xf
/* 80408E5C 003D241C  7C 1F 00 50 */	subf r0, r31, r0
/* 80408E60 003D2420  54 00 E1 3E */	srwi r0, r0, 4
/* 80408E64 003D2424  7C 09 03 A6 */	mtctr r0
/* 80408E68 003D2428  7C 1F 18 40 */	cmplw r31, r3
/* 80408E6C 003D242C  40 80 00 1C */	bge lbl_80408E88
lbl_80408E70:
/* 80408E70 003D2430  80 1F 00 08 */	lwz r0, 8(r31)
/* 80408E74 003D2434  2C 00 00 00 */	cmpwi r0, 0
/* 80408E78 003D2438  40 82 00 08 */	bne lbl_80408E80
/* 80408E7C 003D243C  48 00 00 10 */	b lbl_80408E8C
lbl_80408E80:
/* 80408E80 003D2440  3B FF 00 10 */	addi r31, r31, 0x10
/* 80408E84 003D2444  42 00 FF EC */	bdnz lbl_80408E70
lbl_80408E88:
/* 80408E88 003D2448  3B E0 00 00 */	li r31, 0
lbl_80408E8C:
/* 80408E8C 003D244C  2C 1F 00 00 */	cmpwi r31, 0
/* 80408E90 003D2450  40 82 00 0C */	bne lbl_80408E9C
/* 80408E94 003D2454  3B E0 00 00 */	li r31, 0
/* 80408E98 003D2458  48 00 00 20 */	b lbl_80408EB8
lbl_80408E9C:
/* 80408E9C 003D245C  93 5F 00 08 */	stw r26, 8(r31)
/* 80408EA0 003D2460  7F 63 DB 78 */	mr r3, r27
/* 80408EA4 003D2464  7F E4 FB 78 */	mr r4, r31
/* 80408EA8 003D2468  B3 BF 00 0C */	sth r29, 0xc(r31)
/* 80408EAC 003D246C  9B 9F 00 0E */	stb r28, 0xe(r31)
/* 80408EB0 003D2470  4B FF F3 01 */	bl func_804081B0
/* 80408EB4 003D2474  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80408EB8:
/* 80408EB8 003D2478  2C 1F 00 00 */	cmpwi r31, 0
/* 80408EBC 003D247C  41 82 00 1C */	beq lbl_80408ED8
lbl_80408EC0:
/* 80408EC0 003D2480  3B BD 00 01 */	addi r29, r29, 1
lbl_80408EC4:
/* 80408EC4 003D2484  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 80408EC8 003D2488  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80408ECC 003D248C  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 80408ED0 003D2490  7C 03 00 40 */	cmplw r3, r0
/* 80408ED4 003D2494  41 80 FF 40 */	blt lbl_80408E14
lbl_80408ED8:
/* 80408ED8 003D2498  39 61 00 20 */	addi r11, r1, 0x20
/* 80408EDC 003D249C  4B EB 12 C1 */	bl _restgpr_26
/* 80408EE0 003D24A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80408EE4 003D24A4  7C 08 03 A6 */	mtlr r0
/* 80408EE8 003D24A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80408EEC 003D24AC  4E 80 00 20 */	blr 
.global lbl_80408EF0
lbl_80408EF0:
/* 80408EF0 003D24B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80408EF4 003D24B4  7C 08 02 A6 */	mflr r0
/* 80408EF8 003D24B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80408EFC 003D24BC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80408F00 003D24C0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80408F04 003D24C4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80408F08 003D24C8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 80408F0C 003D24CC  39 61 00 40 */	addi r11, r1, 0x40
/* 80408F10 003D24D0  4B EB 12 2D */	bl _savegpr_21
/* 80408F14 003D24D4  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80408F18 003D24D8  3F E0 52 4C */	lis r31, 0x524C5643@ha
/* 80408F1C 003D24DC  54 84 10 3A */	slwi r4, r4, 2
/* 80408F20 003D24E0  C3 E2 C2 74 */	lfs f31, lbl_8066C5F4@sda21(r2)
/* 80408F24 003D24E4  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80408F28 003D24E8  7C 76 1B 78 */	mr r22, r3
/* 80408F2C 003D24EC  7C B7 2B 78 */	mr r23, r5
/* 80408F30 003D24F0  3B DF 56 43 */	addi r30, r31, 0x524C5643@l
/* 80408F34 003D24F4  7C 06 02 14 */	add r0, r6, r0
/* 80408F38 003D24F8  3B 00 00 00 */	li r24, 0
/* 80408F3C 003D24FC  7C 04 00 2E */	lwzx r0, r4, r0
/* 80408F40 003D2500  7F 86 02 14 */	add r28, r6, r0
/* 80408F44 003D2504  3B 5C 00 18 */	addi r26, r28, 0x18
/* 80408F48 003D2508  48 00 01 60 */	b lbl_804090A8
lbl_80408F4C:
/* 80408F4C 003D250C  80 1A 00 00 */	lwz r0, 0(r26)
/* 80408F50 003D2510  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80408F54 003D2514  7F 7C 02 14 */	add r27, r28, r0
/* 80408F58 003D2518  3B 3B 00 08 */	addi r25, r27, 8
/* 80408F5C 003D251C  7C 03 F0 00 */	cmpw r3, r30
/* 80408F60 003D2520  41 82 00 D4 */	beq lbl_80409034
/* 80408F64 003D2524  40 80 00 14 */	bge lbl_80408F78
/* 80408F68 003D2528  38 1F 50 41 */	addi r0, r31, 0x5041
/* 80408F6C 003D252C  7C 03 00 00 */	cmpw r3, r0
/* 80408F70 003D2530  41 82 00 18 */	beq lbl_80408F88
/* 80408F74 003D2534  48 00 01 2C */	b lbl_804090A0
lbl_80408F78:
/* 80408F78 003D2538  38 1F 56 49 */	addi r0, r31, 0x5649
/* 80408F7C 003D253C  7C 03 00 00 */	cmpw r3, r0
/* 80408F80 003D2540  41 82 00 58 */	beq lbl_80408FD8
/* 80408F84 003D2544  48 00 01 1C */	b lbl_804090A0
lbl_80408F88:
/* 80408F88 003D2548  C3 D6 00 10 */	lfs f30, 0x10(r22)
/* 80408F8C 003D254C  3B A0 00 00 */	li r29, 0
/* 80408F90 003D2550  48 00 00 38 */	b lbl_80408FC8
lbl_80408F94:
/* 80408F94 003D2554  80 19 00 00 */	lwz r0, 0(r25)
/* 80408F98 003D2558  FC 20 F0 90 */	fmr f1, f30
/* 80408F9C 003D255C  7E BB 02 14 */	add r21, r27, r0
/* 80408FA0 003D2560  80 15 00 08 */	lwz r0, 8(r21)
/* 80408FA4 003D2564  A0 95 00 04 */	lhz r4, 4(r21)
/* 80408FA8 003D2568  7C 75 02 14 */	add r3, r21, r0
/* 80408FAC 003D256C  4B FF F8 59 */	bl func_80408804
/* 80408FB0 003D2570  88 15 00 01 */	lbz r0, 1(r21)
/* 80408FB4 003D2574  3B 39 00 04 */	addi r25, r25, 4
/* 80408FB8 003D2578  3B BD 00 01 */	addi r29, r29, 1
/* 80408FBC 003D257C  54 00 10 3A */	slwi r0, r0, 2
/* 80408FC0 003D2580  7C 77 02 14 */	add r3, r23, r0
/* 80408FC4 003D2584  D0 23 00 2C */	stfs f1, 0x2c(r3)
lbl_80408FC8:
/* 80408FC8 003D2588  88 1B 00 04 */	lbz r0, 4(r27)
/* 80408FCC 003D258C  7C 1D 00 00 */	cmpw r29, r0
/* 80408FD0 003D2590  41 80 FF C4 */	blt lbl_80408F94
/* 80408FD4 003D2594  48 00 00 CC */	b lbl_804090A0
lbl_80408FD8:
/* 80408FD8 003D2598  C3 D6 00 10 */	lfs f30, 0x10(r22)
/* 80408FDC 003D259C  3B A0 00 00 */	li r29, 0
/* 80408FE0 003D25A0  48 00 00 44 */	b lbl_80409024
lbl_80408FE4:
/* 80408FE4 003D25A4  80 19 00 00 */	lwz r0, 0(r25)
/* 80408FE8 003D25A8  FC 20 F0 90 */	fmr f1, f30
/* 80408FEC 003D25AC  7C 7B 02 14 */	add r3, r27, r0
/* 80408FF0 003D25B0  80 03 00 08 */	lwz r0, 8(r3)
/* 80408FF4 003D25B4  A0 83 00 04 */	lhz r4, 4(r3)
/* 80408FF8 003D25B8  7C 63 02 14 */	add r3, r3, r0
/* 80408FFC 003D25BC  4B FF F7 21 */	bl func_8040871C
/* 80409000 003D25C0  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80409004 003D25C4  88 17 00 BB */	lbz r0, 0xbb(r23)
/* 80409008 003D25C8  7C 64 00 D0 */	neg r3, r4
/* 8040900C 003D25CC  3B 39 00 04 */	addi r25, r25, 4
/* 80409010 003D25D0  7C 63 23 78 */	or r3, r3, r4
/* 80409014 003D25D4  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80409018 003D25D8  50 60 0F FE */	rlwimi r0, r3, 1, 0x1f, 0x1f
/* 8040901C 003D25DC  3B BD 00 01 */	addi r29, r29, 1
/* 80409020 003D25E0  98 17 00 BB */	stb r0, 0xbb(r23)
lbl_80409024:
/* 80409024 003D25E4  88 1B 00 04 */	lbz r0, 4(r27)
/* 80409028 003D25E8  7C 1D 00 00 */	cmpw r29, r0
/* 8040902C 003D25EC  41 80 FF B8 */	blt lbl_80408FE4
/* 80409030 003D25F0  48 00 00 70 */	b lbl_804090A0
lbl_80409034:
/* 80409034 003D25F4  88 1B 00 04 */	lbz r0, 4(r27)
/* 80409038 003D25F8  3B A0 00 00 */	li r29, 0
/* 8040903C 003D25FC  C3 D6 00 10 */	lfs f30, 0x10(r22)
/* 80409040 003D2600  2C 00 00 00 */	cmpwi r0, 0
/* 80409044 003D2604  40 81 00 5C */	ble lbl_804090A0
/* 80409048 003D2608  48 00 00 4C */	b lbl_80409094
lbl_8040904C:
/* 8040904C 003D260C  80 19 00 00 */	lwz r0, 0(r25)
/* 80409050 003D2610  FC 20 F0 90 */	fmr f1, f30
/* 80409054 003D2614  7E BB 02 14 */	add r21, r27, r0
/* 80409058 003D2618  80 15 00 08 */	lwz r0, 8(r21)
/* 8040905C 003D261C  A0 95 00 04 */	lhz r4, 4(r21)
/* 80409060 003D2620  7C 75 02 14 */	add r3, r21, r0
/* 80409064 003D2624  4B FF F7 A1 */	bl func_80408804
/* 80409068 003D2628  EC 01 F8 2A */	fadds f0, f1, f31
/* 8040906C 003D262C  F0 01 A0 08 */	psq_st f0, 8(r1), 1, qr2
/* 80409070 003D2630  7E E3 BB 78 */	mr r3, r23
/* 80409074 003D2634  81 97 00 00 */	lwz r12, 0(r23)
/* 80409078 003D2638  88 A1 00 08 */	lbz r5, 8(r1)
/* 8040907C 003D263C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80409080 003D2640  88 95 00 01 */	lbz r4, 1(r21)
/* 80409084 003D2644  7D 89 03 A6 */	mtctr r12
/* 80409088 003D2648  4E 80 04 21 */	bctrl 
/* 8040908C 003D264C  3B 39 00 04 */	addi r25, r25, 4
/* 80409090 003D2650  3B BD 00 01 */	addi r29, r29, 1
lbl_80409094:
/* 80409094 003D2654  88 1B 00 04 */	lbz r0, 4(r27)
/* 80409098 003D2658  7C 1D 00 00 */	cmpw r29, r0
/* 8040909C 003D265C  41 80 FF B0 */	blt lbl_8040904C
lbl_804090A0:
/* 804090A0 003D2660  3B 5A 00 04 */	addi r26, r26, 4
/* 804090A4 003D2664  3B 18 00 01 */	addi r24, r24, 1
lbl_804090A8:
/* 804090A8 003D2668  88 1C 00 14 */	lbz r0, 0x14(r28)
/* 804090AC 003D266C  7C 18 00 00 */	cmpw r24, r0
/* 804090B0 003D2670  41 80 FE 9C */	blt lbl_80408F4C
/* 804090B4 003D2674  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 804090B8 003D2678  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804090BC 003D267C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 804090C0 003D2680  39 61 00 40 */	addi r11, r1, 0x40
/* 804090C4 003D2684  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804090C8 003D2688  4B EB 10 C1 */	bl _restgpr_21
/* 804090CC 003D268C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804090D0 003D2690  7C 08 03 A6 */	mtlr r0
/* 804090D4 003D2694  38 21 00 60 */	addi r1, r1, 0x60
/* 804090D8 003D2698  4E 80 00 20 */	blr


.global lbl_804090DC
lbl_804090DC:
/* 804090DC 003D269C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804090E0 003D26A0  7C 08 02 A6 */	mflr r0
/* 804090E4 003D26A4  90 01 00 84 */	stw r0, 0x84(r1)
/* 804090E8 003D26A8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 804090EC 003D26AC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 804090F0 003D26B0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 804090F4 003D26B4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 804090F8 003D26B8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 804090FC 003D26BC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 80409100 003D26C0  39 61 00 50 */	addi r11, r1, 0x50
/* 80409104 003D26C4  4B EB 10 31 */	bl _savegpr_19
/* 80409108 003D26C8  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8040910C 003D26CC  3F E0 52 4C */	lis r31, 0x524C5450@ha
/* 80409110 003D26D0  54 84 10 3A */	slwi r4, r4, 2
/* 80409114 003D26D4  C3 C2 C2 74 */	lfs f30, lbl_8066C5F4@sda21(r2)
/* 80409118 003D26D8  80 06 00 10 */	lwz r0, 0x10(r6)
/* 8040911C 003D26DC  7C 74 1B 78 */	mr r20, r3
/* 80409120 003D26E0  7C B5 2B 78 */	mr r21, r5
/* 80409124 003D26E4  3B DF 54 50 */	addi r30, r31, 0x524C5450@l
/* 80409128 003D26E8  7C 06 02 14 */	add r0, r6, r0
/* 8040912C 003D26EC  3A C0 00 00 */	li r22, 0
/* 80409130 003D26F0  7C 04 00 2E */	lwzx r0, r4, r0
/* 80409134 003D26F4  7F 86 02 14 */	add r28, r6, r0
/* 80409138 003D26F8  3B 3C 00 18 */	addi r25, r28, 0x18
/* 8040913C 003D26FC  48 00 02 60 */	b lbl_8040939C
lbl_80409140:
/* 80409140 003D2700  80 19 00 00 */	lwz r0, 0(r25)
/* 80409144 003D2704  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80409148 003D2708  7F 7C 02 14 */	add r27, r28, r0
/* 8040914C 003D270C  3B 1B 00 08 */	addi r24, r27, 8
/* 80409150 003D2710  7C 03 F0 00 */	cmpw r3, r30
/* 80409154 003D2714  41 82 01 3C */	beq lbl_80409290
/* 80409158 003D2718  40 80 00 24 */	bge lbl_8040917C
/* 8040915C 003D271C  38 1F 4D 43 */	addi r0, r31, 0x4d43
/* 80409160 003D2720  7C 03 00 00 */	cmpw r3, r0
/* 80409164 003D2724  41 82 00 28 */	beq lbl_8040918C
/* 80409168 003D2728  40 80 02 2C */	bge lbl_80409394
/* 8040916C 003D272C  38 1F 49 4D */	addi r0, r31, 0x494d
/* 80409170 003D2730  7C 03 00 00 */	cmpw r3, r0
/* 80409174 003D2734  41 82 01 AC */	beq lbl_80409320
/* 80409178 003D2738  48 00 02 1C */	b lbl_80409394
lbl_8040917C:
/* 8040917C 003D273C  38 1F 54 53 */	addi r0, r31, 0x5453
/* 80409180 003D2740  7C 03 00 00 */	cmpw r3, r0
/* 80409184 003D2744  41 82 00 94 */	beq lbl_80409218
/* 80409188 003D2748  48 00 02 0C */	b lbl_80409394
lbl_8040918C:
/* 8040918C 003D274C  88 1B 00 04 */	lbz r0, 4(r27)
/* 80409190 003D2750  3A 60 00 00 */	li r19, 0
/* 80409194 003D2754  C3 F4 00 10 */	lfs f31, 0x10(r20)
/* 80409198 003D2758  2C 00 00 00 */	cmpwi r0, 0
/* 8040919C 003D275C  40 81 01 F8 */	ble lbl_80409394
/* 804091A0 003D2760  48 00 00 68 */	b lbl_80409208
lbl_804091A4:
/* 804091A4 003D2764  80 18 00 00 */	lwz r0, 0(r24)
/* 804091A8 003D2768  FC 20 F8 90 */	fmr f1, f31
/* 804091AC 003D276C  7E FB 02 14 */	add r23, r27, r0
/* 804091B0 003D2770  80 17 00 08 */	lwz r0, 8(r23)
/* 804091B4 003D2774  A0 97 00 04 */	lhz r4, 4(r23)
/* 804091B8 003D2778  7C 77 02 14 */	add r3, r23, r0
/* 804091BC 003D277C  4B FF F6 49 */	bl func_80408804
/* 804091C0 003D2780  EC 01 F0 2A */	fadds f0, f1, f30
/* 804091C4 003D2784  F0 01 D0 08 */	psq_st f0, 8(r1), 1, qr5
/* 804091C8 003D2788  38 C0 FC 00 */	li r6, -1024
/* 804091CC 003D278C  A8 01 00 08 */	lha r0, 8(r1)
/* 804091D0 003D2790  2C 00 FC 00 */	cmpwi r0, -1024
/* 804091D4 003D2794  41 80 00 08 */	blt lbl_804091DC
/* 804091D8 003D2798  7C 06 03 78 */	mr r6, r0
lbl_804091DC:
/* 804091DC 003D279C  7C C0 07 34 */	extsh r0, r6
/* 804091E0 003D27A0  88 97 00 01 */	lbz r4, 1(r23)
/* 804091E4 003D27A4  2C 00 03 FF */	cmpwi r0, 0x3ff
/* 804091E8 003D27A8  7E A3 AB 78 */	mr r3, r21
/* 804091EC 003D27AC  38 A0 03 FF */	li r5, 0x3ff
/* 804091F0 003D27B0  41 81 00 08 */	bgt lbl_804091F8
/* 804091F4 003D27B4  7C C5 33 78 */	mr r5, r6
lbl_804091F8:
/* 804091F8 003D27B8  7C A5 07 34 */	extsh r5, r5
/* 804091FC 003D27BC  4B FF DE 81 */	bl func_8040707C
/* 80409200 003D27C0  3B 18 00 04 */	addi r24, r24, 4
/* 80409204 003D27C4  3A 73 00 01 */	addi r19, r19, 1
lbl_80409208:
/* 80409208 003D27C8  88 1B 00 04 */	lbz r0, 4(r27)
/* 8040920C 003D27CC  7C 13 00 00 */	cmpw r19, r0
/* 80409210 003D27D0  41 80 FF 94 */	blt lbl_804091A4
/* 80409214 003D27D4  48 00 01 80 */	b lbl_80409394
lbl_80409218:
/* 80409218 003D27D8  C3 B4 00 10 */	lfs f29, 0x10(r20)
/* 8040921C 003D27DC  3B A0 00 00 */	li r29, 0
/* 80409220 003D27E0  48 00 00 60 */	b lbl_80409280
lbl_80409224:
/* 80409224 003D27E4  80 78 00 00 */	lwz r3, 0(r24)
/* 80409228 003D27E8  80 15 00 38 */	lwz r0, 0x38(r21)
/* 8040922C 003D27EC  7E FB 1A 14 */	add r23, r27, r3
/* 80409230 003D27F0  7C 7B 18 AE */	lbzx r3, r27, r3
/* 80409234 003D27F4  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80409238 003D27F8  7C 03 00 40 */	cmplw r3, r0
/* 8040923C 003D27FC  40 80 00 3C */	bge lbl_80409278
/* 80409240 003D2800  80 17 00 08 */	lwz r0, 8(r23)
/* 80409244 003D2804  FC 20 E8 90 */	fmr f1, f29
/* 80409248 003D2808  A0 97 00 04 */	lhz r4, 4(r23)
/* 8040924C 003D280C  7C 77 02 14 */	add r3, r23, r0
/* 80409250 003D2810  4B FF F5 B5 */	bl func_80408804
/* 80409254 003D2814  FF E0 08 90 */	fmr f31, f1
/* 80409258 003D2818  8A 77 00 01 */	lbz r19, 1(r23)
/* 8040925C 003D281C  8A F7 00 00 */	lbz r23, 0(r23)
/* 80409260 003D2820  7E A3 AB 78 */	mr r3, r21
/* 80409264 003D2824  4B FF D8 65 */	bl func_80406AC8
/* 80409268 003D2828  1C 97 00 14 */	mulli r4, r23, 0x14
/* 8040926C 003D282C  56 60 10 3A */	slwi r0, r19, 2
/* 80409270 003D2830  7C 63 22 14 */	add r3, r3, r4
/* 80409274 003D2834  7F E3 05 2E */	stfsx f31, r3, r0
lbl_80409278:
/* 80409278 003D2838  3B 18 00 04 */	addi r24, r24, 4
/* 8040927C 003D283C  3B BD 00 01 */	addi r29, r29, 1
lbl_80409280:
/* 80409280 003D2840  88 1B 00 04 */	lbz r0, 4(r27)
/* 80409284 003D2844  7C 1D 00 00 */	cmpw r29, r0
/* 80409288 003D2848  41 80 FF 9C */	blt lbl_80409224
/* 8040928C 003D284C  48 00 01 08 */	b lbl_80409394
lbl_80409290:
/* 80409290 003D2850  82 F4 00 14 */	lwz r23, 0x14(r20)
/* 80409294 003D2854  2C 17 00 00 */	cmpwi r23, 0
/* 80409298 003D2858  41 82 00 FC */	beq lbl_80409394
/* 8040929C 003D285C  C3 B4 00 10 */	lfs f29, 0x10(r20)
/* 804092A0 003D2860  3B A0 00 00 */	li r29, 0
/* 804092A4 003D2864  48 00 00 6C */	b lbl_80409310
lbl_804092A8:
/* 804092A8 003D2868  80 78 00 00 */	lwz r3, 0(r24)
/* 804092AC 003D286C  80 15 00 3C */	lwz r0, 0x3c(r21)
/* 804092B0 003D2870  7F 5B 1A 14 */	add r26, r27, r3
/* 804092B4 003D2874  7C 7B 18 AE */	lbzx r3, r27, r3
/* 804092B8 003D2878  54 00 27 3E */	srwi r0, r0, 0x1c
/* 804092BC 003D287C  7C 03 00 40 */	cmplw r3, r0
/* 804092C0 003D2880  40 80 00 48 */	bge lbl_80409308
/* 804092C4 003D2884  80 1A 00 08 */	lwz r0, 8(r26)
/* 804092C8 003D2888  FC 20 E8 90 */	fmr f1, f29
/* 804092CC 003D288C  A0 9A 00 04 */	lhz r4, 4(r26)
/* 804092D0 003D2890  7C 7A 02 14 */	add r3, r26, r0
/* 804092D4 003D2894  4B FF F4 49 */	bl func_8040871C
/* 804092D8 003D2898  54 73 13 BA */	rlwinm r19, r3, 2, 0xe, 0x1d
/* 804092DC 003D289C  7C 17 98 2E */	lwzx r0, r23, r19
/* 804092E0 003D28A0  2C 00 00 00 */	cmpwi r0, 0
/* 804092E4 003D28A4  41 82 00 24 */	beq lbl_80409308
/* 804092E8 003D28A8  8B 5A 00 00 */	lbz r26, 0(r26)
/* 804092EC 003D28AC  7E A3 AB 78 */	mr r3, r21
/* 804092F0 003D28B0  4B FF D7 B9 */	bl func_80406AA8
/* 804092F4 003D28B4  1C 1A 00 1C */	mulli r0, r26, 0x1c
/* 804092F8 003D28B8  7C 97 98 2E */	lwzx r4, r23, r19
/* 804092FC 003D28BC  38 A0 00 00 */	li r5, 0
/* 80409300 003D28C0  7C 63 02 14 */	add r3, r3, r0
/* 80409304 003D28C4  4B FF F2 95 */	bl func_80408598
lbl_80409308:
/* 80409308 003D28C8  3B 18 00 04 */	addi r24, r24, 4
/* 8040930C 003D28CC  3B BD 00 01 */	addi r29, r29, 1
lbl_80409310:
/* 80409310 003D28D0  88 1B 00 04 */	lbz r0, 4(r27)
/* 80409314 003D28D4  7C 1D 00 00 */	cmpw r29, r0
/* 80409318 003D28D8  41 80 FF 90 */	blt lbl_804092A8
/* 8040931C 003D28DC  48 00 00 78 */	b lbl_80409394
lbl_80409320:
/* 80409320 003D28E0  C3 B4 00 10 */	lfs f29, 0x10(r20)
/* 80409324 003D28E4  3B A0 00 00 */	li r29, 0
/* 80409328 003D28E8  48 00 00 60 */	b lbl_80409388
lbl_8040932C:
/* 8040932C 003D28EC  80 78 00 00 */	lwz r3, 0(r24)
/* 80409330 003D28F0  80 15 00 38 */	lwz r0, 0x38(r21)
/* 80409334 003D28F4  7E FB 1A 14 */	add r23, r27, r3
/* 80409338 003D28F8  7C 7B 18 AE */	lbzx r3, r27, r3
/* 8040933C 003D28FC  54 00 77 BE */	rlwinm r0, r0, 0xe, 0x1e, 0x1f
/* 80409340 003D2900  7C 03 00 40 */	cmplw r3, r0
/* 80409344 003D2904  40 80 00 3C */	bge lbl_80409380
/* 80409348 003D2908  80 17 00 08 */	lwz r0, 8(r23)
/* 8040934C 003D290C  FC 20 E8 90 */	fmr f1, f29
/* 80409350 003D2910  A0 97 00 04 */	lhz r4, 4(r23)
/* 80409354 003D2914  7C 77 02 14 */	add r3, r23, r0
/* 80409358 003D2918  4B FF F4 AD */	bl func_80408804
/* 8040935C 003D291C  FF E0 08 90 */	fmr f31, f1
/* 80409360 003D2920  8A 77 00 01 */	lbz r19, 1(r23)
/* 80409364 003D2924  8A F7 00 00 */	lbz r23, 0(r23)
/* 80409368 003D2928  7E A3 AB 78 */	mr r3, r21
/* 8040936C 003D292C  4B FF D9 19 */	bl func_80406C84
/* 80409370 003D2930  1C 97 00 14 */	mulli r4, r23, 0x14
/* 80409374 003D2934  56 60 10 3A */	slwi r0, r19, 2
/* 80409378 003D2938  7C 63 22 14 */	add r3, r3, r4
/* 8040937C 003D293C  7F E3 05 2E */	stfsx f31, r3, r0
lbl_80409380:
/* 80409380 003D2940  3B 18 00 04 */	addi r24, r24, 4
/* 80409384 003D2944  3B BD 00 01 */	addi r29, r29, 1
lbl_80409388:
/* 80409388 003D2948  88 1B 00 04 */	lbz r0, 4(r27)
/* 8040938C 003D294C  7C 1D 00 00 */	cmpw r29, r0
/* 80409390 003D2950  41 80 FF 9C */	blt lbl_8040932C
lbl_80409394:
/* 80409394 003D2954  3B 39 00 04 */	addi r25, r25, 4
/* 80409398 003D2958  3A D6 00 01 */	addi r22, r22, 1
lbl_8040939C:
/* 8040939C 003D295C  88 1C 00 14 */	lbz r0, 0x14(r28)
/* 804093A0 003D2960  7C 16 00 00 */	cmpw r22, r0
/* 804093A4 003D2964  41 80 FD 9C */	blt lbl_80409140
/* 804093A8 003D2968  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 804093AC 003D296C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 804093B0 003D2970  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 804093B4 003D2974  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 804093B8 003D2978  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 804093BC 003D297C  39 61 00 50 */	addi r11, r1, 0x50
/* 804093C0 003D2980  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 804093C4 003D2984  4B EB 0D BD */	bl _restgpr_19
/* 804093C8 003D2988  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804093CC 003D298C  7C 08 03 A6 */	mtlr r0
/* 804093D0 003D2990  38 21 00 80 */	addi r1, r1, 0x80
/* 804093D4 003D2994  4E 80 00 20 */	blr
