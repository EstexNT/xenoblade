.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.fn __dt__11CSysWinSaveFv, global
/* 80293FB8 0025D578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293FBC 0025D57C  7C 08 02 A6 */	mflr r0
/* 80293FC0 0025D580  2C 03 00 00 */	cmpwi r3, 0
/* 80293FC4 0025D584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293FC8 0025D588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293FCC 0025D58C  7C 9F 23 78 */	mr r31, r4
/* 80293FD0 0025D590  93 C1 00 08 */	stw r30, 8(r1)
/* 80293FD4 0025D594  7C 7E 1B 78 */	mr r30, r3
/* 80293FD8 0025D598  41 82 00 50 */	beq .L_80294028
/* 80293FDC 0025D59C  38 80 FF FF */	li r4, -1
/* 80293FE0 0025D5A0  38 63 00 C4 */	addi r3, r3, 0xc4
/* 80293FE4 0025D5A4  4B F3 EA 55 */	bl __dt__6CCur18Fv
/* 80293FE8 0025D5A8  38 7E 00 88 */	addi r3, r30, 0x88
/* 80293FEC 0025D5AC  38 80 FF FF */	li r4, -1
/* 80293FF0 0025D5B0  4B F9 76 B1 */	bl __dt__7CSysWinFv
/* 80293FF4 0025D5B4  38 7E 00 78 */	addi r3, r30, 0x78
/* 80293FF8 0025D5B8  38 80 FF FF */	li r4, -1
/* 80293FFC 0025D5BC  48 1C B5 85 */	bl __dt__17UnkClass_8045F564Fv
/* 80294000 0025D5C0  2C 1E 00 00 */	cmpwi r30, 0
/* 80294004 0025D5C4  41 82 00 14 */	beq .L_80294018
/* 80294008 0025D5C8  41 82 00 10 */	beq .L_80294018
/* 8029400C 0025D5CC  7F C3 F3 78 */	mr r3, r30
/* 80294010 0025D5D0  38 80 00 00 */	li r4, 0
/* 80294014 0025D5D4  48 1B 0B 25 */	bl __dt__8CProcessFv
.L_80294018:
/* 80294018 0025D5D8  2C 1F 00 00 */	cmpwi r31, 0
/* 8029401C 0025D5DC  40 81 00 0C */	ble .L_80294028
/* 80294020 0025D5E0  7F C3 F3 78 */	mr r3, r30
/* 80294024 0025D5E4  48 1A 0C 09 */	bl __dl__FPv
.L_80294028:
/* 80294028 0025D5E8  7F C3 F3 78 */	mr r3, r30
/* 8029402C 0025D5EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294030 0025D5F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80294034 0025D5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294038 0025D5F8  7C 08 03 A6 */	mtlr r0
/* 8029403C 0025D5FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80294040 0025D600  4E 80 00 20 */	blr 
.endfn __dt__11CSysWinSaveFv

.fn func_80294044, global
/* 80294044 0025D604  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80294048 0025D608  7C 08 02 A6 */	mflr r0
/* 8029404C 0025D60C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80294050 0025D610  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80294054 0025D614  7C 7F 1B 78 */	mr r31, r3
/* 80294058 0025D618  38 60 00 01 */	li r3, 1
/* 8029405C 0025D61C  4B DE E8 F1 */	bl func_8008294C
/* 80294060 0025D620  2C 1F 00 00 */	cmpwi r31, 0
/* 80294064 0025D624  7F E4 FB 78 */	mr r4, r31
/* 80294068 0025D628  41 82 00 08 */	beq .L_80294070
/* 8029406C 0025D62C  38 9F 00 70 */	addi r4, r31, 0x70
.L_80294070:
/* 80294070 0025D630  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80294074 0025D634  38 A0 00 0D */	li r5, 0xd
/* 80294078 0025D638  38 C0 00 00 */	li r6, 0
/* 8029407C 0025D63C  48 20 1E 39 */	bl func_80495EB4
/* 80294080 0025D640  48 1A 03 21 */	bl Heap_getRegionIndex2
/* 80294084 0025D644  3C C0 80 51 */	lis r6, CSysWinSave_strpool@ha
/* 80294088 0025D648  7C 64 1B 78 */	mr r4, r3
/* 8029408C 0025D64C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80294090 0025D650  38 A0 40 00 */	li r5, 0x4000
/* 80294094 0025D654  38 C6 B3 A4 */	addi r6, r6, CSysWinSave_strpool@l
/* 80294098 0025D658  38 E0 00 00 */	li r7, 0
/* 8029409C 0025D65C  48 1C B5 E5 */	bl CLibLayout_addLayoutHeapEntry__FP17UnkClass_8045F564iiPCci
/* 802940A0 0025D660  38 61 00 08 */	addi r3, r1, 8
/* 802940A4 0025D664  38 9F 00 78 */	addi r4, r31, 0x78
/* 802940A8 0025D668  48 1C B7 B1 */	bl __ct__14Class_8045F858FP17UnkClass_8045F564
/* 802940AC 0025D66C  38 61 00 28 */	addi r3, r1, 0x28
/* 802940B0 0025D670  38 80 00 02 */	li r4, 2
/* 802940B4 0025D674  4B F9 75 65 */	bl __ct__CSysWin
/* 802940B8 0025D678  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802940BC 0025D67C  38 61 00 28 */	addi r3, r1, 0x28
/* 802940C0 0025D680  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802940C4 0025D684  38 80 FF FF */	li r4, -1
/* 802940C8 0025D688  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802940CC 0025D68C  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802940D0 0025D690  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802940D4 0025D694  90 1F 00 94 */	stw r0, 0x94(r31)
/* 802940D8 0025D698  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802940DC 0025D69C  90 1F 00 98 */	stw r0, 0x98(r31)
/* 802940E0 0025D6A0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802940E4 0025D6A4  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 802940E8 0025D6A8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 802940EC 0025D6AC  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 802940F0 0025D6B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802940F4 0025D6B4  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 802940F8 0025D6B8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 802940FC 0025D6BC  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 80294100 0025D6C0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80294104 0025D6C4  90 1F 00 AC */	stw r0, 0xac(r31)
/* 80294108 0025D6C8  88 01 00 50 */	lbz r0, 0x50(r1)
/* 8029410C 0025D6CC  98 1F 00 B0 */	stb r0, 0xb0(r31)
/* 80294110 0025D6D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80294114 0025D6D4  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 80294118 0025D6D8  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8029411C 0025D6DC  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 80294120 0025D6E0  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 80294124 0025D6E4  98 1F 00 BC */	stb r0, 0xbc(r31)
/* 80294128 0025D6E8  88 01 00 5D */	lbz r0, 0x5d(r1)
/* 8029412C 0025D6EC  98 1F 00 BD */	stb r0, 0xbd(r31)
/* 80294130 0025D6F0  88 01 00 5E */	lbz r0, 0x5e(r1)
/* 80294134 0025D6F4  98 1F 00 BE */	stb r0, 0xbe(r31)
/* 80294138 0025D6F8  88 01 00 5F */	lbz r0, 0x5f(r1)
/* 8029413C 0025D6FC  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 80294140 0025D700  88 01 00 60 */	lbz r0, 0x60(r1)
/* 80294144 0025D704  98 1F 00 C0 */	stb r0, 0xc0(r31)
/* 80294148 0025D708  88 01 00 61 */	lbz r0, 0x61(r1)
/* 8029414C 0025D70C  98 1F 00 C1 */	stb r0, 0xc1(r31)
/* 80294150 0025D710  4B F9 75 51 */	bl __dt__7CSysWinFv
/* 80294154 0025D714  81 9F 00 88 */	lwz r12, 0x88(r31)
/* 80294158 0025D718  38 7F 00 88 */	addi r3, r31, 0x88
/* 8029415C 0025D71C  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80294160 0025D720  7D 89 03 A6 */	mtctr r12
/* 80294164 0025D724  4E 80 04 21 */	bctrl 
/* 80294168 0025D728  4B EA 14 8D */	bl func_801355F4
/* 8029416C 0025D72C  7C 64 1B 78 */	mr r4, r3
/* 80294170 0025D730  38 61 00 10 */	addi r3, r1, 0x10
/* 80294174 0025D734  4B F3 E8 89 */	bl __ct__CCur18
/* 80294178 0025D738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029417C 0025D73C  38 61 00 10 */	addi r3, r1, 0x10
/* 80294180 0025D740  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80294184 0025D744  38 80 FF FF */	li r4, -1
/* 80294188 0025D748  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8029418C 0025D74C  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80294190 0025D750  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80294194 0025D754  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80294198 0025D758  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8029419C 0025D75C  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 802941A0 0025D760  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802941A4 0025D764  98 1F 00 D8 */	stb r0, 0xd8(r31)
/* 802941A8 0025D768  88 01 00 25 */	lbz r0, 0x25(r1)
/* 802941AC 0025D76C  98 1F 00 D9 */	stb r0, 0xd9(r31)
/* 802941B0 0025D770  4B F3 E8 89 */	bl __dt__6CCur18Fv
/* 802941B4 0025D774  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 802941B8 0025D778  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802941BC 0025D77C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802941C0 0025D780  7D 89 03 A6 */	mtctr r12
/* 802941C4 0025D784  4E 80 04 21 */	bctrl 
/* 802941C8 0025D788  38 7F 00 78 */	addi r3, r31, 0x78
/* 802941CC 0025D78C  48 1C B6 45 */	bl func_8045F810__FP17UnkClass_8045F564
/* 802941D0 0025D790  38 61 00 08 */	addi r3, r1, 8
/* 802941D4 0025D794  38 80 FF FF */	li r4, -1
/* 802941D8 0025D798  48 1C B6 F1 */	bl __dt__14Class_8045F858Fv
/* 802941DC 0025D79C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802941E0 0025D7A0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802941E4 0025D7A4  7C 08 03 A6 */	mtlr r0
/* 802941E8 0025D7A8  38 21 00 70 */	addi r1, r1, 0x70
/* 802941EC 0025D7AC  4E 80 00 20 */	blr 
.endfn func_80294044

.fn func_802941F0, global
/* 802941F0 0025D7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802941F4 0025D7B4  7C 08 02 A6 */	mflr r0
/* 802941F8 0025D7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802941FC 0025D7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294200 0025D7C0  7C 7F 1B 78 */	mr r31, r3
/* 80294204 0025D7C4  48 1B 48 41 */	bl func_80448A44__Fv
/* 80294208 0025D7C8  38 7F 00 88 */	addi r3, r31, 0x88
/* 8029420C 0025D7CC  4B F9 75 E9 */	bl func_8022B7F4
/* 80294210 0025D7D0  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 80294214 0025D7D4  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 80294218 0025D7D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8029421C 0025D7DC  7D 89 03 A6 */	mtctr r12
/* 80294220 0025D7E0  4E 80 04 21 */	bctrl 
/* 80294224 0025D7E4  38 7F 00 78 */	addi r3, r31, 0x78
/* 80294228 0025D7E8  48 1C B5 51 */	bl func_8045F778__FP17UnkClass_8045F564
/* 8029422C 0025D7EC  2C 1F 00 00 */	cmpwi r31, 0
/* 80294230 0025D7F0  38 00 00 00 */	li r0, 0
/* 80294234 0025D7F4  90 0D B1 78 */	stw r0, lbl_806672F8@sda21(r13)
/* 80294238 0025D7F8  7F E4 FB 78 */	mr r4, r31
/* 8029423C 0025D7FC  41 82 00 08 */	beq .L_80294244
/* 80294240 0025D800  38 9F 00 70 */	addi r4, r31, 0x70
.L_80294244:
/* 80294244 0025D804  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80294248 0025D808  48 20 1D 09 */	bl func_80495F50
/* 8029424C 0025D80C  88 1F 00 DD */	lbz r0, 0xdd(r31)
/* 80294250 0025D810  7C 00 07 75 */	extsb. r0, r0
/* 80294254 0025D814  41 82 00 0C */	beq .L_80294260
/* 80294258 0025D818  38 60 00 00 */	li r3, 0
/* 8029425C 0025D81C  4B DE E6 F1 */	bl func_8008294C
.L_80294260:
/* 80294260 0025D820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294264 0025D824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294268 0025D828  7C 08 03 A6 */	mtlr r0
/* 8029426C 0025D82C  38 21 00 10 */	addi r1, r1, 0x10
/* 80294270 0025D830  4E 80 00 20 */	blr 
.endfn func_802941F0

.fn func_80294274, global
/* 80294274 0025D834  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80294278 0025D838  7C 08 02 A6 */	mflr r0
/* 8029427C 0025D83C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80294280 0025D840  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80294284 0025D844  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80294288 0025D848  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8029428C 0025D84C  93 81 00 20 */	stw r28, 0x20(r1)
/* 80294290 0025D850  7C 7C 1B 78 */	mr r28, r3
/* 80294294 0025D854  4B DA C2 55 */	bl func_800404E8
/* 80294298 0025D858  4B DA E4 59 */	bl func_800426F0
/* 8029429C 0025D85C  2C 03 00 00 */	cmpwi r3, 0
/* 802942A0 0025D860  40 82 01 80 */	bne .L_80294420
/* 802942A4 0025D864  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 802942A8 0025D868  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 802942AC 0025D86C  41 82 00 08 */	beq .L_802942B4
/* 802942B0 0025D870  48 00 01 70 */	b .L_80294420
.L_802942B4:
/* 802942B4 0025D874  4B EA 7B 9D */	bl func_8013BE50
/* 802942B8 0025D878  2C 03 00 00 */	cmpwi r3, 0
/* 802942BC 0025D87C  41 82 01 64 */	beq .L_80294420
/* 802942C0 0025D880  88 1C 00 DC */	lbz r0, 0xdc(r28)
/* 802942C4 0025D884  2C 00 00 00 */	cmpwi r0, 0
/* 802942C8 0025D888  41 82 00 20 */	beq .L_802942E8
/* 802942CC 0025D88C  2C 00 00 01 */	cmpwi r0, 1
/* 802942D0 0025D890  41 82 00 AC */	beq .L_8029437C
/* 802942D4 0025D894  2C 00 00 02 */	cmpwi r0, 2
/* 802942D8 0025D898  41 82 00 F4 */	beq .L_802943CC
/* 802942DC 0025D89C  2C 00 00 03 */	cmpwi r0, 3
/* 802942E0 0025D8A0  41 82 00 F8 */	beq .L_802943D8
/* 802942E4 0025D8A4  48 00 01 2C */	b .L_80294410
.L_802942E8:
/* 802942E8 0025D8A8  38 7C 00 88 */	addi r3, r28, 0x88
/* 802942EC 0025D8AC  4B F9 75 B5 */	bl func_8022B8A0
/* 802942F0 0025D8B0  2C 03 00 00 */	cmpwi r3, 0
/* 802942F4 0025D8B4  41 82 01 1C */	beq .L_80294410
/* 802942F8 0025D8B8  3F E0 80 51 */	lis r31, CSysWinSave_strpool@ha
/* 802942FC 0025D8BC  38 00 00 01 */	li r0, 1
/* 80294300 0025D8C0  3B FF B3 A4 */	addi r31, r31, CSysWinSave_strpool@l
/* 80294304 0025D8C4  98 1C 00 DC */	stb r0, 0xdc(r28)
/* 80294308 0025D8C8  38 7F 00 0C */	addi r3, r31, 0xc
/* 8029430C 0025D8CC  38 A0 00 4E */	li r5, 0x4e
/* 80294310 0025D8D0  38 9F 00 17 */	addi r4, r31, 0x17
/* 80294314 0025D8D4  4B EA 1E 7D */	bl func_80136190
/* 80294318 0025D8D8  7C 7D 1B 78 */	mr r29, r3
/* 8029431C 0025D8DC  38 7F 00 0C */	addi r3, r31, 0xc
/* 80294320 0025D8E0  38 9F 00 17 */	addi r4, r31, 0x17
/* 80294324 0025D8E4  38 A0 00 4F */	li r5, 0x4f
/* 80294328 0025D8E8  4B EA 1E 69 */	bl func_80136190
/* 8029432C 0025D8EC  7C 7E 1B 78 */	mr r30, r3
/* 80294330 0025D8F0  38 7F 00 0C */	addi r3, r31, 0xc
/* 80294334 0025D8F4  38 9F 00 17 */	addi r4, r31, 0x17
/* 80294338 0025D8F8  38 A0 00 50 */	li r5, 0x50
/* 8029433C 0025D8FC  4B EA 1E 55 */	bl func_80136190
/* 80294340 0025D900  7C 7F 1B 78 */	mr r31, r3
/* 80294344 0025D904  7F A4 EB 78 */	mr r4, r29
/* 80294348 0025D908  38 7C 00 88 */	addi r3, r28, 0x88
/* 8029434C 0025D90C  38 A0 00 00 */	li r5, 0
/* 80294350 0025D910  4B F9 76 65 */	bl func_8022B9B4
/* 80294354 0025D914  7F C4 F3 78 */	mr r4, r30
/* 80294358 0025D918  7F E5 FB 78 */	mr r5, r31
/* 8029435C 0025D91C  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294360 0025D920  4B F9 7C 0D */	bl func_8022BF6C
/* 80294364 0025D924  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294368 0025D928  38 80 00 00 */	li r4, 0
/* 8029436C 0025D92C  4B F9 7C 5D */	bl func_8022BFC8
/* 80294370 0025D930  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294374 0025D934  4B F9 75 45 */	bl func_8022B8B8
/* 80294378 0025D938  48 00 00 98 */	b .L_80294410
.L_8029437C:
/* 8029437C 0025D93C  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294380 0025D940  4B F9 75 31 */	bl func_8022B8B0
/* 80294384 0025D944  2C 03 00 00 */	cmpwi r3, 0
/* 80294388 0025D948  41 82 00 88 */	beq .L_80294410
/* 8029438C 0025D94C  38 00 00 02 */	li r0, 2
/* 80294390 0025D950  98 1C 00 DC */	stb r0, 0xdc(r28)
/* 80294394 0025D954  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 80294398 0025D958  38 80 00 01 */	li r4, 1
/* 8029439C 0025D95C  4B F3 DD D1 */	bl func_801D216C
/* 802943A0 0025D960  88 BC 00 DD */	lbz r5, 0xdd(r28)
/* 802943A4 0025D964  38 61 00 08 */	addi r3, r1, 8
/* 802943A8 0025D968  38 9C 00 88 */	addi r4, r28, 0x88
/* 802943AC 0025D96C  4B F9 7E 09 */	bl func_8022C1B4
/* 802943B0 0025D970  81 9C 00 C4 */	lwz r12, 0xc4(r28)
/* 802943B4 0025D974  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 802943B8 0025D978  38 81 00 08 */	addi r4, r1, 8
/* 802943BC 0025D97C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802943C0 0025D980  7D 89 03 A6 */	mtctr r12
/* 802943C4 0025D984  4E 80 04 21 */	bctrl 
/* 802943C8 0025D988  48 00 00 48 */	b .L_80294410
.L_802943CC:
/* 802943CC 0025D98C  7F 83 E3 78 */	mr r3, r28
/* 802943D0 0025D990  48 00 02 69 */	bl func_80294638
/* 802943D4 0025D994  48 00 00 3C */	b .L_80294410
.L_802943D8:
/* 802943D8 0025D998  38 7C 00 88 */	addi r3, r28, 0x88
/* 802943DC 0025D99C  4B F9 74 D5 */	bl func_8022B8B0
/* 802943E0 0025D9A0  2C 03 00 00 */	cmpwi r3, 0
/* 802943E4 0025D9A4  41 82 00 2C */	beq .L_80294410
/* 802943E8 0025D9A8  88 1C 00 DD */	lbz r0, 0xdd(r28)
/* 802943EC 0025D9AC  7C 00 07 75 */	extsb. r0, r0
/* 802943F0 0025D9B0  40 82 00 10 */	bne .L_80294400
/* 802943F4 0025D9B4  38 60 00 01 */	li r3, 1
/* 802943F8 0025D9B8  38 80 00 01 */	li r4, 1
/* 802943FC 0025D9BC  4B EA 07 55 */	bl func_80134B50
.L_80294400:
/* 80294400 0025D9C0  38 60 00 00 */	li r3, 0
/* 80294404 0025D9C4  38 00 00 01 */	li r0, 1
/* 80294408 0025D9C8  98 7C 00 67 */	stb r3, 0x67(r28)
/* 8029440C 0025D9CC  98 1C 00 64 */	stb r0, 0x64(r28)
.L_80294410:
/* 80294410 0025D9D0  38 7C 00 88 */	addi r3, r28, 0x88
/* 80294414 0025D9D4  4B F9 73 35 */	bl func_8022B748
/* 80294418 0025D9D8  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 8029441C 0025D9DC  4B F3 DC 11 */	bl func_801D202C
.L_80294420:
/* 80294420 0025D9E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80294424 0025D9E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80294428 0025D9E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8029442C 0025D9EC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80294430 0025D9F0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80294434 0025D9F4  7C 08 03 A6 */	mtlr r0
/* 80294438 0025D9F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8029443C 0025D9FC  4E 80 00 20 */	blr
.endfn func_80294274

.fn func_80294440, global
/* 80294440 0025DA00  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80294444 0025DA04  7C 08 02 A6 */	mflr r0
/* 80294448 0025DA08  90 01 00 74 */	stw r0, 0x74(r1)
/* 8029444C 0025DA0C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80294450 0025DA10  7C 7F 1B 78 */	mr r31, r3
/* 80294454 0025DA14  4B DA C0 95 */	bl func_800404E8
/* 80294458 0025DA18  4B DA E2 99 */	bl func_800426F0
/* 8029445C 0025DA1C  2C 03 00 00 */	cmpwi r3, 0
/* 80294460 0025DA20  40 82 00 64 */	bne .L_802944C4
/* 80294464 0025DA24  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80294468 0025DA28  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8029446C 0025DA2C  41 82 00 08 */	beq .L_80294474
/* 80294470 0025DA30  48 00 00 54 */	b .L_802944C4
.L_80294474:
/* 80294474 0025DA34  4B EA 79 DD */	bl func_8013BE50
/* 80294478 0025DA38  2C 03 00 00 */	cmpwi r3, 0
/* 8029447C 0025DA3C  41 82 00 48 */	beq .L_802944C4
/* 80294480 0025DA40  38 60 00 00 */	li r3, 0
/* 80294484 0025DA44  38 80 00 00 */	li r4, 0
/* 80294488 0025DA48  38 A0 00 00 */	li r5, 0
/* 8029448C 0025DA4C  48 08 9D B5 */	bl GXSetZMode
/* 80294490 0025DA50  38 61 00 08 */	addi r3, r1, 8
/* 80294494 0025DA54  48 17 41 D5 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 80294498 0025DA58  38 61 00 08 */	addi r3, r1, 8
/* 8029449C 0025DA5C  4B EA 2D B5 */	bl func_80137250
/* 802944A0 0025DA60  38 7F 00 88 */	addi r3, r31, 0x88
/* 802944A4 0025DA64  38 81 00 08 */	addi r4, r1, 8
/* 802944A8 0025DA68  4B F9 73 21 */	bl func_8022B7C8
/* 802944AC 0025DA6C  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802944B0 0025DA70  38 81 00 08 */	addi r4, r1, 8
/* 802944B4 0025DA74  4B F3 DB FD */	bl func_801D20B0
/* 802944B8 0025DA78  38 61 00 08 */	addi r3, r1, 8
/* 802944BC 0025DA7C  38 80 FF FF */	li r4, -1
/* 802944C0 0025DA80  48 17 42 1D */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_802944C4:
/* 802944C4 0025DA84  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802944C8 0025DA88  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802944CC 0025DA8C  7C 08 03 A6 */	mtlr r0
/* 802944D0 0025DA90  38 21 00 70 */	addi r1, r1, 0x70
/* 802944D4 0025DA94  4E 80 00 20 */	blr 
.endfn func_80294440


.fn __ct__802944D8, global
/* 802944D8 0025DA98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802944DC 0025DA9C  7C 08 02 A6 */	mflr r0
/* 802944E0 0025DAA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802944E4 0025DAA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802944E8 0025DAA8  7C 9F 23 78 */	mr r31, r4
/* 802944EC 0025DAAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802944F0 0025DAB0  7C 7E 1B 78 */	mr r30, r3
/* 802944F4 0025DAB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802944F8 0025DAB8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802944FC 0025DABC  80 0D B1 78 */	lwz r0, lbl_806672F8@sda21(r13)
/* 80294500 0025DAC0  2C 00 00 00 */	cmpwi r0, 0
/* 80294504 0025DAC4  41 82 00 0C */	beq .L_80294510
/* 80294508 0025DAC8  38 60 00 00 */	li r3, 0
/* 8029450C 0025DACC  48 00 00 F8 */	b .L_80294604
.L_80294510:
/* 80294510 0025DAD0  48 1A 30 A5 */	bl getHeapIndex__Fv
/* 80294514 0025DAD4  7C 64 1B 78 */	mr r4, r3
/* 80294518 0025DAD8  38 60 00 E0 */	li r3, 0xe0
/* 8029451C 0025DADC  48 1A 05 41 */	bl heap_malloc
/* 80294520 0025DAE0  2C 03 00 00 */	cmpwi r3, 0
/* 80294524 0025DAE4  7C 7C 1B 78 */	mr r28, r3
/* 80294528 0025DAE8  41 82 00 C4 */	beq .L_802945EC
/* 8029452C 0025DAEC  48 1B 04 ED */	bl __ct__8CProcessFv
/* 80294530 0025DAF0  3C 60 80 53 */	lis r3, "__vt__18CTTask<9IUIWindow>"@ha
/* 80294534 0025DAF4  3D 40 80 51 */	lis r10, __ptmf_null@ha
/* 80294538 0025DAF8  38 63 0A 08 */	addi r3, r3, "__vt__18CTTask<9IUIWindow>"@l
/* 8029453C 0025DAFC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80294540 0025DB00  39 4A CE 10 */	addi r10, r10, __ptmf_null@l
/* 80294544 0025DB04  3C A0 80 54 */	lis r5, __vt__11CSysWinSave@ha
/* 80294548 0025DB08  80 0A 00 04 */	lwz r0, 4(r10)
/* 8029454C 0025DB0C  38 A5 C1 58 */	addi r5, r5, __vt__11CSysWinSave@l
/* 80294550 0025DB10  80 6A 00 00 */	lwz r3, 0(r10)
/* 80294554 0025DB14  3B A0 00 00 */	li r29, 0
/* 80294558 0025DB18  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8029455C 0025DB1C  38 E0 FF FF */	li r7, -1
/* 80294560 0025DB20  38 C0 00 01 */	li r6, 1
/* 80294564 0025DB24  38 85 00 24 */	addi r4, r5, 0x24
/* 80294568 0025DB28  90 1C 00 40 */	stw r0, 0x40(r28)
/* 8029456C 0025DB2C  38 05 00 AC */	addi r0, r5, 0xac
/* 80294570 0025DB30  38 7C 00 78 */	addi r3, r28, 0x78
/* 80294574 0025DB34  81 0A 00 08 */	lwz r8, 8(r10)
/* 80294578 0025DB38  91 1C 00 44 */	stw r8, 0x44(r28)
/* 8029457C 0025DB3C  81 0A 00 04 */	lwz r8, 4(r10)
/* 80294580 0025DB40  81 2A 00 00 */	lwz r9, 0(r10)
/* 80294584 0025DB44  91 3C 00 48 */	stw r9, 0x48(r28)
/* 80294588 0025DB48  91 1C 00 4C */	stw r8, 0x4c(r28)
/* 8029458C 0025DB4C  81 0A 00 08 */	lwz r8, 8(r10)
/* 80294590 0025DB50  91 1C 00 50 */	stw r8, 0x50(r28)
/* 80294594 0025DB54  93 BC 00 54 */	stw r29, 0x54(r28)
/* 80294598 0025DB58  93 BC 00 58 */	stw r29, 0x58(r28)
/* 8029459C 0025DB5C  93 BC 00 5C */	stw r29, 0x5c(r28)
/* 802945A0 0025DB60  90 FC 00 60 */	stw r7, 0x60(r28)
/* 802945A4 0025DB64  9B BC 00 64 */	stb r29, 0x64(r28)
/* 802945A8 0025DB68  9B BC 00 65 */	stb r29, 0x65(r28)
/* 802945AC 0025DB6C  9B BC 00 66 */	stb r29, 0x66(r28)
/* 802945B0 0025DB70  98 DC 00 67 */	stb r6, 0x67(r28)
/* 802945B4 0025DB74  93 BC 00 68 */	stw r29, 0x68(r28)
/* 802945B8 0025DB78  90 BC 00 10 */	stw r5, 0x10(r28)
/* 802945BC 0025DB7C  90 9C 00 6C */	stw r4, 0x6c(r28)
/* 802945C0 0025DB80  90 1C 00 70 */	stw r0, 0x70(r28)
/* 802945C4 0025DB84  93 FC 00 74 */	stw r31, 0x74(r28)
/* 802945C8 0025DB88  48 1C AF 9D */	bl __ct__17UnkClass_8045F564Fv
/* 802945CC 0025DB8C  38 7C 00 88 */	addi r3, r28, 0x88
/* 802945D0 0025DB90  38 80 00 00 */	li r4, 0
/* 802945D4 0025DB94  4B F9 70 45 */	bl __ct__CSysWin
/* 802945D8 0025DB98  38 7C 00 C4 */	addi r3, r28, 0xc4
/* 802945DC 0025DB9C  38 80 00 00 */	li r4, 0
/* 802945E0 0025DBA0  4B F3 E4 1D */	bl __ct__CCur18
/* 802945E4 0025DBA4  9B BC 00 DC */	stb r29, 0xdc(r28)
/* 802945E8 0025DBA8  9B BC 00 DD */	stb r29, 0xdd(r28)
.L_802945EC:
/* 802945EC 0025DBAC  93 8D B1 78 */	stw r28, lbl_806672F8@sda21(r13)
/* 802945F0 0025DBB0  7F 83 E3 78 */	mr r3, r28
/* 802945F4 0025DBB4  7F C4 F3 78 */	mr r4, r30
/* 802945F8 0025DBB8  38 A0 00 00 */	li r5, 0
/* 802945FC 0025DBBC  48 1B 06 79 */	bl func_80444C74
/* 80294600 0025DBC0  80 6D B1 78 */	lwz r3, lbl_806672F8@sda21(r13)
.L_80294604:
/* 80294604 0025DBC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80294608 0025DBC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029460C 0025DBCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80294610 0025DBD0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80294614 0025DBD4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80294618 0025DBD8  7C 08 03 A6 */	mtlr r0
/* 8029461C 0025DBDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80294620 0025DBE0  4E 80 00 20 */	blr 
.endfn __ct__802944D8

.fn func_80294624, global
/* 80294624 0025DBE4  80 6D B1 78 */	lwz r3, lbl_806672F8@sda21(r13)
/* 80294628 0025DBE8  7C 03 00 D0 */	neg r0, r3
/* 8029462C 0025DBEC  7C 00 1B 78 */	or r0, r0, r3
/* 80294630 0025DBF0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80294634 0025DBF4  4E 80 00 20 */	blr 
.endfn func_80294624

.fn func_80294638, global
/* 80294638 0025DBF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029463C 0025DBFC  7C 08 02 A6 */	mflr r0
/* 80294640 0025DC00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80294644 0025DC04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80294648 0025DC08  7C 7F 1B 78 */	mr r31, r3
/* 8029464C 0025DC0C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80294650 0025DC10  4B DF 2B E9 */	bl func_80087238
/* 80294654 0025DC14  7C 7E 1B 78 */	mr r30, r3
/* 80294658 0025DC18  38 60 FF FF */	li r3, -1
/* 8029465C 0025DC1C  4B DF 29 41 */	bl func_80086F9C
/* 80294660 0025DC20  2C 03 00 00 */	cmpwi r3, 0
/* 80294664 0025DC24  41 82 00 3C */	beq .L_802946A0
/* 80294668 0025DC28  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 8029466C 0025DC2C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80294670 0025DC30  70 05 80 04 */	andi. r5, r0, 0x8004
/* 80294674 0025DC34  54 03 03 DE */	rlwinm r3, r0, 0, 0xf, 0xf
/* 80294678 0025DC38  50 03 07 38 */	rlwimi r3, r0, 0, 0x1c, 0x1c
/* 8029467C 0025DC3C  54 86 5F FE */	rlwinm r6, r4, 0xb, 0x1f, 0x1f
/* 80294680 0025DC40  7C 03 00 D0 */	neg r0, r3
/* 80294684 0025DC44  54 87 57 FE */	rlwinm r7, r4, 0xa, 0x1f, 0x1f
/* 80294688 0025DC48  7C 85 00 D0 */	neg r4, r5
/* 8029468C 0025DC4C  7C 00 1B 78 */	or r0, r0, r3
/* 80294690 0025DC50  7C 84 2B 78 */	or r4, r4, r5
/* 80294694 0025DC54  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80294698 0025DC58  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8029469C 0025DC5C  48 00 00 38 */	b .L_802946D4
.L_802946A0:
/* 802946A0 0025DC60  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 802946A4 0025DC64  80 9E 00 04 */	lwz r4, 4(r30)
/* 802946A8 0025DC68  70 05 80 04 */	andi. r5, r0, 0x8004
/* 802946AC 0025DC6C  54 03 03 DE */	rlwinm r3, r0, 0, 0xf, 0xf
/* 802946B0 0025DC70  50 03 07 38 */	rlwimi r3, r0, 0, 0x1c, 0x1c
/* 802946B4 0025DC74  54 86 E7 FE */	rlwinm r6, r4, 0x1c, 0x1f, 0x1f
/* 802946B8 0025DC78  7C 03 00 D0 */	neg r0, r3
/* 802946BC 0025DC7C  54 87 DF FE */	rlwinm r7, r4, 0x1b, 0x1f, 0x1f
/* 802946C0 0025DC80  7C 85 00 D0 */	neg r4, r5
/* 802946C4 0025DC84  7C 00 1B 78 */	or r0, r0, r3
/* 802946C8 0025DC88  7C 84 2B 78 */	or r4, r4, r5
/* 802946CC 0025DC8C  54 83 0F FE */	srwi r3, r4, 0x1f
/* 802946D0 0025DC90  54 00 0F FE */	srwi r0, r0, 0x1f
.L_802946D4:
/* 802946D4 0025DC94  2C 06 00 00 */	cmpwi r6, 0
/* 802946D8 0025DC98  41 82 00 2C */	beq .L_80294704
/* 802946DC 0025DC9C  38 00 00 03 */	li r0, 3
/* 802946E0 0025DCA0  98 1F 00 DC */	stb r0, 0xdc(r31)
/* 802946E4 0025DCA4  38 7F 00 88 */	addi r3, r31, 0x88
/* 802946E8 0025DCA8  4B F9 71 FD */	bl func_8022B8E4
/* 802946EC 0025DCAC  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802946F0 0025DCB0  38 80 00 00 */	li r4, 0
/* 802946F4 0025DCB4  4B F3 DA 79 */	bl func_801D216C
/* 802946F8 0025DCB8  38 60 00 03 */	li r3, 3
/* 802946FC 0025DCBC  4B EA 39 7D */	bl func_80138078
/* 80294700 0025DCC0  48 00 00 F4 */	b .L_802947F4
.L_80294704:
/* 80294704 0025DCC4  2C 07 00 00 */	cmpwi r7, 0
/* 80294708 0025DCC8  41 82 00 34 */	beq .L_8029473C
/* 8029470C 0025DCCC  38 00 00 03 */	li r0, 3
/* 80294710 0025DCD0  98 1F 00 DC */	stb r0, 0xdc(r31)
/* 80294714 0025DCD4  38 7F 00 88 */	addi r3, r31, 0x88
/* 80294718 0025DCD8  4B F9 71 CD */	bl func_8022B8E4
/* 8029471C 0025DCDC  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 80294720 0025DCE0  38 80 00 00 */	li r4, 0
/* 80294724 0025DCE4  4B F3 DA 49 */	bl func_801D216C
/* 80294728 0025DCE8  38 00 00 01 */	li r0, 1
/* 8029472C 0025DCEC  98 1F 00 DD */	stb r0, 0xdd(r31)
/* 80294730 0025DCF0  38 60 00 06 */	li r3, 6
/* 80294734 0025DCF4  4B EA 39 45 */	bl func_80138078
/* 80294738 0025DCF8  48 00 00 BC */	b .L_802947F4
.L_8029473C:
/* 8029473C 0025DCFC  2C 03 00 00 */	cmpwi r3, 0
/* 80294740 0025DD00  41 82 00 58 */	beq .L_80294798
/* 80294744 0025DD04  88 7F 00 DD */	lbz r3, 0xdd(r31)
/* 80294748 0025DD08  38 03 FF FF */	addi r0, r3, -1
/* 8029474C 0025DD0C  98 1F 00 DD */	stb r0, 0xdd(r31)
/* 80294750 0025DD10  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80294754 0025DD14  7C 00 07 75 */	extsb. r0, r0
/* 80294758 0025DD18  40 80 00 0C */	bge .L_80294764
/* 8029475C 0025DD1C  38 00 00 01 */	li r0, 1
/* 80294760 0025DD20  98 1F 00 DD */	stb r0, 0xdd(r31)
.L_80294764:
/* 80294764 0025DD24  88 BF 00 DD */	lbz r5, 0xdd(r31)
/* 80294768 0025DD28  38 61 00 14 */	addi r3, r1, 0x14
/* 8029476C 0025DD2C  38 9F 00 88 */	addi r4, r31, 0x88
/* 80294770 0025DD30  4B F9 7A 45 */	bl func_8022C1B4
/* 80294774 0025DD34  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 80294778 0025DD38  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8029477C 0025DD3C  38 81 00 14 */	addi r4, r1, 0x14
/* 80294780 0025DD40  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80294784 0025DD44  7D 89 03 A6 */	mtctr r12
/* 80294788 0025DD48  4E 80 04 21 */	bctrl 
/* 8029478C 0025DD4C  38 60 00 01 */	li r3, 1
/* 80294790 0025DD50  4B EA 38 E9 */	bl func_80138078
/* 80294794 0025DD54  48 00 00 60 */	b .L_802947F4
.L_80294798:
/* 80294798 0025DD58  2C 00 00 00 */	cmpwi r0, 0
/* 8029479C 0025DD5C  41 82 00 58 */	beq .L_802947F4
/* 802947A0 0025DD60  88 7F 00 DD */	lbz r3, 0xdd(r31)
/* 802947A4 0025DD64  38 03 00 01 */	addi r0, r3, 1
/* 802947A8 0025DD68  98 1F 00 DD */	stb r0, 0xdd(r31)
/* 802947AC 0025DD6C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802947B0 0025DD70  7C 00 07 74 */	extsb r0, r0
/* 802947B4 0025DD74  2C 00 00 01 */	cmpwi r0, 1
/* 802947B8 0025DD78  40 81 00 0C */	ble .L_802947C4
/* 802947BC 0025DD7C  38 00 00 00 */	li r0, 0
/* 802947C0 0025DD80  98 1F 00 DD */	stb r0, 0xdd(r31)
.L_802947C4:
/* 802947C4 0025DD84  88 BF 00 DD */	lbz r5, 0xdd(r31)
/* 802947C8 0025DD88  38 61 00 08 */	addi r3, r1, 8
/* 802947CC 0025DD8C  38 9F 00 88 */	addi r4, r31, 0x88
/* 802947D0 0025DD90  4B F9 79 E5 */	bl func_8022C1B4
/* 802947D4 0025DD94  81 9F 00 C4 */	lwz r12, 0xc4(r31)
/* 802947D8 0025DD98  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802947DC 0025DD9C  38 81 00 08 */	addi r4, r1, 8
/* 802947E0 0025DDA0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802947E4 0025DDA4  7D 89 03 A6 */	mtctr r12
/* 802947E8 0025DDA8  4E 80 04 21 */	bctrl 
/* 802947EC 0025DDAC  38 60 00 01 */	li r3, 1
/* 802947F0 0025DDB0  4B EA 38 89 */	bl func_80138078
.L_802947F4:
/* 802947F4 0025DDB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802947F8 0025DDB8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802947FC 0025DDBC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80294800 0025DDC0  7C 08 03 A6 */	mtlr r0
/* 80294804 0025DDC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80294808 0025DDC8  4E 80 00 20 */	blr 
.endfn func_80294638

.fn func_8029480C, global
/* 8029480C 0025DDCC  38 63 FF 94 */	addi r3, r3, -108
/* 80294810 0025DDD0  4B FF F7 A8 */	b __dt__11CSysWinSaveFv
.endfn func_8029480C

.fn func_80294814, global
/* 80294814 0025DDD4  38 63 FF 90 */	addi r3, r3, -112
/* 80294818 0025DDD8  4B FF FC 28 */	b func_80294440
.endfn func_80294814

.fn func_8029481C, global
/* 8029481C 0025DDDC  38 63 FF 90 */	addi r3, r3, -112
/* 80294820 0025DDE0  4B FF F7 98 */	b __dt__11CSysWinSaveFv
.endfn func_8029481C

.fn func_80294824__FPv, global
/* 80294824 0025DDE4  C0 02 B0 C8 */	lfs f0, float_8066B448@sda21(r2)
/* 80294828 0025DDE8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8029482C 0025DDEC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80294830 0025DDF0  4E 80 00 20 */	blr 
.endfn func_80294824__FPv

.fn func_80294834__FPv, global
/* 80294834 0025DDF4  C0 02 B0 C8 */	lfs f0, float_8066B448@sda21(r2)
/* 80294838 0025DDF8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8029483C 0025DDFC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80294840 0025DE00  4E 80 00 20 */	blr 
.endfn func_80294834__FPv

.fn func_80294844, global
/* 80294844 0025DE04  C0 42 B0 CC */	lfs f2, float_8066B44C@sda21(r2)
/* 80294848 0025DE08  C0 02 B0 C8 */	lfs f0, float_8066B448@sda21(r2)
/* 8029484C 0025DE0C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80294850 0025DE10  D0 03 00 00 */	stfs f0, 0(r3)
/* 80294854 0025DE14  D0 03 00 04 */	stfs f0, 4(r3)
/* 80294858 0025DE18  4C 80 00 20 */	bgelr 
/* 8029485C 0025DE1C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80294860 0025DE20  C0 02 B0 D0 */	lfs f0, float_8066B450@sda21(r2)
/* 80294864 0025DE24  EC 00 10 78 */	fmsubs f0, f0, f1, f2
/* 80294868 0025DE28  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029486C 0025DE2C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80294870 0025DE30  4E 80 00 20 */	blr 
.endfn func_80294844

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CSysWinSave_typestr, global
	.asciz "CSysWinSave"
.endobj CSysWinSave_typestr


.obj CSysWinSave_strpool, global
	.asciz "CSysWinSave"
	.asciz "MNU_sysmes"
	.asciz "name"
.endobj CSysWinSave_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__11CSysWinSave, global
	.4byte __RTTI__11CSysWinSave
	.4byte 0
	.4byte __dt__11CSysWinSaveFv
	.4byte Reset__14CChildListNodeFv
	.4byte func_80294044
	.4byte func_802941F0
	.4byte func_80294274
	.4byte "func_80124584__18CTTask<9IUIWindow>Fv"
	.4byte func_80043F20__8CProcessFv
	.4byte __RTTI__11CSysWinSave
	.4byte 0xFFFFFF94
	.4byte func_8029480C
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
	.4byte __RTTI__11CSysWinSave
	.4byte 0xFFFFFF90
	.4byte func_8029481C
	.4byte func_80294814
	.4byte func_80294440
.endobj __vt__11CSysWinSave

.obj CSysWinSave_hierarchy, global
	.4byte __RTTI__10IScnRender
	.4byte 0x00000070
	.4byte __RTTI__10IWorkEvent
	.4byte 0x0000006C
	.4byte __RTTI__15CDoubleListNode
	.4byte 0
	.4byte __RTTI__14CChildListNode
	.4byte 0
	.4byte __RTTI__8CProcess
	.4byte 0
	.4byte "__RTTI__18CTTask<9IUIWindow>"
	.4byte 0
	.4byte __RTTI__9IUIWindow
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CSysWinSave_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__11CSysWinSave, global
	.4byte CSysWinSave_typestr
	.4byte CSysWinSave_hierarchy
.endobj __RTTI__11CSysWinSave


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066B448, global
	.float 0
.endobj float_8066B448


.obj float_8066B44C, global
	.float 1.0
.endobj float_8066B44C


.obj float_8066B450, global
	.float 2
	.4byte 0
.endobj float_8066B450

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_806672F8, global
	.skip 0x8
.endobj lbl_806672F8

#global variable
.obj lbl_80667300, global
	.skip 0x8
.endobj lbl_80667300

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4


.obj "@etb_80019950", local
.hidden "@etb_80019950"
	.4byte 0x10080000
	.4byte 0x0000003C
	.4byte 0x00000020
	.4byte 0x00000048
	.4byte 0x0000002C
	.4byte 0x00000060
	.4byte 0x00000044
	.4byte 0x00000000
	.4byte 0x8780001E
	.4byte 0x000000C4
	.4byte __dt__6CCur18Fv
	.4byte 0x0780001E
	.4byte 0x000000C4
	.4byte __dt__6CCur18Fv
	.4byte 0x8780001E
	.4byte 0x00000088
	.4byte __dt__7CSysWinFv
	.4byte 0x0780001E
	.4byte 0x000000C4
	.4byte __dt__6CCur18Fv
	.4byte 0x0780001E
	.4byte 0x00000088
	.4byte __dt__7CSysWinFv
	.4byte 0x0780001E
	.4byte 0x00000078
	.4byte __dt__17UnkClass_8045F564Fv
	.4byte 0x0680001E
	.4byte 0x00000070
	.4byte __dt__10IScnRenderFv
	.4byte 0x8680001E
	.4byte 0x0000006C
	.4byte __dt__10IWorkEventFv
.endobj "@etb_80019950"

.obj "@etb_800199D0", local
.hidden "@etb_800199D0"
	.4byte 0x08080000
	.4byte 0x00000074
	.4byte 0x00460010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__14Class_8045F858Fv
.endobj "@etb_800199D0"

.obj "@etb_800199E8", local
.hidden "@etb_800199E8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800199E8"

.obj "@etb_800199F0", local
.hidden "@etb_800199F0"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_800199F0"

.obj "@etb_800199F8", local
.hidden "@etb_800199F8"
	.4byte 0x08080000
	.4byte 0x00000060
	.4byte 0x00060010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
.endobj "@etb_800199F8"

.obj "@etb_80019A10", local
.hidden "@etb_80019A10"
	.4byte 0x20080000
	.4byte 0x000000F4
	.4byte 0x00000038
	.4byte 0x00000100
	.4byte 0x0000002C
	.4byte 0x0000010C
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0780001C
	.4byte 0x00000088
	.4byte __dt__7CSysWinFv
	.4byte 0x0780001C
	.4byte 0x00000078
	.4byte __dt__17UnkClass_8045F564Fv
	.4byte 0x0680001C
	.4byte 0x00000070
	.4byte __dt__10IScnRenderFv
	.4byte 0x0680001C
	.4byte 0x0000006C
	.4byte __dt__10IWorkEventFv
	.4byte 0x8680001C
	.4byte 0x00000000
	.4byte __dt__9IUIWindowFv
.endobj "@etb_80019A10"

.obj "@etb_80019A6C", local
.hidden "@etb_80019A6C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80019A6C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4


.obj "@eti_80031C94", local
.hidden "@eti_80031C94"
	.4byte __dt__11CSysWinSaveFv
	.4byte 0x0000008C
	.4byte "@etb_80019950"
.endobj "@eti_80031C94"

.obj "@eti_80031CA0", local
.hidden "@eti_80031CA0"
	.4byte func_80294044
	.4byte 0x000001AC
	.4byte "@etb_800199D0"
.endobj "@eti_80031CA0"

.obj "@eti_80031CAC", local
.hidden "@eti_80031CAC"
	.4byte func_802941F0
	.4byte 0x00000084
	.4byte "@etb_800199E8"
.endobj "@eti_80031CAC"

.obj "@eti_80031CB8", local
.hidden "@eti_80031CB8"
	.4byte func_80294274
	.4byte 0x000001CC
	.4byte "@etb_800199F0"
.endobj "@eti_80031CB8"

.obj "@eti_80031CC4", local
.hidden "@eti_80031CC4"
	.4byte func_80294440
	.4byte 0x00000098
	.4byte "@etb_800199F8"
.endobj "@eti_80031CC4"

.obj "@eti_80031CD0", local
.hidden "@eti_80031CD0"
	.4byte __ct__802944D8
	.4byte 0x0000014C
	.4byte "@etb_80019A10"
.endobj "@eti_80031CD0"

.obj "@eti_80031CDC", local
.hidden "@eti_80031CDC"
	.4byte func_80294638
	.4byte 0x000001D4
	.4byte "@etb_80019A6C"
.endobj "@eti_80031CDC"
