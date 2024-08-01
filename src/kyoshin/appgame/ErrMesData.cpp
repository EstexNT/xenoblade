#include "kyoshin/appgame/ErrMesData.hpp"

//Error messages

//"Please insert the "Xenoblade" disc."
static const wchar_t* noDiscErrorMessage = L"�[�m�u���C�h�̃f�B�X�N���Z�b�g���Ă��������B";
/*
"The disc could not be read.
For more details, please read the Wii System Manual."
*/
static const wchar_t* discUnreadableErrorMessage =
	L"�f�B�X�N��ǂ߂܂���ł����B&"
	L"�ڂ�����Wii�{�̂̎戵�����������ǂ݂��������B";
//"Reading the disc..."
static const wchar_t* readingDiscErrorMessage = L"�f�B�X�N�̓ǂݍ��ݒ��ł��B";
//"Communication with the Wii Remote was interrupted."
static const wchar_t* wiiRemoteDisconnectedErrorMessage = L"Wii�����R���̒ʐM���؂�܂����B";
/*
"Please connect the Nunchuck to the Wii Remote.
To change the extension controller to the Classic Controller,
after resetting the game once, at the title screen, please change
the extension controller to the Classic Controller."
*/
static const wchar_t* nunchuckDisconnectedErrorMessage =
	L"Wii�����R���Ƀk���`���N��ڑ����Ă��������B&&"
	L"�g���R���g���[�����N���V�b�N�R���g���[����&"
	L"�ύX����ꍇ�́A��x�Q�[�������Z�b�g������A&"
	L"�^�C�g����ʂŊg���R���g���[����&"
	L"�N���V�b�N�R���g���[���ɕύX���Ă��������B";
/*
"Please connect the Classic Controller to the Wii Remote.
To change the extension controller to the Nunchuck,
after resetting the game once, at the title screen, please change
the extension controller to the nunchuck."
*/
static const wchar_t* classicControllerDisconnectedErrorMessage =
	L"Wii�����R���ɃN���V�b�N�R���g���[����ڑ����Ă��������B&&"
	L"�g���R���g���[�����k���`���N��&"
	L"�ύX����ꍇ�́A��x�Q�[�������Z�b�g������A&"
	L"�^�C�g����ʂŊg���R���g���[����&"
	L"�k���`���N�ɕύX���Ă��������B";
/*
"There is no extension controller connected to the Wii Remote.
Please connect either the Nunchuck or Classic Controller."
*/
static const wchar_t* noExtensionErrorMessage =
	L"Wii�����R���Ɋg���R���g���[�����ڑ�����Ă��܂���B&"
	L"�k���`���N�܂��̓N���V�b�N�R���g���[����ڑ����Ă��������B";
/*
"The Wii Console's save memory has been damaged.
For more details, please read the Wii System Manual."
*/
static const wchar_t* memoryDamagedErrorMessage =
	L"Wii�{�̕ۑ������������܂����B&"
	L"���킵����Wii�{�̂̎戵�����������ǂ݂��������B";
/*
"Could not read from/write to the Wii Console's save memory.
For more details, please read the Wii System Manual."
*/
static const wchar_t* memoryReadWriteFailErrorMessage =
	L"Wii�{�̕ۑ��������̏�������/�ǂݏo�����ł��܂���ł����B&"
	L"���킵����Wii�{�̂̎戵�����������ǂ݂��������B";
/*
"An error occured while reading from/writing to the Wii Console's save memory.
For more details, please read the Wii System Manual."
*/
static const wchar_t* errorDuringMemoryReadWriteErrorMessage =
	L"Wii�{�̕ۑ��������̏�������/�ǂݏo�����ɃG���[���������܂����B&"
	L"���킵����Wii�{�̂̎戵�����������ǂ݂��������B";

const wchar_t* getNoDiscErrorMessage(){
    return noDiscErrorMessage;
}

const wchar_t* getDiscUnreadableErrorMessage(){
    return discUnreadableErrorMessage;
}

const wchar_t* getReadingDiscErrorMessage(){
    return readingDiscErrorMessage;
}

const wchar_t* getWiiRemoteDisconnectedErrorMessage(){
    return wiiRemoteDisconnectedErrorMessage;
}

const wchar_t* getNunchuckDisconnectedErrorMessage(){
    return nunchuckDisconnectedErrorMessage;
}

const wchar_t* getClassicControllerDisconnectedErrorMessage(){
    return classicControllerDisconnectedErrorMessage;
}

const wchar_t* getNoExtensionErrorMessage(){
    return noExtensionErrorMessage;
}

const wchar_t* getMemoryDamagedErrorMessage(){
    return memoryDamagedErrorMessage;
}

const wchar_t* getMemoryReadWriteFailErrorMessage(){
    return memoryReadWriteFailErrorMessage;
}

const wchar_t* getErrorDuringMemoryReadWriteErrorMessage(){
    return errorDuringMemoryReadWriteErrorMessage;
}
