module libs.sdl.endian;

import libs.sdl.stdinc;

import libs.sdl.stdinc;
import core.bitop : bswap;

extern (C):
@nogc nothrow:

enum SDL_LIL_ENDIAN = 1234;
enum SDL_BIG_ENDIAN = 4321;
enum SDL_BYTEORDER = SDL_LIL_ENDIAN;
enum SDL_FLOATWORDORDER = SDL_BYTEORDER;

pragma(inline, true)
Uint16 sdlSwap16(Uint16 x)
{
    return cast(Uint16)((x << 8) | (x >> 8));
}

pragma(inline, true)
Uint32 sdlSwap32(Uint32 x)
{
    return bswap(x);
}

pragma(inline, true)
Uint64 sdlSwap64(Uint64 x)
{
    return bswap(x);
}

pragma(inline, true)
float sdlSwapFloat(float x)
{
    union Swapper
    {
        float f;
        Uint32 ui32;
    }

    Swapper swapper = void;
    swapper.f = x;
    swapper.ui32 = sdlSwap32(swapper.ui32);
    return swapper.f;
}

alias SDL_Swap16 = sdlSwap16;
alias SDL_Swap32 = sdlSwap32;
alias SDL_Swap64 = sdlSwap64;
alias SDL_SwapFloat = sdlSwapFloat;

pragma(inline, true)
Uint16 sdlSwap16LE(Uint16 x)
{
    return x;
}

pragma(inline, true)
Uint32 sdlSwap32LE(Uint32 x)
{
    return x;
}

pragma(inline, true)
Uint64 sdlSwap64LE(Uint64 x)
{
    return x;
}

pragma(inline, true)
float sdlSwapFloatLE(float x)
{
    return x;
}

pragma(inline, true)
Uint16 sdlSwap16BE(Uint16 x)
{
    return sdlSwap16(x);
}

pragma(inline, true)
Uint32 sdlSwap32BE(Uint32 x)
{
    return sdlSwap32(x);
}

pragma(inline, true)
Uint64 sdlSwap64BE(Uint64 x)
{
    return sdlSwap64(x);
}

pragma(inline, true)
float sdlSwapFloatBE(float x)
{
    return sdlSwapFloat(x);
}

alias SDL_Swap16LE = sdlSwap16LE;
alias SDL_Swap32LE = sdlSwap32LE;
alias SDL_Swap64LE = sdlSwap64LE;
alias SDL_SwapFloatLE = sdlSwapFloatLE;
alias SDL_Swap16BE = sdlSwap16BE;
alias SDL_Swap32BE = sdlSwap32BE;
alias SDL_Swap64BE = sdlSwap64BE;
alias SDL_SwapFloatBE = sdlSwapFloatBE;
