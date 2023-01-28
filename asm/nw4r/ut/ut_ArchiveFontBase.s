.include "macros.inc"
.file "nw4r/ut/ut_ArchiveFontBase.o"

# 0x8042CC2C - 0x8042DAE0
.text
.balign 4

# nw4r::ut::detail::ArchiveFontBase::ArchiveFontBase()
.fn __ct__Q44nw4r2ut6detail15ArchiveFontBaseFv, global
/* 8042CC2C 003F61EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042CC30 003F61F0  7C 08 02 A6 */	mflr r0
/* 8042CC34 003F61F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042CC38 003F61F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042CC3C 003F61FC  7C 7F 1B 78 */	mr r31, r3
/* 8042CC40 003F6200  4B FF F4 35 */	bl __ct__Q44nw4r2ut6detail11ResFontBaseFv
/* 8042CC44 003F6204  3C 80 80 57 */	lis r4, lbl_8056E868@ha
/* 8042CC48 003F6208  38 00 00 00 */	li r0, 0x0
/* 8042CC4C 003F620C  38 84 E8 68 */	addi r4, r4, lbl_8056E868@l
/* 8042CC50 003F6210  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8042CC54 003F6214  7F E3 FB 78 */	mr r3, r31
/* 8042CC58 003F6218  90 9F 00 00 */	stw r4, 0x0(r31)
/* 8042CC5C 003F621C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042CC60 003F6220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042CC64 003F6224  7C 08 03 A6 */	mtlr r0
/* 8042CC68 003F6228  38 21 00 10 */	addi r1, r1, 0x10
/* 8042CC6C 003F622C  4E 80 00 20 */	blr
.endfn __ct__Q44nw4r2ut6detail15ArchiveFontBaseFv

# nw4r::ut::detail::ArchiveFontBase::~ArchiveFontBase()
.fn __dt__Q44nw4r2ut6detail15ArchiveFontBaseFv, global
/* 8042CC70 003F6230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042CC74 003F6234  7C 08 02 A6 */	mflr r0
/* 8042CC78 003F6238  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042CC7C 003F623C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042CC80 003F6240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042CC84 003F6244  7C 9F 23 78 */	mr r31, r4
/* 8042CC88 003F6248  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8042CC8C 003F624C  7C 7E 1B 78 */	mr r30, r3
/* 8042CC90 003F6250  41 82 00 1C */	beq .L_8042CCAC
/* 8042CC94 003F6254  38 80 00 00 */	li r4, 0x0
/* 8042CC98 003F6258  4B FF F4 31 */	bl __dt__Q44nw4r2ut6detail11ResFontBaseFv
/* 8042CC9C 003F625C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8042CCA0 003F6260  40 81 00 0C */	ble .L_8042CCAC
/* 8042CCA4 003F6264  7F C3 F3 78 */	mr r3, r30
/* 8042CCA8 003F6268  48 00 7F 85 */	bl __dl__FPv
.L_8042CCAC:
/* 8042CCAC 003F626C  7F C3 F3 78 */	mr r3, r30
/* 8042CCB0 003F6270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042CCB4 003F6274  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8042CCB8 003F6278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042CCBC 003F627C  7C 08 03 A6 */	mtlr r0
/* 8042CCC0 003F6280  38 21 00 10 */	addi r1, r1, 0x10
/* 8042CCC4 003F6284  4E 80 00 20 */	blr
.endfn __dt__Q44nw4r2ut6detail15ArchiveFontBaseFv

# nw4r::ut::detail::ArchiveFontBase::GetCharWidths(unsigned short) const
.fn GetCharWidths__Q44nw4r2ut6detail15ArchiveFontBaseCFUs, global
/* 8042CCC8 003F6288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042CCCC 003F628C  7C 08 02 A6 */	mflr r0
/* 8042CCD0 003F6290  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042CCD4 003F6294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042CCD8 003F6298  7C 7F 1B 78 */	mr r31, r3
/* 8042CCDC 003F629C  4B FF F8 D5 */	bl GetGlyphIndex__Q44nw4r2ut6detail11ResFontBaseCFUs
/* 8042CCE0 003F62A0  81 3F 00 14 */	lwz r9, 0x14(r31)
/* 8042CCE4 003F62A4  3C 80 00 01 */	lis r4, 0x1
/* 8042CCE8 003F62A8  38 04 FF FF */	addi r0, r4, -0x1
/* 8042CCEC 003F62AC  54 66 04 3E */	clrlwi r6, r3, 16
/* 8042CCF0 003F62B0  81 09 00 08 */	lwz r8, 0x8(r9)
/* 8042CCF4 003F62B4  7C 6A 1B 78 */	mr r10, r3
/* 8042CCF8 003F62B8  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 8042CCFC 003F62BC  A0 A8 00 0C */	lhz r5, 0xc(r8)
/* 8042CD00 003F62C0  A0 88 00 0E */	lhz r4, 0xe(r8)
/* 8042CD04 003F62C4  7C 85 21 D6 */	mullw r4, r5, r4
/* 8042CD08 003F62C8  7C 86 23 D6 */	divw r4, r6, r4
/* 8042CD0C 003F62CC  54 84 08 3C */	slwi r4, r4, 1
/* 8042CD10 003F62D0  7C 87 22 2E */	lhzx r4, r7, r4
/* 8042CD14 003F62D4  28 04 FF FF */	cmplwi r4, 0xffff
/* 8042CD18 003F62D8  41 82 00 0C */	beq .L_8042CD24
/* 8042CD1C 003F62DC  7C 04 18 50 */	subf r0, r4, r3
/* 8042CD20 003F62E0  54 00 04 3E */	clrlwi r0, r0, 16
.L_8042CD24:
/* 8042CD24 003F62E4  54 00 04 3E */	clrlwi r0, r0, 16
/* 8042CD28 003F62E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8042CD2C 003F62EC  40 82 00 08 */	bne .L_8042CD34
/* 8042CD30 003F62F0  A1 49 00 02 */	lhz r10, 0x2(r9)
.L_8042CD34:
/* 8042CD34 003F62F4  7F E3 FB 78 */	mr r3, r31
/* 8042CD38 003F62F8  55 44 04 3E */	clrlwi r4, r10, 16
/* 8042CD3C 003F62FC  4B FF FA 95 */	bl GetCharWidthsFromIndex__Q44nw4r2ut6detail11ResFontBaseCFUs
/* 8042CD40 003F6300  A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8042CD44 003F6304  7C 64 1B 78 */	mr r4, r3
/* 8042CD48 003F6308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042CD4C 003F630C  54 03 80 1E */	slwi r3, r0, 16
/* 8042CD50 003F6310  88 04 00 02 */	lbz r0, 0x2(r4)
/* 8042CD54 003F6314  50 03 44 2E */	rlwimi r3, r0, 8, 16, 23
/* 8042CD58 003F6318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042CD5C 003F631C  7C 08 03 A6 */	mtlr r0
/* 8042CD60 003F6320  38 21 00 10 */	addi r1, r1, 0x10
/* 8042CD64 003F6324  4E 80 00 20 */	blr
.endfn GetCharWidths__Q44nw4r2ut6detail15ArchiveFontBaseCFUs

# nw4r::ut::detail::ArchiveFontBase::HasGlyph(unsigned short) const
.fn HasGlyph__Q44nw4r2ut6detail15ArchiveFontBaseCFUs, global
/* 8042CD68 003F6328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042CD6C 003F632C  7C 08 02 A6 */	mflr r0
/* 8042CD70 003F6330  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042CD74 003F6334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042CD78 003F6338  7C 7F 1B 78 */	mr r31, r3
/* 8042CD7C 003F633C  4B FF F8 E5 */	bl FindGlyphIndex__Q44nw4r2ut6detail11ResFontBaseCFUs
/* 8042CD80 003F6340  54 67 04 3E */	clrlwi r7, r3, 16
/* 8042CD84 003F6344  28 07 FF FF */	cmplwi r7, 0xffff
/* 8042CD88 003F6348  41 82 00 64 */	beq .L_8042CDEC
/* 8042CD8C 003F634C  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8042CD90 003F6350  3C 80 00 01 */	lis r4, 0x1
/* 8042CD94 003F6354  38 04 FF FF */	addi r0, r4, -0x1
/* 8042CD98 003F6358  80 DF 00 1C */	lwz r6, 0x1c(r31)
/* 8042CD9C 003F635C  80 85 00 08 */	lwz r4, 0x8(r5)
/* 8042CDA0 003F6360  A0 A4 00 0C */	lhz r5, 0xc(r4)
/* 8042CDA4 003F6364  A0 84 00 0E */	lhz r4, 0xe(r4)
/* 8042CDA8 003F6368  7C 85 21 D6 */	mullw r4, r5, r4
/* 8042CDAC 003F636C  7C 87 23 D6 */	divw r4, r7, r4
/* 8042CDB0 003F6370  54 84 08 3C */	slwi r4, r4, 1
/* 8042CDB4 003F6374  7C 86 22 2E */	lhzx r4, r6, r4
/* 8042CDB8 003F6378  28 04 FF FF */	cmplwi r4, 0xffff
/* 8042CDBC 003F637C  41 82 00 0C */	beq .L_8042CDC8
/* 8042CDC0 003F6380  7C 04 18 50 */	subf r0, r4, r3
/* 8042CDC4 003F6384  54 00 04 3E */	clrlwi r0, r0, 16
.L_8042CDC8:
/* 8042CDC8 003F6388  3C 60 00 01 */	lis r3, 0x1
/* 8042CDCC 003F638C  54 04 04 3E */	clrlwi r4, r0, 16
/* 8042CDD0 003F6390  38 03 FF FF */	addi r0, r3, -0x1
/* 8042CDD4 003F6394  54 00 04 3E */	clrlwi r0, r0, 16
/* 8042CDD8 003F6398  7C 64 00 50 */	subf r3, r4, r0
/* 8042CDDC 003F639C  7C 00 20 50 */	subf r0, r0, r4
/* 8042CDE0 003F63A0  7C 60 03 78 */	or r0, r3, r0
/* 8042CDE4 003F63A4  54 03 0F FE */	srwi r3, r0, 31
/* 8042CDE8 003F63A8  48 00 00 08 */	b .L_8042CDF0
.L_8042CDEC:
/* 8042CDEC 003F63AC  38 60 00 00 */	li r3, 0x0
.L_8042CDF0:
/* 8042CDF0 003F63B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042CDF4 003F63B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042CDF8 003F63B8  7C 08 03 A6 */	mtlr r0
/* 8042CDFC 003F63BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8042CE00 003F63C0  4E 80 00 20 */	blr
.endfn HasGlyph__Q44nw4r2ut6detail15ArchiveFontBaseCFUs

# nw4r::ut::detail::ArchiveFontBase::SetResourceBuffer(void*, nw4r::ut::FontInformation*, unsigned short*)
.fn SetResourceBuffer__Q44nw4r2ut6detail15ArchiveFontBaseFPvPQ34nw4r2ut15FontInformationPUs, global
/* 8042CE04 003F63C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042CE08 003F63C8  7C 08 02 A6 */	mflr r0
/* 8042CE0C 003F63CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042CE10 003F63D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042CE14 003F63D4  7C DF 33 78 */	mr r31, r6
/* 8042CE18 003F63D8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8042CE1C 003F63DC  7C 7E 1B 78 */	mr r30, r3
/* 8042CE20 003F63E0  4B FF F2 E9 */	bl SetResourceBuffer__Q44nw4r2ut6detail11ResFontBaseFPvPQ34nw4r2ut15FontInformation
/* 8042CE24 003F63E4  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 8042CE28 003F63E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042CE2C 003F63EC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8042CE30 003F63F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042CE34 003F63F4  7C 08 03 A6 */	mtlr r0
/* 8042CE38 003F63F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042CE3C 003F63FC  4E 80 00 20 */	blr
.endfn SetResourceBuffer__Q44nw4r2ut6detail15ArchiveFontBaseFPvPQ34nw4r2ut15FontInformationPUs

# nw4r::ut::detail::ArchiveFontBase::RemoveResourceBuffer()
.fn RemoveResourceBuffer__Q44nw4r2ut6detail15ArchiveFontBaseFv, global
/* 8042CE40 003F6400  38 00 00 00 */	li r0, 0x0
/* 8042CE44 003F6404  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8042CE48 003F6408  4B FF F2 CC */	b RemoveResourceBuffer__Q44nw4r2ut6detail11ResFontBaseFv
.endfn RemoveResourceBuffer__Q44nw4r2ut6detail15ArchiveFontBaseFv

# nw4r::ut::detail::ArchiveFontBase::AdjustIndex(unsigned short) const
.fn AdjustIndex__Q44nw4r2ut6detail15ArchiveFontBaseCFUs, global
/* 8042CE4C 003F640C  80 E3 00 14 */	lwz r7, 0x14(r3)
/* 8042CE50 003F6410  3C A0 00 01 */	lis r5, 0x1
/* 8042CE54 003F6414  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 8042CE58 003F6418  38 65 FF FF */	addi r3, r5, -0x1
/* 8042CE5C 003F641C  80 E7 00 08 */	lwz r7, 0x8(r7)
/* 8042CE60 003F6420  A0 A7 00 0C */	lhz r5, 0xc(r7)
/* 8042CE64 003F6424  A0 07 00 0E */	lhz r0, 0xe(r7)
/* 8042CE68 003F6428  7C 05 01 D6 */	mullw r0, r5, r0
/* 8042CE6C 003F642C  7C 04 03 D6 */	divw r0, r4, r0
/* 8042CE70 003F6430  54 00 08 3C */	slwi r0, r0, 1
/* 8042CE74 003F6434  7C 06 02 2E */	lhzx r0, r6, r0
/* 8042CE78 003F6438  28 00 FF FF */	cmplwi r0, 0xffff
/* 8042CE7C 003F643C  4D 82 00 20 */	beqlr
/* 8042CE80 003F6440  7C 00 20 50 */	subf r0, r0, r4
/* 8042CE84 003F6444  54 03 04 3E */	clrlwi r3, r0, 16
/* 8042CE88 003F6448  4E 80 00 20 */	blr
.endfn AdjustIndex__Q44nw4r2ut6detail15ArchiveFontBaseCFUs

# nw4r::ut::detail::ArchiveFontBase::IncludeName(const char*, const char*)
.fn IncludeName__Q44nw4r2ut6detail15ArchiveFontBaseFPCcPCc, global
/* 8042CE8C 003F644C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042CE90 003F6450  7C 08 02 A6 */	mflr r0
/* 8042CE94 003F6454  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042CE98 003F6458  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042CE9C 003F645C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042CEA0 003F6460  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042CEA4 003F6464  7C 9D 23 78 */	mr r29, r4
/* 8042CEA8 003F6468  93 81 00 10 */	stw r28, 0x10(r1)
/* 8042CEAC 003F646C  7C 7C 1B 78 */	mr r28, r3
/* 8042CEB0 003F6470  7F A3 EB 78 */	mr r3, r29
/* 8042CEB4 003F6474  4B E8 C7 05 */	bl strlen
/* 8042CEB8 003F6478  7C 7F 1B 78 */	mr r31, r3
/* 8042CEBC 003F647C  3B DC FF FF */	addi r30, r28, -0x1
.L_8042CEC0:
/* 8042CEC0 003F6480  7F A4 EB 78 */	mr r4, r29
/* 8042CEC4 003F6484  38 7E 00 01 */	addi r3, r30, 0x1
/* 8042CEC8 003F6488  4B E9 5A F9 */	bl strstr
/* 8042CECC 003F648C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042CED0 003F6490  7C 7E 1B 78 */	mr r30, r3
/* 8042CED4 003F6494  40 82 00 0C */	bne .L_8042CEE0
/* 8042CED8 003F6498  38 60 00 00 */	li r3, 0x0
/* 8042CEDC 003F649C  48 00 00 8C */	b .L_8042CF68
.L_8042CEE0:
/* 8042CEE0 003F64A0  7C 03 E0 40 */	cmplw r3, r28
/* 8042CEE4 003F64A4  41 82 00 30 */	beq .L_8042CF14
/* 8042CEE8 003F64A8  38 63 FF FF */	addi r3, r3, -0x1
/* 8042CEEC 003F64AC  48 00 00 08 */	b .L_8042CEF4
.L_8042CEF0:
/* 8042CEF0 003F64B0  38 63 FF FF */	addi r3, r3, -0x1
.L_8042CEF4:
/* 8042CEF4 003F64B4  7C 03 E0 40 */	cmplw r3, r28
/* 8042CEF8 003F64B8  40 81 00 10 */	ble .L_8042CF08
/* 8042CEFC 003F64BC  88 03 00 00 */	lbz r0, 0x0(r3)
/* 8042CF00 003F64C0  2C 00 00 20 */	cmpwi r0, 0x20
/* 8042CF04 003F64C4  41 82 FF EC */	beq .L_8042CEF0
.L_8042CF08:
/* 8042CF08 003F64C8  88 03 00 00 */	lbz r0, 0x0(r3)
/* 8042CF0C 003F64CC  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8042CF10 003F64D0  40 82 FF B0 */	bne .L_8042CEC0
.L_8042CF14:
/* 8042CF14 003F64D4  7F C3 F3 78 */	mr r3, r30
/* 8042CF18 003F64D8  38 80 00 2C */	li r4, 0x2c
/* 8042CF1C 003F64DC  4B E9 5A 75 */	bl strchr
/* 8042CF20 003F64E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042CF24 003F64E4  41 82 00 0C */	beq .L_8042CF30
/* 8042CF28 003F64E8  7C 7E 18 50 */	subf r3, r30, r3
/* 8042CF2C 003F64EC  48 00 00 0C */	b .L_8042CF38
.L_8042CF30:
/* 8042CF30 003F64F0  7F C3 F3 78 */	mr r3, r30
/* 8042CF34 003F64F4  4B E8 C6 85 */	bl strlen
.L_8042CF38:
/* 8042CF38 003F64F8  7C 9E FA 14 */	add r4, r30, r31
/* 8042CF3C 003F64FC  7C 7E 1A 14 */	add r3, r30, r3
/* 8042CF40 003F6500  48 00 00 08 */	b .L_8042CF48
.L_8042CF44:
/* 8042CF44 003F6504  38 84 00 01 */	addi r4, r4, 0x1
.L_8042CF48:
/* 8042CF48 003F6508  7C 04 18 40 */	cmplw r4, r3
/* 8042CF4C 003F650C  40 80 00 10 */	bge .L_8042CF5C
/* 8042CF50 003F6510  88 04 00 00 */	lbz r0, 0x0(r4)
/* 8042CF54 003F6514  2C 00 00 20 */	cmpwi r0, 0x20
/* 8042CF58 003F6518  41 82 FF EC */	beq .L_8042CF44
.L_8042CF5C:
/* 8042CF5C 003F651C  7C 04 18 40 */	cmplw r4, r3
/* 8042CF60 003F6520  40 82 FF 60 */	bne .L_8042CEC0
/* 8042CF64 003F6524  38 60 00 01 */	li r3, 0x1
.L_8042CF68:
/* 8042CF68 003F6528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042CF6C 003F652C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042CF70 003F6530  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042CF74 003F6534  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042CF78 003F6538  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8042CF7C 003F653C  7C 08 03 A6 */	mtlr r0
/* 8042CF80 003F6540  38 21 00 20 */	addi r1, r1, 0x20
/* 8042CF84 003F6544  4E 80 00 20 */	blr
.endfn IncludeName__Q44nw4r2ut6detail15ArchiveFontBaseFPCcPCc

# nw4r::ut::detail::ArchiveFontBase::IsValidResource(const void*, unsigned long)
.fn IsValidResource__Q44nw4r2ut6detail15ArchiveFontBaseFPCvUl, global
/* 8042CF88 003F6548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042CF8C 003F654C  7C 08 02 A6 */	mflr r0
/* 8042CF90 003F6550  3C C0 52 46 */	lis r6, 0x5246
/* 8042CF94 003F6554  38 A0 01 04 */	li r5, 0x104
/* 8042CF98 003F6558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042CF9C 003F655C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042CFA0 003F6560  7C 7F 1B 78 */	mr r31, r3
/* 8042CFA4 003F6564  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8042CFA8 003F6568  7C 9E 23 78 */	mr r30, r4
/* 8042CFAC 003F656C  38 86 4E 41 */	addi r4, r6, 0x4e41
/* 8042CFB0 003F6570  38 C0 00 02 */	li r6, 0x2
/* 8042CFB4 003F6574  4B FF E5 C9 */	bl IsValidBinaryFile__Q24nw4r2utFPCQ34nw4r2ut16BinaryFileHeaderUlUsUs
/* 8042CFB8 003F6578  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042CFBC 003F657C  40 82 00 0C */	bne .L_8042CFC8
/* 8042CFC0 003F6580  38 60 00 00 */	li r3, 0x0
/* 8042CFC4 003F6584  48 00 00 38 */	b .L_8042CFFC
.L_8042CFC8:
/* 8042CFC8 003F6588  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8042CFCC 003F658C  3C 03 B8 B4 */	addis r0, r3, 0xb8b4
/* 8042CFD0 003F6590  28 00 47 52 */	cmplwi r0, 0x4752
/* 8042CFD4 003F6594  41 82 00 0C */	beq .L_8042CFE0
/* 8042CFD8 003F6598  38 60 00 00 */	li r3, 0x0
/* 8042CFDC 003F659C  48 00 00 20 */	b .L_8042CFFC
.L_8042CFE0:
/* 8042CFE0 003F65A0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8042CFE4 003F65A4  38 63 00 10 */	addi r3, r3, 0x10
/* 8042CFE8 003F65A8  7C 03 F0 50 */	subf r0, r3, r30
/* 8042CFEC 003F65AC  7F C3 1B 38 */	orc r3, r30, r3
/* 8042CFF0 003F65B0  54 00 F8 7E */	srwi r0, r0, 1
/* 8042CFF4 003F65B4  7C 00 18 50 */	subf r0, r0, r3
/* 8042CFF8 003F65B8  54 03 0F FE */	srwi r3, r0, 31
.L_8042CFFC:
/* 8042CFFC 003F65BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D000 003F65C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D004 003F65C4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8042D008 003F65C8  7C 08 03 A6 */	mtlr r0
/* 8042D00C 003F65CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D010 003F65D0  4E 80 00 20 */	blr
.endfn IsValidResource__Q44nw4r2ut6detail15ArchiveFontBaseFPCvUl

# nw4r::ut::detail::ArchiveFontBase::RequestData(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*, unsigned long)
.fn RequestData__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderUl, global
/* 8042D014 003F65D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D018 003F65D8  7C 08 02 A6 */	mflr r0
/* 8042D01C 003F65DC  7C 89 23 78 */	mr r9, r4
/* 8042D020 003F65E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D024 003F65E4  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8042D028 003F65E8  80 04 00 04 */	lwz r0, 0x4(r4)
/* 8042D02C 003F65EC  81 03 00 18 */	lwz r8, 0x18(r3)
/* 8042D030 003F65F0  7C 06 00 50 */	subf r0, r6, r0
/* 8042D034 003F65F4  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 8042D038 003F65F8  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 8042D03C 003F65FC  7C 08 02 14 */	add r0, r8, r0
/* 8042D040 003F6600  7C 64 1B 78 */	mr r4, r3
/* 8042D044 003F6604  7C C7 30 50 */	subf r6, r7, r6
/* 8042D048 003F6608  7C 06 02 14 */	add r0, r6, r0
/* 8042D04C 003F660C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8042D050 003F6610  7D 23 4B 78 */	mr r3, r9
/* 8042D054 003F6614  48 00 09 75 */	bl RequestData__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextUl
/* 8042D058 003F6618  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042D05C 003F661C  38 60 00 02 */	li r3, 0x2
/* 8042D060 003F6620  41 82 00 08 */	beq .L_8042D068
/* 8042D064 003F6624  38 60 00 00 */	li r3, 0x0
.L_8042D068:
/* 8042D068 003F6628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D06C 003F662C  7C 08 03 A6 */	mtlr r0
/* 8042D070 003F6630  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D074 003F6634  4E 80 00 20 */	blr
.endfn RequestData__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderUl

# nw4r::ut::detail::ArchiveFontBase::ConstructOpDispatch(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpDispatch__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D078 003F6638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D07C 003F663C  7C 08 02 A6 */	mflr r0
/* 8042D080 003F6640  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D084 003F6644  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D088 003F6648  4B E8 D0 CD */	bl _savegpr_27
/* 8042D08C 003F664C  80 A3 00 5C */	lwz r5, 0x5c(r3)
/* 8042D090 003F6650  7C 7E 1B 78 */	mr r30, r3
/* 8042D094 003F6654  80 03 00 58 */	lwz r0, 0x58(r3)
/* 8042D098 003F6658  7C 9F 23 78 */	mr r31, r4
/* 8042D09C 003F665C  7C 05 00 40 */	cmplw r5, r0
/* 8042D0A0 003F6660  41 80 00 0C */	blt .L_8042D0AC
/* 8042D0A4 003F6664  38 60 00 01 */	li r3, 0x1
/* 8042D0A8 003F6668  48 00 01 B0 */	b .L_8042D258
.L_8042D0AC:
/* 8042D0AC 003F666C  81 24 00 10 */	lwz r9, 0x10(r4)
/* 8042D0B0 003F6670  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8042D0B4 003F6674  80 E4 00 04 */	lwz r7, 0x4(r4)
/* 8042D0B8 003F6678  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8042D0BC 003F667C  7C 09 00 50 */	subf r0, r9, r0
/* 8042D0C0 003F6680  7C A7 28 50 */	subf r5, r7, r5
/* 8042D0C4 003F6684  7C 05 02 14 */	add r0, r5, r0
/* 8042D0C8 003F6688  28 00 00 08 */	cmplwi r0, 0x8
/* 8042D0CC 003F668C  40 80 00 48 */	bge .L_8042D114
/* 8042D0D0 003F6690  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8042D0D4 003F6694  38 A0 00 08 */	li r5, 0x8
/* 8042D0D8 003F6698  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8042D0DC 003F669C  7F C4 F3 78 */	mr r4, r30
/* 8042D0E0 003F66A0  7C E6 38 50 */	subf r7, r6, r7
/* 8042D0E4 003F66A4  81 03 00 18 */	lwz r8, 0x18(r3)
/* 8042D0E8 003F66A8  7C C0 48 50 */	subf r6, r0, r9
/* 8042D0EC 003F66AC  7C 08 3A 14 */	add r0, r8, r7
/* 8042D0F0 003F66B0  7C 06 02 14 */	add r0, r6, r0
/* 8042D0F4 003F66B4  90 03 00 18 */	stw r0, 0x18(r3)
/* 8042D0F8 003F66B8  7F E3 FB 78 */	mr r3, r31
/* 8042D0FC 003F66BC  48 00 08 CD */	bl RequestData__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextUl
/* 8042D100 003F66C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042D104 003F66C4  38 60 00 02 */	li r3, 0x2
/* 8042D108 003F66C8  41 82 01 50 */	beq .L_8042D258
/* 8042D10C 003F66CC  38 60 00 00 */	li r3, 0x0
/* 8042D110 003F66D0  48 00 01 48 */	b .L_8042D258
.L_8042D114:
/* 8042D114 003F66D4  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8042D118 003F66D8  3B 83 00 10 */	addi r28, r3, 0x10
/* 8042D11C 003F66DC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8042D120 003F66E0  7F 65 00 50 */	subf r27, r5, r0
/* 8042D124 003F66E4  28 1B 00 08 */	cmplwi r27, 0x8
/* 8042D128 003F66E8  41 80 00 24 */	blt .L_8042D14C
/* 8042D12C 003F66EC  7C A4 2B 78 */	mr r4, r5
/* 8042D130 003F66F0  7F 83 E3 78 */	mr r3, r28
/* 8042D134 003F66F4  38 A0 00 08 */	li r5, 0x8
/* 8042D138 003F66F8  4B BD 6E C9 */	bl memcpy
/* 8042D13C 003F66FC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8042D140 003F6700  38 03 00 08 */	addi r0, r3, 0x8
/* 8042D144 003F6704  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8042D148 003F6708  48 00 00 3C */	b .L_8042D184
.L_8042D14C:
/* 8042D14C 003F670C  7C A4 2B 78 */	mr r4, r5
/* 8042D150 003F6710  7F 83 E3 78 */	mr r3, r28
/* 8042D154 003F6714  7F 65 DB 78 */	mr r5, r27
/* 8042D158 003F6718  23 BB 00 08 */	subfic r29, r27, 0x8
/* 8042D15C 003F671C  4B BD 6E A5 */	bl memcpy
/* 8042D160 003F6720  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8042D164 003F6724  7F A5 EB 78 */	mr r5, r29
/* 8042D168 003F6728  7C 7C DA 14 */	add r3, r28, r27
/* 8042D16C 003F672C  4B BD 6E 95 */	bl memcpy
/* 8042D170 003F6730  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8042D174 003F6734  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8042D178 003F6738  7C 00 EA 14 */	add r0, r0, r29
/* 8042D17C 003F673C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8042D180 003F6740  90 1F 00 04 */	stw r0, 0x4(r31)
.L_8042D184:
/* 8042D184 003F6744  3C 60 46 49 */	lis r3, 0x4649
/* 8042D188 003F6748  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8042D18C 003F674C  38 03 4E 46 */	addi r0, r3, 0x4e46
/* 8042D190 003F6750  7C 04 00 00 */	cmpw r4, r0
/* 8042D194 003F6754  41 82 00 64 */	beq .L_8042D1F8
/* 8042D198 003F6758  40 80 00 2C */	bge .L_8042D1C4
/* 8042D19C 003F675C  3C 60 43 57 */	lis r3, 0x4357
/* 8042D1A0 003F6760  38 03 44 48 */	addi r0, r3, 0x4448
/* 8042D1A4 003F6764  7C 04 00 00 */	cmpw r4, r0
/* 8042D1A8 003F6768  41 82 00 68 */	beq .L_8042D210
/* 8042D1AC 003F676C  40 80 00 7C */	bge .L_8042D228
/* 8042D1B0 003F6770  3C 60 43 4D */	lis r3, 0x434d
/* 8042D1B4 003F6774  38 03 41 50 */	addi r0, r3, 0x4150
/* 8042D1B8 003F6778  7C 04 00 00 */	cmpw r4, r0
/* 8042D1BC 003F677C  41 82 00 48 */	beq .L_8042D204
/* 8042D1C0 003F6780  48 00 00 68 */	b .L_8042D228
.L_8042D1C4:
/* 8042D1C4 003F6784  3C 60 54 47 */	lis r3, 0x5447
/* 8042D1C8 003F6788  38 03 4C 50 */	addi r0, r3, 0x4c50
/* 8042D1CC 003F678C  7C 04 00 00 */	cmpw r4, r0
/* 8042D1D0 003F6790  41 82 00 4C */	beq .L_8042D21C
/* 8042D1D4 003F6794  40 80 00 54 */	bge .L_8042D228
/* 8042D1D8 003F6798  3C 60 47 4C */	lis r3, 0x474c
/* 8042D1DC 003F679C  38 03 47 52 */	addi r0, r3, 0x4752
/* 8042D1E0 003F67A0  7C 04 00 00 */	cmpw r4, r0
/* 8042D1E4 003F67A4  41 82 00 08 */	beq .L_8042D1EC
/* 8042D1E8 003F67A8  48 00 00 40 */	b .L_8042D228
.L_8042D1EC:
/* 8042D1EC 003F67AC  38 00 00 02 */	li r0, 0x2
/* 8042D1F0 003F67B0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8042D1F4 003F67B4  48 00 00 44 */	b .L_8042D238
.L_8042D1F8:
/* 8042D1F8 003F67B8  38 00 00 03 */	li r0, 0x3
/* 8042D1FC 003F67BC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8042D200 003F67C0  48 00 00 38 */	b .L_8042D238
.L_8042D204:
/* 8042D204 003F67C4  38 00 00 04 */	li r0, 0x4
/* 8042D208 003F67C8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8042D20C 003F67CC  48 00 00 2C */	b .L_8042D238
.L_8042D210:
/* 8042D210 003F67D0  38 00 00 05 */	li r0, 0x5
/* 8042D214 003F67D4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8042D218 003F67D8  48 00 00 20 */	b .L_8042D238
.L_8042D21C:
/* 8042D21C 003F67DC  38 00 00 06 */	li r0, 0x6
/* 8042D220 003F67E0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8042D224 003F67E4  48 00 00 14 */	b .L_8042D238
.L_8042D228:
/* 8042D228 003F67E8  38 00 00 0C */	li r0, 0xc
/* 8042D22C 003F67EC  38 60 00 02 */	li r3, 0x2
/* 8042D230 003F67F0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8042D234 003F67F4  48 00 00 24 */	b .L_8042D258
.L_8042D238:
/* 8042D238 003F67F8  80 9E 00 4C */	lwz r4, 0x4c(r30)
/* 8042D23C 003F67FC  38 60 00 03 */	li r3, 0x3
/* 8042D240 003F6800  80 BE 00 5C */	lwz r5, 0x5c(r30)
/* 8042D244 003F6804  38 04 00 03 */	addi r0, r4, 0x3
/* 8042D248 003F6808  38 85 00 01 */	addi r4, r5, 0x1
/* 8042D24C 003F680C  54 00 00 3A */	clrrwi r0, r0, 2
/* 8042D250 003F6810  90 9E 00 5C */	stw r4, 0x5c(r30)
/* 8042D254 003F6814  90 1E 00 4C */	stw r0, 0x4c(r30)
.L_8042D258:
/* 8042D258 003F6818  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D25C 003F681C  4B E8 CF 45 */	bl _restgpr_27
/* 8042D260 003F6820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D264 003F6824  7C 08 03 A6 */	mtlr r0
/* 8042D268 003F6828  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D26C 003F682C  4E 80 00 20 */	blr
.endfn ConstructOpDispatch__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::ConstructOpAnalyzeFileHeader(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpAnalyzeFileHeader__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D270 003F6830  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D274 003F6834  7C 08 02 A6 */	mflr r0
/* 8042D278 003F6838  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D27C 003F683C  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D280 003F6840  4B E8 CE D5 */	bl _savegpr_27
/* 8042D284 003F6844  81 24 00 10 */	lwz r9, 0x10(r4)
/* 8042D288 003F6848  7C 7E 1B 78 */	mr r30, r3
/* 8042D28C 003F684C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8042D290 003F6850  7C 9F 23 78 */	mr r31, r4
/* 8042D294 003F6854  80 E4 00 04 */	lwz r7, 0x4(r4)
/* 8042D298 003F6858  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8042D29C 003F685C  7C 09 00 50 */	subf r0, r9, r0
/* 8042D2A0 003F6860  7C A7 28 50 */	subf r5, r7, r5
/* 8042D2A4 003F6864  7C 05 02 14 */	add r0, r5, r0
/* 8042D2A8 003F6868  28 00 00 10 */	cmplwi r0, 0x10
/* 8042D2AC 003F686C  40 80 00 48 */	bge .L_8042D2F4
/* 8042D2B0 003F6870  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8042D2B4 003F6874  38 A0 00 10 */	li r5, 0x10
/* 8042D2B8 003F6878  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8042D2BC 003F687C  7F C4 F3 78 */	mr r4, r30
/* 8042D2C0 003F6880  7C E6 38 50 */	subf r7, r6, r7
/* 8042D2C4 003F6884  81 03 00 18 */	lwz r8, 0x18(r3)
/* 8042D2C8 003F6888  7C C0 48 50 */	subf r6, r0, r9
/* 8042D2CC 003F688C  7C 08 3A 14 */	add r0, r8, r7
/* 8042D2D0 003F6890  7C 06 02 14 */	add r0, r6, r0
/* 8042D2D4 003F6894  90 03 00 18 */	stw r0, 0x18(r3)
/* 8042D2D8 003F6898  7F E3 FB 78 */	mr r3, r31
/* 8042D2DC 003F689C  48 00 06 ED */	bl RequestData__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextUl
/* 8042D2E0 003F68A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042D2E4 003F68A4  38 60 00 02 */	li r3, 0x2
/* 8042D2E8 003F68A8  41 82 00 A4 */	beq .L_8042D38C
/* 8042D2EC 003F68AC  38 60 00 00 */	li r3, 0x0
/* 8042D2F0 003F68B0  48 00 00 9C */	b .L_8042D38C
.L_8042D2F4:
/* 8042D2F4 003F68B4  80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 8042D2F8 003F68B8  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8042D2FC 003F68BC  7C 05 00 50 */	subf r0, r5, r0
/* 8042D300 003F68C0  28 00 00 10 */	cmplwi r0, 0x10
/* 8042D304 003F68C4  40 80 00 0C */	bge .L_8042D310
/* 8042D308 003F68C8  38 60 00 02 */	li r3, 0x2
/* 8042D30C 003F68CC  48 00 00 80 */	b .L_8042D38C
.L_8042D310:
/* 8042D310 003F68D0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8042D314 003F68D4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8042D318 003F68D8  83 83 00 4C */	lwz r28, 0x4c(r3)
/* 8042D31C 003F68DC  7F 65 00 50 */	subf r27, r5, r0
/* 8042D320 003F68E0  28 1B 00 10 */	cmplwi r27, 0x10
/* 8042D324 003F68E4  41 80 00 24 */	blt .L_8042D348
/* 8042D328 003F68E8  7C A4 2B 78 */	mr r4, r5
/* 8042D32C 003F68EC  7F 83 E3 78 */	mr r3, r28
/* 8042D330 003F68F0  38 A0 00 10 */	li r5, 0x10
/* 8042D334 003F68F4  4B BD 6C CD */	bl memcpy
/* 8042D338 003F68F8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8042D33C 003F68FC  38 03 00 10 */	addi r0, r3, 0x10
/* 8042D340 003F6900  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8042D344 003F6904  48 00 00 3C */	b .L_8042D380
.L_8042D348:
/* 8042D348 003F6908  7C A4 2B 78 */	mr r4, r5
/* 8042D34C 003F690C  7F 83 E3 78 */	mr r3, r28
/* 8042D350 003F6910  7F 65 DB 78 */	mr r5, r27
/* 8042D354 003F6914  23 BB 00 10 */	subfic r29, r27, 0x10
/* 8042D358 003F6918  4B BD 6C A9 */	bl memcpy
/* 8042D35C 003F691C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8042D360 003F6920  7F A5 EB 78 */	mr r5, r29
/* 8042D364 003F6924  7C 7C DA 14 */	add r3, r28, r27
/* 8042D368 003F6928  4B BD 6C 99 */	bl memcpy
/* 8042D36C 003F692C  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8042D370 003F6930  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8042D374 003F6934  7C 00 EA 14 */	add r0, r0, r29
/* 8042D378 003F6938  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8042D37C 003F693C  90 1F 00 04 */	stw r0, 0x4(r31)
.L_8042D380:
/* 8042D380 003F6940  38 00 00 00 */	li r0, 0x0
/* 8042D384 003F6944  38 60 00 03 */	li r3, 0x3
/* 8042D388 003F6948  90 1E 00 0C */	stw r0, 0xc(r30)
.L_8042D38C:
/* 8042D38C 003F694C  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D390 003F6950  4B E8 CE 11 */	bl _restgpr_27
/* 8042D394 003F6954  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D398 003F6958  7C 08 03 A6 */	mtlr r0
/* 8042D39C 003F695C  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D3A0 003F6960  4E 80 00 20 */	blr
.endfn ConstructOpAnalyzeFileHeader__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::ConstructOpAnalyzeFINF(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpAnalyzeFINF__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D3A4 003F6964  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8042D3A8 003F6968  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 8042D3AC 003F696C  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8042D3B0 003F6970  38 C5 FF F8 */	addi r6, r5, -0x8
/* 8042D3B4 003F6974  7C 04 00 50 */	subf r0, r4, r0
/* 8042D3B8 003F6978  7C 00 30 40 */	cmplw r0, r6
/* 8042D3BC 003F697C  40 80 00 0C */	bge .L_8042D3C8
/* 8042D3C0 003F6980  38 60 00 02 */	li r3, 0x2
/* 8042D3C4 003F6984  4E 80 00 20 */	blr
.L_8042D3C8:
/* 8042D3C8 003F6988  80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 8042D3CC 003F698C  38 80 00 09 */	li r4, 0x9
/* 8042D3D0 003F6990  38 00 00 00 */	li r0, 0x0
/* 8042D3D4 003F6994  90 C3 00 54 */	stw r6, 0x54(r3)
/* 8042D3D8 003F6998  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8042D3DC 003F699C  90 83 00 0C */	stw r4, 0xc(r3)
/* 8042D3E0 003F69A0  90 03 00 50 */	stw r0, 0x50(r3)
/* 8042D3E4 003F69A4  38 60 00 03 */	li r3, 0x3
/* 8042D3E8 003F69A8  4E 80 00 20 */	blr
.endfn ConstructOpAnalyzeFINF__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::ConstructOpAnalyzeCMAP(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpAnalyzeCMAP__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D3EC 003F69AC  80 83 00 08 */	lwz r4, 0x8(r3)
/* 8042D3F0 003F69B0  80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 8042D3F4 003F69B4  2C 04 00 00 */	cmpwi r4, 0x0
/* 8042D3F8 003F69B8  41 82 00 0C */	beq .L_8042D404
/* 8042D3FC 003F69BC  90 C4 00 08 */	stw r6, 0x8(r4)
/* 8042D400 003F69C0  48 00 00 0C */	b .L_8042D40C
.L_8042D404:
/* 8042D404 003F69C4  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8042D408 003F69C8  90 C4 00 10 */	stw r6, 0x10(r4)
.L_8042D40C:
/* 8042D40C 003F69CC  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8042D410 003F69D0  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 8042D414 003F69D4  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8042D418 003F69D8  38 A5 FF F8 */	addi r5, r5, -0x8
/* 8042D41C 003F69DC  90 C3 00 08 */	stw r6, 0x8(r3)
/* 8042D420 003F69E0  7C 04 00 50 */	subf r0, r4, r0
/* 8042D424 003F69E4  7C 00 28 40 */	cmplw r0, r5
/* 8042D428 003F69E8  40 80 00 0C */	bge .L_8042D434
/* 8042D42C 003F69EC  38 60 00 02 */	li r3, 0x2
/* 8042D430 003F69F0  4E 80 00 20 */	blr
.L_8042D434:
/* 8042D434 003F69F4  38 80 00 09 */	li r4, 0x9
/* 8042D438 003F69F8  38 00 00 00 */	li r0, 0x0
/* 8042D43C 003F69FC  90 A3 00 54 */	stw r5, 0x54(r3)
/* 8042D440 003F6A00  90 83 00 0C */	stw r4, 0xc(r3)
/* 8042D444 003F6A04  90 03 00 50 */	stw r0, 0x50(r3)
/* 8042D448 003F6A08  38 60 00 03 */	li r3, 0x3
/* 8042D44C 003F6A0C  4E 80 00 20 */	blr
.endfn ConstructOpAnalyzeCMAP__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::ConstructOpAnalyzeCWDH(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpAnalyzeCWDH__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D450 003F6A10  80 83 00 04 */	lwz r4, 0x4(r3)
/* 8042D454 003F6A14  80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 8042D458 003F6A18  2C 04 00 00 */	cmpwi r4, 0x0
/* 8042D45C 003F6A1C  41 82 00 0C */	beq .L_8042D468
/* 8042D460 003F6A20  90 C4 00 04 */	stw r6, 0x4(r4)
/* 8042D464 003F6A24  48 00 00 0C */	b .L_8042D470
.L_8042D468:
/* 8042D468 003F6A28  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8042D46C 003F6A2C  90 C4 00 0C */	stw r6, 0xc(r4)
.L_8042D470:
/* 8042D470 003F6A30  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8042D474 003F6A34  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 8042D478 003F6A38  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8042D47C 003F6A3C  38 A5 FF F8 */	addi r5, r5, -0x8
/* 8042D480 003F6A40  90 C3 00 04 */	stw r6, 0x4(r3)
/* 8042D484 003F6A44  7C 04 00 50 */	subf r0, r4, r0
/* 8042D488 003F6A48  7C 00 28 40 */	cmplw r0, r5
/* 8042D48C 003F6A4C  40 80 00 0C */	bge .L_8042D498
/* 8042D490 003F6A50  38 60 00 02 */	li r3, 0x2
/* 8042D494 003F6A54  4E 80 00 20 */	blr
.L_8042D498:
/* 8042D498 003F6A58  38 80 00 09 */	li r4, 0x9
/* 8042D49C 003F6A5C  38 00 00 00 */	li r0, 0x0
/* 8042D4A0 003F6A60  90 A3 00 54 */	stw r5, 0x54(r3)
/* 8042D4A4 003F6A64  90 83 00 0C */	stw r4, 0xc(r3)
/* 8042D4A8 003F6A68  90 03 00 50 */	stw r0, 0x50(r3)
/* 8042D4AC 003F6A6C  38 60 00 03 */	li r3, 0x3
/* 8042D4B0 003F6A70  4E 80 00 20 */	blr
.endfn ConstructOpAnalyzeCWDH__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::ConstructOpAnalyzeTGLP(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpAnalyzeTGLP__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D4B4 003F6A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D4B8 003F6A78  7C 08 02 A6 */	mflr r0
/* 8042D4BC 003F6A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D4C0 003F6A80  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D4C4 003F6A84  4B E8 CC 91 */	bl _savegpr_27
/* 8042D4C8 003F6A88  81 24 00 10 */	lwz r9, 0x10(r4)
/* 8042D4CC 003F6A8C  7C 7E 1B 78 */	mr r30, r3
/* 8042D4D0 003F6A90  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8042D4D4 003F6A94  7C 9F 23 78 */	mr r31, r4
/* 8042D4D8 003F6A98  80 E4 00 04 */	lwz r7, 0x4(r4)
/* 8042D4DC 003F6A9C  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8042D4E0 003F6AA0  7C 09 00 50 */	subf r0, r9, r0
/* 8042D4E4 003F6AA4  7C A7 28 50 */	subf r5, r7, r5
/* 8042D4E8 003F6AA8  7C 05 02 14 */	add r0, r5, r0
/* 8042D4EC 003F6AAC  28 00 00 18 */	cmplwi r0, 0x18
/* 8042D4F0 003F6AB0  40 80 00 48 */	bge .L_8042D538
/* 8042D4F4 003F6AB4  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8042D4F8 003F6AB8  38 A0 00 18 */	li r5, 0x18
/* 8042D4FC 003F6ABC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8042D500 003F6AC0  7F C4 F3 78 */	mr r4, r30
/* 8042D504 003F6AC4  7C E6 38 50 */	subf r7, r6, r7
/* 8042D508 003F6AC8  81 03 00 18 */	lwz r8, 0x18(r3)
/* 8042D50C 003F6ACC  7C C0 48 50 */	subf r6, r0, r9
/* 8042D510 003F6AD0  7C 08 3A 14 */	add r0, r8, r7
/* 8042D514 003F6AD4  7C 06 02 14 */	add r0, r6, r0
/* 8042D518 003F6AD8  90 03 00 18 */	stw r0, 0x18(r3)
/* 8042D51C 003F6ADC  7F E3 FB 78 */	mr r3, r31
/* 8042D520 003F6AE0  48 00 04 A9 */	bl RequestData__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextUl
/* 8042D524 003F6AE4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042D528 003F6AE8  38 60 00 02 */	li r3, 0x2
/* 8042D52C 003F6AEC  41 82 01 7C */	beq .L_8042D6A8
/* 8042D530 003F6AF0  38 60 00 00 */	li r3, 0x0
/* 8042D534 003F6AF4  48 00 01 74 */	b .L_8042D6A8
.L_8042D538:
/* 8042D538 003F6AF8  80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 8042D53C 003F6AFC  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8042D540 003F6B00  7C 05 00 50 */	subf r0, r5, r0
/* 8042D544 003F6B04  28 00 00 18 */	cmplwi r0, 0x18
/* 8042D548 003F6B08  40 80 00 0C */	bge .L_8042D554
/* 8042D54C 003F6B0C  38 60 00 02 */	li r3, 0x2
/* 8042D550 003F6B10  48 00 01 58 */	b .L_8042D6A8
.L_8042D554:
/* 8042D554 003F6B14  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8042D558 003F6B18  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8042D55C 003F6B1C  90 05 00 08 */	stw r0, 0x8(r5)
/* 8042D560 003F6B20  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8042D564 003F6B24  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8042D568 003F6B28  83 83 00 4C */	lwz r28, 0x4c(r3)
/* 8042D56C 003F6B2C  7F A5 00 50 */	subf r29, r5, r0
/* 8042D570 003F6B30  28 1D 00 18 */	cmplwi r29, 0x18
/* 8042D574 003F6B34  41 80 00 24 */	blt .L_8042D598
/* 8042D578 003F6B38  7C A4 2B 78 */	mr r4, r5
/* 8042D57C 003F6B3C  7F 83 E3 78 */	mr r3, r28
/* 8042D580 003F6B40  38 A0 00 18 */	li r5, 0x18
/* 8042D584 003F6B44  4B BD 6A 7D */	bl memcpy
/* 8042D588 003F6B48  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8042D58C 003F6B4C  38 03 00 18 */	addi r0, r3, 0x18
/* 8042D590 003F6B50  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8042D594 003F6B54  48 00 00 3C */	b .L_8042D5D0
.L_8042D598:
/* 8042D598 003F6B58  7C A4 2B 78 */	mr r4, r5
/* 8042D59C 003F6B5C  7F 83 E3 78 */	mr r3, r28
/* 8042D5A0 003F6B60  7F A5 EB 78 */	mr r5, r29
/* 8042D5A4 003F6B64  23 7D 00 18 */	subfic r27, r29, 0x18
/* 8042D5A8 003F6B68  4B BD 6A 59 */	bl memcpy
/* 8042D5AC 003F6B6C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8042D5B0 003F6B70  7F 65 DB 78 */	mr r5, r27
/* 8042D5B4 003F6B74  7C 7C EA 14 */	add r3, r28, r29
/* 8042D5B8 003F6B78  4B BD 6A 49 */	bl memcpy
/* 8042D5BC 003F6B7C  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8042D5C0 003F6B80  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8042D5C4 003F6B84  7C 00 DA 14 */	add r0, r0, r27
/* 8042D5C8 003F6B88  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8042D5CC 003F6B8C  90 1F 00 04 */	stw r0, 0x4(r31)
.L_8042D5D0:
/* 8042D5D0 003F6B90  80 9E 00 4C */	lwz r4, 0x4c(r30)
/* 8042D5D4 003F6B94  38 E0 00 00 */	li r7, 0x0
/* 8042D5D8 003F6B98  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8042D5DC 003F6B9C  38 A0 00 00 */	li r5, 0x0
/* 8042D5E0 003F6BA0  38 04 00 18 */	addi r0, r4, 0x18
/* 8042D5E4 003F6BA4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8042D5E8 003F6BA8  80 83 00 08 */	lwz r4, 0x8(r3)
/* 8042D5EC 003F6BAC  A0 64 00 0A */	lhz r3, 0xa(r4)
/* 8042D5F0 003F6BB0  54 60 04 7E */	clrlwi r0, r3, 17
/* 8042D5F4 003F6BB4  54 66 8F FE */	extrwi r6, r3, 1, 16
/* 8042D5F8 003F6BB8  B0 04 00 0A */	sth r0, 0xa(r4)
/* 8042D5FC 003F6BBC  A0 1E 00 62 */	lhz r0, 0x62(r30)
/* 8042D600 003F6BC0  7C 09 03 A6 */	mtctr r0
/* 8042D604 003F6BC4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8042D608 003F6BC8  40 81 00 24 */	ble .L_8042D62C
.L_8042D60C:
/* 8042D60C 003F6BCC  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 8042D610 003F6BD0  7C 03 2A 2E */	lhzx r0, r3, r5
/* 8042D614 003F6BD4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8042D618 003F6BD8  41 82 00 0C */	beq .L_8042D624
/* 8042D61C 003F6BDC  38 07 00 01 */	addi r0, r7, 0x1
/* 8042D620 003F6BE0  54 07 04 3E */	clrlwi r7, r0, 16
.L_8042D624:
/* 8042D624 003F6BE4  38 A5 00 02 */	addi r5, r5, 0x2
/* 8042D628 003F6BE8  42 00 FF E4 */	bdnz .L_8042D60C
.L_8042D62C:
/* 8042D62C 003F6BEC  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8042D630 003F6BF0  2C 06 00 00 */	cmpwi r6, 0x0
/* 8042D634 003F6BF4  39 00 00 07 */	li r8, 0x7
/* 8042D638 003F6BF8  80 63 00 08 */	lwz r3, 0x8(r3)
/* 8042D63C 003F6BFC  B0 E3 00 08 */	sth r7, 0x8(r3)
/* 8042D640 003F6C00  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8042D644 003F6C04  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 8042D648 003F6C08  80 85 00 08 */	lwz r4, 0x8(r5)
/* 8042D64C 003F6C0C  38 03 00 1F */	addi r0, r3, 0x1f
/* 8042D650 003F6C10  81 24 00 14 */	lwz r9, 0x14(r4)
/* 8042D654 003F6C14  54 00 00 34 */	clrrwi r0, r0, 5
/* 8042D658 003F6C18  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8042D65C 003F6C1C  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8042D660 003F6C20  90 03 00 14 */	stw r0, 0x14(r3)
/* 8042D664 003F6C24  41 82 00 08 */	beq .L_8042D66C
/* 8042D668 003F6C28  39 00 00 08 */	li r8, 0x8
.L_8042D66C:
/* 8042D66C 003F6C2C  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8042D670 003F6C30  38 00 00 0A */	li r0, 0xa
/* 8042D674 003F6C34  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8042D678 003F6C38  38 60 00 03 */	li r3, 0x3
/* 8042D67C 003F6C3C  80 FE 00 18 */	lwz r7, 0x18(r30)
/* 8042D680 003F6C40  7C 85 20 50 */	subf r4, r5, r4
/* 8042D684 003F6C44  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8042D688 003F6C48  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8042D68C 003F6C4C  7C 87 22 14 */	add r4, r7, r4
/* 8042D690 003F6C50  7C A6 28 50 */	subf r5, r6, r5
/* 8042D694 003F6C54  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8042D698 003F6C58  7C 05 22 14 */	add r0, r5, r4
/* 8042D69C 003F6C5C  7C 00 48 50 */	subf r0, r0, r9
/* 8042D6A0 003F6C60  91 1E 00 50 */	stw r8, 0x50(r30)
/* 8042D6A4 003F6C64  90 1E 00 54 */	stw r0, 0x54(r30)
.L_8042D6A8:
/* 8042D6A8 003F6C68  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D6AC 003F6C6C  4B E8 CA F5 */	bl _restgpr_27
/* 8042D6B0 003F6C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D6B4 003F6C74  7C 08 03 A6 */	mtlr r0
/* 8042D6B8 003F6C78  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D6BC 003F6C7C  4E 80 00 20 */	blr
.endfn ConstructOpAnalyzeTGLP__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::ConstructOpCopy(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpCopy__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D6C0 003F6C80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D6C4 003F6C84  7C 08 02 A6 */	mflr r0
/* 8042D6C8 003F6C88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D6CC 003F6C8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042D6D0 003F6C90  7C 7F 1B 78 */	mr r31, r3
/* 8042D6D4 003F6C94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042D6D8 003F6C98  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042D6DC 003F6C9C  7C 9D 23 78 */	mr r29, r4
/* 8042D6E0 003F6CA0  80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8042D6E4 003F6CA4  80 04 00 08 */	lwz r0, 0x8(r4)
/* 8042D6E8 003F6CA8  80 83 00 54 */	lwz r4, 0x54(r3)
/* 8042D6EC 003F6CAC  7F C5 00 50 */	subf r30, r5, r0
/* 8042D6F0 003F6CB0  7C 1E 20 40 */	cmplw r30, r4
/* 8042D6F4 003F6CB4  40 81 00 08 */	ble .L_8042D6FC
/* 8042D6F8 003F6CB8  7C 9E 23 78 */	mr r30, r4
.L_8042D6FC:
/* 8042D6FC 003F6CBC  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 8042D700 003F6CC0  7C A4 2B 78 */	mr r4, r5
/* 8042D704 003F6CC4  7F C5 F3 78 */	mr r5, r30
/* 8042D708 003F6CC8  4B BD 68 F9 */	bl memcpy
/* 8042D70C 003F6CCC  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8042D710 003F6CD0  7C 00 F2 14 */	add r0, r0, r30
/* 8042D714 003F6CD4  90 1D 00 04 */	stw r0, 0x4(r29)
/* 8042D718 003F6CD8  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8042D71C 003F6CDC  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8042D720 003F6CE0  7C 00 F2 14 */	add r0, r0, r30
/* 8042D724 003F6CE4  7C 1E 18 40 */	cmplw r30, r3
/* 8042D728 003F6CE8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8042D72C 003F6CEC  40 81 00 08 */	ble .L_8042D734
/* 8042D730 003F6CF0  7C 7E 1B 78 */	mr r30, r3
.L_8042D734:
/* 8042D734 003F6CF4  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8042D738 003F6CF8  7C BE 00 51 */	subf. r5, r30, r0
/* 8042D73C 003F6CFC  90 BF 00 54 */	stw r5, 0x54(r31)
/* 8042D740 003F6D00  40 82 00 10 */	bne .L_8042D750
/* 8042D744 003F6D04  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8042D748 003F6D08  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8042D74C 003F6D0C  48 00 00 4C */	b .L_8042D798
.L_8042D750:
/* 8042D750 003F6D10  80 DD 00 00 */	lwz r6, 0x0(r29)
/* 8042D754 003F6D14  7F A3 EB 78 */	mr r3, r29
/* 8042D758 003F6D18  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8042D75C 003F6D1C  7F E4 FB 78 */	mr r4, r31
/* 8042D760 003F6D20  81 1F 00 18 */	lwz r8, 0x18(r31)
/* 8042D764 003F6D24  7C 06 00 50 */	subf r0, r6, r0
/* 8042D768 003F6D28  80 FD 00 0C */	lwz r7, 0xc(r29)
/* 8042D76C 003F6D2C  80 DD 00 10 */	lwz r6, 0x10(r29)
/* 8042D770 003F6D30  7C 08 02 14 */	add r0, r8, r0
/* 8042D774 003F6D34  7C C7 30 50 */	subf r6, r7, r6
/* 8042D778 003F6D38  7C 06 02 14 */	add r0, r6, r0
/* 8042D77C 003F6D3C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8042D780 003F6D40  48 00 02 49 */	bl RequestData__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextUl
/* 8042D784 003F6D44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042D788 003F6D48  38 60 00 02 */	li r3, 0x2
/* 8042D78C 003F6D4C  41 82 00 10 */	beq .L_8042D79C
/* 8042D790 003F6D50  38 60 00 00 */	li r3, 0x0
/* 8042D794 003F6D54  48 00 00 08 */	b .L_8042D79C
.L_8042D798:
/* 8042D798 003F6D58  38 60 00 03 */	li r3, 0x3
.L_8042D79C:
/* 8042D79C 003F6D5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D7A0 003F6D60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042D7A4 003F6D64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042D7A8 003F6D68  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042D7AC 003F6D6C  7C 08 03 A6 */	mtlr r0
/* 8042D7B0 003F6D70  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D7B4 003F6D74  4E 80 00 20 */	blr
.endfn ConstructOpCopy__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::ConstructOpSkip(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpSkip__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D7B8 003F6D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D7BC 003F6D7C  7C 08 02 A6 */	mflr r0
/* 8042D7C0 003F6D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D7C4 003F6D84  7C 80 23 78 */	mr r0, r4
/* 8042D7C8 003F6D88  80 E4 00 04 */	lwz r7, 0x4(r4)
/* 8042D7CC 003F6D8C  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8042D7D0 003F6D90  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 8042D7D4 003F6D94  7C E7 28 50 */	subf r7, r7, r5
/* 8042D7D8 003F6D98  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8042D7DC 003F6D9C  81 03 00 54 */	lwz r8, 0x54(r3)
/* 8042D7E0 003F6DA0  7C A6 28 50 */	subf r5, r6, r5
/* 8042D7E4 003F6DA4  7C A7 2A 14 */	add r5, r7, r5
/* 8042D7E8 003F6DA8  7C 08 28 40 */	cmplw r8, r5
/* 8042D7EC 003F6DAC  40 81 00 08 */	ble .L_8042D7F4
/* 8042D7F0 003F6DB0  7C A8 2B 78 */	mr r8, r5
.L_8042D7F4:
/* 8042D7F4 003F6DB4  81 24 00 14 */	lwz r9, 0x14(r4)
/* 8042D7F8 003F6DB8  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8042D7FC 003F6DBC  7C E5 48 50 */	subf r7, r5, r9
/* 8042D800 003F6DC0  7C 07 40 40 */	cmplw r7, r8
/* 8042D804 003F6DC4  40 81 00 10 */	ble .L_8042D814
/* 8042D808 003F6DC8  7C A5 42 14 */	add r5, r5, r8
/* 8042D80C 003F6DCC  90 A4 00 10 */	stw r5, 0x10(r4)
/* 8042D810 003F6DD0  48 00 00 18 */	b .L_8042D828
.L_8042D814:
/* 8042D814 003F6DD4  80 C4 00 04 */	lwz r6, 0x4(r4)
/* 8042D818 003F6DD8  7C A7 40 50 */	subf r5, r7, r8
/* 8042D81C 003F6DDC  91 24 00 10 */	stw r9, 0x10(r4)
/* 8042D820 003F6DE0  7C A6 2A 14 */	add r5, r6, r5
/* 8042D824 003F6DE4  90 A4 00 04 */	stw r5, 0x4(r4)
.L_8042D828:
/* 8042D828 003F6DE8  80 A3 00 54 */	lwz r5, 0x54(r3)
/* 8042D82C 003F6DEC  7C 08 28 40 */	cmplw r8, r5
/* 8042D830 003F6DF0  40 81 00 08 */	ble .L_8042D838
/* 8042D834 003F6DF4  7C A8 2B 78 */	mr r8, r5
.L_8042D838:
/* 8042D838 003F6DF8  80 A3 00 54 */	lwz r5, 0x54(r3)
/* 8042D83C 003F6DFC  7C A8 28 51 */	subf. r5, r8, r5
/* 8042D840 003F6E00  90 A3 00 54 */	stw r5, 0x54(r3)
/* 8042D844 003F6E04  40 82 00 10 */	bne .L_8042D854
/* 8042D848 003F6E08  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8042D84C 003F6E0C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8042D850 003F6E10  48 00 00 4C */	b .L_8042D89C
.L_8042D854:
/* 8042D854 003F6E14  80 E4 00 00 */	lwz r7, 0x0(r4)
/* 8042D858 003F6E18  80 C4 00 04 */	lwz r6, 0x4(r4)
/* 8042D85C 003F6E1C  81 23 00 18 */	lwz r9, 0x18(r3)
/* 8042D860 003F6E20  7C C7 30 50 */	subf r6, r7, r6
/* 8042D864 003F6E24  81 04 00 0C */	lwz r8, 0xc(r4)
/* 8042D868 003F6E28  80 E4 00 10 */	lwz r7, 0x10(r4)
/* 8042D86C 003F6E2C  7C C9 32 14 */	add r6, r9, r6
/* 8042D870 003F6E30  7C 64 1B 78 */	mr r4, r3
/* 8042D874 003F6E34  7C E8 38 50 */	subf r7, r8, r7
/* 8042D878 003F6E38  7C C7 32 14 */	add r6, r7, r6
/* 8042D87C 003F6E3C  90 C3 00 18 */	stw r6, 0x18(r3)
/* 8042D880 003F6E40  7C 03 03 78 */	mr r3, r0
/* 8042D884 003F6E44  48 00 01 45 */	bl RequestData__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextUl
/* 8042D888 003F6E48  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042D88C 003F6E4C  38 60 00 02 */	li r3, 0x2
/* 8042D890 003F6E50  41 82 00 10 */	beq .L_8042D8A0
/* 8042D894 003F6E54  38 60 00 00 */	li r3, 0x0
/* 8042D898 003F6E58  48 00 00 08 */	b .L_8042D8A0
.L_8042D89C:
/* 8042D89C 003F6E5C  38 60 00 03 */	li r3, 0x3
.L_8042D8A0:
/* 8042D8A0 003F6E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D8A4 003F6E64  7C 08 03 A6 */	mtlr r0
/* 8042D8A8 003F6E68  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D8AC 003F6E6C  4E 80 00 20 */	blr
.endfn ConstructOpSkip__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::ConstructOpFatalError(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, nw4r::ut::detail::ArchiveFontBase::CachedStreamReader*)
.fn ConstructOpFatalError__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader, global
/* 8042D8B0 003F6E70  38 00 00 0C */	li r0, 0xc
/* 8042D8B4 003F6E74  90 03 00 0C */	stw r0, 0xc(r3)
/* 8042D8B8 003F6E78  38 60 00 02 */	li r3, 0x2
/* 8042D8BC 003F6E7C  4E 80 00 20 */	blr
.endfn ConstructOpFatalError__Q44nw4r2ut6detail15ArchiveFontBaseFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextPQ54nw4r2ut6detail15ArchiveFontBase18CachedStreamReader

# nw4r::ut::detail::ArchiveFontBase::CachedStreamReader::Init()
.fn Init__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFv, global
/* 8042D8C0 003F6E80  38 00 00 00 */	li r0, 0x0
/* 8042D8C4 003F6E84  90 03 00 00 */	stw r0, 0x0(r3)
/* 8042D8C8 003F6E88  90 03 00 04 */	stw r0, 0x4(r3)
/* 8042D8CC 003F6E8C  90 03 00 08 */	stw r0, 0x8(r3)
/* 8042D8D0 003F6E90  90 03 00 0C */	stw r0, 0xc(r3)
/* 8042D8D4 003F6E94  90 03 00 10 */	stw r0, 0x10(r3)
/* 8042D8D8 003F6E98  90 03 00 14 */	stw r0, 0x14(r3)
/* 8042D8DC 003F6E9C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8042D8E0 003F6EA0  4E 80 00 20 */	blr
.endfn Init__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFv

# nw4r::ut::detail::ArchiveFontBase::CachedStreamReader::Attach(const void*, unsigned long)
.fn Attach__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPCvUl, global
/* 8042D8E4 003F6EA4  7C 04 2A 14 */	add r0, r4, r5
/* 8042D8E8 003F6EA8  90 83 00 00 */	stw r4, 0x0(r3)
/* 8042D8EC 003F6EAC  90 83 00 04 */	stw r4, 0x4(r3)
/* 8042D8F0 003F6EB0  90 03 00 08 */	stw r0, 0x8(r3)
/* 8042D8F4 003F6EB4  4E 80 00 20 */	blr
.endfn Attach__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPCvUl

# nw4r::ut::detail::ArchiveFontBase::CachedStreamReader::GetRemain() const
.fn GetRemain__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderCFv, global
/* 8042D8F8 003F6EB8  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8042D8FC 003F6EBC  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8042D900 003F6EC0  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8042D904 003F6EC4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8042D908 003F6EC8  7C 66 28 50 */	subf r3, r6, r5
/* 8042D90C 003F6ECC  7C 04 00 50 */	subf r0, r4, r0
/* 8042D910 003F6ED0  7C 63 02 14 */	add r3, r3, r0
/* 8042D914 003F6ED4  4E 80 00 20 */	blr
.endfn GetRemain__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderCFv

# nw4r::ut::detail::ArchiveFontBase::CachedStreamReader::CopyTo(void*, unsigned long)
.fn CopyTo__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPvUl, global
/* 8042D918 003F6ED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D91C 003F6EDC  7C 08 02 A6 */	mflr r0
/* 8042D920 003F6EE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D924 003F6EE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042D928 003F6EE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042D92C 003F6EEC  7C 9E 23 78 */	mr r30, r4
/* 8042D930 003F6EF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042D934 003F6EF4  7C BD 2B 78 */	mr r29, r5
/* 8042D938 003F6EF8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8042D93C 003F6EFC  7C 7C 1B 78 */	mr r28, r3
/* 8042D940 003F6F00  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8042D944 003F6F04  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8042D948 003F6F08  7F E6 00 50 */	subf r31, r6, r0
/* 8042D94C 003F6F0C  7C 1F 28 40 */	cmplw r31, r5
/* 8042D950 003F6F10  41 80 00 20 */	blt .L_8042D970
/* 8042D954 003F6F14  7F C3 F3 78 */	mr r3, r30
/* 8042D958 003F6F18  7C C4 33 78 */	mr r4, r6
/* 8042D95C 003F6F1C  4B BD 66 A5 */	bl memcpy
/* 8042D960 003F6F20  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8042D964 003F6F24  7C 00 EA 14 */	add r0, r0, r29
/* 8042D968 003F6F28  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8042D96C 003F6F2C  48 00 00 3C */	b .L_8042D9A8
.L_8042D970:
/* 8042D970 003F6F30  7F BF 28 50 */	subf r29, r31, r5
/* 8042D974 003F6F34  7F C3 F3 78 */	mr r3, r30
/* 8042D978 003F6F38  7C C4 33 78 */	mr r4, r6
/* 8042D97C 003F6F3C  7F E5 FB 78 */	mr r5, r31
/* 8042D980 003F6F40  4B BD 66 81 */	bl memcpy
/* 8042D984 003F6F44  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8042D988 003F6F48  7F A5 EB 78 */	mr r5, r29
/* 8042D98C 003F6F4C  7C 7E FA 14 */	add r3, r30, r31
/* 8042D990 003F6F50  4B BD 66 71 */	bl memcpy
/* 8042D994 003F6F54  80 1C 00 04 */	lwz r0, 0x4(r28)
/* 8042D998 003F6F58  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8042D99C 003F6F5C  7C 00 EA 14 */	add r0, r0, r29
/* 8042D9A0 003F6F60  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8042D9A4 003F6F64  90 1C 00 04 */	stw r0, 0x4(r28)
.L_8042D9A8:
/* 8042D9A8 003F6F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D9AC 003F6F6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042D9B0 003F6F70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042D9B4 003F6F74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042D9B8 003F6F78  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8042D9BC 003F6F7C  7C 08 03 A6 */	mtlr r0
/* 8042D9C0 003F6F80  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D9C4 003F6F84  4E 80 00 20 */	blr
.endfn CopyTo__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPvUl

# nw4r::ut::detail::ArchiveFontBase::CachedStreamReader::RequestData(nw4r::ut::detail::ArchiveFontBase::ConstructContext*, unsigned long)
.fn RequestData__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextUl, global
/* 8042D9C8 003F6F88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D9CC 003F6F8C  7C 08 02 A6 */	mflr r0
/* 8042D9D0 003F6F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D9D4 003F6F94  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D9D8 003F6F98  4B E8 C7 79 */	bl _savegpr_26
/* 8042D9DC 003F6F9C  81 03 00 04 */	lwz r8, 0x4(r3)
/* 8042D9E0 003F6FA0  7C 7E 1B 78 */	mr r30, r3
/* 8042D9E4 003F6FA4  80 E3 00 08 */	lwz r7, 0x8(r3)
/* 8042D9E8 003F6FA8  7C BF 2B 78 */	mr r31, r5
/* 8042D9EC 003F6FAC  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8042D9F0 003F6FB0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8042D9F4 003F6FB4  7C E8 38 50 */	subf r7, r8, r7
/* 8042D9F8 003F6FB8  7C 06 00 50 */	subf r0, r6, r0
/* 8042D9FC 003F6FBC  7F 67 02 15 */	add. r27, r7, r0
/* 8042DA00 003F6FC0  40 82 00 1C */	bne .L_8042DA1C
/* 8042DA04 003F6FC4  38 00 00 00 */	li r0, 0x0
/* 8042DA08 003F6FC8  90 03 00 0C */	stw r0, 0xc(r3)
/* 8042DA0C 003F6FCC  90 03 00 10 */	stw r0, 0x10(r3)
/* 8042DA10 003F6FD0  90 03 00 14 */	stw r0, 0x14(r3)
/* 8042DA14 003F6FD4  90 03 00 18 */	stw r0, 0x18(r3)
/* 8042DA18 003F6FD8  48 00 00 AC */	b .L_8042DAC4
.L_8042DA1C:
/* 8042DA1C 003F6FDC  80 E4 00 4C */	lwz r7, 0x4c(r4)
/* 8042DA20 003F6FE0  54 A0 08 3C */	slwi r0, r5, 1
/* 8042DA24 003F6FE4  80 C4 00 48 */	lwz r6, 0x48(r4)
/* 8042DA28 003F6FE8  7C C7 30 50 */	subf r6, r7, r6
/* 8042DA2C 003F6FEC  7C 06 00 40 */	cmplw r6, r0
/* 8042DA30 003F6FF0  40 80 00 0C */	bge .L_8042DA3C
/* 8042DA34 003F6FF4  38 60 00 00 */	li r3, 0x0
/* 8042DA38 003F6FF8  48 00 00 90 */	b .L_8042DAC8
.L_8042DA3C:
/* 8042DA3C 003F6FFC  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 8042DA40 003F7000  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8042DA44 003F7004  80 64 00 4C */	lwz r3, 0x4c(r4)
/* 8042DA48 003F7008  7F 86 00 50 */	subf r28, r6, r0
/* 8042DA4C 003F700C  7C 1C D8 40 */	cmplw r28, r27
/* 8042DA50 003F7010  7F 43 2A 14 */	add r26, r3, r5
/* 8042DA54 003F7014  41 80 00 24 */	blt .L_8042DA78
/* 8042DA58 003F7018  7F 43 D3 78 */	mr r3, r26
/* 8042DA5C 003F701C  7C C4 33 78 */	mr r4, r6
/* 8042DA60 003F7020  7F 65 DB 78 */	mr r5, r27
/* 8042DA64 003F7024  4B E9 0C A5 */	bl memmove
/* 8042DA68 003F7028  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8042DA6C 003F702C  7C 00 DA 14 */	add r0, r0, r27
/* 8042DA70 003F7030  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8042DA74 003F7034  48 00 00 3C */	b .L_8042DAB0
.L_8042DA78:
/* 8042DA78 003F7038  7F 43 D3 78 */	mr r3, r26
/* 8042DA7C 003F703C  7C C4 33 78 */	mr r4, r6
/* 8042DA80 003F7040  7F 85 E3 78 */	mr r5, r28
/* 8042DA84 003F7044  7F BC D8 50 */	subf r29, r28, r27
/* 8042DA88 003F7048  4B E9 0C 81 */	bl memmove
/* 8042DA8C 003F704C  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 8042DA90 003F7050  7F A5 EB 78 */	mr r5, r29
/* 8042DA94 003F7054  7C 7A E2 14 */	add r3, r26, r28
/* 8042DA98 003F7058  4B E9 0C 71 */	bl memmove
/* 8042DA9C 003F705C  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 8042DAA0 003F7060  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8042DAA4 003F7064  7C 00 EA 14 */	add r0, r0, r29
/* 8042DAA8 003F7068  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8042DAAC 003F706C  90 1E 00 04 */	stw r0, 0x4(r30)
.L_8042DAB0:
/* 8042DAB0 003F7070  7C 1A DA 14 */	add r0, r26, r27
/* 8042DAB4 003F7074  93 5E 00 0C */	stw r26, 0xc(r30)
/* 8042DAB8 003F7078  93 5E 00 10 */	stw r26, 0x10(r30)
/* 8042DABC 003F707C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8042DAC0 003F7080  93 FE 00 18 */	stw r31, 0x18(r30)
.L_8042DAC4:
/* 8042DAC4 003F7084  38 60 00 01 */	li r3, 0x1
.L_8042DAC8:
/* 8042DAC8 003F7088  39 61 00 20 */	addi r11, r1, 0x20
/* 8042DACC 003F708C  4B E8 C6 D1 */	bl _restgpr_26
/* 8042DAD0 003F7090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042DAD4 003F7094  7C 08 03 A6 */	mtlr r0
/* 8042DAD8 003F7098  38 21 00 20 */	addi r1, r1, 0x20
/* 8042DADC 003F709C  4E 80 00 20 */	blr
.endfn RequestData__Q54nw4r2ut6detail15ArchiveFontBase18CachedStreamReaderFPQ54nw4r2ut6detail15ArchiveFontBase16ConstructContextUl

# 0x8056E868 - 0x8056E8C8
.data
.balign 8
.sym lbl_8056E868, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q44nw4r2ut6detail15ArchiveFontBaseFv
	.4byte GetWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetAscent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDescent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetBaselinePos__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetMaxCharWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetType__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetTextureFormat__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetLineFeed__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte SetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseFRCQ34nw4r2ut10CharWidths
	.4byte SetAlternateChar__Q44nw4r2ut6detail11ResFontBaseFUs
	.4byte SetLineFeed__Q44nw4r2ut6detail11ResFontBaseFi
	.4byte GetCharWidth__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetCharWidths__Q44nw4r2ut6detail15ArchiveFontBaseCFUs
	.4byte GetGlyph__Q44nw4r2ut6detail11ResFontBaseCFPQ34nw4r2ut5GlyphUs
	.4byte HasGlyph__Q44nw4r2ut6detail15ArchiveFontBaseCFUs
	.4byte GetEncoding__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte 0x00000000
