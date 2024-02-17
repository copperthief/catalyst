#pragma once

#include <GLFW/glfw3.h>
#include <glm/vec3.hpp>
#include "Viewport.hpp"

class InputHandler 
{
    private:
        float speed = 0.05f;
        float mouseSpeed = 0.001f;
    public:
        void handleInput(GLFWwindow* window, Viewport* viewport);
};