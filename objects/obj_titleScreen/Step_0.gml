

// Option confirmation
if (keyboard_check_pressed(vk_space)) {
    if (option_selected == 0) {
        // Start new game
        room_goto(rm_dialog);
    } else if (option_selected == 1) {
        // Continue game (load saved data)
        // Add your code to load saved data here
        show_message("Continue game functionality not implemented yet.");
    }
}

// Option selection with mouse

if (mouse_y > room_height*.80 - 150 && mouse_y < room_height*.80 + 150) && (mouse_x > room_width / 2 - 80 && mouse_y < room_width / 2 + 80) {
    option_selected = 0;
} else {
    option_selected = 1;
}












