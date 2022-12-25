.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global GXGetTevSwapModeTable__Q34nw4r3g3d6ResTevCF13_GXTevSwapSelP15_GXTevColorChanP15_GXTevColorChanP15_GXTevColorChanP15_GXTevColorChan
GXGetTevSwapModeTable__Q34nw4r3g3d6ResTevCF13_GXTevSwapSelP15_GXTevColorChanP15_GXTevColorChanP15_GXTevColorChanP15_GXTevColorChan:
/* 803DAEF4 003A44B4  1C 04 00 14 */	mulli r0, r4, 0x14
/* 803DAEF8 003A44B8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DAEFC 003A44BC  7D 23 02 14 */	add r9, r3, r0
/* 803DAF00 003A44C0  88 09 00 20 */	lbz r0, 0x20(r9)
/* 803DAF04 003A44C4  2C 00 00 00 */	cmpwi r0, 0
/* 803DAF08 003A44C8  40 82 00 0C */	bne lbl_803DAF14
/* 803DAF0C 003A44CC  38 60 00 00 */	li r3, 0
/* 803DAF10 003A44D0  4E 80 00 20 */	blr
lbl_803DAF14:
/* 803DAF14 003A44D4  88 69 00 27 */	lbz r3, 0x27(r9)
/* 803DAF18 003A44D8  2C 05 00 00 */	cmpwi r5, 0
/* 803DAF1C 003A44DC  88 09 00 28 */	lbz r0, 0x28(r9)
/* 803DAF20 003A44E0  54 6A 80 1E */	slwi r10, r3, 0x10
/* 803DAF24 003A44E4  88 89 00 26 */	lbz r4, 0x26(r9)
/* 803DAF28 003A44E8  54 03 40 2E */	slwi r3, r0, 8
/* 803DAF2C 003A44EC  88 09 00 29 */	lbz r0, 0x29(r9)
/* 803DAF30 003A44F0  50 8A C0 0E */	rlwimi r10, r4, 0x18, 0, 7
/* 803DAF34 003A44F4  7D 4A 1B 78 */	or r10, r10, r3
/* 803DAF38 003A44F8  7D 4A 03 78 */	or r10, r10, r0
/* 803DAF3C 003A44FC  41 82 00 0C */	beq lbl_803DAF48
/* 803DAF40 003A4500  55 40 07 BE */	clrlwi r0, r10, 0x1e
/* 803DAF44 003A4504  90 05 00 00 */	stw r0, 0(r5)
lbl_803DAF48:
/* 803DAF48 003A4508  2C 06 00 00 */	cmpwi r6, 0
/* 803DAF4C 003A450C  41 82 00 0C */	beq lbl_803DAF58
/* 803DAF50 003A4510  55 40 F7 BE */	rlwinm r0, r10, 0x1e, 0x1e, 0x1f
/* 803DAF54 003A4514  90 06 00 00 */	stw r0, 0(r6)
lbl_803DAF58:
/* 803DAF58 003A4518  88 69 00 31 */	lbz r3, 0x31(r9)
/* 803DAF5C 003A451C  2C 07 00 00 */	cmpwi r7, 0
/* 803DAF60 003A4520  88 09 00 32 */	lbz r0, 0x32(r9)
/* 803DAF64 003A4524  54 65 80 1E */	slwi r5, r3, 0x10
/* 803DAF68 003A4528  88 89 00 30 */	lbz r4, 0x30(r9)
/* 803DAF6C 003A452C  54 03 40 2E */	slwi r3, r0, 8
/* 803DAF70 003A4530  88 09 00 33 */	lbz r0, 0x33(r9)
/* 803DAF74 003A4534  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 803DAF78 003A4538  7C A5 1B 78 */	or r5, r5, r3
/* 803DAF7C 003A453C  7C A5 03 78 */	or r5, r5, r0
/* 803DAF80 003A4540  41 82 00 0C */	beq lbl_803DAF8C
/* 803DAF84 003A4544  54 A0 07 BE */	clrlwi r0, r5, 0x1e
/* 803DAF88 003A4548  90 07 00 00 */	stw r0, 0(r7)
lbl_803DAF8C:
/* 803DAF8C 003A454C  2C 08 00 00 */	cmpwi r8, 0
/* 803DAF90 003A4550  41 82 00 0C */	beq lbl_803DAF9C
/* 803DAF94 003A4554  54 A0 F7 BE */	rlwinm r0, r5, 0x1e, 0x1e, 0x1f
/* 803DAF98 003A4558  90 08 00 00 */	stw r0, 0(r8)
lbl_803DAF9C:
/* 803DAF9C 003A455C  38 60 00 01 */	li r3, 1
/* 803DAFA0 003A4560  4E 80 00 20 */	blr 

.global GXSetTevSwapModeTable__Q34nw4r3g3d6ResTevF13_GXTevSwapSel15_GXTevColorChan15_GXTevColorChan15_GXTevColorChan15_GXTevColorChan
GXSetTevSwapModeTable__Q34nw4r3g3d6ResTevF13_GXTevSwapSel15_GXTevColorChan15_GXTevColorChan15_GXTevColorChan15_GXTevColorChan:
/* 803DAFA4 003A4564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DAFA8 003A4568  7C 08 02 A6 */	mflr r0
/* 803DAFAC 003A456C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DAFB0 003A4570  39 61 00 20 */	addi r11, r1, 0x20
/* 803DAFB4 003A4574  4B ED F1 9D */	bl _savegpr_26
/* 803DAFB8 003A4578  1C 04 00 14 */	mulli r0, r4, 0x14
/* 803DAFBC 003A457C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DAFC0 003A4580  7C 9E 23 78 */	mr r30, r4
/* 803DAFC4 003A4584  7C BA 2B 78 */	mr r26, r5
/* 803DAFC8 003A4588  7C 63 02 14 */	add r3, r3, r0
/* 803DAFCC 003A458C  7C DF 33 78 */	mr r31, r6
/* 803DAFD0 003A4590  3B A3 00 20 */	addi r29, r3, 0x20
/* 803DAFD4 003A4594  7C FB 3B 78 */	mr r27, r7
/* 803DAFD8 003A4598  7D 1C 43 78 */	mr r28, r8
/* 803DAFDC 003A459C  38 80 00 0F */	li r4, 0xf
/* 803DAFE0 003A45A0  7F A3 EB 78 */	mr r3, r29
/* 803DAFE4 003A45A4  4B FF C9 29 */	bl ResWriteSSMask__Q34nw4r3g3d6detailFPUcUl
/* 803DAFE8 003A45A8  57 DE 08 3C */	slwi r30, r30, 1
/* 803DAFEC 003A45AC  57 E3 10 3A */	slwi r3, r31, 2
/* 803DAFF0 003A45B0  38 1E 00 F6 */	addi r0, r30, 0xf6
/* 803DAFF4 003A45B4  3F E0 FF 00 */	lis r31, 0xFF00000F@ha
/* 803DAFF8 003A45B8  7F 44 1B 78 */	or r4, r26, r3
/* 803DAFFC 003A45BC  38 7D 00 05 */	addi r3, r29, 5
/* 803DB000 003A45C0  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB004 003A45C4  38 BF 00 0F */	addi r5, r31, 0xFF00000F@l
/* 803DB008 003A45C8  7C 84 03 78 */	or r4, r4, r0
/* 803DB00C 003A45CC  4B FF C8 7D */	bl ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
/* 803DB010 003A45D0  38 7D 00 0A */	addi r3, r29, 0xa
/* 803DB014 003A45D4  38 80 00 0F */	li r4, 0xf
/* 803DB018 003A45D8  4B FF C8 F5 */	bl ResWriteSSMask__Q34nw4r3g3d6detailFPUcUl
/* 803DB01C 003A45DC  57 83 10 3A */	slwi r3, r28, 2
/* 803DB020 003A45E0  38 1E 00 F7 */	addi r0, r30, 0xf7
/* 803DB024 003A45E4  7F 64 1B 78 */	or r4, r27, r3
/* 803DB028 003A45E8  38 BF 00 0F */	addi r5, r31, 0xf
/* 803DB02C 003A45EC  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB030 003A45F0  38 7D 00 0F */	addi r3, r29, 0xf
/* 803DB034 003A45F4  7C 84 03 78 */	or r4, r4, r0
/* 803DB038 003A45F8  4B FF C8 51 */	bl ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
/* 803DB03C 003A45FC  39 61 00 20 */	addi r11, r1, 0x20
/* 803DB040 003A4600  4B ED F1 5D */	bl _restgpr_26
/* 803DB044 003A4604  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DB048 003A4608  7C 08 03 A6 */	mtlr r0
/* 803DB04C 003A460C  38 21 00 20 */	addi r1, r1, 0x20
/* 803DB050 003A4610  4E 80 00 20 */	blr 

.global GXSetTevAlphaIn__Q34nw4r3g3d6ResTevF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
GXSetTevAlphaIn__Q34nw4r3g3d6ResTevF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg:
/* 803DB054 003A4614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB058 003A4618  7C 08 02 A6 */	mflr r0
/* 803DB05C 003A461C  54 8A 0F FE */	srwi r10, r4, 0x1f
/* 803DB060 003A4620  54 C6 50 2A */	slwi r6, r6, 0xa
/* 803DB064 003A4624  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB068 003A4628  7D 2A 22 14 */	add r9, r10, r4
/* 803DB06C 003A462C  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 803DB070 003A4630  54 84 08 3C */	slwi r4, r4, 1
/* 803DB074 003A4634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB078 003A4638  7D 29 0E 70 */	srawi r9, r9, 1
/* 803DB07C 003A463C  7C 00 52 78 */	xor r0, r0, r10
/* 803DB080 003A4640  7D 6A 00 50 */	subf r11, r10, r0
/* 803DB084 003A4644  83 E3 00 00 */	lwz r31, 0(r3)
/* 803DB088 003A4648  38 04 00 C1 */	addi r0, r4, 0xc1
/* 803DB08C 003A464C  55 04 20 36 */	slwi r4, r8, 4
/* 803DB090 003A4650  1D 89 00 30 */	mulli r12, r9, 0x30
/* 803DB094 003A4654  54 A9 68 24 */	slwi r9, r5, 0xd
/* 803DB098 003A4658  54 E3 38 30 */	slwi r3, r7, 7
/* 803DB09C 003A465C  55 6A 10 3A */	slwi r10, r11, 2
/* 803DB0A0 003A4660  3C A0 FF 01 */	lis r5, 0xFF00FFF0@ha
/* 803DB0A4 003A4664  7D 26 33 78 */	or r6, r9, r6
/* 803DB0A8 003A4668  7C 83 1B 78 */	or r3, r4, r3
/* 803DB0AC 003A466C  7D 1F 62 14 */	add r8, r31, r12
/* 803DB0B0 003A4670  7C EA 5A 14 */	add r7, r10, r11
/* 803DB0B4 003A4674  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB0B8 003A4678  7C C4 1B 78 */	or r4, r6, r3
/* 803DB0BC 003A467C  38 A5 FF F0 */	addi r5, r5, 0xFF00FFF0@l
/* 803DB0C0 003A4680  7C E8 3A 14 */	add r7, r8, r7
/* 803DB0C4 003A4684  38 67 00 99 */	addi r3, r7, 0x99
/* 803DB0C8 003A4688  7C 84 03 78 */	or r4, r4, r0
/* 803DB0CC 003A468C  4B FF C7 BD */	bl ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
/* 803DB0D0 003A4690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB0D4 003A4694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB0D8 003A4698  7C 08 03 A6 */	mtlr r0
/* 803DB0DC 003A469C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB0E0 003A46A0  4E 80 00 20 */	blr 

.global GXSetTevAlphaOp__Q34nw4r3g3d6ResTevF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
GXSetTevAlphaOp__Q34nw4r3g3d6ResTevF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID:
/* 803DB0E4 003A46A4  54 8B 0F FE */	srwi r11, r4, 0x1f
/* 803DB0E8 003A46A8  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 803DB0EC 003A46AC  7D 4B 22 14 */	add r10, r11, r4
/* 803DB0F0 003A46B0  81 83 00 00 */	lwz r12, 0(r3)
/* 803DB0F4 003A46B4  7D 43 0E 70 */	srawi r3, r10, 1
/* 803DB0F8 003A46B8  7C 00 5A 78 */	xor r0, r0, r11
/* 803DB0FC 003A46BC  1D 43 00 30 */	mulli r10, r3, 0x30
/* 803DB100 003A46C0  2C 05 00 01 */	cmpwi r5, 1
/* 803DB104 003A46C4  7C 6B 00 50 */	subf r3, r11, r0
/* 803DB108 003A46C8  54 60 10 3A */	slwi r0, r3, 2
/* 803DB10C 003A46CC  7D 4C 52 14 */	add r10, r12, r10
/* 803DB110 003A46D0  7C 00 1A 14 */	add r0, r0, r3
/* 803DB114 003A46D4  7C 6A 02 14 */	add r3, r10, r0
/* 803DB118 003A46D8  38 63 00 99 */	addi r3, r3, 0x99
/* 803DB11C 003A46DC  41 81 00 40 */	bgt lbl_803DB15C
/* 803DB120 003A46E0  55 08 99 58 */	rlwinm r8, r8, 0x13, 5, 0xc
/* 803DB124 003A46E4  54 C0 80 1E */	slwi r0, r6, 0x10
/* 803DB128 003A46E8  7D 06 03 78 */	or r6, r8, r0
/* 803DB12C 003A46EC  54 84 08 3C */	slwi r4, r4, 1
/* 803DB130 003A46F0  38 04 00 C1 */	addi r0, r4, 0xc1
/* 803DB134 003A46F4  54 A5 93 5A */	rlwinm r5, r5, 0x12, 0xd, 0xd
/* 803DB138 003A46F8  7C C4 2B 78 */	or r4, r6, r5
/* 803DB13C 003A46FC  55 28 B0 12 */	slwi r8, r9, 0x16
/* 803DB140 003A4700  54 E7 A0 16 */	slwi r7, r7, 0x14
/* 803DB144 003A4704  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB148 003A4708  7D 07 3B 78 */	or r7, r8, r7
/* 803DB14C 003A470C  3C A0 FF FF */	lis r5, 0xffff
/* 803DB150 003A4710  7C E4 23 78 */	or r4, r7, r4
/* 803DB154 003A4714  7C 84 03 78 */	or r4, r4, r0
/* 803DB158 003A4718  4B FF C7 30 */	b ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
lbl_803DB15C:
/* 803DB15C 003A471C  55 00 99 58 */	rlwinm r0, r8, 0x13, 5, 0xc
/* 803DB160 003A4720  54 84 08 3C */	slwi r4, r4, 1
/* 803DB164 003A4724  64 06 00 03 */	oris r6, r0, 3
/* 803DB168 003A4728  54 A7 9A 96 */	rlwinm r7, r5, 0x13, 0xa, 0xb
/* 803DB16C 003A472C  38 04 00 C1 */	addi r0, r4, 0xc1
/* 803DB170 003A4730  50 A6 93 5A */	rlwimi r6, r5, 0x12, 0xd, 0xd
/* 803DB174 003A4734  51 27 B0 12 */	rlwimi r7, r9, 0x16, 0, 9
/* 803DB178 003A4738  7C E4 33 78 */	or r4, r7, r6
/* 803DB17C 003A473C  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB180 003A4740  7C 84 03 78 */	or r4, r4, r0
/* 803DB184 003A4744  3C A0 FF FF */	lis r5, 0xffff
/* 803DB188 003A4748  4B FF C7 00 */	b ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl

.global GXSetTevKColorSel__Q34nw4r3g3d6ResTevF13_GXTevStageID15_GXTevKColorSel
GXSetTevKColorSel__Q34nw4r3g3d6ResTevF13_GXTevStageID15_GXTevKColorSel:
/* 803DB18C 003A474C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DB190 003A4750  7C 08 02 A6 */	mflr r0
/* 803DB194 003A4754  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DB198 003A4758  39 61 00 20 */	addi r11, r1, 0x20
/* 803DB19C 003A475C  4B ED EF B9 */	bl _savegpr_27
/* 803DB1A0 003A4760  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 803DB1A4 003A4764  54 86 0F FE */	srwi r6, r4, 0x1f
/* 803DB1A8 003A4768  7C 06 22 14 */	add r0, r6, r4
/* 803DB1AC 003A476C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DB1B0 003A4770  7C BB 2B 78 */	mr r27, r5
/* 803DB1B4 003A4774  3B E0 00 04 */	li r31, 4
/* 803DB1B8 003A4778  7C 1E 0E 70 */	srawi r30, r0, 1
/* 803DB1BC 003A477C  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 803DB1C0 003A4780  7C 63 02 14 */	add r3, r3, r0
/* 803DB1C4 003A4784  3B A3 00 80 */	addi r29, r3, 0x80
/* 803DB1C8 003A4788  41 82 00 08 */	beq lbl_803DB1D0
/* 803DB1CC 003A478C  3B E0 00 0E */	li r31, 0xe
lbl_803DB1D0:
/* 803DB1D0 003A4790  38 00 00 1F */	li r0, 0x1f
/* 803DB1D4 003A4794  7F A3 EB 78 */	mr r3, r29
/* 803DB1D8 003A4798  7C 1C F8 30 */	slw r28, r0, r31
/* 803DB1DC 003A479C  7F 84 E3 78 */	mr r4, r28
/* 803DB1E0 003A47A0  4B FF C7 2D */	bl ResWriteSSMask__Q34nw4r3g3d6detailFPUcUl
/* 803DB1E4 003A47A4  38 7E 00 F6 */	addi r3, r30, 0xf6
/* 803DB1E8 003A47A8  7F 60 F8 30 */	slw r0, r27, r31
/* 803DB1EC 003A47AC  54 64 C0 0E */	slwi r4, r3, 0x18
/* 803DB1F0 003A47B0  67 85 FF 00 */	oris r5, r28, 0xff00
/* 803DB1F4 003A47B4  38 7D 00 05 */	addi r3, r29, 5
/* 803DB1F8 003A47B8  7C 84 03 78 */	or r4, r4, r0
/* 803DB1FC 003A47BC  4B FF C6 8D */	bl ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
/* 803DB200 003A47C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DB204 003A47C4  4B ED EF 9D */	bl _restgpr_27
/* 803DB208 003A47C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DB20C 003A47CC  7C 08 03 A6 */	mtlr r0
/* 803DB210 003A47D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803DB214 003A47D4  4E 80 00 20 */	blr 

.global GXSetTevKAlphaSel__Q34nw4r3g3d6ResTevF13_GXTevStageID15_GXTevKAlphaSel
GXSetTevKAlphaSel__Q34nw4r3g3d6ResTevF13_GXTevStageID15_GXTevKAlphaSel:
/* 803DB218 003A47D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DB21C 003A47DC  7C 08 02 A6 */	mflr r0
/* 803DB220 003A47E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DB224 003A47E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DB228 003A47E8  4B ED EF 2D */	bl _savegpr_27
/* 803DB22C 003A47EC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 803DB230 003A47F0  54 86 0F FE */	srwi r6, r4, 0x1f
/* 803DB234 003A47F4  7C 06 22 14 */	add r0, r6, r4
/* 803DB238 003A47F8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DB23C 003A47FC  7C BB 2B 78 */	mr r27, r5
/* 803DB240 003A4800  3B E0 00 09 */	li r31, 9
/* 803DB244 003A4804  7C 1E 0E 70 */	srawi r30, r0, 1
/* 803DB248 003A4808  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 803DB24C 003A480C  7C 63 02 14 */	add r3, r3, r0
/* 803DB250 003A4810  3B A3 00 80 */	addi r29, r3, 0x80
/* 803DB254 003A4814  41 82 00 08 */	beq lbl_803DB25C
/* 803DB258 003A4818  3B E0 00 13 */	li r31, 0x13
lbl_803DB25C:
/* 803DB25C 003A481C  38 00 00 1F */	li r0, 0x1f
/* 803DB260 003A4820  7F A3 EB 78 */	mr r3, r29
/* 803DB264 003A4824  7C 1C F8 30 */	slw r28, r0, r31
/* 803DB268 003A4828  7F 84 E3 78 */	mr r4, r28
/* 803DB26C 003A482C  4B FF C6 A1 */	bl ResWriteSSMask__Q34nw4r3g3d6detailFPUcUl
/* 803DB270 003A4830  38 7E 00 F6 */	addi r3, r30, 0xf6
/* 803DB274 003A4834  7F 60 F8 30 */	slw r0, r27, r31
/* 803DB278 003A4838  54 64 C0 0E */	slwi r4, r3, 0x18
/* 803DB27C 003A483C  67 85 FF 00 */	oris r5, r28, 0xff00
/* 803DB280 003A4840  38 7D 00 05 */	addi r3, r29, 5
/* 803DB284 003A4844  7C 84 03 78 */	or r4, r4, r0
/* 803DB288 003A4848  4B FF C6 01 */	bl ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
/* 803DB28C 003A484C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DB290 003A4850  4B ED EF 11 */	bl _restgpr_27
/* 803DB294 003A4854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DB298 003A4858  7C 08 03 A6 */	mtlr r0
/* 803DB29C 003A485C  38 21 00 20 */	addi r1, r1, 0x20
/* 803DB2A0 003A4860  4E 80 00 20 */	blr 

.global GXGetTevOrder__Q34nw4r3g3d6ResTevCF13_GXTevStageIDP13_GXTexCoordIDP11_GXTexMapIDP12_GXChannelID
GXGetTevOrder__Q34nw4r3g3d6ResTevCF13_GXTevStageIDP13_GXTexCoordIDP11_GXTexMapIDP12_GXChannelID:
/* 803DB2A4 003A4864  54 80 0F FE */	srwi r0, r4, 0x1f
/* 803DB2A8 003A4868  80 63 00 00 */	lwz r3, 0(r3)
/* 803DB2AC 003A486C  7C 00 22 14 */	add r0, r0, r4
/* 803DB2B0 003A4870  7C 00 0E 70 */	srawi r0, r0, 1
/* 803DB2B4 003A4874  1C 00 00 30 */	mulli r0, r0, 0x30
/* 803DB2B8 003A4878  7D 03 02 14 */	add r8, r3, r0
/* 803DB2BC 003A487C  88 08 00 8A */	lbz r0, 0x8a(r8)
/* 803DB2C0 003A4880  2C 00 00 00 */	cmpwi r0, 0
/* 803DB2C4 003A4884  40 82 00 0C */	bne lbl_803DB2D0
/* 803DB2C8 003A4888  38 60 00 00 */	li r3, 0
/* 803DB2CC 003A488C  4E 80 00 20 */	blr
lbl_803DB2D0:
/* 803DB2D0 003A4890  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 803DB2D4 003A4894  88 68 00 8C */	lbz r3, 0x8c(r8)
/* 803DB2D8 003A4898  88 08 00 8D */	lbz r0, 0x8d(r8)
/* 803DB2DC 003A489C  88 88 00 8B */	lbz r4, 0x8b(r8)
/* 803DB2E0 003A48A0  54 69 80 1E */	slwi r9, r3, 0x10
/* 803DB2E4 003A48A4  54 03 40 2E */	slwi r3, r0, 8
/* 803DB2E8 003A48A8  88 08 00 8E */	lbz r0, 0x8e(r8)
/* 803DB2EC 003A48AC  50 89 C0 0E */	rlwimi r9, r4, 0x18, 0, 7
/* 803DB2F0 003A48B0  7D 29 1B 78 */	or r9, r9, r3
/* 803DB2F4 003A48B4  7D 29 03 78 */	or r9, r9, r0
/* 803DB2F8 003A48B8  41 82 00 24 */	beq lbl_803DB31C
/* 803DB2FC 003A48BC  3C 60 80 52 */	lis r3, lbl_80520DB8@ha
/* 803DB300 003A48C0  55 20 7E FA */	rlwinm r0, r9, 0xf, 0x1b, 0x1d
/* 803DB304 003A48C4  38 63 0D B8 */	addi r3, r3, lbl_80520DB8@l
/* 803DB308 003A48C8  55 24 8F 7E */	rlwinm r4, r9, 0x11, 0x1d, 0x1f
/* 803DB30C 003A48CC  7D 03 00 2E */	lwzx r8, r3, r0
/* 803DB310 003A48D0  55 20 77 FE */	rlwinm r0, r9, 0xe, 0x1f, 0x1f
/* 803DB314 003A48D4  55 23 A7 7E */	rlwinm r3, r9, 0x14, 0x1d, 0x1f
/* 803DB318 003A48D8  48 00 00 20 */	b lbl_803DB338
lbl_803DB31C:
/* 803DB31C 003A48DC  3C 60 80 52 */	lis r3, lbl_80520DB8@ha
/* 803DB320 003A48E0  55 20 DE FA */	rlwinm r0, r9, 0x1b, 0x1b, 0x1d
/* 803DB324 003A48E4  38 63 0D B8 */	addi r3, r3, lbl_80520DB8@l
/* 803DB328 003A48E8  55 24 EF 7E */	rlwinm r4, r9, 0x1d, 0x1d, 0x1f
/* 803DB32C 003A48EC  7D 03 00 2E */	lwzx r8, r3, r0
/* 803DB330 003A48F0  55 20 D7 FE */	rlwinm r0, r9, 0x1a, 0x1f, 0x1f
/* 803DB334 003A48F4  55 23 07 7E */	clrlwi r3, r9, 0x1d
lbl_803DB338:
/* 803DB338 003A48F8  2C 05 00 00 */	cmpwi r5, 0
/* 803DB33C 003A48FC  41 82 00 08 */	beq lbl_803DB344
/* 803DB340 003A4900  90 85 00 00 */	stw r4, 0(r5)
lbl_803DB344:
/* 803DB344 003A4904  2C 07 00 00 */	cmpwi r7, 0
/* 803DB348 003A4908  41 82 00 08 */	beq lbl_803DB350
/* 803DB34C 003A490C  91 07 00 00 */	stw r8, 0(r7)
lbl_803DB350:
/* 803DB350 003A4910  2C 00 00 00 */	cmpwi r0, 0
/* 803DB354 003A4914  40 82 00 08 */	bne lbl_803DB35C
/* 803DB358 003A4918  38 60 00 FF */	li r3, 0xff
lbl_803DB35C:
/* 803DB35C 003A491C  2C 06 00 00 */	cmpwi r6, 0
/* 803DB360 003A4920  41 82 00 08 */	beq lbl_803DB368
/* 803DB364 003A4924  90 66 00 00 */	stw r3, 0(r6)
lbl_803DB368:
/* 803DB368 003A4928  38 60 00 01 */	li r3, 1
/* 803DB36C 003A492C  4E 80 00 20 */	blr 

.global GXSetTevOrder__Q34nw4r3g3d6ResTevF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
GXSetTevOrder__Q34nw4r3g3d6ResTevF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID:
/* 803DB370 003A4930  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803DB374 003A4934  7C 08 02 A6 */	mflr r0
/* 803DB378 003A4938  90 01 00 34 */	stw r0, 0x34(r1)
/* 803DB37C 003A493C  39 61 00 30 */	addi r11, r1, 0x30
/* 803DB380 003A4940  4B ED ED D5 */	bl _savegpr_27
/* 803DB384 003A4944  7C BD 2B 78 */	mr r29, r5
/* 803DB388 003A4948  7C DE 33 78 */	mr r30, r6
/* 803DB38C 003A494C  7C FF 3B 78 */	mr r31, r7
/* 803DB390 003A4950  7C 7C 1B 78 */	mr r28, r3
/* 803DB394 003A4954  7C 9B 23 78 */	mr r27, r4
/* 803DB398 003A4958  38 A1 00 0C */	addi r5, r1, 0xc
/* 803DB39C 003A495C  38 C1 00 08 */	addi r6, r1, 8
/* 803DB3A0 003A4960  38 E0 00 00 */	li r7, 0
/* 803DB3A4 003A4964  4B FF FF 01 */	bl GXGetTevOrder__Q34nw4r3g3d6ResTevCF13_GXTevStageIDP13_GXTexCoordIDP11_GXTexMapIDP12_GXChannelID
/* 803DB3A8 003A4968  2C 03 00 00 */	cmpwi r3, 0
/* 803DB3AC 003A496C  41 82 00 2C */	beq lbl_803DB3D8
/* 803DB3B0 003A4970  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803DB3B4 003A4974  2C 03 00 FF */	cmpwi r3, 0xff
/* 803DB3B8 003A4978  41 82 00 20 */	beq lbl_803DB3D8
/* 803DB3BC 003A497C  80 01 00 08 */	lwz r0, 8(r1)
/* 803DB3C0 003A4980  2C 00 00 FF */	cmpwi r0, 0xff
/* 803DB3C4 003A4984  41 82 00 14 */	beq lbl_803DB3D8
/* 803DB3C8 003A4988  80 1C 00 00 */	lwz r0, 0(r28)
/* 803DB3CC 003A498C  38 80 00 FF */	li r4, 0xff
/* 803DB3D0 003A4990  7C 60 1A 14 */	add r3, r0, r3
/* 803DB3D4 003A4994  98 83 00 10 */	stb r4, 0x10(r3)
lbl_803DB3D8:
/* 803DB3D8 003A4998  2C 1D 00 FF */	cmpwi r29, 0xff
/* 803DB3DC 003A499C  41 82 00 10 */	beq lbl_803DB3EC
/* 803DB3E0 003A49A0  80 1C 00 00 */	lwz r0, 0(r28)
/* 803DB3E4 003A49A4  7C 60 EA 14 */	add r3, r0, r29
/* 803DB3E8 003A49A8  9B C3 00 10 */	stb r30, 0x10(r3)
lbl_803DB3EC:
/* 803DB3EC 003A49AC  57 63 0F FE */	srwi r3, r27, 0x1f
/* 803DB3F0 003A49B0  57 60 07 FE */	clrlwi r0, r27, 0x1f
/* 803DB3F4 003A49B4  7C 83 DA 14 */	add r4, r3, r27
/* 803DB3F8 003A49B8  80 DC 00 00 */	lwz r6, 0(r28)
/* 803DB3FC 003A49BC  7C 88 0E 70 */	srawi r8, r4, 1
/* 803DB400 003A49C0  3C 60 80 57 */	lis r3, lbl_8056C9A0@ha
/* 803DB404 003A49C4  1C A8 00 30 */	mulli r5, r8, 0x30
/* 803DB408 003A49C8  7C 80 00 D0 */	neg r4, r0
/* 803DB40C 003A49CC  57 E0 07 3E */	clrlwi r0, r31, 0x1c
/* 803DB410 003A49D0  38 63 C9 A0 */	addi r3, r3, lbl_8056C9A0@l
/* 803DB414 003A49D4  7C 03 00 AE */	lbzx r0, r3, r0
/* 803DB418 003A49D8  7C A6 2A 14 */	add r5, r6, r5
/* 803DB41C 003A49DC  57 A6 1E B8 */	rlwinm r6, r29, 3, 0x1a, 0x1c
/* 803DB420 003A49E0  2C 1E 00 FF */	cmpwi r30, 0xff
/* 803DB424 003A49E4  54 89 07 3A */	rlwinm r9, r4, 0, 0x1c, 0x1d
/* 803DB428 003A49E8  38 60 03 FF */	li r3, 0x3ff
/* 803DB42C 003A49EC  7C 64 48 30 */	slw r4, r3, r9
/* 803DB430 003A49F0  54 07 38 30 */	slwi r7, r0, 7
/* 803DB434 003A49F4  38 65 00 8A */	addi r3, r5, 0x8a
/* 803DB438 003A49F8  53 C6 07 7E */	rlwimi r6, r30, 0, 0x1d, 0x1f
/* 803DB43C 003A49FC  64 85 FF 00 */	oris r5, r4, 0xff00
/* 803DB440 003A4A00  38 80 00 00 */	li r4, 0
/* 803DB444 003A4A04  41 82 00 10 */	beq lbl_803DB454
/* 803DB448 003A4A08  57 C0 05 EF */	rlwinm. r0, r30, 0, 0x17, 0x17
/* 803DB44C 003A4A0C  40 82 00 08 */	bne lbl_803DB454
/* 803DB450 003A4A10  38 80 00 01 */	li r4, 1
lbl_803DB454:
/* 803DB454 003A4A14  54 84 30 32 */	slwi r4, r4, 6
/* 803DB458 003A4A18  38 08 00 28 */	addi r0, r8, 0x28
/* 803DB45C 003A4A1C  7C C4 23 78 */	or r4, r6, r4
/* 803DB460 003A4A20  7C E4 23 78 */	or r4, r7, r4
/* 803DB464 003A4A24  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB468 003A4A28  7C 84 48 30 */	slw r4, r4, r9
/* 803DB46C 003A4A2C  7C 84 03 78 */	or r4, r4, r0
/* 803DB470 003A4A30  4B FF C4 19 */	bl ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
/* 803DB474 003A4A34  39 61 00 30 */	addi r11, r1, 0x30
/* 803DB478 003A4A38  4B ED ED 29 */	bl _restgpr_27
/* 803DB47C 003A4A3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803DB480 003A4A40  7C 08 03 A6 */	mtlr r0
/* 803DB484 003A4A44  38 21 00 30 */	addi r1, r1, 0x30
/* 803DB488 003A4A48  4E 80 00 20 */	blr 

.global GXSetTevColorIn__Q34nw4r3g3d6ResTevF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
GXSetTevColorIn__Q34nw4r3g3d6ResTevF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg:
/* 803DB48C 003A4A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB490 003A4A50  7C 08 02 A6 */	mflr r0
/* 803DB494 003A4A54  54 8C 0F FE */	srwi r12, r4, 0x1f
/* 803DB498 003A4A58  54 89 07 FE */	clrlwi r9, r4, 0x1f
/* 803DB49C 003A4A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB4A0 003A4A60  7D 4C 22 14 */	add r10, r12, r4
/* 803DB4A4 003A4A64  7D 4A 0E 70 */	srawi r10, r10, 1
/* 803DB4A8 003A4A68  54 C0 40 2E */	slwi r0, r6, 8
/* 803DB4AC 003A4A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB4B0 003A4A70  7D 26 62 78 */	xor r6, r9, r12
/* 803DB4B4 003A4A74  1D 6A 00 30 */	mulli r11, r10, 0x30
/* 803DB4B8 003A4A78  54 A5 60 26 */	slwi r5, r5, 0xc
/* 803DB4BC 003A4A7C  7D 4C 30 50 */	subf r10, r12, r6
/* 803DB4C0 003A4A80  83 E3 00 00 */	lwz r31, 0(r3)
/* 803DB4C4 003A4A84  54 83 08 3C */	slwi r3, r4, 1
/* 803DB4C8 003A4A88  7C 06 43 78 */	or r6, r0, r8
/* 803DB4CC 003A4A8C  54 E4 20 36 */	slwi r4, r7, 4
/* 803DB4D0 003A4A90  38 03 00 C0 */	addi r0, r3, 0xc0
/* 803DB4D4 003A4A94  55 49 10 3A */	slwi r9, r10, 2
/* 803DB4D8 003A4A98  7C FF 5A 14 */	add r7, r31, r11
/* 803DB4DC 003A4A9C  7C 69 52 14 */	add r3, r9, r10
/* 803DB4E0 003A4AA0  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB4E4 003A4AA4  7C E7 1A 14 */	add r7, r7, r3
/* 803DB4E8 003A4AA8  7C C3 23 78 */	or r3, r6, r4
/* 803DB4EC 003A4AAC  3C 80 FF 01 */	lis r4, 0xFF00FFFF@ha
/* 803DB4F0 003A4AB0  7C A6 1B 78 */	or r6, r5, r3
/* 803DB4F4 003A4AB4  38 A4 FF FF */	addi r5, r4, 0xFF00FFFF@l
/* 803DB4F8 003A4AB8  38 67 00 8F */	addi r3, r7, 0x8f
/* 803DB4FC 003A4ABC  7C C4 03 78 */	or r4, r6, r0
/* 803DB500 003A4AC0  4B FF C3 89 */	bl ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
/* 803DB504 003A4AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB508 003A4AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB50C 003A4ACC  7C 08 03 A6 */	mtlr r0
/* 803DB510 003A4AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB514 003A4AD4  4E 80 00 20 */	blr 

.global GXSetTevColorOp__Q34nw4r3g3d6ResTevF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
GXSetTevColorOp__Q34nw4r3g3d6ResTevF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID:
/* 803DB518 003A4AD8  54 8B 0F FE */	srwi r11, r4, 0x1f
/* 803DB51C 003A4ADC  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 803DB520 003A4AE0  7D 4B 22 14 */	add r10, r11, r4
/* 803DB524 003A4AE4  81 83 00 00 */	lwz r12, 0(r3)
/* 803DB528 003A4AE8  7D 43 0E 70 */	srawi r3, r10, 1
/* 803DB52C 003A4AEC  7C 00 5A 78 */	xor r0, r0, r11
/* 803DB530 003A4AF0  1D 43 00 30 */	mulli r10, r3, 0x30
/* 803DB534 003A4AF4  2C 05 00 01 */	cmpwi r5, 1
/* 803DB538 003A4AF8  7C 6B 00 50 */	subf r3, r11, r0
/* 803DB53C 003A4AFC  54 60 10 3A */	slwi r0, r3, 2
/* 803DB540 003A4B00  7D 4C 52 14 */	add r10, r12, r10
/* 803DB544 003A4B04  7C 00 1A 14 */	add r0, r0, r3
/* 803DB548 003A4B08  7C 6A 02 14 */	add r3, r10, r0
/* 803DB54C 003A4B0C  38 63 00 8F */	addi r3, r3, 0x8f
/* 803DB550 003A4B10  41 81 00 40 */	bgt lbl_803DB590
/* 803DB554 003A4B14  55 08 99 58 */	rlwinm r8, r8, 0x13, 5, 0xc
/* 803DB558 003A4B18  54 C0 80 1E */	slwi r0, r6, 0x10
/* 803DB55C 003A4B1C  7D 06 03 78 */	or r6, r8, r0
/* 803DB560 003A4B20  54 84 08 3C */	slwi r4, r4, 1
/* 803DB564 003A4B24  38 04 00 C0 */	addi r0, r4, 0xc0
/* 803DB568 003A4B28  54 A5 93 5A */	rlwinm r5, r5, 0x12, 0xd, 0xd
/* 803DB56C 003A4B2C  7C C4 2B 78 */	or r4, r6, r5
/* 803DB570 003A4B30  55 28 B0 12 */	slwi r8, r9, 0x16
/* 803DB574 003A4B34  54 E7 A0 16 */	slwi r7, r7, 0x14
/* 803DB578 003A4B38  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB57C 003A4B3C  7D 07 3B 78 */	or r7, r8, r7
/* 803DB580 003A4B40  3C A0 FF FF */	lis r5, 0xffff
/* 803DB584 003A4B44  7C E4 23 78 */	or r4, r7, r4
/* 803DB588 003A4B48  7C 84 03 78 */	or r4, r4, r0
/* 803DB58C 003A4B4C  4B FF C2 FC */	b ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl
lbl_803DB590:
/* 803DB590 003A4B50  55 00 99 58 */	rlwinm r0, r8, 0x13, 5, 0xc
/* 803DB594 003A4B54  54 84 08 3C */	slwi r4, r4, 1
/* 803DB598 003A4B58  64 06 00 03 */	oris r6, r0, 3
/* 803DB59C 003A4B5C  54 A7 9A 96 */	rlwinm r7, r5, 0x13, 0xa, 0xb
/* 803DB5A0 003A4B60  38 04 00 C0 */	addi r0, r4, 0xc0
/* 803DB5A4 003A4B64  50 A6 93 5A */	rlwimi r6, r5, 0x12, 0xd, 0xd
/* 803DB5A8 003A4B68  51 27 B0 12 */	rlwimi r7, r9, 0x16, 0, 9
/* 803DB5AC 003A4B6C  7C E4 33 78 */	or r4, r7, r6
/* 803DB5B0 003A4B70  54 00 C0 0E */	slwi r0, r0, 0x18
/* 803DB5B4 003A4B74  7C 84 03 78 */	or r4, r4, r0
/* 803DB5B8 003A4B78  3C A0 FF FF */	lis r5, 0xffff
/* 803DB5BC 003A4B7C  4B FF C2 CC */	b ResWriteBPCmd__Q34nw4r3g3d6detailFPUcUlUl

.global SetNumTevStages__Q34nw4r3g3d6ResTevFUc
SetNumTevStages__Q34nw4r3g3d6ResTevFUc:
/* 803DB5C0 003A4B80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DB5C4 003A4B84  7C 08 02 A6 */	mflr r0
/* 803DB5C8 003A4B88  28 04 00 01 */	cmplwi r4, 1
/* 803DB5CC 003A4B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DB5D0 003A4B90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803DB5D4 003A4B94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803DB5D8 003A4B98  7C 7E 1B 78 */	mr r30, r3
/* 803DB5DC 003A4B9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803DB5E0 003A4BA0  93 81 00 10 */	stw r28, 0x10(r1)
/* 803DB5E4 003A4BA4  7C 9C 23 78 */	mr r28, r4
/* 803DB5E8 003A4BA8  41 80 00 A4 */	blt lbl_803DB68C
/* 803DB5EC 003A4BAC  28 04 00 10 */	cmplwi r4, 0x10
/* 803DB5F0 003A4BB0  41 81 00 9C */	bgt lbl_803DB68C
/* 803DB5F4 003A4BB4  83 E3 00 00 */	lwz r31, 0(r3)
/* 803DB5F8 003A4BB8  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 803DB5FC 003A4BBC  7C 00 20 40 */	cmplw r0, r4
/* 803DB600 003A4BC0  40 81 00 88 */	ble lbl_803DB688
/* 803DB604 003A4BC4  7F 9D E3 78 */	mr r29, r28
/* 803DB608 003A4BC8  48 00 00 20 */	b lbl_803DB628
lbl_803DB60C:
/* 803DB60C 003A4BCC  7F C3 F3 78 */	mr r3, r30
/* 803DB610 003A4BD0  7F A4 EB 78 */	mr r4, r29
/* 803DB614 003A4BD4  38 A0 00 FF */	li r5, 0xff
/* 803DB618 003A4BD8  38 C0 00 FF */	li r6, 0xff
/* 803DB61C 003A4BDC  38 E0 00 FF */	li r7, 0xff
/* 803DB620 003A4BE0  4B FF FD 51 */	bl GXSetTevOrder__Q34nw4r3g3d6ResTevF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 803DB624 003A4BE4  3B BD 00 01 */	addi r29, r29, 1
lbl_803DB628:
/* 803DB628 003A4BE8  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 803DB62C 003A4BEC  7C 1D 00 40 */	cmplw r29, r0
/* 803DB630 003A4BF0  41 80 FF DC */	blt lbl_803DB60C
/* 803DB634 003A4BF4  38 7C 00 01 */	addi r3, r28, 1
/* 803DB638 003A4BF8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 803DB63C 003A4BFC  7C 00 1A 14 */	add r0, r0, r3
/* 803DB640 003A4C00  7C 1D 0E 70 */	srawi r29, r0, 1
/* 803DB644 003A4C04  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 803DB648 003A4C08  7C 7F 02 14 */	add r3, r31, r0
/* 803DB64C 003A4C0C  3B C3 00 80 */	addi r30, r3, 0x80
/* 803DB650 003A4C10  48 00 00 24 */	b lbl_803DB674
lbl_803DB654:
/* 803DB654 003A4C14  7F C3 F3 78 */	mr r3, r30
/* 803DB658 003A4C18  38 80 00 30 */	li r4, 0x30
/* 803DB65C 003A4C1C  48 00 C4 C1 */	bl ZeroMemory16ByteBlocks__Q34nw4r3g3d6detailFPvUl
/* 803DB660 003A4C20  7F C3 F3 78 */	mr r3, r30
/* 803DB664 003A4C24  38 80 00 30 */	li r4, 0x30
/* 803DB668 003A4C28  4B F7 89 D9 */	bl DCStoreRangeNoSync
/* 803DB66C 003A4C2C  3B DE 00 30 */	addi r30, r30, 0x30
/* 803DB670 003A4C30  3B BD 00 01 */	addi r29, r29, 1
lbl_803DB674:
/* 803DB674 003A4C34  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 803DB678 003A4C38  38 03 00 01 */	addi r0, r3, 1
/* 803DB67C 003A4C3C  54 00 F8 7E */	srwi r0, r0, 1
/* 803DB680 003A4C40  7C 1D 00 40 */	cmplw r29, r0
/* 803DB684 003A4C44  41 80 FF D0 */	blt lbl_803DB654
lbl_803DB688:
/* 803DB688 003A4C48  9B 9F 00 0C */	stb r28, 0xc(r31)
lbl_803DB68C:
/* 803DB68C 003A4C4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DB690 003A4C50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803DB694 003A4C54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803DB698 003A4C58  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803DB69C 003A4C5C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803DB6A0 003A4C60  7C 08 03 A6 */	mtlr r0
/* 803DB6A4 003A4C64  38 21 00 20 */	addi r1, r1, 0x20
/* 803DB6A8 003A4C68  4E 80 00 20 */	blr 

.global CallDisplayList__Q34nw4r3g3d6ResTevCFb
CallDisplayList__Q34nw4r3g3d6ResTevCFb:
/* 803DB6AC 003A4C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB6B0 003A4C70  7C 08 02 A6 */	mflr r0
/* 803DB6B4 003A4C74  2C 04 00 00 */	cmpwi r4, 0
/* 803DB6B8 003A4C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB6BC 003A4C7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB6C0 003A4C80  7C 7F 1B 78 */	mr r31, r3
/* 803DB6C4 003A4C84  41 82 00 08 */	beq lbl_803DB6CC
/* 803DB6C8 003A4C88  4B EF F4 F9 */	bl PPCSync
lbl_803DB6CC:
/* 803DB6CC 003A4C8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DB6D0 003A4C90  3C 80 80 52 */	lis r4, lbl_80520DD8@ha
/* 803DB6D4 003A4C94  38 84 0D D8 */	addi r4, r4, lbl_80520DD8@l
/* 803DB6D8 003A4C98  88 A3 00 0C */	lbz r5, 0xc(r3)
/* 803DB6DC 003A4C9C  38 63 00 20 */	addi r3, r3, 0x20
/* 803DB6E0 003A4CA0  38 05 FF FF */	addi r0, r5, -1
/* 803DB6E4 003A4CA4  54 00 10 3A */	slwi r0, r0, 2
/* 803DB6E8 003A4CA8  7C 84 00 2E */	lwzx r4, r4, r0
/* 803DB6EC 003A4CAC  4B F4 2D 85 */	bl GXCallDisplayList
/* 803DB6F0 003A4CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB6F4 003A4CB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB6F8 003A4CB8  7C 08 03 A6 */	mtlr r0
/* 803DB6FC 003A4CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB700 003A4CC0  4E 80 00 20 */	blr 

.global CopyTo__Q34nw4r3g3d6ResTevFPv
CopyTo__Q34nw4r3g3d6ResTevFPv:
/* 803DB704 003A4CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB708 003A4CC8  7C 08 02 A6 */	mflr r0
/* 803DB70C 003A4CCC  38 A0 02 00 */	li r5, 0x200
/* 803DB710 003A4CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB714 003A4CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB718 003A4CD8  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB71C 003A4CDC  7C 9E 23 78 */	mr r30, r4
/* 803DB720 003A4CE0  83 E3 00 00 */	lwz r31, 0(r3)
/* 803DB724 003A4CE4  7F C3 F3 78 */	mr r3, r30
/* 803DB728 003A4CE8  7F E4 FB 78 */	mr r4, r31
/* 803DB72C 003A4CEC  48 00 C2 4D */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
/* 803DB730 003A4CF0  80 1E 00 04 */	lwz r0, 4(r30)
/* 803DB734 003A4CF4  7C 9F F0 50 */	subf r4, r31, r30
/* 803DB738 003A4CF8  7F C3 F3 78 */	mr r3, r30
/* 803DB73C 003A4CFC  7C 04 00 50 */	subf r0, r4, r0
/* 803DB740 003A4D00  90 1E 00 04 */	stw r0, 4(r30)
/* 803DB744 003A4D04  80 9E 00 00 */	lwz r4, 0(r30)
/* 803DB748 003A4D08  4B F7 88 F9 */	bl DCStoreRangeNoSync
/* 803DB74C 003A4D0C  7F C3 F3 78 */	mr r3, r30
/* 803DB750 003A4D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB754 003A4D14  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB758 003A4D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB75C 003A4D1C  7C 08 03 A6 */	mtlr r0
/* 803DB760 003A4D20  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB764 003A4D24  4E 80 00 20 */	blr 

.global DCStore__Q34nw4r3g3d6ResTevFb
DCStore__Q34nw4r3g3d6ResTevFb:
/* 803DB768 003A4D28  80 63 00 00 */	lwz r3, 0(r3)
/* 803DB76C 003A4D2C  2C 04 00 00 */	cmpwi r4, 0
/* 803DB770 003A4D30  80 83 00 00 */	lwz r4, 0(r3)
/* 803DB774 003A4D34  41 82 00 08 */	beq lbl_803DB77C
/* 803DB778 003A4D38  4B F7 88 68 */	b DCStoreRange
lbl_803DB77C:
/* 803DB77C 003A4D3C  4B F7 88 C4 */	b DCStoreRangeNoSync

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_80520DB8
lbl_80520DB8:
	# ROM: 0x51CEB8
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000006


.global lbl_80520DD8
lbl_80520DD8:
	# ROM: 0x51CED8
	.4byte 0x000000A0
	.4byte 0x000000A0
	.4byte 0x000000C0
	.4byte 0x000000C0
	.4byte 0x00000100
	.4byte 0x00000100
	.4byte 0x00000120
	.4byte 0x00000120
	.4byte 0x00000160
	.4byte 0x00000160
	.4byte 0x00000180
	.4byte 0x00000180
	.4byte 0x000001C0
	.4byte 0x000001C0
	.4byte 0x000001E0
	.4byte 0x000001E0


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056C9A0
lbl_8056C9A0:
	# ROM: 0x568AA0
	.4byte 0x00010001
	.4byte 0x00010705
	.4byte 0x06000000
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0