.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8049DD8C
func_8049DD8C:
/* 8049DD8C 0046734C  C0 62 CF E4 */	lfs f3, float_8066D364@sda21(r2)
/* 8049DD90 00467350  3C C0 80 57 */	lis r6, __vt__CScnFogMan@ha
/* 8049DD94 00467354  C0 02 CF F0 */	lfs f0, float_8066D370@sda21(r2)
/* 8049DD98 00467358  38 A0 00 00 */	li r5, 0
/* 8049DD9C 0046735C  C0 82 CF E0 */	lfs f4, float_8066D360@sda21(r2)
/* 8049DDA0 00467360  38 00 00 02 */	li r0, 2
/* 8049DDA4 00467364  C0 42 CF E8 */	lfs f2, float_8066D368@sda21(r2)
/* 8049DDA8 00467368  38 C6 24 18 */	addi r6, r6, __vt__CScnFogMan@l
/* 8049DDAC 0046736C  C0 22 CF EC */	lfs f1, float_8066D36C@sda21(r2)
/* 8049DDB0 00467370  90 C3 00 00 */	stw r6, 0(r3)
/* 8049DDB4 00467374  90 83 00 04 */	stw r4, 4(r3)
/* 8049DDB8 00467378  90 A3 00 08 */	stw r5, 8(r3)
/* 8049DDBC 0046737C  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 8049DDC0 00467380  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 8049DDC4 00467384  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 8049DDC8 00467388  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8049DDCC 0046738C  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8049DDD0 00467390  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8049DDD4 00467394  90 A3 00 24 */	stw r5, 0x24(r3)
/* 8049DDD8 00467398  98 A3 00 28 */	stb r5, 0x28(r3)
/* 8049DDDC 0046739C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8049DDE0 004673A0  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 8049DDE4 004673A4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8049DDE8 004673A8  D0 63 00 38 */	stfs f3, 0x38(r3)
/* 8049DDEC 004673AC  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8049DDF0 004673B0  D0 63 00 40 */	stfs f3, 0x40(r3)
/* 8049DDF4 004673B4  D0 63 00 44 */	stfs f3, 0x44(r3)
/* 8049DDF8 004673B8  D0 63 00 48 */	stfs f3, 0x48(r3)
/* 8049DDFC 004673BC  D0 63 00 4C */	stfs f3, 0x4c(r3)
/* 8049DE00 004673C0  90 03 00 50 */	stw r0, 0x50(r3)
/* 8049DE04 004673C4  D0 63 00 54 */	stfs f3, 0x54(r3)
/* 8049DE08 004673C8  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8049DE0C 004673CC  D0 63 00 5C */	stfs f3, 0x5c(r3)
/* 8049DE10 004673D0  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 8049DE14 004673D4  D0 63 00 64 */	stfs f3, 0x64(r3)
/* 8049DE18 004673D8  D0 63 00 68 */	stfs f3, 0x68(r3)
/* 8049DE1C 004673DC  D0 63 00 6C */	stfs f3, 0x6c(r3)
/* 8049DE20 004673E0  D0 63 00 70 */	stfs f3, 0x70(r3)
/* 8049DE24 004673E4  4E 80 00 20 */	blr 

.global func_8049DE28
func_8049DE28:
/* 8049DE28 004673E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049DE2C 004673EC  7C 08 02 A6 */	mflr r0
/* 8049DE30 004673F0  2C 03 00 00 */	cmpwi r3, 0
/* 8049DE34 004673F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049DE38 004673F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049DE3C 004673FC  7C 7F 1B 78 */	mr r31, r3
/* 8049DE40 00467400  41 82 00 10 */	beq .L_8049DE50
/* 8049DE44 00467404  2C 04 00 00 */	cmpwi r4, 0
/* 8049DE48 00467408  40 81 00 08 */	ble .L_8049DE50
/* 8049DE4C 0046740C  4B F9 6D E1 */	bl __dl__FPv
.L_8049DE50:
/* 8049DE50 00467410  7F E3 FB 78 */	mr r3, r31
/* 8049DE54 00467414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049DE58 00467418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049DE5C 0046741C  7C 08 03 A6 */	mtlr r0
/* 8049DE60 00467420  38 21 00 10 */	addi r1, r1, 0x10
/* 8049DE64 00467424  4E 80 00 20 */	blr 

.global func_8049DE68
func_8049DE68:
/* 8049DE68 00467428  90 83 00 08 */	stw r4, 8(r3)
/* 8049DE6C 0046742C  4E 80 00 20 */	blr 

.global func_8049DE70
func_8049DE70:
/* 8049DE70 00467430  48 00 00 54 */	b func_8049DEC4

.global func_8049DE74
func_8049DE74:
/* 8049DE74 00467434  81 05 00 00 */	lwz r8, 0(r5)
/* 8049DE78 00467438  80 E5 00 04 */	lwz r7, 4(r5)
/* 8049DE7C 0046743C  80 C5 00 08 */	lwz r6, 8(r5)
/* 8049DE80 00467440  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8049DE84 00467444  90 83 00 50 */	stw r4, 0x50(r3)
/* 8049DE88 00467448  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 8049DE8C 0046744C  D0 43 00 58 */	stfs f2, 0x58(r3)
/* 8049DE90 00467450  D0 63 00 5C */	stfs f3, 0x5c(r3)
/* 8049DE94 00467454  D0 83 00 60 */	stfs f4, 0x60(r3)
/* 8049DE98 00467458  91 03 00 64 */	stw r8, 0x64(r3)
/* 8049DE9C 0046745C  90 E3 00 68 */	stw r7, 0x68(r3)
/* 8049DEA0 00467460  90 C3 00 6C */	stw r6, 0x6c(r3)
/* 8049DEA4 00467464  90 03 00 70 */	stw r0, 0x70(r3)
/* 8049DEA8 00467468  91 03 00 0C */	stw r8, 0xc(r3)
/* 8049DEAC 0046746C  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8049DEB0 00467470  90 C3 00 14 */	stw r6, 0x14(r3)
/* 8049DEB4 00467474  90 03 00 18 */	stw r0, 0x18(r3)
/* 8049DEB8 00467478  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8049DEBC 0046747C  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8049DEC0 00467480  4E 80 00 20 */	blr

.global func_8049DEC4
func_8049DEC4:
/* 8049DEC4 00467484  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8049DEC8 00467488  7C 08 02 A6 */	mflr r0
/* 8049DECC 0046748C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8049DED0 00467490  39 61 00 60 */	addi r11, r1, 0x60
/* 8049DED4 00467494  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8049DED8 00467498  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8049DEDC 0046749C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8049DEE0 004674A0  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 8049DEE4 004674A4  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8049DEE8 004674A8  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 8049DEEC 004674AC  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8049DEF0 004674B0  F3 81 00 68 */	psq_st f28, 104(r1), 0, qr0
/* 8049DEF4 004674B4  4B E1 C2 61 */	bl _savegpr_27
/* 8049DEF8 004674B8  80 03 00 08 */	lwz r0, 8(r3)
/* 8049DEFC 004674BC  7C 7D 1B 78 */	mr r29, r3
/* 8049DF00 004674C0  2C 00 00 04 */	cmpwi r0, 4
/* 8049DF04 004674C4  40 82 00 0C */	bne .L_8049DF10
/* 8049DF08 004674C8  38 60 00 00 */	li r3, 0
/* 8049DF0C 004674CC  48 00 04 0C */	b .L_8049E318
.L_8049DF10:
/* 8049DF10 004674D0  80 63 00 04 */	lwz r3, 4(r3)
/* 8049DF14 004674D4  4B FF 0D C5 */	bl func_8048ECD8
/* 8049DF18 004674D8  7C 7E 1B 78 */	mr r30, r3
/* 8049DF1C 004674DC  38 80 00 00 */	li r4, 0
/* 8049DF20 004674E0  4B F5 7F A5 */	bl GetFog__Q34nw4r3g3d7ScnRootFi
/* 8049DF24 004674E4  80 1D 00 08 */	lwz r0, 8(r29)
/* 8049DF28 004674E8  7C 7F 1B 78 */	mr r31, r3
/* 8049DF2C 004674EC  2C 00 00 01 */	cmpwi r0, 1
/* 8049DF30 004674F0  40 82 01 34 */	bne .L_8049E064
/* 8049DF34 004674F4  2C 03 00 00 */	cmpwi r3, 0
/* 8049DF38 004674F8  83 9D 00 2C */	lwz r28, 0x2c(r29)
/* 8049DF3C 004674FC  40 82 00 20 */	bne .L_8049DF5C
/* 8049DF40 00467500  3C 60 80 57 */	lis r3, lbl_80572448@ha
/* 8049DF44 00467504  3C A0 80 57 */	lis r5, lbl_80572428@ha
/* 8049DF48 00467508  38 63 24 48 */	addi r3, r3, lbl_80572448@l
/* 8049DF4C 0046750C  38 80 00 41 */	li r4, 0x41
/* 8049DF50 00467510  38 A5 24 28 */	addi r5, r5, lbl_80572428@l
/* 8049DF54 00467514  4C C6 31 82 */	crclr 6
/* 8049DF58 00467518  4B F3 96 2D */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8049DF5C:
/* 8049DF5C 0046751C  2C 1F 00 00 */	cmpwi r31, 0
/* 8049DF60 00467520  41 82 00 08 */	beq .L_8049DF68
/* 8049DF64 00467524  93 9F 00 00 */	stw r28, 0(r31)
.L_8049DF68:
/* 8049DF68 00467528  2C 1F 00 00 */	cmpwi r31, 0
/* 8049DF6C 0046752C  C3 BD 00 34 */	lfs f29, 0x34(r29)
/* 8049DF70 00467530  C3 9D 00 30 */	lfs f28, 0x30(r29)
/* 8049DF74 00467534  40 82 00 20 */	bne .L_8049DF94
/* 8049DF78 00467538  3C 60 80 57 */	lis r3, lbl_80572478@ha
/* 8049DF7C 0046753C  3C A0 80 57 */	lis r5, lbl_80572458@ha
/* 8049DF80 00467540  38 63 24 78 */	addi r3, r3, lbl_80572478@l
/* 8049DF84 00467544  38 80 00 4B */	li r4, 0x4b
/* 8049DF88 00467548  38 A5 24 58 */	addi r5, r5, lbl_80572458@l
/* 8049DF8C 0046754C  4C C6 31 82 */	crclr 6
/* 8049DF90 00467550  4B F3 95 F5 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8049DF94:
/* 8049DF94 00467554  2C 1F 00 00 */	cmpwi r31, 0
/* 8049DF98 00467558  41 82 00 0C */	beq .L_8049DFA4
/* 8049DF9C 0046755C  D3 9F 00 04 */	stfs f28, 4(r31)
/* 8049DFA0 00467560  D3 BF 00 08 */	stfs f29, 8(r31)
.L_8049DFA4:
/* 8049DFA4 00467564  C0 82 CF F4 */	lfs f4, float_8066D374@sda21(r2)
/* 8049DFA8 00467568  2C 1F 00 00 */	cmpwi r31, 0
/* 8049DFAC 0046756C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8049DFB0 00467570  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 8049DFB4 00467574  EC 64 00 32 */	fmuls f3, f4, f0
/* 8049DFB8 00467578  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8049DFBC 0046757C  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 8049DFC0 00467580  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8049DFC4 00467584  EC 24 00 72 */	fmuls f1, f4, f1
/* 8049DFC8 00467588  EC 04 00 32 */	fmuls f0, f4, f0
/* 8049DFCC 0046758C  FC 60 18 1E */	fctiwz f3, f3
/* 8049DFD0 00467590  FC 40 10 1E */	fctiwz f2, f2
/* 8049DFD4 00467594  FC 20 08 1E */	fctiwz f1, f1
/* 8049DFD8 00467598  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 8049DFDC 0046759C  FC 00 00 1E */	fctiwz f0, f0
/* 8049DFE0 004675A0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8049DFE4 004675A4  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8049DFE8 004675A8  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8049DFEC 004675AC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8049DFF0 004675B0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8049DFF4 004675B4  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8049DFF8 004675B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049DFFC 004675BC  98 A1 00 0C */	stb r5, 0xc(r1)
/* 8049E000 004675C0  98 81 00 0D */	stb r4, 0xd(r1)
/* 8049E004 004675C4  98 61 00 0E */	stb r3, 0xe(r1)
/* 8049E008 004675C8  98 01 00 0F */	stb r0, 0xf(r1)
/* 8049E00C 004675CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8049E010 004675D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8049E014 004675D4  40 82 00 20 */	bne .L_8049E034
/* 8049E018 004675D8  3C 60 80 57 */	lis r3, lbl_805724A8@ha
/* 8049E01C 004675DC  3C A0 80 57 */	lis r5, lbl_80572488@ha
/* 8049E020 004675E0  38 63 24 A8 */	addi r3, r3, lbl_805724A8@l
/* 8049E024 004675E4  38 80 00 63 */	li r4, 0x63
/* 8049E028 004675E8  38 A5 24 88 */	addi r5, r5, lbl_80572488@l
/* 8049E02C 004675EC  4C C6 31 82 */	crclr 6
/* 8049E030 004675F0  4B F3 95 55 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8049E034:
/* 8049E034 004675F4  2C 1F 00 00 */	cmpwi r31, 0
/* 8049E038 004675F8  41 82 00 24 */	beq .L_8049E05C
/* 8049E03C 004675FC  88 01 00 18 */	lbz r0, 0x18(r1)
/* 8049E040 00467600  98 1F 00 14 */	stb r0, 0x14(r31)
/* 8049E044 00467604  88 01 00 19 */	lbz r0, 0x19(r1)
/* 8049E048 00467608  98 1F 00 15 */	stb r0, 0x15(r31)
/* 8049E04C 0046760C  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 8049E050 00467610  98 1F 00 16 */	stb r0, 0x16(r31)
/* 8049E054 00467614  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 8049E058 00467618  98 1F 00 17 */	stb r0, 0x17(r31)
.L_8049E05C:
/* 8049E05C 0046761C  38 60 00 01 */	li r3, 1
/* 8049E060 00467620  48 00 02 B8 */	b .L_8049E318
.L_8049E064:
/* 8049E064 00467624  2C 00 00 02 */	cmpwi r0, 2
/* 8049E068 00467628  40 82 00 14 */	bne .L_8049E07C
/* 8049E06C 0046762C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8049E070 00467630  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 8049E074 00467634  48 02 36 01 */	bl func_804C1674
/* 8049E078 00467638  48 00 01 74 */	b .L_8049E1EC
.L_8049E07C:
/* 8049E07C 0046763C  2C 00 00 00 */	cmpwi r0, 0
/* 8049E080 00467640  40 82 01 30 */	bne .L_8049E1B0
/* 8049E084 00467644  2C 03 00 00 */	cmpwi r3, 0
/* 8049E088 00467648  83 9D 00 50 */	lwz r28, 0x50(r29)
/* 8049E08C 0046764C  40 82 00 20 */	bne .L_8049E0AC
/* 8049E090 00467650  3C 60 80 57 */	lis r3, lbl_80572448@ha
/* 8049E094 00467654  3C A0 80 57 */	lis r5, lbl_80572428@ha
/* 8049E098 00467658  38 63 24 48 */	addi r3, r3, lbl_80572448@l
/* 8049E09C 0046765C  38 80 00 41 */	li r4, 0x41
/* 8049E0A0 00467660  38 A5 24 28 */	addi r5, r5, lbl_80572428@l
/* 8049E0A4 00467664  4C C6 31 82 */	crclr 6
/* 8049E0A8 00467668  4B F3 94 DD */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8049E0AC:
/* 8049E0AC 0046766C  2C 1F 00 00 */	cmpwi r31, 0
/* 8049E0B0 00467670  41 82 00 08 */	beq .L_8049E0B8
/* 8049E0B4 00467674  93 9F 00 00 */	stw r28, 0(r31)
.L_8049E0B8:
/* 8049E0B8 00467678  C0 82 CF F4 */	lfs f4, float_8066D374@sda21(r2)
/* 8049E0BC 0046767C  2C 1F 00 00 */	cmpwi r31, 0
/* 8049E0C0 00467680  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8049E0C4 00467684  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 8049E0C8 00467688  EC 64 00 32 */	fmuls f3, f4, f0
/* 8049E0CC 0046768C  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8049E0D0 00467690  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8049E0D4 00467694  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8049E0D8 00467698  EC 24 00 72 */	fmuls f1, f4, f1
/* 8049E0DC 0046769C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8049E0E0 004676A0  FC 60 18 1E */	fctiwz f3, f3
/* 8049E0E4 004676A4  FC 40 10 1E */	fctiwz f2, f2
/* 8049E0E8 004676A8  FC 20 08 1E */	fctiwz f1, f1
/* 8049E0EC 004676AC  D8 61 00 40 */	stfd f3, 0x40(r1)
/* 8049E0F0 004676B0  FC 00 00 1E */	fctiwz f0, f0
/* 8049E0F4 004676B4  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8049E0F8 004676B8  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8049E0FC 004676BC  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8049E100 004676C0  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8049E104 004676C4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8049E108 004676C8  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8049E10C 004676CC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8049E110 004676D0  98 A1 00 08 */	stb r5, 8(r1)
/* 8049E114 004676D4  98 81 00 09 */	stb r4, 9(r1)
/* 8049E118 004676D8  98 61 00 0A */	stb r3, 0xa(r1)
/* 8049E11C 004676DC  98 01 00 0B */	stb r0, 0xb(r1)
/* 8049E120 004676E0  80 01 00 08 */	lwz r0, 8(r1)
/* 8049E124 004676E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E128 004676E8  40 82 00 20 */	bne .L_8049E148
/* 8049E12C 004676EC  3C 60 80 57 */	lis r3, lbl_805724A8@ha
/* 8049E130 004676F0  3C A0 80 57 */	lis r5, lbl_80572488@ha
/* 8049E134 004676F4  38 63 24 A8 */	addi r3, r3, lbl_805724A8@l
/* 8049E138 004676F8  38 80 00 63 */	li r4, 0x63
/* 8049E13C 004676FC  38 A5 24 88 */	addi r5, r5, lbl_80572488@l
/* 8049E140 00467700  4C C6 31 82 */	crclr 6
/* 8049E144 00467704  4B F3 94 41 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8049E148:
/* 8049E148 00467708  2C 1F 00 00 */	cmpwi r31, 0
/* 8049E14C 0046770C  41 82 00 24 */	beq .L_8049E170
/* 8049E150 00467710  88 01 00 14 */	lbz r0, 0x14(r1)
/* 8049E154 00467714  98 1F 00 14 */	stb r0, 0x14(r31)
/* 8049E158 00467718  88 01 00 15 */	lbz r0, 0x15(r1)
/* 8049E15C 0046771C  98 1F 00 15 */	stb r0, 0x15(r31)
/* 8049E160 00467720  88 01 00 16 */	lbz r0, 0x16(r1)
/* 8049E164 00467724  98 1F 00 16 */	stb r0, 0x16(r31)
/* 8049E168 00467728  88 01 00 17 */	lbz r0, 0x17(r1)
/* 8049E16C 0046772C  98 1F 00 17 */	stb r0, 0x17(r31)
.L_8049E170:
/* 8049E170 00467730  2C 1F 00 00 */	cmpwi r31, 0
/* 8049E174 00467734  C3 BD 00 1C */	lfs f29, 0x1c(r29)
/* 8049E178 00467738  C3 9D 00 20 */	lfs f28, 0x20(r29)
/* 8049E17C 0046773C  40 82 00 20 */	bne .L_8049E19C
/* 8049E180 00467740  3C 60 80 57 */	lis r3, lbl_80572478@ha
/* 8049E184 00467744  3C A0 80 57 */	lis r5, lbl_80572458@ha
/* 8049E188 00467748  38 63 24 78 */	addi r3, r3, lbl_80572478@l
/* 8049E18C 0046774C  38 80 00 4B */	li r4, 0x4b
/* 8049E190 00467750  38 A5 24 58 */	addi r5, r5, lbl_80572458@l
/* 8049E194 00467754  4C C6 31 82 */	crclr 6
/* 8049E198 00467758  4B F3 93 ED */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8049E19C:
/* 8049E19C 0046775C  2C 1F 00 00 */	cmpwi r31, 0
/* 8049E1A0 00467760  41 82 00 4C */	beq .L_8049E1EC
/* 8049E1A4 00467764  D3 9F 00 04 */	stfs f28, 4(r31)
/* 8049E1A8 00467768  D3 BF 00 08 */	stfs f29, 8(r31)
/* 8049E1AC 0046776C  48 00 00 40 */	b .L_8049E1EC
.L_8049E1B0:
/* 8049E1B0 00467770  2C 00 00 03 */	cmpwi r0, 3
/* 8049E1B4 00467774  40 82 00 38 */	bne .L_8049E1EC
/* 8049E1B8 00467778  2C 03 00 00 */	cmpwi r3, 0
/* 8049E1BC 0046777C  40 82 00 20 */	bne .L_8049E1DC
/* 8049E1C0 00467780  3C 60 80 57 */	lis r3, lbl_80572448@ha
/* 8049E1C4 00467784  3C A0 80 57 */	lis r5, lbl_80572428@ha
/* 8049E1C8 00467788  38 63 24 48 */	addi r3, r3, lbl_80572448@l
/* 8049E1CC 0046778C  38 80 00 41 */	li r4, 0x41
/* 8049E1D0 00467790  38 A5 24 28 */	addi r5, r5, lbl_80572428@l
/* 8049E1D4 00467794  4C C6 31 82 */	crclr 6
/* 8049E1D8 00467798  4B F3 93 AD */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8049E1DC:
/* 8049E1DC 0046779C  2C 1F 00 00 */	cmpwi r31, 0
/* 8049E1E0 004677A0  41 82 00 0C */	beq .L_8049E1EC
/* 8049E1E4 004677A4  38 00 00 00 */	li r0, 0
/* 8049E1E8 004677A8  90 1F 00 00 */	stw r0, 0(r31)
.L_8049E1EC:
/* 8049E1EC 004677AC  88 1D 00 28 */	lbz r0, 0x28(r29)
/* 8049E1F0 004677B0  2C 00 00 00 */	cmpwi r0, 0
/* 8049E1F4 004677B4  41 82 01 20 */	beq .L_8049E314
/* 8049E1F8 004677B8  CB 82 D0 08 */	lfd f28, double_8066D388@sda21(r2)
/* 8049E1FC 004677BC  3B 60 00 00 */	li r27, 0
/* 8049E200 004677C0  C3 A2 D0 00 */	lfs f29, float_8066D380@sda21(r2)
/* 8049E204 004677C4  3F 80 43 30 */	lis r28, 0x4330
/* 8049E208 004677C8  C3 C2 CF FC */	lfs f30, float_8066D37C@sda21(r2)
/* 8049E20C 004677CC  3F E0 80 57 */	lis r31, lbl_805724A8@ha
/* 8049E210 004677D0  C3 E2 CF F8 */	lfs f31, float_8066D378@sda21(r2)
/* 8049E214 004677D4  3F A0 80 57 */	lis r29, lbl_80572488@ha
.L_8049E218:
/* 8049E218 004677D8  7F C3 F3 78 */	mr r3, r30
/* 8049E21C 004677DC  7F 64 DB 78 */	mr r4, r27
/* 8049E220 004677E0  4B F5 7C A5 */	bl GetFog__Q34nw4r3g3d7ScnRootFi
/* 8049E224 004677E4  90 61 00 20 */	stw r3, 0x20(r1)
/* 8049E228 004677E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8049E22C 004677EC  39 21 00 1C */	addi r9, r1, 0x1c
/* 8049E230 004677F0  38 80 00 00 */	li r4, 0
/* 8049E234 004677F4  38 A0 00 00 */	li r5, 0
/* 8049E238 004677F8  38 C0 00 00 */	li r6, 0
/* 8049E23C 004677FC  38 E0 00 00 */	li r7, 0
/* 8049E240 00467800  39 00 00 00 */	li r8, 0
/* 8049E244 00467804  4B F5 EF B1 */	bl GetFog__Q34nw4r3g3d3FogFP10_GXFogTypePfPfPfPfP8_GXColor
/* 8049E248 00467808  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 8049E24C 0046780C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049E250 00467810  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 8049E254 00467814  93 81 00 30 */	stw r28, 0x30(r1)
/* 8049E258 00467818  88 61 00 1E */	lbz r3, 0x1e(r1)
/* 8049E25C 0046781C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8049E260 00467820  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8049E264 00467824  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8049E268 00467828  93 81 00 38 */	stw r28, 0x38(r1)
/* 8049E26C 0046782C  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 8049E270 00467830  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8049E274 00467834  90 61 00 44 */	stw r3, 0x44(r1)
/* 8049E278 00467838  EC 21 E0 28 */	fsubs f1, f1, f28
/* 8049E27C 0046783C  93 81 00 40 */	stw r28, 0x40(r1)
/* 8049E280 00467840  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 8049E284 00467844  EC 1E 00 7A */	fmadds f0, f30, f1, f0
/* 8049E288 00467848  EC 22 E0 28 */	fsubs f1, f2, f28
/* 8049E28C 0046784C  EC 1F 00 7A */	fmadds f0, f31, f1, f0
/* 8049E290 00467850  FC 00 00 1E */	fctiwz f0, f0
/* 8049E294 00467854  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8049E298 00467858  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8049E29C 0046785C  2C 03 00 FF */	cmpwi r3, 0xff
/* 8049E2A0 00467860  40 81 00 08 */	ble .L_8049E2A8
/* 8049E2A4 00467864  38 60 00 FF */	li r3, 0xff
.L_8049E2A8:
/* 8049E2A8 00467868  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8049E2AC 0046786C  98 61 00 1C */	stb r3, 0x1c(r1)
/* 8049E2B0 00467870  2C 00 00 00 */	cmpwi r0, 0
/* 8049E2B4 00467874  98 61 00 1D */	stb r3, 0x1d(r1)
/* 8049E2B8 00467878  98 61 00 1E */	stb r3, 0x1e(r1)
/* 8049E2BC 0046787C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8049E2C0 00467880  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049E2C4 00467884  40 82 00 18 */	bne .L_8049E2DC
/* 8049E2C8 00467888  38 7F 24 A8 */	addi r3, r31, lbl_805724A8@l
/* 8049E2CC 0046788C  38 BD 24 88 */	addi r5, r29, lbl_80572488@l
/* 8049E2D0 00467890  38 80 00 63 */	li r4, 0x63
/* 8049E2D4 00467894  4C C6 31 82 */	crclr 6
/* 8049E2D8 00467898  4B F3 92 AD */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8049E2DC:
/* 8049E2DC 0046789C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8049E2E0 004678A0  2C 03 00 00 */	cmpwi r3, 0
/* 8049E2E4 004678A4  41 82 00 24 */	beq .L_8049E308
/* 8049E2E8 004678A8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8049E2EC 004678AC  98 03 00 14 */	stb r0, 0x14(r3)
/* 8049E2F0 004678B0  88 01 00 11 */	lbz r0, 0x11(r1)
/* 8049E2F4 004678B4  98 03 00 15 */	stb r0, 0x15(r3)
/* 8049E2F8 004678B8  88 01 00 12 */	lbz r0, 0x12(r1)
/* 8049E2FC 004678BC  98 03 00 16 */	stb r0, 0x16(r3)
/* 8049E300 004678C0  88 01 00 13 */	lbz r0, 0x13(r1)
/* 8049E304 004678C4  98 03 00 17 */	stb r0, 0x17(r3)
.L_8049E308:
/* 8049E308 004678C8  3B 7B 00 01 */	addi r27, r27, 1
/* 8049E30C 004678CC  2C 1B 00 20 */	cmpwi r27, 0x20
/* 8049E310 004678D0  41 80 FF 08 */	blt .L_8049E218
.L_8049E314:
/* 8049E314 004678D4  38 60 00 01 */	li r3, 1
.L_8049E318:
/* 8049E318 004678D8  39 61 00 60 */	addi r11, r1, 0x60
/* 8049E31C 004678DC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8049E320 004678E0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8049E324 004678E4  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 8049E328 004678E8  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8049E32C 004678EC  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 8049E330 004678F0  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8049E334 004678F4  E3 81 00 68 */	psq_l f28, 104(r1), 0, qr0
/* 8049E338 004678F8  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8049E33C 004678FC  4B E1 BE 65 */	bl _restgpr_27
/* 8049E340 00467900  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8049E344 00467904  7C 08 03 A6 */	mtlr r0
/* 8049E348 00467908  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8049E34C 0046790C  4E 80 00 20 */	blr 

.global func_8049E350
func_8049E350:
/* 8049E350 00467910  80 E4 00 00 */	lwz r7, 0(r4)
/* 8049E354 00467914  80 C4 00 04 */	lwz r6, 4(r4)
/* 8049E358 00467918  80 A4 00 08 */	lwz r5, 8(r4)
/* 8049E35C 0046791C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8049E360 00467920  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8049E364 00467924  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8049E368 00467928  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8049E36C 0046792C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8049E370 00467930  4E 80 00 20 */	blr 

.global func_8049E374
func_8049E374:
/* 8049E374 00467934  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8049E378 00467938  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8049E37C 0046793C  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CScnFogMan_typestr
CScnFogMan_typestr:
	.asciz "CScnFogMan"
	.balign 4
	.4byte 0
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CScnFogMan
__vt__CScnFogMan:
	.4byte __RTTI__CScnFogMan
	.4byte 0
	.4byte func_8049DE28
	.4byte 0


.global lbl_80572428
lbl_80572428:
	.asciz "NW4R:Failed assertion IsValid()"


.global lbl_80572448
lbl_80572448:
	.asciz "g3d_fog.h"
	.balign 4
	.4byte 0


.global lbl_80572458
lbl_80572458:
	.asciz "NW4R:Failed assertion IsValid()"


.global lbl_80572478
lbl_80572478:
	.asciz "g3d_fog.h"
	.balign 4
	.4byte 0


.global lbl_80572488
lbl_80572488:
	.asciz "NW4R:Failed assertion IsValid()"


.global lbl_805724A8
lbl_805724A8:
	.asciz "g3d_fog.h"
	.balign 4
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CScnFogMan
__RTTI__CScnFogMan:
	.4byte CScnFogMan_typestr
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066D360
float_8066D360:
	.float 0


.global float_8066D364
float_8066D364:
	.float 1.0


.global float_8066D368
float_8066D368:
	.float 1000 #0x447A0000


.global float_8066D36C
float_8066D36C:
	.float 0.1 #0x3DCCCCCD


.global float_8066D370
float_8066D370:
	.float 100.0


.global float_8066D374
float_8066D374:
	.float 255 #0x437F0000


.global float_8066D378
float_8066D378:
	.float 0.114477001 #0x3DEA72EB


.global float_8066D37C
float_8066D37C:
	.float 0.298911989 #0x3E990AFE


.global float_8066D380
float_8066D380:
	.float 0.586610973 #0x3F162C23
	.4byte 0


.global double_8066D388
double_8066D388:
	.8byte 0x4330000000000000 #unsigned int to float constant
.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001F698
lbl_8001F698:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001F6A0
lbl_8001F6A0:
	.4byte 0x290A0000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_8049DE28
	.4byte 0x00000040
	.4byte lbl_8001F698
	.4byte func_8049DEC4
	.4byte 0x0000048C
	.4byte lbl_8001F6A0