.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global GXSetFog
GXSetFog:
/* 8031DCF0 002E72B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8031DCF4 002E72B4  7C 08 02 A6 */	mflr r0
/* 8031DCF8 002E72B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8031DCFC 002E72BC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8031DD00 002E72C0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8031DD04 002E72C4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8031DD08 002E72C8  54 7F 07 7E */	clrlwi r31, r3, 0x1d
/* 8031DD0C 002E72CC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8031DD10 002E72D0  54 7E EF FF */	rlwinm. r30, r3, 0x1d, 0x1f, 0x1f
/* 8031DD14 002E72D4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8031DD18 002E72D8  7C 9D 23 78 */	mr r29, r4
/* 8031DD1C 002E72DC  93 81 00 20 */	stw r28, 0x20(r1)
/* 8031DD20 002E72E0  41 82 00 4C */	beq lbl_8031DD6C
/* 8031DD24 002E72E4  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 8031DD28 002E72E8  41 82 00 0C */	beq lbl_8031DD34
/* 8031DD2C 002E72EC  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8031DD30 002E72F0  40 82 00 14 */	bne lbl_8031DD44
lbl_8031DD34:
/* 8031DD34 002E72F4  C0 02 BC D0 */	lfs f0, lbl_8066C050@sda21(r2)
/* 8031DD38 002E72F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8031DD3C 002E72FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8031DD40 002E7300  48 00 01 34 */	b lbl_8031DE74
lbl_8031DD44:
/* 8031DD44 002E7304  EC C2 08 28 */	fsubs f6, f2, f1
/* 8031DD48 002E7308  C0 A2 BC D4 */	lfs f5, lbl_8066C054@sda21(r2)
/* 8031DD4C 002E730C  EC 44 18 28 */	fsubs f2, f4, f3
/* 8031DD50 002E7310  EC 01 18 28 */	fsubs f0, f1, f3
/* 8031DD54 002E7314  EC 65 30 24 */	fdivs f3, f5, f6
/* 8031DD58 002E7318  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8031DD5C 002E731C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8031DD60 002E7320  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8031DD64 002E7324  D0 01 00 08 */	stfs f0, 8(r1)
/* 8031DD68 002E7328  48 00 01 0C */	b lbl_8031DE74
lbl_8031DD6C:
/* 8031DD6C 002E732C  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 8031DD70 002E7330  41 82 00 0C */	beq lbl_8031DD7C
/* 8031DD74 002E7334  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8031DD78 002E7338  40 82 00 14 */	bne lbl_8031DD8C
lbl_8031DD7C:
/* 8031DD7C 002E733C  C0 62 BC D0 */	lfs f3, lbl_8066C050@sda21(r2)
/* 8031DD80 002E7340  C0 82 BC D8 */	lfs f4, lbl_8066C058@sda21(r2)
/* 8031DD84 002E7344  FF E0 18 90 */	fmr f31, f3
/* 8031DD88 002E7348  48 00 00 20 */	b lbl_8031DDA8
lbl_8031DD8C:
/* 8031DD8C 002E734C  EC 04 18 28 */	fsubs f0, f4, f3
/* 8031DD90 002E7350  EC 42 08 28 */	fsubs f2, f2, f1
/* 8031DD94 002E7354  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8031DD98 002E7358  EC 84 00 24 */	fdivs f4, f4, f0
/* 8031DD9C 002E735C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8031DDA0 002E7360  EF E1 10 24 */	fdivs f31, f1, f2
/* 8031DDA4 002E7364  EC 63 00 24 */	fdivs f3, f3, f0
lbl_8031DDA8:
/* 8031DDA8 002E7368  C0 22 BC D8 */	lfs f1, lbl_8066C058@sda21(r2)
/* 8031DDAC 002E736C  3B 80 00 00 */	li r28, 0
/* 8031DDB0 002E7370  C8 02 BC E0 */	lfd f0, lbl_8066C060@sda21(r2)
/* 8031DDB4 002E7374  48 00 00 0C */	b lbl_8031DDC0
lbl_8031DDB8:
/* 8031DDB8 002E7378  EC 84 00 72 */	fmuls f4, f4, f1
/* 8031DDBC 002E737C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8031DDC0:
/* 8031DDC0 002E7380  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8031DDC4 002E7384  41 81 FF F4 */	bgt lbl_8031DDB8
/* 8031DDC8 002E7388  C8 02 BC F0 */	lfd f0, lbl_8066C070@sda21(r2)
/* 8031DDCC 002E738C  C0 42 BC E8 */	lfs f2, lbl_8066C068@sda21(r2)
/* 8031DDD0 002E7390  C0 22 BC D0 */	lfs f1, lbl_8066C050@sda21(r2)
/* 8031DDD4 002E7394  48 00 00 0C */	b lbl_8031DDE0
lbl_8031DDD8:
/* 8031DDD8 002E7398  EC 84 00 B2 */	fmuls f4, f4, f2
/* 8031DDDC 002E739C  3B 9C FF FF */	addi r28, r28, -1
lbl_8031DDE0:
/* 8031DDE0 002E73A0  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 8031DDE4 002E73A4  7C 00 00 26 */	mfcr r0
/* 8031DDE8 002E73A8  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 8031DDEC 002E73AC  41 82 00 0C */	beq lbl_8031DDF8
/* 8031DDF0 002E73B0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8031DDF4 002E73B4  41 80 FF E4 */	blt lbl_8031DDD8
lbl_8031DDF8:
/* 8031DDF8 002E73B8  38 1C 00 01 */	addi r0, r28, 1
/* 8031DDFC 002E73BC  38 60 00 01 */	li r3, 1
/* 8031DE00 002E73C0  7C 63 00 30 */	slw r3, r3, r0
/* 8031DE04 002E73C4  C0 02 BC F8 */	lfs f0, lbl_8066C078@sda21(r2)
/* 8031DE08 002E73C8  3C 00 43 30 */	lis r0, 0x4330
/* 8031DE0C 002E73CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031DE10 002E73D0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8031DE14 002E73D4  C8 42 BD 00 */	lfd f2, lbl_8066C080@sda21(r2)
/* 8031DE18 002E73D8  90 61 00 14 */	stw r3, 0x14(r1)
/* 8031DE1C 002E73DC  EC 20 01 32 */	fmuls f1, f0, f4
/* 8031DE20 002E73E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8031DE24 002E73E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8031DE28 002E73E8  EC 03 00 24 */	fdivs f0, f3, f0
/* 8031DE2C 002E73EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8031DE30 002E73F0  4B F9 C1 FD */	bl __cvt_fp2unsigned
/* 8031DE34 002E73F4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031DE38 002E73F8  38 00 00 61 */	li r0, 0x61
/* 8031DE3C 002E73FC  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8031DE40 002E7400  38 C0 00 00 */	li r6, 0
/* 8031DE44 002E7404  50 66 02 3E */	rlwimi r6, r3, 0, 8, 0x1f
/* 8031DE48 002E7408  38 60 00 EF */	li r3, 0xef
/* 8031DE4C 002E740C  50 66 C0 0E */	rlwimi r6, r3, 0x18, 0, 7
/* 8031DE50 002E7410  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031DE54 002E7414  38 BC 00 01 */	addi r5, r28, 1
/* 8031DE58 002E7418  38 60 00 F0 */	li r3, 0xf0
/* 8031DE5C 002E741C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 8031DE60 002E7420  38 C0 00 00 */	li r6, 0
/* 8031DE64 002E7424  50 A6 06 FE */	rlwimi r6, r5, 0, 0x1b, 0x1f
/* 8031DE68 002E7428  50 66 C0 0E */	rlwimi r6, r3, 0x18, 0, 7
/* 8031DE6C 002E742C  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8031DE70 002E7430  90 C4 80 00 */	stw r6, -0x8000(r4)
lbl_8031DE74:
/* 8031DE74 002E7434  80 1D 00 00 */	lwz r0, 0(r29)
/* 8031DE78 002E7438  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031DE7C 002E743C  38 A0 00 61 */	li r5, 0x61
/* 8031DE80 002E7440  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8031DE84 002E7444  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8031DE88 002E7448  38 E0 00 00 */	li r7, 0
/* 8031DE8C 002E744C  38 60 00 EE */	li r3, 0xee
/* 8031DE90 002E7450  81 21 00 08 */	lwz r9, 8(r1)
/* 8031DE94 002E7454  50 C7 A5 7E */	rlwimi r7, r6, 0x14, 0x15, 0x1f
/* 8031DE98 002E7458  39 00 00 00 */	li r8, 0
/* 8031DE9C 002E745C  50 C7 A3 68 */	rlwimi r7, r6, 0x14, 0xd, 0x14
/* 8031DEA0 002E7460  50 C7 A3 18 */	rlwimi r7, r6, 0x14, 0xc, 0xc
/* 8031DEA4 002E7464  51 28 A5 7E */	rlwimi r8, r9, 0x14, 0x15, 0x1f
/* 8031DEA8 002E7468  50 67 C0 0E */	rlwimi r7, r3, 0x18, 0, 7
/* 8031DEAC 002E746C  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 8031DEB0 002E7470  51 28 A3 68 */	rlwimi r8, r9, 0x14, 0xd, 0x14
/* 8031DEB4 002E7474  38 C0 00 00 */	li r6, 0
/* 8031DEB8 002E7478  51 28 A3 18 */	rlwimi r8, r9, 0x14, 0xc, 0xc
/* 8031DEBC 002E747C  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031DEC0 002E7480  53 C8 A2 D6 */	rlwimi r8, r30, 0x14, 0xb, 0xb
/* 8031DEC4 002E7484  38 E0 00 F1 */	li r7, 0xf1
/* 8031DEC8 002E7488  53 E8 AA 14 */	rlwimi r8, r31, 0x15, 8, 0xa
/* 8031DECC 002E748C  50 06 C2 3E */	rlwimi r6, r0, 0x18, 8, 0x1f
/* 8031DED0 002E7490  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8031DED4 002E7494  91 04 80 00 */	stw r8, -0x8000(r4)
/* 8031DED8 002E7498  38 00 00 F2 */	li r0, 0xf2
/* 8031DEDC 002E749C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031DEE0 002E74A0  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 8031DEE4 002E74A4  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8031DEE8 002E74A8  38 00 00 00 */	li r0, 0
/* 8031DEEC 002E74AC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031DEF0 002E74B0  B0 03 00 02 */	sth r0, 2(r3)
/* 8031DEF4 002E74B4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8031DEF8 002E74B8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8031DEFC 002E74BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8031DF00 002E74C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8031DF04 002E74C4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8031DF08 002E74C8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8031DF0C 002E74CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8031DF10 002E74D0  7C 08 03 A6 */	mtlr r0
/* 8031DF14 002E74D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8031DF18 002E74D8  4E 80 00 20 */	blr 

.balign 16, 0
.global GXInitFogAdjTable
GXInitFogAdjTable:
/* 8031DF20 002E74E0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8031DF24 002E74E4  7C 08 02 A6 */	mflr r0
/* 8031DF28 002E74E8  C8 22 BD 08 */	lfd f1, lbl_8066C088@sda21(r2)
/* 8031DF2C 002E74EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8031DF30 002E74F0  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8031DF34 002E74F4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8031DF38 002E74F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8031DF3C 002E74FC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8031DF40 002E7500  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8031DF44 002E7504  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 8031DF48 002E7508  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8031DF4C 002E750C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 8031DF50 002E7510  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8031DF54 002E7514  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 8031DF58 002E7518  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 8031DF5C 002E751C  F3 61 00 38 */	psq_st f27, 56(r1), 0, qr0
/* 8031DF60 002E7520  DB 41 00 20 */	stfd f26, 0x20(r1)
/* 8031DF64 002E7524  F3 41 00 28 */	psq_st f26, 40(r1), 0, qr0
/* 8031DF68 002E7528  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031DF6C 002E752C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031DF70 002E7530  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8031DF74 002E7534  40 82 00 24 */	bne lbl_8031DF98
/* 8031DF78 002E7538  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 8031DF7C 002E753C  C0 02 BC D4 */	lfs f0, lbl_8066C054@sda21(r2)
/* 8031DF80 002E7540  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 8031DF84 002E7544  EC 42 00 28 */	fsubs f2, f2, f0
/* 8031DF88 002E7548  C0 05 00 00 */	lfs f0, 0(r5)
/* 8031DF8C 002E754C  EC 21 10 24 */	fdivs f1, f1, f2
/* 8031DF90 002E7550  EF 41 00 24 */	fdivs f26, f1, f0
/* 8031DF94 002E7554  48 00 00 18 */	b lbl_8031DFAC
lbl_8031DF98:
/* 8031DF98 002E7558  C0 42 BC D4 */	lfs f2, lbl_8066C054@sda21(r2)
/* 8031DF9C 002E755C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8031DFA0 002E7560  C0 02 BD 10 */	lfs f0, lbl_8066C090@sda21(r2)
/* 8031DFA4 002E7564  EF 42 08 24 */	fdivs f26, f2, f1
/* 8031DFA8 002E7568  EC 20 06 B2 */	fmuls f1, f0, f26
lbl_8031DFAC:
/* 8031DFAC 002E756C  3F E0 43 30 */	lis r31, 0x4330
/* 8031DFB0 002E7570  90 81 00 0C */	stw r4, 0xc(r1)
/* 8031DFB4 002E7574  CB 82 BD 18 */	lfd f28, lbl_8066C098@sda21(r2)
/* 8031DFB8 002E7578  EF A1 00 72 */	fmuls f29, f1, f1
/* 8031DFBC 002E757C  93 E1 00 08 */	stw r31, 8(r1)
/* 8031DFC0 002E7580  7C 7E 1B 78 */	mr r30, r3
/* 8031DFC4 002E7584  C0 02 BC E8 */	lfs f0, lbl_8066C068@sda21(r2)
/* 8031DFC8 002E7588  3B A0 00 00 */	li r29, 0
/* 8031DFCC 002E758C  C8 21 00 08 */	lfd f1, 8(r1)
/* 8031DFD0 002E7590  C3 C2 BC D4 */	lfs f30, lbl_8066C054@sda21(r2)
/* 8031DFD4 002E7594  EC 21 E0 28 */	fsubs f1, f1, f28
/* 8031DFD8 002E7598  C3 E2 BD 14 */	lfs f31, lbl_8066C094@sda21(r2)
/* 8031DFDC 002E759C  EF 60 08 24 */	fdivs f27, f0, f1
lbl_8031DFE0:
/* 8031DFE0 002E75A0  38 1D 00 01 */	addi r0, r29, 1
/* 8031DFE4 002E75A4  93 E1 00 08 */	stw r31, 8(r1)
/* 8031DFE8 002E75A8  54 00 28 34 */	slwi r0, r0, 5
/* 8031DFEC 002E75AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8031DFF0 002E75B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8031DFF4 002E75B4  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8031DFF8 002E75B8  EC 00 06 F2 */	fmuls f0, f0, f27
/* 8031DFFC 002E75BC  EC 00 06 B2 */	fmuls f0, f0, f26
/* 8031E000 002E75C0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8031E004 002E75C4  EC 00 E8 24 */	fdivs f0, f0, f29
/* 8031E008 002E75C8  EC 3E 00 2A */	fadds f1, f30, f0
/* 8031E00C 002E75CC  4B FA D4 5D */	bl sqrt
/* 8031E010 002E75D0  FC 00 08 18 */	frsp f0, f1
/* 8031E014 002E75D4  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8031E018 002E75D8  4B F9 C0 15 */	bl __cvt_fp2unsigned
/* 8031E01C 002E75DC  3B BD 00 01 */	addi r29, r29, 1
/* 8031E020 002E75E0  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 8031E024 002E75E4  28 1D 00 0A */	cmplwi r29, 0xa
/* 8031E028 002E75E8  B0 1E 00 00 */	sth r0, 0(r30)
/* 8031E02C 002E75EC  3B DE 00 02 */	addi r30, r30, 2
/* 8031E030 002E75F0  41 80 FF B0 */	blt lbl_8031DFE0
/* 8031E034 002E75F4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8031E038 002E75F8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8031E03C 002E75FC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8031E040 002E7600  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 8031E044 002E7604  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8031E048 002E7608  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 8031E04C 002E760C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8031E050 002E7610  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 8031E054 002E7614  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8031E058 002E7618  E3 61 00 38 */	psq_l f27, 56(r1), 0, qr0
/* 8031E05C 002E761C  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 8031E060 002E7620  E3 41 00 28 */	psq_l f26, 40(r1), 0, qr0
/* 8031E064 002E7624  CB 41 00 20 */	lfd f26, 0x20(r1)
/* 8031E068 002E7628  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031E06C 002E762C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031E070 002E7630  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031E074 002E7634  7C 08 03 A6 */	mtlr r0
/* 8031E078 002E7638  38 21 00 80 */	addi r1, r1, 0x80
/* 8031E07C 002E763C  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetFogRangeAdj
GXSetFogRangeAdj:
/* 8031E080 002E7640  2C 03 00 00 */	cmpwi r3, 0
/* 8031E084 002E7644  41 82 00 D4 */	beq lbl_8031E158
/* 8031E088 002E7648  A1 65 00 00 */	lhz r11, 0(r5)
/* 8031E08C 002E764C  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 8031E090 002E7650  38 00 00 61 */	li r0, 0x61
/* 8031E094 002E7654  A1 25 00 02 */	lhz r9, 2(r5)
/* 8031E098 002E7658  39 40 00 00 */	li r10, 0
/* 8031E09C 002E765C  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8031E0A0 002E7660  51 6A 05 3E */	rlwimi r10, r11, 0, 0x14, 0x1f
/* 8031E0A4 002E7664  38 E0 00 E9 */	li r7, 0xe9
/* 8031E0A8 002E7668  51 2A 62 26 */	rlwimi r10, r9, 0xc, 8, 0x13
/* 8031E0AC 002E766C  A1 65 00 04 */	lhz r11, 4(r5)
/* 8031E0B0 002E7670  7D 48 53 78 */	mr r8, r10
/* 8031E0B4 002E7674  A1 25 00 06 */	lhz r9, 6(r5)
/* 8031E0B8 002E7678  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8031E0BC 002E767C  91 06 80 00 */	stw r8, -0x8000(r6)
/* 8031E0C0 002E7680  39 40 00 00 */	li r10, 0
/* 8031E0C4 002E7684  38 E0 00 EA */	li r7, 0xea
/* 8031E0C8 002E7688  51 6A 05 3E */	rlwimi r10, r11, 0, 0x14, 0x1f
/* 8031E0CC 002E768C  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031E0D0 002E7690  51 2A 62 26 */	rlwimi r10, r9, 0xc, 8, 0x13
/* 8031E0D4 002E7694  A1 65 00 08 */	lhz r11, 8(r5)
/* 8031E0D8 002E7698  7D 48 53 78 */	mr r8, r10
/* 8031E0DC 002E769C  A1 25 00 0A */	lhz r9, 0xa(r5)
/* 8031E0E0 002E76A0  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8031E0E4 002E76A4  91 06 80 00 */	stw r8, -0x8000(r6)
/* 8031E0E8 002E76A8  39 40 00 00 */	li r10, 0
/* 8031E0EC 002E76AC  38 E0 00 EB */	li r7, 0xeb
/* 8031E0F0 002E76B0  51 6A 05 3E */	rlwimi r10, r11, 0, 0x14, 0x1f
/* 8031E0F4 002E76B4  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031E0F8 002E76B8  51 2A 62 26 */	rlwimi r10, r9, 0xc, 8, 0x13
/* 8031E0FC 002E76BC  A1 65 00 0C */	lhz r11, 0xc(r5)
/* 8031E100 002E76C0  7D 48 53 78 */	mr r8, r10
/* 8031E104 002E76C4  A1 25 00 0E */	lhz r9, 0xe(r5)
/* 8031E108 002E76C8  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8031E10C 002E76CC  91 06 80 00 */	stw r8, -0x8000(r6)
/* 8031E110 002E76D0  39 40 00 00 */	li r10, 0
/* 8031E114 002E76D4  38 E0 00 EC */	li r7, 0xec
/* 8031E118 002E76D8  51 6A 05 3E */	rlwimi r10, r11, 0, 0x14, 0x1f
/* 8031E11C 002E76DC  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031E120 002E76E0  51 2A 62 26 */	rlwimi r10, r9, 0xc, 8, 0x13
/* 8031E124 002E76E4  A1 65 00 10 */	lhz r11, 0x10(r5)
/* 8031E128 002E76E8  7D 48 53 78 */	mr r8, r10
/* 8031E12C 002E76EC  A1 25 00 12 */	lhz r9, 0x12(r5)
/* 8031E130 002E76F0  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8031E134 002E76F4  91 06 80 00 */	stw r8, -0x8000(r6)
/* 8031E138 002E76F8  39 40 00 00 */	li r10, 0
/* 8031E13C 002E76FC  38 E0 00 ED */	li r7, 0xed
/* 8031E140 002E7700  51 6A 05 3E */	rlwimi r10, r11, 0, 0x14, 0x1f
/* 8031E144 002E7704  98 06 80 00 */	stb r0, -0x8000(r6)
/* 8031E148 002E7708  51 2A 62 26 */	rlwimi r10, r9, 0xc, 8, 0x13
/* 8031E14C 002E770C  7D 48 53 78 */	mr r8, r10
/* 8031E150 002E7710  50 E8 C0 0E */	rlwimi r8, r7, 0x18, 0, 7
/* 8031E154 002E7714  91 06 80 00 */	stw r8, -0x8000(r6)
lbl_8031E158:
/* 8031E158 002E7718  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E15C 002E771C  38 00 00 61 */	li r0, 0x61
/* 8031E160 002E7720  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E164 002E7724  38 84 01 56 */	addi r4, r4, 0x156
/* 8031E168 002E7728  38 C0 00 00 */	li r6, 0
/* 8031E16C 002E772C  38 00 00 00 */	li r0, 0
/* 8031E170 002E7730  50 86 05 BE */	rlwimi r6, r4, 0, 0x16, 0x1f
/* 8031E174 002E7734  38 80 00 E8 */	li r4, 0xe8
/* 8031E178 002E7738  50 66 55 6A */	rlwimi r6, r3, 0xa, 0x15, 0x15
/* 8031E17C 002E773C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031E180 002E7740  50 86 C0 0E */	rlwimi r6, r4, 0x18, 0, 7
/* 8031E184 002E7744  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 8031E188 002E7748  B0 03 00 02 */	sth r0, 2(r3)
/* 8031E18C 002E774C  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetBlendMode
GXSetBlendMode:
/* 8031E190 002E7750  81 42 BC 20 */	lwz r10, lbl_8066BFA0@sda21(r2)
/* 8031E194 002E7754  38 03 FF FD */	addi r0, r3, -3
/* 8031E198 002E7758  39 03 FF FE */	addi r8, r3, -2
/* 8031E19C 002E775C  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 8031E1A0 002E7760  81 2A 02 20 */	lwz r9, 0x220(r10)
/* 8031E1A4 002E7764  7C 00 00 34 */	cntlzw r0, r0
/* 8031E1A8 002E7768  50 09 35 28 */	rlwimi r9, r0, 6, 0x14, 0x14
/* 8031E1AC 002E776C  7D 08 00 34 */	cntlzw r8, r8
/* 8031E1B0 002E7770  38 00 00 61 */	li r0, 0x61
/* 8031E1B4 002E7774  98 07 80 00 */	stb r0, 0xCC008000@l(r7)
/* 8031E1B8 002E7778  50 69 07 FE */	rlwimi r9, r3, 0, 0x1f, 0x1f
/* 8031E1BC 002E777C  51 09 E7 BC */	rlwimi r9, r8, 0x1c, 0x1e, 0x1e
/* 8031E1C0 002E7780  38 00 00 00 */	li r0, 0
/* 8031E1C4 002E7784  50 C9 64 26 */	rlwimi r9, r6, 0xc, 0x10, 0x13
/* 8031E1C8 002E7788  50 89 45 6E */	rlwimi r9, r4, 8, 0x15, 0x17
/* 8031E1CC 002E778C  50 A9 2E 34 */	rlwimi r9, r5, 5, 0x18, 0x1a
/* 8031E1D0 002E7790  91 27 80 00 */	stw r9, -0x8000(r7)
/* 8031E1D4 002E7794  91 2A 02 20 */	stw r9, 0x220(r10)
/* 8031E1D8 002E7798  B0 0A 00 02 */	sth r0, 2(r10)
/* 8031E1DC 002E779C  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetColorUpdate
GXSetColorUpdate:
/* 8031E1E0 002E77A0  80 E2 BC 20 */	lwz r7, lbl_8066BFA0@sda21(r2)
/* 8031E1E4 002E77A4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031E1E8 002E77A8  38 A0 00 61 */	li r5, 0x61
/* 8031E1EC 002E77AC  38 00 00 00 */	li r0, 0
/* 8031E1F0 002E77B0  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 8031E1F4 002E77B4  50 66 1F 38 */	rlwimi r6, r3, 3, 0x1c, 0x1c
/* 8031E1F8 002E77B8  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8031E1FC 002E77BC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031E200 002E77C0  90 C7 02 20 */	stw r6, 0x220(r7)
/* 8031E204 002E77C4  B0 07 00 02 */	sth r0, 2(r7)
/* 8031E208 002E77C8  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetAlphaUpdate
GXSetAlphaUpdate:
/* 8031E210 002E77D0  80 E2 BC 20 */	lwz r7, lbl_8066BFA0@sda21(r2)
/* 8031E214 002E77D4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031E218 002E77D8  38 A0 00 61 */	li r5, 0x61
/* 8031E21C 002E77DC  38 00 00 00 */	li r0, 0
/* 8031E220 002E77E0  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 8031E224 002E77E4  50 66 26 F6 */	rlwimi r6, r3, 4, 0x1b, 0x1b
/* 8031E228 002E77E8  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8031E22C 002E77EC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031E230 002E77F0  90 C7 02 20 */	stw r6, 0x220(r7)
/* 8031E234 002E77F4  B0 07 00 02 */	sth r0, 2(r7)
/* 8031E238 002E77F8  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetZMode
GXSetZMode:
/* 8031E240 002E7800  81 22 BC 20 */	lwz r9, lbl_8066BFA0@sda21(r2)
/* 8031E244 002E7804  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 8031E248 002E7808  38 E0 00 61 */	li r7, 0x61
/* 8031E24C 002E780C  38 00 00 00 */	li r0, 0
/* 8031E250 002E7810  81 09 02 28 */	lwz r8, 0x228(r9)
/* 8031E254 002E7814  50 68 07 FE */	rlwimi r8, r3, 0, 0x1f, 0x1f
/* 8031E258 002E7818  50 88 0F 3C */	rlwimi r8, r4, 1, 0x1c, 0x1e
/* 8031E25C 002E781C  98 E6 80 00 */	stb r7, 0xCC008000@l(r6)
/* 8031E260 002E7820  50 A8 26 F6 */	rlwimi r8, r5, 4, 0x1b, 0x1b
/* 8031E264 002E7824  91 06 80 00 */	stw r8, -0x8000(r6)
/* 8031E268 002E7828  91 09 02 28 */	stw r8, 0x228(r9)
/* 8031E26C 002E782C  B0 09 00 02 */	sth r0, 2(r9)
/* 8031E270 002E7830  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetZCompLoc
GXSetZCompLoc:
/* 8031E280 002E7840  80 E2 BC 20 */	lwz r7, lbl_8066BFA0@sda21(r2)
/* 8031E284 002E7844  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031E288 002E7848  38 A0 00 61 */	li r5, 0x61
/* 8031E28C 002E784C  38 00 00 00 */	li r0, 0
/* 8031E290 002E7850  80 C7 02 2C */	lwz r6, 0x22c(r7)
/* 8031E294 002E7854  50 66 36 72 */	rlwimi r6, r3, 6, 0x19, 0x19
/* 8031E298 002E7858  90 C7 02 2C */	stw r6, 0x22c(r7)
/* 8031E29C 002E785C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8031E2A0 002E7860  80 67 02 2C */	lwz r3, 0x22c(r7)
/* 8031E2A4 002E7864  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8031E2A8 002E7868  B0 07 00 02 */	sth r0, 2(r7)
/* 8031E2AC 002E786C  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetPixelFmt
GXSetPixelFmt:
/* 8031E2B0 002E7870  81 22 BC 20 */	lwz r9, lbl_8066BFA0@sda21(r2)
/* 8031E2B4 002E7874  3C C0 80 55 */	lis r6, lbl_8054C110@ha
/* 8031E2B8 002E7878  54 67 10 3A */	slwi r7, r3, 2
/* 8031E2BC 002E787C  38 C6 C1 10 */	addi r6, r6, lbl_8054C110@l
/* 8031E2C0 002E7880  81 09 02 2C */	lwz r8, 0x22c(r9)
/* 8031E2C4 002E7884  7C 06 38 2E */	lwzx r0, r6, r7
/* 8031E2C8 002E7888  7D 05 43 78 */	mr r5, r8
/* 8031E2CC 002E788C  50 05 07 7E */	rlwimi r5, r0, 0, 0x1d, 0x1f
/* 8031E2D0 002E7890  50 85 1E B8 */	rlwimi r5, r4, 3, 0x1a, 0x1c
/* 8031E2D4 002E7894  90 A9 02 2C */	stw r5, 0x22c(r9)
/* 8031E2D8 002E7898  7C 08 28 40 */	cmplw r8, r5
/* 8031E2DC 002E789C  41 82 00 38 */	beq lbl_8031E314
/* 8031E2E0 002E78A0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E2E4 002E78A4  38 00 00 61 */	li r0, 0x61
/* 8031E2E8 002E78A8  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E2EC 002E78AC  38 03 FF FE */	addi r0, r3, -2
/* 8031E2F0 002E78B0  7C 04 00 34 */	cntlzw r4, r0
/* 8031E2F4 002E78B4  80 09 02 2C */	lwz r0, 0x22c(r9)
/* 8031E2F8 002E78B8  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8031E2FC 002E78BC  80 09 02 54 */	lwz r0, 0x254(r9)
/* 8031E300 002E78C0  50 80 25 AC */	rlwimi r0, r4, 4, 0x16, 0x16
/* 8031E304 002E78C4  90 09 02 54 */	stw r0, 0x254(r9)
/* 8031E308 002E78C8  80 09 05 FC */	lwz r0, 0x5fc(r9)
/* 8031E30C 002E78CC  60 00 00 04 */	ori r0, r0, 4
/* 8031E310 002E78D0  90 09 05 FC */	stw r0, 0x5fc(r9)
lbl_8031E314:
/* 8031E314 002E78D4  7C 06 38 2E */	lwzx r0, r6, r7
/* 8031E318 002E78D8  28 00 00 04 */	cmplwi r0, 4
/* 8031E31C 002E78DC  40 82 00 30 */	bne lbl_8031E34C
/* 8031E320 002E78E0  38 03 FF FC */	addi r0, r3, -4
/* 8031E324 002E78E4  80 89 02 24 */	lwz r4, 0x224(r9)
/* 8031E328 002E78E8  50 04 4D 6C */	rlwimi r4, r0, 9, 0x15, 0x16
/* 8031E32C 002E78EC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8031E330 002E78F0  38 00 00 42 */	li r0, 0x42
/* 8031E334 002E78F4  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 8031E338 002E78F8  90 89 02 24 */	stw r4, 0x224(r9)
/* 8031E33C 002E78FC  38 00 00 61 */	li r0, 0x61
/* 8031E340 002E7900  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8031E344 002E7904  80 09 02 24 */	lwz r0, 0x224(r9)
/* 8031E348 002E7908  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_8031E34C:
/* 8031E34C 002E790C  38 00 00 00 */	li r0, 0
/* 8031E350 002E7910  B0 09 00 02 */	sth r0, 2(r9)
/* 8031E354 002E7914  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetDither
GXSetDither:
/* 8031E360 002E7920  80 E2 BC 20 */	lwz r7, lbl_8066BFA0@sda21(r2)
/* 8031E364 002E7924  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8031E368 002E7928  38 A0 00 61 */	li r5, 0x61
/* 8031E36C 002E792C  38 00 00 00 */	li r0, 0
/* 8031E370 002E7930  80 C7 02 20 */	lwz r6, 0x220(r7)
/* 8031E374 002E7934  50 66 17 7A */	rlwimi r6, r3, 2, 0x1d, 0x1d
/* 8031E378 002E7938  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8031E37C 002E793C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8031E380 002E7940  90 C7 02 20 */	stw r6, 0x220(r7)
/* 8031E384 002E7944  B0 07 00 02 */	sth r0, 2(r7)
/* 8031E388 002E7948  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetDstAlpha
GXSetDstAlpha:
/* 8031E390 002E7950  81 02 BC 20 */	lwz r8, lbl_8066BFA0@sda21(r2)
/* 8031E394 002E7954  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E398 002E7958  38 C0 00 61 */	li r6, 0x61
/* 8031E39C 002E795C  38 00 00 00 */	li r0, 0
/* 8031E3A0 002E7960  80 E8 02 24 */	lwz r7, 0x224(r8)
/* 8031E3A4 002E7964  50 87 06 3E */	rlwimi r7, r4, 0, 0x18, 0x1f
/* 8031E3A8 002E7968  50 67 45 EE */	rlwimi r7, r3, 8, 0x17, 0x17
/* 8031E3AC 002E796C  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 8031E3B0 002E7970  90 E5 80 00 */	stw r7, -0x8000(r5)
/* 8031E3B4 002E7974  90 E8 02 24 */	stw r7, 0x224(r8)
/* 8031E3B8 002E7978  B0 08 00 02 */	sth r0, 2(r8)
/* 8031E3BC 002E797C  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetFieldMask
GXSetFieldMask:
/* 8031E3C0 002E7980  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8031E3C4 002E7984  38 00 00 61 */	li r0, 0x61
/* 8031E3C8 002E7988  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8031E3CC 002E798C  38 C0 00 00 */	li r6, 0
/* 8031E3D0 002E7990  38 00 00 44 */	li r0, 0x44
/* 8031E3D4 002E7994  50 86 07 FE */	rlwimi r6, r4, 0, 0x1f, 0x1f
/* 8031E3D8 002E7998  50 66 0F BC */	rlwimi r6, r3, 1, 0x1e, 0x1e
/* 8031E3DC 002E799C  80 62 BC 20 */	lwz r3, lbl_8066BFA0@sda21(r2)
/* 8031E3E0 002E79A0  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 8031E3E4 002E79A4  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 8031E3E8 002E79A8  38 00 00 00 */	li r0, 0
/* 8031E3EC 002E79AC  B0 03 00 02 */	sth r0, 2(r3)
/* 8031E3F0 002E79B0  4E 80 00 20 */	blr 

.balign 16, 0
.global GXSetFieldMode
GXSetFieldMode:
/* 8031E400 002E79C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031E404 002E79C4  7C 08 02 A6 */	mflr r0
/* 8031E408 002E79C8  80 A2 BC 20 */	lwz r5, lbl_8066BFA0@sda21(r2)
/* 8031E40C 002E79CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031E410 002E79D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031E414 002E79D4  3F E0 CC 01 */	lis r31, 0xCC008000@ha
/* 8031E418 002E79D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031E41C 002E79DC  3B C0 00 61 */	li r30, 0x61
/* 8031E420 002E79E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8031E424 002E79E4  7C 7D 1B 78 */	mr r29, r3
/* 8031E428 002E79E8  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 8031E42C 002E79EC  50 80 B2 52 */	rlwimi r0, r4, 0x16, 9, 9
/* 8031E430 002E79F0  90 05 00 7C */	stw r0, 0x7c(r5)
/* 8031E434 002E79F4  9B DF 80 00 */	stb r30, 0xCC008000@l(r31)
/* 8031E438 002E79F8  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 8031E43C 002E79FC  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 8031E440 002E7A00  4B FF F1 B1 */	bl __GXFlushTextureState
/* 8031E444 002E7A04  9B DF 80 00 */	stb r30, -0x8000(r31)
/* 8031E448 002E7A08  67 A0 68 00 */	oris r0, r29, 0x6800
/* 8031E44C 002E7A0C  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 8031E450 002E7A10  4B FF F1 A1 */	bl __GXFlushTextureState
/* 8031E454 002E7A14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031E458 002E7A18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031E45C 002E7A1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031E460 002E7A20  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8031E464 002E7A24  7C 08 03 A6 */	mtlr r0
/* 8031E468 002E7A28  38 21 00 20 */	addi r1, r1, 0x20
/* 8031E46C 002E7A2C  4E 80 00 20 */	blr 
