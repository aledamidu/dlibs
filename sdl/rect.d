module libs.sdl.rect;

import libs.sdl.stdinc;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_Point
{
    int x;
    int y;
}

struct SDL_FPoint
{
    float x;
    float y;
}

struct SDL_Rect
{
    int x;
    int y;
    int w;
    int h;
}

struct SDL_FRect
{
    float x;
    float y;
    float w;
    float h;
}

pragma(inline, true)
void sdlRectToFRect(const(SDL_Rect)* rect, SDL_FRect* frect)
{
    frect.x = cast(float) rect.x;
    frect.y = cast(float) rect.y;
    frect.w = cast(float) rect.w;
    frect.h = cast(float) rect.h;
}

alias SDL_RectToFRect = sdlRectToFRect;

pragma(inline, true)
bool sdlPointInRect(const(SDL_Point)* p, const(SDL_Rect)* r)
{
    return p !is null && r !is null &&
        p.x >= r.x && p.x < (r.x + r.w) &&
        p.y >= r.y && p.y < (r.y + r.h);
}

alias SDL_PointInRect = sdlPointInRect;

pragma(inline, true)
bool sdlRectEmpty(const(SDL_Rect)* r)
{
    return r is null || r.w <= 0 || r.h <= 0;
}

alias SDL_RectEmpty = sdlRectEmpty;

pragma(inline, true)
bool sdlRectsEqual(const(SDL_Rect)* a, const(SDL_Rect)* b)
{
    return a !is null && b !is null &&
        a.x == b.x && a.y == b.y && a.w == b.w && a.h == b.h;
}

alias SDL_RectsEqual = sdlRectsEqual;

pragma(mangle, "SDL_HasRectIntersection")
bool sdlHasRectIntersection(const(SDL_Rect)* A, const(SDL_Rect)* B);

alias SDL_HasRectIntersection = sdlHasRectIntersection;

pragma(mangle, "SDL_GetRectIntersection")
bool sdlGetRectIntersection(const(SDL_Rect)* A, const(SDL_Rect)* B, SDL_Rect* result);

alias SDL_GetRectIntersection = sdlGetRectIntersection;

pragma(mangle, "SDL_GetRectUnion")
bool sdlGetRectUnion(const(SDL_Rect)* A, const(SDL_Rect)* B, SDL_Rect* result);

alias SDL_GetRectUnion = sdlGetRectUnion;

pragma(mangle, "SDL_GetRectEnclosingPoints")
bool sdlGetRectEnclosingPoints(const(SDL_Point)* points, int count, const(SDL_Rect)* clip, SDL_Rect* result);

alias SDL_GetRectEnclosingPoints = sdlGetRectEnclosingPoints;

pragma(mangle, "SDL_GetRectAndLineIntersection")
bool sdlGetRectAndLineIntersection(const(SDL_Rect)* rect, int* X1, int* Y1, int* X2, int* Y2);

alias SDL_GetRectAndLineIntersection = sdlGetRectAndLineIntersection;

pragma(inline, true)
bool sdlPointInRectFloat(const(SDL_FPoint)* p, const(SDL_FRect)* r)
{
    return p !is null && r !is null &&
        p.x >= r.x && p.x <= (r.x + r.w) &&
        p.y >= r.y && p.y <= (r.y + r.h);
}

alias SDL_PointInRectFloat = sdlPointInRectFloat;

pragma(inline, true)
bool sdlRectEmptyFloat(const(SDL_FRect)* r)
{
    return r is null || r.w < 0.0f || r.h < 0.0f;
}

alias SDL_RectEmptyFloat = sdlRectEmptyFloat;

pragma(inline, true)
bool sdlRectsEqualEpsilon(const(SDL_FRect)* a, const(SDL_FRect)* b, float epsilon)
{
    import libs.sdl.stdinc : SDL_fabsf;

    return a !is null && b !is null &&
        (a is b ||
                (SDL_fabsf(a.x - b.x) <= epsilon &&
                    SDL_fabsf(a.y - b.y) <= epsilon &&
                    SDL_fabsf(a.w - b.w) <= epsilon &&
                    SDL_fabsf(a.h - b.h) <= epsilon));
}

alias SDL_RectsEqualEpsilon = sdlRectsEqualEpsilon;

pragma(inline, true)
bool sdlRectsEqualFloat(const(SDL_FRect)* a, const(SDL_FRect)* b)
{
    return sdlRectsEqualEpsilon(a, b, SDL_FLT_EPSILON);
}

alias SDL_RectsEqualFloat = sdlRectsEqualFloat;

pragma(mangle, "SDL_HasRectIntersectionFloat")
bool sdlHasRectIntersectionFloat(const(SDL_FRect)* A, const(SDL_FRect)* B);

alias SDL_HasRectIntersectionFloat = sdlHasRectIntersectionFloat;

pragma(mangle, "SDL_GetRectIntersectionFloat")
bool sdlGetRectIntersectionFloat(const(SDL_FRect)* A, const(SDL_FRect)* B, SDL_FRect* result);

alias SDL_GetRectIntersectionFloat = sdlGetRectIntersectionFloat;

pragma(mangle, "SDL_GetRectUnionFloat")
bool sdlGetRectUnionFloat(const(SDL_FRect)* A, const(SDL_FRect)* B, SDL_FRect* result);

alias SDL_GetRectUnionFloat = sdlGetRectUnionFloat;

pragma(mangle, "SDL_GetRectEnclosingPointsFloat")
bool sdlGetRectEnclosingPointsFloat(const(SDL_FPoint)* points, int count, const(SDL_FRect)* clip, SDL_FRect* result);

alias SDL_GetRectEnclosingPointsFloat = sdlGetRectEnclosingPointsFloat;

pragma(mangle, "SDL_GetRectAndLineIntersectionFloat")
bool sdlGetRectAndLineIntersectionFloat(const(SDL_FRect)* rect, float* X1, float* Y1, float* X2, float* Y2);

alias SDL_GetRectAndLineIntersectionFloat = sdlGetRectAndLineIntersectionFloat;
