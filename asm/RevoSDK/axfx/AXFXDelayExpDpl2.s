.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global AXFXDelayExpGetMemSizeDpl2
AXFXDelayExpGetMemSizeDpl2:
/* 802D70C0 002A0680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D70C4 002A0684  C0 22 BA B8 */	lfs f1, lbl_8066BE38@sda21(r2)
/* 802D70C8 002A0688  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802D70CC 002A068C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802D70D0 002A0690  FC 00 00 1E */	fctiwz f0, f0
/* 802D70D4 002A0694  D8 01 00 08 */	stfd f0, 8(r1)
/* 802D70D8 002A0698  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D70DC 002A069C  54 03 20 36 */	slwi r3, r0, 4
/* 802D70E0 002A06A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D70E4 002A06A4  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXDelayExpInitDpl2
AXFXDelayExpInitDpl2:
/* 802D70F0 002A06B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D70F4 002A06B4  7C 08 02 A6 */	mflr r0
/* 802D70F8 002A06B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D70FC 002A06BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7100 002A06C0  4B FE 30 55 */	bl _savegpr_27
/* 802D7104 002A06C4  7C 7E 1B 78 */	mr r30, r3
/* 802D7108 002A06C8  48 08 18 A9 */	bl OSDisableInterrupts
/* 802D710C 002A06CC  7C 7F 1B 78 */	mr r31, r3
/* 802D7110 002A06D0  4B FF C8 D1 */	bl AXGetMode
/* 802D7114 002A06D4  28 03 00 02 */	cmplwi r3, 2
/* 802D7118 002A06D8  41 82 00 14 */	beq .L_802D712C
/* 802D711C 002A06DC  7F E3 FB 78 */	mr r3, r31
/* 802D7120 002A06E0  48 08 18 D1 */	bl OSRestoreInterrupts
/* 802D7124 002A06E4  38 60 00 00 */	li r3, 0
/* 802D7128 002A06E8  48 00 01 D4 */	b .L_802D72FC
.L_802D712C:
/* 802D712C 002A06EC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 802D7130 002A06F0  3B A0 00 01 */	li r29, 1
/* 802D7134 002A06F4  C0 02 BA BC */	lfs f0, lbl_8066BE3C@sda21(r2)
/* 802D7138 002A06F8  93 BE 00 3C */	stw r29, 0x3c(r30)
/* 802D713C 002A06FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802D7140 002A0700  4C 40 13 82 */	cror 2, 0, 2
/* 802D7144 002A0704  40 82 00 64 */	bne .L_802D71A8
/* 802D7148 002A0708  48 08 18 69 */	bl OSDisableInterrupts
/* 802D714C 002A070C  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802D7150 002A0710  7C 7B 1B 78 */	mr r27, r3
/* 802D7154 002A0714  3B 80 00 00 */	li r28, 0
/* 802D7158 002A0718  3B A0 00 00 */	li r29, 0
/* 802D715C 002A071C  60 00 00 01 */	ori r0, r0, 1
/* 802D7160 002A0720  90 1E 00 3C */	stw r0, 0x3c(r30)
.L_802D7164:
/* 802D7164 002A0724  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D7168 002A0728  2C 03 00 00 */	cmpwi r3, 0
/* 802D716C 002A072C  41 82 00 14 */	beq .L_802D7180
/* 802D7170 002A0730  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D7174 002A0734  7D 89 03 A6 */	mtctr r12
/* 802D7178 002A0738  4E 80 04 21 */	bctrl 
/* 802D717C 002A073C  93 BE 00 00 */	stw r29, 0(r30)
.L_802D7180:
/* 802D7180 002A0740  3B 9C 00 01 */	addi r28, r28, 1
/* 802D7184 002A0744  3B DE 00 04 */	addi r30, r30, 4
/* 802D7188 002A0748  28 1C 00 04 */	cmplwi r28, 4
/* 802D718C 002A074C  41 80 FF D8 */	blt .L_802D7164
/* 802D7190 002A0750  7F 63 DB 78 */	mr r3, r27
/* 802D7194 002A0754  48 08 18 5D */	bl OSRestoreInterrupts
/* 802D7198 002A0758  7F E3 FB 78 */	mr r3, r31
/* 802D719C 002A075C  48 08 18 55 */	bl OSRestoreInterrupts
/* 802D71A0 002A0760  38 60 00 00 */	li r3, 0
/* 802D71A4 002A0764  48 00 01 58 */	b .L_802D72FC
.L_802D71A8:
/* 802D71A8 002A0768  C0 02 BA B8 */	lfs f0, lbl_8066BE38@sda21(r2)
/* 802D71AC 002A076C  EC 20 00 72 */	fmuls f1, f0, f1
/* 802D71B0 002A0770  4B FE 2E 7D */	bl __cvt_fp2unsigned
/* 802D71B4 002A0774  2C 03 00 00 */	cmpwi r3, 0
/* 802D71B8 002A0778  90 7E 00 18 */	stw r3, 0x18(r30)
/* 802D71BC 002A077C  40 82 00 08 */	bne .L_802D71C4
/* 802D71C0 002A0780  93 BE 00 18 */	stw r29, 0x18(r30)
.L_802D71C4:
/* 802D71C4 002A0784  7F DC F3 78 */	mr r28, r30
/* 802D71C8 002A0788  3B 60 00 00 */	li r27, 0
.L_802D71CC:
/* 802D71CC 002A078C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802D71D0 002A0790  81 8D 97 40 */	lwz r12, lbl_806658C0@sda21(r13)
/* 802D71D4 002A0794  54 03 10 3A */	slwi r3, r0, 2
/* 802D71D8 002A0798  7D 89 03 A6 */	mtctr r12
/* 802D71DC 002A079C  4E 80 04 21 */	bctrl 
/* 802D71E0 002A07A0  2C 03 00 00 */	cmpwi r3, 0
/* 802D71E4 002A07A4  90 7C 00 00 */	stw r3, 0(r28)
/* 802D71E8 002A07A8  40 82 00 0C */	bne .L_802D71F4
/* 802D71EC 002A07AC  38 00 00 00 */	li r0, 0
/* 802D71F0 002A07B0  48 00 00 18 */	b .L_802D7208
.L_802D71F4:
/* 802D71F4 002A07B4  3B 7B 00 01 */	addi r27, r27, 1
/* 802D71F8 002A07B8  3B 9C 00 04 */	addi r28, r28, 4
/* 802D71FC 002A07BC  28 1B 00 04 */	cmplwi r27, 4
/* 802D7200 002A07C0  41 80 FF CC */	blt .L_802D71CC
/* 802D7204 002A07C4  38 00 00 01 */	li r0, 1
.L_802D7208:
/* 802D7208 002A07C8  2C 00 00 00 */	cmpwi r0, 0
/* 802D720C 002A07CC  40 82 00 64 */	bne .L_802D7270
/* 802D7210 002A07D0  48 08 17 A1 */	bl OSDisableInterrupts
/* 802D7214 002A07D4  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802D7218 002A07D8  7C 7C 1B 78 */	mr r28, r3
/* 802D721C 002A07DC  3B 60 00 00 */	li r27, 0
/* 802D7220 002A07E0  3B A0 00 00 */	li r29, 0
/* 802D7224 002A07E4  60 00 00 01 */	ori r0, r0, 1
/* 802D7228 002A07E8  90 1E 00 3C */	stw r0, 0x3c(r30)
.L_802D722C:
/* 802D722C 002A07EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D7230 002A07F0  2C 03 00 00 */	cmpwi r3, 0
/* 802D7234 002A07F4  41 82 00 14 */	beq .L_802D7248
/* 802D7238 002A07F8  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D723C 002A07FC  7D 89 03 A6 */	mtctr r12
/* 802D7240 002A0800  4E 80 04 21 */	bctrl 
/* 802D7244 002A0804  93 BE 00 00 */	stw r29, 0(r30)
.L_802D7248:
/* 802D7248 002A0808  3B 7B 00 01 */	addi r27, r27, 1
/* 802D724C 002A080C  3B DE 00 04 */	addi r30, r30, 4
/* 802D7250 002A0810  28 1B 00 04 */	cmplwi r27, 4
/* 802D7254 002A0814  41 80 FF D8 */	blt .L_802D722C
/* 802D7258 002A0818  7F 83 E3 78 */	mr r3, r28
/* 802D725C 002A081C  48 08 17 95 */	bl OSRestoreInterrupts
/* 802D7260 002A0820  7F E3 FB 78 */	mr r3, r31
/* 802D7264 002A0824  48 08 17 8D */	bl OSRestoreInterrupts
/* 802D7268 002A0828  38 60 00 00 */	li r3, 0
/* 802D726C 002A082C  48 00 00 90 */	b .L_802D72FC
.L_802D7270:
/* 802D7270 002A0830  7F C3 F3 78 */	mr r3, r30
/* 802D7274 002A0834  48 00 05 5D */	bl __InitParams
/* 802D7278 002A0838  2C 03 00 00 */	cmpwi r3, 0
/* 802D727C 002A083C  40 82 00 64 */	bne .L_802D72E0
/* 802D7280 002A0840  48 08 17 31 */	bl OSDisableInterrupts
/* 802D7284 002A0844  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802D7288 002A0848  7C 7C 1B 78 */	mr r28, r3
/* 802D728C 002A084C  3B 60 00 00 */	li r27, 0
/* 802D7290 002A0850  3B A0 00 00 */	li r29, 0
/* 802D7294 002A0854  60 00 00 01 */	ori r0, r0, 1
/* 802D7298 002A0858  90 1E 00 3C */	stw r0, 0x3c(r30)
.L_802D729C:
/* 802D729C 002A085C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D72A0 002A0860  2C 03 00 00 */	cmpwi r3, 0
/* 802D72A4 002A0864  41 82 00 14 */	beq .L_802D72B8
/* 802D72A8 002A0868  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D72AC 002A086C  7D 89 03 A6 */	mtctr r12
/* 802D72B0 002A0870  4E 80 04 21 */	bctrl 
/* 802D72B4 002A0874  93 BE 00 00 */	stw r29, 0(r30)
.L_802D72B8:
/* 802D72B8 002A0878  3B 7B 00 01 */	addi r27, r27, 1
/* 802D72BC 002A087C  3B DE 00 04 */	addi r30, r30, 4
/* 802D72C0 002A0880  28 1B 00 04 */	cmplwi r27, 4
/* 802D72C4 002A0884  41 80 FF D8 */	blt .L_802D729C
/* 802D72C8 002A0888  7F 83 E3 78 */	mr r3, r28
/* 802D72CC 002A088C  48 08 17 25 */	bl OSRestoreInterrupts
/* 802D72D0 002A0890  7F E3 FB 78 */	mr r3, r31
/* 802D72D4 002A0894  48 08 17 1D */	bl OSRestoreInterrupts
/* 802D72D8 002A0898  38 60 00 00 */	li r3, 0
/* 802D72DC 002A089C  48 00 00 20 */	b .L_802D72FC
.L_802D72E0:
/* 802D72E0 002A08A0  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802D72E4 002A08A4  7F E3 FB 78 */	mr r3, r31
/* 802D72E8 002A08A8  60 00 00 02 */	ori r0, r0, 2
/* 802D72EC 002A08AC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802D72F0 002A08B0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 802D72F4 002A08B4  48 08 16 FD */	bl OSRestoreInterrupts
/* 802D72F8 002A08B8  38 60 00 01 */	li r3, 1
.L_802D72FC:
/* 802D72FC 002A08BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7300 002A08C0  4B FE 2E A1 */	bl _restgpr_27
/* 802D7304 002A08C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D7308 002A08C8  7C 08 03 A6 */	mtlr r0
/* 802D730C 002A08CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D7310 002A08D0  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXDelayExpSettingsDpl2
AXFXDelayExpSettingsDpl2:
/* 802D7320 002A08E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D7324 002A08E4  7C 08 02 A6 */	mflr r0
/* 802D7328 002A08E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D732C 002A08EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7330 002A08F0  4B FE 2E 21 */	bl _savegpr_26
/* 802D7334 002A08F4  7C 7F 1B 78 */	mr r31, r3
/* 802D7338 002A08F8  48 08 16 79 */	bl OSDisableInterrupts
/* 802D733C 002A08FC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 802D7340 002A0900  7C 7A 1B 78 */	mr r26, r3
/* 802D7344 002A0904  60 00 00 01 */	ori r0, r0, 1
/* 802D7348 002A0908  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 802D734C 002A090C  48 08 16 65 */	bl OSDisableInterrupts
/* 802D7350 002A0910  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 802D7354 002A0914  7C 7C 1B 78 */	mr r28, r3
/* 802D7358 002A0918  7F FB FB 78 */	mr r27, r31
/* 802D735C 002A091C  3B A0 00 00 */	li r29, 0
/* 802D7360 002A0920  60 00 00 01 */	ori r0, r0, 1
/* 802D7364 002A0924  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 802D7368 002A0928  3B C0 00 00 */	li r30, 0
.L_802D736C:
/* 802D736C 002A092C  80 7B 00 00 */	lwz r3, 0(r27)
/* 802D7370 002A0930  2C 03 00 00 */	cmpwi r3, 0
/* 802D7374 002A0934  41 82 00 14 */	beq .L_802D7388
/* 802D7378 002A0938  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D737C 002A093C  7D 89 03 A6 */	mtctr r12
/* 802D7380 002A0940  4E 80 04 21 */	bctrl 
/* 802D7384 002A0944  93 DB 00 00 */	stw r30, 0(r27)
.L_802D7388:
/* 802D7388 002A0948  3B BD 00 01 */	addi r29, r29, 1
/* 802D738C 002A094C  3B 7B 00 04 */	addi r27, r27, 4
/* 802D7390 002A0950  28 1D 00 04 */	cmplwi r29, 4
/* 802D7394 002A0954  41 80 FF D8 */	blt .L_802D736C
/* 802D7398 002A0958  7F 83 E3 78 */	mr r3, r28
/* 802D739C 002A095C  48 08 16 55 */	bl OSRestoreInterrupts
/* 802D73A0 002A0960  7F E3 FB 78 */	mr r3, r31
/* 802D73A4 002A0964  4B FF FD 4D */	bl AXFXDelayExpInitDpl2
/* 802D73A8 002A0968  2C 03 00 00 */	cmpwi r3, 0
/* 802D73AC 002A096C  40 82 00 64 */	bne .L_802D7410
/* 802D73B0 002A0970  48 08 16 01 */	bl OSDisableInterrupts
/* 802D73B4 002A0974  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 802D73B8 002A0978  7C 7D 1B 78 */	mr r29, r3
/* 802D73BC 002A097C  3B 80 00 00 */	li r28, 0
/* 802D73C0 002A0980  3B C0 00 00 */	li r30, 0
/* 802D73C4 002A0984  60 00 00 01 */	ori r0, r0, 1
/* 802D73C8 002A0988  90 1F 00 3C */	stw r0, 0x3c(r31)
.L_802D73CC:
/* 802D73CC 002A098C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802D73D0 002A0990  2C 03 00 00 */	cmpwi r3, 0
/* 802D73D4 002A0994  41 82 00 14 */	beq .L_802D73E8
/* 802D73D8 002A0998  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D73DC 002A099C  7D 89 03 A6 */	mtctr r12
/* 802D73E0 002A09A0  4E 80 04 21 */	bctrl 
/* 802D73E4 002A09A4  93 DF 00 00 */	stw r30, 0(r31)
.L_802D73E8:
/* 802D73E8 002A09A8  3B 9C 00 01 */	addi r28, r28, 1
/* 802D73EC 002A09AC  3B FF 00 04 */	addi r31, r31, 4
/* 802D73F0 002A09B0  28 1C 00 04 */	cmplwi r28, 4
/* 802D73F4 002A09B4  41 80 FF D8 */	blt .L_802D73CC
/* 802D73F8 002A09B8  7F A3 EB 78 */	mr r3, r29
/* 802D73FC 002A09BC  48 08 15 F5 */	bl OSRestoreInterrupts
/* 802D7400 002A09C0  7F 43 D3 78 */	mr r3, r26
/* 802D7404 002A09C4  48 08 15 ED */	bl OSRestoreInterrupts
/* 802D7408 002A09C8  38 60 00 00 */	li r3, 0
/* 802D740C 002A09CC  48 00 00 20 */	b .L_802D742C
.L_802D7410:
/* 802D7410 002A09D0  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 802D7414 002A09D4  7F 43 D3 78 */	mr r3, r26
/* 802D7418 002A09D8  60 00 00 02 */	ori r0, r0, 2
/* 802D741C 002A09DC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802D7420 002A09E0  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 802D7424 002A09E4  48 08 15 CD */	bl OSRestoreInterrupts
/* 802D7428 002A09E8  38 60 00 01 */	li r3, 1
.L_802D742C:
/* 802D742C 002A09EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7430 002A09F0  4B FE 2D 6D */	bl _restgpr_26
/* 802D7434 002A09F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D7438 002A09F8  7C 08 03 A6 */	mtlr r0
/* 802D743C 002A09FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D7440 002A0A00  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXDelayExpSettingsUpdateDpl2
AXFXDelayExpSettingsUpdateDpl2:
/* 802D7450 002A0A10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D7454 002A0A14  7C 08 02 A6 */	mflr r0
/* 802D7458 002A0A18  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D745C 002A0A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7460 002A0A20  4B FE 2C F5 */	bl _savegpr_27
/* 802D7464 002A0A24  7C 7B 1B 78 */	mr r27, r3
/* 802D7468 002A0A28  48 08 15 49 */	bl OSDisableInterrupts
/* 802D746C 002A0A2C  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 802D7470 002A0A30  7C 7C 1B 78 */	mr r28, r3
/* 802D7474 002A0A34  7F 63 DB 78 */	mr r3, r27
/* 802D7478 002A0A38  60 00 00 01 */	ori r0, r0, 1
/* 802D747C 002A0A3C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 802D7480 002A0A40  48 00 03 51 */	bl __InitParams
/* 802D7484 002A0A44  2C 03 00 00 */	cmpwi r3, 0
/* 802D7488 002A0A48  40 82 00 64 */	bne .L_802D74EC
/* 802D748C 002A0A4C  48 08 15 25 */	bl OSDisableInterrupts
/* 802D7490 002A0A50  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 802D7494 002A0A54  7C 7D 1B 78 */	mr r29, r3
/* 802D7498 002A0A58  3B C0 00 00 */	li r30, 0
/* 802D749C 002A0A5C  3B E0 00 00 */	li r31, 0
/* 802D74A0 002A0A60  60 00 00 01 */	ori r0, r0, 1
/* 802D74A4 002A0A64  90 1B 00 3C */	stw r0, 0x3c(r27)
.L_802D74A8:
/* 802D74A8 002A0A68  80 7B 00 00 */	lwz r3, 0(r27)
/* 802D74AC 002A0A6C  2C 03 00 00 */	cmpwi r3, 0
/* 802D74B0 002A0A70  41 82 00 14 */	beq .L_802D74C4
/* 802D74B4 002A0A74  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D74B8 002A0A78  7D 89 03 A6 */	mtctr r12
/* 802D74BC 002A0A7C  4E 80 04 21 */	bctrl 
/* 802D74C0 002A0A80  93 FB 00 00 */	stw r31, 0(r27)
.L_802D74C4:
/* 802D74C4 002A0A84  3B DE 00 01 */	addi r30, r30, 1
/* 802D74C8 002A0A88  3B 7B 00 04 */	addi r27, r27, 4
/* 802D74CC 002A0A8C  28 1E 00 04 */	cmplwi r30, 4
/* 802D74D0 002A0A90  41 80 FF D8 */	blt .L_802D74A8
/* 802D74D4 002A0A94  7F A3 EB 78 */	mr r3, r29
/* 802D74D8 002A0A98  48 08 15 19 */	bl OSRestoreInterrupts
/* 802D74DC 002A0A9C  7F 83 E3 78 */	mr r3, r28
/* 802D74E0 002A0AA0  48 08 15 11 */	bl OSRestoreInterrupts
/* 802D74E4 002A0AA4  38 60 00 00 */	li r3, 0
/* 802D74E8 002A0AA8  48 00 00 20 */	b .L_802D7508
.L_802D74EC:
/* 802D74EC 002A0AAC  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 802D74F0 002A0AB0  7F 83 E3 78 */	mr r3, r28
/* 802D74F4 002A0AB4  60 00 00 02 */	ori r0, r0, 2
/* 802D74F8 002A0AB8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 802D74FC 002A0ABC  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 802D7500 002A0AC0  48 08 14 F1 */	bl OSRestoreInterrupts
/* 802D7504 002A0AC4  38 60 00 01 */	li r3, 1
.L_802D7508:
/* 802D7508 002A0AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D750C 002A0ACC  4B FE 2C 95 */	bl _restgpr_27
/* 802D7510 002A0AD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D7514 002A0AD4  7C 08 03 A6 */	mtlr r0
/* 802D7518 002A0AD8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D751C 002A0ADC  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXDelayExpShutdownDpl2
AXFXDelayExpShutdownDpl2:
/* 802D7520 002A0AE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D7524 002A0AE4  7C 08 02 A6 */	mflr r0
/* 802D7528 002A0AE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D752C 002A0AEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D7530 002A0AF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D7534 002A0AF4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D7538 002A0AF8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D753C 002A0AFC  7C 7C 1B 78 */	mr r28, r3
/* 802D7540 002A0B00  48 08 14 71 */	bl OSDisableInterrupts
/* 802D7544 002A0B04  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 802D7548 002A0B08  7C 7D 1B 78 */	mr r29, r3
/* 802D754C 002A0B0C  3B C0 00 00 */	li r30, 0
/* 802D7550 002A0B10  3B E0 00 00 */	li r31, 0
/* 802D7554 002A0B14  60 00 00 01 */	ori r0, r0, 1
/* 802D7558 002A0B18  90 1C 00 3C */	stw r0, 0x3c(r28)
.L_802D755C:
/* 802D755C 002A0B1C  80 7C 00 00 */	lwz r3, 0(r28)
/* 802D7560 002A0B20  2C 03 00 00 */	cmpwi r3, 0
/* 802D7564 002A0B24  41 82 00 14 */	beq .L_802D7578
/* 802D7568 002A0B28  81 8D 97 44 */	lwz r12, lbl_806658C4@sda21(r13)
/* 802D756C 002A0B2C  7D 89 03 A6 */	mtctr r12
/* 802D7570 002A0B30  4E 80 04 21 */	bctrl 
/* 802D7574 002A0B34  93 FC 00 00 */	stw r31, 0(r28)
.L_802D7578:
/* 802D7578 002A0B38  3B DE 00 01 */	addi r30, r30, 1
/* 802D757C 002A0B3C  3B 9C 00 04 */	addi r28, r28, 4
/* 802D7580 002A0B40  28 1E 00 04 */	cmplwi r30, 4
/* 802D7584 002A0B44  41 80 FF D8 */	blt .L_802D755C
/* 802D7588 002A0B48  7F A3 EB 78 */	mr r3, r29
/* 802D758C 002A0B4C  48 08 14 65 */	bl OSRestoreInterrupts
/* 802D7590 002A0B50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D7594 002A0B54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D7598 002A0B58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D759C 002A0B5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D75A0 002A0B60  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D75A4 002A0B64  7C 08 03 A6 */	mtlr r0
/* 802D75A8 002A0B68  38 21 00 20 */	addi r1, r1, 0x20
/* 802D75AC 002A0B6C  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXDelayExpCallbackDpl2
AXFXDelayExpCallbackDpl2:
/* 802D75B0 002A0B70  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802D75B4 002A0B74  7C 08 02 A6 */	mflr r0
/* 802D75B8 002A0B78  90 01 00 84 */	stw r0, 0x84(r1)
/* 802D75BC 002A0B7C  39 61 00 80 */	addi r11, r1, 0x80
/* 802D75C0 002A0B80  4B FE 2B 89 */	bl _savegpr_24
/* 802D75C4 002A0B84  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 802D75C8 002A0B88  2C 00 00 00 */	cmpwi r0, 0
/* 802D75CC 002A0B8C  41 82 00 10 */	beq .L_802D75DC
/* 802D75D0 002A0B90  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 802D75D4 002A0B94  90 04 00 3C */	stw r0, 0x3c(r4)
/* 802D75D8 002A0B98  48 00 01 D8 */	b .L_802D77B0
.L_802D75DC:
/* 802D75DC 002A0B9C  81 04 00 50 */	lwz r8, 0x50(r4)
/* 802D75E0 002A0BA0  80 04 00 30 */	lwz r0, 0x30(r4)
/* 802D75E4 002A0BA4  80 E3 00 00 */	lwz r7, 0(r3)
/* 802D75E8 002A0BA8  2C 08 00 00 */	cmpwi r8, 0
/* 802D75EC 002A0BAC  80 C3 00 04 */	lwz r6, 4(r3)
/* 802D75F0 002A0BB0  21 60 00 80 */	subfic r11, r0, 0x80
/* 802D75F4 002A0BB4  80 A3 00 08 */	lwz r5, 8(r3)
/* 802D75F8 002A0BB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802D75FC 002A0BBC  90 E1 00 48 */	stw r7, 0x48(r1)
/* 802D7600 002A0BC0  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 802D7604 002A0BC4  90 A1 00 50 */	stw r5, 0x50(r1)
/* 802D7608 002A0BC8  90 61 00 54 */	stw r3, 0x54(r1)
/* 802D760C 002A0BCC  41 82 00 24 */	beq .L_802D7630
/* 802D7610 002A0BD0  80 E8 00 00 */	lwz r7, 0(r8)
/* 802D7614 002A0BD4  80 C8 00 04 */	lwz r6, 4(r8)
/* 802D7618 002A0BD8  80 A8 00 08 */	lwz r5, 8(r8)
/* 802D761C 002A0BDC  80 68 00 0C */	lwz r3, 0xc(r8)
/* 802D7620 002A0BE0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802D7624 002A0BE4  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 802D7628 002A0BE8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802D762C 002A0BEC  90 61 00 24 */	stw r3, 0x24(r1)
.L_802D7630:
/* 802D7630 002A0BF0  80 64 00 54 */	lwz r3, 0x54(r4)
/* 802D7634 002A0BF4  2C 03 00 00 */	cmpwi r3, 0
/* 802D7638 002A0BF8  41 82 00 24 */	beq .L_802D765C
/* 802D763C 002A0BFC  80 E3 00 00 */	lwz r7, 0(r3)
/* 802D7640 002A0C00  80 C3 00 04 */	lwz r6, 4(r3)
/* 802D7644 002A0C04  80 A3 00 08 */	lwz r5, 8(r3)
/* 802D7648 002A0C08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802D764C 002A0C0C  90 E1 00 08 */	stw r7, 8(r1)
/* 802D7650 002A0C10  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D7654 002A0C14  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802D7658 002A0C18  90 61 00 14 */	stw r3, 0x14(r1)
.L_802D765C:
/* 802D765C 002A0C1C  39 40 00 00 */	li r10, 0
/* 802D7660 002A0C20  3B E0 00 00 */	li r31, 0
/* 802D7664 002A0C24  39 80 00 04 */	li r12, 4
.L_802D7668:
/* 802D7668 002A0C28  7C 83 23 78 */	mr r3, r4
/* 802D766C 002A0C2C  38 A1 00 38 */	addi r5, r1, 0x38
/* 802D7670 002A0C30  38 C1 00 18 */	addi r6, r1, 0x18
/* 802D7674 002A0C34  38 E1 00 48 */	addi r7, r1, 0x48
/* 802D7678 002A0C38  39 01 00 28 */	addi r8, r1, 0x28
/* 802D767C 002A0C3C  39 21 00 08 */	addi r9, r1, 8
/* 802D7680 002A0C40  7D 89 03 A6 */	mtctr r12
.L_802D7684:
/* 802D7684 002A0C44  83 24 00 10 */	lwz r25, 0x10(r4)
/* 802D7688 002A0C48  83 04 00 50 */	lwz r24, 0x50(r4)
/* 802D768C 002A0C4C  83 43 00 00 */	lwz r26, 0(r3)
/* 802D7690 002A0C50  57 39 10 3A */	slwi r25, r25, 2
/* 802D7694 002A0C54  2C 18 00 00 */	cmpwi r24, 0
/* 802D7698 002A0C58  7F 1A C8 2E */	lwzx r24, r26, r25
/* 802D769C 002A0C5C  93 05 00 00 */	stw r24, 0(r5)
/* 802D76A0 002A0C60  41 82 00 38 */	beq .L_802D76D8
/* 802D76A4 002A0C64  83 26 00 00 */	lwz r25, 0(r6)
/* 802D76A8 002A0C68  83 47 00 00 */	lwz r26, 0(r7)
/* 802D76AC 002A0C6C  83 19 00 00 */	lwz r24, 0(r25)
/* 802D76B0 002A0C70  3B 39 00 04 */	addi r25, r25, 4
/* 802D76B4 002A0C74  83 5A 00 00 */	lwz r26, 0(r26)
/* 802D76B8 002A0C78  83 63 00 20 */	lwz r27, 0x20(r3)
/* 802D76BC 002A0C7C  7F 1A C2 14 */	add r24, r26, r24
/* 802D76C0 002A0C80  93 26 00 00 */	stw r25, 0(r6)
/* 802D76C4 002A0C84  7F 20 D9 D6 */	mullw r25, r0, r27
/* 802D76C8 002A0C88  7F 0B C1 D6 */	mullw r24, r11, r24
/* 802D76CC 002A0C8C  7F 19 C2 14 */	add r24, r25, r24
/* 802D76D0 002A0C90  93 08 00 00 */	stw r24, 0(r8)
/* 802D76D4 002A0C94  48 00 00 20 */	b .L_802D76F4
.L_802D76D8:
/* 802D76D8 002A0C98  83 27 00 00 */	lwz r25, 0(r7)
/* 802D76DC 002A0C9C  83 03 00 20 */	lwz r24, 0x20(r3)
/* 802D76E0 002A0CA0  83 39 00 00 */	lwz r25, 0(r25)
/* 802D76E4 002A0CA4  7F 00 C1 D6 */	mullw r24, r0, r24
/* 802D76E8 002A0CA8  7F 2B C9 D6 */	mullw r25, r11, r25
/* 802D76EC 002A0CAC  7F 19 C2 14 */	add r24, r25, r24
/* 802D76F0 002A0CB0  93 08 00 00 */	stw r24, 0(r8)
.L_802D76F4:
/* 802D76F4 002A0CB4  83 08 00 00 */	lwz r24, 0(r8)
/* 802D76F8 002A0CB8  83 A7 00 00 */	lwz r29, 0(r7)
/* 802D76FC 002A0CBC  7F 18 3E 70 */	srawi r24, r24, 7
/* 802D7700 002A0CC0  93 03 00 20 */	stw r24, 0x20(r3)
/* 802D7704 002A0CC4  3B 9D 00 04 */	addi r28, r29, 4
/* 802D7708 002A0CC8  83 25 00 00 */	lwz r25, 0(r5)
/* 802D770C 002A0CCC  83 44 00 1C */	lwz r26, 0x1c(r4)
/* 802D7710 002A0CD0  83 C4 00 10 */	lwz r30, 0x10(r4)
/* 802D7714 002A0CD4  7F 5A C9 D6 */	mullw r26, r26, r25
/* 802D7718 002A0CD8  93 87 00 00 */	stw r28, 0(r7)
/* 802D771C 002A0CDC  83 63 00 00 */	lwz r27, 0(r3)
/* 802D7720 002A0CE0  57 DE 10 3A */	slwi r30, r30, 2
/* 802D7724 002A0CE4  93 08 00 00 */	stw r24, 0(r8)
/* 802D7728 002A0CE8  7F 5C 3E 70 */	srawi r28, r26, 7
/* 802D772C 002A0CEC  7F 98 E2 14 */	add r28, r24, r28
/* 802D7730 002A0CF0  7F 9B F1 2E */	stwx r28, r27, r30
/* 802D7734 002A0CF4  83 84 00 34 */	lwz r28, 0x34(r4)
/* 802D7738 002A0CF8  7F 9C C9 D6 */	mullw r28, r28, r25
/* 802D773C 002A0CFC  7F 9C 3E 70 */	srawi r28, r28, 7
/* 802D7740 002A0D00  93 9D 00 00 */	stw r28, 0(r29)
/* 802D7744 002A0D04  83 84 00 54 */	lwz r28, 0x54(r4)
/* 802D7748 002A0D08  2C 1C 00 00 */	cmpwi r28, 0
/* 802D774C 002A0D0C  41 82 00 20 */	beq .L_802D776C
/* 802D7750 002A0D10  83 84 00 38 */	lwz r28, 0x38(r4)
/* 802D7754 002A0D14  83 A9 00 00 */	lwz r29, 0(r9)
/* 802D7758 002A0D18  7F 9C C9 D6 */	mullw r28, r28, r25
/* 802D775C 002A0D1C  3B DD 00 04 */	addi r30, r29, 4
/* 802D7760 002A0D20  93 C9 00 00 */	stw r30, 0(r9)
/* 802D7764 002A0D24  7F 9E 3E 70 */	srawi r30, r28, 7
/* 802D7768 002A0D28  93 DD 00 00 */	stw r30, 0(r29)
.L_802D776C:
/* 802D776C 002A0D2C  38 63 00 04 */	addi r3, r3, 4
/* 802D7770 002A0D30  38 A5 00 04 */	addi r5, r5, 4
/* 802D7774 002A0D34  38 C6 00 04 */	addi r6, r6, 4
/* 802D7778 002A0D38  38 E7 00 04 */	addi r7, r7, 4
/* 802D777C 002A0D3C  39 08 00 04 */	addi r8, r8, 4
/* 802D7780 002A0D40  39 29 00 04 */	addi r9, r9, 4
/* 802D7784 002A0D44  42 00 FF 00 */	bdnz .L_802D7684
/* 802D7788 002A0D48  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 802D778C 002A0D4C  80 64 00 14 */	lwz r3, 0x14(r4)
/* 802D7790 002A0D50  38 A5 00 01 */	addi r5, r5, 1
/* 802D7794 002A0D54  90 A4 00 10 */	stw r5, 0x10(r4)
/* 802D7798 002A0D58  7C 05 18 40 */	cmplw r5, r3
/* 802D779C 002A0D5C  41 80 00 08 */	blt .L_802D77A4
/* 802D77A0 002A0D60  93 E4 00 10 */	stw r31, 0x10(r4)
.L_802D77A4:
/* 802D77A4 002A0D64  39 4A 00 01 */	addi r10, r10, 1
/* 802D77A8 002A0D68  28 0A 00 60 */	cmplwi r10, 0x60
/* 802D77AC 002A0D6C  41 80 FE BC */	blt .L_802D7668
.L_802D77B0:
/* 802D77B0 002A0D70  39 61 00 80 */	addi r11, r1, 0x80
/* 802D77B4 002A0D74  4B FE 29 E1 */	bl _restgpr_24
/* 802D77B8 002A0D78  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802D77BC 002A0D7C  7C 08 03 A6 */	mtlr r0
/* 802D77C0 002A0D80  38 21 00 80 */	addi r1, r1, 0x80
/* 802D77C4 002A0D84  4E 80 00 20 */	blr 

.balign 16, 0
__InitParams:
/* 802D77D0 002A0D90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D77D4 002A0D94  7C 08 02 A6 */	mflr r0
/* 802D77D8 002A0D98  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D77DC 002A0D9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802D77E0 002A0DA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802D77E4 002A0DA4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802D77E8 002A0DA8  93 81 00 20 */	stw r28, 0x20(r1)
/* 802D77EC 002A0DAC  7C 7C 1B 78 */	mr r28, r3
/* 802D77F0 002A0DB0  C0 63 00 44 */	lfs f3, 0x44(r3)
/* 802D77F4 002A0DB4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802D77F8 002A0DB8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802D77FC 002A0DBC  40 81 00 0C */	ble .L_802D7808
/* 802D7800 002A0DC0  38 60 00 00 */	li r3, 0
/* 802D7804 002A0DC4  48 00 01 64 */	b .L_802D7968
.L_802D7808:
/* 802D7808 002A0DC8  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802D780C 002A0DCC  C0 42 BA BC */	lfs f2, lbl_8066BE3C@sda21(r2)
/* 802D7810 002A0DD0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D7814 002A0DD4  41 80 00 14 */	blt .L_802D7828
/* 802D7818 002A0DD8  C0 22 BA C0 */	lfs f1, lbl_8066BE40@sda21(r2)
/* 802D781C 002A0DDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D7820 002A0DE0  4C 41 13 82 */	cror 2, 1, 2
/* 802D7824 002A0DE4  40 82 00 0C */	bne .L_802D7830
.L_802D7828:
/* 802D7828 002A0DE8  38 60 00 00 */	li r3, 0
/* 802D782C 002A0DEC  48 00 01 3C */	b .L_802D7968
.L_802D7830:
/* 802D7830 002A0DF0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 802D7834 002A0DF4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D7838 002A0DF8  41 80 00 0C */	blt .L_802D7844
/* 802D783C 002A0DFC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D7840 002A0E00  40 81 00 0C */	ble .L_802D784C
.L_802D7844:
/* 802D7844 002A0E04  38 60 00 00 */	li r3, 0
/* 802D7848 002A0E08  48 00 01 20 */	b .L_802D7968
.L_802D784C:
/* 802D784C 002A0E0C  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 802D7850 002A0E10  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D7854 002A0E14  41 80 00 0C */	blt .L_802D7860
/* 802D7858 002A0E18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D785C 002A0E1C  40 81 00 0C */	ble .L_802D7868
.L_802D7860:
/* 802D7860 002A0E20  38 60 00 00 */	li r3, 0
/* 802D7864 002A0E24  48 00 01 04 */	b .L_802D7968
.L_802D7868:
/* 802D7868 002A0E28  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 802D786C 002A0E2C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802D7870 002A0E30  41 80 00 0C */	blt .L_802D787C
/* 802D7874 002A0E34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802D7878 002A0E38  40 81 00 0C */	ble .L_802D7884
.L_802D787C:
/* 802D787C 002A0E3C  38 60 00 00 */	li r3, 0
/* 802D7880 002A0E40  48 00 00 E8 */	b .L_802D7968
.L_802D7884:
/* 802D7884 002A0E44  C0 02 BA B8 */	lfs f0, lbl_8066BE38@sda21(r2)
/* 802D7888 002A0E48  EC 20 00 F2 */	fmuls f1, f0, f3
/* 802D788C 002A0E4C  4B FE 27 A1 */	bl __cvt_fp2unsigned
/* 802D7890 002A0E50  2C 03 00 00 */	cmpwi r3, 0
/* 802D7894 002A0E54  90 7C 00 14 */	stw r3, 0x14(r28)
/* 802D7898 002A0E58  40 82 00 0C */	bne .L_802D78A4
/* 802D789C 002A0E5C  38 00 00 01 */	li r0, 1
/* 802D78A0 002A0E60  90 1C 00 14 */	stw r0, 0x14(r28)
.L_802D78A4:
/* 802D78A4 002A0E64  C0 22 BA C4 */	lfs f1, lbl_8066BE44@sda21(r2)
/* 802D78A8 002A0E68  38 00 00 00 */	li r0, 0
/* 802D78AC 002A0E6C  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 802D78B0 002A0E70  C0 42 BA C0 */	lfs f2, lbl_8066BE40@sda21(r2)
/* 802D78B4 002A0E74  EC 61 00 32 */	fmuls f3, f1, f0
/* 802D78B8 002A0E78  C0 3C 00 4C */	lfs f1, 0x4c(r28)
/* 802D78BC 002A0E7C  C0 02 BA C8 */	lfs f0, lbl_8066BE48@sda21(r2)
/* 802D78C0 002A0E80  EC 42 08 28 */	fsubs f2, f2, f1
/* 802D78C4 002A0E84  90 1C 00 10 */	stw r0, 0x10(r28)
/* 802D78C8 002A0E88  FC 20 18 1E */	fctiwz f1, f3
/* 802D78CC 002A0E8C  D8 21 00 08 */	stfd f1, 8(r1)
/* 802D78D0 002A0E90  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802D78D4 002A0E94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D78D8 002A0E98  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 802D78DC 002A0E9C  40 81 00 08 */	ble .L_802D78E4
/* 802D78E0 002A0EA0  FC 40 00 90 */	fmr f2, f0
.L_802D78E4:
/* 802D78E4 002A0EA4  C0 02 BA C4 */	lfs f0, lbl_8066BE44@sda21(r2)
/* 802D78E8 002A0EA8  7F 9E E3 78 */	mr r30, r28
/* 802D78EC 002A0EAC  3B A0 00 00 */	li r29, 0
/* 802D78F0 002A0EB0  3B E0 00 00 */	li r31, 0
/* 802D78F4 002A0EB4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802D78F8 002A0EB8  FC 00 00 1E */	fctiwz f0, f0
/* 802D78FC 002A0EBC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802D7900 002A0EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D7904 002A0EC4  90 1C 00 30 */	stw r0, 0x30(r28)
.L_802D7908:
/* 802D7908 002A0EC8  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 802D790C 002A0ECC  38 80 00 00 */	li r4, 0
/* 802D7910 002A0ED0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802D7914 002A0ED4  54 05 10 3A */	slwi r5, r0, 2
/* 802D7918 002A0ED8  4B D2 CA 39 */	bl memset
/* 802D791C 002A0EDC  3B BD 00 01 */	addi r29, r29, 1
/* 802D7920 002A0EE0  93 FE 00 20 */	stw r31, 0x20(r30)
/* 802D7924 002A0EE4  28 1D 00 04 */	cmplwi r29, 4
/* 802D7928 002A0EE8  3B DE 00 04 */	addi r30, r30, 4
/* 802D792C 002A0EEC  41 80 FF DC */	blt .L_802D7908
/* 802D7930 002A0EF0  C0 42 BA C4 */	lfs f2, lbl_8066BE44@sda21(r2)
/* 802D7934 002A0EF4  38 60 00 01 */	li r3, 1
/* 802D7938 002A0EF8  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 802D793C 002A0EFC  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 802D7940 002A0F00  EC 22 00 72 */	fmuls f1, f2, f1
/* 802D7944 002A0F04  EC 02 00 32 */	fmuls f0, f2, f0
/* 802D7948 002A0F08  FC 20 08 1E */	fctiwz f1, f1
/* 802D794C 002A0F0C  FC 00 00 1E */	fctiwz f0, f0
/* 802D7950 002A0F10  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 802D7954 002A0F14  D8 01 00 08 */	stfd f0, 8(r1)
/* 802D7958 002A0F18  80 81 00 14 */	lwz r4, 0x14(r1)
/* 802D795C 002A0F1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D7960 002A0F20  90 9C 00 34 */	stw r4, 0x34(r28)
/* 802D7964 002A0F24  90 1C 00 38 */	stw r0, 0x38(r28)
.L_802D7968:
/* 802D7968 002A0F28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D796C 002A0F2C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802D7970 002A0F30  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802D7974 002A0F34  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802D7978 002A0F38  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802D797C 002A0F3C  7C 08 03 A6 */	mtlr r0
/* 802D7980 002A0F40  38 21 00 30 */	addi r1, r1, 0x30
/* 802D7984 002A0F44  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0
.global lbl_8066BE38
lbl_8066BE38:
	# ROM: 0x575C98
	.4byte 0x42000000


.global lbl_8066BE3C
lbl_8066BE3C:
	# ROM: 0x575C9C
	.4byte 0


.global lbl_8066BE40
lbl_8066BE40:
	# ROM: 0x575CA0
	.float 1.0


.global lbl_8066BE44
lbl_8066BE44:
	# ROM: 0x575CA4
	.4byte 0x43000000


.global lbl_8066BE48
lbl_8066BE48:
	.4byte 0x3F733333
	.4byte 0