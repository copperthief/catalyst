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

    glm::mat4 proj = glm::perspective(glm::radians(FOV), (float) HorizSize / (float) VertSize, nearLimit, farLimit);
    glm::mat4 view = glm::lookAt(position, position + forward(), up());
    glm::mat4 model = glm::mat4(1.0f);

    glm::mat4 mvp = proj * view * model;

    return mvp;
  }

  void moveForward(float speed)
  {
    position += forward() * speed;
  }

  void moveBackward(float speed)
  {
    position += backward() * speed;
  }

  void moveRight(float speed)
  {
    position += right() * speed;
  }

  void moveLeft(float speed)
  {
    position += left() * speed;
  }

  void moveUp(float speed)
  {
    position += up() * speed;
  }

  void moveDown(float speed)
  {
    position += down() * speed;
  }

  void turn(double cursor_diff_horiz, double cursor_diff_vert, float mouseSpeed)
  {

    HorizAngle += mouseSpeed * cursor_diff_horiz;
    VertAngle += mouseSpeed * cursor_diff_vert;
  }

  glm::vec3 forward() {
    return glm::vec3(
      cos(VertAngle) * sin(HorizAngle),
      sin(VertAngle),
      cos(VertAngle) * cos(HorizAngle)
    );
  }

  glm::vec3 backward() {
    return -1.0f * forward();
  }

  glm::vec3 right() {
    return glm::vec3(
      sin(HorizAngle - 3.14f/2.0f),
      0,
      cos(HorizAngle - 3.14f/2.0f)
    );
  }

  glm::vec3 left() {
    return -1.0f * right();
  }

  glm::vec3 up() {
    return glm::cross(right(), forward());
  }

  glm::vec3 down() {
    return -1.0f * up();
  }

};
