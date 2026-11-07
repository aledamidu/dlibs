module libs.sdl.platform;
extern (C):
@nogc nothrow:

pragma(mangle, "SDL_GetPlatform")
const(char)* sdlGetPlatform();

alias SDL_GetPlatform = sdlGetPlatform;
