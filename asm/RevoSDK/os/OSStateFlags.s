.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __OSWriteStateFlags
__OSWriteStateFlags:
/* 8035DE50 00327410  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8035DE54 00327414  7C 08 02 A6 */	mflr r0
/* 8035DE58 00327418  7C 64 1B 78 */	mr r4, r3
/* 8035DE5C 0032741C  38 A0 00 20 */	li r5, 0x20
/* 8035DE60 00327420  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8035DE64 00327424  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8035DE68 00327428  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8035DE6C 0032742C  3F C0 80 5D */	lis r30, lbl_805D5420@ha
/* 8035DE70 00327430  38 7E 54 20 */	addi r3, r30, lbl_805D5420@l
/* 8035DE74 00327434  4B CA 61 8D */	bl memcpy
/* 8035DE78 00327438  3B FE 54 20 */	addi r31, r30, lbl_805D5420@l
/* 8035DE7C 0032743C  3C 60 80 56 */	lis r3, lbl_8055ED08@ha
/* 8035DE80 00327440  80 DF 00 04 */	lwz r6, 4(r31)
/* 8035DE84 00327444  38 63 ED 08 */	addi r3, r3, lbl_8055ED08@l
/* 8035DE88 00327448  80 1F 00 08 */	lwz r0, 8(r31)
/* 8035DE8C 0032744C  38 81 00 08 */	addi r4, r1, 8
/* 8035DE90 00327450  38 A0 00 02 */	li r5, 2
/* 8035DE94 00327454  7C C6 02 14 */	add r6, r6, r0
/* 8035DE98 00327458  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8035DE9C 0032745C  7C C6 02 14 */	add r6, r6, r0
/* 8035DEA0 00327460  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8035DEA4 00327464  7C C6 02 14 */	add r6, r6, r0
/* 8035DEA8 00327468  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8035DEAC 0032746C  7C C6 02 14 */	add r6, r6, r0
/* 8035DEB0 00327470  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8035DEB4 00327474  7C C6 02 14 */	add r6, r6, r0
/* 8035DEB8 00327478  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8035DEBC 0032747C  7C C6 02 14 */	add r6, r6, r0
/* 8035DEC0 00327480  90 DE 54 20 */	stw r6, lbl_805D5420@l(r30)
/* 8035DEC4 00327484  4B FF 1A FD */	bl NANDOpen
/* 8035DEC8 00327488  2C 03 00 00 */	cmpwi r3, 0
/* 8035DECC 0032748C  40 82 00 44 */	bne .L_8035DF10
/* 8035DED0 00327490  7F E4 FB 78 */	mr r4, r31
/* 8035DED4 00327494  38 61 00 08 */	addi r3, r1, 8
/* 8035DED8 00327498  38 A0 00 20 */	li r5, 0x20
/* 8035DEDC 0032749C  4B FF 0F 45 */	bl NANDWrite
/* 8035DEE0 003274A0  28 03 00 20 */	cmplwi r3, 0x20
/* 8035DEE4 003274A4  41 82 00 14 */	beq .L_8035DEF8
/* 8035DEE8 003274A8  38 61 00 08 */	addi r3, r1, 8
/* 8035DEEC 003274AC  4B FF 1D 75 */	bl NANDClose
/* 8035DEF0 003274B0  38 60 00 00 */	li r3, 0
/* 8035DEF4 003274B4  48 00 00 28 */	b .L_8035DF1C
.L_8035DEF8:
/* 8035DEF8 003274B8  38 61 00 08 */	addi r3, r1, 8
/* 8035DEFC 003274BC  4B FF 1D 65 */	bl NANDClose
/* 8035DF00 003274C0  2C 03 00 00 */	cmpwi r3, 0
/* 8035DF04 003274C4  41 82 00 14 */	beq .L_8035DF18
/* 8035DF08 003274C8  38 60 00 00 */	li r3, 0
/* 8035DF0C 003274CC  48 00 00 10 */	b .L_8035DF1C
.L_8035DF10:
/* 8035DF10 003274D0  38 60 00 00 */	li r3, 0
/* 8035DF14 003274D4  48 00 00 08 */	b .L_8035DF1C
.L_8035DF18:
/* 8035DF18 003274D8  38 60 00 01 */	li r3, 1
.L_8035DF1C:
/* 8035DF1C 003274DC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8035DF20 003274E0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8035DF24 003274E4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8035DF28 003274E8  7C 08 03 A6 */	mtlr r0
/* 8035DF2C 003274EC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8035DF30 003274F0  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSReadStateFlags
__OSReadStateFlags:
/* 8035DF40 00327500  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8035DF44 00327504  7C 08 02 A6 */	mflr r0
/* 8035DF48 00327508  38 A0 00 01 */	li r5, 1
/* 8035DF4C 0032750C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8035DF50 00327510  38 81 00 08 */	addi r4, r1, 8
/* 8035DF54 00327514  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8035DF58 00327518  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8035DF5C 0032751C  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8035DF60 00327520  3F A0 80 56 */	lis r29, lbl_8055ED08@ha
/* 8035DF64 00327524  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 8035DF68 00327528  7C 7C 1B 78 */	mr r28, r3
/* 8035DF6C 0032752C  38 7D ED 08 */	addi r3, r29, lbl_8055ED08@l
/* 8035DF70 00327530  4B FF 1A 51 */	bl NANDOpen
/* 8035DF74 00327534  2C 03 00 00 */	cmpwi r3, 0
/* 8035DF78 00327538  40 82 00 4C */	bne .L_8035DFC4
/* 8035DF7C 0032753C  3F C0 80 5D */	lis r30, lbl_805D5420@ha
/* 8035DF80 00327540  38 61 00 08 */	addi r3, r1, 8
/* 8035DF84 00327544  38 9E 54 20 */	addi r4, r30, lbl_805D5420@l
/* 8035DF88 00327548  38 A0 00 20 */	li r5, 0x20
/* 8035DF8C 0032754C  4B FF 0D A5 */	bl NANDRead
/* 8035DF90 00327550  7C 7F 1B 78 */	mr r31, r3
/* 8035DF94 00327554  38 61 00 08 */	addi r3, r1, 8
/* 8035DF98 00327558  4B FF 1C C9 */	bl NANDClose
/* 8035DF9C 0032755C  28 1F 00 20 */	cmplwi r31, 0x20
/* 8035DFA0 00327560  41 82 00 3C */	beq .L_8035DFDC
/* 8035DFA4 00327564  38 7D ED 08 */	addi r3, r29, lbl_8055ED08@l
/* 8035DFA8 00327568  4B FF 0A 99 */	bl NANDDelete
/* 8035DFAC 0032756C  7F 83 E3 78 */	mr r3, r28
/* 8035DFB0 00327570  38 80 00 00 */	li r4, 0
/* 8035DFB4 00327574  38 A0 00 20 */	li r5, 0x20
/* 8035DFB8 00327578  4B CA 63 99 */	bl memset
/* 8035DFBC 0032757C  38 60 00 00 */	li r3, 0
/* 8035DFC0 00327580  48 00 00 88 */	b .L_8035E048
.L_8035DFC4:
/* 8035DFC4 00327584  7F 83 E3 78 */	mr r3, r28
/* 8035DFC8 00327588  38 80 00 00 */	li r4, 0
/* 8035DFCC 0032758C  38 A0 00 20 */	li r5, 0x20
/* 8035DFD0 00327590  4B CA 63 81 */	bl memset
/* 8035DFD4 00327594  38 60 00 00 */	li r3, 0
/* 8035DFD8 00327598  48 00 00 70 */	b .L_8035E048
.L_8035DFDC:
/* 8035DFDC 0032759C  38 9E 54 20 */	addi r4, r30, lbl_805D5420@l
/* 8035DFE0 003275A0  80 1E 54 20 */	lwz r0, lbl_805D5420@l(r30)
/* 8035DFE4 003275A4  80 A4 00 04 */	lwz r5, 4(r4)
/* 8035DFE8 003275A8  80 64 00 08 */	lwz r3, 8(r4)
/* 8035DFEC 003275AC  7C A5 1A 14 */	add r5, r5, r3
/* 8035DFF0 003275B0  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8035DFF4 003275B4  7C A5 1A 14 */	add r5, r5, r3
/* 8035DFF8 003275B8  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8035DFFC 003275BC  7C A5 1A 14 */	add r5, r5, r3
/* 8035E000 003275C0  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8035E004 003275C4  7C A5 1A 14 */	add r5, r5, r3
/* 8035E008 003275C8  80 64 00 18 */	lwz r3, 0x18(r4)
/* 8035E00C 003275CC  7C A5 1A 14 */	add r5, r5, r3
/* 8035E010 003275D0  80 64 00 1C */	lwz r3, 0x1c(r4)
/* 8035E014 003275D4  7C A5 1A 14 */	add r5, r5, r3
/* 8035E018 003275D8  7C 00 28 40 */	cmplw r0, r5
/* 8035E01C 003275DC  41 82 00 1C */	beq .L_8035E038
/* 8035E020 003275E0  7F 83 E3 78 */	mr r3, r28
/* 8035E024 003275E4  38 80 00 00 */	li r4, 0
/* 8035E028 003275E8  38 A0 00 20 */	li r5, 0x20
/* 8035E02C 003275EC  4B CA 63 25 */	bl memset
/* 8035E030 003275F0  38 60 00 00 */	li r3, 0
/* 8035E034 003275F4  48 00 00 14 */	b .L_8035E048
.L_8035E038:
/* 8035E038 003275F8  7F 83 E3 78 */	mr r3, r28
/* 8035E03C 003275FC  38 A0 00 20 */	li r5, 0x20
/* 8035E040 00327600  4B CA 5F C1 */	bl memcpy
/* 8035E044 00327604  38 60 00 01 */	li r3, 1
.L_8035E048:
/* 8035E048 00327608  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8035E04C 0032760C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8035E050 00327610  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8035E054 00327614  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 8035E058 00327618  83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 8035E05C 0032761C  7C 08 03 A6 */	mtlr r0
/* 8035E060 00327620  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8035E064 00327624  4E 80 00 20 */	blr 