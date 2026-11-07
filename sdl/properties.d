module libs.sdl.properties;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

alias SDL_PropertiesID = uint;

enum SDL_PropertyType
{
    SDL_PROPERTY_TYPE_INVALID = 0,
    SDL_PROPERTY_TYPE_POINTER = 1,
    SDL_PROPERTY_TYPE_STRING = 2,
    SDL_PROPERTY_TYPE_NUMBER = 3,
    SDL_PROPERTY_TYPE_FLOAT = 4,
    SDL_PROPERTY_TYPE_BOOLEAN = 5
}

alias SDL_PROPERTY_TYPE_INVALID = SDL_PropertyType.SDL_PROPERTY_TYPE_INVALID;
alias SDL_PROPERTY_TYPE_POINTER = SDL_PropertyType.SDL_PROPERTY_TYPE_POINTER;
alias SDL_PROPERTY_TYPE_STRING = SDL_PropertyType.SDL_PROPERTY_TYPE_STRING;
alias SDL_PROPERTY_TYPE_NUMBER = SDL_PropertyType.SDL_PROPERTY_TYPE_NUMBER;
alias SDL_PROPERTY_TYPE_FLOAT = SDL_PropertyType.SDL_PROPERTY_TYPE_FLOAT;
alias SDL_PROPERTY_TYPE_BOOLEAN = SDL_PropertyType.SDL_PROPERTY_TYPE_BOOLEAN;

enum SDL_PROP_NAME_STRING = "SDL.name";

pragma(mangle, "SDL_GetGlobalProperties")
SDL_PropertiesID sdlGetGlobalProperties();

alias SDL_GetGlobalProperties = sdlGetGlobalProperties;

pragma(mangle, "SDL_CreateProperties")
SDL_PropertiesID sdlCreateProperties();

alias SDL_CreateProperties = sdlCreateProperties;

pragma(mangle, "SDL_CopyProperties")
bool sdlCopyProperties(SDL_PropertiesID src, SDL_PropertiesID dst);

alias SDL_CopyProperties = sdlCopyProperties;

pragma(mangle, "SDL_LockProperties")
bool sdlLockProperties(SDL_PropertiesID props);

alias SDL_LockProperties = sdlLockProperties;

pragma(mangle, "SDL_UnlockProperties")
void sdlUnlockProperties(SDL_PropertiesID props);

alias SDL_UnlockProperties = sdlUnlockProperties;

alias SDL_CleanupPropertyCallback = void function(void* userdata, void* value);

pragma(mangle, "SDL_SetPointerPropertyWithCleanup")
bool sdlSetPointerPropertyWithCleanup(SDL_PropertiesID props, const(char)* name, void* value, SDL_CleanupPropertyCallback cleanup, void* userdata);

alias SDL_SetPointerPropertyWithCleanup = sdlSetPointerPropertyWithCleanup;

pragma(mangle, "SDL_SetPointerProperty")
bool sdlSetPointerProperty(SDL_PropertiesID props, const(char)* name, void* value);

alias SDL_SetPointerProperty = sdlSetPointerProperty;

pragma(mangle, "SDL_SetStringProperty")
bool sdlSetStringProperty(SDL_PropertiesID props, const(char)* name, const(char)* value);

alias SDL_SetStringProperty = sdlSetStringProperty;

pragma(mangle, "SDL_SetNumberProperty")
bool sdlSetNumberProperty(SDL_PropertiesID props, const(char)* name, Sint64 value);

alias SDL_SetNumberProperty = sdlSetNumberProperty;

pragma(mangle, "SDL_SetFloatProperty")
bool sdlSetFloatProperty(SDL_PropertiesID props, const(char)* name, float value);

alias SDL_SetFloatProperty = sdlSetFloatProperty;

pragma(mangle, "SDL_SetBooleanProperty")
bool sdlSetBooleanProperty(SDL_PropertiesID props, const(char)* name, bool value);

alias SDL_SetBooleanProperty = sdlSetBooleanProperty;

pragma(mangle, "SDL_HasProperty")
bool sdlHasProperty(SDL_PropertiesID props, const(char)* name);

alias SDL_HasProperty = sdlHasProperty;

pragma(mangle, "SDL_GetPropertyType")
SDL_PropertyType sdlGetPropertyType(SDL_PropertiesID props, const(char)* name);

alias SDL_GetPropertyType = sdlGetPropertyType;

pragma(mangle, "SDL_GetPointerProperty")
void* sdlGetPointerProperty(SDL_PropertiesID props, const(char)* name, void* default_value);

alias SDL_GetPointerProperty = sdlGetPointerProperty;

pragma(mangle, "SDL_GetStringProperty")
const(char)* sdlGetStringProperty(SDL_PropertiesID props, const(char)* name, const(char)* default_value);

alias SDL_GetStringProperty = sdlGetStringProperty;

pragma(mangle, "SDL_GetNumberProperty")
Sint64 sdlGetNumberProperty(SDL_PropertiesID props, const(char)* name, Sint64 default_value);

alias SDL_GetNumberProperty = sdlGetNumberProperty;

pragma(mangle, "SDL_GetFloatProperty")
float sdlGetFloatProperty(SDL_PropertiesID props, const(char)* name, float default_value);

alias SDL_GetFloatProperty = sdlGetFloatProperty;

pragma(mangle, "SDL_GetBooleanProperty")
bool sdlGetBooleanProperty(SDL_PropertiesID props, const(char)* name, bool default_value);

alias SDL_GetBooleanProperty = sdlGetBooleanProperty;

pragma(mangle, "SDL_ClearProperty")
bool sdlClearProperty(SDL_PropertiesID props, const(char)* name);

alias SDL_ClearProperty = sdlClearProperty;

pragma(mangle, "SDL_GetNumProperties")
int sdlGetNumProperties(SDL_PropertiesID props);

alias SDL_GetNumProperties = sdlGetNumProperties;

alias SDL_EnumeratePropertiesCallback = void function(void* userdata, SDL_PropertiesID props, const(
        char)* name);

pragma(mangle, "SDL_EnumerateProperties")
bool sdlEnumerateProperties(SDL_PropertiesID props, SDL_EnumeratePropertiesCallback callback, void* userdata);

alias SDL_EnumerateProperties = sdlEnumerateProperties;

pragma(mangle, "SDL_DestroyProperties")
void sdlDestroyProperties(SDL_PropertiesID props);

alias SDL_DestroyProperties = sdlDestroyProperties;
