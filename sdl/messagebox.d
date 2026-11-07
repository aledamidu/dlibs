module libs.sdl.messagebox;

import libs.sdl.stdinc;
import libs.sdl.video;

extern (C):
@nogc nothrow:

alias SDL_MessageBoxFlags = uint;

enum SDL_MESSAGEBOX_ERROR = 0x00000010u;
enum SDL_MESSAGEBOX_WARNING = 0x00000020u;
enum SDL_MESSAGEBOX_INFORMATION = 0x00000040u;
enum SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 0x00000080u;
enum SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 0x00000100u;

alias SDL_MessageBoxButtonFlags = uint;

enum SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 0x00000001u;
enum SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 0x00000002u;

struct SDL_MessageBoxButtonData
{
    SDL_MessageBoxButtonFlags flags;
    int buttonID;
    const(char)* text;
}

struct SDL_MessageBoxColor
{
    alias Uint8 = ubyte;
    Uint8 r;
    Uint8 g;
    Uint8 b;
}

enum SDL_MessageBoxColorType
{
    SDL_MESSAGEBOX_COLOR_BACKGROUND = 0,
    SDL_MESSAGEBOX_COLOR_TEXT = 1,
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2,
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3,
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4,
    SDL_MESSAGEBOX_COLOR_COUNT = 5
}

alias SDL_MESSAGEBOX_COLOR_BACKGROUND = SDL_MessageBoxColorType.SDL_MESSAGEBOX_COLOR_BACKGROUND;
alias SDL_MESSAGEBOX_COLOR_TEXT = SDL_MessageBoxColorType.SDL_MESSAGEBOX_COLOR_TEXT;
alias SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = SDL_MessageBoxColorType
    .SDL_MESSAGEBOX_COLOR_BUTTON_BORDER;
alias SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = SDL_MessageBoxColorType
    .SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND;
alias SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = SDL_MessageBoxColorType
    .SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED;
alias SDL_MESSAGEBOX_COLOR_COUNT = SDL_MessageBoxColorType.SDL_MESSAGEBOX_COLOR_COUNT;

struct SDL_MessageBoxColorScheme
{
    SDL_MessageBoxColor[SDL_MESSAGEBOX_COLOR_COUNT] colors;
}

struct SDL_MessageBoxData
{
    SDL_MessageBoxFlags flags;
    SDL_Window* window;
    const(char)* title;
    const(char)* message;
    int numbuttons;
    const(SDL_MessageBoxButtonData)* buttons;
    const(SDL_MessageBoxColorScheme)* colorScheme;
}

pragma(mangle, "SDL_ShowMessageBox")
bool sdlShowMessageBox(const(SDL_MessageBoxData)* messageboxdata, int* buttonid);

alias SDL_ShowMessageBox = sdlShowMessageBox;
pragma(mangle, "SDL_ShowSimpleMessageBox")
bool sdlShowSimpleMessageBox(SDL_MessageBoxFlags flags, const(char)* title, const(char)* message, SDL_Window* window);

alias SDL_ShowSimpleMessageBox = sdlShowSimpleMessageBox;
