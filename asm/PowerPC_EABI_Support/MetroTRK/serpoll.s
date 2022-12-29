.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global TRKTestForPacket
TRKTestForPacket:
/* 802CC93C 00295EFC  94 21 F7 20 */	stwu r1, -0x8e0(r1)
/* 802CC940 00295F00  7C 08 02 A6 */	mflr r0
/* 802CC944 00295F04  90 01 08 E4 */	stw r0, 0x8e4(r1)
/* 802CC948 00295F08  93 E1 08 DC */	stw r31, 0x8dc(r1)
/* 802CC94C 00295F0C  4B FF FB 55 */	bl TRKPollUART
/* 802CC950 00295F10  2C 03 00 00 */	cmpwi r3, 0
/* 802CC954 00295F14  41 81 00 0C */	bgt .L_802CC960
/* 802CC958 00295F18  38 60 FF FF */	li r3, -1
/* 802CC95C 00295F1C  48 00 00 98 */	b .L_802CC9F4
.L_802CC960:
/* 802CC960 00295F20  38 61 00 0C */	addi r3, r1, 0xc
/* 802CC964 00295F24  38 81 00 08 */	addi r4, r1, 8
/* 802CC968 00295F28  48 00 0B 3D */	bl TRKGetFreeBuffer
/* 802CC96C 00295F2C  7C 7F 1B 78 */	mr r31, r3
/* 802CC970 00295F30  80 61 00 08 */	lwz r3, 8(r1)
/* 802CC974 00295F34  38 80 00 00 */	li r4, 0
/* 802CC978 00295F38  48 00 0C 3D */	bl TRKSetBufferPosition
/* 802CC97C 00295F3C  38 61 00 10 */	addi r3, r1, 0x10
/* 802CC980 00295F40  38 80 00 40 */	li r4, 0x40
/* 802CC984 00295F44  4B FF FB 31 */	bl TRKReadUARTN
/* 802CC988 00295F48  2C 03 00 00 */	cmpwi r3, 0
/* 802CC98C 00295F4C  40 82 00 58 */	bne .L_802CC9E4
/* 802CC990 00295F50  80 61 00 08 */	lwz r3, 8(r1)
/* 802CC994 00295F54  38 81 00 10 */	addi r4, r1, 0x10
/* 802CC998 00295F58  38 A0 00 40 */	li r5, 0x40
/* 802CC99C 00295F5C  48 00 0F 41 */	bl TRKAppendBuffer_ui8
/* 802CC9A0 00295F60  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CC9A4 00295F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CC9A8 00295F68  34 83 FF C0 */	addic. r4, r3, -64
/* 802CC9AC 00295F6C  40 81 00 44 */	ble .L_802CC9F0
/* 802CC9B0 00295F70  38 61 00 50 */	addi r3, r1, 0x50
/* 802CC9B4 00295F74  4B FF FB 01 */	bl TRKReadUARTN
/* 802CC9B8 00295F78  2C 03 00 00 */	cmpwi r3, 0
/* 802CC9BC 00295F7C  40 82 00 18 */	bne .L_802CC9D4
/* 802CC9C0 00295F80  80 61 00 08 */	lwz r3, 8(r1)
/* 802CC9C4 00295F84  38 81 00 50 */	addi r4, r1, 0x50
/* 802CC9C8 00295F88  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 802CC9CC 00295F8C  48 00 0F 11 */	bl TRKAppendBuffer_ui8
/* 802CC9D0 00295F90  48 00 00 20 */	b .L_802CC9F0
.L_802CC9D4:
/* 802CC9D4 00295F94  7F E3 FB 78 */	mr r3, r31
/* 802CC9D8 00295F98  48 00 0B 8D */	bl TRKReleaseBuffer
/* 802CC9DC 00295F9C  3B E0 FF FF */	li r31, -1
/* 802CC9E0 00295FA0  48 00 00 10 */	b .L_802CC9F0
.L_802CC9E4:
/* 802CC9E4 00295FA4  7F E3 FB 78 */	mr r3, r31
/* 802CC9E8 00295FA8  48 00 0B 7D */	bl TRKReleaseBuffer
/* 802CC9EC 00295FAC  3B E0 FF FF */	li r31, -1
.L_802CC9F0:
/* 802CC9F0 00295FB0  7F E3 FB 78 */	mr r3, r31
.L_802CC9F4:
/* 802CC9F4 00295FB4  80 01 08 E4 */	lwz r0, 0x8e4(r1)
/* 802CC9F8 00295FB8  83 E1 08 DC */	lwz r31, 0x8dc(r1)
/* 802CC9FC 00295FBC  7C 08 03 A6 */	mtlr r0
/* 802CCA00 00295FC0  38 21 08 E0 */	addi r1, r1, 0x8e0
/* 802CCA04 00295FC4  4E 80 00 20 */	blr 

.global TRKGetInput
TRKGetInput:
/* 802CCA08 00295FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CCA0C 00295FCC  7C 08 02 A6 */	mflr r0
/* 802CCA10 00295FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CCA14 00295FD4  4B FF FF 29 */	bl TRKTestForPacket
/* 802CCA18 00295FD8  2C 03 FF FF */	cmpwi r3, -1
/* 802CCA1C 00295FDC  41 82 00 08 */	beq .L_802CCA24
/* 802CCA20 00295FE0  48 00 00 15 */	bl TRKProcessInput
.L_802CCA24:
/* 802CCA24 00295FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CCA28 00295FE8  7C 08 03 A6 */	mtlr r0
/* 802CCA2C 00295FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802CCA30 00295FF0  4E 80 00 20 */	blr 

.global TRKProcessInput
TRKProcessInput:
/* 802CCA34 00295FF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CCA38 00295FF8  7C 08 02 A6 */	mflr r0
/* 802CCA3C 00295FFC  38 80 00 02 */	li r4, 2
/* 802CCA40 00296000  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CCA44 00296004  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CCA48 00296008  7C 7F 1B 78 */	mr r31, r3
/* 802CCA4C 0029600C  38 61 00 08 */	addi r3, r1, 8
/* 802CCA50 00296010  4B FF FD 7D */	bl TRKConstructEvent
/* 802CCA54 00296014  93 E1 00 10 */	stw r31, 0x10(r1)
/* 802CCA58 00296018  38 61 00 08 */	addi r3, r1, 8
/* 802CCA5C 0029601C  4B FF FC A5 */	bl TRKPostEvent
/* 802CCA60 00296020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CCA64 00296024  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CCA68 00296028  7C 08 03 A6 */	mtlr r0
/* 802CCA6C 0029602C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CCA70 00296030  4E 80 00 20 */	blr 

.global TRKInitializeSerialHandler
TRKInitializeSerialHandler:
/* 802CCA74 00296034  38 60 00 00 */	li r3, 0
/* 802CCA78 00296038  4E 80 00 20 */	blr 

.global TRKTerminateSerialHandler
TRKTerminateSerialHandler:
/* 802CCA7C 0029603C  38 60 00 00 */	li r3, 0
/* 802CCA80 00296040  4E 80 00 20 */	blr 