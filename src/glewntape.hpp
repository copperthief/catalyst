#pragma once
#include <GL/glew.h>

#include <iostream>

/*    COMPILER DEPENDENT ASSERTION DEFINITION    */
// TODO: add other compilers
#ifdef CLANG
#define ASSERT(x) if (!(x)) __builtin_trap();
#endif

#ifndef CLANG
// TODO: If a compiler I haven't added is being used, log it
#endif

/*    GL ERROR DETECTION a la The Cherno (as is my OpenGL knowledge)    */

/*    Any OpenGL call wrapped in GLC() will print any errors it has,
      but only in debug mode. */

#ifdef DEBUG
#define GLC(x) GLClearError();\
	x;\
	ASSERT(GLLogCall(#x, __FILE__, __LINE__)) 
#else
#define GLC(x) x
#endif

inline void GLClearError() {
	while (glGetError() != GL_NO_ERROR);
}

inline bool GLLogCall(const char* function, const char* file, int line) {
	while (GLenum error = glGetError()) {
		std::cout << "[OpenGL Error] (" << error << "): " << function << " " << file << ":" << line << std::endl;
		return false;
	}
	return true;
}
