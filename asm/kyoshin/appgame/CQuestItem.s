.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.global func_801C4B74
func_801C4B74:
/* 801C4B74 0018E134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C4B78 0018E138  7C 08 02 A6 */	mflr r0
/* 801C4B7C 0018E13C  2C 03 00 00 */	cmpwi r3, 0
/* 801C4B80 0018E140  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C4B84 0018E144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C4B88 0018E148  7C 7F 1B 78 */	mr r31, r3
/* 801C4B8C 0018E14C  41 82 00 10 */	beq .L_801C4B9C
/* 801C4B90 0018E150  2C 04 00 00 */	cmpwi r4, 0
/* 801C4B94 0018E154  40 81 00 08 */	ble .L_801C4B9C
/* 801C4B98 0018E158  48 27 00 95 */	bl __dl__FPv
.L_801C4B9C:
/* 801C4B9C 0018E15C  7F E3 FB 78 */	mr r3, r31
/* 801C4BA0 0018E160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C4BA4 0018E164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C4BA8 0018E168  7C 08 03 A6 */	mtlr r0
/* 801C4BAC 0018E16C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C4BB0 0018E170  4E 80 00 20 */	blr 

.global func_801C4BB4
func_801C4BB4:
/* 801C4BB4 0018E174  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C4BB8 0018E178  7C 08 02 A6 */	mflr r0
/* 801C4BBC 0018E17C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C4BC0 0018E180  38 00 00 00 */	li r0, 0
/* 801C4BC4 0018E184  BE E1 00 0C */	stmw r23, 0xc(r1)
/* 801C4BC8 0018E188  3F E0 80 50 */	lis r31, lbl_80500E74@ha
/* 801C4BCC 0018E18C  3F A0 80 57 */	lis r29, lbl_80577510@ha
/* 801C4BD0 0018E190  7C 79 1B 78 */	mr r25, r3
/* 801C4BD4 0018E194  3B DF 0E 74 */	addi r30, r31, lbl_80500E74@l
/* 801C4BD8 0018E198  3B 60 00 01 */	li r27, 1
/* 801C4BDC 0018E19C  3B BD 75 10 */	addi r29, r29, lbl_80577510@l
/* 801C4BE0 0018E1A0  B0 03 08 04 */	sth r0, 0x804(r3)
.L_801C4BE4:
/* 801C4BE4 0018E1A4  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 801C4BE8 0018E1A8  4B F7 34 B9 */	bl func_801380A0
/* 801C4BEC 0018E1AC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 801C4BF0 0018E1B0  7C 7A 1B 78 */	mr r26, r3
/* 801C4BF4 0018E1B4  41 82 05 44 */	beq .L_801C5138
/* 801C4BF8 0018E1B8  38 1B 00 01 */	addi r0, r27, 1
/* 801C4BFC 0018E1BC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 801C4C00 0018E1C0  4B F7 34 A1 */	bl func_801380A0
/* 801C4C04 0018E1C4  54 78 04 3E */	clrlwi r24, r3, 0x10
/* 801C4C08 0018E1C8  48 00 05 24 */	b .L_801C512C
.L_801C4C0C:
/* 801C4C0C 0018E1CC  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 801C4C10 0018E1D0  38 63 02 20 */	addi r3, r3, 0x220
/* 801C4C14 0018E1D4  4B ED 83 79 */	bl func_8009CF8C
/* 801C4C18 0018E1D8  54 77 06 3E */	clrlwi r23, r3, 0x18
/* 801C4C1C 0018E1DC  28 17 00 FE */	cmplwi r23, 0xfe
/* 801C4C20 0018E1E0  40 80 05 08 */	bge .L_801C5128
/* 801C4C24 0018E1E4  2C 17 00 00 */	cmpwi r23, 0
/* 801C4C28 0018E1E8  41 82 05 00 */	beq .L_801C5128
/* 801C4C2C 0018E1EC  28 17 00 C8 */	cmplwi r23, 0xc8
/* 801C4C30 0018E1F0  41 82 04 F8 */	beq .L_801C5128
/* 801C4C34 0018E1F4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 801C4C38 0018E1F8  4B F7 35 01 */	bl func_80138138
/* 801C4C3C 0018E1FC  54 60 10 3A */	slwi r0, r3, 2
/* 801C4C40 0018E200  38 9F 0E 74 */	addi r4, r31, lbl_80500E74@l
/* 801C4C44 0018E204  7F 9D 00 2E */	lwzx r28, r29, r0
/* 801C4C48 0018E208  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4C4C 0018E20C  7F 83 E3 78 */	mr r3, r28
/* 801C4C50 0018E210  4B F7 15 99 */	bl func_801361E8
/* 801C4C54 0018E214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4C58 0018E218  41 82 02 40 */	beq .L_801C4E98
/* 801C4C5C 0018E21C  28 17 00 01 */	cmplwi r23, 1
/* 801C4C60 0018E220  40 82 00 88 */	bne .L_801C4CE8
/* 801C4C64 0018E224  7F 83 E3 78 */	mr r3, r28
/* 801C4C68 0018E228  38 9E 00 0D */	addi r4, r30, 0xd
/* 801C4C6C 0018E22C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4C70 0018E230  4B F7 15 79 */	bl func_801361E8
/* 801C4C74 0018E234  7C 77 1B 78 */	mr r23, r3
/* 801C4C78 0018E238  7F 83 E3 78 */	mr r3, r28
/* 801C4C7C 0018E23C  7F C4 F3 78 */	mr r4, r30
/* 801C4C80 0018E240  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4C84 0018E244  4B F7 15 65 */	bl func_801361E8
/* 801C4C88 0018E248  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 801C4C8C 0018E24C  7C 77 1B 78 */	mr r23, r3
/* 801C4C90 0018E250  28 00 00 02 */	cmplwi r0, 2
/* 801C4C94 0018E254  40 82 00 24 */	bne .L_801C4CB8
/* 801C4C98 0018E258  7F 83 E3 78 */	mr r3, r28
/* 801C4C9C 0018E25C  38 9E 00 1A */	addi r4, r30, 0x1a
/* 801C4CA0 0018E260  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4CA4 0018E264  4B F7 15 B1 */	bl func_80136254
/* 801C4CA8 0018E268  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4CAC 0018E26C  41 82 00 0C */	beq .L_801C4CB8
/* 801C4CB0 0018E270  7F 23 CB 78 */	mr r3, r25
/* 801C4CB4 0018E274  48 00 04 A5 */	bl func_801C5158
.L_801C4CB8:
/* 801C4CB8 0018E278  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 801C4CBC 0018E27C  28 00 00 02 */	cmplwi r0, 2
/* 801C4CC0 0018E280  40 82 04 68 */	bne .L_801C5128
/* 801C4CC4 0018E284  7F 83 E3 78 */	mr r3, r28
/* 801C4CC8 0018E288  38 9E 00 26 */	addi r4, r30, 0x26
/* 801C4CCC 0018E28C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4CD0 0018E290  4B F7 15 85 */	bl func_80136254
/* 801C4CD4 0018E294  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4CD8 0018E298  41 82 04 50 */	beq .L_801C5128
/* 801C4CDC 0018E29C  7F 23 CB 78 */	mr r3, r25
/* 801C4CE0 0018E2A0  48 00 04 79 */	bl func_801C5158
/* 801C4CE4 0018E2A4  48 00 04 44 */	b .L_801C5128
.L_801C4CE8:
/* 801C4CE8 0018E2A8  28 17 00 6F */	cmplwi r23, 0x6f
/* 801C4CEC 0018E2AC  40 82 00 44 */	bne .L_801C4D30
/* 801C4CF0 0018E2B0  7F 83 E3 78 */	mr r3, r28
/* 801C4CF4 0018E2B4  38 9E 00 32 */	addi r4, r30, 0x32
/* 801C4CF8 0018E2B8  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4CFC 0018E2BC  4B F7 14 ED */	bl func_801361E8
/* 801C4D00 0018E2C0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4D04 0018E2C4  28 00 00 02 */	cmplwi r0, 2
/* 801C4D08 0018E2C8  40 82 04 20 */	bne .L_801C5128
/* 801C4D0C 0018E2CC  7F 83 E3 78 */	mr r3, r28
/* 801C4D10 0018E2D0  38 9E 00 3F */	addi r4, r30, 0x3f
/* 801C4D14 0018E2D4  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4D18 0018E2D8  4B F7 15 3D */	bl func_80136254
/* 801C4D1C 0018E2DC  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4D20 0018E2E0  41 82 04 08 */	beq .L_801C5128
/* 801C4D24 0018E2E4  7F 23 CB 78 */	mr r3, r25
/* 801C4D28 0018E2E8  48 00 04 31 */	bl func_801C5158
/* 801C4D2C 0018E2EC  48 00 03 FC */	b .L_801C5128
.L_801C4D30:
/* 801C4D30 0018E2F0  28 17 00 79 */	cmplwi r23, 0x79
/* 801C4D34 0018E2F4  40 82 00 44 */	bne .L_801C4D78
/* 801C4D38 0018E2F8  7F 83 E3 78 */	mr r3, r28
/* 801C4D3C 0018E2FC  38 9E 00 4B */	addi r4, r30, 0x4b
/* 801C4D40 0018E300  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4D44 0018E304  4B F7 14 A5 */	bl func_801361E8
/* 801C4D48 0018E308  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4D4C 0018E30C  28 00 00 02 */	cmplwi r0, 2
/* 801C4D50 0018E310  40 82 03 D8 */	bne .L_801C5128
/* 801C4D54 0018E314  7F 83 E3 78 */	mr r3, r28
/* 801C4D58 0018E318  38 9E 00 58 */	addi r4, r30, 0x58
/* 801C4D5C 0018E31C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4D60 0018E320  4B F7 14 F5 */	bl func_80136254
/* 801C4D64 0018E324  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4D68 0018E328  41 82 03 C0 */	beq .L_801C5128
/* 801C4D6C 0018E32C  7F 23 CB 78 */	mr r3, r25
/* 801C4D70 0018E330  48 00 03 E9 */	bl func_801C5158
/* 801C4D74 0018E334  48 00 03 B4 */	b .L_801C5128
.L_801C4D78:
/* 801C4D78 0018E338  28 17 00 83 */	cmplwi r23, 0x83
/* 801C4D7C 0018E33C  40 82 00 44 */	bne .L_801C4DC0
/* 801C4D80 0018E340  7F 83 E3 78 */	mr r3, r28
/* 801C4D84 0018E344  38 9E 00 64 */	addi r4, r30, 0x64
/* 801C4D88 0018E348  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4D8C 0018E34C  4B F7 14 5D */	bl func_801361E8
/* 801C4D90 0018E350  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4D94 0018E354  28 00 00 02 */	cmplwi r0, 2
/* 801C4D98 0018E358  40 82 03 90 */	bne .L_801C5128
/* 801C4D9C 0018E35C  7F 83 E3 78 */	mr r3, r28
/* 801C4DA0 0018E360  38 9E 00 71 */	addi r4, r30, 0x71
/* 801C4DA4 0018E364  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4DA8 0018E368  4B F7 14 AD */	bl func_80136254
/* 801C4DAC 0018E36C  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4DB0 0018E370  41 82 03 78 */	beq .L_801C5128
/* 801C4DB4 0018E374  7F 23 CB 78 */	mr r3, r25
/* 801C4DB8 0018E378  48 00 03 A1 */	bl func_801C5158
/* 801C4DBC 0018E37C  48 00 03 6C */	b .L_801C5128
.L_801C4DC0:
/* 801C4DC0 0018E380  28 17 00 70 */	cmplwi r23, 0x70
/* 801C4DC4 0018E384  40 82 00 44 */	bne .L_801C4E08
/* 801C4DC8 0018E388  7F 83 E3 78 */	mr r3, r28
/* 801C4DCC 0018E38C  38 9E 00 7D */	addi r4, r30, 0x7d
/* 801C4DD0 0018E390  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4DD4 0018E394  4B F7 14 15 */	bl func_801361E8
/* 801C4DD8 0018E398  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4DDC 0018E39C  28 00 00 02 */	cmplwi r0, 2
/* 801C4DE0 0018E3A0  40 82 03 48 */	bne .L_801C5128
/* 801C4DE4 0018E3A4  7F 83 E3 78 */	mr r3, r28
/* 801C4DE8 0018E3A8  38 9E 00 8A */	addi r4, r30, 0x8a
/* 801C4DEC 0018E3AC  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4DF0 0018E3B0  4B F7 14 65 */	bl func_80136254
/* 801C4DF4 0018E3B4  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4DF8 0018E3B8  41 82 03 30 */	beq .L_801C5128
/* 801C4DFC 0018E3BC  7F 23 CB 78 */	mr r3, r25
/* 801C4E00 0018E3C0  48 00 03 59 */	bl func_801C5158
/* 801C4E04 0018E3C4  48 00 03 24 */	b .L_801C5128
.L_801C4E08:
/* 801C4E08 0018E3C8  28 17 00 7A */	cmplwi r23, 0x7a
/* 801C4E0C 0018E3CC  40 82 00 44 */	bne .L_801C4E50
/* 801C4E10 0018E3D0  7F 83 E3 78 */	mr r3, r28
/* 801C4E14 0018E3D4  38 9E 00 96 */	addi r4, r30, 0x96
/* 801C4E18 0018E3D8  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4E1C 0018E3DC  4B F7 13 CD */	bl func_801361E8
/* 801C4E20 0018E3E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4E24 0018E3E4  28 00 00 02 */	cmplwi r0, 2
/* 801C4E28 0018E3E8  40 82 03 00 */	bne .L_801C5128
/* 801C4E2C 0018E3EC  7F 83 E3 78 */	mr r3, r28
/* 801C4E30 0018E3F0  38 9E 00 A3 */	addi r4, r30, 0xa3
/* 801C4E34 0018E3F4  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4E38 0018E3F8  4B F7 14 1D */	bl func_80136254
/* 801C4E3C 0018E3FC  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4E40 0018E400  41 82 02 E8 */	beq .L_801C5128
/* 801C4E44 0018E404  7F 23 CB 78 */	mr r3, r25
/* 801C4E48 0018E408  48 00 03 11 */	bl func_801C5158
/* 801C4E4C 0018E40C  48 00 02 DC */	b .L_801C5128
.L_801C4E50:
/* 801C4E50 0018E410  28 17 00 84 */	cmplwi r23, 0x84
/* 801C4E54 0018E414  40 82 02 D4 */	bne .L_801C5128
/* 801C4E58 0018E418  7F 83 E3 78 */	mr r3, r28
/* 801C4E5C 0018E41C  38 9E 00 AF */	addi r4, r30, 0xaf
/* 801C4E60 0018E420  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4E64 0018E424  4B F7 13 85 */	bl func_801361E8
/* 801C4E68 0018E428  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4E6C 0018E42C  28 00 00 02 */	cmplwi r0, 2
/* 801C4E70 0018E430  40 82 02 B8 */	bne .L_801C5128
/* 801C4E74 0018E434  7F 83 E3 78 */	mr r3, r28
/* 801C4E78 0018E438  38 9E 00 BC */	addi r4, r30, 0xbc
/* 801C4E7C 0018E43C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4E80 0018E440  4B F7 13 D5 */	bl func_80136254
/* 801C4E84 0018E444  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4E88 0018E448  41 82 02 A0 */	beq .L_801C5128
/* 801C4E8C 0018E44C  7F 23 CB 78 */	mr r3, r25
/* 801C4E90 0018E450  48 00 02 C9 */	bl func_801C5158
/* 801C4E94 0018E454  48 00 02 94 */	b .L_801C5128
.L_801C4E98:
/* 801C4E98 0018E458  7F 83 E3 78 */	mr r3, r28
/* 801C4E9C 0018E45C  38 9E 00 C8 */	addi r4, r30, 0xc8
/* 801C4EA0 0018E460  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4EA4 0018E464  4B F7 13 45 */	bl func_801361E8
/* 801C4EA8 0018E468  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4EAC 0018E46C  41 82 01 24 */	beq .L_801C4FD0
/* 801C4EB0 0018E470  28 17 00 01 */	cmplwi r23, 1
/* 801C4EB4 0018E474  40 82 00 44 */	bne .L_801C4EF8
/* 801C4EB8 0018E478  7F 83 E3 78 */	mr r3, r28
/* 801C4EBC 0018E47C  38 9E 00 0D */	addi r4, r30, 0xd
/* 801C4EC0 0018E480  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4EC4 0018E484  4B F7 13 25 */	bl func_801361E8
/* 801C4EC8 0018E488  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4ECC 0018E48C  28 00 00 02 */	cmplwi r0, 2
/* 801C4ED0 0018E490  40 82 02 58 */	bne .L_801C5128
/* 801C4ED4 0018E494  7F 83 E3 78 */	mr r3, r28
/* 801C4ED8 0018E498  38 9E 00 1A */	addi r4, r30, 0x1a
/* 801C4EDC 0018E49C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4EE0 0018E4A0  4B F7 13 75 */	bl func_80136254
/* 801C4EE4 0018E4A4  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4EE8 0018E4A8  41 82 02 40 */	beq .L_801C5128
/* 801C4EEC 0018E4AC  7F 23 CB 78 */	mr r3, r25
/* 801C4EF0 0018E4B0  48 00 02 69 */	bl func_801C5158
/* 801C4EF4 0018E4B4  48 00 02 34 */	b .L_801C5128
.L_801C4EF8:
/* 801C4EF8 0018E4B8  28 17 00 6F */	cmplwi r23, 0x6f
/* 801C4EFC 0018E4BC  40 82 00 44 */	bne .L_801C4F40
/* 801C4F00 0018E4C0  7F 83 E3 78 */	mr r3, r28
/* 801C4F04 0018E4C4  38 9E 00 32 */	addi r4, r30, 0x32
/* 801C4F08 0018E4C8  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4F0C 0018E4CC  4B F7 12 DD */	bl func_801361E8
/* 801C4F10 0018E4D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4F14 0018E4D4  28 00 00 02 */	cmplwi r0, 2
/* 801C4F18 0018E4D8  40 82 02 10 */	bne .L_801C5128
/* 801C4F1C 0018E4DC  7F 83 E3 78 */	mr r3, r28
/* 801C4F20 0018E4E0  38 9E 00 3F */	addi r4, r30, 0x3f
/* 801C4F24 0018E4E4  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4F28 0018E4E8  4B F7 13 2D */	bl func_80136254
/* 801C4F2C 0018E4EC  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4F30 0018E4F0  41 82 01 F8 */	beq .L_801C5128
/* 801C4F34 0018E4F4  7F 23 CB 78 */	mr r3, r25
/* 801C4F38 0018E4F8  48 00 02 21 */	bl func_801C5158
/* 801C4F3C 0018E4FC  48 00 01 EC */	b .L_801C5128
.L_801C4F40:
/* 801C4F40 0018E500  28 17 00 79 */	cmplwi r23, 0x79
/* 801C4F44 0018E504  40 82 00 44 */	bne .L_801C4F88
/* 801C4F48 0018E508  7F 83 E3 78 */	mr r3, r28
/* 801C4F4C 0018E50C  38 9E 00 4B */	addi r4, r30, 0x4b
/* 801C4F50 0018E510  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4F54 0018E514  4B F7 12 95 */	bl func_801361E8
/* 801C4F58 0018E518  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4F5C 0018E51C  28 00 00 02 */	cmplwi r0, 2
/* 801C4F60 0018E520  40 82 01 C8 */	bne .L_801C5128
/* 801C4F64 0018E524  7F 83 E3 78 */	mr r3, r28
/* 801C4F68 0018E528  38 9E 00 58 */	addi r4, r30, 0x58
/* 801C4F6C 0018E52C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4F70 0018E530  4B F7 12 E5 */	bl func_80136254
/* 801C4F74 0018E534  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4F78 0018E538  41 82 01 B0 */	beq .L_801C5128
/* 801C4F7C 0018E53C  7F 23 CB 78 */	mr r3, r25
/* 801C4F80 0018E540  48 00 01 D9 */	bl func_801C5158
/* 801C4F84 0018E544  48 00 01 A4 */	b .L_801C5128
.L_801C4F88:
/* 801C4F88 0018E548  28 17 00 83 */	cmplwi r23, 0x83
/* 801C4F8C 0018E54C  40 82 01 9C */	bne .L_801C5128
/* 801C4F90 0018E550  7F 83 E3 78 */	mr r3, r28
/* 801C4F94 0018E554  38 9E 00 64 */	addi r4, r30, 0x64
/* 801C4F98 0018E558  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4F9C 0018E55C  4B F7 12 4D */	bl func_801361E8
/* 801C4FA0 0018E560  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4FA4 0018E564  28 00 00 02 */	cmplwi r0, 2
/* 801C4FA8 0018E568  40 82 01 80 */	bne .L_801C5128
/* 801C4FAC 0018E56C  7F 83 E3 78 */	mr r3, r28
/* 801C4FB0 0018E570  38 9E 00 71 */	addi r4, r30, 0x71
/* 801C4FB4 0018E574  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4FB8 0018E578  4B F7 12 9D */	bl func_80136254
/* 801C4FBC 0018E57C  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C4FC0 0018E580  41 82 01 68 */	beq .L_801C5128
/* 801C4FC4 0018E584  7F 23 CB 78 */	mr r3, r25
/* 801C4FC8 0018E588  48 00 01 91 */	bl func_801C5158
/* 801C4FCC 0018E58C  48 00 01 5C */	b .L_801C5128
.L_801C4FD0:
/* 801C4FD0 0018E590  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 801C4FD4 0018E594  4B F7 C2 FD */	bl func_801412D0
/* 801C4FD8 0018E598  7C 77 1B 78 */	mr r23, r3
/* 801C4FDC 0018E59C  38 80 00 00 */	li r4, 0
/* 801C4FE0 0018E5A0  38 A0 00 00 */	li r5, 0
/* 801C4FE4 0018E5A4  4B F7 B8 71 */	bl func_80140854
/* 801C4FE8 0018E5A8  2C 03 00 00 */	cmpwi r3, 0
/* 801C4FEC 0018E5AC  40 82 00 40 */	bne .L_801C502C
/* 801C4FF0 0018E5B0  7F 83 E3 78 */	mr r3, r28
/* 801C4FF4 0018E5B4  38 9E 00 0D */	addi r4, r30, 0xd
/* 801C4FF8 0018E5B8  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C4FFC 0018E5BC  4B F7 11 ED */	bl func_801361E8
/* 801C5000 0018E5C0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C5004 0018E5C4  28 00 00 02 */	cmplwi r0, 2
/* 801C5008 0018E5C8  40 82 00 24 */	bne .L_801C502C
/* 801C500C 0018E5CC  7F 83 E3 78 */	mr r3, r28
/* 801C5010 0018E5D0  38 9E 00 1A */	addi r4, r30, 0x1a
/* 801C5014 0018E5D4  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C5018 0018E5D8  4B F7 12 3D */	bl func_80136254
/* 801C501C 0018E5DC  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C5020 0018E5E0  41 82 00 0C */	beq .L_801C502C
/* 801C5024 0018E5E4  7F 23 CB 78 */	mr r3, r25
/* 801C5028 0018E5E8  48 00 01 31 */	bl func_801C5158
.L_801C502C:
/* 801C502C 0018E5EC  7E E3 BB 78 */	mr r3, r23
/* 801C5030 0018E5F0  38 80 00 00 */	li r4, 0
/* 801C5034 0018E5F4  38 A0 00 01 */	li r5, 1
/* 801C5038 0018E5F8  4B F7 B8 1D */	bl func_80140854
/* 801C503C 0018E5FC  2C 03 00 00 */	cmpwi r3, 0
/* 801C5040 0018E600  40 82 00 40 */	bne .L_801C5080
/* 801C5044 0018E604  7F 83 E3 78 */	mr r3, r28
/* 801C5048 0018E608  38 9E 00 32 */	addi r4, r30, 0x32
/* 801C504C 0018E60C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C5050 0018E610  4B F7 11 99 */	bl func_801361E8
/* 801C5054 0018E614  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C5058 0018E618  28 00 00 02 */	cmplwi r0, 2
/* 801C505C 0018E61C  40 82 00 24 */	bne .L_801C5080
/* 801C5060 0018E620  7F 83 E3 78 */	mr r3, r28
/* 801C5064 0018E624  38 9E 00 3F */	addi r4, r30, 0x3f
/* 801C5068 0018E628  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C506C 0018E62C  4B F7 11 E9 */	bl func_80136254
/* 801C5070 0018E630  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C5074 0018E634  41 82 00 0C */	beq .L_801C5080
/* 801C5078 0018E638  7F 23 CB 78 */	mr r3, r25
/* 801C507C 0018E63C  48 00 00 DD */	bl func_801C5158
.L_801C5080:
/* 801C5080 0018E640  7E E3 BB 78 */	mr r3, r23
/* 801C5084 0018E644  38 80 00 00 */	li r4, 0
/* 801C5088 0018E648  38 A0 00 02 */	li r5, 2
/* 801C508C 0018E64C  4B F7 B7 C9 */	bl func_80140854
/* 801C5090 0018E650  2C 03 00 00 */	cmpwi r3, 0
/* 801C5094 0018E654  40 82 00 40 */	bne .L_801C50D4
/* 801C5098 0018E658  7F 83 E3 78 */	mr r3, r28
/* 801C509C 0018E65C  38 9E 00 4B */	addi r4, r30, 0x4b
/* 801C50A0 0018E660  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C50A4 0018E664  4B F7 11 45 */	bl func_801361E8
/* 801C50A8 0018E668  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C50AC 0018E66C  28 00 00 02 */	cmplwi r0, 2
/* 801C50B0 0018E670  40 82 00 24 */	bne .L_801C50D4
/* 801C50B4 0018E674  7F 83 E3 78 */	mr r3, r28
/* 801C50B8 0018E678  38 9E 00 58 */	addi r4, r30, 0x58
/* 801C50BC 0018E67C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C50C0 0018E680  4B F7 11 95 */	bl func_80136254
/* 801C50C4 0018E684  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C50C8 0018E688  41 82 00 0C */	beq .L_801C50D4
/* 801C50CC 0018E68C  7F 23 CB 78 */	mr r3, r25
/* 801C50D0 0018E690  48 00 00 89 */	bl func_801C5158
.L_801C50D4:
/* 801C50D4 0018E694  7E E3 BB 78 */	mr r3, r23
/* 801C50D8 0018E698  38 80 00 00 */	li r4, 0
/* 801C50DC 0018E69C  38 A0 00 03 */	li r5, 3
/* 801C50E0 0018E6A0  4B F7 B7 75 */	bl func_80140854
/* 801C50E4 0018E6A4  2C 03 00 00 */	cmpwi r3, 0
/* 801C50E8 0018E6A8  40 82 00 40 */	bne .L_801C5128
/* 801C50EC 0018E6AC  7F 83 E3 78 */	mr r3, r28
/* 801C50F0 0018E6B0  38 9E 00 64 */	addi r4, r30, 0x64
/* 801C50F4 0018E6B4  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C50F8 0018E6B8  4B F7 10 F1 */	bl func_801361E8
/* 801C50FC 0018E6BC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C5100 0018E6C0  28 00 00 02 */	cmplwi r0, 2
/* 801C5104 0018E6C4  40 82 00 24 */	bne .L_801C5128
/* 801C5108 0018E6C8  7F 83 E3 78 */	mr r3, r28
/* 801C510C 0018E6CC  38 9E 00 71 */	addi r4, r30, 0x71
/* 801C5110 0018E6D0  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 801C5114 0018E6D4  4B F7 11 41 */	bl func_80136254
/* 801C5118 0018E6D8  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C511C 0018E6DC  41 82 00 0C */	beq .L_801C5128
/* 801C5120 0018E6E0  7F 23 CB 78 */	mr r3, r25
/* 801C5124 0018E6E4  48 00 00 35 */	bl func_801C5158
.L_801C5128:
/* 801C5128 0018E6E8  3B 5A 00 01 */	addi r26, r26, 1
.L_801C512C:
/* 801C512C 0018E6EC  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 801C5130 0018E6F0  7C 00 C0 40 */	cmplw r0, r24
/* 801C5134 0018E6F4  41 80 FA D8 */	blt .L_801C4C0C
.L_801C5138:
/* 801C5138 0018E6F8  3B 7B 00 01 */	addi r27, r27, 1
/* 801C513C 0018E6FC  28 1B 00 1B */	cmplwi r27, 0x1b
/* 801C5140 0018E700  41 80 FA A4 */	blt .L_801C4BE4
/* 801C5144 0018E704  BA E1 00 0C */	lmw r23, 0xc(r1)
/* 801C5148 0018E708  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C514C 0018E70C  7C 08 03 A6 */	mtlr r0
/* 801C5150 0018E710  38 21 00 30 */	addi r1, r1, 0x30
/* 801C5154 0018E714  4E 80 00 20 */	blr 

.global func_801C5158
func_801C5158:
/* 801C5158 0018E718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C515C 0018E71C  7C 08 02 A6 */	mflr r0
/* 801C5160 0018E720  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5164 0018E724  BF C1 00 08 */	stmw r30, 8(r1)
/* 801C5168 0018E728  7C 9F 23 78 */	mr r31, r4
/* 801C516C 0018E72C  7C 7E 1B 78 */	mr r30, r3
/* 801C5170 0018E730  48 00 00 4D */	bl func_801C51BC
/* 801C5174 0018E734  2C 03 00 00 */	cmpwi r3, 0
/* 801C5178 0018E738  40 82 00 30 */	bne .L_801C51A8
/* 801C517C 0018E73C  7F E3 FB 78 */	mr r3, r31
/* 801C5180 0018E740  4B F7 41 65 */	bl func_801392E4
/* 801C5184 0018E744  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801C5188 0018E748  28 00 00 0C */	cmplwi r0, 0xc
/* 801C518C 0018E74C  41 82 00 1C */	beq .L_801C51A8
/* 801C5190 0018E750  A0 7E 08 04 */	lhz r3, 0x804(r30)
/* 801C5194 0018E754  54 60 08 3C */	slwi r0, r3, 1
/* 801C5198 0018E758  38 83 00 01 */	addi r4, r3, 1
/* 801C519C 0018E75C  7C 7E 02 14 */	add r3, r30, r0
/* 801C51A0 0018E760  B3 E3 00 04 */	sth r31, 4(r3)
/* 801C51A4 0018E764  B0 9E 08 04 */	sth r4, 0x804(r30)
.L_801C51A8:
/* 801C51A8 0018E768  BB C1 00 08 */	lmw r30, 8(r1)
/* 801C51AC 0018E76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C51B0 0018E770  7C 08 03 A6 */	mtlr r0
/* 801C51B4 0018E774  38 21 00 10 */	addi r1, r1, 0x10
/* 801C51B8 0018E778  4E 80 00 20 */	blr 

.global func_801C51BC
func_801C51BC:
/* 801C51BC 0018E77C  A0 C3 08 04 */	lhz r6, 0x804(r3)
/* 801C51C0 0018E780  38 E0 00 00 */	li r7, 0
/* 801C51C4 0018E784  48 00 00 24 */	b .L_801C51E8
.L_801C51C8:
/* 801C51C8 0018E788  54 E0 0B FC */	rlwinm r0, r7, 1, 0xf, 0x1e
/* 801C51CC 0018E78C  7C A3 02 14 */	add r5, r3, r0
/* 801C51D0 0018E790  A0 05 00 04 */	lhz r0, 4(r5)
/* 801C51D4 0018E794  7C 04 00 40 */	cmplw r4, r0
/* 801C51D8 0018E798  40 82 00 0C */	bne .L_801C51E4
/* 801C51DC 0018E79C  38 60 00 01 */	li r3, 1
/* 801C51E0 0018E7A0  4E 80 00 20 */	blr
.L_801C51E4:
/* 801C51E4 0018E7A4  38 E7 00 01 */	addi r7, r7, 1
.L_801C51E8:
/* 801C51E8 0018E7A8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 801C51EC 0018E7AC  7C 00 30 40 */	cmplw r0, r6
/* 801C51F0 0018E7B0  41 80 FF D8 */	blt .L_801C51C8
/* 801C51F4 0018E7B4  38 60 00 00 */	li r3, 0
/* 801C51F8 0018E7B8  4E 80 00 20 */	blr

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_800109A0
lbl_800109A0:
	.4byte 0x08080000
	.4byte 0

.global lbl_800109A8
lbl_800109A8:
	.4byte 0x48080000
	.4byte 0

.global lbl_800109B0
lbl_800109B0:
	.4byte 0x10080000
	.4byte 0


.section extabindex, "wa"  # 0x80021020 - 0x80039220

.4byte func_801C4B74
	.4byte 0x00000040
	.4byte lbl_800109A0
	.4byte func_801C4BB4
	.4byte 0x000005A4
	.4byte lbl_800109A8
	.4byte func_801C5158
	.4byte 0x00000064
	.4byte lbl_800109B0