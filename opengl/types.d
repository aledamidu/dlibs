module libs.opengl.types;

// Generated from the Khronos OpenGL XML registry (gl.xml).
// Do not edit by hand; run tools/generate_opengl.ps1 instead.

alias GLenum = uint;
alias GLboolean = ubyte;
alias GLbitfield = uint;
alias GLvoid = void;
alias GLbyte = byte;
alias GLubyte = ubyte;
alias GLshort = short;
alias GLushort = ushort;
alias GLint = int;
alias GLuint = uint;
alias GLclampx = int;
alias GLsizei = int;
alias GLfloat = float;
alias GLclampf = float;
alias GLdouble = double;
alias GLclampd = double;
alias GLeglClientBufferEXT = void*;
alias GLeglImageOES = void*;
alias GLchar = char;
alias GLcharARB = char;
alias GLhandleARB = uint;
alias GLhalf = ushort;
alias GLhalfARB = ushort;
alias GLfixed = int;
alias GLintptr = ptrdiff_t;
alias GLintptrARB = ptrdiff_t;
alias GLsizeiptr = ptrdiff_t;
alias GLsizeiptrARB = ptrdiff_t;
alias GLint64 = long;
alias GLint64EXT = long;
alias GLuint64 = ulong;
alias GLuint64EXT = ulong;

struct _GLsync;
alias GLsync = _GLsync*;

struct _cl_context;
struct _cl_event;

alias GLDEBUGPROC = extern(C) void function(
    GLenum source, GLenum type, GLuint id, GLenum severity,
    GLsizei length, const(GLchar)* message, const(void)* userParam);
alias GLDEBUGPROCARB = extern(C) void function(
    GLenum source, GLenum type, GLuint id, GLenum severity,
    GLsizei length, const(GLchar)* message, const(void)* userParam);
alias GLDEBUGPROCKHR = extern(C) void function(
    GLenum source, GLenum type, GLuint id, GLenum severity,
    GLsizei length, const(GLchar)* message, const(void)* userParam);
alias GLDEBUGPROCAMD = extern(C) void function(
    GLuint id, GLenum category, GLenum severity, GLsizei length,
    const(GLchar)* message, void* userParam);
alias GLhalfNV = ushort;
alias GLvdpauSurfaceNV = ptrdiff_t;
alias GLVULKANPROCNV = extern(C) void function();

