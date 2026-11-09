module libs.raylib.raylib;

import core.stdc.config : c_long;
import core.stdc.stdarg : va_list;

// Generated from raylib_api.json.
// Do not edit by hand; run tools/generate_raylib.ts instead.
//
// C functions are exposed using raylib's rl-prefixed naming convention
// (for example, InitWindow() becomes rlInitWindow()). The original C names
// are provided as aliases.

extern (C):
@nogc nothrow:

struct Vector2 {
    float x;
    float y;
}

struct Vector3 {
    float x;
    float y;
    float z;
}

struct Vector4 {
    float x;
    float y;
    float z;
    float w;
}

struct Matrix {
    float m0;
    float m4;
    float m8;
    float m12;
    float m1;
    float m5;
    float m9;
    float m13;
    float m2;
    float m6;
    float m10;
    float m14;
    float m3;
    float m7;
    float m11;
    float m15;
}

struct Color {
    ubyte r;
    ubyte g;
    ubyte b;
    ubyte a;
}

struct Rectangle {
    float x;
    float y;
    float width;
    float height;
}

struct Image {
    void* data;
    int width;
    int height;
    int mipmaps;
    int format;
}

struct Texture {
    uint id;
    int width;
    int height;
    int mipmaps;
    int format;
}

struct RenderTexture {
    uint id;
    Texture texture;
    Texture depth;
}

struct NPatchInfo {
    Rectangle source;
    int left;
    int top;
    int right;
    int bottom;
    int layout;
}

struct GlyphInfo {
    int value;
    int offsetX;
    int offsetY;
    int advanceX;
    Image image;
}

struct Font {
    int baseSize;
    int glyphCount;
    int glyphPadding;
    Texture2D texture;
    Rectangle* recs;
    GlyphInfo* glyphs;
}

struct Camera3D {
    Vector3 position;
    Vector3 target;
    Vector3 up;
    float fovy;
    int projection;
}

struct Camera2D {
    Vector2 offset;
    Vector2 target;
    float rotation;
    float zoom;
}

struct Mesh {
    int vertexCount;
    int triangleCount;
    float* vertices;
    float* texcoords;
    float* texcoords2;
    float* normals;
    float* tangents;
    ubyte* colors;
    ushort* indices;
    int boneCount;
    ubyte* boneIndices;
    float* boneWeights;
    float* animVertices;
    float* animNormals;
    uint vaoId;
    uint* vboId;
}

struct Shader {
    uint id;
    int* locs;
}

struct MaterialMap {
    Texture2D texture;
    Color color;
    float value;
}

struct Material {
    Shader shader;
    MaterialMap* maps;
    float[4] params;
}

struct Transform {
    Vector3 translation;
    Quaternion rotation;
    Vector3 scale;
}

struct BoneInfo {
    char[32] name;
    int parent;
}

struct ModelSkeleton {
    uint boneCount;
    BoneInfo* bones;
    ModelAnimPose bindPose;
}

struct Model {
    Matrix transform;
    int meshCount;
    int materialCount;
    Mesh* meshes;
    Material* materials;
    int* meshMaterial;
    ModelSkeleton skeleton;
    ModelAnimPose currentPose;
    Matrix* boneMatrices;
}

struct ModelAnimation {
    char[32] name;
    uint boneCount;
    int keyframeCount;
    ModelAnimPose* keyframePoses;
}

struct Ray {
    Vector3 position;
    Vector3 direction;
}

struct RayCollision {
    bool hit;
    float distance;
    Vector3 point;
    Vector3 normal;
}

struct BoundingBox {
    Vector3 min;
    Vector3 max;
}

struct Wave {
    uint frameCount;
    uint sampleRate;
    uint sampleSize;
    uint channels;
    void* data;
}

struct AudioStream {
    RAudioBuffer* buffer;
    RAudioProcessor* processor;
    uint sampleRate;
    uint sampleSize;
    uint channels;
}

struct Sound {
    AudioStream stream;
    uint frameCount;
}

struct Music {
    AudioStream stream;
    uint frameCount;
    bool looping;
    int ctxType;
    void* ctxData;
}

struct VrDeviceInfo {
    int hResolution;
    int vResolution;
    float hScreenSize;
    float vScreenSize;
    float eyeToScreenDistance;
    float lensSeparationDistance;
    float interpupillaryDistance;
    float[4] lensDistortionValues;
    float[4] chromaAbCorrection;
}

struct VrStereoConfig {
    Matrix[2] projection;
    Matrix[2] viewOffset;
    float[2] leftLensCenter;
    float[2] rightLensCenter;
    float[2] leftScreenCenter;
    float[2] rightScreenCenter;
    float[2] scale;
    float[2] scaleIn;
}

struct FilePathList {
    uint count;
    char** paths;
}

struct AutomationEvent {
    uint frame;
    uint type;
    int[4] params;
}

struct AutomationEventList {
    uint capacity;
    uint count;
    AutomationEvent* events;
}

struct RAudioBuffer;

struct RAudioProcessor;

alias Quaternion = Vector4;

alias Texture2D = Texture;

alias TextureCubemap = Texture;

alias RenderTexture2D = RenderTexture;

alias Camera = Camera3D;

alias ModelAnimPose = Transform*;

alias TraceLogCallback = extern (C) void function(int logLevel, const(char)* text, va_list args) @nogc nothrow;

alias LoadFileDataCallback = extern (C) ubyte* function(const(char)* fileName, int* dataSize) @nogc nothrow;

alias SaveFileDataCallback = extern (C) bool function(const(char)* fileName, const(void)* data, int dataSize) @nogc nothrow;

alias LoadFileTextCallback = extern (C) char* function(const(char)* fileName) @nogc nothrow;

alias SaveFileTextCallback = extern (C) bool function(const(char)* fileName, const(char)* text) @nogc nothrow;

alias AudioCallback = extern (C) void function(void* bufferData, uint frames) @nogc nothrow;

enum int RAYLIB_VERSION_MAJOR = 6;
enum int RAYLIB_VERSION_MINOR = 5;
enum int RAYLIB_VERSION_PATCH = 0;
enum string RAYLIB_VERSION = "6.5-dev";
enum double PI = 3.141592653589793;
enum float DEG2RAD = cast(float)(PI / 180.0);
enum float RAD2DEG = cast(float)(180.0 / PI);
enum Color LIGHTGRAY = Color(200, 200, 200, 255);
enum Color GRAY = Color(130, 130, 130, 255);
enum Color DARKGRAY = Color(80, 80, 80, 255);
enum Color YELLOW = Color(253, 249, 0, 255);
enum Color GOLD = Color(255, 203, 0, 255);
enum Color ORANGE = Color(255, 161, 0, 255);
enum Color PINK = Color(255, 109, 194, 255);
enum Color RED = Color(230, 41, 55, 255);
enum Color MAROON = Color(190, 33, 55, 255);
enum Color GREEN = Color(0, 228, 48, 255);
enum Color LIME = Color(0, 158, 47, 255);
enum Color DARKGREEN = Color(0, 117, 44, 255);
enum Color SKYBLUE = Color(102, 191, 255, 255);
enum Color BLUE = Color(0, 121, 241, 255);
enum Color DARKBLUE = Color(0, 82, 172, 255);
enum Color PURPLE = Color(200, 122, 255, 255);
enum Color VIOLET = Color(135, 60, 190, 255);
enum Color DARKPURPLE = Color(112, 31, 126, 255);
enum Color BEIGE = Color(211, 176, 131, 255);
enum Color BROWN = Color(127, 106, 79, 255);
enum Color DARKBROWN = Color(76, 63, 47, 255);
enum Color WHITE = Color(255, 255, 255, 255);
enum Color BLACK = Color(0, 0, 0, 255);
enum Color BLANK = Color(0, 0, 0, 0);
enum Color MAGENTA = Color(255, 0, 255, 255);
enum Color RAYWHITE = Color(245, 245, 245, 255);
alias MOUSE_LEFT_BUTTON = MouseButton.MOUSE_BUTTON_LEFT;
alias MOUSE_RIGHT_BUTTON = MouseButton.MOUSE_BUTTON_RIGHT;
alias MOUSE_MIDDLE_BUTTON = MouseButton.MOUSE_BUTTON_MIDDLE;
alias MATERIAL_MAP_DIFFUSE = MaterialMapIndex.MATERIAL_MAP_ALBEDO;
alias MATERIAL_MAP_SPECULAR = MaterialMapIndex.MATERIAL_MAP_METALNESS;
alias SHADER_LOC_MAP_DIFFUSE = ShaderLocationIndex.SHADER_LOC_MAP_ALBEDO;
alias SHADER_LOC_MAP_SPECULAR = ShaderLocationIndex.SHADER_LOC_MAP_METALNESS;

enum ConfigFlags {
    FLAG_VSYNC_HINT = 64,
    FLAG_FULLSCREEN_MODE = 2,
    FLAG_WINDOW_RESIZABLE = 4,
    FLAG_WINDOW_UNDECORATED = 8,
    FLAG_WINDOW_HIDDEN = 128,
    FLAG_WINDOW_MINIMIZED = 512,
    FLAG_WINDOW_MAXIMIZED = 1024,
    FLAG_WINDOW_UNFOCUSED = 2048,
    FLAG_WINDOW_TOPMOST = 4096,
    FLAG_WINDOW_ALWAYS_RUN = 256,
    FLAG_WINDOW_TRANSPARENT = 16,
    FLAG_WINDOW_HIGHDPI = 8192,
    FLAG_WINDOW_MOUSE_PASSTHROUGH = 16_384,
    FLAG_BORDERLESS_WINDOWED_MODE = 32_768,
    FLAG_MSAA_4X_HINT = 32,
    FLAG_INTERLACED_HINT = 65_536,
}

alias FLAG_VSYNC_HINT = ConfigFlags.FLAG_VSYNC_HINT;
alias FLAG_FULLSCREEN_MODE = ConfigFlags.FLAG_FULLSCREEN_MODE;
alias FLAG_WINDOW_RESIZABLE = ConfigFlags.FLAG_WINDOW_RESIZABLE;
alias FLAG_WINDOW_UNDECORATED = ConfigFlags.FLAG_WINDOW_UNDECORATED;
alias FLAG_WINDOW_HIDDEN = ConfigFlags.FLAG_WINDOW_HIDDEN;
alias FLAG_WINDOW_MINIMIZED = ConfigFlags.FLAG_WINDOW_MINIMIZED;
alias FLAG_WINDOW_MAXIMIZED = ConfigFlags.FLAG_WINDOW_MAXIMIZED;
alias FLAG_WINDOW_UNFOCUSED = ConfigFlags.FLAG_WINDOW_UNFOCUSED;
alias FLAG_WINDOW_TOPMOST = ConfigFlags.FLAG_WINDOW_TOPMOST;
alias FLAG_WINDOW_ALWAYS_RUN = ConfigFlags.FLAG_WINDOW_ALWAYS_RUN;
alias FLAG_WINDOW_TRANSPARENT = ConfigFlags.FLAG_WINDOW_TRANSPARENT;
alias FLAG_WINDOW_HIGHDPI = ConfigFlags.FLAG_WINDOW_HIGHDPI;
alias FLAG_WINDOW_MOUSE_PASSTHROUGH = ConfigFlags.FLAG_WINDOW_MOUSE_PASSTHROUGH;
alias FLAG_BORDERLESS_WINDOWED_MODE = ConfigFlags.FLAG_BORDERLESS_WINDOWED_MODE;
alias FLAG_MSAA_4X_HINT = ConfigFlags.FLAG_MSAA_4X_HINT;
alias FLAG_INTERLACED_HINT = ConfigFlags.FLAG_INTERLACED_HINT;

enum TraceLogLevel {
    LOG_ALL = 0,
    LOG_TRACE = 1,
    LOG_DEBUG = 2,
    LOG_INFO = 3,
    LOG_WARNING = 4,
    LOG_ERROR = 5,
    LOG_FATAL = 6,
    LOG_NONE = 7,
}

alias LOG_ALL = TraceLogLevel.LOG_ALL;
alias LOG_TRACE = TraceLogLevel.LOG_TRACE;
alias LOG_DEBUG = TraceLogLevel.LOG_DEBUG;
alias LOG_INFO = TraceLogLevel.LOG_INFO;
alias LOG_WARNING = TraceLogLevel.LOG_WARNING;
alias LOG_ERROR = TraceLogLevel.LOG_ERROR;
alias LOG_FATAL = TraceLogLevel.LOG_FATAL;
alias LOG_NONE = TraceLogLevel.LOG_NONE;

enum KeyboardKey {
    KEY_NULL = 0,
    KEY_APOSTROPHE = 39,
    KEY_COMMA = 44,
    KEY_MINUS = 45,
    KEY_PERIOD = 46,
    KEY_SLASH = 47,
    KEY_ZERO = 48,
    KEY_ONE = 49,
    KEY_TWO = 50,
    KEY_THREE = 51,
    KEY_FOUR = 52,
    KEY_FIVE = 53,
    KEY_SIX = 54,
    KEY_SEVEN = 55,
    KEY_EIGHT = 56,
    KEY_NINE = 57,
    KEY_SEMICOLON = 59,
    KEY_EQUAL = 61,
    KEY_A = 65,
    KEY_B = 66,
    KEY_C = 67,
    KEY_D = 68,
    KEY_E = 69,
    KEY_F = 70,
    KEY_G = 71,
    KEY_H = 72,
    KEY_I = 73,
    KEY_J = 74,
    KEY_K = 75,
    KEY_L = 76,
    KEY_M = 77,
    KEY_N = 78,
    KEY_O = 79,
    KEY_P = 80,
    KEY_Q = 81,
    KEY_R = 82,
    KEY_S = 83,
    KEY_T = 84,
    KEY_U = 85,
    KEY_V = 86,
    KEY_W = 87,
    KEY_X = 88,
    KEY_Y = 89,
    KEY_Z = 90,
    KEY_LEFT_BRACKET = 91,
    KEY_BACKSLASH = 92,
    KEY_RIGHT_BRACKET = 93,
    KEY_GRAVE = 96,
    KEY_SPACE = 32,
    KEY_ESCAPE = 256,
    KEY_ENTER = 257,
    KEY_TAB = 258,
    KEY_BACKSPACE = 259,
    KEY_INSERT = 260,
    KEY_DELETE = 261,
    KEY_RIGHT = 262,
    KEY_LEFT = 263,
    KEY_DOWN = 264,
    KEY_UP = 265,
    KEY_PAGE_UP = 266,
    KEY_PAGE_DOWN = 267,
    KEY_HOME = 268,
    KEY_END = 269,
    KEY_CAPS_LOCK = 280,
    KEY_SCROLL_LOCK = 281,
    KEY_NUM_LOCK = 282,
    KEY_PRINT_SCREEN = 283,
    KEY_PAUSE = 284,
    KEY_F1 = 290,
    KEY_F2 = 291,
    KEY_F3 = 292,
    KEY_F4 = 293,
    KEY_F5 = 294,
    KEY_F6 = 295,
    KEY_F7 = 296,
    KEY_F8 = 297,
    KEY_F9 = 298,
    KEY_F10 = 299,
    KEY_F11 = 300,
    KEY_F12 = 301,
    KEY_LEFT_SHIFT = 340,
    KEY_LEFT_CONTROL = 341,
    KEY_LEFT_ALT = 342,
    KEY_LEFT_SUPER = 343,
    KEY_RIGHT_SHIFT = 344,
    KEY_RIGHT_CONTROL = 345,
    KEY_RIGHT_ALT = 346,
    KEY_RIGHT_SUPER = 347,
    KEY_KB_MENU = 348,
    KEY_KP_0 = 320,
    KEY_KP_1 = 321,
    KEY_KP_2 = 322,
    KEY_KP_3 = 323,
    KEY_KP_4 = 324,
    KEY_KP_5 = 325,
    KEY_KP_6 = 326,
    KEY_KP_7 = 327,
    KEY_KP_8 = 328,
    KEY_KP_9 = 329,
    KEY_KP_DECIMAL = 330,
    KEY_KP_DIVIDE = 331,
    KEY_KP_MULTIPLY = 332,
    KEY_KP_SUBTRACT = 333,
    KEY_KP_ADD = 334,
    KEY_KP_ENTER = 335,
    KEY_KP_EQUAL = 336,
    KEY_BACK = 4,
    KEY_MENU = 5,
    KEY_VOLUME_UP = 24,
    KEY_VOLUME_DOWN = 25,
}

alias KEY_NULL = KeyboardKey.KEY_NULL;
alias KEY_APOSTROPHE = KeyboardKey.KEY_APOSTROPHE;
alias KEY_COMMA = KeyboardKey.KEY_COMMA;
alias KEY_MINUS = KeyboardKey.KEY_MINUS;
alias KEY_PERIOD = KeyboardKey.KEY_PERIOD;
alias KEY_SLASH = KeyboardKey.KEY_SLASH;
alias KEY_ZERO = KeyboardKey.KEY_ZERO;
alias KEY_ONE = KeyboardKey.KEY_ONE;
alias KEY_TWO = KeyboardKey.KEY_TWO;
alias KEY_THREE = KeyboardKey.KEY_THREE;
alias KEY_FOUR = KeyboardKey.KEY_FOUR;
alias KEY_FIVE = KeyboardKey.KEY_FIVE;
alias KEY_SIX = KeyboardKey.KEY_SIX;
alias KEY_SEVEN = KeyboardKey.KEY_SEVEN;
alias KEY_EIGHT = KeyboardKey.KEY_EIGHT;
alias KEY_NINE = KeyboardKey.KEY_NINE;
alias KEY_SEMICOLON = KeyboardKey.KEY_SEMICOLON;
alias KEY_EQUAL = KeyboardKey.KEY_EQUAL;
alias KEY_A = KeyboardKey.KEY_A;
alias KEY_B = KeyboardKey.KEY_B;
alias KEY_C = KeyboardKey.KEY_C;
alias KEY_D = KeyboardKey.KEY_D;
alias KEY_E = KeyboardKey.KEY_E;
alias KEY_F = KeyboardKey.KEY_F;
alias KEY_G = KeyboardKey.KEY_G;
alias KEY_H = KeyboardKey.KEY_H;
alias KEY_I = KeyboardKey.KEY_I;
alias KEY_J = KeyboardKey.KEY_J;
alias KEY_K = KeyboardKey.KEY_K;
alias KEY_L = KeyboardKey.KEY_L;
alias KEY_M = KeyboardKey.KEY_M;
alias KEY_N = KeyboardKey.KEY_N;
alias KEY_O = KeyboardKey.KEY_O;
alias KEY_P = KeyboardKey.KEY_P;
alias KEY_Q = KeyboardKey.KEY_Q;
alias KEY_R = KeyboardKey.KEY_R;
alias KEY_S = KeyboardKey.KEY_S;
alias KEY_T = KeyboardKey.KEY_T;
alias KEY_U = KeyboardKey.KEY_U;
alias KEY_V = KeyboardKey.KEY_V;
alias KEY_W = KeyboardKey.KEY_W;
alias KEY_X = KeyboardKey.KEY_X;
alias KEY_Y = KeyboardKey.KEY_Y;
alias KEY_Z = KeyboardKey.KEY_Z;
alias KEY_LEFT_BRACKET = KeyboardKey.KEY_LEFT_BRACKET;
alias KEY_BACKSLASH = KeyboardKey.KEY_BACKSLASH;
alias KEY_RIGHT_BRACKET = KeyboardKey.KEY_RIGHT_BRACKET;
alias KEY_GRAVE = KeyboardKey.KEY_GRAVE;
alias KEY_SPACE = KeyboardKey.KEY_SPACE;
alias KEY_ESCAPE = KeyboardKey.KEY_ESCAPE;
alias KEY_ENTER = KeyboardKey.KEY_ENTER;
alias KEY_TAB = KeyboardKey.KEY_TAB;
alias KEY_BACKSPACE = KeyboardKey.KEY_BACKSPACE;
alias KEY_INSERT = KeyboardKey.KEY_INSERT;
alias KEY_DELETE = KeyboardKey.KEY_DELETE;
alias KEY_RIGHT = KeyboardKey.KEY_RIGHT;
alias KEY_LEFT = KeyboardKey.KEY_LEFT;
alias KEY_DOWN = KeyboardKey.KEY_DOWN;
alias KEY_UP = KeyboardKey.KEY_UP;
alias KEY_PAGE_UP = KeyboardKey.KEY_PAGE_UP;
alias KEY_PAGE_DOWN = KeyboardKey.KEY_PAGE_DOWN;
alias KEY_HOME = KeyboardKey.KEY_HOME;
alias KEY_END = KeyboardKey.KEY_END;
alias KEY_CAPS_LOCK = KeyboardKey.KEY_CAPS_LOCK;
alias KEY_SCROLL_LOCK = KeyboardKey.KEY_SCROLL_LOCK;
alias KEY_NUM_LOCK = KeyboardKey.KEY_NUM_LOCK;
alias KEY_PRINT_SCREEN = KeyboardKey.KEY_PRINT_SCREEN;
alias KEY_PAUSE = KeyboardKey.KEY_PAUSE;
alias KEY_F1 = KeyboardKey.KEY_F1;
alias KEY_F2 = KeyboardKey.KEY_F2;
alias KEY_F3 = KeyboardKey.KEY_F3;
alias KEY_F4 = KeyboardKey.KEY_F4;
alias KEY_F5 = KeyboardKey.KEY_F5;
alias KEY_F6 = KeyboardKey.KEY_F6;
alias KEY_F7 = KeyboardKey.KEY_F7;
alias KEY_F8 = KeyboardKey.KEY_F8;
alias KEY_F9 = KeyboardKey.KEY_F9;
alias KEY_F10 = KeyboardKey.KEY_F10;
alias KEY_F11 = KeyboardKey.KEY_F11;
alias KEY_F12 = KeyboardKey.KEY_F12;
alias KEY_LEFT_SHIFT = KeyboardKey.KEY_LEFT_SHIFT;
alias KEY_LEFT_CONTROL = KeyboardKey.KEY_LEFT_CONTROL;
alias KEY_LEFT_ALT = KeyboardKey.KEY_LEFT_ALT;
alias KEY_LEFT_SUPER = KeyboardKey.KEY_LEFT_SUPER;
alias KEY_RIGHT_SHIFT = KeyboardKey.KEY_RIGHT_SHIFT;
alias KEY_RIGHT_CONTROL = KeyboardKey.KEY_RIGHT_CONTROL;
alias KEY_RIGHT_ALT = KeyboardKey.KEY_RIGHT_ALT;
alias KEY_RIGHT_SUPER = KeyboardKey.KEY_RIGHT_SUPER;
alias KEY_KB_MENU = KeyboardKey.KEY_KB_MENU;
alias KEY_KP_0 = KeyboardKey.KEY_KP_0;
alias KEY_KP_1 = KeyboardKey.KEY_KP_1;
alias KEY_KP_2 = KeyboardKey.KEY_KP_2;
alias KEY_KP_3 = KeyboardKey.KEY_KP_3;
alias KEY_KP_4 = KeyboardKey.KEY_KP_4;
alias KEY_KP_5 = KeyboardKey.KEY_KP_5;
alias KEY_KP_6 = KeyboardKey.KEY_KP_6;
alias KEY_KP_7 = KeyboardKey.KEY_KP_7;
alias KEY_KP_8 = KeyboardKey.KEY_KP_8;
alias KEY_KP_9 = KeyboardKey.KEY_KP_9;
alias KEY_KP_DECIMAL = KeyboardKey.KEY_KP_DECIMAL;
alias KEY_KP_DIVIDE = KeyboardKey.KEY_KP_DIVIDE;
alias KEY_KP_MULTIPLY = KeyboardKey.KEY_KP_MULTIPLY;
alias KEY_KP_SUBTRACT = KeyboardKey.KEY_KP_SUBTRACT;
alias KEY_KP_ADD = KeyboardKey.KEY_KP_ADD;
alias KEY_KP_ENTER = KeyboardKey.KEY_KP_ENTER;
alias KEY_KP_EQUAL = KeyboardKey.KEY_KP_EQUAL;
alias KEY_BACK = KeyboardKey.KEY_BACK;
alias KEY_MENU = KeyboardKey.KEY_MENU;
alias KEY_VOLUME_UP = KeyboardKey.KEY_VOLUME_UP;
alias KEY_VOLUME_DOWN = KeyboardKey.KEY_VOLUME_DOWN;

enum MouseButton {
    MOUSE_BUTTON_LEFT = 0,
    MOUSE_BUTTON_RIGHT = 1,
    MOUSE_BUTTON_MIDDLE = 2,
    MOUSE_BUTTON_SIDE = 3,
    MOUSE_BUTTON_EXTRA = 4,
    MOUSE_BUTTON_FORWARD = 5,
    MOUSE_BUTTON_BACK = 6,
}

alias MOUSE_BUTTON_LEFT = MouseButton.MOUSE_BUTTON_LEFT;
alias MOUSE_BUTTON_RIGHT = MouseButton.MOUSE_BUTTON_RIGHT;
alias MOUSE_BUTTON_MIDDLE = MouseButton.MOUSE_BUTTON_MIDDLE;
alias MOUSE_BUTTON_SIDE = MouseButton.MOUSE_BUTTON_SIDE;
alias MOUSE_BUTTON_EXTRA = MouseButton.MOUSE_BUTTON_EXTRA;
alias MOUSE_BUTTON_FORWARD = MouseButton.MOUSE_BUTTON_FORWARD;
alias MOUSE_BUTTON_BACK = MouseButton.MOUSE_BUTTON_BACK;

enum MouseCursor {
    MOUSE_CURSOR_DEFAULT = 0,
    MOUSE_CURSOR_ARROW = 1,
    MOUSE_CURSOR_IBEAM = 2,
    MOUSE_CURSOR_CROSSHAIR = 3,
    MOUSE_CURSOR_POINTING_HAND = 4,
    MOUSE_CURSOR_RESIZE_EW = 5,
    MOUSE_CURSOR_RESIZE_NS = 6,
    MOUSE_CURSOR_RESIZE_NWSE = 7,
    MOUSE_CURSOR_RESIZE_NESW = 8,
    MOUSE_CURSOR_RESIZE_ALL = 9,
    MOUSE_CURSOR_NOT_ALLOWED = 10,
}

alias MOUSE_CURSOR_DEFAULT = MouseCursor.MOUSE_CURSOR_DEFAULT;
alias MOUSE_CURSOR_ARROW = MouseCursor.MOUSE_CURSOR_ARROW;
alias MOUSE_CURSOR_IBEAM = MouseCursor.MOUSE_CURSOR_IBEAM;
alias MOUSE_CURSOR_CROSSHAIR = MouseCursor.MOUSE_CURSOR_CROSSHAIR;
alias MOUSE_CURSOR_POINTING_HAND = MouseCursor.MOUSE_CURSOR_POINTING_HAND;
alias MOUSE_CURSOR_RESIZE_EW = MouseCursor.MOUSE_CURSOR_RESIZE_EW;
alias MOUSE_CURSOR_RESIZE_NS = MouseCursor.MOUSE_CURSOR_RESIZE_NS;
alias MOUSE_CURSOR_RESIZE_NWSE = MouseCursor.MOUSE_CURSOR_RESIZE_NWSE;
alias MOUSE_CURSOR_RESIZE_NESW = MouseCursor.MOUSE_CURSOR_RESIZE_NESW;
alias MOUSE_CURSOR_RESIZE_ALL = MouseCursor.MOUSE_CURSOR_RESIZE_ALL;
alias MOUSE_CURSOR_NOT_ALLOWED = MouseCursor.MOUSE_CURSOR_NOT_ALLOWED;

enum GamepadButton {
    GAMEPAD_BUTTON_UNKNOWN = 0,
    GAMEPAD_BUTTON_LEFT_FACE_UP = 1,
    GAMEPAD_BUTTON_LEFT_FACE_RIGHT = 2,
    GAMEPAD_BUTTON_LEFT_FACE_DOWN = 3,
    GAMEPAD_BUTTON_LEFT_FACE_LEFT = 4,
    GAMEPAD_BUTTON_RIGHT_FACE_UP = 5,
    GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = 6,
    GAMEPAD_BUTTON_RIGHT_FACE_DOWN = 7,
    GAMEPAD_BUTTON_RIGHT_FACE_LEFT = 8,
    GAMEPAD_BUTTON_LEFT_TRIGGER_1 = 9,
    GAMEPAD_BUTTON_LEFT_TRIGGER_2 = 10,
    GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = 11,
    GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = 12,
    GAMEPAD_BUTTON_MIDDLE_LEFT = 13,
    GAMEPAD_BUTTON_MIDDLE = 14,
    GAMEPAD_BUTTON_MIDDLE_RIGHT = 15,
    GAMEPAD_BUTTON_LEFT_THUMB = 16,
    GAMEPAD_BUTTON_RIGHT_THUMB = 17,
}

alias GAMEPAD_BUTTON_UNKNOWN = GamepadButton.GAMEPAD_BUTTON_UNKNOWN;
alias GAMEPAD_BUTTON_LEFT_FACE_UP = GamepadButton.GAMEPAD_BUTTON_LEFT_FACE_UP;
alias GAMEPAD_BUTTON_LEFT_FACE_RIGHT = GamepadButton.GAMEPAD_BUTTON_LEFT_FACE_RIGHT;
alias GAMEPAD_BUTTON_LEFT_FACE_DOWN = GamepadButton.GAMEPAD_BUTTON_LEFT_FACE_DOWN;
alias GAMEPAD_BUTTON_LEFT_FACE_LEFT = GamepadButton.GAMEPAD_BUTTON_LEFT_FACE_LEFT;
alias GAMEPAD_BUTTON_RIGHT_FACE_UP = GamepadButton.GAMEPAD_BUTTON_RIGHT_FACE_UP;
alias GAMEPAD_BUTTON_RIGHT_FACE_RIGHT = GamepadButton.GAMEPAD_BUTTON_RIGHT_FACE_RIGHT;
alias GAMEPAD_BUTTON_RIGHT_FACE_DOWN = GamepadButton.GAMEPAD_BUTTON_RIGHT_FACE_DOWN;
alias GAMEPAD_BUTTON_RIGHT_FACE_LEFT = GamepadButton.GAMEPAD_BUTTON_RIGHT_FACE_LEFT;
alias GAMEPAD_BUTTON_LEFT_TRIGGER_1 = GamepadButton.GAMEPAD_BUTTON_LEFT_TRIGGER_1;
alias GAMEPAD_BUTTON_LEFT_TRIGGER_2 = GamepadButton.GAMEPAD_BUTTON_LEFT_TRIGGER_2;
alias GAMEPAD_BUTTON_RIGHT_TRIGGER_1 = GamepadButton.GAMEPAD_BUTTON_RIGHT_TRIGGER_1;
alias GAMEPAD_BUTTON_RIGHT_TRIGGER_2 = GamepadButton.GAMEPAD_BUTTON_RIGHT_TRIGGER_2;
alias GAMEPAD_BUTTON_MIDDLE_LEFT = GamepadButton.GAMEPAD_BUTTON_MIDDLE_LEFT;
alias GAMEPAD_BUTTON_MIDDLE = GamepadButton.GAMEPAD_BUTTON_MIDDLE;
alias GAMEPAD_BUTTON_MIDDLE_RIGHT = GamepadButton.GAMEPAD_BUTTON_MIDDLE_RIGHT;
alias GAMEPAD_BUTTON_LEFT_THUMB = GamepadButton.GAMEPAD_BUTTON_LEFT_THUMB;
alias GAMEPAD_BUTTON_RIGHT_THUMB = GamepadButton.GAMEPAD_BUTTON_RIGHT_THUMB;

enum GamepadAxis {
    GAMEPAD_AXIS_LEFT_X = 0,
    GAMEPAD_AXIS_LEFT_Y = 1,
    GAMEPAD_AXIS_RIGHT_X = 2,
    GAMEPAD_AXIS_RIGHT_Y = 3,
    GAMEPAD_AXIS_LEFT_TRIGGER = 4,
    GAMEPAD_AXIS_RIGHT_TRIGGER = 5,
}

alias GAMEPAD_AXIS_LEFT_X = GamepadAxis.GAMEPAD_AXIS_LEFT_X;
alias GAMEPAD_AXIS_LEFT_Y = GamepadAxis.GAMEPAD_AXIS_LEFT_Y;
alias GAMEPAD_AXIS_RIGHT_X = GamepadAxis.GAMEPAD_AXIS_RIGHT_X;
alias GAMEPAD_AXIS_RIGHT_Y = GamepadAxis.GAMEPAD_AXIS_RIGHT_Y;
alias GAMEPAD_AXIS_LEFT_TRIGGER = GamepadAxis.GAMEPAD_AXIS_LEFT_TRIGGER;
alias GAMEPAD_AXIS_RIGHT_TRIGGER = GamepadAxis.GAMEPAD_AXIS_RIGHT_TRIGGER;

enum MaterialMapIndex {
    MATERIAL_MAP_ALBEDO = 0,
    MATERIAL_MAP_METALNESS = 1,
    MATERIAL_MAP_NORMAL = 2,
    MATERIAL_MAP_ROUGHNESS = 3,
    MATERIAL_MAP_OCCLUSION = 4,
    MATERIAL_MAP_EMISSION = 5,
    MATERIAL_MAP_HEIGHT = 6,
    MATERIAL_MAP_CUBEMAP = 7,
    MATERIAL_MAP_IRRADIANCE = 8,
    MATERIAL_MAP_PREFILTER = 9,
    MATERIAL_MAP_BRDF = 10,
}

alias MATERIAL_MAP_ALBEDO = MaterialMapIndex.MATERIAL_MAP_ALBEDO;
alias MATERIAL_MAP_METALNESS = MaterialMapIndex.MATERIAL_MAP_METALNESS;
alias MATERIAL_MAP_NORMAL = MaterialMapIndex.MATERIAL_MAP_NORMAL;
alias MATERIAL_MAP_ROUGHNESS = MaterialMapIndex.MATERIAL_MAP_ROUGHNESS;
alias MATERIAL_MAP_OCCLUSION = MaterialMapIndex.MATERIAL_MAP_OCCLUSION;
alias MATERIAL_MAP_EMISSION = MaterialMapIndex.MATERIAL_MAP_EMISSION;
alias MATERIAL_MAP_HEIGHT = MaterialMapIndex.MATERIAL_MAP_HEIGHT;
alias MATERIAL_MAP_CUBEMAP = MaterialMapIndex.MATERIAL_MAP_CUBEMAP;
alias MATERIAL_MAP_IRRADIANCE = MaterialMapIndex.MATERIAL_MAP_IRRADIANCE;
alias MATERIAL_MAP_PREFILTER = MaterialMapIndex.MATERIAL_MAP_PREFILTER;
alias MATERIAL_MAP_BRDF = MaterialMapIndex.MATERIAL_MAP_BRDF;

enum ShaderLocationIndex {
    SHADER_LOC_VERTEX_POSITION = 0,
    SHADER_LOC_VERTEX_TEXCOORD01 = 1,
    SHADER_LOC_VERTEX_TEXCOORD02 = 2,
    SHADER_LOC_VERTEX_NORMAL = 3,
    SHADER_LOC_VERTEX_TANGENT = 4,
    SHADER_LOC_VERTEX_COLOR = 5,
    SHADER_LOC_MATRIX_MVP = 6,
    SHADER_LOC_MATRIX_VIEW = 7,
    SHADER_LOC_MATRIX_PROJECTION = 8,
    SHADER_LOC_MATRIX_MODEL = 9,
    SHADER_LOC_MATRIX_NORMAL = 10,
    SHADER_LOC_VECTOR_VIEW = 11,
    SHADER_LOC_COLOR_DIFFUSE = 12,
    SHADER_LOC_COLOR_SPECULAR = 13,
    SHADER_LOC_COLOR_AMBIENT = 14,
    SHADER_LOC_MAP_ALBEDO = 15,
    SHADER_LOC_MAP_METALNESS = 16,
    SHADER_LOC_MAP_NORMAL = 17,
    SHADER_LOC_MAP_ROUGHNESS = 18,
    SHADER_LOC_MAP_OCCLUSION = 19,
    SHADER_LOC_MAP_EMISSION = 20,
    SHADER_LOC_MAP_HEIGHT = 21,
    SHADER_LOC_MAP_CUBEMAP = 22,
    SHADER_LOC_MAP_IRRADIANCE = 23,
    SHADER_LOC_MAP_PREFILTER = 24,
    SHADER_LOC_MAP_BRDF = 25,
    SHADER_LOC_VERTEX_BONEIDS = 26,
    SHADER_LOC_VERTEX_BONEWEIGHTS = 27,
    SHADER_LOC_MATRIX_BONETRANSFORMS = 28,
    SHADER_LOC_VERTEX_INSTANCETRANSFORM = 29,
}

alias SHADER_LOC_VERTEX_POSITION = ShaderLocationIndex.SHADER_LOC_VERTEX_POSITION;
alias SHADER_LOC_VERTEX_TEXCOORD01 = ShaderLocationIndex.SHADER_LOC_VERTEX_TEXCOORD01;
alias SHADER_LOC_VERTEX_TEXCOORD02 = ShaderLocationIndex.SHADER_LOC_VERTEX_TEXCOORD02;
alias SHADER_LOC_VERTEX_NORMAL = ShaderLocationIndex.SHADER_LOC_VERTEX_NORMAL;
alias SHADER_LOC_VERTEX_TANGENT = ShaderLocationIndex.SHADER_LOC_VERTEX_TANGENT;
alias SHADER_LOC_VERTEX_COLOR = ShaderLocationIndex.SHADER_LOC_VERTEX_COLOR;
alias SHADER_LOC_MATRIX_MVP = ShaderLocationIndex.SHADER_LOC_MATRIX_MVP;
alias SHADER_LOC_MATRIX_VIEW = ShaderLocationIndex.SHADER_LOC_MATRIX_VIEW;
alias SHADER_LOC_MATRIX_PROJECTION = ShaderLocationIndex.SHADER_LOC_MATRIX_PROJECTION;
alias SHADER_LOC_MATRIX_MODEL = ShaderLocationIndex.SHADER_LOC_MATRIX_MODEL;
alias SHADER_LOC_MATRIX_NORMAL = ShaderLocationIndex.SHADER_LOC_MATRIX_NORMAL;
alias SHADER_LOC_VECTOR_VIEW = ShaderLocationIndex.SHADER_LOC_VECTOR_VIEW;
alias SHADER_LOC_COLOR_DIFFUSE = ShaderLocationIndex.SHADER_LOC_COLOR_DIFFUSE;
alias SHADER_LOC_COLOR_SPECULAR = ShaderLocationIndex.SHADER_LOC_COLOR_SPECULAR;
alias SHADER_LOC_COLOR_AMBIENT = ShaderLocationIndex.SHADER_LOC_COLOR_AMBIENT;
alias SHADER_LOC_MAP_ALBEDO = ShaderLocationIndex.SHADER_LOC_MAP_ALBEDO;
alias SHADER_LOC_MAP_METALNESS = ShaderLocationIndex.SHADER_LOC_MAP_METALNESS;
alias SHADER_LOC_MAP_NORMAL = ShaderLocationIndex.SHADER_LOC_MAP_NORMAL;
alias SHADER_LOC_MAP_ROUGHNESS = ShaderLocationIndex.SHADER_LOC_MAP_ROUGHNESS;
alias SHADER_LOC_MAP_OCCLUSION = ShaderLocationIndex.SHADER_LOC_MAP_OCCLUSION;
alias SHADER_LOC_MAP_EMISSION = ShaderLocationIndex.SHADER_LOC_MAP_EMISSION;
alias SHADER_LOC_MAP_HEIGHT = ShaderLocationIndex.SHADER_LOC_MAP_HEIGHT;
alias SHADER_LOC_MAP_CUBEMAP = ShaderLocationIndex.SHADER_LOC_MAP_CUBEMAP;
alias SHADER_LOC_MAP_IRRADIANCE = ShaderLocationIndex.SHADER_LOC_MAP_IRRADIANCE;
alias SHADER_LOC_MAP_PREFILTER = ShaderLocationIndex.SHADER_LOC_MAP_PREFILTER;
alias SHADER_LOC_MAP_BRDF = ShaderLocationIndex.SHADER_LOC_MAP_BRDF;
alias SHADER_LOC_VERTEX_BONEIDS = ShaderLocationIndex.SHADER_LOC_VERTEX_BONEIDS;
alias SHADER_LOC_VERTEX_BONEWEIGHTS = ShaderLocationIndex.SHADER_LOC_VERTEX_BONEWEIGHTS;
alias SHADER_LOC_MATRIX_BONETRANSFORMS = ShaderLocationIndex.SHADER_LOC_MATRIX_BONETRANSFORMS;
alias SHADER_LOC_VERTEX_INSTANCETRANSFORM = ShaderLocationIndex.SHADER_LOC_VERTEX_INSTANCETRANSFORM;

enum ShaderUniformDataType {
    SHADER_UNIFORM_FLOAT = 0,
    SHADER_UNIFORM_VEC2 = 1,
    SHADER_UNIFORM_VEC3 = 2,
    SHADER_UNIFORM_VEC4 = 3,
    SHADER_UNIFORM_INT = 4,
    SHADER_UNIFORM_IVEC2 = 5,
    SHADER_UNIFORM_IVEC3 = 6,
    SHADER_UNIFORM_IVEC4 = 7,
    SHADER_UNIFORM_UINT = 8,
    SHADER_UNIFORM_UIVEC2 = 9,
    SHADER_UNIFORM_UIVEC3 = 10,
    SHADER_UNIFORM_UIVEC4 = 11,
    SHADER_UNIFORM_SAMPLER2D = 12,
}

alias SHADER_UNIFORM_FLOAT = ShaderUniformDataType.SHADER_UNIFORM_FLOAT;
alias SHADER_UNIFORM_VEC2 = ShaderUniformDataType.SHADER_UNIFORM_VEC2;
alias SHADER_UNIFORM_VEC3 = ShaderUniformDataType.SHADER_UNIFORM_VEC3;
alias SHADER_UNIFORM_VEC4 = ShaderUniformDataType.SHADER_UNIFORM_VEC4;
alias SHADER_UNIFORM_INT = ShaderUniformDataType.SHADER_UNIFORM_INT;
alias SHADER_UNIFORM_IVEC2 = ShaderUniformDataType.SHADER_UNIFORM_IVEC2;
alias SHADER_UNIFORM_IVEC3 = ShaderUniformDataType.SHADER_UNIFORM_IVEC3;
alias SHADER_UNIFORM_IVEC4 = ShaderUniformDataType.SHADER_UNIFORM_IVEC4;
alias SHADER_UNIFORM_UINT = ShaderUniformDataType.SHADER_UNIFORM_UINT;
alias SHADER_UNIFORM_UIVEC2 = ShaderUniformDataType.SHADER_UNIFORM_UIVEC2;
alias SHADER_UNIFORM_UIVEC3 = ShaderUniformDataType.SHADER_UNIFORM_UIVEC3;
alias SHADER_UNIFORM_UIVEC4 = ShaderUniformDataType.SHADER_UNIFORM_UIVEC4;
alias SHADER_UNIFORM_SAMPLER2D = ShaderUniformDataType.SHADER_UNIFORM_SAMPLER2D;

enum ShaderAttributeDataType {
    SHADER_ATTRIB_FLOAT = 0,
    SHADER_ATTRIB_VEC2 = 1,
    SHADER_ATTRIB_VEC3 = 2,
    SHADER_ATTRIB_VEC4 = 3,
}

alias SHADER_ATTRIB_FLOAT = ShaderAttributeDataType.SHADER_ATTRIB_FLOAT;
alias SHADER_ATTRIB_VEC2 = ShaderAttributeDataType.SHADER_ATTRIB_VEC2;
alias SHADER_ATTRIB_VEC3 = ShaderAttributeDataType.SHADER_ATTRIB_VEC3;
alias SHADER_ATTRIB_VEC4 = ShaderAttributeDataType.SHADER_ATTRIB_VEC4;

enum PixelFormat {
    PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1,
    PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = 2,
    PIXELFORMAT_UNCOMPRESSED_R5G6B5 = 3,
    PIXELFORMAT_UNCOMPRESSED_R8G8B8 = 4,
    PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = 5,
    PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = 6,
    PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = 7,
    PIXELFORMAT_UNCOMPRESSED_R32 = 8,
    PIXELFORMAT_UNCOMPRESSED_R32G32B32 = 9,
    PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = 10,
    PIXELFORMAT_UNCOMPRESSED_R16 = 11,
    PIXELFORMAT_UNCOMPRESSED_R16G16B16 = 12,
    PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = 13,
    PIXELFORMAT_COMPRESSED_DXT1_RGB = 14,
    PIXELFORMAT_COMPRESSED_DXT1_RGBA = 15,
    PIXELFORMAT_COMPRESSED_DXT3_RGBA = 16,
    PIXELFORMAT_COMPRESSED_DXT5_RGBA = 17,
    PIXELFORMAT_COMPRESSED_ETC1_RGB = 18,
    PIXELFORMAT_COMPRESSED_ETC2_RGB = 19,
    PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = 20,
    PIXELFORMAT_COMPRESSED_PVRT_RGB = 21,
    PIXELFORMAT_COMPRESSED_PVRT_RGBA = 22,
    PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = 23,
    PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = 24,
}

alias PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = PixelFormat.PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;
alias PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = PixelFormat.PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;
alias PIXELFORMAT_UNCOMPRESSED_R5G6B5 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R5G6B5;
alias PIXELFORMAT_UNCOMPRESSED_R8G8B8 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R8G8B8;
alias PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;
alias PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;
alias PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;
alias PIXELFORMAT_UNCOMPRESSED_R32 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R32;
alias PIXELFORMAT_UNCOMPRESSED_R32G32B32 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R32G32B32;
alias PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;
alias PIXELFORMAT_UNCOMPRESSED_R16 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R16;
alias PIXELFORMAT_UNCOMPRESSED_R16G16B16 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R16G16B16;
alias PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = PixelFormat.PIXELFORMAT_UNCOMPRESSED_R16G16B16A16;
alias PIXELFORMAT_COMPRESSED_DXT1_RGB = PixelFormat.PIXELFORMAT_COMPRESSED_DXT1_RGB;
alias PIXELFORMAT_COMPRESSED_DXT1_RGBA = PixelFormat.PIXELFORMAT_COMPRESSED_DXT1_RGBA;
alias PIXELFORMAT_COMPRESSED_DXT3_RGBA = PixelFormat.PIXELFORMAT_COMPRESSED_DXT3_RGBA;
alias PIXELFORMAT_COMPRESSED_DXT5_RGBA = PixelFormat.PIXELFORMAT_COMPRESSED_DXT5_RGBA;
alias PIXELFORMAT_COMPRESSED_ETC1_RGB = PixelFormat.PIXELFORMAT_COMPRESSED_ETC1_RGB;
alias PIXELFORMAT_COMPRESSED_ETC2_RGB = PixelFormat.PIXELFORMAT_COMPRESSED_ETC2_RGB;
alias PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = PixelFormat.PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;
alias PIXELFORMAT_COMPRESSED_PVRT_RGB = PixelFormat.PIXELFORMAT_COMPRESSED_PVRT_RGB;
alias PIXELFORMAT_COMPRESSED_PVRT_RGBA = PixelFormat.PIXELFORMAT_COMPRESSED_PVRT_RGBA;
alias PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = PixelFormat.PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;
alias PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = PixelFormat.PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;

enum TextureFilter {
    TEXTURE_FILTER_POINT = 0,
    TEXTURE_FILTER_BILINEAR = 1,
    TEXTURE_FILTER_TRILINEAR = 2,
    TEXTURE_FILTER_ANISOTROPIC_4X = 3,
    TEXTURE_FILTER_ANISOTROPIC_8X = 4,
    TEXTURE_FILTER_ANISOTROPIC_16X = 5,
}

alias TEXTURE_FILTER_POINT = TextureFilter.TEXTURE_FILTER_POINT;
alias TEXTURE_FILTER_BILINEAR = TextureFilter.TEXTURE_FILTER_BILINEAR;
alias TEXTURE_FILTER_TRILINEAR = TextureFilter.TEXTURE_FILTER_TRILINEAR;
alias TEXTURE_FILTER_ANISOTROPIC_4X = TextureFilter.TEXTURE_FILTER_ANISOTROPIC_4X;
alias TEXTURE_FILTER_ANISOTROPIC_8X = TextureFilter.TEXTURE_FILTER_ANISOTROPIC_8X;
alias TEXTURE_FILTER_ANISOTROPIC_16X = TextureFilter.TEXTURE_FILTER_ANISOTROPIC_16X;

enum TextureWrap {
    TEXTURE_WRAP_REPEAT = 0,
    TEXTURE_WRAP_CLAMP = 1,
    TEXTURE_WRAP_MIRROR_REPEAT = 2,
    TEXTURE_WRAP_MIRROR_CLAMP = 3,
}

alias TEXTURE_WRAP_REPEAT = TextureWrap.TEXTURE_WRAP_REPEAT;
alias TEXTURE_WRAP_CLAMP = TextureWrap.TEXTURE_WRAP_CLAMP;
alias TEXTURE_WRAP_MIRROR_REPEAT = TextureWrap.TEXTURE_WRAP_MIRROR_REPEAT;
alias TEXTURE_WRAP_MIRROR_CLAMP = TextureWrap.TEXTURE_WRAP_MIRROR_CLAMP;

enum CubemapLayout {
    CUBEMAP_LAYOUT_AUTO_DETECT = 0,
    CUBEMAP_LAYOUT_LINE_VERTICAL = 1,
    CUBEMAP_LAYOUT_LINE_HORIZONTAL = 2,
    CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = 3,
    CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = 4,
}

alias CUBEMAP_LAYOUT_AUTO_DETECT = CubemapLayout.CUBEMAP_LAYOUT_AUTO_DETECT;
alias CUBEMAP_LAYOUT_LINE_VERTICAL = CubemapLayout.CUBEMAP_LAYOUT_LINE_VERTICAL;
alias CUBEMAP_LAYOUT_LINE_HORIZONTAL = CubemapLayout.CUBEMAP_LAYOUT_LINE_HORIZONTAL;
alias CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR = CubemapLayout.CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR;
alias CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE = CubemapLayout.CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE;

enum FontType {
    FONT_DEFAULT = 0,
    FONT_BITMAP = 1,
    FONT_SDF = 2,
}

alias FONT_DEFAULT = FontType.FONT_DEFAULT;
alias FONT_BITMAP = FontType.FONT_BITMAP;
alias FONT_SDF = FontType.FONT_SDF;

enum BlendMode {
    BLEND_ALPHA = 0,
    BLEND_ADDITIVE = 1,
    BLEND_MULTIPLIED = 2,
    BLEND_ADD_COLORS = 3,
    BLEND_SUBTRACT_COLORS = 4,
    BLEND_ALPHA_PREMULTIPLY = 5,
    BLEND_CUSTOM = 6,
    BLEND_CUSTOM_SEPARATE = 7,
}

alias BLEND_ALPHA = BlendMode.BLEND_ALPHA;
alias BLEND_ADDITIVE = BlendMode.BLEND_ADDITIVE;
alias BLEND_MULTIPLIED = BlendMode.BLEND_MULTIPLIED;
alias BLEND_ADD_COLORS = BlendMode.BLEND_ADD_COLORS;
alias BLEND_SUBTRACT_COLORS = BlendMode.BLEND_SUBTRACT_COLORS;
alias BLEND_ALPHA_PREMULTIPLY = BlendMode.BLEND_ALPHA_PREMULTIPLY;
alias BLEND_CUSTOM = BlendMode.BLEND_CUSTOM;
alias BLEND_CUSTOM_SEPARATE = BlendMode.BLEND_CUSTOM_SEPARATE;

enum Gesture {
    GESTURE_NONE = 0,
    GESTURE_TAP = 1,
    GESTURE_DOUBLETAP = 2,
    GESTURE_HOLD = 4,
    GESTURE_DRAG = 8,
    GESTURE_SWIPE_RIGHT = 16,
    GESTURE_SWIPE_LEFT = 32,
    GESTURE_SWIPE_UP = 64,
    GESTURE_SWIPE_DOWN = 128,
    GESTURE_PINCH_IN = 256,
    GESTURE_PINCH_OUT = 512,
}

alias GESTURE_NONE = Gesture.GESTURE_NONE;
alias GESTURE_TAP = Gesture.GESTURE_TAP;
alias GESTURE_DOUBLETAP = Gesture.GESTURE_DOUBLETAP;
alias GESTURE_HOLD = Gesture.GESTURE_HOLD;
alias GESTURE_DRAG = Gesture.GESTURE_DRAG;
alias GESTURE_SWIPE_RIGHT = Gesture.GESTURE_SWIPE_RIGHT;
alias GESTURE_SWIPE_LEFT = Gesture.GESTURE_SWIPE_LEFT;
alias GESTURE_SWIPE_UP = Gesture.GESTURE_SWIPE_UP;
alias GESTURE_SWIPE_DOWN = Gesture.GESTURE_SWIPE_DOWN;
alias GESTURE_PINCH_IN = Gesture.GESTURE_PINCH_IN;
alias GESTURE_PINCH_OUT = Gesture.GESTURE_PINCH_OUT;

enum CameraMode {
    CAMERA_CUSTOM = 0,
    CAMERA_FREE = 1,
    CAMERA_ORBITAL = 2,
    CAMERA_FIRST_PERSON = 3,
    CAMERA_THIRD_PERSON = 4,
}

alias CAMERA_CUSTOM = CameraMode.CAMERA_CUSTOM;
alias CAMERA_FREE = CameraMode.CAMERA_FREE;
alias CAMERA_ORBITAL = CameraMode.CAMERA_ORBITAL;
alias CAMERA_FIRST_PERSON = CameraMode.CAMERA_FIRST_PERSON;
alias CAMERA_THIRD_PERSON = CameraMode.CAMERA_THIRD_PERSON;

enum CameraProjection {
    CAMERA_PERSPECTIVE = 0,
    CAMERA_ORTHOGRAPHIC = 1,
}

alias CAMERA_PERSPECTIVE = CameraProjection.CAMERA_PERSPECTIVE;
alias CAMERA_ORTHOGRAPHIC = CameraProjection.CAMERA_ORTHOGRAPHIC;

enum NPatchLayout {
    NPATCH_NINE_PATCH = 0,
    NPATCH_THREE_PATCH_VERTICAL = 1,
    NPATCH_THREE_PATCH_HORIZONTAL = 2,
}

alias NPATCH_NINE_PATCH = NPatchLayout.NPATCH_NINE_PATCH;
alias NPATCH_THREE_PATCH_VERTICAL = NPatchLayout.NPATCH_THREE_PATCH_VERTICAL;
alias NPATCH_THREE_PATCH_HORIZONTAL = NPatchLayout.NPATCH_THREE_PATCH_HORIZONTAL;

pragma(mangle, "InitWindow")
void rlInitWindow(int width, int height, const(char)* title);

alias InitWindow = rlInitWindow;

pragma(mangle, "CloseWindow")
void rlCloseWindow();

alias CloseWindow = rlCloseWindow;

pragma(mangle, "WindowShouldClose")
bool rlWindowShouldClose();

alias WindowShouldClose = rlWindowShouldClose;

pragma(mangle, "IsWindowReady")
bool rlIsWindowReady();

alias IsWindowReady = rlIsWindowReady;

pragma(mangle, "IsWindowFullscreen")
bool rlIsWindowFullscreen();

alias IsWindowFullscreen = rlIsWindowFullscreen;

pragma(mangle, "IsWindowHidden")
bool rlIsWindowHidden();

alias IsWindowHidden = rlIsWindowHidden;

pragma(mangle, "IsWindowMinimized")
bool rlIsWindowMinimized();

alias IsWindowMinimized = rlIsWindowMinimized;

pragma(mangle, "IsWindowMaximized")
bool rlIsWindowMaximized();

alias IsWindowMaximized = rlIsWindowMaximized;

pragma(mangle, "IsWindowFocused")
bool rlIsWindowFocused();

alias IsWindowFocused = rlIsWindowFocused;

pragma(mangle, "IsWindowResized")
bool rlIsWindowResized();

alias IsWindowResized = rlIsWindowResized;

pragma(mangle, "IsWindowState")
bool rlIsWindowState(uint flag);

alias IsWindowState = rlIsWindowState;

pragma(mangle, "SetWindowState")
void rlSetWindowState(uint flags);

alias SetWindowState = rlSetWindowState;

pragma(mangle, "ClearWindowState")
void rlClearWindowState(uint flags);

alias ClearWindowState = rlClearWindowState;

pragma(mangle, "ToggleFullscreen")
void rlToggleFullscreen();

alias ToggleFullscreen = rlToggleFullscreen;

pragma(mangle, "ToggleBorderlessWindowed")
void rlToggleBorderlessWindowed();

alias ToggleBorderlessWindowed = rlToggleBorderlessWindowed;

pragma(mangle, "MaximizeWindow")
void rlMaximizeWindow();

alias MaximizeWindow = rlMaximizeWindow;

pragma(mangle, "MinimizeWindow")
void rlMinimizeWindow();

alias MinimizeWindow = rlMinimizeWindow;

pragma(mangle, "RestoreWindow")
void rlRestoreWindow();

alias RestoreWindow = rlRestoreWindow;

pragma(mangle, "SetWindowIcon")
void rlSetWindowIcon(Image image);

alias SetWindowIcon = rlSetWindowIcon;

pragma(mangle, "SetWindowIcons")
void rlSetWindowIcons(Image* images, int count);

alias SetWindowIcons = rlSetWindowIcons;

pragma(mangle, "SetWindowTitle")
void rlSetWindowTitle(const(char)* title);

alias SetWindowTitle = rlSetWindowTitle;

pragma(mangle, "SetWindowPosition")
void rlSetWindowPosition(int x, int y);

alias SetWindowPosition = rlSetWindowPosition;

pragma(mangle, "SetWindowMonitor")
void rlSetWindowMonitor(int monitor);

alias SetWindowMonitor = rlSetWindowMonitor;

pragma(mangle, "SetWindowMinSize")
void rlSetWindowMinSize(int width, int height);

alias SetWindowMinSize = rlSetWindowMinSize;

pragma(mangle, "SetWindowMaxSize")
void rlSetWindowMaxSize(int width, int height);

alias SetWindowMaxSize = rlSetWindowMaxSize;

pragma(mangle, "SetWindowSize")
void rlSetWindowSize(int width, int height);

alias SetWindowSize = rlSetWindowSize;

pragma(mangle, "SetWindowOpacity")
void rlSetWindowOpacity(float opacity);

alias SetWindowOpacity = rlSetWindowOpacity;

pragma(mangle, "SetWindowFocused")
void rlSetWindowFocused();

alias SetWindowFocused = rlSetWindowFocused;

pragma(mangle, "GetWindowHandle")
void* rlGetWindowHandle();

alias GetWindowHandle = rlGetWindowHandle;

pragma(mangle, "GetScreenWidth")
int rlGetScreenWidth();

alias GetScreenWidth = rlGetScreenWidth;

pragma(mangle, "GetScreenHeight")
int rlGetScreenHeight();

alias GetScreenHeight = rlGetScreenHeight;

pragma(mangle, "GetRenderWidth")
int rlGetRenderWidth();

alias GetRenderWidth = rlGetRenderWidth;

pragma(mangle, "GetRenderHeight")
int rlGetRenderHeight();

alias GetRenderHeight = rlGetRenderHeight;

pragma(mangle, "GetMonitorCount")
int rlGetMonitorCount();

alias GetMonitorCount = rlGetMonitorCount;

pragma(mangle, "GetCurrentMonitor")
int rlGetCurrentMonitor();

alias GetCurrentMonitor = rlGetCurrentMonitor;

pragma(mangle, "GetMonitorPosition")
Vector2 rlGetMonitorPosition(int monitor);

alias GetMonitorPosition = rlGetMonitorPosition;

pragma(mangle, "GetMonitorWidth")
int rlGetMonitorWidth(int monitor);

alias GetMonitorWidth = rlGetMonitorWidth;

pragma(mangle, "GetMonitorHeight")
int rlGetMonitorHeight(int monitor);

alias GetMonitorHeight = rlGetMonitorHeight;

pragma(mangle, "GetMonitorPhysicalWidth")
int rlGetMonitorPhysicalWidth(int monitor);

alias GetMonitorPhysicalWidth = rlGetMonitorPhysicalWidth;

pragma(mangle, "GetMonitorPhysicalHeight")
int rlGetMonitorPhysicalHeight(int monitor);

alias GetMonitorPhysicalHeight = rlGetMonitorPhysicalHeight;

pragma(mangle, "GetMonitorRefreshRate")
int rlGetMonitorRefreshRate(int monitor);

alias GetMonitorRefreshRate = rlGetMonitorRefreshRate;

pragma(mangle, "GetWindowPosition")
Vector2 rlGetWindowPosition();

alias GetWindowPosition = rlGetWindowPosition;

pragma(mangle, "GetWindowScaleDPI")
Vector2 rlGetWindowScaleDPI();

alias GetWindowScaleDPI = rlGetWindowScaleDPI;

pragma(mangle, "GetMonitorName")
const(char)* rlGetMonitorName(int monitor);

alias GetMonitorName = rlGetMonitorName;

pragma(mangle, "SetClipboardText")
void rlSetClipboardText(const(char)* text);

alias SetClipboardText = rlSetClipboardText;

pragma(mangle, "GetClipboardText")
const(char)* rlGetClipboardText();

alias GetClipboardText = rlGetClipboardText;

pragma(mangle, "GetClipboardImage")
Image rlGetClipboardImage();

alias GetClipboardImage = rlGetClipboardImage;

pragma(mangle, "EnableEventWaiting")
void rlEnableEventWaiting();

alias EnableEventWaiting = rlEnableEventWaiting;

pragma(mangle, "DisableEventWaiting")
void rlDisableEventWaiting();

alias DisableEventWaiting = rlDisableEventWaiting;

pragma(mangle, "ShowCursor")
void rlShowCursor();

alias ShowCursor = rlShowCursor;

pragma(mangle, "HideCursor")
void rlHideCursor();

alias HideCursor = rlHideCursor;

pragma(mangle, "IsCursorHidden")
bool rlIsCursorHidden();

alias IsCursorHidden = rlIsCursorHidden;

pragma(mangle, "EnableCursor")
void rlEnableCursor();

alias EnableCursor = rlEnableCursor;

pragma(mangle, "DisableCursor")
void rlDisableCursor();

alias DisableCursor = rlDisableCursor;

pragma(mangle, "IsCursorOnScreen")
bool rlIsCursorOnScreen();

alias IsCursorOnScreen = rlIsCursorOnScreen;

pragma(mangle, "ClearBackground")
void rlClearBackground(Color color);

alias ClearBackground = rlClearBackground;

pragma(mangle, "BeginDrawing")
void rlBeginDrawing();

alias BeginDrawing = rlBeginDrawing;

pragma(mangle, "EndDrawing")
void rlEndDrawing();

alias EndDrawing = rlEndDrawing;

pragma(mangle, "BeginMode2D")
void rlBeginMode2D(Camera2D camera);

alias BeginMode2D = rlBeginMode2D;

pragma(mangle, "EndMode2D")
void rlEndMode2D();

alias EndMode2D = rlEndMode2D;

pragma(mangle, "BeginMode3D")
void rlBeginMode3D(Camera3D camera);

alias BeginMode3D = rlBeginMode3D;

pragma(mangle, "EndMode3D")
void rlEndMode3D();

alias EndMode3D = rlEndMode3D;

pragma(mangle, "BeginTextureMode")
void rlBeginTextureMode(RenderTexture2D target);

alias BeginTextureMode = rlBeginTextureMode;

pragma(mangle, "EndTextureMode")
void rlEndTextureMode();

alias EndTextureMode = rlEndTextureMode;

pragma(mangle, "BeginShaderMode")
void rlBeginShaderMode(Shader shader);

alias BeginShaderMode = rlBeginShaderMode;

pragma(mangle, "EndShaderMode")
void rlEndShaderMode();

alias EndShaderMode = rlEndShaderMode;

pragma(mangle, "BeginBlendMode")
void rlBeginBlendMode(int mode);

alias BeginBlendMode = rlBeginBlendMode;

pragma(mangle, "EndBlendMode")
void rlEndBlendMode();

alias EndBlendMode = rlEndBlendMode;

pragma(mangle, "BeginScissorMode")
void rlBeginScissorMode(int x, int y, int width, int height);

alias BeginScissorMode = rlBeginScissorMode;

pragma(mangle, "EndScissorMode")
void rlEndScissorMode();

alias EndScissorMode = rlEndScissorMode;

pragma(mangle, "BeginVrStereoMode")
void rlBeginVrStereoMode(VrStereoConfig config);

alias BeginVrStereoMode = rlBeginVrStereoMode;

pragma(mangle, "EndVrStereoMode")
void rlEndVrStereoMode();

alias EndVrStereoMode = rlEndVrStereoMode;

pragma(mangle, "LoadVrStereoConfig")
VrStereoConfig rlLoadVrStereoConfig(VrDeviceInfo device);

alias LoadVrStereoConfig = rlLoadVrStereoConfig;

pragma(mangle, "UnloadVrStereoConfig")
void rlUnloadVrStereoConfig(VrStereoConfig config);

alias UnloadVrStereoConfig = rlUnloadVrStereoConfig;

pragma(mangle, "LoadShader")
Shader rlLoadShader(const(char)* vsFileName, const(char)* fsFileName);

alias LoadShader = rlLoadShader;

pragma(mangle, "LoadShaderFromMemory")
Shader rlLoadShaderFromMemory(const(char)* vsCode, const(char)* fsCode);

alias LoadShaderFromMemory = rlLoadShaderFromMemory;

pragma(mangle, "IsShaderValid")
bool rlIsShaderValid(Shader shader);

alias IsShaderValid = rlIsShaderValid;

pragma(mangle, "GetShaderLocation")
int rlGetShaderLocation(Shader shader, const(char)* uniformName);

alias GetShaderLocation = rlGetShaderLocation;

pragma(mangle, "GetShaderLocationAttrib")
int rlGetShaderLocationAttrib(Shader shader, const(char)* attribName);

alias GetShaderLocationAttrib = rlGetShaderLocationAttrib;

pragma(mangle, "SetShaderValue")
void rlSetShaderValue(Shader shader, int locIndex, const(void)* value, int uniformType);

alias SetShaderValue = rlSetShaderValue;

pragma(mangle, "SetShaderValueV")
void rlSetShaderValueV(Shader shader, int locIndex, const(void)* value, int uniformType, int count);

alias SetShaderValueV = rlSetShaderValueV;

pragma(mangle, "SetShaderValueMatrix")
void rlSetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);

alias SetShaderValueMatrix = rlSetShaderValueMatrix;

pragma(mangle, "SetShaderValueTexture")
void rlSetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);

alias SetShaderValueTexture = rlSetShaderValueTexture;

pragma(mangle, "UnloadShader")
void rlUnloadShader(Shader shader);

alias UnloadShader = rlUnloadShader;

pragma(mangle, "GetScreenToWorldRay")
Ray rlGetScreenToWorldRay(Vector2 position, Camera camera);

alias GetScreenToWorldRay = rlGetScreenToWorldRay;

pragma(mangle, "GetScreenToWorldRayEx")
Ray rlGetScreenToWorldRayEx(Vector2 position, Camera camera, int width, int height);

alias GetScreenToWorldRayEx = rlGetScreenToWorldRayEx;

pragma(mangle, "GetWorldToScreen")
Vector2 rlGetWorldToScreen(Vector3 position, Camera camera);

alias GetWorldToScreen = rlGetWorldToScreen;

pragma(mangle, "GetWorldToScreenEx")
Vector2 rlGetWorldToScreenEx(Vector3 position, Camera camera, int width, int height);

alias GetWorldToScreenEx = rlGetWorldToScreenEx;

pragma(mangle, "GetWorldToScreen2D")
Vector2 rlGetWorldToScreen2D(Vector2 position, Camera2D camera);

alias GetWorldToScreen2D = rlGetWorldToScreen2D;

pragma(mangle, "GetScreenToWorld2D")
Vector2 rlGetScreenToWorld2D(Vector2 position, Camera2D camera);

alias GetScreenToWorld2D = rlGetScreenToWorld2D;

pragma(mangle, "GetCameraMatrix")
Matrix rlGetCameraMatrix(Camera camera);

alias GetCameraMatrix = rlGetCameraMatrix;

pragma(mangle, "GetCameraMatrix2D")
Matrix rlGetCameraMatrix2D(Camera2D camera);

alias GetCameraMatrix2D = rlGetCameraMatrix2D;

pragma(mangle, "SetTargetFPS")
void rlSetTargetFPS(int fps);

alias SetTargetFPS = rlSetTargetFPS;

pragma(mangle, "GetFrameTime")
float rlGetFrameTime();

alias GetFrameTime = rlGetFrameTime;

pragma(mangle, "GetTime")
double rlGetTime();

alias GetTime = rlGetTime;

pragma(mangle, "GetFPS")
int rlGetFPS();

alias GetFPS = rlGetFPS;

pragma(mangle, "SwapScreenBuffer")
void rlSwapScreenBuffer();

alias SwapScreenBuffer = rlSwapScreenBuffer;

pragma(mangle, "PollInputEvents")
void rlPollInputEvents();

alias PollInputEvents = rlPollInputEvents;

pragma(mangle, "WaitTime")
void rlWaitTime(double seconds);

alias WaitTime = rlWaitTime;

pragma(mangle, "SetRandomSeed")
void rlSetRandomSeed(uint seed);

alias SetRandomSeed = rlSetRandomSeed;

pragma(mangle, "GetRandomValue")
int rlGetRandomValue(int min, int max);

alias GetRandomValue = rlGetRandomValue;

pragma(mangle, "LoadRandomSequence")
int* rlLoadRandomSequence(uint count, int min, int max);

alias LoadRandomSequence = rlLoadRandomSequence;

pragma(mangle, "UnloadRandomSequence")
void rlUnloadRandomSequence(int* sequence);

alias UnloadRandomSequence = rlUnloadRandomSequence;

pragma(mangle, "TakeScreenshot")
void rlTakeScreenshot(const(char)* fileName);

alias TakeScreenshot = rlTakeScreenshot;

pragma(mangle, "SetConfigFlags")
void rlSetConfigFlags(uint flags);

alias SetConfigFlags = rlSetConfigFlags;

pragma(mangle, "OpenURL")
void rlOpenURL(const(char)* url);

alias OpenURL = rlOpenURL;

pragma(mangle, "SetTraceLogLevel")
void rlSetTraceLogLevel(int logLevel);

alias SetTraceLogLevel = rlSetTraceLogLevel;

pragma(mangle, "TraceLog")
void rlTraceLog(int logLevel, const(char)* text, ...);

alias TraceLog = rlTraceLog;

pragma(mangle, "SetTraceLogCallback")
void rlSetTraceLogCallback(TraceLogCallback callback);

alias SetTraceLogCallback = rlSetTraceLogCallback;

pragma(mangle, "MemAlloc")
void* rlMemAlloc(uint size);

alias MemAlloc = rlMemAlloc;

pragma(mangle, "MemRealloc")
void* rlMemRealloc(void* ptr, uint size);

alias MemRealloc = rlMemRealloc;

pragma(mangle, "MemFree")
void rlMemFree(void* ptr);

alias MemFree = rlMemFree;

pragma(mangle, "LoadFileData")
ubyte* rlLoadFileData(const(char)* fileName, int* dataSize);

alias LoadFileData = rlLoadFileData;

pragma(mangle, "UnloadFileData")
void rlUnloadFileData(ubyte* data);

alias UnloadFileData = rlUnloadFileData;

pragma(mangle, "SaveFileData")
bool rlSaveFileData(const(char)* fileName, const(void)* data, int dataSize);

alias SaveFileData = rlSaveFileData;

pragma(mangle, "ExportDataAsCode")
bool rlExportDataAsCode(const(ubyte)* data, int dataSize, const(char)* fileName);

alias ExportDataAsCode = rlExportDataAsCode;

pragma(mangle, "LoadFileText")
char* rlLoadFileText(const(char)* fileName);

alias LoadFileText = rlLoadFileText;

pragma(mangle, "UnloadFileText")
void rlUnloadFileText(char* text);

alias UnloadFileText = rlUnloadFileText;

pragma(mangle, "SaveFileText")
bool rlSaveFileText(const(char)* fileName, const(char)* text);

alias SaveFileText = rlSaveFileText;

pragma(mangle, "SetLoadFileDataCallback")
void rlSetLoadFileDataCallback(LoadFileDataCallback callback);

alias SetLoadFileDataCallback = rlSetLoadFileDataCallback;

pragma(mangle, "SetSaveFileDataCallback")
void rlSetSaveFileDataCallback(SaveFileDataCallback callback);

alias SetSaveFileDataCallback = rlSetSaveFileDataCallback;

pragma(mangle, "SetLoadFileTextCallback")
void rlSetLoadFileTextCallback(LoadFileTextCallback callback);

alias SetLoadFileTextCallback = rlSetLoadFileTextCallback;

pragma(mangle, "SetSaveFileTextCallback")
void rlSetSaveFileTextCallback(SaveFileTextCallback callback);

alias SetSaveFileTextCallback = rlSetSaveFileTextCallback;

pragma(mangle, "FileRename")
int rlFileRename(const(char)* fileName, const(char)* fileRename);

alias FileRename = rlFileRename;

pragma(mangle, "FileRemove")
int rlFileRemove(const(char)* fileName);

alias FileRemove = rlFileRemove;

pragma(mangle, "FileCopy")
int rlFileCopy(const(char)* srcPath, const(char)* dstPath);

alias FileCopy = rlFileCopy;

pragma(mangle, "FileMove")
int rlFileMove(const(char)* srcPath, const(char)* dstPath);

alias FileMove = rlFileMove;

pragma(mangle, "FileTextReplace")
int rlFileTextReplace(const(char)* fileName, const(char)* search, const(char)* replacement);

alias FileTextReplace = rlFileTextReplace;

pragma(mangle, "FileTextFindIndex")
int rlFileTextFindIndex(const(char)* fileName, const(char)* search);

alias FileTextFindIndex = rlFileTextFindIndex;

pragma(mangle, "FileExists")
bool rlFileExists(const(char)* fileName);

alias FileExists = rlFileExists;

pragma(mangle, "DirectoryExists")
bool rlDirectoryExists(const(char)* dirPath);

alias DirectoryExists = rlDirectoryExists;

pragma(mangle, "IsFileExtension")
bool rlIsFileExtension(const(char)* fileName, const(char)* ext);

alias IsFileExtension = rlIsFileExtension;

pragma(mangle, "IsFileHidden")
bool rlIsFileHidden(const(char)* filePath);

alias IsFileHidden = rlIsFileHidden;

pragma(mangle, "GetFileLength")
int rlGetFileLength(const(char)* fileName);

alias GetFileLength = rlGetFileLength;

pragma(mangle, "GetFileModTime")
c_long rlGetFileModTime(const(char)* fileName);

alias GetFileModTime = rlGetFileModTime;

pragma(mangle, "GetFileExtension")
const(char)* rlGetFileExtension(const(char)* fileName);

alias GetFileExtension = rlGetFileExtension;

pragma(mangle, "GetFileName")
const(char)* rlGetFileName(const(char)* filePath);

alias GetFileName = rlGetFileName;

pragma(mangle, "GetFileNameWithoutExt")
const(char)* rlGetFileNameWithoutExt(const(char)* filePath);

alias GetFileNameWithoutExt = rlGetFileNameWithoutExt;

pragma(mangle, "GetDirectoryPath")
const(char)* rlGetDirectoryPath(const(char)* filePath);

alias GetDirectoryPath = rlGetDirectoryPath;

pragma(mangle, "GetPrevDirectoryPath")
const(char)* rlGetPrevDirectoryPath(const(char)* dirPath);

alias GetPrevDirectoryPath = rlGetPrevDirectoryPath;

pragma(mangle, "GetWorkingDirectory")
const(char)* rlGetWorkingDirectory();

alias GetWorkingDirectory = rlGetWorkingDirectory;

pragma(mangle, "GetApplicationDirectory")
const(char)* rlGetApplicationDirectory();

alias GetApplicationDirectory = rlGetApplicationDirectory;

pragma(mangle, "MakeDirectory")
int rlMakeDirectory(const(char)* dirPath);

alias MakeDirectory = rlMakeDirectory;

pragma(mangle, "ChangeDirectory")
int rlChangeDirectory(const(char)* dirPath);

alias ChangeDirectory = rlChangeDirectory;

pragma(mangle, "IsPathFile")
bool rlIsPathFile(const(char)* path);

alias IsPathFile = rlIsPathFile;

pragma(mangle, "IsPathDirectory")
bool rlIsPathDirectory(const(char)* path);

alias IsPathDirectory = rlIsPathDirectory;

pragma(mangle, "IsPathAbsolute")
bool rlIsPathAbsolute(const(char)* path);

alias IsPathAbsolute = rlIsPathAbsolute;

pragma(mangle, "IsFileNameValid")
bool rlIsFileNameValid(const(char)* fileName);

alias IsFileNameValid = rlIsFileNameValid;

pragma(mangle, "LoadDirectoryFiles")
FilePathList rlLoadDirectoryFiles(const(char)* dirPath);

alias LoadDirectoryFiles = rlLoadDirectoryFiles;

pragma(mangle, "LoadDirectoryFilesEx")
FilePathList rlLoadDirectoryFilesEx(const(char)* basePath, const(char)* filter, bool scanSubdirs);

alias LoadDirectoryFilesEx = rlLoadDirectoryFilesEx;

pragma(mangle, "UnloadDirectoryFiles")
void rlUnloadDirectoryFiles(FilePathList files);

alias UnloadDirectoryFiles = rlUnloadDirectoryFiles;

pragma(mangle, "IsFileDropped")
bool rlIsFileDropped();

alias IsFileDropped = rlIsFileDropped;

pragma(mangle, "LoadDroppedFiles")
FilePathList rlLoadDroppedFiles();

alias LoadDroppedFiles = rlLoadDroppedFiles;

pragma(mangle, "UnloadDroppedFiles")
void rlUnloadDroppedFiles(FilePathList files);

alias UnloadDroppedFiles = rlUnloadDroppedFiles;

pragma(mangle, "GetDirectoryFileCount")
uint rlGetDirectoryFileCount(const(char)* dirPath);

alias GetDirectoryFileCount = rlGetDirectoryFileCount;

pragma(mangle, "GetDirectoryFileCountEx")
uint rlGetDirectoryFileCountEx(const(char)* basePath, const(char)* filter, bool scanSubdirs);

alias GetDirectoryFileCountEx = rlGetDirectoryFileCountEx;

pragma(mangle, "CompressData")
ubyte* rlCompressData(const(ubyte)* data, int dataSize, int* compDataSize);

alias CompressData = rlCompressData;

pragma(mangle, "DecompressData")
ubyte* rlDecompressData(const(ubyte)* compData, int compDataSize, int* dataSize);

alias DecompressData = rlDecompressData;

pragma(mangle, "EncodeDataBase64")
char* rlEncodeDataBase64(const(ubyte)* data, int dataSize, int* outputSize);

alias EncodeDataBase64 = rlEncodeDataBase64;

pragma(mangle, "DecodeDataBase64")
ubyte* rlDecodeDataBase64(const(char)* text, int* outputSize);

alias DecodeDataBase64 = rlDecodeDataBase64;

pragma(mangle, "ComputeCRC32")
uint rlComputeCRC32(const(ubyte)* data, int dataSize);

alias ComputeCRC32 = rlComputeCRC32;

pragma(mangle, "ComputeMD5")
uint* rlComputeMD5(const(ubyte)* data, int dataSize);

alias ComputeMD5 = rlComputeMD5;

pragma(mangle, "ComputeSHA1")
uint* rlComputeSHA1(const(ubyte)* data, int dataSize);

alias ComputeSHA1 = rlComputeSHA1;

pragma(mangle, "ComputeSHA256")
uint* rlComputeSHA256(const(ubyte)* data, int dataSize);

alias ComputeSHA256 = rlComputeSHA256;

pragma(mangle, "LoadAutomationEventList")
AutomationEventList rlLoadAutomationEventList(const(char)* fileName);

alias LoadAutomationEventList = rlLoadAutomationEventList;

pragma(mangle, "UnloadAutomationEventList")
void rlUnloadAutomationEventList(AutomationEventList list);

alias UnloadAutomationEventList = rlUnloadAutomationEventList;

pragma(mangle, "ExportAutomationEventList")
bool rlExportAutomationEventList(AutomationEventList list, const(char)* fileName);

alias ExportAutomationEventList = rlExportAutomationEventList;

pragma(mangle, "SetAutomationEventList")
void rlSetAutomationEventList(AutomationEventList* list);

alias SetAutomationEventList = rlSetAutomationEventList;

pragma(mangle, "SetAutomationEventBaseFrame")
void rlSetAutomationEventBaseFrame(int frame);

alias SetAutomationEventBaseFrame = rlSetAutomationEventBaseFrame;

pragma(mangle, "StartAutomationEventRecording")
void rlStartAutomationEventRecording();

alias StartAutomationEventRecording = rlStartAutomationEventRecording;

pragma(mangle, "StopAutomationEventRecording")
void rlStopAutomationEventRecording();

alias StopAutomationEventRecording = rlStopAutomationEventRecording;

pragma(mangle, "PlayAutomationEvent")
void rlPlayAutomationEvent(AutomationEvent event);

alias PlayAutomationEvent = rlPlayAutomationEvent;

pragma(mangle, "IsKeyPressed")
bool rlIsKeyPressed(int key);

alias IsKeyPressed = rlIsKeyPressed;

pragma(mangle, "IsKeyPressedRepeat")
bool rlIsKeyPressedRepeat(int key);

alias IsKeyPressedRepeat = rlIsKeyPressedRepeat;

pragma(mangle, "IsKeyDown")
bool rlIsKeyDown(int key);

alias IsKeyDown = rlIsKeyDown;

pragma(mangle, "IsKeyReleased")
bool rlIsKeyReleased(int key);

alias IsKeyReleased = rlIsKeyReleased;

pragma(mangle, "IsKeyUp")
bool rlIsKeyUp(int key);

alias IsKeyUp = rlIsKeyUp;

pragma(mangle, "GetKeyPressed")
int rlGetKeyPressed();

alias GetKeyPressed = rlGetKeyPressed;

pragma(mangle, "GetCharPressed")
int rlGetCharPressed();

alias GetCharPressed = rlGetCharPressed;

pragma(mangle, "GetKeyName")
const(char)* rlGetKeyName(int key);

alias GetKeyName = rlGetKeyName;

pragma(mangle, "SetExitKey")
void rlSetExitKey(int key);

alias SetExitKey = rlSetExitKey;

pragma(mangle, "IsGamepadAvailable")
bool rlIsGamepadAvailable(int gamepad);

alias IsGamepadAvailable = rlIsGamepadAvailable;

pragma(mangle, "GetGamepadName")
const(char)* rlGetGamepadName(int gamepad);

alias GetGamepadName = rlGetGamepadName;

pragma(mangle, "IsGamepadButtonPressed")
bool rlIsGamepadButtonPressed(int gamepad, int button);

alias IsGamepadButtonPressed = rlIsGamepadButtonPressed;

pragma(mangle, "IsGamepadButtonDown")
bool rlIsGamepadButtonDown(int gamepad, int button);

alias IsGamepadButtonDown = rlIsGamepadButtonDown;

pragma(mangle, "IsGamepadButtonReleased")
bool rlIsGamepadButtonReleased(int gamepad, int button);

alias IsGamepadButtonReleased = rlIsGamepadButtonReleased;

pragma(mangle, "IsGamepadButtonUp")
bool rlIsGamepadButtonUp(int gamepad, int button);

alias IsGamepadButtonUp = rlIsGamepadButtonUp;

pragma(mangle, "GetGamepadButtonPressed")
int rlGetGamepadButtonPressed();

alias GetGamepadButtonPressed = rlGetGamepadButtonPressed;

pragma(mangle, "GetGamepadAxisCount")
int rlGetGamepadAxisCount(int gamepad);

alias GetGamepadAxisCount = rlGetGamepadAxisCount;

pragma(mangle, "GetGamepadAxisMovement")
float rlGetGamepadAxisMovement(int gamepad, int axis);

alias GetGamepadAxisMovement = rlGetGamepadAxisMovement;

pragma(mangle, "SetGamepadMappings")
int rlSetGamepadMappings(const(char)* mappings);

alias SetGamepadMappings = rlSetGamepadMappings;

pragma(mangle, "SetGamepadVibration")
void rlSetGamepadVibration(int gamepad, float leftMotor, float rightMotor, float duration);

alias SetGamepadVibration = rlSetGamepadVibration;

pragma(mangle, "IsMouseButtonPressed")
bool rlIsMouseButtonPressed(int button);

alias IsMouseButtonPressed = rlIsMouseButtonPressed;

pragma(mangle, "IsMouseButtonDown")
bool rlIsMouseButtonDown(int button);

alias IsMouseButtonDown = rlIsMouseButtonDown;

pragma(mangle, "IsMouseButtonReleased")
bool rlIsMouseButtonReleased(int button);

alias IsMouseButtonReleased = rlIsMouseButtonReleased;

pragma(mangle, "IsMouseButtonUp")
bool rlIsMouseButtonUp(int button);

alias IsMouseButtonUp = rlIsMouseButtonUp;

pragma(mangle, "GetMouseX")
int rlGetMouseX();

alias GetMouseX = rlGetMouseX;

pragma(mangle, "GetMouseY")
int rlGetMouseY();

alias GetMouseY = rlGetMouseY;

pragma(mangle, "GetMousePosition")
Vector2 rlGetMousePosition();

alias GetMousePosition = rlGetMousePosition;

pragma(mangle, "GetMouseDelta")
Vector2 rlGetMouseDelta();

alias GetMouseDelta = rlGetMouseDelta;

pragma(mangle, "SetMousePosition")
void rlSetMousePosition(int x, int y);

alias SetMousePosition = rlSetMousePosition;

pragma(mangle, "SetMouseOffset")
void rlSetMouseOffset(int offsetX, int offsetY);

alias SetMouseOffset = rlSetMouseOffset;

pragma(mangle, "SetMouseScale")
void rlSetMouseScale(float scaleX, float scaleY);

alias SetMouseScale = rlSetMouseScale;

pragma(mangle, "GetMouseWheelMove")
float rlGetMouseWheelMove();

alias GetMouseWheelMove = rlGetMouseWheelMove;

pragma(mangle, "GetMouseWheelMoveV")
Vector2 rlGetMouseWheelMoveV();

alias GetMouseWheelMoveV = rlGetMouseWheelMoveV;

pragma(mangle, "SetMouseCursor")
void rlSetMouseCursor(int cursor);

alias SetMouseCursor = rlSetMouseCursor;

pragma(mangle, "GetTouchX")
int rlGetTouchX();

alias GetTouchX = rlGetTouchX;

pragma(mangle, "GetTouchY")
int rlGetTouchY();

alias GetTouchY = rlGetTouchY;

pragma(mangle, "GetTouchPosition")
Vector2 rlGetTouchPosition(int index);

alias GetTouchPosition = rlGetTouchPosition;

pragma(mangle, "GetTouchPointId")
int rlGetTouchPointId(int index);

alias GetTouchPointId = rlGetTouchPointId;

pragma(mangle, "GetTouchPointCount")
int rlGetTouchPointCount();

alias GetTouchPointCount = rlGetTouchPointCount;

pragma(mangle, "SetGesturesEnabled")
void rlSetGesturesEnabled(uint flags);

alias SetGesturesEnabled = rlSetGesturesEnabled;

pragma(mangle, "IsGestureDetected")
bool rlIsGestureDetected(uint gesture);

alias IsGestureDetected = rlIsGestureDetected;

pragma(mangle, "GetGestureDetected")
int rlGetGestureDetected();

alias GetGestureDetected = rlGetGestureDetected;

pragma(mangle, "GetGestureHoldDuration")
float rlGetGestureHoldDuration();

alias GetGestureHoldDuration = rlGetGestureHoldDuration;

pragma(mangle, "GetGestureDragVector")
Vector2 rlGetGestureDragVector();

alias GetGestureDragVector = rlGetGestureDragVector;

pragma(mangle, "GetGestureDragAngle")
float rlGetGestureDragAngle();

alias GetGestureDragAngle = rlGetGestureDragAngle;

pragma(mangle, "GetGesturePinchVector")
Vector2 rlGetGesturePinchVector();

alias GetGesturePinchVector = rlGetGesturePinchVector;

pragma(mangle, "GetGesturePinchAngle")
float rlGetGesturePinchAngle();

alias GetGesturePinchAngle = rlGetGesturePinchAngle;

pragma(mangle, "UpdateCamera")
void rlUpdateCamera(Camera* camera, int mode);

alias UpdateCamera = rlUpdateCamera;

pragma(mangle, "UpdateCameraPro")
void rlUpdateCameraPro(Camera* camera, Vector3 movement, Vector3 rotation, float zoom);

alias UpdateCameraPro = rlUpdateCameraPro;

pragma(mangle, "SetShapesTexture")
void rlSetShapesTexture(Texture2D texture, Rectangle rec);

alias SetShapesTexture = rlSetShapesTexture;

pragma(mangle, "GetShapesTexture")
Texture2D rlGetShapesTexture();

alias GetShapesTexture = rlGetShapesTexture;

pragma(mangle, "GetShapesTextureRectangle")
Rectangle rlGetShapesTextureRectangle();

alias GetShapesTextureRectangle = rlGetShapesTextureRectangle;

pragma(mangle, "DrawPixel")
void rlDrawPixel(int posX, int posY, Color color);

alias DrawPixel = rlDrawPixel;

pragma(mangle, "DrawPixelV")
void rlDrawPixelV(Vector2 position, Color color);

alias DrawPixelV = rlDrawPixelV;

pragma(mangle, "DrawLine")
void rlDrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);

alias DrawLine = rlDrawLine;

pragma(mangle, "DrawLineV")
void rlDrawLineV(Vector2 startPos, Vector2 endPos, Color color);

alias DrawLineV = rlDrawLineV;

pragma(mangle, "DrawLineEx")
void rlDrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);

alias DrawLineEx = rlDrawLineEx;

pragma(mangle, "DrawLineStrip")
void rlDrawLineStrip(const(Vector2)* points, int pointCount, Color color);

alias DrawLineStrip = rlDrawLineStrip;

pragma(mangle, "DrawLineBezier")
void rlDrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);

alias DrawLineBezier = rlDrawLineBezier;

pragma(mangle, "DrawLineDashed")
void rlDrawLineDashed(Vector2 startPos, Vector2 endPos, int dashSize, int spaceSize, Color color);

alias DrawLineDashed = rlDrawLineDashed;

pragma(mangle, "DrawTriangle")
void rlDrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);

alias DrawTriangle = rlDrawTriangle;

pragma(mangle, "DrawTriangleGradient")
void rlDrawTriangleGradient(Vector2 v1, Vector2 v2, Vector2 v3, Color c1, Color c2, Color c3);

alias DrawTriangleGradient = rlDrawTriangleGradient;

pragma(mangle, "DrawTriangleLines")
void rlDrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);

alias DrawTriangleLines = rlDrawTriangleLines;

pragma(mangle, "DrawTriangleLinesEx")
void rlDrawTriangleLinesEx(Vector2 v1, Vector2 v2, Vector2 v3, float thick, Color color);

alias DrawTriangleLinesEx = rlDrawTriangleLinesEx;

pragma(mangle, "DrawTriangleFan")
void rlDrawTriangleFan(const(Vector2)* points, int pointCount, Color color);

alias DrawTriangleFan = rlDrawTriangleFan;

pragma(mangle, "DrawTriangleStrip")
void rlDrawTriangleStrip(const(Vector2)* points, int pointCount, Color color);

alias DrawTriangleStrip = rlDrawTriangleStrip;

pragma(mangle, "DrawRectangle")
void rlDrawRectangle(int posX, int posY, int width, int height, Color color);

alias DrawRectangle = rlDrawRectangle;

pragma(mangle, "DrawRectangleV")
void rlDrawRectangleV(Vector2 position, Vector2 size, Color color);

alias DrawRectangleV = rlDrawRectangleV;

pragma(mangle, "DrawRectangleRec")
void rlDrawRectangleRec(Rectangle rec, Color color);

alias DrawRectangleRec = rlDrawRectangleRec;

pragma(mangle, "DrawRectanglePro")
void rlDrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);

alias DrawRectanglePro = rlDrawRectanglePro;

pragma(mangle, "DrawRectangleGradientV")
void rlDrawRectangleGradientV(int posX, int posY, int width, int height, Color top, Color bottom);

alias DrawRectangleGradientV = rlDrawRectangleGradientV;

pragma(mangle, "DrawRectangleGradientH")
void rlDrawRectangleGradientH(int posX, int posY, int width, int height, Color left, Color right);

alias DrawRectangleGradientH = rlDrawRectangleGradientH;

pragma(mangle, "DrawRectangleGradientEx")
void rlDrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);

alias DrawRectangleGradientEx = rlDrawRectangleGradientEx;

pragma(mangle, "DrawRectangleLines")
void rlDrawRectangleLines(int posX, int posY, int width, int height, Color color);

alias DrawRectangleLines = rlDrawRectangleLines;

pragma(mangle, "DrawRectangleLinesEx")
void rlDrawRectangleLinesEx(Rectangle rec, float thick, Color color);

alias DrawRectangleLinesEx = rlDrawRectangleLinesEx;

pragma(mangle, "DrawRectangleRounded")
void rlDrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);

alias DrawRectangleRounded = rlDrawRectangleRounded;

pragma(mangle, "DrawRectangleRoundedLines")
void rlDrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, Color color);

alias DrawRectangleRoundedLines = rlDrawRectangleRoundedLines;

pragma(mangle, "DrawRectangleRoundedLinesEx")
void rlDrawRectangleRoundedLinesEx(Rectangle rec, float roundness, int segments, float thick, Color color);

alias DrawRectangleRoundedLinesEx = rlDrawRectangleRoundedLinesEx;

pragma(mangle, "DrawPoly")
void rlDrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);

alias DrawPoly = rlDrawPoly;

pragma(mangle, "DrawPolyLines")
void rlDrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);

alias DrawPolyLines = rlDrawPolyLines;

pragma(mangle, "DrawPolyLinesEx")
void rlDrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float thick, Color color);

alias DrawPolyLinesEx = rlDrawPolyLinesEx;

pragma(mangle, "DrawCircle")
void rlDrawCircle(int centerX, int centerY, float radius, Color color);

alias DrawCircle = rlDrawCircle;

pragma(mangle, "DrawCircleV")
void rlDrawCircleV(Vector2 center, float radius, Color color);

alias DrawCircleV = rlDrawCircleV;

pragma(mangle, "DrawCircleGradient")
void rlDrawCircleGradient(Vector2 center, float radius, Color inner, Color outer);

alias DrawCircleGradient = rlDrawCircleGradient;

pragma(mangle, "DrawCircleSector")
void rlDrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);

alias DrawCircleSector = rlDrawCircleSector;

pragma(mangle, "DrawCircleSectorLines")
void rlDrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);

alias DrawCircleSectorLines = rlDrawCircleSectorLines;

pragma(mangle, "DrawCircleSectorLinesEx")
void rlDrawCircleSectorLinesEx(Vector2 center, float radius, float startAngle, float endAngle, int segments, float thick, Color color);

alias DrawCircleSectorLinesEx = rlDrawCircleSectorLinesEx;

pragma(mangle, "DrawCircleLines")
void rlDrawCircleLines(int centerX, int centerY, float radius, Color color);

alias DrawCircleLines = rlDrawCircleLines;

pragma(mangle, "DrawCircleLinesV")
void rlDrawCircleLinesV(Vector2 center, float radius, Color color);

alias DrawCircleLinesV = rlDrawCircleLinesV;

pragma(mangle, "DrawCircleLinesEx")
void rlDrawCircleLinesEx(Vector2 center, float radius, float thick, Color color);

alias DrawCircleLinesEx = rlDrawCircleLinesEx;

pragma(mangle, "DrawEllipse")
void rlDrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);

alias DrawEllipse = rlDrawEllipse;

pragma(mangle, "DrawEllipseV")
void rlDrawEllipseV(Vector2 center, float radiusH, float radiusV, Color color);

alias DrawEllipseV = rlDrawEllipseV;

pragma(mangle, "DrawEllipseLines")
void rlDrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);

alias DrawEllipseLines = rlDrawEllipseLines;

pragma(mangle, "DrawEllipseLinesV")
void rlDrawEllipseLinesV(Vector2 center, float radiusH, float radiusV, Color color);

alias DrawEllipseLinesV = rlDrawEllipseLinesV;

pragma(mangle, "DrawEllipseLinesEx")
void rlDrawEllipseLinesEx(Vector2 center, float radiusH, float radiusV, float thick, Color color);

alias DrawEllipseLinesEx = rlDrawEllipseLinesEx;

pragma(mangle, "DrawRing")
void rlDrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);

alias DrawRing = rlDrawRing;

pragma(mangle, "DrawRingLines")
void rlDrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);

alias DrawRingLines = rlDrawRingLines;

pragma(mangle, "DrawRingLinesEx")
void rlDrawRingLinesEx(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, float thick, Color color);

alias DrawRingLinesEx = rlDrawRingLinesEx;

pragma(mangle, "DrawSplineLinear")
void rlDrawSplineLinear(const(Vector2)* points, int pointCount, float thick, Color color);

alias DrawSplineLinear = rlDrawSplineLinear;

pragma(mangle, "DrawSplineBasis")
void rlDrawSplineBasis(const(Vector2)* points, int pointCount, float thick, Color color);

alias DrawSplineBasis = rlDrawSplineBasis;

pragma(mangle, "DrawSplineCatmullRom")
void rlDrawSplineCatmullRom(const(Vector2)* points, int pointCount, float thick, Color color);

alias DrawSplineCatmullRom = rlDrawSplineCatmullRom;

pragma(mangle, "DrawSplineBezierQuadratic")
void rlDrawSplineBezierQuadratic(const(Vector2)* points, int pointCount, float thick, Color color);

alias DrawSplineBezierQuadratic = rlDrawSplineBezierQuadratic;

pragma(mangle, "DrawSplineBezierCubic")
void rlDrawSplineBezierCubic(const(Vector2)* points, int pointCount, float thick, Color color);

alias DrawSplineBezierCubic = rlDrawSplineBezierCubic;

pragma(mangle, "DrawSplineSegmentLinear")
void rlDrawSplineSegmentLinear(Vector2 p1, Vector2 p2, float thick, Color color);

alias DrawSplineSegmentLinear = rlDrawSplineSegmentLinear;

pragma(mangle, "DrawSplineSegmentBasis")
void rlDrawSplineSegmentBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color);

alias DrawSplineSegmentBasis = rlDrawSplineSegmentBasis;

pragma(mangle, "DrawSplineSegmentCatmullRom")
void rlDrawSplineSegmentCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color);

alias DrawSplineSegmentCatmullRom = rlDrawSplineSegmentCatmullRom;

pragma(mangle, "DrawSplineSegmentBezierQuadratic")
void rlDrawSplineSegmentBezierQuadratic(Vector2 p1, Vector2 c2, Vector2 p3, float thick, Color color);

alias DrawSplineSegmentBezierQuadratic = rlDrawSplineSegmentBezierQuadratic;

pragma(mangle, "DrawSplineSegmentBezierCubic")
void rlDrawSplineSegmentBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float thick, Color color);

alias DrawSplineSegmentBezierCubic = rlDrawSplineSegmentBezierCubic;

pragma(mangle, "GetSplinePointLinear")
Vector2 rlGetSplinePointLinear(Vector2 startPos, Vector2 endPos, float t);

alias GetSplinePointLinear = rlGetSplinePointLinear;

pragma(mangle, "GetSplinePointBasis")
Vector2 rlGetSplinePointBasis(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t);

alias GetSplinePointBasis = rlGetSplinePointBasis;

pragma(mangle, "GetSplinePointCatmullRom")
Vector2 rlGetSplinePointCatmullRom(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t);

alias GetSplinePointCatmullRom = rlGetSplinePointCatmullRom;

pragma(mangle, "GetSplinePointBezierQuadratic")
Vector2 rlGetSplinePointBezierQuadratic(Vector2 p1, Vector2 c2, Vector2 p3, float t);

alias GetSplinePointBezierQuadratic = rlGetSplinePointBezierQuadratic;

pragma(mangle, "GetSplinePointBezierCubic")
Vector2 rlGetSplinePointBezierCubic(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float t);

alias GetSplinePointBezierCubic = rlGetSplinePointBezierCubic;

pragma(mangle, "CheckCollisionRecs")
bool rlCheckCollisionRecs(Rectangle rec1, Rectangle rec2);

alias CheckCollisionRecs = rlCheckCollisionRecs;

pragma(mangle, "CheckCollisionCircles")
bool rlCheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);

alias CheckCollisionCircles = rlCheckCollisionCircles;

pragma(mangle, "CheckCollisionCircleRec")
bool rlCheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);

alias CheckCollisionCircleRec = rlCheckCollisionCircleRec;

pragma(mangle, "CheckCollisionCircleLine")
bool rlCheckCollisionCircleLine(Vector2 center, float radius, Vector2 p1, Vector2 p2);

alias CheckCollisionCircleLine = rlCheckCollisionCircleLine;

pragma(mangle, "CheckCollisionPointRec")
bool rlCheckCollisionPointRec(Vector2 point, Rectangle rec);

alias CheckCollisionPointRec = rlCheckCollisionPointRec;

pragma(mangle, "CheckCollisionPointCircle")
bool rlCheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);

alias CheckCollisionPointCircle = rlCheckCollisionPointCircle;

pragma(mangle, "CheckCollisionPointTriangle")
bool rlCheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);

alias CheckCollisionPointTriangle = rlCheckCollisionPointTriangle;

pragma(mangle, "CheckCollisionPointLine")
bool rlCheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);

alias CheckCollisionPointLine = rlCheckCollisionPointLine;

pragma(mangle, "CheckCollisionPointPoly")
bool rlCheckCollisionPointPoly(Vector2 point, const(Vector2)* points, int pointCount);

alias CheckCollisionPointPoly = rlCheckCollisionPointPoly;

pragma(mangle, "CheckCollisionLines")
bool rlCheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2* collisionPoint);

alias CheckCollisionLines = rlCheckCollisionLines;

pragma(mangle, "GetCollisionRec")
Rectangle rlGetCollisionRec(Rectangle rec1, Rectangle rec2);

alias GetCollisionRec = rlGetCollisionRec;

pragma(mangle, "LoadImage")
Image rlLoadImage(const(char)* fileName);

alias LoadImage = rlLoadImage;

pragma(mangle, "LoadImageRaw")
Image rlLoadImageRaw(const(char)* fileName, int width, int height, int format, int headerSize);

alias LoadImageRaw = rlLoadImageRaw;

pragma(mangle, "LoadImageAnim")
Image rlLoadImageAnim(const(char)* fileName, int* frames);

alias LoadImageAnim = rlLoadImageAnim;

pragma(mangle, "LoadImageAnimFromMemory")
Image rlLoadImageAnimFromMemory(const(char)* fileType, const(ubyte)* fileData, int dataSize, int* frames);

alias LoadImageAnimFromMemory = rlLoadImageAnimFromMemory;

pragma(mangle, "LoadImageFromMemory")
Image rlLoadImageFromMemory(const(char)* fileType, const(ubyte)* fileData, int dataSize);

alias LoadImageFromMemory = rlLoadImageFromMemory;

pragma(mangle, "LoadImageFromTexture")
Image rlLoadImageFromTexture(Texture2D texture);

alias LoadImageFromTexture = rlLoadImageFromTexture;

pragma(mangle, "LoadImageFromScreen")
Image rlLoadImageFromScreen();

alias LoadImageFromScreen = rlLoadImageFromScreen;

pragma(mangle, "IsImageValid")
bool rlIsImageValid(Image image);

alias IsImageValid = rlIsImageValid;

pragma(mangle, "UnloadImage")
void rlUnloadImage(Image image);

alias UnloadImage = rlUnloadImage;

pragma(mangle, "ExportImage")
bool rlExportImage(Image image, const(char)* fileName);

alias ExportImage = rlExportImage;

pragma(mangle, "ExportImageToMemory")
ubyte* rlExportImageToMemory(Image image, const(char)* fileType, int* fileSize);

alias ExportImageToMemory = rlExportImageToMemory;

pragma(mangle, "ExportImageAsCode")
bool rlExportImageAsCode(Image image, const(char)* fileName);

alias ExportImageAsCode = rlExportImageAsCode;

pragma(mangle, "GenImageColor")
Image rlGenImageColor(int width, int height, Color color);

alias GenImageColor = rlGenImageColor;

pragma(mangle, "GenImageGradientLinear")
Image rlGenImageGradientLinear(int width, int height, int direction, Color start, Color end);

alias GenImageGradientLinear = rlGenImageGradientLinear;

pragma(mangle, "GenImageGradientRadial")
Image rlGenImageGradientRadial(int width, int height, float density, Color inner, Color outer);

alias GenImageGradientRadial = rlGenImageGradientRadial;

pragma(mangle, "GenImageGradientSquare")
Image rlGenImageGradientSquare(int width, int height, float density, Color inner, Color outer);

alias GenImageGradientSquare = rlGenImageGradientSquare;

pragma(mangle, "GenImageChecked")
Image rlGenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);

alias GenImageChecked = rlGenImageChecked;

pragma(mangle, "GenImageWhiteNoise")
Image rlGenImageWhiteNoise(int width, int height, float factor);

alias GenImageWhiteNoise = rlGenImageWhiteNoise;

pragma(mangle, "GenImagePerlinNoise")
Image rlGenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);

alias GenImagePerlinNoise = rlGenImagePerlinNoise;

pragma(mangle, "GenImageCellular")
Image rlGenImageCellular(int width, int height, int tileSize);

alias GenImageCellular = rlGenImageCellular;

pragma(mangle, "GenImageText")
Image rlGenImageText(int width, int height, const(char)* text);

alias GenImageText = rlGenImageText;

pragma(mangle, "ImageCopy")
Image rlImageCopy(Image image);

alias ImageCopy = rlImageCopy;

pragma(mangle, "ImageFromImage")
Image rlImageFromImage(Image image, Rectangle rec);

alias ImageFromImage = rlImageFromImage;

pragma(mangle, "ImageFromChannel")
Image rlImageFromChannel(Image image, int selectedChannel);

alias ImageFromChannel = rlImageFromChannel;

pragma(mangle, "ImageText")
Image rlImageText(const(char)* text, int fontSize, Color color);

alias ImageText = rlImageText;

pragma(mangle, "ImageTextEx")
Image rlImageTextEx(Font font, const(char)* text, float fontSize, float spacing, Color tint);

alias ImageTextEx = rlImageTextEx;

pragma(mangle, "ImageFormat")
void rlImageFormat(Image* image, int newFormat);

alias ImageFormat = rlImageFormat;

pragma(mangle, "ImageToPOT")
void rlImageToPOT(Image* image, Color fill);

alias ImageToPOT = rlImageToPOT;

pragma(mangle, "ImageCrop")
void rlImageCrop(Image* image, Rectangle crop);

alias ImageCrop = rlImageCrop;

pragma(mangle, "ImageAlphaCrop")
void rlImageAlphaCrop(Image* image, float threshold);

alias ImageAlphaCrop = rlImageAlphaCrop;

pragma(mangle, "ImageAlphaClear")
void rlImageAlphaClear(Image* image, Color color, float threshold);

alias ImageAlphaClear = rlImageAlphaClear;

pragma(mangle, "ImageAlphaMask")
void rlImageAlphaMask(Image* image, Image alphaMask);

alias ImageAlphaMask = rlImageAlphaMask;

pragma(mangle, "ImageAlphaPremultiply")
void rlImageAlphaPremultiply(Image* image);

alias ImageAlphaPremultiply = rlImageAlphaPremultiply;

pragma(mangle, "ImageBlurGaussian")
void rlImageBlurGaussian(Image* image, int blurSize);

alias ImageBlurGaussian = rlImageBlurGaussian;

pragma(mangle, "ImageKernelConvolution")
void rlImageKernelConvolution(Image* image, const(float)* kernel, int kernelSize);

alias ImageKernelConvolution = rlImageKernelConvolution;

pragma(mangle, "ImageResize")
void rlImageResize(Image* image, int newWidth, int newHeight);

alias ImageResize = rlImageResize;

pragma(mangle, "ImageResizeNN")
void rlImageResizeNN(Image* image, int newWidth, int newHeight);

alias ImageResizeNN = rlImageResizeNN;

pragma(mangle, "ImageResizeCanvas")
void rlImageResizeCanvas(Image* image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill);

alias ImageResizeCanvas = rlImageResizeCanvas;

pragma(mangle, "ImageMipmaps")
void rlImageMipmaps(Image* image);

alias ImageMipmaps = rlImageMipmaps;

pragma(mangle, "ImageDither")
void rlImageDither(Image* image, int rBpp, int gBpp, int bBpp, int aBpp);

alias ImageDither = rlImageDither;

pragma(mangle, "ImageFlipVertical")
void rlImageFlipVertical(Image* image);

alias ImageFlipVertical = rlImageFlipVertical;

pragma(mangle, "ImageFlipHorizontal")
void rlImageFlipHorizontal(Image* image);

alias ImageFlipHorizontal = rlImageFlipHorizontal;

pragma(mangle, "ImageRotate")
void rlImageRotate(Image* image, int degrees);

alias ImageRotate = rlImageRotate;

pragma(mangle, "ImageRotateCW")
void rlImageRotateCW(Image* image);

alias ImageRotateCW = rlImageRotateCW;

pragma(mangle, "ImageRotateCCW")
void rlImageRotateCCW(Image* image);

alias ImageRotateCCW = rlImageRotateCCW;

pragma(mangle, "ImageColorTint")
void rlImageColorTint(Image* image, Color color);

alias ImageColorTint = rlImageColorTint;

pragma(mangle, "ImageColorInvert")
void rlImageColorInvert(Image* image);

alias ImageColorInvert = rlImageColorInvert;

pragma(mangle, "ImageColorGrayscale")
void rlImageColorGrayscale(Image* image);

alias ImageColorGrayscale = rlImageColorGrayscale;

pragma(mangle, "ImageColorContrast")
void rlImageColorContrast(Image* image, int contrast);

alias ImageColorContrast = rlImageColorContrast;

pragma(mangle, "ImageColorBrightness")
void rlImageColorBrightness(Image* image, int brightness);

alias ImageColorBrightness = rlImageColorBrightness;

pragma(mangle, "ImageColorReplace")
void rlImageColorReplace(Image* image, Color color, Color replace);

alias ImageColorReplace = rlImageColorReplace;

pragma(mangle, "LoadImageColors")
Color* rlLoadImageColors(Image image);

alias LoadImageColors = rlLoadImageColors;

pragma(mangle, "LoadImagePalette")
Color* rlLoadImagePalette(Image image, int maxPaletteSize, int* colorCount);

alias LoadImagePalette = rlLoadImagePalette;

pragma(mangle, "UnloadImageColors")
void rlUnloadImageColors(Color* colors);

alias UnloadImageColors = rlUnloadImageColors;

pragma(mangle, "UnloadImagePalette")
void rlUnloadImagePalette(Color* colors);

alias UnloadImagePalette = rlUnloadImagePalette;

pragma(mangle, "GetImageAlphaBorder")
Rectangle rlGetImageAlphaBorder(Image image, float threshold);

alias GetImageAlphaBorder = rlGetImageAlphaBorder;

pragma(mangle, "GetImageColor")
Color rlGetImageColor(Image image, int x, int y);

alias GetImageColor = rlGetImageColor;

pragma(mangle, "ImageClearBackground")
void rlImageClearBackground(Image* dst, Color color);

alias ImageClearBackground = rlImageClearBackground;

pragma(mangle, "ImageDrawPixel")
void rlImageDrawPixel(Image* dst, int posX, int posY, Color color);

alias ImageDrawPixel = rlImageDrawPixel;

pragma(mangle, "ImageDrawPixelV")
void rlImageDrawPixelV(Image* dst, Vector2 position, Color color);

alias ImageDrawPixelV = rlImageDrawPixelV;

pragma(mangle, "ImageDrawLine")
void rlImageDrawLine(Image* dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);

alias ImageDrawLine = rlImageDrawLine;

pragma(mangle, "ImageDrawLineV")
void rlImageDrawLineV(Image* dst, Vector2 start, Vector2 end, Color color);

alias ImageDrawLineV = rlImageDrawLineV;

pragma(mangle, "ImageDrawLineEx")
void rlImageDrawLineEx(Image* dst, Vector2 start, Vector2 end, int thick, Color color);

alias ImageDrawLineEx = rlImageDrawLineEx;

pragma(mangle, "ImageDrawLineStrip")
void rlImageDrawLineStrip(Image* dst, const(Vector2)* points, int pointCount, Color color);

alias ImageDrawLineStrip = rlImageDrawLineStrip;

pragma(mangle, "ImageDrawTriangle")
void rlImageDrawTriangle(Image* dst, Vector2 v1, Vector2 v2, Vector2 v3, Color color);

alias ImageDrawTriangle = rlImageDrawTriangle;

pragma(mangle, "ImageDrawTriangleGradient")
void rlImageDrawTriangleGradient(Image* dst, Vector2 v1, Vector2 v2, Vector2 v3, Color c1, Color c2, Color c3);

alias ImageDrawTriangleGradient = rlImageDrawTriangleGradient;

pragma(mangle, "ImageDrawTriangleLines")
void rlImageDrawTriangleLines(Image* dst, Vector2 v1, Vector2 v2, Vector2 v3, Color color);

alias ImageDrawTriangleLines = rlImageDrawTriangleLines;

pragma(mangle, "ImageDrawTriangleFan")
void rlImageDrawTriangleFan(Image* dst, const(Vector2)* points, int pointCount, Color color);

alias ImageDrawTriangleFan = rlImageDrawTriangleFan;

pragma(mangle, "ImageDrawTriangleStrip")
void rlImageDrawTriangleStrip(Image* dst, const(Vector2)* points, int pointCount, Color color);

alias ImageDrawTriangleStrip = rlImageDrawTriangleStrip;

pragma(mangle, "ImageDrawRectangle")
void rlImageDrawRectangle(Image* dst, int posX, int posY, int width, int height, Color color);

alias ImageDrawRectangle = rlImageDrawRectangle;

pragma(mangle, "ImageDrawRectangleV")
void rlImageDrawRectangleV(Image* dst, Vector2 position, Vector2 size, Color color);

alias ImageDrawRectangleV = rlImageDrawRectangleV;

pragma(mangle, "ImageDrawRectangleRec")
void rlImageDrawRectangleRec(Image* dst, Rectangle rec, Color color);

alias ImageDrawRectangleRec = rlImageDrawRectangleRec;

pragma(mangle, "ImageDrawRectanglePro")
void rlImageDrawRectanglePro(Image* dst, Rectangle rec, Vector2 origin, float rotation, Color color);

alias ImageDrawRectanglePro = rlImageDrawRectanglePro;

pragma(mangle, "ImageDrawRectangleLines")
void rlImageDrawRectangleLines(Image* dst, int posX, int posY, int width, int height, Color color);

alias ImageDrawRectangleLines = rlImageDrawRectangleLines;

pragma(mangle, "ImageDrawRectangleLinesEx")
void rlImageDrawRectangleLinesEx(Image* dst, Rectangle rec, int thick, Color color);

alias ImageDrawRectangleLinesEx = rlImageDrawRectangleLinesEx;

pragma(mangle, "ImageDrawRectangleGradientEx")
void rlImageDrawRectangleGradientEx(Image* dst, Rectangle rec, Color col1, Color col2, Color col3, Color col4);

alias ImageDrawRectangleGradientEx = rlImageDrawRectangleGradientEx;

pragma(mangle, "ImageDrawCircle")
void rlImageDrawCircle(Image* dst, int centerX, int centerY, int radius, Color color);

alias ImageDrawCircle = rlImageDrawCircle;

pragma(mangle, "ImageDrawCircleV")
void rlImageDrawCircleV(Image* dst, Vector2 center, int radius, Color color);

alias ImageDrawCircleV = rlImageDrawCircleV;

pragma(mangle, "ImageDrawCircleLines")
void rlImageDrawCircleLines(Image* dst, int centerX, int centerY, int radius, Color color);

alias ImageDrawCircleLines = rlImageDrawCircleLines;

pragma(mangle, "ImageDrawCircleLinesV")
void rlImageDrawCircleLinesV(Image* dst, Vector2 center, int radius, Color color);

alias ImageDrawCircleLinesV = rlImageDrawCircleLinesV;

pragma(mangle, "ImageDrawCircleGradient")
void rlImageDrawCircleGradient(Image* dst, Vector2 center, float radius, Color inner, Color outer);

alias ImageDrawCircleGradient = rlImageDrawCircleGradient;

pragma(mangle, "ImageDrawImage")
void rlImageDrawImage(Image* dst, Image src, int posX, int posY, Color tint);

alias ImageDrawImage = rlImageDrawImage;

pragma(mangle, "ImageDrawImageEx")
void rlImageDrawImageEx(Image* dst, Image src, Vector2 position, float rotation, float scale, Color tint);

alias ImageDrawImageEx = rlImageDrawImageEx;

pragma(mangle, "ImageDrawImageRec")
void rlImageDrawImageRec(Image* dst, Image src, Rectangle srcRec, Vector2 position, Color tint);

alias ImageDrawImageRec = rlImageDrawImageRec;

pragma(mangle, "ImageDrawImagePro")
void rlImageDrawImagePro(Image* dst, Image src, Rectangle srcRec, Rectangle dstRec, Vector2 origin, float rotation, Color tint);

alias ImageDrawImagePro = rlImageDrawImagePro;

pragma(mangle, "ImageDrawText")
void rlImageDrawText(Image* dst, const(char)* text, int posX, int posY, int fontSize, Color color);

alias ImageDrawText = rlImageDrawText;

pragma(mangle, "ImageDrawTextEx")
void rlImageDrawTextEx(Image* dst, Font font, const(char)* text, Vector2 position, float fontSize, float spacing, Color tint);

alias ImageDrawTextEx = rlImageDrawTextEx;

pragma(mangle, "ImageDrawTextPro")
void rlImageDrawTextPro(Image* dst, Font font, const(char)* text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);

alias ImageDrawTextPro = rlImageDrawTextPro;

pragma(mangle, "LoadTexture")
Texture2D rlLoadTexture(const(char)* fileName);

alias LoadTexture = rlLoadTexture;

pragma(mangle, "LoadTextureFromImage")
Texture2D rlLoadTextureFromImage(Image image);

alias LoadTextureFromImage = rlLoadTextureFromImage;

pragma(mangle, "LoadTextureCubemap")
TextureCubemap rlLoadTextureCubemap(Image image, int layout);

alias LoadTextureCubemap = rlLoadTextureCubemap;

pragma(mangle, "LoadRenderTexture")
RenderTexture2D rlLoadRenderTexture(int width, int height);

alias LoadRenderTexture = rlLoadRenderTexture;

pragma(mangle, "LoadRenderTextureEx")
RenderTexture2D rlLoadRenderTextureEx(int width, int height, int format);

alias LoadRenderTextureEx = rlLoadRenderTextureEx;

pragma(mangle, "IsTextureValid")
bool rlIsTextureValid(Texture2D texture);

alias IsTextureValid = rlIsTextureValid;

pragma(mangle, "UnloadTexture")
void rlUnloadTexture(Texture2D texture);

alias UnloadTexture = rlUnloadTexture;

pragma(mangle, "IsRenderTextureValid")
bool rlIsRenderTextureValid(RenderTexture2D target);

alias IsRenderTextureValid = rlIsRenderTextureValid;

pragma(mangle, "UnloadRenderTexture")
void rlUnloadRenderTexture(RenderTexture2D target);

alias UnloadRenderTexture = rlUnloadRenderTexture;

pragma(mangle, "UpdateTexture")
void rlUpdateTexture(Texture2D texture, const(void)* pixels);

alias UpdateTexture = rlUpdateTexture;

pragma(mangle, "UpdateTextureRec")
void rlUpdateTextureRec(Texture2D texture, Rectangle rec, const(void)* pixels);

alias UpdateTextureRec = rlUpdateTextureRec;

pragma(mangle, "GenTextureMipmaps")
void rlGenTextureMipmaps(Texture2D* texture);

alias GenTextureMipmaps = rlGenTextureMipmaps;

pragma(mangle, "SetTextureFilter")
void rlSetTextureFilter(Texture2D texture, int filter);

alias SetTextureFilter = rlSetTextureFilter;

pragma(mangle, "SetTextureWrap")
void rlSetTextureWrap(Texture2D texture, int wrap);

alias SetTextureWrap = rlSetTextureWrap;

pragma(mangle, "DrawTexture")
void rlDrawTexture(Texture2D texture, int posX, int posY, Color tint);

alias DrawTexture = rlDrawTexture;

pragma(mangle, "DrawTextureV")
void rlDrawTextureV(Texture2D texture, Vector2 position, Color tint);

alias DrawTextureV = rlDrawTextureV;

pragma(mangle, "DrawTextureEx")
void rlDrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);

alias DrawTextureEx = rlDrawTextureEx;

pragma(mangle, "DrawTextureRec")
void rlDrawTextureRec(Texture2D texture, Rectangle rec, Vector2 position, Color tint);

alias DrawTextureRec = rlDrawTextureRec;

pragma(mangle, "DrawTexturePro")
void rlDrawTexturePro(Texture2D texture, Rectangle srcrec, Rectangle dstrec, Vector2 origin, float rotation, Color tint);

alias DrawTexturePro = rlDrawTexturePro;

pragma(mangle, "DrawTextureNPatch")
void rlDrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dstrec, Vector2 origin, float rotation, Color tint);

alias DrawTextureNPatch = rlDrawTextureNPatch;

pragma(mangle, "ColorIsEqual")
bool rlColorIsEqual(Color col1, Color col2);

alias ColorIsEqual = rlColorIsEqual;

pragma(mangle, "Fade")
Color rlFade(Color color, float alpha);

alias Fade = rlFade;

pragma(mangle, "ColorToInt")
int rlColorToInt(Color color);

alias ColorToInt = rlColorToInt;

pragma(mangle, "ColorNormalize")
Vector4 rlColorNormalize(Color color);

alias ColorNormalize = rlColorNormalize;

pragma(mangle, "ColorFromNormalized")
Color rlColorFromNormalized(Vector4 normalized);

alias ColorFromNormalized = rlColorFromNormalized;

pragma(mangle, "ColorToHSV")
Vector3 rlColorToHSV(Color color);

alias ColorToHSV = rlColorToHSV;

pragma(mangle, "ColorFromHSV")
Color rlColorFromHSV(float hue, float saturation, float value);

alias ColorFromHSV = rlColorFromHSV;

pragma(mangle, "ColorTint")
Color rlColorTint(Color color, Color tint);

alias ColorTint = rlColorTint;

pragma(mangle, "ColorBrightness")
Color rlColorBrightness(Color color, float factor);

alias ColorBrightness = rlColorBrightness;

pragma(mangle, "ColorContrast")
Color rlColorContrast(Color color, float contrast);

alias ColorContrast = rlColorContrast;

pragma(mangle, "ColorAlpha")
Color rlColorAlpha(Color color, float alpha);

alias ColorAlpha = rlColorAlpha;

pragma(mangle, "ColorAlphaBlend")
Color rlColorAlphaBlend(Color dst, Color src, Color tint);

alias ColorAlphaBlend = rlColorAlphaBlend;

pragma(mangle, "ColorLerp")
Color rlColorLerp(Color color1, Color color2, float factor);

alias ColorLerp = rlColorLerp;

pragma(mangle, "GetColor")
Color rlGetColor(uint hexValue);

alias GetColor = rlGetColor;

pragma(mangle, "GetPixelColor")
Color rlGetPixelColor(const(void)* srcPtr, int format);

alias GetPixelColor = rlGetPixelColor;

pragma(mangle, "SetPixelColor")
void rlSetPixelColor(void* dstPtr, Color color, int format);

alias SetPixelColor = rlSetPixelColor;

pragma(mangle, "GetPixelDataSize")
int rlGetPixelDataSize(int width, int height, int format);

alias GetPixelDataSize = rlGetPixelDataSize;

pragma(mangle, "GetFontDefault")
Font rlGetFontDefault();

alias GetFontDefault = rlGetFontDefault;

pragma(mangle, "LoadFont")
Font rlLoadFont(const(char)* fileName);

alias LoadFont = rlLoadFont;

pragma(mangle, "LoadFontEx")
Font rlLoadFontEx(const(char)* fileName, int fontSize, const(int)* codepoints, int codepointCount);

alias LoadFontEx = rlLoadFontEx;

pragma(mangle, "LoadFontFromImage")
Font rlLoadFontFromImage(Image image, Color key, int firstChar);

alias LoadFontFromImage = rlLoadFontFromImage;

pragma(mangle, "LoadFontFromMemory")
Font rlLoadFontFromMemory(const(char)* fileType, const(ubyte)* fileData, int dataSize, int fontSize, const(
        int)* codepoints, int codepointCount);

alias LoadFontFromMemory = rlLoadFontFromMemory;

pragma(mangle, "IsFontValid")
bool rlIsFontValid(Font font);

alias IsFontValid = rlIsFontValid;

pragma(mangle, "LoadFontData")
GlyphInfo* rlLoadFontData(const(ubyte)* fileData, int dataSize, int fontSize, const(int)* codepoints, int codepointCount, int type, int* glyphCount);

alias LoadFontData = rlLoadFontData;

pragma(mangle, "GenImageFontAtlas")
Image rlGenImageFontAtlas(const(GlyphInfo)* glyphs, Rectangle** glyphRecs, int glyphCount, int fontSize, int padding, int packMethod);

alias GenImageFontAtlas = rlGenImageFontAtlas;

pragma(mangle, "UnloadFontData")
void rlUnloadFontData(GlyphInfo* glyphs, int glyphCount);

alias UnloadFontData = rlUnloadFontData;

pragma(mangle, "UnloadFont")
void rlUnloadFont(Font font);

alias UnloadFont = rlUnloadFont;

pragma(mangle, "ExportFontAsCode")
bool rlExportFontAsCode(Font font, const(char)* fileName);

alias ExportFontAsCode = rlExportFontAsCode;

pragma(mangle, "DrawFPS")
void rlDrawFPS(int posX, int posY);

alias DrawFPS = rlDrawFPS;

pragma(mangle, "DrawText")
void rlDrawText(const(char)* text, int posX, int posY, int fontSize, Color color);

alias DrawText = rlDrawText;

pragma(mangle, "DrawTextEx")
void rlDrawTextEx(Font font, const(char)* text, Vector2 position, float fontSize, float spacing, Color tint);

alias DrawTextEx = rlDrawTextEx;

pragma(mangle, "DrawTextPro")
void rlDrawTextPro(Font font, const(char)* text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);

alias DrawTextPro = rlDrawTextPro;

pragma(mangle, "DrawTextCodepoint")
void rlDrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);

alias DrawTextCodepoint = rlDrawTextCodepoint;

pragma(mangle, "DrawTextCodepoints")
void rlDrawTextCodepoints(Font font, const(int)* codepoints, int codepointCount, Vector2 position, float fontSize, float spacing, Color tint);

alias DrawTextCodepoints = rlDrawTextCodepoints;

pragma(mangle, "SetTextLineSpacing")
void rlSetTextLineSpacing(int spacing);

alias SetTextLineSpacing = rlSetTextLineSpacing;

pragma(mangle, "MeasureText")
int rlMeasureText(const(char)* text, int fontSize);

alias MeasureText = rlMeasureText;

pragma(mangle, "MeasureTextEx")
Vector2 rlMeasureTextEx(Font font, const(char)* text, float fontSize, float spacing);

alias MeasureTextEx = rlMeasureTextEx;

pragma(mangle, "MeasureTextCodepoints")
Vector2 rlMeasureTextCodepoints(Font font, const(int)* codepoints, int length, float fontSize, float spacing);

alias MeasureTextCodepoints = rlMeasureTextCodepoints;

pragma(mangle, "GetGlyphIndex")
int rlGetGlyphIndex(Font font, int codepoint);

alias GetGlyphIndex = rlGetGlyphIndex;

pragma(mangle, "GetGlyphInfo")
GlyphInfo rlGetGlyphInfo(Font font, int codepoint);

alias GetGlyphInfo = rlGetGlyphInfo;

pragma(mangle, "GetGlyphAtlasRec")
Rectangle rlGetGlyphAtlasRec(Font font, int codepoint);

alias GetGlyphAtlasRec = rlGetGlyphAtlasRec;

pragma(mangle, "LoadUTF8")
char* rlLoadUTF8(const(int)* codepoints, int length);

alias LoadUTF8 = rlLoadUTF8;

pragma(mangle, "UnloadUTF8")
void rlUnloadUTF8(char* text);

alias UnloadUTF8 = rlUnloadUTF8;

pragma(mangle, "LoadCodepoints")
int* rlLoadCodepoints(const(char)* text, int* count);

alias LoadCodepoints = rlLoadCodepoints;

pragma(mangle, "UnloadCodepoints")
void rlUnloadCodepoints(int* codepoints);

alias UnloadCodepoints = rlUnloadCodepoints;

pragma(mangle, "GetCodepointCount")
int rlGetCodepointCount(const(char)* text);

alias GetCodepointCount = rlGetCodepointCount;

pragma(mangle, "GetCodepoint")
int rlGetCodepoint(const(char)* text, int* codepointSize);

alias GetCodepoint = rlGetCodepoint;

pragma(mangle, "GetCodepointNext")
int rlGetCodepointNext(const(char)* text, int* codepointSize);

alias GetCodepointNext = rlGetCodepointNext;

pragma(mangle, "GetCodepointPrevious")
int rlGetCodepointPrevious(const(char)* text, int* codepointSize);

alias GetCodepointPrevious = rlGetCodepointPrevious;

pragma(mangle, "CodepointToUTF8")
const(char)* rlCodepointToUTF8(int codepoint, int* utf8Size);

alias CodepointToUTF8 = rlCodepointToUTF8;

pragma(mangle, "LoadTextLines")
char** rlLoadTextLines(const(char)* text, int* count);

alias LoadTextLines = rlLoadTextLines;

pragma(mangle, "UnloadTextLines")
void rlUnloadTextLines(char** text, int lineCount);

alias UnloadTextLines = rlUnloadTextLines;

pragma(mangle, "TextCopy")
int rlTextCopy(char* dst, const(char)* src);

alias TextCopy = rlTextCopy;

pragma(mangle, "TextIsEqual")
bool rlTextIsEqual(const(char)* text1, const(char)* text2);

alias TextIsEqual = rlTextIsEqual;

pragma(mangle, "TextLength")
uint rlTextLength(const(char)* text);

alias TextLength = rlTextLength;

pragma(mangle, "TextFormat")
const(char)* rlTextFormat(const(char)* text, ...);

alias TextFormat = rlTextFormat;

pragma(mangle, "TextSubtext")
const(char)* rlTextSubtext(const(char)* text, int position, int length);

alias TextSubtext = rlTextSubtext;

pragma(mangle, "TextRemoveSpaces")
const(char)* rlTextRemoveSpaces(const(char)* text);

alias TextRemoveSpaces = rlTextRemoveSpaces;

pragma(mangle, "GetTextBetween")
char* rlGetTextBetween(const(char)* text, const(char)* begin, const(char)* end);

alias GetTextBetween = rlGetTextBetween;

pragma(mangle, "TextReplace")
char* rlTextReplace(const(char)* text, const(char)* search, const(char)* replacement);

alias TextReplace = rlTextReplace;

pragma(mangle, "TextReplaceAlloc")
char* rlTextReplaceAlloc(const(char)* text, const(char)* search, const(char)* replacement);

alias TextReplaceAlloc = rlTextReplaceAlloc;

pragma(mangle, "TextReplaceBetween")
char* rlTextReplaceBetween(const(char)* text, const(char)* begin, const(char)* end, const(char)* replacement);

alias TextReplaceBetween = rlTextReplaceBetween;

pragma(mangle, "TextReplaceBetweenAlloc")
char* rlTextReplaceBetweenAlloc(const(char)* text, const(char)* begin, const(char)* end, const(char)* replacement);

alias TextReplaceBetweenAlloc = rlTextReplaceBetweenAlloc;

pragma(mangle, "TextInsert")
char* rlTextInsert(const(char)* text, const(char)* insert, int position);

alias TextInsert = rlTextInsert;

pragma(mangle, "TextInsertAlloc")
char* rlTextInsertAlloc(const(char)* text, const(char)* insert, int position);

alias TextInsertAlloc = rlTextInsertAlloc;

pragma(mangle, "TextJoin")
char* rlTextJoin(char** textList, int count, const(char)* delimiter);

alias TextJoin = rlTextJoin;

pragma(mangle, "TextSplit")
char** rlTextSplit(const(char)* text, char delimiter, int* count);

alias TextSplit = rlTextSplit;

pragma(mangle, "TextAppend")
void rlTextAppend(char* text, const(char)* append, int* position);

alias TextAppend = rlTextAppend;

pragma(mangle, "TextFindIndex")
int rlTextFindIndex(const(char)* text, const(char)* search);

alias TextFindIndex = rlTextFindIndex;

pragma(mangle, "TextToUpper")
char* rlTextToUpper(const(char)* text);

alias TextToUpper = rlTextToUpper;

pragma(mangle, "TextToLower")
char* rlTextToLower(const(char)* text);

alias TextToLower = rlTextToLower;

pragma(mangle, "TextToPascal")
char* rlTextToPascal(const(char)* text);

alias TextToPascal = rlTextToPascal;

pragma(mangle, "TextToSnake")
char* rlTextToSnake(const(char)* text);

alias TextToSnake = rlTextToSnake;

pragma(mangle, "TextToCamel")
char* rlTextToCamel(const(char)* text);

alias TextToCamel = rlTextToCamel;

pragma(mangle, "TextToInteger")
int rlTextToInteger(const(char)* text);

alias TextToInteger = rlTextToInteger;

pragma(mangle, "TextToFloat")
float rlTextToFloat(const(char)* text);

alias TextToFloat = rlTextToFloat;

pragma(mangle, "DrawLine3D")
void rlDrawLine3D(Vector3 startPos, Vector3 endPos, Color color);

alias DrawLine3D = rlDrawLine3D;

pragma(mangle, "DrawPoint3D")
void rlDrawPoint3D(Vector3 position, Color color);

alias DrawPoint3D = rlDrawPoint3D;

pragma(mangle, "DrawCircle3D")
void rlDrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);

alias DrawCircle3D = rlDrawCircle3D;

pragma(mangle, "DrawTriangle3D")
void rlDrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);

alias DrawTriangle3D = rlDrawTriangle3D;

pragma(mangle, "DrawTriangleStrip3D")
void rlDrawTriangleStrip3D(const(Vector3)* points, int pointCount, Color color);

alias DrawTriangleStrip3D = rlDrawTriangleStrip3D;

pragma(mangle, "DrawCube")
void rlDrawCube(Vector3 position, float width, float height, float length, Color color);

alias DrawCube = rlDrawCube;

pragma(mangle, "DrawCubeV")
void rlDrawCubeV(Vector3 position, Vector3 size, Color color);

alias DrawCubeV = rlDrawCubeV;

pragma(mangle, "DrawCubeWires")
void rlDrawCubeWires(Vector3 position, float width, float height, float length, Color color);

alias DrawCubeWires = rlDrawCubeWires;

pragma(mangle, "DrawCubeWiresV")
void rlDrawCubeWiresV(Vector3 position, Vector3 size, Color color);

alias DrawCubeWiresV = rlDrawCubeWiresV;

pragma(mangle, "DrawSphere")
void rlDrawSphere(Vector3 centerPos, float radius, Color color);

alias DrawSphere = rlDrawSphere;

pragma(mangle, "DrawSphereEx")
void rlDrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);

alias DrawSphereEx = rlDrawSphereEx;

pragma(mangle, "DrawSphereWires")
void rlDrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);

alias DrawSphereWires = rlDrawSphereWires;

pragma(mangle, "DrawCylinder")
void rlDrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int sides, Color color);

alias DrawCylinder = rlDrawCylinder;

pragma(mangle, "DrawCylinderEx")
void rlDrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);

alias DrawCylinderEx = rlDrawCylinderEx;

pragma(mangle, "DrawCylinderWires")
void rlDrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int sides, Color color);

alias DrawCylinderWires = rlDrawCylinderWires;

pragma(mangle, "DrawCylinderWiresEx")
void rlDrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);

alias DrawCylinderWiresEx = rlDrawCylinderWiresEx;

pragma(mangle, "DrawCapsule")
void rlDrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int rings, int slices, Color color);

alias DrawCapsule = rlDrawCapsule;

pragma(mangle, "DrawCapsuleWires")
void rlDrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int rings, int slices, Color color);

alias DrawCapsuleWires = rlDrawCapsuleWires;

pragma(mangle, "DrawPlane")
void rlDrawPlane(Vector3 centerPos, Vector2 size, Color color);

alias DrawPlane = rlDrawPlane;

pragma(mangle, "DrawRay")
void rlDrawRay(Ray ray, Color color);

alias DrawRay = rlDrawRay;

pragma(mangle, "DrawGrid")
void rlDrawGrid(int slices, float spacing);

alias DrawGrid = rlDrawGrid;

pragma(mangle, "LoadModel")
Model rlLoadModel(const(char)* fileName);

alias LoadModel = rlLoadModel;

pragma(mangle, "LoadModelFromMesh")
Model rlLoadModelFromMesh(Mesh mesh);

alias LoadModelFromMesh = rlLoadModelFromMesh;

pragma(mangle, "IsModelValid")
bool rlIsModelValid(Model model);

alias IsModelValid = rlIsModelValid;

pragma(mangle, "UnloadModel")
void rlUnloadModel(Model model);

alias UnloadModel = rlUnloadModel;

pragma(mangle, "GetModelBoundingBox")
BoundingBox rlGetModelBoundingBox(Model model);

alias GetModelBoundingBox = rlGetModelBoundingBox;

pragma(mangle, "DrawModel")
void rlDrawModel(Model model, Vector3 position, float scale, Color tint);

alias DrawModel = rlDrawModel;

pragma(mangle, "DrawModelEx")
void rlDrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);

alias DrawModelEx = rlDrawModelEx;

pragma(mangle, "DrawModelWires")
void rlDrawModelWires(Model model, Vector3 position, float scale, Color tint);

alias DrawModelWires = rlDrawModelWires;

pragma(mangle, "DrawModelWiresEx")
void rlDrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);

alias DrawModelWiresEx = rlDrawModelWiresEx;

pragma(mangle, "DrawBoundingBox")
void rlDrawBoundingBox(BoundingBox box, Color color);

alias DrawBoundingBox = rlDrawBoundingBox;

pragma(mangle, "DrawBillboard")
void rlDrawBillboard(Camera camera, Texture2D texture, Vector3 position, float scale, Color tint);

alias DrawBillboard = rlDrawBillboard;

pragma(mangle, "DrawBillboardRec")
void rlDrawBillboardRec(Camera camera, Texture2D texture, Rectangle rec, Vector3 position, Vector2 size, Color tint);

alias DrawBillboardRec = rlDrawBillboardRec;

pragma(mangle, "DrawBillboardPro")
void rlDrawBillboardPro(Camera camera, Texture2D texture, Rectangle rec, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);

alias DrawBillboardPro = rlDrawBillboardPro;

pragma(mangle, "UploadMesh")
void rlUploadMesh(Mesh* mesh, bool dynamic);

alias UploadMesh = rlUploadMesh;

pragma(mangle, "UpdateMeshBuffer")
void rlUpdateMeshBuffer(Mesh mesh, int index, const(void)* data, int dataSize, int offset);

alias UpdateMeshBuffer = rlUpdateMeshBuffer;

pragma(mangle, "UnloadMesh")
void rlUnloadMesh(Mesh mesh);

alias UnloadMesh = rlUnloadMesh;

pragma(mangle, "DrawMesh")
void rlDrawMesh(Mesh mesh, Material material, Matrix transform);

alias DrawMesh = rlDrawMesh;

pragma(mangle, "DrawMeshInstanced")
void rlDrawMeshInstanced(Mesh mesh, Material material, const(Matrix)* transforms, int instances);

alias DrawMeshInstanced = rlDrawMeshInstanced;

pragma(mangle, "GetMeshBoundingBox")
BoundingBox rlGetMeshBoundingBox(Mesh mesh);

alias GetMeshBoundingBox = rlGetMeshBoundingBox;

pragma(mangle, "GenMeshTangents")
void rlGenMeshTangents(Mesh* mesh);

alias GenMeshTangents = rlGenMeshTangents;

pragma(mangle, "ExportMesh")
bool rlExportMesh(Mesh mesh, const(char)* fileName);

alias ExportMesh = rlExportMesh;

pragma(mangle, "ExportMeshAsCode")
bool rlExportMeshAsCode(Mesh mesh, const(char)* fileName);

alias ExportMeshAsCode = rlExportMeshAsCode;

pragma(mangle, "GenMeshPoly")
Mesh rlGenMeshPoly(int sides, float radius);

alias GenMeshPoly = rlGenMeshPoly;

pragma(mangle, "GenMeshPlane")
Mesh rlGenMeshPlane(float width, float length, int resX, int resZ);

alias GenMeshPlane = rlGenMeshPlane;

pragma(mangle, "GenMeshCube")
Mesh rlGenMeshCube(float width, float height, float length);

alias GenMeshCube = rlGenMeshCube;

pragma(mangle, "GenMeshSphere")
Mesh rlGenMeshSphere(float radius, int rings, int slices);

alias GenMeshSphere = rlGenMeshSphere;

pragma(mangle, "GenMeshHemiSphere")
Mesh rlGenMeshHemiSphere(float radius, int rings, int slices);

alias GenMeshHemiSphere = rlGenMeshHemiSphere;

pragma(mangle, "GenMeshCylinder")
Mesh rlGenMeshCylinder(float radius, float height, int slices);

alias GenMeshCylinder = rlGenMeshCylinder;

pragma(mangle, "GenMeshCone")
Mesh rlGenMeshCone(float radius, float height, int slices);

alias GenMeshCone = rlGenMeshCone;

pragma(mangle, "GenMeshTorus")
Mesh rlGenMeshTorus(float radius, float size, int radSeg, int sides);

alias GenMeshTorus = rlGenMeshTorus;

pragma(mangle, "GenMeshKnot")
Mesh rlGenMeshKnot(float radius, float size, int radSeg, int sides);

alias GenMeshKnot = rlGenMeshKnot;

pragma(mangle, "GenMeshHeightmap")
Mesh rlGenMeshHeightmap(Image heightmap, Vector3 size);

alias GenMeshHeightmap = rlGenMeshHeightmap;

pragma(mangle, "GenMeshCubicmap")
Mesh rlGenMeshCubicmap(Image cubicmap, Vector3 cubeSize);

alias GenMeshCubicmap = rlGenMeshCubicmap;

pragma(mangle, "LoadMaterials")
Material* rlLoadMaterials(const(char)* fileName, int* materialCount);

alias LoadMaterials = rlLoadMaterials;

pragma(mangle, "LoadMaterialDefault")
Material rlLoadMaterialDefault();

alias LoadMaterialDefault = rlLoadMaterialDefault;

pragma(mangle, "IsMaterialValid")
bool rlIsMaterialValid(Material material);

alias IsMaterialValid = rlIsMaterialValid;

pragma(mangle, "UnloadMaterial")
void rlUnloadMaterial(Material material);

alias UnloadMaterial = rlUnloadMaterial;

pragma(mangle, "SetMaterialTexture")
void rlSetMaterialTexture(Material* material, int mapType, Texture2D texture);

alias SetMaterialTexture = rlSetMaterialTexture;

pragma(mangle, "SetModelMeshMaterial")
void rlSetModelMeshMaterial(Model* model, int meshId, int materialId);

alias SetModelMeshMaterial = rlSetModelMeshMaterial;

pragma(mangle, "LoadModelAnimations")
ModelAnimation* rlLoadModelAnimations(const(char)* fileName, int* animCount);

alias LoadModelAnimations = rlLoadModelAnimations;

pragma(mangle, "UpdateModelAnimation")
void rlUpdateModelAnimation(Model model, ModelAnimation anim, float frame);

alias UpdateModelAnimation = rlUpdateModelAnimation;

pragma(mangle, "UpdateModelAnimationEx")
void rlUpdateModelAnimationEx(Model model, ModelAnimation animA, float frameA, ModelAnimation animB, float frameB, float blend);

alias UpdateModelAnimationEx = rlUpdateModelAnimationEx;

pragma(mangle, "UnloadModelAnimations")
void rlUnloadModelAnimations(ModelAnimation* animations, int animCount);

alias UnloadModelAnimations = rlUnloadModelAnimations;

pragma(mangle, "IsModelAnimationValid")
bool rlIsModelAnimationValid(Model model, ModelAnimation anim);

alias IsModelAnimationValid = rlIsModelAnimationValid;

pragma(mangle, "CheckCollisionSpheres")
bool rlCheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);

alias CheckCollisionSpheres = rlCheckCollisionSpheres;

pragma(mangle, "CheckCollisionBoxes")
bool rlCheckCollisionBoxes(BoundingBox box1, BoundingBox box2);

alias CheckCollisionBoxes = rlCheckCollisionBoxes;

pragma(mangle, "CheckCollisionBoxSphere")
bool rlCheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);

alias CheckCollisionBoxSphere = rlCheckCollisionBoxSphere;

pragma(mangle, "GetRayCollisionSphere")
RayCollision rlGetRayCollisionSphere(Ray ray, Vector3 center, float radius);

alias GetRayCollisionSphere = rlGetRayCollisionSphere;

pragma(mangle, "GetRayCollisionBox")
RayCollision rlGetRayCollisionBox(Ray ray, BoundingBox box);

alias GetRayCollisionBox = rlGetRayCollisionBox;

pragma(mangle, "GetRayCollisionMesh")
RayCollision rlGetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);

alias GetRayCollisionMesh = rlGetRayCollisionMesh;

pragma(mangle, "GetRayCollisionTriangle")
RayCollision rlGetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);

alias GetRayCollisionTriangle = rlGetRayCollisionTriangle;

pragma(mangle, "GetRayCollisionQuad")
RayCollision rlGetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);

alias GetRayCollisionQuad = rlGetRayCollisionQuad;

pragma(mangle, "InitAudioDevice")
void rlInitAudioDevice();

alias InitAudioDevice = rlInitAudioDevice;

pragma(mangle, "CloseAudioDevice")
void rlCloseAudioDevice();

alias CloseAudioDevice = rlCloseAudioDevice;

pragma(mangle, "IsAudioDeviceReady")
bool rlIsAudioDeviceReady();

alias IsAudioDeviceReady = rlIsAudioDeviceReady;

pragma(mangle, "SetMasterVolume")
void rlSetMasterVolume(float volume);

alias SetMasterVolume = rlSetMasterVolume;

pragma(mangle, "GetMasterVolume")
float rlGetMasterVolume();

alias GetMasterVolume = rlGetMasterVolume;

pragma(mangle, "LoadWave")
Wave rlLoadWave(const(char)* fileName);

alias LoadWave = rlLoadWave;

pragma(mangle, "LoadWaveFromMemory")
Wave rlLoadWaveFromMemory(const(char)* fileType, const(ubyte)* fileData, int dataSize);

alias LoadWaveFromMemory = rlLoadWaveFromMemory;

pragma(mangle, "IsWaveValid")
bool rlIsWaveValid(Wave wave);

alias IsWaveValid = rlIsWaveValid;

pragma(mangle, "LoadSound")
Sound rlLoadSound(const(char)* fileName);

alias LoadSound = rlLoadSound;

pragma(mangle, "LoadSoundFromWave")
Sound rlLoadSoundFromWave(Wave wave);

alias LoadSoundFromWave = rlLoadSoundFromWave;

pragma(mangle, "LoadSoundAlias")
Sound rlLoadSoundAlias(Sound source);

alias LoadSoundAlias = rlLoadSoundAlias;

pragma(mangle, "IsSoundValid")
bool rlIsSoundValid(Sound sound);

alias IsSoundValid = rlIsSoundValid;

pragma(mangle, "UpdateSound")
void rlUpdateSound(Sound sound, const(void)* data, int frameCount);

alias UpdateSound = rlUpdateSound;

pragma(mangle, "UnloadWave")
void rlUnloadWave(Wave wave);

alias UnloadWave = rlUnloadWave;

pragma(mangle, "UnloadSound")
void rlUnloadSound(Sound sound);

alias UnloadSound = rlUnloadSound;

pragma(mangle, "UnloadSoundAlias")
void rlUnloadSoundAlias(Sound alias_);

alias UnloadSoundAlias = rlUnloadSoundAlias;

pragma(mangle, "ExportWave")
bool rlExportWave(Wave wave, const(char)* fileName);

alias ExportWave = rlExportWave;

pragma(mangle, "ExportWaveAsCode")
bool rlExportWaveAsCode(Wave wave, const(char)* fileName);

alias ExportWaveAsCode = rlExportWaveAsCode;

pragma(mangle, "PlaySound")
void rlPlaySound(Sound sound);

alias PlaySound = rlPlaySound;

pragma(mangle, "StopSound")
void rlStopSound(Sound sound);

alias StopSound = rlStopSound;

pragma(mangle, "PauseSound")
void rlPauseSound(Sound sound);

alias PauseSound = rlPauseSound;

pragma(mangle, "ResumeSound")
void rlResumeSound(Sound sound);

alias ResumeSound = rlResumeSound;

pragma(mangle, "IsSoundPlaying")
bool rlIsSoundPlaying(Sound sound);

alias IsSoundPlaying = rlIsSoundPlaying;

pragma(mangle, "SetSoundVolume")
void rlSetSoundVolume(Sound sound, float volume);

alias SetSoundVolume = rlSetSoundVolume;

pragma(mangle, "SetSoundPitch")
void rlSetSoundPitch(Sound sound, float pitch);

alias SetSoundPitch = rlSetSoundPitch;

pragma(mangle, "SetSoundPan")
void rlSetSoundPan(Sound sound, float pan);

alias SetSoundPan = rlSetSoundPan;

pragma(mangle, "WaveCopy")
Wave rlWaveCopy(Wave wave);

alias WaveCopy = rlWaveCopy;

pragma(mangle, "WaveCrop")
void rlWaveCrop(Wave* wave, int initFrame, int finalFrame);

alias WaveCrop = rlWaveCrop;

pragma(mangle, "WaveFormat")
void rlWaveFormat(Wave* wave, int sampleRate, int sampleSize, int channels);

alias WaveFormat = rlWaveFormat;

pragma(mangle, "LoadWaveSamples")
float* rlLoadWaveSamples(Wave wave);

alias LoadWaveSamples = rlLoadWaveSamples;

pragma(mangle, "UnloadWaveSamples")
void rlUnloadWaveSamples(float* samples);

alias UnloadWaveSamples = rlUnloadWaveSamples;

pragma(mangle, "LoadMusicStream")
Music rlLoadMusicStream(const(char)* fileName);

alias LoadMusicStream = rlLoadMusicStream;

pragma(mangle, "LoadMusicStreamFromMemory")
Music rlLoadMusicStreamFromMemory(const(char)* fileType, const(ubyte)* data, int dataSize);

alias LoadMusicStreamFromMemory = rlLoadMusicStreamFromMemory;

pragma(mangle, "IsMusicValid")
bool rlIsMusicValid(Music music);

alias IsMusicValid = rlIsMusicValid;

pragma(mangle, "UnloadMusicStream")
void rlUnloadMusicStream(Music music);

alias UnloadMusicStream = rlUnloadMusicStream;

pragma(mangle, "PlayMusicStream")
void rlPlayMusicStream(Music music);

alias PlayMusicStream = rlPlayMusicStream;

pragma(mangle, "IsMusicStreamPlaying")
bool rlIsMusicStreamPlaying(Music music);

alias IsMusicStreamPlaying = rlIsMusicStreamPlaying;

pragma(mangle, "UpdateMusicStream")
void rlUpdateMusicStream(Music music);

alias UpdateMusicStream = rlUpdateMusicStream;

pragma(mangle, "StopMusicStream")
void rlStopMusicStream(Music music);

alias StopMusicStream = rlStopMusicStream;

pragma(mangle, "PauseMusicStream")
void rlPauseMusicStream(Music music);

alias PauseMusicStream = rlPauseMusicStream;

pragma(mangle, "ResumeMusicStream")
void rlResumeMusicStream(Music music);

alias ResumeMusicStream = rlResumeMusicStream;

pragma(mangle, "SeekMusicStream")
void rlSeekMusicStream(Music music, float position);

alias SeekMusicStream = rlSeekMusicStream;

pragma(mangle, "SetMusicVolume")
void rlSetMusicVolume(Music music, float volume);

alias SetMusicVolume = rlSetMusicVolume;

pragma(mangle, "SetMusicPitch")
void rlSetMusicPitch(Music music, float pitch);

alias SetMusicPitch = rlSetMusicPitch;

pragma(mangle, "SetMusicPan")
void rlSetMusicPan(Music music, float pan);

alias SetMusicPan = rlSetMusicPan;

pragma(mangle, "GetMusicTimeLength")
float rlGetMusicTimeLength(Music music);

alias GetMusicTimeLength = rlGetMusicTimeLength;

pragma(mangle, "GetMusicTimePlayed")
float rlGetMusicTimePlayed(Music music);

alias GetMusicTimePlayed = rlGetMusicTimePlayed;

pragma(mangle, "LoadAudioStream")
AudioStream rlLoadAudioStream(uint sampleRate, uint sampleSize, uint channels);

alias LoadAudioStream = rlLoadAudioStream;

pragma(mangle, "IsAudioStreamValid")
bool rlIsAudioStreamValid(AudioStream stream);

alias IsAudioStreamValid = rlIsAudioStreamValid;

pragma(mangle, "UnloadAudioStream")
void rlUnloadAudioStream(AudioStream stream);

alias UnloadAudioStream = rlUnloadAudioStream;

pragma(mangle, "UpdateAudioStream")
void rlUpdateAudioStream(AudioStream stream, const(void)* data, int frameCount);

alias UpdateAudioStream = rlUpdateAudioStream;

pragma(mangle, "IsAudioStreamProcessed")
bool rlIsAudioStreamProcessed(AudioStream stream);

alias IsAudioStreamProcessed = rlIsAudioStreamProcessed;

pragma(mangle, "PlayAudioStream")
void rlPlayAudioStream(AudioStream stream);

alias PlayAudioStream = rlPlayAudioStream;

pragma(mangle, "PauseAudioStream")
void rlPauseAudioStream(AudioStream stream);

alias PauseAudioStream = rlPauseAudioStream;

pragma(mangle, "ResumeAudioStream")
void rlResumeAudioStream(AudioStream stream);

alias ResumeAudioStream = rlResumeAudioStream;

pragma(mangle, "IsAudioStreamPlaying")
bool rlIsAudioStreamPlaying(AudioStream stream);

alias IsAudioStreamPlaying = rlIsAudioStreamPlaying;

pragma(mangle, "StopAudioStream")
void rlStopAudioStream(AudioStream stream);

alias StopAudioStream = rlStopAudioStream;

pragma(mangle, "SetAudioStreamVolume")
void rlSetAudioStreamVolume(AudioStream stream, float volume);

alias SetAudioStreamVolume = rlSetAudioStreamVolume;

pragma(mangle, "SetAudioStreamPitch")
void rlSetAudioStreamPitch(AudioStream stream, float pitch);

alias SetAudioStreamPitch = rlSetAudioStreamPitch;

pragma(mangle, "SetAudioStreamPan")
void rlSetAudioStreamPan(AudioStream stream, float pan);

alias SetAudioStreamPan = rlSetAudioStreamPan;

pragma(mangle, "SetAudioStreamBufferSizeDefault")
void rlSetAudioStreamBufferSizeDefault(int size);

alias SetAudioStreamBufferSizeDefault = rlSetAudioStreamBufferSizeDefault;

pragma(mangle, "SetAudioStreamCallback")
void rlSetAudioStreamCallback(AudioStream stream, AudioCallback callback);

alias SetAudioStreamCallback = rlSetAudioStreamCallback;

pragma(mangle, "AttachAudioStreamProcessor")
void rlAttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);

alias AttachAudioStreamProcessor = rlAttachAudioStreamProcessor;

pragma(mangle, "DetachAudioStreamProcessor")
void rlDetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);

alias DetachAudioStreamProcessor = rlDetachAudioStreamProcessor;

pragma(mangle, "AttachAudioMixedProcessor")
void rlAttachAudioMixedProcessor(AudioCallback processor);

alias AttachAudioMixedProcessor = rlAttachAudioMixedProcessor;

pragma(mangle, "DetachAudioMixedProcessor")
void rlDetachAudioMixedProcessor(AudioCallback processor);

alias DetachAudioMixedProcessor = rlDetachAudioMixedProcessor;
