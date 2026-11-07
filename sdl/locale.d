module libs.sdl.locale;
extern (C):
@nogc nothrow:

struct SDL_Locale
{
    const(char)* language;
    const(char)* country;
}

pragma(mangle, "SDL_GetPreferredLocales")
SDL_Locale** sdlGetPreferredLocales(int* count);

alias SDL_GetPreferredLocales = sdlGetPreferredLocales;
