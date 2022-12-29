.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global GetInstance__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
GetInstance__Q44nw4r3snd6detail20RemoteSpeakerManagerFv:
/* 80419354 003E2914  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80419358 003E2918  7C 08 02 A6 */	mflr r0
/* 8041935C 003E291C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80419360 003E2920  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80419364 003E2924  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80419368 003E2928  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8041936C 003E292C  88 0D BC 50 */	lbz r0, lbl_80667DD0@sda21(r13)
/* 80419370 003E2930  7C 00 07 75 */	extsb. r0, r0
/* 80419374 003E2934  40 82 00 54 */	bne .L_804193C8
/* 80419378 003E2938  3C 60 80 64 */	lis r3, lbl_8063B1E8@ha
/* 8041937C 003E293C  38 00 00 00 */	li r0, 0
/* 80419380 003E2940  3B C3 B1 E8 */	addi r30, r3, lbl_8063B1E8@l
/* 80419384 003E2944  98 03 B1 E8 */	stb r0, lbl_8063B1E8@l(r3)
/* 80419388 003E2948  3B BE 00 38 */	addi r29, r30, 0x38
/* 8041938C 003E294C  3B FE 02 D8 */	addi r31, r30, 0x2d8
.L_80419390:
/* 80419390 003E2950  7F A3 EB 78 */	mr r3, r29
/* 80419394 003E2954  4B FF F7 D5 */	bl __ct__Q34nw4r3snd13RemoteSpeakerFv
/* 80419398 003E2958  3B BD 00 A8 */	addi r29, r29, 0xa8
/* 8041939C 003E295C  7C 1D F8 40 */	cmplw r29, r31
/* 804193A0 003E2960  41 80 FF F0 */	blt .L_80419390
/* 804193A4 003E2964  38 80 00 01 */	li r4, 1
/* 804193A8 003E2968  38 A0 00 00 */	li r5, 0
/* 804193AC 003E296C  38 60 00 02 */	li r3, 2
/* 804193B0 003E2970  38 00 00 03 */	li r0, 3
/* 804193B4 003E2974  90 BE 00 6C */	stw r5, 0x6c(r30)
/* 804193B8 003E2978  90 9E 01 14 */	stw r4, 0x114(r30)
/* 804193BC 003E297C  90 7E 01 BC */	stw r3, 0x1bc(r30)
/* 804193C0 003E2980  90 1E 02 64 */	stw r0, 0x264(r30)
/* 804193C4 003E2984  98 8D BC 50 */	stb r4, lbl_80667DD0@sda21(r13)
.L_804193C8:
/* 804193C8 003E2988  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804193CC 003E298C  3C 60 80 64 */	lis r3, lbl_8063B1E8@ha
/* 804193D0 003E2990  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804193D4 003E2994  38 63 B1 E8 */	addi r3, r3, lbl_8063B1E8@l
/* 804193D8 003E2998  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804193DC 003E299C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804193E0 003E29A0  7C 08 03 A6 */	mtlr r0
/* 804193E4 003E29A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804193E8 003E29A8  4E 80 00 20 */	blr 

.global GetRemoteSpeaker__Q44nw4r3snd6detail20RemoteSpeakerManagerFi
GetRemoteSpeaker__Q44nw4r3snd6detail20RemoteSpeakerManagerFi:
/* 804193EC 003E29AC  1C 04 00 A8 */	mulli r0, r4, 0xa8
/* 804193F0 003E29B0  7C 63 02 14 */	add r3, r3, r0
/* 804193F4 003E29B4  38 63 00 38 */	addi r3, r3, 0x38
/* 804193F8 003E29B8  4E 80 00 20 */	blr 

.global Setup__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
Setup__Q44nw4r3snd6detail20RemoteSpeakerManagerFv:
/* 804193FC 003E29BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80419400 003E29C0  7C 08 02 A6 */	mflr r0
/* 80419404 003E29C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80419408 003E29C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041940C 003E29CC  7C 7F 1B 78 */	mr r31, r3
/* 80419410 003E29D0  88 03 00 00 */	lbz r0, 0(r3)
/* 80419414 003E29D4  2C 00 00 00 */	cmpwi r0, 0
/* 80419418 003E29D8  40 82 00 6C */	bne .L_80419484
/* 8041941C 003E29DC  38 63 00 08 */	addi r3, r3, 8
/* 80419420 003E29E0  4B F3 9A 01 */	bl OSCreateAlarm
/* 80419424 003E29E4  4B F4 35 3D */	bl OSGetTime
/* 80419428 003E29E8  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 8041942C 003E29EC  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 80419430 003E29F0  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 80419434 003E29F4  3C C0 10 62 */	lis r6, 0x10624DD3@ha
/* 80419438 003E29F8  39 46 4D D3 */	addi r10, r6, 0x10624DD3@l
/* 8041943C 003E29FC  3D 20 80 42 */	lis r9, RemoteSpeakerAlarmProc__Q44nw4r3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext@ha
/* 80419440 003E2A00  54 00 F0 BE */	srwi r0, r0, 2
/* 80419444 003E2A04  38 A5 DE 83 */	addi r5, r5, 0x431BDE83@l
/* 80419448 003E2A08  7D 05 00 16 */	mulhwu r8, r5, r0
/* 8041944C 003E2A0C  3C E0 00 66 */	lis r7, 0x0065B9AB@ha
/* 80419450 003E2A10  7C 86 23 78 */	mr r6, r4
/* 80419454 003E2A14  38 07 B9 AB */	addi r0, r7, 0x0065B9AB@l
/* 80419458 003E2A18  7C 65 1B 78 */	mr r5, r3
/* 8041945C 003E2A1C  38 7F 00 08 */	addi r3, r31, 8
/* 80419460 003E2A20  55 04 8B FE */	srwi r4, r8, 0xf
/* 80419464 003E2A24  39 29 94 DC */	addi r9, r9, RemoteSpeakerAlarmProc__Q44nw4r3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext@l
/* 80419468 003E2A28  7C 04 01 D6 */	mullw r0, r4, r0
/* 8041946C 003E2A2C  38 E0 00 00 */	li r7, 0
/* 80419470 003E2A30  7C 0A 00 16 */	mulhwu r0, r10, r0
/* 80419474 003E2A34  54 08 BA 7E */	srwi r8, r0, 9
/* 80419478 003E2A38  4B F3 9C 79 */	bl OSSetPeriodicAlarm
/* 8041947C 003E2A3C  38 00 00 01 */	li r0, 1
/* 80419480 003E2A40  98 1F 00 00 */	stb r0, 0(r31)
.L_80419484:
/* 80419484 003E2A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80419488 003E2A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041948C 003E2A4C  7C 08 03 A6 */	mtlr r0
/* 80419490 003E2A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80419494 003E2A54  4E 80 00 20 */	blr 

.global Shutdown__Q44nw4r3snd6detail20RemoteSpeakerManagerFv
Shutdown__Q44nw4r3snd6detail20RemoteSpeakerManagerFv:
/* 80419498 003E2A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041949C 003E2A5C  7C 08 02 A6 */	mflr r0
/* 804194A0 003E2A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 804194A4 003E2A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804194A8 003E2A68  7C 7F 1B 78 */	mr r31, r3
/* 804194AC 003E2A6C  88 03 00 00 */	lbz r0, 0(r3)
/* 804194B0 003E2A70  2C 00 00 00 */	cmpwi r0, 0
/* 804194B4 003E2A74  41 82 00 14 */	beq .L_804194C8
/* 804194B8 003E2A78  38 63 00 08 */	addi r3, r3, 8
/* 804194BC 003E2A7C  4B F3 9C C5 */	bl OSCancelAlarm
/* 804194C0 003E2A80  38 00 00 00 */	li r0, 0
/* 804194C4 003E2A84  98 1F 00 00 */	stb r0, 0(r31)
.L_804194C8:
/* 804194C8 003E2A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804194CC 003E2A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804194D0 003E2A90  7C 08 03 A6 */	mtlr r0
/* 804194D4 003E2A94  38 21 00 10 */	addi r1, r1, 0x10
/* 804194D8 003E2A98  4E 80 00 20 */	blr

.global RemoteSpeakerAlarmProc__Q44nw4r3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext
RemoteSpeakerAlarmProc__Q44nw4r3snd6detail20RemoteSpeakerManagerFP7OSAlarmP9OSContext:
/* 804194DC 003E2A9C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804194E0 003E2AA0  7C 08 02 A6 */	mflr r0
/* 804194E4 003E2AA4  90 01 00 74 */	stw r0, 0x74(r1)
/* 804194E8 003E2AA8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 804194EC 003E2AAC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 804194F0 003E2AB0  93 A1 00 64 */	stw r29, 0x64(r1)
/* 804194F4 003E2AB4  88 0D BC 50 */	lbz r0, lbl_80667DD0@sda21(r13)
/* 804194F8 003E2AB8  7C 00 07 75 */	extsb. r0, r0
/* 804194FC 003E2ABC  40 82 00 54 */	bne .L_80419550
/* 80419500 003E2AC0  3C 60 80 64 */	lis r3, lbl_8063B1E8@ha
/* 80419504 003E2AC4  38 00 00 00 */	li r0, 0
/* 80419508 003E2AC8  3B C3 B1 E8 */	addi r30, r3, lbl_8063B1E8@l
/* 8041950C 003E2ACC  98 03 B1 E8 */	stb r0, lbl_8063B1E8@l(r3)
/* 80419510 003E2AD0  3B BE 00 38 */	addi r29, r30, 0x38
/* 80419514 003E2AD4  3B FE 02 D8 */	addi r31, r30, 0x2d8
.L_80419518:
/* 80419518 003E2AD8  7F A3 EB 78 */	mr r3, r29
/* 8041951C 003E2ADC  4B FF F6 4D */	bl __ct__Q34nw4r3snd13RemoteSpeakerFv
/* 80419520 003E2AE0  3B BD 00 A8 */	addi r29, r29, 0xa8
/* 80419524 003E2AE4  7C 1D F8 40 */	cmplw r29, r31
/* 80419528 003E2AE8  41 80 FF F0 */	blt .L_80419518
/* 8041952C 003E2AEC  38 80 00 01 */	li r4, 1
/* 80419530 003E2AF0  38 A0 00 00 */	li r5, 0
/* 80419534 003E2AF4  38 60 00 02 */	li r3, 2
/* 80419538 003E2AF8  38 00 00 03 */	li r0, 3
/* 8041953C 003E2AFC  90 BE 00 6C */	stw r5, 0x6c(r30)
/* 80419540 003E2B00  90 9E 01 14 */	stw r4, 0x114(r30)
/* 80419544 003E2B04  90 7E 01 BC */	stw r3, 0x1bc(r30)
/* 80419548 003E2B08  90 1E 02 64 */	stw r0, 0x264(r30)
/* 8041954C 003E2B0C  98 8D BC 50 */	stb r4, lbl_80667DD0@sda21(r13)
.L_80419550:
/* 80419550 003E2B10  3F C0 80 64 */	lis r30, lbl_8063B1E8@ha
/* 80419554 003E2B14  3B DE B1 E8 */	addi r30, r30, lbl_8063B1E8@l
/* 80419558 003E2B18  4B EB AC 69 */	bl AXRmtGetSamplesLeft
/* 8041955C 003E2B1C  2C 03 00 28 */	cmpwi r3, 0x28
/* 80419560 003E2B20  41 80 00 58 */	blt .L_804195B8
/* 80419564 003E2B24  3B BE 00 38 */	addi r29, r30, 0x38
/* 80419568 003E2B28  3B E0 00 00 */	li r31, 0
.L_8041956C:
/* 8041956C 003E2B2C  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80419570 003E2B30  2C 00 00 04 */	cmpwi r0, 4
/* 80419574 003E2B34  40 82 00 20 */	bne .L_80419594
/* 80419578 003E2B38  7F E3 FB 78 */	mr r3, r31
/* 8041957C 003E2B3C  38 81 00 08 */	addi r4, r1, 8
/* 80419580 003E2B40  38 A0 00 28 */	li r5, 0x28
/* 80419584 003E2B44  4B EB AC 6D */	bl AXRmtGetSamples
/* 80419588 003E2B48  7F A3 EB 78 */	mr r3, r29
/* 8041958C 003E2B4C  38 81 00 08 */	addi r4, r1, 8
/* 80419590 003E2B50  4B FF F7 2D */	bl UpdateStreamData__Q34nw4r3snd13RemoteSpeakerFPCs
.L_80419594:
/* 80419594 003E2B54  7F A3 EB 78 */	mr r3, r29
/* 80419598 003E2B58  4B FF F6 51 */	bl Update__Q34nw4r3snd13RemoteSpeakerFv
/* 8041959C 003E2B5C  3B FF 00 01 */	addi r31, r31, 1
/* 804195A0 003E2B60  3B BD 00 A8 */	addi r29, r29, 0xa8
/* 804195A4 003E2B64  2C 1F 00 04 */	cmpwi r31, 4
/* 804195A8 003E2B68  3B DE 00 A8 */	addi r30, r30, 0xa8
/* 804195AC 003E2B6C  41 80 FF C0 */	blt .L_8041956C
/* 804195B0 003E2B70  38 60 00 28 */	li r3, 0x28
/* 804195B4 003E2B74  4B EB AD 0D */	bl AXRmtAdvancePtr
.L_804195B8:
/* 804195B8 003E2B78  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804195BC 003E2B7C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804195C0 003E2B80  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804195C4 003E2B84  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 804195C8 003E2B88  7C 08 03 A6 */	mtlr r0
/* 804195CC 003E2B8C  38 21 00 70 */	addi r1, r1, 0x70
/* 804195D0 003E2B90  4E 80 00 20 */	blr 
