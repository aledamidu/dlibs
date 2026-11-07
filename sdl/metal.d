module libs.sdl.metal;

import libs.sdl.video;

extern (C):
@nogc nothrow:

alias SDL_MetalView = void*;

pragma(mangle, "SDL_Metal_CreateView")
SDL_MetalView sdlMetalCreateView(SDL_Window* window);

alias SDL_Metal_CreateView = sdlMetalCreateView;

pragma(mangle, "SDL_Metal_DestroyView")
void sdlMetalDestroyView(SDL_MetalView view);

alias SDL_Metal_DestroyView = sdlMetalDestroyView;

pragma(mangle, "SDL_Metal_GetLayer")
void* sdlMetalGetLayer(SDL_MetalView view);

alias SDL_Metal_GetLayer = sdlMetalGetLayer;
