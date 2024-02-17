#pragma once

#include "glewntape.hpp"
#include <GLFW/glfw3.h>
#include "Viewport.hpp"
#include "VertexArray.hpp"
#include "IndexBuffer.hpp"
#include "Shader.hpp"
#include "InputHandler.hpp"

class Window
{
	private:
		GLFWwindow* window; //delete?
		Viewport* viewport; //delete?S
		InputHandler input;

		VertexArray* VAO;
		VertexBuffer* VBO;
		IndexBuffer* IBO;
		AttributeOrder* layout;
		Shader* shader;
	public:
		Window(int horiz_size, int vert_size);
		~Window();
		void loadVertices(float vertices[], unsigned int size);
		void loadIndices(unsigned int indices[], unsigned int count);
		bool update();
		void terminate();
};
