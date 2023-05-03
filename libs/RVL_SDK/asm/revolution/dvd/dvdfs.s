.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __DVDFSInit, global
/* 80309DA0 002D3360  3C 60 80 00 */	lis r3, 0x80000038@ha
/* 80309DA4 002D3364  90 6D B6 44 */	stw r3, BootInfo@sda21(r13)
/* 80309DA8 002D3368  80 63 00 38 */	lwz r3, 0x80000038@l(r3)
/* 80309DAC 002D336C  90 6D B6 40 */	stw r3, FstStart@sda21(r13)
/* 80309DB0 002D3370  2C 03 00 00 */	cmpwi r3, 0
/* 80309DB4 002D3374  4D 82 00 20 */	beqlr 
/* 80309DB8 002D3378  80 03 00 08 */	lwz r0, 8(r3)
/* 80309DBC 002D337C  90 0D B6 38 */	stw r0, MaxEntryNum@sda21(r13)
/* 80309DC0 002D3380  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80309DC4 002D3384  7C 03 02 14 */	add r0, r3, r0
/* 80309DC8 002D3388  90 0D B6 3C */	stw r0, FstStringStart@sda21(r13)
/* 80309DCC 002D338C  4E 80 00 20 */	blr 
.endfn __DVDFSInit

.balign 16, 0
.fn DVDConvertPathToEntrynum, global
/* 80309DD0 002D3390  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80309DD4 002D3394  7C 08 02 A6 */	mflr r0
/* 80309DD8 002D3398  90 01 00 34 */	stw r0, 0x34(r1)
/* 80309DDC 002D339C  39 61 00 30 */	addi r11, r1, 0x30
/* 80309DE0 002D33A0  4B FB 03 65 */	bl _savegpr_23
/* 80309DE4 002D33A4  7C 7A 1B 78 */	mr r26, r3
/* 80309DE8 002D33A8  3F E0 80 54 */	lis r31, _current_locale@ha
/* 80309DEC 002D33AC  83 AD B6 28 */	lwz r29, currentDirectory@sda21(r13)
/* 80309DF0 002D33B0  7F 5C D3 78 */	mr r28, r26
/* 80309DF4 002D33B4  3B FF F5 48 */	addi r31, r31, _current_locale@l
/* 80309DF8 002D33B8  3F C0 80 55 */	lis r30, lbl_805497B8@ha
.L_80309DFC:
/* 80309DFC 002D33BC  88 1A 00 00 */	lbz r0, 0(r26)
/* 80309E00 002D33C0  7C 00 07 75 */	extsb. r0, r0
/* 80309E04 002D33C4  40 82 00 0C */	bne .L_80309E10
/* 80309E08 002D33C8  7F A3 EB 78 */	mr r3, r29
/* 80309E0C 002D33CC  48 00 02 B4 */	b .L_8030A0C0
.L_80309E10:
/* 80309E10 002D33D0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80309E14 002D33D4  40 82 00 10 */	bne .L_80309E24
/* 80309E18 002D33D8  3B A0 00 00 */	li r29, 0
/* 80309E1C 002D33DC  3B 5A 00 01 */	addi r26, r26, 1
/* 80309E20 002D33E0  4B FF FF DC */	b .L_80309DFC
.L_80309E24:
/* 80309E24 002D33E4  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80309E28 002D33E8  40 82 00 78 */	bne .L_80309EA0
/* 80309E2C 002D33EC  88 1A 00 01 */	lbz r0, 1(r26)
/* 80309E30 002D33F0  7C 00 07 74 */	extsb r0, r0
/* 80309E34 002D33F4  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80309E38 002D33F8  40 82 00 48 */	bne .L_80309E80
/* 80309E3C 002D33FC  88 1A 00 02 */	lbz r0, 2(r26)
/* 80309E40 002D3400  7C 00 07 74 */	extsb r0, r0
/* 80309E44 002D3404  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80309E48 002D3408  40 82 00 1C */	bne .L_80309E64
/* 80309E4C 002D340C  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80309E50 002D3410  80 6D B6 40 */	lwz r3, FstStart@sda21(r13)
/* 80309E54 002D3414  3B 5A 00 03 */	addi r26, r26, 3
/* 80309E58 002D3418  7C 63 02 14 */	add r3, r3, r0
/* 80309E5C 002D341C  83 A3 00 04 */	lwz r29, 4(r3)
/* 80309E60 002D3420  4B FF FF 9C */	b .L_80309DFC
.L_80309E64:
/* 80309E64 002D3424  2C 00 00 00 */	cmpwi r0, 0
/* 80309E68 002D3428  40 82 00 38 */	bne .L_80309EA0
/* 80309E6C 002D342C  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80309E70 002D3430  80 6D B6 40 */	lwz r3, FstStart@sda21(r13)
/* 80309E74 002D3434  7C 63 02 14 */	add r3, r3, r0
/* 80309E78 002D3438  80 63 00 04 */	lwz r3, 4(r3)
/* 80309E7C 002D343C  48 00 02 44 */	b .L_8030A0C0
.L_80309E80:
/* 80309E80 002D3440  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80309E84 002D3444  40 82 00 0C */	bne .L_80309E90
/* 80309E88 002D3448  3B 5A 00 02 */	addi r26, r26, 2
/* 80309E8C 002D344C  4B FF FF 70 */	b .L_80309DFC
.L_80309E90:
/* 80309E90 002D3450  2C 00 00 00 */	cmpwi r0, 0
/* 80309E94 002D3454  40 82 00 0C */	bne .L_80309EA0
/* 80309E98 002D3458  7F A3 EB 78 */	mr r3, r29
/* 80309E9C 002D345C  48 00 02 24 */	b .L_8030A0C0
.L_80309EA0:
/* 80309EA0 002D3460  80 0D 97 F0 */	lwz r0, __DVDLongFileNameFlag@sda21(r13)
/* 80309EA4 002D3464  2C 00 00 00 */	cmpwi r0, 0
/* 80309EA8 002D3468  40 82 00 AC */	bne .L_80309F54
/* 80309EAC 002D346C  7F 57 D3 78 */	mr r23, r26
/* 80309EB0 002D3470  38 A0 00 00 */	li r5, 0
/* 80309EB4 002D3474  38 80 00 00 */	li r4, 0
/* 80309EB8 002D3478  48 00 00 4C */	b .L_80309F04
/* 80309EBC 002D347C  60 00 00 00 */	nop 
.L_80309EC0:
/* 80309EC0 002D3480  7C 60 07 74 */	extsb r0, r3
/* 80309EC4 002D3484  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80309EC8 002D3488  40 82 00 2C */	bne .L_80309EF4
/* 80309ECC 002D348C  7C 1A B8 50 */	subf r0, r26, r23
/* 80309ED0 002D3490  2C 00 00 08 */	cmpwi r0, 8
/* 80309ED4 002D3494  41 81 00 0C */	bgt .L_80309EE0
/* 80309ED8 002D3498  2C 05 00 01 */	cmpwi r5, 1
/* 80309EDC 002D349C  40 82 00 0C */	bne .L_80309EE8
.L_80309EE0:
/* 80309EE0 002D34A0  38 80 00 01 */	li r4, 1
/* 80309EE4 002D34A4  48 00 00 34 */	b .L_80309F18
.L_80309EE8:
/* 80309EE8 002D34A8  3B 77 00 01 */	addi r27, r23, 1
/* 80309EEC 002D34AC  38 A0 00 01 */	li r5, 1
/* 80309EF0 002D34B0  48 00 00 10 */	b .L_80309F00
.L_80309EF4:
/* 80309EF4 002D34B4  2C 00 00 20 */	cmpwi r0, 0x20
/* 80309EF8 002D34B8  40 82 00 08 */	bne .L_80309F00
/* 80309EFC 002D34BC  38 80 00 01 */	li r4, 1
.L_80309F00:
/* 80309F00 002D34C0  3A F7 00 01 */	addi r23, r23, 1
.L_80309F04:
/* 80309F04 002D34C4  88 77 00 00 */	lbz r3, 0(r23)
/* 80309F08 002D34C8  7C 60 07 75 */	extsb. r0, r3
/* 80309F0C 002D34CC  41 82 00 0C */	beq .L_80309F18
/* 80309F10 002D34D0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80309F14 002D34D4  40 82 FF AC */	bne .L_80309EC0
.L_80309F18:
/* 80309F18 002D34D8  2C 05 00 01 */	cmpwi r5, 1
/* 80309F1C 002D34DC  40 82 00 14 */	bne .L_80309F30
/* 80309F20 002D34E0  7C 1B B8 50 */	subf r0, r27, r23
/* 80309F24 002D34E4  2C 00 00 03 */	cmpwi r0, 3
/* 80309F28 002D34E8  40 81 00 08 */	ble .L_80309F30
/* 80309F2C 002D34EC  38 80 00 01 */	li r4, 1
.L_80309F30:
/* 80309F30 002D34F0  2C 04 00 00 */	cmpwi r4, 0
/* 80309F34 002D34F4  41 82 00 44 */	beq .L_80309F78
/* 80309F38 002D34F8  7F 86 E3 78 */	mr r6, r28
/* 80309F3C 002D34FC  38 BE 97 B8 */	addi r5, r30, lbl_805497B8@l
/* 80309F40 002D3500  38 6D 97 F8 */	addi r3, r13, lbl_80665978@sda21
/* 80309F44 002D3504  38 80 01 BB */	li r4, 0x1bb
/* 80309F48 002D3508  4C C6 31 82 */	crclr 6
/* 80309F4C 002D350C  48 1E 45 49 */	bl OSPanic
/* 80309F50 002D3510  48 00 00 28 */	b .L_80309F78
.L_80309F54:
/* 80309F54 002D3514  7F 57 D3 78 */	mr r23, r26
/* 80309F58 002D3518  48 00 00 0C */	b .L_80309F64
/* 80309F5C 002D351C  60 00 00 00 */	nop 
.L_80309F60:
/* 80309F60 002D3520  3A F7 00 01 */	addi r23, r23, 1
.L_80309F64:
/* 80309F64 002D3524  88 17 00 00 */	lbz r0, 0(r23)
/* 80309F68 002D3528  7C 00 07 75 */	extsb. r0, r0
/* 80309F6C 002D352C  41 82 00 0C */	beq .L_80309F78
/* 80309F70 002D3530  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80309F74 002D3534  40 82 FF EC */	bne .L_80309F60
.L_80309F78:
/* 80309F78 002D3538  88 17 00 00 */	lbz r0, 0(r23)
/* 80309F7C 002D353C  1C 7D 00 0C */	mulli r3, r29, 0xc
/* 80309F80 002D3540  80 ED B6 40 */	lwz r7, FstStart@sda21(r13)
/* 80309F84 002D3544  7D 1A B8 50 */	subf r8, r26, r23
/* 80309F88 002D3548  7C 05 07 74 */	extsb r5, r0
/* 80309F8C 002D354C  80 0D B6 3C */	lwz r0, FstStringStart@sda21(r13)
/* 80309F90 002D3550  7C 85 00 D0 */	neg r4, r5
/* 80309F94 002D3554  7C 85 2B 78 */	or r5, r4, r5
/* 80309F98 002D3558  7C 67 1A 14 */	add r3, r7, r3
/* 80309F9C 002D355C  80 83 00 08 */	lwz r4, 8(r3)
/* 80309FA0 002D3560  54 B9 0F FE */	srwi r25, r5, 0x1f
/* 80309FA4 002D3564  81 5F 00 38 */	lwz r10, 0x38(r31)
/* 80309FA8 002D3568  38 7D 00 01 */	addi r3, r29, 1
/* 80309FAC 002D356C  48 00 00 E8 */	b .L_8030A094
.L_80309FB0:
/* 80309FB0 002D3570  1C A3 00 0C */	mulli r5, r3, 0xc
/* 80309FB4 002D3574  7D 25 38 6E */	lwzux r9, r5, r7
/* 80309FB8 002D3578  55 26 00 0F */	rlwinm. r6, r9, 0, 0, 7
/* 80309FBC 002D357C  40 82 00 0C */	bne .L_80309FC8
/* 80309FC0 002D3580  2C 19 00 01 */	cmpwi r25, 1
/* 80309FC4 002D3584  41 82 00 BC */	beq .L_8030A080
.L_80309FC8:
/* 80309FC8 002D3588  55 29 02 3E */	clrlwi r9, r9, 8
/* 80309FCC 002D358C  7F 4B D3 78 */	mr r11, r26
/* 80309FD0 002D3590  7D 80 4A 14 */	add r12, r0, r9
/* 80309FD4 002D3594  48 00 00 74 */	b .L_8030A048
.L_80309FD8:
/* 80309FD8 002D3598  89 2C 00 00 */	lbz r9, 0(r12)
/* 80309FDC 002D359C  3B A0 00 01 */	li r29, 1
/* 80309FE0 002D35A0  39 8C 00 01 */	addi r12, r12, 1
/* 80309FE4 002D35A4  7D 38 07 74 */	extsb r24, r9
/* 80309FE8 002D35A8  28 18 00 FF */	cmplwi r24, 0xff
/* 80309FEC 002D35AC  41 81 00 08 */	bgt .L_80309FF4
/* 80309FF0 002D35B0  3B A0 00 00 */	li r29, 0
.L_80309FF4:
/* 80309FF4 002D35B4  2C 1D 00 00 */	cmpwi r29, 0
/* 80309FF8 002D35B8  41 82 00 08 */	beq .L_8030A000
/* 80309FFC 002D35BC  48 00 00 0C */	b .L_8030A008
.L_8030A000:
/* 8030A000 002D35C0  81 2A 00 10 */	lwz r9, 0x10(r10)
/* 8030A004 002D35C4  7F 09 C0 AE */	lbzx r24, r9, r24
.L_8030A008:
/* 8030A008 002D35C8  89 2B 00 00 */	lbz r9, 0(r11)
/* 8030A00C 002D35CC  3A E0 00 01 */	li r23, 1
/* 8030A010 002D35D0  39 6B 00 01 */	addi r11, r11, 1
/* 8030A014 002D35D4  7D 3D 07 74 */	extsb r29, r9
/* 8030A018 002D35D8  28 1D 00 FF */	cmplwi r29, 0xff
/* 8030A01C 002D35DC  41 81 00 08 */	bgt .L_8030A024
/* 8030A020 002D35E0  3A E0 00 00 */	li r23, 0
.L_8030A024:
/* 8030A024 002D35E4  2C 17 00 00 */	cmpwi r23, 0
/* 8030A028 002D35E8  41 82 00 08 */	beq .L_8030A030
/* 8030A02C 002D35EC  48 00 00 0C */	b .L_8030A038
.L_8030A030:
/* 8030A030 002D35F0  81 2A 00 10 */	lwz r9, 0x10(r10)
/* 8030A034 002D35F4  7F A9 E8 AE */	lbzx r29, r9, r29
.L_8030A038:
/* 8030A038 002D35F8  7C 1D C0 00 */	cmpw r29, r24
/* 8030A03C 002D35FC  41 82 00 0C */	beq .L_8030A048
/* 8030A040 002D3600  39 20 00 00 */	li r9, 0
/* 8030A044 002D3604  48 00 00 34 */	b .L_8030A078
.L_8030A048:
/* 8030A048 002D3608  89 2C 00 00 */	lbz r9, 0(r12)
/* 8030A04C 002D360C  7D 29 07 75 */	extsb. r9, r9
/* 8030A050 002D3610  40 82 FF 88 */	bne .L_80309FD8
/* 8030A054 002D3614  89 2B 00 00 */	lbz r9, 0(r11)
/* 8030A058 002D3618  7D 29 07 74 */	extsb r9, r9
/* 8030A05C 002D361C  2C 09 00 2F */	cmpwi r9, 0x2f
/* 8030A060 002D3620  41 82 00 0C */	beq .L_8030A06C
/* 8030A064 002D3624  2C 09 00 00 */	cmpwi r9, 0
/* 8030A068 002D3628  40 82 00 0C */	bne .L_8030A074
.L_8030A06C:
/* 8030A06C 002D362C  39 20 00 01 */	li r9, 1
/* 8030A070 002D3630  48 00 00 08 */	b .L_8030A078
.L_8030A074:
/* 8030A074 002D3634  39 20 00 00 */	li r9, 0
.L_8030A078:
/* 8030A078 002D3638  2C 09 00 01 */	cmpwi r9, 1
/* 8030A07C 002D363C  41 82 00 28 */	beq .L_8030A0A4
.L_8030A080:
/* 8030A080 002D3640  2C 06 00 00 */	cmpwi r6, 0
/* 8030A084 002D3644  41 82 00 0C */	beq .L_8030A090
/* 8030A088 002D3648  80 65 00 08 */	lwz r3, 8(r5)
/* 8030A08C 002D364C  48 00 00 08 */	b .L_8030A094
.L_8030A090:
/* 8030A090 002D3650  38 63 00 01 */	addi r3, r3, 1
.L_8030A094:
/* 8030A094 002D3654  7C 03 20 40 */	cmplw r3, r4
/* 8030A098 002D3658  41 80 FF 18 */	blt .L_80309FB0
/* 8030A09C 002D365C  38 60 FF FF */	li r3, -1
/* 8030A0A0 002D3660  48 00 00 20 */	b .L_8030A0C0
.L_8030A0A4:
/* 8030A0A4 002D3664  2C 19 00 00 */	cmpwi r25, 0
/* 8030A0A8 002D3668  40 82 00 08 */	bne .L_8030A0B0
/* 8030A0AC 002D366C  48 00 00 14 */	b .L_8030A0C0
.L_8030A0B0:
/* 8030A0B0 002D3670  7C 88 D2 14 */	add r4, r8, r26
/* 8030A0B4 002D3674  7C 7D 1B 78 */	mr r29, r3
/* 8030A0B8 002D3678  3B 44 00 01 */	addi r26, r4, 1
/* 8030A0BC 002D367C  4B FF FD 40 */	b .L_80309DFC
.L_8030A0C0:
/* 8030A0C0 002D3680  39 61 00 30 */	addi r11, r1, 0x30
/* 8030A0C4 002D3684  4B FB 00 CD */	bl _restgpr_23
/* 8030A0C8 002D3688  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030A0CC 002D368C  7C 08 03 A6 */	mtlr r0
/* 8030A0D0 002D3690  38 21 00 30 */	addi r1, r1, 0x30
/* 8030A0D4 002D3694  4E 80 00 20 */	blr 
.endfn DVDConvertPathToEntrynum

.balign 16, 0
.fn DVDFastOpen, global
/* 8030A0E0 002D36A0  2C 03 00 00 */	cmpwi r3, 0
/* 8030A0E4 002D36A4  41 80 00 24 */	blt .L_8030A108
/* 8030A0E8 002D36A8  80 0D B6 38 */	lwz r0, MaxEntryNum@sda21(r13)
/* 8030A0EC 002D36AC  7C 03 00 40 */	cmplw r3, r0
/* 8030A0F0 002D36B0  40 80 00 18 */	bge .L_8030A108
/* 8030A0F4 002D36B4  1C E3 00 0C */	mulli r7, r3, 0xc
/* 8030A0F8 002D36B8  80 6D B6 40 */	lwz r3, FstStart@sda21(r13)
/* 8030A0FC 002D36BC  7C 03 38 2E */	lwzx r0, r3, r7
/* 8030A100 002D36C0  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8030A104 002D36C4  41 82 00 0C */	beq .L_8030A110
.L_8030A108:
/* 8030A108 002D36C8  38 60 00 00 */	li r3, 0
/* 8030A10C 002D36CC  4E 80 00 20 */	blr
.L_8030A110:
/* 8030A110 002D36D0  7C 63 3A 14 */	add r3, r3, r7
/* 8030A114 002D36D4  80 AD B6 98 */	lwz r5, __DVDLayoutFormat@sda21(r13)
/* 8030A118 002D36D8  80 C3 00 04 */	lwz r6, 4(r3)
/* 8030A11C 002D36DC  38 00 00 00 */	li r0, 0
/* 8030A120 002D36E0  38 60 00 01 */	li r3, 1
/* 8030A124 002D36E4  7C C5 2C 30 */	srw r5, r6, r5
/* 8030A128 002D36E8  90 A4 00 30 */	stw r5, 0x30(r4)
/* 8030A12C 002D36EC  80 AD B6 40 */	lwz r5, FstStart@sda21(r13)
/* 8030A130 002D36F0  7C A5 3A 14 */	add r5, r5, r7
/* 8030A134 002D36F4  80 A5 00 08 */	lwz r5, 8(r5)
/* 8030A138 002D36F8  90 A4 00 34 */	stw r5, 0x34(r4)
/* 8030A13C 002D36FC  90 04 00 38 */	stw r0, 0x38(r4)
/* 8030A140 002D3700  90 04 00 0C */	stw r0, 0xc(r4)
/* 8030A144 002D3704  4E 80 00 20 */	blr 
.endfn DVDFastOpen

.balign 16, 0
.fn DVDOpen, global
/* 8030A150 002D3710  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8030A154 002D3714  7C 08 02 A6 */	mflr r0
/* 8030A158 002D3718  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8030A15C 002D371C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8030A160 002D3720  4B FA FF F5 */	bl _savegpr_27
/* 8030A164 002D3724  7C 7C 1B 78 */	mr r28, r3
/* 8030A168 002D3728  7C 9B 23 78 */	mr r27, r4
/* 8030A16C 002D372C  4B FF FC 65 */	bl DVDConvertPathToEntrynum
/* 8030A170 002D3730  2C 03 00 00 */	cmpwi r3, 0
/* 8030A174 002D3734  40 80 02 28 */	bge .L_8030A39C
/* 8030A178 002D3738  83 AD B6 28 */	lwz r29, currentDirectory@sda21(r13)
/* 8030A17C 002D373C  2C 1D 00 00 */	cmpwi r29, 0
/* 8030A180 002D3740  40 82 00 0C */	bne .L_8030A18C
/* 8030A184 002D3744  38 80 00 00 */	li r4, 0
/* 8030A188 002D3748  48 00 01 98 */	b .L_8030A320
.L_8030A18C:
/* 8030A18C 002D374C  81 0D B6 40 */	lwz r8, FstStart@sda21(r13)
/* 8030A190 002D3750  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 8030A194 002D3754  80 ED B6 3C */	lwz r7, FstStringStart@sda21(r13)
/* 8030A198 002D3758  38 C8 00 04 */	addi r6, r8, 4
/* 8030A19C 002D375C  7C 66 00 2E */	lwzx r3, r6, r0
/* 8030A1A0 002D3760  7C 08 00 2E */	lwzx r0, r8, r0
/* 8030A1A4 002D3764  2C 03 00 00 */	cmpwi r3, 0
/* 8030A1A8 002D3768  54 00 02 3E */	clrlwi r0, r0, 8
/* 8030A1AC 002D376C  7F C7 02 14 */	add r30, r7, r0
/* 8030A1B0 002D3770  40 82 00 0C */	bne .L_8030A1BC
/* 8030A1B4 002D3774  38 80 00 00 */	li r4, 0
/* 8030A1B8 002D3778  48 00 01 08 */	b .L_8030A2C0
.L_8030A1BC:
/* 8030A1BC 002D377C  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8030A1C0 002D3780  7C 66 00 2E */	lwzx r3, r6, r0
/* 8030A1C4 002D3784  7C 08 00 2E */	lwzx r0, r8, r0
/* 8030A1C8 002D3788  2C 03 00 00 */	cmpwi r3, 0
/* 8030A1CC 002D378C  54 00 02 3E */	clrlwi r0, r0, 8
/* 8030A1D0 002D3790  7F E7 02 14 */	add r31, r7, r0
/* 8030A1D4 002D3794  40 82 00 0C */	bne .L_8030A1E0
/* 8030A1D8 002D3798  38 80 00 00 */	li r4, 0
/* 8030A1DC 002D379C  48 00 00 84 */	b .L_8030A260
.L_8030A1E0:
/* 8030A1E0 002D37A0  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8030A1E4 002D37A4  38 81 00 08 */	addi r4, r1, 8
/* 8030A1E8 002D37A8  38 A0 00 80 */	li r5, 0x80
/* 8030A1EC 002D37AC  7C 08 18 2E */	lwzx r0, r8, r3
/* 8030A1F0 002D37B0  7C 66 18 2E */	lwzx r3, r6, r3
/* 8030A1F4 002D37B4  54 00 02 3E */	clrlwi r0, r0, 8
/* 8030A1F8 002D37B8  7F 67 02 14 */	add r27, r7, r0
/* 8030A1FC 002D37BC  48 00 02 45 */	bl entryToPath
/* 8030A200 002D37C0  28 03 00 80 */	cmplwi r3, 0x80
/* 8030A204 002D37C4  7C 64 1B 78 */	mr r4, r3
/* 8030A208 002D37C8  40 82 00 08 */	bne .L_8030A210
/* 8030A20C 002D37CC  48 00 00 54 */	b .L_8030A260
.L_8030A210:
/* 8030A210 002D37D0  38 83 00 01 */	addi r4, r3, 1
/* 8030A214 002D37D4  38 A1 00 08 */	addi r5, r1, 8
/* 8030A218 002D37D8  38 00 00 2F */	li r0, 0x2f
/* 8030A21C 002D37DC  7C 05 19 AE */	stbx r0, r5, r3
/* 8030A220 002D37E0  20 C4 00 80 */	subfic r6, r4, 0x80
/* 8030A224 002D37E4  7C A5 22 14 */	add r5, r5, r4
/* 8030A228 002D37E8  7C C3 33 78 */	mr r3, r6
/* 8030A22C 002D37EC  48 00 00 18 */	b .L_8030A244
.L_8030A230:
/* 8030A230 002D37F0  88 1B 00 00 */	lbz r0, 0(r27)
/* 8030A234 002D37F4  3B 7B 00 01 */	addi r27, r27, 1
/* 8030A238 002D37F8  98 05 00 00 */	stb r0, 0(r5)
/* 8030A23C 002D37FC  38 A5 00 01 */	addi r5, r5, 1
/* 8030A240 002D3800  38 63 FF FF */	addi r3, r3, -1
.L_8030A244:
/* 8030A244 002D3804  2C 03 00 00 */	cmpwi r3, 0
/* 8030A248 002D3808  41 82 00 10 */	beq .L_8030A258
/* 8030A24C 002D380C  88 1B 00 00 */	lbz r0, 0(r27)
/* 8030A250 002D3810  7C 00 07 75 */	extsb. r0, r0
/* 8030A254 002D3814  40 82 FF DC */	bne .L_8030A230
.L_8030A258:
/* 8030A258 002D3818  7C 03 30 50 */	subf r0, r3, r6
/* 8030A25C 002D381C  7C 84 02 14 */	add r4, r4, r0
.L_8030A260:
/* 8030A260 002D3820  28 04 00 80 */	cmplwi r4, 0x80
/* 8030A264 002D3824  40 82 00 08 */	bne .L_8030A26C
/* 8030A268 002D3828  48 00 00 58 */	b .L_8030A2C0
.L_8030A26C:
/* 8030A26C 002D382C  38 A4 00 01 */	addi r5, r4, 1
/* 8030A270 002D3830  38 61 00 08 */	addi r3, r1, 8
/* 8030A274 002D3834  38 00 00 2F */	li r0, 0x2f
/* 8030A278 002D3838  7C 03 21 AE */	stbx r0, r3, r4
/* 8030A27C 002D383C  20 C5 00 80 */	subfic r6, r5, 0x80
/* 8030A280 002D3840  7C 63 2A 14 */	add r3, r3, r5
/* 8030A284 002D3844  7C C4 33 78 */	mr r4, r6
/* 8030A288 002D3848  48 00 00 1C */	b .L_8030A2A4
/* 8030A28C 002D384C  60 00 00 00 */	nop 
.L_8030A290:
/* 8030A290 002D3850  88 1F 00 00 */	lbz r0, 0(r31)
/* 8030A294 002D3854  3B FF 00 01 */	addi r31, r31, 1
/* 8030A298 002D3858  98 03 00 00 */	stb r0, 0(r3)
/* 8030A29C 002D385C  38 63 00 01 */	addi r3, r3, 1
/* 8030A2A0 002D3860  38 84 FF FF */	addi r4, r4, -1
.L_8030A2A4:
/* 8030A2A4 002D3864  2C 04 00 00 */	cmpwi r4, 0
/* 8030A2A8 002D3868  41 82 00 10 */	beq .L_8030A2B8
/* 8030A2AC 002D386C  88 1F 00 00 */	lbz r0, 0(r31)
/* 8030A2B0 002D3870  7C 00 07 75 */	extsb. r0, r0
/* 8030A2B4 002D3874  40 82 FF DC */	bne .L_8030A290
.L_8030A2B8:
/* 8030A2B8 002D3878  7C 04 30 50 */	subf r0, r4, r6
/* 8030A2BC 002D387C  7C 85 02 14 */	add r4, r5, r0
.L_8030A2C0:
/* 8030A2C0 002D3880  28 04 00 80 */	cmplwi r4, 0x80
/* 8030A2C4 002D3884  40 82 00 08 */	bne .L_8030A2CC
/* 8030A2C8 002D3888  48 00 00 58 */	b .L_8030A320
.L_8030A2CC:
/* 8030A2CC 002D388C  38 A4 00 01 */	addi r5, r4, 1
/* 8030A2D0 002D3890  38 61 00 08 */	addi r3, r1, 8
/* 8030A2D4 002D3894  38 00 00 2F */	li r0, 0x2f
/* 8030A2D8 002D3898  7C 03 21 AE */	stbx r0, r3, r4
/* 8030A2DC 002D389C  20 C5 00 80 */	subfic r6, r5, 0x80
/* 8030A2E0 002D38A0  7C 63 2A 14 */	add r3, r3, r5
/* 8030A2E4 002D38A4  7C C4 33 78 */	mr r4, r6
/* 8030A2E8 002D38A8  48 00 00 1C */	b .L_8030A304
/* 8030A2EC 002D38AC  60 00 00 00 */	nop 
.L_8030A2F0:
/* 8030A2F0 002D38B0  88 1E 00 00 */	lbz r0, 0(r30)
/* 8030A2F4 002D38B4  3B DE 00 01 */	addi r30, r30, 1
/* 8030A2F8 002D38B8  98 03 00 00 */	stb r0, 0(r3)
/* 8030A2FC 002D38BC  38 63 00 01 */	addi r3, r3, 1
/* 8030A300 002D38C0  38 84 FF FF */	addi r4, r4, -1
.L_8030A304:
/* 8030A304 002D38C4  2C 04 00 00 */	cmpwi r4, 0
/* 8030A308 002D38C8  41 82 00 10 */	beq .L_8030A318
/* 8030A30C 002D38CC  88 1E 00 00 */	lbz r0, 0(r30)
/* 8030A310 002D38D0  7C 00 07 75 */	extsb. r0, r0
/* 8030A314 002D38D4  40 82 FF DC */	bne .L_8030A2F0
.L_8030A318:
/* 8030A318 002D38D8  7C 04 30 50 */	subf r0, r4, r6
/* 8030A31C 002D38DC  7C 85 02 14 */	add r4, r5, r0
.L_8030A320:
/* 8030A320 002D38E0  28 04 00 80 */	cmplwi r4, 0x80
/* 8030A324 002D38E4  40 82 00 10 */	bne .L_8030A334
/* 8030A328 002D38E8  38 00 00 00 */	li r0, 0
/* 8030A32C 002D38EC  98 01 00 87 */	stb r0, 0x87(r1)
/* 8030A330 002D38F0  48 00 00 4C */	b .L_8030A37C
.L_8030A334:
/* 8030A334 002D38F4  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 8030A338 002D38F8  80 6D B6 40 */	lwz r3, FstStart@sda21(r13)
/* 8030A33C 002D38FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8030A340 002D3900  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8030A344 002D3904  41 82 00 2C */	beq .L_8030A370
/* 8030A348 002D3908  28 04 00 7F */	cmplwi r4, 0x7f
/* 8030A34C 002D390C  40 82 00 14 */	bne .L_8030A360
/* 8030A350 002D3910  38 61 00 08 */	addi r3, r1, 8
/* 8030A354 002D3914  38 00 00 00 */	li r0, 0
/* 8030A358 002D3918  7C 03 21 AE */	stbx r0, r3, r4
/* 8030A35C 002D391C  48 00 00 20 */	b .L_8030A37C
.L_8030A360:
/* 8030A360 002D3920  38 61 00 08 */	addi r3, r1, 8
/* 8030A364 002D3924  38 00 00 2F */	li r0, 0x2f
/* 8030A368 002D3928  7C 03 21 AE */	stbx r0, r3, r4
/* 8030A36C 002D392C  38 84 00 01 */	addi r4, r4, 1
.L_8030A370:
/* 8030A370 002D3930  38 61 00 08 */	addi r3, r1, 8
/* 8030A374 002D3934  38 00 00 00 */	li r0, 0
/* 8030A378 002D3938  7C 03 21 AE */	stbx r0, r3, r4
.L_8030A37C:
/* 8030A37C 002D393C  3C 60 80 55 */	lis r3, lbl_80549880@ha
/* 8030A380 002D3940  7F 84 E3 78 */	mr r4, r28
/* 8030A384 002D3944  38 63 98 80 */	addi r3, r3, lbl_80549880@l
/* 8030A388 002D3948  38 A1 00 08 */	addi r5, r1, 8
/* 8030A38C 002D394C  4C C6 31 82 */	crclr 6
/* 8030A390 002D3950  48 04 AB 61 */	bl OSReport
/* 8030A394 002D3954  38 60 00 00 */	li r3, 0
/* 8030A398 002D3958  48 00 00 54 */	b .L_8030A3EC
.L_8030A39C:
/* 8030A39C 002D395C  1C C3 00 0C */	mulli r6, r3, 0xc
/* 8030A3A0 002D3960  80 6D B6 40 */	lwz r3, FstStart@sda21(r13)
/* 8030A3A4 002D3964  7C 03 30 2E */	lwzx r0, r3, r6
/* 8030A3A8 002D3968  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8030A3AC 002D396C  41 82 00 0C */	beq .L_8030A3B8
/* 8030A3B0 002D3970  38 60 00 00 */	li r3, 0
/* 8030A3B4 002D3974  48 00 00 38 */	b .L_8030A3EC
.L_8030A3B8:
/* 8030A3B8 002D3978  7C 63 32 14 */	add r3, r3, r6
/* 8030A3BC 002D397C  80 8D B6 98 */	lwz r4, __DVDLayoutFormat@sda21(r13)
/* 8030A3C0 002D3980  80 A3 00 04 */	lwz r5, 4(r3)
/* 8030A3C4 002D3984  38 00 00 00 */	li r0, 0
/* 8030A3C8 002D3988  38 60 00 01 */	li r3, 1
/* 8030A3CC 002D398C  7C A4 24 30 */	srw r4, r5, r4
/* 8030A3D0 002D3990  90 9B 00 30 */	stw r4, 0x30(r27)
/* 8030A3D4 002D3994  80 8D B6 40 */	lwz r4, FstStart@sda21(r13)
/* 8030A3D8 002D3998  7C 84 32 14 */	add r4, r4, r6
/* 8030A3DC 002D399C  80 84 00 08 */	lwz r4, 8(r4)
/* 8030A3E0 002D39A0  90 9B 00 34 */	stw r4, 0x34(r27)
/* 8030A3E4 002D39A4  90 1B 00 38 */	stw r0, 0x38(r27)
/* 8030A3E8 002D39A8  90 1B 00 0C */	stw r0, 0xc(r27)
.L_8030A3EC:
/* 8030A3EC 002D39AC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8030A3F0 002D39B0  4B FA FD B1 */	bl _restgpr_27
/* 8030A3F4 002D39B4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8030A3F8 002D39B8  7C 08 03 A6 */	mtlr r0
/* 8030A3FC 002D39BC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8030A400 002D39C0  4E 80 00 20 */	blr 
.endfn DVDOpen

.balign 16, 0
.fn DVDClose, global
/* 8030A410 002D39D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A414 002D39D4  7C 08 02 A6 */	mflr r0
/* 8030A418 002D39D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A41C 002D39DC  48 00 4B F5 */	bl DVDCancel
/* 8030A420 002D39E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A424 002D39E4  38 60 00 01 */	li r3, 1
/* 8030A428 002D39E8  7C 08 03 A6 */	mtlr r0
/* 8030A42C 002D39EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A430 002D39F0  4E 80 00 20 */	blr 
.endfn DVDClose

.balign 16, 0
.fn entryToPath, local
/* 8030A440 002D3A00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030A444 002D3A04  7C 08 02 A6 */	mflr r0
/* 8030A448 002D3A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030A44C 002D3A0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8030A450 002D3A10  4B FA FD 05 */	bl _savegpr_27
/* 8030A454 002D3A14  2C 03 00 00 */	cmpwi r3, 0
/* 8030A458 002D3A18  7C 9C 23 78 */	mr r28, r4
/* 8030A45C 002D3A1C  7C BD 2B 78 */	mr r29, r5
/* 8030A460 002D3A20  40 82 00 0C */	bne .L_8030A46C
/* 8030A464 002D3A24  38 60 00 00 */	li r3, 0
/* 8030A468 002D3A28  48 00 01 88 */	b .L_8030A5F0
.L_8030A46C:
/* 8030A46C 002D3A2C  81 0D B6 40 */	lwz r8, FstStart@sda21(r13)
/* 8030A470 002D3A30  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8030A474 002D3A34  80 ED B6 3C */	lwz r7, FstStringStart@sda21(r13)
/* 8030A478 002D3A38  38 C8 00 04 */	addi r6, r8, 4
/* 8030A47C 002D3A3C  7C 66 00 2E */	lwzx r3, r6, r0
/* 8030A480 002D3A40  7C 08 00 2E */	lwzx r0, r8, r0
/* 8030A484 002D3A44  2C 03 00 00 */	cmpwi r3, 0
/* 8030A488 002D3A48  54 00 02 3E */	clrlwi r0, r0, 8
/* 8030A48C 002D3A4C  7F C7 02 14 */	add r30, r7, r0
/* 8030A490 002D3A50  40 82 00 0C */	bne .L_8030A49C
/* 8030A494 002D3A54  38 80 00 00 */	li r4, 0
/* 8030A498 002D3A58  48 00 00 F8 */	b .L_8030A590
.L_8030A49C:
/* 8030A49C 002D3A5C  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8030A4A0 002D3A60  7C 66 00 2E */	lwzx r3, r6, r0
/* 8030A4A4 002D3A64  7C 08 00 2E */	lwzx r0, r8, r0
/* 8030A4A8 002D3A68  2C 03 00 00 */	cmpwi r3, 0
/* 8030A4AC 002D3A6C  54 00 02 3E */	clrlwi r0, r0, 8
/* 8030A4B0 002D3A70  7F E7 02 14 */	add r31, r7, r0
/* 8030A4B4 002D3A74  40 82 00 0C */	bne .L_8030A4C0
/* 8030A4B8 002D3A78  38 80 00 00 */	li r4, 0
/* 8030A4BC 002D3A7C  48 00 00 7C */	b .L_8030A538
.L_8030A4C0:
/* 8030A4C0 002D3A80  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8030A4C4 002D3A84  7C 08 18 2E */	lwzx r0, r8, r3
/* 8030A4C8 002D3A88  7C 66 18 2E */	lwzx r3, r6, r3
/* 8030A4CC 002D3A8C  54 00 02 3E */	clrlwi r0, r0, 8
/* 8030A4D0 002D3A90  7F 67 02 14 */	add r27, r7, r0
/* 8030A4D4 002D3A94  4B FF FF 6D */	bl entryToPath
/* 8030A4D8 002D3A98  7C 03 E8 40 */	cmplw r3, r29
/* 8030A4DC 002D3A9C  7C 64 1B 78 */	mr r4, r3
/* 8030A4E0 002D3AA0  40 82 00 08 */	bne .L_8030A4E8
/* 8030A4E4 002D3AA4  48 00 00 54 */	b .L_8030A538
.L_8030A4E8:
/* 8030A4E8 002D3AA8  38 83 00 01 */	addi r4, r3, 1
/* 8030A4EC 002D3AAC  38 00 00 2F */	li r0, 0x2f
/* 8030A4F0 002D3AB0  7C C4 E8 50 */	subf r6, r4, r29
/* 8030A4F4 002D3AB4  7C 1C 19 AE */	stbx r0, r28, r3
/* 8030A4F8 002D3AB8  7C 7C 22 14 */	add r3, r28, r4
/* 8030A4FC 002D3ABC  7C C5 33 78 */	mr r5, r6
/* 8030A500 002D3AC0  48 00 00 1C */	b .L_8030A51C
/* 8030A504 002D3AC4  60 00 00 00 */	nop 
.L_8030A508:
/* 8030A508 002D3AC8  88 1B 00 00 */	lbz r0, 0(r27)
/* 8030A50C 002D3ACC  3B 7B 00 01 */	addi r27, r27, 1
/* 8030A510 002D3AD0  98 03 00 00 */	stb r0, 0(r3)
/* 8030A514 002D3AD4  38 63 00 01 */	addi r3, r3, 1
/* 8030A518 002D3AD8  38 A5 FF FF */	addi r5, r5, -1
.L_8030A51C:
/* 8030A51C 002D3ADC  2C 05 00 00 */	cmpwi r5, 0
/* 8030A520 002D3AE0  41 82 00 10 */	beq .L_8030A530
/* 8030A524 002D3AE4  88 1B 00 00 */	lbz r0, 0(r27)
/* 8030A528 002D3AE8  7C 00 07 75 */	extsb. r0, r0
/* 8030A52C 002D3AEC  40 82 FF DC */	bne .L_8030A508
.L_8030A530:
/* 8030A530 002D3AF0  7C 05 30 50 */	subf r0, r5, r6
/* 8030A534 002D3AF4  7C 84 02 14 */	add r4, r4, r0
.L_8030A538:
/* 8030A538 002D3AF8  7C 04 E8 40 */	cmplw r4, r29
/* 8030A53C 002D3AFC  40 82 00 08 */	bne .L_8030A544
/* 8030A540 002D3B00  48 00 00 50 */	b .L_8030A590
.L_8030A544:
/* 8030A544 002D3B04  38 64 00 01 */	addi r3, r4, 1
/* 8030A548 002D3B08  38 00 00 2F */	li r0, 0x2f
/* 8030A54C 002D3B0C  7C C3 E8 50 */	subf r6, r3, r29
/* 8030A550 002D3B10  7C 1C 21 AE */	stbx r0, r28, r4
/* 8030A554 002D3B14  7C 9C 1A 14 */	add r4, r28, r3
/* 8030A558 002D3B18  7C C5 33 78 */	mr r5, r6
/* 8030A55C 002D3B1C  48 00 00 18 */	b .L_8030A574
.L_8030A560:
/* 8030A560 002D3B20  88 1F 00 00 */	lbz r0, 0(r31)
/* 8030A564 002D3B24  3B FF 00 01 */	addi r31, r31, 1
/* 8030A568 002D3B28  98 04 00 00 */	stb r0, 0(r4)
/* 8030A56C 002D3B2C  38 84 00 01 */	addi r4, r4, 1
/* 8030A570 002D3B30  38 A5 FF FF */	addi r5, r5, -1
.L_8030A574:
/* 8030A574 002D3B34  2C 05 00 00 */	cmpwi r5, 0
/* 8030A578 002D3B38  41 82 00 10 */	beq .L_8030A588
/* 8030A57C 002D3B3C  88 1F 00 00 */	lbz r0, 0(r31)
/* 8030A580 002D3B40  7C 00 07 75 */	extsb. r0, r0
/* 8030A584 002D3B44  40 82 FF DC */	bne .L_8030A560
.L_8030A588:
/* 8030A588 002D3B48  7C 05 30 50 */	subf r0, r5, r6
/* 8030A58C 002D3B4C  7C 83 02 14 */	add r4, r3, r0
.L_8030A590:
/* 8030A590 002D3B50  7C 04 E8 40 */	cmplw r4, r29
/* 8030A594 002D3B54  40 82 00 0C */	bne .L_8030A5A0
/* 8030A598 002D3B58  7C 83 23 78 */	mr r3, r4
/* 8030A59C 002D3B5C  48 00 00 54 */	b .L_8030A5F0
.L_8030A5A0:
/* 8030A5A0 002D3B60  38 C4 00 01 */	addi r6, r4, 1
/* 8030A5A4 002D3B64  38 00 00 2F */	li r0, 0x2f
/* 8030A5A8 002D3B68  7C A6 E8 50 */	subf r5, r6, r29
/* 8030A5AC 002D3B6C  7C 1C 21 AE */	stbx r0, r28, r4
/* 8030A5B0 002D3B70  7C 7C 32 14 */	add r3, r28, r6
/* 8030A5B4 002D3B74  7C A4 2B 78 */	mr r4, r5
/* 8030A5B8 002D3B78  48 00 00 1C */	b .L_8030A5D4
/* 8030A5BC 002D3B7C  60 00 00 00 */	nop 
.L_8030A5C0:
/* 8030A5C0 002D3B80  88 1E 00 00 */	lbz r0, 0(r30)
/* 8030A5C4 002D3B84  3B DE 00 01 */	addi r30, r30, 1
/* 8030A5C8 002D3B88  98 03 00 00 */	stb r0, 0(r3)
/* 8030A5CC 002D3B8C  38 63 00 01 */	addi r3, r3, 1
/* 8030A5D0 002D3B90  38 84 FF FF */	addi r4, r4, -1
.L_8030A5D4:
/* 8030A5D4 002D3B94  2C 04 00 00 */	cmpwi r4, 0
/* 8030A5D8 002D3B98  41 82 00 10 */	beq .L_8030A5E8
/* 8030A5DC 002D3B9C  88 1E 00 00 */	lbz r0, 0(r30)
/* 8030A5E0 002D3BA0  7C 00 07 75 */	extsb. r0, r0
/* 8030A5E4 002D3BA4  40 82 FF DC */	bne .L_8030A5C0
.L_8030A5E8:
/* 8030A5E8 002D3BA8  7C 04 28 50 */	subf r0, r4, r5
/* 8030A5EC 002D3BAC  7C 66 02 14 */	add r3, r6, r0
.L_8030A5F0:
/* 8030A5F0 002D3BB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8030A5F4 002D3BB4  4B FA FB AD */	bl _restgpr_27
/* 8030A5F8 002D3BB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030A5FC 002D3BBC  7C 08 03 A6 */	mtlr r0
/* 8030A600 002D3BC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8030A604 002D3BC4  4E 80 00 20 */	blr 
.endfn entryToPath

.balign 16, 0
.fn DVDReadAsyncPrio, global
/* 8030A610 002D3BD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030A614 002D3BD4  7C 08 02 A6 */	mflr r0
/* 8030A618 002D3BD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030A61C 002D3BDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8030A620 002D3BE0  4B FA FB 31 */	bl _savegpr_26
/* 8030A624 002D3BE4  2C 06 00 00 */	cmpwi r6, 0
/* 8030A628 002D3BE8  7C 7A 1B 78 */	mr r26, r3
/* 8030A62C 002D3BEC  7C 9B 23 78 */	mr r27, r4
/* 8030A630 002D3BF0  7C BC 2B 78 */	mr r28, r5
/* 8030A634 002D3BF4  7C DD 33 78 */	mr r29, r6
/* 8030A638 002D3BF8  7C FE 3B 78 */	mr r30, r7
/* 8030A63C 002D3BFC  7D 1F 43 78 */	mr r31, r8
/* 8030A640 002D3C00  41 80 00 10 */	blt .L_8030A650
/* 8030A644 002D3C04  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8030A648 002D3C08  7C 06 00 40 */	cmplw r6, r0
/* 8030A64C 002D3C0C  40 81 00 1C */	ble .L_8030A668
.L_8030A650:
/* 8030A650 002D3C10  3C A0 80 55 */	lis r5, lbl_805498B8@ha
/* 8030A654 002D3C14  38 6D 97 F8 */	addi r3, r13, lbl_80665978@sda21
/* 8030A658 002D3C18  38 A5 98 B8 */	addi r5, r5, lbl_805498B8@l
/* 8030A65C 002D3C1C  38 80 03 37 */	li r4, 0x337
/* 8030A660 002D3C20  4C C6 31 82 */	crclr 6
/* 8030A664 002D3C24  48 1E 3E 31 */	bl OSPanic
.L_8030A668:
/* 8030A668 002D3C28  7C 9D E2 15 */	add. r4, r29, r28
/* 8030A66C 002D3C2C  41 80 00 14 */	blt .L_8030A680
/* 8030A670 002D3C30  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 8030A674 002D3C34  38 03 00 20 */	addi r0, r3, 0x20
/* 8030A678 002D3C38  7C 04 00 40 */	cmplw r4, r0
/* 8030A67C 002D3C3C  41 80 00 1C */	blt .L_8030A698
.L_8030A680:
/* 8030A680 002D3C40  3C A0 80 55 */	lis r5, lbl_805498B8@ha
/* 8030A684 002D3C44  38 6D 97 F8 */	addi r3, r13, lbl_80665978@sda21
/* 8030A688 002D3C48  38 A5 98 B8 */	addi r5, r5, lbl_805498B8@l
/* 8030A68C 002D3C4C  38 80 03 3D */	li r4, 0x33d
/* 8030A690 002D3C50  4C C6 31 82 */	crclr 6
/* 8030A694 002D3C54  48 1E 3E 01 */	bl OSPanic
.L_8030A698:
/* 8030A698 002D3C58  80 DA 00 30 */	lwz r6, 0x30(r26)
/* 8030A69C 002D3C5C  7F A0 16 70 */	srawi r0, r29, 2
/* 8030A6A0 002D3C60  3C E0 80 31 */	lis r7, cbForReadAsync@ha
/* 8030A6A4 002D3C64  93 DA 00 38 */	stw r30, 0x38(r26)
/* 8030A6A8 002D3C68  7F 43 D3 78 */	mr r3, r26
/* 8030A6AC 002D3C6C  7F 64 DB 78 */	mr r4, r27
/* 8030A6B0 002D3C70  7F 85 E3 78 */	mr r5, r28
/* 8030A6B4 002D3C74  7F E8 FB 78 */	mr r8, r31
/* 8030A6B8 002D3C78  7C C6 02 14 */	add r6, r6, r0
/* 8030A6BC 002D3C7C  38 E7 A6 E0 */	addi r7, r7, cbForReadAsync@l
/* 8030A6C0 002D3C80  48 00 42 41 */	bl DVDReadAbsAsyncPrio
/* 8030A6C4 002D3C84  39 61 00 20 */	addi r11, r1, 0x20
/* 8030A6C8 002D3C88  38 60 00 01 */	li r3, 1
/* 8030A6CC 002D3C8C  4B FA FA D1 */	bl _restgpr_26
/* 8030A6D0 002D3C90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030A6D4 002D3C94  7C 08 03 A6 */	mtlr r0
/* 8030A6D8 002D3C98  38 21 00 20 */	addi r1, r1, 0x20
/* 8030A6DC 002D3C9C  4E 80 00 20 */	blr
.endfn DVDReadAsyncPrio

.balign 16, 0
.fn cbForReadAsync, global
/* 8030A6E0 002D3CA0  81 84 00 38 */	lwz r12, 0x38(r4)
/* 8030A6E4 002D3CA4  2C 0C 00 00 */	cmpwi r12, 0
/* 8030A6E8 002D3CA8  4D 82 00 20 */	beqlr 
/* 8030A6EC 002D3CAC  7D 89 03 A6 */	mtctr r12
/* 8030A6F0 002D3CB0  4E 80 04 20 */	bctr 
/* 8030A6F4 002D3CB4  4E 80 00 20 */	blr 
.endfn cbForReadAsync

.balign 16, 0
.fn DVDReadPrio, global
/* 8030A700 002D3CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030A704 002D3CC4  7C 08 02 A6 */	mflr r0
/* 8030A708 002D3CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030A70C 002D3CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8030A710 002D3CD0  4B FA FA 45 */	bl _savegpr_27
/* 8030A714 002D3CD4  2C 06 00 00 */	cmpwi r6, 0
/* 8030A718 002D3CD8  7C 7B 1B 78 */	mr r27, r3
/* 8030A71C 002D3CDC  7C 9C 23 78 */	mr r28, r4
/* 8030A720 002D3CE0  7C BD 2B 78 */	mr r29, r5
/* 8030A724 002D3CE4  7C DF 33 78 */	mr r31, r6
/* 8030A728 002D3CE8  7C FE 3B 78 */	mr r30, r7
/* 8030A72C 002D3CEC  41 80 00 10 */	blt .L_8030A73C
/* 8030A730 002D3CF0  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8030A734 002D3CF4  7C 06 00 40 */	cmplw r6, r0
/* 8030A738 002D3CF8  40 81 00 1C */	ble .L_8030A754
.L_8030A73C:
/* 8030A73C 002D3CFC  3C A0 80 55 */	lis r5, lbl_805498EC@ha
/* 8030A740 002D3D00  38 6D 97 F8 */	addi r3, r13, lbl_80665978@sda21
/* 8030A744 002D3D04  38 A5 98 EC */	addi r5, r5, lbl_805498EC@l
/* 8030A748 002D3D08  38 80 03 7D */	li r4, 0x37d
/* 8030A74C 002D3D0C  4C C6 31 82 */	crclr 6
/* 8030A750 002D3D10  48 1E 3D 45 */	bl OSPanic
.L_8030A754:
/* 8030A754 002D3D14  7C 9F EA 15 */	add. r4, r31, r29
/* 8030A758 002D3D18  41 80 00 14 */	blt .L_8030A76C
/* 8030A75C 002D3D1C  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8030A760 002D3D20  38 03 00 20 */	addi r0, r3, 0x20
/* 8030A764 002D3D24  7C 04 00 40 */	cmplw r4, r0
/* 8030A768 002D3D28  41 80 00 1C */	blt .L_8030A784
.L_8030A76C:
/* 8030A76C 002D3D2C  3C A0 80 55 */	lis r5, lbl_805498EC@ha
/* 8030A770 002D3D30  38 6D 97 F8 */	addi r3, r13, lbl_80665978@sda21
/* 8030A774 002D3D34  38 A5 98 EC */	addi r5, r5, lbl_805498EC@l
/* 8030A778 002D3D38  38 80 03 83 */	li r4, 0x383
/* 8030A77C 002D3D3C  4C C6 31 82 */	crclr 6
/* 8030A780 002D3D40  48 1E 3D 15 */	bl OSPanic
.L_8030A784:
/* 8030A784 002D3D44  80 DB 00 30 */	lwz r6, 0x30(r27)
/* 8030A788 002D3D48  7F E0 16 70 */	srawi r0, r31, 2
/* 8030A78C 002D3D4C  3C E0 80 31 */	lis r7, cbForReadSync@ha
/* 8030A790 002D3D50  7F 63 DB 78 */	mr r3, r27
/* 8030A794 002D3D54  7F 84 E3 78 */	mr r4, r28
/* 8030A798 002D3D58  7F A5 EB 78 */	mr r5, r29
/* 8030A79C 002D3D5C  7F C8 F3 78 */	mr r8, r30
/* 8030A7A0 002D3D60  7C C6 02 14 */	add r6, r6, r0
/* 8030A7A4 002D3D64  38 E7 A8 30 */	addi r7, r7, cbForReadSync@l
/* 8030A7A8 002D3D68  48 00 41 59 */	bl DVDReadAbsAsyncPrio
/* 8030A7AC 002D3D6C  2C 03 00 00 */	cmpwi r3, 0
/* 8030A7B0 002D3D70  40 82 00 0C */	bne .L_8030A7BC
/* 8030A7B4 002D3D74  38 60 FF FF */	li r3, -1
/* 8030A7B8 002D3D78  48 00 00 58 */	b .L_8030A810
.L_8030A7BC:
/* 8030A7BC 002D3D7C  48 04 E1 F5 */	bl OSDisableInterrupts
/* 8030A7C0 002D3D80  7C 7F 1B 78 */	mr r31, r3
.L_8030A7C4:
/* 8030A7C4 002D3D84  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8030A7C8 002D3D88  2C 00 00 00 */	cmpwi r0, 0
/* 8030A7CC 002D3D8C  40 82 00 0C */	bne .L_8030A7D8
/* 8030A7D0 002D3D90  83 DB 00 20 */	lwz r30, 0x20(r27)
/* 8030A7D4 002D3D94  48 00 00 30 */	b .L_8030A804
.L_8030A7D8:
/* 8030A7D8 002D3D98  2C 00 FF FF */	cmpwi r0, -1
/* 8030A7DC 002D3D9C  40 82 00 0C */	bne .L_8030A7E8
/* 8030A7E0 002D3DA0  3B C0 FF FF */	li r30, -1
/* 8030A7E4 002D3DA4  48 00 00 20 */	b .L_8030A804
.L_8030A7E8:
/* 8030A7E8 002D3DA8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8030A7EC 002D3DAC  40 82 00 0C */	bne .L_8030A7F8
/* 8030A7F0 002D3DB0  3B C0 FF FD */	li r30, -3
/* 8030A7F4 002D3DB4  48 00 00 10 */	b .L_8030A804
.L_8030A7F8:
/* 8030A7F8 002D3DB8  38 6D B6 30 */	addi r3, r13, __DVDThreadQueue@sda21
/* 8030A7FC 002D3DBC  48 05 1E 75 */	bl OSSleepThread
/* 8030A800 002D3DC0  4B FF FF C4 */	b .L_8030A7C4
.L_8030A804:
/* 8030A804 002D3DC4  7F E3 FB 78 */	mr r3, r31
/* 8030A808 002D3DC8  48 04 E1 E9 */	bl OSRestoreInterrupts
/* 8030A80C 002D3DCC  7F C3 F3 78 */	mr r3, r30
.L_8030A810:
/* 8030A810 002D3DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 8030A814 002D3DD4  4B FA F9 8D */	bl _restgpr_27
/* 8030A818 002D3DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030A81C 002D3DDC  7C 08 03 A6 */	mtlr r0
/* 8030A820 002D3DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8030A824 002D3DE4  4E 80 00 20 */	blr 
.endfn DVDReadPrio

.balign 16, 0
.fn cbForReadSync, global
/* 8030A830 002D3DF0  38 6D B6 30 */	addi r3, r13, __DVDThreadQueue@sda21
/* 8030A834 002D3DF4  48 05 1F 2C */	b OSWakeupThread
.endfn cbForReadSync

.balign 16, 0
.fn DVDGetTransferredSize, global
/* 8030A840 002D3E00  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8030A844 002D3E04  2C 00 00 02 */	cmpwi r0, 2
/* 8030A848 002D3E08  41 82 00 40 */	beq .L_8030A888
/* 8030A84C 002D3E0C  40 80 00 18 */	bge .L_8030A864
/* 8030A850 002D3E10  2C 00 00 01 */	cmpwi r0, 1
/* 8030A854 002D3E14  40 80 00 3C */	bge .L_8030A890
/* 8030A858 002D3E18  2C 00 FF FF */	cmpwi r0, -1
/* 8030A85C 002D3E1C  40 80 00 24 */	bge .L_8030A880
/* 8030A860 002D3E20  4E 80 00 20 */	blr
.L_8030A864:
/* 8030A864 002D3E24  2C 00 00 0A */	cmpwi r0, 0xa
/* 8030A868 002D3E28  40 80 00 10 */	bge .L_8030A878
/* 8030A86C 002D3E2C  2C 00 00 08 */	cmpwi r0, 8
/* 8030A870 002D3E30  4C 80 00 20 */	bgelr 
/* 8030A874 002D3E34  48 00 00 0C */	b .L_8030A880
.L_8030A878:
/* 8030A878 002D3E38  2C 00 00 0D */	cmpwi r0, 0xd
/* 8030A87C 002D3E3C  4C 80 00 20 */	bgelr 
.L_8030A880:
/* 8030A880 002D3E40  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8030A884 002D3E44  4E 80 00 20 */	blr
.L_8030A888:
/* 8030A888 002D3E48  38 60 00 00 */	li r3, 0
/* 8030A88C 002D3E4C  4E 80 00 20 */	blr
.L_8030A890:
/* 8030A890 002D3E50  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8030A894 002D3E54  4E 80 00 20 */	blr
.endfn DVDGetTransferredSize

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_805497B8, global
	.asciz "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"
.endobj lbl_805497B8


.obj lbl_80549880, global
	.asciz "Warning: DVDOpen(): file '%s' was not found under %s.\n"
	.balign 4
.endobj lbl_80549880


.obj lbl_805498B8, global
	.asciz "DVDReadAsync(): specified area is out of the file  "
.endobj lbl_805498B8


.obj lbl_805498EC, global
	.asciz "DVDRead(): specified area is out of the file  "
	.balign 4
	.4byte 0
.endobj lbl_805498EC

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8


.obj __DVDLongFileNameFlag, global
	.4byte 0x00000001
	.4byte 0
.endobj __DVDLongFileNameFlag


.obj lbl_80665978, global
	.asciz "dvdfs.c"
.endobj lbl_80665978

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj currentDirectory, local
	.skip 0x8
.endobj currentDirectory

.obj __DVDThreadQueue, global
	.skip 0x8
.endobj __DVDThreadQueue

.obj MaxEntryNum, local
	.skip 0x4
.endobj MaxEntryNum

.obj FstStringStart, local
	.skip 0x4
.endobj FstStringStart

.obj FstStart, local
	.skip 0x4
.endobj FstStart

.obj BootInfo, local
	.skip 0x4
.endobj BootInfo

.skip 0x18