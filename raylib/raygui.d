module libs.raylib.raygui;

import libs.raylib.raylib : Color, Font, Rectangle, Vector2, Vector3;

// Generated from raygui.h.
// Do not edit by hand; run tools/generate_raygui.ts instead.
//
// raygui functions use the rg prefix, with the redundant Gui part removed
// (for example, GuiButton() becomes rgButton()). The original C names are
// provided as aliases.

extern (C):
@nogc nothrow:

struct GuiStyleProp
{
    ushort controlId;
    ushort propertyId;
    int propertyValue;
}

enum int RAYGUI_VERSION_MAJOR = 5;
enum int RAYGUI_VERSION_MINOR = 1;
enum int RAYGUI_VERSION_PATCH = 0;
enum string RAYGUI_VERSION = "5.1-dev";
enum int RAYGUI_ICON_SIZE = 16;
enum int RAYGUI_ICON_MAX_ICONS = 512;
enum int RAYGUI_ICON_MAX_FONT_BACKED = 257;
enum int RAYGUI_ICON_MAX_NAME_LENGTH = 32;
enum int RAYGUI_ICON_FONT_ATLAS_PADDING = 1;
enum int RAYGUI_ICON_DATA_ELEMENTS = (RAYGUI_ICON_SIZE*RAYGUI_ICON_SIZE/32);
enum int RAYGUI_MAX_CONTROLS = 16;
enum int RAYGUI_MAX_PROPS_BASE = 16;
enum int RAYGUI_MAX_PROPS_EXTENDED = 8;
enum int SCROLLBAR_LEFT_SIDE = 0;
enum int SCROLLBAR_RIGHT_SIDE = 1;

enum GuiResult
{
    RESULT_NONE = 0,
    RESULT_PRESSED = 1,
    RESULT_CHANGED = 2,
    RESULT_TAB_CLOSE = 4,
}

alias RESULT_NONE = GuiResult.RESULT_NONE;
alias RESULT_PRESSED = GuiResult.RESULT_PRESSED;
alias RESULT_CHANGED = GuiResult.RESULT_CHANGED;
alias RESULT_TAB_CLOSE = GuiResult.RESULT_TAB_CLOSE;

enum GuiState
{
    STATE_NORMAL = 0,
    STATE_FOCUSED,
    STATE_PRESSED,
    STATE_DISABLED,
}

alias STATE_NORMAL = GuiState.STATE_NORMAL;
alias STATE_FOCUSED = GuiState.STATE_FOCUSED;
alias STATE_PRESSED = GuiState.STATE_PRESSED;
alias STATE_DISABLED = GuiState.STATE_DISABLED;

enum GuiTextAlignment
{
    TEXT_ALIGN_LEFT = 0,
    TEXT_ALIGN_CENTER,
    TEXT_ALIGN_RIGHT,
}

alias TEXT_ALIGN_LEFT = GuiTextAlignment.TEXT_ALIGN_LEFT;
alias TEXT_ALIGN_CENTER = GuiTextAlignment.TEXT_ALIGN_CENTER;
alias TEXT_ALIGN_RIGHT = GuiTextAlignment.TEXT_ALIGN_RIGHT;

enum GuiTextAlignmentVertical
{
    TEXT_ALIGN_TOP = 0,
    TEXT_ALIGN_MIDDLE,
    TEXT_ALIGN_BOTTOM,
}

alias TEXT_ALIGN_TOP = GuiTextAlignmentVertical.TEXT_ALIGN_TOP;
alias TEXT_ALIGN_MIDDLE = GuiTextAlignmentVertical.TEXT_ALIGN_MIDDLE;
alias TEXT_ALIGN_BOTTOM = GuiTextAlignmentVertical.TEXT_ALIGN_BOTTOM;

enum GuiTextWrapMode
{
    TEXT_WRAP_NONE = 0,
    TEXT_WRAP_CHAR,
    TEXT_WRAP_WORD,
}

alias TEXT_WRAP_NONE = GuiTextWrapMode.TEXT_WRAP_NONE;
alias TEXT_WRAP_CHAR = GuiTextWrapMode.TEXT_WRAP_CHAR;
alias TEXT_WRAP_WORD = GuiTextWrapMode.TEXT_WRAP_WORD;

enum GuiControl
{
    DEFAULT = 0,
    LABEL = 1,
    BUTTON = 2,
    TOGGLE = 3,
    SLIDER = 4,
    PROGRESSBAR = 5,
    CHECKBOX = 6,
    COMBOBOX = 7,
    DROPDOWNBOX = 8,
    TEXTBOX = 9,
    VALUEBOX = 10,
    TABBAR = 11,
    LISTVIEW = 12,
    COLORPICKER = 13,
    SCROLLBAR = 14,
    STATUSBAR = 15,
}

alias DEFAULT = GuiControl.DEFAULT;
alias LABEL = GuiControl.LABEL;
alias BUTTON = GuiControl.BUTTON;
alias TOGGLE = GuiControl.TOGGLE;
alias SLIDER = GuiControl.SLIDER;
alias PROGRESSBAR = GuiControl.PROGRESSBAR;
alias CHECKBOX = GuiControl.CHECKBOX;
alias COMBOBOX = GuiControl.COMBOBOX;
alias DROPDOWNBOX = GuiControl.DROPDOWNBOX;
alias TEXTBOX = GuiControl.TEXTBOX;
alias VALUEBOX = GuiControl.VALUEBOX;
alias TABBAR = GuiControl.TABBAR;
alias LISTVIEW = GuiControl.LISTVIEW;
alias COLORPICKER = GuiControl.COLORPICKER;
alias SCROLLBAR = GuiControl.SCROLLBAR;
alias STATUSBAR = GuiControl.STATUSBAR;

enum GuiControlProperty
{
    BORDER_COLOR_NORMAL = 0,
    BASE_COLOR_NORMAL = 1,
    TEXT_COLOR_NORMAL = 2,
    BORDER_COLOR_FOCUSED = 3,
    BASE_COLOR_FOCUSED = 4,
    TEXT_COLOR_FOCUSED = 5,
    BORDER_COLOR_PRESSED = 6,
    BASE_COLOR_PRESSED = 7,
    TEXT_COLOR_PRESSED = 8,
    BORDER_COLOR_DISABLED = 9,
    BASE_COLOR_DISABLED = 10,
    TEXT_COLOR_DISABLED = 11,
    BORDER_WIDTH = 12,
    TEXT_PADDING = 13,
    TEXT_ALIGNMENT = 14,
    BASEPROP16 = 15,
}

alias BORDER_COLOR_NORMAL = GuiControlProperty.BORDER_COLOR_NORMAL;
alias BASE_COLOR_NORMAL = GuiControlProperty.BASE_COLOR_NORMAL;
alias TEXT_COLOR_NORMAL = GuiControlProperty.TEXT_COLOR_NORMAL;
alias BORDER_COLOR_FOCUSED = GuiControlProperty.BORDER_COLOR_FOCUSED;
alias BASE_COLOR_FOCUSED = GuiControlProperty.BASE_COLOR_FOCUSED;
alias TEXT_COLOR_FOCUSED = GuiControlProperty.TEXT_COLOR_FOCUSED;
alias BORDER_COLOR_PRESSED = GuiControlProperty.BORDER_COLOR_PRESSED;
alias BASE_COLOR_PRESSED = GuiControlProperty.BASE_COLOR_PRESSED;
alias TEXT_COLOR_PRESSED = GuiControlProperty.TEXT_COLOR_PRESSED;
alias BORDER_COLOR_DISABLED = GuiControlProperty.BORDER_COLOR_DISABLED;
alias BASE_COLOR_DISABLED = GuiControlProperty.BASE_COLOR_DISABLED;
alias TEXT_COLOR_DISABLED = GuiControlProperty.TEXT_COLOR_DISABLED;
alias BORDER_WIDTH = GuiControlProperty.BORDER_WIDTH;
alias TEXT_PADDING = GuiControlProperty.TEXT_PADDING;
alias TEXT_ALIGNMENT = GuiControlProperty.TEXT_ALIGNMENT;
alias BASEPROP16 = GuiControlProperty.BASEPROP16;

enum GuiDefaultProperty
{
    TEXT_SIZE = 16,
    TEXT_SPACING = 17,
    LINE_COLOR = 18,
    BACKGROUND_COLOR = 19,
    TEXT_LINE_SPACING = 20,
    TEXT_ALIGNMENT_VERTICAL = 21,
    TEXT_WRAP_MODE = 22,
    EXTPROP08 = 23,
}

alias TEXT_SIZE = GuiDefaultProperty.TEXT_SIZE;
alias TEXT_SPACING = GuiDefaultProperty.TEXT_SPACING;
alias LINE_COLOR = GuiDefaultProperty.LINE_COLOR;
alias BACKGROUND_COLOR = GuiDefaultProperty.BACKGROUND_COLOR;
alias TEXT_LINE_SPACING = GuiDefaultProperty.TEXT_LINE_SPACING;
alias TEXT_ALIGNMENT_VERTICAL = GuiDefaultProperty.TEXT_ALIGNMENT_VERTICAL;
alias TEXT_WRAP_MODE = GuiDefaultProperty.TEXT_WRAP_MODE;
alias EXTPROP08 = GuiDefaultProperty.EXTPROP08;

enum GuiToggleProperty
{
    GROUP_PADDING = 16,
    GROUP_WIDTH_FULL,
}

alias GROUP_PADDING = GuiToggleProperty.GROUP_PADDING;
alias GROUP_WIDTH_FULL = GuiToggleProperty.GROUP_WIDTH_FULL;

enum GuiSliderProperty
{
    SLIDER_WIDTH = 16,
    SLIDER_PADDING,
}

alias SLIDER_WIDTH = GuiSliderProperty.SLIDER_WIDTH;
alias SLIDER_PADDING = GuiSliderProperty.SLIDER_PADDING;

enum GuiProgressBarProperty
{
    PROGRESS_PADDING = 16,
    PROGRESS_SIDE,
}

alias PROGRESS_PADDING = GuiProgressBarProperty.PROGRESS_PADDING;
alias PROGRESS_SIDE = GuiProgressBarProperty.PROGRESS_SIDE;

enum GuiScrollBarProperty
{
    ARROWS_SIZE = 16,
    ARROWS_VISIBLE,
    SCROLL_SLIDER_PADDING,
    SCROLL_SLIDER_SIZE,
    SCROLL_PADDING,
    SCROLL_SPEED,
}

alias ARROWS_SIZE = GuiScrollBarProperty.ARROWS_SIZE;
alias ARROWS_VISIBLE = GuiScrollBarProperty.ARROWS_VISIBLE;
alias SCROLL_SLIDER_PADDING = GuiScrollBarProperty.SCROLL_SLIDER_PADDING;
alias SCROLL_SLIDER_SIZE = GuiScrollBarProperty.SCROLL_SLIDER_SIZE;
alias SCROLL_PADDING = GuiScrollBarProperty.SCROLL_PADDING;
alias SCROLL_SPEED = GuiScrollBarProperty.SCROLL_SPEED;

enum GuiCheckBoxProperty
{
    CHECK_PADDING = 16,
}

alias CHECK_PADDING = GuiCheckBoxProperty.CHECK_PADDING;

enum GuiComboBoxProperty
{
    COMBO_BUTTON_WIDTH = 16,
    COMBO_BUTTON_SPACING,
}

alias COMBO_BUTTON_WIDTH = GuiComboBoxProperty.COMBO_BUTTON_WIDTH;
alias COMBO_BUTTON_SPACING = GuiComboBoxProperty.COMBO_BUTTON_SPACING;

enum GuiDropdownBoxProperty
{
    ARROW_PADDING = 16,
    DROPDOWN_ITEMS_SPACING,
    DROPDOWN_ARROW_HIDDEN,
    DROPDOWN_ROLL_UP,
    DROPDOWN_MAX_HEIGHT,
}

alias ARROW_PADDING = GuiDropdownBoxProperty.ARROW_PADDING;
alias DROPDOWN_ITEMS_SPACING = GuiDropdownBoxProperty.DROPDOWN_ITEMS_SPACING;
alias DROPDOWN_ARROW_HIDDEN = GuiDropdownBoxProperty.DROPDOWN_ARROW_HIDDEN;
alias DROPDOWN_ROLL_UP = GuiDropdownBoxProperty.DROPDOWN_ROLL_UP;
alias DROPDOWN_MAX_HEIGHT = GuiDropdownBoxProperty.DROPDOWN_MAX_HEIGHT;

enum GuiTextBoxProperty
{
    TEXT_READONLY = 16,
}

alias TEXT_READONLY = GuiTextBoxProperty.TEXT_READONLY;

enum GuiValueBoxProperty
{
    SPINNER_BUTTON_WIDTH = 16,
    SPINNER_BUTTON_SPACING,
}

alias SPINNER_BUTTON_WIDTH = GuiValueBoxProperty.SPINNER_BUTTON_WIDTH;
alias SPINNER_BUTTON_SPACING = GuiValueBoxProperty.SPINNER_BUTTON_SPACING;

enum GuiTabBarProperty
{
    TAB_ITEMS_WIDTH = 16,
    TAB_CLOSE_BUTTON,
    TAB_LINE_SIDE,
}

alias TAB_ITEMS_WIDTH = GuiTabBarProperty.TAB_ITEMS_WIDTH;
alias TAB_CLOSE_BUTTON = GuiTabBarProperty.TAB_CLOSE_BUTTON;
alias TAB_LINE_SIDE = GuiTabBarProperty.TAB_LINE_SIDE;

enum GuiListViewProperty
{
    LIST_ITEMS_HEIGHT = 16,
    LIST_ITEMS_SPACING,
    SCROLLBAR_WIDTH,
    SCROLLBAR_SIDE,
    LIST_ITEMS_BORDER_NORMAL,
    LIST_ITEMS_BORDER_WIDTH,
}

alias LIST_ITEMS_HEIGHT = GuiListViewProperty.LIST_ITEMS_HEIGHT;
alias LIST_ITEMS_SPACING = GuiListViewProperty.LIST_ITEMS_SPACING;
alias SCROLLBAR_WIDTH = GuiListViewProperty.SCROLLBAR_WIDTH;
alias SCROLLBAR_SIDE = GuiListViewProperty.SCROLLBAR_SIDE;
alias LIST_ITEMS_BORDER_NORMAL = GuiListViewProperty.LIST_ITEMS_BORDER_NORMAL;
alias LIST_ITEMS_BORDER_WIDTH = GuiListViewProperty.LIST_ITEMS_BORDER_WIDTH;

enum GuiColorPickerProperty
{
    COLOR_SELECTOR_SIZE = 16,
    HUEBAR_WIDTH,
    HUEBAR_PADDING,
    HUEBAR_SELECTOR_HEIGHT,
    HUEBAR_SELECTOR_OVERFLOW,
}

alias COLOR_SELECTOR_SIZE = GuiColorPickerProperty.COLOR_SELECTOR_SIZE;
alias HUEBAR_WIDTH = GuiColorPickerProperty.HUEBAR_WIDTH;
alias HUEBAR_PADDING = GuiColorPickerProperty.HUEBAR_PADDING;
alias HUEBAR_SELECTOR_HEIGHT = GuiColorPickerProperty.HUEBAR_SELECTOR_HEIGHT;
alias HUEBAR_SELECTOR_OVERFLOW = GuiColorPickerProperty.HUEBAR_SELECTOR_OVERFLOW;

enum GuiIconName
{
    ICON_NONE = 0,
    ICON_FOLDER_FILE_OPEN = 1,
    ICON_FILE_SAVE_CLASSIC = 2,
    ICON_FOLDER_OPEN = 3,
    ICON_FOLDER_SAVE = 4,
    ICON_FILE_OPEN = 5,
    ICON_FILE_SAVE = 6,
    ICON_FILE_EXPORT = 7,
    ICON_FILE_ADD = 8,
    ICON_FILE_DELETE = 9,
    ICON_FILETYPE_TEXT = 10,
    ICON_FILETYPE_AUDIO = 11,
    ICON_FILETYPE_IMAGE = 12,
    ICON_FILETYPE_PLAY = 13,
    ICON_FILETYPE_VIDEO = 14,
    ICON_FILETYPE_INFO = 15,
    ICON_FILE_COPY = 16,
    ICON_FILE_CUT = 17,
    ICON_FILE_PASTE = 18,
    ICON_CURSOR_HAND = 19,
    ICON_CURSOR_POINTER = 20,
    ICON_CURSOR_CLASSIC = 21,
    ICON_PENCIL = 22,
    ICON_PENCIL_BIG = 23,
    ICON_BRUSH_CLASSIC = 24,
    ICON_BRUSH_PAINTER = 25,
    ICON_WATER_DROP = 26,
    ICON_COLOR_PICKER = 27,
    ICON_RUBBER = 28,
    ICON_COLOR_BUCKET = 29,
    ICON_TEXT_T = 30,
    ICON_TEXT_A = 31,
    ICON_SCALE = 32,
    ICON_RESIZE = 33,
    ICON_FILTER_POINT = 34,
    ICON_FILTER_BILINEAR = 35,
    ICON_CROP = 36,
    ICON_CROP_ALPHA = 37,
    ICON_SQUARE_TOGGLE = 38,
    ICON_SYMMETRY = 39,
    ICON_SYMMETRY_HORIZONTAL = 40,
    ICON_SYMMETRY_VERTICAL = 41,
    ICON_LENS = 42,
    ICON_LENS_BIG = 43,
    ICON_EYE_ON = 44,
    ICON_EYE_OFF = 45,
    ICON_FILTER_TOP = 46,
    ICON_FILTER = 47,
    ICON_TARGET_POINT = 48,
    ICON_TARGET_SMALL = 49,
    ICON_TARGET_BIG = 50,
    ICON_TARGET_MOVE = 51,
    ICON_CURSOR_MOVE = 52,
    ICON_CURSOR_SCALE = 53,
    ICON_CURSOR_SCALE_RIGHT = 54,
    ICON_CURSOR_SCALE_LEFT = 55,
    ICON_UNDO = 56,
    ICON_REDO = 57,
    ICON_REREDO = 58,
    ICON_MUTATE = 59,
    ICON_ROTATE = 60,
    ICON_REPEAT = 61,
    ICON_SHUFFLE = 62,
    ICON_EMPTYBOX = 63,
    ICON_TARGET = 64,
    ICON_TARGET_SMALL_FILL = 65,
    ICON_TARGET_BIG_FILL = 66,
    ICON_TARGET_MOVE_FILL = 67,
    ICON_CURSOR_MOVE_FILL = 68,
    ICON_CURSOR_SCALE_FILL = 69,
    ICON_CURSOR_SCALE_RIGHT_FILL = 70,
    ICON_CURSOR_SCALE_LEFT_FILL = 71,
    ICON_UNDO_FILL = 72,
    ICON_REDO_FILL = 73,
    ICON_REREDO_FILL = 74,
    ICON_MUTATE_FILL = 75,
    ICON_ROTATE_FILL = 76,
    ICON_REPEAT_FILL = 77,
    ICON_SHUFFLE_FILL = 78,
    ICON_EMPTYBOX_SMALL = 79,
    ICON_BOX = 80,
    ICON_BOX_TOP = 81,
    ICON_BOX_TOP_RIGHT = 82,
    ICON_BOX_RIGHT = 83,
    ICON_BOX_BOTTOM_RIGHT = 84,
    ICON_BOX_BOTTOM = 85,
    ICON_BOX_BOTTOM_LEFT = 86,
    ICON_BOX_LEFT = 87,
    ICON_BOX_TOP_LEFT = 88,
    ICON_BOX_CENTER = 89,
    ICON_BOX_CIRCLE_MASK = 90,
    ICON_POT = 91,
    ICON_ALPHA_MULTIPLY = 92,
    ICON_ALPHA_CLEAR = 93,
    ICON_DITHERING = 94,
    ICON_MIPMAPS = 95,
    ICON_BOX_GRID = 96,
    ICON_GRID = 97,
    ICON_BOX_CORNERS_SMALL = 98,
    ICON_BOX_CORNERS_BIG = 99,
    ICON_FOUR_BOXES = 100,
    ICON_GRID_FILL = 101,
    ICON_BOX_MULTISIZE = 102,
    ICON_ZOOM_SMALL = 103,
    ICON_ZOOM_MEDIUM = 104,
    ICON_ZOOM_BIG = 105,
    ICON_ZOOM_ALL = 106,
    ICON_ZOOM_CENTER = 107,
    ICON_BOX_DOTS_SMALL = 108,
    ICON_BOX_DOTS_BIG = 109,
    ICON_BOX_CONCENTRIC = 110,
    ICON_BOX_GRID_BIG = 111,
    ICON_OK_TICK = 112,
    ICON_CROSS = 113,
    ICON_ARROW_LEFT = 114,
    ICON_ARROW_RIGHT = 115,
    ICON_ARROW_DOWN = 116,
    ICON_ARROW_UP = 117,
    ICON_ARROW_LEFT_FILL = 118,
    ICON_ARROW_RIGHT_FILL = 119,
    ICON_ARROW_DOWN_FILL = 120,
    ICON_ARROW_UP_FILL = 121,
    ICON_AUDIO = 122,
    ICON_FX = 123,
    ICON_WAVE = 124,
    ICON_WAVE_SINUS = 125,
    ICON_WAVE_SQUARE = 126,
    ICON_WAVE_TRIANGULAR = 127,
    ICON_CROSS_SMALL = 128,
    ICON_PLAYER_PREVIOUS = 129,
    ICON_PLAYER_PLAY_BACK = 130,
    ICON_PLAYER_PLAY = 131,
    ICON_PLAYER_PAUSE = 132,
    ICON_PLAYER_STOP = 133,
    ICON_PLAYER_NEXT = 134,
    ICON_PLAYER_RECORD = 135,
    ICON_MAGNET = 136,
    ICON_LOCK_CLOSE = 137,
    ICON_LOCK_OPEN = 138,
    ICON_CLOCK = 139,
    ICON_TOOLS = 140,
    ICON_GEAR = 141,
    ICON_GEAR_BIG = 142,
    ICON_BIN = 143,
    ICON_HAND_POINTER = 144,
    ICON_LASER = 145,
    ICON_COIN = 146,
    ICON_EXPLOSION = 147,
    ICON_1UP = 148,
    ICON_PLAYER = 149,
    ICON_PLAYER_JUMP = 150,
    ICON_KEY = 151,
    ICON_DEMON = 152,
    ICON_TEXT_POPUP = 153,
    ICON_GEAR_EX = 154,
    ICON_CRACK = 155,
    ICON_CRACK_POINTS = 156,
    ICON_STAR = 157,
    ICON_DOOR = 158,
    ICON_EXIT = 159,
    ICON_MODE_2D = 160,
    ICON_MODE_3D = 161,
    ICON_CUBE = 162,
    ICON_CUBE_FACE_TOP = 163,
    ICON_CUBE_FACE_LEFT = 164,
    ICON_CUBE_FACE_FRONT = 165,
    ICON_CUBE_FACE_BOTTOM = 166,
    ICON_CUBE_FACE_RIGHT = 167,
    ICON_CUBE_FACE_BACK = 168,
    ICON_CAMERA = 169,
    ICON_SPECIAL = 170,
    ICON_LINK_NET = 171,
    ICON_LINK_BOXES = 172,
    ICON_LINK_MULTI = 173,
    ICON_LINK = 174,
    ICON_LINK_BROKE = 175,
    ICON_TEXT_NOTES = 176,
    ICON_NOTEBOOK = 177,
    ICON_SUITCASE = 178,
    ICON_SUITCASE_ZIP = 179,
    ICON_MAILBOX = 180,
    ICON_MONITOR = 181,
    ICON_PRINTER = 182,
    ICON_PHOTO_CAMERA = 183,
    ICON_PHOTO_CAMERA_FLASH = 184,
    ICON_HOUSE = 185,
    ICON_HEART = 186,
    ICON_CORNER = 187,
    ICON_VERTICAL_BARS = 188,
    ICON_VERTICAL_BARS_FILL = 189,
    ICON_LIFE_BARS = 190,
    ICON_INFO = 191,
    ICON_CROSSLINE = 192,
    ICON_HELP = 193,
    ICON_FILETYPE_ALPHA = 194,
    ICON_FILETYPE_HOME = 195,
    ICON_LAYERS_VISIBLE = 196,
    ICON_LAYERS = 197,
    ICON_WINDOW = 198,
    ICON_HIDPI = 199,
    ICON_FILETYPE_BINARY = 200,
    ICON_HEX = 201,
    ICON_SHIELD = 202,
    ICON_FILE_NEW = 203,
    ICON_FOLDER_ADD = 204,
    ICON_ALARM = 205,
    ICON_CPU = 206,
    ICON_ROM = 207,
    ICON_STEP_OVER = 208,
    ICON_STEP_INTO = 209,
    ICON_STEP_OUT = 210,
    ICON_RESTART = 211,
    ICON_BREAKPOINT_ON = 212,
    ICON_BREAKPOINT_OFF = 213,
    ICON_BURGER_MENU = 214,
    ICON_CASE_SENSITIVE = 215,
    ICON_REG_EXP = 216,
    ICON_FOLDER = 217,
    ICON_FILE = 218,
    ICON_SAND_TIMER = 219,
    ICON_WARNING = 220,
    ICON_HELP_BOX = 221,
    ICON_INFO_BOX = 222,
    ICON_PRIORITY = 223,
    ICON_LAYERS_ISO = 224,
    ICON_LAYERS2 = 225,
    ICON_MLAYERS = 226,
    ICON_MAPS = 227,
    ICON_HOT = 228,
    ICON_LABEL = 229,
    ICON_NAME_ID = 230,
    ICON_SLICING = 231,
    ICON_MANUAL_CONTROL = 232,
    ICON_COLLISION = 233,
    ICON_CIRCLE_ADD = 234,
    ICON_CIRCLE_ADD_FILL = 235,
    ICON_CIRCLE_WARNING = 236,
    ICON_CIRCLE_WARNING_FILL = 237,
    ICON_BOX_MORE = 238,
    ICON_BOX_MORE_FILL = 239,
    ICON_BOX_MINUS = 240,
    ICON_BOX_MINUS_FILL = 241,
    ICON_UNION = 242,
    ICON_INTERSECTION = 243,
    ICON_DIFFERENCE = 244,
    ICON_SPHERE = 245,
    ICON_CYLINDER = 246,
    ICON_CONE = 247,
    ICON_ELLIPSOID = 248,
    ICON_CAPSULE = 249,
    ICON_FILETYPE_FONT = 250,
    ICON_FILETYPE_3D = 251,
    ICON_FILETYPE_CODE_XML = 252,
    ICON_FILETYPE_CODE_C = 253,
    ICON_FILETYPE_CODE_PYTHON = 254,
    ICON_FILETYPE_CODE_JS = 255,
    ICON_FILETYPE_ICON = 256,
}

alias ICON_NONE = GuiIconName.ICON_NONE;
alias ICON_FOLDER_FILE_OPEN = GuiIconName.ICON_FOLDER_FILE_OPEN;
alias ICON_FILE_SAVE_CLASSIC = GuiIconName.ICON_FILE_SAVE_CLASSIC;
alias ICON_FOLDER_OPEN = GuiIconName.ICON_FOLDER_OPEN;
alias ICON_FOLDER_SAVE = GuiIconName.ICON_FOLDER_SAVE;
alias ICON_FILE_OPEN = GuiIconName.ICON_FILE_OPEN;
alias ICON_FILE_SAVE = GuiIconName.ICON_FILE_SAVE;
alias ICON_FILE_EXPORT = GuiIconName.ICON_FILE_EXPORT;
alias ICON_FILE_ADD = GuiIconName.ICON_FILE_ADD;
alias ICON_FILE_DELETE = GuiIconName.ICON_FILE_DELETE;
alias ICON_FILETYPE_TEXT = GuiIconName.ICON_FILETYPE_TEXT;
alias ICON_FILETYPE_AUDIO = GuiIconName.ICON_FILETYPE_AUDIO;
alias ICON_FILETYPE_IMAGE = GuiIconName.ICON_FILETYPE_IMAGE;
alias ICON_FILETYPE_PLAY = GuiIconName.ICON_FILETYPE_PLAY;
alias ICON_FILETYPE_VIDEO = GuiIconName.ICON_FILETYPE_VIDEO;
alias ICON_FILETYPE_INFO = GuiIconName.ICON_FILETYPE_INFO;
alias ICON_FILE_COPY = GuiIconName.ICON_FILE_COPY;
alias ICON_FILE_CUT = GuiIconName.ICON_FILE_CUT;
alias ICON_FILE_PASTE = GuiIconName.ICON_FILE_PASTE;
alias ICON_CURSOR_HAND = GuiIconName.ICON_CURSOR_HAND;
alias ICON_CURSOR_POINTER = GuiIconName.ICON_CURSOR_POINTER;
alias ICON_CURSOR_CLASSIC = GuiIconName.ICON_CURSOR_CLASSIC;
alias ICON_PENCIL = GuiIconName.ICON_PENCIL;
alias ICON_PENCIL_BIG = GuiIconName.ICON_PENCIL_BIG;
alias ICON_BRUSH_CLASSIC = GuiIconName.ICON_BRUSH_CLASSIC;
alias ICON_BRUSH_PAINTER = GuiIconName.ICON_BRUSH_PAINTER;
alias ICON_WATER_DROP = GuiIconName.ICON_WATER_DROP;
alias ICON_COLOR_PICKER = GuiIconName.ICON_COLOR_PICKER;
alias ICON_RUBBER = GuiIconName.ICON_RUBBER;
alias ICON_COLOR_BUCKET = GuiIconName.ICON_COLOR_BUCKET;
alias ICON_TEXT_T = GuiIconName.ICON_TEXT_T;
alias ICON_TEXT_A = GuiIconName.ICON_TEXT_A;
alias ICON_SCALE = GuiIconName.ICON_SCALE;
alias ICON_RESIZE = GuiIconName.ICON_RESIZE;
alias ICON_FILTER_POINT = GuiIconName.ICON_FILTER_POINT;
alias ICON_FILTER_BILINEAR = GuiIconName.ICON_FILTER_BILINEAR;
alias ICON_CROP = GuiIconName.ICON_CROP;
alias ICON_CROP_ALPHA = GuiIconName.ICON_CROP_ALPHA;
alias ICON_SQUARE_TOGGLE = GuiIconName.ICON_SQUARE_TOGGLE;
alias ICON_SYMMETRY = GuiIconName.ICON_SYMMETRY;
alias ICON_SYMMETRY_HORIZONTAL = GuiIconName.ICON_SYMMETRY_HORIZONTAL;
alias ICON_SYMMETRY_VERTICAL = GuiIconName.ICON_SYMMETRY_VERTICAL;
alias ICON_LENS = GuiIconName.ICON_LENS;
alias ICON_LENS_BIG = GuiIconName.ICON_LENS_BIG;
alias ICON_EYE_ON = GuiIconName.ICON_EYE_ON;
alias ICON_EYE_OFF = GuiIconName.ICON_EYE_OFF;
alias ICON_FILTER_TOP = GuiIconName.ICON_FILTER_TOP;
alias ICON_FILTER = GuiIconName.ICON_FILTER;
alias ICON_TARGET_POINT = GuiIconName.ICON_TARGET_POINT;
alias ICON_TARGET_SMALL = GuiIconName.ICON_TARGET_SMALL;
alias ICON_TARGET_BIG = GuiIconName.ICON_TARGET_BIG;
alias ICON_TARGET_MOVE = GuiIconName.ICON_TARGET_MOVE;
alias ICON_CURSOR_MOVE = GuiIconName.ICON_CURSOR_MOVE;
alias ICON_CURSOR_SCALE = GuiIconName.ICON_CURSOR_SCALE;
alias ICON_CURSOR_SCALE_RIGHT = GuiIconName.ICON_CURSOR_SCALE_RIGHT;
alias ICON_CURSOR_SCALE_LEFT = GuiIconName.ICON_CURSOR_SCALE_LEFT;
alias ICON_UNDO = GuiIconName.ICON_UNDO;
alias ICON_REDO = GuiIconName.ICON_REDO;
alias ICON_REREDO = GuiIconName.ICON_REREDO;
alias ICON_MUTATE = GuiIconName.ICON_MUTATE;
alias ICON_ROTATE = GuiIconName.ICON_ROTATE;
alias ICON_REPEAT = GuiIconName.ICON_REPEAT;
alias ICON_SHUFFLE = GuiIconName.ICON_SHUFFLE;
alias ICON_EMPTYBOX = GuiIconName.ICON_EMPTYBOX;
alias ICON_TARGET = GuiIconName.ICON_TARGET;
alias ICON_TARGET_SMALL_FILL = GuiIconName.ICON_TARGET_SMALL_FILL;
alias ICON_TARGET_BIG_FILL = GuiIconName.ICON_TARGET_BIG_FILL;
alias ICON_TARGET_MOVE_FILL = GuiIconName.ICON_TARGET_MOVE_FILL;
alias ICON_CURSOR_MOVE_FILL = GuiIconName.ICON_CURSOR_MOVE_FILL;
alias ICON_CURSOR_SCALE_FILL = GuiIconName.ICON_CURSOR_SCALE_FILL;
alias ICON_CURSOR_SCALE_RIGHT_FILL = GuiIconName.ICON_CURSOR_SCALE_RIGHT_FILL;
alias ICON_CURSOR_SCALE_LEFT_FILL = GuiIconName.ICON_CURSOR_SCALE_LEFT_FILL;
alias ICON_UNDO_FILL = GuiIconName.ICON_UNDO_FILL;
alias ICON_REDO_FILL = GuiIconName.ICON_REDO_FILL;
alias ICON_REREDO_FILL = GuiIconName.ICON_REREDO_FILL;
alias ICON_MUTATE_FILL = GuiIconName.ICON_MUTATE_FILL;
alias ICON_ROTATE_FILL = GuiIconName.ICON_ROTATE_FILL;
alias ICON_REPEAT_FILL = GuiIconName.ICON_REPEAT_FILL;
alias ICON_SHUFFLE_FILL = GuiIconName.ICON_SHUFFLE_FILL;
alias ICON_EMPTYBOX_SMALL = GuiIconName.ICON_EMPTYBOX_SMALL;
alias ICON_BOX = GuiIconName.ICON_BOX;
alias ICON_BOX_TOP = GuiIconName.ICON_BOX_TOP;
alias ICON_BOX_TOP_RIGHT = GuiIconName.ICON_BOX_TOP_RIGHT;
alias ICON_BOX_RIGHT = GuiIconName.ICON_BOX_RIGHT;
alias ICON_BOX_BOTTOM_RIGHT = GuiIconName.ICON_BOX_BOTTOM_RIGHT;
alias ICON_BOX_BOTTOM = GuiIconName.ICON_BOX_BOTTOM;
alias ICON_BOX_BOTTOM_LEFT = GuiIconName.ICON_BOX_BOTTOM_LEFT;
alias ICON_BOX_LEFT = GuiIconName.ICON_BOX_LEFT;
alias ICON_BOX_TOP_LEFT = GuiIconName.ICON_BOX_TOP_LEFT;
alias ICON_BOX_CENTER = GuiIconName.ICON_BOX_CENTER;
alias ICON_BOX_CIRCLE_MASK = GuiIconName.ICON_BOX_CIRCLE_MASK;
alias ICON_POT = GuiIconName.ICON_POT;
alias ICON_ALPHA_MULTIPLY = GuiIconName.ICON_ALPHA_MULTIPLY;
alias ICON_ALPHA_CLEAR = GuiIconName.ICON_ALPHA_CLEAR;
alias ICON_DITHERING = GuiIconName.ICON_DITHERING;
alias ICON_MIPMAPS = GuiIconName.ICON_MIPMAPS;
alias ICON_BOX_GRID = GuiIconName.ICON_BOX_GRID;
alias ICON_GRID = GuiIconName.ICON_GRID;
alias ICON_BOX_CORNERS_SMALL = GuiIconName.ICON_BOX_CORNERS_SMALL;
alias ICON_BOX_CORNERS_BIG = GuiIconName.ICON_BOX_CORNERS_BIG;
alias ICON_FOUR_BOXES = GuiIconName.ICON_FOUR_BOXES;
alias ICON_GRID_FILL = GuiIconName.ICON_GRID_FILL;
alias ICON_BOX_MULTISIZE = GuiIconName.ICON_BOX_MULTISIZE;
alias ICON_ZOOM_SMALL = GuiIconName.ICON_ZOOM_SMALL;
alias ICON_ZOOM_MEDIUM = GuiIconName.ICON_ZOOM_MEDIUM;
alias ICON_ZOOM_BIG = GuiIconName.ICON_ZOOM_BIG;
alias ICON_ZOOM_ALL = GuiIconName.ICON_ZOOM_ALL;
alias ICON_ZOOM_CENTER = GuiIconName.ICON_ZOOM_CENTER;
alias ICON_BOX_DOTS_SMALL = GuiIconName.ICON_BOX_DOTS_SMALL;
alias ICON_BOX_DOTS_BIG = GuiIconName.ICON_BOX_DOTS_BIG;
alias ICON_BOX_CONCENTRIC = GuiIconName.ICON_BOX_CONCENTRIC;
alias ICON_BOX_GRID_BIG = GuiIconName.ICON_BOX_GRID_BIG;
alias ICON_OK_TICK = GuiIconName.ICON_OK_TICK;
alias ICON_CROSS = GuiIconName.ICON_CROSS;
alias ICON_ARROW_LEFT = GuiIconName.ICON_ARROW_LEFT;
alias ICON_ARROW_RIGHT = GuiIconName.ICON_ARROW_RIGHT;
alias ICON_ARROW_DOWN = GuiIconName.ICON_ARROW_DOWN;
alias ICON_ARROW_UP = GuiIconName.ICON_ARROW_UP;
alias ICON_ARROW_LEFT_FILL = GuiIconName.ICON_ARROW_LEFT_FILL;
alias ICON_ARROW_RIGHT_FILL = GuiIconName.ICON_ARROW_RIGHT_FILL;
alias ICON_ARROW_DOWN_FILL = GuiIconName.ICON_ARROW_DOWN_FILL;
alias ICON_ARROW_UP_FILL = GuiIconName.ICON_ARROW_UP_FILL;
alias ICON_AUDIO = GuiIconName.ICON_AUDIO;
alias ICON_FX = GuiIconName.ICON_FX;
alias ICON_WAVE = GuiIconName.ICON_WAVE;
alias ICON_WAVE_SINUS = GuiIconName.ICON_WAVE_SINUS;
alias ICON_WAVE_SQUARE = GuiIconName.ICON_WAVE_SQUARE;
alias ICON_WAVE_TRIANGULAR = GuiIconName.ICON_WAVE_TRIANGULAR;
alias ICON_CROSS_SMALL = GuiIconName.ICON_CROSS_SMALL;
alias ICON_PLAYER_PREVIOUS = GuiIconName.ICON_PLAYER_PREVIOUS;
alias ICON_PLAYER_PLAY_BACK = GuiIconName.ICON_PLAYER_PLAY_BACK;
alias ICON_PLAYER_PLAY = GuiIconName.ICON_PLAYER_PLAY;
alias ICON_PLAYER_PAUSE = GuiIconName.ICON_PLAYER_PAUSE;
alias ICON_PLAYER_STOP = GuiIconName.ICON_PLAYER_STOP;
alias ICON_PLAYER_NEXT = GuiIconName.ICON_PLAYER_NEXT;
alias ICON_PLAYER_RECORD = GuiIconName.ICON_PLAYER_RECORD;
alias ICON_MAGNET = GuiIconName.ICON_MAGNET;
alias ICON_LOCK_CLOSE = GuiIconName.ICON_LOCK_CLOSE;
alias ICON_LOCK_OPEN = GuiIconName.ICON_LOCK_OPEN;
alias ICON_CLOCK = GuiIconName.ICON_CLOCK;
alias ICON_TOOLS = GuiIconName.ICON_TOOLS;
alias ICON_GEAR = GuiIconName.ICON_GEAR;
alias ICON_GEAR_BIG = GuiIconName.ICON_GEAR_BIG;
alias ICON_BIN = GuiIconName.ICON_BIN;
alias ICON_HAND_POINTER = GuiIconName.ICON_HAND_POINTER;
alias ICON_LASER = GuiIconName.ICON_LASER;
alias ICON_COIN = GuiIconName.ICON_COIN;
alias ICON_EXPLOSION = GuiIconName.ICON_EXPLOSION;
alias ICON_1UP = GuiIconName.ICON_1UP;
alias ICON_PLAYER = GuiIconName.ICON_PLAYER;
alias ICON_PLAYER_JUMP = GuiIconName.ICON_PLAYER_JUMP;
alias ICON_KEY = GuiIconName.ICON_KEY;
alias ICON_DEMON = GuiIconName.ICON_DEMON;
alias ICON_TEXT_POPUP = GuiIconName.ICON_TEXT_POPUP;
alias ICON_GEAR_EX = GuiIconName.ICON_GEAR_EX;
alias ICON_CRACK = GuiIconName.ICON_CRACK;
alias ICON_CRACK_POINTS = GuiIconName.ICON_CRACK_POINTS;
alias ICON_STAR = GuiIconName.ICON_STAR;
alias ICON_DOOR = GuiIconName.ICON_DOOR;
alias ICON_EXIT = GuiIconName.ICON_EXIT;
alias ICON_MODE_2D = GuiIconName.ICON_MODE_2D;
alias ICON_MODE_3D = GuiIconName.ICON_MODE_3D;
alias ICON_CUBE = GuiIconName.ICON_CUBE;
alias ICON_CUBE_FACE_TOP = GuiIconName.ICON_CUBE_FACE_TOP;
alias ICON_CUBE_FACE_LEFT = GuiIconName.ICON_CUBE_FACE_LEFT;
alias ICON_CUBE_FACE_FRONT = GuiIconName.ICON_CUBE_FACE_FRONT;
alias ICON_CUBE_FACE_BOTTOM = GuiIconName.ICON_CUBE_FACE_BOTTOM;
alias ICON_CUBE_FACE_RIGHT = GuiIconName.ICON_CUBE_FACE_RIGHT;
alias ICON_CUBE_FACE_BACK = GuiIconName.ICON_CUBE_FACE_BACK;
alias ICON_CAMERA = GuiIconName.ICON_CAMERA;
alias ICON_SPECIAL = GuiIconName.ICON_SPECIAL;
alias ICON_LINK_NET = GuiIconName.ICON_LINK_NET;
alias ICON_LINK_BOXES = GuiIconName.ICON_LINK_BOXES;
alias ICON_LINK_MULTI = GuiIconName.ICON_LINK_MULTI;
alias ICON_LINK = GuiIconName.ICON_LINK;
alias ICON_LINK_BROKE = GuiIconName.ICON_LINK_BROKE;
alias ICON_TEXT_NOTES = GuiIconName.ICON_TEXT_NOTES;
alias ICON_NOTEBOOK = GuiIconName.ICON_NOTEBOOK;
alias ICON_SUITCASE = GuiIconName.ICON_SUITCASE;
alias ICON_SUITCASE_ZIP = GuiIconName.ICON_SUITCASE_ZIP;
alias ICON_MAILBOX = GuiIconName.ICON_MAILBOX;
alias ICON_MONITOR = GuiIconName.ICON_MONITOR;
alias ICON_PRINTER = GuiIconName.ICON_PRINTER;
alias ICON_PHOTO_CAMERA = GuiIconName.ICON_PHOTO_CAMERA;
alias ICON_PHOTO_CAMERA_FLASH = GuiIconName.ICON_PHOTO_CAMERA_FLASH;
alias ICON_HOUSE = GuiIconName.ICON_HOUSE;
alias ICON_HEART = GuiIconName.ICON_HEART;
alias ICON_CORNER = GuiIconName.ICON_CORNER;
alias ICON_VERTICAL_BARS = GuiIconName.ICON_VERTICAL_BARS;
alias ICON_VERTICAL_BARS_FILL = GuiIconName.ICON_VERTICAL_BARS_FILL;
alias ICON_LIFE_BARS = GuiIconName.ICON_LIFE_BARS;
alias ICON_INFO = GuiIconName.ICON_INFO;
alias ICON_CROSSLINE = GuiIconName.ICON_CROSSLINE;
alias ICON_HELP = GuiIconName.ICON_HELP;
alias ICON_FILETYPE_ALPHA = GuiIconName.ICON_FILETYPE_ALPHA;
alias ICON_FILETYPE_HOME = GuiIconName.ICON_FILETYPE_HOME;
alias ICON_LAYERS_VISIBLE = GuiIconName.ICON_LAYERS_VISIBLE;
alias ICON_LAYERS = GuiIconName.ICON_LAYERS;
alias ICON_WINDOW = GuiIconName.ICON_WINDOW;
alias ICON_HIDPI = GuiIconName.ICON_HIDPI;
alias ICON_FILETYPE_BINARY = GuiIconName.ICON_FILETYPE_BINARY;
alias ICON_HEX = GuiIconName.ICON_HEX;
alias ICON_SHIELD = GuiIconName.ICON_SHIELD;
alias ICON_FILE_NEW = GuiIconName.ICON_FILE_NEW;
alias ICON_FOLDER_ADD = GuiIconName.ICON_FOLDER_ADD;
alias ICON_ALARM = GuiIconName.ICON_ALARM;
alias ICON_CPU = GuiIconName.ICON_CPU;
alias ICON_ROM = GuiIconName.ICON_ROM;
alias ICON_STEP_OVER = GuiIconName.ICON_STEP_OVER;
alias ICON_STEP_INTO = GuiIconName.ICON_STEP_INTO;
alias ICON_STEP_OUT = GuiIconName.ICON_STEP_OUT;
alias ICON_RESTART = GuiIconName.ICON_RESTART;
alias ICON_BREAKPOINT_ON = GuiIconName.ICON_BREAKPOINT_ON;
alias ICON_BREAKPOINT_OFF = GuiIconName.ICON_BREAKPOINT_OFF;
alias ICON_BURGER_MENU = GuiIconName.ICON_BURGER_MENU;
alias ICON_CASE_SENSITIVE = GuiIconName.ICON_CASE_SENSITIVE;
alias ICON_REG_EXP = GuiIconName.ICON_REG_EXP;
alias ICON_FOLDER = GuiIconName.ICON_FOLDER;
alias ICON_FILE = GuiIconName.ICON_FILE;
alias ICON_SAND_TIMER = GuiIconName.ICON_SAND_TIMER;
alias ICON_WARNING = GuiIconName.ICON_WARNING;
alias ICON_HELP_BOX = GuiIconName.ICON_HELP_BOX;
alias ICON_INFO_BOX = GuiIconName.ICON_INFO_BOX;
alias ICON_PRIORITY = GuiIconName.ICON_PRIORITY;
alias ICON_LAYERS_ISO = GuiIconName.ICON_LAYERS_ISO;
alias ICON_LAYERS2 = GuiIconName.ICON_LAYERS2;
alias ICON_MLAYERS = GuiIconName.ICON_MLAYERS;
alias ICON_MAPS = GuiIconName.ICON_MAPS;
alias ICON_HOT = GuiIconName.ICON_HOT;
alias ICON_LABEL = GuiIconName.ICON_LABEL;
alias ICON_NAME_ID = GuiIconName.ICON_NAME_ID;
alias ICON_SLICING = GuiIconName.ICON_SLICING;
alias ICON_MANUAL_CONTROL = GuiIconName.ICON_MANUAL_CONTROL;
alias ICON_COLLISION = GuiIconName.ICON_COLLISION;
alias ICON_CIRCLE_ADD = GuiIconName.ICON_CIRCLE_ADD;
alias ICON_CIRCLE_ADD_FILL = GuiIconName.ICON_CIRCLE_ADD_FILL;
alias ICON_CIRCLE_WARNING = GuiIconName.ICON_CIRCLE_WARNING;
alias ICON_CIRCLE_WARNING_FILL = GuiIconName.ICON_CIRCLE_WARNING_FILL;
alias ICON_BOX_MORE = GuiIconName.ICON_BOX_MORE;
alias ICON_BOX_MORE_FILL = GuiIconName.ICON_BOX_MORE_FILL;
alias ICON_BOX_MINUS = GuiIconName.ICON_BOX_MINUS;
alias ICON_BOX_MINUS_FILL = GuiIconName.ICON_BOX_MINUS_FILL;
alias ICON_UNION = GuiIconName.ICON_UNION;
alias ICON_INTERSECTION = GuiIconName.ICON_INTERSECTION;
alias ICON_DIFFERENCE = GuiIconName.ICON_DIFFERENCE;
alias ICON_SPHERE = GuiIconName.ICON_SPHERE;
alias ICON_CYLINDER = GuiIconName.ICON_CYLINDER;
alias ICON_CONE = GuiIconName.ICON_CONE;
alias ICON_ELLIPSOID = GuiIconName.ICON_ELLIPSOID;
alias ICON_CAPSULE = GuiIconName.ICON_CAPSULE;
alias ICON_FILETYPE_FONT = GuiIconName.ICON_FILETYPE_FONT;
alias ICON_FILETYPE_3D = GuiIconName.ICON_FILETYPE_3D;
alias ICON_FILETYPE_CODE_XML = GuiIconName.ICON_FILETYPE_CODE_XML;
alias ICON_FILETYPE_CODE_C = GuiIconName.ICON_FILETYPE_CODE_C;
alias ICON_FILETYPE_CODE_PYTHON = GuiIconName.ICON_FILETYPE_CODE_PYTHON;
alias ICON_FILETYPE_CODE_JS = GuiIconName.ICON_FILETYPE_CODE_JS;
alias ICON_FILETYPE_ICON = GuiIconName.ICON_FILETYPE_ICON;

enum GuiPropertyElement
{
    BORDER = 0,
    BASE,
    TEXT,
    OTHER,
}

alias BORDER = GuiPropertyElement.BORDER;
alias BASE = GuiPropertyElement.BASE;
alias TEXT = GuiPropertyElement.TEXT;
alias OTHER = GuiPropertyElement.OTHER;

pragma(mangle, "GuiEnable")
void rgEnable();

alias GuiEnable = rgEnable;

pragma(mangle, "GuiDisable")
void rgDisable();

alias GuiDisable = rgDisable;

pragma(mangle, "GuiLock")
void rgLock();

alias GuiLock = rgLock;

pragma(mangle, "GuiUnlock")
void rgUnlock();

alias GuiUnlock = rgUnlock;

pragma(mangle, "GuiIsLocked")
bool rgIsLocked();

alias GuiIsLocked = rgIsLocked;

pragma(mangle, "GuiSetAlpha")
void rgSetAlpha(float alpha);

alias GuiSetAlpha = rgSetAlpha;

pragma(mangle, "GuiSetState")
void rgSetState(int state);

alias GuiSetState = rgSetState;

pragma(mangle, "GuiGetState")
int rgGetState();

alias GuiGetState = rgGetState;

pragma(mangle, "GuiSetFont")
void rgSetFont(Font font);

alias GuiSetFont = rgSetFont;

pragma(mangle, "GuiGetFont")
Font rgGetFont();

alias GuiGetFont = rgGetFont;

pragma(mangle, "GuiSetStyle")
void rgSetStyle(int control, int property, int value);

alias GuiSetStyle = rgSetStyle;

pragma(mangle, "GuiGetStyle")
int rgGetStyle(int control, int property);

alias GuiGetStyle = rgGetStyle;

pragma(mangle, "GuiLoadStyle")
void rgLoadStyle(const(char)* fileName);

alias GuiLoadStyle = rgLoadStyle;

pragma(mangle, "GuiLoadStyleFromMemory")
void rgLoadStyleFromMemory(const(ubyte)* fileData, int dataSize);

alias GuiLoadStyleFromMemory = rgLoadStyleFromMemory;

pragma(mangle, "GuiLoadStyleDefault")
void rgLoadStyleDefault();

alias GuiLoadStyleDefault = rgLoadStyleDefault;

pragma(mangle, "GuiEnableTooltip")
void rgEnableTooltip();

alias GuiEnableTooltip = rgEnableTooltip;

pragma(mangle, "GuiDisableTooltip")
void rgDisableTooltip();

alias GuiDisableTooltip = rgDisableTooltip;

pragma(mangle, "GuiSetTooltip")
void rgSetTooltip(const(char)* tooltip);

alias GuiSetTooltip = rgSetTooltip;

pragma(mangle, "GuiIconText")
const(char)* rgIconText(int iconId, const(char)* text);

alias GuiIconText = rgIconText;

pragma(mangle, "GuiSetIconScale")
void rgSetIconScale(int scale);

alias GuiSetIconScale = rgSetIconScale;

pragma(mangle, "GuiGetIcons")
uint* rgGetIcons();

alias GuiGetIcons = rgGetIcons;

pragma(mangle, "GuiLoadIcons")
char** rgLoadIcons(const(char)* fileName, bool loadIconsName);

alias GuiLoadIcons = rgLoadIcons;

pragma(mangle, "GuiLoadIconsFromMemory")
char** rgLoadIconsFromMemory(const(ubyte)* fileData, int dataSize, bool loadIconsName);

alias GuiLoadIconsFromMemory = rgLoadIconsFromMemory;

pragma(mangle, "GuiDrawIcon")
void rgDrawIcon(int iconId, int posX, int posY, int pixelSize, Color color);

alias GuiDrawIcon = rgDrawIcon;

pragma(mangle, "GuiGetTextWidth")
int rgGetTextWidth(const(char)* text);

alias GuiGetTextWidth = rgGetTextWidth;

pragma(mangle, "GuiWindowBox")
int rgWindowBox(Rectangle bounds, const(char)* title);

alias GuiWindowBox = rgWindowBox;

pragma(mangle, "GuiGroupBox")
int rgGroupBox(Rectangle bounds, const(char)* text);

alias GuiGroupBox = rgGroupBox;

pragma(mangle, "GuiLine")
int rgLine(Rectangle bounds, const(char)* text);

alias GuiLine = rgLine;

pragma(mangle, "GuiPanel")
int rgPanel(Rectangle bounds, const(char)* text);

alias GuiPanel = rgPanel;

pragma(mangle, "GuiScrollPanel")
int rgScrollPanel(Rectangle bounds, const(char)* text, Rectangle content, Vector2* scroll, Rectangle* view);

alias GuiScrollPanel = rgScrollPanel;

pragma(mangle, "GuiLabel")
int rgLabel(Rectangle bounds, const(char)* text);

alias GuiLabel = rgLabel;

pragma(mangle, "GuiButton")
int rgButton(Rectangle bounds, const(char)* text);

alias GuiButton = rgButton;

pragma(mangle, "GuiLabelButton")
int rgLabelButton(Rectangle bounds, const(char)* text);

alias GuiLabelButton = rgLabelButton;

pragma(mangle, "GuiToggle")
int rgToggle(Rectangle bounds, const(char)* text, bool* active);

alias GuiToggle = rgToggle;

pragma(mangle, "GuiToggleGroup")
int rgToggleGroup(Rectangle bounds, const(char)* text, int* active);

alias GuiToggleGroup = rgToggleGroup;

pragma(mangle, "GuiToggleSlider")
int rgToggleSlider(Rectangle bounds, const(char)* text, int* active);

alias GuiToggleSlider = rgToggleSlider;

pragma(mangle, "GuiCheckBox")
int rgCheckBox(Rectangle bounds, const(char)* text, bool* checked);

alias GuiCheckBox = rgCheckBox;

pragma(mangle, "GuiComboBox")
int rgComboBox(Rectangle bounds, const(char)* text, int* active);

alias GuiComboBox = rgComboBox;

pragma(mangle, "GuiDropdownBox")
int rgDropdownBox(Rectangle bounds, const(char)* text, int* active, bool editMode);

alias GuiDropdownBox = rgDropdownBox;

pragma(mangle, "GuiSpinner")
int rgSpinner(Rectangle bounds, const(char)* text, int* value, int minValue, int maxValue, bool editMode);

alias GuiSpinner = rgSpinner;

pragma(mangle, "GuiValueBox")
int rgValueBox(Rectangle bounds, const(char)* text, int* value, int minValue, int maxValue, bool editMode);

alias GuiValueBox = rgValueBox;

pragma(mangle, "GuiValueBoxFloat")
int rgValueBoxFloat(Rectangle bounds, const(char)* text, char* textValue, float* value, bool editMode);

alias GuiValueBoxFloat = rgValueBoxFloat;

pragma(mangle, "GuiTextBox")
int rgTextBox(Rectangle bounds, char* text, int textSize, bool editMode);

alias GuiTextBox = rgTextBox;

pragma(mangle, "GuiSlider")
int rgSlider(Rectangle bounds, const(char)* textLeft, const(char)* textRight, float* value, float minValue, float maxValue);

alias GuiSlider = rgSlider;

pragma(mangle, "GuiSliderBar")
int rgSliderBar(Rectangle bounds, const(char)* textLeft, const(char)* textRight, float* value, float minValue, float maxValue);

alias GuiSliderBar = rgSliderBar;

pragma(mangle, "GuiProgressBar")
int rgProgressBar(Rectangle bounds, const(char)* textLeft, const(char)* textRight, float* value, float minValue, float maxValue);

alias GuiProgressBar = rgProgressBar;

pragma(mangle, "GuiStatusBar")
int rgStatusBar(Rectangle bounds, const(char)* text);

alias GuiStatusBar = rgStatusBar;

pragma(mangle, "GuiDummyRec")
int rgDummyRec(Rectangle bounds, const(char)* text);

alias GuiDummyRec = rgDummyRec;

pragma(mangle, "GuiGrid")
int rgGrid(Rectangle bounds, const(char)* text, float spacing, int subdivs, Vector2* mouseCell);

alias GuiGrid = rgGrid;

pragma(mangle, "GuiListView")
int rgListView(Rectangle bounds, const(char)* text, int* scrollIndex, int* active);

alias GuiListView = rgListView;

pragma(mangle, "GuiListViewEx")
int rgListViewEx(Rectangle bounds, char** text, int count, int* scrollIndex, int* active, int* focus);

alias GuiListViewEx = rgListViewEx;

pragma(mangle, "GuiTabBar")
int rgTabBar(Rectangle bounds, const(char)* text, int* hscroll, int* active);

alias GuiTabBar = rgTabBar;

pragma(mangle, "GuiTabBarEx")
int rgTabBarEx(Rectangle bounds, char** text, int count, int* hscroll, int* active, int* focus);

alias GuiTabBarEx = rgTabBarEx;

pragma(mangle, "GuiMessageBox")
int rgMessageBox(Rectangle bounds, const(char)* title, const(char)* message, const(char)* btnText, int* btnActive);

alias GuiMessageBox = rgMessageBox;

pragma(mangle, "GuiTextInputBox")
int rgTextInputBox(Rectangle bounds, const(char)* title, const(char)* message, char* text, int textSize, const(char)* btnText, int* btnActive, bool* secretViewActive);

alias GuiTextInputBox = rgTextInputBox;

pragma(mangle, "GuiColorPicker")
int rgColorPicker(Rectangle bounds, const(char)* text, Color* color);

alias GuiColorPicker = rgColorPicker;

pragma(mangle, "GuiColorPanel")
int rgColorPanel(Rectangle bounds, const(char)* text, Color* color);

alias GuiColorPanel = rgColorPanel;

pragma(mangle, "GuiColorBarAlpha")
int rgColorBarAlpha(Rectangle bounds, const(char)* text, float* alpha);

alias GuiColorBarAlpha = rgColorBarAlpha;

pragma(mangle, "GuiColorBarHue")
int rgColorBarHue(Rectangle bounds, const(char)* text, float* value);

alias GuiColorBarHue = rgColorBarHue;

pragma(mangle, "GuiColorPickerHSV")
int rgColorPickerHSV(Rectangle bounds, const(char)* text, Vector3* colorHsv);

alias GuiColorPickerHSV = rgColorPickerHSV;

pragma(mangle, "GuiColorPanelHSV")
int rgColorPanelHSV(Rectangle bounds, const(char)* text, Vector3* colorHsv);

alias GuiColorPanelHSV = rgColorPanelHSV;
