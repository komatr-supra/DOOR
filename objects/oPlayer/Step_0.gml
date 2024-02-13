/// @description Insert description here
// You can write your code in this editor
if(!is_alive) return;
//if(x_prev == x and y_prev == y) speed = -speed;
var _dir = point_direction(x, y, mouse_x, mouse_y);
var _diff = angle_difference(_dir, direction);

direction += _diff * 0.05;
image_angle = direction;


x_prev = x;
y_prev = y;
part_system_position(part, x, y);
part_system_angle(part, direction);