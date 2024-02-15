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
}
