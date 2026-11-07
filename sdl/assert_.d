module libs.sdl.assert_;
extern (C):
@nogc nothrow:

enum SDL_ASSERT_LEVEL = 1;

enum SDL_FILE = __FILE__;

enum SDL_ASSERT_FILE = SDL_FILE;

enum SDL_LINE = __LINE__;

enum SDL_NULL_WHILE_LOOP_CONDITION = 0;

enum SDL_AssertState
{
    SDL_ASSERTION_RETRY = 0,
    SDL_ASSERTION_BREAK = 1,
    SDL_ASSERTION_ABORT = 2,
    SDL_ASSERTION_IGNORE = 3,
    SDL_ASSERTION_ALWAYS_IGNORE = 4
}

alias SDL_ASSERTION_RETRY = SDL_AssertState.SDL_ASSERTION_RETRY;
alias SDL_ASSERTION_BREAK = SDL_AssertState.SDL_ASSERTION_BREAK;
alias SDL_ASSERTION_ABORT = SDL_AssertState.SDL_ASSERTION_ABORT;
alias SDL_ASSERTION_IGNORE = SDL_AssertState.SDL_ASSERTION_IGNORE;
alias SDL_ASSERTION_ALWAYS_IGNORE = SDL_AssertState.SDL_ASSERTION_ALWAYS_IGNORE;

struct SDL_AssertData
{
    bool always_ignore;
    uint trigger_count;
    const(char)* condition;
    const(char)* filename;
    int linenum;
    const(char)* function_;
    const(SDL_AssertData)* next;
}

pragma(mangle, "SDL_ReportAssertion")
SDL_AssertState sdlReportAssertion(
    SDL_AssertData* data,
    const(char)* func,
    const(char)* file,
    int line);

alias SDL_ReportAssertion = sdlReportAssertion;

alias SDL_AssertionHandler = SDL_AssertState function(const(SDL_AssertData)* data, void* userdata);

pragma(mangle, "SDL_SetAssertionHandler")
void sdlSetAssertionHandler(SDL_AssertionHandler handler, void* userdata);

alias SDL_SetAssertionHandler = sdlSetAssertionHandler;

pragma(mangle, "SDL_GetDefaultAssertionHandler")
SDL_AssertionHandler sdlGetDefaultAssertionHandler();

alias SDL_GetDefaultAssertionHandler = sdlGetDefaultAssertionHandler;

pragma(mangle, "SDL_GetAssertionHandler")
SDL_AssertionHandler sdlGetAssertionHandler(void** puserdata);

alias SDL_GetAssertionHandler = sdlGetAssertionHandler;

pragma(mangle, "SDL_GetAssertionReport")
const(SDL_AssertData)* sdlGetAssertionReport();

alias SDL_GetAssertionReport = sdlGetAssertionReport;

pragma(mangle, "SDL_ResetAssertionReport")
void sdlResetAssertionReport();

alias SDL_ResetAssertionReport = sdlResetAssertionReport;
