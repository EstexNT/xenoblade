.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ADX_GetCoefficient
ADX_GetCoefficient:
/* 80389AC4 00353084  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80389AC8 00353088  7C 08 02 A6 */	mflr r0
/* 80389ACC 0035308C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80389AD0 00353090  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80389AD4 00353094  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80389AD8 00353098  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80389ADC 0035309C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 80389AE0 003530A0  3C E0 43 30 */	lis r7, 0x4330
/* 80389AE4 003530A4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80389AE8 003530A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80389AEC 003530AC  3F E0 80 52 */	lis r31, lbl_8051AAD8@ha
/* 80389AF0 003530B0  3B FF AA D8 */	addi r31, r31, lbl_8051AAD8@l
/* 80389AF4 003530B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80389AF8 003530B8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80389AFC 003530BC  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80389B00 003530C0  90 E1 00 08 */	stw r7, 8(r1)
/* 80389B04 003530C4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80389B08 003530C8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80389B0C 003530CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80389B10 003530D0  EC 40 18 28 */	fsubs f2, f0, f3
/* 80389B14 003530D4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80389B18 003530D8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80389B1C 003530DC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80389B20 003530E0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80389B24 003530E4  7C DE 33 78 */	mr r30, r6
/* 80389B28 003530E8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80389B2C 003530EC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80389B30 003530F0  7C BD 2B 78 */	mr r29, r5
/* 80389B34 003530F4  EC 21 00 24 */	fdivs f1, f1, f0
/* 80389B38 003530F8  4B F4 10 7D */	bl cos
/* 80389B3C 003530FC  FF E0 08 18 */	frsp f31, f1
/* 80389B40 00353100  C8 3F 00 08 */	lfd f1, 8(r31)
/* 80389B44 00353104  4B F4 19 25 */	bl sqrt
/* 80389B48 00353108  FC 00 08 18 */	frsp f0, f1
/* 80389B4C 0035310C  C8 3F 00 08 */	lfd f1, 8(r31)
/* 80389B50 00353110  EF E0 F8 28 */	fsubs f31, f0, f31
/* 80389B54 00353114  4B F4 19 15 */	bl sqrt
/* 80389B58 00353118  FC 20 08 18 */	frsp f1, f1
/* 80389B5C 0035311C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80389B60 00353120  EF C1 00 28 */	fsubs f30, f1, f0
/* 80389B64 00353124  EC 3F F0 2A */	fadds f1, f31, f30
/* 80389B68 00353128  EC 1F F0 28 */	fsubs f0, f31, f30
/* 80389B6C 0035312C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80389B70 00353130  4B F4 18 F9 */	bl sqrt
/* 80389B74 00353134  FC 00 08 18 */	frsp f0, f1
/* 80389B78 00353138  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80389B7C 0035313C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80389B80 00353140  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80389B84 00353144  EC 60 F0 24 */	fdivs f3, f0, f30
/* 80389B88 00353148  FC 00 18 50 */	fneg f0, f3
/* 80389B8C 0035314C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80389B90 00353150  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80389B94 00353154  EC 22 00 72 */	fmuls f1, f2, f1
/* 80389B98 00353158  EC 02 00 32 */	fmuls f0, f2, f0
/* 80389B9C 0035315C  FC 20 08 1E */	fctiwz f1, f1
/* 80389BA0 00353160  FC 00 00 1E */	fctiwz f0, f0
/* 80389BA4 00353164  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 80389BA8 00353168  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80389BAC 0035316C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80389BB0 00353170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80389BB4 00353174  B0 7D 00 00 */	sth r3, 0(r29)
/* 80389BB8 00353178  B0 1E 00 00 */	sth r0, 0(r30)
/* 80389BBC 0035317C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80389BC0 00353180  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80389BC4 00353184  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 80389BC8 00353188  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80389BCC 0035318C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80389BD0 00353190  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80389BD4 00353194  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80389BD8 00353198  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80389BDC 0035319C  7C 08 03 A6 */	mtlr r0
/* 80389BE0 003531A0  38 21 00 60 */	addi r1, r1, 0x60
/* 80389BE4 003531A4  4E 80 00 20 */	blr 

.global ADX_ScanInfoCode
ADX_ScanInfoCode:
/* 80389BE8 003531A8  34 84 FF FF */	addic. r4, r4, -1
/* 80389BEC 003531AC  3C C0 80 00 */	lis r6, 0x7FFFFFFF@ha
/* 80389BF0 003531B0  38 E6 FF FF */	addi r7, r6, 0x7FFFFFFF@l
/* 80389BF4 003531B4  38 C0 00 00 */	li r6, 0
/* 80389BF8 003531B8  38 04 00 01 */	addi r0, r4, 1
/* 80389BFC 003531BC  54 00 F8 7E */	srwi r0, r0, 1
/* 80389C00 003531C0  7C 09 03 A6 */	mtctr r0
/* 80389C04 003531C4  40 81 00 34 */	ble .L_80389C38
.L_80389C08:
/* 80389C08 003531C8  A0 03 00 00 */	lhz r0, 0(r3)
/* 80389C0C 003531CC  28 00 80 00 */	cmplwi r0, 0x8000
/* 80389C10 003531D0  40 82 00 1C */	bne .L_80389C2C
/* 80389C14 003531D4  3C 60 80 00 */	lis r3, 0x7FFFFFFF@ha
/* 80389C18 003531D8  38 E3 FF FF */	addi r7, r3, 0x7FFFFFFF@l
/* 80389C1C 003531DC  7C 06 38 00 */	cmpw r6, r7
/* 80389C20 003531E0  40 80 00 18 */	bge .L_80389C38
/* 80389C24 003531E4  7C C7 33 78 */	mr r7, r6
/* 80389C28 003531E8  48 00 00 10 */	b .L_80389C38
.L_80389C2C:
/* 80389C2C 003531EC  38 C6 00 02 */	addi r6, r6, 2
/* 80389C30 003531F0  38 63 00 02 */	addi r3, r3, 2
/* 80389C34 003531F4  42 00 FF D4 */	bdnz .L_80389C08
.L_80389C38:
/* 80389C38 003531F8  3C 07 80 01 */	addis r0, r7, 0x8001
/* 80389C3C 003531FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80389C40 00353200  41 82 00 10 */	beq .L_80389C50
/* 80389C44 00353204  B0 E5 00 00 */	sth r7, 0(r5)
/* 80389C48 00353208  38 60 00 00 */	li r3, 0
/* 80389C4C 0035320C  4E 80 00 20 */	blr
.L_80389C50:
/* 80389C50 00353210  38 00 00 00 */	li r0, 0
/* 80389C54 00353214  38 60 FF FF */	li r3, -1
/* 80389C58 00353218  B0 05 00 00 */	sth r0, 0(r5)
/* 80389C5C 0035321C  4E 80 00 20 */	blr 

.global ADX_DecodeInfo
ADX_DecodeInfo:
/* 80389C60 00353220  2C 04 00 10 */	cmpwi r4, 0x10
/* 80389C64 00353224  81 61 00 08 */	lwz r11, 8(r1)
/* 80389C68 00353228  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80389C6C 0035322C  40 80 00 0C */	bge .L_80389C78
/* 80389C70 00353230  38 60 FF FF */	li r3, -1
/* 80389C74 00353234  4E 80 00 20 */	blr
.L_80389C78:
/* 80389C78 00353238  89 83 00 00 */	lbz r12, 0(r3)
/* 80389C7C 0035323C  88 03 00 01 */	lbz r0, 1(r3)
/* 80389C80 00353240  51 80 44 2E */	rlwimi r0, r12, 8, 0x10, 0x17
/* 80389C84 00353244  28 00 80 00 */	cmplwi r0, 0x8000
/* 80389C88 00353248  41 82 00 0C */	beq .L_80389C94
/* 80389C8C 0035324C  38 60 FF FE */	li r3, -2
/* 80389C90 00353250  4E 80 00 20 */	blr
.L_80389C94:
/* 80389C94 00353254  88 03 00 02 */	lbz r0, 2(r3)
/* 80389C98 00353258  89 83 00 03 */	lbz r12, 3(r3)
/* 80389C9C 0035325C  50 0C 44 2E */	rlwimi r12, r0, 8, 0x10, 0x17
/* 80389CA0 00353260  38 0C 00 04 */	addi r0, r12, 4
/* 80389CA4 00353264  B0 05 00 00 */	sth r0, 0(r5)
/* 80389CA8 00353268  88 03 00 04 */	lbz r0, 4(r3)
/* 80389CAC 0035326C  98 06 00 00 */	stb r0, 0(r6)
/* 80389CB0 00353270  88 03 00 05 */	lbz r0, 5(r3)
/* 80389CB4 00353274  98 08 00 00 */	stb r0, 0(r8)
/* 80389CB8 00353278  88 03 00 06 */	lbz r0, 6(r3)
/* 80389CBC 0035327C  98 07 00 00 */	stb r0, 0(r7)
/* 80389CC0 00353280  88 03 00 07 */	lbz r0, 7(r3)
/* 80389CC4 00353284  98 09 00 00 */	stb r0, 0(r9)
/* 80389CC8 00353288  88 03 00 09 */	lbz r0, 9(r3)
/* 80389CCC 0035328C  89 23 00 0A */	lbz r9, 0xa(r3)
/* 80389CD0 00353290  88 C3 00 0B */	lbz r6, 0xb(r3)
/* 80389CD4 00353294  54 00 80 1E */	slwi r0, r0, 0x10
/* 80389CD8 00353298  88 A3 00 08 */	lbz r5, 8(r3)
/* 80389CDC 0035329C  51 26 44 2E */	rlwimi r6, r9, 8, 0x10, 0x17
/* 80389CE0 003532A0  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 80389CE4 003532A4  7C C0 03 78 */	or r0, r6, r0
/* 80389CE8 003532A8  90 0A 00 00 */	stw r0, 0(r10)
/* 80389CEC 003532AC  88 03 00 0D */	lbz r0, 0xd(r3)
/* 80389CF0 003532B0  88 C3 00 0E */	lbz r6, 0xe(r3)
/* 80389CF4 003532B4  88 A3 00 0F */	lbz r5, 0xf(r3)
/* 80389CF8 003532B8  54 00 80 1E */	slwi r0, r0, 0x10
/* 80389CFC 003532BC  88 63 00 0C */	lbz r3, 0xc(r3)
/* 80389D00 003532C0  50 C5 44 2E */	rlwimi r5, r6, 8, 0x10, 0x17
/* 80389D04 003532C4  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 80389D08 003532C8  7C A0 03 78 */	or r0, r5, r0
/* 80389D0C 003532CC  90 0B 00 00 */	stw r0, 0(r11)
/* 80389D10 003532D0  88 07 00 00 */	lbz r0, 0(r7)
/* 80389D14 003532D4  7C 05 07 75 */	extsb. r5, r0
/* 80389D18 003532D8  40 82 00 10 */	bne .L_80389D28
/* 80389D1C 003532DC  38 00 00 00 */	li r0, 0
/* 80389D20 003532E0  90 04 00 00 */	stw r0, 0(r4)
/* 80389D24 003532E4  48 00 00 1C */	b .L_80389D40
.L_80389D28:
/* 80389D28 003532E8  88 08 00 00 */	lbz r0, 0(r8)
/* 80389D2C 003532EC  7C 03 07 74 */	extsb r3, r0
/* 80389D30 003532F0  38 03 FF FE */	addi r0, r3, -2
/* 80389D34 003532F4  54 00 18 38 */	slwi r0, r0, 3
/* 80389D38 003532F8  7C 00 2B D6 */	divw r0, r0, r5
/* 80389D3C 003532FC  90 04 00 00 */	stw r0, 0(r4)
.L_80389D40:
/* 80389D40 00353300  38 60 00 00 */	li r3, 0
/* 80389D44 00353304  4E 80 00 20 */	blr 

.global ADX_DecodeInfoExADPCM2
ADX_DecodeInfoExADPCM2:
/* 80389D48 00353308  2C 04 00 12 */	cmpwi r4, 0x12
/* 80389D4C 0035330C  40 80 00 0C */	bge .L_80389D58
/* 80389D50 00353310  38 60 FF FF */	li r3, -1
/* 80389D54 00353314  4E 80 00 20 */	blr
.L_80389D58:
/* 80389D58 00353318  A0 03 00 00 */	lhz r0, 0(r3)
/* 80389D5C 0035331C  28 00 80 00 */	cmplwi r0, 0x8000
/* 80389D60 00353320  41 82 00 0C */	beq .L_80389D6C
/* 80389D64 00353324  38 60 FF FE */	li r3, -2
/* 80389D68 00353328  4E 80 00 20 */	blr
.L_80389D6C:
/* 80389D6C 0035332C  A8 03 00 02 */	lha r0, 2(r3)
/* 80389D70 00353330  2C 00 00 0E */	cmpwi r0, 0xe
/* 80389D74 00353334  40 80 00 0C */	bge .L_80389D80
/* 80389D78 00353338  38 60 FF FF */	li r3, -1
/* 80389D7C 0035333C  4E 80 00 20 */	blr
.L_80389D80:
/* 80389D80 00353340  A8 03 00 10 */	lha r0, 0x10(r3)
/* 80389D84 00353344  38 60 00 00 */	li r3, 0
/* 80389D88 00353348  B0 05 00 00 */	sth r0, 0(r5)
/* 80389D8C 0035334C  4E 80 00 20 */	blr 

.global ADX_DecodeInfoExVer
ADX_DecodeInfoExVer:
/* 80389D90 00353350  2C 04 00 14 */	cmpwi r4, 0x14
/* 80389D94 00353354  40 80 00 0C */	bge .L_80389DA0
/* 80389D98 00353358  38 60 FF FF */	li r3, -1
/* 80389D9C 0035335C  4E 80 00 20 */	blr
.L_80389DA0:
/* 80389DA0 00353360  A0 03 00 00 */	lhz r0, 0(r3)
/* 80389DA4 00353364  28 00 80 00 */	cmplwi r0, 0x8000
/* 80389DA8 00353368  41 82 00 0C */	beq .L_80389DB4
/* 80389DAC 0035336C  38 60 FF FE */	li r3, -2
/* 80389DB0 00353370  4E 80 00 20 */	blr
.L_80389DB4:
/* 80389DB4 00353374  A8 03 00 02 */	lha r0, 2(r3)
/* 80389DB8 00353378  2C 00 00 10 */	cmpwi r0, 0x10
/* 80389DBC 0035337C  40 80 00 0C */	bge .L_80389DC8
/* 80389DC0 00353380  38 60 FF FF */	li r3, -1
/* 80389DC4 00353384  4E 80 00 20 */	blr
.L_80389DC8:
/* 80389DC8 00353388  88 03 00 12 */	lbz r0, 0x12(r3)
/* 80389DCC 0035338C  98 05 00 00 */	stb r0, 0(r5)
/* 80389DD0 00353390  88 03 00 13 */	lbz r0, 0x13(r3)
/* 80389DD4 00353394  38 60 00 00 */	li r3, 0
/* 80389DD8 00353398  98 06 00 00 */	stb r0, 0(r6)
/* 80389DDC 0035339C  4E 80 00 20 */	blr 

.global ADX_DecodeInfoExIdly
ADX_DecodeInfoExIdly:
/* 80389DE0 003533A0  2C 04 00 14 */	cmpwi r4, 0x14
/* 80389DE4 003533A4  40 80 00 0C */	bge .L_80389DF0
/* 80389DE8 003533A8  38 00 FF FF */	li r0, -1
/* 80389DEC 003533AC  48 00 00 34 */	b .L_80389E20
.L_80389DF0:
/* 80389DF0 003533B0  A0 03 00 00 */	lhz r0, 0(r3)
/* 80389DF4 003533B4  28 00 80 00 */	cmplwi r0, 0x8000
/* 80389DF8 003533B8  41 82 00 0C */	beq .L_80389E04
/* 80389DFC 003533BC  38 00 FF FE */	li r0, -2
/* 80389E00 003533C0  48 00 00 20 */	b .L_80389E20
.L_80389E04:
/* 80389E04 003533C4  A8 03 00 02 */	lha r0, 2(r3)
/* 80389E08 003533C8  2C 00 00 10 */	cmpwi r0, 0x10
/* 80389E0C 003533CC  40 80 00 0C */	bge .L_80389E18
/* 80389E10 003533D0  38 00 FF FF */	li r0, -1
/* 80389E14 003533D4  48 00 00 0C */	b .L_80389E20
.L_80389E18:
/* 80389E18 003533D8  88 E3 00 12 */	lbz r7, 0x12(r3)
/* 80389E1C 003533DC  38 00 00 00 */	li r0, 0
.L_80389E20:
/* 80389E20 003533E0  2C 00 00 00 */	cmpwi r0, 0
/* 80389E24 003533E4  41 82 00 0C */	beq .L_80389E30
/* 80389E28 003533E8  38 60 FF FF */	li r3, -1
/* 80389E2C 003533EC  4E 80 00 20 */	blr
.L_80389E30:
/* 80389E30 003533F0  28 07 00 04 */	cmplwi r7, 4
/* 80389E34 003533F4  41 80 00 60 */	blt .L_80389E94
/* 80389E38 003533F8  2C 04 00 20 */	cmpwi r4, 0x20
/* 80389E3C 003533FC  40 80 00 0C */	bge .L_80389E48
/* 80389E40 00353400  38 60 FF FF */	li r3, -1
/* 80389E44 00353404  4E 80 00 20 */	blr
.L_80389E48:
/* 80389E48 00353408  A0 03 00 00 */	lhz r0, 0(r3)
/* 80389E4C 0035340C  28 00 80 00 */	cmplwi r0, 0x8000
/* 80389E50 00353410  41 82 00 0C */	beq .L_80389E5C
/* 80389E54 00353414  38 60 FF FE */	li r3, -2
/* 80389E58 00353418  4E 80 00 20 */	blr
.L_80389E5C:
/* 80389E5C 0035341C  A8 03 00 02 */	lha r0, 2(r3)
/* 80389E60 00353420  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80389E64 00353424  40 80 00 0C */	bge .L_80389E70
/* 80389E68 00353428  38 60 FF FF */	li r3, -1
/* 80389E6C 0035342C  4E 80 00 20 */	blr
.L_80389E70:
/* 80389E70 00353430  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80389E74 00353434  B0 05 00 00 */	sth r0, 0(r5)
/* 80389E78 00353438  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 80389E7C 0035343C  B0 06 00 00 */	sth r0, 0(r6)
/* 80389E80 00353440  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 80389E84 00353444  B0 05 00 02 */	sth r0, 2(r5)
/* 80389E88 00353448  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 80389E8C 0035344C  B0 06 00 02 */	sth r0, 2(r6)
/* 80389E90 00353450  48 00 00 18 */	b .L_80389EA8
.L_80389E94:
/* 80389E94 00353454  38 00 00 00 */	li r0, 0
/* 80389E98 00353458  B0 06 00 02 */	sth r0, 2(r6)
/* 80389E9C 0035345C  B0 05 00 02 */	sth r0, 2(r5)
/* 80389EA0 00353460  B0 06 00 00 */	sth r0, 0(r6)
/* 80389EA4 00353464  B0 05 00 00 */	sth r0, 0(r5)
.L_80389EA8:
/* 80389EA8 00353468  38 60 00 00 */	li r3, 0
/* 80389EAC 0035346C  4E 80 00 20 */	blr 

.global ADX_DecodeInfoExLoop
ADX_DecodeInfoExLoop:
/* 80389EB0 00353470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80389EB4 00353474  38 00 00 00 */	li r0, 0
/* 80389EB8 00353478  2C 04 00 14 */	cmpwi r4, 0x14
/* 80389EBC 0035347C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80389EC0 00353480  83 E1 00 18 */	lwz r31, 0x18(r1)
/* 80389EC4 00353484  B0 06 00 00 */	sth r0, 0(r6)
/* 80389EC8 00353488  40 80 00 0C */	bge .L_80389ED4
/* 80389ECC 0035348C  38 00 FF FF */	li r0, -1
/* 80389ED0 00353490  48 00 00 34 */	b .L_80389F04
.L_80389ED4:
/* 80389ED4 00353494  A0 03 00 00 */	lhz r0, 0(r3)
/* 80389ED8 00353498  28 00 80 00 */	cmplwi r0, 0x8000
/* 80389EDC 0035349C  41 82 00 0C */	beq .L_80389EE8
/* 80389EE0 003534A0  38 00 FF FE */	li r0, -2
/* 80389EE4 003534A4  48 00 00 20 */	b .L_80389F04
.L_80389EE8:
/* 80389EE8 003534A8  A8 03 00 02 */	lha r0, 2(r3)
/* 80389EEC 003534AC  2C 00 00 10 */	cmpwi r0, 0x10
/* 80389EF0 003534B0  40 80 00 0C */	bge .L_80389EFC
/* 80389EF4 003534B4  38 00 FF FF */	li r0, -1
/* 80389EF8 003534B8  48 00 00 0C */	b .L_80389F04
.L_80389EFC:
/* 80389EFC 003534BC  89 83 00 12 */	lbz r12, 0x12(r3)
/* 80389F00 003534C0  38 00 00 00 */	li r0, 0
.L_80389F04:
/* 80389F04 003534C4  2C 00 00 00 */	cmpwi r0, 0
/* 80389F08 003534C8  41 82 00 0C */	beq .L_80389F14
/* 80389F0C 003534CC  7C 03 03 78 */	mr r3, r0
/* 80389F10 003534D0  48 00 00 B0 */	b .L_80389FC0
.L_80389F14:
/* 80389F14 003534D4  28 0C 00 04 */	cmplwi r12, 4
/* 80389F18 003534D8  39 60 00 30 */	li r11, 0x30
/* 80389F1C 003534DC  40 82 00 08 */	bne .L_80389F24
/* 80389F20 003534E0  39 60 00 3C */	li r11, 0x3c
.L_80389F24:
/* 80389F24 003534E4  7C 04 58 00 */	cmpw r4, r11
/* 80389F28 003534E8  40 80 00 0C */	bge .L_80389F34
/* 80389F2C 003534EC  38 60 FF FF */	li r3, -1
/* 80389F30 003534F0  48 00 00 90 */	b .L_80389FC0
.L_80389F34:
/* 80389F34 003534F4  A0 03 00 00 */	lhz r0, 0(r3)
/* 80389F38 003534F8  28 00 80 00 */	cmplwi r0, 0x8000
/* 80389F3C 003534FC  41 82 00 0C */	beq .L_80389F48
/* 80389F40 00353500  38 60 FF FE */	li r3, -2
/* 80389F44 00353504  48 00 00 7C */	b .L_80389FC0
.L_80389F48:
/* 80389F48 00353508  A8 83 00 02 */	lha r4, 2(r3)
/* 80389F4C 0035350C  38 0B FF FC */	addi r0, r11, -4
/* 80389F50 00353510  7C 04 00 00 */	cmpw r4, r0
/* 80389F54 00353514  40 80 00 0C */	bge .L_80389F60
/* 80389F58 00353518  38 60 FF FF */	li r3, -1
/* 80389F5C 0035351C  48 00 00 64 */	b .L_80389FC0
.L_80389F60:
/* 80389F60 00353520  28 0C 00 04 */	cmplwi r12, 4
/* 80389F64 00353524  38 80 00 14 */	li r4, 0x14
/* 80389F68 00353528  40 82 00 08 */	bne .L_80389F70
/* 80389F6C 0035352C  38 80 00 20 */	li r4, 0x20
.L_80389F70:
/* 80389F70 00353530  7C 03 22 AE */	lhax r0, r3, r4
/* 80389F74 00353534  7C 84 1A 14 */	add r4, r4, r3
/* 80389F78 00353538  90 05 00 00 */	stw r0, 0(r5)
/* 80389F7C 0035353C  A8 04 00 02 */	lha r0, 2(r4)
/* 80389F80 00353540  2C 00 00 01 */	cmpwi r0, 1
/* 80389F84 00353544  B0 06 00 00 */	sth r0, 0(r6)
/* 80389F88 00353548  41 82 00 0C */	beq .L_80389F94
/* 80389F8C 0035354C  38 60 FF FE */	li r3, -2
/* 80389F90 00353550  48 00 00 30 */	b .L_80389FC0
.L_80389F94:
/* 80389F94 00353554  A8 04 00 06 */	lha r0, 6(r4)
/* 80389F98 00353558  38 60 00 00 */	li r3, 0
/* 80389F9C 0035355C  B0 07 00 00 */	sth r0, 0(r7)
/* 80389FA0 00353560  80 04 00 08 */	lwz r0, 8(r4)
/* 80389FA4 00353564  90 08 00 00 */	stw r0, 0(r8)
/* 80389FA8 00353568  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80389FAC 0035356C  90 09 00 00 */	stw r0, 0(r9)
/* 80389FB0 00353570  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80389FB4 00353574  90 0A 00 00 */	stw r0, 0(r10)
/* 80389FB8 00353578  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80389FBC 0035357C  90 1F 00 00 */	stw r0, 0(r31)
.L_80389FC0:
/* 80389FC0 00353580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80389FC4 00353584  38 21 00 10 */	addi r1, r1, 0x10
/* 80389FC8 00353588  4E 80 00 20 */	blr 

.global ADX_DecodeInfoAinf
ADX_DecodeInfoAinf:
/* 80389FCC 0035358C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80389FD0 00353590  7C 08 02 A6 */	mflr r0
/* 80389FD4 00353594  2C 04 00 14 */	cmpwi r4, 0x14
/* 80389FD8 00353598  90 01 00 24 */	stw r0, 0x24(r1)
/* 80389FDC 0035359C  38 00 00 00 */	li r0, 0
/* 80389FE0 003535A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80389FE4 003535A4  7D 1F 43 78 */	mr r31, r8
/* 80389FE8 003535A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80389FEC 003535AC  7C FE 3B 78 */	mr r30, r7
/* 80389FF0 003535B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80389FF4 003535B4  7C 7D 1B 78 */	mr r29, r3
/* 80389FF8 003535B8  93 81 00 10 */	stw r28, 0x10(r1)
/* 80389FFC 003535BC  90 05 00 00 */	stw r0, 0(r5)
/* 8038A000 003535C0  40 80 00 0C */	bge .L_8038A00C
/* 8038A004 003535C4  38 00 FF FF */	li r0, -1
/* 8038A008 003535C8  48 00 00 34 */	b .L_8038A03C
.L_8038A00C:
/* 8038A00C 003535CC  A0 03 00 00 */	lhz r0, 0(r3)
/* 8038A010 003535D0  28 00 80 00 */	cmplwi r0, 0x8000
/* 8038A014 003535D4  41 82 00 0C */	beq .L_8038A020
/* 8038A018 003535D8  38 00 FF FE */	li r0, -2
/* 8038A01C 003535DC  48 00 00 20 */	b .L_8038A03C
.L_8038A020:
/* 8038A020 003535E0  A8 03 00 02 */	lha r0, 2(r3)
/* 8038A024 003535E4  2C 00 00 10 */	cmpwi r0, 0x10
/* 8038A028 003535E8  40 80 00 0C */	bge .L_8038A034
/* 8038A02C 003535EC  38 00 FF FF */	li r0, -1
/* 8038A030 003535F0  48 00 00 0C */	b .L_8038A03C
.L_8038A034:
/* 8038A034 003535F4  89 03 00 12 */	lbz r8, 0x12(r3)
/* 8038A038 003535F8  38 00 00 00 */	li r0, 0
.L_8038A03C:
/* 8038A03C 003535FC  2C 00 00 00 */	cmpwi r0, 0
/* 8038A040 00353600  41 82 00 0C */	beq .L_8038A04C
/* 8038A044 00353604  7C 03 03 78 */	mr r3, r0
/* 8038A048 00353608  48 00 00 E8 */	b .L_8038A130
.L_8038A04C:
/* 8038A04C 0035360C  28 08 00 04 */	cmplwi r8, 4
/* 8038A050 00353610  38 E0 00 3C */	li r7, 0x3c
/* 8038A054 00353614  40 82 00 08 */	bne .L_8038A05C
/* 8038A058 00353618  38 E0 00 48 */	li r7, 0x48
.L_8038A05C:
/* 8038A05C 0035361C  7C 04 38 00 */	cmpw r4, r7
/* 8038A060 00353620  40 80 00 0C */	bge .L_8038A06C
/* 8038A064 00353624  38 60 FF FF */	li r3, -1
/* 8038A068 00353628  48 00 00 C8 */	b .L_8038A130
.L_8038A06C:
/* 8038A06C 0035362C  A0 03 00 00 */	lhz r0, 0(r3)
/* 8038A070 00353630  28 00 80 00 */	cmplwi r0, 0x8000
/* 8038A074 00353634  41 82 00 0C */	beq .L_8038A080
/* 8038A078 00353638  38 60 FF FE */	li r3, -2
/* 8038A07C 0035363C  48 00 00 B4 */	b .L_8038A130
.L_8038A080:
/* 8038A080 00353640  A8 83 00 02 */	lha r4, 2(r3)
/* 8038A084 00353644  38 07 FF FC */	addi r0, r7, -4
/* 8038A088 00353648  7C 04 00 00 */	cmpw r4, r0
/* 8038A08C 0035364C  40 80 00 0C */	bge .L_8038A098
/* 8038A090 00353650  38 60 FF FF */	li r3, -1
/* 8038A094 00353654  48 00 00 9C */	b .L_8038A130
.L_8038A098:
/* 8038A098 00353658  28 08 00 04 */	cmplwi r8, 4
/* 8038A09C 0035365C  3B 80 00 14 */	li r28, 0x14
/* 8038A0A0 00353660  40 82 00 08 */	bne .L_8038A0A8
/* 8038A0A4 00353664  3B 80 00 20 */	li r28, 0x20
.L_8038A0A8:
/* 8038A0A8 00353668  7C 9C 1A 14 */	add r4, r28, r3
/* 8038A0AC 0035366C  3B 9C 00 04 */	addi r28, r28, 4
/* 8038A0B0 00353670  A8 04 00 02 */	lha r0, 2(r4)
/* 8038A0B4 00353674  2C 00 00 00 */	cmpwi r0, 0
/* 8038A0B8 00353678  41 82 00 08 */	beq .L_8038A0C0
/* 8038A0BC 0035367C  3B 9C 00 14 */	addi r28, r28, 0x14
.L_8038A0C0:
/* 8038A0C0 00353680  7D 03 E2 14 */	add r8, r3, r28
/* 8038A0C4 00353684  7C 63 E0 AE */	lbzx r3, r3, r28
/* 8038A0C8 00353688  88 08 00 01 */	lbz r0, 1(r8)
/* 8038A0CC 0035368C  88 E8 00 02 */	lbz r7, 2(r8)
/* 8038A0D0 00353690  88 88 00 03 */	lbz r4, 3(r8)
/* 8038A0D4 00353694  54 00 80 1E */	slwi r0, r0, 0x10
/* 8038A0D8 00353698  50 E4 44 2E */	rlwimi r4, r7, 8, 0x10, 0x17
/* 8038A0DC 0035369C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 8038A0E0 003536A0  7C 83 03 78 */	or r3, r4, r0
/* 8038A0E4 003536A4  3C 03 BE B7 */	addis r0, r3, 0xbeb7
/* 8038A0E8 003536A8  28 00 4E 46 */	cmplwi r0, 0x4e46
/* 8038A0EC 003536AC  41 82 00 0C */	beq .L_8038A0F8
/* 8038A0F0 003536B0  38 60 FF FE */	li r3, -2
/* 8038A0F4 003536B4  48 00 00 3C */	b .L_8038A130
.L_8038A0F8:
/* 8038A0F8 003536B8  80 08 00 04 */	lwz r0, 4(r8)
/* 8038A0FC 003536BC  7C C3 33 78 */	mr r3, r6
/* 8038A100 003536C0  38 88 00 08 */	addi r4, r8, 8
/* 8038A104 003536C4  90 05 00 00 */	stw r0, 0(r5)
/* 8038A108 003536C8  38 A0 00 10 */	li r5, 0x10
/* 8038A10C 003536CC  4B C7 9E F5 */	bl memcpy
/* 8038A110 003536D0  7C 9C EA 14 */	add r4, r28, r29
/* 8038A114 003536D4  38 60 00 00 */	li r3, 0
/* 8038A118 003536D8  A8 04 00 18 */	lha r0, 0x18(r4)
/* 8038A11C 003536DC  B0 1E 00 00 */	sth r0, 0(r30)
/* 8038A120 003536E0  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 8038A124 003536E4  B0 1F 00 00 */	sth r0, 0(r31)
/* 8038A128 003536E8  A8 04 00 1E */	lha r0, 0x1e(r4)
/* 8038A12C 003536EC  B0 1F 00 02 */	sth r0, 2(r31)
.L_8038A130:
/* 8038A130 003536F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038A134 003536F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038A138 003536F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038A13C 003536FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038A140 00353700  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8038A144 00353704  7C 08 03 A6 */	mtlr r0
/* 8038A148 00353708  38 21 00 20 */	addi r1, r1, 0x20
/* 8038A14C 0035370C  4E 80 00 20 */	blr 

.global ADX_DecodeFooter
ADX_DecodeFooter:
/* 8038A150 00353710  2C 04 00 10 */	cmpwi r4, 0x10
/* 8038A154 00353714  40 80 00 0C */	bge .L_8038A160
/* 8038A158 00353718  38 60 FF FF */	li r3, -1
/* 8038A15C 0035371C  4E 80 00 20 */	blr
.L_8038A160:
/* 8038A160 00353720  A0 03 00 00 */	lhz r0, 0(r3)
/* 8038A164 00353724  28 00 80 01 */	cmplwi r0, 0x8001
/* 8038A168 00353728  41 82 00 0C */	beq .L_8038A174
/* 8038A16C 0035372C  38 60 FF FE */	li r3, -2
/* 8038A170 00353730  4E 80 00 20 */	blr
.L_8038A174:
/* 8038A174 00353734  A8 83 00 02 */	lha r4, 2(r3)
/* 8038A178 00353738  38 60 00 00 */	li r3, 0
/* 8038A17C 0035373C  38 04 00 04 */	addi r0, r4, 4
/* 8038A180 00353740  B0 05 00 00 */	sth r0, 0(r5)
/* 8038A184 00353744  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8051AAD8
lbl_8051AAD8:
	# ROM: 0x516BD8
	.float 6.2831853
	.4byte 0
	.4byte 0x40000000
	.4byte 0
	.float 1.0
	.4byte 0x45800000
	.4byte 0x40000000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "(c)CRI"
	.balign 4
