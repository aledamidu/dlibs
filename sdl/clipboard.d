module libs.sdl.clipboard;
extern (C):
@nogc nothrow:

pragma(mangle, "SDL_SetClipboardText")
bool sdlSetClipboardText(const(char)* text);

alias SDL_SetClipboardText = sdlSetClipboardText;

pragma(mangle, "SDL_GetClipboardText")
char* sdlGetClipboardText();

alias SDL_GetClipboardText = sdlGetClipboardText;

pragma(mangle, "SDL_HasClipboardText")
bool sdlHasClipboardText();

alias SDL_HasClipboardText = sdlHasClipboardText;

pragma(mangle, "SDL_SetPrimarySelectionText")
bool sdlSetPrimarySelectionText(const(char)* text);

alias SDL_SetPrimarySelectionText = sdlSetPrimarySelectionText;

pragma(mangle, "SDL_GetPrimarySelectionText")
char* sdlGetPrimarySelectionText();

alias SDL_GetPrimarySelectionText = sdlGetPrimarySelectionText;

pragma(mangle, "SDL_HasPrimarySelectionText")
bool sdlHasPrimarySelectionText();

alias SDL_HasPrimarySelectionText = sdlHasPrimarySelectionText;

alias SDL_ClipboardDataCallback = const(void)* function(void* userdata, const(char)* mime_type, size_t* size);

alias SDL_ClipboardCleanupCallback = void function(void* userdata);

pragma(mangle, "SDL_SetClipboardData")
bool sdlSetClipboardData(SDL_ClipboardDataCallback callback, SDL_ClipboardCleanupCallback cleanup, void* userdata, const(
        char*)* mime_types, size_t num_mime_types);

alias SDL_SetClipboardData = sdlSetClipboardData;

pragma(mangle, "SDL_ClearClipboardData")
bool sdlClearClipboardData();

alias SDL_ClearClipboardData = sdlClearClipboardData;

pragma(mangle, "SDL_GetClipboardData")
void* sdlGetClipboardData(const(char)* mime_type, size_t* size);

alias SDL_GetClipboardData = sdlGetClipboardData;

pragma(mangle, "SDL_HasClipboardData")
bool sdlHasClipboardData(const(char)* mime_type);

alias SDL_HasClipboardData = sdlHasClipboardData;

pragma(mangle, "SDL_GetClipboardMimeTypes")
char** sdlGetClipboardMimeTypes(size_t* num_mime_types);

alias SDL_GetClipboardMimeTypes = sdlGetClipboardMimeTypes;
