can_take_damage = true;
is_alive = true;
die_anim = noone;
image_speed = 0;
function take_damage(_damage = 1){
	if(!can_take_damage or !is_alive) return false;
	can_take_damage = 0;
	hp -= _damage;
	if(hp <= 0){		
		is_alive = false;
		sprite_index = die_anim;
		image_speed = 12;
		return true;
	}
	alarm[0] = 20;
	return true;
}




