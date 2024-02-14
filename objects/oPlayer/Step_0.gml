/// @description Insert description here
// You can write your code in this editor
if(!is_alive) return;
var lay_id = layer_get_id("Tiles_1");
var tile_id = layer_tilemap_get_id(lay_id);
if(place_meeting(x, y, tile_id)){
	show_debug_message("tile collision");
	
	if(!is_alive and is_bouncing) return;
	is_bouncing = true;

	speed = -spd_default;
	alarm[2] = 20;
	alarm[4] = 40;
	//return;
}
//if(x_prev == x and y_prev == y) speed = -speed;
var _dir = point_direction(x, y, mouse_x, mouse_y);
var _diff = angle_difference(_dir, direction);

direction += _diff * 0.05;
image_angle = direction;


x_prev = x;
y_prev = y;
part_system_position(part, x, y);
part_system_angle(part, direction);