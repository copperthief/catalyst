#pragma once

#include <unordered_map>
#include <string>

#include <glm/mat4x4.hpp>

class Shader {
    private:
        unsigned int OpenGLId;
        std::unordered_map<std::string, int> UniformIds;
    public:
        Shader(const std::string& vshdr_path, const std::string& fshdr_path);
        ~Shader();

        void bind() const;
        void unbind() const;

        void setUniform(const std::string& name, float v0, float v1, float v2, float v3);
        void setUniform(const std::string& name, const glm::mat4& matrix);
    private:
        std::string parse(const std::string& path) const;
        unsigned int compile(unsigned int type, const std::string& src);

        int getUniformID(const std::string& name);
};