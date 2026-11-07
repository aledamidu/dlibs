module libs.sdl.atomic;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

alias SDL_SpinLock = int;

pragma(mangle, "SDL_TryLockSpinlock")
bool sdlTryLockSpinlock(SDL_SpinLock* lock);

alias SDL_TryLockSpinlock = sdlTryLockSpinlock;

pragma(mangle, "SDL_LockSpinlock")
void sdlLockSpinlock(SDL_SpinLock* lock);

alias SDL_LockSpinlock = sdlLockSpinlock;

pragma(mangle, "SDL_UnlockSpinlock")
void sdlUnlockSpinlock(SDL_SpinLock* lock);

alias SDL_UnlockSpinlock = sdlUnlockSpinlock;

void sdlCompilerBarrier()
{
    import core.atomic : atomicFence;

    atomicFence();
}

alias SDL_CompilerBarrier = sdlCompilerBarrier;

pragma(mangle, "SDL_MemoryBarrierReleaseFunction")
void sdlMemoryBarrierReleaseFunction();

alias SDL_MemoryBarrierReleaseFunction = sdlMemoryBarrierReleaseFunction;

pragma(mangle, "SDL_MemoryBarrierAcquireFunction")
void sdlMemoryBarrierAcquireFunction();

alias SDL_MemoryBarrierAcquireFunction = sdlMemoryBarrierAcquireFunction;

void sdlMemoryBarrierRelease()
{
    SDL_MemoryBarrierReleaseFunction();
}

alias SDL_MemoryBarrierRelease = sdlMemoryBarrierRelease;

void sdlMemoryBarrierAcquire()
{
    SDL_MemoryBarrierAcquireFunction();
}

alias SDL_MemoryBarrierAcquire = sdlMemoryBarrierAcquire;

struct SDL_AtomicInt
{
    int value;
}

pragma(mangle, "SDL_CompareAndSwapAtomicInt")
bool sdlCompareAndSwapAtomicInt(SDL_AtomicInt* a, int oldval, int newval);

alias SDL_CompareAndSwapAtomicInt = sdlCompareAndSwapAtomicInt;

pragma(mangle, "SDL_SetAtomicInt")
int sdlSetAtomicInt(SDL_AtomicInt* a, int v);

alias SDL_SetAtomicInt = sdlSetAtomicInt;

pragma(mangle, "SDL_GetAtomicInt")
int sdlGetAtomicInt(SDL_AtomicInt* a);

alias SDL_GetAtomicInt = sdlGetAtomicInt;

pragma(mangle, "SDL_AddAtomicInt")
int sdlAddAtomicInt(SDL_AtomicInt* a, int v);

alias SDL_AddAtomicInt = sdlAddAtomicInt;

extern (D) auto sdlAtomicIncRef(T)(auto ref T a)
{
    return SDL_AddAtomicInt(a, 1);
}

extern (D) auto sdlAtomicDecRef(T)(auto ref T a)
{
    return SDL_AddAtomicInt(a, -1) == 1;
}

struct SDL_AtomicU32
{
    alias Uint32 = uint;
    Uint32 value;
}

pragma(mangle, "SDL_CompareAndSwapAtomicU32")
bool sdlCompareAndSwapAtomicU32(SDL_AtomicU32* a, Uint32 oldval, Uint32 newval);

alias SDL_CompareAndSwapAtomicU32 = sdlCompareAndSwapAtomicU32;

pragma(mangle, "SDL_SetAtomicU32")
Uint32 sdlSetAtomicU32(SDL_AtomicU32* a, Uint32 v);

alias SDL_SetAtomicU32 = sdlSetAtomicU32;

pragma(mangle, "SDL_GetAtomicU32")
Uint32 sdlGetAtomicU32(SDL_AtomicU32* a);

alias SDL_GetAtomicU32 = sdlGetAtomicU32;

pragma(mangle, "SDL_AddAtomicU32")
Uint32 sdlAddAtomicU32(SDL_AtomicU32* a, int v);

alias SDL_AddAtomicU32 = sdlAddAtomicU32;

pragma(mangle, "SDL_CompareAndSwapAtomicPointer")
bool sdlCompareAndSwapAtomicPointer(void** a, void* oldval, void* newval);

alias SDL_CompareAndSwapAtomicPointer = sdlCompareAndSwapAtomicPointer;

pragma(mangle, "SDL_SetAtomicPointer")
void* sdlSetAtomicPointer(void** a, void* v);

alias SDL_SetAtomicPointer = sdlSetAtomicPointer;

pragma(mangle, "SDL_GetAtomicPointer")
void* sdlGetAtomicPointer(void** a);

alias SDL_GetAtomicPointer = sdlGetAtomicPointer;
