if(dir_horizontal){
	x += spd;
}
else{
	y += spd;
}

part_system_position(part, x, y);
var lay_id = layer_get_id("Tiles_1");
var tile_id = layer_tilemap_get_id(lay_id);
if(place_meeting(x, y, tile_id)){
	spd = -spd;
	audio_play_sound(sndBookMove, 50, false);
}


