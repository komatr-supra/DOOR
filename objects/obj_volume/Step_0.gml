//Volume Control
 if (point_in_rectangle(mouse_x, mouse_y, x, y, x+64, y+64))
 
 { is_hovered =true;
	


 } //point in rectangle
 else
 {is_hovered = false }
 
 
 if is_muted
        
        {image_index=1
       
    }
	else { image_index = 0
		}
	
	if (is_hovered) {
 scr_zoom(1.4);
} else {scr_zoomReset()}

 if (mouse_check_button_released(mb_left)) && is_hovered
	 {
  
    if (is_muted) {
        is_muted = false
    } else {
        is_muted = true 
    }
	 }
	 
	 if !is_muted {
		 audio_master_gain(0)} else {audio_master_gain(1)}
		 
		
		 