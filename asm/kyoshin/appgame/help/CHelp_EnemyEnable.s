.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802B8028__Q22cf17CHelp_EnemyEnableFv, global
/* 802B8028 002815E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B802C 002815EC  7C 08 02 A6 */	mflr r0
/* 802B8030 002815F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8034 002815F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B8038 002815F8  93 C1 00 08 */	stw r30, 8(r1)
/* 802B803C 002815FC  4B DF EB 8D */	bl func_800B6BC8
/* 802B8040 00281600  80 83 00 04 */	lwz r4, 4(r3)
/* 802B8044 00281604  7C 7F 1B 78 */	mr r31, r3
/* 802B8048 00281608  83 C4 00 00 */	lwz r30, 0(r4)
/* 802B804C 0028160C  48 00 00 30 */	b .L_802B807C
.L_802B8050:
/* 802B8050 00281610  80 7E 00 08 */	lwz r3, 8(r30)
/* 802B8054 00281614  4B DF 58 0D */	bl func_800AD860
/* 802B8058 00281618  85 83 3E 9C */	lwzu r12, 0x3e9c(r3)
/* 802B805C 0028161C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 802B8060 00281620  7D 89 03 A6 */	mtctr r12
/* 802B8064 00281624  4E 80 04 21 */	bctrl 
/* 802B8068 00281628  2C 03 00 00 */	cmpwi r3, 0
/* 802B806C 0028162C  40 82 00 0C */	bne .L_802B8078
/* 802B8070 00281630  38 60 00 00 */	li r3, 0
/* 802B8074 00281634  48 00 00 18 */	b .L_802B808C
.L_802B8078:
/* 802B8078 00281638  83 DE 00 00 */	lwz r30, 0(r30)
.L_802B807C:
/* 802B807C 0028163C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802B8080 00281640  7C 1E 00 40 */	cmplw r30, r0
/* 802B8084 00281644  40 82 FF CC */	bne .L_802B8050
/* 802B8088 00281648  38 60 00 01 */	li r3, 1
.L_802B808C:
/* 802B808C 0028164C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8090 00281650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8094 00281654  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B8098 00281658  7C 08 03 A6 */	mtlr r0
/* 802B809C 0028165C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B80A0 00281660  4E 80 00 20 */	blr 
.endfn func_802B8028__Q22cf17CHelp_EnemyEnableFv

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BD90", local
.hidden "@etb_8001BD90"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BD90"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033920", local
.hidden "@eti_80033920"
	.4byte func_802B8028__Q22cf17CHelp_EnemyEnableFv
	.4byte 0x0000007C
	.4byte "@etb_8001BD90"
.endobj "@eti_80033920"
