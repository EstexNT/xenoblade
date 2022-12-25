.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.global SinFIdx__Q24nw4r4mathFf
SinFIdx__Q24nw4r4mathFf:
/* 8040AD2C 003D42EC  FC 60 0A 10 */	fabs f3, f1
/* 8040AD30 003D42F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040AD34 003D42F4  C0 02 C2 A0 */	lfs f0, lbl_8066C620@sda21(r2)
/* 8040AD38 003D42F8  48 00 00 08 */	b lbl_8040AD40
lbl_8040AD3C:
/* 8040AD3C 003D42FC  EC 63 00 28 */	fsubs f3, f3, f0
lbl_8040AD40:
/* 8040AD40 003D4300  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8040AD44 003D4304  41 81 FF F8 */	bgt lbl_8040AD3C
/* 8040AD48 003D4308  F0 61 B0 0C */	psq_st f3, 12(r1), 1, qr3
/* 8040AD4C 003D430C  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8040AD50 003D4310  B0 01 00 08 */	sth r0, 8(r1)
/* 8040AD54 003D4314  E0 41 B0 08 */	psq_l f2, 8(r1), 1, qr3
/* 8040AD58 003D4318  3C 80 80 52 */	lis r4, lbl_80521110@ha
/* 8040AD5C 003D431C  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8040AD60 003D4320  C0 02 C2 A4 */	lfs f0, lbl_8066C624@sda21(r2)
/* 8040AD64 003D4324  38 84 11 10 */	addi r4, r4, lbl_80521110@l
/* 8040AD68 003D4328  EC 83 10 28 */	fsubs f4, f3, f2
/* 8040AD6C 003D432C  7C 64 02 14 */	add r3, r4, r0
/* 8040AD70 003D4330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040AD74 003D4334  C0 63 00 08 */	lfs f3, 8(r3)
/* 8040AD78 003D4338  7C 44 04 2E */	lfsx f2, r4, r0
/* 8040AD7C 003D433C  EC 04 00 F2 */	fmuls f0, f4, f3
/* 8040AD80 003D4340  EC 22 00 2A */	fadds f1, f2, f0
/* 8040AD84 003D4344  40 80 00 08 */	bge lbl_8040AD8C
/* 8040AD88 003D4348  FC 20 08 50 */	fneg f1, f1
lbl_8040AD8C:
/* 8040AD8C 003D434C  38 21 00 10 */	addi r1, r1, 0x10
/* 8040AD90 003D4350  4E 80 00 20 */	blr 

.global CosFIdx__Q24nw4r4mathFf
CosFIdx__Q24nw4r4mathFf:
/* 8040AD94 003D4354  FC 20 0A 10 */	fabs f1, f1
/* 8040AD98 003D4358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040AD9C 003D435C  C0 02 C2 A0 */	lfs f0, lbl_8066C620@sda21(r2)
/* 8040ADA0 003D4360  48 00 00 08 */	b lbl_8040ADA8
lbl_8040ADA4:
/* 8040ADA4 003D4364  EC 21 00 28 */	fsubs f1, f1, f0
lbl_8040ADA8:
/* 8040ADA8 003D4368  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040ADAC 003D436C  41 81 FF F8 */	bgt lbl_8040ADA4
/* 8040ADB0 003D4370  F0 21 B0 0C */	psq_st f1, 12(r1), 1, qr3
/* 8040ADB4 003D4374  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8040ADB8 003D4378  B0 01 00 08 */	sth r0, 8(r1)
/* 8040ADBC 003D437C  E0 01 B0 08 */	psq_l f0, 8(r1), 1, qr3
/* 8040ADC0 003D4380  3C 60 80 52 */	lis r3, lbl_80521110@ha
/* 8040ADC4 003D4384  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8040ADC8 003D4388  38 63 11 10 */	addi r3, r3, lbl_80521110@l
/* 8040ADCC 003D438C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040ADD0 003D4390  7C 63 02 14 */	add r3, r3, r0
/* 8040ADD4 003D4394  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8040ADD8 003D4398  C0 03 00 04 */	lfs f0, 4(r3)
/* 8040ADDC 003D439C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040ADE0 003D43A0  EC 20 08 2A */	fadds f1, f0, f1
/* 8040ADE4 003D43A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8040ADE8 003D43A8  4E 80 00 20 */	blr 

.global SinCosFIdx__Q24nw4r4mathFPfPff
SinCosFIdx__Q24nw4r4mathFPfPff:
/* 8040ADEC 003D43AC  FC 00 0A 10 */	fabs f0, f1
/* 8040ADF0 003D43B0  3C A0 80 52 */	lis r5, lbl_80521110@ha
/* 8040ADF4 003D43B4  C0 42 C2 A0 */	lfs f2, lbl_8066C620@sda21(r2)
/* 8040ADF8 003D43B8  38 A5 11 10 */	addi r5, r5, lbl_80521110@l
/* 8040ADFC 003D43BC  F0 03 B0 00 */	psq_st f0, 0(r3), 1, qr3
/* 8040AE00 003D43C0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8040AE04 003D43C4  40 81 00 14 */	ble lbl_8040AE18
lbl_8040AE08:
/* 8040AE08 003D43C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8040AE0C 003D43CC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8040AE10 003D43D0  41 81 FF F8 */	bgt lbl_8040AE08
/* 8040AE14 003D43D4  F0 03 B0 00 */	psq_st f0, 0(r3), 1, qr3
lbl_8040AE18:
/* 8040AE18 003D43D8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8040AE1C 003D43DC  EC 82 10 28 */	fsubs f4, f2, f2
/* 8040AE20 003D43E0  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8040AE24 003D43E4  7C A5 02 14 */	add r5, r5, r0
/* 8040AE28 003D43E8  E0 43 B0 00 */	psq_l f2, 0(r3), 1, qr3
/* 8040AE2C 003D43EC  E0 65 00 00 */	psq_l f3, 0(r5), 0, qr0
/* 8040AE30 003D43F0  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 8040AE34 003D43F4  EC 40 10 28 */	fsubs f2, f0, f2
/* 8040AE38 003D43F8  E0 05 00 08 */	psq_l f0, 8(r5), 0, qr0
/* 8040AE3C 003D43FC  10 00 18 9C */	ps_madds0 f0, f0, f2, f3
/* 8040AE40 003D4400  10 40 04 A0 */	ps_merge10 f2, f0, f0
/* 8040AE44 003D4404  F0 44 80 00 */	psq_st f2, 0(r4), 1, qr0
/* 8040AE48 003D4408  40 80 00 08 */	bge lbl_8040AE50
/* 8040AE4C 003D440C  10 00 00 50 */	ps_neg f0, f0
lbl_8040AE50:
/* 8040AE50 003D4410  F0 03 80 00 */	psq_st f0, 0(r3), 1, qr0
/* 8040AE54 003D4414  4E 80 00 20 */	blr 

.global Atan2FIdx__Q24nw4r4mathFff
Atan2FIdx__Q24nw4r4mathFff:
/* 8040AE58 003D4418  C0 02 C2 A4 */	lfs f0, lbl_8066C624@sda21(r2)
/* 8040AE5C 003D441C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040AE60 003D4420  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8040AE64 003D4424  40 82 00 14 */	bne lbl_8040AE78
/* 8040AE68 003D4428  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8040AE6C 003D442C  40 82 00 0C */	bne lbl_8040AE78
/* 8040AE70 003D4430  FC 20 00 90 */	fmr f1, f0
/* 8040AE74 003D4434  48 00 01 84 */	b lbl_8040AFF8
lbl_8040AE78:
/* 8040AE78 003D4438  C0 82 C2 A4 */	lfs f4, lbl_8066C624@sda21(r2)
/* 8040AE7C 003D443C  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 8040AE80 003D4440  4C 41 13 82 */	cror 2, 1, 2
/* 8040AE84 003D4444  40 82 00 6C */	bne lbl_8040AEF0
/* 8040AE88 003D4448  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8040AE8C 003D444C  4C 41 13 82 */	cror 2, 1, 2
/* 8040AE90 003D4450  40 82 00 30 */	bne lbl_8040AEC0
/* 8040AE94 003D4454  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8040AE98 003D4458  4C 41 13 82 */	cror 2, 1, 2
/* 8040AE9C 003D445C  40 82 00 10 */	bne lbl_8040AEAC
/* 8040AEA0 003D4460  FC 60 10 90 */	fmr f3, f2
/* 8040AEA4 003D4464  38 00 00 00 */	li r0, 0
/* 8040AEA8 003D4468  48 00 00 BC */	b lbl_8040AF64
lbl_8040AEAC:
/* 8040AEAC 003D446C  FC 60 08 90 */	fmr f3, f1
/* 8040AEB0 003D4470  C0 82 C2 AC */	lfs f4, lbl_8066C62C@sda21(r2)
/* 8040AEB4 003D4474  FC 20 10 90 */	fmr f1, f2
/* 8040AEB8 003D4478  38 00 00 01 */	li r0, 1
/* 8040AEBC 003D447C  48 00 00 A8 */	b lbl_8040AF64
lbl_8040AEC0:
/* 8040AEC0 003D4480  FC 20 08 50 */	fneg f1, f1
/* 8040AEC4 003D4484  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8040AEC8 003D4488  4C 41 13 82 */	cror 2, 1, 2
/* 8040AECC 003D448C  40 82 00 10 */	bne lbl_8040AEDC
/* 8040AED0 003D4490  FC 60 10 90 */	fmr f3, f2
/* 8040AED4 003D4494  38 00 00 01 */	li r0, 1
/* 8040AED8 003D4498  48 00 00 8C */	b lbl_8040AF64
lbl_8040AEDC:
/* 8040AEDC 003D449C  FC 60 08 90 */	fmr f3, f1
/* 8040AEE0 003D44A0  C0 82 C2 B0 */	lfs f4, lbl_8066C630@sda21(r2)
/* 8040AEE4 003D44A4  FC 20 10 90 */	fmr f1, f2
/* 8040AEE8 003D44A8  38 00 00 00 */	li r0, 0
/* 8040AEEC 003D44AC  48 00 00 78 */	b lbl_8040AF64
lbl_8040AEF0:
/* 8040AEF0 003D44B0  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8040AEF4 003D44B4  4C 41 13 82 */	cror 2, 1, 2
/* 8040AEF8 003D44B8  40 82 00 38 */	bne lbl_8040AF30
/* 8040AEFC 003D44BC  FC 00 10 50 */	fneg f0, f2
/* 8040AF00 003D44C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8040AF04 003D44C4  4C 41 13 82 */	cror 2, 1, 2
/* 8040AF08 003D44C8  40 82 00 14 */	bne lbl_8040AF1C
/* 8040AF0C 003D44CC  FC 60 00 90 */	fmr f3, f0
/* 8040AF10 003D44D0  C0 82 C2 B4 */	lfs f4, lbl_8066C634@sda21(r2)
/* 8040AF14 003D44D4  38 00 00 01 */	li r0, 1
/* 8040AF18 003D44D8  48 00 00 4C */	b lbl_8040AF64
lbl_8040AF1C:
/* 8040AF1C 003D44DC  FC 60 08 90 */	fmr f3, f1
/* 8040AF20 003D44E0  C0 82 C2 AC */	lfs f4, lbl_8066C62C@sda21(r2)
/* 8040AF24 003D44E4  FC 20 00 90 */	fmr f1, f0
/* 8040AF28 003D44E8  38 00 00 00 */	li r0, 0
/* 8040AF2C 003D44EC  48 00 00 38 */	b lbl_8040AF64
lbl_8040AF30:
/* 8040AF30 003D44F0  FC 00 10 50 */	fneg f0, f2
/* 8040AF34 003D44F4  FC 20 08 50 */	fneg f1, f1
/* 8040AF38 003D44F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8040AF3C 003D44FC  4C 41 13 82 */	cror 2, 1, 2
/* 8040AF40 003D4500  40 82 00 14 */	bne lbl_8040AF54
/* 8040AF44 003D4504  FC 60 00 90 */	fmr f3, f0
/* 8040AF48 003D4508  C0 82 C2 B8 */	lfs f4, lbl_8066C638@sda21(r2)
/* 8040AF4C 003D450C  38 00 00 00 */	li r0, 0
/* 8040AF50 003D4510  48 00 00 14 */	b lbl_8040AF64
lbl_8040AF54:
/* 8040AF54 003D4514  FC 60 08 90 */	fmr f3, f1
/* 8040AF58 003D4518  C0 82 C2 B0 */	lfs f4, lbl_8066C630@sda21(r2)
/* 8040AF5C 003D451C  FC 20 00 90 */	fmr f1, f0
/* 8040AF60 003D4520  38 00 00 01 */	li r0, 1
lbl_8040AF64:
/* 8040AF64 003D4524  2C 00 00 00 */	cmpwi r0, 0
/* 8040AF68 003D4528  41 82 00 4C */	beq lbl_8040AFB4
/* 8040AF6C 003D452C  EC 21 18 24 */	fdivs f1, f1, f3
/* 8040AF70 003D4530  C0 02 C2 A8 */	lfs f0, lbl_8066C628@sda21(r2)
/* 8040AF74 003D4534  EC 21 00 32 */	fmuls f1, f1, f0
/* 8040AF78 003D4538  F0 21 B0 10 */	psq_st f1, 16(r1), 1, qr3
/* 8040AF7C 003D453C  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8040AF80 003D4540  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8040AF84 003D4544  E0 01 B0 0A */	psq_l f0, 10(r1), 1, qr3
/* 8040AF88 003D4548  3C 80 80 57 */	lis r4, lbl_8056DEC0@ha
/* 8040AF8C 003D454C  54 00 18 38 */	slwi r0, r0, 3
/* 8040AF90 003D4550  38 84 DE C0 */	addi r4, r4, lbl_8056DEC0@l
/* 8040AF94 003D4554  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040AF98 003D4558  7C 64 02 14 */	add r3, r4, r0
/* 8040AF9C 003D455C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8040AFA0 003D4560  C0 23 00 04 */	lfs f1, 4(r3)
/* 8040AFA4 003D4564  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040AFA8 003D4568  EC 00 08 2A */	fadds f0, f0, f1
/* 8040AFAC 003D456C  EC 24 00 28 */	fsubs f1, f4, f0
/* 8040AFB0 003D4570  48 00 00 48 */	b lbl_8040AFF8
lbl_8040AFB4:
/* 8040AFB4 003D4574  EC 21 18 24 */	fdivs f1, f1, f3
/* 8040AFB8 003D4578  C0 02 C2 A8 */	lfs f0, lbl_8066C628@sda21(r2)
/* 8040AFBC 003D457C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8040AFC0 003D4580  F0 21 B0 0C */	psq_st f1, 12(r1), 1, qr3
/* 8040AFC4 003D4584  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8040AFC8 003D4588  B0 01 00 08 */	sth r0, 8(r1)
/* 8040AFCC 003D458C  E0 01 B0 08 */	psq_l f0, 8(r1), 1, qr3
/* 8040AFD0 003D4590  3C 80 80 57 */	lis r4, lbl_8056DEC0@ha
/* 8040AFD4 003D4594  54 00 18 38 */	slwi r0, r0, 3
/* 8040AFD8 003D4598  38 84 DE C0 */	addi r4, r4, lbl_8056DEC0@l
/* 8040AFDC 003D459C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040AFE0 003D45A0  7C 64 02 14 */	add r3, r4, r0
/* 8040AFE4 003D45A4  7C 04 04 2E */	lfsx f0, r4, r0
/* 8040AFE8 003D45A8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8040AFEC 003D45AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040AFF0 003D45B0  EC 00 08 2A */	fadds f0, f0, f1
/* 8040AFF4 003D45B4  EC 24 00 2A */	fadds f1, f4, f0
lbl_8040AFF8:
/* 8040AFF8 003D45B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8040AFFC 003D45BC  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0


.global lbl_80521110
lbl_80521110:
	# ROM: 0x51D210
	.4byte 0
	.float 1.0
	.4byte 0x3CC90A35
	.4byte 0xB99DCF89
	.4byte 0x3CC90A35
	.4byte 0x3F7FEC46
	.4byte 0x3CC8EAC0
	.4byte 0xBA6CB74E
	.4byte 0x3D48FB87
	.4byte 0x3F7FB107
	.4byte 0x3CC8ADEF
	.4byte 0xBAC5436C
	.4byte 0x3D96A93F
	.4byte 0x3F7F4E66
	.4byte 0x3CC851A8
	.4byte 0xBB0A04D1
	.4byte 0x3DC8BD23
	.4byte 0x3F7EC472
	.4byte 0x3CC7D5ED
	.4byte 0xBB31465F
	.4byte 0x3DFAB29E
	.4byte 0x3F7E132B
	.4byte 0x3CC73ABD
	.4byte 0xBB587725
	.4byte 0x3E164064
	.4byte 0x3F7D3AB4
	.4byte 0x3CC68017
	.4byte 0xBB7F865D
	.4byte 0x3E2F10AA
	.4byte 0x3F7C3B2E
	.4byte 0x3CC5A815
	.4byte 0xBB9331A1
	.4byte 0x3E47C5AC
	.4byte 0x3F7B14BA
	.4byte 0x3CC4B2B7
	.4byte 0xBBA68F4B
	.4byte 0x3E605C03
	.4byte 0x3F79C79B
	.4byte 0x3CC39DE5
	.4byte 0xBBB9D3CC
	.4byte 0x3E78CFC0
	.4byte 0x3F7853F4
	.4byte 0x3CC26BB5
	.4byte 0xBBCCF6BE
	.4byte 0x3E888E9B
	.4byte 0x3F76BA06
	.4byte 0x3CC11A11
	.4byte 0xBBE00086
	.4byte 0x3E94A03C
	.4byte 0x3F74FA05
	.4byte 0x3CBFAB11
	.4byte 0xBBF2E05D
	.4byte 0x3EA09AED
	.4byte 0x3F731444
	.4byte 0x3CBE1EB4
	.4byte 0xBC02CF53
	.4byte 0x3EAC7CD9
	.4byte 0x3F710907
	.4byte 0x3CBC74FB
	.4byte 0xBC0C197E
	.4byte 0x3EB84428
	.4byte 0x3F6ED8A1
	.4byte 0x3CBAADE6
	.4byte 0xBC154EB1
	.4byte 0x3EC3EF07
	.4byte 0x3F6C8366
	.4byte 0x3CB8CB8E
	.4byte 0xBC1E6EEB
	.4byte 0x3ECF7BC0
	.4byte 0x3F6A09AB
	.4byte 0x3CB6CBDA
	.4byte 0xBC2771C9
	.4byte 0x3EDAE87D
	.4byte 0x3F676BD3
	.4byte 0x3CB4AEC9
	.4byte 0xBC305FAF
	.4byte 0x3EE6336A
	.4byte 0x3F64AA54
	.4byte 0x3CB27675
	.4byte 0xBC393038
	.4byte 0x3EF15AF3
	.4byte 0x3F61C593
	.4byte 0x3CB022DD
	.4byte 0xBC41E365
	.4byte 0x3EFC5D20
	.4byte 0x3F5EBE06
	.4byte 0x3CADB61C
	.4byte 0xBC4A7935
	.4byte 0x3F039C41
	.4byte 0x3F5B9421
	.4byte 0x3CAB2BFE
	.4byte 0xBC52F1AA
	.4byte 0x3F08F5A1
	.4byte 0x3F58485A
	.4byte 0x3CA888B5
	.4byte 0xBC5B4891
	.4byte 0x3F0E39D6
	.4byte 0x3F54DB38
	.4byte 0x3CA5CA2A
	.4byte 0xBC637DE9
	.4byte 0x3F136827
	.4byte 0x3F514D40
	.4byte 0x3CA2F273
	.4byte 0xBC6B8D82
	.4byte 0x3F187FBB
	.4byte 0x3F4D9F0A
	.4byte 0x3CA00193
	.4byte 0xBC737B8D
	.4byte 0x3F1D7FD8
	.4byte 0x3F49D10B
	.4byte 0x3C9CF9A0
	.4byte 0xBC7B43D9
	.4byte 0x3F226794
	.4byte 0x3F45E3FC
	.4byte 0x3C99D884
	.4byte 0xBC817332
	.4byte 0x3F273659
	.4byte 0x3F41D873
	.4byte 0x3C969E3D
	.4byte 0xBC852F7F
	.4byte 0x3F2BEB4A
	.4byte 0x3F3DAEF7
	.4byte 0x3C934EFD
	.4byte 0xBC88D6D4
	.4byte 0x3F3085C2
	.4byte 0x3F396840
	.4byte 0x3C8FE692
	.4byte 0xBC8C692F
	.4byte 0x3F3504F7
	.4byte 0x3F3504F7
	.4byte 0x3C8C692F
	.4byte 0xBC8FE692
	.4byte 0x3F396840
	.4byte 0x3F3085C2
	.4byte 0x3C88D6D4
	.4byte 0xBC934EFD
	.4byte 0x3F3DAEF7
	.4byte 0x3F2BEB4A
	.4byte 0x3C852F7F
	.4byte 0xBC969E3D
	.4byte 0x3F41D873
	.4byte 0x3F273659
	.4byte 0x3C817332
	.4byte 0xBC99D884
	.4byte 0x3F45E3FC
	.4byte 0x3F226794
	.4byte 0x3C7B43D9
	.4byte 0xBC9CF9A0
	.4byte 0x3F49D10B
	.4byte 0x3F1D7FD8
	.4byte 0x3C737B8D
	.4byte 0xBCA00193
	.4byte 0x3F4D9F0A
	.4byte 0x3F187FBB
	.4byte 0x3C6B8D82
	.4byte 0xBCA2F273
	.4byte 0x3F514D40
	.4byte 0x3F136827
	.4byte 0x3C637DE9
	.4byte 0xBCA5CA2A
	.4byte 0x3F54DB38
	.4byte 0x3F0E39D6
	.4byte 0x3C5B4891
	.4byte 0xBCA888B5
	.4byte 0x3F58485A
	.4byte 0x3F08F5A1
	.4byte 0x3C52F1AA
	.4byte 0xBCAB2BFE
	.4byte 0x3F5B9421
	.4byte 0x3F039C41
	.4byte 0x3C4A7935
	.4byte 0xBCADB61C
	.4byte 0x3F5EBE06
	.4byte 0x3EFC5D20
	.4byte 0x3C41E365
	.4byte 0xBCB022DD
	.4byte 0x3F61C593
	.4byte 0x3EF15AF3
	.4byte 0x3C393038
	.4byte 0xBCB27675
	.4byte 0x3F64AA54
	.4byte 0x3EE6336A
	.4byte 0x3C305FAF
	.4byte 0xBCB4AEC9
	.4byte 0x3F676BD3
	.4byte 0x3EDAE87D
	.4byte 0x3C2771C9
	.4byte 0xBCB6CBDA
	.4byte 0x3F6A09AB
	.4byte 0x3ECF7BC0
	.4byte 0x3C1E6EEB
	.4byte 0xBCB8CB8E
	.4byte 0x3F6C8366
	.4byte 0x3EC3EF07
	.4byte 0x3C154EB1
	.4byte 0xBCBAADE6
	.4byte 0x3F6ED8A1
	.4byte 0x3EB84428
	.4byte 0x3C0C197E
	.4byte 0xBCBC74FB
	.4byte 0x3F710907
	.4byte 0x3EAC7CD9
	.4byte 0x3C02CF53
	.4byte 0xBCBE1EB4
	.4byte 0x3F731444
	.4byte 0x3EA09AED
	.4byte 0x3BF2E05D
	.4byte 0xBCBFAB11
	.4byte 0x3F74FA05
	.4byte 0x3E94A03C
	.4byte 0x3BE00086
	.4byte 0xBCC11A11
	.4byte 0x3F76BA06
	.4byte 0x3E888E9B
	.4byte 0x3BCCF6BE
	.4byte 0xBCC26BB5
	.4byte 0x3F7853F4
	.4byte 0x3E78CFC0
	.4byte 0x3BB9D3CC
	.4byte 0xBCC39DE5
	.4byte 0x3F79C79B
	.4byte 0x3E605C03
	.4byte 0x3BA68F4B
	.4byte 0xBCC4B2B7
	.4byte 0x3F7B14BA
	.4byte 0x3E47C5AC
	.4byte 0x3B9331A1
	.4byte 0xBCC5A815
	.4byte 0x3F7C3B2E
	.4byte 0x3E2F10AA
	.4byte 0x3B7F865D
	.4byte 0xBCC68017
	.4byte 0x3F7D3AB4
	.4byte 0x3E164064
	.4byte 0x3B587725
	.4byte 0xBCC73ABD
	.4byte 0x3F7E132B
	.4byte 0x3DFAB29E
	.4byte 0x3B31465F
	.4byte 0xBCC7D5ED
	.4byte 0x3F7EC472
	.4byte 0x3DC8BD23
	.4byte 0x3B0A04D1
	.4byte 0xBCC851A8
	.4byte 0x3F7F4E66
	.4byte 0x3D96A93F
	.4byte 0x3AC5436C
	.4byte 0xBCC8ADEF
	.4byte 0x3F7FB107
	.4byte 0x3D48FB87
	.4byte 0x3A6CB74E
	.4byte 0xBCC8EAC0
	.4byte 0x3F7FEC46
	.4byte 0x3CC90A35
	.4byte 0x399DCF89
	.4byte 0xBCC90A35
	.float 1.0
	.4byte 0
	.4byte 0xB99DCF89
	.4byte 0xBCC90A35
	.4byte 0x3F7FEC46
	.4byte 0xBCC90A35
	.4byte 0xBA6CB74E
	.4byte 0xBCC8EAC0
	.4byte 0x3F7FB107
	.4byte 0xBD48FB87
	.4byte 0xBAC5436C
	.4byte 0xBCC8ADEF
	.4byte 0x3F7F4E66
	.4byte 0xBD96A93F
	.4byte 0xBB0A04D1
	.4byte 0xBCC851A8
	.4byte 0x3F7EC472
	.4byte 0xBDC8BD23
	.4byte 0xBB31465F
	.4byte 0xBCC7D5ED
	.4byte 0x3F7E132B
	.4byte 0xBDFAB29E
	.4byte 0xBB587725
	.4byte 0xBCC73ABD
	.4byte 0x3F7D3AB4
	.4byte 0xBE164064
	.4byte 0xBB7F865D
	.4byte 0xBCC68017
	.4byte 0x3F7C3B2E
	.4byte 0xBE2F10AA
	.4byte 0xBB9331A1
	.4byte 0xBCC5A815
	.4byte 0x3F7B14BA
	.4byte 0xBE47C5AC
	.4byte 0xBBA68F4B
	.4byte 0xBCC4B2B7
	.4byte 0x3F79C79B
	.4byte 0xBE605C03
	.4byte 0xBBB9D3CC
	.4byte 0xBCC39DE5
	.4byte 0x3F7853F4
	.4byte 0xBE78CFC0
	.4byte 0xBBCCF6BE
	.4byte 0xBCC26BB5
	.4byte 0x3F76BA06
	.4byte 0xBE888E9B
	.4byte 0xBBE00086
	.4byte 0xBCC11A11
	.4byte 0x3F74FA05
	.4byte 0xBE94A03C
	.4byte 0xBBF2E05D
	.4byte 0xBCBFAB11
	.4byte 0x3F731444
	.4byte 0xBEA09AED
	.4byte 0xBC02CF53
	.4byte 0xBCBE1EB4
	.4byte 0x3F710907
	.4byte 0xBEAC7CD9
	.4byte 0xBC0C197E
	.4byte 0xBCBC74FB
	.4byte 0x3F6ED8A1
	.4byte 0xBEB84428
	.4byte 0xBC154EB1
	.4byte 0xBCBAADE6
	.4byte 0x3F6C8366
	.4byte 0xBEC3EF07
	.4byte 0xBC1E6EEB
	.4byte 0xBCB8CB8E
	.4byte 0x3F6A09AB
	.4byte 0xBECF7BC0
	.4byte 0xBC2771C9
	.4byte 0xBCB6CBDA
	.4byte 0x3F676BD3
	.4byte 0xBEDAE87D
	.4byte 0xBC305FAF
	.4byte 0xBCB4AEC9
	.4byte 0x3F64AA54
	.4byte 0xBEE6336A
	.4byte 0xBC393038
	.4byte 0xBCB27675
	.4byte 0x3F61C593
	.4byte 0xBEF15AF3
	.4byte 0xBC41E365
	.4byte 0xBCB022DD
	.4byte 0x3F5EBE06
	.4byte 0xBEFC5D20
	.4byte 0xBC4A7935
	.4byte 0xBCADB61C
	.4byte 0x3F5B9421
	.4byte 0xBF039C41
	.4byte 0xBC52F1AA
	.4byte 0xBCAB2BFE
	.4byte 0x3F58485A
	.4byte 0xBF08F5A1
	.4byte 0xBC5B4891
	.4byte 0xBCA888B5
	.4byte 0x3F54DB38
	.4byte 0xBF0E39D6
	.4byte 0xBC637DE9
	.4byte 0xBCA5CA2A
	.4byte 0x3F514D40
	.4byte 0xBF136827
	.4byte 0xBC6B8D82
	.4byte 0xBCA2F273
	.4byte 0x3F4D9F0A
	.4byte 0xBF187FBB
	.4byte 0xBC737B8D
	.4byte 0xBCA00193
	.4byte 0x3F49D10B
	.4byte 0xBF1D7FD8
	.4byte 0xBC7B43D9
	.4byte 0xBC9CF9A0
	.4byte 0x3F45E3FC
	.4byte 0xBF226794
	.4byte 0xBC817332
	.4byte 0xBC99D884
	.4byte 0x3F41D873
	.4byte 0xBF273659
	.4byte 0xBC852F7F
	.4byte 0xBC969E3D
	.4byte 0x3F3DAEF7
	.4byte 0xBF2BEB4A
	.4byte 0xBC88D6D4
	.4byte 0xBC934EFD
	.4byte 0x3F396840
	.4byte 0xBF3085C2
	.4byte 0xBC8C692F
	.4byte 0xBC8FE692
	.4byte 0x3F3504F7
	.4byte 0xBF3504F7
	.4byte 0xBC8FE692
	.4byte 0xBC8C692F
	.4byte 0x3F3085C2
	.4byte 0xBF396840
	.4byte 0xBC934EFD
	.4byte 0xBC88D6D4
	.4byte 0x3F2BEB4A
	.4byte 0xBF3DAEF7
	.4byte 0xBC969E3D
	.4byte 0xBC852F7F
	.4byte 0x3F273659
	.4byte 0xBF41D873
	.4byte 0xBC99D884
	.4byte 0xBC817332
	.4byte 0x3F226794
	.4byte 0xBF45E3FC
	.4byte 0xBC9CF9A0
	.4byte 0xBC7B43D9
	.4byte 0x3F1D7FD8
	.4byte 0xBF49D10B
	.4byte 0xBCA00193
	.4byte 0xBC737B8D
	.4byte 0x3F187FBB
	.4byte 0xBF4D9F0A
	.4byte 0xBCA2F273
	.4byte 0xBC6B8D82
	.4byte 0x3F136827
	.4byte 0xBF514D40
	.4byte 0xBCA5CA2A
	.4byte 0xBC637DE9
	.4byte 0x3F0E39D6
	.4byte 0xBF54DB38
	.4byte 0xBCA888B5
	.4byte 0xBC5B4891
	.4byte 0x3F08F5A1
	.4byte 0xBF58485A
	.4byte 0xBCAB2BFE
	.4byte 0xBC52F1AA
	.4byte 0x3F039C41
	.4byte 0xBF5B9421
	.4byte 0xBCADB61C
	.4byte 0xBC4A7935
	.4byte 0x3EFC5D20
	.4byte 0xBF5EBE06
	.4byte 0xBCB022DD
	.4byte 0xBC41E365
	.4byte 0x3EF15AF3
	.4byte 0xBF61C593
	.4byte 0xBCB27675
	.4byte 0xBC393038
	.4byte 0x3EE6336A
	.4byte 0xBF64AA54
	.4byte 0xBCB4AEC9
	.4byte 0xBC305FAF
	.4byte 0x3EDAE87D
	.4byte 0xBF676BD3
	.4byte 0xBCB6CBDA
	.4byte 0xBC2771C9
	.4byte 0x3ECF7BC0
	.4byte 0xBF6A09AB
	.4byte 0xBCB8CB8E
	.4byte 0xBC1E6EEB
	.4byte 0x3EC3EF07
	.4byte 0xBF6C8366
	.4byte 0xBCBAADE6
	.4byte 0xBC154EB1
	.4byte 0x3EB84428
	.4byte 0xBF6ED8A1
	.4byte 0xBCBC74FB
	.4byte 0xBC0C197E
	.4byte 0x3EAC7CD9
	.4byte 0xBF710907
	.4byte 0xBCBE1EB4
	.4byte 0xBC02CF53
	.4byte 0x3EA09AED
	.4byte 0xBF731444
	.4byte 0xBCBFAB11
	.4byte 0xBBF2E05D
	.4byte 0x3E94A03C
	.4byte 0xBF74FA05
	.4byte 0xBCC11A11
	.4byte 0xBBE00086
	.4byte 0x3E888E9B
	.4byte 0xBF76BA06
	.4byte 0xBCC26BB5
	.4byte 0xBBCCF6BE
	.4byte 0x3E78CFC0
	.4byte 0xBF7853F4
	.4byte 0xBCC39DE5
	.4byte 0xBBB9D3CC
	.4byte 0x3E605C03
	.4byte 0xBF79C79B
	.4byte 0xBCC4B2B7
	.4byte 0xBBA68F4B
	.4byte 0x3E47C5AC
	.4byte 0xBF7B14BA
	.4byte 0xBCC5A815
	.4byte 0xBB9331A1
	.4byte 0x3E2F10AA
	.4byte 0xBF7C3B2E
	.4byte 0xBCC68017
	.4byte 0xBB7F865D
	.4byte 0x3E164064
	.4byte 0xBF7D3AB4
	.4byte 0xBCC73ABD
	.4byte 0xBB587725
	.4byte 0x3DFAB29E
	.4byte 0xBF7E132B
	.4byte 0xBCC7D5ED
	.4byte 0xBB31465F
	.4byte 0x3DC8BD23
	.4byte 0xBF7EC472
	.4byte 0xBCC851A8
	.4byte 0xBB0A04D1
	.4byte 0x3D96A93F
	.4byte 0xBF7F4E66
	.4byte 0xBCC8ADEF
	.4byte 0xBAC5436C
	.4byte 0x3D48FB87
	.4byte 0xBF7FB107
	.4byte 0xBCC8EAC0
	.4byte 0xBA6CB74E
	.4byte 0x3CC90A35
	.4byte 0xBF7FEC46
	.4byte 0xBCC90A35
	.4byte 0xB99DCF89
	.4byte 0
	.float -1.0
	.4byte 0xBCC90A35
	.4byte 0x399DCF89
	.4byte 0xBCC90A35
	.4byte 0xBF7FEC46
	.4byte 0xBCC8EAC0
	.4byte 0x3A6CB74E
	.4byte 0xBD48FB87
	.4byte 0xBF7FB107
	.4byte 0xBCC8ADEF
	.4byte 0x3AC5436C
	.4byte 0xBD96A93F
	.4byte 0xBF7F4E66
	.4byte 0xBCC851A8
	.4byte 0x3B0A04D1
	.4byte 0xBDC8BD23
	.4byte 0xBF7EC472
	.4byte 0xBCC7D5ED
	.4byte 0x3B31465F
	.4byte 0xBDFAB29E
	.4byte 0xBF7E132B
	.4byte 0xBCC73ABD
	.4byte 0x3B587725
	.4byte 0xBE164064
	.4byte 0xBF7D3AB4
	.4byte 0xBCC68017
	.4byte 0x3B7F865D
	.4byte 0xBE2F10AA
	.4byte 0xBF7C3B2E
	.4byte 0xBCC5A815
	.4byte 0x3B9331A1
	.4byte 0xBE47C5AC
	.4byte 0xBF7B14BA
	.4byte 0xBCC4B2B7
	.4byte 0x3BA68F4B
	.4byte 0xBE605C03
	.4byte 0xBF79C79B
	.4byte 0xBCC39DE5
	.4byte 0x3BB9D3CC
	.4byte 0xBE78CFC0
	.4byte 0xBF7853F4
	.4byte 0xBCC26BB5
	.4byte 0x3BCCF6BE
	.4byte 0xBE888E9B
	.4byte 0xBF76BA06
	.4byte 0xBCC11A11
	.4byte 0x3BE00086
	.4byte 0xBE94A03C
	.4byte 0xBF74FA05
	.4byte 0xBCBFAB11
	.4byte 0x3BF2E05D
	.4byte 0xBEA09AED
	.4byte 0xBF731444
	.4byte 0xBCBE1EB4
	.4byte 0x3C02CF53
	.4byte 0xBEAC7CD9
	.4byte 0xBF710907
	.4byte 0xBCBC74FB
	.4byte 0x3C0C197E
	.4byte 0xBEB84428
	.4byte 0xBF6ED8A1
	.4byte 0xBCBAADE6
	.4byte 0x3C154EB1
	.4byte 0xBEC3EF07
	.4byte 0xBF6C8366
	.4byte 0xBCB8CB8E
	.4byte 0x3C1E6EEB
	.4byte 0xBECF7BC0
	.4byte 0xBF6A09AB
	.4byte 0xBCB6CBDA
	.4byte 0x3C2771C9
	.4byte 0xBEDAE87D
	.4byte 0xBF676BD3
	.4byte 0xBCB4AEC9
	.4byte 0x3C305FAF
	.4byte 0xBEE6336A
	.4byte 0xBF64AA54
	.4byte 0xBCB27675
	.4byte 0x3C393038
	.4byte 0xBEF15AF3
	.4byte 0xBF61C593
	.4byte 0xBCB022DD
	.4byte 0x3C41E365
	.4byte 0xBEFC5D20
	.4byte 0xBF5EBE06
	.4byte 0xBCADB61C
	.4byte 0x3C4A7935
	.4byte 0xBF039C41
	.4byte 0xBF5B9421
	.4byte 0xBCAB2BFE
	.4byte 0x3C52F1AA
	.4byte 0xBF08F5A1
	.4byte 0xBF58485A
	.4byte 0xBCA888B5
	.4byte 0x3C5B4891
	.4byte 0xBF0E39D6
	.4byte 0xBF54DB38
	.4byte 0xBCA5CA2A
	.4byte 0x3C637DE9
	.4byte 0xBF136827
	.4byte 0xBF514D40
	.4byte 0xBCA2F273
	.4byte 0x3C6B8D82
	.4byte 0xBF187FBB
	.4byte 0xBF4D9F0A
	.4byte 0xBCA00193
	.4byte 0x3C737B8D
	.4byte 0xBF1D7FD8
	.4byte 0xBF49D10B
	.4byte 0xBC9CF9A0
	.4byte 0x3C7B43D9
	.4byte 0xBF226794
	.4byte 0xBF45E3FC
	.4byte 0xBC99D884
	.4byte 0x3C817332
	.4byte 0xBF273659
	.4byte 0xBF41D873
	.4byte 0xBC969E3D
	.4byte 0x3C852F7F
	.4byte 0xBF2BEB4A
	.4byte 0xBF3DAEF7
	.4byte 0xBC934EFD
	.4byte 0x3C88D6D4
	.4byte 0xBF3085C2
	.4byte 0xBF396840
	.4byte 0xBC8FE692
	.4byte 0x3C8C692F
	.4byte 0xBF3504F7
	.4byte 0xBF3504F7
	.4byte 0xBC8C692F
	.4byte 0x3C8FE692
	.4byte 0xBF396840
	.4byte 0xBF3085C2
	.4byte 0xBC88D6D4
	.4byte 0x3C934EFD
	.4byte 0xBF3DAEF7
	.4byte 0xBF2BEB4A
	.4byte 0xBC852F7F
	.4byte 0x3C969E3D
	.4byte 0xBF41D873
	.4byte 0xBF273659
	.4byte 0xBC817332
	.4byte 0x3C99D884
	.4byte 0xBF45E3FC
	.4byte 0xBF226794
	.4byte 0xBC7B43D9
	.4byte 0x3C9CF9A0
	.4byte 0xBF49D10B
	.4byte 0xBF1D7FD8
	.4byte 0xBC737B8D
	.4byte 0x3CA00193
	.4byte 0xBF4D9F0A
	.4byte 0xBF187FBB
	.4byte 0xBC6B8D82
	.4byte 0x3CA2F273
	.4byte 0xBF514D40
	.4byte 0xBF136827
	.4byte 0xBC637DE9
	.4byte 0x3CA5CA2A
	.4byte 0xBF54DB38
	.4byte 0xBF0E39D6
	.4byte 0xBC5B4891
	.4byte 0x3CA888B5
	.4byte 0xBF58485A
	.4byte 0xBF08F5A1
	.4byte 0xBC52F1AA
	.4byte 0x3CAB2BFE
	.4byte 0xBF5B9421
	.4byte 0xBF039C41
	.4byte 0xBC4A7935
	.4byte 0x3CADB61C
	.4byte 0xBF5EBE06
	.4byte 0xBEFC5D20
	.4byte 0xBC41E365
	.4byte 0x3CB022DD
	.4byte 0xBF61C593
	.4byte 0xBEF15AF3
	.4byte 0xBC393038
	.4byte 0x3CB27675
	.4byte 0xBF64AA54
	.4byte 0xBEE6336A
	.4byte 0xBC305FAF
	.4byte 0x3CB4AEC9
	.4byte 0xBF676BD3
	.4byte 0xBEDAE87D
	.4byte 0xBC2771C9
	.4byte 0x3CB6CBDA
	.4byte 0xBF6A09AB
	.4byte 0xBECF7BC0
	.4byte 0xBC1E6EEB
	.4byte 0x3CB8CB8E
	.4byte 0xBF6C8366
	.4byte 0xBEC3EF07
	.4byte 0xBC154EB1
	.4byte 0x3CBAADE6
	.4byte 0xBF6ED8A1
	.4byte 0xBEB84428
	.4byte 0xBC0C197E
	.4byte 0x3CBC74FB
	.4byte 0xBF710907
	.4byte 0xBEAC7CD9
	.4byte 0xBC02CF53
	.4byte 0x3CBE1EB4
	.4byte 0xBF731444
	.4byte 0xBEA09AED
	.4byte 0xBBF2E05D
	.4byte 0x3CBFAB11
	.4byte 0xBF74FA05
	.4byte 0xBE94A03C
	.4byte 0xBBE00086
	.4byte 0x3CC11A11
	.4byte 0xBF76BA06
	.4byte 0xBE888E9B
	.4byte 0xBBCCF6BE
	.4byte 0x3CC26BB5
	.4byte 0xBF7853F4
	.4byte 0xBE78CFC0
	.4byte 0xBBB9D3CC
	.4byte 0x3CC39DE5
	.4byte 0xBF79C79B
	.4byte 0xBE605C03
	.4byte 0xBBA68F4B
	.4byte 0x3CC4B2B7
	.4byte 0xBF7B14BA
	.4byte 0xBE47C5AC
	.4byte 0xBB9331A1
	.4byte 0x3CC5A815
	.4byte 0xBF7C3B2E
	.4byte 0xBE2F10AA
	.4byte 0xBB7F865D
	.4byte 0x3CC68017
	.4byte 0xBF7D3AB4
	.4byte 0xBE164064
	.4byte 0xBB587725
	.4byte 0x3CC73ABD
	.4byte 0xBF7E132B
	.4byte 0xBDFAB29E
	.4byte 0xBB31465F
	.4byte 0x3CC7D5ED
	.4byte 0xBF7EC472
	.4byte 0xBDC8BD23
	.4byte 0xBB0A04D1
	.4byte 0x3CC851A8
	.4byte 0xBF7F4E66
	.4byte 0xBD96A93F
	.4byte 0xBAC5436C
	.4byte 0x3CC8ADEF
	.4byte 0xBF7FB107
	.4byte 0xBD48FB87
	.4byte 0xBA6CB74E
	.4byte 0x3CC8EAC0
	.4byte 0xBF7FEC46
	.4byte 0xBCC90A35
	.4byte 0xB99DCF89
	.4byte 0x3CC90A35
	.float -1.0
	.4byte 0x80000000
	.4byte 0x399DCF89
	.4byte 0x3CC90A35
	.4byte 0xBF7FEC46
	.4byte 0x3CC90A35
	.4byte 0x3A6CB74E
	.4byte 0x3CC8EAC0
	.4byte 0xBF7FB107
	.4byte 0x3D48FB87
	.4byte 0x3AC5436C
	.4byte 0x3CC8ADEF
	.4byte 0xBF7F4E66
	.4byte 0x3D96A93F
	.4byte 0x3B0A04D1
	.4byte 0x3CC851A8
	.4byte 0xBF7EC472
	.4byte 0x3DC8BD23
	.4byte 0x3B31465F
	.4byte 0x3CC7D5ED
	.4byte 0xBF7E132B
	.4byte 0x3DFAB29E
	.4byte 0x3B587725
	.4byte 0x3CC73ABD
	.4byte 0xBF7D3AB4
	.4byte 0x3E164064
	.4byte 0x3B7F865D
	.4byte 0x3CC68017
	.4byte 0xBF7C3B2E
	.4byte 0x3E2F10AA
	.4byte 0x3B9331A1
	.4byte 0x3CC5A815
	.4byte 0xBF7B14BA
	.4byte 0x3E47C5AC
	.4byte 0x3BA68F4B
	.4byte 0x3CC4B2B7
	.4byte 0xBF79C79B
	.4byte 0x3E605C03
	.4byte 0x3BB9D3CC
	.4byte 0x3CC39DE5
	.4byte 0xBF7853F4
	.4byte 0x3E78CFC0
	.4byte 0x3BCCF6BE
	.4byte 0x3CC26BB5
	.4byte 0xBF76BA06
	.4byte 0x3E888E9B
	.4byte 0x3BE00086
	.4byte 0x3CC11A11
	.4byte 0xBF74FA05
	.4byte 0x3E94A03C
	.4byte 0x3BF2E05D
	.4byte 0x3CBFAB11
	.4byte 0xBF731444
	.4byte 0x3EA09AED
	.4byte 0x3C02CF53
	.4byte 0x3CBE1EB4
	.4byte 0xBF710907
	.4byte 0x3EAC7CD9
	.4byte 0x3C0C197E
	.4byte 0x3CBC74FB
	.4byte 0xBF6ED8A1
	.4byte 0x3EB84428
	.4byte 0x3C154EB1
	.4byte 0x3CBAADE6
	.4byte 0xBF6C8366
	.4byte 0x3EC3EF07
	.4byte 0x3C1E6EEB
	.4byte 0x3CB8CB8E
	.4byte 0xBF6A09AB
	.4byte 0x3ECF7BC0
	.4byte 0x3C2771C9
	.4byte 0x3CB6CBDA
	.4byte 0xBF676BD3
	.4byte 0x3EDAE87D
	.4byte 0x3C305FAF
	.4byte 0x3CB4AEC9
	.4byte 0xBF64AA54
	.4byte 0x3EE6336A
	.4byte 0x3C393038
	.4byte 0x3CB27675
	.4byte 0xBF61C593
	.4byte 0x3EF15AF3
	.4byte 0x3C41E365
	.4byte 0x3CB022DD
	.4byte 0xBF5EBE06
	.4byte 0x3EFC5D20
	.4byte 0x3C4A7935
	.4byte 0x3CADB61C
	.4byte 0xBF5B9421
	.4byte 0x3F039C41
	.4byte 0x3C52F1AA
	.4byte 0x3CAB2BFE
	.4byte 0xBF58485A
	.4byte 0x3F08F5A1
	.4byte 0x3C5B4891
	.4byte 0x3CA888B5
	.4byte 0xBF54DB38
	.4byte 0x3F0E39D6
	.4byte 0x3C637DE9
	.4byte 0x3CA5CA2A
	.4byte 0xBF514D40
	.4byte 0x3F136827
	.4byte 0x3C6B8D82
	.4byte 0x3CA2F273
	.4byte 0xBF4D9F0A
	.4byte 0x3F187FBB
	.4byte 0x3C737B8D
	.4byte 0x3CA00193
	.4byte 0xBF49D10B
	.4byte 0x3F1D7FD8
	.4byte 0x3C7B43D9
	.4byte 0x3C9CF9A0
	.4byte 0xBF45E3FC
	.4byte 0x3F226794
	.4byte 0x3C817332
	.4byte 0x3C99D884
	.4byte 0xBF41D873
	.4byte 0x3F273659
	.4byte 0x3C852F7F
	.4byte 0x3C969E3D
	.4byte 0xBF3DAEF7
	.4byte 0x3F2BEB4A
	.4byte 0x3C88D6D4
	.4byte 0x3C934EFD
	.4byte 0xBF396840
	.4byte 0x3F3085C2
	.4byte 0x3C8C692F
	.4byte 0x3C8FE692
	.4byte 0xBF3504F7
	.4byte 0x3F3504F7
	.4byte 0x3C8FE692
	.4byte 0x3C8C692F
	.4byte 0xBF3085C2
	.4byte 0x3F396840
	.4byte 0x3C934EFD
	.4byte 0x3C88D6D4
	.4byte 0xBF2BEB4A
	.4byte 0x3F3DAEF7
	.4byte 0x3C969E3D
	.4byte 0x3C852F7F
	.4byte 0xBF273659
	.4byte 0x3F41D873
	.4byte 0x3C99D884
	.4byte 0x3C817332
	.4byte 0xBF226794
	.4byte 0x3F45E3FC
	.4byte 0x3C9CF9A0
	.4byte 0x3C7B43D9
	.4byte 0xBF1D7FD8
	.4byte 0x3F49D10B
	.4byte 0x3CA00193
	.4byte 0x3C737B8D
	.4byte 0xBF187FBB
	.4byte 0x3F4D9F0A
	.4byte 0x3CA2F273
	.4byte 0x3C6B8D82
	.4byte 0xBF136827
	.4byte 0x3F514D40
	.4byte 0x3CA5CA2A
	.4byte 0x3C637DE9
	.4byte 0xBF0E39D6
	.4byte 0x3F54DB38
	.4byte 0x3CA888B5
	.4byte 0x3C5B4891
	.4byte 0xBF08F5A1
	.4byte 0x3F58485A
	.4byte 0x3CAB2BFE
	.4byte 0x3C52F1AA
	.4byte 0xBF039C41
	.4byte 0x3F5B9421
	.4byte 0x3CADB61C
	.4byte 0x3C4A7935
	.4byte 0xBEFC5D20
	.4byte 0x3F5EBE06
	.4byte 0x3CB022DD
	.4byte 0x3C41E365
	.4byte 0xBEF15AF3
	.4byte 0x3F61C593
	.4byte 0x3CB27675
	.4byte 0x3C393038
	.4byte 0xBEE6336A
	.4byte 0x3F64AA54
	.4byte 0x3CB4AEC9
	.4byte 0x3C305FAF
	.4byte 0xBEDAE87D
	.4byte 0x3F676BD3
	.4byte 0x3CB6CBDA
	.4byte 0x3C2771C9
	.4byte 0xBECF7BC0
	.4byte 0x3F6A09AB
	.4byte 0x3CB8CB8E
	.4byte 0x3C1E6EEB
	.4byte 0xBEC3EF07
	.4byte 0x3F6C8366
	.4byte 0x3CBAADE6
	.4byte 0x3C154EB1
	.4byte 0xBEB84428
	.4byte 0x3F6ED8A1
	.4byte 0x3CBC74FB
	.4byte 0x3C0C197E
	.4byte 0xBEAC7CD9
	.4byte 0x3F710907
	.4byte 0x3CBE1EB4
	.4byte 0x3C02CF53
	.4byte 0xBEA09AED
	.4byte 0x3F731444
	.4byte 0x3CBFAB11
	.4byte 0x3BF2E05D
	.4byte 0xBE94A03C
	.4byte 0x3F74FA05
	.4byte 0x3CC11A11
	.4byte 0x3BE00086
	.4byte 0xBE888E9B
	.4byte 0x3F76BA06
	.4byte 0x3CC26BB5
	.4byte 0x3BCCF6BE
	.4byte 0xBE78CFC0
	.4byte 0x3F7853F4
	.4byte 0x3CC39DE5
	.4byte 0x3BB9D3CC
	.4byte 0xBE605C03
	.4byte 0x3F79C79B
	.4byte 0x3CC4B2B7
	.4byte 0x3BA68F4B
	.4byte 0xBE47C5AC
	.4byte 0x3F7B14BA
	.4byte 0x3CC5A815
	.4byte 0x3B9331A1
	.4byte 0xBE2F10AA
	.4byte 0x3F7C3B2E
	.4byte 0x3CC68017
	.4byte 0x3B7F865D
	.4byte 0xBE164064
	.4byte 0x3F7D3AB4
	.4byte 0x3CC73ABD
	.4byte 0x3B587725
	.4byte 0xBDFAB29E
	.4byte 0x3F7E132B
	.4byte 0x3CC7D5ED
	.4byte 0x3B31465F
	.4byte 0xBDC8BD23
	.4byte 0x3F7EC472
	.4byte 0x3CC851A8
	.4byte 0x3B0A04D1
	.4byte 0xBD96A93F
	.4byte 0x3F7F4E66
	.4byte 0x3CC8ADEF
	.4byte 0x3AC5436C
	.4byte 0xBD48FB87
	.4byte 0x3F7FB107
	.4byte 0x3CC8EAC0
	.4byte 0x3A6CB74E
	.4byte 0xBCC90A35
	.4byte 0x3F7FEC46
	.4byte 0x3CC90A35
	.4byte 0x399DCF89
	.4byte 0x80000000
	.float 1.0
	.4byte 0x3CC90A35
	.4byte 0xB99DCF89

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056DEC0
lbl_8056DEC0:
	# ROM: 0x569FC0
	.4byte 0
	.4byte 0x3FA2EBF1
	.4byte 0x3FA2EBF1
	.4byte 0x3FA29AB1
	.4byte 0x4022C351
	.4byte 0x3FA1F923
	.4byte 0x4073BFE2
	.4byte 0x3FA10925
	.4byte 0x40A2223B
	.4byte 0x3F9FCD71
	.4byte 0x40CA1597
	.4byte 0x3F9E498C
	.4byte 0x40F1A7FA
	.4byte 0x3F9C81AB
	.4byte 0x410C6432
	.4byte 0x3F9A7A9B
	.4byte 0x411FB386
	.4byte 0x3F98399D
	.4byte 0x4132BAB9
	.4byte 0x3F95C44B
	.4byte 0x41457343
	.4byte 0x3F932075
	.4byte 0x4157D751
	.4byte 0x3F905408
	.4byte 0x4169E1D2
	.4byte 0x3F8D64EB
	.4byte 0x417B8E70
	.4byte 0x3F8A58EC
	.4byte 0x41866CC7
	.4byte 0x3F8735A9
	.4byte 0x418EE021
	.4byte 0x3F84007D
	.4byte 0x41972029
	.4byte 0x3F80BE73
	.4byte 0x419F2C10
	.4byte 0x3F7AE877
	.4byte 0x41A70354
	.4byte 0x3F744C4A
	.4byte 0x41AEA5B6
	.4byte 0x3F6DB032
	.4byte 0x41B61338
	.4byte 0x3F671B36
	.4byte 0x41BD4C11
	.4byte 0x3F60938F
	.4byte 0x41C450AE
	.4byte 0x3F5A1EB2
	.4byte 0x41CB21A3
	.4byte 0x3F53C157
	.4byte 0x41D1BFAE
	.4byte 0x3F4D7F84
	.4byte 0x41D82BAA
	.4byte 0x3F475C97
	.4byte 0x41DE668F
	.4byte 0x3F415B59
	.4byte 0x41E4716A
	.4byte 0x3F3B7E02
	.4byte 0x41EA4D5A
	.4byte 0x3F35C652
	.4byte 0x41EFFB8C
	.4byte 0x3F303593
	.4byte 0x41F57D39
	.4byte 0x3F2ACCAE
	.4byte 0x41FAD39E
	.4byte 0x3F258C33
	.4byte 0x42000000
	.4byte 0x3F207467
