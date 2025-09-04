#pragma once
#include "glewntape.hpp"

class IndexBuffer {
    private:
        unsigned int OpenGLId;
        unsigned int Count;
    public:
        IndexBuffer(const void* data, const unsigned int count);
        ~IndexBuffer();

        void bind() const;
        void unbind() const;

        inline unsigned int getCount() { return Count; };
};