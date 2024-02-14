/// @description Insert description here
// You can write your code in this editor
var lay_id = layer_get_id("Tiles_1");
var tile_id = layer_tilemap_get_id(lay_id);
if(place_meeting(x, y, tile_id)){
	
	should_move_back = true;
	show_debug_message("tile collision");
	
	//if(!is_alive) return;
	if(is_bouncing){
		is_bouncing = false;
		speed = spd_default;
		
	}
	else{
		
	is_bouncing = true;

	speed = -speed;
	alarm[2] = 20;
	alarm[4] = 20;
	//return;
	}
}
if(should_move_back){
	x = xprevious;
	y = yprevious;
	should_move_back = false;
}




