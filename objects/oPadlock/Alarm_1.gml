/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
var player = instance_find(oPlayer, 0);
alarm[1] = 30;
if(!player or distance_to_object(player) > 256) return;
var _path = path_add();
if(mp_grid_path(global.mp_grid, _path, x, y, player.x, player.y,true)){
	path = _path;
	path_start(path, 1.5, path_action_stop, true);
	audio_play_sound(sndPadlockFollow, 50, false);
	if(!audio_is_playing(move_audio))
	move_audio = audio_play_sound(sndPadlockMove, 50, true);
	
}
