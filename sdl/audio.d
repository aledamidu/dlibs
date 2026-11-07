module libs.sdl.audio;

import libs.sdl.iostream;
import libs.sdl.properties;
import libs.sdl.stdinc;

extern (C):
@nogc nothrow:

enum SDL_AUDIO_MASK_BITSIZE = 0xFFu;

enum SDL_AUDIO_MASK_FLOAT = 1u << 8;

enum SDL_AUDIO_MASK_BIG_ENDIAN = 1u << 12;

enum SDL_AUDIO_MASK_SIGNED = 1u << 15;

enum SDL_AudioFormat
{
    SDL_AUDIO_UNKNOWN = 0x0000u,
    SDL_AUDIO_U8 = 0x0008u,

    SDL_AUDIO_S8 = 0x8008u,

    SDL_AUDIO_S16LE = 0x8010u,

    SDL_AUDIO_S16BE = 0x9010u,

    SDL_AUDIO_S32LE = 0x8020u,

    SDL_AUDIO_S32BE = 0x9020u,

    SDL_AUDIO_F32LE = 0x8120u,

    SDL_AUDIO_F32BE = 0x9120u,

    SDL_AUDIO_S16 = SDL_AUDIO_S16LE,
    SDL_AUDIO_S32 = SDL_AUDIO_S32LE,
    SDL_AUDIO_F32 = SDL_AUDIO_F32LE
}

alias SDL_AUDIO_UNKNOWN = SDL_AudioFormat.SDL_AUDIO_UNKNOWN;
alias SDL_AUDIO_U8 = SDL_AudioFormat.SDL_AUDIO_U8;
alias SDL_AUDIO_S8 = SDL_AudioFormat.SDL_AUDIO_S8;
alias SDL_AUDIO_S16LE = SDL_AudioFormat.SDL_AUDIO_S16LE;
alias SDL_AUDIO_S16BE = SDL_AudioFormat.SDL_AUDIO_S16BE;
alias SDL_AUDIO_S32LE = SDL_AudioFormat.SDL_AUDIO_S32LE;
alias SDL_AUDIO_S32BE = SDL_AudioFormat.SDL_AUDIO_S32BE;
alias SDL_AUDIO_F32LE = SDL_AudioFormat.SDL_AUDIO_F32LE;
alias SDL_AUDIO_F32BE = SDL_AudioFormat.SDL_AUDIO_F32BE;
alias SDL_AUDIO_S16 = SDL_AudioFormat.SDL_AUDIO_S16;
alias SDL_AUDIO_S32 = SDL_AudioFormat.SDL_AUDIO_S32;
alias SDL_AUDIO_F32 = SDL_AudioFormat.SDL_AUDIO_F32;

extern (D) auto SDL_AUDIO_BITSIZE(T)(auto ref T x)
{
    return x & SDL_AUDIO_MASK_BITSIZE;
}

extern (D) auto SDL_AUDIO_BYTESIZE(T)(auto ref T x)
{
    return SDL_AUDIO_BITSIZE(x) / 8;
}

extern (D) auto SDL_AUDIO_ISFLOAT(T)(auto ref T x)
{
    return x & SDL_AUDIO_MASK_FLOAT;
}

extern (D) auto SDL_AUDIO_ISBIGENDIAN(T)(auto ref T x)
{
    return x & SDL_AUDIO_MASK_BIG_ENDIAN;
}

extern (D) auto SDL_AUDIO_ISLITTLEENDIAN(T)(auto ref T x)
{
    return !SDL_AUDIO_ISBIGENDIAN(x);
}

extern (D) auto SDL_AUDIO_ISSIGNED(T)(auto ref T x)
{
    return x & SDL_AUDIO_MASK_SIGNED;
}

extern (D) auto SDL_AUDIO_ISINT(T)(auto ref T x)
{
    return !SDL_AUDIO_ISFLOAT(x);
}

extern (D) auto SDL_AUDIO_ISUNSIGNED(T)(auto ref T x)
{
    return !SDL_AUDIO_ISSIGNED(x);
}

alias SDL_AudioDeviceID = uint;

enum SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK = cast(SDL_AudioDeviceID) 0xFFFFFFFFu;

enum SDL_AUDIO_DEVICE_DEFAULT_RECORDING = cast(SDL_AudioDeviceID) 0xFFFFFFFEu;

struct SDL_AudioSpec
{
    SDL_AudioFormat format;
    int channels;
    int freq;
}

extern (D) auto SDL_AUDIO_FRAMESIZE(T)(auto ref T x)
{
    return (cast(uint) SDL_AUDIO_BYTESIZE(x.format)) * (cast(uint) x.channels);
}

struct SDL_AudioStream;

pragma(mangle, "SDL_GetNumAudioDrivers")
int sdlGetNumAudioDrivers();

alias SDL_GetNumAudioDrivers = sdlGetNumAudioDrivers;

pragma(mangle, "SDL_GetAudioDriver")
const(char)* sdlGetAudioDriver(int index);

alias SDL_GetAudioDriver = sdlGetAudioDriver;

pragma(mangle, "SDL_GetCurrentAudioDriver")
const(char)* sdlGetCurrentAudioDriver();

alias SDL_GetCurrentAudioDriver = sdlGetCurrentAudioDriver;

pragma(mangle, "SDL_GetAudioPlaybackDevices")
SDL_AudioDeviceID* sdlGetAudioPlaybackDevices(int* count);

alias SDL_GetAudioPlaybackDevices = sdlGetAudioPlaybackDevices;

pragma(mangle, "SDL_GetAudioRecordingDevices")
SDL_AudioDeviceID* sdlGetAudioRecordingDevices(int* count);

alias SDL_GetAudioRecordingDevices = sdlGetAudioRecordingDevices;

pragma(mangle, "SDL_GetAudioDeviceName")
const(char)* sdlGetAudioDeviceName(SDL_AudioDeviceID devid);

alias SDL_GetAudioDeviceName = sdlGetAudioDeviceName;

pragma(mangle, "SDL_GetAudioDeviceFormat")
bool sdlGetAudioDeviceFormat(SDL_AudioDeviceID devid, SDL_AudioSpec* spec, int* sample_frames);

alias SDL_GetAudioDeviceFormat = sdlGetAudioDeviceFormat;

pragma(mangle, "SDL_GetAudioDeviceChannelMap")
int* sdlGetAudioDeviceChannelMap(SDL_AudioDeviceID devid, int* count);

alias SDL_GetAudioDeviceChannelMap = sdlGetAudioDeviceChannelMap;

pragma(mangle, "SDL_GetAudioDeviceProperties")
SDL_PropertiesID sdlGetAudioDeviceProperties(SDL_AudioDeviceID devid);

alias SDL_GetAudioDeviceProperties = sdlGetAudioDeviceProperties;

enum SDL_PROP_AUDIO_DEVICE_UNIQUE_ID_STRING = "SDL.audio.device.unique_id";

pragma(mangle, "SDL_OpenAudioDevice")
SDL_AudioDeviceID sdlOpenAudioDevice(SDL_AudioDeviceID devid, const(SDL_AudioSpec)* spec);

alias SDL_OpenAudioDevice = sdlOpenAudioDevice;

pragma(mangle, "SDL_IsAudioDevicePhysical")
bool sdlIsAudioDevicePhysical(SDL_AudioDeviceID devid);

alias SDL_IsAudioDevicePhysical = sdlIsAudioDevicePhysical;

pragma(mangle, "SDL_IsAudioDevicePlayback")
bool sdlIsAudioDevicePlayback(SDL_AudioDeviceID devid);

alias SDL_IsAudioDevicePlayback = sdlIsAudioDevicePlayback;

pragma(mangle, "SDL_PauseAudioDevice")
bool sdlPauseAudioDevice(SDL_AudioDeviceID devid);

alias SDL_PauseAudioDevice = sdlPauseAudioDevice;

pragma(mangle, "SDL_ResumeAudioDevice")
bool sdlResumeAudioDevice(SDL_AudioDeviceID devid);

alias SDL_ResumeAudioDevice = sdlResumeAudioDevice;

pragma(mangle, "SDL_AudioDevicePaused")
bool sdlAudioDevicePaused(SDL_AudioDeviceID devid);

alias SDL_AudioDevicePaused = sdlAudioDevicePaused;

pragma(mangle, "SDL_GetAudioDeviceGain")
float sdlGetAudioDeviceGain(SDL_AudioDeviceID devid);

alias SDL_GetAudioDeviceGain = sdlGetAudioDeviceGain;

pragma(mangle, "SDL_SetAudioDeviceGain")
bool sdlSetAudioDeviceGain(SDL_AudioDeviceID devid, float gain);

alias SDL_SetAudioDeviceGain = sdlSetAudioDeviceGain;

pragma(mangle, "SDL_CloseAudioDevice")
void sdlCloseAudioDevice(SDL_AudioDeviceID devid);

alias SDL_CloseAudioDevice = sdlCloseAudioDevice;

pragma(mangle, "SDL_BindAudioStreams")
bool sdlBindAudioStreams(SDL_AudioDeviceID devid, SDL_AudioStream** streams, int num_streams);

alias SDL_BindAudioStreams = sdlBindAudioStreams;

pragma(mangle, "SDL_BindAudioStream")
bool sdlBindAudioStream(SDL_AudioDeviceID devid, SDL_AudioStream* stream);

alias SDL_BindAudioStream = sdlBindAudioStream;

pragma(mangle, "SDL_UnbindAudioStreams")
void sdlUnbindAudioStreams(SDL_AudioStream** streams, int num_streams);

alias SDL_UnbindAudioStreams = sdlUnbindAudioStreams;

pragma(mangle, "SDL_UnbindAudioStream")
void sdlUnbindAudioStream(SDL_AudioStream* stream);

alias SDL_UnbindAudioStream = sdlUnbindAudioStream;

pragma(mangle, "SDL_GetAudioStreamDevice")
SDL_AudioDeviceID sdlGetAudioStreamDevice(SDL_AudioStream* stream);

alias SDL_GetAudioStreamDevice = sdlGetAudioStreamDevice;

pragma(mangle, "SDL_CreateAudioStream")
SDL_AudioStream* sdlCreateAudioStream(const(SDL_AudioSpec)* src_spec, const(SDL_AudioSpec)* dst_spec);

alias SDL_CreateAudioStream = sdlCreateAudioStream;

pragma(mangle, "SDL_GetAudioStreamProperties")
SDL_PropertiesID sdlGetAudioStreamProperties(SDL_AudioStream* stream);

alias SDL_GetAudioStreamProperties = sdlGetAudioStreamProperties;

enum SDL_PROP_AUDIOSTREAM_AUTO_CLEANUP_BOOLEAN = "SDL.audiostream.auto_cleanup";

pragma(mangle, "SDL_GetAudioStreamFormat")
bool sdlGetAudioStreamFormat(SDL_AudioStream* stream, SDL_AudioSpec* src_spec, SDL_AudioSpec* dst_spec);

alias SDL_GetAudioStreamFormat = sdlGetAudioStreamFormat;

pragma(mangle, "SDL_SetAudioStreamFormat")
bool sdlSetAudioStreamFormat(SDL_AudioStream* stream, const(SDL_AudioSpec)* src_spec, const(
        SDL_AudioSpec)* dst_spec);

alias SDL_SetAudioStreamFormat = sdlSetAudioStreamFormat;

pragma(mangle, "SDL_GetAudioStreamFrequencyRatio")
float sdlGetAudioStreamFrequencyRatio(SDL_AudioStream* stream);

alias SDL_GetAudioStreamFrequencyRatio = sdlGetAudioStreamFrequencyRatio;

pragma(mangle, "SDL_SetAudioStreamFrequencyRatio")
bool sdlSetAudioStreamFrequencyRatio(SDL_AudioStream* stream, float ratio);

alias SDL_SetAudioStreamFrequencyRatio = sdlSetAudioStreamFrequencyRatio;

pragma(mangle, "SDL_GetAudioStreamGain")
float sdlGetAudioStreamGain(SDL_AudioStream* stream);

alias SDL_GetAudioStreamGain = sdlGetAudioStreamGain;

pragma(mangle, "SDL_SetAudioStreamGain")
bool sdlSetAudioStreamGain(SDL_AudioStream* stream, float gain);

alias SDL_SetAudioStreamGain = sdlSetAudioStreamGain;

pragma(mangle, "SDL_GetAudioStreamInputChannelMap")
int* sdlGetAudioStreamInputChannelMap(SDL_AudioStream* stream, int* count);

alias SDL_GetAudioStreamInputChannelMap = sdlGetAudioStreamInputChannelMap;

pragma(mangle, "SDL_GetAudioStreamOutputChannelMap")
int* sdlGetAudioStreamOutputChannelMap(SDL_AudioStream* stream, int* count);

alias SDL_GetAudioStreamOutputChannelMap = sdlGetAudioStreamOutputChannelMap;

pragma(mangle, "SDL_SetAudioStreamInputChannelMap")
bool sdlSetAudioStreamInputChannelMap(SDL_AudioStream* stream, const(int)* chmap, int count);

alias SDL_SetAudioStreamInputChannelMap = sdlSetAudioStreamInputChannelMap;

pragma(mangle, "SDL_SetAudioStreamOutputChannelMap")
bool sdlSetAudioStreamOutputChannelMap(SDL_AudioStream* stream, const(int)* chmap, int count);

alias SDL_SetAudioStreamOutputChannelMap = sdlSetAudioStreamOutputChannelMap;

pragma(mangle, "SDL_PutAudioStreamData")
bool sdlPutAudioStreamData(SDL_AudioStream* stream, const(void)* buf, int len);

alias SDL_PutAudioStreamData = sdlPutAudioStreamData;

alias SDL_AudioStreamDataCompleteCallback = void function(void* userdata, const(void)* buf, int buflen);

pragma(mangle, "SDL_PutAudioStreamDataNoCopy")
bool sdlPutAudioStreamDataNoCopy(SDL_AudioStream* stream, const(void)* buf, int len, SDL_AudioStreamDataCompleteCallback callback, void* userdata);

alias SDL_PutAudioStreamDataNoCopy = sdlPutAudioStreamDataNoCopy;

pragma(mangle, "SDL_PutAudioStreamPlanarData")
bool sdlPutAudioStreamPlanarData(SDL_AudioStream* stream, const(void*)* channel_buffers, int num_channels, int num_samples);

alias SDL_PutAudioStreamPlanarData = sdlPutAudioStreamPlanarData;

pragma(mangle, "SDL_GetAudioStreamData")
int sdlGetAudioStreamData(SDL_AudioStream* stream, void* buf, int len);

alias SDL_GetAudioStreamData = sdlGetAudioStreamData;

pragma(mangle, "SDL_GetAudioStreamAvailable")
int sdlGetAudioStreamAvailable(SDL_AudioStream* stream);

alias SDL_GetAudioStreamAvailable = sdlGetAudioStreamAvailable;

pragma(mangle, "SDL_GetAudioStreamQueued")
int sdlGetAudioStreamQueued(SDL_AudioStream* stream);

alias SDL_GetAudioStreamQueued = sdlGetAudioStreamQueued;

pragma(mangle, "SDL_FlushAudioStream")
bool sdlFlushAudioStream(SDL_AudioStream* stream);

alias SDL_FlushAudioStream = sdlFlushAudioStream;

pragma(mangle, "SDL_ClearAudioStream")
bool sdlClearAudioStream(SDL_AudioStream* stream);

alias SDL_ClearAudioStream = sdlClearAudioStream;

pragma(mangle, "SDL_PauseAudioStreamDevice")
bool sdlPauseAudioStreamDevice(SDL_AudioStream* stream);

alias SDL_PauseAudioStreamDevice = sdlPauseAudioStreamDevice;

pragma(mangle, "SDL_ResumeAudioStreamDevice")
bool sdlResumeAudioStreamDevice(SDL_AudioStream* stream);

alias SDL_ResumeAudioStreamDevice = sdlResumeAudioStreamDevice;

pragma(mangle, "SDL_AudioStreamDevicePaused")
bool sdlAudioStreamDevicePaused(SDL_AudioStream* stream);

alias SDL_AudioStreamDevicePaused = sdlAudioStreamDevicePaused;

pragma(mangle, "SDL_LockAudioStream")
bool sdlLockAudioStream(SDL_AudioStream* stream);

alias SDL_LockAudioStream = sdlLockAudioStream;

pragma(mangle, "SDL_UnlockAudioStream")
bool sdlUnlockAudioStream(SDL_AudioStream* stream);

alias SDL_UnlockAudioStream = sdlUnlockAudioStream;

alias SDL_AudioStreamCallback = void function(void* userdata, SDL_AudioStream* stream, int additional_amount, int total_amount);

pragma(mangle, "SDL_SetAudioStreamGetCallback")
bool sdlSetAudioStreamGetCallback(SDL_AudioStream* stream, SDL_AudioStreamCallback callback, void* userdata);

alias SDL_SetAudioStreamGetCallback = sdlSetAudioStreamGetCallback;

pragma(mangle, "SDL_SetAudioStreamPutCallback")
bool sdlSetAudioStreamPutCallback(SDL_AudioStream* stream, SDL_AudioStreamCallback callback, void* userdata);

alias SDL_SetAudioStreamPutCallback = sdlSetAudioStreamPutCallback;

pragma(mangle, "SDL_DestroyAudioStream")
void sdlDestroyAudioStream(SDL_AudioStream* stream);

alias SDL_DestroyAudioStream = sdlDestroyAudioStream;

pragma(mangle, "SDL_OpenAudioDeviceStream")
SDL_AudioStream* sdlOpenAudioDeviceStream(SDL_AudioDeviceID devid, const(SDL_AudioSpec)* spec, SDL_AudioStreamCallback callback, void* userdata);

alias SDL_OpenAudioDeviceStream = sdlOpenAudioDeviceStream;

alias SDL_AudioPostmixCallback = void function(void* userdata, const(SDL_AudioSpec)* spec, float* buffer, int buflen);

pragma(mangle, "SDL_SetAudioPostmixCallback")
bool sdlSetAudioPostmixCallback(SDL_AudioDeviceID devid, SDL_AudioPostmixCallback callback, void* userdata);

alias SDL_SetAudioPostmixCallback = sdlSetAudioPostmixCallback;

pragma(mangle, "SDL_LoadWAV_IO")
bool sdlLoadWAVIo(SDL_IOStream* src, bool closeio, SDL_AudioSpec* spec, Uint8** audio_buf, Uint32* audio_len);

alias SDL_LoadWAV_IO = sdlLoadWAVIo;

pragma(mangle, "SDL_LoadWAV")
bool sdlLoadWAV(const(char)* path, SDL_AudioSpec* spec, Uint8** audio_buf, Uint32* audio_len);

alias SDL_LoadWAV = sdlLoadWAV;

pragma(mangle, "SDL_MixAudio")
bool sdlMixAudio(Uint8* dst, const(Uint8)* src, SDL_AudioFormat format, Uint32 len, float volume);

alias SDL_MixAudio = sdlMixAudio;

pragma(mangle, "SDL_ConvertAudioSamples")
bool sdlConvertAudioSamples(const(SDL_AudioSpec)* src_spec, const(Uint8)* src_data, int src_len, const(
        SDL_AudioSpec)* dst_spec, Uint8** dst_data, int* dst_len);

alias SDL_ConvertAudioSamples = sdlConvertAudioSamples;

pragma(mangle, "SDL_GetAudioFormatName")
const(char)* sdlGetAudioFormatName(SDL_AudioFormat format);

alias SDL_GetAudioFormatName = sdlGetAudioFormatName;

pragma(mangle, "SDL_GetSilenceValueForFormat")
int sdlGetSilenceValueForFormat(SDL_AudioFormat format);

alias SDL_GetSilenceValueForFormat = sdlGetSilenceValueForFormat;
