.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn btm_init, global
/* 802E9E64 002B3424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E9E68 002B3428  7C 08 02 A6 */	mflr r0
/* 802E9E6C 002B342C  38 80 00 00 */	li r4, 0
/* 802E9E70 002B3430  38 A0 27 C4 */	li r5, 0x27c4
/* 802E9E74 002B3434  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9E78 002B3438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E9E7C 002B343C  3F E0 80 5C */	lis r31, btm_cb@ha
/* 802E9E80 002B3440  38 7F F9 F8 */	addi r3, r31, btm_cb@l
/* 802E9E84 002B3444  4B D1 A4 CD */	bl memset
/* 802E9E88 002B3448  38 7F F9 F8 */	addi r3, r31, btm_cb@l
/* 802E9E8C 002B344C  38 00 00 00 */	li r0, 0
/* 802E9E90 002B3450  98 03 27 C0 */	stb r0, 0x27c0(r3)
/* 802E9E94 002B3454  4B FF F4 85 */	bl btm_inq_db_init
/* 802E9E98 002B3458  4B FF A6 69 */	bl btm_acl_init
/* 802E9E9C 002B345C  38 60 00 02 */	li r3, 2
/* 802E9EA0 002B3460  48 00 2D 79 */	bl btm_sec_init
/* 802E9EA4 002B3464  48 00 0C B1 */	bl btm_sco_init
/* 802E9EA8 002B3468  4B FF CA 69 */	bl btm_dev_init
/* 802E9EAC 002B346C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9EB0 002B3470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E9EB4 002B3474  7C 08 03 A6 */	mtlr r0
/* 802E9EB8 002B3478  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9EBC 002B347C  4E 80 00 20 */	blr
.endfn btm_init

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global btm_cb
btm_cb:
	.skip 0x27C8