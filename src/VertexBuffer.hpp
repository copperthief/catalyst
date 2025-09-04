#pragma once

#include "glewntape.hpp"

class VertexBuffer {
    private:
        unsigned int OpenGLId;
    public:
        VertexBuffer(const void* data, const unsigned int size);
        ~VertexBuffer();

        void bind() const;
        void unbind() const;
};