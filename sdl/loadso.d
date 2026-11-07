module libs.sdl.loadso;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_SharedObject;

pragma(mangle, "SDL_LoadObject")
SDL_SharedObject* sdlLoadObject(const(char)* sofile);

alias SDL_LoadObject = sdlLoadObject;

pragma(mangle, "SDL_LoadFunction")
SDL_FunctionPointer sdlLoadFunction(SDL_SharedObject* handle, const(char)* name);

alias SDL_LoadFunction = sdlLoadFunction;

pragma(mangle, "SDL_UnloadObject")
void sdlUnloadObject(SDL_SharedObject* handle);

alias SDL_UnloadObject = sdlUnloadObject;
