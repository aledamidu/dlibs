module libs.sdl.gamepad;

import libs.sdl.guid;
import libs.sdl.iostream;
import libs.sdl.joystick;
import libs.sdl.power;
import libs.sdl.properties;
import libs.sdl.sensor;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_Gamepad;

enum SDL_GamepadType
{
    SDL_GAMEPAD_TYPE_UNKNOWN = 0,
    SDL_GAMEPAD_TYPE_STANDARD = 1,
    SDL_GAMEPAD_TYPE_XBOX360 = 2,
    SDL_GAMEPAD_TYPE_XBOXONE = 3,
    SDL_GAMEPAD_TYPE_PS3 = 4,
    SDL_GAMEPAD_TYPE_PS4 = 5,
    SDL_GAMEPAD_TYPE_PS5 = 6,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO = 7,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT = 8,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT = 9,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR = 10,
    SDL_GAMEPAD_TYPE_GAMECUBE = 11,
    SDL_GAMEPAD_TYPE_STEAM = 12,
    SDL_GAMEPAD_TYPE_COUNT = 13
}

alias SDL_GAMEPAD_TYPE_UNKNOWN = SDL_GamepadType.SDL_GAMEPAD_TYPE_UNKNOWN;
alias SDL_GAMEPAD_TYPE_STANDARD = SDL_GamepadType.SDL_GAMEPAD_TYPE_STANDARD;
alias SDL_GAMEPAD_TYPE_XBOX360 = SDL_GamepadType.SDL_GAMEPAD_TYPE_XBOX360;
alias SDL_GAMEPAD_TYPE_XBOXONE = SDL_GamepadType.SDL_GAMEPAD_TYPE_XBOXONE;
alias SDL_GAMEPAD_TYPE_PS3 = SDL_GamepadType.SDL_GAMEPAD_TYPE_PS3;
alias SDL_GAMEPAD_TYPE_PS4 = SDL_GamepadType.SDL_GAMEPAD_TYPE_PS4;
alias SDL_GAMEPAD_TYPE_PS5 = SDL_GamepadType.SDL_GAMEPAD_TYPE_PS5;
alias SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO = SDL_GamepadType.SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO;
alias SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT = SDL_GamepadType
    .SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT;
alias SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT = SDL_GamepadType
    .SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT;
alias SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR = SDL_GamepadType
    .SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR;
alias SDL_GAMEPAD_TYPE_GAMECUBE = SDL_GamepadType.SDL_GAMEPAD_TYPE_GAMECUBE;
alias SDL_GAMEPAD_TYPE_STEAM = SDL_GamepadType.SDL_GAMEPAD_TYPE_STEAM;
alias SDL_GAMEPAD_TYPE_COUNT = SDL_GamepadType.SDL_GAMEPAD_TYPE_COUNT;

enum SDL_GamepadButton
{
    SDL_GAMEPAD_BUTTON_INVALID = -1,
    SDL_GAMEPAD_BUTTON_SOUTH = 0,
    SDL_GAMEPAD_BUTTON_EAST = 1,
    SDL_GAMEPAD_BUTTON_WEST = 2,
    SDL_GAMEPAD_BUTTON_NORTH = 3,
    SDL_GAMEPAD_BUTTON_BACK = 4,
    SDL_GAMEPAD_BUTTON_GUIDE = 5,
    SDL_GAMEPAD_BUTTON_START = 6,
    SDL_GAMEPAD_BUTTON_LEFT_STICK = 7,
    SDL_GAMEPAD_BUTTON_RIGHT_STICK = 8,
    SDL_GAMEPAD_BUTTON_LEFT_SHOULDER = 9,
    SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER = 10,
    SDL_GAMEPAD_BUTTON_DPAD_UP = 11,
    SDL_GAMEPAD_BUTTON_DPAD_DOWN = 12,
    SDL_GAMEPAD_BUTTON_DPAD_LEFT = 13,
    SDL_GAMEPAD_BUTTON_DPAD_RIGHT = 14,
    SDL_GAMEPAD_BUTTON_MISC1 = 15,
    SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1 = 16,
    SDL_GAMEPAD_BUTTON_LEFT_PADDLE1 = 17,
    SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2 = 18,
    SDL_GAMEPAD_BUTTON_LEFT_PADDLE2 = 19,
    SDL_GAMEPAD_BUTTON_TOUCHPAD = 20,
    SDL_GAMEPAD_BUTTON_MISC2 = 21,
    SDL_GAMEPAD_BUTTON_MISC3 = 22,
    SDL_GAMEPAD_BUTTON_MISC4 = 23,
    SDL_GAMEPAD_BUTTON_MISC5 = 24,
    SDL_GAMEPAD_BUTTON_MISC6 = 25,
    SDL_GAMEPAD_BUTTON_COUNT = 26
}

alias SDL_GAMEPAD_BUTTON_INVALID = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_INVALID;
alias SDL_GAMEPAD_BUTTON_SOUTH = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_SOUTH;
alias SDL_GAMEPAD_BUTTON_EAST = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_EAST;
alias SDL_GAMEPAD_BUTTON_WEST = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_WEST;
alias SDL_GAMEPAD_BUTTON_NORTH = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_NORTH;
alias SDL_GAMEPAD_BUTTON_BACK = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_BACK;
alias SDL_GAMEPAD_BUTTON_GUIDE = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_GUIDE;
alias SDL_GAMEPAD_BUTTON_START = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_START;
alias SDL_GAMEPAD_BUTTON_LEFT_STICK = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_LEFT_STICK;
alias SDL_GAMEPAD_BUTTON_RIGHT_STICK = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_RIGHT_STICK;
alias SDL_GAMEPAD_BUTTON_LEFT_SHOULDER = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_LEFT_SHOULDER;
alias SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER;
alias SDL_GAMEPAD_BUTTON_DPAD_UP = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_DPAD_UP;
alias SDL_GAMEPAD_BUTTON_DPAD_DOWN = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_DPAD_DOWN;
alias SDL_GAMEPAD_BUTTON_DPAD_LEFT = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_DPAD_LEFT;
alias SDL_GAMEPAD_BUTTON_DPAD_RIGHT = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_DPAD_RIGHT;
alias SDL_GAMEPAD_BUTTON_MISC1 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_MISC1;
alias SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1;
alias SDL_GAMEPAD_BUTTON_LEFT_PADDLE1 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_LEFT_PADDLE1;
alias SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2;
alias SDL_GAMEPAD_BUTTON_LEFT_PADDLE2 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_LEFT_PADDLE2;
alias SDL_GAMEPAD_BUTTON_TOUCHPAD = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_TOUCHPAD;
alias SDL_GAMEPAD_BUTTON_MISC2 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_MISC2;
alias SDL_GAMEPAD_BUTTON_MISC3 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_MISC3;
alias SDL_GAMEPAD_BUTTON_MISC4 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_MISC4;
alias SDL_GAMEPAD_BUTTON_MISC5 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_MISC5;
alias SDL_GAMEPAD_BUTTON_MISC6 = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_MISC6;
alias SDL_GAMEPAD_BUTTON_COUNT = SDL_GamepadButton.SDL_GAMEPAD_BUTTON_COUNT;

enum SDL_GamepadButtonLabel
{
    SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN = 0,
    SDL_GAMEPAD_BUTTON_LABEL_A = 1,
    SDL_GAMEPAD_BUTTON_LABEL_B = 2,
    SDL_GAMEPAD_BUTTON_LABEL_X = 3,
    SDL_GAMEPAD_BUTTON_LABEL_Y = 4,
    SDL_GAMEPAD_BUTTON_LABEL_CROSS = 5,
    SDL_GAMEPAD_BUTTON_LABEL_CIRCLE = 6,
    SDL_GAMEPAD_BUTTON_LABEL_SQUARE = 7,
    SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE = 8
}

alias SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN;
alias SDL_GAMEPAD_BUTTON_LABEL_A = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_A;
alias SDL_GAMEPAD_BUTTON_LABEL_B = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_B;
alias SDL_GAMEPAD_BUTTON_LABEL_X = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_X;
alias SDL_GAMEPAD_BUTTON_LABEL_Y = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_Y;
alias SDL_GAMEPAD_BUTTON_LABEL_CROSS = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_CROSS;
alias SDL_GAMEPAD_BUTTON_LABEL_CIRCLE = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_CIRCLE;
alias SDL_GAMEPAD_BUTTON_LABEL_SQUARE = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_SQUARE;
alias SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE = SDL_GamepadButtonLabel.SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE;

enum SDL_GamepadAxis
{
    SDL_GAMEPAD_AXIS_INVALID = -1,
    SDL_GAMEPAD_AXIS_LEFTX = 0,
    SDL_GAMEPAD_AXIS_LEFTY = 1,
    SDL_GAMEPAD_AXIS_RIGHTX = 2,
    SDL_GAMEPAD_AXIS_RIGHTY = 3,
    SDL_GAMEPAD_AXIS_LEFT_TRIGGER = 4,
    SDL_GAMEPAD_AXIS_RIGHT_TRIGGER = 5,
    SDL_GAMEPAD_AXIS_COUNT = 6
}

alias SDL_GAMEPAD_AXIS_INVALID = SDL_GamepadAxis.SDL_GAMEPAD_AXIS_INVALID;
alias SDL_GAMEPAD_AXIS_LEFTX = SDL_GamepadAxis.SDL_GAMEPAD_AXIS_LEFTX;
alias SDL_GAMEPAD_AXIS_LEFTY = SDL_GamepadAxis.SDL_GAMEPAD_AXIS_LEFTY;
alias SDL_GAMEPAD_AXIS_RIGHTX = SDL_GamepadAxis.SDL_GAMEPAD_AXIS_RIGHTX;
alias SDL_GAMEPAD_AXIS_RIGHTY = SDL_GamepadAxis.SDL_GAMEPAD_AXIS_RIGHTY;
alias SDL_GAMEPAD_AXIS_LEFT_TRIGGER = SDL_GamepadAxis.SDL_GAMEPAD_AXIS_LEFT_TRIGGER;
alias SDL_GAMEPAD_AXIS_RIGHT_TRIGGER = SDL_GamepadAxis.SDL_GAMEPAD_AXIS_RIGHT_TRIGGER;
alias SDL_GAMEPAD_AXIS_COUNT = SDL_GamepadAxis.SDL_GAMEPAD_AXIS_COUNT;

enum SDL_GamepadCapSenseType
{
    SDL_GAMEPAD_CAPSENSE_INVALID = -1,
    SDL_GAMEPAD_CAPSENSE_LEFT_STICK = 0,
    SDL_GAMEPAD_CAPSENSE_RIGHT_STICK = 1,
    SDL_GAMEPAD_CAPSENSE_LEFT_GRIP = 2,
    SDL_GAMEPAD_CAPSENSE_RIGHT_GRIP = 3,
    SDL_GAMEPAD_CAPSENSE_COUNT = 4
}

alias SDL_GAMEPAD_CAPSENSE_INVALID = SDL_GamepadCapSenseType.SDL_GAMEPAD_CAPSENSE_INVALID;
alias SDL_GAMEPAD_CAPSENSE_LEFT_STICK = SDL_GamepadCapSenseType.SDL_GAMEPAD_CAPSENSE_LEFT_STICK;
alias SDL_GAMEPAD_CAPSENSE_RIGHT_STICK = SDL_GamepadCapSenseType.SDL_GAMEPAD_CAPSENSE_RIGHT_STICK;
alias SDL_GAMEPAD_CAPSENSE_LEFT_GRIP = SDL_GamepadCapSenseType.SDL_GAMEPAD_CAPSENSE_LEFT_GRIP;
alias SDL_GAMEPAD_CAPSENSE_RIGHT_GRIP = SDL_GamepadCapSenseType.SDL_GAMEPAD_CAPSENSE_RIGHT_GRIP;
alias SDL_GAMEPAD_CAPSENSE_COUNT = SDL_GamepadCapSenseType.SDL_GAMEPAD_CAPSENSE_COUNT;

enum SDL_GamepadBindingType
{
    SDL_GAMEPAD_BINDTYPE_NONE = 0,
    SDL_GAMEPAD_BINDTYPE_BUTTON = 1,
    SDL_GAMEPAD_BINDTYPE_AXIS = 2,
    SDL_GAMEPAD_BINDTYPE_HAT = 3
}

alias SDL_GAMEPAD_BINDTYPE_NONE = SDL_GamepadBindingType.SDL_GAMEPAD_BINDTYPE_NONE;
alias SDL_GAMEPAD_BINDTYPE_BUTTON = SDL_GamepadBindingType.SDL_GAMEPAD_BINDTYPE_BUTTON;
alias SDL_GAMEPAD_BINDTYPE_AXIS = SDL_GamepadBindingType.SDL_GAMEPAD_BINDTYPE_AXIS;
alias SDL_GAMEPAD_BINDTYPE_HAT = SDL_GamepadBindingType.SDL_GAMEPAD_BINDTYPE_HAT;

struct SDL_GamepadBinding_InputAxis
{
    int axis;
    int axis_min;
    int axis_max;
}

struct SDL_GamepadBinding_InputHat
{
    int hat;
    int hat_mask;
}

union SDL_GamepadBinding_Input
{
    int button;
    SDL_GamepadBinding_InputAxis axis;
    SDL_GamepadBinding_InputHat hat;
}

struct SDL_GamepadBinding_OutputAxis
{
    SDL_GamepadAxis axis;
    int axis_min;
    int axis_max;
}

union SDL_GamepadBinding_Output
{
    SDL_GamepadButton button;
    SDL_GamepadBinding_OutputAxis axis;
}

struct SDL_GamepadBinding
{
    SDL_GamepadBindingType input_type;
    SDL_GamepadBinding_Input input;
    SDL_GamepadBindingType output_type;
    SDL_GamepadBinding_Output output;
}

pragma(mangle, "SDL_AddGamepadMapping")
int sdlAddGamepadMapping(const(char)* mapping);

alias SDL_AddGamepadMapping = sdlAddGamepadMapping;

pragma(mangle, "SDL_AddGamepadMappingsFromIO")
int sdlAddGamepadMappingsFromIO(SDL_IOStream* src, bool closeio);

alias SDL_AddGamepadMappingsFromIO = sdlAddGamepadMappingsFromIO;

pragma(mangle, "SDL_AddGamepadMappingsFromFile")
int sdlAddGamepadMappingsFromFile(const(char)* file);

alias SDL_AddGamepadMappingsFromFile = sdlAddGamepadMappingsFromFile;

pragma(mangle, "SDL_ReloadGamepadMappings")
bool sdlReloadGamepadMappings();

alias SDL_ReloadGamepadMappings = sdlReloadGamepadMappings;

pragma(mangle, "SDL_GetGamepadMappings")
char** sdlGetGamepadMappings(int* count);

alias SDL_GetGamepadMappings = sdlGetGamepadMappings;

pragma(mangle, "SDL_GetGamepadMappingForGUID")
char* sdlGetGamepadMappingForGUID(SDL_GUID guid);

alias SDL_GetGamepadMappingForGUID = sdlGetGamepadMappingForGUID;

pragma(mangle, "SDL_GetGamepadMapping")
char* sdlGetGamepadMapping(SDL_Gamepad* gamepad);

alias SDL_GetGamepadMapping = sdlGetGamepadMapping;

pragma(mangle, "SDL_SetGamepadMapping")
bool sdlSetGamepadMapping(SDL_JoystickID instance_id, const(char)* mapping);

alias SDL_SetGamepadMapping = sdlSetGamepadMapping;

pragma(mangle, "SDL_HasGamepad")
bool sdlHasGamepad();

alias SDL_HasGamepad = sdlHasGamepad;

pragma(mangle, "SDL_GetGamepads")
SDL_JoystickID* sdlGetGamepads(int* count);

alias SDL_GetGamepads = sdlGetGamepads;

pragma(mangle, "SDL_IsGamepad")
bool sdlIsGamepad(SDL_JoystickID instance_id);

alias SDL_IsGamepad = sdlIsGamepad;

pragma(mangle, "SDL_GetGamepadNameForID")
const(char)* sdlGetGamepadNameForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadNameForID = sdlGetGamepadNameForID;

pragma(mangle, "SDL_GetGamepadPathForID")
const(char)* sdlGetGamepadPathForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadPathForID = sdlGetGamepadPathForID;

pragma(mangle, "SDL_GetGamepadPlayerIndexForID")
int sdlGetGamepadPlayerIndexForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadPlayerIndexForID = sdlGetGamepadPlayerIndexForID;

pragma(mangle, "SDL_GetGamepadGUIDForID")
SDL_GUID sdlGetGamepadGUIDForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadGUIDForID = sdlGetGamepadGUIDForID;

pragma(mangle, "SDL_GetGamepadVendorForID")
Uint16 sdlGetGamepadVendorForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadVendorForID = sdlGetGamepadVendorForID;

pragma(mangle, "SDL_GetGamepadProductForID")
Uint16 sdlGetGamepadProductForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadProductForID = sdlGetGamepadProductForID;

pragma(mangle, "SDL_GetGamepadProductVersionForID")
Uint16 sdlGetGamepadProductVersionForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadProductVersionForID = sdlGetGamepadProductVersionForID;

pragma(mangle, "SDL_GetGamepadTypeForID")
SDL_GamepadType sdlGetGamepadTypeForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadTypeForID = sdlGetGamepadTypeForID;

pragma(mangle, "SDL_GetRealGamepadTypeForID")
SDL_GamepadType sdlGetRealGamepadTypeForID(SDL_JoystickID instance_id);

alias SDL_GetRealGamepadTypeForID = sdlGetRealGamepadTypeForID;

pragma(mangle, "SDL_GetGamepadMappingForID")
char* sdlGetGamepadMappingForID(SDL_JoystickID instance_id);

alias SDL_GetGamepadMappingForID = sdlGetGamepadMappingForID;

pragma(mangle, "SDL_OpenGamepad")
SDL_Gamepad* sdlOpenGamepad(SDL_JoystickID instance_id);

alias SDL_OpenGamepad = sdlOpenGamepad;

pragma(mangle, "SDL_GetGamepadFromID")
SDL_Gamepad* sdlGetGamepadFromID(SDL_JoystickID instance_id);

alias SDL_GetGamepadFromID = sdlGetGamepadFromID;

pragma(mangle, "SDL_GetGamepadFromPlayerIndex")
SDL_Gamepad* sdlGetGamepadFromPlayerIndex(int player_index);

alias SDL_GetGamepadFromPlayerIndex = sdlGetGamepadFromPlayerIndex;

pragma(mangle, "SDL_GetGamepadProperties")
SDL_PropertiesID sdlGetGamepadProperties(SDL_Gamepad* gamepad);

alias SDL_GetGamepadProperties = sdlGetGamepadProperties;

enum SDL_PROP_GAMEPAD_CAP_MONO_LED_BOOLEAN = SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN;
enum SDL_PROP_GAMEPAD_CAP_RGB_LED_BOOLEAN = SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN;
enum SDL_PROP_GAMEPAD_CAP_PLAYER_LED_BOOLEAN = SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN;
enum SDL_PROP_GAMEPAD_CAP_RUMBLE_BOOLEAN = SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN;
enum SDL_PROP_GAMEPAD_CAP_TRIGGER_RUMBLE_BOOLEAN = SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN;

pragma(mangle, "SDL_GetGamepadID")
SDL_JoystickID sdlGetGamepadID(SDL_Gamepad* gamepad);

alias SDL_GetGamepadID = sdlGetGamepadID;

pragma(mangle, "SDL_GetGamepadName")
const(char)* sdlGetGamepadName(SDL_Gamepad* gamepad);

alias SDL_GetGamepadName = sdlGetGamepadName;

pragma(mangle, "SDL_GetGamepadPath")
const(char)* sdlGetGamepadPath(SDL_Gamepad* gamepad);

alias SDL_GetGamepadPath = sdlGetGamepadPath;

pragma(mangle, "SDL_GetGamepadType")
SDL_GamepadType sdlGetGamepadType(SDL_Gamepad* gamepad);

alias SDL_GetGamepadType = sdlGetGamepadType;

pragma(mangle, "SDL_GetRealGamepadType")
SDL_GamepadType sdlGetRealGamepadType(SDL_Gamepad* gamepad);

alias SDL_GetRealGamepadType = sdlGetRealGamepadType;

pragma(mangle, "SDL_GetGamepadPlayerIndex")
int sdlGetGamepadPlayerIndex(SDL_Gamepad* gamepad);

alias SDL_GetGamepadPlayerIndex = sdlGetGamepadPlayerIndex;

pragma(mangle, "SDL_SetGamepadPlayerIndex")
bool sdlSetGamepadPlayerIndex(SDL_Gamepad* gamepad, int player_index);

alias SDL_SetGamepadPlayerIndex = sdlSetGamepadPlayerIndex;

pragma(mangle, "SDL_GetGamepadVendor")
Uint16 sdlGetGamepadVendor(SDL_Gamepad* gamepad);

alias SDL_GetGamepadVendor = sdlGetGamepadVendor;

pragma(mangle, "SDL_GetGamepadProduct")
Uint16 sdlGetGamepadProduct(SDL_Gamepad* gamepad);

alias SDL_GetGamepadProduct = sdlGetGamepadProduct;

pragma(mangle, "SDL_GetGamepadProductVersion")
Uint16 sdlGetGamepadProductVersion(SDL_Gamepad* gamepad);

alias SDL_GetGamepadProductVersion = sdlGetGamepadProductVersion;

pragma(mangle, "SDL_GetGamepadFirmwareVersion")
Uint16 sdlGetGamepadFirmwareVersion(SDL_Gamepad* gamepad);

alias SDL_GetGamepadFirmwareVersion = sdlGetGamepadFirmwareVersion;

pragma(mangle, "SDL_GetGamepadSerial")
const(char)* sdlGetGamepadSerial(SDL_Gamepad* gamepad);

alias SDL_GetGamepadSerial = sdlGetGamepadSerial;

pragma(mangle, "SDL_GetGamepadSteamHandle")
Uint64 sdlGetGamepadSteamHandle(SDL_Gamepad* gamepad);

alias SDL_GetGamepadSteamHandle = sdlGetGamepadSteamHandle;

pragma(mangle, "SDL_GetGamepadConnectionState")
SDL_JoystickConnectionState sdlGetGamepadConnectionState(SDL_Gamepad* gamepad);

alias SDL_GetGamepadConnectionState = sdlGetGamepadConnectionState;

pragma(mangle, "SDL_GetGamepadPowerInfo")
SDL_PowerState sdlGetGamepadPowerInfo(SDL_Gamepad* gamepad, int* percent);

alias SDL_GetGamepadPowerInfo = sdlGetGamepadPowerInfo;

pragma(mangle, "SDL_GamepadConnected")
bool sdlGamepadConnected(SDL_Gamepad* gamepad);

alias SDL_GamepadConnected = sdlGamepadConnected;

pragma(mangle, "SDL_GetGamepadJoystick")
SDL_Joystick* sdlGetGamepadJoystick(SDL_Gamepad* gamepad);

alias SDL_GetGamepadJoystick = sdlGetGamepadJoystick;

pragma(mangle, "SDL_SetGamepadEventsEnabled")
void sdlSetGamepadEventsEnabled(bool enabled);

alias SDL_SetGamepadEventsEnabled = sdlSetGamepadEventsEnabled;

pragma(mangle, "SDL_GamepadEventsEnabled")
bool sdlGamepadEventsEnabled();

alias SDL_GamepadEventsEnabled = sdlGamepadEventsEnabled;

pragma(mangle, "SDL_GetGamepadBindings")
SDL_GamepadBinding** sdlGetGamepadBindings(SDL_Gamepad* gamepad, int* count);

alias SDL_GetGamepadBindings = sdlGetGamepadBindings;

pragma(mangle, "SDL_UpdateGamepads")
void sdlUpdateGamepads();

alias SDL_UpdateGamepads = sdlUpdateGamepads;

pragma(mangle, "SDL_GetGamepadTypeFromString")
SDL_GamepadType sdlGetGamepadTypeFromString(const(char)* str);

alias SDL_GetGamepadTypeFromString = sdlGetGamepadTypeFromString;

pragma(mangle, "SDL_GetGamepadStringForType")
const(char)* sdlGetGamepadStringForType(SDL_GamepadType type);

alias SDL_GetGamepadStringForType = sdlGetGamepadStringForType;

pragma(mangle, "SDL_GetGamepadAxisFromString")
SDL_GamepadAxis sdlGetGamepadAxisFromString(const(char)* str);

alias SDL_GetGamepadAxisFromString = sdlGetGamepadAxisFromString;

pragma(mangle, "SDL_GetGamepadStringForAxis")
const(char)* sdlGetGamepadStringForAxis(SDL_GamepadAxis axis);

alias SDL_GetGamepadStringForAxis = sdlGetGamepadStringForAxis;

pragma(mangle, "SDL_GamepadHasAxis")
bool sdlGamepadHasAxis(SDL_Gamepad* gamepad, SDL_GamepadAxis axis);

alias SDL_GamepadHasAxis = sdlGamepadHasAxis;

pragma(mangle, "SDL_GetGamepadAxis")
Sint16 sdlGetGamepadAxis(SDL_Gamepad* gamepad, SDL_GamepadAxis axis);

alias SDL_GetGamepadAxis = sdlGetGamepadAxis;

pragma(mangle, "SDL_GetGamepadButtonFromString")
SDL_GamepadButton sdlGetGamepadButtonFromString(const(char)* str);

alias SDL_GetGamepadButtonFromString = sdlGetGamepadButtonFromString;

pragma(mangle, "SDL_GetGamepadStringForButton")
const(char)* sdlGetGamepadStringForButton(SDL_GamepadButton button);

alias SDL_GetGamepadStringForButton = sdlGetGamepadStringForButton;

pragma(mangle, "SDL_GamepadHasButton")
bool sdlGamepadHasButton(SDL_Gamepad* gamepad, SDL_GamepadButton button);

alias SDL_GamepadHasButton = sdlGamepadHasButton;

pragma(mangle, "SDL_GetGamepadButton")
bool sdlGetGamepadButton(SDL_Gamepad* gamepad, SDL_GamepadButton button);

alias SDL_GetGamepadButton = sdlGetGamepadButton;

pragma(mangle, "SDL_GetGamepadButtonLabelForType")
SDL_GamepadButtonLabel sdlGetGamepadButtonLabelForType(SDL_GamepadType type, SDL_GamepadButton button);

alias SDL_GetGamepadButtonLabelForType = sdlGetGamepadButtonLabelForType;

pragma(mangle, "SDL_GetGamepadButtonLabel")
SDL_GamepadButtonLabel sdlGetGamepadButtonLabel(SDL_Gamepad* gamepad, SDL_GamepadButton button);

alias SDL_GetGamepadButtonLabel = sdlGetGamepadButtonLabel;

pragma(mangle, "SDL_GetNumGamepadTouchpads")
int sdlGetNumGamepadTouchpads(SDL_Gamepad* gamepad);

alias SDL_GetNumGamepadTouchpads = sdlGetNumGamepadTouchpads;

pragma(mangle, "SDL_GetNumGamepadTouchpadFingers")
int sdlGetNumGamepadTouchpadFingers(SDL_Gamepad* gamepad, int touchpad);

alias SDL_GetNumGamepadTouchpadFingers = sdlGetNumGamepadTouchpadFingers;

pragma(mangle, "SDL_GetGamepadTouchpadFinger")
bool sdlGetGamepadTouchpadFinger(SDL_Gamepad* gamepad, int touchpad, int finger, bool* down, float* x, float* y, float* pressure);

alias SDL_GetGamepadTouchpadFinger = sdlGetGamepadTouchpadFinger;

pragma(mangle, "SDL_GamepadHasSensor")
bool sdlGamepadHasSensor(SDL_Gamepad* gamepad, SDL_SensorType type);

alias SDL_GamepadHasSensor = sdlGamepadHasSensor;

pragma(mangle, "SDL_SetGamepadSensorEnabled")
bool sdlSetGamepadSensorEnabled(SDL_Gamepad* gamepad, SDL_SensorType type, bool enabled);

alias SDL_SetGamepadSensorEnabled = sdlSetGamepadSensorEnabled;

pragma(mangle, "SDL_GamepadSensorEnabled")
bool sdlGamepadSensorEnabled(SDL_Gamepad* gamepad, SDL_SensorType type);

alias SDL_GamepadSensorEnabled = sdlGamepadSensorEnabled;

pragma(mangle, "SDL_GetGamepadSensorDataRate")
float sdlGetGamepadSensorDataRate(SDL_Gamepad* gamepad, SDL_SensorType type);

alias SDL_GetGamepadSensorDataRate = sdlGetGamepadSensorDataRate;

pragma(mangle, "SDL_GetGamepadSensorData")
bool sdlGetGamepadSensorData(SDL_Gamepad* gamepad, SDL_SensorType type, float* data, int num_values);

alias SDL_GetGamepadSensorData = sdlGetGamepadSensorData;

pragma(mangle, "SDL_GamepadHasCapSense")
bool sdlGamepadHasCapSense(SDL_Gamepad* gamepad, SDL_GamepadCapSenseType type);

alias SDL_GamepadHasCapSense = sdlGamepadHasCapSense;

pragma(mangle, "SDL_GetGamepadCapSense")
bool sdlGetGamepadCapSense(SDL_Gamepad* gamepad, SDL_GamepadCapSenseType type);

alias SDL_GetGamepadCapSense = sdlGetGamepadCapSense;

pragma(mangle, "SDL_RumbleGamepad")
bool sdlRumbleGamepad(SDL_Gamepad* gamepad, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);

alias SDL_RumbleGamepad = sdlRumbleGamepad;

pragma(mangle, "SDL_RumbleGamepadTriggers")
bool sdlRumbleGamepadTriggers(SDL_Gamepad* gamepad, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);

alias SDL_RumbleGamepadTriggers = sdlRumbleGamepadTriggers;

pragma(mangle, "SDL_SetGamepadLED")
bool sdlSetGamepadLED(SDL_Gamepad* gamepad, Uint8 red, Uint8 green, Uint8 blue);

alias SDL_SetGamepadLED = sdlSetGamepadLED;

pragma(mangle, "SDL_SendGamepadEffect")
bool sdlSendGamepadEffect(SDL_Gamepad* gamepad, const(void)* data, int size);

alias SDL_SendGamepadEffect = sdlSendGamepadEffect;

pragma(mangle, "SDL_CloseGamepad")
void sdlCloseGamepad(SDL_Gamepad* gamepad);

alias SDL_CloseGamepad = sdlCloseGamepad;

pragma(mangle, "SDL_GetGamepadAppleSFSymbolsNameForButton")
const(char)* sdlGetGamepadAppleSFSymbolsNameForButton(SDL_Gamepad* gamepad, SDL_GamepadButton button);

alias SDL_GetGamepadAppleSFSymbolsNameForButton = sdlGetGamepadAppleSFSymbolsNameForButton;

pragma(mangle, "SDL_GetGamepadAppleSFSymbolsNameForAxis")
const(char)* sdlGetGamepadAppleSFSymbolsNameForAxis(SDL_Gamepad* gamepad, SDL_GamepadAxis axis);

alias SDL_GetGamepadAppleSFSymbolsNameForAxis = sdlGetGamepadAppleSFSymbolsNameForAxis;
