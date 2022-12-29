.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_801678F0
func_801678F0:
/* 801678F0 00130EB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801678F4 00130EB4  7C 08 02 A6 */	mflr r0
/* 801678F8 00130EB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801678FC 00130EBC  BF 41 00 08 */	stmw r26, 8(r1)
/* 80167900 00130EC0  7C 7A 1B 78 */	mr r26, r3
/* 80167904 00130EC4  7C 9B 23 78 */	mr r27, r4
/* 80167908 00130EC8  7C BC 2B 78 */	mr r28, r5
/* 8016790C 00130ECC  7C DD 33 78 */	mr r29, r6
/* 80167910 00130ED0  80 0D A9 C8 */	lwz r0, lbl_80666B48@sda21(r13)
/* 80167914 00130ED4  2C 00 00 00 */	cmpwi r0, 0
/* 80167918 00130ED8  41 82 00 0C */	beq .L_80167924
/* 8016791C 00130EDC  38 60 00 00 */	li r3, 0
/* 80167920 00130EE0  48 00 00 E4 */	b .L_80167A04
.L_80167924:
/* 80167924 00130EE4  48 2C FC 91 */	bl func_804375B4
/* 80167928 00130EE8  7C 64 1B 78 */	mr r4, r3
/* 8016792C 00130EEC  38 60 4A C8 */	li r3, 0x4ac8
/* 80167930 00130EF0  48 2C D1 2D */	bl func_80434A5C
/* 80167934 00130EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80167938 00130EF8  7C 7E 1B 78 */	mr r30, r3
/* 8016793C 00130EFC  41 82 00 B0 */	beq .L_801679EC
/* 80167940 00130F00  48 2D D0 D9 */	bl __ct__8CProcessFv
/* 80167944 00130F04  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 80167948 00130F08  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 8016794C 00130F0C  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 80167950 00130F10  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80167954 00130F14  39 08 CE 10 */	addi r8, r8, lbl_8050CE10@l
/* 80167958 00130F18  3C A0 80 53 */	lis r5, __vt__CMenuItem@ha
/* 8016795C 00130F1C  80 C8 00 04 */	lwz r6, 4(r8)
/* 80167960 00130F20  3B E0 00 00 */	li r31, 0
/* 80167964 00130F24  80 08 00 00 */	lwz r0, 0(r8)
/* 80167968 00130F28  38 A5 41 90 */	addi r5, r5, __vt__CMenuItem@l
/* 8016796C 00130F2C  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80167970 00130F30  38 05 00 24 */	addi r0, r5, 0x24
/* 80167974 00130F34  38 7E 00 60 */	addi r3, r30, 0x60
/* 80167978 00130F38  38 80 00 00 */	li r4, 0
/* 8016797C 00130F3C  90 DE 00 40 */	stw r6, 0x40(r30)
/* 80167980 00130F40  80 C8 00 08 */	lwz r6, 8(r8)
/* 80167984 00130F44  90 DE 00 44 */	stw r6, 0x44(r30)
/* 80167988 00130F48  80 C8 00 04 */	lwz r6, 4(r8)
/* 8016798C 00130F4C  80 E8 00 00 */	lwz r7, 0(r8)
/* 80167990 00130F50  90 FE 00 48 */	stw r7, 0x48(r30)
/* 80167994 00130F54  90 DE 00 4C */	stw r6, 0x4c(r30)
/* 80167998 00130F58  80 C8 00 08 */	lwz r6, 8(r8)
/* 8016799C 00130F5C  90 DE 00 50 */	stw r6, 0x50(r30)
/* 801679A0 00130F60  9B FE 00 54 */	stb r31, 0x54(r30)
/* 801679A4 00130F64  9B FE 00 55 */	stb r31, 0x55(r30)
/* 801679A8 00130F68  90 BE 00 10 */	stw r5, 0x10(r30)
/* 801679AC 00130F6C  90 1E 00 58 */	stw r0, 0x58(r30)
/* 801679B0 00130F70  93 7E 00 5C */	stw r27, 0x5c(r30)
/* 801679B4 00130F74  48 05 BF C1 */	bl func_801C3974
/* 801679B8 00130F78  38 7E 00 80 */	addi r3, r30, 0x80
/* 801679BC 00130F7C  38 80 00 00 */	li r4, 0
/* 801679C0 00130F80  38 A0 00 00 */	li r5, 0
/* 801679C4 00130F84  48 05 C5 0D */	bl func_801C3ED0
/* 801679C8 00130F88  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 801679CC 00130F8C  38 80 00 00 */	li r4, 0
/* 801679D0 00130F90  38 A0 00 00 */	li r5, 0
/* 801679D4 00130F94  38 C0 00 00 */	li r6, 0
/* 801679D8 00130F98  38 E0 00 01 */	li r7, 1
/* 801679DC 00130F9C  48 06 27 BD */	bl __ct__CItemBoxGrid
/* 801679E0 00130FA0  9B FE 4A C4 */	stb r31, 0x4ac4(r30)
/* 801679E4 00130FA4  9B 9E 4A C5 */	stb r28, 0x4ac5(r30)
/* 801679E8 00130FA8  9B BE 4A C6 */	stb r29, 0x4ac6(r30)
.L_801679EC:
/* 801679EC 00130FAC  93 CD A9 C8 */	stw r30, lbl_80666B48@sda21(r13)
/* 801679F0 00130FB0  7F C3 F3 78 */	mr r3, r30
/* 801679F4 00130FB4  7F 44 D3 78 */	mr r4, r26
/* 801679F8 00130FB8  38 A0 00 00 */	li r5, 0
/* 801679FC 00130FBC  48 2D D2 79 */	bl func_80444C74
/* 80167A00 00130FC0  80 6D A9 C8 */	lwz r3, lbl_80666B48@sda21(r13)
.L_80167A04:
/* 80167A04 00130FC4  BB 41 00 08 */	lmw r26, 8(r1)
/* 80167A08 00130FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80167A0C 00130FCC  7C 08 03 A6 */	mtlr r0
/* 80167A10 00130FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80167A14 00130FD4  4E 80 00 20 */	blr 

.global func_80167A18
func_80167A18:
/* 80167A18 00130FD8  80 6D A9 C8 */	lwz r3, lbl_80666B48@sda21(r13)
/* 80167A1C 00130FDC  7C 03 00 D0 */	neg r0, r3
/* 80167A20 00130FE0  7C 00 1B 78 */	or r0, r0, r3
/* 80167A24 00130FE4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80167A28 00130FE8  4E 80 00 20 */	blr 

.global func_80167A2C
func_80167A2C:
/* 80167A2C 00130FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167A30 00130FF0  7C 08 02 A6 */	mflr r0
/* 80167A34 00130FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167A38 00130FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80167A3C 00130FFC  7C 7F 1B 78 */	mr r31, r3
/* 80167A40 00131000  38 63 00 B8 */	addi r3, r3, 0xb8
/* 80167A44 00131004  93 C1 00 08 */	stw r30, 8(r1)
/* 80167A48 00131008  48 06 65 6D */	bl func_801CDFB4
/* 80167A4C 0013100C  7C 60 1B 78 */	mr r0, r3
/* 80167A50 00131010  38 7F 00 80 */	addi r3, r31, 0x80
/* 80167A54 00131014  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80167A58 00131018  48 05 C7 91 */	bl func_801C41E8
/* 80167A5C 0013101C  4B F1 F7 DD */	bl func_80087238
/* 80167A60 00131020  7C 7E 1B 78 */	mr r30, r3
/* 80167A64 00131024  38 60 FF FF */	li r3, -1
/* 80167A68 00131028  4B F1 F5 35 */	bl func_80086F9C
/* 80167A6C 0013102C  2C 03 00 00 */	cmpwi r3, 0
/* 80167A70 00131030  41 82 00 68 */	beq .L_80167AD8
/* 80167A74 00131034  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 80167A78 00131038  81 5E 00 04 */	lwz r10, 4(r30)
/* 80167A7C 0013103C  70 09 80 04 */	andi. r9, r0, 0x8004
/* 80167A80 00131040  70 05 20 01 */	andi. r5, r0, 0x2001
/* 80167A84 00131044  70 03 40 02 */	andi. r3, r0, 0x4002
/* 80167A88 00131048  54 07 03 DE */	rlwinm r7, r0, 0, 0xf, 0xf
/* 80167A8C 0013104C  50 07 07 38 */	rlwimi r7, r0, 0, 0x1c, 0x1c
/* 80167A90 00131050  55 4B 5F FE */	rlwinm r11, r10, 0xb, 0x1f, 0x1f
/* 80167A94 00131054  7D 09 00 D0 */	neg r8, r9
/* 80167A98 00131058  7C 85 00 D0 */	neg r4, r5
/* 80167A9C 0013105C  7C 03 00 D0 */	neg r0, r3
/* 80167AA0 00131060  7C C7 00 D0 */	neg r6, r7
/* 80167AA4 00131064  7C 84 2B 78 */	or r4, r4, r5
/* 80167AA8 00131068  7D 08 4B 78 */	or r8, r8, r9
/* 80167AAC 0013106C  7C C5 3B 78 */	or r5, r6, r7
/* 80167AB0 00131070  7C 00 1B 78 */	or r0, r0, r3
/* 80167AB4 00131074  55 06 0F FE */	srwi r6, r8, 0x1f
/* 80167AB8 00131078  55 43 57 FE */	rlwinm r3, r10, 0xa, 0x1f, 0x1f
/* 80167ABC 0013107C  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 80167AC0 00131080  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80167AC4 00131084  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80167AC8 00131088  55 47 47 FE */	rlwinm r7, r10, 8, 0x1f, 0x1f
/* 80167ACC 0013108C  55 48 BF FE */	rlwinm r8, r10, 0x17, 0x1f, 0x1f
/* 80167AD0 00131090  55 49 B7 FE */	rlwinm r9, r10, 0x16, 0x1f, 0x1f
/* 80167AD4 00131094  48 00 00 64 */	b .L_80167B38
.L_80167AD8:
/* 80167AD8 00131098  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 80167ADC 0013109C  81 5E 00 04 */	lwz r10, 4(r30)
/* 80167AE0 001310A0  70 09 80 04 */	andi. r9, r0, 0x8004
/* 80167AE4 001310A4  70 05 20 01 */	andi. r5, r0, 0x2001
/* 80167AE8 001310A8  70 03 40 02 */	andi. r3, r0, 0x4002
/* 80167AEC 001310AC  54 07 03 DE */	rlwinm r7, r0, 0, 0xf, 0xf
/* 80167AF0 001310B0  50 07 07 38 */	rlwimi r7, r0, 0, 0x1c, 0x1c
/* 80167AF4 001310B4  55 4B E7 FE */	rlwinm r11, r10, 0x1c, 0x1f, 0x1f
/* 80167AF8 001310B8  7D 09 00 D0 */	neg r8, r9
/* 80167AFC 001310BC  7C 85 00 D0 */	neg r4, r5
/* 80167B00 001310C0  7C 03 00 D0 */	neg r0, r3
/* 80167B04 001310C4  7C C7 00 D0 */	neg r6, r7
/* 80167B08 001310C8  7C 84 2B 78 */	or r4, r4, r5
/* 80167B0C 001310CC  7D 08 4B 78 */	or r8, r8, r9
/* 80167B10 001310D0  7C C5 3B 78 */	or r5, r6, r7
/* 80167B14 001310D4  7C 00 1B 78 */	or r0, r0, r3
/* 80167B18 001310D8  55 06 0F FE */	srwi r6, r8, 0x1f
/* 80167B1C 001310DC  55 43 DF FE */	rlwinm r3, r10, 0x1b, 0x1f, 0x1f
/* 80167B20 001310E0  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 80167B24 001310E4  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80167B28 001310E8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80167B2C 001310EC  55 47 AF FE */	rlwinm r7, r10, 0x15, 0x1f, 0x1f
/* 80167B30 001310F0  55 48 BF FE */	rlwinm r8, r10, 0x17, 0x1f, 0x1f
/* 80167B34 001310F4  55 49 D7 FE */	rlwinm r9, r10, 0x1a, 0x1f, 0x1f
.L_80167B38:
/* 80167B38 001310F8  2C 0B 00 00 */	cmpwi r11, 0
/* 80167B3C 001310FC  41 82 00 10 */	beq .L_80167B4C
/* 80167B40 00131100  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167B44 00131104  48 06 4F AD */	bl func_801CCAF0
/* 80167B48 00131108  48 00 00 D0 */	b .L_80167C18
.L_80167B4C:
/* 80167B4C 0013110C  2C 03 00 00 */	cmpwi r3, 0
/* 80167B50 00131110  41 82 00 40 */	beq .L_80167B90
/* 80167B54 00131114  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167B58 00131118  48 06 35 A5 */	bl func_801CB0FC
/* 80167B5C 0013111C  2C 03 00 00 */	cmpwi r3, 0
/* 80167B60 00131120  41 82 00 14 */	beq .L_80167B74
/* 80167B64 00131124  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167B68 00131128  38 80 00 00 */	li r4, 0
/* 80167B6C 0013112C  48 06 4C 45 */	bl func_801CC7B0
/* 80167B70 00131130  48 00 00 A8 */	b .L_80167C18
.L_80167B74:
/* 80167B74 00131134  38 7F 00 80 */	addi r3, r31, 0x80
/* 80167B78 00131138  48 05 C5 D5 */	bl func_801C414C
/* 80167B7C 0013113C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167B80 00131140  48 06 38 0D */	bl func_801CB38C
/* 80167B84 00131144  38 00 00 03 */	li r0, 3
/* 80167B88 00131148  98 1F 4A C4 */	stb r0, 0x4ac4(r31)
/* 80167B8C 0013114C  48 00 00 8C */	b .L_80167C18
.L_80167B90:
/* 80167B90 00131150  2C 06 00 00 */	cmpwi r6, 0
/* 80167B94 00131154  41 82 00 10 */	beq .L_80167BA4
/* 80167B98 00131158  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167B9C 0013115C  48 06 3A 55 */	bl func_801CB5F0
/* 80167BA0 00131160  48 00 00 78 */	b .L_80167C18
.L_80167BA4:
/* 80167BA4 00131164  2C 05 00 00 */	cmpwi r5, 0
/* 80167BA8 00131168  41 82 00 10 */	beq .L_80167BB8
/* 80167BAC 0013116C  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167BB0 00131170  48 06 3E 55 */	bl func_801CBA04
/* 80167BB4 00131174  48 00 00 64 */	b .L_80167C18
.L_80167BB8:
/* 80167BB8 00131178  2C 04 00 00 */	cmpwi r4, 0
/* 80167BBC 0013117C  41 82 00 10 */	beq .L_80167BCC
/* 80167BC0 00131180  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167BC4 00131184  48 06 42 25 */	bl func_801CBDE8
/* 80167BC8 00131188  48 00 00 50 */	b .L_80167C18
.L_80167BCC:
/* 80167BCC 0013118C  2C 00 00 00 */	cmpwi r0, 0
/* 80167BD0 00131190  41 82 00 10 */	beq .L_80167BE0
/* 80167BD4 00131194  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167BD8 00131198  48 06 45 15 */	bl func_801CC0EC
/* 80167BDC 0013119C  48 00 00 3C */	b .L_80167C18
.L_80167BE0:
/* 80167BE0 001311A0  2C 07 00 00 */	cmpwi r7, 0
/* 80167BE4 001311A4  41 82 00 10 */	beq .L_80167BF4
/* 80167BE8 001311A8  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167BEC 001311AC  48 06 49 F1 */	bl func_801CC5DC
/* 80167BF0 001311B0  48 00 00 28 */	b .L_80167C18
.L_80167BF4:
/* 80167BF4 001311B4  2C 08 00 00 */	cmpwi r8, 0
/* 80167BF8 001311B8  41 82 00 10 */	beq .L_80167C08
/* 80167BFC 001311BC  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167C00 001311C0  48 06 60 41 */	bl func_801CDC40
/* 80167C04 001311C4  48 00 00 14 */	b .L_80167C18
.L_80167C08:
/* 80167C08 001311C8  2C 09 00 00 */	cmpwi r9, 0
/* 80167C0C 001311CC  41 82 00 0C */	beq .L_80167C18
/* 80167C10 001311D0  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80167C14 001311D4  48 06 62 D5 */	bl func_801CDEE8
.L_80167C18:
/* 80167C18 001311D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167C1C 001311DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80167C20 001311E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80167C24 001311E4  7C 08 03 A6 */	mtlr r0
/* 80167C28 001311E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80167C2C 001311EC  4E 80 00 20 */	blr 

.global func_80167C30
func_80167C30:
/* 80167C30 001311F0  38 63 FF A8 */	addi r3, r3, -88
/* 80167C34 001311F4  4B FF FC 18 */	b func_8016784C

.global func_80167C38
func_80167C38:
/* 80167C38 001311F8  38 63 FF A8 */	addi r3, r3, -88
/* 80167C3C 001311FC  4B FF EB FC */	b func_80166838


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_801678F0
	.4byte 0x00000128
	.4byte lbl_8000DDDC
	.4byte func_80167A2C
	.4byte 0x00000204
	.4byte lbl_8000DE2C