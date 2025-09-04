#include "Shader.hpp"
#include "glewntape.hpp"
#include "glm/ext/matrix_float4x4.hpp"

#include <fstream>
#include <sstream>

#include <iostream>
#include <tuple>

using namespace std;

Shader::Shader(const string& vshdr_path, const string& fshdr_path)
{
       unsigned int vshdr_id = compile(GL_VERTEX_SHADER, parse(vshdr_path));
       unsigned int fshdr_id = compile(GL_FRAGMENT_SHADER, parse(fshdr_path));

        GLC(OpenGLId = glCreateProgram()); 
        GLC(glAttachShader(OpenGLId, vshdr_id));
        GLC(glAttachShader(OpenGLId, fshdr_id));
        GLC(glLinkProgram(OpenGLId));
     
        GLC(glDetachShader(OpenGLId, vshdr_id));
        GLC(glDetachShader(OpenGLId, fshdr_id));

        GLC(glDeleteShader(vshdr_id));
        GLC(glDeleteShader(fshdr_id));

}

Shader::~Shader()
{
    GLC(glDeleteProgram(OpenGLId));
}

string Shader::parse(const string& path) const
{
    ifstream in(path);
    stringstream sstr;
    sstr << in.rdbuf();
    return sstr.str();
}

unsigned int Shader::compile(unsigned int type, const string& src)
{
    GLC(unsigned int id = glCreateShader(type));
    const char* src_ptr = src.c_str();
    GLC(glShaderSource(id, 1, &src_ptr, NULL));
    GLC(glCompileShader(id));

    //TODO: Make this error handling run only in debug mode?
    //TODO: proper logging system
	int compiled;
	GLC(glGetShaderiv(id, GL_COMPILE_STATUS, &compiled));
	if (compiled == GL_FALSE) {
		int length;
		GLC(glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length));
		char* message = (char*) alloca(length * sizeof(char));
		GLC(glGetShaderInfoLog(id, length, &length, message));
		std::cout << "Failed to compile " << (type == GL_VERTEX_SHADER ? "vertex" : "fragment") << std::endl;
		std::cout << message << std::endl;
		GLC(glDeleteShader(id));
		return 0;
	}
	return id;
    
    return id;
}

void Shader::bind() const
{
    GLC(glUseProgram(OpenGLId));
}

void Shader::unbind() const
{
    GLC(glUseProgram(0));
}

int Shader::getUniformID(const string& name)
{
    if(UniformIds.find(name) != UniformIds.end())
        return UniformIds[name];
    
    GLC(int uniform_id = glGetUniformLocation(OpenGLId, name.c_str()));
    UniformIds[name] = uniform_id;

    //TODO: organized logging system
    if (uniform_id == -1) cout << "Warning: uniform '" << name << "' doesn't exist!" << endl;

    return uniform_id;
}

void Shader::setUniform(const string& name, float v0, float v1, float v2, float v3)
{
    GLC(glUniform4f(getUniformID(name), v0, v1, v2, v3));
}

void Shader::setUniform(const string& name, const glm::mat4& matrix)
{
    GLC(glUniformMatrix4fv(getUniformID(name), 1, GL_FALSE, &matrix[0][0]));
}