.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ahxsbf_mult_flt_ex
ahxsbf_mult_flt_ex:
/* 8038A9B0 00353F70  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8038A9B4 00353F74  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8038A9B8 00353F78  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8038A9BC 00353F7C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8038A9C0 00353F80  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8038A9C4 00353F84  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8038A9C8 00353F88  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 8038A9CC 00353F8C  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8038A9D0 00353F90  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 8038A9D4 00353F94  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 8038A9D8 00353F98  F3 61 00 48 */	psq_st f27, 72(r1), 0, qr0
/* 8038A9DC 00353F9C  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 8038A9E0 00353FA0  F3 41 00 38 */	psq_st f26, 56(r1), 0, qr0
/* 8038A9E4 00353FA4  DB 21 00 20 */	stfd f25, 0x20(r1)
/* 8038A9E8 00353FA8  F3 21 00 28 */	psq_st f25, 40(r1), 0, qr0
/* 8038A9EC 00353FAC  DB 01 00 10 */	stfd f24, 0x10(r1)
/* 8038A9F0 00353FB0  F3 01 00 18 */	psq_st f24, 24(r1), 0, qr0
/* 8038A9F4 00353FB4  7C A6 2B 78 */	mr r6, r5
/* 8038A9F8 00353FB8  7C 87 23 78 */	mr r7, r4
/* 8038A9FC 00353FBC  39 05 00 80 */	addi r8, r5, 0x80
/* 8038AA00 00353FC0  39 25 00 84 */	addi r9, r5, 0x84
/* 8038AA04 00353FC4  39 45 00 FC */	addi r10, r5, 0xfc
/* 8038AA08 00353FC8  38 00 00 10 */	li r0, 0x10
lbl_8038AA0C:
/* 8038AA0C 00353FCC  C0 23 00 00 */	lfs f1, 0(r3)
/* 8038AA10 00353FD0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038AA14 00353FD4  C0 63 00 04 */	lfs f3, 4(r3)
/* 8038AA18 00353FD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8038AA1C 00353FDC  C0 44 00 04 */	lfs f2, 4(r4)
/* 8038AA20 00353FE0  C0 83 00 08 */	lfs f4, 8(r3)
/* 8038AA24 00353FE4  C0 24 00 08 */	lfs f1, 8(r4)
/* 8038AA28 00353FE8  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 8038AA2C 00353FEC  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8038AA30 00353FF0  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8038AA34 00353FF4  C0 C3 00 10 */	lfs f6, 0x10(r3)
/* 8038AA38 00353FF8  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 8038AA3C 00353FFC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8038AA40 00354000  C0 A3 00 14 */	lfs f5, 0x14(r3)
/* 8038AA44 00354004  C0 84 00 14 */	lfs f4, 0x14(r4)
/* 8038AA48 00354008  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 8038AA4C 0035400C  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 8038AA50 00354010  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8038AA54 00354014  C1 43 00 1C */	lfs f10, 0x1c(r3)
/* 8038AA58 00354018  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 8038AA5C 0035401C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8038AA60 00354020  C1 23 00 20 */	lfs f9, 0x20(r3)
/* 8038AA64 00354024  C1 04 00 20 */	lfs f8, 0x20(r4)
/* 8038AA68 00354028  EC 05 01 3A */	fmadds f0, f5, f4, f0
/* 8038AA6C 0035402C  C0 E3 00 24 */	lfs f7, 0x24(r3)
/* 8038AA70 00354030  C0 C4 00 24 */	lfs f6, 0x24(r4)
/* 8038AA74 00354034  C0 A3 00 28 */	lfs f5, 0x28(r3)
/* 8038AA78 00354038  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 8038AA7C 0035403C  C0 84 00 28 */	lfs f4, 0x28(r4)
/* 8038AA80 00354040  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 8038AA84 00354044  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8038AA88 00354048  EC 0A 00 7A */	fmadds f0, f10, f1, f0
/* 8038AA8C 0035404C  C3 43 00 30 */	lfs f26, 0x30(r3)
/* 8038AA90 00354050  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 8038AA94 00354054  C3 23 00 34 */	lfs f25, 0x34(r3)
/* 8038AA98 00354058  EC 09 02 3A */	fmadds f0, f9, f8, f0
/* 8038AA9C 0035405C  C1 A4 00 34 */	lfs f13, 0x34(r4)
/* 8038AAA0 00354060  C1 83 00 38 */	lfs f12, 0x38(r3)
/* 8038AAA4 00354064  C1 64 00 38 */	lfs f11, 0x38(r4)
/* 8038AAA8 00354068  EC 07 01 BA */	fmadds f0, f7, f6, f0
/* 8038AAAC 0035406C  C1 43 00 3C */	lfs f10, 0x3c(r3)
/* 8038AAB0 00354070  C1 24 00 3C */	lfs f9, 0x3c(r4)
/* 8038AAB4 00354074  C1 03 00 40 */	lfs f8, 0x40(r3)
/* 8038AAB8 00354078  EC 05 01 3A */	fmadds f0, f5, f4, f0
/* 8038AABC 0035407C  C0 E4 00 40 */	lfs f7, 0x40(r4)
/* 8038AAC0 00354080  C0 C3 00 44 */	lfs f6, 0x44(r3)
/* 8038AAC4 00354084  C0 A4 00 44 */	lfs f5, 0x44(r4)
/* 8038AAC8 00354088  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 8038AACC 0035408C  C0 83 00 48 */	lfs f4, 0x48(r3)
/* 8038AAD0 00354090  C0 64 00 48 */	lfs f3, 0x48(r4)
/* 8038AAD4 00354094  C0 43 00 4C */	lfs f2, 0x4c(r3)
/* 8038AAD8 00354098  EC 1A 00 7A */	fmadds f0, f26, f1, f0
/* 8038AADC 0035409C  C0 24 00 4C */	lfs f1, 0x4c(r4)
/* 8038AAE0 003540A0  EC 19 03 7A */	fmadds f0, f25, f13, f0
/* 8038AAE4 003540A4  EC 0C 02 FA */	fmadds f0, f12, f11, f0
/* 8038AAE8 003540A8  EC 0A 02 7A */	fmadds f0, f10, f9, f0
/* 8038AAEC 003540AC  EC 08 01 FA */	fmadds f0, f8, f7, f0
/* 8038AAF0 003540B0  EC 06 01 7A */	fmadds f0, f6, f5, f0
/* 8038AAF4 003540B4  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8038AAF8 003540B8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038AAFC 003540BC  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 8038AB00 003540C0  34 00 FF FF */	addic. r0, r0, -1
/* 8038AB04 003540C4  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8038AB08 003540C8  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 8038AB0C 003540CC  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 8038AB10 003540D0  C0 24 00 54 */	lfs f1, 0x54(r4)
/* 8038AB14 003540D4  C0 83 00 58 */	lfs f4, 0x58(r3)
/* 8038AB18 003540D8  C0 64 00 58 */	lfs f3, 0x58(r4)
/* 8038AB1C 003540DC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038AB20 003540E0  C0 43 00 5C */	lfs f2, 0x5c(r3)
/* 8038AB24 003540E4  C0 24 00 5C */	lfs f1, 0x5c(r4)
/* 8038AB28 003540E8  C0 C3 00 60 */	lfs f6, 0x60(r3)
/* 8038AB2C 003540EC  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8038AB30 003540F0  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 8038AB34 003540F4  C0 83 00 64 */	lfs f4, 0x64(r3)
/* 8038AB38 003540F8  C0 64 00 64 */	lfs f3, 0x64(r4)
/* 8038AB3C 003540FC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038AB40 00354100  C0 43 00 68 */	lfs f2, 0x68(r3)
/* 8038AB44 00354104  C0 24 00 68 */	lfs f1, 0x68(r4)
/* 8038AB48 00354108  C1 43 00 6C */	lfs f10, 0x6c(r3)
/* 8038AB4C 0035410C  EC 06 01 7A */	fmadds f0, f6, f5, f0
/* 8038AB50 00354110  C1 24 00 6C */	lfs f9, 0x6c(r4)
/* 8038AB54 00354114  C1 03 00 70 */	lfs f8, 0x70(r3)
/* 8038AB58 00354118  C0 E4 00 70 */	lfs f7, 0x70(r4)
/* 8038AB5C 0035411C  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8038AB60 00354120  C0 C3 00 74 */	lfs f6, 0x74(r3)
/* 8038AB64 00354124  C0 A4 00 74 */	lfs f5, 0x74(r4)
/* 8038AB68 00354128  C0 83 00 78 */	lfs f4, 0x78(r3)
/* 8038AB6C 0035412C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038AB70 00354130  C0 64 00 78 */	lfs f3, 0x78(r4)
/* 8038AB74 00354134  C0 24 00 7C */	lfs f1, 0x7c(r4)
/* 8038AB78 00354138  38 84 00 80 */	addi r4, r4, 0x80
/* 8038AB7C 0035413C  C0 43 00 7C */	lfs f2, 0x7c(r3)
/* 8038AB80 00354140  EC 0A 02 7A */	fmadds f0, f10, f9, f0
/* 8038AB84 00354144  EC 08 01 FA */	fmadds f0, f8, f7, f0
/* 8038AB88 00354148  EC 06 01 7A */	fmadds f0, f6, f5, f0
/* 8038AB8C 0035414C  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8038AB90 00354150  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038AB94 00354154  D0 06 00 00 */	stfs f0, 0(r6)
/* 8038AB98 00354158  FC 00 00 50 */	fneg f0, f0
/* 8038AB9C 0035415C  38 C6 00 04 */	addi r6, r6, 4
/* 8038ABA0 00354160  D0 08 00 00 */	stfs f0, 0(r8)
/* 8038ABA4 00354164  39 08 FF FC */	addi r8, r8, -4
/* 8038ABA8 00354168  40 82 FE 64 */	bne lbl_8038AA0C
/* 8038ABAC 0035416C  3C C0 80 52 */	lis r6, lbl_8051ABB8@ha
/* 8038ABB0 00354170  38 87 10 80 */	addi r4, r7, 0x1080
/* 8038ABB4 00354174  C0 06 AB B8 */	lfs f0, lbl_8051ABB8@l(r6)
/* 8038ABB8 00354178  38 00 00 0F */	li r0, 0xf
/* 8038ABBC 0035417C  D0 05 00 40 */	stfs f0, 0x40(r5)
lbl_8038ABC0:
/* 8038ABC0 00354180  C0 23 00 00 */	lfs f1, 0(r3)
/* 8038ABC4 00354184  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038ABC8 00354188  C0 63 00 04 */	lfs f3, 4(r3)
/* 8038ABCC 0035418C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8038ABD0 00354190  C0 44 00 04 */	lfs f2, 4(r4)
/* 8038ABD4 00354194  C0 83 00 08 */	lfs f4, 8(r3)
/* 8038ABD8 00354198  C0 24 00 08 */	lfs f1, 8(r4)
/* 8038ABDC 0035419C  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 8038ABE0 003541A0  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8038ABE4 003541A4  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8038ABE8 003541A8  C0 C3 00 10 */	lfs f6, 0x10(r3)
/* 8038ABEC 003541AC  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 8038ABF0 003541B0  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8038ABF4 003541B4  C0 A3 00 14 */	lfs f5, 0x14(r3)
/* 8038ABF8 003541B8  C0 84 00 14 */	lfs f4, 0x14(r4)
/* 8038ABFC 003541BC  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 8038AC00 003541C0  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 8038AC04 003541C4  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8038AC08 003541C8  C1 43 00 1C */	lfs f10, 0x1c(r3)
/* 8038AC0C 003541CC  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 8038AC10 003541D0  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8038AC14 003541D4  C1 23 00 20 */	lfs f9, 0x20(r3)
/* 8038AC18 003541D8  C1 04 00 20 */	lfs f8, 0x20(r4)
/* 8038AC1C 003541DC  EC 05 01 3A */	fmadds f0, f5, f4, f0
/* 8038AC20 003541E0  C0 E3 00 24 */	lfs f7, 0x24(r3)
/* 8038AC24 003541E4  C0 C4 00 24 */	lfs f6, 0x24(r4)
/* 8038AC28 003541E8  C0 A3 00 28 */	lfs f5, 0x28(r3)
/* 8038AC2C 003541EC  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 8038AC30 003541F0  C0 84 00 28 */	lfs f4, 0x28(r4)
/* 8038AC34 003541F4  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 8038AC38 003541F8  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8038AC3C 003541FC  EC 0A 00 7A */	fmadds f0, f10, f1, f0
/* 8038AC40 00354200  C3 43 00 30 */	lfs f26, 0x30(r3)
/* 8038AC44 00354204  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 8038AC48 00354208  C3 23 00 34 */	lfs f25, 0x34(r3)
/* 8038AC4C 0035420C  EC 09 02 3A */	fmadds f0, f9, f8, f0
/* 8038AC50 00354210  C1 A4 00 34 */	lfs f13, 0x34(r4)
/* 8038AC54 00354214  C1 83 00 38 */	lfs f12, 0x38(r3)
/* 8038AC58 00354218  C1 64 00 38 */	lfs f11, 0x38(r4)
/* 8038AC5C 0035421C  EC 07 01 BA */	fmadds f0, f7, f6, f0
/* 8038AC60 00354220  C1 43 00 3C */	lfs f10, 0x3c(r3)
/* 8038AC64 00354224  C1 24 00 3C */	lfs f9, 0x3c(r4)
/* 8038AC68 00354228  C1 03 00 40 */	lfs f8, 0x40(r3)
/* 8038AC6C 0035422C  EC 05 01 3A */	fmadds f0, f5, f4, f0
/* 8038AC70 00354230  C0 E4 00 40 */	lfs f7, 0x40(r4)
/* 8038AC74 00354234  C0 C3 00 44 */	lfs f6, 0x44(r3)
/* 8038AC78 00354238  C0 A4 00 44 */	lfs f5, 0x44(r4)
/* 8038AC7C 0035423C  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 8038AC80 00354240  C0 83 00 48 */	lfs f4, 0x48(r3)
/* 8038AC84 00354244  C0 64 00 48 */	lfs f3, 0x48(r4)
/* 8038AC88 00354248  C0 43 00 4C */	lfs f2, 0x4c(r3)
/* 8038AC8C 0035424C  EC 1A 00 7A */	fmadds f0, f26, f1, f0
/* 8038AC90 00354250  C0 24 00 4C */	lfs f1, 0x4c(r4)
/* 8038AC94 00354254  EC 19 03 7A */	fmadds f0, f25, f13, f0
/* 8038AC98 00354258  EC 0C 02 FA */	fmadds f0, f12, f11, f0
/* 8038AC9C 0035425C  EC 0A 02 7A */	fmadds f0, f10, f9, f0
/* 8038ACA0 00354260  EC 08 01 FA */	fmadds f0, f8, f7, f0
/* 8038ACA4 00354264  EC 06 01 7A */	fmadds f0, f6, f5, f0
/* 8038ACA8 00354268  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8038ACAC 0035426C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038ACB0 00354270  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 8038ACB4 00354274  34 00 FF FF */	addic. r0, r0, -1
/* 8038ACB8 00354278  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8038ACBC 0035427C  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 8038ACC0 00354280  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 8038ACC4 00354284  C0 24 00 54 */	lfs f1, 0x54(r4)
/* 8038ACC8 00354288  C0 83 00 58 */	lfs f4, 0x58(r3)
/* 8038ACCC 0035428C  C0 64 00 58 */	lfs f3, 0x58(r4)
/* 8038ACD0 00354290  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038ACD4 00354294  C0 43 00 5C */	lfs f2, 0x5c(r3)
/* 8038ACD8 00354298  C0 24 00 5C */	lfs f1, 0x5c(r4)
/* 8038ACDC 0035429C  C0 C3 00 60 */	lfs f6, 0x60(r3)
/* 8038ACE0 003542A0  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8038ACE4 003542A4  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 8038ACE8 003542A8  C0 83 00 64 */	lfs f4, 0x64(r3)
/* 8038ACEC 003542AC  C0 64 00 64 */	lfs f3, 0x64(r4)
/* 8038ACF0 003542B0  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038ACF4 003542B4  C0 43 00 68 */	lfs f2, 0x68(r3)
/* 8038ACF8 003542B8  C0 24 00 68 */	lfs f1, 0x68(r4)
/* 8038ACFC 003542BC  C1 43 00 6C */	lfs f10, 0x6c(r3)
/* 8038AD00 003542C0  EC 06 01 7A */	fmadds f0, f6, f5, f0
/* 8038AD04 003542C4  C1 24 00 6C */	lfs f9, 0x6c(r4)
/* 8038AD08 003542C8  C1 03 00 70 */	lfs f8, 0x70(r3)
/* 8038AD0C 003542CC  C0 E4 00 70 */	lfs f7, 0x70(r4)
/* 8038AD10 003542D0  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8038AD14 003542D4  C0 C3 00 74 */	lfs f6, 0x74(r3)
/* 8038AD18 003542D8  C0 A4 00 74 */	lfs f5, 0x74(r4)
/* 8038AD1C 003542DC  C0 83 00 78 */	lfs f4, 0x78(r3)
/* 8038AD20 003542E0  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038AD24 003542E4  C0 64 00 78 */	lfs f3, 0x78(r4)
/* 8038AD28 003542E8  C0 24 00 7C */	lfs f1, 0x7c(r4)
/* 8038AD2C 003542EC  38 84 00 80 */	addi r4, r4, 0x80
/* 8038AD30 003542F0  C0 43 00 7C */	lfs f2, 0x7c(r3)
/* 8038AD34 003542F4  EC 0A 02 7A */	fmadds f0, f10, f9, f0
/* 8038AD38 003542F8  EC 08 01 FA */	fmadds f0, f8, f7, f0
/* 8038AD3C 003542FC  EC 06 01 7A */	fmadds f0, f6, f5, f0
/* 8038AD40 00354300  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 8038AD44 00354304  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8038AD48 00354308  D0 09 00 00 */	stfs f0, 0(r9)
/* 8038AD4C 0035430C  39 29 00 04 */	addi r9, r9, 4
/* 8038AD50 00354310  D0 0A 00 00 */	stfs f0, 0(r10)
/* 8038AD54 00354314  39 4A FF FC */	addi r10, r10, -4
/* 8038AD58 00354318  40 82 FE 68 */	bne lbl_8038ABC0
/* 8038AD5C 0035431C  C3 03 00 00 */	lfs f24, 0(r3)
/* 8038AD60 00354320  C0 03 00 04 */	lfs f0, 4(r3)
/* 8038AD64 00354324  C0 23 00 08 */	lfs f1, 8(r3)
/* 8038AD68 00354328  EF 18 00 2A */	fadds f24, f24, f0
/* 8038AD6C 0035432C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8038AD70 00354330  C0 C3 00 10 */	lfs f6, 0x10(r3)
/* 8038AD74 00354334  C0 A3 00 14 */	lfs f5, 0x14(r3)
/* 8038AD78 00354338  EF 18 08 2A */	fadds f24, f24, f1
/* 8038AD7C 0035433C  C0 83 00 18 */	lfs f4, 0x18(r3)
/* 8038AD80 00354340  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 8038AD84 00354344  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 8038AD88 00354348  EF 18 00 2A */	fadds f24, f24, f0
/* 8038AD8C 0035434C  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8038AD90 00354350  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8038AD94 00354354  C3 23 00 2C */	lfs f25, 0x2c(r3)
/* 8038AD98 00354358  EF 18 30 2A */	fadds f24, f24, f6
/* 8038AD9C 0035435C  C3 43 00 30 */	lfs f26, 0x30(r3)
/* 8038ADA0 00354360  C3 63 00 34 */	lfs f27, 0x34(r3)
/* 8038ADA4 00354364  C3 83 00 38 */	lfs f28, 0x38(r3)
/* 8038ADA8 00354368  EF 18 28 2A */	fadds f24, f24, f5
/* 8038ADAC 0035436C  C3 A3 00 3C */	lfs f29, 0x3c(r3)
/* 8038ADB0 00354370  C3 C3 00 40 */	lfs f30, 0x40(r3)
/* 8038ADB4 00354374  C3 E3 00 44 */	lfs f31, 0x44(r3)
/* 8038ADB8 00354378  EF 18 20 2A */	fadds f24, f24, f4
/* 8038ADBC 0035437C  C1 A3 00 48 */	lfs f13, 0x48(r3)
/* 8038ADC0 00354380  C1 83 00 4C */	lfs f12, 0x4c(r3)
/* 8038ADC4 00354384  C1 63 00 50 */	lfs f11, 0x50(r3)
/* 8038ADC8 00354388  EF 18 18 2A */	fadds f24, f24, f3
/* 8038ADCC 0035438C  C1 43 00 54 */	lfs f10, 0x54(r3)
/* 8038ADD0 00354390  C1 23 00 58 */	lfs f9, 0x58(r3)
/* 8038ADD4 00354394  C1 03 00 5C */	lfs f8, 0x5c(r3)
/* 8038ADD8 00354398  EF 18 10 2A */	fadds f24, f24, f2
/* 8038ADDC 0035439C  C0 E3 00 60 */	lfs f7, 0x60(r3)
/* 8038ADE0 003543A0  C0 C3 00 64 */	lfs f6, 0x64(r3)
/* 8038ADE4 003543A4  C0 A3 00 68 */	lfs f5, 0x68(r3)
/* 8038ADE8 003543A8  EF 18 08 2A */	fadds f24, f24, f1
/* 8038ADEC 003543AC  C0 83 00 6C */	lfs f4, 0x6c(r3)
/* 8038ADF0 003543B0  C0 63 00 70 */	lfs f3, 0x70(r3)
/* 8038ADF4 003543B4  C0 43 00 74 */	lfs f2, 0x74(r3)
/* 8038ADF8 003543B8  EF 18 00 2A */	fadds f24, f24, f0
/* 8038ADFC 003543BC  C0 23 00 78 */	lfs f1, 0x78(r3)
/* 8038AE00 003543C0  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 8038AE04 003543C4  EF 18 C8 2A */	fadds f24, f24, f25
/* 8038AE08 003543C8  EF 18 D0 2A */	fadds f24, f24, f26
/* 8038AE0C 003543CC  EF 18 D8 2A */	fadds f24, f24, f27
/* 8038AE10 003543D0  EF 18 E0 2A */	fadds f24, f24, f28
/* 8038AE14 003543D4  EF 18 E8 2A */	fadds f24, f24, f29
/* 8038AE18 003543D8  EF 18 F0 2A */	fadds f24, f24, f30
/* 8038AE1C 003543DC  EF 18 F8 2A */	fadds f24, f24, f31
/* 8038AE20 003543E0  EF 18 68 2A */	fadds f24, f24, f13
/* 8038AE24 003543E4  EF 18 60 2A */	fadds f24, f24, f12
/* 8038AE28 003543E8  EF 18 58 2A */	fadds f24, f24, f11
/* 8038AE2C 003543EC  EF 18 50 2A */	fadds f24, f24, f10
/* 8038AE30 003543F0  EF 18 48 2A */	fadds f24, f24, f9
/* 8038AE34 003543F4  EF 18 40 2A */	fadds f24, f24, f8
/* 8038AE38 003543F8  EF 18 38 2A */	fadds f24, f24, f7
/* 8038AE3C 003543FC  EF 18 30 2A */	fadds f24, f24, f6
/* 8038AE40 00354400  EF 18 28 2A */	fadds f24, f24, f5
/* 8038AE44 00354404  EF 18 20 2A */	fadds f24, f24, f4
/* 8038AE48 00354408  EF 18 18 2A */	fadds f24, f24, f3
/* 8038AE4C 0035440C  EF 18 10 2A */	fadds f24, f24, f2
/* 8038AE50 00354410  EF 18 08 2A */	fadds f24, f24, f1
/* 8038AE54 00354414  EF 18 00 2A */	fadds f24, f24, f0
/* 8038AE58 00354418  FC 00 C0 50 */	fneg f0, f24
/* 8038AE5C 0035441C  D0 05 00 C0 */	stfs f0, 0xc0(r5)
/* 8038AE60 00354420  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8038AE64 00354424  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8038AE68 00354428  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8038AE6C 0035442C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8038AE70 00354430  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 8038AE74 00354434  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8038AE78 00354438  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 8038AE7C 0035443C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8038AE80 00354440  E3 61 00 48 */	psq_l f27, 72(r1), 0, qr0
/* 8038AE84 00354444  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 8038AE88 00354448  E3 41 00 38 */	psq_l f26, 56(r1), 0, qr0
/* 8038AE8C 0035444C  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 8038AE90 00354450  E3 21 00 28 */	psq_l f25, 40(r1), 0, qr0
/* 8038AE94 00354454  CB 21 00 20 */	lfd f25, 0x20(r1)
/* 8038AE98 00354458  E3 01 00 18 */	psq_l f24, 24(r1), 0, qr0
/* 8038AE9C 0035445C  CB 01 00 10 */	lfd f24, 0x10(r1)
/* 8038AEA0 00354460  38 21 00 90 */	addi r1, r1, 0x90
/* 8038AEA4 00354464  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8051ABB8
lbl_8051ABB8:
	# ROM: 0x516CB8
	.4byte 0
	.4byte 0