.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__Q44nw4r3snd6detail11MmlSeqTrackFv
__ct__Q44nw4r3snd6detail11MmlSeqTrackFv:
/* 80418794 003E1D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80418798 003E1D58  7C 08 02 A6 */	mflr r0
/* 8041879C 003E1D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804187A0 003E1D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804187A4 003E1D64  7C 7F 1B 78 */	mr r31, r3
/* 804187A8 003E1D68  48 00 2B 9D */	bl __ct__Q44nw4r3snd6detail8SeqTrackFv
/* 804187AC 003E1D6C  3C 80 80 57 */	lis r4, lbl_8056E3A0@ha
/* 804187B0 003E1D70  7F E3 FB 78 */	mr r3, r31
/* 804187B4 003E1D74  38 84 E3 A0 */	addi r4, r4, lbl_8056E3A0@l
/* 804187B8 003E1D78  90 9F 00 00 */	stw r4, 0(r31)
/* 804187BC 003E1D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804187C0 003E1D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804187C4 003E1D84  7C 08 03 A6 */	mtlr r0
/* 804187C8 003E1D88  38 21 00 10 */	addi r1, r1, 0x10
/* 804187CC 003E1D8C  4E 80 00 20 */	blr


.global Parse__Q44nw4r3snd6detail11MmlSeqTrackFb
Parse__Q44nw4r3snd6detail11MmlSeqTrackFb:
/* 804187D0 003E1D90  7C 60 1B 78 */	mr r0, r3
/* 804187D4 003E1D94  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 804187D8 003E1D98  7C 85 23 78 */	mr r5, r4
/* 804187DC 003E1D9C  7C 04 03 78 */	mr r4, r0
/* 804187E0 003E1DA0  4B FF EE 10 */	b Parse__Q44nw4r3snd6detail9MmlParserCFPQ44nw4r3snd6detail11MmlSeqTrackb

.global __dt__Q44nw4r3snd6detail11MmlSeqTrackFv
__dt__Q44nw4r3snd6detail11MmlSeqTrackFv:
/* 804187E4 003E1DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804187E8 003E1DA8  7C 08 02 A6 */	mflr r0
/* 804187EC 003E1DAC  2C 03 00 00 */	cmpwi r3, 0
/* 804187F0 003E1DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804187F4 003E1DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804187F8 003E1DB8  7C 9F 23 78 */	mr r31, r4
/* 804187FC 003E1DBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80418800 003E1DC0  7C 7E 1B 78 */	mr r30, r3
/* 80418804 003E1DC4  41 82 00 1C */	beq lbl_80418820
/* 80418808 003E1DC8  38 80 00 00 */	li r4, 0
/* 8041880C 003E1DCC  48 00 2B C9 */	bl __dt__Q44nw4r3snd6detail8SeqTrackFv
/* 80418810 003E1DD0  2C 1F 00 00 */	cmpwi r31, 0
/* 80418814 003E1DD4  40 81 00 0C */	ble lbl_80418820
/* 80418818 003E1DD8  7F C3 F3 78 */	mr r3, r30
/* 8041881C 003E1DDC  48 01 C4 11 */	bl __dl__FPv
lbl_80418820:
/* 80418820 003E1DE0  7F C3 F3 78 */	mr r3, r30
/* 80418824 003E1DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80418828 003E1DE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041882C 003E1DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80418830 003E1DF0  7C 08 03 A6 */	mtlr r0
/* 80418834 003E1DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80418838 003E1DF8  4E 80 00 20 */	blr
