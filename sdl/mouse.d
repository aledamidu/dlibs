module libs.sdl.mouse;

import libs.sdl.stdinc;
import libs.sdl.surface;
import libs.sdl.video;

extern (C):
@nogc nothrow:

alias SDL_MouseID = uint;

struct SDL_Cursor;

enum SDL_SystemCursor
{
    SDL_SYSTEM_CURSOR_DEFAULT = 0,
    SDL_SYSTEM_CURSOR_TEXT = 1,
    SDL_SYSTEM_CURSOR_WAIT = 2,
    SDL_SYSTEM_CURSOR_CROSSHAIR = 3,
    SDL_SYSTEM_CURSOR_PROGRESS = 4,
    SDL_SYSTEM_CURSOR_NWSE_RESIZE = 5,
    SDL_SYSTEM_CURSOR_NESW_RESIZE = 6,
    SDL_SYSTEM_CURSOR_EW_RESIZE = 7,
    SDL_SYSTEM_CURSOR_NS_RESIZE = 8,
    SDL_SYSTEM_CURSOR_MOVE = 9,
    SDL_SYSTEM_CURSOR_NOT_ALLOWED = 10,
    SDL_SYSTEM_CURSOR_POINTER = 11,
    SDL_SYSTEM_CURSOR_NW_RESIZE = 12,
    SDL_SYSTEM_CURSOR_N_RESIZE = 13,
    SDL_SYSTEM_CURSOR_NE_RESIZE = 14,
    SDL_SYSTEM_CURSOR_E_RESIZE = 15,
    SDL_SYSTEM_CURSOR_SE_RESIZE = 16,
    SDL_SYSTEM_CURSOR_S_RESIZE = 17,
    SDL_SYSTEM_CURSOR_SW_RESIZE = 18,
    SDL_SYSTEM_CURSOR_W_RESIZE = 19,
    SDL_SYSTEM_CURSOR_CONTEXT_MENU = 20,
    SDL_SYSTEM_CURSOR_HELP = 21,
    SDL_SYSTEM_CURSOR_CELL = 22,
    SDL_SYSTEM_CURSOR_VERTICAL_TEXT = 23,
    SDL_SYSTEM_CURSOR_ALIAS = 24,
    SDL_SYSTEM_CURSOR_COPY = 25,
    SDL_SYSTEM_CURSOR_NO_DROP = 26,
    SDL_SYSTEM_CURSOR_GRAB = 27,
    SDL_SYSTEM_CURSOR_GRABBING = 28,
    SDL_SYSTEM_CURSOR_COL_RESIZE = 29,
    SDL_SYSTEM_CURSOR_ROW_RESIZE = 30,
    SDL_SYSTEM_CURSOR_ALL_SCROLL = 31,
    SDL_SYSTEM_CURSOR_ZOOM_IN = 32,
    SDL_SYSTEM_CURSOR_ZOOM_OUT = 33,
    SDL_SYSTEM_CURSOR_COUNT = 34
}

alias SDL_SYSTEM_CURSOR_DEFAULT = SDL_SystemCursor.SDL_SYSTEM_CURSOR_DEFAULT;
alias SDL_SYSTEM_CURSOR_TEXT = SDL_SystemCursor.SDL_SYSTEM_CURSOR_TEXT;
alias SDL_SYSTEM_CURSOR_WAIT = SDL_SystemCursor.SDL_SYSTEM_CURSOR_WAIT;
alias SDL_SYSTEM_CURSOR_CROSSHAIR = SDL_SystemCursor.SDL_SYSTEM_CURSOR_CROSSHAIR;
alias SDL_SYSTEM_CURSOR_PROGRESS = SDL_SystemCursor.SDL_SYSTEM_CURSOR_PROGRESS;
alias SDL_SYSTEM_CURSOR_NWSE_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_NWSE_RESIZE;
alias SDL_SYSTEM_CURSOR_NESW_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_NESW_RESIZE;
alias SDL_SYSTEM_CURSOR_EW_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_EW_RESIZE;
alias SDL_SYSTEM_CURSOR_NS_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_NS_RESIZE;
alias SDL_SYSTEM_CURSOR_MOVE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_MOVE;
alias SDL_SYSTEM_CURSOR_NOT_ALLOWED = SDL_SystemCursor.SDL_SYSTEM_CURSOR_NOT_ALLOWED;
alias SDL_SYSTEM_CURSOR_POINTER = SDL_SystemCursor.SDL_SYSTEM_CURSOR_POINTER;
alias SDL_SYSTEM_CURSOR_NW_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_NW_RESIZE;
alias SDL_SYSTEM_CURSOR_N_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_N_RESIZE;
alias SDL_SYSTEM_CURSOR_NE_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_NE_RESIZE;
alias SDL_SYSTEM_CURSOR_E_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_E_RESIZE;
alias SDL_SYSTEM_CURSOR_SE_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_SE_RESIZE;
alias SDL_SYSTEM_CURSOR_S_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_S_RESIZE;
alias SDL_SYSTEM_CURSOR_SW_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_SW_RESIZE;
alias SDL_SYSTEM_CURSOR_W_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_W_RESIZE;
alias SDL_SYSTEM_CURSOR_CONTEXT_MENU = SDL_SystemCursor.SDL_SYSTEM_CURSOR_CONTEXT_MENU;
alias SDL_SYSTEM_CURSOR_HELP = SDL_SystemCursor.SDL_SYSTEM_CURSOR_HELP;
alias SDL_SYSTEM_CURSOR_CELL = SDL_SystemCursor.SDL_SYSTEM_CURSOR_CELL;
alias SDL_SYSTEM_CURSOR_VERTICAL_TEXT = SDL_SystemCursor.SDL_SYSTEM_CURSOR_VERTICAL_TEXT;
alias SDL_SYSTEM_CURSOR_ALIAS = SDL_SystemCursor.SDL_SYSTEM_CURSOR_ALIAS;
alias SDL_SYSTEM_CURSOR_COPY = SDL_SystemCursor.SDL_SYSTEM_CURSOR_COPY;
alias SDL_SYSTEM_CURSOR_NO_DROP = SDL_SystemCursor.SDL_SYSTEM_CURSOR_NO_DROP;
alias SDL_SYSTEM_CURSOR_GRAB = SDL_SystemCursor.SDL_SYSTEM_CURSOR_GRAB;
alias SDL_SYSTEM_CURSOR_GRABBING = SDL_SystemCursor.SDL_SYSTEM_CURSOR_GRABBING;
alias SDL_SYSTEM_CURSOR_COL_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_COL_RESIZE;
alias SDL_SYSTEM_CURSOR_ROW_RESIZE = SDL_SystemCursor.SDL_SYSTEM_CURSOR_ROW_RESIZE;
alias SDL_SYSTEM_CURSOR_ALL_SCROLL = SDL_SystemCursor.SDL_SYSTEM_CURSOR_ALL_SCROLL;
alias SDL_SYSTEM_CURSOR_ZOOM_IN = SDL_SystemCursor.SDL_SYSTEM_CURSOR_ZOOM_IN;
alias SDL_SYSTEM_CURSOR_ZOOM_OUT = SDL_SystemCursor.SDL_SYSTEM_CURSOR_ZOOM_OUT;
alias SDL_SYSTEM_CURSOR_COUNT = SDL_SystemCursor.SDL_SYSTEM_CURSOR_COUNT;

enum SDL_MouseWheelDirection
{
    SDL_MOUSEWHEEL_NORMAL = 0,
    SDL_MOUSEWHEEL_FLIPPED = 1
}

alias SDL_MOUSEWHEEL_NORMAL = SDL_MouseWheelDirection.SDL_MOUSEWHEEL_NORMAL;
alias SDL_MOUSEWHEEL_FLIPPED = SDL_MouseWheelDirection.SDL_MOUSEWHEEL_FLIPPED;

struct SDL_CursorFrameInfo
{
    SDL_Surface* surface;

    alias Uint32 = uint;
    Uint32 duration;
}

alias SDL_MouseButtonFlags = uint;
enum SDL_BUTTON_LEFT = 1;
enum SDL_BUTTON_MIDDLE = 2;
enum SDL_BUTTON_RIGHT = 3;
enum SDL_BUTTON_X1 = 4;
enum SDL_BUTTON_X2 = 5;

extern (D) auto SDL_BUTTON_MASK(T)(auto ref T X)
{
    return 1u << (X - 1);
}

enum SDL_BUTTON_LMASK = SDL_BUTTON_MASK(SDL_BUTTON_LEFT);
enum SDL_BUTTON_MMASK = SDL_BUTTON_MASK(SDL_BUTTON_MIDDLE);
enum SDL_BUTTON_RMASK = SDL_BUTTON_MASK(SDL_BUTTON_RIGHT);
enum SDL_BUTTON_X1MASK = SDL_BUTTON_MASK(SDL_BUTTON_X1);
enum SDL_BUTTON_X2MASK = SDL_BUTTON_MASK(SDL_BUTTON_X2);
alias SDL_MouseMotionTransformCallback = void function(void* userdata, Uint64 timestamp, SDL_Window* window, SDL_MouseID mouseID, float* x, float* y);
pragma(mangle, "SDL_HasMouse")
bool sdlHasMouse();

alias SDL_HasMouse = sdlHasMouse;
pragma(mangle, "SDL_GetMice")
SDL_MouseID* sdlGetMice(int* count);

alias SDL_GetMice = sdlGetMice;
pragma(mangle, "SDL_GetMouseNameForID")
const(char)* sdlGetMouseNameForID(SDL_MouseID instance_id);

alias SDL_GetMouseNameForID = sdlGetMouseNameForID;
pragma(mangle, "SDL_GetMouseFocus")
SDL_Window* sdlGetMouseFocus();

alias SDL_GetMouseFocus = sdlGetMouseFocus;
pragma(mangle, "SDL_GetMouseState")
SDL_MouseButtonFlags sdlGetMouseState(float* x, float* y);

alias SDL_GetMouseState = sdlGetMouseState;
pragma(mangle, "SDL_GetGlobalMouseState")
SDL_MouseButtonFlags sdlGetGlobalMouseState(float* x, float* y);

alias SDL_GetGlobalMouseState = sdlGetGlobalMouseState;
pragma(mangle, "SDL_GetRelativeMouseState")
SDL_MouseButtonFlags sdlGetRelativeMouseState(float* x, float* y);

alias SDL_GetRelativeMouseState = sdlGetRelativeMouseState;
pragma(mangle, "SDL_WarpMouseInWindow")
void sdlWarpMouseInWindow(SDL_Window* window, float x, float y);

alias SDL_WarpMouseInWindow = sdlWarpMouseInWindow;
pragma(mangle, "SDL_WarpMouseGlobal")
bool sdlWarpMouseGlobal(float x, float y);

alias SDL_WarpMouseGlobal = sdlWarpMouseGlobal;
pragma(mangle, "SDL_SetRelativeMouseTransform")
bool sdlSetRelativeMouseTransform(SDL_MouseMotionTransformCallback callback, void* userdata);

alias SDL_SetRelativeMouseTransform = sdlSetRelativeMouseTransform;
pragma(mangle, "SDL_SetWindowRelativeMouseMode")
bool sdlSetWindowRelativeMouseMode(SDL_Window* window, bool enabled);

alias SDL_SetWindowRelativeMouseMode = sdlSetWindowRelativeMouseMode;

pragma(mangle, "SDL_GetWindowRelativeMouseMode")
bool sdlGetWindowRelativeMouseMode(SDL_Window* window);

alias SDL_GetWindowRelativeMouseMode = sdlGetWindowRelativeMouseMode;

pragma(mangle, "SDL_CaptureMouse")
bool sdlCaptureMouse(bool enabled);

alias SDL_CaptureMouse = sdlCaptureMouse;

pragma(mangle, "SDL_CreateCursor")
SDL_Cursor* sdlCreateCursor(
    const(Uint8)* data,
    const(Uint8)* mask,
    int w,
    int h,
    int hot_x,
    int hot_y);

alias SDL_CreateCursor = sdlCreateCursor;

pragma(mangle, "SDL_CreateColorCursor")
SDL_Cursor* sdlCreateColorCursor(SDL_Surface* surface, int hot_x, int hot_y);

alias SDL_CreateColorCursor = sdlCreateColorCursor;

pragma(mangle, "SDL_CreateAnimatedCursor")
SDL_Cursor* sdlCreateAnimatedCursor(
    SDL_CursorFrameInfo* frames,
    int frame_count,
    int hot_x,
    int hot_y);

alias SDL_CreateAnimatedCursor = sdlCreateAnimatedCursor;

pragma(mangle, "SDL_CreateSystemCursor")
SDL_Cursor* sdlCreateSystemCursor(SDL_SystemCursor id);

alias SDL_CreateSystemCursor = sdlCreateSystemCursor;

pragma(mangle, "SDL_SetCursor")
bool sdlSetCursor(SDL_Cursor* cursor);

alias SDL_SetCursor = sdlSetCursor;

pragma(mangle, "SDL_GetCursor")
SDL_Cursor* sdlGetCursor();

alias SDL_GetCursor = sdlGetCursor;

pragma(mangle, "SDL_GetDefaultCursor")
SDL_Cursor* sdlGetDefaultCursor();

alias SDL_GetDefaultCursor = sdlGetDefaultCursor;

pragma(mangle, "SDL_DestroyCursor")
void sdlDestroyCursor(SDL_Cursor* cursor);

alias SDL_DestroyCursor = sdlDestroyCursor;

pragma(mangle, "SDL_ShowCursor")
bool sdlShowCursor();

alias SDL_ShowCursor = sdlShowCursor;

pragma(mangle, "SDL_HideCursor")
bool sdlHideCursor();

alias SDL_HideCursor = sdlHideCursor;

pragma(mangle, "SDL_CursorVisible")
bool sdlCursorVisible();

alias SDL_CursorVisible = sdlCursorVisible;
