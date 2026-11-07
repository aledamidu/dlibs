module libs.sdl.dialog;

import libs.sdl.properties;
import libs.sdl.video;

extern (C):
@nogc nothrow:

struct SDL_DialogFileFilter
{
    const(char)* name;
    const(char)* pattern;
}

alias SDL_DialogFileCallback = void function(void* userdata, const(char*)* filelist, int filter);

pragma(mangle, "SDL_ShowOpenFileDialog")
void sdlShowOpenFileDialog(SDL_DialogFileCallback callback, void* userdata, SDL_Window* window, const(
        SDL_DialogFileFilter)* filters, int nfilters, const(char)* default_location, bool allow_many);

alias SDL_ShowOpenFileDialog = sdlShowOpenFileDialog;

pragma(mangle, "SDL_ShowSaveFileDialog")
void sdlShowSaveFileDialog(SDL_DialogFileCallback callback, void* userdata, SDL_Window* window, const(
        SDL_DialogFileFilter)* filters, int nfilters, const(char)* default_location);

alias SDL_ShowSaveFileDialog = sdlShowSaveFileDialog;

pragma(mangle, "SDL_ShowOpenFolderDialog")
void sdlShowOpenFolderDialog(SDL_DialogFileCallback callback, void* userdata, SDL_Window* window, const(
        char)* default_location, bool allow_many);

alias SDL_ShowOpenFolderDialog = sdlShowOpenFolderDialog;

enum SDL_FileDialogType
{
    SDL_FILEDIALOG_OPENFILE = 0,
    SDL_FILEDIALOG_SAVEFILE = 1,
    SDL_FILEDIALOG_OPENFOLDER = 2
}

alias SDL_FILEDIALOG_OPENFILE = SDL_FileDialogType.SDL_FILEDIALOG_OPENFILE;
alias SDL_FILEDIALOG_SAVEFILE = SDL_FileDialogType.SDL_FILEDIALOG_SAVEFILE;
alias SDL_FILEDIALOG_OPENFOLDER = SDL_FileDialogType.SDL_FILEDIALOG_OPENFOLDER;

pragma(mangle, "SDL_ShowFileDialogWithProperties")
void sdlShowFileDialogWithProperties(SDL_FileDialogType type, SDL_DialogFileCallback callback, void* userdata, SDL_PropertiesID props);

alias SDL_ShowFileDialogWithProperties = sdlShowFileDialogWithProperties;

enum SDL_PROP_FILE_DIALOG_FILTERS_POINTER = "SDL.filedialog.filters";
enum SDL_PROP_FILE_DIALOG_NFILTERS_NUMBER = "SDL.filedialog.nfilters";
enum SDL_PROP_FILE_DIALOG_WINDOW_POINTER = "SDL.filedialog.window";
enum SDL_PROP_FILE_DIALOG_LOCATION_STRING = "SDL.filedialog.location";
enum SDL_PROP_FILE_DIALOG_MANY_BOOLEAN = "SDL.filedialog.many";
enum SDL_PROP_FILE_DIALOG_TITLE_STRING = "SDL.filedialog.title";
enum SDL_PROP_FILE_DIALOG_ACCEPT_STRING = "SDL.filedialog.accept";
enum SDL_PROP_FILE_DIALOG_CANCEL_STRING = "SDL.filedialog.cancel";
