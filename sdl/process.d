module libs.sdl.process;

import libs.sdl.iostream;
import libs.sdl.properties;

extern (C):
@nogc nothrow:

struct SDL_Process;

pragma(mangle, "SDL_CreateProcess")
SDL_Process* sdlCreateProcess(const(char*)* args, bool pipe_stdio);

alias SDL_CreateProcess = sdlCreateProcess;

enum SDL_ProcessIO {
    SDL_PROCESS_STDIO_INHERITED = 0,
    SDL_PROCESS_STDIO_NULL = 1,
    SDL_PROCESS_STDIO_APP = 2,
    SDL_PROCESS_STDIO_REDIRECT = 3
}

alias SDL_PROCESS_STDIO_INHERITED = SDL_ProcessIO.SDL_PROCESS_STDIO_INHERITED;
alias SDL_PROCESS_STDIO_NULL = SDL_ProcessIO.SDL_PROCESS_STDIO_NULL;
alias SDL_PROCESS_STDIO_APP = SDL_ProcessIO.SDL_PROCESS_STDIO_APP;
alias SDL_PROCESS_STDIO_REDIRECT = SDL_ProcessIO.SDL_PROCESS_STDIO_REDIRECT;

pragma(mangle, "SDL_CreateProcessWithProperties")
SDL_Process* sdlCreateProcessWithProperties(SDL_PropertiesID props);

alias SDL_CreateProcessWithProperties = sdlCreateProcessWithProperties;

enum SDL_PROP_PROCESS_CREATE_ARGS_POINTER = "SDL.process.create.args";
enum SDL_PROP_PROCESS_CREATE_ENVIRONMENT_POINTER = "SDL.process.create.environment";
enum SDL_PROP_PROCESS_CREATE_WORKING_DIRECTORY_STRING = "SDL.process.create.working_directory";
enum SDL_PROP_PROCESS_CREATE_STDIN_NUMBER = "SDL.process.create.stdin_option";
enum SDL_PROP_PROCESS_CREATE_STDIN_POINTER = "SDL.process.create.stdin_source";
enum SDL_PROP_PROCESS_CREATE_STDOUT_NUMBER = "SDL.process.create.stdout_option";
enum SDL_PROP_PROCESS_CREATE_STDOUT_POINTER = "SDL.process.create.stdout_source";
enum SDL_PROP_PROCESS_CREATE_STDERR_NUMBER = "SDL.process.create.stderr_option";
enum SDL_PROP_PROCESS_CREATE_STDERR_POINTER = "SDL.process.create.stderr_source";
enum SDL_PROP_PROCESS_CREATE_STDERR_TO_STDOUT_BOOLEAN = "SDL.process.create.stderr_to_stdout";
enum SDL_PROP_PROCESS_CREATE_BACKGROUND_BOOLEAN = "SDL.process.create.background";
enum SDL_PROP_PROCESS_CREATE_CMDLINE_STRING = "SDL.process.create.cmdline";

pragma(mangle, "SDL_GetProcessProperties")
SDL_PropertiesID sdlGetProcessProperties(SDL_Process* process);

alias SDL_GetProcessProperties = sdlGetProcessProperties;

enum SDL_PROP_PROCESS_PID_NUMBER = "SDL.process.pid";
enum SDL_PROP_PROCESS_STDIN_POINTER = "SDL.process.stdin";
enum SDL_PROP_PROCESS_STDOUT_POINTER = "SDL.process.stdout";
enum SDL_PROP_PROCESS_STDERR_POINTER = "SDL.process.stderr";
enum SDL_PROP_PROCESS_BACKGROUND_BOOLEAN = "SDL.process.background";

pragma(mangle, "SDL_ReadProcess")
void* sdlReadProcess(SDL_Process* process, size_t* datasize, int* exitcode);

alias SDL_ReadProcess = sdlReadProcess;

pragma(mangle, "SDL_GetProcessInput")
SDL_IOStream* sdlGetProcessInput(SDL_Process* process);

alias SDL_GetProcessInput = sdlGetProcessInput;

pragma(mangle, "SDL_GetProcessOutput")
SDL_IOStream* sdlGetProcessOutput(SDL_Process* process);

alias SDL_GetProcessOutput = sdlGetProcessOutput;

pragma(mangle, "SDL_KillProcess")
bool sdlKillProcess(SDL_Process* process, bool force);

alias SDL_KillProcess = sdlKillProcess;

pragma(mangle, "SDL_WaitProcess")
bool sdlWaitProcess(SDL_Process* process, bool block, int* exitcode);

alias SDL_WaitProcess = sdlWaitProcess;

pragma(mangle, "SDL_DestroyProcess")
void sdlDestroyProcess(SDL_Process* process);

alias SDL_DestroyProcess = sdlDestroyProcess;
