.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802A92D8
func_802A92D8:
/* 802A92D8 00272898  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A92DC 0027289C  7C 08 02 A6 */	mflr r0
/* 802A92E0 002728A0  2C 04 00 00 */	cmpwi r4, 0
/* 802A92E4 002728A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A92E8 002728A8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A92EC 002728AC  7C 3F 0B 78 */	mr r31, r1
/* 802A92F0 002728B0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A92F4 002728B4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A92F8 002728B8  7C 9D 23 78 */	mr r29, r4
/* 802A92FC 002728BC  93 81 00 20 */	stw r28, 0x20(r1)
/* 802A9300 002728C0  7C 7C 1B 78 */	mr r28, r3
/* 802A9304 002728C4  41 81 00 0C */	bgt lbl_802A9310
/* 802A9308 002728C8  38 60 00 00 */	li r3, 0
/* 802A930C 002728CC  48 00 00 C8 */	b lbl_802A93D4
lbl_802A9310:
/* 802A9310 002728D0  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A9314 002728D4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A9318 002728D8  40 82 00 0C */	bne lbl_802A9324
/* 802A931C 002728DC  38 60 00 00 */	li r3, 0
/* 802A9320 002728E0  48 00 00 B4 */	b lbl_802A93D4
lbl_802A9324:
/* 802A9324 002728E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802A9328 002728E8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A932C 002728EC  7D 89 03 A6 */	mtctr r12
/* 802A9330 002728F0  4E 80 04 21 */	bctrl 
/* 802A9334 002728F4  2C 03 00 00 */	cmpwi r3, 0
/* 802A9338 002728F8  41 82 00 0C */	beq lbl_802A9344
/* 802A933C 002728FC  38 60 00 00 */	li r3, 0
/* 802A9340 00272900  48 00 00 94 */	b lbl_802A93D4
lbl_802A9344:
/* 802A9344 00272904  38 60 00 0F */	li r3, 0xf
/* 802A9348 00272908  38 80 00 01 */	li r4, 1
/* 802A934C 0027290C  4B FF 9F C1 */	bl func_802A330C
/* 802A9350 00272910  2C 03 00 00 */	cmpwi r3, 0
/* 802A9354 00272914  40 82 00 0C */	bne lbl_802A9360
/* 802A9358 00272918  38 60 00 00 */	li r3, 0
/* 802A935C 0027291C  48 00 00 78 */	b lbl_802A93D4
lbl_802A9360:
/* 802A9360 00272920  38 60 00 28 */	li r3, 0x28
/* 802A9364 00272924  4B FF A1 81 */	bl func_802A34E4
/* 802A9368 00272928  2C 03 00 00 */	cmpwi r3, 0
/* 802A936C 0027292C  7C 7E 1B 78 */	mr r30, r3
/* 802A9370 00272930  40 82 00 0C */	bne lbl_802A937C
/* 802A9374 00272934  38 60 00 00 */	li r3, 0
/* 802A9378 00272938  48 00 00 5C */	b lbl_802A93D4
lbl_802A937C:
/* 802A937C 0027293C  41 82 00 34 */	beq lbl_802A93B0
/* 802A9380 00272940  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A9384 00272944  4B FF A6 FD */	bl func_802A3A80
/* 802A9388 00272948  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_VISION_BREAK@ha
/* 802A938C 0027294C  38 63 D5 18 */	addi r3, r3, __vt__cf_CVS_THREAD_VISION_BREAK@l
/* 802A9390 00272950  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A9394 00272954  93 9E 00 20 */	stw r28, 0x20(r30)
/* 802A9398 00272958  93 BE 00 24 */	stw r29, 0x24(r30)
/* 802A939C 0027295C  48 00 00 14 */	b lbl_802A93B0
/* 802A93A0 00272960  38 60 00 00 */	li r3, 0
/* 802A93A4 00272964  38 80 00 00 */	li r4, 0
/* 802A93A8 00272968  38 A0 00 00 */	li r5, 0
/* 802A93AC 0027296C  48 01 28 11 */	bl __throw
lbl_802A93B0:
/* 802A93B0 00272970  3C A0 80 54 */	lis r5, lbl_8053D500@ha
/* 802A93B4 00272974  7F C3 F3 78 */	mr r3, r30
/* 802A93B8 00272978  38 A5 D5 00 */	addi r5, r5, lbl_8053D500@l
/* 802A93BC 0027297C  80 05 00 04 */	lwz r0, 4(r5)
/* 802A93C0 00272980  80 85 00 00 */	lwz r4, 0(r5)
/* 802A93C4 00272984  90 9E 00 00 */	stw r4, 0(r30)
/* 802A93C8 00272988  90 1E 00 04 */	stw r0, 4(r30)
/* 802A93CC 0027298C  80 05 00 08 */	lwz r0, 8(r5)
/* 802A93D0 00272990  90 1E 00 08 */	stw r0, 8(r30)
lbl_802A93D4:
/* 802A93D4 00272994  7F EA FB 78 */	mr r10, r31
/* 802A93D8 00272998  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A93DC 0027299C  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A93E0 002729A0  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802A93E4 002729A4  83 8A 00 20 */	lwz r28, 0x20(r10)
/* 802A93E8 002729A8  81 41 00 00 */	lwz r10, 0(r1)
/* 802A93EC 002729AC  80 0A 00 04 */	lwz r0, 4(r10)
/* 802A93F0 002729B0  7D 41 53 78 */	mr r1, r10
/* 802A93F4 002729B4  7C 08 03 A6 */	mtlr r0
/* 802A93F8 002729B8  4E 80 00 20 */	blr 

.global func_802A93FC
func_802A93FC:
/* 802A93FC 002729BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A9400 002729C0  7C 08 02 A6 */	mflr r0
/* 802A9404 002729C4  3C A0 80 54 */	lis r5, lbl_8053D50C@ha
/* 802A9408 002729C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A940C 002729CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A9410 002729D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A9414 002729D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A9418 002729D8  7C 7D 1B 78 */	mr r29, r3
/* 802A941C 002729DC  84 85 D5 0C */	lwzu r4, lbl_8053D50C@l(r5)
/* 802A9420 002729E0  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 802A9424 002729E4  80 05 00 04 */	lwz r0, 4(r5)
/* 802A9428 002729E8  90 03 00 04 */	stw r0, 4(r3)
/* 802A942C 002729EC  2C 06 00 00 */	cmpwi r6, 0
/* 802A9430 002729F0  90 83 00 00 */	stw r4, 0(r3)
/* 802A9434 002729F4  80 05 00 08 */	lwz r0, 8(r5)
/* 802A9438 002729F8  90 03 00 08 */	stw r0, 8(r3)
/* 802A943C 002729FC  41 82 01 04 */	beq lbl_802A9540
/* 802A9440 00272A00  81 86 00 00 */	lwz r12, 0(r6)
/* 802A9444 00272A04  7C C3 33 78 */	mr r3, r6
/* 802A9448 00272A08  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A944C 00272A0C  7D 89 03 A6 */	mtctr r12
/* 802A9450 00272A10  4E 80 04 21 */	bctrl 
/* 802A9454 00272A14  2C 03 00 00 */	cmpwi r3, 0
/* 802A9458 00272A18  40 82 00 E8 */	bne lbl_802A9540
/* 802A945C 00272A1C  4B E0 D7 49 */	bl func_800B6BA4
/* 802A9460 00272A20  80 83 00 04 */	lwz r4, 4(r3)
/* 802A9464 00272A24  7C 7F 1B 78 */	mr r31, r3
/* 802A9468 00272A28  83 C4 00 00 */	lwz r30, 0(r4)
/* 802A946C 00272A2C  48 00 00 20 */	b lbl_802A948C
lbl_802A9470:
/* 802A9470 00272A30  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A9474 00272A34  4B EC 69 C1 */	bl func_8016FE34
/* 802A9478 00272A38  2C 03 00 00 */	cmpwi r3, 0
/* 802A947C 00272A3C  41 82 00 0C */	beq lbl_802A9488
/* 802A9480 00272A40  38 63 3E 9C */	addi r3, r3, 0x3e9c
/* 802A9484 00272A44  4B E1 54 A1 */	bl func_800BE924
lbl_802A9488:
/* 802A9488 00272A48  83 DE 00 00 */	lwz r30, 0(r30)
lbl_802A948C:
/* 802A948C 00272A4C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802A9490 00272A50  7C 1E 00 40 */	cmplw r30, r0
/* 802A9494 00272A54  40 82 FF DC */	bne lbl_802A9470
/* 802A9498 00272A58  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802A949C 00272A5C  2C 00 00 03 */	cmpwi r0, 3
/* 802A94A0 00272A60  41 80 00 54 */	blt lbl_802A94F4
/* 802A94A4 00272A64  83 FD 00 20 */	lwz r31, 0x20(r29)
/* 802A94A8 00272A68  2C 1F 00 00 */	cmpwi r31, 0
/* 802A94AC 00272A6C  41 82 00 08 */	beq lbl_802A94B4
/* 802A94B0 00272A70  3B FF 3E 9C */	addi r31, r31, 0x3e9c
lbl_802A94B4:
/* 802A94B4 00272A74  38 60 00 03 */	li r3, 3
/* 802A94B8 00272A78  48 18 CA 45 */	bl func_80435EFC
/* 802A94BC 00272A7C  54 60 08 3C */	slwi r0, r3, 1
/* 802A94C0 00272A80  38 6D 94 B8 */	addi r3, r13, lbl_80665638@sda21
/* 802A94C4 00272A84  7C A3 02 AE */	lhax r5, r3, r0
/* 802A94C8 00272A88  7F A3 EB 78 */	mr r3, r29
/* 802A94CC 00272A8C  7F E4 FB 78 */	mr r4, r31
/* 802A94D0 00272A90  4B FF A7 75 */	bl func_802A3C44
/* 802A94D4 00272A94  2C 03 00 00 */	cmpwi r3, 0
/* 802A94D8 00272A98  40 82 00 68 */	bne lbl_802A9540
/* 802A94DC 00272A9C  81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 802A94E0 00272AA0  7F A3 EB 78 */	mr r3, r29
/* 802A94E4 00272AA4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A94E8 00272AA8  7D 89 03 A6 */	mtctr r12
/* 802A94EC 00272AAC  4E 80 04 21 */	bctrl 
/* 802A94F0 00272AB0  48 00 00 50 */	b lbl_802A9540
lbl_802A94F4:
/* 802A94F4 00272AB4  83 FD 00 20 */	lwz r31, 0x20(r29)
/* 802A94F8 00272AB8  2C 1F 00 00 */	cmpwi r31, 0
/* 802A94FC 00272ABC  41 82 00 08 */	beq lbl_802A9504
/* 802A9500 00272AC0  3B FF 3E 9C */	addi r31, r31, 0x3e9c
lbl_802A9504:
/* 802A9504 00272AC4  38 60 00 03 */	li r3, 3
/* 802A9508 00272AC8  48 18 C9 F5 */	bl func_80435EFC
/* 802A950C 00272ACC  54 60 08 3C */	slwi r0, r3, 1
/* 802A9510 00272AD0  38 6D 94 C0 */	addi r3, r13, lbl_80665640@sda21
/* 802A9514 00272AD4  7C A3 02 AE */	lhax r5, r3, r0
/* 802A9518 00272AD8  7F A3 EB 78 */	mr r3, r29
/* 802A951C 00272ADC  7F E4 FB 78 */	mr r4, r31
/* 802A9520 00272AE0  4B FF A7 25 */	bl func_802A3C44
/* 802A9524 00272AE4  2C 03 00 00 */	cmpwi r3, 0
/* 802A9528 00272AE8  40 82 00 18 */	bne lbl_802A9540
/* 802A952C 00272AEC  81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 802A9530 00272AF0  7F A3 EB 78 */	mr r3, r29
/* 802A9534 00272AF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9538 00272AF8  7D 89 03 A6 */	mtctr r12
/* 802A953C 00272AFC  4E 80 04 21 */	bctrl 
lbl_802A9540:
/* 802A9540 00272B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A9544 00272B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A9548 00272B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A954C 00272B0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A9550 00272B10  7C 08 03 A6 */	mtlr r0
/* 802A9554 00272B14  38 21 00 20 */	addi r1, r1, 0x20
/* 802A9558 00272B18  4E 80 00 20 */	blr 

.global func_802A955C
func_802A955C:
/* 802A955C 00272B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9560 00272B20  7C 08 02 A6 */	mflr r0
/* 802A9564 00272B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9568 00272B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A956C 00272B2C  7C 7F 1B 78 */	mr r31, r3
/* 802A9570 00272B30  4B FF A9 19 */	bl func_802A3E88
/* 802A9574 00272B34  2C 03 00 00 */	cmpwi r3, 0
/* 802A9578 00272B38  40 82 00 18 */	bne lbl_802A9590
/* 802A957C 00272B3C  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A9580 00272B40  7F E3 FB 78 */	mr r3, r31
/* 802A9584 00272B44  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9588 00272B48  7D 89 03 A6 */	mtctr r12
/* 802A958C 00272B4C  4E 80 04 21 */	bctrl 
lbl_802A9590:
/* 802A9590 00272B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9594 00272B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9598 00272B58  7C 08 03 A6 */	mtlr r0
/* 802A959C 00272B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A95A0 00272B60  4E 80 00 20 */	blr 

.global func_802A95A4
func_802A95A4:
/* 802A95A4 00272B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A95A8 00272B68  7C 08 02 A6 */	mflr r0
/* 802A95AC 00272B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A95B0 00272B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A95B4 00272B74  7C 9F 23 78 */	mr r31, r4
/* 802A95B8 00272B78  93 C1 00 08 */	stw r30, 8(r1)
/* 802A95BC 00272B7C  7C 7E 1B 78 */	mr r30, r3
/* 802A95C0 00272B80  4B FF A6 2D */	bl func_802A3BEC
/* 802A95C4 00272B84  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A95C8 00272B88  2C 03 00 00 */	cmpwi r3, 0
/* 802A95CC 00272B8C  41 82 00 08 */	beq lbl_802A95D4
/* 802A95D0 00272B90  38 63 3E 9C */	addi r3, r3, 0x3e9c
lbl_802A95D4:
/* 802A95D4 00272B94  7C 03 F8 40 */	cmplw r3, r31
/* 802A95D8 00272B98  40 82 00 0C */	bne lbl_802A95E4
/* 802A95DC 00272B9C  38 00 00 00 */	li r0, 0
/* 802A95E0 00272BA0  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_802A95E4:
/* 802A95E4 00272BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A95E8 00272BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A95EC 00272BAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A95F0 00272BB0  7C 08 03 A6 */	mtlr r0
/* 802A95F4 00272BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A95F8 00272BB8  4E 80 00 20 */	blr 

.global func_802A95FC
func_802A95FC:
/* 802A95FC 00272BBC  38 60 00 0F */	li r3, 0xf
/* 802A9600 00272BC0  4E 80 00 20 */	blr 

.global func_802A9604
func_802A9604:
/* 802A9604 00272BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9608 00272BC8  7C 08 02 A6 */	mflr r0
/* 802A960C 00272BCC  38 60 00 01 */	li r3, 1
/* 802A9610 00272BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9614 00272BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9618 00272BD8  4B FF E4 3D */	bl func_802A7A54
/* 802A961C 00272BDC  2C 03 00 00 */	cmpwi r3, 0
/* 802A9620 00272BE0  7C 7F 1B 78 */	mr r31, r3
/* 802A9624 00272BE4  40 82 00 0C */	bne lbl_802A9630
/* 802A9628 00272BE8  38 60 00 00 */	li r3, 0
/* 802A962C 00272BEC  48 00 00 80 */	b lbl_802A96AC
lbl_802A9630:
/* 802A9630 00272BF0  38 60 00 32 */	li r3, 0x32
/* 802A9634 00272BF4  38 80 00 01 */	li r4, 1
/* 802A9638 00272BF8  4B FF 9C D5 */	bl func_802A330C
/* 802A963C 00272BFC  2C 03 00 00 */	cmpwi r3, 0
/* 802A9640 00272C00  40 82 00 0C */	bne lbl_802A964C
/* 802A9644 00272C04  38 60 00 00 */	li r3, 0
/* 802A9648 00272C08  48 00 00 64 */	b lbl_802A96AC
lbl_802A964C:
/* 802A964C 00272C0C  4B DD 8C A9 */	bl func_800822F4
/* 802A9650 00272C10  28 03 00 38 */	cmplwi r3, 0x38
/* 802A9654 00272C14  40 80 00 14 */	bge lbl_802A9668
/* 802A9658 00272C18  38 60 00 02 */	li r3, 2
/* 802A965C 00272C1C  48 18 C8 A1 */	bl func_80435EFC
/* 802A9660 00272C20  38 83 00 65 */	addi r4, r3, 0x65
/* 802A9664 00272C24  48 00 00 2C */	b lbl_802A9690
lbl_802A9668:
/* 802A9668 00272C28  4B DD 8C 8D */	bl func_800822F4
/* 802A966C 00272C2C  28 03 00 62 */	cmplwi r3, 0x62
/* 802A9670 00272C30  40 80 00 14 */	bge lbl_802A9684
/* 802A9674 00272C34  38 60 00 02 */	li r3, 2
/* 802A9678 00272C38  48 18 C8 85 */	bl func_80435EFC
/* 802A967C 00272C3C  38 83 00 67 */	addi r4, r3, 0x67
/* 802A9680 00272C40  48 00 00 10 */	b lbl_802A9690
lbl_802A9684:
/* 802A9684 00272C44  38 60 00 02 */	li r3, 2
/* 802A9688 00272C48  48 18 C8 75 */	bl func_80435EFC
/* 802A968C 00272C4C  38 83 00 69 */	addi r4, r3, 0x69
lbl_802A9690:
/* 802A9690 00272C50  2C 1F 00 00 */	cmpwi r31, 0
/* 802A9694 00272C54  41 82 00 08 */	beq lbl_802A969C
/* 802A9698 00272C58  3B FF 3E 9C */	addi r31, r31, 0x3e9c
lbl_802A969C:
/* 802A969C 00272C5C  7F E3 FB 78 */	mr r3, r31
/* 802A96A0 00272C60  38 A0 00 32 */	li r5, 0x32
/* 802A96A4 00272C64  4B FF A6 B1 */	bl func_802A3D54
/* 802A96A8 00272C68  38 60 00 00 */	li r3, 0
lbl_802A96AC:
/* 802A96AC 00272C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A96B0 00272C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A96B4 00272C74  7C 08 03 A6 */	mtlr r0
/* 802A96B8 00272C78  38 21 00 10 */	addi r1, r1, 0x10
/* 802A96BC 00272C7C  4E 80 00 20 */	blr 