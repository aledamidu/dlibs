module libs.sdl.init;

import libs.sdl.events;

extern (C):
@nogc nothrow:

alias SDL_InitFlags = uint;

enum SDL_INIT_AUDIO = 0x00000010u;
enum SDL_INIT_VIDEO = 0x00000020u;
enum SDL_INIT_JOYSTICK = 0x00000200u;
enum SDL_INIT_HAPTIC = 0x00001000u;
enum SDL_INIT_GAMEPAD = 0x00002000u;
enum SDL_INIT_EVENTS = 0x00004000u;
enum SDL_INIT_SENSOR = 0x00008000u;
enum SDL_INIT_CAMERA = 0x00010000u;

enum SDL_AppResult
{
    SDL_APP_CONTINUE = 0,
    SDL_APP_SUCCESS = 1,
    SDL_APP_FAILURE = 2
}

alias SDL_APP_CONTINUE = SDL_AppResult.SDL_APP_CONTINUE;
alias SDL_APP_SUCCESS = SDL_AppResult.SDL_APP_SUCCESS;
alias SDL_APP_FAILURE = SDL_AppResult.SDL_APP_FAILURE;

alias SDL_AppInit_func = SDL_AppResult function(void** appstate, int argc, char** argv);

alias SDL_AppIterate_func = SDL_AppResult function(void* appstate);

alias SDL_AppEvent_func = SDL_AppResult function(void* appstate, SDL_Event* event);

alias SDL_AppQuit_func = void function(void* appstate, SDL_AppResult result);

pragma(mangle, "SDL_Init")
bool sdlInit(SDL_InitFlags flags);

alias SDL_Init = sdlInit;

pragma(mangle, "SDL_InitSubSystem")
bool sdlInitSubSystem(SDL_InitFlags flags);

alias SDL_InitSubSystem = sdlInitSubSystem;

pragma(mangle, "SDL_QuitSubSystem")
void sdlQuitSubSystem(SDL_InitFlags flags);

alias SDL_QuitSubSystem = sdlQuitSubSystem;

pragma(mangle, "SDL_WasInit")
SDL_InitFlags sdlWasInit(SDL_InitFlags flags);

alias SDL_WasInit = sdlWasInit;

pragma(mangle, "SDL_Quit")
void sdlQuit();

alias SDL_Quit = sdlQuit;

pragma(mangle, "SDL_IsMainThread")
bool sdlIsMainThread();

alias SDL_IsMainThread = sdlIsMainThread;

alias SDL_MainThreadCallback = void function(void* userdata);

pragma(mangle, "SDL_RunOnMainThread")
bool sdlRunOnMainThread(SDL_MainThreadCallback callback, void* userdata, bool wait_complete);

alias SDL_RunOnMainThread = sdlRunOnMainThread;

pragma(mangle, "SDL_SetAppMetadata")
bool sdlSetAppMetadata(const(char)* appname, const(char)* appversion, const(char)* appidentifier);

alias SDL_SetAppMetadata = sdlSetAppMetadata;

pragma(mangle, "SDL_SetAppMetadataProperty")
bool sdlSetAppMetadataProperty(const(char)* name, const(char)* value);

alias SDL_SetAppMetadataProperty = sdlSetAppMetadataProperty;

enum SDL_PROP_APP_METADATA_NAME_STRING = "SDL.app.metadata.name";
enum SDL_PROP_APP_METADATA_VERSION_STRING = "SDL.app.metadata.version";
enum SDL_PROP_APP_METADATA_IDENTIFIER_STRING = "SDL.app.metadata.identifier";
enum SDL_PROP_APP_METADATA_CREATOR_STRING = "SDL.app.metadata.creator";
enum SDL_PROP_APP_METADATA_COPYRIGHT_STRING = "SDL.app.metadata.copyright";
enum SDL_PROP_APP_METADATA_URL_STRING = "SDL.app.metadata.url";
enum SDL_PROP_APP_METADATA_TYPE_STRING = "SDL.app.metadata.type";

pragma(mangle, "SDL_GetAppMetadataProperty")
const(char)* sdlGetAppMetadataProperty(const(char)* name);

alias SDL_GetAppMetadataProperty = sdlGetAppMetadataProperty;
