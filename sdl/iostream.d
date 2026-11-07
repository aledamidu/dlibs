module libs.sdl.iostream;

import libs.sdl.properties;
import libs.sdl.stdinc;
import core.stdc.stdarg : va_list;
import core.stdc.stdint;

extern (C):
@nogc nothrow:

enum SDL_IOStatus
{
    SDL_IO_STATUS_READY = 0,
    SDL_IO_STATUS_ERROR = 1,
    SDL_IO_STATUS_EOF = 2,
    SDL_IO_STATUS_NOT_READY = 3,
    SDL_IO_STATUS_READONLY = 4,
    SDL_IO_STATUS_WRITEONLY = 5
}

alias SDL_IO_STATUS_READY = SDL_IOStatus.SDL_IO_STATUS_READY;
alias SDL_IO_STATUS_ERROR = SDL_IOStatus.SDL_IO_STATUS_ERROR;
alias SDL_IO_STATUS_EOF = SDL_IOStatus.SDL_IO_STATUS_EOF;
alias SDL_IO_STATUS_NOT_READY = SDL_IOStatus.SDL_IO_STATUS_NOT_READY;
alias SDL_IO_STATUS_READONLY = SDL_IOStatus.SDL_IO_STATUS_READONLY;
alias SDL_IO_STATUS_WRITEONLY = SDL_IOStatus.SDL_IO_STATUS_WRITEONLY;

enum SDL_IOWhence
{
    SDL_IO_SEEK_SET = 0,
    SDL_IO_SEEK_CUR = 1,
    SDL_IO_SEEK_END = 2
}

alias SDL_IO_SEEK_SET = SDL_IOWhence.SDL_IO_SEEK_SET;
alias SDL_IO_SEEK_CUR = SDL_IOWhence.SDL_IO_SEEK_CUR;
alias SDL_IO_SEEK_END = SDL_IOWhence.SDL_IO_SEEK_END;

struct SDL_IOStreamInterface
{
    alias Uint32 = uint;
    Uint32 version_;
    Sint64 function(void* userdata) size;
    Sint64 function(void* userdata, Sint64 offset, SDL_IOWhence whence) seek;
    size_t function(void* userdata, void* ptr, size_t size, SDL_IOStatus* status) read;
    size_t function(void* userdata, const(void)* ptr, size_t size, SDL_IOStatus* status) write;
    bool function(void* userdata, SDL_IOStatus* status) flush;
    bool function(void* userdata) close;
}

struct SDL_IOStream;
pragma(mangle, "SDL_IOFromFile")
SDL_IOStream* sdlIOFromFile(const(char)* file, const(char)* mode);

alias SDL_IOFromFile = sdlIOFromFile;
enum SDL_PROP_IOSTREAM_WINDOWS_HANDLE_POINTER = "SDL.iostream.windows.handle";
enum SDL_PROP_IOSTREAM_STDIO_FILE_POINTER = "SDL.iostream.stdio.file";
enum SDL_PROP_IOSTREAM_FILE_DESCRIPTOR_NUMBER = "SDL.iostream.file_descriptor";
enum SDL_PROP_IOSTREAM_ANDROID_AASSET_POINTER = "SDL.iostream.android.aasset";
enum SDL_PROP_IOSTREAM_OPENHARMONY_RAWFILE64_POINTER = "SDL.iostream.openharmony.rawfile64";
pragma(mangle, "SDL_IOFromMem")
SDL_IOStream* sdlIOFromMem(void* mem, size_t size);

alias SDL_IOFromMem = sdlIOFromMem;
enum SDL_PROP_IOSTREAM_MEMORY_POINTER = "SDL.iostream.memory.base";
enum SDL_PROP_IOSTREAM_MEMORY_SIZE_NUMBER = "SDL.iostream.memory.size";
enum SDL_PROP_IOSTREAM_MEMORY_FREE_FUNC_POINTER = "SDL.iostream.memory.free";
pragma(mangle, "SDL_IOFromConstMem")
SDL_IOStream* sdlIOFromConstMem(const(void)* mem, size_t size);

alias SDL_IOFromConstMem = sdlIOFromConstMem;
pragma(mangle, "SDL_IOFromDynamicMem")
SDL_IOStream* sdlIOFromDynamicMem();

alias SDL_IOFromDynamicMem = sdlIOFromDynamicMem;
enum SDL_PROP_IOSTREAM_DYNAMIC_MEMORY_POINTER = "SDL.iostream.dynamic.memory";
enum SDL_PROP_IOSTREAM_DYNAMIC_CHUNKSIZE_NUMBER = "SDL.iostream.dynamic.chunksize";
pragma(mangle, "SDL_OpenIO")
SDL_IOStream* sdlOpenIO(const(SDL_IOStreamInterface)* iface, void* userdata);

alias SDL_OpenIO = sdlOpenIO;
pragma(mangle, "SDL_CloseIO")
bool sdlCloseIO(SDL_IOStream* context);

alias SDL_CloseIO = sdlCloseIO;
pragma(mangle, "SDL_GetIOProperties")
SDL_PropertiesID sdlGetIOProperties(SDL_IOStream* context);

alias SDL_GetIOProperties = sdlGetIOProperties;

pragma(mangle, "SDL_GetIOStatus")
SDL_IOStatus sdlGetIOStatus(SDL_IOStream* context);

alias SDL_GetIOStatus = sdlGetIOStatus;

pragma(mangle, "SDL_GetIOSize")
Sint64 sdlGetIOSize(SDL_IOStream* context);

alias SDL_GetIOSize = sdlGetIOSize;

pragma(mangle, "SDL_SeekIO")
Sint64 sdlSeekIO(SDL_IOStream* context, Sint64 offset, SDL_IOWhence whence);

alias SDL_SeekIO = sdlSeekIO;

pragma(mangle, "SDL_TellIO")
Sint64 sdlTellIO(SDL_IOStream* context);

alias SDL_TellIO = sdlTellIO;

pragma(mangle, "SDL_ReadIO")
size_t sdlReadIO(SDL_IOStream* context, void* ptr, size_t size);

alias SDL_ReadIO = sdlReadIO;

pragma(mangle, "SDL_WriteIO")
size_t sdlWriteIO(SDL_IOStream* context, const(void)* ptr, size_t size);

alias SDL_WriteIO = sdlWriteIO;

pragma(mangle, "SDL_IOprintf")
size_t sdlIOprintf(SDL_IOStream* context, const(char)* fmt, ...);

alias SDL_IOprintf = sdlIOprintf;

pragma(mangle, "SDL_IOvprintf")
size_t sdlIOvprintf(SDL_IOStream* context, const(char)* fmt, va_list ap);

alias SDL_IOvprintf = sdlIOvprintf;

pragma(mangle, "SDL_FlushIO")
bool sdlFlushIO(SDL_IOStream* context);

alias SDL_FlushIO = sdlFlushIO;

pragma(mangle, "SDL_LoadFile_IO")
void* sdlLoadFileIo(SDL_IOStream* src, size_t* datasize, bool closeio);

alias SDL_LoadFile_IO = sdlLoadFileIo;

pragma(mangle, "SDL_LoadFile")
void* sdlLoadFile(const(char)* file, size_t* datasize);

alias SDL_LoadFile = sdlLoadFile;

pragma(mangle, "SDL_SaveFile_IO")
bool sdlSaveFileIo(SDL_IOStream* src, const(void)* data, size_t datasize, bool closeio);

alias SDL_SaveFile_IO = sdlSaveFileIo;

pragma(mangle, "SDL_SaveFile")
bool sdlSaveFile(const(char)* file, const(void)* data, size_t datasize);

alias SDL_SaveFile = sdlSaveFile;

pragma(mangle, "SDL_ReadU8")
bool sdlReadU8(SDL_IOStream* src, Uint8* value);

alias SDL_ReadU8 = sdlReadU8;

pragma(mangle, "SDL_ReadS8")
bool sdlReadS8(SDL_IOStream* src, Sint8* value);

alias SDL_ReadS8 = sdlReadS8;

pragma(mangle, "SDL_ReadU16LE")
bool sdlReadU16LE(SDL_IOStream* src, Uint16* value);

alias SDL_ReadU16LE = sdlReadU16LE;

pragma(mangle, "SDL_ReadS16LE")
bool sdlReadS16LE(SDL_IOStream* src, Sint16* value);

alias SDL_ReadS16LE = sdlReadS16LE;

pragma(mangle, "SDL_ReadU16BE")
bool sdlReadU16BE(SDL_IOStream* src, Uint16* value);

alias SDL_ReadU16BE = sdlReadU16BE;

pragma(mangle, "SDL_ReadS16BE")
bool sdlReadS16BE(SDL_IOStream* src, Sint16* value);

alias SDL_ReadS16BE = sdlReadS16BE;

pragma(mangle, "SDL_ReadU32LE")
bool sdlReadU32LE(SDL_IOStream* src, Uint32* value);

alias SDL_ReadU32LE = sdlReadU32LE;

pragma(mangle, "SDL_ReadS32LE")
bool sdlReadS32LE(SDL_IOStream* src, Sint32* value);

alias SDL_ReadS32LE = sdlReadS32LE;

pragma(mangle, "SDL_ReadU32BE")
bool sdlReadU32BE(SDL_IOStream* src, Uint32* value);

alias SDL_ReadU32BE = sdlReadU32BE;

pragma(mangle, "SDL_ReadS32BE")
bool sdlReadS32BE(SDL_IOStream* src, Sint32* value);

alias SDL_ReadS32BE = sdlReadS32BE;

pragma(mangle, "SDL_ReadU64LE")
bool sdlReadU64LE(SDL_IOStream* src, Uint64* value);

alias SDL_ReadU64LE = sdlReadU64LE;

pragma(mangle, "SDL_ReadS64LE")
bool sdlReadS64LE(SDL_IOStream* src, Sint64* value);

alias SDL_ReadS64LE = sdlReadS64LE;

pragma(mangle, "SDL_ReadU64BE")
bool sdlReadU64BE(SDL_IOStream* src, Uint64* value);

alias SDL_ReadU64BE = sdlReadU64BE;

pragma(mangle, "SDL_ReadS64BE")
bool sdlReadS64BE(SDL_IOStream* src, Sint64* value);

alias SDL_ReadS64BE = sdlReadS64BE;

pragma(mangle, "SDL_WriteU8")
bool sdlWriteU8(SDL_IOStream* dst, Uint8 value);

alias SDL_WriteU8 = sdlWriteU8;

pragma(mangle, "SDL_WriteS8")
bool sdlWriteS8(SDL_IOStream* dst, Sint8 value);

alias SDL_WriteS8 = sdlWriteS8;

pragma(mangle, "SDL_WriteU16LE")
bool sdlWriteU16LE(SDL_IOStream* dst, Uint16 value);

alias SDL_WriteU16LE = sdlWriteU16LE;

pragma(mangle, "SDL_WriteS16LE")
bool sdlWriteS16LE(SDL_IOStream* dst, Sint16 value);

alias SDL_WriteS16LE = sdlWriteS16LE;

pragma(mangle, "SDL_WriteU16BE")
bool sdlWriteU16BE(SDL_IOStream* dst, Uint16 value);

alias SDL_WriteU16BE = sdlWriteU16BE;

pragma(mangle, "SDL_WriteS16BE")
bool sdlWriteS16BE(SDL_IOStream* dst, Sint16 value);

alias SDL_WriteS16BE = sdlWriteS16BE;

pragma(mangle, "SDL_WriteU32LE")
bool sdlWriteU32LE(SDL_IOStream* dst, Uint32 value);

alias SDL_WriteU32LE = sdlWriteU32LE;

pragma(mangle, "SDL_WriteS32LE")
bool sdlWriteS32LE(SDL_IOStream* dst, Sint32 value);

alias SDL_WriteS32LE = sdlWriteS32LE;

pragma(mangle, "SDL_WriteU32BE")
bool sdlWriteU32BE(SDL_IOStream* dst, Uint32 value);

alias SDL_WriteU32BE = sdlWriteU32BE;

pragma(mangle, "SDL_WriteS32BE")
bool sdlWriteS32BE(SDL_IOStream* dst, Sint32 value);

alias SDL_WriteS32BE = sdlWriteS32BE;

pragma(mangle, "SDL_WriteU64LE")
bool sdlWriteU64LE(SDL_IOStream* dst, Uint64 value);

alias SDL_WriteU64LE = sdlWriteU64LE;

pragma(mangle, "SDL_WriteS64LE")
bool sdlWriteS64LE(SDL_IOStream* dst, Sint64 value);

alias SDL_WriteS64LE = sdlWriteS64LE;

pragma(mangle, "SDL_WriteU64BE")
bool sdlWriteU64BE(SDL_IOStream* dst, Uint64 value);

alias SDL_WriteU64BE = sdlWriteU64BE;

pragma(mangle, "SDL_WriteS64BE")
bool sdlWriteS64BE(SDL_IOStream* dst, Sint64 value);

alias SDL_WriteS64BE = sdlWriteS64BE;
