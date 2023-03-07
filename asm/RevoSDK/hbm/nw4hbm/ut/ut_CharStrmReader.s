.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn ReadNextCharUTF8__Q36nw4hbm2ut14CharStrmReaderFv, global
/* 80336970 002FFF30  80 E3 00 00 */	lwz r7, 0(r3)
/* 80336974 002FFF34  88 C7 00 00 */	lbz r6, 0(r7)
/* 80336978 002FFF38  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 8033697C 002FFF3C  40 82 00 14 */	bne .L_80336990
/* 80336980 002FFF40  80 83 00 00 */	lwz r4, 0(r3)
/* 80336984 002FFF44  38 04 00 01 */	addi r0, r4, 1
/* 80336988 002FFF48  90 03 00 00 */	stw r0, 0(r3)
/* 8033698C 002FFF4C  48 00 00 54 */	b .L_803369E0
.L_80336990:
/* 80336990 002FFF50  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 80336994 002FFF54  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 80336998 002FFF58  40 82 00 24 */	bne .L_803369BC
/* 8033699C 002FFF5C  88 07 00 01 */	lbz r0, 1(r7)
/* 803369A0 002FFF60  80 83 00 00 */	lwz r4, 0(r3)
/* 803369A4 002FFF64  54 05 06 BE */	clrlwi r5, r0, 0x1a
/* 803369A8 002FFF68  50 C5 35 72 */	rlwimi r5, r6, 6, 0x15, 0x19
/* 803369AC 002FFF6C  38 04 00 02 */	addi r0, r4, 2
/* 803369B0 002FFF70  90 03 00 00 */	stw r0, 0(r3)
/* 803369B4 002FFF74  7C A6 2B 78 */	mr r6, r5
/* 803369B8 002FFF78  48 00 00 28 */	b .L_803369E0
.L_803369BC:
/* 803369BC 002FFF7C  80 83 00 00 */	lwz r4, 0(r3)
/* 803369C0 002FFF80  54 C5 63 E6 */	rlwinm r5, r6, 0xc, 0xf, 0x13
/* 803369C4 002FFF84  88 C7 00 01 */	lbz r6, 1(r7)
/* 803369C8 002FFF88  88 E7 00 02 */	lbz r7, 2(r7)
/* 803369CC 002FFF8C  38 04 00 03 */	addi r0, r4, 3
/* 803369D0 002FFF90  50 C5 35 32 */	rlwimi r5, r6, 6, 0x14, 0x19
/* 803369D4 002FFF94  50 E5 06 BE */	rlwimi r5, r7, 0, 0x1a, 0x1f
/* 803369D8 002FFF98  90 03 00 00 */	stw r0, 0(r3)
/* 803369DC 002FFF9C  54 A6 04 3E */	clrlwi r6, r5, 0x10
.L_803369E0:
/* 803369E0 002FFFA0  7C C3 33 78 */	mr r3, r6
/* 803369E4 002FFFA4  4E 80 00 20 */	blr
.endfn ReadNextCharUTF8__Q36nw4hbm2ut14CharStrmReaderFv


.balign 16, 0
.fn ReadNextCharUTF16__Q36nw4hbm2ut14CharStrmReaderFv, global
/* 803369F0 002FFFB0  80 A3 00 00 */	lwz r5, 0(r3)
/* 803369F4 002FFFB4  7C 66 1B 78 */	mr r6, r3
/* 803369F8 002FFFB8  80 83 00 00 */	lwz r4, 0(r3)
/* 803369FC 002FFFBC  A0 65 00 00 */	lhz r3, 0(r5)
/* 80336A00 002FFFC0  38 04 00 02 */	addi r0, r4, 2
/* 80336A04 002FFFC4  90 06 00 00 */	stw r0, 0(r6)
/* 80336A08 002FFFC8  4E 80 00 20 */	blr
.endfn ReadNextCharUTF16__Q36nw4hbm2ut14CharStrmReaderFv


.balign 16, 0
.fn ReadNextCharCP1252__Q36nw4hbm2ut14CharStrmReaderFv, global
/* 80336A10 002FFFD0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80336A14 002FFFD4  7C 66 1B 78 */	mr r6, r3
/* 80336A18 002FFFD8  80 83 00 00 */	lwz r4, 0(r3)
/* 80336A1C 002FFFDC  88 65 00 00 */	lbz r3, 0(r5)
/* 80336A20 002FFFE0  38 04 00 01 */	addi r0, r4, 1
/* 80336A24 002FFFE4  90 06 00 00 */	stw r0, 0(r6)
/* 80336A28 002FFFE8  4E 80 00 20 */	blr
.endfn ReadNextCharCP1252__Q36nw4hbm2ut14CharStrmReaderFv

.balign 16, 0
.fn ReadNextCharSJIS__Q36nw4hbm2ut14CharStrmReaderFv, global
/* 80336A30 002FFFF0  80 83 00 00 */	lwz r4, 0(r3)
/* 80336A34 002FFFF4  38 00 00 00 */	li r0, 0
/* 80336A38 002FFFF8  88 A4 00 00 */	lbz r5, 0(r4)
/* 80336A3C 002FFFFC  28 05 00 81 */	cmplwi r5, 0x81
/* 80336A40 00300000  41 80 00 0C */	blt .L_80336A4C
/* 80336A44 00300004  28 05 00 A0 */	cmplwi r5, 0xa0
/* 80336A48 00300008  41 80 00 0C */	blt .L_80336A54
.L_80336A4C:
/* 80336A4C 0030000C  28 05 00 E0 */	cmplwi r5, 0xe0
/* 80336A50 00300010  41 80 00 08 */	blt .L_80336A58
.L_80336A54:
/* 80336A54 00300014  38 00 00 01 */	li r0, 1
.L_80336A58:
/* 80336A58 00300018  2C 00 00 00 */	cmpwi r0, 0
/* 80336A5C 0030001C  41 82 00 1C */	beq .L_80336A78
/* 80336A60 00300020  88 C4 00 01 */	lbz r6, 1(r4)
/* 80336A64 00300024  50 A6 44 2E */	rlwimi r6, r5, 8, 0x10, 0x17
/* 80336A68 00300028  80 83 00 00 */	lwz r4, 0(r3)
/* 80336A6C 0030002C  38 04 00 02 */	addi r0, r4, 2
/* 80336A70 00300030  90 03 00 00 */	stw r0, 0(r3)
/* 80336A74 00300034  48 00 00 14 */	b .L_80336A88
.L_80336A78:
/* 80336A78 00300038  80 83 00 00 */	lwz r4, 0(r3)
/* 80336A7C 0030003C  7C A6 2B 78 */	mr r6, r5
/* 80336A80 00300040  38 04 00 01 */	addi r0, r4, 1
/* 80336A84 00300044  90 03 00 00 */	stw r0, 0(r3)
.L_80336A88:
/* 80336A88 00300048  7C C3 33 78 */	mr r3, r6
/* 80336A8C 0030004C  4E 80 00 20 */	blr
.endfn ReadNextCharSJIS__Q36nw4hbm2ut14CharStrmReaderFv