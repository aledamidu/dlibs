module libs.sdl.events;

import libs.sdl.audio;
import libs.sdl.camera;
import libs.sdl.joystick;
import libs.sdl.keyboard;
import libs.sdl.keycode;
import libs.sdl.mouse;
import libs.sdl.notification;
import libs.sdl.pen;
import libs.sdl.power;
import libs.sdl.scancode;
import libs.sdl.sensor;
import libs.sdl.stdinc;
import libs.sdl.touch;
import libs.sdl.video;

extern (C):
@nogc nothrow:

enum SDL_EventType
{
    SDL_EVENT_FIRST = 0,

    SDL_EVENT_QUIT = 0x100,

    SDL_EVENT_TERMINATING = 257,

    SDL_EVENT_LOW_MEMORY = 258,

    SDL_EVENT_WILL_ENTER_BACKGROUND = 259,

    SDL_EVENT_DID_ENTER_BACKGROUND = 260,

    SDL_EVENT_WILL_ENTER_FOREGROUND = 261,

    SDL_EVENT_DID_ENTER_FOREGROUND = 262,

    SDL_EVENT_LOCALE_CHANGED = 263,

    SDL_EVENT_SYSTEM_THEME_CHANGED = 264,

    SDL_EVENT_DISPLAY_ORIENTATION = 0x151,
    SDL_EVENT_DISPLAY_ADDED = 338,
    SDL_EVENT_DISPLAY_REMOVED = 339,
    SDL_EVENT_DISPLAY_MOVED = 340,
    SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED = 341,
    SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED = 342,
    SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED = 343,
    SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED = 344,
    SDL_EVENT_DISPLAY_FIRST = SDL_EVENT_DISPLAY_ORIENTATION,
    SDL_EVENT_DISPLAY_LAST = SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED,

    SDL_EVENT_WINDOW_SHOWN = 0x202,
    SDL_EVENT_WINDOW_HIDDEN = 515,
    SDL_EVENT_WINDOW_EXPOSED = 516,

    SDL_EVENT_WINDOW_MOVED = 517,
    SDL_EVENT_WINDOW_RESIZED = 518,
    SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED = 519,
    SDL_EVENT_WINDOW_METAL_VIEW_RESIZED = 520,
    SDL_EVENT_WINDOW_MINIMIZED = 521,
    SDL_EVENT_WINDOW_MAXIMIZED = 522,
    SDL_EVENT_WINDOW_RESTORED = 523,
    SDL_EVENT_WINDOW_MOUSE_ENTER = 524,
    SDL_EVENT_WINDOW_MOUSE_LEAVE = 525,
    SDL_EVENT_WINDOW_FOCUS_GAINED = 526,
    SDL_EVENT_WINDOW_FOCUS_LOST = 527,
    SDL_EVENT_WINDOW_CLOSE_REQUESTED = 528,
    SDL_EVENT_WINDOW_HIT_TEST = 529,
    SDL_EVENT_WINDOW_ICCPROF_CHANGED = 530,
    SDL_EVENT_WINDOW_DISPLAY_CHANGED = 531,
    SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED = 532,
    SDL_EVENT_WINDOW_SAFE_AREA_CHANGED = 533,
    SDL_EVENT_WINDOW_OCCLUDED = 534,
    SDL_EVENT_WINDOW_ENTER_FULLSCREEN = 535,
    SDL_EVENT_WINDOW_LEAVE_FULLSCREEN = 536,
    SDL_EVENT_WINDOW_DESTROYED = 537,

    SDL_EVENT_WINDOW_HDR_STATE_CHANGED = 538,
    SDL_EVENT_WINDOW_SETTINGS_CHANGED = 539,
    SDL_EVENT_WINDOW_FIRST = SDL_EVENT_WINDOW_SHOWN,
    SDL_EVENT_WINDOW_LAST = SDL_EVENT_WINDOW_SETTINGS_CHANGED,

    SDL_EVENT_KEY_DOWN = 0x300,
    SDL_EVENT_KEY_UP = 769,
    SDL_EVENT_TEXT_EDITING = 770,
    SDL_EVENT_TEXT_INPUT = 771,
    SDL_EVENT_KEYMAP_CHANGED = 772,

    SDL_EVENT_KEYBOARD_ADDED = 773,
    SDL_EVENT_KEYBOARD_REMOVED = 774,
    SDL_EVENT_TEXT_EDITING_CANDIDATES = 775,
    SDL_EVENT_SCREEN_KEYBOARD_SHOWN = 776,
    SDL_EVENT_SCREEN_KEYBOARD_HIDDEN = 777,
    SDL_EVENT_KEYBOARD_FIRST = SDL_EVENT_KEY_DOWN,
    SDL_EVENT_KEYBOARD_LAST = SDL_EVENT_SCREEN_KEYBOARD_HIDDEN,

    SDL_EVENT_MOUSE_MOTION = 0x400,
    SDL_EVENT_MOUSE_BUTTON_DOWN = 1025,
    SDL_EVENT_MOUSE_BUTTON_UP = 1026,
    SDL_EVENT_MOUSE_WHEEL = 1027,
    SDL_EVENT_MOUSE_ADDED = 1028,
    SDL_EVENT_MOUSE_REMOVED = 1029,
    SDL_EVENT_MOUSE_FIRST = SDL_EVENT_MOUSE_MOTION,
    SDL_EVENT_MOUSE_LAST = SDL_EVENT_MOUSE_REMOVED,

    SDL_EVENT_JOYSTICK_AXIS_MOTION = 0x600,
    SDL_EVENT_JOYSTICK_BALL_MOTION = 1537,
    SDL_EVENT_JOYSTICK_HAT_MOTION = 1538,
    SDL_EVENT_JOYSTICK_BUTTON_DOWN = 1539,
    SDL_EVENT_JOYSTICK_BUTTON_UP = 1540,
    SDL_EVENT_JOYSTICK_ADDED = 1541,
    SDL_EVENT_JOYSTICK_REMOVED = 1542,
    SDL_EVENT_JOYSTICK_BATTERY_UPDATED = 1543,
    SDL_EVENT_JOYSTICK_UPDATE_COMPLETE = 1544,
    SDL_EVENT_JOYSTICK_FIRST = SDL_EVENT_JOYSTICK_AXIS_MOTION,
    SDL_EVENT_JOYSTICK_LAST = SDL_EVENT_JOYSTICK_UPDATE_COMPLETE,

    SDL_EVENT_GAMEPAD_AXIS_MOTION = 0x650,
    SDL_EVENT_GAMEPAD_BUTTON_DOWN = 1617,
    SDL_EVENT_GAMEPAD_BUTTON_UP = 1618,
    SDL_EVENT_GAMEPAD_ADDED = 1619,
    SDL_EVENT_GAMEPAD_REMOVED = 1620,
    SDL_EVENT_GAMEPAD_REMAPPED = 1621,
    SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN = 1622,
    SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION = 1623,
    SDL_EVENT_GAMEPAD_TOUCHPAD_UP = 1624,
    SDL_EVENT_GAMEPAD_SENSOR_UPDATE = 1625,
    SDL_EVENT_GAMEPAD_UPDATE_COMPLETE = 1626,
    SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED = 1627,
    SDL_EVENT_GAMEPAD_CAPSENSE_TOUCH = 1628,
    SDL_EVENT_GAMEPAD_CAPSENSE_RELEASE = 1629,
    SDL_EVENT_GAMEPAD_FIRST = SDL_EVENT_GAMEPAD_AXIS_MOTION,
    SDL_EVENT_GAMEPAD_LAST = SDL_EVENT_GAMEPAD_CAPSENSE_RELEASE,

    SDL_EVENT_FINGER_DOWN = 0x700,
    SDL_EVENT_FINGER_UP = 1793,
    SDL_EVENT_FINGER_MOTION = 1794,
    SDL_EVENT_FINGER_CANCELED = 1795,
    SDL_EVENT_FINGER_FIRST = SDL_EVENT_FINGER_DOWN,
    SDL_EVENT_FINGER_LAST = SDL_EVENT_FINGER_CANCELED,

    SDL_EVENT_PINCH_BEGIN = 0x710,
    SDL_EVENT_PINCH_UPDATE = 1809,
    SDL_EVENT_PINCH_END = 1810,
    SDL_EVENT_PINCH_FIRST = SDL_EVENT_PINCH_BEGIN,
    SDL_EVENT_PINCH_LAST = SDL_EVENT_PINCH_END,

    SDL_EVENT_CLIPBOARD_UPDATE = 0x900,
    SDL_EVENT_CLIPBOARD_FIRST = SDL_EVENT_CLIPBOARD_UPDATE,
    SDL_EVENT_CLIPBOARD_LAST = SDL_EVENT_CLIPBOARD_UPDATE,

    SDL_EVENT_DROP_FILE = 0x1000,
    SDL_EVENT_DROP_TEXT = 4097,
    SDL_EVENT_DROP_BEGIN = 4098,
    SDL_EVENT_DROP_COMPLETE = 4099,
    SDL_EVENT_DROP_POSITION = 4100,
    SDL_EVENT_DROP_FIRST = SDL_EVENT_DROP_FILE,
    SDL_EVENT_DROP_LAST = SDL_EVENT_DROP_POSITION,

    SDL_EVENT_AUDIO_DEVICE_ADDED = 0x1100,
    SDL_EVENT_AUDIO_DEVICE_REMOVED = 4353,
    SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED = 4354,
    SDL_EVENT_AUDIO_DEVICE_FIRST = SDL_EVENT_AUDIO_DEVICE_ADDED,
    SDL_EVENT_AUDIO_DEVICE_LAST = SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED,

    SDL_EVENT_SENSOR_UPDATE = 0x1200,
    SDL_EVENT_SENSOR_FIRST = SDL_EVENT_SENSOR_UPDATE,
    SDL_EVENT_SENSOR_LAST = SDL_EVENT_SENSOR_UPDATE,

    SDL_EVENT_PEN_PROXIMITY_IN = 0x1300,
    SDL_EVENT_PEN_PROXIMITY_OUT = 4865,
    SDL_EVENT_PEN_DOWN = 4866,
    SDL_EVENT_PEN_UP = 4867,
    SDL_EVENT_PEN_BUTTON_DOWN = 4868,
    SDL_EVENT_PEN_BUTTON_UP = 4869,
    SDL_EVENT_PEN_MOTION = 4870,
    SDL_EVENT_PEN_AXIS = 4871,
    SDL_EVENT_PEN_FIRST = SDL_EVENT_PEN_PROXIMITY_IN,
    SDL_EVENT_PEN_LAST = SDL_EVENT_PEN_AXIS,

    SDL_EVENT_CAMERA_DEVICE_ADDED = 0x1400,
    SDL_EVENT_CAMERA_DEVICE_REMOVED = 5121,
    SDL_EVENT_CAMERA_DEVICE_APPROVED = 5122,
    SDL_EVENT_CAMERA_DEVICE_DENIED = 5123,
    SDL_EVENT_CAMERA_DEVICE_FIRST = SDL_EVENT_CAMERA_DEVICE_ADDED,
    SDL_EVENT_CAMERA_DEVICE_LAST = SDL_EVENT_CAMERA_DEVICE_DENIED,

    SDL_EVENT_NOTIFICATION_ACTION_INVOKED = 0x1500,
    SDL_EVENT_NOTIFICATION_FIRST = SDL_EVENT_NOTIFICATION_ACTION_INVOKED,
    SDL_EVENT_NOTIFICATION_LAST = SDL_EVENT_NOTIFICATION_ACTION_INVOKED,

    SDL_EVENT_RENDER_TARGETS_RESET = 0x2000,
    SDL_EVENT_RENDER_DEVICE_RESET = 8193,
    SDL_EVENT_RENDER_DEVICE_LOST = 8194,
    SDL_EVENT_RENDER_FIRST = SDL_EVENT_RENDER_TARGETS_RESET,
    SDL_EVENT_RENDER_LAST = SDL_EVENT_RENDER_DEVICE_LOST,

    SDL_EVENT_PRIVATE0 = 0x4000,
    SDL_EVENT_PRIVATE1 = 16_385,
    SDL_EVENT_PRIVATE2 = 16_386,
    SDL_EVENT_PRIVATE3 = 16_387,

    SDL_EVENT_POLL_SENTINEL = 0x7F00,

    SDL_EVENT_USER = 0x8000,

    SDL_EVENT_LAST = 0xFFFF,

    SDL_EVENT_ENUM_PADDING = 0x7FFFFFFF
}

alias SDL_EVENT_FIRST = SDL_EventType.SDL_EVENT_FIRST;
alias SDL_EVENT_QUIT = SDL_EventType.SDL_EVENT_QUIT;
alias SDL_EVENT_TERMINATING = SDL_EventType.SDL_EVENT_TERMINATING;
alias SDL_EVENT_LOW_MEMORY = SDL_EventType.SDL_EVENT_LOW_MEMORY;
alias SDL_EVENT_WILL_ENTER_BACKGROUND = SDL_EventType.SDL_EVENT_WILL_ENTER_BACKGROUND;
alias SDL_EVENT_DID_ENTER_BACKGROUND = SDL_EventType.SDL_EVENT_DID_ENTER_BACKGROUND;
alias SDL_EVENT_WILL_ENTER_FOREGROUND = SDL_EventType.SDL_EVENT_WILL_ENTER_FOREGROUND;
alias SDL_EVENT_DID_ENTER_FOREGROUND = SDL_EventType.SDL_EVENT_DID_ENTER_FOREGROUND;
alias SDL_EVENT_LOCALE_CHANGED = SDL_EventType.SDL_EVENT_LOCALE_CHANGED;
alias SDL_EVENT_SYSTEM_THEME_CHANGED = SDL_EventType.SDL_EVENT_SYSTEM_THEME_CHANGED;
alias SDL_EVENT_DISPLAY_ORIENTATION = SDL_EventType.SDL_EVENT_DISPLAY_ORIENTATION;
alias SDL_EVENT_DISPLAY_ADDED = SDL_EventType.SDL_EVENT_DISPLAY_ADDED;
alias SDL_EVENT_DISPLAY_REMOVED = SDL_EventType.SDL_EVENT_DISPLAY_REMOVED;
alias SDL_EVENT_DISPLAY_MOVED = SDL_EventType.SDL_EVENT_DISPLAY_MOVED;
alias SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED = SDL_EventType.SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED;
alias SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED = SDL_EventType.SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED;
alias SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED = SDL_EventType
    .SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED;
alias SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED = SDL_EventType
    .SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED;
alias SDL_EVENT_DISPLAY_FIRST = SDL_EventType.SDL_EVENT_DISPLAY_FIRST;
alias SDL_EVENT_DISPLAY_LAST = SDL_EventType.SDL_EVENT_DISPLAY_LAST;
alias SDL_EVENT_WINDOW_SHOWN = SDL_EventType.SDL_EVENT_WINDOW_SHOWN;
alias SDL_EVENT_WINDOW_HIDDEN = SDL_EventType.SDL_EVENT_WINDOW_HIDDEN;
alias SDL_EVENT_WINDOW_EXPOSED = SDL_EventType.SDL_EVENT_WINDOW_EXPOSED;
alias SDL_EVENT_WINDOW_MOVED = SDL_EventType.SDL_EVENT_WINDOW_MOVED;
alias SDL_EVENT_WINDOW_RESIZED = SDL_EventType.SDL_EVENT_WINDOW_RESIZED;
alias SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED = SDL_EventType.SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED;
alias SDL_EVENT_WINDOW_METAL_VIEW_RESIZED = SDL_EventType.SDL_EVENT_WINDOW_METAL_VIEW_RESIZED;
alias SDL_EVENT_WINDOW_MINIMIZED = SDL_EventType.SDL_EVENT_WINDOW_MINIMIZED;
alias SDL_EVENT_WINDOW_MAXIMIZED = SDL_EventType.SDL_EVENT_WINDOW_MAXIMIZED;
alias SDL_EVENT_WINDOW_RESTORED = SDL_EventType.SDL_EVENT_WINDOW_RESTORED;
alias SDL_EVENT_WINDOW_MOUSE_ENTER = SDL_EventType.SDL_EVENT_WINDOW_MOUSE_ENTER;
alias SDL_EVENT_WINDOW_MOUSE_LEAVE = SDL_EventType.SDL_EVENT_WINDOW_MOUSE_LEAVE;
alias SDL_EVENT_WINDOW_FOCUS_GAINED = SDL_EventType.SDL_EVENT_WINDOW_FOCUS_GAINED;
alias SDL_EVENT_WINDOW_FOCUS_LOST = SDL_EventType.SDL_EVENT_WINDOW_FOCUS_LOST;
alias SDL_EVENT_WINDOW_CLOSE_REQUESTED = SDL_EventType.SDL_EVENT_WINDOW_CLOSE_REQUESTED;
alias SDL_EVENT_WINDOW_HIT_TEST = SDL_EventType.SDL_EVENT_WINDOW_HIT_TEST;
alias SDL_EVENT_WINDOW_ICCPROF_CHANGED = SDL_EventType.SDL_EVENT_WINDOW_ICCPROF_CHANGED;
alias SDL_EVENT_WINDOW_DISPLAY_CHANGED = SDL_EventType.SDL_EVENT_WINDOW_DISPLAY_CHANGED;
alias SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED = SDL_EventType.SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED;
alias SDL_EVENT_WINDOW_SAFE_AREA_CHANGED = SDL_EventType.SDL_EVENT_WINDOW_SAFE_AREA_CHANGED;
alias SDL_EVENT_WINDOW_OCCLUDED = SDL_EventType.SDL_EVENT_WINDOW_OCCLUDED;
alias SDL_EVENT_WINDOW_ENTER_FULLSCREEN = SDL_EventType.SDL_EVENT_WINDOW_ENTER_FULLSCREEN;
alias SDL_EVENT_WINDOW_LEAVE_FULLSCREEN = SDL_EventType.SDL_EVENT_WINDOW_LEAVE_FULLSCREEN;
alias SDL_EVENT_WINDOW_DESTROYED = SDL_EventType.SDL_EVENT_WINDOW_DESTROYED;
alias SDL_EVENT_WINDOW_HDR_STATE_CHANGED = SDL_EventType.SDL_EVENT_WINDOW_HDR_STATE_CHANGED;
alias SDL_EVENT_WINDOW_SETTINGS_CHANGED = SDL_EventType.SDL_EVENT_WINDOW_SETTINGS_CHANGED;
alias SDL_EVENT_WINDOW_FIRST = SDL_EventType.SDL_EVENT_WINDOW_FIRST;
alias SDL_EVENT_WINDOW_LAST = SDL_EventType.SDL_EVENT_WINDOW_LAST;
alias SDL_EVENT_KEY_DOWN = SDL_EventType.SDL_EVENT_KEY_DOWN;
alias SDL_EVENT_KEY_UP = SDL_EventType.SDL_EVENT_KEY_UP;
alias SDL_EVENT_TEXT_EDITING = SDL_EventType.SDL_EVENT_TEXT_EDITING;
alias SDL_EVENT_TEXT_INPUT = SDL_EventType.SDL_EVENT_TEXT_INPUT;
alias SDL_EVENT_KEYMAP_CHANGED = SDL_EventType.SDL_EVENT_KEYMAP_CHANGED;
alias SDL_EVENT_KEYBOARD_ADDED = SDL_EventType.SDL_EVENT_KEYBOARD_ADDED;
alias SDL_EVENT_KEYBOARD_REMOVED = SDL_EventType.SDL_EVENT_KEYBOARD_REMOVED;
alias SDL_EVENT_TEXT_EDITING_CANDIDATES = SDL_EventType.SDL_EVENT_TEXT_EDITING_CANDIDATES;
alias SDL_EVENT_SCREEN_KEYBOARD_SHOWN = SDL_EventType.SDL_EVENT_SCREEN_KEYBOARD_SHOWN;
alias SDL_EVENT_SCREEN_KEYBOARD_HIDDEN = SDL_EventType.SDL_EVENT_SCREEN_KEYBOARD_HIDDEN;
alias SDL_EVENT_KEYBOARD_FIRST = SDL_EventType.SDL_EVENT_KEYBOARD_FIRST;
alias SDL_EVENT_KEYBOARD_LAST = SDL_EventType.SDL_EVENT_KEYBOARD_LAST;
alias SDL_EVENT_MOUSE_MOTION = SDL_EventType.SDL_EVENT_MOUSE_MOTION;
alias SDL_EVENT_MOUSE_BUTTON_DOWN = SDL_EventType.SDL_EVENT_MOUSE_BUTTON_DOWN;
alias SDL_EVENT_MOUSE_BUTTON_UP = SDL_EventType.SDL_EVENT_MOUSE_BUTTON_UP;
alias SDL_EVENT_MOUSE_WHEEL = SDL_EventType.SDL_EVENT_MOUSE_WHEEL;
alias SDL_EVENT_MOUSE_ADDED = SDL_EventType.SDL_EVENT_MOUSE_ADDED;
alias SDL_EVENT_MOUSE_REMOVED = SDL_EventType.SDL_EVENT_MOUSE_REMOVED;
alias SDL_EVENT_MOUSE_FIRST = SDL_EventType.SDL_EVENT_MOUSE_FIRST;
alias SDL_EVENT_MOUSE_LAST = SDL_EventType.SDL_EVENT_MOUSE_LAST;
alias SDL_EVENT_JOYSTICK_AXIS_MOTION = SDL_EventType.SDL_EVENT_JOYSTICK_AXIS_MOTION;
alias SDL_EVENT_JOYSTICK_BALL_MOTION = SDL_EventType.SDL_EVENT_JOYSTICK_BALL_MOTION;
alias SDL_EVENT_JOYSTICK_HAT_MOTION = SDL_EventType.SDL_EVENT_JOYSTICK_HAT_MOTION;
alias SDL_EVENT_JOYSTICK_BUTTON_DOWN = SDL_EventType.SDL_EVENT_JOYSTICK_BUTTON_DOWN;
alias SDL_EVENT_JOYSTICK_BUTTON_UP = SDL_EventType.SDL_EVENT_JOYSTICK_BUTTON_UP;
alias SDL_EVENT_JOYSTICK_ADDED = SDL_EventType.SDL_EVENT_JOYSTICK_ADDED;
alias SDL_EVENT_JOYSTICK_REMOVED = SDL_EventType.SDL_EVENT_JOYSTICK_REMOVED;
alias SDL_EVENT_JOYSTICK_BATTERY_UPDATED = SDL_EventType.SDL_EVENT_JOYSTICK_BATTERY_UPDATED;
alias SDL_EVENT_JOYSTICK_UPDATE_COMPLETE = SDL_EventType.SDL_EVENT_JOYSTICK_UPDATE_COMPLETE;
alias SDL_EVENT_JOYSTICK_FIRST = SDL_EventType.SDL_EVENT_JOYSTICK_FIRST;
alias SDL_EVENT_JOYSTICK_LAST = SDL_EventType.SDL_EVENT_JOYSTICK_LAST;
alias SDL_EVENT_GAMEPAD_AXIS_MOTION = SDL_EventType.SDL_EVENT_GAMEPAD_AXIS_MOTION;
alias SDL_EVENT_GAMEPAD_BUTTON_DOWN = SDL_EventType.SDL_EVENT_GAMEPAD_BUTTON_DOWN;
alias SDL_EVENT_GAMEPAD_BUTTON_UP = SDL_EventType.SDL_EVENT_GAMEPAD_BUTTON_UP;
alias SDL_EVENT_GAMEPAD_ADDED = SDL_EventType.SDL_EVENT_GAMEPAD_ADDED;
alias SDL_EVENT_GAMEPAD_REMOVED = SDL_EventType.SDL_EVENT_GAMEPAD_REMOVED;
alias SDL_EVENT_GAMEPAD_REMAPPED = SDL_EventType.SDL_EVENT_GAMEPAD_REMAPPED;
alias SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN = SDL_EventType.SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN;
alias SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION = SDL_EventType.SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION;
alias SDL_EVENT_GAMEPAD_TOUCHPAD_UP = SDL_EventType.SDL_EVENT_GAMEPAD_TOUCHPAD_UP;
alias SDL_EVENT_GAMEPAD_SENSOR_UPDATE = SDL_EventType.SDL_EVENT_GAMEPAD_SENSOR_UPDATE;
alias SDL_EVENT_GAMEPAD_UPDATE_COMPLETE = SDL_EventType.SDL_EVENT_GAMEPAD_UPDATE_COMPLETE;
alias SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED = SDL_EventType.SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED;
alias SDL_EVENT_GAMEPAD_CAPSENSE_TOUCH = SDL_EventType.SDL_EVENT_GAMEPAD_CAPSENSE_TOUCH;
alias SDL_EVENT_GAMEPAD_CAPSENSE_RELEASE = SDL_EventType.SDL_EVENT_GAMEPAD_CAPSENSE_RELEASE;
alias SDL_EVENT_GAMEPAD_FIRST = SDL_EventType.SDL_EVENT_GAMEPAD_FIRST;
alias SDL_EVENT_GAMEPAD_LAST = SDL_EventType.SDL_EVENT_GAMEPAD_LAST;
alias SDL_EVENT_FINGER_DOWN = SDL_EventType.SDL_EVENT_FINGER_DOWN;
alias SDL_EVENT_FINGER_UP = SDL_EventType.SDL_EVENT_FINGER_UP;
alias SDL_EVENT_FINGER_MOTION = SDL_EventType.SDL_EVENT_FINGER_MOTION;
alias SDL_EVENT_FINGER_CANCELED = SDL_EventType.SDL_EVENT_FINGER_CANCELED;
alias SDL_EVENT_FINGER_FIRST = SDL_EventType.SDL_EVENT_FINGER_FIRST;
alias SDL_EVENT_FINGER_LAST = SDL_EventType.SDL_EVENT_FINGER_LAST;
alias SDL_EVENT_PINCH_BEGIN = SDL_EventType.SDL_EVENT_PINCH_BEGIN;
alias SDL_EVENT_PINCH_UPDATE = SDL_EventType.SDL_EVENT_PINCH_UPDATE;
alias SDL_EVENT_PINCH_END = SDL_EventType.SDL_EVENT_PINCH_END;
alias SDL_EVENT_PINCH_FIRST = SDL_EventType.SDL_EVENT_PINCH_FIRST;
alias SDL_EVENT_PINCH_LAST = SDL_EventType.SDL_EVENT_PINCH_LAST;
alias SDL_EVENT_CLIPBOARD_UPDATE = SDL_EventType.SDL_EVENT_CLIPBOARD_UPDATE;
alias SDL_EVENT_CLIPBOARD_FIRST = SDL_EventType.SDL_EVENT_CLIPBOARD_FIRST;
alias SDL_EVENT_CLIPBOARD_LAST = SDL_EventType.SDL_EVENT_CLIPBOARD_LAST;
alias SDL_EVENT_DROP_FILE = SDL_EventType.SDL_EVENT_DROP_FILE;
alias SDL_EVENT_DROP_TEXT = SDL_EventType.SDL_EVENT_DROP_TEXT;
alias SDL_EVENT_DROP_BEGIN = SDL_EventType.SDL_EVENT_DROP_BEGIN;
alias SDL_EVENT_DROP_COMPLETE = SDL_EventType.SDL_EVENT_DROP_COMPLETE;
alias SDL_EVENT_DROP_POSITION = SDL_EventType.SDL_EVENT_DROP_POSITION;
alias SDL_EVENT_DROP_FIRST = SDL_EventType.SDL_EVENT_DROP_FIRST;
alias SDL_EVENT_DROP_LAST = SDL_EventType.SDL_EVENT_DROP_LAST;
alias SDL_EVENT_AUDIO_DEVICE_ADDED = SDL_EventType.SDL_EVENT_AUDIO_DEVICE_ADDED;
alias SDL_EVENT_AUDIO_DEVICE_REMOVED = SDL_EventType.SDL_EVENT_AUDIO_DEVICE_REMOVED;
alias SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED = SDL_EventType.SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED;
alias SDL_EVENT_AUDIO_DEVICE_FIRST = SDL_EventType.SDL_EVENT_AUDIO_DEVICE_FIRST;
alias SDL_EVENT_AUDIO_DEVICE_LAST = SDL_EventType.SDL_EVENT_AUDIO_DEVICE_LAST;
alias SDL_EVENT_SENSOR_UPDATE = SDL_EventType.SDL_EVENT_SENSOR_UPDATE;
alias SDL_EVENT_SENSOR_FIRST = SDL_EventType.SDL_EVENT_SENSOR_FIRST;
alias SDL_EVENT_SENSOR_LAST = SDL_EventType.SDL_EVENT_SENSOR_LAST;
alias SDL_EVENT_PEN_PROXIMITY_IN = SDL_EventType.SDL_EVENT_PEN_PROXIMITY_IN;
alias SDL_EVENT_PEN_PROXIMITY_OUT = SDL_EventType.SDL_EVENT_PEN_PROXIMITY_OUT;
alias SDL_EVENT_PEN_DOWN = SDL_EventType.SDL_EVENT_PEN_DOWN;
alias SDL_EVENT_PEN_UP = SDL_EventType.SDL_EVENT_PEN_UP;
alias SDL_EVENT_PEN_BUTTON_DOWN = SDL_EventType.SDL_EVENT_PEN_BUTTON_DOWN;
alias SDL_EVENT_PEN_BUTTON_UP = SDL_EventType.SDL_EVENT_PEN_BUTTON_UP;
alias SDL_EVENT_PEN_MOTION = SDL_EventType.SDL_EVENT_PEN_MOTION;
alias SDL_EVENT_PEN_AXIS = SDL_EventType.SDL_EVENT_PEN_AXIS;
alias SDL_EVENT_PEN_FIRST = SDL_EventType.SDL_EVENT_PEN_FIRST;
alias SDL_EVENT_PEN_LAST = SDL_EventType.SDL_EVENT_PEN_LAST;
alias SDL_EVENT_CAMERA_DEVICE_ADDED = SDL_EventType.SDL_EVENT_CAMERA_DEVICE_ADDED;
alias SDL_EVENT_CAMERA_DEVICE_REMOVED = SDL_EventType.SDL_EVENT_CAMERA_DEVICE_REMOVED;
alias SDL_EVENT_CAMERA_DEVICE_APPROVED = SDL_EventType.SDL_EVENT_CAMERA_DEVICE_APPROVED;
alias SDL_EVENT_CAMERA_DEVICE_DENIED = SDL_EventType.SDL_EVENT_CAMERA_DEVICE_DENIED;
alias SDL_EVENT_CAMERA_DEVICE_FIRST = SDL_EventType.SDL_EVENT_CAMERA_DEVICE_FIRST;
alias SDL_EVENT_CAMERA_DEVICE_LAST = SDL_EventType.SDL_EVENT_CAMERA_DEVICE_LAST;
alias SDL_EVENT_NOTIFICATION_ACTION_INVOKED = SDL_EventType.SDL_EVENT_NOTIFICATION_ACTION_INVOKED;
alias SDL_EVENT_NOTIFICATION_FIRST = SDL_EventType.SDL_EVENT_NOTIFICATION_FIRST;
alias SDL_EVENT_NOTIFICATION_LAST = SDL_EventType.SDL_EVENT_NOTIFICATION_LAST;
alias SDL_EVENT_RENDER_TARGETS_RESET = SDL_EventType.SDL_EVENT_RENDER_TARGETS_RESET;
alias SDL_EVENT_RENDER_DEVICE_RESET = SDL_EventType.SDL_EVENT_RENDER_DEVICE_RESET;
alias SDL_EVENT_RENDER_DEVICE_LOST = SDL_EventType.SDL_EVENT_RENDER_DEVICE_LOST;
alias SDL_EVENT_RENDER_FIRST = SDL_EventType.SDL_EVENT_RENDER_FIRST;
alias SDL_EVENT_RENDER_LAST = SDL_EventType.SDL_EVENT_RENDER_LAST;
alias SDL_EVENT_PRIVATE0 = SDL_EventType.SDL_EVENT_PRIVATE0;
alias SDL_EVENT_PRIVATE1 = SDL_EventType.SDL_EVENT_PRIVATE1;
alias SDL_EVENT_PRIVATE2 = SDL_EventType.SDL_EVENT_PRIVATE2;
alias SDL_EVENT_PRIVATE3 = SDL_EventType.SDL_EVENT_PRIVATE3;
alias SDL_EVENT_POLL_SENTINEL = SDL_EventType.SDL_EVENT_POLL_SENTINEL;
alias SDL_EVENT_USER = SDL_EventType.SDL_EVENT_USER;
alias SDL_EVENT_LAST = SDL_EventType.SDL_EVENT_LAST;
alias SDL_EVENT_ENUM_PADDING = SDL_EventType.SDL_EVENT_ENUM_PADDING;

struct SDL_CommonEvent
{
    alias Uint32 = uint;
    Uint32 type;
    Uint32 reserved;

    alias Uint64 = ulong;
    Uint64 timestamp;
}

struct SDL_DisplayEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_DisplayID = uint;
    SDL_DisplayID displayID;
    alias Sint32 = int;
    Sint32 data1;
    Sint32 data2;
}

struct SDL_WindowEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_WindowID = uint;
    SDL_WindowID windowID;
    Sint32 data1;
    Sint32 data2;
}

struct SDL_KeyboardDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_KeyboardID = uint;
    SDL_KeyboardID which;
}

struct SDL_KeyboardEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_KeyboardID which;
    SDL_Scancode scancode;
    alias SDL_Keycode = uint;
    SDL_Keycode key;
    alias SDL_Keymod = ushort;
    SDL_Keymod mod;
    alias Uint16 = ushort;
    Uint16 raw;
    bool down;
    bool repeat;
}

struct SDL_TextEditingEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const(char)* text;
    Sint32 start;
    Sint32 length;
}

struct SDL_TextEditingCandidatesEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const(char*)* candidates;
    Sint32 num_candidates;
    Sint32 selected_candidate;
    bool horizontal;
    alias Uint8 = ubyte;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
}

struct SDL_TextInputEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const(char)* text;
}

struct SDL_MouseDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_MouseID = uint;
    SDL_MouseID which;
}

struct SDL_MouseMotionEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    alias SDL_MouseButtonFlags = uint;
    SDL_MouseButtonFlags state;
    float x;
    float y;
    float xrel;
    float yrel;
}

struct SDL_MouseButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    Uint8 button;
    bool down;
    Uint8 clicks;
    Uint8 padding;
    float x;
    float y;
}

struct SDL_MouseWheelEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    float x;
    float y;
    SDL_MouseWheelDirection direction;
    float mouse_x;
    float mouse_y;
    Sint32 integer_x;
    Sint32 integer_y;
}

struct SDL_JoyAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_JoystickID = uint;
    SDL_JoystickID which;
    Uint8 axis;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    alias Sint16 = short;
    Sint16 value;
    Uint16 padding4;
}

struct SDL_JoyBallEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 ball;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 xrel;
    Sint16 yrel;
}

struct SDL_JoyHatEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 hat;
    Uint8 value;

    Uint8 padding1;
    Uint8 padding2;
}

struct SDL_JoyButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 button;
    bool down;
    Uint8 padding1;
    Uint8 padding2;
}

struct SDL_JoyDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
}

struct SDL_JoyBatteryEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    SDL_PowerState state;
    int percent;
}

struct SDL_GamepadAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 axis;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 value;
    Uint16 padding4;
}

struct SDL_GamepadButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 button;
    bool down;
    Uint8 padding1;
    Uint8 padding2;
}

struct SDL_GamepadDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
}

struct SDL_GamepadTouchpadEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Sint32 touchpad;
    Sint32 finger;
    float x;
    float y;
    float pressure;
}

struct SDL_GamepadSensorEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Sint32 sensor;
    float[3] data;
    Uint64 sensor_timestamp;
}

struct SDL_GamepadCapSenseEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 capsense;
    bool down;
    Uint8 padding1;
    Uint8 padding2;
}

struct SDL_AudioDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_AudioDeviceID = uint;
    SDL_AudioDeviceID which;
    bool recording;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
}

struct SDL_CameraDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_CameraID = uint;
    SDL_CameraID which;
}

struct SDL_NotificationEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_NotificationID = uint;
    SDL_NotificationID which;
    const(char)* action_id;
}

struct SDL_RenderEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
}

struct SDL_TouchFingerEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_TouchID = ulong;
    SDL_TouchID touchID;
    alias SDL_FingerID = ulong;
    SDL_FingerID fingerID;
    float x;
    float y;
    float dx;
    float dy;
    float pressure;
    SDL_WindowID windowID;
}

struct SDL_PinchFingerEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    float scale;
    SDL_WindowID windowID;
    float span_x;
    float span_y;
    float focus_x;
    float focus_y;
}

struct SDL_PenProximityEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    alias SDL_PenID = uint;
    SDL_PenID which;
    alias SDL_PenInputFlags = uint;
    SDL_PenInputFlags pen_state;
    SDL_PenDeviceType device_type;
}

struct SDL_PenMotionEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    SDL_PenDeviceType device_type;
}

struct SDL_PenTouchEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    bool eraser;
    bool down;
    SDL_PenDeviceType device_type;
}

struct SDL_PenButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    Uint8 button;
    bool down;
    SDL_PenDeviceType device_type;
}

struct SDL_PenAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    SDL_PenAxis axis;
    float value;
    SDL_PenDeviceType device_type;
}

struct SDL_DropEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    float x;
    float y;
    const(char)* source;
    const(char)* data;
}

struct SDL_ClipboardEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    bool owner;
    Sint32 num_mime_types;
    const(char*)* mime_types;
}

struct SDL_SensorEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    alias SDL_SensorID = uint;
    SDL_SensorID which;
    float[6] data;
    Uint64 sensor_timestamp;
}

struct SDL_QuitEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
}

struct SDL_UserEvent
{
    Uint32 type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    Sint32 code;
    void* data1;
    void* data2;
}

union SDL_Event
{
    Uint32 type;
    SDL_CommonEvent common;
    SDL_DisplayEvent display;
    SDL_WindowEvent window;
    SDL_KeyboardDeviceEvent kdevice;
    SDL_KeyboardEvent key;
    SDL_TextEditingEvent edit;
    SDL_TextEditingCandidatesEvent edit_candidates;
    SDL_TextInputEvent text;
    SDL_MouseDeviceEvent mdevice;
    SDL_MouseMotionEvent motion;
    SDL_MouseButtonEvent button;
    SDL_MouseWheelEvent wheel;
    SDL_JoyDeviceEvent jdevice;
    SDL_JoyAxisEvent jaxis;
    SDL_JoyBallEvent jball;
    SDL_JoyHatEvent jhat;
    SDL_JoyButtonEvent jbutton;
    SDL_JoyBatteryEvent jbattery;
    SDL_GamepadDeviceEvent gdevice;
    SDL_GamepadAxisEvent gaxis;
    SDL_GamepadButtonEvent gbutton;
    SDL_GamepadTouchpadEvent gtouchpad;
    SDL_GamepadSensorEvent gsensor;
    SDL_GamepadCapSenseEvent gcapsense;
    SDL_AudioDeviceEvent adevice;
    SDL_CameraDeviceEvent cdevice;
    SDL_SensorEvent sensor;
    SDL_QuitEvent quit;
    SDL_UserEvent user;
    SDL_TouchFingerEvent tfinger;
    SDL_PinchFingerEvent pinch;
    SDL_PenProximityEvent pproximity;
    SDL_PenTouchEvent ptouch;
    SDL_PenMotionEvent pmotion;
    SDL_PenButtonEvent pbutton;
    SDL_PenAxisEvent paxis;
    SDL_RenderEvent render;
    SDL_DropEvent drop;
    SDL_ClipboardEvent clipboard;
    SDL_NotificationEvent notification;

    Uint8[128] padding;
}

pragma(mangle, "SDL_PumpEvents")
void sdlPumpEvents();

alias SDL_PumpEvents = sdlPumpEvents;

enum SDL_EventAction
{
    SDL_ADDEVENT = 0,
    SDL_PEEKEVENT = 1,
    SDL_GETEVENT = 2
}

alias SDL_ADDEVENT = SDL_EventAction.SDL_ADDEVENT;
alias SDL_PEEKEVENT = SDL_EventAction.SDL_PEEKEVENT;
alias SDL_GETEVENT = SDL_EventAction.SDL_GETEVENT;

pragma(mangle, "SDL_PeepEvents")
int sdlPeepEvents(SDL_Event* events, int numevents, SDL_EventAction action, Uint32 minType, Uint32 maxType);

alias SDL_PeepEvents = sdlPeepEvents;

pragma(mangle, "SDL_HasEvent")
bool sdlHasEvent(Uint32 type);

alias SDL_HasEvent = sdlHasEvent;

pragma(mangle, "SDL_HasEvents")
bool sdlHasEvents(Uint32 minType, Uint32 maxType);

alias SDL_HasEvents = sdlHasEvents;

pragma(mangle, "SDL_FlushEvent")
void sdlFlushEvent(Uint32 type);

alias SDL_FlushEvent = sdlFlushEvent;

pragma(mangle, "SDL_FlushEvents")
void sdlFlushEvents(Uint32 minType, Uint32 maxType);

alias SDL_FlushEvents = sdlFlushEvents;

pragma(mangle, "SDL_PollEvent")
bool sdlPollEvent(SDL_Event* event);

alias SDL_PollEvent = sdlPollEvent;

pragma(mangle, "SDL_WaitEvent")
bool sdlWaitEvent(SDL_Event* event);

alias SDL_WaitEvent = sdlWaitEvent;

pragma(mangle, "SDL_WaitEventTimeout")
bool sdlWaitEventTimeout(SDL_Event* event, Sint32 timeoutMS);

alias SDL_WaitEventTimeout = sdlWaitEventTimeout;

pragma(mangle, "SDL_PushEvent")
bool sdlPushEvent(SDL_Event* event);

alias SDL_PushEvent = sdlPushEvent;

alias SDL_EventFilter = bool function(void* userdata, SDL_Event* event);

pragma(mangle, "SDL_SetEventFilter")
void sdlSetEventFilter(SDL_EventFilter filter, void* userdata);

alias SDL_SetEventFilter = sdlSetEventFilter;

pragma(mangle, "SDL_GetEventFilter")
bool sdlGetEventFilter(SDL_EventFilter* filter, void** userdata);

alias SDL_GetEventFilter = sdlGetEventFilter;

pragma(mangle, "SDL_AddEventWatch")
bool sdlAddEventWatch(SDL_EventFilter filter, void* userdata);

alias SDL_AddEventWatch = sdlAddEventWatch;

pragma(mangle, "SDL_RemoveEventWatch")
void sdlRemoveEventWatch(SDL_EventFilter filter, void* userdata);

alias SDL_RemoveEventWatch = sdlRemoveEventWatch;

pragma(mangle, "SDL_FilterEvents")
void sdlFilterEvents(SDL_EventFilter filter, void* userdata);

alias SDL_FilterEvents = sdlFilterEvents;

pragma(mangle, "SDL_SetEventEnabled")
void sdlSetEventEnabled(Uint32 type, bool enabled);

alias SDL_SetEventEnabled = sdlSetEventEnabled;

pragma(mangle, "SDL_EventEnabled")
bool sdlEventEnabled(Uint32 type);

alias SDL_EventEnabled = sdlEventEnabled;

pragma(mangle, "SDL_RegisterEvents")
Uint32 sdlRegisterEvents(int numevents);

alias SDL_RegisterEvents = sdlRegisterEvents;

pragma(mangle, "SDL_GetWindowFromEvent")
SDL_Window* sdlGetWindowFromEvent(const(SDL_Event)* event);

alias SDL_GetWindowFromEvent = sdlGetWindowFromEvent;

pragma(mangle, "SDL_GetEventDescription")
int sdlGetEventDescription(const(SDL_Event)* event, char* buf, int buflen);

alias SDL_GetEventDescription = sdlGetEventDescription;
