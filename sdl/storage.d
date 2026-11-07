module libs.sdl.storage;

import libs.sdl.filesystem;
import libs.sdl.properties;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_StorageInterface
{
    alias Uint32 = uint;
    Uint32 version_;
    bool function(void* userdata) close;
    bool function(void* userdata) ready;
    bool function(void* userdata, const(char)* path, SDL_EnumerateDirectoryCallback callback, void* callback_userdata) enumerate;
    bool function(void* userdata, const(char)* path, SDL_PathInfo* info) info;
    bool function(void* userdata, const(char)* path, void* destination, Uint64 length) read_file;
    bool function(void* userdata, const(char)* path, const(void)* source, Uint64 length) write_file;
    bool function(void* userdata, const(char)* path) mkdir;
    bool function(void* userdata, const(char)* path) remove;
    bool function(void* userdata, const(char)* oldpath, const(char)* newpath) rename;
    bool function(void* userdata, const(char)* oldpath, const(char)* newpath) copy;
    Uint64 function(void* userdata) space_remaining;
}

struct SDL_Storage;
pragma(mangle, "SDL_OpenTitleStorage")
SDL_Storage* sdlOpenTitleStorage(const(char)* override_, SDL_PropertiesID props);

alias SDL_OpenTitleStorage = sdlOpenTitleStorage;
pragma(mangle, "SDL_OpenUserStorage")
SDL_Storage* sdlOpenUserStorage(const(char)* org, const(char)* app, SDL_PropertiesID props);

alias SDL_OpenUserStorage = sdlOpenUserStorage;
pragma(mangle, "SDL_OpenFileStorage")
SDL_Storage* sdlOpenFileStorage(const(char)* path);

alias SDL_OpenFileStorage = sdlOpenFileStorage;
pragma(mangle, "SDL_OpenStorage")
SDL_Storage* sdlOpenStorage(const(SDL_StorageInterface)* iface, void* userdata);

alias SDL_OpenStorage = sdlOpenStorage;
pragma(mangle, "SDL_CloseStorage")
bool sdlCloseStorage(SDL_Storage* storage);

alias SDL_CloseStorage = sdlCloseStorage;
pragma(mangle, "SDL_StorageReady")
bool sdlStorageReady(SDL_Storage* storage);

alias SDL_StorageReady = sdlStorageReady;
pragma(mangle, "SDL_GetStorageFileSize")
bool sdlGetStorageFileSize(SDL_Storage* storage, const(char)* path, Uint64* length);

alias SDL_GetStorageFileSize = sdlGetStorageFileSize;

pragma(mangle, "SDL_ReadStorageFile")
bool sdlReadStorageFile(SDL_Storage* storage, const(char)* path, void* destination, Uint64 length);

alias SDL_ReadStorageFile = sdlReadStorageFile;

pragma(mangle, "SDL_WriteStorageFile")
bool sdlWriteStorageFile(SDL_Storage* storage, const(char)* path, const(void)* source, Uint64 length);

alias SDL_WriteStorageFile = sdlWriteStorageFile;

pragma(mangle, "SDL_CreateStorageDirectory")
bool sdlCreateStorageDirectory(SDL_Storage* storage, const(char)* path);

alias SDL_CreateStorageDirectory = sdlCreateStorageDirectory;

pragma(mangle, "SDL_EnumerateStorageDirectory")
bool sdlEnumerateStorageDirectory(SDL_Storage* storage, const(char)* path, SDL_EnumerateDirectoryCallback callback, void* userdata);

alias SDL_EnumerateStorageDirectory = sdlEnumerateStorageDirectory;

pragma(mangle, "SDL_RemoveStoragePath")
bool sdlRemoveStoragePath(SDL_Storage* storage, const(char)* path);

alias SDL_RemoveStoragePath = sdlRemoveStoragePath;

pragma(mangle, "SDL_RenameStoragePath")
bool sdlRenameStoragePath(SDL_Storage* storage, const(char)* oldpath, const(char)* newpath);

alias SDL_RenameStoragePath = sdlRenameStoragePath;

pragma(mangle, "SDL_CopyStorageFile")
bool sdlCopyStorageFile(SDL_Storage* storage, const(char)* oldpath, const(char)* newpath);

alias SDL_CopyStorageFile = sdlCopyStorageFile;

pragma(mangle, "SDL_GetStoragePathInfo")
bool sdlGetStoragePathInfo(SDL_Storage* storage, const(char)* path, SDL_PathInfo* info);

alias SDL_GetStoragePathInfo = sdlGetStoragePathInfo;

pragma(mangle, "SDL_GetStorageSpaceRemaining")
Uint64 sdlGetStorageSpaceRemaining(SDL_Storage* storage);

alias SDL_GetStorageSpaceRemaining = sdlGetStorageSpaceRemaining;

pragma(mangle, "SDL_GlobStorageDirectory")
char** sdlGlobStorageDirectory(SDL_Storage* storage, const(char)* path, const(char)* pattern, SDL_GlobFlags flags, int* count);

alias SDL_GlobStorageDirectory = sdlGlobStorageDirectory;
