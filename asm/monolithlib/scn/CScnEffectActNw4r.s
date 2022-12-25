.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8049B994
func_8049B994:
/* 8049B994 00464F54  3C 80 80 57 */	lis r4, __vt__CScnEffectActNw4r@ha
/* 8049B998 00464F58  38 00 00 00 */	li r0, 0
/* 8049B99C 00464F5C  38 84 23 20 */	addi r4, r4, __vt__CScnEffectActNw4r@l
/* 8049B9A0 00464F60  90 83 00 00 */	stw r4, 0(r3)
/* 8049B9A4 00464F64  90 03 01 88 */	stw r0, 0x188(r3)
/* 8049B9A8 00464F68  4E 80 00 20 */	blr 

.global func_8049B9AC
func_8049B9AC:
/* 8049B9AC 00464F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049B9B0 00464F70  7C 08 02 A6 */	mflr r0
/* 8049B9B4 00464F74  2C 03 00 00 */	cmpwi r3, 0
/* 8049B9B8 00464F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049B9BC 00464F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049B9C0 00464F80  7C 7F 1B 78 */	mr r31, r3
/* 8049B9C4 00464F84  41 82 00 10 */	beq lbl_8049B9D4
/* 8049B9C8 00464F88  2C 04 00 00 */	cmpwi r4, 0
/* 8049B9CC 00464F8C  40 81 00 08 */	ble lbl_8049B9D4
/* 8049B9D0 00464F90  4B F9 92 5D */	bl __dl__FPv
lbl_8049B9D4:
/* 8049B9D4 00464F94  7F E3 FB 78 */	mr r3, r31
/* 8049B9D8 00464F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049B9DC 00464F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049B9E0 00464FA0  7C 08 03 A6 */	mtlr r0
/* 8049B9E4 00464FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8049B9E8 00464FA8  4E 80 00 20 */	blr 

.global func_8049B9EC
func_8049B9EC:
/* 8049B9EC 00464FAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049B9F0 00464FB0  7C 08 02 A6 */	mflr r0
/* 8049B9F4 00464FB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049B9F8 00464FB8  38 00 00 00 */	li r0, 0
/* 8049B9FC 00464FBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049BA00 00464FC0  7C 7F 1B 78 */	mr r31, r3
/* 8049BA04 00464FC4  90 83 00 04 */	stw r4, 4(r3)
/* 8049BA08 00464FC8  90 03 01 88 */	stw r0, 0x188(r3)
/* 8049BA0C 00464FCC  38 61 00 0C */	addi r3, r1, 0xc
/* 8049BA10 00464FD0  80 04 14 6C */	lwz r0, 0x146c(r4)
/* 8049BA14 00464FD4  38 80 00 00 */	li r4, 0
/* 8049BA18 00464FD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049BA1C 00464FDC  4B F3 DC 91 */	bl GetResNode__Q34nw4r3g3d6ResMdlCFi
/* 8049BA20 00464FE0  90 61 00 08 */	stw r3, 8(r1)
/* 8049BA24 00464FE4  7F E3 FB 78 */	mr r3, r31
/* 8049BA28 00464FE8  38 81 00 08 */	addi r4, r1, 8
/* 8049BA2C 00464FEC  48 00 00 2D */	bl func_8049BA58
/* 8049BA30 00464FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049BA34 00464FF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049BA38 00464FF8  7C 08 03 A6 */	mtlr r0
/* 8049BA3C 00464FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8049BA40 00465000  4E 80 00 20 */	blr 

.global func_8049BA44
func_8049BA44:
/* 8049BA44 00465004  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BA48 00465008  81 83 00 00 */	lwz r12, 0(r3)
/* 8049BA4C 0046500C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8049BA50 00465010  7D 89 03 A6 */	mtctr r12
/* 8049BA54 00465014  4E 80 04 20 */	bctr 

.global func_8049BA58
func_8049BA58:
/* 8049BA58 00465018  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049BA5C 0046501C  7C 08 02 A6 */	mflr r0
/* 8049BA60 00465020  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049BA64 00465024  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8049BA68 00465028  7C 7E 1B 78 */	mr r30, r3
/* 8049BA6C 0046502C  7C 9F 23 78 */	mr r31, r4
/* 8049BA70 00465030  80 04 00 00 */	lwz r0, 0(r4)
/* 8049BA74 00465034  2C 00 00 00 */	cmpwi r0, 0
/* 8049BA78 00465038  41 82 04 18 */	beq lbl_8049BE90
/* 8049BA7C 0046503C  40 82 00 28 */	bne lbl_8049BAA4
/* 8049BA80 00465040  3C 60 80 57 */	lis r3, lbl_805719DC@ha
/* 8049BA84 00465044  3C A0 80 57 */	lis r5, lbl_805719C0@ha
/* 8049BA88 00465048  38 63 19 DC */	addi r3, r3, lbl_805719DC@l
/* 8049BA8C 0046504C  38 80 00 2C */	li r4, 0x2c
/* 8049BA90 00465050  38 A5 19 C0 */	addi r5, r5, lbl_805719C0@l
/* 8049BA94 00465054  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BA98 00465058  38 ED A1 D4 */	addi r7, r13, lbl_80666354@sda21
/* 8049BA9C 0046505C  4C C6 31 82 */	crclr 6
/* 8049BAA0 00465060  4B F3 BA E5 */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BAA4:
/* 8049BAA4 00465064  83 9F 00 00 */	lwz r28, 0(r31)
/* 8049BAA8 00465068  80 1C 00 08 */	lwz r0, 8(r28)
/* 8049BAAC 0046506C  2C 00 00 00 */	cmpwi r0, 0
/* 8049BAB0 00465070  41 82 00 0C */	beq lbl_8049BABC
/* 8049BAB4 00465074  7C 7C 02 14 */	add r3, r28, r0
/* 8049BAB8 00465078  48 00 00 08 */	b lbl_8049BAC0
lbl_8049BABC:
/* 8049BABC 0046507C  38 60 00 00 */	li r3, 0
lbl_8049BAC0:
/* 8049BAC0 00465080  4B E1 DA F9 */	bl strlen
/* 8049BAC4 00465084  28 03 00 05 */	cmplwi r3, 5
/* 8049BAC8 00465088  41 80 02 C8 */	blt lbl_8049BD90
/* 8049BACC 0046508C  2C 1C 00 00 */	cmpwi r28, 0
/* 8049BAD0 00465090  40 82 00 28 */	bne lbl_8049BAF8
/* 8049BAD4 00465094  3C 60 80 57 */	lis r3, lbl_805719DC@ha
/* 8049BAD8 00465098  3C A0 80 57 */	lis r5, lbl_805719C0@ha
/* 8049BADC 0046509C  38 63 19 DC */	addi r3, r3, lbl_805719DC@l
/* 8049BAE0 004650A0  38 80 00 2C */	li r4, 0x2c
/* 8049BAE4 004650A4  38 A5 19 C0 */	addi r5, r5, lbl_805719C0@l
/* 8049BAE8 004650A8  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BAEC 004650AC  38 ED A1 D4 */	addi r7, r13, lbl_80666354@sda21
/* 8049BAF0 004650B0  4C C6 31 82 */	crclr 6
/* 8049BAF4 004650B4  4B F3 BA 91 */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BAF8:
/* 8049BAF8 004650B8  83 7F 00 00 */	lwz r27, 0(r31)
/* 8049BAFC 004650BC  80 1B 00 08 */	lwz r0, 8(r27)
/* 8049BB00 004650C0  2C 00 00 00 */	cmpwi r0, 0
/* 8049BB04 004650C4  41 82 00 0C */	beq lbl_8049BB10
/* 8049BB08 004650C8  7F 9B 02 14 */	add r28, r27, r0
/* 8049BB0C 004650CC  48 00 00 08 */	b lbl_8049BB14
lbl_8049BB10:
/* 8049BB10 004650D0  3B 80 00 00 */	li r28, 0
lbl_8049BB14:
/* 8049BB14 004650D4  83 AD A1 B8 */	lwz r29, lbl_80666338@sda21(r13)
/* 8049BB18 004650D8  7F A3 EB 78 */	mr r3, r29
/* 8049BB1C 004650DC  4B E1 DA 9D */	bl strlen
/* 8049BB20 004650E0  7C 65 1B 78 */	mr r5, r3
/* 8049BB24 004650E4  7F 83 E3 78 */	mr r3, r28
/* 8049BB28 004650E8  7F A4 EB 78 */	mr r4, r29
/* 8049BB2C 004650EC  4B E2 2D 01 */	bl memcmp
/* 8049BB30 004650F0  2C 03 00 00 */	cmpwi r3, 0
/* 8049BB34 004650F4  40 82 02 5C */	bne lbl_8049BD90
/* 8049BB38 004650F8  3B 40 00 01 */	li r26, 1
/* 8049BB3C 004650FC  3B 20 00 02 */	li r25, 2
/* 8049BB40 00465100  3F 80 80 57 */	lis r28, lbl_805719DC@ha
/* 8049BB44 00465104  3F A0 80 57 */	lis r29, lbl_805719C0@ha
lbl_8049BB48:
/* 8049BB48 00465108  2C 1B 00 00 */	cmpwi r27, 0
/* 8049BB4C 0046510C  40 82 00 20 */	bne lbl_8049BB6C
/* 8049BB50 00465110  38 7C 19 DC */	addi r3, r28, lbl_805719DC@l
/* 8049BB54 00465114  38 BD 19 C0 */	addi r5, r29, lbl_805719C0@l
/* 8049BB58 00465118  38 80 00 2C */	li r4, 0x2c
/* 8049BB5C 0046511C  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BB60 00465120  38 ED A1 D4 */	addi r7, r13, lbl_80666354@sda21
/* 8049BB64 00465124  4C C6 31 82 */	crclr 6
/* 8049BB68 00465128  4B F3 BA 1D */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BB6C:
/* 8049BB6C 0046512C  83 7F 00 00 */	lwz r27, 0(r31)
/* 8049BB70 00465130  80 1B 00 08 */	lwz r0, 8(r27)
/* 8049BB74 00465134  2C 00 00 00 */	cmpwi r0, 0
/* 8049BB78 00465138  41 82 00 0C */	beq lbl_8049BB84
/* 8049BB7C 0046513C  7C 7B 02 14 */	add r3, r27, r0
/* 8049BB80 00465140  48 00 00 08 */	b lbl_8049BB88
lbl_8049BB84:
/* 8049BB84 00465144  38 60 00 00 */	li r3, 0
lbl_8049BB88:
/* 8049BB88 00465148  7C 03 C8 AE */	lbzx r0, r3, r25
/* 8049BB8C 0046514C  7C 00 07 74 */	extsb r0, r0
/* 8049BB90 00465150  2C 00 00 30 */	cmpwi r0, 0x30
/* 8049BB94 00465154  41 80 00 54 */	blt lbl_8049BBE8
/* 8049BB98 00465158  2C 1B 00 00 */	cmpwi r27, 0
/* 8049BB9C 0046515C  40 82 00 20 */	bne lbl_8049BBBC
/* 8049BBA0 00465160  38 7C 19 DC */	addi r3, r28, lbl_805719DC@l
/* 8049BBA4 00465164  38 BD 19 C0 */	addi r5, r29, lbl_805719C0@l
/* 8049BBA8 00465168  38 80 00 2C */	li r4, 0x2c
/* 8049BBAC 0046516C  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BBB0 00465170  38 ED A1 D4 */	addi r7, r13, lbl_80666354@sda21
/* 8049BBB4 00465174  4C C6 31 82 */	crclr 6
/* 8049BBB8 00465178  4B F3 B9 CD */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BBBC:
/* 8049BBBC 0046517C  83 7F 00 00 */	lwz r27, 0(r31)
/* 8049BBC0 00465180  80 1B 00 08 */	lwz r0, 8(r27)
/* 8049BBC4 00465184  2C 00 00 00 */	cmpwi r0, 0
/* 8049BBC8 00465188  41 82 00 0C */	beq lbl_8049BBD4
/* 8049BBCC 0046518C  7C 7B 02 14 */	add r3, r27, r0
/* 8049BBD0 00465190  48 00 00 08 */	b lbl_8049BBD8
lbl_8049BBD4:
/* 8049BBD4 00465194  38 60 00 00 */	li r3, 0
lbl_8049BBD8:
/* 8049BBD8 00465198  7C 03 C8 AE */	lbzx r0, r3, r25
/* 8049BBDC 0046519C  7C 00 07 74 */	extsb r0, r0
/* 8049BBE0 004651A0  2C 00 00 39 */	cmpwi r0, 0x39
/* 8049BBE4 004651A4  40 81 00 0C */	ble lbl_8049BBF0
lbl_8049BBE8:
/* 8049BBE8 004651A8  3B 40 00 00 */	li r26, 0
/* 8049BBEC 004651AC  48 00 00 10 */	b lbl_8049BBFC
lbl_8049BBF0:
/* 8049BBF0 004651B0  3B 39 00 01 */	addi r25, r25, 1
/* 8049BBF4 004651B4  28 19 00 05 */	cmplwi r25, 5
/* 8049BBF8 004651B8  41 80 FF 50 */	blt lbl_8049BB48
lbl_8049BBFC:
/* 8049BBFC 004651BC  2C 1A 00 00 */	cmpwi r26, 0
/* 8049BC00 004651C0  41 82 01 90 */	beq lbl_8049BD90
/* 8049BC04 004651C4  2C 1B 00 00 */	cmpwi r27, 0
/* 8049BC08 004651C8  40 82 00 20 */	bne lbl_8049BC28
/* 8049BC0C 004651CC  3C 60 80 53 */	lis r3, lbl_8052CE48@ha
/* 8049BC10 004651D0  3C A0 80 53 */	lis r5, lbl_8052CE28@ha
/* 8049BC14 004651D4  38 63 CE 48 */	addi r3, r3, lbl_8052CE48@l
/* 8049BC18 004651D8  38 80 00 53 */	li r4, 0x53
/* 8049BC1C 004651DC  38 A5 CE 28 */	addi r5, r5, lbl_8052CE28@l
/* 8049BC20 004651E0  4C C6 31 82 */	crclr 6
/* 8049BC24 004651E4  4B F3 B9 61 */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BC28:
/* 8049BC28 004651E8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049BC2C 004651EC  80 9F 00 00 */	lwz r4, 0(r31)
/* 8049BC30 004651F0  80 63 14 7C */	lwz r3, 0x147c(r3)
/* 8049BC34 004651F4  2C 04 00 00 */	cmpwi r4, 0
/* 8049BC38 004651F8  80 A3 00 EC */	lwz r5, 0xec(r3)
/* 8049BC3C 004651FC  41 82 00 0C */	beq lbl_8049BC48
/* 8049BC40 00465200  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8049BC44 00465204  48 00 00 08 */	b lbl_8049BC4C
lbl_8049BC48:
/* 8049BC48 00465208  38 60 00 00 */	li r3, 0
lbl_8049BC4C:
/* 8049BC4C 0046520C  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 8049BC50 00465210  1C 83 00 30 */	mulli r4, r3, 0x30
/* 8049BC54 00465214  54 00 10 3A */	slwi r0, r0, 2
/* 8049BC58 00465218  7C 7E 02 14 */	add r3, r30, r0
/* 8049BC5C 0046521C  7C 05 22 14 */	add r0, r5, r4
/* 8049BC60 00465220  90 03 00 08 */	stw r0, 8(r3)
/* 8049BC64 00465224  80 1F 00 00 */	lwz r0, 0(r31)
/* 8049BC68 00465228  2C 00 00 00 */	cmpwi r0, 0
/* 8049BC6C 0046522C  40 82 00 28 */	bne lbl_8049BC94
/* 8049BC70 00465230  3C 60 80 57 */	lis r3, lbl_805719DC@ha
/* 8049BC74 00465234  3C A0 80 57 */	lis r5, lbl_805719C0@ha
/* 8049BC78 00465238  38 63 19 DC */	addi r3, r3, lbl_805719DC@l
/* 8049BC7C 0046523C  38 80 00 2C */	li r4, 0x2c
/* 8049BC80 00465240  38 A5 19 C0 */	addi r5, r5, lbl_805719C0@l
/* 8049BC84 00465244  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BC88 00465248  38 ED A1 D4 */	addi r7, r13, lbl_80666354@sda21
/* 8049BC8C 0046524C  4C C6 31 82 */	crclr 6
/* 8049BC90 00465250  4B F3 B8 F5 */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BC94:
/* 8049BC94 00465254  80 7F 00 00 */	lwz r3, 0(r31)
/* 8049BC98 00465258  80 03 00 08 */	lwz r0, 8(r3)
/* 8049BC9C 0046525C  2C 00 00 00 */	cmpwi r0, 0
/* 8049BCA0 00465260  41 82 00 0C */	beq lbl_8049BCAC
/* 8049BCA4 00465264  7F 83 02 14 */	add r28, r3, r0
/* 8049BCA8 00465268  48 00 00 08 */	b lbl_8049BCB0
lbl_8049BCAC:
/* 8049BCAC 0046526C  3B 80 00 00 */	li r28, 0
lbl_8049BCB0:
/* 8049BCB0 00465270  2C 03 00 00 */	cmpwi r3, 0
/* 8049BCB4 00465274  40 82 00 28 */	bne lbl_8049BCDC
/* 8049BCB8 00465278  3C 60 80 57 */	lis r3, lbl_805719DC@ha
/* 8049BCBC 0046527C  3C A0 80 57 */	lis r5, lbl_805719C0@ha
/* 8049BCC0 00465280  38 63 19 DC */	addi r3, r3, lbl_805719DC@l
/* 8049BCC4 00465284  38 80 00 2C */	li r4, 0x2c
/* 8049BCC8 00465288  38 A5 19 C0 */	addi r5, r5, lbl_805719C0@l
/* 8049BCCC 0046528C  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BCD0 00465290  38 ED A1 D4 */	addi r7, r13, lbl_80666354@sda21
/* 8049BCD4 00465294  4C C6 31 82 */	crclr 6
/* 8049BCD8 00465298  4B F3 B8 AD */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BCDC:
/* 8049BCDC 0046529C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8049BCE0 004652A0  80 03 00 08 */	lwz r0, 8(r3)
/* 8049BCE4 004652A4  2C 00 00 00 */	cmpwi r0, 0
/* 8049BCE8 004652A8  41 82 00 0C */	beq lbl_8049BCF4
/* 8049BCEC 004652AC  7F A3 02 14 */	add r29, r3, r0
/* 8049BCF0 004652B0  48 00 00 08 */	b lbl_8049BCF8
lbl_8049BCF4:
/* 8049BCF4 004652B4  3B A0 00 00 */	li r29, 0
lbl_8049BCF8:
/* 8049BCF8 004652B8  2C 03 00 00 */	cmpwi r3, 0
/* 8049BCFC 004652BC  40 82 00 28 */	bne lbl_8049BD24
/* 8049BD00 004652C0  3C 60 80 57 */	lis r3, lbl_805719DC@ha
/* 8049BD04 004652C4  3C A0 80 57 */	lis r5, lbl_805719C0@ha
/* 8049BD08 004652C8  38 63 19 DC */	addi r3, r3, lbl_805719DC@l
/* 8049BD0C 004652CC  38 80 00 2C */	li r4, 0x2c
/* 8049BD10 004652D0  38 A5 19 C0 */	addi r5, r5, lbl_805719C0@l
/* 8049BD14 004652D4  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BD18 004652D8  38 ED A1 D4 */	addi r7, r13, lbl_80666354@sda21
/* 8049BD1C 004652DC  4C C6 31 82 */	crclr 6
/* 8049BD20 004652E0  4B F3 B8 65 */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BD24:
/* 8049BD24 004652E4  81 1F 00 00 */	lwz r8, 0(r31)
/* 8049BD28 004652E8  88 1D 00 02 */	lbz r0, 2(r29)
/* 8049BD2C 004652EC  80 E8 00 08 */	lwz r7, 8(r8)
/* 8049BD30 004652F0  7C 03 07 74 */	extsb r3, r0
/* 8049BD34 004652F4  88 9C 00 04 */	lbz r4, 4(r28)
/* 8049BD38 004652F8  38 03 FF D0 */	addi r0, r3, -48
/* 8049BD3C 004652FC  2C 07 00 00 */	cmpwi r7, 0
/* 8049BD40 00465300  1C A0 00 64 */	mulli r5, r0, 0x64
/* 8049BD44 00465304  7C 86 07 74 */	extsb r6, r4
/* 8049BD48 00465308  41 82 00 0C */	beq lbl_8049BD54
/* 8049BD4C 0046530C  7C 68 3A 14 */	add r3, r8, r7
/* 8049BD50 00465310  48 00 00 08 */	b lbl_8049BD58
lbl_8049BD54:
/* 8049BD54 00465314  38 60 00 00 */	li r3, 0
lbl_8049BD58:
/* 8049BD58 00465318  88 63 00 03 */	lbz r3, 3(r3)
/* 8049BD5C 0046531C  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 8049BD60 00465320  7C 63 07 74 */	extsb r3, r3
/* 8049BD64 00465324  38 63 FF D0 */	addi r3, r3, -48
/* 8049BD68 00465328  54 00 08 3C */	slwi r0, r0, 1
/* 8049BD6C 0046532C  1C 83 00 0A */	mulli r4, r3, 0xa
/* 8049BD70 00465330  7C 7E 02 14 */	add r3, r30, r0
/* 8049BD74 00465334  7C 05 22 14 */	add r0, r5, r4
/* 8049BD78 00465338  7C 80 32 14 */	add r4, r0, r6
/* 8049BD7C 0046533C  38 04 FF D0 */	addi r0, r4, -48
/* 8049BD80 00465340  B0 03 01 08 */	sth r0, 0x108(r3)
/* 8049BD84 00465344  80 7E 01 88 */	lwz r3, 0x188(r30)
/* 8049BD88 00465348  38 03 00 01 */	addi r0, r3, 1
/* 8049BD8C 0046534C  90 1E 01 88 */	stw r0, 0x188(r30)
lbl_8049BD90:
/* 8049BD90 00465350  80 1F 00 00 */	lwz r0, 0(r31)
/* 8049BD94 00465354  2C 00 00 00 */	cmpwi r0, 0
/* 8049BD98 00465358  40 82 00 28 */	bne lbl_8049BDC0
/* 8049BD9C 0046535C  3C 60 80 57 */	lis r3, lbl_80572098@ha
/* 8049BDA0 00465360  3C A0 80 57 */	lis r5, lbl_8057207C@ha
/* 8049BDA4 00465364  38 63 20 98 */	addi r3, r3, lbl_80572098@l
/* 8049BDA8 00465368  38 80 00 2C */	li r4, 0x2c
/* 8049BDAC 0046536C  38 A5 20 7C */	addi r5, r5, lbl_8057207C@l
/* 8049BDB0 00465370  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BDB4 00465374  38 ED A1 D0 */	addi r7, r13, lbl_80666350@sda21
/* 8049BDB8 00465378  4C C6 31 82 */	crclr 6
/* 8049BDBC 0046537C  4B F3 B7 C9 */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BDC0:
/* 8049BDC0 00465380  80 7F 00 00 */	lwz r3, 0(r31)
/* 8049BDC4 00465384  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8049BDC8 00465388  2C 00 00 00 */	cmpwi r0, 0
/* 8049BDCC 0046538C  41 82 00 30 */	beq lbl_8049BDFC
/* 8049BDD0 00465390  7F 63 02 14 */	add r27, r3, r0
/* 8049BDD4 00465394  57 60 07 BF */	clrlwi. r0, r27, 0x1e
/* 8049BDD8 00465398  41 82 00 28 */	beq lbl_8049BE00
/* 8049BDDC 0046539C  3C 60 80 57 */	lis r3, lbl_80572068@ha
/* 8049BDE0 004653A0  3C A0 80 57 */	lis r5, lbl_80572040@ha
/* 8049BDE4 004653A4  38 63 20 68 */	addi r3, r3, lbl_80572068@l
/* 8049BDE8 004653A8  38 80 00 2C */	li r4, 0x2c
/* 8049BDEC 004653AC  38 A5 20 40 */	addi r5, r5, lbl_80572040@l
/* 8049BDF0 004653B0  4C C6 31 82 */	crclr 6
/* 8049BDF4 004653B4  4B F3 B7 91 */	bl Panic__Q24nw4r2dbFPCciPCce
/* 8049BDF8 004653B8  48 00 00 08 */	b lbl_8049BE00
lbl_8049BDFC:
/* 8049BDFC 004653BC  3B 60 00 00 */	li r27, 0
lbl_8049BE00:
/* 8049BE00 004653C0  93 61 00 0C */	stw r27, 0xc(r1)
/* 8049BE04 004653C4  7F C3 F3 78 */	mr r3, r30
/* 8049BE08 004653C8  38 81 00 0C */	addi r4, r1, 0xc
/* 8049BE0C 004653CC  4B FF FC 4D */	bl func_8049BA58
/* 8049BE10 004653D0  80 1F 00 00 */	lwz r0, 0(r31)
/* 8049BE14 004653D4  2C 00 00 00 */	cmpwi r0, 0
/* 8049BE18 004653D8  40 82 00 28 */	bne lbl_8049BE40
/* 8049BE1C 004653DC  3C 60 80 57 */	lis r3, lbl_80572098@ha
/* 8049BE20 004653E0  3C A0 80 57 */	lis r5, lbl_8057207C@ha
/* 8049BE24 004653E4  38 63 20 98 */	addi r3, r3, lbl_80572098@l
/* 8049BE28 004653E8  38 80 00 2C */	li r4, 0x2c
/* 8049BE2C 004653EC  38 A5 20 7C */	addi r5, r5, lbl_8057207C@l
/* 8049BE30 004653F0  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 8049BE34 004653F4  38 ED A1 D0 */	addi r7, r13, lbl_80666350@sda21
/* 8049BE38 004653F8  4C C6 31 82 */	crclr 6
/* 8049BE3C 004653FC  4B F3 B7 49 */	bl Panic__Q24nw4r2dbFPCciPCce
lbl_8049BE40:
/* 8049BE40 00465400  80 7F 00 00 */	lwz r3, 0(r31)
/* 8049BE44 00465404  80 03 00 60 */	lwz r0, 0x60(r3)
/* 8049BE48 00465408  2C 00 00 00 */	cmpwi r0, 0
/* 8049BE4C 0046540C  41 82 00 30 */	beq lbl_8049BE7C
/* 8049BE50 00465410  7F 63 02 14 */	add r27, r3, r0
/* 8049BE54 00465414  57 60 07 BF */	clrlwi. r0, r27, 0x1e
/* 8049BE58 00465418  41 82 00 28 */	beq lbl_8049BE80
/* 8049BE5C 0046541C  3C 60 80 57 */	lis r3, lbl_80572068@ha
/* 8049BE60 00465420  3C A0 80 57 */	lis r5, lbl_80572040@ha
/* 8049BE64 00465424  38 63 20 68 */	addi r3, r3, lbl_80572068@l
/* 8049BE68 00465428  38 80 00 2C */	li r4, 0x2c
/* 8049BE6C 0046542C  38 A5 20 40 */	addi r5, r5, lbl_80572040@l
/* 8049BE70 00465430  4C C6 31 82 */	crclr 6
/* 8049BE74 00465434  4B F3 B7 11 */	bl Panic__Q24nw4r2dbFPCciPCce
/* 8049BE78 00465438  48 00 00 08 */	b lbl_8049BE80
lbl_8049BE7C:
/* 8049BE7C 0046543C  3B 60 00 00 */	li r27, 0
lbl_8049BE80:
/* 8049BE80 00465440  93 61 00 08 */	stw r27, 8(r1)
/* 8049BE84 00465444  7F C3 F3 78 */	mr r3, r30
/* 8049BE88 00465448  38 81 00 08 */	addi r4, r1, 8
/* 8049BE8C 0046544C  4B FF FB CD */	bl func_8049BA58
lbl_8049BE90:
/* 8049BE90 00465450  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8049BE94 00465454  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049BE98 00465458  7C 08 03 A6 */	mtlr r0
/* 8049BE9C 0046545C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049BEA0 00465460  4E 80 00 20 */	blr 

.global func_8049BEA4
func_8049BEA4:
/* 8049BEA4 00465464  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BEA8 00465468  4B FF 9F B8 */	b func_80495E60

.global func_8049BEAC
func_8049BEAC:
/* 8049BEAC 0046546C  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BEB0 00465470  4B FE 8F AC */	b func_80484E5C

.global func_8049BEB4
func_8049BEB4:
/* 8049BEB4 00465474  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BEB8 00465478  4B FE 7A 24 */	b func_804838DC

.global func_8049BEBC
func_8049BEBC:
/* 8049BEBC 0046547C  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BEC0 00465480  81 83 00 00 */	lwz r12, 0(r3)
/* 8049BEC4 00465484  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8049BEC8 00465488  7D 89 03 A6 */	mtctr r12
/* 8049BECC 0046548C  4E 80 04 20 */	bctr 

.global func_8049BED0
func_8049BED0:
/* 8049BED0 00465490  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BED4 00465494  81 83 00 00 */	lwz r12, 0(r3)
/* 8049BED8 00465498  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8049BEDC 0046549C  7D 89 03 A6 */	mtctr r12
/* 8049BEE0 004654A0  4E 80 04 20 */	bctr 

.global func_8049BEE4
func_8049BEE4:
/* 8049BEE4 004654A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BEE8 004654A8  4B FE 72 74 */	b func_8048315C

.global func_8049BEEC
func_8049BEEC:
/* 8049BEEC 004654AC  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BEF0 004654B0  80 04 00 00 */	lwz r0, 0(r4)
/* 8049BEF4 004654B4  90 03 03 04 */	stw r0, 0x304(r3)
/* 8049BEF8 004654B8  80 04 00 04 */	lwz r0, 4(r4)
/* 8049BEFC 004654BC  90 03 03 08 */	stw r0, 0x308(r3)
/* 8049BF00 004654C0  80 04 00 08 */	lwz r0, 8(r4)
/* 8049BF04 004654C4  90 03 03 0C */	stw r0, 0x30c(r3)
/* 8049BF08 004654C8  4E 80 00 20 */	blr 

.global func_8049BF0C
func_8049BF0C:
/* 8049BF0C 004654CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BF10 004654D0  7C 08 02 A6 */	mflr r0
/* 8049BF14 004654D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BF18 004654D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BF1C 004654DC  4B FE 72 41 */	bl func_8048315C
/* 8049BF20 004654E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BF24 004654E4  38 63 00 48 */	addi r3, r3, 0x48
/* 8049BF28 004654E8  7C 08 03 A6 */	mtlr r0
/* 8049BF2C 004654EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BF30 004654F0  4E 80 00 20 */	blr 

.global func_8049BF34
func_8049BF34:
/* 8049BF34 004654F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BF38 004654F8  7C 08 02 A6 */	mflr r0
/* 8049BF3C 004654FC  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BF40 00465500  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BF44 00465504  4B FE 72 19 */	bl func_8048315C
/* 8049BF48 00465508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BF4C 0046550C  38 63 00 78 */	addi r3, r3, 0x78
/* 8049BF50 00465510  7C 08 03 A6 */	mtlr r0
/* 8049BF54 00465514  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BF58 00465518  4E 80 00 20 */	blr 

.global func_8049BF5C
func_8049BF5C:
/* 8049BF5C 0046551C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BF60 00465520  7C 08 02 A6 */	mflr r0
/* 8049BF64 00465524  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BF68 00465528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BF6C 0046552C  4B FE 71 F1 */	bl func_8048315C
/* 8049BF70 00465530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BF74 00465534  38 63 00 B8 */	addi r3, r3, 0xb8
/* 8049BF78 00465538  7C 08 03 A6 */	mtlr r0
/* 8049BF7C 0046553C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BF80 00465540  4E 80 00 20 */	blr 

.global func_8049BF84
func_8049BF84:
/* 8049BF84 00465544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BF88 00465548  7C 08 02 A6 */	mflr r0
/* 8049BF8C 0046554C  80 63 00 04 */	lwz r3, 4(r3)
/* 8049BF90 00465550  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BF94 00465554  4B FE 71 C9 */	bl func_8048315C
/* 8049BF98 00465558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BF9C 0046555C  38 63 00 C4 */	addi r3, r3, 0xc4
/* 8049BFA0 00465560  7C 08 03 A6 */	mtlr r0
/* 8049BFA4 00465564  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BFA8 00465568  4E 80 00 20 */	blr 

.global func_8049BFAC
func_8049BFAC:
/* 8049BFAC 0046556C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BFB0 00465570  7C 08 02 A6 */	mflr r0
/* 8049BFB4 00465574  80 A3 00 04 */	lwz r5, 4(r3)
/* 8049BFB8 00465578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BFBC 0046557C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049BFC0 00465580  7C 9F 23 78 */	mr r31, r4
/* 8049BFC4 00465584  93 C1 00 08 */	stw r30, 8(r1)
/* 8049BFC8 00465588  7C 7E 1B 78 */	mr r30, r3
/* 8049BFCC 0046558C  80 05 07 A4 */	lwz r0, 0x7a4(r5)
/* 8049BFD0 00465590  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 8049BFD4 00465594  40 82 00 0C */	bne lbl_8049BFE0
/* 8049BFD8 00465598  38 60 00 00 */	li r3, 0
/* 8049BFDC 0046559C  48 00 00 6C */	b lbl_8049C048
lbl_8049BFE0:
/* 8049BFE0 004655A0  7C A3 2B 78 */	mr r3, r5
/* 8049BFE4 004655A4  4B FF 4B 11 */	bl func_80490AF4
/* 8049BFE8 004655A8  2C 03 00 00 */	cmpwi r3, 0
/* 8049BFEC 004655AC  41 82 00 20 */	beq lbl_8049C00C
/* 8049BFF0 004655B0  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049BFF4 004655B4  7F E4 FB 78 */	mr r4, r31
/* 8049BFF8 004655B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8049BFFC 004655BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8049C000 004655C0  7D 89 03 A6 */	mtctr r12
/* 8049C004 004655C4  4E 80 04 21 */	bctrl 
/* 8049C008 004655C8  48 00 00 40 */	b lbl_8049C048
lbl_8049C00C:
/* 8049C00C 004655CC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049C010 004655D0  80 63 07 C4 */	lwz r3, 0x7c4(r3)
/* 8049C014 004655D4  2C 03 00 00 */	cmpwi r3, 0
/* 8049C018 004655D8  41 82 00 2C */	beq lbl_8049C044
/* 8049C01C 004655DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C020 004655E0  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8049C024 004655E4  7D 89 03 A6 */	mtctr r12
/* 8049C028 004655E8  4E 80 04 21 */	bctrl 
/* 8049C02C 004655EC  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C030 004655F0  7F E4 FB 78 */	mr r4, r31
/* 8049C034 004655F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8049C038 004655F8  7D 89 03 A6 */	mtctr r12
/* 8049C03C 004655FC  4E 80 04 21 */	bctrl 
/* 8049C040 00465600  48 00 00 08 */	b lbl_8049C048
lbl_8049C044:
/* 8049C044 00465604  38 60 00 00 */	li r3, 0
lbl_8049C048:
/* 8049C048 00465608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C04C 0046560C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C050 00465610  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049C054 00465614  7C 08 03 A6 */	mtlr r0
/* 8049C058 00465618  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C05C 0046561C  4E 80 00 20 */	blr 

.global func_8049C060
func_8049C060:
/* 8049C060 00465620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049C064 00465624  7C 08 02 A6 */	mflr r0
/* 8049C068 00465628  80 C4 00 04 */	lwz r6, 4(r4)
/* 8049C06C 0046562C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049C070 00465630  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049C074 00465634  7C BF 2B 78 */	mr r31, r5
/* 8049C078 00465638  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8049C07C 0046563C  7C 9E 23 78 */	mr r30, r4
/* 8049C080 00465640  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8049C084 00465644  7C 7D 1B 78 */	mr r29, r3
/* 8049C088 00465648  80 06 07 A4 */	lwz r0, 0x7a4(r6)
/* 8049C08C 0046564C  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 8049C090 00465650  40 82 00 28 */	bne lbl_8049C0B8
/* 8049C094 00465654  3C 80 80 66 */	lis r4, lbl_80659DB0@ha
/* 8049C098 00465658  C0 04 9D B0 */	lfs f0, lbl_80659DB0@l(r4)
/* 8049C09C 0046565C  38 84 9D B0 */	addi r4, r4, lbl_80659DB0@l
/* 8049C0A0 00465660  D0 03 00 00 */	stfs f0, 0(r3)
/* 8049C0A4 00465664  C0 04 00 04 */	lfs f0, 4(r4)
/* 8049C0A8 00465668  D0 03 00 04 */	stfs f0, 4(r3)
/* 8049C0AC 0046566C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8049C0B0 00465670  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049C0B4 00465674  48 00 00 BC */	b lbl_8049C170
lbl_8049C0B8:
/* 8049C0B8 00465678  7C C3 33 78 */	mr r3, r6
/* 8049C0BC 0046567C  7F E4 FB 78 */	mr r4, r31
/* 8049C0C0 00465680  4B FF 4A 35 */	bl func_80490AF4
/* 8049C0C4 00465684  2C 03 00 00 */	cmpwi r3, 0
/* 8049C0C8 00465688  41 82 00 38 */	beq lbl_8049C100
/* 8049C0CC 0046568C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049C0D0 00465690  7F E4 FB 78 */	mr r4, r31
/* 8049C0D4 00465694  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C0D8 00465698  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8049C0DC 0046569C  7D 89 03 A6 */	mtctr r12
/* 8049C0E0 004656A0  4E 80 04 21 */	bctrl 
/* 8049C0E4 004656A4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8049C0E8 004656A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8049C0EC 004656AC  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8049C0F0 004656B0  D0 5D 00 00 */	stfs f2, 0(r29)
/* 8049C0F4 004656B4  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8049C0F8 004656B8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8049C0FC 004656BC  48 00 00 74 */	b lbl_8049C170
lbl_8049C100:
/* 8049C100 004656C0  80 7E 00 04 */	lwz r3, 4(r30)
/* 8049C104 004656C4  80 63 07 C4 */	lwz r3, 0x7c4(r3)
/* 8049C108 004656C8  2C 03 00 00 */	cmpwi r3, 0
/* 8049C10C 004656CC  41 82 00 44 */	beq lbl_8049C150
/* 8049C110 004656D0  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C114 004656D4  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8049C118 004656D8  7D 89 03 A6 */	mtctr r12
/* 8049C11C 004656DC  4E 80 04 21 */	bctrl 
/* 8049C120 004656E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C124 004656E4  7F E4 FB 78 */	mr r4, r31
/* 8049C128 004656E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8049C12C 004656EC  7D 89 03 A6 */	mtctr r12
/* 8049C130 004656F0  4E 80 04 21 */	bctrl 
/* 8049C134 004656F4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8049C138 004656F8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8049C13C 004656FC  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8049C140 00465700  D0 5D 00 00 */	stfs f2, 0(r29)
/* 8049C144 00465704  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8049C148 00465708  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8049C14C 0046570C  48 00 00 24 */	b lbl_8049C170
lbl_8049C150:
/* 8049C150 00465710  3C 60 80 66 */	lis r3, lbl_80659DB0@ha
/* 8049C154 00465714  C0 03 9D B0 */	lfs f0, lbl_80659DB0@l(r3)
/* 8049C158 00465718  38 63 9D B0 */	addi r3, r3, lbl_80659DB0@l
/* 8049C15C 0046571C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8049C160 00465720  C0 03 00 04 */	lfs f0, 4(r3)
/* 8049C164 00465724  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8049C168 00465728  C0 03 00 08 */	lfs f0, 8(r3)
/* 8049C16C 0046572C  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_8049C170:
/* 8049C170 00465730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049C174 00465734  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049C178 00465738  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8049C17C 0046573C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8049C180 00465740  7C 08 03 A6 */	mtlr r0
/* 8049C184 00465744  38 21 00 20 */	addi r1, r1, 0x20
/* 8049C188 00465748  4E 80 00 20 */	blr 

.global func_8049C18C
func_8049C18C:
/* 8049C18C 0046574C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C190 00465750  7C 08 02 A6 */	mflr r0
/* 8049C194 00465754  80 C3 00 04 */	lwz r6, 4(r3)
/* 8049C198 00465758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C19C 0046575C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049C1A0 00465760  7C 9F 23 78 */	mr r31, r4
/* 8049C1A4 00465764  80 06 07 A4 */	lwz r0, 0x7a4(r6)
/* 8049C1A8 00465768  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 8049C1AC 0046576C  40 82 00 0C */	bne lbl_8049C1B8
/* 8049C1B0 00465770  38 60 00 00 */	li r3, 0
/* 8049C1B4 00465774  48 00 00 7C */	b lbl_8049C230
lbl_8049C1B8:
/* 8049C1B8 00465778  80 03 01 88 */	lwz r0, 0x188(r3)
/* 8049C1BC 0046577C  7C 65 1B 78 */	mr r5, r3
/* 8049C1C0 00465780  38 E0 00 00 */	li r7, 0
/* 8049C1C4 00465784  7C 09 03 A6 */	mtctr r0
/* 8049C1C8 00465788  28 00 00 00 */	cmplwi r0, 0
/* 8049C1CC 0046578C  40 81 00 2C */	ble lbl_8049C1F8
lbl_8049C1D0:
/* 8049C1D0 00465790  A0 05 01 08 */	lhz r0, 0x108(r5)
/* 8049C1D4 00465794  7C 04 00 40 */	cmplw r4, r0
/* 8049C1D8 00465798  40 82 00 14 */	bne lbl_8049C1EC
/* 8049C1DC 0046579C  54 E0 10 3A */	slwi r0, r7, 2
/* 8049C1E0 004657A0  7C 63 02 14 */	add r3, r3, r0
/* 8049C1E4 004657A4  80 63 00 08 */	lwz r3, 8(r3)
/* 8049C1E8 004657A8  48 00 00 48 */	b lbl_8049C230
lbl_8049C1EC:
/* 8049C1EC 004657AC  38 A5 00 02 */	addi r5, r5, 2
/* 8049C1F0 004657B0  38 E7 00 01 */	addi r7, r7, 1
/* 8049C1F4 004657B4  42 00 FF DC */	bdnz lbl_8049C1D0
lbl_8049C1F8:
/* 8049C1F8 004657B8  80 66 07 C4 */	lwz r3, 0x7c4(r6)
/* 8049C1FC 004657BC  2C 03 00 00 */	cmpwi r3, 0
/* 8049C200 004657C0  41 82 00 2C */	beq lbl_8049C22C
/* 8049C204 004657C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C208 004657C8  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8049C20C 004657CC  7D 89 03 A6 */	mtctr r12
/* 8049C210 004657D0  4E 80 04 21 */	bctrl 
/* 8049C214 004657D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C218 004657D8  7F E4 FB 78 */	mr r4, r31
/* 8049C21C 004657DC  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8049C220 004657E0  7D 89 03 A6 */	mtctr r12
/* 8049C224 004657E4  4E 80 04 21 */	bctrl 
/* 8049C228 004657E8  48 00 00 08 */	b lbl_8049C230
lbl_8049C22C:
/* 8049C22C 004657EC  38 60 00 00 */	li r3, 0
lbl_8049C230:
/* 8049C230 004657F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C234 004657F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C238 004657F8  7C 08 03 A6 */	mtlr r0
/* 8049C23C 004657FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C240 00465800  4E 80 00 20 */	blr 

.global func_8049C244
func_8049C244:
/* 8049C244 00465804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C248 00465808  7C 08 02 A6 */	mflr r0
/* 8049C24C 0046580C  7C 66 1B 78 */	mr r6, r3
/* 8049C250 00465810  38 E0 00 00 */	li r7, 0
/* 8049C254 00465814  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C258 00465818  80 03 01 88 */	lwz r0, 0x188(r3)
/* 8049C25C 0046581C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049C260 00465820  7C BF 2B 78 */	mr r31, r5
/* 8049C264 00465824  93 C1 00 08 */	stw r30, 8(r1)
/* 8049C268 00465828  7C 9E 23 78 */	mr r30, r4
/* 8049C26C 0046582C  7C 09 03 A6 */	mtctr r0
/* 8049C270 00465830  28 00 00 00 */	cmplwi r0, 0
/* 8049C274 00465834  40 81 00 48 */	ble lbl_8049C2BC
lbl_8049C278:
/* 8049C278 00465838  A0 06 01 08 */	lhz r0, 0x108(r6)
/* 8049C27C 0046583C  7C 04 00 40 */	cmplw r4, r0
/* 8049C280 00465840  40 82 00 30 */	bne lbl_8049C2B0
/* 8049C284 00465844  54 E0 10 3A */	slwi r0, r7, 2
/* 8049C288 00465848  7C 83 02 14 */	add r4, r3, r0
/* 8049C28C 0046584C  38 60 00 01 */	li r3, 1
/* 8049C290 00465850  80 84 00 08 */	lwz r4, 8(r4)
/* 8049C294 00465854  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 8049C298 00465858  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8049C29C 0046585C  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8049C2A0 00465860  D0 45 00 00 */	stfs f2, 0(r5)
/* 8049C2A4 00465864  D0 25 00 04 */	stfs f1, 4(r5)
/* 8049C2A8 00465868  D0 05 00 08 */	stfs f0, 8(r5)
/* 8049C2AC 0046586C  48 00 00 50 */	b lbl_8049C2FC
lbl_8049C2B0:
/* 8049C2B0 00465870  38 C6 00 02 */	addi r6, r6, 2
/* 8049C2B4 00465874  38 E7 00 01 */	addi r7, r7, 1
/* 8049C2B8 00465878  42 00 FF C0 */	bdnz lbl_8049C278
lbl_8049C2BC:
/* 8049C2BC 0046587C  80 63 00 04 */	lwz r3, 4(r3)
/* 8049C2C0 00465880  80 63 07 C4 */	lwz r3, 0x7c4(r3)
/* 8049C2C4 00465884  2C 03 00 00 */	cmpwi r3, 0
/* 8049C2C8 00465888  41 82 00 30 */	beq lbl_8049C2F8
/* 8049C2CC 0046588C  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C2D0 00465890  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8049C2D4 00465894  7D 89 03 A6 */	mtctr r12
/* 8049C2D8 00465898  4E 80 04 21 */	bctrl 
/* 8049C2DC 0046589C  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C2E0 004658A0  7F C4 F3 78 */	mr r4, r30
/* 8049C2E4 004658A4  7F E5 FB 78 */	mr r5, r31
/* 8049C2E8 004658A8  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8049C2EC 004658AC  7D 89 03 A6 */	mtctr r12
/* 8049C2F0 004658B0  4E 80 04 21 */	bctrl 
/* 8049C2F4 004658B4  48 00 00 08 */	b lbl_8049C2FC
lbl_8049C2F8:
/* 8049C2F8 004658B8  38 60 00 00 */	li r3, 0
lbl_8049C2FC:
/* 8049C2FC 004658BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C300 004658C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C304 004658C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049C308 004658C8  7C 08 03 A6 */	mtlr r0
/* 8049C30C 004658CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C310 004658D0  4E 80 00 20 */	blr 

.global func_8049C314
func_8049C314:
/* 8049C314 004658D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C318 004658D8  7C 08 02 A6 */	mflr r0
/* 8049C31C 004658DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C320 004658E0  80 03 01 88 */	lwz r0, 0x188(r3)
/* 8049C324 004658E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049C328 004658E8  7C 9F 23 78 */	mr r31, r4
/* 8049C32C 004658EC  7C 00 20 40 */	cmplw r0, r4
/* 8049C330 004658F0  40 81 00 14 */	ble lbl_8049C344
/* 8049C334 004658F4  54 80 10 3A */	slwi r0, r4, 2
/* 8049C338 004658F8  7C 63 02 14 */	add r3, r3, r0
/* 8049C33C 004658FC  80 63 00 08 */	lwz r3, 8(r3)
/* 8049C340 00465900  48 00 00 40 */	b lbl_8049C380
lbl_8049C344:
/* 8049C344 00465904  80 63 00 04 */	lwz r3, 4(r3)
/* 8049C348 00465908  80 63 07 C4 */	lwz r3, 0x7c4(r3)
/* 8049C34C 0046590C  2C 03 00 00 */	cmpwi r3, 0
/* 8049C350 00465910  41 82 00 2C */	beq lbl_8049C37C
/* 8049C354 00465914  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C358 00465918  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8049C35C 0046591C  7D 89 03 A6 */	mtctr r12
/* 8049C360 00465920  4E 80 04 21 */	bctrl 
/* 8049C364 00465924  81 83 00 00 */	lwz r12, 0(r3)
/* 8049C368 00465928  7F E4 FB 78 */	mr r4, r31
/* 8049C36C 0046592C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8049C370 00465930  7D 89 03 A6 */	mtctr r12
/* 8049C374 00465934  4E 80 04 21 */	bctrl 
/* 8049C378 00465938  48 00 00 08 */	b lbl_8049C380
lbl_8049C37C:
/* 8049C37C 0046593C  38 60 00 00 */	li r3, 0
lbl_8049C380:
/* 8049C380 00465940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C384 00465944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C388 00465948  7C 08 03 A6 */	mtlr r0
/* 8049C38C 0046594C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C390 00465950  4E 80 00 20 */	blr 

.global func_8049C394
func_8049C394:
/* 8049C394 00465954  80 63 00 04 */	lwz r3, 4(r3)
/* 8049C398 00465958  4B FE 67 20 */	b func_80482AB8

.global func_8049C39C
func_8049C39C:
/* 8049C39C 0046595C  80 63 00 04 */	lwz r3, 4(r3)
/* 8049C3A0 00465960  4B FE 67 34 */	b func_80482AD4

.global func_8049C3A4
func_8049C3A4:
/* 8049C3A4 00465964  80 63 00 04 */	lwz r3, 4(r3)
/* 8049C3A8 00465968  4B FE C1 C4 */	b func_8048856C

.global func_8049C3AC
func_8049C3AC:
/* 8049C3AC 0046596C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8049C3B0 00465970  38 60 00 01 */	li r3, 1
/* 8049C3B4 00465974  38 80 00 01 */	li r4, 1
/* 8049C3B8 00465978  80 05 07 A4 */	lwz r0, 0x7a4(r5)
/* 8049C3BC 0046597C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8049C3C0 00465980  40 82 00 2C */	bne lbl_8049C3EC
/* 8049C3C4 00465984  C0 22 CF B4 */	lfs f1, lbl_8066D334@sda21(r2)
/* 8049C3C8 00465988  C0 02 C6 88 */	lfs f0, lbl_8066CA08@sda21(r2)
/* 8049C3CC 0046598C  C0 45 03 04 */	lfs f2, 0x304(r5)
/* 8049C3D0 00465990  EC 01 00 2A */	fadds f0, f1, f0
/* 8049C3D4 00465994  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8049C3D8 00465998  4C 41 13 82 */	cror 2, 1, 2
/* 8049C3DC 0046599C  7C 00 00 26 */	mfcr r0
/* 8049C3E0 004659A0  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 8049C3E4 004659A4  40 82 00 08 */	bne lbl_8049C3EC
/* 8049C3E8 004659A8  38 80 00 00 */	li r4, 0
lbl_8049C3EC:
/* 8049C3EC 004659AC  2C 04 00 00 */	cmpwi r4, 0
/* 8049C3F0 004659B0  4C 82 00 20 */	bnelr 
/* 8049C3F4 004659B4  C0 22 CF B4 */	lfs f1, lbl_8066D334@sda21(r2)
/* 8049C3F8 004659B8  C0 02 C6 88 */	lfs f0, lbl_8066CA08@sda21(r2)
/* 8049C3FC 004659BC  C0 45 03 04 */	lfs f2, 0x304(r5)
/* 8049C400 004659C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8049C404 004659C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8049C408 004659C8  4C 40 13 82 */	cror 2, 0, 2
/* 8049C40C 004659CC  7C 00 00 26 */	mfcr r0
/* 8049C410 004659D0  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 8049C414 004659D4  4C 82 00 20 */	bnelr 
/* 8049C418 004659D8  38 60 00 00 */	li r3, 0
/* 8049C41C 004659DC  4E 80 00 20 */	blr 

.global func_8049C420
func_8049C420:
/* 8049C420 004659E0  80 63 00 04 */	lwz r3, 4(r3)
/* 8049C424 004659E4  80 03 07 A4 */	lwz r0, 0x7a4(r3)
/* 8049C428 004659E8  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8049C42C 004659EC  4E 80 00 20 */	blr 

.global func_8049C430
func_8049C430:
/* 8049C430 004659F0  80 63 01 88 */	lwz r3, 0x188(r3)
/* 8049C434 004659F4  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CScnEffectActNw4r_typestr
CScnEffectActNw4r_typestr:
	.asciz "CScnEffectActNw4r"
	.balign 4

.global IEffectAct_typestr
IEffectAct_typestr:
	.asciz "IEffectAct"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CScnEffectActNw4r
__vt__CScnEffectActNw4r:
	.4byte __RTTI__CScnEffectActNw4r
	.4byte 0
	.4byte func_8049B9AC
	.4byte func_8049BEA4
	.4byte func_8049BA44
	.4byte func_8049BEAC
	.4byte func_8049BEB4
	.4byte func_8049BEBC
	.4byte func_8049BED0
	.4byte func_8049BEE4
	.4byte func_8049BEEC
	.4byte func_8049BF0C
	.4byte func_8049BF34
	.4byte func_8049BF5C
	.4byte func_8049BF84
	.4byte func_8049BFAC
	.4byte func_8049C060
	.4byte func_8049C18C
	.4byte func_8049C244
	.4byte func_8049C430
	.4byte func_8049C314
	.4byte func_8049C394
	.4byte func_8049C39C
	.4byte func_8049C3A4
	.4byte func_8049C3AC
	.4byte func_8049C420

.global CScnEffectActNw4r_hierarchy
CScnEffectActNw4r_hierarchy:
	.4byte __RTTI__IEffectAct
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_80666338
lbl_80666338:
	# ROM: 0x571F18
	.4byte lbl_8066D330
	.4byte 0

.global __RTTI__CScnEffectActNw4r
__RTTI__CScnEffectActNw4r:
	.4byte CScnEffectActNw4r_typestr
	.4byte CScnEffectActNw4r_hierarchy

.global __RTTI__IEffectAct
__RTTI__IEffectAct:
	.4byte IEffectAct_typestr
	.4byte 0


.global lbl_80666350
lbl_80666350:
	# ROM: 0x571F30
	.4byte 0x72656600


.global lbl_80666354
lbl_80666354:
	# ROM: 0x571F34
	.4byte 0x72656600

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066D330
lbl_8066D330:
	.4byte 0x65700000


.global lbl_8066D334
lbl_8066D334:
	# ROM: 0x577194
	.float 1.0