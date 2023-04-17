.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __AXGetCurrentProfile, global
/* 802D56D0 0029EC90  80 0D B5 B8 */	lwz r0, __AXProfileInitialized@sda21(r13)
/* 802D56D4 0029EC94  2C 00 00 00 */	cmpwi r0, 0
/* 802D56D8 0029EC98  41 82 00 30 */	beq .L_802D5708
/* 802D56DC 0029EC9C  80 AD B5 BC */	lwz r5, __AXCurrentProfile@sda21(r13)
/* 802D56E0 0029ECA0  80 6D B5 C0 */	lwz r3, __AXMaxProfiles@sda21(r13)
/* 802D56E4 0029ECA4  38 85 00 01 */	addi r4, r5, 1
/* 802D56E8 0029ECA8  80 CD B5 C4 */	lwz r6, __AXProfile@sda21(r13)
/* 802D56EC 0029ECAC  7C 04 1B 96 */	divwu r0, r4, r3
/* 802D56F0 0029ECB0  7C 00 19 D6 */	mullw r0, r0, r3
/* 802D56F4 0029ECB4  1C 65 00 38 */	mulli r3, r5, 0x38
/* 802D56F8 0029ECB8  7C 00 20 50 */	subf r0, r0, r4
/* 802D56FC 0029ECBC  90 0D B5 BC */	stw r0, __AXCurrentProfile@sda21(r13)
/* 802D5700 0029ECC0  7C 66 1A 14 */	add r3, r6, r3
/* 802D5704 0029ECC4  4E 80 00 20 */	blr
.L_802D5708:
/* 802D5708 0029ECC8  38 60 00 00 */	li r3, 0
/* 802D570C 0029ECCC  4E 80 00 20 */	blr 
.endfn __AXGetCurrentProfile

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj __AXProfileInitialized, local
	.skip 0x4
.endobj __AXProfileInitialized

.obj __AXCurrentProfile, local
	.skip 0x4
.endobj __AXCurrentProfile

.obj __AXMaxProfiles, local
	.skip 0x4
.endobj __AXMaxProfiles

.obj __AXProfile, local
	.skip 0x4
.endobj __AXProfile
