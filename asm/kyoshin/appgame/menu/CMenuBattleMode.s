.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__15CMenuBattleModeFv, global
/* 8019FE50 00169410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019FE54 00169414  7C 08 02 A6 */	mflr r0
/* 8019FE58 00169418  2C 03 00 00 */	cmpwi r3, 0
/* 8019FE5C 0016941C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019FE60 00169420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019FE64 00169424  7C 9F 23 78 */	mr r31, r4
/* 8019FE68 00169428  93 C1 00 08 */	stw r30, 8(r1)
/* 8019FE6C 0016942C  7C 7E 1B 78 */	mr r30, r3
/* 8019FE70 00169430  41 82 00 38 */	beq .L_8019FEA8
/* 8019FE74 00169434  38 80 FF FF */	li r4, -1
/* 8019FE78 00169438  38 63 00 60 */	addi r3, r3, 0x60
/* 8019FE7C 0016943C  48 2B F7 05 */	bl __dt__17UnkClass_8045F564Fv
/* 8019FE80 00169440  2C 1E 00 00 */	cmpwi r30, 0
/* 8019FE84 00169444  41 82 00 14 */	beq .L_8019FE98
/* 8019FE88 00169448  41 82 00 10 */	beq .L_8019FE98
/* 8019FE8C 0016944C  7F C3 F3 78 */	mr r3, r30
/* 8019FE90 00169450  38 80 00 00 */	li r4, 0
/* 8019FE94 00169454  48 2A 4C A5 */	bl __dt__8CProcessFv
.L_8019FE98:
/* 8019FE98 00169458  2C 1F 00 00 */	cmpwi r31, 0
/* 8019FE9C 0016945C  40 81 00 0C */	ble .L_8019FEA8
/* 8019FEA0 00169460  7F C3 F3 78 */	mr r3, r30
/* 8019FEA4 00169464  48 29 4D 89 */	bl __dl__FPv
.L_8019FEA8:
/* 8019FEA8 00169468  7F C3 F3 78 */	mr r3, r30
/* 8019FEAC 0016946C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019FEB0 00169470  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019FEB4 00169474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019FEB8 00169478  7C 08 03 A6 */	mtlr r0
/* 8019FEBC 0016947C  38 21 00 10 */	addi r1, r1, 0x10
/* 8019FEC0 00169480  4E 80 00 20 */	blr 
.endfn __dt__15CMenuBattleModeFv

.fn func_8019FEC4, global
/* 8019FEC4 00169484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019FEC8 00169488  7C 08 02 A6 */	mflr r0
/* 8019FECC 0016948C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019FED0 00169490  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8019FED4 00169494  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8019FED8 00169498  7C 7E 1B 78 */	mr r30, r3
/* 8019FEDC 0016949C  48 29 44 C5 */	bl Heap_getRegionIndex2
/* 8019FEE0 001694A0  3F E0 80 50 */	lis r31, CMenuBattleMode_strpool@ha
/* 8019FEE4 001694A4  7C 64 1B 78 */	mr r4, r3
/* 8019FEE8 001694A8  38 7E 00 60 */	addi r3, r30, 0x60
/* 8019FEEC 001694AC  38 A0 0D 00 */	li r5, 0xd00
/* 8019FEF0 001694B0  38 DF F5 A8 */	addi r6, r31, CMenuBattleMode_strpool@l
/* 8019FEF4 001694B4  38 E0 00 00 */	li r7, 0
/* 8019FEF8 001694B8  48 2B F7 89 */	bl CLibLayout_addLayoutHeapEntry__FP17UnkClass_8045F564iiPCci
/* 8019FEFC 001694BC  38 61 00 08 */	addi r3, r1, 8
/* 8019FF00 001694C0  38 9E 00 60 */	addi r4, r30, 0x60
/* 8019FF04 001694C4  48 2B F9 55 */	bl __ct__14Class_8045F858FP17UnkClass_8045F564
/* 8019FF08 001694C8  4B F9 56 ED */	bl func_801355F4
/* 8019FF0C 001694CC  3B FF F5 A8 */	addi r31, r31, CMenuBattleMode_strpool@l
/* 8019FF10 001694D0  7C 64 1B 78 */	mr r4, r3
/* 8019FF14 001694D4  38 7E 00 74 */	addi r3, r30, 0x74
/* 8019FF18 001694D8  38 BF 00 10 */	addi r5, r31, 0x10
/* 8019FF1C 001694DC  4B F9 6F 69 */	bl func_80136E84__FPPQ34nw4r3lyt6LayoutPQ34nw4r3lyt19ArcResourceAccessorPCc
/* 8019FF20 001694E0  4B F9 56 D5 */	bl func_801355F4
/* 8019FF24 001694E4  7C 65 1B 78 */	mr r5, r3
/* 8019FF28 001694E8  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8019FF2C 001694EC  38 9E 00 78 */	addi r4, r30, 0x78
/* 8019FF30 001694F0  38 DF 00 29 */	addi r6, r31, 0x29
/* 8019FF34 001694F4  4B F9 6F D5 */	bl func_80136F08
/* 8019FF38 001694F8  4B F9 56 BD */	bl func_801355F4
/* 8019FF3C 001694FC  7C 65 1B 78 */	mr r5, r3
/* 8019FF40 00169500  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8019FF44 00169504  38 9E 00 7C */	addi r4, r30, 0x7c
/* 8019FF48 00169508  38 DF 00 45 */	addi r6, r31, 0x45
/* 8019FF4C 0016950C  4B F9 6F BD */	bl func_80136F08
/* 8019FF50 00169510  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8019FF54 00169514  38 A0 00 00 */	li r5, 0
/* 8019FF58 00169518  80 9E 00 7C */	lwz r4, 0x7c(r30)
/* 8019FF5C 0016951C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019FF60 00169520  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019FF64 00169524  7D 89 03 A6 */	mtctr r12
/* 8019FF68 00169528  4E 80 04 21 */	bctrl 
/* 8019FF6C 0016952C  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8019FF70 00169530  38 A0 00 01 */	li r5, 1
/* 8019FF74 00169534  80 9E 00 78 */	lwz r4, 0x78(r30)
/* 8019FF78 00169538  81 83 00 00 */	lwz r12, 0(r3)
/* 8019FF7C 0016953C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019FF80 00169540  7D 89 03 A6 */	mtctr r12
/* 8019FF84 00169544  4E 80 04 21 */	bctrl 
/* 8019FF88 00169548  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 8019FF8C 0016954C  38 80 00 00 */	li r4, 0
/* 8019FF90 00169550  C0 02 A1 C0 */	lfs f0, float_8066A540@sda21(r2)
/* 8019FF94 00169554  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8019FF98 00169558  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8019FF9C 0016955C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019FFA0 00169560  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8019FFA4 00169564  7D 89 03 A6 */	mtctr r12
/* 8019FFA8 00169568  4E 80 04 21 */	bctrl 
/* 8019FFAC 0016956C  2C 1E 00 00 */	cmpwi r30, 0
/* 8019FFB0 00169570  7F C4 F3 78 */	mr r4, r30
/* 8019FFB4 00169574  41 82 00 08 */	beq .L_8019FFBC
/* 8019FFB8 00169578  38 9E 00 5C */	addi r4, r30, 0x5c
.L_8019FFBC:
/* 8019FFBC 0016957C  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 8019FFC0 00169580  38 A0 00 07 */	li r5, 7
/* 8019FFC4 00169584  38 C0 00 00 */	li r6, 0
/* 8019FFC8 00169588  48 2F 5E ED */	bl func_80495EB4
/* 8019FFCC 0016958C  38 7E 00 60 */	addi r3, r30, 0x60
/* 8019FFD0 00169590  48 2B F8 41 */	bl func_8045F810__FP17UnkClass_8045F564
/* 8019FFD4 00169594  38 61 00 08 */	addi r3, r1, 8
/* 8019FFD8 00169598  38 80 FF FF */	li r4, -1
/* 8019FFDC 0016959C  48 2B F8 ED */	bl __dt__14Class_8045F858Fv
/* 8019FFE0 001695A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019FFE4 001695A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8019FFE8 001695A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8019FFEC 001695AC  7C 08 03 A6 */	mtlr r0
/* 8019FFF0 001695B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8019FFF4 001695B4  4E 80 00 20 */	blr 
.endfn func_8019FEC4

.fn func_8019FFF8, global
/* 8019FFF8 001695B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019FFFC 001695BC  7C 08 02 A6 */	mflr r0
/* 801A0000 001695C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A0004 001695C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A0008 001695C8  7C 7F 1B 78 */	mr r31, r3
/* 801A000C 001695CC  48 2A 8A 39 */	bl func_80448A44__Fv
/* 801A0010 001695D0  2C 1F 00 00 */	cmpwi r31, 0
/* 801A0014 001695D4  7F E4 FB 78 */	mr r4, r31
/* 801A0018 001695D8  41 82 00 08 */	beq .L_801A0020
/* 801A001C 001695DC  38 9F 00 5C */	addi r4, r31, 0x5c
.L_801A0020:
/* 801A0020 001695E0  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801A0024 001695E4  48 2F 5F 2D */	bl func_80495F50
/* 801A0028 001695E8  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A002C 001695EC  2C 03 00 00 */	cmpwi r3, 0
/* 801A0030 001695F0  41 82 00 24 */	beq .L_801A0054
/* 801A0034 001695F4  41 82 00 18 */	beq .L_801A004C
/* 801A0038 001695F8  81 83 00 00 */	lwz r12, 0(r3)
/* 801A003C 001695FC  38 80 00 01 */	li r4, 1
/* 801A0040 00169600  81 8C 00 08 */	lwz r12, 8(r12)
/* 801A0044 00169604  7D 89 03 A6 */	mtctr r12
/* 801A0048 00169608  4E 80 04 21 */	bctrl 
.L_801A004C:
/* 801A004C 0016960C  38 00 00 00 */	li r0, 0
/* 801A0050 00169610  90 1F 00 74 */	stw r0, 0x74(r31)
.L_801A0054:
/* 801A0054 00169614  38 7F 00 60 */	addi r3, r31, 0x60
/* 801A0058 00169618  48 2B F7 21 */	bl func_8045F778__FP17UnkClass_8045F564
/* 801A005C 0016961C  38 00 00 00 */	li r0, 0
/* 801A0060 00169620  90 0D AA 88 */	stw r0, lbl_80666C08@sda21(r13)
/* 801A0064 00169624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A0068 00169628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A006C 0016962C  7C 08 03 A6 */	mtlr r0
/* 801A0070 00169630  38 21 00 10 */	addi r1, r1, 0x10
/* 801A0074 00169634  4E 80 00 20 */	blr 
.endfn func_8019FFF8

.fn func_801A0078, global
/* 801A0078 00169638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A007C 0016963C  7C 08 02 A6 */	mflr r0
/* 801A0080 00169640  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A0084 00169644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A0088 00169648  7C 7F 1B 78 */	mr r31, r3
/* 801A008C 0016964C  4B EA 04 5D */	bl func_800404E8
/* 801A0090 00169650  4B EA 26 61 */	bl func_800426F0
/* 801A0094 00169654  2C 03 00 00 */	cmpwi r3, 0
/* 801A0098 00169658  40 82 02 14 */	bne .L_801A02AC
/* 801A009C 0016965C  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 801A00A0 00169660  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 801A00A4 00169664  41 82 00 08 */	beq .L_801A00AC
/* 801A00A8 00169668  48 00 02 04 */	b .L_801A02AC
.L_801A00AC:
/* 801A00AC 0016966C  4B F9 BD A5 */	bl func_8013BE50
/* 801A00B0 00169670  2C 03 00 00 */	cmpwi r3, 0
/* 801A00B4 00169674  41 82 01 F8 */	beq .L_801A02AC
/* 801A00B8 00169678  4B ED D9 C5 */	bl func_8007DA7C
/* 801A00BC 0016967C  3C 60 AF A4 */	lis r3, 0xafa4
/* 801A00C0 00169680  4B EC EE 45 */	bl func_8006EF04
/* 801A00C4 00169684  2C 03 00 00 */	cmpwi r3, 0
/* 801A00C8 00169688  40 82 01 E4 */	bne .L_801A02AC
/* 801A00CC 0016968C  88 1F 00 80 */	lbz r0, 0x80(r31)
/* 801A00D0 00169690  2C 00 00 00 */	cmpwi r0, 0
/* 801A00D4 00169694  41 82 00 20 */	beq .L_801A00F4
/* 801A00D8 00169698  2C 00 00 01 */	cmpwi r0, 1
/* 801A00DC 0016969C  41 82 00 9C */	beq .L_801A0178
/* 801A00E0 001696A0  2C 00 00 02 */	cmpwi r0, 2
/* 801A00E4 001696A4  41 82 00 F8 */	beq .L_801A01DC
/* 801A00E8 001696A8  2C 00 00 03 */	cmpwi r0, 3
/* 801A00EC 001696AC  41 82 01 80 */	beq .L_801A026C
/* 801A00F0 001696B0  48 00 01 98 */	b .L_801A0288
.L_801A00F4:
/* 801A00F4 001696B4  38 60 00 00 */	li r3, 0
/* 801A00F8 001696B8  4B EE 2C 5D */	bl func_80082D54
/* 801A00FC 001696BC  2C 03 00 00 */	cmpwi r3, 0
/* 801A0100 001696C0  41 82 01 88 */	beq .L_801A0288
/* 801A0104 001696C4  4B FC FD 31 */	bl func_8016FE34
/* 801A0108 001696C8  4B F3 90 81 */	bl getBattleManagerInstance
/* 801A010C 001696CC  80 A3 00 08 */	lwz r5, 8(r3)
/* 801A0110 001696D0  38 80 00 00 */	li r4, 0
/* 801A0114 001696D4  80 65 00 00 */	lwz r3, 0(r5)
/* 801A0118 001696D8  48 00 00 0C */	b .L_801A0124
.L_801A011C:
/* 801A011C 001696DC  80 63 00 00 */	lwz r3, 0(r3)
/* 801A0120 001696E0  38 84 00 01 */	addi r4, r4, 1
.L_801A0124:
/* 801A0124 001696E4  7C 03 28 40 */	cmplw r3, r5
/* 801A0128 001696E8  40 82 FF F4 */	bne .L_801A011C
/* 801A012C 001696EC  2C 04 00 00 */	cmpwi r4, 0
/* 801A0130 001696F0  41 82 01 58 */	beq .L_801A0288
/* 801A0134 001696F4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A0138 001696F8  38 A0 00 00 */	li r5, 0
/* 801A013C 001696FC  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 801A0140 00169700  81 83 00 00 */	lwz r12, 0(r3)
/* 801A0144 00169704  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801A0148 00169708  7D 89 03 A6 */	mtctr r12
/* 801A014C 0016970C  4E 80 04 21 */	bctrl 
/* 801A0150 00169710  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A0154 00169714  38 A0 00 01 */	li r5, 1
/* 801A0158 00169718  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 801A015C 0016971C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A0160 00169720  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801A0164 00169724  7D 89 03 A6 */	mtctr r12
/* 801A0168 00169728  4E 80 04 21 */	bctrl 
/* 801A016C 0016972C  38 00 00 01 */	li r0, 1
/* 801A0170 00169730  98 1F 00 80 */	stb r0, 0x80(r31)
/* 801A0174 00169734  48 00 01 14 */	b .L_801A0288
.L_801A0178:
/* 801A0178 00169738  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 801A017C 0016973C  C0 22 A1 C4 */	lfs f1, float_8066A544@sda21(r2)
/* 801A0180 00169740  4B F9 72 C5 */	bl func_80137444
/* 801A0184 00169744  2C 03 00 00 */	cmpwi r3, 0
/* 801A0188 00169748  41 82 01 00 */	beq .L_801A0288
/* 801A018C 0016974C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A0190 00169750  38 A0 00 00 */	li r5, 0
/* 801A0194 00169754  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 801A0198 00169758  81 83 00 00 */	lwz r12, 0(r3)
/* 801A019C 0016975C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801A01A0 00169760  7D 89 03 A6 */	mtctr r12
/* 801A01A4 00169764  4E 80 04 21 */	bctrl 
/* 801A01A8 00169768  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A01AC 0016976C  38 A0 00 01 */	li r5, 1
/* 801A01B0 00169770  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 801A01B4 00169774  81 83 00 00 */	lwz r12, 0(r3)
/* 801A01B8 00169778  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801A01BC 0016977C  7D 89 03 A6 */	mtctr r12
/* 801A01C0 00169780  4E 80 04 21 */	bctrl 
/* 801A01C4 00169784  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801A01C8 00169788  38 00 00 02 */	li r0, 2
/* 801A01CC 0016978C  C0 02 A1 C0 */	lfs f0, float_8066A540@sda21(r2)
/* 801A01D0 00169790  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801A01D4 00169794  98 1F 00 80 */	stb r0, 0x80(r31)
/* 801A01D8 00169798  48 00 00 B0 */	b .L_801A0288
.L_801A01DC:
/* 801A01DC 0016979C  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801A01E0 001697A0  C0 22 A1 C4 */	lfs f1, float_8066A544@sda21(r2)
/* 801A01E4 001697A4  4B F9 72 61 */	bl func_80137444
/* 801A01E8 001697A8  38 60 00 00 */	li r3, 0
/* 801A01EC 001697AC  4B EE 2B 69 */	bl func_80082D54
/* 801A01F0 001697B0  2C 03 00 00 */	cmpwi r3, 0
/* 801A01F4 001697B4  41 82 00 94 */	beq .L_801A0288
/* 801A01F8 001697B8  4B FC FC 3D */	bl func_8016FE34
/* 801A01FC 001697BC  4B F3 8F 8D */	bl getBattleManagerInstance
/* 801A0200 001697C0  80 A3 00 08 */	lwz r5, 8(r3)
/* 801A0204 001697C4  38 80 00 00 */	li r4, 0
/* 801A0208 001697C8  80 65 00 00 */	lwz r3, 0(r5)
/* 801A020C 001697CC  48 00 00 0C */	b .L_801A0218
.L_801A0210:
/* 801A0210 001697D0  80 63 00 00 */	lwz r3, 0(r3)
/* 801A0214 001697D4  38 84 00 01 */	addi r4, r4, 1
.L_801A0218:
/* 801A0218 001697D8  7C 03 28 40 */	cmplw r3, r5
/* 801A021C 001697DC  40 82 FF F4 */	bne .L_801A0210
/* 801A0220 001697E0  2C 04 00 00 */	cmpwi r4, 0
/* 801A0224 001697E4  40 82 00 64 */	bne .L_801A0288
/* 801A0228 001697E8  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A022C 001697EC  38 A0 00 00 */	li r5, 0
/* 801A0230 001697F0  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 801A0234 001697F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801A0238 001697F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801A023C 001697FC  7D 89 03 A6 */	mtctr r12
/* 801A0240 00169800  4E 80 04 21 */	bctrl 
/* 801A0244 00169804  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A0248 00169808  38 A0 00 01 */	li r5, 1
/* 801A024C 0016980C  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 801A0250 00169810  81 83 00 00 */	lwz r12, 0(r3)
/* 801A0254 00169814  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801A0258 00169818  7D 89 03 A6 */	mtctr r12
/* 801A025C 0016981C  4E 80 04 21 */	bctrl 
/* 801A0260 00169820  38 00 00 03 */	li r0, 3
/* 801A0264 00169824  98 1F 00 80 */	stb r0, 0x80(r31)
/* 801A0268 00169828  48 00 00 20 */	b .L_801A0288
.L_801A026C:
/* 801A026C 0016982C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 801A0270 00169830  C0 22 A1 C4 */	lfs f1, float_8066A544@sda21(r2)
/* 801A0274 00169834  4B F9 72 9D */	bl func_80137510
/* 801A0278 00169838  2C 03 00 00 */	cmpwi r3, 0
/* 801A027C 0016983C  41 82 00 0C */	beq .L_801A0288
/* 801A0280 00169840  38 00 00 00 */	li r0, 0
/* 801A0284 00169844  98 1F 00 80 */	stb r0, 0x80(r31)
.L_801A0288:
/* 801A0288 00169848  88 1F 00 80 */	lbz r0, 0x80(r31)
/* 801A028C 0016984C  2C 00 00 00 */	cmpwi r0, 0
/* 801A0290 00169850  41 82 00 1C */	beq .L_801A02AC
/* 801A0294 00169854  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A0298 00169858  38 80 00 00 */	li r4, 0
/* 801A029C 0016985C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A02A0 00169860  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801A02A4 00169864  7D 89 03 A6 */	mtctr r12
/* 801A02A8 00169868  4E 80 04 21 */	bctrl 
.L_801A02AC:
/* 801A02AC 0016986C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A02B0 00169870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A02B4 00169874  7C 08 03 A6 */	mtlr r0
/* 801A02B8 00169878  38 21 00 10 */	addi r1, r1, 0x10
/* 801A02BC 0016987C  4E 80 00 20 */	blr
.endfn func_801A0078

.fn func_801A02C0, global
/* 801A02C0 00169880  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801A02C4 00169884  7C 08 02 A6 */	mflr r0
/* 801A02C8 00169888  90 01 00 74 */	stw r0, 0x74(r1)
/* 801A02CC 0016988C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801A02D0 00169890  7C 7F 1B 78 */	mr r31, r3
/* 801A02D4 00169894  4B EA 02 15 */	bl func_800404E8
/* 801A02D8 00169898  4B EA 24 19 */	bl func_800426F0
/* 801A02DC 0016989C  2C 03 00 00 */	cmpwi r3, 0
/* 801A02E0 001698A0  40 82 00 80 */	bne .L_801A0360
/* 801A02E4 001698A4  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 801A02E8 001698A8  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 801A02EC 001698AC  41 82 00 08 */	beq .L_801A02F4
/* 801A02F0 001698B0  48 00 00 70 */	b .L_801A0360
.L_801A02F4:
/* 801A02F4 001698B4  4B F9 BB 5D */	bl func_8013BE50
/* 801A02F8 001698B8  2C 03 00 00 */	cmpwi r3, 0
/* 801A02FC 001698BC  41 82 00 64 */	beq .L_801A0360
/* 801A0300 001698C0  4B ED D7 7D */	bl func_8007DA7C
/* 801A0304 001698C4  3C 60 AF A4 */	lis r3, 0xafa4
/* 801A0308 001698C8  4B EC EB FD */	bl func_8006EF04
/* 801A030C 001698CC  2C 03 00 00 */	cmpwi r3, 0
/* 801A0310 001698D0  40 82 00 50 */	bne .L_801A0360
/* 801A0314 001698D4  88 1F 00 80 */	lbz r0, 0x80(r31)
/* 801A0318 001698D8  2C 00 00 00 */	cmpwi r0, 0
/* 801A031C 001698DC  41 82 00 44 */	beq .L_801A0360
/* 801A0320 001698E0  38 60 00 00 */	li r3, 0
/* 801A0324 001698E4  38 80 00 00 */	li r4, 0
/* 801A0328 001698E8  38 A0 00 00 */	li r5, 0
/* 801A032C 001698EC  48 17 DF 15 */	bl GXSetZMode
/* 801A0330 001698F0  38 61 00 08 */	addi r3, r1, 8
/* 801A0334 001698F4  48 26 83 35 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 801A0338 001698F8  38 61 00 08 */	addi r3, r1, 8
/* 801A033C 001698FC  4B F9 6F 15 */	bl func_80137250
/* 801A0340 00169900  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801A0344 00169904  38 81 00 08 */	addi r4, r1, 8
/* 801A0348 00169908  38 A0 00 00 */	li r5, 0
/* 801A034C 0016990C  38 C0 00 01 */	li r6, 1
/* 801A0350 00169910  4B F9 6C E9 */	bl func_80137038__FPQ34nw4r3lyt6LayoutPvii
/* 801A0354 00169914  38 61 00 08 */	addi r3, r1, 8
/* 801A0358 00169918  38 80 FF FF */	li r4, -1
/* 801A035C 0016991C  48 26 83 81 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_801A0360:
/* 801A0360 00169920  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801A0364 00169924  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801A0368 00169928  7C 08 03 A6 */	mtlr r0
/* 801A036C 0016992C  38 21 00 70 */	addi r1, r1, 0x70
/* 801A0370 00169930  4E 80 00 20 */	blr 
.endfn func_801A02C0


.fn __ct__CMenuBattleMode, global
/* 801A0374 00169934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A0378 00169938  7C 08 02 A6 */	mflr r0
/* 801A037C 0016993C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A0380 00169940  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A0384 00169944  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A0388 00169948  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801A038C 0016994C  7C 9D 23 78 */	mr r29, r4
/* 801A0390 00169950  93 81 00 10 */	stw r28, 0x10(r1)
/* 801A0394 00169954  7C 7C 1B 78 */	mr r28, r3
/* 801A0398 00169958  80 0D AA 88 */	lwz r0, lbl_80666C08@sda21(r13)
/* 801A039C 0016995C  2C 00 00 00 */	cmpwi r0, 0
/* 801A03A0 00169960  41 82 00 0C */	beq .L_801A03AC
/* 801A03A4 00169964  38 60 00 00 */	li r3, 0
/* 801A03A8 00169968  48 00 00 C4 */	b .L_801A046C
.L_801A03AC:
/* 801A03AC 0016996C  48 29 72 09 */	bl getHeapIndex__Fv
/* 801A03B0 00169970  7C 64 1B 78 */	mr r4, r3
/* 801A03B4 00169974  38 60 00 84 */	li r3, 0x84
/* 801A03B8 00169978  48 29 46 A5 */	bl heap_malloc
/* 801A03BC 0016997C  2C 03 00 00 */	cmpwi r3, 0
/* 801A03C0 00169980  7C 7E 1B 78 */	mr r30, r3
/* 801A03C4 00169984  41 82 00 90 */	beq .L_801A0454
/* 801A03C8 00169988  48 2A 46 51 */	bl __ct__8CProcessFv
/* 801A03CC 0016998C  3C 60 80 53 */	lis r3, "__vt__14CTTask<5IUICf>"@ha
/* 801A03D0 00169990  3D 00 80 51 */	lis r8, __ptmf_null@ha
/* 801A03D4 00169994  38 63 F7 40 */	addi r3, r3, "__vt__14CTTask<5IUICf>"@l
/* 801A03D8 00169998  90 7E 00 10 */	stw r3, 0x10(r30)
/* 801A03DC 0016999C  39 08 CE 10 */	addi r8, r8, __ptmf_null@l
/* 801A03E0 001699A0  3C A0 80 53 */	lis r5, __vt__15CMenuBattleMode@ha
/* 801A03E4 001699A4  80 C8 00 04 */	lwz r6, 4(r8)
/* 801A03E8 001699A8  38 A5 65 88 */	addi r5, r5, __vt__15CMenuBattleMode@l
/* 801A03EC 001699AC  80 08 00 00 */	lwz r0, 0(r8)
/* 801A03F0 001699B0  3B E0 00 00 */	li r31, 0
/* 801A03F4 001699B4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 801A03F8 001699B8  38 85 00 24 */	addi r4, r5, 0x24
/* 801A03FC 001699BC  38 05 00 AC */	addi r0, r5, 0xac
/* 801A0400 001699C0  38 7E 00 60 */	addi r3, r30, 0x60
/* 801A0404 001699C4  90 DE 00 40 */	stw r6, 0x40(r30)
/* 801A0408 001699C8  80 C8 00 08 */	lwz r6, 8(r8)
/* 801A040C 001699CC  90 DE 00 44 */	stw r6, 0x44(r30)
/* 801A0410 001699D0  80 C8 00 04 */	lwz r6, 4(r8)
/* 801A0414 001699D4  80 E8 00 00 */	lwz r7, 0(r8)
/* 801A0418 001699D8  90 FE 00 48 */	stw r7, 0x48(r30)
/* 801A041C 001699DC  90 DE 00 4C */	stw r6, 0x4c(r30)
/* 801A0420 001699E0  80 C8 00 08 */	lwz r6, 8(r8)
/* 801A0424 001699E4  90 DE 00 50 */	stw r6, 0x50(r30)
/* 801A0428 001699E8  9B FE 00 54 */	stb r31, 0x54(r30)
/* 801A042C 001699EC  9B FE 00 55 */	stb r31, 0x55(r30)
/* 801A0430 001699F0  90 BE 00 10 */	stw r5, 0x10(r30)
/* 801A0434 001699F4  90 9E 00 58 */	stw r4, 0x58(r30)
/* 801A0438 001699F8  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 801A043C 001699FC  48 2B F1 29 */	bl __ct__17UnkClass_8045F564Fv
/* 801A0440 00169A00  93 BE 00 70 */	stw r29, 0x70(r30)
/* 801A0444 00169A04  93 FE 00 74 */	stw r31, 0x74(r30)
/* 801A0448 00169A08  93 FE 00 78 */	stw r31, 0x78(r30)
/* 801A044C 00169A0C  93 FE 00 7C */	stw r31, 0x7c(r30)
/* 801A0450 00169A10  9B FE 00 80 */	stb r31, 0x80(r30)
.L_801A0454:
/* 801A0454 00169A14  93 CD AA 88 */	stw r30, lbl_80666C08@sda21(r13)
/* 801A0458 00169A18  7F C3 F3 78 */	mr r3, r30
/* 801A045C 00169A1C  7F 84 E3 78 */	mr r4, r28
/* 801A0460 00169A20  38 A0 00 00 */	li r5, 0
/* 801A0464 00169A24  48 2A 48 11 */	bl func_80444C74
/* 801A0468 00169A28  80 6D AA 88 */	lwz r3, lbl_80666C08@sda21(r13)
.L_801A046C:
/* 801A046C 00169A2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A0470 00169A30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A0474 00169A34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A0478 00169A38  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801A047C 00169A3C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801A0480 00169A40  7C 08 03 A6 */	mtlr r0
/* 801A0484 00169A44  38 21 00 20 */	addi r1, r1, 0x20
/* 801A0488 00169A48  4E 80 00 20 */	blr 
.endfn __ct__CMenuBattleMode

.fn func_801A048C, global
/* 801A048C 00169A4C  38 63 FF A8 */	addi r3, r3, -88
/* 801A0490 00169A50  4B FF F9 C0 */	b __dt__15CMenuBattleModeFv
.endfn func_801A048C

.fn func_801A0494, global
/* 801A0494 00169A54  38 63 FF A4 */	addi r3, r3, -92
/* 801A0498 00169A58  4B FF FE 28 */	b func_801A02C0
.endfn func_801A0494

.fn func_801A049C, global
/* 801A049C 00169A5C  38 63 FF A4 */	addi r3, r3, -92
/* 801A04A0 00169A60  4B FF F9 B0 */	b __dt__15CMenuBattleModeFv
.endfn func_801A049C

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CMenuBattleMode_typestr, global
	.asciz "CMenuBattleMode"
.endobj CMenuBattleMode_typestr


.obj CMenuBattleMode_strpool, global
	.asciz "CMenuBattleMode"
	.asciz "mf71_battle40_mark.brlyt"
	.asciz "mf71_battle40_mark_in.brlan"
	.asciz "mf71_battle40_mark_roop.brlan"
	.balign 4
	.4byte 0
.endobj CMenuBattleMode_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__15CMenuBattleMode, global
	.4byte __RTTI__15CMenuBattleMode
	.4byte 0
	.4byte __dt__15CMenuBattleModeFv
	.4byte Reset__14CChildListNodeFv
	.4byte func_8019FEC4
	.4byte func_8019FFF8
	.4byte func_801A0078
	.4byte "func_80101FB8__14CTTask<5IUICf>Fv"
	.4byte func_80043F20__8CProcessFv
	.4byte __RTTI__15CMenuBattleMode
	.4byte 0xFFFFFFA8
	.4byte func_801A048C
	.4byte WorkEvent1__10IWorkEventFv
	.4byte OnFileEvent__10IWorkEventFv
	.4byte WorkEvent3__10IWorkEventFv
	.4byte WorkEvent4__10IWorkEventFv
	.4byte WorkEvent5__10IWorkEventFv
	.4byte WorkEvent6__10IWorkEventFv
	.4byte WorkEvent7__10IWorkEventFv
	.4byte WorkEvent8__10IWorkEventFv
	.4byte WorkEvent9__10IWorkEventFv
	.4byte WorkEvent10__10IWorkEventFv
	.4byte WorkEvent11__10IWorkEventFv
	.4byte WorkEvent12__10IWorkEventFv
	.4byte WorkEvent13__10IWorkEventFv
	.4byte WorkEvent14__10IWorkEventFv
	.4byte WorkEvent15__10IWorkEventFv
	.4byte WorkEvent16__10IWorkEventFv
	.4byte WorkEvent17__10IWorkEventFv
	.4byte WorkEvent18__10IWorkEventFv
	.4byte WorkEvent19__10IWorkEventFv
	.4byte WorkEvent20__10IWorkEventFv
	.4byte WorkEvent21__10IWorkEventFv
	.4byte WorkEvent22__10IWorkEventFv
	.4byte WorkEvent23__10IWorkEventFv
	.4byte WorkEvent24__10IWorkEventFv
	.4byte WorkEvent25__10IWorkEventFv
	.4byte WorkEvent26__10IWorkEventFv
	.4byte WorkEvent27__10IWorkEventFv
	.4byte WorkEvent28__10IWorkEventFv
	.4byte WorkEvent29__10IWorkEventFv
	.4byte WorkEvent30__10IWorkEventFv
	.4byte WorkEvent31__10IWorkEventFv
	.4byte __RTTI__15CMenuBattleMode
	.4byte 0xFFFFFFA4
	.4byte func_801A049C
	.4byte func_801A0494
	.4byte func_801A02C0
.endobj __vt__15CMenuBattleMode

.obj CMenuBattleMode_hierarchy, global
	.4byte __RTTI__10IScnRender
	.4byte 0x0000005C
	.4byte __RTTI__10IWorkEvent
	.4byte 0x00000058
	.4byte __RTTI__15CDoubleListNode
	.4byte 0
	.4byte __RTTI__14CChildListNode
	.4byte 0
	.4byte __RTTI__8CProcess
	.4byte 0
	.4byte "__RTTI__14CTTask<5IUICf>"
	.4byte 0
	.4byte __RTTI__5IUICf
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CMenuBattleMode_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__15CMenuBattleMode, global
	.4byte CMenuBattleMode_typestr
	.4byte CMenuBattleMode_hierarchy
.endobj __RTTI__15CMenuBattleMode


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8


.obj float_8066A540, global
	.float 0
.endobj float_8066A540


.obj float_8066A544, global
	.float 1.0
.endobj float_8066A544

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80666C08, global
	.skip 0x8
.endobj lbl_80666C08

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000F58C", local
.hidden "@etb_8000F58C"
	.4byte 0x10080000
	.4byte 0x00000048
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x00000060
	.4byte __dt__17UnkClass_8045F564Fv
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte __dt__10IScnRenderFv
	.4byte 0x8680001E
	.4byte 0x00000058
	.4byte __dt__10IWorkEventFv
.endobj "@etb_8000F58C"

.obj "@etb_8000F5C0", local
.hidden "@etb_8000F5C0"
	.4byte 0x100A0000
	.4byte 0x00000048
	.4byte 0x00320010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__14Class_8045F858Fv
.endobj "@etb_8000F5C0"

.obj "@etb_8000F5D8", local
.hidden "@etb_8000F5D8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000F5D8"

.obj "@etb_8000F5E0", local
.hidden "@etb_8000F5E0"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8000F5E0"

.obj "@etb_8000F5E8", local
.hidden "@etb_8000F5E8"
	.4byte 0x08080000
	.4byte 0x00000080
	.4byte 0x00050010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
.endobj "@etb_8000F5E8"

.obj "@etb_8000F600", local
.hidden "@etb_8000F600"
	.4byte 0x20080000
	.4byte 0x000000CC
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte __dt__10IScnRenderFv
	.4byte 0x0680001E
	.4byte 0x00000058
	.4byte __dt__10IWorkEventFv
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__800FED0C
.endobj "@etb_8000F600"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002A470", local
.hidden "@eti_8002A470"
	.4byte __dt__15CMenuBattleModeFv
	.4byte 0x00000074
	.4byte "@etb_8000F58C"
.endobj "@eti_8002A470"

.obj "@eti_8002A47C", local
.hidden "@eti_8002A47C"
	.4byte func_8019FEC4
	.4byte 0x00000134
	.4byte "@etb_8000F5C0"
.endobj "@eti_8002A47C"

.obj "@eti_8002A488", local
.hidden "@eti_8002A488"
	.4byte func_8019FFF8
	.4byte 0x00000080
	.4byte "@etb_8000F5D8"
.endobj "@eti_8002A488"

.obj "@eti_8002A494", local
.hidden "@eti_8002A494"
	.4byte func_801A0078
	.4byte 0x00000248
	.4byte "@etb_8000F5E0"
.endobj "@eti_8002A494"

.obj "@eti_8002A4A0", local
.hidden "@eti_8002A4A0"
	.4byte func_801A02C0
	.4byte 0x000000B4
	.4byte "@etb_8000F5E8"
.endobj "@eti_8002A4A0"


.obj "@eti_8002A4AC", local
.hidden "@eti_8002A4AC"
	.4byte __ct__CMenuBattleMode
	.4byte 0x00000118
	.4byte "@etb_8000F600"
.endobj "@eti_8002A4AC"
