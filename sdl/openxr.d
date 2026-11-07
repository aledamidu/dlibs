module libs.sdl.openxr;

import libs.sdl.gpu;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

enum XR_NULL_HANDLE = 0;

enum XrStructureType
{
    XR_TYPE_SESSION_CREATE_INFO = 8,
    XR_TYPE_SWAPCHAIN_CREATE_INFO = 9
}

alias XR_TYPE_SESSION_CREATE_INFO = XrStructureType.XR_TYPE_SESSION_CREATE_INFO;
alias XR_TYPE_SWAPCHAIN_CREATE_INFO = XrStructureType.XR_TYPE_SWAPCHAIN_CREATE_INFO;

alias XrInstance = ulong;
alias XrSystemId = ulong;
alias XrSession = ulong;
alias XrSwapchain = ulong;

struct XrSessionCreateInfo
{
    XrStructureType type;
    const(void)* next;
}

struct XrSwapchainCreateInfo
{
    XrStructureType type;
    const(void)* next;
}

enum XrResult
{
    XR_ERROR_FUNCTION_UNSUPPORTED = -7,
    XR_ERROR_HANDLE_INVALID = -12
}

alias XR_ERROR_FUNCTION_UNSUPPORTED = XrResult.XR_ERROR_FUNCTION_UNSUPPORTED;
alias XR_ERROR_HANDLE_INVALID = XrResult.XR_ERROR_HANDLE_INVALID;

alias PFN_xrGetInstanceProcAddr = SDL_FunctionPointer;

pragma(mangle, "SDL_CreateGPUXRSession")
XrResult sdlCreateGPUXRSession(SDL_GPUDevice* device, const(XrSessionCreateInfo)* createinfo, XrSession* session);

alias SDL_CreateGPUXRSession = sdlCreateGPUXRSession;

pragma(mangle, "SDL_GetGPUXRSwapchainFormats")
SDL_GPUTextureFormat* sdlGetGPUXRSwapchainFormats(SDL_GPUDevice* device, XrSession session, int* num_formats);

alias SDL_GetGPUXRSwapchainFormats = sdlGetGPUXRSwapchainFormats;

pragma(mangle, "SDL_CreateGPUXRSwapchain")
XrResult sdlCreateGPUXRSwapchain(
    SDL_GPUDevice* device,
    XrSession session,
    const(XrSwapchainCreateInfo)* createinfo,
    SDL_GPUTextureFormat format,
    XrSwapchain* swapchain,
    SDL_GPUTexture*** textures);

alias SDL_CreateGPUXRSwapchain = sdlCreateGPUXRSwapchain;

pragma(mangle, "SDL_DestroyGPUXRSwapchain")
XrResult sdlDestroyGPUXRSwapchain(SDL_GPUDevice* device, XrSwapchain swapchain, SDL_GPUTexture** swapchainImages);

alias SDL_DestroyGPUXRSwapchain = sdlDestroyGPUXRSwapchain;

pragma(mangle, "SDL_OpenXR_LoadLibrary")
bool sdlOpenXRLoadLibrary();

alias SDL_OpenXR_LoadLibrary = sdlOpenXRLoadLibrary;

pragma(mangle, "SDL_OpenXR_UnloadLibrary")
void sdlOpenXRUnloadLibrary();

alias SDL_OpenXR_UnloadLibrary = sdlOpenXRUnloadLibrary;

pragma(mangle, "SDL_OpenXR_GetXrGetInstanceProcAddr")
SDL_FunctionPointer sdlOpenXRGetXrGetInstanceProcAddr();

alias SDL_OpenXR_GetXrGetInstanceProcAddr = sdlOpenXRGetXrGetInstanceProcAddr;
