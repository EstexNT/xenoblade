.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global BTM_SecAddDevice
BTM_SecAddDevice:
/* 802E6244 002AF804  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E6248 002AF808  7C 08 02 A6 */	mflr r0
/* 802E624C 002AF80C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E6250 002AF810  39 61 00 30 */	addi r11, r1, 0x30
/* 802E6254 002AF814  4B FD 3E F5 */	bl _savegpr_24
/* 802E6258 002AF818  3D 20 80 5C */	lis r9, lbl_805BF9F8@ha
/* 802E625C 002AF81C  7C 78 1B 78 */	mr r24, r3
/* 802E6260 002AF820  39 29 F9 F8 */	addi r9, r9, lbl_805BF9F8@l
/* 802E6264 002AF824  7C 99 23 78 */	mr r25, r4
/* 802E6268 002AF828  7C BA 2B 78 */	mr r26, r5
/* 802E626C 002AF82C  7C DB 33 78 */	mr r27, r6
/* 802E6270 002AF830  7C FC 3B 78 */	mr r28, r7
/* 802E6274 002AF834  7D 1D 43 78 */	mr r29, r8
/* 802E6278 002AF838  3B C9 1F 30 */	addi r30, r9, 0x1f30
/* 802E627C 002AF83C  3B E0 00 00 */	li r31, 0
lbl_802E6280:
/* 802E6280 002AF840  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 802E6284 002AF844  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E6288 002AF848  41 82 00 20 */	beq lbl_802E62A8
/* 802E628C 002AF84C  7F 04 C3 78 */	mr r4, r24
/* 802E6290 002AF850  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802E6294 002AF854  38 A0 00 06 */	li r5, 6
/* 802E6298 002AF858  4B FD 85 95 */	bl memcmp
/* 802E629C 002AF85C  2C 03 00 00 */	cmpwi r3, 0
/* 802E62A0 002AF860  40 82 00 08 */	bne lbl_802E62A8
/* 802E62A4 002AF864  48 00 00 18 */	b lbl_802E62BC
lbl_802E62A8:
/* 802E62A8 002AF868  3B FF 00 01 */	addi r31, r31, 1
/* 802E62AC 002AF86C  3B DE 00 88 */	addi r30, r30, 0x88
/* 802E62B0 002AF870  2C 1F 00 10 */	cmpwi r31, 0x10
/* 802E62B4 002AF874  41 80 FF CC */	blt lbl_802E6280
/* 802E62B8 002AF878  3B C0 00 00 */	li r30, 0
lbl_802E62BC:
/* 802E62BC 002AF87C  2C 1E 00 00 */	cmpwi r30, 0
/* 802E62C0 002AF880  40 82 00 20 */	bne lbl_802E62E0
/* 802E62C4 002AF884  7F 03 C3 78 */	mr r3, r24
/* 802E62C8 002AF888  48 00 02 51 */	bl btm_sec_alloc_dev
/* 802E62CC 002AF88C  2C 03 00 00 */	cmpwi r3, 0
/* 802E62D0 002AF890  7C 7E 1B 78 */	mr r30, r3
/* 802E62D4 002AF894  40 82 00 24 */	bne lbl_802E62F8
/* 802E62D8 002AF898  38 60 00 00 */	li r3, 0
/* 802E62DC 002AF89C  48 00 00 D8 */	b lbl_802E63B4
lbl_802E62E0:
/* 802E62E0 002AF8A0  3C 80 80 5C */	lis r4, lbl_805BF9F8@ha
/* 802E62E4 002AF8A4  38 84 F9 F8 */	addi r4, r4, lbl_805BF9F8@l
/* 802E62E8 002AF8A8  80 64 19 74 */	lwz r3, 0x1974(r4)
/* 802E62EC 002AF8AC  90 7E 00 0C */	stw r3, 0xc(r30)
/* 802E62F0 002AF8B0  38 03 00 01 */	addi r0, r3, 1
/* 802E62F4 002AF8B4  90 04 19 74 */	stw r0, 0x1974(r4)
lbl_802E62F8:
/* 802E62F8 002AF8B8  2C 19 00 00 */	cmpwi r25, 0
/* 802E62FC 002AF8BC  41 82 00 14 */	beq lbl_802E6310
/* 802E6300 002AF8C0  7F 24 CB 78 */	mr r4, r25
/* 802E6304 002AF8C4  38 7E 00 22 */	addi r3, r30, 0x22
/* 802E6308 002AF8C8  38 A0 00 03 */	li r5, 3
/* 802E630C 002AF8CC  4B D1 DC F5 */	bl memcpy
lbl_802E6310:
/* 802E6310 002AF8D0  38 7E 00 35 */	addi r3, r30, 0x35
/* 802E6314 002AF8D4  38 80 00 00 */	li r4, 0
/* 802E6318 002AF8D8  38 A0 00 41 */	li r5, 0x41
/* 802E631C 002AF8DC  4B D1 E0 35 */	bl memset
/* 802E6320 002AF8E0  2C 1A 00 00 */	cmpwi r26, 0
/* 802E6324 002AF8E4  41 82 00 2C */	beq lbl_802E6350
/* 802E6328 002AF8E8  88 1A 00 00 */	lbz r0, 0(r26)
/* 802E632C 002AF8EC  2C 00 00 00 */	cmpwi r0, 0
/* 802E6330 002AF8F0  41 82 00 20 */	beq lbl_802E6350
/* 802E6334 002AF8F4  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 802E6338 002AF8F8  7F 44 D3 78 */	mr r4, r26
/* 802E633C 002AF8FC  38 7E 00 35 */	addi r3, r30, 0x35
/* 802E6340 002AF900  38 A0 00 40 */	li r5, 0x40
/* 802E6344 002AF904  60 00 00 08 */	ori r0, r0, 8
/* 802E6348 002AF908  98 1E 00 76 */	stb r0, 0x76(r30)
/* 802E634C 002AF90C  4B FD C4 2D */	bl strncpy
lbl_802E6350:
/* 802E6350 002AF910  2C 1B 00 00 */	cmpwi r27, 0
/* 802E6354 002AF914  41 82 00 18 */	beq lbl_802E636C
/* 802E6358 002AF918  7F 64 DB 78 */	mr r4, r27
/* 802E635C 002AF91C  38 7E 00 77 */	addi r3, r30, 0x77
/* 802E6360 002AF920  38 A0 00 08 */	li r5, 8
/* 802E6364 002AF924  4B D1 DC 9D */	bl memcpy
/* 802E6368 002AF928  48 00 00 14 */	b lbl_802E637C
lbl_802E636C:
/* 802E636C 002AF92C  38 7E 00 77 */	addi r3, r30, 0x77
/* 802E6370 002AF930  38 80 00 00 */	li r4, 0
/* 802E6374 002AF934  38 A0 00 08 */	li r5, 8
/* 802E6378 002AF938  4B D1 DF D9 */	bl memset
lbl_802E637C:
/* 802E637C 002AF93C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802E6380 002AF940  2C 1D 00 00 */	cmpwi r29, 0
/* 802E6384 002AF944  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802E6388 002AF948  80 1C 00 04 */	lwz r0, 4(r28)
/* 802E638C 002AF94C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802E6390 002AF950  41 82 00 20 */	beq lbl_802E63B0
/* 802E6394 002AF954  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 802E6398 002AF958  7F A4 EB 78 */	mr r4, r29
/* 802E639C 002AF95C  38 7E 00 25 */	addi r3, r30, 0x25
/* 802E63A0 002AF960  38 A0 00 10 */	li r5, 0x10
/* 802E63A4 002AF964  60 00 00 10 */	ori r0, r0, 0x10
/* 802E63A8 002AF968  98 1E 00 76 */	stb r0, 0x76(r30)
/* 802E63AC 002AF96C  4B D1 DC 55 */	bl memcpy
lbl_802E63B0:
/* 802E63B0 002AF970  38 60 00 01 */	li r3, 1
lbl_802E63B4:
/* 802E63B4 002AF974  39 61 00 30 */	addi r11, r1, 0x30
/* 802E63B8 002AF978  4B FD 3D DD */	bl _restgpr_24
/* 802E63BC 002AF97C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E63C0 002AF980  7C 08 03 A6 */	mtlr r0
/* 802E63C4 002AF984  38 21 00 30 */	addi r1, r1, 0x30
/* 802E63C8 002AF988  4E 80 00 20 */	blr 

.global BTM_SecDeleteDevice
BTM_SecDeleteDevice:
/* 802E63CC 002AF98C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E63D0 002AF990  7C 08 02 A6 */	mflr r0
/* 802E63D4 002AF994  3C 80 80 5C */	lis r4, lbl_805BF9F8@ha
/* 802E63D8 002AF998  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E63DC 002AF99C  38 84 F9 F8 */	addi r4, r4, lbl_805BF9F8@l
/* 802E63E0 002AF9A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E63E4 002AF9A4  3B E0 00 00 */	li r31, 0
/* 802E63E8 002AF9A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E63EC 002AF9AC  3B C4 1F 30 */	addi r30, r4, 0x1f30
/* 802E63F0 002AF9B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E63F4 002AF9B4  7C 7D 1B 78 */	mr r29, r3
lbl_802E63F8:
/* 802E63F8 002AF9B8  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 802E63FC 002AF9BC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E6400 002AF9C0  41 82 00 20 */	beq lbl_802E6420
/* 802E6404 002AF9C4  7F A4 EB 78 */	mr r4, r29
/* 802E6408 002AF9C8  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802E640C 002AF9CC  38 A0 00 06 */	li r5, 6
/* 802E6410 002AF9D0  4B FD 84 1D */	bl memcmp
/* 802E6414 002AF9D4  2C 03 00 00 */	cmpwi r3, 0
/* 802E6418 002AF9D8  40 82 00 08 */	bne lbl_802E6420
/* 802E641C 002AF9DC  48 00 00 18 */	b lbl_802E6434
lbl_802E6420:
/* 802E6420 002AF9E0  3B FF 00 01 */	addi r31, r31, 1
/* 802E6424 002AF9E4  3B DE 00 88 */	addi r30, r30, 0x88
/* 802E6428 002AF9E8  2C 1F 00 10 */	cmpwi r31, 0x10
/* 802E642C 002AF9EC  41 80 FF CC */	blt lbl_802E63F8
/* 802E6430 002AF9F0  3B C0 00 00 */	li r30, 0
lbl_802E6434:
/* 802E6434 002AF9F4  2C 1E 00 00 */	cmpwi r30, 0
/* 802E6438 002AF9F8  40 82 00 0C */	bne lbl_802E6444
/* 802E643C 002AF9FC  38 60 00 00 */	li r3, 0
/* 802E6440 002AFA00  48 00 00 1C */	b lbl_802E645C
lbl_802E6444:
/* 802E6444 002AFA04  38 00 00 00 */	li r0, 0
/* 802E6448 002AFA08  7F A3 EB 78 */	mr r3, r29
/* 802E644C 002AFA0C  98 1E 00 76 */	stb r0, 0x76(r30)
/* 802E6450 002AFA10  38 80 00 00 */	li r4, 0
/* 802E6454 002AFA14  48 00 1A 89 */	bl BTM_DeleteStoredLinkKey
/* 802E6458 002AFA18  38 60 00 01 */	li r3, 1
lbl_802E645C:
/* 802E645C 002AFA1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E6460 002AFA20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E6464 002AFA24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E6468 002AFA28  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E646C 002AFA2C  7C 08 03 A6 */	mtlr r0
/* 802E6470 002AFA30  38 21 00 20 */	addi r1, r1, 0x20
/* 802E6474 002AFA34  4E 80 00 20 */	blr 

.global BTM_SecReadDevName
BTM_SecReadDevName:
/* 802E6478 002AFA38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E647C 002AFA3C  7C 08 02 A6 */	mflr r0
/* 802E6480 002AFA40  3C 80 80 5C */	lis r4, lbl_805BF9F8@ha
/* 802E6484 002AFA44  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E6488 002AFA48  38 84 F9 F8 */	addi r4, r4, lbl_805BF9F8@l
/* 802E648C 002AFA4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E6490 002AFA50  3B E0 00 00 */	li r31, 0
/* 802E6494 002AFA54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E6498 002AFA58  3B C4 1F 30 */	addi r30, r4, 0x1f30
/* 802E649C 002AFA5C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E64A0 002AFA60  3B A0 00 00 */	li r29, 0
/* 802E64A4 002AFA64  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E64A8 002AFA68  7C 7C 1B 78 */	mr r28, r3
lbl_802E64AC:
/* 802E64AC 002AFA6C  88 1E 00 76 */	lbz r0, 0x76(r30)
/* 802E64B0 002AFA70  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E64B4 002AFA74  41 82 00 20 */	beq lbl_802E64D4
/* 802E64B8 002AFA78  7F 84 E3 78 */	mr r4, r28
/* 802E64BC 002AFA7C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802E64C0 002AFA80  38 A0 00 06 */	li r5, 6
/* 802E64C4 002AFA84  4B FD 83 69 */	bl memcmp
/* 802E64C8 002AFA88  2C 03 00 00 */	cmpwi r3, 0
/* 802E64CC 002AFA8C  40 82 00 08 */	bne lbl_802E64D4
/* 802E64D0 002AFA90  48 00 00 18 */	b lbl_802E64E8
lbl_802E64D4:
/* 802E64D4 002AFA94  3B FF 00 01 */	addi r31, r31, 1
/* 802E64D8 002AFA98  3B DE 00 88 */	addi r30, r30, 0x88
/* 802E64DC 002AFA9C  2C 1F 00 10 */	cmpwi r31, 0x10
/* 802E64E0 002AFAA0  41 80 FF CC */	blt lbl_802E64AC
/* 802E64E4 002AFAA4  3B C0 00 00 */	li r30, 0
lbl_802E64E8:
/* 802E64E8 002AFAA8  2C 1E 00 00 */	cmpwi r30, 0
/* 802E64EC 002AFAAC  41 82 00 08 */	beq lbl_802E64F4
/* 802E64F0 002AFAB0  3B BE 00 35 */	addi r29, r30, 0x35
lbl_802E64F4:
/* 802E64F4 002AFAB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E64F8 002AFAB8  7F A3 EB 78 */	mr r3, r29
/* 802E64FC 002AFABC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E6500 002AFAC0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E6504 002AFAC4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E6508 002AFAC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E650C 002AFACC  7C 08 03 A6 */	mtlr r0
/* 802E6510 002AFAD0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E6514 002AFAD4  4E 80 00 20 */	blr 

.global btm_sec_alloc_dev
btm_sec_alloc_dev:
/* 802E6518 002AFAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E651C 002AFADC  7C 08 02 A6 */	mflr r0
/* 802E6520 002AFAE0  3C 80 80 5C */	lis r4, lbl_805BF9F8@ha
/* 802E6524 002AFAE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E6528 002AFAE8  38 00 00 10 */	li r0, 0x10
/* 802E652C 002AFAEC  38 84 F9 F8 */	addi r4, r4, lbl_805BF9F8@l
/* 802E6530 002AFAF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E6534 002AFAF4  3B E0 00 00 */	li r31, 0
/* 802E6538 002AFAF8  93 C1 00 08 */	stw r30, 8(r1)
/* 802E653C 002AFAFC  7C 7E 1B 78 */	mr r30, r3
/* 802E6540 002AFB00  38 60 00 00 */	li r3, 0
/* 802E6544 002AFB04  7C 09 03 A6 */	mtctr r0
lbl_802E6548:
/* 802E6548 002AFB08  88 04 1F A6 */	lbz r0, 0x1fa6(r4)
/* 802E654C 002AFB0C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E6550 002AFB10  40 82 00 1C */	bne lbl_802E656C
/* 802E6554 002AFB14  1C 03 00 88 */	mulli r0, r3, 0x88
/* 802E6558 002AFB18  3C 60 80 5C */	lis r3, lbl_805BF9F8@ha
/* 802E655C 002AFB1C  38 63 F9 F8 */	addi r3, r3, lbl_805BF9F8@l
/* 802E6560 002AFB20  7C 63 02 14 */	add r3, r3, r0
/* 802E6564 002AFB24  3B E3 1F 30 */	addi r31, r3, 0x1f30
/* 802E6568 002AFB28  48 00 00 10 */	b lbl_802E6578
lbl_802E656C:
/* 802E656C 002AFB2C  38 84 00 88 */	addi r4, r4, 0x88
/* 802E6570 002AFB30  38 63 00 01 */	addi r3, r3, 1
/* 802E6574 002AFB34  42 00 FF D4 */	bdnz lbl_802E6548
lbl_802E6578:
/* 802E6578 002AFB38  2C 1F 00 00 */	cmpwi r31, 0
/* 802E657C 002AFB3C  40 82 00 0C */	bne lbl_802E6588
/* 802E6580 002AFB40  48 00 01 F9 */	bl btm_find_oldest_dev
/* 802E6584 002AFB44  7C 7F 1B 78 */	mr r31, r3
lbl_802E6588:
/* 802E6588 002AFB48  7F E3 FB 78 */	mr r3, r31
/* 802E658C 002AFB4C  38 80 00 00 */	li r4, 0
/* 802E6590 002AFB50  38 A0 00 88 */	li r5, 0x88
/* 802E6594 002AFB54  4B D1 DD BD */	bl memset
/* 802E6598 002AFB58  38 60 00 80 */	li r3, 0x80
/* 802E659C 002AFB5C  38 00 00 00 */	li r0, 0
/* 802E65A0 002AFB60  98 7F 00 76 */	stb r3, 0x76(r31)
/* 802E65A4 002AFB64  7F C3 F3 78 */	mr r3, r30
/* 802E65A8 002AFB68  98 1F 00 85 */	stb r0, 0x85(r31)
/* 802E65AC 002AFB6C  48 00 28 51 */	bl func_802E8DFC
/* 802E65B0 002AFB70  2C 03 00 00 */	cmpwi r3, 0
/* 802E65B4 002AFB74  7C 64 1B 78 */	mr r4, r3
/* 802E65B8 002AFB78  41 82 00 18 */	beq lbl_802E65D0
/* 802E65BC 002AFB7C  38 7F 00 22 */	addi r3, r31, 0x22
/* 802E65C0 002AFB80  38 84 00 08 */	addi r4, r4, 8
/* 802E65C4 002AFB84  38 A0 00 03 */	li r5, 3
/* 802E65C8 002AFB88  4B D1 DA 39 */	bl memcpy
/* 802E65CC 002AFB8C  48 00 00 1C */	b lbl_802E65E8
lbl_802E65D0:
/* 802E65D0 002AFB90  3C 80 80 5C */	lis r4, lbl_805BF9F8@ha
/* 802E65D4 002AFB94  38 7F 00 22 */	addi r3, r31, 0x22
/* 802E65D8 002AFB98  38 84 F9 F8 */	addi r4, r4, lbl_805BF9F8@l
/* 802E65DC 002AFB9C  38 A0 00 03 */	li r5, 3
/* 802E65E0 002AFBA0  38 84 27 BA */	addi r4, r4, 0x27ba
/* 802E65E4 002AFBA4  4B D1 DA 1D */	bl memcpy
lbl_802E65E8:
/* 802E65E8 002AFBA8  7F C4 F3 78 */	mr r4, r30
/* 802E65EC 002AFBAC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802E65F0 002AFBB0  38 A0 00 06 */	li r5, 6
/* 802E65F4 002AFBB4  4B D1 DA 0D */	bl memcpy
/* 802E65F8 002AFBB8  7F C3 F3 78 */	mr r3, r30
/* 802E65FC 002AFBBC  4B FF EE 7D */	bl BTM_GetHCIConnHandle
/* 802E6600 002AFBC0  B0 7F 00 18 */	sth r3, 0x18(r31)
/* 802E6604 002AFBC4  3C A0 80 5C */	lis r5, lbl_805BF9F8@ha
/* 802E6608 002AFBC8  38 A5 F9 F8 */	addi r5, r5, lbl_805BF9F8@l
/* 802E660C 002AFBCC  7F E3 FB 78 */	mr r3, r31
/* 802E6610 002AFBD0  80 85 19 74 */	lwz r4, 0x1974(r5)
/* 802E6614 002AFBD4  90 9F 00 0C */	stw r4, 0xc(r31)
/* 802E6618 002AFBD8  38 04 00 01 */	addi r0, r4, 1
/* 802E661C 002AFBDC  90 05 19 74 */	stw r0, 0x1974(r5)
/* 802E6620 002AFBE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E6624 002AFBE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E6628 002AFBE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E662C 002AFBEC  7C 08 03 A6 */	mtlr r0
/* 802E6630 002AFBF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E6634 002AFBF4  4E 80 00 20 */	blr 

.global btm_find_dev_by_handle
btm_find_dev_by_handle:
/* 802E6638 002AFBF8  3C 80 80 5C */	lis r4, lbl_805BF9F8@ha
/* 802E663C 002AFBFC  38 00 00 04 */	li r0, 4
/* 802E6640 002AFC00  38 84 F9 F8 */	addi r4, r4, lbl_805BF9F8@l
/* 802E6644 002AFC04  38 A0 00 00 */	li r5, 0
/* 802E6648 002AFC08  38 84 1F 30 */	addi r4, r4, 0x1f30
/* 802E664C 002AFC0C  7C 09 03 A6 */	mtctr r0
lbl_802E6650:
/* 802E6650 002AFC10  88 04 00 76 */	lbz r0, 0x76(r4)
/* 802E6654 002AFC14  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E6658 002AFC18  41 82 00 18 */	beq lbl_802E6670
/* 802E665C 002AFC1C  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 802E6660 002AFC20  7C 00 18 40 */	cmplw r0, r3
/* 802E6664 002AFC24  40 82 00 0C */	bne lbl_802E6670
/* 802E6668 002AFC28  7C 83 23 78 */	mr r3, r4
/* 802E666C 002AFC2C  4E 80 00 20 */	blr
lbl_802E6670:
/* 802E6670 002AFC30  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 802E6674 002AFC34  38 84 00 88 */	addi r4, r4, 0x88
/* 802E6678 002AFC38  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E667C 002AFC3C  41 82 00 18 */	beq lbl_802E6694
/* 802E6680 002AFC40  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 802E6684 002AFC44  7C 00 18 40 */	cmplw r0, r3
/* 802E6688 002AFC48  40 82 00 0C */	bne lbl_802E6694
/* 802E668C 002AFC4C  7C 83 23 78 */	mr r3, r4
/* 802E6690 002AFC50  4E 80 00 20 */	blr
lbl_802E6694:
/* 802E6694 002AFC54  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 802E6698 002AFC58  38 84 00 88 */	addi r4, r4, 0x88
/* 802E669C 002AFC5C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E66A0 002AFC60  41 82 00 18 */	beq lbl_802E66B8
/* 802E66A4 002AFC64  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 802E66A8 002AFC68  7C 00 18 40 */	cmplw r0, r3
/* 802E66AC 002AFC6C  40 82 00 0C */	bne lbl_802E66B8
/* 802E66B0 002AFC70  7C 83 23 78 */	mr r3, r4
/* 802E66B4 002AFC74  4E 80 00 20 */	blr
lbl_802E66B8:
/* 802E66B8 002AFC78  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 802E66BC 002AFC7C  38 84 00 88 */	addi r4, r4, 0x88
/* 802E66C0 002AFC80  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E66C4 002AFC84  41 82 00 18 */	beq lbl_802E66DC
/* 802E66C8 002AFC88  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 802E66CC 002AFC8C  7C 00 18 40 */	cmplw r0, r3
/* 802E66D0 002AFC90  40 82 00 0C */	bne lbl_802E66DC
/* 802E66D4 002AFC94  7C 83 23 78 */	mr r3, r4
/* 802E66D8 002AFC98  4E 80 00 20 */	blr
lbl_802E66DC:
/* 802E66DC 002AFC9C  38 A5 00 03 */	addi r5, r5, 3
/* 802E66E0 002AFCA0  38 84 00 88 */	addi r4, r4, 0x88
/* 802E66E4 002AFCA4  42 00 FF 6C */	bdnz lbl_802E6650
/* 802E66E8 002AFCA8  38 60 00 00 */	li r3, 0
/* 802E66EC 002AFCAC  4E 80 00 20 */	blr 

.global btm_find_dev
btm_find_dev:
/* 802E66F0 002AFCB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E66F4 002AFCB4  7C 08 02 A6 */	mflr r0
/* 802E66F8 002AFCB8  3C 80 80 5C */	lis r4, lbl_805BF9F8@ha
/* 802E66FC 002AFCBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E6700 002AFCC0  38 84 F9 F8 */	addi r4, r4, lbl_805BF9F8@l
/* 802E6704 002AFCC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E6708 002AFCC8  3B E4 1F 30 */	addi r31, r4, 0x1f30
/* 802E670C 002AFCCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E6710 002AFCD0  3B C0 00 00 */	li r30, 0
/* 802E6714 002AFCD4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E6718 002AFCD8  7C 7D 1B 78 */	mr r29, r3
lbl_802E671C:
/* 802E671C 002AFCDC  88 1F 00 76 */	lbz r0, 0x76(r31)
/* 802E6720 002AFCE0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E6724 002AFCE4  41 82 00 24 */	beq lbl_802E6748
/* 802E6728 002AFCE8  7F A4 EB 78 */	mr r4, r29
/* 802E672C 002AFCEC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802E6730 002AFCF0  38 A0 00 06 */	li r5, 6
/* 802E6734 002AFCF4  4B FD 80 F9 */	bl memcmp
/* 802E6738 002AFCF8  2C 03 00 00 */	cmpwi r3, 0
/* 802E673C 002AFCFC  40 82 00 0C */	bne lbl_802E6748
/* 802E6740 002AFD00  7F E3 FB 78 */	mr r3, r31
/* 802E6744 002AFD04  48 00 00 18 */	b lbl_802E675C
lbl_802E6748:
/* 802E6748 002AFD08  3B DE 00 01 */	addi r30, r30, 1
/* 802E674C 002AFD0C  3B FF 00 88 */	addi r31, r31, 0x88
/* 802E6750 002AFD10  2C 1E 00 10 */	cmpwi r30, 0x10
/* 802E6754 002AFD14  41 80 FF C8 */	blt lbl_802E671C
/* 802E6758 002AFD18  38 60 00 00 */	li r3, 0
lbl_802E675C:
/* 802E675C 002AFD1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E6760 002AFD20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E6764 002AFD24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E6768 002AFD28  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E676C 002AFD2C  7C 08 03 A6 */	mtlr r0
/* 802E6770 002AFD30  38 21 00 20 */	addi r1, r1, 0x20
/* 802E6774 002AFD34  4E 80 00 20 */	blr 

.global btm_find_oldest_dev
btm_find_oldest_dev:
/* 802E6778 002AFD38  3C 60 80 5C */	lis r3, lbl_805BF9F8@ha
/* 802E677C 002AFD3C  38 00 00 04 */	li r0, 4
/* 802E6780 002AFD40  38 63 F9 F8 */	addi r3, r3, lbl_805BF9F8@l
/* 802E6784 002AFD44  38 C0 FF FF */	li r6, -1
/* 802E6788 002AFD48  38 A3 1F 30 */	addi r5, r3, 0x1f30
/* 802E678C 002AFD4C  38 E0 00 00 */	li r7, 0
/* 802E6790 002AFD50  7C A3 2B 78 */	mr r3, r5
/* 802E6794 002AFD54  7C 09 03 A6 */	mtctr r0
lbl_802E6798:
/* 802E6798 002AFD58  88 85 00 76 */	lbz r4, 0x76(r5)
/* 802E679C 002AFD5C  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 802E67A0 002AFD60  41 82 00 20 */	beq lbl_802E67C0
/* 802E67A4 002AFD64  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 802E67A8 002AFD68  40 82 00 18 */	bne lbl_802E67C0
/* 802E67AC 002AFD6C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802E67B0 002AFD70  7C 00 30 40 */	cmplw r0, r6
/* 802E67B4 002AFD74  40 80 00 0C */	bge lbl_802E67C0
/* 802E67B8 002AFD78  7C A3 2B 78 */	mr r3, r5
/* 802E67BC 002AFD7C  7C 06 03 78 */	mr r6, r0
lbl_802E67C0:
/* 802E67C0 002AFD80  88 85 00 FE */	lbz r4, 0xfe(r5)
/* 802E67C4 002AFD84  38 A5 00 88 */	addi r5, r5, 0x88
/* 802E67C8 002AFD88  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 802E67CC 002AFD8C  41 82 00 20 */	beq lbl_802E67EC
/* 802E67D0 002AFD90  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 802E67D4 002AFD94  40 82 00 18 */	bne lbl_802E67EC
/* 802E67D8 002AFD98  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802E67DC 002AFD9C  7C 00 30 40 */	cmplw r0, r6
/* 802E67E0 002AFDA0  40 80 00 0C */	bge lbl_802E67EC
/* 802E67E4 002AFDA4  7C A3 2B 78 */	mr r3, r5
/* 802E67E8 002AFDA8  7C 06 03 78 */	mr r6, r0
lbl_802E67EC:
/* 802E67EC 002AFDAC  88 85 00 FE */	lbz r4, 0xfe(r5)
/* 802E67F0 002AFDB0  38 A5 00 88 */	addi r5, r5, 0x88
/* 802E67F4 002AFDB4  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 802E67F8 002AFDB8  41 82 00 20 */	beq lbl_802E6818
/* 802E67FC 002AFDBC  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 802E6800 002AFDC0  40 82 00 18 */	bne lbl_802E6818
/* 802E6804 002AFDC4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802E6808 002AFDC8  7C 00 30 40 */	cmplw r0, r6
/* 802E680C 002AFDCC  40 80 00 0C */	bge lbl_802E6818
/* 802E6810 002AFDD0  7C A3 2B 78 */	mr r3, r5
/* 802E6814 002AFDD4  7C 06 03 78 */	mr r6, r0
lbl_802E6818:
/* 802E6818 002AFDD8  88 85 00 FE */	lbz r4, 0xfe(r5)
/* 802E681C 002AFDDC  38 A5 00 88 */	addi r5, r5, 0x88
/* 802E6820 002AFDE0  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 802E6824 002AFDE4  41 82 00 20 */	beq lbl_802E6844
/* 802E6828 002AFDE8  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 802E682C 002AFDEC  40 82 00 18 */	bne lbl_802E6844
/* 802E6830 002AFDF0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802E6834 002AFDF4  7C 00 30 40 */	cmplw r0, r6
/* 802E6838 002AFDF8  40 80 00 0C */	bge lbl_802E6844
/* 802E683C 002AFDFC  7C A3 2B 78 */	mr r3, r5
/* 802E6840 002AFE00  7C 06 03 78 */	mr r6, r0
lbl_802E6844:
/* 802E6844 002AFE04  38 E7 00 03 */	addi r7, r7, 3
/* 802E6848 002AFE08  38 A5 00 88 */	addi r5, r5, 0x88
/* 802E684C 002AFE0C  42 00 FF 4C */	bdnz lbl_802E6798
/* 802E6850 002AFE10  3C 06 00 01 */	addis r0, r6, 1
/* 802E6854 002AFE14  28 00 FF FF */	cmplwi r0, 0xffff
/* 802E6858 002AFE18  4C 82 00 20 */	bnelr 
/* 802E685C 002AFE1C  3C 80 80 5C */	lis r4, lbl_805BF9F8@ha
/* 802E6860 002AFE20  38 00 00 04 */	li r0, 4
/* 802E6864 002AFE24  38 84 F9 F8 */	addi r4, r4, lbl_805BF9F8@l
/* 802E6868 002AFE28  38 A0 00 00 */	li r5, 0
/* 802E686C 002AFE2C  38 84 1F 30 */	addi r4, r4, 0x1f30
/* 802E6870 002AFE30  7C 09 03 A6 */	mtctr r0
lbl_802E6874:
/* 802E6874 002AFE34  88 04 00 76 */	lbz r0, 0x76(r4)
/* 802E6878 002AFE38  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E687C 002AFE3C  41 82 00 18 */	beq lbl_802E6894
/* 802E6880 002AFE40  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802E6884 002AFE44  7C 00 30 40 */	cmplw r0, r6
/* 802E6888 002AFE48  40 80 00 0C */	bge lbl_802E6894
/* 802E688C 002AFE4C  7C 83 23 78 */	mr r3, r4
/* 802E6890 002AFE50  7C 06 03 78 */	mr r6, r0
lbl_802E6894:
/* 802E6894 002AFE54  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 802E6898 002AFE58  38 84 00 88 */	addi r4, r4, 0x88
/* 802E689C 002AFE5C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E68A0 002AFE60  41 82 00 18 */	beq lbl_802E68B8
/* 802E68A4 002AFE64  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802E68A8 002AFE68  7C 00 30 40 */	cmplw r0, r6
/* 802E68AC 002AFE6C  40 80 00 0C */	bge lbl_802E68B8
/* 802E68B0 002AFE70  7C 83 23 78 */	mr r3, r4
/* 802E68B4 002AFE74  7C 06 03 78 */	mr r6, r0
lbl_802E68B8:
/* 802E68B8 002AFE78  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 802E68BC 002AFE7C  38 84 00 88 */	addi r4, r4, 0x88
/* 802E68C0 002AFE80  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E68C4 002AFE84  41 82 00 18 */	beq lbl_802E68DC
/* 802E68C8 002AFE88  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802E68CC 002AFE8C  7C 00 30 40 */	cmplw r0, r6
/* 802E68D0 002AFE90  40 80 00 0C */	bge lbl_802E68DC
/* 802E68D4 002AFE94  7C 83 23 78 */	mr r3, r4
/* 802E68D8 002AFE98  7C 06 03 78 */	mr r6, r0
lbl_802E68DC:
/* 802E68DC 002AFE9C  88 04 00 FE */	lbz r0, 0xfe(r4)
/* 802E68E0 002AFEA0  38 84 00 88 */	addi r4, r4, 0x88
/* 802E68E4 002AFEA4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E68E8 002AFEA8  41 82 00 18 */	beq lbl_802E6900
/* 802E68EC 002AFEAC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802E68F0 002AFEB0  7C 00 30 40 */	cmplw r0, r6
/* 802E68F4 002AFEB4  40 80 00 0C */	bge lbl_802E6900
/* 802E68F8 002AFEB8  7C 83 23 78 */	mr r3, r4
/* 802E68FC 002AFEBC  7C 06 03 78 */	mr r6, r0
lbl_802E6900:
/* 802E6900 002AFEC0  38 A5 00 03 */	addi r5, r5, 3
/* 802E6904 002AFEC4  38 84 00 88 */	addi r4, r4, 0x88
/* 802E6908 002AFEC8  42 00 FF 6C */	bdnz lbl_802E6874
/* 802E690C 002AFECC  4E 80 00 20 */	blr
