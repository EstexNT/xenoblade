.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global rfc_calc_fcs
rfc_calc_fcs:
/* 803026DC 002CBC9C  3C A0 80 51 */	lis r5, lbl_8050E298@ha
/* 803026E0 002CBCA0  38 C0 00 FF */	li r6, 0xff
/* 803026E4 002CBCA4  38 A5 E2 98 */	addi r5, r5, lbl_8050E298@l
/* 803026E8 002CBCA8  48 00 00 14 */	b .L_803026FC
.L_803026EC:
/* 803026EC 002CBCAC  88 04 00 00 */	lbz r0, 0(r4)
/* 803026F0 002CBCB0  38 84 00 01 */	addi r4, r4, 1
/* 803026F4 002CBCB4  7C C0 02 78 */	xor r0, r6, r0
/* 803026F8 002CBCB8  7C C5 00 AE */	lbzx r6, r5, r0
.L_803026FC:
/* 803026FC 002CBCBC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80302700 002CBCC0  38 63 FF FF */	addi r3, r3, -1
/* 80302704 002CBCC4  40 82 FF E8 */	bne .L_803026EC
/* 80302708 002CBCC8  20 06 00 FF */	subfic r0, r6, 0xff
/* 8030270C 002CBCCC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80302710 002CBCD0  4E 80 00 20 */	blr 

.global rfc_check_fcs
rfc_check_fcs:
/* 80302714 002CBCD4  3C C0 80 51 */	lis r6, lbl_8050E298@ha
/* 80302718 002CBCD8  38 E0 00 FF */	li r7, 0xff
/* 8030271C 002CBCDC  38 C6 E2 98 */	addi r6, r6, lbl_8050E298@l
/* 80302720 002CBCE0  48 00 00 14 */	b .L_80302734
.L_80302724:
/* 80302724 002CBCE4  88 04 00 00 */	lbz r0, 0(r4)
/* 80302728 002CBCE8  38 84 00 01 */	addi r4, r4, 1
/* 8030272C 002CBCEC  7C E0 02 78 */	xor r0, r7, r0
/* 80302730 002CBCF0  7C E6 00 AE */	lbzx r7, r6, r0
.L_80302734:
/* 80302734 002CBCF4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80302738 002CBCF8  38 63 FF FF */	addi r3, r3, -1
/* 8030273C 002CBCFC  40 82 FF E8 */	bne .L_80302724
/* 80302740 002CBD00  3C 60 80 51 */	lis r3, lbl_8050E298@ha
/* 80302744 002CBD04  7C E0 2A 78 */	xor r0, r7, r5
/* 80302748 002CBD08  38 63 E2 98 */	addi r3, r3, lbl_8050E298@l
/* 8030274C 002CBD0C  7C 63 00 AE */	lbzx r3, r3, r0
/* 80302750 002CBD10  38 03 FF 31 */	addi r0, r3, -207
/* 80302754 002CBD14  7C 00 00 34 */	cntlzw r0, r0
/* 80302758 002CBD18  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8030275C 002CBD1C  4E 80 00 20 */	blr 

.global rfc_alloc_multiplexer_channel
rfc_alloc_multiplexer_channel:
/* 80302760 002CBD20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80302764 002CBD24  7C 08 02 A6 */	mflr r0
/* 80302768 002CBD28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030276C 002CBD2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80302770 002CBD30  4B FB 79 E5 */	bl _savegpr_27
/* 80302774 002CBD34  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 80302778 002CBD38  7C 7B 1B 78 */	mr r27, r3
/* 8030277C 002CBD3C  3B E5 32 A8 */	addi r31, r5, lbl_805C32A8@l
/* 80302780 002CBD40  7C 9C 23 78 */	mr r28, r4
/* 80302784 002CBD44  88 1F 04 08 */	lbz r0, 0x408(r31)
/* 80302788 002CBD48  38 7F 03 FE */	addi r3, r31, 0x3fe
/* 8030278C 002CBD4C  3B C0 00 00 */	li r30, 0
/* 80302790 002CBD50  2C 00 00 00 */	cmpwi r0, 0
/* 80302794 002CBD54  41 82 00 5C */	beq .L_803027F0
/* 80302798 002CBD58  7F 64 DB 78 */	mr r4, r27
/* 8030279C 002CBD5C  38 A0 00 06 */	li r5, 6
/* 803027A0 002CBD60  4B FB C0 8D */	bl memcmp
/* 803027A4 002CBD64  2C 03 00 00 */	cmpwi r3, 0
/* 803027A8 002CBD68  40 82 00 48 */	bne .L_803027F0
/* 803027AC 002CBD6C  88 1F 04 14 */	lbz r0, 0x414(r31)
/* 803027B0 002CBD70  28 00 00 04 */	cmplwi r0, 4
/* 803027B4 002CBD74  41 80 00 18 */	blt .L_803027CC
/* 803027B8 002CBD78  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 803027BC 002CBD7C  3C 80 80 55 */	lis r4, lbl_80548E70@ha
/* 803027C0 002CBD80  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 803027C4 002CBD84  38 84 8E 70 */	addi r4, r4, lbl_80548E70@l
/* 803027C8 002CBD88  4B FD B7 D9 */	bl LogMsg_0
.L_803027CC:
/* 803027CC 002CBD8C  1C 1E 00 78 */	mulli r0, r30, 0x78
/* 803027D0 002CBD90  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 803027D4 002CBD94  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 803027D8 002CBD98  7C 63 02 14 */	add r3, r3, r0
/* 803027DC 002CBD9C  3B E3 03 9C */	addi r31, r3, 0x39c
/* 803027E0 002CBDA0  7F E3 FB 78 */	mr r3, r31
/* 803027E4 002CBDA4  4B FD BE 3D */	bl btu_stop_timer
/* 803027E8 002CBDA8  7F E3 FB 78 */	mr r3, r31
/* 803027EC 002CBDAC  48 00 00 B4 */	b .L_803028A0
.L_803027F0:
/* 803027F0 002CBDB0  3F E0 80 5C */	lis r31, lbl_805C32A8@ha
/* 803027F4 002CBDB4  3B FF 32 A8 */	addi r31, r31, lbl_805C32A8@l
/* 803027F8 002CBDB8  88 7F 00 65 */	lbz r3, 0x65(r31)
/* 803027FC 002CBDBC  3B C3 00 01 */	addi r30, r3, 1
/* 80302800 002CBDC0  2C 1E 00 01 */	cmpwi r30, 1
/* 80302804 002CBDC4  41 80 00 08 */	blt .L_8030280C
/* 80302808 002CBDC8  3B C0 00 00 */	li r30, 0
.L_8030280C:
/* 8030280C 002CBDCC  1C 1E 00 78 */	mulli r0, r30, 0x78
/* 80302810 002CBDD0  7C 7F 02 14 */	add r3, r31, r0
/* 80302814 002CBDD4  88 03 04 08 */	lbz r0, 0x408(r3)
/* 80302818 002CBDD8  3B A3 03 9C */	addi r29, r3, 0x39c
/* 8030281C 002CBDDC  2C 00 00 00 */	cmpwi r0, 0
/* 80302820 002CBDE0  40 82 00 7C */	bne .L_8030289C
/* 80302824 002CBDE4  7F A3 EB 78 */	mr r3, r29
/* 80302828 002CBDE8  38 80 00 00 */	li r4, 0
/* 8030282C 002CBDEC  38 A0 00 78 */	li r5, 0x78
/* 80302830 002CBDF0  4B D0 1B 21 */	bl memset
/* 80302834 002CBDF4  7F 64 DB 78 */	mr r4, r27
/* 80302838 002CBDF8  38 7D 00 62 */	addi r3, r29, 0x62
/* 8030283C 002CBDFC  38 A0 00 06 */	li r5, 6
/* 80302840 002CBE00  4B D0 17 C1 */	bl memcpy
/* 80302844 002CBE04  38 7D 00 18 */	addi r3, r29, 0x18
/* 80302848 002CBE08  4B FD 89 E9 */	bl GKI_init_q
/* 8030284C 002CBE0C  9B 9D 00 6D */	stb r28, 0x6d(r29)
/* 80302850 002CBE10  88 1F 04 14 */	lbz r0, 0x414(r31)
/* 80302854 002CBE14  28 00 00 04 */	cmplwi r0, 4
/* 80302858 002CBE18  41 80 00 1C */	blt .L_80302874
/* 8030285C 002CBE1C  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80302860 002CBE20  3C 80 80 55 */	lis r4, lbl_80548E80@ha
/* 80302864 002CBE24  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80302868 002CBE28  38 A0 00 3C */	li r5, 0x3c
/* 8030286C 002CBE2C  38 84 8E 80 */	addi r4, r4, lbl_80548E80@l
/* 80302870 002CBE30  4B FD B7 51 */	bl LogMsg_1
.L_80302874:
/* 80302874 002CBE34  93 BD 00 10 */	stw r29, 0x10(r29)
/* 80302878 002CBE38  7F A3 EB 78 */	mr r3, r29
/* 8030287C 002CBE3C  38 80 00 0B */	li r4, 0xb
/* 80302880 002CBE40  38 A0 00 3C */	li r5, 0x3c
/* 80302884 002CBE44  4B FD BD 2D */	bl btu_start_timer
/* 80302888 002CBE48  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 8030288C 002CBE4C  7F A3 EB 78 */	mr r3, r29
/* 80302890 002CBE50  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 80302894 002CBE54  9B C4 00 65 */	stb r30, 0x65(r4)
/* 80302898 002CBE58  48 00 00 08 */	b .L_803028A0
.L_8030289C:
/* 8030289C 002CBE5C  38 60 00 00 */	li r3, 0
.L_803028A0:
/* 803028A0 002CBE60  39 61 00 20 */	addi r11, r1, 0x20
/* 803028A4 002CBE64  4B FB 78 FD */	bl _restgpr_27
/* 803028A8 002CBE68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803028AC 002CBE6C  7C 08 03 A6 */	mtlr r0
/* 803028B0 002CBE70  38 21 00 20 */	addi r1, r1, 0x20
/* 803028B4 002CBE74  4E 80 00 20 */	blr 

.global rfc_release_multiplexer_channel
rfc_release_multiplexer_channel:
/* 803028B8 002CBE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803028BC 002CBE7C  7C 08 02 A6 */	mflr r0
/* 803028C0 002CBE80  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 803028C4 002CBE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 803028C8 002CBE88  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 803028CC 002CBE8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803028D0 002CBE90  7C 7F 1B 78 */	mr r31, r3
/* 803028D4 002CBE94  88 04 04 14 */	lbz r0, 0x414(r4)
/* 803028D8 002CBE98  28 00 00 04 */	cmplwi r0, 4
/* 803028DC 002CBE9C  41 80 00 18 */	blt .L_803028F4
/* 803028E0 002CBEA0  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 803028E4 002CBEA4  3C 80 80 55 */	lis r4, lbl_80548E70@ha
/* 803028E8 002CBEA8  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 803028EC 002CBEAC  38 84 8E 70 */	addi r4, r4, lbl_80548E70@l
/* 803028F0 002CBEB0  4B FD B6 B1 */	bl LogMsg_0
.L_803028F4:
/* 803028F4 002CBEB4  7F E3 FB 78 */	mr r3, r31
/* 803028F8 002CBEB8  4B FD BD 29 */	bl btu_stop_timer
/* 803028FC 002CBEBC  48 00 00 08 */	b .L_80302904
.L_80302900:
/* 80302900 002CBEC0  4B FD 8B E1 */	bl GKI_freebuf
.L_80302904:
/* 80302904 002CBEC4  38 7F 00 18 */	addi r3, r31, 0x18
/* 80302908 002CBEC8  4B FD 92 89 */	bl GKI_dequeue
/* 8030290C 002CBECC  2C 03 00 00 */	cmpwi r3, 0
/* 80302910 002CBED0  40 82 FF F0 */	bne .L_80302900
/* 80302914 002CBED4  7F E3 FB 78 */	mr r3, r31
/* 80302918 002CBED8  38 80 00 00 */	li r4, 0
/* 8030291C 002CBEDC  38 A0 00 78 */	li r5, 0x78
/* 80302920 002CBEE0  4B D0 1A 31 */	bl memset
/* 80302924 002CBEE4  38 00 00 00 */	li r0, 0
/* 80302928 002CBEE8  98 1F 00 6C */	stb r0, 0x6c(r31)
/* 8030292C 002CBEEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80302930 002CBEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80302934 002CBEF4  7C 08 03 A6 */	mtlr r0
/* 80302938 002CBEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030293C 002CBEFC  4E 80 00 20 */	blr 

.global rfc_timer_start
rfc_timer_start:
/* 80302940 002CBF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80302944 002CBF04  7C 08 02 A6 */	mflr r0
/* 80302948 002CBF08  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 8030294C 002CBF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80302950 002CBF10  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 80302954 002CBF14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80302958 002CBF18  7C 9F 23 78 */	mr r31, r4
/* 8030295C 002CBF1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80302960 002CBF20  7C 7E 1B 78 */	mr r30, r3
/* 80302964 002CBF24  88 05 04 14 */	lbz r0, 0x414(r5)
/* 80302968 002CBF28  28 00 00 04 */	cmplwi r0, 4
/* 8030296C 002CBF2C  41 80 00 1C */	blt .L_80302988
/* 80302970 002CBF30  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80302974 002CBF34  3C 80 80 55 */	lis r4, lbl_80548E80@ha
/* 80302978 002CBF38  7F E5 FB 78 */	mr r5, r31
/* 8030297C 002CBF3C  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80302980 002CBF40  38 84 8E 80 */	addi r4, r4, lbl_80548E80@l
/* 80302984 002CBF44  4B FD B6 3D */	bl LogMsg_1
.L_80302988:
/* 80302988 002CBF48  93 DE 00 10 */	stw r30, 0x10(r30)
/* 8030298C 002CBF4C  7F C3 F3 78 */	mr r3, r30
/* 80302990 002CBF50  7F E5 FB 78 */	mr r5, r31
/* 80302994 002CBF54  38 80 00 0B */	li r4, 0xb
/* 80302998 002CBF58  4B FD BC 19 */	bl btu_start_timer
/* 8030299C 002CBF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803029A0 002CBF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803029A4 002CBF64  83 C1 00 08 */	lwz r30, 8(r1)
/* 803029A8 002CBF68  7C 08 03 A6 */	mtlr r0
/* 803029AC 002CBF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803029B0 002CBF70  4E 80 00 20 */	blr 

.global rfc_timer_stop
rfc_timer_stop:
/* 803029B4 002CBF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803029B8 002CBF78  7C 08 02 A6 */	mflr r0
/* 803029BC 002CBF7C  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 803029C0 002CBF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 803029C4 002CBF84  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 803029C8 002CBF88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803029CC 002CBF8C  7C 7F 1B 78 */	mr r31, r3
/* 803029D0 002CBF90  88 04 04 14 */	lbz r0, 0x414(r4)
/* 803029D4 002CBF94  28 00 00 04 */	cmplwi r0, 4
/* 803029D8 002CBF98  41 80 00 18 */	blt .L_803029F0
/* 803029DC 002CBF9C  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 803029E0 002CBFA0  3C 80 80 55 */	lis r4, lbl_80548E70@ha
/* 803029E4 002CBFA4  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 803029E8 002CBFA8  38 84 8E 70 */	addi r4, r4, lbl_80548E70@l
/* 803029EC 002CBFAC  4B FD B5 B5 */	bl LogMsg_0
.L_803029F0:
/* 803029F0 002CBFB0  7F E3 FB 78 */	mr r3, r31
/* 803029F4 002CBFB4  4B FD BC 2D */	bl btu_stop_timer
/* 803029F8 002CBFB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803029FC 002CBFBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80302A00 002CBFC0  7C 08 03 A6 */	mtlr r0
/* 80302A04 002CBFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80302A08 002CBFC8  4E 80 00 20 */	blr 

.global rfc_port_timer_start
rfc_port_timer_start:
/* 80302A0C 002CBFCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80302A10 002CBFD0  7C 08 02 A6 */	mflr r0
/* 80302A14 002CBFD4  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 80302A18 002CBFD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80302A1C 002CBFDC  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 80302A20 002CBFE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80302A24 002CBFE4  3B E3 00 70 */	addi r31, r3, 0x70
/* 80302A28 002CBFE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80302A2C 002CBFEC  7C 9E 23 78 */	mr r30, r4
/* 80302A30 002CBFF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80302A34 002CBFF4  7C 7D 1B 78 */	mr r29, r3
/* 80302A38 002CBFF8  88 05 04 14 */	lbz r0, 0x414(r5)
/* 80302A3C 002CBFFC  28 00 00 04 */	cmplwi r0, 4
/* 80302A40 002CC000  41 80 00 1C */	blt .L_80302A5C
/* 80302A44 002CC004  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80302A48 002CC008  3C 80 80 55 */	lis r4, lbl_80548EA0@ha
/* 80302A4C 002CC00C  7F C5 F3 78 */	mr r5, r30
/* 80302A50 002CC010  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80302A54 002CC014  38 84 8E A0 */	addi r4, r4, lbl_80548EA0@l
/* 80302A58 002CC018  4B FD B5 69 */	bl LogMsg_1
.L_80302A5C:
/* 80302A5C 002CC01C  93 BF 00 10 */	stw r29, 0x10(r31)
/* 80302A60 002CC020  7F E3 FB 78 */	mr r3, r31
/* 80302A64 002CC024  7F C5 F3 78 */	mr r5, r30
/* 80302A68 002CC028  38 80 00 0C */	li r4, 0xc
/* 80302A6C 002CC02C  4B FD BB 45 */	bl btu_start_timer
/* 80302A70 002CC030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80302A74 002CC034  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80302A78 002CC038  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80302A7C 002CC03C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80302A80 002CC040  7C 08 03 A6 */	mtlr r0
/* 80302A84 002CC044  38 21 00 20 */	addi r1, r1, 0x20
/* 80302A88 002CC048  4E 80 00 20 */	blr 

.global rfc_port_timer_stop
rfc_port_timer_stop:
/* 80302A8C 002CC04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80302A90 002CC050  7C 08 02 A6 */	mflr r0
/* 80302A94 002CC054  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 80302A98 002CC058  90 01 00 14 */	stw r0, 0x14(r1)
/* 80302A9C 002CC05C  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 80302AA0 002CC060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80302AA4 002CC064  7C 7F 1B 78 */	mr r31, r3
/* 80302AA8 002CC068  88 04 04 14 */	lbz r0, 0x414(r4)
/* 80302AAC 002CC06C  28 00 00 04 */	cmplwi r0, 4
/* 80302AB0 002CC070  41 80 00 18 */	blt .L_80302AC8
/* 80302AB4 002CC074  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80302AB8 002CC078  3C 80 80 55 */	lis r4, lbl_80548EC4@ha
/* 80302ABC 002CC07C  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80302AC0 002CC080  38 84 8E C4 */	addi r4, r4, lbl_80548EC4@l
/* 80302AC4 002CC084  4B FD B4 DD */	bl LogMsg_0
.L_80302AC8:
/* 80302AC8 002CC088  38 7F 00 70 */	addi r3, r31, 0x70
/* 80302ACC 002CC08C  4B FD BB 55 */	bl btu_stop_timer
/* 80302AD0 002CC090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80302AD4 002CC094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80302AD8 002CC098  7C 08 03 A6 */	mtlr r0
/* 80302ADC 002CC09C  38 21 00 10 */	addi r1, r1, 0x10
/* 80302AE0 002CC0A0  4E 80 00 20 */	blr 

.global rfc_check_mcb_active
rfc_check_mcb_active:
/* 80302AE4 002CC0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80302AE8 002CC0A8  7C 08 02 A6 */	mflr r0
/* 80302AEC 002CC0AC  38 A0 00 00 */	li r5, 0
/* 80302AF0 002CC0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80302AF4 002CC0B4  38 00 00 3D */	li r0, 0x3d
/* 80302AF8 002CC0B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80302AFC 002CC0BC  7C 7F 1B 78 */	mr r31, r3
/* 80302B00 002CC0C0  7C 09 03 A6 */	mtctr r0
.L_80302B04:
/* 80302B04 002CC0C4  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80302B08 002CC0C8  7C 83 02 14 */	add r4, r3, r0
/* 80302B0C 002CC0CC  88 04 00 24 */	lbz r0, 0x24(r4)
/* 80302B10 002CC0D0  2C 00 00 00 */	cmpwi r0, 0
/* 80302B14 002CC0D4  41 82 00 10 */	beq .L_80302B24
/* 80302B18 002CC0D8  38 00 00 00 */	li r0, 0
/* 80302B1C 002CC0DC  98 03 00 74 */	stb r0, 0x74(r3)
/* 80302B20 002CC0E0  48 00 00 74 */	b .L_80302B94
.L_80302B24:
/* 80302B24 002CC0E4  38 A5 00 01 */	addi r5, r5, 1
/* 80302B28 002CC0E8  42 00 FF DC */	bdnz .L_80302B04
/* 80302B2C 002CC0EC  88 03 00 74 */	lbz r0, 0x74(r3)
/* 80302B30 002CC0F0  2C 00 00 00 */	cmpwi r0, 0
/* 80302B34 002CC0F4  41 82 00 20 */	beq .L_80302B54
/* 80302B38 002CC0F8  38 00 00 00 */	li r0, 0
/* 80302B3C 002CC0FC  38 80 00 08 */	li r4, 8
/* 80302B40 002CC100  98 03 00 74 */	stb r0, 0x74(r3)
/* 80302B44 002CC104  7F E3 FB 78 */	mr r3, r31
/* 80302B48 002CC108  38 A0 00 00 */	li r5, 0
/* 80302B4C 002CC10C  4B FF C2 39 */	bl rfc_mx_sm_execute
/* 80302B50 002CC110  48 00 00 44 */	b .L_80302B94
.L_80302B54:
/* 80302B54 002CC114  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 80302B58 002CC118  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 80302B5C 002CC11C  88 03 04 14 */	lbz r0, 0x414(r3)
/* 80302B60 002CC120  28 00 00 04 */	cmplwi r0, 4
/* 80302B64 002CC124  41 80 00 1C */	blt .L_80302B80
/* 80302B68 002CC128  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80302B6C 002CC12C  3C 80 80 55 */	lis r4, lbl_80548E80@ha
/* 80302B70 002CC130  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80302B74 002CC134  38 A0 00 02 */	li r5, 2
/* 80302B78 002CC138  38 84 8E 80 */	addi r4, r4, lbl_80548E80@l
/* 80302B7C 002CC13C  4B FD B4 45 */	bl LogMsg_1
.L_80302B80:
/* 80302B80 002CC140  93 FF 00 10 */	stw r31, 0x10(r31)
/* 80302B84 002CC144  7F E3 FB 78 */	mr r3, r31
/* 80302B88 002CC148  38 80 00 0B */	li r4, 0xb
/* 80302B8C 002CC14C  38 A0 00 02 */	li r5, 2
/* 80302B90 002CC150  4B FD BA 21 */	bl btu_start_timer
.L_80302B94:
/* 80302B94 002CC154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80302B98 002CC158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80302B9C 002CC15C  7C 08 03 A6 */	mtlr r0
/* 80302BA0 002CC160  38 21 00 10 */	addi r1, r1, 0x10
/* 80302BA4 002CC164  4E 80 00 20 */	blr 

.global rfcomm_process_timeout
rfcomm_process_timeout:
/* 80302BA8 002CC168  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 80302BAC 002CC16C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80302BB0 002CC170  41 82 00 20 */	beq .L_80302BD0
/* 80302BB4 002CC174  4C 80 00 20 */	bgelr 
/* 80302BB8 002CC178  2C 00 00 0B */	cmpwi r0, 0xb
/* 80302BBC 002CC17C  4D 80 00 20 */	bltlr 
/* 80302BC0 002CC180  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80302BC4 002CC184  38 80 00 05 */	li r4, 5
/* 80302BC8 002CC188  38 A0 00 00 */	li r5, 0
/* 80302BCC 002CC18C  4B FF C1 B8 */	b rfc_mx_sm_execute
.L_80302BD0:
/* 80302BD0 002CC190  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80302BD4 002CC194  38 80 00 05 */	li r4, 5
/* 80302BD8 002CC198  38 A0 00 00 */	li r5, 0
/* 80302BDC 002CC19C  4B FF CD EC */	b rfc_port_sm_execute
/* 80302BE0 002CC1A0  4E 80 00 20 */	blr

.global rfc_sec_check_complete
rfc_sec_check_complete:
/* 80302BE4 002CC1A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80302BE8 002CC1A8  7C 08 02 A6 */	mflr r0
/* 80302BEC 002CC1AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80302BF0 002CC1B0  98 A1 00 08 */	stb r5, 8(r1)
/* 80302BF4 002CC1B4  88 04 00 01 */	lbz r0, 1(r4)
/* 80302BF8 002CC1B8  2C 00 00 00 */	cmpwi r0, 0
/* 80302BFC 002CC1BC  41 82 00 2C */	beq .L_80302C28
/* 80302C00 002CC1C0  88 04 00 68 */	lbz r0, 0x68(r4)
/* 80302C04 002CC1C4  28 00 00 02 */	cmplwi r0, 2
/* 80302C08 002CC1C8  41 82 00 10 */	beq .L_80302C18
/* 80302C0C 002CC1CC  28 00 00 03 */	cmplwi r0, 3
/* 80302C10 002CC1D0  41 82 00 08 */	beq .L_80302C18
/* 80302C14 002CC1D4  48 00 00 14 */	b .L_80302C28
.L_80302C18:
/* 80302C18 002CC1D8  7C 83 23 78 */	mr r3, r4
/* 80302C1C 002CC1DC  38 A1 00 08 */	addi r5, r1, 8
/* 80302C20 002CC1E0  38 80 00 0F */	li r4, 0xf
/* 80302C24 002CC1E4  4B FF CD A5 */	bl rfc_port_sm_execute
.L_80302C28:
/* 80302C28 002CC1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80302C2C 002CC1EC  7C 08 03 A6 */	mtlr r0
/* 80302C30 002CC1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80302C34 002CC1F4  4E 80 00 20 */	blr 

.global rfc_port_closed
rfc_port_closed:
/* 80302C38 002CC1F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80302C3C 002CC1FC  7C 08 02 A6 */	mflr r0
/* 80302C40 002CC200  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 80302C44 002CC204  90 01 00 24 */	stw r0, 0x24(r1)
/* 80302C48 002CC208  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 80302C4C 002CC20C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80302C50 002CC210  3F E0 80 55 */	lis r31, lbl_80548E70@ha
/* 80302C54 002CC214  3B FF 8E 70 */	addi r31, r31, lbl_80548E70@l
/* 80302C58 002CC218  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80302C5C 002CC21C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80302C60 002CC220  7C 7D 1B 78 */	mr r29, r3
/* 80302C64 002CC224  88 04 04 14 */	lbz r0, 0x414(r4)
/* 80302C68 002CC228  83 C3 00 6C */	lwz r30, 0x6c(r3)
/* 80302C6C 002CC22C  28 00 00 05 */	cmplwi r0, 5
/* 80302C70 002CC230  41 80 00 14 */	blt .L_80302C84
/* 80302C74 002CC234  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 80302C78 002CC238  38 9F 00 68 */	addi r4, r31, 0x68
/* 80302C7C 002CC23C  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 80302C80 002CC240  4B FD B3 21 */	bl LogMsg_0
.L_80302C84:
/* 80302C84 002CC244  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 80302C88 002CC248  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 80302C8C 002CC24C  88 03 04 14 */	lbz r0, 0x414(r3)
/* 80302C90 002CC250  28 00 00 04 */	cmplwi r0, 4
/* 80302C94 002CC254  41 80 00 14 */	blt .L_80302CA8
/* 80302C98 002CC258  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80302C9C 002CC25C  38 9F 00 54 */	addi r4, r31, 0x54
/* 80302CA0 002CC260  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80302CA4 002CC264  4B FD B2 FD */	bl LogMsg_0
.L_80302CA8:
/* 80302CA8 002CC268  38 7D 00 70 */	addi r3, r29, 0x70
/* 80302CAC 002CC26C  4B FD B9 75 */	bl btu_stop_timer
/* 80302CB0 002CC270  38 80 00 00 */	li r4, 0
/* 80302CB4 002CC274  2C 1E 00 00 */	cmpwi r30, 0
/* 80302CB8 002CC278  98 9D 00 68 */	stb r4, 0x68(r29)
/* 80302CBC 002CC27C  41 82 00 AC */	beq .L_80302D68
/* 80302CC0 002CC280  88 7D 00 0D */	lbz r3, 0xd(r29)
/* 80302CC4 002CC284  38 00 00 3D */	li r0, 0x3d
/* 80302CC8 002CC288  38 A0 00 00 */	li r5, 0
/* 80302CCC 002CC28C  7C 7E 1A 14 */	add r3, r30, r3
/* 80302CD0 002CC290  98 83 00 24 */	stb r4, 0x24(r3)
/* 80302CD4 002CC294  98 9D 00 0D */	stb r4, 0xd(r29)
/* 80302CD8 002CC298  7C 09 03 A6 */	mtctr r0
.L_80302CDC:
/* 80302CDC 002CC29C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80302CE0 002CC2A0  7C 7E 02 14 */	add r3, r30, r0
/* 80302CE4 002CC2A4  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80302CE8 002CC2A8  2C 00 00 00 */	cmpwi r0, 0
/* 80302CEC 002CC2AC  41 82 00 10 */	beq .L_80302CFC
/* 80302CF0 002CC2B0  38 00 00 00 */	li r0, 0
/* 80302CF4 002CC2B4  98 1E 00 74 */	stb r0, 0x74(r30)
/* 80302CF8 002CC2B8  48 00 00 70 */	b .L_80302D68
.L_80302CFC:
/* 80302CFC 002CC2BC  38 A5 00 01 */	addi r5, r5, 1
/* 80302D00 002CC2C0  42 00 FF DC */	bdnz .L_80302CDC
/* 80302D04 002CC2C4  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 80302D08 002CC2C8  2C 00 00 00 */	cmpwi r0, 0
/* 80302D0C 002CC2CC  41 82 00 20 */	beq .L_80302D2C
/* 80302D10 002CC2D0  38 00 00 00 */	li r0, 0
/* 80302D14 002CC2D4  7F C3 F3 78 */	mr r3, r30
/* 80302D18 002CC2D8  98 1E 00 74 */	stb r0, 0x74(r30)
/* 80302D1C 002CC2DC  38 80 00 08 */	li r4, 8
/* 80302D20 002CC2E0  38 A0 00 00 */	li r5, 0
/* 80302D24 002CC2E4  4B FF C0 61 */	bl rfc_mx_sm_execute
/* 80302D28 002CC2E8  48 00 00 40 */	b .L_80302D68
.L_80302D2C:
/* 80302D2C 002CC2EC  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 80302D30 002CC2F0  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 80302D34 002CC2F4  88 03 04 14 */	lbz r0, 0x414(r3)
/* 80302D38 002CC2F8  28 00 00 04 */	cmplwi r0, 4
/* 80302D3C 002CC2FC  41 80 00 18 */	blt .L_80302D54
/* 80302D40 002CC300  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80302D44 002CC304  38 9F 00 10 */	addi r4, r31, 0x10
/* 80302D48 002CC308  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80302D4C 002CC30C  38 A0 00 02 */	li r5, 2
/* 80302D50 002CC310  4B FD B2 71 */	bl LogMsg_1
.L_80302D54:
/* 80302D54 002CC314  93 DE 00 10 */	stw r30, 0x10(r30)
/* 80302D58 002CC318  7F C3 F3 78 */	mr r3, r30
/* 80302D5C 002CC31C  38 80 00 0B */	li r4, 0xb
/* 80302D60 002CC320  38 A0 00 02 */	li r5, 2
/* 80302D64 002CC324  4B FD B8 4D */	bl btu_start_timer
.L_80302D68:
/* 80302D68 002CC328  7F A3 EB 78 */	mr r3, r29
/* 80302D6C 002CC32C  38 80 00 13 */	li r4, 0x13
/* 80302D70 002CC330  4B FF AF 75 */	bl port_rfc_closed
/* 80302D74 002CC334  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80302D78 002CC338  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80302D7C 002CC33C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80302D80 002CC340  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80302D84 002CC344  7C 08 03 A6 */	mtlr r0
/* 80302D88 002CC348  38 21 00 20 */	addi r1, r1, 0x20
/* 80302D8C 002CC34C  4E 80 00 20 */	blr 

.global rfc_inc_credit
rfc_inc_credit:
/* 80302D90 002CC350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80302D94 002CC354  7C 08 02 A6 */	mflr r0
/* 80302D98 002CC358  90 01 00 14 */	stw r0, 0x14(r1)
/* 80302D9C 002CC35C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80302DA0 002CC360  7C 7F 1B 78 */	mr r31, r3
/* 80302DA4 002CC364  80 A3 00 6C */	lwz r5, 0x6c(r3)
/* 80302DA8 002CC368  88 05 00 72 */	lbz r0, 0x72(r5)
/* 80302DAC 002CC36C  28 00 00 02 */	cmplwi r0, 2
/* 80302DB0 002CC370  40 82 00 58 */	bne .L_80302E08
/* 80302DB4 002CC374  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 80302DB8 002CC378  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 80302DBC 002CC37C  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 80302DC0 002CC380  7C C0 22 14 */	add r6, r0, r4
/* 80302DC4 002CC384  B0 C3 00 98 */	sth r6, 0x98(r3)
/* 80302DC8 002CC388  88 05 04 14 */	lbz r0, 0x414(r5)
/* 80302DCC 002CC38C  28 00 00 04 */	cmplwi r0, 4
/* 80302DD0 002CC390  41 80 00 1C */	blt .L_80302DEC
/* 80302DD4 002CC394  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 80302DD8 002CC398  3C 80 80 55 */	lis r4, lbl_80548EE8@ha
/* 80302DDC 002CC39C  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 80302DE0 002CC3A0  54 C5 04 3E */	clrlwi r5, r6, 0x10
/* 80302DE4 002CC3A4  38 84 8E E8 */	addi r4, r4, lbl_80548EE8@l
/* 80302DE8 002CC3A8  4B FD B1 D9 */	bl LogMsg_1
.L_80302DEC:
/* 80302DEC 002CC3AC  88 1F 00 24 */	lbz r0, 0x24(r31)
/* 80302DF0 002CC3B0  28 00 00 01 */	cmplwi r0, 1
/* 80302DF4 002CC3B4  40 82 00 14 */	bne .L_80302E08
/* 80302DF8 002CC3B8  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80302DFC 002CC3BC  38 A0 00 01 */	li r5, 1
/* 80302E00 002CC3C0  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 80302E04 002CC3C4  4B FF AC B9 */	bl PORT_FlowInd
.L_80302E08:
/* 80302E08 002CC3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80302E0C 002CC3CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80302E10 002CC3D0  7C 08 03 A6 */	mtlr r0
/* 80302E14 002CC3D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80302E18 002CC3D8  4E 80 00 20 */	blr 

.global rfc_dec_credit
rfc_dec_credit:
/* 80302E1C 002CC3DC  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 80302E20 002CC3E0  88 04 00 72 */	lbz r0, 0x72(r4)
/* 80302E24 002CC3E4  28 00 00 02 */	cmplwi r0, 2
/* 80302E28 002CC3E8  4C 82 00 20 */	bnelr 
/* 80302E2C 002CC3EC  A0 83 00 98 */	lhz r4, 0x98(r3)
/* 80302E30 002CC3F0  2C 04 00 00 */	cmpwi r4, 0
/* 80302E34 002CC3F4  41 82 00 0C */	beq .L_80302E40
/* 80302E38 002CC3F8  38 04 FF FF */	addi r0, r4, -1
/* 80302E3C 002CC3FC  B0 03 00 98 */	sth r0, 0x98(r3)
.L_80302E40:
/* 80302E40 002CC400  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 80302E44 002CC404  2C 00 00 00 */	cmpwi r0, 0
/* 80302E48 002CC408  4C 82 00 20 */	bnelr 
/* 80302E4C 002CC40C  38 00 00 01 */	li r0, 1
/* 80302E50 002CC410  98 03 00 24 */	stb r0, 0x24(r3)
/* 80302E54 002CC414  4E 80 00 20 */	blr 

.global rfc_check_send_cmd
rfc_check_send_cmd:
/* 80302E58 002CC418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80302E5C 002CC41C  7C 08 02 A6 */	mflr r0
/* 80302E60 002CC420  2C 04 00 00 */	cmpwi r4, 0
/* 80302E64 002CC424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80302E68 002CC428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80302E6C 002CC42C  7C 7F 1B 78 */	mr r31, r3
/* 80302E70 002CC430  41 82 00 2C */	beq .L_80302E9C
/* 80302E74 002CC434  38 63 00 18 */	addi r3, r3, 0x18
/* 80302E78 002CC438  4B FD 8A 99 */	bl GKI_enqueue
/* 80302E7C 002CC43C  48 00 00 20 */	b .L_80302E9C
.L_80302E80:
/* 80302E80 002CC440  38 7F 00 18 */	addi r3, r31, 0x18
/* 80302E84 002CC444  4B FD 8D 0D */	bl GKI_dequeue
/* 80302E88 002CC448  2C 03 00 00 */	cmpwi r3, 0
/* 80302E8C 002CC44C  7C 64 1B 78 */	mr r4, r3
/* 80302E90 002CC450  41 82 00 18 */	beq .L_80302EA8
/* 80302E94 002CC454  A0 7F 00 68 */	lhz r3, 0x68(r31)
/* 80302E98 002CC458  4B FF 43 2D */	bl L2CA_DataWrite
.L_80302E9C:
/* 80302E9C 002CC45C  88 1F 00 73 */	lbz r0, 0x73(r31)
/* 80302EA0 002CC460  2C 00 00 00 */	cmpwi r0, 0
/* 80302EA4 002CC464  41 82 FF DC */	beq .L_80302E80
.L_80302EA8:
/* 80302EA8 002CC468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80302EAC 002CC46C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80302EB0 002CC470  7C 08 03 A6 */	mtlr r0
/* 80302EB4 002CC474  38 21 00 10 */	addi r1, r1, 0x10
/* 80302EB8 002CC478  4E 80 00 20 */	blr

.section .data, "wa"  # 0x805281E0 - 0x80573C60
.global lbl_80548E70
lbl_80548E70:
	.asciz "rfc_timer_stop"
	.balign 4


.global lbl_80548E80
lbl_80548E80:
	.asciz "rfc_timer_start - timeout:%d"
	.balign 4


.global lbl_80548EA0
lbl_80548EA0:
	.asciz "rfc_port_timer_start - timeout:%d"
	.balign 4


.global lbl_80548EC4
lbl_80548EC4:
	.asciz "rfc_port_timer_stop"
	.asciz "rfc_port_closed"


.global lbl_80548EE8
lbl_80548EE8:
	.asciz "rfc_inc_credit:%d"
	.balign 4
	.4byte 0

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8050E298
lbl_8050E298:
	# ROM: 0x50A398
	.4byte 0x0091E372
	.4byte 0x0796E475
	.4byte 0x0E9FED7C
	.4byte 0x0998EA7B
	.4byte 0x1C8DFF6E
	.4byte 0x1B8AF869
	.4byte 0x1283F160
	.4byte 0x1584F667
	.4byte 0x38A9DB4A
	.4byte 0x3FAEDC4D
	.4byte 0x36A7D544
	.4byte 0x31A0D243
	.4byte 0x24B5C756
	.4byte 0x23B2C051
	.4byte 0x2ABBC958
	.4byte 0x2DBCCE5F
	.4byte 0x70E19302
	.4byte 0x77E69405
	.4byte 0x7EEF9D0C
	.4byte 0x79E89A0B
	.4byte 0x6CFD8F1E
	.4byte 0x6BFA8819
	.4byte 0x62F38110
	.4byte 0x65F48617
	.4byte 0x48D9AB3A
	.4byte 0x4FDEAC3D
	.4byte 0x46D7A534
	.4byte 0x41D0A233
	.4byte 0x54C5B726
	.4byte 0x53C2B021
	.4byte 0x5ACBB928
	.4byte 0x5DCCBE2F
	.4byte 0xE0710392
	.4byte 0xE7760495
	.4byte 0xEE7F0D9C
	.4byte 0xE9780A9B
	.4byte 0xFC6D1F8E
	.4byte 0xFB6A1889
	.4byte 0xF2631180
	.4byte 0xF5641687
	.4byte 0xD8493BAA
	.4byte 0xDF4E3CAD
	.4byte 0xD64735A4
	.4byte 0xD14032A3
	.4byte 0xC45527B6
	.4byte 0xC35220B1
	.4byte 0xCA5B29B8
	.4byte 0xCD5C2EBF
	.4byte 0x900173E2
	.4byte 0x970674E5
	.4byte 0x9E0F7DEC
	.4byte 0x99087AEB
	.4byte 0x8C1D6FFE
	.4byte 0x8B1A68F9
	.4byte 0x821361F0
	.4byte 0x851466F7
	.4byte 0xA8394BDA
	.4byte 0xAF3E4CDD
	.4byte 0xA63745D4
	.4byte 0xA13042D3
	.4byte 0xB42557C6
	.4byte 0xB32250C1
	.4byte 0xBA2B59C8
	.4byte 0xBD2C5ECF