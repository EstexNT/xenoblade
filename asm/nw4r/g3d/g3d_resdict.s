.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global Get__Q34nw4r3g3d6ResDicCFQ34nw4r3g3d7ResName
Get__Q34nw4r3g3d6ResDicCFQ34nw4r3g3d7ResName:
/* 803D7960 003A0F20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D7964 003A0F24  7C 08 02 A6 */	mflr r0
/* 803D7968 003A0F28  80 A3 00 00 */	lwz r5, 0(r3)
/* 803D796C 003A0F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7970 003A0F30  39 05 00 08 */	addi r8, r5, 8
/* 803D7974 003A0F34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D7978 003A0F38  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 803D797C 003A0F3C  80 64 00 00 */	lwz r3, 0(r4)
/* 803D7980 003A0F40  54 00 20 36 */	slwi r0, r0, 4
/* 803D7984 003A0F44  38 E3 00 04 */	addi r7, r3, 4
/* 803D7988 003A0F48  80 C3 00 00 */	lwz r6, 0(r3)
/* 803D798C 003A0F4C  7C 65 02 14 */	add r3, r5, r0
/* 803D7990 003A0F50  3B E3 00 08 */	addi r31, r3, 8
/* 803D7994 003A0F54  48 00 00 50 */	b .L_803D79E4
.L_803D7998:
/* 803D7998 003A0F58  54 60 EC FE */	rlwinm r0, r3, 0x1d, 0x13, 0x1f
/* 803D799C 003A0F5C  7F E8 FB 78 */	mr r8, r31
/* 803D79A0 003A0F60  7C 00 30 40 */	cmplw r0, r6
/* 803D79A4 003A0F64  54 63 07 7E */	clrlwi r3, r3, 0x1d
/* 803D79A8 003A0F68  40 80 00 2C */	bge .L_803D79D4
/* 803D79AC 003A0F6C  7C 07 00 AE */	lbzx r0, r7, r0
/* 803D79B0 003A0F70  7C 00 07 74 */	extsb r0, r0
/* 803D79B4 003A0F74  7C 00 1E 30 */	sraw r0, r0, r3
/* 803D79B8 003A0F78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D79BC 003A0F7C  41 82 00 18 */	beq .L_803D79D4
/* 803D79C0 003A0F80  A0 1F 00 06 */	lhz r0, 6(r31)
/* 803D79C4 003A0F84  54 00 20 36 */	slwi r0, r0, 4
/* 803D79C8 003A0F88  7C 65 02 14 */	add r3, r5, r0
/* 803D79CC 003A0F8C  3B E3 00 08 */	addi r31, r3, 8
/* 803D79D0 003A0F90  48 00 00 14 */	b .L_803D79E4
.L_803D79D4:
/* 803D79D4 003A0F94  A0 1F 00 04 */	lhz r0, 4(r31)
/* 803D79D8 003A0F98  54 00 20 36 */	slwi r0, r0, 4
/* 803D79DC 003A0F9C  7C 65 02 14 */	add r3, r5, r0
/* 803D79E0 003A0FA0  3B E3 00 08 */	addi r31, r3, 8
.L_803D79E4:
/* 803D79E4 003A0FA4  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803D79E8 003A0FA8  A0 08 00 00 */	lhz r0, 0(r8)
/* 803D79EC 003A0FAC  7C 00 18 40 */	cmplw r0, r3
/* 803D79F0 003A0FB0  41 81 FF A8 */	bgt .L_803D7998
/* 803D79F4 003A0FB4  80 1F 00 08 */	lwz r0, 8(r31)
/* 803D79F8 003A0FB8  7C 83 23 78 */	mr r3, r4
/* 803D79FC 003A0FBC  38 81 00 08 */	addi r4, r1, 8
/* 803D7A00 003A0FC0  7C A5 02 14 */	add r5, r5, r0
/* 803D7A04 003A0FC4  38 05 FF FC */	addi r0, r5, -4
/* 803D7A08 003A0FC8  90 01 00 08 */	stw r0, 8(r1)
/* 803D7A0C 003A0FCC  4B FF FE 05 */	bl __eq__Q34nw4r3g3d7ResNameCFQ34nw4r3g3d7ResName
/* 803D7A10 003A0FD0  2C 03 00 00 */	cmpwi r3, 0
/* 803D7A14 003A0FD4  41 82 00 0C */	beq .L_803D7A20
/* 803D7A18 003A0FD8  7F E3 FB 78 */	mr r3, r31
/* 803D7A1C 003A0FDC  48 00 00 08 */	b .L_803D7A24
.L_803D7A20:
/* 803D7A20 003A0FE0  38 60 00 00 */	li r3, 0
.L_803D7A24:
/* 803D7A24 003A0FE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7A28 003A0FE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D7A2C 003A0FEC  7C 08 03 A6 */	mtlr r0
/* 803D7A30 003A0FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7A34 003A0FF4  4E 80 00 20 */	blr 

.global Get__Q34nw4r3g3d6ResDicCFPCcUl
Get__Q34nw4r3g3d6ResDicCFPCcUl:
/* 803D7A38 003A0FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7A3C 003A0FFC  7C 08 02 A6 */	mflr r0
/* 803D7A40 003A1000  80 C3 00 00 */	lwz r6, 0(r3)
/* 803D7A44 003A1004  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7A48 003A1008  38 E6 00 08 */	addi r7, r6, 8
/* 803D7A4C 003A100C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D7A50 003A1010  A0 06 00 0C */	lhz r0, 0xc(r6)
/* 803D7A54 003A1014  54 00 20 36 */	slwi r0, r0, 4
/* 803D7A58 003A1018  7C 66 02 14 */	add r3, r6, r0
/* 803D7A5C 003A101C  3B E3 00 08 */	addi r31, r3, 8
/* 803D7A60 003A1020  48 00 00 50 */	b .L_803D7AB0
.L_803D7A64:
/* 803D7A64 003A1024  54 60 EC FE */	rlwinm r0, r3, 0x1d, 0x13, 0x1f
/* 803D7A68 003A1028  7F E7 FB 78 */	mr r7, r31
/* 803D7A6C 003A102C  7C 00 28 40 */	cmplw r0, r5
/* 803D7A70 003A1030  54 63 07 7E */	clrlwi r3, r3, 0x1d
/* 803D7A74 003A1034  40 80 00 2C */	bge .L_803D7AA0
/* 803D7A78 003A1038  7C 04 00 AE */	lbzx r0, r4, r0
/* 803D7A7C 003A103C  7C 00 07 74 */	extsb r0, r0
/* 803D7A80 003A1040  7C 00 1E 30 */	sraw r0, r0, r3
/* 803D7A84 003A1044  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D7A88 003A1048  41 82 00 18 */	beq .L_803D7AA0
/* 803D7A8C 003A104C  A0 1F 00 06 */	lhz r0, 6(r31)
/* 803D7A90 003A1050  54 00 20 36 */	slwi r0, r0, 4
/* 803D7A94 003A1054  7C 66 02 14 */	add r3, r6, r0
/* 803D7A98 003A1058  3B E3 00 08 */	addi r31, r3, 8
/* 803D7A9C 003A105C  48 00 00 14 */	b .L_803D7AB0
.L_803D7AA0:
/* 803D7AA0 003A1060  A0 1F 00 04 */	lhz r0, 4(r31)
/* 803D7AA4 003A1064  54 00 20 36 */	slwi r0, r0, 4
/* 803D7AA8 003A1068  7C 66 02 14 */	add r3, r6, r0
/* 803D7AAC 003A106C  3B E3 00 08 */	addi r31, r3, 8
.L_803D7AB0:
/* 803D7AB0 003A1070  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803D7AB4 003A1074  A0 07 00 00 */	lhz r0, 0(r7)
/* 803D7AB8 003A1078  7C 00 18 40 */	cmplw r0, r3
/* 803D7ABC 003A107C  41 81 FF A8 */	bgt .L_803D7A64
/* 803D7AC0 003A1080  80 1F 00 08 */	lwz r0, 8(r31)
/* 803D7AC4 003A1084  2C 00 00 00 */	cmpwi r0, 0
/* 803D7AC8 003A1088  41 82 00 2C */	beq .L_803D7AF4
/* 803D7ACC 003A108C  7C 83 23 78 */	mr r3, r4
/* 803D7AD0 003A1090  41 82 00 0C */	beq .L_803D7ADC
/* 803D7AD4 003A1094  7C 86 02 14 */	add r4, r6, r0
/* 803D7AD8 003A1098  48 00 00 08 */	b .L_803D7AE0
.L_803D7ADC:
/* 803D7ADC 003A109C  38 80 00 00 */	li r4, 0
.L_803D7AE0:
/* 803D7AE0 003A10A0  4B EE AD 55 */	bl strcmp
/* 803D7AE4 003A10A4  2C 03 00 00 */	cmpwi r3, 0
/* 803D7AE8 003A10A8  40 82 00 0C */	bne .L_803D7AF4
/* 803D7AEC 003A10AC  7F E3 FB 78 */	mr r3, r31
/* 803D7AF0 003A10B0  48 00 00 08 */	b .L_803D7AF8
.L_803D7AF4:
/* 803D7AF4 003A10B4  38 60 00 00 */	li r3, 0
.L_803D7AF8:
/* 803D7AF8 003A10B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7AFC 003A10BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7B00 003A10C0  7C 08 03 A6 */	mtlr r0
/* 803D7B04 003A10C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7B08 003A10C8  4E 80 00 20 */	blr 

.global __vc__Q34nw4r3g3d6ResDicCFPCc
__vc__Q34nw4r3g3d6ResDicCFPCc:
/* 803D7B0C 003A10CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7B10 003A10D0  7C 08 02 A6 */	mflr r0
/* 803D7B14 003A10D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7B18 003A10D8  80 03 00 00 */	lwz r0, 0(r3)
/* 803D7B1C 003A10DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D7B20 003A10E0  7C 9F 23 78 */	mr r31, r4
/* 803D7B24 003A10E4  2C 00 00 00 */	cmpwi r0, 0
/* 803D7B28 003A10E8  93 C1 00 08 */	stw r30, 8(r1)
/* 803D7B2C 003A10EC  7C 7E 1B 78 */	mr r30, r3
/* 803D7B30 003A10F0  41 82 00 3C */	beq .L_803D7B6C
/* 803D7B34 003A10F4  2C 04 00 00 */	cmpwi r4, 0
/* 803D7B38 003A10F8  41 82 00 34 */	beq .L_803D7B6C
/* 803D7B3C 003A10FC  7F E3 FB 78 */	mr r3, r31
/* 803D7B40 003A1100  4B EE 1A 79 */	bl strlen
/* 803D7B44 003A1104  7C 65 1B 78 */	mr r5, r3
/* 803D7B48 003A1108  7F C3 F3 78 */	mr r3, r30
/* 803D7B4C 003A110C  7F E4 FB 78 */	mr r4, r31
/* 803D7B50 003A1110  4B FF FE E9 */	bl Get__Q34nw4r3g3d6ResDicCFPCcUl
/* 803D7B54 003A1114  2C 03 00 00 */	cmpwi r3, 0
/* 803D7B58 003A1118  41 82 00 14 */	beq .L_803D7B6C
/* 803D7B5C 003A111C  80 9E 00 00 */	lwz r4, 0(r30)
/* 803D7B60 003A1120  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803D7B64 003A1124  7C 64 02 14 */	add r3, r4, r0
/* 803D7B68 003A1128  48 00 00 08 */	b .L_803D7B70
.L_803D7B6C:
/* 803D7B6C 003A112C  38 60 00 00 */	li r3, 0
.L_803D7B70:
/* 803D7B70 003A1130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7B74 003A1134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7B78 003A1138  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D7B7C 003A113C  7C 08 03 A6 */	mtlr r0
/* 803D7B80 003A1140  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7B84 003A1144  4E 80 00 20 */	blr 

.global __vc__Q34nw4r3g3d6ResDicCFQ34nw4r3g3d7ResName
__vc__Q34nw4r3g3d6ResDicCFQ34nw4r3g3d7ResName:
/* 803D7B88 003A1148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D7B8C 003A114C  7C 08 02 A6 */	mflr r0
/* 803D7B90 003A1150  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7B94 003A1154  80 03 00 00 */	lwz r0, 0(r3)
/* 803D7B98 003A1158  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D7B9C 003A115C  7C 7F 1B 78 */	mr r31, r3
/* 803D7BA0 003A1160  2C 00 00 00 */	cmpwi r0, 0
/* 803D7BA4 003A1164  41 82 00 34 */	beq .L_803D7BD8
/* 803D7BA8 003A1168  80 04 00 00 */	lwz r0, 0(r4)
/* 803D7BAC 003A116C  2C 00 00 00 */	cmpwi r0, 0
/* 803D7BB0 003A1170  41 82 00 28 */	beq .L_803D7BD8
/* 803D7BB4 003A1174  90 01 00 08 */	stw r0, 8(r1)
/* 803D7BB8 003A1178  38 81 00 08 */	addi r4, r1, 8
/* 803D7BBC 003A117C  4B FF FD A5 */	bl Get__Q34nw4r3g3d6ResDicCFQ34nw4r3g3d7ResName
/* 803D7BC0 003A1180  2C 03 00 00 */	cmpwi r3, 0
/* 803D7BC4 003A1184  41 82 00 14 */	beq .L_803D7BD8
/* 803D7BC8 003A1188  80 9F 00 00 */	lwz r4, 0(r31)
/* 803D7BCC 003A118C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803D7BD0 003A1190  7C 64 02 14 */	add r3, r4, r0
/* 803D7BD4 003A1194  48 00 00 08 */	b .L_803D7BDC
.L_803D7BD8:
/* 803D7BD8 003A1198  38 60 00 00 */	li r3, 0
.L_803D7BDC:
/* 803D7BDC 003A119C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7BE0 003A11A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D7BE4 003A11A4  7C 08 03 A6 */	mtlr r0
/* 803D7BE8 003A11A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7BEC 003A11AC  4E 80 00 20 */	blr 

.global GetIndex__Q34nw4r3g3d6ResDicCFPCc
GetIndex__Q34nw4r3g3d6ResDicCFPCc:
/* 803D7BF0 003A11B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7BF4 003A11B4  7C 08 02 A6 */	mflr r0
/* 803D7BF8 003A11B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7BFC 003A11BC  80 03 00 00 */	lwz r0, 0(r3)
/* 803D7C00 003A11C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D7C04 003A11C4  7C 9F 23 78 */	mr r31, r4
/* 803D7C08 003A11C8  2C 00 00 00 */	cmpwi r0, 0
/* 803D7C0C 003A11CC  93 C1 00 08 */	stw r30, 8(r1)
/* 803D7C10 003A11D0  7C 7E 1B 78 */	mr r30, r3
/* 803D7C14 003A11D4  41 82 00 44 */	beq .L_803D7C58
/* 803D7C18 003A11D8  2C 04 00 00 */	cmpwi r4, 0
/* 803D7C1C 003A11DC  41 82 00 3C */	beq .L_803D7C58
/* 803D7C20 003A11E0  7F E3 FB 78 */	mr r3, r31
/* 803D7C24 003A11E4  4B EE 19 95 */	bl strlen
/* 803D7C28 003A11E8  7C 65 1B 78 */	mr r5, r3
/* 803D7C2C 003A11EC  7F C3 F3 78 */	mr r3, r30
/* 803D7C30 003A11F0  7F E4 FB 78 */	mr r4, r31
/* 803D7C34 003A11F4  4B FF FE 05 */	bl Get__Q34nw4r3g3d6ResDicCFPCcUl
/* 803D7C38 003A11F8  2C 03 00 00 */	cmpwi r3, 0
/* 803D7C3C 003A11FC  41 82 00 1C */	beq .L_803D7C58
/* 803D7C40 003A1200  80 9E 00 00 */	lwz r4, 0(r30)
/* 803D7C44 003A1204  38 04 00 18 */	addi r0, r4, 0x18
/* 803D7C48 003A1208  7C 00 18 50 */	subf r0, r0, r3
/* 803D7C4C 003A120C  7C 00 26 70 */	srawi r0, r0, 4
/* 803D7C50 003A1210  7C 60 01 94 */	addze r3, r0
/* 803D7C54 003A1214  48 00 00 08 */	b .L_803D7C5C
.L_803D7C58:
/* 803D7C58 003A1218  38 60 FF FF */	li r3, -1
.L_803D7C5C:
/* 803D7C5C 003A121C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7C60 003A1220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7C64 003A1224  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D7C68 003A1228  7C 08 03 A6 */	mtlr r0
/* 803D7C6C 003A122C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7C70 003A1230  4E 80 00 20 */	blr 

.global GetIndex__Q34nw4r3g3d6ResDicCFQ34nw4r3g3d7ResName
GetIndex__Q34nw4r3g3d6ResDicCFQ34nw4r3g3d7ResName:
/* 803D7C74 003A1234  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D7C78 003A1238  7C 08 02 A6 */	mflr r0
/* 803D7C7C 003A123C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7C80 003A1240  80 03 00 00 */	lwz r0, 0(r3)
/* 803D7C84 003A1244  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D7C88 003A1248  7C 7F 1B 78 */	mr r31, r3
/* 803D7C8C 003A124C  2C 00 00 00 */	cmpwi r0, 0
/* 803D7C90 003A1250  41 82 00 3C */	beq .L_803D7CCC
/* 803D7C94 003A1254  80 04 00 00 */	lwz r0, 0(r4)
/* 803D7C98 003A1258  2C 00 00 00 */	cmpwi r0, 0
/* 803D7C9C 003A125C  41 82 00 30 */	beq .L_803D7CCC
/* 803D7CA0 003A1260  90 01 00 08 */	stw r0, 8(r1)
/* 803D7CA4 003A1264  38 81 00 08 */	addi r4, r1, 8
/* 803D7CA8 003A1268  4B FF FC B9 */	bl Get__Q34nw4r3g3d6ResDicCFQ34nw4r3g3d7ResName
/* 803D7CAC 003A126C  2C 03 00 00 */	cmpwi r3, 0
/* 803D7CB0 003A1270  41 82 00 1C */	beq .L_803D7CCC
/* 803D7CB4 003A1274  80 9F 00 00 */	lwz r4, 0(r31)
/* 803D7CB8 003A1278  38 04 00 18 */	addi r0, r4, 0x18
/* 803D7CBC 003A127C  7C 00 18 50 */	subf r0, r0, r3
/* 803D7CC0 003A1280  7C 00 26 70 */	srawi r0, r0, 4
/* 803D7CC4 003A1284  7C 60 01 94 */	addze r3, r0
/* 803D7CC8 003A1288  48 00 00 08 */	b .L_803D7CD0
.L_803D7CCC:
/* 803D7CCC 003A128C  38 60 FF FF */	li r3, -1
.L_803D7CD0:
/* 803D7CD0 003A1290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7CD4 003A1294  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D7CD8 003A1298  7C 08 03 A6 */	mtlr r0
/* 803D7CDC 003A129C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7CE0 003A12A0  4E 80 00 20 */	blr 
