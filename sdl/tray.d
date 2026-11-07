module libs.sdl.tray;

import libs.sdl.properties;
import libs.sdl.surface;

extern (C):
@nogc nothrow:

struct SDL_Tray;

struct SDL_TrayMenu;

struct SDL_TrayEntry;

alias SDL_TrayEntryFlags = uint;

enum SDL_TRAYENTRY_BUTTON = 0x00000001u;
enum SDL_TRAYENTRY_CHECKBOX = 0x00000002u;
enum SDL_TRAYENTRY_SUBMENU = 0x00000004u;
enum SDL_TRAYENTRY_DISABLED = 0x80000000u;
enum SDL_TRAYENTRY_CHECKED = 0x40000000u;

alias SDL_TrayCallback = void function(void* userdata, SDL_TrayEntry* entry);

alias SDL_TrayClickCallback = bool function(void* userdata, SDL_Tray* tray);

pragma(mangle, "SDL_CreateTray")
SDL_Tray* sdlCreateTray(SDL_Surface* icon, const(char)* tooltip);

alias SDL_CreateTray = sdlCreateTray;

pragma(mangle, "SDL_CreateTrayWithProperties")
SDL_Tray* sdlCreateTrayWithProperties(SDL_PropertiesID props);

alias SDL_CreateTrayWithProperties = sdlCreateTrayWithProperties;

enum SDL_PROP_TRAY_CREATE_ICON_POINTER = "SDL.tray.create.icon";
enum SDL_PROP_TRAY_CREATE_TOOLTIP_STRING = "SDL.tray.create.tooltip";
enum SDL_PROP_TRAY_CREATE_USERDATA_POINTER = "SDL.tray.create.userdata";
enum SDL_PROP_TRAY_CREATE_LEFTCLICK_CALLBACK_POINTER = "SDL.tray.create.leftclick_callback";
enum SDL_PROP_TRAY_CREATE_RIGHTCLICK_CALLBACK_POINTER = "SDL.tray.create.rightclick_callback";
enum SDL_PROP_TRAY_CREATE_MIDDLECLICK_CALLBACK_POINTER = "SDL.tray.create.middleclick_callback";

pragma(mangle, "SDL_SetTrayIcon")
void sdlSetTrayIcon(SDL_Tray* tray, SDL_Surface* icon);

alias SDL_SetTrayIcon = sdlSetTrayIcon;

pragma(mangle, "SDL_SetTrayTooltip")
void sdlSetTrayTooltip(SDL_Tray* tray, const(char)* tooltip);

alias SDL_SetTrayTooltip = sdlSetTrayTooltip;

pragma(mangle, "SDL_CreateTrayMenu")
SDL_TrayMenu* sdlCreateTrayMenu(SDL_Tray* tray);

alias SDL_CreateTrayMenu = sdlCreateTrayMenu;

pragma(mangle, "SDL_CreateTraySubmenu")
SDL_TrayMenu* sdlCreateTraySubmenu(SDL_TrayEntry* entry);

alias SDL_CreateTraySubmenu = sdlCreateTraySubmenu;

pragma(mangle, "SDL_GetTrayMenu")
SDL_TrayMenu* sdlGetTrayMenu(SDL_Tray* tray);

alias SDL_GetTrayMenu = sdlGetTrayMenu;

pragma(mangle, "SDL_GetTraySubmenu")
SDL_TrayMenu* sdlGetTraySubmenu(SDL_TrayEntry* entry);

alias SDL_GetTraySubmenu = sdlGetTraySubmenu;

pragma(mangle, "SDL_GetTrayEntries")
const(SDL_TrayEntry*)* sdlGetTrayEntries(SDL_TrayMenu* menu, int* count);

alias SDL_GetTrayEntries = sdlGetTrayEntries;

pragma(mangle, "SDL_RemoveTrayEntry")
void sdlRemoveTrayEntry(SDL_TrayEntry* entry);

alias SDL_RemoveTrayEntry = sdlRemoveTrayEntry;

pragma(mangle, "SDL_InsertTrayEntryAt")
SDL_TrayEntry* sdlInsertTrayEntryAt(SDL_TrayMenu* menu, int pos, const(char)* label, SDL_TrayEntryFlags flags);

alias SDL_InsertTrayEntryAt = sdlInsertTrayEntryAt;

pragma(mangle, "SDL_SetTrayEntryLabel")
void sdlSetTrayEntryLabel(SDL_TrayEntry* entry, const(char)* label);

alias SDL_SetTrayEntryLabel = sdlSetTrayEntryLabel;

pragma(mangle, "SDL_GetTrayEntryLabel")
const(char)* sdlGetTrayEntryLabel(SDL_TrayEntry* entry);

alias SDL_GetTrayEntryLabel = sdlGetTrayEntryLabel;

pragma(mangle, "SDL_SetTrayEntryChecked")
void sdlSetTrayEntryChecked(SDL_TrayEntry* entry, bool checked);

alias SDL_SetTrayEntryChecked = sdlSetTrayEntryChecked;

pragma(mangle, "SDL_GetTrayEntryChecked")
bool sdlGetTrayEntryChecked(SDL_TrayEntry* entry);

alias SDL_GetTrayEntryChecked = sdlGetTrayEntryChecked;

pragma(mangle, "SDL_SetTrayEntryEnabled")
void sdlSetTrayEntryEnabled(SDL_TrayEntry* entry, bool enabled);

alias SDL_SetTrayEntryEnabled = sdlSetTrayEntryEnabled;

pragma(mangle, "SDL_GetTrayEntryEnabled")
bool sdlGetTrayEntryEnabled(SDL_TrayEntry* entry);

alias SDL_GetTrayEntryEnabled = sdlGetTrayEntryEnabled;

pragma(mangle, "SDL_SetTrayEntryCallback")
void sdlSetTrayEntryCallback(SDL_TrayEntry* entry, SDL_TrayCallback callback, void* userdata);

alias SDL_SetTrayEntryCallback = sdlSetTrayEntryCallback;

pragma(mangle, "SDL_ClickTrayEntry")
void sdlClickTrayEntry(SDL_TrayEntry* entry);

alias SDL_ClickTrayEntry = sdlClickTrayEntry;

pragma(mangle, "SDL_DestroyTray")
void sdlDestroyTray(SDL_Tray* tray);

alias SDL_DestroyTray = sdlDestroyTray;

pragma(mangle, "SDL_GetTrayEntryParent")
SDL_TrayMenu* sdlGetTrayEntryParent(SDL_TrayEntry* entry);

alias SDL_GetTrayEntryParent = sdlGetTrayEntryParent;

pragma(mangle, "SDL_GetTrayMenuParentEntry")
SDL_TrayEntry* sdlGetTrayMenuParentEntry(SDL_TrayMenu* menu);

alias SDL_GetTrayMenuParentEntry = sdlGetTrayMenuParentEntry;

pragma(mangle, "SDL_GetTrayMenuParentTray")
SDL_Tray* sdlGetTrayMenuParentTray(SDL_TrayMenu* menu);

alias SDL_GetTrayMenuParentTray = sdlGetTrayMenuParentTray;

pragma(mangle, "SDL_UpdateTrays")
void sdlUpdateTrays();

alias SDL_UpdateTrays = sdlUpdateTrays;
