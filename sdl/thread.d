module libs.sdl.thread;

import libs.sdl.atomic;
import libs.sdl.properties;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_Thread;

alias SDL_ThreadID = ulong;

alias SDL_TLSID = SDL_AtomicInt;

enum SDL_ThreadPriority {
    SDL_THREAD_PRIORITY_LOW = 0,
    SDL_THREAD_PRIORITY_NORMAL = 1,
    SDL_THREAD_PRIORITY_HIGH = 2,
    SDL_THREAD_PRIORITY_TIME_CRITICAL = 3
}

alias SDL_THREAD_PRIORITY_LOW = SDL_ThreadPriority.SDL_THREAD_PRIORITY_LOW;
alias SDL_THREAD_PRIORITY_NORMAL = SDL_ThreadPriority.SDL_THREAD_PRIORITY_NORMAL;
alias SDL_THREAD_PRIORITY_HIGH = SDL_ThreadPriority.SDL_THREAD_PRIORITY_HIGH;
alias SDL_THREAD_PRIORITY_TIME_CRITICAL = SDL_ThreadPriority.SDL_THREAD_PRIORITY_TIME_CRITICAL;

enum SDL_ThreadState {
    SDL_THREAD_UNKNOWN = 0,
    SDL_THREAD_ALIVE = 1,
    SDL_THREAD_DETACHED = 2,
    SDL_THREAD_COMPLETE = 3
}

alias SDL_THREAD_UNKNOWN = SDL_ThreadState.SDL_THREAD_UNKNOWN;
alias SDL_THREAD_ALIVE = SDL_ThreadState.SDL_THREAD_ALIVE;
alias SDL_THREAD_DETACHED = SDL_ThreadState.SDL_THREAD_DETACHED;
alias SDL_THREAD_COMPLETE = SDL_ThreadState.SDL_THREAD_COMPLETE;

alias SDL_ThreadFunction = int function(void* data);

enum SDL_BeginThreadFunction = null;

enum SDL_EndThreadFunction = null;

pragma(mangle, "SDL_CreateThreadRuntime")
SDL_Thread* sdlCreateThreadRuntime(SDL_ThreadFunction fn, const(char)* name, void* data, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);

alias SDL_CreateThreadRuntime = sdlCreateThreadRuntime;

pragma(mangle, "SDL_CreateThreadWithPropertiesRuntime")
SDL_Thread* sdlCreateThreadWithPropertiesRuntime(SDL_PropertiesID props, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);

alias SDL_CreateThreadWithPropertiesRuntime = sdlCreateThreadWithPropertiesRuntime;

extern (D) auto sdlCreateThread(T0, T1, T2)(auto ref T0 fn, auto ref T1 name, auto ref T2 data) {
    return SDL_CreateThreadRuntime(fn, name, data, cast(SDL_FunctionPointer) SDL_BeginThreadFunction, cast(
            SDL_FunctionPointer) SDL_EndThreadFunction);
}

extern (D) auto sdlCreateThreadWithProperties(T)(auto ref T props) {
    return SDL_CreateThreadWithPropertiesRuntime(props, cast(SDL_FunctionPointer) SDL_BeginThreadFunction, cast(
            SDL_FunctionPointer) SDL_EndThreadFunction);
}

enum SDL_PROP_THREAD_CREATE_ENTRY_FUNCTION_POINTER = "SDL.thread.create.entry_function";
enum SDL_PROP_THREAD_CREATE_NAME_STRING = "SDL.thread.create.name";
enum SDL_PROP_THREAD_CREATE_USERDATA_POINTER = "SDL.thread.create.userdata";
enum SDL_PROP_THREAD_CREATE_STACKSIZE_NUMBER = "SDL.thread.create.stacksize";

pragma(mangle, "SDL_GetThreadName")
const(char)* sdlGetThreadName(SDL_Thread* thread);

alias SDL_GetThreadName = sdlGetThreadName;

pragma(mangle, "SDL_GetCurrentThreadID")
SDL_ThreadID sdlGetCurrentThreadID();

alias SDL_GetCurrentThreadID = sdlGetCurrentThreadID;

pragma(mangle, "SDL_GetThreadID")
SDL_ThreadID sdlGetThreadID(SDL_Thread* thread);

alias SDL_GetThreadID = sdlGetThreadID;

pragma(mangle, "SDL_SetCurrentThreadPriority")
bool sdlSetCurrentThreadPriority(SDL_ThreadPriority priority);

alias SDL_SetCurrentThreadPriority = sdlSetCurrentThreadPriority;

pragma(mangle, "SDL_WaitThread")
void sdlWaitThread(SDL_Thread* thread, int* status);

alias SDL_WaitThread = sdlWaitThread;

pragma(mangle, "SDL_GetThreadState")
SDL_ThreadState sdlGetThreadState(SDL_Thread* thread);

alias SDL_GetThreadState = sdlGetThreadState;

pragma(mangle, "SDL_DetachThread")
void sdlDetachThread(SDL_Thread* thread);

alias SDL_DetachThread = sdlDetachThread;

pragma(mangle, "SDL_GetTLS")
void* sdlGetTLS(SDL_TLSID* id);

alias SDL_GetTLS = sdlGetTLS;

alias SDL_TLSDestructorCallback = void function(void* value);

pragma(mangle, "SDL_SetTLS")
bool sdlSetTLS(SDL_TLSID* id, const(void)* value, SDL_TLSDestructorCallback destructor);

alias SDL_SetTLS = sdlSetTLS;

pragma(mangle, "SDL_CleanupTLS")
void sdlCleanupTLS();

alias SDL_CleanupTLS = sdlCleanupTLS;
