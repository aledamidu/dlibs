module libs.sdl.cpuinfo;
extern (C):
@nogc nothrow:

enum SDL_CACHELINE_SIZE = 128;

pragma(mangle, "SDL_GetNumLogicalCPUCores")
int sdlGetNumLogicalCPUCores();

alias SDL_GetNumLogicalCPUCores = sdlGetNumLogicalCPUCores;

pragma(mangle, "SDL_GetCPUCacheLineSize")
int sdlGetCPUCacheLineSize();

alias SDL_GetCPUCacheLineSize = sdlGetCPUCacheLineSize;

pragma(mangle, "SDL_HasAltiVec")
bool sdlHasAltiVec();

alias SDL_HasAltiVec = sdlHasAltiVec;

pragma(mangle, "SDL_HasMMX")
bool sdlHasMMX();

alias SDL_HasMMX = sdlHasMMX;

pragma(mangle, "SDL_HasSSE")
bool sdlHasSSE();

alias SDL_HasSSE = sdlHasSSE;

pragma(mangle, "SDL_HasSSE2")
bool sdlHasSSE2();

alias SDL_HasSSE2 = sdlHasSSE2;

pragma(mangle, "SDL_HasSSE3")
bool sdlHasSSE3();

alias SDL_HasSSE3 = sdlHasSSE3;

pragma(mangle, "SDL_HasSSE41")
bool sdlHasSSE41();

alias SDL_HasSSE41 = sdlHasSSE41;

pragma(mangle, "SDL_HasSSE42")
bool sdlHasSSE42();

alias SDL_HasSSE42 = sdlHasSSE42;

pragma(mangle, "SDL_HasAVX")
bool sdlHasAVX();

alias SDL_HasAVX = sdlHasAVX;

pragma(mangle, "SDL_HasAVX2")
bool sdlHasAVX2();

alias SDL_HasAVX2 = sdlHasAVX2;

pragma(mangle, "SDL_HasAVX512F")
bool sdlHasAVX512F();

alias SDL_HasAVX512F = sdlHasAVX512F;

pragma(mangle, "SDL_HasARMSIMD")
bool sdlHasARMSIMD();

alias SDL_HasARMSIMD = sdlHasARMSIMD;

pragma(mangle, "SDL_HasNEON")
bool sdlHasNEON();

alias SDL_HasNEON = sdlHasNEON;

pragma(mangle, "SDL_HasSVE2")
bool sdlHasSVE2();

alias SDL_HasSVE2 = sdlHasSVE2;

pragma(mangle, "SDL_HasLSX")
bool sdlHasLSX();

alias SDL_HasLSX = sdlHasLSX;

pragma(mangle, "SDL_HasLASX")
bool sdlHasLASX();

alias SDL_HasLASX = sdlHasLASX;

pragma(mangle, "SDL_GetSystemRAM")
int sdlGetSystemRAM();

alias SDL_GetSystemRAM = sdlGetSystemRAM;

pragma(mangle, "SDL_GetSIMDAlignment")
size_t sdlGetSIMDAlignment();

alias SDL_GetSIMDAlignment = sdlGetSIMDAlignment;

pragma(mangle, "SDL_GetSystemPageSize")
int sdlGetSystemPageSize();

alias SDL_GetSystemPageSize = sdlGetSystemPageSize;
