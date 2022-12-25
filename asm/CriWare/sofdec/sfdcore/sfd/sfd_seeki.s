.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global SFSEEKI_InitHn
SFSEEKI_InitHn:
/* 803D0030 003995F0  38 00 00 00 */	li r0, 0
/* 803D0034 003995F4  90 03 00 00 */	stw r0, 0(r3)
/* 803D0038 003995F8  90 03 00 18 */	stw r0, 0x18(r3)
/* 803D003C 003995FC  90 03 00 04 */	stw r0, 4(r3)
/* 803D0040 00399600  90 03 00 08 */	stw r0, 8(r3)
/* 803D0044 00399604  90 03 00 0C */	stw r0, 0xc(r3)
/* 803D0048 00399608  90 03 00 10 */	stw r0, 0x10(r3)
/* 803D004C 0039960C  90 03 00 14 */	stw r0, 0x14(r3)
/* 803D0050 00399610  4E 80 00 20 */	blr 

.global func_803D0054
func_803D0054:
/* 803D0054 00399614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D0058 00399618  7C 08 02 A6 */	mflr r0
/* 803D005C 0039961C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D0060 00399620  80 03 26 D8 */	lwz r0, 0x26d8(r3)
/* 803D0064 00399624  90 04 00 00 */	stw r0, 0(r4)
/* 803D0068 00399628  80 03 26 D8 */	lwz r0, 0x26d8(r3)
/* 803D006C 0039962C  2C 00 00 00 */	cmpwi r0, 0
/* 803D0070 00399630  40 82 00 0C */	bne lbl_803D007C
/* 803D0074 00399634  38 60 00 00 */	li r3, 0
/* 803D0078 00399638  48 00 00 BC */	b lbl_803D0134
lbl_803D007C:
/* 803D007C 0039963C  80 83 09 5C */	lwz r4, 0x95c(r3)
/* 803D0080 00399640  80 03 26 F0 */	lwz r0, 0x26f0(r3)
/* 803D0084 00399644  7C 04 00 40 */	cmplw r4, r0
/* 803D0088 00399648  40 80 00 4C */	bge lbl_803D00D4
/* 803D008C 0039964C  3C 80 80 61 */	lis r4, lbl_8060A2D8@ha
/* 803D0090 00399650  80 E4 A2 D8 */	lwz r7, lbl_8060A2D8@l(r4)
/* 803D0094 00399654  2C 07 00 00 */	cmpwi r7, 0
/* 803D0098 00399658  41 82 00 34 */	beq lbl_803D00CC
/* 803D009C 0039965C  3C C0 80 57 */	lis r6, lbl_8056C3D0@ha
/* 803D00A0 00399660  3C A0 80 52 */	lis r5, lbl_80520778@ha
/* 803D00A4 00399664  38 C6 C3 D0 */	addi r6, r6, lbl_8056C3D0@l
/* 803D00A8 00399668  38 A5 07 78 */	addi r5, r5, lbl_80520778@l
/* 803D00AC 0039966C  90 66 00 0C */	stw r3, 0xc(r6)
/* 803D00B0 00399670  7C E3 3B 78 */	mr r3, r7
/* 803D00B4 00399674  38 86 00 04 */	addi r4, r6, 4
/* 803D00B8 00399678  90 A6 00 18 */	stw r5, 0x18(r6)
/* 803D00BC 0039967C  80 A7 00 00 */	lwz r5, 0(r7)
/* 803D00C0 00399680  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803D00C4 00399684  7D 89 03 A6 */	mtctr r12
/* 803D00C8 00399688  4E 80 04 21 */	bctrl 
lbl_803D00CC:
/* 803D00CC 0039968C  38 60 00 01 */	li r3, 1
/* 803D00D0 00399690  48 00 00 64 */	b lbl_803D0134
lbl_803D00D4:
/* 803D00D4 00399694  80 83 09 58 */	lwz r4, 0x958(r3)
/* 803D00D8 00399698  80 03 26 E0 */	lwz r0, 0x26e0(r3)
/* 803D00DC 0039969C  7C 04 00 40 */	cmplw r4, r0
/* 803D00E0 003996A0  41 80 00 50 */	blt lbl_803D0130
/* 803D00E4 003996A4  3C 80 80 61 */	lis r4, lbl_8060A2D8@ha
/* 803D00E8 003996A8  80 C4 A2 D8 */	lwz r6, lbl_8060A2D8@l(r4)
/* 803D00EC 003996AC  2C 06 00 00 */	cmpwi r6, 0
/* 803D00F0 003996B0  41 82 00 38 */	beq lbl_803D0128
/* 803D00F4 003996B4  3C 80 80 52 */	lis r4, lbl_80520778@ha
/* 803D00F8 003996B8  3C A0 80 57 */	lis r5, lbl_8056C3D0@ha
/* 803D00FC 003996BC  38 84 07 78 */	addi r4, r4, lbl_80520778@l
/* 803D0100 003996C0  38 A5 C3 D0 */	addi r5, r5, lbl_8056C3D0@l
/* 803D0104 003996C4  38 04 00 0D */	addi r0, r4, 0xd
/* 803D0108 003996C8  90 65 00 0C */	stw r3, 0xc(r5)
/* 803D010C 003996CC  38 85 00 04 */	addi r4, r5, 4
/* 803D0110 003996D0  7C C3 33 78 */	mr r3, r6
/* 803D0114 003996D4  90 05 00 18 */	stw r0, 0x18(r5)
/* 803D0118 003996D8  80 A6 00 00 */	lwz r5, 0(r6)
/* 803D011C 003996DC  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803D0120 003996E0  7D 89 03 A6 */	mtctr r12
/* 803D0124 003996E4  4E 80 04 21 */	bctrl 
lbl_803D0128:
/* 803D0128 003996E8  38 60 00 01 */	li r3, 1
/* 803D012C 003996EC  48 00 00 08 */	b lbl_803D0134
lbl_803D0130:
/* 803D0130 003996F0  38 60 00 00 */	li r3, 0
lbl_803D0134:
/* 803D0134 003996F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0138 003996F8  7C 08 03 A6 */	mtlr r0
/* 803D013C 003996FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D0140 00399700  4E 80 00 20 */	blr 

.global func_803D0144
func_803D0144:
/* 803D0144 00399704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D0148 00399708  7C 08 02 A6 */	mflr r0
/* 803D014C 0039970C  2C 04 00 00 */	cmpwi r4, 0
/* 803D0150 00399710  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D0154 00399714  38 00 00 00 */	li r0, 0
/* 803D0158 00399718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D015C 0039971C  7C 7F 1B 78 */	mr r31, r3
/* 803D0160 00399720  93 C1 00 08 */	stw r30, 8(r1)
/* 803D0164 00399724  7C 9E 23 78 */	mr r30, r4
/* 803D0168 00399728  40 81 00 10 */	ble lbl_803D0178
/* 803D016C 0039972C  2C 04 00 05 */	cmpwi r4, 5
/* 803D0170 00399730  40 80 00 08 */	bge lbl_803D0178
/* 803D0174 00399734  38 00 00 01 */	li r0, 1
lbl_803D0178:
/* 803D0178 00399738  2C 00 00 00 */	cmpwi r0, 0
/* 803D017C 0039973C  40 82 00 1C */	bne lbl_803D0198
/* 803D0180 00399740  3C 60 80 52 */	lis r3, lbl_80520798@ha
/* 803D0184 00399744  38 A0 00 00 */	li r5, 0
/* 803D0188 00399748  38 63 07 98 */	addi r3, r3, lbl_80520798@l
/* 803D018C 0039974C  38 C0 00 31 */	li r6, 0x31
/* 803D0190 00399750  38 83 00 1B */	addi r4, r3, 0x1b
/* 803D0194 00399754  4B EE DA E9 */	bl __msl_assertion_failed
lbl_803D0198:
/* 803D0198 00399758  38 FE FF FF */	addi r7, r30, -1
/* 803D019C 0039975C  38 60 00 00 */	li r3, 0
/* 803D01A0 00399760  2C 87 00 00 */	cmpwi cr1, r7, 0
/* 803D01A4 00399764  41 84 00 E8 */	blt cr1, lbl_803D028C
/* 803D01A8 00399768  2C 1E 00 08 */	cmpwi r30, 8
/* 803D01AC 0039976C  40 81 00 B8 */	ble lbl_803D0264
/* 803D01B0 00399770  38 A0 00 00 */	li r5, 0
/* 803D01B4 00399774  38 C0 00 00 */	li r6, 0
/* 803D01B8 00399778  41 84 00 18 */	blt cr1, lbl_803D01D0
/* 803D01BC 0039977C  3C 80 80 00 */	lis r4, 0x80000001@ha
/* 803D01C0 00399780  38 04 00 01 */	addi r0, r4, 0x80000001@l
/* 803D01C4 00399784  7C 07 00 00 */	cmpw r7, r0
/* 803D01C8 00399788  41 80 00 08 */	blt lbl_803D01D0
/* 803D01CC 0039978C  38 C0 00 01 */	li r6, 1
lbl_803D01D0:
/* 803D01D0 00399790  2C 06 00 00 */	cmpwi r6, 0
/* 803D01D4 00399794  41 82 00 2C */	beq lbl_803D0200
/* 803D01D8 00399798  38 1E FF FF */	addi r0, r30, -1
/* 803D01DC 0039979C  38 80 00 01 */	li r4, 1
/* 803D01E0 003997A0  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 803D01E4 003997A4  40 82 00 10 */	bne lbl_803D01F4
/* 803D01E8 003997A8  57 C0 00 01 */	rlwinm. r0, r30, 0, 0, 0
/* 803D01EC 003997AC  41 82 00 08 */	beq lbl_803D01F4
/* 803D01F0 003997B0  38 80 00 00 */	li r4, 0
lbl_803D01F4:
/* 803D01F4 003997B4  2C 04 00 00 */	cmpwi r4, 0
/* 803D01F8 003997B8  41 82 00 08 */	beq lbl_803D0200
/* 803D01FC 003997BC  38 A0 00 01 */	li r5, 1
lbl_803D0200:
/* 803D0200 003997C0  2C 05 00 00 */	cmpwi r5, 0
/* 803D0204 003997C4  41 82 00 60 */	beq lbl_803D0264
/* 803D0208 003997C8  54 E0 E8 FE */	srwi r0, r7, 3
/* 803D020C 003997CC  7C 09 03 A6 */	mtctr r0
/* 803D0210 003997D0  2C 07 00 08 */	cmpwi r7, 8
/* 803D0214 003997D4  41 80 00 50 */	blt lbl_803D0264
lbl_803D0218:
/* 803D0218 003997D8  7C 1F 38 AE */	lbzx r0, r31, r7
/* 803D021C 003997DC  7C 9F 3A 14 */	add r4, r31, r7
/* 803D0220 003997E0  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 803D0224 003997E4  88 64 FF FF */	lbz r3, -1(r4)
/* 803D0228 003997E8  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 803D022C 003997EC  88 04 FF FE */	lbz r0, -2(r4)
/* 803D0230 003997F0  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 803D0234 003997F4  88 64 FF FD */	lbz r3, -3(r4)
/* 803D0238 003997F8  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 803D023C 003997FC  88 04 FF FC */	lbz r0, -4(r4)
/* 803D0240 00399800  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 803D0244 00399804  88 64 FF FB */	lbz r3, -5(r4)
/* 803D0248 00399808  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 803D024C 0039980C  88 04 FF FA */	lbz r0, -6(r4)
/* 803D0250 00399810  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 803D0254 00399814  88 64 FF F9 */	lbz r3, -7(r4)
/* 803D0258 00399818  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 803D025C 0039981C  38 E7 FF F8 */	addi r7, r7, -8
/* 803D0260 00399820  42 00 FF B8 */	bdnz lbl_803D0218
lbl_803D0264:
/* 803D0264 00399824  38 07 00 01 */	addi r0, r7, 1
/* 803D0268 00399828  7C 9F 3A 14 */	add r4, r31, r7
/* 803D026C 0039982C  7C 09 03 A6 */	mtctr r0
/* 803D0270 00399830  2C 07 00 00 */	cmpwi r7, 0
/* 803D0274 00399834  41 80 00 18 */	blt lbl_803D028C
lbl_803D0278:
/* 803D0278 00399838  88 04 00 00 */	lbz r0, 0(r4)
/* 803D027C 0039983C  54 63 40 2E */	slwi r3, r3, 8
/* 803D0280 00399840  38 84 FF FF */	addi r4, r4, -1
/* 803D0284 00399844  7C 63 03 78 */	or r3, r3, r0
/* 803D0288 00399848  42 00 FF F0 */	bdnz lbl_803D0278
lbl_803D028C:
/* 803D028C 0039984C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0290 00399850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D0294 00399854  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D0298 00399858  7C 08 03 A6 */	mtlr r0
/* 803D029C 0039985C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D02A0 00399860  4E 80 00 20 */	blr 

.global func_803D02A4
func_803D02A4:
/* 803D02A4 00399864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D02A8 00399868  7C 08 02 A6 */	mflr r0
/* 803D02AC 0039986C  2C 04 00 00 */	cmpwi r4, 0
/* 803D02B0 00399870  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D02B4 00399874  38 00 00 00 */	li r0, 0
/* 803D02B8 00399878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D02BC 0039987C  7C 9F 23 78 */	mr r31, r4
/* 803D02C0 00399880  93 C1 00 08 */	stw r30, 8(r1)
/* 803D02C4 00399884  7C 7E 1B 78 */	mr r30, r3
/* 803D02C8 00399888  40 81 00 10 */	ble lbl_803D02D8
/* 803D02CC 0039988C  2C 04 00 05 */	cmpwi r4, 5
/* 803D02D0 00399890  40 80 00 08 */	bge lbl_803D02D8
/* 803D02D4 00399894  38 00 00 01 */	li r0, 1
lbl_803D02D8:
/* 803D02D8 00399898  2C 00 00 00 */	cmpwi r0, 0
/* 803D02DC 0039989C  40 82 00 1C */	bne lbl_803D02F8
/* 803D02E0 003998A0  3C 60 80 52 */	lis r3, lbl_80520798@ha
/* 803D02E4 003998A4  38 A0 00 00 */	li r5, 0
/* 803D02E8 003998A8  38 63 07 98 */	addi r3, r3, lbl_80520798@l
/* 803D02EC 003998AC  38 C0 00 42 */	li r6, 0x42
/* 803D02F0 003998B0  38 83 00 1B */	addi r4, r3, 0x1b
/* 803D02F4 003998B4  4B EE D9 89 */	bl __msl_assertion_failed
lbl_803D02F8:
/* 803D02F8 003998B8  2C 9F 00 00 */	cmpwi cr1, r31, 0
/* 803D02FC 003998BC  38 60 00 00 */	li r3, 0
/* 803D0300 003998C0  38 E0 00 00 */	li r7, 0
/* 803D0304 003998C4  40 85 00 BC */	ble cr1, lbl_803D03C0
/* 803D0308 003998C8  2C 1F 00 08 */	cmpwi r31, 8
/* 803D030C 003998CC  38 BF FF F8 */	addi r5, r31, -8
/* 803D0310 003998D0  40 81 00 88 */	ble lbl_803D0398
/* 803D0314 003998D4  38 C0 00 00 */	li r6, 0
/* 803D0318 003998D8  41 84 00 18 */	blt cr1, lbl_803D0330
/* 803D031C 003998DC  3C 80 80 00 */	lis r4, 0x7FFFFFFE@ha
/* 803D0320 003998E0  38 04 FF FE */	addi r0, r4, 0x7FFFFFFE@l
/* 803D0324 003998E4  7C 1F 00 00 */	cmpw r31, r0
/* 803D0328 003998E8  41 81 00 08 */	bgt lbl_803D0330
/* 803D032C 003998EC  38 C0 00 01 */	li r6, 1
lbl_803D0330:
/* 803D0330 003998F0  2C 06 00 00 */	cmpwi r6, 0
/* 803D0334 003998F4  41 82 00 64 */	beq lbl_803D0398
/* 803D0338 003998F8  38 05 00 07 */	addi r0, r5, 7
/* 803D033C 003998FC  54 00 E8 FE */	srwi r0, r0, 3
/* 803D0340 00399900  7C 09 03 A6 */	mtctr r0
/* 803D0344 00399904  2C 05 00 00 */	cmpwi r5, 0
/* 803D0348 00399908  40 81 00 50 */	ble lbl_803D0398
lbl_803D034C:
/* 803D034C 0039990C  7C 1E 38 AE */	lbzx r0, r30, r7
/* 803D0350 00399910  7C 9E 3A 14 */	add r4, r30, r7
/* 803D0354 00399914  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 803D0358 00399918  88 64 00 01 */	lbz r3, 1(r4)
/* 803D035C 0039991C  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 803D0360 00399920  88 04 00 02 */	lbz r0, 2(r4)
/* 803D0364 00399924  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 803D0368 00399928  88 64 00 03 */	lbz r3, 3(r4)
/* 803D036C 0039992C  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 803D0370 00399930  88 04 00 04 */	lbz r0, 4(r4)
/* 803D0374 00399934  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 803D0378 00399938  88 64 00 05 */	lbz r3, 5(r4)
/* 803D037C 0039993C  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 803D0380 00399940  88 04 00 06 */	lbz r0, 6(r4)
/* 803D0384 00399944  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 803D0388 00399948  88 64 00 07 */	lbz r3, 7(r4)
/* 803D038C 0039994C  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 803D0390 00399950  38 E7 00 08 */	addi r7, r7, 8
/* 803D0394 00399954  42 00 FF B8 */	bdnz lbl_803D034C
lbl_803D0398:
/* 803D0398 00399958  7C 07 F8 50 */	subf r0, r7, r31
/* 803D039C 0039995C  7C 9E 3A 14 */	add r4, r30, r7
/* 803D03A0 00399960  7C 09 03 A6 */	mtctr r0
/* 803D03A4 00399964  7C 07 F8 00 */	cmpw r7, r31
/* 803D03A8 00399968  40 80 00 18 */	bge lbl_803D03C0
lbl_803D03AC:
/* 803D03AC 0039996C  88 04 00 00 */	lbz r0, 0(r4)
/* 803D03B0 00399970  54 63 40 2E */	slwi r3, r3, 8
/* 803D03B4 00399974  38 84 00 01 */	addi r4, r4, 1
/* 803D03B8 00399978  7C 63 03 78 */	or r3, r3, r0
/* 803D03BC 0039997C  42 00 FF F0 */	bdnz lbl_803D03AC
lbl_803D03C0:
/* 803D03C0 00399980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D03C4 00399984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D03C8 00399988  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D03CC 0039998C  7C 08 03 A6 */	mtlr r0
/* 803D03D0 00399990  38 21 00 10 */	addi r1, r1, 0x10
/* 803D03D4 00399994  4E 80 00 20 */	blr 

.global func_803D03D8
func_803D03D8:
/* 803D03D8 00399998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D03DC 0039999C  7C 08 02 A6 */	mflr r0
/* 803D03E0 003999A0  2C 04 00 00 */	cmpwi r4, 0
/* 803D03E4 003999A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D03E8 003999A8  38 00 00 00 */	li r0, 0
/* 803D03EC 003999AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D03F0 003999B0  7C 9F 23 78 */	mr r31, r4
/* 803D03F4 003999B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D03F8 003999B8  7C 7E 1B 78 */	mr r30, r3
/* 803D03FC 003999BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D0400 003999C0  40 81 00 10 */	ble lbl_803D0410
/* 803D0404 003999C4  2C 04 00 09 */	cmpwi r4, 9
/* 803D0408 003999C8  40 80 00 08 */	bge lbl_803D0410
/* 803D040C 003999CC  38 00 00 01 */	li r0, 1
lbl_803D0410:
/* 803D0410 003999D0  2C 00 00 00 */	cmpwi r0, 0
/* 803D0414 003999D4  40 82 00 20 */	bne lbl_803D0434
/* 803D0418 003999D8  3C 80 80 52 */	lis r4, lbl_80520798@ha
/* 803D041C 003999DC  38 A0 00 00 */	li r5, 0
/* 803D0420 003999E0  38 84 07 98 */	addi r4, r4, lbl_80520798@l
/* 803D0424 003999E4  38 C0 00 53 */	li r6, 0x53
/* 803D0428 003999E8  38 64 00 27 */	addi r3, r4, 0x27
/* 803D042C 003999EC  38 84 00 1B */	addi r4, r4, 0x1b
/* 803D0430 003999F0  4B EE D8 4D */	bl __msl_assertion_failed
lbl_803D0434:
/* 803D0434 003999F4  2C 9F 00 00 */	cmpwi cr1, r31, 0
/* 803D0438 003999F8  38 80 00 00 */	li r4, 0
/* 803D043C 003999FC  38 60 00 00 */	li r3, 0
/* 803D0440 00399A00  38 A0 00 00 */	li r5, 0
/* 803D0444 00399A04  40 85 01 4C */	ble cr1, lbl_803D0590
/* 803D0448 00399A08  2C 1F 00 08 */	cmpwi r31, 8
/* 803D044C 00399A0C  38 FF FF F8 */	addi r7, r31, -8
/* 803D0450 00399A10  40 81 01 08 */	ble lbl_803D0558
/* 803D0454 00399A14  39 00 00 00 */	li r8, 0
/* 803D0458 00399A18  41 84 00 18 */	blt cr1, lbl_803D0470
/* 803D045C 00399A1C  3C C0 80 00 */	lis r6, 0x7FFFFFFE@ha
/* 803D0460 00399A20  38 06 FF FE */	addi r0, r6, 0x7FFFFFFE@l
/* 803D0464 00399A24  7C 1F 00 00 */	cmpw r31, r0
/* 803D0468 00399A28  41 81 00 08 */	bgt lbl_803D0470
/* 803D046C 00399A2C  39 00 00 01 */	li r8, 1
lbl_803D0470:
/* 803D0470 00399A30  2C 08 00 00 */	cmpwi r8, 0
/* 803D0474 00399A34  41 82 00 E4 */	beq lbl_803D0558
/* 803D0478 00399A38  38 07 00 07 */	addi r0, r7, 7
/* 803D047C 00399A3C  54 00 E8 FE */	srwi r0, r0, 3
/* 803D0480 00399A40  7C 09 03 A6 */	mtctr r0
/* 803D0484 00399A44  2C 07 00 00 */	cmpwi r7, 0
/* 803D0488 00399A48  40 81 00 D0 */	ble lbl_803D0558
lbl_803D048C:
/* 803D048C 00399A4C  7C DE 28 AE */	lbzx r6, r30, r5
/* 803D0490 00399A50  7D 1E 2A 14 */	add r8, r30, r5
/* 803D0494 00399A54  54 63 40 2E */	slwi r3, r3, 8
/* 803D0498 00399A58  88 E8 00 01 */	lbz r7, 1(r8)
/* 803D049C 00399A5C  7C C0 FE 70 */	srawi r0, r6, 0x1f
/* 803D04A0 00399A60  50 86 40 2E */	rlwimi r6, r4, 8, 0, 0x17
/* 803D04A4 00399A64  50 83 46 3E */	rlwimi r3, r4, 8, 0x18, 0x1f
/* 803D04A8 00399A68  8B A8 00 02 */	lbz r29, 2(r8)
/* 803D04AC 00399A6C  7C 63 03 78 */	or r3, r3, r0
/* 803D04B0 00399A70  7C E0 FE 70 */	srawi r0, r7, 0x1f
/* 803D04B4 00399A74  54 63 40 2E */	slwi r3, r3, 8
/* 803D04B8 00399A78  50 C7 40 2E */	rlwimi r7, r6, 8, 0, 0x17
/* 803D04BC 00399A7C  50 C3 46 3E */	rlwimi r3, r6, 8, 0x18, 0x1f
/* 803D04C0 00399A80  89 88 00 03 */	lbz r12, 3(r8)
/* 803D04C4 00399A84  7C 64 03 78 */	or r4, r3, r0
/* 803D04C8 00399A88  7F A0 FE 70 */	srawi r0, r29, 0x1f
/* 803D04CC 00399A8C  54 84 40 2E */	slwi r4, r4, 8
/* 803D04D0 00399A90  50 FD 40 2E */	rlwimi r29, r7, 8, 0, 0x17
/* 803D04D4 00399A94  50 E4 46 3E */	rlwimi r4, r7, 8, 0x18, 0x1f
/* 803D04D8 00399A98  7D 83 FE 70 */	srawi r3, r12, 0x1f
/* 803D04DC 00399A9C  7C 84 03 78 */	or r4, r4, r0
/* 803D04E0 00399AA0  89 68 00 04 */	lbz r11, 4(r8)
/* 803D04E4 00399AA4  54 87 40 2E */	slwi r7, r4, 8
/* 803D04E8 00399AA8  53 AC 40 2E */	rlwimi r12, r29, 8, 0, 0x17
/* 803D04EC 00399AAC  53 A7 46 3E */	rlwimi r7, r29, 8, 0x18, 0x1f
/* 803D04F0 00399AB0  7D 60 FE 70 */	srawi r0, r11, 0x1f
/* 803D04F4 00399AB4  7C E7 1B 78 */	or r7, r7, r3
/* 803D04F8 00399AB8  89 48 00 05 */	lbz r10, 5(r8)
/* 803D04FC 00399ABC  54 E7 40 2E */	slwi r7, r7, 8
/* 803D0500 00399AC0  51 8B 40 2E */	rlwimi r11, r12, 8, 0, 0x17
/* 803D0504 00399AC4  51 87 46 3E */	rlwimi r7, r12, 8, 0x18, 0x1f
/* 803D0508 00399AC8  7D 46 FE 70 */	srawi r6, r10, 0x1f
/* 803D050C 00399ACC  7C E0 03 78 */	or r0, r7, r0
/* 803D0510 00399AD0  89 28 00 06 */	lbz r9, 6(r8)
/* 803D0514 00399AD4  54 07 40 2E */	slwi r7, r0, 8
/* 803D0518 00399AD8  51 6A 40 2E */	rlwimi r10, r11, 8, 0, 0x17
/* 803D051C 00399ADC  51 67 46 3E */	rlwimi r7, r11, 8, 0x18, 0x1f
/* 803D0520 00399AE0  7D 23 FE 70 */	srawi r3, r9, 0x1f
/* 803D0524 00399AE4  7C E6 33 78 */	or r6, r7, r6
/* 803D0528 00399AE8  88 88 00 07 */	lbz r4, 7(r8)
/* 803D052C 00399AEC  54 C6 40 2E */	slwi r6, r6, 8
/* 803D0530 00399AF0  51 49 40 2E */	rlwimi r9, r10, 8, 0, 0x17
/* 803D0534 00399AF4  51 46 46 3E */	rlwimi r6, r10, 8, 0x18, 0x1f
/* 803D0538 00399AF8  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 803D053C 00399AFC  7C C3 1B 78 */	or r3, r6, r3
/* 803D0540 00399B00  51 24 40 2E */	rlwimi r4, r9, 8, 0, 0x17
/* 803D0544 00399B04  54 63 40 2E */	slwi r3, r3, 8
/* 803D0548 00399B08  38 A5 00 08 */	addi r5, r5, 8
/* 803D054C 00399B0C  51 23 46 3E */	rlwimi r3, r9, 8, 0x18, 0x1f
/* 803D0550 00399B10  7C 63 03 78 */	or r3, r3, r0
/* 803D0554 00399B14  42 00 FF 38 */	bdnz lbl_803D048C
lbl_803D0558:
/* 803D0558 00399B18  7C 05 F8 50 */	subf r0, r5, r31
/* 803D055C 00399B1C  7C DE 2A 14 */	add r6, r30, r5
/* 803D0560 00399B20  7C 09 03 A6 */	mtctr r0
/* 803D0564 00399B24  7C 05 F8 00 */	cmpw r5, r31
/* 803D0568 00399B28  40 80 00 28 */	bge lbl_803D0590
lbl_803D056C:
/* 803D056C 00399B2C  88 A6 00 00 */	lbz r5, 0(r6)
/* 803D0570 00399B30  54 63 40 2E */	slwi r3, r3, 8
/* 803D0574 00399B34  54 87 40 2E */	slwi r7, r4, 8
/* 803D0578 00399B38  38 C6 00 01 */	addi r6, r6, 1
/* 803D057C 00399B3C  50 83 46 3E */	rlwimi r3, r4, 8, 0x18, 0x1f
/* 803D0580 00399B40  7C A0 FE 70 */	srawi r0, r5, 0x1f
/* 803D0584 00399B44  7C E4 2B 78 */	or r4, r7, r5
/* 803D0588 00399B48  7C 63 03 78 */	or r3, r3, r0
/* 803D058C 00399B4C  42 00 FF E0 */	bdnz lbl_803D056C
lbl_803D0590:
/* 803D0590 00399B50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D0594 00399B54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D0598 00399B58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D059C 00399B5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D05A0 00399B60  7C 08 03 A6 */	mtlr r0
/* 803D05A4 00399B64  38 21 00 20 */	addi r1, r1, 0x20
/* 803D05A8 00399B68  4E 80 00 20 */	blr 

.global func_803D05AC
func_803D05AC:
/* 803D05AC 00399B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D05B0 00399B70  7C 08 02 A6 */	mflr r0
/* 803D05B4 00399B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D05B8 00399B78  38 00 00 00 */	li r0, 0
/* 803D05BC 00399B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D05C0 00399B80  7F E3 20 51 */	subf. r31, r3, r4
/* 803D05C4 00399B84  40 81 00 10 */	ble lbl_803D05D4
/* 803D05C8 00399B88  2C 1F 00 09 */	cmpwi r31, 9
/* 803D05CC 00399B8C  40 80 00 08 */	bge lbl_803D05D4
/* 803D05D0 00399B90  38 00 00 01 */	li r0, 1
lbl_803D05D4:
/* 803D05D4 00399B94  2C 00 00 00 */	cmpwi r0, 0
/* 803D05D8 00399B98  40 82 00 20 */	bne lbl_803D05F8
/* 803D05DC 00399B9C  3C 80 80 52 */	lis r4, lbl_80520798@ha
/* 803D05E0 00399BA0  38 A0 00 00 */	li r5, 0
/* 803D05E4 00399BA4  38 84 07 98 */	addi r4, r4, lbl_80520798@l
/* 803D05E8 00399BA8  38 C0 00 65 */	li r6, 0x65
/* 803D05EC 00399BAC  38 64 00 42 */	addi r3, r4, 0x42
/* 803D05F0 00399BB0  38 84 00 1B */	addi r4, r4, 0x1b
/* 803D05F4 00399BB4  4B EE D6 89 */	bl __msl_assertion_failed
lbl_803D05F8:
/* 803D05F8 00399BB8  7F E3 FB 78 */	mr r3, r31
/* 803D05FC 00399BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D0600 00399BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0604 00399BC4  7C 08 03 A6 */	mtlr r0
/* 803D0608 00399BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D060C 00399BCC  4E 80 00 20 */	blr

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_80520778
lbl_80520778:
	.asciz "before seeki"
	.asciz "after seeki"
	.balign 4
	.4byte 0


.global lbl_80520798
lbl_80520798:
	.asciz "(nbyte > 0) && (nbyte < 5)"
	.asciz "sfh_local.c"
	.asciz "(nbyte > 0) && (nbyte < 9)"
	.asciz "(size > 0) && (size < 9)"
	.balign 4
	.4byte 0