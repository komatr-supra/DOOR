

// Option confirmation
if (mouse_check_button_released(mb_left)) {
    if (option_selected == 0) {
        // Start new game
        room_goto(rm_Cutscene);
    } else if (option_selected == 1) {
        // Continue game (load saved data)
        // Add your code to load saved data here
        show_message("Click on play");
    }
}

// Option selection with mouse

if (mouse_y > room_height*.80 - 150 && mouse_y < room_height*.80 + 150) && (mouse_x > room_width / 2 -40 && mouse_y < room_width / 2 + 40) {
    option_selected = 0;
} else {
    option_selected = 1;
}












