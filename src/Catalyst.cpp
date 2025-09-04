#include "Window.hpp"

int main(void)
{

    Window window(1024, 768);

    float vertices[] =
    {
        -0.5f, -0.5f, -0.5f,
        -0.5f, -0.5f,  0.5f,
        -0.5f,  0.5f, -0.5f,
        -0.5f,  0.5f,  0.5f,
         0.5f, -0.5f, -0.5f, 
         0.5f, -0.5f,  0.5f,
         0.5f,  0.5f, -0.5f,
         0.5f,  0.5f,  0.5f
    };

    unsigned int indices[] = //should these be a short or something
    {
        0, 1, 2,
        3, 1, 2,
        1, 5, 7,
        3, 1, 7,
        5, 6, 7,
        5, 6, 4,
        0, 4, 2,
        6, 4, 2,
        0, 1, 3,
        0, 4, 3,
        2, 3, 7,
        2, 6, 7
    };

    window.loadVertices(vertices, 8 * 3 * sizeof(float));
    window.loadIndices(indices, 12 * 3);

    while(window.update());
    window.terminate();

    return 0;
}
