#include "Window.hpp"

#include <GLFW/glfw3.h>
#include <iostream>

Window::Window(int horiz_size, int vert_size)
{
	if (!glfwInit()) {/*TODO: something */ 
		std::cout << "!glfwInit" << std::endl;
	}
	
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	window = glfwCreateWindow(horiz_size, vert_size, "Catalyst", NULL, NULL);
	if (!window) {
		glfwTerminate();
		std::cout << "!window" << std::endl;
	}

  glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

	glfwMakeContextCurrent(window);

	glfwSwapInterval(1);

	
	if(glewInit() != GLEW_OK) std::cout << "SAD ALERT: GLEW NOT OK!" << std::endl;

  glfwGetWindowSize(window, &horiz_size, &vert_size);

  std::cout << horiz_size << " " << vert_size;

	viewport = new Viewport(horiz_size, vert_size);

	VAO = new VertexArray();
	VAO->bind();

	layout = new AttributeOrder();
    layout->push(GL_FLOAT, 3);
    
    //TODO: setup file system so that I can just write shaders/basic.whatever
    shader = new Shader("res/shaders/basic.vshdr", "res/shaders/basic.fshdr");



	GLC(glEnable(GL_DEPTH_TEST));
    GLC(glDepthFunc(GL_LESS));
}

void Window::loadVertices(float vertices[], unsigned int size)
{
	VBO = new VertexBuffer(vertices, size);
}

void Window::loadIndices(unsigned int indices[], unsigned int count)
{
	IBO = new IndexBuffer(indices, count);
}

bool Window::update()
{
  input.handleInput(window, viewport);


	GLC(glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT));

	VAO->addBuffer(*VBO, *layout);
      
	shader->bind();
	
    shader->setUniform("MVP", viewport->getMVP());
    GLC(glDrawElements(GL_TRIANGLES, IBO->getCount(), GL_UNSIGNED_INT, nullptr));

    /* Swap front and back buffers */
    glfwSwapBuffers(window);

    /* Poll for and process events */
    glfwPollEvents();
	if(glfwWindowShouldClose(window)) return false;
	return true;	
}

void Window::terminate()
{
	glfwTerminate();
}

Window::~Window()
{
}
