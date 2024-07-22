#include "kyoshin/appgame/main.hpp"
#include "kyoshin/appgame/CGame.hpp"
#include "kyoshin/appgame/code_802AEB74.hpp"

FunctionStruct lbl_80528380 = {"�Q�[�����C��", &CGame::GameMain};
const char* const staticArcStr = "static.arc";

const char* const pkhFilenames[13] = {
	"ahx.pkh",
	"adx.pkh",
	"chr.pkh",
	"common.pkh",
	"eff.pkh",
	"font.pkh",
	"map.pkh",
	"menu.pkh",
	"obj.pkh",
	"script.pkh",
	"snd.pkh",
	"work.pkh"
};

StaticArcFile staticArcFiles[10] = {
	{"SHA","dvddata/etc/shadow.sha",1,nullptr,nullptr},
	{"CAM","dvddata/etc/cam.chr",1,nullptr,nullptr},
	{"EFF","dvddata/etc/eff.chr",1,nullptr,nullptr},
	{"ARROW","dvddata/etc/arrow.mdo",1,nullptr,nullptr},
	{"43","dvddata/menu/Mode43.arc",1,nullptr,nullptr},
	{"BDAT","dvddata/common/jp/bdat.bin",1,&func_80039EFC,&func_80039F34},
	{"AIDAT","dvddata/etc/ai.bin",1,&func_80039F5C,&func_80039F60},
	{"HIKARI","dvddata/etc/hikari.brres",1,nullptr,nullptr},
	{"HBMSTOP","dvddata/etc/hbmstop.tpl",1,&func_80039F64,&func_80039F68}
};




void func_80039EFC(int arg0) {
	func_8003AA50();
	func_8003AA78(0, arg0);
}

void func_80039F34(void) {
	func_8003AA8C(0);
	func_8003AA50();
}


void func_80039F5C(int arg0){
	func_8014A86C(arg0);
}

void func_80039F60(){
	func_8014A8F8();
}

void func_80039F64(int arg0){
	func_8045D480(arg0);
}

void func_80039F68(){
	func_8045D4FC();
}

void vmInitPluginRegistCallback(){
	vmInit();
	pluginRegist();
}

void vmInitCallback(){
	vmInit();
}

void main(int argc, char* argv[]) {
	/*
	The first two functions store the array pointers in variables,
	which are then passed into the function func_80457CA4 in the register r4
	through the function func_8044F744.
	*/
	func_80450B14(func_802AEB74());
	func_80450B1C(func_802AEB7C());
	func_80450B24(func_802AEB84());
	func_804DAA90(func_802AEBAC());
	func_804DAA98(func_802AEBB4());
	func_804DAAA0(func_802AEBBC());
	
	lbl_80666438 = 0;
	mtl::MemManager_setArenaMemorySize(0x680000, 0);
	CDeviceVI::func_80448E78(false);
	CDeviceGX::init(GX_PF_RGB8_Z24, 0x180000);
	CDesktop_SaveStartFunctionCallback(&lbl_80528380, 1); //Pass the start function struct to CDesktop to have it be run later
	func_8045FBB0(staticArcFiles);
	CLibVM_SetCallbacks(&vmInitPluginRegistCallback, &vmInitCallback);
	SaveStaticArcFilenameStringPtr(&staticArcStr);
	SavePkhFilenamesArrayPtr(pkhFilenames);
	func_80057CDC();
	func_8045D5C8(1);
	CWorkRoot_Run(); //Start up CWorkRoot, which later starts CGame
}
