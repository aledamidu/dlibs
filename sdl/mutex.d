module libs.sdl.mutex;

import libs.sdl.atomic;
import libs.sdl.stdinc;
import libs.sdl.thread;

extern (C):
@nogc nothrow:

struct SDL_Mutex;

pragma(mangle, "SDL_CreateMutex")
SDL_Mutex* sdlCreateMutex();

alias SDL_CreateMutex = sdlCreateMutex;

pragma(mangle, "SDL_LockMutex")
void sdlLockMutex(SDL_Mutex* mutex);

alias SDL_LockMutex = sdlLockMutex;

pragma(mangle, "SDL_TryLockMutex")
bool sdlTryLockMutex(SDL_Mutex* mutex);

alias SDL_TryLockMutex = sdlTryLockMutex;

pragma(mangle, "SDL_UnlockMutex")
void sdlUnlockMutex(SDL_Mutex* mutex);

alias SDL_UnlockMutex = sdlUnlockMutex;

pragma(mangle, "SDL_DestroyMutex")
void sdlDestroyMutex(SDL_Mutex* mutex);

alias SDL_DestroyMutex = sdlDestroyMutex;

struct SDL_RWLock;

pragma(mangle, "SDL_CreateRWLock")
SDL_RWLock* sdlCreateRWLock();

alias SDL_CreateRWLock = sdlCreateRWLock;

pragma(mangle, "SDL_LockRWLockForReading")
void sdlLockRWLockForReading(SDL_RWLock* rwlock);

alias SDL_LockRWLockForReading = sdlLockRWLockForReading;

pragma(mangle, "SDL_LockRWLockForWriting")
void sdlLockRWLockForWriting(SDL_RWLock* rwlock);

alias SDL_LockRWLockForWriting = sdlLockRWLockForWriting;

pragma(mangle, "SDL_TryLockRWLockForReading")
bool sdlTryLockRWLockForReading(SDL_RWLock* rwlock);

alias SDL_TryLockRWLockForReading = sdlTryLockRWLockForReading;

pragma(mangle, "SDL_TryLockRWLockForWriting")
bool sdlTryLockRWLockForWriting(SDL_RWLock* rwlock);

alias SDL_TryLockRWLockForWriting = sdlTryLockRWLockForWriting;

pragma(mangle, "SDL_UnlockRWLock")
void sdlUnlockRWLock(SDL_RWLock* rwlock);

alias SDL_UnlockRWLock = sdlUnlockRWLock;

pragma(mangle, "SDL_DestroyRWLock")
void sdlDestroyRWLock(SDL_RWLock* rwlock);

alias SDL_DestroyRWLock = sdlDestroyRWLock;

struct SDL_Semaphore;

pragma(mangle, "SDL_CreateSemaphore")
SDL_Semaphore* sdlCreateSemaphore(Uint32 initial_value);

alias SDL_CreateSemaphore = sdlCreateSemaphore;

pragma(mangle, "SDL_DestroySemaphore")
void sdlDestroySemaphore(SDL_Semaphore* sem);

alias SDL_DestroySemaphore = sdlDestroySemaphore;

pragma(mangle, "SDL_WaitSemaphore")
void sdlWaitSemaphore(SDL_Semaphore* sem);

alias SDL_WaitSemaphore = sdlWaitSemaphore;

pragma(mangle, "SDL_TryWaitSemaphore")
bool sdlTryWaitSemaphore(SDL_Semaphore* sem);

alias SDL_TryWaitSemaphore = sdlTryWaitSemaphore;

pragma(mangle, "SDL_WaitSemaphoreTimeout")
bool sdlWaitSemaphoreTimeout(SDL_Semaphore* sem, Sint32 timeoutMS);

alias SDL_WaitSemaphoreTimeout = sdlWaitSemaphoreTimeout;

pragma(mangle, "SDL_SignalSemaphore")
void sdlSignalSemaphore(SDL_Semaphore* sem);

alias SDL_SignalSemaphore = sdlSignalSemaphore;

pragma(mangle, "SDL_GetSemaphoreValue")
Uint32 sdlGetSemaphoreValue(SDL_Semaphore* sem);

alias SDL_GetSemaphoreValue = sdlGetSemaphoreValue;

struct SDL_Condition;

pragma(mangle, "SDL_CreateCondition")
SDL_Condition* sdlCreateCondition();

alias SDL_CreateCondition = sdlCreateCondition;

pragma(mangle, "SDL_DestroyCondition")
void sdlDestroyCondition(SDL_Condition* cond);

alias SDL_DestroyCondition = sdlDestroyCondition;

pragma(mangle, "SDL_SignalCondition")
void sdlSignalCondition(SDL_Condition* cond);

alias SDL_SignalCondition = sdlSignalCondition;

pragma(mangle, "SDL_BroadcastCondition")
void sdlBroadcastCondition(SDL_Condition* cond);

alias SDL_BroadcastCondition = sdlBroadcastCondition;

pragma(mangle, "SDL_WaitCondition")
void sdlWaitCondition(SDL_Condition* cond, SDL_Mutex* mutex);

alias SDL_WaitCondition = sdlWaitCondition;

pragma(mangle, "SDL_WaitConditionTimeout")
bool sdlWaitConditionTimeout(
    SDL_Condition* cond,
    SDL_Mutex* mutex,
    Sint32 timeoutMS);

alias SDL_WaitConditionTimeout = sdlWaitConditionTimeout;

enum SDL_InitStatus
{
    SDL_INIT_STATUS_UNINITIALIZED = 0,
    SDL_INIT_STATUS_INITIALIZING = 1,
    SDL_INIT_STATUS_INITIALIZED = 2,
    SDL_INIT_STATUS_UNINITIALIZING = 3
}

alias SDL_INIT_STATUS_UNINITIALIZED = SDL_InitStatus.SDL_INIT_STATUS_UNINITIALIZED;
alias SDL_INIT_STATUS_INITIALIZING = SDL_InitStatus.SDL_INIT_STATUS_INITIALIZING;
alias SDL_INIT_STATUS_INITIALIZED = SDL_InitStatus.SDL_INIT_STATUS_INITIALIZED;
alias SDL_INIT_STATUS_UNINITIALIZING = SDL_InitStatus.SDL_INIT_STATUS_UNINITIALIZING;

struct SDL_InitState
{
    SDL_AtomicInt status;
    alias SDL_ThreadID = ulong;
    SDL_ThreadID thread;
    void* reserved;
}

pragma(mangle, "SDL_ShouldInit")
bool sdlShouldInit(SDL_InitState* state);

alias SDL_ShouldInit = sdlShouldInit;

pragma(mangle, "SDL_ShouldQuit")
bool sdlShouldQuit(SDL_InitState* state);

alias SDL_ShouldQuit = sdlShouldQuit;

pragma(mangle, "SDL_SetInitialized")
void sdlSetInitialized(SDL_InitState* state, bool initialized);

alias SDL_SetInitialized = sdlSetInitialized;
