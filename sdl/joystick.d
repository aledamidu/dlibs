module libs.sdl.joystick;

import libs.sdl.guid;
import libs.sdl.power;
import libs.sdl.properties;
import libs.sdl.sensor;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_Joystick;

alias SDL_JoystickID = uint;

enum SDL_JoystickType {
    SDL_JOYSTICK_TYPE_UNKNOWN = 0,
    SDL_JOYSTICK_TYPE_GAMEPAD = 1,
    SDL_JOYSTICK_TYPE_WHEEL = 2,
    SDL_JOYSTICK_TYPE_ARCADE_STICK = 3,
    SDL_JOYSTICK_TYPE_FLIGHT_STICK = 4,
    SDL_JOYSTICK_TYPE_DANCE_PAD = 5,
    SDL_JOYSTICK_TYPE_GUITAR = 6,
    SDL_JOYSTICK_TYPE_DRUM_KIT = 7,
    SDL_JOYSTICK_TYPE_ARCADE_PAD = 8,
    SDL_JOYSTICK_TYPE_THROTTLE = 9,
    SDL_JOYSTICK_TYPE_COUNT = 10
}

alias SDL_JOYSTICK_TYPE_UNKNOWN = SDL_JoystickType.SDL_JOYSTICK_TYPE_UNKNOWN;
alias SDL_JOYSTICK_TYPE_GAMEPAD = SDL_JoystickType.SDL_JOYSTICK_TYPE_GAMEPAD;
alias SDL_JOYSTICK_TYPE_WHEEL = SDL_JoystickType.SDL_JOYSTICK_TYPE_WHEEL;
alias SDL_JOYSTICK_TYPE_ARCADE_STICK = SDL_JoystickType.SDL_JOYSTICK_TYPE_ARCADE_STICK;
alias SDL_JOYSTICK_TYPE_FLIGHT_STICK = SDL_JoystickType.SDL_JOYSTICK_TYPE_FLIGHT_STICK;
alias SDL_JOYSTICK_TYPE_DANCE_PAD = SDL_JoystickType.SDL_JOYSTICK_TYPE_DANCE_PAD;
alias SDL_JOYSTICK_TYPE_GUITAR = SDL_JoystickType.SDL_JOYSTICK_TYPE_GUITAR;
alias SDL_JOYSTICK_TYPE_DRUM_KIT = SDL_JoystickType.SDL_JOYSTICK_TYPE_DRUM_KIT;
alias SDL_JOYSTICK_TYPE_ARCADE_PAD = SDL_JoystickType.SDL_JOYSTICK_TYPE_ARCADE_PAD;
alias SDL_JOYSTICK_TYPE_THROTTLE = SDL_JoystickType.SDL_JOYSTICK_TYPE_THROTTLE;
alias SDL_JOYSTICK_TYPE_COUNT = SDL_JoystickType.SDL_JOYSTICK_TYPE_COUNT;

enum SDL_JoystickConnectionState {
    SDL_JOYSTICK_CONNECTION_INVALID = -1,
    SDL_JOYSTICK_CONNECTION_UNKNOWN = 0,
    SDL_JOYSTICK_CONNECTION_WIRED = 1,
    SDL_JOYSTICK_CONNECTION_WIRELESS = 2
}

alias SDL_JOYSTICK_CONNECTION_INVALID = SDL_JoystickConnectionState.SDL_JOYSTICK_CONNECTION_INVALID;
alias SDL_JOYSTICK_CONNECTION_UNKNOWN = SDL_JoystickConnectionState.SDL_JOYSTICK_CONNECTION_UNKNOWN;
alias SDL_JOYSTICK_CONNECTION_WIRED = SDL_JoystickConnectionState.SDL_JOYSTICK_CONNECTION_WIRED;
alias SDL_JOYSTICK_CONNECTION_WIRELESS = SDL_JoystickConnectionState
    .SDL_JOYSTICK_CONNECTION_WIRELESS;

enum SDL_JOYSTICK_AXIS_MAX = 32_767;

enum SDL_JOYSTICK_AXIS_MIN = -32_768;

pragma(mangle, "SDL_LockJoysticks")
void sdlLockJoysticks();

alias SDL_LockJoysticks = sdlLockJoysticks;

pragma(mangle, "SDL_TryLockJoysticks")
bool sdlTryLockJoysticks();

alias SDL_TryLockJoysticks = sdlTryLockJoysticks;

pragma(mangle, "SDL_UnlockJoysticks")
void sdlUnlockJoysticks();

alias SDL_UnlockJoysticks = sdlUnlockJoysticks;

pragma(mangle, "SDL_HasJoystick")
bool sdlHasJoystick();

alias SDL_HasJoystick = sdlHasJoystick;

pragma(mangle, "SDL_GetJoysticks")
SDL_JoystickID* sdlGetJoysticks(int* count);

alias SDL_GetJoysticks = sdlGetJoysticks;

pragma(mangle, "SDL_GetJoystickNameForID")
const(char)* sdlGetJoystickNameForID(SDL_JoystickID instance_id);

alias SDL_GetJoystickNameForID = sdlGetJoystickNameForID;

pragma(mangle, "SDL_GetJoystickPathForID")
const(char)* sdlGetJoystickPathForID(SDL_JoystickID instance_id);

alias SDL_GetJoystickPathForID = sdlGetJoystickPathForID;

pragma(mangle, "SDL_GetJoystickPlayerIndexForID")
int sdlGetJoystickPlayerIndexForID(SDL_JoystickID instance_id);

alias SDL_GetJoystickPlayerIndexForID = sdlGetJoystickPlayerIndexForID;

pragma(mangle, "SDL_GetJoystickGUIDForID")
SDL_GUID sdlGetJoystickGUIDForID(SDL_JoystickID instance_id);

alias SDL_GetJoystickGUIDForID = sdlGetJoystickGUIDForID;

pragma(mangle, "SDL_GetJoystickVendorForID")
Uint16 sdlGetJoystickVendorForID(SDL_JoystickID instance_id);

alias SDL_GetJoystickVendorForID = sdlGetJoystickVendorForID;

pragma(mangle, "SDL_GetJoystickProductForID")
Uint16 sdlGetJoystickProductForID(SDL_JoystickID instance_id);

alias SDL_GetJoystickProductForID = sdlGetJoystickProductForID;

pragma(mangle, "SDL_GetJoystickProductVersionForID")
Uint16 sdlGetJoystickProductVersionForID(SDL_JoystickID instance_id);

alias SDL_GetJoystickProductVersionForID = sdlGetJoystickProductVersionForID;

pragma(mangle, "SDL_GetJoystickTypeForID")
SDL_JoystickType sdlGetJoystickTypeForID(SDL_JoystickID instance_id);

alias SDL_GetJoystickTypeForID = sdlGetJoystickTypeForID;

pragma(mangle, "SDL_OpenJoystick")
SDL_Joystick* sdlOpenJoystick(SDL_JoystickID instance_id);

alias SDL_OpenJoystick = sdlOpenJoystick;

pragma(mangle, "SDL_GetJoystickFromID")
SDL_Joystick* sdlGetJoystickFromID(SDL_JoystickID instance_id);

alias SDL_GetJoystickFromID = sdlGetJoystickFromID;

pragma(mangle, "SDL_GetJoystickFromPlayerIndex")
SDL_Joystick* sdlGetJoystickFromPlayerIndex(int player_index);

alias SDL_GetJoystickFromPlayerIndex = sdlGetJoystickFromPlayerIndex;

struct SDL_VirtualJoystickTouchpadDesc {
    alias Uint16 = ushort;
    Uint16 nfingers;
    Uint16[3] padding;
}

struct SDL_VirtualJoystickSensorDesc {
    SDL_SensorType type;
    float rate;
}

struct SDL_VirtualJoystickDesc {
    alias Uint32 = uint;
    Uint32 version_;
    Uint16 type;
    Uint16 padding;
    Uint16 vendor_id;
    Uint16 product_id;
    Uint16 naxes;
    Uint16 nbuttons;
    Uint16 nballs;
    Uint16 nhats;
    Uint16 ntouchpads;
    Uint16 nsensors;
    Uint16[2] padding2;
    Uint32 button_mask;
    Uint32 axis_mask;

    const(char)* name;
    const(SDL_VirtualJoystickTouchpadDesc)* touchpads;
    const(SDL_VirtualJoystickSensorDesc)* sensors;

    void* userdata;
    void function(void* userdata) update;
    void function(void* userdata, int player_index) setPlayerIndex;
    bool function(void* userdata, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble) rumble;
    bool function(void* userdata, Uint16 left_rumble, Uint16 right_rumble) rumbleTriggers;
    bool function(void* userdata, Uint8 red, Uint8 green, Uint8 blue) setLED;
    bool function(void* userdata, const(void)* data, int size) sendEffect;
    bool function(void* userdata, bool enabled) setSensorsEnabled;
    void function(void* userdata) cleanup;
}

pragma(mangle, "SDL_AttachVirtualJoystick")
SDL_JoystickID sdlAttachVirtualJoystick(const(SDL_VirtualJoystickDesc)* desc);

alias SDL_AttachVirtualJoystick = sdlAttachVirtualJoystick;

pragma(mangle, "SDL_DetachVirtualJoystick")
bool sdlDetachVirtualJoystick(SDL_JoystickID instance_id);

alias SDL_DetachVirtualJoystick = sdlDetachVirtualJoystick;

pragma(mangle, "SDL_IsJoystickVirtual")
bool sdlIsJoystickVirtual(SDL_JoystickID instance_id);

alias SDL_IsJoystickVirtual = sdlIsJoystickVirtual;

pragma(mangle, "SDL_SetJoystickVirtualAxis")
bool sdlSetJoystickVirtualAxis(SDL_Joystick* joystick, int axis, Sint16 value);

alias SDL_SetJoystickVirtualAxis = sdlSetJoystickVirtualAxis;

pragma(mangle, "SDL_SetJoystickVirtualBall")
bool sdlSetJoystickVirtualBall(SDL_Joystick* joystick, int ball, Sint16 xrel, Sint16 yrel);

alias SDL_SetJoystickVirtualBall = sdlSetJoystickVirtualBall;

pragma(mangle, "SDL_SetJoystickVirtualButton")
bool sdlSetJoystickVirtualButton(SDL_Joystick* joystick, int button, bool down);

alias SDL_SetJoystickVirtualButton = sdlSetJoystickVirtualButton;

pragma(mangle, "SDL_SetJoystickVirtualHat")
bool sdlSetJoystickVirtualHat(SDL_Joystick* joystick, int hat, Uint8 value);

alias SDL_SetJoystickVirtualHat = sdlSetJoystickVirtualHat;

pragma(mangle, "SDL_SetJoystickVirtualTouchpad")
bool sdlSetJoystickVirtualTouchpad(SDL_Joystick* joystick, int touchpad, int finger, bool down, float x, float y, float pressure);

alias SDL_SetJoystickVirtualTouchpad = sdlSetJoystickVirtualTouchpad;

pragma(mangle, "SDL_SendJoystickVirtualSensorData")
bool sdlSendJoystickVirtualSensorData(SDL_Joystick* joystick, SDL_SensorType type, Uint64 sensor_timestamp, const(
        float)* data, int num_values);

alias SDL_SendJoystickVirtualSensorData = sdlSendJoystickVirtualSensorData;

pragma(mangle, "SDL_GetJoystickProperties")
SDL_PropertiesID sdlGetJoystickProperties(SDL_Joystick* joystick);

alias SDL_GetJoystickProperties = sdlGetJoystickProperties;

enum SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN = "SDL.joystick.cap.mono_led";
enum SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN = "SDL.joystick.cap.rgb_led";
enum SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN = "SDL.joystick.cap.player_led";
enum SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN = "SDL.joystick.cap.rumble";
enum SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN = "SDL.joystick.cap.trigger_rumble";

pragma(mangle, "SDL_GetJoystickName")
const(char)* sdlGetJoystickName(SDL_Joystick* joystick);

alias SDL_GetJoystickName = sdlGetJoystickName;

pragma(mangle, "SDL_GetJoystickPath")
const(char)* sdlGetJoystickPath(SDL_Joystick* joystick);

alias SDL_GetJoystickPath = sdlGetJoystickPath;

pragma(mangle, "SDL_GetJoystickPlayerIndex")
int sdlGetJoystickPlayerIndex(SDL_Joystick* joystick);

alias SDL_GetJoystickPlayerIndex = sdlGetJoystickPlayerIndex;

pragma(mangle, "SDL_SetJoystickPlayerIndex")
bool sdlSetJoystickPlayerIndex(SDL_Joystick* joystick, int player_index);

alias SDL_SetJoystickPlayerIndex = sdlSetJoystickPlayerIndex;

pragma(mangle, "SDL_GetJoystickGUID")
SDL_GUID sdlGetJoystickGUID(SDL_Joystick* joystick);

alias SDL_GetJoystickGUID = sdlGetJoystickGUID;

pragma(mangle, "SDL_GetJoystickVendor")
Uint16 sdlGetJoystickVendor(SDL_Joystick* joystick);

alias SDL_GetJoystickVendor = sdlGetJoystickVendor;

pragma(mangle, "SDL_GetJoystickProduct")
Uint16 sdlGetJoystickProduct(SDL_Joystick* joystick);

alias SDL_GetJoystickProduct = sdlGetJoystickProduct;

pragma(mangle, "SDL_GetJoystickProductVersion")
Uint16 sdlGetJoystickProductVersion(SDL_Joystick* joystick);

alias SDL_GetJoystickProductVersion = sdlGetJoystickProductVersion;

pragma(mangle, "SDL_GetJoystickFirmwareVersion")
Uint16 sdlGetJoystickFirmwareVersion(SDL_Joystick* joystick);

alias SDL_GetJoystickFirmwareVersion = sdlGetJoystickFirmwareVersion;

pragma(mangle, "SDL_GetJoystickSerial")
const(char)* sdlGetJoystickSerial(SDL_Joystick* joystick);

alias SDL_GetJoystickSerial = sdlGetJoystickSerial;

pragma(mangle, "SDL_GetJoystickType")
SDL_JoystickType sdlGetJoystickType(SDL_Joystick* joystick);

alias SDL_GetJoystickType = sdlGetJoystickType;

pragma(mangle, "SDL_GetJoystickGUIDInfo")
void sdlGetJoystickGUIDInfo(SDL_GUID guid, Uint16* vendor, Uint16* product, Uint16* version_, Uint16* crc16);

alias SDL_GetJoystickGUIDInfo = sdlGetJoystickGUIDInfo;

pragma(mangle, "SDL_JoystickConnected")
bool sdlJoystickConnected(SDL_Joystick* joystick);

alias SDL_JoystickConnected = sdlJoystickConnected;

pragma(mangle, "SDL_GetJoystickID")
SDL_JoystickID sdlGetJoystickID(SDL_Joystick* joystick);

alias SDL_GetJoystickID = sdlGetJoystickID;

pragma(mangle, "SDL_GetNumJoystickAxes")
int sdlGetNumJoystickAxes(SDL_Joystick* joystick);

alias SDL_GetNumJoystickAxes = sdlGetNumJoystickAxes;

pragma(mangle, "SDL_GetNumJoystickBalls")
int sdlGetNumJoystickBalls(SDL_Joystick* joystick);

alias SDL_GetNumJoystickBalls = sdlGetNumJoystickBalls;

pragma(mangle, "SDL_GetNumJoystickHats")
int sdlGetNumJoystickHats(SDL_Joystick* joystick);

alias SDL_GetNumJoystickHats = sdlGetNumJoystickHats;

pragma(mangle, "SDL_GetNumJoystickButtons")
int sdlGetNumJoystickButtons(SDL_Joystick* joystick);

alias SDL_GetNumJoystickButtons = sdlGetNumJoystickButtons;

pragma(mangle, "SDL_SetJoystickEventsEnabled")
void sdlSetJoystickEventsEnabled(bool enabled);

alias SDL_SetJoystickEventsEnabled = sdlSetJoystickEventsEnabled;

pragma(mangle, "SDL_JoystickEventsEnabled")
bool sdlJoystickEventsEnabled();

alias SDL_JoystickEventsEnabled = sdlJoystickEventsEnabled;

pragma(mangle, "SDL_UpdateJoysticks")
void sdlUpdateJoysticks();

alias SDL_UpdateJoysticks = sdlUpdateJoysticks;

pragma(mangle, "SDL_GetJoystickAxis")
Sint16 sdlGetJoystickAxis(SDL_Joystick* joystick, int axis);

alias SDL_GetJoystickAxis = sdlGetJoystickAxis;

pragma(mangle, "SDL_GetJoystickAxisInitialState")
bool sdlGetJoystickAxisInitialState(SDL_Joystick* joystick, int axis, Sint16* state);

alias SDL_GetJoystickAxisInitialState = sdlGetJoystickAxisInitialState;

pragma(mangle, "SDL_GetJoystickBall")
bool sdlGetJoystickBall(SDL_Joystick* joystick, int ball, int* dx, int* dy);

alias SDL_GetJoystickBall = sdlGetJoystickBall;

pragma(mangle, "SDL_GetJoystickHat")
Uint8 sdlGetJoystickHat(SDL_Joystick* joystick, int hat);

alias SDL_GetJoystickHat = sdlGetJoystickHat;

enum SDL_HAT_CENTERED = 0x00u;
enum SDL_HAT_UP = 0x01u;
enum SDL_HAT_RIGHT = 0x02u;
enum SDL_HAT_DOWN = 0x04u;
enum SDL_HAT_LEFT = 0x08u;
enum SDL_HAT_RIGHTUP = SDL_HAT_RIGHT | SDL_HAT_UP;
enum SDL_HAT_RIGHTDOWN = SDL_HAT_RIGHT | SDL_HAT_DOWN;
enum SDL_HAT_LEFTUP = SDL_HAT_LEFT | SDL_HAT_UP;
enum SDL_HAT_LEFTDOWN = SDL_HAT_LEFT | SDL_HAT_DOWN;

pragma(mangle, "SDL_GetJoystickButton")
bool sdlGetJoystickButton(SDL_Joystick* joystick, int button);

alias SDL_GetJoystickButton = sdlGetJoystickButton;

pragma(mangle, "SDL_JoystickHasSensor")
bool sdlJoystickHasSensor(SDL_Joystick* joystick, SDL_SensorType type);

alias SDL_JoystickHasSensor = sdlJoystickHasSensor;

pragma(mangle, "SDL_SetJoystickSensorEnabled")
bool sdlSetJoystickSensorEnabled(SDL_Joystick* joystick, SDL_SensorType type, bool enabled);

alias SDL_SetJoystickSensorEnabled = sdlSetJoystickSensorEnabled;

pragma(mangle, "SDL_JoystickSensorEnabled")
bool sdlJoystickSensorEnabled(SDL_Joystick* joystick, SDL_SensorType type);

alias SDL_JoystickSensorEnabled = sdlJoystickSensorEnabled;

pragma(mangle, "SDL_GetJoystickSensorDataRate")
float sdlGetJoystickSensorDataRate(SDL_Joystick* joystick, SDL_SensorType type);

alias SDL_GetJoystickSensorDataRate = sdlGetJoystickSensorDataRate;

pragma(mangle, "SDL_GetJoystickSensorData")
bool sdlGetJoystickSensorData(SDL_Joystick* joystick, SDL_SensorType type, float* data, int num_values);

alias SDL_GetJoystickSensorData = sdlGetJoystickSensorData;

pragma(mangle, "SDL_RumbleJoystick")
bool sdlRumbleJoystick(SDL_Joystick* joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);

alias SDL_RumbleJoystick = sdlRumbleJoystick;

pragma(mangle, "SDL_RumbleJoystickTriggers")
bool sdlRumbleJoystickTriggers(SDL_Joystick* joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);

alias SDL_RumbleJoystickTriggers = sdlRumbleJoystickTriggers;

pragma(mangle, "SDL_SetJoystickLED")
bool sdlSetJoystickLED(SDL_Joystick* joystick, Uint8 red, Uint8 green, Uint8 blue);

alias SDL_SetJoystickLED = sdlSetJoystickLED;

pragma(mangle, "SDL_SendJoystickEffect")
bool sdlSendJoystickEffect(SDL_Joystick* joystick, const(void)* data, int size);

alias SDL_SendJoystickEffect = sdlSendJoystickEffect;

pragma(mangle, "SDL_CloseJoystick")
void sdlCloseJoystick(SDL_Joystick* joystick);

alias SDL_CloseJoystick = sdlCloseJoystick;

pragma(mangle, "SDL_GetJoystickConnectionState")
SDL_JoystickConnectionState sdlGetJoystickConnectionState(SDL_Joystick* joystick);

alias SDL_GetJoystickConnectionState = sdlGetJoystickConnectionState;

pragma(mangle, "SDL_GetJoystickPowerInfo")
SDL_PowerState sdlGetJoystickPowerInfo(SDL_Joystick* joystick, int* percent);

alias SDL_GetJoystickPowerInfo = sdlGetJoystickPowerInfo;
