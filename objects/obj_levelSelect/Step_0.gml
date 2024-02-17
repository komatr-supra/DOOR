if (keyboard_check_released(vk_space)) && !visible{
    visible = true;
} else if (keyboard_check_released(vk_space)) && visible { visible = false}
