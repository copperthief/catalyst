#include "AttributeOrder.hpp"

#include "glewntape.hpp"

#include <iostream>
#include <vector>

unsigned int VertexAttribute::GetSizeOfType(unsigned int type)
{
    switch(type) {
        case GL_FLOAT: return 4;
        case GL_UNSIGNED_INT: return 4;
        case GL_UNSIGNED_BYTE: return 1;

        default: std::cout << "[Catalyst] Type " << type
        << " doesn't have size in VertexAttribute::GetSizeOfType" << std::endl;
        ASSERT(false);
        return 0;
    }
}

AttributeOrder::AttributeOrder() : Stride(0) {}

void AttributeOrder::push(unsigned int type, unsigned int count)
{
    Attributes.push_back({type, count, GL_FALSE});
}

//TODO: Pass by ref? Am I already doing that even without the &?
const std::vector<VertexAttribute>& AttributeOrder::getAttributes() const
{
    return Attributes;
}

unsigned int AttributeOrder::getStride() const
{
    return Stride;
}