.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802E8298
func_802E8298:
/* 802E8298 002B1858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E829C 002B185C  7C 08 02 A6 */	mflr r0
/* 802E82A0 002B1860  38 80 00 00 */	li r4, 0
/* 802E82A4 002B1864  38 A0 10 20 */	li r5, 0x1020
/* 802E82A8 002B1868  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E82AC 002B186C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E82B0 002B1870  3F E0 80 5C */	lis r31, lbl_805BF9F8@ha
/* 802E82B4 002B1874  3B FF F9 F8 */	addi r31, r31, lbl_805BF9F8@l
/* 802E82B8 002B1878  38 1F 06 D4 */	addi r0, r31, 0x6d4
/* 802E82BC 002B187C  90 1F 16 78 */	stw r0, 0x1678(r31)
/* 802E82C0 002B1880  38 7F 06 58 */	addi r3, r31, 0x658
/* 802E82C4 002B1884  4B D1 C0 8D */	bl memset
/* 802E82C8 002B1888  38 60 00 01 */	li r3, 1
/* 802E82CC 002B188C  38 80 00 02 */	li r4, 2
/* 802E82D0 002B1890  38 00 10 02 */	li r0, 0x1002
/* 802E82D4 002B1894  B0 7F 06 70 */	sth r3, 0x670(r31)
/* 802E82D8 002B1898  80 7F 16 78 */	lwz r3, 0x1678(r31)
/* 802E82DC 002B189C  38 DF 06 74 */	addi r6, r31, 0x674
/* 802E82E0 002B18A0  B0 9F 06 74 */	sth r4, 0x674(r31)
/* 802E82E4 002B18A4  38 80 0F A0 */	li r4, 0xfa0
/* 802E82E8 002B18A8  38 A0 00 01 */	li r5, 1
/* 802E82EC 002B18AC  38 E0 00 00 */	li r7, 0
/* 802E82F0 002B18B0  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 802E82F4 002B18B4  39 00 00 00 */	li r8, 0
/* 802E82F8 002B18B8  48 01 AB C5 */	bl func_80302EBC
/* 802E82FC 002B18BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8300 002B18C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E8304 002B18C4  7C 08 03 A6 */	mtlr r0
/* 802E8308 002B18C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E830C 002B18CC  4E 80 00 20 */	blr 

.global func_802E8310
func_802E8310:
/* 802E8310 002B18D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8314 002B18D4  7C 08 02 A6 */	mflr r0
/* 802E8318 002B18D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E831C 002B18DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E8320 002B18E0  3F E0 80 5C */	lis r31, lbl_805BF9F8@ha
/* 802E8324 002B18E4  3B FF F9 F8 */	addi r31, r31, lbl_805BF9F8@l
/* 802E8328 002B18E8  38 7F 06 58 */	addi r3, r31, 0x658
/* 802E832C 002B18EC  4B FF 62 F5 */	bl func_802DE620
/* 802E8330 002B18F0  88 1F 16 74 */	lbz r0, 0x1674(r31)
/* 802E8334 002B18F4  2C 00 00 00 */	cmpwi r0, 0
/* 802E8338 002B18F8  41 82 00 28 */	beq lbl_802E8360
/* 802E833C 002B18FC  81 9F 06 D0 */	lwz r12, 0x6d0(r31)
/* 802E8340 002B1900  38 00 00 00 */	li r0, 0
/* 802E8344 002B1904  98 1F 16 74 */	stb r0, 0x1674(r31)
/* 802E8348 002B1908  2C 0C 00 00 */	cmpwi r12, 0
/* 802E834C 002B190C  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 802E8350 002B1910  41 82 00 10 */	beq lbl_802E8360
/* 802E8354 002B1914  38 60 00 00 */	li r3, 0
/* 802E8358 002B1918  7D 89 03 A6 */	mtctr r12
/* 802E835C 002B191C  4E 80 04 21 */	bctrl 
lbl_802E8360:
/* 802E8360 002B1920  3F E0 80 5C */	lis r31, lbl_805BF9F8@ha
/* 802E8364 002B1924  38 80 00 00 */	li r4, 0
/* 802E8368 002B1928  3B FF F9 F8 */	addi r31, r31, lbl_805BF9F8@l
/* 802E836C 002B192C  38 A0 10 20 */	li r5, 0x1020
/* 802E8370 002B1930  38 1F 06 D4 */	addi r0, r31, 0x6d4
/* 802E8374 002B1934  90 1F 16 78 */	stw r0, 0x1678(r31)
/* 802E8378 002B1938  38 7F 06 58 */	addi r3, r31, 0x658
/* 802E837C 002B193C  4B D1 BF D5 */	bl memset
/* 802E8380 002B1940  38 60 00 01 */	li r3, 1
/* 802E8384 002B1944  38 80 00 02 */	li r4, 2
/* 802E8388 002B1948  38 00 10 02 */	li r0, 0x1002
/* 802E838C 002B194C  B0 7F 06 70 */	sth r3, 0x670(r31)
/* 802E8390 002B1950  80 7F 16 78 */	lwz r3, 0x1678(r31)
/* 802E8394 002B1954  38 DF 06 74 */	addi r6, r31, 0x674
/* 802E8398 002B1958  B0 9F 06 74 */	sth r4, 0x674(r31)
/* 802E839C 002B195C  38 80 0F A0 */	li r4, 0xfa0
/* 802E83A0 002B1960  38 A0 00 01 */	li r5, 1
/* 802E83A4 002B1964  38 E0 00 00 */	li r7, 0
/* 802E83A8 002B1968  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 802E83AC 002B196C  39 00 00 00 */	li r8, 0
/* 802E83B0 002B1970  48 01 AB 0D */	bl func_80302EBC
/* 802E83B4 002B1974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E83B8 002B1978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E83BC 002B197C  7C 08 03 A6 */	mtlr r0
/* 802E83C0 002B1980  38 21 00 10 */	addi r1, r1, 0x10
/* 802E83C4 002B1984  4E 80 00 20 */	blr 

.global func_802E83C8
func_802E83C8:
/* 802E83C8 002B1988  4E 80 00 20 */	blr