.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80296898
func_80296898:
/* 80296898 0025FE58  38 00 00 00 */	li r0, 0
/* 8029689C 0025FE5C  98 03 00 0C */	stb r0, 0xc(r3)
/* 802968A0 0025FE60  98 03 00 0D */	stb r0, 0xd(r3)
/* 802968A4 0025FE64  4E 80 00 20 */	blr 

.global func_802968A8
func_802968A8:
/* 802968A8 0025FE68  38 00 00 00 */	li r0, 0
/* 802968AC 0025FE6C  90 03 00 00 */	stw r0, 0(r3)
/* 802968B0 0025FE70  98 03 00 04 */	stb r0, 4(r3)
/* 802968B4 0025FE74  4E 80 00 20 */	blr 

.global func_802968B8
func_802968B8:
/* 802968B8 0025FE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802968BC 0025FE7C  7C 08 02 A6 */	mflr r0
/* 802968C0 0025FE80  2C 04 00 00 */	cmpwi r4, 0
/* 802968C4 0025FE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802968C8 0025FE88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802968CC 0025FE8C  93 C1 00 08 */	stw r30, 8(r1)
/* 802968D0 0025FE90  7C 7E 1B 78 */	mr r30, r3
/* 802968D4 0025FE94  90 83 00 00 */	stw r4, 0(r3)
/* 802968D8 0025FE98  98 A3 00 04 */	stb r5, 4(r3)
/* 802968DC 0025FE9C  41 82 00 30 */	beq .L_8029690C
/* 802968E0 0025FEA0  3B E0 00 00 */	li r31, 0
/* 802968E4 0025FEA4  48 00 00 18 */	b .L_802968FC
.L_802968E8:
/* 802968E8 0025FEA8  81 83 00 08 */	lwz r12, 8(r3)
/* 802968EC 0025FEAC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802968F0 0025FEB0  7D 89 03 A6 */	mtctr r12
/* 802968F4 0025FEB4  4E 80 04 21 */	bctrl 
/* 802968F8 0025FEB8  3B FF 00 04 */	addi r31, r31, 4
.L_802968FC:
/* 802968FC 0025FEBC  80 7E 00 00 */	lwz r3, 0(r30)
/* 80296900 0025FEC0  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80296904 0025FEC4  2C 03 00 00 */	cmpwi r3, 0
/* 80296908 0025FEC8  40 82 FF E0 */	bne .L_802968E8
.L_8029690C:
/* 8029690C 0025FECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296910 0025FED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296914 0025FED4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80296918 0025FED8  7C 08 03 A6 */	mtlr r0
/* 8029691C 0025FEDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80296920 0025FEE0  4E 80 00 20 */	blr 

.global func_80296924
func_80296924:
/* 80296924 0025FEE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80296928 0025FEE8  7C 08 02 A6 */	mflr r0
/* 8029692C 0025FEEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80296930 0025FEF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80296934 0025FEF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80296938 0025FEF8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8029693C 0025FEFC  7C 7D 1B 78 */	mr r29, r3
/* 80296940 0025FF00  80 03 00 00 */	lwz r0, 0(r3)
/* 80296944 0025FF04  2C 00 00 00 */	cmpwi r0, 0
/* 80296948 0025FF08  41 82 00 A0 */	beq .L_802969E8
/* 8029694C 0025FF0C  48 02 13 19 */	bl func_802B7C64
/* 80296950 0025FF10  2C 03 00 00 */	cmpwi r3, 0
/* 80296954 0025FF14  40 82 00 94 */	bne .L_802969E8
/* 80296958 0025FF18  3B C0 00 01 */	li r30, 1
/* 8029695C 0025FF1C  3B E0 00 00 */	li r31, 0
/* 80296960 0025FF20  48 00 00 68 */	b .L_802969C8
.L_80296964:
/* 80296964 0025FF24  80 63 00 00 */	lwz r3, 0(r3)
/* 80296968 0025FF28  4B E0 66 25 */	bl func_8009CF8C
/* 8029696C 0025FF2C  7C 03 00 D0 */	neg r0, r3
/* 80296970 0025FF30  7C 00 1B 78 */	or r0, r0, r3
/* 80296974 0025FF34  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80296978 0025FF38  40 82 00 4C */	bne .L_802969C4
/* 8029697C 0025FF3C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80296980 0025FF40  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80296984 0025FF44  81 83 00 08 */	lwz r12, 8(r3)
/* 80296988 0025FF48  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8029698C 0025FF4C  7D 89 03 A6 */	mtctr r12
/* 80296990 0025FF50  4E 80 04 21 */	bctrl 
/* 80296994 0025FF54  2C 03 00 00 */	cmpwi r3, 0
/* 80296998 0025FF58  41 82 00 1C */	beq .L_802969B4
/* 8029699C 0025FF5C  80 7D 00 00 */	lwz r3, 0(r29)
/* 802969A0 0025FF60  7C 63 F8 2E */	lwzx r3, r3, r31
/* 802969A4 0025FF64  81 83 00 08 */	lwz r12, 8(r3)
/* 802969A8 0025FF68  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802969AC 0025FF6C  7D 89 03 A6 */	mtctr r12
/* 802969B0 0025FF70  4E 80 04 21 */	bctrl 
.L_802969B4:
/* 802969B4 0025FF74  88 1D 00 04 */	lbz r0, 4(r29)
/* 802969B8 0025FF78  2C 00 00 00 */	cmpwi r0, 0
/* 802969BC 0025FF7C  41 82 00 2C */	beq .L_802969E8
/* 802969C0 0025FF80  3B C0 00 00 */	li r30, 0
.L_802969C4:
/* 802969C4 0025FF84  3B FF 00 04 */	addi r31, r31, 4
.L_802969C8:
/* 802969C8 0025FF88  80 7D 00 00 */	lwz r3, 0(r29)
/* 802969CC 0025FF8C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 802969D0 0025FF90  2C 03 00 00 */	cmpwi r3, 0
/* 802969D4 0025FF94  40 82 FF 90 */	bne .L_80296964
/* 802969D8 0025FF98  2C 1E 00 00 */	cmpwi r30, 0
/* 802969DC 0025FF9C  41 82 00 0C */	beq .L_802969E8
/* 802969E0 0025FFA0  38 00 00 00 */	li r0, 0
/* 802969E4 0025FFA4  90 1D 00 00 */	stw r0, 0(r29)
.L_802969E8:
/* 802969E8 0025FFA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802969EC 0025FFAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802969F0 0025FFB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802969F4 0025FFB4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802969F8 0025FFB8  7C 08 03 A6 */	mtlr r0
/* 802969FC 0025FFBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80296A00 0025FFC0  4E 80 00 20 */	blr

.global func_80296A04
func_80296A04:
/* 80296A04 0025FFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296A08 0025FFC8  7C 08 02 A6 */	mflr r0
/* 80296A0C 0025FFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296A10 0025FFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296A14 0025FFD4  7C 7F 1B 78 */	mr r31, r3
/* 80296A18 0025FFD8  48 00 00 1D */	bl func_80296A34
/* 80296A1C 0025FFDC  7F E3 FB 78 */	mr r3, r31
/* 80296A20 0025FFE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296A24 0025FFE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296A28 0025FFE8  7C 08 03 A6 */	mtlr r0
/* 80296A2C 0025FFEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80296A30 0025FFF0  4E 80 00 20 */	blr 

.global func_80296A34
func_80296A34:
/* 80296A34 0025FFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296A38 0025FFF8  7C 08 02 A6 */	mflr r0
/* 80296A3C 0025FFFC  38 80 00 00 */	li r4, 0
/* 80296A40 00260000  38 A0 00 40 */	li r5, 0x40
/* 80296A44 00260004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296A48 00260008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296A4C 0026000C  7C 7F 1B 78 */	mr r31, r3
/* 80296A50 00260010  4B D6 D9 01 */	bl memset
/* 80296A54 00260014  38 E0 00 01 */	li r7, 1
/* 80296A58 00260018  38 80 00 00 */	li r4, 0
/* 80296A5C 0026001C  38 C0 00 02 */	li r6, 2
/* 80296A60 00260020  38 60 00 03 */	li r3, 3
/* 80296A64 00260024  38 A0 00 0A */	li r5, 0xa
/* 80296A68 00260028  38 00 00 05 */	li r0, 5
/* 80296A6C 0026002C  98 FF 00 00 */	stb r7, 0(r31)
/* 80296A70 00260030  98 FF 00 01 */	stb r7, 1(r31)
/* 80296A74 00260034  98 DF 00 02 */	stb r6, 2(r31)
/* 80296A78 00260038  98 DF 00 03 */	stb r6, 3(r31)
/* 80296A7C 0026003C  98 DF 00 04 */	stb r6, 4(r31)
/* 80296A80 00260040  98 FF 00 05 */	stb r7, 5(r31)
/* 80296A84 00260044  98 FF 00 06 */	stb r7, 6(r31)
/* 80296A88 00260048  98 FF 00 07 */	stb r7, 7(r31)
/* 80296A8C 0026004C  98 BF 00 0F */	stb r5, 0xf(r31)
/* 80296A90 00260050  98 FF 00 10 */	stb r7, 0x10(r31)
/* 80296A94 00260054  98 9F 00 11 */	stb r4, 0x11(r31)
/* 80296A98 00260058  98 FF 00 20 */	stb r7, 0x20(r31)
/* 80296A9C 0026005C  98 FF 00 21 */	stb r7, 0x21(r31)
/* 80296AA0 00260060  98 9F 00 22 */	stb r4, 0x22(r31)
/* 80296AA4 00260064  98 9F 00 23 */	stb r4, 0x23(r31)
/* 80296AA8 00260068  98 FF 00 24 */	stb r7, 0x24(r31)
/* 80296AAC 0026006C  98 FF 00 25 */	stb r7, 0x25(r31)
/* 80296AB0 00260070  98 FF 00 30 */	stb r7, 0x30(r31)
/* 80296AB4 00260074  98 FF 00 32 */	stb r7, 0x32(r31)
/* 80296AB8 00260078  98 9F 00 31 */	stb r4, 0x31(r31)
/* 80296ABC 0026007C  98 7F 00 38 */	stb r3, 0x38(r31)
/* 80296AC0 00260080  98 7F 00 39 */	stb r3, 0x39(r31)
/* 80296AC4 00260084  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 80296AC8 00260088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296ACC 0026008C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296AD0 00260090  7C 08 03 A6 */	mtlr r0
/* 80296AD4 00260094  38 21 00 10 */	addi r1, r1, 0x10
/* 80296AD8 00260098  4E 80 00 20 */	blr 

.global func_80296ADC
func_80296ADC:
/* 80296ADC 0026009C  3C 60 80 58 */	lis r3, lbl_8057A9C8@ha
/* 80296AE0 002600A0  38 63 A9 C8 */	addi r3, r3, lbl_8057A9C8@l
/* 80296AE4 002600A4  4E 80 00 20 */	blr 

.global func_80296AE8
func_80296AE8:
/* 80296AE8 002600A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296AEC 002600AC  7C 08 02 A6 */	mflr r0
/* 80296AF0 002600B0  7C 64 1B 78 */	mr r4, r3
/* 80296AF4 002600B4  38 A0 00 40 */	li r5, 0x40
/* 80296AF8 002600B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296AFC 002600BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296B00 002600C0  3F E0 80 58 */	lis r31, lbl_8057A9C8@ha
/* 80296B04 002600C4  38 7F A9 C8 */	addi r3, r31, lbl_8057A9C8@l
/* 80296B08 002600C8  4B D6 D4 F9 */	bl memcpy
/* 80296B0C 002600CC  38 7F A9 C8 */	addi r3, r31, lbl_8057A9C8@l
/* 80296B10 002600D0  88 03 00 0F */	lbz r0, 0xf(r3)
/* 80296B14 002600D4  2C 00 00 00 */	cmpwi r0, 0
/* 80296B18 002600D8  40 82 00 0C */	bne .L_80296B24
/* 80296B1C 002600DC  38 00 00 0A */	li r0, 0xa
/* 80296B20 002600E0  98 03 00 0F */	stb r0, 0xf(r3)
.L_80296B24:
/* 80296B24 002600E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296B28 002600E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296B2C 002600EC  7C 08 03 A6 */	mtlr r0
/* 80296B30 002600F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80296B34 002600F4  4E 80 00 20 */	blr

.global sinit_80296B38
sinit_80296B38:
/* 80296B38 002600F8  3C 60 80 58 */	lis r3, lbl_8057A9C8@ha
/* 80296B3C 002600FC  38 63 A9 C8 */	addi r3, r3, lbl_8057A9C8@l
/* 80296B40 00260100  4B FF FE F4 */	b func_80296A34

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_80296B38

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_80019BF8
lbl_80019BF8:
	.4byte 0x10080000
	.4byte 0

.global lbl_80019C00
lbl_80019C00:
	.4byte 0x18080000
	.4byte 0

.global lbl_80019C08
lbl_80019C08:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019C10
lbl_80019C10:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019C18
lbl_80019C18:
	.4byte 0x08080000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_802968B8
	.4byte 0x0000006C
	.4byte lbl_80019BF8
	.4byte func_80296924
	.4byte 0x000000E0
	.4byte lbl_80019C00
	.4byte func_80296A04
	.4byte 0x00000030
	.4byte lbl_80019C08
	.4byte func_80296A34
	.4byte 0x000000A8
	.4byte lbl_80019C10
	.4byte func_80296AE8
	.4byte 0x00000050
	.4byte lbl_80019C18