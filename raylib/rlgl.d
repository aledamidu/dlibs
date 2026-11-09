module libs.raylib.rlgl;

import libs.raylib.raylib : Matrix;

// Generated from rlgl.h.
// Do not edit by hand; run tools/generate_rlgl.ts instead.
//
// rlgl functions already use the rl prefix, so their C names are kept as-is.

extern (C):
@nogc nothrow:

struct RlVertexBuffer {
    int elementCount;
    float* vertices;
    float* texcoords;
    float* normals;
    ubyte* colors;
    uint* indices;
    uint vaoId;
    uint[5] vboId;
}

struct RlDrawCall {
    int mode;
    int vertexCount;
    int vertexAlignment;
    uint textureId;
}

struct RlRenderBatch {
    int bufferCount;
    int currentBuffer;
    RlVertexBuffer* vertexBuffer;
    RlDrawCall* draws;
    int drawCounter;
    float currentDepth;
}

enum RlGlVersion {
    RL_OPENGL_SOFTWARE = 0,
    RL_OPENGL_11,
    RL_OPENGL_21,
    RL_OPENGL_33,
    RL_OPENGL_43,
    RL_OPENGL_ES_20,
    RL_OPENGL_ES_30,
}

alias RL_OPENGL_SOFTWARE = RlGlVersion.RL_OPENGL_SOFTWARE;
alias RL_OPENGL_11 = RlGlVersion.RL_OPENGL_11;
alias RL_OPENGL_21 = RlGlVersion.RL_OPENGL_21;
alias RL_OPENGL_33 = RlGlVersion.RL_OPENGL_33;
alias RL_OPENGL_43 = RlGlVersion.RL_OPENGL_43;
alias RL_OPENGL_ES_20 = RlGlVersion.RL_OPENGL_ES_20;
alias RL_OPENGL_ES_30 = RlGlVersion.RL_OPENGL_ES_30;

enum RlTraceLogLevel {
    RL_LOG_ALL = 0,
    RL_LOG_TRACE,
    RL_LOG_DEBUG,
    RL_LOG_INFO,
    RL_LOG_WARNING,
    RL_LOG_ERROR,
    RL_LOG_FATAL,
    RL_LOG_NONE,
}

alias RL_LOG_ALL = RlTraceLogLevel.RL_LOG_ALL;
alias RL_LOG_TRACE = RlTraceLogLevel.RL_LOG_TRACE;
alias RL_LOG_DEBUG = RlTraceLogLevel.RL_LOG_DEBUG;
alias RL_LOG_INFO = RlTraceLogLevel.RL_LOG_INFO;
alias RL_LOG_WARNING = RlTraceLogLevel.RL_LOG_WARNING;
alias RL_LOG_ERROR = RlTraceLogLevel.RL_LOG_ERROR;
alias RL_LOG_FATAL = RlTraceLogLevel.RL_LOG_FATAL;
alias RL_LOG_NONE = RlTraceLogLevel.RL_LOG_NONE;

enum RlPixelFormat {
    RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = 1,
    RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA,
    RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5,
    RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8,
    RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1,
    RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4,
    RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8,
    RL_PIXELFORMAT_UNCOMPRESSED_R32,
    RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32,
    RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32,
    RL_PIXELFORMAT_UNCOMPRESSED_R16,
    RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16,
    RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16,
    RL_PIXELFORMAT_COMPRESSED_DXT1_RGB,
    RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA,
    RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA,
    RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA,
    RL_PIXELFORMAT_COMPRESSED_ETC1_RGB,
    RL_PIXELFORMAT_COMPRESSED_ETC2_RGB,
    RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA,
    RL_PIXELFORMAT_COMPRESSED_PVRT_RGB,
    RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA,
    RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA,
    RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA,
}

alias RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;
alias RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;
alias RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5;
alias RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8;
alias RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;
alias RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;
alias RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;
alias RL_PIXELFORMAT_UNCOMPRESSED_R32 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R32;
alias RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32;
alias RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32 = RlPixelFormat
    .RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;
alias RL_PIXELFORMAT_UNCOMPRESSED_R16 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R16;
alias RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16 = RlPixelFormat.RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16;
alias RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16 = RlPixelFormat
    .RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16;
alias RL_PIXELFORMAT_COMPRESSED_DXT1_RGB = RlPixelFormat.RL_PIXELFORMAT_COMPRESSED_DXT1_RGB;
alias RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA = RlPixelFormat.RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA;
alias RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA = RlPixelFormat.RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA;
alias RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA = RlPixelFormat.RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA;
alias RL_PIXELFORMAT_COMPRESSED_ETC1_RGB = RlPixelFormat.RL_PIXELFORMAT_COMPRESSED_ETC1_RGB;
alias RL_PIXELFORMAT_COMPRESSED_ETC2_RGB = RlPixelFormat.RL_PIXELFORMAT_COMPRESSED_ETC2_RGB;
alias RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA = RlPixelFormat
    .RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;
alias RL_PIXELFORMAT_COMPRESSED_PVRT_RGB = RlPixelFormat.RL_PIXELFORMAT_COMPRESSED_PVRT_RGB;
alias RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA = RlPixelFormat.RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA;
alias RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA = RlPixelFormat
    .RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;
alias RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA = RlPixelFormat
    .RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;

enum RlTextureFilter {
    RL_TEXTURE_FILTER_POINT = 0,
    RL_TEXTURE_FILTER_BILINEAR,
    RL_TEXTURE_FILTER_TRILINEAR,
    RL_TEXTURE_FILTER_ANISOTROPIC_4X,
    RL_TEXTURE_FILTER_ANISOTROPIC_8X,
    RL_TEXTURE_FILTER_ANISOTROPIC_16X,
}

alias RL_TEXTURE_FILTER_POINT = RlTextureFilter.RL_TEXTURE_FILTER_POINT;
alias RL_TEXTURE_FILTER_BILINEAR = RlTextureFilter.RL_TEXTURE_FILTER_BILINEAR;
alias RL_TEXTURE_FILTER_TRILINEAR = RlTextureFilter.RL_TEXTURE_FILTER_TRILINEAR;
alias RL_TEXTURE_FILTER_ANISOTROPIC_4X = RlTextureFilter.RL_TEXTURE_FILTER_ANISOTROPIC_4X;
alias RL_TEXTURE_FILTER_ANISOTROPIC_8X = RlTextureFilter.RL_TEXTURE_FILTER_ANISOTROPIC_8X;
alias RL_TEXTURE_FILTER_ANISOTROPIC_16X = RlTextureFilter.RL_TEXTURE_FILTER_ANISOTROPIC_16X;

enum RlBlendMode {
    RL_BLEND_ALPHA = 0,
    RL_BLEND_ADDITIVE,
    RL_BLEND_MULTIPLIED,
    RL_BLEND_ADD_COLORS,
    RL_BLEND_SUBTRACT_COLORS,
    RL_BLEND_ALPHA_PREMULTIPLY,
    RL_BLEND_CUSTOM,
    RL_BLEND_CUSTOM_SEPARATE,
}

alias RL_BLEND_ALPHA = RlBlendMode.RL_BLEND_ALPHA;
alias RL_BLEND_ADDITIVE = RlBlendMode.RL_BLEND_ADDITIVE;
alias RL_BLEND_MULTIPLIED = RlBlendMode.RL_BLEND_MULTIPLIED;
alias RL_BLEND_ADD_COLORS = RlBlendMode.RL_BLEND_ADD_COLORS;
alias RL_BLEND_SUBTRACT_COLORS = RlBlendMode.RL_BLEND_SUBTRACT_COLORS;
alias RL_BLEND_ALPHA_PREMULTIPLY = RlBlendMode.RL_BLEND_ALPHA_PREMULTIPLY;
alias RL_BLEND_CUSTOM = RlBlendMode.RL_BLEND_CUSTOM;
alias RL_BLEND_CUSTOM_SEPARATE = RlBlendMode.RL_BLEND_CUSTOM_SEPARATE;

enum RlShaderLocationIndex {
    RL_SHADER_LOC_VERTEX_POSITION = 0,
    RL_SHADER_LOC_VERTEX_TEXCOORD01,
    RL_SHADER_LOC_VERTEX_TEXCOORD02,
    RL_SHADER_LOC_VERTEX_NORMAL,
    RL_SHADER_LOC_VERTEX_TANGENT,
    RL_SHADER_LOC_VERTEX_COLOR,
    RL_SHADER_LOC_MATRIX_MVP,
    RL_SHADER_LOC_MATRIX_VIEW,
    RL_SHADER_LOC_MATRIX_PROJECTION,
    RL_SHADER_LOC_MATRIX_MODEL,
    RL_SHADER_LOC_MATRIX_NORMAL,
    RL_SHADER_LOC_VECTOR_VIEW,
    RL_SHADER_LOC_COLOR_DIFFUSE,
    RL_SHADER_LOC_COLOR_SPECULAR,
    RL_SHADER_LOC_COLOR_AMBIENT,
    RL_SHADER_LOC_MAP_ALBEDO,
    RL_SHADER_LOC_MAP_METALNESS,
    RL_SHADER_LOC_MAP_NORMAL,
    RL_SHADER_LOC_MAP_ROUGHNESS,
    RL_SHADER_LOC_MAP_OCCLUSION,
    RL_SHADER_LOC_MAP_EMISSION,
    RL_SHADER_LOC_MAP_HEIGHT,
    RL_SHADER_LOC_MAP_CUBEMAP,
    RL_SHADER_LOC_MAP_IRRADIANCE,
    RL_SHADER_LOC_MAP_PREFILTER,
    RL_SHADER_LOC_MAP_BRDF,
}

alias RL_SHADER_LOC_VERTEX_POSITION = RlShaderLocationIndex.RL_SHADER_LOC_VERTEX_POSITION;
alias RL_SHADER_LOC_VERTEX_TEXCOORD01 = RlShaderLocationIndex.RL_SHADER_LOC_VERTEX_TEXCOORD01;
alias RL_SHADER_LOC_VERTEX_TEXCOORD02 = RlShaderLocationIndex.RL_SHADER_LOC_VERTEX_TEXCOORD02;
alias RL_SHADER_LOC_VERTEX_NORMAL = RlShaderLocationIndex.RL_SHADER_LOC_VERTEX_NORMAL;
alias RL_SHADER_LOC_VERTEX_TANGENT = RlShaderLocationIndex.RL_SHADER_LOC_VERTEX_TANGENT;
alias RL_SHADER_LOC_VERTEX_COLOR = RlShaderLocationIndex.RL_SHADER_LOC_VERTEX_COLOR;
alias RL_SHADER_LOC_MATRIX_MVP = RlShaderLocationIndex.RL_SHADER_LOC_MATRIX_MVP;
alias RL_SHADER_LOC_MATRIX_VIEW = RlShaderLocationIndex.RL_SHADER_LOC_MATRIX_VIEW;
alias RL_SHADER_LOC_MATRIX_PROJECTION = RlShaderLocationIndex.RL_SHADER_LOC_MATRIX_PROJECTION;
alias RL_SHADER_LOC_MATRIX_MODEL = RlShaderLocationIndex.RL_SHADER_LOC_MATRIX_MODEL;
alias RL_SHADER_LOC_MATRIX_NORMAL = RlShaderLocationIndex.RL_SHADER_LOC_MATRIX_NORMAL;
alias RL_SHADER_LOC_VECTOR_VIEW = RlShaderLocationIndex.RL_SHADER_LOC_VECTOR_VIEW;
alias RL_SHADER_LOC_COLOR_DIFFUSE = RlShaderLocationIndex.RL_SHADER_LOC_COLOR_DIFFUSE;
alias RL_SHADER_LOC_COLOR_SPECULAR = RlShaderLocationIndex.RL_SHADER_LOC_COLOR_SPECULAR;
alias RL_SHADER_LOC_COLOR_AMBIENT = RlShaderLocationIndex.RL_SHADER_LOC_COLOR_AMBIENT;
alias RL_SHADER_LOC_MAP_ALBEDO = RlShaderLocationIndex.RL_SHADER_LOC_MAP_ALBEDO;
alias RL_SHADER_LOC_MAP_METALNESS = RlShaderLocationIndex.RL_SHADER_LOC_MAP_METALNESS;
alias RL_SHADER_LOC_MAP_NORMAL = RlShaderLocationIndex.RL_SHADER_LOC_MAP_NORMAL;
alias RL_SHADER_LOC_MAP_ROUGHNESS = RlShaderLocationIndex.RL_SHADER_LOC_MAP_ROUGHNESS;
alias RL_SHADER_LOC_MAP_OCCLUSION = RlShaderLocationIndex.RL_SHADER_LOC_MAP_OCCLUSION;
alias RL_SHADER_LOC_MAP_EMISSION = RlShaderLocationIndex.RL_SHADER_LOC_MAP_EMISSION;
alias RL_SHADER_LOC_MAP_HEIGHT = RlShaderLocationIndex.RL_SHADER_LOC_MAP_HEIGHT;
alias RL_SHADER_LOC_MAP_CUBEMAP = RlShaderLocationIndex.RL_SHADER_LOC_MAP_CUBEMAP;
alias RL_SHADER_LOC_MAP_IRRADIANCE = RlShaderLocationIndex.RL_SHADER_LOC_MAP_IRRADIANCE;
alias RL_SHADER_LOC_MAP_PREFILTER = RlShaderLocationIndex.RL_SHADER_LOC_MAP_PREFILTER;
alias RL_SHADER_LOC_MAP_BRDF = RlShaderLocationIndex.RL_SHADER_LOC_MAP_BRDF;

enum RlShaderUniformDataType {
    RL_SHADER_UNIFORM_FLOAT = 0,
    RL_SHADER_UNIFORM_VEC2,
    RL_SHADER_UNIFORM_VEC3,
    RL_SHADER_UNIFORM_VEC4,
    RL_SHADER_UNIFORM_INT,
    RL_SHADER_UNIFORM_IVEC2,
    RL_SHADER_UNIFORM_IVEC3,
    RL_SHADER_UNIFORM_IVEC4,
    RL_SHADER_UNIFORM_UINT,
    RL_SHADER_UNIFORM_UIVEC2,
    RL_SHADER_UNIFORM_UIVEC3,
    RL_SHADER_UNIFORM_UIVEC4,
    RL_SHADER_UNIFORM_SAMPLER2D,
}

alias RL_SHADER_UNIFORM_FLOAT = RlShaderUniformDataType.RL_SHADER_UNIFORM_FLOAT;
alias RL_SHADER_UNIFORM_VEC2 = RlShaderUniformDataType.RL_SHADER_UNIFORM_VEC2;
alias RL_SHADER_UNIFORM_VEC3 = RlShaderUniformDataType.RL_SHADER_UNIFORM_VEC3;
alias RL_SHADER_UNIFORM_VEC4 = RlShaderUniformDataType.RL_SHADER_UNIFORM_VEC4;
alias RL_SHADER_UNIFORM_INT = RlShaderUniformDataType.RL_SHADER_UNIFORM_INT;
alias RL_SHADER_UNIFORM_IVEC2 = RlShaderUniformDataType.RL_SHADER_UNIFORM_IVEC2;
alias RL_SHADER_UNIFORM_IVEC3 = RlShaderUniformDataType.RL_SHADER_UNIFORM_IVEC3;
alias RL_SHADER_UNIFORM_IVEC4 = RlShaderUniformDataType.RL_SHADER_UNIFORM_IVEC4;
alias RL_SHADER_UNIFORM_UINT = RlShaderUniformDataType.RL_SHADER_UNIFORM_UINT;
alias RL_SHADER_UNIFORM_UIVEC2 = RlShaderUniformDataType.RL_SHADER_UNIFORM_UIVEC2;
alias RL_SHADER_UNIFORM_UIVEC3 = RlShaderUniformDataType.RL_SHADER_UNIFORM_UIVEC3;
alias RL_SHADER_UNIFORM_UIVEC4 = RlShaderUniformDataType.RL_SHADER_UNIFORM_UIVEC4;
alias RL_SHADER_UNIFORM_SAMPLER2D = RlShaderUniformDataType.RL_SHADER_UNIFORM_SAMPLER2D;

enum RlShaderAttributeDataType {
    RL_SHADER_ATTRIB_FLOAT = 0,
    RL_SHADER_ATTRIB_VEC2,
    RL_SHADER_ATTRIB_VEC3,
    RL_SHADER_ATTRIB_VEC4,
}

alias RL_SHADER_ATTRIB_FLOAT = RlShaderAttributeDataType.RL_SHADER_ATTRIB_FLOAT;
alias RL_SHADER_ATTRIB_VEC2 = RlShaderAttributeDataType.RL_SHADER_ATTRIB_VEC2;
alias RL_SHADER_ATTRIB_VEC3 = RlShaderAttributeDataType.RL_SHADER_ATTRIB_VEC3;
alias RL_SHADER_ATTRIB_VEC4 = RlShaderAttributeDataType.RL_SHADER_ATTRIB_VEC4;

enum RlFramebufferAttachType {
    RL_ATTACHMENT_COLOR_CHANNEL0 = 0,
    RL_ATTACHMENT_COLOR_CHANNEL1 = 1,
    RL_ATTACHMENT_COLOR_CHANNEL2 = 2,
    RL_ATTACHMENT_COLOR_CHANNEL3 = 3,
    RL_ATTACHMENT_COLOR_CHANNEL4 = 4,
    RL_ATTACHMENT_COLOR_CHANNEL5 = 5,
    RL_ATTACHMENT_COLOR_CHANNEL6 = 6,
    RL_ATTACHMENT_COLOR_CHANNEL7 = 7,
    RL_ATTACHMENT_DEPTH = 100,
    RL_ATTACHMENT_STENCIL = 200,
}

alias RL_ATTACHMENT_COLOR_CHANNEL0 = RlFramebufferAttachType.RL_ATTACHMENT_COLOR_CHANNEL0;
alias RL_ATTACHMENT_COLOR_CHANNEL1 = RlFramebufferAttachType.RL_ATTACHMENT_COLOR_CHANNEL1;
alias RL_ATTACHMENT_COLOR_CHANNEL2 = RlFramebufferAttachType.RL_ATTACHMENT_COLOR_CHANNEL2;
alias RL_ATTACHMENT_COLOR_CHANNEL3 = RlFramebufferAttachType.RL_ATTACHMENT_COLOR_CHANNEL3;
alias RL_ATTACHMENT_COLOR_CHANNEL4 = RlFramebufferAttachType.RL_ATTACHMENT_COLOR_CHANNEL4;
alias RL_ATTACHMENT_COLOR_CHANNEL5 = RlFramebufferAttachType.RL_ATTACHMENT_COLOR_CHANNEL5;
alias RL_ATTACHMENT_COLOR_CHANNEL6 = RlFramebufferAttachType.RL_ATTACHMENT_COLOR_CHANNEL6;
alias RL_ATTACHMENT_COLOR_CHANNEL7 = RlFramebufferAttachType.RL_ATTACHMENT_COLOR_CHANNEL7;
alias RL_ATTACHMENT_DEPTH = RlFramebufferAttachType.RL_ATTACHMENT_DEPTH;
alias RL_ATTACHMENT_STENCIL = RlFramebufferAttachType.RL_ATTACHMENT_STENCIL;

enum RlFramebufferAttachTextureType {
    RL_ATTACHMENT_CUBEMAP_POSITIVE_X = 0,
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_X = 1,
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Y = 2,
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y = 3,
    RL_ATTACHMENT_CUBEMAP_POSITIVE_Z = 4,
    RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z = 5,
    RL_ATTACHMENT_TEXTURE2D = 100,
    RL_ATTACHMENT_RENDERBUFFER = 200,
}

alias RL_ATTACHMENT_CUBEMAP_POSITIVE_X = RlFramebufferAttachTextureType
    .RL_ATTACHMENT_CUBEMAP_POSITIVE_X;
alias RL_ATTACHMENT_CUBEMAP_NEGATIVE_X = RlFramebufferAttachTextureType
    .RL_ATTACHMENT_CUBEMAP_NEGATIVE_X;
alias RL_ATTACHMENT_CUBEMAP_POSITIVE_Y = RlFramebufferAttachTextureType
    .RL_ATTACHMENT_CUBEMAP_POSITIVE_Y;
alias RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y = RlFramebufferAttachTextureType
    .RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y;
alias RL_ATTACHMENT_CUBEMAP_POSITIVE_Z = RlFramebufferAttachTextureType
    .RL_ATTACHMENT_CUBEMAP_POSITIVE_Z;
alias RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z = RlFramebufferAttachTextureType
    .RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z;
alias RL_ATTACHMENT_TEXTURE2D = RlFramebufferAttachTextureType.RL_ATTACHMENT_TEXTURE2D;
alias RL_ATTACHMENT_RENDERBUFFER = RlFramebufferAttachTextureType.RL_ATTACHMENT_RENDERBUFFER;

enum RlCullMode {
    RL_CULL_FACE_FRONT = 0,
    RL_CULL_FACE_BACK,
}

alias RL_CULL_FACE_FRONT = RlCullMode.RL_CULL_FACE_FRONT;
alias RL_CULL_FACE_BACK = RlCullMode.RL_CULL_FACE_BACK;

enum string RLGL_VERSION = "6.0";
enum int RL_DEFAULT_BATCH_BUFFER_ELEMENTS = 8192;
enum int RL_DEFAULT_BATCH_BUFFERS = 1;
enum int RL_DEFAULT_BATCH_DRAWCALLS = 256;
enum int RL_DEFAULT_BATCH_MAX_TEXTURE_UNITS = 4;
enum int RL_MAX_MATRIX_STACK_SIZE = 32;
enum int RL_MAX_SHADER_LOCATIONS = 32;
enum float RL_CULL_DISTANCE_NEAR = 0.05f;
enum float RL_CULL_DISTANCE_FAR = 4000.0f;
enum int RL_TEXTURE_WRAP_S = 0x2802;
enum int RL_TEXTURE_WRAP_T = 0x2803;
enum int RL_TEXTURE_MAG_FILTER = 0x2800;
enum int RL_TEXTURE_MIN_FILTER = 0x2801;
enum int RL_TEXTURE_FILTER_NEAREST = 0x2600;
enum int RL_TEXTURE_FILTER_LINEAR = 0x2601;
enum int RL_TEXTURE_FILTER_MIP_NEAREST = 0x2700;
enum int RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR = 0x2702;
enum int RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST = 0x2701;
enum int RL_TEXTURE_FILTER_MIP_LINEAR = 0x2703;
enum int RL_TEXTURE_FILTER_ANISOTROPIC = 0x3000;
enum int RL_TEXTURE_MIPMAP_BIAS_RATIO = 0x4000;
enum int RL_TEXTURE_WRAP_REPEAT = 0x2901;
enum int RL_TEXTURE_WRAP_CLAMP = 0x812F;
enum int RL_TEXTURE_WRAP_MIRROR_REPEAT = 0x8370;
enum int RL_TEXTURE_WRAP_MIRROR_CLAMP = 0x8742;
enum int RL_MODELVIEW = 0x1700;
enum int RL_PROJECTION = 0x1701;
enum int RL_TEXTURE = 0x1702;
enum int RL_LINES = 0x0001;
enum int RL_TRIANGLES = 0x0004;
enum int RL_QUADS = 0x0007;
enum int RL_UNSIGNED_BYTE = 0x1401;
enum int RL_FLOAT = 0x1406;
enum int RL_STREAM_DRAW = 0x88E0;
enum int RL_STREAM_READ = 0x88E1;
enum int RL_STREAM_COPY = 0x88E2;
enum int RL_STATIC_DRAW = 0x88E4;
enum int RL_STATIC_READ = 0x88E5;
enum int RL_STATIC_COPY = 0x88E6;
enum int RL_DYNAMIC_DRAW = 0x88E8;
enum int RL_DYNAMIC_READ = 0x88E9;
enum int RL_DYNAMIC_COPY = 0x88EA;
enum int RL_FRAGMENT_SHADER = 0x8B30;
enum int RL_VERTEX_SHADER = 0x8B31;
enum int RL_COMPUTE_SHADER = 0x91B9;
enum int RL_ZERO = 0;
enum int RL_ONE = 1;
enum int RL_SRC_COLOR = 0x0300;
enum int RL_ONE_MINUS_SRC_COLOR = 0x0301;
enum int RL_SRC_ALPHA = 0x0302;
enum int RL_ONE_MINUS_SRC_ALPHA = 0x0303;
enum int RL_DST_ALPHA = 0x0304;
enum int RL_ONE_MINUS_DST_ALPHA = 0x0305;
enum int RL_DST_COLOR = 0x0306;
enum int RL_ONE_MINUS_DST_COLOR = 0x0307;
enum int RL_SRC_ALPHA_SATURATE = 0x0308;
enum int RL_CONSTANT_COLOR = 0x8001;
enum int RL_ONE_MINUS_CONSTANT_COLOR = 0x8002;
enum int RL_CONSTANT_ALPHA = 0x8003;
enum int RL_ONE_MINUS_CONSTANT_ALPHA = 0x8004;
enum int RL_FUNC_ADD = 0x8006;
enum int RL_MIN = 0x8007;
enum int RL_MAX = 0x8008;
enum int RL_FUNC_SUBTRACT = 0x800A;
enum int RL_FUNC_REVERSE_SUBTRACT = 0x800B;
enum int RL_BLEND_EQUATION = 0x8009;
enum int RL_BLEND_EQUATION_RGB = 0x8009;
enum int RL_BLEND_EQUATION_ALPHA = 0x883D;
enum int RL_BLEND_DST_RGB = 0x80C8;
enum int RL_BLEND_SRC_RGB = 0x80C9;
enum int RL_BLEND_DST_ALPHA = 0x80CA;
enum int RL_BLEND_SRC_ALPHA = 0x80CB;
enum int RL_BLEND_COLOR = 0x8005;
enum int RL_READ_FRAMEBUFFER = 0x8CA8;
enum int RL_DRAW_FRAMEBUFFER = 0x8CA9;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_POSITION = 0;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_TEXCOORD = 1;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_NORMAL = 2;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_COLOR = 3;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_TANGENT = 4;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_TEXCOORD2 = 5;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_INDICES = 6;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_BONEINDICES = 7;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_BONEWEIGHTS = 8;
enum int RL_DEFAULT_SHADER_ATTRIB_LOCATION_INSTANCETRANSFORM = 9;

alias RL_SHADER_LOC_MAP_DIFFUSE = RL_SHADER_LOC_MAP_ALBEDO;
alias RL_SHADER_LOC_MAP_SPECULAR = RL_SHADER_LOC_MAP_METALNESS;

void rlMatrixMode(int mode);

void rlPushMatrix();

void rlPopMatrix();

void rlLoadIdentity();

void rlTranslatef(float x, float y, float z);

void rlRotatef(float angle, float x, float y, float z);

void rlScalef(float x, float y, float z);

void rlMultMatrixf(const(float)* matf);

void rlFrustum(float left, float right, float bottom, float top, float znear, float zfar);

void rlOrtho(float left, float right, float bottom, float top, float znear, float zfar);

void rlViewport(int x, int y, int width, int height);

void rlSetClipPlanes(float nearPlane, float farPlane);

float rlGetCullDistanceNear();

float rlGetCullDistanceFar();

void rlBegin(int mode);

void rlEnd();

void rlVertex2i(int x, int y);

void rlVertex2f(float x, float y);

void rlVertex3f(float x, float y, float z);

void rlTexCoord2f(float x, float y);

void rlNormal3f(float x, float y, float z);

void rlColor4ub(ubyte r, ubyte g, ubyte b, ubyte a);

void rlColor3f(float x, float y, float z);

void rlColor4f(float x, float y, float z, float w);

bool rlEnableVertexArray(uint vaoId);

void rlDisableVertexArray();

void rlEnableVertexBuffer(uint id);

void rlDisableVertexBuffer();

void rlEnableVertexBufferElement(uint id);

void rlDisableVertexBufferElement();

void rlEnableVertexAttribute(uint index);

void rlDisableVertexAttribute(uint index);

void rlEnableStatePointer(int vertexAttribType, void* buffer);

void rlDisableStatePointer(int vertexAttribType);

void rlActiveTextureSlot(int slot);

void rlEnableTexture(uint id);

void rlDisableTexture();

void rlEnableTextureCubemap(uint id);

void rlDisableTextureCubemap();

void rlTextureParameters(uint id, int param, int value);

void rlCubemapParameters(uint id, int param, int value);

void rlEnableShader(uint id);

void rlDisableShader();

void rlEnableFramebuffer(uint id);

void rlDisableFramebuffer();

uint rlGetActiveFramebuffer();

void rlActiveDrawBuffers(int count);

void rlBlitFramebuffer(int srcX, int srcY, int srcWidth, int srcHeight, int dstX, int dstY, int dstWidth, int dstHeight, int bufferMask);

void rlBindFramebuffer(uint target, uint framebuffer);

void rlEnableColorBlend();

void rlDisableColorBlend();

void rlEnableDepthTest();

void rlDisableDepthTest();

void rlEnableDepthMask();

void rlDisableDepthMask();

void rlEnableBackfaceCulling();

void rlDisableBackfaceCulling();

void rlColorMask(bool r, bool g, bool b, bool a);

void rlSetCullFace(int mode);

void rlEnableScissorTest();

void rlDisableScissorTest();

void rlScissor(int x, int y, int width, int height);

void rlEnablePointMode();

void rlDisablePointMode();

void rlSetPointSize(float size);

float rlGetPointSize();

void rlEnableWireMode();

void rlDisableWireMode();

void rlSetLineWidth(float width);

float rlGetLineWidth();

void rlEnableSmoothLines();

void rlDisableSmoothLines();

void rlEnableStereoRender();

void rlDisableStereoRender();

bool rlIsStereoRenderEnabled();

void rlClearColor(ubyte r, ubyte g, ubyte b, ubyte a);

void rlClearScreenBuffers();

void rlCheckErrors();

void rlSetBlendMode(int mode);

void rlSetBlendFactors(int glSrcFactor, int glDstFactor, int glEquation);

void rlSetBlendFactorsSeparate(int glSrcRGB, int glDstRGB, int glSrcAlpha, int glDstAlpha, int glEqRGB, int glEqAlpha);

void rlglInit(int width, int height);

void rlglClose();

void rlLoadExtensions(void* loader);

void* rlGetProcAddress(const(char)* procName);

int rlGetVersion();

void rlSetFramebufferWidth(int width);

int rlGetFramebufferWidth();

void rlSetFramebufferHeight(int height);

int rlGetFramebufferHeight();

uint rlGetTextureIdDefault();

uint rlGetShaderIdDefault();

int* rlGetShaderLocsDefault();

RlRenderBatch rlLoadRenderBatch(int numBuffers, int bufferElements);

void rlUnloadRenderBatch(RlRenderBatch batch);

void rlDrawRenderBatch(RlRenderBatch* batch);

void rlSetRenderBatchActive(RlRenderBatch* batch);

void rlDrawRenderBatchActive();

bool rlCheckRenderBatchLimit(int vCount);

void rlSetTexture(uint id);

uint rlLoadVertexArray();

uint rlLoadVertexBuffer(const(void)* buffer, int size, bool dynamic);

uint rlLoadVertexBufferElement(const(void)* buffer, int size, bool dynamic);

void rlUpdateVertexBuffer(uint bufferId, const(void)* data, int dataSize, int offset);

void rlUpdateVertexBufferElements(uint id, const(void)* data, int dataSize, int offset);

void rlUnloadVertexArray(uint vaoId);

void rlUnloadVertexBuffer(uint vboId);

void rlSetVertexAttribute(uint index, int compSize, int type, bool normalized, int stride, int offset);

void rlSetVertexAttributeDivisor(uint index, int divisor);

void rlSetVertexAttributeDefault(int locIndex, const(void)* value, int attribType, int count);

void rlDrawVertexArray(int offset, int count);

void rlDrawVertexArrayElements(int offset, int count, const(void)* buffer);

void rlDrawVertexArrayInstanced(int offset, int count, int instances);

void rlDrawVertexArrayElementsInstanced(int offset, int count, const(void)* buffer, int instances);

uint rlLoadTexture(const(void)* data, int width, int height, int format, int mipmapCount);

uint rlLoadTextureDepth(int width, int height, bool useRenderBuffer);

uint rlLoadTextureCubemap(const(void)* data, int size, int format, int mipmapCount);

void rlUpdateTexture(uint id, int offsetX, int offsetY, int width, int height, int format, const(
        void)* data);

void rlGetGlTextureFormats(int format, uint* glInternalFormat, uint* glFormat, uint* glType);

const(char)* rlGetPixelFormatName(uint format);

void rlUnloadTexture(uint id);

void rlGenTextureMipmaps(uint id, int width, int height, int format, int* mipmaps);

void* rlReadTexturePixels(uint id, int width, int height, int format);

ubyte* rlReadScreenPixels(int width, int height);

uint rlLoadFramebuffer();

void rlFramebufferAttach(uint id, uint texId, int attachType, int texType, int mipLevel);

bool rlFramebufferComplete(uint id);

void rlUnloadFramebuffer(uint id);

void rlCopyFramebuffer(int x, int y, int width, int height, int format, void* pixels);

void rlResizeFramebuffer(int width, int height);

uint rlLoadShader(const(char)* code, int type);

uint rlLoadShaderProgram(const(char)* vsCode, const(char)* fsCode);

uint rlLoadShaderProgramEx(uint vsId, uint fsId);

uint rlLoadShaderProgramCompute(uint csId);

void rlUnloadShader(uint id);

void rlUnloadShaderProgram(uint id);

int rlGetLocationUniform(uint id, const(char)* uniformName);

int rlGetLocationAttrib(uint id, const(char)* attribName);

void rlSetUniform(int locIndex, const(void)* value, int uniformType, int count);

void rlSetUniformMatrix(int locIndex, Matrix mat);

void rlSetUniformMatrices(int locIndex, const(Matrix)* mat, int count);

void rlSetUniformSampler(int locIndex, uint textureId);

void rlSetShader(uint id, int* locs);

void rlComputeShaderDispatch(uint groupX, uint groupY, uint groupZ);

uint rlLoadShaderBuffer(uint size, const(void)* data, int usageHint);

void rlUnloadShaderBuffer(uint ssboId);

void rlUpdateShaderBuffer(uint id, const(void)* data, uint dataSize, uint offset);

void rlBindShaderBuffer(uint id, uint index);

void rlReadShaderBuffer(uint id, void* dest, uint count, uint offset);

void rlCopyShaderBuffer(uint destId, uint srcId, uint destOffset, uint srcOffset, uint count);

uint rlGetShaderBufferSize(uint id);

void rlBindImageTexture(uint id, uint index, int format, bool readonly);

Matrix rlGetMatrixModelview();

Matrix rlGetMatrixProjection();

Matrix rlGetMatrixTransform();

Matrix rlGetMatrixProjectionStereo(int eye);

Matrix rlGetMatrixViewOffsetStereo(int eye);

void rlSetMatrixProjection(Matrix proj);

void rlSetMatrixModelview(Matrix view);

void rlSetMatrixProjectionStereo(Matrix right, Matrix left);

void rlSetMatrixViewOffsetStereo(Matrix right, Matrix left);

void rlLoadDrawCube();

void rlLoadDrawQuad();
