
if (keyboard_check_released(vk_escape)) && !visible{
    visible = true;
} else if (keyboard_check_released(vk_escape)) && visible { visible = false}

if visible 
{instance_deactivate_all(true);

	}


else {instance_activate_all()}

depth = - 10000
y = room_height/2
x = room_width/2