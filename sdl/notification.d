module libs.sdl.notification;

import libs.sdl.properties;
import libs.sdl.stdinc;
import libs.sdl.surface;

extern (C):
@nogc nothrow:

enum SDL_PROP_GLOBAL_NOTIFICATION_HEADER_ICON_STRING = "SDL.notification.header_icon";

alias SDL_NotificationID = uint;

enum SDL_NotificationPriority
{
    SDL_NOTIFICATION_PRIORITY_LOW = -1,
    SDL_NOTIFICATION_PRIORITY_NORMAL = 0,
    SDL_NOTIFICATION_PRIORITY_HIGH = 1,
    SDL_NOTIFICATION_PRIORITY_CRITICAL = 2
}

alias SDL_NOTIFICATION_PRIORITY_LOW = SDL_NotificationPriority.SDL_NOTIFICATION_PRIORITY_LOW;
alias SDL_NOTIFICATION_PRIORITY_NORMAL = SDL_NotificationPriority.SDL_NOTIFICATION_PRIORITY_NORMAL;
alias SDL_NOTIFICATION_PRIORITY_HIGH = SDL_NotificationPriority.SDL_NOTIFICATION_PRIORITY_HIGH;
alias SDL_NOTIFICATION_PRIORITY_CRITICAL = SDL_NotificationPriority
    .SDL_NOTIFICATION_PRIORITY_CRITICAL;

enum SDL_NotificationActionType
{
    SDL_NOTIFICATION_ACTION_TYPE_BUTTON = 1
}

alias SDL_NOTIFICATION_ACTION_TYPE_BUTTON = SDL_NotificationActionType
    .SDL_NOTIFICATION_ACTION_TYPE_BUTTON;

struct SDL_NotificationActionButton
{
    SDL_NotificationActionType type;
    const(char)* action_id;
    const(char)* action_label;
}

union SDL_NotificationAction
{
    SDL_NotificationActionType type;
    SDL_NotificationActionButton button;
    Uint8[128] padding;
}

enum SDL_PROP_NOTIFICATION_ACTIONS_POINTER = "SDL.notification.actions";
enum SDL_PROP_NOTIFICATION_ACTION_COUNT_NUMBER = "SDL.notification.action_count";
enum SDL_PROP_NOTIFICATION_IMAGE_POINTER = "SDL.notification.image";
enum SDL_PROP_NOTIFICATION_MESSAGE_STRING = "SDL.notification.message";
enum SDL_PROP_NOTIFICATION_PRIORITY_NUMBER = "SDL.notification.priority";
enum SDL_PROP_NOTIFICATION_REPLACES_NUMBER = "SDL.notification.replaces";
enum SDL_PROP_NOTIFICATION_SOUND_STRING = "SDL.notification.sound";
enum SDL_PROP_NOTIFICATION_TRANSIENT_BOOLEAN = "SDL.notification.transient";
enum SDL_PROP_NOTIFICATION_TITLE_STRING = "SDL.notification.title";
pragma(mangle, "SDL_RequestNotificationPermission")
bool sdlRequestNotificationPermission();

alias SDL_RequestNotificationPermission = sdlRequestNotificationPermission;
pragma(mangle, "SDL_ShowNotificationWithProperties")
SDL_NotificationID sdlShowNotificationWithProperties(SDL_PropertiesID props);

alias SDL_ShowNotificationWithProperties = sdlShowNotificationWithProperties;
pragma(mangle, "SDL_ShowNotification")
SDL_NotificationID sdlShowNotification(const(char)* title, const(char)* message, SDL_Surface* image, SDL_NotificationAction* actions, int num_actions);

alias SDL_ShowNotification = sdlShowNotification;
pragma(mangle, "SDL_RemoveNotification")
bool sdlRemoveNotification(SDL_NotificationID notification);

alias SDL_RemoveNotification = sdlRemoveNotification;
