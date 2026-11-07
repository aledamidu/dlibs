module libs.sdl.guid;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_GUID
{
    alias Uint8 = ubyte;
    Uint8[16] data;
}

pragma(mangle, "SDL_GUIDToString")
void sdlGUIDToString(SDL_GUID guid, char* pszGUID, int cbGUID);

alias SDL_GUIDToString = sdlGUIDToString;
pragma(mangle, "SDL_StringToGUID")
SDL_GUID sdlStringToGUID(const(char)* pchGUID);

alias SDL_StringToGUID = sdlStringToGUID;
