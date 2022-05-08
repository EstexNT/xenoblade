.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80348B50
func_80348B50:
/* 80348B50 00312110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80348B54 00312114  7C 08 02 A6 */	mflr r0
/* 80348B58 00312118  90 01 00 24 */	stw r0, 0x24(r1)
/* 80348B5C 0031211C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80348B60 00312120  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80348B64 00312124  7C 7E 1B 78 */	mr r30, r3
/* 80348B68 00312128  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80348B6C 0031212C  3B A0 00 00 */	li r29, 0
/* 80348B70 00312130  93 81 00 10 */	stw r28, 0x10(r1)
/* 80348B74 00312134  7C 9C 23 78 */	mr r28, r4
/* 80348B78 00312138  48 00 00 DC */	b lbl_80348C54
lbl_80348B7C:
/* 80348B7C 0031213C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348B80 00312140  7C 00 E0 40 */	cmplw r0, r28
/* 80348B84 00312144  41 81 00 D0 */	bgt lbl_80348C54
/* 80348B88 00312148  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348B8C 0031214C  7C 1C 00 40 */	cmplw r28, r0
/* 80348B90 00312150  40 80 00 C4 */	bge lbl_80348C54
/* 80348B94 00312154  3B E0 00 00 */	li r31, 0
/* 80348B98 00312158  48 00 00 8C */	b lbl_80348C24
lbl_80348B9C:
/* 80348B9C 0031215C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348BA0 00312160  7C 00 E0 40 */	cmplw r0, r28
/* 80348BA4 00312164  41 81 00 80 */	bgt lbl_80348C24
/* 80348BA8 00312168  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348BAC 0031216C  7C 1C 00 40 */	cmplw r28, r0
/* 80348BB0 00312170  40 80 00 74 */	bge lbl_80348C24
/* 80348BB4 00312174  3B C0 00 00 */	li r30, 0
/* 80348BB8 00312178  48 00 00 3C */	b lbl_80348BF4
lbl_80348BBC:
/* 80348BBC 0031217C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348BC0 00312180  7C 00 E0 40 */	cmplw r0, r28
/* 80348BC4 00312184  41 81 00 30 */	bgt lbl_80348BF4
/* 80348BC8 00312188  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348BCC 0031218C  7C 1C 00 40 */	cmplw r28, r0
/* 80348BD0 00312190  40 80 00 24 */	bge lbl_80348BF4
/* 80348BD4 00312194  7F 84 E3 78 */	mr r4, r28
/* 80348BD8 00312198  38 63 00 0C */	addi r3, r3, 0xc
/* 80348BDC 0031219C  4B FF FF 75 */	bl func_80348B50
/* 80348BE0 003121A0  2C 03 00 00 */	cmpwi r3, 0
/* 80348BE4 003121A4  41 82 00 08 */	beq lbl_80348BEC
/* 80348BE8 003121A8  48 00 00 28 */	b lbl_80348C10
lbl_80348BEC:
/* 80348BEC 003121AC  7F C3 F3 78 */	mr r3, r30
/* 80348BF0 003121B0  48 00 00 20 */	b lbl_80348C10
lbl_80348BF4:
/* 80348BF4 003121B4  7F C4 F3 78 */	mr r4, r30
/* 80348BF8 003121B8  38 7F 00 0C */	addi r3, r31, 0xc
/* 80348BFC 003121BC  48 00 0F D5 */	bl func_80349BD0
/* 80348C00 003121C0  2C 03 00 00 */	cmpwi r3, 0
/* 80348C04 003121C4  7C 7E 1B 78 */	mr r30, r3
/* 80348C08 003121C8  40 82 FF B4 */	bne lbl_80348BBC
/* 80348C0C 003121CC  38 60 00 00 */	li r3, 0
lbl_80348C10:
/* 80348C10 003121D0  2C 03 00 00 */	cmpwi r3, 0
/* 80348C14 003121D4  41 82 00 08 */	beq lbl_80348C1C
/* 80348C18 003121D8  48 00 00 28 */	b lbl_80348C40
lbl_80348C1C:
/* 80348C1C 003121DC  7F E3 FB 78 */	mr r3, r31
/* 80348C20 003121E0  48 00 00 20 */	b lbl_80348C40
lbl_80348C24:
/* 80348C24 003121E4  7F E4 FB 78 */	mr r4, r31
/* 80348C28 003121E8  38 7D 00 0C */	addi r3, r29, 0xc
/* 80348C2C 003121EC  48 00 0F A5 */	bl func_80349BD0
/* 80348C30 003121F0  2C 03 00 00 */	cmpwi r3, 0
/* 80348C34 003121F4  7C 7F 1B 78 */	mr r31, r3
/* 80348C38 003121F8  40 82 FF 64 */	bne lbl_80348B9C
/* 80348C3C 003121FC  38 60 00 00 */	li r3, 0
lbl_80348C40:
/* 80348C40 00312200  2C 03 00 00 */	cmpwi r3, 0
/* 80348C44 00312204  41 82 00 08 */	beq lbl_80348C4C
/* 80348C48 00312208  48 00 00 28 */	b lbl_80348C70
lbl_80348C4C:
/* 80348C4C 0031220C  7F A3 EB 78 */	mr r3, r29
/* 80348C50 00312210  48 00 00 20 */	b lbl_80348C70
lbl_80348C54:
/* 80348C54 00312214  7F C3 F3 78 */	mr r3, r30
/* 80348C58 00312218  7F A4 EB 78 */	mr r4, r29
/* 80348C5C 0031221C  48 00 0F 75 */	bl func_80349BD0
/* 80348C60 00312220  2C 03 00 00 */	cmpwi r3, 0
/* 80348C64 00312224  7C 7D 1B 78 */	mr r29, r3
/* 80348C68 00312228  40 82 FF 14 */	bne lbl_80348B7C
/* 80348C6C 0031222C  38 60 00 00 */	li r3, 0
lbl_80348C70:
/* 80348C70 00312230  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80348C74 00312234  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80348C78 00312238  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80348C7C 0031223C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80348C80 00312240  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80348C84 00312244  7C 08 03 A6 */	mtlr r0
/* 80348C88 00312248  38 21 00 20 */	addi r1, r1, 0x20
/* 80348C8C 0031224C  4E 80 00 20 */	blr 

.global func_80348C90
func_80348C90:
/* 80348C90 00312250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80348C94 00312254  7C 08 02 A6 */	mflr r0
/* 80348C98 00312258  90 01 00 24 */	stw r0, 0x24(r1)
/* 80348C9C 0031225C  39 61 00 20 */	addi r11, r1, 0x20
/* 80348CA0 00312260  4B F7 14 B5 */	bl _savegpr_27
/* 80348CA4 00312264  90 83 00 00 */	stw r4, 0(r3)
/* 80348CA8 00312268  38 00 00 00 */	li r0, 0
/* 80348CAC 0031226C  50 E0 06 3E */	rlwimi r0, r7, 0, 0x18, 0x1f
/* 80348CB0 00312270  7C 7B 1B 78 */	mr r27, r3
/* 80348CB4 00312274  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80348CB8 00312278  38 80 00 04 */	li r4, 4
/* 80348CBC 0031227C  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 80348CC0 00312280  90 03 00 38 */	stw r0, 0x38(r3)
/* 80348CC4 00312284  38 63 00 0C */	addi r3, r3, 0xc
/* 80348CC8 00312288  48 00 0E 09 */	bl func_80349AD0
/* 80348CCC 0031228C  80 0D B8 50 */	lwz r0, lbl_806679D0@sda21(r13)
/* 80348CD0 00312290  2C 00 00 00 */	cmpwi r0, 0
/* 80348CD4 00312294  40 82 00 28 */	bne lbl_80348CFC
/* 80348CD8 00312298  3C 60 80 5D */	lis r3, lbl_805CFC50@ha
/* 80348CDC 0031229C  38 80 00 04 */	li r4, 4
/* 80348CE0 003122A0  38 63 FC 50 */	addi r3, r3, lbl_805CFC50@l
/* 80348CE4 003122A4  48 00 0D ED */	bl func_80349AD0
/* 80348CE8 003122A8  3C 60 80 5D */	lis r3, lbl_805CFC60@ha
/* 80348CEC 003122AC  38 63 FC 60 */	addi r3, r3, lbl_805CFC60@l
/* 80348CF0 003122B0  48 01 0F 31 */	bl OSInitMutex
/* 80348CF4 003122B4  38 00 00 01 */	li r0, 1
/* 80348CF8 003122B8  90 0D B8 50 */	stw r0, lbl_806679D0@sda21(r13)
lbl_80348CFC:
/* 80348CFC 003122BC  38 7B 00 20 */	addi r3, r27, 0x20
/* 80348D00 003122C0  48 01 0F 21 */	bl OSInitMutex
/* 80348D04 003122C4  3C 60 80 5D */	lis r3, lbl_805CFC60@ha
/* 80348D08 003122C8  38 63 FC 60 */	addi r3, r3, lbl_805CFC60@l
/* 80348D0C 003122CC  48 01 0F 55 */	bl OSLockMutex
/* 80348D10 003122D0  3F E0 80 5D */	lis r31, lbl_805CFC50@ha
/* 80348D14 003122D4  3B C0 00 00 */	li r30, 0
/* 80348D18 003122D8  3B 9F FC 50 */	addi r28, r31, lbl_805CFC50@l
/* 80348D1C 003122DC  48 00 00 DC */	b lbl_80348DF8
lbl_80348D20:
/* 80348D20 003122E0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348D24 003122E4  7C 00 D8 40 */	cmplw r0, r27
/* 80348D28 003122E8  41 81 00 D0 */	bgt lbl_80348DF8
/* 80348D2C 003122EC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348D30 003122F0  7C 1B 00 40 */	cmplw r27, r0
/* 80348D34 003122F4  40 80 00 C4 */	bge lbl_80348DF8
/* 80348D38 003122F8  3B E0 00 00 */	li r31, 0
/* 80348D3C 003122FC  48 00 00 8C */	b lbl_80348DC8
lbl_80348D40:
/* 80348D40 00312300  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348D44 00312304  7C 00 D8 40 */	cmplw r0, r27
/* 80348D48 00312308  41 81 00 80 */	bgt lbl_80348DC8
/* 80348D4C 0031230C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348D50 00312310  7C 1B 00 40 */	cmplw r27, r0
/* 80348D54 00312314  40 80 00 74 */	bge lbl_80348DC8
/* 80348D58 00312318  3B A0 00 00 */	li r29, 0
/* 80348D5C 0031231C  48 00 00 3C */	b lbl_80348D98
lbl_80348D60:
/* 80348D60 00312320  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348D64 00312324  7C 00 D8 40 */	cmplw r0, r27
/* 80348D68 00312328  41 81 00 30 */	bgt lbl_80348D98
/* 80348D6C 0031232C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348D70 00312330  7C 1B 00 40 */	cmplw r27, r0
/* 80348D74 00312334  40 80 00 24 */	bge lbl_80348D98
/* 80348D78 00312338  7F 64 DB 78 */	mr r4, r27
/* 80348D7C 0031233C  38 63 00 0C */	addi r3, r3, 0xc
/* 80348D80 00312340  4B FF FD D1 */	bl func_80348B50
/* 80348D84 00312344  2C 03 00 00 */	cmpwi r3, 0
/* 80348D88 00312348  41 82 00 08 */	beq lbl_80348D90
/* 80348D8C 0031234C  48 00 00 28 */	b lbl_80348DB4
lbl_80348D90:
/* 80348D90 00312350  7F A3 EB 78 */	mr r3, r29
/* 80348D94 00312354  48 00 00 20 */	b lbl_80348DB4
lbl_80348D98:
/* 80348D98 00312358  7F A4 EB 78 */	mr r4, r29
/* 80348D9C 0031235C  38 7F 00 0C */	addi r3, r31, 0xc
/* 80348DA0 00312360  48 00 0E 31 */	bl func_80349BD0
/* 80348DA4 00312364  2C 03 00 00 */	cmpwi r3, 0
/* 80348DA8 00312368  7C 7D 1B 78 */	mr r29, r3
/* 80348DAC 0031236C  40 82 FF B4 */	bne lbl_80348D60
/* 80348DB0 00312370  38 60 00 00 */	li r3, 0
lbl_80348DB4:
/* 80348DB4 00312374  2C 03 00 00 */	cmpwi r3, 0
/* 80348DB8 00312378  41 82 00 08 */	beq lbl_80348DC0
/* 80348DBC 0031237C  48 00 00 28 */	b lbl_80348DE4
lbl_80348DC0:
/* 80348DC0 00312380  7F E3 FB 78 */	mr r3, r31
/* 80348DC4 00312384  48 00 00 20 */	b lbl_80348DE4
lbl_80348DC8:
/* 80348DC8 00312388  7F E4 FB 78 */	mr r4, r31
/* 80348DCC 0031238C  38 7E 00 0C */	addi r3, r30, 0xc
/* 80348DD0 00312390  48 00 0E 01 */	bl func_80349BD0
/* 80348DD4 00312394  2C 03 00 00 */	cmpwi r3, 0
/* 80348DD8 00312398  7C 7F 1B 78 */	mr r31, r3
/* 80348DDC 0031239C  40 82 FF 64 */	bne lbl_80348D40
/* 80348DE0 003123A0  38 60 00 00 */	li r3, 0
lbl_80348DE4:
/* 80348DE4 003123A4  2C 03 00 00 */	cmpwi r3, 0
/* 80348DE8 003123A8  41 82 00 08 */	beq lbl_80348DF0
/* 80348DEC 003123AC  48 00 00 28 */	b lbl_80348E14
lbl_80348DF0:
/* 80348DF0 003123B0  7F C3 F3 78 */	mr r3, r30
/* 80348DF4 003123B4  48 00 00 20 */	b lbl_80348E14
lbl_80348DF8:
/* 80348DF8 003123B8  7F C4 F3 78 */	mr r4, r30
/* 80348DFC 003123BC  38 7F FC 50 */	addi r3, r31, -944
/* 80348E00 003123C0  48 00 0D D1 */	bl func_80349BD0
/* 80348E04 003123C4  2C 03 00 00 */	cmpwi r3, 0
/* 80348E08 003123C8  7C 7E 1B 78 */	mr r30, r3
/* 80348E0C 003123CC  40 82 FF 14 */	bne lbl_80348D20
/* 80348E10 003123D0  38 60 00 00 */	li r3, 0
lbl_80348E14:
/* 80348E14 003123D4  2C 03 00 00 */	cmpwi r3, 0
/* 80348E18 003123D8  41 82 00 08 */	beq lbl_80348E20
/* 80348E1C 003123DC  3B 83 00 0C */	addi r28, r3, 0xc
lbl_80348E20:
/* 80348E20 003123E0  7F 83 E3 78 */	mr r3, r28
/* 80348E24 003123E4  7F 64 DB 78 */	mr r4, r27
/* 80348E28 003123E8  48 00 0C C9 */	bl func_80349AF0
/* 80348E2C 003123EC  3C 60 80 5D */	lis r3, lbl_805CFC60@ha
/* 80348E30 003123F0  38 63 FC 60 */	addi r3, r3, lbl_805CFC60@l
/* 80348E34 003123F4  48 01 0F 0D */	bl OSUnlockMutex
/* 80348E38 003123F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80348E3C 003123FC  4B F7 13 65 */	bl _restgpr_27
/* 80348E40 00312400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80348E44 00312404  7C 08 03 A6 */	mtlr r0
/* 80348E48 00312408  38 21 00 20 */	addi r1, r1, 0x20
/* 80348E4C 0031240C  4E 80 00 20 */	blr 

.global func_80348E50
func_80348E50:
/* 80348E50 00312410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80348E54 00312414  7C 08 02 A6 */	mflr r0
/* 80348E58 00312418  90 01 00 24 */	stw r0, 0x24(r1)
/* 80348E5C 0031241C  39 61 00 20 */	addi r11, r1, 0x20
/* 80348E60 00312420  4B F7 12 F5 */	bl _savegpr_27
/* 80348E64 00312424  3C 80 80 5D */	lis r4, lbl_805CFC60@ha
/* 80348E68 00312428  7C 7B 1B 78 */	mr r27, r3
/* 80348E6C 0031242C  38 64 FC 60 */	addi r3, r4, lbl_805CFC60@l
/* 80348E70 00312430  48 01 0D F1 */	bl OSLockMutex
/* 80348E74 00312434  3F E0 80 5D */	lis r31, lbl_805CFC50@ha
/* 80348E78 00312438  3B C0 00 00 */	li r30, 0
/* 80348E7C 0031243C  3B 9F FC 50 */	addi r28, r31, lbl_805CFC50@l
/* 80348E80 00312440  48 00 00 DC */	b lbl_80348F5C
lbl_80348E84:
/* 80348E84 00312444  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348E88 00312448  7C 00 D8 40 */	cmplw r0, r27
/* 80348E8C 0031244C  41 81 00 D0 */	bgt lbl_80348F5C
/* 80348E90 00312450  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348E94 00312454  7C 1B 00 40 */	cmplw r27, r0
/* 80348E98 00312458  40 80 00 C4 */	bge lbl_80348F5C
/* 80348E9C 0031245C  3B E0 00 00 */	li r31, 0
/* 80348EA0 00312460  48 00 00 8C */	b lbl_80348F2C
lbl_80348EA4:
/* 80348EA4 00312464  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348EA8 00312468  7C 00 D8 40 */	cmplw r0, r27
/* 80348EAC 0031246C  41 81 00 80 */	bgt lbl_80348F2C
/* 80348EB0 00312470  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348EB4 00312474  7C 1B 00 40 */	cmplw r27, r0
/* 80348EB8 00312478  40 80 00 74 */	bge lbl_80348F2C
/* 80348EBC 0031247C  3B A0 00 00 */	li r29, 0
/* 80348EC0 00312480  48 00 00 3C */	b lbl_80348EFC
lbl_80348EC4:
/* 80348EC4 00312484  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80348EC8 00312488  7C 00 D8 40 */	cmplw r0, r27
/* 80348ECC 0031248C  41 81 00 30 */	bgt lbl_80348EFC
/* 80348ED0 00312490  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80348ED4 00312494  7C 1B 00 40 */	cmplw r27, r0
/* 80348ED8 00312498  40 80 00 24 */	bge lbl_80348EFC
/* 80348EDC 0031249C  7F 64 DB 78 */	mr r4, r27
/* 80348EE0 003124A0  38 63 00 0C */	addi r3, r3, 0xc
/* 80348EE4 003124A4  4B FF FC 6D */	bl func_80348B50
/* 80348EE8 003124A8  2C 03 00 00 */	cmpwi r3, 0
/* 80348EEC 003124AC  41 82 00 08 */	beq lbl_80348EF4
/* 80348EF0 003124B0  48 00 00 28 */	b lbl_80348F18
lbl_80348EF4:
/* 80348EF4 003124B4  7F A3 EB 78 */	mr r3, r29
/* 80348EF8 003124B8  48 00 00 20 */	b lbl_80348F18
lbl_80348EFC:
/* 80348EFC 003124BC  7F A4 EB 78 */	mr r4, r29
/* 80348F00 003124C0  38 7F 00 0C */	addi r3, r31, 0xc
/* 80348F04 003124C4  48 00 0C CD */	bl func_80349BD0
/* 80348F08 003124C8  2C 03 00 00 */	cmpwi r3, 0
/* 80348F0C 003124CC  7C 7D 1B 78 */	mr r29, r3
/* 80348F10 003124D0  40 82 FF B4 */	bne lbl_80348EC4
/* 80348F14 003124D4  38 60 00 00 */	li r3, 0
lbl_80348F18:
/* 80348F18 003124D8  2C 03 00 00 */	cmpwi r3, 0
/* 80348F1C 003124DC  41 82 00 08 */	beq lbl_80348F24
/* 80348F20 003124E0  48 00 00 28 */	b lbl_80348F48
lbl_80348F24:
/* 80348F24 003124E4  7F E3 FB 78 */	mr r3, r31
/* 80348F28 003124E8  48 00 00 20 */	b lbl_80348F48
lbl_80348F2C:
/* 80348F2C 003124EC  7F E4 FB 78 */	mr r4, r31
/* 80348F30 003124F0  38 7E 00 0C */	addi r3, r30, 0xc
/* 80348F34 003124F4  48 00 0C 9D */	bl func_80349BD0
/* 80348F38 003124F8  2C 03 00 00 */	cmpwi r3, 0
/* 80348F3C 003124FC  7C 7F 1B 78 */	mr r31, r3
/* 80348F40 00312500  40 82 FF 64 */	bne lbl_80348EA4
/* 80348F44 00312504  38 60 00 00 */	li r3, 0
lbl_80348F48:
/* 80348F48 00312508  2C 03 00 00 */	cmpwi r3, 0
/* 80348F4C 0031250C  41 82 00 08 */	beq lbl_80348F54
/* 80348F50 00312510  48 00 00 28 */	b lbl_80348F78
lbl_80348F54:
/* 80348F54 00312514  7F C3 F3 78 */	mr r3, r30
/* 80348F58 00312518  48 00 00 20 */	b lbl_80348F78
lbl_80348F5C:
/* 80348F5C 0031251C  7F C4 F3 78 */	mr r4, r30
/* 80348F60 00312520  38 7F FC 50 */	addi r3, r31, -944
/* 80348F64 00312524  48 00 0C 6D */	bl func_80349BD0
/* 80348F68 00312528  2C 03 00 00 */	cmpwi r3, 0
/* 80348F6C 0031252C  7C 7E 1B 78 */	mr r30, r3
/* 80348F70 00312530  40 82 FF 14 */	bne lbl_80348E84
/* 80348F74 00312534  38 60 00 00 */	li r3, 0
lbl_80348F78:
/* 80348F78 00312538  2C 03 00 00 */	cmpwi r3, 0
/* 80348F7C 0031253C  41 82 00 08 */	beq lbl_80348F84
/* 80348F80 00312540  3B 83 00 0C */	addi r28, r3, 0xc
lbl_80348F84:
/* 80348F84 00312544  7F 83 E3 78 */	mr r3, r28
/* 80348F88 00312548  7F 64 DB 78 */	mr r4, r27
/* 80348F8C 0031254C  48 00 0B D5 */	bl func_80349B60
/* 80348F90 00312550  3C 60 80 5D */	lis r3, lbl_805CFC60@ha
/* 80348F94 00312554  38 63 FC 60 */	addi r3, r3, lbl_805CFC60@l
/* 80348F98 00312558  48 01 0D A9 */	bl OSUnlockMutex
/* 80348F9C 0031255C  38 00 00 00 */	li r0, 0
/* 80348FA0 00312560  90 1B 00 00 */	stw r0, 0(r27)
/* 80348FA4 00312564  39 61 00 20 */	addi r11, r1, 0x20
/* 80348FA8 00312568  4B F7 11 F9 */	bl _restgpr_27
/* 80348FAC 0031256C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80348FB0 00312570  7C 08 03 A6 */	mtlr r0
/* 80348FB4 00312574  38 21 00 20 */	addi r1, r1, 0x20
/* 80348FB8 00312578  4E 80 00 20 */	blr 
/* 80348FBC 0031257C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */