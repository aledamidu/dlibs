module libs.sdl.bits;

import libs.sdl.stdinc;

import libs.sdl.stdinc;
import core.bitop : bsr;

extern (C):
@nogc nothrow:

pragma(inline, true)
int sdlMostSignificantBitIndex32(Uint32 x)
{
    return x == 0 ? -1 : cast(int) bsr(cast(size_t) x);
}

alias SDL_MostSignificantBitIndex32 = sdlMostSignificantBitIndex32;

pragma(inline, true)
bool sdlHasExactlyOneBitSet32(Uint32 x)
{
    return x != 0 && (x & (x - 1)) == 0;
}

alias SDL_HasExactlyOneBitSet32 = sdlHasExactlyOneBitSet32;
