module libs.sdl.version_;
extern (C):
@nogc nothrow:

enum SDL_MAJOR_VERSION = 3;

enum SDL_MINOR_VERSION = 5;

enum SDL_MICRO_VERSION = 0;

extern (D) auto SDL_VERSIONNUM(T0, T1, T2)(auto ref T0 major, auto ref T1 minor, auto ref T2 patch) {
    return major * 1_000_000 + minor * 1000 + patch;
}

extern (D) auto SDL_VERSIONNUM_MAJOR(T)(auto ref T ver) {
    return ver / 1_000_000;
}

extern (D) auto SDL_VERSIONNUM_MINOR(T)(auto ref T ver) {
    return (ver / 1000) % 1000;
}

extern (D) auto SDL_VERSIONNUM_MICRO(T)(auto ref T ver) {
    return ver % 1000;
}

enum SDL_VERSION = SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_MICRO_VERSION);

extern (D) auto SDL_VERSION_ATLEAST(T0, T1, T2)(auto ref T0 X, auto ref T1 Y, auto ref T2 Z) {
    return SDL_VERSION >= SDL_VERSIONNUM(X, Y, Z);
}

pragma(mangle, "SDL_GetVersion")
int sdlGetVersion();

alias SDL_GetVersion = sdlGetVersion;

pragma(mangle, "SDL_GetRevision")
const(char)* sdlGetRevision();

alias SDL_GetRevision = sdlGetRevision;
