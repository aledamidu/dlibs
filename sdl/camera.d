module libs.sdl.camera;

import libs.sdl.pixels;
import libs.sdl.properties;
import libs.sdl.stdinc;
import libs.sdl.surface;

extern (C):
@nogc nothrow:

alias SDL_CameraID = uint;

struct SDL_Camera;

struct SDL_CameraSpec
{
    SDL_PixelFormat format;

    SDL_Colorspace colorspace;
    int width;
    int height;
    int framerate_numerator;
    int framerate_denominator;
}

enum SDL_CameraPosition
{
    SDL_CAMERA_POSITION_UNKNOWN = 0,
    SDL_CAMERA_POSITION_FRONT_FACING = 1,
    SDL_CAMERA_POSITION_BACK_FACING = 2
}

alias SDL_CAMERA_POSITION_UNKNOWN = SDL_CameraPosition.SDL_CAMERA_POSITION_UNKNOWN;
alias SDL_CAMERA_POSITION_FRONT_FACING = SDL_CameraPosition.SDL_CAMERA_POSITION_FRONT_FACING;
alias SDL_CAMERA_POSITION_BACK_FACING = SDL_CameraPosition.SDL_CAMERA_POSITION_BACK_FACING;

enum SDL_CameraPermissionState
{
    SDL_CAMERA_PERMISSION_STATE_DENIED = -1,
    SDL_CAMERA_PERMISSION_STATE_PENDING = 0,
    SDL_CAMERA_PERMISSION_STATE_APPROVED = 1
}

alias SDL_CAMERA_PERMISSION_STATE_DENIED = SDL_CameraPermissionState
    .SDL_CAMERA_PERMISSION_STATE_DENIED;
alias SDL_CAMERA_PERMISSION_STATE_PENDING = SDL_CameraPermissionState
    .SDL_CAMERA_PERMISSION_STATE_PENDING;
alias SDL_CAMERA_PERMISSION_STATE_APPROVED = SDL_CameraPermissionState
    .SDL_CAMERA_PERMISSION_STATE_APPROVED;

pragma(mangle, "SDL_GetNumCameraDrivers")
int sdlGetNumCameraDrivers();

alias SDL_GetNumCameraDrivers = sdlGetNumCameraDrivers;
pragma(mangle, "SDL_GetCameraDriver")
const(char)* sdlGetCameraDriver(int index);

alias SDL_GetCameraDriver = sdlGetCameraDriver;
pragma(mangle, "SDL_GetCurrentCameraDriver")
const(char)* sdlGetCurrentCameraDriver();

alias SDL_GetCurrentCameraDriver = sdlGetCurrentCameraDriver;
pragma(mangle, "SDL_GetCameras")
SDL_CameraID* sdlGetCameras(int* count);

alias SDL_GetCameras = sdlGetCameras;
pragma(mangle, "SDL_GetCameraSupportedFormats")
SDL_CameraSpec** sdlGetCameraSupportedFormats(SDL_CameraID instance_id, int* count);

alias SDL_GetCameraSupportedFormats = sdlGetCameraSupportedFormats;
pragma(mangle, "SDL_GetCameraName")
const(char)* sdlGetCameraName(SDL_CameraID instance_id);

alias SDL_GetCameraName = sdlGetCameraName;
pragma(mangle, "SDL_GetCameraPosition")
SDL_CameraPosition sdlGetCameraPosition(SDL_CameraID instance_id);

alias SDL_GetCameraPosition = sdlGetCameraPosition;
pragma(mangle, "SDL_OpenCamera")
SDL_Camera* sdlOpenCamera(SDL_CameraID instance_id, const(SDL_CameraSpec)* spec);

alias SDL_OpenCamera = sdlOpenCamera;
pragma(mangle, "SDL_GetCameraPermissionState")
SDL_CameraPermissionState sdlGetCameraPermissionState(SDL_Camera* camera);

alias SDL_GetCameraPermissionState = sdlGetCameraPermissionState;
pragma(mangle, "SDL_GetCameraID")
SDL_CameraID sdlGetCameraID(SDL_Camera* camera);

alias SDL_GetCameraID = sdlGetCameraID;
pragma(mangle, "SDL_GetCameraProperties")
SDL_PropertiesID sdlGetCameraProperties(SDL_Camera* camera);

alias SDL_GetCameraProperties = sdlGetCameraProperties;
pragma(mangle, "SDL_GetCameraFormat")
bool sdlGetCameraFormat(SDL_Camera* camera, SDL_CameraSpec* spec);

alias SDL_GetCameraFormat = sdlGetCameraFormat;
pragma(mangle, "SDL_AcquireCameraFrame")
SDL_Surface* sdlAcquireCameraFrame(SDL_Camera* camera, Uint64* timestampNS);

alias SDL_AcquireCameraFrame = sdlAcquireCameraFrame;
pragma(mangle, "SDL_ReleaseCameraFrame")
void sdlReleaseCameraFrame(SDL_Camera* camera, SDL_Surface* frame);

alias SDL_ReleaseCameraFrame = sdlReleaseCameraFrame;
pragma(mangle, "SDL_CloseCamera")
void sdlCloseCamera(SDL_Camera* camera);

alias SDL_CloseCamera = sdlCloseCamera;
