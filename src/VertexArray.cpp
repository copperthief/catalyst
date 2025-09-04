#include "VertexArray.hpp"
#include "AttributeOrder.hpp"

VertexArray::VertexArray()
{
	GLC(glGenVertexArrays(1, &OpenGLId));
}

VertexArray::~VertexArray()
{
    GLC(glDeleteVertexArrays(1, &OpenGLId));
}

//TODO: Is there a way to do this with which neither AttributeOrder's Attributes or a method
//to apply the attribute order need to be publicly accessible?
//TODO: Does glDisableVertexAttribArray ever need to be called?
void VertexArray::addBuffer(const VertexBuffer &buffer, const AttributeOrder &layout) const
{
    bind();
    buffer.bind();

    const std::vector<VertexAttribute>& attributes = layout.getAttributes();

    unsigned int offset = 0;
    for (unsigned int i = 0; i < attributes.size(); i++) {
        const VertexAttribute& attribute = attributes[i];
        GLC(glEnableVertexAttribArray(i));
        GLC(glVertexAttribPointer(i, attribute.count, attribute.type, attribute.normalized, layout.getStride(), (const void*) offset));
        offset += attribute.count * VertexAttribute::GetSizeOfType(attribute.type);
    }
}

void VertexArray::bind() const
{
    GLC(glBindVertexArray(OpenGLId));
}

void VertexArray::unbind() const
{
    GLC(glBindVertexArray(0));
}