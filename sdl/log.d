module libs.sdl.log;

import core.stdc.stdarg : va_list;
import core.stdc.stdint;

extern (C):
@nogc nothrow:

enum SDL_LogCategory
{
    SDL_LOG_CATEGORY_APPLICATION = 0,
    SDL_LOG_CATEGORY_ERROR = 1,
    SDL_LOG_CATEGORY_ASSERT = 2,
    SDL_LOG_CATEGORY_SYSTEM = 3,
    SDL_LOG_CATEGORY_AUDIO = 4,
    SDL_LOG_CATEGORY_VIDEO = 5,
    SDL_LOG_CATEGORY_RENDER = 6,
    SDL_LOG_CATEGORY_INPUT = 7,
    SDL_LOG_CATEGORY_TEST = 8,
    SDL_LOG_CATEGORY_GPU = 9,

    SDL_LOG_CATEGORY_RESERVED2 = 10,
    SDL_LOG_CATEGORY_RESERVED3 = 11,
    SDL_LOG_CATEGORY_RESERVED4 = 12,
    SDL_LOG_CATEGORY_RESERVED5 = 13,
    SDL_LOG_CATEGORY_RESERVED6 = 14,
    SDL_LOG_CATEGORY_RESERVED7 = 15,
    SDL_LOG_CATEGORY_RESERVED8 = 16,
    SDL_LOG_CATEGORY_RESERVED9 = 17,
    SDL_LOG_CATEGORY_RESERVED10 = 18,

    SDL_LOG_CATEGORY_CUSTOM = 19
}

alias SDL_LOG_CATEGORY_APPLICATION = SDL_LogCategory.SDL_LOG_CATEGORY_APPLICATION;
alias SDL_LOG_CATEGORY_ERROR = SDL_LogCategory.SDL_LOG_CATEGORY_ERROR;
alias SDL_LOG_CATEGORY_ASSERT = SDL_LogCategory.SDL_LOG_CATEGORY_ASSERT;
alias SDL_LOG_CATEGORY_SYSTEM = SDL_LogCategory.SDL_LOG_CATEGORY_SYSTEM;
alias SDL_LOG_CATEGORY_AUDIO = SDL_LogCategory.SDL_LOG_CATEGORY_AUDIO;
alias SDL_LOG_CATEGORY_VIDEO = SDL_LogCategory.SDL_LOG_CATEGORY_VIDEO;
alias SDL_LOG_CATEGORY_RENDER = SDL_LogCategory.SDL_LOG_CATEGORY_RENDER;
alias SDL_LOG_CATEGORY_INPUT = SDL_LogCategory.SDL_LOG_CATEGORY_INPUT;
alias SDL_LOG_CATEGORY_TEST = SDL_LogCategory.SDL_LOG_CATEGORY_TEST;
alias SDL_LOG_CATEGORY_GPU = SDL_LogCategory.SDL_LOG_CATEGORY_GPU;
alias SDL_LOG_CATEGORY_RESERVED2 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED2;
alias SDL_LOG_CATEGORY_RESERVED3 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED3;
alias SDL_LOG_CATEGORY_RESERVED4 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED4;
alias SDL_LOG_CATEGORY_RESERVED5 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED5;
alias SDL_LOG_CATEGORY_RESERVED6 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED6;
alias SDL_LOG_CATEGORY_RESERVED7 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED7;
alias SDL_LOG_CATEGORY_RESERVED8 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED8;
alias SDL_LOG_CATEGORY_RESERVED9 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED9;
alias SDL_LOG_CATEGORY_RESERVED10 = SDL_LogCategory.SDL_LOG_CATEGORY_RESERVED10;
alias SDL_LOG_CATEGORY_CUSTOM = SDL_LogCategory.SDL_LOG_CATEGORY_CUSTOM;

enum SDL_LogPriority
{
    SDL_LOG_PRIORITY_INVALID = 0,
    SDL_LOG_PRIORITY_TRACE = 1,
    SDL_LOG_PRIORITY_VERBOSE = 2,
    SDL_LOG_PRIORITY_DEBUG = 3,
    SDL_LOG_PRIORITY_INFO = 4,
    SDL_LOG_PRIORITY_WARN = 5,
    SDL_LOG_PRIORITY_ERROR = 6,
    SDL_LOG_PRIORITY_CRITICAL = 7,
    SDL_LOG_PRIORITY_COUNT = 8
}

alias SDL_LOG_PRIORITY_INVALID = SDL_LogPriority.SDL_LOG_PRIORITY_INVALID;
alias SDL_LOG_PRIORITY_TRACE = SDL_LogPriority.SDL_LOG_PRIORITY_TRACE;
alias SDL_LOG_PRIORITY_VERBOSE = SDL_LogPriority.SDL_LOG_PRIORITY_VERBOSE;
alias SDL_LOG_PRIORITY_DEBUG = SDL_LogPriority.SDL_LOG_PRIORITY_DEBUG;
alias SDL_LOG_PRIORITY_INFO = SDL_LogPriority.SDL_LOG_PRIORITY_INFO;
alias SDL_LOG_PRIORITY_WARN = SDL_LogPriority.SDL_LOG_PRIORITY_WARN;
alias SDL_LOG_PRIORITY_ERROR = SDL_LogPriority.SDL_LOG_PRIORITY_ERROR;
alias SDL_LOG_PRIORITY_CRITICAL = SDL_LogPriority.SDL_LOG_PRIORITY_CRITICAL;
alias SDL_LOG_PRIORITY_COUNT = SDL_LogPriority.SDL_LOG_PRIORITY_COUNT;

pragma(mangle, "SDL_SetLogPriorities")
void sdlSetLogPriorities(SDL_LogPriority priority);

alias SDL_SetLogPriorities = sdlSetLogPriorities;

pragma(mangle, "SDL_SetLogPriority")
void sdlSetLogPriority(int category, SDL_LogPriority priority);

alias SDL_SetLogPriority = sdlSetLogPriority;

pragma(mangle, "SDL_GetLogPriority")
SDL_LogPriority sdlGetLogPriority(int category);

alias SDL_GetLogPriority = sdlGetLogPriority;

pragma(mangle, "SDL_ResetLogPriorities")
void sdlResetLogPriorities();

alias SDL_ResetLogPriorities = sdlResetLogPriorities;

pragma(mangle, "SDL_SetLogPriorityPrefix")
bool sdlSetLogPriorityPrefix(SDL_LogPriority priority, const(char)* prefix);

alias SDL_SetLogPriorityPrefix = sdlSetLogPriorityPrefix;

pragma(mangle, "SDL_Log")
void sdlLog(const(char)* fmt, ...);

alias SDL_Log = sdlLog;

pragma(mangle, "SDL_LogTrace")
void sdlLogTrace(int category, const(char)* fmt, ...);

alias SDL_LogTrace = sdlLogTrace;

pragma(mangle, "SDL_LogVerbose")
void sdlLogVerbose(int category, const(char)* fmt, ...);

alias SDL_LogVerbose = sdlLogVerbose;

pragma(mangle, "SDL_LogDebug")
void sdlLogDebug(int category, const(char)* fmt, ...);

alias SDL_LogDebug = sdlLogDebug;

pragma(mangle, "SDL_LogInfo")
void sdlLogInfo(int category, const(char)* fmt, ...);

alias SDL_LogInfo = sdlLogInfo;

pragma(mangle, "SDL_LogWarn")
void sdlLogWarn(int category, const(char)* fmt, ...);

alias SDL_LogWarn = sdlLogWarn;

pragma(mangle, "SDL_LogError")
void sdlLogError(int category, const(char)* fmt, ...);

alias SDL_LogError = sdlLogError;

pragma(mangle, "SDL_LogCritical")
void sdlLogCritical(int category, const(char)* fmt, ...);

alias SDL_LogCritical = sdlLogCritical;

pragma(mangle, "SDL_LogMessage")
void sdlLogMessage(
    int category,
    SDL_LogPriority priority,
    const(char)* fmt,
    ...);

alias SDL_LogMessage = sdlLogMessage;

pragma(mangle, "SDL_LogMessageV")
void sdlLogMessageV(
    int category,
    SDL_LogPriority priority,
    const(char)* fmt,
    va_list ap);

alias SDL_LogMessageV = sdlLogMessageV;

alias SDL_LogOutputFunction = void function(void* userdata, int category, SDL_LogPriority priority, const(
        char)* message);

pragma(mangle, "SDL_GetDefaultLogOutputFunction")
SDL_LogOutputFunction sdlGetDefaultLogOutputFunction();

alias SDL_GetDefaultLogOutputFunction = sdlGetDefaultLogOutputFunction;

pragma(mangle, "SDL_GetLogOutputFunction")
void sdlGetLogOutputFunction(SDL_LogOutputFunction* callback, void** userdata);

alias SDL_GetLogOutputFunction = sdlGetLogOutputFunction;

pragma(mangle, "SDL_SetLogOutputFunction")
void sdlSetLogOutputFunction(SDL_LogOutputFunction callback, void* userdata);

alias SDL_SetLogOutputFunction = sdlSetLogOutputFunction;
