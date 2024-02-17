#include "InputHandler.hpp"

void InputHandler::handleInput(GLFWwindow* window, Viewport* viewport)
{
    double mouse_pos_horiz, mouse_pos_vert;
    int window_length, window_height;
    glfwGetCursorPos(window, &mouse_pos_horiz, &mouse_pos_vert);
    glfwGetWindowSize(window, &window_length, &window_height);
    glfwSetCursorPos(window, window_length / 2, window_height / 2);
    viewport->turn(mouse_pos_horiz, mouse_pos_vert, mouseSpeed);

    if (glfwGetKey(window, GLFW_KEY_W ) == GLFW_PRESS){
        viewport->moveForward(speed);
    }
    if (glfwGetKey(window, GLFW_KEY_S ) == GLFW_PRESS){
        viewport->moveBackward(speed);
    }
    if (glfwGetKey(window, GLFW_KEY_D ) == GLFW_PRESS){
        viewport->moveRight(speed);
    }
    if (glfwGetKey(window, GLFW_KEY_A ) == GLFW_PRESS){
        viewport->moveLeft(speed);
    }
}