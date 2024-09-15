#include "db_console.h"
#include <revolution/OS.h>

namespace nw4r
{
    namespace db
    {
        //unused
        static OSMutex sMutex;

        //unused
        static void TerminateLine_(detail::ConsoleHead* console)
        {
        }

        //unused
        static u8* GetTextPtr_(detail::ConsoleHead* console, u16 line, u16 xPos)
        {
            return 0;
        }

        //unused
        static u8* NextLine_(detail::ConsoleHead* console)
        {
            return 0;
        }

        //unused
        static u8* PutTab_(detail::ConsoleHead* console, u8* dstPtr)
        {
            return 0;
        }

        //unused
        static u32 GetTabSize_(detail::ConsoleHead* console)
        {
            return 0;
        }

        //unused
        static u32 PutChar_(detail::ConsoleHead* console, const u8* str, u8* dstPtr)
        {
            return 0;
        }

        //unused
        static u32 CodeWidth_(const u8* p)
        {
            return 0;
        }

        //unused
        static detail::ConsoleHead* SearchConsoleFromListByPriority_(u16 r3)
        {
            return nullptr;
        }

        //unused
        static void AppendConsoleToList_(detail::ConsoleHead* console)
        {
        }

        //unused
        static void RemoveConsoleFromList_(detail::ConsoleHead* console)
        {
        }

        //unused
        detail::ConsoleHead* Console_Create(void* buffer, u16 width, u16 height, u16 viewHeight, u16 priority, u16 attr)
        {
        }

        //unused
        void Console_Destroy(detail::ConsoleHead* console)
        {
        }

        //unused
        void Console_Clear(detail::ConsoleHead* console)
        {
        }

        //unused
        static void UnlockMutex_(OSMutex* mutex)
        {
        }

        //unused
        static bool TryLockMutex_(OSMutex* mutex)
        {
            return false;
        }

        //unused
        static void DoDrawString_(detail::ConsoleHead* console, u32 printLine, const u8* str, ut::TextWriterBase<char>* writer)
        {
        }

        //unused
        static void DoDrawConsole_(detail::ConsoleHead* console, ut::TextWriterBase<char>* writer)
        {
        }

        static u16 GetRingUsedLines_(detail::ConsoleHead* console);

        static u16 GetActiveLines_(detail::ConsoleHead* console)
        {
            u16 lines = GetRingUsedLines_(console);
            if(console->printXPos != 0){
                lines++;
            }

            return lines;
        }

        static u16 GetRingUsedLines_(detail::ConsoleHead* console)
        {
            long lines = console->printTop - console->ringTop;
            if(lines < 0){
                lines += console->height;
            }
            return (u16)lines;
        }

        //unused
        void Console_Draw(detail::ConsoleHead* console, ut::TextWriterBase<char>& writer)
        {
        }

        //unused
        void Console_DrawDirect(detail::ConsoleHead* console)
        {
        }

        //unused
        void Console_DrawAll()
        {
        }

        //unused
        void Console_DrawDirectAll()
        {
        }

        //unused
        static void PrintToBuffer_(detail::ConsoleHead* console, const u8* str)
        {
        }

        //unused
        static u8* SearchEndOfLine_(const u8* str)
        {
            return 0;
        }

        //unused
        static void Console_PrintString_(ConsoleOutputType type, detail::ConsoleHead* console, const u8* str)
        {
        }

        //unused
        void Console_VFPrintf(ConsoleOutputType type, detail::ConsoleHead* console, const char* format, va_list* vlist)
        {
            static u8 sStrBuf[1024];
        }

        //unused
        void Console_FPrintf(ConsoleOutputType type, detail::ConsoleHead* console, const char * format)
        {
        }

        void Console_Printf(detail::ConsoleHead* console, const char* format, ...)
        {
            va_list vlist;
            va_start(vlist, format);
        }

        //unused
        void Console_PrintfD(detail::ConsoleHead* console, const char* format, ...)
        {
        }

        //unused
        void Console_PrintfT(detail::ConsoleHead* console, const char* format, ...)
        {
        }

        //unused
        u16 Console_ChangePriority(detail::ConsoleHead* console, u16 r4)
        {
            return 0;
        }

        //unused
        void Console_VisitString(detail::ConsoleHead* console, VisitStringCallback visitor)
        {
        }

        long Console_GetTotalLines(detail::ConsoleHead* console)
        {
            BOOL enabled = OSDisableInterrupts();

            long count = GetActiveLines_(console) + console->ringTopLineCnt;

            OSRestoreInterrupts(enabled);

            return count;
        }
    }
}
