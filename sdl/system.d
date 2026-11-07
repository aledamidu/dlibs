module libs.sdl.system;

import libs.sdl.video;

extern (C):
@nogc nothrow:

struct TAGMSG;
alias MSG = TAGMSG;

alias SDL_WindowsMessageHook = bool function(void* userdata, MSG* msg);

pragma(mangle, "SDL_SetWindowsMessageHook")
void sdlSetWindowsMessageHook(SDL_WindowsMessageHook callback, void* userdata);

alias SDL_SetWindowsMessageHook = sdlSetWindowsMessageHook;

pragma(mangle, "SDL_GetDirect3D9AdapterIndex")
int sdlGetDirect3D9AdapterIndex(SDL_DisplayID displayID);

alias SDL_GetDirect3D9AdapterIndex = sdlGetDirect3D9AdapterIndex;

pragma(mangle, "SDL_GetDXGIOutputInfo")
bool sdlGetDXGIOutputInfo(SDL_DisplayID displayID, int* adapterIndex, int* outputIndex);

alias SDL_GetDXGIOutputInfo = sdlGetDXGIOutputInfo;

union _XEvent;
alias XEvent = _XEvent;

alias SDL_X11EventHook = bool function(void* userdata, XEvent* xevent);

pragma(mangle, "SDL_SetX11EventHook")
void sdlSetX11EventHook(SDL_X11EventHook callback, void* userdata);

alias SDL_SetX11EventHook = sdlSetX11EventHook;

pragma(mangle, "SDL_IsPhone")
bool sdlIsPhone();

alias SDL_IsPhone = sdlIsPhone;

pragma(mangle, "SDL_IsTablet")
bool sdlIsTablet();

alias SDL_IsTablet = sdlIsTablet;

pragma(mangle, "SDL_IsTV")
bool sdlIsTV();

alias SDL_IsTV = sdlIsTV;

enum SDL_FormFactor {
    SDL_FORMFACTOR_UNKNOWN = 0,
    SDL_FORMFACTOR_DESKTOP = 1,
    SDL_FORMFACTOR_LAPTOP = 2,
    SDL_FORMFACTOR_PHONE = 3,
    SDL_FORMFACTOR_TABLET = 4,
    SDL_FORMFACTOR_CONSOLE = 5,
    SDL_FORMFACTOR_HANDHELD = 6,
    SDL_FORMFACTOR_WATCH = 7,
    SDL_FORMFACTOR_TV = 8,
    SDL_FORMFACTOR_HEADSET = 9,
    SDL_FORMFACTOR_CAR = 10
}

alias SDL_FORMFACTOR_UNKNOWN = SDL_FormFactor.SDL_FORMFACTOR_UNKNOWN;
alias SDL_FORMFACTOR_DESKTOP = SDL_FormFactor.SDL_FORMFACTOR_DESKTOP;
alias SDL_FORMFACTOR_LAPTOP = SDL_FormFactor.SDL_FORMFACTOR_LAPTOP;
alias SDL_FORMFACTOR_PHONE = SDL_FormFactor.SDL_FORMFACTOR_PHONE;
alias SDL_FORMFACTOR_TABLET = SDL_FormFactor.SDL_FORMFACTOR_TABLET;
alias SDL_FORMFACTOR_CONSOLE = SDL_FormFactor.SDL_FORMFACTOR_CONSOLE;
alias SDL_FORMFACTOR_HANDHELD = SDL_FormFactor.SDL_FORMFACTOR_HANDHELD;
alias SDL_FORMFACTOR_WATCH = SDL_FormFactor.SDL_FORMFACTOR_WATCH;
alias SDL_FORMFACTOR_TV = SDL_FormFactor.SDL_FORMFACTOR_TV;
alias SDL_FORMFACTOR_HEADSET = SDL_FormFactor.SDL_FORMFACTOR_HEADSET;
alias SDL_FORMFACTOR_CAR = SDL_FormFactor.SDL_FORMFACTOR_CAR;

pragma(mangle, "SDL_GetDeviceFormFactor")
SDL_FormFactor sdlGetDeviceFormFactor();

alias SDL_GetDeviceFormFactor = sdlGetDeviceFormFactor;

pragma(mangle, "SDL_GetDeviceFormFactorName")
const(char)* sdlGetDeviceFormFactorName(SDL_FormFactor form_factor);

alias SDL_GetDeviceFormFactorName = sdlGetDeviceFormFactorName;

enum SDL_Sandbox {
    SDL_SANDBOX_NONE = 0,
    SDL_SANDBOX_UNKNOWN_CONTAINER = 1,
    SDL_SANDBOX_FLATPAK = 2,
    SDL_SANDBOX_SNAP = 3,
    SDL_SANDBOX_MACOS = 4,
    SDL_SANDBOX_LOMIRI = 5
}

alias SDL_SANDBOX_NONE = SDL_Sandbox.SDL_SANDBOX_NONE;
alias SDL_SANDBOX_UNKNOWN_CONTAINER = SDL_Sandbox.SDL_SANDBOX_UNKNOWN_CONTAINER;
alias SDL_SANDBOX_FLATPAK = SDL_Sandbox.SDL_SANDBOX_FLATPAK;
alias SDL_SANDBOX_SNAP = SDL_Sandbox.SDL_SANDBOX_SNAP;
alias SDL_SANDBOX_MACOS = SDL_Sandbox.SDL_SANDBOX_MACOS;
alias SDL_SANDBOX_LOMIRI = SDL_Sandbox.SDL_SANDBOX_LOMIRI;

pragma(mangle, "SDL_GetSandbox")
SDL_Sandbox sdlGetSandbox();

alias SDL_GetSandbox = sdlGetSandbox;

pragma(mangle, "SDL_OnApplicationWillTerminate")
void sdlOnApplicationWillTerminate();

alias SDL_OnApplicationWillTerminate = sdlOnApplicationWillTerminate;

pragma(mangle, "SDL_OnApplicationDidReceiveMemoryWarning")
void sdlOnApplicationDidReceiveMemoryWarning();

alias SDL_OnApplicationDidReceiveMemoryWarning = sdlOnApplicationDidReceiveMemoryWarning;

pragma(mangle, "SDL_OnApplicationWillEnterBackground")
void sdlOnApplicationWillEnterBackground();

alias SDL_OnApplicationWillEnterBackground = sdlOnApplicationWillEnterBackground;

pragma(mangle, "SDL_OnApplicationDidEnterBackground")
void sdlOnApplicationDidEnterBackground();

alias SDL_OnApplicationDidEnterBackground = sdlOnApplicationDidEnterBackground;

pragma(mangle, "SDL_OnApplicationWillEnterForeground")
void sdlOnApplicationWillEnterForeground();

alias SDL_OnApplicationWillEnterForeground = sdlOnApplicationWillEnterForeground;

pragma(mangle, "SDL_OnApplicationDidEnterForeground")
void sdlOnApplicationDidEnterForeground();

alias SDL_OnApplicationDidEnterForeground = sdlOnApplicationDidEnterForeground;
