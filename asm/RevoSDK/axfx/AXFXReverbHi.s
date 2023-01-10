.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global AXFXReverbHiInit
AXFXReverbHiInit:
/* 802D5710 0029ECD0  C0 E3 01 58 */	lfs f7, 0x158(r3)
/* 802D5714 0029ECD4  38 00 00 00 */	li r0, 0
/* 802D5718 0029ECD8  C0 42 BA 58 */	lfs f2, float_8066BDD8@sda21(r2)
/* 802D571C 0029ECDC  38 80 00 05 */	li r4, 5
/* 802D5720 0029ECE0  C0 C3 01 50 */	lfs f6, 0x150(r3)
/* 802D5724 0029ECE4  C0 A3 01 48 */	lfs f5, 0x148(r3)
/* 802D5728 0029ECE8  C0 83 01 54 */	lfs f4, 0x154(r3)
/* 802D572C 0029ECEC  C0 63 01 5C */	lfs f3, 0x15c(r3)
/* 802D5730 0029ECF0  C0 22 BA 5C */	lfs f1, float_8066BDDC@sda21(r2)
/* 802D5734 0029ECF4  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 802D5738 0029ECF8  90 83 01 10 */	stw r4, 0x110(r3)
/* 802D573C 0029ECFC  D0 E3 01 14 */	stfs f7, 0x114(r3)
/* 802D5740 0029ED00  D0 E3 01 18 */	stfs f7, 0x118(r3)
/* 802D5744 0029ED04  90 03 01 1C */	stw r0, 0x11c(r3)
/* 802D5748 0029ED08  D0 C3 01 20 */	stfs f6, 0x120(r3)
/* 802D574C 0029ED0C  D0 A3 01 24 */	stfs f5, 0x124(r3)
/* 802D5750 0029ED10  D0 83 01 28 */	stfs f4, 0x128(r3)
/* 802D5754 0029ED14  D0 63 01 2C */	stfs f3, 0x12c(r3)
/* 802D5758 0029ED18  D0 43 01 30 */	stfs f2, 0x130(r3)
/* 802D575C 0029ED1C  D0 23 01 34 */	stfs f1, 0x134(r3)
/* 802D5760 0029ED20  90 03 01 38 */	stw r0, 0x138(r3)
/* 802D5764 0029ED24  90 03 01 3C */	stw r0, 0x13c(r3)
/* 802D5768 0029ED28  D0 03 01 40 */	stfs f0, 0x140(r3)
/* 802D576C 0029ED2C  D0 43 01 44 */	stfs f2, 0x144(r3)
/* 802D5770 0029ED30  48 00 00 50 */	b AXFXReverbHiExpInit

.balign 16, 0
.global AXFXReverbHiShutdown
AXFXReverbHiShutdown:
/* 802D5780 0029ED40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5784 0029ED44  7C 08 02 A6 */	mflr r0
/* 802D5788 0029ED48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D578C 0029ED4C  48 00 01 D5 */	bl AXFXReverbHiExpShutdown
/* 802D5790 0029ED50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5794 0029ED54  38 60 00 01 */	li r3, 1
/* 802D5798 0029ED58  7C 08 03 A6 */	mtlr r0
/* 802D579C 0029ED5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D57A0 0029ED60  4E 80 00 20 */	blr 

.balign 16, 0
.global AXFXReverbHiCallback
AXFXReverbHiCallback:
/* 802D57B0 0029ED70  48 00 02 10 */	b AXFXReverbHiExpCallback


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0
.global float_8066BDD8
float_8066BDD8:
	.float 0


.global float_8066BDDC
float_8066BDDC:
	.float 1.0