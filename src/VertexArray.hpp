#pragma once
#include "VertexBuffer.hpp"
#include "AttributeOrder.hpp"

class VertexArray {
    private:
        unsigned int OpenGLId;
    public:
        VertexArray();
        ~VertexArray();

        void bind() const;
        void unbind() const;

        void addBuffer(const VertexBuffer& buffer, const AttributeOrder& layout) const;
};