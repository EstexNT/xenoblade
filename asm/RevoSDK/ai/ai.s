.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global AIRegisterDMACallback
AIRegisterDMACallback:
/* 802D10A0 0029A660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D10A4 0029A664  7C 08 02 A6 */	mflr r0
/* 802D10A8 0029A668  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D10AC 0029A66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D10B0 0029A670  93 C1 00 08 */	stw r30, 8(r1)
/* 802D10B4 0029A674  7C 7E 1B 78 */	mr r30, r3
/* 802D10B8 0029A678  83 ED B4 80 */	lwz r31, lbl_80667600@sda21(r13)
/* 802D10BC 0029A67C  48 08 78 F5 */	bl OSDisableInterrupts
/* 802D10C0 0029A680  93 CD B4 80 */	stw r30, lbl_80667600@sda21(r13)
/* 802D10C4 0029A684  48 08 79 2D */	bl OSRestoreInterrupts
/* 802D10C8 0029A688  7F E3 FB 78 */	mr r3, r31
/* 802D10CC 0029A68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D10D0 0029A690  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D10D4 0029A694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D10D8 0029A698  7C 08 03 A6 */	mtlr r0
/* 802D10DC 0029A69C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D10E0 0029A6A0  4E 80 00 20 */	blr 

.balign 16, 0
.global AIInitDMA
AIInitDMA:
/* 802D10F0 0029A6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D10F4 0029A6B4  7C 08 02 A6 */	mflr r0
/* 802D10F8 0029A6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D10FC 0029A6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1100 0029A6C0  7C 9F 23 78 */	mr r31, r4
/* 802D1104 0029A6C4  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1108 0029A6C8  7C 7E 1B 78 */	mr r30, r3
/* 802D110C 0029A6CC  48 08 78 A5 */	bl OSDisableInterrupts
/* 802D1110 0029A6D0  3C E0 CC 00 */	lis r7, 0xCC005030@ha
/* 802D1114 0029A6D4  57 C5 84 3E */	srwi r5, r30, 0x10
/* 802D1118 0029A6D8  A0 C7 50 30 */	lhz r6, 0xCC005030@l(r7)
/* 802D111C 0029A6DC  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 802D1120 0029A6E0  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 802D1124 0029A6E4  54 C6 00 24 */	rlwinm r6, r6, 0, 0, 0x12
/* 802D1128 0029A6E8  7C C5 2B 78 */	or r5, r6, r5
/* 802D112C 0029A6EC  B0 A7 50 30 */	sth r5, 0x5030(r7)
/* 802D1130 0029A6F0  A0 A7 50 32 */	lhz r5, 0x5032(r7)
/* 802D1134 0029A6F4  54 A5 06 DE */	rlwinm r5, r5, 0, 0x1b, 0xf
/* 802D1138 0029A6F8  7C A4 23 78 */	or r4, r5, r4
/* 802D113C 0029A6FC  B0 87 50 32 */	sth r4, 0x5032(r7)
/* 802D1140 0029A700  A0 87 50 36 */	lhz r4, 0x5036(r7)
/* 802D1144 0029A704  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 802D1148 0029A708  7C 80 03 78 */	or r0, r4, r0
/* 802D114C 0029A70C  B0 07 50 36 */	sth r0, 0x5036(r7)
/* 802D1150 0029A710  48 08 78 A1 */	bl OSRestoreInterrupts
/* 802D1154 0029A714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1158 0029A718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D115C 0029A71C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1160 0029A720  7C 08 03 A6 */	mtlr r0
/* 802D1164 0029A724  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1168 0029A728  4E 80 00 20 */	blr 

.balign 16, 0
.global AIStartDMA
AIStartDMA:
/* 802D1170 0029A730  3C 60 CC 00 */	lis r3, 0xCC005036@ha
/* 802D1174 0029A734  A0 03 50 36 */	lhz r0, 0xCC005036@l(r3)
/* 802D1178 0029A738  60 00 80 00 */	ori r0, r0, 0x8000
/* 802D117C 0029A73C  B0 03 50 36 */	sth r0, 0x5036(r3)
/* 802D1180 0029A740  4E 80 00 20 */	blr 

.balign 16, 0
.global AIStopDMA
AIStopDMA:
/* 802D1190 0029A750  3C 60 CC 00 */	lis r3, 0xCC005036@ha
/* 802D1194 0029A754  A0 03 50 36 */	lhz r0, 0xCC005036@l(r3)
/* 802D1198 0029A758  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 802D119C 0029A75C  B0 03 50 36 */	sth r0, 0x5036(r3)
/* 802D11A0 0029A760  4E 80 00 20 */	blr 

.balign 16, 0
.global AIGetDMABytesLeft
AIGetDMABytesLeft:
/* 802D11B0 0029A770  3C 60 CC 00 */	lis r3, 0xCC00503A@ha
/* 802D11B4 0029A774  A0 03 50 3A */	lhz r0, 0xCC00503A@l(r3)
/* 802D11B8 0029A778  54 03 2B 34 */	rlwinm r3, r0, 5, 0xc, 0x1a
/* 802D11BC 0029A77C  4E 80 00 20 */	blr 

.balign 16, 0
.global AIGetDMAStartAddr
AIGetDMAStartAddr:
/* 802D11C0 0029A780  3C 60 CC 00 */	lis r3, 0xCC005030@ha
/* 802D11C4 0029A784  A0 83 50 30 */	lhz r4, 0xCC005030@l(r3)
/* 802D11C8 0029A788  A0 03 50 32 */	lhz r0, 0x5032(r3)
/* 802D11CC 0029A78C  54 03 04 34 */	rlwinm r3, r0, 0, 0x10, 0x1a
/* 802D11D0 0029A790  50 83 80 DE */	rlwimi r3, r4, 0x10, 3, 0xf
/* 802D11D4 0029A794  4E 80 00 20 */	blr 

.balign 16, 0
.global AIGetDMALength
AIGetDMALength:
/* 802D11E0 0029A7A0  3C 60 CC 00 */	lis r3, 0xCC005036@ha
/* 802D11E4 0029A7A4  A0 03 50 36 */	lhz r0, 0xCC005036@l(r3)
/* 802D11E8 0029A7A8  54 03 2B 34 */	rlwinm r3, r0, 5, 0xc, 0x1a
/* 802D11EC 0029A7AC  4E 80 00 20 */	blr 

.balign 16, 0
.global AICheckInit
AICheckInit:
/* 802D11F0 0029A7B0  80 6D B4 48 */	lwz r3, lbl_806675C8@sda21(r13)
/* 802D11F4 0029A7B4  4E 80 00 20 */	blr 

.balign 16, 0
.global AIInit
AIInit:
/* 802D1200 0029A7C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D1204 0029A7C4  7C 08 02 A6 */	mflr r0
/* 802D1208 0029A7C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D120C 0029A7CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D1210 0029A7D0  7C 7F 1B 78 */	mr r31, r3
/* 802D1214 0029A7D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D1218 0029A7D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D121C 0029A7DC  80 0D B4 48 */	lwz r0, lbl_806675C8@sda21(r13)
/* 802D1220 0029A7E0  2C 00 00 01 */	cmpwi r0, 1
/* 802D1224 0029A7E4  41 82 01 40 */	beq .L_802D1364
/* 802D1228 0029A7E8  80 6D 97 20 */	lwz r3, lbl_806658A0@sda21(r13)
/* 802D122C 0029A7EC  48 08 1A D5 */	bl OSRegisterVersion
/* 802D1230 0029A7F0  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 802D1234 0029A7F4  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 802D1238 0029A7F8  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 802D123C 0029A7FC  38 E0 00 00 */	li r7, 0
/* 802D1240 0029A800  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 802D1244 0029A804  38 84 DE 83 */	addi r4, r4, 0x431BDE83@l
/* 802D1248 0029A808  54 06 F0 BE */	srwi r6, r0, 2
/* 802D124C 0029A80C  3C 60 00 01 */	lis r3, 0x0000A428@ha
/* 802D1250 0029A810  7C C4 30 16 */	mulhwu r6, r4, r6
/* 802D1254 0029A814  39 25 4D D3 */	addi r9, r5, 0x10624DD3@l
/* 802D1258 0029A818  38 03 A4 28 */	addi r0, r3, 0x0000A428@l
/* 802D125C 0029A81C  90 ED B4 70 */	stw r7, lbl_806675F0@sda21(r13)
/* 802D1260 0029A820  38 83 A4 10 */	addi r4, r3, -23536
/* 802D1264 0029A824  38 63 F6 18 */	addi r3, r3, -2536
/* 802D1268 0029A828  54 CA 8B FE */	srwi r10, r6, 0xf
/* 802D126C 0029A82C  90 ED B4 68 */	stw r7, lbl_806675E8@sda21(r13)
/* 802D1270 0029A830  7C CA 01 D6 */	mullw r6, r10, r0
/* 802D1274 0029A834  3F C0 CD 00 */	lis r30, 0xCD006C00@ha
/* 802D1278 0029A838  90 ED B4 60 */	stw r7, lbl_806675E0@sda21(r13)
/* 802D127C 0029A83C  38 00 FF EA */	li r0, -22
/* 802D1280 0029A840  90 ED B4 58 */	stw r7, lbl_806675D8@sda21(r13)
/* 802D1284 0029A844  7C AA 21 D6 */	mullw r5, r10, r4
/* 802D1288 0029A848  90 ED B4 50 */	stw r7, lbl_806675D0@sda21(r13)
/* 802D128C 0029A84C  7C 8A 19 D6 */	mullw r4, r10, r3
/* 802D1290 0029A850  1D 0A 7B 24 */	mulli r8, r10, 0x7b24
/* 802D1294 0029A854  1C 6A 0B B8 */	mulli r3, r10, 0xbb8
/* 802D1298 0029A858  7D 09 40 16 */	mulhwu r8, r9, r8
/* 802D129C 0029A85C  7C C9 30 16 */	mulhwu r6, r9, r6
/* 802D12A0 0029A860  55 08 BA 7E */	srwi r8, r8, 9
/* 802D12A4 0029A864  91 0D B4 74 */	stw r8, lbl_806675F4@sda21(r13)
/* 802D12A8 0029A868  7C A9 28 16 */	mulhwu r5, r9, r5
/* 802D12AC 0029A86C  54 C6 BA 7E */	srwi r6, r6, 9
/* 802D12B0 0029A870  90 CD B4 6C */	stw r6, lbl_806675EC@sda21(r13)
/* 802D12B4 0029A874  7C 89 20 16 */	mulhwu r4, r9, r4
/* 802D12B8 0029A878  54 A5 BA 7E */	srwi r5, r5, 9
/* 802D12BC 0029A87C  90 AD B4 64 */	stw r5, lbl_806675E4@sda21(r13)
/* 802D12C0 0029A880  7C 69 18 16 */	mulhwu r3, r9, r3
/* 802D12C4 0029A884  54 84 BA 7E */	srwi r4, r4, 9
/* 802D12C8 0029A888  90 8D B4 5C */	stw r4, lbl_806675DC@sda21(r13)
/* 802D12CC 0029A88C  54 63 BA 7E */	srwi r3, r3, 9
/* 802D12D0 0029A890  90 6D B4 54 */	stw r3, lbl_806675D4@sda21(r13)
/* 802D12D4 0029A894  80 7E 6C 00 */	lwz r3, 0xCD006C00@l(r30)
/* 802D12D8 0029A898  7C 60 00 38 */	and r0, r3, r0
/* 802D12DC 0029A89C  90 1E 6C 00 */	stw r0, 0x6c00(r30)
/* 802D12E0 0029A8A0  90 FE 6C 04 */	stw r7, 0x6c04(r30)
/* 802D12E4 0029A8A4  90 FE 6C 0C */	stw r7, 0x6c0c(r30)
/* 802D12E8 0029A8A8  80 1E 6C 00 */	lwz r0, 0x6c00(r30)
/* 802D12EC 0029A8AC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 802D12F0 0029A8B0  60 00 00 20 */	ori r0, r0, 0x20
/* 802D12F4 0029A8B4  90 1E 6C 00 */	stw r0, 0x6c00(r30)
/* 802D12F8 0029A8B8  80 1E 6C 00 */	lwz r0, 0x6c00(r30)
/* 802D12FC 0029A8BC  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 802D1300 0029A8C0  68 00 00 01 */	xori r0, r0, 1
/* 802D1304 0029A8C4  2C 00 00 00 */	cmpwi r0, 0
/* 802D1308 0029A8C8  41 82 00 30 */	beq .L_802D1338
/* 802D130C 0029A8CC  80 1E 6C 00 */	lwz r0, 0x6c00(r30)
/* 802D1310 0029A8D0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 802D1314 0029A8D4  90 1E 6C 00 */	stw r0, 0x6c00(r30)
/* 802D1318 0029A8D8  48 08 76 99 */	bl OSDisableInterrupts
/* 802D131C 0029A8DC  7C 7D 1B 78 */	mr r29, r3
/* 802D1320 0029A8E0  48 00 01 81 */	bl __AI_SRC_INIT
/* 802D1324 0029A8E4  80 1E 6C 00 */	lwz r0, 0x6c00(r30)
/* 802D1328 0029A8E8  7F A3 EB 78 */	mr r3, r29
/* 802D132C 0029A8EC  60 00 00 40 */	ori r0, r0, 0x40
/* 802D1330 0029A8F0  90 1E 6C 00 */	stw r0, 0x6c00(r30)
/* 802D1334 0029A8F4  48 08 76 BD */	bl OSRestoreInterrupts
.L_802D1338:
/* 802D1338 0029A8F8  38 00 00 00 */	li r0, 0
/* 802D133C 0029A8FC  3C 80 80 2D */	lis r4, __AIDHandler@ha
/* 802D1340 0029A900  90 0D B4 80 */	stw r0, lbl_80667600@sda21(r13)
/* 802D1344 0029A904  38 84 13 80 */	addi r4, r4, __AIDHandler@l
/* 802D1348 0029A908  38 60 00 05 */	li r3, 5
/* 802D134C 0029A90C  93 ED B4 7C */	stw r31, lbl_806675FC@sda21(r13)
/* 802D1350 0029A910  48 08 76 D1 */	bl __OSSetInterruptHandler
/* 802D1354 0029A914  3C 60 04 00 */	lis r3, 0x400
/* 802D1358 0029A918  48 08 7A A9 */	bl __OSUnmaskInterrupts
/* 802D135C 0029A91C  38 00 00 01 */	li r0, 1
/* 802D1360 0029A920  90 0D B4 48 */	stw r0, lbl_806675C8@sda21(r13)
.L_802D1364:
/* 802D1364 0029A924  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D1368 0029A928  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D136C 0029A92C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D1370 0029A930  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D1374 0029A934  7C 08 03 A6 */	mtlr r0
/* 802D1378 0029A938  38 21 00 20 */	addi r1, r1, 0x20
/* 802D137C 0029A93C  4E 80 00 20 */	blr

.balign 16, 0
.global __AIDHandler
__AIDHandler:
/* 802D1380 0029A940  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 802D1384 0029A944  7C 08 02 A6 */	mflr r0
/* 802D1388 0029A948  3C C0 CC 00 */	lis r6, 0xCC00500A@ha
/* 802D138C 0029A94C  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 802D1390 0029A950  38 00 FF 5F */	li r0, -161
/* 802D1394 0029A954  38 61 00 08 */	addi r3, r1, 8
/* 802D1398 0029A958  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 802D139C 0029A95C  7C 9F 23 78 */	mr r31, r4
/* 802D13A0 0029A960  A0 A6 50 0A */	lhz r5, 0xCC00500A@l(r6)
/* 802D13A4 0029A964  7C A0 00 38 */	and r0, r5, r0
/* 802D13A8 0029A968  60 00 00 08 */	ori r0, r0, 8
/* 802D13AC 0029A96C  B0 06 50 0A */	sth r0, 0x500a(r6)
/* 802D13B0 0029A970  48 08 37 11 */	bl OSClearContext
/* 802D13B4 0029A974  38 61 00 08 */	addi r3, r1, 8
/* 802D13B8 0029A978  48 08 34 C9 */	bl OSSetCurrentContext
/* 802D13BC 0029A97C  80 6D B4 80 */	lwz r3, lbl_80667600@sda21(r13)
/* 802D13C0 0029A980  2C 03 00 00 */	cmpwi r3, 0
/* 802D13C4 0029A984  41 82 00 40 */	beq .L_802D1404
/* 802D13C8 0029A988  80 0D B4 4C */	lwz r0, lbl_806675CC@sda21(r13)
/* 802D13CC 0029A98C  2C 00 00 00 */	cmpwi r0, 0
/* 802D13D0 0029A990  40 82 00 34 */	bne .L_802D1404
/* 802D13D4 0029A994  80 0D B4 7C */	lwz r0, lbl_806675FC@sda21(r13)
/* 802D13D8 0029A998  38 80 00 01 */	li r4, 1
/* 802D13DC 0029A99C  90 8D B4 4C */	stw r4, lbl_806675CC@sda21(r13)
/* 802D13E0 0029A9A0  2C 00 00 00 */	cmpwi r0, 0
/* 802D13E4 0029A9A4  41 82 00 0C */	beq .L_802D13F0
/* 802D13E8 0029A9A8  48 00 00 49 */	bl __AICallbackStackSwitch
/* 802D13EC 0029A9AC  48 00 00 10 */	b .L_802D13FC
.L_802D13F0:
/* 802D13F0 0029A9B0  7C 6C 1B 78 */	mr r12, r3
/* 802D13F4 0029A9B4  7D 89 03 A6 */	mtctr r12
/* 802D13F8 0029A9B8  4E 80 04 21 */	bctrl 
.L_802D13FC:
/* 802D13FC 0029A9BC  38 00 00 00 */	li r0, 0
/* 802D1400 0029A9C0  90 0D B4 4C */	stw r0, lbl_806675CC@sda21(r13)
.L_802D1404:
/* 802D1404 0029A9C4  38 61 00 08 */	addi r3, r1, 8
/* 802D1408 0029A9C8  48 08 36 B9 */	bl OSClearContext
/* 802D140C 0029A9CC  7F E3 FB 78 */	mr r3, r31
/* 802D1410 0029A9D0  48 08 34 71 */	bl OSSetCurrentContext
/* 802D1414 0029A9D4  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 802D1418 0029A9D8  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 802D141C 0029A9DC  7C 08 03 A6 */	mtlr r0
/* 802D1420 0029A9E0  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 802D1424 0029A9E4  4E 80 00 20 */	blr 

.balign 16, 0
.global __AICallbackStackSwitch
__AICallbackStackSwitch:
/* 802D1430 0029A9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1434 0029A9F4  7C 08 02 A6 */	mflr r0
/* 802D1438 0029A9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D143C 0029A9FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1440 0029AA00  7C 3F 0B 78 */	mr r31, r1
/* 802D1444 0029AA04  7C 7F 1B 78 */	mr r31, r3
/* 802D1448 0029AA08  3C A0 80 66 */	lis r5, lbl_806675F8@ha
/* 802D144C 0029AA0C  38 A5 75 F8 */	addi r5, r5, lbl_806675F8@l
/* 802D1450 0029AA10  90 25 00 00 */	stw r1, 0(r5)
/* 802D1454 0029AA14  3C A0 80 66 */	lis r5, lbl_806675FC@ha
/* 802D1458 0029AA18  38 A5 75 FC */	addi r5, r5, lbl_806675FC@l
/* 802D145C 0029AA1C  80 25 00 00 */	lwz r1, 0(r5)
/* 802D1460 0029AA20  38 21 FF F8 */	addi r1, r1, -8
/* 802D1464 0029AA24  7F E8 03 A6 */	mtlr r31
/* 802D1468 0029AA28  4E 80 00 21 */	blrl 
/* 802D146C 0029AA2C  3C A0 80 66 */	lis r5, lbl_806675F8@ha
/* 802D1470 0029AA30  38 A5 75 F8 */	addi r5, r5, lbl_806675F8@l
/* 802D1474 0029AA34  80 25 00 00 */	lwz r1, 0(r5)
/* 802D1478 0029AA38  7C 2A 0B 78 */	mr r10, r1
/* 802D147C 0029AA3C  83 EA 00 0C */	lwz r31, 0xc(r10)
/* 802D1480 0029AA40  81 41 00 00 */	lwz r10, 0(r1)
/* 802D1484 0029AA44  80 0A 00 04 */	lwz r0, 4(r10)
/* 802D1488 0029AA48  7D 41 53 78 */	mr r1, r10
/* 802D148C 0029AA4C  7C 08 03 A6 */	mtlr r0
/* 802D1490 0029AA50  4E 80 00 20 */	blr 

.balign 16, 0
.global __AI_SRC_INIT
__AI_SRC_INIT:
/* 802D14A0 0029AA60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D14A4 0029AA64  7C 08 02 A6 */	mflr r0
/* 802D14A8 0029AA68  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D14AC 0029AA6C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D14B0 0029AA70  4B FE 8C A5 */	bl _savegpr_27
/* 802D14B4 0029AA74  38 80 00 00 */	li r4, 0
/* 802D14B8 0029AA78  38 60 00 00 */	li r3, 0
/* 802D14BC 0029AA7C  38 00 00 00 */	li r0, 0
/* 802D14C0 0029AA80  3B A0 00 00 */	li r29, 0
/* 802D14C4 0029AA84  3B C0 00 00 */	li r30, 0
/* 802D14C8 0029AA88  3F E0 CD 00 */	lis r31, 0xcd00
/* 802D14CC 0029AA8C  48 00 01 58 */	b .L_802D1624
.L_802D14D0:
/* 802D14D0 0029AA90  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802D14D4 0029AA94  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 802D14D8 0029AA98  60 00 00 20 */	ori r0, r0, 0x20
/* 802D14DC 0029AA9C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802D14E0 0029AAA0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802D14E4 0029AAA4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802D14E8 0029AAA8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802D14EC 0029AAAC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802D14F0 0029AAB0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802D14F4 0029AAB4  60 00 00 01 */	ori r0, r0, 1
/* 802D14F8 0029AAB8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802D14FC 0029AABC  80 1F 6C 08 */	lwz r0, 0x6c08(r31)
/* 802D1500 0029AAC0  54 03 00 7E */	clrlwi r3, r0, 1
/* 802D1504 0029AAC4  60 00 00 00 */	nop 
.L_802D1508:
/* 802D1508 0029AAC8  80 1F 6C 08 */	lwz r0, 0x6c08(r31)
/* 802D150C 0029AACC  54 00 00 7E */	clrlwi r0, r0, 1
/* 802D1510 0029AAD0  7C 03 00 40 */	cmplw r3, r0
/* 802D1514 0029AAD4  41 82 FF F4 */	beq .L_802D1508
/* 802D1518 0029AAD8  48 08 B4 49 */	bl OSGetTime
/* 802D151C 0029AADC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802D1520 0029AAE0  7C 9B 23 78 */	mr r27, r4
/* 802D1524 0029AAE4  7C 7C 1B 78 */	mr r28, r3
/* 802D1528 0029AAE8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802D152C 0029AAEC  60 00 00 02 */	ori r0, r0, 2
/* 802D1530 0029AAF0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802D1534 0029AAF4  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802D1538 0029AAF8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802D153C 0029AAFC  60 00 00 01 */	ori r0, r0, 1
/* 802D1540 0029AB00  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802D1544 0029AB04  80 1F 6C 08 */	lwz r0, 0x6c08(r31)
/* 802D1548 0029AB08  54 03 00 7E */	clrlwi r3, r0, 1
/* 802D154C 0029AB0C  60 00 00 00 */	nop 
.L_802D1550:
/* 802D1550 0029AB10  80 1F 6C 08 */	lwz r0, 0x6c08(r31)
/* 802D1554 0029AB14  54 00 00 7E */	clrlwi r0, r0, 1
/* 802D1558 0029AB18  7C 03 00 40 */	cmplw r3, r0
/* 802D155C 0029AB1C  41 82 FF F4 */	beq .L_802D1550
/* 802D1560 0029AB20  48 08 B4 01 */	bl OSGetTime
/* 802D1564 0029AB24  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802D1568 0029AB28  7D 1B 20 10 */	subfc r8, r27, r4
/* 802D156C 0029AB2C  7C BC 19 10 */	subfe r5, r28, r3
/* 802D1570 0029AB30  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802D1574 0029AB34  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802D1578 0029AB38  6C A7 80 00 */	xoris r7, r5, 0x8000
/* 802D157C 0029AB3C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 802D1580 0029AB40  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802D1584 0029AB44  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 802D1588 0029AB48  81 4D B4 54 */	lwz r10, lbl_806675D4@sda21(r13)
/* 802D158C 0029AB4C  81 8D B4 74 */	lwz r12, lbl_806675F4@sda21(r13)
/* 802D1590 0029AB50  81 2D B4 50 */	lwz r9, lbl_806675D0@sda21(r13)
/* 802D1594 0029AB54  81 6D B4 70 */	lwz r11, lbl_806675F0@sda21(r13)
/* 802D1598 0029AB58  7C CA 60 10 */	subfc r6, r10, r12
/* 802D159C 0029AB5C  7C 09 59 10 */	subfe r0, r9, r11
/* 802D15A0 0029AB60  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 802D15A4 0029AB64  7C 06 40 10 */	subfc r0, r6, r8
/* 802D15A8 0029AB68  7C A5 39 10 */	subfe r5, r5, r7
/* 802D15AC 0029AB6C  7C A7 39 10 */	subfe r5, r7, r7
/* 802D15B0 0029AB70  7C A5 00 D1 */	neg. r5, r5
/* 802D15B4 0029AB74  41 82 00 14 */	beq .L_802D15C8
/* 802D15B8 0029AB78  83 CD B4 60 */	lwz r30, lbl_806675E0@sda21(r13)
/* 802D15BC 0029AB7C  38 00 00 01 */	li r0, 1
/* 802D15C0 0029AB80  83 AD B4 64 */	lwz r29, lbl_806675E4@sda21(r13)
/* 802D15C4 0029AB84  48 00 00 60 */	b .L_802D1624
.L_802D15C8:
/* 802D15C8 0029AB88  7C CC 50 14 */	addc r6, r12, r10
/* 802D15CC 0029AB8C  7C 0B 49 14 */	adde r0, r11, r9
/* 802D15D0 0029AB90  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 802D15D4 0029AB94  7C 06 40 10 */	subfc r0, r6, r8
/* 802D15D8 0029AB98  7C A5 39 10 */	subfe r5, r5, r7
/* 802D15DC 0029AB9C  7C A7 39 10 */	subfe r5, r7, r7
/* 802D15E0 0029ABA0  7C A5 00 D1 */	neg. r5, r5
/* 802D15E4 0029ABA4  40 82 00 3C */	bne .L_802D1620
/* 802D15E8 0029ABA8  80 AD B4 6C */	lwz r5, lbl_806675EC@sda21(r13)
/* 802D15EC 0029ABAC  80 0D B4 68 */	lwz r0, lbl_806675E8@sda21(r13)
/* 802D15F0 0029ABB0  7C CA 28 10 */	subfc r6, r10, r5
/* 802D15F4 0029ABB4  7C 09 01 10 */	subfe r0, r9, r0
/* 802D15F8 0029ABB8  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 802D15FC 0029ABBC  7C 06 40 10 */	subfc r0, r6, r8
/* 802D1600 0029ABC0  7C A5 39 10 */	subfe r5, r5, r7
/* 802D1604 0029ABC4  7C A7 39 10 */	subfe r5, r7, r7
/* 802D1608 0029ABC8  7C A5 00 D1 */	neg. r5, r5
/* 802D160C 0029ABCC  41 82 00 14 */	beq .L_802D1620
/* 802D1610 0029ABD0  83 CD B4 58 */	lwz r30, lbl_806675D8@sda21(r13)
/* 802D1614 0029ABD4  38 00 00 01 */	li r0, 1
/* 802D1618 0029ABD8  83 AD B4 5C */	lwz r29, lbl_806675DC@sda21(r13)
/* 802D161C 0029ABDC  48 00 00 08 */	b .L_802D1624
.L_802D1620:
/* 802D1620 0029ABE0  38 00 00 00 */	li r0, 0
.L_802D1624:
/* 802D1624 0029ABE4  2C 00 00 00 */	cmpwi r0, 0
/* 802D1628 0029ABE8  41 82 FE A8 */	beq .L_802D14D0
/* 802D162C 0029ABEC  7F E4 E8 14 */	addc r31, r4, r29
/* 802D1630 0029ABF0  7F A3 F1 14 */	adde r29, r3, r30
.L_802D1634:
/* 802D1634 0029ABF4  48 08 B3 2D */	bl OSGetTime
/* 802D1638 0029ABF8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802D163C 0029ABFC  6F A5 80 00 */	xoris r5, r29, 0x8000
/* 802D1640 0029AC00  7C 7F 20 10 */	subfc r3, r31, r4
/* 802D1644 0029AC04  7C A5 01 10 */	subfe r5, r5, r0
/* 802D1648 0029AC08  7C A0 01 10 */	subfe r5, r0, r0
/* 802D164C 0029AC0C  7C A5 00 D1 */	neg. r5, r5
/* 802D1650 0029AC10  40 82 FF E4 */	bne .L_802D1634
/* 802D1654 0029AC14  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1658 0029AC18  4B FE 8B 49 */	bl _restgpr_27
/* 802D165C 0029AC1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D1660 0029AC20  7C 08 03 A6 */	mtlr r0
/* 802D1664 0029AC24  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1668 0029AC28  4E 80 00 20 */	blr

.section .sdata, "wa"  # 0x80664180 - 0x80666600

#needed to align DebuggerDriver.c
#try testing balign here later
.4byte 0
.2byte 0
.byte 0

.global lbl_806658A0
lbl_806658A0:
	# ROM: 0x571480
	.4byte lbl_8053FFB8
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053FFB8
lbl_8053FFB8:
	.asciz "<< RVL_SDK - AI \trelease build: Feb 27 2009 10:01:30 (0x4302_145) >>"
	.balign 4
	
.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.skip 0x4 #needed to align DebuggerDriver.c

.global lbl_806675C8
lbl_806675C8:
	.skip 0x4
.global lbl_806675CC
lbl_806675CC:
	.skip 0x4
.global lbl_806675D0
lbl_806675D0:
	.skip 0x4
.global lbl_806675D4
lbl_806675D4:
	.skip 0x4
.global lbl_806675D8
lbl_806675D8:
	.skip 0x4
.global lbl_806675DC
lbl_806675DC:
	.skip 0x4
.global lbl_806675E0
lbl_806675E0:
	.skip 0x4
.global lbl_806675E4
lbl_806675E4:
	.skip 0x4
.global lbl_806675E8
lbl_806675E8:
	.skip 0x4
.global lbl_806675EC
lbl_806675EC:
	.skip 0x4
.global lbl_806675F0
lbl_806675F0:
	.skip 0x4
.global lbl_806675F4
lbl_806675F4:
	.skip 0x4
.global lbl_806675F8
lbl_806675F8:
	.skip 0x4
.global lbl_806675FC
lbl_806675FC:
	.skip 0x4
.global lbl_80667600
lbl_80667600:
	.skip 0x8