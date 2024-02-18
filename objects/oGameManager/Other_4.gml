/// @description Insert description here
// You can write your code in this editor
global.mp_grid = mp_grid_create(0,0,room_width /64, room_height / 64,64,64);
var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
for(var _x = 0; _x < room_width /64; _x++){
	for(var _y = 0; _y < room_width /64; _y++){
		if(tilemap_get(map_id,_x,_y) != 0) mp_grid_add_cell(global.mp_grid, _x, _y);
	}
}
audio_play_sound(sndLevelStart, 80, false);
 //audio_play_sound(sndMainMenu, 50, true);



