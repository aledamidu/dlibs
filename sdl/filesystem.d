module libs.sdl.filesystem;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

pragma(mangle, "SDL_GetBasePath")
const(char)* sdlGetBasePath();

alias SDL_GetBasePath = sdlGetBasePath;

pragma(mangle, "SDL_GetPrefPath")
char* sdlGetPrefPath(const(char)* org, const(char)* app);

alias SDL_GetPrefPath = sdlGetPrefPath;

enum SDL_Folder
{
    SDL_FOLDER_HOME = 0,
    SDL_FOLDER_DESKTOP = 1,
    SDL_FOLDER_DOCUMENTS = 2,
    SDL_FOLDER_DOWNLOADS = 3,
    SDL_FOLDER_MUSIC = 4,
    SDL_FOLDER_PICTURES = 5,
    SDL_FOLDER_PUBLICSHARE = 6,
    SDL_FOLDER_SAVEDGAMES = 7,
    SDL_FOLDER_SCREENSHOTS = 8,
    SDL_FOLDER_TEMPLATES = 9,
    SDL_FOLDER_VIDEOS = 10,
    SDL_FOLDER_COUNT = 11
}

alias SDL_FOLDER_HOME = SDL_Folder.SDL_FOLDER_HOME;
alias SDL_FOLDER_DESKTOP = SDL_Folder.SDL_FOLDER_DESKTOP;
alias SDL_FOLDER_DOCUMENTS = SDL_Folder.SDL_FOLDER_DOCUMENTS;
alias SDL_FOLDER_DOWNLOADS = SDL_Folder.SDL_FOLDER_DOWNLOADS;
alias SDL_FOLDER_MUSIC = SDL_Folder.SDL_FOLDER_MUSIC;
alias SDL_FOLDER_PICTURES = SDL_Folder.SDL_FOLDER_PICTURES;
alias SDL_FOLDER_PUBLICSHARE = SDL_Folder.SDL_FOLDER_PUBLICSHARE;
alias SDL_FOLDER_SAVEDGAMES = SDL_Folder.SDL_FOLDER_SAVEDGAMES;
alias SDL_FOLDER_SCREENSHOTS = SDL_Folder.SDL_FOLDER_SCREENSHOTS;
alias SDL_FOLDER_TEMPLATES = SDL_Folder.SDL_FOLDER_TEMPLATES;
alias SDL_FOLDER_VIDEOS = SDL_Folder.SDL_FOLDER_VIDEOS;
alias SDL_FOLDER_COUNT = SDL_Folder.SDL_FOLDER_COUNT;

pragma(mangle, "SDL_GetUserFolder")
const(char)* sdlGetUserFolder(SDL_Folder folder);

alias SDL_GetUserFolder = sdlGetUserFolder;

enum SDL_PathType
{
    SDL_PATHTYPE_NONE = 0,
    SDL_PATHTYPE_FILE = 1,
    SDL_PATHTYPE_DIRECTORY = 2,
    SDL_PATHTYPE_OTHER = 3
}

alias SDL_PATHTYPE_NONE = SDL_PathType.SDL_PATHTYPE_NONE;
alias SDL_PATHTYPE_FILE = SDL_PathType.SDL_PATHTYPE_FILE;
alias SDL_PATHTYPE_DIRECTORY = SDL_PathType.SDL_PATHTYPE_DIRECTORY;
alias SDL_PATHTYPE_OTHER = SDL_PathType.SDL_PATHTYPE_OTHER;

struct SDL_PathInfo
{
    SDL_PathType type;

    alias Uint64 = ulong;
    Uint64 size;

    alias SDL_Time = long;
    SDL_Time create_time;
    SDL_Time modify_time;
    SDL_Time access_time;
}

alias SDL_GlobFlags = uint;
enum SDL_GLOB_CASEINSENSITIVE = 1u << 0;
pragma(mangle, "SDL_CreateDirectory")
bool sdlCreateDirectory(const(char)* path);

alias SDL_CreateDirectory = sdlCreateDirectory;

enum SDL_EnumerationResult
{
    SDL_ENUM_CONTINUE = 0,
    SDL_ENUM_SUCCESS = 1,
    SDL_ENUM_FAILURE = 2
}

alias SDL_ENUM_CONTINUE = SDL_EnumerationResult.SDL_ENUM_CONTINUE;
alias SDL_ENUM_SUCCESS = SDL_EnumerationResult.SDL_ENUM_SUCCESS;
alias SDL_ENUM_FAILURE = SDL_EnumerationResult.SDL_ENUM_FAILURE;

alias SDL_EnumerateDirectoryCallback = SDL_EnumerationResult function(
    void* userdata, const(char)* dirname, const(char)* fname);
pragma(mangle, "SDL_EnumerateDirectory")
bool sdlEnumerateDirectory(const(char)* path, SDL_EnumerateDirectoryCallback callback, void* userdata);

alias SDL_EnumerateDirectory = sdlEnumerateDirectory;
pragma(mangle, "SDL_RemovePath")
bool sdlRemovePath(const(char)* path);

alias SDL_RemovePath = sdlRemovePath;
pragma(mangle, "SDL_RenamePath")
bool sdlRenamePath(const(char)* oldpath, const(char)* newpath);

alias SDL_RenamePath = sdlRenamePath;
pragma(mangle, "SDL_CopyFile")
bool sdlCopyFile(const(char)* oldpath, const(char)* newpath);

alias SDL_CopyFile = sdlCopyFile;
pragma(mangle, "SDL_GetPathInfo")
bool sdlGetPathInfo(const(char)* path, SDL_PathInfo* info);

alias SDL_GetPathInfo = sdlGetPathInfo;
pragma(mangle, "SDL_GlobDirectory")
char** sdlGlobDirectory(const(char)* path, const(char)* pattern, SDL_GlobFlags flags, int* count);

alias SDL_GlobDirectory = sdlGlobDirectory;
pragma(mangle, "SDL_GetCurrentDirectory")
char* sdlGetCurrentDirectory();

alias SDL_GetCurrentDirectory = sdlGetCurrentDirectory;
