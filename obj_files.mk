TEXT_O_FILES :=\
	$(BUILD_DIR)/asm/RevoSDK/memcpy.o \
	$(BUILD_DIR)/asm/RevoSDK/TRK/mem_TRK.o \
	$(BUILD_DIR)/asm/RevoSDK/TRK/__mem.o \
	$(BUILD_DIR)/asm/RevoSDK/TRK/__exception.o \
	$(BUILD_DIR)/asm/text.o \
	$(BUILD_DIR)/asm/sdata.o \
	$(BUILD_DIR)/src/main.o \
	$(BUILD_DIR)/asm/text_1.o \
	$(BUILD_DIR)/asm/sdata_1.o \
	$(BUILD_DIR)/asm/sbss.o \
	$(BUILD_DIR)/asm/text_2.o \
	$(BUILD_DIR)/src/RevoSDK/__start.o \
	$(BUILD_DIR)/asm/sbss_1.o \
	$(BUILD_DIR)/asm/text_3.o \
	$(BUILD_DIR)/src/code_802AEB74.o \
	$(BUILD_DIR)/asm/text_3_1.o \
	$(BUILD_DIR)/asm/text/printf.o \
	$(BUILD_DIR)/asm/text_4.o \
	$(BUILD_DIR)/asm/RevoSDK/arc__105.o \
	$(BUILD_DIR)/asm/RevoSDK/ax/AX.o \
    $(BUILD_DIR)/asm/RevoSDK/ax/AXAlloc.o \
    $(BUILD_DIR)/asm/RevoSDK/ax/AXAux.o \
    $(BUILD_DIR)/asm/RevoSDK/ax/AXCL.o \
    $(BUILD_DIR)/asm/RevoSDK/ax/AXOut.o \
    $(BUILD_DIR)/asm/RevoSDK/ax/AXSPB.o \
    $(BUILD_DIR)/asm/RevoSDK/ax/AXVPB.o \
    $(BUILD_DIR)/asm/RevoSDK/ax/AXProf.o \
    $(BUILD_DIR)/asm/RevoSDK/axfx/AXFXReverbHi.o \
    $(BUILD_DIR)/asm/RevoSDK/axfx/AXFXReverbHiExp.o \
	$(BUILD_DIR)/asm/RevoSDK/axfx/code_802D65F0.o \
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXLfoTable.o \
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXSrcCoef.o \
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXHooks.o \
	$(BUILD_DIR)/asm/RevoSDK/PPCArch.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/gki_buffer.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/gki_time.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/gki_ppc.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/hcisu_h2.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/uusb_ppc.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bte_hcisu.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bte_init.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bte_logmsg.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bte_main.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btu_task1.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bd.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_sys_conn.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_sys_main.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/ptim.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/utl.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_dm_act.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_dm_api.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_dm_main.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_dm_pm.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_hh_act.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_hh_api.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_hh_main.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_hh_utils.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_acl.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_dev.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_devctl.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_discovery.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_inq.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_main.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_pm.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_sco.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_sec.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btu_hcif.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/btu_init.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/wbt_ext.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/gap_api.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/gap_conn.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/gap_utils.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/hcicmds.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/hidd_api.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/hidd_conn.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/hidd_mgmt.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/hidd_pm.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/hidh_api.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/hidh_conn.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_api.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_csm.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_link.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_main.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_utils.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/port_api.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/port_rfc.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/port_utils.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_l2cap_if.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_mx_fsm.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_port_fsm.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_port_if.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_ts_frames.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_utils.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_api.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_db.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_discovery.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_main.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_server.o \
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_utils.o \
	$(BUILD_DIR)/asm/code_80308530.o \
	$(BUILD_DIR)/asm/RevoSDK/db/db.o \
	$(BUILD_DIR)/asm/RevoSDK/dsp/dsp.o \
	$(BUILD_DIR)/asm/RevoSDK/dsp/dsp_debug.o \
	$(BUILD_DIR)/asm/RevoSDK/dsp/dsp_task.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdfs.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvd.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdqueue.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvderror.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdidutils.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdFatal.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdDeviceError.o \
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvd_broadway.o \
	$(BUILD_DIR)/asm/RevoSDK/code_80312CB0.o \
	$(BUILD_DIR)/asm/RevoSDK/esp.o \
	$(BUILD_DIR)/asm/RevoSDK/euart.o \
	$(BUILD_DIR)/asm/RevoSDK/exi/EXIBios.o \
	$(BUILD_DIR)/asm/RevoSDK/exi/EXIUart.o \
	$(BUILD_DIR)/asm/RevoSDK/exi/EXICommon.o \
	$(BUILD_DIR)/asm/RevoSDK/fs.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXInit.o \
	$(BUILD_DIR)/asm/RevoSDK/gx/GXFifo.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXAttr.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXMisc.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXGeometry.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXFrameBuf.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXLight.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXTexture.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXBump.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXTev.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXPixel.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXDisplayList.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXTransform.o \
    $(BUILD_DIR)/asm/RevoSDK/gx/GXPerf.o \
	$(BUILD_DIR)/asm/RevoSDK/hbm/HBMFrameController.o \
	$(BUILD_DIR)/asm/RevoSDK/hbm/HBMAnmController.o \
	$(BUILD_DIR)/asm/RevoSDK/hbm/HBMGUIManager.o \
	$(BUILD_DIR)/asm/RevoSDK/hbm/HBMController.o \
	$(BUILD_DIR)/asm/RevoSDK/hbm/HBMRemoteSpk.o \
	$(BUILD_DIR)/asm/RevoSDK/hbm/code_803222B0.o \
	$(BUILD_DIR)/asm/text_5_1.o \
	$(BUILD_DIR)/asm/RevoSDK/ipc/ipcMain.o \
	$(BUILD_DIR)/asm/RevoSDK/ipc/ipcclt.o \
	$(BUILD_DIR)/asm/RevoSDK/ipc/memory.o \
	$(BUILD_DIR)/asm/RevoSDK/ipc/ipcProfile.o \
	$(BUILD_DIR)/asm/RevoSDK/kpad/kpad.o \
	$(BUILD_DIR)/asm/RevoSDK/mem/mem_heapCommon.o \
    $(BUILD_DIR)/asm/RevoSDK/mem/mem_expHeap.o \
    $(BUILD_DIR)/asm/RevoSDK/mem/mem_frameHeap.o \
    $(BUILD_DIR)/asm/RevoSDK/mem/mem_allocator.o \
    $(BUILD_DIR)/asm/RevoSDK/mem/mem_list.o \
	$(BUILD_DIR)/asm/RevoSDK/mix/mix.o \
	$(BUILD_DIR)/asm/RevoSDK/mix/remote.o \
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtx.o \
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtxvec.o \
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtx44.o \
	$(BUILD_DIR)/asm/RevoSDK/mtx/vec.o \
	$(BUILD_DIR)/asm/RevoSDK/mtx/quat.o \
	$(BUILD_DIR)/asm/RevoSDK/nand/nand.o \
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDOpenClose__103.o \
    $(BUILD_DIR)/asm/RevoSDK/nand/NANDCore.o \
    $(BUILD_DIR)/asm/RevoSDK/nand/NANDCheck.o \
	$(BUILD_DIR)/asm/RevoSDK/nand/NANDLogging.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OS.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSAlarm.o \
	$(BUILD_DIR)/asm/RevoSDK/os/func_803535D0.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSAlloc.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSArena.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSAudioSystem.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSCache.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSContext.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSError.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSExec.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSFatal.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSFont.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSInterrupt.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSMessage.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSMemory.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSMutex.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSReboot.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSReset.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSRtc.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSSync.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSThread.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSTime.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSUtf.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSIpc.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSStateTM.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSPlayRecord.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSStateFlags.o \
	$(BUILD_DIR)/asm/RevoSDK/os/OSNet.o \
	$(BUILD_DIR)/asm/code_8035E1F0.o \
	$(BUILD_DIR)/asm/RevoSDK/TRK/__ppc_eabi_init.o \
	$(BUILD_DIR)/asm/RevoSDK/pad/Pad.o \
	$(BUILD_DIR)/asm/text_6.o \
	$(BUILD_DIR)/asm/CriWare.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_rescommon.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resdict.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resfile.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resmdl.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resshp.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_restev.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resmat.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resvtx.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_restex.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resnode.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanm.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmclr.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmtexpat.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmtexsrt.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmchr.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmamblight.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmlight.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmfog.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmcamera.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmscn.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmshp.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_anmclr.o \
	$(BUILD_DIR)/asm/nw4r/g3d/code_803E3398.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_anmscn.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_obj.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_anmobj.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_gpu.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_cpu.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_state.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_draw1mat1shp.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_calcview.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_dcc.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_workmem.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_calcworld.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_draw.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_camera.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_basic.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_maya.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_xsi.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_3dsmax.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_scnobj.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_scnroot.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_scnmdlsmpl.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_scnmdl.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_scnmdlexpand.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_calcmaterial.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_init.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_scnproc.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_fog.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_light.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_calcvtx.o \
	$(BUILD_DIR)/asm/code_803FE8B0.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_pane.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_group.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_layout.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_picture.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_textBox.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_window.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_bounding.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_material.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_texMap.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_drawInfo.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_animation.o \
	$(BUILD_DIR)/asm/nw4r/lyt/code_804093D8.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_resourceAccessor.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_arcResourceAccessor.o \
	$(BUILD_DIR)/asm/nw4r/lyt/lyt_common.o \
	$(BUILD_DIR)/asm/nw4r/math/math_arithmetic.o \
	$(BUILD_DIR)/asm/nw4r/math/math_triangular.o \
	$(BUILD_DIR)/asm/nw4r/math/math_types.o \
	$(BUILD_DIR)/asm/nw4r/math/math_geometry.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_AxManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_AxVoice.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_AxVoiceManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_AxfxImpl.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Bank.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_BankFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_BasicPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_BasicSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/code_80413B14.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_DisposeCallbackManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_EnvGenerator.o \
	$(BUILD_DIR)/asm/nw4r/snd/code_80415760.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_InstancePool.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Lfo.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_MemorySoundArchive.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_MidiSeqPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_MmlParser.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_MmlSeqTrack.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_MmlSeqTrackAllocator.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_NandSoundArchive.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_RemoteSpeaker.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_RemoteSpeakerManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqSoundHandle.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SeqTrack.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchive.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchiveFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchivePlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundHandle.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundStartable.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundSystem.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_SoundThread.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_StrmChannel.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_StrmFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_StrmPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_StrmSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_StrmSoundHandle.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Task.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_TaskManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_TaskThread.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Voice.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_VoiceManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_Util.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_WaveFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_WaveSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_WaveSoundHandle.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_WsdFile.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_WsdPlayer.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_adpcm.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_LinkList.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharStrmReader.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_IOStream.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_FileStream.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_LockedCache.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_Font.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_ResFontBase.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_ResFont.o \
	$(BUILD_DIR)/asm/nw4r/ut/code_8042CC2C.o \
	$(BUILD_DIR)/asm/nw4r/ut/ut_CharWriter.o \
	$(BUILD_DIR)/asm/text_8.o \
	$(BUILD_DIR)/src/code_80450B14.o \
	$(BUILD_DIR)/asm/text_9.o

EXTAB_O_FILES :=\
	$(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=\
	$(BUILD_DIR)/asm/extabindex.o

CTORS_O_FILES :=\
	$(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=\
	$(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=\
	$(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=\
	$(BUILD_DIR)/asm/data.o

BSS_O_FILES :=\
	$(BUILD_DIR)/asm/bss.o

SDATA2_O_FILES :=\
	$(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=\
	$(BUILD_DIR)/asm/sbss2.o