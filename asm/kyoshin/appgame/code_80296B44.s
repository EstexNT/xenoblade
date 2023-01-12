.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80296B44
func_80296B44:
/* 80296B44 00260104  38 03 01 00 */	addi r0, r3, 0x100
/* 80296B48 00260108  7C 65 1B 78 */	mr r5, r3
/* 80296B4C 0026010C  38 80 FF FF */	li r4, -1
.L_80296B50:
/* 80296B50 00260110  B0 85 00 00 */	sth r4, 0(r5)
/* 80296B54 00260114  38 A5 00 02 */	addi r5, r5, 2
/* 80296B58 00260118  7C 05 00 40 */	cmplw r5, r0
/* 80296B5C 0026011C  41 80 FF F4 */	blt .L_80296B50
/* 80296B60 00260120  38 00 00 80 */	li r0, 0x80
/* 80296B64 00260124  38 A0 00 00 */	li r5, 0
/* 80296B68 00260128  B0 A3 01 00 */	sth r5, 0x100(r3)
/* 80296B6C 0026012C  38 C0 00 00 */	li r6, 0
/* 80296B70 00260130  38 80 FF FF */	li r4, -1
/* 80296B74 00260134  98 A3 01 02 */	stb r5, 0x102(r3)
/* 80296B78 00260138  98 A3 01 03 */	stb r5, 0x103(r3)
/* 80296B7C 0026013C  98 A3 01 04 */	stb r5, 0x104(r3)
/* 80296B80 00260140  98 A3 01 08 */	stb r5, 0x108(r3)
/* 80296B84 00260144  90 A3 01 28 */	stw r5, 0x128(r3)
/* 80296B88 00260148  98 A3 01 2C */	stb r5, 0x12c(r3)
/* 80296B8C 0026014C  90 A3 01 AC */	stw r5, 0x1ac(r3)
/* 80296B90 00260150  90 A3 01 B0 */	stw r5, 0x1b0(r3)
/* 80296B94 00260154  98 A3 01 B4 */	stb r5, 0x1b4(r3)
/* 80296B98 00260158  7C 09 03 A6 */	mtctr r0
.L_80296B9C:
/* 80296B9C 0026015C  54 C0 0B FC */	rlwinm r0, r6, 1, 0xf, 0x1e
/* 80296BA0 00260160  38 C6 00 01 */	addi r6, r6, 1
/* 80296BA4 00260164  7C 83 03 2E */	sthx r4, r3, r0
/* 80296BA8 00260168  42 00 FF F4 */	bdnz .L_80296B9C
/* 80296BAC 0026016C  4E 80 00 20 */	blr 

.global func_80296BB0
func_80296BB0:
/* 80296BB0 00260170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296BB4 00260174  7C 08 02 A6 */	mflr r0
/* 80296BB8 00260178  2C 03 00 00 */	cmpwi r3, 0
/* 80296BBC 0026017C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296BC0 00260180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296BC4 00260184  7C 7F 1B 78 */	mr r31, r3
/* 80296BC8 00260188  41 82 00 10 */	beq .L_80296BD8
/* 80296BCC 0026018C  2C 04 00 00 */	cmpwi r4, 0
/* 80296BD0 00260190  40 81 00 08 */	ble .L_80296BD8
/* 80296BD4 00260194  48 19 E0 59 */	bl __dl__FPv
.L_80296BD8:
/* 80296BD8 00260198  7F E3 FB 78 */	mr r3, r31
/* 80296BDC 0026019C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296BE0 002601A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296BE4 002601A4  7C 08 03 A6 */	mtlr r0
/* 80296BE8 002601A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80296BEC 002601AC  4E 80 00 20 */	blr 

.global func_80296BF0
func_80296BF0:
/* 80296BF0 002601B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80296BF4 002601B4  38 E0 00 00 */	li r7, 0
/* 80296BF8 002601B8  38 00 00 80 */	li r0, 0x80
/* 80296BFC 002601BC  39 00 00 00 */	li r8, 0
/* 80296C00 002601C0  90 A3 01 B0 */	stw r5, 0x1b0(r3)
/* 80296C04 002601C4  38 A0 FF FF */	li r5, -1
/* 80296C08 002601C8  98 C3 01 B4 */	stb r6, 0x1b4(r3)
/* 80296C0C 002601CC  B0 E3 01 00 */	sth r7, 0x100(r3)
/* 80296C10 002601D0  98 83 01 02 */	stb r4, 0x102(r3)
/* 80296C14 002601D4  7C 09 03 A6 */	mtctr r0
.L_80296C18:
/* 80296C18 002601D8  55 00 0B FC */	rlwinm r0, r8, 1, 0xf, 0x1e
/* 80296C1C 002601DC  39 08 00 01 */	addi r8, r8, 1
/* 80296C20 002601E0  7C A3 03 2E */	sthx r5, r3, r0
/* 80296C24 002601E4  42 00 FF F4 */	bdnz .L_80296C18
/* 80296C28 002601E8  88 A3 01 B4 */	lbz r5, 0x1b4(r3)
/* 80296C2C 002601EC  38 C0 00 00 */	li r6, 0
/* 80296C30 002601F0  48 00 00 44 */	b .L_80296C74
.L_80296C34:
/* 80296C34 002601F4  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80296C38 002601F8  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 80296C3C 002601FC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80296C40 00260200  7C 84 02 15 */	add. r4, r4, r0
/* 80296C44 00260204  41 82 00 2C */	beq .L_80296C70
/* 80296C48 00260208  80 04 00 00 */	lwz r0, 0(r4)
/* 80296C4C 0026020C  88 83 01 02 */	lbz r4, 0x102(r3)
/* 80296C50 00260210  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80296C54 00260214  7C 04 00 00 */	cmpw r4, r0
/* 80296C58 00260218  40 82 00 18 */	bne .L_80296C70
/* 80296C5C 0026021C  A0 83 01 00 */	lhz r4, 0x100(r3)
/* 80296C60 00260220  38 04 00 01 */	addi r0, r4, 1
/* 80296C64 00260224  B0 03 01 00 */	sth r0, 0x100(r3)
/* 80296C68 00260228  54 80 08 3C */	slwi r0, r4, 1
/* 80296C6C 0026022C  7C C3 03 2E */	sthx r6, r3, r0
.L_80296C70:
/* 80296C70 00260230  38 C6 00 01 */	addi r6, r6, 1
.L_80296C74:
/* 80296C74 00260234  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80296C78 00260238  7C 00 28 00 */	cmpw r0, r5
/* 80296C7C 0026023C  41 80 FF B8 */	blt .L_80296C34
/* 80296C80 00260240  A0 83 01 00 */	lhz r4, 0x100(r3)
/* 80296C84 00260244  3C 00 43 30 */	lis r0, 0x4330
/* 80296C88 00260248  90 81 00 0C */	stw r4, 0xc(r1)
/* 80296C8C 0026024C  C8 42 B1 00 */	lfd f2, double_8066B480@sda21(r2)
/* 80296C90 00260250  90 01 00 08 */	stw r0, 8(r1)
/* 80296C94 00260254  C0 22 B0 F8 */	lfs f1, float_8066B478@sda21(r2)
/* 80296C98 00260258  C8 01 00 08 */	lfd f0, 8(r1)
/* 80296C9C 0026025C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80296CA0 00260260  EC 60 10 28 */	fsubs f3, f0, f2
/* 80296CA4 00260264  C8 42 B1 08 */	lfd f2, double_8066B488@sda21(r2)
/* 80296CA8 00260268  C0 02 B0 FC */	lfs f0, float_8066B47C@sda21(r2)
/* 80296CAC 0026026C  EC 63 08 24 */	fdivs f3, f3, f1
/* 80296CB0 00260270  FC 20 18 1E */	fctiwz f1, f3
/* 80296CB4 00260274  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80296CB8 00260278  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80296CBC 0026027C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80296CC0 00260280  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80296CC4 00260284  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80296CC8 00260288  EC 21 10 28 */	fsubs f1, f1, f2
/* 80296CCC 0026028C  EC 23 08 28 */	fsubs f1, f3, f1
/* 80296CD0 00260290  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80296CD4 00260294  41 82 00 08 */	beq .L_80296CDC
/* 80296CD8 00260298  38 84 00 01 */	addi r4, r4, 1
.L_80296CDC:
/* 80296CDC 0026029C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80296CE0 002602A0  98 83 01 03 */	stb r4, 0x103(r3)
/* 80296CE4 002602A4  40 82 00 0C */	bne .L_80296CF0
/* 80296CE8 002602A8  38 00 00 01 */	li r0, 1
/* 80296CEC 002602AC  98 03 01 03 */	stb r0, 0x103(r3)
.L_80296CF0:
/* 80296CF0 002602B0  38 00 00 00 */	li r0, 0
/* 80296CF4 002602B4  98 03 01 04 */	stb r0, 0x104(r3)
/* 80296CF8 002602B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80296CFC 002602BC  4E 80 00 20 */	blr 

.global func_80296D00
func_80296D00:
/* 80296D00 002602C0  88 83 01 04 */	lbz r4, 0x104(r3)
/* 80296D04 002602C4  88 03 01 03 */	lbz r0, 0x103(r3)
/* 80296D08 002602C8  38 84 00 01 */	addi r4, r4, 1
/* 80296D0C 002602CC  98 83 01 04 */	stb r4, 0x104(r3)
/* 80296D10 002602D0  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80296D14 002602D4  7C 84 07 74 */	extsb r4, r4
/* 80296D18 002602D8  7C 04 00 00 */	cmpw r4, r0
/* 80296D1C 002602DC  4D 80 00 20 */	bltlr 
/* 80296D20 002602E0  38 00 00 00 */	li r0, 0
/* 80296D24 002602E4  98 03 01 04 */	stb r0, 0x104(r3)
/* 80296D28 002602E8  4E 80 00 20 */	blr 

.global func_80296D2C
func_80296D2C:
/* 80296D2C 002602EC  88 83 01 04 */	lbz r4, 0x104(r3)
/* 80296D30 002602F0  38 04 FF FF */	addi r0, r4, -1
/* 80296D34 002602F4  98 03 01 04 */	stb r0, 0x104(r3)
/* 80296D38 002602F8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80296D3C 002602FC  7C 00 07 75 */	extsb. r0, r0
/* 80296D40 00260300  4C 80 00 20 */	bgelr 
/* 80296D44 00260304  88 83 01 03 */	lbz r4, 0x103(r3)
/* 80296D48 00260308  38 04 FF FF */	addi r0, r4, -1
/* 80296D4C 0026030C  98 03 01 04 */	stb r0, 0x104(r3)
/* 80296D50 00260310  4E 80 00 20 */	blr 

.global func_80296D54
func_80296D54:
/* 80296D54 00260314  80 C3 01 B0 */	lwz r6, 0x1b0(r3)
/* 80296D58 00260318  2C 06 00 00 */	cmpwi r6, 0
/* 80296D5C 0026031C  40 82 00 0C */	bne .L_80296D68
/* 80296D60 00260320  38 60 00 00 */	li r3, 0
/* 80296D64 00260324  4E 80 00 20 */	blr
.L_80296D68:
/* 80296D68 00260328  88 A3 01 04 */	lbz r5, 0x104(r3)
/* 80296D6C 0026032C  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 80296D70 00260330  7C A5 07 74 */	extsb r5, r5
/* 80296D74 00260334  1C A5 00 1E */	mulli r5, r5, 0x1e
/* 80296D78 00260338  7C 84 2A 14 */	add r4, r4, r5
/* 80296D7C 0026033C  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80296D80 00260340  7C 04 00 40 */	cmplw r4, r0
/* 80296D84 00260344  40 80 00 24 */	bge .L_80296DA8
/* 80296D88 00260348  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 80296D8C 0026034C  7C 03 02 AE */	lhax r0, r3, r0
/* 80296D90 00260350  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80296D94 00260354  7C 66 02 15 */	add. r3, r6, r0
/* 80296D98 00260358  41 82 00 10 */	beq .L_80296DA8
/* 80296D9C 0026035C  80 03 00 00 */	lwz r0, 0(r3)
/* 80296DA0 00260360  54 03 65 3E */	srwi r3, r0, 0x14
/* 80296DA4 00260364  4E 80 00 20 */	blr
.L_80296DA8:
/* 80296DA8 00260368  38 60 00 00 */	li r3, 0
/* 80296DAC 0026036C  4E 80 00 20 */	blr 

.global func_80296DB0
func_80296DB0:
/* 80296DB0 00260370  80 C3 01 B0 */	lwz r6, 0x1b0(r3)
/* 80296DB4 00260374  2C 06 00 00 */	cmpwi r6, 0
/* 80296DB8 00260378  40 82 00 0C */	bne .L_80296DC4
/* 80296DBC 0026037C  38 60 00 00 */	li r3, 0
/* 80296DC0 00260380  4E 80 00 20 */	blr
.L_80296DC4:
/* 80296DC4 00260384  88 A3 01 04 */	lbz r5, 0x104(r3)
/* 80296DC8 00260388  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 80296DCC 0026038C  7C A5 07 74 */	extsb r5, r5
/* 80296DD0 00260390  1C A5 00 1E */	mulli r5, r5, 0x1e
/* 80296DD4 00260394  7C 84 2A 14 */	add r4, r4, r5
/* 80296DD8 00260398  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80296DDC 0026039C  7C 04 00 40 */	cmplw r4, r0
/* 80296DE0 002603A0  40 80 00 18 */	bge .L_80296DF8
/* 80296DE4 002603A4  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 80296DE8 002603A8  7C 03 02 AE */	lhax r0, r3, r0
/* 80296DEC 002603AC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80296DF0 002603B0  7C 66 02 15 */	add. r3, r6, r0
/* 80296DF4 002603B4  4C 82 00 20 */	bnelr 
.L_80296DF8:
/* 80296DF8 002603B8  38 60 00 00 */	li r3, 0
/* 80296DFC 002603BC  4E 80 00 20 */	blr 

.global func_80296E00
func_80296E00:
/* 80296E00 002603C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296E04 002603C4  7C 08 02 A6 */	mflr r0
/* 80296E08 002603C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296E0C 002603CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80296E10 002603D0  80 C3 01 B0 */	lwz r6, 0x1b0(r3)
/* 80296E14 002603D4  2C 06 00 00 */	cmpwi r6, 0
/* 80296E18 002603D8  40 82 00 0C */	bne .L_80296E24
/* 80296E1C 002603DC  38 60 00 00 */	li r3, 0
/* 80296E20 002603E0  48 00 00 64 */	b .L_80296E84
.L_80296E24:
/* 80296E24 002603E4  88 A3 01 04 */	lbz r5, 0x104(r3)
/* 80296E28 002603E8  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 80296E2C 002603EC  7C A5 07 74 */	extsb r5, r5
/* 80296E30 002603F0  1C A5 00 1E */	mulli r5, r5, 0x1e
/* 80296E34 002603F4  7C 84 2A 14 */	add r4, r4, r5
/* 80296E38 002603F8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80296E3C 002603FC  7C 04 00 40 */	cmplw r4, r0
/* 80296E40 00260400  40 80 00 40 */	bge .L_80296E80
/* 80296E44 00260404  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 80296E48 00260408  7C 03 02 AE */	lhax r0, r3, r0
/* 80296E4C 0026040C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80296E50 00260410  7F E6 02 15 */	add. r31, r6, r0
/* 80296E54 00260414  41 82 00 2C */	beq .L_80296E80
/* 80296E58 00260418  7F E3 FB 78 */	mr r3, r31
/* 80296E5C 0026041C  4B EB EC AD */	bl func_80155B08
/* 80296E60 00260420  81 83 00 00 */	lwz r12, 0(r3)
/* 80296E64 00260424  7F E4 FB 78 */	mr r4, r31
/* 80296E68 00260428  81 8C 00 08 */	lwz r12, 8(r12)
/* 80296E6C 0026042C  7D 89 03 A6 */	mtctr r12
/* 80296E70 00260430  4E 80 04 21 */	bctrl 
/* 80296E74 00260434  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80296E78 00260438  7C 03 07 74 */	extsb r3, r0
/* 80296E7C 0026043C  48 00 00 08 */	b .L_80296E84
.L_80296E80:
/* 80296E80 00260440  38 60 00 00 */	li r3, 0
.L_80296E84:
/* 80296E84 00260444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296E88 00260448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80296E8C 0026044C  7C 08 03 A6 */	mtlr r0
/* 80296E90 00260450  38 21 00 10 */	addi r1, r1, 0x10
/* 80296E94 00260454  4E 80 00 20 */	blr 

.global func_80296E98
func_80296E98:
/* 80296E98 00260458  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80296E9C 0026045C  7C 08 02 A6 */	mflr r0
/* 80296EA0 00260460  90 01 00 44 */	stw r0, 0x44(r1)
/* 80296EA4 00260464  BF A1 00 34 */	stmw r29, 0x34(r1)
/* 80296EA8 00260468  7C 7F 1B 78 */	mr r31, r3
/* 80296EAC 0026046C  80 C3 01 B0 */	lwz r6, 0x1b0(r3)
/* 80296EB0 00260470  2C 06 00 00 */	cmpwi r6, 0
/* 80296EB4 00260474  40 82 00 0C */	bne .L_80296EC0
/* 80296EB8 00260478  38 60 00 00 */	li r3, 0
/* 80296EBC 0026047C  48 00 00 F0 */	b .L_80296FAC
.L_80296EC0:
/* 80296EC0 00260480  88 A3 01 04 */	lbz r5, 0x104(r3)
/* 80296EC4 00260484  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 80296EC8 00260488  7C A5 07 74 */	extsb r5, r5
/* 80296ECC 0026048C  1C A5 00 1E */	mulli r5, r5, 0x1e
/* 80296ED0 00260490  7C 84 2A 14 */	add r4, r4, r5
/* 80296ED4 00260494  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80296ED8 00260498  7C 04 00 40 */	cmplw r4, r0
/* 80296EDC 0026049C  40 80 00 CC */	bge .L_80296FA8
/* 80296EE0 002604A0  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 80296EE4 002604A4  7C 03 02 AE */	lhax r0, r3, r0
/* 80296EE8 002604A8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80296EEC 002604AC  7F A6 02 15 */	add. r29, r6, r0
/* 80296EF0 002604B0  41 82 00 B8 */	beq .L_80296FA8
/* 80296EF4 002604B4  7F A3 EB 78 */	mr r3, r29
/* 80296EF8 002604B8  4B EB EC 11 */	bl func_80155B08
/* 80296EFC 002604BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80296F00 002604C0  7F A4 EB 78 */	mr r4, r29
/* 80296F04 002604C4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80296F08 002604C8  7D 89 03 A6 */	mtctr r12
/* 80296F0C 002604CC  4E 80 04 21 */	bctrl 
/* 80296F10 002604D0  3F C0 80 51 */	lis r30, lbl_8050B5C4@ha
/* 80296F14 002604D4  7C 65 1B 78 */	mr r5, r3
/* 80296F18 002604D8  38 7F 01 08 */	addi r3, r31, 0x108
/* 80296F1C 002604DC  38 9E B5 C4 */	addi r4, r30, lbl_8050B5C4@l
/* 80296F20 002604E0  4C C6 31 82 */	crclr 6
/* 80296F24 002604E4  4B DA D0 95 */	bl func_80043FB8
/* 80296F28 002604E8  88 1F 01 02 */	lbz r0, 0x102(r31)
/* 80296F2C 002604EC  28 00 00 03 */	cmplwi r0, 3
/* 80296F30 002604F0  40 82 00 70 */	bne .L_80296FA0
/* 80296F34 002604F4  7F A3 EB 78 */	mr r3, r29
/* 80296F38 002604F8  4B EB EB D1 */	bl func_80155B08
/* 80296F3C 002604FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80296F40 00260500  7F A4 EB 78 */	mr r4, r29
/* 80296F44 00260504  81 8C 00 08 */	lwz r12, 8(r12)
/* 80296F48 00260508  7D 89 03 A6 */	mtctr r12
/* 80296F4C 0026050C  4E 80 04 21 */	bctrl 
/* 80296F50 00260510  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80296F54 00260514  3B DE B5 C4 */	addi r30, r30, lbl_8050B5C4@l
/* 80296F58 00260518  38 03 FF FF */	addi r0, r3, -1
/* 80296F5C 0026051C  38 7E 00 03 */	addi r3, r30, 3
/* 80296F60 00260520  38 9E 00 0C */	addi r4, r30, 0xc
/* 80296F64 00260524  20 A0 00 1E */	subfic r5, r0, 0x1e
/* 80296F68 00260528  4B E9 F2 29 */	bl func_80136190
/* 80296F6C 0026052C  7C 7D 1B 78 */	mr r29, r3
/* 80296F70 00260530  38 7F 01 08 */	addi r3, r31, 0x108
/* 80296F74 00260534  48 02 26 45 */	bl strlen
/* 80296F78 00260538  90 61 00 28 */	stw r3, 0x28(r1)
/* 80296F7C 0026053C  38 61 00 08 */	addi r3, r1, 8
/* 80296F80 00260540  38 9F 01 08 */	addi r4, r31, 0x108
/* 80296F84 00260544  48 02 B7 35 */	bl strcpy
/* 80296F88 00260548  7F A6 EB 78 */	mr r6, r29
/* 80296F8C 0026054C  38 7F 01 08 */	addi r3, r31, 0x108
/* 80296F90 00260550  38 9E 00 11 */	addi r4, r30, 0x11
/* 80296F94 00260554  38 A1 00 08 */	addi r5, r1, 8
/* 80296F98 00260558  4C C6 31 82 */	crclr 6
/* 80296F9C 0026055C  4B DA D0 1D */	bl func_80043FB8
.L_80296FA0:
/* 80296FA0 00260560  38 7F 01 08 */	addi r3, r31, 0x108
/* 80296FA4 00260564  48 00 00 08 */	b .L_80296FAC
.L_80296FA8:
/* 80296FA8 00260568  38 60 00 00 */	li r3, 0
.L_80296FAC:
/* 80296FAC 0026056C  BB A1 00 34 */	lmw r29, 0x34(r1)
/* 80296FB0 00260570  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80296FB4 00260574  7C 08 03 A6 */	mtlr r0
/* 80296FB8 00260578  38 21 00 40 */	addi r1, r1, 0x40
/* 80296FBC 0026057C  4E 80 00 20 */	blr 

.global func_80296FC0
func_80296FC0:
/* 80296FC0 00260580  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 80296FC4 00260584  7C 08 02 A6 */	mflr r0
/* 80296FC8 00260588  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 80296FCC 0026058C  BE 61 01 7C */	stmw r19, 0x17c(r1)
/* 80296FD0 00260590  7C 74 1B 78 */	mr r20, r3
/* 80296FD4 00260594  80 C3 01 B0 */	lwz r6, 0x1b0(r3)
/* 80296FD8 00260598  2C 06 00 00 */	cmpwi r6, 0
/* 80296FDC 0026059C  40 82 00 0C */	bne .L_80296FE8
/* 80296FE0 002605A0  38 60 00 00 */	li r3, 0
/* 80296FE4 002605A4  48 00 04 38 */	b .L_8029741C
.L_80296FE8:
/* 80296FE8 002605A8  88 A3 01 04 */	lbz r5, 0x104(r3)
/* 80296FEC 002605AC  A0 03 01 00 */	lhz r0, 0x100(r3)
/* 80296FF0 002605B0  7C A5 07 74 */	extsb r5, r5
/* 80296FF4 002605B4  1C A5 00 1E */	mulli r5, r5, 0x1e
/* 80296FF8 002605B8  7C 84 2A 14 */	add r4, r4, r5
/* 80296FFC 002605BC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80297000 002605C0  7C 04 00 40 */	cmplw r4, r0
/* 80297004 002605C4  40 80 04 14 */	bge .L_80297418
/* 80297008 002605C8  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 8029700C 002605CC  7C 03 02 AE */	lhax r0, r3, r0
/* 80297010 002605D0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80297014 002605D4  7E A6 02 15 */	add. r21, r6, r0
/* 80297018 002605D8  41 82 04 00 */	beq .L_80297418
/* 8029701C 002605DC  7E A3 AB 78 */	mr r3, r21
/* 80297020 002605E0  4B F2 FE 71 */	bl func_801C6E90
/* 80297024 002605E4  2C 03 00 00 */	cmpwi r3, 0
/* 80297028 002605E8  41 82 00 54 */	beq .L_8029707C
/* 8029702C 002605EC  7E A3 AB 78 */	mr r3, r21
/* 80297030 002605F0  4B EB EA D9 */	bl func_80155B08
/* 80297034 002605F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80297038 002605F8  7E A4 AB 78 */	mr r4, r21
/* 8029703C 002605FC  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80297040 00260600  7D 89 03 A6 */	mtctr r12
/* 80297044 00260604  4E 80 04 21 */	bctrl 
/* 80297048 00260608  3E A0 80 51 */	lis r21, lbl_8050B5C4@ha
/* 8029704C 0026060C  7C 60 1B 78 */	mr r0, r3
/* 80297050 00260610  3A B5 B5 C4 */	addi r21, r21, lbl_8050B5C4@l
/* 80297054 00260614  80 6D A8 70 */	lwz r3, lbl_806669F0@sda21(r13)
/* 80297058 00260618  38 95 00 16 */	addi r4, r21, 0x16
/* 8029705C 0026061C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80297060 00260620  4B E9 F3 3D */	bl func_8013639C
/* 80297064 00260624  7C 65 1B 78 */	mr r5, r3
/* 80297068 00260628  7E A4 AB 78 */	mr r4, r21
/* 8029706C 0026062C  38 74 01 2C */	addi r3, r20, 0x12c
/* 80297070 00260630  4C C6 31 82 */	crclr 6
/* 80297074 00260634  4B DD 25 8D */	bl func_80069600
/* 80297078 00260638  48 00 03 98 */	b .L_80297410
.L_8029707C:
/* 8029707C 0026063C  80 15 00 00 */	lwz r0, 0(r21)
/* 80297080 00260640  38 60 00 00 */	li r3, 0
/* 80297084 00260644  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80297088 00260648  28 00 00 09 */	cmplwi r0, 9
/* 8029708C 0026064C  40 82 00 18 */	bne .L_802970A4
/* 80297090 00260650  88 15 00 07 */	lbz r0, 7(r21)
/* 80297094 00260654  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80297098 00260658  28 00 00 03 */	cmplwi r0, 3
/* 8029709C 0026065C  40 82 00 08 */	bne .L_802970A4
/* 802970A0 00260660  38 60 00 01 */	li r3, 1
.L_802970A4:
/* 802970A4 00260664  2C 03 00 00 */	cmpwi r3, 0
/* 802970A8 00260668  41 82 00 34 */	beq .L_802970DC
/* 802970AC 0026066C  3E A0 80 51 */	lis r21, lbl_8050B5C4@ha
/* 802970B0 00260670  38 A0 00 9C */	li r5, 0x9c
/* 802970B4 00260674  3A B5 B5 C4 */	addi r21, r21, lbl_8050B5C4@l
/* 802970B8 00260678  38 75 00 03 */	addi r3, r21, 3
/* 802970BC 0026067C  38 95 00 0C */	addi r4, r21, 0xc
/* 802970C0 00260680  4B E9 F0 D1 */	bl func_80136190
/* 802970C4 00260684  7C 65 1B 78 */	mr r5, r3
/* 802970C8 00260688  7E A4 AB 78 */	mr r4, r21
/* 802970CC 0026068C  38 74 01 2C */	addi r3, r20, 0x12c
/* 802970D0 00260690  4C C6 31 82 */	crclr 6
/* 802970D4 00260694  4B DD 25 2D */	bl func_80069600
/* 802970D8 00260698  48 00 03 38 */	b .L_80297410
.L_802970DC:
/* 802970DC 0026069C  88 74 01 02 */	lbz r3, 0x102(r20)
/* 802970E0 002606A0  80 15 00 00 */	lwz r0, 0(r21)
/* 802970E4 002606A4  28 03 00 03 */	cmplwi r3, 3
/* 802970E8 002606A8  54 05 65 3E */	srwi r5, r0, 0x14
/* 802970EC 002606AC  40 82 02 C8 */	bne .L_802973B4
/* 802970F0 002606B0  82 CD A8 48 */	lwz r22, lbl_806669C8@sda21(r13)
/* 802970F4 002606B4  7E A3 AB 78 */	mr r3, r21
/* 802970F8 002606B8  4B EB EA 11 */	bl func_80155B08
/* 802970FC 002606BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80297100 002606C0  7E A4 AB 78 */	mr r4, r21
/* 80297104 002606C4  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80297108 002606C8  7D 89 03 A6 */	mtctr r12
/* 8029710C 002606CC  4E 80 04 21 */	bctrl 
/* 80297110 002606D0  7C 78 1B 78 */	mr r24, r3
/* 80297114 002606D4  7E A3 AB 78 */	mr r3, r21
/* 80297118 002606D8  4B EB E9 F1 */	bl func_80155B08
/* 8029711C 002606DC  81 83 00 00 */	lwz r12, 0(r3)
/* 80297120 002606E0  7E A4 AB 78 */	mr r4, r21
/* 80297124 002606E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80297128 002606E8  7D 89 03 A6 */	mtctr r12
/* 8029712C 002606EC  4E 80 04 21 */	bctrl 
/* 80297130 002606F0  54 77 04 3E */	clrlwi r23, r3, 0x10
/* 80297134 002606F4  7E A3 AB 78 */	mr r3, r21
/* 80297138 002606F8  4B EB E9 D1 */	bl func_80155B08
/* 8029713C 002606FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80297140 00260700  7E A4 AB 78 */	mr r4, r21
/* 80297144 00260704  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 80297148 00260708  7D 89 03 A6 */	mtctr r12
/* 8029714C 0026070C  4E 80 04 21 */	bctrl 
/* 80297150 00260710  3F 20 80 51 */	lis r25, lbl_8050B5C4@ha
/* 80297154 00260714  7C 65 1B 78 */	mr r5, r3
/* 80297158 00260718  3B 59 B5 C4 */	addi r26, r25, lbl_8050B5C4@l
/* 8029715C 0026071C  38 61 00 48 */	addi r3, r1, 0x48
/* 80297160 00260720  38 9A 00 1E */	addi r4, r26, 0x1e
/* 80297164 00260724  4C C6 31 82 */	crclr 6
/* 80297168 00260728  48 02 9E D1 */	bl sprintf
/* 8029716C 0026072C  7E C3 B3 78 */	mr r3, r22
/* 80297170 00260730  38 9A 00 21 */	addi r4, r26, 0x21
/* 80297174 00260734  57 05 04 3E */	clrlwi r5, r24, 0x10
/* 80297178 00260738  4B E9 F0 71 */	bl func_801361E8
/* 8029717C 0026073C  7C 7B 1B 78 */	mr r27, r3
/* 80297180 00260740  7E C3 B3 78 */	mr r3, r22
/* 80297184 00260744  38 9A 00 2A */	addi r4, r26, 0x2a
/* 80297188 00260748  57 05 04 3E */	clrlwi r5, r24, 0x10
/* 8029718C 0026074C  4B E9 F2 11 */	bl func_8013639C
/* 80297190 00260750  7C 65 1B 78 */	mr r5, r3
/* 80297194 00260754  7F 44 D3 78 */	mr r4, r26
/* 80297198 00260758  38 74 01 2C */	addi r3, r20, 0x12c
/* 8029719C 0026075C  4C C6 31 82 */	crclr 6
/* 802971A0 00260760  4B DD 24 61 */	bl func_80069600
/* 802971A4 00260764  38 74 01 2C */	addi r3, r20, 0x12c
/* 802971A8 00260768  48 02 24 11 */	bl strlen
/* 802971AC 0026076C  90 61 01 68 */	stw r3, 0x168(r1)
/* 802971B0 00260770  38 61 00 E8 */	addi r3, r1, 0xe8
/* 802971B4 00260774  38 94 01 2C */	addi r4, r20, 0x12c
/* 802971B8 00260778  48 02 B5 01 */	bl strcpy
/* 802971BC 0026077C  3F A0 80 51 */	lis r29, lbl_8050B598@ha
/* 802971C0 00260780  56 FC 15 BA */	rlwinm r28, r23, 2, 0x16, 0x1d
/* 802971C4 00260784  3A A1 00 E8 */	addi r21, r1, 0xe8
/* 802971C8 00260788  3A E1 00 08 */	addi r23, r1, 8
/* 802971CC 0026078C  3B E1 00 28 */	addi r31, r1, 0x28
/* 802971D0 00260790  3B BD B5 98 */	addi r29, r29, lbl_8050B598@l
/* 802971D4 00260794  3B C0 00 03 */	li r30, 3
/* 802971D8 00260798  48 00 01 B4 */	b .L_8029738C
.L_802971DC:
/* 802971DC 0026079C  7C 60 07 74 */	extsb r0, r3
/* 802971E0 002607A0  2C 00 00 24 */	cmpwi r0, 0x24
/* 802971E4 002607A4  40 82 01 78 */	bne .L_8029735C
/* 802971E8 002607A8  38 61 00 28 */	addi r3, r1, 0x28
/* 802971EC 002607AC  38 80 00 00 */	li r4, 0
/* 802971F0 002607B0  38 A0 00 20 */	li r5, 0x20
/* 802971F4 002607B4  4B D6 D1 5D */	bl memset
/* 802971F8 002607B8  8C 15 00 01 */	lbzu r0, 1(r21)
/* 802971FC 002607BC  7C 00 07 74 */	extsb r0, r0
/* 80297200 002607C0  2C 00 00 31 */	cmpwi r0, 0x31
/* 80297204 002607C4  41 82 00 10 */	beq .L_80297214
/* 80297208 002607C8  2C 00 00 32 */	cmpwi r0, 0x32
/* 8029720C 002607CC  41 82 00 94 */	beq .L_802972A0
/* 80297210 002607D0  48 00 00 E4 */	b .L_802972F4
.L_80297214:
/* 80297214 002607D4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80297218 002607D8  3A B5 00 01 */	addi r21, r21, 1
/* 8029721C 002607DC  2C 00 00 01 */	cmpwi r0, 1
/* 80297220 002607E0  41 82 00 20 */	beq .L_80297240
/* 80297224 002607E4  2C 00 00 02 */	cmpwi r0, 2
/* 80297228 002607E8  41 82 00 30 */	beq .L_80297258
/* 8029722C 002607EC  2C 00 00 03 */	cmpwi r0, 3
/* 80297230 002607F0  41 82 00 40 */	beq .L_80297270
/* 80297234 002607F4  2C 00 00 04 */	cmpwi r0, 4
/* 80297238 002607F8  41 82 00 50 */	beq .L_80297288
/* 8029723C 002607FC  48 00 00 B8 */	b .L_802972F4
.L_80297240:
/* 80297240 00260800  38 61 00 28 */	addi r3, r1, 0x28
/* 80297244 00260804  38 9A 00 36 */	addi r4, r26, 0x36
/* 80297248 00260808  38 A1 00 48 */	addi r5, r1, 0x48
/* 8029724C 0026080C  4C C6 31 82 */	crclr 6
/* 80297250 00260810  48 02 9D E9 */	bl sprintf
/* 80297254 00260814  48 00 00 A0 */	b .L_802972F4
.L_80297258:
/* 80297258 00260818  38 61 00 28 */	addi r3, r1, 0x28
/* 8029725C 0026081C  38 9A 00 36 */	addi r4, r26, 0x36
/* 80297260 00260820  38 A1 00 48 */	addi r5, r1, 0x48
/* 80297264 00260824  4C C6 31 82 */	crclr 6
/* 80297268 00260828  48 02 9D D1 */	bl sprintf
/* 8029726C 0026082C  48 00 00 88 */	b .L_802972F4
.L_80297270:
/* 80297270 00260830  38 61 00 28 */	addi r3, r1, 0x28
/* 80297274 00260834  38 9A 00 4C */	addi r4, r26, 0x4c
/* 80297278 00260838  38 A1 00 48 */	addi r5, r1, 0x48
/* 8029727C 0026083C  4C C6 31 82 */	crclr 6
/* 80297280 00260840  48 02 9D B9 */	bl sprintf
/* 80297284 00260844  48 00 00 70 */	b .L_802972F4
.L_80297288:
/* 80297288 00260848  38 61 00 28 */	addi r3, r1, 0x28
/* 8029728C 0026084C  38 9A 00 4C */	addi r4, r26, 0x4c
/* 80297290 00260850  38 A1 00 48 */	addi r5, r1, 0x48
/* 80297294 00260854  4C C6 31 82 */	crclr 6
/* 80297298 00260858  48 02 9D A1 */	bl sprintf
/* 8029729C 0026085C  48 00 00 58 */	b .L_802972F4
.L_802972A0:
/* 802972A0 00260860  38 A1 00 04 */	addi r5, r1, 4
/* 802972A4 00260864  38 9D FF FC */	addi r4, r29, -4
/* 802972A8 00260868  7F C9 03 A6 */	mtctr r30
/* 802972AC 0026086C  3A B5 00 01 */	addi r21, r21, 1
.L_802972B0:
/* 802972B0 00260870  80 64 00 04 */	lwz r3, 4(r4)
/* 802972B4 00260874  84 04 00 08 */	lwzu r0, 8(r4)
/* 802972B8 00260878  90 65 00 04 */	stw r3, 4(r5)
/* 802972BC 0026087C  94 05 00 08 */	stwu r0, 8(r5)
/* 802972C0 00260880  42 00 FF F0 */	bdnz .L_802972B0
/* 802972C4 00260884  80 04 00 04 */	lwz r0, 4(r4)
/* 802972C8 00260888  7E C3 B3 78 */	mr r3, r22
/* 802972CC 0026088C  90 05 00 04 */	stw r0, 4(r5)
/* 802972D0 00260890  57 05 04 3E */	clrlwi r5, r24, 0x10
/* 802972D4 00260894  7C 97 E0 2E */	lwzx r4, r23, r28
/* 802972D8 00260898  4B E9 EF 11 */	bl func_801361E8
/* 802972DC 0026089C  7C 60 1B 78 */	mr r0, r3
/* 802972E0 002608A0  38 61 00 28 */	addi r3, r1, 0x28
/* 802972E4 002608A4  38 9A 00 64 */	addi r4, r26, 0x64
/* 802972E8 002608A8  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 802972EC 002608AC  4C C6 31 82 */	crclr 6
/* 802972F0 002608B0  48 02 9D 49 */	bl sprintf
.L_802972F4:
/* 802972F4 002608B4  38 61 00 28 */	addi r3, r1, 0x28
/* 802972F8 002608B8  3A 60 00 00 */	li r19, 0
.L_802972FC:
/* 802972FC 002608BC  88 03 00 00 */	lbz r0, 0(r3)
/* 80297300 002608C0  3A 73 00 01 */	addi r19, r19, 1
/* 80297304 002608C4  38 63 00 01 */	addi r3, r3, 1
/* 80297308 002608C8  7C 00 07 75 */	extsb. r0, r0
/* 8029730C 002608CC  40 82 FF F0 */	bne .L_802972FC
/* 80297310 002608D0  7E A5 AB 78 */	mr r5, r21
/* 80297314 002608D4  38 61 00 68 */	addi r3, r1, 0x68
/* 80297318 002608D8  38 99 B5 C4 */	addi r4, r25, lbl_8050B5C4@l
/* 8029731C 002608DC  4C C6 31 82 */	crclr 6
/* 80297320 002608E0  48 02 9D 19 */	bl sprintf
/* 80297324 002608E4  3A B5 FF FE */	addi r21, r21, -2
/* 80297328 002608E8  7F E5 FB 78 */	mr r5, r31
/* 8029732C 002608EC  7E A3 AB 78 */	mr r3, r21
/* 80297330 002608F0  38 99 B5 C4 */	addi r4, r25, lbl_8050B5C4@l
/* 80297334 002608F4  4C C6 31 82 */	crclr 6
/* 80297338 002608F8  48 02 9D 01 */	bl sprintf
/* 8029733C 002608FC  7C 73 AA 14 */	add r3, r19, r21
/* 80297340 00260900  38 99 B5 C4 */	addi r4, r25, lbl_8050B5C4@l
/* 80297344 00260904  3A A3 FF FF */	addi r21, r3, -1
/* 80297348 00260908  38 A1 00 68 */	addi r5, r1, 0x68
/* 8029734C 0026090C  7E A3 AB 78 */	mr r3, r21
/* 80297350 00260910  4C C6 31 82 */	crclr 6
/* 80297354 00260914  48 02 9C E5 */	bl sprintf
/* 80297358 00260918  48 00 00 34 */	b .L_8029738C
.L_8029735C:
/* 8029735C 0026091C  2C 00 00 81 */	cmpwi r0, 0x81
/* 80297360 00260920  41 80 00 0C */	blt .L_8029736C
/* 80297364 00260924  2C 00 00 9F */	cmpwi r0, 0x9f
/* 80297368 00260928  40 81 00 18 */	ble .L_80297380
.L_8029736C:
/* 8029736C 0026092C  7C 60 07 74 */	extsb r0, r3
/* 80297370 00260930  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 80297374 00260934  41 80 00 14 */	blt .L_80297388
/* 80297378 00260938  2C 00 00 EF */	cmpwi r0, 0xef
/* 8029737C 0026093C  41 81 00 0C */	bgt .L_80297388
.L_80297380:
/* 80297380 00260940  3A B5 00 02 */	addi r21, r21, 2
/* 80297384 00260944  48 00 00 08 */	b .L_8029738C
.L_80297388:
/* 80297388 00260948  3A B5 00 01 */	addi r21, r21, 1
.L_8029738C:
/* 8029738C 0026094C  88 75 00 00 */	lbz r3, 0(r21)
/* 80297390 00260950  7C 60 07 75 */	extsb. r0, r3
/* 80297394 00260954  40 82 FE 48 */	bne .L_802971DC
/* 80297398 00260958  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8029739C 0026095C  48 02 22 1D */	bl strlen
/* 802973A0 00260960  90 74 01 AC */	stw r3, 0x1ac(r20)
/* 802973A4 00260964  38 74 01 2C */	addi r3, r20, 0x12c
/* 802973A8 00260968  38 81 00 E8 */	addi r4, r1, 0xe8
/* 802973AC 0026096C  48 02 B3 0D */	bl strcpy
/* 802973B0 00260970  48 00 00 60 */	b .L_80297410
.L_802973B4:
/* 802973B4 00260974  38 03 00 FC */	addi r0, r3, 0xfc
/* 802973B8 00260978  82 6D B1 8C */	lwz r19, lbl_8066730C@sda21(r13)
/* 802973BC 0026097C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802973C0 00260980  28 00 00 05 */	cmplwi r0, 5
/* 802973C4 00260984  40 81 00 0C */	ble .L_802973D0
/* 802973C8 00260988  28 03 00 02 */	cmplwi r3, 2
/* 802973CC 0026098C  40 82 00 08 */	bne .L_802973D4
.L_802973D0:
/* 802973D0 00260990  82 6D B1 88 */	lwz r19, lbl_80667308@sda21(r13)
.L_802973D4:
/* 802973D4 00260994  3E A0 80 51 */	lis r21, lbl_8050B5C4@ha
/* 802973D8 00260998  80 6D A8 5C */	lwz r3, lbl_806669DC@sda21(r13)
/* 802973DC 0026099C  3A B5 B5 C4 */	addi r21, r21, lbl_8050B5C4@l
/* 802973E0 002609A0  38 95 00 16 */	addi r4, r21, 0x16
/* 802973E4 002609A4  4B E9 EE 71 */	bl func_80136254
/* 802973E8 002609A8  7C 60 1B 78 */	mr r0, r3
/* 802973EC 002609AC  7E 63 9B 78 */	mr r3, r19
/* 802973F0 002609B0  38 95 00 16 */	addi r4, r21, 0x16
/* 802973F4 002609B4  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802973F8 002609B8  4B E9 EF A5 */	bl func_8013639C
/* 802973FC 002609BC  7C 65 1B 78 */	mr r5, r3
/* 80297400 002609C0  7E A4 AB 78 */	mr r4, r21
/* 80297404 002609C4  38 74 01 2C */	addi r3, r20, 0x12c
/* 80297408 002609C8  4C C6 31 82 */	crclr 6
/* 8029740C 002609CC  4B DD 21 F5 */	bl func_80069600
.L_80297410:
/* 80297410 002609D0  38 74 01 2C */	addi r3, r20, 0x12c
/* 80297414 002609D4  48 00 00 08 */	b .L_8029741C
.L_80297418:
/* 80297418 002609D8  38 60 00 00 */	li r3, 0
.L_8029741C:
/* 8029741C 002609DC  BA 61 01 7C */	lmw r19, 0x17c(r1)
/* 80297420 002609E0  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 80297424 002609E4  7C 08 03 A6 */	mtlr r0
/* 80297428 002609E8  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8029742C 002609EC  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8050B550
lbl_8050B550:
	.asciz "percent_E"
	.balign 4

.global lbl_8050B55C
lbl_8050B55C:
	.asciz "percent_D"
	.balign 4

.global lbl_8050B568
lbl_8050B568:
	.asciz "percent_C"
	.balign 4

.global lbl_8050B574
lbl_8050B574:
	.asciz "percent_B"
	.balign 4

.global lbl_8050B580
lbl_8050B580:
	.asciz "percent_A"
	.balign 4

.global lbl_8050B58C
lbl_8050B58C:
	.asciz "percent_S"
	.balign 4


.global lbl_8050B598
lbl_8050B598:
	.4byte lbl_8066B490
	.4byte lbl_8050B550
	.4byte lbl_8050B55C
	.4byte lbl_8050B568
	.4byte lbl_8050B574
	.4byte lbl_8050B580
	.4byte lbl_8050B58C


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066B478
float_8066B478:
	.float 30 #0x41F00000


.global float_8066B47C
float_8066B47C:
	.float 0


.global double_8066B480
double_8066B480:
	.8byte 0x4330000000000000 #unsigned int to float constant

.global double_8066B488
double_8066B488:
	.8byte 0x4330000080000000 #signed int to float constant
.global lbl_8066B490
lbl_8066B490:
	.4byte 0


.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80019C20
lbl_80019C20:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019C28
lbl_80019C28:
	.4byte 0x000A0000
	.4byte 0

.global lbl_80019C30
lbl_80019C30:
	.4byte 0x08080000
	.4byte 0

.global lbl_80019C38
lbl_80019C38:
	.4byte 0x18080000
	.4byte 0

.global lbl_80019C40
lbl_80019C40:
	.4byte 0x68080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_80296BB0
	.4byte 0x00000040
	.4byte lbl_80019C20
	.4byte func_80296BF0
	.4byte 0x00000110
	.4byte lbl_80019C28
	.4byte func_80296E00
	.4byte 0x00000098
	.4byte lbl_80019C30
	.4byte func_80296E98
	.4byte 0x00000128
	.4byte lbl_80019C38
	.4byte func_80296FC0
	.4byte 0x00000470
	.4byte lbl_80019C40