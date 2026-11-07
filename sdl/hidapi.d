module libs.sdl.hidapi;

import libs.sdl.properties;
import libs.sdl.stdinc;
import core.stdc.stddef;

extern (C):
@nogc nothrow:

struct SDL_hid_device;

enum SDL_hid_bus_type
{
    SDL_HID_API_BUS_UNKNOWN = 0x00,

    SDL_HID_API_BUS_USB = 0x01,

    SDL_HID_API_BUS_BLUETOOTH = 0x02,

    SDL_HID_API_BUS_I2C = 0x03,

    SDL_HID_API_BUS_SPI = 0x04
}

alias SDL_HID_API_BUS_UNKNOWN = SDL_hid_bus_type.SDL_HID_API_BUS_UNKNOWN;
alias SDL_HID_API_BUS_USB = SDL_hid_bus_type.SDL_HID_API_BUS_USB;
alias SDL_HID_API_BUS_BLUETOOTH = SDL_hid_bus_type.SDL_HID_API_BUS_BLUETOOTH;
alias SDL_HID_API_BUS_I2C = SDL_hid_bus_type.SDL_HID_API_BUS_I2C;
alias SDL_HID_API_BUS_SPI = SDL_hid_bus_type.SDL_HID_API_BUS_SPI;

struct SDL_hid_device_info
{
    char* path;

    ushort vendor_id;

    ushort product_id;

    alias wchar_t = ushort;
    wchar_t* serial_number;
    ushort release_number;
    wchar_t* manufacturer_string;
    wchar_t* product_string;
    ushort usage_page;
    ushort usage;
    int interface_number;
    int interface_class;
    int interface_subclass;
    int interface_protocol;
    SDL_hid_bus_type bus_type;
    SDL_hid_device_info* next;
}

pragma(mangle, "SDL_hid_init")
int sdlHidInit();

alias SDL_hid_init = sdlHidInit;
pragma(mangle, "SDL_hid_exit")
int sdlHidExit();

alias SDL_hid_exit = sdlHidExit;
pragma(mangle, "SDL_hid_device_change_count")
Uint32 sdlHidDeviceChangeCount();

alias SDL_hid_device_change_count = sdlHidDeviceChangeCount;
pragma(mangle, "SDL_hid_enumerate")
SDL_hid_device_info* sdlHidEnumerate(ushort vendor_id, ushort product_id);

alias SDL_hid_enumerate = sdlHidEnumerate;

pragma(mangle, "SDL_hid_free_enumeration")
void sdlHidFreeEnumeration(SDL_hid_device_info* devs);

alias SDL_hid_free_enumeration = sdlHidFreeEnumeration;

pragma(mangle, "SDL_hid_open")
SDL_hid_device* sdlHidOpen(ushort vendor_id, ushort product_id, const(wchar_t)* serial_number);

alias SDL_hid_open = sdlHidOpen;

pragma(mangle, "SDL_hid_open_path")
SDL_hid_device* sdlHidOpenPath(const(char)* path);

alias SDL_hid_open_path = sdlHidOpenPath;

pragma(mangle, "SDL_hid_get_properties")
SDL_PropertiesID sdlHidGetProperties(SDL_hid_device* dev);

alias SDL_hid_get_properties = sdlHidGetProperties;

enum SDL_PROP_HIDAPI_LIBUSB_DEVICE_HANDLE_POINTER = "SDL.hidapi.libusb.device.handle";

pragma(mangle, "SDL_hid_write")
int sdlHidWrite(SDL_hid_device* dev, const(ubyte)* data, size_t length);

alias SDL_hid_write = sdlHidWrite;

pragma(mangle, "SDL_hid_read_timeout")
int sdlHidReadTimeout(SDL_hid_device* dev, ubyte* data, size_t length, int milliseconds);

alias SDL_hid_read_timeout = sdlHidReadTimeout;

pragma(mangle, "SDL_hid_read")
int sdlHidRead(SDL_hid_device* dev, ubyte* data, size_t length);

alias SDL_hid_read = sdlHidRead;

pragma(mangle, "SDL_hid_set_nonblocking")
int sdlHidSetNonblocking(SDL_hid_device* dev, int nonblock);

alias SDL_hid_set_nonblocking = sdlHidSetNonblocking;

pragma(mangle, "SDL_hid_send_feature_report")
int sdlHidSendFeatureReport(SDL_hid_device* dev, const(ubyte)* data, size_t length);

alias SDL_hid_send_feature_report = sdlHidSendFeatureReport;

pragma(mangle, "SDL_hid_get_feature_report")
int sdlHidGetFeatureReport(SDL_hid_device* dev, ubyte* data, size_t length);

alias SDL_hid_get_feature_report = sdlHidGetFeatureReport;

pragma(mangle, "SDL_hid_get_input_report")
int sdlHidGetInputReport(SDL_hid_device* dev, ubyte* data, size_t length);

alias SDL_hid_get_input_report = sdlHidGetInputReport;

pragma(mangle, "SDL_hid_close")
int sdlHidClose(SDL_hid_device* dev);

alias SDL_hid_close = sdlHidClose;

pragma(mangle, "SDL_hid_get_manufacturer_string")
int sdlHidGetManufacturerString(SDL_hid_device* dev, wchar_t* string, size_t maxlen);

alias SDL_hid_get_manufacturer_string = sdlHidGetManufacturerString;

pragma(mangle, "SDL_hid_get_product_string")
int sdlHidGetProductString(SDL_hid_device* dev, wchar_t* string, size_t maxlen);

alias SDL_hid_get_product_string = sdlHidGetProductString;

pragma(mangle, "SDL_hid_get_serial_number_string")
int sdlHidGetSerialNumberString(SDL_hid_device* dev, wchar_t* string, size_t maxlen);

alias SDL_hid_get_serial_number_string = sdlHidGetSerialNumberString;

pragma(mangle, "SDL_hid_get_indexed_string")
int sdlHidGetIndexedString(SDL_hid_device* dev, int string_index, wchar_t* string, size_t maxlen);

alias SDL_hid_get_indexed_string = sdlHidGetIndexedString;

pragma(mangle, "SDL_hid_get_device_info")
SDL_hid_device_info* sdlHidGetDeviceInfo(SDL_hid_device* dev);

alias SDL_hid_get_device_info = sdlHidGetDeviceInfo;

pragma(mangle, "SDL_hid_get_report_descriptor")
int sdlHidGetReportDescriptor(SDL_hid_device* dev, ubyte* buf, size_t buf_size);

alias SDL_hid_get_report_descriptor = sdlHidGetReportDescriptor;

pragma(mangle, "SDL_hid_ble_scan")
void sdlHidBleScan(bool active);

alias SDL_hid_ble_scan = sdlHidBleScan;
