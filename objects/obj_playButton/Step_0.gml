/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_released(mb_left)) {
    // Check if the mouse click is within the boundaries of the sprite
    if (point_in_rectangle(mouse_x, mouse_y, x-150, y-85, x+150, y+85)) {
       
        obj_titleScreen.option_selected =1
      
       
    }
	else { obj_titleScreen.option_selected = 0 
		}

}        

 if (point_in_rectangle(mouse_x, mouse_y, x-150, y-85, x+150, y+85)) {
 
is_hovered = true
        
        image_index=1
       
    }
	else { image_index = 0
		is_hovered = false}
		
		if (is_hovered) {
 scr_zoom(1.4);
} else {scr_zoomReset()}