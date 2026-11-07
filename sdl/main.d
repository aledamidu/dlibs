module libs.sdl.main;

import libs.sdl.init;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

alias SDL_main_func = int function(int argc, char** argv);

pragma(mangle, "SDL_main")
int sdlMain(int argc, char** argv);

alias SDL_main = sdlMain;

pragma(mangle, "SDL_SetMainReady")
void sdlSetMainReady();

alias SDL_SetMainReady = sdlSetMainReady;

pragma(mangle, "SDL_RunApp")
int sdlRunApp(int argc, char** argv, SDL_main_func mainFunction, void* reserved);

alias SDL_RunApp = sdlRunApp;

pragma(mangle, "SDL_EnterAppMainCallbacks")
int sdlEnterAppMainCallbacks(int argc, char** argv, SDL_AppInit_func appinit, SDL_AppIterate_func appiter, SDL_AppEvent_func appevent, SDL_AppQuit_func appquit);

alias SDL_EnterAppMainCallbacks = sdlEnterAppMainCallbacks;

pragma(mangle, "SDL_RegisterApp")
bool sdlRegisterApp(const(char)* name, Uint32 style, void* hInst);

alias SDL_RegisterApp = sdlRegisterApp;

pragma(mangle, "SDL_UnregisterApp")
void sdlUnregisterApp();

alias SDL_UnregisterApp = sdlUnregisterApp;

pragma(mangle, "SDL_GDKSuspendComplete")
void sdlGDKSuspendComplete();

alias SDL_GDKSuspendComplete = sdlGDKSuspendComplete;
