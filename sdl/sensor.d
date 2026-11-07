module libs.sdl.sensor;

import libs.sdl.properties;

extern (C):
@nogc nothrow:

struct SDL_Sensor;

alias SDL_SensorID = uint;

enum SDL_STANDARD_GRAVITY = 9.80665f;

enum SDL_SensorType
{
    SDL_SENSOR_INVALID = -1,
    SDL_SENSOR_UNKNOWN = 0,
    SDL_SENSOR_ACCEL = 1,
    SDL_SENSOR_GYRO = 2,
    SDL_SENSOR_ACCEL_L = 3,
    SDL_SENSOR_GYRO_L = 4,
    SDL_SENSOR_ACCEL_R = 5,
    SDL_SENSOR_GYRO_R = 6,
    SDL_SENSOR_COUNT = 7
}

alias SDL_SENSOR_INVALID = SDL_SensorType.SDL_SENSOR_INVALID;
alias SDL_SENSOR_UNKNOWN = SDL_SensorType.SDL_SENSOR_UNKNOWN;
alias SDL_SENSOR_ACCEL = SDL_SensorType.SDL_SENSOR_ACCEL;
alias SDL_SENSOR_GYRO = SDL_SensorType.SDL_SENSOR_GYRO;
alias SDL_SENSOR_ACCEL_L = SDL_SensorType.SDL_SENSOR_ACCEL_L;
alias SDL_SENSOR_GYRO_L = SDL_SensorType.SDL_SENSOR_GYRO_L;
alias SDL_SENSOR_ACCEL_R = SDL_SensorType.SDL_SENSOR_ACCEL_R;
alias SDL_SENSOR_GYRO_R = SDL_SensorType.SDL_SENSOR_GYRO_R;
alias SDL_SENSOR_COUNT = SDL_SensorType.SDL_SENSOR_COUNT;

pragma(mangle, "SDL_GetSensors")
SDL_SensorID* sdlGetSensors(int* count);

alias SDL_GetSensors = sdlGetSensors;

pragma(mangle, "SDL_GetSensorNameForID")
const(char)* sdlGetSensorNameForID(SDL_SensorID instance_id);

alias SDL_GetSensorNameForID = sdlGetSensorNameForID;

pragma(mangle, "SDL_GetSensorTypeForID")
SDL_SensorType sdlGetSensorTypeForID(SDL_SensorID instance_id);

alias SDL_GetSensorTypeForID = sdlGetSensorTypeForID;

pragma(mangle, "SDL_GetSensorNonPortableTypeForID")
int sdlGetSensorNonPortableTypeForID(SDL_SensorID instance_id);

alias SDL_GetSensorNonPortableTypeForID = sdlGetSensorNonPortableTypeForID;

pragma(mangle, "SDL_OpenSensor")
SDL_Sensor* sdlOpenSensor(SDL_SensorID instance_id);

alias SDL_OpenSensor = sdlOpenSensor;

pragma(mangle, "SDL_GetSensorFromID")
SDL_Sensor* sdlGetSensorFromID(SDL_SensorID instance_id);

alias SDL_GetSensorFromID = sdlGetSensorFromID;

pragma(mangle, "SDL_GetSensorProperties")
SDL_PropertiesID sdlGetSensorProperties(SDL_Sensor* sensor);

alias SDL_GetSensorProperties = sdlGetSensorProperties;

pragma(mangle, "SDL_GetSensorName")
const(char)* sdlGetSensorName(SDL_Sensor* sensor);

alias SDL_GetSensorName = sdlGetSensorName;

pragma(mangle, "SDL_GetSensorType")
SDL_SensorType sdlGetSensorType(SDL_Sensor* sensor);

alias SDL_GetSensorType = sdlGetSensorType;

pragma(mangle, "SDL_GetSensorNonPortableType")
int sdlGetSensorNonPortableType(SDL_Sensor* sensor);

alias SDL_GetSensorNonPortableType = sdlGetSensorNonPortableType;

pragma(mangle, "SDL_GetSensorID")
SDL_SensorID sdlGetSensorID(SDL_Sensor* sensor);

alias SDL_GetSensorID = sdlGetSensorID;

pragma(mangle, "SDL_GetSensorData")
bool sdlGetSensorData(SDL_Sensor* sensor, float* data, int num_values);

alias SDL_GetSensorData = sdlGetSensorData;

pragma(mangle, "SDL_CloseSensor")
void sdlCloseSensor(SDL_Sensor* sensor);

alias SDL_CloseSensor = sdlCloseSensor;

pragma(mangle, "SDL_UpdateSensors")
void sdlUpdateSensors();

alias SDL_UpdateSensors = sdlUpdateSensors;
