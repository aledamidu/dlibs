module libs.sdl.surface;

import libs.sdl.blendmode;
import libs.sdl.iostream;
import libs.sdl.pixels;
import libs.sdl.properties;
import libs.sdl.rect;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

alias SDL_SurfaceFlags = uint;

enum SDL_SURFACE_PREALLOCATED = 0x00000001u;
enum SDL_SURFACE_LOCK_NEEDED = 0x00000002u;
enum SDL_SURFACE_LOCKED = 0x00000004u;
enum SDL_SURFACE_SIMD_ALIGNED = 0x00000008u;

extern (D) auto SDL_MUSTLOCK(T)(auto ref T S) {
    return (S.flags & SDL_SURFACE_LOCK_NEEDED) == SDL_SURFACE_LOCK_NEEDED;
}

enum SDL_ScaleMode {
    SDL_SCALEMODE_INVALID = -1,
    SDL_SCALEMODE_NEAREST = 0,
    SDL_SCALEMODE_LINEAR = 1,
    SDL_SCALEMODE_PIXELART = 2
}

alias SDL_SCALEMODE_INVALID = SDL_ScaleMode.SDL_SCALEMODE_INVALID;
alias SDL_SCALEMODE_NEAREST = SDL_ScaleMode.SDL_SCALEMODE_NEAREST;
alias SDL_SCALEMODE_LINEAR = SDL_ScaleMode.SDL_SCALEMODE_LINEAR;
alias SDL_SCALEMODE_PIXELART = SDL_ScaleMode.SDL_SCALEMODE_PIXELART;

enum SDL_FlipMode {
    SDL_FLIP_NONE = 0,
    SDL_FLIP_HORIZONTAL = 1,
    SDL_FLIP_VERTICAL = 2,
    SDL_FLIP_HORIZONTAL_AND_VERTICAL = SDL_FLIP_HORIZONTAL | SDL_FLIP_VERTICAL
}

alias SDL_FLIP_NONE = SDL_FlipMode.SDL_FLIP_NONE;
alias SDL_FLIP_HORIZONTAL = SDL_FlipMode.SDL_FLIP_HORIZONTAL;
alias SDL_FLIP_VERTICAL = SDL_FlipMode.SDL_FLIP_VERTICAL;
alias SDL_FLIP_HORIZONTAL_AND_VERTICAL = SDL_FlipMode.SDL_FLIP_HORIZONTAL_AND_VERTICAL;

struct SDL_Surface {
    SDL_SurfaceFlags flags;

    SDL_PixelFormat format;
    int w;
    int h;
    int pitch;
    void* pixels;
    int refcount;
    void* reserved;
}

pragma(mangle, "SDL_CreateSurface")
SDL_Surface* sdlCreateSurface(int width, int height, SDL_PixelFormat format);

alias SDL_CreateSurface = sdlCreateSurface;
pragma(mangle, "SDL_CreateSurfaceFrom")
SDL_Surface* sdlCreateSurfaceFrom(int width, int height, SDL_PixelFormat format, void* pixels, int pitch);

alias SDL_CreateSurfaceFrom = sdlCreateSurfaceFrom;
pragma(mangle, "SDL_DestroySurface")
void sdlDestroySurface(SDL_Surface* surface);

alias SDL_DestroySurface = sdlDestroySurface;
pragma(mangle, "SDL_GetSurfaceProperties")
SDL_PropertiesID sdlGetSurfaceProperties(SDL_Surface* surface);

alias SDL_GetSurfaceProperties = sdlGetSurfaceProperties;
enum SDL_PROP_SURFACE_SDR_WHITE_POINT_FLOAT = "SDL.surface.SDR_white_point";
enum SDL_PROP_SURFACE_HDR_HEADROOM_FLOAT = "SDL.surface.HDR_headroom";
enum SDL_PROP_SURFACE_TONEMAP_OPERATOR_STRING = "SDL.surface.tonemap";
enum SDL_PROP_SURFACE_HOTSPOT_X_NUMBER = "SDL.surface.hotspot.x";
enum SDL_PROP_SURFACE_HOTSPOT_Y_NUMBER = "SDL.surface.hotspot.y";
enum SDL_PROP_SURFACE_ROTATION_FLOAT = "SDL.surface.rotation";
pragma(mangle, "SDL_SetSurfaceColorspace")
bool sdlSetSurfaceColorspace(SDL_Surface* surface, SDL_Colorspace colorspace);

alias SDL_SetSurfaceColorspace = sdlSetSurfaceColorspace;
pragma(mangle, "SDL_GetSurfaceColorspace")
SDL_Colorspace sdlGetSurfaceColorspace(SDL_Surface* surface);

alias SDL_GetSurfaceColorspace = sdlGetSurfaceColorspace;
pragma(mangle, "SDL_CreateSurfacePalette")
SDL_Palette* sdlCreateSurfacePalette(SDL_Surface* surface);

alias SDL_CreateSurfacePalette = sdlCreateSurfacePalette;
pragma(mangle, "SDL_SetSurfacePalette")
bool sdlSetSurfacePalette(SDL_Surface* surface, SDL_Palette* palette);

alias SDL_SetSurfacePalette = sdlSetSurfacePalette;
pragma(mangle, "SDL_GetSurfacePalette")
SDL_Palette* sdlGetSurfacePalette(SDL_Surface* surface);

alias SDL_GetSurfacePalette = sdlGetSurfacePalette;
pragma(mangle, "SDL_AddSurfaceAlternateImage")
bool sdlAddSurfaceAlternateImage(SDL_Surface* surface, SDL_Surface* image);

alias SDL_AddSurfaceAlternateImage = sdlAddSurfaceAlternateImage;
pragma(mangle, "SDL_SurfaceHasAlternateImages")
bool sdlSurfaceHasAlternateImages(SDL_Surface* surface);

alias SDL_SurfaceHasAlternateImages = sdlSurfaceHasAlternateImages;
pragma(mangle, "SDL_GetSurfaceImages")
SDL_Surface** sdlGetSurfaceImages(SDL_Surface* surface, int* count);

alias SDL_GetSurfaceImages = sdlGetSurfaceImages;
pragma(mangle, "SDL_RemoveSurfaceAlternateImages")
void sdlRemoveSurfaceAlternateImages(SDL_Surface* surface);

alias SDL_RemoveSurfaceAlternateImages = sdlRemoveSurfaceAlternateImages;
pragma(mangle, "SDL_LockSurface")
bool sdlLockSurface(SDL_Surface* surface);

alias SDL_LockSurface = sdlLockSurface;
pragma(mangle, "SDL_UnlockSurface")
void sdlUnlockSurface(SDL_Surface* surface);

alias SDL_UnlockSurface = sdlUnlockSurface;
pragma(mangle, "SDL_LoadSurface_IO")
SDL_Surface* sdlLoadSurfaceIo(SDL_IOStream* src, bool closeio);

alias SDL_LoadSurface_IO = sdlLoadSurfaceIo;
pragma(mangle, "SDL_LoadSurface")
SDL_Surface* sdlLoadSurface(const(char)* file);

alias SDL_LoadSurface = sdlLoadSurface;
pragma(mangle, "SDL_LoadBMP_IO")
SDL_Surface* sdlLoadBMPIo(SDL_IOStream* src, bool closeio);

alias SDL_LoadBMP_IO = sdlLoadBMPIo;
pragma(mangle, "SDL_LoadBMP")
SDL_Surface* sdlLoadBMP(const(char)* file);

alias SDL_LoadBMP = sdlLoadBMP;
pragma(mangle, "SDL_SaveBMP_IO")
bool sdlSaveBMPIo(SDL_Surface* surface, SDL_IOStream* dst, bool closeio);

alias SDL_SaveBMP_IO = sdlSaveBMPIo;
pragma(mangle, "SDL_SaveBMP")
bool sdlSaveBMP(SDL_Surface* surface, const(char)* file);

alias SDL_SaveBMP = sdlSaveBMP;
pragma(mangle, "SDL_LoadPNG_IO")
SDL_Surface* sdlLoadPNGIo(SDL_IOStream* src, bool closeio);

alias SDL_LoadPNG_IO = sdlLoadPNGIo;
pragma(mangle, "SDL_LoadPNG")
SDL_Surface* sdlLoadPNG(const(char)* file);

alias SDL_LoadPNG = sdlLoadPNG;

pragma(mangle, "SDL_SavePNG_IO")
bool sdlSavePNGIo(SDL_Surface* surface, SDL_IOStream* dst, bool closeio);

alias SDL_SavePNG_IO = sdlSavePNGIo;

pragma(mangle, "SDL_SavePNG")
bool sdlSavePNG(SDL_Surface* surface, const(char)* file);

alias SDL_SavePNG = sdlSavePNG;

pragma(mangle, "SDL_LoadJPG_IO")
SDL_Surface* sdlLoadJPGIo(SDL_IOStream* src, bool closeio);

alias SDL_LoadJPG_IO = sdlLoadJPGIo;

pragma(mangle, "SDL_LoadJPG")
SDL_Surface* sdlLoadJPG(const(char)* file);

alias SDL_LoadJPG = sdlLoadJPG;

pragma(mangle, "SDL_SetSurfaceRLE")
bool sdlSetSurfaceRLE(SDL_Surface* surface, bool enabled);

alias SDL_SetSurfaceRLE = sdlSetSurfaceRLE;

pragma(mangle, "SDL_SurfaceHasRLE")
bool sdlSurfaceHasRLE(SDL_Surface* surface);

alias SDL_SurfaceHasRLE = sdlSurfaceHasRLE;

pragma(mangle, "SDL_SetSurfaceColorKey")
bool sdlSetSurfaceColorKey(SDL_Surface* surface, bool enabled, Uint32 key);

alias SDL_SetSurfaceColorKey = sdlSetSurfaceColorKey;

pragma(mangle, "SDL_SurfaceHasColorKey")
bool sdlSurfaceHasColorKey(SDL_Surface* surface);

alias SDL_SurfaceHasColorKey = sdlSurfaceHasColorKey;

pragma(mangle, "SDL_GetSurfaceColorKey")
bool sdlGetSurfaceColorKey(SDL_Surface* surface, Uint32* key);

alias SDL_GetSurfaceColorKey = sdlGetSurfaceColorKey;

pragma(mangle, "SDL_SetSurfaceColorMod")
bool sdlSetSurfaceColorMod(SDL_Surface* surface, Uint8 r, Uint8 g, Uint8 b);

alias SDL_SetSurfaceColorMod = sdlSetSurfaceColorMod;

pragma(mangle, "SDL_GetSurfaceColorMod")
bool sdlGetSurfaceColorMod(SDL_Surface* surface, Uint8* r, Uint8* g, Uint8* b);

alias SDL_GetSurfaceColorMod = sdlGetSurfaceColorMod;

pragma(mangle, "SDL_SetSurfaceAlphaMod")
bool sdlSetSurfaceAlphaMod(SDL_Surface* surface, Uint8 alpha);

alias SDL_SetSurfaceAlphaMod = sdlSetSurfaceAlphaMod;

pragma(mangle, "SDL_GetSurfaceAlphaMod")
bool sdlGetSurfaceAlphaMod(SDL_Surface* surface, Uint8* alpha);

alias SDL_GetSurfaceAlphaMod = sdlGetSurfaceAlphaMod;

pragma(mangle, "SDL_SetSurfaceBlendMode")
bool sdlSetSurfaceBlendMode(SDL_Surface* surface, SDL_BlendMode blendMode);

alias SDL_SetSurfaceBlendMode = sdlSetSurfaceBlendMode;

pragma(mangle, "SDL_GetSurfaceBlendMode")
bool sdlGetSurfaceBlendMode(SDL_Surface* surface, SDL_BlendMode* blendMode);

alias SDL_GetSurfaceBlendMode = sdlGetSurfaceBlendMode;

pragma(mangle, "SDL_SetSurfaceClipRect")
bool sdlSetSurfaceClipRect(SDL_Surface* surface, const(SDL_Rect)* rect);

alias SDL_SetSurfaceClipRect = sdlSetSurfaceClipRect;

pragma(mangle, "SDL_GetSurfaceClipRect")
bool sdlGetSurfaceClipRect(SDL_Surface* surface, SDL_Rect* rect);

alias SDL_GetSurfaceClipRect = sdlGetSurfaceClipRect;

pragma(mangle, "SDL_FlipSurface")
bool sdlFlipSurface(SDL_Surface* surface, SDL_FlipMode flip);

alias SDL_FlipSurface = sdlFlipSurface;

pragma(mangle, "SDL_RotateSurface")
SDL_Surface* sdlRotateSurface(SDL_Surface* surface, float angle);

alias SDL_RotateSurface = sdlRotateSurface;

pragma(mangle, "SDL_DuplicateSurface")
SDL_Surface* sdlDuplicateSurface(SDL_Surface* surface);

alias SDL_DuplicateSurface = sdlDuplicateSurface;

pragma(mangle, "SDL_ScaleSurface")
SDL_Surface* sdlScaleSurface(SDL_Surface* surface, int width, int height, SDL_ScaleMode scaleMode);

alias SDL_ScaleSurface = sdlScaleSurface;

pragma(mangle, "SDL_ConvertSurface")
SDL_Surface* sdlConvertSurface(SDL_Surface* surface, SDL_PixelFormat format);

alias SDL_ConvertSurface = sdlConvertSurface;

pragma(mangle, "SDL_ConvertSurfaceAndColorspace")
SDL_Surface* sdlConvertSurfaceAndColorspace(SDL_Surface* surface, SDL_PixelFormat format, SDL_Palette* palette, SDL_Colorspace colorspace, SDL_PropertiesID props);

alias SDL_ConvertSurfaceAndColorspace = sdlConvertSurfaceAndColorspace;

pragma(mangle, "SDL_ConvertPixels")
bool sdlConvertPixels(int width, int height, SDL_PixelFormat src_format, const(void)* src, int src_pitch, SDL_PixelFormat dst_format, void* dst, int dst_pitch);

alias SDL_ConvertPixels = sdlConvertPixels;

pragma(mangle, "SDL_ConvertPixelsAndColorspace")
bool sdlConvertPixelsAndColorspace(int width, int height, SDL_PixelFormat src_format, SDL_Colorspace src_colorspace, SDL_PropertiesID src_properties, const(
        void)* src, int src_pitch, SDL_PixelFormat dst_format, SDL_Colorspace dst_colorspace, SDL_PropertiesID dst_properties, void* dst, int dst_pitch);

alias SDL_ConvertPixelsAndColorspace = sdlConvertPixelsAndColorspace;

pragma(mangle, "SDL_PremultiplyAlpha")
bool sdlPremultiplyAlpha(int width, int height, SDL_PixelFormat src_format, const(void)* src, int src_pitch, SDL_PixelFormat dst_format, void* dst, int dst_pitch, bool linear);

alias SDL_PremultiplyAlpha = sdlPremultiplyAlpha;

pragma(mangle, "SDL_PremultiplySurfaceAlpha")
bool sdlPremultiplySurfaceAlpha(SDL_Surface* surface, bool linear);

alias SDL_PremultiplySurfaceAlpha = sdlPremultiplySurfaceAlpha;

pragma(mangle, "SDL_ClearSurface")
bool sdlClearSurface(SDL_Surface* surface, float r, float g, float b, float a);

alias SDL_ClearSurface = sdlClearSurface;

pragma(mangle, "SDL_FillSurfaceRect")
bool sdlFillSurfaceRect(SDL_Surface* dst, const(SDL_Rect)* rect, Uint32 color);

alias SDL_FillSurfaceRect = sdlFillSurfaceRect;

pragma(mangle, "SDL_FillSurfaceRects")
bool sdlFillSurfaceRects(SDL_Surface* dst, const(SDL_Rect)* rects, int count, Uint32 color);

alias SDL_FillSurfaceRects = sdlFillSurfaceRects;

pragma(mangle, "SDL_BlitSurface")
bool sdlBlitSurface(SDL_Surface* src, const(SDL_Rect)* srcrect, SDL_Surface* dst, const(SDL_Rect)* dstrect);

alias SDL_BlitSurface = sdlBlitSurface;

pragma(mangle, "SDL_BlitSurfaceUnchecked")
bool sdlBlitSurfaceUnchecked(SDL_Surface* src, const(SDL_Rect)* srcrect, SDL_Surface* dst, const(
        SDL_Rect)* dstrect);

alias SDL_BlitSurfaceUnchecked = sdlBlitSurfaceUnchecked;

pragma(mangle, "SDL_BlitSurfaceScaled")
bool sdlBlitSurfaceScaled(SDL_Surface* src, const(SDL_Rect)* srcrect, SDL_Surface* dst, const(
        SDL_Rect)* dstrect, SDL_ScaleMode scaleMode);

alias SDL_BlitSurfaceScaled = sdlBlitSurfaceScaled;

pragma(mangle, "SDL_BlitSurfaceUncheckedScaled")
bool sdlBlitSurfaceUncheckedScaled(SDL_Surface* src, const(SDL_Rect)* srcrect, SDL_Surface* dst, const(
        SDL_Rect)* dstrect, SDL_ScaleMode scaleMode);

alias SDL_BlitSurfaceUncheckedScaled = sdlBlitSurfaceUncheckedScaled;

pragma(mangle, "SDL_StretchSurface")
bool sdlStretchSurface(SDL_Surface* src, const(SDL_Rect)* srcrect, SDL_Surface* dst, const(SDL_Rect)* dstrect, SDL_ScaleMode scaleMode);

alias SDL_StretchSurface = sdlStretchSurface;

pragma(mangle, "SDL_BlitSurfaceTiled")
bool sdlBlitSurfaceTiled(SDL_Surface* src, const(SDL_Rect)* srcrect, SDL_Surface* dst, const(
        SDL_Rect)* dstrect);

alias SDL_BlitSurfaceTiled = sdlBlitSurfaceTiled;

pragma(mangle, "SDL_BlitSurfaceTiledWithScale")
bool sdlBlitSurfaceTiledWithScale(SDL_Surface* src, const(SDL_Rect)* srcrect, float scale, SDL_ScaleMode scaleMode, SDL_Surface* dst, const(
        SDL_Rect)* dstrect);

alias SDL_BlitSurfaceTiledWithScale = sdlBlitSurfaceTiledWithScale;

pragma(mangle, "SDL_BlitSurface9Grid")
bool sdlBlitSurface9Grid(SDL_Surface* src, const(SDL_Rect)* srcrect, int left_width, int right_width, int top_height, int bottom_height, float scale, SDL_ScaleMode scaleMode, SDL_Surface* dst, const(
        SDL_Rect)* dstrect);

alias SDL_BlitSurface9Grid = sdlBlitSurface9Grid;

pragma(mangle, "SDL_MapSurfaceRGB")
Uint32 sdlMapSurfaceRGB(SDL_Surface* surface, Uint8 r, Uint8 g, Uint8 b);

alias SDL_MapSurfaceRGB = sdlMapSurfaceRGB;

pragma(mangle, "SDL_MapSurfaceRGBA")
Uint32 sdlMapSurfaceRGBA(SDL_Surface* surface, Uint8 r, Uint8 g, Uint8 b, Uint8 a);

alias SDL_MapSurfaceRGBA = sdlMapSurfaceRGBA;

pragma(mangle, "SDL_ReadSurfacePixel")
bool sdlReadSurfacePixel(SDL_Surface* surface, int x, int y, Uint8* r, Uint8* g, Uint8* b, Uint8* a);

alias SDL_ReadSurfacePixel = sdlReadSurfacePixel;

pragma(mangle, "SDL_ReadSurfacePixelFloat")
bool sdlReadSurfacePixelFloat(SDL_Surface* surface, int x, int y, float* r, float* g, float* b, float* a);

alias SDL_ReadSurfacePixelFloat = sdlReadSurfacePixelFloat;

pragma(mangle, "SDL_WriteSurfacePixel")
bool sdlWriteSurfacePixel(SDL_Surface* surface, int x, int y, Uint8 r, Uint8 g, Uint8 b, Uint8 a);

alias SDL_WriteSurfacePixel = sdlWriteSurfacePixel;

pragma(mangle, "SDL_WriteSurfacePixelFloat")
bool sdlWriteSurfacePixelFloat(SDL_Surface* surface, int x, int y, float r, float g, float b, float a);

alias SDL_WriteSurfacePixelFloat = sdlWriteSurfacePixelFloat;
