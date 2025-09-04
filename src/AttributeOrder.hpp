#pragma once

#include <vector>

struct VertexAttribute {
    unsigned int type;
    unsigned int count;
    unsigned char normalized;

    static unsigned int GetSizeOfType(unsigned int type);
};

class AttributeOrder {
    private:
        std::vector<VertexAttribute> Attributes;
        unsigned int Stride;

    public:
        AttributeOrder();
    
    //TODO: Make push able to chain?
    void push(unsigned int type, unsigned int count);
    const std::vector<VertexAttribute>& getAttributes() const;
    unsigned int getStride() const;
};