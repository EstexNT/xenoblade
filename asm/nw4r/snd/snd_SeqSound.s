.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#__ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager<Q44nw4r3snd6detail8SeqSound>ii
.fn __ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager_Q44nw4r3snd6detail8SeqSound_ii, global
/* 8041ABBC 003E417C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041ABC0 003E4180  7C 08 02 A6 */	mflr r0
/* 8041ABC4 003E4184  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041ABC8 003E4188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041ABCC 003E418C  7C 9F 23 78 */	mr r31, r4
/* 8041ABD0 003E4190  7C A4 2B 78 */	mr r4, r5
/* 8041ABD4 003E4194  7C C5 33 78 */	mr r5, r6
/* 8041ABD8 003E4198  93 C1 00 08 */	stw r30, 8(r1)
/* 8041ABDC 003E419C  7C 7E 1B 78 */	mr r30, r3
/* 8041ABE0 003E41A0  4B FF 78 C1 */	bl __ct__Q44nw4r3snd6detail10BasicSoundFii
/* 8041ABE4 003E41A4  3C 80 80 57 */	lis r4, lbl_8056E440@ha
/* 8041ABE8 003E41A8  38 7E 01 0C */	addi r3, r30, 0x10c
/* 8041ABEC 003E41AC  38 84 E4 40 */	addi r4, r4, lbl_8056E440@l
/* 8041ABF0 003E41B0  90 9E 00 00 */	stw r4, 0(r30)
/* 8041ABF4 003E41B4  4B FF EB 61 */	bl __ct__Q44nw4r3snd6detail9SeqPlayerFv
/* 8041ABF8 003E41B8  3C 80 80 57 */	lis r4, lbl_8056E478@ha
/* 8041ABFC 003E41BC  38 00 00 00 */	li r0, 0
/* 8041AC00 003E41C0  38 84 E4 78 */	addi r4, r4, lbl_8056E478@l
/* 8041AC04 003E41C4  98 1E 02 A4 */	stb r0, 0x2a4(r30)
/* 8041AC08 003E41C8  7F C3 F3 78 */	mr r3, r30
/* 8041AC0C 003E41CC  98 1E 02 A5 */	stb r0, 0x2a5(r30)
/* 8041AC10 003E41D0  90 1E 02 90 */	stw r0, 0x290(r30)
/* 8041AC14 003E41D4  93 FE 02 94 */	stw r31, 0x294(r30)
/* 8041AC18 003E41D8  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 8041AC1C 003E41DC  90 1E 02 A8 */	stw r0, 0x2a8(r30)
/* 8041AC20 003E41E0  90 1E 04 B0 */	stw r0, 0x4b0(r30)
/* 8041AC24 003E41E4  90 1E 04 B4 */	stw r0, 0x4b4(r30)
/* 8041AC28 003E41E8  98 1E 04 B8 */	stb r0, 0x4b8(r30)
/* 8041AC2C 003E41EC  90 9E 04 AC */	stw r4, 0x4ac(r30)
/* 8041AC30 003E41F0  90 1E 04 BC */	stw r0, 0x4bc(r30)
/* 8041AC34 003E41F4  90 1E 04 C0 */	stw r0, 0x4c0(r30)
/* 8041AC38 003E41F8  90 1E 04 C8 */	stw r0, 0x4c8(r30)
/* 8041AC3C 003E41FC  90 1E 04 CC */	stw r0, 0x4cc(r30)
/* 8041AC40 003E4200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041AC44 003E4204  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041AC48 003E4208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041AC4C 003E420C  7C 08 03 A6 */	mtlr r0
/* 8041AC50 003E4210  38 21 00 10 */	addi r1, r1, 0x10
/* 8041AC54 003E4214  4E 80 00 20 */	blr 
.endfn __ct__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail49SoundInstanceManager_Q44nw4r3snd6detail8SeqSound_ii

.fn __dt__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv, global
/* 8041AC58 003E4218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041AC5C 003E421C  7C 08 02 A6 */	mflr r0
/* 8041AC60 003E4220  2C 03 00 00 */	cmpwi r3, 0
/* 8041AC64 003E4224  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041AC68 003E4228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041AC6C 003E422C  7C 9F 23 78 */	mr r31, r4
/* 8041AC70 003E4230  93 C1 00 08 */	stw r30, 8(r1)
/* 8041AC74 003E4234  7C 7E 1B 78 */	mr r30, r3
/* 8041AC78 003E4238  41 82 00 1C */	beq .L_8041AC94
/* 8041AC7C 003E423C  38 80 00 00 */	li r4, 0
/* 8041AC80 003E4240  48 00 AB 05 */	bl __dt__Q44nw4r3snd6detail4TaskFv
/* 8041AC84 003E4244  2C 1F 00 00 */	cmpwi r31, 0
/* 8041AC88 003E4248  40 81 00 0C */	ble .L_8041AC94
/* 8041AC8C 003E424C  7F C3 F3 78 */	mr r3, r30
/* 8041AC90 003E4250  48 01 9F 9D */	bl __dl__FPv
.L_8041AC94:
/* 8041AC94 003E4254  7F C3 F3 78 */	mr r3, r30
/* 8041AC98 003E4258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041AC9C 003E425C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041ACA0 003E4260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041ACA4 003E4264  7C 08 03 A6 */	mtlr r0
/* 8041ACA8 003E4268  38 21 00 10 */	addi r1, r1, 0x10
/* 8041ACAC 003E426C  4E 80 00 20 */	blr 
.endfn __dt__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv

.fn InitParam__Q44nw4r3snd6detail8SeqSoundFv, global
/* 8041ACB0 003E4270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041ACB4 003E4274  7C 08 02 A6 */	mflr r0
/* 8041ACB8 003E4278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041ACBC 003E427C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041ACC0 003E4280  7C 7F 1B 78 */	mr r31, r3
/* 8041ACC4 003E4284  4B FF 78 B9 */	bl InitParam__Q44nw4r3snd6detail10BasicSoundFv
/* 8041ACC8 003E4288  38 00 00 00 */	li r0, 0
/* 8041ACCC 003E428C  90 1F 02 A0 */	stw r0, 0x2a0(r31)
/* 8041ACD0 003E4290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041ACD4 003E4294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041ACD8 003E4298  7C 08 03 A6 */	mtlr r0
/* 8041ACDC 003E429C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041ACE0 003E42A0  4E 80 00 20 */	blr 
.endfn InitParam__Q44nw4r3snd6detail8SeqSoundFv

.fn Setup__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail17SeqTrackAllocatorUlPQ44nw4r3snd6detail14NoteOnCallback, global
/* 8041ACE4 003E42A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041ACE8 003E42A8  7C 08 02 A6 */	mflr r0
/* 8041ACEC 003E42AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041ACF0 003E42B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8041ACF4 003E42B4  7C DF 33 78 */	mr r31, r6
/* 8041ACF8 003E42B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8041ACFC 003E42BC  7C BE 2B 78 */	mr r30, r5
/* 8041AD00 003E42C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8041AD04 003E42C4  7C 9D 23 78 */	mr r29, r4
/* 8041AD08 003E42C8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8041AD0C 003E42CC  7C 7C 1B 78 */	mr r28, r3
/* 8041AD10 003E42D0  81 83 00 00 */	lwz r12, 0(r3)
/* 8041AD14 003E42D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8041AD18 003E42D8  7D 89 03 A6 */	mtctr r12
/* 8041AD1C 003E42DC  4E 80 04 21 */	bctrl 
/* 8041AD20 003E42E0  7F 83 E3 78 */	mr r3, r28
/* 8041AD24 003E42E4  4B FF 8A 2D */	bl GetVoiceOutCount__Q44nw4r3snd6detail10BasicSoundCFv
/* 8041AD28 003E42E8  7C 66 1B 78 */	mr r6, r3
/* 8041AD2C 003E42EC  7F A4 EB 78 */	mr r4, r29
/* 8041AD30 003E42F0  7F C5 F3 78 */	mr r5, r30
/* 8041AD34 003E42F4  7F E7 FB 78 */	mr r7, r31
/* 8041AD38 003E42F8  38 7C 01 0C */	addi r3, r28, 0x10c
/* 8041AD3C 003E42FC  4B FF ED FD */	bl Setup__Q44nw4r3snd6detail9SeqPlayerFPQ44nw4r3snd6detail17SeqTrackAllocatorUliPQ44nw4r3snd6detail14NoteOnCallback
/* 8041AD40 003E4300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041AD44 003E4304  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041AD48 003E4308  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8041AD4C 003E430C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8041AD50 003E4310  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8041AD54 003E4314  7C 08 03 A6 */	mtlr r0
/* 8041AD58 003E4318  38 21 00 20 */	addi r1, r1, 0x20
/* 8041AD5C 003E431C  4E 80 00 20 */	blr 
.endfn Setup__Q44nw4r3snd6detail8SeqSoundFPQ44nw4r3snd6detail17SeqTrackAllocatorUlPQ44nw4r3snd6detail14NoteOnCallback

.fn Prepare__Q44nw4r3snd6detail8SeqSoundFPCvlQ54nw4r3snd6detail9SeqPlayer10OffsetTypei, global
/* 8041AD60 003E4320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041AD64 003E4324  7C 08 02 A6 */	mflr r0
/* 8041AD68 003E4328  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041AD6C 003E432C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8041AD70 003E4330  7C FF 3B 78 */	mr r31, r7
/* 8041AD74 003E4334  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8041AD78 003E4338  7C DE 33 78 */	mr r30, r6
/* 8041AD7C 003E433C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8041AD80 003E4340  7C 7D 1B 78 */	mr r29, r3
/* 8041AD84 003E4344  38 63 01 0C */	addi r3, r3, 0x10c
/* 8041AD88 003E4348  4B FF F0 45 */	bl SetSeqData__Q44nw4r3snd6detail9SeqPlayerFPCvl
/* 8041AD8C 003E434C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041AD90 003E4350  40 81 00 14 */	ble .L_8041ADA4
/* 8041AD94 003E4354  7F C4 F3 78 */	mr r4, r30
/* 8041AD98 003E4358  7F E5 FB 78 */	mr r5, r31
/* 8041AD9C 003E435C  38 7D 01 0C */	addi r3, r29, 0x10c
/* 8041ADA0 003E4360  4B FF F2 F9 */	bl Skip__Q44nw4r3snd6detail9SeqPlayerFQ54nw4r3snd6detail9SeqPlayer10OffsetTypei
.L_8041ADA4:
/* 8041ADA4 003E4364  38 00 00 01 */	li r0, 1
/* 8041ADA8 003E4368  98 1D 02 A5 */	stb r0, 0x2a5(r29)
/* 8041ADAC 003E436C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041ADB0 003E4370  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041ADB4 003E4374  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8041ADB8 003E4378  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8041ADBC 003E437C  7C 08 03 A6 */	mtlr r0
/* 8041ADC0 003E4380  38 21 00 20 */	addi r1, r1, 0x20
/* 8041ADC4 003E4384  4E 80 00 20 */	blr 
.endfn Prepare__Q44nw4r3snd6detail8SeqSoundFPCvlQ54nw4r3snd6detail9SeqPlayer10OffsetTypei

.fn Prepare__Q44nw4r3snd6detail8SeqSoundFPQ34nw4r2ut10FileStreamlQ54nw4r3snd6detail9SeqPlayer10OffsetTypei, global
/* 8041ADC8 003E4388  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041ADCC 003E438C  7C 08 02 A6 */	mflr r0
/* 8041ADD0 003E4390  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041ADD4 003E4394  38 00 00 01 */	li r0, 1
/* 8041ADD8 003E4398  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8041ADDC 003E439C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8041ADE0 003E43A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8041ADE4 003E43A4  7C 7D 1B 78 */	mr r29, r3
/* 8041ADE8 003E43A8  83 C3 00 04 */	lwz r30, 4(r3)
/* 8041ADEC 003E43AC  90 83 02 A8 */	stw r4, 0x2a8(r3)
/* 8041ADF0 003E43B0  2C 1E 00 00 */	cmpwi r30, 0
/* 8041ADF4 003E43B4  90 A3 02 98 */	stw r5, 0x298(r3)
/* 8041ADF8 003E43B8  90 C3 02 9C */	stw r6, 0x29c(r3)
/* 8041ADFC 003E43BC  90 E3 02 A0 */	stw r7, 0x2a0(r3)
/* 8041AE00 003E43C0  98 03 02 A4 */	stb r0, 0x2a4(r3)
/* 8041AE04 003E43C4  40 82 00 0C */	bne .L_8041AE10
/* 8041AE08 003E43C8  38 00 00 00 */	li r0, 0
/* 8041AE0C 003E43CC  48 00 00 78 */	b .L_8041AE84
.L_8041AE10:
/* 8041AE10 003E43D0  81 84 00 00 */	lwz r12, 0(r4)
/* 8041AE14 003E43D4  7C 83 23 78 */	mr r3, r4
/* 8041AE18 003E43D8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8041AE1C 003E43DC  7D 89 03 A6 */	mtctr r12
/* 8041AE20 003E43E0  4E 80 04 21 */	bctrl 
/* 8041AE24 003E43E4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8041AE28 003E43E8  7C 7F 1B 78 */	mr r31, r3
/* 8041AE2C 003E43EC  7F C3 F3 78 */	mr r3, r30
/* 8041AE30 003E43F0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8041AE34 003E43F4  7F E4 FB 78 */	mr r4, r31
/* 8041AE38 003E43F8  7D 89 03 A6 */	mtctr r12
/* 8041AE3C 003E43FC  4E 80 04 21 */	bctrl 
/* 8041AE40 003E4400  2C 03 00 00 */	cmpwi r3, 0
/* 8041AE44 003E4404  40 82 00 0C */	bne .L_8041AE50
/* 8041AE48 003E4408  38 00 00 00 */	li r0, 0
/* 8041AE4C 003E440C  48 00 00 38 */	b .L_8041AE84
.L_8041AE50:
/* 8041AE50 003E4410  80 1D 02 A8 */	lwz r0, 0x2a8(r29)
/* 8041AE54 003E4414  3C 80 80 42 */	lis r4, NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvPv@ha
/* 8041AE58 003E4418  38 84 AE BC */	addi r4, r4, NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvPv@l
/* 8041AE5C 003E441C  90 7D 04 C0 */	stw r3, 0x4c0(r29)
/* 8041AE60 003E4420  90 1D 04 BC */	stw r0, 0x4bc(r29)
/* 8041AE64 003E4424  93 FD 04 C4 */	stw r31, 0x4c4(r29)
/* 8041AE68 003E4428  90 9D 04 C8 */	stw r4, 0x4c8(r29)
/* 8041AE6C 003E442C  93 BD 04 CC */	stw r29, 0x4cc(r29)
/* 8041AE70 003E4430  48 00 A9 55 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 8041AE74 003E4434  38 9D 04 AC */	addi r4, r29, 0x4ac
/* 8041AE78 003E4438  38 A0 00 01 */	li r5, 1
/* 8041AE7C 003E443C  48 00 AA C1 */	bl AppendTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4TaskQ54nw4r3snd6detail11TaskManager12TaskPriority
/* 8041AE80 003E4440  38 00 00 01 */	li r0, 1
.L_8041AE84:
/* 8041AE84 003E4444  2C 00 00 00 */	cmpwi r0, 0
/* 8041AE88 003E4448  40 82 00 18 */	bne .L_8041AEA0
/* 8041AE8C 003E444C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8041AE90 003E4450  7F A3 EB 78 */	mr r3, r29
/* 8041AE94 003E4454  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8041AE98 003E4458  7D 89 03 A6 */	mtctr r12
/* 8041AE9C 003E445C  4E 80 04 21 */	bctrl 
.L_8041AEA0:
/* 8041AEA0 003E4460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041AEA4 003E4464  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041AEA8 003E4468  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8041AEAC 003E446C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8041AEB0 003E4470  7C 08 03 A6 */	mtlr r0
/* 8041AEB4 003E4474  38 21 00 20 */	addi r1, r1, 0x20
/* 8041AEB8 003E4478  4E 80 00 20 */	blr
.endfn Prepare__Q44nw4r3snd6detail8SeqSoundFPQ34nw4r2ut10FileStreamlQ54nw4r3snd6detail9SeqPlayer10OffsetTypei

.fn NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvPv, global
/* 8041AEBC 003E447C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041AEC0 003E4480  7C 08 02 A6 */	mflr r0
/* 8041AEC4 003E4484  2C 03 00 00 */	cmpwi r3, 0
/* 8041AEC8 003E4488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041AECC 003E448C  38 00 00 00 */	li r0, 0
/* 8041AED0 003E4490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041AED4 003E4494  7C BF 2B 78 */	mr r31, r5
/* 8041AED8 003E4498  98 05 02 A4 */	stb r0, 0x2a4(r5)
/* 8041AEDC 003E449C  40 82 00 14 */	bne .L_8041AEF0
/* 8041AEE0 003E44A0  7F E3 FB 78 */	mr r3, r31
/* 8041AEE4 003E44A4  38 80 00 00 */	li r4, 0
/* 8041AEE8 003E44A8  4B FF 78 01 */	bl Stop__Q44nw4r3snd6detail10BasicSoundFi
/* 8041AEEC 003E44AC  48 00 00 30 */	b .L_8041AF1C
.L_8041AEF0:
/* 8041AEF0 003E44B0  38 65 01 0C */	addi r3, r5, 0x10c
/* 8041AEF4 003E44B4  80 A5 02 98 */	lwz r5, 0x298(r5)
/* 8041AEF8 003E44B8  4B FF EE D5 */	bl SetSeqData__Q44nw4r3snd6detail9SeqPlayerFPCvl
/* 8041AEFC 003E44BC  80 BF 02 A0 */	lwz r5, 0x2a0(r31)
/* 8041AF00 003E44C0  2C 05 00 00 */	cmpwi r5, 0
/* 8041AF04 003E44C4  40 81 00 10 */	ble .L_8041AF14
/* 8041AF08 003E44C8  80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 8041AF0C 003E44CC  38 7F 01 0C */	addi r3, r31, 0x10c
/* 8041AF10 003E44D0  4B FF F1 89 */	bl Skip__Q44nw4r3snd6detail9SeqPlayerFQ54nw4r3snd6detail9SeqPlayer10OffsetTypei
.L_8041AF14:
/* 8041AF14 003E44D4  38 00 00 01 */	li r0, 1
/* 8041AF18 003E44D8  98 1F 02 A5 */	stb r0, 0x2a5(r31)
.L_8041AF1C:
/* 8041AF1C 003E44DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041AF20 003E44E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041AF24 003E44E4  7C 08 03 A6 */	mtlr r0
/* 8041AF28 003E44E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8041AF2C 003E44EC  4E 80 00 20 */	blr 
.endfn NotifyLoadAsyncEndSeqData__Q44nw4r3snd6detail8SeqSoundFbPCvPv

.fn Shutdown__Q44nw4r3snd6detail8SeqSoundFv, global
/* 8041AF30 003E44F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041AF34 003E44F4  7C 08 02 A6 */	mflr r0
/* 8041AF38 003E44F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041AF3C 003E44FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8041AF40 003E4500  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8041AF44 003E4504  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8041AF48 003E4508  7C 7D 1B 78 */	mr r29, r3
/* 8041AF4C 003E450C  88 03 02 A4 */	lbz r0, 0x2a4(r3)
/* 8041AF50 003E4510  2C 00 00 00 */	cmpwi r0, 0
/* 8041AF54 003E4514  41 82 00 10 */	beq .L_8041AF64
/* 8041AF58 003E4518  48 00 A8 6D */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 8041AF5C 003E451C  38 9D 04 AC */	addi r4, r29, 0x4ac
/* 8041AF60 003E4520  48 00 AD 3D */	bl CancelTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4Task
.L_8041AF64:
/* 8041AF64 003E4524  80 7D 02 A8 */	lwz r3, 0x2a8(r29)
/* 8041AF68 003E4528  2C 03 00 00 */	cmpwi r3, 0
/* 8041AF6C 003E452C  41 82 00 1C */	beq .L_8041AF88
/* 8041AF70 003E4530  81 83 00 00 */	lwz r12, 0(r3)
/* 8041AF74 003E4534  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8041AF78 003E4538  7D 89 03 A6 */	mtctr r12
/* 8041AF7C 003E453C  4E 80 04 21 */	bctrl 
/* 8041AF80 003E4540  38 00 00 00 */	li r0, 0
/* 8041AF84 003E4544  90 1D 02 A8 */	stw r0, 0x2a8(r29)
.L_8041AF88:
/* 8041AF88 003E4548  7F A3 EB 78 */	mr r3, r29
/* 8041AF8C 003E454C  4B FF 86 15 */	bl Shutdown__Q44nw4r3snd6detail10BasicSoundFv
/* 8041AF90 003E4550  83 DD 02 94 */	lwz r30, 0x294(r29)
/* 8041AF94 003E4554  3B FE 00 10 */	addi r31, r30, 0x10
/* 8041AF98 003E4558  7F E3 FB 78 */	mr r3, r31
/* 8041AF9C 003E455C  4B F3 EC C5 */	bl OSLockMutex
/* 8041AFA0 003E4560  80 1E 00 04 */	lwz r0, 4(r30)
/* 8041AFA4 003E4564  2C 00 00 00 */	cmpwi r0, 0
/* 8041AFA8 003E4568  40 82 00 10 */	bne .L_8041AFB8
/* 8041AFAC 003E456C  7F E3 FB 78 */	mr r3, r31
/* 8041AFB0 003E4570  4B F3 ED 91 */	bl OSUnlockMutex
/* 8041AFB4 003E4574  48 00 00 3C */	b .L_8041AFF0
.L_8041AFB8:
/* 8041AFB8 003E4578  38 7E 00 04 */	addi r3, r30, 4
/* 8041AFBC 003E457C  38 9D 00 EC */	addi r4, r29, 0xec
/* 8041AFC0 003E4580  48 01 05 8D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8041AFC4 003E4584  81 9D 00 00 */	lwz r12, 0(r29)
/* 8041AFC8 003E4588  7F A3 EB 78 */	mr r3, r29
/* 8041AFCC 003E458C  38 80 FF FF */	li r4, -1
/* 8041AFD0 003E4590  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8041AFD4 003E4594  7D 89 03 A6 */	mtctr r12
/* 8041AFD8 003E4598  4E 80 04 21 */	bctrl 
/* 8041AFDC 003E459C  7F C3 F3 78 */	mr r3, r30
/* 8041AFE0 003E45A0  7F A4 EB 78 */	mr r4, r29
/* 8041AFE4 003E45A4  4B FF BF 35 */	bl FreeImpl__Q44nw4r3snd6detail8PoolImplFPv
/* 8041AFE8 003E45A8  7F E3 FB 78 */	mr r3, r31
/* 8041AFEC 003E45AC  4B F3 ED 55 */	bl OSUnlockMutex
.L_8041AFF0:
/* 8041AFF0 003E45B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041AFF4 003E45B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041AFF8 003E45B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8041AFFC 003E45BC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8041B000 003E45C0  7C 08 03 A6 */	mtlr r0
/* 8041B004 003E45C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8041B008 003E45C8  4E 80 00 20 */	blr
.endfn Shutdown__Q44nw4r3snd6detail8SeqSoundFv


.fn __dt__Q44nw4r3snd6detail8SeqSoundFv, global
/* 8041B00C 003E45CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041B010 003E45D0  7C 08 02 A6 */	mflr r0
/* 8041B014 003E45D4  2C 03 00 00 */	cmpwi r3, 0
/* 8041B018 003E45D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041B01C 003E45DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041B020 003E45E0  7C 9F 23 78 */	mr r31, r4
/* 8041B024 003E45E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8041B028 003E45E8  7C 7E 1B 78 */	mr r30, r3
/* 8041B02C 003E45EC  41 82 00 30 */	beq .L_8041B05C
/* 8041B030 003E45F0  34 63 04 AC */	addic. r3, r3, 0x4ac
/* 8041B034 003E45F4  41 82 00 0C */	beq .L_8041B040
/* 8041B038 003E45F8  38 80 00 00 */	li r4, 0
/* 8041B03C 003E45FC  48 00 A7 49 */	bl __dt__Q44nw4r3snd6detail4TaskFv
.L_8041B040:
/* 8041B040 003E4600  38 7E 01 0C */	addi r3, r30, 0x10c
/* 8041B044 003E4604  38 80 FF FF */	li r4, -1
/* 8041B048 003E4608  4B FF E8 55 */	bl __dt__Q44nw4r3snd6detail9SeqPlayerFv
/* 8041B04C 003E460C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041B050 003E4610  40 81 00 0C */	ble .L_8041B05C
/* 8041B054 003E4614  7F C3 F3 78 */	mr r3, r30
/* 8041B058 003E4618  48 01 9B D5 */	bl __dl__FPv
.L_8041B05C:
/* 8041B05C 003E461C  7F C3 F3 78 */	mr r3, r30
/* 8041B060 003E4620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041B064 003E4624  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041B068 003E4628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041B06C 003E462C  7C 08 03 A6 */	mtlr r0
/* 8041B070 003E4630  38 21 00 10 */	addi r1, r1, 0x10
/* 8041B074 003E4634  4E 80 00 20 */	blr 
.endfn __dt__Q44nw4r3snd6detail8SeqSoundFv

.fn SetChannelPriority__Q44nw4r3snd6detail8SeqSoundFi, global
/* 8041B078 003E4638  38 63 01 0C */	addi r3, r3, 0x10c
/* 8041B07C 003E463C  4B FF F0 E0 */	b SetChannelPriority__Q44nw4r3snd6detail9SeqPlayerFi
.endfn SetChannelPriority__Q44nw4r3snd6detail8SeqSoundFi

.fn SetReleasePriorityFix__Q44nw4r3snd6detail8SeqSoundFb, global
/* 8041B080 003E4640  38 63 01 0C */	addi r3, r3, 0x10c
/* 8041B084 003E4644  4B FF F0 E0 */	b SetReleasePriorityFix__Q44nw4r3snd6detail9SeqPlayerFb
.endfn SetReleasePriorityFix__Q44nw4r3snd6detail8SeqSoundFb

.fn SetSeqUserprocCallback__Q44nw4r3snd6detail8SeqSoundFPFUsPQ34nw4r3snd24SeqUserprocCallbackParamPv_vPv, global
/* 8041B088 003E4648  38 63 01 0C */	addi r3, r3, 0x10c
/* 8041B08C 003E464C  4B FF F0 E0 */	b SetSeqUserprocCallback__Q44nw4r3snd6detail9SeqPlayerFPFUsPQ34nw4r3snd24SeqUserprocCallbackParamPv_vPv
.endfn SetSeqUserprocCallback__Q44nw4r3snd6detail8SeqSoundFPFUsPQ34nw4r3snd24SeqUserprocCallbackParamPv_vPv


.fn OnUpdatePlayerPriority__Q44nw4r3snd6detail8SeqSoundFv, global
/* 8041B090 003E4650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041B094 003E4654  7C 08 02 A6 */	mflr r0
/* 8041B098 003E4658  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041B09C 003E465C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8041B0A0 003E4660  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8041B0A4 003E4664  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8041B0A8 003E4668  93 81 00 10 */	stw r28, 0x10(r1)
/* 8041B0AC 003E466C  7C 7C 1B 78 */	mr r28, r3
/* 8041B0B0 003E4670  88 83 00 94 */	lbz r4, 0x94(r3)
/* 8041B0B4 003E4674  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8041B0B8 003E4678  7C 84 02 14 */	add r4, r4, r0
/* 8041B0BC 003E467C  2C 04 00 7F */	cmpwi r4, 0x7f
/* 8041B0C0 003E4680  40 81 00 0C */	ble .L_8041B0CC
/* 8041B0C4 003E4684  3B A0 00 7F */	li r29, 0x7f
/* 8041B0C8 003E4688  48 00 00 0C */	b .L_8041B0D4
.L_8041B0CC:
/* 8041B0CC 003E468C  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 8041B0D0 003E4690  7C 9D 00 78 */	andc r29, r4, r0
.L_8041B0D4:
/* 8041B0D4 003E4694  83 C3 02 94 */	lwz r30, 0x294(r3)
/* 8041B0D8 003E4698  3B FE 00 10 */	addi r31, r30, 0x10
/* 8041B0DC 003E469C  7F E3 FB 78 */	mr r3, r31
/* 8041B0E0 003E46A0  4B F3 EB 81 */	bl OSLockMutex
/* 8041B0E4 003E46A4  3B 9C 00 EC */	addi r28, r28, 0xec
/* 8041B0E8 003E46A8  38 7E 00 04 */	addi r3, r30, 4
/* 8041B0EC 003E46AC  7F 84 E3 78 */	mr r4, r28
/* 8041B0F0 003E46B0  48 01 04 5D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8041B0F4 003E46B4  80 7E 00 08 */	lwz r3, 8(r30)
/* 8041B0F8 003E46B8  38 1E 00 08 */	addi r0, r30, 8
/* 8041B0FC 003E46BC  48 00 00 34 */	b .L_8041B130
.L_8041B100:
/* 8041B100 003E46C0  88 A3 FF A8 */	lbz r5, -0x58(r3)
/* 8041B104 003E46C4  80 83 FF 64 */	lwz r4, -0x9c(r3)
/* 8041B108 003E46C8  7C A5 22 14 */	add r5, r5, r4
/* 8041B10C 003E46CC  2C 05 00 7F */	cmpwi r5, 0x7f
/* 8041B110 003E46D0  40 81 00 0C */	ble .L_8041B11C
/* 8041B114 003E46D4  38 80 00 7F */	li r4, 0x7f
/* 8041B118 003E46D8  48 00 00 0C */	b .L_8041B124
.L_8041B11C:
/* 8041B11C 003E46DC  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 8041B120 003E46E0  7C A4 20 78 */	andc r4, r5, r4
.L_8041B124:
/* 8041B124 003E46E4  7C 1D 20 00 */	cmpw r29, r4
/* 8041B128 003E46E8  41 80 00 10 */	blt .L_8041B138
/* 8041B12C 003E46EC  80 63 00 00 */	lwz r3, 0(r3)
.L_8041B130:
/* 8041B130 003E46F0  7C 03 00 40 */	cmplw r3, r0
/* 8041B134 003E46F4  40 82 FF CC */	bne .L_8041B100
.L_8041B138:
/* 8041B138 003E46F8  90 61 00 08 */	stw r3, 8(r1)
/* 8041B13C 003E46FC  7F 85 E3 78 */	mr r5, r28
/* 8041B140 003E4700  38 7E 00 04 */	addi r3, r30, 4
/* 8041B144 003E4704  38 81 00 08 */	addi r4, r1, 8
/* 8041B148 003E4708  48 01 03 D9 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 8041B14C 003E470C  7F E3 FB 78 */	mr r3, r31
/* 8041B150 003E4710  4B F3 EB F1 */	bl OSUnlockMutex
/* 8041B154 003E4714  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041B158 003E4718  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041B15C 003E471C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8041B160 003E4720  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8041B164 003E4724  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8041B168 003E4728  7C 08 03 A6 */	mtlr r0
/* 8041B16C 003E472C  38 21 00 20 */	addi r1, r1, 0x20
/* 8041B170 003E4730  4E 80 00 20 */	blr
.endfn OnUpdatePlayerPriority__Q44nw4r3snd6detail8SeqSoundFv


.fn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv, global
/* 8041B174 003E4734  80 63 02 90 */	lwz r3, 0x290(r3)
/* 8041B178 003E4738  7C 03 00 D0 */	neg r0, r3
/* 8041B17C 003E473C  7C 00 1B 78 */	or r0, r0, r3
/* 8041B180 003E4740  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8041B184 003E4744  4E 80 00 20 */	blr
.endfn IsAttachedTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv


.fn DetachTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv, global
/* 8041B188 003E4748  80 63 02 90 */	lwz r3, 0x290(r3)
/* 8041B18C 003E474C  48 00 01 78 */	b DetachSound__Q34nw4r3snd14SeqSoundHandleFv
.endfn DetachTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv


.fn Execute__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv, global
/* 8041B190 003E4750  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041B194 003E4754  7C 08 02 A6 */	mflr r0
/* 8041B198 003E4758  38 80 00 00 */	li r4, 0
/* 8041B19C 003E475C  38 A0 00 00 */	li r5, 0
/* 8041B1A0 003E4760  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041B1A4 003E4764  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8041B1A8 003E4768  7C 7F 1B 78 */	mr r31, r3
/* 8041B1AC 003E476C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8041B1B0 003E4770  81 83 00 00 */	lwz r12, 0(r3)
/* 8041B1B4 003E4774  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8041B1B8 003E4778  7D 89 03 A6 */	mtctr r12
/* 8041B1BC 003E477C  4E 80 04 21 */	bctrl 
/* 8041B1C0 003E4780  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8041B1C4 003E4784  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8041B1C8 003E4788  81 83 00 00 */	lwz r12, 0(r3)
/* 8041B1CC 003E478C  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8041B1D0 003E4790  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8041B1D4 003E4794  7D 89 03 A6 */	mtctr r12
/* 8041B1D8 003E4798  4E 80 04 21 */	bctrl 
/* 8041B1DC 003E479C  38 00 00 00 */	li r0, 0
/* 8041B1E0 003E47A0  2C 03 FF FD */	cmpwi r3, -3
/* 8041B1E4 003E47A4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8041B1E8 003E47A8  40 82 00 28 */	bne .L_8041B210
/* 8041B1EC 003E47AC  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8041B1F0 003E47B0  2C 0C 00 00 */	cmpwi r12, 0
/* 8041B1F4 003E47B4  41 82 00 80 */	beq .L_8041B274
/* 8041B1F8 003E47B8  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8041B1FC 003E47BC  38 60 00 00 */	li r3, 0
/* 8041B200 003E47C0  38 80 00 00 */	li r4, 0
/* 8041B204 003E47C4  7D 89 03 A6 */	mtctr r12
/* 8041B208 003E47C8  4E 80 04 21 */	bctrl 
/* 8041B20C 003E47CC  48 00 00 68 */	b .L_8041B274
.L_8041B210:
/* 8041B210 003E47D0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8041B214 003E47D4  7C 03 00 00 */	cmpw r3, r0
/* 8041B218 003E47D8  41 82 00 28 */	beq .L_8041B240
/* 8041B21C 003E47DC  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8041B220 003E47E0  2C 0C 00 00 */	cmpwi r12, 0
/* 8041B224 003E47E4  41 82 00 50 */	beq .L_8041B274
/* 8041B228 003E47E8  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8041B22C 003E47EC  38 60 00 00 */	li r3, 0
/* 8041B230 003E47F0  38 80 00 00 */	li r4, 0
/* 8041B234 003E47F4  7D 89 03 A6 */	mtctr r12
/* 8041B238 003E47F8  4E 80 04 21 */	bctrl 
/* 8041B23C 003E47FC  48 00 00 38 */	b .L_8041B274
.L_8041B240:
/* 8041B240 003E4800  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8041B244 003E4804  38 61 00 08 */	addi r3, r1, 8
/* 8041B248 003E4808  4B FF E3 8D */	bl __ct__Q44nw4r3snd6detail13SeqFileReaderFPCv
/* 8041B24C 003E480C  38 61 00 08 */	addi r3, r1, 8
/* 8041B250 003E4810  4B FF E3 F1 */	bl GetBaseAddress__Q44nw4r3snd6detail13SeqFileReaderCFv
/* 8041B254 003E4814  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8041B258 003E4818  2C 0C 00 00 */	cmpwi r12, 0
/* 8041B25C 003E481C  41 82 00 18 */	beq .L_8041B274
/* 8041B260 003E4820  7C 64 1B 78 */	mr r4, r3
/* 8041B264 003E4824  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 8041B268 003E4828  38 60 00 01 */	li r3, 1
/* 8041B26C 003E482C  7D 89 03 A6 */	mtctr r12
/* 8041B270 003E4830  4E 80 04 21 */	bctrl 
.L_8041B274:
/* 8041B274 003E4834  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041B278 003E4838  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041B27C 003E483C  7C 08 03 A6 */	mtlr r0
/* 8041B280 003E4840  38 21 00 20 */	addi r1, r1, 0x20
/* 8041B284 003E4844  4E 80 00 20 */	blr
.endfn Execute__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv


.fn Cancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv, global
/* 8041B288 003E4848  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8041B28C 003E484C  2C 0C 00 00 */	cmpwi r12, 0
/* 8041B290 003E4850  4D 82 00 20 */	beqlr 
/* 8041B294 003E4854  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 8041B298 003E4858  38 60 00 00 */	li r3, 0
/* 8041B29C 003E485C  38 80 00 00 */	li r4, 0
/* 8041B2A0 003E4860  7D 89 03 A6 */	mtctr r12
/* 8041B2A4 003E4864  4E 80 04 20 */	bctr 
/* 8041B2A8 003E4868  4E 80 00 20 */	blr
.endfn Cancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv


.fn OnCancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv, global
/* 8041B2AC 003E486C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8041B2B0 003E4870  38 00 00 00 */	li r0, 0
/* 8041B2B4 003E4874  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8041B2B8 003E4878  2C 04 00 00 */	cmpwi r4, 0
/* 8041B2BC 003E487C  4D 82 00 20 */	beqlr 
/* 8041B2C0 003E4880  81 84 00 00 */	lwz r12, 0(r4)
/* 8041B2C4 003E4884  7C 83 23 78 */	mr r3, r4
/* 8041B2C8 003E4888  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8041B2CC 003E488C  7D 89 03 A6 */	mtctr r12
/* 8041B2D0 003E4890  4E 80 04 20 */	bctr 
/* 8041B2D4 003E4894  4E 80 00 20 */	blr 
.endfn OnCancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv

.fn GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv, global
/* 8041B2D8 003E4898  38 63 01 0C */	addi r3, r3, 0x10c
/* 8041B2DC 003E489C  4E 80 00 20 */	blr 
.endfn GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv

.fn GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv, global
/* 8041B2E0 003E48A0  38 63 01 0C */	addi r3, r3, 0x10c
/* 8041B2E4 003E48A4  4E 80 00 20 */	blr 
.endfn GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv

.fn IsPrepared__Q44nw4r3snd6detail8SeqSoundCFv, global
/* 8041B2E8 003E48A8  88 63 02 A5 */	lbz r3, 0x2a5(r3)
/* 8041B2EC 003E48AC  4E 80 00 20 */	blr 
.endfn IsPrepared__Q44nw4r3snd6detail8SeqSoundCFv

.fn GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv, global
/* 8041B2F0 003E48B0  38 6D BC 58 */	addi r3, r13, lbl_80667DD8@sda21
/* 8041B2F4 003E48B4  4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv

.fn "__sinit_\snd_SeqSound_cpp", local
/* 8041B2F8 003E48B8  38 0D BC 30 */	addi r0, r13, lbl_80667DB0@sda21
/* 8041B2FC 003E48BC  90 0D BC 58 */	stw r0, lbl_80667DD8@sda21(r13)
/* 8041B300 003E48C0  4E 80 00 20 */	blr
.endfn "__sinit_\snd_SeqSound_cpp"

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte "__sinit_\snd_SeqSound_cpp"


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056E440
lbl_8056E440:
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv
	.4byte __dt__Q44nw4r3snd6detail8SeqSoundFv
	.4byte Shutdown__Q44nw4r3snd6detail8SeqSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail8SeqSoundCFv
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv
	.4byte InitParam__Q44nw4r3snd6detail8SeqSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv
	.4byte OnUpdatePlayerPriority__Q44nw4r3snd6detail8SeqSoundFv
	.4byte UpdateMoveValue__Q44nw4r3snd6detail10BasicSoundFv
	.4byte UpdateParam__Q44nw4r3snd6detail10BasicSoundFv


.global lbl_8056E478
lbl_8056E478:
	.4byte 0
	.4byte 0
	.4byte __dt__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
	.4byte Execute__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
	.4byte Cancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
	.4byte OnCancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80667DD8
lbl_80667DD8:
	.skip 0x8