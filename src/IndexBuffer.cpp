#include "IndexBuffer.hpp"

IndexBuffer::IndexBuffer(const void* data, const unsigned int count)
    : Count(count)
{
    GLC(glGenBuffers(1, &OpenGLId));
    GLC(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, OpenGLId));
    GLC(glBufferData(GL_ELEMENT_ARRAY_BUFFER, count * sizeof(GLuint), data, GL_STATIC_DRAW));
}

IndexBuffer::~IndexBuffer()
{
    GLC(glDeleteBuffers(1, &OpenGLId));
}

void IndexBuffer::bind() const
{
    GLC(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, OpenGLId));
}

void IndexBuffer::unbind() const
{
    GLC(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0));
}