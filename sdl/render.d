module libs.sdl.render;

import libs.sdl.blendmode;
import libs.sdl.events;
import libs.sdl.gpu;
import libs.sdl.pixels;
import libs.sdl.properties;
import libs.sdl.rect;
import libs.sdl.stdinc;
import libs.sdl.surface;
import libs.sdl.video;

extern (C):
@nogc nothrow:

enum SDL_SOFTWARE_RENDERER = "software";

enum SDL_GPU_RENDERER = "gpu";

struct SDL_Vertex
{
    SDL_FPoint position;

    SDL_FColor color;
    SDL_FPoint tex_coord;
}

enum SDL_TextureAccess
{
    SDL_TEXTUREACCESS_STATIC = 0,
    SDL_TEXTUREACCESS_STREAMING = 1,
    SDL_TEXTUREACCESS_TARGET = 2
}

alias SDL_TEXTUREACCESS_STATIC = SDL_TextureAccess.SDL_TEXTUREACCESS_STATIC;
alias SDL_TEXTUREACCESS_STREAMING = SDL_TextureAccess.SDL_TEXTUREACCESS_STREAMING;
alias SDL_TEXTUREACCESS_TARGET = SDL_TextureAccess.SDL_TEXTUREACCESS_TARGET;

enum SDL_TextureAddressMode
{
    SDL_TEXTURE_ADDRESS_INVALID = -1,
    SDL_TEXTURE_ADDRESS_AUTO = 0,
    SDL_TEXTURE_ADDRESS_CLAMP = 1,
    SDL_TEXTURE_ADDRESS_WRAP = 2
}

alias SDL_TEXTURE_ADDRESS_INVALID = SDL_TextureAddressMode.SDL_TEXTURE_ADDRESS_INVALID;
alias SDL_TEXTURE_ADDRESS_AUTO = SDL_TextureAddressMode.SDL_TEXTURE_ADDRESS_AUTO;
alias SDL_TEXTURE_ADDRESS_CLAMP = SDL_TextureAddressMode.SDL_TEXTURE_ADDRESS_CLAMP;
alias SDL_TEXTURE_ADDRESS_WRAP = SDL_TextureAddressMode.SDL_TEXTURE_ADDRESS_WRAP;

enum SDL_RendererLogicalPresentation
{
    SDL_LOGICAL_PRESENTATION_DISABLED = 0,
    SDL_LOGICAL_PRESENTATION_STRETCH = 1,
    SDL_LOGICAL_PRESENTATION_LETTERBOX = 2,
    SDL_LOGICAL_PRESENTATION_OVERSCAN = 3,
    SDL_LOGICAL_PRESENTATION_INTEGER_SCALE = 4
}

alias SDL_LOGICAL_PRESENTATION_DISABLED = SDL_RendererLogicalPresentation
    .SDL_LOGICAL_PRESENTATION_DISABLED;
alias SDL_LOGICAL_PRESENTATION_STRETCH = SDL_RendererLogicalPresentation
    .SDL_LOGICAL_PRESENTATION_STRETCH;
alias SDL_LOGICAL_PRESENTATION_LETTERBOX = SDL_RendererLogicalPresentation
    .SDL_LOGICAL_PRESENTATION_LETTERBOX;
alias SDL_LOGICAL_PRESENTATION_OVERSCAN = SDL_RendererLogicalPresentation
    .SDL_LOGICAL_PRESENTATION_OVERSCAN;
alias SDL_LOGICAL_PRESENTATION_INTEGER_SCALE = SDL_RendererLogicalPresentation
    .SDL_LOGICAL_PRESENTATION_INTEGER_SCALE;

struct SDL_Renderer;

struct SDL_Texture
{
    SDL_PixelFormat format;
    int w;
    int h;
    int refcount;
}

pragma(mangle, "SDL_GetNumRenderDrivers")
int sdlGetNumRenderDrivers();

alias SDL_GetNumRenderDrivers = sdlGetNumRenderDrivers;
pragma(mangle, "SDL_GetRenderDriver")
const(char)* sdlGetRenderDriver(int index);

alias SDL_GetRenderDriver = sdlGetRenderDriver;
pragma(mangle, "SDL_CreateWindowAndRenderer")
bool sdlCreateWindowAndRenderer(const(char)* title, int width, int height, SDL_WindowFlags window_flags, SDL_Window** window, SDL_Renderer** renderer);

alias SDL_CreateWindowAndRenderer = sdlCreateWindowAndRenderer;
pragma(mangle, "SDL_CreateRenderer")
SDL_Renderer* sdlCreateRenderer(SDL_Window* window, const(char)* name);

alias SDL_CreateRenderer = sdlCreateRenderer;
pragma(mangle, "SDL_CreateRendererWithProperties")
SDL_Renderer* sdlCreateRendererWithProperties(SDL_PropertiesID props);

alias SDL_CreateRendererWithProperties = sdlCreateRendererWithProperties;
enum SDL_PROP_RENDERER_CREATE_NAME_STRING = "SDL.renderer.create.name";
enum SDL_PROP_RENDERER_CREATE_WINDOW_POINTER = "SDL.renderer.create.window";
enum SDL_PROP_RENDERER_CREATE_SURFACE_POINTER = "SDL.renderer.create.surface";
enum SDL_PROP_RENDERER_CREATE_OUTPUT_COLORSPACE_NUMBER = "SDL.renderer.create.output_colorspace";
enum SDL_PROP_RENDERER_CREATE_PRESENT_VSYNC_NUMBER = "SDL.renderer.create.present_vsync";
enum SDL_PROP_RENDERER_CREATE_GPU_DEVICE_POINTER = "SDL.renderer.create.gpu.device";
enum SDL_PROP_RENDERER_CREATE_GPU_SHADERS_SPIRV_BOOLEAN = "SDL.renderer.create.gpu.shaders_spirv";
enum SDL_PROP_RENDERER_CREATE_GPU_SHADERS_DXIL_BOOLEAN = "SDL.renderer.create.gpu.shaders_dxil";
enum SDL_PROP_RENDERER_CREATE_GPU_SHADERS_MSL_BOOLEAN = "SDL.renderer.create.gpu.shaders_msl";
enum SDL_PROP_RENDERER_CREATE_METAL_DEVICE_POINTER = "SDL.renderer.create.metal.device";
enum SDL_PROP_RENDERER_CREATE_METAL_COMMAND_QUEUE_POINTER = "SDL.renderer.create.metal.command_queue";
enum SDL_PROP_RENDERER_CREATE_VULKAN_INSTANCE_POINTER = "SDL.renderer.create.vulkan.instance";
enum SDL_PROP_RENDERER_CREATE_VULKAN_SURFACE_NUMBER = "SDL.renderer.create.vulkan.surface";
enum SDL_PROP_RENDERER_CREATE_VULKAN_PHYSICAL_DEVICE_POINTER = "SDL.renderer.create.vulkan.physical_device";
enum SDL_PROP_RENDERER_CREATE_VULKAN_DEVICE_POINTER = "SDL.renderer.create.vulkan.device";
enum SDL_PROP_RENDERER_CREATE_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.create.vulkan.graphics_queue_family_index";
enum SDL_PROP_RENDERER_CREATE_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.create.vulkan.present_queue_family_index";
pragma(mangle, "SDL_CreateGPURenderer")
SDL_Renderer* sdlCreateGPURenderer(SDL_GPUDevice* device, SDL_Window* window);

alias SDL_CreateGPURenderer = sdlCreateGPURenderer;
pragma(mangle, "SDL_GetGPURendererDevice")
SDL_GPUDevice* sdlGetGPURendererDevice(SDL_Renderer* renderer);

alias SDL_GetGPURendererDevice = sdlGetGPURendererDevice;
pragma(mangle, "SDL_CreateSoftwareRenderer")
SDL_Renderer* sdlCreateSoftwareRenderer(SDL_Surface* surface);

alias SDL_CreateSoftwareRenderer = sdlCreateSoftwareRenderer;
pragma(mangle, "SDL_SetSoftwareRendererWindow")
bool sdlSetSoftwareRendererWindow(SDL_Renderer* renderer, SDL_Window* window);

alias SDL_SetSoftwareRendererWindow = sdlSetSoftwareRendererWindow;
pragma(mangle, "SDL_SetSoftwareRendererSurface")
bool sdlSetSoftwareRendererSurface(SDL_Renderer* renderer, SDL_Surface* surface);

alias SDL_SetSoftwareRendererSurface = sdlSetSoftwareRendererSurface;
pragma(mangle, "SDL_GetRenderer")
SDL_Renderer* sdlGetRenderer(SDL_Window* window);

alias SDL_GetRenderer = sdlGetRenderer;
pragma(mangle, "SDL_GetRenderWindow")
SDL_Window* sdlGetRenderWindow(SDL_Renderer* renderer);

alias SDL_GetRenderWindow = sdlGetRenderWindow;
pragma(mangle, "SDL_GetRendererName")
const(char)* sdlGetRendererName(SDL_Renderer* renderer);

alias SDL_GetRendererName = sdlGetRendererName;
pragma(mangle, "SDL_GetRendererProperties")
SDL_PropertiesID sdlGetRendererProperties(SDL_Renderer* renderer);

alias SDL_GetRendererProperties = sdlGetRendererProperties;
enum SDL_PROP_RENDERER_NAME_STRING = "SDL.renderer.name";
enum SDL_PROP_RENDERER_WINDOW_POINTER = "SDL.renderer.window";
enum SDL_PROP_RENDERER_SURFACE_POINTER = "SDL.renderer.surface";
enum SDL_PROP_RENDERER_VSYNC_NUMBER = "SDL.renderer.vsync";
enum SDL_PROP_RENDERER_MAX_TEXTURE_SIZE_NUMBER = "SDL.renderer.max_texture_size";
enum SDL_PROP_RENDERER_TEXTURE_FORMATS_POINTER = "SDL.renderer.texture_formats";
enum SDL_PROP_RENDERER_TEXTURE_WRAPPING_BOOLEAN = "SDL.renderer.texture_wrapping";
enum SDL_PROP_RENDERER_OUTPUT_COLORSPACE_NUMBER = "SDL.renderer.output_colorspace";
enum SDL_PROP_RENDERER_HDR_ENABLED_BOOLEAN = "SDL.renderer.HDR_enabled";
enum SDL_PROP_RENDERER_SDR_WHITE_POINT_FLOAT = "SDL.renderer.SDR_white_point";
enum SDL_PROP_RENDERER_HDR_HEADROOM_FLOAT = "SDL.renderer.HDR_headroom";
enum SDL_PROP_RENDERER_D3D9_DEVICE_POINTER = "SDL.renderer.d3d9.device";
enum SDL_PROP_RENDERER_D3D11_DEVICE_POINTER = "SDL.renderer.d3d11.device";
enum SDL_PROP_RENDERER_D3D11_SWAPCHAIN_POINTER = "SDL.renderer.d3d11.swap_chain";
enum SDL_PROP_RENDERER_D3D12_DEVICE_POINTER = "SDL.renderer.d3d12.device";
enum SDL_PROP_RENDERER_D3D12_SWAPCHAIN_POINTER = "SDL.renderer.d3d12.swap_chain";
enum SDL_PROP_RENDERER_D3D12_COMMAND_QUEUE_POINTER = "SDL.renderer.d3d12.command_queue";
enum SDL_PROP_RENDERER_METAL_DEVICE_POINTER = "SDL.renderer.metal.device";
enum SDL_PROP_RENDERER_METAL_COMMAND_QUEUE_POINTER = "SDL.renderer.metal.command_queue";
enum SDL_PROP_RENDERER_VULKAN_INSTANCE_POINTER = "SDL.renderer.vulkan.instance";
enum SDL_PROP_RENDERER_VULKAN_SURFACE_NUMBER = "SDL.renderer.vulkan.surface";
enum SDL_PROP_RENDERER_VULKAN_PHYSICAL_DEVICE_POINTER = "SDL.renderer.vulkan.physical_device";
enum SDL_PROP_RENDERER_VULKAN_DEVICE_POINTER = "SDL.renderer.vulkan.device";
enum SDL_PROP_RENDERER_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.vulkan.graphics_queue_family_index";
enum SDL_PROP_RENDERER_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.vulkan.present_queue_family_index";
enum SDL_PROP_RENDERER_VULKAN_SWAPCHAIN_IMAGE_COUNT_NUMBER = "SDL.renderer.vulkan.swapchain_image_count";
enum SDL_PROP_RENDERER_GPU_DEVICE_POINTER = "SDL.renderer.gpu.device";
pragma(mangle, "SDL_GetRenderOutputSize")
bool sdlGetRenderOutputSize(SDL_Renderer* renderer, int* w, int* h);

alias SDL_GetRenderOutputSize = sdlGetRenderOutputSize;
pragma(mangle, "SDL_GetCurrentRenderOutputSize")
bool sdlGetCurrentRenderOutputSize(SDL_Renderer* renderer, int* w, int* h);

alias SDL_GetCurrentRenderOutputSize = sdlGetCurrentRenderOutputSize;
pragma(mangle, "SDL_CreateTexture")
SDL_Texture* sdlCreateTexture(SDL_Renderer* renderer, SDL_PixelFormat format, SDL_TextureAccess access, int w, int h);

alias SDL_CreateTexture = sdlCreateTexture;
pragma(mangle, "SDL_CreateTextureFromSurface")
SDL_Texture* sdlCreateTextureFromSurface(SDL_Renderer* renderer, SDL_Surface* surface);

alias SDL_CreateTextureFromSurface = sdlCreateTextureFromSurface;
pragma(mangle, "SDL_CreateTextureWithProperties")
SDL_Texture* sdlCreateTextureWithProperties(SDL_Renderer* renderer, SDL_PropertiesID props);

alias SDL_CreateTextureWithProperties = sdlCreateTextureWithProperties;
enum SDL_PROP_TEXTURE_CREATE_COLORSPACE_NUMBER = "SDL.texture.create.colorspace";
enum SDL_PROP_TEXTURE_CREATE_FORMAT_NUMBER = "SDL.texture.create.format";
enum SDL_PROP_TEXTURE_CREATE_ACCESS_NUMBER = "SDL.texture.create.access";
enum SDL_PROP_TEXTURE_CREATE_WIDTH_NUMBER = "SDL.texture.create.width";
enum SDL_PROP_TEXTURE_CREATE_HEIGHT_NUMBER = "SDL.texture.create.height";
enum SDL_PROP_TEXTURE_CREATE_PALETTE_POINTER = "SDL.texture.create.palette";
enum SDL_PROP_TEXTURE_CREATE_SDR_WHITE_POINT_FLOAT = "SDL.texture.create.SDR_white_point";
enum SDL_PROP_TEXTURE_CREATE_HDR_HEADROOM_FLOAT = "SDL.texture.create.HDR_headroom";
enum SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_POINTER = "SDL.texture.create.d3d11.texture";
enum SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_U_POINTER = "SDL.texture.create.d3d11.texture_u";
enum SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_V_POINTER = "SDL.texture.create.d3d11.texture_v";
enum SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_POINTER = "SDL.texture.create.d3d12.texture";
enum SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_U_POINTER = "SDL.texture.create.d3d12.texture_u";
enum SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_V_POINTER = "SDL.texture.create.d3d12.texture_v";
enum SDL_PROP_TEXTURE_CREATE_METAL_PIXELBUFFER_POINTER = "SDL.texture.create.metal.pixelbuffer";
enum SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_POINTER = "SDL.texture.create.metal.texture";
enum SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_UV_POINTER = "SDL.texture.create.metal.texture_uv";
enum SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_U_POINTER = "SDL.texture.create.metal.texture_u";
enum SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_V_POINTER = "SDL.texture.create.metal.texture_v";
enum SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_USAGE_NUMBER = "SDL.texture.create.metal.texture_usage";
enum SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_NUMBER = "SDL.texture.create.opengl.texture";
enum SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_UV_NUMBER = "SDL.texture.create.opengl.texture_uv";
enum SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_U_NUMBER = "SDL.texture.create.opengl.texture_u";
enum SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_V_NUMBER = "SDL.texture.create.opengl.texture_v";
enum SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_NUMBER = "SDL.texture.create.opengles2.texture";
enum SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_UV_NUMBER = "SDL.texture.create.opengles2.texture_uv";
enum SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_U_NUMBER = "SDL.texture.create.opengles2.texture_u";
enum SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_V_NUMBER = "SDL.texture.create.opengles2.texture_v";
enum SDL_PROP_TEXTURE_CREATE_VULKAN_TEXTURE_NUMBER = "SDL.texture.create.vulkan.texture";
enum SDL_PROP_TEXTURE_CREATE_VULKAN_TEXTURE_U_NUMBER = "SDL.texture.create.vulkan.texture_u";
enum SDL_PROP_TEXTURE_CREATE_VULKAN_TEXTURE_UV_NUMBER = "SDL.texture.create.vulkan.texture_uv";
enum SDL_PROP_TEXTURE_CREATE_VULKAN_TEXTURE_V_NUMBER = "SDL.texture.create.vulkan.texture_v";
enum SDL_PROP_TEXTURE_CREATE_VULKAN_LAYOUT_NUMBER = "SDL.texture.create.vulkan.layout";
enum SDL_PROP_TEXTURE_CREATE_VULKAN_USAGE_NUMBER = "SDL.texture.create.vulkan.usage";
enum SDL_PROP_TEXTURE_CREATE_VULKAN_ANDROID_HARDWARE_BUFFER_POINTER = "SDL.texture.create.vulkan.android_hardware_buffer";
enum SDL_PROP_TEXTURE_CREATE_GPU_TEXTURE_POINTER = "SDL.texture.create.gpu.texture";
enum SDL_PROP_TEXTURE_CREATE_GPU_TEXTURE_UV_POINTER = "SDL.texture.create.gpu.texture_uv";
enum SDL_PROP_TEXTURE_CREATE_GPU_TEXTURE_U_POINTER = "SDL.texture.create.gpu.texture_u";
enum SDL_PROP_TEXTURE_CREATE_GPU_TEXTURE_V_POINTER = "SDL.texture.create.gpu.texture_v";
pragma(mangle, "SDL_GetTextureProperties")
SDL_PropertiesID sdlGetTextureProperties(SDL_Texture* texture);

alias SDL_GetTextureProperties = sdlGetTextureProperties;
enum SDL_PROP_TEXTURE_COLORSPACE_NUMBER = "SDL.texture.colorspace";
enum SDL_PROP_TEXTURE_FORMAT_NUMBER = "SDL.texture.format";
enum SDL_PROP_TEXTURE_ACCESS_NUMBER = "SDL.texture.access";
enum SDL_PROP_TEXTURE_WIDTH_NUMBER = "SDL.texture.width";
enum SDL_PROP_TEXTURE_HEIGHT_NUMBER = "SDL.texture.height";
enum SDL_PROP_TEXTURE_SDR_WHITE_POINT_FLOAT = "SDL.texture.SDR_white_point";
enum SDL_PROP_TEXTURE_HDR_HEADROOM_FLOAT = "SDL.texture.HDR_headroom";
enum SDL_PROP_TEXTURE_D3D11_TEXTURE_POINTER = "SDL.texture.d3d11.texture";
enum SDL_PROP_TEXTURE_D3D11_TEXTURE_U_POINTER = "SDL.texture.d3d11.texture_u";
enum SDL_PROP_TEXTURE_D3D11_TEXTURE_V_POINTER = "SDL.texture.d3d11.texture_v";
enum SDL_PROP_TEXTURE_D3D12_TEXTURE_POINTER = "SDL.texture.d3d12.texture";
enum SDL_PROP_TEXTURE_D3D12_TEXTURE_U_POINTER = "SDL.texture.d3d12.texture_u";
enum SDL_PROP_TEXTURE_D3D12_TEXTURE_V_POINTER = "SDL.texture.d3d12.texture_v";
enum SDL_PROP_TEXTURE_METAL_TEXTURE_POINTER = "SDL.texture.metal.texture";
enum SDL_PROP_TEXTURE_METAL_TEXTURE_UV_POINTER = "SDL.texture.metal.texture_uv";
enum SDL_PROP_TEXTURE_METAL_TEXTURE_U_POINTER = "SDL.texture.metal.texture_u";
enum SDL_PROP_TEXTURE_METAL_TEXTURE_V_POINTER = "SDL.texture.metal.texture_v";
enum SDL_PROP_TEXTURE_OPENGL_TEXTURE_NUMBER = "SDL.texture.opengl.texture";
enum SDL_PROP_TEXTURE_OPENGL_TEXTURE_UV_NUMBER = "SDL.texture.opengl.texture_uv";
enum SDL_PROP_TEXTURE_OPENGL_TEXTURE_U_NUMBER = "SDL.texture.opengl.texture_u";
enum SDL_PROP_TEXTURE_OPENGL_TEXTURE_V_NUMBER = "SDL.texture.opengl.texture_v";
enum SDL_PROP_TEXTURE_OPENGL_TEXTURE_TARGET_NUMBER = "SDL.texture.opengl.target";
enum SDL_PROP_TEXTURE_OPENGL_TEX_W_FLOAT = "SDL.texture.opengl.tex_w";
enum SDL_PROP_TEXTURE_OPENGL_TEX_H_FLOAT = "SDL.texture.opengl.tex_h";
enum SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_NUMBER = "SDL.texture.opengles2.texture";
enum SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_UV_NUMBER = "SDL.texture.opengles2.texture_uv";
enum SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_U_NUMBER = "SDL.texture.opengles2.texture_u";
enum SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_V_NUMBER = "SDL.texture.opengles2.texture_v";
enum SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_TARGET_NUMBER = "SDL.texture.opengles2.target";
enum SDL_PROP_TEXTURE_VULKAN_TEXTURE_NUMBER = "SDL.texture.vulkan.texture";
enum SDL_PROP_TEXTURE_VULKAN_TEXTURE_UV_NUMBER = "SDL.texture.vulkan.texture_uv";
enum SDL_PROP_TEXTURE_VULKAN_TEXTURE_U_NUMBER = "SDL.texture.vulkan.texture_u";
enum SDL_PROP_TEXTURE_VULKAN_TEXTURE_V_NUMBER = "SDL.texture.vulkan.texture_v";
enum SDL_PROP_TEXTURE_GPU_TEXTURE_POINTER = "SDL.texture.gpu.texture";
enum SDL_PROP_TEXTURE_GPU_TEXTURE_UV_POINTER = "SDL.texture.gpu.texture_uv";
enum SDL_PROP_TEXTURE_GPU_TEXTURE_U_POINTER = "SDL.texture.gpu.texture_u";
enum SDL_PROP_TEXTURE_GPU_TEXTURE_V_POINTER = "SDL.texture.gpu.texture_v";
pragma(mangle, "SDL_GetRendererFromTexture")
SDL_Renderer* sdlGetRendererFromTexture(SDL_Texture* texture);

alias SDL_GetRendererFromTexture = sdlGetRendererFromTexture;
pragma(mangle, "SDL_GetTextureSize")
bool sdlGetTextureSize(SDL_Texture* texture, float* w, float* h);

alias SDL_GetTextureSize = sdlGetTextureSize;

pragma(mangle, "SDL_SetTexturePalette")
bool sdlSetTexturePalette(SDL_Texture* texture, SDL_Palette* palette);

alias SDL_SetTexturePalette = sdlSetTexturePalette;

pragma(mangle, "SDL_GetTexturePalette")
SDL_Palette* sdlGetTexturePalette(SDL_Texture* texture);

alias SDL_GetTexturePalette = sdlGetTexturePalette;

pragma(mangle, "SDL_SetTextureColorMod")
bool sdlSetTextureColorMod(SDL_Texture* texture, Uint8 r, Uint8 g, Uint8 b);

alias SDL_SetTextureColorMod = sdlSetTextureColorMod;

pragma(mangle, "SDL_SetTextureColorModFloat")
bool sdlSetTextureColorModFloat(SDL_Texture* texture, float r, float g, float b);

alias SDL_SetTextureColorModFloat = sdlSetTextureColorModFloat;

pragma(mangle, "SDL_GetTextureColorMod")
bool sdlGetTextureColorMod(SDL_Texture* texture, Uint8* r, Uint8* g, Uint8* b);

alias SDL_GetTextureColorMod = sdlGetTextureColorMod;

pragma(mangle, "SDL_GetTextureColorModFloat")
bool sdlGetTextureColorModFloat(SDL_Texture* texture, float* r, float* g, float* b);

alias SDL_GetTextureColorModFloat = sdlGetTextureColorModFloat;

pragma(mangle, "SDL_SetTextureAlphaMod")
bool sdlSetTextureAlphaMod(SDL_Texture* texture, Uint8 alpha);

alias SDL_SetTextureAlphaMod = sdlSetTextureAlphaMod;

pragma(mangle, "SDL_SetTextureAlphaModFloat")
bool sdlSetTextureAlphaModFloat(SDL_Texture* texture, float alpha);

alias SDL_SetTextureAlphaModFloat = sdlSetTextureAlphaModFloat;

pragma(mangle, "SDL_GetTextureAlphaMod")
bool sdlGetTextureAlphaMod(SDL_Texture* texture, Uint8* alpha);

alias SDL_GetTextureAlphaMod = sdlGetTextureAlphaMod;

pragma(mangle, "SDL_GetTextureAlphaModFloat")
bool sdlGetTextureAlphaModFloat(SDL_Texture* texture, float* alpha);

alias SDL_GetTextureAlphaModFloat = sdlGetTextureAlphaModFloat;

pragma(mangle, "SDL_SetTextureBlendMode")
bool sdlSetTextureBlendMode(SDL_Texture* texture, SDL_BlendMode blendMode);

alias SDL_SetTextureBlendMode = sdlSetTextureBlendMode;

pragma(mangle, "SDL_GetTextureBlendMode")
bool sdlGetTextureBlendMode(SDL_Texture* texture, SDL_BlendMode* blendMode);

alias SDL_GetTextureBlendMode = sdlGetTextureBlendMode;

pragma(mangle, "SDL_SetTextureScaleMode")
bool sdlSetTextureScaleMode(SDL_Texture* texture, SDL_ScaleMode scaleMode);

alias SDL_SetTextureScaleMode = sdlSetTextureScaleMode;

pragma(mangle, "SDL_GetTextureScaleMode")
bool sdlGetTextureScaleMode(SDL_Texture* texture, SDL_ScaleMode* scaleMode);

alias SDL_GetTextureScaleMode = sdlGetTextureScaleMode;

pragma(mangle, "SDL_UpdateTexture")
bool sdlUpdateTexture(SDL_Texture* texture, const(SDL_Rect)* rect, const(void)* pixels, int pitch);

alias SDL_UpdateTexture = sdlUpdateTexture;

pragma(mangle, "SDL_UpdateYUVTexture")
bool sdlUpdateYUVTexture(
    SDL_Texture* texture,
    const(SDL_Rect)* rect,
    const(Uint8)* Yplane,
    int Ypitch,
    const(Uint8)* Uplane,
    int Upitch,
    const(Uint8)* Vplane,
    int Vpitch);

alias SDL_UpdateYUVTexture = sdlUpdateYUVTexture;

pragma(mangle, "SDL_UpdateNVTexture")
bool sdlUpdateNVTexture(
    SDL_Texture* texture,
    const(SDL_Rect)* rect,
    const(Uint8)* Yplane,
    int Ypitch,
    const(Uint8)* UVplane,
    int UVpitch);

alias SDL_UpdateNVTexture = sdlUpdateNVTexture;

pragma(mangle, "SDL_LockTexture")
bool sdlLockTexture(
    SDL_Texture* texture,
    const(SDL_Rect)* rect,
    void** pixels,
    int* pitch);

alias SDL_LockTexture = sdlLockTexture;

pragma(mangle, "SDL_LockTextureToSurface")
bool sdlLockTextureToSurface(SDL_Texture* texture, const(SDL_Rect)* rect, SDL_Surface** surface);

alias SDL_LockTextureToSurface = sdlLockTextureToSurface;

pragma(mangle, "SDL_UnlockTexture")
void sdlUnlockTexture(SDL_Texture* texture);

alias SDL_UnlockTexture = sdlUnlockTexture;

pragma(mangle, "SDL_SetRenderTarget")
bool sdlSetRenderTarget(SDL_Renderer* renderer, SDL_Texture* texture);

alias SDL_SetRenderTarget = sdlSetRenderTarget;

pragma(mangle, "SDL_GetRenderTarget")
SDL_Texture* sdlGetRenderTarget(SDL_Renderer* renderer);

alias SDL_GetRenderTarget = sdlGetRenderTarget;

pragma(mangle, "SDL_SetRenderLogicalPresentation")
bool sdlSetRenderLogicalPresentation(SDL_Renderer* renderer, int w, int h, SDL_RendererLogicalPresentation mode);

alias SDL_SetRenderLogicalPresentation = sdlSetRenderLogicalPresentation;

pragma(mangle, "SDL_GetRenderLogicalPresentation")
bool sdlGetRenderLogicalPresentation(SDL_Renderer* renderer, int* w, int* h, SDL_RendererLogicalPresentation* mode);

alias SDL_GetRenderLogicalPresentation = sdlGetRenderLogicalPresentation;

pragma(mangle, "SDL_GetRenderLogicalPresentationRect")
bool sdlGetRenderLogicalPresentationRect(SDL_Renderer* renderer, SDL_FRect* rect);

alias SDL_GetRenderLogicalPresentationRect = sdlGetRenderLogicalPresentationRect;

pragma(mangle, "SDL_RenderCoordinatesFromWindow")
bool sdlRenderCoordinatesFromWindow(SDL_Renderer* renderer, float window_x, float window_y, float* x, float* y);

alias SDL_RenderCoordinatesFromWindow = sdlRenderCoordinatesFromWindow;

pragma(mangle, "SDL_RenderCoordinatesToWindow")
bool sdlRenderCoordinatesToWindow(SDL_Renderer* renderer, float x, float y, float* window_x, float* window_y);

alias SDL_RenderCoordinatesToWindow = sdlRenderCoordinatesToWindow;

pragma(mangle, "SDL_ConvertEventToRenderCoordinates")
bool sdlConvertEventToRenderCoordinates(SDL_Renderer* renderer, SDL_Event* event);

alias SDL_ConvertEventToRenderCoordinates = sdlConvertEventToRenderCoordinates;

pragma(mangle, "SDL_SetRenderViewport")
bool sdlSetRenderViewport(SDL_Renderer* renderer, const(SDL_Rect)* rect);

alias SDL_SetRenderViewport = sdlSetRenderViewport;

pragma(mangle, "SDL_GetRenderViewport")
bool sdlGetRenderViewport(SDL_Renderer* renderer, SDL_Rect* rect);

alias SDL_GetRenderViewport = sdlGetRenderViewport;

pragma(mangle, "SDL_SetRenderViewportFloat")
bool sdlSetRenderViewportFloat(SDL_Renderer* renderer, const(SDL_FRect)* rect);

alias SDL_SetRenderViewportFloat = sdlSetRenderViewportFloat;

pragma(mangle, "SDL_GetRenderViewportFloat")
bool sdlGetRenderViewportFloat(SDL_Renderer* renderer, SDL_FRect* rect);

alias SDL_GetRenderViewportFloat = sdlGetRenderViewportFloat;

pragma(mangle, "SDL_RenderViewportSet")
bool sdlRenderViewportSet(SDL_Renderer* renderer);

alias SDL_RenderViewportSet = sdlRenderViewportSet;

pragma(mangle, "SDL_GetRenderSafeArea")
bool sdlGetRenderSafeArea(SDL_Renderer* renderer, SDL_Rect* rect);

alias SDL_GetRenderSafeArea = sdlGetRenderSafeArea;

pragma(mangle, "SDL_SetRenderClipRect")
bool sdlSetRenderClipRect(SDL_Renderer* renderer, const(SDL_Rect)* rect);

alias SDL_SetRenderClipRect = sdlSetRenderClipRect;

pragma(mangle, "SDL_GetRenderClipRect")
bool sdlGetRenderClipRect(SDL_Renderer* renderer, SDL_Rect* rect);

alias SDL_GetRenderClipRect = sdlGetRenderClipRect;

pragma(mangle, "SDL_SetRenderClipRectFloat")
bool sdlSetRenderClipRectFloat(SDL_Renderer* renderer, const(SDL_FRect)* rect);

alias SDL_SetRenderClipRectFloat = sdlSetRenderClipRectFloat;

pragma(mangle, "SDL_GetRenderClipRectFloat")
bool sdlGetRenderClipRectFloat(SDL_Renderer* renderer, SDL_FRect* rect);

alias SDL_GetRenderClipRectFloat = sdlGetRenderClipRectFloat;

pragma(mangle, "SDL_RenderClipEnabled")
bool sdlRenderClipEnabled(SDL_Renderer* renderer);

alias SDL_RenderClipEnabled = sdlRenderClipEnabled;

pragma(mangle, "SDL_SetRenderScale")
bool sdlSetRenderScale(SDL_Renderer* renderer, float scaleX, float scaleY);

alias SDL_SetRenderScale = sdlSetRenderScale;

pragma(mangle, "SDL_GetRenderScale")
bool sdlGetRenderScale(SDL_Renderer* renderer, float* scaleX, float* scaleY);

alias SDL_GetRenderScale = sdlGetRenderScale;

pragma(mangle, "SDL_SetRenderDrawColor")
bool sdlSetRenderDrawColor(SDL_Renderer* renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a);

alias SDL_SetRenderDrawColor = sdlSetRenderDrawColor;

pragma(mangle, "SDL_SetRenderDrawColorFloat")
bool sdlSetRenderDrawColorFloat(SDL_Renderer* renderer, float r, float g, float b, float a);

alias SDL_SetRenderDrawColorFloat = sdlSetRenderDrawColorFloat;

pragma(mangle, "SDL_GetRenderDrawColor")
bool sdlGetRenderDrawColor(SDL_Renderer* renderer, Uint8* r, Uint8* g, Uint8* b, Uint8* a);

alias SDL_GetRenderDrawColor = sdlGetRenderDrawColor;

pragma(mangle, "SDL_GetRenderDrawColorFloat")
bool sdlGetRenderDrawColorFloat(SDL_Renderer* renderer, float* r, float* g, float* b, float* a);

alias SDL_GetRenderDrawColorFloat = sdlGetRenderDrawColorFloat;

pragma(mangle, "SDL_SetRenderColorScale")
bool sdlSetRenderColorScale(SDL_Renderer* renderer, float scale);

alias SDL_SetRenderColorScale = sdlSetRenderColorScale;

pragma(mangle, "SDL_GetRenderColorScale")
bool sdlGetRenderColorScale(SDL_Renderer* renderer, float* scale);

alias SDL_GetRenderColorScale = sdlGetRenderColorScale;

pragma(mangle, "SDL_SetRenderHDRHeadroom")
bool sdlSetRenderHDRHeadroom(SDL_Renderer* renderer, float headroom);

alias SDL_SetRenderHDRHeadroom = sdlSetRenderHDRHeadroom;

pragma(mangle, "SDL_GetRenderHDRHeadroom")
bool sdlGetRenderHDRHeadroom(SDL_Renderer* renderer, float* headroom);

alias SDL_GetRenderHDRHeadroom = sdlGetRenderHDRHeadroom;

pragma(mangle, "SDL_SetRenderDrawBlendMode")
bool sdlSetRenderDrawBlendMode(SDL_Renderer* renderer, SDL_BlendMode blendMode);

alias SDL_SetRenderDrawBlendMode = sdlSetRenderDrawBlendMode;

pragma(mangle, "SDL_GetRenderDrawBlendMode")
bool sdlGetRenderDrawBlendMode(SDL_Renderer* renderer, SDL_BlendMode* blendMode);

alias SDL_GetRenderDrawBlendMode = sdlGetRenderDrawBlendMode;

pragma(mangle, "SDL_RenderClear")
bool sdlRenderClear(SDL_Renderer* renderer);

alias SDL_RenderClear = sdlRenderClear;

pragma(mangle, "SDL_RenderPoint")
bool sdlRenderPoint(SDL_Renderer* renderer, float x, float y);

alias SDL_RenderPoint = sdlRenderPoint;

pragma(mangle, "SDL_RenderPoints")
bool sdlRenderPoints(SDL_Renderer* renderer, const(SDL_FPoint)* points, int count);

alias SDL_RenderPoints = sdlRenderPoints;

pragma(mangle, "SDL_RenderLine")
bool sdlRenderLine(SDL_Renderer* renderer, float x1, float y1, float x2, float y2);

alias SDL_RenderLine = sdlRenderLine;

pragma(mangle, "SDL_RenderLines")
bool sdlRenderLines(SDL_Renderer* renderer, const(SDL_FPoint)* points, int count);

alias SDL_RenderLines = sdlRenderLines;

pragma(mangle, "SDL_RenderRect")
bool sdlRenderRect(SDL_Renderer* renderer, const(SDL_FRect)* rect);

alias SDL_RenderRect = sdlRenderRect;

pragma(mangle, "SDL_RenderRects")
bool sdlRenderRects(SDL_Renderer* renderer, const(SDL_FRect)* rects, int count);

alias SDL_RenderRects = sdlRenderRects;

pragma(mangle, "SDL_RenderFillRect")
bool sdlRenderFillRect(SDL_Renderer* renderer, const(SDL_FRect)* rect);

alias SDL_RenderFillRect = sdlRenderFillRect;

pragma(mangle, "SDL_RenderFillRects")
bool sdlRenderFillRects(SDL_Renderer* renderer, const(SDL_FRect)* rects, int count);

alias SDL_RenderFillRects = sdlRenderFillRects;

pragma(mangle, "SDL_RenderTexture")
bool sdlRenderTexture(SDL_Renderer* renderer, SDL_Texture* texture, const(SDL_FRect)* srcrect, const(
        SDL_FRect)* dstrect);

alias SDL_RenderTexture = sdlRenderTexture;

pragma(mangle, "SDL_RenderTextureRotated")
bool sdlRenderTextureRotated(
    SDL_Renderer* renderer,
    SDL_Texture* texture,
    const(SDL_FRect)* srcrect,
    const(SDL_FRect)* dstrect,
    double angle,
    const(SDL_FPoint)* center,
    SDL_FlipMode flip);

alias SDL_RenderTextureRotated = sdlRenderTextureRotated;

pragma(mangle, "SDL_RenderTextureAffine")
bool sdlRenderTextureAffine(
    SDL_Renderer* renderer,
    SDL_Texture* texture,
    const(SDL_FRect)* srcrect,
    const(SDL_FPoint)* origin,
    const(SDL_FPoint)* right,
    const(SDL_FPoint)* down);

alias SDL_RenderTextureAffine = sdlRenderTextureAffine;

pragma(mangle, "SDL_RenderTextureTiled")
bool sdlRenderTextureTiled(SDL_Renderer* renderer, SDL_Texture* texture, const(SDL_FRect)* srcrect, float scale, const(
        SDL_FRect)* dstrect);

alias SDL_RenderTextureTiled = sdlRenderTextureTiled;

pragma(mangle, "SDL_RenderTexture9Grid")
bool sdlRenderTexture9Grid(SDL_Renderer* renderer, SDL_Texture* texture, const(SDL_FRect)* srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const(
        SDL_FRect)* dstrect);

alias SDL_RenderTexture9Grid = sdlRenderTexture9Grid;

pragma(mangle, "SDL_RenderTexture9GridTiled")
bool sdlRenderTexture9GridTiled(SDL_Renderer* renderer, SDL_Texture* texture, const(SDL_FRect)* srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const(
        SDL_FRect)* dstrect, float tileScale);

alias SDL_RenderTexture9GridTiled = sdlRenderTexture9GridTiled;

pragma(mangle, "SDL_RenderGeometry")
bool sdlRenderGeometry(
    SDL_Renderer* renderer,
    SDL_Texture* texture,
    const(SDL_Vertex)* vertices,
    int num_vertices,
    const(int)* indices,
    int num_indices);

alias SDL_RenderGeometry = sdlRenderGeometry;

pragma(mangle, "SDL_RenderGeometryRaw")
bool sdlRenderGeometryRaw(
    SDL_Renderer* renderer,
    SDL_Texture* texture,
    const(float)* xy,
    int xy_stride,
    const(SDL_FColor)* color,
    int color_stride,
    const(float)* uv,
    int uv_stride,
    int num_vertices,
    const(void)* indices,
    int num_indices,
    int size_indices);

alias SDL_RenderGeometryRaw = sdlRenderGeometryRaw;

pragma(mangle, "SDL_SetRenderTextureAddressMode")
bool sdlSetRenderTextureAddressMode(SDL_Renderer* renderer, SDL_TextureAddressMode u_mode, SDL_TextureAddressMode v_mode);

alias SDL_SetRenderTextureAddressMode = sdlSetRenderTextureAddressMode;

pragma(mangle, "SDL_GetRenderTextureAddressMode")
bool sdlGetRenderTextureAddressMode(SDL_Renderer* renderer, SDL_TextureAddressMode* u_mode, SDL_TextureAddressMode* v_mode);

alias SDL_GetRenderTextureAddressMode = sdlGetRenderTextureAddressMode;

pragma(mangle, "SDL_RenderReadPixels")
SDL_Surface* sdlRenderReadPixels(SDL_Renderer* renderer, const(SDL_Rect)* rect);

alias SDL_RenderReadPixels = sdlRenderReadPixels;

pragma(mangle, "SDL_RenderPresent")
bool sdlRenderPresent(SDL_Renderer* renderer);

alias SDL_RenderPresent = sdlRenderPresent;

pragma(mangle, "SDL_DestroyTexture")
void sdlDestroyTexture(SDL_Texture* texture);

alias SDL_DestroyTexture = sdlDestroyTexture;

pragma(mangle, "SDL_DestroyRenderer")
void sdlDestroyRenderer(SDL_Renderer* renderer);

alias SDL_DestroyRenderer = sdlDestroyRenderer;

pragma(mangle, "SDL_FlushRenderer")
bool sdlFlushRenderer(SDL_Renderer* renderer);

alias SDL_FlushRenderer = sdlFlushRenderer;

pragma(mangle, "SDL_GetRenderMetalLayer")
void* sdlGetRenderMetalLayer(SDL_Renderer* renderer);

alias SDL_GetRenderMetalLayer = sdlGetRenderMetalLayer;

pragma(mangle, "SDL_GetRenderMetalCommandEncoder")
void* sdlGetRenderMetalCommandEncoder(SDL_Renderer* renderer);

alias SDL_GetRenderMetalCommandEncoder = sdlGetRenderMetalCommandEncoder;

pragma(mangle, "SDL_AddVulkanRenderSemaphores")
bool sdlAddVulkanRenderSemaphores(SDL_Renderer* renderer, Uint32 wait_stage_mask, Sint64 wait_semaphore, Sint64 signal_semaphore);

alias SDL_AddVulkanRenderSemaphores = sdlAddVulkanRenderSemaphores;

pragma(mangle, "SDL_SetRenderVSync")
bool sdlSetRenderVSync(SDL_Renderer* renderer, int vsync);

alias SDL_SetRenderVSync = sdlSetRenderVSync;

enum SDL_RENDERER_VSYNC_DISABLED = 0;
enum SDL_RENDERER_VSYNC_ADAPTIVE = -1;

pragma(mangle, "SDL_GetRenderVSync")
bool sdlGetRenderVSync(SDL_Renderer* renderer, int* vsync);

alias SDL_GetRenderVSync = sdlGetRenderVSync;

enum SDL_DEBUG_TEXT_FONT_CHARACTER_SIZE = 8;

pragma(mangle, "SDL_RenderDebugText")
bool sdlRenderDebugText(SDL_Renderer* renderer, float x, float y, const(char)* str);

alias SDL_RenderDebugText = sdlRenderDebugText;

pragma(mangle, "SDL_RenderDebugTextFormat")
bool sdlRenderDebugTextFormat(SDL_Renderer* renderer, float x, float y, const(char)* fmt, ...);

alias SDL_RenderDebugTextFormat = sdlRenderDebugTextFormat;

pragma(mangle, "SDL_SetDefaultTextureScaleMode")
bool sdlSetDefaultTextureScaleMode(SDL_Renderer* renderer, SDL_ScaleMode scale_mode);

alias SDL_SetDefaultTextureScaleMode = sdlSetDefaultTextureScaleMode;

pragma(mangle, "SDL_GetDefaultTextureScaleMode")
bool sdlGetDefaultTextureScaleMode(SDL_Renderer* renderer, SDL_ScaleMode* scale_mode);

alias SDL_GetDefaultTextureScaleMode = sdlGetDefaultTextureScaleMode;

struct SDL_GPURenderStateCreateInfo
{
    SDL_GPUShader* fragment_shader;

    alias Sint32 = int;
    Sint32 num_sampler_bindings;
    const(SDL_GPUTextureSamplerBinding)* sampler_bindings;

    Sint32 num_storage_textures;
    SDL_GPUTexture** storage_textures;

    Sint32 num_storage_buffers;
    SDL_GPUBuffer** storage_buffers;

    alias SDL_PropertiesID = uint;
    SDL_PropertiesID props;
}

struct SDL_GPURenderState;

pragma(mangle, "SDL_CreateGPURenderState")
SDL_GPURenderState* sdlCreateGPURenderState(SDL_Renderer* renderer, const(
        SDL_GPURenderStateCreateInfo)* createinfo);

alias SDL_CreateGPURenderState = sdlCreateGPURenderState;

pragma(mangle, "SDL_SetGPURenderStateSamplerBindings")
bool sdlSetGPURenderStateSamplerBindings(SDL_GPURenderState* state, int num_sampler_bindings, const(
        SDL_GPUTextureSamplerBinding)* sampler_bindings);

alias SDL_SetGPURenderStateSamplerBindings = sdlSetGPURenderStateSamplerBindings;

pragma(mangle, "SDL_SetGPURenderStateStorageTextures")
bool sdlSetGPURenderStateStorageTextures(SDL_GPURenderState* state, int num_storage_textures, SDL_GPUTexture** storage_textures);

alias SDL_SetGPURenderStateStorageTextures = sdlSetGPURenderStateStorageTextures;

pragma(mangle, "SDL_SetGPURenderStateStorageBuffers")
bool sdlSetGPURenderStateStorageBuffers(SDL_GPURenderState* state, int num_storage_buffers, SDL_GPUBuffer** storage_buffers);

alias SDL_SetGPURenderStateStorageBuffers = sdlSetGPURenderStateStorageBuffers;

pragma(mangle, "SDL_SetGPURenderStateFragmentUniforms")
bool sdlSetGPURenderStateFragmentUniforms(SDL_GPURenderState* state, Uint32 slot_index, const(void)* data, Uint32 length);

alias SDL_SetGPURenderStateFragmentUniforms = sdlSetGPURenderStateFragmentUniforms;

pragma(mangle, "SDL_SetGPURenderState")
bool sdlSetGPURenderState(SDL_Renderer* renderer, SDL_GPURenderState* state);

alias SDL_SetGPURenderState = sdlSetGPURenderState;

pragma(mangle, "SDL_DestroyGPURenderState")
void sdlDestroyGPURenderState(SDL_GPURenderState* state);

alias SDL_DestroyGPURenderState = sdlDestroyGPURenderState;
