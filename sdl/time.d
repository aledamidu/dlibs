module libs.sdl.time;

import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

struct SDL_DateTime
{
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
    int nanosecond;
    int day_of_week;
    int utc_offset;
}

enum SDL_DateFormat
{
    SDL_DATE_FORMAT_YYYYMMDD = 0,
    SDL_DATE_FORMAT_DDMMYYYY = 1,
    SDL_DATE_FORMAT_MMDDYYYY = 2
}

alias SDL_DATE_FORMAT_YYYYMMDD = SDL_DateFormat.SDL_DATE_FORMAT_YYYYMMDD;
alias SDL_DATE_FORMAT_DDMMYYYY = SDL_DateFormat.SDL_DATE_FORMAT_DDMMYYYY;
alias SDL_DATE_FORMAT_MMDDYYYY = SDL_DateFormat.SDL_DATE_FORMAT_MMDDYYYY;

enum SDL_TimeFormat
{
    SDL_TIME_FORMAT_24HR = 0,
    SDL_TIME_FORMAT_12HR = 1
}

alias SDL_TIME_FORMAT_24HR = SDL_TimeFormat.SDL_TIME_FORMAT_24HR;
alias SDL_TIME_FORMAT_12HR = SDL_TimeFormat.SDL_TIME_FORMAT_12HR;

pragma(mangle, "SDL_GetDateTimeLocalePreferences")
bool sdlGetDateTimeLocalePreferences(SDL_DateFormat* dateFormat, SDL_TimeFormat* timeFormat);

alias SDL_GetDateTimeLocalePreferences = sdlGetDateTimeLocalePreferences;

pragma(mangle, "SDL_GetCurrentTime")
bool sdlGetCurrentTime(SDL_Time* ticks);

alias SDL_GetCurrentTime = sdlGetCurrentTime;

pragma(mangle, "SDL_TimeToDateTime")
bool sdlTimeToDateTime(SDL_Time ticks, SDL_DateTime* dt, bool localTime);

alias SDL_TimeToDateTime = sdlTimeToDateTime;

pragma(mangle, "SDL_DateTimeToTime")
bool sdlDateTimeToTime(const(SDL_DateTime)* dt, SDL_Time* ticks);

alias SDL_DateTimeToTime = sdlDateTimeToTime;

pragma(mangle, "SDL_TimeToWindows")
void sdlTimeToWindows(SDL_Time ticks, Uint32* dwLowDateTime, Uint32* dwHighDateTime);

alias SDL_TimeToWindows = sdlTimeToWindows;

pragma(mangle, "SDL_TimeFromWindows")
SDL_Time sdlTimeFromWindows(Uint32 dwLowDateTime, Uint32 dwHighDateTime);

alias SDL_TimeFromWindows = sdlTimeFromWindows;

pragma(mangle, "SDL_GetDaysInMonth")
int sdlGetDaysInMonth(int year, int month);

alias SDL_GetDaysInMonth = sdlGetDaysInMonth;

pragma(mangle, "SDL_GetDayOfYear")
int sdlGetDayOfYear(int year, int month, int day);

alias SDL_GetDayOfYear = sdlGetDayOfYear;

pragma(mangle, "SDL_GetDayOfWeek")
int sdlGetDayOfWeek(int year, int month, int day);

alias SDL_GetDayOfWeek = sdlGetDayOfWeek;
