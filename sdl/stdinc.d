module libs.sdl.stdinc;

import core.stdc.stdarg : va_list;
import core.stdc.config;
import core.stdc.inttypes;
import core.stdc.stddef;
import core.stdc.stdint;
import core.stdc.string;

extern (C):

enum SDL_SIZE_MAX = SIZE_MAX;

extern (D) size_t sdlArraysize(T)(auto ref T array) @nogc nothrow {
    return array.sizeof / (array[0]).sizeof;
}

// Not @nogc/nothrow: std.conv.to allocates and may throw.
extern (D) string SDL_STRINGIFY_ARG(T)(auto ref T arg) {
    import std.conv : to;

    return to!string(arg);
}

@nogc nothrow:

T sdlReinterpretCast(T, U)(U expression) {
    return cast(T) expression;
}

T sdlStaticCast(T, U)(U expression) {
    return cast(T) expression;
}

T sdlConstCast(T, U)(U expression) {
    return cast(T) expression;
}

extern (D) auto SDL_FOURCC(T0, T1, T2, T3)(T0 A, T1 B, T2 C, T3 D) {
    return (cast(Uint32) cast(Uint8) A) | ((cast(Uint32) cast(Uint8) B) << 8) |
        (
            (cast(Uint32) cast(Uint8) C) << 16) | ((cast(Uint32) cast(Uint8) D) << 24);
}

alias SDL_SINT64_C = INT64_C;

alias SDL_UINT64_C = UINT64_C;

alias Sint8 = byte;
enum SDL_MAX_SINT8 = cast(Sint8) 0x7F;
enum SDL_MIN_SINT8 = cast(Sint8)~0x7F;

alias Uint8 = ubyte;
enum SDL_MAX_UINT8 = cast(Uint8) 0xFF;
enum SDL_MIN_UINT8 = cast(Uint8) 0x00;

alias Sint16 = short;
enum SDL_MAX_SINT16 = cast(Sint16) 0x7FFF;
enum SDL_MIN_SINT16 = cast(Sint16)~0x7FFF;

alias Uint16 = ushort;
enum SDL_MAX_UINT16 = cast(Uint16) 0xFFFF;
enum SDL_MIN_UINT16 = cast(Uint16) 0x0000;

alias Sint32 = int;
enum SDL_MAX_SINT32 = cast(Sint32) 0x7FFFFFFF;
enum SDL_MIN_SINT32 = cast(Sint32)~0x7FFFFFFF;

alias Uint32 = uint;
enum SDL_MAX_UINT32 = cast(Uint32) 0xFFFFFFFFu;
enum SDL_MIN_UINT32 = cast(Uint32) 0x00000000;

alias Sint64 = long;
enum SDL_MAX_SINT64 = SDL_SINT64_C(0x7FFFFFFFFFFFFFFF);
enum SDL_MIN_SINT64 = ~SDL_SINT64_C(0x7FFFFFFFFFFFFFFF);

alias Uint64 = ulong;
enum SDL_MAX_UINT64 = SDL_UINT64_C(0xFFFFFFFFFFFFFFFF);
enum SDL_MIN_UINT64 = SDL_UINT64_C(0x0000000000000000);

alias SDL_Time = long;
enum SDL_MAX_TIME = SDL_MAX_SINT64;
enum SDL_MIN_TIME = SDL_MIN_SINT64;

enum SDL_FLT_EPSILON = 1.1920928955078125e-07F;

enum SDL_PRIs64 = "I64d";

enum SDL_PRIu64 = "I64u";

enum SDL_PRIx64 = "I64x";

enum SDL_PRIX64 = "I64X";

enum SDL_PRIs32 = PRId32;

enum SDL_PRIu32 = PRIu32;

enum SDL_PRIx32 = PRIx32;

enum SDL_PRIX32 = PRIX32;

enum SDL_PRILL_PREFIX = "I64";

enum SDL_PRISZ_PREFIX = "I64";

struct SDL_alignment_test {
    Uint8 a;
    void* b;
}

enum SDL_DUMMY_ENUM {
    DUMMY_ENUM_VALUE = 0
}

alias DUMMY_ENUM_VALUE = SDL_DUMMY_ENUM.DUMMY_ENUM_VALUE;

extern (D) auto sdlStackFree(T)(auto ref T data) {
    return cast(void) data;
}

pragma(mangle, "SDL_malloc")
void* sdlMalloc(size_t size);

alias SDL_malloc = sdlMalloc;

pragma(mangle, "SDL_calloc")
void* sdlCalloc(size_t nmemb, size_t size);

alias SDL_calloc = sdlCalloc;

pragma(mangle, "SDL_realloc")
void* sdlRealloc(void* mem, size_t size);

alias SDL_realloc = sdlRealloc;

pragma(mangle, "SDL_free")
void sdlFree(void* mem);

alias SDL_free = sdlFree;

alias SDL_malloc_func = void* function(size_t size);

alias SDL_calloc_func = void* function(size_t nmemb, size_t size);

alias SDL_realloc_func = void* function(void* mem, size_t size);

alias SDL_free_func = void function(void* mem);

pragma(mangle, "SDL_GetOriginalMemoryFunctions")
void sdlGetOriginalMemoryFunctions(
    SDL_malloc_func* malloc_func,
    SDL_calloc_func* calloc_func,
    SDL_realloc_func* realloc_func,
    SDL_free_func* free_func);

alias SDL_GetOriginalMemoryFunctions = sdlGetOriginalMemoryFunctions;

pragma(mangle, "SDL_GetMemoryFunctions")
void sdlGetMemoryFunctions(
    SDL_malloc_func* malloc_func,
    SDL_calloc_func* calloc_func,
    SDL_realloc_func* realloc_func,
    SDL_free_func* free_func);

alias SDL_GetMemoryFunctions = sdlGetMemoryFunctions;

pragma(mangle, "SDL_SetMemoryFunctions")
bool sdlSetMemoryFunctions(
    SDL_malloc_func malloc_func,
    SDL_calloc_func calloc_func,
    SDL_realloc_func realloc_func,
    SDL_free_func free_func);

alias SDL_SetMemoryFunctions = sdlSetMemoryFunctions;

pragma(mangle, "SDL_aligned_alloc")
void* sdlAlignedAlloc(size_t alignment, size_t size);

alias SDL_aligned_alloc = sdlAlignedAlloc;

pragma(mangle, "SDL_aligned_alloc_zero")
void* sdlAlignedAllocZero(size_t alignment, size_t size);

alias SDL_aligned_alloc_zero = sdlAlignedAllocZero;

pragma(mangle, "SDL_aligned_free")
void sdlAlignedFree(void* mem);

alias SDL_aligned_free = sdlAlignedFree;

pragma(mangle, "SDL_GetNumAllocations")
int sdlGetNumAllocations();

alias SDL_GetNumAllocations = sdlGetNumAllocations;

struct SDL_Environment;

pragma(mangle, "SDL_GetEnvironment")
SDL_Environment* sdlGetEnvironment();

alias SDL_GetEnvironment = sdlGetEnvironment;

pragma(mangle, "SDL_CreateEnvironment")
SDL_Environment* sdlCreateEnvironment(bool populated);

alias SDL_CreateEnvironment = sdlCreateEnvironment;

pragma(mangle, "SDL_GetEnvironmentVariable")
const(char)* sdlGetEnvironmentVariable(SDL_Environment* env, const(char)* name);

alias SDL_GetEnvironmentVariable = sdlGetEnvironmentVariable;

pragma(mangle, "SDL_GetEnvironmentVariables")
char** sdlGetEnvironmentVariables(SDL_Environment* env);

alias SDL_GetEnvironmentVariables = sdlGetEnvironmentVariables;

pragma(mangle, "SDL_SetEnvironmentVariable")
bool sdlSetEnvironmentVariable(SDL_Environment* env, const(char)* name, const(char)* value, bool overwrite);

alias SDL_SetEnvironmentVariable = sdlSetEnvironmentVariable;

pragma(mangle, "SDL_UnsetEnvironmentVariable")
bool sdlUnsetEnvironmentVariable(SDL_Environment* env, const(char)* name);

alias SDL_UnsetEnvironmentVariable = sdlUnsetEnvironmentVariable;

pragma(mangle, "SDL_DestroyEnvironment")
void sdlDestroyEnvironment(SDL_Environment* env);

alias SDL_DestroyEnvironment = sdlDestroyEnvironment;

pragma(mangle, "SDL_getenv")
const(char)* sdlGetenv(const(char)* name);

alias SDL_getenv = sdlGetenv;

pragma(mangle, "SDL_getenv_unsafe")
const(char)* sdlGetenvUnsafe(const(char)* name);

alias SDL_getenv_unsafe = sdlGetenvUnsafe;

pragma(mangle, "SDL_setenv_unsafe")
int sdlSetenvUnsafe(const(char)* name, const(char)* value, int overwrite);

alias SDL_setenv_unsafe = sdlSetenvUnsafe;

pragma(mangle, "SDL_unsetenv_unsafe")
int sdlUnsetenvUnsafe(const(char)* name);

alias SDL_unsetenv_unsafe = sdlUnsetenvUnsafe;

alias SDL_CompareCallback = int function(const(void)* a, const(void)* b);

pragma(mangle, "SDL_qsort")
void sdlQsort(void* base, size_t nmemb, size_t size, SDL_CompareCallback compare);

alias SDL_qsort = sdlQsort;

pragma(mangle, "SDL_bsearch")
void* sdlBsearch(const(void)* key, const(void)* base, size_t nmemb, size_t size, SDL_CompareCallback compare);

alias SDL_bsearch = sdlBsearch;

alias SDL_CompareCallback_r = int function(void* userdata, const(void)* a, const(void)* b);

pragma(mangle, "SDL_qsort_r")
void sdlQsortR(void* base, size_t nmemb, size_t size, SDL_CompareCallback_r compare, void* userdata);

alias SDL_qsort_r = sdlQsortR;

pragma(mangle, "SDL_bsearch_r")
void* sdlBsearchR(const(void)* key, const(void)* base, size_t nmemb, size_t size, SDL_CompareCallback_r compare, void* userdata);

alias SDL_bsearch_r = sdlBsearchR;

pragma(mangle, "SDL_abs")
int sdlAbs(int x);

alias SDL_abs = sdlAbs;

extern (D) auto sdlMin(T0, T1)(auto ref T0 x, auto ref T1 y) {
    return (x < y) ? x : y;
}

extern (D) auto sdlMax(T0, T1)(auto ref T0 x, auto ref T1 y) {
    return (x > y) ? x : y;
}

extern (D) auto sdlClamp(T0, T1, T2)(auto ref T0 x, auto ref T1 a, auto ref T2 b) {
    return (x < a) ? a : ((x > b) ? b : x);
}

pragma(mangle, "SDL_isalpha")
int sdlIsalpha(int x);

alias SDL_isalpha = sdlIsalpha;

pragma(mangle, "SDL_isalnum")
int sdlIsalnum(int x);

alias SDL_isalnum = sdlIsalnum;

pragma(mangle, "SDL_isblank")
int sdlIsblank(int x);

alias SDL_isblank = sdlIsblank;

pragma(mangle, "SDL_iscntrl")
int sdlIscntrl(int x);

alias SDL_iscntrl = sdlIscntrl;

pragma(mangle, "SDL_isdigit")
int sdlIsdigit(int x);

alias SDL_isdigit = sdlIsdigit;

pragma(mangle, "SDL_isxdigit")
int sdlIsxdigit(int x);

alias SDL_isxdigit = sdlIsxdigit;

pragma(mangle, "SDL_ispunct")
int sdlIspunct(int x);

alias SDL_ispunct = sdlIspunct;

pragma(mangle, "SDL_isspace")
int sdlIsspace(int x);

alias SDL_isspace = sdlIsspace;

pragma(mangle, "SDL_isupper")
int sdlIsupper(int x);

alias SDL_isupper = sdlIsupper;

pragma(mangle, "SDL_islower")
int sdlIslower(int x);

alias SDL_islower = sdlIslower;

pragma(mangle, "SDL_isprint")
int sdlIsprint(int x);

alias SDL_isprint = sdlIsprint;

pragma(mangle, "SDL_isgraph")
int sdlIsgraph(int x);

alias SDL_isgraph = sdlIsgraph;

pragma(mangle, "SDL_toupper")
int sdlToupper(int x);

alias SDL_toupper = sdlToupper;

pragma(mangle, "SDL_tolower")
int sdlTolower(int x);

alias SDL_tolower = sdlTolower;

pragma(mangle, "SDL_crc16")
Uint16 sdlCrc16(Uint16 crc, const(void)* data, size_t len);

alias SDL_crc16 = sdlCrc16;

pragma(mangle, "SDL_crc32")
Uint32 sdlCrc32(Uint32 crc, const(void)* data, size_t len);

alias SDL_crc32 = sdlCrc32;

pragma(mangle, "SDL_murmur3_32")
Uint32 sdlMurmur332(const(void)* data, size_t len, Uint32 seed);

alias SDL_murmur3_32 = sdlMurmur332;

pragma(mangle, "SDL_memcpy")
void* sdlMemcpy(void* dst, const(void)* src, size_t len);

alias SDL_memcpy = sdlMemcpy;

pragma(mangle, "SDL_memmove")
void* sdlMemmove(void* dst, const(void)* src, size_t len);

alias SDL_memmove = sdlMemmove;

pragma(mangle, "SDL_memset")
void* sdlMemset(void* dst, int c, size_t len);

alias SDL_memset = sdlMemset;

pragma(mangle, "SDL_memset4")
void* sdlMemset4(void* dst, Uint32 val, size_t dwords);

alias SDL_memset4 = sdlMemset4;

void sdlZero(T)(ref T x) {
    import core.stdc.string : memset;

    memset(&x, 0, T.sizeof);
}

void sdlZerop(T)(T* x) {
    import core.stdc.string : memset;

    memset(x, 0, T.sizeof);
}

void sdlZeroa(T)(T[] x) {
    import core.stdc.string : memset;

    memset(x.ptr, 0, x.length * T.sizeof);
}

pragma(mangle, "SDL_memcmp")
int sdlMemcmp(const(void)* s1, const(void)* s2, size_t len);

alias SDL_memcmp = sdlMemcmp;

pragma(mangle, "SDL_wcslen")
size_t sdlWcslen(const(wchar_t)* wstr);

alias SDL_wcslen = sdlWcslen;

pragma(mangle, "SDL_wcsnlen")
size_t sdlWcsnlen(const(wchar_t)* wstr, size_t maxlen);

alias SDL_wcsnlen = sdlWcsnlen;

pragma(mangle, "SDL_wcslcpy")
size_t sdlWcslcpy(wchar_t* dst, const(wchar_t)* src, size_t maxlen);

alias SDL_wcslcpy = sdlWcslcpy;

pragma(mangle, "SDL_wcslcat")
size_t sdlWcslcat(wchar_t* dst, const(wchar_t)* src, size_t maxlen);

alias SDL_wcslcat = sdlWcslcat;

pragma(mangle, "SDL_wcsdup")
wchar_t* sdlWcsdup(const(wchar_t)* wstr);

alias SDL_wcsdup = sdlWcsdup;

pragma(mangle, "SDL_wcsstr")
wchar_t* sdlWcsstr(const(wchar_t)* haystack, const(wchar_t)* needle);

alias SDL_wcsstr = sdlWcsstr;

pragma(mangle, "SDL_wcsnstr")
wchar_t* sdlWcsnstr(const(wchar_t)* haystack, const(wchar_t)* needle, size_t maxlen);

alias SDL_wcsnstr = sdlWcsnstr;

pragma(mangle, "SDL_wcscmp")
int sdlWcscmp(const(wchar_t)* str1, const(wchar_t)* str2);

alias SDL_wcscmp = sdlWcscmp;

pragma(mangle, "SDL_wcsncmp")
int sdlWcsncmp(const(wchar_t)* str1, const(wchar_t)* str2, size_t maxlen);

alias SDL_wcsncmp = sdlWcsncmp;

pragma(mangle, "SDL_wcscasecmp")
int sdlWcscasecmp(const(wchar_t)* str1, const(wchar_t)* str2);

alias SDL_wcscasecmp = sdlWcscasecmp;

pragma(mangle, "SDL_wcsncasecmp")
int sdlWcsncasecmp(const(wchar_t)* str1, const(wchar_t)* str2, size_t maxlen);

alias SDL_wcsncasecmp = sdlWcsncasecmp;

pragma(mangle, "SDL_wcstol")
c_long sdlWcstol(const(wchar_t)* str, wchar_t** endp, int base);

alias SDL_wcstol = sdlWcstol;

pragma(mangle, "SDL_wcstoul")
c_ulong sdlWcstoul(const(wchar_t)* str, wchar_t** endp, int base);

alias SDL_wcstoul = sdlWcstoul;

pragma(mangle, "SDL_wcstoll")
long sdlWcstoll(const(wchar_t)* str, wchar_t** endp, int base);

alias SDL_wcstoll = sdlWcstoll;

pragma(mangle, "SDL_wcstoull")
ulong sdlWcstoull(const(wchar_t)* str, wchar_t** endp, int base);

alias SDL_wcstoull = sdlWcstoull;

pragma(mangle, "SDL_strlen")
size_t sdlStrlen(const(char)* str);

alias SDL_strlen = sdlStrlen;

pragma(mangle, "SDL_strnlen")
size_t sdlStrnlen(const(char)* str, size_t maxlen);

alias SDL_strnlen = sdlStrnlen;

pragma(mangle, "SDL_strlcpy")
size_t sdlStrlcpy(char* dst, const(char)* src, size_t maxlen);

alias SDL_strlcpy = sdlStrlcpy;

pragma(mangle, "SDL_utf8strlcpy")
size_t sdlUtf8strlcpy(char* dst, const(char)* src, size_t dst_bytes);

alias SDL_utf8strlcpy = sdlUtf8strlcpy;

pragma(mangle, "SDL_strlcat")
size_t sdlStrlcat(char* dst, const(char)* src, size_t maxlen);

alias SDL_strlcat = sdlStrlcat;

pragma(mangle, "SDL_strdup")
char* sdlStrdup(const(char)* str);

alias SDL_strdup = sdlStrdup;

pragma(mangle, "SDL_strndup")
char* sdlStrndup(const(char)* str, size_t maxlen);

alias SDL_strndup = sdlStrndup;

pragma(mangle, "SDL_strrev")
char* sdlStrrev(char* str);

alias SDL_strrev = sdlStrrev;

pragma(mangle, "SDL_strupr")
char* sdlStrupr(char* str);

alias SDL_strupr = sdlStrupr;

pragma(mangle, "SDL_strlwr")
char* sdlStrlwr(char* str);

alias SDL_strlwr = sdlStrlwr;

pragma(mangle, "SDL_strchr")
char* sdlStrchr(const(char)* str, int c);

alias SDL_strchr = sdlStrchr;

pragma(mangle, "SDL_strrchr")
char* sdlStrrchr(const(char)* str, int c);

alias SDL_strrchr = sdlStrrchr;

pragma(mangle, "SDL_strstr")
char* sdlStrstr(const(char)* haystack, const(char)* needle);

alias SDL_strstr = sdlStrstr;

pragma(mangle, "SDL_strnstr")
char* sdlStrnstr(const(char)* haystack, const(char)* needle, size_t maxlen);

alias SDL_strnstr = sdlStrnstr;

pragma(mangle, "SDL_strcasestr")
char* sdlStrcasestr(const(char)* haystack, const(char)* needle);

alias SDL_strcasestr = sdlStrcasestr;

pragma(mangle, "SDL_strtok_r")
char* sdlStrtokR(char* str, const(char)* delim, char** saveptr);

alias SDL_strtok_r = sdlStrtokR;

pragma(mangle, "SDL_utf8strlen")
size_t sdlUtf8strlen(const(char)* str);

alias SDL_utf8strlen = sdlUtf8strlen;

pragma(mangle, "SDL_utf8strnlen")
size_t sdlUtf8strnlen(const(char)* str, size_t bytes);

alias SDL_utf8strnlen = sdlUtf8strnlen;

pragma(mangle, "SDL_itoa")
char* sdlItoa(int value, char* str, int radix);

alias SDL_itoa = sdlItoa;

pragma(mangle, "SDL_uitoa")
char* sdlUitoa(uint value, char* str, int radix);

alias SDL_uitoa = sdlUitoa;

pragma(mangle, "SDL_ltoa")
char* sdlLtoa(c_long value, char* str, int radix);

alias SDL_ltoa = sdlLtoa;

pragma(mangle, "SDL_ultoa")
char* sdlUltoa(c_ulong value, char* str, int radix);

alias SDL_ultoa = sdlUltoa;

pragma(mangle, "SDL_lltoa")
char* sdlLltoa(long value, char* str, int radix);

alias SDL_lltoa = sdlLltoa;

pragma(mangle, "SDL_ulltoa")
char* sdlUlltoa(ulong value, char* str, int radix);

alias SDL_ulltoa = sdlUlltoa;

pragma(mangle, "SDL_atoi")
int sdlAtoi(const(char)* str);

alias SDL_atoi = sdlAtoi;

pragma(mangle, "SDL_atof")
double sdlAtof(const(char)* str);

alias SDL_atof = sdlAtof;

pragma(mangle, "SDL_strtol")
c_long sdlStrtol(const(char)* str, char** endp, int base);

alias SDL_strtol = sdlStrtol;

pragma(mangle, "SDL_strtoul")
c_ulong sdlStrtoul(const(char)* str, char** endp, int base);

alias SDL_strtoul = sdlStrtoul;

pragma(mangle, "SDL_strtoll")
long sdlStrtoll(const(char)* str, char** endp, int base);

alias SDL_strtoll = sdlStrtoll;

pragma(mangle, "SDL_strtoull")
ulong sdlStrtoull(const(char)* str, char** endp, int base);

alias SDL_strtoull = sdlStrtoull;

pragma(mangle, "SDL_strtod")
double sdlStrtod(const(char)* str, char** endp);

alias SDL_strtod = sdlStrtod;

pragma(mangle, "SDL_strcmp")
int sdlStrcmp(const(char)* str1, const(char)* str2);

alias SDL_strcmp = sdlStrcmp;

pragma(mangle, "SDL_strncmp")
int sdlStrncmp(const(char)* str1, const(char)* str2, size_t maxlen);

alias SDL_strncmp = sdlStrncmp;

pragma(mangle, "SDL_strcasecmp")
int sdlStrcasecmp(const(char)* str1, const(char)* str2);

alias SDL_strcasecmp = sdlStrcasecmp;

pragma(mangle, "SDL_strncasecmp")
int sdlStrncasecmp(const(char)* str1, const(char)* str2, size_t maxlen);

alias SDL_strncasecmp = sdlStrncasecmp;

pragma(mangle, "SDL_strpbrk")
char* sdlStrpbrk(const(char)* str, const(char)* breakset);

alias SDL_strpbrk = sdlStrpbrk;

enum SDL_INVALID_UNICODE_CODEPOINT = 0xFFFD;

pragma(mangle, "SDL_StepUTF8")
Uint32 sdlStepUTF8(const(char*)* pstr, size_t* pslen);

alias SDL_StepUTF8 = sdlStepUTF8;

pragma(mangle, "SDL_StepBackUTF8")
Uint32 sdlStepBackUTF8(const(char)* start, const(char*)* pstr);

alias SDL_StepBackUTF8 = sdlStepBackUTF8;

pragma(mangle, "SDL_UCS4ToUTF8")
char* sdlUCS4ToUTF8(Uint32 codepoint, char* dst);

alias SDL_UCS4ToUTF8 = sdlUCS4ToUTF8;

pragma(mangle, "SDL_sscanf")
int sdlSscanf(const(char)* text, const(char)* fmt, ...);

alias SDL_sscanf = sdlSscanf;

pragma(mangle, "SDL_vsscanf")
int sdlVsscanf(const(char)* text, const(char)* fmt, va_list ap);

alias SDL_vsscanf = sdlVsscanf;

pragma(mangle, "SDL_snprintf")
int sdlSnprintf(char* text, size_t maxlen, const(char)* fmt, ...);

alias SDL_snprintf = sdlSnprintf;

pragma(mangle, "SDL_swprintf")
int sdlSwprintf(wchar_t* text, size_t maxlen, const(wchar_t)* fmt, ...);

alias SDL_swprintf = sdlSwprintf;

pragma(mangle, "SDL_vsnprintf")
int sdlVsnprintf(char* text, size_t maxlen, const(char)* fmt, va_list ap);

alias SDL_vsnprintf = sdlVsnprintf;

pragma(mangle, "SDL_vswprintf")
int sdlVswprintf(wchar_t* text, size_t maxlen, const(wchar_t)* fmt, va_list ap);

alias SDL_vswprintf = sdlVswprintf;

pragma(mangle, "SDL_asprintf")
int sdlAsprintf(char** strp, const(char)* fmt, ...);

alias SDL_asprintf = sdlAsprintf;

pragma(mangle, "SDL_vasprintf")
int sdlVasprintf(char** strp, const(char)* fmt, va_list ap);

alias SDL_vasprintf = sdlVasprintf;

pragma(mangle, "SDL_srand")
void sdlSrand(Uint64 seed);

alias SDL_srand = sdlSrand;

pragma(mangle, "SDL_rand")
Sint32 sdlRand(Sint32 n);

alias SDL_rand = sdlRand;

pragma(mangle, "SDL_randf")
float sdlRandf();

alias SDL_randf = sdlRandf;

pragma(mangle, "SDL_rand_bits")
Uint32 sdlRandBits();

alias SDL_rand_bits = sdlRandBits;

pragma(mangle, "SDL_rand_r")
Sint32 sdlRandR(Uint64* state, Sint32 n);

alias SDL_rand_r = sdlRandR;

pragma(mangle, "SDL_randf_r")
float sdlRandfR(Uint64* state);

alias SDL_randf_r = sdlRandfR;

pragma(mangle, "SDL_rand_bits_r")
Uint32 sdlRandBitsR(Uint64* state);

alias SDL_rand_bits_r = sdlRandBitsR;

enum SDL_PI_D = 3.141592653589793238462643383279502884;

enum SDL_PI_F = 3.141592653589793238462643383279502884F;

pragma(mangle, "SDL_acos")
double sdlAcos(double x);

alias SDL_acos = sdlAcos;

pragma(mangle, "SDL_acosf")
float sdlAcosf(float x);

alias SDL_acosf = sdlAcosf;

pragma(mangle, "SDL_asin")
double sdlAsin(double x);

alias SDL_asin = sdlAsin;

pragma(mangle, "SDL_asinf")
float sdlAsinf(float x);

alias SDL_asinf = sdlAsinf;

pragma(mangle, "SDL_atan")
double sdlAtan(double x);

alias SDL_atan = sdlAtan;

pragma(mangle, "SDL_atanf")
float sdlAtanf(float x);

alias SDL_atanf = sdlAtanf;

pragma(mangle, "SDL_atan2")
double sdlAtan2(double y, double x);

alias SDL_atan2 = sdlAtan2;

pragma(mangle, "SDL_atan2f")
float sdlAtan2f(float y, float x);

alias SDL_atan2f = sdlAtan2f;

pragma(mangle, "SDL_ceil")
double sdlCeil(double x);

alias SDL_ceil = sdlCeil;

pragma(mangle, "SDL_ceilf")
float sdlCeilf(float x);

alias SDL_ceilf = sdlCeilf;

pragma(mangle, "SDL_copysign")
double sdlCopysign(double x, double y);

alias SDL_copysign = sdlCopysign;

pragma(mangle, "SDL_copysignf")
float sdlCopysignf(float x, float y);

alias SDL_copysignf = sdlCopysignf;

pragma(mangle, "SDL_cos")
double sdlCos(double x);

alias SDL_cos = sdlCos;

pragma(mangle, "SDL_cosf")
float sdlCosf(float x);

alias SDL_cosf = sdlCosf;

pragma(mangle, "SDL_exp")
double sdlExp(double x);

alias SDL_exp = sdlExp;

pragma(mangle, "SDL_expf")
float sdlExpf(float x);

alias SDL_expf = sdlExpf;

pragma(mangle, "SDL_fabs")
double sdlFabs(double x);

alias SDL_fabs = sdlFabs;

pragma(mangle, "SDL_fabsf")
float sdlFabsf(float x);

alias SDL_fabsf = sdlFabsf;

pragma(mangle, "SDL_floor")
double sdlFloor(double x);

alias SDL_floor = sdlFloor;

pragma(mangle, "SDL_floorf")
float sdlFloorf(float x);

alias SDL_floorf = sdlFloorf;

pragma(mangle, "SDL_trunc")
double sdlTrunc(double x);

alias SDL_trunc = sdlTrunc;

pragma(mangle, "SDL_truncf")
float sdlTruncf(float x);

alias SDL_truncf = sdlTruncf;

pragma(mangle, "SDL_fmod")
double sdlFmod(double x, double y);

alias SDL_fmod = sdlFmod;

pragma(mangle, "SDL_fmodf")
float sdlFmodf(float x, float y);

alias SDL_fmodf = sdlFmodf;

pragma(mangle, "SDL_isinf")
int sdlIsinf(double x);

alias SDL_isinf = sdlIsinf;

pragma(mangle, "SDL_isinff")
int sdlIsinff(float x);

alias SDL_isinff = sdlIsinff;

pragma(mangle, "SDL_isnan")
int sdlIsnan(double x);

alias SDL_isnan = sdlIsnan;

pragma(mangle, "SDL_isnanf")
int sdlIsnanf(float x);

alias SDL_isnanf = sdlIsnanf;

pragma(mangle, "SDL_log")
double sdlMathLog(double x);

alias SDL_log = sdlMathLog;

pragma(mangle, "SDL_logf")
float sdlLogf(float x);

alias SDL_logf = sdlLogf;

pragma(mangle, "SDL_log10")
double sdlLog10(double x);

alias SDL_log10 = sdlLog10;

pragma(mangle, "SDL_log10f")
float sdlLog10f(float x);

alias SDL_log10f = sdlLog10f;

pragma(mangle, "SDL_modf")
double sdlModf(double x, double* y);

alias SDL_modf = sdlModf;

pragma(mangle, "SDL_modff")
float sdlModff(float x, float* y);

alias SDL_modff = sdlModff;

pragma(mangle, "SDL_pow")
double sdlPow(double x, double y);

alias SDL_pow = sdlPow;

pragma(mangle, "SDL_powf")
float sdlPowf(float x, float y);

alias SDL_powf = sdlPowf;

pragma(mangle, "SDL_round")
double sdlRound(double x);

alias SDL_round = sdlRound;

pragma(mangle, "SDL_roundf")
float sdlRoundf(float x);

alias SDL_roundf = sdlRoundf;

pragma(mangle, "SDL_lround")
c_long sdlLround(double x);

alias SDL_lround = sdlLround;

pragma(mangle, "SDL_lroundf")
c_long sdlLroundf(float x);

alias SDL_lroundf = sdlLroundf;

pragma(mangle, "SDL_scalbn")
double sdlScalbn(double x, int n);

alias SDL_scalbn = sdlScalbn;

pragma(mangle, "SDL_scalbnf")
float sdlScalbnf(float x, int n);

alias SDL_scalbnf = sdlScalbnf;

pragma(mangle, "SDL_sin")
double sdlSin(double x);

alias SDL_sin = sdlSin;

pragma(mangle, "SDL_sinf")
float sdlSinf(float x);

alias SDL_sinf = sdlSinf;

pragma(mangle, "SDL_sqrt")
double sdlSqrt(double x);

alias SDL_sqrt = sdlSqrt;

pragma(mangle, "SDL_sqrtf")
float sdlSqrtf(float x);

alias SDL_sqrtf = sdlSqrtf;

pragma(mangle, "SDL_tan")
double sdlTan(double x);

alias SDL_tan = sdlTan;

pragma(mangle, "SDL_tanf")
float sdlTanf(float x);

alias SDL_tanf = sdlTanf;

struct SDL_iconv_data_t;
alias SDL_iconv_t = SDL_iconv_data_t*;

pragma(mangle, "SDL_iconv_open")
SDL_iconv_t sdlIconvOpen(const(char)* tocode, const(char)* fromcode);

alias SDL_iconv_open = sdlIconvOpen;

pragma(mangle, "SDL_iconv_close")
int sdlIconvClose(SDL_iconv_t cd);

alias SDL_iconv_close = sdlIconvClose;

pragma(mangle, "SDL_iconv")
size_t sdlIconv(
    SDL_iconv_t cd,
    const(char*)* inbuf,
    size_t* inbytesleft,
    char** outbuf,
    size_t* outbytesleft);

alias SDL_iconv = sdlIconv;

enum SDL_ICONV_ERROR = cast(size_t)-1;
enum SDL_ICONV_E2BIG = cast(size_t)-2;
enum SDL_ICONV_EILSEQ = cast(size_t)-3;
enum SDL_ICONV_EINVAL = cast(size_t)-4;

pragma(mangle, "SDL_iconv_string")
char* sdlIconvString(
    const(char)* tocode,
    const(char)* fromcode,
    const(char)* inbuf,
    size_t inbytesleft);

alias SDL_iconv_string = sdlIconvString;

extern (D) auto sdlIconvUtf8Locale(T)(auto ref T S) {
    return SDL_iconv_string("", "UTF-8", S, SDL_strlen(S) + 1);
}

extern (D) auto sdlIconvUtf8Ucs2(T)(auto ref T S) {
    return cast(Uint16*) SDL_iconv_string("UCS-2", "UTF-8", S, SDL_strlen(S) + 1);
}

extern (D) auto sdlIconvUtf8Ucs4(T)(auto ref T S) {
    return cast(Uint32*) SDL_iconv_string("UCS-4", "UTF-8", S, SDL_strlen(S) + 1);
}

extern (D) auto sdlIconvWcharUtf8(T)(auto ref T S) {
    return SDL_iconv_string("UTF-8", "WCHAR_T", cast(const(char)*) S, (SDL_wcslen(S) + 1) * wchar_t
            .sizeof);
}

bool sdlSizeMulCheckOverflow(size_t a, size_t b, size_t* ret) {
    if (a != 0 && b > SDL_SIZE_MAX / a)
        return false;
    *ret = a * b;
    return true;
}

alias SDL_size_mul_check_overflow = sdlSizeMulCheckOverflow;

bool sdlSizeMulCheckOverflowBuiltin(size_t a, size_t b, size_t* ret) {
    return sdlSizeMulCheckOverflow(a, b, ret);
}

alias SDL_size_mul_check_overflow_builtin = sdlSizeMulCheckOverflowBuiltin;

bool sdlSizeAddCheckOverflow(size_t a, size_t b, size_t* ret) {
    if (b > SDL_SIZE_MAX - a)
        return false;
    *ret = a + b;
    return true;
}

alias SDL_size_add_check_overflow = sdlSizeAddCheckOverflow;

bool sdlSizeAddCheckOverflowBuiltin(size_t a, size_t b, size_t* ret) {
    return sdlSizeAddCheckOverflow(a, b, ret);
}

alias SDL_size_add_check_overflow_builtin = sdlSizeAddCheckOverflowBuiltin;

alias SDL_FunctionPointer = void function();
