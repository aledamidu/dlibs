module libs.sdl.vulkan;

import libs.sdl.stdinc;
import libs.sdl.video;

extern (C):
@nogc nothrow:

struct VkInstance_T;
alias VkInstance = VkInstance_T*;
struct VkPhysicalDevice_T;
alias VkPhysicalDevice = VkPhysicalDevice_T*;
struct VkSurfaceKHR_T;
alias VkSurfaceKHR = VkSurfaceKHR_T*;
struct VkAllocationCallbacks;

pragma(mangle, "SDL_Vulkan_LoadLibrary")
bool sdlVulkanLoadLibrary(const(char)* path);

alias SDL_Vulkan_LoadLibrary = sdlVulkanLoadLibrary;

pragma(mangle, "SDL_Vulkan_GetVkGetInstanceProcAddr")
SDL_FunctionPointer sdlVulkanGetVkGetInstanceProcAddr();

alias SDL_Vulkan_GetVkGetInstanceProcAddr = sdlVulkanGetVkGetInstanceProcAddr;

pragma(mangle, "SDL_Vulkan_UnloadLibrary")
void sdlVulkanUnloadLibrary();

alias SDL_Vulkan_UnloadLibrary = sdlVulkanUnloadLibrary;

pragma(mangle, "SDL_Vulkan_GetInstanceExtensions")
const(char*)* sdlVulkanGetInstanceExtensions(Uint32* count);

alias SDL_Vulkan_GetInstanceExtensions = sdlVulkanGetInstanceExtensions;

pragma(mangle, "SDL_Vulkan_CreateSurface")
bool sdlVulkanCreateSurface(
    SDL_Window* window,
    VkInstance instance,
    const(VkAllocationCallbacks)* allocator,
    VkSurfaceKHR* surface);

alias SDL_Vulkan_CreateSurface = sdlVulkanCreateSurface;

pragma(mangle, "SDL_Vulkan_DestroySurface")
void sdlVulkanDestroySurface(
    VkInstance instance,
    VkSurfaceKHR surface,
    const(VkAllocationCallbacks)* allocator);

alias SDL_Vulkan_DestroySurface = sdlVulkanDestroySurface;

pragma(mangle, "SDL_Vulkan_GetPresentationSupport")
bool sdlVulkanGetPresentationSupport(
    VkInstance instance,
    VkPhysicalDevice physicalDevice,
    Uint32 queueFamilyIndex);

alias SDL_Vulkan_GetPresentationSupport = sdlVulkanGetPresentationSupport;
