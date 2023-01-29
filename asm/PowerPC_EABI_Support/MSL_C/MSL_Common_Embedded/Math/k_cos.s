.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __kernel_cos, global
/* 802C8D34 002922F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C8D38 002922F8  3C 00 3E 40 */	lis r0, 0x3e40
/* 802C8D3C 002922FC  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802C8D40 00292300  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802C8D44 00292304  54 64 00 7E */	clrlwi r4, r3, 1
/* 802C8D48 00292308  7C 04 00 00 */	cmpw r4, r0
/* 802C8D4C 0029230C  40 80 00 20 */	bge .L_802C8D6C
/* 802C8D50 00292310  FC 00 08 1E */	fctiwz f0, f1
/* 802C8D54 00292314  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 802C8D58 00292318  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C8D5C 0029231C  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C8D60 00292320  40 82 00 0C */	bne .L_802C8D6C
/* 802C8D64 00292324  C8 22 B8 A0 */	lfd f1, "@23"@sda21(r2)
/* 802C8D68 00292328  48 00 00 D4 */	b .L_802C8E3C
.L_802C8D6C:
/* 802C8D6C 0029232C  FD 01 00 72 */	fmul f8, f1, f1
/* 802C8D70 00292330  C8 02 B8 D0 */	lfd f0, "@29"@sda21(r2)
/* 802C8D74 00292334  3C 60 3F D3 */	lis r3, 0x3fd3
/* 802C8D78 00292338  C8 C2 B8 C8 */	lfd f6, "@28"@sda21(r2)
/* 802C8D7C 0029233C  38 03 33 33 */	addi r0, r3, 0x3333
/* 802C8D80 00292340  C8 A2 B8 C0 */	lfd f5, "@27"@sda21(r2)
/* 802C8D84 00292344  FC E0 02 32 */	fmul f7, f0, f8
/* 802C8D88 00292348  C8 82 B8 B8 */	lfd f4, "@26"@sda21(r2)
/* 802C8D8C 0029234C  C8 62 B8 B0 */	lfd f3, "@25"@sda21(r2)
/* 802C8D90 00292350  7C 04 00 00 */	cmpw r4, r0
/* 802C8D94 00292354  C8 02 B8 A8 */	lfd f0, "@24"@sda21(r2)
/* 802C8D98 00292358  FC C6 38 2A */	fadd f6, f6, f7
/* 802C8D9C 0029235C  FC C8 01 B2 */	fmul f6, f8, f6
/* 802C8DA0 00292360  FC A5 30 2A */	fadd f5, f5, f6
/* 802C8DA4 00292364  FC A8 01 72 */	fmul f5, f8, f5
/* 802C8DA8 00292368  FC 84 28 2A */	fadd f4, f4, f5
/* 802C8DAC 0029236C  FC 88 01 32 */	fmul f4, f8, f4
/* 802C8DB0 00292370  FC 63 20 2A */	fadd f3, f3, f4
/* 802C8DB4 00292374  FC 68 00 F2 */	fmul f3, f8, f3
/* 802C8DB8 00292378  FC 00 18 2A */	fadd f0, f0, f3
/* 802C8DBC 0029237C  FC 68 00 32 */	fmul f3, f8, f0
/* 802C8DC0 00292380  40 80 00 28 */	bge .L_802C8DE8
/* 802C8DC4 00292384  FC 68 00 F2 */	fmul f3, f8, f3
/* 802C8DC8 00292388  C8 82 B8 D8 */	lfd f4, "@30"@sda21(r2)
/* 802C8DCC 0029238C  C8 02 B8 A0 */	lfd f0, "@23"@sda21(r2)
/* 802C8DD0 00292390  FC 21 00 B2 */	fmul f1, f1, f2
/* 802C8DD4 00292394  FC 44 02 32 */	fmul f2, f4, f8
/* 802C8DD8 00292398  FC 23 08 28 */	fsub f1, f3, f1
/* 802C8DDC 0029239C  FC 22 08 28 */	fsub f1, f2, f1
/* 802C8DE0 002923A0  FC 20 08 28 */	fsub f1, f0, f1
/* 802C8DE4 002923A4  48 00 00 58 */	b .L_802C8E3C
.L_802C8DE8:
/* 802C8DE8 002923A8  3C 00 3F E9 */	lis r0, 0x3fe9
/* 802C8DEC 002923AC  7C 04 00 00 */	cmpw r4, r0
/* 802C8DF0 002923B0  40 81 00 10 */	ble .L_802C8E00
/* 802C8DF4 002923B4  C8 02 B8 E0 */	lfd f0, "@31"@sda21(r2)
/* 802C8DF8 002923B8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802C8DFC 002923BC  48 00 00 14 */	b .L_802C8E10
.L_802C8E00:
/* 802C8E00 002923C0  3C 64 FF E0 */	addis r3, r4, 0xffe0
/* 802C8E04 002923C4  38 00 00 00 */	li r0, 0x0
/* 802C8E08 002923C8  90 61 00 10 */	stw r3, 0x10(r1)
/* 802C8E0C 002923CC  90 01 00 14 */	stw r0, 0x14(r1)
.L_802C8E10:
/* 802C8E10 002923D0  C8 02 B8 D8 */	lfd f0, "@30"@sda21(r2)
/* 802C8E14 002923D4  FC 68 00 F2 */	fmul f3, f8, f3
/* 802C8E18 002923D8  C8 A1 00 10 */	lfd f5, 0x10(r1)
/* 802C8E1C 002923DC  FC C0 02 32 */	fmul f6, f0, f8
/* 802C8E20 002923E0  C8 82 B8 A0 */	lfd f4, "@23"@sda21(r2)
/* 802C8E24 002923E4  FC 01 00 B2 */	fmul f0, f1, f2
/* 802C8E28 002923E8  FC 46 28 28 */	fsub f2, f6, f5
/* 802C8E2C 002923EC  FC 24 28 28 */	fsub f1, f4, f5
/* 802C8E30 002923F0  FC 03 00 28 */	fsub f0, f3, f0
/* 802C8E34 002923F4  FC 02 00 28 */	fsub f0, f2, f0
/* 802C8E38 002923F8  FC 21 00 28 */	fsub f1, f1, f0
.L_802C8E3C:
/* 802C8E3C 002923FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802C8E40 00292400  4E 80 00 20 */	blr
.endfn __kernel_cos

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8

.obj "@23", local
	.4byte 0x3FF00000
	.4byte 0x00000000
.endobj "@23"

.obj "@24", local
	.4byte 0x3FA55555
	.4byte 0x5555554C
.endobj "@24"

.obj "@25", local
	.4byte 0xBF56C16C
	.4byte 0x16C15177
.endobj "@25"

.obj "@26", local
	.4byte 0x3EFA01A0
	.4byte 0x19CB1590
.endobj "@26"

.obj "@27", local
	.4byte 0xBE927E4F
	.4byte 0x809C52AD
.endobj "@27"

.obj "@28", local
	.4byte 0x3E21EE9E
	.4byte 0xBDB4B1C4
.endobj "@28"

.obj "@29", local
	.4byte 0xBDA8FAE9
	.4byte 0xBE8838D4
.endobj "@29"

.obj "@30", local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj "@30"

.obj "@31", local
	.4byte 0x3FD20000
	.4byte 0x00000000
.endobj "@31"
