#include "VertexBuffer.hpp"

VertexBuffer::VertexBuffer(const void* data, const unsigned int size)
{
    GLC(glGenBuffers(1, &OpenGLId));
    GLC(glBindBuffer(GL_ARRAY_BUFFER, OpenGLId));
    GLC(glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW));
}

VertexBuffer::~VertexBuffer()
{
    GLC(glDeleteBuffers(1, &OpenGLId));
}

void VertexBuffer::bind() const
{
    GLC(glBindBuffer(GL_ARRAY_BUFFER, OpenGLId));
}

void VertexBuffer::unbind() const
{
    GLC(glBindBuffer(GL_ARRAY_BUFFER, 0));
}