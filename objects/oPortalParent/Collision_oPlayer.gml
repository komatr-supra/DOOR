if(only_exit) return;
if(!other.can_jump) return;
var count = instance_number(object_index);

for(var i = 0; i < count; i++){
	var inst = instance_find(object_index, i);
	if(inst.id != id and inst.object_index == object_index){
		other.x = inst.x;
		other.y = inst.y;
		other.can_jump = false;
		other.alarm[1] = 120;
	}
}



