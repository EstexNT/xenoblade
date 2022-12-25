.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ADXERR_Init
ADXERR_Init:
/* 8038A188 00353748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A18C 0035374C  7C 08 02 A6 */	mflr r0
/* 8038A190 00353750  38 80 00 00 */	li r4, 0
/* 8038A194 00353754  38 A0 01 00 */	li r5, 0x100
/* 8038A198 00353758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A19C 0035375C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038A1A0 00353760  3F E0 80 5F */	lis r31, lbl_805E99C0@ha
/* 8038A1A4 00353764  3B FF 99 C0 */	addi r31, r31, lbl_805E99C0@l
/* 8038A1A8 00353768  38 7F 00 08 */	addi r3, r31, 8
/* 8038A1AC 0035376C  4B C7 A1 A5 */	bl memset
/* 8038A1B0 00353770  38 00 00 00 */	li r0, 0
/* 8038A1B4 00353774  90 1F 00 00 */	stw r0, 0(r31)
/* 8038A1B8 00353778  90 1F 00 04 */	stw r0, 4(r31)
/* 8038A1BC 0035377C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038A1C0 00353780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A1C4 00353784  7C 08 03 A6 */	mtlr r0
/* 8038A1C8 00353788  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A1CC 0035378C  4E 80 00 20 */	blr 

.global ADXERR_Finish
ADXERR_Finish:
/* 8038A1D0 00353790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A1D4 00353794  7C 08 02 A6 */	mflr r0
/* 8038A1D8 00353798  38 80 00 00 */	li r4, 0
/* 8038A1DC 0035379C  38 A0 01 00 */	li r5, 0x100
/* 8038A1E0 003537A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A1E4 003537A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038A1E8 003537A8  3F E0 80 5F */	lis r31, lbl_805E99C0@ha
/* 8038A1EC 003537AC  3B FF 99 C0 */	addi r31, r31, lbl_805E99C0@l
/* 8038A1F0 003537B0  38 7F 00 08 */	addi r3, r31, 8
/* 8038A1F4 003537B4  4B C7 A1 5D */	bl memset
/* 8038A1F8 003537B8  38 00 00 00 */	li r0, 0
/* 8038A1FC 003537BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8038A200 003537C0  90 1F 00 04 */	stw r0, 4(r31)
/* 8038A204 003537C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038A208 003537C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A20C 003537CC  7C 08 03 A6 */	mtlr r0
/* 8038A210 003537D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A214 003537D4  4E 80 00 20 */	blr 

.global ADXERR_CallErrFunc1_
ADXERR_CallErrFunc1_:
/* 8038A218 003537D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A21C 003537DC  7C 08 02 A6 */	mflr r0
/* 8038A220 003537E0  2C 03 00 00 */	cmpwi r3, 0
/* 8038A224 003537E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A228 003537E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038A22C 003537EC  3F E0 80 5F */	lis r31, lbl_805E99C0@ha
/* 8038A230 003537F0  3B FF 99 C0 */	addi r31, r31, lbl_805E99C0@l
/* 8038A234 003537F4  40 82 00 18 */	bne lbl_8038A24C
/* 8038A238 003537F8  3C 60 80 52 */	lis r3, lbl_8051AB08@ha
/* 8038A23C 003537FC  38 63 AB 08 */	addi r3, r3, lbl_8051AB08@l
/* 8038A240 00353800  4C C6 31 82 */	crclr 6
/* 8038A244 00353804  48 00 C8 51 */	bl SVM_CallErr
/* 8038A248 00353808  48 00 00 40 */	b lbl_8038A288
lbl_8038A24C:
/* 8038A24C 0035380C  7C 65 1B 78 */	mr r5, r3
/* 8038A250 00353810  38 7F 00 08 */	addi r3, r31, 8
/* 8038A254 00353814  38 80 01 00 */	li r4, 0x100
/* 8038A258 00353818  38 C0 00 FF */	li r6, 0xff
/* 8038A25C 0035381C  48 01 11 C9 */	bl criCrw_Strncpy
/* 8038A260 00353820  81 9F 00 00 */	lwz r12, 0(r31)
/* 8038A264 00353824  2C 0C 00 00 */	cmpwi r12, 0
/* 8038A268 00353828  41 82 00 14 */	beq lbl_8038A27C
/* 8038A26C 0035382C  38 9F 00 08 */	addi r4, r31, 8
/* 8038A270 00353830  80 7F 00 04 */	lwz r3, 4(r31)
/* 8038A274 00353834  7D 89 03 A6 */	mtctr r12
/* 8038A278 00353838  4E 80 04 21 */	bctrl 
lbl_8038A27C:
/* 8038A27C 0035383C  38 7F 00 08 */	addi r3, r31, 8
/* 8038A280 00353840  4C C6 31 82 */	crclr 6
/* 8038A284 00353844  48 00 C8 11 */	bl SVM_CallErr
lbl_8038A288:
/* 8038A288 00353848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A28C 0035384C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038A290 00353850  7C 08 03 A6 */	mtlr r0
/* 8038A294 00353854  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A298 00353858  4E 80 00 20 */	blr 

.global ADXERR_CallErrFunc2_
ADXERR_CallErrFunc2_:
/* 8038A29C 0035385C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A2A0 00353860  7C 08 02 A6 */	mflr r0
/* 8038A2A4 00353864  2C 03 00 00 */	cmpwi r3, 0
/* 8038A2A8 00353868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A2AC 0035386C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038A2B0 00353870  3F E0 80 5F */	lis r31, lbl_805E99C0@ha
/* 8038A2B4 00353874  3B FF 99 C0 */	addi r31, r31, lbl_805E99C0@l
/* 8038A2B8 00353878  93 C1 00 08 */	stw r30, 8(r1)
/* 8038A2BC 0035387C  7C 9E 23 78 */	mr r30, r4
/* 8038A2C0 00353880  41 82 00 0C */	beq lbl_8038A2CC
/* 8038A2C4 00353884  2C 04 00 00 */	cmpwi r4, 0
/* 8038A2C8 00353888  40 82 00 18 */	bne lbl_8038A2E0
lbl_8038A2CC:
/* 8038A2CC 0035388C  3C 60 80 52 */	lis r3, lbl_8051AB08@ha
/* 8038A2D0 00353890  38 63 AB 08 */	addi r3, r3, lbl_8051AB08@l
/* 8038A2D4 00353894  4C C6 31 82 */	crclr 6
/* 8038A2D8 00353898  48 00 C7 BD */	bl SVM_CallErr
/* 8038A2DC 0035389C  48 00 00 54 */	b lbl_8038A330
lbl_8038A2E0:
/* 8038A2E0 003538A0  7C 65 1B 78 */	mr r5, r3
/* 8038A2E4 003538A4  38 7F 00 08 */	addi r3, r31, 8
/* 8038A2E8 003538A8  38 80 01 00 */	li r4, 0x100
/* 8038A2EC 003538AC  38 C0 00 FF */	li r6, 0xff
/* 8038A2F0 003538B0  48 01 11 35 */	bl criCrw_Strncpy
/* 8038A2F4 003538B4  7F C5 F3 78 */	mr r5, r30
/* 8038A2F8 003538B8  38 7F 00 08 */	addi r3, r31, 8
/* 8038A2FC 003538BC  38 80 01 00 */	li r4, 0x100
/* 8038A300 003538C0  38 C0 00 FF */	li r6, 0xff
/* 8038A304 003538C4  48 01 11 35 */	bl criCrw_Strncat
/* 8038A308 003538C8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8038A30C 003538CC  2C 0C 00 00 */	cmpwi r12, 0
/* 8038A310 003538D0  41 82 00 14 */	beq lbl_8038A324
/* 8038A314 003538D4  38 9F 00 08 */	addi r4, r31, 8
/* 8038A318 003538D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8038A31C 003538DC  7D 89 03 A6 */	mtctr r12
/* 8038A320 003538E0  4E 80 04 21 */	bctrl 
lbl_8038A324:
/* 8038A324 003538E4  38 7F 00 08 */	addi r3, r31, 8
/* 8038A328 003538E8  4C C6 31 82 */	crclr 6
/* 8038A32C 003538EC  48 00 C7 69 */	bl SVM_CallErr
lbl_8038A330:
/* 8038A330 003538F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A334 003538F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038A338 003538F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038A33C 003538FC  7C 08 03 A6 */	mtlr r0
/* 8038A340 00353900  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A344 00353904  4E 80 00 20 */	blr 

.global ADXERR_ItoA
ADXERR_ItoA:
/* 8038A348 00353908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A34C 0035390C  7C 08 02 A6 */	mflr r0
/* 8038A350 00353910  3C C0 66 66 */	lis r6, 0x66666667@ha
/* 8038A354 00353914  39 20 00 00 */	li r9, 0
/* 8038A358 00353918  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A35C 0035391C  38 00 00 08 */	li r0, 8
/* 8038A360 00353920  39 06 66 67 */	addi r8, r6, 0x66666667@l
/* 8038A364 00353924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038A368 00353928  7C 9F 23 78 */	mr r31, r4
/* 8038A36C 0035392C  93 C1 00 08 */	stw r30, 8(r1)
/* 8038A370 00353930  7C BE 2B 78 */	mr r30, r5
/* 8038A374 00353934  7C 85 23 78 */	mr r5, r4
/* 8038A378 00353938  7C 09 03 A6 */	mtctr r0
lbl_8038A37C:
/* 8038A37C 0035393C  7C 08 18 96 */	mulhw r0, r8, r3
/* 8038A380 00353940  7C 06 16 70 */	srawi r6, r0, 2
/* 8038A384 00353944  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 8038A388 00353948  7C 00 16 70 */	srawi r0, r0, 2
/* 8038A38C 0035394C  7C C6 3A 14 */	add r6, r6, r7
/* 8038A390 00353950  1C E6 00 0A */	mulli r7, r6, 0xa
/* 8038A394 00353954  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8038A398 00353958  7C E7 18 50 */	subf r7, r7, r3
/* 8038A39C 0035395C  7C 60 32 15 */	add. r3, r0, r6
/* 8038A3A0 00353960  98 E5 00 00 */	stb r7, 0(r5)
/* 8038A3A4 00353964  40 82 00 10 */	bne lbl_8038A3B4
/* 8038A3A8 00353968  38 00 00 00 */	li r0, 0
/* 8038A3AC 0035396C  7C 04 49 AE */	stbx r0, r4, r9
/* 8038A3B0 00353970  48 00 00 C4 */	b lbl_8038A474
lbl_8038A3B4:
/* 8038A3B4 00353974  7C 08 18 96 */	mulhw r0, r8, r3
/* 8038A3B8 00353978  39 29 00 01 */	addi r9, r9, 1
/* 8038A3BC 0035397C  7C 06 16 70 */	srawi r6, r0, 2
/* 8038A3C0 00353980  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 8038A3C4 00353984  7C 00 16 70 */	srawi r0, r0, 2
/* 8038A3C8 00353988  7C C6 3A 14 */	add r6, r6, r7
/* 8038A3CC 0035398C  1C E6 00 0A */	mulli r7, r6, 0xa
/* 8038A3D0 00353990  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8038A3D4 00353994  7C E7 18 50 */	subf r7, r7, r3
/* 8038A3D8 00353998  7C 60 32 15 */	add. r3, r0, r6
/* 8038A3DC 0035399C  98 E5 00 01 */	stb r7, 1(r5)
/* 8038A3E0 003539A0  40 82 00 10 */	bne lbl_8038A3F0
/* 8038A3E4 003539A4  38 00 00 00 */	li r0, 0
/* 8038A3E8 003539A8  7C 04 49 AE */	stbx r0, r4, r9
/* 8038A3EC 003539AC  48 00 00 88 */	b lbl_8038A474
lbl_8038A3F0:
/* 8038A3F0 003539B0  7C 08 18 96 */	mulhw r0, r8, r3
/* 8038A3F4 003539B4  39 29 00 01 */	addi r9, r9, 1
/* 8038A3F8 003539B8  7C 06 16 70 */	srawi r6, r0, 2
/* 8038A3FC 003539BC  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 8038A400 003539C0  7C 00 16 70 */	srawi r0, r0, 2
/* 8038A404 003539C4  7C C6 3A 14 */	add r6, r6, r7
/* 8038A408 003539C8  1C E6 00 0A */	mulli r7, r6, 0xa
/* 8038A40C 003539CC  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8038A410 003539D0  7C E7 18 50 */	subf r7, r7, r3
/* 8038A414 003539D4  7C 60 32 15 */	add. r3, r0, r6
/* 8038A418 003539D8  98 E5 00 02 */	stb r7, 2(r5)
/* 8038A41C 003539DC  40 82 00 10 */	bne lbl_8038A42C
/* 8038A420 003539E0  38 00 00 00 */	li r0, 0
/* 8038A424 003539E4  7C 04 49 AE */	stbx r0, r4, r9
/* 8038A428 003539E8  48 00 00 4C */	b lbl_8038A474
lbl_8038A42C:
/* 8038A42C 003539EC  7C 08 18 96 */	mulhw r0, r8, r3
/* 8038A430 003539F0  39 29 00 01 */	addi r9, r9, 1
/* 8038A434 003539F4  7C 06 16 70 */	srawi r6, r0, 2
/* 8038A438 003539F8  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 8038A43C 003539FC  7C 00 16 70 */	srawi r0, r0, 2
/* 8038A440 00353A00  7C C6 3A 14 */	add r6, r6, r7
/* 8038A444 00353A04  1C E6 00 0A */	mulli r7, r6, 0xa
/* 8038A448 00353A08  54 06 0F FE */	srwi r6, r0, 0x1f
/* 8038A44C 00353A0C  7C E7 18 50 */	subf r7, r7, r3
/* 8038A450 00353A10  7C 60 32 15 */	add. r3, r0, r6
/* 8038A454 00353A14  98 E5 00 03 */	stb r7, 3(r5)
/* 8038A458 00353A18  40 82 00 10 */	bne lbl_8038A468
/* 8038A45C 00353A1C  38 00 00 00 */	li r0, 0
/* 8038A460 00353A20  7C 04 49 AE */	stbx r0, r4, r9
/* 8038A464 00353A24  48 00 00 10 */	b lbl_8038A474
lbl_8038A468:
/* 8038A468 00353A28  39 29 00 01 */	addi r9, r9, 1
/* 8038A46C 00353A2C  38 A5 00 04 */	addi r5, r5, 4
/* 8038A470 00353A30  42 00 FF 0C */	bdnz lbl_8038A37C
lbl_8038A474:
/* 8038A474 00353A34  3C 60 80 5F */	lis r3, lbl_805E9AC8@ha
/* 8038A478 00353A38  38 63 9A C8 */	addi r3, r3, lbl_805E9AC8@l
/* 8038A47C 00353A3C  4B F2 F1 3D */	bl strlen
/* 8038A480 00353A40  38 9E FF FF */	addi r4, r30, -1
/* 8038A484 00353A44  7C 03 20 00 */	cmpw r3, r4
/* 8038A488 00353A48  40 80 00 08 */	bge lbl_8038A490
/* 8038A48C 00353A4C  7C 64 1B 78 */	mr r4, r3
lbl_8038A490:
/* 8038A490 00353A50  2C 84 00 00 */	cmpwi cr1, r4, 0
/* 8038A494 00353A54  38 C0 00 00 */	li r6, 0
/* 8038A498 00353A58  40 85 01 14 */	ble cr1, lbl_8038A5AC
/* 8038A49C 00353A5C  2C 04 00 08 */	cmpwi r4, 8
/* 8038A4A0 00353A60  38 E4 FF F8 */	addi r7, r4, -8
/* 8038A4A4 00353A64  40 81 00 D0 */	ble lbl_8038A574
/* 8038A4A8 00353A68  38 A0 00 00 */	li r5, 0
/* 8038A4AC 00353A6C  41 84 00 18 */	blt cr1, lbl_8038A4C4
/* 8038A4B0 00353A70  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 8038A4B4 00353A74  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 8038A4B8 00353A78  7C 04 00 00 */	cmpw r4, r0
/* 8038A4BC 00353A7C  41 81 00 08 */	bgt lbl_8038A4C4
/* 8038A4C0 00353A80  38 A0 00 01 */	li r5, 1
lbl_8038A4C4:
/* 8038A4C4 00353A84  2C 05 00 00 */	cmpwi r5, 0
/* 8038A4C8 00353A88  41 82 00 AC */	beq lbl_8038A574
/* 8038A4CC 00353A8C  38 A7 00 07 */	addi r5, r7, 7
/* 8038A4D0 00353A90  3C 60 80 5F */	lis r3, lbl_805E9AC8@ha
/* 8038A4D4 00353A94  54 A5 E8 FE */	srwi r5, r5, 3
/* 8038A4D8 00353A98  38 04 FF FF */	addi r0, r4, -1
/* 8038A4DC 00353A9C  38 63 9A C8 */	addi r3, r3, lbl_805E9AC8@l
/* 8038A4E0 00353AA0  7C A9 03 A6 */	mtctr r5
/* 8038A4E4 00353AA4  2C 07 00 00 */	cmpwi r7, 0
/* 8038A4E8 00353AA8  40 81 00 8C */	ble lbl_8038A574
lbl_8038A4EC:
/* 8038A4EC 00353AAC  7C A6 00 50 */	subf r5, r6, r0
/* 8038A4F0 00353AB0  20 E6 FF FE */	subfic r7, r6, -2
/* 8038A4F4 00353AB4  7D 03 28 AE */	lbzx r8, r3, r5
/* 8038A4F8 00353AB8  39 86 00 02 */	addi r12, r6, 2
/* 8038A4FC 00353ABC  39 66 00 03 */	addi r11, r6, 3
/* 8038A500 00353AC0  39 46 00 04 */	addi r10, r6, 4
/* 8038A504 00353AC4  7D 1F 31 AE */	stbx r8, r31, r6
/* 8038A508 00353AC8  7C E7 22 14 */	add r7, r7, r4
/* 8038A50C 00353ACC  39 26 00 05 */	addi r9, r6, 5
/* 8038A510 00353AD0  39 06 00 06 */	addi r8, r6, 6
/* 8038A514 00353AD4  7F C7 18 AE */	lbzx r30, r7, r3
/* 8038A518 00353AD8  7C BF 32 14 */	add r5, r31, r6
/* 8038A51C 00353ADC  38 E6 00 07 */	addi r7, r6, 7
/* 8038A520 00353AE0  7D 8C 00 50 */	subf r12, r12, r0
/* 8038A524 00353AE4  9B C5 00 01 */	stb r30, 1(r5)
/* 8038A528 00353AE8  7D 6B 00 50 */	subf r11, r11, r0
/* 8038A52C 00353AEC  7D 4A 00 50 */	subf r10, r10, r0
/* 8038A530 00353AF0  7D 29 00 50 */	subf r9, r9, r0
/* 8038A534 00353AF4  7D 83 60 AE */	lbzx r12, r3, r12
/* 8038A538 00353AF8  7D 08 00 50 */	subf r8, r8, r0
/* 8038A53C 00353AFC  7C E7 00 50 */	subf r7, r7, r0
/* 8038A540 00353B00  38 C6 00 08 */	addi r6, r6, 8
/* 8038A544 00353B04  99 85 00 02 */	stb r12, 2(r5)
/* 8038A548 00353B08  7D 63 58 AE */	lbzx r11, r3, r11
/* 8038A54C 00353B0C  99 65 00 03 */	stb r11, 3(r5)
/* 8038A550 00353B10  7D 43 50 AE */	lbzx r10, r3, r10
/* 8038A554 00353B14  99 45 00 04 */	stb r10, 4(r5)
/* 8038A558 00353B18  7D 23 48 AE */	lbzx r9, r3, r9
/* 8038A55C 00353B1C  99 25 00 05 */	stb r9, 5(r5)
/* 8038A560 00353B20  7D 03 40 AE */	lbzx r8, r3, r8
/* 8038A564 00353B24  99 05 00 06 */	stb r8, 6(r5)
/* 8038A568 00353B28  7C E3 38 AE */	lbzx r7, r3, r7
/* 8038A56C 00353B2C  98 E5 00 07 */	stb r7, 7(r5)
/* 8038A570 00353B30  42 00 FF 7C */	bdnz lbl_8038A4EC
lbl_8038A574:
/* 8038A574 00353B34  3C A0 80 5F */	lis r5, lbl_805E9AC8@ha
/* 8038A578 00353B38  7C 06 20 50 */	subf r0, r6, r4
/* 8038A57C 00353B3C  38 E4 FF FF */	addi r7, r4, -1
/* 8038A580 00353B40  7C 7F 32 14 */	add r3, r31, r6
/* 8038A584 00353B44  38 A5 9A C8 */	addi r5, r5, lbl_805E9AC8@l
/* 8038A588 00353B48  7C 09 03 A6 */	mtctr r0
/* 8038A58C 00353B4C  7C 06 20 00 */	cmpw r6, r4
/* 8038A590 00353B50  40 80 00 1C */	bge lbl_8038A5AC
lbl_8038A594:
/* 8038A594 00353B54  7C 06 38 50 */	subf r0, r6, r7
/* 8038A598 00353B58  38 C6 00 01 */	addi r6, r6, 1
/* 8038A59C 00353B5C  7C 05 00 AE */	lbzx r0, r5, r0
/* 8038A5A0 00353B60  98 03 00 00 */	stb r0, 0(r3)
/* 8038A5A4 00353B64  38 63 00 01 */	addi r3, r3, 1
/* 8038A5A8 00353B68  42 00 FF EC */	bdnz lbl_8038A594
lbl_8038A5AC:
/* 8038A5AC 00353B6C  38 00 00 00 */	li r0, 0
/* 8038A5B0 00353B70  7C 1F 31 AE */	stbx r0, r31, r6
/* 8038A5B4 00353B74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038A5B8 00353B78  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038A5BC 00353B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A5C0 00353B80  7C 08 03 A6 */	mtlr r0
/* 8038A5C4 00353B84  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A5C8 00353B88  4E 80 00 20 */	blr 

.global ADXERR_ItoA2
ADXERR_ItoA2:
/* 8038A5CC 00353B8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038A5D0 00353B90  7C 08 02 A6 */	mflr r0
/* 8038A5D4 00353B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038A5D8 00353B98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038A5DC 00353B9C  7C DF 33 78 */	mr r31, r6
/* 8038A5E0 00353BA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038A5E4 00353BA4  7C BE 2B 78 */	mr r30, r5
/* 8038A5E8 00353BA8  7F E5 FB 78 */	mr r5, r31
/* 8038A5EC 00353BAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038A5F0 00353BB0  7C 9D 23 78 */	mr r29, r4
/* 8038A5F4 00353BB4  7F C4 F3 78 */	mr r4, r30
/* 8038A5F8 00353BB8  4B FF FD 51 */	bl ADXERR_ItoA
/* 8038A5FC 00353BBC  7F C3 F3 78 */	mr r3, r30
/* 8038A600 00353BC0  4B F2 EF B9 */	bl strlen
/* 8038A604 00353BC4  3C A0 80 52 */	lis r5, lbl_8051AB08@ha
/* 8038A608 00353BC8  7C C3 F8 50 */	subf r6, r3, r31
/* 8038A60C 00353BCC  38 A5 AB 08 */	addi r5, r5, lbl_8051AB08@l
/* 8038A610 00353BD0  7F C3 F3 78 */	mr r3, r30
/* 8038A614 00353BD4  7F E4 FB 78 */	mr r4, r31
/* 8038A618 00353BD8  38 C6 FF FF */	addi r6, r6, -1
/* 8038A61C 00353BDC  38 A5 00 06 */	addi r5, r5, 6
/* 8038A620 00353BE0  48 01 0E 19 */	bl criCrw_Strncat
/* 8038A624 00353BE4  7F C3 F3 78 */	mr r3, r30
/* 8038A628 00353BE8  4B F2 EF 91 */	bl strlen
/* 8038A62C 00353BEC  23 E3 00 04 */	subfic r31, r3, 4
/* 8038A630 00353BF0  7F C3 F3 78 */	mr r3, r30
/* 8038A634 00353BF4  4B F2 EF 85 */	bl strlen
/* 8038A638 00353BF8  7C 60 1B 78 */	mr r0, r3
/* 8038A63C 00353BFC  7F A3 EB 78 */	mr r3, r29
/* 8038A640 00353C00  7F E5 FB 78 */	mr r5, r31
/* 8038A644 00353C04  7C 9E 02 14 */	add r4, r30, r0
/* 8038A648 00353C08  4B FF FD 01 */	bl ADXERR_ItoA
/* 8038A64C 00353C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038A650 00353C10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038A654 00353C14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038A658 00353C18  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038A65C 00353C1C  7C 08 03 A6 */	mtlr r0
/* 8038A660 00353C20  38 21 00 20 */	addi r1, r1, 0x20
/* 8038A664 00353C24  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8051AB08
lbl_8051AB08:
	.asciz "Error"
	.byte 0x20, 0x00
