module libs.sdl.touch;

import libs.sdl.mouse;

extern (C):
@nogc nothrow:

alias SDL_TouchID = ulong;

alias SDL_FingerID = ulong;

enum SDL_TouchDeviceType
{
    SDL_TOUCH_DEVICE_INVALID = -1,
    SDL_TOUCH_DEVICE_DIRECT = 0,
    SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE = 1,
    SDL_TOUCH_DEVICE_INDIRECT_RELATIVE = 2
}

alias SDL_TOUCH_DEVICE_INVALID = SDL_TouchDeviceType.SDL_TOUCH_DEVICE_INVALID;
alias SDL_TOUCH_DEVICE_DIRECT = SDL_TouchDeviceType.SDL_TOUCH_DEVICE_DIRECT;
alias SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE = SDL_TouchDeviceType.SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE;
alias SDL_TOUCH_DEVICE_INDIRECT_RELATIVE = SDL_TouchDeviceType.SDL_TOUCH_DEVICE_INDIRECT_RELATIVE;

struct SDL_Finger
{
    SDL_FingerID id;
    float x;
    float y;
    float pressure;
}

enum SDL_TOUCH_MOUSEID = cast(SDL_MouseID)-1;

enum SDL_MOUSE_TOUCHID = cast(SDL_TouchID)-1;

pragma(mangle, "SDL_GetTouchDevices")
SDL_TouchID* sdlGetTouchDevices(int* count);

alias SDL_GetTouchDevices = sdlGetTouchDevices;

pragma(mangle, "SDL_GetTouchDeviceName")
const(char)* sdlGetTouchDeviceName(SDL_TouchID touchID);

alias SDL_GetTouchDeviceName = sdlGetTouchDeviceName;

pragma(mangle, "SDL_GetTouchDeviceType")
SDL_TouchDeviceType sdlGetTouchDeviceType(SDL_TouchID touchID);

alias SDL_GetTouchDeviceType = sdlGetTouchDeviceType;

pragma(mangle, "SDL_GetTouchFingers")
SDL_Finger** sdlGetTouchFingers(SDL_TouchID touchID, int* count);

alias SDL_GetTouchFingers = sdlGetTouchFingers;
