module libs.sdl.keyboard;

import libs.sdl.keycode;
import libs.sdl.properties;
import libs.sdl.rect;
import libs.sdl.scancode;
import libs.sdl.video;

extern (C):
@nogc nothrow:

alias SDL_KeyboardID = uint;

pragma(mangle, "SDL_HasKeyboard")
bool sdlHasKeyboard();

alias SDL_HasKeyboard = sdlHasKeyboard;

pragma(mangle, "SDL_GetKeyboards")
SDL_KeyboardID* sdlGetKeyboards(int* count);

alias SDL_GetKeyboards = sdlGetKeyboards;

pragma(mangle, "SDL_GetKeyboardNameForID")
const(char)* sdlGetKeyboardNameForID(SDL_KeyboardID instance_id);

alias SDL_GetKeyboardNameForID = sdlGetKeyboardNameForID;

pragma(mangle, "SDL_GetKeyboardFocus")
SDL_Window* sdlGetKeyboardFocus();

alias SDL_GetKeyboardFocus = sdlGetKeyboardFocus;

pragma(mangle, "SDL_GetKeyboardState")
const(bool)* sdlGetKeyboardState(int* numkeys);

alias SDL_GetKeyboardState = sdlGetKeyboardState;

pragma(mangle, "SDL_ResetKeyboard")
void sdlResetKeyboard();

alias SDL_ResetKeyboard = sdlResetKeyboard;

pragma(mangle, "SDL_GetModState")
SDL_Keymod sdlGetModState();

alias SDL_GetModState = sdlGetModState;

pragma(mangle, "SDL_SetModState")
void sdlSetModState(SDL_Keymod modstate);

alias SDL_SetModState = sdlSetModState;

pragma(mangle, "SDL_GetKeyFromScancode")
SDL_Keycode sdlGetKeyFromScancode(SDL_Scancode scancode, SDL_Keymod modstate, bool key_event);

alias SDL_GetKeyFromScancode = sdlGetKeyFromScancode;

pragma(mangle, "SDL_GetScancodeFromKey")
SDL_Scancode sdlGetScancodeFromKey(SDL_Keycode key, SDL_Keymod* modstate);

alias SDL_GetScancodeFromKey = sdlGetScancodeFromKey;

pragma(mangle, "SDL_SetScancodeName")
bool sdlSetScancodeName(SDL_Scancode scancode, const(char)* name);

alias SDL_SetScancodeName = sdlSetScancodeName;

pragma(mangle, "SDL_GetScancodeName")
const(char)* sdlGetScancodeName(SDL_Scancode scancode);

alias SDL_GetScancodeName = sdlGetScancodeName;

pragma(mangle, "SDL_GetScancodeFromName")
SDL_Scancode sdlGetScancodeFromName(const(char)* name);

alias SDL_GetScancodeFromName = sdlGetScancodeFromName;

pragma(mangle, "SDL_GetKeyName")
const(char)* sdlGetKeyName(SDL_Keycode key);

alias SDL_GetKeyName = sdlGetKeyName;

pragma(mangle, "SDL_GetKeyFromName")
SDL_Keycode sdlGetKeyFromName(const(char)* name);

alias SDL_GetKeyFromName = sdlGetKeyFromName;

pragma(mangle, "SDL_StartTextInput")
bool sdlStartTextInput(SDL_Window* window);

alias SDL_StartTextInput = sdlStartTextInput;

enum SDL_TextInputType
{
    SDL_TEXTINPUT_TYPE_TEXT = 0,
    SDL_TEXTINPUT_TYPE_TEXT_NAME = 1,
    SDL_TEXTINPUT_TYPE_TEXT_EMAIL = 2,
    SDL_TEXTINPUT_TYPE_TEXT_USERNAME = 3,
    SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN = 4,
    SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE = 5,
    SDL_TEXTINPUT_TYPE_NUMBER = 6,
    SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN = 7,
    SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE = 8
}

alias SDL_TEXTINPUT_TYPE_TEXT = SDL_TextInputType.SDL_TEXTINPUT_TYPE_TEXT;
alias SDL_TEXTINPUT_TYPE_TEXT_NAME = SDL_TextInputType.SDL_TEXTINPUT_TYPE_TEXT_NAME;
alias SDL_TEXTINPUT_TYPE_TEXT_EMAIL = SDL_TextInputType.SDL_TEXTINPUT_TYPE_TEXT_EMAIL;
alias SDL_TEXTINPUT_TYPE_TEXT_USERNAME = SDL_TextInputType.SDL_TEXTINPUT_TYPE_TEXT_USERNAME;
alias SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN = SDL_TextInputType
    .SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN;
alias SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE = SDL_TextInputType
    .SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE;
alias SDL_TEXTINPUT_TYPE_NUMBER = SDL_TextInputType.SDL_TEXTINPUT_TYPE_NUMBER;
alias SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN = SDL_TextInputType
    .SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN;
alias SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE = SDL_TextInputType
    .SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE;

enum SDL_Capitalization
{
    SDL_CAPITALIZE_NONE = 0,
    SDL_CAPITALIZE_SENTENCES = 1,
    SDL_CAPITALIZE_WORDS = 2,
    SDL_CAPITALIZE_LETTERS = 3
}

alias SDL_CAPITALIZE_NONE = SDL_Capitalization.SDL_CAPITALIZE_NONE;
alias SDL_CAPITALIZE_SENTENCES = SDL_Capitalization.SDL_CAPITALIZE_SENTENCES;
alias SDL_CAPITALIZE_WORDS = SDL_Capitalization.SDL_CAPITALIZE_WORDS;
alias SDL_CAPITALIZE_LETTERS = SDL_Capitalization.SDL_CAPITALIZE_LETTERS;

pragma(mangle, "SDL_StartTextInputWithProperties")
bool sdlStartTextInputWithProperties(SDL_Window* window, SDL_PropertiesID props);

alias SDL_StartTextInputWithProperties = sdlStartTextInputWithProperties;

enum SDL_PROP_TEXTINPUT_TYPE_NUMBER = "SDL.textinput.type";
enum SDL_PROP_TEXTINPUT_CAPITALIZATION_NUMBER = "SDL.textinput.capitalization";
enum SDL_PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN = "SDL.textinput.autocorrect";
enum SDL_PROP_TEXTINPUT_MULTILINE_BOOLEAN = "SDL.textinput.multiline";
enum SDL_PROP_TEXTINPUT_TITLE_STRING = "SDL.textinput.title";
enum SDL_PROP_TEXTINPUT_PLACEHOLDER_STRING = "SDL.textinput.placeholder";
enum SDL_PROP_TEXTINPUT_DEFAULT_TEXT_STRING = "SDL.textinput.default_text";
enum SDL_PROP_TEXTINPUT_MAX_LENGTH_NUMBER = "SDL.textinput.max_length";
enum SDL_PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER = "SDL.textinput.android.inputtype";
enum SDL_PROP_TEXTINPUT_OPENHARMONY_INPUTTYPE_NUMBER = "SDL.textinput.openharmony.inputtype";

pragma(mangle, "SDL_TextInputActive")
bool sdlTextInputActive(SDL_Window* window);

alias SDL_TextInputActive = sdlTextInputActive;

pragma(mangle, "SDL_StopTextInput")
bool sdlStopTextInput(SDL_Window* window);

alias SDL_StopTextInput = sdlStopTextInput;

pragma(mangle, "SDL_ClearComposition")
bool sdlClearComposition(SDL_Window* window);

alias SDL_ClearComposition = sdlClearComposition;

pragma(mangle, "SDL_SetTextInputArea")
bool sdlSetTextInputArea(SDL_Window* window, const(SDL_Rect)* rect, int cursor);

alias SDL_SetTextInputArea = sdlSetTextInputArea;

pragma(mangle, "SDL_GetTextInputArea")
bool sdlGetTextInputArea(SDL_Window* window, SDL_Rect* rect, int* cursor);

alias SDL_GetTextInputArea = sdlGetTextInputArea;

pragma(mangle, "SDL_HasScreenKeyboardSupport")
bool sdlHasScreenKeyboardSupport();

alias SDL_HasScreenKeyboardSupport = sdlHasScreenKeyboardSupport;

pragma(mangle, "SDL_ScreenKeyboardShown")
bool sdlScreenKeyboardShown(SDL_Window* window);

alias SDL_ScreenKeyboardShown = sdlScreenKeyboardShown;
