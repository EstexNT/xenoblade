.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__Q34nw4r3lyt5GroupFPCQ44nw4r3lyt3res5GroupPQ34nw4r3lyt4Pane
__ct__Q34nw4r3lyt5GroupFPCQ44nw4r3lyt3res5GroupPQ34nw4r3lyt4Pane:
/* 803FF934 003C8EF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FF938 003C8EF8  7C 08 02 A6 */	mflr r0
/* 803FF93C 003C8EFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FF940 003C8F00  39 61 00 30 */	addi r11, r1, 0x30
/* 803FF944 003C8F04  4B EB A8 05 */	bl _savegpr_24
/* 803FF948 003C8F08  3B C0 00 00 */	li r30, 0
/* 803FF94C 003C8F0C  3C C0 80 57 */	lis r6, lbl_8056D248@ha
/* 803FF950 003C8F10  93 C3 00 10 */	stw r30, 0x10(r3)
/* 803FF954 003C8F14  38 E3 00 10 */	addi r7, r3, 0x10
/* 803FF958 003C8F18  38 C6 D2 48 */	addi r6, r6, lbl_8056D248@l
/* 803FF95C 003C8F1C  7C 99 23 78 */	mr r25, r4
/* 803FF960 003C8F20  93 C3 00 14 */	stw r30, 0x14(r3)
/* 803FF964 003C8F24  7C BA 2B 78 */	mr r26, r5
/* 803FF968 003C8F28  7C 78 1B 78 */	mr r24, r3
/* 803FF96C 003C8F2C  38 A0 00 10 */	li r5, 0x10
/* 803FF970 003C8F30  90 C3 00 00 */	stw r6, 0(r3)
/* 803FF974 003C8F34  38 84 00 08 */	addi r4, r4, 8
/* 803FF978 003C8F38  93 C3 00 04 */	stw r30, 4(r3)
/* 803FF97C 003C8F3C  93 C3 00 08 */	stw r30, 8(r3)
/* 803FF980 003C8F40  93 C3 00 0C */	stw r30, 0xc(r3)
/* 803FF984 003C8F44  90 E3 00 10 */	stw r7, 0x10(r3)
/* 803FF988 003C8F48  90 E3 00 14 */	stw r7, 0x14(r3)
/* 803FF98C 003C8F4C  9B C3 00 29 */	stb r30, 0x29(r3)
/* 803FF990 003C8F50  38 63 00 18 */	addi r3, r3, 0x18
/* 803FF994 003C8F54  4B EC 2D E5 */	bl strncpy
/* 803FF998 003C8F58  9B D8 00 28 */	stb r30, 0x28(r24)
/* 803FF99C 003C8F5C  3B 99 00 1C */	addi r28, r25, 0x1c
/* 803FF9A0 003C8F60  3B 60 00 00 */	li r27, 0
/* 803FF9A4 003C8F64  3B A0 00 00 */	li r29, 0
/* 803FF9A8 003C8F68  48 00 00 80 */	b lbl_803FFA28
lbl_803FF9AC:
/* 803FF9AC 003C8F6C  81 9A 00 00 */	lwz r12, 0(r26)
/* 803FF9B0 003C8F70  7F 43 D3 78 */	mr r3, r26
/* 803FF9B4 003C8F74  7C 9C EA 14 */	add r4, r28, r29
/* 803FF9B8 003C8F78  38 A0 00 01 */	li r5, 1
/* 803FF9BC 003C8F7C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 803FF9C0 003C8F80  7D 89 03 A6 */	mtctr r12
/* 803FF9C4 003C8F84  4E 80 04 21 */	bctrl 
/* 803FF9C8 003C8F88  2C 03 00 00 */	cmpwi r3, 0
/* 803FF9CC 003C8F8C  7C 7F 1B 78 */	mr r31, r3
/* 803FF9D0 003C8F90  41 82 00 50 */	beq lbl_803FFA20
/* 803FF9D4 003C8F94  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 803FF9D8 003C8F98  38 80 00 0C */	li r4, 0xc
/* 803FF9DC 003C8F9C  4B F4 A0 B5 */	bl MEMAllocFromAllocator
/* 803FF9E0 003C8FA0  2C 03 00 00 */	cmpwi r3, 0
/* 803FF9E4 003C8FA4  41 82 00 18 */	beq lbl_803FF9FC
/* 803FF9E8 003C8FA8  7C 65 1B 78 */	mr r5, r3
/* 803FF9EC 003C8FAC  41 82 00 14 */	beq lbl_803FFA00
/* 803FF9F0 003C8FB0  93 C3 00 00 */	stw r30, 0(r3)
/* 803FF9F4 003C8FB4  93 C3 00 04 */	stw r30, 4(r3)
/* 803FF9F8 003C8FB8  48 00 00 08 */	b lbl_803FFA00
lbl_803FF9FC:
/* 803FF9FC 003C8FBC  38 A0 00 00 */	li r5, 0
lbl_803FFA00:
/* 803FFA00 003C8FC0  2C 05 00 00 */	cmpwi r5, 0
/* 803FFA04 003C8FC4  41 82 00 1C */	beq lbl_803FFA20
/* 803FFA08 003C8FC8  93 E5 00 08 */	stw r31, 8(r5)
/* 803FFA0C 003C8FCC  38 18 00 10 */	addi r0, r24, 0x10
/* 803FFA10 003C8FD0  38 78 00 0C */	addi r3, r24, 0xc
/* 803FFA14 003C8FD4  38 81 00 08 */	addi r4, r1, 8
/* 803FFA18 003C8FD8  90 01 00 08 */	stw r0, 8(r1)
/* 803FFA1C 003C8FDC  48 02 BB 05 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
lbl_803FFA20:
/* 803FFA20 003C8FE0  3B BD 00 10 */	addi r29, r29, 0x10
/* 803FFA24 003C8FE4  3B 7B 00 01 */	addi r27, r27, 1
lbl_803FFA28:
/* 803FFA28 003C8FE8  A0 19 00 18 */	lhz r0, 0x18(r25)
/* 803FFA2C 003C8FEC  7C 1B 00 00 */	cmpw r27, r0
/* 803FFA30 003C8FF0  41 80 FF 7C */	blt lbl_803FF9AC
/* 803FFA34 003C8FF4  39 61 00 30 */	addi r11, r1, 0x30
/* 803FFA38 003C8FF8  7F 03 C3 78 */	mr r3, r24
/* 803FFA3C 003C8FFC  4B EB A7 59 */	bl _restgpr_24
/* 803FFA40 003C9000  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FFA44 003C9004  7C 08 03 A6 */	mtlr r0
/* 803FFA48 003C9008  38 21 00 30 */	addi r1, r1, 0x30
/* 803FFA4C 003C900C  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3lyt5GroupFv
__dt__Q34nw4r3lyt5GroupFv:
/* 803FFA50 003C9010  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FFA54 003C9014  7C 08 02 A6 */	mflr r0
/* 803FFA58 003C9018  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FFA5C 003C901C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FFA60 003C9020  4B EB A6 F5 */	bl _savegpr_27
/* 803FFA64 003C9024  2C 03 00 00 */	cmpwi r3, 0
/* 803FFA68 003C9028  7C 7B 1B 78 */	mr r27, r3
/* 803FFA6C 003C902C  7C 9C 23 78 */	mr r28, r4
/* 803FFA70 003C9030  41 82 00 70 */	beq lbl_803FFAE0
/* 803FFA74 003C9034  3C 80 80 57 */	lis r4, lbl_8056D248@ha
/* 803FFA78 003C9038  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 803FFA7C 003C903C  38 84 D2 48 */	addi r4, r4, lbl_8056D248@l
/* 803FFA80 003C9040  3B C3 00 10 */	addi r30, r3, 0x10
/* 803FFA84 003C9044  90 83 00 00 */	stw r4, 0(r3)
/* 803FFA88 003C9048  48 00 00 30 */	b lbl_803FFAB8
lbl_803FFA8C:
/* 803FFA8C 003C904C  7F FD FB 78 */	mr r29, r31
/* 803FFA90 003C9050  83 FF 00 00 */	lwz r31, 0(r31)
/* 803FFA94 003C9054  38 7B 00 0C */	addi r3, r27, 0xc
/* 803FFA98 003C9058  38 81 00 08 */	addi r4, r1, 8
/* 803FFA9C 003C905C  93 A1 00 08 */	stw r29, 8(r1)
/* 803FFAA0 003C9060  48 02 B9 F5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 803FFAA4 003C9064  2C 1D 00 00 */	cmpwi r29, 0
/* 803FFAA8 003C9068  41 82 00 10 */	beq lbl_803FFAB8
/* 803FFAAC 003C906C  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 803FFAB0 003C9070  7F A4 EB 78 */	mr r4, r29
/* 803FFAB4 003C9074  4B F4 9F ED */	bl MEMFreeToAllocator
lbl_803FFAB8:
/* 803FFAB8 003C9078  7C 1F F0 40 */	cmplw r31, r30
/* 803FFABC 003C907C  40 82 FF D0 */	bne lbl_803FFA8C
/* 803FFAC0 003C9080  34 7B 00 0C */	addic. r3, r27, 0xc
/* 803FFAC4 003C9084  41 82 00 0C */	beq lbl_803FFAD0
/* 803FFAC8 003C9088  38 80 00 00 */	li r4, 0
/* 803FFACC 003C908C  48 02 B9 45 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_803FFAD0:
/* 803FFAD0 003C9090  2C 1C 00 00 */	cmpwi r28, 0
/* 803FFAD4 003C9094  40 81 00 0C */	ble lbl_803FFAE0
/* 803FFAD8 003C9098  7F 63 DB 78 */	mr r3, r27
/* 803FFADC 003C909C  48 03 51 51 */	bl __dl__FPv
lbl_803FFAE0:
/* 803FFAE0 003C90A0  39 61 00 30 */	addi r11, r1, 0x30
/* 803FFAE4 003C90A4  7F 63 DB 78 */	mr r3, r27
/* 803FFAE8 003C90A8  4B EB A6 B9 */	bl _restgpr_27
/* 803FFAEC 003C90AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FFAF0 003C90B0  7C 08 03 A6 */	mtlr r0
/* 803FFAF4 003C90B4  38 21 00 30 */	addi r1, r1, 0x30
/* 803FFAF8 003C90B8  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3lyt14GroupContainerFv
__dt__Q34nw4r3lyt14GroupContainerFv:
/* 803FFAFC 003C90BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FFB00 003C90C0  7C 08 02 A6 */	mflr r0
/* 803FFB04 003C90C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FFB08 003C90C8  39 61 00 30 */	addi r11, r1, 0x30
/* 803FFB0C 003C90CC  4B EB A6 49 */	bl _savegpr_27
/* 803FFB10 003C90D0  2C 03 00 00 */	cmpwi r3, 0
/* 803FFB14 003C90D4  7C 7B 1B 78 */	mr r27, r3
/* 803FFB18 003C90D8  7C 9C 23 78 */	mr r28, r4
/* 803FFB1C 003C90DC  41 82 00 8C */	beq lbl_803FFBA8
/* 803FFB20 003C90E0  83 E3 00 04 */	lwz r31, 4(r3)
/* 803FFB24 003C90E4  3B C3 00 04 */	addi r30, r3, 4
/* 803FFB28 003C90E8  48 00 00 54 */	b lbl_803FFB7C
lbl_803FFB2C:
/* 803FFB2C 003C90EC  7F FD FB 78 */	mr r29, r31
/* 803FFB30 003C90F0  83 FF 00 00 */	lwz r31, 0(r31)
/* 803FFB34 003C90F4  7F 63 DB 78 */	mr r3, r27
/* 803FFB38 003C90F8  38 81 00 08 */	addi r4, r1, 8
/* 803FFB3C 003C90FC  93 A1 00 08 */	stw r29, 8(r1)
/* 803FFB40 003C9100  48 02 B9 55 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 803FFB44 003C9104  88 1D 00 25 */	lbz r0, 0x25(r29)
/* 803FFB48 003C9108  2C 00 00 00 */	cmpwi r0, 0
/* 803FFB4C 003C910C  40 82 00 30 */	bne lbl_803FFB7C
/* 803FFB50 003C9110  37 BD FF FC */	addic. r29, r29, -4
/* 803FFB54 003C9114  41 82 00 28 */	beq lbl_803FFB7C
/* 803FFB58 003C9118  81 9D 00 00 */	lwz r12, 0(r29)
/* 803FFB5C 003C911C  7F A3 EB 78 */	mr r3, r29
/* 803FFB60 003C9120  38 80 FF FF */	li r4, -1
/* 803FFB64 003C9124  81 8C 00 08 */	lwz r12, 8(r12)
/* 803FFB68 003C9128  7D 89 03 A6 */	mtctr r12
/* 803FFB6C 003C912C  4E 80 04 21 */	bctrl 
/* 803FFB70 003C9130  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 803FFB74 003C9134  7F A4 EB 78 */	mr r4, r29
/* 803FFB78 003C9138  4B F4 9F 29 */	bl MEMFreeToAllocator
lbl_803FFB7C:
/* 803FFB7C 003C913C  7C 1F F0 40 */	cmplw r31, r30
/* 803FFB80 003C9140  40 82 FF AC */	bne lbl_803FFB2C
/* 803FFB84 003C9144  2C 1B 00 00 */	cmpwi r27, 0
/* 803FFB88 003C9148  41 82 00 10 */	beq lbl_803FFB98
/* 803FFB8C 003C914C  7F 63 DB 78 */	mr r3, r27
/* 803FFB90 003C9150  38 80 00 00 */	li r4, 0
/* 803FFB94 003C9154  48 02 B8 7D */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_803FFB98:
/* 803FFB98 003C9158  2C 1C 00 00 */	cmpwi r28, 0
/* 803FFB9C 003C915C  40 81 00 0C */	ble lbl_803FFBA8
/* 803FFBA0 003C9160  7F 63 DB 78 */	mr r3, r27
/* 803FFBA4 003C9164  48 03 50 89 */	bl __dl__FPv
lbl_803FFBA8:
/* 803FFBA8 003C9168  39 61 00 30 */	addi r11, r1, 0x30
/* 803FFBAC 003C916C  7F 63 DB 78 */	mr r3, r27
/* 803FFBB0 003C9170  4B EB A5 F1 */	bl _restgpr_27
/* 803FFBB4 003C9174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FFBB8 003C9178  7C 08 03 A6 */	mtlr r0
/* 803FFBBC 003C917C  38 21 00 30 */	addi r1, r1, 0x30
/* 803FFBC0 003C9180  4E 80 00 20 */	blr 

.global AppendGroup__Q34nw4r3lyt14GroupContainerFPQ34nw4r3lyt5Group
AppendGroup__Q34nw4r3lyt14GroupContainerFPQ34nw4r3lyt5Group:
/* 803FFBC4 003C9184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FFBC8 003C9188  7C 08 02 A6 */	mflr r0
/* 803FFBCC 003C918C  7C 85 23 78 */	mr r5, r4
/* 803FFBD0 003C9190  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FFBD4 003C9194  38 03 00 04 */	addi r0, r3, 4
/* 803FFBD8 003C9198  38 81 00 08 */	addi r4, r1, 8
/* 803FFBDC 003C919C  38 A5 00 04 */	addi r5, r5, 4
/* 803FFBE0 003C91A0  90 01 00 08 */	stw r0, 8(r1)
/* 803FFBE4 003C91A4  48 02 B9 3D */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 803FFBE8 003C91A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FFBEC 003C91AC  7C 08 03 A6 */	mtlr r0
/* 803FFBF0 003C91B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803FFBF4 003C91B4  4E 80 00 20 */	blr 

.global FindGroupByName__Q34nw4r3lyt14GroupContainerFPCc
FindGroupByName__Q34nw4r3lyt14GroupContainerFPCc:
/* 803FFBF8 003C91B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FFBFC 003C91BC  7C 08 02 A6 */	mflr r0
/* 803FFC00 003C91C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FFC04 003C91C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803FFC08 003C91C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803FFC0C 003C91CC  3B C3 00 04 */	addi r30, r3, 4
/* 803FFC10 003C91D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803FFC14 003C91D4  93 81 00 10 */	stw r28, 0x10(r1)
/* 803FFC18 003C91D8  7C 9C 23 78 */	mr r28, r4
/* 803FFC1C 003C91DC  83 E3 00 04 */	lwz r31, 4(r3)
/* 803FFC20 003C91E0  48 00 00 28 */	b lbl_803FFC48
lbl_803FFC24:
/* 803FFC24 003C91E4  3B BF FF FC */	addi r29, r31, -4
/* 803FFC28 003C91E8  7F 84 E3 78 */	mr r4, r28
/* 803FFC2C 003C91EC  38 7D 00 18 */	addi r3, r29, 0x18
/* 803FFC30 003C91F0  48 00 A3 F9 */	bl EqualsResName__Q34nw4r3lyt6detailFPCcPCc
/* 803FFC34 003C91F4  2C 03 00 00 */	cmpwi r3, 0
/* 803FFC38 003C91F8  41 82 00 0C */	beq lbl_803FFC44
/* 803FFC3C 003C91FC  7F A3 EB 78 */	mr r3, r29
/* 803FFC40 003C9200  48 00 00 14 */	b lbl_803FFC54
lbl_803FFC44:
/* 803FFC44 003C9204  83 FF 00 00 */	lwz r31, 0(r31)
lbl_803FFC48:
/* 803FFC48 003C9208  7C 1F F0 40 */	cmplw r31, r30
/* 803FFC4C 003C920C  40 82 FF D8 */	bne lbl_803FFC24
/* 803FFC50 003C9210  38 60 00 00 */	li r3, 0
lbl_803FFC54:
/* 803FFC54 003C9214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FFC58 003C9218  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803FFC5C 003C921C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803FFC60 003C9220  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803FFC64 003C9224  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803FFC68 003C9228  7C 08 03 A6 */	mtlr r0
/* 803FFC6C 003C922C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FFC70 003C9230  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60


.global lbl_8056D248
lbl_8056D248:
	# ROM: 0x569348
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt5GroupFv
	.4byte 0