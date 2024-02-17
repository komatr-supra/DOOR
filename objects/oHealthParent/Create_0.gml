can_take_damage = true;
is_alive = true;
die_anim = noone;
image_speed = 0;
death_sound = noone;
function take_damage(_damage = 1){
	if(!can_take_damage or !is_alive) return false;
	can_take_damage = 0;
	hp -= _damage;
	if(hp <= 0){		
		is_alive = false;
		sprite_index = die_anim;
		image_speed = 12;
		if(death_sound != noone) audio_play_sound(death_sound, 50, false);
		return true;
	}
	alarm[0] = 20;
	return true;
}




