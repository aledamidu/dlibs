module libs.sdl.timer;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

enum SDL_MS_PER_SECOND = 1000;

enum SDL_US_PER_SECOND = 1_000_000;

enum SDL_NS_PER_SECOND = 1_000_000_000L;

enum SDL_NS_PER_MS = 1_000_000;

enum SDL_NS_PER_US = 1000;

extern (D) auto SDL_SECONDS_TO_NS(T)(auto ref T S) {
    return (cast(Uint64) S) * SDL_NS_PER_SECOND;
}

extern (D) auto SDL_NS_TO_SECONDS(T)(auto ref T NS) {
    return NS / SDL_NS_PER_SECOND;
}

extern (D) auto SDL_MS_TO_NS(T)(auto ref T MS) {
    return (cast(Uint64) MS) * SDL_NS_PER_MS;
}

extern (D) auto SDL_NS_TO_MS(T)(auto ref T NS) {
    return NS / SDL_NS_PER_MS;
}

extern (D) auto SDL_US_TO_NS(T)(auto ref T US) {
    return (cast(Uint64) US) * SDL_NS_PER_US;
}

extern (D) auto SDL_NS_TO_US(T)(auto ref T NS) {
    return NS / SDL_NS_PER_US;
}

pragma(mangle, "SDL_GetTicks")
Uint64 sdlGetTicks();

alias SDL_GetTicks = sdlGetTicks;

pragma(mangle, "SDL_GetTicksNS")
Uint64 sdlGetTicksNS();

alias SDL_GetTicksNS = sdlGetTicksNS;

pragma(mangle, "SDL_GetPerformanceCounter")
Uint64 sdlGetPerformanceCounter();

alias SDL_GetPerformanceCounter = sdlGetPerformanceCounter;

pragma(mangle, "SDL_GetPerformanceFrequency")
Uint64 sdlGetPerformanceFrequency();

alias SDL_GetPerformanceFrequency = sdlGetPerformanceFrequency;

pragma(mangle, "SDL_Delay")
void sdlDelay(Uint32 ms);

alias SDL_Delay = sdlDelay;

pragma(mangle, "SDL_DelayNS")
void sdlDelayNS(Uint64 ns);

alias SDL_DelayNS = sdlDelayNS;

pragma(mangle, "SDL_DelayPrecise")
void sdlDelayPrecise(Uint64 ns);

alias SDL_DelayPrecise = sdlDelayPrecise;

alias SDL_TimerID = uint;

alias SDL_TimerCallback = uint function(void* userdata, SDL_TimerID timerID, Uint32 interval);

pragma(mangle, "SDL_AddTimer")
SDL_TimerID sdlAddTimer(Uint32 interval, SDL_TimerCallback callback, void* userdata);

alias SDL_AddTimer = sdlAddTimer;

alias SDL_NSTimerCallback = ulong function(void* userdata, SDL_TimerID timerID, Uint64 interval);

pragma(mangle, "SDL_AddTimerNS")
SDL_TimerID sdlAddTimerNS(Uint64 interval, SDL_NSTimerCallback callback, void* userdata);

alias SDL_AddTimerNS = sdlAddTimerNS;

pragma(mangle, "SDL_RemoveTimer")
bool sdlRemoveTimer(SDL_TimerID id);

alias SDL_RemoveTimer = sdlRemoveTimer;
