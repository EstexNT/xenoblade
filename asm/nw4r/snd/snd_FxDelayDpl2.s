.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__Q34nw4r3snd11FxDelayDpl2Fv
__ct__Q34nw4r3snd11FxDelayDpl2Fv:
/* 80415FB0 003DF570  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80415FB4 003DF574  7C 08 02 A6 */	mflr r0
/* 80415FB8 003DF578  3C A0 80 57 */	lis r5, lbl_8056E0A0@ha
/* 80415FBC 003DF57C  C0 42 C4 00 */	lfs f2, lbl_8066C780@sda21(r2)
/* 80415FC0 003DF580  90 01 00 34 */	stw r0, 0x34(r1)
/* 80415FC4 003DF584  38 00 00 00 */	li r0, 0
/* 80415FC8 003DF588  C0 02 C4 08 */	lfs f0, lbl_8066C788@sda21(r2)
/* 80415FCC 003DF58C  38 A5 E0 A0 */	addi r5, r5, lbl_8056E0A0@l
/* 80415FD0 003DF590  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80415FD4 003DF594  7C 7F 1B 78 */	mr r31, r3
/* 80415FD8 003DF598  C0 22 C4 04 */	lfs f1, lbl_8066C784@sda21(r2)
/* 80415FDC 003DF59C  38 81 00 08 */	addi r4, r1, 8
/* 80415FE0 003DF5A0  90 03 00 04 */	stw r0, 4(r3)
/* 80415FE4 003DF5A4  90 03 00 08 */	stw r0, 8(r3)
/* 80415FE8 003DF5A8  90 A3 00 00 */	stw r5, 0(r3)
/* 80415FEC 003DF5AC  98 03 00 0C */	stb r0, 0xc(r3)
/* 80415FF0 003DF5B0  90 03 00 14 */	stw r0, 0x14(r3)
/* 80415FF4 003DF5B4  90 03 00 18 */	stw r0, 0x18(r3)
/* 80415FF8 003DF5B8  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 80415FFC 003DF5BC  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80416000 003DF5C0  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80416004 003DF5C4  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 80416008 003DF5C8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8041600C 003DF5CC  D0 41 00 08 */	stfs f2, 8(r1)
/* 80416010 003DF5D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80416014 003DF5D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80416018 003DF5D8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8041601C 003DF5DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80416020 003DF5E0  48 00 02 25 */	bl SetParam__Q34nw4r3snd11FxDelayDpl2FRCQ44nw4r3snd6detail12FxDelayParam
/* 80416024 003DF5E4  7F E3 FB 78 */	mr r3, r31
/* 80416028 003DF5E8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8041602C 003DF5EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80416030 003DF5F0  7C 08 03 A6 */	mtlr r0
/* 80416034 003DF5F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80416038 003DF5F8  4E 80 00 20 */	blr 

.global GetRequiredMemSize__Q34nw4r3snd11FxDelayDpl2Fv
GetRequiredMemSize__Q34nw4r3snd11FxDelayDpl2Fv:
/* 8041603C 003DF5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416040 003DF600  7C 08 02 A6 */	mflr r0
/* 80416044 003DF604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416048 003DF608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041604C 003DF60C  7C 7F 1B 78 */	mr r31, r3
/* 80416050 003DF610  38 63 00 30 */	addi r3, r3, 0x30
/* 80416054 003DF614  4B EC 05 9D */	bl AXFXDelayExpGetMemSize
/* 80416058 003DF618  38 03 00 87 */	addi r0, r3, 0x87
/* 8041605C 003DF61C  38 7F 00 88 */	addi r3, r31, 0x88
/* 80416060 003DF620  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80416064 003DF624  4B EC 10 5D */	bl AXFXDelayExpGetMemSizeDpl2
/* 80416068 003DF628  38 03 00 87 */	addi r0, r3, 0x87
/* 8041606C 003DF62C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80416070 003DF630  7C 03 F8 40 */	cmplw r3, r31
/* 80416074 003DF634  40 80 00 08 */	bge lbl_8041607C
/* 80416078 003DF638  7F E3 FB 78 */	mr r3, r31
lbl_8041607C:
/* 8041607C 003DF63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416080 003DF640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416084 003DF644  7C 08 03 A6 */	mtlr r0
/* 80416088 003DF648  38 21 00 10 */	addi r1, r1, 0x10
/* 8041608C 003DF64C  4E 80 00 20 */	blr 

.global AssignWorkBuffer__Q34nw4r3snd11FxDelayDpl2FPvUl
AssignWorkBuffer__Q34nw4r3snd11FxDelayDpl2FPvUl:
/* 80416090 003DF650  38 63 00 14 */	addi r3, r3, 0x14
/* 80416094 003DF654  4B FF B5 20 */	b CreateHeap__Q44nw4r3snd6detail8AxfxImplFPvUl

.global ReleaseWorkBuffer__Q34nw4r3snd11FxDelayDpl2Fv
ReleaseWorkBuffer__Q34nw4r3snd11FxDelayDpl2Fv:
/* 80416098 003DF658  38 63 00 14 */	addi r3, r3, 0x14
/* 8041609C 003DF65C  4B FF B5 80 */	b DestroyHeap__Q44nw4r3snd6detail8AxfxImplFv

.global StartUp__Q34nw4r3snd11FxDelayDpl2Fv
StartUp__Q34nw4r3snd11FxDelayDpl2Fv:
/* 804160A0 003DF660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804160A4 003DF664  7C 08 02 A6 */	mflr r0
/* 804160A8 003DF668  90 01 00 24 */	stw r0, 0x24(r1)
/* 804160AC 003DF66C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804160B0 003DF670  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804160B4 003DF674  7C 7E 1B 78 */	mr r30, r3
/* 804160B8 003DF678  38 63 00 30 */	addi r3, r3, 0x30
/* 804160BC 003DF67C  4B EC 05 35 */	bl AXFXDelayExpGetMemSize
/* 804160C0 003DF680  38 03 00 87 */	addi r0, r3, 0x87
/* 804160C4 003DF684  38 7E 00 88 */	addi r3, r30, 0x88
/* 804160C8 003DF688  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 804160CC 003DF68C  4B EC 0F F5 */	bl AXFXDelayExpGetMemSizeDpl2
/* 804160D0 003DF690  38 03 00 87 */	addi r0, r3, 0x87
/* 804160D4 003DF694  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 804160D8 003DF698  7C 03 F8 40 */	cmplw r3, r31
/* 804160DC 003DF69C  40 80 00 08 */	bge lbl_804160E4
/* 804160E0 003DF6A0  7F E3 FB 78 */	mr r3, r31
lbl_804160E4:
/* 804160E4 003DF6A4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 804160E8 003DF6A8  2C 04 00 00 */	cmpwi r4, 0
/* 804160EC 003DF6AC  40 82 00 0C */	bne lbl_804160F8
/* 804160F0 003DF6B0  38 00 00 00 */	li r0, 0
/* 804160F4 003DF6B4  48 00 00 0C */	b lbl_80416100
lbl_804160F8:
/* 804160F8 003DF6B8  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 804160FC 003DF6BC  7C 04 00 50 */	subf r0, r4, r0
lbl_80416100:
/* 80416100 003DF6C0  7C 03 00 40 */	cmplw r3, r0
/* 80416104 003DF6C4  40 81 00 0C */	ble lbl_80416110
/* 80416108 003DF6C8  38 60 00 00 */	li r3, 0
/* 8041610C 003DF6CC  48 00 00 A4 */	b lbl_804161B0
lbl_80416110:
/* 80416110 003DF6D0  4B FF 68 75 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80416114 003DF6D4  4B FF 71 25 */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 80416118 003DF6D8  2C 03 00 02 */	cmpwi r3, 2
/* 8041611C 003DF6DC  40 82 00 44 */	bne lbl_80416160
/* 80416120 003DF6E0  38 00 00 01 */	li r0, 1
/* 80416124 003DF6E4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80416128 003DF6E8  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8041612C 003DF6EC  38 81 00 0C */	addi r4, r1, 0xc
/* 80416130 003DF6F0  38 A1 00 08 */	addi r5, r1, 8
/* 80416134 003DF6F4  4B FF B5 2D */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80416138 003DF6F8  38 7E 00 88 */	addi r3, r30, 0x88
/* 8041613C 003DF6FC  4B EC 0F B5 */	bl AXFXDelayExpInitDpl2
/* 80416140 003DF700  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80416144 003DF704  7C 7F 1B 78 */	mr r31, r3
/* 80416148 003DF708  80 A1 00 08 */	lwz r5, 8(r1)
/* 8041614C 003DF70C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80416150 003DF710  4B FF B5 65 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80416154 003DF714  38 7E 00 88 */	addi r3, r30, 0x88
/* 80416158 003DF718  4B EC 0F 69 */	bl AXFXDelayExpGetMemSizeDpl2
/* 8041615C 003DF71C  48 00 00 40 */	b lbl_8041619C
lbl_80416160:
/* 80416160 003DF720  38 00 00 00 */	li r0, 0
/* 80416164 003DF724  38 7E 00 14 */	addi r3, r30, 0x14
/* 80416168 003DF728  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8041616C 003DF72C  38 81 00 0C */	addi r4, r1, 0xc
/* 80416170 003DF730  38 A1 00 08 */	addi r5, r1, 8
/* 80416174 003DF734  4B FF B4 ED */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80416178 003DF738  38 7E 00 30 */	addi r3, r30, 0x30
/* 8041617C 003DF73C  4B EC 04 A5 */	bl AXFXDelayExpInit
/* 80416180 003DF740  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80416184 003DF744  7C 7F 1B 78 */	mr r31, r3
/* 80416188 003DF748  80 A1 00 08 */	lwz r5, 8(r1)
/* 8041618C 003DF74C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80416190 003DF750  4B FF B5 25 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80416194 003DF754  38 7E 00 30 */	addi r3, r30, 0x30
/* 80416198 003DF758  4B EC 04 59 */	bl AXFXDelayExpGetMemSize
lbl_8041619C:
/* 8041619C 003DF75C  7C 1F 00 D0 */	neg r0, r31
/* 804161A0 003DF760  38 60 00 01 */	li r3, 1
/* 804161A4 003DF764  7C 00 FB 78 */	or r0, r0, r31
/* 804161A8 003DF768  98 7E 00 0C */	stb r3, 0xc(r30)
/* 804161AC 003DF76C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_804161B0:
/* 804161B0 003DF770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804161B4 003DF774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804161B8 003DF778  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804161BC 003DF77C  7C 08 03 A6 */	mtlr r0
/* 804161C0 003DF780  38 21 00 20 */	addi r1, r1, 0x20
/* 804161C4 003DF784  4E 80 00 20 */	blr 

.global Shutdown__Q34nw4r3snd11FxDelayDpl2Fv
Shutdown__Q34nw4r3snd11FxDelayDpl2Fv:
/* 804161C8 003DF788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804161CC 003DF78C  7C 08 02 A6 */	mflr r0
/* 804161D0 003DF790  90 01 00 24 */	stw r0, 0x24(r1)
/* 804161D4 003DF794  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804161D8 003DF798  7C 7F 1B 78 */	mr r31, r3
/* 804161DC 003DF79C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 804161E0 003DF7A0  2C 00 00 00 */	cmpwi r0, 0
/* 804161E4 003DF7A4  41 82 00 4C */	beq lbl_80416230
/* 804161E8 003DF7A8  38 00 00 00 */	li r0, 0
/* 804161EC 003DF7AC  38 81 00 0C */	addi r4, r1, 0xc
/* 804161F0 003DF7B0  98 03 00 0C */	stb r0, 0xc(r3)
/* 804161F4 003DF7B4  38 63 00 14 */	addi r3, r3, 0x14
/* 804161F8 003DF7B8  38 A1 00 08 */	addi r5, r1, 8
/* 804161FC 003DF7BC  4B FF B4 65 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 80416200 003DF7C0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80416204 003DF7C4  2C 00 00 01 */	cmpwi r0, 1
/* 80416208 003DF7C8  40 82 00 10 */	bne lbl_80416218
/* 8041620C 003DF7CC  38 7F 00 88 */	addi r3, r31, 0x88
/* 80416210 003DF7D0  4B EC 13 11 */	bl AXFXDelayExpShutdownDpl2
/* 80416214 003DF7D4  48 00 00 0C */	b lbl_80416220
lbl_80416218:
/* 80416218 003DF7D8  38 7F 00 30 */	addi r3, r31, 0x30
/* 8041621C 003DF7DC  4B EC 09 75 */	bl AXFXDelayExpShutdown
lbl_80416220:
/* 80416220 003DF7E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80416224 003DF7E4  38 7F 00 14 */	addi r3, r31, 0x14
/* 80416228 003DF7E8  80 A1 00 08 */	lwz r5, 8(r1)
/* 8041622C 003DF7EC  4B FF B4 89 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
lbl_80416230:
/* 80416230 003DF7F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80416234 003DF7F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80416238 003DF7F8  7C 08 03 A6 */	mtlr r0
/* 8041623C 003DF7FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80416240 003DF800  4E 80 00 20 */	blr 

.global SetParam__Q34nw4r3snd11FxDelayDpl2FRCQ44nw4r3snd6detail12FxDelayParam
SetParam__Q34nw4r3snd11FxDelayDpl2FRCQ44nw4r3snd6detail12FxDelayParam:
/* 80416244 003DF804  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80416248 003DF808  7C 08 02 A6 */	mflr r0
/* 8041624C 003DF80C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80416250 003DF810  90 01 00 24 */	stw r0, 0x24(r1)
/* 80416254 003DF814  C0 A2 C4 0C */	lfs f5, lbl_8066C78C@sda21(r2)
/* 80416258 003DF818  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8041625C 003DF81C  C0 84 00 00 */	lfs f4, 0(r4)
/* 80416260 003DF820  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 80416264 003DF824  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80416268 003DF828  C0 64 00 04 */	lfs f3, 4(r4)
/* 8041626C 003DF82C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80416270 003DF830  7C 7D 1B 78 */	mr r29, r3
/* 80416274 003DF834  C0 44 00 08 */	lfs f2, 8(r4)
/* 80416278 003DF838  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8041627C 003DF83C  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 80416280 003DF840  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80416284 003DF844  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80416288 003DF848  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8041628C 003DF84C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80416290 003DF850  40 80 00 08 */	bge lbl_80416298
/* 80416294 003DF854  48 00 00 08 */	b lbl_8041629C
lbl_80416298:
/* 80416298 003DF858  FC A0 08 90 */	fmr f5, f1
lbl_8041629C:
/* 8041629C 003DF85C  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 804162A0 003DF860  FC 05 00 00 */	fcmpu cr0, f5, f0
/* 804162A4 003DF864  7C 00 00 26 */	mfcr r0
/* 804162A8 003DF868  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 804162AC 003DF86C  C0 04 00 00 */	lfs f0, 0(r4)
/* 804162B0 003DF870  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 804162B4 003DF874  D0 A3 00 C8 */	stfs f5, 0xc8(r3)
/* 804162B8 003DF878  68 1E 00 01 */	xori r30, r0, 1
/* 804162BC 003DF87C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804162C0 003DF880  D0 A3 00 68 */	stfs f5, 0x68(r3)
/* 804162C4 003DF884  40 81 00 08 */	ble lbl_804162CC
/* 804162C8 003DF888  48 00 00 18 */	b lbl_804162E0
lbl_804162CC:
/* 804162CC 003DF88C  C0 22 C4 0C */	lfs f1, lbl_8066C78C@sda21(r2)
/* 804162D0 003DF890  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804162D4 003DF894  40 80 00 08 */	bge lbl_804162DC
/* 804162D8 003DF898  48 00 00 08 */	b lbl_804162E0
lbl_804162DC:
/* 804162DC 003DF89C  FC 20 00 90 */	fmr f1, f0
lbl_804162E0:
/* 804162E0 003DF8A0  C0 04 00 04 */	lfs f0, 4(r4)
/* 804162E4 003DF8A4  C0 42 C4 10 */	lfs f2, lbl_8066C790@sda21(r2)
/* 804162E8 003DF8A8  D0 23 00 CC */	stfs f1, 0xcc(r3)
/* 804162EC 003DF8AC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804162F0 003DF8B0  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 804162F4 003DF8B4  40 81 00 08 */	ble lbl_804162FC
/* 804162F8 003DF8B8  48 00 00 18 */	b lbl_80416310
lbl_804162FC:
/* 804162FC 003DF8BC  C0 42 C4 14 */	lfs f2, lbl_8066C794@sda21(r2)
/* 80416300 003DF8C0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80416304 003DF8C4  40 80 00 08 */	bge lbl_8041630C
/* 80416308 003DF8C8  48 00 00 08 */	b lbl_80416310
lbl_8041630C:
/* 8041630C 003DF8CC  FC 40 00 90 */	fmr f2, f0
lbl_80416310:
/* 80416310 003DF8D0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80416314 003DF8D4  C0 22 C4 08 */	lfs f1, lbl_8066C788@sda21(r2)
/* 80416318 003DF8D8  D0 43 00 D0 */	stfs f2, 0xd0(r3)
/* 8041631C 003DF8DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80416320 003DF8E0  D0 43 00 70 */	stfs f2, 0x70(r3)
/* 80416324 003DF8E4  40 81 00 08 */	ble lbl_8041632C
/* 80416328 003DF8E8  48 00 00 18 */	b lbl_80416340
lbl_8041632C:
/* 8041632C 003DF8EC  C0 22 C4 14 */	lfs f1, lbl_8066C794@sda21(r2)
/* 80416330 003DF8F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80416334 003DF8F4  40 80 00 08 */	bge lbl_8041633C
/* 80416338 003DF8F8  48 00 00 08 */	b lbl_80416340
lbl_8041633C:
/* 8041633C 003DF8FC  FC 20 00 90 */	fmr f1, f0
lbl_80416340:
/* 80416340 003DF900  C0 04 00 08 */	lfs f0, 8(r4)
/* 80416344 003DF904  C0 42 C4 08 */	lfs f2, lbl_8066C788@sda21(r2)
/* 80416348 003DF908  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 8041634C 003DF90C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80416350 003DF910  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 80416354 003DF914  40 81 00 08 */	ble lbl_8041635C
/* 80416358 003DF918  48 00 00 18 */	b lbl_80416370
lbl_8041635C:
/* 8041635C 003DF91C  C0 42 C4 14 */	lfs f2, lbl_8066C794@sda21(r2)
/* 80416360 003DF920  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80416364 003DF924  40 80 00 08 */	bge lbl_8041636C
/* 80416368 003DF928  48 00 00 08 */	b lbl_80416370
lbl_8041636C:
/* 8041636C 003DF92C  FC 40 00 90 */	fmr f2, f0
lbl_80416370:
/* 80416370 003DF930  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80416374 003DF934  38 80 00 00 */	li r4, 0
/* 80416378 003DF938  C0 02 C4 14 */	lfs f0, lbl_8066C794@sda21(r2)
/* 8041637C 003DF93C  2C 00 00 00 */	cmpwi r0, 0
/* 80416380 003DF940  D0 43 00 E0 */	stfs f2, 0xe0(r3)
/* 80416384 003DF944  D0 43 00 80 */	stfs f2, 0x80(r3)
/* 80416388 003DF948  90 83 00 78 */	stw r4, 0x78(r3)
/* 8041638C 003DF94C  90 83 00 7C */	stw r4, 0x7c(r3)
/* 80416390 003DF950  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 80416394 003DF954  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 80416398 003DF958  90 83 00 DC */	stw r4, 0xdc(r3)
/* 8041639C 003DF95C  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 804163A0 003DF960  40 82 00 0C */	bne lbl_804163AC
/* 804163A4 003DF964  38 60 00 01 */	li r3, 1
/* 804163A8 003DF968  48 00 00 DC */	b lbl_80416484
lbl_804163AC:
/* 804163AC 003DF96C  38 63 00 30 */	addi r3, r3, 0x30
/* 804163B0 003DF970  4B EC 02 41 */	bl AXFXDelayExpGetMemSize
/* 804163B4 003DF974  38 03 00 87 */	addi r0, r3, 0x87
/* 804163B8 003DF978  38 7D 00 88 */	addi r3, r29, 0x88
/* 804163BC 003DF97C  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 804163C0 003DF980  4B EC 0D 01 */	bl AXFXDelayExpGetMemSizeDpl2
/* 804163C4 003DF984  38 03 00 87 */	addi r0, r3, 0x87
/* 804163C8 003DF988  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 804163CC 003DF98C  7C 03 F8 40 */	cmplw r3, r31
/* 804163D0 003DF990  40 80 00 08 */	bge lbl_804163D8
/* 804163D4 003DF994  7F E3 FB 78 */	mr r3, r31
lbl_804163D8:
/* 804163D8 003DF998  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 804163DC 003DF99C  2C 04 00 00 */	cmpwi r4, 0
/* 804163E0 003DF9A0  40 82 00 0C */	bne lbl_804163EC
/* 804163E4 003DF9A4  38 00 00 00 */	li r0, 0
/* 804163E8 003DF9A8  48 00 00 0C */	b lbl_804163F4
lbl_804163EC:
/* 804163EC 003DF9AC  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 804163F0 003DF9B0  7C 04 00 50 */	subf r0, r4, r0
lbl_804163F4:
/* 804163F4 003DF9B4  7C 03 00 40 */	cmplw r3, r0
/* 804163F8 003DF9B8  40 81 00 0C */	ble lbl_80416404
/* 804163FC 003DF9BC  38 60 00 00 */	li r3, 0
/* 80416400 003DF9C0  48 00 00 84 */	b lbl_80416484
lbl_80416404:
/* 80416404 003DF9C4  2C 1E 00 00 */	cmpwi r30, 0
/* 80416408 003DF9C8  41 82 00 4C */	beq lbl_80416454
/* 8041640C 003DF9CC  38 7D 00 14 */	addi r3, r29, 0x14
/* 80416410 003DF9D0  38 81 00 0C */	addi r4, r1, 0xc
/* 80416414 003DF9D4  38 A1 00 08 */	addi r5, r1, 8
/* 80416418 003DF9D8  4B FF B2 49 */	bl HookAlloc__Q44nw4r3snd6detail8AxfxImplFPPFUl_PvPPFPv_v
/* 8041641C 003DF9DC  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80416420 003DF9E0  2C 00 00 01 */	cmpwi r0, 1
/* 80416424 003DF9E4  40 82 00 10 */	bne lbl_80416434
/* 80416428 003DF9E8  38 7D 00 88 */	addi r3, r29, 0x88
/* 8041642C 003DF9EC  4B EC 0E F5 */	bl AXFXDelayExpSettingsDpl2
/* 80416430 003DF9F0  48 00 00 0C */	b lbl_8041643C
lbl_80416434:
/* 80416434 003DF9F4  38 7D 00 30 */	addi r3, r29, 0x30
/* 80416438 003DF9F8  4B EC 04 B9 */	bl AXFXDelayExpSettings
lbl_8041643C:
/* 8041643C 003DF9FC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80416440 003DFA00  7C 7E 1B 78 */	mr r30, r3
/* 80416444 003DFA04  80 A1 00 08 */	lwz r5, 8(r1)
/* 80416448 003DFA08  38 7D 00 14 */	addi r3, r29, 0x14
/* 8041644C 003DFA0C  4B FF B2 69 */	bl RestoreAlloc__Q44nw4r3snd6detail8AxfxImplFPFUl_PvPFPv_v
/* 80416450 003DFA10  48 00 00 28 */	b lbl_80416478
lbl_80416454:
/* 80416454 003DFA14  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80416458 003DFA18  2C 00 00 01 */	cmpwi r0, 1
/* 8041645C 003DFA1C  40 82 00 10 */	bne lbl_8041646C
/* 80416460 003DFA20  38 7D 00 88 */	addi r3, r29, 0x88
/* 80416464 003DFA24  4B EC 0F ED */	bl AXFXDelayExpSettingsUpdateDpl2
/* 80416468 003DFA28  48 00 00 0C */	b lbl_80416474
lbl_8041646C:
/* 8041646C 003DFA2C  38 7D 00 30 */	addi r3, r29, 0x30
/* 80416470 003DFA30  4B EC 06 11 */	bl AXFXDelayExpSettingsUpdate
lbl_80416474:
/* 80416474 003DFA34  7C 7E 1B 78 */	mr r30, r3
lbl_80416478:
/* 80416478 003DFA38  7C 1E 00 D0 */	neg r0, r30
/* 8041647C 003DFA3C  7C 00 F3 78 */	or r0, r0, r30
/* 80416480 003DFA40  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80416484:
/* 80416484 003DFA44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80416488 003DFA48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041648C 003DFA4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80416490 003DFA50  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80416494 003DFA54  7C 08 03 A6 */	mtlr r0
/* 80416498 003DFA58  38 21 00 20 */	addi r1, r1, 0x20
/* 8041649C 003DFA5C  4E 80 00 20 */	blr 

.global UpdateBuffer__Q34nw4r3snd11FxDelayDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
UpdateBuffer__Q34nw4r3snd11FxDelayDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode:
/* 804164A0 003DFA60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804164A4 003DFA64  7C 08 02 A6 */	mflr r0
/* 804164A8 003DFA68  7C 64 1B 78 */	mr r4, r3
/* 804164AC 003DFA6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804164B0 003DFA70  88 03 00 0C */	lbz r0, 0xc(r3)
/* 804164B4 003DFA74  2C 00 00 00 */	cmpwi r0, 0
/* 804164B8 003DFA78  41 82 00 78 */	beq lbl_80416530
/* 804164BC 003DFA7C  38 08 FF FE */	addi r0, r8, -2
/* 804164C0 003DFA80  80 63 00 10 */	lwz r3, 0x10(r3)
/* 804164C4 003DFA84  7C 00 00 34 */	cntlzw r0, r0
/* 804164C8 003DFA88  54 00 D9 7E */	srwi r0, r0, 5
/* 804164CC 003DFA8C  7C 00 18 00 */	cmpw r0, r3
/* 804164D0 003DFA90  40 82 00 60 */	bne lbl_80416530
/* 804164D4 003DFA94  2C 03 00 01 */	cmpwi r3, 1
/* 804164D8 003DFA98  40 82 00 34 */	bne lbl_8041650C
/* 804164DC 003DFA9C  80 05 00 00 */	lwz r0, 0(r5)
/* 804164E0 003DFAA0  38 61 00 18 */	addi r3, r1, 0x18
/* 804164E4 003DFAA4  38 84 00 88 */	addi r4, r4, 0x88
/* 804164E8 003DFAA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 804164EC 003DFAAC  80 05 00 04 */	lwz r0, 4(r5)
/* 804164F0 003DFAB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804164F4 003DFAB4  80 05 00 08 */	lwz r0, 8(r5)
/* 804164F8 003DFAB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 804164FC 003DFABC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80416500 003DFAC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80416504 003DFAC4  4B EC 10 AD */	bl AXFXDelayExpCallbackDpl2
/* 80416508 003DFAC8  48 00 00 28 */	b lbl_80416530
lbl_8041650C:
/* 8041650C 003DFACC  80 05 00 00 */	lwz r0, 0(r5)
/* 80416510 003DFAD0  38 61 00 08 */	addi r3, r1, 8
/* 80416514 003DFAD4  38 84 00 30 */	addi r4, r4, 0x30
/* 80416518 003DFAD8  90 01 00 08 */	stw r0, 8(r1)
/* 8041651C 003DFADC  80 05 00 04 */	lwz r0, 4(r5)
/* 80416520 003DFAE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80416524 003DFAE4  80 05 00 08 */	lwz r0, 8(r5)
/* 80416528 003DFAE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8041652C 003DFAEC  4B EC 07 15 */	bl AXFXDelayExpCallback
lbl_80416530:
/* 80416530 003DFAF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80416534 003DFAF4  7C 08 03 A6 */	mtlr r0
/* 80416538 003DFAF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8041653C 003DFAFC  4E 80 00 20 */	blr 

.global OnChangeOutputMode__Q34nw4r3snd11FxDelayDpl2Fv
OnChangeOutputMode__Q34nw4r3snd11FxDelayDpl2Fv:
/* 80416540 003DFB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416544 003DFB04  7C 08 02 A6 */	mflr r0
/* 80416548 003DFB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041654C 003DFB0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416550 003DFB10  7C 7F 1B 78 */	mr r31, r3
/* 80416554 003DFB14  4B FF 64 31 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 80416558 003DFB18  4B FF 6C E1 */	bl GetOutputMode__Q44nw4r3snd6detail9AxManagerFv
/* 8041655C 003DFB1C  38 63 FF FE */	addi r3, r3, -2
/* 80416560 003DFB20  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80416564 003DFB24  7C 63 00 34 */	cntlzw r3, r3
/* 80416568 003DFB28  54 63 D9 7E */	srwi r3, r3, 5
/* 8041656C 003DFB2C  7C 00 18 00 */	cmpw r0, r3
/* 80416570 003DFB30  41 82 00 2C */	beq lbl_8041659C
/* 80416574 003DFB34  81 9F 00 00 */	lwz r12, 0(r31)
/* 80416578 003DFB38  7F E3 FB 78 */	mr r3, r31
/* 8041657C 003DFB3C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80416580 003DFB40  7D 89 03 A6 */	mtctr r12
/* 80416584 003DFB44  4E 80 04 21 */	bctrl 
/* 80416588 003DFB48  81 9F 00 00 */	lwz r12, 0(r31)
/* 8041658C 003DFB4C  7F E3 FB 78 */	mr r3, r31
/* 80416590 003DFB50  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80416594 003DFB54  7D 89 03 A6 */	mtctr r12
/* 80416598 003DFB58  4E 80 04 21 */	bctrl 
lbl_8041659C:
/* 8041659C 003DFB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804165A0 003DFB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804165A4 003DFB64  7C 08 03 A6 */	mtlr r0
/* 804165A8 003DFB68  38 21 00 10 */	addi r1, r1, 0x10
/* 804165AC 003DFB6C  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056E0A0
lbl_8056E0A0:
	# ROM: 0x56A1A0
	.4byte 0
	.4byte 0
	.4byte func_801C2EB0
	.4byte StartUp__Q34nw4r3snd11FxDelayDpl2Fv
	.4byte Shutdown__Q34nw4r3snd11FxDelayDpl2Fv
	.4byte UpdateBuffer__Q34nw4r3snd11FxDelayDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte OnChangeOutputMode__Q34nw4r3snd11FxDelayDpl2Fv
	.4byte AssignWorkBuffer__Q34nw4r3snd11FxDelayDpl2FPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd11FxDelayDpl2Fv
	.4byte 0