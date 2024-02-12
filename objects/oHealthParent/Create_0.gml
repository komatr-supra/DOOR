can_take_damage = true;

function take_damage(_damage = 1){
	if(!can_take_damage) return;
	hp -= _damage;
	if(hp <= 0){
		instance_destroy(id);
	}
	alarm[0] = 60;
}




