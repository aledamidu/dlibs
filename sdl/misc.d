module libs.sdl.misc;
extern (C):
@nogc nothrow:

pragma(mangle, "SDL_OpenURL")
bool sdlOpenURL(const(char)* url);

alias SDL_OpenURL = sdlOpenURL;

pragma(mangle, "SDL_EncodeURL")
char* sdlEncodeURL(const(char)* str, const(char)* no_encode_chars);

alias SDL_EncodeURL = sdlEncodeURL;
