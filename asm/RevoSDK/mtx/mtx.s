.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global PSMTXIdentity
PSMTXIdentity:
/* 8034D1E0 003167A0  C0 02 BD AC */	lfs f0, zero_c@sda21(r2)
/* 8034D1E4 003167A4  C0 22 BD A8 */	lfs f1, one_c@sda21(r2)
/* 8034D1E8 003167A8  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 8034D1EC 003167AC  10 41 04 A0 */	ps_merge10 f2, f1, f0
/* 8034D1F0 003167B0  10 20 0C 60 */	ps_merge01 f1, f0, f1
/* 8034D1F4 003167B4  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8034D1F8 003167B8  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8034D1FC 003167BC  F0 23 00 10 */	psq_st f1, 16(r3), 0, qr0
/* 8034D200 003167C0  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 8034D204 003167C4  F0 43 00 28 */	psq_st f2, 40(r3), 0, qr0
/* 8034D208 003167C8  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXCopy
PSMTXCopy:
/* 8034D210 003167D0  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8034D214 003167D4  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8034D218 003167D8  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8034D21C 003167DC  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 8034D220 003167E0  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8034D224 003167E4  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 8034D228 003167E8  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8034D22C 003167EC  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 8034D230 003167F0  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8034D234 003167F4  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 8034D238 003167F8  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8034D23C 003167FC  F0 A4 00 28 */	psq_st f5, 40(r4), 0, qr0
/* 8034D240 00316800  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXConcat
PSMTXConcat:
/* 8034D250 00316810  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034D254 00316814  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8034D258 00316818  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8034D25C 0031681C  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 8034D260 00316820  3C C0 80 66 */	lis r6, Unit01@ha
/* 8034D264 00316824  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 8034D268 00316828  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8034D26C 0031682C  38 C6 5A D8 */	addi r6, r6, Unit01@l
/* 8034D270 00316830  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8034D274 00316834  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 8034D278 00316838  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 8034D27C 0031683C  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8034D280 00316840  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 8034D284 00316844  E3 E6 00 00 */	psq_l f31, 0(r6), 0, qr0
/* 8034D288 00316848  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 8034D28C 0031684C  E1 24 00 18 */	psq_l f9, 24(r4), 0, qr0
/* 8034D290 00316850  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 8034D294 00316854  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8034D298 00316858  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 8034D29C 0031685C  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8034D2A0 00316860  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 8034D2A4 00316864  E1 44 00 20 */	psq_l f10, 32(r4), 0, qr0
/* 8034D2A8 00316868  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 8034D2AC 0031686C  E1 64 00 28 */	psq_l f11, 40(r4), 0, qr0
/* 8034D2B0 00316870  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 8034D2B4 00316874  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8034D2B8 00316878  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8034D2BC 0031687C  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 8034D2C0 00316880  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 8034D2C4 00316884  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 8034D2C8 00316888  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 8034D2CC 0031688C  F1 85 00 00 */	psq_st f12, 0(r5), 0, qr0
/* 8034D2D0 00316890  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 8034D2D4 00316894  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 8034D2D8 00316898  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 8034D2DC 0031689C  F1 C5 00 10 */	psq_st f14, 16(r5), 0, qr0
/* 8034D2E0 003168A0  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 8034D2E4 003168A4  F1 A5 00 08 */	psq_st f13, 8(r5), 0, qr0
/* 8034D2E8 003168A8  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 8034D2EC 003168AC  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 8034D2F0 003168B0  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 8034D2F4 003168B4  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8034D2F8 003168B8  F1 E5 00 18 */	psq_st f15, 24(r5), 0, qr0
/* 8034D2FC 003168BC  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 8034D300 003168C0  F0 45 00 20 */	psq_st f2, 32(r5), 0, qr0
/* 8034D304 003168C4  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 8034D308 003168C8  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 8034D30C 003168CC  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 8034D310 003168D0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8034D314 003168D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8034D318 003168D8  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXConcatArray
PSMTXConcatArray:
/* 8034D320 003168E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8034D324 003168E4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8034D328 003168E8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8034D32C 003168EC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8034D330 003168F0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8034D334 003168F4  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8034D338 003168F8  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 8034D33C 003168FC  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 8034D340 00316900  F3 81 00 18 */	psq_st f28, 24(r1), 0, qr0
/* 8034D344 00316904  38 06 FF FF */	addi r0, r6, -1
/* 8034D348 00316908  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8034D34C 0031690C  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8034D350 00316910  38 CD 99 58 */	addi r6, r13, Unit01@sda21
/* 8034D354 00316914  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8034D358 00316918  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8034D35C 0031691C  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8034D360 00316920  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8034D364 00316924  7C 09 03 A6 */	mtctr r0
/* 8034D368 00316928  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 8034D36C 0031692C  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 8034D370 00316930  11 66 00 18 */	ps_muls0 f11, f6, f0
/* 8034D374 00316934  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 8034D378 00316938  11 A6 00 98 */	ps_muls0 f13, f6, f2
/* 8034D37C 0031693C  E1 24 00 20 */	psq_l f9, 32(r4), 0, qr0
/* 8034D380 00316940  13 C6 01 18 */	ps_muls0 f30, f6, f4
/* 8034D384 00316944  E0 C4 00 18 */	psq_l f6, 24(r4), 0, qr0
/* 8034D388 00316948  11 68 58 1E */	ps_madds1 f11, f8, f0, f11
/* 8034D38C 0031694C  E3 86 00 00 */	psq_l f28, 0(r6), 0, qr0
/* 8034D390 00316950  11 A8 68 9E */	ps_madds1 f13, f8, f2, f13
/* 8034D394 00316954  E1 44 00 28 */	psq_l f10, 40(r4), 0, qr0
/* 8034D398 00316958  13 C8 F1 1E */	ps_madds1 f30, f8, f4, f30
/* 8034D39C 0031695C  11 87 00 18 */	ps_muls0 f12, f7, f0
/* 8034D3A0 00316960  13 E7 00 98 */	ps_muls0 f31, f7, f2
/* 8034D3A4 00316964  13 A7 01 18 */	ps_muls0 f29, f7, f4
/* 8034D3A8 00316968  11 69 58 5C */	ps_madds0 f11, f9, f1, f11
/* 8034D3AC 0031696C  11 A9 68 DC */	ps_madds0 f13, f9, f3, f13
/* 8034D3B0 00316970  13 C9 F1 5C */	ps_madds0 f30, f9, f5, f30
/* 8034D3B4 00316974  F1 65 00 00 */	psq_st f11, 0(r5), 0, qr0
/* 8034D3B8 00316978  11 86 60 1E */	ps_madds1 f12, f6, f0, f12
/* 8034D3BC 0031697C  13 E6 F8 9E */	ps_madds1 f31, f6, f2, f31
/* 8034D3C0 00316980  F1 A5 00 10 */	psq_st f13, 16(r5), 0, qr0
/* 8034D3C4 00316984  13 A6 E9 1E */	ps_madds1 f29, f6, f4, f29
lbl_8034D3C8:
/* 8034D3C8 00316988  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 8034D3CC 0031698C  E0 C4 00 30 */	psq_l f6, 48(r4), 0, qr0
/* 8034D3D0 00316990  13 EA F8 DC */	ps_madds0 f31, f10, f3, f31
/* 8034D3D4 00316994  F3 C5 00 20 */	psq_st f30, 32(r5), 0, qr0
/* 8034D3D8 00316998  13 AA E9 5C */	ps_madds0 f29, f10, f5, f29
/* 8034D3DC 0031699C  E1 04 00 40 */	psq_l f8, 64(r4), 0, qr0
/* 8034D3E0 003169A0  11 9C 60 7A */	ps_madd f12, f28, f1, f12
/* 8034D3E4 003169A4  E1 24 00 50 */	psq_l f9, 80(r4), 0, qr0
/* 8034D3E8 003169A8  11 66 00 18 */	ps_muls0 f11, f6, f0
/* 8034D3EC 003169AC  E0 E4 00 38 */	psq_l f7, 56(r4), 0, qr0
/* 8034D3F0 003169B0  F1 85 00 08 */	psq_st f12, 8(r5), 0, qr0
/* 8034D3F4 003169B4  13 FC F8 FA */	ps_madd f31, f28, f3, f31
/* 8034D3F8 003169B8  11 A6 00 98 */	ps_muls0 f13, f6, f2
/* 8034D3FC 003169BC  F3 E5 00 18 */	psq_st f31, 24(r5), 0, qr0
/* 8034D400 003169C0  13 C6 01 18 */	ps_muls0 f30, f6, f4
/* 8034D404 003169C4  E0 C4 00 48 */	psq_l f6, 72(r4), 0, qr0
/* 8034D408 003169C8  11 68 58 1E */	ps_madds1 f11, f8, f0, f11
/* 8034D40C 003169CC  E1 44 00 58 */	psq_l f10, 88(r4), 0, qr0
/* 8034D410 003169D0  13 BC E9 7A */	ps_madd f29, f28, f5, f29
/* 8034D414 003169D4  38 84 00 30 */	addi r4, r4, 0x30
/* 8034D418 003169D8  11 A8 68 9E */	ps_madds1 f13, f8, f2, f13
/* 8034D41C 003169DC  F3 A5 00 28 */	psq_st f29, 40(r5), 0, qr0
/* 8034D420 003169E0  13 C8 F1 1E */	ps_madds1 f30, f8, f4, f30
/* 8034D424 003169E4  11 69 58 5C */	ps_madds0 f11, f9, f1, f11
/* 8034D428 003169E8  11 87 00 18 */	ps_muls0 f12, f7, f0
/* 8034D42C 003169EC  13 E7 00 98 */	ps_muls0 f31, f7, f2
/* 8034D430 003169F0  F1 65 00 30 */	psq_st f11, 48(r5), 0, qr0
/* 8034D434 003169F4  13 A7 01 18 */	ps_muls0 f29, f7, f4
/* 8034D438 003169F8  11 A9 68 DC */	ps_madds0 f13, f9, f3, f13
/* 8034D43C 003169FC  13 C9 F1 5C */	ps_madds0 f30, f9, f5, f30
/* 8034D440 00316A00  F1 A5 00 40 */	psq_st f13, 64(r5), 0, qr0
/* 8034D444 00316A04  11 86 60 1E */	ps_madds1 f12, f6, f0, f12
/* 8034D448 00316A08  13 E6 F8 9E */	ps_madds1 f31, f6, f2, f31
/* 8034D44C 00316A0C  38 A5 00 30 */	addi r5, r5, 0x30
/* 8034D450 00316A10  13 A6 E9 1E */	ps_madds1 f29, f6, f4, f29
/* 8034D454 00316A14  42 00 FF 74 */	bdnz lbl_8034D3C8
/* 8034D458 00316A18  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 8034D45C 00316A1C  F3 C5 00 20 */	psq_st f30, 32(r5), 0, qr0
/* 8034D460 00316A20  13 EA F8 DC */	ps_madds0 f31, f10, f3, f31
/* 8034D464 00316A24  13 AA E9 5C */	ps_madds0 f29, f10, f5, f29
/* 8034D468 00316A28  11 9C 60 7A */	ps_madd f12, f28, f1, f12
/* 8034D46C 00316A2C  13 FC F8 FA */	ps_madd f31, f28, f3, f31
/* 8034D470 00316A30  F1 85 00 08 */	psq_st f12, 8(r5), 0, qr0
/* 8034D474 00316A34  13 BC E9 7A */	ps_madd f29, f28, f5, f29
/* 8034D478 00316A38  F3 E5 00 18 */	psq_st f31, 24(r5), 0, qr0
/* 8034D47C 00316A3C  F3 A5 00 28 */	psq_st f29, 40(r5), 0, qr0
/* 8034D480 00316A40  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8034D484 00316A44  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8034D488 00316A48  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8034D48C 00316A4C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8034D490 00316A50  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 8034D494 00316A54  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8034D498 00316A58  E3 81 00 18 */	psq_l f28, 24(r1), 0, qr0
/* 8034D49C 00316A5C  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 8034D4A0 00316A60  38 21 00 50 */	addi r1, r1, 0x50
/* 8034D4A4 00316A64  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXTranspose
PSMTXTranspose:
/* 8034D4B0 00316A70  E0 23 00 00 */	psq_l f1, 0(r3), 0, qr0
/* 8034D4B4 00316A74  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8034D4B8 00316A78  C0 02 BD AC */	lfs f0, zero_c@sda21(r2)
/* 8034D4BC 00316A7C  10 81 14 20 */	ps_merge00 f4, f1, f2
/* 8034D4C0 00316A80  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 8034D4C4 00316A84  10 A1 14 E0 */	ps_merge11 f5, f1, f2
/* 8034D4C8 00316A88  E0 43 80 18 */	psq_l f2, 24(r3), 1, qr0
/* 8034D4CC 00316A8C  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 8034D4D0 00316A90  10 43 14 20 */	ps_merge00 f2, f3, f2
/* 8034D4D4 00316A94  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 8034D4D8 00316A98  10 81 04 20 */	ps_merge00 f4, f1, f0
/* 8034D4DC 00316A9C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 8034D4E0 00316AA0  F0 A4 00 10 */	psq_st f5, 16(r4), 0, qr0
/* 8034D4E4 00316AA4  10 A1 04 A0 */	ps_merge10 f5, f1, f0
/* 8034D4E8 00316AA8  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 8034D4EC 00316AAC  F0 44 00 20 */	psq_st f2, 32(r4), 0, qr0
/* 8034D4F0 00316AB0  F0 84 00 08 */	psq_st f4, 8(r4), 0, qr0
/* 8034D4F4 00316AB4  F0 A4 00 18 */	psq_st f5, 24(r4), 0, qr0
/* 8034D4F8 00316AB8  D0 64 00 28 */	stfs f3, 0x28(r4)
/* 8034D4FC 00316ABC  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXInverse
PSMTXInverse:
/* 8034D500 00316AC0  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 8034D504 00316AC4  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 8034D508 00316AC8  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 8034D50C 00316ACC  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 8034D510 00316AD0  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 8034D514 00316AD4  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 8034D518 00316AD8  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 8034D51C 00316ADC  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 8034D520 00316AE0  11 63 01 B2 */	ps_mul f11, f3, f6
/* 8034D524 00316AE4  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 8034D528 00316AE8  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 8034D52C 00316AEC  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 8034D530 00316AF0  11 81 02 32 */	ps_mul f12, f1, f8
/* 8034D534 00316AF4  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 8034D538 00316AF8  11 43 01 32 */	ps_mul f10, f3, f4
/* 8034D53C 00316AFC  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 8034D540 00316B00  10 E0 03 72 */	ps_mul f7, f0, f13
/* 8034D544 00316B04  11 20 01 72 */	ps_mul f9, f0, f5
/* 8034D548 00316B08  11 01 00 B2 */	ps_mul f8, f1, f2
/* 8034D54C 00316B0C  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 8034D550 00316B10  10 C6 30 28 */	ps_sub f6, f6, f6
/* 8034D554 00316B14  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 8034D558 00316B18  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 8034D55C 00316B1C  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 8034D560 00316B20  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 8034D564 00316B24  10 07 30 40 */	ps_cmpo0 cr0, f7, f6
/* 8034D568 00316B28  40 82 00 0C */	bne lbl_8034D574
/* 8034D56C 00316B2C  38 60 00 00 */	li r3, 0
/* 8034D570 00316B30  4E 80 00 20 */	blr
lbl_8034D574:
/* 8034D574 00316B34  EC 00 38 30 */	fres f0, f7
/* 8034D578 00316B38  10 C0 00 2A */	ps_add f6, f0, f0
/* 8034D57C 00316B3C  10 A7 00 32 */	ps_mul f5, f7, f0
/* 8034D580 00316B40  10 00 31 7C */	ps_nmsub f0, f0, f5, f6
/* 8034D584 00316B44  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8034D588 00316B48  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 8034D58C 00316B4C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8034D590 00316B50  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 8034D594 00316B54  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 8034D598 00316B58  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 8034D59C 00316B5C  10 AD 64 20 */	ps_merge00 f5, f13, f12
/* 8034D5A0 00316B60  10 8D 64 E0 */	ps_merge11 f4, f13, f12
/* 8034D5A4 00316B64  10 CD 00 72 */	ps_mul f6, f13, f1
/* 8034D5A8 00316B68  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 8034D5AC 00316B6C  F0 84 00 10 */	psq_st f4, 16(r4), 0, qr0
/* 8034D5B0 00316B70  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 8034D5B4 00316B74  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 8034D5B8 00316B78  10 CC 30 BA */	ps_madd f6, f12, f2, f6
/* 8034D5BC 00316B7C  F1 44 80 20 */	psq_st f10, 32(r4), 1, qr0
/* 8034D5C0 00316B80  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 8034D5C4 00316B84  10 CB 30 FE */	ps_nmadd f6, f11, f3, f6
/* 8034D5C8 00316B88  F1 24 80 24 */	psq_st f9, 36(r4), 1, qr0
/* 8034D5CC 00316B8C  10 EA 00 72 */	ps_mul f7, f10, f1
/* 8034D5D0 00316B90  10 AB 34 20 */	ps_merge00 f5, f11, f6
/* 8034D5D4 00316B94  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 8034D5D8 00316B98  10 E9 38 BA */	ps_madd f7, f9, f2, f7
/* 8034D5DC 00316B9C  10 8B 34 E0 */	ps_merge11 f4, f11, f6
/* 8034D5E0 00316BA0  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 8034D5E4 00316BA4  10 E8 38 FE */	ps_nmadd f7, f8, f3, f7
/* 8034D5E8 00316BA8  F0 84 00 18 */	psq_st f4, 24(r4), 0, qr0
/* 8034D5EC 00316BAC  F0 E4 80 2C */	psq_st f7, 44(r4), 1, qr0
/* 8034D5F0 00316BB0  38 60 00 01 */	li r3, 1
/* 8034D5F4 00316BB4  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXRotRad
PSMTXRotRad:
/* 8034D600 00316BC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8034D604 00316BC4  7C 08 02 A6 */	mflr r0
/* 8034D608 00316BC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8034D60C 00316BCC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8034D610 00316BD0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8034D614 00316BD4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8034D618 00316BD8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 8034D61C 00316BDC  FF C0 08 90 */	fmr f30, f1
/* 8034D620 00316BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034D624 00316BE4  7C 9F 23 78 */	mr r31, r4
/* 8034D628 00316BE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8034D62C 00316BEC  7C 7E 1B 78 */	mr r30, r3
/* 8034D630 00316BF0  4B F7 DA 8D */	bl sin
/* 8034D634 00316BF4  FF E0 08 18 */	frsp f31, f1
/* 8034D638 00316BF8  FC 20 F0 90 */	fmr f1, f30
/* 8034D63C 00316BFC  4B F7 D5 79 */	bl cos
/* 8034D640 00316C00  FC 40 08 18 */	frsp f2, f1
/* 8034D644 00316C04  7F C3 F3 78 */	mr r3, r30
/* 8034D648 00316C08  FC 20 F8 90 */	fmr f1, f31
/* 8034D64C 00316C0C  7F E4 07 74 */	extsb r4, r31
/* 8034D650 00316C10  48 00 00 31 */	bl PSMTXRotTrig
/* 8034D654 00316C14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8034D658 00316C18  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8034D65C 00316C1C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8034D660 00316C20  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 8034D664 00316C24  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8034D668 00316C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034D66C 00316C2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034D670 00316C30  7C 08 03 A6 */	mtlr r0
/* 8034D674 00316C34  38 21 00 30 */	addi r1, r1, 0x30
/* 8034D678 00316C38  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXRotTrig
PSMTXRotTrig:
/* 8034D680 00316C40  FC A0 08 18 */	frsp f5, f1
/* 8034D684 00316C44  60 80 00 20 */	ori r0, r4, 0x20
/* 8034D688 00316C48  FC 80 10 18 */	frsp f4, f2
/* 8034D68C 00316C4C  28 00 00 78 */	cmplwi r0, 0x78
/* 8034D690 00316C50  C0 02 BD AC */	lfs f0, zero_c@sda21(r2)
/* 8034D694 00316C54  10 40 28 50 */	ps_neg f2, f5
/* 8034D698 00316C58  C0 22 BD A8 */	lfs f1, one_c@sda21(r2)
/* 8034D69C 00316C5C  41 82 00 18 */	beq lbl_8034D6B4
/* 8034D6A0 00316C60  28 00 00 79 */	cmplwi r0, 0x79
/* 8034D6A4 00316C64  41 82 00 38 */	beq lbl_8034D6DC
/* 8034D6A8 00316C68  28 00 00 7A */	cmplwi r0, 0x7a
/* 8034D6AC 00316C6C  41 82 00 5C */	beq lbl_8034D708
/* 8034D6B0 00316C70  4E 80 00 20 */	blr
lbl_8034D6B4:
/* 8034D6B4 00316C74  10 65 24 20 */	ps_merge00 f3, f5, f4
/* 8034D6B8 00316C78  F0 23 80 00 */	psq_st f1, 0(r3), 1, qr0
/* 8034D6BC 00316C7C  10 24 14 20 */	ps_merge00 f1, f4, f2
/* 8034D6C0 00316C80  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 8034D6C4 00316C84  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 8034D6C8 00316C88  F0 03 00 1C */	psq_st f0, 28(r3), 0, qr0
/* 8034D6CC 00316C8C  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 8034D6D0 00316C90  F0 63 00 24 */	psq_st f3, 36(r3), 0, qr0
/* 8034D6D4 00316C94  F0 23 00 14 */	psq_st f1, 20(r3), 0, qr0
/* 8034D6D8 00316C98  4E 80 00 20 */	blr
lbl_8034D6DC:
/* 8034D6DC 00316C9C  10 64 04 20 */	ps_merge00 f3, f4, f0
/* 8034D6E0 00316CA0  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8034D6E4 00316CA4  10 20 0C 20 */	ps_merge00 f1, f0, f1
/* 8034D6E8 00316CA8  10 42 04 20 */	ps_merge00 f2, f2, f0
/* 8034D6EC 00316CAC  F0 63 00 00 */	psq_st f3, 0(r3), 0, qr0
/* 8034D6F0 00316CB0  10 05 04 20 */	ps_merge00 f0, f5, f0
/* 8034D6F4 00316CB4  F0 63 00 28 */	psq_st f3, 40(r3), 0, qr0
/* 8034D6F8 00316CB8  F0 23 00 10 */	psq_st f1, 16(r3), 0, qr0
/* 8034D6FC 00316CBC  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 8034D700 00316CC0  F0 43 00 20 */	psq_st f2, 32(r3), 0, qr0
/* 8034D704 00316CC4  4E 80 00 20 */	blr
lbl_8034D708:
/* 8034D708 00316CC8  10 65 24 20 */	ps_merge00 f3, f5, f4
/* 8034D70C 00316CCC  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 8034D710 00316CD0  10 44 14 20 */	ps_merge00 f2, f4, f2
/* 8034D714 00316CD4  10 21 04 20 */	ps_merge00 f1, f1, f0
/* 8034D718 00316CD8  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8034D71C 00316CDC  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8034D720 00316CE0  F0 63 00 10 */	psq_st f3, 16(r3), 0, qr0
/* 8034D724 00316CE4  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 8034D728 00316CE8  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 8034D72C 00316CEC  4E 80 00 20 */	blr 

.balign 16, 0
.global __PSMTXRotAxisRadInternal
__PSMTXRotAxisRadInternal:
/* 8034D730 00316CF0  E0 64 00 00 */	psq_l f3, 0(r4), 0, qr0
/* 8034D734 00316CF4  FD 60 10 18 */	frsp f11, f2
/* 8034D738 00316CF8  C1 42 BD B0 */	lfs f10, lbl_8066C130@sda21(r2)
/* 8034D73C 00316CFC  FD 80 08 18 */	frsp f12, f1
/* 8034D740 00316D00  10 83 00 F2 */	ps_mul f4, f3, f3
/* 8034D744 00316D04  C0 44 00 08 */	lfs f2, 8(r4)
/* 8034D748 00316D08  ED 0A 50 2A */	fadds f8, f10, f10
/* 8034D74C 00316D0C  C1 22 BD B4 */	lfs f9, lbl_8066C134@sda21(r2)
/* 8034D750 00316D10  EC 2A 50 28 */	fsubs f1, f10, f10
/* 8034D754 00316D14  10 A2 20 BA */	ps_madd f5, f2, f2, f4
/* 8034D758 00316D18  EC 08 58 28 */	fsubs f0, f8, f11
/* 8034D75C 00316D1C  11 6B 5C 20 */	ps_merge00 f11, f11, f11
/* 8034D760 00316D20  10 C5 20 94 */	ps_sum0 f6, f5, f2, f4
/* 8034D764 00316D24  FC E0 30 34 */	frsqrte f7, f6
/* 8034D768 00316D28  EC 87 01 F2 */	fmuls f4, f7, f7
/* 8034D76C 00316D2C  EC A7 02 B2 */	fmuls f5, f7, f10
/* 8034D770 00316D30  EC 84 49 BC */	fnmsubs f4, f4, f6, f9
/* 8034D774 00316D34  EC E4 01 72 */	fmuls f7, f4, f5
/* 8034D778 00316D38  10 63 01 D8 */	ps_muls0 f3, f3, f7
/* 8034D77C 00316D3C  10 42 01 D8 */	ps_muls0 f2, f2, f7
/* 8034D780 00316D40  10 C3 00 18 */	ps_muls0 f6, f3, f0
/* 8034D784 00316D44  10 E2 00 18 */	ps_muls0 f7, f2, f0
/* 8034D788 00316D48  11 43 03 18 */	ps_muls0 f10, f3, f12
/* 8034D78C 00316D4C  10 A6 00 DA */	ps_muls1 f5, f6, f3
/* 8034D790 00316D50  10 86 00 D8 */	ps_muls0 f4, f6, f3
/* 8034D794 00316D54  10 C6 00 98 */	ps_muls0 f6, f6, f2
/* 8034D798 00316D58  EC 02 2B 3C */	fnmsubs f0, f2, f12, f5
/* 8034D79C 00316D5C  10 60 50 50 */	ps_neg f3, f10
/* 8034D7A0 00316D60  ED 02 2B 3A */	fmadds f8, f2, f12, f5
/* 8034D7A4 00316D64  10 84 58 14 */	ps_sum0 f4, f4, f0, f11
/* 8034D7A8 00316D68  10 03 30 54 */	ps_sum0 f0, f3, f1, f6
/* 8034D7AC 00316D6C  10 E7 00 98 */	ps_muls0 f7, f7, f2
/* 8034D7B0 00316D70  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 8034D7B4 00316D74  11 26 50 54 */	ps_sum0 f9, f6, f1, f10
/* 8034D7B8 00316D78  10 66 19 94 */	ps_sum0 f3, f6, f6, f3
/* 8034D7BC 00316D7C  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8034D7C0 00316D80  10 AB 2A 16 */	ps_sum1 f5, f11, f8, f5
/* 8034D7C4 00316D84  10 E7 58 54 */	ps_sum0 f7, f7, f1, f11
/* 8034D7C8 00316D88  F1 23 00 08 */	psq_st f9, 8(r3), 0, qr0
/* 8034D7CC 00316D8C  10 CA 30 D6 */	ps_sum1 f6, f10, f3, f6
/* 8034D7D0 00316D90  F0 A3 00 10 */	psq_st f5, 16(r3), 0, qr0
/* 8034D7D4 00316D94  F0 C3 00 20 */	psq_st f6, 32(r3), 0, qr0
/* 8034D7D8 00316D98  F0 E3 00 28 */	psq_st f7, 40(r3), 0, qr0
/* 8034D7DC 00316D9C  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXRotAxisRad
PSMTXRotAxisRad:
/* 8034D7E0 00316DA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8034D7E4 00316DA4  7C 08 02 A6 */	mflr r0
/* 8034D7E8 00316DA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8034D7EC 00316DAC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8034D7F0 00316DB0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8034D7F4 00316DB4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8034D7F8 00316DB8  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 8034D7FC 00316DBC  FF C0 08 90 */	fmr f30, f1
/* 8034D800 00316DC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034D804 00316DC4  7C 9F 23 78 */	mr r31, r4
/* 8034D808 00316DC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8034D80C 00316DCC  7C 7E 1B 78 */	mr r30, r3
/* 8034D810 00316DD0  4B F7 D8 AD */	bl sin
/* 8034D814 00316DD4  FF E0 08 18 */	frsp f31, f1
/* 8034D818 00316DD8  FC 20 F0 90 */	fmr f1, f30
/* 8034D81C 00316DDC  4B F7 D3 99 */	bl cos
/* 8034D820 00316DE0  FC 40 08 18 */	frsp f2, f1
/* 8034D824 00316DE4  7F C3 F3 78 */	mr r3, r30
/* 8034D828 00316DE8  FC 20 F8 90 */	fmr f1, f31
/* 8034D82C 00316DEC  7F E4 FB 78 */	mr r4, r31
/* 8034D830 00316DF0  4B FF FF 01 */	bl __PSMTXRotAxisRadInternal
/* 8034D834 00316DF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8034D838 00316DF8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8034D83C 00316DFC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8034D840 00316E00  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 8034D844 00316E04  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8034D848 00316E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034D84C 00316E0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034D850 00316E10  7C 08 03 A6 */	mtlr r0
/* 8034D854 00316E14  38 21 00 30 */	addi r1, r1, 0x30
/* 8034D858 00316E18  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXTrans
PSMTXTrans:
/* 8034D860 00316E20  C0 02 BD AC */	lfs f0, zero_c@sda21(r2)
/* 8034D864 00316E24  C0 82 BD A8 */	lfs f4, one_c@sda21(r2)
/* 8034D868 00316E28  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8034D86C 00316E2C  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8034D870 00316E30  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 8034D874 00316E34  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8034D878 00316E38  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8034D87C 00316E3C  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 8034D880 00316E40  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8034D884 00316E44  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 8034D888 00316E48  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8034D88C 00316E4C  D0 83 00 00 */	stfs f4, 0(r3)
/* 8034D890 00316E50  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXTransApply
PSMTXTransApply:
/* 8034D8A0 00316E60  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 8034D8A4 00316E64  FC 20 08 18 */	frsp f1, f1
/* 8034D8A8 00316E68  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 8034D8AC 00316E6C  FC 40 10 18 */	frsp f2, f2
/* 8034D8B0 00316E70  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 8034D8B4 00316E74  FC 60 18 18 */	frsp f3, f3
/* 8034D8B8 00316E78  E1 03 00 28 */	psq_l f8, 40(r3), 0, qr0
/* 8034D8BC 00316E7C  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 8034D8C0 00316E80  10 A1 29 56 */	ps_sum1 f5, f1, f5, f5
/* 8034D8C4 00316E84  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 8034D8C8 00316E88  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 8034D8CC 00316E8C  10 E2 39 D6 */	ps_sum1 f7, f2, f7, f7
/* 8034D8D0 00316E90  E1 23 00 20 */	psq_l f9, 32(r3), 0, qr0
/* 8034D8D4 00316E94  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 8034D8D8 00316E98  11 03 42 16 */	ps_sum1 f8, f3, f8, f8
/* 8034D8DC 00316E9C  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 8034D8E0 00316EA0  F1 24 00 20 */	psq_st f9, 32(r4), 0, qr0
/* 8034D8E4 00316EA4  F1 04 00 28 */	psq_st f8, 40(r4), 0, qr0
/* 8034D8E8 00316EA8  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXScale
PSMTXScale:
/* 8034D8F0 00316EB0  C0 02 BD AC */	lfs f0, zero_c@sda21(r2)
/* 8034D8F4 00316EB4  D0 23 00 00 */	stfs f1, 0(r3)
/* 8034D8F8 00316EB8  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 8034D8FC 00316EBC  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 8034D900 00316EC0  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8034D904 00316EC4  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8034D908 00316EC8  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8034D90C 00316ECC  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 8034D910 00316ED0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8034D914 00316ED4  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXScaleApply
PSMTXScaleApply:
/* 8034D920 00316EE0  FC 20 08 18 */	frsp f1, f1
/* 8034D924 00316EE4  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 8034D928 00316EE8  FC 40 10 18 */	frsp f2, f2
/* 8034D92C 00316EEC  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 8034D930 00316EF0  FC 60 18 18 */	frsp f3, f3
/* 8034D934 00316EF4  10 84 00 58 */	ps_muls0 f4, f4, f1
/* 8034D938 00316EF8  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 8034D93C 00316EFC  10 A5 00 58 */	ps_muls0 f5, f5, f1
/* 8034D940 00316F00  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 8034D944 00316F04  10 C6 00 98 */	ps_muls0 f6, f6, f2
/* 8034D948 00316F08  E1 03 00 20 */	psq_l f8, 32(r3), 0, qr0
/* 8034D94C 00316F0C  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 8034D950 00316F10  10 E7 00 98 */	ps_muls0 f7, f7, f2
/* 8034D954 00316F14  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 8034D958 00316F18  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 8034D95C 00316F1C  11 08 00 D8 */	ps_muls0 f8, f8, f3
/* 8034D960 00316F20  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 8034D964 00316F24  10 42 00 D8 */	ps_muls0 f2, f2, f3
/* 8034D968 00316F28  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 8034D96C 00316F2C  F1 04 00 20 */	psq_st f8, 32(r4), 0, qr0
/* 8034D970 00316F30  F0 44 00 28 */	psq_st f2, 40(r4), 0, qr0
/* 8034D974 00316F34  4E 80 00 20 */	blr 

.balign 16, 0
.global PSMTXQuat
PSMTXQuat:
/* 8034D980 00316F40  E0 84 00 00 */	psq_l f4, 0(r4), 0, qr0
/* 8034D984 00316F44  E0 A4 00 08 */	psq_l f5, 8(r4), 0, qr0
/* 8034D988 00316F48  10 C4 01 32 */	ps_mul f6, f4, f4
/* 8034D98C 00316F4C  C0 22 BD A8 */	lfs f1, one_c@sda21(r2)
/* 8034D990 00316F50  11 24 24 A0 */	ps_merge10 f9, f4, f4
/* 8034D994 00316F54  EC 01 08 28 */	fsubs f0, f1, f1
/* 8034D998 00316F58  11 05 31 7A */	ps_madd f8, f5, f5, f6
/* 8034D99C 00316F5C  11 45 01 5A */	ps_muls1 f10, f5, f5
/* 8034D9A0 00316F60  F0 03 80 0C */	psq_st f0, 12(r3), 1, qr0
/* 8034D9A4 00316F64  EC 41 08 2A */	fadds f2, f1, f1
/* 8034D9A8 00316F68  10 68 42 14 */	ps_sum0 f3, f8, f8, f8
/* 8034D9AC 00316F6C  F0 03 80 2C */	psq_st f0, 44(r3), 1, qr0
/* 8034D9B0 00316F70  10 E5 01 72 */	ps_mul f7, f5, f5
/* 8034D9B4 00316F74  11 84 52 7A */	ps_madd f12, f4, f9, f10
/* 8034D9B8 00316F78  ED A0 18 30 */	fres f13, f3
/* 8034D9BC 00316F7C  10 63 13 7C */	ps_nmsub f3, f3, f13, f2
/* 8034D9C0 00316F80  11 69 01 5A */	ps_muls1 f11, f9, f5
/* 8034D9C4 00316F84  11 44 52 78 */	ps_msub f10, f4, f9, f10
/* 8034D9C8 00316F88  10 6D 00 F2 */	ps_mul f3, f13, f3
/* 8034D9CC 00316F8C  11 24 59 5C */	ps_madds0 f9, f4, f5, f11
/* 8034D9D0 00316F90  11 07 32 16 */	ps_sum1 f8, f7, f8, f6
/* 8034D9D4 00316F94  EC 63 00 B2 */	fmuls f3, f3, f2
/* 8034D9D8 00316F98  11 6B 48 BC */	ps_nmsub f11, f11, f2, f9
/* 8034D9DC 00316F9C  10 C6 31 94 */	ps_sum0 f6, f6, f6, f6
/* 8034D9E0 00316FA0  11 29 00 F2 */	ps_mul f9, f9, f3
/* 8034D9E4 00316FA4  11 6B 00 F2 */	ps_mul f11, f11, f3
/* 8034D9E8 00316FA8  11 08 08 FC */	ps_nmsub f8, f8, f3, f1
/* 8034D9EC 00316FAC  F1 23 80 08 */	psq_st f9, 8(r3), 1, qr0
/* 8034D9F0 00316FB0  11 8C 00 F2 */	ps_mul f12, f12, f3
/* 8034D9F4 00316FB4  11 4A 00 F2 */	ps_mul f10, f10, f3
/* 8034D9F8 00316FB8  10 EB 04 A0 */	ps_merge10 f7, f11, f0
/* 8034D9FC 00316FBC  10 AC 44 20 */	ps_merge00 f5, f12, f8
/* 8034DA00 00316FC0  10 88 54 A0 */	ps_merge10 f4, f8, f10
/* 8034DA04 00316FC4  F0 E3 00 18 */	psq_st f7, 24(r3), 0, qr0
/* 8034DA08 00316FC8  11 AB 4C 60 */	ps_merge01 f13, f11, f9
/* 8034DA0C 00316FCC  10 C6 08 FC */	ps_nmsub f6, f6, f3, f1
/* 8034DA10 00316FD0  F0 A3 00 10 */	psq_st f5, 16(r3), 0, qr0
/* 8034DA14 00316FD4  F0 C3 80 28 */	psq_st f6, 40(r3), 1, qr0
/* 8034DA18 00316FD8  F0 83 00 00 */	psq_st f4, 0(r3), 0, qr0
/* 8034DA1C 00316FDC  F1 A3 00 20 */	psq_st f13, 32(r3), 0, qr0
/* 8034DA20 00316FE0  4E 80 00 20 */	blr 

.balign 16, 0
.global C_MTXLookAt
C_MTXLookAt:
/* 8034DA30 00316FF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034DA34 00316FF4  7C 08 02 A6 */	mflr r0
/* 8034DA38 00316FF8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8034DA3C 00316FFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8034DA40 00317000  C0 06 00 00 */	lfs f0, 0(r6)
/* 8034DA44 00317004  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8034DA48 00317008  7C BF 2B 78 */	mr r31, r5
/* 8034DA4C 0031700C  EC 81 00 28 */	fsubs f4, f1, f0
/* 8034DA50 00317010  C0 64 00 04 */	lfs f3, 4(r4)
/* 8034DA54 00317014  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8034DA58 00317018  7C 9E 23 78 */	mr r30, r4
/* 8034DA5C 0031701C  C0 46 00 04 */	lfs f2, 4(r6)
/* 8034DA60 00317020  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8034DA64 00317024  EC 43 10 28 */	fsubs f2, f3, f2
/* 8034DA68 00317028  C0 24 00 08 */	lfs f1, 8(r4)
/* 8034DA6C 0031702C  C0 06 00 08 */	lfs f0, 8(r6)
/* 8034DA70 00317030  7C 7D 1B 78 */	mr r29, r3
/* 8034DA74 00317034  38 61 00 20 */	addi r3, r1, 0x20
/* 8034DA78 00317038  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8034DA7C 0031703C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8034DA80 00317040  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8034DA84 00317044  7C 64 1B 78 */	mr r4, r3
/* 8034DA88 00317048  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8034DA8C 0031704C  48 00 06 25 */	bl PSVECNormalize
/* 8034DA90 00317050  7F E3 FB 78 */	mr r3, r31
/* 8034DA94 00317054  38 81 00 20 */	addi r4, r1, 0x20
/* 8034DA98 00317058  38 A1 00 14 */	addi r5, r1, 0x14
/* 8034DA9C 0031705C  48 00 06 D5 */	bl PSVECCrossProduct
/* 8034DAA0 00317060  38 61 00 14 */	addi r3, r1, 0x14
/* 8034DAA4 00317064  7C 64 1B 78 */	mr r4, r3
/* 8034DAA8 00317068  48 00 06 09 */	bl PSVECNormalize
/* 8034DAAC 0031706C  38 61 00 20 */	addi r3, r1, 0x20
/* 8034DAB0 00317070  38 81 00 14 */	addi r4, r1, 0x14
/* 8034DAB4 00317074  38 A1 00 08 */	addi r5, r1, 8
/* 8034DAB8 00317078  48 00 06 B9 */	bl PSVECCrossProduct
/* 8034DABC 0031707C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8034DAC0 00317080  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8034DAC4 00317084  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8034DAC8 00317088  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8034DACC 0031708C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8034DAD0 00317090  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8034DAD4 00317094  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8034DAD8 00317098  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8034DADC 0031709C  C0 BE 00 08 */	lfs f5, 8(r30)
/* 8034DAE0 003170A0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8034DAE4 003170A4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8034DAE8 003170A8  EC 24 00 72 */	fmuls f1, f4, f1
/* 8034DAEC 003170AC  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8034DAF0 003170B0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8034DAF4 003170B4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8034DAF8 003170B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8034DAFC 003170BC  EC 02 00 2A */	fadds f0, f2, f0
/* 8034DB00 003170C0  FC 00 00 50 */	fneg f0, f0
/* 8034DB04 003170C4  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8034DB08 003170C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8034DB0C 003170CC  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8034DB10 003170D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8034DB14 003170D4  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8034DB18 003170D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8034DB1C 003170DC  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8034DB20 003170E0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8034DB24 003170E4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8034DB28 003170E8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8034DB2C 003170EC  EC 24 00 72 */	fmuls f1, f4, f1
/* 8034DB30 003170F0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8034DB34 003170F4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8034DB38 003170F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8034DB3C 003170FC  EC 02 00 2A */	fadds f0, f2, f0
/* 8034DB40 00317100  FC 00 00 50 */	fneg f0, f0
/* 8034DB44 00317104  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8034DB48 00317108  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8034DB4C 0031710C  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8034DB50 00317110  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8034DB54 00317114  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8034DB58 00317118  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8034DB5C 0031711C  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8034DB60 00317120  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8034DB64 00317124  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8034DB68 00317128  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8034DB6C 0031712C  EC 24 00 72 */	fmuls f1, f4, f1
/* 8034DB70 00317130  EC 03 00 32 */	fmuls f0, f3, f0
/* 8034DB74 00317134  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8034DB78 00317138  EC 01 00 2A */	fadds f0, f1, f0
/* 8034DB7C 0031713C  EC 02 00 2A */	fadds f0, f2, f0
/* 8034DB80 00317140  FC 00 00 50 */	fneg f0, f0
/* 8034DB84 00317144  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 8034DB88 00317148  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8034DB8C 0031714C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8034DB90 00317150  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8034DB94 00317154  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034DB98 00317158  7C 08 03 A6 */	mtlr r0
/* 8034DB9C 0031715C  38 21 00 40 */	addi r1, r1, 0x40
/* 8034DBA0 00317160  4E 80 00 20 */	blr 

.balign 16, 0
.global C_MTXLightFrustum
C_MTXLightFrustum:
/* 8034DBB0 00317170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034DBB4 00317174  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8034DBB8 00317178  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8034DBBC 0031717C  EC 04 18 28 */	fsubs f0, f4, f3
/* 8034DBC0 00317180  C1 42 BD AC */	lfs f10, zero_c@sda21(r2)
/* 8034DBC4 00317184  C1 82 BD A8 */	lfs f12, one_c@sda21(r2)
/* 8034DBC8 00317188  ED 21 10 28 */	fsubs f9, f1, f2
/* 8034DBCC 0031718C  C1 62 BD B8 */	lfs f11, lbl_8066C138@sda21(r2)
/* 8034DBD0 00317190  EC 64 18 2A */	fadds f3, f4, f3
/* 8034DBD4 00317194  ED AC 00 24 */	fdivs f13, f12, f0
/* 8034DBD8 00317198  C0 02 BD BC */	lfs f0, lbl_8066C13C@sda21(r2)
/* 8034DBDC 0031719C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8034DBE0 003171A0  C3 E1 00 28 */	lfs f31, 0x28(r1)
/* 8034DBE4 003171A4  D1 43 00 04 */	stfs f10, 4(r3)
/* 8034DBE8 003171A8  D1 43 00 0C */	stfs f10, 0xc(r3)
/* 8034DBEC 003171AC  EC 8B 01 72 */	fmuls f4, f11, f5
/* 8034DBF0 003171B0  D1 43 00 10 */	stfs f10, 0x10(r3)
/* 8034DBF4 003171B4  EC 01 10 2A */	fadds f0, f1, f2
/* 8034DBF8 003171B8  EC 2D 00 F2 */	fmuls f1, f13, f3
/* 8034DBFC 003171BC  D1 43 00 1C */	stfs f10, 0x1c(r3)
/* 8034DC00 003171C0  EC AC 48 24 */	fdivs f5, f12, f9
/* 8034DC04 003171C4  D1 43 00 20 */	stfs f10, 0x20(r3)
/* 8034DC08 003171C8  D1 43 00 24 */	stfs f10, 0x24(r3)
/* 8034DC0C 003171CC  D1 43 00 2C */	stfs f10, 0x2c(r3)
/* 8034DC10 003171D0  EC 46 00 72 */	fmuls f2, f6, f1
/* 8034DC14 003171D4  EC 05 00 32 */	fmuls f0, f5, f0
/* 8034DC18 003171D8  EC 64 03 72 */	fmuls f3, f4, f13
/* 8034DC1C 003171DC  EC 24 01 72 */	fmuls f1, f4, f5
/* 8034DC20 003171E0  EC 07 00 32 */	fmuls f0, f7, f0
/* 8034DC24 003171E4  EC 66 00 F2 */	fmuls f3, f6, f3
/* 8034DC28 003171E8  EC 42 40 28 */	fsubs f2, f2, f8
/* 8034DC2C 003171EC  EC 27 00 72 */	fmuls f1, f7, f1
/* 8034DC30 003171F0  D0 63 00 00 */	stfs f3, 0(r3)
/* 8034DC34 003171F4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8034DC38 003171F8  D0 43 00 08 */	stfs f2, 8(r3)
/* 8034DC3C 003171FC  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8034DC40 00317200  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8034DC44 00317204  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8034DC48 00317208  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8034DC4C 0031720C  38 21 00 20 */	addi r1, r1, 0x20
/* 8034DC50 00317210  4E 80 00 20 */	blr 

.balign 16, 0
.global C_MTXLightPerspective
C_MTXLightPerspective:
/* 8034DC60 00317220  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8034DC64 00317224  7C 08 02 A6 */	mflr r0
/* 8034DC68 00317228  C0 E2 BD B0 */	lfs f7, lbl_8066C130@sda21(r2)
/* 8034DC6C 0031722C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8034DC70 00317230  EC 27 00 72 */	fmuls f1, f7, f1
/* 8034DC74 00317234  C0 02 BD C0 */	lfs f0, lbl_8066C140@sda21(r2)
/* 8034DC78 00317238  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8034DC7C 0031723C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8034DC80 00317240  EC 20 00 72 */	fmuls f1, f0, f1
/* 8034DC84 00317244  FF E0 30 90 */	fmr f31, f6
/* 8034DC88 00317248  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8034DC8C 0031724C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8034DC90 00317250  FF C0 28 90 */	fmr f30, f5
/* 8034DC94 00317254  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8034DC98 00317258  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 8034DC9C 0031725C  FF A0 20 90 */	fmr f29, f4
/* 8034DCA0 00317260  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 8034DCA4 00317264  F3 81 00 28 */	psq_st f28, 40(r1), 0, qr0
/* 8034DCA8 00317268  FF 80 18 90 */	fmr f28, f3
/* 8034DCAC 0031726C  DB 61 00 10 */	stfd f27, 0x10(r1)
/* 8034DCB0 00317270  F3 61 00 18 */	psq_st f27, 24(r1), 0, qr0
/* 8034DCB4 00317274  FF 60 10 90 */	fmr f27, f2
/* 8034DCB8 00317278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034DCBC 0031727C  7C 7F 1B 78 */	mr r31, r3
/* 8034DCC0 00317280  4B F7 D4 C9 */	bl tan
/* 8034DCC4 00317284  FC A0 08 18 */	frsp f5, f1
/* 8034DCC8 00317288  C0 62 BD AC */	lfs f3, zero_c@sda21(r2)
/* 8034DCCC 0031728C  C0 82 BD A8 */	lfs f4, one_c@sda21(r2)
/* 8034DCD0 00317290  FC 20 F8 50 */	fneg f1, f31
/* 8034DCD4 00317294  C0 02 BD BC */	lfs f0, lbl_8066C13C@sda21(r2)
/* 8034DCD8 00317298  FC 40 F0 50 */	fneg f2, f30
/* 8034DCDC 0031729C  EC 84 28 24 */	fdivs f4, f4, f5
/* 8034DCE0 003172A0  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 8034DCE4 003172A4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8034DCE8 003172A8  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8034DCEC 003172AC  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8034DCF0 003172B0  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 8034DCF4 003172B4  EC 24 D8 24 */	fdivs f1, f4, f27
/* 8034DCF8 003172B8  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 8034DCFC 003172BC  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 8034DD00 003172C0  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 8034DD04 003172C4  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 8034DD08 003172C8  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 8034DD0C 003172CC  EC 3C 00 72 */	fmuls f1, f28, f1
/* 8034DD10 003172D0  EC 04 07 72 */	fmuls f0, f4, f29
/* 8034DD14 003172D4  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8034DD18 003172D8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8034DD1C 003172DC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8034DD20 003172E0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8034DD24 003172E4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8034DD28 003172E8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8034DD2C 003172EC  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 8034DD30 003172F0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8034DD34 003172F4  E3 81 00 28 */	psq_l f28, 40(r1), 0, qr0
/* 8034DD38 003172F8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 8034DD3C 003172FC  E3 61 00 18 */	psq_l f27, 24(r1), 0, qr0
/* 8034DD40 00317300  CB 61 00 10 */	lfd f27, 0x10(r1)
/* 8034DD44 00317304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034DD48 00317308  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8034DD4C 0031730C  7C 08 03 A6 */	mtlr r0
/* 8034DD50 00317310  38 21 00 60 */	addi r1, r1, 0x60
/* 8034DD54 00317314  4E 80 00 20 */	blr 

.balign 16, 0
.global C_MTXLightOrtho
C_MTXLightOrtho:
/* 8034DD60 00317320  ED 64 18 28 */	fsubs f11, f4, f3
/* 8034DD64 00317324  C1 22 BD AC */	lfs f9, zero_c@sda21(r2)
/* 8034DD68 00317328  C1 42 BD A8 */	lfs f10, one_c@sda21(r2)
/* 8034DD6C 0031732C  EC 01 10 28 */	fsubs f0, f1, f2
/* 8034DD70 00317330  EC 64 18 2A */	fadds f3, f4, f3
/* 8034DD74 00317334  C0 82 BD B8 */	lfs f4, lbl_8066C138@sda21(r2)
/* 8034DD78 00317338  ED 8A 58 24 */	fdivs f12, f10, f11
/* 8034DD7C 0031733C  D1 23 00 04 */	stfs f9, 4(r3)
/* 8034DD80 00317340  D1 23 00 08 */	stfs f9, 8(r3)
/* 8034DD84 00317344  D1 23 00 10 */	stfs f9, 0x10(r3)
/* 8034DD88 00317348  D1 23 00 18 */	stfs f9, 0x18(r3)
/* 8034DD8C 0031734C  D1 23 00 20 */	stfs f9, 0x20(r3)
/* 8034DD90 00317350  ED 6A 00 24 */	fdivs f11, f10, f0
/* 8034DD94 00317354  D1 23 00 24 */	stfs f9, 0x24(r3)
/* 8034DD98 00317358  D1 23 00 28 */	stfs f9, 0x28(r3)
/* 8034DD9C 0031735C  D1 43 00 2C */	stfs f10, 0x2c(r3)
/* 8034DDA0 00317360  EC 01 10 2A */	fadds f0, f1, f2
/* 8034DDA4 00317364  FC 20 18 50 */	fneg f1, f3
/* 8034DDA8 00317368  EC 64 03 32 */	fmuls f3, f4, f12
/* 8034DDAC 0031736C  FC 00 00 50 */	fneg f0, f0
/* 8034DDB0 00317370  EC 4C 00 72 */	fmuls f2, f12, f1
/* 8034DDB4 00317374  EC 24 02 F2 */	fmuls f1, f4, f11
/* 8034DDB8 00317378  EC 0B 00 32 */	fmuls f0, f11, f0
/* 8034DDBC 0031737C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8034DDC0 00317380  EC 63 01 72 */	fmuls f3, f3, f5
/* 8034DDC4 00317384  EC 06 00 32 */	fmuls f0, f6, f0
/* 8034DDC8 00317388  EC 47 10 2A */	fadds f2, f7, f2
/* 8034DDCC 0031738C  D0 63 00 00 */	stfs f3, 0(r3)
/* 8034DDD0 00317390  EC 21 01 B2 */	fmuls f1, f1, f6
/* 8034DDD4 00317394  EC 08 00 2A */	fadds f0, f8, f0
/* 8034DDD8 00317398  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8034DDDC 0031739C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8034DDE0 003173A0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8034DDE4 003173A4  4E 80 00 20 */	blr