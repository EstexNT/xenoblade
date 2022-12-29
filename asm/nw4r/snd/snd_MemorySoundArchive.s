.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__Q34nw4r3snd18MemorySoundArchiveFv
__ct__Q34nw4r3snd18MemorySoundArchiveFv:
/* 80417168 003E0728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041716C 003E072C  7C 08 02 A6 */	mflr r0
/* 80417170 003E0730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80417174 003E0734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80417178 003E0738  7C 7F 1B 78 */	mr r31, r3
/* 8041717C 003E073C  48 00 56 01 */	bl __ct__Q34nw4r3snd12SoundArchiveFv
/* 80417180 003E0740  3C 80 80 57 */	lis r4, lbl_8056E150@ha
/* 80417184 003E0744  38 00 00 00 */	li r0, 0
/* 80417188 003E0748  38 84 E1 50 */	addi r4, r4, lbl_8056E150@l
/* 8041718C 003E074C  90 1F 01 08 */	stw r0, 0x108(r31)
/* 80417190 003E0750  38 7F 01 0C */	addi r3, r31, 0x10c
/* 80417194 003E0754  90 9F 00 00 */	stw r4, 0(r31)
/* 80417198 003E0758  48 00 59 3D */	bl __ct__Q44nw4r3snd6detail22SoundArchiveFileReaderFv
/* 8041719C 003E075C  7F E3 FB 78 */	mr r3, r31
/* 804171A0 003E0760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804171A4 003E0764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804171A8 003E0768  7C 08 03 A6 */	mtlr r0
/* 804171AC 003E076C  38 21 00 10 */	addi r1, r1, 0x10
/* 804171B0 003E0770  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3snd18MemorySoundArchiveFv
__dt__Q34nw4r3snd18MemorySoundArchiveFv:
/* 804171B4 003E0774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804171B8 003E0778  7C 08 02 A6 */	mflr r0
/* 804171BC 003E077C  2C 03 00 00 */	cmpwi r3, 0
/* 804171C0 003E0780  90 01 00 14 */	stw r0, 0x14(r1)
/* 804171C4 003E0784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804171C8 003E0788  7C 9F 23 78 */	mr r31, r4
/* 804171CC 003E078C  93 C1 00 08 */	stw r30, 8(r1)
/* 804171D0 003E0790  7C 7E 1B 78 */	mr r30, r3
/* 804171D4 003E0794  41 82 00 1C */	beq .L_804171F0
/* 804171D8 003E0798  38 80 00 00 */	li r4, 0
/* 804171DC 003E079C  48 00 55 C5 */	bl __dt__Q34nw4r3snd12SoundArchiveFv
/* 804171E0 003E07A0  2C 1F 00 00 */	cmpwi r31, 0
/* 804171E4 003E07A4  40 81 00 0C */	ble .L_804171F0
/* 804171E8 003E07A8  7F C3 F3 78 */	mr r3, r30
/* 804171EC 003E07AC  48 01 DA 41 */	bl __dl__FPv
.L_804171F0:
/* 804171F0 003E07B0  7F C3 F3 78 */	mr r3, r30
/* 804171F4 003E07B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804171F8 003E07B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804171FC 003E07BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80417200 003E07C0  7C 08 03 A6 */	mtlr r0
/* 80417204 003E07C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80417208 003E07C8  4E 80 00 20 */	blr 

.global Setup__Q34nw4r3snd18MemorySoundArchiveFPCv
Setup__Q34nw4r3snd18MemorySoundArchiveFPCv:
/* 8041720C 003E07CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80417210 003E07D0  7C 08 02 A6 */	mflr r0
/* 80417214 003E07D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80417218 003E07D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041721C 003E07DC  7C 9F 23 78 */	mr r31, r4
/* 80417220 003E07E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80417224 003E07E4  7C 7E 1B 78 */	mr r30, r3
/* 80417228 003E07E8  38 63 01 0C */	addi r3, r3, 0x10c
/* 8041722C 003E07EC  48 00 58 CD */	bl Init__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCv
/* 80417230 003E07F0  7F C3 F3 78 */	mr r3, r30
/* 80417234 003E07F4  38 9E 01 0C */	addi r4, r30, 0x10c
/* 80417238 003E07F8  48 00 55 BD */	bl Setup__Q34nw4r3snd12SoundArchiveFPQ44nw4r3snd6detail22SoundArchiveFileReader
/* 8041723C 003E07FC  80 1E 01 24 */	lwz r0, 0x124(r30)
/* 80417240 003E0800  38 7E 01 0C */	addi r3, r30, 0x10c
/* 80417244 003E0804  80 BE 01 28 */	lwz r5, 0x128(r30)
/* 80417248 003E0808  7C 80 FA 14 */	add r4, r0, r31
/* 8041724C 003E080C  48 00 5A 05 */	bl SetInfoChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 80417250 003E0810  80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 80417254 003E0814  38 7E 01 0C */	addi r3, r30, 0x10c
/* 80417258 003E0818  80 BE 01 20 */	lwz r5, 0x120(r30)
/* 8041725C 003E081C  7C 80 FA 14 */	add r4, r0, r31
/* 80417260 003E0820  48 00 59 49 */	bl SetStringChunk__Q44nw4r3snd6detail22SoundArchiveFileReaderFPCvUl
/* 80417264 003E0824  93 FE 01 08 */	stw r31, 0x108(r30)
/* 80417268 003E0828  38 60 00 01 */	li r3, 1
/* 8041726C 003E082C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80417270 003E0830  83 C1 00 08 */	lwz r30, 8(r1)
/* 80417274 003E0834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80417278 003E0838  7C 08 03 A6 */	mtlr r0
/* 8041727C 003E083C  38 21 00 10 */	addi r1, r1, 0x10
/* 80417280 003E0840  4E 80 00 20 */	blr 

.global Shutdown__Q34nw4r3snd18MemorySoundArchiveFv
Shutdown__Q34nw4r3snd18MemorySoundArchiveFv:
/* 80417284 003E0844  38 00 00 00 */	li r0, 0
/* 80417288 003E0848  90 03 01 08 */	stw r0, 0x108(r3)
/* 8041728C 003E084C  48 00 55 70 */	b Shutdown__Q34nw4r3snd12SoundArchiveFv

.global detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl:
/* 80417290 003E0850  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80417294 003E0854  7C 08 02 A6 */	mflr r0
/* 80417298 003E0858  38 A0 00 00 */	li r5, 0
/* 8041729C 003E085C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804172A0 003E0860  38 C1 00 08 */	addi r6, r1, 8
/* 804172A4 003E0864  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804172A8 003E0868  7C 7F 1B 78 */	mr r31, r3
/* 804172AC 003E086C  48 00 55 F9 */	bl detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 804172B0 003E0870  2C 03 00 00 */	cmpwi r3, 0
/* 804172B4 003E0874  40 82 00 0C */	bne .L_804172C0
/* 804172B8 003E0878  38 60 00 00 */	li r3, 0
/* 804172BC 003E087C  48 00 00 70 */	b .L_8041732C
.L_804172C0:
/* 804172C0 003E0880  80 81 00 08 */	lwz r4, 8(r1)
/* 804172C4 003E0884  7F E3 FB 78 */	mr r3, r31
/* 804172C8 003E0888  38 A1 00 28 */	addi r5, r1, 0x28
/* 804172CC 003E088C  48 00 55 B9 */	bl detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 804172D0 003E0890  2C 03 00 00 */	cmpwi r3, 0
/* 804172D4 003E0894  40 82 00 0C */	bne .L_804172E0
/* 804172D8 003E0898  38 60 00 00 */	li r3, 0
/* 804172DC 003E089C  48 00 00 50 */	b .L_8041732C
.L_804172E0:
/* 804172E0 003E08A0  80 81 00 08 */	lwz r4, 8(r1)
/* 804172E4 003E08A4  7F E3 FB 78 */	mr r3, r31
/* 804172E8 003E08A8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804172EC 003E08AC  38 C1 00 10 */	addi r6, r1, 0x10
/* 804172F0 003E08B0  48 00 55 9D */	bl detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 804172F4 003E08B4  2C 03 00 00 */	cmpwi r3, 0
/* 804172F8 003E08B8  40 82 00 0C */	bne .L_80417304
/* 804172FC 003E08BC  38 60 00 00 */	li r3, 0
/* 80417300 003E08C0  48 00 00 2C */	b .L_8041732C
.L_80417304:
/* 80417304 003E08C4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80417308 003E08C8  2C 00 00 00 */	cmpwi r0, 0
/* 8041730C 003E08CC  41 82 00 0C */	beq .L_80417318
/* 80417310 003E08D0  38 60 00 00 */	li r3, 0
/* 80417314 003E08D4  48 00 00 18 */	b .L_8041732C
.L_80417318:
/* 80417318 003E08D8  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8041731C 003E08DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80417320 003E08E0  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 80417324 003E08E4  7C 04 02 14 */	add r0, r4, r0
/* 80417328 003E08E8  7C 63 02 14 */	add r3, r3, r0
.L_8041732C:
/* 8041732C 003E08EC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80417330 003E08F0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80417334 003E08F4  7C 08 03 A6 */	mtlr r0
/* 80417338 003E08F8  38 21 00 50 */	addi r1, r1, 0x50
/* 8041733C 003E08FC  4E 80 00 20 */	blr 

.global detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl:
/* 80417340 003E0900  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80417344 003E0904  7C 08 02 A6 */	mflr r0
/* 80417348 003E0908  38 A0 00 00 */	li r5, 0
/* 8041734C 003E090C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80417350 003E0910  38 C1 00 08 */	addi r6, r1, 8
/* 80417354 003E0914  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80417358 003E0918  7C 7F 1B 78 */	mr r31, r3
/* 8041735C 003E091C  48 00 55 49 */	bl detail_ReadFilePos__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive7FilePos
/* 80417360 003E0920  2C 03 00 00 */	cmpwi r3, 0
/* 80417364 003E0924  40 82 00 0C */	bne .L_80417370
/* 80417368 003E0928  38 60 00 00 */	li r3, 0
/* 8041736C 003E092C  48 00 00 70 */	b .L_804173DC
.L_80417370:
/* 80417370 003E0930  80 81 00 08 */	lwz r4, 8(r1)
/* 80417374 003E0934  7F E3 FB 78 */	mr r3, r31
/* 80417378 003E0938  38 A1 00 28 */	addi r5, r1, 0x28
/* 8041737C 003E093C  48 00 55 09 */	bl detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 80417380 003E0940  2C 03 00 00 */	cmpwi r3, 0
/* 80417384 003E0944  40 82 00 0C */	bne .L_80417390
/* 80417388 003E0948  38 60 00 00 */	li r3, 0
/* 8041738C 003E094C  48 00 00 50 */	b .L_804173DC
.L_80417390:
/* 80417390 003E0950  80 81 00 08 */	lwz r4, 8(r1)
/* 80417394 003E0954  7F E3 FB 78 */	mr r3, r31
/* 80417398 003E0958  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8041739C 003E095C  38 C1 00 10 */	addi r6, r1, 0x10
/* 804173A0 003E0960  48 00 54 ED */	bl detail_ReadGroupItemInfo__Q34nw4r3snd12SoundArchiveCFUlUlPQ44nw4r3snd12SoundArchive13GroupItemInfo
/* 804173A4 003E0964  2C 03 00 00 */	cmpwi r3, 0
/* 804173A8 003E0968  40 82 00 0C */	bne .L_804173B4
/* 804173AC 003E096C  38 60 00 00 */	li r3, 0
/* 804173B0 003E0970  48 00 00 2C */	b .L_804173DC
.L_804173B4:
/* 804173B4 003E0974  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804173B8 003E0978  2C 00 00 00 */	cmpwi r0, 0
/* 804173BC 003E097C  41 82 00 0C */	beq .L_804173C8
/* 804173C0 003E0980  38 60 00 00 */	li r3, 0
/* 804173C4 003E0984  48 00 00 18 */	b .L_804173DC
.L_804173C8:
/* 804173C8 003E0988  80 81 00 38 */	lwz r4, 0x38(r1)
/* 804173CC 003E098C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804173D0 003E0990  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 804173D4 003E0994  7C 04 02 14 */	add r0, r4, r0
/* 804173D8 003E0998  7C 63 02 14 */	add r3, r3, r0
.L_804173DC:
/* 804173DC 003E099C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804173E0 003E09A0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804173E4 003E09A4  7C 08 03 A6 */	mtlr r0
/* 804173E8 003E09A8  38 21 00 50 */	addi r1, r1, 0x50
/* 804173EC 003E09AC  4E 80 00 20 */	blr 

.global OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl
OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl:
/* 804173F0 003E09B0  80 03 01 08 */	lwz r0, 0x108(r3)
/* 804173F4 003E09B4  2C 00 00 00 */	cmpwi r0, 0
/* 804173F8 003E09B8  40 82 00 0C */	bne .L_80417404
/* 804173FC 003E09BC  38 60 00 00 */	li r3, 0
/* 80417400 003E09C0  4E 80 00 20 */	blr
.L_80417404:
/* 80417404 003E09C4  28 05 00 20 */	cmplwi r5, 0x20
/* 80417408 003E09C8  40 80 00 0C */	bge .L_80417414
/* 8041740C 003E09CC  38 60 00 00 */	li r3, 0
/* 80417410 003E09D0  4E 80 00 20 */	blr
.L_80417414:
/* 80417414 003E09D4  2C 04 00 00 */	cmpwi r4, 0
/* 80417418 003E09D8  7C 83 23 78 */	mr r3, r4
/* 8041741C 003E09DC  4D 82 00 20 */	beqlr 
/* 80417420 003E09E0  3C A0 80 57 */	lis r5, lbl_8056E0F0@ha
/* 80417424 003E09E4  39 00 00 00 */	li r8, 0
/* 80417428 003E09E8  38 A5 E0 F0 */	addi r5, r5, lbl_8056E0F0@l
/* 8041742C 003E09EC  7C 06 02 14 */	add r0, r6, r0
/* 80417430 003E09F0  99 04 00 04 */	stb r8, 4(r4)
/* 80417434 003E09F4  91 04 00 0C */	stw r8, 0xc(r4)
/* 80417438 003E09F8  91 04 00 10 */	stw r8, 0x10(r4)
/* 8041743C 003E09FC  90 A4 00 00 */	stw r5, 0(r4)
/* 80417440 003E0A00  90 04 00 14 */	stw r0, 0x14(r4)
/* 80417444 003E0A04  90 E4 00 18 */	stw r7, 0x18(r4)
/* 80417448 003E0A08  91 04 00 1C */	stw r8, 0x1c(r4)
/* 8041744C 003E0A0C  4E 80 00 20 */	blr 

.global OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl
OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl:
/* 80417450 003E0A10  38 60 00 00 */	li r3, 0
/* 80417454 003E0A14  4E 80 00 20 */	blr 

.global detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv
detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv:
/* 80417458 003E0A18  38 60 00 20 */	li r3, 0x20
/* 8041745C 003E0A1C  4E 80 00 20 */	blr 

.global Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv:
/* 80417460 003E0A20  38 00 00 00 */	li r0, 0
/* 80417464 003E0A24  90 03 00 14 */	stw r0, 0x14(r3)
/* 80417468 003E0A28  90 03 00 18 */	stw r0, 0x18(r3)
/* 8041746C 003E0A2C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80417470 003E0A30  4E 80 00 20 */	blr 

.global Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl
Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl:
/* 80417474 003E0A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80417478 003E0A38  7C 08 02 A6 */	mflr r0
/* 8041747C 003E0A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80417480 003E0A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80417484 003E0A44  7C BF 2B 78 */	mr r31, r5
/* 80417488 003E0A48  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 8041748C 003E0A4C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80417490 003E0A50  7C 06 00 50 */	subf r0, r6, r0
/* 80417494 003E0A54  7C 05 00 40 */	cmplw r5, r0
/* 80417498 003E0A58  40 81 00 08 */	ble .L_804174A0
/* 8041749C 003E0A5C  7C 1F 03 78 */	mr r31, r0
.L_804174A0:
/* 804174A0 003E0A60  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804174A4 003E0A64  7C 83 23 78 */	mr r3, r4
/* 804174A8 003E0A68  7F E5 FB 78 */	mr r5, r31
/* 804174AC 003E0A6C  7C 86 02 14 */	add r4, r6, r0
/* 804174B0 003E0A70  4B BE CB 51 */	bl memcpy
/* 804174B4 003E0A74  7F E3 FB 78 */	mr r3, r31
/* 804174B8 003E0A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804174BC 003E0A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804174C0 003E0A80  7C 08 03 A6 */	mtlr r0
/* 804174C4 003E0A84  38 21 00 10 */	addi r1, r1, 0x10
/* 804174C8 003E0A88  4E 80 00 20 */	blr 

.global Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl
Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl:
/* 804174CC 003E0A8C  2C 05 00 01 */	cmpwi r5, 1
/* 804174D0 003E0A90  41 82 00 28 */	beq .L_804174F8
/* 804174D4 003E0A94  40 80 00 10 */	bge .L_804174E4
/* 804174D8 003E0A98  2C 05 00 00 */	cmpwi r5, 0
/* 804174DC 003E0A9C  40 80 00 14 */	bge .L_804174F0
/* 804174E0 003E0AA0  4E 80 00 20 */	blr
.L_804174E4:
/* 804174E4 003E0AA4  2C 05 00 03 */	cmpwi r5, 3
/* 804174E8 003E0AA8  4C 80 00 20 */	bgelr 
/* 804174EC 003E0AAC  48 00 00 1C */	b .L_80417508
.L_804174F0:
/* 804174F0 003E0AB0  90 83 00 1C */	stw r4, 0x1c(r3)
/* 804174F4 003E0AB4  4E 80 00 20 */	blr
.L_804174F8:
/* 804174F8 003E0AB8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 804174FC 003E0ABC  7C 00 22 14 */	add r0, r0, r4
/* 80417500 003E0AC0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80417504 003E0AC4  4E 80 00 20 */	blr
.L_80417508:
/* 80417508 003E0AC8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8041750C 003E0ACC  7C 04 00 50 */	subf r0, r4, r0
/* 80417510 003E0AD0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80417514 003E0AD4  4E 80 00 20 */	blr 
/* 80417518 003E0AD8  4E 80 00 20 */	blr


.global GetRuntimeTypeInfo__Q34nw4r2ut10FileStreamCFv
GetRuntimeTypeInfo__Q34nw4r2ut10FileStreamCFv:
/* 8041751C 003E0ADC  38 6D BC A8 */	addi r3, r13, lbl_80667E28@sda21
/* 80417520 003E0AE0  4E 80 00 20 */	blr 


.global GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 80417524 003E0AE4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80417528 003E0AE8  4E 80 00 20 */	blr 


.global Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8041752C 003E0AEC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80417530 003E0AF0  4E 80 00 20 */	blr 


.global CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 80417534 003E0AF4  38 60 00 00 */	li r3, 0
/* 80417538 003E0AF8  4E 80 00 20 */	blr 


.global CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8041753C 003E0AFC  38 60 00 01 */	li r3, 1
/* 80417540 003E0B00  4E 80 00 20 */	blr 


.global CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 80417544 003E0B04  38 60 00 00 */	li r3, 0
/* 80417548 003E0B08  4E 80 00 20 */	blr 


.global CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 8041754C 003E0B0C  38 60 00 01 */	li r3, 1
/* 80417550 003E0B10  4E 80 00 20 */	blr 


.global CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv:
/* 80417554 003E0B14  38 60 00 01 */	li r3, 1
/* 80417558 003E0B18  4E 80 00 20 */	blr 


.global __dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
__dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv:
/* 8041755C 003E0B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80417560 003E0B20  7C 08 02 A6 */	mflr r0
/* 80417564 003E0B24  2C 03 00 00 */	cmpwi r3, 0
/* 80417568 003E0B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041756C 003E0B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80417570 003E0B30  7C 7F 1B 78 */	mr r31, r3
/* 80417574 003E0B34  41 82 00 10 */	beq .L_80417584
/* 80417578 003E0B38  2C 04 00 00 */	cmpwi r4, 0
/* 8041757C 003E0B3C  40 81 00 08 */	ble .L_80417584
/* 80417580 003E0B40  48 01 D6 AD */	bl __dl__FPv
.L_80417584:
/* 80417584 003E0B44  7F E3 FB 78 */	mr r3, r31
/* 80417588 003E0B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041758C 003E0B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80417590 003E0B50  7C 08 03 A6 */	mtlr r0
/* 80417594 003E0B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80417598 003E0B58  4E 80 00 20 */	blr


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056E0F0
lbl_8056E0F0:
	# ROM: 0x56A1F0
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q34nw4r2ut10FileStreamCFv
	.4byte __dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
	.4byte Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
	.4byte Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl
	.4byte func_8042BDD0
	.4byte func_8042BDD8
	.4byte func_8042BDE0
	.4byte func_8042BDE8
	.4byte CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte GetOffsetAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetSizeAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetBufferAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl
	.4byte func_8042BDFC
	.4byte func_8042BE00
	.4byte CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte 0


.global lbl_8056E150
lbl_8056E150:
	# ROM: 0x56A250
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3snd18MemorySoundArchiveFv
	.4byte detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
	.4byte detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
	.4byte detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv
	.4byte OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl
	.4byte OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl
