module libs.sdl.video;

import libs.sdl.pixels;
import libs.sdl.properties;
import libs.sdl.rect;
import libs.sdl.stdinc;
import libs.sdl.surface;

extern (C):
@nogc nothrow:

alias SDL_DisplayID = uint;

alias SDL_WindowID = uint;

enum SDL_PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER = "SDL.video.wayland.wl_display";

enum SDL_PROP_GLOBAL_VIDEO_WAYLAND_SESSION_ID_STRING = "SDL.video.wayland.session_id";

enum SDL_SystemTheme
{
    SDL_SYSTEM_THEME_UNKNOWN = 0,
    SDL_SYSTEM_THEME_LIGHT = 1,
    SDL_SYSTEM_THEME_DARK = 2
}

alias SDL_SYSTEM_THEME_UNKNOWN = SDL_SystemTheme.SDL_SYSTEM_THEME_UNKNOWN;
alias SDL_SYSTEM_THEME_LIGHT = SDL_SystemTheme.SDL_SYSTEM_THEME_LIGHT;
alias SDL_SYSTEM_THEME_DARK = SDL_SystemTheme.SDL_SYSTEM_THEME_DARK;

struct SDL_DisplayModeData;

struct SDL_DisplayMode
{
    SDL_DisplayID displayID;

    SDL_PixelFormat format;
    int w;
    int h;
    float pixel_density;
    float refresh_rate;
    int refresh_rate_numerator;
    int refresh_rate_denominator;
    SDL_DisplayModeData* internal;
}

enum SDL_DisplayOrientation
{
    SDL_ORIENTATION_UNKNOWN = 0,
    SDL_ORIENTATION_LANDSCAPE = 1,
    SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2,
    SDL_ORIENTATION_PORTRAIT = 3,
    SDL_ORIENTATION_PORTRAIT_FLIPPED = 4
}

alias SDL_ORIENTATION_UNKNOWN = SDL_DisplayOrientation.SDL_ORIENTATION_UNKNOWN;
alias SDL_ORIENTATION_LANDSCAPE = SDL_DisplayOrientation.SDL_ORIENTATION_LANDSCAPE;
alias SDL_ORIENTATION_LANDSCAPE_FLIPPED = SDL_DisplayOrientation.SDL_ORIENTATION_LANDSCAPE_FLIPPED;
alias SDL_ORIENTATION_PORTRAIT = SDL_DisplayOrientation.SDL_ORIENTATION_PORTRAIT;
alias SDL_ORIENTATION_PORTRAIT_FLIPPED = SDL_DisplayOrientation.SDL_ORIENTATION_PORTRAIT_FLIPPED;

struct SDL_Window;
alias SDL_WindowFlags = ulong;
enum SDL_WINDOW_FULLSCREEN = SDL_UINT64_C(0x0000000000000001);
enum SDL_WINDOW_OPENGL = SDL_UINT64_C(0x0000000000000002);
enum SDL_WINDOW_OCCLUDED = SDL_UINT64_C(0x0000000000000004);
enum SDL_WINDOW_HIDDEN = SDL_UINT64_C(0x0000000000000008);
enum SDL_WINDOW_BORDERLESS = SDL_UINT64_C(0x0000000000000010);
enum SDL_WINDOW_RESIZABLE = SDL_UINT64_C(0x0000000000000020);
enum SDL_WINDOW_MINIMIZED = SDL_UINT64_C(0x0000000000000040);
enum SDL_WINDOW_MAXIMIZED = SDL_UINT64_C(0x0000000000000080);
enum SDL_WINDOW_MOUSE_GRABBED = SDL_UINT64_C(0x0000000000000100);
enum SDL_WINDOW_INPUT_FOCUS = SDL_UINT64_C(0x0000000000000200);
enum SDL_WINDOW_MOUSE_FOCUS = SDL_UINT64_C(0x0000000000000400);
enum SDL_WINDOW_EXTERNAL = SDL_UINT64_C(0x0000000000000800);
enum SDL_WINDOW_MODAL = SDL_UINT64_C(0x0000000000001000);
enum SDL_WINDOW_HIGH_PIXEL_DENSITY = SDL_UINT64_C(0x0000000000002000);
enum SDL_WINDOW_MOUSE_CAPTURE = SDL_UINT64_C(0x0000000000004000);
enum SDL_WINDOW_MOUSE_RELATIVE_MODE = SDL_UINT64_C(0x0000000000008000);
enum SDL_WINDOW_ALWAYS_ON_TOP = SDL_UINT64_C(0x0000000000010000);
enum SDL_WINDOW_UTILITY = SDL_UINT64_C(0x0000000000020000);
enum SDL_WINDOW_TOOLTIP = SDL_UINT64_C(0x0000000000040000);
enum SDL_WINDOW_POPUP_MENU = SDL_UINT64_C(0x0000000000080000);
enum SDL_WINDOW_KEYBOARD_GRABBED = SDL_UINT64_C(0x0000000000100000);
enum SDL_WINDOW_FILL_DOCUMENT = SDL_UINT64_C(0x0000000000200000);
enum SDL_WINDOW_VULKAN = SDL_UINT64_C(0x0000000010000000);
enum SDL_WINDOW_METAL = SDL_UINT64_C(0x0000000020000000);
enum SDL_WINDOW_TRANSPARENT = SDL_UINT64_C(0x0000000040000000);
enum SDL_WINDOW_NOT_FOCUSABLE = SDL_UINT64_C(0x0000000080000000);
enum SDL_WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000u;

extern (D) auto SDL_WINDOWPOS_UNDEFINED_DISPLAY(T)(auto ref T X)
{
    return SDL_WINDOWPOS_UNDEFINED_MASK | X;
}

enum SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(0);

extern (D) auto SDL_WINDOWPOS_ISUNDEFINED(T)(auto ref T X)
{
    return (X & 0xFFFF0000) == SDL_WINDOWPOS_UNDEFINED_MASK;
}

enum SDL_WINDOWPOS_CENTERED_MASK = 0x2FFF0000u;

extern (D) auto SDL_WINDOWPOS_CENTERED_DISPLAY(T)(auto ref T X)
{
    return SDL_WINDOWPOS_CENTERED_MASK | X;
}

enum SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(0);

extern (D) auto SDL_WINDOWPOS_ISCENTERED(T)(auto ref T X)
{
    return (X & 0xFFFF0000) == SDL_WINDOWPOS_CENTERED_MASK;
}

enum SDL_FlashOperation
{
    SDL_FLASH_CANCEL = 0,
    SDL_FLASH_BRIEFLY = 1,
    SDL_FLASH_UNTIL_FOCUSED = 2
}

alias SDL_FLASH_CANCEL = SDL_FlashOperation.SDL_FLASH_CANCEL;
alias SDL_FLASH_BRIEFLY = SDL_FlashOperation.SDL_FLASH_BRIEFLY;
alias SDL_FLASH_UNTIL_FOCUSED = SDL_FlashOperation.SDL_FLASH_UNTIL_FOCUSED;

enum SDL_ProgressState
{
    SDL_PROGRESS_STATE_INVALID = -1,
    SDL_PROGRESS_STATE_NONE = 0,
    SDL_PROGRESS_STATE_INDETERMINATE = 1,
    SDL_PROGRESS_STATE_NORMAL = 2,
    SDL_PROGRESS_STATE_PAUSED = 3,
    SDL_PROGRESS_STATE_ERROR = 4
}

alias SDL_PROGRESS_STATE_INVALID = SDL_ProgressState.SDL_PROGRESS_STATE_INVALID;
alias SDL_PROGRESS_STATE_NONE = SDL_ProgressState.SDL_PROGRESS_STATE_NONE;
alias SDL_PROGRESS_STATE_INDETERMINATE = SDL_ProgressState.SDL_PROGRESS_STATE_INDETERMINATE;
alias SDL_PROGRESS_STATE_NORMAL = SDL_ProgressState.SDL_PROGRESS_STATE_NORMAL;
alias SDL_PROGRESS_STATE_PAUSED = SDL_ProgressState.SDL_PROGRESS_STATE_PAUSED;
alias SDL_PROGRESS_STATE_ERROR = SDL_ProgressState.SDL_PROGRESS_STATE_ERROR;

struct SDL_GLContextState;
alias SDL_GLContext = SDL_GLContextState*;
alias SDL_EGLDisplay = void*;
alias SDL_EGLConfig = void*;
alias SDL_EGLSurface = void*;
alias SDL_EGLAttrib = long;
alias SDL_EGLint = int;
alias SDL_EGLAttribArrayCallback = long* function(void* userdata);
alias SDL_EGLIntArrayCallback = int* function(void* userdata, SDL_EGLDisplay display, SDL_EGLConfig config);

enum SDL_GLAttr
{
    SDL_GL_RED_SIZE = 0,
    SDL_GL_GREEN_SIZE = 1,
    SDL_GL_BLUE_SIZE = 2,
    SDL_GL_ALPHA_SIZE = 3,
    SDL_GL_BUFFER_SIZE = 4,
    SDL_GL_DOUBLEBUFFER = 5,
    SDL_GL_DEPTH_SIZE = 6,
    SDL_GL_STENCIL_SIZE = 7,
    SDL_GL_ACCUM_RED_SIZE = 8,
    SDL_GL_ACCUM_GREEN_SIZE = 9,
    SDL_GL_ACCUM_BLUE_SIZE = 10,
    SDL_GL_ACCUM_ALPHA_SIZE = 11,
    SDL_GL_STEREO = 12,
    SDL_GL_MULTISAMPLEBUFFERS = 13,
    SDL_GL_MULTISAMPLESAMPLES = 14,
    SDL_GL_ACCELERATED_VISUAL = 15,
    SDL_GL_RETAINED_BACKING = 16,
    SDL_GL_CONTEXT_MAJOR_VERSION = 17,
    SDL_GL_CONTEXT_MINOR_VERSION = 18,
    SDL_GL_CONTEXT_FLAGS = 19,
    SDL_GL_CONTEXT_PROFILE_MASK = 20,
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 21,
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 22,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 23,
    SDL_GL_CONTEXT_RESET_NOTIFICATION = 24,
    SDL_GL_CONTEXT_NO_ERROR = 25,
    SDL_GL_FLOATBUFFERS = 26,
    SDL_GL_EGL_PLATFORM = 27
}

alias SDL_GL_RED_SIZE = SDL_GLAttr.SDL_GL_RED_SIZE;
alias SDL_GL_GREEN_SIZE = SDL_GLAttr.SDL_GL_GREEN_SIZE;
alias SDL_GL_BLUE_SIZE = SDL_GLAttr.SDL_GL_BLUE_SIZE;
alias SDL_GL_ALPHA_SIZE = SDL_GLAttr.SDL_GL_ALPHA_SIZE;
alias SDL_GL_BUFFER_SIZE = SDL_GLAttr.SDL_GL_BUFFER_SIZE;
alias SDL_GL_DOUBLEBUFFER = SDL_GLAttr.SDL_GL_DOUBLEBUFFER;
alias SDL_GL_DEPTH_SIZE = SDL_GLAttr.SDL_GL_DEPTH_SIZE;
alias SDL_GL_STENCIL_SIZE = SDL_GLAttr.SDL_GL_STENCIL_SIZE;
alias SDL_GL_ACCUM_RED_SIZE = SDL_GLAttr.SDL_GL_ACCUM_RED_SIZE;
alias SDL_GL_ACCUM_GREEN_SIZE = SDL_GLAttr.SDL_GL_ACCUM_GREEN_SIZE;
alias SDL_GL_ACCUM_BLUE_SIZE = SDL_GLAttr.SDL_GL_ACCUM_BLUE_SIZE;
alias SDL_GL_ACCUM_ALPHA_SIZE = SDL_GLAttr.SDL_GL_ACCUM_ALPHA_SIZE;
alias SDL_GL_STEREO = SDL_GLAttr.SDL_GL_STEREO;
alias SDL_GL_MULTISAMPLEBUFFERS = SDL_GLAttr.SDL_GL_MULTISAMPLEBUFFERS;
alias SDL_GL_MULTISAMPLESAMPLES = SDL_GLAttr.SDL_GL_MULTISAMPLESAMPLES;
alias SDL_GL_ACCELERATED_VISUAL = SDL_GLAttr.SDL_GL_ACCELERATED_VISUAL;
alias SDL_GL_RETAINED_BACKING = SDL_GLAttr.SDL_GL_RETAINED_BACKING;
alias SDL_GL_CONTEXT_MAJOR_VERSION = SDL_GLAttr.SDL_GL_CONTEXT_MAJOR_VERSION;
alias SDL_GL_CONTEXT_MINOR_VERSION = SDL_GLAttr.SDL_GL_CONTEXT_MINOR_VERSION;
alias SDL_GL_CONTEXT_FLAGS = SDL_GLAttr.SDL_GL_CONTEXT_FLAGS;
alias SDL_GL_CONTEXT_PROFILE_MASK = SDL_GLAttr.SDL_GL_CONTEXT_PROFILE_MASK;
alias SDL_GL_SHARE_WITH_CURRENT_CONTEXT = SDL_GLAttr.SDL_GL_SHARE_WITH_CURRENT_CONTEXT;
alias SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = SDL_GLAttr.SDL_GL_FRAMEBUFFER_SRGB_CAPABLE;
alias SDL_GL_CONTEXT_RELEASE_BEHAVIOR = SDL_GLAttr.SDL_GL_CONTEXT_RELEASE_BEHAVIOR;
alias SDL_GL_CONTEXT_RESET_NOTIFICATION = SDL_GLAttr.SDL_GL_CONTEXT_RESET_NOTIFICATION;
alias SDL_GL_CONTEXT_NO_ERROR = SDL_GLAttr.SDL_GL_CONTEXT_NO_ERROR;
alias SDL_GL_FLOATBUFFERS = SDL_GLAttr.SDL_GL_FLOATBUFFERS;
alias SDL_GL_EGL_PLATFORM = SDL_GLAttr.SDL_GL_EGL_PLATFORM;

alias SDL_GLProfile = uint;
enum SDL_GL_CONTEXT_PROFILE_CORE = 0x0001;
enum SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 0x0002;
enum SDL_GL_CONTEXT_PROFILE_ES = 0x0004;
alias SDL_GLContextFlag = uint;
enum SDL_GL_CONTEXT_DEBUG_FLAG = 0x0001;
enum SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 0x0002;
enum SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 0x0004;
enum SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 0x0008;
alias SDL_GLContextReleaseFlag = uint;
enum SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0x0000;
enum SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x0001;
alias SDL_GLContextResetNotification = uint;
enum SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0x0000;
enum SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 0x0001;
pragma(mangle, "SDL_GetNumVideoDrivers")
int sdlGetNumVideoDrivers();

alias SDL_GetNumVideoDrivers = sdlGetNumVideoDrivers;
pragma(mangle, "SDL_GetVideoDriver")
const(char)* sdlGetVideoDriver(int index);

alias SDL_GetVideoDriver = sdlGetVideoDriver;
pragma(mangle, "SDL_GetCurrentVideoDriver")
const(char)* sdlGetCurrentVideoDriver();

alias SDL_GetCurrentVideoDriver = sdlGetCurrentVideoDriver;
pragma(mangle, "SDL_GetSystemTheme")
SDL_SystemTheme sdlGetSystemTheme();

alias SDL_GetSystemTheme = sdlGetSystemTheme;
pragma(mangle, "SDL_GetDisplays")
SDL_DisplayID* sdlGetDisplays(int* count);

alias SDL_GetDisplays = sdlGetDisplays;
pragma(mangle, "SDL_GetPrimaryDisplay")
SDL_DisplayID sdlGetPrimaryDisplay();

alias SDL_GetPrimaryDisplay = sdlGetPrimaryDisplay;
pragma(mangle, "SDL_GetDisplayProperties")
SDL_PropertiesID sdlGetDisplayProperties(SDL_DisplayID displayID);

alias SDL_GetDisplayProperties = sdlGetDisplayProperties;

enum SDL_PROP_DISPLAY_HDR_ENABLED_BOOLEAN = "SDL.display.HDR_enabled";
enum SDL_PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER = "SDL.display.KMSDRM.panel_orientation";
enum SDL_PROP_DISPLAY_WAYLAND_WL_OUTPUT_POINTER = "SDL.display.wayland.wl_output";
enum SDL_PROP_DISPLAY_WINDOWS_HMONITOR_POINTER = "SDL.display.windows.hmonitor";

pragma(mangle, "SDL_GetDisplayName")
const(char)* sdlGetDisplayName(SDL_DisplayID displayID);

alias SDL_GetDisplayName = sdlGetDisplayName;

pragma(mangle, "SDL_GetDisplayBounds")
bool sdlGetDisplayBounds(SDL_DisplayID displayID, SDL_Rect* rect);

alias SDL_GetDisplayBounds = sdlGetDisplayBounds;

pragma(mangle, "SDL_GetDisplayUsableBounds")
bool sdlGetDisplayUsableBounds(SDL_DisplayID displayID, SDL_Rect* rect);

alias SDL_GetDisplayUsableBounds = sdlGetDisplayUsableBounds;

pragma(mangle, "SDL_GetNaturalDisplayOrientation")
SDL_DisplayOrientation sdlGetNaturalDisplayOrientation(SDL_DisplayID displayID);

alias SDL_GetNaturalDisplayOrientation = sdlGetNaturalDisplayOrientation;

pragma(mangle, "SDL_GetCurrentDisplayOrientation")
SDL_DisplayOrientation sdlGetCurrentDisplayOrientation(SDL_DisplayID displayID);

alias SDL_GetCurrentDisplayOrientation = sdlGetCurrentDisplayOrientation;

pragma(mangle, "SDL_GetDisplayContentScale")
float sdlGetDisplayContentScale(SDL_DisplayID displayID);

alias SDL_GetDisplayContentScale = sdlGetDisplayContentScale;

pragma(mangle, "SDL_GetFullscreenDisplayModes")
SDL_DisplayMode** sdlGetFullscreenDisplayModes(SDL_DisplayID displayID, int* count);

alias SDL_GetFullscreenDisplayModes = sdlGetFullscreenDisplayModes;

pragma(mangle, "SDL_GetClosestFullscreenDisplayMode")
bool sdlGetClosestFullscreenDisplayMode(SDL_DisplayID displayID, int w, int h, float refresh_rate, bool include_high_density_modes, SDL_DisplayMode* closest);

alias SDL_GetClosestFullscreenDisplayMode = sdlGetClosestFullscreenDisplayMode;

pragma(mangle, "SDL_GetDesktopDisplayMode")
const(SDL_DisplayMode)* sdlGetDesktopDisplayMode(SDL_DisplayID displayID);

alias SDL_GetDesktopDisplayMode = sdlGetDesktopDisplayMode;

pragma(mangle, "SDL_GetCurrentDisplayMode")
const(SDL_DisplayMode)* sdlGetCurrentDisplayMode(SDL_DisplayID displayID);

alias SDL_GetCurrentDisplayMode = sdlGetCurrentDisplayMode;

pragma(mangle, "SDL_GetDisplayForPoint")
SDL_DisplayID sdlGetDisplayForPoint(const(SDL_Point)* point);

alias SDL_GetDisplayForPoint = sdlGetDisplayForPoint;

pragma(mangle, "SDL_GetDisplayForRect")
SDL_DisplayID sdlGetDisplayForRect(const(SDL_Rect)* rect);

alias SDL_GetDisplayForRect = sdlGetDisplayForRect;

pragma(mangle, "SDL_GetDisplayForWindow")
SDL_DisplayID sdlGetDisplayForWindow(SDL_Window* window);

alias SDL_GetDisplayForWindow = sdlGetDisplayForWindow;

pragma(mangle, "SDL_GetWindowPixelDensity")
float sdlGetWindowPixelDensity(SDL_Window* window);

alias SDL_GetWindowPixelDensity = sdlGetWindowPixelDensity;

pragma(mangle, "SDL_GetWindowDisplayScale")
float sdlGetWindowDisplayScale(SDL_Window* window);

alias SDL_GetWindowDisplayScale = sdlGetWindowDisplayScale;

pragma(mangle, "SDL_SetWindowFullscreenMode")
bool sdlSetWindowFullscreenMode(SDL_Window* window, const(SDL_DisplayMode)* mode);

alias SDL_SetWindowFullscreenMode = sdlSetWindowFullscreenMode;

pragma(mangle, "SDL_GetWindowFullscreenMode")
const(SDL_DisplayMode)* sdlGetWindowFullscreenMode(SDL_Window* window);

alias SDL_GetWindowFullscreenMode = sdlGetWindowFullscreenMode;

pragma(mangle, "SDL_GetWindowICCProfile")
void* sdlGetWindowICCProfile(SDL_Window* window, size_t* size);

alias SDL_GetWindowICCProfile = sdlGetWindowICCProfile;

pragma(mangle, "SDL_GetWindowPixelFormat")
SDL_PixelFormat sdlGetWindowPixelFormat(SDL_Window* window);

alias SDL_GetWindowPixelFormat = sdlGetWindowPixelFormat;

pragma(mangle, "SDL_GetWindows")
SDL_Window** sdlGetWindows(int* count);

alias SDL_GetWindows = sdlGetWindows;

pragma(mangle, "SDL_CreateWindow")
SDL_Window* sdlCreateWindow(const(char)* title, int w, int h, SDL_WindowFlags flags);

alias SDL_CreateWindow = sdlCreateWindow;

pragma(mangle, "SDL_CreatePopupWindow")
SDL_Window* sdlCreatePopupWindow(SDL_Window* parent, int offset_x, int offset_y, int w, int h, SDL_WindowFlags flags);

alias SDL_CreatePopupWindow = sdlCreatePopupWindow;

pragma(mangle, "SDL_CreateWindowWithProperties")
SDL_Window* sdlCreateWindowWithProperties(SDL_PropertiesID props);

alias SDL_CreateWindowWithProperties = sdlCreateWindowWithProperties;

enum SDL_PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN = "SDL.window.create.always_on_top";
enum SDL_PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN = "SDL.window.create.borderless";
enum SDL_PROP_WINDOW_CREATE_CONSTRAIN_POPUP_BOOLEAN = "SDL.window.create.constrain_popup";
enum SDL_PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN = "SDL.window.create.focusable";
enum SDL_PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN = "SDL.window.create.external_graphics_context";
enum SDL_PROP_WINDOW_CREATE_FLAGS_NUMBER = "SDL.window.create.flags";
enum SDL_PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN = "SDL.window.create.fullscreen";
enum SDL_PROP_WINDOW_CREATE_HEIGHT_NUMBER = "SDL.window.create.height";
enum SDL_PROP_WINDOW_CREATE_HIDDEN_BOOLEAN = "SDL.window.create.hidden";
enum SDL_PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN = "SDL.window.create.high_pixel_density";
enum SDL_PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN = "SDL.window.create.maximized";
enum SDL_PROP_WINDOW_CREATE_MENU_BOOLEAN = "SDL.window.create.menu";
enum SDL_PROP_WINDOW_CREATE_METAL_BOOLEAN = "SDL.window.create.metal";
enum SDL_PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN = "SDL.window.create.minimized";
enum SDL_PROP_WINDOW_CREATE_MODAL_BOOLEAN = "SDL.window.create.modal";
enum SDL_PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN = "SDL.window.create.mouse_grabbed";
enum SDL_PROP_WINDOW_CREATE_OPENGL_BOOLEAN = "SDL.window.create.opengl";
enum SDL_PROP_WINDOW_CREATE_PARENT_POINTER = "SDL.window.create.parent";
enum SDL_PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN = "SDL.window.create.resizable";
enum SDL_PROP_WINDOW_CREATE_TITLE_STRING = "SDL.window.create.title";
enum SDL_PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN = "SDL.window.create.transparent";
enum SDL_PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN = "SDL.window.create.tooltip";
enum SDL_PROP_WINDOW_CREATE_UTILITY_BOOLEAN = "SDL.window.create.utility";
enum SDL_PROP_WINDOW_CREATE_VULKAN_BOOLEAN = "SDL.window.create.vulkan";
enum SDL_PROP_WINDOW_CREATE_WIDTH_NUMBER = "SDL.window.create.width";
enum SDL_PROP_WINDOW_CREATE_X_NUMBER = "SDL.window.create.x";
enum SDL_PROP_WINDOW_CREATE_Y_NUMBER = "SDL.window.create.y";
enum SDL_PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER = "SDL.window.create.cocoa.window";
enum SDL_PROP_WINDOW_CREATE_COCOA_VIEW_POINTER = "SDL.window.create.cocoa.view";
enum SDL_PROP_WINDOW_CREATE_WINDOWSCENE_POINTER = "SDL.window.create.uikit.windowscene";
enum SDL_PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN = "SDL.window.create.wayland.surface_role_custom";
enum SDL_PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN = "SDL.window.create.wayland.create_egl_window";
enum SDL_PROP_WINDOW_CREATE_WAYLAND_WINDOW_ID_STRING = "SDL.window.create.wayland.window_id";
enum SDL_PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER = "SDL.window.create.wayland.wl_surface";
enum SDL_PROP_WINDOW_CREATE_WAYLAND_ENABLE_INSETS_BOOLEAN = "SDL.window.create.wayland.enable_insets";
enum SDL_PROP_WINDOW_CREATE_WIN32_HWND_POINTER = "SDL.window.create.win32.hwnd";
enum SDL_PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER = "SDL.window.create.win32.pixel_format_hwnd";
enum SDL_PROP_WINDOW_CREATE_WIN32_STYLE_EX_NUMBER = "SDL.window.create.win32.style_ex";
enum SDL_PROP_WINDOW_CREATE_X11_WINDOW_NUMBER = "SDL.window.create.x11.window";
enum SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_CANVAS_ID_STRING = "SDL.window.create.emscripten.canvas_id";
enum SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING = "SDL.window.create.emscripten.keyboard_element";
enum SDL_PROP_WINDOW_CREATE_VISIONOS_SETTINGS_STRING = "SDL.window.create.visionos.settings";

pragma(mangle, "SDL_GetWindowID")
SDL_WindowID sdlGetWindowID(SDL_Window* window);

alias SDL_GetWindowID = sdlGetWindowID;

pragma(mangle, "SDL_GetWindowFromID")
SDL_Window* sdlGetWindowFromID(SDL_WindowID id);

alias SDL_GetWindowFromID = sdlGetWindowFromID;

pragma(mangle, "SDL_GetWindowParent")
SDL_Window* sdlGetWindowParent(SDL_Window* window);

alias SDL_GetWindowParent = sdlGetWindowParent;

pragma(mangle, "SDL_GetWindowProperties")
SDL_PropertiesID sdlGetWindowProperties(SDL_Window* window);

alias SDL_GetWindowProperties = sdlGetWindowProperties;

enum SDL_PROP_WINDOW_SHAPE_POINTER = "SDL.window.shape";
enum SDL_PROP_WINDOW_HDR_ENABLED_BOOLEAN = "SDL.window.HDR_enabled";
enum SDL_PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT = "SDL.window.SDR_white_level";
enum SDL_PROP_WINDOW_HDR_HEADROOM_FLOAT = "SDL.window.HDR_headroom";
enum SDL_PROP_WINDOW_ANDROID_WINDOW_POINTER = "SDL.window.android.window";
enum SDL_PROP_WINDOW_ANDROID_SURFACE_POINTER = "SDL.window.android.surface";
enum SDL_PROP_WINDOW_OPENHARMONY_XCOMPONENT_POINTER = "SDL.window.openharmony.xcomponent";
enum SDL_PROP_WINDOW_OPENHARMONY_WINDOW_POINTER = "SDL.window.openharmony.window";
enum SDL_PROP_WINDOW_OPENHARMONY_SURFACE_POINTER = "SDL.window.openharmony.surface";
enum SDL_PROP_WINDOW_UIKIT_WINDOW_POINTER = "SDL.window.uikit.window";
enum SDL_PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER = "SDL.window.uikit.metal_view_tag";
enum SDL_PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER = "SDL.window.uikit.opengl.framebuffer";
enum SDL_PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER = "SDL.window.uikit.opengl.renderbuffer";
enum SDL_PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER = "SDL.window.uikit.opengl.resolve_framebuffer";
enum SDL_PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER = "SDL.window.kmsdrm.dev_index";
enum SDL_PROP_WINDOW_KMSDRM_DRM_FD_NUMBER = "SDL.window.kmsdrm.drm_fd";
enum SDL_PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER = "SDL.window.kmsdrm.gbm_dev";
enum SDL_PROP_WINDOW_COCOA_WINDOW_POINTER = "SDL.window.cocoa.window";
enum SDL_PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER = "SDL.window.cocoa.metal_view_tag";
enum SDL_PROP_WINDOW_OPENVR_OVERLAY_ID_NUMBER = "SDL.window.openvr.overlay_id";
enum SDL_PROP_WINDOW_QNX_WINDOW_POINTER = "SDL.window.qnx.window";
enum SDL_PROP_WINDOW_QNX_SURFACE_POINTER = "SDL.window.qnx.surface";
enum SDL_PROP_WINDOW_VIVANTE_DISPLAY_POINTER = "SDL.window.vivante.display";
enum SDL_PROP_WINDOW_VIVANTE_WINDOW_POINTER = "SDL.window.vivante.window";
enum SDL_PROP_WINDOW_VIVANTE_SURFACE_POINTER = "SDL.window.vivante.surface";
enum SDL_PROP_WINDOW_WIN32_HWND_POINTER = "SDL.window.win32.hwnd";
enum SDL_PROP_WINDOW_WIN32_HDC_POINTER = "SDL.window.win32.hdc";
enum SDL_PROP_WINDOW_WIN32_INSTANCE_POINTER = "SDL.window.win32.instance";
enum SDL_PROP_WINDOW_WAYLAND_DISPLAY_POINTER = "SDL.window.wayland.display";
enum SDL_PROP_WINDOW_WAYLAND_SURFACE_POINTER = "SDL.window.wayland.surface";
enum SDL_PROP_WINDOW_WAYLAND_VIEWPORT_POINTER = "SDL.window.wayland.viewport";
enum SDL_PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER = "SDL.window.wayland.egl_window";
enum SDL_PROP_WINDOW_WAYLAND_WINDOW_ID_STRING = "SDL.window.wayland.window_id";
enum SDL_PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER = "SDL.window.wayland.xdg_surface";
enum SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER = "SDL.window.wayland.xdg_toplevel";
enum SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING = "SDL.window.wayland.xdg_toplevel_export_handle";
enum SDL_PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER = "SDL.window.wayland.xdg_popup";
enum SDL_PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER = "SDL.window.wayland.xdg_positioner";
enum SDL_PROP_WINDOW_WAYLAND_BORDER_INSET_LEFT_NUMBER = "SDL.window.wayland.border_inset_left";
enum SDL_PROP_WINDOW_WAYLAND_BORDER_INSET_TOP_NUMBER = "SDL.window.wayland.border_inset_top";
enum SDL_PROP_WINDOW_WAYLAND_BORDER_INSET_RIGHT_NUMBER = "SDL.window.wayland.border_inset_right";
enum SDL_PROP_WINDOW_WAYLAND_BORDER_INSET_BOTTOM_NUMBER = "SDL.window.wayland.border_inset_bottom";
enum SDL_PROP_WINDOW_X11_DISPLAY_POINTER = "SDL.window.x11.display";
enum SDL_PROP_WINDOW_X11_SCREEN_NUMBER = "SDL.window.x11.screen";
enum SDL_PROP_WINDOW_X11_WINDOW_NUMBER = "SDL.window.x11.window";
enum SDL_PROP_WINDOW_EMSCRIPTEN_CANVAS_ID_STRING = "SDL.window.emscripten.canvas_id";
enum SDL_PROP_WINDOW_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING = "SDL.window.emscripten.keyboard_element";
enum SDL_PROP_WINDOW_VISIONOS_SETTINGS_STRING = "SDL.window.visionos.settings";

pragma(mangle, "SDL_GetWindowFlags")
SDL_WindowFlags sdlGetWindowFlags(SDL_Window* window);

alias SDL_GetWindowFlags = sdlGetWindowFlags;

pragma(mangle, "SDL_SetWindowTitle")
bool sdlSetWindowTitle(SDL_Window* window, const(char)* title);

alias SDL_SetWindowTitle = sdlSetWindowTitle;

pragma(mangle, "SDL_GetWindowTitle")
const(char)* sdlGetWindowTitle(SDL_Window* window);

alias SDL_GetWindowTitle = sdlGetWindowTitle;

pragma(mangle, "SDL_SetWindowIcon")
bool sdlSetWindowIcon(SDL_Window* window, SDL_Surface* icon);

alias SDL_SetWindowIcon = sdlSetWindowIcon;

pragma(mangle, "SDL_SetWindowPosition")
bool sdlSetWindowPosition(SDL_Window* window, int x, int y);

alias SDL_SetWindowPosition = sdlSetWindowPosition;

pragma(mangle, "SDL_GetWindowPosition")
bool sdlGetWindowPosition(SDL_Window* window, int* x, int* y);

alias SDL_GetWindowPosition = sdlGetWindowPosition;

pragma(mangle, "SDL_SetWindowSize")
bool sdlSetWindowSize(SDL_Window* window, int w, int h);

alias SDL_SetWindowSize = sdlSetWindowSize;

pragma(mangle, "SDL_GetWindowSize")
bool sdlGetWindowSize(SDL_Window* window, int* w, int* h);

alias SDL_GetWindowSize = sdlGetWindowSize;

pragma(mangle, "SDL_GetWindowSafeArea")
bool sdlGetWindowSafeArea(SDL_Window* window, SDL_Rect* rect);

alias SDL_GetWindowSafeArea = sdlGetWindowSafeArea;

pragma(mangle, "SDL_SetWindowAspectRatio")
bool sdlSetWindowAspectRatio(SDL_Window* window, float min_aspect, float max_aspect);

alias SDL_SetWindowAspectRatio = sdlSetWindowAspectRatio;

pragma(mangle, "SDL_GetWindowAspectRatio")
bool sdlGetWindowAspectRatio(SDL_Window* window, float* min_aspect, float* max_aspect);

alias SDL_GetWindowAspectRatio = sdlGetWindowAspectRatio;

pragma(mangle, "SDL_GetWindowBordersSize")
bool sdlGetWindowBordersSize(SDL_Window* window, int* top, int* left, int* bottom, int* right);

alias SDL_GetWindowBordersSize = sdlGetWindowBordersSize;

pragma(mangle, "SDL_GetWindowSizeInPixels")
bool sdlGetWindowSizeInPixels(SDL_Window* window, int* w, int* h);

alias SDL_GetWindowSizeInPixels = sdlGetWindowSizeInPixels;

pragma(mangle, "SDL_SetWindowMinimumSize")
bool sdlSetWindowMinimumSize(SDL_Window* window, int min_w, int min_h);

alias SDL_SetWindowMinimumSize = sdlSetWindowMinimumSize;

pragma(mangle, "SDL_GetWindowMinimumSize")
bool sdlGetWindowMinimumSize(SDL_Window* window, int* w, int* h);

alias SDL_GetWindowMinimumSize = sdlGetWindowMinimumSize;

pragma(mangle, "SDL_SetWindowMaximumSize")
bool sdlSetWindowMaximumSize(SDL_Window* window, int max_w, int max_h);

alias SDL_SetWindowMaximumSize = sdlSetWindowMaximumSize;

pragma(mangle, "SDL_GetWindowMaximumSize")
bool sdlGetWindowMaximumSize(SDL_Window* window, int* w, int* h);

alias SDL_GetWindowMaximumSize = sdlGetWindowMaximumSize;

pragma(mangle, "SDL_SetWindowBordered")
bool sdlSetWindowBordered(SDL_Window* window, bool bordered);

alias SDL_SetWindowBordered = sdlSetWindowBordered;

pragma(mangle, "SDL_SetWindowResizable")
bool sdlSetWindowResizable(SDL_Window* window, bool resizable);

alias SDL_SetWindowResizable = sdlSetWindowResizable;

pragma(mangle, "SDL_SetWindowAlwaysOnTop")
bool sdlSetWindowAlwaysOnTop(SDL_Window* window, bool on_top);

alias SDL_SetWindowAlwaysOnTop = sdlSetWindowAlwaysOnTop;

pragma(mangle, "SDL_SetWindowFillDocument")
bool sdlSetWindowFillDocument(SDL_Window* window, bool fill);

alias SDL_SetWindowFillDocument = sdlSetWindowFillDocument;

pragma(mangle, "SDL_ShowWindow")
bool sdlShowWindow(SDL_Window* window);

alias SDL_ShowWindow = sdlShowWindow;

pragma(mangle, "SDL_HideWindow")
bool sdlHideWindow(SDL_Window* window);

alias SDL_HideWindow = sdlHideWindow;

pragma(mangle, "SDL_RaiseWindow")
bool sdlRaiseWindow(SDL_Window* window);

alias SDL_RaiseWindow = sdlRaiseWindow;

pragma(mangle, "SDL_MaximizeWindow")
bool sdlMaximizeWindow(SDL_Window* window);

alias SDL_MaximizeWindow = sdlMaximizeWindow;

pragma(mangle, "SDL_MinimizeWindow")
bool sdlMinimizeWindow(SDL_Window* window);

alias SDL_MinimizeWindow = sdlMinimizeWindow;

pragma(mangle, "SDL_RestoreWindow")
bool sdlRestoreWindow(SDL_Window* window);

alias SDL_RestoreWindow = sdlRestoreWindow;

pragma(mangle, "SDL_SetWindowFullscreen")
bool sdlSetWindowFullscreen(SDL_Window* window, bool fullscreen);

alias SDL_SetWindowFullscreen = sdlSetWindowFullscreen;

pragma(mangle, "SDL_SyncWindow")
bool sdlSyncWindow(SDL_Window* window);

alias SDL_SyncWindow = sdlSyncWindow;

pragma(mangle, "SDL_WindowHasSurface")
bool sdlWindowHasSurface(SDL_Window* window);

alias SDL_WindowHasSurface = sdlWindowHasSurface;

pragma(mangle, "SDL_GetWindowSurface")
SDL_Surface* sdlGetWindowSurface(SDL_Window* window);

alias SDL_GetWindowSurface = sdlGetWindowSurface;

pragma(mangle, "SDL_SetWindowSurfaceVSync")
bool sdlSetWindowSurfaceVSync(SDL_Window* window, int vsync);

alias SDL_SetWindowSurfaceVSync = sdlSetWindowSurfaceVSync;

enum SDL_WINDOW_SURFACE_VSYNC_DISABLED = 0;
enum SDL_WINDOW_SURFACE_VSYNC_ADAPTIVE = -1;

pragma(mangle, "SDL_GetWindowSurfaceVSync")
bool sdlGetWindowSurfaceVSync(SDL_Window* window, int* vsync);

alias SDL_GetWindowSurfaceVSync = sdlGetWindowSurfaceVSync;

pragma(mangle, "SDL_UpdateWindowSurface")
bool sdlUpdateWindowSurface(SDL_Window* window);

alias SDL_UpdateWindowSurface = sdlUpdateWindowSurface;

pragma(mangle, "SDL_UpdateWindowSurfaceRects")
bool sdlUpdateWindowSurfaceRects(SDL_Window* window, const(SDL_Rect)* rects, int numrects);

alias SDL_UpdateWindowSurfaceRects = sdlUpdateWindowSurfaceRects;

pragma(mangle, "SDL_DestroyWindowSurface")
bool sdlDestroyWindowSurface(SDL_Window* window);

alias SDL_DestroyWindowSurface = sdlDestroyWindowSurface;

pragma(mangle, "SDL_SetWindowKeyboardGrab")
bool sdlSetWindowKeyboardGrab(SDL_Window* window, bool grabbed);

alias SDL_SetWindowKeyboardGrab = sdlSetWindowKeyboardGrab;

pragma(mangle, "SDL_SetWindowMouseGrab")
bool sdlSetWindowMouseGrab(SDL_Window* window, bool grabbed);

alias SDL_SetWindowMouseGrab = sdlSetWindowMouseGrab;

pragma(mangle, "SDL_GetWindowKeyboardGrab")
bool sdlGetWindowKeyboardGrab(SDL_Window* window);

alias SDL_GetWindowKeyboardGrab = sdlGetWindowKeyboardGrab;

pragma(mangle, "SDL_GetWindowMouseGrab")
bool sdlGetWindowMouseGrab(SDL_Window* window);

alias SDL_GetWindowMouseGrab = sdlGetWindowMouseGrab;

pragma(mangle, "SDL_GetGrabbedWindow")
SDL_Window* sdlGetGrabbedWindow();

alias SDL_GetGrabbedWindow = sdlGetGrabbedWindow;

pragma(mangle, "SDL_SetWindowMouseRect")
bool sdlSetWindowMouseRect(SDL_Window* window, const(SDL_Rect)* rect);

alias SDL_SetWindowMouseRect = sdlSetWindowMouseRect;

pragma(mangle, "SDL_GetWindowMouseRect")
const(SDL_Rect)* sdlGetWindowMouseRect(SDL_Window* window);

alias SDL_GetWindowMouseRect = sdlGetWindowMouseRect;

pragma(mangle, "SDL_SetWindowOpacity")
bool sdlSetWindowOpacity(SDL_Window* window, float opacity);

alias SDL_SetWindowOpacity = sdlSetWindowOpacity;

pragma(mangle, "SDL_GetWindowOpacity")
float sdlGetWindowOpacity(SDL_Window* window);

alias SDL_GetWindowOpacity = sdlGetWindowOpacity;

pragma(mangle, "SDL_SetWindowParent")
bool sdlSetWindowParent(SDL_Window* window, SDL_Window* parent);

alias SDL_SetWindowParent = sdlSetWindowParent;

pragma(mangle, "SDL_SetWindowModal")
bool sdlSetWindowModal(SDL_Window* window, bool modal);

alias SDL_SetWindowModal = sdlSetWindowModal;

pragma(mangle, "SDL_SetWindowFocusable")
bool sdlSetWindowFocusable(SDL_Window* window, bool focusable);

alias SDL_SetWindowFocusable = sdlSetWindowFocusable;

pragma(mangle, "SDL_ShowWindowSystemMenu")
bool sdlShowWindowSystemMenu(SDL_Window* window, int x, int y);

alias SDL_ShowWindowSystemMenu = sdlShowWindowSystemMenu;

enum SDL_HitTestResult
{
    SDL_HITTEST_NORMAL = 0,
    SDL_HITTEST_DRAGGABLE = 1,
    SDL_HITTEST_RESIZE_TOPLEFT = 2,
    SDL_HITTEST_RESIZE_TOP = 3,
    SDL_HITTEST_RESIZE_TOPRIGHT = 4,
    SDL_HITTEST_RESIZE_RIGHT = 5,
    SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6,
    SDL_HITTEST_RESIZE_BOTTOM = 7,
    SDL_HITTEST_RESIZE_BOTTOMLEFT = 8,
    SDL_HITTEST_RESIZE_LEFT = 9
}

alias SDL_HITTEST_NORMAL = SDL_HitTestResult.SDL_HITTEST_NORMAL;
alias SDL_HITTEST_DRAGGABLE = SDL_HitTestResult.SDL_HITTEST_DRAGGABLE;
alias SDL_HITTEST_RESIZE_TOPLEFT = SDL_HitTestResult.SDL_HITTEST_RESIZE_TOPLEFT;
alias SDL_HITTEST_RESIZE_TOP = SDL_HitTestResult.SDL_HITTEST_RESIZE_TOP;
alias SDL_HITTEST_RESIZE_TOPRIGHT = SDL_HitTestResult.SDL_HITTEST_RESIZE_TOPRIGHT;
alias SDL_HITTEST_RESIZE_RIGHT = SDL_HitTestResult.SDL_HITTEST_RESIZE_RIGHT;
alias SDL_HITTEST_RESIZE_BOTTOMRIGHT = SDL_HitTestResult.SDL_HITTEST_RESIZE_BOTTOMRIGHT;
alias SDL_HITTEST_RESIZE_BOTTOM = SDL_HitTestResult.SDL_HITTEST_RESIZE_BOTTOM;
alias SDL_HITTEST_RESIZE_BOTTOMLEFT = SDL_HitTestResult.SDL_HITTEST_RESIZE_BOTTOMLEFT;
alias SDL_HITTEST_RESIZE_LEFT = SDL_HitTestResult.SDL_HITTEST_RESIZE_LEFT;

alias SDL_HitTest = SDL_HitTestResult function(SDL_Window* win, const(SDL_Point)* area, void* data);

pragma(mangle, "SDL_SetWindowHitTest")
bool sdlSetWindowHitTest(SDL_Window* window, SDL_HitTest callback, void* callback_data);

alias SDL_SetWindowHitTest = sdlSetWindowHitTest;

pragma(mangle, "SDL_SetWindowShape")
bool sdlSetWindowShape(SDL_Window* window, SDL_Surface* shape);

alias SDL_SetWindowShape = sdlSetWindowShape;

pragma(mangle, "SDL_FlashWindow")
bool sdlFlashWindow(SDL_Window* window, SDL_FlashOperation operation);

alias SDL_FlashWindow = sdlFlashWindow;

pragma(mangle, "SDL_SetWindowProgressState")
bool sdlSetWindowProgressState(SDL_Window* window, SDL_ProgressState state);

alias SDL_SetWindowProgressState = sdlSetWindowProgressState;

pragma(mangle, "SDL_GetWindowProgressState")
SDL_ProgressState sdlGetWindowProgressState(SDL_Window* window);

alias SDL_GetWindowProgressState = sdlGetWindowProgressState;

pragma(mangle, "SDL_SetWindowProgressValue")
bool sdlSetWindowProgressValue(SDL_Window* window, float value);

alias SDL_SetWindowProgressValue = sdlSetWindowProgressValue;

pragma(mangle, "SDL_GetWindowProgressValue")
float sdlGetWindowProgressValue(SDL_Window* window);

alias SDL_GetWindowProgressValue = sdlGetWindowProgressValue;

pragma(mangle, "SDL_DestroyWindow")
void sdlDestroyWindow(SDL_Window* window);

alias SDL_DestroyWindow = sdlDestroyWindow;

pragma(mangle, "SDL_ScreenSaverEnabled")
bool sdlScreenSaverEnabled();

alias SDL_ScreenSaverEnabled = sdlScreenSaverEnabled;

pragma(mangle, "SDL_EnableScreenSaver")
bool sdlEnableScreenSaver();

alias SDL_EnableScreenSaver = sdlEnableScreenSaver;

pragma(mangle, "SDL_DisableScreenSaver")
bool sdlDisableScreenSaver();

alias SDL_DisableScreenSaver = sdlDisableScreenSaver;

pragma(mangle, "SDL_GL_LoadLibrary")
bool sdlGlLoadLibrary(const(char)* path);

alias SDL_GL_LoadLibrary = sdlGlLoadLibrary;

pragma(mangle, "SDL_GL_GetProcAddress")
SDL_FunctionPointer sdlGlGetProcAddress(const(char)* proc);

alias SDL_GL_GetProcAddress = sdlGlGetProcAddress;

pragma(mangle, "SDL_EGL_GetProcAddress")
SDL_FunctionPointer sdlEglGetProcAddress(const(char)* proc);

alias SDL_EGL_GetProcAddress = sdlEglGetProcAddress;

pragma(mangle, "SDL_GL_UnloadLibrary")
void sdlGlUnloadLibrary();

alias SDL_GL_UnloadLibrary = sdlGlUnloadLibrary;

pragma(mangle, "SDL_GL_ExtensionSupported")
bool sdlGlExtensionSupported(const(char)* extension);

alias SDL_GL_ExtensionSupported = sdlGlExtensionSupported;

pragma(mangle, "SDL_GL_ResetAttributes")
void sdlGlResetAttributes();

alias SDL_GL_ResetAttributes = sdlGlResetAttributes;

pragma(mangle, "SDL_GL_SetAttribute")
bool sdlGlSetAttribute(SDL_GLAttr attr, int value);

alias SDL_GL_SetAttribute = sdlGlSetAttribute;

pragma(mangle, "SDL_GL_GetAttribute")
bool sdlGlGetAttribute(SDL_GLAttr attr, int* value);

alias SDL_GL_GetAttribute = sdlGlGetAttribute;

pragma(mangle, "SDL_GL_CreateContext")
SDL_GLContext sdlGlCreateContext(SDL_Window* window);

alias SDL_GL_CreateContext = sdlGlCreateContext;

pragma(mangle, "SDL_GL_MakeCurrent")
bool sdlGlMakeCurrent(SDL_Window* window, SDL_GLContext context);

alias SDL_GL_MakeCurrent = sdlGlMakeCurrent;

pragma(mangle, "SDL_GL_GetCurrentWindow")
SDL_Window* sdlGlGetCurrentWindow();

alias SDL_GL_GetCurrentWindow = sdlGlGetCurrentWindow;

pragma(mangle, "SDL_GL_GetCurrentContext")
SDL_GLContext sdlGlGetCurrentContext();

alias SDL_GL_GetCurrentContext = sdlGlGetCurrentContext;

pragma(mangle, "SDL_EGL_GetCurrentDisplay")
SDL_EGLDisplay sdlEglGetCurrentDisplay();

alias SDL_EGL_GetCurrentDisplay = sdlEglGetCurrentDisplay;

pragma(mangle, "SDL_EGL_GetCurrentConfig")
SDL_EGLConfig sdlEglGetCurrentConfig();

alias SDL_EGL_GetCurrentConfig = sdlEglGetCurrentConfig;

pragma(mangle, "SDL_EGL_GetWindowSurface")
SDL_EGLSurface sdlEglGetWindowSurface(SDL_Window* window);

alias SDL_EGL_GetWindowSurface = sdlEglGetWindowSurface;

pragma(mangle, "SDL_EGL_SetAttributeCallbacks")
void sdlEglSetAttributeCallbacks(
    SDL_EGLAttribArrayCallback platformAttribCallback,
    SDL_EGLIntArrayCallback surfaceAttribCallback,
    SDL_EGLIntArrayCallback contextAttribCallback,
    void* userdata);

alias SDL_EGL_SetAttributeCallbacks = sdlEglSetAttributeCallbacks;

pragma(mangle, "SDL_GL_SetSwapInterval")
bool sdlGlSetSwapInterval(int interval);

alias SDL_GL_SetSwapInterval = sdlGlSetSwapInterval;

pragma(mangle, "SDL_GL_GetSwapInterval")
bool sdlGlGetSwapInterval(int* interval);

alias SDL_GL_GetSwapInterval = sdlGlGetSwapInterval;

pragma(mangle, "SDL_GL_SwapWindow")
bool sdlGlSwapWindow(SDL_Window* window);

alias SDL_GL_SwapWindow = sdlGlSwapWindow;

pragma(mangle, "SDL_GL_DestroyContext")
bool sdlGlDestroyContext(SDL_GLContext context);

alias SDL_GL_DestroyContext = sdlGlDestroyContext;
