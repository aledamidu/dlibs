module libs.sdl.haptic;

import libs.sdl.joystick;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_Haptic;

enum SDL_HAPTIC_INFINITY = 4_294_967_295U;

alias SDL_HapticEffectType = ushort;

enum SDL_HAPTIC_CONSTANT = 1u << 0;

enum SDL_HAPTIC_SINE = 1u << 1;

enum SDL_HAPTIC_SQUARE = 1u << 2;

enum SDL_HAPTIC_TRIANGLE = 1u << 3;

enum SDL_HAPTIC_SAWTOOTHUP = 1u << 4;

enum SDL_HAPTIC_SAWTOOTHDOWN = 1u << 5;

enum SDL_HAPTIC_RAMP = 1u << 6;

enum SDL_HAPTIC_SPRING = 1u << 7;

enum SDL_HAPTIC_DAMPER = 1u << 8;

enum SDL_HAPTIC_INERTIA = 1u << 9;

enum SDL_HAPTIC_FRICTION = 1u << 10;

enum SDL_HAPTIC_LEFTRIGHT = 1u << 11;

enum SDL_HAPTIC_RESERVED1 = 1u << 12;

enum SDL_HAPTIC_RESERVED2 = 1u << 13;

enum SDL_HAPTIC_RESERVED3 = 1u << 14;

enum SDL_HAPTIC_CUSTOM = 1u << 15;

enum SDL_HAPTIC_GAIN = 1u << 16;

enum SDL_HAPTIC_AUTOCENTER = 1u << 17;

enum SDL_HAPTIC_STATUS = 1u << 18;

enum SDL_HAPTIC_PAUSE = 1u << 19;

alias SDL_HapticDirectionType = ubyte;

enum SDL_HAPTIC_POLAR = 0;

enum SDL_HAPTIC_CARTESIAN = 1;

enum SDL_HAPTIC_SPHERICAL = 2;

enum SDL_HAPTIC_STEERING_AXIS = 3;

alias SDL_HapticEffectID = int;

struct SDL_HapticDirection
{
    SDL_HapticDirectionType type;
    alias Sint32 = int;
    Sint32[3] dir;
}

struct SDL_HapticConstant
{
    SDL_HapticEffectType type;
    SDL_HapticDirection direction;

    alias Uint32 = uint;
    Uint32 length;
    alias Uint16 = ushort;
    Uint16 delay;

    Uint16 button;
    Uint16 interval;

    alias Sint16 = short;
    Sint16 level;

    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
}

struct SDL_HapticPeriodic
{
    SDL_HapticEffectType type;

    SDL_HapticDirection direction;

    Uint32 length;
    Uint16 delay;

    Uint16 button;
    Uint16 interval;

    Uint16 period;
    Sint16 magnitude;
    Sint16 offset;
    Uint16 phase;

    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
}

struct SDL_HapticCondition
{
    SDL_HapticEffectType type;

    SDL_HapticDirection direction;

    Uint32 length;
    Uint16 delay;

    Uint16 button;
    Uint16 interval;

    Uint16[3] right_sat;
    Uint16[3] left_sat;
    Sint16[3] right_coeff;
    Sint16[3] left_coeff;
    Uint16[3] deadband;
    Sint16[3] center;
}

struct SDL_HapticRamp
{
    SDL_HapticEffectType type;
    SDL_HapticDirection direction;

    Uint32 length;
    Uint16 delay;

    Uint16 button;
    Uint16 interval;

    Sint16 start;
    Sint16 end;

    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
}

struct SDL_HapticLeftRight
{
    SDL_HapticEffectType type;

    Uint32 length;

    Uint16 large_magnitude;
    Uint16 small_magnitude;
}

struct SDL_HapticCustom
{
    SDL_HapticEffectType type;
    SDL_HapticDirection direction;

    Uint32 length;
    Uint16 delay;

    Uint16 button;
    Uint16 interval;

    alias Uint8 = ubyte;
    Uint8 channels;
    Uint16 period;
    Uint16 samples;
    Uint16* data;

    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
}

union SDL_HapticEffect
{
    SDL_HapticEffectType type;
    SDL_HapticConstant constant;
    SDL_HapticPeriodic periodic;
    SDL_HapticCondition condition;
    SDL_HapticRamp ramp;
    SDL_HapticLeftRight leftright;
    SDL_HapticCustom custom;
}

alias SDL_HapticID = uint;

pragma(mangle, "SDL_GetHaptics")
SDL_HapticID* sdlGetHaptics(int* count);

alias SDL_GetHaptics = sdlGetHaptics;

pragma(mangle, "SDL_GetHapticNameForID")
const(char)* sdlGetHapticNameForID(SDL_HapticID instance_id);

alias SDL_GetHapticNameForID = sdlGetHapticNameForID;

pragma(mangle, "SDL_OpenHaptic")
SDL_Haptic* sdlOpenHaptic(SDL_HapticID instance_id);

alias SDL_OpenHaptic = sdlOpenHaptic;

pragma(mangle, "SDL_GetHapticFromID")
SDL_Haptic* sdlGetHapticFromID(SDL_HapticID instance_id);

alias SDL_GetHapticFromID = sdlGetHapticFromID;

pragma(mangle, "SDL_GetHapticID")
SDL_HapticID sdlGetHapticID(SDL_Haptic* haptic);

alias SDL_GetHapticID = sdlGetHapticID;

pragma(mangle, "SDL_GetHapticName")
const(char)* sdlGetHapticName(SDL_Haptic* haptic);

alias SDL_GetHapticName = sdlGetHapticName;

pragma(mangle, "SDL_IsMouseHaptic")
bool sdlIsMouseHaptic();

alias SDL_IsMouseHaptic = sdlIsMouseHaptic;

pragma(mangle, "SDL_OpenHapticFromMouse")
SDL_Haptic* sdlOpenHapticFromMouse();

alias SDL_OpenHapticFromMouse = sdlOpenHapticFromMouse;

pragma(mangle, "SDL_IsJoystickHaptic")
bool sdlIsJoystickHaptic(SDL_Joystick* joystick);

alias SDL_IsJoystickHaptic = sdlIsJoystickHaptic;

pragma(mangle, "SDL_OpenHapticFromJoystick")
SDL_Haptic* sdlOpenHapticFromJoystick(SDL_Joystick* joystick);

alias SDL_OpenHapticFromJoystick = sdlOpenHapticFromJoystick;

pragma(mangle, "SDL_CloseHaptic")
void sdlCloseHaptic(SDL_Haptic* haptic);

alias SDL_CloseHaptic = sdlCloseHaptic;

pragma(mangle, "SDL_GetMaxHapticEffects")
int sdlGetMaxHapticEffects(SDL_Haptic* haptic);

alias SDL_GetMaxHapticEffects = sdlGetMaxHapticEffects;

pragma(mangle, "SDL_GetMaxHapticEffectsPlaying")
int sdlGetMaxHapticEffectsPlaying(SDL_Haptic* haptic);

alias SDL_GetMaxHapticEffectsPlaying = sdlGetMaxHapticEffectsPlaying;

pragma(mangle, "SDL_GetHapticFeatures")
Uint32 sdlGetHapticFeatures(SDL_Haptic* haptic);

alias SDL_GetHapticFeatures = sdlGetHapticFeatures;

pragma(mangle, "SDL_GetNumHapticAxes")
int sdlGetNumHapticAxes(SDL_Haptic* haptic);

alias SDL_GetNumHapticAxes = sdlGetNumHapticAxes;

pragma(mangle, "SDL_HapticEffectSupported")
bool sdlHapticEffectSupported(SDL_Haptic* haptic, const(SDL_HapticEffect)* effect);

alias SDL_HapticEffectSupported = sdlHapticEffectSupported;

pragma(mangle, "SDL_CreateHapticEffect")
SDL_HapticEffectID sdlCreateHapticEffect(SDL_Haptic* haptic, const(SDL_HapticEffect)* effect);

alias SDL_CreateHapticEffect = sdlCreateHapticEffect;

pragma(mangle, "SDL_UpdateHapticEffect")
bool sdlUpdateHapticEffect(SDL_Haptic* haptic, SDL_HapticEffectID effect, const(SDL_HapticEffect)* data);

alias SDL_UpdateHapticEffect = sdlUpdateHapticEffect;

pragma(mangle, "SDL_RunHapticEffect")
bool sdlRunHapticEffect(SDL_Haptic* haptic, SDL_HapticEffectID effect, Uint32 iterations);

alias SDL_RunHapticEffect = sdlRunHapticEffect;

pragma(mangle, "SDL_StopHapticEffect")
bool sdlStopHapticEffect(SDL_Haptic* haptic, SDL_HapticEffectID effect);

alias SDL_StopHapticEffect = sdlStopHapticEffect;

pragma(mangle, "SDL_DestroyHapticEffect")
void sdlDestroyHapticEffect(SDL_Haptic* haptic, SDL_HapticEffectID effect);

alias SDL_DestroyHapticEffect = sdlDestroyHapticEffect;

pragma(mangle, "SDL_GetHapticEffectStatus")
bool sdlGetHapticEffectStatus(SDL_Haptic* haptic, SDL_HapticEffectID effect);

alias SDL_GetHapticEffectStatus = sdlGetHapticEffectStatus;

pragma(mangle, "SDL_SetHapticGain")
bool sdlSetHapticGain(SDL_Haptic* haptic, int gain);

alias SDL_SetHapticGain = sdlSetHapticGain;

pragma(mangle, "SDL_SetHapticAutocenter")
bool sdlSetHapticAutocenter(SDL_Haptic* haptic, int autocenter);

alias SDL_SetHapticAutocenter = sdlSetHapticAutocenter;

pragma(mangle, "SDL_PauseHaptic")
bool sdlPauseHaptic(SDL_Haptic* haptic);

alias SDL_PauseHaptic = sdlPauseHaptic;

pragma(mangle, "SDL_ResumeHaptic")
bool sdlResumeHaptic(SDL_Haptic* haptic);

alias SDL_ResumeHaptic = sdlResumeHaptic;

pragma(mangle, "SDL_StopHapticEffects")
bool sdlStopHapticEffects(SDL_Haptic* haptic);

alias SDL_StopHapticEffects = sdlStopHapticEffects;

pragma(mangle, "SDL_HapticRumbleSupported")
bool sdlHapticRumbleSupported(SDL_Haptic* haptic);

alias SDL_HapticRumbleSupported = sdlHapticRumbleSupported;

pragma(mangle, "SDL_InitHapticRumble")
bool sdlInitHapticRumble(SDL_Haptic* haptic);

alias SDL_InitHapticRumble = sdlInitHapticRumble;

pragma(mangle, "SDL_PlayHapticRumble")
bool sdlPlayHapticRumble(SDL_Haptic* haptic, float strength, Uint32 length);

alias SDL_PlayHapticRumble = sdlPlayHapticRumble;

pragma(mangle, "SDL_StopHapticRumble")
bool sdlStopHapticRumble(SDL_Haptic* haptic);

alias SDL_StopHapticRumble = sdlStopHapticRumble;
