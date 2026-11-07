module libs.sdl.error;

import core.stdc.stdarg : va_list;
import core.stdc.stdint;

extern (C):
@nogc nothrow:

pragma(mangle, "SDL_SetError")
bool sdlSetError(const(char)* fmt, ...);

alias SDL_SetError = sdlSetError;

pragma(mangle, "SDL_SetErrorV")
bool sdlSetErrorV(const(char)* fmt, va_list ap);

alias SDL_SetErrorV = sdlSetErrorV;

pragma(mangle, "SDL_OutOfMemory")
bool sdlOutOfMemory();

alias SDL_OutOfMemory = sdlOutOfMemory;

pragma(mangle, "SDL_GetError")
const(char)* sdlGetError();

alias SDL_GetError = sdlGetError;

pragma(mangle, "SDL_ClearError")
bool sdlClearError();

alias SDL_ClearError = sdlClearError;

extern (D) auto sdlUnsupported()
{
    return SDL_SetError("That operation is not supported");
}

extern (D) auto sdlInvalidParamError(T)(auto ref T param)
{
    return SDL_SetError("Parameter '%s' is invalid", param);
}
