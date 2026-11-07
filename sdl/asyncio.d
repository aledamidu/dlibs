module libs.sdl.asyncio;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_AsyncIO;

enum SDL_AsyncIOTaskType
{
    SDL_ASYNCIO_TASK_READ = 0,
    SDL_ASYNCIO_TASK_WRITE = 1,
    SDL_ASYNCIO_TASK_CLOSE = 2
}

alias SDL_ASYNCIO_TASK_READ = SDL_AsyncIOTaskType.SDL_ASYNCIO_TASK_READ;
alias SDL_ASYNCIO_TASK_WRITE = SDL_AsyncIOTaskType.SDL_ASYNCIO_TASK_WRITE;
alias SDL_ASYNCIO_TASK_CLOSE = SDL_AsyncIOTaskType.SDL_ASYNCIO_TASK_CLOSE;

enum SDL_AsyncIOResult
{
    SDL_ASYNCIO_COMPLETE = 0,
    SDL_ASYNCIO_FAILURE = 1,
    SDL_ASYNCIO_CANCELED = 2
}

alias SDL_ASYNCIO_COMPLETE = SDL_AsyncIOResult.SDL_ASYNCIO_COMPLETE;
alias SDL_ASYNCIO_FAILURE = SDL_AsyncIOResult.SDL_ASYNCIO_FAILURE;
alias SDL_ASYNCIO_CANCELED = SDL_AsyncIOResult.SDL_ASYNCIO_CANCELED;

struct SDL_AsyncIOOutcome
{
    SDL_AsyncIO* asyncio;
    SDL_AsyncIOTaskType type;
    SDL_AsyncIOResult result;
    void* buffer;

    alias Uint64 = ulong;
    Uint64 offset;
    Uint64 bytes_requested;
    Uint64 bytes_transferred;
    void* userdata;
}

struct SDL_AsyncIOQueue;
pragma(mangle, "SDL_AsyncIOFromFile")
SDL_AsyncIO* sdlAsyncIOFromFile(const(char)* file, const(char)* mode);

alias SDL_AsyncIOFromFile = sdlAsyncIOFromFile;
pragma(mangle, "SDL_GetAsyncIOSize")
Sint64 sdlGetAsyncIOSize(SDL_AsyncIO* asyncio);

alias SDL_GetAsyncIOSize = sdlGetAsyncIOSize;
pragma(mangle, "SDL_ReadAsyncIO")
bool sdlReadAsyncIO(SDL_AsyncIO* asyncio, void* ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue* queue, void* userdata);

alias SDL_ReadAsyncIO = sdlReadAsyncIO;
pragma(mangle, "SDL_WriteAsyncIO")
bool sdlWriteAsyncIO(SDL_AsyncIO* asyncio, void* ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue* queue, void* userdata);

alias SDL_WriteAsyncIO = sdlWriteAsyncIO;
pragma(mangle, "SDL_CloseAsyncIO")
bool sdlCloseAsyncIO(SDL_AsyncIO* asyncio, bool flush, SDL_AsyncIOQueue* queue, void* userdata);

alias SDL_CloseAsyncIO = sdlCloseAsyncIO;
pragma(mangle, "SDL_CreateAsyncIOQueue")
SDL_AsyncIOQueue* sdlCreateAsyncIOQueue();

alias SDL_CreateAsyncIOQueue = sdlCreateAsyncIOQueue;
pragma(mangle, "SDL_DestroyAsyncIOQueue")
void sdlDestroyAsyncIOQueue(SDL_AsyncIOQueue* queue);

alias SDL_DestroyAsyncIOQueue = sdlDestroyAsyncIOQueue;
pragma(mangle, "SDL_GetAsyncIOResult")
bool sdlGetAsyncIOResult(SDL_AsyncIOQueue* queue, SDL_AsyncIOOutcome* outcome);

alias SDL_GetAsyncIOResult = sdlGetAsyncIOResult;
pragma(mangle, "SDL_WaitAsyncIOResult")
bool sdlWaitAsyncIOResult(SDL_AsyncIOQueue* queue, SDL_AsyncIOOutcome* outcome, Sint32 timeoutMS);

alias SDL_WaitAsyncIOResult = sdlWaitAsyncIOResult;
pragma(mangle, "SDL_SignalAsyncIOQueue")
void sdlSignalAsyncIOQueue(SDL_AsyncIOQueue* queue);

alias SDL_SignalAsyncIOQueue = sdlSignalAsyncIOQueue;

pragma(mangle, "SDL_LoadFileAsync")
bool sdlLoadFileAsync(const(char)* file, SDL_AsyncIOQueue* queue, void* userdata);

alias SDL_LoadFileAsync = sdlLoadFileAsync;
