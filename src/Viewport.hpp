#pragma once

#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>
#include "glm/trigonometric.hpp"
#include "glm/ext/matrix_clip_space.hpp"
#include "glm/ext/matrix_transform.hpp"

class Viewport
{
	private:
		int HorizSize;
		int VertSize;

		float FOV = 69;
		float nearLimit = 0.1f;
		float farLimit = 100.0f;

		glm::vec3 position;
		float HorizAngle = 0;
		float VertAngle = 0;
	public:
		Viewport(int horiz_size, int vert_size)
			: HorizSize(horiz_size), VertSize(vert_size) {}

		glm::mat4x4 getMVP()
		{

        glm::vec3 direction(
    cos(VertAngle) * sin(HorizAngle),
    sin(VertAngle),
    cos(VertAngle) * cos(HorizAngle)
);
	
glm::vec3 right = glm::vec3(
    sin(HorizAngle - 3.14f/2.0f),
    0,
    cos(HorizAngle - 3.14f/2.0f)
);

// Up vector : perpendicular to both direction and right
glm::vec3 up = glm::cross( right, direction );
        glm::mat4 proj = glm::perspective(glm::radians(FOV), (float) HorizSize / (float) VertSize, nearLimit, farLimit);
        glm::mat4 view = glm::lookAt(position, position+direction, up);
        glm::mat4 model = glm::mat4(1.0f);

        glm::mat4 mvp = proj * view * model;

		return mvp;
		}

	void moveForward(float speed)
	{
        glm::vec3 direction(
			cos(VertAngle) * sin(HorizAngle),
			sin(VertAngle),
			cos(VertAngle) * cos(HorizAngle)
		);
		position += direction * speed;
	}

	
	void moveBackward(float speed)
	{
        glm::vec3 direction(
			cos(VertAngle) * sin(HorizAngle),
			sin(VertAngle),
			cos(VertAngle) * cos(HorizAngle)
		);
		position -= direction * speed;
	}

	void moveRight(float speed)
	{
        glm::vec3 direction(
			cos(VertAngle) * sin(HorizAngle),
			sin(VertAngle),
			cos(VertAngle) * cos(HorizAngle)
		);

		glm::vec3 right = glm::vec3(
		    sin(HorizAngle - 3.14f/2.0f),
		    0,
		    cos(HorizAngle - 3.14f/2.0f)
		);

		position += right * speed;
	}

	void moveLeft(float speed)
	{
        glm::vec3 direction(
			cos(VertAngle) * sin(HorizAngle),
			sin(VertAngle),
			cos(VertAngle) * cos(HorizAngle)
		);

		glm::vec3 right = glm::vec3(
		    sin(HorizAngle - 3.14f/2.0f),
		    0,
		    cos(HorizAngle - 3.14f/2.0f)
		);

		position -= right * speed;
	}

	void turn(double mouse_pos_horiz, double mouse_pos_vert, float mouseSpeed)
	{
		HorizAngle += mouseSpeed * (HorizSize / 2 - mouse_pos_horiz);
		VertAngle += mouseSpeed * (VertSize / 2 - mouse_pos_vert);
	}
};
