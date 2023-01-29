.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn IPCInit, global
/* 803429C0 0030BF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803429C4 0030BF84  7C 08 02 A6 */	mflr r0
/* 803429C8 0030BF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 803429CC 0030BF8C  88 0D B7 E8 */	lbz r0, lbl_80667968@sda21(r13)
/* 803429D0 0030BF90  2C 00 00 00 */	cmpwi r0, 0x0
/* 803429D4 0030BF94  40 82 00 28 */	bne .L_803429FC
/* 803429D8 0030BF98  48 01 A6 09 */	bl __OSGetIPCBufferHi
/* 803429DC 0030BF9C  90 6D B7 F8 */	stw r3, lbl_80667978@sda21(r13)
/* 803429E0 0030BFA0  48 01 A6 11 */	bl __OSGetIPCBufferLo
/* 803429E4 0030BFA4  80 8D B7 F8 */	lwz r4, lbl_80667978@sda21(r13)
/* 803429E8 0030BFA8  38 00 00 01 */	li r0, 0x1
/* 803429EC 0030BFAC  90 6D B7 F4 */	stw r3, lbl_80667974@sda21(r13)
/* 803429F0 0030BFB0  90 8D B7 F0 */	stw r4, lbl_80667970@sda21(r13)
/* 803429F4 0030BFB4  90 6D B7 EC */	stw r3, lbl_8066796C@sda21(r13)
/* 803429F8 0030BFB8  98 0D B7 E8 */	stb r0, lbl_80667968@sda21(r13)
.L_803429FC:
/* 803429FC 0030BFBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80342A00 0030BFC0  7C 08 03 A6 */	mtlr r0
/* 80342A04 0030BFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80342A08 0030BFC8  4E 80 00 20 */	blr
.endfn IPCInit
/* 80342A0C 0030BFCC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn IPCReInit, global
/* 80342A10 0030BFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80342A14 0030BFD4  7C 08 02 A6 */	mflr r0
/* 80342A18 0030BFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80342A1C 0030BFDC  38 00 00 00 */	li r0, 0x0
/* 80342A20 0030BFE0  98 0D B7 E8 */	stb r0, lbl_80667968@sda21(r13)
/* 80342A24 0030BFE4  48 01 A5 BD */	bl __OSGetIPCBufferHi
/* 80342A28 0030BFE8  90 6D B7 F8 */	stw r3, lbl_80667978@sda21(r13)
/* 80342A2C 0030BFEC  48 01 A5 C5 */	bl __OSGetIPCBufferLo
/* 80342A30 0030BFF0  80 8D B7 F8 */	lwz r4, lbl_80667978@sda21(r13)
/* 80342A34 0030BFF4  38 00 00 01 */	li r0, 0x1
/* 80342A38 0030BFF8  90 6D B7 F4 */	stw r3, lbl_80667974@sda21(r13)
/* 80342A3C 0030BFFC  90 8D B7 F0 */	stw r4, lbl_80667970@sda21(r13)
/* 80342A40 0030C000  90 6D B7 EC */	stw r3, lbl_8066796C@sda21(r13)
/* 80342A44 0030C004  98 0D B7 E8 */	stb r0, lbl_80667968@sda21(r13)
/* 80342A48 0030C008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80342A4C 0030C00C  7C 08 03 A6 */	mtlr r0
/* 80342A50 0030C010  38 21 00 10 */	addi r1, r1, 0x10
/* 80342A54 0030C014  4E 80 00 20 */	blr
.endfn IPCReInit
/* 80342A58 0030C018  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80342A5C 0030C01C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn IPCReadReg, global
/* 80342A60 0030C020  54 60 10 3A */	slwi r0, r3, 2
/* 80342A64 0030C024  3C 60 CD 00 */	lis r3, 0xcd00
/* 80342A68 0030C028  7C 63 00 2E */	lwzx r3, r3, r0
/* 80342A6C 0030C02C  4E 80 00 20 */	blr
.endfn IPCReadReg

.fn IPCWriteReg, global
/* 80342A70 0030C030  54 60 10 3A */	slwi r0, r3, 2
/* 80342A74 0030C034  3C 60 CD 00 */	lis r3, 0xcd00
/* 80342A78 0030C038  7C 83 01 2E */	stwx r4, r3, r0
/* 80342A7C 0030C03C  4E 80 00 20 */	blr
.endfn IPCWriteReg

.fn IPCGetBufferHi, global
/* 80342A80 0030C040  80 6D B7 F0 */	lwz r3, lbl_80667970@sda21(r13)
/* 80342A84 0030C044  4E 80 00 20 */	blr
.endfn IPCGetBufferHi
/* 80342A88 0030C048  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80342A8C 0030C04C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn IPCGetBufferLo, global
/* 80342A90 0030C050  80 6D B7 EC */	lwz r3, lbl_8066796C@sda21(r13)
/* 80342A94 0030C054  4E 80 00 20 */	blr
.endfn IPCGetBufferLo
/* 80342A98 0030C058  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80342A9C 0030C05C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn IPCSetBufferLo, global
/* 80342AA0 0030C060  90 6D B7 EC */	stw r3, lbl_8066796C@sda21(r13)
/* 80342AA4 0030C064  4E 80 00 20 */	blr
.endfn IPCSetBufferLo
/* 80342AA8 0030C068  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80342AAC 0030C06C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8
.global lbl_80667968
lbl_80667968:
	.skip 0x4
.global lbl_8066796C
lbl_8066796C:
	.skip 0x4
.global lbl_80667970
lbl_80667970:
	.skip 0x4
.global lbl_80667974
lbl_80667974:
	.skip 0x4
.global lbl_80667978
lbl_80667978:
	.skip 0x8
